unint64_t specialized LinkUsoParser.extractMentionedEntityTypes(usoTask:)(uint64_t a1, double a2)
{
  v198 = type metadata accessor for UsoIdentifier();
  v4 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v6 = &v171 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v171 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v194 = &v171 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v171 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v197 = &v171 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v171 - v18;
  if (UsoTask.baseEntityAsString.getter() != 0x535F6E6F6D6D6F63 || v20 != 0xEE00676E69747465)
  {
    v2 = v20;
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_5;
    }

    v188 = v9;
    v190 = v6;
    v19 = MEMORY[0x1E69E7CC0];
    v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySSGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v34 = 0;
    v35 = 0;
    v180 = 0;
    v189 = *MEMORY[0x1E69D2438];
    v193 = (v4 + 32);
    v195 = (v4 + 8);
    v196 = v4 + 16;
    v185 = xmmword_1DCA66060;
    v181 = a1;
    while (1)
    {
      LODWORD(v36) = v34;
      v37 = &outlined read-only object #0 of LinkUsoParser.extractMentionedEntityTypes(usoTask:) + 16 * v35;
      v38 = *(v37 + 4);
      v39 = *(v37 + 5);

      v14 = UsoTask.arguments.getter();
      if (!*(v14 + 16))
      {
        break;
      }

      v2 = specialized __RawDictionaryStorage.find<A>(_:)(v38, v39);
      v41 = v40;

      if ((v41 & 1) == 0)
      {
        goto LABEL_28;
      }

      v25 = *(*(v14 + 56) + 8 * v2);

      if (v25 >> 62)
      {
        if (!__CocoaSet.count.getter())
        {
          goto LABEL_28;
        }
      }

      else if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      if ((v25 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12A1FE0](0, v25);
      }

      else
      {
        if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }
      }

      v42 = dispatch thunk of UsoValue.getAsEntity()();

      if (!v42)
      {
        goto LABEL_29;
      }

      v14 = UsoEntity.attributes.getter();
      if (!*(v14 + 16) || (v43 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000), (v44 & 1) == 0))
      {

LABEL_56:

        goto LABEL_29;
      }

      v25 = *(*(v14 + 56) + 8 * v43);

      if (v25 >> 62)
      {
        if (!__CocoaSet.count.getter())
        {
          goto LABEL_127;
        }
      }

      else if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_127;
      }

      if ((v25 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12A1FE0](0, v25);
      }

      else
      {
        if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_177:
          __break(1u);
          goto LABEL_178;
        }
      }

      v45 = dispatch thunk of UsoValue.getAsEntity()();

      if (!v45)
      {
        goto LABEL_56;
      }

      v14 = UsoEntity.attributes.getter();
      if (!*(v14 + 16) || (v178 = v45, v46 = specialized __RawDictionaryStorage.find<A>(_:)(1701667182, 0xE400000000000000), (v47 & 1) == 0))
      {

        goto LABEL_56;
      }

      v25 = *(*(v14 + 56) + 8 * v46);

      if (v25 >> 62)
      {
        if (!__CocoaSet.count.getter())
        {
LABEL_126:

LABEL_127:

LABEL_28:

          goto LABEL_29;
        }
      }

      else if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_126;
      }

      if ((v25 & 0xC000000000000001) != 0)
      {
        v2 = MEMORY[0x1E12A1FE0](0, v25);
      }

      else
      {
        if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_185;
        }

        v2 = *(v25 + 32);
      }

      v177 = v33;

      v25 = v2;
      v14 = dispatch thunk of UsoValue.getUsoIdentifiers()();

      v48 = *(v14 + 16);
      LODWORD(v192) = v36;
      v191 = v42;
      v186 = v48;
      if (v48)
      {
        v49 = 0;
        v50 = v190;
        while (1)
        {
          if (v49 >= *(v14 + 16))
          {
            goto LABEL_170;
          }

          v51 = (*(v4 + 80) + 32) & ~*(v4 + 80);
          v52 = *(v4 + 72);
          (*(v4 + 16))(v194, v14 + v51 + v52 * v49, v198);
          v2 = UsoIdentifier.namespace.getter();
          v54 = v53;
          v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v56;
          if (v54)
          {
            if (v2 == v55 && v54 == v56)
            {

LABEL_66:
              v57 = *v193;
              (*v193)(v188, v194, v198);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v199[0] = v19;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v25 = v199;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1);
                v19 = v199[0];
              }

              v60 = *(v19 + 16);
              v59 = *(v19 + 24);
              v2 = v60 + 1;
              if (v60 >= v59 >> 1)
              {
                v25 = v199;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1);
                v19 = v199[0];
              }

              *(v19 + 16) = v2;
              v57((v19 + v51 + v60 * v52), v188, v198);
              v50 = v190;
              goto LABEL_59;
            }

            v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v2)
            {
              goto LABEL_66;
            }
          }

          else
          {
          }

          (*v195)(v194, v198);
LABEL_59:
          ++v49;
          LOBYTE(v36) = v192;
          if (v186 == v49)
          {
            goto LABEL_74;
          }
        }
      }

      v50 = v190;
LABEL_74:

      v199[0] = MEMORY[0x1E69E7CC8];
      v186 = *(v19 + 16);
      if (v186)
      {
        v61 = 0;
        v179 = *(v4 + 80);
        v182 = v19;
        v183 = (v179 + 32) & ~v179;
        v184 = (v19 + v183);
        v2 = MEMORY[0x1E69E7CC8];
        while (1)
        {
          if (v61 >= *(v19 + 16))
          {
            goto LABEL_171;
          }

          v14 = *(v4 + 72);
          (*(v4 + 16))(v50, v184 + v14 * v61, v198);
          if (one-time initialization token for kBundleAliasToFullyQualifiedBundleId != -1)
          {
            swift_once();
          }

          v63 = v2;
          rawValue = kBundleAliasToFullyQualifiedBundleId._rawValue;
          v65 = UsoIdentifier.appBundleId.getter();
          if (rawValue[2])
          {
            v2 = specialized __RawDictionaryStorage.find<A>(_:)(v65, v66);
            v68 = v67;

            if (v68)
            {
              v69 = (rawValue[7] + 16 * v2);
              v70 = *v69;
              v71 = v69[1];

              goto LABEL_86;
            }
          }

          else
          {
          }

          v70 = UsoIdentifier.appBundleId.getter();
          v71 = v72;
LABEL_86:
          v25 = v63;
          v19 = specialized __RawDictionaryStorage.find<A>(_:)(v70, v71);
          v74 = *(v25 + 16);
          v75 = (v73 & 1) == 0;
          v76 = v74 + v75;
          if (__OFADD__(v74, v75))
          {
            goto LABEL_172;
          }

          v77 = v73;
          if (*(v25 + 24) < v76)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v76, 1);
            v25 = v199[0];
            v78 = specialized __RawDictionaryStorage.find<A>(_:)(v70, v71);
            if ((v77 & 1) != (v79 & 1))
            {
              goto LABEL_187;
            }

            v19 = v78;
          }

          if (v77)
          {

            v80 = *(v25 + 56);
            v81 = *(v80 + 8 * v19);
            v82 = swift_isUniquelyReferenced_nonNull_native();
            *(v80 + 8 * v19) = v81;
            v36 = v4;
            if ((v82 & 1) == 0)
            {
              v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v81 + 2) + 1, 1, v81);
              *(v80 + 8 * v19) = v81;
            }

            v84 = *(v81 + 2);
            v83 = *(v81 + 3);
            if (v84 >= v83 >> 1)
            {
              v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1, v81);
              *(v80 + 8 * v19) = v81;
            }

            v19 = v182;
            v62 = v183;
            *(v81 + 2) = v84 + 1;
            v50 = v190;
            (*v193)(&v81[v62 + v84 * v14], v190, v198);
            v4 = v36;
            LOBYTE(v36) = v192;
            v2 = v25;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMR);
            v85 = v183;
            v86 = swift_allocObject();
            *(v86 + 16) = v185;
            (*v193)((v86 + v85), v50, v198);
            *(v25 + 8 * (v19 >> 6) + 64) |= 1 << v19;
            v87 = (*(v25 + 48) + 16 * v19);
            *v87 = v70;
            v87[1] = v71;
            *(*(v25 + 56) + 8 * v19) = v86;
            v88 = *(v25 + 16);
            v89 = __OFADD__(v88, 1);
            v90 = v88 + 1;
            if (v89)
            {
              __break(1u);
              goto LABEL_177;
            }

            v2 = v25;
            *(v25 + 16) = v90;
            LOBYTE(v36) = v192;
            v19 = v182;
          }

          if (v186 == ++v61)
          {
            goto LABEL_98;
          }
        }
      }

      v2 = MEMORY[0x1E69E7CC8];
LABEL_98:

      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSShySSGGMd, &_ss18_DictionaryStorageCySSShySSGGMR);
      v91 = static _DictionaryStorage.copy(original:)();
      v92 = v91;
      v14 = 0;
      v93 = *(v2 + 64);
      v171 = v2 + 64;
      v94 = 1 << *(v2 + 32);
      if (v94 < 64)
      {
        v95 = ~(-1 << v94);
      }

      else
      {
        v95 = -1;
      }

      v96 = v95 & v93;
      v97 = (v94 + 63) >> 6;
      v175 = v91 + 64;
      v19 = MEMORY[0x1E69E7CC0];
      v187 = v4;
      v174 = v2;
      v172 = v91;
      v173 = v97;
      if (v96)
      {
        do
        {
          v98 = __clz(__rbit64(v96));
          v99 = (v96 - 1) & v96;
LABEL_108:
          v102 = v98 | (v14 << 6);
          v183 = v99;
          v103 = *(v2 + 56);
          v104 = (*(v2 + 48) + 16 * v102);
          v105 = v104[1];
          v184 = *v104;
          v186 = v102;
          v2 = *(v103 + 8 * v102);
          v106 = *(v2 + 16);
          if (v106)
          {
            v182 = v14;
            v199[0] = v19;
            v179 = v105;

            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v106, 0);
            v107 = v199[0];
            v108 = (*(v4 + 80) + 32) & ~*(v4 + 80);
            v176 = v2;
            v109 = v2 + v108;
            v110 = v4;
            v111 = *(v4 + 72);
            v112 = *(v110 + 16);
            do
            {
              v114 = v197;
              v113 = v198;
              v112(v197, v109, v198);
              v115 = UsoIdentifier.value.getter();
              v117 = v116;
              (*v195)(v114, v113);
              v199[0] = v107;
              v119 = *(v107 + 16);
              v118 = *(v107 + 24);
              if (v119 >= v118 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v118 > 1), v119 + 1, 1);
                v107 = v199[0];
              }

              *(v107 + 16) = v119 + 1;
              v120 = v107 + 16 * v119;
              *(v120 + 32) = v115;
              *(v120 + 40) = v117;
              v109 += v111;
              --v106;
            }

            while (v106);
            v4 = v187;
            v14 = v182;
            v19 = MEMORY[0x1E69E7CC0];
            v92 = v172;
            v36 = v179;
            v2 = v176;
          }

          else
          {
            v36 = v105;

            v107 = v19;
          }

          v25 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v107);

          v121 = v186;
          *(v175 + ((v186 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v186;
          v122 = (v92[6] + 16 * v121);
          *v122 = v184;
          v122[1] = v36;
          *(v92[7] + 8 * v121) = v25;
          v123 = v92[2];
          v89 = __OFADD__(v123, 1);
          v124 = v123 + 1;
          LOBYTE(v36) = v192;
          if (v89)
          {
            goto LABEL_180;
          }

          v92[2] = v124;
          v2 = v174;
          v97 = v173;
          v96 = v183;
        }

        while (v183);
      }

      v100 = v14;
      while (1)
      {
        v14 = v100 + 1;
        if (__OFADD__(v100, 1))
        {
          goto LABEL_168;
        }

        if (v14 >= v97)
        {
          break;
        }

        v101 = *(v171 + 8 * v14);
        ++v100;
        if (v101)
        {
          v98 = __clz(__rbit64(v101));
          v99 = (v101 - 1) & v101;
          goto LABEL_108;
        }
      }

      v125 = v177;
      v126 = swift_isUniquelyReferenced_nonNull_native();
      v199[0] = v125;
      v127 = v180;
      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v92, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v126, v199);
      v180 = v127;

      v33 = v199[0];
LABEL_29:
      v34 = 1;
      v35 = 1;
      if (v36)
      {
        swift_arrayDestroy();
        return v33;
      }
    }

    goto LABEL_28;
  }

LABEL_5:
  v22 = UsoTask.arguments.getter();
  if (!*(v22 + 16))
  {
    goto LABEL_22;
  }

  v23 = specialized __RawDictionaryStorage.find<A>(_:)(0x636E657265666572, 0xE900000000000065);
  if ((v24 & 1) == 0)
  {
    goto LABEL_22;
  }

  v25 = *(*(v22 + 56) + 8 * v23);

  if (v25 >> 62)
  {
    goto LABEL_174;
  }

  if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_22;
  }

LABEL_9:
  if ((v25 & 0xC000000000000001) != 0)
  {
LABEL_178:
    MEMORY[0x1E12A1FE0](0, v25);
    goto LABEL_12;
  }

  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_12:

    v2 = dispatch thunk of UsoValue.getAsEntity()();

    if (!v2)
    {
LABEL_23:
      v31 = MEMORY[0x1E69E7CC0];

      return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySSGTt0g5Tf4g_n(v31);
    }

    v26 = UsoEntity.attributes.getter();
    if (!*(v26 + 16) || (v27 = specialized __RawDictionaryStorage.find<A>(_:)(1701667182, 0xE400000000000000), (v28 & 1) == 0))
    {

      goto LABEL_23;
    }

    v25 = *(*(v26 + 56) + 8 * v27);

    if (v25 >> 62)
    {
      goto LABEL_182;
    }

    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

LABEL_183:

LABEL_22:

    goto LABEL_23;
  }

  __break(1u);
LABEL_180:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_182:
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_183;
    }

LABEL_17:
    v183 = v2;
    if ((v25 & 0xC000000000000001) == 0)
    {
      break;
    }

LABEL_185:
    v2 = MEMORY[0x1E12A1FE0](0, v25);
LABEL_20:
    v187 = v4;

    v25 = v2;
    v29 = dispatch thunk of UsoValue.getUsoIdentifiers()();

    v30 = MEMORY[0x1E69E7CC0];
    v196 = *(v29 + 16);
    if (v196)
    {
      v4 = 0;
      v194 = *MEMORY[0x1E69D2448];
      v195 = (v187 + 16);
      v192 = (v187 + 8);
      v193 = (v187 + 32);
      v191 = v29;
      do
      {
        if (v4 >= *(v29 + 16))
        {
          goto LABEL_173;
        }

        v128 = (*(v187 + 80) + 32) & ~*(v187 + 80);
        v129 = *(v187 + 72);
        (*(v187 + 16))(v19, v29 + v128 + v129 * v4, v198);
        v2 = UsoIdentifier.namespace.getter();
        v131 = v130;
        v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v133;
        if (v131)
        {
          if (v2 == v132 && v131 == v133)
          {

LABEL_141:
            v134 = *v193;
            (*v193)(v14, v19, v198);
            v135 = swift_isUniquelyReferenced_nonNull_native();
            v199[0] = v30;
            if ((v135 & 1) == 0)
            {
              v25 = v199;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 16) + 1, 1);
              v30 = v199[0];
            }

            v137 = *(v30 + 16);
            v136 = *(v30 + 24);
            v2 = v137 + 1;
            if (v137 >= v136 >> 1)
            {
              v25 = v199;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v136 > 1), v137 + 1, 1);
              v30 = v199[0];
            }

            *(v30 + 16) = v2;
            v134((v30 + v128 + v137 * v129), v14, v198);
            v29 = v191;
            goto LABEL_134;
          }

          v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v2)
          {
            goto LABEL_141;
          }
        }

        else
        {
        }

        (*v192)(v19, v198);
LABEL_134:
        ++v4;
      }

      while (v196 != v4);
    }

    v139 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_Say12SiriOntology13UsoIdentifierVGTt1g504_s14d16KitRuntime13Linkf82ParserV14getEntityTypes7usoTask11identifiersSDySSShySSGG0A8Ontology0eK0C_SayAI0E10G59VGtFSSAMcfu_32d5beb8035f55a7a5a7ad951410eb9d87AMSSTf3nnpk_nTf1nc_nTf4g_nTm(v30, v138);

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSShySSGGMd, &_ss18_DictionaryStorageCySSShySSGGMR);
    v140 = static _DictionaryStorage.copy(original:)();
    v33 = v140;
    v4 = 0;
    v141 = v139[8];
    v184 = v139 + 8;
    v142 = 1 << *(v139 + 32);
    v143 = -1;
    if (v142 < 64)
    {
      v143 = ~(-1 << v142);
    }

    v19 = v143 & v141;
    v144 = (v142 + 63) >> 6;
    v2 = v187;
    v195 = (v187 + 8);
    v196 = v187 + 16;
    v188 = (v140 + 64);
    v14 = MEMORY[0x1E69E7CC0];
    v177 = v140;
    v186 = v139;
    *&v185 = v144;
    if ((v143 & v141) == 0)
    {
LABEL_151:
      v146 = v4;
      while (1)
      {
        v4 = v146 + 1;
        if (__OFADD__(v146, 1))
        {
          break;
        }

        if (v4 >= v144)
        {

          return v33;
        }

        v147 = v184[v4];
        ++v146;
        if (v147)
        {
          v145 = __clz(__rbit64(v147));
          v19 = (v147 - 1) & v147;
          goto LABEL_156;
        }
      }

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
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_22;
      }

      goto LABEL_9;
    }

    while (1)
    {
      v145 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_156:
      v148 = v145 | (v4 << 6);
      v149 = v139[7];
      v150 = (v139[6] + 16 * v148);
      v151 = v150[1];
      v193 = *v150;
      v194 = v148;
      v152 = *(v149 + 8 * v148);
      v153 = *(v152 + 16);
      if (v153)
      {
        v191 = v19;
        v192 = v4;
        v199[0] = v14;
        v190 = v151;

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v153, 0);
        v154 = v199[0];
        v155 = *(v2 + 80);
        v189 = v152;
        v156 = v152 + ((v155 + 32) & ~v155);
        v157 = *(v2 + 72);
        v158 = *(v2 + 16);
        do
        {
          v160 = v197;
          v159 = v198;
          v158(v197, v156, v198);
          v161 = UsoIdentifier.value.getter();
          v163 = v162;
          (*v195)(v160, v159);
          v199[0] = v154;
          v165 = *(v154 + 16);
          v164 = *(v154 + 24);
          if (v165 >= v164 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v164 > 1), v165 + 1, 1);
            v154 = v199[0];
          }

          *(v154 + 16) = v165 + 1;
          v166 = v154 + 16 * v165;
          *(v166 + 32) = v161;
          *(v166 + 40) = v163;
          v156 += v157;
          --v153;
        }

        while (v153);
        v14 = MEMORY[0x1E69E7CC0];
        v139 = v186;
        v19 = v191;
        v4 = v192;
        v144 = v185;
        v2 = v190;
      }

      else
      {
        v2 = v151;

        v154 = v14;
      }

      v25 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v154);

      v167 = v194;
      *&v188[(v194 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v194;
      v33 = v177;
      v168 = (*(v177 + 48) + 16 * v167);
      *v168 = v193;
      v168[1] = v2;
      *(*(v33 + 56) + 8 * v167) = v25;
      v169 = *(v33 + 16);
      v89 = __OFADD__(v169, 1);
      v170 = v169 + 1;
      if (v89)
      {
        break;
      }

      *(v33 + 16) = v170;
      v2 = v187;
      if (!v19)
      {
        goto LABEL_151;
      }
    }
  }

  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v25 + 32);

    goto LABEL_20;
  }

  __break(1u);
LABEL_187:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized LinkUsoParser.appBundleIdsFromMentionedApps(usoTask:)(double a1)
{
  v63 = type metadata accessor for UsoIdentifier();
  v66 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v2 = &v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v62 = &v58 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v58 - v6;
  v7 = 0;
  v68 = MEMORY[0x1E69E7CC0];
  v8 = 0;
  do
  {
    v9 = v7;
    v10 = &outlined read-only object #0 of LinkUsoParser.appBundleIdsFromMentionedApps(usoTask:) + 16 * v8;
    v11 = *(v10 + 4);
    v12 = *(v10 + 5);

    v13 = UsoTask.arguments.getter();
    if (!*(v13 + 16))
    {

      goto LABEL_3;
    }

    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
    v16 = v15;

    if ((v16 & 1) == 0)
    {
      goto LABEL_3;
    }

    v17 = *(*(v13 + 56) + 8 * v14);

    if (v17 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_3;
      }
    }

    else if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    if ((v17 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E12A1FE0](0, v17);
    }

    else
    {
      if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_70;
      }
    }

    v18 = dispatch thunk of UsoValue.getAsEntity()();

    if (v18)
    {
      v19 = UsoEntity.attributes.getter();
      if (*(v19 + 16) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x80000001DCA84C20), (v21 & 1) != 0))
      {
        v17 = *(*(v19 + 56) + 8 * v20);

        if (v17 >> 62)
        {
          if (!__CocoaSet.count.getter())
          {
            goto LABEL_40;
          }
        }

        else if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        if ((v17 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E12A1FE0](0, v17);
        }

        else
        {
          if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_71;
          }
        }

        v22 = dispatch thunk of UsoValue.getAsEntity()();

        if (v22)
        {
          v23 = UsoEntity.attributes.getter();
          if (*(v23 + 16) && (v24 = specialized __RawDictionaryStorage.find<A>(_:)(1701667182, 0xE400000000000000), (v25 & 1) != 0))
          {
            v17 = *(*(v23 + 56) + 8 * v24);

            if (v17 >> 62)
            {
              if (!__CocoaSet.count.getter())
              {
LABEL_39:

LABEL_40:

LABEL_3:

                goto LABEL_4;
              }
            }

            else if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_39;
            }

            if ((v17 & 0xC000000000000001) != 0)
            {
              MEMORY[0x1E12A1FE0](0, v17);
            }

            else
            {
              if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_72;
              }
            }

            v64 = dispatch thunk of UsoValue.getUsoIdentifiers()();

            specialized Array.append<A>(contentsOf:)(v64);
          }

          else
          {
          }
        }
      }

      else
      {
      }
    }

LABEL_4:
    v7 = 1;
    v8 = 1;
  }

  while ((v9 & 1) == 0);
  swift_arrayDestroy();
  v26 = v68;
  v27 = *(v68 + 16);
  v28 = MEMORY[0x1E69E7CC0];
  v64 = v2;
  v59 = v68;
  v61 = v27;
  if (!v27)
  {
LABEL_54:
    v38 = *(v28 + 16);
    if (!v38)
    {

      v40 = MEMORY[0x1E69E7CC0];
LABEL_68:
      v56 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v40);

      return v56;
    }

    v67 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 0);
    v39 = v63;
    v40 = v67;
    v65 = *(v66 + 16);
    v66 += 16;
    v41 = v28 + ((*(v66 + 64) + 32) & ~*(v66 + 64));
    v62 = *(v66 + 56);
    v42 = (v66 - 8);
    while (1)
    {
      (v65)(v2, v41, v39);
      if (one-time initialization token for kBundleAliasToFullyQualifiedBundleId != -1)
      {
        swift_once();
      }

      rawValue = kBundleAliasToFullyQualifiedBundleId._rawValue;
      v44 = UsoIdentifier.value.getter();
      if (!rawValue[2])
      {
        break;
      }

      v46 = specialized __RawDictionaryStorage.find<A>(_:)(v44, v45);
      v48 = v47;

      if ((v48 & 1) == 0)
      {
        goto LABEL_62;
      }

      v49 = (rawValue[7] + 16 * v46);
      v51 = *v49;
      v50 = v49[1];

LABEL_63:
      v39 = v63;
      (*v42)(v2, v63);
      v67 = v40;
      v54 = *(v40 + 16);
      v53 = *(v40 + 24);
      if (v54 >= v53 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1);
        v39 = v63;
        v40 = v67;
      }

      *(v40 + 16) = v54 + 1;
      v55 = v40 + 16 * v54;
      *(v55 + 32) = v51;
      *(v55 + 40) = v50;
      v41 += v62;
      --v38;
      v2 = v64;
      if (!v38)
      {

        goto LABEL_68;
      }
    }

LABEL_62:
    v51 = UsoIdentifier.value.getter();
    v50 = v52;
    goto LABEL_63;
  }

  v29 = 0;
  v60 = v66 + 16;
  v58 = (v66 + 8);
  v30 = (v66 + 32);
  v17 = v63;
  while (v29 < *(v26 + 16))
  {
    v31 = v65;
    v32 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v33 = *(v66 + 72);
    (*(v66 + 16))(v65, v26 + v32 + v33 * v29, v17);
    if (closure #1 in LinkUsoParser.appBundleIdsFromMentionedApps(usoTask:)(v31))
    {
      v34 = *v30;
      (*v30)(v62, v65, v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 16) + 1, 1);
        v17 = v63;
        v28 = v67;
      }

      v37 = *(v28 + 16);
      v36 = *(v28 + 24);
      if (v37 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
        v17 = v63;
        v28 = v67;
      }

      *(v28 + 16) = v37 + 1;
      v34((v28 + v32 + v37 * v33), v62, v17);
      v2 = v64;
      v26 = v59;
    }

    else
    {
      (*v58)(v65, v17);
    }

    if (v61 == ++v29)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);

  (*v58)(v65, v17);

  __break(1u);
  return result;
}

uint64_t specialized LinkUsoParser.extractNoReferenceVerb(task:)(uint64_t a1)
{
  if (UsoTask.baseEntityAsString.getter() == 0x6E456F4E5F6F7375 && v1 == 0xEC00000079746974)
  {

    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  if (*(UsoTask.arguments.getter() + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(0x636E657265666572, 0xE900000000000065);
    v4 = v3;

    v2 &= v4 ^ 1;
  }

  else
  {
  }

  return v2 & 1;
}

uint64_t specialized LinkUsoParser.extractParseInformation(usoParse:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Siri_Nlu_External_UserParse();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = USOParse.userParse.getter();
  v11 = MEMORY[0x1E129C0F0](v10);
  (*(v3 + 8))(v5, v2);
  if (*(v11 + 16))
  {
    (*(v7 + 16))(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

    v12 = Siri_Nlu_External_UserDialogAct.hasCancelled.getter();
    (*(v7 + 8))(v9, v6);
    if (v12)
    {
      v13 = [objc_opt_self() cancelProtocol];
      v14 = MEMORY[0x1E69E7CC0];
      v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySSGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySSGTt0g5Tf4g_n(v14);
      v17 = result;
LABEL_8:
      v26 = 0;
      v25 = MEMORY[0x1E69E7CD0];
      goto LABEL_9;
    }
  }

  else
  {
  }

  v18 = specialized LinkUsoParser.getTask(_:)();
  if (!v18)
  {
    v27 = MEMORY[0x1E69E7CC0];
    v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySSGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySSGTt0g5Tf4g_n(v27);
    v17 = result;
    v13 = 0;
    goto LABEL_8;
  }

  v19 = v18;
  v13 = specialized LinkUsoParser.getSystemProtocol(usoTask:)(v18);
  v21 = specialized LinkUsoParser.extractIdentifiers(task:)(v20);
  v15 = specialized LinkUsoParser.getEntityTypes(usoTask:identifiers:)(v22, v19, v21);

  v17 = specialized LinkUsoParser.extractMentionedEntityTypes(usoTask:)(v19, v23);
  v25 = specialized LinkUsoParser.appBundleIdsFromMentionedApps(usoTask:)(v24);
  v26 = specialized LinkUsoParser.extractNoReferenceVerb(task:)(v19);

LABEL_9:
  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17;
  *(a1 + 24) = v25;
  *(a1 + 32) = v26 & 1;
  return result;
}

uint64_t outlined init with copy of LNSystemProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16LNSystemProtocolCSgMd, &_sSo16LNSystemProtocolCSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id specialized static LinkUsoParser.adjustmentTaskProtocolExtractor(usoTask:)(double a1)
{
  v1 = UsoTask.arguments.getter();
  if (!*(v1 + 16))
  {
    goto LABEL_43;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0x656D7473756A6461, 0xEE0065707954746ELL);
  if ((v3 & 1) == 0)
  {
    goto LABEL_43;
  }

  v4 = *(*(v1 + 56) + 8 * v2);

  if (v4 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_43;
    }
  }

  else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_43;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_41;
    }
  }

  v5 = dispatch thunk of UsoValue.getAsEntity()();

  if (!v5)
  {
    return 0;
  }

  v6 = UsoEntity.attributes.getter();

  if (!*(v6 + 16))
  {
    goto LABEL_42;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(0x5664656E69666564, 0xEC00000065756C61);
  if ((v8 & 1) == 0)
  {
    goto LABEL_42;
  }

  v1 = *(*(v6 + 56) + 8 * v7);

  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = __CocoaSet.count.getter();
  if (!result)
  {
LABEL_42:

LABEL_43:

    return 0;
  }

LABEL_13:
  if ((v1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0, v1);
    goto LABEL_16;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_16:

    v10 = dispatch thunk of UsoValue.getAsEntity()();

    if (v10)
    {
      v11 = UsoTask.verbString.getter();
      v13 = v12;

      if (v11 == 0xD00000000000001ALL && 0x80000001DCA84B40 == v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v14 = [objc_opt_self() moveSpatialProtocol];
LABEL_21:
        v15 = v14;

        return v15;
      }

      if (v11 == 0xD00000000000001CLL && 0x80000001DCA84B60 == v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v14 = [objc_opt_self() scrollProtocol];
        goto LABEL_21;
      }

      if (v11 == 0xD00000000000001ALL && 0x80000001DCA84B80 == v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v14 = [objc_opt_self() zoomProtocol];
        goto LABEL_21;
      }

      if (v11 == 0xD00000000000001CLL && 0x80000001DCA84BA0 == v13)
      {

LABEL_37:
        v14 = [objc_opt_self() resizeProtocol];
        goto LABEL_21;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_37;
      }
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t destroy for LinkParseMetadata(id *a1)
{
}

uint64_t initializeWithCopy for LinkParseMetadata(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 32);
  v6 = v3;

  return a1;
}

uint64_t assignWithCopy for LinkParseMetadata(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for LinkParseMetadata(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for LinkParseMetadata(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for LinkParseMetadata(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t LinkViewActionProvider.viewActions(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AceServiceInvokerAsync.submitToRemote<A>(_:_:setRefId:) in conformance AceServiceInvokerImpl;

  return specialized LinkViewActionProvider.viewActions(bundleIdentifier:)(a1, a2);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [LNViewAction](uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    type metadata accessor for LNViewAction();
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t protocol witness for LinkViewActionProviding.viewActions(bundleIdentifier:) in conformance LinkViewActionProvider(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AceServiceInvokerAsync.submit<A>(_:setRefId:) in conformance AceServiceInvokerImpl;

  return specialized LinkViewActionProvider.viewActions(bundleIdentifier:)(a1, a2);
}

uint64_t specialized LinkViewActionProvider.viewActions(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x1EEE6DFA0](specialized LinkViewActionProvider.viewActions(bundleIdentifier:), 0, 0);
}

uint64_t specialized LinkViewActionProvider.viewActions(bundleIdentifier:)()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = objc_allocWithZone(MEMORY[0x1E69ACE48]);
  v4 = MEMORY[0x1E12A1410](v1, v2);
  v5 = [v3 initWithBundleIdentifier_];
  v0[21] = v5;

  if (v5)
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = specialized LinkViewActionProvider.viewActions(bundleIdentifier:);
    v6 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo12LNViewActionCGs5Error_pGMd, &_sSccySaySo12LNViewActionCGs5Error_pGMR);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [LNViewAction];
    v0[13] = &block_descriptor_15;
    v0[14] = v6;
    [v5 fetchViewActionsWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v7 = v0[1];
    v8 = MEMORY[0x1E69E7CC0];

    return v7(v8);
  }
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = specialized LinkViewActionProvider.viewActions(bundleIdentifier:);
  }

  else
  {
    v2 = specialized LinkViewActionProvider.viewActions(bundleIdentifier:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[21];
  v2 = v0[18];

  v3 = v0[1];

  return v3(v2);
}

uint64_t specialized LinkViewActionProvider.viewActions(bundleIdentifier:)(uint64_t a1)
{
  v2 = *(v1 + 168);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t dispatch thunk of LinkViewActionProviding.viewActions(bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of CaarRankingProviding.getCaarRanking(requestId:caarId:rcId:actions:rankerContext:);

  return v11(a1, a2, a3, a4);
}

unint64_t type metadata accessor for LNViewAction()
{
  result = lazy cache variable for type metadata for LNViewAction;
  if (!lazy cache variable for type metadata for LNViewAction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNViewAction);
  }

  return result;
}

uint64_t *MeCardService.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  return &static MeCardService.instance;
}

void one-time initialization function for instance()
{
  type metadata accessor for MeCardService();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_clearCachedMeCard name:*MEMORY[0x1E695C3E0] object:0];

  static MeCardService.instance = v0;
}

{
  v0 = type metadata accessor for TaskPriority();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v4 = [v3 Execution];
  swift_unknownObjectRelease();
  v5 = [v4 source];

  v6 = v5;
  static TaskPriority.background.getter();
  type metadata accessor for SiriKitBiomeDonator(0);
  v7 = swift_allocObject();
  v8 = specialized SiriKitBiomeDonator.init(_:backgroundTaskPriority:)(v6, v2, v7);

  static SiriKitBiomeDonator.instance = v8;
}

uint64_t static MeCardService.instance.getter()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }
}

uint64_t one-time initialization function for meCardKeys()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v16;
  v24 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v18;
  v26 = v17;
  v27 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();

  MEMORY[0x1E12A1410](v0, v2);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();

  MEMORY[0x1E12A1410](v3, v5);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();

  MEMORY[0x1E12A1410](v6, v8);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();

  MEMORY[0x1E12A1410](v20, v10);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();

  MEMORY[0x1E12A1410](v21, v12);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();

  MEMORY[0x1E12A1410](v22, v14);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();

  MEMORY[0x1E12A1410](v24, v23);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();

  MEMORY[0x1E12A1410](v26, v25);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  result = swift_arrayDestroy();
  static MeCardService.meCardKeys = v27;
  return result;
}

id MeCardService.contactSource.getter()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id MeCardService.fetchMeCard()()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = MeCardService.contactSource.getter();
  if (one-time initialization token for meCardKeys != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7[0] = 0;
  v2 = [v0 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

  if (v2)
  {
    v3 = v7[0];
    return v2;
  }

  else
  {
    v5 = v7[0];
    v6 = _convertNSErrorToError(_:)();

    swift_willThrow();
    return v6;
  }
}

CNContact_optional __swiftcall MeCardService.fetchMeCard(allowCached:)(Swift::Bool allowCached)
{
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  if (v7 && allowCached)
  {
    v8 = v7;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v10 = static Log.executor;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    v7 = MeCardService.fetchMeCard()();
    v12 = v11;
    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    if (v12)
    {
      v13 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1DCA66060;
      swift_getErrorValue();
      v15 = Error.localizedDescription.getter();
      v17 = v16;
      *(v14 + 56) = MEMORY[0x1E69E6158];
      *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v14 + 32) = v15;
      *(v14 + 40) = v17;
      os_log(_:dso:log:type:_:)("MeCard fetch failed: %@", 23, 2, &dword_1DC659000, v10, v13, v14);

      outlined consume of Result<SABaseCommand?, Error>(v7);
      (*(v4 + 8))(v6, v3);
      v7 = 0;
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v18 = *(v1 + 16);
      *(v1 + 16) = v7;
      v19 = v7;
    }
  }

  v20 = v7;
  result.value.super.isa = v20;
  result.is_nil = v9;
  return result;
}

uint64_t MeCardService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

SiriKitRuntime::MessagesAffinityScorer __swiftcall MessagesAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CB60;
  v1 = 0xD000000000000031;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t specialized MessagesAffinityScorer.extractCommonMessageFromUsoParse(usoParse:)()
{
  if (!specialized static AffinityScorerUtils.getTask(_:)())
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.executor);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DC659000, v2, v3, "MessagesAffinityScorer Could not extract usoTask from parse", v4, 2u);
      MEMORY[0x1E12A2F50](v4, -1, -1);
    }

    return 0;
  }

  static UsoTask_CodegenConverter.convert(task:)();
  if (!v14)
  {
LABEL_31:
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.executor);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DC659000, v6, v7, "MessagesAffinityScorer Unrecognized task", v8, 2u);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v13, v12, &_sypSgMd, &_sypSgMR);
  type metadata accessor for UsoTask_send_common_Message();
  if (swift_dynamicCast() || (type metadata accessor for UsoTask_share_common_Message(), swift_dynamicCast()))
  {

    dispatch thunk of Uso_VerbTemplate_Target.target.getter();
    goto LABEL_6;
  }

  type metadata accessor for UsoTask_unshare_common_Message();
  if (swift_dynamicCast())
  {
LABEL_14:

    dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
    goto LABEL_6;
  }

  type metadata accessor for UsoTask_reply_common_Message();
  if (!swift_dynamicCast())
  {
    type metadata accessor for UsoTask_update_common_Message();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
      goto LABEL_6;
    }

    type metadata accessor for UsoTask_read_common_Message();
    if (swift_dynamicCast())
    {
      goto LABEL_14;
    }

    type metadata accessor for UsoTask_summarise_common_Message();
    if (swift_dynamicCast())
    {
      goto LABEL_14;
    }

    type metadata accessor for UsoTask_delete_common_Message();
    if (swift_dynamicCast())
    {
      goto LABEL_14;
    }

    type metadata accessor for UsoTask_unsend_common_Message();
    if (swift_dynamicCast())
    {
      goto LABEL_14;
    }

    type metadata accessor for UsoTask_request_common_Message();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
      goto LABEL_6;
    }

    type metadata accessor for UsoTask_checkExistence_common_Message();
    if (swift_dynamicCast())
    {
      goto LABEL_14;
    }

    type metadata accessor for UsoTask_noVerb_common_Message();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
      goto LABEL_6;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    goto LABEL_31;
  }

  dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
  v0 = v10;
  if (v10)
  {

    goto LABEL_7;
  }

  dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
LABEL_6:

  v0 = v11;
LABEL_7:
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  outlined destroy of ReferenceResolutionClientProtocol?(v13, &_sypSgMd, &_sypSgMR);
  return v0;
}

unint64_t lazy protocol witness table accessor for type UsoEntity_common_MessageMode.DefinedValues and conformance UsoEntity_common_MessageMode.DefinedValues()
{
  result = lazy protocol witness table cache variable for type UsoEntity_common_MessageMode.DefinedValues and conformance UsoEntity_common_MessageMode.DefinedValues;
  if (!lazy protocol witness table cache variable for type UsoEntity_common_MessageMode.DefinedValues and conformance UsoEntity_common_MessageMode.DefinedValues)
  {
    type metadata accessor for UsoEntity_common_MessageMode.DefinedValues();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoEntity_common_MessageMode.DefinedValues and conformance UsoEntity_common_MessageMode.DefinedValues);
  }

  return result;
}

uint64_t MetricsEventInformation.flowTask.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MetricsEventInformation.flowTask.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MetricsEventInformation.requestEventJson.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MetricsEventInformation.requestEventJson.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MetricsEventInformation.interactionId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MetricsEventInformation.interactionId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MetricsEventInformation.resultCandidateId.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t MetricsEventInformation.resultCandidateId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t MetricsEventInformation.appBundleId.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t MetricsEventInformation.appBundleId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

void __swiftcall MetricsEventInformation.init(flowTask:requestEventJson:interactionId:resultCandidateId:appBundleId:)(SiriKitRuntime::MetricsEventInformation *__return_ptr retstr, Swift::String flowTask, Swift::String requestEventJson, Swift::String interactionId, Swift::String resultCandidateId, Swift::String appBundleId)
{
  retstr->flowTask = flowTask;
  retstr->requestEventJson = requestEventJson;
  retstr->interactionId = interactionId;
  retstr->resultCandidateId = resultCandidateId;
  retstr->appBundleId = appBundleId;
}

void *initializeWithCopy for MetricsEventInformation(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  v7 = a2[9];
  a1[8] = a2[8];
  a1[9] = v7;

  return a1;
}

void *assignWithCopy for MetricsEventInformation(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];
  a1[5] = a2[5];

  a1[6] = a2[6];
  a1[7] = a2[7];

  a1[8] = a2[8];
  a1[9] = a2[9];

  return a1;
}

void *assignWithTake for MetricsEventInformation(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  v6 = a2[5];
  a1[4] = a2[4];
  a1[5] = v6;

  v7 = a2[7];
  a1[6] = a2[6];
  a1[7] = v7;

  v8 = a2[9];
  a1[8] = a2[8];
  a1[9] = v8;

  return a1;
}

uint64_t getEnumTagSinglePayload for MetricsEventInformation(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for MetricsEventInformation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MitigationDismissalHelper.__allocating_init()()
{
  v0 = swift_allocObject();
  MitigationDismissalHelper.init()();
  return v0;
}

void *MitigationDismissalHelper.init()()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v2);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v7 - 8);
  *(v0 + 16) = xmmword_1DCA70B00;
  *(v0 + 32) = 0xD00000000000001FLL;
  *(v0 + 40) = 0x80000001DCA84D10;
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.userInitiated.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8098], v3);
  *&v20[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 48) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v9 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA7D910);
  v10 = [v8 initWithSuiteName_];

  if (!v10)
  {
    v10 = [objc_opt_self() standardUserDefaults];
  }

  v11 = v1[4];
  v12 = v1[5];

  v13 = MEMORY[0x1E12A1410](v11, v12);

  v14 = [v10 objectForKey_];

  if (v14)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined destroy of ReferenceResolutionClientProtocol?(v20, &_sypSgMd, &_sypSgMR);
    v15 = v1[4];
    v16 = v1[5];

    v17 = MEMORY[0x1E12A1410](v15, v16);

    v18 = [v10 integerForKey_];

    v1[3] = v18;
  }

  else
  {

    memset(v20, 0, sizeof(v20));
    outlined destroy of ReferenceResolutionClientProtocol?(v20, &_sypSgMd, &_sypSgMR);
  }

  return v1;
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

uint64_t MitigationDismissalHelper.shouldDismissUI(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = type metadata accessor for InputOrigin();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11InputOriginOSg_ADtMd, &_s16SiriMessageTypes11InputOriginOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  if (PreExecutionDecision.rawValue.getter(v3) == 0x747065636361 && v17 == 0xE600000000000000)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
LABEL_11:
      v21 = 1;
      return v21 & 1;
    }
  }

  (*(v5 + 104))(v16, *MEMORY[0x1E69D04C0], v4);
  (*(v5 + 56))(v16, 0, 1, v4);
  v19 = *(v8 + 48);
  outlined init with copy of InputOrigin?(a2, v10);
  outlined init with copy of InputOrigin?(v16, &v10[v19]);
  v20 = *(v5 + 48);
  if (v20(v10, 1, v4) != 1)
  {
    outlined init with copy of InputOrigin?(v10, v13);
    if (v20(&v10[v19], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v10[v19], v4);
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin, MEMORY[0x1E69D04D0], MEMORY[0x1E69D04E0]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *(v5 + 8);
      v23(v7, v4);
      outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
      v23(v13, v4);
      outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
      v21 = v22 ^ 1;
      return v21 & 1;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
    (*(v5 + 8))(v13, v4);
    goto LABEL_10;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
  if (v20(&v10[v19], 1, v4) != 1)
  {
LABEL_10:
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s16SiriMessageTypes11InputOriginOSg_ADtMd, &_s16SiriMessageTypes11InputOriginOSg_ADtMR);
    goto LABEL_11;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
  v21 = 0;
  return v21 & 1;
}

uint64_t MitigationDismissalHelper.deinit()
{

  return v0;
}

uint64_t MitigationDismissalHelper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t outlined init with copy of InputOrigin?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MultiUserContextUpdater.__allocating_init(sessionState:rraasClient:correctionsPlatformClient:serviceHelper:assistantId:requestId:rootRequestId:contextDonator:instrumentationUtil:userIdSet:knownUserIdSet:)(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, __int128 a12, uint64_t a13)
{
  ObjectType = swift_getObjectType();
  v17 = a11[3];
  v18 = a11[4];
  v19 = __swift_mutable_project_boxed_opaque_existential_1(a11, v17);
  v20 = specialized MultiUserContextUpdater.__allocating_init(sessionState:rraasClient:correctionsPlatformClient:serviceHelper:assistantId:requestId:rootRequestId:contextDonator:instrumentationUtil:userIdSet:knownUserIdSet:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, v19, a12, a13, v13, v17, ObjectType, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(a11);
  return v20;
}

uint64_t MultiUserContextUpdater.assistantId.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t MultiUserContextUpdater.requestId.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t MultiUserContextUpdater.rootRequestId.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

uint64_t MultiUserContextUpdater.userIdToContextUpdater.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 256) = a1;
}

uint64_t MultiUserContextUpdater.init(sessionState:rraasClient:correctionsPlatformClient:serviceHelper:assistantId:requestId:rootRequestId:contextDonator:instrumentationUtil:userIdSet:knownUserIdSet:)(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, __int128 a12, uint64_t a13)
{
  v27 = a2;
  v31 = a7;
  v32 = a8;
  v29 = a5;
  v30 = a6;
  v28 = a3;
  v25 = a12;
  ObjectType = swift_getObjectType();
  v16 = a11[3];
  v17 = a11[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a11, v16);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v19);
  v23 = specialized MultiUserContextUpdater.init(sessionState:rraasClient:correctionsPlatformClient:serviceHelper:assistantId:requestId:rootRequestId:contextDonator:instrumentationUtil:userIdSet:knownUserIdSet:)(a1, v27, v28, a4, v29, v30, v31, v32, a9, a10, v21, v25, a13, v26, v16, ObjectType, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(a11);
  return v23;
}

id Dictionary<>.toNSError()(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  specialized _dictionaryUpCast<A, B, C, D>(_:)(a1);
  v1 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v2 = MEMORY[0x1E12A1410](0x55747865746E6F43, 0xEE00726574616470);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v4 = [v1 initWithDomain:v2 code:-1 userInfo:isa];

  return v4;
}

void MultiUserContextUpdater.applyServerContextUpdateCandidate(_:metadata:)(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;
  (*(*v2 + 280))(0, a2 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId, partial apply for closure #1 in MultiUserContextUpdater.applyServerContextUpdateCandidate(_:metadata:), v12);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.conversationBridge);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = Dictionary.debugDescription.getter();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1DC659000, v4, v5, "Done applying ServerContextUpdateCandidate to all ContextUpdater instances with error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  else
  {
  }
}

uint64_t closure #1 in MultiUserContextUpdater.applyServerContextUpdateCandidate(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v6);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.conversationBridge);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v18 = a2;
    v10 = a3;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    (*(*a1 + 360))();
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v19);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1DC659000, v8, v9, "Applying ServerContextUpdateCandidate to ContextUpdater with userId: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1E12A2F50](v12, -1, -1);
    v16 = v11;
    a3 = v10;
    a2 = v18;
    MEMORY[0x1E12A2F50](v16, -1, -1);
  }

  return (*(*a1 + 424))(a2, a3);
}

void MultiUserContextUpdater.applyResponseText(_:scope:userId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[2] = a1;
  (*(*v3 + 280))(a2, a3, partial apply for closure #1 in MultiUserContextUpdater.applyResponseText(_:scope:userId:), v13);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.conversationBridge);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = Dictionary.debugDescription.getter();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1DC659000, v5, v6, "Applied response text with error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  else
  {
  }
}

void *MultiUserContextUpdater.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return v0;
}

uint64_t MultiUserContextUpdater.__deallocating_deinit()
{
  MultiUserContextUpdater.deinit();

  return swift_deallocClassInstance();
}

uint64_t SIRINLUTask.toNluTask()@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24[-v6];
  v8 = [objc_opt_self() convertFromTask_];
  v9 = v8;
  if (v8 && (v10 = [v8 data]) != 0)
  {
    v11 = v10;
    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = type metadata accessor for Siri_Nlu_External_Task();
    v26 = v12;
    v27 = v14;
    v25 = 0;
    memset(&v24[16], 0, 32);
    outlined copy of Data._Representation(v12, v14);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task();
    Message.init<A>(contiguousBytes:extensions:partial:options:)();

    outlined consume of Data._Representation(v12, v14);
    v21 = *(v15 - 8);
    v22 = *(v21 + 56);
    v22(v7, 0, 1, v15);
    (*(v21 + 32))(a1, v7, v15);
    return v22(a1, 0, 1, v15);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.executor);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DC659000, v17, v18, "Proto NL Task has no data.", v19, 2u);
      MEMORY[0x1E12A2F50](v19, -1, -1);
    }

    v20 = type metadata accessor for Siri_Nlu_External_Task();
    return (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
  }
}

id Siri_Nlu_External_Task.toLegacyTask()()
{
  type metadata accessor for Siri_Nlu_External_Task();
  lazy protocol witness table accessor for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task();
  v5 = Message.serializedData(partial:)();
  v7 = v6;
  v8 = objc_allocWithZone(MEMORY[0x1E69D1218]);
  outlined copy of Data._Representation(v5, v7);
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v5, v7);
  v10 = [v8 initWithData_];

  if (v10)
  {
    v11 = objc_opt_self();
    v12 = [v10 task];
    v13 = [v11 convertUsoGraph_];

    if (v13)
    {
      result = [v10 score];
      if (result)
      {
        v14 = result;
        [result value];
        v16 = v15;

        v17 = [objc_allocWithZone(MEMORY[0x1E69D2568]) initWithTask:v13 score:v16];
        outlined consume of Data._Representation(v5, v7);

        return v17;
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    outlined consume of Data._Representation(v5, v7);
  }

  else
  {
    outlined consume of Data._Representation(v5, v7);
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.executor);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DC659000, v1, v2, "Failed to convert proto-backed Siri_Nlu_External_Task to legacy NLTask", v3, 2u);
    MEMORY[0x1E12A2F50](v3, -1, -1);
  }

  return 0;
}

uint64_t Array<A>.toLegacyTasks()(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_Task();
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E7CC0];
  v19 = MEMORY[0x1E69E7CC0];
  v8 = *(a1 + 16);
  if (v8)
  {
    v10 = *(v3 + 16);
    v9 = v3 + 16;
    v18 = v10;
    v11 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v12 = *(v9 + 56);
    v13 = (v9 - 8);
    do
    {
      v14 = v9;
      v18(v6, v11, v2, v4);
      v15 = Siri_Nlu_External_Task.toLegacyTask()();
      v16 = (*v13)(v6, v2);
      if (v15)
      {
        MEMORY[0x1E12A1680](v16);
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v7 = v19;
      }

      v11 += v12;
      --v8;
      v9 = v14;
    }

    while (v8);
  }

  return v7;
}

char *Array<A>.toNluTasks()(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for Siri_Nlu_External_Task();
  v23 = *(v5 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v26 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v9 = 0;
    v10 = a1 & 0xC000000000000001;
    v11 = (v23 + 48);
    v24 = (v23 + 32);
    v25 = a1 & 0xFFFFFFFFFFFFFF8;
    v12 = MEMORY[0x1E69E7CC0];
    v21 = a1 & 0xC000000000000001;
    v22 = a1;
    while (1)
    {
      if (v10)
      {
        v13 = MEMORY[0x1E12A1FE0](v9, a1, v6);
      }

      else
      {
        if (v9 >= *(v25 + 16))
        {
          goto LABEL_18;
        }

        v13 = *(a1 + 8 * v9 + 32);
      }

      v14 = v13;
      v15 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      SIRINLUTask.toNluTask()(v4);

      if ((*v11)(v4, 1, v5) == 1)
      {
        outlined destroy of Siri_Nlu_External_Task?(v4);
      }

      else
      {
        v16 = i;
        v17 = *v24;
        (*v24)(v26, v4, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
        }

        v19 = *(v12 + 2);
        v18 = *(v12 + 3);
        if (v19 >= v18 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v12);
        }

        *(v12 + 2) = v19 + 1;
        v17(&v12[((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19], v26, v5);
        i = v16;
        v10 = v21;
        a1 = v22;
      }

      ++v9;
      if (v15 == i)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t outlined destroy of Siri_Nlu_External_Task?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *Siri_Nlu_External_UserParse.appShortcuts.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x1E129C0F0](v2);
  if (*(v5 + 16))
  {
    (*(v1 + 16))(v4, v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    v6 = Siri_Nlu_External_UserDialogAct.toUsoTask()();
    (*(v1 + 8))(v4, v0);
    if (v6)
    {

      static UsoTask_CodegenConverter.convert(task:)();

      if (v12)
      {
        type metadata accessor for UsoTask_run_common_VoiceCommand();
        if (swift_dynamicCast())
        {
          v8 = UsoTask_run_common_VoiceCommand.appShortcuts.getter(v7);

          return v8;
        }
      }

      else
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v11, &_sypSgMd, &_sypSgMR);
      }
    }
  }

  else
  {
  }

  return MEMORY[0x1E69E7CC0];
}

char *Siri_Nlu_External_UserParse.generalizedAppShortcuts.getter()
{
  v0 = type metadata accessor for UsoIdentifier.NluComponent();
  v79 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = v61 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v61 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v80 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v82 = v61 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v81 = v61 - v11;
  v12 = type metadata accessor for UsoIdentifier();
  v83 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1E129C0F0](v17);
  if (!*(v20 + 16))
  {

    return MEMORY[0x1E69E7CC0];
  }

  (*(v16 + 16))(v19, v20 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v15);

  v21 = Siri_Nlu_External_UserDialogAct.toUsoTask()();
  (*(v16 + 8))(v19, v15);
  if (!v21)
  {
    return MEMORY[0x1E69E7CC0];
  }

  static UsoTask_CodegenConverter.convert(task:)();

  if (!v85[3])
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v85, &_sypSgMd, &_sypSgMR);
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for UsoTask_execute_common_VoiceCommand();
  if ((swift_dynamicCast() & 1) == 0)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v64 = v21;
  v22 = v84;

  dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.reference.getter();

  if (!v85[0] || (v23 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)(), , !v23))
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, static Logger.executor);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_1DC659000, v57, v58, "[Generalized AppShortcuts] Identifiers missing for VoiceCommand node", v59, 2u);
      MEMORY[0x1E12A2F50](v59, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  v63 = v2;
  v24 = *(v23 + 16);
  if (!v24)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v61[1] = v22;
  v74 = v3;
  v25 = *MEMORY[0x1E69D2488];
  v77 = *(v83 + 16);
  v78 = v25;
  v26 = (*(v83 + 80) + 32) & ~*(v83 + 80);
  v61[0] = v23;
  v27 = v23 + v26;
  v76 = *(v83 + 72);
  v72 = (v79 + 104);
  v71 = (v79 + 56);
  v28 = (v79 + 48);
  v62 = (v79 + 32);
  v75 = MEMORY[0x1E69E7CC0];
  v65 = (v79 + 8);
  LODWORD(v79) = *MEMORY[0x1E69D1770];
  v83 += 16;
  v29 = (v83 - 8);
  v69 = v5;
  v70 = v28;
  v73 = v12;
  v68 = (v83 - 8);
  v77(v14, v27, v12);
  while (1)
  {
    v30 = UsoIdentifier.namespace.getter();
    v32 = v31;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!v32)
    {

      goto LABEL_11;
    }

    if (v30 == v33 && v32 == v34)
    {
    }

    else
    {
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v35 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v36 = v81;
    UsoIdentifier.sourceComponent.getter();
    v37 = v82;
    (*v72)(v82, v79, v0);
    (*v71)(v37, 0, 1, v0);
    v38 = *(v74 + 48);
    outlined init with copy of UsoIdentifier.NluComponent?(v36, v5);
    outlined init with copy of UsoIdentifier.NluComponent?(v37, &v5[v38]);
    v39 = *v70;
    if ((*v70)(v5, 1, v0) != 1)
    {
      v41 = v80;
      outlined init with copy of UsoIdentifier.NluComponent?(v5, v80);
      if (v39(&v5[v38], 1, v0) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v82, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v81, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        (*v65)(v41, v0);
        v12 = v73;
LABEL_24:
        outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
        v29 = v68;
      }

      else
      {
        v42 = v63;
        (*v62)(v63, &v5[v38], v0);
        lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent();
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v44 = *v65;
        (*v65)(v42, v0);
        outlined destroy of ReferenceResolutionClientProtocol?(v82, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v81, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        v44(v80, v0);
        v5 = v69;
        outlined destroy of ReferenceResolutionClientProtocol?(v69, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        v12 = v73;
        if (v43)
        {
          goto LABEL_26;
        }

        v29 = v68;
      }

LABEL_11:
      (*v29)(v14, v12);
      goto LABEL_12;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v37, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v5 = v69;
    outlined destroy of ReferenceResolutionClientProtocol?(v36, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v40 = v39(&v5[v38], 1, v0);
    v12 = v73;
    if (v40 != 1)
    {
      goto LABEL_24;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
LABEL_26:
    v45 = UsoIdentifier.appBundleId.getter();
    v47 = v46;
    v48 = UsoIdentifier.groupIndex.getter();
    v49 = v75;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v45;
    v66 = v47;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
    }

    v52 = *(v49 + 2);
    v51 = *(v49 + 3);
    v75 = v49;
    if (v52 >= v51 >> 1)
    {
      v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v75);
    }

    v29 = v68;
    (*v68)(v14, v12);
    v53 = v75;
    *(v75 + 2) = v52 + 1;
    v54 = &v53[24 * v52];
    v55 = v66;
    *(v54 + 4) = v67;
    *(v54 + 5) = v55;
    *(v54 + 12) = v48;
    v54[52] = BYTE4(v48) & 1;
LABEL_12:
    v27 += v76;
    if (!--v24)
    {
      break;
    }

    v77(v14, v27, v12);
  }

  return v75;
}

uint64_t AppShortcutTarget.bundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AppShortcutTarget.actionIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AppShortcutTarget.debugDescription.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(39);

  v6[0] = 0xD000000000000023;
  v6[1] = 0x80000001DCA84E40;
  MEMORY[0x1E12A1580](*v1, v1[1]);
  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  _StringGuts.grow(_:)(22);

  v6[0] = 0xD000000000000012;
  v6[1] = 0x80000001DCA84E70;
  MEMORY[0x1E12A1580](v1[2], v1[3]);
  MEMORY[0x1E12A1580](8236, 0xE200000000000000);

  MEMORY[0x1E12A1580](0xD000000000000012, 0x80000001DCA84E70);

  _StringGuts.grow(_:)(16);

  strcpy(v6, "groupIndex: ");
  HIWORD(v6[1]) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32VSgMd, &_ss6UInt32VSgMR);
  v2 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v2);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);

  MEMORY[0x1E12A1580](v6[0], v6[1]);

  _StringGuts.grow(_:)(19);

  v6[0] = 0xD000000000000011;
  v6[1] = 0x80000001DCA84E90;
  if (*(v0 + 37))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + 37))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v3, v4);

  MEMORY[0x1E12A1580](v6[0], v6[1]);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);

  return 0xD000000000000023;
}

uint64_t AppShortcutTarget.identifier.getter()
{
  v3 = *v0;
  v4 = v3;
  outlined init with copy of String(&v4, &v2);
  MEMORY[0x1E12A1580](35, 0xE100000000000000);
  MEMORY[0x1E12A1580](*(v0 + 2), *(v0 + 3));
  return v3;
}

void AppShortcutTarget.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  if (*(v1 + 36) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *(v1 + 32);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v2);
  }

  Hasher._combine(_:)(*(v1 + 37) & 1);
}

Swift::Int AppShortcutTarget.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  if (*(v0 + 36) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *(v0 + 32);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  Hasher._combine(_:)(*(v0 + 37) & 1);
  return Hasher._finalize()();
}

uint64_t AppShortcutTarget.init(bundleIdentifier:actionIdentifier:groupIndex:containsAppName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 36) = BYTE4(a5) & 1;
  *(a7 + 37) = a6;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AppShortcutTarget()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 36);
  v3 = *(v0 + 37);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance AppShortcutTarget(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 36);
  v4 = *(v1 + 37);
  String.hash(into:)();
  String.hash(into:)();
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v2);
  }

  Hasher._combine(_:)(v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppShortcutTarget(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 36);
  v4 = *(v1 + 37);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v2);
  }

  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AppShortcutTarget(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 14) = *(a1 + 30);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 14) = *(a2 + 30);
  return specialized static AppShortcutTarget.== infix(_:_:)(&v5, &v7) & 1;
}

char *UsoTask_run_common_VoiceCommand.appShortcuts.getter(double a1)
{
  v1 = type metadata accessor for UsoIdentifier();
  v81 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  if (v100)
  {
    v4 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

    if (v4)
    {
      v6 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCs6UInt32VSg_Say12SiriOntology13UsoIdentifierVGTt1g504_s12e10Ontology31g88Task_run_common_VoiceCommandC0A10KitRuntimeE12appShortcutsSayAD17AppShortcutTargetVGvgs6d9VSgAA0C10H6VXEfU_Tf1nc_nTf4g_n(v4, v5);
      v70[1] = 0;

      v8 = 0;
      v9 = v6[8];
      v76 = v6 + 8;
      v10 = 1 << *(v6 + 32);
      v11 = -1;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      v12 = v11 & v9;
      v75 = (v10 + 63) >> 6;
      v13 = *MEMORY[0x1E69D2488];
      v88 = *MEMORY[0x1E69D24A0];
      v93 = (v81 + 8);
      v90 = 0x80000001DCA84EB0;
      v84 = 0x80000001DCA84ED0;
      v72 = MEMORY[0x1E69E7CC0];
      *&v7 = 136315138;
      v71 = v7;
      v77 = v6;
      v89 = v81 + 16;
      v86 = v1;
      v87 = v13;
      while (1)
      {
        if (!v12)
        {
          while (1)
          {
            v14 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              __break(1u);
              goto LABEL_59;
            }

            if (v14 >= v75)
            {
              break;
            }

            v12 = v76[v14];
            ++v8;
            if (v12)
            {
              v8 = v14;
              goto LABEL_11;
            }
          }

          v64 = v72;
          if (*(v72 + 2))
          {
            return v64;
          }

          v66 = one-time initialization token for executor;

          if (v66 != -1)
          {
            swift_once();
          }

          v67 = type metadata accessor for Logger();
          __swift_project_value_buffer(v67, static Logger.executor);
          v61 = Logger.logObject.getter();
          v68 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v61, v68))
          {
            v69 = swift_slowAlloc();
            *v69 = 0;

            _os_log_impl(&dword_1DC659000, v61, v68, "Found no AppShortcutTargets!", v69, 2u);
            MEMORY[0x1E12A2F50](v69, -1, -1);
          }

          else
          {
          }

          goto LABEL_50;
        }

LABEL_11:
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v16 = (v8 << 9) | (8 * v15);
        v17 = *(v6[7] + v16);
        v18 = *(v17 + 16);
        if (!v18)
        {
          continue;
        }

        v79 = v12;
        v80 = v8;
        v19 = v6[6] + v16;
        v74 = *v19;
        v73 = *(v19 + 4);
        v20 = v17 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
        v21 = *(v81 + 72);
        v94 = *(v81 + 16);
        v95 = v21;
        v78 = v17;

        v85 = 0;
        v83 = 0;
        v91 = 0;
        v82 = 0;
        v92 = 0;
        do
        {
          v94(v3, v20, v1);
          v23 = UsoIdentifier.namespace.getter();
          v25 = v24;
          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (!v25)
          {

            goto LABEL_26;
          }

          if (v23 == v26 && v25 == v27)
          {
          }

          else
          {
            v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v28 & 1) == 0)
            {
              goto LABEL_26;
            }
          }

          v100 = UsoIdentifier.value.getter();
          v101 = v29;
          v98 = 94;
          v99 = 0xE100000000000000;
          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          MEMORY[0x1E12A1580](v30);

          v96 = 0;
          v97 = 0xE000000000000000;
          lazy protocol witness table accessor for type String and conformance String();
          v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v33 = v32;

          v100 = v31;
          v101 = v33;
          v98 = 35;
          v99 = 0xE100000000000000;
          v34 = StringProtocol.components<A>(separatedBy:)();

          if (!v34[2])
          {

            v1 = v86;
            v13 = v87;
LABEL_26:
            v37 = UsoIdentifier.namespace.getter();
            if (v38)
            {
              if (v37 == 0xD000000000000018 && v38 == v90)
              {
              }

              else
              {
                v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v39 & 1) == 0)
                {
                  goto LABEL_15;
                }
              }

              v100 = UsoIdentifier.value.getter();
              v101 = v22;
              v98 = 0xD000000000000012;
              v99 = v84;
              lazy protocol witness table accessor for type String and conformance String();
              v85 = StringProtocol.contains<A>(_:)();
            }

LABEL_15:
            (*v93)(v3, v1);
            goto LABEL_16;
          }

          v35 = v34[5];
          v83 = v34[4];

          v82 = UsoIdentifier.appBundleId.getter();
          v92 = v36;
          v1 = v86;
          (*v93)(v3, v86);
          v91 = v35;
          v13 = v87;
LABEL_16:
          v20 += v95;
          --v18;
        }

        while (v18);

        if (v92)
        {
          v6 = v77;
          v40 = v91;
          if (!v91)
          {

            goto LABEL_35;
          }

          v41 = v92;
          if (one-time initialization token for executor != -1)
          {
            swift_once();
          }

          v42 = type metadata accessor for Logger();
          __swift_project_value_buffer(v42, static Logger.executor);

          v43 = Logger.logObject.getter();
          v44 = static os_log_type_t.debug.getter();

          LODWORD(v95) = v44;
          if (os_log_type_enabled(v43, v44))
          {
            v45 = v40;
            v46 = v13;
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v98 = v48;
            *v47 = v71;
            v100 = v82;
            v101 = v92;
            v102 = v83;
            v103 = v45;
            v104 = v74;
            v105 = v73;
            v106 = v85 & 1;

            v49 = String.init<A>(describing:)();
            v51 = v1;
            v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v98);

            *(v47 + 4) = v52;
            v1 = v51;
            _os_log_impl(&dword_1DC659000, v43, v95, "Found AppShortcutTarget: %s", v47, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v48);
            MEMORY[0x1E12A2F50](v48, -1, -1);
            v53 = v47;
            v41 = v92;
            v6 = v77;
            MEMORY[0x1E12A2F50](v53, -1, -1);
          }

          else
          {
            v46 = v13;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v72 + 2) + 1, 1, v72);
          }

          v8 = v80;
          v12 = v79;
          v55 = *(v72 + 2);
          v54 = *(v72 + 3);
          if (v55 >= v54 >> 1)
          {
            v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v72);
            v12 = v79;
            v8 = v80;
            v72 = v59;
          }

          v56 = v72;
          *(v72 + 2) = v55 + 1;
          v57 = &v56[40 * v55];
          *(v57 + 4) = v82;
          *(v57 + 5) = v41;
          v58 = v91;
          *(v57 + 6) = v83;
          *(v57 + 7) = v58;
          *(v57 + 16) = v74;
          v57[68] = v73;
          v57[69] = v85 & 1;
          v13 = v46;
        }

        else
        {

          v6 = v77;
LABEL_35:
          v8 = v80;
          v12 = v79;
        }
      }
    }
  }

  if (one-time initialization token for executor != -1)
  {
LABEL_59:
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  __swift_project_value_buffer(v60, static Logger.executor);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_1DC659000, v61, v62, "[AppShortcuts] Identifiers missing for VoiceCommand node", v63, 2u);
    MEMORY[0x1E12A2F50](v63, -1, -1);
  }

  v64 = MEMORY[0x1E69E7CC0];
LABEL_50:

  return v64;
}

BOOL Siri_Nlu_External_UserParse.isAppShortcutParse.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E129C0F0](v2);
  if (*(v5 + 16))
  {
    (*(v1 + 16))(v4, v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    Siri_Nlu_External_UserDialogAct.toUsoTask()();
    (*(v1 + 8))(v4, v0);
  }

  else
  {
  }

  static UsoTask_CodegenConverter.convert(task:)();

  if (!v11)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_sypSgMd, &_sypSgMR);
    goto LABEL_8;
  }

  type metadata accessor for UsoTask_run_common_VoiceCommand();
  if (!swift_dynamicCast())
  {
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v6 = v9[1];
LABEL_9:
  v7 = v6 != 0;

  return v7;
}

BOOL closure #1 in Sequence<>.isContainsAppShortcutParse.getter()
{
  v0 = *(Siri_Nlu_External_UserParse.appShortcuts.getter() + 2);

  return v0 != 0;
}

uint64_t outlined init with copy of UsoIdentifier.NluComponent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent()
{
  result = lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent;
  if (!lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent)
  {
    type metadata accessor for UsoIdentifier.NluComponent();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent);
  }

  return result;
}

uint64_t specialized static AppShortcutTarget.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
    if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v6 = *(a2 + 36);
      if (*(a1 + 36))
      {
        if (!*(a2 + 36))
        {
          return v6 & 1;
        }

        goto LABEL_18;
      }

      if (*(a1 + 8) != *(a2 + 32))
      {
        v6 = 1;
      }

      if ((v6 & 1) == 0)
      {
LABEL_18:
        v6 = *(a1 + 37) ^ *(a2 + 37) ^ 1;
        return v6 & 1;
      }
    }
  }

  v6 = 0;
  return v6 & 1;
}

void *_sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCs6UInt32VSg_Say12SiriOntology13UsoIdentifierVGTt1g504_s12e10Ontology31g88Task_run_common_VoiceCommandC0A10KitRuntimeE12appShortcutsSayAD17AppShortcutTargetVGvgs6d9VSgAA0C10H6VXEfU_Tf1nc_nTf4g_n(uint64_t a1, double a2)
{
  v3 = type metadata accessor for UsoIdentifier();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v42 - v7;
  v8 = MEMORY[0x1E69E7CC8];
  v53 = MEMORY[0x1E69E7CC8];
  v9 = *(a1 + 16);
  if (!v9)
  {
    return v8;
  }

  v11 = *(v4 + 16);
  v10 = v4 + 16;
  v44 = *(v10 + 64);
  v12 = *(v10 + 56);
  v47 = (v44 + 32) & ~v44;
  v48 = v11;
  v13 = a1 + v47;
  v51 = (v10 + 16);
  v43 = xmmword_1DCA66060;
  v45 = v3;
  v46 = v10;
  v50 = v12;
  while (1)
  {
    v48(v52, v13, v3);
    v17 = UsoIdentifier.groupIndex.getter();
    v18 = v17;
    v19 = HIDWORD(v17) & 1;
    v20 = v17;
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v17 | (v19 << 32));
    v23 = v8[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    if (v8[3] < v25)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, 1);
      v8 = v53;
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v20 | (v19 << 32));
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_19;
      }

      v22 = v27;
    }

    if (v26)
    {
      v29 = v8[7];
      v30 = *v51;
      (*v51)(v49, v52, v3);
      v31 = *(v29 + 8 * v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v29 + 8 * v22) = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
        *(v29 + 8 * v22) = v31;
      }

      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v31);
        *(v29 + 8 * v22) = v31;
      }

      v14 = v47;
      v31[2] = v34 + 1;
      v15 = v50;
      v16 = v31 + v14 + v34 * v50;
      v3 = v45;
      v30(v16, v49, v45);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMR);
      v35 = v47;
      v36 = swift_allocObject();
      *(v36 + 16) = v43;
      (*v51)((v36 + v35), v52, v3);
      v8[(v22 >> 6) + 8] |= 1 << v22;
      v37 = v8[6] + 8 * v22;
      *v37 = v18;
      *(v37 + 4) = v19;
      *(v8[7] + 8 * v22) = v36;
      v38 = v8[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_18;
      }

      v8[2] = v40;
      v15 = v50;
    }

    v13 += v15;
    if (!--v9)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32VSgMd, &_ss6UInt32VSgMR);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type AppShortcutTarget and conformance AppShortcutTarget()
{
  result = lazy protocol witness table cache variable for type AppShortcutTarget and conformance AppShortcutTarget;
  if (!lazy protocol witness table cache variable for type AppShortcutTarget and conformance AppShortcutTarget)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppShortcutTarget and conformance AppShortcutTarget);
  }

  return result;
}

uint64_t initializeWithCopy for AppShortcutTarget(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);

  return a1;
}

uint64_t assignWithCopy for AppShortcutTarget(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  v4 = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 32) = v4;
  *(a1 + 37) = *(a2 + 37);
  return a1;
}

__n128 __swift_memcpy38_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for AppShortcutTarget(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 37) = *(a2 + 37);
  return a1;
}

uint64_t getEnumTagSinglePayload for AppShortcutTarget(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 38))
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

uint64_t storeEnumTagSinglePayload for AppShortcutTarget(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 38) = 1;
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

    *(result + 38) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for GeneralizedAppShortcutTarget(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);

  return a1;
}

uint64_t assignWithCopy for GeneralizedAppShortcutTarget(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = v4;
  return a1;
}

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t assignWithTake for GeneralizedAppShortcutTarget(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t getEnumTagSinglePayload for GeneralizedAppShortcutTarget(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 21))
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

uint64_t storeEnumTagSinglePayload for GeneralizedAppShortcutTarget(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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

    *(result + 21) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Siri_Nlu_External_UserParse.isPSC.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v14 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_Parser();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Siri_Nlu_External_UserParse.parser.getter();
  Siri_Nlu_External_Parser.parserID.getter();
  (*(v8 + 8))(v10, v7);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D0968], v0);
  lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v11 = *(v1 + 8);
  v11(v3, v0);
  v11(v6, v0);
  if (v14[1] == v14[0])
  {
    v12 = 1;
  }

  else
  {
    v12 = Siri_Nlu_External_UserParse.isOverriddenPSC.getter();
  }

  return v12 & 1;
}

unint64_t lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier()
{
  result = lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier;
  if (!lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier)
  {
    type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier;
  if (!lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier)
  {
    type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier);
  }

  return result;
}

uint64_t Siri_Nlu_External_UserParse.isSNLC.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v14 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_Parser();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Siri_Nlu_External_UserParse.parser.getter();
  Siri_Nlu_External_Parser.parserID.getter();
  (*(v8 + 8))(v10, v7);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D0980], v0);
  lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v11 = *(v1 + 8);
  v11(v3, v0);
  v11(v6, v0);
  if (v14[1] == v14[0] || (Siri_Nlu_External_UserParse.isOverriddenSNLC.getter() & 1) != 0)
  {
    v12 = 1;
  }

  else
  {
    v12 = Siri_Nlu_External_UserParse.isNlv3FallbackException.getter();
  }

  return v12 & 1;
}

uint64_t Siri_Nlu_External_UserParse.isDelegated.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E129C0F0](v2);
  if (*(v5 + 16))
  {
    (*(v1 + 16))(v4, v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    v6 = Siri_Nlu_External_UserDialogAct.hasDelegated.getter();
    (*(v1 + 8))(v4, v0);
  }

  else
  {

    v6 = 0;
  }

  return v6 & 1;
}

uint64_t Siri_Nlu_External_UserParse.isNlv3FallbackException.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v27 = *(v0 - 8);
  v28 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v26 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v12 = type metadata accessor for Siri_Nlu_External_Parser();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Siri_Nlu_External_UserParse.parser.getter();
  Siri_Nlu_External_Parser.parserID.getter();
  (*(v13 + 8))(v15, v12);
  (*(v6 + 104))(v8, *MEMORY[0x1E69D0988], v5);
  lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v16 = *(v6 + 8);
  v16(v8, v5);
  v16(v11, v5);
  if (v30 != v29)
  {
    goto LABEL_4;
  }

  Siri_Nlu_External_UserParse.preferredUserDialogAct.getter(v4);
  v17 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v4, 1, v17) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v4);
LABEL_4:
    v19 = 0;
    return v19 & 1;
  }

  v21 = v26;
  Siri_Nlu_External_UserDialogAct.delegated.getter();
  (*(v18 + 8))(v4, v17);
  v22 = Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.getter();
  v24 = v23;
  (*(v27 + 8))(v21, v28);
  if (v22 == 0xD000000000000026 && 0x80000001DCA82100 == v24)
  {

    v19 = 1;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v19 & 1;
}

uint64_t Siri_Nlu_External_UserParse.isOverriddenPSC.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v31 = *(v0 - 8);
  v32 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v30 - v6;
  v7 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v14 = type metadata accessor for Siri_Nlu_External_Parser();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Siri_Nlu_External_UserParse.parser.getter();
  Siri_Nlu_External_Parser.parserID.getter();
  (*(v15 + 8))(v17, v14);
  (*(v8 + 104))(v10, *MEMORY[0x1E69D0988], v7);
  lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v18 = *(v8 + 8);
  v18(v10, v7);
  v19 = (v18)(v13, v7);
  if (v37 == v36)
  {
    v20 = MEMORY[0x1E129C0F0](v19);
    if (*(v20 + 16))
    {
      v22 = v31;
      v21 = v32;
      (*(v31 + 16))(v2, v20 + ((*(v22 + 80) + 32) & ~*(v22 + 80)), v32);

      v23 = v30;
      Siri_Nlu_External_UserDialogAct.delegated.getter();
      (*(v22 + 8))(v2, v21);
      v25 = v33;
      v24 = v34;
      v26 = v35;
      (*(v34 + 32))(v33, v23, v35);
      if (Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.getter() == 0xD000000000000010 && 0x80000001DCA84EF0 == v27)
      {

        (*(v24 + 8))(v25, v26);
        return 1;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*(v24 + 8))(v25, v26);
      if (v29)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t Siri_Nlu_External_UserParse.isOverriddenSNLC.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v27 = *(v0 - 8);
  v28 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v26 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v12 = type metadata accessor for Siri_Nlu_External_Parser();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Siri_Nlu_External_UserParse.parser.getter();
  Siri_Nlu_External_Parser.parserID.getter();
  (*(v13 + 8))(v15, v12);
  (*(v6 + 104))(v8, *MEMORY[0x1E69D0988], v5);
  lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v16 = *(v6 + 8);
  v16(v8, v5);
  v16(v11, v5);
  if (v30 != v29)
  {
    goto LABEL_4;
  }

  Siri_Nlu_External_UserParse.preferredUserDialogAct.getter(v4);
  v17 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v4, 1, v17) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v4);
LABEL_4:
    v19 = 0;
    return v19 & 1;
  }

  v21 = v26;
  Siri_Nlu_External_UserDialogAct.delegated.getter();
  (*(v18 + 8))(v4, v17);
  v22 = Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.getter();
  v24 = v23;
  (*(v27 + 8))(v21, v28);
  if (v22 == 0xD000000000000013 && 0x80000001DCA84F10 == v24)
  {

    v19 = 1;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v19 & 1;
}

uint64_t Array<A>.serializeProtobufElementsAsData<A>(swiftType:objects:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  return Sequence.compactMap<A>(_:)();
}

uint64_t Array<A>.deserializeDataElementsAsProtobuf<A>(swiftType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
  lazy protocol witness table accessor for type [Data] and conformance [A]();
  return Sequence.compactMap<A>(_:)();
}

uint64_t closure #1 in Array<A>.serializeProtobufElementsAsData<A>(swiftType:objects:)@<X0>(uint64_t *a3@<X8>)
{
  result = Message.serializedData(partial:)();
  if (v3)
  {

    result = 0;
    v6 = 0xF000000000000000;
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t closure #1 in Array<A>.deserializeDataElementsAsProtobuf<A>(swiftType:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v9 - 8);
  outlined copy of Data._Representation(*a1, a1[1]);
  BinaryDecodingOptions.init()();
  Message.init(serializedData:extensions:partial:options:)();
  if (v5)
  {

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return (*(*(a2 - 8) + 56))(a4, v10, 1, a2);
}

unint64_t lazy protocol witness table accessor for type [Data] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Data] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Data] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Data] and conformance [A]);
  }

  return result;
}

SiriKitRuntime::NotebookAffinityScorer __swiftcall NotebookAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CDD0;
  v1 = 0xD000000000000021;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t specialized NotebookAffinityScorer.isExplicitlySupported(usoTask:)(uint64_t a1)
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v5)
  {
    goto LABEL_42;
  }

  outlined init with copy of Any?(v4, v3);
  type metadata accessor for UsoTask_create_common_Reminder();
  if (!swift_dynamicCast())
  {
    type metadata accessor for UsoTask_noVerb_common_Reminder();
    if (!swift_dynamicCast())
    {
      type metadata accessor for UsoTask_checkExistence_common_Reminder();
      if (!swift_dynamicCast())
      {
        type metadata accessor for UsoTask_delete_common_Reminder();
        if (!swift_dynamicCast())
        {
          type metadata accessor for UsoTask_request_common_Reminder();
          if (!swift_dynamicCast())
          {
            type metadata accessor for UsoTask_summarise_common_Reminder();
            if (!swift_dynamicCast())
            {
              type metadata accessor for UsoTask_read_common_Reminder();
              if (!swift_dynamicCast())
              {
                type metadata accessor for UsoTask_update_common_Reminder();
                if (!swift_dynamicCast())
                {
                  type metadata accessor for UsoTask_disableSetting_common_Reminder();
                  if (!swift_dynamicCast())
                  {
                    type metadata accessor for UsoTask_disable_common_Reminder();
                    if (!swift_dynamicCast())
                    {
                      type metadata accessor for UsoTask_enableSetting_common_Reminder();
                      if (!swift_dynamicCast())
                      {
                        type metadata accessor for UsoTask_snooze_common_Reminder();
                        if (!swift_dynamicCast())
                        {
                          type metadata accessor for UsoTask_create_common_ReminderList();
                          if (!swift_dynamicCast())
                          {
                            type metadata accessor for UsoTask_noVerb_common_ReminderList();
                            if (!swift_dynamicCast())
                            {
                              type metadata accessor for UsoTask_checkExistence_common_ReminderList();
                              if (!swift_dynamicCast())
                              {
                                type metadata accessor for UsoTask_delete_common_ReminderList();
                                if (!swift_dynamicCast())
                                {
                                  type metadata accessor for UsoTask_request_common_ReminderList();
                                  if (!swift_dynamicCast())
                                  {
                                    type metadata accessor for UsoTask_summarise_common_ReminderList();
                                    if (!swift_dynamicCast())
                                    {
                                      type metadata accessor for UsoTask_read_common_ReminderList();
                                      if (!swift_dynamicCast())
                                      {
                                        type metadata accessor for UsoTask_update_common_ReminderList();
                                        if (!swift_dynamicCast())
                                        {
                                          type metadata accessor for UsoTask_create_common_Note();
                                          if (!swift_dynamicCast())
                                          {
                                            type metadata accessor for UsoTask_noVerb_common_Note();
                                            if (!swift_dynamicCast())
                                            {
                                              type metadata accessor for UsoTask_checkExistence_common_Note();
                                              if (!swift_dynamicCast())
                                              {
                                                type metadata accessor for UsoTask_delete_common_Note();
                                                if (!swift_dynamicCast())
                                                {
                                                  type metadata accessor for UsoTask_request_common_Note();
                                                  if (!swift_dynamicCast())
                                                  {
                                                    type metadata accessor for UsoTask_summarise_common_Note();
                                                    if (!swift_dynamicCast())
                                                    {
                                                      type metadata accessor for UsoTask_update_common_Note();
                                                      if (!swift_dynamicCast())
                                                      {
                                                        type metadata accessor for UsoTask_read_common_Note();
                                                        if (!swift_dynamicCast())
                                                        {
                                                          type metadata accessor for UsoTask_enableSetting_common_Note();
                                                          if (!swift_dynamicCast())
                                                          {
                                                            type metadata accessor for UsoTask_disableSetting_common_Note();
                                                            if (!swift_dynamicCast())
                                                            {
                                                              type metadata accessor for UsoTask_undo_common_Note();
                                                              if (!swift_dynamicCast())
                                                              {
                                                                type metadata accessor for UsoTask_create_common_NoteFolder();
                                                                if (!swift_dynamicCast())
                                                                {
                                                                  type metadata accessor for UsoTask_noVerb_common_NoteFolder();
                                                                  if (!swift_dynamicCast())
                                                                  {
                                                                    type metadata accessor for UsoTask_checkExistence_common_NoteFolder();
                                                                    if (!swift_dynamicCast())
                                                                    {
                                                                      type metadata accessor for UsoTask_delete_common_NoteFolder();
                                                                      if (!swift_dynamicCast())
                                                                      {
                                                                        type metadata accessor for UsoTask_request_common_NoteFolder();
                                                                        if (!swift_dynamicCast())
                                                                        {
                                                                          type metadata accessor for UsoTask_summarise_common_NoteFolder();
                                                                          if (!swift_dynamicCast())
                                                                          {
                                                                            type metadata accessor for UsoTask_update_common_NoteFolder();
                                                                            if (!swift_dynamicCast())
                                                                            {
                                                                              __swift_destroy_boxed_opaque_existential_1Tm(v3);
LABEL_42:
                                                                              v1 = 0;
                                                                              goto LABEL_43;
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
            }
          }
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  v1 = 1;
LABEL_43:
  outlined destroy of Any?(v4);
  return v1;
}

uint64_t specialized NotebookAffinityScorer.score(input:environment:)()
{
  v0 = type metadata accessor for RREntity();
  v83 = *(v0 - 8);
  v84 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v72 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for RRCandidate();
  v4 = *(v3 - 8);
  v85 = v3;
  v86 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Parse();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for USOParse();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v8 + 88))(v10, v7) != *MEMORY[0x1E69D0168])
  {
    (*(v8 + 8))(v10, v7);
    if (one-time initialization token for executor != -1)
    {
LABEL_51:
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.executor);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DC659000, v19, v20, "[NotebookAffinityScorer] Unexpected parse", v21, 2u);
      MEMORY[0x1E12A2F50](v21, -1, -1);

      return 2;
    }

    return 2;
  }

  (*(v8 + 96))(v10, v7);
  (*(v12 + 32))(v14, v10, v11);
  v15 = specialized static AffinityScorerUtils.getTask(_:)();
  if (!v15)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.executor);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1DC659000, v23, v24, "[NotebookAffinityScorer] Unable to obtain task from parse", v25, 2u);
      MEMORY[0x1E12A2F50](v25, -1, -1);

      (*(v12 + 8))(v14, v11);
      return 2;
    }

    goto LABEL_36;
  }

  v16 = v15;
  if (specialized NotebookAffinityScorer.isExplicitlySupported(usoTask:)(v15))
  {
    (*(v12 + 8))(v14, v11);

    return 3;
  }

  v75 = v16;
  if (UsoTask.baseEntityAsString.getter() == 0x6E456F4E5F6F7375 && v26 == 0xEC00000079746974)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  if (UsoTask.verbString.getter() == 0x657461647075 && v29 == 0xE600000000000000)
  {
  }

  else
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v30 & 1) == 0)
    {
LABEL_31:
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      __swift_project_value_buffer(v52, static Logger.executor);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v17 = 2;
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_1DC659000, v53, v54, "[NotebookAffinityScorer] Not a shared task", v55, 2u);
        MEMORY[0x1E12A2F50](v55, -1, -1);

        (*(v12 + 8))(v14, v11);
        return v17;
      }

LABEL_36:
      (*(v12 + 8))(v14, v11);
      return 2;
    }
  }

  v77 = v2;
  v81 = v6;
  v72 = v14;
  v73 = v11;
  v74 = v12;
  SiriEnvironment.salientEntitiesProvider.getter();
  v31 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

  v32 = v31;
  v33 = 0;
  v82 = *(v31 + 16);
  v34 = v85;
  v35 = (v83 + 8);
  v76 = 0x80000001DCA84F30;
  v79 = v86 + 16;
  v80 = (v86 + 8);
  v78 = v31;
  v36 = v81;
  v37 = v77;
  while (v82 != v33)
  {
    if (v33 >= *(v32 + 16))
    {
      __break(1u);
      goto LABEL_51;
    }

    v38 = v32 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
    v39 = *(v86 + 72);
    v83 = v33;
    (*(v86 + 16))(v36, v38 + v39 * v33, v34);
    RRCandidate.entity.getter();
    RREntity.usoEntity.getter();
    v40 = *v35;
    v41 = v84;
    (*v35)(v37, v84);
    v42 = UsoTask.verbString.getter();
    v44 = v43;

    v89 = v42;
    v90 = v44;
    v87 = 0x525F6E6F6D6D6F63;
    v88 = 0xEF7265646E696D65;
    lazy protocol witness table accessor for type String and conformance String();
    v45 = StringProtocol.contains<A>(_:)();

    if (v45)
    {

      (*v80)(v36, v34);
      goto LABEL_45;
    }

    v46 = v83 + 1;
    RRCandidate.entity.getter();
    RREntity.usoEntity.getter();
    v40(v37, v41);
    v47 = UsoTask.verbString.getter();
    v49 = v48;

    v89 = v47;
    v90 = v49;
    v87 = 0xD000000000000013;
    v88 = v76;
    v50 = StringProtocol.contains<A>(_:)();

    v51 = v85;
    (*v80)(v36, v85);
    v33 = v46;
    v34 = v51;
    v32 = v78;
    if (v50)
    {

LABEL_45:
      v66 = v73;
      v65 = v74;
      v67 = v72;
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v68 = type metadata accessor for Logger();
      __swift_project_value_buffer(v68, static Logger.executor);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_1DC659000, v69, v70, "[NotebookAffinityScorer] Reminders found in entities, returning .high", v71, 2u);
        MEMORY[0x1E12A2F50](v71, -1, -1);
      }

      (*(v65 + 8))(v67, v66);
      return 3;
    }
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  __swift_project_value_buffer(v57, static Logger.executor);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.debug.getter();
  v60 = os_log_type_enabled(v58, v59);
  v62 = v73;
  v61 = v74;
  v63 = v72;
  if (v60)
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_1DC659000, v58, v59, "[NotebookAffinityScorer] No reminders found in entities, returning .low", v64, 2u);
    MEMORY[0x1E12A2F50](v64, -1, -1);
  }

  (*(v61 + 8))(v63, v62);
  return 1;
}

SiriKitRuntime::NotificationAffinityScorer __swiftcall NotificationAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CBA0;
  v1 = 0xD00000000000002ELL;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t specialized NotificationAffinityScorer.isAmbiguousRead(task:)(uint64_t a1)
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v5)
  {
    goto LABEL_5;
  }

  outlined init with copy of Any?(v4, v3);
  type metadata accessor for UsoTask_read_uso_NoEntity();
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
LABEL_5:
    v1 = 0;
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  v1 = 1;
LABEL_6:
  outlined destroy of Any?(v4);
  return v1;
}

uint64_t specialized NotificationAffinityScorer.isSalientNotification(_:)()
{
  v17 = type metadata accessor for RREntity();
  v0 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for RRCandidate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  SiriEnvironment.salientEntitiesProvider.getter();
  v7 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

  v16 = *(v7 + 16);
  if (!v16)
  {
LABEL_8:

    return 0;
  }

  v8 = 0;
  v15 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9 = (v0 + 8);
  while (1)
  {
    if (v8 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_14;
    }

    (*(v4 + 16))(v6, v15 + *(v4 + 72) * v8, v3);
    RRCandidate.entity.getter();
    (*(v4 + 8))(v6, v3);
    RREntity.usoEntity.getter();
    (*v9)(v2, v17);
    static UsoEntity_CodeGenConverter.convert(entity:)();

    if (v20)
    {
      break;
    }

LABEL_3:
    ++v8;
    outlined destroy of Any?(v19);
    if (v16 == v8)
    {
      goto LABEL_8;
    }
  }

  outlined init with copy of Any?(v19, v18);
  type metadata accessor for UsoEntity_common_Notification();
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    goto LABEL_3;
  }

  if (one-time initialization token for executor == -1)
  {
    goto LABEL_10;
  }

LABEL_14:
  swift_once();
LABEL_10:
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.executor);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1DC659000, v12, v13, "NotificationAffinityScorer isSalientNotification | salient notification in entity pool", v14, 2u);
    MEMORY[0x1E12A2F50](v14, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  outlined destroy of Any?(v19);
  return 1;
}

uint64_t specialized NotificationAffinityScorer.score(input:environment:)()
{
  v0 = type metadata accessor for Parse();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for USOParse();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v1 + 88))(v3, v0) != *MEMORY[0x1E69D0168])
  {
    (*(v1 + 8))(v3, v0);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.executor);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC659000, v11, v12, "NotificationAffinityScorer score | unexpected parse, returning default affinity", v13, 2u);
      MEMORY[0x1E12A2F50](v13, -1, -1);

      return 2;
    }

    return 2;
  }

  (*(v1 + 96))(v3, v0);
  (*(v5 + 32))(v7, v3, v4);
  v8 = specialized static AffinityScorerUtils.getTask(_:)();
  if (!v8)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.executor);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1DC659000, v15, v16, "NotificationAffinityScorer score | unable to obtain task, returning default affinity", v17, 2u);
      MEMORY[0x1E12A2F50](v17, -1, -1);

      (*(v5 + 8))(v7, v4);
      return 2;
    }

    goto LABEL_26;
  }

  if ((specialized NotificationAffinityScorer.isAmbiguousRead(task:)(v8) & 1) == 0)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.executor);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v9 = 2;
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DC659000, v19, v20, "NotificationAffinityScorer score | not an ambiguous read task, returning default affinity", v21, 2u);
      MEMORY[0x1E12A2F50](v21, -1, -1);

      (*(v5 + 8))(v7, v4);
      return v9;
    }

LABEL_26:
    (*(v5 + 8))(v7, v4);
    return 2;
  }

  if (specialized NotificationAffinityScorer.isSalientNotification(_:)())
  {
    (*(v5 + 8))(v7, v4);

    return 3;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.executor);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1DC659000, v23, v24, "NotificationAffinityScorer score | no salient notification, returning low affinity", v25, 2u);
      MEMORY[0x1E12A2F50](v25, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return 1;
  }
}

uint64_t outlined init with copy of ServerFallbackReason?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OfflineServerFallbackRule.__allocating_init(networkAvailabilityProvider:coreTelephonyServiceProvider:fallbackReason:processInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a4[3];
  v10 = a4[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  v12 = specialized OfflineServerFallbackRule.__allocating_init(networkAvailabilityProvider:coreTelephonyServiceProvider:fallbackReason:processInfo:)(a1, a2, a3, v11, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  return v12;
}

uint64_t OfflineServerFallbackRule.init(networkAvailabilityProvider:coreTelephonyServiceProvider:fallbackReason:processInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a4[3];
  v10 = a4[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = specialized OfflineServerFallbackRule.init(networkAvailabilityProvider:coreTelephonyServiceProvider:fallbackReason:processInfo:)(a1, a2, a3, v14, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  return v16;
}

SiriKitRuntime::PreExecutionDecision __swiftcall OfflineServerFallbackRule.evaluate()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v26 - v2;
  if (dispatch thunk of NetworkAvailability.isAvailable.getter())
  {
    return 11;
  }

  if ((*(*v0 + 136))())
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.conversationBridge);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v27 = v9;
      *v8 = 136315138;
      outlined init with copy of ServerFallbackReason?(v0 + OBJC_IVAR____TtC14SiriKitRuntime25OfflineServerFallbackRule_fallbackReason, v3);
      v10 = type metadata accessor for ServerFallbackReason();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v3, 1, v10) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
        v12 = 0x80000001DCA84F50;
        v13 = 0xD000000000000026;
      }

      else
      {
        v23 = ServerFallbackReason.rawValue.getter();
        v12 = v24;
        (*(v11 + 8))(v3, v10);
        v13 = v23;
      }

      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v27);

      *(v8 + 4) = v25;
      _os_log_impl(&dword_1DC659000, v6, v7, "Device is offline and attempting to fallback to the server because of an error: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1E12A2F50](v9, -1, -1);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }

    return 6;
  }

  else
  {
    v14 = dispatch thunk of NetworkAvailability.isInAirplaneMode.getter();
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.conversationBridge);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = 136315138;
      if (v14)
      {
        v20 = 0x64656C62616E65;
      }

      else
      {
        v20 = 0x64656C6261736964;
      }

      if (v14)
      {
        v21 = 0xE700000000000000;
      }

      else
      {
        v21 = 0xE800000000000000;
      }

      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v27);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1DC659000, v16, v17, "Device is offline with airplane mode %s. Rejecting server fallback.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1E12A2F50](v19, -1, -1);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }

    if (v14)
    {
      return 5;
    }

    else
    {
      return 4;
    }
  }
}

Swift::Bool __swiftcall OfflineServerFallbackRule.isFallbackReasonAnError()()
{
  v1 = type metadata accessor for ServerFallbackReason();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v43 = &v38[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSg_ADtMd, &_s16SiriMessageTypes20ServerFallbackReasonOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v38[-v13];
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v38[-v15];
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v38[-v18];
  v20 = OBJC_IVAR____TtC14SiriKitRuntime25OfflineServerFallbackRule_fallbackReason;
  v21 = *MEMORY[0x1E69D0768];
  v45 = *(v2 + 104);
  v45(&v38[-v18], v21, v1, v17);
  v44 = *(v2 + 56);
  v44(v19, 0, 1, v1);
  v46 = v20;
  v47 = v4;
  v22 = *(v4 + 48);
  v49 = v0;
  outlined init with copy of ServerFallbackReason?(v0 + v20, v8);
  outlined init with copy of ServerFallbackReason?(v19, &v8[v22]);
  v23 = v2;
  v24 = *(v2 + 48);
  if (v24(v8, 1, v1) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    if (v24(&v8[v22], 1, v1) == 1)
    {
      v25 = v8;
LABEL_10:
      outlined destroy of ReferenceResolutionClientProtocol?(v25, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
LABEL_15:
      v29 = 1;
      return v29 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of ServerFallbackReason?(v8, v51);
  v42 = v24;
  if (v24(&v8[v22], 1, v1) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    (*(v2 + 8))(v51, v1);
    v24 = v42;
LABEL_6:
    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s16SiriMessageTypes20ServerFallbackReasonOSg_ADtMd, &_s16SiriMessageTypes20ServerFallbackReasonOSg_ADtMR);
    goto LABEL_7;
  }

  v30 = *(v2 + 32);
  v40 = v11;
  v31 = v43;
  v30(v43, &v8[v22], v1);
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason();
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  v41 = v2;
  v32 = *(v2 + 8);
  v33 = v31;
  v11 = v40;
  v32(v33, v1);
  outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v32(v51, v1);
  v23 = v41;
  outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v24 = v42;
  if (v39)
  {
    goto LABEL_15;
  }

LABEL_7:
  v26 = v48;
  (v45)(v48, *MEMORY[0x1E69D0770], v1);
  v44(v26, 0, 1, v1);
  v27 = *(v47 + 48);
  v28 = v50;
  outlined init with copy of ServerFallbackReason?(v49 + v46, v50);
  outlined init with copy of ServerFallbackReason?(v26, &v28[v27]);
  if (v24(v28, 1, v1) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v26, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    if (v24(&v28[v27], 1, v1) == 1)
    {
      v25 = v28;
      goto LABEL_10;
    }
  }

  else
  {
    outlined init with copy of ServerFallbackReason?(v28, v11);
    if (v24(&v28[v27], 1, v1) != 1)
    {
      v34 = v43;
      (*(v23 + 32))(v43, &v28[v27], v1);
      lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason();
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = v11;
      v36 = *(v23 + 8);
      v36(v34, v1);
      outlined destroy of ReferenceResolutionClientProtocol?(v26, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
      v36(v35, v1);
      outlined destroy of ReferenceResolutionClientProtocol?(v28, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
      return v29 & 1;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v26, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    (*(v23 + 8))(v11, v1);
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v28, &_s16SiriMessageTypes20ServerFallbackReasonOSg_ADtMd, &_s16SiriMessageTypes20ServerFallbackReasonOSg_ADtMR);
  v29 = 0;
  return v29 & 1;
}

uint64_t OfflineServerFallbackRule.isLowPowerModeEnabled(processInfo:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2) & 1;
}

uint64_t OfflineServerFallbackRule.deinit()
{

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime25OfflineServerFallbackRule_fallbackReason, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime25OfflineServerFallbackRule_processInfo));
  return v0;
}

uint64_t OfflineServerFallbackRule.__deallocating_deinit()
{

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime25OfflineServerFallbackRule_fallbackReason, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime25OfflineServerFallbackRule_processInfo));

  return swift_deallocClassInstance();
}

uint64_t specialized OfflineServerFallbackRule.init(networkAvailabilityProvider:coreTelephonyServiceProvider:fallbackReason:processInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = (a5 + OBJC_IVAR____TtC14SiriKitRuntime25OfflineServerFallbackRule_processInfo);
  v13[3] = a6;
  v13[4] = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a4, a6);
  *(a5 + 16) = 5;
  *(a5 + 24) = a1;
  outlined init with take of ServerFallbackReason?(a3, a5 + OBJC_IVAR____TtC14SiriKitRuntime25OfflineServerFallbackRule_fallbackReason);
  *(a5 + 32) = a2;
  return a5;
}

uint64_t specialized OfflineServerFallbackRule.__allocating_init(networkAvailabilityProvider:coreTelephonyServiceProvider:fallbackReason:processInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OfflineServerFallbackRule(0);
  v16 = swift_allocObject();
  (*(v13 + 16))(v15, a4, a6);
  return specialized OfflineServerFallbackRule.init(networkAvailabilityProvider:coreTelephonyServiceProvider:fallbackReason:processInfo:)(a1, a2, a3, v15, v16, a6, a7);
}

unint64_t lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason()
{
  result = lazy protocol witness table cache variable for type ServerFallbackReason and conformance ServerFallbackReason;
  if (!lazy protocol witness table cache variable for type ServerFallbackReason and conformance ServerFallbackReason)
  {
    type metadata accessor for ServerFallbackReason();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ServerFallbackReason and conformance ServerFallbackReason);
  }

  return result;
}

uint64_t type metadata accessor for OfflineServerFallbackRule(uint64_t a1)
{
  result = type metadata singleton initialization cache for OfflineServerFallbackRule;
  if (!type metadata singleton initialization cache for OfflineServerFallbackRule)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for OfflineServerFallbackRule(uint64_t a1)
{
  type metadata accessor for ServerFallbackReason?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for ServerFallbackReason?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ServerFallbackReason?)
  {
    type metadata accessor for ServerFallbackReason();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ServerFallbackReason?);
    }
  }
}

uint64_t outlined init with take of ServerFallbackReason?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t NodeIterator.next()()
{
  v1 = *v0;
  if (*v0)
  {
    *v0 = swift_weakLoadStrong();
  }

  return v1;
}

void *OrderedForest.__allocating_init()()
{
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *OrderedForest.init()()
{
  result = v0;
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  return result;
}

Swift::Void __swiftcall OrderedForest.clear()()
{
  v0[2] = 0;

  v0[3] = 0;

  swift_beginAccess();
  v0[4] = 0;
}

uint64_t *OrderedForest.push(value:parentNode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Node(0, *(*v4 + 80), a3, a4);

  v9 = specialized Node.__allocating_init(value:parent:)(a1, a2, v7, v8);
  if (a2)
  {
    swift_beginAccess();
    type metadata accessor for Array();

    Array.append(_:)();
    swift_endAccess();
  }

  OrderedForest._push(_:)(v9);
  return v9;
}

uint64_t *OrderedForest.replan(node:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Node(0, *(*v4 + 80), a3, a4);
  v6 = *(*a1 + 128);
  v7 = *(*a1 + 88);
  v8 = v6();
  v11 = specialized Node.__allocating_init(value:parent:)(a1 + v7, v8, v9, v10);
  v12 = specialized OrderedForest._recursiveRemove(_:)(a1);
  v13 = (*(*a1 + 152))(v12);
  v14 = *(*v11 + 104);
  swift_beginAccess();
  *(v11 + v14) = v13;

  v15 = static Array._allocateUninitialized(_:)();
  v16 = *(*a1 + 104);
  swift_beginAccess();
  *(a1 + v16) = v15;

  v17 = OrderedForest._push(_:)(a1);
  v18 = (v6)(v17);
  if (v18)
  {
    v19 = v18;
    v20 = *(*v18 + 152);
    v20();
    type metadata accessor for Array();
    swift_getWitnessTable();
    v21 = Collection.isEmpty.getter();

    if ((v21 & 1) == 0)
    {
      (v20)(v22);
      swift_getWitnessTable();
      v23 = _ArrayProtocol.filter(_:)();
      v24 = *(*v19 + 104);
      swift_beginAccess();
      *(v19 + v24) = v23;

      Array.append(_:)();
      swift_endAccess();
    }
  }

  return v11;
}

uint64_t OrderedForest.remove(node:)(uint64_t *a1)
{
  specialized OrderedForest._recursiveRemove(_:)(a1);
  specialized OrderedForest._detachFromParent(_:)(a1);
}

uint64_t OrderedForest.deinit()
{

  return v0;
}

uint64_t OrderedForest.raise(node:)(uint64_t a1)
{
  v3 = *v1;
  v4 = OrderedForest._raise(_:)(a1);
  v5 = (*(*a1 + 128))(v4);
  if (v5)
  {
    v6 = v5;
    v7 = *(*v5 + 152);
    v7();
    type metadata accessor for Node(255, *(v3 + 80), v8, v9);
    type metadata accessor for Array();
    swift_getWitnessTable();
    v10 = Collection.isEmpty.getter();

    if ((v10 & 1) == 0)
    {
      (v7)(v11);
      swift_getWitnessTable();
      v12 = _ArrayProtocol.filter(_:)();
      v13 = *(*v6 + 104);
      swift_beginAccess();
      *(v6 + v13) = v12;

      Array.append(_:)();
      swift_endAccess();
    }
  }
}

uint64_t OrderedForest.removeTree(node:)(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(*a1 + 128);
  swift_retain_n();
  v5 = v4();

  if (v5)
  {
    do
    {

      v3 = v5;
      v6 = *(*v5 + 128);

      v8 = v6(v7);

      v5 = v8;
    }

    while (v8);
  }

  v9 = (*(*v2 + 240))(v3);

  return v9;
}

uint64_t OrderedForest.removeBranch(node:)(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *v1;
  v5 = *(*a1 + 128);
  swift_retain_n();
  v6 = v5();

  if (v6)
  {
    while (1)
    {
      v8 = (*(*v6 + 152))(v7);
      v11 = type metadata accessor for Node(0, *(v4 + 80), v9, v10);
      v12 = MEMORY[0x1E12A1750](v8, v11);

      if (v12 > 1)
      {
        break;
      }

      v13 = v6;

      v14 = *(*v6 + 128);

      v16 = v14(v15);

      v6 = v16;
      v3 = v13;
      if (!v16)
      {
        goto LABEL_7;
      }
    }
  }

  v13 = v3;
LABEL_7:
  v17 = (*(*v2 + 240))(v13);

  return v17;
}

uint64_t OrderedForest._push(_:)(uint64_t a1)
{
  if (v1[2] && v1[3])
  {
    swift_weakAssign();
    v3 = v1[3];
    if (v3)
    {
      *(v3 + *(*v3 + 120)) = a1;
    }

    v1[3] = a1;
  }

  else
  {
    v1[3] = a1;
    swift_retain_n();

    v1[2] = a1;
  }

  result = swift_beginAccess();
  v5 = v1[4];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v1[4] = v7;
  }

  return result;
}

uint64_t OrderedForest._raise(_:)(uint64_t a1)
{
  v3 = *v1;
  OrderedForest._remove(_:)(a1);
  v4 = OrderedForest._push(_:)(a1);
  v5 = (*(*a1 + 152))(v4);
  v8 = type metadata accessor for Node(0, *(v3 + 80), v6, v7);
  if (MEMORY[0x1E12A1770](v5, v8))
  {
    v9 = 4;
    do
    {
      v10 = v9 - 4;
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v12 = *(v5 + 8 * v9);

        v13 = v9 - 3;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v12 = _ArrayBuffer._getElementSlowPath(_:)();
        v13 = v9 - 3;
        if (__OFADD__(v10, 1))
        {
LABEL_9:
          __break(1u);
          break;
        }
      }

      OrderedForest._raise(_:)(v12);

      ++v9;
    }

    while (v13 != MEMORY[0x1E12A1770](v5, v8));
  }
}

uint64_t OrderedForest._remove(_:)(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  if (v4)
  {
    v5 = v4 == a1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    if (v4 == v3)
    {
      v1[2] = 0;

      v1[3] = 0;
    }

    else
    {
      v1[2] = *(a1 + *(*a1 + 120));
    }

    goto LABEL_20;
  }

  if (v3)
  {
    v6 = v3 == a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      *(Strong + *(*Strong + 120)) = 0;
    }

    else
    {
    }

    v9 = swift_weakLoadStrong();

    v1[3] = v9;
    goto LABEL_20;
  }

  v7 = swift_weakLoadStrong();
  if (v7)
  {
    *(v7 + *(*v7 + 120)) = *(a1 + *(*a1 + 120));
  }

  if (*(a1 + *(*a1 + 120)))
  {
    swift_weakLoadStrong();
    swift_weakAssign();
LABEL_20:
  }

  swift_weakAssign();
  *(a1 + *(*a1 + 120)) = 0;

  result = swift_beginAccess();
  v11 = v1[4];
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v1[4] = v13;
  }

  return result;
}

uint64_t OrderedForest.debugDescription(printer:)(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  if (!*(v2 + 16))
  {
    return 0x54207974706D453CLL;
  }

  v7[0] = 0;
  v7[1] = 0xE000000000000000;

  OrderedForest.debugDescription(for:printer:level:result:)(v5, a1, a2, 0, v7);

  return v7[0];
}

uint64_t OrderedForest.debugDescription(for:printer:level:result:)(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 0)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = *v5;
  if (a4)
  {
    v11 = a4;
    do
    {
      MEMORY[0x1E12A1580](8224, 0xE200000000000000);
      --v11;
    }

    while (v11);
  }

  v12 = a2(v9 + *(*v9 + 88));
  MEMORY[0x1E12A1580](v12);

  v13 = MEMORY[0x1E12A1580](10, 0xE100000000000000);
  v14 = (*(*v9 + 152))(v13);
  v17 = type metadata accessor for Node(0, *(v10 + 80), v15, v16);
  result = MEMORY[0x1E12A1770](v14, v17);
  if (result)
  {
    v18 = __OFADD__(a4, 1);
    v19 = a4 + 1;
    if (!v18)
    {
      v20 = 4;
      while (1)
      {
        v21 = v20 - 4;
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          v23 = *(v14 + 8 * v20);

          v24 = v20 - 3;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_14;
          }
        }

        else
        {
          v23 = _ArrayBuffer._getElementSlowPath(_:)();
          v24 = v20 - 3;
          if (__OFADD__(v21, 1))
          {
LABEL_14:
            __break(1u);
            goto LABEL_15;
          }
        }

        OrderedForest.debugDescription(for:printer:level:result:)(v23, a2, a3, v19, a5);

        ++v20;
        if (v24 == MEMORY[0x1E12A1770](v14, v17))
        {
          goto LABEL_15;
        }
      }
    }

    goto LABEL_19;
  }

LABEL_15:
}

uint64_t key path setter for Node.children : <A>Node<A>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(**a2 + 104);
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t *Node.__allocating_init(value:parent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = specialized Node.__allocating_init(value:parent:)(a1, a2, a3, a4);
  (*(*(*(v4 + 80) - 8) + 8))(a1);
  return v6;
}

uint64_t *Node.init(value:parent:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = specialized Node.init(value:parent:)(a1, a2);
  (*(*(*(v4 + 80) - 8) + 8))(a1);
  return v5;
}

uint64_t protocol witness for IteratorProtocol.next() in conformance NodeIterator<A>@<X0>(uint64_t *a1@<X8>)
{
  result = NodeIterator.next()();
  *a1 = result;
  return result;
}

uint64_t closure #1 in default argument 0 of OrderedForest.debugDescription(printer:)(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  return String.init<A>(describing:)();
}

uint64_t OrderedForest.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Sequence.makeIterator() in conformance OrderedForest<A>@<X0>(uint64_t *a1@<X8>)
{
  v3 = (*(**v1 + 192))();

  *a1 = v3;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance OrderedForest<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OrderedForest(0, *(a1 + 80), a3, a4);
  v4 = specialized Sequence._copyToContiguousArray()();

  return v4;
}

void protocol witness for Sequence._copyContents(initializing:) in conformance OrderedForest<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OrderedForest(0, *(a4 + 80), a3, a4);

  JUMPOUT(0x1E12A1620);
}

uint64_t specialized OrderedForest._recursiveRemove(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = (*(*a1 + 152))();
  v7 = type metadata accessor for Node(0, *(v3 + 80), v5, v6);
  if (MEMORY[0x1E12A1770](v4, v7))
  {
    v8 = 4;
    do
    {
      v9 = v8 - 4;
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v11 = *(v4 + 8 * v8);

        v12 = v8 - 3;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v11 = _ArrayBuffer._getElementSlowPath(_:)();
        v12 = v8 - 3;
        if (__OFADD__(v9, 1))
        {
LABEL_9:
          __break(1u);
          break;
        }
      }

      specialized OrderedForest._recursiveRemove(_:)(v11);

      ++v8;
    }

    while (v12 != MEMORY[0x1E12A1770](v4, v7));
  }

  OrderedForest._remove(_:)(a1);
  return a1;
}

uint64_t specialized OrderedForest._detachFromParent(_:)(uint64_t *a1)
{
  v1 = *a1;
  result = (*(*a1 + 128))();
  if (result)
  {
    v3 = result;
    v4 = *(*result + 152);
    v4();
    type metadata accessor for Node(255, *(v1 + 80), v5, v6);
    type metadata accessor for Array();
    swift_getWitnessTable();
    v7 = Collection.isEmpty.getter();

    if (v7)
    {
    }

    else
    {
      (v4)(v8);
      swift_getWitnessTable();
      v9 = _ArrayProtocol.filter(_:)();
      v10 = *(*v3 + 104);
      swift_beginAccess();
      *(v3 + v10) = v9;

      swift_beginAccess();
      return swift_weakAssign();
    }
  }

  return result;
}

uint64_t *specialized Node.init(value:parent:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_weakInit();
  swift_weakInit();
  *(v2 + *(*v2 + 120)) = 0;
  v5 = *(v4 + 80);
  (*(*(v5 - 8) + 16))(v2 + *(*v2 + 88), a1, v5);
  swift_beginAccess();
  swift_weakAssign();
  type metadata accessor for Node(0, v5, v6, v7);
  v8 = static Array._allocateUninitialized(_:)();

  *(v2 + *(*v2 + 104)) = v8;
  swift_weakAssign();
  *(v2 + *(*v2 + 120)) = 0;

  return v2;
}

uint64_t *specialized Node.__allocating_init(value:parent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Node(0, *(v4 + 80), a3, a4);
  swift_allocObject();
  return specialized Node.init(value:parent:)(a1, a2);
}

uint64_t type metadata completion function for Node(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *assignWithCopy for NodeIterator(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithTake for NodeIterator(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for NodeIterator(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for NodeIterator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t PeerInfoProvider.__allocating_init(peerInfo:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void *PeerInfoProvider.peerInfo.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

Swift::String_optional __swiftcall PeerInfoProvider.getRapportEffectiveIdentifier()()
{
  v0 = EndpointInfoProvider.getIdentifier()(&selRef_rapportEffectiveIdentifier);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall PeerInfoProvider.getMediaSystemIdentifier()()
{
  v0 = EndpointInfoProvider.getIdentifier()(&selRef_mediaSystemIdentifier);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::Bool __swiftcall PeerInfoProvider.isOwnedByCurrentUser()()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return [v1 isDeviceOwnedByCurrentUser];
  }

  else
  {
    return 1;
  }
}

Swift::String_optional __swiftcall PeerInfoProvider.getMediaRouteIdentifier()()
{
  v0 = EndpointInfoProvider.getIdentifier()(&selRef_mediaRouteIdentifier);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t PerTCUFlowOperationQueue.submit(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_beginAccess();
  v6 = *(v2 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 112) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
    *(v2 + 112) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@error @owned Error);
  v10[5] = v5;
  *(v2 + 112) = v6;
  result = swift_endAccess();
  if ((*(v2 + 144) - 1) >= 2)
  {
    PerTCUFlowOperationQueue.runTasksNow()();
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> (@error @owned Error)(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v5();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@error @owned Error)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return thunk for @escaping @callee_guaranteed @Sendable @async () -> (@error @owned Error)(a1, v4);
}

uint64_t PerTCUFlowOperationQueue.wait()()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PerTCUFlowOperationQueue.wait(), v0, 0);
}

{
  v1 = v0[2];
  v2 = *(v1 + 120);
  v0[4] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[5] = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v3 = v0;
    v5 = PerTCUFlowOperationQueue.wait();
LABEL_8:
    v3[1] = v5;
    v15 = MEMORY[0x1E69E7288];
    v16 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA10](v4, v2, v16, v4, v15);
  }

  if (*(v1 + 144) != 2)
  {
    v10 = v0[3];
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v13 = lazy protocol witness table accessor for type PerTCUFlowOperationQueue and conformance PerTCUFlowOperationQueue(&lazy protocol witness table cache variable for type PerTCUFlowOperationQueue and conformance PerTCUFlowOperationQueue, v12, type metadata accessor for PerTCUFlowOperationQueue, &protocol conformance descriptor for PerTCUFlowOperationQueue);
    v14 = swift_allocObject();
    v14[2] = v1;
    v14[3] = v13;
    v14[4] = v1;
    swift_retain_n();
    v2 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in PerTCUFlowOperationQueue.wait(), v14);
    v0[7] = v2;
    *(v1 + 120) = v2;

    v3 = swift_task_alloc();
    v0[8] = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v3 = v0;
    v5 = PerTCUFlowOperationQueue.wait();
    goto LABEL_8;
  }

  v6 = type metadata accessor for UnsafeFlowOperationQueueError();
  lazy protocol witness table accessor for type PerTCUFlowOperationQueue and conformance PerTCUFlowOperationQueue(&lazy protocol witness table cache variable for type UnsafeFlowOperationQueueError and conformance UnsafeFlowOperationQueueError, 255, MEMORY[0x1E69CF9C8], MEMORY[0x1E69CF9D0]);
  swift_allocError();
  (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69CF9C0], v6);
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = PerTCUFlowOperationQueue.wait();
  }

  else
  {
    v4 = PerTCUFlowOperationQueue.wait();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = PerTCUFlowOperationQueue.wait();
  }

  else
  {
    v4 = PerTCUFlowOperationQueue.wait();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in PerTCUFlowOperationQueue.wait()(uint64_t a1)
{
  v22 = v1;
  v2 = *(v1 + 56);
  v3 = *(v2 + 128);
  *(v1 + 64) = v3;
  v4 = *(v2 + 136);
  *(v1 + 80) = v4;
  if (v4 != 255)
  {
    v5 = v3;
    if (v4)
    {
LABEL_3:
      *(v1 + 40) = v5;
      outlined copy of Result<(), Error>?(v3, v4);
      outlined copy of Result<(), Error>?(v3, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      swift_willThrowTypedImpl();
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.executor);
      v7 = v5;
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      outlined consume of Result<(), Error>(v5, 1);
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v21 = v11;
        *v10 = 136315138;
        swift_getErrorValue();
        v12 = Error.localizedDescription.getter();
        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v21);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_1DC659000, v8, v9, "UnsafeFlowOperationQueue: Operation threw an error: %s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v11);
        MEMORY[0x1E12A2F50](v11, -1, -1);
        MEMORY[0x1E12A2F50](v10, -1, -1);
      }

      v15 = *(v1 + 56);
      swift_willThrow();
      outlined consume of Result<(), Error>(v5, 1);
      *(v15 + 120) = 0;

      v16 = *(v1 + 8);
      goto LABEL_13;
    }

LABEL_12:
    *(v2 + 120) = 0;
    outlined copy of Result<(), Error>?(v3, v4);
    outlined copy of Result<(), Error>?(v3, v4);

    v16 = *(v1 + 8);
LABEL_13:

    return v16();
  }

  if (static Task<>.isCancelled.getter())
  {
    v17 = *(v1 + 56);
    v18 = *(v17 + 136);
    if (v18 != 255)
    {
      v5 = *(v17 + 128);
      outlined copy of Result<(), Error>?(v5, *(v17 + 136));
      outlined copy of Result<(), Error>(v5, v18 & 1);
      LOBYTE(v4) = *(v1 + 80);
      v3 = *(v1 + 64);
      if (v18)
      {
        goto LABEL_3;
      }

      v2 = *(v1 + 56);
      goto LABEL_12;
    }

    return specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000064, 0x80000001DCA85170, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/PerTCUFlowOperationQueue.swift", 99, 2, 57);
  }

  else
  {
    v20 = swift_task_alloc();
    *(v1 + 72) = v20;
    *v20 = v1;
    v20[1] = closure #1 in PerTCUFlowOperationQueue.wait();

    return MEMORY[0x1EEE6DA60](0x7FFFFFFFFFFFFFFFLL);
  }
}

uint64_t closure #1 in PerTCUFlowOperationQueue.wait()()
{
  v2 = *v1;

  v3 = *(v2 + 56);
  if (v0)
  {

    v4 = closure #1 in PerTCUFlowOperationQueue.wait();
  }

  else
  {
    v4 = closure #1 in PerTCUFlowOperationQueue.wait();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v19 = v0;
  v1 = *(v0 + 56);
  v2 = *(v1 + 136);
  if (v2 == 255)
  {

    return specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000064, 0x80000001DCA85170, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/PerTCUFlowOperationQueue.swift", 99, 2, 57);
  }

  else
  {
    v3 = *(v1 + 128);
    outlined copy of Result<(), Error>?(v3, *(v1 + 136));
    outlined copy of Result<(), Error>(v3, v2 & 1);
    v4 = *(v0 + 80);
    v5 = *(v0 + 64);
    if (v2)
    {
      *(v0 + 40) = v3;
      outlined copy of Result<(), Error>?(v5, v4);
      outlined copy of Result<(), Error>?(v5, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      swift_willThrowTypedImpl();
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.executor);
      v7 = v3;
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      outlined consume of Result<(), Error>(v3, 1);
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v18 = v11;
        *v10 = 136315138;
        swift_getErrorValue();
        v12 = Error.localizedDescription.getter();
        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v18);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_1DC659000, v8, v9, "UnsafeFlowOperationQueue: Operation threw an error: %s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v11);
        MEMORY[0x1E12A2F50](v11, -1, -1);
        MEMORY[0x1E12A2F50](v10, -1, -1);
      }

      v15 = *(v0 + 56);
      swift_willThrow();
      outlined consume of Result<(), Error>(v3, 1);
      *(v15 + 120) = 0;

      v16 = *(v0 + 8);
    }

    else
    {
      *(*(v0 + 56) + 120) = 0;
      outlined copy of Result<(), Error>?(v5, v4);
      outlined copy of Result<(), Error>?(v5, v4);

      v16 = *(v0 + 8);
    }

    return v16();
  }
}

unint64_t PerTCUFlowOperationQueue.finalize()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = *(v0 + 144);
  if (v5 == 1)
  {
    v9 = *(v0 + 128);
    *(v0 + 128) = 0;
    v10 = *(v0 + 136);
    *(v0 + 136) = -1;
    outlined consume of Result<(), Error>?(v9, v10);
    v1 = *(v0 + 144);
    if (v1 >= 3)
    {
    }

    else
    {
      v11 = type metadata accessor for TaskPriority();
      (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
      v13 = lazy protocol witness table accessor for type PerTCUFlowOperationQueue and conformance PerTCUFlowOperationQueue(&lazy protocol witness table cache variable for type PerTCUFlowOperationQueue and conformance PerTCUFlowOperationQueue, v12, type metadata accessor for PerTCUFlowOperationQueue, &protocol conformance descriptor for PerTCUFlowOperationQueue);
      v14 = swift_allocObject();
      v14[2] = v0;
      v14[3] = v13;
      v14[4] = v0;
      swift_retain_n();
      v1 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in PerTCUFlowOperationQueue.runTasksNow(), v14);
      v15 = *(v0 + 144);
      *(v0 + 144) = v1;

      outlined consume of PerTCUFlowOperationQueue.State(v15);
    }
  }

  else
  {
    if (v5 == 2)
    {
      v6 = 1;
    }

    else
    {
      v6 = 3;
    }

    lazy protocol witness table accessor for type PerTCUFlowOperationQueue.OperationError and conformance PerTCUFlowOperationQueue.OperationError();
    swift_allocError();
    *v7 = v6;
    swift_willThrow();
  }

  return v1;
}

unint64_t PerTCUFlowOperationQueue.runTasksNow()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - v2;
  v4 = *(v0 + 128);
  *(v0 + 128) = 0;
  v5 = *(v0 + 136);
  *(v0 + 136) = -1;
  outlined consume of Result<(), Error>?(v4, v5);
  v6 = *(v0 + 144);
  if (v6 >= 3)
  {
  }

  else
  {
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    v9 = lazy protocol witness table accessor for type PerTCUFlowOperationQueue and conformance PerTCUFlowOperationQueue(&lazy protocol witness table cache variable for type PerTCUFlowOperationQueue and conformance PerTCUFlowOperationQueue, v8, type metadata accessor for PerTCUFlowOperationQueue, &protocol conformance descriptor for PerTCUFlowOperationQueue);
    v10 = swift_allocObject();
    v10[2] = v0;
    v10[3] = v9;
    v10[4] = v0;
    swift_retain_n();
    v6 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &closure #1 in PerTCUFlowOperationQueue.runTasksNow()partial apply, v10);
    v11 = *(v0 + 144);
    *(v0 + 144) = v6;

    outlined consume of PerTCUFlowOperationQueue.State(v11);
  }

  return v6;
}

uint64_t closure #1 in PerTCUFlowOperationQueue.runTasksNow()()
{
  v1 = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = v2[2];
  v4 = v0[8];
  if (v3)
  {
    swift_beginAccess();
    v5 = v2[4];
    v0[9] = v2[5];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 112) = v2;
    if (!isUniquelyReferenced_nonNull_native || (v3 - 1) > v2[3] >> 1)
    {
      v7 = v0[8];
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v3, 1, v2);
      *(v7 + 112) = v2;
    }

    v8 = v0[8];

    v9 = v2[2];
    memmove(v2 + 4, v2 + 6, 16 * v9 - 16);
    v2[2] = v9 - 1;
    *(v8 + 112) = v2;
    swift_endAccess();
    v18 = (v5 + *v5);
    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v10[1] = closure #1 in PerTCUFlowOperationQueue.runTasksNow();

    return v18();
  }

  else
  {
    v12 = *(v4 + 128);
    *(v4 + 128) = 0;
    v13 = *(v4 + 136);
    *(v4 + 136) = 0;
    outlined copy of Result<(), Error>(0, 0);
    outlined consume of Result<(), Error>?(v12, v13);
    v14 = *(v4 + 144);
    *(v4 + 144) = 0;
    outlined consume of PerTCUFlowOperationQueue.State(v14);
    v15 = *(v4 + 120);
    if (v15)
    {

      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      MEMORY[0x1E12A1950](v15, MEMORY[0x1E69E7CA8] + 8, v16, MEMORY[0x1E69E7288]);
      outlined consume of Result<(), Error>(0, 0);
    }

    else
    {
      outlined consume of Result<(), Error>(0, 0);
    }

    v17 = v0[1];

    return v17();
  }
}

{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);

  if (v0)
  {
    v4 = closure #1 in PerTCUFlowOperationQueue.runTasksNow();
  }

  else
  {
    v4 = closure #1 in PerTCUFlowOperationQueue.runTasksNow();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = v0[8];
  v3 = (v1 + 112);
  v2 = *(v1 + 112);
  v4 = v2[2];
  if (v4)
  {
    swift_beginAccess();
    v5 = v2[4];
    v0[9] = v2[5];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v2;
    if (!isUniquelyReferenced_nonNull_native || (v4 - 1) > v2[3] >> 1)
    {
      v7 = v0[8];
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v4, 1, v2);
      *(v7 + 112) = v2;
    }

    v8 = v0[8];

    v9 = v2[2];
    memmove(v2 + 4, v2 + 6, 16 * v9 - 16);
    v2[2] = v9 - 1;
    *(v8 + 112) = v2;
    swift_endAccess();
    v18 = (v5 + *v5);
    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v10[1] = closure #1 in PerTCUFlowOperationQueue.runTasksNow();

    return v18();
  }

  else
  {
    v12 = *(v1 + 128);
    *(v1 + 128) = 0;
    v13 = *(v1 + 136);
    *(v1 + 136) = 0;
    outlined copy of Result<(), Error>(0, 0);
    outlined consume of Result<(), Error>?(v12, v13);
    v14 = *(v1 + 144);
    *(v1 + 144) = 0;
    outlined consume of PerTCUFlowOperationQueue.State(v14);
    v15 = *(v1 + 120);
    if (v15)
    {

      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      MEMORY[0x1E12A1950](v15, MEMORY[0x1E69E7CA8] + 8, v16, MEMORY[0x1E69E7288]);
      outlined consume of Result<(), Error>(0, 0);
    }

    else
    {
      outlined consume of Result<(), Error>(0, 0);
    }

    v17 = v0[1];

    return v17();
  }
}

{
  v1 = v0[11];
  v2 = v0[8];
  v3 = *(v2 + 128);
  *(v2 + 128) = v1;
  v4 = *(v2 + 136);
  *(v2 + 136) = 1;
  outlined copy of Result<(), Error>(v1, 1);
  outlined consume of Result<(), Error>?(v3, v4);
  v5 = *(v2 + 144);
  *(v2 + 144) = 0;
  outlined consume of PerTCUFlowOperationQueue.State(v5);
  v6 = *(v2 + 120);
  if (v6)
  {

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x1E12A1950](v6, MEMORY[0x1E69E7CA8] + 8, v7, MEMORY[0x1E69E7288]);
    outlined consume of Result<(), Error>(v1, 1);
  }

  else
  {
    outlined consume of Result<(), Error>(v1, 1);
  }

  v8 = v0[1];

  return v8();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PerTCUFlowOperationQueue.abandon()()
{
  v1 = *(v0 + 144);
  if (v1 == 1)
  {
    v4 = type metadata accessor for UnsafeFlowOperationQueueError();
    lazy protocol witness table accessor for type PerTCUFlowOperationQueue and conformance PerTCUFlowOperationQueue(&lazy protocol witness table cache variable for type UnsafeFlowOperationQueueError and conformance UnsafeFlowOperationQueueError, 255, MEMORY[0x1E69CF9C8], MEMORY[0x1E69CF9D0]);
    v5 = swift_allocError();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x1E69CF9C0], v4);
    v7 = *(v0 + 128);
    *(v0 + 128) = v5;
    v8 = *(v0 + 136);
    *(v0 + 136) = 1;
    outlined consume of Result<(), Error>?(v7, v8);
    v9 = *(v0 + 144);
    *(v0 + 144) = 2;
    outlined consume of PerTCUFlowOperationQueue.State(v9);
    v10 = *(v0 + 120);
    if (v10)
    {

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      MEMORY[0x1E12A1950](v10, MEMORY[0x1E69E7CA8] + 8, v11, MEMORY[0x1E69E7288]);
    }
  }

  else
  {
    if (v1 == 2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    lazy protocol witness table accessor for type PerTCUFlowOperationQueue.OperationError and conformance PerTCUFlowOperationQueue.OperationError();
    swift_allocError();
    *v3 = v2;
    swift_willThrow();
  }
}

unint64_t PerTCUFlowOperationQueue.OperationError.debugDescription.getter(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    return 0xD000000000000031;
  }

  else
  {
    return 0xD000000000000022;
  }
}

Swift::Int PerTCUFlowOperationQueue.OperationError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](a1);
  return Hasher._finalize()();
}

uint64_t PerTCUFlowOperationQueue.deinit()
{

  outlined consume of Result<(), Error>?(*(v0 + 128), *(v0 + 136));
  outlined consume of PerTCUFlowOperationQueue.State(*(v0 + 144));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t PerTCUFlowOperationQueue.__deallocating_deinit()
{

  outlined consume of Result<(), Error>?(*(v0 + 128), *(v0 + 136));
  outlined consume of PerTCUFlowOperationQueue.State(*(v0 + 144));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t PerTCUFlowOperationQueue.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 112) = v1;
  *(v0 + 136) = -1;
  *(v0 + 144) = 1;
  return v0;
}

uint64_t PerTCUFlowOperationQueue.init()()
{
  swift_defaultActor_initialize();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 112) = v1;
  *(v0 + 136) = -1;
  *(v0 + 144) = 1;
  return v0;
}

uint64_t protocol witness for UnsafeFlowOperationQueue.wait() in conformance PerTCUFlowOperationQueue()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return PerTCUFlowOperationQueue.wait()();
}

uint64_t partial apply for closure #1 in PerTCUFlowOperationQueue.wait()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in PerTCUFlowOperationQueue.wait()(a1, v4, v5, v6);
}

uint64_t lazy protocol witness table accessor for type PerTCUFlowOperationQueue and conformance PerTCUFlowOperationQueue(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PerTCUFlowOperationQueue.OperationError and conformance PerTCUFlowOperationQueue.OperationError()
{
  result = lazy protocol witness table cache variable for type PerTCUFlowOperationQueue.OperationError and conformance PerTCUFlowOperationQueue.OperationError;
  if (!lazy protocol witness table cache variable for type PerTCUFlowOperationQueue.OperationError and conformance PerTCUFlowOperationQueue.OperationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PerTCUFlowOperationQueue.OperationError and conformance PerTCUFlowOperationQueue.OperationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PerTCUFlowOperationQueue.OperationError and conformance PerTCUFlowOperationQueue.OperationError;
  if (!lazy protocol witness table cache variable for type PerTCUFlowOperationQueue.OperationError and conformance PerTCUFlowOperationQueue.OperationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PerTCUFlowOperationQueue.OperationError and conformance PerTCUFlowOperationQueue.OperationError);
  }

  return result;
}

void outlined consume of Result<(), Error>?(void *a1, char a2)
{
  if (a2 != -1)
  {
    outlined consume of Result<(), Error>(a1, a2 & 1);
  }
}

uint64_t partial apply for closure #1 in PerTCUFlowOperationQueue.runTasksNow()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in PerTCUFlowOperationQueue.runTasksNow()(a1, v4, v5, v6);
}

uint64_t outlined consume of PerTCUFlowOperationQueue.State(uint64_t result)
{
  if ((result - 1) >= 2)
  {
  }

  return result;
}

uint64_t dispatch thunk of PerTCUFlowOperationQueue.wait()()
{
  v4 = (*(*v0 + 224) + **(*v0 + 224));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v4();
}

unint64_t destroy for PerTCUFlowOperationQueue.State(unint64_t *a1)
{
  result = *a1;
  v2 = -1;
  if (result < 0xFFFFFFFF)
  {
    v2 = result;
  }

  if (v2 - 1 < 0)
  {
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for PerTCUFlowOperationQueue.State(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  LODWORD(v4) = -1;
  if (*a2 < 0xFFFFFFFF)
  {
    v4 = *a2;
  }

  if (v4 - 1 < 0)
  {
    v5 = a1;

    a1 = v5;
  }

  *a1 = v3;
  return a1;
}

uint64_t *assignWithCopy for PerTCUFlowOperationQueue.State(uint64_t *result, unint64_t *a2)
{
  LODWORD(v2) = -1;
  if (*result >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  else
  {
    v3 = *result;
  }

  v4 = v3 - 1;
  v5 = *a2;
  if (*a2 < 0xFFFFFFFF)
  {
    v2 = *a2;
  }

  v6 = v2 - 1;
  if (v4 < 0)
  {
    if (v6 < 0)
    {
      *result = v5;
      v10 = result;

      return v10;
    }

    else
    {
      v7 = result;

      result = v7;
      *v7 = *a2;
    }
  }

  else
  {
    *result = v5;
    if (v6 < 0)
    {
      v9 = result;

      return v9;
    }
  }

  return result;
}

unint64_t *assignWithTake for PerTCUFlowOperationQueue.State(unint64_t *result, unint64_t *a2)
{
  LODWORD(v2) = -1;
  if (*result < 0xFFFFFFFF)
  {
    v2 = *result;
  }

  v3 = *a2;
  if (v2 - 1 < 0)
  {
    LODWORD(v4) = -1;
    if (v3 < 0xFFFFFFFF)
    {
      v4 = *a2;
    }

    if (v4 - 1 < 0)
    {
      *result = v3;
      v6 = result;

      return v6;
    }

    else
    {
      v5 = result;

      result = v5;
      *v5 = v3;
    }
  }

  else
  {
    *result = v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PerTCUFlowOperationQueue.State(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PerTCUFlowOperationQueue.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTag for PerTCUFlowOperationQueue.State(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void *destructiveInjectEnumTag for PerTCUFlowOperationQueue.State(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

id outlined copy of Result<(), Error>?(id result, char a2)
{
  if (a2 != -1)
  {
    return outlined copy of Result<(), Error>(result, a2 & 1);
  }

  return result;
}

uint64_t closure #1 in PerTCUFlowOperationQueue.runTasksNow()partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in PerTCUFlowOperationQueue.runTasksNow()(a1, v4, v5, v6);
}

SiriKitRuntime::PhoneAffinityScorer __swiftcall PhoneAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CD20;
  v1 = 0xD00000000000002ALL;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

void *key path getter for CodeGenListEntry.entry : CodeGenListEntry<UsoEntity_common_UserEntity>@<X0>(void *a1@<X8>)
{
  result = dispatch thunk of CodeGenListEntry.entry.getter();
  *a1 = v3;
  return result;
}

uint64_t UsoTask.parseResult.getter()
{
  v1 = type metadata accessor for UsoIdentifier.NluComponent();
  v113 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v114 = v97 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
  MEMORY[0x1EEE9AC00](v117);
  v116 = v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v97 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v97 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v97 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v97 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v97 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v97 - v22;
  v120 = type metadata accessor for IdentifierAppBundle();
  v112 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v119 = v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v118 = v97 - v26;
  v27 = type metadata accessor for UsoIdentifier();
  v121 = *(v27 - 8);
  v122 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v97 - v31;
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v129[3])
  {
    goto LABEL_36;
  }

  v111 = v1;
  outlined init with copy of ReferenceResolutionClientProtocol?(v129, &v128, &_sypSgMd, &_sypSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology33Uso_VerbTemplate_ReferenceTriggerCyAA0C21Entity_common_SettingCGMd, &_s12SiriOntology33Uso_VerbTemplate_ReferenceTriggerCyAA0C21Entity_common_SettingCGMR);
  if (swift_dynamicCast())
  {
    v33 = UsoTask.parse(referenceTriggerTask:)(v125);
LABEL_8:
    v34 = v33;

LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(&v128);
    v35 = 0;
LABEL_41:
    outlined destroy of ReferenceResolutionClientProtocol?(v129, &_sypSgMd, &_sypSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.executor);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v129[0] = v50;
      *v49 = 136315138;
      v51 = v34;
      v52 = PhoneSettingParseResult.description.getter((v34 | (v35 << 8)));
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v129);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_1DC659000, v47, v48, "PhoneAffinityScorer UsoTask.parseResult = %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x1E12A2F50](v50, -1, -1);
      MEMORY[0x1E12A2F50](v49, -1, -1);
    }

    else
    {

      v51 = v34;
    }

    return v51 | (v35 << 8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology39Uso_VerbTemplate_ReferenceNumberTriggerCyAA0C21Entity_common_SettingCGMd, &_s12SiriOntology39Uso_VerbTemplate_ReferenceNumberTriggerCyAA0C21Entity_common_SettingCGMR);
  if (swift_dynamicCast())
  {
    v33 = UsoTask.parse(referenceNumberTriggerTask:)(v125);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology26Uso_VerbTemplate_ReferenceCyAA0C21Entity_common_SettingCGMd, &_s12SiriOntology26Uso_VerbTemplate_ReferenceCyAA0C21Entity_common_SettingCGMR);
  if (swift_dynamicCast())
  {
    v33 = UsoTask.parse(referenceTask:)(v125);
    goto LABEL_8;
  }

  type metadata accessor for UsoTask_noVerb_common_Setting();
  if (swift_dynamicCast())
  {
    dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
    v36 = UsoTask.parseEntity(setting:)(v123);

    dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
    if (v123)
    {
      v37 = dispatch thunk of UsoEntity_common_Setting.associatedSetting.getter();
    }

    else
    {
      v37 = 0;
    }

    v38 = UsoTask.parseEntity(setting:)(v37);

    v34 = v38 | v36;
    goto LABEL_9;
  }

  type metadata accessor for UsoTask_reply_uso_NoEntity();
  if (swift_dynamicCast())
  {

    dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
    if (v123 || (dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter(), v123))
    {
    }

    else
    {
      v41 = dispatch thunk of Uso_VerbTemplate_ReferenceTarget.userEntities.getter();
      v34 = 2;

      if (!v41)
      {
        goto LABEL_18;
      }
    }

    v34 = 0;
LABEL_18:
    __swift_destroy_boxed_opaque_existential_1Tm(&v128);
LABEL_40:
    v35 = 1;
    goto LABEL_41;
  }

  type metadata accessor for UsoTask_update_common_PhoneCall();
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v128);
    v35 = 1;
    v34 = 4;
    goto LABEL_41;
  }

  type metadata accessor for UsoTask_update_common_Communication();
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v128);
    v35 = 1;
    v34 = 3;
    goto LABEL_41;
  }

  type metadata accessor for UsoTask_open_common_App();
  if (!swift_dynamicCast())
  {
    type metadata accessor for UsoTask_close_common_App();
    if (swift_dynamicCast())
    {
      v110 = v0;
      v42 = v127;

      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

      if (!v125 || (v43 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)(), , !v43))
      {

        v43 = MEMORY[0x1E69E7CC0];
      }

      v75 = *(v43 + 16);

      v109 = v75;
      if (!v75)
      {
        v34 = 6;
LABEL_69:

        goto LABEL_18;
      }

      v97[1] = v42;
      v76 = 0;
      v108 = v121 + 16;
      v107 = *MEMORY[0x1E69D1AE0];
      v106 = (v112 + 13);
      ++v112;
      LODWORD(v102) = *MEMORY[0x1E69D1768];
      v101 = (v113 + 104);
      v100 = (v113 + 56);
      v98 = (v113 + 32);
      v99 = (v113 + 8);
      v104 = (v121 + 8);
      v103 = v43;
      v105 = (v113 + 48);
      while (1)
      {
        if (v76 >= *(v43 + 16))
        {
          goto LABEL_94;
        }

        v77 = v43 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
        v78 = *(v121 + 72);
        v113 = v76;
        (*(v121 + 16))(v29, v77 + v78 * v76, v122);
        v79 = v118;
        UsoIdentifier.appBundleSemantic.getter();
        v81 = v119;
        v80 = v120;
        (*v106)(v119, v107, v120);
        v82 = MEMORY[0x1E129CA00](v79, v81);
        v83 = *v112;
        (*v112)(v81, v80);
        v83(v79, v80);
        v84 = v111;
        v85 = v116;
        v86 = v105;
        if ((v82 & 1) == 0)
        {
          goto LABEL_89;
        }

        UsoIdentifier.sourceComponent.getter();
        (*v101)(v11, v102, v84);
        (*v100)(v11, 0, 1, v84);
        v87 = *(v117 + 48);
        outlined init with copy of ReferenceResolutionClientProtocol?(v14, v85, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        outlined init with copy of ReferenceResolutionClientProtocol?(v11, v85 + v87, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        v88 = *v86;
        if ((*v86)(v85, 1, v84) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
          if (v88(v85 + v87, 1, v84) != 1)
          {
            goto LABEL_80;
          }

          outlined destroy of ReferenceResolutionClientProtocol?(v85, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        }

        else
        {
          outlined init with copy of ReferenceResolutionClientProtocol?(v85, v115, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
          if (v88(v85 + v87, 1, v84) == 1)
          {
            outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
            outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
            (*v99)(v115, v84);
LABEL_80:
            outlined destroy of ReferenceResolutionClientProtocol?(v85, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
            goto LABEL_89;
          }

          v89 = v114;
          (*v98)(v114, v85 + v87, v84);
          lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent(&lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent, MEMORY[0x1E69D1778], MEMORY[0x1E69D1780]);
          v90 = dispatch thunk of static Equatable.== infix(_:_:)();
          v91 = *v99;
          (*v99)(v89, v84);
          outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
          v91(v115, v84);
          outlined destroy of ReferenceResolutionClientProtocol?(v85, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
          if ((v90 & 1) == 0)
          {
            goto LABEL_89;
          }
        }

        v92 = UsoIdentifier.namespace.getter();
        if (v93)
        {
          if (v92 == 0x656D614E707061 && v93 == 0xE700000000000000)
          {

LABEL_87:
            v125 = UsoIdentifier.value.getter();
            v126 = v95;
            v123 = 0x6172656D6163;
            v124 = 0xE600000000000000;
            lazy protocol witness table accessor for type String and conformance String();
            v96 = StringProtocol.contains<A>(_:)();

            result = (*v104)(v29, v122);
            if (v96)
            {
              v34 = 5;
              goto LABEL_69;
            }

            goto LABEL_90;
          }

          v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v94)
          {
            goto LABEL_87;
          }
        }

LABEL_89:
        result = (*v104)(v29, v122);
LABEL_90:
        v76 = (v113 + 1);
        v43 = v103;
        if (v109 == v113 + 1)
        {
          v34 = 6;
          goto LABEL_69;
        }
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v128);
LABEL_36:
    if (UsoTask.baseEntityAsString.getter() == 0x535F6E6F6D6D6F63 && v44 == 0xEE00676E69747465)
    {

      v34 = 1;
    }

    else
    {
      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v34 = v45 & 1;
    }

    goto LABEL_40;
  }

  v110 = v0;
  v39 = v127;

  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  v98 = v39;

  if (!v125 || (v40 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)(), , !v40))
  {

    v40 = MEMORY[0x1E69E7CC0];
  }

  v56 = *(v40 + 16);

  v109 = v56;
  if (!v56)
  {
LABEL_68:
    v34 = 6;
    goto LABEL_69;
  }

  v57 = 0;
  v108 = v121 + 16;
  v107 = *MEMORY[0x1E69D1AE0];
  v106 = (v112 + 13);
  ++v112;
  LODWORD(v103) = *MEMORY[0x1E69D1768];
  v102 = (v113 + 104);
  v101 = (v113 + 56);
  v105 = (v113 + 48);
  v99 = (v113 + 32);
  v100 = (v113 + 8);
  v113 = (v121 + 8);
  v104 = v40;
  while (v57 < *(v40 + 16))
  {
    v58 = v40 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
    v59 = *(v121 + 72);
    v115 = v57;
    (*(v121 + 16))(v32, v58 + v59 * v57, v122);
    v60 = v118;
    UsoIdentifier.appBundleSemantic.getter();
    v62 = v119;
    v61 = v120;
    (*v106)(v119, v107, v120);
    LODWORD(v116) = MEMORY[0x1E129CA00](v60, v62);
    v63 = *v112;
    (*v112)(v62, v61);
    v63(v60, v61);
    if ((v116 & 1) == 0)
    {
      goto LABEL_66;
    }

    UsoIdentifier.sourceComponent.getter();
    v64 = v111;
    (*v102)(v20, v103, v111);
    (*v101)(v20, 0, 1, v64);
    v65 = *(v117 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol?(v23, v6, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v20, &v6[v65], &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v66 = *v105;
    if ((*v105)(v6, 1, v64) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v20, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      if (v66(&v6[v65], 1, v64) != 1)
      {
        goto LABEL_57;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    }

    else
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v6, v17, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      if (v66(&v6[v65], 1, v64) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v20, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        (*v100)(v17, v64);
LABEL_57:
        outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
LABEL_66:
        result = (*v113)(v32, v122);
        goto LABEL_67;
      }

      v67 = &v6[v65];
      v68 = v114;
      (*v99)(v114, v67, v64);
      lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent(&lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent, MEMORY[0x1E69D1778], MEMORY[0x1E69D1780]);
      LODWORD(v116) = dispatch thunk of static Equatable.== infix(_:_:)();
      v69 = *v100;
      (*v100)(v68, v64);
      outlined destroy of ReferenceResolutionClientProtocol?(v20, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      v69(v17, v64);
      outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      if ((v116 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    v70 = UsoIdentifier.namespace.getter();
    if (!v71)
    {
      goto LABEL_66;
    }

    if (v70 == 0x656D614E707061 && v71 == 0xE700000000000000)
    {
    }

    else
    {
      v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v72 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    v125 = UsoIdentifier.value.getter();
    v126 = v73;
    v123 = 0x6172656D6163;
    v124 = 0xE600000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v74 = StringProtocol.contains<A>(_:)();

    result = (*v113)(v32, v122);
    if (v74)
    {
      v34 = 5;
      goto LABEL_69;
    }

LABEL_67:
    v57 = v115 + 1;
    v40 = v104;
    if (v109 == (v115 + 1))
    {
      goto LABEL_68;
    }
  }

  __break(1u);
LABEL_94:
  __break(1u);
  return result;
}

uint64_t InCallFeatureFlags.isEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  v0 = static InCallFeatureFlags.forceEnabled;
  os_unfair_lock_lock((static InCallFeatureFlags.forceEnabled + 20));
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    v3[3] = &type metadata for InCallFeatureFlags;
    v3[4] = lazy protocol witness table accessor for type InCallFeatureFlags and conformance InCallFeatureFlags();
    LOBYTE(v1) = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  os_unfair_lock_unlock((v0 + 20));
  return v1 & 1;
}

unint64_t PhoneSettingParseResult.description.getter(char *a1)
{
  if ((a1 & 0x100) != 0)
  {
    if (a1 <= 2u)
    {
      if (a1)
      {
        return 0xD000000000000013;
      }

      else
      {
        return 0x726568746F2ELL;
      }
    }

    else
    {
      v4 = 0x416172656D61632ELL;
      if (a1 != 5)
      {
        v4 = 0x7041726568746F2ELL;
      }

      v5 = 0xD000000000000015;
      if (a1 == 3)
      {
        v5 = 0xD000000000000019;
      }

      if (a1 <= 4u)
      {
        return v5;
      }

      else
      {
        return v4;
      }
    }
  }

  else
  {
    _StringGuts.grow(_:)(18);

    v2 = SettingParseOptions.description.getter(a1);
    MEMORY[0x1E12A1580](v2);

    MEMORY[0x1E12A1580](41, 0xE100000000000000);
    return 0x676E69747465732ELL;
  }
}

char *SettingParseOptions.description.getter(char *result)
{
  v1 = 0;
  v2 = result;
  v3 = MEMORY[0x1E69E7CC0];
LABEL_2:
  if (v1 <= 6)
  {
    v4 = 6;
  }

  else
  {
    v4 = v1;
  }

  v5 = (&outlined read-only object #0 of one-time initialization function for descriptionLabels + 16 * v1 + 24);
  while (1)
  {
    if (v1 == 6)
    {
      v12 = MEMORY[0x1E12A16D0](v3, MEMORY[0x1E69E6158]);

      return v12;
    }

    if (v4 == v1)
    {
      break;
    }

    v6 = v2 >> v1++;
    v5 += 2;
    if (v6)
    {
      v8 = *(v5 - 1);
      v7 = *v5;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
        v3 = result;
      }

      v10 = *(v3 + 2);
      v9 = *(v3 + 3);
      if (v10 >= v9 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v3);
        v3 = result;
      }

      *(v3 + 2) = v10 + 1;
      v11 = &v3[16 * v10];
      *(v11 + 4) = v8;
      *(v11 + 5) = v7;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance SettingParseOptions(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *protocol witness for SetAlgebra.remove(_:) in conformance SettingParseOptions@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *protocol witness for SetAlgebra.update(with:) in conformance SettingParseOptions@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance SettingParseOptions@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t one-time initialization function for kAnswerProductValues()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kAnswerProductValues);
  result = swift_arrayDestroy();
  static UsoTask.kAnswerProductValues = v0;
  return result;
}

uint64_t *UsoTask.kAnswerProductValues.unsafeMutableAddressor()
{
  if (one-time initialization token for kAnswerProductValues != -1)
  {
    swift_once();
  }

  return &static UsoTask.kAnswerProductValues;
}

uint64_t one-time initialization function for kSupportedBooleanNamespaceValues()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kSupportedBooleanNamespaceValues);
  result = outlined destroy of String(&unk_1F5824728);
  static UsoTask.kSupportedBooleanNamespaceValues = v0;
  return result;
}

uint64_t *UsoTask.kSupportedBooleanNamespaceValues.unsafeMutableAddressor()
{
  if (one-time initialization token for kSupportedBooleanNamespaceValues != -1)
  {
    swift_once();
  }

  return &static UsoTask.kSupportedBooleanNamespaceValues;
}

uint64_t UsoTask.parse(referenceTriggerTask:)(uint64_t a1)
{
  type metadata accessor for UsoTask_enable_common_Setting();
  if (swift_dynamicCastClass() || (type metadata accessor for UsoTask_disable_common_Setting(), swift_dynamicCastClass()) || (type metadata accessor for UsoTask_toggle_common_Setting(), swift_dynamicCastClass()) || (type metadata accessor for UsoTask_set_common_Setting(), (result = swift_dynamicCastClass()) != 0))
  {
    dispatch thunk of Uso_VerbTemplate_ReferenceTrigger.reference.getter();
    LODWORD(v2) = UsoTask.parseEntity(setting:)(v18);

    dispatch thunk of Uso_VerbTemplate_ReferenceTrigger.reference.getter();
    if (v18)
    {
      v3 = dispatch thunk of UsoEntity_common_Setting.associatedSetting.getter();
    }

    else
    {
      v3 = 0;
    }

    LODWORD(v4) = UsoTask.parseEntity(setting:)(v3);

    v5 = dispatch thunk of Uso_VerbTemplate_ReferenceTrigger.userEntities.getter();
    v6 = MEMORY[0x1E69E7CC0];
    if (!v5)
    {
      goto LABEL_30;
    }

    v7 = v5;
    swift_getKeyPath();
    v19 = v6;
    if (v7 >> 62)
    {
LABEL_28:
      v8 = __CocoaSet.count.getter();
      v15 = v4;
      v16 = v2;
      if (v8)
      {
LABEL_11:
        v2 = 0;
        v4 = v7 & 0xC000000000000001;
        do
        {
          v9 = v2;
          while (1)
          {
            if (v4)
            {
              MEMORY[0x1E12A1FE0](v9, v7);
              v2 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                goto LABEL_26;
              }
            }

            else
            {
              if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_27;
              }

              v2 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
LABEL_26:
                __break(1u);
LABEL_27:
                __break(1u);
                goto LABEL_28;
              }
            }

            swift_getAtKeyPath();

            if (v17)
            {
              break;
            }

            ++v9;
            if (v2 == v8)
            {
              goto LABEL_29;
            }
          }

          MEMORY[0x1E12A1680](v10);
          if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v6 = v19;
        }

        while (v2 != v8);
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v15 = v4;
      v16 = v2;
      if (v8)
      {
        goto LABEL_11;
      }
    }

LABEL_29:

    LODWORD(v4) = v15;
    LODWORD(v2) = v16;
LABEL_30:
    v11 = UsoTask.parseEntity(userEntities:)(v6);

    v12 = v4 | v2 | v11;
    v13 = dispatch thunk of Uso_VerbTemplate_ReferenceTrigger.trigger.getter();
    v14 = specialized UsoTask.parseEntity(trigger:)(v13);

    return v12 | v14;
  }

  return result;
}

uint64_t UsoTask.parse(referenceNumberTriggerTask:)(uint64_t a1)
{
  v1 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMR);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  type metadata accessor for UsoTask_increaseBy_common_Setting();
  if (swift_dynamicCastClass() || (type metadata accessor for UsoTask_decreaseBy_common_Setting(), swift_dynamicCastClass()) || (type metadata accessor for UsoTask_setNumber_common_Setting(), (result = swift_dynamicCastClass()) != 0))
  {
    v46 = v2;
    dispatch thunk of Uso_VerbTemplate_ReferenceNumberTrigger.reference.getter();
    if (!v49)
    {
      goto LABEL_16;
    }

    dispatch thunk of UsoEntity_common_Setting.name.getter();
    if (v18)
    {

      goto LABEL_16;
    }

    v43 = v4;
    v19 = dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter();
    v44 = v10;
    if (v19)
    {
      dispatch thunk of UsoEntity_common_ReferenceType.definedValue.getter();

      v20 = v46;
    }

    else
    {
      v20 = v46;
      (*(v46 + 56))(v16, 1, 1, v1);
    }

    (*(v20 + 104))(v13, *MEMORY[0x1E69D2070], v1);
    (*(v20 + 56))(v13, 0, 1, v1);
    v21 = *(v5 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol?(v16, v7, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
    v45 = v21;
    outlined init with copy of ReferenceResolutionClientProtocol?(v13, &v7[v21], &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
    v22 = *(v20 + 48);
    if (v22(v7, 1, v1) == 1)
    {

      outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      if (v22(&v7[v45], 1, v1) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
        return 4;
      }
    }

    else
    {
      v23 = v44;
      outlined init with copy of ReferenceResolutionClientProtocol?(v7, v44, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      v24 = v45;
      if (v22(&v7[v45], 1, v1) != 1)
      {
        v35 = v46;
        v36 = &v7[v24];
        v37 = v43;
        (*(v46 + 32))(v43, v36, v1);
        lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent(&lazy protocol witness table cache variable for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues, MEMORY[0x1E69D2078], MEMORY[0x1E69D2080]);
        LODWORD(v45) = dispatch thunk of static Equatable.== infix(_:_:)();

        v38 = *(v35 + 8);
        v38(v37, v1);
        outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
        v38(v23, v1);
        outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
        if (v45)
        {
          return 4;
        }

LABEL_16:
        dispatch thunk of Uso_VerbTemplate_ReferenceNumberTrigger.reference.getter();
        LODWORD(v25) = UsoTask.parseEntity(setting:)(v49);

        dispatch thunk of Uso_VerbTemplate_ReferenceNumberTrigger.reference.getter();
        if (v49)
        {
          v26 = dispatch thunk of UsoEntity_common_Setting.associatedSetting.getter();
        }

        else
        {
          v26 = 0;
        }

        v27 = UsoTask.parseEntity(setting:)(v26);

        v28 = dispatch thunk of Uso_VerbTemplate_ReferenceNumberTrigger.userEntities.getter();
        v29 = MEMORY[0x1E69E7CC0];
        if (!v28)
        {
          goto LABEL_43;
        }

        v30 = v28;
        LODWORD(v45) = v27;
        swift_getKeyPath();
        v49 = v29;
        if (v30 >> 62)
        {
LABEL_41:
          v31 = __CocoaSet.count.getter();
          LODWORD(v46) = v25;
          if (v31)
          {
LABEL_22:
            v25 = 0;
            do
            {
              v32 = v25;
              while (1)
              {
                if ((v30 & 0xC000000000000001) != 0)
                {
                  v33 = MEMORY[0x1E12A1FE0](v32, v30);
                  v25 = v32 + 1;
                  if (__OFADD__(v32, 1))
                  {
                    goto LABEL_39;
                  }
                }

                else
                {
                  if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_40;
                  }

                  v33 = *(v30 + 8 * v32 + 32);

                  v25 = v32 + 1;
                  if (__OFADD__(v32, 1))
                  {
LABEL_39:
                    __break(1u);
LABEL_40:
                    __break(1u);
                    goto LABEL_41;
                  }
                }

                v47 = v33;

                swift_getAtKeyPath();

                if (v48)
                {
                  break;
                }

                ++v32;
                if (v25 == v31)
                {
                  goto LABEL_42;
                }
              }

              MEMORY[0x1E12A1680](v34);
              if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v29 = v49;
            }

            while (v25 != v31);
          }
        }

        else
        {
          v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          LODWORD(v46) = v25;
          if (v31)
          {
            goto LABEL_22;
          }
        }

LABEL_42:

        LODWORD(v25) = v46;
        v27 = v45;
LABEL_43:
        v39 = UsoTask.parseEntity(userEntities:)(v29);

        v40 = v27 | v25 | v39;
        v41 = dispatch thunk of Uso_VerbTemplate_ReferenceNumberTrigger.trigger.getter();
        v42 = specialized UsoTask.parseEntity(trigger:)(v41);

        return v40 | v42;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      (*(v46 + 8))(v23, v1);
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMR);
    goto LABEL_16;
  }

  return result;
}

uint64_t UsoTask.parse(referenceTask:)(uint64_t a1)
{
  type metadata accessor for UsoTask_summarise_common_Setting();
  if (swift_dynamicCastClass() || (type metadata accessor for UsoTask_checkExistence_common_Setting(), (result = swift_dynamicCastClass()) != 0))
  {
    dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
    LODWORD(v2) = UsoTask.parseEntity(setting:)(v15);

    dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
    if (v15)
    {
      v3 = dispatch thunk of UsoEntity_common_Setting.associatedSetting.getter();
    }

    else
    {
      v3 = 0;
    }

    LODWORD(v4) = UsoTask.parseEntity(setting:)(v3);

    v5 = dispatch thunk of Uso_VerbTemplate_Reference.userEntities.getter();
    v6 = MEMORY[0x1E69E7CC0];
    if (!v5)
    {
      goto LABEL_28;
    }

    v7 = v5;
    swift_getKeyPath();
    v16 = v6;
    if (v7 >> 62)
    {
LABEL_26:
      v8 = __CocoaSet.count.getter();
      v12 = v4;
      v13 = v2;
      if (v8)
      {
LABEL_9:
        v4 = 0;
        v2 = v7 & 0xC000000000000001;
        do
        {
          v9 = v4;
          while (1)
          {
            if (v2)
            {
              MEMORY[0x1E12A1FE0](v9, v7);
              v4 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                goto LABEL_24;
              }
            }

            else
            {
              if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_25;
              }

              v4 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
LABEL_24:
                __break(1u);
LABEL_25:
                __break(1u);
                goto LABEL_26;
              }
            }

            swift_getAtKeyPath();

            if (v14)
            {
              break;
            }

            ++v9;
            if (v4 == v8)
            {
              goto LABEL_27;
            }
          }

          MEMORY[0x1E12A1680](v10);
          if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v6 = v16;
        }

        while (v4 != v8);
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v4;
      v13 = v2;
      if (v8)
      {
        goto LABEL_9;
      }
    }

LABEL_27:

    LODWORD(v4) = v12;
    LODWORD(v2) = v13;
LABEL_28:
    v11 = UsoTask.parseEntity(userEntities:)(v6);

    return v4 | v2 | v11;
  }

  return result;
}

uint64_t UsoTask.parseEntity(setting:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UsoIdentifier.NluComponent();
  v251 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v276 = &v244 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
  MEMORY[0x1EEE9AC00](v291);
  v7 = &v244 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v264 = &v244 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v265 = &v244 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v267 = &v244 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v270 = &v244 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v288 = &v244 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v244 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v266 = &v244 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v294 = &v244 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v254 = &v244 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v278 = (&v244 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v273 = &v244 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v255 = &v244 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v275 = (&v244 - v34);
  MEMORY[0x1EEE9AC00](v35);
  v279 = (&v244 - v36);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v244 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v280 = (&v244 - v41);
  MEMORY[0x1EEE9AC00](v42);
  v289 = (&v244 - v43);
  MEMORY[0x1EEE9AC00](v44);
  v252 = &v244 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v272 = &v244 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v271 = (&v244 - v49);
  MEMORY[0x1EEE9AC00](v50);
  v253 = (&v244 - v51);
  MEMORY[0x1EEE9AC00](v52);
  v283 = (&v244 - v53);
  MEMORY[0x1EEE9AC00](v54);
  v277 = (&v244 - v55);
  v296 = type metadata accessor for IdentifierAppBundle();
  v250 = *(v296 - 8);
  MEMORY[0x1EEE9AC00](v296);
  v57 = &v244 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v295 = &v244 - v59;
  v299 = type metadata accessor for UsoIdentifier();
  v60 = *(v299 - 8);
  MEMORY[0x1EEE9AC00](v299);
  v269 = &v244 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v281 = &v244 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v282 = &v244 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v274 = &v244 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v268 = &v244 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v244 - v71;
  if (!a1)
  {
    return a1;
  }

  v290 = v4;

  v244 = a1;
  v73 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  v74 = MEMORY[0x1E69E7CC0];
  if (v73)
  {
    v74 = v73;
  }

  v297 = v74;
  v75 = *(v74 + 16);

  v256 = v2;
  v257 = v7;
  v246 = v20;
  v298 = v75;
  v249 = v39;
  v292 = v60;
  v293 = v57;
  if (!v75)
  {
    LODWORD(v259) = 0;
    goto LABEL_24;
  }

  v76 = 0;
  v287 = (v60 + 16);
  LODWORD(v286) = *MEMORY[0x1E69D1AE0];
  v285 = (v250 + 104);
  v77 = (v250 + 8);
  LODWORD(v263) = *MEMORY[0x1E69D1768];
  v262 = (v251 + 104);
  v261 = (v251 + 56);
  v245 = (v251 + 32);
  v248 = (v251 + 8);
  v284 = (v60 + 8);
  v260 = (v251 + 48);
  v259 = (v250 + 8);
  v258 = v72;
  while (1)
  {
    if (v76 >= *(v297 + 16))
    {
      goto LABEL_179;
    }

    (*(v60 + 16))(v72, v297 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v76, v299);
    v78 = v295;
    UsoIdentifier.appBundleSemantic.getter();
    v79 = v296;
    (*v285)(v57, v286, v296);
    v80 = MEMORY[0x1E129CA00](v78, v57);
    v81 = *v77;
    (*v77)(v57, v79);
    v82 = v79;
    v83 = v288;
    v81(v78, v82);
    if ((v80 & 1) == 0)
    {
      goto LABEL_8;
    }

    v84 = v277;
    UsoIdentifier.sourceComponent.getter();
    v85 = v283;
    v86 = v290;
    (*v262)(v283, v263, v290);
    (*v261)(v85, 0, 1, v86);
    v87 = *(v291 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol?(v84, v83, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v85, v83 + v87, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v88 = *v260;
    if ((*v260)(v83, 1, v86) == 1)
    {
      break;
    }

    v90 = v253;
    outlined init with copy of ReferenceResolutionClientProtocol?(v83, v253, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    if (v88(v83 + v87, 1, v86) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v283, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v277, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      (*v248)(v90, v86);
      v60 = v292;
      v57 = v293;
LABEL_7:
      outlined destroy of ReferenceResolutionClientProtocol?(v83, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
      v77 = v259;
      v72 = v258;
      goto LABEL_8;
    }

    v91 = v83 + v87;
    v92 = v276;
    (*v245)(v276, v91, v86);
    lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent(&lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent, MEMORY[0x1E69D1778], MEMORY[0x1E69D1780]);
    v247 = dispatch thunk of static Equatable.== infix(_:_:)();
    v93 = *v248;
    (*v248)(v92, v86);
    outlined destroy of ReferenceResolutionClientProtocol?(v283, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v277, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v93(v90, v86);
    outlined destroy of ReferenceResolutionClientProtocol?(v83, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v60 = v292;
    v57 = v293;
    v77 = v259;
    v72 = v258;
    if (v247)
    {
      goto LABEL_17;
    }

LABEL_8:
    (*v284)(v72, v299);
LABEL_9:
    if (v298 == ++v76)
    {
      LODWORD(v259) = 0;
      goto LABEL_24;
    }
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v85, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v84, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  v89 = v88(v83 + v87, 1, v86);
  v60 = v292;
  v57 = v293;
  if (v89 != 1)
  {
    goto LABEL_7;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v83, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  v77 = v259;
  v72 = v258;
LABEL_17:
  v94 = UsoIdentifier.namespace.getter();
  if (!v95)
  {
    goto LABEL_8;
  }

  if (v94 != 0x746553656E6F6870 || v95 != 0xEC000000676E6974)
  {
    v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v284)(v72, v299);
    if (v96)
    {
      goto LABEL_165;
    }

    goto LABEL_9;
  }

  (*v284)(v72, v299);
LABEL_165:
  LODWORD(v259) = 2;
LABEL_24:

  v97 = v294;
  v98 = v268;
  if (!v298)
  {
LABEL_54:

    goto LABEL_55;
  }

  v99 = 0;
  v288 = (v60 + 16);
  LODWORD(v287) = *MEMORY[0x1E69D1AE0];
  v285 = (v250 + 104);
  v284 = (v250 + 8);
  LODWORD(v283) = *MEMORY[0x1E69D1768];
  v277 = (v251 + 104);
  v263 = (v251 + 56);
  v262 = (v251 + 48);
  v253 = (v251 + 32);
  v261 = (v251 + 8);
  v286 = (v60 + 8);
  v258 = 0x80000001DCA79140;
  v100 = &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR;
  while (2)
  {
    if (v99 >= *(v297 + 16))
    {
      goto LABEL_180;
    }

    (*(v60 + 16))(v98, v297 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v99, v299);
    v101 = v100;
    v102 = v295;
    UsoIdentifier.appBundleSemantic.getter();
    v103 = v296;
    (*v285)(v57, v287, v296);
    v104 = MEMORY[0x1E129CA00](v102, v57);
    v105 = *v284;
    (*v284)(v57, v103);
    v106 = v102;
    v100 = v101;
    v105(v106, v103);
    if ((v104 & 1) == 0)
    {
      goto LABEL_52;
    }

    v107 = v271;
    UsoIdentifier.sourceComponent.getter();
    v108 = v272;
    v109 = v290;
    (*v277)(v272, v283, v290);
    (*v263)(v108, 0, 1, v109);
    v110 = *(v291 + 48);
    v111 = v270;
    outlined init with copy of ReferenceResolutionClientProtocol?(v107, v270, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v101);
    outlined init with copy of ReferenceResolutionClientProtocol?(v108, &v111[v110], &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v101);
    v112 = *v262;
    if ((*v262)(v111, 1, v109) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v108, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v101);
      outlined destroy of ReferenceResolutionClientProtocol?(v107, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v101);
      v113 = v112(&v111[v110], 1, v109);
      v98 = v268;
      v57 = v293;
      v100 = v101;
      if (v113 == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v111, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v101);
        v97 = v294;
        goto LABEL_35;
      }

LABEL_33:
      outlined destroy of ReferenceResolutionClientProtocol?(v111, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
      v97 = v294;
      goto LABEL_52;
    }

    v114 = v252;
    outlined init with copy of ReferenceResolutionClientProtocol?(v111, v252, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v101);
    if (v112(&v111[v110], 1, v109) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v272, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v101);
      outlined destroy of ReferenceResolutionClientProtocol?(v271, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v101);
      (*v261)(v114, v109);
      v98 = v268;
      v57 = v293;
      v100 = v101;
      goto LABEL_33;
    }

    v115 = v114;
    v116 = v276;
    (*v253)(v276, &v111[v110], v109);
    lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent(&lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent, MEMORY[0x1E69D1778], MEMORY[0x1E69D1780]);
    LODWORD(v260) = dispatch thunk of static Equatable.== infix(_:_:)();
    v117 = *v261;
    (*v261)(v116, v109);
    outlined destroy of ReferenceResolutionClientProtocol?(v272, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v101);
    outlined destroy of ReferenceResolutionClientProtocol?(v271, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v101);
    v117(v115, v109);
    outlined destroy of ReferenceResolutionClientProtocol?(v270, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v101);
    v57 = v293;
    v97 = v294;
    v98 = v268;
    v100 = v101;
    if ((v260 & 1) == 0)
    {
LABEL_52:
      (*v286)(v98, v299);
      v60 = v292;
      goto LABEL_53;
    }

LABEL_35:
    v118 = UsoIdentifier.namespace.getter();
    v60 = v292;
    if (v119)
    {
      if (v118 == 0xD000000000000010 && v119 == v258)
      {

LABEL_40:
        if (UsoIdentifier.value.getter() == 0x656D756C6F76 && v121 == 0xE600000000000000)
        {
          goto LABEL_173;
        }

        v122 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v122)
        {
          goto LABEL_174;
        }
      }

      else
      {
        v120 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v120)
        {
          goto LABEL_40;
        }
      }
    }

    v123 = UsoIdentifier.namespace.getter();
    if (!v124)
    {
      goto LABEL_52;
    }

    if (v123 == 0x746553656E6F6870 && v124 == 0xEC000000676E6974)
    {
    }

    else
    {
      v125 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v125 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    if (UsoIdentifier.value.getter() != 0x5F6C6172656E6567 || v126 != 0xEE00656D756C6F76)
    {
      v127 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v286)(v98, v299);
      v60 = v292;
      if (v127)
      {
        goto LABEL_175;
      }

LABEL_53:
      if (v298 == ++v99)
      {
        goto LABEL_54;
      }

      continue;
    }

    break;
  }

  v60 = v292;
LABEL_173:

LABEL_174:
  (*v286)(v98, v299);
LABEL_175:

  LODWORD(v259) = v259 | 4;
LABEL_55:

  v128 = v274;
  if (!v298)
  {
LABEL_77:

    goto LABEL_78;
  }

  v129 = 0;
  v288 = (v60 + 16);
  LODWORD(v287) = *MEMORY[0x1E69D1AE0];
  v286 = (v250 + 104);
  v284 = (v250 + 8);
  LODWORD(v277) = *MEMORY[0x1E69D1768];
  v272 = v251 + 104;
  v271 = (v251 + 56);
  v283 = (v251 + 48);
  v263 = (v251 + 32);
  v270 = (v251 + 8);
  v268 = 0x80000001DCA79140;
  v285 = (v60 + 8);
  while (2)
  {
    if (v129 >= *(v297 + 16))
    {
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
      goto LABEL_182;
    }

    (*(v60 + 16))(v128, v297 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v129, v299);
    v130 = v295;
    UsoIdentifier.appBundleSemantic.getter();
    v131 = v296;
    (*v286)(v57, v287, v296);
    v132 = MEMORY[0x1E129CA00](v130, v57);
    v133 = *v284;
    (*v284)(v57, v131);
    v134 = v131;
    v135 = v128;
    v136 = v289;
    v133(v130, v134);
    if ((v132 & 1) == 0)
    {
      goto LABEL_75;
    }

    UsoIdentifier.sourceComponent.getter();
    v137 = v280;
    v138 = v290;
    (*v272)(v280, v277, v290);
    (*v271)(v137, 0, 1, v138);
    v139 = *(v291 + 48);
    v140 = v267;
    outlined init with copy of ReferenceResolutionClientProtocol?(v136, v267, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v137, v140 + v139, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v141 = *v283;
    if ((*v283)(v140, 1, v138) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v137, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v136, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      if (v141(v140 + v139, 1, v138) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v140, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        v135 = v274;
        goto LABEL_66;
      }

LABEL_64:
      outlined destroy of ReferenceResolutionClientProtocol?(v140, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
      v135 = v274;
      goto LABEL_75;
    }

    v142 = v249;
    outlined init with copy of ReferenceResolutionClientProtocol?(v140, v249, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    if (v141(v140 + v139, 1, v138) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v280, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v289, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      (*v270)(v142, v138);
      goto LABEL_64;
    }

    v143 = v140 + v139;
    v144 = v276;
    (*v263)(v276, v143, v138);
    lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent(&lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent, MEMORY[0x1E69D1778], MEMORY[0x1E69D1780]);
    v145 = dispatch thunk of static Equatable.== infix(_:_:)();
    v146 = *v270;
    (*v270)(v144, v138);
    outlined destroy of ReferenceResolutionClientProtocol?(v280, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v289, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v146(v142, v138);
    outlined destroy of ReferenceResolutionClientProtocol?(v140, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v135 = v274;
    if ((v145 & 1) == 0)
    {
LABEL_75:
      (*v285)(v135, v299);
      v57 = v293;
      v97 = v294;
      v128 = v135;
      goto LABEL_76;
    }

LABEL_66:
    v147 = UsoIdentifier.namespace.getter();
    if (!v148)
    {
      goto LABEL_75;
    }

    if (v147 == 0xD000000000000010 && v148 == v268)
    {

      v135 = v274;
    }

    else
    {
      v149 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v135 = v274;
      if ((v149 & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    v128 = v135;
    if (UsoIdentifier.value.getter() != 0x6563696F76 || v150 != 0xE500000000000000)
    {
      v151 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v285)(v128, v299);
      v57 = v293;
      v97 = v294;
      if (v151)
      {
        goto LABEL_167;
      }

LABEL_76:
      if (v298 == ++v129)
      {
        goto LABEL_77;
      }

      continue;
    }

    break;
  }

  (*v285)(v135, v299);
  v57 = v293;
  v97 = v294;
LABEL_167:

  LODWORD(v259) = v259 | 0x20;
LABEL_78:

  v152 = v275;
  v153 = v282;
  if (!v298)
  {
LABEL_100:

    goto LABEL_101;
  }

  v154 = 0;
  v289 = (v60 + 16);
  LODWORD(v288) = *MEMORY[0x1E69D1AE0];
  v287 = (v250 + 104);
  v155 = (v250 + 8);
  LODWORD(v284) = *MEMORY[0x1E69D1768];
  v283 = (v251 + 104);
  v280 = (v251 + 56);
  v277 = (v251 + 48);
  v270 = (v251 + 32);
  v274 = (v251 + 8);
  v271 = 0x80000001DCA79140;
  v156 = (v60 + 8);
  v286 = (v60 + 8);
  v285 = (v250 + 8);
  while (2)
  {
    if (v154 >= *(v297 + 16))
    {
      goto LABEL_177;
    }

    (*(v60 + 16))(v153, v297 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v154, v299);
    v157 = v295;
    v158 = v153;
    UsoIdentifier.appBundleSemantic.getter();
    v159 = v296;
    (*v287)(v57, v288, v296);
    v160 = MEMORY[0x1E129CA00](v157, v57);
    v161 = v57;
    v162 = v160;
    v163 = *v155;
    (*v155)(v161, v159);
    v163(v157, v159);
    if ((v162 & 1) == 0)
    {
      goto LABEL_98;
    }

    v164 = v279;
    UsoIdentifier.sourceComponent.getter();
    v165 = v290;
    (*v283)(v152, v284, v290);
    (*v280)(v152, 0, 1, v165);
    v166 = *(v291 + 48);
    v167 = v152;
    v168 = v265;
    outlined init with copy of ReferenceResolutionClientProtocol?(v164, v265, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v167, v168 + v166, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v169 = *v277;
    if ((*v277)(v168, 1, v165) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v167, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v164, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      v170 = v169(v168 + v166, 1, v165);
      v156 = v286;
      if (v170 == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v168, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        v152 = v275;
        v158 = v282;
        v155 = v285;
        goto LABEL_89;
      }

LABEL_87:
      outlined destroy of ReferenceResolutionClientProtocol?(v168, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
      v152 = v275;
      v158 = v282;
      v155 = v285;
      goto LABEL_98;
    }

    v171 = v255;
    outlined init with copy of ReferenceResolutionClientProtocol?(v168, v255, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    if (v169(v168 + v166, 1, v165) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v275, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v279, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      (*v274)(v171, v165);
      v156 = v286;
      goto LABEL_87;
    }

    v172 = v276;
    (*v270)(v276, v168 + v166, v165);
    lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent(&lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent, MEMORY[0x1E69D1778], MEMORY[0x1E69D1780]);
    LODWORD(v272) = dispatch thunk of static Equatable.== infix(_:_:)();
    v173 = *v274;
    (*v274)(v172, v165);
    v174 = v275;
    outlined destroy of ReferenceResolutionClientProtocol?(v275, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v279, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v173(v171, v165);
    v175 = v168;
    v152 = v174;
    outlined destroy of ReferenceResolutionClientProtocol?(v175, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v158 = v282;
    v156 = v286;
    v155 = v285;
    if ((v272 & 1) == 0)
    {
LABEL_98:
      (*v156)(v158, v299);
      v57 = v293;
      v97 = v294;
      v153 = v158;
      goto LABEL_99;
    }

LABEL_89:
    v176 = UsoIdentifier.namespace.getter();
    if (!v177)
    {
      goto LABEL_98;
    }

    if (v176 == 0xD000000000000010 && v177 == v271)
    {
    }

    else
    {
      v178 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v158 = v282;
      if ((v178 & 1) == 0)
      {
        goto LABEL_98;
      }
    }

    if (UsoIdentifier.value.getter() != 0x707954616964656DLL || v179 != 0xE900000000000065)
    {
      v180 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v153 = v282;
      (*v156)(v282, v299);
      v57 = v293;
      v97 = v294;
      if (v180)
      {
        goto LABEL_169;
      }

LABEL_99:
      if (v298 == ++v154)
      {
        goto LABEL_100;
      }

      continue;
    }

    break;
  }

  (*v156)(v282, v299);
  v57 = v293;
  v97 = v294;
LABEL_169:

  LODWORD(v259) = v259 | 0x10;
LABEL_101:

  v181 = v273;
  v182 = v281;
  if (!v298)
  {
LABEL_123:

    goto LABEL_124;
  }

  v183 = 0;
  v288 = (v60 + 16);
  LODWORD(v287) = *MEMORY[0x1E69D1AE0];
  v286 = (v250 + 104);
  v184 = (v250 + 8);
  LODWORD(v285) = *MEMORY[0x1E69D1768];
  v284 = (v251 + 104);
  v283 = (v251 + 56);
  v282 = (v251 + 48);
  v275 = (v251 + 32);
  v279 = (v251 + 8);
  v289 = (v60 + 8);
  v185 = &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd;
  v280 = (v250 + 8);
  while (2)
  {
    if (v183 >= *(v297 + 16))
    {
      goto LABEL_178;
    }

    (*(v60 + 16))(v182, v297 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v183, v299);
    v186 = v295;
    UsoIdentifier.appBundleSemantic.getter();
    v187 = v185;
    v188 = v296;
    (*v286)(v57, v287, v296);
    v189 = MEMORY[0x1E129CA00](v186, v57);
    v190 = *v184;
    (*v184)(v57, v188);
    v191 = v188;
    v185 = v187;
    v190(v186, v191);
    if ((v189 & 1) == 0)
    {
      goto LABEL_121;
    }

    UsoIdentifier.sourceComponent.getter();
    v192 = v278;
    v193 = v290;
    (*v284)(v278, v285, v290);
    (*v283)(v192, 0, 1, v193);
    v194 = *(v291 + 48);
    v195 = v181;
    v196 = v181;
    v197 = v264;
    outlined init with copy of ReferenceResolutionClientProtocol?(v195, v264, v185, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v192, v197 + v194, v185, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v198 = *v282;
    if ((*v282)(v197, 1, v193) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v192, v185, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v196, v185, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      if (v198(v197 + v194, 1, v193) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v197, v185, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        v57 = v293;
        v181 = v273;
        v182 = v281;
        v184 = v280;
        goto LABEL_112;
      }

LABEL_110:
      outlined destroy of ReferenceResolutionClientProtocol?(v197, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
      v57 = v293;
      v181 = v273;
      v182 = v281;
      v184 = v280;
      goto LABEL_121;
    }

    v199 = v185;
    v200 = v254;
    outlined init with copy of ReferenceResolutionClientProtocol?(v197, v254, v199, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    if (v198(v197 + v194, 1, v193) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v278, v199, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v273, v199, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      (*v279)(v200, v193);
      v185 = v199;
      goto LABEL_110;
    }

    v201 = v276;
    (*v275)(v276, v197 + v194, v193);
    lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent(&lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent, MEMORY[0x1E69D1778], MEMORY[0x1E69D1780]);
    LODWORD(v277) = dispatch thunk of static Equatable.== infix(_:_:)();
    v202 = *v279;
    (*v279)(v201, v193);
    outlined destroy of ReferenceResolutionClientProtocol?(v278, v199, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v203 = v273;
    outlined destroy of ReferenceResolutionClientProtocol?(v273, v199, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v202(v200, v193);
    v204 = v197;
    v181 = v203;
    outlined destroy of ReferenceResolutionClientProtocol?(v204, v199, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v57 = v293;
    v182 = v281;
    v185 = v199;
    v184 = v280;
    if ((v277 & 1) == 0)
    {
LABEL_121:
      (*v289)(v182, v299);
      v97 = v294;
      v60 = v292;
      goto LABEL_122;
    }

LABEL_112:
    v205 = UsoIdentifier.namespace.getter();
    if (!v206)
    {
      goto LABEL_121;
    }

    if (v205 == 0x746553656E6F6870 && v206 == 0xEC000000676E6974)
    {
    }

    else
    {
      v207 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v182 = v281;
      if ((v207 & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    if (UsoIdentifier.value.getter() != 0x6C6F765F6C6C6163 || v208 != 0xEB00000000656D75)
    {
      v209 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v182 = v281;
      (*v289)(v281, v299);
      v97 = v294;
      v60 = v292;
      if (v209)
      {
        goto LABEL_171;
      }

LABEL_122:
      if (v298 == ++v183)
      {
        goto LABEL_123;
      }

      continue;
    }

    break;
  }

  (*v289)(v281, v299);
  v97 = v294;
  v60 = v292;
LABEL_171:

  LODWORD(v259) = v259 | 8;
LABEL_124:

  v210 = v269;
  if (v298)
  {
    v211 = 0;
    v289 = (v60 + 16);
    LODWORD(v288) = *MEMORY[0x1E69D1AE0];
    v287 = (v250 + 104);
    v286 = (v250 + 8);
    LODWORD(v283) = *MEMORY[0x1E69D1768];
    v282 = (v251 + 104);
    v281 = (v251 + 56);
    v278 = (v251 + 32);
    v280 = (v251 + 8);
    v284 = (v60 + 8);
    v285 = (v251 + 48);
    while (1)
    {
      if (v211 >= *(v297 + 16))
      {
        goto LABEL_181;
      }

      (*(v60 + 16))(v210, v297 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v211, v299);
      v212 = v295;
      UsoIdentifier.appBundleSemantic.getter();
      v213 = v296;
      (*v287)(v57, v288, v296);
      v214 = MEMORY[0x1E129CA00](v212, v57);
      v215 = *v286;
      (*v286)(v57, v213);
      v215(v212, v213);
      v216 = v285;
      if (v214)
      {
        break;
      }

LABEL_129:
      ++v211;
      (*v284)(v210, v299);
      v60 = v292;
      if (v211 == v298)
      {
        goto LABEL_154;
      }
    }

    UsoIdentifier.sourceComponent.getter();
    v217 = v266;
    v218 = v290;
    (*v282)(v266, v283, v290);
    (*v281)(v217, 0, 1, v218);
    v219 = *(v291 + 48);
    v220 = v257;
    outlined init with copy of ReferenceResolutionClientProtocol?(v97, v257, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v217, v220 + v219, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v221 = *v216;
    if ((*v216)(v220, 1, v218) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v217, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v97, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      if (v221(v220 + v219, 1, v218) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v220, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        v210 = v269;
        goto LABEL_137;
      }

LABEL_127:
      outlined destroy of ReferenceResolutionClientProtocol?(v220, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
    }

    else
    {
      v222 = v246;
      outlined init with copy of ReferenceResolutionClientProtocol?(v220, v246, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      if (v221(v220 + v219, 1, v218) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v266, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        v97 = v294;
        outlined destroy of ReferenceResolutionClientProtocol?(v294, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        (*v280)(v222, v218);
        goto LABEL_127;
      }

      v223 = v276;
      (*v278)(v276, v220 + v219, v218);
      lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent(&lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent, MEMORY[0x1E69D1778], MEMORY[0x1E69D1780]);
      LODWORD(v279) = dispatch thunk of static Equatable.== infix(_:_:)();
      v224 = *v280;
      (*v280)(v223, v218);
      outlined destroy of ReferenceResolutionClientProtocol?(v266, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      v97 = v294;
      outlined destroy of ReferenceResolutionClientProtocol?(v294, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      v224(v222, v218);
      outlined destroy of ReferenceResolutionClientProtocol?(v257, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      v210 = v269;
      if ((v279 & 1) == 0)
      {
        goto LABEL_129;
      }

LABEL_137:
      v225 = UsoIdentifier.namespace.getter();
      if (!v226)
      {
        goto LABEL_129;
      }

      if (v225 == 0x747465536C6F6F62 && v226 == 0xEF656D614E676E69)
      {
      }

      else
      {
        v227 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v210 = v269;
        if ((v227 & 1) == 0)
        {
          goto LABEL_129;
        }
      }

      if (one-time initialization token for kSupportedBooleanNamespaceValues != -1)
      {
        swift_once();
      }

      v228 = static UsoTask.kSupportedBooleanNamespaceValues;
      v229 = UsoIdentifier.value.getter();
      v231 = v230;
      if (*(v228 + 16))
      {
        v232 = v229;
        Hasher.init(_seed:)();
        String.hash(into:)();
        v233 = Hasher._finalize()();
        v234 = -1 << *(v228 + 32);
        v235 = v233 & ~v234;
        if ((*(v228 + 56 + ((v235 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v235))
        {
          v236 = ~v234;
          while (1)
          {
            v237 = (*(v228 + 48) + 16 * v235);
            v238 = *v237 == v232 && v237[1] == v231;
            if (v238 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v235 = (v235 + 1) & v236;
            if (((*(v228 + 56 + ((v235 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v235) & 1) == 0)
            {
              goto LABEL_153;
            }
          }

          (*v284)(v269, v299);

          a1 = v259 | 0x40;
          goto LABEL_162;
        }
      }

LABEL_153:

      v97 = v294;
    }

    v210 = v269;
    goto LABEL_129;
  }

LABEL_154:

  a1 = v259;
  if (!v259)
  {
    if (dispatch thunk of UsoEntity_common_Setting.value.getter())
    {

      a1 = 0;
      goto LABEL_162;
    }

    if (one-time initialization token for executor == -1)
    {
LABEL_159:
      v239 = type metadata accessor for Logger();
      __swift_project_value_buffer(v239, static Logger.executor);
      v240 = Logger.logObject.getter();
      v241 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v240, v241))
      {
        v242 = swift_slowAlloc();
        *v242 = 0;
        _os_log_impl(&dword_1DC659000, v240, v241, "PhoneAffinityScorer Found an unsupported UsoEntity_common_Setting", v242, 2u);
        MEMORY[0x1E12A2F50](v242, -1, -1);
      }

      a1 = 1;
      goto LABEL_162;
    }

LABEL_182:
    swift_once();
    goto LABEL_159;
  }

LABEL_162:

  return a1;
}