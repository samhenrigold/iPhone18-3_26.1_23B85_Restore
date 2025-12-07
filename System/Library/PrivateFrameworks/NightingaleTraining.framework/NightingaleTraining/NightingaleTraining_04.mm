NightingaleTraining::PerSliceMetrics __swiftcall PerSliceMetrics.init(abserr:coverage:width:uxOverall:)(Swift::Int abserr, Swift::Bool coverage, Swift::Int width, Swift::Int uxOverall)
{
  v4 = coverage;
  result.uxOverall = uxOverall;
  result.width = width;
  result.abserr = abserr;
  result.coverage = v4;
  return result;
}

uint64_t EvalMetricsProcessor.process(labels:outputs:modelMaxNumDaysToNextPeriod:labelEncodingType:intervalCorrectionFactor:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  v30 = *a2;

  v31 = MEMORY[0x25F8895B0](v30, MEMORY[0x277D83A90]);

  v33 = *a1;

  v34 = MEMORY[0x25F8895B0](v33, MEMORY[0x277D84CC0]);

  if (!v34)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Division by zero", 16, 2, "Swift/IntegerTypes.swift", 24, 2, 9012, 0);
    __break(1u);
  }

  if (v31 == 0x8000000000000000 && v34 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Division results in an overflow", 31, 2, "Swift/IntegerTypes.swift", 24, 2, 9019, 0);
    __break(1u);
  }

  v20 = v31 / v34;
  v6 = HyperParams.labelEncodingTypeRegression.unsafeMutableAddressor();
  v21 = *v6;
  v22 = *(v6 + 1);

  v23 = MEMORY[0x25F889340](a4, a5, v21, v22);

  if ((v23 & 1) != 0 && v20 == 2)
  {
    v17 = *a1;

    v18 = MEMORY[0x25F8895B0](v17, MEMORY[0x277D84CC0]);

    return EvalMetricsProcessor.processModelOutput2(numLabels:outputs:modelMaxNumDaysToNextPeriod:)(v18, a2, a3);
  }

  v7 = HyperParams.labelEncodingTypeOnehot.unsafeMutableAddressor();
  v14 = *v7;
  v15 = *(v7 + 1);

  v16 = MEMORY[0x25F889340](a4, a5, v14, v15);

  if ((v16 & 1) != 0 && v20 == 32)
  {
    v12 = *a1;

    v13 = MEMORY[0x25F8895B0](v12, MEMORY[0x277D84CC0]);

    EvalMetricsProcessor.processModelOutput32(numLabels:outputs:modelMaxNumDaysToNextPeriod:intervalCorrectionFactor:minLowRangeStart:)(v13, a2, a3, a6, 1.0);
    if (!v29)
    {
      return v8;
    }
  }

  else
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    swift_allocError();
    *v9 = 27;
    swift_willThrow();
  }

  return v11;
}

uint64_t EvalMetricsProcessor.processModelOutput2(numLabels:outputs:modelMaxNumDaysToNextPeriod:)(uint64_t a1, void *a2, float a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf12darkRedStart_Sf08lowRangeC0Sf0dE3EndtMd, &_sSf12darkRedStart_Sf08lowRangeC0Sf0dE3EndtMR);
  v8 = Array.init()();
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  Collection<>.makeIterator()();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd, &_ss16IndexingIteratorVySnySiGGMR);
    result = IndexingIterator.next()();
    if (v7)
    {

      outlined destroy of [(start: UInt32, end: UInt32)]();
      return v8;
    }

    if ((2 * v6) >> 64 != (2 * v6) >> 63)
    {
      break;
    }

    if (__OFADD__(1, 2 * v6))
    {
      goto LABEL_14;
    }

    result = Array.subscript.getter();
    if ((2 * v6) >> 64 != (2 * v6) >> 63)
    {
      goto LABEL_15;
    }

    Array.subscript.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySf12darkRedStart_Sf08lowRangeC0Sf0dE3EndtGMd, &_sSaySf12darkRedStart_Sf08lowRangeC0Sf0dE3EndtGMR);
    Array.append(_:)();
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void EvalMetricsProcessor.processModelOutput32(numLabels:outputs:modelMaxNumDaysToNextPeriod:intervalCorrectionFactor:minLowRangeStart:)(uint64_t a1, uint64_t *a2, float a3, float a4, float a5)
{
  v152 = &v182;
  v153 = a1;
  v135 = a2;
  v132 = a3;
  v133 = a4;
  v134 = a5;
  v125 = "Fatal error";
  v126 = "Range requires lowerBound <= upperBound";
  v127 = "Swift/Range.swift";
  v128 = "Float value cannot be converted to Int because it is either infinite or NaN";
  v129 = "Swift/IntegerTypes.swift";
  v130 = "Float value cannot be converted to Int because the result would be less than Int.min";
  v131 = "Float value cannot be converted to Int because the result would be greater than Int.max";
  v194 = 0;
  v193 = 0;
  v192 = 0;
  v191 = 0;
  v190 = 0;
  v189 = 0;
  v186 = 0;
  v187 = 0;
  v188 = 0;
  v184[1] = 0;
  v184[0] = 0;
  v182 = 0;
  v180 = 0.0;
  v178 = 0.0;
  v176 = 0.0;
  v174 = 0.0;
  v172 = 0;
  v171 = 0;
  v170 = 0;
  v169 = 0;
  v168 = 0;
  v167 = 0;
  v166 = 0.0;
  v165 = 0;
  v164 = 0;
  v161 = 0.0;
  v160 = 0.0;
  v159 = 0.0;
  v158 = 0;
  v157 = 0.0;
  v156 = 0.0;
  v155 = 0.0;
  v136 = type metadata accessor for FloatingPointRoundingRule();
  v137 = *(v136 - 8);
  v138 = v136 - 8;
  v148 = *(v137 + 64);
  v139 = (v148 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v153, v135);
  v140 = v45 - v139;
  v141 = v139;
  v7 = MEMORY[0x28223BE20](v5, v6);
  v142 = v45 - v141;
  v143 = (v148 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v7, v8);
  v144 = v45 - v143;
  v145 = (v148 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](v9, v10);
  v146 = v45 - v145;
  v147 = (v148 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x28223BE20](v11, v12);
  v149 = v45 - v147;
  v150 = (v148 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x28223BE20](v13, v14);
  v151 = v45 - v150;
  *(v16 + 152) = v15;
  *(v16 + 144) = v17;
  v192 = v18;
  v191 = v19;
  v190 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf12darkRedStart_Sf08lowRangeC0Sf0dE3EndtMd, &_sSf12darkRedStart_Sf08lowRangeC0Sf0dE3EndtMR);
  v21 = Array.init()();
  v22 = v153;
  v152[14] = v21;
  if (v22 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)(v125, 11, 2, v126, 39, 2, v127, 17, 2, 760, 0);
    __break(1u);
  }

  v23 = v153;
  v24 = v152;
  v152[9] = 0;
  v24[10] = v23;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  Collection<>.makeIterator()();
  for (i = v124; ; i = v111)
  {
    v120 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd, &_ss16IndexingIteratorVySnySiGGMR);
    IndexingIterator.next()();
    v121 = v152[7];
    if (v185)
    {
      v45[2] = &v189;
      v45[3] = v152[14];

      outlined destroy of [(start: UInt32, end: UInt32)]();
      return;
    }

    v119 = v121;
    v25 = v121;
    v117 = v121;
    v152[6] = v121;
    v118 = 32 * v25;
    if ((v25 * 32) >> 64 != (32 * v25) >> 63)
    {
      break;
    }

    v116 = v117 + 1;
    if (__OFADD__(v117, 1))
    {
      goto LABEL_141;
    }

    v115 = 32 * v116;
    if ((v116 * 32) >> 64 != (32 * v116) >> 63)
    {
      goto LABEL_142;
    }

    if (v115 < v118)
    {
      _assertionFailure(_:_:file:line:flags:)(v125, 11, 2, v126, 39, 2, v127, 17, 2, 760, 0);
      __break(1u);
    }

    v108 = MEMORY[0x277D83A90];
    v27 = Array.subscript.getter();
    v28 = v152;
    v107 = &v183;
    v152[1] = v27;
    v28[2] = v29;
    v28[3] = v30;
    v28[4] = v31;
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySfGMd, &_ss10ArraySliceVySfGMR);
    lazy protocol witness table accessor for type ArraySlice<Float> and conformance ArraySlice<A>();
    v32 = Array.init<A>(_:)();
    v109 = v184;
    v152[5] = v32;
    _allocateUninitializedArray<A>(_:)();
    *v33 = 1036831949;
    v33[1] = 1045220557;
    v33[2] = 1061997773;
    v33[3] = 1063675494;
    _finalizeUninitializedArray<A>(_:)();
    v34 = v120;
    v110 = v35;
    v36 = static EvalMetricsProcessor.argQuantile(softmax:quantiles:)(v109, v35);
    v111 = v34;
    v112 = v36;
    v113 = v110;
    v114 = v34;
    if (v34)
    {
      v45[1] = v114;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      return;
    }

    v92 = v112;

    *v152 = v92;
    v93 = MEMORY[0x277D83A90];
    Array.subscript.getter();
    v91 = v181;
    v180 = v181;
    Array.subscript.getter();
    v95 = v179;
    v178 = v179;
    Array.subscript.getter();
    v94 = v177;
    v176 = v177;
    Array.subscript.getter();
    v96 = v175;
    v174 = v175;
    v99 = (v95 + v94) / 2.0;
    v104 = MEMORY[0x277D84678];
    v37 = *MEMORY[0x277D84678];
    v97 = *(v137 + 104);
    v98 = v137 + 104;
    v97(v151, v37, v136);
    v173 = v99;
    v100 = *(v137 + 16);
    v101 = v137 + 16;
    v100(v149, v151, v136);
    v102 = *(v137 + 88);
    v103 = v137 + 88;
    v105 = v102(v149, v136);
    if (v105 == *v104)
    {
      v173 = roundf(v99);
    }

    else if (v105 == *MEMORY[0x277D84670])
    {
      v173 = rintf(v99);
    }

    else
    {
      if (v105 == *MEMORY[0x277D84680])
      {
        goto LABEL_25;
      }

      if (v105 == *MEMORY[0x277D84688])
      {
        goto LABEL_27;
      }

      if (v105 == *MEMORY[0x277D84660])
      {
        v173 = truncf(v99);
      }

      else
      {
        if (v105 == *MEMORY[0x277D84668])
        {
          if ((Float.sign.getter() & 1) == 1)
          {
LABEL_27:
            v173 = floorf(v99);
            goto LABEL_28;
          }

LABEL_25:
          v173 = ceilf(v99);
          goto LABEL_28;
        }

        Float._roundSlowPath(_:)();
        (*(v137 + 8))(v149, v136);
      }
    }

LABEL_28:
    v88 = *(v137 + 8);
    v89 = v137 + 8;
    v88(v151, v136);
    v90 = v173;
    if ((LODWORD(v173) >> 23) == 255)
    {
      _assertionFailure(_:_:file:line:flags:)(v125, 11, 2, v128, 75, 2, v129, 24, 2, 8763, 0);
      __break(1u);
    }

    if (v90 <= -9.2234e18)
    {
      _assertionFailure(_:_:file:line:flags:)(v125, 11, 2, v130, 84, 2, v129, 24, 2, 8766, 0);
      __break(1u);
    }

    if (v90 >= 9.2234e18)
    {
      _assertionFailure(_:_:file:line:flags:)(v125, 11, 2, v131, 87, 2, v129, 24, 2, 8769, 0);
      __break(1u);
    }

    v87 = v90;
    v172 = v90;
    if ((LODWORD(v91) >> 23) == 255)
    {
      _assertionFailure(_:_:file:line:flags:)(v125, 11, 2, v128, 75, 2, v129, 24, 2, 8763, 0);
      __break(1u);
    }

    if (v91 <= -9.2234e18)
    {
      _assertionFailure(_:_:file:line:flags:)(v125, 11, 2, v130, 84, 2, v129, 24, 2, 8766, 0);
      __break(1u);
    }

    if (v91 >= 9.2234e18)
    {
      _assertionFailure(_:_:file:line:flags:)(v125, 11, 2, v131, 87, 2, v129, 24, 2, 8769, 0);
      __break(1u);
    }

    v86 = v91;
    v171 = v91;
    if ((LODWORD(v96) >> 23) == 255)
    {
      _assertionFailure(_:_:file:line:flags:)(v125, 11, 2, v128, 75, 2, v129, 24, 2, 8763, 0);
      __break(1u);
    }

    if (v96 <= -9.2234e18)
    {
      _assertionFailure(_:_:file:line:flags:)(v125, 11, 2, v130, 84, 2, v129, 24, 2, 8766, 0);
      __break(1u);
    }

    if (v96 >= 9.2234e18)
    {
      _assertionFailure(_:_:file:line:flags:)(v125, 11, 2, v131, 87, 2, v129, 24, 2, 8769, 0);
      __break(1u);
    }

    v84 = v96;
    v170 = v96;
    v85 = v87 - v86;
    if (__OFSUB__(v87, v86))
    {
      goto LABEL_143;
    }

    v169 = v85;
    v83 = v84 - v87;
    if (__OFSUB__(v84, v87))
    {
      goto LABEL_144;
    }

    v168 = v83;
    v82 = v84 - v86;
    if (__OFSUB__(v84, v86))
    {
      goto LABEL_145;
    }

    v167 = v82;
    v81 = v82 * v133;
    v166 = v81;
    v165 = 0;
    v164 = 0;
    if (!v82)
    {
      v165 = v85;
      v164 = v83;
      v79 = v83;
      v80 = v85;
      goto LABEL_104;
    }

    v76 = v81 * (v85 / v82);
    v77 = MEMORY[0x277D84678];
    v97(v146, *MEMORY[0x277D84678], v136);
    v163 = v76;
    v100(v144, v146, v136);
    v78 = v102(v144, v136);
    if (v78 == *v77)
    {
      v163 = roundf(v76);
      goto LABEL_75;
    }

    if (v78 == *MEMORY[0x277D84670])
    {
      v163 = rintf(v76);
      goto LABEL_75;
    }

    if (v78 == *MEMORY[0x277D84680])
    {
      goto LABEL_72;
    }

    if (v78 == *MEMORY[0x277D84688])
    {
      goto LABEL_74;
    }

    if (v78 == *MEMORY[0x277D84660])
    {
      v163 = truncf(v76);
      goto LABEL_75;
    }

    if (v78 != *MEMORY[0x277D84668])
    {
      Float._roundSlowPath(_:)();
      v88(v144, v136);
      goto LABEL_75;
    }

    if ((Float.sign.getter() & 1) == 1)
    {
LABEL_74:
      v163 = floorf(v76);
    }

    else
    {
LABEL_72:
      v163 = ceilf(v76);
    }

LABEL_75:
    v88(v146, v136);
    v75 = v163;
    if ((LODWORD(v163) >> 23) == 255)
    {
      _assertionFailure(_:_:file:line:flags:)(v125, 11, 2, v128, 75, 2, v129, 24, 2, 8763, 0);
      __break(1u);
    }

    if (v75 <= -9.2234e18)
    {
      _assertionFailure(_:_:file:line:flags:)(v125, 11, 2, v130, 84, 2, v129, 24, 2, 8766, 0);
      __break(1u);
    }

    if (v75 >= 9.2234e18)
    {
      _assertionFailure(_:_:file:line:flags:)(v125, 11, 2, v131, 87, 2, v129, 24, 2, 8769, 0);
      __break(1u);
    }

    v71 = v75;
    v165 = v75;
    v72 = v81 * (v83 / v82);
    v73 = MEMORY[0x277D84678];
    v97(v142, *MEMORY[0x277D84678], v136);
    v162 = v72;
    v100(v140, v142, v136);
    v74 = v102(v140, v136);
    if (v74 == *v73)
    {
      v162 = roundf(v72);
    }

    else if (v74 == *MEMORY[0x277D84670])
    {
      v162 = rintf(v72);
    }

    else
    {
      if (v74 == *MEMORY[0x277D84680])
      {
        goto LABEL_93;
      }

      if (v74 == *MEMORY[0x277D84688])
      {
        goto LABEL_95;
      }

      if (v74 == *MEMORY[0x277D84660])
      {
        v162 = truncf(v72);
      }

      else
      {
        if (v74 == *MEMORY[0x277D84668])
        {
          if ((Float.sign.getter() & 1) == 1)
          {
LABEL_95:
            v162 = floorf(v72);
            goto LABEL_96;
          }

LABEL_93:
          v162 = ceilf(v72);
          goto LABEL_96;
        }

        Float._roundSlowPath(_:)();
        v88(v140, v136);
      }
    }

LABEL_96:
    v88(v142, v136);
    v70 = v162;
    if ((LODWORD(v162) >> 23) == 255)
    {
      _assertionFailure(_:_:file:line:flags:)(v125, 11, 2, v128, 75, 2, v129, 24, 2, 8763, 0);
      __break(1u);
    }

    if (v70 <= -9.2234e18)
    {
      _assertionFailure(_:_:file:line:flags:)(v125, 11, 2, v130, 84, 2, v129, 24, 2, 8766, 0);
      __break(1u);
    }

    if (v70 >= 9.2234e18)
    {
      _assertionFailure(_:_:file:line:flags:)(v125, 11, 2, v131, 87, 2, v129, 24, 2, 8769, 0);
      __break(1u);
    }

    v164 = v70;
    v79 = v70;
    v80 = v71;
LABEL_104:
    v67 = v80;
    v68 = v79;
    v69 = v87 - v80;
    if (__OFSUB__(v87, v80))
    {
      goto LABEL_146;
    }

    v65 = v69;
    v161 = v69;
    v66 = v87 + v68;
    if (__OFADD__(v87, v68))
    {
      goto LABEL_147;
    }

    v63 = v66;
    v160 = v66;
    v64 = Float.init(_:)((v66 - v65) + 1.0);
    v159 = v64;
    v158 = 0;
    if (v67 <= 6)
    {
      v60 = v67;
      v61 = 0;
      v62 = v64;
    }

    else
    {
      if (v64 <= 13.0)
      {
        v60 = v67;
        v61 = 0;
      }

      else
      {
        v165 = 6;
        v158 = 1;
        v60 = 6;
        v61 = 1;
      }

      v62 = v64;
    }

    v57 = v62;
    v58 = v61;
    v59 = v60;
    if (v68 <= 6)
    {
      v55 = v68;
      v56 = v58;
    }

    else if (v57 <= 13.0)
    {
      v55 = v68;
      v56 = v58;
    }

    else
    {
      v164 = 6;
      v158 = 1;
      v55 = 6;
      v56 = 1;
    }

    v54 = v55;
    if (v56)
    {
      v53 = v87 - v59;
      if (__OFSUB__(v87, v59))
      {
        goto LABEL_148;
      }

      v51 = v53;
      v161 = v53;
      v52 = v87 + v54;
      if (__OFADD__(v87, v54))
      {
        goto LABEL_149;
      }

      v160 = v52;
      v159 = (v52 - v51) + 1.0;
      v49 = v52;
      v50 = v51;
    }

    else
    {
      v49 = v63;
      v50 = v65;
    }

    v47 = v50;
    v48 = v49;
    if (v50 >= v134)
    {
      v46 = v47;
    }

    else
    {
      v161 = v134;
      v46 = v134;
    }

    v157 = v87 - 1.0;
    v156 = v46;
    v155 = v48;
    v45[4] = v154;
    v154[0] = v157;
    v154[1] = v46;
    v154[2] = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySf12darkRedStart_Sf08lowRangeC0Sf0dE3EndtGMd, &_sSaySf12darkRedStart_Sf08lowRangeC0Sf0dE3EndtGMR);
    Array.append(_:)();

    outlined destroy of [(start: UInt32, end: UInt32)]();
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
}

void __swiftcall EvalMetricsProcessor.calculateMetrics(labels:outputs:)(Swift::tuple_perSliceMetrics_OpaquePointer_aggMetrics_NightingaleTraining_AggMetrics *__return_ptr retstr, Swift::OpaquePointer *labels, Swift::OpaquePointer outputs)
{
  v31 = 0;
  v33[25] = labels;
  v33[24] = outputs._rawValue;
  rawValue = labels->_rawValue;

  v33[21] = rawValue;
  v33[20] = outputs._rawValue;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd, &_sSays6UInt32VGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySf12darkRedStart_Sf08lowRangeC0Sf0dE3EndtGMd, &_sSaySf12darkRedStart_Sf08lowRangeC0Sf0dE3EndtGMR);
  lazy protocol witness table accessor for type [UInt32] and conformance [A]();
  lazy protocol witness table accessor for type [(darkRedStart: Float, lowRangeStart: Float, lowRangeEnd: Float)] and conformance [A]();
  zip<A, B>(_:_:)();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v33[18] = v33[22];
  v33[19] = v33[23];
  v29 = partial apply for closure #1 in EvalMetricsProcessor.calculateMetrics(labels:outputs:);
  v30 = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12Zip2SequenceVySays6UInt32VGSaySf12darkRedStart_Sf08lowRangeF0Sf0gH3EndtGGMd, &_ss12Zip2SequenceVySays6UInt32VGSaySf12darkRedStart_Sf08lowRangeF0Sf0gH3EndtGGMR);
  v3 = lazy protocol witness table accessor for type Zip2Sequence<[UInt32], [(darkRedStart: Float, lowRangeStart: Float, lowRangeEnd: Float)]> and conformance Zip2Sequence<A, B>();
  from = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned UInt32, @unowned Float, @unowned Float, @unowned Float) -> (@unowned PerSliceMetrics), v28, v26, &type metadata for PerSliceMetrics, MEMORY[0x277D84A98], v3, MEMORY[0x277D84AC0], v27);
  outlined destroy of Zip2Sequence<[Float], [Float]>();
  v31 = from;

  AggMetrics.init(from:)(&v34, from);
  memcpy(__dst, &v34, sizeof(__dst));
  memcpy(v33, __dst, 0x90uLL);
  v4 = *v33;
  v5 = v33[1];
  v6 = *&v33[2];
  v7 = v33[3];
  v8 = v33[4];
  v9 = *&v33[5];
  v10 = v33[6];
  v11 = v33[7];
  v12 = *&v33[8];
  v13 = v33[9];
  v14 = v33[10];
  v15 = *&v33[11];
  v16 = v33[12];
  v17 = *&v33[13];
  v18 = v33[14];
  v19 = *&v33[15];
  v20 = v33[16];
  v21 = v33[17];
  retstr->perSliceMetrics._rawValue = from;
  retstr->aggMetrics.ep3 = v4;
  retstr->aggMetrics.ep3Num = v5;
  retstr->aggMetrics.nep6 = v6;
  retstr->aggMetrics.nep6Num = v7;
  *&retstr->aggMetrics.mae = v8;
  retstr->aggMetrics.coverage = v9;
  retstr->aggMetrics.coverageNum = v10;
  *&retstr->aggMetrics.meanWidth = v11;
  retstr->aggMetrics.uxWidthTolerable = v12;
  retstr->aggMetrics.uxWidthTolerableNum = v13;
  *&retstr->aggMetrics.uxOverallMean = v14;
  retstr->aggMetrics.uxOverallGood = v15;
  retstr->aggMetrics.uxOverallGoodNum = v16;
  retstr->aggMetrics.uxOverallOk = v17;
  retstr->aggMetrics.uxOverallOkNum = v18;
  retstr->aggMetrics.uxOverallTolerable = v19;
  retstr->aggMetrics.uxOverallTolerableNum = v20;
  retstr->aggMetrics.nSlices = v21;
}

uint64_t closure #1 in EvalMetricsProcessor.calculateMetrics(labels:outputs:)(unsigned int a1, float a2, float a3, float a4)
{
  v55 = a1;
  v59 = a2;
  v42 = a3;
  v43 = a4;
  v37 = "Fatal error";
  v38 = "Float value cannot be converted to Int because it is either infinite or NaN";
  v39 = "Swift/IntegerTypes.swift";
  v40 = "Float value cannot be converted to Int because the result would be less than Int.min";
  v41 = "Float value cannot be converted to Int because the result would be greater than Int.max";
  v87 = 0;
  v85 = 0;
  v86 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v79 = 0;
  v77 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v65 = type metadata accessor for FloatingPointRoundingRule();
  v63 = *(v65 - 8);
  v64 = v65 - 8;
  v53 = *(v63 + 64);
  v44 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v65, v4);
  v45 = &v18 - v44;
  v46 = v44;
  MEMORY[0x28223BE20](&v18 - v44, v5);
  v47 = &v18 - v46;
  v48 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v18 - v46, v6);
  v49 = &v18 - v48;
  v50 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v18 - v48, v7);
  v51 = &v18 - v50;
  v52 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v18 - v50, v8);
  v66 = &v18 - v52;
  v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v18 - v52, v9);
  v60 = &v18 - v54;
  v87 = v55;
  v85 = __PAIR64__(v11, v10);
  v86 = v12;
  v56 = v55;
  v84 = v55;
  v83 = v10;
  v82 = v11;
  v81 = v12;
  v69 = MEMORY[0x277D84678];
  v57 = *(v63 + 104);
  v58 = v63 + 104;
  v57();
  v80 = v59;
  v61 = *(v63 + 16);
  v62 = v63 + 16;
  v61(v66, v60, v65);
  v67 = *(v63 + 88);
  v68 = v63 + 88;
  v70 = v67(v66, v65);
  if (v70 == *v69)
  {
    v80 = roundf(v59);
    goto LABEL_15;
  }

  if (v70 == *MEMORY[0x277D84670])
  {
    v80 = rintf(v59);
    goto LABEL_15;
  }

  if (v70 == *MEMORY[0x277D84680])
  {
    goto LABEL_12;
  }

  if (v70 == *MEMORY[0x277D84688])
  {
    goto LABEL_14;
  }

  if (v70 == *MEMORY[0x277D84660])
  {
    v80 = truncf(v59);
    goto LABEL_15;
  }

  if (v70 != *MEMORY[0x277D84668])
  {
    Float._roundSlowPath(_:)();
    (*(v63 + 8))(v66, v65);
    goto LABEL_15;
  }

  if ((Float.sign.getter() & 1) == 1)
  {
LABEL_14:
    v80 = floorf(v59);
  }

  else
  {
LABEL_12:
    v80 = ceilf(v59);
  }

LABEL_15:
  v34 = *(v63 + 8);
  v35 = v63 + 8;
  v34(v60, v65);
  v36 = v80;
  if ((LODWORD(v80) >> 23) == 255)
  {
    _assertionFailure(_:_:file:line:flags:)(v37, 11, 2, v38, 75, 2, v39, 24, 2, 8763, 0);
    __break(1u);
  }

  if (v36 <= -9.2234e18)
  {
    _assertionFailure(_:_:file:line:flags:)(v37, 11, 2, v40, 84, 2, v39, 24, 2, 8766, 0);
    __break(1u);
  }

  if (v36 >= 9.2234e18)
  {
    _assertionFailure(_:_:file:line:flags:)(v37, 11, 2, v41, 87, 2, v39, 24, 2, 8769, 0);
    __break(1u);
  }

  v31 = v36;
  v79 = v36;
  v32 = MEMORY[0x277D84678];
  (v57)(v51, *MEMORY[0x277D84678], v65);
  v78 = v42;
  v61(v49, v51, v65);
  v33 = v67(v49, v65);
  if (v33 == *v32)
  {
    v78 = roundf(v42);
    goto LABEL_36;
  }

  if (v33 == *MEMORY[0x277D84670])
  {
    v78 = rintf(v42);
    goto LABEL_36;
  }

  if (v33 == *MEMORY[0x277D84680])
  {
LABEL_33:
    v78 = ceilf(v42);
    goto LABEL_36;
  }

  if (v33 == *MEMORY[0x277D84688])
  {
LABEL_35:
    v78 = floorf(v42);
    goto LABEL_36;
  }

  if (v33 == *MEMORY[0x277D84660])
  {
    v78 = truncf(v42);
    goto LABEL_36;
  }

  if (v33 == *MEMORY[0x277D84668])
  {
    if ((Float.sign.getter() & 1) != 1)
    {
      goto LABEL_33;
    }

    goto LABEL_35;
  }

  Float._roundSlowPath(_:)();
  v34(v49, v65);
LABEL_36:
  v34(v51, v65);
  v30 = v78;
  if ((LODWORD(v78) >> 23) == 255)
  {
    _assertionFailure(_:_:file:line:flags:)(v37, 11, 2, v38, 75, 2, v39, 24, 2, 8763, 0);
    __break(1u);
  }

  if (v30 <= -9.2234e18)
  {
    _assertionFailure(_:_:file:line:flags:)(v37, 11, 2, v40, 84, 2, v39, 24, 2, 8766, 0);
    __break(1u);
  }

  if (v30 >= 9.2234e18)
  {
    _assertionFailure(_:_:file:line:flags:)(v37, 11, 2, v41, 87, 2, v39, 24, 2, 8769, 0);
    __break(1u);
  }

  v27 = v30;
  v77 = v30;
  v28 = MEMORY[0x277D84678];
  (v57)(v47, *MEMORY[0x277D84678], v65);
  v76 = v43;
  v61(v45, v47, v65);
  v29 = v67(v45, v65);
  if (v29 == *v28)
  {
    v76 = roundf(v43);
    goto LABEL_57;
  }

  if (v29 == *MEMORY[0x277D84670])
  {
    v76 = rintf(v43);
    goto LABEL_57;
  }

  if (v29 == *MEMORY[0x277D84680])
  {
    goto LABEL_54;
  }

  if (v29 == *MEMORY[0x277D84688])
  {
    goto LABEL_56;
  }

  if (v29 == *MEMORY[0x277D84660])
  {
    v76 = truncf(v43);
    goto LABEL_57;
  }

  if (v29 != *MEMORY[0x277D84668])
  {
    Float._roundSlowPath(_:)();
    v34(v45, v65);
    goto LABEL_57;
  }

  if ((Float.sign.getter() & 1) == 1)
  {
LABEL_56:
    v76 = floorf(v43);
  }

  else
  {
LABEL_54:
    v76 = ceilf(v43);
  }

LABEL_57:
  result = (v34)(v47, v65);
  v26 = v76;
  if ((LODWORD(v76) >> 23) == 255)
  {
    result = _assertionFailure(_:_:file:line:flags:)(v37, 11, 2, v38, 75, 2, v39, 24, 2, 8763, 0);
    __break(1u);
  }

  if (v26 <= -9.2234e18)
  {
    result = _assertionFailure(_:_:file:line:flags:)(v37, 11, 2, v40, 84, 2, v39, 24, 2, 8766, 0);
    __break(1u);
  }

  if (v26 >= 9.2234e18)
  {
    result = _assertionFailure(_:_:file:line:flags:)(v37, 11, 2, v41, 87, 2, v39, 24, 2, 8769, 0);
    __break(1u);
  }

  v25 = v26;
  v75 = v26;
  v24 = v56 >= v27 && v25 >= v56;
  v22 = v24;
  v74 = v24;
  v23 = v25 - v27;
  if (__OFSUB__(v25, v27))
  {
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v21 = v23 + 1;
  if (__OFADD__(v23, 1))
  {
    goto LABEL_81;
  }

  v73 = v21;
  v20 = v31 - v56;
  if (!__OFSUB__(v31, v56))
  {
    v71 = v20;
    abs<A>(_:)();
    v19 = v72;
    v17 = EvalMetricsProcessor.calculateUXOverall(coverage:width:)(v22, v21);
    return PerSliceMetrics.init(abserr:coverage:width:uxOverall:)(v19, v22, v21, v17);
  }

LABEL_82:
  __break(1u);
  return result;
}

uint64_t EvalMetricsProcessor.calculateUXOverall(coverage:width:)(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  if (a2 <= 5)
  {
    return 4;
  }

  if (a2 <= 7)
  {
    return 3;
  }

  if (a2 > 9)
  {
    return a2 <= 13;
  }

  return 2;
}

uint64_t thunk for @callee_guaranteed (@unowned UInt32, @unowned Float, @unowned Float, @unowned Float) -> (@unowned PerSliceMetrics)@<X0>(float *a1@<X0>, uint64_t (*a2)(void, float, float, float)@<X1>, uint64_t a3@<X8>)
{
  result = a2(*a1, a1[1], a1[2], a1[3]);
  *a3 = result;
  *(a3 + 8) = v4 & 1;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  return result;
}

uint64_t static EvalMetricsProcessor.argQuantile(softmax:quantiles:)(void *a1, uint64_t a2)
{

  static PFLStats.cumsum(vector:)();

  v8 = Array.init()();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  lazy protocol witness table accessor for type [Float] and conformance [A]();
  Collection<>.makeIterator()();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySfGGMd, &_ss16IndexingIteratorVySaySfGGMR);
    IndexingIterator.next()();
    if (v7)
    {
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      return v8;
    }

    v6 = static PFLStats.less<A>(vector:value:)();
    result = Array<A>.sum.getter(v6);
    if (!result)
    {
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      swift_allocError();
      *v4 = 28;
      swift_willThrow();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      return v5;
    }

    if (__OFSUB__(result, 1))
    {
      break;
    }

    Array.subscript.getter();
    Array.subscript.getter();
    Array.subscript.getter();
    Array.append(_:)();
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type Zip2Sequence<[UInt32], [(darkRedStart: Float, lowRangeStart: Float, lowRangeEnd: Float)]> and conformance Zip2Sequence<A, B>()
{
  v2 = lazy protocol witness table cache variable for type Zip2Sequence<[UInt32], [(darkRedStart: Float, lowRangeStart: Float, lowRangeEnd: Float)]> and conformance Zip2Sequence<A, B>;
  if (!lazy protocol witness table cache variable for type Zip2Sequence<[UInt32], [(darkRedStart: Float, lowRangeStart: Float, lowRangeEnd: Float)]> and conformance Zip2Sequence<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss12Zip2SequenceVySays6UInt32VGSaySf12darkRedStart_Sf08lowRangeF0Sf0gH3EndtGGMd, &_ss12Zip2SequenceVySays6UInt32VGSaySf12darkRedStart_Sf08lowRangeF0Sf0gH3EndtGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Zip2Sequence<[UInt32], [(darkRedStart: Float, lowRangeStart: Float, lowRangeEnd: Float)]> and conformance Zip2Sequence<A, B>);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for AggMetrics(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 144))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

void *storeEnumTagSinglePayload for AggMetrics(void *result, int a2, int a3)
{
  v3 = result + 18;
  if (a2)
  {
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
    *result = (a2 - 1);
    result[17] = 0;
    result[16] = 0;
    if (a3)
    {
      *v3 = 1;
    }
  }

  else if (a3)
  {
    *v3 = 0;
  }

  return result;
}

__n128 __swift_memcpy32_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PerSliceMetrics(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 32))
    {
      v5 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = -1;
      if ((v3 & 0xFFFFFFFE) != 0)
      {
        v4 = v3 & 1 | ((v3 & 0xFE) - 2) & 0x7FFFFFFF;
      }

      v5 = v4;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PerSliceMetrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t PFLTask.taskId.getter()
{
  v7 = v0;
  dispatch thunk of PFLTask.recipe.getter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("id", 2uLL, 1);
  MEMORY[0x25F8891D0](v5);
  outlined destroy of DefaultStringInterpolation();

  if (v5[3])
  {
    if (swift_dynamicCast())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }

    v2 = v3;
  }

  else
  {
    outlined destroy of Pregnancy?(v5);
    v2 = 0;
  }

  if (v2._object)
  {
    v6 = v2;
  }

  else
  {
    v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  }

  return v6._countAndFlagsBits;
}

Swift::Double __swiftcall PFLTask.iterationElapsedTime()()
{
  v33 = 0;
  v30 = 0.0;
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20, v1);
  v24 = &v6 - v23;
  v33 = v0;
  v28 = dispatch thunk of PFLTask.recipe.getter();
  started = HyperParams.keyIterationStartTime.unsafeMutableAddressor();
  v25 = *started;
  v26 = *(started + 1);

  v27 = v31;
  v31[0] = v25;
  v31[1] = v26;
  MEMORY[0x25F8891D0](v32);
  outlined destroy of DefaultStringInterpolation();

  if (v32[3])
  {
    type metadata accessor for NSNumber();
    if (swift_dynamicCast())
    {
      v19 = v29;
    }

    else
    {
      v19 = 0;
    }

    v18 = v19;
  }

  else
  {
    outlined destroy of Pregnancy?(v32);
    v18 = 0;
  }

  v17 = v18;
  if (v18)
  {
    v16 = v17;
    v12 = v17;
    [v17 doubleValue];
    v13 = v3;
    MEMORY[0x277D82BD8](v12);
    v14 = v13;
    v15 = 0;
  }

  else
  {
    v14 = 0.0;
    v15 = 1;
  }

  v11 = v14;
  if (v15)
  {
    return 0.0;
  }

  v10 = v11;
  v7 = v11;
  v30 = v11;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v8 = v4;
  (*(v21 + 8))(v24, v20);
  return v8 - v7;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PFLTask.getValidModelPath(modelFileSuffix:)(Swift::String modelFileSuffix)
{
  countAndFlagsBits = modelFileSuffix._countAndFlagsBits;
  object = modelFileSuffix._object;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v51 = 0;
  v39 = 0;
  v2 = type metadata accessor for URL.DirectoryHint();
  v37 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2, v3);
  v38 = v17 - v37;
  v40 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39, v4);
  v41 = v17 - v40;
  v44 = type metadata accessor for URL();
  v45 = *(v44 - 8);
  v46 = v44 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](countAndFlagsBits, object);
  v48 = v17 - v47;
  v58 = v5;
  v59 = v6;
  v57 = v1;
  v49 = dispatch thunk of PFLTask.attachmentPath(name:)();
  v50 = v7;
  if (!v7)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v21 = swift_allocError();
    *v13 = 9;
    swift_willThrow();
    v22 = v21;
LABEL_6:
    v12 = v20;
    v11 = v17[1];
    goto LABEL_7;
  }

  v34 = v49;
  v35 = v50;
  v26 = v50;
  v23 = v49;
  v55 = v49;
  v56 = v50;

  v24 = MEMORY[0x25F8892C0](v23, v26);
  v25 = [v24 stringByDeletingLastPathComponent];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v8;
  v53 = v28;
  v54 = v8;
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);

  v27 = 0;
  type metadata accessor for MLModelConfiguration();
  isa = HKHealthStore.__allocating_init()().super.isa;
  v52 = isa;
  [(objc_class *)isa setComputeUnits:v27];
  type metadata accessor for MLModel();

  (*(v45 + 56))(v41, 1, 1, v44);
  default argument 1 of URL.init(filePath:directoryHint:relativeTo:)(v38);
  URL.init(filePath:directoryHint:relativeTo:)();
  MEMORY[0x277D82BE0](isa);
  v9 = v36;
  v10 = @nonobjc MLModel.__allocating_init(contentsOf:configuration:)(v48, isa);
  v31 = v9;
  v32 = v10;
  v33 = v9;
  if (v9)
  {
    v18 = v33;
    MEMORY[0x277D82BD8](isa);
    v14 = v18;
    v51 = v18;
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v19 = swift_allocError();
    *v15 = 31;
    swift_willThrow();

    v22 = v19;
    goto LABEL_6;
  }

  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](isa);

  v11 = v28;
  v12 = v29;
LABEL_7:
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t PFLTask.trainingModelPath(taskType:hyperParams:)(char a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NightingalePFLTaskType and conformance NightingalePFLTaskType();
  if (== infix<A>(_:_:)())
  {
    v11 = 1;
  }

  else
  {
    v11 = == infix<A>(_:_:)();
  }

  if (v11)
  {
    v10 = 1;
  }

  else
  {
    v10 = == infix<A>(_:_:)();
  }

  if (v10)
  {
    v9 = 1;
  }

  else
  {
    v9 = == infix<A>(_:_:)();
  }

  if ((v9 & 1) == 0)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  }

  HyperParams.modelName.getter();
  v7 = dispatch thunk of PFLTask.attachmentPath(name:)();
  v8 = v2;

  if (!v8)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    swift_allocError();
    *v3 = 9;
    swift_willThrow();
    return v5;
  }

  return v7;
}

uint64_t PFLTask.evalModelNames(taskType:hyperParams:)(char a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NightingalePFLTaskType and conformance NightingalePFLTaskType();
  if ((== infix<A>(_:_:)() & 1) == 0)
  {
    return _allocateUninitializedArray<A>(_:)();
  }

  v6 = HyperParams.evalModels.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  if (Collection.isEmpty.getter())
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    swift_allocError();
    *v2 = 9;
    swift_willThrow();

    return v4;
  }

  return v6;
}

Swift::String_optional __swiftcall PFLTask.evalModelPath(path:)(Swift::String path)
{
  v1 = dispatch thunk of PFLTask.attachmentPath(name:)();
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t ReachLocation.description.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown", 7uLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginStarted", 0xDuLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CTEnrolled", 0xAuLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RawSamplesCompleted", 0x13uLL, 1)._countAndFlagsBits;
    case 4:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CalPredCompleted", 0x10uLL, 1)._countAndFlagsBits;
    case 5:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SHRCompleted", 0xCuLL, 1)._countAndFlagsBits;
    case 6:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ShadowEvaluationCompleted", 0x19uLL, 1)._countAndFlagsBits;
    case 7:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FeaturizationCompleted", 0x16uLL, 1)._countAndFlagsBits;
    case 8:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginCompleted", 0xFuLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginStopped", 0xDuLL, 1)._countAndFlagsBits;
  }
}

NightingaleTraining::ReachLocation_optional __swiftcall ReachLocation.init(rawValue:)(Swift::Int rawValue)
{
  switch(rawValue)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 3:
      return 2;
    case 5:
      return 3;
    case 6:
      return 4;
    case 7:
      return 5;
    case 8:
      return 6;
    case 9:
      return 7;
    case 10:
      return 8;
    case 11:
      return 9;
  }

  return 10;
}

uint64_t ReachLocation.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 3;
    case 3:
      return 5;
    case 4:
      return 6;
    case 5:
      return 7;
    case 6:
      return 8;
    case 7:
      return 9;
    case 8:
      return 10;
  }

  return 11;
}

NightingaleTraining::ReachLocation_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ReachLocation@<W0>(Swift::Int *a1@<X0>, NightingaleTraining::ReachLocation_optional *a2@<X8>)
{
  result.value = ReachLocation.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ReachLocation@<X0>(uint64_t *a1@<X8>)
{
  result = ReachLocation.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t PFLTask.modelType.getter()
{
  HyperParams.keyLSTMModelType.unsafeMutableAddressor();

  NightingalePFLModelType.rawValue.getter(1);
  dispatch thunk of PFLTask.parameter<A>(for:default:)();

  v2.value = NightingalePFLModelType.init(rawValue:)(v3).value;
  if (v2.value == NightingaleTraining_NightingalePFLModelType_unknownDefault)
  {
    return 1;
  }

  else
  {
    return v2.value;
  }
}

unint64_t type metadata accessor for MLModelConfiguration()
{
  v2 = lazy cache variable for type metadata for MLModelConfiguration;
  if (!lazy cache variable for type metadata for MLModelConfiguration)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for MLModelConfiguration);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for MLModel()
{
  v2 = lazy cache variable for type metadata for MLModel;
  if (!lazy cache variable for type metadata for MLModel)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for MLModel);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t default argument 1 of URL.init(filePath:directoryHint:relativeTo:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277CC91D8];
  v1 = type metadata accessor for URL.DirectoryHint();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

id @nonobjc MLModel.__allocating_init(contentsOf:configuration:)(uint64_t a1, uint64_t a2)
{
  URL._bridgeToObjectiveC()(*MEMORY[0x277D85DE8]);
  v9 = v2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSAySo7NSErrorCSgGMd, &_sSAySo7NSErrorCSgGMR);
  lazy protocol witness table accessor for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>();
  _convertInOutToPointerArgument<A>(_:)();
  v11 = [ObjCClassFromMetadata modelWithContentsOfURL:v9 configuration:a2 error:v12];
  MEMORY[0x277D82BE0](0);
  MEMORY[0x277D82BD8](0);
  if (v11)
  {
    MEMORY[0x277D82BD8](a2);
    MEMORY[0x277D82BD8](v9);
    v3 = type metadata accessor for URL();
    (*(*(v3 - 8) + 8))(a1);
    return v11;
  }

  else
  {
    _convertNSErrorToError(_:)();
    MEMORY[0x277D82BD8](0);
    swift_willThrow();
    MEMORY[0x277D82BD8](a2);
    MEMORY[0x277D82BD8](v9);
    v5 = type metadata accessor for URL();
    (*(*(v5 - 8) + 8))(a1);
    return v6;
  }
}

__int128 *NightingalePFLRunner.keyMetricsLoss.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsLoss != -1)
  {
    swift_once();
  }

  return &static NightingalePFLRunner.keyMetricsLoss;
}

uint64_t static NightingalePFLRunner.keyMetricsLoss.getter()
{
  v1 = *NightingalePFLRunner.keyMetricsLoss.unsafeMutableAddressor();

  return v1;
}

__int128 *NightingalePFLRunner.keyNumSlices.unsafeMutableAddressor()
{
  if (one-time initialization token for keyNumSlices != -1)
  {
    swift_once();
  }

  return &static NightingalePFLRunner.keyNumSlices;
}

uint64_t static NightingalePFLRunner.keyNumSlices.getter()
{
  v1 = *NightingalePFLRunner.keyNumSlices.unsafeMutableAddressor();

  return v1;
}

__int128 *NightingalePFLRunner.keyMetricsLossBeforeTraining.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsLossBeforeTraining != -1)
  {
    swift_once();
  }

  return &static NightingalePFLRunner.keyMetricsLossBeforeTraining;
}

uint64_t static NightingalePFLRunner.keyMetricsLossBeforeTraining.getter()
{
  v1 = *NightingalePFLRunner.keyMetricsLossBeforeTraining.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsDayStreamProcessorConfigDurationS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DayStreamProcessorConfigDurationS", 0x21uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingalePFLRunner.keyMetricsDayStreamProcessorConfigDurationS = v1;
  return result;
}

__int128 *NightingalePFLRunner.keyMetricsDayStreamProcessorConfigDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsDayStreamProcessorConfigDurationS != -1)
  {
    swift_once();
  }

  return &static NightingalePFLRunner.keyMetricsDayStreamProcessorConfigDurationS;
}

uint64_t static NightingalePFLRunner.keyMetricsDayStreamProcessorConfigDurationS.getter()
{
  v1 = *NightingalePFLRunner.keyMetricsDayStreamProcessorConfigDurationS.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsRawSamplesDurationS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RawSamplesDurationS", 0x13uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingalePFLRunner.keyMetricsRawSamplesDurationS = v1;
  return result;
}

__int128 *NightingalePFLRunner.keyMetricsRawSamplesDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsRawSamplesDurationS != -1)
  {
    swift_once();
  }

  return &static NightingalePFLRunner.keyMetricsRawSamplesDurationS;
}

uint64_t static NightingalePFLRunner.keyMetricsRawSamplesDurationS.getter()
{
  v1 = *NightingalePFLRunner.keyMetricsRawSamplesDurationS.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsCalendarPredictionDurationS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CalendarPredictionDurationS", 0x1BuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingalePFLRunner.keyMetricsCalendarPredictionDurationS = v1;
  return result;
}

__int128 *NightingalePFLRunner.keyMetricsCalendarPredictionDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsCalendarPredictionDurationS != -1)
  {
    swift_once();
  }

  return &static NightingalePFLRunner.keyMetricsCalendarPredictionDurationS;
}

uint64_t static NightingalePFLRunner.keyMetricsCalendarPredictionDurationS.getter()
{
  v1 = *NightingalePFLRunner.keyMetricsCalendarPredictionDurationS.unsafeMutableAddressor();

  return v1;
}

__int128 *NightingalePFLRunner.keyMetricsSHRDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsSHRDurationS != -1)
  {
    swift_once();
  }

  return &static NightingalePFLRunner.keyMetricsSHRDurationS;
}

uint64_t static NightingalePFLRunner.keyMetricsSHRDurationS.getter()
{
  v1 = *NightingalePFLRunner.keyMetricsSHRDurationS.unsafeMutableAddressor();

  return v1;
}

__int128 *NightingalePFLRunner.keyMetricsFeaturizationDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsFeaturizationDurationS != -1)
  {
    swift_once();
  }

  return &static NightingalePFLRunner.keyMetricsFeaturizationDurationS;
}

uint64_t static NightingalePFLRunner.keyMetricsFeaturizationDurationS.getter()
{
  v1 = *NightingalePFLRunner.keyMetricsFeaturizationDurationS.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsFeatureRescalingDurationS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FeatureRescalingDurationS", 0x19uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingalePFLRunner.keyMetricsFeatureRescalingDurationS = v1;
  return result;
}

__int128 *NightingalePFLRunner.keyMetricsFeatureRescalingDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsFeatureRescalingDurationS != -1)
  {
    swift_once();
  }

  return &static NightingalePFLRunner.keyMetricsFeatureRescalingDurationS;
}

uint64_t static NightingalePFLRunner.keyMetricsFeatureRescalingDurationS.getter()
{
  v1 = *NightingalePFLRunner.keyMetricsFeatureRescalingDurationS.unsafeMutableAddressor();

  return v1;
}

__int128 *NightingalePFLRunner.keyMetricsBMIDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsBMIDurationS != -1)
  {
    swift_once();
  }

  return &static NightingalePFLRunner.keyMetricsBMIDurationS;
}

uint64_t static NightingalePFLRunner.keyMetricsBMIDurationS.getter()
{
  v1 = *NightingalePFLRunner.keyMetricsBMIDurationS.unsafeMutableAddressor();

  return v1;
}

__int128 *NightingalePFLRunner.keyMetricsTrainingDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsTrainingDurationS != -1)
  {
    swift_once();
  }

  return &static NightingalePFLRunner.keyMetricsTrainingDurationS;
}

uint64_t static NightingalePFLRunner.keyMetricsTrainingDurationS.getter()
{
  v1 = *NightingalePFLRunner.keyMetricsTrainingDurationS.unsafeMutableAddressor();

  return v1;
}

__int128 *NightingalePFLRunner.keyMetricsE2EDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsE2EDurationS != -1)
  {
    swift_once();
  }

  return &static NightingalePFLRunner.keyMetricsE2EDurationS;
}

uint64_t static NightingalePFLRunner.keyMetricsE2EDurationS.getter()
{
  v1 = *NightingalePFLRunner.keyMetricsE2EDurationS.unsafeMutableAddressor();

  return v1;
}

__int128 *NightingalePFLRunner.keyMetricsL2Norm.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsL2Norm != -1)
  {
    swift_once();
  }

  return &static NightingalePFLRunner.keyMetricsL2Norm;
}

uint64_t static NightingalePFLRunner.keyMetricsL2Norm.getter()
{
  v1 = *NightingalePFLRunner.keyMetricsL2Norm.unsafeMutableAddressor();

  return v1;
}

__int128 *NightingalePFLRunner.keyMetricsIterationElapsedTime.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsIterationElapsedTime != -1)
  {
    swift_once();
  }

  return &static NightingalePFLRunner.keyMetricsIterationElapsedTime;
}

uint64_t static NightingalePFLRunner.keyMetricsIterationElapsedTime.getter()
{
  v1 = *NightingalePFLRunner.keyMetricsIterationElapsedTime.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsShadowEvaluationTime()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ShadowEvaluationTime", 0x14uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingalePFLRunner.keyMetricsShadowEvaluationTime = v1;
  return result;
}

__int128 *NightingalePFLRunner.keyMetricsShadowEvaluationTime.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsShadowEvaluationTime != -1)
  {
    swift_once();
  }

  return &static NightingalePFLRunner.keyMetricsShadowEvaluationTime;
}

uint64_t static NightingalePFLRunner.keyMetricsShadowEvaluationTime.getter()
{
  v1 = *NightingalePFLRunner.keyMetricsShadowEvaluationTime.unsafeMutableAddressor();

  return v1;
}

uint64_t default argument 2 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)()
{
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo17OS_dispatch_queueC8DispatchE10AttributesV_Tt0gq5(0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t default argument 3 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85260];
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t NightingalePFLRunner.queue.getter()
{
  v2 = *(v0 + 48);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t NightingalePFLRunner.location.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 56);
  swift_endAccess();
  return v2;
}

uint64_t NightingalePFLRunner.location.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
  return swift_endAccess();
}

uint64_t NightingalePFLRunner.todayJulianDay.getter()
{
  LODWORD(v2) = *(v0 + 104);
  BYTE4(v2) = *(v0 + 108) & 1;
  return v2;
}

uint64_t NightingalePFLRunner.__allocating_init(useCase:)(char *a1)
{
  v8 = 0;
  v8 = *a1;
  v7 = v8;
  v3 = type metadata accessor for HealthDataStoreQuery();
  type metadata accessor for HKHealthStore();
  v1.super.isa = HKHealthStore.__allocating_init()().super.isa;
  v6[3] = v3;
  v6[4] = &protocol witness table for HealthDataStoreQuery;
  v6[0] = HealthDataStoreQuery.__allocating_init(store:)(v1.super.isa);
  LODWORD(v5) = 0;
  BYTE4(v5) = 1;
  v4 = NightingalePFLRunner.__allocating_init(useCase:query:todayJulianDay:)(&v7, v6, v5);

  v9 = v4;

  return v4;
}

uint64_t NightingalePFLRunner.__allocating_init(useCase:query:todayJulianDay:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a3;
  v5 = BYTE4(a3);
  swift_allocObject();
  LODWORD(v8) = v4;
  BYTE4(v8) = v5 & 1;
  return NightingalePFLRunner.init(useCase:query:todayJulianDay:)(a1, a2, v8);
}

uint64_t NightingalePFLRunner.init(useCase:query:todayJulianDay:)(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a1;
  v35 = a2;
  v42 = 0;
  v41 = 0;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v43 = a3;
  v32 = a3;
  v33 = BYTE4(a3);
  v29 = 0;
  v22 = (*(*(type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v4);
  v28 = &v21 - v22;
  v23 = (*(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29, v5);
  v27 = &v21 - v23;
  type metadata accessor for DispatchQoS();
  v6 = MEMORY[0x28223BE20](v24, v29);
  v26 = &v21 - v7;
  v30 = *v6;
  v42 = v30;
  v41 = v35;
  v39 = v8;
  v34 = 1;
  v40 = v33 & 1;
  v38 = v3;
  *(v3 + 24) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v9, 1);
  type metadata accessor for OS_dispatch_queue();
  v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ReachLocation.queue", 0x13uLL, v34 & 1);
  default argument 1 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  default argument 2 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  default argument 3 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)(v28);
  v10 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = v36;
  *(v36 + 48) = v10;
  *(v11 + 56) = 0;
  type metadata accessor for PerformanceMeasure();
  v12 = PerformanceMeasure.__allocating_init()();
  v13 = v36;
  v14 = v30;
  v15 = v12;
  v16 = v35;
  *(v36 + 16) = v15;
  *(v13 + 40) = v14;
  v31 = v37;
  outlined init with copy of HealthDataQuery(v16, v37);
  outlined init with take of HealthDataQuery(v31, (v13 + 64));
  v17 = v33;
  v18 = v34;
  v19 = v35;
  *(v13 + 104) = v32;
  *(v13 + 108) = v17 & 1 & v18;
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v36;
}

uint64_t NightingalePFLRunner.performCustomConsent(taskPreferences:)(uint64_t a1)
{
  v10 = 0;
  v11 = a1;
  outlined init with copy of HealthDataQuery(v1 + 64, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v6 = (*(v5 + 40))(0, 0, v4);
  if (!v3)
  {
    MEMORY[0x277D82BD8](v6);
  }

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t NightingalePFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 5520) = v4;
  *(v5 + 5512) = a1;
  *(v5 + 4672) = v5;
  *(v5 + 4680) = 0;
  *(v5 + 4352) = 0;
  *(v5 + 4360) = 0;
  *(v5 + 4688) = 0;
  *(v5 + 4696) = 0;
  *(v5 + 4704) = 0;
  *(v5 + 6112) = 0;
  *(v5 + 4712) = 0;
  *(v5 + 4720) = 0;
  *(v5 + 4728) = 0;
  *(v5 + 4736) = 0;
  *(v5 + 4744) = 0;
  *(v5 + 4752) = 0;
  *(v5 + 6120) = 0;
  *(v5 + 4368) = 0;
  *(v5 + 4376) = 0;
  *(v5 + 4760) = 0;
  *(v5 + 4768) = 0;
  *(v5 + 5936) = 0;
  *(v5 + 6000) = 0;
  *(v5 + 6008) = 0;
  *(v5 + 6016) = 0;
  *(v5 + 4816) = 0;
  *(v5 + 4824) = 0;
  *(v5 + 4832) = 0;
  *(v5 + 4840) = 0;
  *(v5 + 4848) = 0;
  *(v5 + 4872) = 0;
  *(v5 + 4880) = 0;
  *(v5 + 4888) = 0;
  *(v5 + 4896) = 0;
  *(v5 + 4936) = 0;
  *(v5 + 4944) = 0;
  *(v5 + 4952) = 0;
  *(v5 + 4960) = 0;
  *(v5 + 4384) = 0;
  *(v5 + 4392) = 0;
  *(v5 + 4968) = 0;
  *(v5 + 4976) = 0;
  *(v5 + 4984) = 0;
  *(v5 + 4992) = 0;
  *(v5 + 5000) = 0;
  *(v5 + 6024) = 0;
  *(v5 + 5008) = 0;
  *(v5 + 5016) = 0;
  *(v5 + 5024) = 0;
  *(v5 + 5032) = 0;
  *(v5 + 5040) = 0;
  *(v5 + 5048) = 0;
  *(v5 + 5056) = 0;
  *(v5 + 6032) = 0;
  *(v5 + 6040) = 0;
  *(v5 + 6048) = 0;
  *(v5 + 5064) = 0;
  *(v5 + 5072) = 0;
  *(v5 + 5080) = 0;
  *(v5 + 5088) = 0;
  *(v5 + 5096) = 0;
  *(v5 + 5104) = 0;
  *(v5 + 5112) = 0;
  *(v5 + 5120) = 0;
  memset((v5 + 3184), 0, 0x28uLL);
  *(v5 + 6056) = 0;
  *(v5 + 5176) = 0;
  *(v5 + 5184) = 0;
  *(v5 + 5192) = 0;
  *(v5 + 4400) = 0;
  *(v5 + 4408) = 0;
  *(v5 + 4432) = 0;
  *(v5 + 4440) = 0;
  *(v5 + 5216) = 0;
  *(v5 + 5224) = 0;
  *(v5 + 5232) = 0;
  *(v5 + 5980) = 0;
  *(v5 + 5984) = 0;
  *(v5 + 6128) = 0;
  *(v5 + 6136) = 0;
  *(v5 + 5240) = 0;
  *(v5 + 5248) = 0;
  *(v5 + 5256) = 0;
  *(v5 + 4016) = 0;
  *(v5 + 4024) = 0;
  *(v5 + 4032) = 0;
  *(v5 + 5988) = 0;
  *(v5 + 5992) = 0;
  *(v5 + 6064) = 0;
  *(v5 + 4064) = 0;
  *(v5 + 4072) = 0;
  *(v5 + 4080) = 0;
  *(v5 + 5264) = 0;
  *(v5 + 6072) = 0;
  *(v5 + 6080) = 0;
  *(v5 + 6088) = 0;
  *(v5 + 6096) = 0;
  *(v5 + 5272) = 0;
  *(v5 + 5280) = 0;
  *(v5 + 6104) = 0;
  *(v5 + 4160) = 0;
  *(v5 + 4168) = 0;
  *(v5 + 4176) = 0;
  *(v5 + 5312) = 0;
  *(v5 + 4496) = 0;
  *(v5 + 4504) = 0;
  *(v5 + 5320) = 0;
  bzero((v5 + 856), 0x118uLL);
  *(v5 + 5376) = 0;
  *(v5 + 4560) = 0;
  *(v5 + 4568) = 0;
  *(v5 + 4592) = 0;
  *(v5 + 4600) = 0;
  *(v5 + 5416) = 0;
  *(v5 + 3840) = 0u;
  *(v5 + 3856) = 0u;
  *(v5 + 5464) = 0;
  v6 = type metadata accessor for PFLError();
  *(v5 + 5528) = v6;
  *(v5 + 5536) = *(v6 - 8);
  *(v5 + 5544) = swift_task_alloc();
  *(v5 + 5552) = swift_task_alloc();
  v7 = type metadata accessor for PFLStats.StdMethod();
  *(v5 + 5560) = v7;
  *(v5 + 5568) = *(v7 - 8);
  *(v5 + 5576) = swift_task_alloc();
  v8 = type metadata accessor for DateComponents();
  *(v5 + 5584) = v8;
  *(v5 + 5592) = *(v8 - 8);
  *(v5 + 5600) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  *(v5 + 5608) = swift_task_alloc();
  *(v5 + 5616) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v5 + 5624) = v9;
  *(v5 + 5632) = *(v9 - 8);
  *(v5 + 5640) = swift_task_alloc();
  *(v5 + 5648) = swift_task_alloc();
  *(v5 + 5656) = swift_task_alloc();
  *(v5 + 5664) = swift_task_alloc();
  v10 = type metadata accessor for Date();
  *(v5 + 5672) = v10;
  *(v5 + 5680) = *(v10 - 8);
  *(v5 + 5688) = swift_task_alloc();
  *(v5 + 4680) = a1;
  *(v5 + 4352) = a2;
  *(v5 + 4360) = a3;
  *(v5 + 4688) = a4;
  *(v5 + 4696) = v4;

  return MEMORY[0x2822009F8](NightingalePFLRunner.run(task:useCase:context:), 0);
}

uint64_t NightingalePFLRunner.run(task:useCase:context:)()
{
  *(v0 + 4672) = v0;
  v1 = PFLTask.taskId.getter();
  NightingaleDPFLRunner.taskId.setter(v1, v2);
  type metadata accessor for HyperParams();
  dispatch thunk of PFLTask.recipe.getter();
  v3 = _dictionaryUpCast<A, B, C, D>(_:)();
  v65 = HyperParams.__allocating_init(recipe:)(v3);
  *(v0 + 5696) = v65;

  *(v0 + 4704) = v65;
  v66 = PFLTask.modelType.getter();
  *(v0 + 6062) = v66;
  *(v0 + 6112) = v66;
  NightingalePFLRunner.sendLocation(_:hyperParams:)(1, v65);
  *(v0 + 4633) = v66;
  *(v0 + 4634) = 1;
  *(v0 + 5704) = lazy protocol witness table accessor for type NightingalePFLModelType and conformance NightingalePFLModelType();
  if (== infix<A>(_:_:)())
  {
    outlined init with copy of HealthDataQuery(*(v64 + 5520) + 64, v64 + 2904);
    v62 = *(v64 + 2928);
    v63 = *(v64 + 2936);
    __swift_project_boxed_opaque_existential_1((v64 + 2904), v62);
    v4._countAndFlagsBits = HyperParams.heartRateFwEnd10PctModelName.getter();
    v5 = PFLTask.getValidModelPath(modelFileSuffix:)(v4);
    if (v6)
    {

      __swift_destroy_boxed_opaque_existential_1((v64 + 2904));
    }

    else
    {

      v7._countAndFlagsBits = HyperParams.heartRatePeriod10PctModelName.getter();
      v8 = PFLTask.getValidModelPath(modelFileSuffix:)(v7);
      if (v9)
      {

        __swift_destroy_boxed_opaque_existential_1((v64 + 2904));
      }

      else
      {

        v10._countAndFlagsBits = HyperParams.wTmpFwEndLstmModelName.getter();
        v11 = PFLTask.getValidModelPath(modelFileSuffix:)(v10);
        if (v12)
        {

          __swift_destroy_boxed_opaque_existential_1((v64 + 2904));
        }

        else
        {

          v13._countAndFlagsBits = HyperParams.wTmpFwEndRFModelName.getter();
          v14 = PFLTask.getValidModelPath(modelFileSuffix:)(v13);
          if (v15)
          {

            __swift_destroy_boxed_opaque_existential_1((v64 + 2904));
          }

          else
          {

            v16._countAndFlagsBits = HyperParams.wTmpPeriodLstmModelName.getter();
            v17 = PFLTask.getValidModelPath(modelFileSuffix:)(v16);
            if (v18)
            {

              __swift_destroy_boxed_opaque_existential_1((v64 + 2904));
            }

            else
            {
              v57 = *(v64 + 5520);

              v56 = (*(v63 + 56))(v5._countAndFlagsBits, v5._object, v8._countAndFlagsBits, v8._object, v11._countAndFlagsBits, v11._object, v14._countAndFlagsBits, v14._object, v17._countAndFlagsBits, v17._object, 0, 0, 0, v62, v63);
              *(v64 + 5712) = v56;

              *(v64 + 4712) = v56;
              __swift_destroy_boxed_opaque_existential_1((v64 + 2904));
              v19 = PFLTask.iterationElapsedTime()();
              *(v64 + 5720) = v19;
              *(v64 + 4720) = v19;
              NightingaleDPFLRunner.performanceMeasure.getter();
              String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginE2E", 9uLL, 1);
              dispatch thunk of PerformanceMeasure.start(_:)();

              NightingaleDPFLRunner.performanceMeasure.getter();
              String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DayStreamProcessorConfig", 0x18uLL, 1);
              dispatch thunk of PerformanceMeasure.start(_:)();

              outlined init with copy of HealthDataQuery(v57 + 64, v64 + 2944);
              v58 = *(v64 + 2968);
              v59 = *(v64 + 2976);
              __swift_project_boxed_opaque_existential_1((v64 + 2944), v58);
              v60 = HyperParams.birthDateRequired.getter();
              v20 = HyperParams.useCachedDayStreamProcessorConfig.getter();
              v61 = (*(v59 + 40))(v60 & 1, v20 & 1, v58);
              *(v64 + 5728) = v61;
              *(v64 + 5736) = v21;
              *(v64 + 5744) = v22;
              *(v64 + 4728) = v61;
              *(v64 + 4736) = v21;
              *(v64 + 4744) = v22;
              __swift_destroy_boxed_opaque_existential_1((v64 + 2944));
              NightingaleDPFLRunner.performanceMeasure.getter();
              String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DayStreamProcessorConfig", 0x18uLL, 1);
              dispatch thunk of PerformanceMeasure.finish(_:)();
              v53 = v23;
              *(v64 + 5752) = v23;

              *(v64 + 4752) = v53;
              NightingalePFLRunner.sendLocation(_:hyperParams:)(2, v65);
              v54 = HyperParams.pflTaskType.getter();
              *(v64 + 6063) = v54;
              *(v64 + 6120) = v54;
              v55 = PFLTask.trainingModelPath(taskType:hyperParams:)(v54, v65);
              *(v64 + 5760) = v55;
              *(v64 + 5768) = v24;
              *(v64 + 4368) = v55;
              *(v64 + 4376) = v24;
              v25 = PFLTask.evalModelNames(taskType:hyperParams:)(v54, v65);
              *(v64 + 5776) = v25;
              v51 = *(v64 + 5520);
              *(v64 + 4760) = v25;
              v49 = dispatch_group_create();
              *(v64 + 5784) = v49;
              *(v64 + 4768) = v49;
              v50 = HyperParams.maximumDays.getter();
              *(v64 + 6028) = v50;
              *(v64 + 5936) = v50;
              v52 = HyperParams.minimumDaysAgo.getter();
              *(v64 + 6036) = v52;
              *(v64 + 6000) = v52;
              if (*(v51 + 108))
              {
                v44 = *(v64 + 5688);
                v43 = *(v64 + 5672);
                v42 = *(v64 + 5680);
                Date.init()();
                *&v26 = Date.toJulianDay()();
                v46 = v26;
                v45 = BYTE4(v26);
                (*(v42 + 8))(v44, v43);
                v47 = v46;
                v48 = v45;
              }

              else
              {
                v27 = *(v64 + 5520);
                if (*(v27 + 108))
                {
                  return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/NightingalePFLRunner.swift", 46, 2, 219, 0);
                }

                v47 = *(v27 + 104);
                v48 = *(v27 + 108);
              }

              *(v64 + 6044) = v47;
              if ((v48 & 1) == 0)
              {
                *(v64 + 6008) = v47;
                if (v50 < v47 && v50 >= v52)
                {
                  v29 = HyperParams.sHRQueryBatchSize.getter();
                  *(v64 + 6052) = v29;
                  *(v64 + 6016) = v29;
                  *(v64 + 4776) = 0;
                  *(v64 + 4784) = 0;
                  *(v64 + 4792) = 0;
                  *(v64 + 4800) = 0;
                  *(v64 + 4808) = 0;
                  *(v64 + 4816) = Dictionary.init()();
                  *(v64 + 4824) = Dictionary.init()();
                  *(v64 + 4832) = Dictionary.init()();
                  *(v64 + 4840) = Dictionary.init()();
                  NightingaleDPFLRunner.performanceMeasure.getter();
                  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RawSamplesQuery", 0xFuLL, 1);
                  dispatch thunk of PerformanceMeasure.start(_:)();

                  _allocateUninitializedArray<A>(_:)();
                  *v30 = 0;
                  v30[1] = 3;
                  v30[2] = 1;
                  v30[3] = 2;
                  _finalizeUninitializedArray<A>(_:)();
                  *(v64 + 4848) = v31;
                  if (isSleepingWTNeeded(_:)(v66))
                  {
                    *(v64 + 6061) = 7;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd, &_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMR);
                    Array.append(_:)();
                  }

                  v38 = *(v64 + 5520);
                  v40 = HyperParams.rawSampleTimeout.getter();
                  v39 = *(v64 + 4848);

                  v41 = swift_allocObject();
                  *(v64 + 5792) = v41;
                  *(v41 + 16) = v38;
                  *(v41 + 24) = v39;
                  *(v41 + 32) = v47;
                  *(v41 + 36) = v50;
                  *(v41 + 40) = v52;
                  v32 = swift_task_alloc();
                  *(v64 + 5800) = v32;
                  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGMd, &_sSDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGMR);
                  v34.n128_f64[0] = v40;
                  *v32 = *(v64 + 4672);
                  v32[1] = NightingalePFLRunner.run(task:useCase:context:);

                  return MEMORY[0x2821A2088](v64 + 4856, &async function pointer to partial apply for closure #1 in NightingalePFLRunner.run(task:useCase:context:), v41, v33, v34);
                }
              }

              lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
              swift_allocError();
              *v35 = 14;
              swift_willThrow();
              MEMORY[0x277D82BD8](v49);

              MEMORY[0x277D82BD8](v61);
              MEMORY[0x277D82BD8](v56);
            }
          }
        }
      }
    }
  }

  else
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    swift_allocError();
    *v36 = 11;
    swift_willThrow();
  }

  v37 = *(*(v64 + 4672) + 8);

  return v37();
}

{
  v4 = *v1;
  *(v4 + 4672) = *v1;
  *(v4 + 5808) = v0;

  if (v0)
  {
    v2 = NightingalePFLRunner.run(task:useCase:context:);
  }

  else
  {

    v2 = NightingalePFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v4 = *v1;
  *(v4 + 4672) = *v1;
  *(v4 + 5928) = v0;

  if (v0)
  {
    v2 = NightingalePFLRunner.run(task:useCase:context:);
  }

  else
  {

    v2 = NightingalePFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v15 = v0[726];
  v0[584] = v0;

  v1 = v15;
  v0[608] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    if ((*(*(v14 + 5536) + 88))(*(v14 + 5552), *(v14 + 5528)) == *MEMORY[0x277D413F0])
    {
      v10 = *(v14 + 5808);
      v11 = *(v14 + 5784);
      v12 = *(v14 + 5728);
      v13 = *(v14 + 5712);
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      swift_allocError();
      *v2 = 5;
      swift_willThrow();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      MEMORY[0x277D82BD8](v11);

      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);

      goto LABEL_7;
    }

    (*(*(v14 + 5536) + 8))(*(v14 + 5552), *(v14 + 5528));
  }

  else
  {
  }

  v6 = *(v14 + 5808);
  v7 = *(v14 + 5784);
  v8 = *(v14 + 5728);
  v9 = *(v14 + 5712);
  v3 = v6;
  *(v14 + 4872) = v6;
  swift_willThrow();

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  MEMORY[0x277D82BD8](v7);

  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);

LABEL_7:

  v4 = *(*(v14 + 4672) + 8);

  return v4();
}

{
  v15 = v0[741];
  v0[584] = v0;

  v1 = v15;
  v0[676] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    if ((*(*(v14 + 5536) + 88))(*(v14 + 5544), *(v14 + 5528)) == *MEMORY[0x277D413F0])
    {
      v10 = *(v14 + 5928);
      v11 = *(v14 + 5784);
      v12 = *(v14 + 5728);
      v13 = *(v14 + 5712);
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      swift_allocError();
      *v2 = 6;
      swift_willThrow();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      MEMORY[0x277D82BD8](v11);

      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);

      goto LABEL_7;
    }

    (*(*(v14 + 5536) + 8))(*(v14 + 5544), *(v14 + 5528));
  }

  else
  {
  }

  v6 = *(v14 + 5928);
  v7 = *(v14 + 5784);
  v8 = *(v14 + 5728);
  v9 = *(v14 + 5712);
  v3 = v6;
  *(v14 + 5416) = v6;
  swift_willThrow();

  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  MEMORY[0x277D82BD8](v7);

  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);

LABEL_7:

  v4 = *(*(v14 + 4672) + 8);

  return v4();
}

uint64_t closure #1 in NightingalePFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  *(v6 + 148) = a6;
  *(v6 + 140) = a5;
  *(v6 + 132) = a4;
  *(v6 + 96) = a3;
  *(v6 + 88) = a2;
  *(v6 + 80) = a1;
  *(v6 + 56) = v6;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 128) = 0;
  *(v6 + 136) = 0;
  *(v6 + 144) = 0;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  *(v6 + 128) = a4;
  *(v6 + 136) = a5;
  *(v6 + 144) = a6;
  return MEMORY[0x2822009F8](closure #1 in NightingalePFLRunner.run(task:useCase:context:), 0);
}

void *closure #1 in NightingalePFLRunner.run(task:useCase:context:)()
{
  v12 = *(v0 + 140);
  v13 = *(v0 + 132);
  v1 = *(v0 + 88);
  *(v0 + 56) = v0;
  outlined init with copy of HealthDataQuery(v1 + 64, v0 + 16);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  result = __swift_project_boxed_opaque_existential_1((v0 + 16), v10);
  v14 = v13 - v12;
  if (v13 < v12)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = *(v9 + 148);
  v4 = *(v9 + 132);
  v8 = v4 - v3;
  if (v4 < v3)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (v8 < v14)
  {
    return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/ClosedRange.swift", 23, 2, 409, 0);
  }

  v7 = (*(v11 + 16) + **(v11 + 16));
  v5 = swift_task_alloc();
  *(v9 + 104) = v5;
  *v5 = *(v9 + 56);
  v5[1] = closure #1 in NightingalePFLRunner.run(task:useCase:context:);
  v6 = *(v9 + 96);

  return v7(v6, __PAIR64__(v8, v14), v10, v11);
}

uint64_t closure #1 in NightingalePFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = *v2;
  v5[7] = *v2;
  v5[14] = a1;
  v5[15] = v1;

  if (v1)
  {
    v3 = closure #1 in NightingalePFLRunner.run(task:useCase:context:);
  }

  else
  {
    v3 = closure #1 in NightingalePFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t closure #1 in NightingalePFLRunner.run(task:useCase:context:)()
{
  v1 = v0[14];
  v2 = v0[10];
  v0[7] = v0;
  *v2 = v1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = *(v0[7] + 8);

  return v3();
}

{
  *(v0 + 56) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(*(v3 + 56) + 8);

  return v1();
}

uint64_t implicit closure #1 in NightingalePFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  swift_beginAccess();
  v4 = *(a1 + 16);

  swift_endAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V5start_AB3endtMd, &_ss6UInt32V5start_AB3endtMR);
  v5 = MEMORY[0x25F8895B0](v4, v1);

  return v5;
}

uint64_t closure #2 in NightingalePFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6)
{
  *(v6 + 164) = a6;
  *(v6 + 156) = a5;
  *(v6 + 148) = a4;
  *(v6 + 140) = a3;
  *(v6 + 80) = a2;
  *(v6 + 72) = a1;
  *(v6 + 56) = v6;
  *(v6 + 64) = 0;
  *(v6 + 136) = 0;
  *(v6 + 144) = 0;
  *(v6 + 152) = 0;
  *(v6 + 160) = 0;
  *(v6 + 64) = a2;
  *(v6 + 136) = a3;
  *(v6 + 144) = a4;
  *(v6 + 152) = a5;
  *(v6 + 160) = a6;
  return MEMORY[0x2822009F8](closure #2 in NightingalePFLRunner.run(task:useCase:context:), 0);
}

void *closure #2 in NightingalePFLRunner.run(task:useCase:context:)()
{
  v12 = *(v0 + 148);
  v13 = *(v0 + 140);
  v1 = *(v0 + 80);
  *(v0 + 56) = v0;
  outlined init with copy of HealthDataQuery(v1 + 64, v0 + 16);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  result = __swift_project_boxed_opaque_existential_1((v0 + 16), v10);
  v14 = v13 - v12;
  if (v13 < v12)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = *(v9 + 156);
  v4 = *(v9 + 140);
  v8 = v4 - v3;
  if (v4 < v3)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (v8 < v14)
  {
    return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/ClosedRange.swift", 23, 2, 409, 0);
  }

  v7 = (*(v11 + 24) + **(v11 + 24));
  v5 = swift_task_alloc();
  *(v9 + 88) = v5;
  *v5 = *(v9 + 56);
  v5[1] = closure #2 in NightingalePFLRunner.run(task:useCase:context:);
  v6 = *(v9 + 164);

  return v7(__PAIR64__(v8, v14), v6, v10, v11);
}

uint64_t closure #2 in NightingalePFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v5;
  v8[7] = *v5;
  v8[12] = v4;
  v8[13] = a1;
  v8[14] = a2;
  v8[15] = a3;
  v8[16] = a4;

  if (v4)
  {
    v6 = closure #2 in NightingalePFLRunner.run(task:useCase:context:);
  }

  else
  {
    v6 = closure #2 in NightingalePFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t closure #2 in NightingalePFLRunner.run(task:useCase:context:)()
{
  v1 = v0[16];
  v2 = v0[15];
  v3 = v0[14];
  v4 = v0[13];
  v5 = v0[9];
  v0[7] = v0;
  *v5 = v4;
  v5[1] = v3;
  v5[2] = v2;
  v5[3] = v1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v6 = *(v0[7] + 8);

  return v6();
}

{
  *(v0 + 56) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(*(v3 + 56) + 8);

  return v1();
}

void NightingalePFLRunner.runTraining(modelPath:hyperParams:modelType:featureFlow:featureDaySHR:featureNightSHR:featurePSM:featurePSS:featureSWT:featureLabel:sliceSize:numFeatures:labelSize:existingMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, Swift::OpaquePointer *a9, Swift::OpaquePointer *a10, Swift::OpaquePointer *a11, unsigned int a12, uint64_t a13, unsigned int a14, uint64_t a15)
{
  v427 = MEMORY[0x28223BE20](a1, a2);
  v436 = v17;
  v458 = v18;
  v428 = v19;
  v429 = v20;
  v430 = v21;
  v431 = v22;
  v432 = v23;
  v433 = a9;
  v434 = a10;
  v470 = a11;
  v473 = a12;
  v447 = a13;
  v435 = a14;
  v450 = a15;
  v410 = v15;
  v411 = v16;
  v412 = "Fatal error";
  v413 = "Negative value is not representable";
  v414 = "Swift/Integers.swift";
  v415 = "Unexpectedly found nil while unwrapping an Optional value";
  v416 = "NightingaleTraining/NightingalePFLRunner.swift";
  v417 = "Not enough bits to represent the passed value";
  v418 = closure #37 in NightingaleDPFLRunner.run(task:useCase:context:);
  v419 = closure #2 in NightingalePFLRunner.runTraining(modelPath:hyperParams:modelType:featureFlow:featureDaySHR:featureNightSHR:featurePSM:featurePSS:featureSWT:featureLabel:sliceSize:numFeatures:labelSize:existingMetrics:);
  v451 = 8;
  v420 = closure #37 in NightingaleDPFLRunner.run(task:useCase:context:);
  v600 = 0;
  v598 = 0;
  v599 = 0;
  v597 = 0;
  v596 = 0;
  v595 = 0;
  v594 = 0;
  v593 = 0;
  v592 = 0;
  v591 = 0;
  v590 = 0;
  v589 = 0;
  v588 = 0;
  v587 = 0;
  v586 = 0;
  v585 = 0;
  v584 = 0;
  v583 = 0;
  v581 = 0;
  v582 = 0;
  v579 = 0;
  v580 = 0;
  v577 = 0;
  v578 = 0;
  v575 = 0;
  v576 = 0;
  v574 = 0;
  v573 = 0;
  v572 = 0;
  v571 = 0;
  v554 = 0;
  v555 = 0;
  v551 = 0;
  v542 = 0.0;
  v541 = 0;
  v531 = 0;
  v528 = 0;
  v527 = 0;
  v523 = 0;
  v522 = 0;
  v518 = 0;
  v519 = 0;
  v506 = 0;
  v505 = 0;
  v503 = 0;
  v504 = 0;
  v498 = 0;
  v493 = 0;
  v490 = 0.0;
  v487 = 0;
  v421 = 0;
  v422 = type metadata accessor for ShuffleMethod();
  v423 = *(v422 - 8);
  v424 = v422 - 8;
  v425 = (*(v423 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v24);
  v426 = &v157 - v425;
  v437 = type metadata accessor for EspressoFunction();
  v438 = *(v437 - 8);
  v439 = v437 - 8;
  v445 = *(v438 + 64);
  v440 = (v445 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = MEMORY[0x28223BE20](v450, v436);
  v441 = &v157 - v440;
  v442 = (v445 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = MEMORY[0x28223BE20](v25, v26);
  v443 = &v157 - v442;
  v444 = (v445 + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = MEMORY[0x28223BE20](v27, v28);
  v446 = &v157 - v444;
  v448 = (v445 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = MEMORY[0x28223BE20](v29, v30);
  v449 = &v157 - v448;
  v600 = &v157 - v448;
  v598 = v32;
  v599 = v33;
  v597 = v34;
  v596 = v35;
  v595 = v36;
  v594 = v37;
  v593 = v38;
  v592 = v39;
  v591 = v40;
  v590 = v41;
  v589 = v470;
  v588 = v473;
  v587 = v447;
  v586 = v42;
  v585 = v31;
  v584 = v15;

  v583 = v450;
  v453 = NightingaleDPFLRunner.performanceMeasure.getter();
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", v451, 1)._object;
  dispatch thunk of PerformanceMeasure.start(_:)();

  v467 = HyperParams.inputName.getter();
  v468 = v43;
  v581 = v467;
  v582 = v43;
  v454 = HyperParams.labelName.getter();
  v455 = v44;
  v579 = v454;
  v580 = v44;
  v456 = HyperParams.lossName.getter();
  v457 = v45;
  v577 = v456;
  v578 = v45;
  v459 = HyperParams.outputName.getter();
  v460 = v46;
  v575 = v459;
  v576 = v46;
  v461._rawValue = v470->_rawValue;

  v471 = MEMORY[0x277D84CC0];
  v462 = MEMORY[0x25F8895B0](v461._rawValue);
  v574 = v462;

  v47 = HyperParams.batchSize.getter();
  v463 = static HIDPFLUtils.computeEffectiveTrainingSize(_:_:)(v462, v47);
  v464 = v48;
  v573 = v463;
  v572 = v48;
  v465 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySfGtMd, &_sSS_SaySfGtMR);
  v466 = _allocateUninitializedArray<A>(_:)();
  v469 = v49;

  v50 = v468;
  v51 = v469;
  v52 = v470;
  *v469 = v467;
  v51[1] = v50;
  v570 = 0;
  rawValue = v52->_rawValue;

  v474 = MEMORY[0x25F8895B0](rawValue, v471);

  v569 = v473;
  v475 = v474 * v473;
  if ((v474 * v473) >> 64 != v475 >> 63)
  {
    __break(1u);
    goto LABEL_105;
  }

  v409 = v475 * v447;
  if ((v475 * v447) >> 64 != (v475 * v447) >> 63)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v469[2] = Array.init(repeating:count:)();

  v53 = v455;
  v54 = v469;
  v55 = v470;
  v469[3] = v454;
  v54[4] = v53;
  v568 = 0;
  v406 = v55->_rawValue;

  v407 = MEMORY[0x25F8895B0](v406, MEMORY[0x277D84CC0]);

  v567 = v435;
  v408 = v407 * v435;
  if ((v407 * v435) >> 64 != v408 >> 63)
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v469[5] = Array.init(repeating:count:)();
  _finalizeUninitializedArray<A>(_:)();
  v400 = v56;
  v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  v571 = Dictionary.init(dictionaryLiteral:)();

  v402 = v566;
  v566[0] = v467;
  v566[1] = v468;
  v403 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySfGGMd, &_sSDySSSaySfGGMR);
  v404 = Dictionary.subscript.modify();
  v405 = v57;
  if (!v57->_rawValue)
  {
    _assertionFailure(_:_:file:line:flags:)(v412, 11, 2, v415, 57, 2, v416, 46, 2, 518, 0);
    __break(1u);
  }

  transferFeatureToMLInputs(_:_:_:_:)(v429, v405, NightingaleTraining_NightingaleModelFeatureType_Flow, v428);
  v398 = v58;
  v399 = v58;
  if (v58)
  {
    v172 = v399;
    v404();
    outlined destroy of DefaultStringInterpolation();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v284 = v172;
    return;
  }

  v404();
  outlined destroy of DefaultStringInterpolation();

  v564 = v467;
  v565 = v468;
  v395 = Dictionary.subscript.modify();
  v396 = v59;
  if (!v59->_rawValue)
  {
    _assertionFailure(_:_:file:line:flags:)(v412, 11, 2, v415, 57, 2, v416, 46, 2, 519, 0);
    __break(1u);
  }

  transferFeatureToMLInputs(_:_:_:_:)(v434, v396, NightingaleTraining_NightingaleModelFeatureType_SWT, v428);
  v393 = v60;
  v394 = v60;
  if (v60)
  {
    v171 = v394;
    v395();
    outlined destroy of DefaultStringInterpolation();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v284 = v171;
    return;
  }

  v395();
  outlined destroy of DefaultStringInterpolation();

  v562 = v467;
  v563 = v468;
  v391 = Dictionary.subscript.modify();
  v392 = v61;
  if (!v61->_rawValue)
  {
    _assertionFailure(_:_:file:line:flags:)(v412, 11, 2, v415, 57, 2, v416, 46, 2, 520, 0);
    __break(1u);
  }

  transferFeatureToMLInputs(_:_:_:_:)(v430, v392, NightingaleTraining_NightingaleModelFeatureType_DaySHR10, v428);
  v389 = v62;
  v390 = v62;
  if (v62)
  {
    v170 = v390;
    v391();
    outlined destroy of DefaultStringInterpolation();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v284 = v170;
    return;
  }

  v391();
  outlined destroy of DefaultStringInterpolation();

  v560 = v467;
  v561 = v468;
  v387 = Dictionary.subscript.modify();
  v388 = v63;
  if (!v63->_rawValue)
  {
    _assertionFailure(_:_:file:line:flags:)(v412, 11, 2, v415, 57, 2, v416, 46, 2, 521, 0);
    __break(1u);
  }

  transferFeatureToMLInputs(_:_:_:_:)(v431, v388, NightingaleTraining_NightingaleModelFeatureType_NightSHR10, v428);
  v385 = v64;
  v386 = v64;
  if (v64)
  {
    v169 = v386;
    v387();
    outlined destroy of DefaultStringInterpolation();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v284 = v169;
    return;
  }

  v387();
  outlined destroy of DefaultStringInterpolation();

  v558 = v467;
  v559 = v468;
  v383 = Dictionary.subscript.modify();
  v384 = v65;
  if (!v65->_rawValue)
  {
    _assertionFailure(_:_:file:line:flags:)(v412, 11, 2, v415, 57, 2, v416, 46, 2, 522, 0);
    __break(1u);
  }

  transferFeatureToMLInputs(_:_:_:_:)(v432, v384, NightingaleTraining_NightingaleModelFeatureType_PSM, v428);
  v381 = v66;
  v382 = v66;
  if (v66)
  {
    v168 = v382;
    v383();
    outlined destroy of DefaultStringInterpolation();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v284 = v168;
    return;
  }

  v383();
  outlined destroy of DefaultStringInterpolation();

  v556 = v467;
  v557 = v468;
  v379 = Dictionary.subscript.modify();
  v380 = v67;
  if (!v67->_rawValue)
  {
    _assertionFailure(_:_:file:line:flags:)(v412, 11, 2, v415, 57, 2, v416, 46, 2, 523, 0);
    __break(1u);
  }

  transferFeatureToMLInputs(_:_:_:_:)(v433, v380, NightingaleTraining_NightingaleModelFeatureType_PSS, v428);
  v377 = v68;
  v378 = v68;
  if (v68)
  {
    v167 = v378;
    v379();
    outlined destroy of DefaultStringInterpolation();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v284 = v167;
    return;
  }

  v379();
  outlined destroy of DefaultStringInterpolation();
  v372 = HyperParams.labelEncodingType.getter();
  v373 = v69;
  v554 = v372;
  v555 = v69;
  v70 = HyperParams.labelEncodingTypeOnehot.unsafeMutableAddressor();
  v374 = *v70;
  v375 = *(v70 + 1);

  v376 = MEMORY[0x25F889340](v372, v373, v374, v375);

  if ((v376 & 1) == 0)
  {
    v72 = HyperParams.labelEncodingTypeRegression.unsafeMutableAddressor();
    v367 = *v72;
    v368 = *(v72 + 1);

    v369 = MEMORY[0x25F889340](v372, v373, v367, v368);

    if ((v369 & 1) == 0)
    {
      goto LABEL_39;
    }

    v73 = HyperParams.modelMaxNumDaysToNextPeriod.getter();
    v366 = v73 - 1;
    if (__OFSUB__(v73, 1))
    {
      goto LABEL_109;
    }

    v481 = v366;
    if (v366 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)(v412, 11, 2, v413, 35, 2, v414, 20, 2, 3049, 0);
      __break(1u);
    }

    v480 = -1;
    if (v481 > 0xFFFFFFFFLL)
    {
      _assertionFailure(_:_:file:line:flags:)(v412, 11, 2, v417, 45, 2, v414, 20, 2, 3053, 0);
      __break(1u);
    }

    else
    {
      v363 = v481;
      v478 = v454;
      v479 = v455;
      v364 = Dictionary.subscript.modify();
      v365 = v75;
      if (v75->_rawValue)
      {
        goto LABEL_38;
      }
    }

    _assertionFailure(_:_:file:line:flags:)(v412, 11, 2, v415, 57, 2, v416, 46, 2, 528, 0);
    __break(1u);
LABEL_38:
    transferLabelToRegression(_:_:_:_:)(v470, v365, v435, v363);
    v364();
    outlined destroy of DefaultStringInterpolation();
    goto LABEL_39;
  }

  v476 = v454;
  v477 = v455;
  v370 = Dictionary.subscript.modify();
  v371 = v71;
  if (!v71->_rawValue)
  {
    _assertionFailure(_:_:file:line:flags:)(v412, 11, 2, v415, 57, 2, v416, 46, 2, 526, 0);
    __break(1u);
  }

  transferLabelToOnehotEncode(_:_:_:)(v470, v371, v435);
  v370();
  outlined destroy of DefaultStringInterpolation();
LABEL_39:
  v358 = HyperParams.modelRepresentation.getter();
  v361 = v76;
  v77 = HyperParams.modelRepresentationEIR.unsafeMutableAddressor();
  v359 = *v77;
  v360 = *(v77 + 1);

  v362 = MEMORY[0x25F889340](v358, v361, v359, v360);

  if (v362)
  {
    v357 = type metadata accessor for EspressoEIRTrainer();
    NightingaleDPFLRunner.performanceMeasure.getter();
    v78 = EspressoEIRTrainer.__allocating_init(_:)();
    v482[3] = v357;
    v482[4] = MEMORY[0x277D413C0];
    v482[0] = v78;
    outlined init with take of HealthDataQuery(v482, v553);
  }

  else
  {
    v356 = type metadata accessor for EspressoMILTrainer();
    NightingaleDPFLRunner.performanceMeasure.getter();
    v79 = EspressoMILTrainer.__allocating_init(_:)();
    v552[3] = v356;
    v552[4] = MEMORY[0x277D413D0];
    v552[0] = v79;
    outlined init with take of HealthDataQuery(v552, v553);
  }

  v355 = HyperParams.evalBeforeTrain.getter();
  v551 = v355 & 1;
  if (v355)
  {
    v353 = _allocateUninitializedArray<A>(_:)();
    v352 = v80;
    static EspressoFunction.evaluation.getter();
    static EspressoFunction.training.getter();
    _finalizeUninitializedArray<A>(_:)();
    v354 = v81;
    lazy protocol witness table accessor for type EspressoFunction and conformance EspressoFunction();
    SetAlgebra<>.init(arrayLiteral:)();
  }

  else
  {
    static EspressoFunction.training.getter();
  }

  v337 = v548;
  outlined init with copy of HealthDataQuery(v553, v548);
  v347 = v549;
  v348 = v550;
  v344 = __swift_project_boxed_opaque_existential_1(v337, v549);
  v340 = 2;
  v343 = MEMORY[0x277D837D0];
  v338 = _allocateUninitializedArray<A>(_:)();
  v339 = v82;

  v83 = v468;
  v84 = v339;
  *v339 = v467;
  v84[1] = v83;

  v85 = v455;
  v86 = v339;
  v339[2] = v454;
  v86[3] = v85;
  _finalizeUninitializedArray<A>(_:)();
  v345 = v87;
  v341 = _allocateUninitializedArray<A>(_:)();
  v342 = v88;

  v89 = v457;
  v90 = v342;
  *v342 = v456;
  v90[1] = v89;

  v91 = v460;
  v92 = v342;
  v342[2] = v459;
  v92[3] = v91;
  _finalizeUninitializedArray<A>(_:)();
  v346 = v93;
  v94 = HyperParams.weightNames.getter();
  v95 = v377;
  v349 = v94;
  dispatch thunk of EspressoTrainer.load(path:functions:inputs:outputs:weights:)();
  v350 = v95;
  v351 = v95;
  if (v95)
  {
    v166 = v351;

    __swift_destroy_boxed_opaque_existential_1(v548);
    (*(v438 + 8))(v449, v437);
    __swift_destroy_boxed_opaque_existential_1(v553);

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v284 = v166;
    return;
  }

  __swift_destroy_boxed_opaque_existential_1(v548);
  v331 = v545;
  outlined init with copy of HealthDataQuery(v553, v545);
  v333 = v546;
  v334 = v547;
  v332 = __swift_project_boxed_opaque_existential_1(v331, v546);
  v96 = HyperParams.learningRate.getter();
  v97 = v350;
  v543 = v96;
  v544 = 0;
  dispatch thunk of EspressoTrainer.finalize(batchSize:learningRate:)();
  v335 = v97;
  v336 = v97;
  if (v97)
  {
    v165 = v336;
    __swift_destroy_boxed_opaque_existential_1(v545);
    (*(v438 + 8))(v449, v437);
    __swift_destroy_boxed_opaque_existential_1(v553);

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v284 = v165;
    return;
  }

  __swift_destroy_boxed_opaque_existential_1(v545);
  v542 = 0.0;
  if ((v355 & 1) == 0)
  {
    v259 = 0.0;
    v260 = v335;
    goto LABEL_67;
  }

  v322 = v508;
  outlined init with copy of HealthDataQuery(v553, v508);
  v323 = v509;
  v324 = v510;
  v325 = __swift_project_boxed_opaque_existential_1(v322, v509);
  v326 = v571;

  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SitMd, &_sSS_SitMR);
  v328 = _allocateUninitializedArray<A>(_:)();
  v329 = v98;

  v99 = v468;
  v100 = v329;
  v101 = v473;
  v102 = v447;
  *v329 = v467;
  v100[1] = v99;
  v507 = v101;
  v330 = v102 * v101;
  if ((v102 * v101) >> 64 == v330 >> 63)
  {
    v329[2] = v330;

    v103 = v455;
    v104 = v329;
    v105 = v435;
    v329[3] = v454;
    v104[4] = v103;
    v104[5] = v105;
    _finalizeUninitializedArray<A>(_:)();
    v106 = Dictionary.init(dictionaryLiteral:)();
    v107 = v335;
    v318 = v106;
    v108 = dispatch thunk of EspressoTrainer.eval(_:featureSizes:numSamples:)();
    v319 = v107;
    v320 = v108;
    v321 = v107;
    if (v107)
    {
      v164 = v321;

      __swift_destroy_boxed_opaque_existential_1(v508);
      (*(v438 + 8))(v449, v437);
      __swift_destroy_boxed_opaque_existential_1(v553);

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v284 = v164;
      return;
    }

    v312 = v320;

    v506 = v312;
    __swift_destroy_boxed_opaque_existential_1(v508);
    v505 = Array.init()();

    v502 = v312;
    v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSSaySfGGGMd, &_sSaySDySSSaySfGGGMR);
    lazy protocol witness table accessor for type [[String : [Float]]] and conformance [A]();
    Collection<>.makeIterator()();
    v314 = 0.0;
    v315 = 0.0;
    v316 = 0.0;
    for (i = v319; ; i = v305)
    {
      v305 = i;
      v306 = v316;
      v308 = v315;
      v307 = v314;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySDySSSaySfGGGGMd, &_ss16IndexingIteratorVySaySDySSSaySfGGGGMR);
      IndexingIterator.next()();
      v309 = v501;
      v310 = v307;
      v311 = v308;
      if (!v501)
      {
        break;
      }

      v304 = v309;
      v301 = v309;
      v493 = v309;

      v302 = v491;
      v491[0] = v456;
      v491[1] = v457;
      MEMORY[0x25F8891D0](&v492);
      outlined destroy of DefaultStringInterpolation();
      v303 = v492;
      if (v492)
      {
        v300 = v303;
        v295 = v303;
        v485 = v303;
        lazy protocol witness table accessor for type [Float] and conformance [A]();
        Collection.first.getter();
        v297 = v483;
        v296 = v484;

        v298 = v297;
        v299 = v296;
      }

      else
      {
        v298 = 0.0;
        v299 = 1;
      }

      v293 = v298;
      v294 = v301;
      if (v299)
      {
        v280 = v294;
        lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
        v281 = swift_allocError();
        *v110 = 10;
        swift_willThrow();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        (*(v438 + 8))(v449, v437);
        __swift_destroy_boxed_opaque_existential_1(v553);

        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        v284 = v281;
        return;
      }

      v292 = v293;
      v490 = v293;
      v288 = v306 + v293;
      v542 = v306 + v293;

      v289 = v488;
      v488[0] = v459;
      v488[1] = v460;
      MEMORY[0x25F8891D0](&v489);
      outlined destroy of DefaultStringInterpolation();
      v290 = v489;
      v291 = v301;
      if (!v489)
      {
        v282 = v291;
        lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
        v283 = swift_allocError();
        *v109 = 26;
        swift_willThrow();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        (*(v438 + 8))(v449, v437);
        __swift_destroy_boxed_opaque_existential_1(v553);

        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        v284 = v283;
        return;
      }

      v287 = v290;
      v286 = v290;
      v487 = v290;

      v285 = &v486;
      v486 = v286;
      lazy protocol witness table accessor for type [Float] and conformance [A]();
      Array.append<A>(contentsOf:)();

      v314 = v288;
      v315 = v288;
      v316 = v288;
    }

    v278 = v311;
    v279 = v310;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v111 = MEMORY[0x25F8895B0](v312, v403);
    if (v111 <= 0)
    {
      v277 = v279;
    }

    else
    {
      v111 = MEMORY[0x25F8895B0](v312, v403);
      v542 = v278 / v111;
      v277 = v542;
    }

    v270 = v277;
    HKQueryOptions.init(rawValue:)(v111);
    v271 = HyperParams.modelMaxNumDaysToNextPeriod.getter();
    v272 = HyperParams.labelEncodingType.getter();
    v273 = v112;
    v113 = HyperParams.intervalCorrectionFactor.getter();
    v114 = v305;
    v115 = EvalMetricsProcessor.process(labels:outputs:modelMaxNumDaysToNextPeriod:labelEncodingType:intervalCorrectionFactor:)(v470, &v505, v271, v272, v273, v113);
    v274 = v114;
    v275 = v115;
    v276 = v114;
    if (v114)
    {
      v163 = v276;

      outlined destroy of [(start: UInt32, end: UInt32)]();

      (*(v438 + 8))(v449, v437);
      __swift_destroy_boxed_opaque_existential_1(v553);

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v284 = v163;
      return;
    }

    v261._rawValue = v275;

    v498 = v261._rawValue;
    v262 = &v497;
    EvalMetricsProcessor.calculateMetrics(labels:outputs:)(&v497, v470, v261);
    v263 = v499;
    memcpy(v499, v262, 0x98uLL);
    v264 = v499[0];
    v265 = &v499[1];
    v266 = 144;
    memcpy(__dst, &v499[1], sizeof(__dst));
    v499[19] = v499[0];
    memcpy(v500, &v499[1], sizeof(v500));
    v116 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PreTraining", 0xBuLL, 1);
    v267 = v116._object;
    v268 = AggMetrics.toDictionary(prefix:)(v116._countAndFlagsBits, v116._object);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, _sSDySSypGMR);
    v117 = v274;
    Dictionary.merge(_:uniquingKeysWith:)();
    v269 = v117;
    if (v117)
    {
      __break(1u);
      goto LABEL_98;
    }

    v258 = v494;
    outlined init with copy of HealthDataQuery(v553, v494);
    v256 = v495;
    v257 = v496;
    __swift_project_boxed_opaque_existential_1(v258, v495);
    static EspressoFunction.evaluation.getter();
    dispatch thunk of EspressoTrainer.unload(functions:)();
    (*(v438 + 8))(v446, v437);
    __swift_destroy_boxed_opaque_existential_1(v258);
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    v259 = v270;
    v260 = v269;
LABEL_67:
    v250 = v260;
    v248 = v259;
    v249 = v538;
    outlined init with copy of HealthDataQuery(v553, v538);
    v251 = v539;
    v252 = v540;
    __swift_project_boxed_opaque_existential_1(v249, v539);
    static EspressoFunction.training.getter();
    v118 = v250;
    v119 = dispatch thunk of EspressoTrainer.extractWeights(function:)();
    v253 = v118;
    v254 = v119;
    v255 = v118;
    if (!v118)
    {
      v238 = v254;
      v236 = *(v438 + 8);
      v237 = v438 + 8;
      v236(v443, v437);
      v541 = v238;
      __swift_destroy_boxed_opaque_existential_1(v538);
      v239 = v535;
      outlined init with copy of HealthDataQuery(v553, v535);
      v240 = v536;
      v241 = v537;
      v242 = __swift_project_boxed_opaque_existential_1(v239, v536);
      v243 = v571;

      v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SitMd, &_sSS_SitMR);
      v245 = _allocateUninitializedArray<A>(_:)();
      v246 = v120;

      v121 = v468;
      v122 = v246;
      v123 = v473;
      v124 = v447;
      *v246 = v467;
      v122[1] = v121;
      v247 = v124 * v123;
      if ((v124 * v123) >> 64 == (v124 * v123) >> 63)
      {
        v246[2] = v247;

        v125 = v455;
        v126 = v246;
        v127 = v435;
        v246[3] = v454;
        v126[4] = v125;
        v126[5] = v127;
        _finalizeUninitializedArray<A>(_:)();
        v234 = Dictionary.init(dictionaryLiteral:)();
        v235 = HyperParams.epochs.getter();
        if (v235 < 0)
        {
          _assertionFailure(_:_:file:line:flags:)(v412, 11, 2, v413, 35, 2, v414, 20, 2, 3049, 0);
          __break(1u);
        }

        if (v235 > 0xFFFFFFFFLL)
        {
          _assertionFailure(_:_:file:line:flags:)(v412, 11, 2, v417, 45, 2, v414, 20, 2, 3053, 0);
          __break(1u);
        }

        else
        {
          v231 = v235;
          HyperParams.inputShuffleMethod.getter(v426);
          HyperParams.fullBatchTraining.getter();
          v128 = v253;
          dispatch thunk of EspressoTrainer.train(_:featureSizes:numSamples:epochs:shuffleMethod:fullBatch:)();
          v232 = v128;
          v233 = v128;
          if (v128)
          {
            v159 = v233;
            (*(v423 + 8))(v426, v422);

            __swift_destroy_boxed_opaque_existential_1(v535);
            outlined destroy of [(start: UInt32, end: UInt32)]();
            v236(v449, v437);
            __swift_destroy_boxed_opaque_existential_1(v553);

            outlined destroy of [(start: UInt32, end: UInt32)]();

            outlined destroy of [(start: UInt32, end: UInt32)]();
            v284 = v159;
            return;
          }
        }

        (*(v423 + 8))(v426, v422);

        __swift_destroy_boxed_opaque_existential_1(v535);
        v227 = MEMORY[0x277D837D0];
        v228 = MEMORY[0x277D837E0];
        v129 = default argument 0 of Dictionary.removeAll(keepingCapacity:)();
        Dictionary.removeAll(keepingCapacity:)(v129 & 1);
        v225 = v532;
        outlined init with copy of HealthDataQuery(v553, v532);
        v223 = v533;
        v224 = v534;
        __swift_project_boxed_opaque_existential_1(v225, v533);
        static EspressoFunction.training.getter();
        v226 = dispatch thunk of EspressoTrainer.extractOutputs(function:)();
        v236(v446, v437);
        v531 = v226;
        __swift_destroy_boxed_opaque_existential_1(v225);

        v229 = v529;
        v529[0] = v456;
        v529[1] = v457;
        MEMORY[0x25F8891D0](&v530);
        outlined destroy of DefaultStringInterpolation();
        v230 = v530;
        if (v530)
        {
          v222 = v230;
          v217 = v230;
          v513 = v230;
          lazy protocol witness table accessor for type [Float] and conformance [A]();
          Collection.first.getter();
          v219 = v511;
          v218 = v512;

          v220 = v219;
          v221 = v218;
        }

        else
        {
          v220 = 0;
          v221 = 1;
        }

        v216 = v220;
        if (v221)
        {
          lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
          v173 = swift_allocError();
          *v156 = 10;
          swift_willThrow();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          v236(v449, v437);
          __swift_destroy_boxed_opaque_existential_1(v553);

          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          v284 = v173;
          return;
        }

        v215 = v216;
        v208 = v216;
        v528 = v216;
        v209 = v524;
        outlined init with copy of HealthDataQuery(v553, v524);
        v210 = v525;
        v211 = v526;
        __swift_project_boxed_opaque_existential_1(v209, v525);
        static EspressoFunction.training.getter();
        v130 = v232;
        v131 = dispatch thunk of EspressoTrainer.extractWeights(function:)();
        v212 = v130;
        v213 = v131;
        v214 = v130;
        if (v130)
        {
          v158 = v214;
          v236(v441, v437);
          __swift_destroy_boxed_opaque_existential_1(v524);

          outlined destroy of [(start: UInt32, end: UInt32)]();
          v236(v449, v437);
          __swift_destroy_boxed_opaque_existential_1(v553);

          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          v284 = v158;
          return;
        }

        v198 = v213;
        v236(v441, v437);
        v206 = &v527;
        v527 = v198;
        __swift_destroy_boxed_opaque_existential_1(v524);
        static HIDPFLUtils.inplaceSub(_:_:)(v206, &v541);
        v200 = NightingaleDPFLRunner.performanceMeasure.getter();
        v202 = 1;
        v199 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", 8uLL, 1)._object;
        dispatch thunk of PerformanceMeasure.finish(_:)();
        v201 = v132;

        v523 = v201;
        v204 = NightingaleDPFLRunner.performanceMeasure.getter();
        v203 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginE2E", 9uLL, v202 & 1)._object;
        dispatch thunk of PerformanceMeasure.finish(_:)();
        v205 = v133;

        v522 = v205;
        NightingalePFLRunner.sendLocation(_:hyperParams:)(8, v458);
        v134 = v212;
        _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v419, 0, v401, MEMORY[0x277CC9318], MEMORY[0x277D84A98], MEMORY[0x277D84AC0], v397, &v520);
        v207 = v134;
        if (v134)
        {
          __break(1u);
        }

        else
        {
          v184 = v520;
          v185 = v521;
          v518 = v520;
          v519 = v521;
          v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
          v194 = _allocateUninitializedArray<A>(_:)();
          v192 = v135;
          v136 = NightingalePFLRunner.keyMetricsTrainingDurationS.unsafeMutableAddressor();
          outlined init with copy of String(v136, v192);
          v137 = v201;
          v138 = v192;
          v187 = MEMORY[0x277D839F8];
          v192[5] = MEMORY[0x277D839F8];
          v138[2] = v137;
          v186 = v138 + 6;
          v139 = NightingalePFLRunner.keyMetricsE2EDurationS.unsafeMutableAddressor();
          outlined init with copy of String(v139, v186);
          v140 = v205;
          v141 = v192;
          v192[11] = v187;
          v141[8] = v140;
          v188 = v141 + 12;
          v142 = NightingalePFLRunner.keyMetricsLoss.unsafeMutableAddressor();
          outlined init with copy of String(v142, v188);
          v143 = v208;
          v144 = v192;
          v191 = MEMORY[0x277D83A90];
          v192[17] = MEMORY[0x277D83A90];
          *(v144 + 28) = v143;
          v189 = v144 + 18;
          v145 = NightingalePFLRunner.keyNumSlices.unsafeMutableAddressor();
          outlined init with copy of String(v145, v189);
          v146 = v463;
          v147 = v192;
          v192[23] = MEMORY[0x277D83B88];
          v147[20] = v146;
          v190 = v147 + 24;
          v148 = NightingalePFLRunner.keyMetricsLossBeforeTraining.unsafeMutableAddressor();
          outlined init with copy of String(v148, v190);
          v149 = v192;
          v150 = v248;
          v192[29] = v191;
          v149[52] = v150;
          _finalizeUninitializedArray<A>(_:)();
          v195 = Dictionary.init(dictionaryLiteral:)();
          v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, _sSDySSypGMR);
          v152 = v207;
          v196 = v151;
          Dictionary.merge(_:uniquingKeysWith:)();
          v197 = v152;
          if (!v152)
          {
            if (HyperParams.collectL2Norm.getter())
            {
              v153 = NightingalePFLRunner.keyMetricsL2Norm.unsafeMutableAddressor();
              v182 = *v153;
              v183 = *(v153 + 1);

              v180 = v527;

              static PFLStats.l2Norm(_:)();
              v181 = v154;

              v517 = MEMORY[0x277D83A90];
              v516[0] = v181;
              v514 = v182;
              v515 = v183;
              Dictionary.subscript.setter();
            }

            v155 = v197;
            v177 = v583;

            static HIDPFLUtils.checkMetrics(_:)(v177);
            v178 = v155;
            v179 = v155;
            if (!v155)
            {

              type metadata accessor for PFLTaskResult();
              v175 = &v583;
              v174 = v583;

              outlined copy of Data._Representation(v184, v185);
              v176 = PFLTaskResult.__allocating_init(json:vector:)();
              outlined consume of Data._Representation(v184, v185);
              outlined destroy of [(start: UInt32, end: UInt32)]();

              outlined destroy of [(start: UInt32, end: UInt32)]();
              v236(v449, v437);
              __swift_destroy_boxed_opaque_existential_1(v553);

              outlined destroy of [(start: UInt32, end: UInt32)]();

              outlined destroy of [(start: UInt32, end: UInt32)]();
              return;
            }

            goto LABEL_103;
          }
        }

        __break(1u);
LABEL_103:
        v157 = v179;

        outlined consume of Data._Representation(v184, v185);
        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        v236(v449, v437);
        __swift_destroy_boxed_opaque_existential_1(v553);

        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        v284 = v157;
        return;
      }

      goto LABEL_107;
    }

LABEL_98:
    v162 = v255;
    v161 = *(v438 + 8);
    v160 = v438 + 8;
    v161(v443, v437);
    __swift_destroy_boxed_opaque_existential_1(v538);
    v161(v449, v437);
    __swift_destroy_boxed_opaque_existential_1(v553);

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v284 = v162;
    return;
  }

LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
}

uint64_t closure #2 in NightingalePFLRunner.runTraining(modelPath:hyperParams:modelType:featureFlow:featureDaySHR:featureNightSHR:featurePSM:featurePSS:featureSWT:featureLabel:sliceSize:numFeatures:labelSize:existingMetrics:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = MEMORY[0x25F888AB0](*a1, a1[1], MEMORY[0x277D83A90]);
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF@<X0>(void (*a1)(void *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v17 = a8;
  v18 = a1;
  v19 = a2;
  v30 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v24 = a7;
  v33[4] = a4;
  v33[3] = a5;
  v25 = *(a5 - 8);
  v26 = a5 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a3, a2);
  v28 = &v10 - v27;
  Array._makeMutableAndUnique()();
  v31 = *v29;
  v32 = *(v30 + 16);
  v33[2] = v32;
  if (_swift_isClassOrObjCExistentialType())
  {
    v16 = v31 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v16 = v31;
  }

  v14 = *(v16 + 16);
  v15 = *v29;
  if (_swift_isClassOrObjCExistentialType())
  {
    v13 = v15 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v13 = v15;
  }

  v8 = v23;
  v11 = v13 + ((*(*(v32 - 8) + 80) + 32) & ~*(*(v32 - 8) + 80));
  v33[0] = v11;
  v33[1] = v14;
  v18(v33, v28);
  v12 = v8;
  if (v8)
  {
    (*(v25 + 32))(v24, v28, v21);
  }

  return _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lF(v33, v11, v14, v29);
}

uint64_t NightingalePFLRunner.runDemographics(dispatchGroup:hyperParams:modelPath:cycleStats:daySHR10CountStats:numberOfSlices:age:existingMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v252 = a1;
  v253 = a2;
  v254 = a3;
  v255 = a4;
  v260 = a9;
  v275 = a12;
  v244 = closure #2 in NightingalePFLRunner.runTraining(modelPath:hyperParams:modelType:featureFlow:featureDaySHR:featureNightSHR:featurePSM:featurePSS:featureSWT:featureLabel:sliceSize:numFeatures:labelSize:existingMetrics:);
  v245 = closure #37 in NightingaleDPFLRunner.run(task:useCase:context:);
  v341 = 0;
  v340 = 0;
  v338 = 0;
  v339 = 0;
  v336 = 0;
  memset(v337, 0, 13);
  memset(v335, 0, 13);
  v334 = 0;
  v332 = 0;
  v333 = 0;
  v331 = 0;
  v330 = 0;
  v329 = 0;
  v328 = 0;
  v327 = 0;
  v326 = 0;
  v325 = 0;
  v321 = 0.0;
  v320 = 0;
  v318 = 0;
  v319 = 0;
  v316 = 0;
  v317 = 0;
  v312 = 0;
  v313 = 0;
  v308 = 0;
  v300 = 0.0;
  v299 = 0;
  v297 = 0;
  v290 = 0;
  v286 = 0;
  v285 = 0;
  v281 = 0;
  v282 = 0;
  v280 = 0;
  v347 = a5;
  v273 = a5;
  v262 = BYTE4(a5);
  v346 = a6;
  v263 = a6;
  v264 = BYTE4(a6);
  v345 = a7;
  v256 = a7;
  v276 = BYTE4(a7);
  v344 = a8;
  v277 = a8;
  v257 = BYTE4(a8);
  v343 = a10;
  v258 = a10;
  v259 = BYTE4(a10);
  v342 = a11;
  v261 = *&a11;
  v274 = BYTE4(a11);
  v246 = 0;
  v247 = type metadata accessor for ShuffleMethod();
  v248 = *(v247 - 8);
  v249 = v247 - 8;
  v250 = (*(v248 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v13);
  v251 = &v105 - v250;
  v14 = type metadata accessor for EspressoFunction();
  v15 = v256;
  v265 = v14;
  v266 = *(v14 - 8);
  v267 = v14 - 8;
  v271 = *(v266 + 64);
  v268 = (v271 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x28223BE20](v264, v263);
  v269 = &v105 - v268;
  v270 = (v271 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = MEMORY[0x28223BE20](v16, v17);
  v272 = &v105 - v270;
  v20 = MEMORY[0x28223BE20](v18, v19);
  v278 = &v105 - v21;
  v341 = v22;
  v340 = v23;
  v338 = v24;
  v339 = v25;
  LODWORD(v336) = v273;
  BYTE4(v336) = v26 & 1;
  LODWORD(v337[0]) = v27;
  BYTE4(v337[0]) = v20 & 1;
  LODWORD(v337[1]) = v15;
  BYTE4(v337[1]) = v276 & 1;
  LODWORD(v335[0]) = v277;
  BYTE4(v335[0]) = v28 & 1;
  LODWORD(v335[1]) = v29;
  BYTE4(v335[1]) = v30 & 1;
  v334 = v31;
  v332 = v32;
  v333 = v274 & 1;
  v331 = v275;
  v330 = v12;
  if (v26 & 1) != 0 || (v241 = v273, (v240 = v241, v329 = v241, (v264) || (v239 = v263, v238 = v239, v328 = v239, (v276)))
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v113 = swift_allocError();
    *v104 = 20;
    swift_willThrow();
    v115 = v113;
  }

  else
  {
    v237 = v256;
    v236 = v237;
    v327 = v237;
    if (v257 & 1) != 0 || (v235 = v277, v234 = v235, v326 = v235, (v259))
    {
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v114 = swift_allocError();
      *v103 = 21;
      swift_willThrow();
      v115 = v114;
    }

    else
    {
      v233 = v258;
      v224 = v258;
      v325 = v258;
      v226 = NightingaleDPFLRunner.performanceMeasure.getter();
      object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("BMIQuery", 8uLL, 1)._object;
      dispatch thunk of PerformanceMeasure.start(_:)();

      v227 = v322;
      outlined init with copy of HealthDataQuery(v242 + 64, v322);
      v228 = v323;
      v229 = v324;
      __swift_project_boxed_opaque_existential_1(v227, v323);
      v33 = v243;
      v34 = (*(v229 + 48))(v252, v253, v228);
      v230 = v33;
      v231 = v34;
      v232 = v33;
      if (v33)
      {
        v112 = v232;
        __swift_destroy_boxed_opaque_existential_1(v322);
        v115 = v112;
      }

      else
      {
        v207 = v231;
        v321 = v231;
        __swift_destroy_boxed_opaque_existential_1(v322);
        v209 = NightingaleDPFLRunner.performanceMeasure.getter();
        v211 = 8;
        v212 = 1;
        v208 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("BMIQuery", 8uLL, 1)._object;
        dispatch thunk of PerformanceMeasure.finish(_:)();
        v210 = v35;

        v320 = v210;
        NightingalePFLRunner.sendLocation(_:hyperParams:)(7, v253);
        v214 = NightingaleDPFLRunner.performanceMeasure.getter();
        v213 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", v211, v212 & 1)._object;
        dispatch thunk of PerformanceMeasure.start(_:)();

        v215 = HyperParams.inputName.getter();
        v216 = v36;
        v318 = v215;
        v319 = v36;
        v217 = HyperParams.labelName.getter();
        v218 = v37;
        v316 = v217;
        v317 = v37;
        v219 = HyperParams.modelRepresentation.getter();
        v222 = v38;
        v39 = HyperParams.modelRepresentationEIR.unsafeMutableAddressor();
        v220 = *v39;
        v221 = *(v39 + 1);

        v223 = MEMORY[0x25F889340](v219, v222, v220, v221);

        if (v223)
        {
          v206 = type metadata accessor for EspressoEIRTrainer();
          NightingaleDPFLRunner.performanceMeasure.getter();
          v40 = EspressoEIRTrainer.__allocating_init(_:)();
          v279[3] = v206;
          v279[4] = MEMORY[0x277D413C0];
          v279[0] = v40;
          outlined init with take of HealthDataQuery(v279, v315);
        }

        else
        {
          v205 = type metadata accessor for EspressoMILTrainer();
          NightingaleDPFLRunner.performanceMeasure.getter();
          v41 = EspressoMILTrainer.__allocating_init(_:)();
          v314[3] = v205;
          v314[4] = MEMORY[0x277D413D0];
          v314[0] = v41;
          outlined init with take of HealthDataQuery(v314, v315);
        }

        v192 = HyperParams.lossName.getter();
        v193 = v42;
        v312 = v192;
        v313 = v42;
        v188 = v309;
        outlined init with copy of HealthDataQuery(v315, v309);
        v200 = v310;
        v201 = v311;
        v197 = __swift_project_boxed_opaque_existential_1(v188, v310);
        static EspressoFunction.training.getter();
        v191 = 2;
        v196 = MEMORY[0x277D837D0];
        v189 = _allocateUninitializedArray<A>(_:)();
        v190 = v43;

        v44 = v216;
        v45 = v190;
        *v190 = v215;
        v45[1] = v44;

        v46 = v218;
        v47 = v190;
        v190[2] = v217;
        v47[3] = v46;
        _finalizeUninitializedArray<A>(_:)();
        v198 = v48;
        v195 = _allocateUninitializedArray<A>(_:)();
        v194 = v49;

        v50 = v193;
        v51 = v194;
        *v194 = v192;
        v51[1] = v50;
        v52 = HyperParams.outputName.getter();
        v53 = v194;
        v194[2] = v52;
        v53[3] = v54;
        _finalizeUninitializedArray<A>(_:)();
        v199 = v55;
        v56 = HyperParams.weightNames.getter();
        v57 = v230;
        v202 = v56;
        dispatch thunk of EspressoTrainer.load(path:functions:inputs:outputs:weights:)();
        v203 = v57;
        v204 = v57;
        if (v57)
        {
          v111 = v204;

          (*(v266 + 8))(v278, v265);
          __swift_destroy_boxed_opaque_existential_1(v309);

          __swift_destroy_boxed_opaque_existential_1(v315);

          v115 = v111;
        }

        else
        {

          v179 = *(v266 + 8);
          v180 = v266 + 8;
          v179(v278, v265);
          __swift_destroy_boxed_opaque_existential_1(v309);
          v58 = HyperParams.batchSize.getter();
          static HIDPFLUtils.computeEffectiveTrainingSize(_:_:)(1, v58);
          v183 = v59;
          v308 = v59;
          v181 = v305;
          outlined init with copy of HealthDataQuery(v315, v305);
          v184 = v306;
          v185 = v307;
          v182 = __swift_project_boxed_opaque_existential_1(v181, v306);
          v60 = HyperParams.learningRate.getter();
          v61 = v203;
          v303 = v60;
          v304 = 0;
          dispatch thunk of EspressoTrainer.finalize(batchSize:learningRate:)();
          v186 = v61;
          v187 = v61;
          if (v61)
          {
            v110 = v187;
            __swift_destroy_boxed_opaque_existential_1(v305);

            __swift_destroy_boxed_opaque_existential_1(v315);

            v115 = v110;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(v305);
            v301 = v261;
            v302 = v274 & 1;

            if (v302)
            {
              v177 = HyperParams.defaultAge.getter();
              v178 = v177;
            }

            else
            {
              v178 = v301;
            }

            v163 = v178;

            v300 = v163;
            v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySfGtMd, &_sSS_SaySfGtMR);
            v168 = _allocateUninitializedArray<A>(_:)();
            v166 = v62;

            v63 = v216;
            v64 = v166;
            *v166 = v215;
            v64[1] = v63;
            v165 = MEMORY[0x277D83A90];
            _allocateUninitializedArray<A>(_:)();
            v65 = v207;
            v66 = v240;
            v67 = v238;
            v68 = v236;
            v69 = v234;
            v70 = v224;
            v71 = v260;
            v164 = v72;
            *v72 = v163;
            *(v72 + 1) = v65;
            v72[2] = v66;
            v72[3] = v67;
            v72[4] = v68;
            v72[5] = v69;
            v72[6] = v70;
            *(v72 + 7) = v71;
            _finalizeUninitializedArray<A>(_:)();
            v166[2] = v73;

            v74 = v218;
            v75 = v166;
            v166[3] = v217;
            v75[4] = v74;
            v298 = 1.0;
            v166[5] = Array.init(repeating:count:)();
            _finalizeUninitializedArray<A>(_:)();
            v169 = v76;
            v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
            v299 = Dictionary.init(dictionaryLiteral:)();
            v171 = v294;
            outlined init with copy of HealthDataQuery(v315, v294);
            v172 = v295;
            v173 = v296;
            __swift_project_boxed_opaque_existential_1(v171, v295);
            static EspressoFunction.training.getter();
            v77 = v186;
            v78 = dispatch thunk of EspressoTrainer.extractWeights(function:)();
            v174 = v77;
            v175 = v78;
            v176 = v77;
            if (v77)
            {
              v109 = v176;
              v179(v272, v265);
              __swift_destroy_boxed_opaque_existential_1(v294);
              outlined destroy of [(start: UInt32, end: UInt32)]();

              __swift_destroy_boxed_opaque_existential_1(v315);

              v115 = v109;
            }

            else
            {
              v151 = v175;
              v179(v272, v265);
              v297 = v151;
              __swift_destroy_boxed_opaque_existential_1(v294);
              v152 = v291;
              outlined init with copy of HealthDataQuery(v315, v291);
              v159 = v292;
              v160 = v293;
              __swift_project_boxed_opaque_existential_1(v152, v292);
              v156 = v299;

              v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SitMd, &_sSS_SitMR);
              v153 = _allocateUninitializedArray<A>(_:)();
              v154 = v79;

              v80 = v216;
              v81 = v154;
              *v154 = v215;
              v81[1] = v80;
              v81[2] = 8;

              v82 = v218;
              v83 = v154;
              v154[3] = v217;
              v83[4] = v82;
              v158 = 1;
              v83[5] = 1;
              _finalizeUninitializedArray<A>(_:)();
              v157 = Dictionary.init(dictionaryLiteral:)();
              (*(v248 + 104))(v251, *MEMORY[0x277D41360], v247);
              v84 = v174;
              dispatch thunk of EspressoTrainer.train(_:featureSizes:numSamples:epochs:shuffleMethod:fullBatch:)();
              v161 = v84;
              v162 = v84;
              if (v84)
              {
                v108 = v162;
                (*(v248 + 8))(v251, v247);

                __swift_destroy_boxed_opaque_existential_1(v291);
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();

                __swift_destroy_boxed_opaque_existential_1(v315);

                v115 = v108;
              }

              else
              {
                (*(v248 + 8))(v251, v247);

                __swift_destroy_boxed_opaque_existential_1(v291);
                v144 = default argument 0 of Dictionary.removeAll(keepingCapacity:)();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySfGGMd, &_sSDySSSaySfGGMR);
                Dictionary.removeAll(keepingCapacity:)(v144 & 1);
                v145 = v287;
                outlined init with copy of HealthDataQuery(v315, v287);
                v146 = v288;
                v147 = v289;
                __swift_project_boxed_opaque_existential_1(v145, v288);
                static EspressoFunction.training.getter();
                v85 = v161;
                v86 = dispatch thunk of EspressoTrainer.extractWeights(function:)();
                v148 = v85;
                v149 = v86;
                v150 = v85;
                if (v85)
                {
                  v107 = v150;
                  v179(v269, v265);
                  __swift_destroy_boxed_opaque_existential_1(v287);
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();

                  __swift_destroy_boxed_opaque_existential_1(v315);

                  v115 = v107;
                }

                else
                {
                  v133 = v149;
                  v179(v269, v265);
                  v141 = &v290;
                  v290 = v133;
                  __swift_destroy_boxed_opaque_existential_1(v287);
                  static HIDPFLUtils.inplaceSub(_:_:)(v141, &v297);
                  v135 = NightingaleDPFLRunner.performanceMeasure.getter();
                  v137 = 1;
                  v134 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", 8uLL, 1)._object;
                  dispatch thunk of PerformanceMeasure.finish(_:)();
                  v136 = v87;

                  v286 = v136;
                  v139 = NightingaleDPFLRunner.performanceMeasure.getter();
                  v138 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginE2E", 9uLL, v137 & 1)._object;
                  dispatch thunk of PerformanceMeasure.finish(_:)();
                  v140 = v88;

                  v285 = v140;
                  NightingalePFLRunner.sendLocation(_:hyperParams:)(8, v253);
                  v89 = v148;
                  _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v244, 0, v170, MEMORY[0x277CC9318], MEMORY[0x277D84A98], MEMORY[0x277D84AC0], v142, &v283);
                  v143 = v89;
                  if (v89)
                  {
                    __break(1u);
                  }

                  else
                  {
                    v120 = v283;
                    v121 = v284;
                    v281 = v283;
                    v282 = v284;

                    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
                    v127 = _allocateUninitializedArray<A>(_:)();
                    v125 = v90;
                    v91 = NightingalePFLRunner.keyMetricsBMIDurationS.unsafeMutableAddressor();
                    outlined init with copy of String(v91, v125);
                    v92 = v210;
                    v93 = v125;
                    v124 = MEMORY[0x277D839F8];
                    v125[5] = MEMORY[0x277D839F8];
                    v93[2] = v92;
                    v122 = v93 + 6;
                    v94 = NightingalePFLRunner.keyMetricsTrainingDurationS.unsafeMutableAddressor();
                    outlined init with copy of String(v94, v122);
                    v95 = v136;
                    v96 = v125;
                    v125[11] = v124;
                    v96[8] = v95;
                    v123 = v96 + 12;
                    v97 = NightingalePFLRunner.keyMetricsE2EDurationS.unsafeMutableAddressor();
                    outlined init with copy of String(v97, v123);
                    v98 = v125;
                    v99 = v140;
                    v125[17] = v124;
                    v98[14] = v99;
                    _finalizeUninitializedArray<A>(_:)();
                    v128 = MEMORY[0x277D837D0];
                    v129 = MEMORY[0x277D84F70] + 8;
                    v130 = MEMORY[0x277D837E0];
                    Dictionary.init(dictionaryLiteral:)();
                    v100 = v143;
                    v101 = Dictionary.merging(_:uniquingKeysWith:)();
                    v131 = v100;
                    v132 = v101;
                    if (!v100)
                    {
                      v117 = v132;
                      v280 = v132;
                      static HIDPFLUtils.checkMetrics(_:)(v132);
                      v118 = 0;
                      v119 = 0;
                      type metadata accessor for PFLTaskResult();
                      outlined copy of Data._Representation(v120, v121);
                      v116 = PFLTaskResult.__allocating_init(json:vector:)();
                      outlined consume of Data._Representation(v120, v121);
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();

                      __swift_destroy_boxed_opaque_existential_1(v315);

                      return v116;
                    }
                  }

                  __break(1u);
                  v106 = v119;

                  outlined consume of Data._Representation(v120, v121);
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();

                  __swift_destroy_boxed_opaque_existential_1(v315);

                  v115 = v106;
                }
              }
            }
          }
        }
      }
    }
  }

  return v142;
}

void NightingalePFLRunner.runEvals(evalModels:task:hyperParams:modelType:featureFlow:featureDaySHR:featureNightSHR:featurePSM:featurePSS:featureSWT:featureLabel:sliceSize:numFeatures:existingMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, Swift::OpaquePointer *a9, Swift::OpaquePointer *a10, Swift::OpaquePointer *a11, unsigned int a12, uint64_t a13, uint64_t a14)
{
  v506 = MEMORY[0x28223BE20](a1, a2);
  v514 = v16;
  v496 = v17;
  v507 = v18;
  v508 = v19;
  v509 = v20;
  v510 = v21;
  v511 = v22;
  v512 = a9;
  v513 = a10;
  v529 = a11;
  v532 = a12;
  v518 = a13;
  v521 = a14;
  v23 = v14;
  v24 = v17;
  v523 = v23;
  v497 = v15;
  v526 = 8;
  v498 = "Fatal error";
  v499 = "Negative value is not representable";
  v500 = "Swift/Integers.swift";
  v501 = "Unexpectedly found nil while unwrapping an Optional value";
  v502 = "NightingaleTraining/NightingalePFLRunner.swift";
  v503 = "Not enough bits to represent the passed value";
  v504 = closure #37 in NightingaleDPFLRunner.run(task:useCase:context:);
  v505 = closure #37 in NightingaleDPFLRunner.run(task:useCase:context:);
  v630 = 0;
  v629 = 0;
  v628 = 0;
  v627 = 0;
  v626 = 0;
  v625 = 0;
  v624 = 0;
  v623 = 0;
  v622 = 0;
  v621 = 0;
  v620 = 0;
  v619 = 0;
  v618 = 0;
  v617 = 0;
  v616 = 0;
  v615 = 0;
  v614 = 0;
  v613 = 0;
  v612._rawValue = 0;
  v608 = 0;
  v609 = 0;
  v604 = 0;
  v603 = 0;
  v601 = 0;
  v602 = 0;
  v600 = 0;
  v599 = 0;
  v597 = 0;
  v598 = 0;
  v595 = 0;
  v596 = 0;
  v593 = 0;
  v594 = 0;
  v591 = 0;
  v592 = 0;
  v590 = 0;
  v589 = 0;
  v588 = 0;
  v586 = 0;
  v587 = 0;
  v584 = 0;
  v585 = 0;
  v582 = 0;
  v583 = 0;
  v581 = 0;
  v569 = 0.0;
  v565 = 0;
  v564 = 0;
  v562 = 0;
  v563 = 0;
  v557 = 0;
  v548 = 0;
  v545 = 0.0;
  v542 = 0;
  v515 = type metadata accessor for EspressoFunction();
  v516 = *(v515 - 8);
  v517 = v515 - 8;
  v519 = (*(v516 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = MEMORY[0x28223BE20](a14, v514);
  v520 = &v122 - v519;
  v630 = v26;
  v629 = v27;
  v628 = v24;
  v627 = v28;
  v626 = v29;
  v625 = v30;
  v624 = v31;
  v623 = v32;
  v622 = v33;
  v621 = v34;
  v620 = a11;
  v619 = a12;
  v618 = a13;
  v617 = v25;
  v616 = v35;

  v615 = v521;
  v522._rawValue = v529->_rawValue;

  v530 = MEMORY[0x277D84CC0];
  v524 = MEMORY[0x25F8895B0](v522._rawValue);
  v614 = v524;

  v36 = HyperParams.batchSize.getter();
  static HIDPFLUtils.computeEffectiveTrainingSize(_:_:)(v524, v36);
  v525 = v37;
  v613 = v37;
  v528 = NightingaleDPFLRunner.performanceMeasure.getter();
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", v526, 1)._object;
  dispatch thunk of PerformanceMeasure.start(_:)();

  v611 = 0;
  rawValue = v529->_rawValue;

  v533 = MEMORY[0x25F8895B0](rawValue, v530);

  v610 = v532;
  v534 = v533 * v532;
  if ((v533 * v532) >> 64 != v534 >> 63)
  {
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return;
  }

  v495 = v534 * v518;
  if ((v534 * v518) >> 64 != (v534 * v518) >> 63)
  {
    goto LABEL_69;
  }

  v612._rawValue = Array.init(repeating:count:)();
  transferFeatureToMLInputs(_:_:_:_:)(v508, &v612, NightingaleTraining_NightingaleModelFeatureType_Flow, v507);
  v493 = v38;
  v494 = v38;
  if (v38)
  {
    v180 = v494;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v286 = v180;
    return;
  }

  transferFeatureToMLInputs(_:_:_:_:)(v513, &v612, NightingaleTraining_NightingaleModelFeatureType_SWT, v507);
  v491 = v39;
  v492 = v39;
  if (v39)
  {
    v179 = v492;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v286 = v179;
    return;
  }

  transferFeatureToMLInputs(_:_:_:_:)(v509, &v612, NightingaleTraining_NightingaleModelFeatureType_DaySHR10, v507);
  v489 = v40;
  v490 = v40;
  if (v40)
  {
    v178 = v490;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v286 = v178;
    return;
  }

  transferFeatureToMLInputs(_:_:_:_:)(v510, &v612, NightingaleTraining_NightingaleModelFeatureType_NightSHR10, v507);
  v487 = v41;
  v488 = v41;
  if (v41)
  {
    v177 = v488;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v286 = v177;
    return;
  }

  transferFeatureToMLInputs(_:_:_:_:)(v511, &v612, NightingaleTraining_NightingaleModelFeatureType_PSM, v507);
  v485 = v42;
  v486 = v42;
  if (v42)
  {
    v176 = v486;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v286 = v176;
    return;
  }

  transferFeatureToMLInputs(_:_:_:_:)(v512, &v612, NightingaleTraining_NightingaleModelFeatureType_PSS, v507);
  v483 = v43;
  v484 = v43;
  if (v43)
  {
    v175 = v484;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v286 = v175;
    return;
  }

  v607 = v506;
  v481 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  Collection<>.makeIterator()();
  for (i = v483; ; i = v237)
  {
    v478 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySSGGMd, &_ss16IndexingIteratorVySaySSGGMR);
    IndexingIterator.next()();
    v479 = v605;
    v480 = v606;
    if (!v606)
    {
      break;
    }

    v476 = v479;
    v477 = v480;
    v455 = v480;
    v444 = v479;
    v601 = v479;
    v602 = v480;
    v456 = HyperParams.recipeForModel(model:)(v479, v480);
    v600 = v456;
    type metadata accessor for HyperParams();

    v44 = _dictionaryUpCast<A, B, C, D>(_:)();
    v45 = HyperParams.__allocating_init(recipe:)(v44);
    v457 = v45;

    v599 = v45;
    v445 = HyperParams.inputName.getter();
    v458 = v46;
    v597 = v445;
    v598 = v46;
    v446 = HyperParams.labelName.getter();
    v459 = v47;
    v595 = v446;
    v596 = v47;
    v447 = HyperParams.lossName.getter();
    v460 = v48;
    v593 = v447;
    v594 = v48;
    v448 = HyperParams.outputName.getter();
    v461 = v49;
    v591 = v448;
    v592 = v49;
    v462 = HyperParams.weightNames.getter();
    v590 = v462;
    v449 = HyperParams.labelSize.getter();
    v589 = v449;
    v450 = HyperParams.modelMaxNumDaysToNextPeriod.getter();
    v588 = v450;
    v451 = HyperParams.modelRepresentation.getter();
    v463 = v50;
    v586 = v451;
    v587 = v50;
    v452 = HyperParams.labelEncodingType.getter();
    v464 = v51;
    v584 = v452;
    v585 = v51;
    v52._countAndFlagsBits = HyperParams.modelPath.getter();
    v453 = v52._object;
    v53 = PFLTask.evalModelPath(path:)(v52);
    countAndFlagsBits = v53.value._countAndFlagsBits;
    v465 = v53.value._object;

    v466 = v455;
    v467 = v456;
    v468 = v457;
    v469 = v458;
    v470 = v459;
    v471 = v460;
    v472 = v461;
    v473 = v462;
    v474 = v463;
    v475 = v464;
    if (!v465)
    {
      v202 = v475;
      v203 = v474;
      v204 = v473;
      v205 = v472;
      v206 = v471;
      v207 = v470;
      v208 = v469;
      v209 = v468;
      v210 = v467;
      v211 = v466;
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v212 = swift_allocError();
      *v111 = 9;
      swift_willThrow();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v286 = v212;
      return;
    }

    v442 = countAndFlagsBits;
    v443 = v465;
    v433 = v465;
    v434 = countAndFlagsBits;
    v582 = countAndFlagsBits;
    v583 = v465;
    v435 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySfGtMd, &_sSS_SaySfGtMR);
    v436 = _allocateUninitializedArray<A>(_:)();
    v438 = v54;
    v437 = v54 + 2;

    v55 = v458;
    v56 = v437;
    v57 = v438;
    *v438 = v445;
    v57[1] = v55;
    outlined init with copy of [Float](&v612, v56);

    v58 = v459;
    v59 = v438;
    v60 = v529;
    v438[3] = v446;
    v59[4] = v58;
    v580 = 0;
    v439 = v60->_rawValue;

    v440 = MEMORY[0x25F8895B0](v439, MEMORY[0x277D84CC0]);

    v441 = v440 * v449;
    if ((v440 * v449) >> 64 != v441 >> 63)
    {
      goto LABEL_70;
    }

    v438[5] = Array.init(repeating:count:)();
    _finalizeUninitializedArray<A>(_:)();
    v428 = v61;
    v429 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    v581 = Dictionary.init(dictionaryLiteral:)();
    v62 = HyperParams.labelEncodingTypeOnehot.unsafeMutableAddressor();
    v430 = *v62;
    v431 = *(v62 + 1);

    v432 = MEMORY[0x25F889340](v452, v464, v430, v431);

    if ((v432 & 1) == 0)
    {
      v64 = HyperParams.labelEncodingTypeRegression.unsafeMutableAddressor();
      v422 = *v64;
      v423 = *(v64 + 1);

      v424 = MEMORY[0x25F889340](v452, v464, v422, v423);

      if ((v424 & 1) == 0)
      {
        goto LABEL_30;
      }

      v421 = v450 - 1;
      if (__OFSUB__(v450, 1))
      {
        goto LABEL_72;
      }

      if (v421 < 0)
      {
        _assertionFailure(_:_:file:line:flags:)(v498, 11, 2, v499, 35, 2, v500, 20, 2, 3049, 0);
        __break(1u);
      }

      if (v421 > 0xFFFFFFFFLL)
      {
        _assertionFailure(_:_:file:line:flags:)(v498, 11, 2, v503, 45, 2, v500, 20, 2, 3053, 0);
        __break(1u);
      }

      else
      {
        v417 = v421;
        v418 = v536;
        v536[0] = v446;
        v536[1] = v459;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySfGGMd, &_sSDySSSaySfGGMR);
        v419 = Dictionary.subscript.modify();
        v420 = v66;
        if (v66->_rawValue)
        {
          goto LABEL_29;
        }
      }

      _assertionFailure(_:_:file:line:flags:)(v498, 11, 2, v501, 57, 2, v502, 46, 2, 752, 0);
      __break(1u);
LABEL_29:
      transferLabelToRegression(_:_:_:_:)(v529, v420, v449, v417);
      v419();
      outlined destroy of DefaultStringInterpolation();
      goto LABEL_30;
    }

    v425 = v535;
    v535[0] = v446;
    v535[1] = v459;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySfGGMd, &_sSDySSSaySfGGMR);
    v426 = Dictionary.subscript.modify();
    v427 = v63;
    if (!v63->_rawValue)
    {
      _assertionFailure(_:_:file:line:flags:)(v498, 11, 2, v501, 57, 2, v502, 46, 2, 750, 0);
      __break(1u);
    }

    transferLabelToOnehotEncode(_:_:_:)(v529, v427, v449);
    v426();
    outlined destroy of DefaultStringInterpolation();
LABEL_30:
    v67 = HyperParams.modelRepresentationEIR.unsafeMutableAddressor();
    v414 = *v67;
    v415 = *(v67 + 1);

    v416 = MEMORY[0x25F889340](v451, v463, v414, v415);

    if (v416)
    {
      v413 = type metadata accessor for EspressoEIRTrainer();
      NightingaleDPFLRunner.performanceMeasure.getter();
      v68 = EspressoEIRTrainer.__allocating_init(_:)();
      v537[3] = v413;
      v537[4] = MEMORY[0x277D413C0];
      v537[0] = v68;
      outlined init with take of HealthDataQuery(v537, v579);
    }

    else
    {
      v412 = type metadata accessor for EspressoMILTrainer();
      NightingaleDPFLRunner.performanceMeasure.getter();
      v69 = EspressoMILTrainer.__allocating_init(_:)();
      v578[3] = v412;
      v578[4] = MEMORY[0x277D413D0];
      v578[0] = v69;
      outlined init with take of HealthDataQuery(v578, v579);
    }

    v386 = v575;
    outlined init with copy of HealthDataQuery(v579, v575);
    v393 = v576;
    v394 = v577;
    __swift_project_boxed_opaque_existential_1(v386, v576);
    static EspressoFunction.evaluation.getter();
    v389 = 2;
    v392 = MEMORY[0x277D837D0];
    v387 = _allocateUninitializedArray<A>(_:)();
    v388 = v70;

    v71 = v388;
    v72 = v458;
    *v388 = v445;
    v71[1] = v72;

    v73 = v388;
    v74 = v459;
    v388[2] = v446;
    v73[3] = v74;
    _finalizeUninitializedArray<A>(_:)();
    v395 = v75;
    v390 = _allocateUninitializedArray<A>(_:)();
    v391 = v76;

    v77 = v391;
    v78 = v460;
    *v391 = v447;
    v77[1] = v78;

    v79 = v391;
    v80 = v461;
    v391[2] = v448;
    v79[3] = v80;
    _finalizeUninitializedArray<A>(_:)();
    v81 = v478;
    v396 = v82;
    dispatch thunk of EspressoTrainer.load(path:functions:inputs:outputs:weights:)();
    v397 = v81;
    v398 = v395;
    v399 = v396;
    v400 = v433;
    v401 = v455;
    v402 = v456;
    v403 = v457;
    v404 = v458;
    v405 = v459;
    v406 = v460;
    v407 = v461;
    v408 = v462;
    v409 = v463;
    v410 = v464;
    v411 = v81;
    if (v81)
    {
      v174 = v411;
      v164 = v410;
      v165 = v409;
      v166 = v408;
      v167 = v407;
      v168 = v406;
      v169 = v405;
      v170 = v404;
      v171 = v403;
      v172 = v402;
      v173 = v401;
      v163 = v400;
      v162 = v398;

      (*(v516 + 8))(v520, v515);
      __swift_destroy_boxed_opaque_existential_1(v575);
      __swift_destroy_boxed_opaque_existential_1(v579);
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v286 = v174;
      return;
    }

    (*(v516 + 8))(v520, v515);
    __swift_destroy_boxed_opaque_existential_1(v575);
    v370 = v572;
    outlined init with copy of HealthDataQuery(v579, v572);
    v371 = v573;
    v372 = v574;
    __swift_project_boxed_opaque_existential_1(v370, v573);
    v83 = v397;
    v570 = 0;
    v571 = 1;
    dispatch thunk of EspressoTrainer.finalize(batchSize:learningRate:)();
    v373 = v83;
    v374 = v433;
    v375 = v455;
    v376 = v456;
    v377 = v457;
    v378 = v458;
    v379 = v459;
    v380 = v460;
    v381 = v461;
    v382 = v462;
    v383 = v463;
    v384 = v464;
    v385 = v83;
    if (v83)
    {
      v161 = v385;
      v151 = v384;
      v152 = v383;
      v153 = v382;
      v154 = v381;
      v155 = v380;
      v156 = v379;
      v157 = v378;
      v158 = v377;
      v159 = v376;
      v160 = v375;
      v150 = v374;
      __swift_destroy_boxed_opaque_existential_1(v572);
      __swift_destroy_boxed_opaque_existential_1(v579);
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v286 = v161;
      return;
    }

    __swift_destroy_boxed_opaque_existential_1(v572);
    v569 = 0.0;
    v361 = v566;
    outlined init with copy of HealthDataQuery(v579, v566);
    v362 = v567;
    v363 = v568;
    v364 = __swift_project_boxed_opaque_existential_1(v361, v567);
    v365 = v581;

    v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SitMd, &_sSS_SitMR);
    v367 = _allocateUninitializedArray<A>(_:)();
    v368 = v84;

    v85 = v458;
    v86 = v368;
    v87 = v532;
    v88 = v518;
    *v368 = v445;
    v86[1] = v85;
    v369 = v88 * v87;
    if ((v88 * v87) >> 64 != (v88 * v87) >> 63)
    {
      goto LABEL_71;
    }

    v368[2] = v369;

    v89 = v449;
    v90 = v368;
    v91 = v459;
    v368[3] = v446;
    v90[4] = v91;
    v90[5] = v89;
    _finalizeUninitializedArray<A>(_:)();
    v92 = Dictionary.init(dictionaryLiteral:)();
    v93 = v373;
    v344 = v92;
    v94 = dispatch thunk of EspressoTrainer.eval(_:featureSizes:numSamples:)();
    v345 = v93;
    v346 = v94;
    v347 = v344;
    v348 = v365;
    v349 = v433;
    v350 = v455;
    v351 = v456;
    v352 = v457;
    v353 = v458;
    v354 = v459;
    v355 = v460;
    v356 = v461;
    v357 = v462;
    v358 = v463;
    v359 = v464;
    v360 = v93;
    if (v93)
    {
      v149 = v360;
      v139 = v359;
      v140 = v358;
      v141 = v357;
      v142 = v356;
      v143 = v355;
      v144 = v354;
      v145 = v353;
      v146 = v352;
      v147 = v351;
      v148 = v350;
      v138 = v349;
      v137 = v348;

      __swift_destroy_boxed_opaque_existential_1(v566);
      __swift_destroy_boxed_opaque_existential_1(v579);
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v286 = v149;
      return;
    }

    v338 = v346;

    v565 = v338;
    __swift_destroy_boxed_opaque_existential_1(v566);
    v564 = Array.init()();

    v561 = v338;
    v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSSaySfGGGMd, &_sSaySDySSSaySfGGGMR);
    lazy protocol witness table accessor for type [[String : [Float]]] and conformance [A]();
    Collection<>.makeIterator()();
    v340 = 0.0;
    v341 = 0.0;
    v342 = 0.0;
    for (j = v345; ; j = v331)
    {
      v331 = j;
      v332 = v342;
      v334 = v341;
      v333 = v340;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySDySSSaySfGGGGMd, &_ss16IndexingIteratorVySaySDySSSaySfGGGGMR);
      IndexingIterator.next()();
      v335 = v560;
      v336 = v333;
      v337 = v334;
      if (!v560)
      {
        break;
      }

      v330 = v335;
      v327 = v335;
      v548 = v335;

      v328 = v546;
      v546[0] = v447;
      v546[1] = v460;
      MEMORY[0x25F8891D0](&v547);
      outlined destroy of DefaultStringInterpolation();
      v329 = v547;
      if (v547)
      {
        v326 = v329;
        v321 = v329;
        v540 = v329;
        lazy protocol witness table accessor for type [Float] and conformance [A]();
        Collection.first.getter();
        v323 = v538;
        v322 = v539;

        v324 = v323;
        v325 = v322;
      }

      else
      {
        v324 = 0.0;
        v325 = 1;
      }

      v307 = v324;
      v308 = v338;
      v309 = v433;
      v310 = v455;
      v311 = v456;
      v312 = v457;
      v313 = v458;
      v314 = v459;
      v315 = v460;
      v316 = v461;
      v317 = v462;
      v318 = v463;
      v319 = v464;
      v320 = v327;
      if (v325)
      {
        v258 = v320;
        v261 = v319;
        v262 = v318;
        v263 = v317;
        v264 = v316;
        v265 = v315;
        v266 = v314;
        v267 = v313;
        v268 = v312;
        v269 = v311;
        v270 = v310;
        v260 = v309;
        v259 = v308;
        lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
        v271 = swift_allocError();
        *v96 = 10;
        swift_willThrow();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        __swift_destroy_boxed_opaque_existential_1(v579);
        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        v286 = v271;
        return;
      }

      v306 = v307;
      v545 = v307;
      v290 = v332 + v307;
      v569 = v332 + v307;

      v291 = v543;
      v543[0] = v448;
      v543[1] = v461;
      MEMORY[0x25F8891D0](&v544);
      outlined destroy of DefaultStringInterpolation();
      v292 = v544;
      v293 = v338;
      v294 = v433;
      v295 = v455;
      v296 = v456;
      v297 = v457;
      v298 = v458;
      v299 = v459;
      v300 = v460;
      v301 = v461;
      v302 = v462;
      v303 = v463;
      v304 = v464;
      v305 = v327;
      if (!v544)
      {
        v272 = v305;
        v275 = v304;
        v276 = v303;
        v277 = v302;
        v278 = v301;
        v279 = v300;
        v280 = v299;
        v281 = v298;
        v282 = v297;
        v283 = v296;
        v284 = v295;
        v274 = v294;
        v273 = v293;
        lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
        v285 = swift_allocError();
        *v95 = 26;
        swift_willThrow();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        __swift_destroy_boxed_opaque_existential_1(v579);
        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        v286 = v285;
        return;
      }

      v289 = v292;
      v288 = v292;
      v542 = v292;

      v287 = &v541;
      v541 = v288;
      lazy protocol witness table accessor for type [Float] and conformance [A]();
      Array.append<A>(contentsOf:)();

      v340 = v290;
      v341 = v290;
      v342 = v290;
    }

    v255 = v337;
    v256 = v336;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySfGGMd, &_sSDySSSaySfGGMR);
    v97 = MEMORY[0x25F8895B0](v338);
    if (v97 <= 0)
    {
      v254 = v256;
    }

    else
    {
      v97 = MEMORY[0x25F8895B0](v338, v257);
      v569 = v255 / v97;
      v254 = v569;
    }

    v238 = v254;
    HKQueryOptions.init(rawValue:)(v97);
    v98 = HyperParams.intervalCorrectionFactor.getter();
    v99 = v331;
    v100 = EvalMetricsProcessor.process(labels:outputs:modelMaxNumDaysToNextPeriod:labelEncodingType:intervalCorrectionFactor:)(v529, &v564, v450, v452, v464, v98);
    v239 = v99;
    v240._rawValue = v100;
    v241 = v338;
    v242 = v433;
    v243 = v455;
    v244 = v456;
    v245 = v457;
    v246 = v458;
    v247 = v459;
    v248 = v460;
    v249 = v461;
    v250 = v462;
    v251 = v463;
    v252 = v464;
    v253 = v99;
    if (v99)
    {
      v136 = v253;
      v126 = v252;
      v127 = v251;
      v128 = v250;
      v129 = v249;
      v130 = v248;
      v131 = v247;
      v132 = v246;
      v133 = v245;
      v134 = v244;
      v135 = v243;
      v125 = v242;
      v124 = v241;
      outlined destroy of [(start: UInt32, end: UInt32)]();

      __swift_destroy_boxed_opaque_existential_1(v579);
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v286 = v136;
      return;
    }

    v229 = v240._rawValue;
    v557 = v240._rawValue;
    v230 = &v556;
    EvalMetricsProcessor.calculateMetrics(labels:outputs:)(&v556, v529, v240);
    v231 = v558;
    memcpy(v558, v230, 0x98uLL);
    v232 = v558[0];
    v233 = &v558[1];
    v234 = 144;
    memcpy(__dst, &v558[1], sizeof(__dst));
    v558[19] = v558[0];
    memcpy(v559, &v558[1], sizeof(v559));
    v235 = AggMetrics.toDictionary(prefix:)(v444, v455);
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, _sSDySSypGMR);
    v102 = v239;
    v236 = v101;
    Dictionary.merge(_:uniquingKeysWith:)();
    v237 = v102;
    if (v102)
    {
      __break(1u);
      goto LABEL_67;
    }

    v214 = 1;
    v103 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v226 = &v554;
    v554 = v103;
    v555 = v104;
    v224 = "";
    v222 = 0;
    v223 = 1;
    v105 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    v213 = v105._object;
    MEMORY[0x25F889DE0](v105._countAndFlagsBits);

    v553[2] = v444;
    v553[3] = v455;
    v218 = MEMORY[0x277D837D0];
    v219 = MEMORY[0x277D83838];
    v220 = MEMORY[0x277D83830];
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v106 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_", v214, v223 & 1);
    v215 = v106._object;
    MEMORY[0x25F889DE0](v106._countAndFlagsBits);

    v107 = NightingalePFLRunner.keyMetricsLossBeforeTraining.unsafeMutableAddressor();
    v216 = *v107;
    v217 = *(v107 + 1);

    v221 = v553;
    v553[0] = v216;
    v553[1] = v217;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    outlined destroy of DefaultStringInterpolation();
    v108 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v224, v222, v223 & 1);
    v225 = v108._object;
    MEMORY[0x25F889DE0](v108._countAndFlagsBits);

    v228 = v554;
    v227 = v555;

    outlined destroy of DefaultStringInterpolation();
    v109 = MEMORY[0x25F889320](v228, v227);
    v552 = MEMORY[0x277D83A90];
    v551[0] = v238;
    v549 = v109;
    v550 = v110;
    Dictionary.subscript.setter();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    __swift_destroy_boxed_opaque_existential_1(v579);
    outlined destroy of [(start: UInt32, end: UInt32)]();
  }

  outlined destroy of [(start: UInt32, end: UInt32)]();
  v189 = NightingaleDPFLRunner.performanceMeasure.getter();
  v190 = 1;
  v188 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", 8uLL, 1)._object;
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v193 = v112;

  v604 = v193;
  v192 = NightingaleDPFLRunner.performanceMeasure.getter();
  v191 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginE2E", 9uLL, v190 & 1)._object;
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v197 = v113;

  v603 = v197;
  NightingalePFLRunner.sendLocation(_:hyperParams:)(8, v496);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  v199 = _allocateUninitializedArray<A>(_:)();
  v196 = v114;
  v115 = NightingalePFLRunner.keyMetricsTrainingDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v115, v196);
  v116 = v193;
  v117 = v196;
  v195 = MEMORY[0x277D839F8];
  v196[5] = MEMORY[0x277D839F8];
  v117[2] = v116;
  v194 = v117 + 6;
  v118 = NightingalePFLRunner.keyMetricsE2EDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v118, v194);
  v119 = v196;
  v120 = v197;
  v196[11] = v195;
  v119[8] = v120;
  _finalizeUninitializedArray<A>(_:)();
  v200 = Dictionary.init(dictionaryLiteral:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, _sSDySSypGMR);
  v121 = v478;
  Dictionary.merge(_:uniquingKeysWith:)();
  v201 = v121;
  if (!v121)
  {
    v185 = v615;

    static HIDPFLUtils.checkMetrics(_:)(v185);
    v186 = 0;
    v187 = 0;

    v182 = 0;
    type metadata accessor for PFLTaskResult();
    v183 = &v615;
    v181 = v615;

    v184 = PFLTaskResult.__allocating_init(json:vector:)();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    return;
  }

LABEL_67:
  __break(1u);
  v123 = v187;

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v286 = v123;
}

uint64_t NightingalePFLRunner.runPlatformTesting(modelPath:hyperParams:metrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v117 = a1;
  v116 = a2;
  v107 = a3;
  v114 = a4;
  v5 = v4;
  v115 = v5;
  v109 = "Fatal error";
  v110 = "Range requires lowerBound <= upperBound";
  v111 = "Swift/Range.swift";
  v112 = closure #1 in NightingalePFLRunner.runPlatformTesting(modelPath:hyperParams:metrics:);
  v113 = closure #37 in NightingaleDPFLRunner.run(task:useCase:context:);
  v154 = 0;
  v155 = 0;
  v153 = 0;
  v152 = 0;
  v151 = 0;
  v137 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v118 = type metadata accessor for EspressoFunction();
  v119 = *(v118 - 8);
  v120 = v118 - 8;
  v122 = *(v119 + 64);
  v121 = (v122 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v117, v116);
  v123 = &v49 - v121;
  v124 = v121;
  v9 = MEMORY[0x28223BE20](v7, v8);
  v125 = &v49 - v124;
  v154 = v9;
  v155 = v10;
  v153 = a3;
  v152 = v11;
  v151 = v12;
  v126 = HyperParams.modelRepresentation.getter();
  v129 = v13;
  v14 = HyperParams.modelRepresentationEIR.unsafeMutableAddressor();
  v127 = *v14;
  v128 = *(v14 + 1);

  v130 = MEMORY[0x25F889340](v126, v129, v127, v128);

  if (v130)
  {
    v106 = type metadata accessor for EspressoEIRTrainer();
    NightingaleDPFLRunner.performanceMeasure.getter();
    v15 = EspressoEIRTrainer.__allocating_init(_:)();
    v131[3] = v106;
    v131[4] = MEMORY[0x277D413C0];
    v131[0] = v15;
    outlined init with take of HealthDataQuery(v131, __dst);
  }

  else
  {
    v105 = type metadata accessor for EspressoMILTrainer();
    NightingaleDPFLRunner.performanceMeasure.getter();
    v16 = EspressoMILTrainer.__allocating_init(_:)();
    v149[3] = v105;
    v149[4] = MEMORY[0x277D413D0];
    v149[0] = v16;
    outlined init with take of HealthDataQuery(v149, __dst);
  }

  v91 = v146;
  outlined init with copy of HealthDataQuery(__dst, v146);
  v100 = v147;
  v101 = v148;
  v97 = __swift_project_boxed_opaque_existential_1(v91, v147);
  static EspressoFunction.training.getter();
  v96 = MEMORY[0x277D837D0];
  v93 = _allocateUninitializedArray<A>(_:)();
  v92 = v17;
  v18 = HyperParams.inputName.getter();
  v19 = v92;
  *v92 = v18;
  v19[1] = v20;
  v21 = HyperParams.labelName.getter();
  v22 = v92;
  v92[2] = v21;
  v22[3] = v23;
  _finalizeUninitializedArray<A>(_:)();
  v98 = v24;
  v95 = _allocateUninitializedArray<A>(_:)();
  v94 = v25;
  v26 = HyperParams.lossName.getter();
  v27 = v94;
  *v94 = v26;
  v27[1] = v28;
  _finalizeUninitializedArray<A>(_:)();
  v99 = v29;
  v30 = HyperParams.weightNames.getter();
  v31 = v108;
  v102 = v30;
  dispatch thunk of EspressoTrainer.load(path:functions:inputs:outputs:weights:)();
  v103 = v31;
  v104 = v31;
  if (v31)
  {
    v51 = v104;

    (*(v119 + 8))(v125, v118);
    __swift_destroy_boxed_opaque_existential_1(v146);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    v52 = v51;
  }

  else
  {

    v82 = *(v119 + 8);
    v83 = v119 + 8;
    v82(v125, v118);
    __swift_destroy_boxed_opaque_existential_1(v146);
    v84 = v143;
    outlined init with copy of HealthDataQuery(__dst, v143);
    v87 = v144;
    v88 = v145;
    v85 = __swift_project_boxed_opaque_existential_1(v84, v144);
    v86 = HyperParams.batchSize.getter();
    v32 = HyperParams.learningRate.getter();
    v33 = v103;
    v141 = v32;
    v142 = 0;
    dispatch thunk of EspressoTrainer.finalize(batchSize:learningRate:)();
    v89 = v33;
    v90 = v33;
    if (v33)
    {
      v50 = v90;
      __swift_destroy_boxed_opaque_existential_1(v143);
      __swift_destroy_boxed_opaque_existential_1(__dst);
      v52 = v50;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v143);
      v76 = v138;
      outlined init with copy of HealthDataQuery(__dst, v138);
      v77 = v139;
      v78 = v140;
      __swift_project_boxed_opaque_existential_1(v76, v139);
      static EspressoFunction.training.getter();
      v34 = v89;
      v35 = dispatch thunk of EspressoTrainer.extractWeights(function:)();
      v79 = v34;
      v80 = v35;
      v81 = v34;
      if (v34)
      {
        v49 = v81;
        v82(v123, v118);
        __swift_destroy_boxed_opaque_existential_1(v138);
        __swift_destroy_boxed_opaque_existential_1(__dst);
        v52 = v49;
      }

      else
      {
        v74 = v80;
        v82(v123, v118);
        v75 = MEMORY[0x25F8895B0](v74, MEMORY[0x277D83A90]);
        v137 = v75;

        __swift_destroy_boxed_opaque_existential_1(v138);
        if (v75 < 0)
        {
          _assertionFailure(_:_:file:line:flags:)(v109, 11, 2, v110, 39, 2, v111, 17, 2, 760, 0);
          __break(1u);
        }

        v135 = 0;
        v136 = v75;
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
        v36 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
        v37 = v79;
        v38 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v112, 0, v70, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v36, MEMORY[0x277D84AC0], v71);
        v72 = v37;
        v73 = v38;
        if (v37)
        {
          __break(1u);
        }

        else
        {
          v56 = v73;
          v134 = v73;
          v58 = NightingaleDPFLRunner.performanceMeasure.getter();
          object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginE2E", 9uLL, 1)._object;
          dispatch thunk of PerformanceMeasure.finish(_:)();
          v59 = v39;

          v133 = v59;
          NightingalePFLRunner.sendLocation(_:hyperParams:)(8, v107);

          v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
          v64 = _allocateUninitializedArray<A>(_:)();
          v62 = v40;
          v41 = NightingalePFLRunner.keyMetricsE2EDurationS.unsafeMutableAddressor();
          outlined init with copy of String(v41, v62);
          v42 = v59;
          v43 = v62;
          v61 = MEMORY[0x277D839F8];
          v62[5] = MEMORY[0x277D839F8];
          v43[2] = v42;
          v60 = v43 + 6;
          v44 = NightingalePFLRunner.keyMetricsLoss.unsafeMutableAddressor();
          outlined init with copy of String(v44, v60);
          v45 = v62;
          v62[11] = v61;
          v45[8] = 0x3F847AE147AE147BLL;
          _finalizeUninitializedArray<A>(_:)();
          v65 = MEMORY[0x277D837D0];
          v66 = MEMORY[0x277D84F70] + 8;
          v67 = MEMORY[0x277D837E0];
          Dictionary.init(dictionaryLiteral:)();
          v46 = v72;
          v47 = Dictionary.merging(_:uniquingKeysWith:)();
          v68 = v46;
          v69 = v47;
          if (!v46)
          {
            v53 = v69;
            v132 = v69;
            type metadata accessor for PFLTaskResult();
            v54 = Array.toData()();
            v55 = PFLTaskResult.__allocating_init(json:vector:)();

            __swift_destroy_boxed_opaque_existential_1(__dst);
            return v55;
          }
        }

        __break(1u);
      }
    }
  }

  return v71;
}

uint64_t closure #1 in NightingalePFLRunner.runPlatformTesting(modelPath:hyperParams:metrics:)(uint64_t *a1)
{
  lazy protocol witness table accessor for type Float and conformance Float();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  return static BinaryFloatingPoint<>.random(in:)();
}

uint64_t NightingalePFLRunner.sendLocation(_:hyperParams:)(char a1, uint64_t a2)
{
  v29 = a1;
  v28 = a2;
  v27 = v2;
  if ((HyperParams.reportLastReachLocation.getter() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_5;
  }

  queue = *(v2 + 48);
  MEMORY[0x277D82BE0](queue);

  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;

  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for closure #1 in NightingalePFLRunner.sendLocation(_:hyperParams:);
  *(v12 + 24) = v13;

  v23 = partial apply for thunk for @callee_guaranteed () -> ();
  v24 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = 0;
  v21 = thunk for @escaping @callee_guaranteed () -> ();
  v22 = &block_descriptor_0;
  block = _Block_copy(&aBlock);

  dispatch_sync(queue, block);
  _Block_release(block);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    MEMORY[0x277D82BD8](queue);
    v11 = partial apply for closure #1 in NightingalePFLRunner.sendLocation(_:hyperParams:);
LABEL_5:
    v8 = NightingaleDPFLRunner.taskId.getter();
    v10 = v4;
    v26[1] = a1;
    lazy protocol witness table accessor for type ReachLocation and conformance ReachLocation();
    v7 = String.init<A>(describing:)();
    v9 = v5;
    NightingaleDPFLRunner.useCase.getter(v26);
    v25 = v26[0];
    v6 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
    static NightingaleTelemetry.sendNightingaleReachTelemetryLazy(taskId:location:useCase:errorCode:)(v8, v10, v7, v9, &v25, v6);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v11);
    return outlined consume of (@escaping @callee_guaranteed () -> ())?(0);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall NightingalePFLRunner.sendTelemetrics(flycatcherResults:)(NightingaleTraining::FlycatcherTelemetrics *flycatcherResults)
{
  memcpy(__dst, flycatcherResults, sizeof(__dst));
  v5 = flycatcherResults;
  v4 = v1;
  memcpy(v3, __dst, sizeof(v3));
  static NightingaleTelemetry.sendNightingaleShadowEvaluationTelemetryLazy(flycatcherResults:)(v3);
}

uint64_t NightingalePFLRunner.deinit()
{

  outlined destroy of DefaultStringInterpolation();
  MEMORY[0x277D82BD8](*(v0 + 48));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  return v2;
}

uint64_t protocol witness for PFLTaskRunner.isDataAvailable(taskPreferences:) in conformance NightingalePFLRunner()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = protocol witness for PFLTaskRunner.isDataAvailable(taskPreferences:) in conformance NightingaleDPFLRunner;

  return NightingaleDPFLRunner.isDataAvailable(taskPreferences:)();
}

uint64_t protocol witness for PFLTaskRunner.run(task:useCase:context:) in conformance NightingalePFLRunner(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for PFLTaskRunner.run(task:useCase:context:) in conformance NightingaleDPFLRunner;

  return NightingalePFLRunner.run(task:useCase:context:)(a1, a2, a3, a4);
}

unint64_t lazy protocol witness table accessor for type ReachLocation and conformance ReachLocation()
{
  v2 = lazy protocol witness table cache variable for type ReachLocation and conformance ReachLocation;
  if (!lazy protocol witness table cache variable for type ReachLocation and conformance ReachLocation)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReachLocation and conformance ReachLocation);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ReachLocation and conformance ReachLocation;
  if (!lazy protocol witness table cache variable for type ReachLocation and conformance ReachLocation)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReachLocation and conformance ReachLocation);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ReachLocation and conformance ReachLocation;
  if (!lazy protocol witness table cache variable for type ReachLocation and conformance ReachLocation)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReachLocation and conformance ReachLocation);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  v2 = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for OS_dispatch_queue);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type NightingalePFLModelType and conformance NightingalePFLModelType()
{
  v2 = lazy protocol witness table cache variable for type NightingalePFLModelType and conformance NightingalePFLModelType;
  if (!lazy protocol witness table cache variable for type NightingalePFLModelType and conformance NightingalePFLModelType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NightingalePFLModelType and conformance NightingalePFLModelType);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NightingalePFLModelType and conformance NightingalePFLModelType;
  if (!lazy protocol witness table cache variable for type NightingalePFLModelType and conformance NightingalePFLModelType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NightingalePFLModelType and conformance NightingalePFLModelType);
    return WitnessTable;
  }

  return v2;
}

uint64_t partial apply for closure #1 in NightingalePFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 36);
  v10 = *(v1 + 40);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for PFLTaskRunner.resolveTask(for:taskPreferences:) in conformance NightingaleDPFLRunner;

  return closure #1 in NightingalePFLRunner.run(task:useCase:context:)(a1, v6, v7, v8, v9, v10);
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo17OS_dispatch_queueC8DispatchE10AttributesV_Tt0gq5(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      type metadata accessor for OS_dispatch_queue.Attributes();
      v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    type metadata accessor for OS_dispatch_queue.Attributes();
    return v2;
  }

  return result;
}

uint64_t _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lF(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!*a1 || *a1 != a2 || a1[1] != a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Array withUnsafeMutableBufferPointer: replacing the buffer is not allowed", 73, 2, "Swift/Array.swift", 17, 2, 1734, 0);
    __break(1u);
  }

  type metadata accessor for Array();
  Array._endMutation()();
}

uint64_t partial apply for closure #1 in OSLogArguments.append<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x277D83B88];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t lazy protocol witness table accessor for type ArraySlice<UInt32> and conformance ArraySlice<A>()
{
  v2 = lazy protocol witness table cache variable for type ArraySlice<UInt32> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<UInt32> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVys6UInt32VGMd, &_ss10ArraySliceVys6UInt32VGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ArraySlice<UInt32> and conformance ArraySlice<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined init with copy of (flow: [Float], daySHR10: [Float], nightSHR10: [Float], periodStartMean: [Float], periodStartStd: [Float], labels: [UInt32], cycleStats: (size: Float, mean: Float, std: Float), daySHR10CountStats: (mean: Float?, std: Float))(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  *(a2 + 8) = v4;
  v5 = a1[2];

  *(a2 + 16) = v5;
  v6 = a1[3];

  *(a2 + 24) = v6;
  v7 = a1[4];

  *(a2 + 32) = v7;
  v9 = a1[5];

  result = a2;
  *(a2 + 40) = v9;
  *(a2 + 48) = a1[6];
  *(a2 + 56) = *(a1 + 14);
  *(a2 + 60) = *(a1 + 60);
  *(a2 + 68) = *(a1 + 17);
  return result;
}

void outlined destroy of (flow: [Float], daySHR10: [Float], nightSHR10: [Float], periodStartMean: [Float], periodStartStd: [Float], labels: [UInt32], cycleStats: (size: Float, mean: Float, std: Float), daySHR10CountStats: (mean: Float?, std: Float))()
{
}

uint64_t outlined init with copy of FlycatcherTelemetrics?(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 8);

  result = a2;
  *(a2 + 8) = v4;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 112) = *(a1 + 112);
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 136) = *(a1 + 136);
  *(a2 + 144) = *(a1 + 144);
  *(a2 + 152) = *(a1 + 152);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 168) = *(a1 + 168);
  *(a2 + 176) = *(a1 + 176);
  *(a2 + 184) = *(a1 + 184);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 200) = *(a1 + 200);
  *(a2 + 208) = *(a1 + 208);
  *(a2 + 216) = *(a1 + 216);
  *(a2 + 224) = *(a1 + 224);
  *(a2 + 232) = *(a1 + 232);
  *(a2 + 240) = *(a1 + 240);
  *(a2 + 248) = *(a1 + 248);
  *(a2 + 256) = *(a1 + 256);
  *(a2 + 264) = *(a1 + 264);
  *(a2 + 272) = *(a1 + 272);
  return result;
}

uint64_t _s19NightingaleTraining21FlycatcherTelemetricsVSgWOg(uint64_t a1)
{
  v2 = -1;
  if (!HIDWORD(*(a1 + 8)))
  {
    v2 = *(a1 + 8);
  }

  return (v2 + 1);
}

uint64_t partial apply for closure #2 in NightingalePFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 28);
  v9 = *(v1 + 32);
  v10 = *(v1 + 36);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for PFLTaskRunner.resolveTask(for:taskPreferences:) in conformance NightingaleDPFLRunner;

  return closure #2 in NightingalePFLRunner.run(task:useCase:context:)(a1, v6, v7, v8, v9, v10);
}

uint64_t outlined consume of (@escaping @callee_guaranteed () -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for ReachLocation(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF6)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 9) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 246;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 10;
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

_BYTE *storeEnumTagSinglePayload for ReachLocation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF6)
  {
    v5 = ((a3 + 9) >> 8) + 1;
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

  if (a2 > 0xF6)
  {
    v4 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
      *result = a2 + 9;
    }
  }

  return result;
}

uint64_t dispatch thunk of NightingalePFLRunner.isDataAvailable(taskPreferences:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (*(*v1 + 240) + **(*v1 + 240));
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for PFLTaskRunner.isDataAvailable(taskPreferences:) in conformance NightingaleDPFLRunner;

  return v6(a1);
}

uint64_t dispatch thunk of NightingalePFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v5;
  *(v5 + 16) = v5;
  v12 = (*(*v4 + 264) + **(*v4 + 264));
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = dispatch thunk of NightingaleDPFLRunner.run(task:useCase:context:);

  return v12(a1, a2, a3, a4);
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  v2 = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>()
{
  v2 = lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>;
  if (!lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSAySo7NSErrorCSgGMd, &_sSAySo7NSErrorCSgGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>);
    return WitnessTable;
  }

  return v2;
}

NgtMenstrualAlgorithmsWristTemperature __swiftcall NgtMenstrualAlgorithmsWristTemperature.__allocating_init(temperature:forWatchIdentifier:)(Swift::Double temperature, Swift::String forWatchIdentifier)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = @nonobjc NgtMenstrualAlgorithmsWristTemperature.init(temperature:forWatchIdentifier:)(temperature);
  result._temperatureCelsius = v5;
  result._watchIdentifier = v4;
  result.super.isa = v3;
  return result;
}

NightingaleTraining::AgeEnum __swiftcall getAgeEnum(value:valueForNA:)(Swift::Float value, Swift::Float_optional *valueForNA)
{
  v7 = *&valueForNA;
  v8 = BYTE4(valueForNA);
  if (Float.isFinite.getter())
  {
    v4 = (v8 & 1) == 0 && v7 == value;
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  if (value < 21.0)
  {
    return 1;
  }

  if (value < 26.0)
  {
    return 2;
  }

  if (value < 31.0)
  {
    return 3;
  }

  if (value < 36.0)
  {
    return 4;
  }

  if (value < 41.0)
  {
    return 5;
  }

  if (value >= 46.0)
  {
    return 7;
  }

  return 6;
}

NightingaleTraining::BMIEnum __swiftcall getBMIEnum(value:valueForNA:)(Swift::Float value, Swift::Float_optional *valueForNA)
{
  v7 = *&valueForNA;
  v8 = BYTE4(valueForNA);
  if (Float.isFinite.getter())
  {
    v4 = (v8 & 1) == 0 && v7 == value;
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  if (value < 18.5)
  {
    return 1;
  }

  if (value < 25.0)
  {
    return 2;
  }

  if (value < 30.0)
  {
    return 3;
  }

  if (value >= 35.0)
  {
    return 5;
  }

  return 4;
}

uint64_t BMIEnum.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return -1;
    case 1:
      return 0;
    case 2:
      return 1;
    case 3:
      return 2;
    case 4:
      return 3;
  }

  return 4;
}

NightingaleTraining::CycleStdEnum __swiftcall getCycleStdEnum(value:valueForNA:)(Swift::Float value, Swift::Float_optional *valueForNA)
{
  v7 = *&valueForNA;
  v8 = BYTE4(valueForNA);
  if (Float.isFinite.getter())
  {
    v4 = (v8 & 1) == 0 && v7 == value;
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  if (value < 0.5)
  {
    return 1;
  }

  if (value < 1.0)
  {
    return 2;
  }

  if (value < 1.5)
  {
    return 3;
  }

  if (value < 2.0)
  {
    return 4;
  }

  if (value < 2.5)
  {
    return 5;
  }

  if (value < 3.0)
  {
    return 6;
  }

  if (value < 3.5)
  {
    return 7;
  }

  if (value < 4.0)
  {
    return 8;
  }

  if (value < 4.5)
  {
    return 9;
  }

  if (value < 5.0)
  {
    return 10;
  }

  if (value < 5.5)
  {
    return 11;
  }

  if (value < 6.0)
  {
    return 12;
  }

  if (value < 8.0)
  {
    return 13;
  }

  if (value < 10.0)
  {
    return 14;
  }

  if (value < 15.0)
  {
    return 15;
  }

  if (value >= 20.0)
  {
    return 17;
  }

  return 16;
}

uint64_t CycleStdEnum.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
      v2 = 0;
      break;
    case 2:
      v2 = 1;
      break;
    case 3:
      v2 = 2;
      break;
    case 4:
      v2 = 3;
      break;
    case 5:
      v2 = 4;
      break;
    case 6:
      v2 = 5;
      break;
    case 7:
      v2 = 6;
      break;
    case 8:
      v2 = 7;
      break;
    case 9:
      v2 = 8;
      break;
    case 10:
      v2 = 9;
      break;
    case 11:
      v2 = 10;
      break;
    case 12:
      v2 = 11;
      break;
    case 13:
      v2 = 12;
      break;
    case 14:
      v2 = 13;
      break;
    case 15:
      v2 = 14;
      break;
    case 16:
      v2 = 15;
      break;
    case 17:
      v2 = 16;
      break;
    default:
      v2 = -1;
      break;
  }

  return v2;
}

uint64_t AgeEnum.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return -1;
    case 1:
      return 0;
    case 2:
      return 1;
    case 3:
      return 2;
    case 4:
      return 3;
    case 5:
      return 4;
    case 6:
      return 5;
  }

  return 6;
}

uint64_t FlycatcherTelemetrics.recipeId.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t FlycatcherTelemetrics.recipeId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void __swiftcall FlycatcherTelemetrics.init()(NightingaleTraining::FlycatcherTelemetrics *__return_ptr retstr)
{
  bzero(v2, 0x118uLL);
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  memset(&v2[16], 255, 48);
  v2[64] = 0;
  memset(&v2[72], 255, 208);
  memcpy(retstr, v2, sizeof(NightingaleTraining::FlycatcherTelemetrics));
}

void __swiftcall FlycatcherTelemetrics.init(recipeId:cycleIdx:ensembleLogicId:selectedModelId:abserr:widthOneSide:widthTwoSide:coverage:baselineMean:baselineStd:numHistCycles:cycleLen:daysToModel0DRS:daysToModel1DRS:daysToModel2DRS:model0Width:model1Width:model2Width:daysSinceLastPeriod:daysSinceLastContraceptionEnd:daysSinceLastPregnancyEnd:daysSinceLastLactationEnd:sliceDayHRCount:sliceDayHRMean:sliceDayHRStd:sliceNightHRCount:sliceNightHRMean:sliceNightHRStd:numOutliers:numCycles:fullCycleLengthMean:fullCycleLengthStd:bmi:age:)(NightingaleTraining::FlycatcherTelemetrics *__return_ptr retstr, Swift::String recipeId, Swift::Int cycleIdx, Swift::Int ensembleLogicId, Swift::Int selectedModelId, Swift::Int abserr, Swift::Int widthOneSide, Swift::Int widthTwoSide, Swift::Bool coverage, Swift::Int baselineMean, Swift::Int baselineStd, Swift::Int numHistCycles, Swift::Int cycleLen, Swift::Int daysToModel0DRS, Swift::Int daysToModel1DRS, Swift::Int daysToModel2DRS, Swift::Int model0Width, Swift::Int model1Width, Swift::Int model2Width, Swift::Int daysSinceLastPeriod, Swift::Int daysSinceLastContraceptionEnd, Swift::Int daysSinceLastPregnancyEnd, Swift::Int daysSinceLastLactationEnd, Swift::Int sliceDayHRCount, Swift::Int sliceDayHRMean, Swift::Int sliceDayHRStd, Swift::Int sliceNightHRCount, Swift::Int sliceNightHRMean, Swift::Int sliceNightHRStd, Swift::Int numOutliers, Swift::Int numCycles, Swift::Int fullCycleLengthMean, Swift::Int fullCycleLengthStd, Swift::Int bmi, Swift::Int age)
{
  retstr->recipeId = recipeId;
  retstr->cycleIdx = cycleIdx;
  retstr->ensembleLogicId = ensembleLogicId;
  retstr->selectedModelId = selectedModelId;
  retstr->abserr = abserr;
  retstr->widthOneSide = widthOneSide;
  retstr->widthTwoSide = widthTwoSide;
  retstr->coverage = coverage;
  retstr->baselineMean = baselineMean;
  retstr->baselineStd = baselineStd;
  retstr->numHistCycles = numHistCycles;
  retstr->cycleLen = cycleLen;
  retstr->daysToModel0DRS = daysToModel0DRS;
  retstr->daysToModel1DRS = daysToModel1DRS;
  retstr->daysToModel2DRS = daysToModel2DRS;
  retstr->model0Width = model0Width;
  retstr->model1Width = model1Width;
  retstr->model2Width = model2Width;
  retstr->daysSinceLastPeriod = daysSinceLastPeriod;
  retstr->daysSinceLastContraceptionEnd = daysSinceLastContraceptionEnd;
  retstr->daysSinceLastPregnancyEnd = daysSinceLastPregnancyEnd;
  retstr->daysSinceLastLactationEnd = daysSinceLastLactationEnd;
  retstr->sliceDayHRCount = sliceDayHRCount;
  retstr->sliceDayHRMean = sliceDayHRMean;
  retstr->sliceDayHRStd = sliceDayHRStd;
  retstr->sliceNightHRCount = sliceNightHRCount;
  retstr->sliceNightHRMean = sliceNightHRMean;
  retstr->sliceNightHRStd = sliceNightHRStd;
  retstr->numOutliers = numOutliers;
  retstr->numCycles = numCycles;
  retstr->fullCycleLengthMean = fullCycleLengthMean;
  retstr->fullCycleLengthStd = fullCycleLengthStd;
  retstr->bmi = bmi;
  retstr->age = age;
}

NightingaleTraining::AgeEnum_optional __swiftcall AgeEnum.init(rawValue:)(Swift::Int rawValue)
{
  switch(rawValue)
  {
    case -1:
      return 0;
    case 0:
      return 1;
    case 1:
      return 2;
    case 2:
      return 3;
    case 3:
      return 4;
    case 4:
      return 5;
    case 5:
      return 6;
    case 6:
      return 7;
  }

  return 8;
}

NightingaleTraining::BMIEnum_optional __swiftcall BMIEnum.init(rawValue:)(Swift::Int rawValue)
{
  switch(rawValue)
  {
    case -1:
      return 0;
    case 0:
      return 1;
    case 1:
      return 2;
    case 2:
      return 3;
    case 3:
      return 4;
    case 4:
      return 5;
  }

  return 6;
}

NightingaleTraining::NumberOfDaysForFactorsEnum_optional __swiftcall NumberOfDaysForFactorsEnum.init(rawValue:)(Swift::Int rawValue)
{
  switch(rawValue)
  {
    case -1:
      return 0;
    case 0:
      return 1;
    case 1:
      return 2;
    case 2:
      return 3;
    case 3:
      return 4;
    case 4:
      return 5;
    case 5:
      return 6;
    case 6:
      return 7;
    case 7:
      return 8;
  }

  return 9;
}

uint64_t NumberOfDaysForFactorsEnum.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return -1;
    case 1:
      return 0;
    case 2:
      return 1;
    case 3:
      return 2;
    case 4:
      return 3;
    case 5:
      return 4;
    case 6:
      return 5;
    case 7:
      return 6;
  }

  return 7;
}

NightingaleTraining::CycleStdEnum_optional __swiftcall CycleStdEnum.init(rawValue:)(Swift::Int rawValue)
{
  switch(rawValue)
  {
    case -1:
      return 0;
    case 0:
      return 1;
    case 1:
      return 2;
    case 2:
      return 3;
    case 3:
      return 4;
    case 4:
      return 5;
    case 5:
      return 6;
    case 6:
      return 7;
    case 7:
      return 8;
    case 8:
      return 9;
    case 9:
      return 10;
    case 10:
      return 11;
    case 11:
      return 12;
    case 12:
      return 13;
    case 13:
      return 14;
    case 14:
      return 15;
    case 15:
      return 16;
    case 16:
      return 17;
  }

  return 18;
}

NightingaleTraining::AgeEnum_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AgeEnum@<W0>(Swift::Int *a1@<X0>, NightingaleTraining::AgeEnum_optional *a2@<X8>)
{
  result.value = AgeEnum.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AgeEnum@<X0>(uint64_t *a1@<X8>)
{
  result = AgeEnum.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

NightingaleTraining::BMIEnum_optional protocol witness for RawRepresentable.init(rawValue:) in conformance BMIEnum@<W0>(Swift::Int *a1@<X0>, NightingaleTraining::BMIEnum_optional *a2@<X8>)
{
  result.value = BMIEnum.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance BMIEnum@<X0>(uint64_t *a1@<X8>)
{
  result = BMIEnum.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

NightingaleTraining::NumberOfDaysForFactorsEnum_optional protocol witness for RawRepresentable.init(rawValue:) in conformance NumberOfDaysForFactorsEnum@<W0>(Swift::Int *a1@<X0>, NightingaleTraining::NumberOfDaysForFactorsEnum_optional *a2@<X8>)
{
  result.value = NumberOfDaysForFactorsEnum.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NumberOfDaysForFactorsEnum@<X0>(uint64_t *a1@<X8>)
{
  result = NumberOfDaysForFactorsEnum.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

NightingaleTraining::CycleStdEnum_optional protocol witness for RawRepresentable.init(rawValue:) in conformance CycleStdEnum@<W0>(Swift::Int *a1@<X0>, NightingaleTraining::CycleStdEnum_optional *a2@<X8>)
{
  result.value = CycleStdEnum.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CycleStdEnum@<X0>(uint64_t *a1@<X8>)
{
  result = CycleStdEnum.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

NightingaleTraining::NumberOfDaysForFactorsEnum __swiftcall getNumberOfDaysForFactors(value:valueForNA:)(Swift::Int value, Swift::Int_optional valueForNA)
{
  if (!valueForNA.is_nil && valueForNA.value == value)
  {
    return 0;
  }

  if (value < 1)
  {
    return 1;
  }

  if (value < 5)
  {
    return 2;
  }

  if (value < 10)
  {
    return 3;
  }

  if (value < 15)
  {
    return 4;
  }

  if (value < 20)
  {
    return 5;
  }

  if (value < 25)
  {
    return 6;
  }

  if (value >= 30)
  {
    return 8;
  }

  return 7;
}

double ShadowEvaluation.urCycleLength.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  swift_endAccess();
  return v2;
}

uint64_t ShadowEvaluation.urCycleLength.setter(double a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  return swift_endAccess();
}

uint64_t ShadowEvaluation.init(config:urCycleLength:urPeriodLength:)(uint64_t a1, double a2, double a3)
{
  MEMORY[0x277D82BE0](a1);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  MEMORY[0x277D82BD8](a1);
  return v8;
}

unint64_t lazy protocol witness table accessor for type AgeEnum and conformance AgeEnum()
{
  v2 = lazy protocol witness table cache variable for type AgeEnum and conformance AgeEnum;
  if (!lazy protocol witness table cache variable for type AgeEnum and conformance AgeEnum)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AgeEnum and conformance AgeEnum);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AgeEnum and conformance AgeEnum;
  if (!lazy protocol witness table cache variable for type AgeEnum and conformance AgeEnum)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AgeEnum and conformance AgeEnum);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type BMIEnum and conformance BMIEnum()
{
  v2 = lazy protocol witness table cache variable for type BMIEnum and conformance BMIEnum;
  if (!lazy protocol witness table cache variable for type BMIEnum and conformance BMIEnum)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type BMIEnum and conformance BMIEnum);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type BMIEnum and conformance BMIEnum;
  if (!lazy protocol witness table cache variable for type BMIEnum and conformance BMIEnum)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type BMIEnum and conformance BMIEnum);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type NumberOfDaysForFactorsEnum and conformance NumberOfDaysForFactorsEnum()
{
  v2 = lazy protocol witness table cache variable for type NumberOfDaysForFactorsEnum and conformance NumberOfDaysForFactorsEnum;
  if (!lazy protocol witness table cache variable for type NumberOfDaysForFactorsEnum and conformance NumberOfDaysForFactorsEnum)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NumberOfDaysForFactorsEnum and conformance NumberOfDaysForFactorsEnum);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NumberOfDaysForFactorsEnum and conformance NumberOfDaysForFactorsEnum;
  if (!lazy protocol witness table cache variable for type NumberOfDaysForFactorsEnum and conformance NumberOfDaysForFactorsEnum)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NumberOfDaysForFactorsEnum and conformance NumberOfDaysForFactorsEnum);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type CycleStdEnum and conformance CycleStdEnum()
{
  v2 = lazy protocol witness table cache variable for type CycleStdEnum and conformance CycleStdEnum;
  if (!lazy protocol witness table cache variable for type CycleStdEnum and conformance CycleStdEnum)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CycleStdEnum and conformance CycleStdEnum);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CycleStdEnum and conformance CycleStdEnum;
  if (!lazy protocol witness table cache variable for type CycleStdEnum and conformance CycleStdEnum)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CycleStdEnum and conformance CycleStdEnum);
    return WitnessTable;
  }

  return v2;
}

Swift::tuple_dayInputs_OpaquePointer_chronologicalOrderedCFs_OpaquePointer __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ShadowEvaluation.toAlgorithmInputs(flow:otr:spotting:cycleFactors:swt:daySHR10s:nightSHR10s:daySHRCounts:nightSHRCounts:)(Swift::OpaquePointer flow, Swift::OpaquePointer otr, Swift::OpaquePointer spotting, Swift::OpaquePointer cycleFactors, Swift::OpaquePointer swt, Swift::OpaquePointer daySHR10s, Swift::OpaquePointer nightSHR10s, Swift::OpaquePointer daySHRCounts, Swift::OpaquePointer nightSHRCounts)
{
  rawValue = daySHRCounts._rawValue;
  v83 = nightSHR10s._rawValue;
  v82 = daySHR10s._rawValue;
  v80 = swt._rawValue;
  v72 = cycleFactors._rawValue;
  v77 = spotting._rawValue;
  v73 = flow._rawValue;
  v89 = nightSHRCounts._rawValue;
  v74 = nightSHRCounts._rawValue;
  v75 = 0;
  v111[1] = 0;
  v101 = 0;
  *&v97[8] = 0;
  v111[10] = flow._rawValue;
  v111[9] = otr._rawValue;
  v111[8] = spotting._rawValue;
  v111[7] = cycleFactors._rawValue;
  v111[6] = swt._rawValue;
  v111[5] = daySHR10s._rawValue;
  v111[4] = nightSHR10s._rawValue;
  v111[3] = daySHRCounts._rawValue;
  v111[2] = nightSHRCounts._rawValue;
  v94 = MEMORY[0x277D84CC0];
  v95 = MEMORY[0x277D84CD0];

  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVys6UInt32Vs5UInt8V_GMd, &_sSD4KeysVys6UInt32Vs5UInt8V_GMR);
  lazy protocol witness table accessor for type [UInt32 : UInt8].Keys and conformance [A : B].Keys();
  v111[0] = Set.init<A>(_:)();

  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShys6UInt32VGMd, &_sShys6UInt32VGMR);
  v78 = v91;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVys6UInt32VSb_GMd, &_sSD4KeysVys6UInt32VSb_GMR);
  lazy protocol witness table accessor for type [UInt32 : Bool].Keys and conformance [A : B].Keys();
  v88 = v111;
  Set.formUnion<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf_SStMd, &_sSf_SStMR);

  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVys6UInt32VSf_SSt_GMd, &_sSD4KeysVys6UInt32VSf_SSt_GMR);
  lazy protocol witness table accessor for type [UInt32 : (Float, String)].Keys and conformance [A : B].Keys();
  Set.formUnion<A>(_:)();
  v84 = MEMORY[0x277D83A90];

  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVys6UInt32VSf_GMd, &_sSD4KeysVys6UInt32VSf_GMR);
  v86 = lazy protocol witness table accessor for type [UInt32 : Float].Keys and conformance [A : B].Keys();
  Set.formUnion<A>(_:)();

  Set.formUnion<A>(_:)();
  v90 = MEMORY[0x277D83B88];

  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVys6UInt32VSi_GMd, &_sSD4KeysVys6UInt32VSi_GMR);
  v93 = lazy protocol witness table accessor for type [UInt32 : Int].Keys and conformance [A : B].Keys();
  Set.formUnion<A>(_:)();

  Set.formUnion<A>(_:)();
  v96 = v111[0];

  *v97 = Set.isEmpty.getter();

  if (v97[0])
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v36[0] = 0;
    v36[1] = swift_allocError();
    *v33 = 30;
    swift_willThrow();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    goto LABEL_14;
  }

  v68 = v71;
  v63 = v111[0];

  v103 = v63;

  v64 = v36;
  MEMORY[0x28223BE20](v36, v9);
  v65 = v36;
  v66 = v35;
  v35[2] = v10;
  v35[3] = v11;
  v35[4] = v12;
  v35[5] = v13;
  v35[6] = v83;
  v35[7] = v74;
  v35[8] = v14;
  v67 = type metadata accessor for NgtMenstrualAlgorithmsDayInput();
  v15 = lazy protocol witness table accessor for type Set<UInt32> and conformance Set<A>();
  v16 = v68;
  v18 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in ShadowEvaluation.toAlgorithmInputs(flow:otr:spotting:cycleFactors:swt:daySHR10s:nightSHR10s:daySHRCounts:nightSHRCounts:), v66, v78, v67, MEMORY[0x277D84A98], v15, MEMORY[0x277D84AC0], v17);
  v69 = v16;
  v70 = v18;
  if (v16)
  {

    __break(1u);
    goto LABEL_10;
  }

  v58 = v70;
  v60 = 0;

  outlined destroy of [(start: UInt32, end: UInt32)]();
  v102 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30NgtMenstrualAlgorithmsDayInputCGMd, &_sSaySo30NgtMenstrualAlgorithmsDayInputCGMR);
  lazy protocol witness table accessor for type [NgtMenstrualAlgorithmsDayInput] and conformance [A]();
  v19 = v60;
  v20 = Sequence.sorted(by:)();
  v61 = v19;
  v62 = v20;
  if (v19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v49 = v62;
  v55 = 0;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v101 = v49;
  v100 = v72;
  v50 = v35;
  MEMORY[0x28223BE20](v35, v22);
  v52 = &v35[-4];
  v35[-2] = closure #3 in CalendarPeriodPrediction.toAlgorithmInputs(flow:otr:spotting:cycleFactors:swt:);
  v35[-1] = 0;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5UInt8VSays6UInt32V5start_AD3endtGGMd, &_sSDys5UInt8VSays6UInt32V5start_AD3endtGGMR);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8V4type_s6UInt32V3daySb3endtGMd, &_sSays5UInt8V4type_s6UInt32V3daySb3endtGMR);
  v51 = v54;
  v23 = lazy protocol witness table accessor for type [UInt8 : [(start: UInt32, end: UInt32)]] and conformance [A : B]();
  v24 = v55;
  v26 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned UInt8, @guaranteed [(start: UInt32, end: UInt32)]) -> (@owned [(type: UInt8, day: UInt32, end: Bool)]), v52, v53, v54, MEMORY[0x277D84A98], v23, MEMORY[0x277D84AC0], v25);
  v56 = v24;
  v57 = v26;
  if (v24)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v45 = 0;
  v99 = v57;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySays5UInt8V4type_s6UInt32V3daySb3endtGGMd, &_sSaySays5UInt8V4type_s6UInt32V3daySb3endtGGMR);
  v44 = lazy protocol witness table accessor for type [[(type: UInt8, day: UInt32, end: Bool)]] and conformance [A]();
  v27 = lazy protocol witness table accessor for type [(type: UInt8, day: UInt32, end: Bool)] and conformance [A]();
  v28 = v45;
  v46 = v27;
  v29 = Sequence.flatMap<A>(_:)();
  v47 = v28;
  v48 = v29;
  if (v28)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v39 = v48;
  v40 = 0;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v30 = v40;
  v98 = v39;
  v31 = Sequence.sorted(by:)();
  v41 = v30;
  v42 = v31;
  if (v30)
  {
LABEL_13:
    v32 = 0;
    __break(1u);
    goto LABEL_14;
  }

  v37 = v42;
  v38 = 0;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  *&v97[4] = v37;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v21 = v37;
  v32 = v49;
LABEL_14:
  result.chronologicalOrderedCFs._rawValue = v21;
  result.dayInputs._rawValue = v32;
  return result;
}

uint64_t closure #1 in ShadowEvaluation.toAlgorithmInputs(flow:otr:spotting:cycleFactors:swt:daySHR10s:nightSHR10s:daySHRCounts:nightSHRCounts:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, HKHealthStore *a9@<X8>)
{
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v41 = 0;
  v37 = 0;
  v36 = 0;
  v62 = *a1;
  v31 = v62;
  v61 = a2;
  v60 = a3;
  v59 = a4;
  v58 = a5;
  v57 = a6;
  v56 = a7;
  v55 = a8;
  type metadata accessor for NgtMenstrualAlgorithmsDayInput();
  isa = HKHealthStore.__allocating_init()().super.isa;
  v54 = isa;
  [(objc_class *)isa setJulianDay:v62];
  v52 = v62;
  MEMORY[0x25F8891D0](v53, &v52, a2, MEMORY[0x277D84CC0], MEMORY[0x277D84B78], MEMORY[0x277D84CD0]);
  if ((v53[1] & 1) == 0)
  {
    v9 = NgtMenstrualAlgorithmsOvulationTestResult.init(rawValue:)(v53[0]);
    if ((v9 & 0x100) == 0)
    {
      [(objc_class *)isa setFlow:v9];
    }
  }

  v49 = v31;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf_SStMd, &_sSf_SStMR);
  MEMORY[0x25F8891D0](&v50, &v49, a3, MEMORY[0x277D84CC0], v10, MEMORY[0x277D84CD0]);
  v21 = *&v50;
  v22 = v51;
  if (v51._object)
  {
    type metadata accessor for NgtMenstrualAlgorithmsWristTemperature();
    v19 = Double.init(_:)(v21);

    v63 = NgtMenstrualAlgorithmsWristTemperature.__allocating_init(temperature:forWatchIdentifier:)(v19, v22);
    v20 = v63.super.isa;
    [(objc_class *)isa setWristTemperature:v63._temperatureCelsius];
    MEMORY[0x277D82BD8](v20);
  }

  v47 = v31;
  MEMORY[0x25F8891D0](&v48, &v47, a4, MEMORY[0x277D84CC0], MEMORY[0x277D83A90], MEMORY[0x277D84CD0]);
  if ((v48 & 0x100000000) == 0)
  {
    v36 = v48;
    v33 = v31;
    MEMORY[0x25F8891D0](&v34, &v33, a5, MEMORY[0x277D84CC0], MEMORY[0x277D83B88], MEMORY[0x277D84CD0]);
    v18 = v34;
    if ((v35 & 1) == 0)
    {
      type metadata accessor for NgtMenstrualAlgorithmsHeartRateStatistics();
      lowerPercentile.super.super.isa = Float._bridgeToObjectiveC()().super.super.isa;
      if (v18 < 0xFFFFFFFF80000000)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
        __break(1u);
      }

      if (v18 > 0x7FFFFFFF)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
        __break(1u);
      }

      v16 = NgtMenstrualAlgorithmsHeartRateStatistics.__allocating_init(lowerPercentile:forSampleCount:)(lowerPercentile, v18);
      [(objc_class *)isa setSedentaryHeartRateStatistics:?];
      MEMORY[0x277D82BD8](v16);
    }
  }

  v45 = v31;
  MEMORY[0x25F8891D0](&v46, &v45, a6, MEMORY[0x277D84CC0], MEMORY[0x277D83A90], MEMORY[0x277D84CD0]);
  if ((v46 & 0x100000000) == 0)
  {
    v41 = v46;
    v38 = v31;
    MEMORY[0x25F8891D0](&v39, &v38, a7, MEMORY[0x277D84CC0], MEMORY[0x277D83B88], MEMORY[0x277D84CD0]);
    v15 = v39;
    if ((v40 & 1) == 0)
    {
      v37 = v39;
      type metadata accessor for NgtMenstrualAlgorithmsHeartRateStatistics();
      v14.super.super.isa = Float._bridgeToObjectiveC()().super.super.isa;
      if (v15 < 0xFFFFFFFF80000000)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
        __break(1u);
      }

      if (v15 > 0x7FFFFFFF)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
        __break(1u);
      }

      v13 = NgtMenstrualAlgorithmsHeartRateStatistics.__allocating_init(lowerPercentile:forSampleCount:)(v14, v15);
      [(objc_class *)isa setSleepHeartRateStatistics:?];
      MEMORY[0x277D82BD8](v13);
    }
  }

  v43 = v31;
  MEMORY[0x25F8891D0](&v44, &v43, a8, MEMORY[0x277D84CC0], MEMORY[0x277D839B0], MEMORY[0x277D84CD0]);
  v42 = v44;
  if (v44 == 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = v42;
  }

  [(objc_class *)isa setSpotting:v12 & 1];
  MEMORY[0x277D82BE0](isa);
  a9->super.isa = isa;
  return MEMORY[0x277D82BD8](isa);
}

NgtMenstrualAlgorithmsHeartRateStatistics __swiftcall NgtMenstrualAlgorithmsHeartRateStatistics.__allocating_init(lowerPercentile:forSampleCount:)(NSNumber lowerPercentile, Swift::Int32 forSampleCount)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = @nonobjc NgtMenstrualAlgorithmsHeartRateStatistics.init(lowerPercentile:forSampleCount:)(lowerPercentile.super.super.isa);
  result._sampleCount = v6;
  result.super.isa = v3;
  HIDWORD(result._lowerPercentile) = v5;
  LODWORD(result._lowerPercentile) = v4;
  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ShadowEvaluation.analyze(mlConfig:earliestDay:latestDay:t0:t1:dayInputs:chronologicalOrderedCFs:)(NightingaleTraining::FlycatcherTelemetrics_optional *__return_ptr retstr, NgtMenstrualAlgorithmsMLModelConfig *mlConfig, Swift::UInt32 earliestDay, Swift::UInt32 latestDay, Swift::UInt32 t0, Swift::UInt32 t1, Swift::OpaquePointer dayInputs, Swift::OpaquePointer chronologicalOrderedCFs)
{
  v10 = MEMORY[0x28223BE20](mlConfig, *&earliestDay);
  v306 = &v393;
  v327 = v349;
  v307 = v9;
  v308 = v8;
  v313 = v11;
  v330 = v12;
  v312 = v13;
  v319 = v14;
  v322 = v15;
  v314 = v16;
  v325 = v10;
  v309 = v17;
  v397 = *MEMORY[0x277D85DE8];
  v328 = 0;
  v382 = 0;
  v310 = 0;
  v381 = 0;
  v380 = 0;
  v379 = 0;
  v378 = 0;
  memset(&v377[6], 0, 64);
  v377[3] = 0;
  v377[2] = 0;
  v375[2] = 0;
  v311 = 0u;
  memset(&v388, 0, sizeof(v388));
  v375[1] = 0;
  v344 = 0;
  v343 = 0;
  v342 = 0;
  v341 = 0;
  v340 = 0;
  v315 = type metadata accessor for Logger();
  v316 = *(v315 - 8);
  v317 = v316;
  v318 = *(v316 + 64);
  v18 = MEMORY[0x28223BE20](v325, v314);
  v19 = v319;
  v320 = &v140 - ((v318 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v20 + 592) = v18;
  *(v20 + 584) = v21;
  *(v20 + 576) = v22;
  *(v20 + 568) = v19;
  *(v20 + 560) = v23;
  *(v20 + 552) = v24;
  *(v20 + 544) = v25;
  *(v20 + 536) = v8;
  v321 = &v396;
  swift_beginAccess();
  v323 = *(v8 + 16);
  v26 = v323;
  swift_endAccess();
  ShadowEvaluation.getDayStreamProcessorConfigFromConfig(cached:lastJulianDay:)(v27, v323, v322);
  v326 = v28;
  v324 = v28;

  *(v327 + 66) = v326;
  type metadata accessor for NgtMenstrualAlgorithmsDayStreamProcessor();
  v29 = v326;
  v30 = v325;
  NgtMenstrualAlgorithmsDayStreamProcessor.__allocating_init(config:mlConfig:)(v31, v326, v325);
  v329 = v32;
  *(v327 + 65) = v32;
  v331 = type metadata accessor for NgtMenstrualAlgorithmsDayInput();
  v332 = v331;
  v33 = MEMORY[0x25F8895B0](v330);
  v34 = __OFSUB__(v33, 1);
  v333 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    if (v333 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
      __break(1u);
    }

    v35 = v333;
    v36 = v327;
    *(v327 + 60) = 0;
    *(v36 + 61) = v35;
    v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    Collection<>.makeIterator()();
    for (i = v307; ; i = v302)
    {
      v302 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd, &_ss16IndexingIteratorVySnySiGGMR);
      IndexingIterator.next()();
      v303 = *(v306 + 12);
      if (v395)
      {
        break;
      }

      v301 = v303;
      v298 = v303;
      v340 = v303;
      Array.subscript.getter();
      v299 = v339;
      v300 = [v339 julianDay];

      if (v300 < v314 || (Array.subscript.getter(), v296 = v337, v297 = [v337 julianDay], v296, v322 < v297))
      {
        Array.subscript.getter();
        v293 = v338;
        v294 = [v338 julianDay];

        if (v322 < v294)
        {
          break;
        }
      }

      else
      {
        Array.subscript.getter();
        v295 = v336;
        [v329 appendDay_];
      }
    }

    *(v327 + 57) = v313;
    v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8V4type_s6UInt32V3daySb3endtGMd, &_sSays5UInt8V4type_s6UInt32V3daySb3endtGMR);
    lazy protocol witness table accessor for type [(type: UInt8, day: UInt32, end: Bool)] and conformance [A]();
    Collection<>.makeIterator()();
    for (j = v302; ; j = v288)
    {
      v288 = j;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySays5UInt8V4type_s6UInt32V3daySb3endtGGMd, &_ss16IndexingIteratorVySays5UInt8V4type_s6UInt32V3daySb3endtGGMR);
      IndexingIterator.next()();
      v289 = *v306;
      v290 = v394;
      if (v394 == 2)
      {
        break;
      }

      v286 = v289;
      v287 = v290;
      v283 = v290;
      v284 = HIDWORD(v289);
      v285 = v289;
      v344 = v289;
      v343 = HIDWORD(v289);
      v342 = v290 & 1;
      if (v322 < HIDWORD(v289))
      {
        break;
      }

      v334 = NgtMenstrualAlgorithmsOvulationTestResult.init(rawValue:)(v285);
      v282 = v334;
      if ((v334 & 0x100) == 0)
      {
        v281 = v282;
        v280 = v281;
        v341 = v281;
        if (v283)
        {
          [v329 endPhase:v280 onJulianDay:v284];
        }

        else
        {
          [v329 beginPhase:v280 onJulianDay:v284];
        }
      }
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v37 = v322;
    v38 = v327;
    v39 = v329;
    *(v327 + 357) = 0;
    *(v38 + 56) = *(v38 + 357);
    v279 = [v39 analyzeWithMostRecentMenstrualFlowJulianDayUpdated:v37 error:v377];
    v277 = v279;
    v278 = *(v327 + 56);
    v40 = v278;
    v41 = *(v327 + 357);
    *(v327 + 357) = v278;

    if (v279)
    {
      v276 = v277;
      v274 = v277;
      v275 = v288;
    }

    else
    {
      v140 = *(v327 + 357);
      v141 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v142 = 0;
      v143 = 0;

      v274 = v142;
      v275 = v143;
    }

    v272 = v275;
    v273 = v274;
    if (v274)
    {
      v271 = v273;
      v269 = v273;
      *(v327 + 53) = v273;
      FlycatcherTelemetrics.init()(&v388);
      v270 = [v269 telemetry];
      if (v270)
      {
        v268 = v270;
        v42 = v270;
        v267 = v270;
        *(v327 + 52) = v270;
        v177 = [v42 ensembleSelectedModelIdx];
        v227 = 0x1FABBB000uLL;
        v178 = [v177 0x1FABBB078];

        v43 = v327;
        *(v327 + 50) = v178;
        v230 = 0;
        *(v43 + 48) = 0;
        *(v43 + 49) = 11;
        v232 = MEMORY[0x277D83B88];
        v233 = MEMORY[0x277D83BA0];
        Comparable.clamp(to:)(&v374, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], v375);
        v247 = *(v327 + 51);
        v179 = [v267 baselineMean];
        v219 = 0x1FA982000uLL;
        [v179 0x1FA9827C8];
        v180 = v44;

        v45 = v327;
        *(v327 + 95) = v180;
        v222 = 0;
        v45[93] = 0;
        v45[94] = 1115815936;
        v224 = -1082130432;
        v45[92] = -1082130432;
        v226 = lazy protocol witness table accessor for type Float and conformance Float();
        v225 = MEMORY[0x277D83A90];
        v243 = BinaryFloatingPoint.clamp(to:nonFiniteValue:)(&v373 + 4, &v373, MEMORY[0x277D83A90], v226);
        v181 = [v267 baselineStdUncapped];
        [v181 (v219 + 1992)];
        v182 = v46;

        LODWORD(v335) = v224;
        BYTE4(v335) = v222;
        v47 = getCycleStdEnum(value:valueForNA:)(v182, v335);
        v242 = CycleStdEnum.rawValue.getter(v47);
        v183 = [v267 numHistoricalCycles];
        v184 = [v183 (v227 + 120)];

        v48 = v327;
        v49 = v230;
        v50 = v232;
        v51 = v233;
        *(v327 + 44) = v184;
        *(v48 + 42) = v49;
        *(v48 + 43) = 101;
        Comparable.clamp(to:)(&v371, v50, v51, &v372);
        v241 = *(v327 + 45);
        v185 = [v267 daysToModel0Drs];
        v186 = [v185 (v227 + 120)];

        v52 = v327;
        v53 = v230;
        v54 = v232;
        v55 = v233;
        *(v327 + 40) = v186;
        *(v52 + 38) = v53;
        v199 = 65;
        *(v52 + 39) = 65;
        Comparable.clamp(to:)(&v369, v54, v55, &v370);
        v239 = *(v327 + 41);
        v187 = [v267 daysToModel1Drs];
        v188 = [v187 (v227 + 120)];

        v56 = v199;
        v57 = v327;
        v58 = v230;
        v59 = v232;
        v60 = v233;
        *(v327 + 36) = v188;
        *(v57 + 34) = v58;
        *(v57 + 35) = v56;
        Comparable.clamp(to:)(&v367, v59, v60, &v368);
        v238 = *(v327 + 37);
        v189 = [v267 daysToModel2Drs];
        v190 = [v189 (v227 + 120)];

        v61 = v199;
        v62 = v327;
        v63 = v230;
        v64 = v232;
        v65 = v233;
        *(v327 + 32) = v190;
        *(v62 + 30) = v63;
        *(v62 + 31) = v61;
        Comparable.clamp(to:)(&v365, v64, v65, &v366);
        v237 = *(v327 + 33);
        v191 = [v267 model0Width];
        v192 = [v191 (v227 + 120)];

        v66 = v327;
        v67 = v230;
        v68 = v232;
        v69 = v233;
        *(v327 + 28) = v192;
        *(v66 + 26) = v67;
        v231 = 21;
        *(v66 + 27) = 21;
        Comparable.clamp(to:)(&v363, v68, v69, &v364);
        v236 = *(v327 + 29);
        v193 = [v267 model1Width];
        v194 = [v193 (v227 + 120)];

        v70 = v327;
        v71 = v230;
        v72 = v231;
        v73 = v232;
        v74 = v233;
        *(v327 + 24) = v194;
        *(v70 + 22) = v71;
        *(v70 + 23) = v72;
        Comparable.clamp(to:)(&v361, v73, v74, &v362);
        v235 = *(v327 + 25);
        v195 = [v267 model2Width];
        v196 = [v195 (v227 + 120)];

        v75 = v327;
        v76 = v230;
        v77 = v231;
        v78 = v232;
        v79 = v233;
        *(v327 + 20) = v196;
        *(v75 + 18) = v76;
        *(v75 + 19) = v77;
        Comparable.clamp(to:)(&v359, v78, v79, &v360);
        v234 = *(v327 + 21);
        v197 = [v267 daysSinceLastPeriod];
        v198 = [v197 (v227 + 120)];

        v80 = v199;
        v81 = v327;
        v82 = v230;
        v83 = v232;
        v84 = v233;
        *(v327 + 16) = v198;
        *(v81 + 14) = v82;
        *(v81 + 15) = v80;
        Comparable.clamp(to:)(&v357, v83, v84, &v358);
        v85 = *(v327 + 17);
        v200 = [v267 daysSinceLastContraceptionEnd];
        v201 = [v200 (v227 + 120)];

        v398.is_nil = v222;
        v398.value = -3;
        v206 = -3;
        v86 = getNumberOfDaysForFactors(value:valueForNA:)(v201, v398);
        v87 = NumberOfDaysForFactorsEnum.rawValue.getter(v86);
        v202 = [v267 daysSinceLastPregnancyEnd];
        v203 = [v202 (v227 + 120)];

        v399.value = v206;
        v399.is_nil = v222;
        v88 = getNumberOfDaysForFactors(value:valueForNA:)(v203, v399);
        v89 = NumberOfDaysForFactorsEnum.rawValue.getter(v88);
        v204 = [v267 daysSinceLastLactationEnd];
        v205 = [v204 (v227 + 120)];

        v400.value = v206;
        v400.is_nil = v222;
        v90 = getNumberOfDaysForFactors(value:valueForNA:)(v205, v400);
        v91 = NumberOfDaysForFactorsEnum.rawValue.getter(v90);
        v207 = [v267 sliceDayHrCount];
        v208 = [v207 (v227 + 120)];

        v92 = v327;
        v93 = v230;
        v94 = v232;
        v95 = v233;
        *(v327 + 12) = v208;
        *(v92 + 10) = v93;
        v215 = 46;
        *(v92 + 11) = 46;
        Comparable.clamp(to:)(&v355, v94, v95, &v356);
        v96 = *(v327 + 13);
        v209 = [v267 sliceDayHrMean];
        [v209 (v219 + 1992)];
        v210 = v97;

        v98 = v327;
        v99 = v222;
        v100 = v224;
        v101 = v225;
        v102 = v226;
        *(v327 + 19) = v210;
        v98[17] = v99;
        v218 = 1123155968;
        v98[18] = 1123155968;
        v98[16] = v100;
        v103 = BinaryFloatingPoint.clamp(to:nonFiniteValue:)(&v354 + 4, &v354, v101, v102);
        v211 = [v267 sliceDayHrStd];
        [v211 (v219 + 1992)];
        v212 = v104;

        v105 = v327;
        v106 = v222;
        v107 = v224;
        v108 = v225;
        v109 = v226;
        *(v327 + 15) = v212;
        v105[13] = v106;
        v223 = 1101529088;
        v105[14] = 1101529088;
        v105[12] = v107;
        v110 = BinaryFloatingPoint.clamp(to:nonFiniteValue:)(&v353 + 4, &v353, v108, v109);
        v213 = [v267 sliceNightHrCount];
        v214 = [v213 (v227 + 120)];

        v111 = v215;
        v112 = v327;
        v113 = v230;
        v114 = v232;
        v115 = v233;
        *(v327 + 4) = v214;
        *(v112 + 2) = v113;
        *(v112 + 3) = v111;
        Comparable.clamp(to:)(&v351, v114, v115, &v352);
        v251 = *(v327 + 5);
        v216 = [v267 sliceNightHrMean];
        [v216 (v219 + 1992)];
        v217 = v116;

        v117 = v218;
        v118 = v327;
        v119 = v222;
        v120 = v224;
        v121 = v225;
        v122 = v226;
        *(v327 + 3) = v217;
        v118[1] = v119;
        v118[2] = v117;
        *v118 = v120;
        v259 = BinaryFloatingPoint.clamp(to:nonFiniteValue:)(&v350, v349, v121, v122);
        v220 = [v267 sliceNightHrStd];
        [v220 (v219 + 1992)];
        v221 = v123;

        v348[2] = v221;
        v348[0] = v222;
        v348[1] = v223;
        v347 = v224;
        v258 = BinaryFloatingPoint.clamp(to:nonFiniteValue:)(v348, &v347, v225, v226);
        v228 = [v267 numOutliers];
        v229 = [v228 (v227 + 120)];

        v345[2] = v229;
        v345[0] = v230;
        v345[1] = v231;
        Comparable.clamp(to:)(v345, v232, v233, &v346);
        v124 = v234;
        v257 = v346;
        v252 = default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();
        v244 = v125;
        v245 = default argument 1 of FlycatcherTelemetrics.init(recipeId:cycleIdx:ensembleLogicId:selectedModelId:abserr:widthOneSide:widthTwoSide:coverage:baselineMean:baselineStd:numHistCycles:cycleLen:daysToModel0DRS:daysToModel1DRS:daysToModel2DRS:model0Width:model1Width:model2Width:daysSinceLastPeriod:daysSinceLastContraceptionEnd:daysSinceLastPregnancyEnd:daysSinceLastLactationEnd:sliceDayHRCount:sliceDayHRMean:sliceDayHRStd:sliceNightHRCount:sliceNightHRMean:sliceNightHRStd:numOutliers:numCycles:fullCycleLengthMean:fullCycleLengthStd:bmi:age:)();
        v246 = default argument 1 of FlycatcherTelemetrics.init(recipeId:cycleIdx:ensembleLogicId:selectedModelId:abserr:widthOneSide:widthTwoSide:coverage:baselineMean:baselineStd:numHistCycles:cycleLen:daysToModel0DRS:daysToModel1DRS:daysToModel2DRS:model0Width:model1Width:model2Width:daysSinceLastPeriod:daysSinceLastContraceptionEnd:daysSinceLastPregnancyEnd:daysSinceLastLactationEnd:sliceDayHRCount:sliceDayHRMean:sliceDayHRStd:sliceNightHRCount:sliceNightHRMean:sliceNightHRStd:numOutliers:numCycles:fullCycleLengthMean:fullCycleLengthStd:bmi:age:)();
        v248 = default argument 1 of FlycatcherTelemetrics.init(recipeId:cycleIdx:ensembleLogicId:selectedModelId:abserr:widthOneSide:widthTwoSide:coverage:baselineMean:baselineStd:numHistCycles:cycleLen:daysToModel0DRS:daysToModel1DRS:daysToModel2DRS:model0Width:model1Width:model2Width:daysSinceLastPeriod:daysSinceLastContraceptionEnd:daysSinceLastPregnancyEnd:daysSinceLastLactationEnd:sliceDayHRCount:sliceDayHRMean:sliceDayHRStd:sliceNightHRCount:sliceNightHRMean:sliceNightHRStd:numOutliers:numCycles:fullCycleLengthMean:fullCycleLengthStd:bmi:age:)();
        v249 = default argument 1 of FlycatcherTelemetrics.init(recipeId:cycleIdx:ensembleLogicId:selectedModelId:abserr:widthOneSide:widthTwoSide:coverage:baselineMean:baselineStd:numHistCycles:cycleLen:daysToModel0DRS:daysToModel1DRS:daysToModel2DRS:model0Width:model1Width:model2Width:daysSinceLastPeriod:daysSinceLastContraceptionEnd:daysSinceLastPregnancyEnd:daysSinceLastLactationEnd:sliceDayHRCount:sliceDayHRMean:sliceDayHRStd:sliceNightHRCount:sliceNightHRMean:sliceNightHRStd:numOutliers:numCycles:fullCycleLengthMean:fullCycleLengthStd:bmi:age:)();
        v250 = default argument 1 of FlycatcherTelemetrics.init(recipeId:cycleIdx:ensembleLogicId:selectedModelId:abserr:widthOneSide:widthTwoSide:coverage:baselineMean:baselineStd:numHistCycles:cycleLen:daysToModel0DRS:daysToModel1DRS:daysToModel2DRS:model0Width:model1Width:model2Width:daysSinceLastPeriod:daysSinceLastContraceptionEnd:daysSinceLastPregnancyEnd:daysSinceLastLactationEnd:sliceDayHRCount:sliceDayHRMean:sliceDayHRStd:sliceNightHRCount:sliceNightHRMean:sliceNightHRStd:numOutliers:numCycles:fullCycleLengthMean:fullCycleLengthStd:bmi:age:)();
        v260 = default argument 3 of Calendar.date(byAdding:value:to:wrappingComponents:)();
        v240 = default argument 1 of FlycatcherTelemetrics.init(recipeId:cycleIdx:ensembleLogicId:selectedModelId:abserr:widthOneSide:widthTwoSide:coverage:baselineMean:baselineStd:numHistCycles:cycleLen:daysToModel0DRS:daysToModel1DRS:daysToModel2DRS:model0Width:model1Width:model2Width:daysSinceLastPeriod:daysSinceLastContraceptionEnd:daysSinceLastPregnancyEnd:daysSinceLastLactationEnd:sliceDayHRCount:sliceDayHRMean:sliceDayHRStd:sliceNightHRCount:sliceNightHRMean:sliceNightHRStd:numOutliers:numCycles:fullCycleLengthMean:fullCycleLengthStd:bmi:age:)();
        v256 = default argument 1 of FlycatcherTelemetrics.init(recipeId:cycleIdx:ensembleLogicId:selectedModelId:abserr:widthOneSide:widthTwoSide:coverage:baselineMean:baselineStd:numHistCycles:cycleLen:daysToModel0DRS:daysToModel1DRS:daysToModel2DRS:model0Width:model1Width:model2Width:daysSinceLastPeriod:daysSinceLastContraceptionEnd:daysSinceLastPregnancyEnd:daysSinceLastLactationEnd:sliceDayHRCount:sliceDayHRMean:sliceDayHRStd:sliceNightHRCount:sliceNightHRMean:sliceNightHRStd:numOutliers:numCycles:fullCycleLengthMean:fullCycleLengthStd:bmi:age:)();
        v255 = default argument 1 of FlycatcherTelemetrics.init(recipeId:cycleIdx:ensembleLogicId:selectedModelId:abserr:widthOneSide:widthTwoSide:coverage:baselineMean:baselineStd:numHistCycles:cycleLen:daysToModel0DRS:daysToModel1DRS:daysToModel2DRS:model0Width:model1Width:model2Width:daysSinceLastPeriod:daysSinceLastContraceptionEnd:daysSinceLastPregnancyEnd:daysSinceLastLactationEnd:sliceDayHRCount:sliceDayHRMean:sliceDayHRStd:sliceNightHRCount:sliceNightHRMean:sliceNightHRStd:numOutliers:numCycles:fullCycleLengthMean:fullCycleLengthStd:bmi:age:)();
        v254 = default argument 1 of FlycatcherTelemetrics.init(recipeId:cycleIdx:ensembleLogicId:selectedModelId:abserr:widthOneSide:widthTwoSide:coverage:baselineMean:baselineStd:numHistCycles:cycleLen:daysToModel0DRS:daysToModel1DRS:daysToModel2DRS:model0Width:model1Width:model2Width:daysSinceLastPeriod:daysSinceLastContraceptionEnd:daysSinceLastPregnancyEnd:daysSinceLastLactationEnd:sliceDayHRCount:sliceDayHRMean:sliceDayHRStd:sliceNightHRCount:sliceNightHRMean:sliceNightHRStd:numOutliers:numCycles:fullCycleLengthMean:fullCycleLengthStd:bmi:age:)();
        v253 = default argument 1 of FlycatcherTelemetrics.init(recipeId:cycleIdx:ensembleLogicId:selectedModelId:abserr:widthOneSide:widthTwoSide:coverage:baselineMean:baselineStd:numHistCycles:cycleLen:daysToModel0DRS:daysToModel1DRS:daysToModel2DRS:model0Width:model1Width:model2Width:daysSinceLastPeriod:daysSinceLastContraceptionEnd:daysSinceLastPregnancyEnd:daysSinceLastLactationEnd:sliceDayHRCount:sliceDayHRMean:sliceDayHRStd:sliceNightHRCount:sliceNightHRMean:sliceNightHRStd:numOutliers:numCycles:fullCycleLengthMean:fullCycleLengthStd:bmi:age:)();
        v126 = default argument 1 of FlycatcherTelemetrics.init(recipeId:cycleIdx:ensembleLogicId:selectedModelId:abserr:widthOneSide:widthTwoSide:coverage:baselineMean:baselineStd:numHistCycles:cycleLen:daysToModel0DRS:daysToModel1DRS:daysToModel2DRS:model0Width:model1Width:model2Width:daysSinceLastPeriod:daysSinceLastContraceptionEnd:daysSinceLastPregnancyEnd:daysSinceLastLactationEnd:sliceDayHRCount:sliceDayHRMean:sliceDayHRStd:sliceNightHRCount:sliceNightHRMean:sliceNightHRStd:numOutliers:numCycles:fullCycleLengthMean:fullCycleLengthStd:bmi:age:)();
        v127._object = v244;
        age = v126;
        v127._countAndFlagsBits = v252;
        v261 = &v138;
        v262 = &v383;
        FlycatcherTelemetrics.init(recipeId:cycleIdx:ensembleLogicId:selectedModelId:abserr:widthOneSide:widthTwoSide:coverage:baselineMean:baselineStd:numHistCycles:cycleLen:daysToModel0DRS:daysToModel1DRS:daysToModel2DRS:model0Width:model1Width:model2Width:daysSinceLastPeriod:daysSinceLastContraceptionEnd:daysSinceLastPregnancyEnd:daysSinceLastLactationEnd:sliceDayHRCount:sliceDayHRMean:sliceDayHRStd:sliceNightHRCount:sliceNightHRMean:sliceNightHRStd:numOutliers:numCycles:fullCycleLengthMean:fullCycleLengthStd:bmi:age:)(&v383, v127, v245, v246, v247, v248, v249, v250, v260 & 1, v243, v242, v241, v240, v239, v238, v237, v236, v235, v124, v85, v87, v89, v91, v96, v103, v110, v251, v259, v258, v257, v256, v255, v254, v253, age);
        v264 = 280;
        v263 = v384;
        memcpy(v384, v262, sizeof(v384));
        v266 = v385;
        v265 = &v388;
        memcpy(v385, &v388, sizeof(v385));
        memcpy(&v388, v384, sizeof(v388));
        outlined destroy of DefaultStringInterpolation();
      }

      v175 = [v269 menstruationPredictions];
      v173 = type metadata accessor for NgtMenstrualAlgorithmsPrediction();
      v174 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v176 = MEMORY[0x25F8895B0](v174, v173);

      if (v176)
      {
        v172 = &v388;
        ShadowEvaluation.computePerCycleMetrics(t0:t1:analysis:telemetrics:)(v319, v312, v269, &v388);
        v171 = 280;
        v169 = v387;
        memcpy(v387, v172, sizeof(v387));
        outlined init with copy of FlycatcherTelemetrics?(v387, &v386);
        v170 = v389;
        memcpy(v389, v169, v171);
        HKQueryOptions.init(rawValue:)(v170);
        memcpy(v309, v170, v171);
      }

      else
      {
        v168 = v390;
        _s19NightingaleTraining21FlycatcherTelemetricsVSgWOi0_(v390);
        memcpy(v309, v168, 0x118uLL);
      }

      outlined destroy of DefaultStringInterpolation();

      v144 = v272;
      v148 = v272;
    }

    else
    {
      v129 = v320;
      v130 = Logging.default.unsafeMutableAddressor();
      (*(v317 + 16))(v129, v130, v315);
      v166 = Logger.logObject.getter();
      v163 = v166;
      v165 = static os_log_type_t.error.getter();
      v164 = v165;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v167 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v166, v165))
      {
        v162 = v272;
        v154 = static UnsafeMutablePointer.allocate(capacity:)();
        v150 = v154;
        v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v152 = 0;
        v155 = createStorage<A>(capacity:type:)(0, v151, v151);
        v153 = v155;
        v131 = createStorage<A>(capacity:type:)(v152, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v132 = v155;
        v133 = v327;
        v156 = v131;
        *(v327 + 55) = v154;
        *(v133 + 356) = v132;
        *(v133 + 355) = v131;
        v157 = 0;
        v158 = &v376;
        serialize(_:at:)(0, &v376);
        serialize(_:at:)(v157, v158);
        *(v327 + 54) = v167;
        v159 = &v140;
        MEMORY[0x28223BE20](&v140, v134);
        v160 = v139;
        v139[2] = v135;
        v139[3] = &v392;
        v139[4] = &v391;
        v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        v136 = v162;
        Sequence.forEach(_:)();
        if (v136)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_25C4D8000, v163, v164, "Failed to run Shadow Evaluation DayStreamProcessor", v150, 2u);
          v149 = 0;
          destroyStorage<A>(_:count:)(v153, 0, v151);
          destroyStorage<A>(_:count:)(v156, v149, MEMORY[0x277D84F70] + 8);
          MEMORY[0x25F8899D0](v150, MEMORY[0x277D84B78]);
        }
      }

      else
      {
      }

      (*(v317 + 8))(v320, v315);
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v146 = 0;
      v145 = swift_allocError();
      *v137 = 2;
      swift_willThrow();

      v148 = v147;
    }
  }
}

void ShadowEvaluation.computePerCycleMetrics(t0:t1:analysis:telemetrics:)(unsigned int a1, unsigned int a2, void *a3, uint64_t a4)
{
  v63[1] = 0;
  v59 = 0;
  v57 = 0;
  v53 = 0;
  v51 = 0;
  v65 = a1;
  v64 = a2;
  v63[3] = a3;
  v63[2] = a4;
  v62 = a2;
  v61 = a1;
  if (__OFSUB__(a2, a1))
  {
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
    __break(1u);
    return;
  }

  v60[6] = a2 - a1;
  v60[5] = 0;
  v60[4] = 101;
  v60[2] = 0;
  v60[3] = 101;
  v60[0] = 0;
  v60[1] = 101;
  Comparable.clamp(to:)(v60, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], v63);
  *(a4 + 96) = v63[0];
  v34 = [a3 0x1FCEC61DELL];
  v35 = type metadata accessor for NgtMenstrualAlgorithmsPrediction();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  Array.subscript.getter();

  MEMORY[0x277D82BD8](v34);
  v37 = [a3 0x1FCEC61DELL];
  v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = MEMORY[0x25F8895B0](v36, v35);

  MEMORY[0x277D82BD8](v37);
  if (v38 > 1)
  {
    v32 = [a3 menstruationPredictions];
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    Array.subscript.getter();
    v33 = [v44 isOngoingMenstruation];
    (MEMORY[0x277D82BD8])();

    MEMORY[0x277D82BD8](v32);
    if (v33)
    {
      v31 = [a3 menstruationPredictions];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      Array.subscript.getter();
      v5 = v59;
      v59 = v43;
      MEMORY[0x277D82BD8](v5);

      MEMORY[0x277D82BD8](v31);
    }
  }

  v58 = a1;
  [v59 startProbabilityMean];
  __x = v6;
  MEMORY[0x277D82BD8](v59);
  v30 = round(__x);
  if (((*&v30 >> 52) & 0x7FFLL) == 0x7FF)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Double value cannot be converted to Int because it is either infinite or NaN", 76, 2, "Swift/IntegerTypes.swift", 24, 2, 8835, 0);
    __break(1u);
  }

  if (v30 <= -9.22337204e18)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Double value cannot be converted to Int because the result would be less than Int.min", 85, 2, "Swift/IntegerTypes.swift", 24, 2, 8838, 0);
    __break(1u);
  }

  if (v30 >= 9.22337204e18)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Double value cannot be converted to Int because the result would be greater than Int.max", 88, 2, "Swift/IntegerTypes.swift", 24, 2, 8841, 0);
    __break(1u);
  }

  v28 = a1 + v30;
  if (__OFADD__(a1, v30))
  {
    goto LABEL_66;
  }

  v57 = a1 + v30;
  v56 = a1;
  v54 = [v59 lowRange];
  v55 = v8;
  MEMORY[0x277D82BD8](v59);
  v9 = _NSRange.lowerBound.getter();
  v27 = a1 + v9;
  if (__OFADD__(a1, v9))
  {
    goto LABEL_67;
  }

  v53 = a1 + v9;
  v52 = a1;
  [v59 startProbabilityLowRangeEnd];
  v26 = round(v11);
  if (((*&v26 >> 52) & 0x7FFLL) == 0x7FF)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Double value cannot be converted to Int because it is either infinite or NaN", 76, 2, "Swift/IntegerTypes.swift", 24, 2, 8835, 0);
    __break(1u);
  }

  if (v26 <= -9.22337204e18)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Double value cannot be converted to Int because the result would be less than Int.min", 85, 2, "Swift/IntegerTypes.swift", 24, 2, 8838, 0);
    __break(1u);
  }

  if (v26 >= 9.22337204e18)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Double value cannot be converted to Int because the result would be greater than Int.max", 88, 2, "Swift/IntegerTypes.swift", 24, 2, 8841, 0);
    __break(1u);
  }

  v25 = a1 + v26;
  if (__OFADD__(a1, v26))
  {
    goto LABEL_68;
  }

  v51 = a1 + v26;
  [v59 startProbabilityLowRangeStart];
  v23 = v13;
  MEMORY[0x277D82BD8](v59);
  v24 = round(v23);
  if (((*&v24 >> 52) & 0x7FFLL) == 0x7FF)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Double value cannot be converted to Int because it is either infinite or NaN", 76, 2, "Swift/IntegerTypes.swift", 24, 2, 8835, 0);
    __break(1u);
  }

  if (v24 <= -9.22337204e18)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Double value cannot be converted to Int because the result would be less than Int.min", 85, 2, "Swift/IntegerTypes.swift", 24, 2, 8838, 0);
    __break(1u);
  }

  if (v24 >= 9.22337204e18)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Double value cannot be converted to Int because the result would be greater than Int.max", 88, 2, "Swift/IntegerTypes.swift", 24, 2, 8841, 0);
    __break(1u);
  }

  if (__OFADD__(a1, v24))
  {
    goto LABEL_69;
  }

  if (v27 != a1 + v24)
  {
    MEMORY[0x277D82BD8](v59);
    return;
  }

  if (__OFSUB__(v28, a2))
  {
    goto LABEL_70;
  }

  v49[3] = v28 - a2;
  v21 = MEMORY[0x277D83B88];
  v22 = MEMORY[0x277D83BA0];
  abs<A>(_:)();
  v49[2] = v49[4];
  v49[0] = 0;
  v49[1] = 65;
  Comparable.clamp(to:)(v49, v21, v22, &v50);
  *(a4 + 40) = v50;
  if (__OFSUB__(v28, v27))
  {
    goto LABEL_71;
  }

  v47[2] = v28 - v27;
  v47[0] = 0;
  v47[1] = 11;
  Comparable.clamp(to:)(v47, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], &v48);
  *(a4 + 48) = v48;
  v20 = v25 - v27;
  if (__OFSUB__(v25, v27))
  {
    goto LABEL_72;
  }

  if (__OFADD__(v20, 1))
  {
    goto LABEL_73;
  }

  v45[2] = v20 + 1;
  v45[0] = 0;
  v45[1] = 22;
  Comparable.clamp(to:)(v45, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], &v46);
  *(a4 + 56) = v46;
  v19 = a2 >= v27 && v25 >= a2;
  *(a4 + 64) = v19;
  MEMORY[0x277D82BD8](v59);
}

void __swiftcall ShadowEvaluation.getDayStreamProcessorConfigFromConfig(cached:lastJulianDay:)(NgtMenstrualAlgorithmsDayStreamProcessorConfig *__return_ptr retstr, NgtMenstrualAlgorithmsDayStreamProcessorConfig *cached, Swift::UInt32 lastJulianDay)
{
  v41 = cached;
  v39 = lastJulianDay;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v47 = 0;
  v44 = 0;
  v36 = 0;
  v31 = type metadata accessor for DateComponents();
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v31, v4);
  v35 = &v7 - v34;
  v37 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36, v39);
  v38 = &v7 - v37;
  v53 = v5;
  v52 = v6;
  v51 = v3;
  type metadata accessor for NgtMenstrualAlgorithmsDayStreamProcessorConfig();
  isa = HKHealthStore.__allocating_init()().super.isa;
  v50 = isa;
  [(objc_class *)isa setTodayAsJulianDay:v39];
  v49 = [(NgtMenstrualAlgorithmsDayStreamProcessorConfig *)v41 julianDayOfUserReportedCycleLength];
  if (v49)
  {
    v27 = &v49;
    v28 = v49;
    MEMORY[0x277D82BE0](v49);
    outlined destroy of NgtMenstrualAlgorithmsDayStreamProcessorConfig?(v27);
    v29 = [(NSNumber *)v28 unsignedIntValue];
    MEMORY[0x277D82BD8](v28);
    v30 = v29;
  }

  else
  {
    outlined destroy of NgtMenstrualAlgorithmsDayStreamProcessorConfig?(&v49);
    v30 = 0x100000000;
  }

  v26 = v30;
  if ((v30 & 0x100000000) == 0)
  {
    v25 = v26;
    v44 = v26;
    v43 = v26;
    v42 = v39;
    min<A>(_:_:)();
    v24 = UInt32._bridgeToObjectiveC()().super.super.isa;
    [(objc_class *)isa setJulianDayOfUserReportedCycleLength:?];
    MEMORY[0x277D82BD8](v24);
  }

  v48 = [(NgtMenstrualAlgorithmsDayStreamProcessorConfig *)v41 julianDayOfUserReportedMenstruationLength];
  if (v48)
  {
    v20 = &v48;
    v21 = v48;
    MEMORY[0x277D82BE0](v48);
    outlined destroy of NgtMenstrualAlgorithmsDayStreamProcessorConfig?(v20);
    v22 = [(NSNumber *)v21 unsignedIntValue];
    MEMORY[0x277D82BD8](v21);
    v23 = v22;
  }

  else
  {
    outlined destroy of NgtMenstrualAlgorithmsDayStreamProcessorConfig?(&v48);
    v23 = 0x100000000;
  }

  v19 = v23;
  if ((v23 & 0x100000000) == 0)
  {
    v18 = v19;
    v47 = v19;
    v46 = v19;
    v45 = v39;
    min<A>(_:_:)();
    v17 = UInt32._bridgeToObjectiveC()().super.super.isa;
    [(objc_class *)isa setJulianDayOfUserReportedMenstruationLength:?];
    MEMORY[0x277D82BD8](v17);
  }

  v14 = [(NgtMenstrualAlgorithmsDayStreamProcessorConfig *)v41 userReportedCycleLength];
  [(objc_class *)isa setUserReportedCycleLength:?];
  MEMORY[0x277D82BD8](v14);
  v15 = [(NgtMenstrualAlgorithmsDayStreamProcessorConfig *)v41 userReportedMenstruationLength];
  [(objc_class *)isa setUserReportedMenstruationLength:?];
  MEMORY[0x277D82BD8](v15);
  v16 = [(NgtMenstrualAlgorithmsDayStreamProcessorConfig *)v41 birthDateComponents];
  if (v16)
  {
    v13 = v16;
    v12 = v16;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v32 + 32))(v38, v35, v31);
    (*(v32 + 56))(v38, 0, 1, v31);
    MEMORY[0x277D82BD8](v12);
  }

  else
  {
    (*(v32 + 56))(v38, 1, 1, v31);
  }

  if ((*(v32 + 48))(v38, 1, v31) == 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = DateComponents._bridgeToObjectiveC()().super.isa;
    (*(v32 + 8))(v38, v31);
    v11 = v10;
  }

  [(objc_class *)isa setBirthDateComponents:v11];
  MEMORY[0x277D82BD8](v7);
  v8 = [(NgtMenstrualAlgorithmsDayStreamProcessorConfig *)v41 awakeSHRCountThreshold];
  [(objc_class *)isa setAwakeSHRCountThreshold:?];
  MEMORY[0x277D82BD8](v8);
  v9 = [(NgtMenstrualAlgorithmsDayStreamProcessorConfig *)v41 sleepSHRCountThreshold];
  [(objc_class *)isa setSleepSHRCountThreshold:?];
  MEMORY[0x277D82BD8](v9);
}

id @nonobjc NgtMenstrualAlgorithmsWristTemperature.init(temperature:forWatchIdentifier:)(double a1)
{
  v4 = MEMORY[0x25F8892C0]();
  v5 = [v3 initWithTemperature:a1 forWatchIdentifier:?];
  MEMORY[0x277D82BD8](v4);

  return v5;
}

id @nonobjc NgtMenstrualAlgorithmsHeartRateStatistics.init(lowerPercentile:forSampleCount:)(uint64_t a1)
{
  v4 = [v1 initWithLowerPercentile_forSampleCount_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

void *_s19NightingaleTraining21FlycatcherTelemetricsVSgWOi0_(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  result[9] = 0;
  result[10] = 0;
  result[11] = 0;
  result[12] = 0;
  result[13] = 0;
  result[14] = 0;
  result[15] = 0;
  result[16] = 0;
  result[17] = 0;
  result[18] = 0;
  result[19] = 0;
  result[20] = 0;
  result[21] = 0;
  result[22] = 0;
  result[23] = 0;
  result[24] = 0;
  result[25] = 0;
  result[26] = 0;
  result[27] = 0;
  result[28] = 0;
  result[29] = 0;
  result[30] = 0;
  result[31] = 0;
  result[32] = 0;
  result[33] = 0;
  result[34] = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for FlycatcherTelemetrics(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 280))
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

void *storeEnumTagSinglePayload for FlycatcherTelemetrics(void *result, int a2, int a3)
{
  v3 = result + 35;
  if (a2 < 0)
  {
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
    result[33] = 0;
    result[32] = 0;
    result[34] = 0;
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
      result[1] = (a2 - 1);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AgeEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF8)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 7) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 248;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 8;
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

_BYTE *storeEnumTagSinglePayload for AgeEnum(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF8)
  {
    v5 = ((a3 + 7) >> 8) + 1;
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

  if (a2 > 0xF8)
  {
    v4 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
      *result = a2 + 7;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BMIEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFA)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 5) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 250;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 6;
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

_BYTE *storeEnumTagSinglePayload for BMIEnum(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFA)
  {
    v5 = ((a3 + 5) >> 8) + 1;
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

  if (a2 > 0xFA)
  {
    v4 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NumberOfDaysForFactorsEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF7)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 8) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 247;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 9;
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

_BYTE *storeEnumTagSinglePayload for NumberOfDaysForFactorsEnum(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF7)
  {
    v5 = ((a3 + 8) >> 8) + 1;
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

  if (a2 > 0xF7)
  {
    v4 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
      *result = a2 + 8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CycleStdEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xEE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 17) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 238;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 18;
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

_BYTE *storeEnumTagSinglePayload for CycleStdEnum(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xEE)
  {
    v5 = ((a3 + 17) >> 8) + 1;
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

  if (a2 > 0xEE)
  {
    v4 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
      *result = a2 + 17;
    }
  }

  return result;
}

unint64_t type metadata accessor for NgtMenstrualAlgorithmsHeartRateStatistics()
{
  v2 = lazy cache variable for type metadata for NgtMenstrualAlgorithmsHeartRateStatistics;
  if (!lazy cache variable for type metadata for NgtMenstrualAlgorithmsHeartRateStatistics)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NgtMenstrualAlgorithmsHeartRateStatistics);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t FeatureStatsOption.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("none", 4uLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("perSlice", 8uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("allSlices", 9uLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("deviceMean", 0xAuLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("deviceMedian", 0xCuLL, 1)._countAndFlagsBits;
  }
}

uint64_t key path getter for NSNumber.uint32Value : NSNumber@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  *a2 = [*a1 unsignedIntValue];
  return MEMORY[0x277D82BD8](v3);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> transferFeatureToMLInputs(_:_:_:_:)(Swift::OpaquePointer *a1, Swift::OpaquePointer *a2, NightingaleTraining::NightingaleModelFeatureType a3, NightingaleTraining::NightingalePFLModelType a4)
{
  v21 = a4;
  v23 = a3;
  v22 = a2;
  v24 = a1;
  v25 = a4;
  v28 = 0;
  v32 = a1;
  v31 = a2;
  v30 = a3;
  v29 = a4;
  *&v4 = featureIndex(_:_:)(a3, a4);
  v26 = v4;
  if (BYTE8(v4))
  {
    v18 = v20;
  }

  else
  {
    v19 = v26;
    v12 = v26;
    v16 = v20;
    v28 = v26;
    v11 = &v11;
    MEMORY[0x28223BE20](&v11, *(&v4 + 1));
    v14 = v9;
    v9[2] = v24;
    v9[3] = v12;
    v10 = v5;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    v13 = v15;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = v16;
    _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in transferFeatureToMLInputs(_:_:_:_:), v14, v15, MEMORY[0x277D84F78] + 8, v6, MEMORY[0x277D84950], &v27, MEMORY[0x277D84F78]);
    v17 = v7;
    if (!v7)
    {
      v8 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
      Array.removeAll(keepingCapacity:)(v8 & 1);
    }
  }
}

Swift::Void __swiftcall transferLabelToOnehotEncode(_:_:_:)(Swift::OpaquePointer *a1, Swift::OpaquePointer *a2, Swift::UInt32 a3)
{
  v6 = a3;
  rawValue = a1->_rawValue;

  v8 = MEMORY[0x25F8895B0](rawValue, MEMORY[0x277D84CC0]);

  if (v8 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  Collection<>.makeIterator()();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd, &_ss16IndexingIteratorVySnySiGGMR);
    IndexingIterator.next()();
    if (v11)
    {
      break;
    }

    if ((v10 * v6) >> 64 != (v10 * v6) >> 63)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    Array.subscript.getter();
    if (__OFADD__(v10 * v6, v9))
    {
      goto LABEL_13;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    v4 = Array.subscript.modify();
    *v5 = 1.0;
    v4();
  }
}

Swift::Void __swiftcall transferLabelToRegression(_:_:_:_:)(Swift::OpaquePointer *a1, Swift::OpaquePointer *a2, Swift::UInt32 a3, Swift::UInt32 a4)
{
  v33 = 0.0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v24 = 0;
  v38 = a1;
  v37 = a2;
  v36 = a3;
  v35 = a4;
  rawValue = a2->_rawValue;

  v15 = MEMORY[0x25F8895B0](rawValue, MEMORY[0x277D83A90]);

  v17 = a1->_rawValue;

  v19 = MEMORY[0x25F8895B0](v17, MEMORY[0x277D84CC0]);

  v20 = v19 * a3;
  if ((v19 * a3) >> 64 == v20 >> 63)
  {
    if (v15 < v20)
    {
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Size of regression should >= size of array * stride", 0x33uLL, 1);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v34 = a4;
    lazy protocol witness table accessor for type UInt32 and conformance UInt32();
    v10 = MEMORY[0x277D84CC0];
    Float.init<A>(_:)();
    v9 = v4;
    v33 = v4;
    v32 = a3;
    v11 = a1->_rawValue;

    v12 = MEMORY[0x25F8895B0](v11, v10);

    if (v12 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
      __break(1u);
    }

    v27 = 0;
    v28 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    Collection<>.makeIterator()();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd, &_ss16IndexingIteratorVySnySiGGMR);
      IndexingIterator.next()();
      if (v26)
      {
        break;
      }

      v24 = v25;
      if ((a3 * v24) >> 64 != (a3 * v24) >> 63)
      {
        goto LABEL_12;
      }

      Array.subscript.getter();
      v22 = v23;
      Float.init<A>(_:)();
      v8 = v5 / v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
      v6 = Array.subscript.modify();
      *v7 = v8;
      v6(v21, 0);
    }
  }

  else
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }
}