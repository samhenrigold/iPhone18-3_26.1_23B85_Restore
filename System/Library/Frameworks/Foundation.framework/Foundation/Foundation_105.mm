id protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.KeyPath<A, B>(uint64_t a1, uint64_t a2)
{
  result = PredicateExpressions.KeyPath.convert(state:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

void *PredicateExpressions.PredicateEvaluate.convert(state:)(int64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = 8 * v4;
  if (v4 == 1)
  {
    TupleTypeMetadata = *(*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v7 = v155 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v4)
    {
      v8 = 0;
      v9 = *(a2 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v4 < 4)
      {
        goto LABEL_9;
      }

      if (&v7[-v9] < 0x20)
      {
        goto LABEL_9;
      }

      v8 = v4 & 0xFFFFFFFFFFFFFFFCLL;
      v10 = (v9 + 16);
      v11 = v7 + 16;
      v12 = v4 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v13 = *v10;
        *(v11 - 1) = *(v10 - 1);
        *v11 = v13;
        v10 += 2;
        v11 += 2;
        v12 -= 4;
      }

      while (v12);
      if (v4 != v8)
      {
LABEL_9:
        v14 = v4 - v8;
        v15 = 8 * v8;
        v16 = &v7[8 * v8];
        v17 = (v9 + v15);
        do
        {
          v18 = *v17++;
          *v16 = v18;
          v16 += 8;
          --v14;
        }

        while (v14);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v175 = a1;
  v163 = v155;
  v167 = TupleTypeMetadata;
  v159 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v176 = v155 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = v4;
  if (v4 == 1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v24 = type metadata accessor for PredicateExpressions.Variable(0, AssociatedTypeWitness, v22, v23);
  }

  else
  {
    v181 = v155;
    MEMORY[0x1EEE9AC00](v19);
    if (v4)
    {
      v25 = *(a2 + 32) & 0xFFFFFFFFFFFFFFFELL;
      v26 = *(a2 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v27 = (v155 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      v28 = v180;
      do
      {
        v25 += 8;
        v26 += 8;
        v29 = swift_getAssociatedTypeWitness();
        *v27++ = type metadata accessor for PredicateExpressions.Variable(255, v29, v30, v31);
        --v28;
      }

      while (v28);
    }

    v4 = v180;
    v24 = swift_getTupleTypeMetadata();
  }

  v162 = v155;
  v166 = v24;
  v179 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v171 = v155 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = v155;
  MEMORY[0x1EEE9AC00](v33);
  v35 = (v155 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v4)
  {
    v36 = *(a2 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v37 = *(a2 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v38 = v35;
    v39 = v180;
    do
    {
      v36 += 8;
      v37 += 8;
      *v38++ = swift_getAssociatedTypeWitness();
      --v39;
    }

    while (v39);
  }

  v40 = v180;
  v41 = type metadata accessor for Predicate(255, v180, v35, v34);
  v42 = type metadata accessor for Optional();
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v45 = v155 - v44;
  v160 = v155;
  v46 = *(v41 - 8);
  v48 = MEMORY[0x1EEE9AC00](v47);
  v50 = (v155 - v49);
  *&v189 = MEMORY[0x1E69E7CC0];
  v51 = v182;
  (*(*(a2 + 40) + 16))(&v189, *(a2 + 24), v48);
  if (v51)
  {

    (*(v46 + 56))(v45, 1, 1, v41);
    (*(v43 + 8))(v45, v42);
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v52 = 2;
    swift_willThrow();
    return v163;
  }

  v181 = 0;

  (*(v46 + 56))(v45, 0, 1, v41);
  v156 = v46;
  (*(v46 + 32))(v50, v45, v41);
  v157 = v41;
  (v179[2])(v171, v50 + *(v41 + 36), v166);
  isClassOrObjCExistentialType = (*(v159 + 16))(v176, &v183[*(a2 + 60)], v167);
  v158 = v50;
  if (!v40)
  {
    v72 = v175;
LABEL_73:
    v128 = v158[3];
    v129 = v158[4];
    v130 = __swift_project_boxed_opaque_existential_1(v158, v128);
    v131 = MEMORY[0x1EEE9AC00](v130);
    (*(v133 + 16))(v155 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0), v130, v128, v131);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMR);
    if (swift_dynamicCast())
    {
      outlined init with take of Equatable(&v186, &v189);
      v134 = v190;
      v135 = v191;
      __swift_project_boxed_opaque_existential_1(&v189, v190);
      v136 = v181;
      v137 = (*(v135 + 16))(v72, v134, v135);
      v138 = v136;
      if (!v136)
      {
        v53 = v137;
        __swift_destroy_boxed_opaque_existential_1(&v189);
        v145 = v157;
        v146 = v156;
        v147 = v158;
        goto LABEL_92;
      }

      __swift_destroy_boxed_opaque_existential_1(&v189);
      v139 = 0;
      v65 = v138;
    }

    else
    {
      v188 = 0;
      v186 = 0u;
      v187 = 0u;
      outlined destroy of TermOfAddress?(&v186, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
      v65 = 0;
      v139 = v181;
    }

    v140 = v158;
    *&v189 = MEMORY[0x1E69E7CC0];
    (*(*(v129 + 8) + 16))(&v192, &v189, v128);
    if (v139)
    {

LABEL_82:
      if (!v65)
      {
        lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
        swift_allocError();
        *v141 = 2;
      }

      v53 = v163;
      swift_willThrow();
      (*(v156 + 8))(v140, v157);
      (*(v159 + 8))(v176, v167);
      return v53;
    }

    if (v192 == 2)
    {
      goto LABEL_82;
    }

    v185 = MEMORY[0x1E69E6370];
    LOBYTE(v184[0]) = v192 & 1;
    _expressionCompatibleValue(for:)(v184, &v186);
    __swift_destroy_boxed_opaque_existential_1(v184);
    if (!*(&v187 + 1))
    {
      outlined destroy of TermOfAddress?(&v186, &_sypSgMd, &_sypSgMR);
      goto LABEL_82;
    }

    v174 = 0;
    outlined init with take of Any(&v186, &v189);
    v76 = v190;
    v148 = __swift_project_boxed_opaque_existential_1(&v189, v190);
    isUniquelyReferenced_nonNull_native = *(v76 - 8);
    v149 = *(isUniquelyReferenced_nonNull_native + 64);
    v150 = MEMORY[0x1EEE9AC00](v148);
    v72 = (v149 + 15) & 0xFFFFFFFFFFFFFFF0;
    v89 = v155 - v72;
    v60 = *(isUniquelyReferenced_nonNull_native + 16);
    v60(v155 - v72, v150);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    if (isClassOrObjCExistentialType)
    {
      if (v149 != 8)
      {
        __break(1u);
LABEL_104:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v151 = *v89;
      v152 = *(isUniquelyReferenced_nonNull_native + 8);
      swift_unknownObjectRetain();
      v152(v155 - v72, v76);
    }

    else
    {
LABEL_102:
      v183 = v155;
      v154 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
      (v60)(v155 - v72, v89, v76, v154);
      v151 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      (*(isUniquelyReferenced_nonNull_native + 8))(v89, v76);
    }

    v153 = v158;
    v53 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v189);
    v145 = v157;
    v146 = v156;
    v147 = v153;
LABEL_92:
    (*(v146 + 8))(v147, v145);
    (*(v159 + 8))(v176, v167);
    return v53;
  }

  v55 = 0;
  v165 = *(a2 + 32) & 0xFFFFFFFFFFFFFFFELL;
  v164 = *(a2 + 48) & 0xFFFFFFFFFFFFFFFELL;
  while (1)
  {
    v58 = v40 == 1 ? v171 : &v171[*(v166 + 16 * v55 + 32)];
    v179 = v155;
    v59 = *(v165 + 8 * v55);
    v177 = *(v164 + 8 * v55);
    v60 = *v58;
    v61 = *(v59 - 1);
    v62 = *(v61 + 64);
    v63 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
    v64 = v155 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
    v178 = v61;
    v66 = *(v61 + 16);
    v65 = (v61 + 16);
    v68 = v66(v64, &v176[v67], v59, v63);
    v69 = MEMORY[0x1EEE9AC00](v68);
    v182 = v64;
    v66(v64, v64, v59, v69);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMR);
    v183 = v59;
    if (swift_dynamicCast())
    {
      outlined init with take of Equatable(&v186, &v189);
      v70 = v190;
      v71 = v191;
      __swift_project_boxed_opaque_existential_1(&v189, v190);
      v72 = v175;
      v73 = v181;
      v74 = (*(v71 + 16))(v175, v70, v71);
      v76 = v73;
      if (!v73)
      {
        v97 = v74;
        v109 = v75;
        __swift_destroy_boxed_opaque_existential_1(&v189);
        v181 = 0;
        if (v109)
        {
          LOBYTE(v189) = 1;
          v110 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
          v111 = objc_opt_self();
          v65 = &selRef_decomposedStringWithCanonicalMapping;
          v112 = [v111 expressionForConstantValue_];
          swift_unknownObjectRelease();
          LOBYTE(v189) = 0;
          v76 = v55;
          v113 = [v111 expressionForConstantValue_];
          swift_unknownObjectRelease();
          v114 = [v111 expressionForConditional:v97 trueExpression:v112 falseExpression:v113];

          v55 = v76;
          (*(v178 + 8))(v182, v183);
          v97 = v114;
        }

        else
        {
          (*(v178 + 8))(v182, v183);
        }

        goto LABEL_40;
      }

      v169 = v60;
      v170 = v55;
      __swift_destroy_boxed_opaque_existential_1(&v189);
      v174 = v73;
      v181 = 0;
    }

    else
    {
      v169 = v60;
      v170 = v55;
      v188 = 0;
      v186 = 0u;
      v187 = 0u;
      outlined destroy of TermOfAddress?(&v186, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
      v174 = 0;
    }

    v77 = MEMORY[0x1E69E7CC0];
    v78 = v177;
    v79 = v183;
    v60 = swift_getAssociatedTypeWitness();
    v173 = v155;
    v65 = *(v60 - 1);
    MEMORY[0x1EEE9AC00](v60);
    v81 = v155 - v80;
    v82 = type metadata accessor for Optional();
    v172 = v155;
    v83 = *(v82 - 8);
    v84 = MEMORY[0x1EEE9AC00](v82);
    v86 = v155 - v85;
    *&v189 = v77;
    v87 = v181;
    (*(v78 + 2))(&v189, v79, v78, v84);
    if (v87)
    {

      (v65[7])(v86, 1, 1, v60);
      (*(v83 + 8))(v86, v82);
      goto LABEL_87;
    }

    (v65[7])(v86, 0, 1, v60);
    (v65[4])(v81, v86, v60);
    v185 = v60;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v184);
    (v65[2])(boxed_opaque_existential_0, v81, v60);
    _expressionCompatibleValue(for:)(v184, &v186);
    __swift_destroy_boxed_opaque_existential_1(v184);
    if (!*(&v187 + 1))
    {
      break;
    }

    v177 = v81;
    v181 = 0;
    outlined init with take of Any(&v186, &v189);
    v89 = v190;
    v90 = __swift_project_boxed_opaque_existential_1(&v189, v190);
    v168 = v155;
    v76 = *(v89 - 1);
    v91 = *(v76 + 64);
    v92 = MEMORY[0x1EEE9AC00](v90);
    v93 = (v91 + 15) & 0xFFFFFFFFFFFFFFF0;
    v72 = v76 + 16;
    isUniquelyReferenced_nonNull_native = *(v76 + 16);
    (isUniquelyReferenced_nonNull_native)(v155 - v93, v92);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    if (isClassOrObjCExistentialType)
    {
      if (v91 != 8)
      {
        goto LABEL_99;
      }

      v95 = *(v155 - v93);
      v96 = *(v76 + 8);
      v76 += 8;
      swift_unknownObjectRetain();
      v96(v155 - v93, v89);
    }

    else
    {
      v155[1] = v155;
      v115 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
      (isUniquelyReferenced_nonNull_native)(v155 - v93, v155 - v93, v89, v115);
      v95 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v116 = *(v76 + 8);
      v76 += 8;
      v116(v155 - v93, v89);
    }

    v97 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v189);
    v98 = v65[1];
    ++v65;
    (v98)(v177, v60);
    (*(v178 + 8))(v182, v183);
    v72 = v175;
    v55 = v170;
    v60 = v169;
LABEL_40:
    v99 = v97;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v100 = *(v72 + 8);
    *&v189 = v100;
    v89 = v100;
    isClassOrObjCExistentialType = specialized __RawDictionaryStorage.find<A>(_:)();
    v102 = *(v100 + 2);
    v103 = (v101 & 1) == 0;
    v104 = __OFADD__(v102, v103);
    v105 = v102 + v103;
    if (v104)
    {
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    v65 = v101;
    if (*(v100 + 3) < v105)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v105, isUniquelyReferenced_nonNull_native);
      v89 = v189;
      isClassOrObjCExistentialType = specialized __RawDictionaryStorage.find<A>(_:)();
      if ((v65 & 1) != (v106 & 1))
      {
        goto LABEL_104;
      }

LABEL_46:
      if (v65)
      {
        goto LABEL_25;
      }

      goto LABEL_47;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v89 = v100;
      goto LABEL_46;
    }

    v170 = v55;
    v117 = isClassOrObjCExistentialType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation20PredicateExpressionsO10VariableIDVSo12NSExpressionCGMd, &_ss18_DictionaryStorageCy10Foundation20PredicateExpressionsO10VariableIDVSo12NSExpressionCGMR);
    v118 = static _DictionaryStorage.copy(original:)();
    v89 = v118;
    if (*(v100 + 2))
    {
      v169 = v60;
      isClassOrObjCExistentialType = v118 + 64;
      isUniquelyReferenced_nonNull_native = (v100 + 64);
      v119 = ((1 << v89[32]) + 63) >> 6;
      if (v89 != v100 || isClassOrObjCExistentialType >= isUniquelyReferenced_nonNull_native + 8 * v119)
      {
        isClassOrObjCExistentialType = memmove(isClassOrObjCExistentialType, v100 + 64, 8 * v119);
      }

      v72 = 0;
      *(v89 + 2) = *(v100 + 2);
      v120 = 1 << v100[32];
      v121 = *(v100 + 8);
      if (v120 < 64)
      {
        v122 = ~(-1 << v120);
      }

      else
      {
        v122 = -1;
      }

      v76 = v122 & v121;
      v60 = ((v120 + 63) >> 6);
      if ((v122 & v121) != 0)
      {
        do
        {
          v123 = __clz(__rbit64(v76));
          v76 &= v76 - 1;
LABEL_67:
          v126 = v123 | (v72 << 6);
          v127 = *(*(v100 + 7) + 8 * v126);
          *(*(v89 + 6) + 8 * v126) = *(*(v100 + 6) + 8 * v126);
          *(*(v89 + 7) + 8 * v126) = v127;
          isClassOrObjCExistentialType = v127;
        }

        while (v76);
      }

      v124 = v72;
      while (1)
      {
        v72 = v124 + 1;
        if (__OFADD__(v124, 1))
        {
          goto LABEL_101;
        }

        if (v72 >= v60)
        {
          v72 = v175;
          v60 = v169;
          break;
        }

        v125 = *(isUniquelyReferenced_nonNull_native + 8 * v72);
        ++v124;
        if (v125)
        {
          v123 = __clz(__rbit64(v125));
          v76 = (v125 - 1) & v125;
          goto LABEL_67;
        }
      }
    }

    isClassOrObjCExistentialType = v117;
    v55 = v170;
    if (v65)
    {
LABEL_25:
      v56 = *(v89 + 7);
      v57 = *(v56 + 8 * isClassOrObjCExistentialType);
      *(v56 + 8 * isClassOrObjCExistentialType) = v99;

      goto LABEL_26;
    }

LABEL_47:
    *&v89[8 * (isClassOrObjCExistentialType >> 6) + 64] |= 1 << isClassOrObjCExistentialType;
    *(*(v89 + 6) + 8 * isClassOrObjCExistentialType) = v60;
    *(*(v89 + 7) + 8 * isClassOrObjCExistentialType) = v99;

    v107 = *(v89 + 2);
    v104 = __OFADD__(v107, 1);
    v108 = v107 + 1;
    if (v104)
    {
      goto LABEL_100;
    }

    *(v89 + 2) = v108;
LABEL_26:
    *(v72 + 8) = v89;
    ++v55;
    v40 = v180;
    if (v55 == v180)
    {
      goto LABEL_73;
    }
  }

  (v65[1])(v81, v60);
  outlined destroy of TermOfAddress?(&v186, &_sypSgMd, &_sypSgMR);
LABEL_87:
  v53 = v163;
  v142 = v158;
  if (!v174)
  {
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v143 = 2;
  }

  swift_willThrow();
  (*(v178 + 8))(v182, v183);
  (*(v156 + 8))(v142, v157);
  (*(v159 + 8))(v176, v167);
  return v53;
}

void *protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.PredicateEvaluate<A, Pack{repeat B}>(int64_t a1, uint64_t a2)
{
  result = PredicateExpressions.PredicateEvaluate.convert(state:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

id PredicateExpressions.ExpressionEvaluate.convert(state:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v6 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v174 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v12 = *(a2 + 16);
  v13 = 8 * v12;
  v182 = v14;
  v178 = &v174 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = v10;
  v179 = v15;
  if (v12 == 1)
  {
    TupleTypeMetadata = *(*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v10);
    v17 = &v174 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v12)
    {
      v18 = 0;
      v19 = *(a2 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v12 < 4)
      {
        goto LABEL_9;
      }

      if (&v17[-v19] < 0x20)
      {
        goto LABEL_9;
      }

      v18 = v12 & 0xFFFFFFFFFFFFFFFCLL;
      v20 = (v19 + 16);
      v21 = v17 + 16;
      v22 = v12 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v23 = *v20;
        *(v21 - 1) = *(v20 - 1);
        *v21 = v23;
        v20 += 2;
        v21 += 2;
        v22 -= 4;
      }

      while (v22);
      if (v12 != v18)
      {
LABEL_9:
        v24 = v12 - v18;
        v25 = 8 * v18;
        v26 = &v17[8 * v18];
        v27 = (v19 + v25);
        do
        {
          v28 = *v27++;
          *v26 = v28;
          v26 += 8;
          --v24;
        }

        while (v24);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v193 = a1;
  v181 = v8;
  v192 = TupleTypeMetadata;
  v183 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v200 = &v174 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = v5;
  v205 = v12;
  v187 = v31;
  v207 = v2;
  if (v12 == 1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v35 = type metadata accessor for PredicateExpressions.Variable(0, AssociatedTypeWitness, v33, v34);
  }

  else
  {
    v206 = &v174;
    MEMORY[0x1EEE9AC00](v29);
    if (v12)
    {
      v36 = *(a2 + 32) & 0xFFFFFFFFFFFFFFFELL;
      v37 = *(a2 + 56) & 0xFFFFFFFFFFFFFFFELL;
      v38 = (&v174 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      v39 = v205;
      do
      {
        v36 += 8;
        v37 += 8;
        v40 = swift_getAssociatedTypeWitness();
        *v38++ = type metadata accessor for PredicateExpressions.Variable(255, v40, v41, v42);
        --v39;
      }

      while (v39);
    }

    v12 = v205;
    v35 = swift_getTupleTypeMetadata();
  }

  v186 = &v174;
  v191 = v35;
  v204 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v196 = &v174 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = &v174;
  MEMORY[0x1EEE9AC00](v44);
  v45 = (&v174 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v12)
  {
    v46 = *(a2 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v47 = *(a2 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v48 = v45;
    v49 = v205;
    do
    {
      v46 += 8;
      v47 += 8;
      *v48++ = swift_getAssociatedTypeWitness();
      --v49;
    }

    while (v49);
  }

  v50 = v205;
  v51 = type metadata accessor for Expression(255, v205, v45, v188);
  v52 = type metadata accessor for Optional();
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v174 - v54;
  v184 = &v174;
  v56 = *(v51 - 8);
  v58 = MEMORY[0x1EEE9AC00](v57);
  v60 = (&v174 - v59);
  *&v213 = MEMORY[0x1E69E7CC0];
  v61 = v207;
  (*(*(a2 + 48) + 16))(&v213, *(a2 + 24), v58);
  if (v61)
  {

    (*(v56 + 56))(v55, 1, 1, v51);
    (*(v53 + 8))(v55, v52);
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v62 = 2;
    swift_willThrow();
    return v187;
  }

  v206 = 0;

  (*(v56 + 56))(v55, 0, 1, v51);
  v175 = v56;
  (*(v56 + 32))(v60, v55, v51);
  v64 = *(v51 + 44);
  v65 = v204[2];
  v177 = v60;
  v65(v196, v60 + v64, v191);
  isClassOrObjCExistentialType = (*(v183 + 16))(v200, &v216[*(a2 + 68)], v192);
  v176 = v51;
  if (v50)
  {
    v67 = 0;
    v190 = *(a2 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v189 = *(a2 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v68 = v193;
    while (1)
    {
      if (v50 == 1)
      {
        v71 = v196;
      }

      else
      {
        v71 = &v196[*(v191 + 16 * v67 + 32)];
      }

      v204 = &v174;
      v72 = *(v190 + 8 * v67);
      v201 = v67;
      v73 = *(v189 + 8 * v67);
      v202 = *v71;
      v74 = *(v72 - 1);
      v75 = *(v74 + 64);
      v76 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
      v77 = &v174 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
      v203 = v74;
      v78 = *(v74 + 16);
      v80 = v78(v77, &v200[v79], v72, v76);
      v81 = MEMORY[0x1EEE9AC00](v80);
      v207 = v77;
      v78(v77, v77, v72, v81);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMR);
      v216 = v72;
      if (swift_dynamicCast())
      {
        outlined init with take of Equatable(&v210, &v213);
        v82 = v214;
        v83 = v215;
        __swift_project_boxed_opaque_existential_1(&v213, v214);
        v84 = v206;
        v85 = (*(v83 + 16))(v68, v82, v83);
        v87 = v84;
        if (!v84)
        {
          v109 = v85;
          v110 = v86;
          __swift_destroy_boxed_opaque_existential_1(&v213);
          v206 = 0;
          if (v110)
          {
            LOBYTE(v213) = 1;
            v111 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
            v112 = objc_opt_self();
            v113 = [v112 expressionForConstantValue_];
            swift_unknownObjectRelease();
            LOBYTE(v213) = 0;
            v114 = [v112 expressionForConstantValue_];
            swift_unknownObjectRelease();
            v87 = [v112 expressionForConditional:v109 trueExpression:v113 falseExpression:v114];

            (*(v203 + 8))(v207, v216);
            v109 = v87;
          }

          else
          {
            (*(v203 + 8))(v207, v216);
          }

          v103 = v202;
          v50 = v205;
          goto LABEL_44;
        }

        __swift_destroy_boxed_opaque_existential_1(&v213);
        v199 = v84;
        v206 = 0;
      }

      else
      {
        v212 = 0;
        v210 = 0u;
        v211 = 0u;
        outlined destroy of TermOfAddress?(&v210, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
        v199 = 0;
      }

      v88 = v216;
      v89 = swift_getAssociatedTypeWitness();
      v198 = &v174;
      v90 = *(v89 - 1);
      MEMORY[0x1EEE9AC00](v89);
      v91 = v73;
      v93 = &v174 - v92;
      v94 = type metadata accessor for Optional();
      v197 = &v174;
      v95 = *(v94 - 8);
      v96 = MEMORY[0x1EEE9AC00](v94);
      v98 = &v174 - v97;
      *&v213 = MEMORY[0x1E69E7CC0];
      v99 = v206;
      (*(v91 + 16))(&v213, v88, v91, v96);
      if (v99)
      {

        (*(v90 + 56))(v98, 1, 1, v89);
        (*(v95 + 8))(v98, v94);
LABEL_87:
        v63 = v187;
        v163 = v176;
        v164 = v175;
        v165 = v177;
        if (!v199)
        {
          lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
          swift_allocError();
          *v166 = 2;
        }

        swift_willThrow();
        (*(v203 + 8))(v207, v216);
        (*(v164 + 8))(v165, v163);
        (*(v183 + 8))(v200, v192);
        return v63;
      }

      (*(v90 + 56))(v98, 0, 1, v89);
      (*(v90 + 32))(v93, v98, v89);
      v209 = v89;
      v100 = __swift_allocate_boxed_opaque_existential_0(&v208);
      (*(v90 + 16))(v100, v93, v89);
      _expressionCompatibleValue(for:)(&v208, &v210);
      __swift_destroy_boxed_opaque_existential_1(&v208);
      if (!*(&v211 + 1))
      {
        (*(v90 + 8))(v93, v89);
        outlined destroy of TermOfAddress?(&v210, &_sypSgMd, &_sypSgMR);
        goto LABEL_87;
      }

      v195 = v93;
      v206 = 0;
      outlined init with take of Any(&v210, &v213);
      v101 = v214;
      v102 = __swift_project_boxed_opaque_existential_1(&v213, v214);
      v194 = &v174;
      v103 = *(v101 - 8);
      v104 = v103[8];
      v105 = MEMORY[0x1EEE9AC00](v102);
      v72 = ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
      v87 = (&v174 - v72);
      v50 = (v103 + 2);
      v106 = v103[2];
      v106(&v174 - v72, v105);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      if (isClassOrObjCExistentialType)
      {
        if (v104 != 8)
        {
          goto LABEL_100;
        }

        v107 = *v87;
        v108 = v103[1];
        swift_unknownObjectRetain();
        v108(&v174 - v72, v101);
      }

      else
      {
        v174 = &v174;
        v125 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
        (v106)(&v174 - v72, &v174 - v72, v101, v125);
        v107 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        (v103[1])(&v174 - v72, v101);
      }

      v109 = [objc_opt_self() expressionForConstantValue_];
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_1(&v213);
      (*(v90 + 8))(v195, v89);
      (*(v203 + 8))(v207, v216);
      v68 = v193;
      v50 = v205;
      v103 = v202;
LABEL_44:
      v89 = v109;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v116 = *(v68 + 8);
      *&v213 = v116;
      v101 = v116;
      isClassOrObjCExistentialType = specialized __RawDictionaryStorage.find<A>(_:)();
      v118 = *(v116 + 16);
      v119 = (v117 & 1) == 0;
      v120 = __OFADD__(v118, v119);
      v121 = v118 + v119;
      if (v120)
      {
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      v87 = v117;
      if (*(v116 + 24) < v121)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v121, isUniquelyReferenced_nonNull_native);
        v101 = v213;
        isClassOrObjCExistentialType = specialized __RawDictionaryStorage.find<A>(_:)();
        if ((v87 & 1) != (v122 & 1))
        {
          goto LABEL_105;
        }

LABEL_50:
        if (v87)
        {
          goto LABEL_25;
        }

        goto LABEL_51;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v101 = v116;
        goto LABEL_50;
      }

      v126 = isClassOrObjCExistentialType;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation20PredicateExpressionsO10VariableIDVSo12NSExpressionCGMd, &_ss18_DictionaryStorageCy10Foundation20PredicateExpressionsO10VariableIDVSo12NSExpressionCGMR);
      v127 = static _DictionaryStorage.copy(original:)();
      v101 = v127;
      if (*(v116 + 16))
      {
        v128 = (v127 + 64);
        v129 = v116 + 64;
        v130 = ((1 << *(v101 + 32)) + 63) >> 6;
        if (v101 != v116 || v128 >= v129 + 8 * v130)
        {
          memmove(v128, (v116 + 64), 8 * v130);
        }

        v131 = 0;
        *(v101 + 16) = *(v116 + 16);
        v132 = 1 << *(v116 + 32);
        v133 = *(v116 + 64);
        if (v132 < 64)
        {
          v134 = ~(-1 << v132);
        }

        else
        {
          v134 = -1;
        }

        v135 = v134 & v133;
        v72 = ((v132 + 63) >> 6);
        if ((v134 & v133) != 0)
        {
          do
          {
            v136 = __clz(__rbit64(v135));
            v135 &= v135 - 1;
LABEL_68:
            v139 = v136 | (v131 << 6);
            v140 = *(*(v116 + 56) + 8 * v139);
            *(*(v101 + 48) + 8 * v139) = *(*(v116 + 48) + 8 * v139);
            *(*(v101 + 56) + 8 * v139) = v140;
            v141 = v140;
          }

          while (v135);
        }

        v137 = v131;
        while (1)
        {
          v131 = v137 + 1;
          if (__OFADD__(v137, 1))
          {
            goto LABEL_104;
          }

          if (v131 >= v72)
          {
            v68 = v193;
            v50 = v205;
            break;
          }

          v138 = *(v129 + 8 * v131);
          ++v137;
          if (v138)
          {
            v136 = __clz(__rbit64(v138));
            v135 = (v138 - 1) & v138;
            goto LABEL_68;
          }
        }
      }

      isClassOrObjCExistentialType = v126;
      v103 = v202;
      if (v87)
      {
LABEL_25:
        v69 = *(v101 + 56);
        v70 = *(v69 + 8 * isClassOrObjCExistentialType);
        *(v69 + 8 * isClassOrObjCExistentialType) = v89;

        goto LABEL_26;
      }

LABEL_51:
      *(v101 + 8 * (isClassOrObjCExistentialType >> 6) + 64) |= 1 << isClassOrObjCExistentialType;
      *(*(v101 + 48) + 8 * isClassOrObjCExistentialType) = v103;
      *(*(v101 + 56) + 8 * isClassOrObjCExistentialType) = v89;

      v123 = *(v101 + 16);
      v120 = __OFADD__(v123, 1);
      v124 = v123 + 1;
      if (v120)
      {
        goto LABEL_101;
      }

      *(v101 + 16) = v124;
LABEL_26:
      *(v68 + 8) = v101;
      v67 = v201 + 1;
      if (v201 + 1 == v50)
      {
        goto LABEL_74;
      }
    }
  }

  v68 = v193;
LABEL_74:
  v142 = v177[3];
  v143 = v177[4];
  v144 = __swift_project_boxed_opaque_existential_1(v177, v142);
  v145 = MEMORY[0x1EEE9AC00](v144);
  (*(v147 + 16))(&v174 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0), v144, v142, v145);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(&v210, &v213);
    v148 = v214;
    v149 = v215;
    __swift_project_boxed_opaque_existential_1(&v213, v214);
    v150 = v206;
    v151 = (*(v149 + 16))(v68, v148, v149);
    v152 = v150;
    v153 = MEMORY[0x1E69E7CC0];
    v154 = v176;
    if (!v150)
    {
      v63 = v151;
      __swift_destroy_boxed_opaque_existential_1(&v213);
LABEL_97:
      (*(v175 + 8))(v177, v154);
      (*(v183 + 8))(v200, v192);
      return v63;
    }

    __swift_destroy_boxed_opaque_existential_1(&v213);
    v155 = 0;
    v89 = v152;
  }

  else
  {
    v212 = 0;
    v210 = 0u;
    v211 = 0u;
    outlined destroy of TermOfAddress?(&v210, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
    v89 = 0;
    v153 = MEMORY[0x1E69E7CC0];
    v155 = v206;
    v154 = v176;
  }

  *&v213 = v153;
  v156 = *(*(v143 + 8) + 16);
  v157 = v181;
  v156(&v213, v142);
  if (v155)
  {

    (*(v182 + 56))(v157, 1, 1, v188);
    (*(v179 + 8))(v157, v180);
LABEL_81:
    v63 = v187;
    if (!v89)
    {
      lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
      swift_allocError();
      *v162 = 2;
    }

    swift_willThrow();
    (*(v175 + 8))(v177, v154);
    (*(v183 + 8))(v200, v192);
    return v63;
  }

  v158 = v182;
  v159 = v188;
  (*(v182 + 56))(v157, 0, 1, v188);
  v160 = v178;
  (*(v158 + 32))(v178, v157, v159);
  v209 = v159;
  v161 = __swift_allocate_boxed_opaque_existential_0(&v208);
  (*(v158 + 16))(v161, v160, v159);
  _expressionCompatibleValue(for:)(&v208, &v210);
  __swift_destroy_boxed_opaque_existential_1(&v208);
  if (!*(&v211 + 1))
  {
    (*(v158 + 8))(v160, v159);
    outlined destroy of TermOfAddress?(&v210, &_sypSgMd, &_sypSgMR);
    goto LABEL_81;
  }

  v199 = 0;
  outlined init with take of Any(&v210, &v213);
  v101 = v214;
  v168 = __swift_project_boxed_opaque_existential_1(&v213, v214);
  v103 = *(v101 - 8);
  v169 = v103[8];
  v170 = MEMORY[0x1EEE9AC00](v168);
  v50 = (v169 + 15) & 0xFFFFFFFFFFFFFFF0;
  v87 = &v174 - v50;
  v72 = v103[2];
  v72(&v174 - v50, v170);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
LABEL_102:
    v216 = &v174;
    v173 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
    (v72)(&v174 - v50, v87, v101, v173);
    v171 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (v103[1])(v87, v101);
    goto LABEL_96;
  }

  if (v169 == 8)
  {
    v171 = *v87;
    v172 = v103[1];
    swift_unknownObjectRetain();
    v172(&v174 - v50, v101);
LABEL_96:
    v154 = v176;
    v63 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v213);
    (*(v182 + 8))(v178, v188);
    goto LABEL_97;
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.ExpressionEvaluate<A, Pack{repeat B}, C>(uint64_t a1, uint64_t a2)
{
  result = PredicateExpressions.ExpressionEvaluate.convert(state:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.Conjunction<A, B>(uint64_t a1, uint64_t a2)
{
  result = PredicateExpressions.Conjunction.convert(state:)(a1, a2, &selRef_andPredicateWithSubpredicates_);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t PredicateExpressions.Conjunction.convert(state:)(uint64_t a1, uint64_t a2, SEL *a3)
{
  v67 = a3;
  v5 = v4;
  v6 = v3;
  v7 = a2;
  v71 = *(a2 + 24);
  v70 = *(v71 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v69 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_181244B50;
  (*(v12 + 16))(v15, v6, v11);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMR);
  v18 = swift_dynamicCast();
  v68 = a1;
  if (!v18)
  {
    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    outlined destroy of TermOfAddress?(&v75, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
    v23 = 0;
    goto LABEL_5;
  }

  v72 = v16;
  outlined init with take of Equatable(&v75, &v78);
  v19 = v79;
  v20 = v80;
  __swift_project_boxed_opaque_existential_1(&v78, v79);
  v21 = (*(v20 + 16))(a1, v19, v20);
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(&v78);
    v5 = 0;
    v23 = v4;
    v16 = v72;
LABEL_5:
    *&v78 = MEMORY[0x1E69E7CC0];
    (*(*(v7 + 32) + 16))(&v81, &v78, v11);
    if (v5)
    {

LABEL_10:
      if (!v23)
      {
        lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
        swift_allocError();
        *v24 = 2;
      }

      swift_willThrow();
      *(v16 + 16) = 0;
      goto LABEL_13;
    }

    v11 = 0;

    if (v81 == 2)
    {
      goto LABEL_10;
    }

    v72 = v16;
    v74 = MEMORY[0x1E69E6370];
    LOBYTE(v73[0]) = v81 & 1;
    _expressionCompatibleValue(for:)(v73, &v75);
    __swift_destroy_boxed_opaque_existential_1(v73);
    if (!*(&v76 + 1))
    {
      outlined destroy of TermOfAddress?(&v75, &_sypSgMd, &_sypSgMR);
      v16 = v72;
      goto LABEL_10;
    }

    outlined init with take of Any(&v75, &v78);
    v28 = v79;
    v29 = __swift_project_boxed_opaque_existential_1(&v78, v79);
    v65 = v62;
    v30 = *(v28 - 8);
    v31 = *(v30 + 64);
    v32 = MEMORY[0x1EEE9AC00](v29);
    v64 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
    v66 = v30;
    v34 = *(v30 + 16);
    v33 = (v30 + 16);
    v35 = (v62 - v64);
    v63 = v34;
    v34(v32);
    result = _swift_isClassOrObjCExistentialType();
    if (result)
    {
      if (v31 != 8)
      {
        __break(1u);
        goto LABEL_40;
      }

      v36 = *v35;
      v37 = *(v66 + 8);
      swift_unknownObjectRetain();
      v37(v35, v28);
    }

    else
    {
      v62[1] = v62;
      v60 = MEMORY[0x1EEE9AC00](result);
      v62[0] = v35;
      (v63)(v62 - v64, v35, v28, v60);
      v36 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      (*(v66 + 8))(v62[0], v28);
    }

    v26 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v78);
    goto LABEL_22;
  }

  v26 = v21;
  v27 = v22;
  __swift_destroy_boxed_opaque_existential_1(&v78);
  if ((v27 & 1) == 0)
  {
LABEL_22:
    LOBYTE(v78) = 1;
    v38 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v39 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    v40 = [objc_allocWithZone(NSComparisonPredicate) initWithLeftExpression:v26 rightExpression:v39 modifier:0 type:4 options:0];

    v26 = v40;
  }

  v41 = v71;
  *(v72 + 32) = v26;
  (v70[2])(v69, v6 + *(v7 + 52), v41);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(&v75, &v78);
    v42 = v79;
    v43 = v80;
    __swift_project_boxed_opaque_existential_1(&v78, v79);
    v46 = (*(v43 + 16))(v68, v42, v43);
    v48 = v47;
    __swift_destroy_boxed_opaque_existential_1(&v78);
    v49 = v72;
    v50 = v67;
    if (v48)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v77 = 0;
  v75 = 0u;
  v76 = 0u;
  outlined destroy of TermOfAddress?(&v75, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
  v17 = 0;
  *&v78 = MEMORY[0x1E69E7CC0];
  (*(*(v7 + 40) + 16))(&v81, &v78, v71);
  v11 = 0;

  v44 = v72;
  if (v81 == 2)
  {
LABEL_28:
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v45 = 2;
    swift_willThrow();

    *(v44 + 16) = 0;
LABEL_13:

    return v11;
  }

  v74 = MEMORY[0x1E69E6370];
  LOBYTE(v73[0]) = v81 & 1;
  _expressionCompatibleValue(for:)(v73, &v75);
  __swift_destroy_boxed_opaque_existential_1(v73);
  if (!*(&v76 + 1))
  {
    outlined destroy of TermOfAddress?(&v75, &_sypSgMd, &_sypSgMR);
    goto LABEL_28;
  }

  v72 = v44;
  outlined init with take of Any(&v75, &v78);
  v28 = v79;
  v51 = __swift_project_boxed_opaque_existential_1(&v78, v79);
  v71 = v62;
  v7 = *(v28 - 8);
  v52 = *(v7 + 64);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v35 = ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = (v62 - v35);
  v31 = *(v7 + 16);
  v31(v62 - v35, v53);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
LABEL_40:
    v70 = v62;
    v61 = MEMORY[0x1EEE9AC00](result);
    (v31)(v62 - v35, v33, v28, v61);
    v54 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (*(v7 + 8))(v33, v28);
    goto LABEL_35;
  }

  if (v52 == 8)
  {
    v54 = *v33;
    v55 = *(v7 + 8);
    swift_unknownObjectRetain();
    v55(v62 - v35, v28);
LABEL_35:
    v49 = v72;
    v50 = v67;
    v46 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v78);
LABEL_36:
    LOBYTE(v78) = 1;
    v56 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v57 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    v58 = [objc_allocWithZone(NSComparisonPredicate) initWithLeftExpression:v46 rightExpression:v57 modifier:0 type:4 options:0];

    v46 = v58;
LABEL_37:
    *(v49 + 40) = v46;
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSPredicate, off_1E69EE7E8);
    v59 = _ContiguousArrayBuffer._asCocoaArray()();
    v11 = [objc_opt_self() *v50];
    swift_unknownObjectRelease();
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.Disjunction<A, B>(uint64_t a1, uint64_t a2)
{
  result = PredicateExpressions.Conjunction.convert(state:)(a1, a2, &selRef_orPredicateWithSubpredicates_);
  if (v2)
  {
    return v4;
  }

  return result;
}

char *protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.Equal<A, B>(uint64_t a1, uint64_t a2)
{
  result = PredicateExpressions.Equal.convert(state:)(a1, a2, 4);
  if (v2)
  {
    return v4;
  }

  return result;
}

char *PredicateExpressions.Equal.convert(state:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v88 = a3;
  v5 = v4;
  v97 = *(a2 + 24);
  v93 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v92 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 32);
  v96 = v8;
  v10 = *(v8 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v98 = *(v12 - 8);
  v99 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v90 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v85 - v15;
  v100 = AssociatedTypeWitness;
  v109 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v89 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v85 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  (*(v25 + 16))(&v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v10, v23);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMR);
  v26 = swift_dynamicCast();
  v27 = MEMORY[0x1E69E7CC0];
  v94 = a1;
  if (v26)
  {
    v95 = v3;
    outlined init with take of Equatable(&v103, &v106);
    v28 = v107;
    v29 = v108;
    __swift_project_boxed_opaque_existential_1(&v106, v107);
    v30 = (*(v29 + 16))(a1, v28, v29);
    if (!v4)
    {
      v37 = v31;
      v87 = v30;
      __swift_destroy_boxed_opaque_existential_1(&v106);
      if (v37)
      {
        LOBYTE(v106) = 1;
        v38 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v39 = objc_opt_self();
        v40 = [v39 expressionForConstantValue_];
        swift_unknownObjectRelease();
        LOBYTE(v106) = 0;
        v41 = [v39 expressionForConstantValue_];
        swift_unknownObjectRelease();
        v42 = v39;
        v43 = v87;
        v44 = [v42 expressionForConditional:v87 trueExpression:v40 falseExpression:v41];

        v87 = v44;
      }

      v45 = v100;
      goto LABEL_20;
    }

    __swift_destroy_boxed_opaque_existential_1(&v106);
    v5 = 0;
    v32 = v4;
    v3 = v95;
    v27 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v105 = 0;
    v103 = 0u;
    v104 = 0u;
    outlined destroy of TermOfAddress?(&v103, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
    v32 = 0;
  }

  *&v106 = v27;
  (*(v9 + 16))(&v106, v10, v9);
  if (v5)
  {

    (*(v109 + 56))(v16, 1, 1, v100);
    (v98[1])(v16, v99);
    if (v32)
    {
LABEL_8:
      swift_willThrow();
      return v3;
    }

LABEL_7:
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v33 = 2;
    goto LABEL_8;
  }

  v95 = v3;
  v34 = 0;

  v35 = v109;
  v3 = v100;
  (*(v109 + 56))(v16, 0, 1, v100);
  (*(v35 + 32))(v21, v16, v3);
  v102 = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v101);
  (*(v35 + 16))(boxed_opaque_existential_0, v21, v3);
  _expressionCompatibleValue(for:)(v101, &v103);
  __swift_destroy_boxed_opaque_existential_1(v101);
  if (!*(&v104 + 1))
  {
    (*(v35 + 8))(v21, v3);
    outlined destroy of TermOfAddress?(&v103, &_sypSgMd, &_sypSgMR);
    if (v32)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  outlined init with take of Any(&v103, &v106);
  v46 = v107;
  v47 = __swift_project_boxed_opaque_existential_1(&v106, v107);
  v87 = &v85;
  v48 = *(v46 - 1);
  v49 = *(v48 + 64);
  v50 = MEMORY[0x1EEE9AC00](v47);
  v86 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  v51 = (&v85 - v86);
  v52 = *(v48 + 16);
  v52(&v85 - v86, v50);
  result = _swift_isClassOrObjCExistentialType();
  if (result)
  {
    if (v49 != 8)
    {
      __break(1u);
LABEL_36:
      v98 = &v85;
      v84 = MEMORY[0x1EEE9AC00](result);
      (v52)(&v85 - v21, v46, v34, v84);
      v75 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      (*(v48 + 8))(v46, v34);
      goto LABEL_31;
    }

    v54 = *v51;
    v55 = *(v48 + 8);
    swift_unknownObjectRetain();
    v55(v51, v46);
  }

  else
  {
    v85 = &v85;
    v83 = MEMORY[0x1EEE9AC00](result);
    (v52)(&v85 - v86, v51, v46, v83);
    v54 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (*(v48 + 8))(v51, v46);
  }

  v45 = v100;
  v87 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v106);
  (*(v109 + 8))(v21, v45);
LABEL_20:
  v56 = v94;
  (*(v93 + 16))(v92, &v95[*(v96 + 60)], v97);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(&v103, &v106);
    v57 = v107;
    v58 = v108;
    __swift_project_boxed_opaque_existential_1(&v106, v107);
    v64 = (*(v58 + 16))(v56, v57, v58);
    v66 = v65;
    __swift_destroy_boxed_opaque_existential_1(&v106);
    if (v66)
    {
      LOBYTE(v106) = 1;
      v67 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v68 = objc_opt_self();
      v69 = [v68 expressionForConstantValue_];
      swift_unknownObjectRelease();
      LOBYTE(v106) = 0;
      v70 = [v68 expressionForConstantValue_];
      swift_unknownObjectRelease();
      v71 = [v68 expressionForConditional:v64 trueExpression:v69 falseExpression:v70];

      v64 = v71;
    }

    goto LABEL_32;
  }

  v105 = 0;
  v103 = 0u;
  v104 = 0u;
  outlined destroy of TermOfAddress?(&v103, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
  v49 = 0;
  *&v106 = MEMORY[0x1E69E7CC0];
  v59 = v90;
  (*(*(v96 + 40) + 16))(&v106, v97);

  v60 = v109;
  (*(v109 + 56))(v59, 0, 1, v45);
  v61 = v89;
  (*(v60 + 32))(v89, v59, v45);
  v102 = v45;
  v62 = __swift_allocate_boxed_opaque_existential_0(v101);
  (*(v60 + 16))(v62, v61, v45);
  _expressionCompatibleValue(for:)(v101, &v103);
  __swift_destroy_boxed_opaque_existential_1(v101);
  if (!*(&v104 + 1))
  {
    v82 = *(v60 + 8);
    v3 = (v60 + 8);
    v82(v61, v45);
    outlined destroy of TermOfAddress?(&v103, &_sypSgMd, &_sypSgMR);
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v63 = 2;
    swift_willThrow();

    return v3;
  }

  outlined init with take of Any(&v103, &v106);
  v34 = v107;
  v72 = __swift_project_boxed_opaque_existential_1(&v106, v107);
  v99 = &v85;
  v48 = *(v34 - 8);
  v73 = *(v48 + 64);
  v74 = MEMORY[0x1EEE9AC00](v72);
  v21 = ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = (&v85 - v21);
  v52 = *(v48 + 16);
  v52((&v85 - v21), v74);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
    goto LABEL_36;
  }

  if (v73 == 8)
  {
    v75 = *v46;
    v76 = *(v48 + 8);
    swift_unknownObjectRetain();
    v76(&v85 - v21, v34);
LABEL_31:
    v77 = v89;
    v78 = v100;
    v64 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v106);
    (*(v109 + 8))(v77, v78);
LABEL_32:
    v79 = v88;
    v80 = objc_allocWithZone(NSComparisonPredicate);
    v81 = v87;
    v3 = [v80 initWithLeftExpression:v87 rightExpression:v64 modifier:0 type:v79 options:0];

    return v3;
  }

  __break(1u);
  return result;
}

char *protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.NotEqual<A, B>(uint64_t a1, uint64_t a2)
{
  result = PredicateExpressions.Equal.convert(state:)(a1, a2, 5);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t PredicateExpressions.Arithmetic.convert(state:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = a2;
  v104 = a1;
  v103 = *(a2 + 24);
  v101 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v100 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 32);
  v9 = *(v7 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v105 = *(v11 - 8);
  v106 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v98 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v93 - v14;
  v110 = AssociatedTypeWitness;
  v109 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v16);
  v97 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v102 = &v93 - v19;
  v20 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v2;
  v25 = 0xEE003A7463617274;
  v26 = 0x6275733A6D6F7266;
  if (v24 != 1)
  {
    v26 = 0x796C7069746C756DLL;
    v25 = 0xEC0000003A79623ALL;
  }

  v27 = v24 == 0;
  if (*v2)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0x3A6F743A646461;
  }

  v96 = v28;
  if (v27)
  {
    v29 = 0xE700000000000000;
  }

  else
  {
    v29 = v25;
  }

  v107 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_181215ED0;
  v30 = *(v5 + 60);
  v31 = *(v20 + 16);
  v119 = v2;
  v31(v23, &v2[v30], v9);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMR);
  v32 = swift_dynamicCast();
  v33 = MEMORY[0x1E69E7CC0];
  if (v32)
  {
    outlined init with take of Equatable(&v113, &v116);
    v34 = v117;
    v35 = v118;
    __swift_project_boxed_opaque_existential_1(&v116, v117);
    v36 = (*(v35 + 16))(v104, v34, v35);
    if (!v3)
    {
      v45 = v36;
      v46 = v37;
      __swift_destroy_boxed_opaque_existential_1(&v116);
      if (v46)
      {
        LOBYTE(v116) = 1;
        v47 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v48 = objc_opt_self();
        v49 = [v48 expressionForConstantValue_];
        swift_unknownObjectRelease();
        LOBYTE(v116) = 0;
        v50 = [v48 expressionForConstantValue_];
        swift_unknownObjectRelease();
        v51 = [v48 expressionForConditional:v45 trueExpression:v49 falseExpression:v50];

        v45 = v51;
      }

      v39 = v108;
      goto LABEL_28;
    }

    __swift_destroy_boxed_opaque_existential_1(&v116);
    v4 = 0;
    v38 = v3;
    v33 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v115 = 0;
    v113 = 0u;
    v114 = 0u;
    outlined destroy of TermOfAddress?(&v113, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
    v38 = 0;
  }

  *&v116 = v33;
  (*(v8 + 16))(&v116, v9, v8);
  if (v4)
  {

    (*(v109 + 56))(v15, 1, 1, v110);
    (*(v105 + 8))(v15, v106);
    v39 = v108;
    if (v38)
    {
LABEL_16:
      swift_willThrow();
LABEL_31:
      v39[2] = 0;

      return v15;
    }

LABEL_15:
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v40 = 2;
    goto LABEL_16;
  }

  v42 = v109;
  v41 = v110;
  (*(v109 + 56))(v15, 0, 1, v110);
  v43 = v102;
  (*(v42 + 32))(v102, v15, v41);
  v112 = v41;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v111);
  (*(v42 + 16))(boxed_opaque_existential_0, v43, v41);
  _expressionCompatibleValue(for:)(v111, &v113);
  v39 = v108;
  __swift_destroy_boxed_opaque_existential_1(v111);
  if (!*(&v114 + 1))
  {
    (*(v42 + 8))(v43, v41);

    outlined destroy of TermOfAddress?(&v113, &_sypSgMd, &_sypSgMR);
    if (v38)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  outlined init with take of Any(&v113, &v116);
  v52 = v117;
  v53 = __swift_project_boxed_opaque_existential_1(&v116, v117);
  v95 = &v93;
  v54 = *(v52 - 8);
  v55 = v54[8];
  v56 = MEMORY[0x1EEE9AC00](v53);
  v57 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
  v58 = &v93 - v57;
  v59 = (v54 + 2);
  v94 = v54[2];
  v94(&v93 - v57, v56);
  result = _swift_isClassOrObjCExistentialType();
  if (result)
  {
    if (v55 != 8)
    {
      __break(1u);
LABEL_46:
      v106 = &v93;
      v92 = MEMORY[0x1EEE9AC00](result);
      (v5)(&v93 - v59, v58, v52, v92);
      v86 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      (*(v57 + 8))(v58, v52);
      goto LABEL_41;
    }

    v61 = *v58;
    v62 = v54[1];
    swift_unknownObjectRetain();
    v62(&v93 - v57, v52);
  }

  else
  {
    v93 = &v93;
    v91 = MEMORY[0x1EEE9AC00](result);
    (v94)(&v93 - v57, &v93 - v57, v52, v91);
    v61 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (v54[1])(&v93 - v57, v52);
  }

  v39 = v108;
  v63 = v109;
  v64 = v110;
  v45 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v116);
  (*(v63 + 8))(v102, v64);
LABEL_28:
  v65 = v119;
  v66 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSExpression, off_1E69EE3D0);
  v39[7] = v66;
  v39[4] = v45;
  (*(v101 + 16))(v100, &v65[*(v5 + 64)], v103);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(&v113, &v116);
    v67 = v117;
    v68 = v118;
    __swift_project_boxed_opaque_existential_1(&v116, v117);
    v75 = (*(v68 + 16))(v104, v67, v68);
    v77 = v76;
    __swift_destroy_boxed_opaque_existential_1(&v116);
    if (v77)
    {
      LOBYTE(v116) = 1;
      v78 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v79 = objc_opt_self();
      v80 = [v79 expressionForConstantValue_];
      swift_unknownObjectRelease();
      LOBYTE(v116) = 0;
      v81 = [v79 expressionForConstantValue_];
      swift_unknownObjectRelease();
      v82 = [v79 expressionForConditional:v75 trueExpression:v80 falseExpression:v81];

      v75 = v82;
    }

    goto LABEL_42;
  }

  v104 = v66;
  v115 = 0;
  v113 = 0u;
  v114 = 0u;
  outlined destroy of TermOfAddress?(&v113, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
  v54 = 0;
  *&v116 = MEMORY[0x1E69E7CC0];
  v69 = v98;
  (*(*(v5 + 40) + 16))(&v116, v103);
  v15 = 0;

  v71 = v109;
  v70 = v110;
  (*(v109 + 56))(v69, 0, 1, v110);
  v72 = v97;
  (*(v71 + 32))(v97, v69, v70);
  v112 = v70;
  v73 = __swift_allocate_boxed_opaque_existential_0(v111);
  (*(v71 + 16))(v73, v72, v70);
  _expressionCompatibleValue(for:)(v111, &v113);
  __swift_destroy_boxed_opaque_existential_1(v111);
  if (!*(&v114 + 1))
  {
    (*(v71 + 8))(v72, v70);

    outlined destroy of TermOfAddress?(&v113, &_sypSgMd, &_sypSgMR);
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v74 = 2;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v39 + 4);
    goto LABEL_31;
  }

  outlined init with take of Any(&v113, &v116);
  v52 = v117;
  v83 = __swift_project_boxed_opaque_existential_1(&v116, v117);
  v119 = &v93;
  v57 = *(v52 - 8);
  v84 = *(v57 + 64);
  v85 = MEMORY[0x1EEE9AC00](v83);
  v59 = (v84 + 15) & 0xFFFFFFFFFFFFFFF0;
  v58 = &v93 - v59;
  v5 = *(v57 + 16);
  (v5)(&v93 - v59, v85);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
    goto LABEL_46;
  }

  if (v84 == 8)
  {
    v86 = *v58;
    v87 = *(v57 + 8);
    swift_unknownObjectRetain();
    v87(&v93 - v59, v52);
LABEL_41:
    v39 = v108;
    v88 = v97;
    v75 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v116);
    (*(v109 + 8))(v88, v110);
    v66 = v104;
LABEL_42:
    v39[11] = v66;
    v39[8] = v75;
    v89 = String._bridgeToObjectiveCImpl()();

    v90 = _ContiguousArrayBuffer._asCocoaArray()();
    v15 = [objc_opt_self() expressionForFunction:v89 arguments:v90];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.Arithmetic<A, B>(uint64_t a1, uint64_t a2)
{
  result = PredicateExpressions.Arithmetic.convert(state:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t PredicateExpressions.UnaryMinus.convert(state:)(uint64_t *a1, uint64_t a2)
{
  v4 = v3;
  v56 = a1;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v53 - v9;
  v66 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v53 - v12;
  v13 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_181215ED0;
  (*(v13 + 16))(v16, v2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMR);
  if (swift_dynamicCast())
  {
    v54 = v17;
    outlined init with take of Equatable(&v60, &v63);
    v18 = v64;
    v19 = v65;
    __swift_project_boxed_opaque_existential_1(&v63, v64);
    v20 = (*(v19 + 16))(v56, v18, v19);
    if (!v3)
    {
      v27 = v20;
      v28 = v21;
      __swift_destroy_boxed_opaque_existential_1(&v63);
      if (v28)
      {
        LOBYTE(v63) = 1;
        v29 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v30 = objc_opt_self();
        v31 = [v30 expressionForConstantValue_];
        swift_unknownObjectRelease();
        LOBYTE(v63) = 0;
        v32 = [v30 expressionForConstantValue_];
        swift_unknownObjectRelease();
        v33 = [v30 expressionForConditional:v27 trueExpression:v31 falseExpression:v32];

        v27 = v33;
      }

      v34 = v54;
      goto LABEL_20;
    }

    __swift_destroy_boxed_opaque_existential_1(&v63);
    v4 = 0;
    v22 = v3;
    v17 = v54;
  }

  else
  {
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    outlined destroy of TermOfAddress?(&v60, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
    v22 = 0;
  }

  *&v63 = MEMORY[0x1E69E7CC0];
  (*(v5 + 16))(&v63, v6, v5);
  v23 = v66;
  if (v4)
  {

    (*(v23 + 56))(v10, 1, 1, AssociatedTypeWitness);
    (v57[1])(v10, v58);
    if (v22)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v58 = v22;

  (*(v23 + 56))(v10, 0, 1, AssociatedTypeWitness);
  v24 = v55;
  (*(v23 + 32))(v55, v10, AssociatedTypeWitness);
  v59[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v59);
  (*(v23 + 16))(boxed_opaque_existential_0, v24, AssociatedTypeWitness);
  _expressionCompatibleValue(for:)(v59, &v60);
  __swift_destroy_boxed_opaque_existential_1(v59);
  if (!*(&v61 + 1))
  {
    (*(v23 + 8))(v24, AssociatedTypeWitness);
    outlined destroy of TermOfAddress?(&v60, &_sypSgMd, &_sypSgMR);
    v22 = v58;
    if (v58)
    {
      goto LABEL_11;
    }

LABEL_10:
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v26 = 2;
LABEL_11:
    swift_willThrow();
    *(v17 + 16) = 0;

    return v22;
  }

  v54 = v17;
  outlined init with take of Any(&v60, &v63);
  v35 = v64;
  v36 = __swift_project_boxed_opaque_existential_1(&v63, v64);
  v57 = &v53;
  v37 = *(v35 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x1EEE9AC00](v36);
  v40 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  v41 = (&v53 - v40);
  v42 = *(v37 + 16);
  v42(&v53 - v40, v39);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
    v56 = &v53;
    v52 = MEMORY[0x1EEE9AC00](result);
    (v42)(&v53 - v40, v41, v35, v52);
    v44 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (*(v37 + 8))(v41, v35);
    goto LABEL_19;
  }

  if (v38 == 8)
  {
    v44 = *v41;
    v45 = *(v37 + 8);
    swift_unknownObjectRetain();
    v45(&v53 - v40, v35);
LABEL_19:
    v34 = v54;
    v46 = v58;
    v27 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v63);
    (*(v66 + 8))(v55, AssociatedTypeWitness);
LABEL_20:
    v47 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSExpression, off_1E69EE3D0);
    v34[7] = v47;
    v34[4] = v27;
    *&v63 = -1;
    v48 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v49 = objc_opt_self();
    v50 = [v49 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v34[11] = v47;
    v34[8] = v50;
    v51 = String._bridgeToObjectiveCImpl()();
    v22 = [v49 expressionForFunction:v51 arguments:_ContiguousArrayBuffer._asCocoaArray()()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v22;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.UnaryMinus<A>(uint64_t *a1, uint64_t a2)
{
  result = PredicateExpressions.UnaryMinus.convert(state:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

char *PredicateExpressions.Comparison.convert(state:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v95 = *(a2 + 24);
  v90 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v89 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 32);
  v10 = *(v8 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v96 = *(v12 - 8);
  v97 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v87 = v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v84 - v15;
  v98 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v86 = v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v93 = v84 - v20;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = *v2;
  v94 = a2;
  v25 = *(a2 + 60);
  v27 = *(v26 + 16);
  v107 = v2;
  v27(v24, &v2[v25], v10, v22);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMR);
  v28 = swift_dynamicCast();
  v29 = MEMORY[0x1E69E7CC0];
  v91 = a1;
  if (v28)
  {
    v92 = AssociatedTypeWitness;
    outlined init with take of Equatable(&v101, &v104);
    v30 = v105;
    v31 = v106;
    __swift_project_boxed_opaque_existential_1(&v104, v105);
    v32 = (*(v31 + 16))(a1, v30, v31);
    if (!v3)
    {
      v40 = v33;
      v41 = v32;
      __swift_destroy_boxed_opaque_existential_1(&v104);
      if (v40)
      {
        LOBYTE(v104) = 1;
        v42 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v43 = objc_opt_self();
        v44 = [v43 expressionForConstantValue_];
        swift_unknownObjectRelease();
        LOBYTE(v104) = 0;
        v45 = [v43 expressionForConstantValue_];
        swift_unknownObjectRelease();
        v46 = [v43 expressionForConditional:v41 trueExpression:v44 falseExpression:v45];

        v41 = v46;
      }

      v47 = v98;
      goto LABEL_20;
    }

    __swift_destroy_boxed_opaque_existential_1(&v104);
    v4 = 0;
    v34 = v3;
    AssociatedTypeWitness = v92;
    v29 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v103 = 0;
    v101 = 0u;
    v102 = 0u;
    outlined destroy of TermOfAddress?(&v101, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
    v34 = 0;
  }

  *&v104 = v29;
  v35 = &v107[v25];
  (*(v9 + 16))(&v104, v10, v9);
  if (v4)
  {

    (*(v98 + 56))(v16, 1, 1, AssociatedTypeWitness);
    (v96[1])(v16, v97);
    if (v34)
    {
LABEL_8:
      swift_willThrow();
      return v35;
    }

LABEL_7:
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v36 = 2;
    goto LABEL_8;
  }

  v37 = v98;
  (*(v98 + 56))(v16, 0, 1, AssociatedTypeWitness);
  v38 = v93;
  (*(v37 + 32))(v93, v16, AssociatedTypeWitness);
  v100 = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v99);
  (*(v37 + 16))(boxed_opaque_existential_0, v38, AssociatedTypeWitness);
  _expressionCompatibleValue(for:)(v99, &v101);
  v92 = AssociatedTypeWitness;
  __swift_destroy_boxed_opaque_existential_1(v99);
  if (!*(&v102 + 1))
  {
    v75 = *(v37 + 8);
    v35 = (v37 + 8);
    v75(v38, v92);
    outlined destroy of TermOfAddress?(&v101, &_sypSgMd, &_sypSgMR);
    if (v34)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  outlined init with take of Any(&v101, &v104);
  v48 = v105;
  v49 = __swift_project_boxed_opaque_existential_1(&v104, v105);
  v84[1] = v84;
  v50 = *(v48 - 8);
  v51 = v50[8];
  v52 = MEMORY[0x1EEE9AC00](v49);
  v53 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
  v54 = v84 - v53;
  v41 = v50 + 2;
  v55 = v50[2];
  v55(v84 - v53, v52);
  result = _swift_isClassOrObjCExistentialType();
  if (result)
  {
    if (v51 != 8)
    {
      __break(1u);
LABEL_36:
      v96 = v84;
      v83 = MEMORY[0x1EEE9AC00](result);
      (v55)(v84 - v97, v54, v48, v83);
      v79 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      (*(v53 + 8))(v54, v48);
      goto LABEL_31;
    }

    v57 = *v54;
    v58 = v50[1];
    swift_unknownObjectRetain();
    v58(v84 - v53, v48);
  }

  else
  {
    v84[0] = v84;
    v82 = MEMORY[0x1EEE9AC00](result);
    (v55)(v84 - v53, v84 - v53, v48, v82);
    v57 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (v50[1])(v84 - v53, v48);
  }

  v59 = v93;
  v41 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v104);
  v47 = v98;
  (*(v98 + 8))(v59, v92);
LABEL_20:
  v60 = v91;
  (*(v90 + 16))(v89, &v107[*(v94 + 64)], v95);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(&v101, &v104);
    v61 = v105;
    v62 = v106;
    __swift_project_boxed_opaque_existential_1(&v104, v105);
    v67 = (*(v62 + 16))(v60, v61, v62);
    v69 = v68;
    __swift_destroy_boxed_opaque_existential_1(&v104);
    if (v69)
    {
      LOBYTE(v104) = 1;
      v70 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v71 = objc_opt_self();
      v72 = [v71 expressionForConstantValue_];
      swift_unknownObjectRelease();
      LOBYTE(v104) = 0;
      v73 = [v71 expressionForConstantValue_];
      swift_unknownObjectRelease();
      v74 = [v71 expressionForConditional:v67 trueExpression:v72 falseExpression:v73];

      v67 = v74;
    }

    goto LABEL_32;
  }

  v103 = 0;
  v101 = 0u;
  v102 = 0u;
  outlined destroy of TermOfAddress?(&v101, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
  v51 = 0;
  *&v104 = MEMORY[0x1E69E7CC0];
  v63 = v87;
  (*(*(v94 + 40) + 16))(&v104, v95);

  v35 = v92;
  (*(v47 + 56))(v63, 0, 1, v92);
  v64 = v86;
  (*(v47 + 32))(v86, v63, v35);
  v100 = v35;
  v65 = __swift_allocate_boxed_opaque_existential_0(v99);
  (*(v47 + 16))(v65, v64, v35);
  _expressionCompatibleValue(for:)(v99, &v101);
  __swift_destroy_boxed_opaque_existential_1(v99);
  if (!*(&v102 + 1))
  {
    (*(v47 + 8))(v64, v35);
    outlined destroy of TermOfAddress?(&v101, &_sypSgMd, &_sypSgMR);
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v66 = 2;
    swift_willThrow();

    return v35;
  }

  v92 = v35;
  outlined init with take of Any(&v101, &v104);
  v48 = v105;
  v76 = __swift_project_boxed_opaque_existential_1(&v104, v105);
  v107 = v84;
  v53 = *(v48 - 8);
  v77 = *(v53 + 64);
  v78 = MEMORY[0x1EEE9AC00](v76);
  v97 = (v77 + 15) & 0xFFFFFFFFFFFFFFF0;
  v54 = v84 - v97;
  v55 = *(v53 + 16);
  v55(v84 - v97, v78);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
    goto LABEL_36;
  }

  if (v77 == 8)
  {
    v79 = *v54;
    v80 = *(v53 + 8);
    swift_unknownObjectRetain();
    v80(v54, v48);
LABEL_31:
    v81 = v98;
    v67 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v104);
    (*(v81 + 8))(v86, v92);
LABEL_32:
    v35 = [objc_allocWithZone(NSComparisonPredicate) initWithLeftExpression:v41 rightExpression:v67 modifier:0 type:v85 options:0];

    return v35;
  }

  __break(1u);
  return result;
}

char *protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.Comparison<A, B>(uint64_t a1, uint64_t a2)
{
  result = PredicateExpressions.Comparison.convert(state:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t PredicateExpressions.Negation.convert(state:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v7 = *(a2 + 16);
  v8 = MEMORY[0x1EEE9AC00](a1);
  (*(v10 + 16))(v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(&v35, &v38);
    v11 = v39;
    v12 = v40;
    __swift_project_boxed_opaque_existential_1(&v38, v39);
    v13 = (*(v12 + 16))(a1, v11, v12);
    if (!v3)
    {
      v17 = v13;
      v18 = v14;
      __swift_destroy_boxed_opaque_existential_1(&v38);
      if (v18)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    __swift_destroy_boxed_opaque_existential_1(&v38);
    v4 = 0;
    v15 = v3;
  }

  else
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    outlined destroy of TermOfAddress?(&v35, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
    v15 = 0;
  }

  *&v38 = MEMORY[0x1E69E7CC0];
  (*(*(a2 + 24) + 16))(&v41, &v38, v7);
  if (v4)
  {

LABEL_10:
    if (!v15)
    {
      lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
      swift_allocError();
      *v16 = 2;
    }

    swift_willThrow();
    return v15;
  }

  if (v41 == 2)
  {
    goto LABEL_10;
  }

  v34[3] = MEMORY[0x1E69E6370];
  LOBYTE(v34[0]) = v41 & 1;
  _expressionCompatibleValue(for:)(v34, &v35);
  __swift_destroy_boxed_opaque_existential_1(v34);
  if (!*(&v36 + 1))
  {
    outlined destroy of TermOfAddress?(&v35, &_sypSgMd, &_sypSgMR);
    goto LABEL_10;
  }

  outlined init with take of Any(&v35, &v38);
  v19 = v39;
  v20 = __swift_project_boxed_opaque_existential_1(&v38, v39);
  v33[1] = v33;
  v21 = *(v19 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v24 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = *(v21 + 16);
  v25(v33 - v24, v23);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
    v33[0] = v33;
    v32 = MEMORY[0x1EEE9AC00](result);
    (v25)(v33 - v24, v33 - v24, v19, v32);
    v27 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (*(v21 + 8))(v33 - v24, v19);
    goto LABEL_19;
  }

  if (v22 == 8)
  {
    v27 = *(v33 - v24);
    v28 = *(v21 + 8);
    swift_unknownObjectRetain();
    v28(v33 - v24, v19);
LABEL_19:
    v17 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v38);
LABEL_20:
    LOBYTE(v38) = 1;
    v29 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v30 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    v31 = [objc_allocWithZone(NSComparisonPredicate) initWithLeftExpression:v17 rightExpression:v30 modifier:0 type:4 options:0];

    v17 = v31;
LABEL_21:
    v15 = [objc_opt_self() notPredicateWithSubpredicate_];

    return v15;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.Negation<A>(uint64_t a1, uint64_t a2)
{
  result = PredicateExpressions.Negation.convert(state:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

void *PredicateExpressions.Filter.convert(state:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v138 = *(a2 + 24);
  v6 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v133 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  v141 = *(v8 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v140 = type metadata accessor for Optional();
  v139 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v147 = &v126 - v11;
  v143 = AssociatedTypeWitness;
  v142 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v134 = &v126 - v13;
  v144 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = a2;
  v17 = *&v3[*(a2 + 64)];
  *&v153 = 0x5F6C61636F6C5FLL;
  *(&v153 + 1) = 0xE700000000000000;
  *&v150 = *v5;
  v18 = v150;
  v19 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v19);

  if (v18 == -1)
  {
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v132 = v6;
  v21 = *(&v153 + 1);
  v20 = v153;
  *v5 = v18 + 1;
  v130 = v20;
  v22 = String._bridgeToObjectiveCImpl()();
  v131 = objc_opt_self();
  v23 = v5;
  v5 = [v131 expressionForVariable_];
  swift_unknownObjectRelease();
  v146 = v23;
  if (!v5)
  {
    v32 = specialized __RawDictionaryStorage.find<A>(_:)();
    v33 = v147;
    if (v34)
    {
      v35 = v32;
      v36 = v3;
      v37 = v146;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *(v37 + 8);
      if (isUniquelyReferenced_nonNull_native)
      {
        v40 = *(v37 + 8);
      }

      else
      {
        v136 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation20PredicateExpressionsO10VariableIDVSo12NSExpressionCGMd, &_ss18_DictionaryStorageCy10Foundation20PredicateExpressionsO10VariableIDVSo12NSExpressionCGMR);
        v109 = static _DictionaryStorage.copy(original:)();
        v40 = v109;
        if (*(v39 + 16))
        {
          v110 = (v109 + 64);
          v111 = ((1 << *(v40 + 32)) + 63) >> 6;
          v135 = (v39 + 64);
          if (v40 != v39 || v110 >= v39 + 64 + 8 * v111)
          {
            memmove(v110, v135, 8 * v111);
          }

          v112 = 0;
          *(v40 + 16) = *(v39 + 16);
          v113 = 1 << *(v39 + 32);
          v114 = *(v39 + 64);
          v115 = -1;
          if (v113 < 64)
          {
            v115 = ~(-1 << v113);
          }

          v116 = v115 & v114;
          v117 = (v113 + 63) >> 6;
          if ((v115 & v114) != 0)
          {
            do
            {
              v118 = __clz(__rbit64(v116));
              v116 &= v116 - 1;
LABEL_83:
              v121 = v118 | (v112 << 6);
              v122 = *(*(v39 + 56) + 8 * v121);
              *(*(v40 + 48) + 8 * v121) = *(*(v39 + 48) + 8 * v121);
              *(*(v40 + 56) + 8 * v121) = v122;
              v123 = v122;
            }

            while (v116);
          }

          v119 = v112;
          v37 = v146;
          while (1)
          {
            v112 = v119 + 1;
            if (__OFADD__(v119, 1))
            {
              goto LABEL_91;
            }

            if (v112 >= v117)
            {
              break;
            }

            v120 = *&v135[8 * v112];
            ++v119;
            if (v120)
            {
              v118 = __clz(__rbit64(v120));
              v116 = (v120 - 1) & v120;
              goto LABEL_83;
            }
          }
        }

        v21 = v136;
      }

      specialized _NativeDictionary._delete(at:)(v35, v40);
      *(v37 + 8) = v40;
      v3 = v36;
      v33 = v147;
    }

LABEL_17:
    (v144[2])(v16, v3, v9);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMR);
    v44 = swift_dynamicCast();
    v45 = MEMORY[0x1E69E7CC0];
    if (v44)
    {
      outlined init with take of Equatable(&v150, &v153);
      v46 = v154;
      v47 = v155;
      __swift_project_boxed_opaque_existential_1(&v153, v154);
      v48 = v145;
      v49 = (*(v47 + 16))(v146, v46, v47);
      v51 = v48;
      if (!v48)
      {
        v60 = v49;
        v61 = v50;
        __swift_destroy_boxed_opaque_existential_1(&v153);
        if (v61)
        {
          LOBYTE(v153) = 1;
          v62 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
          v147 = v60;
          v63 = v131;
          v64 = [v131 expressionForConstantValue_];
          swift_unknownObjectRelease();
          LOBYTE(v153) = 0;
          v65 = [v63 expressionForConstantValue_];
          swift_unknownObjectRelease();
          v66 = v63;
          v67 = v147;
          v68 = [v66 expressionForConditional:v147 trueExpression:v64 falseExpression:v65];

          v60 = v68;
        }

        goto LABEL_35;
      }

      __swift_destroy_boxed_opaque_existential_1(&v153);
      v52 = 0;
      v53 = v51;
      v33 = v147;
      v45 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v152 = 0;
      v150 = 0u;
      v151 = 0u;
      outlined destroy of TermOfAddress?(&v150, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
      v53 = 0;
      v52 = v145;
    }

    *&v153 = v45;
    (*(v141 + 16))(&v153, v9);
    v54 = v142;
    if (v52)
    {

      (*(v54 + 56))(v33, 1, 1, v143);
      (*(v139 + 8))(v33, v140);
      if (v53)
      {
LABEL_24:
        swift_willThrow();
        return v45;
      }

LABEL_23:
      lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
      swift_allocError();
      *v55 = 2;
      goto LABEL_24;
    }

    v45 = 0;

    v56 = v143;
    (*(v54 + 56))(v33, 0, 1, v143);
    v57 = v134;
    (*(v54 + 32))(v134, v33, v56);
    v149 = v56;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v148);
    (*(v54 + 16))(boxed_opaque_existential_0, v57, v56);
    _expressionCompatibleValue(for:)(v148, &v150);
    v59 = 0;
    __swift_destroy_boxed_opaque_existential_1(v148);
    if (!*(&v151 + 1))
    {
      (*(v54 + 8))(v57, v56);

      outlined destroy of TermOfAddress?(&v150, &_sypSgMd, &_sypSgMR);
      if (v53)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v135 = v3;
    v136 = v21;
    outlined init with take of Any(&v150, &v153);
    v45 = v154;
    v69 = __swift_project_boxed_opaque_existential_1(&v153, v154);
    v147 = &v126;
    v70 = *(v45 - 1);
    v71 = *(v70 + 64);
    v72 = MEMORY[0x1EEE9AC00](v69);
    v73 = (v71 + 15) & 0xFFFFFFFFFFFFFFF0;
    v74 = (&v126 - v73);
    v145 = *(v70 + 16);
    (v145)(&v126 - v73, v72);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    if (isClassOrObjCExistentialType)
    {
      if (v71 != 8)
      {
        __break(1u);
        goto LABEL_88;
      }

      v76 = *v74;
      v77 = *(v70 + 8);
      swift_unknownObjectRetain();
      v77(&v126 - v73, v45);
    }

    else
    {
      v144 = &v126;
      v124 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
      (v145)(&v126 - v73, &v126 - v73, v45, v124);
      v76 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      (*(v70 + 8))(&v126 - v73, v45);
    }

    v21 = v136;
    v3 = v135;
    v60 = [v131 expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v153);
    (*(v142 + 8))(v134, v143);
LABEL_35:
    (*(v132 + 16))(v133, &v3[*(v137 + 60)], v138);
    if (swift_dynamicCast())
    {
      v43 = v60;
      outlined init with take of Equatable(&v150, &v153);
      v78 = v154;
      v79 = v155;
      __swift_project_boxed_opaque_existential_1(&v153, v154);
      v82 = (*(v79 + 16))(v146, v78, v79);
      v84 = v83;
      __swift_destroy_boxed_opaque_existential_1(&v153);
      v85 = v131;
      if (v84)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

    v152 = 0;
    v150 = 0u;
    v151 = 0u;
    outlined destroy of TermOfAddress?(&v150, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
    v45 = 0;
    *&v153 = MEMORY[0x1E69E7CC0];
    (*(*(v137 + 40) + 16))(&v156, &v153, v138);

    if (v156 == 2)
    {

LABEL_39:
      lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
      swift_allocError();
      *v80 = 2;
      swift_willThrow();

      return v45;
    }

    v149 = MEMORY[0x1E69E6370];
    LOBYTE(v148[0]) = v156 & 1;
    _expressionCompatibleValue(for:)(v148, &v150);
    __swift_destroy_boxed_opaque_existential_1(v148);
    if (!*(&v151 + 1))
    {

      outlined destroy of TermOfAddress?(&v150, &_sypSgMd, &_sypSgMR);
      goto LABEL_39;
    }

    v43 = v60;
    v136 = v21;
    outlined init with take of Any(&v150, &v153);
    v74 = v154;
    v86 = __swift_project_boxed_opaque_existential_1(&v153, v154);
    v147 = &v126;
    v59 = *(v74 - 1);
    v87 = v59[8];
    v88 = MEMORY[0x1EEE9AC00](v86);
    v146 = (v87 + 15) & 0xFFFFFFFFFFFFFFF0;
    v71 = (&v126 - v146);
    v70 = v59[2];
    (v70)(&v126 - v146, v88);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    if (isClassOrObjCExistentialType)
    {
      if (v87 == 8)
      {
        v89 = *v71;
        v90 = v59[1];
        swift_unknownObjectRetain();
        v90(v71, v74);
LABEL_48:
        v85 = v131;
        v82 = [v131 expressionForConstantValue_];
        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1(&v153);
LABEL_49:
        LOBYTE(v153) = 1;
        v91 = [v85 expressionForConstantValue_];
        swift_unknownObjectRelease();
        v92 = [objc_allocWithZone(NSComparisonPredicate) initWithLeftExpression:v82 rightExpression:v91 modifier:0 type:4 options:0];

        v82 = v92;
LABEL_50:
        v93 = String._bridgeToObjectiveCImpl()();

        v45 = [v85 expressionForSubquery:v43 usingIteratorVariable:v93 predicate:v82];

        swift_unknownObjectRelease();
        return v45;
      }

      __break(1u);
      goto LABEL_90;
    }

LABEL_88:
    v145 = &v126;
    v125 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
    (v70)(&v126 - v146, v71, v74, v125);
    v89 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (v59[1])(v71, v74);
    goto LABEL_48;
  }

  v135 = v3;
  v136 = v21;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  *&v153 = v23[1];
  v6 = v153;
  v18 = specialized __RawDictionaryStorage.find<A>(_:)();
  v26 = *(v6 + 16);
  v27 = (v25 & 1) == 0;
  v28 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
    goto LABEL_53;
  }

  LOBYTE(v3) = v25;
  if (*(v6 + 24) >= v28)
  {
    if (v24)
    {
      v29 = v6;
      goto LABEL_13;
    }

LABEL_54:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation20PredicateExpressionsO10VariableIDVSo12NSExpressionCGMd, &_ss18_DictionaryStorageCy10Foundation20PredicateExpressionsO10VariableIDVSo12NSExpressionCGMR);
    v94 = static _DictionaryStorage.copy(original:)();
    v29 = v94;
    if (*(v6 + 16))
    {
      v95 = (v94 + 64);
      v96 = (v6 + 64);
      v97 = ((1 << *(v29 + 32)) + 63) >> 6;
      v127 = v6 + 64;
      if (v29 != v6 || v95 >= &v96[8 * v97])
      {
        memmove(v95, v96, 8 * v97);
      }

      v98 = 0;
      *(v29 + 16) = *(v6 + 16);
      v99 = 1 << *(v6 + 32);
      v100 = -1;
      if (v99 < 64)
      {
        v100 = ~(-1 << v99);
      }

      v101 = v100 & *(v6 + 64);
      v102 = (v99 + 63) >> 6;
      v128 = v102;
      if (v101)
      {
        do
        {
          v103 = __clz(__rbit64(v101));
          v129 = (v101 - 1) & v101;
LABEL_67:
          v106 = v103 | (v98 << 6);
          v107 = *(*(v6 + 56) + 8 * v106);
          *(*(v29 + 48) + 8 * v106) = *(*(v6 + 48) + 8 * v106);
          *(*(v29 + 56) + 8 * v106) = v107;
          v108 = v107;
          v102 = v128;
          v101 = v129;
        }

        while (v129);
      }

      v104 = v98;
      while (1)
      {
        v98 = v104 + 1;
        if (__OFADD__(v104, 1))
        {
          break;
        }

        if (v98 >= v102)
        {
          goto LABEL_69;
        }

        v105 = *(v127 + 8 * v98);
        ++v104;
        if (v105)
        {
          v103 = __clz(__rbit64(v105));
          v129 = (v105 - 1) & v105;
          goto LABEL_67;
        }
      }

LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

LABEL_69:

    goto LABEL_13;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, v24);
  v29 = v153;
  v30 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v3 & 1) == (v31 & 1))
  {
    v18 = v30;
LABEL_13:
    v21 = v136;
    if (v3)
    {
      v41 = *(v29 + 56);
      v42 = *(v41 + 8 * v18);
      *(v41 + 8 * v18) = v5;
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v18, v17, v5, v29);
    }

    v33 = v147;
    *(v146 + 8) = v29;
    v3 = v135;
    goto LABEL_17;
  }

LABEL_92:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.Filter<A, B>(void *a1, uint64_t a2)
{
  result = PredicateExpressions.Filter.convert(state:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t PredicateExpressions.FloatDivision.convert(state:)(void *a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v6 = a1;
  v98 = *(a2 + 24);
  v95 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v94 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 32);
  v97 = v8;
  v10 = *(v8 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v100 = *(v12 - 8);
  v101 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v92 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v86 - v15;
  v103 = AssociatedTypeWitness;
  v102 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v91 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v96 = &v86 - v20;
  v21 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_181215ED0;
  v26 = *(v21 + 16);
  v112 = v5;
  v26(v24, v5, v10);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMR);
  v27 = swift_dynamicCast();
  v28 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    v99 = v25;
    outlined init with take of Equatable(&v106, &v109);
    v29 = v110;
    v30 = v111;
    __swift_project_boxed_opaque_existential_1(&v109, v110);
    v31 = (*(v30 + 16))(v6, v29, v30);
    if (!v3)
    {
      v39 = v31;
      v40 = v32;
      v90 = v6;
      __swift_destroy_boxed_opaque_existential_1(&v109);
      if (v40)
      {
        LOBYTE(v109) = 1;
        v41 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v42 = objc_opt_self();
        v43 = [v42 expressionForConstantValue_];
        swift_unknownObjectRelease();
        LOBYTE(v109) = 0;
        v44 = [v42 expressionForConstantValue_];
        swift_unknownObjectRelease();
        v45 = [v42 expressionForConditional:v39 trueExpression:v43 falseExpression:v44];

        v39 = v45;
      }

      goto LABEL_19;
    }

    __swift_destroy_boxed_opaque_existential_1(&v109);
    v4 = 0;
    v33 = v3;
    v25 = v99;
  }

  else
  {
    v108 = 0;
    v106 = 0u;
    v107 = 0u;
    outlined destroy of TermOfAddress?(&v106, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
    v33 = 0;
  }

  *&v109 = v28;
  (*(v9 + 16))(&v109, v10, v9);
  if (v4)
  {

    (*(v102 + 56))(v16, 1, 1, v103);
    (v100[1])(v16, v101);
    if (v33)
    {
LABEL_8:
      swift_willThrow();
LABEL_22:
      *(v25 + 16) = 0;

      return v16;
    }

LABEL_7:
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v34 = 2;
    goto LABEL_8;
  }

  v99 = v25;

  v36 = v102;
  v35 = v103;
  (*(v102 + 56))(v16, 0, 1, v103);
  v37 = v96;
  (*(v36 + 32))(v96, v16, v35);
  v105 = v35;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v104);
  (*(v36 + 16))(boxed_opaque_existential_0, v37, v35);
  _expressionCompatibleValue(for:)(v104, &v106);
  __swift_destroy_boxed_opaque_existential_1(v104);
  if (!*(&v107 + 1))
  {
    (*(v36 + 8))(v37, v35);
    outlined destroy of TermOfAddress?(&v106, &_sypSgMd, &_sypSgMR);
    v25 = v99;
    if (v33)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  outlined init with take of Any(&v106, &v109);
  v46 = v110;
  v47 = __swift_project_boxed_opaque_existential_1(&v109, v110);
  v89 = &v86;
  v48 = *(v46 - 8);
  v49 = *(v48 + 64);
  v50 = MEMORY[0x1EEE9AC00](v47);
  v88 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  v51 = &v86 - v88;
  v52 = (v48 + 16);
  v87 = *(v48 + 16);
  v87(&v86 - v88, v50);
  result = _swift_isClassOrObjCExistentialType();
  v90 = v6;
  if (result)
  {
    if (v49 != 8)
    {
      __break(1u);
LABEL_36:
      v100 = &v86;
      v85 = MEMORY[0x1EEE9AC00](result);
      v28(&v86 - v101, v51, v46, v85);
      v80 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      (*(v48 + 8))(v51, v46);
      goto LABEL_31;
    }

    v54 = *v51;
    v55 = *(v48 + 8);
    swift_unknownObjectRetain();
    v55(v51, v46);
  }

  else
  {
    v84 = MEMORY[0x1EEE9AC00](result);
    (v87)(&v86 - v88, v51, v46, v84);
    v54 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (*(v48 + 8))(v51, v46);
  }

  v56 = v96;
  v39 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v109);
  (*(v102 + 8))(v56, v103);
LABEL_19:
  v57 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSExpression, off_1E69EE3D0);
  v58 = v99;
  *(v99 + 56) = v57;
  v52 = v58;
  v58[4] = v39;
  (*(v95 + 16))(v94, &v112[*(v97 + 60)], v98);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(&v106, &v109);
    v59 = v110;
    v60 = v111;
    __swift_project_boxed_opaque_existential_1(&v109, v110);
    v67 = (*(v60 + 16))(v90, v59, v60);
    v69 = v68;
    __swift_destroy_boxed_opaque_existential_1(&v109);
    if (v69)
    {
      LOBYTE(v109) = 1;
      v70 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v71 = v57;
      v72 = objc_opt_self();
      v73 = [v72 expressionForConstantValue_];
      swift_unknownObjectRelease();
      LOBYTE(v109) = 0;
      v74 = [v72 expressionForConstantValue_];
      swift_unknownObjectRelease();
      v75 = v72;
      v57 = v71;
      v76 = [v75 expressionForConditional:v67 trueExpression:v73 falseExpression:v74];

      v67 = v76;
    }

    goto LABEL_32;
  }

  v96 = v57;
  v108 = 0;
  v106 = 0u;
  v107 = 0u;
  outlined destroy of TermOfAddress?(&v106, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
  v6 = 0;
  *&v109 = v28;
  v61 = v92;
  (*(*(v97 + 40) + 16))(&v109, v98);
  v16 = 0;

  v63 = v102;
  v62 = v103;
  (*(v102 + 56))(v61, 0, 1, v103);
  v64 = v91;
  (*(v63 + 32))(v91, v61, v62);
  v105 = v62;
  v65 = __swift_allocate_boxed_opaque_existential_0(v104);
  (*(v63 + 16))(v65, v64, v62);
  _expressionCompatibleValue(for:)(v104, &v106);
  v25 = v52;
  __swift_destroy_boxed_opaque_existential_1(v104);
  if (!*(&v107 + 1))
  {
    (*(v63 + 8))(v64, v62);
    outlined destroy of TermOfAddress?(&v106, &_sypSgMd, &_sypSgMR);
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v66 = 2;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v52 + 4);
    goto LABEL_22;
  }

  outlined init with take of Any(&v106, &v109);
  v46 = v110;
  v77 = __swift_project_boxed_opaque_existential_1(&v109, v110);
  v112 = &v86;
  v48 = *(v46 - 8);
  v78 = *(v48 + 64);
  v79 = MEMORY[0x1EEE9AC00](v77);
  v101 = (v78 + 15) & 0xFFFFFFFFFFFFFFF0;
  v51 = &v86 - v101;
  v28 = *(v48 + 16);
  (v28)(&v86 - v101, v79);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
    goto LABEL_36;
  }

  if (v78 == 8)
  {
    v80 = *v51;
    v81 = *(v48 + 8);
    swift_unknownObjectRetain();
    v81(v51, v46);
LABEL_31:
    v67 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v109);
    (*(v102 + 8))(v91, v103);
    v57 = v96;
LABEL_32:
    v52[11] = v57;
    v52[8] = v67;
    v82 = String._bridgeToObjectiveCImpl()();
    v83 = _ContiguousArrayBuffer._asCocoaArray()();
    v16 = [objc_opt_self() expressionForFunction:v82 arguments:v83];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v16;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.FloatDivision<A, B>(void *a1, uint64_t a2)
{
  result = PredicateExpressions.FloatDivision.convert(state:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t PredicateExpressions.ClosedRange.convert(state:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v93 = *(a2 + 24);
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v90 = v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 32);
  v92 = v6;
  v8 = *(v6 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v94 = *(v10 - 8);
  v95 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v88 = v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v83 - v13;
  v98 = AssociatedTypeWitness;
  v99 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v87 = v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v83 - v18;
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_181244B50;
  v25 = *(v20 + 16);
  v108 = v3;
  v25(v23, v3, v8);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMR);
  v26 = swift_dynamicCast();
  v27 = MEMORY[0x1E69E7CC0];
  if (v26)
  {
    v96 = v24;
    outlined init with take of Equatable(&v102, &v105);
    v28 = v106;
    v29 = v107;
    __swift_project_boxed_opaque_existential_1(&v105, v106);
    v30 = v97;
    v31 = (*(v29 + 16))(a1, v28, v29);
    v33 = v30;
    if (!v30)
    {
      v40 = v31;
      v41 = v32;
      v97 = a1;
      __swift_destroy_boxed_opaque_existential_1(&v105);
      if (v41)
      {
        LOBYTE(v105) = 1;
        v42 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v43 = objc_opt_self();
        v44 = [v43 expressionForConstantValue_];
        swift_unknownObjectRelease();
        LOBYTE(v105) = 0;
        v45 = [v43 expressionForConstantValue_];
        swift_unknownObjectRelease();
        v46 = [v43 expressionForConditional:v40 trueExpression:v44 falseExpression:v45];

        v40 = v46;
      }

      v47 = v98;
      v48 = v99;
      goto LABEL_20;
    }

    __swift_destroy_boxed_opaque_existential_1(&v105);
    v34 = 0;
    v35 = v33;
    v24 = v96;
  }

  else
  {
    v104 = 0;
    v102 = 0u;
    v103 = 0u;
    outlined destroy of TermOfAddress?(&v102, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
    v35 = 0;
    v34 = v97;
  }

  *&v105 = v27;
  (*(v7 + 16))(&v105, v8, v7);
  if (v34)
  {

    (*(v99 + 56))(v14, 1, 1, v98);
    (*(v94 + 8))(v14, v95);
    if (v35)
    {
LABEL_8:
      swift_willThrow();
LABEL_23:
      *(v24 + 16) = 0;

      return v19;
    }

LABEL_7:
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v36 = 2;
    goto LABEL_8;
  }

  v96 = v24;
  v97 = a1;

  v37 = v98;
  v38 = v99;
  (*(v99 + 56))(v14, 0, 1, v98);
  (*(v38 + 32))(v19, v14, v37);
  v101 = v37;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v100);
  (*(v38 + 16))(boxed_opaque_existential_0, v19, v37);
  _expressionCompatibleValue(for:)(v100, &v102);
  __swift_destroy_boxed_opaque_existential_1(v100);
  if (!*(&v103 + 1))
  {
    (*(v38 + 8))(v19, v37);
    outlined destroy of TermOfAddress?(&v102, &_sypSgMd, &_sypSgMR);
    v24 = v96;
    if (v35)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  outlined init with take of Any(&v102, &v105);
  v49 = v106;
  v50 = __swift_project_boxed_opaque_existential_1(&v105, v106);
  v86 = v83;
  v51 = *(v49 - 8);
  v52 = *(v51 + 64);
  v53 = MEMORY[0x1EEE9AC00](v50);
  v85 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
  v54 = v83 - v85;
  v55 = v51 + 16;
  v84 = *(v51 + 16);
  v84(v83 - v85, v53);
  result = _swift_isClassOrObjCExistentialType();
  if (result)
  {
    if (v52 != 8)
    {
      __break(1u);
LABEL_38:
      v97 = v83;
      v82 = MEMORY[0x1EEE9AC00](result);
      v52(v83 - v55, v54, v49, v82);
      v77 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      (*(v51 + 8))(v54, v49);
      goto LABEL_33;
    }

    v57 = *v54;
    v58 = *(v51 + 8);
    swift_unknownObjectRetain();
    v58(v54, v49);
  }

  else
  {
    v83[1] = v83;
    v81 = MEMORY[0x1EEE9AC00](result);
    (v84)(v83 - v85, v54, v49, v81);
    v57 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (*(v51 + 8))(v54, v49);
  }

  v48 = v99;
  v40 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v105);
  v47 = v98;
  (*(v48 + 8))(v19, v98);
LABEL_20:
  *(v96 + 32) = v40;
  (*(v91 + 16))(v90, &v108[*(v92 + 60)], v93);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(&v102, &v105);
    v59 = v106;
    v60 = v107;
    __swift_project_boxed_opaque_existential_1(&v105, v106);
    v65 = (*(v60 + 16))(v97, v59, v60);
    v67 = v66;
    __swift_destroy_boxed_opaque_existential_1(&v105);
    if (v67)
    {
      LOBYTE(v105) = 1;
      v68 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v69 = objc_opt_self();
      v70 = [v69 expressionForConstantValue_];
      swift_unknownObjectRelease();
      LOBYTE(v105) = 0;
      v71 = [v69 expressionForConstantValue_];
      swift_unknownObjectRelease();
      v72 = [v69 expressionForConditional:v65 trueExpression:v70 falseExpression:v71];

      v65 = v72;
    }

    v73 = v96;
    goto LABEL_34;
  }

  v104 = 0;
  v102 = 0u;
  v103 = 0u;
  outlined destroy of TermOfAddress?(&v102, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
  v19 = 0;
  *&v105 = v27;
  v61 = v88;
  (*(*(v92 + 40) + 16))(&v105, v93);

  (*(v48 + 56))(v61, 0, 1, v47);
  v62 = v87;
  (*(v48 + 32))(v87, v61, v47);
  v101 = v47;
  v63 = __swift_allocate_boxed_opaque_existential_0(v100);
  (*(v48 + 16))(v63, v62, v47);
  _expressionCompatibleValue(for:)(v100, &v102);
  v24 = v96;
  __swift_destroy_boxed_opaque_existential_1(v100);
  if (!*(&v103 + 1))
  {
    (*(v48 + 8))(v62, v47);
    outlined destroy of TermOfAddress?(&v102, &_sypSgMd, &_sypSgMR);
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v64 = 2;
    swift_willThrow();

    goto LABEL_23;
  }

  v96 = v24;
  outlined init with take of Any(&v102, &v105);
  v49 = v106;
  v74 = __swift_project_boxed_opaque_existential_1(&v105, v106);
  v108 = v83;
  v51 = *(v49 - 8);
  v75 = *(v51 + 64);
  v76 = MEMORY[0x1EEE9AC00](v74);
  v55 = (v75 + 15) & 0xFFFFFFFFFFFFFFF0;
  v54 = v83 - v55;
  v52 = *(v51 + 16);
  (v52)(v83 - v55, v76);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
    goto LABEL_38;
  }

  if (v75 == 8)
  {
    v77 = *v54;
    v78 = *(v51 + 8);
    swift_unknownObjectRetain();
    v78(v83 - v55, v49);
LABEL_33:
    v73 = v96;
    v79 = v99;
    v65 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v105);
    (*(v79 + 8))(v87, v98);
LABEL_34:
    *(v73 + 40) = v65;
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSExpression, off_1E69EE3D0);
    v80 = _ContiguousArrayBuffer._asCocoaArray()();
    v19 = [objc_opt_self() expressionForAggregate_];
    swift_unknownObjectRelease();
    return v19;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.ClosedRange<A, B>(void *a1, uint64_t a2)
{
  result = PredicateExpressions.ClosedRange.convert(state:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t PredicateExpressions.SequenceContains.convert(state:)(void *a1, uint64_t a2)
{
  v102 = a1;
  v4 = *(a2 + 16);
  v90 = *(a2 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v89 = type metadata accessor for Optional();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v94 = v87 - v6;
  v97 = AssociatedTypeWitness;
  v95 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v7);
  v96 = v87 - v8;
  v100 = v4;
  v93 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v92 = v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 40);
  v12 = *(a2 + 24);
  v13 = v2;
  v14 = swift_getAssociatedTypeWitness();
  v101 = type metadata accessor for Optional();
  v15 = *(v101 - 1);
  MEMORY[0x1EEE9AC00](v101);
  v17 = v87 - v16;
  v103 = *(v14 - 1);
  MEMORY[0x1EEE9AC00](v18);
  v99 = v87 - v19;
  v21 = MEMORY[0x1EEE9AC00](v20);
  (*(v23 + 16))(v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v2 + *(a2 + 68), v12, v21);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMR);
  v24 = swift_dynamicCast();
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v98 = v13;
    outlined init with take of Equatable(&v106, &v109);
    v27 = v110;
    v26 = v111;
    __swift_project_boxed_opaque_existential_1(&v109, v110);
    v28 = v112;
    v29 = (*(v26 + 16))(v102, v27, v26);
    v31 = v28;
    if (!v28)
    {
      v37 = v30;
      v112 = 0;
      v38 = v29;
      __swift_destroy_boxed_opaque_existential_1(&v109);
      if (v37)
      {
        LOBYTE(v109) = 1;
        v39 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v40 = objc_opt_self();
        v41 = [v40 expressionForConstantValue_];
        swift_unknownObjectRelease();
        LOBYTE(v109) = 0;
        v42 = [v40 expressionForConstantValue_];
        swift_unknownObjectRelease();
        v43 = [v40 expressionForConditional:v38 trueExpression:v41 falseExpression:v42];

        v38 = v43;
      }

      v44 = v97;
      v45 = v95;
      goto LABEL_20;
    }

    __swift_destroy_boxed_opaque_existential_1(&v109);
    v32 = 0;
    v13 = v98;
    v25 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v108 = 0;
    v106 = 0u;
    v107 = 0u;
    outlined destroy of TermOfAddress?(&v106, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
    v31 = 0;
    v32 = v112;
  }

  *&v109 = v25;
  (*(v11 + 16))(&v109, v12, v11);
  if (v32)
  {

    (*(v103 + 56))(v17, 1, 1, v14);
    (*(v15 + 8))(v17, v101);
    if (v31)
    {
LABEL_8:
      swift_willThrow();
      return v14;
    }

LABEL_7:
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v33 = 2;
    goto LABEL_8;
  }

  v34 = v103;
  (*(v103 + 56))(v17, 0, 1, v14);
  v35 = v99;
  (*(v34 + 32))(v99, v17, v14);
  v105 = v14;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v104);
  (*(v34 + 16))(boxed_opaque_existential_0, v35, v14);
  _expressionCompatibleValue(for:)(v104, &v106);
  v112 = 0;
  __swift_destroy_boxed_opaque_existential_1(v104);
  if (!*(&v107 + 1))
  {
    (*(v34 + 8))(v35, v14);
    outlined destroy of TermOfAddress?(&v106, &_sypSgMd, &_sypSgMR);
    if (v31)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v98 = v13;
  outlined init with take of Any(&v106, &v109);
  v46 = v110;
  v47 = __swift_project_boxed_opaque_existential_1(&v109, v110);
  v101 = v87;
  v48 = *(v46 - 8);
  v49 = v48[8];
  v50 = MEMORY[0x1EEE9AC00](v47);
  v51 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  v52 = v87 - v51;
  v38 = v48 + 2;
  v53 = v48[2];
  v53(v87 - v51, v50);
  result = _swift_isClassOrObjCExistentialType();
  if (result)
  {
    if (v49 != 8)
    {
      __break(1u);
LABEL_47:
      v102 = v87;
      v86 = MEMORY[0x1EEE9AC00](result);
      v49(v87 - v103, v53, v46, v86);
      v80 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      (*(v52 + 1))(v53, v46);
      goto LABEL_39;
    }

    v55 = *v52;
    v56 = v48[1];
    swift_unknownObjectRetain();
    v56(v87 - v51, v46);
  }

  else
  {
    v87[1] = v87;
    v85 = MEMORY[0x1EEE9AC00](result);
    (v53)(v87 - v51, v52, v46, v85);
    v55 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (v48[1])(v52, v46);
  }

  v45 = v95;
  v57 = v103;
  v38 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v109);
  (*(v57 + 8))(v99, v14);
  v44 = v97;
LABEL_20:
  v58 = v96;
  v59 = v94;
  v60 = v102;
  (*(v93 + 16))(v92, v98, v100);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(&v106, &v109);
    v61 = v110;
    v62 = v111;
    __swift_project_boxed_opaque_existential_1(&v109, v110);
    v63 = v112;
    v64 = (*(v62 + 16))(v60, v61, v62);
    v66 = v63;
    if (!v63)
    {
      v70 = v64;
      v71 = v65;
      __swift_destroy_boxed_opaque_existential_1(&v109);
      if (v71)
      {
        LOBYTE(v109) = 1;
        v72 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v73 = objc_opt_self();
        v74 = [v73 expressionForConstantValue_];
        swift_unknownObjectRelease();
        LOBYTE(v109) = 0;
        v75 = [v73 expressionForConstantValue_];
        swift_unknownObjectRelease();
        v76 = [v73 expressionForConditional:v70 trueExpression:v74 falseExpression:v75];

        v70 = v76;
      }

      goto LABEL_40;
    }

    __swift_destroy_boxed_opaque_existential_1(&v109);
    v67 = 0;
    v14 = v66;
  }

  else
  {
    v108 = 0;
    v106 = 0u;
    v107 = 0u;
    outlined destroy of TermOfAddress?(&v106, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
    v14 = 0;
    v67 = v112;
  }

  *&v109 = MEMORY[0x1E69E7CC0];
  (*(v90 + 16))(&v109, v100);
  if (v67)
  {

    (*(v45 + 56))(v59, 1, 1, v44);
    (*(v88 + 8))(v59, v89);
    if (v14)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  (*(v45 + 56))(v59, 0, 1, v44);
  (*(v45 + 32))(v58, v59, v44);
  v105 = v44;
  v68 = __swift_allocate_boxed_opaque_existential_0(v104);
  (*(v45 + 16))(v68, v58, v44);
  _expressionCompatibleValue(for:)(v104, &v106);
  __swift_destroy_boxed_opaque_existential_1(v104);
  if (!*(&v107 + 1))
  {
    (*(v45 + 8))(v58, v44);
    outlined destroy of TermOfAddress?(&v106, &_sypSgMd, &_sypSgMR);
    if (v14)
    {
      goto LABEL_30;
    }

LABEL_29:
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v69 = 2;
LABEL_30:
    swift_willThrow();

    return v14;
  }

  outlined init with take of Any(&v106, &v109);
  v46 = v110;
  v77 = __swift_project_boxed_opaque_existential_1(&v109, v110);
  v112 = v87;
  v52 = *(v46 - 8);
  v78 = *(v52 + 8);
  v79 = MEMORY[0x1EEE9AC00](v77);
  v103 = (v78 + 15) & 0xFFFFFFFFFFFFFFF0;
  v53 = (v87 - v103);
  v49 = *(v52 + 2);
  (v49)(v87 - v103, v79);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
    goto LABEL_47;
  }

  if (v78 == 8)
  {
    v80 = *v53;
    v81 = *(v52 + 1);
    swift_unknownObjectRetain();
    v81(v53, v46);
LABEL_39:
    v82 = v97;
    v83 = v96;
    v70 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v109);
    (*(v95 + 8))(v83, v82);
LABEL_40:
    if (swift_conformsToProtocol2())
    {
      v84 = 100;
    }

    else
    {
      v84 = 10;
    }

    v14 = [objc_allocWithZone(NSComparisonPredicate) initWithLeftExpression:v38 rightExpression:v70 modifier:0 type:v84 options:0];

    return v14;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.SequenceContains<A, B>(void *a1, uint64_t a2)
{
  result = PredicateExpressions.SequenceContains.convert(state:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t PredicateExpressions.Range._lower.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  a2[3] = v3;
  a2[4] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  v6 = *(*(v3 - 8) + 16);

  return v6(boxed_opaque_existential_0, v2, v3);
}

uint64_t PredicateExpressions.Range._upper.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 60);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  a2[3] = v4;
  a2[4] = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  v7 = *(*(v4 - 8) + 16);

  return v7(boxed_opaque_existential_0, v2 + v3, v4);
}

uint64_t RangeExpression._anyRange.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v74 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v64 = type metadata accessor for PartialRangeUpTo();
  v59 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v60 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v58 - v8;
  v68 = type metadata accessor for PartialRangeThrough();
  v61 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v62 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v58 - v11;
  v72 = type metadata accessor for PartialRangeFrom();
  v65 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v66 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v58 - v14;
  v15 = type metadata accessor for ClosedRange();
  v69 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v70 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  v20 = type metadata accessor for Range();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v58 - v25;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v31;
  (*(v31 + 16))(v30, v73, a1, v28);
  if (swift_dynamicCast())
  {
    (*(v21 + 32))(v23, v26, v20);
    v32 = v74;
    *(v74 + 24) = AssociatedTypeWitness;
    *(v32 + 32) = AssociatedConformanceWitness;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
    v34 = *(*(AssociatedTypeWitness - 8) + 32);
    v34(boxed_opaque_existential_0, v23, AssociatedTypeWitness);
    v35 = *(v20 + 36);
    *(v32 + 64) = AssociatedTypeWitness;
    *(v32 + 72) = AssociatedConformanceWitness;
    v36 = __swift_allocate_boxed_opaque_existential_0((v32 + 40));
    v34(v36, &v23[v35], AssociatedTypeWitness);
    *(v32 + 80) = 0;
  }

  else
  {
    v37 = v74;
    if (swift_dynamicCast())
    {
      v38 = v70;
      (*(v69 + 32))(v70, v19, v15);
      v39 = v37;
      *(v37 + 24) = AssociatedTypeWitness;
      *(v37 + 32) = AssociatedConformanceWitness;
      v40 = __swift_allocate_boxed_opaque_existential_0(v37);
      v41 = *(*(AssociatedTypeWitness - 8) + 32);
      v41(v40, v38, AssociatedTypeWitness);
      v42 = *(v15 + 36);
      *(v39 + 64) = AssociatedTypeWitness;
      *(v39 + 72) = AssociatedConformanceWitness;
      v43 = __swift_allocate_boxed_opaque_existential_0((v39 + 40));
      v41(v43, &v38[v42], AssociatedTypeWitness);
      *(v39 + 80) = 1;
    }

    else
    {
      v45 = v71;
      v44 = v72;
      if (swift_dynamicCast())
      {
        v46 = v66;
        (*(v65 + 32))(v66, v45, v44);
        *(v37 + 24) = AssociatedTypeWitness;
        *(v37 + 32) = AssociatedConformanceWitness;
        v47 = __swift_allocate_boxed_opaque_existential_0(v37);
        (*(*(AssociatedTypeWitness - 8) + 32))(v47, v46, AssociatedTypeWitness);
        v48 = 2;
      }

      else
      {
        v50 = v67;
        v49 = v68;
        if (swift_dynamicCast())
        {
          v51 = v62;
          (*(v61 + 32))(v62, v50, v49);
          *(v37 + 24) = AssociatedTypeWitness;
          *(v37 + 32) = AssociatedConformanceWitness;
          v52 = __swift_allocate_boxed_opaque_existential_0(v37);
          (*(*(AssociatedTypeWitness - 8) + 32))(v52, v51, AssociatedTypeWitness);
          v48 = 3;
        }

        else
        {
          v54 = v63;
          v53 = v64;
          if (swift_dynamicCast())
          {
            v55 = v60;
            (*(v59 + 32))(v60, v54, v53);
            *(v37 + 24) = AssociatedTypeWitness;
            *(v37 + 32) = AssociatedConformanceWitness;
            v56 = __swift_allocate_boxed_opaque_existential_0(v37);
            (*(*(AssociatedTypeWitness - 8) + 32))(v56, v55, AssociatedTypeWitness);
            v48 = 4;
          }

          else
          {
            *(v37 + 48) = 0u;
            *(v37 + 64) = 0u;
            *(v37 + 16) = 0u;
            *(v37 + 32) = 0u;
            *v37 = 0u;
            v48 = -1;
          }
        }
      }

      *(v37 + 80) = v48;
    }
  }

  return (*(v75 + 8))(v30, a1);
}

uint64_t PredicateExpressions.RangeExpressionContains.convert(state:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v232 = a1;
  v5 = *(a2 + 16);
  v224 = *(a2 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v219 = *(v7 - 8);
  v220 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v227 = v214 - v8;
  v223 = AssociatedTypeWitness;
  v222 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9);
  v218 = v214 - v10;
  v226 = v5;
  v230 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v217 = v214 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v221 = v214 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v225 = v214 - v16;
  v17 = *(a2 + 24);
  v236 = *(a2 + 40);
  v18 = swift_getAssociatedTypeWitness();
  v231 = type metadata accessor for Optional();
  v19 = *(v231 - 1);
  MEMORY[0x1EEE9AC00](v231);
  v21 = v214 - v20;
  v234 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v228 = (v214 - v23);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = v214 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = a2;
  v28 = *(a2 + 60);
  v30 = *(v29 + 16);
  v259 = v3;
  v30(v27, v3 + v28, v17, v25);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMR);
  v233 = v17;
  v229 = v31;
  v32 = swift_dynamicCast();
  v33 = MEMORY[0x1E69E7CC0];
  if (v32)
  {
    outlined init with take of Equatable(&v247, &v253);
    v34 = *(&v254 + 1);
    v35 = v255;
    __swift_project_boxed_opaque_existential_1(&v253, *(&v254 + 1));
    v36 = v235;
    v37 = (*(v35 + 16))(v232, v34, v35);
    v39 = v36;
    if (!v36)
    {
      v48 = v37;
      v49 = v38;
      __swift_destroy_boxed_opaque_existential_1(&v253);
      if (v49)
      {
        LOBYTE(v253) = 1;
        v50 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v51 = objc_opt_self();
        v52 = [v51 expressionForConstantValue_];
        swift_unknownObjectRelease();
        LOBYTE(v253) = 0;
        v53 = [v51 expressionForConstantValue_];
        swift_unknownObjectRelease();
        v54 = [v51 expressionForConditional:v48 trueExpression:v52 falseExpression:v53];

        v48 = v54;
      }

      v55 = v226;
      v56 = v259;
      goto LABEL_21;
    }

    __swift_destroy_boxed_opaque_existential_1(&v253);
    v40 = 0;
    v41 = v39;
    v33 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    *&v249 = 0;
    v247 = 0u;
    v248 = 0u;
    outlined destroy of TermOfAddress?(&v247, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
    v41 = 0;
    v40 = v235;
  }

  *&v253 = v33;
  (v236[2])(&v253, v233);
  if (v40)
  {

    v234[7](v21, 1, 1, v18);
    (*(v19 + 8))(v21, v231);
    if (v41)
    {
LABEL_8:
      swift_willThrow();
      return v28;
    }

LABEL_7:
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v42 = 2;
    goto LABEL_8;
  }

  v44 = v234;
  v234[7](v21, 0, 1, v18);
  v45 = v228;
  (v44[4])(v228, v21, v18);
  *(&v245 + 1) = v18;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v244);
  (v44[2])(boxed_opaque_existential_0, v45, v18);
  _expressionCompatibleValue(for:)(&v244, &v247);
  v47 = 0;
  __swift_destroy_boxed_opaque_existential_1(&v244);
  if (!*(&v248 + 1))
  {
    v120 = v44[1];
    v28 = (v44 + 1);
    (v120)(v45, v18);
    outlined destroy of TermOfAddress?(&v247, &_sypSgMd, &_sypSgMR);
    if (v41)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v235 = v41;
  outlined init with take of Any(&v247, &v253);
  v57 = *(&v254 + 1);
  v58 = __swift_project_boxed_opaque_existential_1(&v253, *(&v254 + 1));
  v231 = v214;
  v59 = *(v57 - 8);
  v60 = v59[8];
  v61 = MEMORY[0x1EEE9AC00](v58);
  v62 = ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = (v214 - v62);
  v64 = (v59 + 2);
  v215 = v59[2];
  v215(v214 - v62, v61);
  result = _swift_isClassOrObjCExistentialType();
  if (result)
  {
    if (v60 != 8)
    {
      __break(1u);
      goto LABEL_97;
    }

    v65 = *v63;
    v66 = v59[1];
    swift_unknownObjectRetain();
    v66(v63, v57);
  }

  else
  {
    v214[1] = v214;
    v210 = MEMORY[0x1EEE9AC00](result);
    (v215)(v214 - v62, v63, v57, v210);
    v65 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (v59[1])(v63, v57);
  }

  v67 = v259;
  v48 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v253);
  (v234[1])(v228, v18);
  v55 = v226;
  v56 = v67;
LABEL_21:
  v68 = v227;
  v70 = v230 + 16;
  v69 = *(v230 + 2);
  v69(v225, v56, v55);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(&v247, &v253);
    v71 = *(&v254 + 1);
    v72 = v255;
    __swift_project_boxed_opaque_existential_1(&v253, *(&v254 + 1));
    v100 = (*(v72 + 16))(v232, v71, v72);
    v235 = 0;
    v102 = v101;
    __swift_destroy_boxed_opaque_existential_1(&v253);
    if (v102)
    {
      LOBYTE(v253) = 1;
      v103 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v104 = objc_opt_self();
      v105 = [v104 expressionForConstantValue_];
      swift_unknownObjectRelease();
      LOBYTE(v253) = 0;
      v106 = [v104 expressionForConstantValue_];
      swift_unknownObjectRelease();
      v107 = [v104 expressionForConditional:v100 trueExpression:v105 falseExpression:v106];

      v100 = v107;
    }

    goto LABEL_48;
  }

  *&v249 = 0;
  v247 = 0u;
  v248 = 0u;
  outlined destroy of TermOfAddress?(&v247, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
  v62 = 0;
  *&v253 = MEMORY[0x1E69E7CC0];
  (*(v224 + 16))(&v253, v55);
  v230 = v70;
  v234 = v48;

  v93 = v222;
  v94 = v68;
  v95 = v68;
  v96 = v223;
  (*(v222 + 56))(v94, 0, 1, v223);
  v97 = v218;
  (*(v93 + 32))(v218, v95, v96);
  *(&v245 + 1) = v96;
  v98 = __swift_allocate_boxed_opaque_existential_0(&v244);
  (*(v93 + 16))(v98, v97, v96);
  _expressionCompatibleValue(for:)(&v244, &v247);
  v235 = 0;
  __swift_destroy_boxed_opaque_existential_1(&v244);
  if (*(&v248 + 1))
  {
    outlined init with take of Any(&v247, &v253);
    v57 = *(&v254 + 1);
    v121 = __swift_project_boxed_opaque_existential_1(&v253, *(&v254 + 1));
    v259 = v214;
    v60 = *(v57 - 8);
    v108 = v60[8];
    v122 = MEMORY[0x1EEE9AC00](v121);
    v64 = (v108 + 15) & 0xFFFFFFFFFFFFFFF0;
    v63 = v214 - v64;
    v123 = (v60 + 2);
    v47 = v60[2];
    v47(v214 - v64, v122);
    result = _swift_isClassOrObjCExistentialType();
    if (result)
    {
      if (v108 == 8)
      {
        v124 = *v63;
        v125 = v60[1];
        swift_unknownObjectRetain();
        v125(v214 - v64, v57);
LABEL_47:
        v48 = v234;
        v127 = v222;
        v126 = v223;
        v128 = v218;
        v100 = [objc_opt_self() expressionForConstantValue_];
        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1(&v253);
        (*(v127 + 8))(v128, v126);
LABEL_48:
        v28 = [objc_allocWithZone(NSComparisonPredicate) initWithLeftExpression:v48 rightExpression:v100 modifier:0 type:100 options:0];

        return v28;
      }

      __break(1u);
      goto LABEL_99;
    }

LABEL_97:
    v236 = v214;
    v211 = MEMORY[0x1EEE9AC00](result);
    (v47)(v214 - v64, v63, v57, v211);
    v124 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (v60[1])(v63, v57);
    goto LABEL_47;
  }

  (*(v222 + 8))(v218, v223);
  v99 = v234;
  outlined destroy of TermOfAddress?(&v247, &_sypSgMd, &_sypSgMR);
  lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
  v28 = swift_allocError();
  *v73 = 2;
  swift_willThrow();
  v236 = 0;

  v74 = v259;
  v69(v221, v259, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_RangeOperator33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd, &_s10Foundation14_RangeOperator33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v249 = 0;
    v247 = 0u;
    v248 = 0u;
    outlined destroy of TermOfAddress?(&v247, &_s10Foundation14_RangeOperator33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation14_RangeOperator33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
    v69(v217, v74, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11_RangeValue33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd, &_s10Foundation11_RangeValue33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMR);
    if (swift_dynamicCast())
    {
      v88 = *(&v245 + 1);
      v28 = v246;
      __swift_project_boxed_opaque_existential_1(&v244, *(&v245 + 1));
      (*(v28 + 8))(&v247, v88, v28);
      __swift_destroy_boxed_opaque_existential_1(&v244);
      if (v252 != 255)
      {
        v255 = v249;
        v256 = v250;
        v257 = v251;
        v258 = v252;
        v253 = v247;
        v254 = v248;
        outlined init with copy of AnyRange(&v253, &v247);
        if (v252 <= 1u)
        {
          v28 = v233;
          if (v252)
          {
            outlined init with take of Equatable(&v247, &v244);
            outlined init with take of Equatable((&v249 + 8), &v241);
            v175 = *(&v242 + 1);
            v176 = __swift_project_boxed_opaque_existential_1(&v241, *(&v242 + 1));
            v238[3] = v175;
            v177 = __swift_allocate_boxed_opaque_existential_0(v238);
            (*(*(v175 - 8) + 16))(v177, v176, v175);
            v178 = v236;
            _expressionCompatibleValue(for:)(v238, v239);
            if (v178)
            {
              outlined destroy of AnyRange(&v253);

              __swift_destroy_boxed_opaque_existential_1(v238);
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_1(v238);
              v197 = *(&v245 + 1);
              v198 = __swift_project_boxed_opaque_existential_1(&v244, *(&v245 + 1));
              v237[3] = v197;
              v199 = __swift_allocate_boxed_opaque_existential_0(v237);
              (*(*(v197 - 8) + 16))(v199, v198, v197);
              _expressionCompatibleValue(for:)(v237, v238);
              __swift_destroy_boxed_opaque_existential_1(v237);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypSgGMd, &_ss23_ContiguousArrayStorageCyypSgGMR);
              v207 = swift_allocObject();
              *(v207 + 16) = xmmword_181215ED0;
              outlined init with copy of Any?(v239, v207 + 32);
              outlined init with copy of Any?(v238, v207 + 64);
              v237[0] = v207;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypSgGMd, &_sSayypSgGMR);
              v208 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
              v209 = [objc_opt_self() expressionForConstantValue_];
              swift_unknownObjectRelease();
              v28 = [objc_allocWithZone(NSComparisonPredicate) initWithLeftExpression:v99 rightExpression:v209 modifier:0 type:100 options:0];

              outlined destroy of TermOfAddress?(v238, &_sypSgMd, &_sypSgMR);
              outlined destroy of TermOfAddress?(v239, &_sypSgMd, &_sypSgMR);
              outlined destroy of AnyRange(&v253);
            }

            __swift_destroy_boxed_opaque_existential_1(&v241);
            __swift_destroy_boxed_opaque_existential_1(&v244);
          }

          else
          {
            outlined init with take of Equatable(&v247, &v244);
            outlined init with take of Equatable((&v249 + 8), &v241);
            v140 = v236;
            v141 = specialized PredicateExpressions.RangeExpressionContains._expressionForBound(_:)(&v241);
            if (!v140)
            {
              v142 = v141;
              v259 = [objc_allocWithZone(NSComparisonPredicate) initWithLeftExpression:v99 rightExpression:v141 modifier:0 type:3 options:0];

              v200 = specialized PredicateExpressions.RangeExpressionContains._expressionForBound(_:)(&v244);
              v201 = [objc_allocWithZone(NSComparisonPredicate) initWithLeftExpression:v99 rightExpression:v200 modifier:0 type:0 options:0];

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
              v202 = swift_allocObject();
              *(v202 + 16) = xmmword_181244B50;
              v203 = v259;
              *(v202 + 32) = v259;
              *(v202 + 40) = v201;
              type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSPredicate, off_1E69EE7E8);
              v204 = v203;
              v205 = v201;
              v206 = _ContiguousArrayBuffer._asCocoaArray()();
              v28 = [objc_opt_self() andPredicateWithSubpredicates_];

              swift_unknownObjectRelease();
            }

            __swift_destroy_boxed_opaque_existential_1(&v241);
            __swift_destroy_boxed_opaque_existential_1(&v244);
            outlined destroy of AnyRange(&v253);
          }

          return v28;
        }

        if (v252 == 2)
        {
          outlined init with take of Equatable(&v247, &v244);
          v171 = v236;
          v172 = specialized PredicateExpressions.RangeExpressionContains._expressionForBound(_:)(&v244);
          if (!v171)
          {
            v91 = v172;
            v92 = [objc_allocWithZone(NSComparisonPredicate) initWithLeftExpression:v99 rightExpression:v172 modifier:0 type:3 options:0];
            goto LABEL_92;
          }
        }

        else if (v252 == 3)
        {
          outlined init with take of Equatable(&v247, &v244);
          v89 = v236;
          v90 = specialized PredicateExpressions.RangeExpressionContains._expressionForBound(_:)(&v244);
          if (!v89)
          {
            v91 = v90;
            v92 = [objc_allocWithZone(NSComparisonPredicate) initWithLeftExpression:v99 rightExpression:v90 modifier:0 type:1 options:0];
LABEL_92:
            v28 = v92;

            __swift_destroy_boxed_opaque_existential_1(&v244);
            outlined destroy of AnyRange(&v253);
            return v28;
          }
        }

        else
        {
          outlined init with take of Equatable(&v247, &v244);
          v173 = v236;
          v174 = specialized PredicateExpressions.RangeExpressionContains._expressionForBound(_:)(&v244);
          if (!v173)
          {
            v91 = v174;
            v92 = [objc_allocWithZone(NSComparisonPredicate) initWithLeftExpression:v99 rightExpression:v174 modifier:0 type:0 options:0];
            goto LABEL_92;
          }
        }

        __swift_destroy_boxed_opaque_existential_1(&v244);
        outlined destroy of AnyRange(&v253);
        return v28;
      }
    }

    else
    {
      v246 = 0;
      v244 = 0u;
      v245 = 0u;
      outlined destroy of TermOfAddress?(&v244, &_s10Foundation11_RangeValue33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation11_RangeValue33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
      v247 = 0u;
      v248 = 0u;
      v249 = 0u;
      v250 = 0u;
      v251 = 0u;
      v252 = -1;
    }

    outlined destroy of TermOfAddress?(&v247, &_s10Foundation8AnyRange33_A3487D94EFC39AEF5509F22CD3D93BF3LLOSgMd, &_s10Foundation8AnyRange33_A3487D94EFC39AEF5509F22CD3D93BF3LLOSgMR);
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v119 = 2;
    swift_willThrow();

    return v28;
  }

  v234 = v99;
  outlined init with take of Equatable(&v247, &v253);
  v75 = *(&v254 + 1);
  v76 = v255;
  __swift_project_boxed_opaque_existential_1(&v253, *(&v254 + 1));
  (*(v76 + 8))(&v247, v75, v76);
  v77 = *(&v248 + 1);
  v78 = v249;
  v79 = __swift_project_boxed_opaque_existential_1(&v247, *(&v248 + 1));
  v80 = MEMORY[0x1EEE9AC00](v79);
  (*(v82 + 16))(v214 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0), v79, v77, v80);
  if (!swift_dynamicCast())
  {
    v243 = 0;
    v241 = 0u;
    v242 = 0u;
    outlined destroy of TermOfAddress?(&v241, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
    v235 = 0;
LABEL_38:
    v108 = swift_getAssociatedTypeWitness();
    v259 = v214;
    v109 = *(v108 - 8);
    MEMORY[0x1EEE9AC00](v108);
    v231 = (v214 - v110);
    v111 = type metadata accessor for Optional();
    v233 = v214;
    v112 = *(v111 - 8);
    v113 = MEMORY[0x1EEE9AC00](v111);
    v115 = v214 - v114;
    *&v244 = MEMORY[0x1E69E7CC0];
    v116 = v236;
    (*(v78 + 16))(&v244, v77, v78, v113);
    if (v116)
    {

      (*(v109 + 56))(v115, 1, 1, v108);
      (*(v112 + 8))(v115, v111);
      v117 = v234;
      v118 = v235;
    }

    else
    {

      (*(v109 + 56))(v115, 0, 1, v108);
      v129 = v231;
      (*(v109 + 32))(v231, v115, v108);
      v240 = v108;
      v130 = __swift_allocate_boxed_opaque_existential_0(v239);
      (*(v109 + 16))(v130, v129, v108);
      _expressionCompatibleValue(for:)(v239, &v241);
      v118 = v235;
      __swift_destroy_boxed_opaque_existential_1(v239);
      if (*(&v242 + 1))
      {
        v236 = v109;
        outlined init with take of Any(&v241, &v244);
        v57 = *(&v245 + 1);
        v143 = __swift_project_boxed_opaque_existential_1(&v244, *(&v245 + 1));
        v230 = v214;
        v64 = *(v57 - 8);
        v144 = *(v64 + 64);
        v145 = MEMORY[0x1EEE9AC00](v143);
        v123 = (v144 + 15) & 0xFFFFFFFFFFFFFFF0;
        v63 = v214 - v123;
        v228 = *(v64 + 16);
        v228(v214 - v123, v145);
        result = _swift_isClassOrObjCExistentialType();
        if (result)
        {
          if (v144 != 8)
          {
            __break(1u);
LABEL_101:
            v228 = v214;
            v213 = MEMORY[0x1EEE9AC00](result);
            (v64)(v214 - v123, v63, v57, v213);
            v191 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
            (*(v144 + 8))(v63, v57);
            goto LABEL_89;
          }

          v146 = *v63;
          v147 = *(v64 + 8);
          swift_unknownObjectRetain();
          v147(v214 - v123, v57);
          goto LABEL_65;
        }

LABEL_99:
        v227 = v214;
        v212 = MEMORY[0x1EEE9AC00](result);
        (v228)(v214 - v123, v63, v57, v212);
        v146 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        (*(v64 + 8))(v63, v57);
LABEL_65:
        v148 = v236;
        v259 = [objc_opt_self() expressionForConstantValue_];
        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1(&v244);
        (v148[1])(v231, v108);
        goto LABEL_66;
      }

      (*(v109 + 8))(v129, v108);
      outlined destroy of TermOfAddress?(&v241, &_sypSgMd, &_sypSgMR);
      v117 = v234;
    }

    v28 = v233;
    if (!v118)
    {
      lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
      swift_allocError();
      *v131 = 2;
    }

    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(&v247);
    __swift_destroy_boxed_opaque_existential_1(&v253);
    return v28;
  }

  outlined init with take of Equatable(&v241, &v244);
  v83 = *(&v245 + 1);
  v84 = v246;
  __swift_project_boxed_opaque_existential_1(&v244, *(&v245 + 1));
  v85 = v236;
  v86 = (*(v84 + 16))(v232, v83, v84);
  if (v85)
  {
    __swift_destroy_boxed_opaque_existential_1(&v244);
    v235 = v85;
    v236 = 0;
    goto LABEL_38;
  }

  v132 = v87;
  v259 = v86;
  __swift_destroy_boxed_opaque_existential_1(&v244);
  if (v132)
  {
    LOBYTE(v244) = 1;
    v133 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v134 = objc_opt_self();
    v135 = [v134 expressionForConstantValue_];
    swift_unknownObjectRelease();
    LOBYTE(v244) = 0;
    v136 = [v134 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v137 = v134;
    v138 = v259;
    v139 = [v137 expressionForConditional:v259 trueExpression:v135 falseExpression:v136];

    v259 = v139;
  }

LABEL_66:
  __swift_destroy_boxed_opaque_existential_1(&v247);
  v149 = *(&v254 + 1);
  v150 = v255;
  __swift_project_boxed_opaque_existential_1(&v253, *(&v254 + 1));
  (*(v150 + 16))(&v247, v149, v150);
  v152 = *(&v248 + 1);
  v151 = v249;
  v153 = __swift_project_boxed_opaque_existential_1(&v247, *(&v248 + 1));
  v154 = MEMORY[0x1EEE9AC00](v153);
  (*(v156 + 16))(v214 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0), v153, v152, v154);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(&v241, &v244);
    v157 = *(&v245 + 1);
    v158 = v246;
    __swift_project_boxed_opaque_existential_1(&v244, *(&v245 + 1));
    v179 = (*(v158 + 16))(v232, v157, v158);
    v181 = v180;
    __swift_destroy_boxed_opaque_existential_1(&v244);
    if (v181)
    {
      LOBYTE(v244) = 1;
      v182 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v183 = objc_opt_self();
      v184 = [v183 expressionForConstantValue_];
      swift_unknownObjectRelease();
      LOBYTE(v244) = 0;
      v185 = [v183 expressionForConstantValue_];
      swift_unknownObjectRelease();
      v186 = [v183 expressionForConditional:v179 trueExpression:v184 falseExpression:v185];

      v179 = v186;
    }

    v187 = v234;
    goto LABEL_90;
  }

  v243 = 0;
  v241 = 0u;
  v242 = 0u;
  outlined destroy of TermOfAddress?(&v241, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
  v231 = 0;
  v236 = 0;
  v28 = swift_getAssociatedTypeWitness();
  v233 = v214;
  v159 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v230 = v214 - v160;
  v161 = type metadata accessor for Optional();
  v232 = v214;
  v162 = *(v161 - 8);
  v163 = MEMORY[0x1EEE9AC00](v161);
  v165 = v214 - v164;
  *&v244 = MEMORY[0x1E69E7CC0];
  v166 = v236;
  (*(v151 + 16))(&v244, v152, v151, v163);
  if (v166)
  {

    (*(v159 + 56))(v165, 1, 1, v28);
    (*(v162 + 8))(v165, v161);
LABEL_71:
    v169 = v234;
    if (!v231)
    {
      lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
      swift_allocError();
      *v170 = 2;
    }

    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(&v247);
    __swift_destroy_boxed_opaque_existential_1(&v253);
    return v28;
  }

  (*(v159 + 56))(v165, 0, 1, v28);
  v167 = v230;
  (*(v159 + 32))(v230, v165, v28);
  v240 = v28;
  v168 = __swift_allocate_boxed_opaque_existential_0(v239);
  (*(v159 + 16))(v168, v167, v28);
  _expressionCompatibleValue(for:)(v239, &v241);
  __swift_destroy_boxed_opaque_existential_1(v239);
  if (!*(&v242 + 1))
  {
    (*(v159 + 8))(v167, v28);
    outlined destroy of TermOfAddress?(&v241, &_sypSgMd, &_sypSgMR);
    goto LABEL_71;
  }

  v229 = v159;
  v235 = 0;
  v236 = v28;
  outlined init with take of Any(&v241, &v244);
  v57 = *(&v245 + 1);
  v188 = __swift_project_boxed_opaque_existential_1(&v244, *(&v245 + 1));
  v144 = *(v57 - 8);
  v189 = *(v144 + 64);
  v190 = MEMORY[0x1EEE9AC00](v188);
  v123 = (v189 + 15) & 0xFFFFFFFFFFFFFFF0;
  v63 = v214 - v123;
  v64 = *(v144 + 16);
  (v64)(v214 - v123, v190);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
    goto LABEL_101;
  }

  if (v189 == 8)
  {
    v191 = *v63;
    v192 = *(v144 + 8);
    swift_unknownObjectRetain();
    v192(v214 - v123, v57);
LABEL_89:
    v187 = v234;
    v179 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v244);
    (*(v229 + 8))(v230, v236);
LABEL_90:
    __swift_destroy_boxed_opaque_existential_1(&v247);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v193 = swift_allocObject();
    *(v193 + 16) = xmmword_181244B50;
    v194 = objc_allocWithZone(NSComparisonPredicate);
    v195 = v259;
    *(v193 + 32) = [v194 initWithLeftExpression:v187 rightExpression:v259 modifier:0 type:3 options:0];
    *(v193 + 40) = [objc_allocWithZone(NSComparisonPredicate) initWithLeftExpression:v187 rightExpression:v179 modifier:0 type:0 options:0];
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSPredicate, off_1E69EE7E8);
    v196 = _ContiguousArrayBuffer._asCocoaArray()();
    v28 = [objc_opt_self() andPredicateWithSubpredicates_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v253);
    return v28;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.RangeExpressionContains<A, B>(void *a1, uint64_t a2)
{
  result = PredicateExpressions.RangeExpressionContains.convert(state:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t *PredicateExpressions.SequenceContainsWhere.convert(state:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v231 = *MEMORY[0x1E69E9840];
  v212 = *(a2 + 24);
  v6 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v208 = &v202 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  v216 = *(v8 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v214 = type metadata accessor for Optional();
  v213 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v217 = &v202 - v11;
  v219 = AssociatedTypeWitness;
  v218 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v209 = &v202 - v13;
  v220 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v202 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = a2;
  v17 = *(v3 + *(a2 + 64));
  *&v228 = 0x5F6C61636F6C5FLL;
  *(&v228 + 1) = 0xE700000000000000;
  *&v225 = *v5;
  v18 = v225;
  v19 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v19);

  if (v18 == -1)
  {
    __break(1u);
    goto LABEL_83;
  }

  v207 = v6;
  v222 = v3;
  v21 = *(&v228 + 1);
  v20 = v228;
  *v5 = v18 + 1;
  v205 = v20;
  v22 = String._bridgeToObjectiveCImpl()();
  v206 = objc_opt_self();
  v6 = [v206 expressionForVariable_];
  swift_unknownObjectRelease();
  v215 = v5;
  if (!v6)
  {
    v33 = specialized __RawDictionaryStorage.find<A>(_:)();
    v34 = v222;
    if (v35)
    {
      v36 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v5[1];
      if (isUniquelyReferenced_nonNull_native)
      {
        v39 = v5[1];
      }

      else
      {
        v210 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation20PredicateExpressionsO10VariableIDVSo12NSExpressionCGMd, &_ss18_DictionaryStorageCy10Foundation20PredicateExpressionsO10VariableIDVSo12NSExpressionCGMR);
        v184 = static _DictionaryStorage.copy(original:)();
        v39 = v184;
        if (*(v38 + 16))
        {
          v185 = (v184 + 64);
          v186 = v38 + 64;
          v187 = ((1 << *(v39 + 32)) + 63) >> 6;
          if (v39 != v38 || v185 >= v186 + 8 * v187)
          {
            memmove(v185, (v38 + 64), 8 * v187);
          }

          v188 = 0;
          *(v39 + 16) = *(v38 + 16);
          v189 = 1 << *(v38 + 32);
          v190 = *(v38 + 64);
          v191 = -1;
          if (v189 < 64)
          {
            v191 = ~(-1 << v189);
          }

          v192 = v191 & v190;
          v193 = (v189 + 63) >> 6;
          if ((v191 & v190) != 0)
          {
            do
            {
              v194 = __clz(__rbit64(v192));
              v192 &= v192 - 1;
LABEL_179:
              v197 = v194 | (v188 << 6);
              v198 = *(*(v38 + 56) + 8 * v197);
              *(*(v39 + 48) + 8 * v197) = *(*(v38 + 48) + 8 * v197);
              *(*(v39 + 56) + 8 * v197) = v198;
              v199 = v198;
            }

            while (v192);
          }

          v195 = v188;
          v5 = v215;
          while (1)
          {
            v188 = v195 + 1;
            if (__OFADD__(v195, 1))
            {
              break;
            }

            if (v188 >= v193)
            {
              goto LABEL_181;
            }

            v196 = *(v186 + 8 * v188);
            ++v195;
            if (v196)
            {
              v194 = __clz(__rbit64(v196));
              v192 = (v196 - 1) & v196;
              goto LABEL_179;
            }
          }

          __break(1u);
LABEL_189:
          __break(1u);
          goto LABEL_190;
        }

LABEL_181:

        v21 = v210;
        v34 = v222;
      }

      specialized _NativeDictionary._delete(at:)(v36, v39);
      v5[1] = v39;
    }

LABEL_17:
    (v220[2])(v16, v34, v9);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMR);
    v43 = swift_dynamicCast();
    v44 = MEMORY[0x1E69E7CC0];
    if (v43)
    {
      outlined init with take of Equatable(&v225, &v228);
      v45 = v229;
      v46 = v230;
      __swift_project_boxed_opaque_existential_1(&v228, v229);
      v47 = v221;
      v48 = (*(v46 + 16))(v5, v45, v46);
      v50 = v47;
      if (!v47)
      {
        v60 = v49;
        v221 = v48;
        __swift_destroy_boxed_opaque_existential_1(&v228);
        if (v60)
        {
          LOBYTE(v228) = 1;
          v61 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
          v62 = v206;
          v63 = [v206 expressionForConstantValue_];
          swift_unknownObjectRelease();
          LOBYTE(v228) = 0;
          v64 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
          v34 = v222;
          v65 = [v62 expressionForConstantValue_];
          swift_unknownObjectRelease();
          v66 = v62;
          v67 = v221;
          v68 = [v66 expressionForConditional:v221 trueExpression:v63 falseExpression:v65];

          v221 = v68;
        }

        goto LABEL_35;
      }

      __swift_destroy_boxed_opaque_existential_1(&v228);
      v51 = 0;
      v52 = v50;
      v44 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v227 = 0;
      v225 = 0u;
      v226 = 0u;
      outlined destroy of TermOfAddress?(&v225, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
      v52 = 0;
      v51 = v221;
    }

    *&v228 = v44;
    v53 = v217;
    v54 = v34;
    (*(v216 + 16))(&v228, v9);
    if (v51)
    {

      (*(v218 + 56))(v53, 1, 1, v219);
      (*(v213 + 8))(v53, v214);
      if (v52)
      {
LABEL_24:
        swift_willThrow();
        return v54;
      }

LABEL_23:
      lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
      swift_allocError();
      *v55 = 2;
      goto LABEL_24;
    }

    v54 = 0;

    v57 = v218;
    v56 = v219;
    (*(v218 + 56))(v53, 0, 1, v219);
    v58 = v209;
    (*(v57 + 32))(v209, v53, v56);
    v224 = v56;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v223 + 1));
    (*(v57 + 16))(boxed_opaque_existential_0, v58, v56);
    _expressionCompatibleValue(for:)(v223 + 1, &v225);
    __swift_destroy_boxed_opaque_existential_1((v223 + 1));
    if (!*(&v226 + 1))
    {
      (*(v57 + 8))(v58, v56);

      outlined destroy of TermOfAddress?(&v225, &_sypSgMd, &_sypSgMR);
      if (v52)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v210 = v21;
    v220 = v52;
    outlined init with take of Any(&v225, &v228);
    v69 = v229;
    v70 = __swift_project_boxed_opaque_existential_1(&v228, v229);
    v221 = &v202;
    v71 = *(v69 - 8);
    v72 = v71[8];
    v73 = MEMORY[0x1EEE9AC00](v70);
    v74 = (v72 + 15) & 0xFFFFFFFFFFFFFFF0;
    v75 = &v202 - v74;
    v77 = (v71 + 2);
    v76 = v71[2];
    (v76)(&v202 - v74, v73);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    if (isClassOrObjCExistentialType)
    {
      if (v72 != 8)
      {
        __break(1u);
        goto LABEL_184;
      }

      v79 = *v75;
      v80 = v71[1];
      swift_unknownObjectRetain();
      v80(&v202 - v74, v69);
    }

    else
    {
      v217 = &v202;
      v200 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
      (v76)(&v202 - v74, &v202 - v74, v69, v200);
      v79 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      (v71[1])(&v202 - v74, v69);
    }

    v21 = v210;
    v5 = v215;
    v81 = v220;
    v221 = [v206 expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v228);
    (*(v218 + 8))(v209, v219);
    v34 = v222;
LABEL_35:
    (v207[2])(v208, v34 + *(v211 + 60), v212);
    if (swift_dynamicCast())
    {
      outlined init with take of Equatable(&v225, &v228);
      v82 = v229;
      v83 = v230;
      __swift_project_boxed_opaque_existential_1(&v228, v229);
      v86 = (*(v83 + 16))(v5, v82, v83);
      v88 = v87;
      __swift_destroy_boxed_opaque_existential_1(&v228);
      v89 = v206;
      if (v88)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

    v227 = 0;
    v225 = 0u;
    v226 = 0u;
    outlined destroy of TermOfAddress?(&v225, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
    v42 = 0;
    *&v228 = MEMORY[0x1E69E7CC0];
    (*(*(v211 + 40) + 16))(v223, &v228, v212);
    v54 = 0;

    if (LOBYTE(v223[0]) == 2)
    {

LABEL_39:
      lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
      swift_allocError();
      *v84 = 2;
      swift_willThrow();

      return v54;
    }

    v224 = MEMORY[0x1E69E6370];
    BYTE1(v223[0]) = v223[0] & 1;
    _expressionCompatibleValue(for:)(v223 + 1, &v225);
    v54 = 0;
    __swift_destroy_boxed_opaque_existential_1((v223 + 1));
    if (!*(&v226 + 1))
    {

      outlined destroy of TermOfAddress?(&v225, &_sypSgMd, &_sypSgMR);
      goto LABEL_39;
    }

    v210 = v21;
    v220 = 0;
    outlined init with take of Any(&v225, &v228);
    v69 = v229;
    v90 = __swift_project_boxed_opaque_existential_1(&v228, v229);
    v76 = *(v69 - 8);
    v91 = *(v76 + 64);
    v92 = MEMORY[0x1EEE9AC00](v90);
    v71 = ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
    v75 = (&v202 - v71);
    v77 = *(v76 + 16);
    v77(&v202 - v71, v92);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    if (isClassOrObjCExistentialType)
    {
      if (v91 != 8)
      {
        __break(1u);
        goto LABEL_186;
      }

      v93 = *v75;
      v94 = *(v76 + 8);
      swift_unknownObjectRetain();
      v94(&v202 - v71, v69);
      goto LABEL_48;
    }

LABEL_184:
    v222 = &v202;
    v201 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
    (v77)(&v202 - v71, v75, v69, v201);
    v93 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (*(v76 + 8))(v75, v69);
LABEL_48:
    v89 = v206;
    v86 = [v206 expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v228);
LABEL_49:
    LOBYTE(v228) = 1;
    v95 = [v89 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v96 = [objc_allocWithZone(NSComparisonPredicate) initWithLeftExpression:v86 rightExpression:v95 modifier:0 type:4 options:0];

    v86 = v96;
LABEL_50:
    v97 = String._bridgeToObjectiveCImpl()();

    v98 = v221;
    v18 = [v89 expressionForSubquery:v221 usingIteratorVariable:v97 predicate:v86];

    swift_unknownObjectRelease();
    if ([v18 expressionType] == 1)
    {
      v99 = [v89 expressionForKeyPath_];
LABEL_164:
      v145 = v99;
      swift_unknownObjectRelease();
      goto LABEL_165;
    }

    if ([v18 expressionType] != 3)
    {
      goto LABEL_103;
    }

    v6 = &selRef_initWithBundleIdentifier_storeIdentifier_;
    v100 = [v18 keyPath];
    if (!v100)
    {
      goto LABEL_79;
    }

    v101 = v100;
    isTaggedPointer = _objc_isTaggedPointer(v100);
    v103 = v101;
    v17 = v103;
    if (!isTaggedPointer)
    {
LABEL_59:
      LOBYTE(v225) = 0;
      *&v228 = 0;
      LOWORD(v223[0]) = 0;
      IsCF = __CFStringIsCF();
      if (IsCF)
      {
        v105 = v228;
        if (!v228)
        {

          v107 = 0xE000000000000000;
          goto LABEL_94;
        }

        if (LOBYTE(v223[0]) == 1)
        {
          if (v225)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v115 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_92;
        }

        if ((v223[0] & 0x100) == 0)
        {
          goto LABEL_91;
        }

        if (v225 == 1)
        {
          MEMORY[0x1EEE9AC00](IsCF);
LABEL_86:
          v118 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v107 = v119;
          v120 = HIBYTE(v119) & 0xF;
          if ((v119 & 0x2000000000000000) == 0)
          {
            v120 = v118 & 0xFFFFFFFFFFFFLL;
          }

          if (v120)
          {
            v105 = v118;
            goto LABEL_73;
          }

LABEL_91:
          v115 = String.init(_cocoaString:)();
LABEL_92:
          v105 = v115;
          v107 = v116;
          goto LABEL_93;
        }

LABEL_85:
        v117 = [v17 lengthOfBytesUsingEncoding_];
        MEMORY[0x1EEE9AC00](v117);
        goto LABEL_86;
      }

      v109 = v17;
      v110 = String.init(_nativeStorage:)();
      if (v111)
      {
        v105 = v110;
        v107 = v111;

        goto LABEL_94;
      }

      *&v228 = [v109 length];
      if (v228)
      {
        goto LABEL_91;
      }

LABEL_79:
      v105 = 0;
      v107 = 0xE000000000000000;
      goto LABEL_94;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v103);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v105 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v107 = v106;

          goto LABEL_94;
        }

        goto LABEL_59;
      }

      v112 = [v17 UTF8String];
      if (!v112)
      {
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
        goto LABEL_192;
      }

      v113 = String.init(utf8String:)(v112);
      if (v114)
      {
LABEL_72:
        v105 = v113;
        v107 = v114;
LABEL_73:

LABEL_93:
LABEL_94:
        *&v228 = 64;
        *(&v228 + 1) = 0xE100000000000000;
        *&v225 = v105;
        *(&v225 + 1) = v107;
        if ((v107 & 0x1000000000000000) == 0)
        {
          v126 = String.subscript.getter();
          v128 = v127;
          v130 = v129;
          v132 = v131;

          *(v223 + 1) = 64;
          *(&v223[1] + 1) = 0xE100000000000000;
          v133 = Substring.init<A>(_:)();
          if ((v126 ^ v128) < 0x4000 || !((v133 ^ v134) >> 14))
          {

LABEL_108:

            v89 = v206;
LABEL_109:
            v146 = [v18 v6[475]];
            if (!v146)
            {
              goto LABEL_134;
            }

            v147 = v146;
            v148 = _objc_isTaggedPointer(v146);
            v149 = v147;
            v150 = v149;
            if (!v148)
            {
LABEL_115:
              LOBYTE(v225) = 0;
              *&v228 = 0;
              LOWORD(v223[0]) = 0;
              v155 = __CFStringIsCF();
              if (v155)
              {
                v152 = v228;
                if (!v228)
                {

                  v154 = 0xE000000000000000;
                  goto LABEL_163;
                }

                if (LOBYTE(v223[0]) == 1)
                {
                  if (v225)
                  {
                    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                  }

                  else
                  {
                    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                  }

                  v162 = String.init<A>(_immortalCocoaString:count:encoding:)();
                  goto LABEL_161;
                }

                if ((v223[0] & 0x100) != 0)
                {
                  if (v225 != 1)
                  {
                    v155 = [v150 lengthOfBytesUsingEncoding_];
                  }

                  MEMORY[0x1EEE9AC00](v155);
                  v164 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v154 = v165;
                  v166 = HIBYTE(v165) & 0xF;
                  if ((v165 & 0x2000000000000000) == 0)
                  {
                    v166 = v164 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v166)
                  {
                    v152 = v164;
                    goto LABEL_128;
                  }
                }

LABEL_160:
                v162 = String.init(_cocoaString:)();
LABEL_161:
                v152 = v162;
                v154 = v163;
                goto LABEL_162;
              }

              v156 = v150;
              v157 = String.init(_nativeStorage:)();
              if (v158)
              {
                v152 = v157;
                v154 = v158;

                goto LABEL_163;
              }

              *&v228 = [v156 length];
              if (v228)
              {
                goto LABEL_160;
              }

LABEL_134:
              v152 = 0;
              v154 = 0xE000000000000000;
              goto LABEL_163;
            }

            v151 = _objc_getTaggedPointerTag(v149);
            if (!v151)
            {
              goto LABEL_126;
            }

            if (v151 != 22)
            {
              if (v151 == 2)
              {
                MEMORY[0x1EEE9AC00](v151);
                v152 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v154 = v153;

LABEL_163:
                *&v228 = v152;
                *(&v228 + 1) = v154;
                MEMORY[0x1865CB0E0](46, 0xE100000000000000);
                MEMORY[0x1865CB0E0](0x746E756F6340, 0xE600000000000000);
                v182 = String._bridgeToObjectiveCImpl()();

                v99 = [v89 expressionForKeyPath_];
                goto LABEL_164;
              }

              goto LABEL_115;
            }

            v159 = [v150 UTF8String];
            if (v159)
            {
              v160 = String.init(utf8String:)(v159);
              if (v161)
              {
LABEL_127:
                v152 = v160;
                v154 = v161;
LABEL_128:

LABEL_162:
                goto LABEL_163;
              }

              __break(1u);
LABEL_126:
              *(v223 + 1) = 0;
              _CFIndirectTaggedPointerStringGetContents();
              v160 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v161)
              {
                [v150 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v154 = *(&v225 + 1);
                v152 = v225;
                goto LABEL_162;
              }

              goto LABEL_127;
            }

            goto LABEL_191;
          }

          specialized _StringCompareOptionsIterable._range<A>(of:toHalfWidth:diacriticsInsensitive:caseFold:anchored:backwards:)(v133, v134, v135, v136, 0, 0, 0, 0, 0, v126, v128, v130, v132);
          v138 = v137;

          v89 = v206;
          if (v138)
          {
            goto LABEL_109;
          }

          goto LABEL_103;
        }

        lazy protocol witness table accessor for type String and conformance String();
        StringProtocol._ephemeralString.getter();
        StringProtocol._ephemeralString.getter();
        v121 = String._bridgeToObjectiveCImpl()();

        v122 = String._bridgeToObjectiveCImpl()();

        v123 = [v121 rangeOfString_];
        v125 = v124;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v123 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_108;
        }

        v89 = v206;
        if (!__OFADD__(v123, v125))
        {
          StringProtocol._toUTF16Indices(_:)();

LABEL_103:
          v139 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSExpression, off_1E69EE3D0);
          v229 = v139;
          *&v228 = v18;
          v140 = String._bridgeToObjectiveCImpl()();
          v141 = v18;
          v142 = [v89 _newKeyPathExpressionForString_];
          swift_unknownObjectRelease();
          if (!v142)
          {
            v139 = 0;
            *(&v225 + 1) = 0;
            *&v226 = 0;
          }

          *&v225 = v142;
          *(&v226 + 1) = v139;
          v143 = objc_allocWithZone(NSKeyPathExpression);
          v144 = @nonobjc NSKeyPathExpression.init(operand:andKeyPath:)(&v228, &v225);
          if (v144)
          {
            v145 = v144;
LABEL_165:
            *&v228 = 0;
            v183 = [v89 expressionForConstantValue_];
            swift_unknownObjectRelease();
            v54 = [objc_allocWithZone(NSComparisonPredicate) initWithLeftExpression:v145 rightExpression:v183 modifier:0 type:5 options:0];

            return v54;
          }

          goto LABEL_189;
        }

LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
      }

      __break(1u);
    }

    *(v223 + 1) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v113 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v114)
    {
      goto LABEL_72;
    }

LABEL_83:
    [v17 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v107 = *(&v225 + 1);
    v105 = v225;
    goto LABEL_93;
  }

  v210 = v21;
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v23 = v5[1];
  *&v228 = v23;
  v25 = specialized __RawDictionaryStorage.find<A>(_:)();
  v26 = *(v23 + 16);
  v27 = (v24 & 1) == 0;
  v28 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
    __break(1u);
    goto LABEL_85;
  }

  v29 = v24;
  if (*(v23 + 24) >= v28)
  {
    if (v18)
    {
      v30 = v23;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation20PredicateExpressionsO10VariableIDVSo12NSExpressionCGMd, &_ss18_DictionaryStorageCy10Foundation20PredicateExpressionsO10VariableIDVSo12NSExpressionCGMR);
      v167 = static _DictionaryStorage.copy(original:)();
      v30 = v167;
      if (*(v23 + 16))
      {
        v168 = (v167 + 64);
        v169 = (v23 + 64);
        v170 = ((1 << *(v30 + 32)) + 63) >> 6;
        v202 = v23 + 64;
        if (v30 != v23 || v168 >= &v169[8 * v170])
        {
          memmove(v168, v169, 8 * v170);
        }

        v171 = 0;
        *(v30 + 16) = *(v23 + 16);
        v172 = 1 << *(v23 + 32);
        v173 = -1;
        if (v172 < 64)
        {
          v173 = ~(-1 << v172);
        }

        v174 = v173 & *(v23 + 64);
        v175 = (v172 + 63) >> 6;
        v203 = v175;
        if (!v174)
        {
          goto LABEL_151;
        }

        while (1)
        {
          v176 = __clz(__rbit64(v174));
          for (i = (v174 - 1) & v174; ; i = (v178 - 1) & v178)
          {
            v179 = v176 | (v171 << 6);
            v180 = *(*(v23 + 56) + 8 * v179);
            *(*(v30 + 48) + 8 * v179) = *(*(v23 + 48) + 8 * v179);
            *(*(v30 + 56) + 8 * v179) = v180;
            v181 = v180;
            v175 = v203;
            v174 = i;
            if (i)
            {
              break;
            }

LABEL_151:
            v177 = v171;
            do
            {
              v171 = v177 + 1;
              if (__OFADD__(v177, 1))
              {
                goto LABEL_187;
              }

              if (v171 >= v175)
              {
                goto LABEL_158;
              }

              v178 = *(v202 + 8 * v171);
              ++v177;
            }

            while (!v178);
            v176 = __clz(__rbit64(v178));
          }
        }
      }

LABEL_158:
    }

    goto LABEL_13;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, v18);
  v30 = v228;
  v31 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v29 & 1) == (v32 & 1))
  {
    v25 = v31;
LABEL_13:
    v5 = v215;
    if (v29)
    {
      v40 = *(v30 + 56);
      v41 = *(v40 + 8 * v25);
      *(v40 + 8 * v25) = v6;
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v25, v17, v6, v30);
    }

    v5[1] = v30;
    v21 = v210;
    v34 = v222;
    goto LABEL_17;
  }

LABEL_192:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t *protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.SequenceContainsWhere<A, B>(void *a1, uint64_t a2)
{
  result = PredicateExpressions.SequenceContainsWhere.convert(state:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

char *PredicateExpressions.SequenceAllSatisfy.convert(state:)(void *a1, uint64_t a2)
{
  v228 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 16);
  v206 = *(a2 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v205 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v207 = &v199 - v8;
  v209 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v199 - v10;
  v212 = v5;
  v211 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v210 = &v199 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = *(a2 + 24);
  v215 = *(v219 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v216 = (&v199 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a2 + 64);
  v218 = v2;
  v17 = *(v2 + v16);
  *&v225 = 0x5F6C61636F6C5FLL;
  *(&v225 + 1) = 0xE700000000000000;
  *&v222 = *a1;
  v18 = v222;
  v19 = dispatch thunk of CustomStringConvertible.description.getter();
  v21 = v20;
  MEMORY[0x1865CB0E0](v19);

  if (v18 == -1)
  {
    __break(1u);
    goto LABEL_85;
  }

  v204 = v7;
  v203 = v11;
  v208 = AssociatedTypeWitness;
  v23 = *(&v225 + 1);
  v22 = v225;
  *a1 = v18 + 1;
  v202 = v22;
  v24 = String._bridgeToObjectiveCImpl()();
  v213 = objc_opt_self();
  v25 = [v213 expressionForVariable_];
  swift_unknownObjectRelease();
  v26 = a1;
  if (!v25)
  {
    v35 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v36)
    {
      v37 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = a1[1];
      if (isUniquelyReferenced_nonNull_native)
      {
        v40 = a1[1];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation20PredicateExpressionsO10VariableIDVSo12NSExpressionCGMd, &_ss18_DictionaryStorageCy10Foundation20PredicateExpressionsO10VariableIDVSo12NSExpressionCGMR);
        v181 = static _DictionaryStorage.copy(original:)();
        v40 = v181;
        if (*(v39 + 16))
        {
          v214 = v23;
          v182 = (v181 + 64);
          v183 = v39 + 64;
          v184 = ((1 << *(v40 + 32)) + 63) >> 6;
          if (v40 != v39 || v182 >= v183 + 8 * v184)
          {
            memmove(v182, (v39 + 64), 8 * v184);
          }

          v185 = 0;
          *(v40 + 16) = *(v39 + 16);
          v186 = 1 << *(v39 + 32);
          v187 = *(v39 + 64);
          v188 = -1;
          if (v186 < 64)
          {
            v188 = ~(-1 << v186);
          }

          v189 = v188 & v187;
          v190 = (v186 + 63) >> 6;
          if ((v188 & v187) != 0)
          {
            do
            {
              v191 = __clz(__rbit64(v189));
              v189 &= v189 - 1;
LABEL_181:
              v194 = v191 | (v185 << 6);
              v195 = *(*(v39 + 56) + 8 * v194);
              *(*(v40 + 48) + 8 * v194) = *(*(v39 + 48) + 8 * v194);
              *(*(v40 + 56) + 8 * v194) = v195;
              v196 = v195;
            }

            while (v189);
          }

          v192 = v185;
          v23 = v214;
          while (1)
          {
            v185 = v192 + 1;
            if (__OFADD__(v192, 1))
            {
              break;
            }

            if (v185 >= v190)
            {
              goto LABEL_183;
            }

            v193 = *(v183 + 8 * v185);
            ++v192;
            if (v193)
            {
              v191 = __clz(__rbit64(v193));
              v189 = (v193 - 1) & v193;
              goto LABEL_181;
            }
          }

          __break(1u);
LABEL_191:
          __break(1u);
          goto LABEL_192;
        }

LABEL_183:

        v26 = a1;
      }

      specialized _NativeDictionary._delete(at:)(v37, v40);
      v26[1] = v40;
    }

LABEL_17:
    v43 = *(a2 + 60);
    v44 = v218;
    (v215[2])(v216, v218 + v43, v219);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMR);
    if (swift_dynamicCast())
    {
      outlined init with take of Equatable(&v222, &v225);
      v46 = v226;
      v47 = v227;
      __swift_project_boxed_opaque_existential_1(&v225, v226);
      v48 = v217;
      v49 = (*(v47 + 16))(v26, v46, v47);
      v51 = v48;
      if (!v48)
      {
        v57 = v49;
        v58 = v50;
        __swift_destroy_boxed_opaque_existential_1(&v225);
        v59 = v213;
        v60 = v212;
        if (v58)
        {
LABEL_40:
          v219 = [objc_opt_self() notPredicateWithSubpredicate_];

          (*(v211 + 16))(v210, v218, v60);
          if (swift_dynamicCast())
          {
            outlined init with take of Equatable(&v222, &v225);
            v75 = v226;
            v76 = v227;
            __swift_project_boxed_opaque_existential_1(&v225, v226);
            v83 = (*(v76 + 16))(v26, v75, v76);
            v85 = v84;
            __swift_destroy_boxed_opaque_existential_1(&v225);
            if (v85)
            {
              LOBYTE(v225) = 1;
              v86 = [v59 expressionForConstantValue_];
              swift_unknownObjectRelease();
              LOBYTE(v225) = 0;
              v87 = [v59 expressionForConstantValue_];
              swift_unknownObjectRelease();
              v88 = [v59 expressionForConditional:v83 trueExpression:v86 falseExpression:v87];

              v83 = v88;
            }

            v89 = v219;
            goto LABEL_51;
          }

          v224 = 0;
          v222 = 0u;
          v223 = 0u;
          outlined destroy of TermOfAddress?(&v222, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
          v45 = 0;
          *&v225 = MEMORY[0x1E69E7CC0];
          v77 = v207;
          (*(v206 + 16))(&v225, v60);
          v54 = v208;

          v78 = v209;
          (*(v209 + 56))(v77, 0, 1, v54);
          v79 = v203;
          (*(v78 + 32))(v203, v77, v54);
          v221 = v54;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v220 + 1));
          (*(v78 + 16))(boxed_opaque_existential_0, v79, v54);
          _expressionCompatibleValue(for:)(v220 + 1, &v222);
          __swift_destroy_boxed_opaque_existential_1((v220 + 1));
          if (!*(&v223 + 1))
          {
            (*(v78 + 8))(v203, v54);

            outlined destroy of TermOfAddress?(&v222, &_sypSgMd, &_sypSgMR);
            v81 = v219;
            lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
            swift_allocError();
            *v82 = 2;
            swift_willThrow();

            return v54;
          }

          v214 = v23;
          v217 = 0;
          outlined init with take of Any(&v222, &v225);
          v61 = v226;
          v90 = __swift_project_boxed_opaque_existential_1(&v225, v226);
          v218 = &v199;
          v68 = *(v61 - 8);
          v91 = v68[8];
          v92 = MEMORY[0x1EEE9AC00](v90);
          v66 = (v91 + 15) & 0xFFFFFFFFFFFFFFF0;
          v67 = (&v199 - v66);
          v63 = v68[2];
          (v63)(&v199 - v66, v92);
          isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
          if (isClassOrObjCExistentialType)
          {
            if (v91 != 8)
            {
              __break(1u);
              goto LABEL_188;
            }

            v93 = *v67;
            v94 = v68[1];
            swift_unknownObjectRetain();
            v94(&v199 - v66, v61);
            goto LABEL_50;
          }

LABEL_186:
          v198 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
          (v63)(&v199 - v66, v67, v61, v198);
          v93 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
          (v68[1])(v67, v61);
LABEL_50:
          v89 = v219;
          v59 = v213;
          v83 = [v213 expressionForConstantValue_];
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_1(&v225);
          (*(v209 + 8))(v203, v208);
LABEL_51:
          v95 = String._bridgeToObjectiveCImpl()();
          v18 = v89;

          v7 = [v59 expressionForSubquery:v83 usingIteratorVariable:v95 predicate:v18];

          swift_unknownObjectRelease();
          if ([v7 expressionType] == 1)
          {
            v96 = [v59 expressionForKeyPath_];
LABEL_166:
            v142 = v96;
            swift_unknownObjectRelease();
            goto LABEL_167;
          }

          if ([v7 expressionType] != 3)
          {
            goto LABEL_105;
          }

          v97 = [v7 keyPath];
          if (!v97)
          {
            goto LABEL_81;
          }

          v98 = v97;
          isTaggedPointer = _objc_isTaggedPointer(v97);
          v100 = v98;
          v21 = v100;
          if (!isTaggedPointer)
          {
LABEL_62:
            LOBYTE(v222) = 0;
            *&v225 = 0;
            LOWORD(v220[0]) = 0;
            IsCF = __CFStringIsCF();
            if (IsCF)
            {
              v102 = v225;
              if (!v225)
              {

                v104 = 0xE000000000000000;
                goto LABEL_96;
              }

              if (LOBYTE(v220[0]) == 1)
              {
                if (v222)
                {
                  lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                }

                else
                {
                  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                }

                v112 = String.init<A>(_immortalCocoaString:count:encoding:)();
                goto LABEL_94;
              }

              if ((v220[0] & 0x100) == 0)
              {
                goto LABEL_93;
              }

              if (v222 == 1)
              {
                MEMORY[0x1EEE9AC00](IsCF);
LABEL_88:
                v115 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v104 = v116;
                v117 = HIBYTE(v116) & 0xF;
                if ((v116 & 0x2000000000000000) == 0)
                {
                  v117 = v115 & 0xFFFFFFFFFFFFLL;
                }

                if (v117)
                {
                  v102 = v115;
                  goto LABEL_75;
                }

LABEL_93:
                v112 = String.init(_cocoaString:)();
LABEL_94:
                v102 = v112;
                v104 = v113;
                goto LABEL_95;
              }

LABEL_87:
              v114 = [v21 lengthOfBytesUsingEncoding_];
              MEMORY[0x1EEE9AC00](v114);
              goto LABEL_88;
            }

            v106 = v21;
            v107 = String.init(_nativeStorage:)();
            if (v108)
            {
              v102 = v107;
              v104 = v108;

              goto LABEL_96;
            }

            *&v225 = [v106 length];
            if (v225)
            {
              goto LABEL_93;
            }

LABEL_81:
            v102 = 0;
            v104 = 0xE000000000000000;
            goto LABEL_96;
          }

          TaggedPointerTag = _objc_getTaggedPointerTag(v100);
          if (TaggedPointerTag)
          {
            if (TaggedPointerTag != 22)
            {
              if (TaggedPointerTag == 2)
              {
                MEMORY[0x1EEE9AC00](TaggedPointerTag);
                v102 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v104 = v103;

                goto LABEL_96;
              }

              goto LABEL_62;
            }

            v109 = [v21 UTF8String];
            if (!v109)
            {
LABEL_192:
              __break(1u);
LABEL_193:
              __break(1u);
              goto LABEL_194;
            }

            v110 = String.init(utf8String:)(v109);
            if (v111)
            {
LABEL_74:
              v102 = v110;
              v104 = v111;
LABEL_75:

LABEL_95:
LABEL_96:
              *&v225 = 64;
              *(&v225 + 1) = 0xE100000000000000;
              *&v222 = v102;
              *(&v222 + 1) = v104;
              if ((v104 & 0x1000000000000000) == 0)
              {
                v123 = String.subscript.getter();
                v125 = v124;
                v127 = v126;
                v129 = v128;

                *(v220 + 1) = 64;
                *(&v220[1] + 1) = 0xE100000000000000;
                v130 = Substring.init<A>(_:)();
                if ((v123 ^ v125) < 0x4000 || !((v130 ^ v131) >> 14))
                {

LABEL_110:

                  v59 = v213;
LABEL_111:
                  v143 = [v7 keyPath];
                  if (!v143)
                  {
                    goto LABEL_136;
                  }

                  v144 = v143;
                  v145 = _objc_isTaggedPointer(v143);
                  v146 = v144;
                  v147 = v146;
                  if (!v145)
                  {
LABEL_117:
                    LOBYTE(v222) = 0;
                    *&v225 = 0;
                    LOWORD(v220[0]) = 0;
                    v152 = __CFStringIsCF();
                    if (v152)
                    {
                      v149 = v225;
                      if (!v225)
                      {

                        v151 = 0xE000000000000000;
                        goto LABEL_165;
                      }

                      if (LOBYTE(v220[0]) == 1)
                      {
                        if (v222)
                        {
                          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                        }

                        else
                        {
                          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                        }

                        v159 = String.init<A>(_immortalCocoaString:count:encoding:)();
                        goto LABEL_163;
                      }

                      if ((v220[0] & 0x100) != 0)
                      {
                        if (v222 != 1)
                        {
                          v152 = [v147 lengthOfBytesUsingEncoding_];
                        }

                        MEMORY[0x1EEE9AC00](v152);
                        v161 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                        v151 = v162;
                        v163 = HIBYTE(v162) & 0xF;
                        if ((v162 & 0x2000000000000000) == 0)
                        {
                          v163 = v161 & 0xFFFFFFFFFFFFLL;
                        }

                        if (v163)
                        {
                          v149 = v161;
                          goto LABEL_130;
                        }
                      }

LABEL_162:
                      v159 = String.init(_cocoaString:)();
LABEL_163:
                      v149 = v159;
                      v151 = v160;
                      goto LABEL_164;
                    }

                    v153 = v147;
                    v154 = String.init(_nativeStorage:)();
                    if (v155)
                    {
                      v149 = v154;
                      v151 = v155;

                      goto LABEL_165;
                    }

                    *&v225 = [v153 length];
                    if (v225)
                    {
                      goto LABEL_162;
                    }

LABEL_136:
                    v149 = 0;
                    v151 = 0xE000000000000000;
                    goto LABEL_165;
                  }

                  v148 = _objc_getTaggedPointerTag(v146);
                  if (!v148)
                  {
                    goto LABEL_128;
                  }

                  if (v148 != 22)
                  {
                    if (v148 == 2)
                    {
                      MEMORY[0x1EEE9AC00](v148);
                      v149 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v151 = v150;

LABEL_165:
                      *&v225 = v149;
                      *(&v225 + 1) = v151;
                      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
                      MEMORY[0x1865CB0E0](0x746E756F6340, 0xE600000000000000);
                      v179 = String._bridgeToObjectiveCImpl()();

                      v96 = [v59 expressionForKeyPath_];
                      goto LABEL_166;
                    }

                    goto LABEL_117;
                  }

                  v156 = [v147 UTF8String];
                  if (v156)
                  {
                    v157 = String.init(utf8String:)(v156);
                    if (v158)
                    {
LABEL_129:
                      v149 = v157;
                      v151 = v158;
LABEL_130:

LABEL_164:
                      goto LABEL_165;
                    }

                    __break(1u);
LABEL_128:
                    *(v220 + 1) = 0;
                    _CFIndirectTaggedPointerStringGetContents();
                    v157 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                    if (!v158)
                    {
                      [v147 mutableCopy];
                      _bridgeAnyObjectToAny(_:)();

                      swift_unknownObjectRelease();
                      swift_dynamicCast();
                      v151 = *(&v222 + 1);
                      v149 = v222;
                      goto LABEL_164;
                    }

                    goto LABEL_129;
                  }

                  goto LABEL_193;
                }

                specialized _StringCompareOptionsIterable._range<A>(of:toHalfWidth:diacriticsInsensitive:caseFold:anchored:backwards:)(v130, v131, v132, v133, 0, 0, 0, 0, 0, v123, v125, v127, v129);
                v135 = v134;

                v59 = v213;
                if (v135)
                {
                  goto LABEL_111;
                }

                goto LABEL_105;
              }

              lazy protocol witness table accessor for type String and conformance String();
              StringProtocol._ephemeralString.getter();
              StringProtocol._ephemeralString.getter();
              v118 = String._bridgeToObjectiveCImpl()();

              v119 = String._bridgeToObjectiveCImpl()();

              v120 = [v118 rangeOfString_];
              v122 = v121;
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              if (v120 == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_110;
              }

              v59 = v213;
              if (!__OFADD__(v120, v122))
              {
                StringProtocol._toUTF16Indices(_:)();

LABEL_105:
                v136 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSExpression, off_1E69EE3D0);
                v226 = v136;
                *&v225 = v7;
                v137 = String._bridgeToObjectiveCImpl()();
                v138 = v7;
                v139 = [v59 _newKeyPathExpressionForString_];
                swift_unknownObjectRelease();
                if (!v139)
                {
                  v136 = 0;
                  *(&v222 + 1) = 0;
                  *&v223 = 0;
                }

                *&v222 = v139;
                *(&v223 + 1) = v136;
                v140 = objc_allocWithZone(NSKeyPathExpression);
                v141 = @nonobjc NSKeyPathExpression.init(operand:andKeyPath:)(&v225, &v222);
                if (v141)
                {
                  v142 = v141;
LABEL_167:
                  *&v225 = 0;
                  v180 = [v59 expressionForConstantValue_];
                  swift_unknownObjectRelease();
                  v54 = [objc_allocWithZone(NSComparisonPredicate) initWithLeftExpression:v142 rightExpression:v180 modifier:0 type:4 options:0];

                  return v54;
                }

                goto LABEL_191;
              }

LABEL_188:
              __break(1u);
LABEL_189:
              __break(1u);
            }

            __break(1u);
          }

          *(v220 + 1) = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v110 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (v111)
          {
            goto LABEL_74;
          }

LABEL_85:
          [v21 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v104 = *(&v222 + 1);
          v102 = v222;
          goto LABEL_95;
        }

LABEL_39:
        LOBYTE(v225) = 1;
        v73 = [v59 expressionForConstantValue_];
        swift_unknownObjectRelease();
        v74 = [objc_allocWithZone(NSComparisonPredicate) initWithLeftExpression:v57 rightExpression:v73 modifier:0 type:4 options:0];

        v57 = v74;
        goto LABEL_40;
      }

      __swift_destroy_boxed_opaque_existential_1(&v225);
      v52 = 0;
      v53 = v51;
      v44 = v218;
    }

    else
    {
      v224 = 0;
      v222 = 0u;
      v223 = 0u;
      outlined destroy of TermOfAddress?(&v222, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
      v53 = 0;
      v52 = v217;
    }

    *&v225 = MEMORY[0x1E69E7CC0];
    v54 = v44 + v43;
    (*(*(a2 + 40) + 16))(v220, &v225, v219);
    if (v52)
    {

      if (v53)
      {
LABEL_24:
        swift_willThrow();
        return v54;
      }

LABEL_23:
      lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
      swift_allocError();
      *v55 = 2;
      goto LABEL_24;
    }

    if (LOBYTE(v220[0]) == 2)
    {

      if (v53)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v221 = MEMORY[0x1E69E6370];
    BYTE1(v220[0]) = v220[0] & 1;
    _expressionCompatibleValue(for:)(v220 + 1, &v222);
    __swift_destroy_boxed_opaque_existential_1((v220 + 1));
    if (!*(&v223 + 1))
    {

      outlined destroy of TermOfAddress?(&v222, &_sypSgMd, &_sypSgMR);
      if (v53)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v214 = v23;
    v217 = v53;
    outlined init with take of Any(&v222, &v225);
    v61 = v226;
    v62 = __swift_project_boxed_opaque_existential_1(&v225, v226);
    v219 = &v199;
    v63 = *(v61 - 8);
    v64 = *(v63 + 64);
    v65 = MEMORY[0x1EEE9AC00](v62);
    v66 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
    v67 = (&v199 - v66);
    v68 = (v63 + 16);
    v216 = *(v63 + 16);
    v216(&v199 - v66, v65);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    if (isClassOrObjCExistentialType)
    {
      if (v64 != 8)
      {
        __break(1u);
        goto LABEL_186;
      }

      v70 = *v67;
      v71 = *(v63 + 8);
      swift_unknownObjectRetain();
      v71(&v199 - v66, v61);
    }

    else
    {
      v215 = &v199;
      v197 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
      (v216)(&v199 - v66, &v199 - v66, v61, v197);
      v70 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      (*(v63 + 8))(&v199 - v66, v61);
    }

    v72 = v217;
    v23 = v214;
    v60 = v212;
    v59 = v213;
    v57 = [v213 expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v225);
    goto LABEL_39;
  }

  v214 = v23;
  v18 = swift_isUniquelyReferenced_nonNull_native();
  *&v225 = a1[1];
  v7 = v225;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)();
  v28 = v7[2];
  v29 = (v27 & 1) == 0;
  v30 = v28 + v29;
  if (__OFADD__(v28, v29))
  {
    __break(1u);
    goto LABEL_87;
  }

  v31 = v27;
  if (v7[3] >= v30)
  {
    if (v18)
    {
      v32 = v7;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation20PredicateExpressionsO10VariableIDVSo12NSExpressionCGMd, &_ss18_DictionaryStorageCy10Foundation20PredicateExpressionsO10VariableIDVSo12NSExpressionCGMR);
      v164 = static _DictionaryStorage.copy(original:)();
      v32 = v164;
      if (v7[2])
      {
        v165 = (v164 + 64);
        v166 = (v7 + 8);
        v167 = ((1 << *(v32 + 32)) + 63) >> 6;
        v199 = (v7 + 8);
        if (v32 != v7 || v165 >= &v166[8 * v167])
        {
          memmove(v165, v166, 8 * v167);
        }

        v168 = 0;
        v32[2] = v7[2];
        v169 = 1 << *(v7 + 32);
        v170 = -1;
        if (v169 < 64)
        {
          v170 = ~(-1 << v169);
        }

        v171 = v170 & v7[8];
        v172 = (v169 + 63) >> 6;
        v200 = v172;
        if (!v171)
        {
          goto LABEL_153;
        }

        while (1)
        {
          v173 = __clz(__rbit64(v171));
          for (i = (v171 - 1) & v171; ; i = (v175 - 1) & v175)
          {
            v176 = v173 | (v168 << 6);
            v177 = *(v7[7] + 8 * v176);
            *(v32[6] + 8 * v176) = *(v7[6] + 8 * v176);
            *(v32[7] + 8 * v176) = v177;
            v178 = v177;
            v172 = v200;
            v171 = i;
            if (i)
            {
              break;
            }

LABEL_153:
            v174 = v168;
            do
            {
              v168 = v174 + 1;
              if (__OFADD__(v174, 1))
              {
                goto LABEL_189;
              }

              if (v168 >= v172)
              {
                goto LABEL_160;
              }

              v175 = *&v199[8 * v168];
              ++v174;
            }

            while (!v175);
            v173 = __clz(__rbit64(v175));
          }
        }
      }

LABEL_160:
    }

    goto LABEL_13;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v30, v18);
  v32 = v225;
  v33 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v31 & 1) == (v34 & 1))
  {
    v21 = v33;
LABEL_13:
    v23 = v214;
    if (v31)
    {
      v41 = v32[7];
      v42 = *(v41 + 8 * v21);
      *(v41 + 8 * v21) = v25;
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v21, v17, v25, v32);
    }

    v26 = a1;
    a1[1] = v32;
    goto LABEL_17;
  }

LABEL_194:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

char *protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.SequenceAllSatisfy<A, B>(void *a1, uint64_t a2)
{
  result = PredicateExpressions.SequenceAllSatisfy.convert(state:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

id protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.SequenceMaximum<A>(uint64_t a1, uint64_t a2)
{
  result = PredicateExpressions.SequenceMaximum.convert(state:)(a1, a2, 0x6C65732E78616D40, closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply);
  if (v2)
  {
    return v4;
  }

  return result;
}

id PredicateExpressions.SequenceMaximum.convert(state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v130 = a7;
  v129 = a6;
  v128 = a5;
  v131 = a4;
  v132 = a3;
  v12 = v10;
  v13 = v9;
  v146 = *MEMORY[0x1E69E9840];
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v134 = type metadata accessor for Optional();
  v18 = *(v134 - 1);
  MEMORY[0x1EEE9AC00](v134);
  v20 = &v126 - v19;
  v136 = AssociatedTypeWitness;
  v135 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v21);
  v133 = &v126 - v22;
  v24 = MEMORY[0x1EEE9AC00](v23);
  (*(v26 + 16))(&v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v15, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMR);
  if (swift_dynamicCast())
  {
    v127 = a8;
    outlined init with take of Equatable(&v140, &v143);
    v27 = v144;
    v28 = v145;
    __swift_project_boxed_opaque_existential_1(&v143, v144);
    v29 = (*(v28 + 16))(a1, v27, v28);
    if (!v10)
    {
      v39 = v29;
      v40 = v30;
      __swift_destroy_boxed_opaque_existential_1(&v143);
      if (v40)
      {
        LOBYTE(v143) = 1;
        v41 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v42 = objc_opt_self();
        v43 = v39;
        v44 = [v42 expressionForConstantValue_];
        swift_unknownObjectRelease();
        LOBYTE(v143) = 0;
        v45 = [v42 expressionForConstantValue_];
        swift_unknownObjectRelease();
        v39 = [v42 expressionForConditional:v39 trueExpression:v44 falseExpression:v45];
      }

      goto LABEL_20;
    }

    __swift_destroy_boxed_opaque_existential_1(&v143);
    v12 = 0;
    v31 = v10;
    a8 = v127;
  }

  else
  {
    v142 = 0;
    v140 = 0u;
    v141 = 0u;
    outlined destroy of TermOfAddress?(&v140, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
    v31 = 0;
  }

  *&v143 = MEMORY[0x1E69E7CC0];
  (*(v16 + 16))(&v143, v15, v16);
  if (v12)
  {

    (*(v135 + 56))(v20, 1, 1, v136);
    v33 = *(v18 + 8);
    v32 = (v18 + 8);
    v33(v20, v134);
    if (v31)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v134 = v31;

  v34 = v135;
  v32 = v136;
  (*(v135 + 56))(v20, 0, 1, v136);
  v35 = v133;
  (*(v34 + 32))(v133, v20, v32);
  v139 = v32;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v137[1]);
  (*(v34 + 16))(boxed_opaque_existential_0, v35, v32);
  _expressionCompatibleValue(for:)(&v137[1], &v140);
  __swift_destroy_boxed_opaque_existential_1(&v137[1]);
  if (!*(&v141 + 1))
  {
    (*(v34 + 8))(v35, v32);
    outlined destroy of TermOfAddress?(&v140, &_sypSgMd, &_sypSgMR);
    if (v134)
    {
      goto LABEL_11;
    }

LABEL_10:
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v37 = 2;
LABEL_11:
    swift_willThrow();
    return v32;
  }

  v127 = a8;
  outlined init with take of Any(&v140, &v143);
  v46 = v144;
  v47 = __swift_project_boxed_opaque_existential_1(&v143, v144);
  v48 = *(v46 - 8);
  v49 = v48[8];
  v50 = MEMORY[0x1EEE9AC00](v47);
  v51 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  v52 = v48[2];
  v52(&v126 - v51, v50);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if (isClassOrObjCExistentialType)
  {
    if (v49 != 8)
    {
      __break(1u);
      goto LABEL_121;
    }

    v54 = *(&v126 - v51);
    v55 = v48[1];
    swift_unknownObjectRetain();
    v55(&v126 - v51, v46);
  }

  else
  {
    v126 = &v126;
    v125 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
    (v52)(&v126 - v51, &v126 - v51, v46, v125);
    v54 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (v48[1])(&v126 - v51, v46);
  }

  v56 = v133;
  v39 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v143);
  (*(v135 + 8))(v56, v136);
LABEL_20:
  if ([v39 expressionType] == 1)
  {
    v57 = String._bridgeToObjectiveCImpl()();
    v58 = [objc_opt_self() expressionForKeyPath_];
LABEL_118:
    v32 = v58;
    swift_unknownObjectRelease();

    return v32;
  }

  if ([v39 expressionType] != 3)
  {
    goto LABEL_73;
  }

  v59 = [v39 keyPath];
  if (!v59)
  {
    v65 = v39;
    goto LABEL_36;
  }

  v60 = v59;
  isTaggedPointer = _objc_isTaggedPointer(v59);
  v62 = v60;
  v63 = v62;
  if (!isTaggedPointer)
  {
LABEL_30:
    LOBYTE(v140) = 0;
    *&v143 = 0;
    *v137 = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      v66 = v143;
      if (!v143)
      {
        v65 = v39;

        v68 = 0xE000000000000000;
        goto LABEL_64;
      }

      if (v137[0] == 1)
      {
        v65 = v39;
        if (v140)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v75 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_62;
      }

      if (v137[1])
      {
        v65 = v39;
        if (v140 != 1)
        {
          IsCF = [v63 lengthOfBytesUsingEncoding_];
        }

        MEMORY[0x1EEE9AC00](IsCF);
        v77 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v68 = v78;
        v79 = HIBYTE(v78) & 0xF;
        if ((v78 & 0x2000000000000000) == 0)
        {
          v79 = v77 & 0xFFFFFFFFFFFFLL;
        }

        if (v79)
        {
          v66 = v77;
          goto LABEL_45;
        }
      }

      else
      {
        v65 = v39;
      }

LABEL_61:
      v75 = String.init(_cocoaString:)();
LABEL_62:
      v66 = v75;
      v68 = v76;
      goto LABEL_63;
    }

    v65 = v39;
    v70 = v63;
    v71 = String.init(_nativeStorage:)();
    if (v72)
    {
      v66 = v71;
      v68 = v72;

      goto LABEL_64;
    }

    *&v143 = [v70 length];
    if (v143)
    {
      goto LABEL_61;
    }

LABEL_36:
    v66 = 0;
    v68 = 0xE000000000000000;
    goto LABEL_64;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v62);
  if (!TaggedPointerTag)
  {
    goto LABEL_43;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      v65 = v39;
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v66 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v68 = v67;

      goto LABEL_64;
    }

    goto LABEL_30;
  }

  v65 = v39;
  result = [v63 UTF8String];
  if (!result)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v73 = String.init(utf8String:)(result);
  if (!v74)
  {
    __break(1u);
LABEL_43:
    v65 = v39;
    *&v137[1] = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v73 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v74)
    {
      [v63 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v68 = *(&v140 + 1);
      v66 = v140;
      goto LABEL_63;
    }
  }

  v66 = v73;
  v68 = v74;
LABEL_45:

LABEL_63:
LABEL_64:
  *&v143 = 64;
  *(&v143 + 1) = 0xE100000000000000;
  *&v140 = v66;
  *(&v140 + 1) = v68;
  if ((v68 & 0x1000000000000000) != 0)
  {
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    StringProtocol._ephemeralString.getter();
    v80 = String._bridgeToObjectiveCImpl()();

    v81 = String._bridgeToObjectiveCImpl()();

    v82 = [v80 rangeOfString_];
    v84 = v83;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v82 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_78;
    }

    if (!__OFADD__(v82, v84))
    {
      StringProtocol._toUTF16Indices(_:)();

      v39 = v65;
LABEL_73:
      v98 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSExpression, off_1E69EE3D0);
      v144 = v98;
      *&v143 = v39;
      v99 = objc_opt_self();
      v100 = String._bridgeToObjectiveCImpl()();
      v101 = v39;
      v102 = [v99 _newKeyPathExpressionForString_];
      swift_unknownObjectRelease();
      if (!v102)
      {
        v98 = 0;
        *(&v140 + 1) = 0;
        *&v141 = 0;
      }

      *&v140 = v102;
      *(&v141 + 1) = v98;
      v103 = objc_allocWithZone(NSKeyPathExpression);
      result = @nonobjc NSKeyPathExpression.init(operand:andKeyPath:)(&v143, &v140);
      if (result)
      {
        v32 = result;

        return v32;
      }

      __break(1u);
      goto LABEL_123;
    }

LABEL_121:
    __break(1u);
  }

  v85 = String.subscript.getter();
  v87 = v86;
  v89 = v88;
  v91 = v90;

  *&v137[1] = 64;
  v138 = 0xE100000000000000;
  v92 = Substring.init<A>(_:)();
  if ((v85 ^ v87) < 0x4000 || !((v92 ^ v93) >> 14))
  {

LABEL_78:

    v39 = v65;
    goto LABEL_79;
  }

  specialized _StringCompareOptionsIterable._range<A>(of:toHalfWidth:diacriticsInsensitive:caseFold:anchored:backwards:)(v92, v93, v94, v95, 0, 0, 0, 0, 0, v85, v87, v89, v91);
  v97 = v96;

  v39 = v65;
  if ((v97 & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_79:
  v104 = [v39 keyPath];
  if (!v104)
  {
    v110 = 0;
    v112 = 0xE000000000000000;
    goto LABEL_117;
  }

  v105 = v104;
  v106 = _objc_isTaggedPointer(v104);
  v107 = v105;
  v108 = v107;
  if (!v106)
  {
LABEL_85:
    LOBYTE(v140) = 0;
    *&v143 = 0;
    *v137 = 0;
    v113 = __CFStringIsCF();
    if (v113)
    {
      v110 = v143;
      if (!v143)
      {

        v112 = 0xE000000000000000;
        goto LABEL_117;
      }

      if (v137[0] == 1)
      {
        if (v140)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v119 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_115;
      }

      if (v137[1])
      {
        if (v140 != 1)
        {
          v113 = [v108 lengthOfBytesUsingEncoding_];
        }

        MEMORY[0x1EEE9AC00](v113);
        v121 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v112 = v122;
        v123 = HIBYTE(v122) & 0xF;
        if ((v122 & 0x2000000000000000) == 0)
        {
          v123 = v121 & 0xFFFFFFFFFFFFLL;
        }

        if (v123)
        {
          v110 = v121;
          goto LABEL_99;
        }
      }
    }

    else
    {
      v114 = v108;
      v115 = String.init(_nativeStorage:)();
      if (v116)
      {
        v110 = v115;
        v112 = v116;

        goto LABEL_117;
      }

      *&v143 = [v114 length];
      if (!v143)
      {

        v110 = 0;
        v112 = 0xE000000000000000;
        goto LABEL_117;
      }
    }

    v119 = String.init(_cocoaString:)();
LABEL_115:
    v110 = v119;
    v112 = v120;
    goto LABEL_116;
  }

  v109 = _objc_getTaggedPointerTag(v107);
  if (!v109)
  {
    goto LABEL_97;
  }

  if (v109 != 22)
  {
    if (v109 == 2)
    {
      MEMORY[0x1EEE9AC00](v109);
      v110 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v112 = v111;

LABEL_117:
      *&v143 = v110;
      *(&v143 + 1) = v112;
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      MEMORY[0x1865CB0E0](v132, 0xE900000000000066);
      v124 = String._bridgeToObjectiveCImpl()();

      v58 = [objc_opt_self() expressionForKeyPath_];
      goto LABEL_118;
    }

    goto LABEL_85;
  }

  result = [v108 UTF8String];
  if (result)
  {
    v117 = String.init(utf8String:)(result);
    if (v118)
    {
LABEL_98:
      v110 = v117;
      v112 = v118;
LABEL_99:

LABEL_116:
      goto LABEL_117;
    }

    __break(1u);
LABEL_97:
    *&v137[1] = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v117 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v118)
    {
      [v108 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v112 = *(&v140 + 1);
      v110 = v140;
      goto LABEL_116;
    }

    goto LABEL_98;
  }

LABEL_124:
  __break(1u);
  return result;
}

id protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.SequenceMinimum<A>(uint64_t a1, uint64_t a2)
{
  result = PredicateExpressions.SequenceMaximum.convert(state:)(a1, a2, 0x6C65732E6E696D40, closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, partial apply for closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:), closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, partial apply for closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:));
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t PredicateExpressions.Conditional.convert(state:)(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = a2;
  v117 = *(a2 + 32);
  v116 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v115 = v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 24);
  v122 = *(v8 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v121 = type metadata accessor for Optional();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v114 = v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v123 = (v108 - v13);
  v126 = AssociatedTypeWitness;
  v125 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v113 = v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v118 = v108 - v17;
  v124 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v5 + 16);
  v23 = MEMORY[0x1EEE9AC00](v22);
  (*(v25 + 16))(v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v21, v23);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMR);
  v26 = swift_dynamicCast();
  v27 = MEMORY[0x1E69E7CC0];
  v128 = v2;
  v119 = a1;
  if (!v26)
  {
    v133 = 0;
    v131 = 0u;
    v132 = 0u;
    outlined destroy of TermOfAddress?(&v131, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
    v32 = 0;
    goto LABEL_5;
  }

  outlined init with take of Equatable(&v131, &v134);
  v28 = v135;
  v29 = v136;
  __swift_project_boxed_opaque_existential_1(&v134, v135);
  v30 = (*(v29 + 16))(a1, v28, v29);
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1(&v134);
    v4 = 0;
    v32 = v3;
    v2 = v128;
    v27 = MEMORY[0x1E69E7CC0];
LABEL_5:
    *&v134 = v27;
    (*(*(v5 + 40) + 16))(&v137, &v134, v21);
    if (v4)
    {

      if (v32)
      {
LABEL_8:
        swift_willThrow();
        return v2;
      }

LABEL_7:
      lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
      swift_allocError();
      *v33 = 2;
      goto LABEL_8;
    }

    v2 = 0;

    v130 = MEMORY[0x1E69E6370];
    LOBYTE(v129[0]) = v137 & 1;
    _expressionCompatibleValue(for:)(v129, &v131);
    __swift_destroy_boxed_opaque_existential_1(v129);
    if (!*(&v132 + 1))
    {
      outlined destroy of TermOfAddress?(&v131, &_sypSgMd, &_sypSgMR);
      if (v32)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    outlined init with take of Any(&v131, &v134);
    v36 = v135;
    v37 = __swift_project_boxed_opaque_existential_1(&v134, v135);
    v111 = v108;
    v38 = *(v36 - 1);
    v39 = v38[8];
    v40 = MEMORY[0x1EEE9AC00](v37);
    v110 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
    v41 = v108 - v110;
    v112 = v38;
    v109 = v38[2];
    v109(v108 - v110, v40);
    result = _swift_isClassOrObjCExistentialType();
    if (result)
    {
      if (v39 != 8)
      {
        __break(1u);
        goto LABEL_54;
      }

      v43 = *v41;
      v44 = v112[1];
      swift_unknownObjectRetain();
      v44(v41, v36);
    }

    else
    {
      v108[1] = v108;
      v105 = MEMORY[0x1EEE9AC00](result);
      (v109)(v108 - v110, v41, v36, v105);
      v43 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      (v112[1])(v41, v36);
    }

    v34 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v134);
    goto LABEL_19;
  }

  v34 = v30;
  v35 = v31;
  __swift_destroy_boxed_opaque_existential_1(&v134);
  if ((v35 & 1) == 0)
  {
LABEL_19:
    LOBYTE(v134) = 1;
    v45 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v46 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    v47 = [objc_allocWithZone(NSComparisonPredicate) initWithLeftExpression:v34 rightExpression:v46 modifier:0 type:4 options:0];

    v34 = v47;
  }

  v112 = v34;
  (v124[2])(v20, v128 + *(v5 + 68), v9);
  if (!swift_dynamicCast())
  {
    v133 = 0;
    v131 = 0u;
    v132 = 0u;
    outlined destroy of TermOfAddress?(&v131, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
    v32 = 0;
    *&v134 = MEMORY[0x1E69E7CC0];
    v53 = v123;
    (v122[2])(&v134, v9);
    v20 = 0;

    v55 = v125;
    v56 = v126;
    (*(v125 + 56))(v53, 0, 1, v126);
    v57 = v118;
    (*(v55 + 32))(v118, v53, v56);
    v130 = v56;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v129);
    (*(v55 + 16))(boxed_opaque_existential_0, v57, v56);
    _expressionCompatibleValue(for:)(v129, &v131);
    v59 = v112;
    __swift_destroy_boxed_opaque_existential_1(v129);
    if (!*(&v132 + 1))
    {
      v96 = *(v55 + 8);
      v2 = (v55 + 8);
      v96(v57, v56);
      outlined destroy of TermOfAddress?(&v131, &_sypSgMd, &_sypSgMR);
      lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
      swift_allocError();
      *v54 = 2;
      swift_willThrow();

      return v2;
    }

    outlined init with take of Any(&v131, &v134);
    v36 = v135;
    v71 = __swift_project_boxed_opaque_existential_1(&v134, v135);
    v124 = v108;
    v39 = *(v36 - 1);
    v72 = *(v39 + 64);
    v73 = MEMORY[0x1EEE9AC00](v71);
    v9 = ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
    v41 = (v108 - v9);
    v123 = *(v39 + 16);
    v123(v108 - v9, v73);
    result = _swift_isClassOrObjCExistentialType();
    if (result)
    {
      if (v72 != 8)
      {
        __break(1u);
LABEL_56:
        v127 = v108;
        v107 = MEMORY[0x1EEE9AC00](result);
        (v9)(v108 - v5, v36, v20, v107);
        v100 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        (*(v39 + 8))(v36, v20);
        goto LABEL_49;
      }

      v74 = *v41;
      v75 = *(v39 + 8);
      swift_unknownObjectRetain();
      v75(v108 - v9, v36);
      goto LABEL_30;
    }

LABEL_54:
    v122 = v108;
    v106 = MEMORY[0x1EEE9AC00](result);
    (v123)(v108 - v9, v41, v36, v106);
    v74 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (*(v39 + 8))(v41, v36);
LABEL_30:
    v76 = v126;
    v77 = v118;
    v124 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v134);
    v68 = v125;
    (*(v125 + 8))(v77, v76);
    v69 = v128;
    v70 = v117;
    v50 = v119;
    goto LABEL_31;
  }

  outlined init with take of Equatable(&v131, &v134);
  v48 = v135;
  v49 = v136;
  __swift_project_boxed_opaque_existential_1(&v134, v135);
  v50 = v119;
  v51 = (*(v49 + 16))(v119, v48, v49);
  v20 = 0;
  v124 = v51;
  v60 = v52;
  __swift_destroy_boxed_opaque_existential_1(&v134);
  if (v60)
  {
    LOBYTE(v134) = 1;
    v61 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v62 = objc_opt_self();
    v63 = [v62 expressionForConstantValue_];
    swift_unknownObjectRelease();
    LOBYTE(v134) = 0;
    v64 = [v62 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v65 = v62;
    v66 = v124;
    v67 = [v65 expressionForConditional:v124 trueExpression:v63 falseExpression:v64];

    v124 = v67;
  }

  v68 = v125;
  v69 = v128;
  v70 = v117;
LABEL_31:
  (*(v116 + 16))(v115, &v69[*(v5 + 72)], v70);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(&v131, &v134);
    v78 = v135;
    v79 = v136;
    __swift_project_boxed_opaque_existential_1(&v134, v135);
    v80 = v20;
    v81 = (*(v79 + 16))(v50, v78, v79);
    if (!v20)
    {
      v89 = v81;
      v90 = v82;
      __swift_destroy_boxed_opaque_existential_1(&v134);
      if (v90)
      {
        LOBYTE(v134) = 1;
        v91 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v92 = objc_opt_self();
        v93 = [v92 expressionForConstantValue_];
        swift_unknownObjectRelease();
        LOBYTE(v134) = 0;
        v94 = [v92 expressionForConstantValue_];
        swift_unknownObjectRelease();
        v95 = [v92 expressionForConditional:v89 trueExpression:v93 falseExpression:v94];

        v89 = v95;
      }

      goto LABEL_50;
    }

    __swift_destroy_boxed_opaque_existential_1(&v134);
    v20 = 0;
    v41 = v80;
    v70 = v117;
  }

  else
  {
    v133 = 0;
    v131 = 0u;
    v132 = 0u;
    outlined destroy of TermOfAddress?(&v131, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
    v41 = 0;
  }

  *&v134 = MEMORY[0x1E69E7CC0];
  v83 = v114;
  (*(*(v5 + 56) + 16))(&v134, v70);
  if (v20)
  {

    (*(v68 + 56))(v83, 1, 1, v126);
    (*(v120 + 8))(v83, v121);
LABEL_38:
    v87 = v112;
    v2 = v124;
    if (!v41)
    {
      lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
      swift_allocError();
      *v88 = 2;
    }

    swift_willThrow();

    return v2;
  }

  v84 = v126;
  (*(v68 + 56))(v83, 0, 1, v126);
  v85 = v113;
  (*(v68 + 32))(v113, v83, v84);
  v130 = v84;
  v86 = __swift_allocate_boxed_opaque_existential_0(v129);
  (*(v68 + 16))(v86, v85, v84);
  _expressionCompatibleValue(for:)(v129, &v131);
  __swift_destroy_boxed_opaque_existential_1(v129);
  if (!*(&v132 + 1))
  {
    (*(v68 + 8))(v85, v84);
    outlined destroy of TermOfAddress?(&v131, &_sypSgMd, &_sypSgMR);
    goto LABEL_38;
  }

  outlined init with take of Any(&v131, &v134);
  v20 = v135;
  v97 = __swift_project_boxed_opaque_existential_1(&v134, v135);
  v128 = v108;
  v39 = *(v20 - 1);
  v98 = *(v39 + 64);
  v99 = MEMORY[0x1EEE9AC00](v97);
  v5 = (v98 + 15) & 0xFFFFFFFFFFFFFFF0;
  v36 = (v108 - v5);
  v9 = *(v39 + 16);
  (v9)(v108 - v5, v99);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
    goto LABEL_56;
  }

  if (v98 == 8)
  {
    v100 = *v36;
    v101 = *(v39 + 8);
    swift_unknownObjectRetain();
    v101(v108 - v5, v20);
LABEL_49:
    v102 = v126;
    v89 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v134);
    (*(v125 + 8))(v113, v102);
LABEL_50:
    v103 = v112;
    v104 = v124;
    v2 = [objc_opt_self() expressionForConditional:v112 trueExpression:v124 falseExpression:v89];

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.Conditional<A, B, C>(uint64_t a1, unint64_t a2)
{
  result = PredicateExpressions.Conditional.convert(state:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

char *PredicateExpressions.NilCoalesce.convert(state:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = *(a2 + 3);
  v95 = *(a2 + 5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v96 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v91 = v90 - v8;
  v101 = v6;
  v99 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v98 = v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Optional();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v90 - v14;
  v104 = v11;
  v103 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v94 = v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v100 = v90 - v19;
  v20 = a2;
  v21 = *(a2 + 2);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v26 + 16);
  v113 = v3;
  v27(v25, v3, v21, v23);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMR);
  v28 = swift_dynamicCast();
  v29 = MEMORY[0x1E69E7CC0];
  v92 = a1;
  if (v28)
  {
    v93 = AssociatedTypeWitness;
    outlined init with take of Equatable(&v107, &v110);
    v30 = v111;
    v31 = v112;
    __swift_project_boxed_opaque_existential_1(&v110, v111);
    v32 = v102;
    v33 = (*(v31 + 16))(a1, v30, v31);
    v35 = v32;
    if (!v32)
    {
      v42 = v33;
      v43 = v34;
      __swift_destroy_boxed_opaque_existential_1(&v110);
      if (v43)
      {
        LOBYTE(v110) = 1;
        v44 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v45 = objc_opt_self();
        v46 = [v45 expressionForConstantValue_];
        swift_unknownObjectRelease();
        LOBYTE(v110) = 0;
        v47 = [v45 expressionForConstantValue_];
        swift_unknownObjectRelease();
        v48 = [v45 expressionForConditional:v42 trueExpression:v46 falseExpression:v47];

        v42 = v48;
      }

      v49 = v93;
      v50 = v113;
      goto LABEL_20;
    }

    __swift_destroy_boxed_opaque_existential_1(&v110);
    v36 = 0;
    AssociatedTypeWitness = v93;
    v29 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v109 = 0;
    v107 = 0u;
    v108 = 0u;
    outlined destroy of TermOfAddress?(&v107, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
    v35 = 0;
    v36 = v102;
  }

  *&v110 = v29;
  (*(*(v20 + 4) + 16))(&v110, v21);
  if (v36)
  {

    (*(v103 + 56))(v15, 1, 1, v104);
    (*(v13 + 8))(v15, v12);
    if (v35)
    {
LABEL_8:
      swift_willThrow();
      return v15;
    }

LABEL_7:
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v37 = 2;
    goto LABEL_8;
  }

  v102 = v35;

  v39 = v103;
  v38 = v104;
  (*(v103 + 56))(v15, 0, 1, v104);
  v40 = v100;
  (*(v39 + 32))(v100, v15, v38);
  v106 = v38;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v105);
  (*(v39 + 16))(boxed_opaque_existential_0, v40, v38);
  _expressionCompatibleValue(for:)(v105, &v107);
  __swift_destroy_boxed_opaque_existential_1(v105);
  if (!*(&v108 + 1))
  {
    (*(v39 + 8))(v40, v38);
    outlined destroy of TermOfAddress?(&v107, &_sypSgMd, &_sypSgMR);
    if (v102)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v93 = AssociatedTypeWitness;
  outlined init with take of Any(&v107, &v110);
  v15 = v111;
  v51 = __swift_project_boxed_opaque_existential_1(&v110, v111);
  v90[1] = v90;
  v52 = *(v15 - 1);
  v53 = v52[8];
  v54 = MEMORY[0x1EEE9AC00](v51);
  v55 = ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = (v90 - v55);
  v58 = (v52 + 2);
  v57 = v52[2];
  (v57)(v90 - v55, v54);
  result = _swift_isClassOrObjCExistentialType();
  if (result)
  {
    if (v53 != 8)
    {
      __break(1u);
LABEL_36:
      v104 = v90;
      v89 = MEMORY[0x1EEE9AC00](result);
      (v55)(v90 - v58, v20, v56, v89);
      v80 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      (*(v57 + 8))(v20, v56);
      goto LABEL_31;
    }

    v60 = *v56;
    v61 = v52[1];
    swift_unknownObjectRetain();
    v61(v90 - v55, v15);
  }

  else
  {
    v90[0] = v90;
    v88 = MEMORY[0x1EEE9AC00](result);
    (v57)(v90 - v55, v90 - v55, v15, v88);
    v60 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (v52[1])(v90 - v55, v15);
  }

  v49 = v93;
  v50 = v113;
  v42 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v110);
  (*(v103 + 8))(v100, v104);
LABEL_20:
  (*(v99 + 16))(v98, &v50[*(v20 + 13)], v101);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(&v107, &v110);
    v62 = v111;
    v63 = v112;
    __swift_project_boxed_opaque_existential_1(&v110, v111);
    v69 = (*(v63 + 16))(v92, v62, v63);
    v102 = 0;
    v71 = v70;
    __swift_destroy_boxed_opaque_existential_1(&v110);
    if (v71)
    {
      LOBYTE(v110) = 1;
      v72 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v73 = objc_opt_self();
      v74 = [v73 expressionForConstantValue_];
      swift_unknownObjectRelease();
      LOBYTE(v110) = 0;
      v75 = [v73 expressionForConstantValue_];
      swift_unknownObjectRelease();
      v76 = [v73 expressionForConditional:v69 trueExpression:v74 falseExpression:v75];

      v69 = v76;
    }

    goto LABEL_32;
  }

  v109 = 0;
  v107 = 0u;
  v108 = 0u;
  outlined destroy of TermOfAddress?(&v107, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
  v15 = 0;
  *&v110 = MEMORY[0x1E69E7CC0];
  v64 = v94;
  (*(v95 + 16))(&v110, v101);
  v65 = v96;

  (*(v65 + 56))(v64, 0, 1, v49);
  v66 = v91;
  (*(v65 + 32))(v91, v64, v49);
  v106 = v49;
  v67 = __swift_allocate_boxed_opaque_existential_0(v105);
  (*(v65 + 16))(v67, v66, v49);
  _expressionCompatibleValue(for:)(v105, &v107);
  v102 = 0;
  __swift_destroy_boxed_opaque_existential_1(v105);
  if (!*(&v108 + 1))
  {
    (*(v65 + 8))(v66, v49);
    outlined destroy of TermOfAddress?(&v107, &_sypSgMd, &_sypSgMR);
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v68 = 2;
    swift_willThrow();

    return v15;
  }

  v113 = v42;
  v93 = v49;
  outlined init with take of Any(&v107, &v110);
  v56 = v111;
  v77 = __swift_project_boxed_opaque_existential_1(&v110, v111);
  v57 = *(v56 - 1);
  v78 = *(v57 + 64);
  v79 = MEMORY[0x1EEE9AC00](v77);
  v58 = (v78 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = v90 - v58;
  v55 = *(v57 + 16);
  (v55)(v90 - v58, v79);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
    goto LABEL_36;
  }

  if (v78 == 8)
  {
    v80 = *v20;
    v81 = *(v57 + 8);
    swift_unknownObjectRetain();
    v81(v90 - v58, v56);
LABEL_31:
    v42 = v113;
    v69 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v110);
    (*(v96 + 8))(v91, v93);
LABEL_32:
    v82 = objc_opt_self();
    v83 = [v82 expressionForConstantValue_];
    v84 = objc_allocWithZone(NSComparisonPredicate);
    v85 = v42;
    v86 = [v84 initWithLeftExpression:v85 rightExpression:v83 modifier:0 type:5 options:0];

    v87 = v86;
    v15 = [v82 expressionForConditional:v87 trueExpression:v85 falseExpression:v69];

    return v15;
  }

  __break(1u);
  return result;
}

char *protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.NilCoalesce<A, B>(uint64_t a1, char *a2)
{
  result = PredicateExpressions.NilCoalesce.convert(state:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

unint64_t PredicateExpressions.OptionalFlatMap.convert(state:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = a2[4];
  v130 = a2[7];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v129 = type metadata accessor for Optional();
  v128 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v138 = v126 - v8;
  v132 = AssociatedTypeWitness;
  v131 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v126 - v10;
  v136 = v6;
  v135 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v134 = v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v126 - v17;
  v140 = *(v14 - 1);
  MEMORY[0x1EEE9AC00](v19);
  v139 = v126 - v20;
  v151 = a2;
  v21 = a2[2];
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v26 + 16);
  v142 = v3;
  v27(v25, v3, v21, v23);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMR);
  v28 = swift_dynamicCast();
  v29 = MEMORY[0x1E69E7CC0];
  v137 = a1;
  if (v28)
  {
    v127 = v11;
    outlined init with take of Equatable(&v145, &v148);
    v31 = v149;
    v30 = v150;
    __swift_project_boxed_opaque_existential_1(&v148, v149);
    v32 = v141;
    v33 = (*(v30 + 16))(a1, v31, v30);
    v35 = v32;
    if (!v32)
    {
      v41 = v33;
      LOBYTE(v42) = v34;
      __swift_destroy_boxed_opaque_existential_1(&v148);
      v141 = 0;
      if (v42)
      {
        LOBYTE(v148) = 1;
        v43 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v42 = objc_opt_self();
        v44 = [v42 expressionForConstantValue_];
        swift_unknownObjectRelease();
        LOBYTE(v148) = 0;
        v45 = [v42 expressionForConstantValue_];
        swift_unknownObjectRelease();
        v46 = [v42 expressionForConditional:v41 trueExpression:v44 falseExpression:v45];

        v41 = v46;
      }

      v48 = v137;
      v47 = v138;
      goto LABEL_20;
    }

    __swift_destroy_boxed_opaque_existential_1(&v148);
    v36 = 0;
    v11 = v127;
    v29 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v147 = 0;
    v145 = 0u;
    v146 = 0u;
    outlined destroy of TermOfAddress?(&v145, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
    v35 = 0;
    v36 = v141;
  }

  *&v148 = v29;
  (*(v151[6] + 16))(&v148, v21);
  if (v36)
  {

    v140[7](v18, 1, 1, v14);
    (*(v16 + 8))(v18, v15);
    if (v35)
    {
LABEL_8:
      swift_willThrow();
      return v14;
    }

LABEL_7:
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v37 = 2;
    goto LABEL_8;
  }

  v38 = v140;
  v140[7](v18, 0, 1, v14);
  v39 = v139;
  (v38[4])(v139, v18, v14);
  v144 = v14;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v143);
  (v38[2])(boxed_opaque_existential_0, v39, v14);
  _expressionCompatibleValue(for:)(v143, &v145);
  v141 = 0;
  __swift_destroy_boxed_opaque_existential_1(v143);
  if (!*(&v146 + 1))
  {
    (v38[1])(v39, v14);
    outlined destroy of TermOfAddress?(&v145, &_sypSgMd, &_sypSgMR);
    if (v35)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v127 = v11;
  outlined init with take of Any(&v145, &v148);
  v49 = v149;
  v50 = __swift_project_boxed_opaque_existential_1(&v148, v149);
  v126[1] = v126;
  v51 = *(v49 - 8);
  v52 = v51[8];
  v53 = MEMORY[0x1EEE9AC00](v50);
  v54 = ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = (v126 - v54);
  v57 = (v51 + 2);
  v56 = v51[2];
  (v56)(v126 - v54, v53);
  result = _swift_isClassOrObjCExistentialType();
  if (result)
  {
    if (v52 != 8)
    {
      __break(1u);
LABEL_70:
      v142 = v126;
      v125 = MEMORY[0x1EEE9AC00](result);
      v52(v126 - v57, v54, v49, v125);
      v99 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      (*(v56 + 8))(v54, v49);
      goto LABEL_48;
    }

    v42 = *v55;
    v59 = v51[1];
    swift_unknownObjectRetain();
    v59(v126 - v54, v49);
  }

  else
  {
    v126[0] = v126;
    v124 = MEMORY[0x1EEE9AC00](result);
    (v56)(v126 - v54, v55, v49, v124);
    v42 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (v51[1])(v55, v49);
  }

  v48 = v137;
  v47 = v138;
  v41 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v148);
  (v140[1])(v139, v14);
LABEL_20:
  v60 = v142;
  v61 = *&v142[*(v151 + 18)];
  v62 = v41;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v148 = *(v48 + 8);
  v64 = v148;
  v65 = specialized __RawDictionaryStorage.find<A>(_:)();
  v67 = *(v64 + 16);
  v68 = (v66 & 1) == 0;
  v69 = __OFADD__(v67, v68);
  v70 = v67 + v68;
  if (v69)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v42) = v66;
    if (*(v64 + 24) < v70)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v70, isUniquelyReferenced_nonNull_native);
      v71 = v148;
      v65 = specialized __RawDictionaryStorage.find<A>(_:)();
      if ((v42 & 1) == (v72 & 1))
      {
        goto LABEL_26;
      }

      v65 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v71 = v64;
      goto LABEL_26;
    }
  }

  v140 = v62;
  v109 = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation20PredicateExpressionsO10VariableIDVSo12NSExpressionCGMd, &_ss18_DictionaryStorageCy10Foundation20PredicateExpressionsO10VariableIDVSo12NSExpressionCGMR);
  v110 = static _DictionaryStorage.copy(original:)();
  v71 = v110;
  if (*(v64 + 16))
  {
    result = v110 + 64;
    v111 = v64 + 64;
    v112 = ((1 << *(v71 + 32)) + 63) >> 6;
    if (v71 != v64 || result >= v111 + 8 * v112)
    {
      result = memmove(result, (v64 + 64), 8 * v112);
    }

    v113 = 0;
    *(v71 + 16) = *(v64 + 16);
    v114 = 1 << *(v64 + 32);
    v115 = *(v64 + 64);
    v116 = -1;
    if (v114 < 64)
    {
      v116 = ~(-1 << v114);
    }

    v117 = v116 & v115;
    v118 = (v114 + 63) >> 6;
    if ((v116 & v115) != 0)
    {
      do
      {
        v119 = __clz(__rbit64(v117));
        v117 &= v117 - 1;
LABEL_65:
        v122 = v119 | (v113 << 6);
        v123 = *(*(v64 + 56) + 8 * v122);
        *(*(v71 + 48) + 8 * v122) = *(*(v64 + 48) + 8 * v122);
        *(*(v71 + 56) + 8 * v122) = v123;
        result = v123;
      }

      while (v117);
    }

    v120 = v113;
    while (1)
    {
      v113 = v120 + 1;
      if (__OFADD__(v120, 1))
      {
        goto LABEL_72;
      }

      if (v113 >= v118)
      {
        break;
      }

      v121 = *(v111 + 8 * v113);
      ++v120;
      if (v121)
      {
        v119 = __clz(__rbit64(v121));
        v117 = (v121 - 1) & v121;
        goto LABEL_65;
      }
    }
  }

  v65 = v109;
  v48 = v137;
  v47 = v138;
  v60 = v142;
  v62 = v140;
LABEL_26:
  v73 = v135;
  if (v42)
  {
    v74 = *(v71 + 56);
    v75 = *(v74 + 8 * v65);
    *(v74 + 8 * v65) = v62;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v65, v61, v62, v71);
    v75 = v62;
  }

  *(v48 + 8) = v71;
  v76 = v136;
  (*(v73 + 16))(v134, &v60[*(v151 + 17)], v136);
  if (swift_dynamicCast())
  {
    v140 = v62;
    outlined init with take of Equatable(&v145, &v148);
    v77 = v149;
    v78 = v150;
    __swift_project_boxed_opaque_existential_1(&v148, v149);
    v79 = v141;
    v80 = (*(v78 + 16))(v48, v77, v78);
    v82 = v79;
    if (!v79)
    {
      v89 = v80;
      v90 = v81;
      __swift_destroy_boxed_opaque_existential_1(&v148);
      if (v90)
      {
        LOBYTE(v148) = 1;
        v91 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v92 = objc_opt_self();
        v93 = [v92 expressionForConstantValue_];
        swift_unknownObjectRelease();
        LOBYTE(v148) = 0;
        v94 = [v92 expressionForConstantValue_];
        swift_unknownObjectRelease();
        v95 = [v92 expressionForConditional:v89 trueExpression:v93 falseExpression:v94];

        v89 = v95;
      }

      goto LABEL_49;
    }

    __swift_destroy_boxed_opaque_existential_1(&v148);
    v83 = 0;
    v14 = v82;
    v62 = v140;
  }

  else
  {
    v147 = 0;
    v145 = 0u;
    v146 = 0u;
    outlined destroy of TermOfAddress?(&v145, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
    v14 = 0;
    v83 = v141;
  }

  *&v148 = MEMORY[0x1E69E7CC0];
  (*(v130 + 16))(&v148, v76);
  if (v83)
  {

    (*(v131 + 56))(v47, 1, 1, v132);
    (*(v128 + 8))(v47, v129);
    if (v14)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v140 = v62;

  v84 = v131;
  v85 = v132;
  (*(v131 + 56))(v47, 0, 1, v132);
  v86 = v127;
  (*(v84 + 32))(v127, v47, v85);
  v144 = v85;
  v87 = __swift_allocate_boxed_opaque_existential_0(v143);
  (*(v84 + 16))(v87, v86, v85);
  _expressionCompatibleValue(for:)(v143, &v145);
  __swift_destroy_boxed_opaque_existential_1(v143);
  if (!*(&v146 + 1))
  {
    (*(v84 + 8))(v127, v85);
    outlined destroy of TermOfAddress?(&v145, &_sypSgMd, &_sypSgMR);
    v62 = v140;
    if (v14)
    {
      goto LABEL_39;
    }

LABEL_38:
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v88 = 2;
LABEL_39:
    swift_willThrow();

    return v14;
  }

  outlined init with take of Any(&v145, &v148);
  v49 = v149;
  v96 = __swift_project_boxed_opaque_existential_1(&v148, v149);
  v151 = v126;
  v56 = *(v49 - 8);
  v97 = *(v56 + 64);
  v98 = MEMORY[0x1EEE9AC00](v96);
  v57 = (v97 + 15) & 0xFFFFFFFFFFFFFFF0;
  v54 = v126 - v57;
  v52 = *(v56 + 16);
  (v52)(v126 - v57, v98);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
    goto LABEL_70;
  }

  if (v97 == 8)
  {
    v99 = *v54;
    v100 = *(v56 + 8);
    swift_unknownObjectRetain();
    v100(v126 - v57, v49);
LABEL_48:
    v89 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v148);
    (*(v131 + 8))(v127, v132);
LABEL_49:
    v101 = v140;
    v102 = objc_opt_self();
    v103 = [v102 expressionForConstantValue_];
    v104 = objc_allocWithZone(NSComparisonPredicate);
    v105 = v101;
    v106 = [v104 initWithLeftExpression:v105 rightExpression:v103 modifier:0 type:5 options:0];

    v107 = [v102 expressionForConstantValue_];
    v108 = v106;
    v14 = [v102 expressionForConditional:v108 trueExpression:v89 falseExpression:v107];

    return v14;
  }

  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

unint64_t protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.OptionalFlatMap<A, B, C, D>(uint64_t a1, void *a2)
{
  result = PredicateExpressions.OptionalFlatMap.convert(state:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t PredicateExpressions.CollectionIndexSubscript<>.convert(state:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v108 = a1;
  v5 = a2[3];
  v97 = a2[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v95 = type metadata accessor for Optional();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v101 = v92 - v7;
  v99 = AssociatedTypeWitness;
  v98 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v8);
  v93 = v92 - v9;
  v100 = v5;
  v104 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v103 = v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[4];
  v105 = a2;
  v13 = a2[2];
  v14 = swift_getAssociatedTypeWitness();
  v107 = type metadata accessor for Optional();
  v15 = *(v107 - 1);
  MEMORY[0x1EEE9AC00](v107);
  v17 = v92 - v16;
  v109 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v106 = v92 - v19;
  v20 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_181215ED0;
  v25 = *(v20 + 16);
  v119 = v3;
  v25(v23, v3, v13);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMR);
  v26 = swift_dynamicCast();
  v27 = MEMORY[0x1E69E7CC0];
  if (v26)
  {
    v96 = v24;
    outlined init with take of Equatable(&v113, &v116);
    v29 = v117;
    v28 = v118;
    __swift_project_boxed_opaque_existential_1(&v116, v117);
    v30 = v110;
    v31 = (*(v28 + 16))(v108, v29, v28);
    v33 = v30;
    if (!v30)
    {
      v40 = v31;
      v41 = v32;
      v110 = 0;
      __swift_destroy_boxed_opaque_existential_1(&v116);
      v42 = v100;
      if (v41)
      {
        LOBYTE(v116) = 1;
        v43 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v44 = objc_opt_self();
        v45 = [v44 expressionForConstantValue_];
        swift_unknownObjectRelease();
        LOBYTE(v116) = 0;
        v46 = [v44 expressionForConstantValue_];
        swift_unknownObjectRelease();
        v47 = [v44 expressionForConditional:v40 trueExpression:v45 falseExpression:v46];

        v40 = v47;
      }

      v35 = v96;
      v48 = v101;
      goto LABEL_20;
    }

    __swift_destroy_boxed_opaque_existential_1(&v116);
    v34 = 0;
    v24 = v96;
    v27 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v115 = 0;
    v113 = 0u;
    v114 = 0u;
    outlined destroy of TermOfAddress?(&v113, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
    v33 = 0;
    v34 = v110;
  }

  *&v116 = v27;
  (*(v12 + 2))(&v116, v13, v12);
  if (v34)
  {

    (*(v109 + 56))(v17, 1, 1, v14);
    (*(v15 + 8))(v17, v107);
    v35 = v24;
    if (v33)
    {
LABEL_8:
      swift_willThrow();
LABEL_31:
      v35[2] = 0;

      return v12;
    }

LABEL_7:
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v36 = 2;
    goto LABEL_8;
  }

  v37 = v109;
  (*(v109 + 56))(v17, 0, 1, v14);
  v38 = v106;
  (*(v37 + 32))(v106, v17, v14);
  v112 = v14;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v111);
  (*(v37 + 16))(boxed_opaque_existential_0, v38, v14);
  _expressionCompatibleValue(for:)(v111, &v113);
  v12 = 0;
  __swift_destroy_boxed_opaque_existential_1(v111);
  v35 = v24;
  if (!*(&v114 + 1))
  {
    (*(v37 + 8))(v38, v14);
    outlined destroy of TermOfAddress?(&v113, &_sypSgMd, &_sypSgMR);
    if (v33)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v110 = 0;
  v107 = v33;
  v96 = v24;
  outlined init with take of Any(&v113, &v116);
  v49 = v117;
  v50 = __swift_project_boxed_opaque_existential_1(&v116, v117);
  v51 = v92;
  v52 = *(v49 - 8);
  v53 = *(v52 + 64);
  v54 = MEMORY[0x1EEE9AC00](v50);
  v55 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  v56 = v92 - v55;
  v57 = v52 + 16;
  v58 = *(v52 + 16);
  (v58)(v92 - v55, v54);
  result = _swift_isClassOrObjCExistentialType();
  if (result)
  {
    if (v53 != 8)
    {
      __break(1u);
LABEL_46:
      v110 = v92;
      v91 = MEMORY[0x1EEE9AC00](result);
      (v52)(v92 - v58, v56, v49, v91);
      v84 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      (*(v57 + 8))(v56, v49);
      goto LABEL_41;
    }

    v60 = *v56;
    v61 = *(v52 + 8);
    swift_unknownObjectRetain();
    v61(v92 - v55, v49);
  }

  else
  {
    v92[1] = v92;
    v90 = MEMORY[0x1EEE9AC00](result);
    (v58)(v92 - v55, v92 - v55, v49, v90);
    v60 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (*(v52 + 8))(v92 - v55, v49);
  }

  v35 = v96;
  v48 = v101;
  v42 = v100;
  v40 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v116);
  (*(v109 + 8))(v106, v14);
LABEL_20:
  v62 = v108;
  v14 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSExpression, off_1E69EE3D0);
  v35[7] = v14;
  v35[4] = v40;
  v12 = v103;
  (*(v104 + 16))(v103, &v119[*(v105 + 15)], v42);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(&v113, &v116);
    v12 = v117;
    v63 = v118;
    __swift_project_boxed_opaque_existential_1(&v116, v117);
    v64 = v110;
    v65 = (*(v63 + 16))(v62, v12, v63);
    v51 = v64;
    if (!v64)
    {
      v73 = v65;
      v74 = v66;
      __swift_destroy_boxed_opaque_existential_1(&v116);
      if (v74)
      {
        LOBYTE(v116) = 1;
        v75 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v76 = objc_opt_self();
        v77 = [v76 expressionForConstantValue_];
        swift_unknownObjectRelease();
        LOBYTE(v116) = 0;
        v78 = [v76 expressionForConstantValue_];
        swift_unknownObjectRelease();
        v79 = [v76 expressionForConditional:v73 trueExpression:v77 falseExpression:v78];

        v73 = v79;
      }

      v80 = v35;
      goto LABEL_42;
    }

    __swift_destroy_boxed_opaque_existential_1(&v116);
    v67 = 0;
  }

  else
  {
    v115 = 0;
    v113 = 0u;
    v114 = 0u;
    outlined destroy of TermOfAddress?(&v113, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
    v51 = 0;
    v67 = v110;
  }

  *&v116 = MEMORY[0x1E69E7CC0];
  (*(v97 + 16))(&v116, v42);
  if (v67)
  {

    (*(v98 + 56))(v48, 1, 1, v99);
    (*(v94 + 8))(v48, v95);
    if (v51)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v68 = v98;
  v69 = v99;
  (*(v98 + 56))(v48, 0, 1, v99);
  v70 = v93;
  (*(v68 + 32))(v93, v48, v69);
  v112 = v69;
  v71 = __swift_allocate_boxed_opaque_existential_0(v111);
  (*(v68 + 16))(v71, v70, v69);
  _expressionCompatibleValue(for:)(v111, &v113);
  v12 = 0;
  __swift_destroy_boxed_opaque_existential_1(v111);
  if (!*(&v114 + 1))
  {
    (*(v68 + 8))(v70, v69);
    outlined destroy of TermOfAddress?(&v113, &_sypSgMd, &_sypSgMR);
    if (v51)
    {
      goto LABEL_30;
    }

LABEL_29:
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v72 = 2;
LABEL_30:
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v35 + 4);
    goto LABEL_31;
  }

  v107 = 0;
  v96 = v35;
  outlined init with take of Any(&v113, &v116);
  v49 = v117;
  v81 = __swift_project_boxed_opaque_existential_1(&v116, v117);
  v119 = v92;
  v57 = *(v49 - 8);
  v82 = *(v57 + 64);
  v83 = MEMORY[0x1EEE9AC00](v81);
  v58 = ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = (v92 - v58);
  v52 = *(v57 + 16);
  (v52)(v92 - v58, v83);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
    goto LABEL_46;
  }

  if (v82 == 8)
  {
    v84 = *v56;
    v85 = *(v57 + 8);
    swift_unknownObjectRetain();
    v85(v92 - v58, v49);
LABEL_41:
    v86 = v98;
    v87 = v93;
    v73 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v116);
    (*(v86 + 8))(v87, v99);
    v80 = v96;
LABEL_42:
    v80[11] = v14;
    v80[8] = v73;
    v88 = String._bridgeToObjectiveCImpl()();
    v89 = _ContiguousArrayBuffer._asCocoaArray()();
    v12 = [objc_opt_self() expressionForFunction:v88 arguments:v89];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for ConvertibleExpression.convert(state:) in conformance <> PredicateExpressions.CollectionIndexSubscript<A, B>(uint64_t a1, void *a2)
{
  result = PredicateExpressions.CollectionIndexSubscript<>.convert(state:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t PredicateExpressions.DictionaryKeySubscript.convert(state:)(void *a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v6 = a2;
  v8 = *(a2 + 24);
  v91 = *(a2 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v90 = type metadata accessor for Optional();
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v92 = v81 - v10;
  v98 = AssociatedTypeWitness;
  v93 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v88 = v81 - v12;
  v97 = v8;
  v95 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v94 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v6 + 16);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_181215ED0;
  v20 = v5;
  (*(v16 + 16))(v19, v5, v15);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMR);
  v22 = swift_dynamicCast();
  v23 = MEMORY[0x1E69E7CC0];
  v96 = a1;
  if (v22)
  {
    outlined init with take of Equatable(&v102, &v105);
    v24 = v106;
    v25 = v107;
    __swift_project_boxed_opaque_existential_1(&v105, v106);
    v26 = (*(v25 + 16))(a1, v24, v25);
    if (!v3)
    {
      v32 = v26;
      v33 = v27;
      __swift_destroy_boxed_opaque_existential_1(&v105);
      if (v33)
      {
        LOBYTE(v105) = 1;
        v34 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v35 = objc_opt_self();
        v36 = [v35 expressionForConstantValue_];
        swift_unknownObjectRelease();
        LOBYTE(v105) = 0;
        v37 = [v35 expressionForConstantValue_];
        swift_unknownObjectRelease();
        v38 = [v35 expressionForConditional:v32 trueExpression:v36 falseExpression:v37];

        v32 = v38;
      }

      v29 = v99;
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_1(&v105);
    v4 = 0;
    v28 = v3;
    v23 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v104 = 0;
    v102 = 0u;
    v103 = 0u;
    outlined destroy of TermOfAddress?(&v102, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
    v28 = 0;
  }

  *&v105 = v23;
  (*(*(v6 + 40) + 16))(&v108, &v105, v15);
  if (v4)
  {

    v29 = v99;
LABEL_9:
    if (!v28)
    {
      lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
      swift_allocError();
      *v30 = 2;
    }

    swift_willThrow();
    goto LABEL_12;
  }

  v4 = v108;
  v29 = v99;
  if (!v108)
  {
    goto LABEL_9;
  }

  v101 = type metadata accessor for Dictionary();
  v100[0] = v4;

  _expressionCompatibleValue(for:)(v100, &v102);
  __swift_destroy_boxed_opaque_existential_1(v100);
  if (!*(&v103 + 1))
  {

    outlined destroy of TermOfAddress?(&v102, &_sypSgMd, &_sypSgMR);
    goto LABEL_9;
  }

  outlined init with take of Any(&v102, &v105);
  v45 = v106;
  v46 = __swift_project_boxed_opaque_existential_1(&v105, v106);
  v85 = v81;
  v47 = *(v45 - 1);
  v48 = *(v47 + 64);
  v49 = MEMORY[0x1EEE9AC00](v46);
  v83 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  v84 = v47;
  v51 = *(v47 + 16);
  v50 = (v47 + 16);
  v87 = (v81 - v83);
  v82 = v51;
  v51(v49);
  v86 = v45;
  result = _swift_isClassOrObjCExistentialType();
  if (result)
  {
    if (v48 != 8)
    {
      __break(1u);
LABEL_37:
      v95 = v81;
      v80 = MEMORY[0x1EEE9AC00](result);
      (v45)(v81 - v20, v50, v4, v80);
      v71 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      (*(v6 + 8))(v50, v4);
      goto LABEL_32;
    }

    v52 = v87;
    v53 = *(v84 + 8);
    v83 = *v87;
    swift_unknownObjectRetain();
    v53(v52, v86);
  }

  else
  {
    v81[1] = v81;
    v78 = MEMORY[0x1EEE9AC00](result);
    v79 = v86;
    (v82)(v81 - v83, v87, v86, v78);
    v83 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (*(v84 + 8))(v87, v79);
  }

  v29 = v99;
  v32 = [objc_opt_self() expressionForConstantValue_];

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v105);
LABEL_17:
  v40 = v96;
  v39 = v97;
  v41 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSExpression, off_1E69EE3D0);
  v29[7] = v41;
  v29[4] = v32;
  (v95[2])(v94, v20 + *(v6 + 68), v39);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(&v102, &v105);
    v42 = v106;
    v43 = v107;
    __swift_project_boxed_opaque_existential_1(&v105, v106);
    v59 = (*(v43 + 16))(v40, v42, v43);
    v61 = v60;
    __swift_destroy_boxed_opaque_existential_1(&v105);
    if (v61)
    {
      LOBYTE(v105) = 1;
      v62 = v41;
      v63 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v64 = objc_opt_self();
      v65 = [v64 expressionForConstantValue_];
      swift_unknownObjectRelease();
      LOBYTE(v105) = 0;
      v66 = [v64 expressionForConstantValue_];
      swift_unknownObjectRelease();
      v67 = [v64 expressionForConditional:v59 trueExpression:v65 falseExpression:v66];

      v41 = v62;
      v59 = v67;
    }

    goto LABEL_33;
  }

  v104 = 0;
  v102 = 0u;
  v103 = 0u;
  outlined destroy of TermOfAddress?(&v102, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
  v21 = 0;
  *&v105 = MEMORY[0x1E69E7CC0];
  v44 = v92;
  (*(v91 + 16))(&v105, v39);
  v97 = v41;
  v4 = 0;

  v54 = v93;
  v55 = v98;
  (*(v93 + 56))(v44, 0, 1, v98);
  v56 = v88;
  (*(v54 + 32))(v88, v44, v55);
  v101 = v55;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v100);
  (*(v54 + 16))(boxed_opaque_existential_0, v56, v55);
  _expressionCompatibleValue(for:)(v100, &v102);
  __swift_destroy_boxed_opaque_existential_1(v100);
  if (!*(&v103 + 1))
  {
    (*(v54 + 8))(v56, v55);
    outlined destroy of TermOfAddress?(&v102, &_sypSgMd, &_sypSgMR);
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v58 = 2;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v29 + 4);
LABEL_12:
    v29[2] = 0;

    return v4;
  }

  outlined init with take of Any(&v102, &v105);
  v4 = v106;
  v68 = __swift_project_boxed_opaque_existential_1(&v105, v106);
  v96 = v81;
  v6 = *(v4 - 1);
  v69 = *(v6 + 64);
  v70 = MEMORY[0x1EEE9AC00](v68);
  v20 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  v50 = (v81 - v20);
  v45 = *(v6 + 16);
  (v45)(v81 - v20, v70);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
    goto LABEL_37;
  }

  if (v69 == 8)
  {
    v71 = *v50;
    v72 = *(v6 + 8);
    swift_unknownObjectRetain();
    v72(v81 - v20, v4);
LABEL_32:
    v73 = v98;
    v29 = v99;
    v74 = v93;
    v75 = v88;
    v59 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v105);
    (*(v74 + 8))(v75, v73);
    v41 = v97;
LABEL_33:
    v29[11] = v41;
    v29[8] = v59;
    v76 = String._bridgeToObjectiveCImpl()();
    v77 = _ContiguousArrayBuffer._asCocoaArray()();
    v4 = [objc_opt_self() expressionForFunction:v76 arguments:v77];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.DictionaryKeySubscript<A, B, C>(void *a1, uint64_t a2)
{
  result = PredicateExpressions.DictionaryKeySubscript.convert(state:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

char *PredicateExpressions.CollectionContainsCollection<>.convert(state:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v112 = a1;
  v5 = a2[3];
  v102 = a2[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v99 = type metadata accessor for Optional();
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v103 = &v97 - v7;
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9);
  v97 = &v97 - v10;
  v11 = a2[4];
  v107 = a2;
  v12 = a2[2];
  v13 = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for Optional();
  v110 = *(v14 - 8);
  v111 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v97 - v15;
  v113 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v109 = &v97 - v18;
  v108 = v5;
  v106 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v105 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v25 + 16);
  v123 = v3;
  v26(v24, v3, v12, v22);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMR);
  v27 = swift_dynamicCast();
  v28 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    v100 = v8;
    v101 = AssociatedTypeWitness;
    outlined init with take of Equatable(&v117, &v120);
    v30 = v121;
    v29 = v122;
    __swift_project_boxed_opaque_existential_1(&v120, v121);
    v31 = v114;
    v32 = (*(v29 + 16))(v112, v30, v29);
    v34 = v31;
    if (!v31)
    {
      v42 = v32;
      v43 = v33;
      __swift_destroy_boxed_opaque_existential_1(&v120);
      v114 = 0;
      if (v43)
      {
        LOBYTE(v120) = 1;
        v44 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v45 = objc_opt_self();
        v46 = [v45 expressionForConstantValue_];
        swift_unknownObjectRelease();
        LOBYTE(v120) = 0;
        v47 = [v45 expressionForConstantValue_];
        swift_unknownObjectRelease();
        v48 = [v45 expressionForConditional:v42 trueExpression:v46 falseExpression:v47];

        v111 = v48;
      }

      else
      {
        v111 = v42;
      }

      v62 = v101;
      v63 = v100;
      goto LABEL_21;
    }

    __swift_destroy_boxed_opaque_existential_1(&v120);
    v35 = 0;
    v36 = v34;
    AssociatedTypeWitness = v101;
    v8 = v100;
    v28 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v119 = 0;
    v117 = 0u;
    v118 = 0u;
    outlined destroy of TermOfAddress?(&v117, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
    v36 = 0;
    v35 = v114;
  }

  *&v120 = v28;
  v37 = v123;
  (*(v11 + 16))(&v120, v12, v11);
  if (v35)
  {

    (*(v113 + 56))(v16, 1, 1, v13);
    (v110)[1](v16, v111);
    if (v36)
    {
LABEL_8:
      swift_willThrow();
      return v37;
    }

LABEL_7:
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v38 = 2;
    goto LABEL_8;
  }

  v39 = v113;
  (*(v113 + 56))(v16, 0, 1, v13);
  v40 = v109;
  (*(v39 + 32))(v109, v16, v13);
  v116 = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v115);
  (*(v39 + 16))(boxed_opaque_existential_0, v40, v13);
  _expressionCompatibleValue(for:)(v115, &v117);
  v114 = 0;
  __swift_destroy_boxed_opaque_existential_1(v115);
  if (!*(&v118 + 1))
  {
    v87 = *(v39 + 8);
    v37 = (v39 + 8);
    v87(v40, v13);
    outlined destroy of TermOfAddress?(&v117, &_sypSgMd, &_sypSgMR);
    if (v36)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v110 = v36;
  v100 = v8;
  v101 = AssociatedTypeWitness;
  outlined init with take of Any(&v117, &v120);
  v49 = v121;
  v50 = __swift_project_boxed_opaque_existential_1(&v120, v121);
  v51 = &v97;
  v52 = *(v49 - 8);
  v53 = v52[8];
  v54 = MEMORY[0x1EEE9AC00](v50);
  v55 = ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = (&v97 - v55);
  v57 = (v52 + 2);
  v58 = v52[2];
  v58(&v97 - v55, v54);
  result = _swift_isClassOrObjCExistentialType();
  if (result)
  {
    if (v53 != 8)
    {
      __break(1u);
LABEL_46:
      v96 = MEMORY[0x1EEE9AC00](result);
      (v53)(&v97 - v57, v56, v49, v96);
      v91 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      (v51[1])(v56, v49);
      goto LABEL_41;
    }

    v60 = *v56;
    v61 = v52[1];
    swift_unknownObjectRetain();
    v61(&v97 - v55, v49);
  }

  else
  {
    v111 = &v97;
    v95 = MEMORY[0x1EEE9AC00](result);
    (v58)(&v97 - v55, v56, v49, v95);
    v60 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (v52[1])(v56, v49);
  }

  v62 = v101;
  v63 = v100;
  v111 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();

  (*(v113 + 8))(v109, v13);
  __swift_destroy_boxed_opaque_existential_1(&v120);
LABEL_21:
  v64 = v123;
  v65 = v108;
  v66 = MEMORY[0x1E69E7CC0];
  v67 = *(v107 + 19);
  (*(v106 + 16))(v105, v123 + v67, v108);
  if (swift_dynamicCast())
  {
    v68 = v66;
    outlined init with take of Equatable(&v117, &v120);
    v69 = v121;
    v70 = v122;
    __swift_project_boxed_opaque_existential_1(&v120, v121);
    v71 = v114;
    v72 = (*(v70 + 16))(v112, v69, v70);
    v55 = v71;
    if (!v71)
    {
      v79 = v72;
      v80 = v73;
      __swift_destroy_boxed_opaque_existential_1(&v120);
      if (v80)
      {
        LOBYTE(v120) = 1;
        v81 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v82 = objc_opt_self();
        v83 = [v82 expressionForConstantValue_];
        swift_unknownObjectRelease();
        LOBYTE(v120) = 0;
        v84 = [v82 expressionForConstantValue_];
        swift_unknownObjectRelease();
        v85 = [v82 expressionForConditional:v79 trueExpression:v83 falseExpression:v84];

        v79 = v85;
      }

      v86 = v111;
      goto LABEL_42;
    }

    __swift_destroy_boxed_opaque_existential_1(&v120);
    v74 = 0;
    v66 = v68;
  }

  else
  {
    v119 = 0;
    v117 = 0u;
    v118 = 0u;
    outlined destroy of TermOfAddress?(&v117, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMR);
    v55 = 0;
    v74 = v114;
  }

  *&v120 = v66;
  v37 = v64 + v67;
  v75 = v103;
  (*(v102 + 16))(&v120, v65);
  if (v74)
  {

    (*(v63 + 56))(v75, 1, 1, v62);
    (*(v98 + 8))(v75, v99);
    v76 = v111;
    if (v55)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  (*(v63 + 56))(v75, 0, 1, v62);
  v37 = v97;
  (*(v63 + 32))(v97, v75, v62);
  v116 = v62;
  v77 = __swift_allocate_boxed_opaque_existential_0(v115);
  (*(v63 + 16))(v77, v37, v62);
  _expressionCompatibleValue(for:)(v115, &v117);
  v110 = 0;
  __swift_destroy_boxed_opaque_existential_1(v115);
  if (!*(&v118 + 1))
  {
    (*(v63 + 8))(v37, v62);
    outlined destroy of TermOfAddress?(&v117, &_sypSgMd, &_sypSgMR);
    v76 = v111;
    if (v55)
    {
      goto LABEL_31;
    }

LABEL_30:
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v78 = 2;
LABEL_31:
    swift_willThrow();

    return v37;
  }

  v100 = v63;
  v101 = v62;
  outlined init with take of Any(&v117, &v120);
  v49 = v121;
  v88 = __swift_project_boxed_opaque_existential_1(&v120, v121);
  v123 = &v97;
  v51 = *(v49 - 8);
  v89 = v51[8];
  v90 = MEMORY[0x1EEE9AC00](v88);
  v57 = (v89 + 15) & 0xFFFFFFFFFFFFFFF0;
  v56 = &v97 - v57;
  v53 = v51[2];
  (v53)(&v97 - v57, v90);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
    goto LABEL_46;
  }

  if (v89 == 8)
  {
    v91 = *v56;
    v92 = v51[1];
    swift_unknownObjectRetain();
    (v92)(&v97 - v57, v49);
LABEL_41:
    v93 = v101;
    v94 = v100;
    v86 = v111;
    v79 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();

    (*(v94 + 8))(v97, v93);
    __swift_destroy_boxed_opaque_existential_1(&v120);
LABEL_42:
    v37 = [objc_allocWithZone(NSComparisonPredicate) initWithLeftExpression:v86 rightExpression:v79 modifier:0 type:99 options:0];

    return v37;
  }

  __break(1u);
  return result;
}