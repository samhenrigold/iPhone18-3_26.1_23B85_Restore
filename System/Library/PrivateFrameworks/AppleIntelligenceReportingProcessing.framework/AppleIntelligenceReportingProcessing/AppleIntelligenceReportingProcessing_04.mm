uint64_t AppleIntelligenceReportingAsset.formattedAsset.getter(uint64_t a1)
{
  AppleIntelligenceReportingAsset.assetIdentifier.getter();
  if (v1)
  {
    v2 = AppleIntelligenceReportingAsset.version.getter();
    if (v3)
    {
      v4 = v2;
      v5 = v3;
      MEMORY[0x22AAAE070](44, 0xE100000000000000);
      MEMORY[0x22AAAE070](v4, v5);
    }
  }

  return OUTLINED_FUNCTION_47_2();
}

uint64_t InvocationProcessor.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return v0;
}

uint64_t InvocationProcessor.__deallocating_deinit()
{
  InvocationProcessor.deinit();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()()
{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return MEMORY[0x2821FC240]();
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(uint64_t (*a1)(void))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    OUTLINED_FUNCTION_55_1();
    result = a1();
    *v1 = result;
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v173 = a1;
  v6 = type metadata accessor for InvocationStepMetadata(0);
  MEMORY[0x28223BE20](v6 - 8);
  v200 = &v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = type metadata accessor for InvocationStepMetadata.Partial(0);
  v8 = MEMORY[0x28223BE20](v208);
  v204 = &v168 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v168 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v168 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v168 - v16;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v199 = &v168 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v206 = &v168 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v182 = &v168 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v189 = &v168 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v172 = &v168 - v29;
  MEMORY[0x28223BE20](v28);
  v171 = (&v168 - v30);
  v203 = type metadata accessor for InvocationStep(0);
  v186 = *(v203 - 8);
  v31 = MEMORY[0x28223BE20](v203);
  v177 = &v168 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v196 = &v168 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v198 = &v168 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v168 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v209 = &v168 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v205 = &v168 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v181 = &v168 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v184 = &v168 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v192 = &v168 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v188 = &v168 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v170 = &v168 - v53;
  MEMORY[0x28223BE20](v52);
  v169 = &v168 - v54;
  v187 = a3;
  v55 = a3[1];
  if (v55 < 1)
  {
    v57 = MEMORY[0x277D84F90];
LABEL_116:
    v39 = *v173;
    if (!*v173)
    {
      goto LABEL_157;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_118:
      v161 = v57 + 2;
      v162 = v57[2];
      for (i = v57; v162 >= 2; v57 = i)
      {
        if (!*v187)
        {
          goto LABEL_154;
        }

        v57 += 2 * v162;
        v163 = *v57;
        v164 = &v161[2 * v162];
        v165 = v164[1];
        v166 = v191;
        specialized _merge<A>(low:mid:high:buffer:by:)(*v187 + *(v186 + 72) * *v57, *v187 + *(v186 + 72) * *v164, (*v187 + *(v186 + 72) * v165), v39);
        v191 = v166;
        if (v166)
        {
          break;
        }

        if (v165 < v163)
        {
          goto LABEL_142;
        }

        if (v162 - 2 >= *v161)
        {
          goto LABEL_143;
        }

        *v57 = v163;
        v57[1] = v165;
        v167 = *v161 - v162;
        if (*v161 < v162)
        {
          goto LABEL_144;
        }

        v162 = *v161 - 1;
        memmove(v164, v164 + 2, 16 * v167);
        *v161 = v162;
      }

LABEL_126:

      return;
    }

LABEL_151:
    v57 = specialized _ArrayBuffer._consumeAndCreateNew()(v57);
    goto LABEL_118;
  }

  v168 = a4;
  v56 = 0;
  v201 = (v19 + 8);
  v207 = (v19 + 16);
  v197 = v12;
  v180 = v15;
  v57 = MEMORY[0x277D84F90];
  v179 = v17;
  v202 = v39;
  while (1)
  {
    v58 = v56++;
    if (v56 >= v55)
    {
      goto LABEL_39;
    }

    i = v57;
    v59 = *v187;
    v60 = *(v186 + 72);
    v61 = *v187 + v60 * v56;
    v195 = v60;
    v62 = v60;
    v63 = v59;
    v178 = v59;
    v194 = v55;
    _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v59 + v60 * v56, v169);
    v193 = v56;
    _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v63 + v62 * v58, v170);
    v57 = v171;
    InvocationStep.startTime.getter(v171);
    v174 = v58;
    v64 = v172;
    InvocationStep.startTime.getter(v172);
    LODWORD(v185) = static Date.< infix(_:_:)();
    v65 = *v201;
    (*v201)(v64, v18);
    v183 = v65;
    v65(v57, v18);
    v56 = v193;
    _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
    _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
    v66 = v194;
    v67 = v174 + 2;
    v68 = v178 + v195 * (v174 + 2);
    v69 = v184;
    while (1)
    {
      v70 = v67;
      if (v56 + 1 >= v66)
      {
        break;
      }

      v193 = v56;
      v71 = v188;
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v68, v188);
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v61, v192);
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v71, v69);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v72 = v200;
        outlined init with take of InvocationStepMetadata(v69, v200);
        v73 = v179;
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v72, v179);
        _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      }

      else
      {
        v74 = v69;
        v73 = v179;
        outlined init with take of InvocationStepMetadata(v74, v179);
      }

      v75 = *v207;
      (*v207)(v189, v73 + *(v208 + 36), v18);
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      v76 = v181;
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v192, v181);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v77 = v200;
        outlined init with take of InvocationStepMetadata(v76, v200);
        v78 = v180;
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v77, v180);
        v39 = v202;
        _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      }

      else
      {
        v79 = v76;
        v78 = v180;
        outlined init with take of InvocationStepMetadata(v79, v180);
      }

      v80 = v182;
      v75(v182, v78 + *(v208 + 36), v18);
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      v81 = v189;
      v57 = (static Date.< infix(_:_:)() & 1);
      v82 = v183;
      (v183)(v80, v18);
      v82(v81, v18);
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      v68 += v195;
      v61 += v195;
      v56 = v193 + 1;
      v67 = v70 + 1;
      v69 = v184;
      v66 = v194;
      if ((v185 & 1) != v57)
      {
        goto LABEL_16;
      }
    }

    v56 = v66;
LABEL_16:
    if (v185)
    {
      v58 = v174;
      if (v56 < v174)
      {
        goto LABEL_148;
      }

      if (v174 >= v56)
      {
        v57 = i;
        goto LABEL_39;
      }

      v83 = v66 >= v70 ? v70 : v66;
      v84 = v195 * (v83 - 1);
      v85 = v195 * v83;
      v86 = v174 * v195;
      v87 = v56;
      v88 = v56;
      v89 = v174;
      do
      {
        if (v89 != --v88)
        {
          v90 = *v187;
          if (!*v187)
          {
            goto LABEL_155;
          }

          outlined init with take of InvocationStepMetadata(v90 + v86, v177);
          v91 = v86 < v84 || v90 + v86 >= (v90 + v85);
          if (v91)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v86 != v84)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          outlined init with take of InvocationStepMetadata(v177, v90 + v84);
          v39 = v202;
        }

        ++v89;
        v84 -= v195;
        v85 -= v195;
        v86 += v195;
      }

      while (v89 < v88);
      v57 = i;
      v56 = v87;
    }

    else
    {
      v57 = i;
    }

    v58 = v174;
LABEL_39:
    v92 = v187[1];
    if (v56 < v92)
    {
      if (__OFSUB__(v56, v58))
      {
        goto LABEL_147;
      }

      if (v56 - v58 < v168)
      {
        break;
      }
    }

LABEL_63:
    if (v56 < v58)
    {
      goto LABEL_146;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v57 = v159;
    }

    v115 = v57[2];
    v116 = v115 + 1;
    if (v115 >= v57[3] >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v57 = v160;
    }

    v57[2] = v116;
    v117 = v57 + 4;
    v118 = &v57[2 * v115 + 4];
    *v118 = v58;
    v118[1] = v56;
    v195 = *v173;
    if (!v195)
    {
      goto LABEL_156;
    }

    if (v115)
    {
      i = v57;
      while (1)
      {
        v119 = v116 - 1;
        v120 = &v117[2 * v116 - 2];
        v121 = &v57[2 * v116];
        if (v116 >= 4)
        {
          break;
        }

        if (v116 == 3)
        {
          v122 = v57[4];
          v123 = v57[5];
          v132 = __OFSUB__(v123, v122);
          v124 = v123 - v122;
          v125 = v132;
LABEL_84:
          if (v125)
          {
            goto LABEL_133;
          }

          v137 = *v121;
          v136 = v121[1];
          v138 = __OFSUB__(v136, v137);
          v139 = v136 - v137;
          v140 = v138;
          if (v138)
          {
            goto LABEL_136;
          }

          v141 = v120[1];
          v142 = v141 - *v120;
          if (__OFSUB__(v141, *v120))
          {
            goto LABEL_139;
          }

          if (__OFADD__(v139, v142))
          {
            goto LABEL_141;
          }

          if (v139 + v142 >= v124)
          {
            if (v124 < v142)
            {
              v119 = v116 - 2;
            }

            goto LABEL_106;
          }

          goto LABEL_99;
        }

        if (v116 < 2)
        {
          goto LABEL_135;
        }

        v144 = *v121;
        v143 = v121[1];
        v132 = __OFSUB__(v143, v144);
        v139 = v143 - v144;
        v140 = v132;
LABEL_99:
        if (v140)
        {
          goto LABEL_138;
        }

        v146 = *v120;
        v145 = v120[1];
        v132 = __OFSUB__(v145, v146);
        v147 = v145 - v146;
        if (v132)
        {
          goto LABEL_140;
        }

        if (v147 < v139)
        {
          goto LABEL_113;
        }

LABEL_106:
        if (v119 - 1 >= v116)
        {
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
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
          goto LABEL_150;
        }

        if (!*v187)
        {
          goto LABEL_153;
        }

        v151 = v56;
        v57 = &v117[2 * v119 - 2];
        v152 = *v57;
        v153 = v117;
        v154 = v119;
        v155 = &v117[2 * v119];
        v156 = v155[1];
        v157 = v191;
        specialized _merge<A>(low:mid:high:buffer:by:)(*v187 + *(v186 + 72) * *v57, *v187 + *(v186 + 72) * *v155, (*v187 + *(v186 + 72) * v156), v195);
        v191 = v157;
        if (v157)
        {
          goto LABEL_126;
        }

        if (v156 < v152)
        {
          goto LABEL_128;
        }

        v39 = i[2];
        if (v154 > v39)
        {
          goto LABEL_129;
        }

        *v57 = v152;
        v57[1] = v156;
        if (v154 >= v39)
        {
          goto LABEL_130;
        }

        v116 = (v39 - 1);
        memmove(v155, v155 + 2, 16 * &v39[-v154 - 1]);
        v57 = i;
        i[2] = v39 - 1;
        v158 = v39 > 2;
        v39 = v202;
        v56 = v151;
        v117 = v153;
        if (!v158)
        {
          goto LABEL_113;
        }
      }

      v126 = &v117[2 * v116];
      v127 = *(v126 - 8);
      v128 = *(v126 - 7);
      v132 = __OFSUB__(v128, v127);
      v129 = v128 - v127;
      if (v132)
      {
        goto LABEL_131;
      }

      v131 = *(v126 - 6);
      v130 = *(v126 - 5);
      v132 = __OFSUB__(v130, v131);
      v124 = v130 - v131;
      v125 = v132;
      if (v132)
      {
        goto LABEL_132;
      }

      v133 = v121[1];
      v134 = v133 - *v121;
      if (__OFSUB__(v133, *v121))
      {
        goto LABEL_134;
      }

      v132 = __OFADD__(v124, v134);
      v135 = v124 + v134;
      if (v132)
      {
        goto LABEL_137;
      }

      if (v135 >= v129)
      {
        v149 = *v120;
        v148 = v120[1];
        v132 = __OFSUB__(v148, v149);
        v150 = v148 - v149;
        if (v132)
        {
          goto LABEL_145;
        }

        if (v124 < v150)
        {
          v119 = v116 - 2;
        }

        goto LABEL_106;
      }

      goto LABEL_84;
    }

LABEL_113:
    v55 = v187[1];
    if (v56 >= v55)
    {
      goto LABEL_116;
    }
  }

  v93 = v58 + v168;
  if (__OFADD__(v58, v168))
  {
    goto LABEL_149;
  }

  if (v93 >= v92)
  {
    v93 = v187[1];
  }

  if (v93 < v58)
  {
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  if (v56 == v93)
  {
    goto LABEL_63;
  }

  i = v57;
  v94 = *v187;
  v95 = *(v186 + 72);
  v96 = *v187 + v95 * (v56 - 1);
  v194 = -v95;
  v174 = v58;
  v97 = (v58 - v56);
  v195 = v94;
  v175 = v95;
  v98 = &v94[v56 * v95];
  v176 = v93;
LABEL_48:
  v193 = v56;
  v178 = v98;
  v183 = v97;
  v185 = v96;
  while (1)
  {
    v99 = v205;
    _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v98, v205);
    _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v96, v209);
    _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v99, v39);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v100 = v39;
      v101 = v200;
      outlined init with take of InvocationStepMetadata(v100, v200);
      v102 = v197;
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v101, v197);
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
    }

    else
    {
      v102 = v197;
      outlined init with take of InvocationStepMetadata(v39, v197);
    }

    v103 = v198;
    v104 = *v207;
    (*v207)(v206, v102 + *(v208 + 36), v18);
    _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
    _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v209, v103);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v105 = v103;
      v106 = v200;
      outlined init with take of InvocationStepMetadata(v105, v200);
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v106, v204);
      v107 = v204;
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
    }

    else
    {
      v107 = v204;
      outlined init with take of InvocationStepMetadata(v103, v204);
    }

    v108 = v199;
    v104(v199, v107 + *(v208 + 36), v18);
    _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
    v109 = v18;
    v110 = v206;
    v111 = static Date.< infix(_:_:)();
    v112 = *v201;
    (*v201)(v108, v109);
    v113 = v110;
    v18 = v109;
    v112(v113, v109);
    _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
    _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
    if ((v111 & 1) == 0)
    {
      v39 = v202;
LABEL_61:
      v56 = v193 + 1;
      v96 = v185 + v175;
      v97 = v183 - 1;
      v98 = v178 + v175;
      if (v193 + 1 == v176)
      {
        v56 = v176;
        v57 = i;
        v58 = v174;
        goto LABEL_63;
      }

      goto LABEL_48;
    }

    v39 = v202;
    if (!v195)
    {
      break;
    }

    v114 = v196;
    outlined init with take of InvocationStepMetadata(v98, v196);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of InvocationStepMetadata(v114, v96);
    v96 += v194;
    v98 += v194;
    v91 = __CFADD__(v97++, 1);
    if (v91)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(uint64_t a1, unint64_t a2, _BYTE *a3, _BYTE *a4)
{
  v113 = a3;
  v7 = type metadata accessor for InvocationStepMetadata(0);
  MEMORY[0x28223BE20](v7 - 8);
  v117 = &v100[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v122 = type metadata accessor for InvocationStepMetadata.Partial(0);
  v9 = MEMORY[0x28223BE20](v122);
  v105 = &v100[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v100[-v12];
  v14 = MEMORY[0x28223BE20](v11);
  v112 = &v100[-v15];
  MEMORY[0x28223BE20](v14);
  v111 = &v100[-v16];
  v121 = type metadata accessor for Date();
  v119 = *(v121 - 8);
  v17 = MEMORY[0x28223BE20](v121);
  v104 = &v100[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v17);
  v108 = &v100[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v110 = &v100[-v22];
  MEMORY[0x28223BE20](v21);
  v118 = &v100[-v23];
  v24 = type metadata accessor for InvocationStep(0);
  v25 = MEMORY[0x28223BE20](v24);
  v103 = &v100[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v100[-v28];
  v30 = MEMORY[0x28223BE20](v27);
  v114 = &v100[-v31];
  v32 = MEMORY[0x28223BE20](v30);
  v107 = &v100[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v100[-v35];
  v37 = MEMORY[0x28223BE20](v34);
  v109 = &v100[-v38];
  v39 = MEMORY[0x28223BE20](v37);
  v123 = &v100[-v40];
  result = MEMORY[0x28223BE20](v39);
  v43 = &v100[-v42];
  v45 = *(v44 + 72);
  if (!v45)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return result;
  }

  v106 = a1;
  v46 = a2 - a1 == 0x8000000000000000 && v45 == -1;
  if (v46)
  {
    goto LABEL_73;
  }

  v47 = &v113[-a2];
  if (&v113[-a2] == 0x8000000000000000 && v45 == -1)
  {
    goto LABEL_74;
  }

  v49 = (a2 - a1) / v45;
  v50 = v106;
  v126 = v106;
  v125 = a4;
  v120 = (v119 + 16);
  v115 = (v119 + 8);
  v116 = v24;
  if (v49 >= v47 / v45)
  {
    v112 = v13;
    v72 = v47 / v45;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v47 / v45, a4);
    v73 = a2;
    v74 = &a4[v72 * v45];
    v75 = -v45;
    v76 = v74;
    v77 = v113;
    v102 = a4;
    v101 = v29;
    v111 = -v45;
LABEL_43:
    v113 = &v73[v75];
    v78 = v77;
    v109 = v76;
    v79 = v105;
    v80 = v112;
    v119 = v73;
    while (1)
    {
      if (v74 <= a4)
      {
        v126 = v73;
        v124 = v76;
        goto LABEL_71;
      }

      if (v73 <= v50)
      {
        break;
      }

      v118 = v78;
      v110 = v76;
      v81 = v111;
      v123 = v74;
      v82 = &v74[v111];
      v83 = v107;
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(&v74[v111], v107);
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v113, v114);
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v83, v29);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v84 = v117;
        outlined init with take of InvocationStepMetadata(v29, v117);
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v84, v80);
        _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      }

      else
      {
        outlined init with take of InvocationStepMetadata(v29, v80);
      }

      v85 = v103;
      v86 = *v120;
      (*v120)(v108, v80 + *(v122 + 36), v121);
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v114, v85);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v87 = v117;
        outlined init with take of InvocationStepMetadata(v85, v117);
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v87, v79);
        _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      }

      else
      {
        outlined init with take of InvocationStepMetadata(v85, v79);
      }

      v88 = v118;
      v77 = &v118[v81];
      v89 = v121;
      v90 = v104;
      v86(v104, v79 + *(v122 + 36), v121);
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      v91 = v108;
      v92 = static Date.< infix(_:_:)();
      v93 = *v115;
      (*v115)(v90, v89);
      v93(v91, v89);
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      if (v92)
      {
        v96 = v88 < v119 || v77 >= v119;
        v50 = v106;
        if (v96)
        {
          v97 = v113;
          swift_arrayInitWithTakeFrontToBack();
          v73 = v97;
          v76 = v110;
          v75 = v111;
          a4 = v102;
          v29 = v101;
          v74 = v123;
        }

        else
        {
          v75 = v111;
          v76 = v110;
          v46 = v88 == v119;
          v98 = v113;
          v73 = v113;
          a4 = v102;
          v29 = v101;
          v74 = v123;
          if (!v46)
          {
            v99 = v110;
            swift_arrayInitWithTakeBackToFront();
            v74 = v123;
            v73 = v98;
            v76 = v99;
          }
        }

        goto LABEL_43;
      }

      v94 = v88 < v123 || v77 >= v123;
      v50 = v106;
      v95 = v77;
      if (v94)
      {
        swift_arrayInitWithTakeFrontToBack();
        v78 = v77;
        v74 = v82;
        v76 = v82;
        a4 = v102;
        v73 = v119;
        v79 = v105;
        v80 = v112;
        v29 = v101;
      }

      else
      {
        v76 = v82;
        v46 = v123 == v88;
        v78 = v77;
        v74 = v82;
        a4 = v102;
        v73 = v119;
        v79 = v105;
        v80 = v112;
        v29 = v101;
        if (!v46)
        {
          swift_arrayInitWithTakeBackToFront();
          v73 = v119;
          v78 = v95;
          v74 = v82;
          v76 = v82;
        }
      }
    }

    v126 = v73;
    v124 = v109;
  }

  else
  {
    v51 = v49;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v106, v49, a4);
    v52 = a2;
    v114 = &a4[v51 * v45];
    v124 = v114;
    v53 = v50;
    v54 = v112;
    v107 = v45;
    v108 = v36;
    while (a4 < v114 && v52 < v113)
    {
      v119 = v52;
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v52, v43);
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(a4, v123);
      v56 = v109;
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v43, v109);
      v57 = a4;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v58 = v117;
        outlined init with take of InvocationStepMetadata(v56, v117);
        v59 = v111;
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v58, v111);
        _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      }

      else
      {
        v60 = v56;
        v59 = v111;
        outlined init with take of InvocationStepMetadata(v60, v111);
      }

      v61 = *v120;
      (*v120)(v118, v59 + *(v122 + 36), v121);
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v123, v36);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v62 = v117;
        outlined init with take of InvocationStepMetadata(v36, v117);
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v62, v54);
        _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      }

      else
      {
        outlined init with take of InvocationStepMetadata(v36, v54);
      }

      v63 = v121;
      v64 = v110;
      v61(v110, v54 + *(v122 + 36), v121);
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      v65 = v118;
      v66 = static Date.< infix(_:_:)();
      v67 = *v115;
      (*v115)(v64, v63);
      v67(v65, v63);
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      if (v66)
      {
        v68 = v107;
        v69 = &v107[v119];
        if (v53 < v119 || v53 >= v69)
        {
          swift_arrayInitWithTakeFrontToBack();
          v52 = v69;
          a4 = v57;
          v54 = v112;
          v36 = v108;
        }

        else
        {
          v54 = v112;
          v36 = v108;
          if (v53 != v119)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v52 = v69;
          a4 = v57;
        }
      }

      else
      {
        v68 = v107;
        a4 = &v107[v57];
        if (v53 < v57 || v53 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          v54 = v112;
          v36 = v108;
        }

        else
        {
          v54 = v112;
          v36 = v108;
          if (v53 != v57)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v125 = a4;
        v52 = v119;
      }

      v53 += v68;
      v126 = v53;
    }
  }

LABEL_71:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v126, &v125, &v124, type metadata accessor for InvocationStep);
  return 1;
}

void specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  a4(0);
  OUTLINED_FUNCTION_4();
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  v10 = v5 + (v6 - v5) / v8 * v8;
  if (v4 < v5 || v4 >= v10)
  {
    OUTLINED_FUNCTION_43_1();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    OUTLINED_FUNCTION_43_1();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

uint64_t specialized UnsafeMutablePointer.assign(repeating:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_227FB3690;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v49 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v39 - v9;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVAEGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVAEGMR);
  v45 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v50 = result;
  if (!*(v10 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v50;
    return result;
  }

  v40 = v2;
  v12 = 0;
  v13 = (v10 + 64);
  v14 = 1 << *(v10 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v10 + 64);
  v17 = (v14 + 63) >> 6;
  v41 = (v6 + 16);
  v42 = v10;
  v43 = v6;
  v46 = (v6 + 32);
  v18 = v50 + 64;
  if (!v16)
  {
LABEL_7:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v12 >= v17)
      {
        break;
      }

      v21 = v13[v12];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v48 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_33;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v38 + 63) >> 6, v13);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v10 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v16));
    v48 = (v16 - 1) & v16;
LABEL_12:
    v22 = *(v10 + 48);
    v47 = *(v43 + 72);
    v23 = v47 * (v19 | (v12 << 6));
    if (v45)
    {
      v24 = *v46;
      v25 = v44;
      (*v46)(v44, v22 + v23, v5);
    }

    else
    {
      v24 = *v41;
      v25 = v44;
      (*v41)(v44, v22 + v23, v5);
    }

    v24(v49, *(v10 + 56) + v23, v5);
    v26 = v50;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v27 = -1 << *(v26 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v18 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = v50;
    v36 = v47 * v30;
    v37 = *v46;
    (*v46)((*(v50 + 48) + v47 * v30), v25, v5);
    result = (v37)(*(v35 + 56) + v36, v49, v5);
    ++*(v35 + 16);
    v10 = v42;
    v16 = v48;
    if (!v48)
    {
      goto LABEL_7;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v18 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)()
{
  OUTLINED_FUNCTION_100_2();
  specialized __RawDictionaryStorage.find<A>(_:)();
  if (v3)
  {
    v4 = v2;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_73_1();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDV36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialVGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDV36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialVGMR);
    OUTLINED_FUNCTION_84_2(v5, v6, v7, v8, v9, v10, v11, v12, v24, v25);
    OUTLINED_FUNCTION_107_1();
    v13 = type metadata accessor for UUID();
    OUTLINED_FUNCTION_4();
    (*(v14 + 8))(v1 + *(v14 + 72) * v4, v13);
    v15 = type metadata accessor for InvocationStepMetadata.Partial(0);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_2_11();
    outlined init with take of InvocationStepMetadata(v16, v0);
    OUTLINED_FUNCTION_4_6();
    lazy protocol witness table accessor for type UUID and conformance UUID(v17, v18, MEMORY[0x277CC9600]);
    OUTLINED_FUNCTION_69_1();
    _NativeDictionary._delete(at:)();
    v19 = OUTLINED_FUNCTION_71_1();
    v22 = v15;
  }

  else
  {
    type metadata accessor for InvocationStepMetadata.Partial(0);
    v19 = OUTLINED_FUNCTION_37_0();
  }

  return __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
}

{
  OUTLINED_FUNCTION_100_2();
  specialized __RawDictionaryStorage.find<A>(_:)();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_73_1();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy27IntelligencePlatformLibrary05AppleC23ReportingMobileAssetLogV0hiI3SetVAEGMd, &_ss17_NativeDictionaryVy27IntelligencePlatformLibrary05AppleC23ReportingMobileAssetLogV0hiI3SetVAEGMR);
    OUTLINED_FUNCTION_84_2(v6, v7, v8, v9, v10, v11, v12, v13, v24, v25);
    OUTLINED_FUNCTION_107_1();
    v14 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet();
    OUTLINED_FUNCTION_4();
    (*(v15 + 8))(v2 + *(v15 + 72) * v5, v14);
    v16 = *(v1 + 56);
    v17 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
    OUTLINED_FUNCTION_4();
    (*(v18 + 32))(v0, v16 + *(v18 + 72) * v5, v17);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet and conformance AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet, MEMORY[0x277D1F578], MEMORY[0x277D1F580]);
    OUTLINED_FUNCTION_69_1();
    _NativeDictionary._delete(at:)();
    v19 = OUTLINED_FUNCTION_71_1();
    v22 = v17;
  }

  else
  {
    type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
    v19 = OUTLINED_FUNCTION_37_0();
  }

  return __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
}

{
  OUTLINED_FUNCTION_100_2();
  specialized __RawDictionaryStorage.find<A>(_:)();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_73_1();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDVAEGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDVAEGMR);
    OUTLINED_FUNCTION_84_2(v6, v7, v8, v9, v10, v11, v12, v13, v26, v27);
    OUTLINED_FUNCTION_107_1();
    v14 = type metadata accessor for UUID();
    OUTLINED_FUNCTION_0();
    v16 = v15;
    v18 = *(v17 + 72) * v5;
    (*(v15 + 8))(v2 + v18, v14);
    (*(v16 + 32))(v0, *(v1 + 56) + v18, v14);
    OUTLINED_FUNCTION_4_6();
    lazy protocol witness table accessor for type UUID and conformance UUID(v19, v20, MEMORY[0x277CC9600]);
    OUTLINED_FUNCTION_69_1();
    _NativeDictionary._delete(at:)();
    v21 = OUTLINED_FUNCTION_71_1();
    v24 = v14;
  }

  else
  {
    type metadata accessor for UUID();
    v21 = OUTLINED_FUNCTION_37_0();
  }

  return __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
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

uint64_t _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC36AppleIntelligenceReportingProcessing14InvocationStepO10CodingKeys33_C4F9934033535404946766D45806A52FLLO_Tt1g5(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v10 = *(*(v8 - 8) + 16);
  (v10)((v8 - 8), a1, a3, v8);

  return v10(a2, a4, v8);
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_AC5valuetMd, &_s10Foundation4UUIDV3key_AC5valuetMR) + 48);
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_ACtMd, &_s10Foundation4UUIDV_ACtMR) + 48);

  return specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(a2, v5, a1, a1 + v4);
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v54 = a5;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v44 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v46 = v43 - v14;
  MEMORY[0x28223BE20](v13);
  v47 = v43 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_ACtSgMd, &_s10Foundation4UUIDV_ACtSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v43 - v17;
  specialized LazyMapSequence.makeIterator()(a1, a2, a3, v52);
  v48 = v52[0];
  v49 = v52[1];
  v50 = v52[2];
  v51 = v53;
  v19 = (v10 + 32);
  v43[4] = v10 + 8;
  v43[5] = v10 + 16;
  v45 = v10;
  v43[3] = v10 + 40;
  v43[1] = a1;

  v43[0] = a3;

  while (1)
  {
    specialized LazyMapSequence.Iterator.next()(v18);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_ACtMd, &_s10Foundation4UUIDV_ACtMR);
    if (__swift_getEnumTagSinglePayload(v18, 1, v20) == 1)
    {
      outlined consume of Set<String>.Iterator._Variant(v48);
    }

    v21 = *(v20 + 48);
    v22 = *v19;
    (*v19)(v47, v18, v9);
    v22(v46, &v18[v21], v9);
    v23 = *v54;
    specialized __RawDictionaryStorage.find<A>(_:)();
    v26 = v25;
    v27 = v23[2];
    v28 = (v24 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v24;
    if (v23[3] >= v29)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDVAEGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDVAEGMR);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, a4 & 1);
      specialized __RawDictionaryStorage.find<A>(_:)();
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_16;
      }

      v26 = v31;
    }

    v33 = *v54;
    if (v30)
    {
      v34 = v45;
      v35 = *(v45 + 72) * v26;
      v36 = v44;
      (*(v45 + 16))(v44, v33[7] + v35, v9);
      v37 = *(v34 + 8);
      v37(v46, v9);
      v37(v47, v9);
      (*(v34 + 40))(v33[7] + v35, v36, v9);
      a4 = 1;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v38 = *(v45 + 72) * v26;
      v22((v33[6] + v38), v47, v9);
      v22((v33[7] + v38), v46, v9);
      v39 = v33[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_15;
      }

      v33[2] = v41;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t specialized LazyMapSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t specialized LazyMapSequence.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_AC5valuetMd, &_s10Foundation4UUIDV3key_AC5valuetMR);
  MEMORY[0x28223BE20](v48);
  v4 = &v41 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_AC5valuetSgMd, &_s10Foundation4UUIDV3key_AC5valuetSgMR);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v47 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v17 = &v41 - v16;
  v18 = *v1;
  v19 = v1[1];
  v20 = v1[2];
  v21 = v1[3];
  v22 = v1[4];
  v41 = v4;
  v46 = v20;
  if (v22)
  {
    v44 = v17;
    v45 = a1;
    v23 = v21;
LABEL_7:
    v42 = v11;
    v43 = (v22 - 1) & v22;
    v24 = v6[9] * (__clz(__rbit64(v22)) | (v23 << 6));
    v25 = v6[2];
    v26 = v11;
    v27 = v18;
    v25(v26, *(v18 + 48) + v24, v5);
    v25(v9, *(v27 + 56) + v24, v5);
    v28 = *(v48 + 48);
    v29 = v6[4];
    v17 = v44;
    v29(v44, v42, v5);
    v30 = &v17[v28];
    v31 = v43;
    v29(v30, v9, v5);
    v32 = v27;
    v33 = 0;
    a1 = v45;
LABEL_8:
    v34 = 1;
    v35 = v48;
    __swift_storeEnumTagSinglePayload(v17, v33, 1, v48);
    *v1 = v32;
    v1[1] = v19;
    v36 = v47;
    v1[2] = v46;
    v1[3] = v21;
    v1[4] = v31;
    v37 = v1[5];
    outlined init with take of UUID?(v17, v36, &_s10Foundation4UUIDV3key_AC5valuetSgMd, &_s10Foundation4UUIDV3key_AC5valuetSgMR);
    if (__swift_getEnumTagSinglePayload(v36, 1, v35) != 1)
    {
      v38 = v36;
      v39 = v41;
      outlined init with take of UUID?(v38, v41, &_s10Foundation4UUIDV3key_AC5valuetMd, &_s10Foundation4UUIDV3key_AC5valuetMR);
      v37(v39);
      outlined destroy of NSObject?(v39, &_s10Foundation4UUIDV3key_AC5valuetMd, &_s10Foundation4UUIDV3key_AC5valuetMR);
      v34 = 0;
    }

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_ACtMd, &_s10Foundation4UUIDV_ACtMR);
    return __swift_storeEnumTagSinglePayload(a1, v34, 1, v40);
  }

  else
  {
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= ((v20 + 64) >> 6))
      {
        v31 = 0;
        v33 = 1;
        v32 = v18;
        goto LABEL_8;
      }

      v22 = *(v19 + 8 * v23);
      ++v21;
      if (v22)
      {
        v44 = v17;
        v45 = a1;
        v21 = v23;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized toJSONString(_:)(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v2 - 8);
  v18[0] = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for JSONEncoder.OutputFormatting();
  MEMORY[0x28223BE20](v8);
  v20 = type metadata accessor for InvocationStep(0);
  v21 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type InvocationStep and conformance InvocationStep, type metadata accessor for InvocationStep, protocol conformance descriptor for InvocationStep);
  v22 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type InvocationStep and conformance InvocationStep, type metadata accessor for InvocationStep, protocol conformance descriptor for InvocationStep);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v19);
  _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(a1, boxed_opaque_existential_1Tm);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation11JSONEncoderC16OutputFormattingVGMd, &_ss23_ContiguousArrayStorageCy10Foundation11JSONEncoderC16OutputFormattingVGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_227FB1BA0;
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  static JSONEncoder.OutputFormatting.withoutEscapingSlashes.getter();
  v18[5] = v10;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd, &_sSay10Foundation11JSONEncoderC16OutputFormattingVGMR);
  lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  *v7 = closure #1 in toJSONString(_:);
  v7[1] = 0;
  (*(v5 + 104))(v7, *MEMORY[0x277CC8770], v4);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v11 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v13 = v12;
  static String.Encoding.utf8.getter();
  v14 = String.init(data:encoding:)();
  v16 = v15;
  outlined consume of Data._Representation(v11, v13);

  if (!v16)
  {
    v14 = 0xD000000000000013;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v19);
  return v14;
}

void *specialized InvocationProcessor.__allocating_init(biomeEventReader:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InvocationProcessor();
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  v11 = specialized InvocationProcessor.init(biomeEventReader:)(v9, v10, a3, a4);
  (*(v7 + 8))(a1, a3);
  return v11;
}

uint64_t _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_142();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_62();
  v6(v5);
  return a2;
}

uint64_t _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0()
{
  v1 = OUTLINED_FUNCTION_133_1();
  v2(v1);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t outlined init with take of InvocationStepMetadata(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_142();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_62();
  v6(v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type InvocationStepMetadata.Partial.CodingKeys and conformance InvocationStepMetadata.Partial.CodingKeys()
{
  result = lazy protocol witness table cache variable for type InvocationStepMetadata.Partial.CodingKeys and conformance InvocationStepMetadata.Partial.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStepMetadata.Partial.CodingKeys and conformance InvocationStepMetadata.Partial.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvocationStepMetadata.Partial.CodingKeys, &unk_283B55688, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStepMetadata.Partial.CodingKeys and conformance InvocationStepMetadata.Partial.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationStepMetadata.Partial.CodingKeys and conformance InvocationStepMetadata.Partial.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStepMetadata.Partial.CodingKeys and conformance InvocationStepMetadata.Partial.CodingKeys)
  {
    result = swift_getWitnessTable("%f(Zhq", v0);
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStepMetadata.Partial.CodingKeys and conformance InvocationStepMetadata.Partial.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationStepMetadata.Partial.CodingKeys and conformance InvocationStepMetadata.Partial.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStepMetadata.Partial.CodingKeys and conformance InvocationStepMetadata.Partial.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvocationStepMetadata.Partial.CodingKeys, &unk_283B55688, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStepMetadata.Partial.CodingKeys and conformance InvocationStepMetadata.Partial.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationStepMetadata.Partial.CodingKeys and conformance InvocationStepMetadata.Partial.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStepMetadata.Partial.CodingKeys and conformance InvocationStepMetadata.Partial.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvocationStepMetadata.Partial.CodingKeys, &unk_283B55688, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStepMetadata.Partial.CodingKeys and conformance InvocationStepMetadata.Partial.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InvocationStepMetadata.CodingKeys and conformance InvocationStepMetadata.CodingKeys()
{
  result = lazy protocol witness table cache variable for type InvocationStepMetadata.CodingKeys and conformance InvocationStepMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStepMetadata.CodingKeys and conformance InvocationStepMetadata.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvocationStepMetadata.CodingKeys, &unk_283B555F8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStepMetadata.CodingKeys and conformance InvocationStepMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationStepMetadata.CodingKeys and conformance InvocationStepMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStepMetadata.CodingKeys and conformance InvocationStepMetadata.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvocationStepMetadata.CodingKeys, &unk_283B555F8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStepMetadata.CodingKeys and conformance InvocationStepMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationStepMetadata.CodingKeys and conformance InvocationStepMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStepMetadata.CodingKeys and conformance InvocationStepMetadata.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvocationStepMetadata.CodingKeys, &unk_283B555F8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStepMetadata.CodingKeys and conformance InvocationStepMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationStepMetadata.CodingKeys and conformance InvocationStepMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStepMetadata.CodingKeys and conformance InvocationStepMetadata.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvocationStepMetadata.CodingKeys, &unk_283B555F8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStepMetadata.CodingKeys and conformance InvocationStepMetadata.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InvocationStep.CodingKeys and conformance InvocationStep.CodingKeys()
{
  result = lazy protocol witness table cache variable for type InvocationStep.CodingKeys and conformance InvocationStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStep.CodingKeys and conformance InvocationStep.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvocationStep.CodingKeys, &unk_283B55448, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStep.CodingKeys and conformance InvocationStep.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationStep.CodingKeys and conformance InvocationStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStep.CodingKeys and conformance InvocationStep.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvocationStep.CodingKeys, &unk_283B55448, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStep.CodingKeys and conformance InvocationStep.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationStep.CodingKeys and conformance InvocationStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStep.CodingKeys and conformance InvocationStep.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvocationStep.CodingKeys, &unk_283B55448, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStep.CodingKeys and conformance InvocationStep.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationStep.CodingKeys and conformance InvocationStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStep.CodingKeys and conformance InvocationStep.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvocationStep.CodingKeys, &unk_283B55448, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStep.CodingKeys and conformance InvocationStep.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InvocationStep.CompleteCodingKeys and conformance InvocationStep.CompleteCodingKeys()
{
  result = lazy protocol witness table cache variable for type InvocationStep.CompleteCodingKeys and conformance InvocationStep.CompleteCodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStep.CompleteCodingKeys and conformance InvocationStep.CompleteCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvocationStep.CompleteCodingKeys, &unk_283B55568, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStep.CompleteCodingKeys and conformance InvocationStep.CompleteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationStep.CompleteCodingKeys and conformance InvocationStep.CompleteCodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStep.CompleteCodingKeys and conformance InvocationStep.CompleteCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvocationStep.CompleteCodingKeys, &unk_283B55568, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStep.CompleteCodingKeys and conformance InvocationStep.CompleteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationStep.CompleteCodingKeys and conformance InvocationStep.CompleteCodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStep.CompleteCodingKeys and conformance InvocationStep.CompleteCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvocationStep.CompleteCodingKeys, &unk_283B55568, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStep.CompleteCodingKeys and conformance InvocationStep.CompleteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationStep.CompleteCodingKeys and conformance InvocationStep.CompleteCodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStep.CompleteCodingKeys and conformance InvocationStep.CompleteCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvocationStep.CompleteCodingKeys, &unk_283B55568, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStep.CompleteCodingKeys and conformance InvocationStep.CompleteCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InvocationStep.PartialCodingKeys and conformance InvocationStep.PartialCodingKeys()
{
  result = lazy protocol witness table cache variable for type InvocationStep.PartialCodingKeys and conformance InvocationStep.PartialCodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStep.PartialCodingKeys and conformance InvocationStep.PartialCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvocationStep.PartialCodingKeys, &unk_283B554D8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStep.PartialCodingKeys and conformance InvocationStep.PartialCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationStep.PartialCodingKeys and conformance InvocationStep.PartialCodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStep.PartialCodingKeys and conformance InvocationStep.PartialCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvocationStep.PartialCodingKeys, &unk_283B554D8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStep.PartialCodingKeys and conformance InvocationStep.PartialCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationStep.PartialCodingKeys and conformance InvocationStep.PartialCodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStep.PartialCodingKeys and conformance InvocationStep.PartialCodingKeys)
  {
    result = swift_getWitnessTable("es(Zdo", &unk_283B554D8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStep.PartialCodingKeys and conformance InvocationStep.PartialCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationStep.PartialCodingKeys and conformance InvocationStep.PartialCodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStep.PartialCodingKeys and conformance InvocationStep.PartialCodingKeys)
  {
    result = swift_getWitnessTable("uo(Z<o", &unk_283B554D8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStep.PartialCodingKeys and conformance InvocationStep.PartialCodingKeys);
  }

  return result;
}

void *specialized InvocationProcessor.init(biomeEventReader:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a3);
  v8 = MEMORY[0x277D84F90];
  a2[7] = MEMORY[0x277D84F98];
  a2[8] = v8;
  return a2;
}

uint64_t specialized ArraySlice.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type InvocationInformation.CodingKeys and conformance InvocationInformation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type InvocationInformation.CodingKeys and conformance InvocationInformation.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationInformation.CodingKeys and conformance InvocationInformation.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvocationInformation.CodingKeys, &unk_283B553B8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationInformation.CodingKeys and conformance InvocationInformation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationInformation.CodingKeys and conformance InvocationInformation.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationInformation.CodingKeys and conformance InvocationInformation.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvocationInformation.CodingKeys, &unk_283B553B8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationInformation.CodingKeys and conformance InvocationInformation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationInformation.CodingKeys and conformance InvocationInformation.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationInformation.CodingKeys and conformance InvocationInformation.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvocationInformation.CodingKeys, &unk_283B553B8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationInformation.CodingKeys and conformance InvocationInformation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationInformation.CodingKeys and conformance InvocationInformation.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationInformation.CodingKeys and conformance InvocationInformation.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvocationInformation.CodingKeys, &unk_283B553B8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationInformation.CodingKeys and conformance InvocationInformation.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [InvocationStep] and conformance <A> [A](unint64_t *a1, unint64_t *a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay36AppleIntelligenceReportingProcessing14InvocationStepOGMd, &_sSay36AppleIntelligenceReportingProcessing14InvocationStepOGMR);
    lazy protocol witness table accessor for type UUID and conformance UUID(a2, type metadata accessor for InvocationStep, a3);
    v7 = OUTLINED_FUNCTION_113_2();
    result = swift_getWitnessTable(v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_145_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_62();
  v6(v5);
  return v4;
}

void type metadata completion function for InvocationStepMetadata(uint64_t a1)
{
  type metadata accessor for InvocationStepMetadata.Partial(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      type metadata accessor for GeneralAppleIntelligenceError?(319, &lazy cache variable for type metadata for GeneralAppleIntelligenceError?, MEMORY[0x277CEDE98], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata completion function for InvocationStepMetadata.Partial(uint64_t a1)
{
  type metadata accessor for GeneralAppleIntelligenceError?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D83D88]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      v6 = type metadata accessor for Date();
      if (v7 > 0x3F)
      {
        return v6;
      }

      type metadata accessor for String?(319, &lazy cache variable for type metadata for [String], MEMORY[0x277D83940]);
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void type metadata accessor for GeneralAppleIntelligenceError?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata completion function for InvocationStep(uint64_t a1)
{
  result = type metadata accessor for InvocationStepMetadata.Partial(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for InvocationStepMetadata(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for InvocationInformation(uint64_t a1)
{
  v1 = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for [String], MEMORY[0x277D83940]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      type metadata accessor for GeneralAppleIntelligenceError?(319, &lazy cache variable for type metadata for GeneralAppleIntelligenceError?, MEMORY[0x277CEDE98], MEMORY[0x277D83D88]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        type metadata accessor for GeneralAppleIntelligenceError?(319, &lazy cache variable for type metadata for [InvocationStep], type metadata accessor for InvocationStep, MEMORY[0x277D83940]);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

uint64_t dispatch thunk of InvocationProcessor.process(start:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_2();
  v6 = (*(v3 + 128) + **(v3 + 128));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of InvocationProcessor.process(start:);

  return v6(a1);
}

{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t getEnumTagSinglePayload for InvocationInformation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for InvocationInformation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InvocationStep.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for InvocationStep.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InvocationStep.PartialCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for InvocationStep.PartialCodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InvocationStepMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InvocationStepMetadata.Partial.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for InvocationStepMetadata.Partial.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  OUTLINED_FUNCTION_77();
  if ((*(v2 + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v3;
  }

  return a1;
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_145_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_62();
  v6(v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_33_2()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_41@<X0>(char a2@<W8>)
{
  *(v2 - 72) = a2;

  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_61_1()
{

  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t OUTLINED_FUNCTION_62_1(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D83978];

  return lazy protocol witness table accessor for type [String] and conformance <A> [A](a1, a2, v3);
}

uint64_t OUTLINED_FUNCTION_68_1(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D83948];

  return lazy protocol witness table accessor for type [String] and conformance <A> [A](a1, a2, v3);
}

BOOL OUTLINED_FUNCTION_84_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11);
}

uint64_t OUTLINED_FUNCTION_85_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t OUTLINED_FUNCTION_86_2()
{
}

uint64_t OUTLINED_FUNCTION_93_2()
{
}

uint64_t OUTLINED_FUNCTION_119_2()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_120_2()
{

  return _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v0, v1);
}

uint64_t OUTLINED_FUNCTION_122_2(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FD968](a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_123_2()
{

  return _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
}

uint64_t OUTLINED_FUNCTION_144_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_145_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void OUTLINED_FUNCTION_146_0()
{
  *(v2 - 128) = v1;
  *(v2 - 120) = v0;

  JUMPOUT(0x22AAAE070);
}

void OUTLINED_FUNCTION_147_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_150()
{

  return swift_slowAlloc();
}

Swift::UInt32 __swiftcall crc32Checksum(_:)(Swift::String a1)
{
  v1 = String.utf8CString.getter();
  v2 = *(v1 + 16);
  if (HIDWORD(v2))
  {
    __break(1u);
  }

  else
  {
    v3 = crc32(0, (v1 + 32), v2);

    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v1) = -1;
    }

    else
    {
      LODWORD(v1) = v3;
    }
  }

  return v1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DataCollector.runDataCollectionAndUpload()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - v2;
  v4 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in DataCollector.runDataCollectionAndUpload(), v5);
}

uint64_t closure #1 in DataCollector.runDataCollectionAndUpload()()
{
  OUTLINED_FUNCTION_0_2();
  v0[5] = &type metadata for UnifiedAssetFrameworkReporter;
  v0[6] = &protocol witness table for UnifiedAssetFrameworkReporter;
  v0[2] = [objc_opt_self() sharedManager];
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_3_10(v1);

  return DataCollector.dataCollection(unifiedAssetFrameworkReporter:)();
}

{
  OUTLINED_FUNCTION_0_2();
  v2 = *v1;
  OUTLINED_FUNCTION_18_0();
  *v3 = v2;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in DataCollector.runDataCollectionAndUpload(), 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    OUTLINED_FUNCTION_35();

    return v4();
  }
}

{
  OUTLINED_FUNCTION_0_2();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  OUTLINED_FUNCTION_35();

  return v1();
}

uint64_t partial apply for closure #1 in DataCollector.runDataCollectionAndUpload()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in DataCollector.runDataCollectionAndUpload();

  return closure #1 in DataCollector.runDataCollectionAndUpload()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in DataCollector.runDataCollectionAndUpload()()
{
  OUTLINED_FUNCTION_0_2();
  v1 = *v0;
  OUTLINED_FUNCTION_18_0();
  *v2 = v1;

  OUTLINED_FUNCTION_35();

  return v3();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  outlined init with copy of TaskPriority?(a3, v21 - v9);
  v11 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of TaskPriority?(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = String.utf8CString.getter() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      outlined destroy of TaskPriority?(a3);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t DataCollector.dataCollection()()
{
  *(v1 + 56) = v0;
  return MEMORY[0x2822009F8](DataCollector.dataCollection(), 0, 0);
}

{
  OUTLINED_FUNCTION_0_2();
  v0[5] = &type metadata for UnifiedAssetFrameworkReporter;
  v0[6] = &protocol witness table for UnifiedAssetFrameworkReporter;
  v0[2] = [objc_opt_self() sharedManager];
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_3_10(v1);

  return DataCollector.dataCollection(unifiedAssetFrameworkReporter:)();
}

{
  OUTLINED_FUNCTION_0_2();
  v2 = *v1;
  OUTLINED_FUNCTION_18_0();
  *v3 = v2;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](DataCollector.dataCollection(), 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    OUTLINED_FUNCTION_35();

    return v4();
  }
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String *appleIntelligenceUseCaseID.unsafeMutableAddressor()
{
  if (one-time initialization token for appleIntelligenceUseCaseID != -1)
  {
    swift_once();
  }

  return &appleIntelligenceUseCaseID;
}

Swift::String *diffusionUseCaseID.unsafeMutableAddressor()
{
  if (one-time initialization token for diffusionUseCaseID != -1)
  {
    swift_once();
  }

  return &diffusionUseCaseID;
}

uint64_t one-time initialization function for appleIntelligenceUseCaseID(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t *a3, void *a4)
{
  v7 = type metadata accessor for UseCaseIdentifier();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v9);
  v12 = UseCaseIdentifier.id.getter();
  v14 = v13;
  result = (*(v8 + 8))(v11, v7);
  *a3 = v12;
  *a4 = v14;
  return result;
}

uint64_t static AppleIntelligenceBiomeEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v86 = a1;
  v87 = a2;
  type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  OUTLINED_FUNCTION_0();
  v84 = v3;
  v85 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  v73 = v4;
  OUTLINED_FUNCTION_12();
  type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  OUTLINED_FUNCTION_0();
  v82 = v6;
  v83 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v72 = v7;
  OUTLINED_FUNCTION_12();
  type metadata accessor for MobileAssetInstrumentationEvent();
  OUTLINED_FUNCTION_0();
  v80 = v9;
  v81 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v71 = v10;
  OUTLINED_FUNCTION_12();
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  OUTLINED_FUNCTION_0();
  v78 = v12;
  v79 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v70 = v13;
  OUTLINED_FUNCTION_12();
  type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
  OUTLINED_FUNCTION_0();
  v76 = v15;
  v77 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  v69 = v16;
  OUTLINED_FUNCTION_12();
  type metadata accessor for AppleIntelligenceReportingInvocationStep();
  OUTLINED_FUNCTION_0();
  v74 = v18;
  v75 = v17;
  MEMORY[0x28223BE20](v17);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AppleIntelligenceBiomeEvent(0);
  v22 = v21;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v69 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v69 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v69 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = (&v69 - v36);
  MEMORY[0x28223BE20](v35);
  v39 = &v69 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing0aB10BiomeEventO_ACtMd, &_s36AppleIntelligenceReportingProcessing0aB10BiomeEventO_ACtMR);
  v41 = MEMORY[0x28223BE20](v40 - 8);
  v43 = &v69 - v42;
  v44 = *(v41 + 56);
  outlined init with copy of AppleIntelligenceBiomeEvent(v86, &v69 - v42);
  outlined init with copy of AppleIntelligenceBiomeEvent(v87, &v43[v44]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      outlined init with copy of AppleIntelligenceBiomeEvent(v43, v37);
      if (OUTLINED_FUNCTION_4_7() == 1)
      {
        v57 = v76;
        v56 = v77;
        OUTLINED_FUNCTION_2_12();
        v58 = v69;
        v59(v69);
        v22 = static AppleIntelligenceReportingAvailabilityLog.== infix(_:_:)();
        v60 = *(v57 + 8);
        v60(v58, v56);
        v60(v37, v56);
        goto LABEL_23;
      }

      (*(v76 + 8))(v37, v77);
      goto LABEL_20;
    case 2u:
      outlined init with copy of AppleIntelligenceBiomeEvent(v43, v34);
      if (OUTLINED_FUNCTION_4_7() == 2)
      {
        v50 = v78;
        v49 = v79;
        OUTLINED_FUNCTION_2_12();
        v51 = v70;
        v52(v70);
        v22 = static AppleIntelligenceReportingMobileAssetLog.== infix(_:_:)();
        v53 = *(v50 + 8);
        v53(v51, v49);
        v53(v34, v49);
        goto LABEL_23;
      }

      (*(v78 + 8))(v34, v79);
      goto LABEL_20;
    case 3u:
      outlined init with copy of AppleIntelligenceBiomeEvent(v43, v31);
      if (OUTLINED_FUNCTION_4_7() == 3)
      {
        v45 = v81;
        OUTLINED_FUNCTION_2_12();
        v54(v71);
        static MobileAssetInstrumentationEvent.== infix(_:_:)();
        v55 = OUTLINED_FUNCTION_5_10();
        v37(v55);
        v48 = v31;
        goto LABEL_14;
      }

      (*(v80 + 8))(v31, v81);
      goto LABEL_20;
    case 4u:
      outlined init with copy of AppleIntelligenceBiomeEvent(v43, v28);
      if (OUTLINED_FUNCTION_4_7() == 4)
      {
        v45 = v83;
        OUTLINED_FUNCTION_2_12();
        v46(v72);
        static AppleIntelligenceReportingModelCatalogLog.== infix(_:_:)();
        v47 = OUTLINED_FUNCTION_5_10();
        v37(v47);
        v48 = v28;
        goto LABEL_14;
      }

      (*(v82 + 8))(v28, v83);
      goto LABEL_20;
    case 5u:
      outlined init with copy of AppleIntelligenceBiomeEvent(v43, v25);
      if (OUTLINED_FUNCTION_4_7() != 5)
      {
        (*(v84 + 8))(v25, v85);
        goto LABEL_20;
      }

      v61 = v84;
      v45 = v85;
      OUTLINED_FUNCTION_2_12();
      v62 = v73;
      v63(v73);
      v22 = static AppleIntelligenceReportingUnifiedAssetFrameworkLog.== infix(_:_:)();
      v37 = *(v61 + 8);
      (v37)(v62, v45);
      v48 = v25;
LABEL_14:
      (v37)(v48, v45);
      goto LABEL_23;
    default:
      outlined init with copy of AppleIntelligenceBiomeEvent(v43, v39);
      if (OUTLINED_FUNCTION_4_7())
      {
        (*(v74 + 8))(v39, v75);
LABEL_20:
        outlined destroy of (AppleIntelligenceBiomeEvent, AppleIntelligenceBiomeEvent)(v43);
        v22 = 0;
      }

      else
      {
        v65 = v74;
        v64 = v75;
        OUTLINED_FUNCTION_2_12();
        v66(v20);
        v22 = static AppleIntelligenceReportingInvocationStep.== infix(_:_:)();
        v67 = *(v65 + 8);
        v67(v20, v64);
        v67(v39, v64);
LABEL_23:
        outlined destroy of AppleIntelligenceBiomeEvent(v43);
      }

      return v22 & 1;
  }
}

uint64_t type metadata accessor for AppleIntelligenceBiomeEvent(uint64_t a1)
{
  result = type metadata singleton initialization cache for AppleIntelligenceBiomeEvent;
  if (!type metadata singleton initialization cache for AppleIntelligenceBiomeEvent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of (AppleIntelligenceBiomeEvent, AppleIntelligenceBiomeEvent)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing0aB10BiomeEventO_ACtMd, &_s36AppleIntelligenceReportingProcessing0aB10BiomeEventO_ACtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for AppleIntelligenceBiomeEvent(uint64_t a1)
{
  result = type metadata accessor for AppleIntelligenceReportingInvocationStep();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for MobileAssetInstrumentationEvent();
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
            if (v7 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_7()
{

  return swift_getEnumCaseMultiPayload();
}

Swift::Void __swiftcall CoreAnalyticsUploader.sendEvent(eventName:payload:)(Swift::String eventName, Swift::OpaquePointer_optional payload)
{
  rawValue = payload.value._rawValue;
  v3 = MEMORY[0x22AAADFF0](eventName._countAndFlagsBits, eventName._object, payload.value._rawValue, *&payload.is_nil);
  if (rawValue)
  {
    type metadata accessor for NSObject();
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  isa = v4.super.isa;
  AnalyticsSendEvent();
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CoreAnalyticsUploader(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t SELFEventProcessor.init(logger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 32);

  return v6(a2, a1, v4);
}

void SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t *a1)
{
  v3 = type metadata accessor for SELFEventProcessor(0);
  v4 = OUTLINED_FUNCTION_44(v3);
  *&v279 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = a1[2];
  v11 = *(a1 + 24);
  v278 = *(a1 + 7);
  LODWORD(v277) = *(a1 + 32);
  v282 = a1[6];
  LODWORD(v281) = *(a1 + 56);
  v262 = *(a1 + 57);
  v268 = a1[8];
  v267 = *(a1 + 72);
  v260 = *(a1 + 73);
  v266 = a1[10];
  v265 = *(a1 + 88);
  v261 = *(a1 + 89);
  v264 = a1[12];
  v263 = *(a1 + 104);
  v284 = a1[14];
  LODWORD(v283) = *(a1 + 120);
  v274 = a1[16];
  v273 = *(a1 + 136);
  v270 = *(a1 + 35);
  v269 = *(a1 + 144);
  v272 = *(a1 + 39);
  v271 = *(a1 + 160);
  v276 = a1[22];
  v275 = *(a1 + 184);
  v12 = a1[26];
  v13 = a1[27];
  v287 = v12;
  v14 = [objc_allocWithZone(MEMORY[0x277D5A5F0]) init];
  v288 = v1;
  v15 = Logger.logObject.getter();
  v280 = v14;
  if (v14)
  {
    v259 = v13;
    v255 = v7;
    v256 = &v253 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_150();
      *v17 = 0;
      OUTLINED_FUNCTION_56_2();
      _os_log_impl(v18, v19, v20, v21, v17, 2u);
      OUTLINED_FUNCTION_11();
    }

    v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypSg5value_SS9fieldNameSS12expectedTypeyypKc6settertGMd, &_ss23_ContiguousArrayStorageCyypSg5value_SS9fieldNameSS12expectedTypeyypKc6settertGMR);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_227FB4170;
    OUTLINED_FUNCTION_3_11();
    v23 = swift_allocObject();
    v24 = v23;
    v25 = v9 == 0;
    if (v9)
    {
      v26 = 0;
    }

    else
    {
      v26 = v8;
    }

    *(v22 + 32) = v26;
    v286 = v22 + 32;
    v27 = MEMORY[0x277D84D38];
    v28 = v280;
    *(v23 + 16) = v280;
    if (v25)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0;
    }

    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = v29;
    *(v22 + 64) = 0x757461745377656ELL;
    *(v22 + 72) = 0xE900000000000073;
    *(v22 + 80) = 0x3436746E4955;
    *(v22 + 88) = 0xE600000000000000;
    OUTLINED_FUNCTION_109_0();
    v30 = swift_allocObject();
    *(v30 + 16) = partial apply for closure #1 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v30 + 24) = v24;
    *(v22 + 96) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error);
    *(v22 + 104) = v30;
    if (v11)
    {
      v10 = 0;
      v27 = 0;
    }

    OUTLINED_FUNCTION_3_11();
    v31 = swift_allocObject();
    OUTLINED_FUNCTION_57_2(v31);
    *(v22 + 112) = v10;
    *(v22 + 120) = 0;
    *(v22 + 128) = 0;
    *(v22 + 136) = v27;
    *(v22 + 144) = 0x7461745376657270;
    *(v22 + 152) = 0xEA00000000007375;
    *(v22 + 160) = 0x3436746E4955;
    *(v22 + 168) = 0xE600000000000000;
    OUTLINED_FUNCTION_109_0();
    v32 = swift_allocObject();
    *(v32 + 16) = partial apply for closure #2 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v32 + 24) = v24;
    *(v22 + 176) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
    *(v22 + 184) = v32;
    OUTLINED_FUNCTION_7_8();
    v34 = MEMORY[0x277D839F8];
    if (v33)
    {
      v35 = v282;
    }

    else
    {
      v35 = 0;
    }

    if (v33)
    {
      v36 = MEMORY[0x277D839F8];
    }

    else
    {
      v36 = 0;
    }

    OUTLINED_FUNCTION_31_4();
    OUTLINED_FUNCTION_3_11();
    v37 = swift_allocObject();
    OUTLINED_FUNCTION_57_2(v37);
    *(v22 + 192) = v35;
    *(v22 + 200) = 0;
    *(v22 + 208) = 0;
    *(v22 + 216) = v36;
    *(v22 + 224) = 0xD000000000000019;
    *(v22 + 232) = v11;
    *(v22 + 240) = 0x656C62756F44;
    *(v22 + 248) = 0xE600000000000000;
    OUTLINED_FUNCTION_109_0();
    v38 = swift_allocObject();
    *(v38 + 16) = partial apply for closure #3 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v38 + 24) = v24;
    *(v22 + 256) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
    *(v22 + 264) = v38;
    if (v283)
    {
      v39 = 0;
    }

    else
    {
      v39 = v284;
    }

    if (v283)
    {
      v40 = 0;
    }

    else
    {
      v40 = v34;
    }

    OUTLINED_FUNCTION_31_4();
    OUTLINED_FUNCTION_3_11();
    v41 = swift_allocObject();
    OUTLINED_FUNCTION_57_2(v41);
    *(v22 + 272) = v39;
    *(v22 + 280) = 0;
    *(v22 + 288) = 0;
    *(v22 + 296) = v40;
    *(v22 + 304) = 0xD00000000000001FLL;
    *(v22 + 312) = v11;
    *(v22 + 320) = 0x656C62756F44;
    *(v22 + 328) = 0xE600000000000000;
    OUTLINED_FUNCTION_109_0();
    v42 = swift_allocObject();
    *(v42 + 16) = partial apply for closure #4 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v42 + 24) = v24;
    *(v22 + 336) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
    *(v22 + 344) = v42;
    v43 = v259;
    if (v259)
    {
      v44 = v287;
    }

    else
    {
      v44 = 0;
    }

    if (v259)
    {
      v45 = MEMORY[0x277D837D0];
    }

    else
    {
      v45 = 0;
    }

    OUTLINED_FUNCTION_3_11();
    v46 = swift_allocObject();
    OUTLINED_FUNCTION_57_2(v46);
    *(v22 + 352) = v44;
    *(v22 + 360) = v43;
    *(v22 + 368) = 0;
    *(v22 + 376) = v45;
    OUTLINED_FUNCTION_55_2();
    *(v22 + 384) = v47;
    *(v22 + 392) = 0xE900000000000044;
    OUTLINED_FUNCTION_5_11();
    *(v22 + 400) = v48;
    *(v22 + 408) = 0xE600000000000000;
    OUTLINED_FUNCTION_109_0();
    v49 = swift_allocObject();
    *(v49 + 16) = partial apply for closure #5 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v49 + 24) = v24;
    *(v22 + 416) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
    *(v22 + 424) = v49;
    v257 = v22;
    v50 = v286;
    v258 = v28;

    v51 = 0;
    *&v52 = 136315394;
    v281 = v52;
    v53 = v285;
    while (v51 != 5)
    {
      if (v51 > 4)
      {
        __break(1u);
LABEL_132:
        __break(1u);
        return;
      }

      _sypSg5value_SS9fieldNameSS12expectedTypexq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyypytIsegnrzo_6settertWOc(v50, v291);
      v54 = v293;
      if (!v293)
      {
        break;
      }

      v55 = v292;
      v56 = v294;
      v57 = v295;
      OUTLINED_FUNCTION_109_0();
      v58 = swift_allocObject();
      v59 = OUTLINED_FUNCTION_8_12(v58);
      v290 = v60;
      v289 = v59;
      if (!*(&v60 + 1))
      {

        outlined destroy of NSObject?(&v289, &_sypSgMd, &_sypSgMR);

        v213 = Logger.logObject.getter();
        static os_log_type_t.error.getter();

        if (OUTLINED_FUNCTION_62_2())
        {
          v214 = v55;
          v215 = OUTLINED_FUNCTION_76_0();
          v216 = OUTLINED_FUNCTION_84();
          v291[0] = v216;
          *v215 = 136315138;
          *(v215 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v214, v54, v291);
          OUTLINED_FUNCTION_56_2();
          _os_log_impl(v217, v218, v219, v220, v215, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v216);
          OUTLINED_FUNCTION_11();
          v55 = v214;
          OUTLINED_FUNCTION_11();
        }

        v221 = lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
        OUTLINED_FUNCTION_51_1(&type metadata for SELFProcessingError, v221);
        *v222 = v55;
        v222[1] = v54;
        OUTLINED_FUNCTION_37_1();
        *(v224 + 16) = v223 + 2;
        *(v224 + 24) = 0x8000000227FB5F20;
        OUTLINED_FUNCTION_50_2(v225, v224);

        return;
      }

      v285 = v56;
      v61 = OUTLINED_FUNCTION_64_3(&v289);
      outlined init with copy of Any(v61, &v289);

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.debug.getter();

      v64 = os_log_type_enabled(v62, v63);
      v287 = v54;
      if (v64)
      {
        OUTLINED_FUNCTION_80();
        v286 = v50;
        v65 = OUTLINED_FUNCTION_21_6();
        v283 = v51;
        v296 = v65;
        OUTLINED_FUNCTION_27_4(&v298);
        v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, v66);
        OUTLINED_FUNCTION_26_3(v67);
        v284 = v55;
        v68 = __swift_project_boxed_opaque_existential_1(&v289, *(&v290 + 1));
        v282 = &v253;
        MEMORY[0x28223BE20](v68);
        OUTLINED_FUNCTION_1_0();
        v69 = v53;
        v71 = OUTLINED_FUNCTION_58_2(v70);
        v72(v71);
        v73 = String.init<A>(describing:)();
        v75 = v74;
        __swift_destroy_boxed_opaque_existential_0Tm(&v289);
        v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, &v296);
        v53 = v69;

        *(v50 + 14) = v76;
        v55 = v284;
        OUTLINED_FUNCTION_53_2(&dword_227F43000, v62, v63, "Field '%s': %s is assigned", v253, v254);
        swift_arrayDestroy();
        v51 = v283;
        OUTLINED_FUNCTION_11();
        v50 = v286;
        OUTLINED_FUNCTION_11();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0Tm(&v289);
      }

      thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@out (), @error @owned Error)partial apply();
      if (v53)
      {

        v226 = v287;

        v227 = v53;
        v228 = Logger.logObject.getter();
        static os_log_type_t.fault.getter();

        if (OUTLINED_FUNCTION_62_2())
        {
          v229 = v57;
          v230 = OUTLINED_FUNCTION_84();
          v231 = OUTLINED_FUNCTION_83();
          v288 = swift_slowAlloc();
          v289.n128_u64[0] = v288;
          *v230 = 136315650;
          v232 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v226, &v289);

          *(v230 + 4) = v232;
          *(v230 + 12) = 2080;
          v233 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v285, v229, &v289);

          *(v230 + 14) = v233;
          *(v230 + 22) = 2112;
          v234 = v53;
          v235 = _swift_stdlib_bridgeErrorToNSError();
          *(v230 + 24) = v235;
          *v231 = v235;
          OUTLINED_FUNCTION_56_2();
          _os_log_impl(v236, v237, v238, v239, v230, 0x20u);
          outlined destroy of NSObject?(v231, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          OUTLINED_FUNCTION_11();
          swift_arrayDestroy();
          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_11();
        }

        else
        {
        }

        swift_willThrow();
LABEL_130:

        __swift_destroy_boxed_opaque_existential_0Tm(v291);
        return;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v291);

      v50 += 80;
      ++v51;
    }

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit(&_sypSg5value_SS9fieldNameSS12expectedTypeyyc6settertMd, &_sypSg5value_SS9fieldNameSS12expectedTypeyyc6settertMR);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_227FB4180;
    v83 = v260;
    OUTLINED_FUNCTION_3_11();
    v84 = swift_allocObject();
    v85 = v84;
    *(v82 + 32) = v83 & 1;
    v287 = v82 + 32;
    v86 = MEMORY[0x277D839B0];
    if (v83 == 2)
    {
      v87 = 0;
    }

    else
    {
      v87 = MEMORY[0x277D839B0];
    }

    v88 = v258;
    *(v84 + 16) = v258;
    *(v82 + 40) = 0u;
    *(v82 + 56) = v87;
    *(v82 + 64) = 0xD000000000000027;
    *(v82 + 72) = 0x8000000227FB4F70;
    *(v82 + 80) = 1819242306;
    *(v82 + 88) = 0xE400000000000000;
    OUTLINED_FUNCTION_109_0();
    v89 = swift_allocObject();
    *(v89 + 16) = partial apply for closure #6 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v89 + 24) = v85;
    *(v82 + 96) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
    *(v82 + 104) = v89;
    v90 = v261 & 1;
    if (v261 == 2)
    {
      v91 = 0;
    }

    else
    {
      v91 = v86;
    }

    OUTLINED_FUNCTION_3_11();
    v92 = swift_allocObject();
    OUTLINED_FUNCTION_30_1(v92);
    *(v82 + 112) = v90;
    *(v82 + 120) = 0u;
    *(v82 + 136) = v91;
    strcpy((v82 + 144), "AIToggleState");
    *(v82 + 158) = -4864;
    *(v82 + 160) = 1819242306;
    *(v82 + 168) = 0xE400000000000000;
    OUTLINED_FUNCTION_109_0();
    v93 = swift_allocObject();
    *(v93 + 16) = partial apply for closure #7 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v93 + 24) = v85;
    *(v82 + 176) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
    *(v82 + 184) = v93;
    v94 = v262 & 1;
    if (v262 == 2)
    {
      v86 = 0;
    }

    OUTLINED_FUNCTION_64_0();
    OUTLINED_FUNCTION_3_11();
    v95 = swift_allocObject();
    OUTLINED_FUNCTION_30_1(v95);
    *(v82 + 192) = v94;
    *(v82 + 200) = 0u;
    OUTLINED_FUNCTION_37_1();
    *(v82 + 216) = v86;
    *(v82 + 224) = v96 + 7;
    *(v82 + 232) = v91;
    *(v82 + 240) = 1819242306;
    *(v82 + 248) = 0xE400000000000000;
    OUTLINED_FUNCTION_109_0();
    v97 = swift_allocObject();
    *(v97 + 16) = partial apply for closure #8 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v97 + 24) = v85;
    *(v82 + 256) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
    *(v82 + 264) = v97;
    OUTLINED_FUNCTION_7_8();
    if (v98)
    {
      v99 = v264;
    }

    else
    {
      v99 = 0;
    }

    v100 = MEMORY[0x277D839F8];
    if (v98)
    {
      v101 = MEMORY[0x277D839F8];
    }

    else
    {
      v101 = 0;
    }

    OUTLINED_FUNCTION_3_11();
    v102 = swift_allocObject();
    OUTLINED_FUNCTION_30_1(v102);
    *(v82 + 272) = v99;
    OUTLINED_FUNCTION_10_7((v82 + 280));
    *(v82 + 296) = v101;
    *(v82 + 304) = 0xD000000000000015;
    *(v82 + 312) = 0x8000000227FB4FC0;
    *(v82 + 320) = 0x656C62756F44;
    *(v82 + 328) = 0xE600000000000000;
    OUTLINED_FUNCTION_109_0();
    v103 = swift_allocObject();
    *(v103 + 16) = partial apply for closure #9 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v103 + 24) = v85;
    *(v82 + 336) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
    *(v82 + 344) = v103;
    OUTLINED_FUNCTION_7_8();
    if (v104)
    {
      v105 = v266;
    }

    else
    {
      v105 = 0;
    }

    if (v104)
    {
      v106 = v100;
    }

    else
    {
      v106 = 0;
    }

    OUTLINED_FUNCTION_3_11();
    v107 = swift_allocObject();
    OUTLINED_FUNCTION_30_1(v107);
    *(v82 + 352) = v105;
    OUTLINED_FUNCTION_10_7((v82 + 360));
    *(v82 + 376) = v106;
    *(v82 + 384) = 0xD00000000000001BLL;
    *(v82 + 392) = 0x8000000227FB4FA0;
    *(v82 + 400) = 0x656C62756F44;
    *(v82 + 408) = 0xE600000000000000;
    OUTLINED_FUNCTION_109_0();
    v108 = swift_allocObject();
    *(v108 + 16) = partial apply for closure #10 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v108 + 24) = v85;
    *(v82 + 416) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
    *(v82 + 424) = v108;
    OUTLINED_FUNCTION_7_8();
    if (v109)
    {
      v110 = v268;
    }

    else
    {
      v110 = 0;
    }

    if (v109)
    {
      v111 = v100;
    }

    else
    {
      v111 = 0;
    }

    OUTLINED_FUNCTION_64_0();
    OUTLINED_FUNCTION_3_11();
    v112 = swift_allocObject();
    OUTLINED_FUNCTION_30_1(v112);
    *(v82 + 432) = v110;
    OUTLINED_FUNCTION_10_7((v82 + 440));
    *(v82 + 456) = v111;
    *(v82 + 464) = 0xD00000000000001BLL;
    *(v82 + 472) = v100;
    *(v82 + 480) = 0x656C62756F44;
    *(v82 + 488) = 0xE600000000000000;
    OUTLINED_FUNCTION_109_0();
    v113 = swift_allocObject();
    *(v113 + 16) = partial apply for closure #11 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v113 + 24) = v85;
    *(v82 + 496) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
    *(v82 + 504) = v113;
    v114 = MEMORY[0x277D84CC0];
    OUTLINED_FUNCTION_7_8();
    if (v115)
    {
      v116 = v114;
    }

    else
    {
      v116 = 0;
    }

    if (v115)
    {
      v117 = v270;
    }

    else
    {
      v117 = 0;
    }

    OUTLINED_FUNCTION_64_0();
    OUTLINED_FUNCTION_3_11();
    v118 = swift_allocObject();
    OUTLINED_FUNCTION_30_1(v118);
    *(v82 + 512) = v117;
    OUTLINED_FUNCTION_10_7((v82 + 520));
    *(v82 + 536) = v116;
    OUTLINED_FUNCTION_37_1();
    *(v82 + 544) = v119;
    *(v82 + 552) = v100;
    OUTLINED_FUNCTION_20_5();
    *(v82 + 560) = v120;
    v121 = v120;
    *(v82 + 568) = 0xE600000000000000;
    OUTLINED_FUNCTION_109_0();
    v122 = swift_allocObject();
    *(v122 + 16) = partial apply for closure #12 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v122 + 24) = v85;
    *(v82 + 576) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
    *(v82 + 584) = v122;
    OUTLINED_FUNCTION_7_8();
    if (v123)
    {
      v124 = v114;
    }

    else
    {
      v124 = 0;
    }

    if (v123)
    {
      v125 = v272;
    }

    else
    {
      v125 = 0;
    }

    v285 = v53;
    OUTLINED_FUNCTION_3_11();
    v126 = swift_allocObject();
    OUTLINED_FUNCTION_30_1(v126);
    *(v82 + 592) = v125;
    OUTLINED_FUNCTION_10_7((v82 + 600));
    *(v82 + 616) = v124;
    OUTLINED_FUNCTION_37_1();
    *(v82 + 624) = v127 + 1;
    *(v82 + 632) = 0x8000000227FB5040;
    *(v82 + 640) = v121;
    *(v82 + 648) = 0xE600000000000000;
    OUTLINED_FUNCTION_109_0();
    v128 = swift_allocObject();
    *(v128 + 16) = partial apply for closure #13 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v128 + 24) = v85;
    *(v82 + 656) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
    *(v82 + 664) = v128;
    OUTLINED_FUNCTION_7_8();
    if (v129)
    {
      v130 = v274;
    }

    else
    {
      v130 = 0;
    }

    v131 = MEMORY[0x277D839F8];
    if (v129)
    {
      v132 = MEMORY[0x277D839F8];
    }

    else
    {
      v132 = 0;
    }

    OUTLINED_FUNCTION_3_11();
    v133 = swift_allocObject();
    OUTLINED_FUNCTION_30_1(v133);
    *(v82 + 672) = v130;
    OUTLINED_FUNCTION_10_7((v82 + 680));
    *(v82 + 696) = v132;
    OUTLINED_FUNCTION_37_1();
    *(v82 + 704) = v134 - 4;
    *(v82 + 712) = 0x8000000227FB5000;
    *(v82 + 720) = 0x656C62756F44;
    *(v82 + 728) = 0xE600000000000000;
    OUTLINED_FUNCTION_109_0();
    v135 = swift_allocObject();
    *(v135 + 16) = partial apply for closure #14 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v135 + 24) = v85;
    *(v82 + 736) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
    *(v82 + 744) = v135;
    OUTLINED_FUNCTION_7_8();
    if (v136)
    {
      v137 = v131;
    }

    else
    {
      v137 = 0;
    }

    if (v136)
    {
      v138 = v276;
    }

    else
    {
      v138 = 0;
    }

    OUTLINED_FUNCTION_3_11();
    v139 = swift_allocObject();
    OUTLINED_FUNCTION_30_1(v139);
    *(v82 + 752) = v138;
    OUTLINED_FUNCTION_10_7((v82 + 760));
    *(v82 + 776) = v137;
    OUTLINED_FUNCTION_37_1();
    *(v82 + 784) = v140 + 16;
    *(v82 + 792) = 0x8000000227FB5060;
    *(v82 + 800) = 0x656C62756F44;
    *(v82 + 808) = 0xE600000000000000;
    OUTLINED_FUNCTION_109_0();
    v141 = swift_allocObject();
    *(v141 + 16) = partial apply for closure #15 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v141 + 24) = v85;
    *(v82 + 816) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
    *(v82 + 824) = v141;
    OUTLINED_FUNCTION_7_8();
    if (v142)
    {
      v143 = v278;
    }

    else
    {
      v143 = 0;
    }

    if (v142)
    {
      v144 = MEMORY[0x277D84CC0];
    }

    else
    {
      v144 = 0;
    }

    v145 = v88;
    v146 = v256;
    outlined init with copy of SELFEventProcessor(v288, v256);
    v147 = (*(v279 + 80) + 24) & ~*(v279 + 80);
    v148 = swift_allocObject();
    v149 = OUTLINED_FUNCTION_15_4(v148) + v147;
    v150 = v285;
    v151 = v146;
    v152 = v287;
    outlined init with take of SELFEventProcessor(v151, v149);
    *(v82 + 832) = v143;
    OUTLINED_FUNCTION_10_7((v82 + 840));
    *(v82 + 856) = v144;
    *(v82 + 864) = 0x4D746E6572727563;
    *(v82 + 872) = 0xEB0000000065646FLL;
    OUTLINED_FUNCTION_20_5();
    *(v82 + 880) = v153;
    *(v82 + 888) = 0xE600000000000000;
    OUTLINED_FUNCTION_109_0();
    v154 = swift_allocObject();
    *(v154 + 16) = partial apply for closure #16 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v154 + 24) = 0xE600000000000000;
    *(v82 + 896) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
    v278 = v82;
    *(v82 + 904) = v154;
    v277 = v145;
    v155 = 0;
    *&v156 = 136315138;
    v279 = v156;
    while (v155 != 11)
    {
      if (v155 > 0xA)
      {
        goto LABEL_132;
      }

      _sypSg5value_SS9fieldNameSS12expectedTypexq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyypytIsegnrzo_6settertWOc(v152, v291);
      v157 = v293;
      if (!v293)
      {
        break;
      }

      v158 = v292;
      v160 = v294;
      v159 = v295;
      OUTLINED_FUNCTION_109_0();
      v161 = swift_allocObject();
      v162 = OUTLINED_FUNCTION_8_12(v161);
      v290 = v163;
      v289 = v162;
      if (*(&v163 + 1))
      {
        v287 = v159;
        v164 = OUTLINED_FUNCTION_64_3(&v289);
        outlined init with copy of Any(v164, &v289);

        v165 = Logger.logObject.getter();
        v166 = static os_log_type_t.debug.getter();

        v167 = os_log_type_enabled(v165, v166);
        v283 = v160;
        if (v167)
        {
          OUTLINED_FUNCTION_80();
          v286 = v155;
          v168 = OUTLINED_FUNCTION_21_6();
          v285 = v150;
          v296 = v168;
          OUTLINED_FUNCTION_27_4(&v298);
          v170 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v158, v157, v169);
          OUTLINED_FUNCTION_26_3(v170);
          __swift_project_boxed_opaque_existential_1(&v289, *(&v290 + 1));
          v284 = v161;
          OUTLINED_FUNCTION_22_7();
          MEMORY[0x28223BE20](v171);
          OUTLINED_FUNCTION_1_0();
          v282 = v158;
          (*(v174 + 16))(v173 - v172);
          v175 = String.init<A>(describing:)();
          v177 = v176;
          v161 = v284;
          __swift_destroy_boxed_opaque_existential_0Tm(&v289);
          v178 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v175, v177, &v296);

          *(v155 + 14) = v178;
          v158 = v282;
          OUTLINED_FUNCTION_53_2(&dword_227F43000, v165, v166, "Field '%s': %s is assigned", v253, v254);
          swift_arrayDestroy();
          v150 = v285;
          OUTLINED_FUNCTION_11();
          v155 = v286;
          OUTLINED_FUNCTION_11();
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0Tm(&v289);
        }

        v188 = v150;
        partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@out (), @error @owned Error)();
        v189 = v287;
        if (v150)
        {

          v240 = v150;
          v241 = Logger.logObject.getter();
          static os_log_type_t.fault.getter();

          if (OUTLINED_FUNCTION_62_2())
          {
            v242 = OUTLINED_FUNCTION_84();
            v284 = v161;
            v243 = v242;
            v244 = OUTLINED_FUNCTION_83();
            v289.n128_u64[0] = swift_slowAlloc();
            *v243 = 136315650;
            v245 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v158, v157, &v289);

            *(v243 + 4) = v245;
            *(v243 + 12) = 2080;
            v246 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v283, v189, &v289);

            *(v243 + 14) = v246;
            *(v243 + 22) = 2112;
            v247 = v188;
            v248 = _swift_stdlib_bridgeErrorToNSError();
            *(v243 + 24) = v248;
            *v244 = v248;
            OUTLINED_FUNCTION_56_2();
            _os_log_impl(v249, v250, v251, v252, v243, 0x20u);
            outlined destroy of NSObject?(v244, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            OUTLINED_FUNCTION_11();
            swift_arrayDestroy();
            OUTLINED_FUNCTION_11();
            OUTLINED_FUNCTION_11();
          }

          else
          {
          }

          swift_willThrow();
          goto LABEL_130;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v291);
      }

      else
      {
        v179 = v158;

        outlined destroy of NSObject?(&v289, &_sypSgMd, &_sypSgMR);

        v180 = Logger.logObject.getter();
        v181 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v180, v181))
        {
          v182 = OUTLINED_FUNCTION_76_0();
          v286 = v155;
          v183 = v182;
          v184 = OUTLINED_FUNCTION_84();
          v291[0] = v184;
          OUTLINED_FUNCTION_33_3(&v297);
          v185 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v179, v157, v291);
          v186 = v150;
          v187 = v185;

          *(v183 + 4) = v187;
          v150 = v186;
          _os_log_impl(&dword_227F43000, v180, v181, "Field '%s': nil (optional)", v183, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v184);
          OUTLINED_FUNCTION_11();
          v155 = v286;
          OUTLINED_FUNCTION_11();
        }

        else
        {
        }
      }

      v152 += 80;
      ++v155;
    }

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit(&_sypSg5value_SS9fieldNameSS12expectedTypeyyc6settertMd, &_sypSg5value_SS9fieldNameSS12expectedTypeyyc6settertMR);
    v190 = Logger.logObject.getter();
    v191 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_78_0(v191))
    {
      v192 = OUTLINED_FUNCTION_150();
      OUTLINED_FUNCTION_32_2(v192);
      OUTLINED_FUNCTION_0_11();
      _os_log_impl(v193, v194, v195, v196, v197, 2u);
      OUTLINED_FUNCTION_40();
    }

    v198 = v277;
    v199 = Logger.logObject.getter();
    v200 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v199, v200))
    {
      v201 = OUTLINED_FUNCTION_76_0();
      v202 = OUTLINED_FUNCTION_84();
      v289.n128_u64[0] = v202;
      OUTLINED_FUNCTION_33_3(&v297);
      v291[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus, 0x277D5A5F0);
      v291[0] = v198;
      v203 = v198;
      v204 = printDebugDescription(_:)(v291);
      v206 = v205;
      __swift_destroy_boxed_opaque_existential_0Tm(v291);
      v207 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v204, v206, &v289);

      *(v201 + 4) = v207;
      OUTLINED_FUNCTION_0_11();
      _os_log_impl(v208, v209, v210, v211, v212, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v202);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_40();
    }
  }

  else
  {
    v77 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v77))
    {
      v78 = OUTLINED_FUNCTION_150();
      OUTLINED_FUNCTION_32_2(v78);
      _os_log_impl(&dword_227F43000, v15, v77, "Failed to create SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus container", 0, 2u);
      OUTLINED_FUNCTION_40();
    }

    v79 = lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    v80 = OUTLINED_FUNCTION_51_1(&type metadata for SELFProcessingError, v79);
    OUTLINED_FUNCTION_45_2(v80, v81);
  }
}

uint64_t type metadata accessor for SELFEventProcessor(uint64_t a1)
{
  result = type metadata singleton initialization cache for SELFEventProcessor;
  if (!type metadata singleton initialization cache for SELFEventProcessor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError()
{
  result = lazy protocol witness table cache variable for type SELFProcessingError and conformance SELFProcessingError;
  if (!lazy protocol witness table cache variable for type SELFProcessingError and conformance SELFProcessingError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SELFProcessingError, &type metadata for SELFProcessingError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SELFProcessingError and conformance SELFProcessingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SELFProcessingError and conformance SELFProcessingError;
  if (!lazy protocol witness table cache variable for type SELFProcessingError and conformance SELFProcessingError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SELFProcessingError, &type metadata for SELFProcessingError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SELFProcessingError and conformance SELFProcessingError);
  }

  return result;
}

id closure #1 in SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t a1, void *a2, SEL *a3, __n128 a4)
{
  outlined init with copy of Any(a1, v10);
  if (swift_dynamicCast())
  {
    return [a2 *a3];
  }

  v7 = lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  OUTLINED_FUNCTION_51_1(&type metadata for SELFProcessingError, v7);
  *v8 = a4;
  *(v8 + 16) = xmmword_227FB4190;
  *(v8 + 32) = 0xD000000000000017;
  *(v8 + 40) = 0x8000000227FB5F20;
  *(v8 + 48) = 2;
  return swift_willThrow();
}

id closure #3 in SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setTimeSinceLastStatusChangeInSeconds_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD000000000000019;
  *(v4 + 8) = 0x8000000227FB4F10;
  *(v4 + 16) = xmmword_227FB41A0;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000227FB5F20;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #4 in SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setTimeSinceLastAvailabilityChangeInSeconds_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD00000000000001FLL;
  *(v4 + 8) = 0x8000000227FB4FE0;
  *(v4 + 16) = xmmword_227FB41A0;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000227FB5F20;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

void closure #5 in SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v6);
  if (swift_dynamicCast())
  {
    outlined bridged method (mbnn) of @objc SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus.useCaseID.setter(v4, v5, a2, &selRef_setUseCaseID_);
  }

  else
  {
    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    swift_allocError();
    *v3 = xmmword_227FB41B0;
    *(v3 + 16) = xmmword_227FB41C0;
    *(v3 + 32) = 0xD000000000000017;
    *(v3 + 40) = 0x8000000227FB5F20;
    *(v3 + 48) = 2;
    swift_willThrow();
  }
}

id closure #6 in SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setIsAppleIntelligenceAllowedThroughWaitlist_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD000000000000027;
  *(v4 + 8) = 0x8000000227FB4F70;
  *(v4 + 16) = xmmword_227FB41D0;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000227FB5F20;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #7 in SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v6);
  if (swift_dynamicCast())
  {
    return [a2 setIsAppleIntelligenceToggled_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = xmmword_227FB41E0;
  *(v4 + 16) = xmmword_227FB41D0;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000227FB5F20;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #8 in SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setIsAppleIntelligenceEligible_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD00000000000001CLL;
  *(v4 + 8) = 0x8000000227FB4F30;
  *(v4 + 16) = xmmword_227FB41D0;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000227FB5F20;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #9 in SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setTimeSinceLastAppleIntelligenceToggleInSeconds_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD000000000000015;
  *(v4 + 8) = 0x8000000227FB4FC0;
  *(v4 + 16) = xmmword_227FB41A0;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000227FB5F20;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #10 in SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setTimeSinceLastWaitlistChangeInSeconds_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD00000000000001BLL;
  *(v4 + 8) = 0x8000000227FB4FA0;
  *(v4 + 16) = xmmword_227FB41A0;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000227FB5F20;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #11 in SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setTimeSinceLastEligibleChangeInSeconds_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD00000000000001BLL;
  *(v4 + 8) = 0x8000000227FB4F50;
  *(v4 + 16) = xmmword_227FB41A0;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000227FB5F20;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #12 in SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setCurrentSubscriptionHash_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD000000000000015;
  *(v4 + 8) = 0x8000000227FB5020;
  *(v4 + 16) = xmmword_227FB41F0;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000227FB5F20;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #13 in SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setPreviousSubscriptionHash_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD000000000000016;
  *(v4 + 8) = 0x8000000227FB5040;
  *(v4 + 16) = xmmword_227FB41F0;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000227FB5F20;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #14 in SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setTimeSinceLastBootInSeconds_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD000000000000011;
  *(v4 + 8) = 0x8000000227FB5000;
  *(v4 + 16) = xmmword_227FB41A0;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000227FB5F20;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #15 in SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setTimeSinceLastSubscriptionHashChangeInSeconds_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD000000000000025;
  *(v4 + 8) = 0x8000000227FB5060;
  *(v4 + 16) = xmmword_227FB41A0;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000227FB5F20;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #16 in SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v6);
  if (swift_dynamicCast())
  {
    result = SELFEventProcessor.mapModeValue(_:)(v6[11]);
    if (!v2)
    {
      return [a2 setCurrentMode_];
    }
  }

  else
  {
    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    swift_allocError();
    *v5 = xmmword_227FB4200;
    *(v5 + 16) = xmmword_227FB41F0;
    *(v5 + 32) = 0xD000000000000017;
    *(v5 + 40) = 0x8000000227FB5F20;
    *(v5 + 48) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t SELFEventProcessor.mapModeValue(_:)(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 67109120;
      *(v4 + 4) = a1;
      _os_log_impl(&dword_227F43000, v2, v3, "Invalid mode value: %u", v4, 8u);
      MEMORY[0x22AAAF0A0](v4, -1, -1);
    }

    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    swift_allocError();
    *v5 = a1;
    *(v5 + 8) = 0xD000000000000035;
    *(v5 + 16) = 0x8000000227FB6480;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    *(v5 + 48) = 8;
    swift_willThrow();
  }

  return a1;
}

unint64_t printDebugDescription(_:)(uint64_t a1)
{
  outlined init with copy of Any(a1, v55);
  v1 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus, 0x277D5A5F0);
  if (OUTLINED_FUNCTION_59_2(v1, v2, v3, v1, v4, v5, v6, v7, v44))
  {
    v8 = v54;
    OUTLINED_FUNCTION_13_2();
    v52 = 0xD000000000000039;
    v53 = v9;
    OUTLINED_FUNCTION_16_6();
    _StringGuts.grow(_:)(16);

    strcpy(v51, "  newStatus: ");
    v46 = [v54 newStatus];
    OUTLINED_FUNCTION_28_4();
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_40_1();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_16_6();
    _StringGuts.grow(_:)(17);

    strcpy(v51, "  prevStatus: ");
    HIBYTE(v51[1]) = -18;
    v47 = [v54 prevStatus];
    OUTLINED_FUNCTION_28_4();
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AAAE070](v10);

    OUTLINED_FUNCTION_2_13();
    MEMORY[0x22AAAE070](v51[0], v51[1]);

    OUTLINED_FUNCTION_16_6();
    _StringGuts.grow(_:)(30);

    OUTLINED_FUNCTION_13_2();
    LODWORD(v48) = [v54 currentSubscriptionHash];
    OUTLINED_FUNCTION_28_4();
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_40_1();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_16_6();
    _StringGuts.grow(_:)(41);
    OUTLINED_FUNCTION_24_6();
    OUTLINED_FUNCTION_23_4();
    MEMORY[0x22AAAE070](v12);
    v13 = [v54 timeSinceLastStatusChangeInSeconds];
    OUTLINED_FUNCTION_52_1(v14, v13);
    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_16_6();
    _StringGuts.grow(_:)(52);
    OUTLINED_FUNCTION_24_6();
    OUTLINED_FUNCTION_23_4();
    MEMORY[0x22AAAE070]();
    [v54 timeSinceLastAppleIntelligenceToggleInSeconds];
    Double.description.getter();
    OUTLINED_FUNCTION_41_0();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_16_6();
    _StringGuts.grow(_:)(47);
    OUTLINED_FUNCTION_24_6();
    OUTLINED_FUNCTION_23_4();
    MEMORY[0x22AAAE070]();
    v15 = [v54 timeSinceLastAvailabilityChangeInSeconds];
    OUTLINED_FUNCTION_52_1(v16, v15);
    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_16_6();
    _StringGuts.grow(_:)(33);
    OUTLINED_FUNCTION_24_6();
    OUTLINED_FUNCTION_23_4();
    MEMORY[0x22AAAE070](0xD00000000000001ELL);
    v17 = [v54 timeSinceLastBootInSeconds];
    OUTLINED_FUNCTION_52_1(v18, v17);
    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_29_2();
    outlined bridged method (pb) of @objc SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus.useCaseID.getter(v54, &selRef_useCaseID);
    OUTLINED_FUNCTION_63_3();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_13_2();
    [v54 isAppleIntelligenceAllowedThroughWaitlist];
    OUTLINED_FUNCTION_63_3();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_13_2();
    [v54 isAppleIntelligenceToggled];
    OUTLINED_FUNCTION_63_3();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_13_2();
    [v54 isAppleIntelligenceEligible];
    OUTLINED_FUNCTION_63_3();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_13_2();
    [v54 timeSinceLastWaitlistChangeInSeconds];
    Double.description.getter();
    OUTLINED_FUNCTION_40_1();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_13_2();
    [v54 timeSinceLastEligibleChangeInSeconds];
    Double.description.getter();
    OUTLINED_FUNCTION_40_1();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_13_2();
    v51[0] = 0xD00000000000001CLL;
    v51[1] = v19;
    [v54 previousSubscriptionHash];
    OUTLINED_FUNCTION_28_4();
  }

  else
  {
    v20 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus, 0x277D5A5F8);
    if (!OUTLINED_FUNCTION_59_2(v20, v21, v22, v20, v23, v24, v25, v26, v45))
    {
      v42 = 0xD000000000000029;
      goto LABEL_7;
    }

    v8 = v54;
    OUTLINED_FUNCTION_13_2();
    v52 = 0xD00000000000003BLL;
    v53 = v27;
    strcpy(v51, "  status: ");
    v49 = [v54 status];
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_40_1();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_12_9();

    strcpy(v51, "  errorCount: ");
    HIBYTE(v51[1]) = -18;
    LODWORD(v50) = [v54 errorCount];
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_41_0();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_16_6();
    _StringGuts.grow(_:)(33);
    OUTLINED_FUNCTION_24_6();
    OUTLINED_FUNCTION_23_4();
    MEMORY[0x22AAAE070](0xD00000000000001ELL);
    [v54 timeSinceLastBootInSeconds];
    Double.write<A>(to:)();
    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_29_2();
    outlined bridged method (pb) of @objc SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus.useCaseID.getter(v54, &selRef_useCaseID);
    OUTLINED_FUNCTION_49_2();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    strcpy(v51, "  locale: ");
    [v54 locale];
    SISchemaLocale.description.getter();
    OUTLINED_FUNCTION_41_0();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_13_2();
    [v54 downloadState];
    SADSchemaSADMobileAssetDownloadState.description.getter();
    OUTLINED_FUNCTION_41_0();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_13_2();
    v28 = outlined bridged method (pb) of @objc SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus.useCaseID.getter(v54, &selRef_lastMobileAssetDownloadAttemptErrorDomain);
    OUTLINED_FUNCTION_39_2(v28, v29);
    OUTLINED_FUNCTION_49_2();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_13_2();
    v30 = outlined bridged method (pb) of @objc SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus.useCaseID.getter(v54, &selRef_failingSubsystemOperations);
    OUTLINED_FUNCTION_39_2(v30, v31);
    OUTLINED_FUNCTION_49_2();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_13_2();
    v32 = outlined bridged method (pb) of @objc SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus.useCaseID.getter(v54, &selRef_sampledSubsystemOperation);
    OUTLINED_FUNCTION_39_2(v32, v33);
    OUTLINED_FUNCTION_49_2();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_13_2();
    v34 = outlined bridged method (pb) of @objc SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus.useCaseID.getter(v54, &selRef_sampledErrorDomain);
    OUTLINED_FUNCTION_39_2(v34, v35);
    OUTLINED_FUNCTION_49_2();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_13_2();
    v36 = outlined bridged method (pb) of @objc SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus.useCaseID.getter(v54, &selRef_sampledErrorUnderlyingDomain);
    OUTLINED_FUNCTION_39_2(v36, v37);
    OUTLINED_FUNCTION_49_2();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_13_2();
    v38 = outlined bridged method (pb) of @objc SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus.useCaseID.getter(v54, &selRef_lastMobileAssetDownloadAttemptErrorAsset);
    OUTLINED_FUNCTION_39_2(v38, v39);
    OUTLINED_FUNCTION_49_2();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_13_2();
    [v54 currentSubscriptionHash];
    OUTLINED_FUNCTION_11_7();
    OUTLINED_FUNCTION_41_0();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_13_2();
    [v54 sampledErrorCode];
    OUTLINED_FUNCTION_11_7();
    OUTLINED_FUNCTION_41_0();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_13_2();
    [v54 sampledErrorHash];
    OUTLINED_FUNCTION_11_7();
    OUTLINED_FUNCTION_41_0();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_13_2();
    [v54 sampledErrorUnderlyingCode];
    OUTLINED_FUNCTION_11_7();
    OUTLINED_FUNCTION_41_0();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_13_2();
    [v54 countRequiredAssets];
    OUTLINED_FUNCTION_11_7();
    OUTLINED_FUNCTION_41_0();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_13_2();
    [v54 lastMobileAssetDownloadAttemptErrorCode];
    OUTLINED_FUNCTION_11_7();
    OUTLINED_FUNCTION_40_1();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_16_6();
    _StringGuts.grow(_:)(52);
    OUTLINED_FUNCTION_24_6();
    OUTLINED_FUNCTION_23_4();
    MEMORY[0x22AAAE070]();
    [v54 timeSinceLastAppleIntelligenceToggleInSeconds];
    Double.description.getter();
    OUTLINED_FUNCTION_40_1();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_16_6();
    _StringGuts.grow(_:)(55);
    OUTLINED_FUNCTION_24_6();
    OUTLINED_FUNCTION_23_4();
    MEMORY[0x22AAAE070]();
    [v54 timeSinceLastMobileAssetDownloadAttemptInSeconds];
    Double.description.getter();
    OUTLINED_FUNCTION_40_1();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_16_6();
    _StringGuts.grow(_:)(51);
    OUTLINED_FUNCTION_24_6();
    OUTLINED_FUNCTION_23_4();
    MEMORY[0x22AAAE070]();
    [v54 timeSinceLastSubscriptionHashChangeInSeconds];
    Double.description.getter();
    OUTLINED_FUNCTION_40_1();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_16_6();
    _StringGuts.grow(_:)(53);
    OUTLINED_FUNCTION_24_6();
    OUTLINED_FUNCTION_23_4();
    MEMORY[0x22AAAE070]();
    [v54 timeSinceLastMobileAssetDownloadErrorInSeconds];
    Double.description.getter();
    OUTLINED_FUNCTION_40_1();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_13_2();
    v51[0] = 0xD000000000000013;
    v51[1] = v40;
    [v54 countPSUSAssets];
  }

  v41 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x22AAAE070](v41);

  MEMORY[0x22AAAE070](v51[0], v51[1]);

  v42 = v52;
LABEL_7:
  __swift_destroy_boxed_opaque_existential_0Tm(v55);
  return v42;
}

uint64_t SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1)
{
  v3 = type metadata accessor for SELFEventProcessor(0);
  v4 = OUTLINED_FUNCTION_44(v3);
  v481 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v486 = &v436 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v494 = v7;
  MEMORY[0x28223BE20](v6);
  v480 = &v436 - v8;
  v9 = *(a1 + 8);
  v441 = *a1;
  v448 = v9;
  v10 = *(a1 + 24);
  v447 = *(a1 + 16);
  v446 = v10;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v442 = *(a1 + 44);
  v444 = *(a1 + 48);
  v443 = *(a1 + 52);
  v463 = *(a1 + 56);
  v13 = *(a1 + 72);
  v452 = *(a1 + 64);
  v488 = v13;
  v462 = *(a1 + 80);
  v461 = *(a1 + 84);
  v14 = *(a1 + 96);
  v449 = *(a1 + 88);
  v491 = v14;
  v465 = *(a1 + 128);
  v464 = *(a1 + 132);
  v15 = *(a1 + 144);
  v487 = *(a1 + 136);
  v490 = v15;
  v16 = *(a1 + 152);
  v493 = *(a1 + 160);
  v454 = *(a1 + 168);
  v453 = *(a1 + 172);
  v17 = *(a1 + 184);
  v450 = *(a1 + 176);
  v492 = v17;
  v456 = *(a1 + 192);
  v455 = *(a1 + 196);
  v458 = *(a1 + 200);
  v457 = *(a1 + 204);
  v18 = *(a1 + 216);
  v451 = *(a1 + 208);
  v489 = v18;
  v469 = *(a1 + 224);
  v468 = *(a1 + 232);
  v471 = *(a1 + 240);
  v470 = *(a1 + 248);
  v473 = *(a1 + 256);
  v472 = *(a1 + 264);
  v475 = *(a1 + 272);
  v474 = *(a1 + 280);
  v19 = *(a1 + 284);
  v445 = *(a1 + 288);
  v460 = *(a1 + 292);
  v459 = *(a1 + 296);
  LODWORD(v495) = *(a1 + 300);
  LODWORD(v498) = *(a1 + 304);
  v467 = *(a1 + 320);
  v466 = *(a1 + 328);
  v21 = *(a1 + 344);
  v20 = *(a1 + 352);
  v477 = *(a1 + 360);
  v476 = *(a1 + 364);
  v479 = *(a1 + 368);
  v478 = *(a1 + 372);
  v485 = *(a1 + 376);
  v484 = *(a1 + 380);
  v483 = *(a1 + 384);
  v482 = *(a1 + 392);
  v22 = [objc_allocWithZone(MEMORY[0x277D5A5F8]) init];
  v502 = v1;
  v23 = Logger.logObject.getter();
  if (!v22)
  {
    v67 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_78_0(v67))
    {
      v68 = OUTLINED_FUNCTION_150();
      OUTLINED_FUNCTION_32_2(v68);
      OUTLINED_FUNCTION_0_11();
      _os_log_impl(v69, v70, v71, v72, v73, 2u);
      OUTLINED_FUNCTION_40();
    }

    v74 = lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    v75 = OUTLINED_FUNCTION_51_1(&type metadata for SELFProcessingError, v74);
    OUTLINED_FUNCTION_45_2(v75, v76);
    return v22;
  }

  v440 = v16;
  v438 = v19;
  v24 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_78_0(v24))
  {
    v25 = OUTLINED_FUNCTION_150();
    OUTLINED_FUNCTION_32_2(v25);
    OUTLINED_FUNCTION_0_11();
    _os_log_impl(v26, v27, v28, v29, v30, 2u);
    OUTLINED_FUNCTION_40();
  }

  v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypSg5value_SS9fieldNameSS12expectedTypeyypKc6settertGMd, &_ss23_ContiguousArrayStorageCyypSg5value_SS9fieldNameSS12expectedTypeyypKc6settertGMR);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_227FB4210;
  if (v12)
  {
    v32 = 0;
  }

  else
  {
    v32 = v11;
  }

  if (v12)
  {
    v33 = 0;
  }

  else
  {
    v33 = MEMORY[0x277D84D38];
  }

  OUTLINED_FUNCTION_3_11();
  v34 = swift_allocObject();
  *(v34 + 16) = v22;
  *(v31 + 32) = v32;
  *(v31 + 40) = 0;
  *(v31 + 48) = 0;
  *(v31 + 56) = v33;
  *(v31 + 64) = 0x737574617473;
  *(v31 + 72) = 0xE600000000000000;
  *(v31 + 80) = 0x3436746E4955;
  *(v31 + 88) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v35 = swift_allocObject();
  *(v35 + 16) = partial apply for closure #1 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v35 + 24) = v34;
  *(v31 + 96) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v31 + 104) = v35;
  if (v20)
  {
    v36 = MEMORY[0x277D837D0];
  }

  else
  {
    v21 = 0;
    v36 = 0;
  }

  OUTLINED_FUNCTION_3_11();
  v37 = swift_allocObject();
  *(v37 + 16) = v22;
  *(v31 + 112) = v21;
  *(v31 + 120) = v20;
  *(v31 + 128) = 0;
  *(v31 + 136) = v36;
  OUTLINED_FUNCTION_55_2();
  *(v31 + 144) = v38;
  *(v31 + 152) = 0xE900000000000044;
  *(v31 + 160) = 0x676E69727453;
  *(v31 + 168) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v39 = swift_allocObject();
  *(v39 + 16) = partial apply for closure #2 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v39 + 24) = v37;
  *(v31 + 176) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v31 + 184) = v39;
  v504 = v31;
  v496 = v22;
  *&v497 = v22;
  v40 = 32;

  *&v41 = 136315394;
  v499 = v41;
  v42 = v506;
  v22 = v502;
  while (1)
  {
    i = &loc_227FB1000;
    if (v40 == 192)
    {
      break;
    }

    _sypSg5value_SS9fieldNameSS12expectedTypexq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyypytIsegnrzo_6settertWOc(v504 + v40, &v509);
    v44 = v512;
    if (!v512)
    {
      break;
    }

    v45 = v511;
    v46 = v513;
    v47 = v514;
    OUTLINED_FUNCTION_109_0();
    v48 = swift_allocObject();
    v507 = OUTLINED_FUNCTION_8_12(v48);
    v508 = v49;
    if (!*(&v49 + 1))
    {
      v92 = v45;

      outlined destroy of NSObject?(&v507, &_sypSgMd, &_sypSgMR);

      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = OUTLINED_FUNCTION_76_0();
        v96 = OUTLINED_FUNCTION_84();
        *&v509 = v96;
        *v95 = 136315138;
        v97 = v92;
        *(v95 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v44, &v509);
        OUTLINED_FUNCTION_0_11();
        _os_log_impl(v98, v99, v100, v101, v102, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v96);
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_40();

        v103 = v497;
        v104 = v44;
      }

      else
      {

        v103 = v497;
        v104 = v44;
        v97 = v92;
      }

      v131 = lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
      OUTLINED_FUNCTION_51_1(&type metadata for SELFProcessingError, v131);
      *v132 = v97;
      v132[1] = v104;
      OUTLINED_FUNCTION_17_6();
      *(v133 + 16) = v134;
      *(v133 + 24) = 0x8000000227FB6460;
      OUTLINED_FUNCTION_50_2(v135, v133);

      goto LABEL_39;
    }

    v505 = v40;
    v500 = v46;
    v50 = OUTLINED_FUNCTION_64_3(&v507);
    outlined init with copy of Any(v50, &v507);

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();

    v53 = os_log_type_enabled(v51, v52);
    v506 = v44;
    v501 = v45;
    if (v53)
    {
      OUTLINED_FUNCTION_80();
      v503 = v47;
      v515 = OUTLINED_FUNCTION_21_6();
      OUTLINED_FUNCTION_27_4(&v517);
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v44, v54);
      OUTLINED_FUNCTION_26_3(v55);
      __swift_project_boxed_opaque_existential_1(&v507, *(&v508 + 1));
      OUTLINED_FUNCTION_22_7();
      MEMORY[0x28223BE20](v56);
      OUTLINED_FUNCTION_1_0();
      v57 = v42;
      v59 = OUTLINED_FUNCTION_58_2(v58);
      v60(v59);
      v61 = String.init<A>(describing:)();
      v63 = v62;
      __swift_destroy_boxed_opaque_existential_0Tm(&v507);
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, &v515);
      v22 = v502;

      *(v47 + 14) = v64;
      v42 = v57;
      OUTLINED_FUNCTION_53_2(&dword_227F43000, v51, v52, "Field '%s': %s is assigned", v436, v437);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11();
      v47 = v503;
      OUTLINED_FUNCTION_11();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(&v507);
    }

    v65 = v505;
    v66 = v42;
    thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@out (), @error @owned Error)partial apply();
    if (v42)
    {

      OUTLINED_FUNCTION_109_0();
      v105 = swift_allocObject();
      v106 = v506;
      *(v105 + 16) = v501;
      *(v105 + 24) = v106;
      OUTLINED_FUNCTION_109_0();
      v107 = swift_allocObject();
      *(v107 + 16) = v500;
      *(v107 + 24) = v47;
      OUTLINED_FUNCTION_3_11();
      *&v499 = swift_allocObject();
      *(v499 + 16) = v42;

      v108 = v42;
      v505 = Logger.logObject.getter();
      LODWORD(v504) = static os_log_type_t.fault.getter();
      OUTLINED_FUNCTION_13_7();
      v502 = swift_allocObject();
      *(v502 + 16) = 32;
      OUTLINED_FUNCTION_13_7();
      v498 = swift_allocObject();
      *(v498 + 16) = 8;
      OUTLINED_FUNCTION_109_0();
      v109 = swift_allocObject();
      v503 = v47;
      v110 = v109;
      *(v109 + 16) = partial apply for implicit closure #15 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
      *(v109 + 24) = v105;
      OUTLINED_FUNCTION_109_0();
      v111 = swift_allocObject();
      *(v111 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
      *(v111 + 24) = v110;
      OUTLINED_FUNCTION_13_7();
      v495 = swift_allocObject();
      v495[16] = 32;
      OUTLINED_FUNCTION_13_7();
      v112 = swift_allocObject();
      *(v112 + 16) = 8;
      OUTLINED_FUNCTION_109_0();
      v113 = swift_allocObject();
      *(v113 + 16) = partial apply for implicit closure #15 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
      *(v113 + 24) = v107;
      OUTLINED_FUNCTION_109_0();
      v114 = swift_allocObject();
      v114[2] = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
      v114[3] = v113;
      OUTLINED_FUNCTION_13_7();
      v115 = swift_allocObject();
      *(v115 + 16) = 64;
      OUTLINED_FUNCTION_13_7();
      v116 = swift_allocObject();
      *(v116 + 16) = 8;
      OUTLINED_FUNCTION_109_0();
      v117 = swift_allocObject();
      v118 = v499;
      *(v117 + 16) = partial apply for implicit closure #6 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
      *(v117 + 24) = v118;
      OUTLINED_FUNCTION_109_0();
      v119 = swift_allocObject();
      *(v119 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
      *(v119 + 24) = v117;
      OUTLINED_FUNCTION_109_0();
      v120 = swift_allocObject();
      *(v120 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
      *(v120 + 24) = v119;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      v121 = swift_allocObject();
      *(v121 + 16) = xmmword_227FB4220;
      v122 = v502;
      *(v121 + 32) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v121 + 40) = v122;
      v123 = v498;
      *(v121 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v121 + 56) = v123;
      *(v121 + 64) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v121 + 72) = v111;
      v124 = v495;
      *(v121 + 80) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v121 + 88) = v124;
      *(v121 + 96) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v121 + 104) = v112;
      *(v121 + 112) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v121 + 120) = v114;
      *(v121 + 128) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v121 + 136) = v115;
      *(v121 + 144) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v121 + 152) = v116;
      v125 = v505;
      *(v121 + 160) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v121 + 168) = v120;
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit(&_syycMd, &_syycMR);
      v22 = v504;
      if (os_log_type_enabled(v125, v504))
      {
        v126 = OUTLINED_FUNCTION_84();
        OUTLINED_FUNCTION_83();
        v507.n128_u64[0] = OUTLINED_FUNCTION_21_6();
        *v126 = 136315650;
        v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v501, v506, &v507);

        *(v126 + 4) = v127;
        *(v126 + 12) = 2080;
        v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v500, v503, &v507);

        *(v126 + 14) = v128;
        *(v126 + 22) = 2112;
        v129 = v66;
        v130 = _swift_stdlib_bridgeErrorToNSError();
        *(v126 + 24) = v130;
        *v114 = v130;
        _os_log_impl(&dword_227F43000, v125, v22, "Type conversion failed for field '%s' to %s: %@", v126, 0x20u);
        outlined destroy of NSObject?(v114, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_40();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_11();
      }

      else
      {
      }

      v136 = v497;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_0Tm(&v509);
      goto LABEL_39;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v509);

    v40 = v65 + 80;
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit(&_sypSg5value_SS9fieldNameSS12expectedTypeyyc6settertMd, &_sypSg5value_SS9fieldNameSS12expectedTypeyyc6settertMR);
  if (v498)
  {
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_78_0(v78))
    {
      v79 = OUTLINED_FUNCTION_150();
      OUTLINED_FUNCTION_32_2(v79);
      OUTLINED_FUNCTION_0_11();
      _os_log_impl(v80, v81, v82, v83, v84, 2u);
      OUTLINED_FUNCTION_40();
    }

    v85 = lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    OUTLINED_FUNCTION_51_1(&type metadata for SELFProcessingError, v85);
    *v86 = xmmword_227FB4250;
    OUTLINED_FUNCTION_17_6();
    *(v87 + 16) = v88;
    *(v87 + 24) = 0x8000000227FB6460;
    OUTLINED_FUNCTION_50_2(v89, v87);
    goto LABEL_30;
  }

  v90 = v495;
  v91 = SELFEventProcessor.mapDownloadState(_:)(v495);
  if (v42)
  {
LABEL_30:

LABEL_39:
    OUTLINED_FUNCTION_48_1();
    return v22;
  }

  v138 = v91;
  v506 = 0;
  v139 = swift_allocObject();
  *(v139 + 16) = v90;
  v140 = swift_allocObject();
  *(v140 + 16) = v138;
  v503 = Logger.logObject.getter();
  LODWORD(v504) = static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_13_7();
  v141 = swift_allocObject();
  *(v141 + 16) = 32;
  OUTLINED_FUNCTION_13_7();
  v142 = swift_allocObject();
  LODWORD(v505) = v138;
  *(v142 + 16) = 8;
  OUTLINED_FUNCTION_109_0();
  v143 = swift_allocObject();
  *(v143 + 16) = partial apply for implicit closure #7 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v143 + 24) = v139;
  OUTLINED_FUNCTION_109_0();
  v144 = swift_allocObject();
  *(v144 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v144 + 24) = v143;
  OUTLINED_FUNCTION_13_7();
  v145 = swift_allocObject();
  *(v145 + 16) = 32;
  OUTLINED_FUNCTION_13_7();
  v146 = swift_allocObject();
  *(v146 + 16) = 8;
  v147 = v503;
  OUTLINED_FUNCTION_109_0();
  v148 = swift_allocObject();
  *(v148 + 16) = partial apply for implicit closure #8 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v148 + 24) = v140;
  OUTLINED_FUNCTION_109_0();
  v149 = swift_allocObject();
  *(v149 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  *(v149 + 24) = v148;
  v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
  v150 = swift_allocObject();
  *(v150 + 16) = xmmword_227FB4230;
  *(v150 + 32) = partial apply for closure #1 in OSLogArguments.append(_:);
  *(v150 + 40) = v141;
  *(v150 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(v150 + 56) = v142;
  *(v150 + 64) = partial apply for closure #1 in OSLogArguments.append(_:);
  *(v150 + 72) = v144;
  v151 = v504;
  *(v150 + 80) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(v150 + 88) = v145;
  *(v150 + 96) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(v150 + 104) = v146;
  *(v150 + 112) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(v150 + 120) = v149;
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit(&_syycMd, &_syycMR);
  if (os_log_type_enabled(v147, v151))
  {
    OUTLINED_FUNCTION_80();
    *&v509 = OUTLINED_FUNCTION_21_6();
    OUTLINED_FUNCTION_33_3(&v517);
    v507.n128_u32[0] = v495;
    v152 = dispatch thunk of CustomStringConvertible.description.getter();
    v154 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v153, &v509);

    *(v142 + 4) = v154;
    *(v142 + 12) = 2080;
    v155 = v505;
    v156 = SADSchemaSADMobileAssetDownloadState.description.getter();
    v158 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v156, v157, &v509);

    *(v142 + 14) = v158;
    OUTLINED_FUNCTION_53_2(&dword_227F43000, v147, v151, "Field 'downloadState': %s is %s", v436, v437);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_40();

    v159 = OUTLINED_FUNCTION_34_2();
    v160 = v155;
  }

  else
  {

    v159 = OUTLINED_FUNCTION_34_2();
    v160 = v505;
  }

  [v159 setDownloadState_];
  if (v147)
  {
    v146 = v147;
  }

  else
  {
    if (!v146)
    {
      v179 = Logger.logObject.getter();
      v180 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_78_0(v180))
      {
        v181 = OUTLINED_FUNCTION_150();
        OUTLINED_FUNCTION_32_2(v181);
        OUTLINED_FUNCTION_0_11();
        _os_log_impl(v182, v183, v184, v185, v186, 2u);
        OUTLINED_FUNCTION_40();
      }

      v173 = v497;
      goto LABEL_185;
    }

    v151 = v441;
  }

  OUTLINED_FUNCTION_109_0();
  v161 = swift_allocObject();
  *(v161 + 16) = v151;
  *(v161 + 24) = v146;

  v162 = Logger.logObject.getter();
  v163 = static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_13_7();
  v164 = swift_allocObject();
  *(v164 + 16) = 32;
  OUTLINED_FUNCTION_13_7();
  v165 = v151;
  v151 = swift_allocObject();
  *(v151 + 16) = 8;
  OUTLINED_FUNCTION_109_0();
  v166 = swift_allocObject();
  *(v166 + 16) = partial apply for implicit closure #15 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v166 + 24) = v161;
  OUTLINED_FUNCTION_109_0();
  v167 = swift_allocObject();
  *(v167 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  *(v167 + 24) = v166;
  v168 = OUTLINED_FUNCTION_36_1();
  *(v168 + 16) = xmmword_227FB1BA0;
  *(v168 + 32) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(v168 + 40) = v164;
  *(v168 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(v168 + 56) = v151;
  *(v168 + 64) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(v168 + 72) = v167;
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit(&_syycMd, &_syycMR);
  if (os_log_type_enabled(v162, v163))
  {
    v169 = OUTLINED_FUNCTION_76_0();
    v170 = OUTLINED_FUNCTION_84();
    *&v509 = v170;
    *v169 = 136315138;
    *(v169 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v165, v146, &v509);
    OUTLINED_FUNCTION_60_2(&dword_227F43000, v171, v172, "Field 'locale': %s is assigned");
    __swift_destroy_boxed_opaque_existential_0Tm(v170);
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_11();
  }

  v173 = v497;
  v174 = v165 == 0x576F525F6E65 && v146 == 0xE600000000000000;
  v175 = 0x2785F0000uLL;
  if (v174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    [v173 setLocale_];
  }

  else
  {
    v176 = MEMORY[0x22AAADFF0](v165, v146);

    v177 = v176;
    if ([v177 isEqualToString:@"LOCALE_UNKNOWN_LOCALE"])
    {
      v178 = 0;
    }

    else if ([v177 isEqualToString:@"LOCALE_AR_AE"])
    {
      v178 = 1;
    }

    else if ([v177 isEqualToString:@"LOCALE_AR_SA"])
    {
      v178 = 2;
    }

    else if ([v177 isEqualToString:@"LOCALE_CA_ES"])
    {
      v178 = 3;
    }

    else if ([v177 isEqualToString:@"LOCALE_CS_CZ"])
    {
      v178 = 4;
    }

    else if ([v177 isEqualToString:@"LOCALE_DA_DK"])
    {
      v178 = 5;
    }

    else if ([v177 isEqualToString:@"LOCALE_DE_AT"])
    {
      v178 = 6;
    }

    else if ([v177 isEqualToString:@"LOCALE_DE_CH"])
    {
      v178 = 7;
    }

    else
    {
      v187 = v177;
      if ([v177 isEqualToString:@"LOCALE_DE_DE"])
      {
        v178 = 8;
      }

      else if ([v177 isEqualToString:@"LOCALE_EL_GR"])
      {
        v178 = 9;
      }

      else if ([v177 isEqualToString:@"LOCALE_EN_AE"])
      {
        v178 = 10;
      }

      else if ([v177 isEqualToString:@"LOCALE_EN_AU"])
      {
        v178 = 11;
      }

      else if ([v177 isEqualToString:@"LOCALE_EN_CA"])
      {
        v178 = 12;
      }

      else if ([v177 isEqualToString:@"LOCALE_EN_GB"])
      {
        v178 = 13;
      }

      else if ([v177 isEqualToString:@"LOCALE_EN_ID"])
      {
        v178 = 14;
      }

      else if ([v177 isEqualToString:@"LOCALE_EN_IE"])
      {
        v178 = 15;
      }

      else if ([v177 isEqualToString:@"LOCALE_EN_IN"])
      {
        v178 = 16;
      }

      else if ([v177 isEqualToString:@"LOCALE_EN_MY"])
      {
        v178 = 17;
      }

      else if ([v177 isEqualToString:@"LOCALE_EN_NZ"])
      {
        v178 = 18;
      }

      else if ([v177 isEqualToString:@"LOCALE_EN_PH"])
      {
        v178 = 19;
      }

      else if ([v177 isEqualToString:@"LOCALE_EN_SG"])
      {
        v178 = 20;
      }

      else if ([v177 isEqualToString:@"LOCALE_EN_SA"])
      {
        v178 = 21;
      }

      else if ([v177 isEqualToString:@"LOCALE_EN_US"])
      {
        v178 = 22;
      }

      else if ([v177 isEqualToString:@"LOCALE_EN_ZA"])
      {
        v178 = 23;
      }

      else if ([v177 isEqualToString:@"LOCALE_ES_CL"])
      {
        v178 = 24;
      }

      else if ([v177 isEqualToString:@"LOCALE_ES_CO"])
      {
        v178 = 25;
      }

      else if ([v177 isEqualToString:@"LOCALE_ES_ES"])
      {
        v178 = 26;
      }

      else if ([v177 isEqualToString:@"LOCALE_ES_MX"])
      {
        v178 = 27;
      }

      else if ([v177 isEqualToString:@"LOCALE_ES_US"])
      {
        v178 = 28;
      }

      else if ([v177 isEqualToString:@"LOCALE_FI_FI"])
      {
        v178 = 29;
      }

      else if ([v177 isEqualToString:@"LOCALE_FR_BE"])
      {
        v178 = 30;
      }

      else if ([v177 isEqualToString:@"LOCALE_FR_CA"])
      {
        v178 = 31;
      }

      else if ([v177 isEqualToString:@"LOCALE_FR_CH"])
      {
        v178 = 32;
      }

      else if ([v177 isEqualToString:@"LOCALE_FR_FR"])
      {
        v178 = 33;
      }

      else if ([v177 isEqualToString:@"LOCALE_HE_IL"])
      {
        v178 = 34;
      }

      else if ([v177 isEqualToString:@"LOCALE_HI_IN"])
      {
        v178 = 35;
      }

      else if ([v177 isEqualToString:@"LOCALE_HR_HR"])
      {
        v178 = 36;
      }

      else if ([v177 isEqualToString:@"LOCALE_HU_HU"])
      {
        v178 = 37;
      }

      else if ([v177 isEqualToString:@"LOCALE_ID_ID"])
      {
        v178 = 38;
      }

      else if ([v177 isEqualToString:@"LOCALE_IT_CH"])
      {
        v178 = 39;
      }

      else if ([v177 isEqualToString:@"LOCALE_IT_IT"])
      {
        v178 = 40;
      }

      else if ([v177 isEqualToString:@"LOCALE_JA_JP"])
      {
        v178 = 41;
      }

      else if ([v177 isEqualToString:@"LOCALE_KO_KR"])
      {
        v178 = 42;
      }

      else if ([v177 isEqualToString:@"LOCALE_MS_MY"])
      {
        v178 = 43;
      }

      else if ([v177 isEqualToString:@"LOCALE_NB_NO"])
      {
        v178 = 44;
      }

      else if ([v177 isEqualToString:@"LOCALE_NL_BE"])
      {
        v178 = 45;
      }

      else if ([v177 isEqualToString:@"LOCALE_NL_NL"])
      {
        v178 = 46;
      }

      else if ([v177 isEqualToString:@"LOCALE_PL_PL"])
      {
        v178 = 47;
      }

      else if ([v177 isEqualToString:@"LOCALE_PT_BR"])
      {
        v178 = 48;
      }

      else if ([v177 isEqualToString:@"LOCALE_PT_PT"])
      {
        v178 = 49;
      }

      else if ([v177 isEqualToString:@"LOCALE_RO_RO"])
      {
        v178 = 50;
      }

      else if ([v177 isEqualToString:@"LOCALE_RU_RU"])
      {
        v178 = 51;
      }

      else if ([v177 isEqualToString:@"LOCALE_SK_SK"])
      {
        v178 = 52;
      }

      else if ([v177 isEqualToString:@"LOCALE_SV_SE"])
      {
        v178 = 53;
      }

      else if ([v177 isEqualToString:@"LOCALE_TH_TH"])
      {
        v178 = 54;
      }

      else if ([v177 isEqualToString:@"LOCALE_TR_TR"])
      {
        v178 = 55;
      }

      else if ([v177 isEqualToString:@"LOCALE_UK_UA"])
      {
        v178 = 56;
      }

      else if ([v177 isEqualToString:@"LOCALE_VI_VN"])
      {
        v178 = 57;
      }

      else if ([v177 isEqualToString:@"LOCALE_WUU_CN"])
      {
        v178 = 58;
      }

      else if ([v177 isEqualToString:@"LOCALE_YUE_CN"])
      {
        v178 = 59;
      }

      else if ([v177 isEqualToString:@"LOCALE_ZH_CN"])
      {
        v178 = 60;
      }

      else if ([v177 isEqualToString:@"LOCALE_ZH_HK"])
      {
        v178 = 61;
      }

      else
      {
LABEL_342:
        v177 = v187;
        if ([v187 isEqualToString:@"LOCALE_ZH_TW"])
        {
          v178 = 62;
        }

        else
        {
          v178 = 0;
        }
      }

      v173 = v497;
    }

    [v173 *(v175 + 3416)];
  }

LABEL_185:
  v188 = v487;
  v189 = swift_allocObject();
  *(v189 + 16) = xmmword_227FB4240;
  OUTLINED_FUNCTION_3_11();
  v190 = swift_allocObject();
  v191 = v190;
  v192 = v491;
  v193 = v449;
  if (!v491)
  {
    v193 = 0;
  }

  *(v189 + 32) = v193;
  v503 = (v189 + 32);
  *(v190 + 16) = v173;
  v194 = MEMORY[0x277D837D0];
  *(v189 + 40) = v192;
  *(v189 + 48) = 0;
  OUTLINED_FUNCTION_13_2();
  *(v189 + 56) = v195;
  *(v189 + 64) = 0xD000000000000020;
  *(v189 + 72) = v196;
  *(v189 + 80) = 0x676E69727453;
  *(v189 + 88) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v197 = swift_allocObject();
  *(v197 + 16) = partial apply for closure #3 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v197 + 24) = v191;
  *(v189 + 96) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v189 + 104) = v197;
  OUTLINED_FUNCTION_47_3();
  if (v174)
  {
    v188 = 0;
    v198 = 0;
  }

  else
  {
    v198 = v194;
  }

  v199 = v173;
  OUTLINED_FUNCTION_3_11();
  v200 = swift_allocObject();
  OUTLINED_FUNCTION_19_6(v200);
  *(v189 + 112) = v188;
  *(v189 + 120) = v151;
  *(v189 + 128) = 0;
  *(v189 + 136) = v198;
  OUTLINED_FUNCTION_17_6();
  v505 = v201 - 5;
  *(v189 + 144) = v201 - 5;
  *(v189 + 152) = 0x8000000227FB55B0;
  OUTLINED_FUNCTION_5_11();
  *(v189 + 160) = v202;
  *(v189 + 168) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v203 = swift_allocObject();
  *(v203 + 16) = partial apply for closure #4 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v203 + 24) = v191;
  *(v189 + 176) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v189 + 184) = v203;
  OUTLINED_FUNCTION_47_3();
  if (v204)
  {
    v205 = 0;
  }

  else
  {
    v205 = v440;
  }

  if (v204)
  {
    v206 = 0;
  }

  else
  {
    v206 = v194;
  }

  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_3_11();
  v207 = swift_allocObject();
  OUTLINED_FUNCTION_19_6(v207);
  *(v189 + 192) = v205;
  *(v189 + 200) = v151;
  *(v189 + 208) = 0;
  *(v189 + 216) = v206;
  OUTLINED_FUNCTION_17_6();
  *(v189 + 224) = v208 - 6;
  *(v189 + 232) = 0x8000000227FB55B0;
  OUTLINED_FUNCTION_5_11();
  *(v189 + 240) = v209;
  *(v189 + 248) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v210 = swift_allocObject();
  *(v210 + 16) = partial apply for closure #5 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v210 + 24) = v191;
  *(v189 + 256) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v189 + 264) = v210;
  OUTLINED_FUNCTION_47_3();
  if (v211)
  {
    v212 = 0;
  }

  else
  {
    v212 = v450;
  }

  if (v211)
  {
    v213 = 0;
  }

  else
  {
    v213 = v194;
  }

  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_3_11();
  v214 = swift_allocObject();
  OUTLINED_FUNCTION_19_6(v214);
  *(v189 + 272) = v212;
  *(v189 + 280) = v151;
  *(v189 + 288) = 0;
  *(v189 + 296) = v213;
  OUTLINED_FUNCTION_17_6();
  *(v189 + 304) = v215 - 13;
  *(v189 + 312) = 0x8000000227FB55B0;
  OUTLINED_FUNCTION_5_11();
  *(v189 + 320) = v216;
  *(v189 + 328) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v217 = swift_allocObject();
  *(v217 + 16) = partial apply for closure #6 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v217 + 24) = v191;
  *(v189 + 336) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v189 + 344) = v217;
  OUTLINED_FUNCTION_47_3();
  if (v218)
  {
    v219 = 0;
  }

  else
  {
    v219 = v451;
  }

  if (v218)
  {
    v220 = 0;
  }

  else
  {
    v220 = v194;
  }

  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_3_11();
  v221 = swift_allocObject();
  OUTLINED_FUNCTION_19_6(v221);
  *(v189 + 352) = v219;
  *(v189 + 360) = v151;
  *(v189 + 368) = 0;
  *(v189 + 376) = v220;
  OUTLINED_FUNCTION_17_6();
  v504 = v222 - 3;
  *(v189 + 384) = v222 - 3;
  *(v189 + 392) = 0x8000000227FB55B0;
  OUTLINED_FUNCTION_5_11();
  *(v189 + 400) = v223;
  *(v189 + 408) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v224 = swift_allocObject();
  *(v224 + 16) = partial apply for closure #7 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v224 + 24) = v191;
  *(v189 + 416) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v189 + 424) = v224;
  OUTLINED_FUNCTION_47_3();
  if (v225)
  {
    v226 = 0;
  }

  else
  {
    v226 = v452;
  }

  if (v225)
  {
    v227 = 0;
  }

  else
  {
    v227 = v194;
  }

  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_3_11();
  v228 = swift_allocObject();
  OUTLINED_FUNCTION_19_6(v228);
  *(v189 + 432) = v226;
  *(v189 + 440) = v151;
  *(v189 + 448) = 0;
  *(v189 + 456) = v227;
  *(v189 + 464) = 0xD00000000000001FLL;
  *(v189 + 472) = 0x8000000227FB55B0;
  OUTLINED_FUNCTION_5_11();
  *(v189 + 480) = v229;
  *(v189 + 488) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v230 = swift_allocObject();
  *(v230 + 16) = partial apply for closure #8 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v230 + 24) = v191;
  *(v189 + 496) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v189 + 504) = v230;
  v231 = MEMORY[0x277D84CC0];
  OUTLINED_FUNCTION_7_8();
  if (v232)
  {
    v233 = v231;
  }

  else
  {
    v233 = 0;
  }

  if (v232)
  {
    v234 = v454;
  }

  else
  {
    v234 = 0;
  }

  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_3_11();
  v235 = swift_allocObject();
  OUTLINED_FUNCTION_19_6(v235);
  *(v189 + 512) = v234;
  OUTLINED_FUNCTION_10_7((v189 + 520));
  *(v189 + 536) = v233;
  *(v189 + 544) = 0xD000000000000010;
  *(v189 + 552) = 0x8000000227FB55B0;
  OUTLINED_FUNCTION_20_5();
  *(v189 + 560) = v236;
  *(v189 + 568) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v237 = swift_allocObject();
  *(v237 + 16) = partial apply for closure #9 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v237 + 24) = v191;
  *(v189 + 576) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v189 + 584) = v237;
  OUTLINED_FUNCTION_7_8();
  if (v238)
  {
    v239 = v231;
  }

  else
  {
    v239 = 0;
  }

  if (v238)
  {
    v240 = v456;
  }

  else
  {
    v240 = 0;
  }

  OUTLINED_FUNCTION_3_11();
  v241 = swift_allocObject();
  OUTLINED_FUNCTION_19_6(v241);
  *(v189 + 592) = v240;
  OUTLINED_FUNCTION_10_7((v189 + 600));
  *(v189 + 616) = v239;
  *(v189 + 624) = 0xD000000000000010;
  *(v189 + 632) = 0x8000000227FB5630;
  *(v189 + 640) = 0x3233746E4955;
  *(v189 + 648) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v242 = swift_allocObject();
  *(v242 + 16) = partial apply for closure #10 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v242 + 24) = v191;
  *(v189 + 656) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v189 + 664) = v242;
  OUTLINED_FUNCTION_7_8();
  if (v243)
  {
    v244 = v231;
  }

  else
  {
    v244 = 0;
  }

  if (v243)
  {
    v245 = v458;
  }

  else
  {
    v245 = 0;
  }

  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_3_11();
  v246 = swift_allocObject();
  OUTLINED_FUNCTION_19_6(v246);
  *(v189 + 672) = v245;
  OUTLINED_FUNCTION_10_7((v189 + 680));
  *(v189 + 696) = v244;
  *(v189 + 704) = v505;
  *(v189 + 712) = v240;
  *(v189 + 720) = 0x3233746E4955;
  *(v189 + 728) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v247 = swift_allocObject();
  *(v247 + 16) = partial apply for closure #11 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v247 + 24) = v191;
  *(v189 + 736) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v189 + 744) = v247;
  OUTLINED_FUNCTION_7_8();
  if (v248)
  {
    v249 = v231;
  }

  else
  {
    v249 = 0;
  }

  if (v248)
  {
    v250 = v460;
  }

  else
  {
    v250 = 0;
  }

  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_3_11();
  v251 = swift_allocObject();
  OUTLINED_FUNCTION_19_6(v251);
  *(v189 + 752) = v250;
  OUTLINED_FUNCTION_10_7((v189 + 760));
  *(v189 + 776) = v249;
  *(v189 + 784) = 0xD000000000000013;
  *(v189 + 792) = v240;
  *(v189 + 800) = 0x3233746E4955;
  *(v189 + 808) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v252 = swift_allocObject();
  *(v252 + 16) = partial apply for closure #12 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v252 + 24) = v191;
  *(v189 + 816) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v189 + 824) = v252;
  OUTLINED_FUNCTION_7_8();
  if (v253)
  {
    v254 = MEMORY[0x277D84CC0];
  }

  else
  {
    v254 = 0;
  }

  if (v253)
  {
    v255 = v462;
  }

  else
  {
    v255 = 0;
  }

  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_3_11();
  v256 = swift_allocObject();
  OUTLINED_FUNCTION_19_6(v256);
  *(v189 + 832) = v255;
  OUTLINED_FUNCTION_10_7((v189 + 840));
  *(v189 + 856) = v254;
  v501 = 0xD00000000000001ELL;
  *(v189 + 864) = 0xD00000000000001ELL;
  *(v189 + 872) = v240;
  *(v189 + 880) = 0x3233746E4955;
  *(v189 + 888) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v257 = swift_allocObject();
  *(v257 + 16) = partial apply for closure #13 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v257 + 24) = v191;
  *(v189 + 896) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v189 + 904) = v257;
  v258 = v199;
  if (v463)
  {
    v507 = 0u;
    v508 = 0u;
    if (v444)
    {
      v259 = 0;
      v509 = 0uLL;
      *&v510 = 0;
    }

    else
    {
      LODWORD(v509) = v442;
      v259 = MEMORY[0x277D84CC0];
    }

    *(&v510 + 1) = v259;
    v260 = MEMORY[0x277D84CC0];
  }

  else
  {
    v260 = MEMORY[0x277D84CC0];
    *(&v508 + 1) = MEMORY[0x277D84CC0];
    v507.n128_u32[0] = v443;
    outlined init with take of Any(&v507, &v509);
  }

  v261 = v258;

  OUTLINED_FUNCTION_3_11();
  v262 = swift_allocObject();
  OUTLINED_FUNCTION_15_4(v262);
  v263 = v510;
  *(v189 + 912) = v509;
  *(v189 + 928) = v263;
  OUTLINED_FUNCTION_17_6();
  *(v189 + 944) = v264 - 8;
  *(v189 + 952) = 0x8000000227FB54C0;
  *(v189 + 960) = 0x3233746E4955;
  *(v189 + 968) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v265 = swift_allocObject();
  *(v265 + 16) = partial apply for closure #14 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v265 + 24) = v199;
  *(v189 + 976) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v189 + 984) = v265;
  OUTLINED_FUNCTION_7_8();
  if (v266)
  {
    v267 = v260;
  }

  else
  {
    v267 = 0;
  }

  if (v266)
  {
    v268 = v465;
  }

  else
  {
    v268 = 0;
  }

  OUTLINED_FUNCTION_3_11();
  v269 = swift_allocObject();
  OUTLINED_FUNCTION_15_4(v269);
  *(v189 + 992) = v268;
  OUTLINED_FUNCTION_10_7((v189 + 1000));
  *(v189 + 1016) = v267;
  *(v189 + 1024) = 0x756F43726F727265;
  *(v189 + 1032) = 0xEA0000000000746ELL;
  *(v189 + 1040) = 0x3233746E4955;
  *(v189 + 1048) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v270 = swift_allocObject();
  *(v270 + 16) = partial apply for closure #15 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v270 + 24) = v199;
  *(v189 + 1056) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v189 + 1064) = v270;
  OUTLINED_FUNCTION_7_8();
  if (v271)
  {
    v272 = v467;
  }

  else
  {
    v272 = 0;
  }

  if (v271)
  {
    v273 = MEMORY[0x277D839F8];
  }

  else
  {
    v273 = 0;
  }

  v274 = MEMORY[0x277D839F8];
  OUTLINED_FUNCTION_3_11();
  v275 = swift_allocObject();
  OUTLINED_FUNCTION_15_4(v275);
  *(v189 + 1072) = v272;
  OUTLINED_FUNCTION_10_7((v189 + 1080));
  *(v189 + 1096) = v273;
  OUTLINED_FUNCTION_17_6();
  *(v189 + 1104) = v276 - 14;
  *(v189 + 1112) = 0x8000000227FB5000;
  *(v189 + 1120) = 0x656C62756F44;
  *(v189 + 1128) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v277 = swift_allocObject();
  *(v277 + 16) = partial apply for closure #16 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v277 + 24) = v199;
  *(v189 + 1136) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v189 + 1144) = v277;
  OUTLINED_FUNCTION_7_8();
  if (v278)
  {
    v279 = v469;
  }

  else
  {
    v279 = 0;
  }

  if (v278)
  {
    v280 = v274;
  }

  else
  {
    v280 = 0;
  }

  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_3_11();
  v281 = swift_allocObject();
  OUTLINED_FUNCTION_15_4(v281);
  *(v189 + 1152) = v279;
  OUTLINED_FUNCTION_10_7((v189 + 1160));
  *(v189 + 1176) = v280;
  OUTLINED_FUNCTION_17_6();
  *(v189 + 1184) = v282 - 10;
  *(v189 + 1192) = v274;
  *(v189 + 1200) = 0x656C62756F44;
  *(v189 + 1208) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v283 = swift_allocObject();
  *(v283 + 16) = partial apply for closure #17 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v283 + 24) = v199;
  *(v189 + 1216) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v189 + 1224) = v283;
  OUTLINED_FUNCTION_7_8();
  if (v284)
  {
    v285 = v471;
  }

  else
  {
    v285 = 0;
  }

  if (v284)
  {
    v286 = v274;
  }

  else
  {
    v286 = 0;
  }

  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_3_11();
  v287 = swift_allocObject();
  OUTLINED_FUNCTION_15_4(v287);
  *(v189 + 1232) = v285;
  OUTLINED_FUNCTION_10_7((v189 + 1240));
  *(v189 + 1256) = v286;
  *(v189 + 1264) = v501;
  *(v189 + 1272) = v274;
  *(v189 + 1280) = 0x656C62756F44;
  *(v189 + 1288) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v288 = swift_allocObject();
  *(v288 + 16) = partial apply for closure #18 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v288 + 24) = v199;
  *(v189 + 1296) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v189 + 1304) = v288;
  OUTLINED_FUNCTION_7_8();
  if (v289)
  {
    v290 = v473;
  }

  else
  {
    v290 = 0;
  }

  v291 = MEMORY[0x277D839F8];
  if (v289)
  {
    v292 = MEMORY[0x277D839F8];
  }

  else
  {
    v292 = 0;
  }

  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_3_11();
  v293 = swift_allocObject();
  OUTLINED_FUNCTION_15_4(v293);
  *(v189 + 1312) = v290;
  OUTLINED_FUNCTION_10_7((v189 + 1320));
  *(v189 + 1336) = v292;
  OUTLINED_FUNCTION_17_6();
  *(v189 + 1344) = v294;
  *(v189 + 1352) = v274;
  *(v189 + 1360) = 0x656C62756F44;
  *(v189 + 1368) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v295 = swift_allocObject();
  *(v295 + 16) = partial apply for closure #19 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v295 + 24) = v199;
  *(v189 + 1376) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v189 + 1384) = v295;
  OUTLINED_FUNCTION_7_8();
  if (v296)
  {
    v297 = v475;
  }

  else
  {
    v297 = 0;
  }

  if (v296)
  {
    v298 = v291;
  }

  else
  {
    v298 = 0;
  }

  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_3_11();
  v299 = swift_allocObject();
  OUTLINED_FUNCTION_15_4(v299);
  *(v189 + 1392) = v297;
  OUTLINED_FUNCTION_10_7((v189 + 1400));
  *(v189 + 1416) = v298;
  *(v189 + 1424) = v504;
  *(v189 + 1432) = v274;
  *(v189 + 1440) = 0x656C62756F44;
  *(v189 + 1448) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v300 = swift_allocObject();
  *(v300 + 16) = partial apply for closure #20 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v300 + 24) = v199;
  *(v189 + 1456) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v189 + 1464) = v300;
  OUTLINED_FUNCTION_7_8();
  v302 = MEMORY[0x277D84CC0];
  if (v301)
  {
    v303 = MEMORY[0x277D84CC0];
  }

  else
  {
    v303 = 0;
  }

  v498 = v303;
  if (v301)
  {
    v304 = v477;
  }

  else
  {
    v304 = 0;
  }

  v305 = v261;
  v306 = v480;
  outlined init with copy of SELFEventProcessor(v502, v480);
  v501 = *(v481 + 80);
  v307 = (v501 + 24) & ~v501;
  v500 = v307;
  v308 = swift_allocObject();
  v309 = OUTLINED_FUNCTION_15_4(v308);
  outlined init with take of SELFEventProcessor(v306, v309 + v307);
  *(v189 + 1472) = v304;
  OUTLINED_FUNCTION_10_7((v189 + 1480));
  *(v189 + 1496) = v498;
  *(v189 + 1504) = 1701080941;
  *(v189 + 1512) = 0xE400000000000000;
  *(v189 + 1520) = 0x3233746E4955;
  *(v189 + 1528) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v310 = swift_allocObject();
  *(v310 + 16) = partial apply for closure #21 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v310 + 24) = v199;
  *(v189 + 1536) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v189 + 1544) = v310;
  OUTLINED_FUNCTION_7_8();
  if (v311)
  {
    v312 = v479;
  }

  else
  {
    v312 = 0;
  }

  if (v311)
  {
    v22 = v302;
  }

  else
  {
    v22 = 0;
  }

  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_3_11();
  v313 = swift_allocObject();
  OUTLINED_FUNCTION_15_4(v313);
  *(v189 + 1552) = v312;
  OUTLINED_FUNCTION_10_7((v189 + 1560));
  *(v189 + 1576) = v22;
  *(v189 + 1584) = v504;
  *(v189 + 1592) = v302;
  *(v189 + 1600) = 0x3233746E4955;
  *(v189 + 1608) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v314 = swift_allocObject();
  *(v314 + 16) = partial apply for closure #22 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v314 + 24) = v199;
  *(v189 + 1616) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v189 + 1624) = v314;
  OUTLINED_FUNCTION_7_8();
  if (v315)
  {
    v316 = MEMORY[0x277D839F8];
  }

  else
  {
    v316 = 0;
  }

  if (v315)
  {
    v317 = v483;
  }

  else
  {
    v317 = 0;
  }

  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_3_11();
  v318 = swift_allocObject();
  OUTLINED_FUNCTION_15_4(v318);
  *(v189 + 1632) = v317;
  OUTLINED_FUNCTION_10_7((v189 + 1640));
  *(v189 + 1656) = v316;
  OUTLINED_FUNCTION_17_6();
  *(v189 + 1664) = v319 + 12;
  *(v189 + 1672) = v22;
  *(v189 + 1680) = 0x656C62756F44;
  *(v189 + 1688) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v320 = swift_allocObject();
  *(v320 + 16) = partial apply for closure #23 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v320 + 24) = v199;
  *(v189 + 1696) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v189 + 1704) = v320;
  OUTLINED_FUNCTION_7_8();
  if (v321)
  {
    v322 = v485;
  }

  else
  {
    v322 = 0;
  }

  if (v321)
  {
    v323 = MEMORY[0x277D84CC0];
  }

  else
  {
    v323 = 0;
  }

  OUTLINED_FUNCTION_31_4();
  v187 = v305;
  v175 = v486;
  outlined init with copy of SELFEventProcessor(v502, v486);
  v324 = v500;
  v325 = swift_allocObject();
  v326 = OUTLINED_FUNCTION_15_4(v325);
  outlined init with take of SELFEventProcessor(v175, v326 + v324);
  *(v189 + 1712) = v322;
  OUTLINED_FUNCTION_10_7((v189 + 1720));
  *(v189 + 1736) = v323;
  *(v189 + 1744) = v505;
  *(v189 + 1752) = v22;
  OUTLINED_FUNCTION_20_5();
  *(v189 + 1760) = v327;
  *(v189 + 1768) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v328 = swift_allocObject();
  *(v328 + 16) = partial apply for closure #24 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v328 + 24) = v199;
  *(v189 + 1776) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v189 + 1784) = v328;
  v495 = v187;
  v329 = 0;
  *&v330 = i[324];
  v497 = v330;
  v151 = v506;
  for (i = v503; v329 != 22; i += 10)
  {
    if (v329 > 0x15)
    {
      __break(1u);
      goto LABEL_342;
    }

    _sypSg5value_SS9fieldNameSS12expectedTypexq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyypytIsegnrzo_6settertWOc(i, &v509);
    v187 = v512;
    if (!v512)
    {
      break;
    }

    v22 = v511;
    v331 = v513;
    v175 = v514;
    OUTLINED_FUNCTION_109_0();
    v332 = swift_allocObject();
    v507 = OUTLINED_FUNCTION_8_12(v332);
    v508 = v333;
    if (*(&v333 + 1))
    {
      v505 = v329;
      v498 = v331;
      v334 = OUTLINED_FUNCTION_64_3(&v507);
      outlined init with copy of Any(v334, &v507);

      v335 = Logger.logObject.getter();
      v336 = static os_log_type_t.debug.getter();

      v337 = os_log_type_enabled(v335, v336);
      v500 = v22;
      if (v337)
      {
        OUTLINED_FUNCTION_80();
        v501 = v175;
        v338 = OUTLINED_FUNCTION_21_6();
        v506 = v151;
        v515 = v338;
        OUTLINED_FUNCTION_27_4(&v517);
        v340 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v187, v339);
        OUTLINED_FUNCTION_26_3(v340);
        __swift_project_boxed_opaque_existential_1(&v507, *(&v508 + 1));
        v504 = v332;
        OUTLINED_FUNCTION_22_7();
        MEMORY[0x28223BE20](v341);
        OUTLINED_FUNCTION_1_0();
        v503 = i;
        (*(v344 + 16))(v343 - v342);
        v345 = String.init<A>(describing:)();
        v22 = v346;
        v332 = v504;
        __swift_destroy_boxed_opaque_existential_0Tm(&v507);
        v347 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v345, v22, &v515);

        *(v175 + 14) = v347;
        i = v503;
        OUTLINED_FUNCTION_53_2(&dword_227F43000, v335, v336, "Field '%s': %s is assigned", v436, v437);
        swift_arrayDestroy();
        v151 = v506;
        OUTLINED_FUNCTION_11();
        v175 = v501;
        OUTLINED_FUNCTION_11();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0Tm(&v507);
      }

      v357 = v151;
      thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@out (), @error @owned Error)partial apply();
      v329 = v505;
      if (v151)
      {
        v504 = v332;

        OUTLINED_FUNCTION_109_0();
        v409 = v175;
        v410 = swift_allocObject();
        *(v410 + 16) = v500;
        *(v410 + 24) = v187;
        OUTLINED_FUNCTION_109_0();
        v411 = swift_allocObject();
        *(v411 + 16) = v498;
        *(v411 + 24) = v409;
        OUTLINED_FUNCTION_3_11();
        v412 = swift_allocObject();
        *(v412 + 16) = v357;

        v501 = v409;

        v506 = v357;
        v413 = v357;
        v505 = Logger.logObject.getter();
        LODWORD(v502) = static os_log_type_t.fault.getter();
        OUTLINED_FUNCTION_13_7();
        v503 = swift_allocObject();
        LOBYTE(v503[2].isa) = 32;
        OUTLINED_FUNCTION_13_7();
        *&v499 = swift_allocObject();
        *(v499 + 16) = 8;
        OUTLINED_FUNCTION_109_0();
        v414 = swift_allocObject();
        *(v414 + 16) = partial apply for implicit closure #14 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
        *(v414 + 24) = v410;
        OUTLINED_FUNCTION_109_0();
        v415 = swift_allocObject();
        *(v415 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
        *(v415 + 24) = v414;
        OUTLINED_FUNCTION_13_7();
        *&v497 = swift_allocObject();
        *(v497 + 16) = 32;
        OUTLINED_FUNCTION_13_7();
        v494 = swift_allocObject();
        *(v494 + 16) = 8;
        OUTLINED_FUNCTION_109_0();
        v416 = swift_allocObject();
        *(v416 + 16) = partial apply for implicit closure #15 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
        *(v416 + 24) = v411;
        OUTLINED_FUNCTION_109_0();
        v417 = swift_allocObject();
        *(v417 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
        *(v417 + 24) = v416;
        OUTLINED_FUNCTION_13_7();
        v418 = swift_allocObject();
        *(v418 + 16) = 64;
        OUTLINED_FUNCTION_13_7();
        v419 = swift_allocObject();
        *(v419 + 16) = 8;
        OUTLINED_FUNCTION_109_0();
        v420 = swift_allocObject();
        *(v420 + 16) = partial apply for implicit closure #16 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
        *(v420 + 24) = v412;
        OUTLINED_FUNCTION_109_0();
        v421 = swift_allocObject();
        *(v421 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
        *(v421 + 24) = v420;
        OUTLINED_FUNCTION_109_0();
        v422 = swift_allocObject();
        *(v422 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
        *(v422 + 24) = v421;
        v22 = v502;
        v423 = swift_allocObject();
        *(v423 + 16) = xmmword_227FB4220;
        v424 = v503;
        *(v423 + 32) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v423 + 40) = v424;
        v425 = v499;
        *(v423 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v423 + 56) = v425;
        *(v423 + 64) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v423 + 72) = v415;
        v426 = v497;
        *(v423 + 80) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v423 + 88) = v426;
        v427 = v494;
        *(v423 + 96) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v423 + 104) = v427;
        *(v423 + 112) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v423 + 120) = v417;
        *(v423 + 128) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v423 + 136) = v418;
        v428 = v505;
        *(v423 + 144) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v423 + 152) = v419;
        *(v423 + 160) = partial apply for closure #1 in OSLogArguments.append(_:);
        *(v423 + 168) = v422;
        swift_setDeallocating();
        specialized _ContiguousArrayStorage.__deallocating_deinit(&_syycMd, &_syycMR);
        if (os_log_type_enabled(v428, v22))
        {
          v429 = OUTLINED_FUNCTION_84();
          v430 = OUTLINED_FUNCTION_83();
          v507.n128_u64[0] = swift_slowAlloc();
          *v429 = 136315650;
          v431 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v500, v187, &v507);

          *(v429 + 4) = v431;
          *(v429 + 12) = 2080;
          v432 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v498, v501, &v507);

          *(v429 + 14) = v432;
          *(v429 + 22) = 2112;
          v433 = v506;
          v434 = _swift_stdlib_bridgeErrorToNSError();
          *(v429 + 24) = v434;
          *v430 = v434;
          _os_log_impl(&dword_227F43000, v428, v22, "Type conversion failed for field '%s' to %s: %@", v429, 0x20u);
          outlined destroy of NSObject?(v430, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          OUTLINED_FUNCTION_11();
          swift_arrayDestroy();
          OUTLINED_FUNCTION_40();
          OUTLINED_FUNCTION_11();
        }

        else
        {
        }

        OUTLINED_FUNCTION_48_1();
        v435 = v495;
        swift_willThrow();

        __swift_destroy_boxed_opaque_existential_0Tm(&v509);
        return v22;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v509);
    }

    else
    {

      outlined destroy of NSObject?(&v507, &_sypSgMd, &_sypSgMR);

      v348 = Logger.logObject.getter();
      v175 = static os_log_type_t.debug.getter();

      if (OUTLINED_FUNCTION_62_2())
      {
        v349 = OUTLINED_FUNCTION_76_0();
        v505 = v329;
        v350 = v349;
        v351 = OUTLINED_FUNCTION_84();
        v352 = v22;
        v22 = i;
        v353 = v351;
        *&v509 = v351;
        *v350 = v497;
        v354 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v352, v187, &v509);
        v504 = v332;
        v355 = v151;
        v356 = v354;

        *(v350 + 4) = v356;
        v151 = v355;
        _os_log_impl(&dword_227F43000, v348, v175, "Field '%s': nil (optional)", v350, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v353);
        i = v22;
        OUTLINED_FUNCTION_11();
        v329 = v505;
        OUTLINED_FUNCTION_11();
      }

      else
      {
      }
    }

    ++v329;
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit(&_sypSg5value_SS9fieldNameSS12expectedTypeyyc6settertMd, &_sypSg5value_SS9fieldNameSS12expectedTypeyyc6settertMR);
  if (v445)
  {
    v358 = Logger.logObject.getter();
    v359 = static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_78_0(v359);
    OUTLINED_FUNCTION_48_1();
    if (v360)
    {
      v361 = OUTLINED_FUNCTION_150();
      OUTLINED_FUNCTION_32_2(v361);
      OUTLINED_FUNCTION_0_11();
      _os_log_impl(v362, v363, v364, v365, v366, 2u);
      OUTLINED_FUNCTION_40();
    }

    v367 = v495;
  }

  else
  {
    v368 = swift_allocObject();
    v369 = v438;
    *(v368 + 16) = v438;
    v370 = Logger.logObject.getter();
    v371 = static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_13_7();
    v372 = swift_allocObject();
    *(v372 + 16) = 32;
    OUTLINED_FUNCTION_13_7();
    v373 = swift_allocObject();
    *(v373 + 16) = 8;
    OUTLINED_FUNCTION_109_0();
    v374 = swift_allocObject();
    *(v374 + 16) = partial apply for implicit closure #18 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
    *(v374 + 24) = v368;
    OUTLINED_FUNCTION_109_0();
    v375 = swift_allocObject();
    *(v375 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
    *(v375 + 24) = v374;
    v376 = OUTLINED_FUNCTION_36_1();
    *(v376 + 16) = xmmword_227FB1BA0;
    *(v376 + 32) = closure #1 in OSLogArguments.append(_:)partial apply;
    *(v376 + 40) = v372;
    *(v376 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
    *(v376 + 56) = v373;
    *(v376 + 64) = closure #1 in OSLogArguments.append(_:)partial apply;
    *(v376 + 72) = v375;
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit(&_syycMd, &_syycMR);
    os_log_type_enabled(v370, v371);
    OUTLINED_FUNCTION_48_1();
    if (v377)
    {
      v378 = OUTLINED_FUNCTION_76_0();
      v379 = OUTLINED_FUNCTION_84();
      *&v509 = v379;
      OUTLINED_FUNCTION_33_3(&v516);
      v507.n128_u32[0] = v369;
      v380 = dispatch thunk of CustomStringConvertible.description.getter();
      v382 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v380, v381, &v509);

      *(v378 + 4) = v382;
      _os_log_impl(&dword_227F43000, v370, v371, "Field 'countPSUSAssets': %s is assigned", v378, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v379);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_40();
    }

    v367 = v495;
    [v495 setCountPSUSAssets_];
  }

  v383 = Logger.logObject.getter();
  v384 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_78_0(v384))
  {
    v385 = OUTLINED_FUNCTION_150();
    OUTLINED_FUNCTION_32_2(v385);
    OUTLINED_FUNCTION_0_11();
    _os_log_impl(v386, v387, v388, v389, v390, 2u);
    OUTLINED_FUNCTION_40();
  }

  OUTLINED_FUNCTION_3_11();
  v391 = swift_allocObject();
  *(v391 + 16) = v367;
  v392 = v367;
  v393 = Logger.logObject.getter();
  v394 = static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_13_7();
  v395 = swift_allocObject();
  *(v395 + 16) = 32;
  OUTLINED_FUNCTION_13_7();
  v396 = swift_allocObject();
  *(v396 + 16) = 8;
  OUTLINED_FUNCTION_109_0();
  v397 = swift_allocObject();
  *(v397 + 16) = partial apply for implicit closure #19 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v397 + 24) = v391;
  OUTLINED_FUNCTION_109_0();
  v398 = swift_allocObject();
  *(v398 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  *(v398 + 24) = v397;
  v399 = OUTLINED_FUNCTION_36_1();
  *(v399 + 16) = xmmword_227FB1BA0;
  *(v399 + 32) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(v399 + 40) = v395;
  *(v399 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(v399 + 56) = v396;
  *(v399 + 64) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(v399 + 72) = v398;
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit(&_syycMd, &_syycMR);
  if (os_log_type_enabled(v393, v394))
  {
    v400 = OUTLINED_FUNCTION_76_0();
    v401 = OUTLINED_FUNCTION_84();
    v507.n128_u64[0] = v401;
    *v400 = v497;
    *(&v510 + 1) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus, 0x277D5A5F8);
    *&v509 = v392;
    v402 = v392;
    v403 = printDebugDescription(_:)(&v509);
    v405 = v404;
    __swift_destroy_boxed_opaque_existential_0Tm(&v509);
    v406 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v403, v405, &v507);

    *(v400 + 4) = v406;
    OUTLINED_FUNCTION_60_2(&dword_227F43000, v407, v408, "Final container state for AvailabilityDetailedStatusEvent:\n%s");
    __swift_destroy_boxed_opaque_existential_0Tm(v401);
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_11();
  }

  return v22;
}

id closure #1 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v6);
  if (swift_dynamicCast())
  {
    return [a2 setStatus_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = xmmword_227FB4260;
  *(v4 + 16) = xmmword_227FB4190;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000227FB6460;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

void closure #2 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v6);
  if (swift_dynamicCast())
  {
    outlined bridged method (mbnn) of @objc SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus.useCaseID.setter(v4, v5, a2, &selRef_setUseCaseID_);
  }

  else
  {
    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    swift_allocError();
    *v3 = xmmword_227FB41B0;
    *(v3 + 16) = xmmword_227FB41C0;
    *(v3 + 32) = 0xD00000000000001FLL;
    *(v3 + 40) = 0x8000000227FB6460;
    *(v3 + 48) = 2;
    swift_willThrow();
  }
}

uint64_t SELFEventProcessor.mapDownloadState(_:)(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 67109120;
      *(v4 + 4) = a1;
      _os_log_impl(&dword_227F43000, v2, v3, "Invalid download state value: %u", v4, 8u);
      MEMORY[0x22AAAF0A0](v4, -1, -1);
    }

    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    swift_allocError();
    *v5 = a1;
    *(v5 + 8) = 0xD00000000000001FLL;
    *(v5 + 16) = 0x8000000227FB6460;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    *(v5 + 48) = 1;
    swift_willThrow();
  }

  return a1;
}

void closure #3 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v6);
  if (swift_dynamicCast())
  {
    outlined bridged method (mbnn) of @objc SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus.useCaseID.setter(v4, v5, a2, &selRef_setLastMobileAssetDownloadAttemptErrorDomain_);
  }

  else
  {
    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    swift_allocError();
    *v3 = 0xD000000000000020;
    *(v3 + 8) = 0x8000000227FB5520;
    *(v3 + 16) = xmmword_227FB41C0;
    *(v3 + 32) = 0xD00000000000001FLL;
    *(v3 + 40) = 0x8000000227FB6460;
    *(v3 + 48) = 2;
    swift_willThrow();
  }
}

void closure #4 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v6);
  if (swift_dynamicCast())
  {
    outlined bridged method (mbnn) of @objc SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus.useCaseID.setter(v4, v5, a2, &selRef_setFailingSubsystemOperations_);
  }

  else
  {
    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    swift_allocError();
    *v3 = 0xD00000000000001ALL;
    *(v3 + 8) = 0x8000000227FB55B0;
    *(v3 + 16) = xmmword_227FB41C0;
    *(v3 + 32) = 0xD00000000000001FLL;
    *(v3 + 40) = 0x8000000227FB6460;
    *(v3 + 48) = 2;
    swift_willThrow();
  }
}

void closure #5 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v6);
  if (swift_dynamicCast())
  {
    outlined bridged method (mbnn) of @objc SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus.useCaseID.setter(v4, v5, a2, &selRef_setSampledSubsystemOperation_);
  }

  else
  {
    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    swift_allocError();
    *v3 = 0xD000000000000019;
    *(v3 + 8) = 0x8000000227FB55D0;
    *(v3 + 16) = xmmword_227FB41C0;
    *(v3 + 32) = 0xD00000000000001FLL;
    *(v3 + 40) = 0x8000000227FB6460;
    *(v3 + 48) = 2;
    swift_willThrow();
  }
}

void closure #6 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v6);
  if (swift_dynamicCast())
  {
    outlined bridged method (mbnn) of @objc SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus.useCaseID.setter(v4, v5, a2, &selRef_setSampledErrorDomain_);
  }

  else
  {
    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    swift_allocError();
    *v3 = 0xD000000000000012;
    *(v3 + 8) = 0x8000000227FB5610;
    *(v3 + 16) = xmmword_227FB41C0;
    *(v3 + 32) = 0xD00000000000001FLL;
    *(v3 + 40) = 0x8000000227FB6460;
    *(v3 + 48) = 2;
    swift_willThrow();
  }
}

void closure #7 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v6);
  if (swift_dynamicCast())
  {
    outlined bridged method (mbnn) of @objc SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus.useCaseID.setter(v4, v5, a2, &selRef_setSampledErrorUnderlyingDomain_);
  }

  else
  {
    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    swift_allocError();
    *v3 = 0xD00000000000001CLL;
    *(v3 + 8) = 0x8000000227FB5670;
    *(v3 + 16) = xmmword_227FB41C0;
    *(v3 + 32) = 0xD00000000000001FLL;
    *(v3 + 40) = 0x8000000227FB6460;
    *(v3 + 48) = 2;
    swift_willThrow();
  }
}

void closure #8 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v6);
  if (swift_dynamicCast())
  {
    outlined bridged method (mbnn) of @objc SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus.useCaseID.setter(v4, v5, a2, &selRef_setLastMobileAssetDownloadAttemptErrorAsset_);
  }

  else
  {
    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    swift_allocError();
    *v3 = 0xD00000000000001FLL;
    *(v3 + 8) = 0x8000000227FB54E0;
    *(v3 + 16) = xmmword_227FB41C0;
    *(v3 + 32) = 0xD00000000000001FLL;
    *(v3 + 40) = 0x8000000227FB6460;
    *(v3 + 48) = 2;
    swift_willThrow();
  }
}

id closure #9 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setSampledErrorCode_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD000000000000010;
  *(v4 + 8) = 0x8000000227FB55F0;
  *(v4 + 16) = xmmword_227FB41F0;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000227FB6460;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #10 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setSampledErrorHash_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD000000000000010;
  *(v4 + 8) = 0x8000000227FB5630;
  *(v4 + 16) = xmmword_227FB41F0;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000227FB6460;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #11 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setSampledErrorUnderlyingCode_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD00000000000001ALL;
  *(v4 + 8) = 0x8000000227FB5650;
  *(v4 + 16) = xmmword_227FB41F0;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000227FB6460;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #12 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setCountRequiredAssets_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD000000000000013;
  *(v4 + 8) = 0x8000000227FB56F0;
  *(v4 + 16) = xmmword_227FB41F0;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000227FB6460;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #13 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setLastMobileAssetDownloadAttemptErrorCode_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD00000000000001ELL;
  *(v4 + 8) = 0x8000000227FB5500;
  *(v4 + 16) = xmmword_227FB41F0;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000227FB6460;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #14 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setCurrentSubscriptionHash_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD000000000000017;
  *(v4 + 8) = 0x8000000227FB54C0;
  *(v4 + 16) = xmmword_227FB41F0;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000227FB6460;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #15 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v6);
  if (swift_dynamicCast())
  {
    return [a2 setErrorCount_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = xmmword_227FB4270;
  *(v4 + 16) = xmmword_227FB41F0;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000227FB6460;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #16 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setTimeSinceLastBootInSeconds_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD000000000000011;
  *(v4 + 8) = 0x8000000227FB5000;
  *(v4 + 16) = xmmword_227FB41A0;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000227FB6460;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #17 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setTimeSinceLastAppleIntelligenceToggleInSeconds_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD000000000000015;
  *(v4 + 8) = 0x8000000227FB4FC0;
  *(v4 + 16) = xmmword_227FB41A0;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000227FB6460;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #18 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setTimeSinceLastMobileAssetDownloadAttemptInSeconds_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD00000000000001ELL;
  *(v4 + 8) = 0x8000000227FB5690;
  *(v4 + 16) = xmmword_227FB41A0;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000227FB6460;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #19 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setTimeSinceLastSubscriptionHashChangeInSeconds_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD00000000000001FLL;
  *(v4 + 8) = 0x8000000227FB56B0;
  *(v4 + 16) = xmmword_227FB41A0;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000227FB6460;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #20 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setTimeSinceLastMobileAssetDownloadErrorInSeconds_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD00000000000001CLL;
  *(v4 + 8) = 0x8000000227FB56D0;
  *(v4 + 16) = xmmword_227FB41A0;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000227FB6460;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #21 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v6);
  if (swift_dynamicCast())
  {
    result = SELFEventProcessor.mapModeValue(_:)(v6[11]);
    if (!v2)
    {
      return [a2 setCurrentMode_];
    }
  }

  else
  {
    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    swift_allocError();
    *v5 = xmmword_227FB4280;
    *(v5 + 16) = xmmword_227FB41F0;
    *(v5 + 32) = 0xD00000000000001FLL;
    *(v5 + 40) = 0x8000000227FB6460;
    *(v5 + 48) = 2;
    return swift_willThrow();
  }

  return result;
}

id closure #22 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setInvocationsCountWhileNotAvailable_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD00000000000001CLL;
  *(v4 + 8) = 0x8000000227FB5710;
  *(v4 + 16) = xmmword_227FB41F0;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000227FB6460;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #23 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setTimeSinceSubscriptionDownloadStatusCompleteInSeconds_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD00000000000002BLL;
  *(v4 + 8) = 0x8000000227FB5750;
  *(v4 + 16) = xmmword_227FB41A0;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000227FB6460;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #24 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v6);
  if (swift_dynamicCast())
  {
    result = SELFEventProcessor.mapSubscriptionDownloadStatusValue(_:)(v6[11]);
    if (!v2)
    {
      return [a2 setSubscriptionDownloadStatus_];
    }
  }

  else
  {
    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    swift_allocError();
    *v5 = 0xD00000000000001ALL;
    *(v5 + 8) = 0x8000000227FB5730;
    *(v5 + 16) = xmmword_227FB41F0;
    *(v5 + 32) = 0xD00000000000001FLL;
    *(v5 + 40) = 0x8000000227FB6460;
    *(v5 + 48) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t SELFEventProcessor.mapSubscriptionDownloadStatusValue(_:)(uint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 67109120;
      *(v4 + 4) = a1;
      _os_log_impl(&dword_227F43000, v2, v3, "UAFSchemaUAFSubscriptionDownloadStatus has an invalid raw value: %u", v4, 8u);
      MEMORY[0x22AAAF0A0](v4, -1, -1);
    }

    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    swift_allocError();
    *v5 = a1;
    *(v5 + 8) = 0xD00000000000001FLL;
    *(v5 + 16) = 0x8000000227FB6460;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    *(v5 + 48) = 9;
    swift_willThrow();
  }

  return a1;
}

unint64_t implicit closure #19 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(void *a1)
{
  v5[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus, 0x277D5A5F8);
  v5[0] = a1;
  v2 = a1;
  v3 = printDebugDescription(_:)(v5);
  __swift_destroy_boxed_opaque_existential_0Tm(v5);
  return v3;
}

uint64_t _sypSg5value_SS9fieldNameSS12expectedTypexq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyypytIsegnrzo_6settertWOc(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSg5value_SS9fieldNameSS12expectedTypeyyc6settertMd, &_sypSg5value_SS9fieldNameSS12expectedTypeyyc6settertMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of SELFEventProcessor(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SELFEventProcessor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of SELFEventProcessor(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SELFEventProcessor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_109_0();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t outlined bridged method (pb) of @objc SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus.useCaseID.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t objectdestroy_103Tm()
{
  v1 = type metadata accessor for SELFEventProcessor(0);
  OUTLINED_FUNCTION_44(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);

  type metadata accessor for Logger();
  OUTLINED_FUNCTION_4();
  (*(v7 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v6, v3 | 7);
}

void *partial apply for implicit closure #16 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)()
{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

uint64_t type metadata completion function for SELFEventProcessor(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void outlined bridged method (mbnn) of @objc SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus.useCaseID.setter(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = MEMORY[0x22AAADFF0](a1);

  [a3 *a4];
}

void OUTLINED_FUNCTION_2_13()
{

  JUMPOUT(0x22AAAE070);
}

void OUTLINED_FUNCTION_4_8()
{

  JUMPOUT(0x22AAAE070);
}

double OUTLINED_FUNCTION_10_7@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_7()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

void OUTLINED_FUNCTION_12_9()
{

  JUMPOUT(0x22AAAE070);
}

uint64_t OUTLINED_FUNCTION_21_6()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_26_3(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

__n128 OUTLINED_FUNCTION_27_4@<Q0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  *v1 = result.n128_u32[0];
  return result;
}

__n128 OUTLINED_FUNCTION_33_3@<Q0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  *v1 = result.n128_u32[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_36_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_39_2(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return v2;
  }

  return result;
}

void OUTLINED_FUNCTION_40_1()
{

  JUMPOUT(0x22AAAE070);
}

void OUTLINED_FUNCTION_41_0()
{

  JUMPOUT(0x22AAAE070);
}

uint64_t OUTLINED_FUNCTION_45_2(uint64_t a1, uint64_t a2)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 10;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_49_2()
{

  JUMPOUT(0x22AAAE070);
}

uint64_t OUTLINED_FUNCTION_50_2(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_51_1(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_52_1(double a1, uint64_t a2, ...)
{

  return Double.write<A>(to:)();
}

void OUTLINED_FUNCTION_53_2(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_59_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_60_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

BOOL OUTLINED_FUNCTION_62_2()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_63_3()
{

  JUMPOUT(0x22AAAE070);
}

uint64_t SELFProcessingError.errorCode.getter()
{
  result = 471002;
  switch(v0[3].i8[0])
  {
    case 1:
      result = 471003;
      break;
    case 2:
      result = 471010;
      break;
    case 3:
      result = 471004;
      break;
    case 4:
      result = 471005;
      break;
    case 5:
      result = 471006;
      break;
    case 6:
      result = 471007;
      break;
    case 7:
      result = 471008;
      break;
    case 8:
      result = 471011;
      break;
    case 9:
      result = 471012;
      break;
    case 0xA:
      v2 = vorrq_s8(v0[1], v0[2]);
      if (*&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL)) | v0->i64[1] | v0->i64[0])
      {
        result = 471009;
      }

      else
      {
        result = 471001;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t SELFProcessingError.errorUserInfo.getter()
{
  v1 = v0;
  v2 = MEMORY[0x277D837D0];
  v3 = Dictionary.init(dictionaryLiteral:)();
  v4 = SELFProcessingError.errorDescription.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *&v142 = v6;
    *(&v142 + 1) = v7;
    OUTLINED_FUNCTION_12_10(v8, v9, v10, v11, v12, v13, v14, v15, v133, v142, v143, v2, v145, v146, v147, v148, *(&v148 + 1), v149, v150, v151);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_12(isUniquelyReferenced_nonNull_native, v17, v18, v19, v20, v21, v22, v23, v134, v142, *(&v142 + 1), v143);

    v3 = v148;
  }

  v24 = SELFProcessingError.failureReason.getter();
  if (v25)
  {
    v26 = v24;
    v27 = v25;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *&v142 = v26;
    *(&v142 + 1) = v27;
    OUTLINED_FUNCTION_12_10(v28, v29, v30, v31, v32, v33, v34, v35, v133, v142, v143, v2, v145, v146, v147, v148, *(&v148 + 1), v149, v150, v151);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_12(v36, v37, v38, v39, v40, v41, v42, v43, v135, v142, *(&v142 + 1), v143);

    v3 = v148;
  }

  v44 = SELFProcessingError.recoverySuggestion.getter();
  if (v45)
  {
    v52 = v44;
    v53 = v45;
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *&v142 = v52;
    *(&v142 + 1) = v53;
    OUTLINED_FUNCTION_12_10(v54, v55, v56, v57, v58, v59, v60, v61, v133, v142, v143, v2, v145, v146, v147, v148, *(&v148 + 1), v149, v150, v151);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_12(v62, v63, v64, v65, v66, v67, v68, v69, v136, v142, *(&v142 + 1), v143);

    v3 = v148;
  }

  v70 = *v1;
  v71 = *(v1 + 8);
  v73 = *(v1 + 16);
  v72 = *(v1 + 24);
  switch(*(v1 + 48))
  {
    case 0:
      *&v142 = *v1;
      *(&v142 + 1) = v71;
      OUTLINED_FUNCTION_12_10(v44, v45, v46, v47, v48, v49, v50, v51, v133, v142, v143, v2, v145, v146, v147, v148, *(&v148 + 1), v149, v150, v151);

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_5_12();
      v92 = OUTLINED_FUNCTION_9_6(v84, v85, v86, v87, v88, v89, v90, v91, v137, v142, *(&v142 + 1), v143, v144, v145, v146, v147, v3, *(&v148 + 1), v149, v150, v151);
      v75 = OUTLINED_FUNCTION_17_7(v92, v93);
      v83 = v148;
      v144 = v2;
      *&v142 = v73;
      *(&v142 + 1) = v72;
      goto LABEL_12;
    case 1:
    case 8:
    case 9:
      v152 = MEMORY[0x277D84CC0];
      LODWORD(v151) = v70;
      outlined init with take of Any(&v151, &v148);
      outlined init with copy of SELFProcessingError(v1, &v142);
      swift_isUniquelyReferenced_nonNull_native();
      *&v142 = v3;
      v75 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v148, 0x5664696C61766E69, 0xEC00000065756C61);
      v83 = v142;
      v144 = v2;
      *&v142 = v71;
      *(&v142 + 1) = v73;
      goto LABEL_12;
    case 2:
      v96 = v1 + 32;
      v94 = *(v1 + 32);
      v95 = *(v96 + 8);
      *&v142 = v70;
      *(&v142 + 1) = v71;
      OUTLINED_FUNCTION_12_10(v44, v45, v46, v47, v48, v49, v50, v51, v133, v142, v143, v2, v145, v146, v147, v148, *(&v148 + 1), v149, v150, v151);

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_5_12();
      v105 = OUTLINED_FUNCTION_9_6(v97, v98, v99, v100, v101, v102, v103, v104, v138, v142, *(&v142 + 1), v143, v144, v145, v146, v147, v3, *(&v148 + 1), v149, v150, v151);
      v107 = OUTLINED_FUNCTION_17_7(v105, v106);
      v108 = v148;
      *&v142 = v73;
      *(&v142 + 1) = v72;
      OUTLINED_FUNCTION_12_10(v107, v109, v110, v111, v112, v113, v114, v115, v139, v142, v143, v2, v145, v146, v147, v148, *(&v148 + 1), v149, v150, v151);
      v116 = swift_isUniquelyReferenced_nonNull_native();
      v121 = OUTLINED_FUNCTION_9_6(v116, 0x6465746365707865, 0xEC00000065707954, v116, v117, v118, v119, v120, v140, v142, *(&v142 + 1), v143, v144, v145, v146, v147, v108, *(&v148 + 1), v149, v150, v151);
      v75 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v121, v122, v123);
      v83 = v148;
      v144 = v2;
      *&v142 = v94;
      *(&v142 + 1) = v95;
LABEL_12:
      OUTLINED_FUNCTION_12_10(v75, v76, v77, v78, v79, v80, v81, v82, v133, v142, v143, v144, v145, v146, v147, v148, *(&v148 + 1), v149, v150, v151);
      v124 = swift_isUniquelyReferenced_nonNull_native();
      v130 = OUTLINED_FUNCTION_9_6(v124, 0x707954746E657665, v125, v124, v126, v127, v128, v129, v141, v142, *(&v142 + 1), v143, v144, v145, v146, v147, v83, *(&v148 + 1), v149, v150, v151);
      OUTLINED_FUNCTION_17_7(v130, v131);
      v3 = v148;
      break;
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
      v152 = v2;
      *&v151 = v70;
      *(&v151 + 1) = v71;
      outlined init with take of Any(&v151, &v148);
      outlined init with copy of SELFProcessingError(v1, &v142);
      swift_isUniquelyReferenced_nonNull_native();
      *&v142 = v3;
      OUTLINED_FUNCTION_5_12();
      OUTLINED_FUNCTION_17_7(&v148, v74);
      v3 = v142;
      break;
    default:
      return v3;
  }

  return v3;
}

unint64_t SELFProcessingError.errorDescription.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  switch(*(v0 + 48))
  {
    case 1:
      OUTLINED_FUNCTION_0_12();
      _StringGuts.grow(_:)(61);
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_2_14();
      MEMORY[0x22AAAE070]();
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AAAE070](v13);

      OUTLINED_FUNCTION_1_9();
      MEMORY[0x22AAAE070](v1, v2);
      goto LABEL_15;
    case 2:
      OUTLINED_FUNCTION_0_12();
      _StringGuts.grow(_:)(65);
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_2_14();
      MEMORY[0x22AAAE070](0xD000000000000019);
      v10 = OUTLINED_FUNCTION_11_8();
      MEMORY[0x22AAAE070](v10);
      MEMORY[0x22AAAE070](0x206F742027, 0xE500000000000000);
      v11 = OUTLINED_FUNCTION_14_6();
      MEMORY[0x22AAAE070](v11, v3);
      MEMORY[0x22AAAE070](544106784, 0xE400000000000000);
      MEMORY[0x22AAAE070](v4, v5);
      OUTLINED_FUNCTION_2_14();
      v12 = 0xD000000000000019;
      goto LABEL_16;
    case 3:
    case 5:
    case 7:
      OUTLINED_FUNCTION_0_12();
      _StringGuts.grow(_:)(33);

      OUTLINED_FUNCTION_6_11();
      goto LABEL_9;
    case 4:
      OUTLINED_FUNCTION_0_12();
      _StringGuts.grow(_:)(38);

      OUTLINED_FUNCTION_6_11();
      v9 = v8 + 5;
      goto LABEL_9;
    case 6:
      OUTLINED_FUNCTION_0_12();
      _StringGuts.grow(_:)(39);

      OUTLINED_FUNCTION_6_11();
      v9 = v14 + 6;
LABEL_9:
      v17 = v9;
      v12 = OUTLINED_FUNCTION_11_8();
      goto LABEL_16;
    case 8:
      OUTLINED_FUNCTION_0_12();
      _StringGuts.grow(_:)(68);
      OUTLINED_FUNCTION_4_9();
      goto LABEL_14;
    case 9:
      OUTLINED_FUNCTION_0_12();
      _StringGuts.grow(_:)(92);
      OUTLINED_FUNCTION_4_9();
LABEL_14:
      OUTLINED_FUNCTION_2_14();
      MEMORY[0x22AAAE070]();
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AAAE070](v16);

      goto LABEL_15;
    case 0xA:
      if (v2 | v1 | *v0 | v3 | v4 | v5)
      {
        return 0xD00000000000001CLL;
      }

      else
      {
        return 0xD000000000000026;
      }

    default:
      OUTLINED_FUNCTION_0_12();
      _StringGuts.grow(_:)(85);
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_2_14();
      MEMORY[0x22AAAE070]();
      v6 = OUTLINED_FUNCTION_11_8();
      MEMORY[0x22AAAE070](v6);
      OUTLINED_FUNCTION_1_9();
      v7 = OUTLINED_FUNCTION_14_6();
      MEMORY[0x22AAAE070](v7, v3);
LABEL_15:
      OUTLINED_FUNCTION_2_14();
LABEL_16:
      MEMORY[0x22AAAE070](v12);
      return v17;
  }
}

uint64_t SELFProcessingError.failureReason.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  switch(*(v0 + 48))
  {
    case 1:
      OUTLINED_FUNCTION_0_12();
      _StringGuts.grow(_:)(69);
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_8_13();
      OUTLINED_FUNCTION_2_14();
      MEMORY[0x22AAAE070]();
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AAAE070](v15);

      OUTLINED_FUNCTION_1_9();
      OUTLINED_FUNCTION_13_8();
      goto LABEL_10;
    case 2:
      OUTLINED_FUNCTION_0_12();
      _StringGuts.grow(_:)(64);
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_10_8();
      v9 = OUTLINED_FUNCTION_14_6();
      MEMORY[0x22AAAE070](v9, v1);
      OUTLINED_FUNCTION_1_9();
      MEMORY[0x22AAAE070](v4, v5);
      OUTLINED_FUNCTION_8_13();
      OUTLINED_FUNCTION_2_14();
      MEMORY[0x22AAAE070]();
      MEMORY[0x22AAAE070](v2, v3);
      v10 = 46;
      v11 = 0xE100000000000000;
      goto LABEL_11;
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
      goto LABEL_2;
    case 8:
      OUTLINED_FUNCTION_0_12();
      _StringGuts.grow(_:)(59);
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_8_13();
      OUTLINED_FUNCTION_2_14();
      MEMORY[0x22AAAE070]();
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AAAE070](v13);

      OUTLINED_FUNCTION_1_9();
      OUTLINED_FUNCTION_13_8();
      goto LABEL_10;
    case 9:
      OUTLINED_FUNCTION_0_12();
      _StringGuts.grow(_:)(83);
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_8_13();
      OUTLINED_FUNCTION_2_14();
      MEMORY[0x22AAAE070]();
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AAAE070](v8);

      OUTLINED_FUNCTION_1_9();
      OUTLINED_FUNCTION_13_8();
LABEL_10:
      OUTLINED_FUNCTION_2_14();
      v10 = 0xD000000000000022;
      goto LABEL_11;
    case 0xA:
      if (v2 | v1 | *v0 | v3 | v4 | v5)
      {
LABEL_2:
        OUTLINED_FUNCTION_16_7();
        return v6 + 22;
      }

      else
      {
        OUTLINED_FUNCTION_16_7();
        return v12 + 62;
      }

    default:
      OUTLINED_FUNCTION_0_12();
      _StringGuts.grow(_:)(79);
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_10_8();
      v14 = OUTLINED_FUNCTION_14_6();
      MEMORY[0x22AAAE070](v14, v1);
      OUTLINED_FUNCTION_2_14();
      MEMORY[0x22AAAE070]();
      MEMORY[0x22AAAE070](v2, v3);
      OUTLINED_FUNCTION_2_14();
LABEL_11:
      MEMORY[0x22AAAE070](v10, v11);
      return v16;
  }
}

uint64_t SELFProcessingError.recoverySuggestion.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 48);
  if (!*(v0 + 48))
  {
    _StringGuts.grow(_:)(74);
    OUTLINED_FUNCTION_15_5();
    MEMORY[0x22AAAE070](0xD000000000000011);
    MEMORY[0x22AAAE070](v1, v2);
    goto LABEL_10;
  }

  if (v3 == 1)
  {
    OUTLINED_FUNCTION_7_9();
    return v8 + 93;
  }

  v4 = v0[2];
  v5 = v0[3];
  if (v3 == 2)
  {
    _StringGuts.grow(_:)(81);
    OUTLINED_FUNCTION_15_5();
    MEMORY[0x22AAAE070](0xD000000000000011);
    MEMORY[0x22AAAE070](v1, v2);
    OUTLINED_FUNCTION_15_5();
    MEMORY[0x22AAAE070]();
    MEMORY[0x22AAAE070](v4, v5);
LABEL_10:
    OUTLINED_FUNCTION_15_5();
    MEMORY[0x22AAAE070]();
    return 0;
  }

  if (v3 == 10 && !(v0[5] | v0[4] | v1 | v2 | v4 | v5))
  {
    OUTLINED_FUNCTION_7_9();
    return v9 + 52;
  }

  else
  {
    OUTLINED_FUNCTION_7_9();
    return v6 + 47;
  }
}

uint64_t protocol witness for Error._domain.getter in conformance SELFProcessingError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance SELFProcessingError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t get_enum_tag_for_layout_string_36AppleIntelligenceReportingProcessing19SELFProcessingErrorO(uint64_t a1)
{
  if ((*(a1 + 48) & 0xFu) <= 9)
  {
    return *(a1 + 48) & 0xF;
  }

  else
  {
    return (*a1 + 10);
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SELFProcessingError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF6 && *(a1 + 49))
    {
      v2 = *a1 + 245;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 0xA)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SELFProcessingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 246;
    if (a3 >= 0xF6)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for SELFProcessingError(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xA)
  {
    *result = a2 - 10;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 10;
  }

  *(result + 48) = a2;
  return result;
}

void OUTLINED_FUNCTION_1_9()
{

  JUMPOUT(0x22AAAE070);
}

_OWORD *OUTLINED_FUNCTION_3_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{

  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v16, v12, v13);
}

void OUTLINED_FUNCTION_10_8()
{

  JUMPOUT(0x22AAAE070);
}

_OWORD *OUTLINED_FUNCTION_12_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 a20)
{

  return outlined init with take of Any(&a10, &a20);
}

void OUTLINED_FUNCTION_13_8()
{

  JUMPOUT(0x22AAAE070);
}

_OWORD *OUTLINED_FUNCTION_17_7(_OWORD *a1, uint64_t a2)
{

  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, 0xE900000000000065);
}

uint64_t type metadata accessor for SELFUploader(uint64_t a1)
{
  result = type metadata singleton initialization cache for SELFUploader;
  if (!type metadata singleton initialization cache for SELFUploader)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriAnalyticsStream.emitMessage(_:)(uint64_t a1)
{
  [objc_msgSend(objc_opt_self() sharedStream)];

  return swift_unknownObjectRelease();
}

uint64_t SELFUploader.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_7_10();
  Logger.init(subsystem:category:)();
  v3 = type metadata accessor for SELFUploader(0);
  v4 = a1 + *(v3 + 20);
  *(v4 + 24) = &type metadata for SiriAnalyticsStream;
  *(v4 + 32) = &protocol witness table for SiriAnalyticsStream;
  v5 = (a1 + *(v3 + 24));
  v5[3] = type metadata accessor for SELFEventProcessor(0);
  v5[4] = &protocol witness table for SELFEventProcessor;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_2_15();
  (*(v7 + 16))(boxed_opaque_existential_1, a1, v1);
  v8 = OUTLINED_FUNCTION_9_7();
  v9 = type metadata accessor for SELFWrapperFactory(v8);
  OUTLINED_FUNCTION_10_9(v9, &protocol witness table for SELFWrapperFactory);
  OUTLINED_FUNCTION_6_12();

  return v10();
}

uint64_t static SELFUploaderFactory.createWithStream(_:)@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SELFUploader(0);
  v3 = OUTLINED_FUNCTION_16_8();
  outlined init with copy of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(v3, v4);
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_7_10();
  Logger.init(subsystem:category:)();
  v5 = OUTLINED_FUNCTION_9_7();
  v6 = type metadata accessor for SELFEventProcessor(v5);
  v7 = OUTLINED_FUNCTION_10_9(v6, &protocol witness table for SELFEventProcessor);
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_2_15();
  (*(v8 + 16))(v7, a1, v1);
  v9 = OUTLINED_FUNCTION_9_7();
  v10 = type metadata accessor for SELFWrapperFactory(v9);
  OUTLINED_FUNCTION_10_9(v10, &protocol witness table for SELFWrapperFactory);
  OUTLINED_FUNCTION_6_12();

  return v11();
}

uint64_t SELFUploader.init(siriAnalyticsStream:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_7_10();
  Logger.init(subsystem:category:)();
  type metadata accessor for SELFUploader(0);
  v3 = OUTLINED_FUNCTION_16_8();
  outlined init with take of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(v3, v4);
  v5 = OUTLINED_FUNCTION_9_7();
  v6 = type metadata accessor for SELFEventProcessor(v5);
  v7 = OUTLINED_FUNCTION_10_9(v6, &protocol witness table for SELFEventProcessor);
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_2_15();
  (*(v8 + 16))(v7, a1, v1);
  v9 = OUTLINED_FUNCTION_9_7();
  v10 = type metadata accessor for SELFWrapperFactory(v9);
  OUTLINED_FUNCTION_10_9(v10, &protocol witness table for SELFWrapperFactory);
  OUTLINED_FUNCTION_6_12();

  return v11();
}

uint64_t static SELFUploaderFactory.createCustom(siriAnalyticsStream:eventProcessor:wrapperFactory:)()
{
  OUTLINED_FUNCTION_12_11();
  type metadata accessor for SELFUploader(0);
  v4 = OUTLINED_FUNCTION_11_9();
  outlined init with copy of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(v4, v5);
  outlined init with copy of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(v1, v2 + *(v3 + 24));
  outlined init with copy of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(v0, v2 + *(v3 + 28));
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_7_10();

  return Logger.init(subsystem:category:)();
}

uint64_t SELFUploader.init(siriAnalyticsStream:eventProcessor:wrapperFactory:)()
{
  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_7_10();
  Logger.init(subsystem:category:)();
  type metadata accessor for SELFUploader(0);
  v4 = OUTLINED_FUNCTION_11_9();
  outlined init with take of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(v4, v5);
  outlined init with take of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(v1, v2 + *(v3 + 24));
  v6 = v2 + *(v3 + 28);

  return outlined init with take of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(v0, v6);
}

uint64_t SELFUploader.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Logger();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SELFUploader.uploadEvent(data:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_10();
}

uint64_t SELFUploader.uploadEvent(data:)()
{
  v20 = v0;
  v1 = *(v0 + 16);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315138;
    swift_getObjectType();
    v6 = _typeName(_:qualified:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v19);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_227F43000, v2, v3, "Uploading SELF event of type: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x22AAAF0A0](v5, -1, -1);
    MEMORY[0x22AAAF0A0](v4, -1, -1);
  }

  v10 = *(v0 + 16);
  v9 = *(v0 + 24);
  v11 = (v9 + *(type metadata accessor for SELFUploader(0) + 20));
  v12 = v11[3];
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v13 + 8))(v10, v12, v13);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_227F43000, v14, v15, "SELF event uploaded successfully", v16, 2u);
    MEMORY[0x22AAAF0A0](v16, -1, -1);
  }

  OUTLINED_FUNCTION_35();

  return v17();
}

uint64_t protocol witness for SELFUploading.uploadEvent(data:) in conformance SELFUploader(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in DataCollector.runDataCollectionAndUpload();

  return SELFUploader.uploadEvent(data:)(a1);
}

uint64_t protocol witness for SELFUploading.send(data:) in conformance SELFUploader(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for SELFUploading.send(data:) in conformance SELFUploader;

  return SELFUploader.send(data:)(a1);
}

{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for SELFUploading.send(data:) in conformance SELFUploader;

  return SELFUploader.send(data:)(a1);
}

uint64_t SELFUploader.send(data:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_1_10();
}

{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_1_10();
}

uint64_t SELFUploader.send(data:)()
{
  v13 = v1;
  v3 = v1[3];
  v4 = type metadata accessor for SELFUploader(0);
  OUTLINED_FUNCTION_17_8(v4);
  memcpy(v12, v3, sizeof(v12));
  OUTLINED_FUNCTION_14_7();
  v6 = v5();
  v1[5] = v6;
  if (v0)
  {
    OUTLINED_FUNCTION_35();

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_4_10(v6);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus, 0x277D5A5F0);
    v7 = OUTLINED_FUNCTION_13_9();
    v1[6] = v2(v7);
    v10 = swift_task_alloc();
    v1[7] = v10;
    *v10 = v1;
    v11 = OUTLINED_FUNCTION_15_6(v10);

    return SELFUploader.uploadEvent(data:)(v11);
  }
}

{
  OUTLINED_FUNCTION_0_2();
  v2 = *v1;
  OUTLINED_FUNCTION_18_0();
  *v3 = v2;
  *(v4 + 64) = v0;

  if (v0)
  {
    v5 = SELFUploader.send(data:);
  }

  else
  {
    v5 = SELFUploader.send(data:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  OUTLINED_FUNCTION_0_2();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_35();

  return v2();
}

{
  OUTLINED_FUNCTION_0_2();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_35();

  return v2();
}

{
  v13 = v1;
  v3 = v1[3];
  v4 = type metadata accessor for SELFUploader(0);
  OUTLINED_FUNCTION_17_8(v4);
  memcpy(__dst, v3, sizeof(__dst));
  OUTLINED_FUNCTION_14_7();
  v6 = v5();
  v1[5] = v6;
  if (v0)
  {
    OUTLINED_FUNCTION_35();

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_4_10(v6);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus, 0x277D5A5F8);
    v7 = OUTLINED_FUNCTION_13_9();
    v1[6] = v2(v7);
    v10 = swift_task_alloc();
    v1[7] = v10;
    *v10 = v1;
    v11 = OUTLINED_FUNCTION_15_6(v10);

    return SELFUploader.uploadEvent(data:)(v11);
  }
}

{
  OUTLINED_FUNCTION_0_2();
  v2 = *v1;
  OUTLINED_FUNCTION_18_0();
  *v3 = v2;
  *(v4 + 64) = v0;

  if (v0)
  {
    v5 = SELFUploader.send(data:);
  }

  else
  {
    v5 = SELFUploader.send(data:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t type metadata completion function for SELFUploader(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SiriAnalyticsStreaming(319, &lazy cache variable for type metadata for SiriAnalyticsStreaming, &protocol descriptor for SiriAnalyticsStreaming);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for SiriAnalyticsStreaming(319, &lazy cache variable for type metadata for SELFEventProcessing, &protocol descriptor for SELFEventProcessing);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for SiriAnalyticsStreaming(319, &lazy cache variable for type metadata for SELFWrapperCreating, &protocol descriptor for SELFWrapperCreating);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for SiriAnalyticsStreaming(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *OUTLINED_FUNCTION_4_10(uint64_t a1)
{
  v4 = (*(v1 + 32) + *(v2 + 28));
  result = __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  *(v1 + 16) = a1;
  return result;
}

uint64_t *OUTLINED_FUNCTION_10_9@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_1(v2);
}

uint64_t dispatch thunk of SELFUploading.uploadEvent(data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_11(a1, a2, a3);
  OUTLINED_FUNCTION_2_16();
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v5 = OUTLINED_FUNCTION_0_14(v4);

  return v6(v5);
}

uint64_t dispatch thunk of SELFUploading.uploadEvent(data:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of SELFUploading.send(data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_11(a1, a2, a3);
  OUTLINED_FUNCTION_2_16();
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v5 = OUTLINED_FUNCTION_0_14(v4);

  return v6(v5);
}

{
  OUTLINED_FUNCTION_1_11(a1, a2, a3);
  OUTLINED_FUNCTION_2_16();
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v5 = OUTLINED_FUNCTION_0_14(v4);

  return v6(v5);
}

uint64_t SELFWrapperFactory.init(logger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

id SELFWrapperFactory.createWrapper<A>(with:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v10 = [objc_allocWithZone(MEMORY[0x277D5A5E0]) init];
  v11 = v10;
  if (v10)
  {
    v43 = v10;
    v12 = *(v4 + 16);
    v12(v9, a1, a2);
    v13 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus, 0x277D5A5F0);
    if (OUTLINED_FUNCTION_1_12(v13))
    {
      v14 = v44;
      v11 = v43;
      [v43 setIntelligenceFeatureAvailabilityChangeStatus_];
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_4_11(v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        v18 = "Created wrapper for AvailabilityChangeStatus";
LABEL_11:
        _os_log_impl(&dword_227F43000, v15, v16, v18, v17, 2u);
        OUTLINED_FUNCTION_11();
        goto LABEL_12;
      }

      goto LABEL_12;
    }

    v24 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus, 0x277D5A5F8);
    if (OUTLINED_FUNCTION_1_12(v24))
    {
      v14 = v44;
      v11 = v43;
      [v43 setIntelligenceFeatureAvailabilityDetailedStatus_];
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_4_11(v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        v18 = "Created wrapper for AvailabilityDetailedStatus";
        goto LABEL_11;
      }

LABEL_12:

      (*(v4 + 8))(v9, a2);
      return v11;
    }

    v12(v7, a1, a2);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_4_11(v26))
    {
      v27 = swift_slowAlloc();
      v41 = v27;
      v42 = swift_slowAlloc();
      v44 = v42;
      *v27 = 136315138;
      swift_getDynamicType();
      v40 = _typeName(_:qualified:)();
      v29 = v28;
      v30 = *(v4 + 8);
      v31 = OUTLINED_FUNCTION_2_17();
      v30(v31);
      v32 = v30;
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v29, &v44);

      v34 = v41;
      *(v41 + 1) = v33;
      _os_log_impl(&dword_227F43000, v25, v26, "Unsupported container type: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();

      v35 = v32;
    }

    else
    {

      v35 = *(v4 + 8);
      v36 = OUTLINED_FUNCTION_2_17();
      v35(v36);
    }

    v11 = v43;
    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    v37 = swift_allocError();
    OUTLINED_FUNCTION_0_15(v37, v38);

    (v35)(v9, a2);
  }

  else
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_4_11(v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_227F43000, v19, v20, "Failed to create SADSchemaSADClientEvent wrapper", v21, 2u);
      OUTLINED_FUNCTION_11();
    }

    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    v22 = swift_allocError();
    OUTLINED_FUNCTION_0_15(v22, v23);
  }

  return v11;
}

uint64_t type metadata accessor for SELFWrapperFactory(uint64_t a1)
{
  result = type metadata singleton initialization cache for SELFWrapperFactory;
  if (!type metadata singleton initialization cache for SELFWrapperFactory)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_15(uint64_t a1, uint64_t a2)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 10;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_1_12(uint64_t a1)
{

  return swift_dynamicCast();
}

BOOL OUTLINED_FUNCTION_4_11(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id UnifiedAssetFrameworkReporter.init()@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() sharedManager];
  *a1 = result;
  return result;
}

Swift::UInt32_optional __swiftcall UnifiedAssetFrameworkReporter.downloadStatusFor(subscriber:subscriptionName:)(Swift::String subscriber, Swift::String subscriptionName)
{
  object = subscriptionName._object;
  countAndFlagsBits = subscriptionName._countAndFlagsBits;
  v5 = subscriber._object;
  v6 = subscriber._countAndFlagsBits;
  v7 = *v2;
  v8 = MEMORY[0x22AAADFF0]();
  v9 = MEMORY[0x22AAADFF0](countAndFlagsBits, object);
  v10 = [v7 downloadStatusForSubscriber:v8 subscriptionName:v9];

  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logging.general);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315650;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v17);
    *(v14 + 12) = 2080;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v17);
    *(v14 + 22) = 2048;
    *(v14 + 24) = v10;
    _os_log_impl(&dword_227F43000, v12, v13, "UAF download status for %s and %s: %lu", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAAF0A0](v15, -1, -1);
    MEMORY[0x22AAAF0A0](v14, -1, -1);
  }

  if (HIDWORD(v10))
  {
    __break(1u);
  }

  else
  {
    v18 = 0;
    return v10;
  }

  return v16;
}

uint64_t getEnumTagSinglePayload for UnifiedAssetFrameworkReporter(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for UnifiedAssetFrameworkReporter(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t MockUserDefaultsProvider.currentTimestamp.setter(double a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

double MockUserDefaultsProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 1744259200.0;
  *(v0 + 16) = xmmword_227FB4740;
  return result;
}

double MockUserDefaultsProvider.init()()
{
  result = 1744259200.0;
  *(v0 + 16) = xmmword_227FB4740;
  return result;
}

uint64_t MockUserDefaultsProvider.uploadTaskBookmark.setter(double a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t (*MockUserDefaultsProvider.uploadTaskBookmark.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = *(v1 + 16);
  return MockUserDefaultsProvider.uploadTaskBookmark.modify;
}

void MockUserDefaultsProvider.uploadTaskBookmark.modify(void **a1)
{
  v1 = *a1;
  *(v1[4] + 16) = v1[3];
  free(v1);
}

uint64_t (*protocol witness for UserDefaultsProviding.uploadTaskBookmark.modify in conformance MockUserDefaultsProvider(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = v4;
  swift_beginAccess();
  v3[3] = *(v4 + 16);
  return protocol witness for UserDefaultsProviding.uploadTaskBookmark.modify in conformance MockUserDefaultsProvider;
}

uint64_t UserDefaultsProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  UserDefaultsProvider.init()();
  return v0;
}

uint64_t UserDefaultsProvider.suiteSubsystem.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *UserDefaultsProvider.userDefaults.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *UserDefaultsProvider.init()()
{
  v1 = v0;
  v0[2] = 0xD000000000000024;
  v0[3] = 0x8000000227FB4BF0;
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = OUTLINED_FUNCTION_0_16();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [objc_opt_self() standardUserDefaults];
    v6 = v0[2];
    v7 = v1[3];

    v4 = MEMORY[0x22AAADFF0](v6, v7);

    [v5 addSuiteNamed_];
  }

  v8 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v9 = OUTLINED_FUNCTION_0_16();
  if (v9)
  {
    v1[4] = v9;
  }

  else
  {
    v1[4] = 0;
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logging.general);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      v15 = v1[2];
      v16 = v1[3];

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v19);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_227F43000, v11, v12, "Could not generate user defaults for suite %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x22AAAF0A0](v14, -1, -1);
      MEMORY[0x22AAAF0A0](v13, -1, -1);
    }
  }

  return v1;
}

void UserDefaultsProvider.uploadTaskBookmark.getter()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = MEMORY[0x22AAADFF0](0xD000000000000012, 0x8000000227FB6F10);
    [v1 doubleForKey_];
  }
}

void UserDefaultsProvider.uploadTaskBookmark.setter(double a1)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v4 = v2;
    v5 = MEMORY[0x22AAADFF0](0xD000000000000012, 0x8000000227FB6F10);
    [v4 setDouble:v5 forKey:a1];
  }
}

void (*UserDefaultsProvider.uploadTaskBookmark.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  UserDefaultsProvider.uploadTaskBookmark.getter();
  *a1 = v3;
  return UserDefaultsProvider.uploadTaskBookmark.modify;
}

double UserDefaultsProvider.getCurrentTimestamp.getter()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t UserDefaultsProvider.deinit()
{

  return v0;
}

uint64_t UserDefaultsProvider.__deallocating_deinit()
{
  UserDefaultsProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void (*protocol witness for UserDefaultsProviding.uploadTaskBookmark.modify in conformance UserDefaultsProvider(void *a1))(double *a1)
{
  a1[1] = *v1;
  UserDefaultsProvider.uploadTaskBookmark.getter();
  *a1 = v3;
  return UserDefaultsProvider.uploadTaskBookmark.modify;
}

id @nonobjc NSUserDefaults.init(suiteName:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x22AAADFF0](a1);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

id OUTLINED_FUNCTION_0_16()
{

  return @nonobjc NSUserDefaults.init(suiteName:)(0xD000000000000024, v0);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleIntelligenceReportingMobileAssetLog.json()()
{
  v0 = MEMORY[0x28217A060]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleIntelligenceReportingAvailabilityLog.json()()
{
  v0 = MEMORY[0x28217A0B8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleIntelligenceReportingModelCatalogLog.json()()
{
  v0 = MEMORY[0x28217A100]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleIntelligenceReportingUnifiedAssetFrameworkLog.json()()
{
  v0 = MEMORY[0x28217A1A0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FD988]();
}

{
  return MEMORY[0x2821FD990]();
}

{
  return MEMORY[0x2821FD998]();
}

{
  return MEMORY[0x2821FD9E8]();
}

{
  return MEMORY[0x2821FD9F0]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FDAC0]();
}

{
  return MEMORY[0x2821FDAC8]();
}

{
  return MEMORY[0x2821FDAD0]();
}

{
  return MEMORY[0x2821FDB20]();
}

{
  return MEMORY[0x2821FDB28]();
}

uint64_t UnkeyedEncodingContainer.encode<A>(contentsOf:)()
{
  return MEMORY[0x2821FDD88]();
}

{
  return MEMORY[0x2821FDD90]();
}

{
  return MEMORY[0x2821FDD98]();
}

{
  return MEMORY[0x2821FDDA0]();
}

{
  return MEMORY[0x2821FDDA8]();
}

{
  return MEMORY[0x2821FDDB0]();
}

{
  return MEMORY[0x2821FDDB8]();
}

{
  return MEMORY[0x2821FDDC0]();
}

{
  return MEMORY[0x2821FDDC8]();
}

{
  return MEMORY[0x2821FDDD0]();
}

{
  return MEMORY[0x2821FDDD8]();
}

{
  return MEMORY[0x2821FDDE0]();
}

{
  return MEMORY[0x2821FDDE8]();
}

{
  return MEMORY[0x2821FDDF0]();
}

{
  return MEMORY[0x2821FDDF8]();
}

{
  return MEMORY[0x2821FDE00]();
}

{
  return MEMORY[0x2821FDE08]();
}

uint64_t SingleValueEncodingContainer<>.encode(_:)()
{
  return MEMORY[0x2821FE000]();
}

{
  return MEMORY[0x2821FE008]();
}

uint64_t KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FE120]();
}

{
  return MEMORY[0x2821FE128]();
}