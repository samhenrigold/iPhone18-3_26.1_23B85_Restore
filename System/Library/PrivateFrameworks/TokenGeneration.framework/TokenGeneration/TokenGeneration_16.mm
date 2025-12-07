void TokenGenerator.complete(prompt:promptTemplateInfo:parameters:tools:toolChoice:documents:constraint:metadata:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t, void, uint64_t, uint64_t)@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v247 = a6;
  v239 = a5;
  v240 = a7;
  v241 = a4;
  v238 = a2;
  v271 = a1;
  v246 = a9;
  v220 = type metadata accessor for PromptTemplate.PromptTemplateRenderError();
  v218 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v219 = &v217 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v275 = type metadata accessor for ToolType();
  v281 = *(v275 - 1);
  MEMORY[0x1EEE9AC00](v275);
  v274 = &v217 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v273 = &v217 - v14;
  v269 = type metadata accessor for Schema();
  v231 = *(v269 - 8);
  MEMORY[0x1EEE9AC00](v269);
  v265 = &v217 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = type metadata accessor for FunctionDescription(0);
  MEMORY[0x1EEE9AC00](v264);
  v263 = &v217 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v268 = &v217 - v18;
  v267 = type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  MEMORY[0x1EEE9AC00](v267);
  v279 = (&v217 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v278 = type metadata accessor for ToolType(0);
  MEMORY[0x1EEE9AC00](v278);
  v282 = &v217 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v304 = &v217 - v22;
  v23 = type metadata accessor for ToolDescription(0);
  v280 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v230 = (&v217 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v285 = &v217 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v284 = &v217 - v28;
  v29 = type metadata accessor for ToolDescriptionEnvelope(0);
  v277 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v276 = &v217 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ToolChoice();
  v244 = *(v31 - 8);
  v245 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v227 = &v217 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v226 = &v217 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v225 = &v217 - v36;
  v283 = type metadata accessor for PromptVariant();
  v272 = *(v283 - 8);
  MEMORY[0x1EEE9AC00](v283);
  v224 = &v217 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v223 = &v217 - v39;
  v40 = type metadata accessor for Prompt();
  v41 = *(v40 - 8);
  v248 = v40;
  v249 = v41;
  MEMORY[0x1EEE9AC00](v40);
  v221 = &v217 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v222 = &v217 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v256 = &v217 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v242 = &v217 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v255 = &v217 - v50;
  v259 = type metadata accessor for PromptTemplateInfo();
  v261 = *(v259 - 8);
  MEMORY[0x1EEE9AC00](v259);
  v237 = &v217 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v258 = &v217 - v53;
  v262 = type metadata accessor for CompletePromptTemplateRequest(0);
  MEMORY[0x1EEE9AC00](v262);
  v260 = &v217 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v243 = &v217 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v233 = &v217 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v257 = &v217 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v229 = &v217 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  MEMORY[0x1EEE9AC00](v63 - 8);
  v232 = &v217 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v253 = &v217 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v228 = &v217 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v254 = &v217 - v70;
  v71 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v71);
  v75 = &v217 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = *(a3 + 176);
  v300 = *(a3 + 160);
  v301 = v76;
  v302 = *(a3 + 192);
  v303 = *(a3 + 208);
  v77 = *(a3 + 112);
  v296 = *(a3 + 96);
  v297 = v77;
  v78 = *(a3 + 144);
  v298 = *(a3 + 128);
  v299 = v78;
  v79 = *(a3 + 32);
  v293 = *(a3 + 48);
  v80 = *(a3 + 80);
  v294 = *(a3 + 64);
  v295 = v80;
  v81 = *(a3 + 16);
  v290 = *a3;
  v291 = v81;
  v292 = v79;
  v82 = *a8;
  v83 = a8[1];
  v85 = a8[2];
  v84 = a8[3];
  v86 = a8[4];
  v87 = a8[5];
  v88 = a8[6];
  if (v83)
  {
    v235 = v86;
    v236 = v82;
    v270 = v83;
    v234 = v85;
    v251 = v84;
    v252 = v87;
    v250 = v88;
  }

  else
  {
    v217 = v86;
    v252 = v72;
    v89 = v73;
    UUID.init()();
    v236 = UUID.uuidString.getter();
    v270 = v90;
    (*(v89 + 8))(v75, v252);
    v86 = v217;
    v251 = 0x80000001ABA429D0;
    v250 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v252 = 0;
    v234 = 0xD00000000000005ELL;
    v235 = 0;
  }

  type metadata accessor for CatalogClient();
  outlined copy of RequestMetadata?(v82, v83, v85, v84, v86, v87, v88);
  v91 = static CatalogClient.canAccessService()();
  v92 = v271;
  if ((v91 & 1) == 0)
  {
    v95 = v248;
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v100 = type metadata accessor for Logger();
    __swift_project_value_buffer(v100, static Log.generator);
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.debug.getter();
    v103 = os_log_type_enabled(v101, v102);
    v104 = v249;
    if (v103)
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&dword_1AB828000, v101, v102, "Skipping fallback prompt rendering since this process is not entitled.", v105, 2u);
      MEMORY[0x1AC5A6CD0](v105, -1, -1);
    }

    v97 = v254;
    v104[7](v254, 1, 1, v95);
    goto LABEL_23;
  }

  v93 = v229;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v271, v229, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  v94 = (*(v272 + 48))(v93, 1, v283);
  v95 = v248;
  if (v94 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v93, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    v96 = 1;
    v97 = v254;
    v98 = v249;
    v99 = v228;
  }

  else
  {
    v99 = v228;
    v106 = v266;
    PromptVariant.tgPrompt.getter();
    v98 = v249;
    if (v106)
    {
      (*(v272 + 8))(v93, v283);
      *&v288[0] = v106;
      MEMORY[0x1AC5A6AE0](v106);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v108 = v219;
      v107 = v220;
      if (swift_dynamicCast())
      {
        v109 = v218;
        if ((*(v218 + 88))(v108, v107) == *MEMORY[0x1E69DA8D8])
        {

          if (one-time initialization token for generator != -1)
          {
            swift_once();
          }

          v110 = type metadata accessor for Logger();
          __swift_project_value_buffer(v110, static Log.generator);
          v111 = Logger.logObject.getter();
          v112 = static os_log_type_t.error.getter();
          v113 = os_log_type_enabled(v111, v112);
          v92 = v271;
          if (v113)
          {
            v114 = swift_slowAlloc();
            *v114 = 0;
            _os_log_impl(&dword_1AB828000, v111, v112, "Ignoring missing prompt template when attempting to render. Sending nil prompt to inference provider", v114, 2u);
            MEMORY[0x1AC5A6CD0](v114, -1, -1);
          }

          v97 = v254;
          v98[7](v254, 1, 1, v95);

          v266 = 0;
          goto LABEL_22;
        }

        (*(v109 + 8))(v108, v107);
      }

      else
      {
      }

      return;
    }

    v266 = 0;
    (*(v272 + 8))(v93, v283);
    v96 = 0;
    v97 = v254;
    v92 = v271;
  }

  v98[7](v99, v96, 1, v95);
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v99, v97, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
LABEL_22:
  v104 = v98;
LABEL_23:
  v115 = v261;
  v116 = v253;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v97, v253, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v92, v257, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  v117 = *(v115 + 16);
  v271 = v115 + 16;
  v249 = v117;
  (v117)(v258, v238, v259);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v239, v255, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v240, v256, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  outlined init with copy of SamplingParameters(&v290, v288);
  v118 = v260;
  XPCDictionary.init()();
  v119 = v262;
  v120 = v118 + v262[5];
  *v120 = 0u;
  *(v120 + 16) = 0u;
  v121 = v119[6];
  v122 = type metadata accessor for PromptVariantEnvelope(0);
  v123 = *(v122 - 8);
  v124 = *(v123 + 56);
  v248 = v121;
  v239 = v123 + 56;
  v240 = v124;
  v124(v118 + v121, 1, 1, v122);
  v125 = v116;
  v126 = v232;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v125, v232, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  if ((v104[6])(v126, 1, v95) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v126, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  }

  else
  {
    v127 = v104;
    v128 = v222;
    (v104[4])(v222, v126, v95);
    v129 = v221;
    (v104[2])(v221, v128, v95);
    v130 = specialized PromptEnvelope.init(sealing:xpcData:)(v129, v118);
    v132 = v131;
    v133 = v95;
    v135 = v134;
    v137 = v136;
    (v127[1])(v128, v133);
    *v120 = v130;
    *(v120 + 8) = v132;
    *(v120 + 16) = v135;
    *(v120 + 24) = v137;
  }

  v138 = v283;
  v139 = v233;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v257, v233, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  v140 = v272;
  if ((*(v272 + 48))(v139, 1, v138) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v139, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    v141 = v260;
  }

  else
  {
    v142 = v223;
    (*(v140 + 32))(v223, v139, v138);
    v143 = v224;
    (*(v140 + 16))(v224, v142, v138);
    v144 = v140;
    v145 = v225;
    v146 = v143;
    v141 = v260;
    PromptVariantEnvelope.init(sealing:xpcData:)(v146, v260, v225);
    (*(v144 + 8))(v142, v138);
    v240(v145, 0, 1, v122);
    outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v145, v141 + v248, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  }

  v147 = v237;
  v148 = v259;
  (v249)(v237, v258, v259);
  v149 = v262;
  v150 = (v141 + v262[7]);
  v150[1] = PromptTemplateInfo.templateID.getter();
  v150[2] = v151;
  v152 = PromptTemplateInfo.richVariableBindings.getter();
  v153 = v266;
  v155 = specialized _NativeDictionary.mapValues<A>(_:)(v152, v141, v154);
  v266 = v153;

  *v150 = v155;
  type metadata accessor for PromptTemplateInfoEnvelope(0);
  PromptTemplateInfo.locale.getter();
  v156 = *(v261 + 8);
  v261 += 8;
  v249 = v156;
  (v156)(v147, v148);
  v286[10] = v300;
  v286[11] = v301;
  v286[12] = v302;
  v287 = v303;
  v286[6] = v296;
  v286[7] = v297;
  v286[8] = v298;
  v286[9] = v299;
  v286[2] = v292;
  v286[3] = v293;
  v286[4] = v294;
  v286[5] = v295;
  v286[0] = v290;
  v286[1] = v291;
  SamplingParametersEnvelope.init(sealing:)(v286, v288);
  v157 = v141 + v149[8];
  v158 = v288[5];
  *(v157 + 64) = v288[4];
  *(v157 + 80) = v158;
  v159 = v288[3];
  *(v157 + 32) = v288[2];
  *(v157 + 48) = v159;
  v160 = v288[9];
  *(v157 + 128) = v288[8];
  *(v157 + 144) = v160;
  v161 = v288[7];
  *(v157 + 96) = v288[6];
  *(v157 + 112) = v161;
  *(v157 + 208) = v289;
  v162 = v288[12];
  *(v157 + 176) = v288[11];
  *(v157 + 192) = v162;
  *(v157 + 160) = v288[10];
  v163 = v288[1];
  *v157 = v288[0];
  *(v157 + 16) = v163;
  v164 = (v141 + v149[13]);
  v165 = v270;
  *v164 = v236;
  v164[1] = v165;
  v166 = v251;
  v164[2] = v234;
  v164[3] = v166;
  v167 = v252;
  v164[4] = v235;
  v164[5] = v167;
  v164[6] = v250;
  v168 = v241;
  v169 = *(v241 + 16);
  v170 = MEMORY[0x1E69E7CC0];
  if (v169)
  {
    *&v286[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v169, 0);
    v171 = *&v286[0];
    v172 = *(v281 + 16);
    v173 = v168 + ((*(v281 + 80) + 32) & ~*(v281 + 80));
    v271 = *(v281 + 72);
    v272 = v172;
    v281 += 16;
    v270 = (v281 - 8);
    v174 = v230;
    do
    {
      v283 = v169;
      v175 = v171;
      v176 = v273;
      v177 = v275;
      v178 = v174;
      v179 = v272;
      (v272)(v273, v173, v275);
      v180 = v274;
      v179(v274, v176, v177);
      v174 = v178;
      ToolDescription.init(toolType:)(v180, v178);
      v181 = v176;
      v171 = v175;
      (*v270)(v181, v177);
      *&v286[0] = v175;
      v183 = *(v175 + 2);
      v182 = *(v175 + 3);
      if (v183 >= v182 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v182 > 1), v183 + 1, 1);
        v171 = *&v286[0];
      }

      *(v171 + 2) = v183 + 1;
      outlined init with take of ToolDescription(v178, &v171[((*(v280 + 80) + 32) & ~*(v280 + 80)) + *(v280 + 72) * v183], type metadata accessor for ToolDescription);
      v173 += v271;
      v169 = v283 - 1;
    }

    while (v283 != 1);
    v170 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v171 = MEMORY[0x1E69E7CC0];
  }

  v184 = *(v171 + 2);
  if (v184)
  {
    *&v286[0] = v170;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v184, 0);
    v185 = *&v286[0];
    v186 = &v171[(*(v280 + 80) + 32) & ~*(v280 + 80)];
    v283 = *(v280 + 72);
    v280 = v231 + 16;
    v274 = v171;
    v275 = (v231 + 8);
    do
    {
      v187 = v284;
      outlined init with copy of ToolDescription(v186, v284, type metadata accessor for ToolDescription);
      v188 = v187;
      v189 = v285;
      outlined init with copy of ToolDescription(v188, v285, type metadata accessor for ToolDescription);
      v190 = v189;
      v191 = v304;
      outlined init with copy of ToolDescription(v190, v304, type metadata accessor for ToolType);
      outlined init with copy of ToolDescription(v191, v282, type metadata accessor for ToolType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          outlined destroy of ToolType(v304, type metadata accessor for ToolType);
          v194 = type metadata accessor for FileGenerationParameters();
        }

        else
        {
          outlined destroy of ToolType(v304, type metadata accessor for ToolType);
          v194 = type metadata accessor for ImageGenerationParameters();
        }

        v193 = v279;
        (*(*(v194 - 8) + 32))(v279, v282, v194);
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v195 = v268;
        outlined init with take of ToolDescription(v282, v268, type metadata accessor for FunctionDescription);
        v196 = v263;
        outlined init with copy of ToolDescription(v195, v263, type metadata accessor for FunctionDescription);
        v197 = *v196;
        v281 = *(v196 + 1);
        v198 = v281;
        v193 = v279;
        v199 = v280;
        *v279 = v197;
        v193[1] = v198;
        v200 = *(v196 + 3);
        v193[2] = *(v196 + 2);
        v193[3] = v200;
        v201 = v265;
        (*v199)(v265, &v196[*(v264 + 24)], v269);
        type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0);

        Schema.type.getter();
        outlined destroy of ToolType(v304, type metadata accessor for ToolType);
        (*v275)(v201, v269);
        outlined destroy of ToolType(v196, type metadata accessor for FunctionDescription);
        outlined destroy of ToolType(v268, type metadata accessor for FunctionDescription);
      }

      else
      {
        outlined destroy of ToolType(v304, type metadata accessor for ToolType);
        v193 = v279;
      }

      swift_storeEnumTagMultiPayload();
      v202 = v276;
      outlined init with take of ToolDescription(v193, v276, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
      outlined destroy of ToolType(v285, type metadata accessor for ToolDescription);
      outlined destroy of ToolType(v284, type metadata accessor for ToolDescription);
      *&v286[0] = v185;
      v204 = *(v185 + 16);
      v203 = *(v185 + 24);
      if (v204 >= v203 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v203 > 1), v204 + 1, 1);
        v185 = *&v286[0];
      }

      *(v185 + 16) = v204 + 1;
      outlined init with take of ToolDescription(v202, v185 + ((*(v277 + 80) + 32) & ~*(v277 + 80)) + *(v277 + 72) * v204, type metadata accessor for ToolDescriptionEnvelope);
      v186 += v283;
      --v184;
    }

    while (v184);
  }

  else
  {

    v185 = MEMORY[0x1E69E7CC0];
  }

  v205 = v260;
  *(v260 + v262[9]) = v185;
  v206 = v255;
  v207 = v242;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v255, v242, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v209 = v244;
  v208 = v245;
  if ((*(v244 + 48))(v207, 1, v245) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v206, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    (v249)(v258, v259);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v257, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v253, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
    v210 = xmmword_1ABA26F10;
  }

  else
  {
    v211 = v226;
    (*(v209 + 32))(v226, v207, v208);
    v212 = v227;
    (*(v209 + 16))(v227, v211, v208);
    ToolChoiceEnvelope.init(sealing:)(v212, v286);
    (*(v209 + 8))(v211, v208);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v206, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    (v249)(v258, v259);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v257, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v253, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
    v210 = v286[0];
  }

  v213 = v247;
  v214 = v246;
  v215 = v243;
  v216 = v262;
  *(v205 + v262[10]) = v210;
  *(v205 + v216[11]) = v213;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v256, v205 + v216[12], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  outlined init with take of ToolDescription(v205, v215, type metadata accessor for CompletePromptTemplateRequest);

  TokenGenerator.handleCompletePromptTemplateRequest(request:)(v215, v214);
  outlined destroy of ToolType(v215, type metadata accessor for CompletePromptTemplateRequest);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v254, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
}

uint64_t TokenGenerator.complete<A>(prompt:parameters:tools:toolChoice:documents:generating:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v227 = a1;
  v201 = a7;
  v183 = a5;
  v184 = a8;
  v212 = a4;
  v185 = a3;
  v200 = a9;
  v204 = type metadata accessor for FunctionDescription(0);
  MEMORY[0x1EEE9AC00](v204);
  v225 = (v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v205 = v168 - v13;
  v219 = type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  MEMORY[0x1EEE9AC00](v219);
  v218 = (v168 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v217 = type metadata accessor for ToolType(0);
  MEMORY[0x1EEE9AC00](v217);
  v216 = v168 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v263 = (v168 - v17);
  v18 = type metadata accessor for ToolDescription(0);
  v222 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v175 = (v168 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v228 = v168 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v223 = (v168 - v23);
  v24 = type metadata accessor for ToolDescriptionEnvelope(0);
  v215 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v214 = v168 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v208 = v168 - v27;
  v221 = type metadata accessor for AnyTooling(0);
  v206 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  v220 = v168 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = type metadata accessor for ToolType();
  v224 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229);
  v213 = v168 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v231 = v168 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v230 = v168 - v33;
  v34 = type metadata accessor for ToolChoice();
  v181 = *(v34 - 8);
  v182 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v174 = v168 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v180 = v168 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v179 = v168 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v187 = v168 - v41;
  v194 = type metadata accessor for PromptVariant();
  v188 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v211 = (v168 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v43);
  v193 = v168 - v44;
  v198 = type metadata accessor for CompletePromptRequest(0);
  MEMORY[0x1EEE9AC00](v198);
  v195 = v168 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v190 = v168 - v47;
  v48 = type metadata accessor for Prompt();
  v196 = *(v48 - 8);
  v197 = v48;
  MEMORY[0x1EEE9AC00](v48);
  v210 = v168 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v192 = v168 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v54 = v168 - v53;
  v207 = type metadata accessor for Schema();
  v199 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v203 = v168 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v58 = v168 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v186 = v168 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v62 = *(a2 + 176);
  v259 = *(a2 + 160);
  v260 = v62;
  v261 = *(a2 + 192);
  v262 = *(a2 + 208);
  v63 = *(a2 + 112);
  v255 = *(a2 + 96);
  v256 = v63;
  v64 = *(a2 + 144);
  v257 = *(a2 + 128);
  v258 = v64;
  v65 = *(a2 + 32);
  v252 = *(a2 + 48);
  v66 = *(a2 + 80);
  v253 = *(a2 + 64);
  v254 = v66;
  v67 = *(a2 + 16);
  v69 = v168 - v68;
  v249 = *a2;
  v250 = v67;
  v251 = v65;
  v70 = *a6;
  v71 = a6[1];
  v72 = a6[3];
  v177 = a6[2];
  v178 = v70;
  v73 = a6[5];
  v176 = a6[4];
  v74 = a6[6];
  dispatch thunk of static Generable.schema.getter();
  Schema.type.getter();
  v75 = v58;
  v76 = v71;
  v77 = v199 + 8;
  v202 = *(v199 + 8);
  v202(v75, v207);
  v78 = type metadata accessor for Constraints(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v78 - 8) + 56))(v69, 0, 1, v78);

  v189 = v54;
  v79 = v226;
  PromptVariant.tgPrompt.getter();
  if (v79)
  {

    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v69, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  }

  else
  {
    v191 = v77;
    v168[1] = 0;
    v81 = v197;
    v209 = *(v196 + 16);
    (v209)(v192, v189, v197);
    v226 = *(v188 + 16);
    (v226)(v193, v227, v194);
    v169 = v69;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v69, v186, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v212, v187, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v173 = v76;

    v172 = v72;

    v171 = v73;

    v170 = v74;

    outlined init with copy of SamplingParameters(&v249, v246);
    v82 = v195;
    XPCDictionary.init()();
    v83 = v210;
    (v209)(v210, v192, v81);
    v84 = specialized PromptEnvelope.init(sealing:xpcData:)(v83, v82);
    v85 = v198;
    v86 = (v82 + *(v198 + 20));
    *v86 = v84;
    v86[1] = v87;
    v86[2] = v88;
    v86[3] = v89;
    v90 = v211;
    (v226)(v211, v193, v194);
    PromptVariantEnvelope.init(sealing:xpcData:)(v90, v82, v82 + v85[6]);
    v242 = v259;
    v243 = v260;
    v244 = v261;
    v245 = v262;
    v238 = v255;
    v239 = v256;
    v240 = v257;
    v241 = v258;
    v234 = v251;
    v235 = v252;
    v236 = v253;
    v237 = v254;
    v232 = v249;
    v233 = v250;
    SamplingParametersEnvelope.init(sealing:)(&v232, v246);
    v91 = v82 + v85[7];
    v92 = v246[11];
    *(v91 + 160) = v246[10];
    *(v91 + 176) = v92;
    *(v91 + 192) = v246[12];
    *(v91 + 208) = v247;
    v93 = v246[7];
    *(v91 + 96) = v246[6];
    *(v91 + 112) = v93;
    v94 = v246[9];
    *(v91 + 128) = v246[8];
    *(v91 + 144) = v94;
    v95 = v246[3];
    *(v91 + 32) = v246[2];
    *(v91 + 48) = v95;
    v96 = v246[5];
    *(v91 + 64) = v246[4];
    *(v91 + 80) = v96;
    v97 = v246[1];
    *v91 = v246[0];
    *(v91 + 16) = v97;
    v98 = *(v185 + 16);
    v99 = MEMORY[0x1E69E7CC0];
    v227 = v98;
    if (v98)
    {
      v100 = v185;
      *&v232 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v98, 0);
      v101 = v232;
      v102 = *(v224 + 16);
      v103 = v100 + ((*(v224 + 80) + 32) & ~*(v224 + 80));
      v210 = *(v224 + 72);
      v211 = v102;
      v212 = v224 + 16;
      v209 = (v224 + 8);
      v104 = v98;
      v105 = v231;
      v106 = v175;
      do
      {
        v226 = v104;
        v107 = v229;
        v108 = v211;
        v211(v105, v103, v229);
        v109 = v213;
        v108(v213, v105, v107);
        ToolDescription.init(toolType:)(v109, v106);
        (*v209)(v105, v107);
        *&v232 = v101;
        v111 = *(v101 + 2);
        v110 = *(v101 + 3);
        if (v111 >= v110 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v110 > 1), v111 + 1, 1);
          v101 = v232;
        }

        *(v101 + 2) = v111 + 1;
        outlined init with take of ToolDescription(v106, &v101[((*(v222 + 80) + 32) & ~*(v222 + 80)) + *(v222 + 72) * v111], type metadata accessor for ToolDescription);
        v103 += v210;
        v104 = v226 - 1;
        v105 = v231;
      }

      while (v226 != 1);
      v85 = v198;
      v99 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v101 = MEMORY[0x1E69E7CC0];
    }

    v112 = *(v101 + 2);
    v113 = v225;
    v114 = v263;
    v116 = v222;
    v115 = v223;
    if (v112)
    {
      *&v232 = v99;
      v117 = v101;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v112, 0);
      v118 = v232;
      v119 = *(v116 + 80);
      v213 = v117;
      v120 = &v117[(v119 + 32) & ~v119];
      v226 = *(v116 + 72);
      v222 = v199 + 16;
      do
      {
        outlined init with copy of ToolDescription(v120, v115, type metadata accessor for ToolDescription);
        v121 = v115;
        v122 = v228;
        outlined init with copy of ToolDescription(v121, v228, type metadata accessor for ToolDescription);
        outlined init with copy of ToolDescription(v122, v114, type metadata accessor for ToolType);
        v123 = v216;
        outlined init with copy of ToolDescription(v114, v216, type metadata accessor for ToolType);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            outlined destroy of ToolType(v263, type metadata accessor for ToolType);
            v126 = type metadata accessor for FileGenerationParameters();
          }

          else
          {
            outlined destroy of ToolType(v263, type metadata accessor for ToolType);
            v126 = type metadata accessor for ImageGenerationParameters();
          }

          v125 = v218;
          (*(*(v126 - 8) + 32))(v218, v123, v126);
        }

        else if (EnumCaseMultiPayload == 2)
        {
          v127 = v123;
          v128 = v205;
          outlined init with take of ToolDescription(v127, v205, type metadata accessor for FunctionDescription);
          outlined init with copy of ToolDescription(v128, v113, type metadata accessor for FunctionDescription);
          v129 = v113[1];
          v130 = v218;
          *v218 = *v113;
          v130[1] = v129;
          v131 = v113;
          v132 = v113[2];
          v133 = v113[3];
          v130[2] = v132;
          v130[3] = v133;
          v134 = v203;
          (*v222)(v203, &v131[*(v204 + 24)], v207);
          type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0);

          v125 = v130;

          Schema.type.getter();
          outlined destroy of ToolType(v263, type metadata accessor for ToolType);
          v202(v134, v207);
          outlined destroy of ToolType(v225, type metadata accessor for FunctionDescription);
          outlined destroy of ToolType(v205, type metadata accessor for FunctionDescription);
        }

        else
        {
          outlined destroy of ToolType(v263, type metadata accessor for ToolType);
          v125 = v218;
        }

        v115 = v223;
        v135 = v214;
        swift_storeEnumTagMultiPayload();
        outlined init with take of ToolDescription(v125, v135, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
        outlined destroy of ToolType(v228, type metadata accessor for ToolDescription);
        outlined destroy of ToolType(v115, type metadata accessor for ToolDescription);
        *&v232 = v118;
        v137 = *(v118 + 16);
        v136 = *(v118 + 24);
        if (v137 >= v136 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v136 > 1), v137 + 1, 1);
          v118 = v232;
        }

        *(v118 + 16) = v137 + 1;
        outlined init with take of ToolDescription(v135, v118 + ((*(v215 + 80) + 32) & ~*(v215 + 80)) + *(v215 + 72) * v137, type metadata accessor for ToolDescriptionEnvelope);
        v113 = v225;
        v120 += v226;
        --v112;
        v114 = v263;
      }

      while (v112);

      v138 = v182;
      v85 = v198;
    }

    else
    {

      v118 = MEMORY[0x1E69E7CC0];
      v138 = v182;
    }

    *&v195[v85[9]] = v118;
    v139 = v187;
    v140 = v179;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v187, v179, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v141 = v181;
    v142 = (*(v181 + 48))(v140, 1, v138);
    v143 = v208;
    v144 = v196;
    v145 = v180;
    if (v142 == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v139, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v188 + 8))(v193, v194);
      v223 = *(v144 + 8);
      v223(v192, v197);
      v146 = xmmword_1ABA26F10;
    }

    else
    {
      (*(v141 + 32))(v180, v140, v138);
      v147 = v139;
      v148 = v145;
      v149 = v174;
      (*(v141 + 16))(v174, v148, v138);
      ToolChoiceEnvelope.init(sealing:)(v149, &v232);
      (*(v141 + 8))(v148, v138);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v147, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v188 + 8))(v193, v194);
      v223 = *(v144 + 8);
      v223(v192, v197);
      v146 = v232;
    }

    v150 = v198;
    v151 = v195;
    *&v195[*(v198 + 40)] = v146;
    v152 = (v151 + v150[12]);
    v153 = v173;
    *v152 = v178;
    v152[1] = v153;
    v154 = v172;
    v152[2] = v177;
    v152[3] = v154;
    v155 = v170;
    v156 = v171;
    v152[4] = v176;
    v152[5] = v156;
    v152[6] = v155;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v186, v151 + v150[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    *(v151 + v150[11]) = v183;
    outlined init with take of ToolDescription(v151, v190, type metadata accessor for CompletePromptRequest);
    if (v227)
    {
      v263 = *(v224 + 16);
      v157 = v185 + ((*(v224 + 80) + 32) & ~*(v224 + 80));
      v228 = *(v224 + 72);
      v226 = v224 + 8;
      v224 += 16;
      v225 = (v206 + 48);

      v158 = MEMORY[0x1E69E7CC0];
      v159 = v230;
      do
      {
        v160 = v229;
        v161 = v263;
        (v263)(v159, v157, v229);
        v162 = v231;
        v161(v231, v230, v160);
        v163 = v162;
        v159 = v230;
        AnyTooling.init(_:)(v163, v143);
        (*v226)(v159, v160);
        if ((*v225)(v143, 1, v221) == 1)
        {
          outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v143, &_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
        }

        else
        {
          outlined init with take of ToolDescription(v143, v220, type metadata accessor for AnyTooling);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v158 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v158[2] + 1, 1, v158, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMR, type metadata accessor for AnyTooling);
          }

          v164 = v206;
          v166 = v158[2];
          v165 = v158[3];
          if (v166 >= v165 >> 1)
          {
            v158 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v165 > 1), v166 + 1, 1, v158, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMR, type metadata accessor for AnyTooling);
          }

          v158[2] = v166 + 1;
          outlined init with take of ToolDescription(v220, v158 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v166, type metadata accessor for AnyTooling);
          v143 = v208;
        }

        v157 += v228;
        --v227;
      }

      while (v227);
    }

    else
    {

      v158 = MEMORY[0x1E69E7CC0];
    }

    v167 = v190;
    TokenGenerator.handleCompletePromptRequest(request:tools:)(v190, v158, v248);

    outlined destroy of ToolType(v167, type metadata accessor for CompletePromptRequest);
    v223(v189, v197);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v169, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v232 = v248[0];
    v233 = v248[1];
    TokenStream<>.map<A>(_:)(v184);
  }
}

uint64_t TokenGenerator.complete<A>(prompt:promptTemplateInfo:parameters:tools:toolChoice:documents:generating:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v48 = a5;
  v49 = a6;
  v46 = a2;
  v47 = a4;
  v45 = a1;
  v39 = a8;
  v51 = a10;
  v44 = type metadata accessor for Schema();
  v12 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v38 - v16);
  v18 = a3[10];
  v19 = a3[12];
  v64 = a3[11];
  v65 = v19;
  v20 = a3[6];
  v21 = a3[8];
  v22 = a3[9];
  v60 = a3[7];
  v61 = v21;
  v62 = v22;
  v63 = v18;
  v23 = a3[3];
  v55 = a3[2];
  v56 = v23;
  v24 = a3[5];
  v57 = a3[4];
  v66 = *(a3 + 104);
  v58 = v24;
  v59 = v20;
  v25 = a3[1];
  v53 = *a3;
  v54 = v25;
  v26 = *a7;
  v27 = a7[1];
  v28 = a7[2];
  v42 = a7[3];
  v43 = v28;
  v30 = a7[4];
  v29 = a7[5];
  v40 = v26;
  v41 = v30;
  v68 = v29;
  v31 = a7[6];
  v38 = a9;
  dispatch thunk of static Generable.schema.getter();
  Schema.type.getter();
  (*(v12 + 8))(v14, v44);
  v32 = type metadata accessor for Constraints(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v32 - 8) + 56))(v17, 0, 1, v32);
  v52[0] = v26;
  v52[1] = v27;
  v34 = v42;
  v33 = v43;
  v52[2] = v43;
  v52[3] = v42;
  v35 = v41;
  v52[4] = v41;
  v52[5] = v68;
  v52[6] = v31;

  v36 = v50;
  TokenGenerator.complete(prompt:promptTemplateInfo:parameters:tools:toolChoice:documents:constraint:metadata:)(v45, v46, &v53, v47, v48, v49, v17, v52, v67);
  outlined consume of RequestMetadata?(v40, v27, v33, v34, v35, v68, v31);
  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  if (!v36)
  {
    v53 = v67[0];
    v54 = v67[1];
    TokenStream<>.map<A>(_:)(v39);
  }

  return result;
}

uint64_t specialized TokenStream.contentAndPromptCompletion()(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  v5[10] = a3;
  v5[11] = a5;
  v5[9] = a1;
  v5[12] = *(type metadata accessor for PromptCompletion.Segment(0) - 8);
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for String.Encoding();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v8 = type metadata accessor for PromptCompletion.Content(0);
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v9 = type metadata accessor for InferenceResponse.Content();
  v5[21] = v9;
  v5[22] = *(v9 - 8);
  v5[23] = swift_task_alloc();
  type metadata accessor for PromptCompletion(0);
  v10 = swift_task_alloc();
  v5[24] = v10;

  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v5[25] = v11;
  *v11 = v5;
  v11[1] = specialized TokenStream.contentAndPromptCompletion();

  return v13(v10);
}

uint64_t specialized TokenStream.contentAndPromptCompletion()()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = specialized TokenStream.contentAndPromptCompletion();
  }

  else
  {
    v2 = specialized TokenStream.contentAndPromptCompletion();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v76 = v0;
  v1 = v0[9];
  outlined init with take of ToolDescription(v0[24], v1, type metadata accessor for PromptCompletion);

  v2 = *(v1 + 32);
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
    v4 = *(v3 + 16);
    v5 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      v6 = v0[18];
      v7 = v0[12];
      v72 = MEMORY[0x1E69E7CC0];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
      v5 = v72;
      v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v9 = *(v7 + 72);
      do
      {
        v10 = v0[19];
        v11 = v0[13];
        outlined init with copy of ToolDescription(v8, v11, type metadata accessor for PromptCompletion.Segment);
        outlined init with copy of ToolDescription(v11, v10, type metadata accessor for PromptCompletion.Content);
        outlined destroy of ToolType(v11, type metadata accessor for PromptCompletion.Segment);
        v72 = v5;
        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
          v5 = v72;
        }

        v14 = v0[19];
        *(v5 + 16) = v13 + 1;
        outlined init with take of ToolDescription(v14, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, type metadata accessor for PromptCompletion.Content);
        v8 += v9;
        --v4;
      }

      while (v4);
    }

    v15 = *(v5 + 16);
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_30:

    v38 = MEMORY[0x1E69E7CC0];
    v39 = MEMORY[0x1E69E7CC0];
    goto LABEL_31;
  }

  v40 = MEMORY[0x1E69E7CC0];
  v42 = v0[22];
  v41 = v0[23];
  v43 = v0[21];
  v44 = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV7ContentOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV7ContentOGMR);
  v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1ABA1D930;
  v72 = 0;
  v73 = 0xE000000000000000;
  v74 = v40;
  v75 = xmmword_1ABA1D8C0;
  InferenceResponse.TextContent.init(_:)(&v72, v41);
  (*(v42 + 104))(v41, *MEMORY[0x1E69C64C0], v43);
  PromptCompletion.Content.init(_:)(v41, (v5 + v45));
  v15 = *(v5 + 16);
  if (!v15)
  {
    goto LABEL_30;
  }

LABEL_9:
  v67 = v0[20];
  v16 = v0[18];
  v17 = v5 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v18 = *(v16 + 72);
  v68 = (v0[15] + 8);
  v66 = v0[26];
  v69 = v18;
  v70 = MEMORY[0x1E69E7CC0];
  v64 = MEMORY[0x1E69E7CC0];
  do
  {
    outlined init with copy of ToolDescription(v17, v0[20], type metadata accessor for PromptCompletion.Content);
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of ToolType(v0[20], type metadata accessor for PromptCompletion.Content);
    }

    else
    {
      v19 = v0[16];
      v20 = v0[14];
      v21 = *(v67 + 24);
      v22 = *(v67 + 32);
      static String.Encoding.utf8.getter();
      v23 = String.data(using:allowLossyConversion:)();
      v24 = v19;
      v26 = v25;
      (*v68)(v24, v20);
      if (v26 >> 60 == 15)
      {

        outlined consume of Data?(v21, v22);
        v18 = v69;
      }

      else
      {
        v27 = v21;
        v65 = v26;
        static Generable.decode(data:)();
        if (v66)
        {
          swift_getErrorValue();
          v28 = Error.localizedDescription.getter();
          v61 = v29;
          v62 = v28;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v70 + 2) + 1, 1, v70);
          }

          v31 = *(v70 + 2);
          v30 = *(v70 + 3);
          if (v31 >= v30 >> 1)
          {
            v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v70);
          }

          outlined consume of Data?(v23, v26);

          outlined consume of Data?(v21, v22);
          v66 = 0;
          *(v70 + 2) = v31 + 1;
          v32 = &v70[16 * v31];
          *(v32 + 4) = v62;
          *(v32 + 5) = v61;
        }

        else
        {
          v33 = v0[6];
          v63 = v0[5];

          v34 = v64;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v64 + 2) + 1, 1, v64);
          }

          v36 = *(v34 + 2);
          v35 = *(v34 + 3);
          if (v36 >= v35 >> 1)
          {
            v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v34);
          }

          else
          {
            v64 = v34;
          }

          outlined consume of Data?(v23, v65);

          outlined consume of Data?(v27, v22);

          v66 = 0;
          *(v64 + 2) = v36 + 1;
          v37 = &v64[16 * v36];
          *(v37 + 4) = v63;
          *(v37 + 5) = v33;
        }

        v18 = v69;
      }
    }

    v17 += v18;
    --v15;
  }

  while (v15);

  v38 = v70;
  v39 = v64;
LABEL_31:
  v46 = *(v39 + 2);
  if (v46)
  {
    v47 = &v39[16 * v46 + 16];
    v48 = *(v47 + 1);
    v71 = *v47;

    v49 = v0[1];

    return v49(v71, v48);
  }

  else
  {
    v51 = 0xD00000000000002DLL;

    if (*(v38 + 2))
    {
      v72 = 0;
      v73 = 0xE000000000000000;
      _StringGuts.grow(_:)(79);
      MEMORY[0x1AC5A5BC0](0xD00000000000004DLL, 0x80000001ABA42D20);
      v0[7] = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
      v52 = BidirectionalCollection<>.joined(separator:)();
      v54 = v53;

      MEMORY[0x1AC5A5BC0](v52, v54);

      v51 = v72;
      v55 = v73;
    }

    else
    {

      v55 = 0x80000001ABA42D70;
    }

    v56 = v0[9];
    type metadata accessor for TokenGenerationError(0);
    lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
    swift_allocError();
    v58 = v57;
    v59 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *v58 = v51;
    v58[1] = v55;
    v58[2] = 0;
    v58[3] = 0;
    v58[4] = 0;
    v58[5] = v59;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined destroy of ToolType(v56, type metadata accessor for PromptCompletion);

    v60 = v0[1];

    return v60();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentVG_0dE00ghI8Envelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0jklN0V0mN0Vs5NeverOTg504_s15d12Generation26ghi11Envelope33_opqrstuvw6LLV019jklu69V7sealing7xpcDataAF0aB4Core0cdE0V0pqR0V_3XPC13XPCDictionaryVztcfcAF09mU12VAM0Y0VXEfU_3XPC13XPCDictionaryVTf1cn_n(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v67 = type metadata accessor for UUID();
  v4 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content.ImageSurface();
  v93 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v65 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content.Text();
  v92 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v59 - v9;
  v91 = type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope(0);
  MEMORY[0x1EEE9AC00](v91);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content();
  v85 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v59 - v16;
  v18 = type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope(0);
  v90 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v81 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = *(a1 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  if (!v21)
  {
    return v22;
  }

  v59 = v2;
  v94 = MEMORY[0x1E69E7CC0];
  v23 = v4;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
  v22 = v94;
  v24 = *(type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component() - 8);
  v25 = v20 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
  v26 = v85;
  v89 = (v85 + 2);
  v88 = (v85 + 11);
  v87 = *MEMORY[0x1E69DA8A8];
  v76 = *MEMORY[0x1E69DA8B0];
  v70 = *MEMORY[0x1E69DA890];
  v64 = *MEMORY[0x1E69DA898];
  v60 = *MEMORY[0x1E69DA8A0];
  v85 += 12;
  v86 = v26 + 1;
  v63 = (v93 + 32);
  v62 = (v23 + 8);
  v61 = (v93 + 8);
  v74 = (v92 + 16);
  v75 = (v92 + 32);
  v73 = (v92 + 8);
  v84 = *(v24 + 72);
  v27 = v81;
  v77 = v11;
  v72 = v14;
  while (1)
  {
    v92 = v25;
    v93 = v22;
    PromptTemplateInfo.RichVariableBinding.Component.content.getter();
    (*v89)(v14, v17, v12);
    v28 = (*v88)(v14, v12);
    if (v28 != v87)
    {
      break;
    }

    (*v85)(v14, v12);
    v29 = v17;
    v30 = v78;
    v31 = v80;
    (*v75)(v78, v14, v80);
    v32 = v79;
    (*v74)(v79, v30, v31);
    v33 = PromptTemplateInfo.RichVariableBinding.Component.Content.Text.string.getter();
    v82 = v34;
    v83 = v33;
    v35 = PromptTemplateInfo.RichVariableBinding.Component.Content.Text.isSelfAttention.getter();
    (*v86)(v29, v12);
    v36 = v21;
    v37 = *v73;
    (*v73)(v32, v31);
    v38 = v30;
    v17 = v29;
    v39 = v31;
    v11 = v77;
    v37(v38, v39);
    v21 = v36;
    v40 = v82;
    *v11 = v83;
    *(v11 + 1) = v40;
    LOBYTE(v40) = v35 & 1;
    v14 = v72;
    v41 = v81;
    v11[16] = v40;
LABEL_5:
    v22 = v93;
LABEL_11:
    swift_storeEnumTagMultiPayload();
    outlined init with take of ToolDescription(v11, v41, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
    v94 = v22;
    v54 = *(v22 + 16);
    v53 = *(v22 + 24);
    if (v54 >= v53 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1);
      v22 = v94;
    }

    *(v22 + 16) = v54 + 1;
    v55 = v22 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v54;
    v27 = v41;
    outlined init with take of ToolDescription(v41, v55, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope);
    v25 = v92 + v84;
    if (!--v21)
    {
      return v22;
    }
  }

  if (v28 == v76)
  {
    (*v86)(v17, v12);
    (*v85)(v14, v12);
    v42 = type metadata accessor for Prompt.ImageData();
    (*(*(v42 - 8) + 32))(v11, v14, v42);
LABEL_10:
    v22 = v93;
    v41 = v27;
    goto LABEL_11;
  }

  if (v28 == v70)
  {
    (*v85)(v14, v12);
    v43 = *v63;
    v83 = v21;
    v44 = v65;
    v43(v65, v14, v71);
    v45 = PromptTemplateInfo.RichVariableBinding.Component.Content.ImageSurface.surface.getter();
    v46 = v66;
    UUID.init()();
    v82 = UUID.uuidString.getter();
    v48 = v47;
    (*v62)(v46, v67);
    v49 = v45;
    IOSurfaceCreateXPCObject(v49);

    v69 = v48;

    v50 = v82;
    XPCDictionary.subscript.setter();

    (*v86)(v17, v12);
    v51 = v44;
    v21 = v83;
    (*v61)(v51, v71);
    v52 = v69;
    *v11 = v50;
    *(v11 + 1) = v52;
    goto LABEL_10;
  }

  v41 = v27;
  if (v28 == v64)
  {
    (*v86)(v17, v12);
    (*v85)(v14, v12);
    v56 = type metadata accessor for Prompt.ImageEmbeddingData();
    (*(*(v56 - 8) + 32))(v11, v14, v56);
    goto LABEL_5;
  }

  v22 = v93;
  if (v28 == v60)
  {
    (*v86)(v17, v12);
    (*v85)(v14, v12);
    v57 = type metadata accessor for Prompt.PreprocessedImageData();
    (*(*(v57 - 8) + 32))(v11, v14, v57);
    goto LABEL_11;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t TokenGenerator.render(prompt:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 304) = a2;
  *(v4 + 312) = v3;
  *(v4 + 296) = a1;
  type metadata accessor for Prompt.Rendering.Source();
  *(v4 + 320) = swift_task_alloc();
  v6 = type metadata accessor for Prompt.Rendering();
  *(v4 + 328) = v6;
  *(v4 + 336) = *(v6 - 8);
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  *(v4 + 360) = v7;
  *(v4 + 368) = *(v7 - 8);
  *(v4 + 376) = swift_task_alloc();
  v8 = type metadata accessor for Prompt();
  *(v4 + 384) = v8;
  *(v4 + 392) = *(v8 - 8);
  *(v4 + 400) = swift_task_alloc();
  *(v4 + 408) = swift_task_alloc();
  *(v4 + 416) = swift_task_alloc();
  *(v4 + 424) = swift_task_alloc();
  v9 = *(a3 + 16);
  *(v4 + 432) = *a3;
  *(v4 + 448) = v9;
  *(v4 + 464) = *(a3 + 32);
  *(v4 + 480) = *(a3 + 48);

  return MEMORY[0x1EEE6DFA0](TokenGenerator.render(prompt:metadata:), 0, 0);
}

{
  *(v4 + 304) = a2;
  *(v4 + 312) = v3;
  *(v4 + 296) = a1;
  type metadata accessor for Prompt.Rendering.Source();
  *(v4 + 320) = swift_task_alloc();
  v6 = type metadata accessor for Prompt.Rendering();
  *(v4 + 328) = v6;
  *(v4 + 336) = *(v6 - 8);
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  v7 = type metadata accessor for Prompt();
  *(v4 + 360) = v7;
  *(v4 + 368) = *(v7 - 8);
  *(v4 + 376) = swift_task_alloc();
  *(v4 + 384) = swift_task_alloc();
  *(v4 + 392) = swift_task_alloc();
  *(v4 + 400) = swift_task_alloc();
  v8 = type metadata accessor for PromptVariant();
  *(v4 + 408) = v8;
  *(v4 + 416) = *(v8 - 8);
  *(v4 + 424) = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  *(v4 + 432) = v9;
  *(v4 + 440) = *(v9 - 8);
  *(v4 + 448) = swift_task_alloc();
  v10 = *(a3 + 16);
  *(v4 + 456) = *a3;
  *(v4 + 472) = v10;
  *(v4 + 488) = *(a3 + 32);
  *(v4 + 504) = *(a3 + 48);

  return MEMORY[0x1EEE6DFA0](TokenGenerator.render(prompt:metadata:), 0, 0);
}

uint64_t TokenGenerator.render(prompt:metadata:)(__n128 a1)
{
  PromptVariant.tgPrompt.getter();
  v2 = v1[55];
  if (v2)
  {
    v3 = v1[59];
    v4 = v1[60];
    v5 = v1[56];
    v6 = v1[57];
    v7 = v1[54];
    v8 = v7;
    v9 = v1[55];
    v10 = v5;
    v11 = v1[58];
    v12 = v6;
    v13 = v11;
    v14 = v3;
    v15 = v4;
  }

  else
  {
    v17 = v1[46];
    v16 = v1[47];
    v18 = v1[45];
    UUID.init()();
    v8 = UUID.uuidString.getter();
    v9 = v19;
    (*(v17 + 8))(v16, v18);
    v12 = 0x80000001ABA42A30;
    v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v13 = 0;
    v14 = 0;
    v3 = v1[59];
    v4 = v1[60];
    v6 = v1[57];
    v11 = v1[58];
    v2 = v1[55];
    v5 = v1[56];
    v10 = 0xD000000000000018;
    v7 = v1[54];
  }

  v1[63] = v14;
  v1[64] = v15;
  v1[61] = v9;
  v1[62] = v12;
  v1[30] = v8;
  v1[31] = v9;
  v1[32] = v10;
  v1[33] = v12;
  v1[34] = v13;
  v1[35] = v14;
  v1[36] = v15;
  outlined copy of RequestMetadata?(v7, v2, v5, v6, v11, v3, v4);
  v20 = swift_task_alloc();
  v1[65] = v20;
  *v20 = v1;
  v20[1] = TokenGenerator.render(prompt:metadata:);
  v21 = v1[53];
  v22 = v1[38];

  return TokenGenerator._countTokens(in:promptVariant:metadata:)((v1 + 2), v21, v22, v1 + 30);
}

uint64_t TokenGenerator.render(prompt:metadata:)()
{
  *(*v1 + 528) = v0;

  if (v0)
  {
    v2 = TokenGenerator.render(prompt:metadata:);
  }

  else
  {

    v2 = TokenGenerator.render(prompt:metadata:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v91 = v0;
  v1 = *(v0 + 96);
  *(v0 + 192) = *(v0 + 80);
  *(v0 + 208) = v1;
  *(v0 + 224) = *(v0 + 112);
  v2 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 16);
  *(v0 + 144) = v2;
  v3 = *(v0 + 64);
  *(v0 + 160) = *(v0 + 48);
  *(v0 + 176) = v3;
  if (*(v0 + 144))
  {
    v4 = *(v0 + 336);
    v86 = *(v0 + 328);
    v80 = *(v0 + 352);
    v83 = *(v0 + 296);

    Prompt.Rendering.Source.init(identifier:version:)();

    Prompt.Rendering.init(source:segments:renderedString:originalPrompt:tokenIDs:userInfo:detokenizedString:)();
    (*(v4 + 32))(v83, v80, v86);
    outlined destroy of CountTokensResponse(v0 + 128);
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 416);
    v6 = *(v0 + 424);
    v7 = *(v0 + 384);
    v8 = *(v0 + 392);
    v10 = *(v0 + 336);
    v9 = *(v0 + 344);
    v11 = *(v0 + 328);
    v12 = *(v0 + 296);
    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Log.generator);
    (*(v10 + 16))(v9, v12, v11);
    (*(v8 + 16))(v5, v6, v7);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    v16 = os_log_type_enabled(v14, v15);
    v18 = *(v0 + 416);
    v17 = *(v0 + 424);
    v19 = *(v0 + 392);
    v87 = *(v0 + 384);
    v21 = *(v0 + 336);
    v20 = *(v0 + 344);
    v22 = *(v0 + 328);
    if (v16)
    {
      v84 = *(v0 + 424);
      v23 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v90[0] = v81;
      *v23 = 136643075;
      log = v15;
      v24 = Prompt.Rendering.renderedString.getter();
      v26 = v25;
      (*(v21 + 8))(v20, v22);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v90);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2085;
      lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69DA850], MEMORY[0x1E69DA860]);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      v31 = *(v19 + 8);
      v31(v18, v87);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v90);

      *(v23 + 14) = v32;
      _os_log_impl(&dword_1AB828000, v14, log, "Rendered prompt text: %{sensitive}s for prompt: %{sensitive}s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC5A6CD0](v81, -1, -1);
      MEMORY[0x1AC5A6CD0](v23, -1, -1);

      v31(v84, v87);
    }

    else
    {

      v52 = *(v19 + 8);
      v52(v18, v87);
      (*(v21 + 8))(v20, v22);
      v52(v17, v87);
    }

    v53 = *(v0 + 8);
  }

  else
  {
    outlined destroy of CountTokensResponse(v0 + 128);
    v33 = &lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys;
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 424);
    v35 = *(v0 + 408);
    v36 = *(v0 + 384);
    v37 = *(v0 + 392);
    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Log.generator);
    (*(v37 + 16))(v35, v34, v36);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 408);
    v44 = *(v0 + 384);
    v43 = *(v0 + 392);
    if (v41)
    {
      v45 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v90[0] = v88;
      *v45 = 136642819;
      lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69DA850], MEMORY[0x1E69DA860]);
      v46 = v38;
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v43 + 8))(v42, v44);
      v50 = v47;
      v38 = v46;
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v49, v90);

      *(v45 + 4) = v51;
      _os_log_impl(&dword_1AB828000, v39, v40, "Rendered prompt for: %{sensitive}s is empty", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v88);
      v33 = &lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys;
      MEMORY[0x1AC5A6CD0](v88, -1, -1);
      MEMORY[0x1AC5A6CD0](v45, -1, -1);
    }

    else
    {

      (*(v43 + 8))(v42, v44);
    }

    type metadata accessor for TokenGenerationError(0);
    lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
    v54 = swift_allocError();
    v56 = v55;
    v57 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *v56 = 0xD000000000000018;
    v56[1] = 0x80000001ABA42A50;
    v56[2] = 0;
    v56[3] = 0;
    v56[4] = 0;
    v56[5] = v57;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    if (v33[219] != -1)
    {
      swift_once();
    }

    v58 = *(v0 + 424);
    v59 = *(v0 + 392);
    v60 = *(v0 + 400);
    v61 = *(v0 + 384);
    __swift_project_value_buffer(v38, static Log.generator);
    (*(v59 + 16))(v60, v58, v61);
    MEMORY[0x1AC5A6AE0](v54);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    v64 = os_log_type_enabled(v62, v63);
    v66 = *(v0 + 392);
    v65 = *(v0 + 400);
    v67 = *(v0 + 384);
    if (v64)
    {
      v68 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v90[0] = v89;
      *v68 = 136643075;
      lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69DA850], MEMORY[0x1E69DA860]);
      v82 = v63;
      v69 = v54;
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      v73 = *(v66 + 8);
      v73(v65, v67);
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, v90);

      *(v68 + 4) = v74;
      *(v68 + 12) = 2112;
      MEMORY[0x1AC5A6AE0](v69);
      v75 = _swift_stdlib_bridgeErrorToNSError();
      *(v68 + 14) = v75;
      *v85 = v75;
      _os_log_impl(&dword_1AB828000, v62, v82, "Failed to render prompt: %{sensitive}s. %@", v68, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v85, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v85, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v89);
      MEMORY[0x1AC5A6CD0](v89, -1, -1);
      MEMORY[0x1AC5A6CD0](v68, -1, -1);
    }

    else
    {

      v73 = *(v66 + 8);
      v73(v65, v67);
    }

    v76 = *(v0 + 424);
    v77 = *(v0 + 384);
    swift_willThrow();
    v73(v76, v77);

    v53 = *(v0 + 8);
  }

  return v53();
}

{
  v29 = v0;

  v1 = v0[66];
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v2 = v0[53];
  v3 = v0[49];
  v4 = v0[50];
  v5 = v0[48];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.generator);
  (*(v3 + 16))(v4, v2, v5);
  MEMORY[0x1AC5A6AE0](v1);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[49];
  v10 = v0[50];
  v12 = v0[48];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v13 = 136643075;
    lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69DA850], MEMORY[0x1E69DA860]);
    v25 = v8;
    v14 = v1;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v18 = *(v11 + 8);
    v18(v10, v12);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v28);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2112;
    MEMORY[0x1AC5A6AE0](v14);
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v26 = v20;
    _os_log_impl(&dword_1AB828000, v7, v25, "Failed to render prompt: %{sensitive}s. %@", v13, 0x16u);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1AC5A6CD0](v26, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1AC5A6CD0](v27, -1, -1);
    MEMORY[0x1AC5A6CD0](v13, -1, -1);
  }

  else
  {

    v18 = *(v11 + 8);
    v18(v10, v12);
  }

  v21 = v0[53];
  v22 = v0[48];
  swift_willThrow();
  v18(v21, v22);

  v23 = v0[1];

  return v23();
}

{
  v2 = *v1;
  v3 = *(*v1 + 416);
  *(*v1 + 568) = v0;

  (*(v3 + 8))(*(v2 + 424), *(v2 + 408));
  if (v0)
  {
    v4 = TokenGenerator.render(prompt:metadata:);
  }

  else
  {

    v4 = TokenGenerator.render(prompt:metadata:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v84 = v0;
  v1 = *(v0 + 96);
  *(v0 + 192) = *(v0 + 80);
  *(v0 + 208) = v1;
  *(v0 + 224) = *(v0 + 112);
  v2 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 16);
  *(v0 + 144) = v2;
  v3 = *(v0 + 64);
  *(v0 + 160) = *(v0 + 48);
  *(v0 + 176) = v3;
  if (*(v0 + 144))
  {
    v4 = *(v0 + 336);
    v79 = *(v0 + 328);
    v74 = *(v0 + 352);
    log = *(v0 + 296);

    Prompt.Rendering.Source.init(identifier:version:)();

    Prompt.Rendering.init(source:segments:renderedString:originalPrompt:tokenIDs:userInfo:detokenizedString:)();
    (*(v4 + 32))(log, v74, v79);
    outlined destroy of CountTokensResponse(v0 + 128);
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 544);
    v6 = *(v0 + 392);
    v7 = *(v0 + 360);
    v9 = *(v0 + 336);
    v8 = *(v0 + 344);
    v10 = *(v0 + 328);
    v12 = *(v0 + 296);
    v11 = *(v0 + 304);
    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Log.generator);
    (*(v9 + 16))(v8, v12, v10);
    v5(v6, v11, v7);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 392);
    v19 = *(v0 + 360);
    v18 = *(v0 + 368);
    v20 = *(v0 + 336);
    v21 = *(v0 + 344);
    v22 = *(v0 + 328);
    if (v16)
    {
      loga = v14;
      v23 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v83[0] = v80;
      *v23 = 136643075;
      v24 = Prompt.Rendering.renderedString.getter();
      v75 = v15;
      v26 = v25;
      (*(v20 + 8))(v21, v22);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v83);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2085;
      lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69DA850], MEMORY[0x1E69DA860]);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v18 + 8))(v17, v19);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v83);

      *(v23 + 14) = v31;
      _os_log_impl(&dword_1AB828000, loga, v75, "Rendered prompt text: %{sensitive}s for prompt: %{sensitive}s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC5A6CD0](v80, -1, -1);
      MEMORY[0x1AC5A6CD0](v23, -1, -1);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
      (*(v20 + 8))(v21, v22);
    }

    v51 = *(v0 + 8);
  }

  else
  {
    outlined destroy of CountTokensResponse(v0 + 128);
    v32 = &lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys;
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v33 = *(v0 + 544);
    v34 = *(v0 + 384);
    v35 = *(v0 + 360);
    v36 = *(v0 + 304);
    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Log.generator);
    v33(v34, v36, v35);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 384);
    v43 = *(v0 + 360);
    v42 = *(v0 + 368);
    if (v40)
    {
      v44 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v83[0] = v81;
      *v44 = 136642819;
      lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69DA850], MEMORY[0x1E69DA860]);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v37;
      v48 = v47;
      (*(v42 + 8))(v41, v43);
      v49 = v45;
      v32 = &lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys;
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v48, v83);
      v37 = v46;

      *(v44 + 4) = v50;
      _os_log_impl(&dword_1AB828000, v38, v39, "Rendered prompt for: %{sensitive}s is empty", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x1AC5A6CD0](v81, -1, -1);
      MEMORY[0x1AC5A6CD0](v44, -1, -1);
    }

    else
    {

      (*(v42 + 8))(v41, v43);
    }

    type metadata accessor for TokenGenerationError(0);
    lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
    v52 = swift_allocError();
    v54 = v53;
    v55 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *v54 = 0xD000000000000018;
    v54[1] = 0x80000001ABA42A50;
    v54[2] = 0;
    v54[3] = 0;
    v54[4] = 0;
    v54[5] = v55;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    if (v32[219] != -1)
    {
      swift_once();
    }

    v56 = *(v0 + 544);
    v57 = *(v0 + 376);
    v58 = *(v0 + 360);
    v59 = *(v0 + 304);
    __swift_project_value_buffer(v37, static Log.generator);
    v56(v57, v59, v58);
    MEMORY[0x1AC5A6AE0](v52);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    v62 = os_log_type_enabled(v60, v61);
    v63 = *(v0 + 368);
    v64 = *(v0 + 376);
    v65 = *(v0 + 360);
    if (v62)
    {
      v66 = swift_slowAlloc();
      logb = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v83[0] = v82;
      *v66 = 136643075;
      lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69DA850], MEMORY[0x1E69DA860]);
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v52;
      v70 = v69;
      (*(v63 + 8))(v64, v65);
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v70, v83);

      *(v66 + 4) = v71;
      *(v66 + 12) = 2112;
      MEMORY[0x1AC5A6AE0](v68);
      v72 = _swift_stdlib_bridgeErrorToNSError();
      *(v66 + 14) = v72;
      logb->isa = v72;
      _os_log_impl(&dword_1AB828000, v60, v61, "Failed to render prompt: %{sensitive}s. %@", v66, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(logb, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](logb, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v82);
      MEMORY[0x1AC5A6CD0](v82, -1, -1);
      MEMORY[0x1AC5A6CD0](v66, -1, -1);
    }

    else
    {

      (*(v63 + 8))(v64, v65);
    }

    swift_willThrow();

    v51 = *(v0 + 8);
  }

  return v51();
}

{
  v25 = v0;

  v1 = v0[71];
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v2 = v0[68];
  v3 = v0[47];
  v4 = v0[45];
  v5 = v0[38];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.generator);
  v2(v3, v5, v4);
  MEMORY[0x1AC5A6AE0](v1);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[46];
  v11 = v0[47];
  v12 = v0[45];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v13 = 136643075;
    lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69DA850], MEMORY[0x1E69DA860]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v1;
    v17 = v16;
    (*(v10 + 8))(v11, v12);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v17, &v24);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    MEMORY[0x1AC5A6AE0](v15);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v19;
    *v22 = v19;
    _os_log_impl(&dword_1AB828000, v7, v8, "Failed to render prompt: %{sensitive}s. %@", v13, 0x16u);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1AC5A6CD0](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1AC5A6CD0](v23, -1, -1);
    MEMORY[0x1AC5A6CD0](v13, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v11, v12);
  }

  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t TokenGenerator.render(promptVariant:promptTemplateInfo:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 312) = a3;
  *(v5 + 320) = v4;
  *(v5 + 296) = a1;
  *(v5 + 304) = a2;
  v7 = type metadata accessor for PromptTemplateInfo();
  *(v5 + 328) = v7;
  *(v5 + 336) = *(v7 - 8);
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = swift_task_alloc();
  type metadata accessor for Prompt.Rendering.Source();
  *(v5 + 368) = swift_task_alloc();
  v8 = type metadata accessor for Prompt.Rendering();
  *(v5 + 376) = v8;
  *(v5 + 384) = *(v8 - 8);
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  *(v5 + 408) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  *(v5 + 416) = swift_task_alloc();
  v9 = *(a4 + 16);
  *(v5 + 424) = *a4;
  *(v5 + 440) = v9;
  *(v5 + 456) = *(a4 + 32);
  *(v5 + 472) = *(a4 + 48);

  return MEMORY[0x1EEE6DFA0](TokenGenerator.render(promptVariant:promptTemplateInfo:metadata:), 0, 0);
}

uint64_t TokenGenerator.render(promptVariant:promptTemplateInfo:metadata:)()
{
  v1 = *(v0 + 408);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 304), v1, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  v2 = type metadata accessor for PromptVariant();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 408), &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    v4 = 1;
  }

  else
  {
    PromptVariant.tgPrompt.getter();
    (*(v3 + 8))(*(v0 + 408), v2);
    v4 = 0;
  }

  v5 = *(v0 + 472);
  v14 = *(v0 + 456);
  v6 = *(v0 + 416);
  v7 = type metadata accessor for Prompt();
  v12 = *(v0 + 440);
  v13 = *(v0 + 424);
  (*(*(v7 - 8) + 56))(v6, v4, 1, v7);
  *(v0 + 240) = v13;
  *(v0 + 256) = v12;
  *(v0 + 272) = v14;
  *(v0 + 288) = v5;
  v8 = swift_task_alloc();
  *(v0 + 480) = v8;
  *v8 = v0;
  v8[1] = TokenGenerator.render(promptVariant:promptTemplateInfo:metadata:);
  v9 = *(v0 + 416);
  v10 = *(v0 + 312);

  return TokenGenerator._countTokens(prompt:promptTemplateInfo:metadata:)(v0 + 16, v9, v10, v0 + 240);
}

{
  v2 = *v1;
  *(*v1 + 488) = v0;

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v2 + 416), &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  if (v0)
  {
    v3 = TokenGenerator.render(promptVariant:promptTemplateInfo:metadata:);
  }

  else
  {
    v3 = TokenGenerator.render(promptVariant:promptTemplateInfo:metadata:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v84 = v0;
  v1 = *(v0 + 96);
  *(v0 + 192) = *(v0 + 80);
  *(v0 + 208) = v1;
  *(v0 + 224) = *(v0 + 112);
  v2 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 16);
  *(v0 + 144) = v2;
  v3 = *(v0 + 64);
  *(v0 + 160) = *(v0 + 48);
  *(v0 + 176) = v3;
  if (*(v0 + 144))
  {
    v4 = *(v0 + 384);
    v79 = *(v0 + 376);
    v74 = *(v0 + 400);
    v76 = *(v0 + 296);

    Prompt.Rendering.Source.init(identifier:version:)();

    Prompt.Rendering.init(source:segments:renderedString:originalPrompt:tokenIDs:userInfo:detokenizedString:)();
    (*(v4 + 32))(v76, v74, v79);
    outlined destroy of CountTokensResponse(v0 + 128);
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 384);
    v5 = *(v0 + 392);
    v7 = *(v0 + 376);
    v8 = *(v0 + 360);
    v9 = *(v0 + 328);
    v10 = *(v0 + 336);
    v11 = *(v0 + 312);
    v12 = *(v0 + 296);
    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Log.generator);
    (*(v6 + 16))(v5, v12, v7);
    (*(v10 + 16))(v8, v11, v9);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    v16 = os_log_type_enabled(v14, v15);
    v18 = *(v0 + 384);
    v17 = *(v0 + 392);
    v19 = *(v0 + 376);
    v20 = *(v0 + 360);
    v22 = *(v0 + 328);
    v21 = *(v0 + 336);
    if (v16)
    {
      v77 = v15;
      v23 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v83[0] = v80;
      *v23 = 136643075;
      v24 = Prompt.Rendering.renderedString.getter();
      v75 = v22;
      v26 = v25;
      (*(v18 + 8))(v17, v19);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v83);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2085;
      v28 = PromptTemplateInfo.templateID.getter();
      v30 = v29;
      (*(v21 + 8))(v20, v75);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v83);

      *(v23 + 14) = v31;
      _os_log_impl(&dword_1AB828000, v14, v77, "Rendered prompt text: %{sensitive}s for prompt template identifer: %{sensitive}s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC5A6CD0](v80, -1, -1);
      MEMORY[0x1AC5A6CD0](v23, -1, -1);
    }

    else
    {

      (*(v21 + 8))(v20, v22);
      (*(v18 + 8))(v17, v19);
    }

    v52 = *(v0 + 8);
  }

  else
  {
    outlined destroy of CountTokensResponse(v0 + 128);
    v32 = &lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys;
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v33 = *(v0 + 352);
    v34 = *(v0 + 328);
    v35 = *(v0 + 336);
    v36 = *(v0 + 312);
    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Log.generator);
    (*(v35 + 16))(v33, v36, v34);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 352);
    v43 = *(v0 + 328);
    v42 = *(v0 + 336);
    if (v40)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v83[0] = v45;
      *v44 = 136380675;
      v81 = v37;
      v46 = PromptTemplateInfo.templateID.getter();
      v48 = v47;
      (*(v42 + 8))(v41, v43);
      v49 = v46;
      v37 = v81;
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v48, v83);

      *(v44 + 4) = v50;
      _os_log_impl(&dword_1AB828000, v38, v39, "Rendered prompt template: %{private}s is empty", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      v51 = v45;
      v32 = &lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys;
      MEMORY[0x1AC5A6CD0](v51, -1, -1);
      MEMORY[0x1AC5A6CD0](v44, -1, -1);
    }

    else
    {

      (*(v42 + 8))(v41, v43);
    }

    type metadata accessor for TokenGenerationError(0);
    lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
    v53 = swift_allocError();
    v55 = v54;
    v56 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *v55 = 0xD000000000000018;
    v55[1] = 0x80000001ABA42A50;
    v55[2] = 0;
    v55[3] = 0;
    v55[4] = 0;
    v55[5] = v56;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    if (v32[219] != -1)
    {
      swift_once();
    }

    v57 = *(v0 + 336);
    v58 = *(v0 + 344);
    v59 = *(v0 + 328);
    v60 = *(v0 + 312);
    __swift_project_value_buffer(v37, static Log.generator);
    (*(v57 + 16))(v58, v60, v59);
    MEMORY[0x1AC5A6AE0](v53);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    v63 = os_log_type_enabled(v61, v62);
    v64 = *(v0 + 336);
    v65 = *(v0 + 344);
    v66 = *(v0 + 328);
    if (v63)
    {
      v67 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v83[0] = v82;
      *v67 = 136643075;
      v68 = PromptTemplateInfo.templateID.getter();
      v70 = v69;
      (*(v64 + 8))(v65, v66);
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, v83);

      *(v67 + 4) = v71;
      *(v67 + 12) = 2112;
      MEMORY[0x1AC5A6AE0](v53);
      v72 = _swift_stdlib_bridgeErrorToNSError();
      *(v67 + 14) = v72;
      *v78 = v72;
      _os_log_impl(&dword_1AB828000, v61, v62, "Failed to render for prompt template: %{sensitive}s. %@", v67, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v78, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v78, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v82);
      MEMORY[0x1AC5A6CD0](v82, -1, -1);
      MEMORY[0x1AC5A6CD0](v67, -1, -1);
    }

    else
    {

      (*(v64 + 8))(v65, v66);
    }

    swift_willThrow();

    v52 = *(v0 + 8);
  }

  return v52();
}

{
  v24 = v0;
  v1 = v0[61];
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v2 = v0[42];
  v3 = v0[43];
  v4 = v0[41];
  v5 = v0[39];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.generator);
  (*(v2 + 16))(v3, v5, v4);
  MEMORY[0x1AC5A6AE0](v1);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[42];
  v11 = v0[43];
  v12 = v0[41];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v13 = 136643075;
    v14 = PromptTemplateInfo.templateID.getter();
    v16 = v15;
    (*(v10 + 8))(v11, v12);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v23);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2112;
    MEMORY[0x1AC5A6AE0](v1);
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v18;
    *v21 = v18;
    _os_log_impl(&dword_1AB828000, v7, v8, "Failed to render for prompt template: %{sensitive}s. %@", v13, 0x16u);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1AC5A6CD0](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x1AC5A6CD0](v22, -1, -1);
    MEMORY[0x1AC5A6CD0](v13, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v11, v12);
  }

  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t static Tooling.argumentsSchema.getter(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Schema();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of static Generable.schema.getter();
  Schema.type.getter();
  return (*(v3 + 8))(v5, v2);
}

uint64_t static TokenGenerator.isAvailable.getter()
{
  v13[1] = *MEMORY[0x1E69E9840];
  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer)
  {
    v1 = domain_answer;
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Log.generator);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = v1;
      _os_log_impl(&dword_1AB828000, v3, v4, "Failed to determine availability with status code: %d", v5, 8u);
      MEMORY[0x1AC5A6CD0](v5, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.generator);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13[0] = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x616C696176417369, 0xEB00000000656C62, v13);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x65736C6166, 0xE500000000000000, v13);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_1AB828000, v7, v8, "%s: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC5A6CD0](v10, -1, -1);
      MEMORY[0x1AC5A6CD0](v9, -1, -1);
    }
  }

  return 0;
}

uint64_t TokenGenerator.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v4 = *(v1 + 80);
  v10 = *(v1 + 64);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 96);
  v6 = *(v1 + 32);
  v9[0] = *(v1 + 16);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, v8, &_s15TokenGeneration20SessionConfigurationVSgMd, &_s15TokenGeneration20SessionConfigurationVSgMR);
}

uint64_t TokenGenerator.__allocating_init(configuration:)(__int128 *a1)
{
  v2 = swift_allocObject();
  TokenGenerator.init(configuration:)(a1);
  return v2;
}

uint64_t TokenGenerator.__allocating_init(session:)(void *a1)
{
  v2 = swift_allocObject();
  outlined init with copy of PromptCompletionEvent(a1, v2 + 104);
  type metadata accessor for EventReporter();
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  swift_allocObject();
  v3 = EventReporter.init()();
  __swift_destroy_boxed_opaque_existential_0(a1);
  *(v2 + 144) = v3;
  return v2;
}

uint64_t TokenGenerator.init(session:)(void *a1)
{
  v2 = v1;
  outlined init with copy of PromptCompletionEvent(a1, v1 + 104);
  type metadata accessor for EventReporter();
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
  swift_allocObject();
  v4 = EventReporter.init()();
  __swift_destroy_boxed_opaque_existential_0(a1);
  *(v2 + 144) = v4;
  return v2;
}

uint64_t TokenGenerator.__allocating_init(session:configuration:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  outlined init with copy of PromptCompletionEvent(a1, v4 + 104);
  v5 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a2 + 64);
  *(v4 + 96) = *(a2 + 80);
  v6 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v6;
  type metadata accessor for EventReporter();
  swift_allocObject();
  v7 = EventReporter.init()();
  __swift_destroy_boxed_opaque_existential_0(a1);
  *(v4 + 144) = v7;
  return v4;
}

uint64_t TokenGenerator.init(session:configuration:)(void *a1, uint64_t a2)
{
  v3 = v2;
  outlined init with copy of PromptCompletionEvent(a1, v3 + 104);
  v6 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v6;
  *(v3 + 80) = *(a2 + 64);
  *(v3 + 96) = *(a2 + 80);
  v7 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v7;
  type metadata accessor for EventReporter();
  swift_allocObject();
  v8 = EventReporter.init()();
  __swift_destroy_boxed_opaque_existential_0(a1);
  *(v3 + 144) = v8;
  return v3;
}

uint64_t TokenGenerator.contextSize()()
{
  v1[10] = v0;
  v2 = type metadata accessor for UUID();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator.contextSize(), 0, 0);
}

{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = TokenGenerator.contextSize();
  }

  else
  {

    v2 = TokenGenerator.contextSize();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 72);
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.generator);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_1AB828000, v3, v4, "Fetched context size: %ld", v5, 0xCu);
    MEMORY[0x1AC5A6CD0](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6(v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TokenGenerator.contextSize()(uint64_t a1)
{
  v3 = *(v1 + 96);
  v2 = *(v1 + 104);
  v4 = *(v1 + 88);
  UUID.init()();
  v5 = UUID.uuidString.getter();
  v7 = v6;
  *(v1 + 112) = v6;
  (*(v3 + 8))(v2, v4);
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v1 + 120) = v8;
  *(v1 + 16) = v5;
  *(v1 + 24) = v7;
  strcpy((v1 + 32), "contextSize()");
  *(v1 + 46) = -4864;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = v8;
  v9 = swift_task_alloc();
  *(v1 + 128) = v9;
  *v9 = v1;
  v9[1] = TokenGenerator.contextSize();

  return TokenGenerator.fetchModelMetadata(requestMetadata:)(v1 + 72, (v1 + 16));
}

uint64_t TokenGenerator.fetchModelMetadata(requestMetadata:)(uint64_t a1, uint64_t *a2)
{
  *(v3 + 32) = a1;
  *(v3 + 40) = v2;
  *(v3 + 48) = type metadata accessor for OneShotRequest(0);
  *(v3 + 56) = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  *(v3 + 64) = v5;
  *(v3 + 72) = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  *(v3 + 80) = v6;
  *(v3 + 88) = v7;
  *(v3 + 96) = *(a2 + 1);
  *(v3 + 112) = a2[3];
  *(v3 + 120) = *(a2 + 2);
  *(v3 + 136) = a2[6];

  return MEMORY[0x1EEE6DFA0](TokenGenerator.fetchModelMetadata(requestMetadata:), 0, 0);
}

uint64_t TokenGenerator.fetchModelMetadata(requestMetadata:)()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[12];

  if (v1)
  {
    v5 = v0[15];
    v6 = v1;
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v10 = v0[9];
    v9 = v0[10];
    v11 = v0[8];
    UUID.init()();
    v7 = UUID.uuidString.getter();
    v8 = v12;
    (*(v10 + 8))(v9, v11);
    v6 = v0[16];
    v2 = v0[17];
    v3 = v0[14];
    v5 = v0[15];
    v4 = v0[12];
  }

  v0[18] = v8;
  v13 = v0[13];
  v14 = v0[7];
  v15 = v0[5];
  *v14 = v0[11];
  v14[1] = v4;
  v14[2] = v13;
  v14[3] = v3;
  v14[4] = v5;
  v14[5] = v6;
  v14[6] = v2;
  swift_storeEnumTagMultiPayload();
  v16 = *(v15 + 128);
  __swift_project_boxed_opaque_existential_1((v15 + 104), v16);

  v17 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15TokenGeneration16ModelCatalogStubV8AssetKeyV_SayAHGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v0[19] = v17;
  v18 = swift_task_alloc();
  v0[20] = v18;
  lazy protocol witness table accessor for type FetchModelMetadataResponse and conformance FetchModelMetadataResponse();
  lazy protocol witness table accessor for type FetchModelMetadataResponse and conformance FetchModelMetadataResponse();
  *v18 = v0;
  v18[1] = TokenGenerator.fetchModelMetadata(requestMetadata:);
  v19 = v0[7];

  return InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)((v0 + 2), v7, v8, v19, v17, &type metadata for FetchModelMetadataResponse, v16, &type metadata for FetchModelMetadataResponse);
}

{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = TokenGenerator.fetchModelMetadata(requestMetadata:);
  }

  else
  {
    v2 = TokenGenerator.fetchModelMetadata(requestMetadata:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v15 = v0;
  v1 = *(v0 + 16);
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.generator);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 56);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    *(v0 + 24) = v1;
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1AB828000, v3, v4, "Fetched model metadata: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1AC5A6CD0](v8, -1, -1);
    MEMORY[0x1AC5A6CD0](v7, -1, -1);
  }

  outlined destroy of ToolType(v6, type metadata accessor for OneShotRequest);
  **(v0 + 32) = v1;

  v12 = *(v0 + 8);

  return v12();
}

{
  outlined destroy of ToolType(v0[7], type metadata accessor for OneShotRequest);
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.generator);
  MEMORY[0x1AC5A6AE0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[21];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    MEMORY[0x1AC5A6AE0](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_1AB828000, v3, v4, "Failed to fetch model metadata. %@", v6, 0xCu);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1AC5A6CD0](v7, -1, -1);
    MEMORY[0x1AC5A6CD0](v6, -1, -1);
  }

  swift_willThrow();

  v9 = v0[1];

  return v9();
}

Swift::Void __swiftcall TokenGenerator.prewarm(urgency:)(TokenGeneration::PrewarmUrgency urgency)
{
  v2 = *(urgency.rawValue._countAndFlagsBits + 8);
  v4[0] = *urgency.rawValue._countAndFlagsBits;
  v4[1] = v2;
  v3 = v4;
  TokenGenerator.prewarm(usesGuidedGeneration:urgency:)(0, *(&v1 - 1));
}

uint64_t TokenGenerator.prewarm(usesGuidedGeneration:urgency:promptPrefix:)(int a1, uint64_t *a2, uint64_t a3)
{
  LODWORD(v34) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v36 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v32 - v8;
  v10 = type metadata accessor for PromptVariant();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = *a2;
  v17 = a2[1];
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a3, v9, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    v38[0] = v16;
    v38[1] = v17;
    v18.rawValue._countAndFlagsBits = v38;
    TokenGenerator.prewarm(usesGuidedGeneration:urgency:)(v34 & 1, v18);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a3, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  }

  else
  {
    v20 = *(v11 + 32);
    v34 = v11 + 32;
    v32 = v16;
    v33 = v20;
    v20(v15, v9, v10);
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Log.generator);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v17, v38);
      _os_log_impl(&dword_1AB828000, v22, v23, "Requesting prewarm with prompt and urgency: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1AC5A6CD0](v25, -1, -1);
      MEMORY[0x1AC5A6CD0](v24, -1, -1);
    }

    v26 = v37;
    v27 = type metadata accessor for TaskPriority();
    v28 = v36;
    (*(*(v27 - 8) + 56))(v36, 1, 1, v27);
    v29 = v35;
    (*(v11 + 16))(v35, v15, v10);
    v30 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v31 = swift_allocObject();
    *(v31 + 2) = 0;
    *(v31 + 3) = 0;
    *(v31 + 4) = v26;
    v33(&v31[v30], v29, v10);

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v28, &async function pointer to partial apply for closure #1 in TokenGenerator.prewarm(usesGuidedGeneration:urgency:promptPrefix:), v31);

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a3, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    return (*(v11 + 8))(v15, v10);
  }
}

uint64_t closure #1 in TokenGenerator.prewarm(usesGuidedGeneration:urgency:promptPrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[88] = a5;
  v5[87] = a4;
  type metadata accessor for PromptCompletion(0);
  v5[89] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  v5[90] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in TokenGenerator.prewarm(usesGuidedGeneration:urgency:promptPrefix:), 0, 0);
}

uint64_t closure #1 in TokenGenerator.prewarm(usesGuidedGeneration:urgency:promptPrefix:)()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 704);
  *(v0 + 16) = 0;
  *(v0 + 24) = -1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 80) = 0;
  v3 = MEMORY[0x1E69E7CD0];
  *(v0 + 88) = 0;
  *(v0 + 96) = v3;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 145) = 33686018;
  *(v0 + 200) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 216) = 768;
  *(v0 + 224) = 0;
  v4 = type metadata accessor for Schema();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  TokenGenerator.complete(prompt:parameters:schema:)(v2, v0 + 16, v1, (v0 + 664));
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 720), &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  v5 = *(v0 + 192);
  *(v0 + 608) = *(v0 + 176);
  *(v0 + 624) = v5;
  *(v0 + 640) = *(v0 + 208);
  *(v0 + 656) = *(v0 + 224);
  v6 = *(v0 + 128);
  *(v0 + 544) = *(v0 + 112);
  *(v0 + 560) = v6;
  v7 = *(v0 + 160);
  *(v0 + 576) = *(v0 + 144);
  *(v0 + 592) = v7;
  v8 = *(v0 + 64);
  *(v0 + 480) = *(v0 + 48);
  *(v0 + 496) = v8;
  v9 = *(v0 + 96);
  *(v0 + 512) = *(v0 + 80);
  *(v0 + 528) = v9;
  v10 = *(v0 + 32);
  *(v0 + 448) = *(v0 + 16);
  *(v0 + 464) = v10;
  outlined destroy of SamplingParameters(v0 + 448);
  v11 = *(v0 + 664);
  v12 = *(v0 + 672);
  *(v0 + 728) = v12;
  v13 = *(v0 + 680);
  v14 = *(v0 + 688);
  *(v0 + 736) = v14;
  v15 = swift_task_alloc();
  *(v0 + 744) = v15;
  *v15 = v0;
  v15[1] = closure #1 in TokenGenerator.prewarm(usesGuidedGeneration:urgency:promptPrefix:);
  v16 = *(v0 + 712);

  return specialized TokenStream.contentAndPromptCompletion()(v16, v11, v12, v13, v14);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 752);
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.generator);
  MEMORY[0x1AC5A6AE0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    MEMORY[0x1AC5A6AE0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_1AB828000, v3, v4, "Prewarm failed: %@", v5, 0xCu);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1AC5A6CD0](v6, -1, -1);
    MEMORY[0x1AC5A6CD0](v5, -1, -1);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t closure #1 in TokenGenerator.prewarm(usesGuidedGeneration:urgency:promptPrefix:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(*v3 + 752) = v2;

  if (v2)
  {
    v5 = closure #1 in TokenGenerator.prewarm(usesGuidedGeneration:urgency:promptPrefix:);
  }

  else
  {
    v6 = *(v4 + 712);

    outlined destroy of ToolType(v6, type metadata accessor for PromptCompletion);
    v5 = closure #1 in TokenGenerator.prewarm(usesGuidedGeneration:urgency:promptPrefix:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

double TokenGenerator.complete(prompt:parameters:schema:)@<D0>(char *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t)@<X2>, _OWORD *a4@<X8>)
{
  v112 = a3;
  v106 = a4;
  v114 = a1;
  v5 = type metadata accessor for ToolChoice();
  v122 = *(v5 - 8);
  v123 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v98 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v97 = &v96 - v8;
  v103 = type metadata accessor for PromptVariant();
  v121 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v110 = &v96 - v11;
  v104 = type metadata accessor for CompletePromptRequest(0);
  MEMORY[0x1EEE9AC00](v104);
  v111 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v105 = &v96 - v14;
  v115 = type metadata accessor for Prompt();
  v120 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v99 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v119 = &v96 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v124 = &v96 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v102 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v108 = &v96 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v144 = &v96 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v96 - v27;
  v29 = type metadata accessor for Schema();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v107 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v109 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v96 - v35;
  v37 = type metadata accessor for UUID();
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v96 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(a2 + 176);
  v140 = *(a2 + 160);
  v141 = v41;
  v142 = *(a2 + 192);
  v143 = *(a2 + 208);
  v42 = *(a2 + 112);
  v136 = *(a2 + 96);
  v137 = v42;
  v43 = *(a2 + 144);
  v138 = *(a2 + 128);
  v139 = v43;
  v44 = *(a2 + 48);
  v132 = *(a2 + 32);
  v133 = v44;
  v45 = *(a2 + 80);
  v134 = *(a2 + 64);
  v135 = v45;
  v46 = *(a2 + 16);
  v130 = *a2;
  v131 = v46;
  UUID.init()();
  v100 = UUID.uuidString.getter();
  v118 = v47;
  (*(v38 + 8))(v40, v37);
  v117 = 0x80000001ABA42A90;
  v116 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v112, v28, &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
    v48 = type metadata accessor for Constraints(0);
    (*(*(v48 - 8) + 56))(v36, 1, 1, v48);
  }

  else
  {
    v49 = v107;
    (*(v30 + 32))(v107, v28, v29);
    Schema.type.getter();
    (*(v30 + 8))(v49, v29);
    v50 = type metadata accessor for Constraints(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v50 - 8) + 56))(v36, 0, 1, v50);
  }

  v51 = v144;
  (*(v122 + 56))(v144, 1, 1, v123);
  v52 = v124;
  v54 = v113;
  v53 = v114;
  PromptVariant.tgPrompt.getter();
  v55 = v121;
  v56 = v119;
  if (v54)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v51, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  }

  else
  {
    v113 = 0;
    v58 = *(v120 + 16);
    v59 = v115;
    v58(v119, v52, v115);
    v112 = *(v55 + 16);
    v60 = v103;
    v112(v110, v53, v103);
    v114 = v36;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, v109, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v144, v108, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);

    outlined init with copy of SamplingParameters(&v130, v127);
    v61 = v111;
    XPCDictionary.init()();
    v62 = v99;
    v58(v99, v56, v59);
    v63 = v110;
    v64 = v60;
    v65 = specialized PromptEnvelope.init(sealing:xpcData:)(v62, v61);
    v66 = v104;
    v67 = (v61 + *(v104 + 20));
    *v67 = v65;
    v67[1] = v68;
    v67[2] = v69;
    v67[3] = v70;
    v71 = v101;
    v112(v101, v63, v64);
    v72 = v108;
    v74 = v122;
    v73 = v123;
    PromptVariantEnvelope.init(sealing:xpcData:)(v71, v61, v61 + v66[6]);
    v125[10] = v140;
    v125[11] = v141;
    v125[12] = v142;
    v126 = v143;
    v125[6] = v136;
    v125[7] = v137;
    v125[8] = v138;
    v125[9] = v139;
    v125[2] = v132;
    v125[3] = v133;
    v125[4] = v134;
    v125[5] = v135;
    v125[0] = v130;
    v125[1] = v131;
    SamplingParametersEnvelope.init(sealing:)(v125, v127);
    v75 = v61 + v66[7];
    v76 = v127[11];
    *(v75 + 160) = v127[10];
    *(v75 + 176) = v76;
    *(v75 + 192) = v127[12];
    *(v75 + 208) = v128;
    v77 = v127[7];
    *(v75 + 96) = v127[6];
    *(v75 + 112) = v77;
    v78 = v127[9];
    *(v75 + 128) = v127[8];
    *(v75 + 144) = v78;
    v79 = v127[3];
    *(v75 + 32) = v127[2];
    *(v75 + 48) = v79;
    v80 = v127[5];
    *(v75 + 64) = v127[4];
    *(v75 + 80) = v80;
    v81 = v127[1];
    *v75 = v127[0];
    *(v75 + 16) = v81;
    *(v61 + v66[9]) = MEMORY[0x1E69E7CC0];
    v82 = v102;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v72, v102, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    if ((*(v74 + 48))(v82, 1, v73) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v72, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v121 + 8))(v63, v64);
      v83 = *(v120 + 8);
      v83(v119, v115);
      v84 = xmmword_1ABA26F10;
    }

    else
    {
      v85 = v64;
      v86 = v97;
      (*(v74 + 32))(v97, v82, v73);
      v87 = v98;
      (*(v74 + 16))(v98, v86, v73);
      ToolChoiceEnvelope.init(sealing:)(v87, v125);
      (*(v74 + 8))(v86, v73);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v72, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v121 + 8))(v63, v85);
      v83 = *(v120 + 8);
      v83(v119, v115);
      v84 = v125[0];
    }

    v88 = v111;
    *&v111[v66[10]] = v84;
    swift_bridgeObjectRelease_n();
    v89 = (v88 + v66[12]);
    v90 = v117;
    v91 = v118;
    *v89 = v100;
    v89[1] = v91;
    v89[2] = 0xD000000000000023;
    v89[3] = v90;
    v89[4] = 0;
    v89[5] = 0;
    v89[6] = v116;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v109, v88 + v66[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v92 = MEMORY[0x1E69E7CC0];
    *(v88 + v66[11]) = MEMORY[0x1E69E7CC0];
    v93 = v105;
    outlined init with take of ToolDescription(v88, v105, type metadata accessor for CompletePromptRequest);
    TokenGenerator.handleCompletePromptRequest(request:tools:)(v93, v92, v129);

    outlined destroy of ToolType(v93, type metadata accessor for CompletePromptRequest);
    v83(v124, v115);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v144, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v114, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    result = *v129;
    v94 = v129[1];
    v95 = v106;
    *v106 = v129[0];
    v95[1] = v94;
  }

  return result;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a3, &_sScPSgMd, &_sScPSgMR);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a3, &_sScPSgMd, &_sScPSgMR);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t TokenGenerator.countTokens(in:)(uint64_t a1)
{
  v2[37] = a1;
  v2[38] = v1;
  v3 = type metadata accessor for Prompt();
  v2[39] = v3;
  v2[40] = *(v3 - 8);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v4 = type metadata accessor for PromptVariant();
  v2[43] = v4;
  v2[44] = *(v4 - 8);
  v2[45] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[46] = v5;
  v2[47] = *(v5 - 8);
  v2[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator.countTokens(in:), 0, 0);
}

{
  v3 = v1[47];
  v2 = v1[48];
  v4 = v1[46];
  v5 = v1[42];
  v7 = v1[39];
  v6 = v1[40];
  v8 = v1[37];
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  v1[49] = v10;
  (*(v3 + 8))(v2, v4);
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v1[50] = v12;
  v13 = *(v6 + 16);
  v1[51] = v13;
  v1[52] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v5, v8, v7);
  PromptVariant.init(_:)();
  v1[30] = v9;
  v1[31] = v11;
  v1[32] = 0xD000000000000010;
  v1[33] = 0x80000001ABA42AC0;
  v1[34] = 0;
  v1[35] = 0;
  v1[36] = v12;
  v14 = swift_task_alloc();
  v1[53] = v14;
  *v14 = v1;
  v14[1] = TokenGenerator.countTokens(in:);
  v15 = v1[45];
  v16 = v1[37];

  return TokenGenerator._countTokens(in:promptVariant:metadata:)((v1 + 2), v16, v15, v1 + 30);
}

{
  v2[37] = a1;
  v2[38] = v1;
  v3 = type metadata accessor for Prompt();
  v2[39] = v3;
  v2[40] = *(v3 - 8);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[43] = v4;
  v2[44] = *(v4 - 8);
  v2[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator.countTokens(in:), 0, 0);
}

{
  v3 = v1[44];
  v2 = v1[45];
  v4 = v1[43];
  UUID.init()();
  v5 = UUID.uuidString.getter();
  v7 = v6;
  v1[46] = v6;
  (*(v3 + 8))(v2, v4);
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v1[47] = v8;
  PromptVariant.tgPrompt.getter();
  v1[30] = v5;
  v1[31] = v7;
  v1[32] = 0xD000000000000010;
  v1[33] = 0x80000001ABA42AC0;
  v1[34] = 0;
  v1[35] = 0;
  v1[36] = v8;
  v9 = swift_task_alloc();
  v1[48] = v9;
  *v9 = v1;
  v9[1] = TokenGenerator.countTokens(in:);
  v10 = v1[42];
  v11 = v1[37];

  return TokenGenerator._countTokens(in:promptVariant:metadata:)((v1 + 2), v10, v11, v1 + 30);
}

uint64_t TokenGenerator.countTokens(in:)()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  (*(v2[44] + 8))(v2[45], v2[43]);
  if (v0)
  {
    v3 = TokenGenerator.countTokens(in:);
  }

  else
  {

    v3 = TokenGenerator.countTokens(in:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v27 = v0;
  v1 = *(v0 + 96);
  *(v0 + 192) = *(v0 + 80);
  *(v0 + 208) = v1;
  *(v0 + 224) = *(v0 + 112);
  v2 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 16);
  *(v0 + 144) = v2;
  v3 = *(v0 + 64);
  *(v0 + 160) = *(v0 + 48);
  *(v0 + 176) = v3;
  outlined destroy of CountTokensResponse(v0 + 128);
  v4 = *(v0 + 128);
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 408);
  v6 = *(v0 + 328);
  v7 = *(v0 + 312);
  v8 = *(v0 + 296);
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.generator);
  v5(v6, v8, v7);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 320);
  v14 = *(v0 + 328);
  v15 = *(v0 + 312);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v16 = 134218243;
    *(v16 + 4) = v4;
    *(v16 + 12) = 2085;
    lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69DA850], MEMORY[0x1E69DA860]);
    v17 = v4;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v13 + 8))(v14, v15);
    v21 = v18;
    v4 = v17;
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, &v26);

    *(v16 + 14) = v22;
    _os_log_impl(&dword_1AB828000, v10, v11, "Counted %ld tokens in prompt: %{sensitive}s", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x1AC5A6CD0](v25, -1, -1);
    MEMORY[0x1AC5A6CD0](v16, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v14, v15);
  }

  v23 = *(v0 + 8);

  return v23(v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = TokenGenerator.countTokens(in:);
  }

  else
  {

    v2 = TokenGenerator.countTokens(in:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v30 = v0;
  v1 = *(v0 + 96);
  *(v0 + 192) = *(v0 + 80);
  *(v0 + 208) = v1;
  *(v0 + 224) = *(v0 + 112);
  v2 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 16);
  *(v0 + 144) = v2;
  v3 = *(v0 + 64);
  *(v0 + 160) = *(v0 + 48);
  *(v0 + 176) = v3;
  outlined destroy of CountTokensResponse(v0 + 128);
  v4 = *(v0 + 128);
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 328);
  v5 = *(v0 + 336);
  v8 = *(v0 + 312);
  v7 = *(v0 + 320);
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.generator);
  (*(v7 + 16))(v6, v5, v8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 328);
  v14 = *(v0 + 336);
  v16 = *(v0 + 312);
  v15 = *(v0 + 320);
  if (v12)
  {
    v28 = *(v0 + 336);
    v17 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v17 = 134218243;
    *(v17 + 4) = v4;
    *(v17 + 12) = 2085;
    lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69DA850], MEMORY[0x1E69DA860]);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v11;
    v20 = v19;
    v21 = *(v15 + 8);
    v21(v13, v16);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v29);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_1AB828000, v10, v26, "Counted %ld tokens in prompt: %{sensitive}s", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1AC5A6CD0](v27, -1, -1);
    MEMORY[0x1AC5A6CD0](v17, -1, -1);

    v21(v28, v16);
  }

  else
  {

    v23 = *(v15 + 8);
    v23(v13, v16);
    v23(v14, v16);
  }

  v24 = *(v0 + 8);

  return v24(v4);
}

{
  (*(v0[40] + 8))(v0[42], v0[39]);

  v1 = v0[1];

  return v1();
}

uint64_t TokenGenerator._countTokens(in:promptVariant:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 48) = type metadata accessor for OneShotRequest(0);
  *(v5 + 56) = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  *(v5 + 64) = v7;
  *(v5 + 72) = *(v7 - 8);
  *(v5 + 80) = swift_task_alloc();
  v8 = type metadata accessor for PromptVariant();
  *(v5 + 88) = v8;
  *(v5 + 96) = *(v8 - 8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  v9 = type metadata accessor for Prompt();
  *(v5 + 120) = v9;
  *(v5 + 128) = *(v9 - 8);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = type metadata accessor for CountTokensRequest(0);
  v10 = swift_task_alloc();
  v11 = *a4;
  *(v5 + 168) = v10;
  *(v5 + 176) = v11;
  *(v5 + 184) = *(a4 + 1);
  *(v5 + 200) = a4[3];
  *(v5 + 208) = *(a4 + 2);
  *(v5 + 224) = a4[6];

  return MEMORY[0x1EEE6DFA0](TokenGenerator._countTokens(in:promptVariant:metadata:), 0, 0);
}

uint64_t TokenGenerator._countTokens(in:promptVariant:metadata:)()
{
  v40 = v0[28];
  v36 = v0[27];
  v39 = v0[26];
  v37 = v0[24];
  v38 = v0[25];
  v1 = v0[21];
  v34 = v0[22];
  v35 = v0[23];
  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[14];
  v31 = v0[18];
  v6 = v0[12];
  v32 = v0[20];
  v33 = v0[13];
  v42 = v0[11];
  v7 = v0[3];
  v30 = v0[4];
  v8 = *(v4 + 16);
  v0[29] = v8;
  v0[30] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v2, v7, v3);
  v9 = *(v6 + 16);
  v9(v5, v30, v42);
  XPCDictionary.init()();
  v8(v31, v2, v3);
  v10 = specialized PromptEnvelope.init(sealing:xpcData:)(v31, v1);
  v11 = (v1 + v32[5]);
  *v11 = v10;
  v11[1] = v12;
  v11[2] = v13;
  v11[3] = v14;
  v9(v33, v5, v42);
  PromptVariantEnvelope.init(sealing:xpcData:)(v33, v1, v1 + v32[6]);
  (*(v6 + 8))(v5, v42);
  v15 = *(v4 + 8);
  v0[31] = v15;
  v0[32] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v2, v3);
  v16 = (v1 + v32[7]);
  *v16 = v34;
  v16[1] = v35;
  v16[2] = v37;
  v16[3] = v38;
  v16[4] = v39;
  v16[5] = v36;
  v16[6] = v40;

  if (v36)
  {
    v17 = v0[26];
    v18 = v36;
  }

  else
  {
    v19 = v0[9];
    v20 = v0[10];
    v21 = v0[8];
    UUID.init()();
    v17 = UUID.uuidString.getter();
    v18 = v22;
    (*(v19 + 8))(v20, v21);
  }

  v0[33] = v18;
  v23 = v0[5];
  outlined init with copy of ToolDescription(v0[21], v0[7], type metadata accessor for CountTokensRequest);
  swift_storeEnumTagMultiPayload();
  v24 = *(v23 + 128);
  __swift_project_boxed_opaque_existential_1((v23 + 104), v24);

  v25 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15TokenGeneration16ModelCatalogStubV8AssetKeyV_SayAHGTt0g5Tf4g_n(&outlined read-only object #0 of TokenGenerator._countTokens(in:promptVariant:metadata:));
  v0[34] = v25;
  outlined destroy of ModelCatalogStub.AssetKey(&unk_1F2062600);
  v26 = swift_task_alloc();
  v0[35] = v26;
  lazy protocol witness table accessor for type CountTokensResponse and conformance CountTokensResponse();
  lazy protocol witness table accessor for type CountTokensResponse and conformance CountTokensResponse();
  *v26 = v0;
  v26[1] = TokenGenerator._countTokens(in:promptVariant:metadata:);
  v27 = v0[7];
  v28 = v0[2];

  return InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)(v28, v17, v18, v27, v25, &type metadata for CountTokensResponse, v24, &type metadata for CountTokensResponse);
}

{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = TokenGenerator._countTokens(in:promptVariant:metadata:);
  }

  else
  {
    v2 = TokenGenerator._countTokens(in:promptVariant:metadata:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[21];
  outlined destroy of ToolType(v0[7], type metadata accessor for OneShotRequest);
  outlined destroy of ToolType(v1, type metadata accessor for CountTokensRequest);

  v2 = v0[1];

  return v2();
}

{
  v28 = v0;
  v1 = v0[21];
  outlined destroy of ToolType(v0[7], type metadata accessor for OneShotRequest);
  outlined destroy of ToolType(v1, type metadata accessor for CountTokensRequest);
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v2 = v0[36];
  v3 = v0[29];
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[3];
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.generator);
  v3(v4, v6, v5);
  MEMORY[0x1AC5A6AE0](v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v26 = v0[36];
    v25 = v0[31];
    v10 = v0[17];
    v11 = v0[15];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = v14;
    *v12 = 136643075;
    lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69DA850], MEMORY[0x1E69DA860]);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v25(v10, v11);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v27);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2112;
    MEMORY[0x1AC5A6AE0](v26);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v13 = v19;
    _os_log_impl(&dword_1AB828000, v8, v9, "Failed to count tokens in prompt: %{sensitive}s. %@", v12, 0x16u);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1AC5A6CD0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1AC5A6CD0](v14, -1, -1);
    MEMORY[0x1AC5A6CD0](v12, -1, -1);
  }

  else
  {
    v20 = v0[31];
    v21 = v0[17];
    v22 = v0[15];

    v20(v21, v22);
  }

  swift_willThrow();

  v23 = v0[1];

  return v23();
}

uint64_t TokenGenerator.render(prompt:metadata:)(uint64_t a1)
{
  v2 = v1[58];
  if (v2)
  {
    v4 = v1[62];
    v3 = v1[63];
    v5 = v1[60];
    v6 = v1[57];
    v28 = v3;
    v29 = v6;
    v7 = v1[58];
    v25 = v1[59];
    v26 = v5;
    v23 = v25;
    v24 = v4;
    v8 = v1[61];
    v27 = v8;
  }

  else
  {
    v9 = v1[55];
    v10 = v1[56];
    v11 = v1[54];
    UUID.init()();
    v29 = UUID.uuidString.getter();
    v7 = v12;
    (*(v9 + 8))(v10, v11);
    v5 = 0x80000001ABA42A30;
    v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v4 = 0;
    v27 = 0;
    v28 = v1[63];
    v8 = v1[61];
    v26 = v1[60];
    v2 = v1[58];
    v24 = v1[62];
    v25 = v1[59];
    v23 = 0xD000000000000018;
    v6 = v1[57];
  }

  v1[67] = v3;
  v1[66] = v4;
  v1[65] = v5;
  v1[64] = v7;
  v13 = v5;
  v14 = v1[50];
  v15 = v1[45];
  v16 = v1[46];
  v17 = v1[38];
  v18 = *(v16 + 16);
  v1[68] = v18;
  v1[69] = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v18(v14, v17, v15);
  outlined copy of RequestMetadata?(v6, v2, v25, v26, v8, v24, v28);
  PromptVariant.init(_:)();
  v1[30] = v29;
  v1[31] = v7;
  v1[32] = v23;
  v1[33] = v13;
  v1[34] = v27;
  v1[35] = v4;
  v1[36] = v3;
  v19 = swift_task_alloc();
  v1[70] = v19;
  *v19 = v1;
  v19[1] = TokenGenerator.render(prompt:metadata:);
  v20 = v1[53];
  v21 = v1[38];

  return TokenGenerator._countTokens(in:promptVariant:metadata:)((v1 + 2), v21, v20, v1 + 30);
}

uint64_t TokenGenerator.render(prompt:promptTemplateInfo:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 296) = a1;
  *(v4 + 304) = a3;
  v8 = type metadata accessor for PromptTemplateInfo();
  *(v4 + 312) = v8;
  *(v4 + 320) = *(v8 - 8);
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = swift_task_alloc();
  type metadata accessor for Prompt.Rendering.Source();
  *(v4 + 352) = swift_task_alloc();
  v9 = type metadata accessor for Prompt.Rendering();
  *(v4 + 360) = v9;
  *(v4 + 368) = *(v9 - 8);
  *(v4 + 376) = swift_task_alloc();
  *(v4 + 384) = swift_task_alloc();
  v10 = *(a4 + 48);
  v11 = *(a4 + 16);
  *(v4 + 240) = *a4;
  v12 = *(a4 + 32);
  *(v4 + 256) = v11;
  *(v4 + 272) = v12;
  *(v4 + 288) = v10;
  v13 = swift_task_alloc();
  *(v4 + 392) = v13;
  *v13 = v4;
  v13[1] = TokenGenerator.render(prompt:promptTemplateInfo:metadata:);

  return TokenGenerator._countTokens(prompt:promptTemplateInfo:metadata:)(v4 + 16, a2, a3, v4 + 240);
}

uint64_t TokenGenerator.render(prompt:promptTemplateInfo:metadata:)()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = TokenGenerator.render(prompt:promptTemplateInfo:metadata:);
  }

  else
  {
    v2 = TokenGenerator.render(prompt:promptTemplateInfo:metadata:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v84 = v0;
  v1 = *(v0 + 96);
  *(v0 + 192) = *(v0 + 80);
  *(v0 + 208) = v1;
  *(v0 + 224) = *(v0 + 112);
  v2 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 16);
  *(v0 + 144) = v2;
  v3 = *(v0 + 64);
  *(v0 + 160) = *(v0 + 48);
  *(v0 + 176) = v3;
  if (*(v0 + 144))
  {
    v4 = *(v0 + 368);
    v79 = *(v0 + 360);
    v74 = *(v0 + 384);
    v76 = *(v0 + 296);

    Prompt.Rendering.Source.init(identifier:version:)();

    Prompt.Rendering.init(source:segments:renderedString:originalPrompt:tokenIDs:userInfo:detokenizedString:)();
    (*(v4 + 32))(v76, v74, v79);
    outlined destroy of CountTokensResponse(v0 + 128);
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 368);
    v5 = *(v0 + 376);
    v7 = *(v0 + 360);
    v8 = *(v0 + 344);
    v9 = *(v0 + 312);
    v10 = *(v0 + 320);
    v12 = *(v0 + 296);
    v11 = *(v0 + 304);
    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Log.generator);
    (*(v6 + 16))(v5, v12, v7);
    (*(v10 + 16))(v8, v11, v9);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    v16 = os_log_type_enabled(v14, v15);
    v18 = *(v0 + 368);
    v17 = *(v0 + 376);
    v19 = *(v0 + 360);
    v20 = *(v0 + 344);
    v22 = *(v0 + 312);
    v21 = *(v0 + 320);
    if (v16)
    {
      v77 = v15;
      v23 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v83[0] = v80;
      *v23 = 136643075;
      v24 = Prompt.Rendering.renderedString.getter();
      v75 = v22;
      v26 = v25;
      (*(v18 + 8))(v17, v19);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v83);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2085;
      v28 = PromptTemplateInfo.templateID.getter();
      v30 = v29;
      (*(v21 + 8))(v20, v75);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v83);

      *(v23 + 14) = v31;
      _os_log_impl(&dword_1AB828000, v14, v77, "Rendered prompt text: %{sensitive}s for prompt template identifer: %{sensitive}s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC5A6CD0](v80, -1, -1);
      MEMORY[0x1AC5A6CD0](v23, -1, -1);
    }

    else
    {

      (*(v21 + 8))(v20, v22);
      (*(v18 + 8))(v17, v19);
    }

    v52 = *(v0 + 8);
  }

  else
  {
    outlined destroy of CountTokensResponse(v0 + 128);
    v32 = &lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys;
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v33 = *(v0 + 336);
    v34 = *(v0 + 312);
    v35 = *(v0 + 320);
    v36 = *(v0 + 304);
    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Log.generator);
    (*(v35 + 16))(v33, v36, v34);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 336);
    v43 = *(v0 + 312);
    v42 = *(v0 + 320);
    if (v40)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v83[0] = v45;
      *v44 = 136380675;
      v81 = v37;
      v46 = PromptTemplateInfo.templateID.getter();
      v48 = v47;
      (*(v42 + 8))(v41, v43);
      v49 = v46;
      v37 = v81;
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v48, v83);

      *(v44 + 4) = v50;
      _os_log_impl(&dword_1AB828000, v38, v39, "Rendered prompt template: %{private}s is empty", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      v51 = v45;
      v32 = &lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys;
      MEMORY[0x1AC5A6CD0](v51, -1, -1);
      MEMORY[0x1AC5A6CD0](v44, -1, -1);
    }

    else
    {

      (*(v42 + 8))(v41, v43);
    }

    type metadata accessor for TokenGenerationError(0);
    lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
    v53 = swift_allocError();
    v55 = v54;
    v56 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *v55 = 0xD000000000000018;
    v55[1] = 0x80000001ABA42A50;
    v55[2] = 0;
    v55[3] = 0;
    v55[4] = 0;
    v55[5] = v56;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    if (v32[219] != -1)
    {
      swift_once();
    }

    v58 = *(v0 + 320);
    v57 = *(v0 + 328);
    v60 = *(v0 + 304);
    v59 = *(v0 + 312);
    __swift_project_value_buffer(v37, static Log.generator);
    (*(v58 + 16))(v57, v60, v59);
    MEMORY[0x1AC5A6AE0](v53);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    v63 = os_log_type_enabled(v61, v62);
    v65 = *(v0 + 320);
    v64 = *(v0 + 328);
    v66 = *(v0 + 312);
    if (v63)
    {
      v67 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v83[0] = v82;
      *v67 = 136643075;
      v68 = PromptTemplateInfo.templateID.getter();
      v70 = v69;
      (*(v65 + 8))(v64, v66);
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, v83);

      *(v67 + 4) = v71;
      *(v67 + 12) = 2112;
      MEMORY[0x1AC5A6AE0](v53);
      v72 = _swift_stdlib_bridgeErrorToNSError();
      *(v67 + 14) = v72;
      *v78 = v72;
      _os_log_impl(&dword_1AB828000, v61, v62, "Failed to render for prompt template: %{sensitive}s. %@", v67, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v78, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v78, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v82);
      MEMORY[0x1AC5A6CD0](v82, -1, -1);
      MEMORY[0x1AC5A6CD0](v67, -1, -1);
    }

    else
    {

      (*(v65 + 8))(v64, v66);
    }

    swift_willThrow();

    v52 = *(v0 + 8);
  }

  return v52();
}

{
  v24 = v0;
  v1 = v0[50];
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v3 = v0[40];
  v2 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.generator);
  (*(v3 + 16))(v2, v5, v4);
  MEMORY[0x1AC5A6AE0](v1);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[40];
  v10 = v0[41];
  v12 = v0[39];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v13 = 136643075;
    v14 = PromptTemplateInfo.templateID.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v23);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2112;
    MEMORY[0x1AC5A6AE0](v1);
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v18;
    *v21 = v18;
    _os_log_impl(&dword_1AB828000, v7, v8, "Failed to render for prompt template: %{sensitive}s. %@", v13, 0x16u);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1AC5A6CD0](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x1AC5A6CD0](v22, -1, -1);
    MEMORY[0x1AC5A6CD0](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t TokenGenerator._countTokens(prompt:promptTemplateInfo:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 48) = type metadata accessor for OneShotRequest(0);
  *(v5 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  *(v5 + 64) = swift_task_alloc();
  v7 = type metadata accessor for PromptVariant();
  *(v5 + 72) = v7;
  *(v5 + 80) = *(v7 - 8);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  v8 = type metadata accessor for PromptTemplateInfo();
  *(v5 + 104) = v8;
  *(v5 + 112) = *(v8 - 8);
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  v9 = type metadata accessor for Prompt();
  *(v5 + 136) = v9;
  *(v5 + 144) = *(v9 - 8);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = type metadata accessor for CountTokensPromptTemplateRequest(0);
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v5 + 240) = v10;
  *(v5 + 248) = *(v10 - 8);
  *(v5 + 256) = swift_task_alloc();
  v11 = *(a4 + 16);
  *(v5 + 264) = *a4;
  *(v5 + 280) = v11;
  *(v5 + 296) = *(a4 + 32);
  *(v5 + 312) = *(a4 + 48);

  return MEMORY[0x1EEE6DFA0](TokenGenerator._countTokens(prompt:promptTemplateInfo:metadata:), 0, 0);
}

{
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 48) = type metadata accessor for OneShotRequest(0);
  *(v5 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  *(v5 + 64) = swift_task_alloc();
  v7 = type metadata accessor for PromptVariant();
  *(v5 + 72) = v7;
  *(v5 + 80) = *(v7 - 8);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  v8 = type metadata accessor for Prompt();
  *(v5 + 104) = v8;
  *(v5 + 112) = *(v8 - 8);
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  v9 = type metadata accessor for PromptTemplateInfo();
  *(v5 + 136) = v9;
  *(v5 + 144) = *(v9 - 8);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = type metadata accessor for CountTokensPromptTemplateRequest(0);
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v5 + 232) = v10;
  *(v5 + 240) = *(v10 - 8);
  *(v5 + 248) = swift_task_alloc();
  v11 = *(a4 + 16);
  *(v5 + 256) = *a4;
  *(v5 + 272) = v11;
  *(v5 + 288) = *(a4 + 32);
  *(v5 + 304) = *(a4 + 48);

  return MEMORY[0x1EEE6DFA0](TokenGenerator._countTokens(prompt:promptTemplateInfo:metadata:), 0, 0);
}

uint64_t TokenGenerator._countTokens(prompt:promptTemplateInfo:metadata:)(uint64_t a1)
{
  v2 = v1[34];
  if (v2)
  {
    v3 = v1[38];
    v102 = v1[39];
    v99 = v1[37];
    v101 = v1[36];
    v96 = v1[35];
    v97 = v1[33];
  }

  else
  {
    v5 = v1[31];
    v4 = v1[32];
    v6 = v1[30];
    UUID.init()();
    v97 = UUID.uuidString.getter();
    v2 = v7;
    (*(v5 + 8))(v4, v6);
    v101 = 0x80000001ABA42DA0;
    v102 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v99 = 0;
    v3 = 0;
    v96 = 0xD000000000000031;
  }

  v8 = v1[25];
  v9 = v1[17];
  v10 = v1[18];
  v11 = v1[3];
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, v1[26], &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, v8, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  v12 = *(v10 + 48);
  v13 = v12(v8, 1, v9);
  v15 = v1[38];
  v14 = v1[39];
  v16 = v1[36];
  v95 = v1[37];
  v18 = v1[34];
  v17 = v1[35];
  v19 = v1[33];
  v100 = v2;
  v98 = v3;
  if (v13 == 1)
  {
    (*(v1[10] + 56))(v1[23], 1, 1, v1[9]);
    v20.n128_f64[0] = outlined copy of RequestMetadata?(v19, v18, v17, v16, v95, v15, v14);
  }

  else
  {
    v84 = v1[39];
    v85 = v1[23];
    v22 = v1[20];
    v21 = v1[21];
    v93 = v12;
    v23 = v1[17];
    v24 = v1[18];
    v83 = v1[38];
    v25 = v1[10];
    v88 = v1[9];
    (*(v24 + 32))(v21, v1[25], v23);
    (*(v24 + 16))(v22, v21, v23);
    outlined copy of RequestMetadata?(v19, v18, v17, v16, v95, v83, v84);
    PromptVariant.init(_:)();
    (*(v24 + 8))(v21, v23);
    v12 = v93;
    (*(v25 + 56))(v85, 0, 1, v88);
  }

  v26 = v1[27];
  v27 = v1[28];
  v28 = v1[26];
  v29 = v1[24];
  v30 = v1[17];
  v94 = *(v1[14] + 16);
  (v94)(v1[16], v1[4], v1[13], v20);

  XPCDictionary.init()();
  v31 = v27 + *(v26 + 20);
  *v31 = 0u;
  *(v31 + 16) = 0u;
  v32 = *(v26 + 24);
  v33 = type metadata accessor for PromptVariantEnvelope(0);
  v86 = *(*(v33 - 8) + 56);
  v89 = v33;
  v86(v27 + v32, 1, 1);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v29, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  if (v12(v29, 1, v30) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1[24], &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  }

  else
  {
    v34 = v1[28];
    v35 = v1[21];
    v36 = v1[18];
    v37 = v1[19];
    v38 = v1[17];
    (*(v36 + 32))(v37, v1[24], v38);
    (*(v36 + 16))(v35, v37, v38);
    v39 = specialized PromptEnvelope.init(sealing:xpcData:)(v35, v34);
    v41 = v40;
    v43 = v42;
    v91 = v32;
    v44 = v27;
    v46 = v45;
    (*(v36 + 8))(v37, v38);
    *v31 = v39;
    *(v31 + 8) = v41;
    *(v31 + 16) = v43;
    *(v31 + 24) = v46;
    v27 = v44;
    v32 = v91;
  }

  v47 = v1[22];
  v48 = v1[9];
  v49 = v1[10];
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1[23], v47, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  if ((*(v49 + 48))(v47, 1, v48) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1[22], &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  }

  else
  {
    v50 = v1[28];
    v52 = v1[11];
    v51 = v1[12];
    v54 = v1[9];
    v53 = v1[10];
    v55 = v1[8];
    (*(v53 + 32))(v51, v1[22], v54);
    (*(v53 + 16))(v52, v51, v54);
    PromptVariantEnvelope.init(sealing:xpcData:)(v52, v50, v55);
    (*(v53 + 8))(v51, v54);
    (v86)(v55, 0, 1, v89);
    outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v55, v27 + v32, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  }

  v56 = v1[28];
  v57 = v1[27];
  v90 = v1[26];
  v92 = v1[29];
  v87 = v1[23];
  v58 = v1[15];
  v59 = v1[16];
  v60 = v1[13];
  v61 = v1[14];
  v62 = (v56 + *(v57 + 32));
  *v62 = v97;
  v62[1] = v100;
  v62[2] = v96;
  v62[3] = v101;
  v62[4] = v99;
  v62[5] = v98;
  v62[6] = v102;
  v94(v58, v59, v60);
  v63 = (v56 + *(v57 + 28));
  v63[1] = PromptTemplateInfo.templateID.getter();
  v63[2] = v64;
  v65 = PromptTemplateInfo.richVariableBindings.getter();
  v67 = specialized _NativeDictionary.mapValues<A>(_:)(v65, v56, v66);

  *v63 = v67;
  type metadata accessor for PromptTemplateInfoEnvelope(0);
  PromptTemplateInfo.locale.getter();
  v68 = *(v61 + 8);
  v68(v58, v60);
  v68(v59, v60);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v87, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v90, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  v69 = v98;
  outlined init with take of ToolDescription(v56, v92, type metadata accessor for CountTokensPromptTemplateRequest);
  if (v98)
  {

    v70 = v99;
  }

  else
  {
    v72 = v1[31];
    v71 = v1[32];
    v73 = v1[30];
    UUID.init()();
    v70 = UUID.uuidString.getter();
    v75 = v74;

    (*(v72 + 8))(v71, v73);
    v69 = v75;
  }

  v1[40] = v69;
  v76 = v1[5];
  outlined init with copy of ToolDescription(v1[29], v1[7], type metadata accessor for CountTokensPromptTemplateRequest);
  swift_storeEnumTagMultiPayload();
  v77 = *(v76 + 128);
  __swift_project_boxed_opaque_existential_1((v76 + 104), v77);
  v78 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15TokenGeneration16ModelCatalogStubV8AssetKeyV_SayAHGTt0g5Tf4g_n(&outlined read-only object #0 of TokenGenerator._countTokens(prompt:promptTemplateInfo:metadata:));
  v1[41] = v78;
  outlined destroy of ModelCatalogStub.AssetKey(&unk_1F2062700);
  v79 = swift_task_alloc();
  v1[42] = v79;
  lazy protocol witness table accessor for type CountTokensResponse and conformance CountTokensResponse();
  lazy protocol witness table accessor for type CountTokensResponse and conformance CountTokensResponse();
  *v79 = v1;
  v79[1] = TokenGenerator._countTokens(prompt:promptTemplateInfo:metadata:);
  v80 = v1[7];
  v81 = v1[2];

  return InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)(v81, v70, v69, v80, v78, &type metadata for CountTokensResponse, v77, &type metadata for CountTokensResponse);
}

{
  v2 = v1[33];
  if (v2)
  {
    v3 = v1[37];
    v5 = v1[34];
    v4 = v1[35];
    v6 = v1[32];
    v88 = v6;
    v94 = v1[33];
    v87 = v5;
    v7 = v1[36];
    v92 = v4;
    v90 = v7;
    v91 = v3;
    v89 = v1[38];
    v93 = v89;
  }

  else
  {
    v9 = v1[30];
    v8 = v1[31];
    v10 = v1[29];
    UUID.init()();
    v88 = UUID.uuidString.getter();
    v94 = v11;
    (*(v9 + 8))(v8, v10);
    v92 = 0x80000001ABA42DA0;
    v93 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v90 = 0;
    v91 = 0;
    v3 = v1[37];
    v89 = v1[38];
    v4 = v1[35];
    v7 = v1[36];
    v2 = v1[33];
    v5 = v1[34];
    v87 = 0xD000000000000031;
    v6 = v1[32];
  }

  v12 = v1[23];
  v13 = v1[9];
  v14 = v1[10];
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1[3], v12, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  v84 = *(v14 + 48);
  LODWORD(v13) = v84(v12, 1, v13);
  outlined copy of RequestMetadata?(v6, v2, v5, v4, v7, v3, v89);
  if (v13 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1[23], &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  }

  else
  {
    PromptVariant.tgPrompt.getter();
    (*(v1[10] + 8))(v1[23], v1[9]);
  }

  v16 = v1[26];
  v15 = v1[27];
  v80 = v1[24];
  v17 = v1[22];
  v18 = v1[20];
  v19 = v1[17];
  v20 = v1[18];
  v21 = v1[14];
  v78 = v1[25];
  v79 = v1[13];
  v23 = v1[3];
  v22 = v1[4];
  (*(v21 + 56))();
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v23, v17, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  v83 = *(v20 + 16);
  v83(v18, v22, v19);

  XPCDictionary.init()();
  v24 = v15 + *(v16 + 20);
  *v24 = 0u;
  *(v24 + 16) = 0u;
  v25 = *(v16 + 24);
  v26 = type metadata accessor for PromptVariantEnvelope(0);
  v76 = *(*(v26 - 8) + 56);
  v77 = v15;
  v76(v15 + v25, 1, 1, v26);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v78, v80, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  if ((*(v21 + 48))(v80, 1, v79) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1[24], &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  }

  else
  {
    v27 = v1[27];
    v29 = v1[15];
    v28 = v1[16];
    v31 = v1[13];
    v30 = v1[14];
    (*(v30 + 32))(v28, v1[24], v31);
    (*(v30 + 16))(v29, v28, v31);
    v32 = specialized PromptEnvelope.init(sealing:xpcData:)(v29, v27);
    v34 = v33;
    v36 = v35;
    v81 = v26;
    v37 = v25;
    v39 = v38;
    (*(v30 + 8))(v28, v31);
    *v24 = v32;
    *(v24 + 8) = v34;
    *(v24 + 16) = v36;
    *(v24 + 24) = v39;
    v25 = v37;
    v26 = v81;
  }

  v40 = v1[21];
  v41 = v1[9];
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1[22], v40, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  if (v84(v40, 1, v41) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1[21], &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  }

  else
  {
    v42 = v1[27];
    v44 = v1[11];
    v43 = v1[12];
    v46 = v1[9];
    v45 = v1[10];
    v47 = v1[8];
    (*(v45 + 32))(v43, v1[21], v46);
    (*(v45 + 16))(v44, v43, v46);
    PromptVariantEnvelope.init(sealing:xpcData:)(v44, v42, v47);
    (*(v45 + 8))(v43, v46);
    v76(v47, 0, 1, v26);
    outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v47, v77 + v25, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  }

  v48 = v1[27];
  v49 = v1[26];
  v85 = v1[25];
  v86 = v1[28];
  v82 = v1[22];
  v50 = v1[19];
  v51 = v1[20];
  v52 = v1[17];
  v53 = v1[18];
  v54 = (v48 + *(v49 + 32));
  *v54 = v88;
  v54[1] = v94;
  v54[2] = v87;
  v54[3] = v92;
  v54[4] = v90;
  v54[5] = v91;
  v54[6] = v93;
  v83(v50, v51, v52);
  v55 = (v48 + *(v49 + 28));
  v55[1] = PromptTemplateInfo.templateID.getter();
  v55[2] = v56;
  v57 = PromptTemplateInfo.richVariableBindings.getter();
  v59 = specialized _NativeDictionary.mapValues<A>(_:)(v57, v48, v58);

  *v55 = v59;
  type metadata accessor for PromptTemplateInfoEnvelope(0);
  PromptTemplateInfo.locale.getter();
  v60 = *(v53 + 8);
  v60(v50, v52);
  v61 = v52;
  v62 = v91;
  v60(v51, v61);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v82, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v85, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  outlined init with take of ToolDescription(v48, v86, type metadata accessor for CountTokensPromptTemplateRequest);
  if (v91)
  {

    v63 = v90;
  }

  else
  {
    v65 = v1[30];
    v64 = v1[31];
    v66 = v1[29];
    UUID.init()();
    v63 = UUID.uuidString.getter();
    v68 = v67;

    (*(v65 + 8))(v64, v66);
    v62 = v68;
  }

  v1[39] = v62;
  v69 = v1[5];
  outlined init with copy of ToolDescription(v1[28], v1[7], type metadata accessor for CountTokensPromptTemplateRequest);
  swift_storeEnumTagMultiPayload();
  v70 = *(v69 + 128);
  __swift_project_boxed_opaque_existential_1((v69 + 104), v70);
  v71 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15TokenGeneration16ModelCatalogStubV8AssetKeyV_SayAHGTt0g5Tf4g_n(&outlined read-only object #0 of TokenGenerator._countTokens(prompt:promptTemplateInfo:metadata:));
  v1[40] = v71;
  outlined destroy of ModelCatalogStub.AssetKey(&unk_1F2062630);
  v72 = swift_task_alloc();
  v1[41] = v72;
  lazy protocol witness table accessor for type CountTokensResponse and conformance CountTokensResponse();
  lazy protocol witness table accessor for type CountTokensResponse and conformance CountTokensResponse();
  *v72 = v1;
  v72[1] = TokenGenerator._countTokens(prompt:promptTemplateInfo:metadata:);
  v73 = v1[7];
  v74 = v1[2];

  return InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)(v74, v63, v62, v73, v71, &type metadata for CountTokensResponse, v70, &type metadata for CountTokensResponse);
}

uint64_t TokenGenerator._countTokens(prompt:promptTemplateInfo:metadata:)()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = TokenGenerator._countTokens(prompt:promptTemplateInfo:metadata:);
  }

  else
  {
    v2 = TokenGenerator._countTokens(prompt:promptTemplateInfo:metadata:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[29];
  outlined destroy of ToolType(v0[7], type metadata accessor for OneShotRequest);
  outlined destroy of ToolType(v1, type metadata accessor for CountTokensPromptTemplateRequest);

  v2 = v0[1];

  return v2();
}

{
  v1 = v0[29];
  outlined destroy of ToolType(v0[7], type metadata accessor for OneShotRequest);
  outlined destroy of ToolType(v1, type metadata accessor for CountTokensPromptTemplateRequest);

  v2 = v0[1];

  return v2();
}

{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = TokenGenerator._countTokens(prompt:promptTemplateInfo:metadata:);
  }

  else
  {
    v2 = TokenGenerator._countTokens(prompt:promptTemplateInfo:metadata:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[28];
  outlined destroy of ToolType(v0[7], type metadata accessor for OneShotRequest);
  outlined destroy of ToolType(v1, type metadata accessor for CountTokensPromptTemplateRequest);

  v2 = v0[1];

  return v2();
}

{
  v1 = v0[28];
  outlined destroy of ToolType(v0[7], type metadata accessor for OneShotRequest);
  outlined destroy of ToolType(v1, type metadata accessor for CountTokensPromptTemplateRequest);

  v2 = v0[1];

  return v2();
}

uint64_t TokenGenerator.compileAdapter(dryRun:)(uint64_t a1, char a2)
{
  *(v3 + 145) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  v4 = type metadata accessor for UUID();
  *(v3 + 88) = v4;
  *(v3 + 96) = *(v4 - 8);
  *(v3 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator.compileAdapter(dryRun:), 0, 0);
}

uint64_t TokenGenerator.compileAdapter(dryRun:)(uint64_t a1)
{
  v3 = *(v1 + 96);
  v2 = *(v1 + 104);
  v4 = *(v1 + 88);
  UUID.init()();
  v5 = UUID.uuidString.getter();
  v7 = v6;
  *(v1 + 112) = v6;
  (*(v3 + 8))(v2, v4);
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v1 + 120) = v8;
  *(v1 + 16) = v5;
  *(v1 + 24) = v7;
  *(v1 + 32) = 0xD000000000000017;
  *(v1 + 40) = 0x80000001ABA42AE0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = v8;
  v9 = swift_task_alloc();
  *(v1 + 128) = v9;
  *v9 = v1;
  v9[1] = TokenGenerator.compileAdapter(dryRun:);
  v10 = *(v1 + 145);

  return TokenGenerator._compileAdapter(dryRun:metadata:)(v1 + 144, v10, (v1 + 16));
}

uint64_t TokenGenerator.compileAdapter(dryRun:)()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = TokenGenerator.compileAdapter(dryRun:);
  }

  else
  {

    v2 = TokenGenerator.compileAdapter(dryRun:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 144);
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.generator);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1AB828000, v3, v4, "Compiled adapter.", v5, 2u);
    MEMORY[0x1AC5A6CD0](v5, -1, -1);
  }

  v6 = *(v0 + 72);

  *v6 = v1;

  v7 = *(v0 + 8);

  return v7();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TokenGenerator._compileAdapter(dryRun:metadata:)(uint64_t a1, char a2, uint64_t *a3)
{
  *(v4 + 312) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  *(v4 + 32) = type metadata accessor for OneShotRequest(0);
  *(v4 + 40) = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  *(v4 + 48) = v6;
  *(v4 + 56) = *(v6 - 8);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = type metadata accessor for CompileAdapterRequest(0);
  *(v4 + 80) = swift_task_alloc();
  v7 = type metadata accessor for XPCCodableObject();
  *(v4 + 88) = v7;
  *(v4 + 96) = *(v7 - 8);
  *(v4 + 104) = swift_task_alloc();
  v8 = type metadata accessor for CustomAssetConfiguration();
  *(v4 + 112) = v8;
  *(v4 + 120) = *(v8 - 8);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  v9 = type metadata accessor for URL();
  *(v4 + 144) = v9;
  *(v4 + 152) = *(v9 - 8);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  v10 = type metadata accessor for ModelBundle();
  *(v4 + 176) = v10;
  *(v4 + 184) = *(v10 - 8);
  v11 = swift_task_alloc();
  v12 = *a3;
  *(v4 + 192) = v11;
  *(v4 + 200) = v12;
  *(v4 + 208) = *(a3 + 1);
  *(v4 + 224) = a3[3];
  *(v4 + 232) = *(a3 + 2);
  *(v4 + 248) = a3[6];

  return MEMORY[0x1EEE6DFA0](TokenGenerator._compileAdapter(dryRun:metadata:), 0, 0);
}

uint64_t TokenGenerator._compileAdapter(dryRun:metadata:)()
{
  v1 = *(v0 + 24);
  if (*(v1 + 24) && (v2 = *(v1 + 32), *(v2 + 16)))
  {
    (*(*(v0 + 184) + 16))(*(v0 + 192), v2 + ((*(*(v0 + 184) + 80) + 32) & ~*(*(v0 + 184) + 80)), *(v0 + 176));
    v3 = ModelBundle.isFileBased.getter();
    v4 = *(v0 + 192);
    if (v3)
    {
      v6 = *(v0 + 160);
      v5 = *(v0 + 168);
      v7 = *(v0 + 144);
      v8 = *(v0 + 152);
      ModelBundle.resourceURI.getter();
      (*(v8 + 16))(v6, v5, v7);
      type metadata accessor for FoundationModelsExtensionInfo();
      swift_allocObject();
      *(v0 + 256) = FoundationModelsExtensionInfo.init(fileURL:)();
      v41 = *(v0 + 240);
      v48 = *(v0 + 232);
      v49 = *(v0 + 248);
      v46 = *(v0 + 216);
      v47 = *(v0 + 224);
      v44 = *(v0 + 200);
      v45 = *(v0 + 208);
      v19 = *(v0 + 136);
      v52 = *(v0 + 128);
      v20 = *(v0 + 120);
      v42 = *(v0 + 112);
      v21 = *(v0 + 104);
      v22 = *(v0 + 80);
      v50 = *(v0 + 96);
      v51 = *(v0 + 88);
      v23 = *(v0 + 72);
      v43 = *(v0 + 312);
      URL.lastPathComponent.getter();
      xpc_dictionary_create_empty();
      XPCCodableObject.init(copying:)();
      CustomAssetConfiguration.init(instanceID:templateID:assetData:)();
      (*(v20 + 16))(v52, v19, v42);

      XPCDictionary.init()();
      v24 = CustomAssetConfiguration.secureIdentifier.getter();
      v25 = (v22 + v23[6]);
      *v25 = v24;
      v25[1] = v26;
      v27 = (v22 + v23[5]);
      *v27 = v44;
      v27[1] = v45;
      v27[2] = v46;
      v27[3] = v47;
      v27[4] = v48;
      v27[5] = v41;
      v27[6] = v49;
      *(v22 + v23[7]) = v43;

      FoundationModelsExtensionInfo.toXPCObject()();
      XPCCodableObject.copyUnderlyingXPCObject()();
      (*(v50 + 8))(v21, v51);
      XPCDictionary.subscript.setter();

      v28 = *(v20 + 8);
      *(v0 + 264) = v28;
      *(v0 + 272) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v28(v52, v42);
      if (v41)
      {
        v29 = *(v0 + 232);
        v30 = v41;
      }

      else
      {
        v32 = *(v0 + 56);
        v31 = *(v0 + 64);
        v33 = *(v0 + 48);
        UUID.init()();
        v29 = UUID.uuidString.getter();
        v30 = v34;
        (*(v32 + 8))(v31, v33);
      }

      *(v0 + 280) = v30;
      v35 = *(v0 + 24);
      outlined init with copy of ToolDescription(*(v0 + 80), *(v0 + 40), type metadata accessor for CompileAdapterRequest);
      swift_storeEnumTagMultiPayload();
      v36 = *(v35 + 128);
      __swift_project_boxed_opaque_existential_1((v35 + 104), v36);

      v37 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15TokenGeneration16ModelCatalogStubV8AssetKeyV_SayAHGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      *(v0 + 288) = v37;
      v38 = swift_task_alloc();
      *(v0 + 296) = v38;
      lazy protocol witness table accessor for type CompileAdapterResponse and conformance CompileAdapterResponse();
      lazy protocol witness table accessor for type CompileAdapterResponse and conformance CompileAdapterResponse();
      *v38 = v0;
      v38[1] = TokenGenerator._compileAdapter(dryRun:metadata:);
      v39 = *(v0 + 40);
      v40 = *(v0 + 16);

      return InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)(v40, v29, v30, v39, v37, &type metadata for CompileAdapterResponse, v36, &type metadata for CompileAdapterResponse);
    }

    v12 = *(v0 + 176);
    v13 = *(v0 + 184);
    type metadata accessor for TokenGenerationError(0);
    lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
    swift_allocError();
    v15 = v14;
    v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *v15 = 0x6C65646F6D206F4ELL;
    v15[1] = 0xEF656C646E756220;
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = 0;
    v15[5] = v16;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v13 + 8))(v4, v12);
  }

  else
  {
    type metadata accessor for TokenGenerationError(0);
    lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
    swift_allocError();
    v10 = v9;
    v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *v10 = 0x6C65646F6D206F4ELL;
    v10[1] = 0xEF656C646E756220;
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = v11;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v17 = *(v0 + 8);

  return v17();
}

{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = TokenGenerator._compileAdapter(dryRun:metadata:);
  }

  else
  {
    v2 = TokenGenerator._compileAdapter(dryRun:metadata:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v12 = v0[33];
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[19];
  v13 = v0[22];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[14];
  v8 = v0[10];
  v9 = v0[5];

  outlined destroy of ToolType(v9, type metadata accessor for OneShotRequest);
  outlined destroy of ToolType(v8, type metadata accessor for CompileAdapterRequest);
  v12(v6, v7);
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v2, v13);

  v10 = v0[1];

  return v10();
}

{
  v1 = v0[33];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[10];
  v5 = v0[5];

  outlined destroy of ToolType(v5, type metadata accessor for OneShotRequest);
  outlined destroy of ToolType(v4, type metadata accessor for CompileAdapterRequest);
  v1(v2, v3);
  v6 = v0[38];
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.generator);
  MEMORY[0x1AC5A6AE0](v6);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    MEMORY[0x1AC5A6AE0](v6);
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&dword_1AB828000, v8, v9, "Failed to compile adapter %@", v10, 0xCu);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1AC5A6CD0](v11, -1, -1);
    MEMORY[0x1AC5A6CD0](v10, -1, -1);
  }

  v14 = v0[23];
  v13 = v0[24];
  v16 = v0[21];
  v15 = v0[22];
  v17 = v0[18];
  v18 = v0[19];

  swift_willThrow();
  (*(v18 + 8))(v16, v17);
  (*(v14 + 8))(v13, v15);

  v19 = v0[1];

  return v19();
}

uint64_t TokenGenerator.register(documents:)(uint64_t a1)
{
  v214 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v207 = &v190 - v2;
  v206 = type metadata accessor for XPCCodableObject();
  v205 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  v204 = &v190 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = type metadata accessor for StreamingRequest(0);
  MEMORY[0x1EEE9AC00](v202);
  v209 = (&v190 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v235 = type metadata accessor for URL();
  v248 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v191 = &v190 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v230 = &v190 - v7;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMR);
  v240 = *(v254 - 8);
  MEMORY[0x1EEE9AC00](v254 - 8);
  v241 = &v190 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v217 = &v190 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v252 = &v190 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v250 = &v190 - v14;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV15BufferingPolicyOy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p__GMd, &_sScs12ContinuationV15BufferingPolicyOy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p__GMR);
  v247 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229);
  v228 = &v190 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p_GMd, &_sScs12ContinuationVy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p_GMR);
  v218 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v192 = &v190 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v227 = &v190 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGMR);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v193 = &v190 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v226 = &v190 - v24;
  v239 = type metadata accessor for DocumentResource();
  v25 = *(v239 - 8);
  MEMORY[0x1EEE9AC00](v239);
  v208 = &v190 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v190 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeModelsFoundation16DocumentResourceV7elementtMd, &_sSi6offset_26GenerativeModelsFoundation16DocumentResourceV7elementtMR);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v212 = (&v190 - v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeModelsFoundation16DocumentResourceV7elementtSgMd, &_sSi6offset_26GenerativeModelsFoundation16DocumentResourceV7elementtSgMR);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v243 = &v190 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v238 = (&v190 - v36);
  v37 = type metadata accessor for UUID();
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v190 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v194 = UUID.uuidString.getter();
  v197 = v41;
  v42 = *(v38 + 8);
  v199 = v40;
  v201 = v37;
  v200 = v38 + 8;
  v198 = v42;
  v42(v40, v37);
  v196 = 0x80000001ABA42B00;
  v43 = MEMORY[0x1E69E7CC0];
  v195 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v44 = 0;
  v242 = (v25 + 16);
  v251 = MEMORY[0x1E69E7CC8];
  v259 = MEMORY[0x1E69E7CC8];
  v237 = (v31 + 56);
  v236 = (v31 + 48);
  v45 = v239;
  v234 = (v25 + 32);
  v46 = *(v214 + 16);
  v225 = (v247 + 13);
  v224 = (v247 + 1);
  v223 = *MEMORY[0x1E69E8790];
  v47 = (v21 + 32);
  v48 = (v218 + 32);
  v233 = (v248 + 8);
  v215 = 0x80000001ABA42B20;
  v245 = (v218 + 8);
  v216 = v21;
  v244 = (v21 + 8);
  v213 = v25;
  v220 = (v25 + 8);
  v49 = v29;
  v211 = 0x80000001ABA42B50;
  v210 = v43;
  v246 = v16;
  v253 = v20;
  v232 = (v21 + 32);
  v231 = (v218 + 32);
  v221 = v46;
  v249 = v29;
  v222 = v30;
LABEL_2:
  v50 = v243;
  while (1)
  {
    if (v44 == v46)
    {
      v60 = 1;
      v248 = v46;
    }

    else
    {
      if (v44 >= v46)
      {
        goto LABEL_66;
      }

      v61 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        goto LABEL_67;
      }

      v62 = v213;
      v63 = v214 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v44;
      v64 = *(v30 + 48);
      v65 = v212;
      *v212 = v44;
      (*(v62 + 16))(&v65[v64], v63, v45);
      v66 = v65;
      v50 = v243;
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v66, v243, &_sSi6offset_26GenerativeModelsFoundation16DocumentResourceV7elementtMd, &_sSi6offset_26GenerativeModelsFoundation16DocumentResourceV7elementtMR);
      v60 = 0;
      v248 = v61;
    }

    (*v237)(v50, v60, 1, v30);
    v67 = v238;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v50, v238, &_sSi6offset_26GenerativeModelsFoundation16DocumentResourceV7elementtSgMd, &_sSi6offset_26GenerativeModelsFoundation16DocumentResourceV7elementtSgMR);
    if ((*v236)(v67, 1, v30) == 1)
    {
      break;
    }

    v247 = *v67;
    v68 = v67 + *(v30 + 48);
    v219 = *v234;
    v219(v49, v68, v45);
    type metadata accessor for DocumentRegistration();
    v69 = v228;
    v70 = v229;
    (*v225)(v228, v223, v229);
    v71 = v226;
    v72 = v227;
    static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)();
    (*v224)(v69, v70);
    v73 = *(v254 + 48);
    v74 = v250;
    (*v47)(v250, v71, v20);
    (*v48)(v74 + v73, v72, v16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43[2] + 1, 1, v43, &_ss23_ContiguousArrayStorageCyScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyAEsAF_p_G12continuationtGMd, &_ss23_ContiguousArrayStorageCyScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyAEsAF_p_G12continuationtGMR, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMR);
    }

    v76 = v43[2];
    v75 = v43[3];
    if (v76 >= v75 >> 1)
    {
      v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1, v43, &_ss23_ContiguousArrayStorageCyScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyAEsAF_p_G12continuationtGMd, &_ss23_ContiguousArrayStorageCyScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyAEsAF_p_G12continuationtGMR, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMR);
    }

    v43[2] = v76 + 1;
    v77 = v43;
    v78 = v43 + ((*(v240 + 80) + 32) & ~*(v240 + 80));
    v79 = *(v240 + 72);
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v250, &v78[v79 * v76], &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMR);
    v80 = v230;
    DocumentResource.url.getter();
    v81 = URL.absoluteString.getter();
    v83 = v82;
    v84 = *v233;
    (*v233)(v80, v235);
    v85 = v251;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v258._documents._rawValue = v85;
    v88 = specialized __RawDictionaryStorage.find<A>(_:)(v81, v83);
    v89 = v85[2];
    v90 = (v87 & 1) == 0;
    v91 = v89 + v90;
    if (__OFADD__(v89, v90))
    {
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
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v92 = v87;
    if (v85[3] >= v91)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v91, isUniquelyReferenced_nonNull_native);
      v93 = specialized __RawDictionaryStorage.find<A>(_:)(v81, v83);
      if ((v92 & 1) != (v94 & 1))
      {
        goto LABEL_70;
      }

      v88 = v93;
    }

    v49 = v249;
    if (v92)
    {

      rawValue = v258._documents._rawValue;
      *(*(v258._documents._rawValue + 7) + 8 * v88) = v247;
    }

    else
    {
      rawValue = v258._documents._rawValue;
      *(v258._documents._rawValue + (v88 >> 6) + 8) |= 1 << v88;
      v96 = (rawValue[6] + 16 * v88);
      *v96 = v81;
      v96[1] = v83;
      *(rawValue[7] + 8 * v88) = v247;
      v97 = rawValue[2];
      v98 = __OFADD__(v97, 1);
      v99 = v97 + 1;
      if (v98)
      {
        goto LABEL_68;
      }

      rawValue[2] = v99;
    }

    v100 = DocumentResource.fileDescriptor.getter();
    v251 = rawValue;
    if (v100 < 0)
    {
      v51 = v77[2];
      if (!v51)
      {
        goto LABEL_69;
      }

      v43 = v77;
      v52 = v252;
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v78[(v51 - 1) * v79], v252, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMR);
      v53 = *(v254 + 48);
      type metadata accessor for TokenGenerationError(0);
      lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
      v54 = swift_allocError();
      v56 = v55;
      v57 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation16DocumentResourceV8document_15TokenGeneration0gH5ErrorO7ContextVtMd, &_s26GenerativeModelsFoundation16DocumentResourceV8document_15TokenGeneration0gH5ErrorO7ContextVtMR) + 48));
      v45 = v239;
      (*v242)(v56, v49, v239);
      v58 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v59 = v211;
      *v57 = 0xD00000000000001ALL;
      v57[1] = v59;
      v57[2] = 0;
      v57[3] = 0;
      v57[4] = 0;
      v57[5] = v58;
      swift_storeEnumTagMultiPayload();
      v258._documents._rawValue = v54;
      v16 = v246;
      AsyncThrowingStream.Continuation.finish(throwing:)();
      (*v220)(v49, v45);
      (*v245)(v52 + v53, v16);
      v20 = v253;
      (*v244)(v52, v253);
    }

    else
    {
      v101 = DocumentResource.fileDescriptor.getter();
      if (xpc_fd_create(v101))
      {
        v112 = v191;
        DocumentResource.url.getter();
        v113 = URL.path(percentEncoded:)(1);
        v84(v112, v235);
        v114 = swift_unknownObjectRetain();
        specialized Dictionary.subscript.setter(v114, v113._countAndFlagsBits, v113._object);
        DocumentResource.url.getter();
        DocumentResource.fileDescriptor.getter();
        DocumentResource.metadata.getter();
        DocumentResource.init(_:_:_:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v210 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v210[2] + 1, 1, v210, &_ss23_ContiguousArrayStorageCy26GenerativeModelsFoundation16DocumentResourceVGMd, &_ss23_ContiguousArrayStorageCy26GenerativeModelsFoundation16DocumentResourceVGMR, MEMORY[0x1E69A1500]);
        }

        v48 = v231;
        v116 = v210[2];
        v115 = v210[3];
        v16 = v246;
        v20 = v253;
        v43 = v77;
        if (v116 >= v115 >> 1)
        {
          v210 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v115 > 1), v116 + 1, 1, v210, &_ss23_ContiguousArrayStorageCy26GenerativeModelsFoundation16DocumentResourceVGMd, &_ss23_ContiguousArrayStorageCy26GenerativeModelsFoundation16DocumentResourceVGMR, MEMORY[0x1E69A1500]);
        }

        v30 = v222;
        swift_unknownObjectRelease();
        v117 = v210;
        v210[2] = v116 + 1;
        v118 = v213;
        v45 = v239;
        v219(&v117[((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v116], v208, v239);
        v119 = DocumentResource.fileDescriptor.getter();
        close(v119);
        (*(v118 + 8))(v49, v45);
        v47 = v232;
        v46 = v221;
        v44 = v248;
        goto LABEL_2;
      }

      v102 = v77[2];
      if (!v102)
      {
        goto LABEL_65;
      }

      v43 = v77;
      v103 = v252;
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v78[(v102 - 1) * v79], v252, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMR);
      v104 = *(v254 + 48);
      type metadata accessor for TokenGenerationError(0);
      lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
      v105 = swift_allocError();
      v107 = v106;
      v108 = (v106 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation16DocumentResourceV8document_15TokenGeneration0gH5ErrorO7ContextVtMd, &_s26GenerativeModelsFoundation16DocumentResourceV8document_15TokenGeneration0gH5ErrorO7ContextVtMR) + 48));
      v45 = v239;
      (*v242)(v107, v49, v239);
      v109 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v110 = v215;
      *v108 = 0xD000000000000025;
      v108[1] = v110;
      v108[2] = 0;
      v108[3] = 0;
      v108[4] = 0;
      v108[5] = v109;
      swift_storeEnumTagMultiPayload();
      v258._documents._rawValue = v105;
      v16 = v246;
      AsyncThrowingStream.Continuation.finish(throwing:)();
      (*v245)(v103 + v104, v16);
      v20 = v253;
      (*v244)(v103, v253);
      v111 = DocumentResource.fileDescriptor.getter();
      close(v111);
      (*v220)(v49, v45);
    }

    v47 = v232;
    v48 = v231;
    v30 = v222;
    v50 = v243;
    v46 = v221;
    v44 = v248;
  }

  empty = xpc_dictionary_create_empty();
  v121 = v259;
  v122 = v259 + 64;
  v123 = 1 << *(v259 + 32);
  v124 = -1;
  if (v123 < 64)
  {
    v124 = ~(-1 << v123);
  }

  v125 = v124 & *(v259 + 64);
  v126 = (v123 + 63) >> 6;

  v127 = 0;
  if (v125)
  {
    while (1)
    {
      v128 = v127;
LABEL_43:
      v129 = __clz(__rbit64(v125));
      v125 &= v125 - 1;
      v130 = *(*(v121 + 56) + 8 * (v129 | (v128 << 6)));
      v131 = String.utf8CString.getter();

      swift_unknownObjectRetain();
      xpc_dictionary_set_value(empty, (v131 + 32), v130);
      swift_unknownObjectRelease();

      if (!v125)
      {
        goto LABEL_39;
      }
    }
  }

  while (1)
  {
LABEL_39:
    v128 = v127 + 1;
    if (__OFADD__(v127, 1))
    {
      __break(1u);
      goto LABEL_64;
    }

    if (v128 >= v126)
    {
      break;
    }

    v125 = *(v122 + 8 * v128);
    ++v127;
    if (v125)
    {
      v127 = v128;
      goto LABEL_43;
    }
  }

  v243 = v121;

  metadata.invocationIdentifier._countAndFlagsBits = v194;
  metadata.invocationIdentifier._object = v197;
  metadata.functionIdentifier._countAndFlagsBits = 0xD000000000000014;
  metadata.functionIdentifier._object = v196;
  metadata.clientRequestIdentifier.value._countAndFlagsBits = 0;
  metadata.clientRequestIdentifier.value._object = 0;
  metadata.userInfo._rawValue = v195;
  v132 = v210;

  RegisterDocumentRequest.init(documents:metadata:)(&v258, v132, &metadata);
  v133 = *&v258._metadata.invocationIdentifier._object;
  v134 = v209;
  *v209 = *&v258._documents._rawValue;
  v134[1] = v133;
  v135 = *&v258._metadata.clientRequestIdentifier.value._object;
  v134[2] = *&v258._metadata.functionIdentifier._object;
  v134[3] = v135;
  swift_storeEnumTagMultiPayload();
  v136 = v199;
  UUID.init()();
  v137 = UUID.uuidString.getter();
  v139 = v138;

  v198(v136, v201);
  v140 = v203[16];
  v141 = v203[17];
  v250 = __swift_project_boxed_opaque_existential_1(v203 + 13, v140);
  swift_unknownObjectRetain();
  v142 = v204;
  v242 = empty;
  XPCCodableObject.init(copying:)();
  v143 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15TokenGeneration16ModelCatalogStubV8AssetKeyV_SayAHGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v144 = type metadata accessor for RegisterDocumentResponseElement(0);
  v247 = v43;
  v145 = v144;
  v146 = lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type RegisterDocumentResponseElement and conformance RegisterDocumentResponseElement, type metadata accessor for RegisterDocumentResponseElement, &protocol conformance descriptor for RegisterDocumentResponseElement);
  v189 = lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type RegisterDocumentResponseElement and conformance RegisterDocumentResponseElement, type metadata accessor for RegisterDocumentResponseElement, &protocol conformance descriptor for RegisterDocumentResponseElement);
  v147 = v137;
  v148 = v247;
  InferenceSessionProtocol.streamingRequest<A>(loggingIdentifier:payload:xpcCodableObject:requiredAssets:expectedResponse:)(v147, v139, v142, v143, v140, v145, &metadata.invocationIdentifier._countAndFlagsBits, v141, v146, v189);

  (*(v205 + 8))(v142, v206);
  v149 = __swift_project_boxed_opaque_existential_1(&metadata, metadata.functionIdentifier._object);
  makeRegistrationSequence #1 <A>(_:) in TokenGenerator.register(documents:)(v149, &v256);
  v150 = v148[2];
  v239 = v150;
  if (v150)
  {
    *&v255 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v150, 0);
    v151 = v255;
    v152 = v148 + ((*(v240 + 80) + 32) & ~*(v240 + 80));
    v250 = *(v240 + 72);
    v153 = v246;
    v154 = v192;
    v155 = v231;
    do
    {
      v156 = v252;
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v152, v252, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMR);
      v157 = v241;
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v156, v241, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMR);
      v158 = *v155;
      (*v155)(v154, v157 + *(v254 + 48), v153);
      (*v244)(v157, v253);
      *&v255 = v151;
      v160 = *(v151 + 16);
      v159 = *(v151 + 24);
      if (v160 >= v159 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v159 > 1), v160 + 1, 1);
        v151 = v255;
      }

      *(v151 + 16) = v160 + 1;
      v158((v151 + ((*(v218 + 80) + 32) & ~*(v218 + 80)) + *(v218 + 72) * v160), v154, v153);
      v152 += v250;
      --v150;
    }

    while (v150);
    v161 = v251;
    v148 = v247;
  }

  else
  {
    v161 = v251;

    v151 = MEMORY[0x1E69E7CC0];
  }

  v162 = type metadata accessor for TaskPriority();
  v163 = v207;
  (*(*(v162 - 8) + 56))(v207, 1, 1, v162);
  outlined init with copy of PromptCompletionEvent(&v256, &v255);
  v164 = swift_allocObject();
  v164[2] = 0;
  v164[3] = 0;
  outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>(&v255, (v164 + 4));
  v164[9] = v161;
  v164[10] = v151;
  v249 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v163, &async function pointer to partial apply for closure #3 in TokenGenerator.register(documents:), v164);
  v165 = v148[2];
  v166 = v254;
  v167 = v252;
  v168 = v246;
  v169 = v217;
  v170 = v245;
  v171 = v244;
  if (v165)
  {
    v172 = v247 + ((*(v240 + 80) + 32) & ~*(v240 + 80));
    v250 = *(v240 + 72);
    do
    {
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v172, v169, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMR);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v169, v167, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMR);
      v173 = *(v166 + 48);

      AsyncThrowingStream.Continuation.onTermination.setter();
      v169 = v217;
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v217, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMR);
      v174 = v167 + v173;
      v175 = v253;
      (*v170)(v174, v168);
      (*v171)(v167, v175);
      v172 += v250;
      --v165;
    }

    while (v165);
  }

  v176 = v239;
  if (v239)
  {
    *&v255 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v239, 0);
    v250 = v255;
    v177 = v247 + ((*(v240 + 80) + 32) & ~*(v240 + 80));
    v248 = *(v240 + 72);
    v178 = v253;
    v179 = v193;
    v180 = v232;
    do
    {
      v181 = v252;
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v177, v252, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMR);
      v182 = v241;
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v181, v241, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMR);
      v183 = *(v166 + 48);
      v184 = *v180;
      (*v180)(v179, v182, v178);
      (*v245)(v182 + v183, v246);
      *&v255 = v250;
      v186 = *(v250 + 16);
      v185 = *(v250 + 24);
      if (v186 >= v185 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v185 > 1), v186 + 1, 1);
        v250 = v255;
      }

      v187 = v250;
      *(v250 + 16) = v186 + 1;
      v184((v187 + ((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v186), v179, v178);
      v177 += v248;
      --v176;
      v166 = v254;
    }

    while (v176);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0(&v256);
    outlined destroy of ToolType(v209, type metadata accessor for StreamingRequest);
  }

  else
  {
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0(&v256);
    outlined destroy of ToolType(v209, type metadata accessor for StreamingRequest);

    v250 = MEMORY[0x1E69E7CC0];
  }

  __swift_destroy_boxed_opaque_existential_0(&metadata);
  return v250;
}

uint64_t makeRegistrationSequence #1 <A>(_:) in TokenGenerator.register(documents:)@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  type metadata accessor for DocumentRegistration();
  a4[3] = type metadata accessor for AsyncMapSequence();
  a4[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a4);
  return AsyncSequence.map<A>(_:)();
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed RegisterDocumentResponseElement) -> (@out DocumentRegistration)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentResourceIdentifier();
  v5 = *(v4 - 8);
  v6 = swift_task_alloc();
  v7 = type metadata accessor for DocumentRegistration.Progress();
  v8 = *(v7 - 8);
  v9 = swift_task_alloc();
  type metadata accessor for DocumentRegistrationStatusEnvelope(0);
  v10 = swift_task_alloc();
  outlined init with copy of ToolDescription(a2, v10, type metadata accessor for DocumentRegistrationStatusEnvelope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v5 + 32))(v6, v10, v4);
      type metadata accessor for DocumentRegistrationEnvelope(0);
      static DocumentRegistration.finished(identifier:url:)();
      (*(v5 + 8))(v6, v4);
    }

    else
    {
      type metadata accessor for DocumentRegistrationEnvelope(0);
      static DocumentRegistration.error(description:url:)();
    }
  }

  else
  {
    DocumentRegistration.Progress.init(progress:bytes:totalBytes:)();
    type metadata accessor for DocumentRegistrationEnvelope(0);
    static DocumentRegistration.registering(progress:url:)();
    (*(v8 + 8))(v9, v7);
  }

  v12 = *(v2 + 8);

  return v12();
}

uint64_t closure #3 in TokenGenerator.register(documents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p__GMd, &_sScs12ContinuationV11YieldResultOy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p__GMR);
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  v8 = type metadata accessor for DocumentRegistration.InternalStatus();
  v6[17] = v8;
  v6[18] = *(v8 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = type metadata accessor for TokenGenerationError(0);
  v6[21] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p_GMd, &_sScs12ContinuationVy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p_GMR);
  v6[22] = v9;
  v6[23] = *(v9 - 8);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v6[26] = v10;
  v6[27] = *(v10 - 8);
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation20DocumentRegistrationVSgMd, &_s26GenerativeModelsFoundation20DocumentRegistrationVSgMR);
  v6[30] = swift_task_alloc();
  v11 = type metadata accessor for DocumentRegistration();
  v6[31] = v11;
  v6[32] = *(v11 - 8);
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #3 in TokenGenerator.register(documents:), 0, 0);
}

uint64_t closure #3 in TokenGenerator.register(documents:)()
{
  v1 = *(v0 + 88);
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  *(v0 + 40) = swift_getAssociatedTypeWitness();
  *(v0 + 48) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  *(v0 + 296) = *MEMORY[0x1E69A1508];
  *(v0 + 300) = *MEMORY[0x1E69A1518];
  *(v0 + 304) = *MEMORY[0x1E69A1510];
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v6);
  v8 = swift_task_alloc();
  *(v0 + 280) = v8;
  *v8 = v0;
  v8[1] = closure #3 in TokenGenerator.register(documents:);
  v9 = *(v0 + 240);

  return MEMORY[0x1EEE6D8C8](v9, v6, v7);
}

{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = closure #3 in TokenGenerator.register(documents:);
  }

  else
  {
    v2 = closure #3 in TokenGenerator.register(documents:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    (*(v2 + 32))(*(v0 + 272), v3, v1);
    v4 = static Task<>.isCancelled.getter();
    v5 = *(v0 + 272);
    if ((v4 & 1) == 0)
    {
      v6 = *(v0 + 232);
      v7 = *(v0 + 208);
      v8 = *(v0 + 216);
      v9 = *(v0 + 96);
      DocumentRegistration.url.getter();
      v10 = URL.absoluteString.getter();
      v12 = v11;
      (*(v8 + 8))(v6, v7);
      if (*(v9 + 16))
      {
        v13 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v12);
        v15 = v14;

        if (v15)
        {
          v19 = *(*(*(v0 + 96) + 56) + 8 * v13);
          if ((v19 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else
          {
            v20 = *(v0 + 104);
            if (v19 < *(v20 + 16))
            {
              v21 = *(v0 + 296);
              v23 = *(v0 + 144);
              v22 = *(v0 + 152);
              v24 = *(v0 + 136);
              (*(*(v0 + 184) + 16))(*(v0 + 192), v20 + ((*(*(v0 + 184) + 80) + 32) & ~*(*(v0 + 184) + 80)) + *(*(v0 + 184) + 72) * v19, *(v0 + 176));
              DocumentRegistration.internalStatus.getter();
              v25 = (*(v23 + 88))(v22, v24);
              if (v25 == v21)
              {
                v26 = *(v0 + 264);
                v27 = *(v0 + 272);
                v28 = *(v0 + 248);
                v29 = *(v0 + 256);
                v30 = *(v0 + 184);
                v31 = *(v0 + 192);
                v32 = *(v0 + 176);
                v33 = *(v0 + 128);
                v34 = *(v0 + 120);
                v82 = *(v0 + 112);
                v86 = *(v0 + 152);
                (*(*(v0 + 144) + 96))();
                (*(v29 + 16))(v26, v27, v28);
                AsyncThrowingStream.Continuation.yield(_:)();
                (*(v34 + 8))(v33, v82);
                (*(v30 + 8))(v31, v32);
                (*(v29 + 8))(v27, v28);
                v35 = type metadata accessor for DocumentRegistration.Progress();
                (*(*(v35 - 8) + 8))(v86, v35);
              }

              else if (v25 == *(v0 + 300))
              {
                v50 = *(v0 + 264);
                v49 = *(v0 + 272);
                v51 = *(v0 + 248);
                v52 = *(v0 + 256);
                v53 = *(v0 + 184);
                v54 = *(v0 + 192);
                v55 = *(v0 + 176);
                v56 = *(v0 + 128);
                v57 = *(v0 + 120);
                v84 = *(v0 + 112);
                v87 = *(v0 + 152);
                (*(*(v0 + 144) + 96))();
                (*(v52 + 16))(v50, v49, v51);
                AsyncThrowingStream.Continuation.yield(_:)();
                (*(v57 + 8))(v56, v84);
                *(v0 + 80) = 0;
                AsyncThrowingStream.Continuation.finish(throwing:)();
                (*(v53 + 8))(v54, v55);
                (*(v52 + 8))(v49, v51);
                v58 = type metadata accessor for DocumentResourceIdentifier();
                (*(*(v58 - 8) + 8))(v87, v58);
              }

              else
              {
                v62 = *(v0 + 256);
                v85 = *(v0 + 184);
                v88 = *(v0 + 248);
                v63 = *(v0 + 168);
                v79 = *(v0 + 176);
                v81 = *(v0 + 192);
                v64 = *(v0 + 152);
                v65 = *(v0 + 144);
                v78 = *(v0 + 272);
                if (v25 == *(v0 + 304))
                {
                  (*(v65 + 96))(v64, *(v0 + 136));
                  v66 = *v64;
                  v67 = v64[1];
                  v68 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
                  v69 = (v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation16DocumentResourceV8document_15TokenGeneration0gH5ErrorO7ContextVtMd, &_s26GenerativeModelsFoundation16DocumentResourceV8document_15TokenGeneration0gH5ErrorO7ContextVtMR) + 48));
                  DocumentRegistration.url.getter();
                  DocumentResource.init(url:)();
                  *v69 = v66;
                  v69[1] = v67;
                  v69[2] = 0;
                  v69[3] = 0;
                  v69[4] = 0;
                  v69[5] = v68;
                  swift_storeEnumTagMultiPayload();
                  lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
                  v70 = swift_allocError();
                  outlined init with copy of ToolDescription(v63, v71, type metadata accessor for TokenGenerationError);
                  *(v0 + 72) = v70;
                  AsyncThrowingStream.Continuation.finish(throwing:)();
                  outlined destroy of ToolType(v63, type metadata accessor for TokenGenerationError);
                  (*(v85 + 8))(v81, v79);
                  (*(v62 + 8))(v78, v88);
                }

                else
                {
                  v77 = *(v0 + 136);
                  v72 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
                  v76 = v62;
                  v73 = (v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation16DocumentResourceV8document_15TokenGeneration0gH5ErrorO7ContextVtMd, &_s26GenerativeModelsFoundation16DocumentResourceV8document_15TokenGeneration0gH5ErrorO7ContextVtMR) + 48));
                  DocumentRegistration.url.getter();
                  DocumentResource.init(url:)();
                  *v73 = 0xD00000000000001CLL;
                  v73[1] = 0x80000001ABA42D00;
                  v73[2] = 0;
                  v73[3] = 0;
                  v73[4] = 0;
                  v73[5] = v72;
                  swift_storeEnumTagMultiPayload();
                  lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
                  v74 = swift_allocError();
                  outlined init with copy of ToolDescription(v63, v75, type metadata accessor for TokenGenerationError);
                  *(v0 + 64) = v74;
                  AsyncThrowingStream.Continuation.finish(throwing:)();
                  outlined destroy of ToolType(v63, type metadata accessor for TokenGenerationError);
                  (*(v85 + 8))(v81, v79);
                  (*(v76 + 8))(v78, v88);
                  (*(v65 + 8))(v64, v77);
                }
              }

              v59 = *(v0 + 40);
              v60 = *(v0 + 48);
              __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v59);
              v61 = swift_task_alloc();
              *(v0 + 280) = v61;
              *v61 = v0;
              v61[1] = closure #3 in TokenGenerator.register(documents:);
              v16 = *(v0 + 240);
              v17 = v59;
              v18 = v60;

              return MEMORY[0x1EEE6D8C8](v16, v17, v18);
            }
          }

          __break(1u);
          return MEMORY[0x1EEE6D8C8](v16, v17, v18);
        }
      }

      else
      {
      }

      v36 = *(v0 + 104);
      v37 = *(v36 + 16);
      if (v37)
      {
        v38 = *(v0 + 184);
        v39 = *(v0 + 168);
        v40 = v36 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
        v83 = *(v38 + 72);
        v80 = *(v38 + 16);
        do
        {
          v41 = *(v0 + 200);
          v42 = *(v0 + 176);
          v43 = *(v0 + 184);
          v44 = *(v0 + 168);
          v80(v41, v40, v42);
          *v44 = 0xD00000000000002ALL;
          v39[3] = 0;
          v39[4] = 0;
          v39[1] = 0x80000001ABA42CD0;
          v39[2] = 0;
          v39[5] = MEMORY[0x1E69E7CC8];
          swift_storeEnumTagMultiPayload();
          lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
          v45 = swift_allocError();
          outlined init with copy of ToolDescription(v44, v46, type metadata accessor for TokenGenerationError);
          *(v0 + 56) = v45;
          AsyncThrowingStream.Continuation.finish(throwing:)();
          outlined destroy of ToolType(v44, type metadata accessor for TokenGenerationError);
          (*(v43 + 8))(v41, v42);
          v40 += v83;
          --v37;
        }

        while (v37);
      }

      v5 = *(v0 + 272);
    }

    (*(*(v0 + 256) + 8))(v5, *(v0 + 248));
    goto LABEL_16;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &_s26GenerativeModelsFoundation20DocumentRegistrationVSgMd, &_s26GenerativeModelsFoundation20DocumentRegistrationVSgMR);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v47 = *(v0 + 8);

  return v47();
}

{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a3, v22 - v9, &_sScPSgMd, &_sScPSgMR);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a3, &_sScPSgMd, &_sScPSgMR);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t closure #1 in closure #4 in TokenGenerator.register(documents:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11TerminationOy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p__GMd, &_sScs12ContinuationV11TerminationOy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p__GMR);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4, v6);
  LODWORD(a1) = (*(v5 + 88))(v8, v4);
  v9 = *MEMORY[0x1E69E8760];
  result = (*(v5 + 8))(v8, v4);
  if (a1 == v9)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    return MEMORY[0x1AC5A5D70](a2, MEMORY[0x1E69E7CA8] + 8, v11, MEMORY[0x1E69E7288]);
  }

  return result;
}

double TokenGenerator.complete(prompt:parameters:schema:)@<D0>(char *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, _OWORD *a4@<X8>)
{
  v117 = a4;
  v105 = a3;
  v109 = a1;
  v5 = type metadata accessor for ToolChoice();
  v128 = *(v5 - 8);
  v129 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v104 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v103 = &v102 - v8;
  v115 = type metadata accessor for CompletePromptRequest(0);
  MEMORY[0x1EEE9AC00](v115);
  v112 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v116 = &v102 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v111 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v113 = &v102 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v130 = &v102 - v17;
  v18 = type metadata accessor for Prompt();
  v125 = *(v18 - 8);
  v126 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v124 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v107 = &v102 - v21;
  v114 = type metadata accessor for PromptVariant();
  v122 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v106 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v110 = &v102 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v127 = &v102 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v102 - v28;
  v30 = type metadata accessor for Schema();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v121 = &v102 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v102 - v37;
  v39 = type metadata accessor for UUID();
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v102 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(a2 + 176);
  v157 = *(a2 + 160);
  v158 = v43;
  v159 = *(a2 + 192);
  v160 = *(a2 + 208);
  v44 = *(a2 + 112);
  v153 = *(a2 + 96);
  v154 = v44;
  v45 = *(a2 + 144);
  v155 = *(a2 + 128);
  v156 = v45;
  v46 = *(a2 + 48);
  v149 = *(a2 + 32);
  v150 = v46;
  v47 = *(a2 + 80);
  v151 = *(a2 + 64);
  v152 = v47;
  v48 = *(a2 + 16);
  v147 = *a2;
  v148 = v48;
  UUID.init()();
  v108 = UUID.uuidString.getter();
  v120 = v49;
  (*(v40 + 8))(v42, v39);
  v119 = 0x80000001ABA42A90;
  v118 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v105, v29, &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  v50 = (*(v31 + 48))(v29, 1, v30);
  v123 = v38;
  if (v50 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v29, &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
    v51 = type metadata accessor for Constraints(0);
    (*(*(v51 - 8) + 56))(v38, 1, 1, v51);
  }

  else
  {
    (*(v31 + 32))(v33, v29, v30);
    Schema.type.getter();
    (*(v31 + 8))(v33, v30);
    v52 = type metadata accessor for Constraints(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v52 - 8) + 56))(v38, 0, 1, v52);
  }

  v53 = v126;
  v54 = *(v125 + 16);
  v55 = v107;
  v56 = v109;
  v54(v107, v109, v126);
  v57 = v54;
  v105 = v54;
  v58 = v127;
  PromptVariant.init(_:)();
  v59 = v130;
  (*(v128 + 56))(v130, 1, 1, v129);
  v60 = v124;
  v57(v124, v56, v53);
  v109 = *(v122 + 16);
  v61 = v110;
  v62 = v58;
  v63 = v114;
  (v109)(v110, v62, v114);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v123, v121, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v64 = v59;
  v65 = v113;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v64, v113, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);

  outlined init with copy of SamplingParameters(&v147, v145);
  v66 = v112;
  XPCDictionary.init()();
  v105(v55, v60, v53);
  v67 = v128;
  v68 = v55;
  v69 = v63;
  v70 = specialized PromptEnvelope.init(sealing:xpcData:)(v68, v66);
  v71 = v115;
  v72 = (v66 + *(v115 + 20));
  *v72 = v70;
  v72[1] = v73;
  v72[2] = v74;
  v72[3] = v75;
  v76 = v106;
  (v109)(v106, v61, v63);
  v77 = v65;
  v78 = v129;
  PromptVariantEnvelope.init(sealing:xpcData:)(v76, v66, v66 + v71[6]);
  v141 = v157;
  v142 = v158;
  v143 = v159;
  v144 = v160;
  v137 = v153;
  v138 = v154;
  v139 = v155;
  v140 = v156;
  v133 = v149;
  v134 = v150;
  v135 = v151;
  v136 = v152;
  v131 = v147;
  v132 = v148;
  SamplingParametersEnvelope.init(sealing:)(&v131, v145);
  v79 = v66 + v71[7];
  v80 = v145[11];
  *(v79 + 160) = v145[10];
  *(v79 + 176) = v80;
  *(v79 + 192) = v145[12];
  *(v79 + 208) = v146;
  v81 = v145[7];
  *(v79 + 96) = v145[6];
  *(v79 + 112) = v81;
  v82 = v145[9];
  *(v79 + 128) = v145[8];
  *(v79 + 144) = v82;
  v83 = v145[3];
  *(v79 + 32) = v145[2];
  *(v79 + 48) = v83;
  v84 = v145[5];
  *(v79 + 64) = v145[4];
  *(v79 + 80) = v84;
  v85 = v145[1];
  *v79 = v145[0];
  *(v79 + 16) = v85;
  *(v66 + v71[9]) = MEMORY[0x1E69E7CC0];
  v86 = v111;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v77, v111, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  if ((*(v67 + 48))(v86, 1, v78) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v77, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v87 = *(v122 + 8);
    v87(v61, v69);
    (*(v125 + 8))(v124, v126);
    v88 = xmmword_1ABA26F10;
  }

  else
  {
    v89 = v103;
    (*(v67 + 32))(v103, v86, v78);
    v90 = v61;
    v91 = v104;
    (*(v67 + 16))(v104, v89, v78);
    ToolChoiceEnvelope.init(sealing:)(v91, &v131);
    (*(v67 + 8))(v89, v78);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v77, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v87 = *(v122 + 8);
    v87(v90, v69);
    (*(v125 + 8))(v124, v126);
    v88 = v131;
  }

  v92 = v69;
  *(v66 + v71[10]) = v88;
  swift_bridgeObjectRelease_n();
  v93 = (v66 + v71[12]);
  v94 = v119;
  v95 = v120;
  *v93 = v108;
  v93[1] = v95;
  v93[2] = 0xD000000000000023;
  v93[3] = v94;
  v93[4] = 0;
  v93[5] = 0;
  v93[6] = v118;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v121, v66 + v71[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v96 = MEMORY[0x1E69E7CC0];
  *(v66 + v71[11]) = MEMORY[0x1E69E7CC0];
  v97 = v66;
  v98 = v116;
  outlined init with take of ToolDescription(v97, v116, type metadata accessor for CompletePromptRequest);
  TokenGenerator.handleCompletePromptRequest(request:tools:)(v98, v96, &v131);

  outlined destroy of ToolType(v98, type metadata accessor for CompletePromptRequest);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v130, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v87(v127, v92);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v123, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  result = *&v131;
  v100 = v132;
  v101 = v117;
  *v117 = v131;
  v101[1] = v100;
  return result;
}

uint64_t TokenGenerator.complete(prompt:tgPrompt:parameters:tools:toolChoice:documents:constraint:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void, char *, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t (**a9)()@<X8>)
{
  v197 = a9;
  v218 = a7;
  v219 = a5;
  v196 = a6;
  v205 = a4;
  v217 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v227 = &v171 - v13;
  v226 = type metadata accessor for AnyTooling(0);
  v214 = *(v226 - 8);
  MEMORY[0x1EEE9AC00](v226);
  v225 = &v171 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for Schema();
  v175 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v210 = &v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for FunctionDescription(0);
  MEMORY[0x1EEE9AC00](v209);
  v208 = &v171 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v212 = (&v171 - v18);
  v211 = type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  MEMORY[0x1EEE9AC00](v211);
  v229 = (&v171 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v223 = type metadata accessor for ToolType(0);
  MEMORY[0x1EEE9AC00](v223);
  v230 = &v171 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v233 = (&v171 - v22);
  v23 = type metadata accessor for ToolDescription(0);
  v228 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v174 = (&v171 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v232 = &v171 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v231 = (&v171 - v28);
  v29 = type metadata accessor for ToolDescriptionEnvelope(0);
  v222 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v221 = &v171 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = type metadata accessor for ToolType();
  v215 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v220 = (&v171 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32);
  v234 = &v171 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v224 = &v171 - v35;
  v36 = type metadata accessor for ToolChoice();
  v194 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v173 = &v171 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v172 = &v171 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v192 = &v171 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v202 = &v171 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v203 = &v171 - v45;
  v201 = type metadata accessor for PromptVariant();
  v46 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v216 = (&v171 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v48);
  v199 = &v171 - v49;
  v200 = type metadata accessor for Prompt();
  v50 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v188 = &v171 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v198 = &v171 - v53;
  v207 = type metadata accessor for CompletePromptRequest(0);
  MEMORY[0x1EEE9AC00](v207);
  v206 = &v171 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v204 = &v171 - v56;
  v57 = type metadata accessor for UUID();
  v58 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v171 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *(a3 + 176);
  v250 = *(a3 + 160);
  v251 = v61;
  v252 = *(a3 + 192);
  v253 = *(a3 + 208);
  v62 = *(a3 + 112);
  v246 = *(a3 + 96);
  v247 = v62;
  v63 = *(a3 + 144);
  v248 = *(a3 + 128);
  v249 = v63;
  v64 = *(a3 + 48);
  v242 = *(a3 + 32);
  v243 = v64;
  v65 = *(a3 + 80);
  v244 = *(a3 + 64);
  v245 = v65;
  v66 = *(a3 + 16);
  v240 = *a3;
  v241 = v66;
  v67 = *a8;
  v68 = a8[1];
  v69 = a8[2];
  v70 = a8[3];
  v71 = a8[4];
  v72 = a8[5];
  v73 = a8[6];
  v195 = v36;
  v181 = v71;
  v182 = v72;
  v179 = v70;
  v180 = v69;
  v177 = v73;
  v178 = v67;
  if (v68)
  {
    v189 = v68;
    v190 = v67;
    v183 = v69;
    v184 = v72;
    v186 = v73;
    v187 = v70;
    v185 = v71;
  }

  else
  {
    UUID.init()();
    v74 = UUID.uuidString.getter();
    v189 = v75;
    v190 = v74;
    (*(v58 + 8))(v60, v57);
    v187 = 0x80000001ABA42970;
    v76 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v185 = 0;
    v186 = v76;
    v183 = 0xD000000000000054;
    v184 = 0;
  }

  v191 = v50;
  v77 = *(v50 + 16);
  v78 = v198;
  v79 = v200;
  v77(v198, a2, v200);
  v193 = v46;
  v176 = *(v46 + 16);
  v80 = v199;
  v81 = v201;
  v176(v199, v217, v201);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v218, v203, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v219, v202, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  outlined copy of RequestMetadata?(v178, v68, v180, v179, v181, v182, v177);
  outlined init with copy of SamplingParameters(&v240, v238);
  v82 = v206;
  XPCDictionary.init()();
  v83 = v188;
  v77(v188, v78, v79);
  v84 = specialized PromptEnvelope.init(sealing:xpcData:)(v83, v82);
  v85 = v207;
  v86 = (v82 + v207[5]);
  *v86 = v84;
  v86[1] = v87;
  v86[2] = v88;
  v86[3] = v89;
  v90 = v216;
  v176(v216, v80, v81);
  PromptVariantEnvelope.init(sealing:xpcData:)(v90, v82, v82 + v85[6]);
  v236[10] = v250;
  v236[11] = v251;
  v236[12] = v252;
  v237 = v253;
  v236[6] = v246;
  v236[7] = v247;
  v236[8] = v248;
  v236[9] = v249;
  v236[2] = v242;
  v236[3] = v243;
  v236[4] = v244;
  v236[5] = v245;
  v236[0] = v240;
  v236[1] = v241;
  SamplingParametersEnvelope.init(sealing:)(v236, v238);
  v91 = v82 + v85[7];
  v92 = v238[11];
  *(v91 + 160) = v238[10];
  *(v91 + 176) = v92;
  *(v91 + 192) = v238[12];
  *(v91 + 208) = v239;
  v93 = v238[7];
  *(v91 + 96) = v238[6];
  *(v91 + 112) = v93;
  v94 = v238[9];
  *(v91 + 128) = v238[8];
  *(v91 + 144) = v94;
  v95 = v238[3];
  *(v91 + 32) = v238[2];
  *(v91 + 48) = v95;
  v96 = v238[5];
  *(v91 + 64) = v238[4];
  *(v91 + 80) = v96;
  v97 = v238[1];
  *v91 = v238[0];
  *(v91 + 16) = v97;
  v98 = v205;
  v99 = *(v205 + 16);
  v100 = MEMORY[0x1E69E7CC0];
  v188 = v99;
  if (v99)
  {
    *&v236[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v99, 0);
    v101 = *&v236[0];
    v102 = *(v215 + 16);
    v218 = v215 + 16;
    v219 = v102;
    v103 = (v98 + ((*(v215 + 80) + 32) & ~*(v215 + 80)));
    v104 = *(v215 + 72);
    v216 = (v215 + 8);
    v217 = v104;
    v105 = v174;
    do
    {
      v106 = v234;
      v107 = v235;
      v108 = v219;
      v219(v234, v103, v235);
      v109 = v220;
      v108(v220, v106, v107);
      ToolDescription.init(toolType:)(v109, v105);
      (*v216)(v106, v107);
      *&v236[0] = v101;
      v111 = *(v101 + 16);
      v110 = *(v101 + 24);
      if (v111 >= v110 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v110 > 1), v111 + 1, 1);
        v101 = *&v236[0];
      }

      *(v101 + 16) = v111 + 1;
      outlined init with take of ToolDescription(v105, v101 + ((*(v228 + 80) + 32) & ~*(v228 + 80)) + *(v228 + 72) * v111, type metadata accessor for ToolDescription);
      v103 += v217;
      --v99;
    }

    while (v99);
    v100 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v101 = MEMORY[0x1E69E7CC0];
  }

  v112 = *(v101 + 16);
  v113 = v229;
  if (v112)
  {
    *&v236[0] = v100;
    v114 = v101;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v112, 0);
    v115 = *&v236[0];
    v116 = v114 + ((*(v228 + 80) + 32) & ~*(v228 + 80));
    v228 = *(v228 + 72);
    v220 = (v175 + 16);
    v218 = v114;
    v219 = (v175 + 8);
    do
    {
      v117 = v231;
      outlined init with copy of ToolDescription(v116, v231, type metadata accessor for ToolDescription);
      v118 = v117;
      v119 = v232;
      outlined init with copy of ToolDescription(v118, v232, type metadata accessor for ToolDescription);
      v120 = v119;
      v121 = v233;
      outlined init with copy of ToolDescription(v120, v233, type metadata accessor for ToolType);
      outlined init with copy of ToolDescription(v121, v230, type metadata accessor for ToolType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          outlined destroy of ToolType(v233, type metadata accessor for ToolType);
          v125 = type metadata accessor for FileGenerationParameters();
        }

        else
        {
          outlined destroy of ToolType(v233, type metadata accessor for ToolType);
          v125 = type metadata accessor for ImageGenerationParameters();
        }

        (*(*(v125 - 8) + 32))(v113, v230, v125);
      }

      else
      {
        if (EnumCaseMultiPayload == 2)
        {
          v126 = v212;
          outlined init with take of ToolDescription(v230, v212, type metadata accessor for FunctionDescription);
          v127 = v208;
          outlined init with copy of ToolDescription(v126, v208, type metadata accessor for FunctionDescription);
          v128 = *(v127 + 1);
          *v229 = *v127;
          v229[1] = v128;
          v129 = *(v127 + 3);
          v229[2] = *(v127 + 2);
          v229[3] = v129;
          v130 = v210;
          (*v220)(v210, &v127[*(v209 + 24)], v213);
          type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0);
          v113 = v229;

          Schema.type.getter();
          outlined destroy of ToolType(v233, type metadata accessor for ToolType);
          (*v219)(v130, v213);
          outlined destroy of ToolType(v127, type metadata accessor for FunctionDescription);
          v124 = v212;
          v123 = type metadata accessor for FunctionDescription;
        }

        else
        {
          v123 = type metadata accessor for ToolType;
          v124 = v233;
        }

        outlined destroy of ToolType(v124, v123);
      }

      v131 = v221;
      swift_storeEnumTagMultiPayload();
      outlined init with take of ToolDescription(v113, v131, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
      outlined destroy of ToolType(v232, type metadata accessor for ToolDescription);
      outlined destroy of ToolType(v231, type metadata accessor for ToolDescription);
      *&v236[0] = v115;
      v133 = *(v115 + 16);
      v132 = *(v115 + 24);
      if (v133 >= v132 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v132 > 1), v133 + 1, 1);
        v115 = *&v236[0];
      }

      *(v115 + 16) = v133 + 1;
      outlined init with take of ToolDescription(v131, v115 + ((*(v222 + 80) + 32) & ~*(v222 + 80)) + *(v222 + 72) * v133, type metadata accessor for ToolDescriptionEnvelope);
      v116 += v228;
      --v112;
    }

    while (v112);
  }

  else
  {

    v115 = MEMORY[0x1E69E7CC0];
  }

  *&v206[v207[9]] = v115;
  v134 = v202;
  v135 = v192;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v202, v192, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v137 = v194;
  v136 = v195;
  v138 = (*(v194 + 48))(v135, 1, v195);
  v139 = v196;
  v140 = v205;
  v141 = v215;
  if (v138 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v134, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    (*(v193 + 8))(v199, v201);
    (*(v191 + 8))(v198, v200);
    v142 = xmmword_1ABA26F10;
  }

  else
  {
    v143 = v172;
    (*(v137 + 32))(v172, v135, v136);
    v144 = v173;
    (*(v137 + 16))(v173, v143, v136);
    ToolChoiceEnvelope.init(sealing:)(v144, v236);
    (*(v137 + 8))(v143, v136);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v134, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    (*(v193 + 8))(v199, v201);
    (*(v191 + 8))(v198, v200);
    v142 = v236[0];
  }

  v146 = v189;
  v145 = v190;
  v148 = v186;
  v147 = v187;
  v150 = v184;
  v149 = v185;
  v151 = v183;
  v153 = v206;
  v152 = v207;
  *&v206[v207[10]] = v142;
  v154 = (v153 + v152[12]);
  *v154 = v145;
  v154[1] = v146;
  v154[2] = v151;
  v154[3] = v147;
  v154[4] = v149;
  v154[5] = v150;
  v154[6] = v148;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v203, v153 + v152[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  *(v153 + v152[11]) = v139;
  outlined init with take of ToolDescription(v153, v204, type metadata accessor for CompletePromptRequest);
  v155 = v188;
  if (v188)
  {
    v157 = *(v141 + 16);
    v156 = v141 + 16;
    v158 = v140 + ((*(v156 + 64) + 32) & ~*(v156 + 64));
    v232 = *(v156 + 56);
    v233 = v157;
    v231 = (v156 - 8);
    v159 = (v214 + 48);

    v160 = MEMORY[0x1E69E7CC0];
    v215 = v156;
    v161 = v224;
    do
    {
      v162 = v235;
      v163 = v233;
      (v233)(v161, v158, v235);
      v164 = v234;
      v163(v234, v161, v162);
      v165 = v164;
      v166 = v227;
      AnyTooling.init(_:)(v165, v227);
      (*v231)(v161, v162);
      if ((*v159)(v166, 1, v226) == 1)
      {
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v166, &_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
      }

      else
      {
        outlined init with take of ToolDescription(v166, v225, type metadata accessor for AnyTooling);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v160 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v160[2] + 1, 1, v160, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMR, type metadata accessor for AnyTooling);
        }

        v168 = v160[2];
        v167 = v160[3];
        if (v168 >= v167 >> 1)
        {
          v160 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v167 > 1), v168 + 1, 1, v160, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMR, type metadata accessor for AnyTooling);
        }

        v160[2] = v168 + 1;
        outlined init with take of ToolDescription(v225, v160 + ((*(v214 + 80) + 32) & ~*(v214 + 80)) + *(v214 + 72) * v168, type metadata accessor for AnyTooling);
      }

      v158 += v232;
      --v155;
    }

    while (v155);
  }

  else
  {

    v160 = MEMORY[0x1E69E7CC0];
  }

  v169 = v204;
  TokenGenerator.handleCompletePromptRequest(request:tools:)(v204, v160, v197);

  return outlined destroy of ToolType(v169, type metadata accessor for CompletePromptRequest);
}

uint64_t TokenGenerator.complete(prompt:parameters:tools:toolChoice:schema:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, void (**a5)(char *, uint64_t)@<X4>, uint64_t (**a6)()@<X8>)
{
  v222 = a1;
  v183 = a3;
  v208 = a4;
  v209 = a5;
  v182 = a6;
  v200 = type metadata accessor for FunctionDescription(0);
  MEMORY[0x1EEE9AC00](v200);
  v199 = &v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v203 = &v168 - v9;
  v201 = type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  MEMORY[0x1EEE9AC00](v201);
  v219 = (&v168 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v212 = type metadata accessor for ToolType(0);
  MEMORY[0x1EEE9AC00](v212);
  v220 = (&v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v225 = (&v168 - v13);
  v14 = type metadata accessor for ToolDescription(0);
  v217 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v175 = (&v168 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v224 = (&v168 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v223 = (&v168 - v19);
  v20 = type metadata accessor for ToolDescriptionEnvelope(0);
  v211 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v216 = &v168 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v205 = &v168 - v23;
  v215 = type metadata accessor for AnyTooling(0);
  v204 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v214 = &v168 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = type metadata accessor for ToolType();
  v218 = *(v245 - 8);
  MEMORY[0x1EEE9AC00](v245);
  v210 = (&v168 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v226 = &v168 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v213 = &v168 - v29;
  v30 = type metadata accessor for ToolChoice();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v174 = &v168 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v173 = &v168 - v34;
  v191 = type metadata accessor for PromptVariant();
  v187 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v207 = &v168 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v190 = &v168 - v37;
  v193 = type metadata accessor for CompletePromptRequest(0);
  MEMORY[0x1EEE9AC00](v193);
  v192 = &v168 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v188 = &v168 - v40;
  v41 = type metadata accessor for UUID();
  v177 = *(v41 - 8);
  v178 = v41;
  MEMORY[0x1EEE9AC00](v41);
  v176 = &v168 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for Prompt();
  v194 = *(v43 - 8);
  v195 = v43;
  MEMORY[0x1EEE9AC00](v43);
  v206 = (&v168 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v45);
  v186 = &v168 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v198 = &v168 - v48;
  v49 = type metadata accessor for Schema();
  v196 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v168 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v54 = &v168 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v185 = &v168 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v168 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  MEMORY[0x1EEE9AC00](v60 - 8);
  v179 = &v168 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v184 = &v168 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v168 - v65;
  v67 = *(a2 + 176);
  v241 = *(a2 + 160);
  v242 = v67;
  v243 = *(a2 + 192);
  v244 = *(a2 + 208);
  v68 = *(a2 + 112);
  v237 = *(a2 + 96);
  v238 = v68;
  v69 = *(a2 + 144);
  v239 = *(a2 + 128);
  v240 = v69;
  v70 = *(a2 + 48);
  v233 = *(a2 + 32);
  v234 = v70;
  v71 = *(a2 + 80);
  v235 = *(a2 + 64);
  v236 = v71;
  v72 = *(a2 + 16);
  v231 = *a2;
  v232 = v72;
  v171 = *(v31 + 16);
  v172 = v31 + 16;
  v171(&v168 - v65, v208, v30);
  v180 = v31;
  v181 = v30;
  v73 = v31;
  v74 = v196;
  v75 = *(v73 + 56);
  v197 = v66;
  v76 = v30;
  v77 = v49;
  v75(v66, 0, 1, v76);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v209, v54, &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  if ((*(v74 + 48))(v54, 1, v49) == 1)
  {
    v78 = type metadata accessor for Constraints(0);
    (*(*(v78 - 8) + 56))(v59, 1, 1, v78);
  }

  else
  {
    (*(v74 + 32))(v51, v54, v49);
    Schema.type.getter();
    (*(v74 + 8))(v51, v49);
    v79 = type metadata accessor for Constraints(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v79 - 8) + 56))(v59, 0, 1, v79);
  }

  v80 = v198;
  v81 = v221;
  v82 = v222;
  PromptVariant.tgPrompt.getter();
  if (v81)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v59, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v197, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  }

  else
  {
    v189 = v51;
    v202 = v77;
    v170 = 0;
    v84 = v176;
    UUID.init()();
    v85 = UUID.uuidString.getter();
    v168 = v86;
    v169 = v85;
    (*(v177 + 8))(v84, v178);
    v176 = "n Not Provided for ";
    v177 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v87 = *(v194 + 16);
    v88 = v186;
    v89 = v80;
    v90 = v195;
    v87(v186, v89, v195);
    v91 = *(v187 + 16);
    v91(v190, v82, v191);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v59, v185, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v197, v184, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    outlined init with copy of SamplingParameters(&v231, v229);
    v92 = v192;
    XPCDictionary.init()();
    v178 = v59;
    v93 = v206;
    v87(v206, v88, v90);
    v94 = specialized PromptEnvelope.init(sealing:xpcData:)(v93, v92);
    v95 = v193;
    v96 = (v92 + v193[5]);
    *v96 = v94;
    v96[1] = v97;
    v96[2] = v98;
    v96[3] = v99;
    v100 = v207;
    v91(v207, v190, v191);
    PromptVariantEnvelope.init(sealing:xpcData:)(v100, v92, v92 + v95[6]);
    v227[10] = v241;
    v227[11] = v242;
    v227[12] = v243;
    v228 = v244;
    v227[6] = v237;
    v227[7] = v238;
    v227[8] = v239;
    v227[9] = v240;
    v227[2] = v233;
    v227[3] = v234;
    v227[4] = v235;
    v227[5] = v236;
    v227[0] = v231;
    v227[1] = v232;
    SamplingParametersEnvelope.init(sealing:)(v227, v229);
    v101 = v92 + v95[7];
    v102 = v229[11];
    *(v101 + 160) = v229[10];
    *(v101 + 176) = v102;
    *(v101 + 192) = v229[12];
    *(v101 + 208) = v230;
    v103 = v229[7];
    *(v101 + 96) = v229[6];
    *(v101 + 112) = v103;
    v104 = v229[9];
    *(v101 + 128) = v229[8];
    *(v101 + 144) = v104;
    v105 = v229[3];
    *(v101 + 32) = v229[2];
    *(v101 + 48) = v105;
    v106 = v229[5];
    *(v101 + 64) = v229[4];
    *(v101 + 80) = v106;
    v107 = v229[1];
    *v101 = v229[0];
    *(v101 + 16) = v107;
    v108 = v183;
    v109 = *(v183 + 16);
    v222 = v109;
    v110 = MEMORY[0x1E69E7CC0];
    if (v109)
    {
      *&v227[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v109, 0);
      v111 = *&v227[0];
      v112 = *(v218 + 16);
      v113 = (v108 + ((*(v218 + 80) + 32) & ~*(v218 + 80)));
      v207 = *(v218 + 72);
      v208 = v112;
      v209 = (v218 + 16);
      v206 = (v218 + 8);
      v114 = v175;
      do
      {
        v221 = v111;
        v115 = v226;
        v116 = v245;
        v117 = v208;
        (v208)(v226, v113, v245);
        v118 = v210;
        (v117)(v210, v115, v116);
        ToolDescription.init(toolType:)(v118, v114);
        v111 = v221;
        (*v206)(v115, v116);
        *&v227[0] = v111;
        v120 = *(v111 + 16);
        v119 = *(v111 + 24);
        if (v120 >= v119 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v119 > 1), v120 + 1, 1);
          v111 = *&v227[0];
        }

        *(v111 + 16) = v120 + 1;
        outlined init with take of ToolDescription(v114, v111 + ((*(v217 + 80) + 32) & ~*(v217 + 80)) + *(v217 + 72) * v120, type metadata accessor for ToolDescription);
        v113 += v207;
        --v109;
      }

      while (v109);
      v110 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v111 = MEMORY[0x1E69E7CC0];
    }

    v121 = v176 | 0x8000000000000000;
    v122 = *(v111 + 16);
    v123 = v219;
    if (v122)
    {
      v208 = (v176 | 0x8000000000000000);
      *&v227[0] = v110;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v122, 0);
      v124 = *&v227[0];
      v125 = (*(v217 + 80) + 32) & ~*(v217 + 80);
      v221 = v111;
      v126 = v111 + v125;
      v217 = *(v217 + 72);
      v209 = (v196 + 8);
      v210 = (v196 + 16);
      do
      {
        v127 = v223;
        outlined init with copy of ToolDescription(v126, v223, type metadata accessor for ToolDescription);
        v128 = v127;
        v129 = v224;
        outlined init with copy of ToolDescription(v128, v224, type metadata accessor for ToolDescription);
        v130 = v129;
        v131 = v225;
        outlined init with copy of ToolDescription(v130, v225, type metadata accessor for ToolType);
        outlined init with copy of ToolDescription(v131, v220, type metadata accessor for ToolType);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            outlined destroy of ToolType(v225, type metadata accessor for ToolType);
            outlined destroy of ToolType(v224, type metadata accessor for ToolDescription);
            outlined destroy of ToolType(v223, type metadata accessor for ToolDescription);
            v133 = type metadata accessor for FileGenerationParameters();
          }

          else
          {
            outlined destroy of ToolType(v225, type metadata accessor for ToolType);
            outlined destroy of ToolType(v224, type metadata accessor for ToolDescription);
            outlined destroy of ToolType(v223, type metadata accessor for ToolDescription);
            v133 = type metadata accessor for ImageGenerationParameters();
          }

          (*(*(v133 - 8) + 32))(v123, v220, v133);
        }

        else
        {
          if (EnumCaseMultiPayload == 2)
          {
            v134 = v203;
            outlined init with take of ToolDescription(v220, v203, type metadata accessor for FunctionDescription);
            v135 = v199;
            outlined init with copy of ToolDescription(v134, v199, type metadata accessor for FunctionDescription);
            v136 = *(v135 + 1);
            *v219 = *v135;
            v219[1] = v136;
            v137 = *(v135 + 3);
            v219[2] = *(v135 + 2);
            v219[3] = v137;
            v138 = v189;
            (*v210)(v189, &v135[*(v200 + 24)], v202);
            type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0);

            Schema.type.getter();
            (*v209)(v138, v202);
            outlined destroy of ToolType(v135, type metadata accessor for FunctionDescription);
            v123 = v219;
            outlined destroy of ToolType(v203, type metadata accessor for FunctionDescription);
          }

          outlined destroy of ToolType(v225, type metadata accessor for ToolType);
          outlined destroy of ToolType(v224, type metadata accessor for ToolDescription);
          outlined destroy of ToolType(v223, type metadata accessor for ToolDescription);
        }

        swift_storeEnumTagMultiPayload();
        v139 = v216;
        outlined init with take of ToolDescription(v123, v216, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
        *&v227[0] = v124;
        v141 = *(v124 + 16);
        v140 = *(v124 + 24);
        if (v141 >= v140 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v140 > 1), v141 + 1, 1);
          v139 = v216;
          v124 = *&v227[0];
        }

        *(v124 + 16) = v141 + 1;
        outlined init with take of ToolDescription(v139, v124 + ((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v211 + 72) * v141, type metadata accessor for ToolDescriptionEnvelope);
        v126 += v217;
        --v122;
      }

      while (v122);

      v121 = v208;
    }

    else
    {

      v124 = MEMORY[0x1E69E7CC0];
    }

    *&v192[v193[9]] = v124;
    v142 = v184;
    v143 = v179;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v184, v179, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v145 = v180;
    v144 = v181;
    v146 = (*(v180 + 48))(v143, 1, v181);
    v147 = v205;
    v148 = v222;
    if (v146 == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v142, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v187 + 8))(v190, v191);
      v220 = *(v194 + 8);
      (v220)(v186, v195);
      v149 = xmmword_1ABA26F10;
    }

    else
    {
      v150 = v173;
      (*(v145 + 32))(v173, v143, v144);
      v151 = v174;
      v171(v174, v150, v144);
      ToolChoiceEnvelope.init(sealing:)(v151, v227);
      (*(v145 + 8))(v150, v144);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v142, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v187 + 8))(v190, v191);
      v220 = *(v194 + 8);
      (v220)(v186, v195);
      v149 = v227[0];
    }

    v152 = MEMORY[0x1E69E7CC0];
    v153 = v169;
    v155 = v192;
    v154 = v193;
    *&v192[v193[10]] = v149;
    swift_bridgeObjectRelease_n();
    v156 = (v155 + v154[12]);
    v157 = v168;
    *v156 = v153;
    v156[1] = v157;
    v156[2] = 0xD000000000000054;
    v156[3] = v121;
    v156[4] = 0;
    v156[5] = 0;
    v156[6] = v177;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v185, v155 + v154[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    *(v155 + v154[11]) = v152;
    outlined init with take of ToolDescription(v155, v188, type metadata accessor for CompletePromptRequest);
    if (v148)
    {
      v158 = *(v218 + 16);
      v159 = v183 + ((*(v218 + 80) + 32) & ~*(v218 + 80));
      v224 = (v218 + 8);
      v225 = v158;
      v223 = (v204 + 48);
      v218 += 16;
      v221 = *(v218 + 56);
      do
      {
        v222 = v148;
        v160 = v152;
        v161 = v213;
        v162 = v245;
        v163 = v225;
        (v225)(v213, v159, v245);
        v164 = v226;
        v163(v226, v161, v162);
        AnyTooling.init(_:)(v164, v147);
        (*v224)(v161, v162);
        if ((*v223)(v147, 1, v215) == 1)
        {
          outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v147, &_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
          v152 = v160;
        }

        else
        {
          outlined init with take of ToolDescription(v147, v214, type metadata accessor for AnyTooling);
          v152 = v160;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v152 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v160[2] + 1, 1, v160, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMR, type metadata accessor for AnyTooling);
          }

          v166 = v152[2];
          v165 = v152[3];
          if (v166 >= v165 >> 1)
          {
            v152 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v165 > 1), v166 + 1, 1, v152, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMR, type metadata accessor for AnyTooling);
          }

          v152[2] = v166 + 1;
          outlined init with take of ToolDescription(v214, v152 + ((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * v166, type metadata accessor for AnyTooling);
          v147 = v205;
        }

        v159 += v221;
        v148 = v222 - 1;
      }

      while (v222 != 1);
    }

    v167 = v188;
    TokenGenerator.handleCompletePromptRequest(request:tools:)(v188, v152, v182);

    outlined destroy of ToolType(v167, type metadata accessor for CompletePromptRequest);
    (v220)(v198, v195);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v178, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v197, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  }
}

uint64_t TokenGenerator.complete(prompt:parameters:tools:toolChoice:schema:)@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void (**a5)(char *, uint64_t)@<X4>, uint64_t (**a6)()@<X8>)
{
  v192 = a6;
  v218 = a4;
  v219 = a5;
  v204 = a3;
  v220 = a1;
  v211 = type metadata accessor for FunctionDescription(0);
  MEMORY[0x1EEE9AC00](v211);
  v210 = v177 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v214 = v177 - v9;
  v213 = type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  MEMORY[0x1EEE9AC00](v213);
  v230 = v177 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = type metadata accessor for ToolType(0);
  MEMORY[0x1EEE9AC00](v223);
  v231 = v177 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v234 = (v177 - v13);
  v14 = type metadata accessor for ToolDescription(0);
  v228 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v181 = (v177 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v233 = (v177 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v232 = (v177 - v19);
  v20 = type metadata accessor for ToolDescriptionEnvelope(0);
  v222 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v227 = v177 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v216 = v177 - v23;
  v226 = type metadata accessor for AnyTooling(0);
  v215 = *(v226 - 8);
  MEMORY[0x1EEE9AC00](v226);
  v225 = v177 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = type metadata accessor for ToolType();
  v229 = *(v236 - 8);
  MEMORY[0x1EEE9AC00](v236);
  v221 = v177 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v235 = v177 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v224 = v177 - v29;
  v30 = type metadata accessor for ToolChoice();
  v198 = *(v30 - 8);
  v199 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v179 = v177 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v178 = v177 - v33;
  v206 = type metadata accessor for CompletePromptRequest(0);
  MEMORY[0x1EEE9AC00](v206);
  v205 = v177 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v203 = v177 - v36;
  v217 = type metadata accessor for UUID();
  v189 = *(v217 - 1);
  MEMORY[0x1EEE9AC00](v217);
  v186 = v177 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Schema();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v212 = v177 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = v177 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v197 = v177 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v202 = v177 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v190 = v177 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v195 = v177 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v54 = v177 - v53;
  v55 = type metadata accessor for Prompt();
  v56 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v194 = v177 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v60 = v177 - v59;
  v61 = type metadata accessor for PromptVariant();
  v207 = *(v61 - 8);
  v208 = v61;
  MEMORY[0x1EEE9AC00](v61);
  v183 = v177 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v193 = v177 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v67 = v177 - v66;
  v68 = *(a2 + 176);
  v251 = *(a2 + 160);
  v252 = v68;
  v253 = *(a2 + 192);
  v254 = *(a2 + 208);
  v69 = *(a2 + 96);
  v248 = *(a2 + 112);
  v70 = *(a2 + 144);
  v249 = *(a2 + 128);
  v250 = v70;
  v71 = *(a2 + 48);
  v243 = *(a2 + 32);
  v244 = v71;
  v72 = *(a2 + 80);
  v245 = *(a2 + 64);
  v246 = v72;
  v247 = v69;
  v73 = *(a2 + 16);
  v241 = *a2;
  v242 = v73;
  v191 = v56;
  v74 = *(v56 + 16);
  v196 = v55;
  v75 = v55;
  v76 = v39;
  v182 = v74;
  v74(v60, v220, v75);
  v200 = v67;
  v77 = v38;
  v184 = v60;
  PromptVariant.init(_:)();
  v78 = v198;
  v79 = v199;
  v81 = v198 + 16;
  v80 = *(v198 + 16);
  v80(v54, v218, v199);
  v82 = *(v78 + 56);
  v201 = v54;
  v83 = v212;
  v82(v54, 0, 1, v79);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v219, v43, &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  v84 = (*(v76 + 48))(v43, 1, v77);
  v209 = v77;
  v177[0] = v80;
  v177[1] = v81;
  v180 = v76;
  if (v84 == 1)
  {
    v85 = type metadata accessor for Constraints(0);
    v86 = v202;
    (*(*(v85 - 8) + 56))(v202, 1, 1, v85);
  }

  else
  {
    (*(v76 + 32))(v83, v43, v77);
    v86 = v202;
    Schema.type.getter();
    (*(v76 + 8))(v83, v77);
    v87 = type metadata accessor for Constraints(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v87 - 8) + 56))(v86, 0, 1, v87);
  }

  v88 = v186;
  UUID.init()();
  v89 = UUID.uuidString.getter();
  v187 = v90;
  v188 = v89;
  (*(v189 + 8))(v88, v217);
  v185 = "n Not Provided for ";
  v186 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v91 = v194;
  v92 = v196;
  v93 = v182;
  v182(v194, v220, v196);
  v94 = v208;
  v220 = *(v207 + 16);
  v95 = v193;
  v220(v193, v200, v208);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v86, v197, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v201, v195, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  outlined init with copy of SamplingParameters(&v241, v239);
  v96 = v205;
  XPCDictionary.init()();
  v97 = v184;
  v93(v184, v91, v92);
  v98 = specialized PromptEnvelope.init(sealing:xpcData:)(v97, v96);
  v99 = v206;
  v100 = (v96 + v206[5]);
  *v100 = v98;
  v100[1] = v101;
  v100[2] = v102;
  v100[3] = v103;
  v104 = v183;
  v220(v183, v95, v94);
  PromptVariantEnvelope.init(sealing:xpcData:)(v104, v96, v96 + v99[6]);
  v237[10] = v251;
  v237[11] = v252;
  v237[12] = v253;
  v238 = v254;
  v237[6] = v247;
  v237[7] = v248;
  v237[8] = v249;
  v237[9] = v250;
  v237[2] = v243;
  v237[3] = v244;
  v237[4] = v245;
  v237[5] = v246;
  v237[0] = v241;
  v237[1] = v242;
  SamplingParametersEnvelope.init(sealing:)(v237, v239);
  v105 = v96 + v99[7];
  v106 = v239[11];
  *(v105 + 160) = v239[10];
  *(v105 + 176) = v106;
  *(v105 + 192) = v239[12];
  *(v105 + 208) = v240;
  v107 = v239[7];
  *(v105 + 96) = v239[6];
  *(v105 + 112) = v107;
  v108 = v239[9];
  *(v105 + 128) = v239[8];
  *(v105 + 144) = v108;
  v109 = v239[3];
  *(v105 + 32) = v239[2];
  *(v105 + 48) = v109;
  v110 = v239[5];
  *(v105 + 64) = v239[4];
  *(v105 + 80) = v110;
  v111 = v239[1];
  *v105 = v239[0];
  *(v105 + 16) = v111;
  v112 = v204;
  v113 = *(v204 + 16);
  v189 = v113;
  if (v113)
  {
    *&v237[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v113, 0);
    v114 = *&v237[0];
    v115 = *(v229 + 16);
    v219 = (v229 + 16);
    v220 = v115;
    v116 = (v112 + ((*(v229 + 80) + 32) & ~*(v229 + 80)));
    v117 = *(v229 + 72);
    v217 = (v229 + 8);
    v218 = v117;
    v118 = v181;
    do
    {
      v120 = v235;
      v119 = v236;
      v121 = v220;
      v220(v235, v116, v236);
      v122 = v221;
      v121(v221, v120, v119);
      ToolDescription.init(toolType:)(v122, v118);
      (*v217)(v120, v119);
      *&v237[0] = v114;
      v124 = *(v114 + 16);
      v123 = *(v114 + 24);
      if (v124 >= v123 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v123 > 1), v124 + 1, 1);
        v114 = *&v237[0];
      }

      *(v114 + 16) = v124 + 1;
      outlined init with take of ToolDescription(v118, v114 + ((*(v228 + 80) + 32) & ~*(v228 + 80)) + *(v228 + 72) * v124, type metadata accessor for ToolDescription);
      v116 += v218;
      --v113;
    }

    while (v113);
  }

  else
  {
    v114 = MEMORY[0x1E69E7CC0];
  }

  v218 = v185 | 0x8000000000000000;
  v125 = *(v114 + 16);
  v126 = v230;
  if (v125)
  {
    *&v237[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v125, 0);
    v127 = *&v237[0];
    v128 = (*(v228 + 80) + 32) & ~*(v228 + 80);
    v217 = v114;
    v129 = v114 + v128;
    v130 = *(v228 + 72);
    v219 = (v180 + 8);
    v220 = (v180 + 16);
    v221 = v130;
    do
    {
      v131 = v232;
      outlined init with copy of ToolDescription(v129, v232, type metadata accessor for ToolDescription);
      v132 = v131;
      v133 = v233;
      outlined init with copy of ToolDescription(v132, v233, type metadata accessor for ToolDescription);
      v134 = v133;
      v135 = v234;
      outlined init with copy of ToolDescription(v134, v234, type metadata accessor for ToolType);
      outlined init with copy of ToolDescription(v135, v231, type metadata accessor for ToolType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          outlined destroy of ToolType(v234, type metadata accessor for ToolType);
          outlined destroy of ToolType(v233, type metadata accessor for ToolDescription);
          outlined destroy of ToolType(v232, type metadata accessor for ToolDescription);
          v137 = type metadata accessor for FileGenerationParameters();
        }

        else
        {
          outlined destroy of ToolType(v234, type metadata accessor for ToolType);
          outlined destroy of ToolType(v233, type metadata accessor for ToolDescription);
          outlined destroy of ToolType(v232, type metadata accessor for ToolDescription);
          v137 = type metadata accessor for ImageGenerationParameters();
        }

        (*(*(v137 - 8) + 32))(v126, v231, v137);
      }

      else
      {
        if (EnumCaseMultiPayload == 2)
        {
          v138 = v214;
          outlined init with take of ToolDescription(v231, v214, type metadata accessor for FunctionDescription);
          v139 = v210;
          outlined init with copy of ToolDescription(v138, v210, type metadata accessor for FunctionDescription);
          v140 = *(v139 + 1);
          *v230 = *v139;
          *(v230 + 1) = v140;
          v141 = *(v139 + 3);
          *(v230 + 2) = *(v139 + 2);
          *(v230 + 3) = v141;
          v142 = v212;
          v143 = v209;
          (*v220)(v212, &v139[*(v211 + 24)], v209);
          v228 = *(type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0) + 24);

          Schema.type.getter();
          v144 = v143;
          v130 = v221;
          (*v219)(v142, v144);
          v145 = v139;
          v126 = v230;
          outlined destroy of ToolType(v145, type metadata accessor for FunctionDescription);
          outlined destroy of ToolType(v214, type metadata accessor for FunctionDescription);
        }

        outlined destroy of ToolType(v234, type metadata accessor for ToolType);
        outlined destroy of ToolType(v233, type metadata accessor for ToolDescription);
        outlined destroy of ToolType(v232, type metadata accessor for ToolDescription);
      }

      swift_storeEnumTagMultiPayload();
      v146 = v227;
      outlined init with take of ToolDescription(v126, v227, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
      *&v237[0] = v127;
      v148 = *(v127 + 16);
      v147 = *(v127 + 24);
      if (v148 >= v147 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v147 > 1), v148 + 1, 1);
        v146 = v227;
        v127 = *&v237[0];
      }

      *(v127 + 16) = v148 + 1;
      outlined init with take of ToolDescription(v146, v127 + ((*(v222 + 80) + 32) & ~*(v222 + 80)) + *(v222 + 72) * v148, type metadata accessor for ToolDescriptionEnvelope);
      v129 += v130;
      --v125;
    }

    while (v125);
  }

  else
  {

    v127 = MEMORY[0x1E69E7CC0];
  }

  *&v205[v206[9]] = v127;
  v149 = v195;
  v150 = v190;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v195, v190, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v152 = v198;
  v151 = v199;
  v153 = (*(v198 + 48))(v150, 1, v199);
  v154 = v216;
  v155 = v204;
  v156 = MEMORY[0x1E69E7CC0];
  if (v153 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v149, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v230 = *(v207 + 8);
    (v230)(v193, v208);
    (*(v191 + 8))(v194, v196);
    v157 = xmmword_1ABA26F10;
  }

  else
  {
    v158 = v178;
    (*(v152 + 32))(v178, v150, v151);
    v159 = v179;
    (v177[0])(v179, v158, v151);
    ToolChoiceEnvelope.init(sealing:)(v159, v237);
    (*(v152 + 8))(v158, v151);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v149, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v230 = *(v207 + 8);
    (v230)(v193, v208);
    (*(v191 + 8))(v194, v196);
    v157 = v237[0];
  }

  v161 = v187;
  v160 = v188;
  v163 = v205;
  v162 = v206;
  *&v205[v206[10]] = v157;
  swift_bridgeObjectRelease_n();
  v164 = (v163 + v162[12]);
  *v164 = v160;
  v164[1] = v161;
  v164[2] = 0xD000000000000054;
  v164[3] = v218;
  v164[4] = 0;
  v165 = v186;
  v164[5] = 0;
  v164[6] = v165;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v197, v163 + v162[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  *(v163 + v162[11]) = v156;
  outlined init with take of ToolDescription(v163, v203, type metadata accessor for CompletePromptRequest);
  v166 = v189;
  if (v189)
  {
    v167 = *(v229 + 16);
    v168 = v155 + ((*(v229 + 80) + 32) & ~*(v229 + 80));
    v233 = (v229 + 8);
    v234 = v167;
    v229 += 16;
    v231 = *(v229 + 56);
    v232 = (v215 + 48);
    do
    {
      v169 = v224;
      v170 = v236;
      v171 = v234;
      (v234)(v224, v168, v236);
      v172 = v235;
      v171(v235, v169, v170);
      AnyTooling.init(_:)(v172, v154);
      (*v233)(v169, v170);
      if ((*v232)(v154, 1, v226) == 1)
      {
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v154, &_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
      }

      else
      {
        outlined init with take of ToolDescription(v154, v225, type metadata accessor for AnyTooling);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v156 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v156[2] + 1, 1, v156, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMR, type metadata accessor for AnyTooling);
        }

        v174 = v156[2];
        v173 = v156[3];
        if (v174 >= v173 >> 1)
        {
          v156 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v173 > 1), v174 + 1, 1, v156, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMR, type metadata accessor for AnyTooling);
        }

        v156[2] = v174 + 1;
        outlined init with take of ToolDescription(v225, v156 + ((*(v215 + 80) + 32) & ~*(v215 + 80)) + *(v215 + 72) * v174, type metadata accessor for AnyTooling);
        v154 = v216;
      }

      v168 += v231;
      --v166;
    }

    while (v166);
  }

  v175 = v203;
  TokenGenerator.handleCompletePromptRequest(request:tools:)(v203, v156, v192);

  outlined destroy of ToolType(v175, type metadata accessor for CompletePromptRequest);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v202, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v201, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  return (v230)(v200, v208);
}

uint64_t AnyTooling.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v4 = type metadata accessor for ToolType.Function();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ToolType.Type();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v42 - v13);
  v44 = type metadata accessor for AnyTooling(0);
  v15 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v17 = (&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  ToolType.type.getter();
  v18 = (*(v9 + 88))(v14, v8);
  if (v18 == *MEMORY[0x1E69A0E58])
  {
    v19 = type metadata accessor for ToolType();
    (*(*(v19 - 8) + 8))(a1, v19);
LABEL_5:
    (*(v9 + 8))(v14, v8);
LABEL_6:
    v21 = 1;
    v23 = v44;
    v22 = v45;
    return (*(v15 + 56))(v22, v21, 1, v23);
  }

  v43 = a1;
  if (v18 == *MEMORY[0x1E69A0E50])
  {
    v20 = type metadata accessor for ToolType();
    (*(*(v20 - 8) + 8))(v43, v20);
    goto LABEL_5;
  }

  if (v18 == *MEMORY[0x1E69A0E78])
  {
    (*(v9 + 96))(v14, v8);
    (*(v5 + 32))(v7, v14, v4);
    *v17 = Tool.Function.name.getter();
    v17[1] = v25;
    v17[2] = Tool.Function.description.getter();
    v17[3] = v26;
    v27 = v44;
    Tool.Function.parameters.getter();
    v28 = type metadata accessor for ToolType();
    (*(*(v28 - 8) + 8))(v43, v28);
    (*(v5 + 8))(v7, v4);
    v29 = v27;
    v30 = (v17 + *(v27 + 28));
    *v30 = 0;
    v30[1] = 0;
LABEL_12:
    v38 = v45;
    outlined init with take of ToolDescription(v17, v45, type metadata accessor for AnyTooling);
    v22 = v38;
    v21 = 0;
    v23 = v29;
    return (*(v15 + 56))(v22, v21, 1, v23);
  }

  if (v18 == *MEMORY[0x1E69A0E70])
  {
    (*(v9 + 96))(v14, v8);
    outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>(v14, v47);
    __swift_project_boxed_opaque_existential_1(v47, v48);
    *v17 = dispatch thunk of DynamicArgumentsTooling.name.getter();
    v17[1] = v31;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    v17[2] = dispatch thunk of DynamicArgumentsTooling.usageDescription.getter();
    v17[3] = v32;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    DynamicType = swift_getDynamicType();
    v34 = v44;
    static Tooling.argumentsSchema.getter(DynamicType, v49);
    v35 = type metadata accessor for ToolType();
    (*(*(v35 - 8) + 8))(v43, v35);
    outlined init with copy of PromptCompletionEvent(v47, v46);
    v36 = swift_allocObject();
    outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>(v46, v36 + 16);
    v29 = v34;
    v37 = (v17 + *(v34 + 28));
    *v37 = &async function pointer to partial apply for closure #1 in AnyTooling.init(_:);
    v37[1] = v36;
    __swift_destroy_boxed_opaque_existential_0(v47);
    goto LABEL_12;
  }

  if (v18 == *MEMORY[0x1E69A0E68])
  {
    v39 = type metadata accessor for ToolType();
    (*(*(v39 - 8) + 8))(v43, v39);
    goto LABEL_6;
  }

  v40 = v43;
  if (v18 == *MEMORY[0x1E69A0E60])
  {
    v41 = type metadata accessor for ToolType();
    (*(*(v41 - 8) + 8))(v40, v41);
    goto LABEL_6;
  }

  v47[0] = 0;
  v47[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(26);
  MEMORY[0x1AC5A5BC0](0xD000000000000013, 0x80000001ABA41750);
  ToolType.type.getter();
  _print_unlocked<A, B>(_:_:)();
  (*(v9 + 8))(v11, v8);
  MEMORY[0x1AC5A5BC0](0x6465737520, 0xE500000000000000);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void TokenGenerator.handleCompletePromptRequest(request:tools:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v59 = a2;
  v55 = a3;
  v4 = type metadata accessor for CompletePromptRequest(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15TokenGeneration16ModelCatalogStubV8AssetKeyV_SayAHGTt0g5Tf4g_n(&outlined read-only object #0 of TokenGenerator.handleCompletePromptRequest(request:tools:));
  swift_arrayDestroy();
  v53 = v4;
  v12 = *(a1 + *(v4 + 48) + 32);

  if (v13)
  {
    v57 = v12;
    v50 = v13;
  }

  else
  {
    UUID.init()();
    v57 = UUID.uuidString.getter();
    v50 = v14;
    (*(v9 + 8))(v11, v8);
  }

  v56 = type metadata accessor for CompletePromptRequest;
  outlined init with copy of ToolDescription(a1, &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CompletePromptRequest);
  v15 = *(v5 + 80);
  v16 = (v15 + 16) & ~v15;
  v52 = v6;
  v17 = (v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = v5;
  v19 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v49 = v7;
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v47 = a1;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v51 = type metadata accessor for CompletePromptRequest;
  outlined init with take of ToolDescription(v7, v22 + v16, type metadata accessor for CompletePromptRequest);
  v23 = v57;
  *(v22 + v17) = v58;
  v24 = (v22 + v19);
  v25 = v50;
  *v24 = v23;
  v24[1] = v25;
  v26 = v54;
  *(v22 + v20) = v54;
  v27 = v26;
  *(v22 + v21) = v59;
  v28 = swift_allocObject();
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0u;
  *(v28 + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
  v48 = swift_allocBox();
  v30 = v29;
  outlined init with copy of ToolDescription(a1, v29, v56);
  (*(v18 + 56))(v30, 0, 1, v53);
  v31 = type metadata accessor for PromptCompletion.Aggregator(0);
  v53 = swift_allocBox();
  v33 = v32;
  v34 = MEMORY[0x1E69E7CC0];
  *v32 = MEMORY[0x1E69E7CC0];
  *(v32 + 1) = 0;
  *(v32 + 2) = 0;
  *(v32 + 3) = -1;
  *(v32 + 4) = -1;
  *(v32 + 5) = 0;
  v35 = v58;

  *(v33 + 6) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration16PromptCompletionV10AggregatorV09CandidateG033_D174D4387BF6B304FA76AEBF3D593BFDLLVTt0g5Tf4g_n(v34);
  v36 = *(v31 + 32);
  v37 = type metadata accessor for Prompt.Rendering();
  (*(*(v37 - 8) + 56))(&v33[v36], 1, 1, v37);
  v38 = *(v31 + 36);
  *&v33[v38] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v34);
  v39 = v49;
  outlined init with copy of ToolDescription(v47, v49, v56);
  v40 = swift_allocObject();
  v40[2] = v48;
  v40[3] = v28;
  v40[4] = v53;
  v40[5] = v35;
  v40[6] = v57;
  v40[7] = v25;
  v40[8] = v27;
  v40[9] = v59;
  outlined init with take of ToolDescription(v39, v40 + ((v15 + 80) & ~v15), v51);
  v41 = swift_allocObject();
  *(v41 + 16) = partial apply for closure #2 in TokenGenerator.handleCompletePromptRequest(request:tools:);
  *(v41 + 24) = v40;
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  v43 = swift_allocObject();
  *(v43 + 2) = v42;
  *(v43 + 3) = partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> (@out AsyncThrowingStream<PromptCompletionEvent, Error>);
  *(v43 + 4) = v41;
  v44 = swift_allocObject();
  *(v44 + 2) = v42;
  *(v44 + 3) = &async function pointer to partial apply for closure #1 in TokenGenerator.handleCompletePromptRequest(request:tools:);
  *(v44 + 4) = v22;

  v45 = v55;
  *v55 = closure #1 in PromptCompletionStream.init(streamResponse:bufferResponse:)partial apply;
  v45[1] = v43;
  v45[2] = &closure #2 in PromptCompletionStream.init(streamResponse:bufferResponse:)partial apply;
  v45[3] = v44;
}

double TokenGenerator.handleCompletePromptTemplateRequest(request:)@<D0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for CompletePromptTemplateRequest(0);
  v4 = v3 - 8;
  v29 = *(v3 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15TokenGeneration16ModelCatalogStubV8AssetKeyV_SayAHGTt0g5Tf4g_n(&outlined read-only object #0 of TokenGenerator.handleCompletePromptTemplateRequest(request:));
  swift_arrayDestroy();
  v10 = a1 + *(v4 + 60);
  v12 = *(v10 + 32);
  v11 = *(v10 + 40);

  if (!v11)
  {
    UUID.init()();
    v12 = UUID.uuidString.getter();
    v11 = v13;
    (*(v7 + 8))(v9, v6);
  }

  v28 = type metadata accessor for CompletePromptTemplateRequest;
  outlined init with copy of ToolDescription(a1, &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CompletePromptTemplateRequest);
  v14 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*(v29 + 80) + 40) & ~*(v29 + 80);
  v16 = (v5 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v17[2] = v32;
  v17[3] = v12;
  v17[4] = v11;
  outlined init with take of ToolDescription(v14, v17 + v15, type metadata accessor for CompletePromptTemplateRequest);
  v18 = v30;
  *(v17 + v16) = v30;
  v19 = v12;
  v20 = v18;
  outlined init with copy of ToolDescription(a1, v14, v28);
  v21 = swift_allocObject();
  v21[2] = v32;
  v21[3] = v19;
  v21[4] = v11;
  outlined init with take of ToolDescription(v14, v21 + v15, type metadata accessor for CompletePromptTemplateRequest);
  *(v21 + v16) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v23 = swift_allocObject();
  *(v23 + 2) = v22;
  *(v23 + 3) = partial apply for closure #1 in TokenGenerator.handleCompletePromptTemplateRequest(request:);
  *(v23 + 4) = v17;
  v24 = swift_allocObject();
  *(v24 + 2) = v22;
  *(v24 + 3) = &async function pointer to partial apply for closure #2 in TokenGenerator.handleCompletePromptTemplateRequest(request:);
  *(v24 + 4) = v21;
  v25 = v31;
  *v31 = partial apply for closure #1 in PromptCompletionStream.init(streamResponse:bufferResponse:);
  v25[1] = v23;
  v25[2] = &async function pointer to partial apply for closure #2 in PromptCompletionStream.init(streamResponse:bufferResponse:);
  v25[3] = v24;

  swift_retain_n();

  return result;
}

uint64_t TokenGenerator.complete<A>(prompt:parameters:generating:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v97 = a5;
  v112 = a3;
  v113 = a4;
  v108 = a1;
  v6 = type metadata accessor for ToolChoice();
  v110 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v89 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v85 - v9;
  v107 = type metadata accessor for PromptVariant();
  v101 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v92 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v106 = &v85 - v12;
  v94 = type metadata accessor for CompletePromptRequest(0);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v96 = &v85 - v15;
  v145 = type metadata accessor for Prompt();
  v100 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v90 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v105 = &v85 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v111 = &v85 - v20;
  v21 = type metadata accessor for UUID();
  v102 = *(v21 - 8);
  v103 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Schema();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v99 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v85 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v91 = &v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v98 = &v85 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v38 = *(a2 + 176);
  v141 = *(a2 + 160);
  v142 = v38;
  v143 = *(a2 + 192);
  v144 = *(a2 + 208);
  v39 = *(a2 + 112);
  v137 = *(a2 + 96);
  v138 = v39;
  v40 = *(a2 + 144);
  v139 = *(a2 + 128);
  v140 = v40;
  v41 = *(a2 + 48);
  v133 = *(a2 + 32);
  v134 = v41;
  v42 = *(a2 + 80);
  v135 = *(a2 + 64);
  v136 = v42;
  v43 = *(a2 + 16);
  v131 = *a2;
  v132 = v43;
  v44 = *(v110 + 56);
  v109 = &v85 - v45;
  v95 = v6;
  v44();
  dispatch thunk of static Generable.schema.getter();
  Schema.type.getter();
  (*(v25 + 8))(v27, v24);
  v46 = type metadata accessor for Constraints(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v46 - 8) + 56))(v32, 0, 1, v46);
  UUID.init()();
  v47 = UUID.uuidString.getter();
  v49 = v48;
  v50 = v111;
  (*(v102 + 8))(v23, v103);
  v51 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v52 = v104;
  PromptVariant.tgPrompt.getter();
  if (v52)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v32, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v109, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  }

  else
  {
    v104 = 0;
    v85 = *(v100 + 16);
    v86 = v47;
    v85(v105, v50, v145);
    v54 = *(v101 + 16);
    v54(v106, v108, v107);
    v108 = v32;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v32, v99, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v55 = v98;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v109, v98, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v103 = v49;

    v102 = 0x80000001ABA42B70;

    v87 = v51;

    outlined init with copy of SamplingParameters(&v131, v128);
    v56 = v93;
    XPCDictionary.init()();
    v57 = v90;
    v85(v90, v105, v145);
    v58 = specialized PromptEnvelope.init(sealing:xpcData:)(v57, v56);
    v59 = v94;
    v60 = (v56 + *(v94 + 20));
    *v60 = v58;
    v60[1] = v61;
    v60[2] = v62;
    v60[3] = v63;
    v64 = v92;
    v54(v92, v106, v107);
    PromptVariantEnvelope.init(sealing:xpcData:)(v64, v56, v56 + v59[6]);
    v124 = v141;
    v125 = v142;
    v126 = v143;
    v127 = v144;
    v120 = v137;
    v121 = v138;
    v122 = v139;
    v123 = v140;
    v116 = v133;
    v117 = v134;
    v118 = v135;
    v119 = v136;
    v114 = v131;
    v115 = v132;
    SamplingParametersEnvelope.init(sealing:)(&v114, v128);
    v65 = v56 + v59[7];
    v66 = v128[11];
    *(v65 + 160) = v128[10];
    *(v65 + 176) = v66;
    *(v65 + 192) = v128[12];
    *(v65 + 208) = v129;
    v67 = v128[7];
    *(v65 + 96) = v128[6];
    *(v65 + 112) = v67;
    v68 = v128[9];
    *(v65 + 128) = v128[8];
    *(v65 + 144) = v68;
    v69 = v128[3];
    *(v65 + 32) = v128[2];
    *(v65 + 48) = v69;
    v70 = v128[5];
    *(v65 + 64) = v128[4];
    *(v65 + 80) = v70;
    v71 = v128[1];
    *v65 = v128[0];
    *(v65 + 16) = v71;
    *(v56 + v59[9]) = MEMORY[0x1E69E7CC0];
    v72 = v91;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v55, v91, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v73 = v110;
    v74 = v95;
    v75 = v56;
    if ((*(v110 + 48))(v72, 1, v95) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v98, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v101 + 8))(v106, v107);
      v110 = *(v100 + 8);
      (v110)(v105, v145);
      v76 = xmmword_1ABA26F10;
    }

    else
    {
      v77 = v88;
      (*(v73 + 32))(v88, v72, v74);
      v78 = v89;
      (*(v73 + 16))(v89, v77, v74);
      ToolChoiceEnvelope.init(sealing:)(v78, &v114);
      (*(v73 + 8))(v77, v74);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v98, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v101 + 8))(v106, v107);
      v110 = *(v100 + 8);
      (v110)(v105, v145);
      v76 = v114;
    }

    *(v75 + v59[10]) = v76;
    swift_bridgeObjectRelease_n();
    v79 = (v75 + v59[12]);
    v80 = v87;
    v82 = v102;
    v81 = v103;
    *v79 = v86;
    v79[1] = v81;
    v79[2] = 0xD000000000000027;
    v79[3] = v82;
    v79[4] = 0;
    v79[5] = 0;
    v79[6] = v80;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v99, v75 + v59[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v83 = MEMORY[0x1E69E7CC0];
    *(v75 + v59[11]) = MEMORY[0x1E69E7CC0];
    v84 = v96;
    outlined init with take of ToolDescription(v75, v96, type metadata accessor for CompletePromptRequest);
    TokenGenerator.handleCompletePromptRequest(request:tools:)(v84, v83, v130);

    outlined destroy of ToolType(v84, type metadata accessor for CompletePromptRequest);
    (v110)(v111, v145);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v108, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v109, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v114 = v130[0];
    v115 = v130[1];
    TokenStream<>.map<A>(_:)(v97);
  }
}

uint64_t TokenGenerator.complete<A>(prompt:parameters:generating:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v113 = a5;
  v121 = a3;
  v122 = a4;
  v107 = a1;
  v6 = type metadata accessor for ToolChoice();
  v116 = *(v6 - 8);
  v117 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v95 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v94 - v9;
  v108 = type metadata accessor for CompletePromptRequest(0);
  MEMORY[0x1EEE9AC00](v108);
  v105 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v112 = &v94 - v12;
  v13 = type metadata accessor for UUID();
  v110 = *(v13 - 8);
  v111 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v100 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for Schema();
  v104 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v16 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v120 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v94 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v102 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v101 = &v94 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v94 - v27;
  v119 = &v94 - v27;
  v29 = type metadata accessor for Prompt();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v118 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v94 - v33;
  v124 = type metadata accessor for PromptVariant();
  v115 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v99 = &v94 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v123 = &v94 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = (&v94 - v39);
  v41 = *(a2 + 176);
  v151 = *(a2 + 160);
  v152 = v41;
  v153 = *(a2 + 192);
  v154 = *(a2 + 208);
  v42 = *(a2 + 112);
  v147 = *(a2 + 96);
  v148 = v42;
  v43 = *(a2 + 144);
  v149 = *(a2 + 128);
  v150 = v43;
  v44 = *(a2 + 48);
  v143 = *(a2 + 32);
  v144 = v44;
  v45 = *(a2 + 80);
  v145 = *(a2 + 64);
  v146 = v45;
  v46 = *(a2 + 16);
  v141 = *a2;
  v142 = v46;
  v109 = v30;
  v97 = *(v30 + 16);
  v98 = v34;
  v114 = v30 + 16;
  v47 = v34;
  v48 = v107;
  v97(v47, v107, v29);
  PromptVariant.init(_:)();
  (*(v116 + 56))(v28, 1, 1, v117);
  dispatch thunk of static Generable.schema.getter();
  Schema.type.getter();
  (*(v104 + 8))(v16, v106);
  v49 = type metadata accessor for Constraints(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v49 - 8) + 56))(v21, 0, 1, v49);
  v50 = v100;
  UUID.init()();
  v103 = UUID.uuidString.getter();
  v52 = v51;
  v110[1](v50, v111);
  v53 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v54 = v118;
  v55 = v29;
  v56 = v29;
  v57 = v97;
  v97(v118, v48, v56);
  v96 = *(v115 + 16);
  v110 = v40;
  v58 = v40;
  v59 = v55;
  v60 = v105;
  v96(v123, v58, v124);
  v111 = v21;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v21, v120, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v61 = v101;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v119, v101, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v107 = v52;

  v106 = 0x80000001ABA42B70;

  v104 = v53;

  outlined init with copy of SamplingParameters(&v141, v155);
  XPCDictionary.init()();
  v62 = v98;
  v100 = v59;
  v57(v98, v54, v59);
  v63 = v116;
  v64 = v117;
  v65 = specialized PromptEnvelope.init(sealing:xpcData:)(v62, v60);
  v66 = v108;
  v67 = (v60 + *(v108 + 20));
  *v67 = v65;
  v67[1] = v68;
  v67[2] = v69;
  v67[3] = v70;
  v71 = v99;
  v96(v99, v123, v124);
  v72 = v102;
  v73 = v66;
  PromptVariantEnvelope.init(sealing:xpcData:)(v71, v60, v60 + v66[6]);
  v137 = v151;
  v138 = v152;
  v139 = v153;
  v140 = v154;
  v133 = v147;
  v134 = v148;
  v135 = v149;
  v136 = v150;
  v129 = v143;
  v130 = v144;
  v131 = v145;
  v132 = v146;
  v127 = v141;
  v128 = v142;
  SamplingParametersEnvelope.init(sealing:)(&v127, v155);
  v74 = v60 + v66[7];
  v75 = v155[11];
  *(v74 + 160) = v155[10];
  *(v74 + 176) = v75;
  *(v74 + 192) = v155[12];
  *(v74 + 208) = v156;
  v76 = v155[7];
  *(v74 + 96) = v155[6];
  *(v74 + 112) = v76;
  v77 = v155[9];
  *(v74 + 128) = v155[8];
  *(v74 + 144) = v77;
  v78 = v155[3];
  *(v74 + 32) = v155[2];
  *(v74 + 48) = v78;
  v79 = v155[5];
  *(v74 + 64) = v155[4];
  *(v74 + 80) = v79;
  v80 = v155[1];
  *v74 = v155[0];
  *(v74 + 16) = v80;
  *(v60 + v66[9]) = MEMORY[0x1E69E7CC0];
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v61, v72, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  if ((*(v63 + 48))(v72, 1, v64) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v61, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v81 = v123;
    v123 = *(v115 + 8);
    (v123)(v81, v124);
    (*(v109 + 8))(v118, v100);
    v82 = xmmword_1ABA26F10;
  }

  else
  {
    v83 = v94;
    (*(v63 + 32))(v94, v72, v64);
    v84 = v95;
    (*(v63 + 16))(v95, v83, v64);
    ToolChoiceEnvelope.init(sealing:)(v84, &v127);
    (*(v63 + 8))(v83, v64);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v61, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v85 = v123;
    v123 = *(v115 + 8);
    (v123)(v85, v124);
    (*(v109 + 8))(v118, v100);
    v82 = v127;
  }

  *(v60 + v73[10]) = v82;
  swift_bridgeObjectRelease_n();
  v86 = (v60 + v73[12]);
  v87 = v104;
  v89 = v106;
  v88 = v107;
  *v86 = v103;
  v86[1] = v88;
  v86[2] = 0xD000000000000027;
  v86[3] = v89;
  v86[4] = 0;
  v86[5] = 0;
  v86[6] = v87;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v120, v60 + v73[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v90 = v73[11];
  v91 = MEMORY[0x1E69E7CC0];
  *(v60 + v90) = MEMORY[0x1E69E7CC0];
  v92 = v112;
  outlined init with take of ToolDescription(v60, v112, type metadata accessor for CompletePromptRequest);
  TokenGenerator.handleCompletePromptRequest(request:tools:)(v92, v91, &v127);

  outlined destroy of ToolType(v92, type metadata accessor for CompletePromptRequest);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v111, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v119, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  (v123)(v110, v124);
  v125 = v127;
  v126 = v128;
  TokenStream<>.map<A>(_:)(v113);
}

double TokenGenerator.complete(prompt:parameters:grammar:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char **a4@<X3>, _OWORD *a5@<X8>)
{
  v112 = a1;
  v105 = a5;
  v110 = a4;
  v111 = a3;
  v6 = type metadata accessor for ToolChoice();
  v117 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v96 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v95 = &v91 - v9;
  v116 = type metadata accessor for PromptVariant();
  v109 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v99 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v115 = &v91 - v12;
  v102 = type metadata accessor for CompletePromptRequest(0);
  MEMORY[0x1EEE9AC00](v102);
  v101 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v104 = &v91 - v15;
  v137 = type metadata accessor for Prompt();
  v108 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v97 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v114 = &v91 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v91 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v107 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v91 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v98 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v106 = &v91 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v91 - v32;
  v34 = type metadata accessor for UUID();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v91 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(a2 + 176);
  v133 = *(a2 + 160);
  v134 = v38;
  v135 = *(a2 + 192);
  v136 = *(a2 + 208);
  v39 = *(a2 + 112);
  v129 = *(a2 + 96);
  v130 = v39;
  v40 = *(a2 + 144);
  v131 = *(a2 + 128);
  v132 = v40;
  v41 = *(a2 + 48);
  v125 = *(a2 + 32);
  v126 = v41;
  v42 = *(a2 + 80);
  v127 = *(a2 + 64);
  v128 = v42;
  v43 = *a2;
  v44 = *(a2 + 16);
  v45 = v21;
  v123 = v43;
  v124 = v44;
  UUID.init()();
  v100 = UUID.uuidString.getter();
  v47 = v46;
  v48 = v34;
  v49 = v33;
  (*(v35 + 8))(v37, v48);
  v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v51 = *(v117 + 56);
  v103 = v6;
  v51(v49, 1, 1, v6);
  v52 = v110;
  *v26 = v111;
  v26[1] = v52;
  v53 = type metadata accessor for Constraints(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v53 - 8) + 56))(v26, 0, 1, v53);

  v54 = v113;
  v55 = v112;
  PromptVariant.tgPrompt.getter();
  if (v54)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v26, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v49, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  }

  else
  {
    v93 = 0;
    v113 = v50;
    v57 = *(v108 + 16);
    v111 = v45;
    v57(v114, v45, v137);
    v91 = *(v109 + 16);
    v91(v115, v55, v116);
    v110 = v26;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v26, v107, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v112 = v49;
    v58 = v49;
    v59 = v106;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v58, v106, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v94 = v47;

    v92 = 0x80000001ABA42BA0;

    outlined init with copy of SamplingParameters(&v123, v120);
    v60 = v101;
    XPCDictionary.init()();
    v61 = v97;
    v57(v97, v114, v137);
    v62 = specialized PromptEnvelope.init(sealing:xpcData:)(v61, v60);
    v63 = v102;
    v64 = (v60 + *(v102 + 20));
    *v64 = v62;
    v64[1] = v65;
    v64[2] = v66;
    v64[3] = v67;
    v68 = v99;
    v91(v99, v115, v116);
    PromptVariantEnvelope.init(sealing:xpcData:)(v68, v60, v60 + v63[6]);
    v118[10] = v133;
    v118[11] = v134;
    v118[12] = v135;
    v119 = v136;
    v118[6] = v129;
    v118[7] = v130;
    v118[8] = v131;
    v118[9] = v132;
    v118[2] = v125;
    v118[3] = v126;
    v118[4] = v127;
    v118[5] = v128;
    v118[0] = v123;
    v118[1] = v124;
    SamplingParametersEnvelope.init(sealing:)(v118, v120);
    v69 = v60 + v63[7];
    v70 = v120[11];
    *(v69 + 160) = v120[10];
    *(v69 + 176) = v70;
    *(v69 + 192) = v120[12];
    *(v69 + 208) = v121;
    v71 = v120[7];
    *(v69 + 96) = v120[6];
    *(v69 + 112) = v71;
    v72 = v120[9];
    *(v69 + 128) = v120[8];
    *(v69 + 144) = v72;
    v73 = v120[3];
    *(v69 + 32) = v120[2];
    *(v69 + 48) = v73;
    v74 = v120[5];
    *(v69 + 64) = v120[4];
    *(v69 + 80) = v74;
    v75 = v120[1];
    *v69 = v120[0];
    *(v69 + 16) = v75;
    *(v60 + v63[9]) = MEMORY[0x1E69E7CC0];
    v76 = v98;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v59, v98, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v77 = v117;
    v78 = v103;
    if ((*(v117 + 48))(v76, 1, v103) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v106, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v109 + 8))(v115, v116);
      v117 = *(v108 + 8);
      (v117)(v114, v137);
      v79 = xmmword_1ABA26F10;
    }

    else
    {
      v80 = v95;
      (*(v77 + 32))(v95, v76, v78);
      v81 = v96;
      (*(v77 + 16))(v96, v80, v78);
      ToolChoiceEnvelope.init(sealing:)(v81, v118);
      (*(v77 + 8))(v80, v78);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v106, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v109 + 8))(v115, v116);
      v117 = *(v108 + 8);
      (v117)(v114, v137);
      v79 = v118[0];
    }

    v82 = v105;
    v83 = v100;
    *(v60 + v63[10]) = v79;
    swift_bridgeObjectRelease_n();
    v84 = (v60 + v63[12]);
    *v84 = v83;
    v84[1] = v94;
    v84[2] = 0xD000000000000024;
    v84[3] = v92;
    v84[4] = 0;
    v85 = v113;
    v84[5] = 0;
    v84[6] = v85;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v107, v60 + v63[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v86 = v63[11];
    v87 = MEMORY[0x1E69E7CC0];
    *(v60 + v86) = MEMORY[0x1E69E7CC0];
    v88 = v60;
    v89 = v104;
    outlined init with take of ToolDescription(v88, v104, type metadata accessor for CompletePromptRequest);
    TokenGenerator.handleCompletePromptRequest(request:tools:)(v89, v87, v122);

    outlined destroy of ToolType(v89, type metadata accessor for CompletePromptRequest);
    (v117)(v111, v137);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v110, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v112, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    result = *v122;
    v90 = v122[1];
    *v82 = v122[0];
    v82[1] = v90;
  }

  return result;
}

double TokenGenerator.complete(prompt:parameters:grammar:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, void (*a4)(char *, char *, uint64_t)@<X3>, _OWORD *a5@<X8>)
{
  v103 = a5;
  v106 = a4;
  v98 = a3;
  v94 = a1;
  v105 = type metadata accessor for ToolChoice();
  v6 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v90 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v89 - v9;
  v97 = type metadata accessor for CompletePromptRequest(0);
  MEMORY[0x1EEE9AC00](v97);
  v99 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v102 = &v89 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v114 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v115 = (&v89 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v96 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v95 = &v89 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v112 = &v89 - v22;
  v23 = type metadata accessor for Prompt();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v104 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v89 - v27;
  v116 = type metadata accessor for PromptVariant();
  v110 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v93 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v117 = &v89 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v113 = &v89 - v33;
  v34 = type metadata accessor for UUID();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v89 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(a2 + 176);
  v142 = *(a2 + 160);
  v143 = v38;
  v144 = *(a2 + 192);
  v145 = *(a2 + 208);
  v39 = *(a2 + 112);
  v138 = *(a2 + 96);
  v139 = v39;
  v40 = *(a2 + 144);
  v140 = *(a2 + 128);
  v141 = v40;
  v41 = *(a2 + 48);
  v134 = *(a2 + 32);
  v135 = v41;
  v42 = *(a2 + 80);
  v136 = *(a2 + 64);
  v137 = v42;
  v43 = *(a2 + 16);
  v132 = *a2;
  v133 = v43;
  UUID.init()();
  v100 = UUID.uuidString.getter();
  v109 = v44;
  (*(v35 + 8))(v37, v34);
  v108 = 0x80000001ABA42BA0;
  v107 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v101 = v24;
  v45 = *(v24 + 16);
  v92 = v28;
  v46 = v94;
  v111 = v23;
  v45(v28, v94, v23);
  v91 = v45;
  PromptVariant.init(_:)();
  v47 = v112;
  (*(v6 + 56))(v112, 1, 1, v105);
  v48 = v115;
  v49 = v106;
  *v115 = v98;
  v48[1] = v49;
  v50 = type metadata accessor for Constraints(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v50 - 8) + 56))(v48, 0, 1, v50);
  v51 = v104;
  v45(v104, v46, v23);
  v98 = *(v110 + 16);
  v52 = v116;
  v53 = v97;
  v98(v117, v113, v116);
  v54 = v48;
  v55 = v6;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v54, v114, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v56 = v95;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v47, v95, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);

  outlined init with copy of SamplingParameters(&v132, v146);
  v57 = v99;
  XPCDictionary.init()();
  v58 = v92;
  v91(v92, v51, v111);
  v59 = v105;
  v60 = specialized PromptEnvelope.init(sealing:xpcData:)(v58, v57);
  v61 = (v57 + v53[5]);
  *v61 = v60;
  v61[1] = v62;
  v61[2] = v63;
  v61[3] = v64;
  v65 = v93;
  v98(v93, v117, v52);
  v66 = v96;
  PromptVariantEnvelope.init(sealing:xpcData:)(v65, v57, v57 + v53[6]);
  v128 = v142;
  v129 = v143;
  v130 = v144;
  v131 = v145;
  v124 = v138;
  v125 = v139;
  v126 = v140;
  v127 = v141;
  v120 = v134;
  v121 = v135;
  v122 = v136;
  v123 = v137;
  v118 = v132;
  v119 = v133;
  SamplingParametersEnvelope.init(sealing:)(&v118, v146);
  v67 = v57 + v53[7];
  v68 = v146[11];
  *(v67 + 160) = v146[10];
  *(v67 + 176) = v68;
  *(v67 + 192) = v146[12];
  *(v67 + 208) = v147;
  v69 = v146[7];
  *(v67 + 96) = v146[6];
  *(v67 + 112) = v69;
  v70 = v146[9];
  *(v67 + 128) = v146[8];
  *(v67 + 144) = v70;
  v71 = v146[3];
  *(v67 + 32) = v146[2];
  *(v67 + 48) = v71;
  v72 = v146[5];
  *(v67 + 64) = v146[4];
  *(v67 + 80) = v72;
  v73 = v146[1];
  *v67 = v146[0];
  *(v67 + 16) = v73;
  v74 = v53;
  *(v57 + v53[9]) = MEMORY[0x1E69E7CC0];
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v56, v66, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  if ((*(v55 + 48))(v66, 1, v59) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v56, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v75 = v117;
    v117 = *(v110 + 8);
    (v117)(v75, v116);
    (*(v101 + 8))(v104, v111);
    v76 = xmmword_1ABA26F10;
  }

  else
  {
    v77 = v89;
    (*(v55 + 32))(v89, v66, v59);
    v78 = v90;
    (*(v55 + 16))(v90, v77, v59);
    ToolChoiceEnvelope.init(sealing:)(v78, &v118);
    (*(v55 + 8))(v77, v59);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v56, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v79 = v117;
    v117 = *(v110 + 8);
    (v117)(v79, v116);
    (*(v101 + 8))(v104, v111);
    v76 = v118;
  }

  v80 = v57;
  *(v57 + v74[10]) = v76;
  swift_bridgeObjectRelease_n();
  v81 = (v57 + v74[12]);
  v82 = v108;
  v83 = v109;
  *v81 = v100;
  v81[1] = v83;
  v81[2] = 0xD000000000000024;
  v81[3] = v82;
  v81[4] = 0;
  v81[5] = 0;
  v81[6] = v107;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v114, v80 + v74[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v84 = MEMORY[0x1E69E7CC0];
  *(v80 + v74[11]) = MEMORY[0x1E69E7CC0];
  v85 = v102;
  outlined init with take of ToolDescription(v80, v102, type metadata accessor for CompletePromptRequest);
  TokenGenerator.handleCompletePromptRequest(request:tools:)(v85, v84, &v118);

  outlined destroy of ToolType(v85, type metadata accessor for CompletePromptRequest);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v115, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v112, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  (v117)(v113, v116);
  result = *&v118;
  v87 = v119;
  v88 = v103;
  *v103 = v118;
  v88[1] = v87;
  return result;
}

double TokenGenerator.complete(prompt:parameters:grammarIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char **a4@<X3>, _OWORD *a5@<X8>)
{
  v112 = a1;
  v105 = a5;
  v110 = a4;
  v111 = a3;
  v6 = type metadata accessor for ToolChoice();
  v117 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v96 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v95 = &v91 - v9;
  v116 = type metadata accessor for PromptVariant();
  v109 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v99 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v115 = &v91 - v12;
  v102 = type metadata accessor for CompletePromptRequest(0);
  MEMORY[0x1EEE9AC00](v102);
  v101 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v104 = &v91 - v15;
  v137 = type metadata accessor for Prompt();
  v108 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v97 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v114 = &v91 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v91 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v107 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v91 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v98 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v106 = &v91 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v91 - v32;
  v34 = type metadata accessor for UUID();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v91 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(a2 + 176);
  v133 = *(a2 + 160);
  v134 = v38;
  v135 = *(a2 + 192);
  v136 = *(a2 + 208);
  v39 = *(a2 + 112);
  v129 = *(a2 + 96);
  v130 = v39;
  v40 = *(a2 + 144);
  v131 = *(a2 + 128);
  v132 = v40;
  v41 = *(a2 + 48);
  v125 = *(a2 + 32);
  v126 = v41;
  v42 = *(a2 + 80);
  v127 = *(a2 + 64);
  v128 = v42;
  v43 = *a2;
  v44 = *(a2 + 16);
  v45 = v21;
  v123 = v43;
  v124 = v44;
  UUID.init()();
  v100 = UUID.uuidString.getter();
  v47 = v46;
  v48 = v34;
  v49 = v33;
  (*(v35 + 8))(v37, v48);
  v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v51 = *(v117 + 56);
  v103 = v6;
  v51(v49, 1, 1, v6);
  v52 = v110;
  *v26 = v111;
  v26[1] = v52;
  v53 = type metadata accessor for Constraints(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v53 - 8) + 56))(v26, 0, 1, v53);

  v54 = v113;
  v55 = v112;
  PromptVariant.tgPrompt.getter();
  if (v54)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v26, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v49, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  }

  else
  {
    v93 = 0;
    v113 = v50;
    v57 = *(v108 + 16);
    v111 = v45;
    v57(v114, v45, v137);
    v91 = *(v109 + 16);
    v91(v115, v55, v116);
    v110 = v26;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v26, v107, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v112 = v49;
    v58 = v49;
    v59 = v106;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v58, v106, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v94 = v47;

    v92 = 0x80000001ABA42BD0;

    outlined init with copy of SamplingParameters(&v123, v120);
    v60 = v101;
    XPCDictionary.init()();
    v61 = v97;
    v57(v97, v114, v137);
    v62 = specialized PromptEnvelope.init(sealing:xpcData:)(v61, v60);
    v63 = v102;
    v64 = (v60 + *(v102 + 20));
    *v64 = v62;
    v64[1] = v65;
    v64[2] = v66;
    v64[3] = v67;
    v68 = v99;
    v91(v99, v115, v116);
    PromptVariantEnvelope.init(sealing:xpcData:)(v68, v60, v60 + v63[6]);
    v118[10] = v133;
    v118[11] = v134;
    v118[12] = v135;
    v119 = v136;
    v118[6] = v129;
    v118[7] = v130;
    v118[8] = v131;
    v118[9] = v132;
    v118[2] = v125;
    v118[3] = v126;
    v118[4] = v127;
    v118[5] = v128;
    v118[0] = v123;
    v118[1] = v124;
    SamplingParametersEnvelope.init(sealing:)(v118, v120);
    v69 = v60 + v63[7];
    v70 = v120[11];
    *(v69 + 160) = v120[10];
    *(v69 + 176) = v70;
    *(v69 + 192) = v120[12];
    *(v69 + 208) = v121;
    v71 = v120[7];
    *(v69 + 96) = v120[6];
    *(v69 + 112) = v71;
    v72 = v120[9];
    *(v69 + 128) = v120[8];
    *(v69 + 144) = v72;
    v73 = v120[3];
    *(v69 + 32) = v120[2];
    *(v69 + 48) = v73;
    v74 = v120[5];
    *(v69 + 64) = v120[4];
    *(v69 + 80) = v74;
    v75 = v120[1];
    *v69 = v120[0];
    *(v69 + 16) = v75;
    *(v60 + v63[9]) = MEMORY[0x1E69E7CC0];
    v76 = v98;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v59, v98, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v77 = v117;
    v78 = v103;
    if ((*(v117 + 48))(v76, 1, v103) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v106, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v109 + 8))(v115, v116);
      v117 = *(v108 + 8);
      (v117)(v114, v137);
      v79 = xmmword_1ABA26F10;
    }

    else
    {
      v80 = v95;
      (*(v77 + 32))(v95, v76, v78);
      v81 = v96;
      (*(v77 + 16))(v96, v80, v78);
      ToolChoiceEnvelope.init(sealing:)(v81, v118);
      (*(v77 + 8))(v80, v78);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v106, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v109 + 8))(v115, v116);
      v117 = *(v108 + 8);
      (v117)(v114, v137);
      v79 = v118[0];
    }

    v82 = v105;
    v83 = v100;
    *(v60 + v63[10]) = v79;
    swift_bridgeObjectRelease_n();
    v84 = (v60 + v63[12]);
    *v84 = v83;
    v84[1] = v94;
    v84[2] = 0xD00000000000002ELL;
    v84[3] = v92;
    v84[4] = 0;
    v85 = v113;
    v84[5] = 0;
    v84[6] = v85;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v107, v60 + v63[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v86 = v63[11];
    v87 = MEMORY[0x1E69E7CC0];
    *(v60 + v86) = MEMORY[0x1E69E7CC0];
    v88 = v60;
    v89 = v104;
    outlined init with take of ToolDescription(v88, v104, type metadata accessor for CompletePromptRequest);
    TokenGenerator.handleCompletePromptRequest(request:tools:)(v89, v87, v122);

    outlined destroy of ToolType(v89, type metadata accessor for CompletePromptRequest);
    (v117)(v111, v137);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v110, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v112, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    result = *v122;
    v90 = v122[1];
    *v82 = v122[0];
    v82[1] = v90;
  }

  return result;
}

double TokenGenerator.complete(prompt:parameters:grammarIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, void (*a4)(char *, char *, uint64_t)@<X3>, _OWORD *a5@<X8>)
{
  v103 = a5;
  v106 = a4;
  v98 = a3;
  v94 = a1;
  v105 = type metadata accessor for ToolChoice();
  v6 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v90 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v89 - v9;
  v97 = type metadata accessor for CompletePromptRequest(0);
  MEMORY[0x1EEE9AC00](v97);
  v99 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v102 = &v89 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v114 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v115 = (&v89 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v96 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v95 = &v89 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v112 = &v89 - v22;
  v23 = type metadata accessor for Prompt();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v104 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v89 - v27;
  v116 = type metadata accessor for PromptVariant();
  v110 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v93 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v117 = &v89 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v113 = &v89 - v33;
  v34 = type metadata accessor for UUID();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v89 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(a2 + 176);
  v142 = *(a2 + 160);
  v143 = v38;
  v144 = *(a2 + 192);
  v145 = *(a2 + 208);
  v39 = *(a2 + 112);
  v138 = *(a2 + 96);
  v139 = v39;
  v40 = *(a2 + 144);
  v140 = *(a2 + 128);
  v141 = v40;
  v41 = *(a2 + 48);
  v134 = *(a2 + 32);
  v135 = v41;
  v42 = *(a2 + 80);
  v136 = *(a2 + 64);
  v137 = v42;
  v43 = *(a2 + 16);
  v132 = *a2;
  v133 = v43;
  UUID.init()();
  v100 = UUID.uuidString.getter();
  v109 = v44;
  (*(v35 + 8))(v37, v34);
  v108 = 0x80000001ABA42BD0;
  v107 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v101 = v24;
  v45 = *(v24 + 16);
  v92 = v28;
  v46 = v94;
  v111 = v23;
  v45(v28, v94, v23);
  v91 = v45;
  PromptVariant.init(_:)();
  v47 = v112;
  (*(v6 + 56))(v112, 1, 1, v105);
  v48 = v115;
  v49 = v106;
  *v115 = v98;
  v48[1] = v49;
  v50 = type metadata accessor for Constraints(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v50 - 8) + 56))(v48, 0, 1, v50);
  v51 = v104;
  v45(v104, v46, v23);
  v98 = *(v110 + 16);
  v52 = v116;
  v53 = v97;
  v98(v117, v113, v116);
  v54 = v48;
  v55 = v6;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v54, v114, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v56 = v95;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v47, v95, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);

  outlined init with copy of SamplingParameters(&v132, v146);
  v57 = v99;
  XPCDictionary.init()();
  v58 = v92;
  v91(v92, v51, v111);
  v59 = v105;
  v60 = specialized PromptEnvelope.init(sealing:xpcData:)(v58, v57);
  v61 = (v57 + v53[5]);
  *v61 = v60;
  v61[1] = v62;
  v61[2] = v63;
  v61[3] = v64;
  v65 = v93;
  v98(v93, v117, v52);
  v66 = v96;
  PromptVariantEnvelope.init(sealing:xpcData:)(v65, v57, v57 + v53[6]);
  v128 = v142;
  v129 = v143;
  v130 = v144;
  v131 = v145;
  v124 = v138;
  v125 = v139;
  v126 = v140;
  v127 = v141;
  v120 = v134;
  v121 = v135;
  v122 = v136;
  v123 = v137;
  v118 = v132;
  v119 = v133;
  SamplingParametersEnvelope.init(sealing:)(&v118, v146);
  v67 = v57 + v53[7];
  v68 = v146[11];
  *(v67 + 160) = v146[10];
  *(v67 + 176) = v68;
  *(v67 + 192) = v146[12];
  *(v67 + 208) = v147;
  v69 = v146[7];
  *(v67 + 96) = v146[6];
  *(v67 + 112) = v69;
  v70 = v146[9];
  *(v67 + 128) = v146[8];
  *(v67 + 144) = v70;
  v71 = v146[3];
  *(v67 + 32) = v146[2];
  *(v67 + 48) = v71;
  v72 = v146[5];
  *(v67 + 64) = v146[4];
  *(v67 + 80) = v72;
  v73 = v146[1];
  *v67 = v146[0];
  *(v67 + 16) = v73;
  v74 = v53;
  *(v57 + v53[9]) = MEMORY[0x1E69E7CC0];
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v56, v66, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  if ((*(v55 + 48))(v66, 1, v59) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v56, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v75 = v117;
    v117 = *(v110 + 8);
    (v117)(v75, v116);
    (*(v101 + 8))(v104, v111);
    v76 = xmmword_1ABA26F10;
  }

  else
  {
    v77 = v89;
    (*(v55 + 32))(v89, v66, v59);
    v78 = v90;
    (*(v55 + 16))(v90, v77, v59);
    ToolChoiceEnvelope.init(sealing:)(v78, &v118);
    (*(v55 + 8))(v77, v59);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v56, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v79 = v117;
    v117 = *(v110 + 8);
    (v117)(v79, v116);
    (*(v101 + 8))(v104, v111);
    v76 = v118;
  }

  v80 = v57;
  *(v57 + v74[10]) = v76;
  swift_bridgeObjectRelease_n();
  v81 = (v57 + v74[12]);
  v82 = v108;
  v83 = v109;
  *v81 = v100;
  v81[1] = v83;
  v81[2] = 0xD00000000000002ELL;
  v81[3] = v82;
  v81[4] = 0;
  v81[5] = 0;
  v81[6] = v107;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v114, v80 + v74[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v84 = MEMORY[0x1E69E7CC0];
  *(v80 + v74[11]) = MEMORY[0x1E69E7CC0];
  v85 = v102;
  outlined init with take of ToolDescription(v80, v102, type metadata accessor for CompletePromptRequest);
  TokenGenerator.handleCompletePromptRequest(request:tools:)(v85, v84, &v118);

  outlined destroy of ToolType(v85, type metadata accessor for CompletePromptRequest);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v115, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v112, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  (v117)(v113, v116);
  result = *&v118;
  v87 = v119;
  v88 = v103;
  *v103 = v118;
  v88[1] = v87;
  return result;
}

double TokenGenerator.complete(prompt:parameters:schemaIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char **a4@<X3>, _OWORD *a5@<X8>)
{
  v112 = a1;
  v105 = a5;
  v110 = a4;
  v111 = a3;
  v6 = type metadata accessor for ToolChoice();
  v117 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v96 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v95 = &v91 - v9;
  v116 = type metadata accessor for PromptVariant();
  v109 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v99 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v115 = &v91 - v12;
  v102 = type metadata accessor for CompletePromptRequest(0);
  MEMORY[0x1EEE9AC00](v102);
  v101 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v104 = &v91 - v15;
  v137 = type metadata accessor for Prompt();
  v108 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v97 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v114 = &v91 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v91 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v107 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v91 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v98 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v106 = &v91 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v91 - v32;
  v34 = type metadata accessor for UUID();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v91 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(a2 + 176);
  v133 = *(a2 + 160);
  v134 = v38;
  v135 = *(a2 + 192);
  v136 = *(a2 + 208);
  v39 = *(a2 + 112);
  v129 = *(a2 + 96);
  v130 = v39;
  v40 = *(a2 + 144);
  v131 = *(a2 + 128);
  v132 = v40;
  v41 = *(a2 + 48);
  v125 = *(a2 + 32);
  v126 = v41;
  v42 = *(a2 + 80);
  v127 = *(a2 + 64);
  v128 = v42;
  v43 = *a2;
  v44 = *(a2 + 16);
  v45 = v21;
  v123 = v43;
  v124 = v44;
  UUID.init()();
  v100 = UUID.uuidString.getter();
  v47 = v46;
  v48 = v34;
  v49 = v33;
  (*(v35 + 8))(v37, v48);
  v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v51 = *(v117 + 56);
  v103 = v6;
  v51(v49, 1, 1, v6);
  v52 = v110;
  *v26 = v111;
  v26[1] = v52;
  v53 = type metadata accessor for Constraints(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v53 - 8) + 56))(v26, 0, 1, v53);

  v54 = v113;
  v55 = v112;
  PromptVariant.tgPrompt.getter();
  if (v54)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v26, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v49, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  }

  else
  {
    v93 = 0;
    v113 = v50;
    v57 = *(v108 + 16);
    v111 = v45;
    v57(v114, v45, v137);
    v91 = *(v109 + 16);
    v91(v115, v55, v116);
    v110 = v26;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v26, v107, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v112 = v49;
    v58 = v49;
    v59 = v106;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v58, v106, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v94 = v47;

    v92 = 0x80000001ABA42C00;

    outlined init with copy of SamplingParameters(&v123, v120);
    v60 = v101;
    XPCDictionary.init()();
    v61 = v97;
    v57(v97, v114, v137);
    v62 = specialized PromptEnvelope.init(sealing:xpcData:)(v61, v60);
    v63 = v102;
    v64 = (v60 + *(v102 + 20));
    *v64 = v62;
    v64[1] = v65;
    v64[2] = v66;
    v64[3] = v67;
    v68 = v99;
    v91(v99, v115, v116);
    PromptVariantEnvelope.init(sealing:xpcData:)(v68, v60, v60 + v63[6]);
    v118[10] = v133;
    v118[11] = v134;
    v118[12] = v135;
    v119 = v136;
    v118[6] = v129;
    v118[7] = v130;
    v118[8] = v131;
    v118[9] = v132;
    v118[2] = v125;
    v118[3] = v126;
    v118[4] = v127;
    v118[5] = v128;
    v118[0] = v123;
    v118[1] = v124;
    SamplingParametersEnvelope.init(sealing:)(v118, v120);
    v69 = v60 + v63[7];
    v70 = v120[11];
    *(v69 + 160) = v120[10];
    *(v69 + 176) = v70;
    *(v69 + 192) = v120[12];
    *(v69 + 208) = v121;
    v71 = v120[7];
    *(v69 + 96) = v120[6];
    *(v69 + 112) = v71;
    v72 = v120[9];
    *(v69 + 128) = v120[8];
    *(v69 + 144) = v72;
    v73 = v120[3];
    *(v69 + 32) = v120[2];
    *(v69 + 48) = v73;
    v74 = v120[5];
    *(v69 + 64) = v120[4];
    *(v69 + 80) = v74;
    v75 = v120[1];
    *v69 = v120[0];
    *(v69 + 16) = v75;
    *(v60 + v63[9]) = MEMORY[0x1E69E7CC0];
    v76 = v98;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v59, v98, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v77 = v117;
    v78 = v103;
    if ((*(v117 + 48))(v76, 1, v103) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v106, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v109 + 8))(v115, v116);
      v117 = *(v108 + 8);
      (v117)(v114, v137);
      v79 = xmmword_1ABA26F10;
    }

    else
    {
      v80 = v95;
      (*(v77 + 32))(v95, v76, v78);
      v81 = v96;
      (*(v77 + 16))(v96, v80, v78);
      ToolChoiceEnvelope.init(sealing:)(v81, v118);
      (*(v77 + 8))(v80, v78);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v106, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v109 + 8))(v115, v116);
      v117 = *(v108 + 8);
      (v117)(v114, v137);
      v79 = v118[0];
    }

    v82 = v105;
    v83 = v100;
    *(v60 + v63[10]) = v79;
    swift_bridgeObjectRelease_n();
    v84 = (v60 + v63[12]);
    *v84 = v83;
    v84[1] = v94;
    v84[2] = 0xD00000000000002DLL;
    v84[3] = v92;
    v84[4] = 0;
    v85 = v113;
    v84[5] = 0;
    v84[6] = v85;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v107, v60 + v63[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v86 = v63[11];
    v87 = MEMORY[0x1E69E7CC0];
    *(v60 + v86) = MEMORY[0x1E69E7CC0];
    v88 = v60;
    v89 = v104;
    outlined init with take of ToolDescription(v88, v104, type metadata accessor for CompletePromptRequest);
    TokenGenerator.handleCompletePromptRequest(request:tools:)(v89, v87, v122);

    outlined destroy of ToolType(v89, type metadata accessor for CompletePromptRequest);
    (v117)(v111, v137);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v110, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v112, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    result = *v122;
    v90 = v122[1];
    *v82 = v122[0];
    v82[1] = v90;
  }

  return result;
}

double TokenGenerator.complete(prompt:parameters:schemaIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, void (*a4)(char *, char *, uint64_t)@<X3>, _OWORD *a5@<X8>)
{
  v103 = a5;
  v106 = a4;
  v98 = a3;
  v94 = a1;
  v105 = type metadata accessor for ToolChoice();
  v6 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v90 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v89 - v9;
  v97 = type metadata accessor for CompletePromptRequest(0);
  MEMORY[0x1EEE9AC00](v97);
  v99 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v102 = &v89 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v114 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v115 = (&v89 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v96 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v95 = &v89 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v112 = &v89 - v22;
  v23 = type metadata accessor for Prompt();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v104 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v89 - v27;
  v116 = type metadata accessor for PromptVariant();
  v110 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v93 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v117 = &v89 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v113 = &v89 - v33;
  v34 = type metadata accessor for UUID();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v89 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(a2 + 176);
  v142 = *(a2 + 160);
  v143 = v38;
  v144 = *(a2 + 192);
  v145 = *(a2 + 208);
  v39 = *(a2 + 112);
  v138 = *(a2 + 96);
  v139 = v39;
  v40 = *(a2 + 144);
  v140 = *(a2 + 128);
  v141 = v40;
  v41 = *(a2 + 48);
  v134 = *(a2 + 32);
  v135 = v41;
  v42 = *(a2 + 80);
  v136 = *(a2 + 64);
  v137 = v42;
  v43 = *(a2 + 16);
  v132 = *a2;
  v133 = v43;
  UUID.init()();
  v100 = UUID.uuidString.getter();
  v109 = v44;
  (*(v35 + 8))(v37, v34);
  v108 = 0x80000001ABA42C00;
  v107 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v101 = v24;
  v45 = *(v24 + 16);
  v92 = v28;
  v46 = v94;
  v111 = v23;
  v45(v28, v94, v23);
  v91 = v45;
  PromptVariant.init(_:)();
  v47 = v112;
  (*(v6 + 56))(v112, 1, 1, v105);
  v48 = v115;
  v49 = v106;
  *v115 = v98;
  v48[1] = v49;
  v50 = type metadata accessor for Constraints(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v50 - 8) + 56))(v48, 0, 1, v50);
  v51 = v104;
  v45(v104, v46, v23);
  v98 = *(v110 + 16);
  v52 = v116;
  v53 = v97;
  v98(v117, v113, v116);
  v54 = v48;
  v55 = v6;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v54, v114, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v56 = v95;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v47, v95, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);

  outlined init with copy of SamplingParameters(&v132, v146);
  v57 = v99;
  XPCDictionary.init()();
  v58 = v92;
  v91(v92, v51, v111);
  v59 = v105;
  v60 = specialized PromptEnvelope.init(sealing:xpcData:)(v58, v57);
  v61 = (v57 + v53[5]);
  *v61 = v60;
  v61[1] = v62;
  v61[2] = v63;
  v61[3] = v64;
  v65 = v93;
  v98(v93, v117, v52);
  v66 = v96;
  PromptVariantEnvelope.init(sealing:xpcData:)(v65, v57, v57 + v53[6]);
  v128 = v142;
  v129 = v143;
  v130 = v144;
  v131 = v145;
  v124 = v138;
  v125 = v139;
  v126 = v140;
  v127 = v141;
  v120 = v134;
  v121 = v135;
  v122 = v136;
  v123 = v137;
  v118 = v132;
  v119 = v133;
  SamplingParametersEnvelope.init(sealing:)(&v118, v146);
  v67 = v57 + v53[7];
  v68 = v146[11];
  *(v67 + 160) = v146[10];
  *(v67 + 176) = v68;
  *(v67 + 192) = v146[12];
  *(v67 + 208) = v147;
  v69 = v146[7];
  *(v67 + 96) = v146[6];
  *(v67 + 112) = v69;
  v70 = v146[9];
  *(v67 + 128) = v146[8];
  *(v67 + 144) = v70;
  v71 = v146[3];
  *(v67 + 32) = v146[2];
  *(v67 + 48) = v71;
  v72 = v146[5];
  *(v67 + 64) = v146[4];
  *(v67 + 80) = v72;
  v73 = v146[1];
  *v67 = v146[0];
  *(v67 + 16) = v73;
  v74 = v53;
  *(v57 + v53[9]) = MEMORY[0x1E69E7CC0];
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v56, v66, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  if ((*(v55 + 48))(v66, 1, v59) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v56, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v75 = v117;
    v117 = *(v110 + 8);
    (v117)(v75, v116);
    (*(v101 + 8))(v104, v111);
    v76 = xmmword_1ABA26F10;
  }

  else
  {
    v77 = v89;
    (*(v55 + 32))(v89, v66, v59);
    v78 = v90;
    (*(v55 + 16))(v90, v77, v59);
    ToolChoiceEnvelope.init(sealing:)(v78, &v118);
    (*(v55 + 8))(v77, v59);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v56, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v79 = v117;
    v117 = *(v110 + 8);
    (v117)(v79, v116);
    (*(v101 + 8))(v104, v111);
    v76 = v118;
  }

  v80 = v57;
  *(v57 + v74[10]) = v76;
  swift_bridgeObjectRelease_n();
  v81 = (v57 + v74[12]);
  v82 = v108;
  v83 = v109;
  *v81 = v100;
  v81[1] = v83;
  v81[2] = 0xD00000000000002DLL;
  v81[3] = v82;
  v81[4] = 0;
  v81[5] = 0;
  v81[6] = v107;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v114, v80 + v74[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v84 = MEMORY[0x1E69E7CC0];
  *(v80 + v74[11]) = MEMORY[0x1E69E7CC0];
  v85 = v102;
  outlined init with take of ToolDescription(v80, v102, type metadata accessor for CompletePromptRequest);
  TokenGenerator.handleCompletePromptRequest(request:tools:)(v85, v84, &v118);

  outlined destroy of ToolType(v85, type metadata accessor for CompletePromptRequest);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v115, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v112, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  (v117)(v113, v116);
  result = *&v118;
  v87 = v119;
  v88 = v103;
  *v103 = v118;
  v88[1] = v87;
  return result;
}

uint64_t TokenGenerator.complete(prompt:parameters:tools:toolChoice:documents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)()@<X8>)
{
  v176 = a1;
  v169 = a5;
  v161 = a4;
  v185 = a3;
  v168 = a6;
  v187 = type metadata accessor for FunctionDescription(0);
  MEMORY[0x1EEE9AC00](v187);
  v186 = &v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v190 = &v156 - v9;
  v189 = type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  MEMORY[0x1EEE9AC00](v189);
  v194 = (&v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v188 = type metadata accessor for ToolType(0);
  MEMORY[0x1EEE9AC00](v188);
  v197 = &v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v200 = &v156 - v13;
  v14 = type metadata accessor for ToolDescription(0);
  v196 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v158 = (&v156 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v199 = &v156 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v198 = &v156 - v19;
  v20 = type metadata accessor for ToolDescriptionEnvelope(0);
  v193 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v195 = &v156 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ToolChoice();
  v166 = *(v22 - 8);
  v167 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v157 = &v156 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v156 = &v156 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v165 = &v156 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v156 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v174 = &v156 - v32;
  v33 = type metadata accessor for PromptVariant();
  v172 = *(v33 - 8);
  v173 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v160 = &v156 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v183 = &v156 - v36;
  v208 = type metadata accessor for GenerationSchema();
  v233 = *(v208 - 1);
  MEMORY[0x1EEE9AC00](v208);
  v207 = &v156 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = type metadata accessor for Schema();
  v38 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v209 = &v156 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for AnyTooling(0);
  v214 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  v205 = &v156 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = type metadata accessor for ToolType();
  v41 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  v192 = &v156 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v191 = &v156 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v156 - v46;
  v48 = type metadata accessor for Prompt();
  v170 = *(v48 - 8);
  v171 = v48;
  MEMORY[0x1EEE9AC00](v48);
  v159 = &v156 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v184 = &v156 - v51;
  v182 = type metadata accessor for CompletePromptRequest(0);
  MEMORY[0x1EEE9AC00](v182);
  v181 = &v156 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v164 = &v156 - v54;
  v55 = type metadata accessor for UUID();
  v56 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v156 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = *(a2 + 176);
  v229 = *(a2 + 160);
  v230 = v59;
  v231 = *(a2 + 192);
  v232 = *(a2 + 208);
  v60 = *(a2 + 112);
  v225 = *(a2 + 96);
  v226 = v60;
  v61 = *(a2 + 144);
  v227 = *(a2 + 128);
  v228 = v61;
  v62 = *(a2 + 48);
  v221 = *(a2 + 32);
  v222 = v62;
  v63 = *(a2 + 80);
  v223 = *(a2 + 64);
  v224 = v63;
  v64 = *(a2 + 16);
  v219 = *a2;
  v220 = v64;
  UUID.init()();
  v163 = UUID.uuidString.getter();
  v179 = v65;
  (*(v56 + 8))(v58, v55);
  v66 = v185;
  v178 = 0x80000001ABA42C30;
  v67 = MEMORY[0x1E69E7CC0];
  v177 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v68 = *(v66 + 16);
  v212 = v41;
  v180 = v30;
  v162 = v38;
  if (v68)
  {
    *&v217[0] = v67;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v68, 0);
    v67 = *&v217[0];
    v69 = v66 + ((*(v214 + 80) + 32) & ~*(v214 + 80));
    v204 = *(v214 + 72);
    v202 = (v38 + 8);
    v203 = (v233 + 16);
    v201 = v41 + 32;
    v70 = v47;
    v71 = v207;
    do
    {
      v233 = v68;
      v72 = v205;
      outlined init with copy of ToolDescription(v69, v205, type metadata accessor for AnyTooling);
      v73 = *v72;
      v213 = *(v72 + 2);
      v214 = v73;
      (*v203)(v71, &v72[*(v206 + 24)], v208);
      v74 = v67;
      v75 = v209;
      Schema.init(type:)();
      static ToolType.function(name:description:parameters:)();
      v76 = v75;
      v67 = v74;
      (*v202)(v76, v210);
      outlined destroy of ToolType(v72, type metadata accessor for AnyTooling);
      *&v217[0] = v74;
      v78 = *(v74 + 2);
      v77 = *(v74 + 3);
      if (v78 >= v77 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v78 + 1, 1);
        v67 = *&v217[0];
      }

      *(v67 + 2) = v78 + 1;
      (*(v212 + 32))(&v67[((*(v212 + 80) + 32) & ~*(v212 + 80)) + *(v212 + 72) * v78], v70, v211);
      v69 += v204;
      v68 = v233 - 1;
    }

    while (v233 != 1);
    v30 = v180;
  }

  v79 = v184;
  v81 = v175;
  v80 = v176;
  PromptVariant.tgPrompt.getter();
  if (v81)
  {
  }

  else
  {
    v206 = 0;
    v233 = *(v172 + 16);
    v207 = v67;
    v83 = v173;
    (v233)(v183, v80, v173);
    v84 = type metadata accessor for Constraints(0);
    (*(*(v84 - 8) + 56))(v174, 1, 1, v84);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v161, v30, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    outlined init with copy of SamplingParameters(&v219, v217);
    v85 = v181;
    XPCDictionary.init()();
    v86 = v159;
    (*(v170 + 16))(v159, v79, v171);
    v87 = specialized PromptEnvelope.init(sealing:xpcData:)(v86, v85);
    v88 = v182;
    v89 = (v85 + v182[5]);
    *v89 = v87;
    v89[1] = v90;
    v89[2] = v91;
    v89[3] = v92;
    v93 = v160;
    v94 = v207;
    (v233)(v160, v183, v83);
    PromptVariantEnvelope.init(sealing:xpcData:)(v93, v85, v85 + v88[6]);
    v215[10] = v229;
    v215[11] = v230;
    v215[12] = v231;
    v216 = v232;
    v215[6] = v225;
    v215[7] = v226;
    v215[8] = v227;
    v215[9] = v228;
    v215[2] = v221;
    v215[3] = v222;
    v215[4] = v223;
    v215[5] = v224;
    v215[0] = v219;
    v215[1] = v220;
    SamplingParametersEnvelope.init(sealing:)(v215, v217);
    v95 = v85 + v88[7];
    v96 = v217[5];
    *(v95 + 64) = v217[4];
    *(v95 + 80) = v96;
    v97 = v217[3];
    *(v95 + 32) = v217[2];
    *(v95 + 48) = v97;
    v98 = v217[9];
    *(v95 + 128) = v217[8];
    *(v95 + 144) = v98;
    v99 = v217[7];
    *(v95 + 96) = v217[6];
    *(v95 + 112) = v99;
    *(v95 + 208) = v218;
    v100 = v217[12];
    *(v95 + 176) = v217[11];
    *(v95 + 192) = v100;
    *(v95 + 160) = v217[10];
    v101 = v217[1];
    *v95 = v217[0];
    *(v95 + 16) = v101;
    v102 = *(v94 + 2);
    if (v102)
    {
      *&v215[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v102, 0);
      v103 = *&v215[0];
      v104 = *(v212 + 16);
      v105 = &v94[(*(v212 + 80) + 32) & ~*(v212 + 80)];
      v213 = *(v212 + 72);
      v214 = v104;
      v208 = (v212 + 8);
      v106 = v158;
      v212 += 16;
      v107 = v191;
      do
      {
        v233 = v102;
        v108 = v211;
        v109 = v214;
        (v214)(v107, v105, v211);
        v110 = v103;
        v111 = v192;
        v109(v192, v107, v108);
        v112 = v111;
        v103 = v110;
        ToolDescription.init(toolType:)(v112, v106);
        (*v208)(v107, v108);
        *&v215[0] = v110;
        v114 = *(v110 + 16);
        v113 = *(v110 + 24);
        if (v114 >= v113 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v113 > 1), v114 + 1, 1);
          v103 = *&v215[0];
        }

        *(v103 + 16) = v114 + 1;
        outlined init with take of ToolDescription(v106, v103 + ((*(v196 + 80) + 32) & ~*(v196 + 80)) + *(v196 + 72) * v114, type metadata accessor for ToolDescription);
        v105 = v213 + v105;
        v102 = v233 - 1;
      }

      while (v233 != 1);
    }

    else
    {

      v103 = MEMORY[0x1E69E7CC0];
    }

    v115 = *(v103 + 16);
    v116 = v162;
    if (v115)
    {
      *&v215[0] = MEMORY[0x1E69E7CC0];
      v117 = v196;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v115, 0);
      v118 = *&v215[0];
      v119 = (*(v117 + 80) + 32) & ~*(v117 + 80);
      v211 = v103;
      v120 = v103 + v119;
      v233 = *(v117 + 72);
      v212 = v116 + 8;
      v213 = (v116 + 16);
      do
      {
        v121 = v198;
        outlined init with copy of ToolDescription(v120, v198, type metadata accessor for ToolDescription);
        v122 = v121;
        v123 = v199;
        outlined init with copy of ToolDescription(v122, v199, type metadata accessor for ToolDescription);
        v124 = v123;
        v125 = v200;
        outlined init with copy of ToolDescription(v124, v200, type metadata accessor for ToolType);
        outlined init with copy of ToolDescription(v125, v197, type metadata accessor for ToolType);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            outlined destroy of ToolType(v200, type metadata accessor for ToolType);
            outlined destroy of ToolType(v199, type metadata accessor for ToolDescription);
            outlined destroy of ToolType(v198, type metadata accessor for ToolDescription);
            v128 = type metadata accessor for FileGenerationParameters();
          }

          else
          {
            outlined destroy of ToolType(v200, type metadata accessor for ToolType);
            outlined destroy of ToolType(v199, type metadata accessor for ToolDescription);
            outlined destroy of ToolType(v198, type metadata accessor for ToolDescription);
            v128 = type metadata accessor for ImageGenerationParameters();
          }

          v127 = v194;
          (*(*(v128 - 8) + 32))(v194, v197, v128);
        }

        else if (EnumCaseMultiPayload == 2)
        {
          v129 = v190;
          outlined init with take of ToolDescription(v197, v190, type metadata accessor for FunctionDescription);
          v130 = v186;
          outlined init with copy of ToolDescription(v129, v186, type metadata accessor for FunctionDescription);
          v131 = *v130;
          v214 = *(v130 + 1);
          v132 = v214;
          v133 = v194;
          *v194 = v131;
          v133[1] = v132;
          v134 = *(v130 + 3);
          v133[2] = *(v130 + 2);
          v133[3] = v134;
          v135 = v209;
          (*v213)(v209, &v130[*(v187 + 24)], v210);
          type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0);

          Schema.type.getter();
          (*v212)(v135, v210);
          outlined destroy of ToolType(v130, type metadata accessor for FunctionDescription);
          outlined destroy of ToolType(v190, type metadata accessor for FunctionDescription);
          outlined destroy of ToolType(v200, type metadata accessor for ToolType);
          outlined destroy of ToolType(v199, type metadata accessor for ToolDescription);
          v127 = v133;
          outlined destroy of ToolType(v198, type metadata accessor for ToolDescription);
        }

        else
        {
          outlined destroy of ToolType(v200, type metadata accessor for ToolType);
          outlined destroy of ToolType(v199, type metadata accessor for ToolDescription);
          outlined destroy of ToolType(v198, type metadata accessor for ToolDescription);
          v127 = v194;
        }

        swift_storeEnumTagMultiPayload();
        v136 = v127;
        v137 = v195;
        outlined init with take of ToolDescription(v136, v195, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
        *&v215[0] = v118;
        v139 = *(v118 + 16);
        v138 = *(v118 + 24);
        if (v139 >= v138 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v138 > 1), v139 + 1, 1);
          v137 = v195;
          v118 = *&v215[0];
        }

        *(v118 + 16) = v139 + 1;
        outlined init with take of ToolDescription(v137, v118 + ((*(v193 + 80) + 32) & ~*(v193 + 80)) + *(v193 + 72) * v139, type metadata accessor for ToolDescriptionEnvelope);
        v120 += v233;
        --v115;
      }

      while (v115);
    }

    else
    {

      v118 = MEMORY[0x1E69E7CC0];
    }

    *&v181[v182[9]] = v118;
    v140 = v180;
    v141 = v165;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v180, v165, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v143 = v166;
    v142 = v167;
    v144 = (*(v166 + 48))(v141, 1, v167);
    v145 = v185;
    if (v144 == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v140, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v172 + 8))(v183, v173);
      (*(v170 + 8))(v184, v171);
      v146 = xmmword_1ABA26F10;
    }

    else
    {
      v147 = v156;
      (*(v143 + 32))(v156, v141, v142);
      v148 = v157;
      (*(v143 + 16))(v157, v147, v142);
      ToolChoiceEnvelope.init(sealing:)(v148, v215);
      (*(v143 + 8))(v147, v142);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v140, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v172 + 8))(v183, v173);
      (*(v170 + 8))(v184, v171);
      v146 = v215[0];
    }

    v150 = v163;
    v149 = v164;
    v152 = v178;
    v151 = v179;
    v154 = v181;
    v153 = v182;
    *&v181[v182[10]] = v146;
    swift_bridgeObjectRelease_n();
    v155 = (v154 + v153[12]);
    *v155 = v150;
    v155[1] = v151;
    v155[2] = 0xD000000000000037;
    v155[3] = v152;
    v155[4] = 0;
    v155[5] = 0;
    v155[6] = v177;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v174, v154 + v153[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    *(v154 + v153[11]) = v169;
    outlined init with take of ToolDescription(v154, v149, type metadata accessor for CompletePromptRequest);

    TokenGenerator.handleCompletePromptRequest(request:tools:)(v149, v145, v168);
    return outlined destroy of ToolType(v149, type metadata accessor for CompletePromptRequest);
  }
}

uint64_t TokenGenerator.imageTokenizationRecommendations()(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for UUID();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator.imageTokenizationRecommendations(), 0, 0);
}

{
  v3 = v1[15];
  v2 = v1[16];
  v4 = v1[14];
  UUID.init()();
  v5 = UUID.uuidString.getter();
  v7 = v6;
  v1[17] = v6;
  (*(v3 + 8))(v2, v4);
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v1[18] = v8;
  v1[2] = v5;
  v1[3] = v7;
  v1[4] = 0xD000000000000022;
  v1[5] = 0x80000001ABA42C70;
  v1[6] = 0;
  v1[7] = 0;
  v1[8] = v8;
  v9 = swift_task_alloc();
  v1[19] = v9;
  *v9 = v1;
  v9[1] = TokenGenerator.imageTokenizationRecommendations();

  return TokenGenerator.fetchTokenizerMetadata(requestMetadata:)((v1 + 9), v1 + 2);
}

uint64_t TokenGenerator.imageTokenizationRecommendations()()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = TokenGenerator.imageTokenizationRecommendations();
  }

  else
  {

    v2 = TokenGenerator.imageTokenizationRecommendations();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  *v1 = *(v0 + 72);
  *(v1 + 16) = v2;

  v3 = *(v0 + 8);

  return v3();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TokenGenerator.fetchTokenizerMetadata(requestMetadata:)(uint64_t a1, uint64_t *a2)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  *(v3 + 80) = type metadata accessor for OneShotRequest(0);
  *(v3 + 88) = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  *(v3 + 96) = v5;
  *(v3 + 104) = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  *(v3 + 112) = v6;
  *(v3 + 120) = v7;
  *(v3 + 128) = *(a2 + 1);
  *(v3 + 144) = a2[3];
  *(v3 + 152) = *(a2 + 2);
  *(v3 + 168) = a2[6];

  return MEMORY[0x1EEE6DFA0](TokenGenerator.fetchTokenizerMetadata(requestMetadata:), 0, 0);
}

uint64_t TokenGenerator.fetchTokenizerMetadata(requestMetadata:)()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[16];

  if (v1)
  {
    v5 = v0[19];
    v6 = v1;
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v10 = v0[13];
    v9 = v0[14];
    v11 = v0[12];
    UUID.init()();
    v7 = UUID.uuidString.getter();
    v8 = v12;
    (*(v10 + 8))(v9, v11);
    v6 = v0[20];
    v2 = v0[21];
    v3 = v0[18];
    v5 = v0[19];
    v4 = v0[16];
  }

  v0[22] = v8;
  v13 = v0[17];
  v14 = v0[11];
  v15 = v0[9];
  *v14 = v0[15];
  v14[1] = v4;
  v14[2] = v13;
  v14[3] = v3;
  v14[4] = v5;
  v14[5] = v6;
  v14[6] = v2;
  swift_storeEnumTagMultiPayload();
  v16 = *(v15 + 128);
  __swift_project_boxed_opaque_existential_1((v15 + 104), v16);

  v17 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC15TokenGeneration16ModelCatalogStubV8AssetKeyV_Tt0g5Tf4g_n(&outlined read-only object #0 of TokenGenerator.fetchTokenizerMetadata(requestMetadata:));
  v0[23] = v17;
  outlined destroy of ModelCatalogStub.AssetKey(&unk_1F2062C68);
  v18 = swift_task_alloc();
  v0[24] = v18;
  lazy protocol witness table accessor for type FetchTokenizerMetadataResponse and conformance FetchTokenizerMetadataResponse();
  lazy protocol witness table accessor for type FetchTokenizerMetadataResponse and conformance FetchTokenizerMetadataResponse();
  *v18 = v0;
  v18[1] = TokenGenerator.fetchTokenizerMetadata(requestMetadata:);
  v19 = v0[11];

  return InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)((v0 + 2), v7, v8, v19, v17, &type metadata for FetchTokenizerMetadataResponse, v16, &type metadata for FetchTokenizerMetadataResponse);
}

{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = TokenGenerator.fetchTokenizerMetadata(requestMetadata:);
  }

  else
  {
    v2 = TokenGenerator.fetchTokenizerMetadata(requestMetadata:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v18 = v0;
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.generator);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[11];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    v0[5] = v2;
    v0[6] = v1;
    v0[7] = v3;
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1AB828000, v5, v6, "Fetched tokenizer metadata: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1AC5A6CD0](v10, -1, -1);
    MEMORY[0x1AC5A6CD0](v9, -1, -1);
  }

  else
  {
  }

  outlined destroy of ToolType(v8, type metadata accessor for OneShotRequest);
  v14 = v0[8];
  *v14 = v2;
  v14[1] = v1;
  v14[2] = v3;

  v15 = v0[1];

  return v15();
}

{
  outlined destroy of ToolType(v0[11], type metadata accessor for OneShotRequest);
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.generator);
  MEMORY[0x1AC5A6AE0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[25];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    MEMORY[0x1AC5A6AE0](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_1AB828000, v3, v4, "Failed to fetch tokenizer metadata. %@", v6, 0xCu);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1AC5A6CD0](v7, -1, -1);
    MEMORY[0x1AC5A6CD0](v6, -1, -1);
  }

  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t closure #1 in TokenGenerator.handleCompletePromptRequest(request:tools:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[74] = a7;
  v7[73] = a6;
  v7[72] = a5;
  v7[71] = a4;
  v7[70] = a3;
  v7[69] = a2;
  v7[68] = a1;
  v7[75] = type metadata accessor for OneShotRequest(0);
  v7[76] = swift_task_alloc();
  v7[77] = type metadata accessor for CompletePromptResponse(0);
  v7[78] = swift_task_alloc();
  v8 = type metadata accessor for CompletePromptRequest(0);
  v7[79] = v8;
  v7[80] = *(v8 - 8);
  v7[81] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16PromptCompletionVSgMd, &_s15TokenGeneration16PromptCompletionVSgMR);
  v7[82] = swift_task_alloc();
  v7[83] = swift_task_alloc();
  v7[84] = swift_task_alloc();
  v7[85] = swift_task_alloc();
  v7[86] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
  v7[87] = swift_task_alloc();
  v7[88] = swift_task_alloc();
  v7[89] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in TokenGenerator.handleCompletePromptRequest(request:tools:), 0, 0);
}

uint64_t closure #1 in TokenGenerator.handleCompletePromptRequest(request:tools:)()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);
  v3 = *(v0 + 688);
  v4 = *(v0 + 640);
  v5 = *(v0 + 632);
  outlined init with copy of ToolDescription(*(v0 + 552), v1, type metadata accessor for CompletePromptRequest);
  (*(v4 + 56))(v1, 0, 1, v5);
  v6 = type metadata accessor for PromptCompletion(0);
  *(v0 + 720) = v6;
  v7 = *(v6 - 8);
  *(v0 + 728) = v7;
  v8 = *(v7 + 56);
  *(v0 + 736) = v8;
  *(v0 + 744) = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v3, 1, 1, v6);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, v2, &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
  v9 = *(v4 + 48);
  *(v0 + 752) = v9;
  if (v9(v2, 1, v5) == 1)
  {
    v10 = *(v0 + 728);
    v11 = *(v0 + 720);
    v12 = *(v0 + 688);
    v13 = *(v0 + 680);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 704), &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, v13, &_s15TokenGeneration16PromptCompletionVSgMd, &_s15TokenGeneration16PromptCompletionVSgMR);
    v14 = *(v10 + 48);
    result = v14(v13, 1, v11);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v16 = *(v0 + 720);
      v17 = *(v0 + 688);
      v18 = *(v0 + 680);
      v19 = *(v0 + 656);
      specialized TokenGenerator.sendInferenceRequestTelemetry(session:request:response:streaming:)(*(v0 + 560), *(v0 + 552), v18, 0);
      outlined destroy of ToolType(v18, type metadata accessor for PromptCompletion);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v19, &_s15TokenGeneration16PromptCompletionVSgMd, &_s15TokenGeneration16PromptCompletionVSgMR);
      result = v14(v19, 1, v16);
      if (result != 1)
      {
        v20 = *(v0 + 712);
        v21 = *(v0 + 656);
        v22 = *(v0 + 544);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 688), &_s15TokenGeneration16PromptCompletionVSgMd, &_s15TokenGeneration16PromptCompletionVSgMR);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v20, &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
        outlined init with take of ToolDescription(v21, v22, type metadata accessor for PromptCompletion);

        v23 = *(v0 + 8);

        return v23();
      }
    }

    __break(1u);
    return result;
  }

  v24 = *(v0 + 560);
  v25 = *(v0 + 648);
  v26 = *(v0 + 608);
  outlined init with take of ToolDescription(*(v0 + 704), v25, type metadata accessor for CompletePromptRequest);
  v27 = *(v24 + 128);
  __swift_project_boxed_opaque_existential_1((v24 + 104), v27);
  outlined init with copy of ToolDescription(v25, v26, type metadata accessor for CompletePromptRequest);
  swift_storeEnumTagMultiPayload();
  v28 = swift_task_alloc();
  *(v0 + 760) = v28;
  lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type CompletePromptResponse and conformance CompletePromptResponse, type metadata accessor for CompletePromptResponse, &protocol conformance descriptor for CompletePromptResponse);
  lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type CompletePromptResponse and conformance CompletePromptResponse, type metadata accessor for CompletePromptResponse, &protocol conformance descriptor for CompletePromptResponse);
  *v28 = v0;
  v28[1] = closure #1 in TokenGenerator.handleCompletePromptRequest(request:tools:);
  v29 = *(v0 + 616);
  v30 = *(v0 + 608);
  v31 = *(v0 + 584);
  v32 = *(v0 + 576);
  v33 = *(v0 + 568);
  v34 = *(v0 + 624);

  return InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)(v34, v33, v32, v30, v31, v29, v27, v29);
}

{
  v2 = *v1;
  *(*v1 + 768) = v0;

  outlined destroy of ToolType(*(v2 + 608), type metadata accessor for OneShotRequest);
  if (v0)
  {
    v3 = closure #1 in TokenGenerator.handleCompletePromptRequest(request:tools:);
  }

  else
  {
    v3 = closure #1 in TokenGenerator.handleCompletePromptRequest(request:tools:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 736);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v0 + 688);
  v5 = *(v0 + 672);
  v6 = *(v0 + 664);
  v7 = *(v0 + 624);
  v9 = v7[1];
  v8 = v7[2];
  *(v0 + 192) = *v7;
  *(v0 + 208) = v9;
  *(v0 + 224) = v8;
  v10 = v7[6];
  v12 = v7[3];
  v11 = v7[4];
  *(v0 + 272) = v7[5];
  *(v0 + 288) = v10;
  *(v0 + 240) = v12;
  *(v0 + 256) = v11;
  v13 = v7[10];
  v15 = v7[7];
  v14 = v7[8];
  *(v0 + 336) = v7[9];
  *(v0 + 352) = v13;
  *(v0 + 304) = v15;
  *(v0 + 320) = v14;
  v30 = v7[8];
  v31 = v7[9];
  v32 = v7[10];
  v26 = v7[4];
  v27 = v7[5];
  v28 = v7[6];
  v29 = v7[7];
  v22 = *v7;
  v23 = v7[1];
  v24 = v7[2];
  v25 = v7[3];
  outlined init with copy of PromptCompletionEnvelope(v0 + 192, v0 + 368);
  PromptCompletionEnvelope.unseal()(v5);
  outlined destroy of ToolType(v7, type metadata accessor for CompletePromptResponse);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s15TokenGeneration16PromptCompletionVSgMd, &_s15TokenGeneration16PromptCompletionVSgMR);
  *(v0 + 144) = v30;
  *(v0 + 160) = v31;
  *(v0 + 176) = v32;
  *(v0 + 80) = v26;
  *(v0 + 96) = v27;
  *(v0 + 112) = v28;
  *(v0 + 128) = v29;
  *(v0 + 16) = v22;
  *(v0 + 32) = v23;
  *(v0 + 48) = v24;
  *(v0 + 64) = v25;
  outlined destroy of PromptCompletionEnvelope(v0 + 16);
  v1(v5, 0, 1, v3);
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v5, v4, &_s15TokenGeneration16PromptCompletionVSgMd, &_s15TokenGeneration16PromptCompletionVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, v6, &_s15TokenGeneration16PromptCompletionVSgMd, &_s15TokenGeneration16PromptCompletionVSgMR);
  result = (*(v2 + 48))(v6, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v17 = swift_task_alloc();
    *(v0 + 776) = v17;
    *v17 = v0;
    v17[1] = closure #1 in TokenGenerator.handleCompletePromptRequest(request:tools:);
    v18 = *(v0 + 696);
    v19 = *(v0 + 664);
    v20 = *(v0 + 648);
    v21 = *(v0 + 592);

    return TokenGenerator.nextRequest(for:invoking:previousRequest:)(v18, v19, v21, v20);
  }

  return result;
}

{
  v2 = *v1;
  *(*v1 + 784) = v0;

  if (v0)
  {
    v3 = closure #1 in TokenGenerator.handleCompletePromptRequest(request:tools:);
  }

  else
  {
    outlined destroy of ToolType(*(v2 + 664), type metadata accessor for PromptCompletion);
    v3 = closure #1 in TokenGenerator.handleCompletePromptRequest(request:tools:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 752);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 696);
  v5 = *(v0 + 632);
  outlined destroy of ToolType(*(v0 + 648), type metadata accessor for CompletePromptRequest);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v4, v2, &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, v3, &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
  if (v1(v3, 1, v5) == 1)
  {
    v6 = *(v0 + 728);
    v7 = *(v0 + 720);
    v8 = *(v0 + 688);
    v9 = *(v0 + 680);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 704), &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, v9, &_s15TokenGeneration16PromptCompletionVSgMd, &_s15TokenGeneration16PromptCompletionVSgMR);
    v10 = *(v6 + 48);
    result = v10(v9, 1, v7);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v12 = *(v0 + 720);
      v13 = *(v0 + 688);
      v14 = *(v0 + 680);
      v15 = *(v0 + 656);
      specialized TokenGenerator.sendInferenceRequestTelemetry(session:request:response:streaming:)(*(v0 + 560), *(v0 + 552), v14, 0);
      outlined destroy of ToolType(v14, type metadata accessor for PromptCompletion);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v15, &_s15TokenGeneration16PromptCompletionVSgMd, &_s15TokenGeneration16PromptCompletionVSgMR);
      result = v10(v15, 1, v12);
      if (result != 1)
      {
        v16 = *(v0 + 712);
        v17 = *(v0 + 656);
        v18 = *(v0 + 544);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 688), &_s15TokenGeneration16PromptCompletionVSgMd, &_s15TokenGeneration16PromptCompletionVSgMR);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
        outlined init with take of ToolDescription(v17, v18, type metadata accessor for PromptCompletion);

        v19 = *(v0 + 8);

        return v19();
      }
    }

    __break(1u);
    return result;
  }

  v20 = *(v0 + 648);
  v21 = *(v0 + 608);
  v22 = *(v0 + 560);
  outlined init with take of ToolDescription(*(v0 + 704), v20, type metadata accessor for CompletePromptRequest);
  v23 = *(v22 + 128);
  __swift_project_boxed_opaque_existential_1((v22 + 104), v23);
  outlined init with copy of ToolDescription(v20, v21, type metadata accessor for CompletePromptRequest);
  swift_storeEnumTagMultiPayload();
  v24 = swift_task_alloc();
  *(v0 + 760) = v24;
  lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type CompletePromptResponse and conformance CompletePromptResponse, type metadata accessor for CompletePromptResponse, &protocol conformance descriptor for CompletePromptResponse);
  lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type CompletePromptResponse and conformance CompletePromptResponse, type metadata accessor for CompletePromptResponse, &protocol conformance descriptor for CompletePromptResponse);
  *v24 = v0;
  v24[1] = closure #1 in TokenGenerator.handleCompletePromptRequest(request:tools:);
  v25 = *(v0 + 616);
  v26 = *(v0 + 608);
  v27 = *(v0 + 584);
  v28 = *(v0 + 576);
  v29 = *(v0 + 568);
  v30 = *(v0 + 624);

  return InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)(v30, v29, v28, v26, v27, v25, v23, v25);
}

{
  v1 = v0[89];
  v2 = v0[86];
  outlined destroy of ToolType(v0[81], type metadata accessor for CompletePromptRequest);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s15TokenGeneration16PromptCompletionVSgMd, &_s15TokenGeneration16PromptCompletionVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[89];
  v2 = v0[86];
  v3 = v0[83];
  outlined destroy of ToolType(v0[81], type metadata accessor for CompletePromptRequest);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s15TokenGeneration16PromptCompletionVSgMd, &_s15TokenGeneration16PromptCompletionVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
  outlined destroy of ToolType(v3, type metadata accessor for PromptCompletion);

  v4 = v0[1];

  return v4();
}

uint64_t TokenGenerator.nextRequest(for:invoking:previousRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  v4[6] = swift_task_alloc();
  v5 = type metadata accessor for Prompt();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for Prompt.ToolCallResult();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = type metadata accessor for Prompt.Turn();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v8 = type metadata accessor for CompletePromptRequest(0);
  v4[18] = v8;
  v4[19] = *(v8 - 8);
  v4[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator.nextRequest(for:invoking:previousRequest:), 0, 0);
}

uint64_t TokenGenerator.nextRequest(for:invoking:previousRequest:)()
{
  v1 = *(v0[3] + 32);
  if (v1[2])
  {
    v2 = v0[4];
    v0[21] = v1[4];
    v3 = v1[5];
    v0[22] = v3;
    v0[23] = v1[6];
    v4 = v1[7];
    v0[24] = v4;
    v5 = v1[8];
    v0[25] = v5;
    v6 = v1[9];
    v0[26] = v6;
    v7 = v1[10];
    v0[27] = v7;
    if (*(v2 + 16) && *(v3 + 16))
    {

      outlined copy of FinishReason(v4, v5);
      outlined copy of Data._Representation(v6, v7);
      v8 = swift_task_alloc();
      v0[28] = v8;
      *v8 = v0;
      v8[1] = TokenGenerator.nextRequest(for:invoking:previousRequest:);
      v9 = v0[4];

      return specialized TokenGenerator.invoke(tooling:calls:)(v9, v3);
    }

    (*(v0[19] + 56))(v0[2], 1, 1, v0[18]);
  }

  else
  {
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Log.generator);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1AB828000, v12, v13, "Response was missing candidates", v14, 2u);
      MEMORY[0x1AC5A6CD0](v14, -1, -1);
    }

    v15 = v0[18];
    v16 = v0[19];
    v17 = v0[2];

    (*(v16 + 56))(v17, 1, 1, v15);
  }

  v18 = v0[1];

  return v18();
}

{
  v1 = v0[29];
  if (*(v1 + 16))
  {
    outlined init with copy of ToolDescription(v0[5], v0[20], type metadata accessor for CompletePromptRequest);
    static Prompt.Turn.toolCalls(_:)();
    v2 = *(v1 + 16);
    v3 = v0[29];
    v4 = v0[15];
    if (v2)
    {
      v5 = v0[12];
      v70 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
      v6 = v70;
      v7 = *(v5 + 16);
      v5 += 16;
      v8 = v3 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
      v63 = *(v5 + 56);
      v65 = v7;
      v9 = (v5 - 8);
      do
      {
        v10 = v0[13];
        v11 = v0[11];
        v65(v10, v8, v11);
        static Prompt.Turn.toolCallResult(_:)();
        (*v9)(v10, v11);
        v13 = *(v70 + 16);
        v12 = *(v70 + 24);
        if (v13 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        }

        v14 = v0[16];
        v15 = v0[14];
        *(v70 + 16) = v13 + 1;
        v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        (*(v4 + 32))(v70 + v16 + *(v4 + 72) * v13, v14, v15);
        v8 += v63;
        --v2;
      }

      while (v2);
    }

    else
    {

      v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v6 = MEMORY[0x1E69E7CC0];
    }

    v62 = v0[27];
    v60 = v0[25];
    v61 = v0[26];
    v59 = v0[24];
    v56 = v0[20];
    v26 = v0[18];
    v67 = v0[19];
    v55 = v26;
    v27 = v0[17];
    v28 = v0[15];
    v57 = v27;
    v58 = v28;
    v69 = v0[14];
    v29 = v0[10];
    v53 = v0[7];
    v54 = v0[9];
    v30 = v0[6];
    v51 = v0[5];
    v52 = v0[8];
    v64 = v0[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMR);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1ABA1D930;
    (*(v28 + 16))(v31 + v16, v27, v69);
    specialized Array.append<A>(contentsOf:)(v6);
    v32 = v31;
    v33 = (v51 + *(v26 + 20));
    v34 = v33[1];
    v50 = *v33;
    v35 = v33[2];
    v36 = v33[3];
    v37 = type metadata accessor for XPCDictionary();
    v38 = *(v37 - 8);
    (*(v38 + 16))(v30, v51, v37);
    (*(v38 + 56))(v30, 0, 1, v37);
    PromptEnvelope.unseal(_:)(v30, v50, v34, v35, v36, v29);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v30, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    Prompt.turns()();
    v39 = *(v52 + 8);
    v39(v29, v53);
    specialized Array.append<A>(contentsOf:)(v32);
    static Prompt.transcript(turns:)();

    (*(v52 + 16))(v54, v29, v53);
    v40 = specialized PromptEnvelope.init(sealing:xpcData:)(v54, v56);
    v42 = v41;
    v44 = v43;
    v46 = v45;

    outlined consume of FinishReason(v59, v60);
    outlined consume of Data._Representation(v61, v62);
    v39(v29, v53);
    (*(v58 + 8))(v57, v69);
    v47 = (v56 + *(v55 + 20));

    *v47 = v40;
    v47[1] = v42;
    v47[2] = v44;
    v47[3] = v46;
    outlined init with take of ToolDescription(v56, v64, type metadata accessor for CompletePromptRequest);
    (*(v67 + 56))(v64, 0, 1, v55);
  }

  else
  {

    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.generator);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1AB828000, v18, v19, "Tools produced no results, exiting model call loop.", v20, 2u);
      MEMORY[0x1AC5A6CD0](v20, -1, -1);
    }

    v21 = v0[26];
    v23 = v0[24];
    v22 = v0[25];
    v24 = v0[19];
    v66 = v0[27];
    v68 = v0[18];
    v25 = v0[2];

    outlined consume of FinishReason(v23, v22);
    outlined consume of Data._Representation(v21, v66);
    (*(v24 + 56))(v25, 1, 1, v68);
  }

  v48 = v0[1];

  return v48();
}

{
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[24];
  v3 = v0[25];

  outlined consume of FinishReason(v4, v3);
  outlined consume of Data._Representation(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t TokenGenerator.nextRequest(for:invoking:previousRequest:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {
    v4 = TokenGenerator.nextRequest(for:invoking:previousRequest:);
  }

  else
  {
    v4 = TokenGenerator.nextRequest(for:invoking:previousRequest:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t closure #2 in TokenGenerator.handleCompletePromptRequest(request:tools:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v25 = a5;
  v26 = a8;
  v27 = a9;
  v16 = type metadata accessor for CompletePromptRequest(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ToolDescription(a10, v19, type metadata accessor for CompletePromptRequest);
  v20 = (*(v17 + 80) + 80) & ~*(v17 + 80);
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a3;
  v21[5] = a4;
  v22 = v26;
  v21[6] = v25;
  v21[7] = a6;
  v21[8] = a7;
  v21[9] = v22;
  outlined init with take of ToolDescription(v19, v21 + v20, type metadata accessor for CompletePromptRequest);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pMd, &_s15TokenGeneration21PromptCompletionEvent_pMR);
  return AsyncThrowingStream.init<>(unfolding:)();
}

uint64_t closure #1 in closure #2 in TokenGenerator.handleCompletePromptRequest(request:tools:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[63] = v12;
  v8[64] = v13;
  v8[61] = a7;
  v8[62] = a8;
  v8[59] = a5;
  v8[60] = a6;
  v8[57] = a1;
  v8[58] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();
  v8[67] = type metadata accessor for PromptCompletion(0);
  v8[68] = swift_task_alloc();
  v8[69] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration29CompletePromptResponseElementVSgMd, &_s15TokenGeneration29CompletePromptResponseElementVSgMR);
  v8[70] = swift_task_alloc();
  v8[71] = type metadata accessor for StreamingRequest(0);
  v8[72] = swift_task_alloc();
  v8[73] = type metadata accessor for PromptCompletion.Aggregator(0);
  v8[74] = swift_task_alloc();
  v8[75] = swift_task_alloc();
  v8[76] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
  v8[77] = swift_task_alloc();
  v8[78] = swift_task_alloc();
  v8[79] = swift_task_alloc();
  v9 = type metadata accessor for CompletePromptRequest(0);
  v8[80] = v9;
  v8[81] = *(v9 - 8);
  v8[82] = swift_task_alloc();
  v8[83] = swift_projectBox();
  v8[84] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in TokenGenerator.handleCompletePromptRequest(request:tools:), 0, 0);
}

uint64_t closure #1 in closure #2 in TokenGenerator.handleCompletePromptRequest(request:tools:)()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 648);
  v3 = *(v0 + 640);
  v4 = *(v0 + 632);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, v4, &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
  v6 = *(v2 + 48);
  v5 = v2 + 48;
  *(v0 + 680) = v6;
  if (v6(v4, 1, v3) != 1)
  {
    v32 = *(v0 + 464);
    *(v0 + 688) = v5 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    outlined init with take of ToolDescription(*(v0 + 632), *(v0 + 656), type metadata accessor for CompletePromptRequest);
    v33 = *(v0 + 464);
    if (*(v32 + 40))
    {
      outlined init with copy of PromptCompletionEvent(v33 + 16, v0 + 16);
      if (*(v0 + 40))
      {
LABEL_8:
        v34 = (v0 + 16);
        goto LABEL_16;
      }
    }

    else
    {
      v35 = *(v33 + 16);
      v36 = *(v33 + 32);
      *(v0 + 48) = *(v33 + 48);
      *(v0 + 16) = v35;
      *(v0 + 32) = v36;
      if (*(v0 + 40))
      {
        goto LABEL_8;
      }
    }

    v37 = *(v0 + 672);
    v38 = *(v0 + 656);
    v39 = *(v0 + 608);
    v40 = *(v0 + 584);
    v41 = *(v0 + 576);
    v76 = *(v0 + 488);
    v78 = *(v0 + 496);
    v42 = *(v0 + 472);
    v74 = *(v0 + 480);
    v80 = *(v0 + 464);
    v43 = MEMORY[0x1E69E7CC0];
    *v39 = MEMORY[0x1E69E7CC0];
    *(v39 + 1) = 0;
    *(v39 + 2) = 0;
    *(v39 + 3) = -1;
    *(v39 + 4) = -1;
    *(v39 + 5) = 0;
    *(v39 + 6) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration16PromptCompletionV10AggregatorV09CandidateG033_D174D4387BF6B304FA76AEBF3D593BFDLLVTt0g5Tf4g_n(v43);
    v44 = *(v40 + 32);
    v45 = type metadata accessor for Prompt.Rendering();
    (*(*(v45 - 8) + 56))(&v39[v44], 1, 1, v45);
    v46 = *(v40 + 36);
    *&v39[v46] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v43);
    outlined assign with take of PromptCompletion.Aggregator(v39, v37);
    v48 = v42[16];
    v47 = v42[17];
    __swift_project_boxed_opaque_existential_1(v42 + 13, v48);
    outlined init with copy of ToolDescription(v38, v41, type metadata accessor for CompletePromptRequest);
    swift_storeEnumTagMultiPayload();
    v49 = type metadata accessor for CompletePromptResponseElement(0);
    v50 = lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type CompletePromptResponseElement and conformance CompletePromptResponseElement, type metadata accessor for CompletePromptResponseElement, &protocol conformance descriptor for CompletePromptResponseElement);
    v51 = lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type CompletePromptResponseElement and conformance CompletePromptResponseElement, type metadata accessor for CompletePromptResponseElement, &protocol conformance descriptor for CompletePromptResponseElement);
    InferenceSessionProtocol.streamingRequest<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)(v74, v76, v78, v48, v49, v47, (v0 + 96), v50, v51);
    outlined destroy of ToolType(v41, type metadata accessor for StreamingRequest);
    v52 = *(v0 + 120);
    v53 = __swift_project_boxed_opaque_existential_1((v0 + 96), v52);
    v54 = *(v52 - 8);
    v55 = swift_task_alloc();
    (*(v54 + 16))(v55, v53, v52);
    *(v0 + 80) = swift_getAssociatedTypeWitness();
    *(v0 + 88) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    dispatch thunk of AsyncSequence.makeAsyncIterator()();

    v56 = *(v0 + 80);
    v57 = *(v0 + 464);
    if (*(v80 + 40))
    {
      __swift_destroy_boxed_opaque_existential_0((v57 + 16));
      v57 = *(v0 + 464);
      if (v56)
      {
LABEL_12:
        outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>((v0 + 56), v57 + 16);
LABEL_15:
        v34 = (v0 + 96);
LABEL_16:
        __swift_destroy_boxed_opaque_existential_0(v34);
        v60 = *(v0 + 464);
        v61 = swift_beginAccess();
        v64 = *(v60 + 40);
        if (v64)
        {
          v65 = *(v0 + 464);
          v66 = *(v65 + 48);
          __swift_mutable_project_boxed_opaque_existential_1(v65 + 16, *(v60 + 40));
          v67 = swift_task_alloc();
          *(v0 + 696) = v67;
          *v67 = v0;
          v67[1] = closure #1 in closure #2 in TokenGenerator.handleCompletePromptRequest(request:tools:);
          v61 = *(v0 + 560);
          v62 = v64;
          v63 = v66;

          return MEMORY[0x1EEE6D8C8](v61, v62, v63);
        }

LABEL_21:
        __break(1u);
        return MEMORY[0x1EEE6D8C8](v61, v62, v63);
      }
    }

    else if (v56)
    {
      goto LABEL_12;
    }

    v58 = *(v0 + 56);
    v59 = *(v0 + 72);
    *(v57 + 48) = *(v0 + 88);
    *(v57 + 16) = v58;
    *(v57 + 32) = v59;
    goto LABEL_15;
  }

  v7 = *(v0 + 672);
  v8 = *(v0 + 592);
  v9 = *(v0 + 584);
  v10 = *(v0 + 520);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 632), &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
  swift_beginAccess();
  outlined init with copy of ToolDescription(v7, v8, type metadata accessor for PromptCompletion.Aggregator);
  v11 = *v8;
  v72 = v8[1];
  v12 = v8[2];
  v13 = v8[6];
  v75 = v8[5];

  v77 = v11;

  v79 = v12;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS15TokenGeneration16PromptCompletionV10AggregatorV09CandidateI033_D174D4387BF6B304FA76AEBF3D593BFDLLV_G_AJ0J0Vs5NeverOTg504_s15e12Generation16gh3V10i15V6finishACyFAC9j10VAE0gE033_klmnopQ11BFDLLVXEfU_Tf1cn_n(v13);
  v73 = v14;

  v70 = v8[4];
  v71 = v8[3];
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8 + *(v9 + 32), v10, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v15 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v0 + 440) = 0;
  v17 = [v15 dataWithJSONObject:isa options:0 error:v0 + 440];

  v18 = *(v0 + 440);
  if (!v17)
  {
    v68 = v18;

    _convertNSErrorToError(_:)();

    v61 = swift_willThrow();
    __break(1u);
    goto LABEL_21;
  }

  v19 = *(v0 + 592);
  v20 = *(v0 + 544);
  v21 = *(v0 + 536);
  v22 = *(v0 + 520);
  v69 = *(v0 + 512);
  v23 = *(v0 + 472);
  v24 = *(v0 + 456);
  v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  *(v20 + 3) = 0;
  v28 = *(v21 + 36);
  v29 = type metadata accessor for Prompt.Rendering();
  (*(*(v29 - 8) + 56))(&v20[v28], 1, 1, v29);
  *v20 = v77;
  *(v20 + 1) = v72;
  *(v20 + 2) = v79;

  *(v20 + 3) = v75;
  *(v20 + 4) = v73;
  *(v20 + 5) = v71;
  *(v20 + 6) = v70;
  *(v20 + 7) = v25;
  *(v20 + 8) = v27;
  outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v22, &v20[v28], &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  outlined destroy of ToolType(v19, type metadata accessor for PromptCompletion.Aggregator);
  specialized TokenGenerator.sendInferenceRequestTelemetry(session:request:response:streaming:)(v23, v69, v20, 1);
  outlined destroy of ToolType(v20, type metadata accessor for PromptCompletion);
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;

  v30 = *(v0 + 8);

  return v30();
}

{
  *(*v1 + 704) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #2 in TokenGenerator.handleCompletePromptRequest(request:tools:);
  }

  else
  {
    swift_endAccess();
    v2 = closure #1 in closure #2 in TokenGenerator.handleCompletePromptRequest(request:tools:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 560);
  v2 = type metadata accessor for CompletePromptResponseElement(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 464);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s15TokenGeneration29CompletePromptResponseElementVSgMd, &_s15TokenGeneration29CompletePromptResponseElementVSgMR);
    *(v0 + 136) = 0u;
    *(v0 + 152) = 0u;
    *(v0 + 168) = 0;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 136, &_s15TokenGeneration21PromptCompletionEvent_pSgMd, &_s15TokenGeneration21PromptCompletionEvent_pSgMR);
    if (*(v3 + 40))
    {
      __swift_destroy_boxed_opaque_existential_0((*(v0 + 464) + 16));
    }

    v4 = *(v0 + 672);
    v5 = *(v0 + 600);
    v6 = *(v0 + 584);
    v7 = *(v0 + 528);
    v8 = *(v0 + 464);
    *(v8 + 48) = 0;
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0u;
    outlined init with copy of ToolDescription(v4, v5, type metadata accessor for PromptCompletion.Aggregator);
    v9 = *v5;
    v40 = v5[1];
    v10 = v5[2];
    v11 = v5[5];
    v12 = v5[6];

    v42 = v10;

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS15TokenGeneration16PromptCompletionV10AggregatorV09CandidateI033_D174D4387BF6B304FA76AEBF3D593BFDLLV_G_AJ0J0Vs5NeverOTg504_s15e12Generation16gh3V10i15V6finishACyFAC9j10VAE0gE033_klmnopQ11BFDLLVXEfU_Tf1cn_n(v12);
    v41 = v13;

    v38 = v5[4];
    v39 = v5[3];
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5 + *(v6 + 32), v7, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
    v14 = objc_opt_self();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    *(v0 + 448) = 0;
    v16 = [v14 dataWithJSONObject:isa options:0 error:v0 + 448];

    v17 = *(v0 + 448);
    if (v16)
    {
      v18 = *(v0 + 600);
      v19 = *(v0 + 552);
      v20 = *(v0 + 536);
      v21 = *(v0 + 528);
      v22 = v17;
      v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      *(v19 + 3) = 0;
      v26 = *(v20 + 36);
      v27 = type metadata accessor for Prompt.Rendering();
      (*(*(v27 - 8) + 56))(&v19[v26], 1, 1, v27);
      *v19 = v9;
      *(v19 + 1) = v40;
      *(v19 + 2) = v42;

      *(v19 + 3) = v11;
      *(v19 + 4) = v41;
      *(v19 + 5) = v39;
      *(v19 + 6) = v38;
      *(v19 + 7) = v23;
      *(v19 + 8) = v25;
      outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v21, &v19[v26], &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
      outlined destroy of ToolType(v18, type metadata accessor for PromptCompletion.Aggregator);
      v28 = swift_task_alloc();
      *(v0 + 712) = v28;
      *v28 = v0;
      v28[1] = closure #1 in closure #2 in TokenGenerator.handleCompletePromptRequest(request:tools:);
      v29 = *(v0 + 656);
      v30 = *(v0 + 624);
      v31 = *(v0 + 552);
      v32 = *(v0 + 504);

      return TokenGenerator.nextRequest(for:invoking:previousRequest:)(v30, v31, v32, v29);
    }

    else
    {
      v37 = v17;

      _convertNSErrorToError(_:)();

      result = swift_willThrow();
      __break(1u);
    }
  }

  else
  {
    v34 = *(v0 + 656);
    v35 = *(v0 + 456);
    PromptCompletionStreamElementEnvelope.Envelope.unseal()((v0 + 136));
    outlined destroy of ToolType(v1, type metadata accessor for CompletePromptResponseElement);
    outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>((v0 + 136), v35);
    swift_beginAccess();
    PromptCompletion.Aggregator.receive(event:)(v35);
    swift_endAccess();
    outlined destroy of ToolType(v34, type metadata accessor for CompletePromptRequest);

    v36 = *(v0 + 8);

    return v36();
  }

  return result;
}

{
  v2 = *v1;
  *(*v1 + 720) = v0;

  outlined destroy of ToolType(*(v2 + 552), type metadata accessor for PromptCompletion);
  if (v0)
  {
    v3 = closure #1 in closure #2 in TokenGenerator.handleCompletePromptRequest(request:tools:);
  }

  else
  {
    v3 = closure #1 in closure #2 in TokenGenerator.handleCompletePromptRequest(request:tools:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 680);
  v2 = *(v0 + 664);
  v3 = *(v0 + 640);
  v4 = *(v0 + 624);
  v5 = *(v0 + 616);
  outlined destroy of ToolType(*(v0 + 656), type metadata accessor for CompletePromptRequest);
  outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v4, v2, &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, v5, &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
  if (v1(v5, 1, v3) == 1)
  {
    v6 = (v0 + 616);
    goto LABEL_5;
  }

  v7 = *(v0 + 680);
  v8 = *(v0 + 664);
  v9 = *(v0 + 640);
  v10 = *(v0 + 632);
  v11 = *(v0 + 648) + 48;
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 616), &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, v10, &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
  if (v7(v10, 1, v9) != 1)
  {
    *(v0 + 688) = v11 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v37 = *(v0 + 464);
    outlined init with take of ToolDescription(*(v0 + 632), *(v0 + 656), type metadata accessor for CompletePromptRequest);
    v38 = *(v0 + 464);
    if (*(v37 + 40))
    {
      outlined init with copy of PromptCompletionEvent(v38 + 16, v0 + 16);
      if (*(v0 + 40))
      {
LABEL_11:
        v39 = (v0 + 16);
        goto LABEL_19;
      }
    }

    else
    {
      v40 = *(v38 + 16);
      v41 = *(v38 + 32);
      *(v0 + 48) = *(v38 + 48);
      *(v0 + 16) = v40;
      *(v0 + 32) = v41;
      if (*(v0 + 40))
      {
        goto LABEL_11;
      }
    }

    v42 = *(v0 + 672);
    v43 = *(v0 + 656);
    v44 = *(v0 + 608);
    v45 = *(v0 + 584);
    v46 = *(v0 + 576);
    v81 = *(v0 + 488);
    v83 = *(v0 + 496);
    v47 = *(v0 + 472);
    v79 = *(v0 + 480);
    v85 = *(v0 + 464);
    v48 = MEMORY[0x1E69E7CC0];
    *v44 = MEMORY[0x1E69E7CC0];
    *(v44 + 1) = 0;
    *(v44 + 2) = 0;
    *(v44 + 3) = -1;
    *(v44 + 4) = -1;
    *(v44 + 5) = 0;
    *(v44 + 6) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration16PromptCompletionV10AggregatorV09CandidateG033_D174D4387BF6B304FA76AEBF3D593BFDLLVTt0g5Tf4g_n(v48);
    v49 = *(v45 + 32);
    v50 = type metadata accessor for Prompt.Rendering();
    (*(*(v50 - 8) + 56))(&v44[v49], 1, 1, v50);
    v51 = *(v45 + 36);
    *&v44[v51] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v48);
    outlined assign with take of PromptCompletion.Aggregator(v44, v42);
    v53 = v47[16];
    v52 = v47[17];
    __swift_project_boxed_opaque_existential_1(v47 + 13, v53);
    outlined init with copy of ToolDescription(v43, v46, type metadata accessor for CompletePromptRequest);
    swift_storeEnumTagMultiPayload();
    v54 = type metadata accessor for CompletePromptResponseElement(0);
    v55 = lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type CompletePromptResponseElement and conformance CompletePromptResponseElement, type metadata accessor for CompletePromptResponseElement, &protocol conformance descriptor for CompletePromptResponseElement);
    v56 = lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type CompletePromptResponseElement and conformance CompletePromptResponseElement, type metadata accessor for CompletePromptResponseElement, &protocol conformance descriptor for CompletePromptResponseElement);
    InferenceSessionProtocol.streamingRequest<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)(v79, v81, v83, v53, v54, v52, (v0 + 96), v55, v56);
    outlined destroy of ToolType(v46, type metadata accessor for StreamingRequest);
    v57 = *(v0 + 120);
    v58 = __swift_project_boxed_opaque_existential_1((v0 + 96), v57);
    v59 = *(v57 - 8);
    v60 = swift_task_alloc();
    (*(v59 + 16))(v60, v58, v57);
    *(v0 + 80) = swift_getAssociatedTypeWitness();
    *(v0 + 88) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    dispatch thunk of AsyncSequence.makeAsyncIterator()();

    v61 = *(v0 + 80);
    v62 = *(v0 + 464);
    if (*(v85 + 40))
    {
      __swift_destroy_boxed_opaque_existential_0((v62 + 16));
      v62 = *(v0 + 464);
      if (v61)
      {
LABEL_15:
        outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>((v0 + 56), v62 + 16);
LABEL_18:
        v39 = (v0 + 96);
LABEL_19:
        __swift_destroy_boxed_opaque_existential_0(v39);
        v65 = *(v0 + 464);
        v66 = swift_beginAccess();
        v69 = *(v65 + 40);
        if (v69)
        {
          v70 = *(v0 + 464);
          v71 = *(v70 + 48);
          __swift_mutable_project_boxed_opaque_existential_1(v70 + 16, *(v65 + 40));
          v72 = swift_task_alloc();
          *(v0 + 696) = v72;
          *v72 = v0;
          v72[1] = closure #1 in closure #2 in TokenGenerator.handleCompletePromptRequest(request:tools:);
          v66 = *(v0 + 560);
          v67 = v69;
          v68 = v71;

          return MEMORY[0x1EEE6D8C8](v66, v67, v68);
        }

LABEL_24:
        __break(1u);
        return MEMORY[0x1EEE6D8C8](v66, v67, v68);
      }
    }

    else if (v61)
    {
      goto LABEL_15;
    }

    v63 = *(v0 + 56);
    v64 = *(v0 + 72);
    *(v62 + 48) = *(v0 + 88);
    *(v62 + 16) = v63;
    *(v62 + 32) = v64;
    goto LABEL_18;
  }

  v6 = (v0 + 632);
LABEL_5:
  v12 = *(v0 + 672);
  v13 = *(v0 + 592);
  v14 = *(v0 + 584);
  v15 = *(v0 + 520);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*v6, &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
  swift_beginAccess();
  outlined init with copy of ToolDescription(v12, v13, type metadata accessor for PromptCompletion.Aggregator);
  v16 = *v13;
  v77 = v13[1];
  v17 = v13[2];
  v18 = v13[6];
  v80 = v13[5];

  v82 = v16;

  v84 = v17;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS15TokenGeneration16PromptCompletionV10AggregatorV09CandidateI033_D174D4387BF6B304FA76AEBF3D593BFDLLV_G_AJ0J0Vs5NeverOTg504_s15e12Generation16gh3V10i15V6finishACyFAC9j10VAE0gE033_klmnopQ11BFDLLVXEfU_Tf1cn_n(v18);
  v78 = v19;

  v75 = v13[4];
  v76 = v13[3];
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13 + *(v14 + 32), v15, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v20 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v0 + 440) = 0;
  v22 = [v20 dataWithJSONObject:isa options:0 error:v0 + 440];

  v23 = *(v0 + 440);
  if (!v22)
  {
    v73 = v23;

    _convertNSErrorToError(_:)();

    v66 = swift_willThrow();
    __break(1u);
    goto LABEL_24;
  }

  v24 = *(v0 + 592);
  v25 = *(v0 + 544);
  v26 = *(v0 + 536);
  v27 = *(v0 + 520);
  v74 = *(v0 + 512);
  v28 = *(v0 + 472);
  v29 = *(v0 + 456);
  v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  *(v25 + 3) = 0;
  v33 = *(v26 + 36);
  v34 = type metadata accessor for Prompt.Rendering();
  (*(*(v34 - 8) + 56))(&v25[v33], 1, 1, v34);
  *v25 = v82;
  *(v25 + 1) = v77;
  *(v25 + 2) = v84;

  *(v25 + 3) = v80;
  *(v25 + 4) = v78;
  *(v25 + 5) = v76;
  *(v25 + 6) = v75;
  *(v25 + 7) = v30;
  *(v25 + 8) = v32;
  outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v27, &v25[v33], &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  outlined destroy of ToolType(v24, type metadata accessor for PromptCompletion.Aggregator);
  specialized TokenGenerator.sendInferenceRequestTelemetry(session:request:response:streaming:)(v28, v74, v25, 1);
  outlined destroy of ToolType(v25, type metadata accessor for PromptCompletion);
  *v29 = 0u;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0;

  v35 = *(v0 + 8);

  return v35();
}

{
  v1 = *(v0 + 656);
  swift_endAccess();
  outlined destroy of ToolType(v1, type metadata accessor for CompletePromptRequest);

  v2 = *(v0 + 8);

  return v2();
}

{
  outlined destroy of ToolType(*(v0 + 656), type metadata accessor for CompletePromptRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in TokenGenerator.handleCompletePromptTemplateRequest(request:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v23 = a5;
  v11 = type metadata accessor for StreamingRequest(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[16];
  v14 = a1[17];
  __swift_project_boxed_opaque_existential_1(a1 + 13, v15);
  outlined init with copy of ToolDescription(a4, v13, type metadata accessor for CompletePromptTemplateRequest);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for CompletePromptResponseElement(0);
  v17 = lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type CompletePromptResponseElement and conformance CompletePromptResponseElement, type metadata accessor for CompletePromptResponseElement, &protocol conformance descriptor for CompletePromptResponseElement);
  v18 = lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type CompletePromptResponseElement and conformance CompletePromptResponseElement, type metadata accessor for CompletePromptResponseElement, &protocol conformance descriptor for CompletePromptResponseElement);
  InferenceSessionProtocol.streamingRequest<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)(a2, a3, v23, v15, v16, v14, v24, v17, v18);
  outlined destroy of ToolType(v13, type metadata accessor for StreamingRequest);
  v19 = v25;
  v20 = v26;
  v21 = __swift_project_boxed_opaque_existential_1(v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15TokenGeneration21PromptCompletionEvent_pMd, &_s15TokenGeneration21PromptCompletionEvent_pMR);
  a6[3] = type metadata accessor for AsyncMapSequence();
  a6[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a6);
  makeEventSequence #1 <A>(_:) in closure #1 in TokenGenerator.handleCompletePromptTemplateRequest(request:)(v21, v19, v20);
  return __swift_destroy_boxed_opaque_existential_0(v24);
}

uint64_t makeEventSequence #1 <A>(_:) in closure #1 in TokenGenerator.handleCompletePromptTemplateRequest(request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pMd, &_s15TokenGeneration21PromptCompletionEvent_pMR);
  return AsyncSequence.map<A>(_:)();
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed CompletePromptResponseElement) -> (@out PromptCompletionEvent)(uint64_t *a1)
{
  PromptCompletionStreamElementEnvelope.Envelope.unseal()(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t closure #2 in TokenGenerator.handleCompletePromptTemplateRequest(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[73] = a6;
  v6[72] = a5;
  v6[71] = a4;
  v6[70] = a3;
  v6[69] = a2;
  v6[68] = a1;
  v6[74] = type metadata accessor for OneShotRequest(0);
  v6[75] = swift_task_alloc();
  v6[76] = type metadata accessor for CompletePromptResponse(0);
  v6[77] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in TokenGenerator.handleCompletePromptTemplateRequest(request:), 0, 0);
}

uint64_t closure #1 in TokenGenerator.invoke(tooling:calls:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v1 == Prompt.ToolCall.Function.name.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for AnyTooling(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      outlined init with copy of ToolDescription(v12, v10, type metadata accessor for AnyTooling);
      v14 = a1(v10);
      if (v3)
      {
        return outlined destroy of ToolType(v10, type metadata accessor for AnyTooling);
      }

      if (v14)
      {
        break;
      }

      outlined destroy of ToolType(v10, type metadata accessor for AnyTooling);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    outlined init with take of ToolDescription(v10, v18, type metadata accessor for AnyTooling);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t closure #1 in AnyTooling.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for TokenGenerationError(0);
  v3[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolOutputVSgMd, &_s29GenerativeFunctionsFoundation10ToolOutputVSgMR);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in AnyTooling.init(_:), 0, 0);
}

uint64_t closure #1 in AnyTooling.init(_:)()
{
  v1 = v0[4];
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = closure #1 in AnyTooling.init(_:);
  v5 = v0[7];
  v6 = v0[2];
  v7 = v0[3];

  return MEMORY[0x1EEE0ACB0](v5, v6, v7, v3, v2);
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = closure #1 in AnyTooling.init(_:);
  }

  else
  {
    v2 = closure #1 in AnyTooling.init(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[7];
  v2 = type metadata accessor for ToolOutput();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s29GenerativeFunctionsFoundation10ToolOutputVSgMd, &_s29GenerativeFunctionsFoundation10ToolOutputVSgMR);
  if (v3 == 1)
  {

    v4 = v0[1];

    return v4(0, 0);
  }

  else
  {
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.generator);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1AB828000, v7, v8, "Only tools that output strings are currently supported.", v9, 2u);
      MEMORY[0x1AC5A6CD0](v9, -1, -1);
    }

    v10 = v0[6];
    v11 = v0[4];

    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    *v10 = dispatch thunk of DynamicArgumentsTooling.name.getter();
    v10[1] = v13;
    v10[2] = 0xD000000000000037;
    v10[3] = 0x80000001ABA42E90;
    v10[4] = 0;
    v10[5] = 0;
    v10[6] = 0;
    v10[7] = v12;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
    swift_allocError();
    outlined init with copy of ToolDescription(v10, v14, type metadata accessor for TokenGenerationError);
    swift_willThrow();
    outlined destroy of ToolType(v10, type metadata accessor for TokenGenerationError);

    v15 = v0[1];

    return v15();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AnyTooling.init(name:usageDescription:argumentsSchema:invoke:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  v12 = type metadata accessor for AnyTooling(0);
  v13 = *(v12 + 24);
  v14 = type metadata accessor for GenerationSchema();
  (*(*(v14 - 8) + 32))(&a8[v13], a5, v14);
  result = swift_allocObject();
  *(result + 16) = a6;
  *(result + 24) = a7;
  v16 = &a8[*(v12 + 28)];
  *v16 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@owned String, @error @owned Error);
  *(v16 + 1) = result;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@owned String, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@owned String, @error @owned Error);

  return v8(a1, a2);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@owned String, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v6 + 8);

    return v9(a1, a2);
  }
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t type metadata accessor for AnyTooling(uint64_t a1)
{
  result = type metadata singleton initialization cache for AnyTooling;
  if (!type metadata singleton initialization cache for AnyTooling)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
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

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size_0(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized _NativeDictionary.mapValues<A>(_:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v47 = a2;
  v45 = type metadata accessor for PromptTemplateInfo.RichVariableBinding();
  v4 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v35 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingH0VGMd, &_ss18_DictionaryStorageCySS15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingH0VGMR);
  result = static _DictionaryStorage.copy(original:)();
  v9 = 0;
  v46 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v36 = (v13 + 63) >> 6;
  v37 = v11;
  v44 = v4;
  v39 = v4 + 8;
  v40 = v4 + 16;
  v38 = result + 64;
  v41 = result;
  v16 = v45;
  if (v15)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v48 = (v15 - 1) & v15;
LABEL_10:
      v20 = v17 | (v9 << 6);
      v49 = 16 * v20;
      v21 = *(v46 + 56);
      v22 = (*(v46 + 48) + 16 * v20);
      v23 = v22[1];
      v50 = *v22;
      v24 = v44;
      v25 = *(v44 + 16);
      v26 = v42;
      v25(v42, v21 + *(v44 + 72) * v20, v16);
      v27 = v43;
      v25(v43, v26, v16);

      v28 = PromptTemplateInfo.RichVariableBinding.components.getter();
      v29 = v51;
      v51 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentVG_0dE00ghI8Envelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0jklN0V0mN0Vs5NeverOTg504_s15d12Generation26ghi11Envelope33_opqrstuvw6LLV019jklu69V7sealing7xpcDataAF0aB4Core0cdE0V0pqR0V_3XPC13XPCDictionaryVztcfcAF09mU12VAM0Y0VXEfU_3XPC13XPCDictionaryVTf1cn_n(v28, v47);

      v30 = *(v24 + 8);
      v30(v27, v16);
      v30(v26, v16);
      *(v38 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = v41;
      v31 = (*(v41 + 48) + v49);
      *v31 = v50;
      v31[1] = v23;
      *(*(result + 56) + 8 * v20) = v51;
      v32 = *(result + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        break;
      }

      *(result + 16) = v34;
      v51 = v29;
      v15 = v48;
      if (!v48)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v36)
      {
        return result;
      }

      v19 = *(v37 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v48 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

double outlined copy of RequestMetadata?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }

  return result;
}

uint64_t partial apply for closure #1 in TokenGenerator.prewarm(usesGuidedGeneration:urgency:promptPrefix:)(uint64_t a1)
{
  v4 = *(type metadata accessor for PromptVariant() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in TokenGenerator.prewarm(usesGuidedGeneration:urgency:promptPrefix:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t partial apply for closure #3 in TokenGenerator.register(documents:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #3 in TokenGenerator.register(documents:)(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@owned String, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@owned String, @error @owned Error)(a1, a2, v6);
}

void type metadata completion function for AnyTooling(uint64_t a1)
{
  type metadata accessor for GenerationSchema();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (())?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC15TokenGeneration16ModelCatalogStubV8AssetKeyV_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15TokenGeneration16ModelCatalogStubV8AssetKeyVGMd, &_ss11_SetStorageCy15TokenGeneration16ModelCatalogStubV8AssetKeyVGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t partial apply for closure #1 in TokenGenerator.handleCompletePromptTemplateRequest(request:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for CompletePromptTemplateRequest(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in TokenGenerator.handleCompletePromptTemplateRequest(request:)(v5, v6, v7, v1 + v4, v8, a1);
}

uint64_t objectdestroy_70Tm()
{
  v1 = type metadata accessor for CompletePromptTemplateRequest(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  v6 = type metadata accessor for XPCDictionary();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  if (*(v0 + v3 + v1[5] + 8))
  {
  }

  v7 = v1[6];
  v8 = type metadata accessor for PromptVariantEnvelope(0);
  if (!(*(*(v8 - 8) + 48))(v5 + v7, 1, v8))
  {
    v9 = type metadata accessor for OverridableConfigurationStorage();
    (*(*(v9 - 8) + 8))(v5 + v7, v9);
  }

  v10 = v5 + v1[7];

  v11 = *(type metadata accessor for PromptTemplateInfoEnvelope(0) + 24);
  v12 = type metadata accessor for Locale();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v10 + v11, 1, v12))
  {
    (*(v13 + 8))(v10 + v11, v12);
  }

  if (*(v5 + v1[10] + 8) >= 4uLL)
  {
  }

  v14 = v5 + v1[12];
  v15 = type metadata accessor for Constraints(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v17 = type metadata accessor for GenerationSchema();
        (*(*(v17 - 8) + 8))(v14, v17);
        goto LABEL_18;
      }

      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_18;
      }
    }

    else if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 4)
    {
      goto LABEL_18;
    }
  }

LABEL_18:

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t partial apply for closure #2 in TokenGenerator.handleCompletePromptTemplateRequest(request:)(uint64_t a1)
{
  v4 = *(type metadata accessor for CompletePromptTemplateRequest(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #2 in TokenGenerator.handleCompletePromptTemplateRequest(request:)(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t outlined init with take of ToolDescription(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in TokenGenerator.handleCompletePromptRequest(request:tools:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CompletePromptRequest(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v7);
  v11 = *(v1 + v8);
  v12 = *(v1 + v8 + 8);
  v13 = *(v1 + v9);
  v14 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in TokenGenerator.handleCompletePromptRequest(request:tools:)(a1, v1 + v6, v10, v11, v12, v13, v14);
}

uint64_t objectdestroy_97Tm()
{
  v1 = type metadata accessor for CompletePromptRequest(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = type metadata accessor for XPCDictionary();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v1[6];
  type metadata accessor for PromptVariantEnvelope(0);
  v7 = type metadata accessor for OverridableConfigurationStorage();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  v8 = v0 + v3 + v1[8];
  v9 = type metadata accessor for Constraints(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v11 = type metadata accessor for GenerationSchema();
        (*(*(v11 - 8) + 8))(v8, v11);
        goto LABEL_10;
      }

      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_10;
      }
    }

    else if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 4)
    {
      goto LABEL_10;
    }
  }

LABEL_10:

  if (*(v0 + v3 + v1[10] + 8) >= 4uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #2 in TokenGenerator.handleCompletePromptRequest(request:tools:)(uint64_t a1)
{
  type metadata accessor for CompletePromptRequest(0);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #2 in TokenGenerator.handleCompletePromptRequest(request:tools:)(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t outlined init with copy of ToolDescription(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t specialized TokenGenerator.invoke(tooling:calls:)(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = type metadata accessor for Prompt.ToolCallResult();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for TokenGenerationError(0);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for AnyTooling(0);
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v5 = type metadata accessor for Prompt.ToolCall.Function();
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  v6 = type metadata accessor for Prompt.ToolCall.Kind();
  v2[23] = v6;
  v2[24] = *(v6 - 8);
  v2[25] = swift_task_alloc();
  v7 = type metadata accessor for Prompt.ToolCall();
  v2[26] = v7;
  v2[27] = *(v7 - 8);
  v2[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized TokenGenerator.invoke(tooling:calls:), 0, 0);
}

{
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v5[37] = v2;

  if (v2)
  {
    v6 = specialized TokenGenerator.invoke(tooling:calls:);
  }

  else
  {
    v5[38] = a2;
    v6 = specialized TokenGenerator.invoke(tooling:calls:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void specialized TokenGenerator.invoke(tooling:calls:)()
{
  v69 = v0;
  v1 = *(*(v0 + 56) + 16);
  *(v0 + 232) = v1;
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    *(v0 + 312) = *MEMORY[0x1E69DA808];
    *(v0 + 240) = v2;
    while (1)
    {
      *(v0 + 248) = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return;
      }

      v5 = *(v0 + 312);
      v6 = *(v0 + 200);
      v8 = *(v0 + 184);
      v7 = *(v0 + 192);
      (*(*(v0 + 216) + 16))(*(v0 + 224), *(v0 + 56) + ((*(*(v0 + 216) + 80) + 32) & ~*(*(v0 + 216) + 80)) + *(*(v0 + 216) + 72) * v3, *(v0 + 208));
      Prompt.ToolCall.kind.getter();
      if ((*(v7 + 88))(v6, v8) != v5)
      {
        break;
      }

      v9 = *(v0 + 200);
      v10 = *(v0 + 176);
      v12 = *(v0 + 160);
      v11 = *(v0 + 168);
      v14 = *(v0 + 120);
      v13 = *(v0 + 128);
      v15 = *(v0 + 112);
      v16 = *(v0 + 48);
      (*(*(v0 + 192) + 96))(v9, *(v0 + 184));
      (*(v11 + 32))(v10, v9, v12);
      *(swift_task_alloc() + 16) = v10;
      specialized Sequence.first(where:)(partial apply for closure #1 in TokenGenerator.invoke(tooling:calls:), v16, v15);

      if ((*(v13 + 48))(v15, 1, v14) == 1)
      {
        v48 = *(v0 + 104);
        v49 = *(v0 + 112);

        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v49, &_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
        v67 = 0;
        v68 = 0xE000000000000000;
        _StringGuts.grow(_:)(57);
        MEMORY[0x1AC5A5BC0](0xD000000000000017, 0x80000001ABA42DE0);
        v50 = Prompt.ToolCall.Function.name.getter();
        MEMORY[0x1AC5A5BC0](v50);

        MEMORY[0x1AC5A5BC0](0xD000000000000020, 0x80000001ABA42E00);
        v51 = v67;
        v52 = v68;
        v53 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        *v48 = Prompt.ToolCall.Function.name.getter();
        v48[1] = v54;
        v48[2] = v51;
        v48[3] = v52;
        v48[4] = 0;
        v48[5] = 0;
        v48[6] = 0;
        v48[7] = v53;
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
        swift_allocError();
        outlined init with copy of ToolDescription(v48, v55, type metadata accessor for TokenGenerationError);
        swift_willThrow();
        outlined destroy of ToolType(v48, type metadata accessor for TokenGenerationError);
        v56 = *(v0 + 168);
        v57 = *(v0 + 176);
        v58 = *(v0 + 160);
        (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
        (*(v56 + 8))(v57, v58);

        v59 = *(v0 + 8);

        v59();
        return;
      }

      outlined init with take of ToolDescription(*(v0 + 112), *(v0 + 152), type metadata accessor for AnyTooling);
      if (one-time initialization token for generator != -1)
      {
        swift_once();
      }

      v18 = *(v0 + 144);
      v17 = *(v0 + 152);
      v19 = type metadata accessor for Logger();
      *(v0 + 256) = __swift_project_value_buffer(v19, static Log.generator);
      outlined init with copy of ToolDescription(v17, v18, type metadata accessor for AnyTooling);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();
      v22 = os_log_type_enabled(v20, v21);
      v23 = *(v0 + 144);
      if (v22)
      {
        v24 = *(v0 + 136);
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v67 = v26;
        *v25 = 136315138;
        outlined init with copy of ToolDescription(v23, v24, type metadata accessor for AnyTooling);
        v27 = String.init<A>(describing:)();
        v29 = v28;
        outlined destroy of ToolType(v23, type metadata accessor for AnyTooling);
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v67);

        *(v25 + 4) = v30;
        _os_log_impl(&dword_1AB828000, v20, v21, "Invoking tool: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x1AC5A6CD0](v26, -1, -1);
        MEMORY[0x1AC5A6CD0](v25, -1, -1);
      }

      else
      {

        outlined destroy of ToolType(v23, type metadata accessor for AnyTooling);
      }

      v31 = *(v0 + 152);
      v32 = *(v0 + 120);
      v33 = Prompt.ToolCall.Function.arguments.getter();
      *(v0 + 264) = v34;
      v35 = (v31 + *(v32 + 28));
      v36 = *v35;
      *(v0 + 272) = *v35;
      *(v0 + 280) = v35[1];
      if (v36)
      {
        v60 = v33;
        v61 = v34;

        v66 = (v36 + *v36);
        v62 = swift_task_alloc();
        *(v0 + 288) = v62;
        *v62 = v0;
        v62[1] = specialized TokenGenerator.invoke(tooling:calls:);

        v66(v60, v61);
        return;
      }

      v64 = v4;

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1AB828000, v37, v38, "Tool returned no response. Skipping response for this tool.", v39, 2u);
        MEMORY[0x1AC5A6CD0](v39, -1, -1);
      }

      v65 = *(v0 + 248);
      v40 = *(v0 + 224);
      v41 = *(v0 + 232);
      v43 = *(v0 + 208);
      v42 = *(v0 + 216);
      v44 = *(v0 + 168);
      v45 = *(v0 + 176);
      v47 = *(v0 + 152);
      v46 = *(v0 + 160);

      outlined destroy of ToolType(v47, type metadata accessor for AnyTooling);
      (*(v42 + 8))(v40, v43);
      (*(v44 + 8))(v45, v46);
      if (v65 == v41)
      {
        v2 = *(v0 + 240);
        goto LABEL_27;
      }

      v3 = *(v0 + 248);
      v4 = v64;
      if (v3 >= *(v0 + 232))
      {
        goto LABEL_31;
      }
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
  }

  else
  {
LABEL_27:

    v63 = *(v0 + 8);

    v63(v2);
  }
}

uint64_t specialized TokenGenerator.invoke(tooling:calls:)()
{
  v1 = v0[37];
  outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@owned String?, @error @owned Error))?(v0[34], v0[35]);

  MEMORY[0x1AC5A6AE0](v1);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[37];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    MEMORY[0x1AC5A6AE0](v4);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_1AB828000, v2, v3, "Encountered failure while invoking function: %@", v5, 0xCu);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1AC5A6CD0](v6, -1, -1);
    MEMORY[0x1AC5A6CD0](v5, -1, -1);
  }

  v8 = v0[37];
  v9 = v0[19];
  v10 = v0[13];

  MEMORY[0x1AC5A6AE0](v8);
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *v10 = Prompt.ToolCall.Function.name.getter();
  v10[1] = v12;
  v10[2] = 0xD00000000000002BLL;
  v10[3] = 0x80000001ABA42E30;
  v10[4] = v8;
  v10[5] = 0;
  v10[6] = 0;
  v10[7] = v11;
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
  swift_allocError();
  outlined init with copy of ToolDescription(v10, v13, type metadata accessor for TokenGenerationError);
  swift_willThrow();

  outlined destroy of ToolType(v10, type metadata accessor for TokenGenerationError);
  outlined destroy of ToolType(v9, type metadata accessor for AnyTooling);
  v14 = v0[21];
  v15 = v0[22];
  v16 = v0[20];
  (*(v0[27] + 8))(v0[28], v0[26]);
  (*(v14 + 8))(v15, v16);

  v17 = v0[1];

  return v17();
}

{
  v91 = v0;
  v1 = *(v0 + 304);
  outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@owned String?, @error @owned Error))?(*(v0 + 272), *(v0 + 280));

  if (!v1)
  {
    v19 = *(v0 + 296);
    goto LABEL_11;
  }

  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  Prompt.ToolCall.id.getter();
  Prompt.ToolCallResult.init(toolCallID:content:)();
  (*(v5 + 16))(v3, v2, v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + 240);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV14ToolCallResultVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV14ToolCallResultVGMR, MEMORY[0x1E69DA720]);
  }

  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV14ToolCallResultVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV14ToolCallResultVGMR, MEMORY[0x1E69DA720]);
  }

  else
  {
    v86 = v7;
  }

  v10 = *(v0 + 224);
  v83 = *(v0 + 232);
  v84 = *(v0 + 248);
  v11 = *(v0 + 208);
  v12 = *(v0 + 216);
  v13 = *(v0 + 168);
  v14 = *(v0 + 152);
  v81 = *(v0 + 160);
  v82 = *(v0 + 176);
  v15 = *(v0 + 80);
  v17 = *(v0 + 64);
  v16 = *(v0 + 72);
  (*(v16 + 8))(*(v0 + 88), v17);
  outlined destroy of ToolType(v14, type metadata accessor for AnyTooling);
  (*(v12 + 8))(v10, v11);
  v86[2] = v9 + 1;
  (*(v16 + 32))(v86 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v9, v15, v17);
  (*(v13 + 8))(v82, v81);
  if (v84 != v83)
  {
    v19 = *(v0 + 296);
    v20 = *(v0 + 248);
    *(v0 + 240) = v86;
    while (v20 < *(v0 + 232))
    {
      *(v0 + 248) = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_39;
      }

      v32 = *(v0 + 312);
      v33 = *(v0 + 200);
      v34 = *(v0 + 184);
      v35 = *(v0 + 192);
      (*(*(v0 + 216) + 16))(*(v0 + 224), *(v0 + 56) + ((*(*(v0 + 216) + 80) + 32) & ~*(*(v0 + 216) + 80)) + *(*(v0 + 216) + 72) * v20, *(v0 + 208));
      Prompt.ToolCall.kind.getter();
      if ((*(v35 + 88))(v33, v34) != v32)
      {

        return _diagnoseUnexpectedEnumCase<A>(type:)();
      }

      v36 = *(v0 + 200);
      v37 = *(v0 + 176);
      v38 = *(v0 + 160);
      v39 = *(v0 + 168);
      v40 = *(v0 + 120);
      v41 = *(v0 + 128);
      v42 = *(v0 + 112);
      v43 = *(v0 + 48);
      (*(*(v0 + 192) + 96))(v36, *(v0 + 184));
      (*(v39 + 32))(v37, v36, v38);
      *(swift_task_alloc() + 16) = v37;
      specialized Sequence.first(where:)(partial apply for closure #1 in TokenGenerator.invoke(tooling:calls:), v43, v42);

      if ((*(v41 + 48))(v42, 1, v40) == 1)
      {
        v66 = *(v0 + 104);
        v67 = *(v0 + 112);

        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v67, &_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
        v89 = 0;
        v90 = 0xE000000000000000;
        _StringGuts.grow(_:)(57);
        MEMORY[0x1AC5A5BC0](0xD000000000000017, 0x80000001ABA42DE0);
        v68 = Prompt.ToolCall.Function.name.getter();
        MEMORY[0x1AC5A5BC0](v68);

        MEMORY[0x1AC5A5BC0](0xD000000000000020, 0x80000001ABA42E00);
        v69 = v89;
        v70 = v90;
        v71 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        *v66 = Prompt.ToolCall.Function.name.getter();
        v66[1] = v72;
        v66[2] = v69;
        v66[3] = v70;
        v66[4] = 0;
        v66[5] = 0;
        v66[6] = 0;
        v66[7] = v71;
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
        swift_allocError();
        outlined init with copy of ToolDescription(v66, v73, type metadata accessor for TokenGenerationError);
        swift_willThrow();
        outlined destroy of ToolType(v66, type metadata accessor for TokenGenerationError);
        v74 = *(v0 + 168);
        v75 = *(v0 + 176);
        v76 = *(v0 + 160);
        (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
        (*(v74 + 8))(v75, v76);

        v77 = *(v0 + 8);

        return v77();
      }

      outlined init with take of ToolDescription(*(v0 + 112), *(v0 + 152), type metadata accessor for AnyTooling);
      if (one-time initialization token for generator != -1)
      {
        goto LABEL_40;
      }

LABEL_20:
      v44 = *(v0 + 144);
      v45 = *(v0 + 152);
      v46 = type metadata accessor for Logger();
      *(v0 + 256) = __swift_project_value_buffer(v46, static Log.generator);
      outlined init with copy of ToolDescription(v45, v44, type metadata accessor for AnyTooling);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.info.getter();
      v49 = os_log_type_enabled(v47, v48);
      v50 = *(v0 + 144);
      if (v49)
      {
        v51 = *(v0 + 136);
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v89 = v53;
        *v52 = 136315138;
        outlined init with copy of ToolDescription(v50, v51, type metadata accessor for AnyTooling);
        v54 = String.init<A>(describing:)();
        v56 = v55;
        outlined destroy of ToolType(v50, type metadata accessor for AnyTooling);
        v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, &v89);

        *(v52 + 4) = v57;
        _os_log_impl(&dword_1AB828000, v47, v48, "Invoking tool: %s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v53);
        MEMORY[0x1AC5A6CD0](v53, -1, -1);
        MEMORY[0x1AC5A6CD0](v52, -1, -1);
      }

      else
      {

        outlined destroy of ToolType(v50, type metadata accessor for AnyTooling);
      }

      v58 = *(v0 + 152);
      v59 = *(v0 + 120);
      v60 = Prompt.ToolCall.Function.arguments.getter();
      *(v0 + 264) = v61;
      v62 = (v58 + *(v59 + 28));
      v63 = *v62;
      *(v0 + 272) = *v62;
      *(v0 + 280) = v62[1];
      if (v63)
      {
        v78 = v60;
        v79 = v61;

        v88 = (v63 + *v63);
        v80 = swift_task_alloc();
        *(v0 + 288) = v80;
        *v80 = v0;
        v80[1] = specialized TokenGenerator.invoke(tooling:calls:);

        return v88(v78, v79);
      }

LABEL_11:
      v85 = v19;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1AB828000, v21, v22, "Tool returned no response. Skipping response for this tool.", v23, 2u);
        MEMORY[0x1AC5A6CD0](v23, -1, -1);
      }

      v87 = *(v0 + 248);
      v24 = *(v0 + 224);
      v25 = *(v0 + 232);
      v26 = *(v0 + 208);
      v27 = *(v0 + 216);
      v28 = *(v0 + 168);
      v29 = *(v0 + 176);
      v31 = *(v0 + 152);
      v30 = *(v0 + 160);

      outlined destroy of ToolType(v31, type metadata accessor for AnyTooling);
      (*(v27 + 8))(v24, v26);
      (*(v28 + 8))(v29, v30);
      if (v87 == v25)
      {
        v18 = *(v0 + 240);
        goto LABEL_26;
      }

      v20 = *(v0 + 248);
      v19 = v85;
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
    goto LABEL_20;
  }

  v18 = v86;
LABEL_26:

  v64 = *(v0 + 8);

  return v64(v18);
}

uint64_t outlined assign with take of PromptCompletion.Aggregator(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptCompletion.Aggregator(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ToolType(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@owned String?, @error @owned Error))?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t partial apply for closure #1 in AnyTooling.init(_:)(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in static TokenGenerator.scrubIfNeeded(inputPrompt:stringRenderedPromptSanitizerWithConfiguration:);

  return closure #1 in AnyTooling.init(_:)(a1, a2, v2 + 16);
}

id _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy15TokenGeneration0D9GeneratorC9Dimension33_A936FA3DA371934822B1D42BF6B4011ALLOSo8NSObjectCG_SS_AMts5NeverOTg504_s15d13Generation0A9f14C9Dimension33_hijklmn7ALLOSo8o36CSSAHIgygoo_AF3key_AH5valuetSS_AHts5p20OIegnrzr_TR04_s15a13r134A9c120C29sendInferenceRequestTelemetry7session7request8response9streamingyAC_AA014CompletePromptF0VAA0M10CompletionVSbtFSS_So8l17CtAC9U34_efghijK14ALLO_ANtXEfU1_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v38 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v4 = a1;
  v5 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v2 = v38;
  v7 = result;
  v8 = 0;
  v9 = *(a1 + 36);
  v32 = a1 + 72;
  v33 = v1;
  v34 = a1 + 64;
  v35 = v9;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_43;
    }

    if (v9 != *(v4 + 36))
    {
      goto LABEL_44;
    }

    v12 = *(*(v4 + 48) + v7);
    v36 = v8;
    if (v12 <= 4)
    {
      if (*(*(v4 + 48) + v7) <= 1u)
      {
        if (*(*(v4 + 48) + v7))
        {
          v37 = 0x64416D6F74737543;
          v13 = 0xED00007265747061;
        }

        else
        {
          v37 = 0xD000000000000015;
          v13 = 0x80000001ABA3F450;
        }

        goto LABEL_30;
      }

      if (v12 == 2)
      {
        v37 = 0xD000000000000011;
        v13 = 0x80000001ABA3F480;
        goto LABEL_30;
      }

      if (v12 == 3)
      {
        v37 = 0x65736E6F70736552;
        v13 = 0xEE0074616D726F46;
        goto LABEL_30;
      }

      v14 = 1819242324;
      goto LABEL_25;
    }

    if (*(*(v4 + 48) + v7) <= 6u)
    {
      if (v12 == 5)
      {
        v14 = 1852994900;
LABEL_25:
        v37 = v14 | 0x6E756F4300000000;
        v13 = 0xE900000000000074;
        goto LABEL_30;
      }

      v37 = 0x65736E6F70736552;
      v15 = 1701869908;
    }

    else
    {
      if (v12 != 7)
      {
        if (v12 == 8)
        {
          v37 = 0xD000000000000014;
          v13 = 0x80000001ABA3F4D0;
        }

        else
        {
          v37 = 0xD000000000000013;
          v13 = 0x80000001ABA3F4F0;
        }

        goto LABEL_30;
      }

      v37 = 0x654C74706D6F7250;
      v15 = 1752459118;
    }

    v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
LABEL_30:
    v16 = *(*(v4 + 56) + 8 * v7);
    v39 = v2;
    v17 = v4;
    v18 = *(v2 + 16);
    v19 = *(v2 + 24);
    v20 = v2;
    result = v16;
    v2 = v20;
    if (v18 >= v19 >> 1)
    {
      v31 = result;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v18 + 1, 1);
      result = v31;
      v2 = v39;
    }

    *(v2 + 16) = v18 + 1;
    v21 = (v2 + 24 * v18);
    v21[4] = v37;
    v21[5] = v13;
    v21[6] = result;
    v10 = 1 << *(v17 + 32);
    v9 = v35;
    if (v7 >= v10)
    {
      goto LABEL_45;
    }

    v5 = v34;
    v22 = *(v34 + 8 * v11);
    if ((v22 & (1 << v7)) == 0)
    {
      goto LABEL_46;
    }

    v4 = v17;
    if (v35 != *(v17 + 36))
    {
      goto LABEL_47;
    }

    v23 = v22 & (-2 << (v7 & 0x3F));
    if (v23)
    {
      v10 = __clz(__rbit64(v23)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v11 << 6;
      v25 = v11 + 1;
      v26 = (v32 + 8 * v11);
      while (v25 < (v10 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          v29 = v2;
          result = outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v7, v35, 0);
          v2 = v29;
          v10 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      v30 = v2;
      result = outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v7, v35, 0);
      v2 = v30;
    }

LABEL_4:
    v8 = v36 + 1;
    v7 = v10;
    if (v36 + 1 == v33)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

unint64_t TokenGenerator.Dimension.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0x654C74706D6F7250;
    v5 = 0xD000000000000013;
    if (a1 == 8)
    {
      v5 = 0xD000000000000014;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 0x6E756F436E727554;
    if (a1 != 5)
    {
      v6 = 0x65736E6F70736552;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x64416D6F74737543;
    v2 = 0x65736E6F70736552;
    if (a1 != 3)
    {
      v2 = 0x6E756F436C6F6F54;
    }

    if (a1 == 2)
    {
      v2 = 0xD000000000000011;
    }

    if (!a1)
    {
      v1 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TokenGenerator.Dimension(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = TokenGenerator.Dimension.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == TokenGenerator.Dimension.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TokenGenerator.Dimension()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  TokenGenerator.Dimension.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TokenGenerator.Dimension(uint64_t a1)
{
  TokenGenerator.Dimension.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TokenGenerator.Dimension(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  TokenGenerator.Dimension.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TokenGenerator.Dimension@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TokenGenerator.Dimension.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance TokenGenerator.Dimension@<X0>(unint64_t *a1@<X8>)
{
  result = TokenGenerator.Dimension.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, char a2, void *a3)
{
  v38 = a1[2];
  if (!v38)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, v5 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v11;
  specialized _NativeDictionary.copy()();
  v11 = v20;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    MEMORY[0x1AC5A6AE0](v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + 8 * v11) = v10;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    MEMORY[0x1AC5A5BC0](0xD00000000000001BLL, 0x80000001ABA41680);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1AC5A5BC0](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v38 != 1)
  {
    v5 = (a1 + 9);
    v25 = 1;
    while (v25 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v26 = *v5;
      v27 = *a3;

      v10 = v26;
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v15 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v29;
      if (v27[3] < v32)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, 1);
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
        if ((v17 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v35 = (v34[6] + 16 * v28);
      *v35 = v7;
      v35[1] = v6;
      *(v34[7] + 8 * v28) = v10;
      v36 = v34[2];
      v15 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v25;
      v34[2] = v37;
      v5 += 3;
      if (v38 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void specialized TokenGenerator.sendInferenceRequestTelemetry(session:request:response:streaming:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v196) = a4;
  v197 = a3;
  v170 = type metadata accessor for Prompt.AttachmentContent();
  v155[0] = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v176 = v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for Prompt.Attachment();
  v174 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v173 = v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v155 - v9;
  v191 = type metadata accessor for PromptCompletion.Content(0);
  MEMORY[0x1EEE9AC00](v191);
  v190 = v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for Prompt.ToolCall.Function();
  v193 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v200 = v155 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for Prompt.ToolCall.Kind();
  v195 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v14 = (v155 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for PromptCompletion.Segment(0);
  v171 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v188 = v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for Prompt.ToolCall();
  v204 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175 - 8);
  v199 = v155 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v159 = v155 - v19;
  v169 = type metadata accessor for Prompt();
  v167 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v157 = v155 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v155 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v198 = v155 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = v155 - v27;
  v29 = type metadata accessor for ModelBundle();
  v30 = *(v29 - 8);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = v155 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = MEMORY[0x1E69E7CC8];
  if (a1[3])
  {
    v35 = a1[4];
    if (*(v35 + 16) && ((v194 = v28, v192 = a1, v36 = v31, (*(v30 + 16))(v34, v35 + ((*(v30 + 80) + 32) & ~*(v30 + 80)), v31, v32), v37 = a2, (ModelBundle.isFileBased.getter() & 1) == 0) ? (v39 = URL.absoluteString.getter(), v38 = v40) : (v38 = 0x80000001ABA42F90, v39 = 0xD000000000000030), v41 = MEMORY[0x1AC5A5AE0](v39, v38), , v42 = v207, isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(), v206 = v42, specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v41, 0, isUniquelyReferenced_nonNull_native), v44 = v206, ModelBundle.isFileBased.getter(), isa = Bool._bridgeToObjectiveC()().super.super.isa, v46 = swift_isUniquelyReferenced_nonNull_native(), v206 = v44, specialized _NativeDictionary.setValue(_:forKey:isUnique:)(isa, 1, v46), v207 = v206, (*(v30 + 8))(v34, v36), a1 = v192, a2 = v37, v28 = v194, !v192[3]))
    {
      v50 = 0;
    }

    else
    {
      v49 = a1 + 6;
      v47 = a1[6];
      v48 = v49[1];

      v50 = MEMORY[0x1AC5A5AE0](v47, v48);
    }

    specialized Dictionary.subscript.setter(v50, 2);
  }

  v51 = type metadata accessor for CompletePromptRequest(0);
  outlined init with copy of Constraints?(a2 + *(v51 + 32), v28);
  v52 = type metadata accessor for Constraints(0);
  v53 = (*(*(v52 - 8) + 48))(v28, 1, v52);
  v172 = v10;
  v205 = v23;
  if (v53 == 1)
  {
    type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
    v54 = NSString.init(stringLiteral:)();
    v55 = v180;
    goto LABEL_17;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v55 = v180;
    if (!EnumCaseMultiPayload)
    {
      type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
      v54 = NSString.init(stringLiteral:)();
      outlined destroy of Constraints(v28, type metadata accessor for Constraints);
      goto LABEL_17;
    }
  }

  else
  {
    v55 = v180;
  }

  outlined destroy of Constraints(v28, type metadata accessor for Constraints);
  type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v54 = NSString.init(stringLiteral:)();
LABEL_17:
  v57 = v207;
  v58 = swift_isUniquelyReferenced_nonNull_native();
  v206 = v57;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v54, 3, v58);
  v59 = v206;
  CompletePromptRequest.tools.getter();

  v60 = a2;
  v61 = Int._bridgeToObjectiveC()().super.super.isa;
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v206 = v59;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v61, 4, v62);
  v207 = v206;
  v63 = (v60 + *(v51 + 20));
  v65 = v63[1];
  v166 = *v63;
  v64 = v166;
  v165 = v65;
  v67 = v63[2];
  v66 = v63[3];
  v164 = v67;
  v168 = v66;
  v68 = type metadata accessor for XPCDictionary();
  v69 = *(v68 - 8);
  v70 = *(v69 + 16);
  v158 = v69 + 16;
  v163 = v70;
  v71 = v159;
  v70(v159, v60, v68);
  v162 = *(v69 + 56);
  v162(v71, 0, 1, v68);
  v72 = v198;
  PromptEnvelope.unseal(_:)(v71, v64, v65, v67, v168, v198);
  outlined destroy of XPCDictionary?(v71);
  Prompt.turns()();
  v73 = v167 + 8;
  v161 = *(v167 + 8);
  v160 = v60;
  v161(v72, v169);

  v74 = Int._bridgeToObjectiveC()().super.super.isa;
  v75 = v207;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v206 = v75;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v74, 5, v76);
  v207 = v206;
  v163(v71, v60, v68);
  v162(v71, 0, 1, v68);
  PromptEnvelope.unseal(_:)(v71, v166, v165, v164, v168, v72);
  outlined destroy of XPCDictionary?(v71);
  Prompt.string.getter();
  v161(v72, v169);
  v77 = String.count.getter();

  v163(v71, v160, v68);
  v156 = v68;
  v155[1] = v69 + 56;
  v162(v71, 0, 1, v68);
  v78 = v205;
  PromptEnvelope.unseal(_:)(v71, v166, v165, v164, v168, v205);
  outlined destroy of XPCDictionary?(v71);
  v79 = Prompt.delimiters.getter();
  v167 = v73;
  v161(v78, v169);
  v80 = *(v79 + 16);

  if (__OFADD__(v77, v80))
  {
LABEL_68:
    __break(1u);
LABEL_69:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v81 = Int._bridgeToObjectiveC()().super.super.isa;
    v82 = v207;
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v206 = v82;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v81, 7, v83);
    v207 = v206;
    type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
    v84 = NSString.init(stringLiteral:)();
    v85 = v207;
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v206 = v85;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v84, 6, v86);
    v87 = 0;
    v88 = 0;
    v207 = v206;
    v89 = *(v197 + 32);
    v179 = *(v89 + 16);
    v178 = v89;
    v177 = v89 + 32;
    v198 = v204 + 16;
    v197 = v195 + 88;
    v196 = (v195 + 96);
    LODWORD(v195) = *MEMORY[0x1E69DA808];
    v90 = v193++;
    v194 = (v90 + 4);
    v192 = (v204 + 8);
    v91 = v190;
    v92 = v175;
    v202 = v14;
    while (v87 != v179)
    {
      if (v87 >= *(v178 + 16))
      {
        goto LABEL_64;
      }

      v187 = v88;
      v94 = (v177 + 56 * v87);
      v95 = *v94;
      v96 = v94[1];
      v98 = v94[4];
      v97 = v94[5];
      v99 = v94[6];
      v185 = v87 + 1;
      v100 = v94[2];
      v101 = v94[3];
      v205 = *(v96 + 16);
      v186 = v100;

      v181 = v101;
      v182 = v98;
      outlined copy of FinishReason(v101, v98);
      v184 = v97;
      v183 = v99;
      outlined copy of Data._Representation(v97, v99);
      v189 = v95;

      v102 = 0;
      v103 = 0;
      while (v205 != v102)
      {
        v105 = v202;
        v104 = v203;
        if (v102 >= *(v96 + 16))
        {
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v106 = v199;
        (*(v204 + 16))(v199, v96 + ((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * v102, v92);
        v107 = v92;
        Prompt.ToolCall.kind.getter();
        v108 = (*v197)(v105, v104);
        if (v108 != v195)
        {
          goto LABEL_69;
        }

        ++v102;
        (*v196)(v105, v104);
        v109 = v200;
        v110 = v201;
        (*v194)(v200, v105, v201);
        Prompt.ToolCall.Function.name.getter();
        v111 = String.count.getter();

        (*v193)(v109, v110);
        (*v192)(v106, v107);
        v112 = __OFADD__(v103, v111);
        v103 += v111;
        v92 = v107;
        if (v112)
        {
          goto LABEL_58;
        }
      }

      v113 = v187 + v103;
      if (__OFADD__(v187, v103))
      {
        goto LABEL_65;
      }

      v114 = v189;
      v115 = *(v189 + 16);
      if (v115)
      {
        v116 = 0;
        v117 = v189 + ((*(v171 + 80) + 32) & ~*(v171 + 80));
        v118 = *(v171 + 72);
        v205 = (v115 - 1);
        v119 = v188;
        do
        {
          _s15TokenGeneration16PromptCompletionV7SegmentVWOcTm_0(v117, v119, type metadata accessor for PromptCompletion.Segment);
          _s15TokenGeneration16PromptCompletionV7SegmentVWOcTm_0(v119, v91, type metadata accessor for PromptCompletion.Content);
          if (swift_getEnumCaseMultiPayload())
          {
            outlined destroy of Constraints(v119, type metadata accessor for PromptCompletion.Segment);
            outlined destroy of Constraints(v91, type metadata accessor for PromptCompletion.Content);
            if (v205 == v116)
            {

              v93 = 0;
LABEL_39:
              v92 = v175;
              goto LABEL_20;
            }
          }

          else
          {
            v120 = *(v91 + 24);
            v121 = *(v190 + 4);
            v93 = String.count.getter();

            v119 = v188;

            v122 = v120;
            v123 = v121;
            v114 = v189;
            v91 = v190;
            outlined consume of Data?(v122, v123);
            outlined destroy of Constraints(v119, type metadata accessor for PromptCompletion.Segment);
            if (v205 == v116)
            {

              goto LABEL_39;
            }
          }

          ++v116;
          v117 += v118;
        }

        while (v116 < *(v114 + 16));
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v93 = 0;
LABEL_20:

      outlined consume of FinishReason(v181, v182);
      outlined consume of Data._Representation(v184, v183);

      v88 = v113 + v93;
      v55 = v180;
      v87 = v185;
      if (__OFADD__(v113, v93))
      {
        goto LABEL_66;
      }
    }

    v124 = Int._bridgeToObjectiveC()().super.super.isa;
    v125 = v207;
    v126 = swift_isUniquelyReferenced_nonNull_native();
    v206 = v125;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v124, 8, v126);
    v207 = v206;
    v127 = v159;
    v128 = v156;
    v163(v159, v160, v156);
    v162(v127, 0, 1, v128);
    v129 = v157;
    PromptEnvelope.unseal(_:)(v127, v166, v165, v164, v168, v157);
    outlined destroy of XPCDictionary?(v127);
    v130 = Prompt.attachments.getter();
    v161(v129, v169);
    v205 = *(v130 + 16);
    if (v205)
    {
      v131 = 0;
      v203 = v174 + 16;
      v202 = (v155[0] + 88);
      LODWORD(v201) = *MEMORY[0x1E69DA770];
      LODWORD(v200) = *MEMORY[0x1E69DA748];
      LODWORD(v199) = *MEMORY[0x1E69DA768];
      v197 = v174 + 8;
      v132 = (v155[0] + 8);
      v204 = v174 + 32;
      v133 = MEMORY[0x1E69E7CC0];
      v134 = v170;
      v198 = v130;
      while (v131 < *(v130 + 16))
      {
        v135 = (*(v174 + 80) + 32) & ~*(v174 + 80);
        v136 = *(v174 + 72);
        v137 = v172;
        (*(v174 + 16))(v172, v130 + v135 + v136 * v131, v55);
        Prompt.Attachment.content.getter();
        v138 = v176;
        v139 = (*v202)(v176, v134);
        if (v139 == v201 || v139 == v200 || v139 == v199)
        {
          (*v132)(v138, v134);
          v142 = *v204;
          (*v204)(v173, v137, v55);
          v143 = swift_isUniquelyReferenced_nonNull_native();
          v206 = v133;
          if ((v143 & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v133 + 16) + 1, 1);
            v133 = v206;
          }

          v145 = *(v133 + 16);
          v144 = *(v133 + 24);
          if (v145 >= v144 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v144 > 1), v145 + 1, 1);
            v133 = v206;
          }

          *(v133 + 16) = v145 + 1;
          v55 = v180;
          v142((v133 + v135 + v145 * v136), v173, v180);
          v134 = v170;
          v130 = v198;
        }

        else
        {
          (*v197)(v137, v55);
          (*v132)(v138, v134);
        }

        if (v205 == ++v131)
        {
          goto LABEL_59;
        }
      }

      goto LABEL_67;
    }

LABEL_59:

    v146 = Int._bridgeToObjectiveC()().super.super.isa;
    v147 = v207;
    v148 = swift_isUniquelyReferenced_nonNull_native();
    v206 = v147;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v146, 9, v148);
    v149 = v206;
    v150 = MEMORY[0x1AC5A5AE0](0xD00000000000001BLL, 0x80000001ABA42EF0);
    v151 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy15TokenGeneration0D9GeneratorC9Dimension33_A936FA3DA371934822B1D42BF6B4011ALLOSo8NSObjectCG_SS_AMts5NeverOTg504_s15d13Generation0A9f14C9Dimension33_hijklmn7ALLOSo8o36CSSAHIgygoo_AF3key_AH5valuetSS_AHts5p20OIegnrzr_TR04_s15a13r134A9c120C29sendInferenceRequestTelemetry7session7request8response9streamingyAC_AA014CompletePromptF0VAA0M10CompletionVSbtFSS_So8l17CtAC9U34_efghijK14ALLO_ANtXEfU1_Tf3nnnpf_nTf1cn_n(v149);

    if (v151[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
      v152 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v152 = MEMORY[0x1E69E7CC8];
    }

    v206 = v152;

    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v153, 1, &v206);

    type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    v154 = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();
  }
}

uint64_t outlined init with copy of Constraints?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of XPCDictionary?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of Constraints(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for NSString(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t getEnumTagSinglePayload for TokenGenerator.Dimension(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TokenGenerator.Dimension(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TokenGenerator.Dimension and conformance TokenGenerator.Dimension()
{
  result = lazy protocol witness table cache variable for type TokenGenerator.Dimension and conformance TokenGenerator.Dimension;
  if (!lazy protocol witness table cache variable for type TokenGenerator.Dimension and conformance TokenGenerator.Dimension)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenGenerator.Dimension and conformance TokenGenerator.Dimension);
  }

  return result;
}

unint64_t specialized TokenGenerator.Dimension.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TokenGenerator.Dimension.init(rawValue:), v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

uint64_t TokenStream.init(throwing:)@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in TokenStream.init(throwing:);
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = _s15TokenGeneration0A6StreamV8throwingACyxGs5Error_p_tcfcAA16PromptCompletionVyYbKcfU0_TA_0;
  *(v7 + 24) = v5;
  v8 = swift_allocObject();
  MEMORY[0x1AC5A6AE0](a1);
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> (@out AsyncThrowingStream<PromptCompletionEvent, Error>);
  *(v9 + 32) = v6;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> (@out PromptCompletion, @error @owned Error);
  *(v10 + 32) = v7;
  *a2 = partial apply for closure #1 in PromptCompletionStream.init(streamResponse:bufferResponse:);
  a2[1] = v9;
  a2[2] = &async function pointer to partial apply for closure #2 in PromptCompletionStream.init(streamResponse:bufferResponse:);
  a2[3] = v10;
}

uint64_t TokenStream.contentAndPromptCompletion()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a2;
  v4[10] = a3;
  v4[8] = a1;
  v5 = *(a3 + 16);
  v4[11] = v5;
  v6 = type metadata accessor for Optional();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v7 = type metadata accessor for String.Encoding();
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v8 = type metadata accessor for InferenceResponse.Content();
  v4[21] = v8;
  v4[22] = *(v8 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = *(type metadata accessor for PromptCompletion.Segment(0) - 8);
  v4[25] = swift_task_alloc();
  v9 = type metadata accessor for PromptCompletion.Content(0);
  v4[26] = v9;
  v4[27] = *(v9 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  type metadata accessor for PromptCompletion(0);
  v10 = swift_task_alloc();
  v11 = v3[1];
  v12 = v3[2];
  v4[30] = v10;
  v4[31] = v11;
  v4[32] = v3[3];

  v15 = (v12 + *v12);
  v13 = swift_task_alloc();
  v4[33] = v13;
  *v13 = v4;
  v13[1] = TokenStream.contentAndPromptCompletion();

  return v15(v10);
}

uint64_t TokenStream.contentAndPromptCompletion()()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = TokenStream.contentAndPromptCompletion();
  }

  else
  {
    v2 = TokenStream.contentAndPromptCompletion();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v78 = v0;
  v1 = v0[9];
  outlined init with take of PromptCompletion(v0[30], v1, type metadata accessor for PromptCompletion);

  v2 = *(v1 + 32);
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
    v4 = *(v3 + 16);
    v5 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      v6 = v0[27];
      v7 = v0[24];
      v74 = MEMORY[0x1E69E7CC0];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
      v5 = v74;
      v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v9 = *(v7 + 72);
      do
      {
        v10 = v0[29];
        v11 = v0[25];
        _s15TokenGeneration16PromptCompletionV7SegmentVWOcTm_0(v8, v11, type metadata accessor for PromptCompletion.Segment);
        _s15TokenGeneration16PromptCompletionV7SegmentVWOcTm_0(v11, v10, type metadata accessor for PromptCompletion.Content);
        _s15TokenGeneration16PromptCompletionV7SegmentVWOhTm_0(v11, type metadata accessor for PromptCompletion.Segment);
        v74 = v5;
        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
          v5 = v74;
        }

        v14 = v0[29];
        *(v5 + 16) = v13 + 1;
        outlined init with take of PromptCompletion(v14, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, type metadata accessor for PromptCompletion.Content);
        v8 += v9;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v15 = v0[27];
    v17 = v0[22];
    v16 = v0[23];
    v18 = v0[21];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV7ContentOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV7ContentOGMR);
    v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1ABA1D930;
    v74 = 0;
    v75 = 0xE000000000000000;
    v76 = MEMORY[0x1E69E7CC0];
    v77 = xmmword_1ABA1D8C0;
    InferenceResponse.TextContent.init(_:)(&v74, v16);
    (*(v17 + 104))(v16, *MEMORY[0x1E69C64C0], v18);
    PromptCompletion.Content.init(_:)(v16, (v5 + v19));
  }

  v20 = static Array._allocateUninitialized(_:)();
  v73 = v20;
  v21 = *(v5 + 16);
  if (v21)
  {
    v22 = v0[27];
    v71 = v0[28];
    v23 = v0[15];
    v24 = v5 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v25 = *(v22 + 72);
    v69 = (v0[19] + 8);
    v62 = (v23 + 8);
    v63 = (v23 + 16);
    v67 = v0[34];
    v72 = MEMORY[0x1E69E7CC0];
    v70 = v25;
    while (1)
    {
      _s15TokenGeneration16PromptCompletionV7SegmentVWOcTm_0(v24, v0[28], type metadata accessor for PromptCompletion.Content);
      if (swift_getEnumCaseMultiPayload())
      {
        _s15TokenGeneration16PromptCompletionV7SegmentVWOhTm_0(v0[28], type metadata accessor for PromptCompletion.Content);
      }

      else
      {
        v26 = v0[20];
        v27 = v0[18];
        v28 = *(v71 + 24);
        v29 = *(v71 + 32);
        static String.Encoding.utf8.getter();
        v30 = String.data(using:allowLossyConversion:)();
        v31 = v26;
        v33 = v32;
        (*v69)(v31, v27);
        if (v33 >> 60 == 15)
        {

          outlined consume of Data?(v28, v29);
        }

        else
        {
          v65 = v28;
          v66 = v29;
          v34 = v67;
          static Generable.decode(data:)();
          if (v67)
          {
            v68 = v30;
            swift_getErrorValue();
            v35 = Error.localizedDescription.getter();
            v64 = v36;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v72 + 2) + 1, 1, v72);
            }

            v38 = *(v72 + 2);
            v37 = *(v72 + 3);
            if (v38 >= v37 >> 1)
            {
              v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v72);
            }

            outlined consume of Data?(v68, v33);

            outlined consume of Data?(v65, v29);
            v67 = 0;
            *(v72 + 2) = v38 + 1;
            v39 = &v72[16 * v38];
            *(v39 + 4) = v35;
            *(v39 + 5) = v64;
            v25 = v70;
            goto LABEL_12;
          }

          v40 = v0[17];
          v41 = v0[11];
          (*v63)(v0[16], v40, v41);
          type metadata accessor for Array();
          Array.append(_:)();
          outlined consume of Data?(v30, v33);

          outlined consume of Data?(v65, v66);
          (*v62)(v40, v41);
          v67 = 0;
        }

        v25 = v70;
      }

LABEL_12:
      v24 += v25;
      if (!--v21)
      {

        v43 = v72;
        v42 = v73;
        goto LABEL_26;
      }
    }
  }

  v42 = v20;

  v43 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v44 = v0[14];
  v45 = v0[15];
  v46 = v0[11];
  v0[5] = v42;
  type metadata accessor for Array();
  swift_getWitnessTable();
  BidirectionalCollection.last.getter();
  if ((*(v45 + 48))(v44, 1, v46) == 1)
  {
    v47 = 0xD00000000000002DLL;
    (*(v0[13] + 8))(v0[14], v0[12]);

    if (*(v43 + 2))
    {
      v74 = 0;
      v75 = 0xE000000000000000;
      _StringGuts.grow(_:)(79);
      MEMORY[0x1AC5A5BC0](0xD00000000000004DLL, 0x80000001ABA42D20);
      v0[6] = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
      v48 = BidirectionalCollection<>.joined(separator:)();
      v50 = v49;

      MEMORY[0x1AC5A5BC0](v48, v50);

      v47 = v74;
      v51 = v75;
    }

    else
    {

      v51 = 0x80000001ABA42D70;
    }

    v57 = v0[9];
    type metadata accessor for TokenGenerationError(0);
    lazy protocol witness table accessor for type TokenGenerationError and conformance TokenGenerationError();
    swift_allocError();
    v59 = v58;
    v60 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *v59 = v47;
    v59[1] = v51;
    v59[2] = 0;
    v59[3] = 0;
    v59[4] = 0;
    v59[5] = v60;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    _s15TokenGeneration16PromptCompletionV7SegmentVWOhTm_0(v57, type metadata accessor for PromptCompletion);

    v56 = v0[1];
  }

  else
  {
    v53 = v0[14];
    v52 = v0[15];
    v54 = v0[11];
    v55 = v0[8];

    (*(v52 + 32))(v55, v53, v54);

    v56 = v0[1];
  }

  return v56();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TokenStream.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVy15TokenGeneration22PromptCompletionStreamVAE0F0V_GMd, &_ss23AsyncCompactMapSequenceV8IteratorVy15TokenGeneration22PromptCompletionStreamVAE0F0V_GMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceVy15TokenGeneration22PromptCompletionStreamVAC0E0VGMd, &_ss23AsyncCompactMapSequenceVy15TokenGeneration22PromptCompletionStreamVAC0E0VGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  v13 = v1[3];
  v17 = *v1;
  v16 = *(v1 + 1);
  v18 = v16;
  v19 = v13;
  type metadata accessor for Token();
  lazy protocol witness table accessor for type PromptCompletionStream and conformance PromptCompletionStream();

  AsyncCompactMapSequence.init(_:transform:)();
  (*(v7 + 16))(v9, v12, v6);
  specialized AsyncCompactMapSequence.makeAsyncIterator()();
  (*(v7 + 8))(v12, v6);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVy15TokenGeneration22PromptCompletionStreamVAE0F0V_GMd, &_ss23AsyncCompactMapSequenceV8IteratorVy15TokenGeneration22PromptCompletionStreamVAE0F0V_GMR);
  return (*(*(v14 - 8) + 32))(a1, v5, v14);
}

uint64_t TokenStream.AsyncIterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](TokenStream.AsyncIterator.next(), 0, 0);
}

uint64_t TokenStream.AsyncIterator.next()()
{
  static Task<>.checkCancellation()();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = PromptCompletionStream.AsyncIterator.next();
  v2 = *(v0 + 16);

  return specialized AsyncCompactMapSequence.Iterator.next()(v2);
}

uint64_t TokenStream.collect()(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = type metadata accessor for String.Encoding();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  v5 = type metadata accessor for Token();
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = *(type metadata accessor for PromptCompletion.Segment(0) - 8);
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for PromptCompletion.Content(0);
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  type metadata accessor for PromptCompletion(0);
  v7 = swift_task_alloc();
  v3[19] = v7;
  v8 = swift_task_alloc();
  v9 = v2[1];
  v10 = v2[2];
  v3[20] = v8;
  v3[21] = v9;
  v3[22] = v2[3];

  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  v3[23] = v11;
  *v11 = v3;
  v11[1] = TokenStream.collect();

  return v13(v7);
}

uint64_t TokenStream.collect()()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = TokenStream.collect();
  }

  else
  {
    v2 = TokenStream.collect();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

char *TokenStream.collect()()
{
  v1 = v0[20];
  outlined init with take of PromptCompletion(v0[19], v1, type metadata accessor for PromptCompletion);

  v2 = *(v1 + 32);

  _s15TokenGeneration16PromptCompletionV7SegmentVWOhTm_0(v1, type metadata accessor for PromptCompletion);
  if (v2[2] && (v3 = v2[4], v4 = v2[7], v5 = v2[8], v6 = v2[9], v7 = v2[10], , , , outlined copy of FinishReason(v4, v5), outlined copy of Data._Representation(v6, v7), , , , outlined consume of FinishReason(v4, v5), outlined consume of Data._Representation(v6, v7), (v8 = *(v3 + 16)) != 0))
  {
    v9 = v0[15];
    v10 = v0[12];
    v76 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v11 = v76;
    v12 = v3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v13 = *(v10 + 72);
    do
    {
      v14 = v0[18];
      v15 = v0[13];
      _s15TokenGeneration16PromptCompletionV7SegmentVWOcTm_0(v12, v15, type metadata accessor for PromptCompletion.Segment);
      _s15TokenGeneration16PromptCompletionV7SegmentVWOcTm_0(v15, v14, type metadata accessor for PromptCompletion.Content);
      _s15TokenGeneration16PromptCompletionV7SegmentVWOhTm_0(v15, type metadata accessor for PromptCompletion.Segment);
      v17 = *(v76 + 16);
      v16 = *(v76 + 24);
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
      }

      v18 = v0[18];
      *(v76 + 16) = v17 + 1;
      outlined init with take of PromptCompletion(v18, v76 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v17, type metadata accessor for PromptCompletion.Content);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v11 + 16);
  if (v19)
  {
    v20 = v0[15];
    v68 = v0[16];
    v21 = v11 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v22 = *(v20 + 72);
    v67 = v0[8];
    v75 = (v67 + 32);
    v23 = MEMORY[0x1E69E7CC0];
    v70 = v0;
    v66 = v22;
    do
    {
      v25 = v0[16];
      v24 = v0[17];
      _s15TokenGeneration16PromptCompletionV7SegmentVWOcTm_0(v21, v24, type metadata accessor for PromptCompletion.Content);
      _s15TokenGeneration16PromptCompletionV7SegmentVWOcTm_0(v24, v25, type metadata accessor for PromptCompletion.Content);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v28 = v0[16];
      v27 = v0[17];
      if (EnumCaseMultiPayload)
      {
        _s15TokenGeneration16PromptCompletionV7SegmentVWOhTm_0(v0[17], type metadata accessor for PromptCompletion.Content);
        _s15TokenGeneration16PromptCompletionV7SegmentVWOhTm_0(v28, type metadata accessor for PromptCompletion.Content);
      }

      else
      {
        v29 = v0[10];
        v71 = v0[7];
        v73 = v0[11];
        v30 = *(v68 + 24);
        v31 = *(v68 + 32);

        Token.init(text:)();

        outlined consume of Data?(v30, v31);
        _s15TokenGeneration16PromptCompletionV7SegmentVWOhTm_0(v27, type metadata accessor for PromptCompletion.Content);
        v32 = *v75;
        (*v75)(v73, v29, v71);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
        }

        v34 = v23[2];
        v33 = v23[3];
        v0 = v70;
        if (v34 >= v33 >> 1)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v23);
        }

        v35 = v70[11];
        v36 = v70[7];
        v23[2] = v34 + 1;
        v32(v23 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v34, v35, v36);
        v22 = v66;
      }

      v21 += v22;
      --v19;
    }

    while (v19);
  }

  else
  {

    v23 = MEMORY[0x1E69E7CC0];
  }

  v38 = v23[2];
  v39 = MEMORY[0x1E69E7CC0];
  v69 = v23;
  if (v38)
  {
    v40 = v0[8];
    v77 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 0);
    v39 = v77;
    v41 = *(v40 + 16);
    v40 += 16;
    v42 = v23 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v72 = *(v40 + 56);
    v74 = v41;
    v43 = (v40 - 8);
    do
    {
      v44 = v0[9];
      v45 = v0[7];
      v74(v44, v42, v45);
      v46 = Token.text.getter();
      v48 = v47;
      result = (*v43)(v44, v45);
      v50 = *(v77 + 16);
      v49 = *(v77 + 24);
      v51 = v50 + 1;
      if (v50 >= v49 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1);
      }

      *(v77 + 16) = v51;
      v52 = v77 + 16 * v50;
      *(v52 + 32) = v46;
      *(v52 + 40) = v48;
      v42 += v72;
      --v38;
    }

    while (v38);
LABEL_28:
    v53 = 0;
    v54 = (v39 + 40);
    while (v53 < *(v39 + 16))
    {
      ++v53;
      v56 = *(v54 - 1);
      v55 = *v54;

      MEMORY[0x1AC5A5BC0](v56, v55);

      v54 += 2;
      if (v51 == v53)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  v51 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v51)
  {
    goto LABEL_28;
  }

LABEL_31:
  v58 = v0[5];
  v57 = v0[6];
  v59 = v0[4];

  static String.Encoding.utf8.getter();
  v60 = String.data(using:allowLossyConversion:)();
  v62 = v61;
  result = (*(v58 + 8))(v57, v59);
  if (v62 >> 60 == 15)
  {
LABEL_41:
    __break(1u);
    return result;
  }

  v63 = v0[24];

  static Generable.decode(data:)();
  outlined consume of Data?(v60, v62);
  if (v63)
  {

    v64 = v0[1];

    return v64();
  }

  else
  {

    v65 = v0[1];

    return v65(v69);
  }
}

uint64_t TokenStream.content()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PromptCompletion(0);
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = v2[1];
  *(v3 + 16) = *v2;
  *(v3 + 32) = v7;
  v8 = swift_task_alloc();
  *(v3 + 56) = v8;
  *v8 = v3;
  v8[1] = TokenStream.content();

  return TokenStream.contentAndPromptCompletion()(a1, v6, a2);
}

uint64_t TokenStream.content()()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = TokenStream.content();
  }

  else
  {
    _s15TokenGeneration16PromptCompletionV7SegmentVWOhTm_0(*(v2 + 48), type metadata accessor for PromptCompletion);
    v3 = TokenStream.content();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TokenStream<>.map<A>(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> (@out AsyncThrowingStream<PromptCompletionEvent, Error>)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy15TokenGeneration21PromptCompletionEvent_ps5Error_pGMd, &_sScsy15TokenGeneration21PromptCompletionEvent_ps5Error_pGMR);
  a2[4] = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncThrowingStream<PromptCompletionEvent, Error> and conformance AsyncThrowingStream<A, B>, &_sScsy15TokenGeneration21PromptCompletionEvent_ps5Error_pGMd, &_sScsy15TokenGeneration21PromptCompletionEvent_ps5Error_pGMR, MEMORY[0x1E69E87D0]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return a1();
}

uint64_t TokenStream.init(streamResponse:bufferResponse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  *(v11 + 32) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *a5 = closure #1 in PromptCompletionStream.init(streamResponse:bufferResponse:)partial apply;
  a5[1] = v11;
  a5[2] = &closure #2 in PromptCompletionStream.init(streamResponse:bufferResponse:)partial apply;
  a5[3] = v12;
}

uint64_t TokenStream.events.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
}

uint64_t closure #1 in TokenStream.init(throwing:)(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  MEMORY[0x1AC5A6AE0](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pMd, &_s15TokenGeneration21PromptCompletionEvent_pMR);

  return AsyncThrowingStream.init<>(unfolding:)();
}

uint64_t closure #1 in closure #1 in TokenStream.init(throwing:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  swift_willThrow();
  MEMORY[0x1AC5A6AE0](v2);
  v3 = *(v1 + 8);

  return v3();
}

uint64_t _s15TokenGeneration0A6StreamV8throwingACyxGs5Error_p_tcfcAA16PromptCompletionVyYbKcfU0_TA_0(uint64_t a1)
{
  v2 = *(v1 + 16);
  swift_willThrow();
  return MEMORY[0x1AC5A6AE0](v2);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> (@out PromptCompletion, @error @owned Error)(uint64_t a1, void (*a2)(void))
{
  a2();
  v3 = *(v2 + 8);

  return v3();
}

uint64_t closure #1 in TokenStream.makeAsyncIterator()(uint64_t a1, uint64_t a2)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in TokenStream.makeAsyncIterator(), 0, 0);
}

uint64_t closure #1 in TokenStream.makeAsyncIterator()()
{
  outlined init with copy of PromptCompletionEvent(v0[17], (v0 + 11));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pMd, &_s15TokenGeneration21PromptCompletionEvent_pMR);
  if (swift_dynamicCast())
  {
    v1 = v0[9];
    v2 = v0[10];

    Token.init(text:)();

    outlined consume of Data?(v1, v2);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v0[16];
  v5 = type metadata accessor for Token();
  (*(*(v5 - 8) + 56))(v4, v3, 1, v5);
  v6 = v0[1];

  return v6();
}

uint64_t specialized AsyncCompactMapSequence.makeAsyncIterator()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceVy15TokenGeneration22PromptCompletionStreamVAC0E0VGMd, &_ss23AsyncCompactMapSequenceVy15TokenGeneration22PromptCompletionStreamVAC0E0VGMR);
  v2 = MEMORY[0x1AC5A63B0](&v9);
  v9(v8, v2);
  v3 = __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v10[3] = swift_getAssociatedTypeWitness();
  v10[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v10);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  __swift_destroy_boxed_opaque_existential_0(v8);

  MEMORY[0x1AC5A6400](v1);
  (*(*(v1 - 8) + 8))(v0, v1);
  type metadata accessor for Token();
  lazy protocol witness table accessor for type PromptCompletionStream and conformance PromptCompletionStream();
  return AsyncCompactMapSequence.Iterator.init(_:transform:)();
}

uint64_t specialized AsyncCompactMapSequence.Iterator.next()(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A0VSgMd, &_s15TokenGeneration0A0VSgMR);
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized AsyncCompactMapSequence.Iterator.next(), 0, 0);
}

uint64_t specialized AsyncCompactMapSequence.Iterator.next()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVy15TokenGeneration22PromptCompletionStreamVAE0F0V_GMd, &_ss23AsyncCompactMapSequenceV8IteratorVy15TokenGeneration22PromptCompletionStreamVAE0F0V_GMR);
  v2 = AsyncCompactMapSequence.Iterator.baseIterator.modify();
  v4 = v3;
  static Task<>.checkCancellation()();
  v0[19] = v2;
  v0[20] = v1;
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = specialized AsyncCompactMapSequence.Iterator.next();

  return MEMORY[0x1EEE6D8C8](v0 + 7, v5, v6);
}

{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = specialized AsyncCompactMapSequence.Iterator.next();
  }

  else
  {
    (*(v2 + 152))();
    v3 = specialized AsyncCompactMapSequence.Iterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 160);
    outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>((v0 + 56), v0 + 16);
    v2 = MEMORY[0x1AC5A63D0](v1);
    *(v0 + 184) = v3;
    v10 = (v2 + *v2);
    v4 = swift_task_alloc();
    *(v0 + 192) = v4;
    *v4 = v0;
    v4[1] = specialized AsyncCompactMapSequence.Iterator.next();
    v5 = *(v0 + 144);

    return v10(v5, v0 + 16);
  }

  else
  {
    v7 = *(v0 + 128);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 56, &_s15TokenGeneration21PromptCompletionEvent_pSgMd, &_s15TokenGeneration21PromptCompletionEvent_pSgMR);
    v8 = type metadata accessor for Token();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);

    v9 = *(v0 + 8);

    return v9();
  }
}

{
  (*(v0 + 152))();

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 16));

  return MEMORY[0x1EEE6DFA0](specialized AsyncCompactMapSequence.Iterator.next(), 0, 0);
}

{
  v1 = v0[18];
  v2 = type metadata accessor for Token();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v10 = v0[16];
    (*(v3 + 32))(v10, v1, v2);
    (*(v3 + 56))(v10, 0, 1, v2);

    v9 = v0[1];
    goto LABEL_5;
  }

  v4 = v0[22];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s15TokenGeneration0A0VSgMd, &_s15TokenGeneration0A0VSgMR);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVy15TokenGeneration22PromptCompletionStreamVAE0F0V_GMd, &_ss23AsyncCompactMapSequenceV8IteratorVy15TokenGeneration22PromptCompletionStreamVAE0F0V_GMR);
  v6 = AsyncCompactMapSequence.Iterator.baseIterator.modify();
  v8 = v7;
  static Task<>.checkCancellation()();
  if (v4)
  {
    v6(v0 + 12, 1);

    v9 = v0[1];
LABEL_5:

    return v9();
  }

  v0[19] = v6;
  v0[20] = v5;
  v12 = *(v8 + 24);
  v13 = *(v8 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v8, v12);
  v14 = swift_task_alloc();
  v0[21] = v14;
  *v14 = v0;
  v14[1] = specialized AsyncCompactMapSequence.Iterator.next();

  return MEMORY[0x1EEE6D8C8](v0 + 7, v12, v13);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance TokenStream<A>.AsyncIterator(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return TokenStream.AsyncIterator.next()(a1);
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance TokenStream<A>@<X0>(uint64_t a1@<X8>)
{
  TokenStream.makeAsyncIterator()(a1);
}

unint64_t lazy protocol witness table accessor for type TokenGenerationError and conformance TokenGenerationError()
{
  result = lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError;
  if (!lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError)
  {
    type metadata accessor for TokenGenerationError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVtMd, &_sSS_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVGMd, &_ss18_DictionaryStorageCySS15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, v5, &_sSS_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVtMd, &_sSS_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Promptkit_Wireformat_PromptComponentValue(0);
      result = outlined init with take of PromptCompletion(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VtMd, &_sSS_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VGMd, &_ss18_DictionaryStorageCySS15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, v5, &_sSS_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VtMd, &_sSS_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Promptkit_Wireformat_ChatPromptV1(0);
      result = outlined init with take of PromptCompletion(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVtMd, &_sSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15TokenGeneration31Promptkit_Wireformat_JSONSchemaVGMd, &_ss18_DictionaryStorageCySS15TokenGeneration31Promptkit_Wireformat_JSONSchemaVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, v5, &_sSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVtMd, &_sSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
      result = outlined init with take of PromptCompletion(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVtMd, &_sSS_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVGMd, &_ss18_DictionaryStorageCySS19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, v5, &_sSS_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVtMd, &_sSS_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for PromptTemplateInfo.RichVariableBinding();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t _s15TokenGeneration16PromptCompletionV7SegmentVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata instantiation function for TokenStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void type metadata completion function for TokenStream.AsyncIterator(uint64_t a1)
{
  type metadata accessor for AsyncCompactMapSequence<PromptCompletionStream, Token>.Iterator(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for AsyncCompactMapSequence<PromptCompletionStream, Token>.Iterator(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AsyncCompactMapSequence<PromptCompletionStream, Token>.Iterator)
  {
    type metadata accessor for Token();
    lazy protocol witness table accessor for type PromptCompletionStream and conformance PromptCompletionStream();
    v1 = type metadata accessor for AsyncCompactMapSequence.Iterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AsyncCompactMapSequence<PromptCompletionStream, Token>.Iterator);
    }
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration16PromptCompletionV10AggregatorV09CandidateG033_D174D4387BF6B304FA76AEBF3D593BFDLLVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15TokenGeneration16PromptCompletionV10AggregatorV09CandidateG033_D174D4387BF6B304FA76AEBF3D593BFDLLVGMd, &_ss18_DictionaryStorageCySS15TokenGeneration16PromptCompletionV10AggregatorV09CandidateG033_D174D4387BF6B304FA76AEBF3D593BFDLLVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 9)
    {
      v20 = v1;
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = i[1];
      v9 = i[2];
      v10 = i[3];
      v11 = i[4];
      v12 = i[5];
      v21 = *(i + 48);

      outlined copy of FinishReason?(v10, v11);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 16 * result);
      *v15 = v5;
      v15[1] = v6;
      v16 = v3[7] + 56 * result;
      *v16 = v7;
      *(v16 + 8) = v8;
      *(v16 + 16) = v9;
      *(v16 + 24) = v10;
      *(v16 + 32) = v11;
      *(v16 + 40) = v12;
      *(v16 + 48) = v21;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      v1 = v20 - 1;
      if (v20 == 1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in TokenStream.init(throwing:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #1 in TokenStream.init(throwing:)(a1, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _LoadedUseCaseConfigurations<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance _LoadedUseCaseConfigurations<A>.CodingKeys(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance _LoadedUseCaseConfigurations<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance _LoadedUseCaseConfigurations<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance _LoadedUseCaseConfigurations<A>.CodingKeys@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[1];
  v5._countAndFlagsBits = *a1;
  v5._object = v3;
  result = sub_1AB83C118(v5);
  *a2 = result;
  return result;
}

BOOL protocol witness for CodingKey.init(stringValue:) in conformance _LoadedUseCaseConfigurations<A>.CodingKeys@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1AB83C118(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance _LoadedUseCaseConfigurations<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for static Equatable.== infix(_:_:) in conformance CachePolicy();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _LoadedUseCaseConfigurations<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance _LoadedUseCaseConfigurations<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t _LoadedUseCaseConfigurations.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*v4 + class metadata base offset for _LoadedUseCaseConfigurations);
  type metadata accessor for _LoadedUseCaseConfigurations.CodingKeys(255, v7, a3, a4);
  swift_getWitnessTable();
  v8 = type metadata accessor for KeyedDecodingContainer();
  v17 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18[-1] - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for _LoadedUseCaseConfigurations(0, v7, v14, v15);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v17;
    type metadata accessor for Dictionary();
    WitnessTable = swift_getWitnessTable();
    v18[5] = MEMORY[0x1E69E6190];
    v18[6] = WitnessTable;
    swift_getWitnessTable();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v18[8] + direct field offset for _LoadedUseCaseConfigurations.useCaseConfigurations) = v18[0];
    outlined init with copy of PromptCompletionEvent(a1, v18);
    v11 = _LoadedModelConfiguration.init(from:)();
    (*(v12 + 8))(v10, v8);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v11;
}

uint64_t _LoadedUseCaseConfigurations.configuration(for:fallbackToDefault:)(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = *v4;
  v10 = *(v4 + direct field offset for _LoadedUseCaseConfigurations.useCaseConfigurations);
  if (!v10 || (v26 = a1, v27 = a2, v11 = *(v8 + class metadata base offset for _LoadedUseCaseConfigurations), , MEMORY[0x1AC5A59F0](&v28, &v26, v10, MEMORY[0x1E69E6158], v11, MEMORY[0x1E69E6168]), , (result = v28) == 0))
  {
    if ((a3 & 1) == 0)
    {
      if (one-time initialization token for assets != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Log.assets);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = v25;
        *v24 = 136315138;
        *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v26);
        _os_log_impl(&dword_1AB828000, v22, v23, "No model configuration for use case - %s. Not going to fallback to default config", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x1AC5A6CD0](v25, -1, -1);
        MEMORY[0x1AC5A6CD0](v24, -1, -1);
      }

      return 0;
    }

    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Log.assets);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26 = v17;
      *v16 = 136315138;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v26);
      _os_log_impl(&dword_1AB828000, v14, v15, "No model configuration for use case - %s. Fallback to default config", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1AC5A6CD0](v17, -1, -1);
      MEMORY[0x1AC5A6CD0](v16, -1, -1);
    }

    if (!v10 || (v26 = 0x73746C7561666564, v27 = 0xE800000000000000, MEMORY[0x1AC5A59F0](&v28, &v26, v10, MEMORY[0x1E69E6158], *(v9 + class metadata base offset for _LoadedUseCaseConfigurations), MEMORY[0x1E69E6168]), (result = v28) == 0))
    {
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1AB828000, v18, v19, "No default model configuration", v20, 2u);
        MEMORY[0x1AC5A6CD0](v20, -1, -1);
      }

      return 0;
    }
  }

  return result;
}

uint64_t _LoadedUseCaseConfigurations.deinit()
{
  v0 = _LoadedModelConfiguration.deinit();

  return v0;
}

uint64_t _LoadedUseCaseConfigurations.__deallocating_deinit()
{
  _LoadedModelConfiguration.deinit();

  return swift_deallocClassInstance();
}

uint64_t _UseCaseConfiguration.samplingParameters.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 200);
  v16[10] = *(v1 + 184);
  v16[11] = v2;
  v16[12] = *(v1 + 216);
  v17 = *(v1 + 232);
  v3 = *(v1 + 136);
  v16[6] = *(v1 + 120);
  v16[7] = v3;
  v4 = *(v1 + 168);
  v16[8] = *(v1 + 152);
  v16[9] = v4;
  v5 = *(v1 + 72);
  v16[2] = *(v1 + 56);
  v16[3] = v5;
  v6 = *(v1 + 104);
  v16[4] = *(v1 + 88);
  v16[5] = v6;
  v7 = *(v1 + 40);
  v16[0] = *(v1 + 24);
  v16[1] = v7;
  v8 = *(v1 + 200);
  *(a1 + 160) = *(v1 + 184);
  *(a1 + 176) = v8;
  *(a1 + 192) = *(v1 + 216);
  *(a1 + 208) = *(v1 + 232);
  v9 = *(v1 + 136);
  *(a1 + 96) = *(v1 + 120);
  *(a1 + 112) = v9;
  v10 = *(v1 + 168);
  *(a1 + 128) = *(v1 + 152);
  *(a1 + 144) = v10;
  v11 = *(v1 + 72);
  *(a1 + 32) = *(v1 + 56);
  *(a1 + 48) = v11;
  v12 = *(v1 + 104);
  *(a1 + 64) = *(v1 + 88);
  *(a1 + 80) = v12;
  v13 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v13;
  return outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, v15, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _UseCaseConfiguration.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x736C6F6F74;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0x80000001ABA3F530;
  }

  if (*a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x736C6F6F74;
  }

  if (*a2)
  {
    v6 = 0x80000001ABA3F530;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _UseCaseConfiguration.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance _UseCaseConfiguration.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _UseCaseConfiguration.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance _UseCaseConfiguration.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of _UseCaseConfiguration.CodingKeys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance _UseCaseConfiguration.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0x80000001ABA3F530;
  v3 = 0x736C6F6F74;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance _UseCaseConfiguration.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x736C6F6F74;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance _UseCaseConfiguration.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of _UseCaseConfiguration.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _UseCaseConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance _UseCaseConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _UseCaseConfiguration.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  _UseCaseConfiguration.init(from:)(a1);
  return v2;
}

uint64_t _UseCaseConfiguration.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v73 = v56 - v3;
  v72 = type metadata accessor for Schema();
  v66 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v70 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ToolDescription(0);
  v69 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v68 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v56 - v8;
  v10 = type metadata accessor for ToolItem(0);
  v65 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration21_UseCaseConfigurationC10CodingKeys33_5FC42FED811DAFFDB79536B4FDA355F0LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration21_UseCaseConfigurationC10CodingKeys33_5FC42FED811DAFFDB79536B4FDA355F0LLOGMR);
  v71 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v56 - v14;
  v16 = a1[3];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  lazy protocol witness table accessor for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys();
  v17 = v74;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v18 = v17;
  if (v17)
  {
    v19 = v123;
    v20 = v75;
LABEL_4:
    type metadata accessor for _UseCaseConfiguration();
    swift_deallocPartialClassInstance();
    goto LABEL_5;
  }

  v67 = v10;
  v61 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration8ToolItem33_5FC42FED811DAFFDB79536B4FDA355F0LLVGMd, &_sSay15TokenGeneration8ToolItem33_5FC42FED811DAFFDB79536B4FDA355F0LLVGMR);
  LOBYTE(v94) = 0;
  lazy protocol witness table accessor for type [ToolItem] and conformance <A> [A]();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v59 = v15;
  v19 = v123;
  v20 = v75;
  if (v109)
  {
    v57 = v13;
    v58 = 0;
    v22 = *(v109 + 16);
    v56[1] = v109;
    if (v22)
    {
      v23 = v109 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
      v24 = *(v65 + 72);
      v25 = v67;
      v62 = (v66 + 48);
      v60 = (v66 + 32);
      v74 = MEMORY[0x1E69E7CC0];
      v63 = v24;
      v64 = v12;
      do
      {
        outlined init with copy of ToolItem(v23, v12);
        v26 = v12[1];
        if (v26 && (v27 = v12[3]) != 0)
        {
          v28 = *v12;
          v65 = v12[2];
          v66 = v28;
          v29 = v12 + *(v25 + 24);
          v30 = v12;
          v31 = v73;
          outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v29, v73, &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);

          outlined destroy of ToolItem(v30);
          v32 = v72;
          if ((*v62)(v31, 1, v72) == 1)
          {

            outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31, &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
            v24 = v63;
            v12 = v64;
            v25 = v67;
          }

          else
          {
            v33 = v31;
            v34 = *v60;
            v35 = v70;
            (*v60)(v70, v33, v32);
            v36 = type metadata accessor for FunctionDescription(0);
            v37 = v35;
            v38 = v61;
            v39 = v32;
            v40 = v68;
            v34(&v68[*(v36 + 24)], v37, v39);
            v41 = v65;
            *v40 = v66;
            v40[1] = v26;
            v40[2] = v41;
            v40[3] = v27;
            type metadata accessor for ToolType(0);
            swift_storeEnumTagMultiPayload();
            outlined init with take of ToolDescription(v40, v38);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v42 = v69;
              v43 = v74;
            }

            else
            {
              v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v74[2] + 1, 1, v74);
              v42 = v69;
            }

            v12 = v64;
            v45 = v43[2];
            v44 = v43[3];
            if (v45 >= v44 >> 1)
            {
              v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v43);
            }

            v43[2] = v45 + 1;
            v46 = (*(v42 + 80) + 32) & ~*(v42 + 80);
            v74 = v43;
            outlined init with take of ToolDescription(v38, v43 + v46 + *(v42 + 72) * v45);
            v25 = v67;
            v24 = v63;
          }
        }

        else
        {
          outlined destroy of ToolItem(v12);
        }

        v23 += v24;
        --v22;
      }

      while (v22);
    }

    else
    {
      v74 = MEMORY[0x1E69E7CC0];
    }

    v19 = v123;
    v47 = v74;
    v20 = v75;
    v13 = v57;
    v18 = v58;
  }

  else
  {
    v47 = 0;
  }

  *(v19 + 16) = v47;
  v108 = 1;
  lazy protocol witness table accessor for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope();
  v48 = v59;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v18)
  {
    (*(v71 + 8))(v48, v13);

    goto LABEL_4;
  }

  v92[10] = v119;
  v92[11] = v120;
  v92[12] = v121;
  v92[6] = v115;
  v92[7] = v116;
  v92[8] = v117;
  v92[9] = v118;
  v92[2] = v111;
  v92[3] = v112;
  v92[4] = v113;
  v92[5] = v114;
  v92[0] = v109;
  v92[1] = v110;
  v104 = v119;
  v105 = v120;
  v106 = v121;
  v100 = v115;
  v101 = v116;
  v102 = v117;
  v103 = v118;
  v96 = v111;
  v97 = v112;
  v98 = v113;
  v99 = v114;
  v93 = v122;
  v107 = v122;
  v94 = v109;
  v95 = v110;
  if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(&v94) == 1)
  {
    (*(v71 + 8))(v59, v13);
    _s15TokenGeneration18SamplingParametersVSgWOi0_(&v78);
  }

  else
  {
    v88 = v104;
    v89 = v105;
    v90 = v106;
    v91 = v107;
    v84 = v100;
    v85 = v101;
    v86 = v102;
    v87 = v103;
    v80 = v96;
    v81 = v97;
    v82 = v98;
    v83 = v99;
    v78 = v94;
    v79 = v95;
    v49 = SamplingParametersEnvelope.unseal()(v76);
    (*(v71 + 8))(v59, v13, v49);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v92, &_s15TokenGeneration26SamplingParametersEnvelopeVSgMd, &_s15TokenGeneration26SamplingParametersEnvelopeVSgMR);
    v88 = v76[10];
    v89 = v76[11];
    v90 = v76[12];
    v91 = v77;
    v84 = v76[6];
    v85 = v76[7];
    v86 = v76[8];
    v87 = v76[9];
    v80 = v76[2];
    v81 = v76[3];
    v82 = v76[4];
    v83 = v76[5];
    v78 = v76[0];
    v79 = v76[1];
    protocol witness for Message.unknownFields.modify in conformance Promptkit_Wireformat_VersionedPromptRequest();
  }

  v50 = v89;
  *(v19 + 184) = v88;
  *(v19 + 200) = v50;
  *(v19 + 216) = v90;
  v51 = v85;
  *(v19 + 120) = v84;
  *(v19 + 136) = v51;
  v52 = v87;
  *(v19 + 152) = v86;
  *(v19 + 168) = v52;
  v53 = v81;
  *(v19 + 56) = v80;
  *(v19 + 72) = v53;
  v54 = v83;
  *(v19 + 88) = v82;
  *(v19 + 104) = v54;
  v55 = v79;
  *(v19 + 24) = v78;
  *(v19 + 232) = v91;
  *(v19 + 40) = v55;
LABEL_5:
  __swift_destroy_boxed_opaque_existential_0(v20);
  return v19;
}

uint64_t _UseCaseConfiguration.deinit()
{

  v1 = *(v0 + 200);
  v8[10] = *(v0 + 184);
  v8[11] = v1;
  v8[12] = *(v0 + 216);
  v9 = *(v0 + 232);
  v2 = *(v0 + 136);
  v8[6] = *(v0 + 120);
  v8[7] = v2;
  v3 = *(v0 + 168);
  v8[8] = *(v0 + 152);
  v8[9] = v3;
  v4 = *(v0 + 72);
  v8[2] = *(v0 + 56);
  v8[3] = v4;
  v5 = *(v0 + 104);
  v8[4] = *(v0 + 88);
  v8[5] = v5;
  v6 = *(v0 + 40);
  v8[0] = *(v0 + 24);
  v8[1] = v6;
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
  return v0;
}

uint64_t _UseCaseConfiguration.__deallocating_deinit()
{

  v1 = *(v0 + 200);
  v8[10] = *(v0 + 184);
  v8[11] = v1;
  v8[12] = *(v0 + 216);
  v9 = *(v0 + 232);
  v2 = *(v0 + 136);
  v8[6] = *(v0 + 120);
  v8[7] = v2;
  v3 = *(v0 + 168);
  v8[8] = *(v0 + 152);
  v8[9] = v3;
  v4 = *(v0 + 72);
  v8[2] = *(v0 + 56);
  v8[3] = v4;
  v5 = *(v0 + 104);
  v8[4] = *(v0 + 88);
  v8[5] = v5;
  v6 = *(v0 + 40);
  v8[0] = *(v0 + 24);
  v8[1] = v6;
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
  return swift_deallocClassInstance();
}

uint64_t protocol witness for Decodable.init(from:) in conformance _UseCaseConfiguration@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 96))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ToolItem.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7470697263736564;
  v4 = 0xEB000000006E6F69;
  if (v2 != 1)
  {
    v3 = 0x6574656D61726170;
    v4 = 0xEA00000000007372;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701667182;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x7470697263736564;
  v8 = 0xEB000000006E6F69;
  if (*a2 != 1)
  {
    v7 = 0x6574656D61726170;
    v8 = 0xEA00000000007372;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701667182;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ToolItem.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ToolItem.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ToolItem.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ToolItem.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ToolItem.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ToolItem.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEB000000006E6F69;
  v5 = 0x7470697263736564;
  if (v2 != 1)
  {
    v5 = 0x6574656D61726170;
    v4 = 0xEA00000000007372;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701667182;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ToolItem.CodingKeys()
{
  v1 = 0x7470697263736564;
  if (*v0 != 1)
  {
    v1 = 0x6574656D61726170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance ToolItem.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized ToolItem.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolItem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolItem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ToolItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation16GenerationSchemaOSgMd, &_s29GenerativeFunctionsFoundation16GenerationSchemaOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = &v31 - v4;
  v37 = type metadata accessor for GenerationSchema();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration8ToolItem33_5FC42FED811DAFFDB79536B4FDA355F0LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration8ToolItem33_5FC42FED811DAFFDB79536B4FDA355F0LLV10CodingKeysOGMR);
  v36 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = type metadata accessor for ToolItem(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  lazy protocol witness table accessor for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys();
  v17 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_0(v40);
  }

  v39 = v13;
  v32 = v9;
  v33 = v6;
  v19 = v36;
  v18 = v37;
  v20 = v38;
  v43 = 0;
  v22 = v15;
  *v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15[1] = v23;
  v31 = v23;
  v42 = 1;
  v15[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15[3] = v24;
  v41 = 2;
  lazy protocol witness table accessor for type ToolItem and conformance ToolItem(&lazy protocol witness table cache variable for type GenerationSchema and conformance GenerationSchema, MEMORY[0x1E69A0B98], MEMORY[0x1E69A0BB0]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v31 = v10;
  v25 = v35;
  if ((*(v35 + 48))(v20, 1, v18) == 1)
  {
    (*(v19 + 8))(v12, v31);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v20, &_s29GenerativeFunctionsFoundation16GenerationSchemaOSgMd, &_s29GenerativeFunctionsFoundation16GenerationSchemaOSgMR);
    v26 = *(v39 + 24);
    v27 = type metadata accessor for Schema();
    (*(*(v27 - 8) + 56))(v15 + v26, 1, 1, v27);
  }

  else
  {
    v28 = v32;
    (*(v25 + 32))(v32, v20, v18);
    v29 = *(v39 + 24);
    (*(v25 + 16))(v33, v28, v18);
    Schema.init(type:)();
    (*(v25 + 8))(v28, v18);
    (*(v19 + 8))(v12, v31);
    v30 = type metadata accessor for Schema();
    (*(*(v30 - 8) + 56))(v22 + v29, 0, 1, v30);
  }

  outlined init with copy of ToolItem(v22, v34);
  __swift_destroy_boxed_opaque_existential_0(v40);
  return outlined destroy of ToolItem(v22);
}

uint64_t type metadata accessor for ToolItem(uint64_t a1)
{
  result = type metadata singleton initialization cache for ToolItem;
  if (!type metadata singleton initialization cache for ToolItem)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ToolItem] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [ToolItem] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ToolItem] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration8ToolItem33_5FC42FED811DAFFDB79536B4FDA355F0LLVGMd, &_sSay15TokenGeneration8ToolItem33_5FC42FED811DAFFDB79536B4FDA355F0LLVGMR);
    lazy protocol witness table accessor for type ToolItem and conformance ToolItem(&lazy protocol witness table cache variable for type ToolItem and conformance ToolItem, type metadata accessor for ToolItem, &protocol conformance descriptor for ToolItem);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ToolItem] and conformance <A> [A]);
  }

  return result;
}

uint64_t outlined init with copy of ToolItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ToolItem(uint64_t a1)
{
  v2 = type metadata accessor for ToolItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of ToolDescription(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolDescription(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata completion function for ToolItem(uint64_t a1)
{
  type metadata accessor for String?();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Schema?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

void type metadata accessor for Schema?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Schema?)
  {
    type metadata accessor for Schema();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Schema?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ToolItem and conformance ToolItem(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t specialized ToolItem.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ToolItem.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = MEMORY[0x1EEDC42D8](percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t Prompt.ToolCall.id.getter()
{
  return MEMORY[0x1EEE4A5B8]();
}

{
  return MEMORY[0x1EEE30158]();
}

uint64_t Prompt.ToolCall.Function.init(name:arguments:)()
{
  return MEMORY[0x1EEE4A5D0]();
}

{
  return MEMORY[0x1EEE30170]();
}

uint64_t Prompt.ToolCall.Function.name.getter()
{
  return MEMORY[0x1EEE4A5D8]();
}

{
  return MEMORY[0x1EEE30178]();
}

uint64_t Prompt.ToolCall.Function.arguments.getter()
{
  return MEMORY[0x1EEE4A5E0]();
}

{
  return MEMORY[0x1EEE30180]();
}

uint64_t type metadata accessor for Prompt.ToolCall.Function()
{
  return MEMORY[0x1EEE4A5E8]();
}

{
  return MEMORY[0x1EEE30188]();
}

uint64_t type metadata accessor for Prompt.ToolCall()
{
  return MEMORY[0x1EEE4A600]();
}

{
  return MEMORY[0x1EEE30198]();
}

uint64_t type metadata accessor for Prompt()
{
  return MEMORY[0x1EEE4A6B0]();
}

{
  return MEMORY[0x1EEE30260]();
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x1EEE690B8]();
}

{
  return MEMORY[0x1EEE69100]();
}

uint64_t AsyncSequence.map<A>(_:)()
{
  return MEMORY[0x1EEE6DB10]();
}

{
  return MEMORY[0x1EEE6DB18]();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x1EEE6AC50]();
}

{
  return MEMORY[0x1EEE6AC58]();
}

{
  return MEMORY[0x1EEE6AC60]();
}

{
  return MEMORY[0x1EEE6AC68]();
}

{
  return MEMORY[0x1EEE6AC70]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x1EEE6ACC8]();
}

{
  return MEMORY[0x1EEE6ACD0]();
}

{
  return MEMORY[0x1EEE6ACD8]();
}

{
  return MEMORY[0x1EEE6ACE0]();
}

{
  return MEMORY[0x1EEE6ACE8]();
}

{
  return MEMORY[0x1EEE6ACF0]();
}

{
  return MEMORY[0x1EEE6AD10]();
}

{
  return MEMORY[0x1EEE6AD18]();
}

{
  return MEMORY[0x1EEE6AD30]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x1EEE6AD90]();
}

{
  return MEMORY[0x1EEE6AD98]();
}

{
  return MEMORY[0x1EEE6ADA0]();
}

{
  return MEMORY[0x1EEE6ADA8]();
}

{
  return MEMORY[0x1EEE6ADB0]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x1EEE6AE00]();
}

{
  return MEMORY[0x1EEE6AE08]();
}

{
  return MEMORY[0x1EEE6AE10]();
}

{
  return MEMORY[0x1EEE6AE18]();
}

{
  return MEMORY[0x1EEE6AE20]();
}

{
  return MEMORY[0x1EEE6AE28]();
}

{
  return MEMORY[0x1EEE6AE48]();
}

{
  return MEMORY[0x1EEE6AE50]();
}

{
  return MEMORY[0x1EEE6AE68]();
}