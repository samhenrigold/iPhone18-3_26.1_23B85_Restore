void specialized ClassifierMetadata.init(from:)(uint64_t a1)
{
  v91 = type metadata accessor for LLMAdapterAssetMetadata.ClassifierOutputClass();
  v2 = *(v91 - 8);
  MEMORY[0x28223BE20](v91, v3);
  v5 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LLMAdapterAssetMetadata.ClassifierDefaultOutputClass();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x223D8C500](v9);
  v75 = MEMORY[0x223D8C770](v12);
  v13 = (*(v7 + 8))(v11, v6);
  v14 = MEMORY[0x223D8C4F0](v13);
  v15 = *(v14 + 16);
  v80 = v2;
  v81 = a1;
  if (v15)
  {
    v92 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
    v16 = v92;
    v18 = *(v2 + 16);
    v17 = v2 + 16;
    v19 = *(v17 + 64);
    v87 = v14;
    v20 = v14 + ((v19 + 32) & ~v19);
    v88 = *(v17 + 56);
    v89 = v18;
    v90 = v17;
    v21 = (v17 - 8);
    do
    {
      v22 = v91;
      v23 = v89(v5, v20, v91);
      v24 = MEMORY[0x223D8C6A0](v23);
      v25 = MEMORY[0x223D8C690]();
      (*v21)(v5, v22);
      v92 = v16;
      v27 = *(v16 + 16);
      v26 = *(v16 + 24);
      if (v27 >= v26 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
        v16 = v92;
      }

      v28 = v25;
      *(v16 + 16) = v27 + 1;
      v29 = v16 + 16 * v27;
      *(v29 + 32) = v24;
      *(v29 + 40) = v28;
      v20 += v88;
      --v15;
    }

    while (v15);
    v74 = v16;

    v2 = v80;
    a1 = v81;
  }

  else
  {

    v74 = MEMORY[0x277D84F90];
  }

  v31 = MEMORY[0x223D8C510](v30);
  if (v31)
  {
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSay24TokenGenerationInference21ClassifierOutputClassVGGMd, &_ss18_DictionaryStorageCySSSay24TokenGenerationInference21ClassifierOutputClassVGGMR);
    v33 = static _DictionaryStorage.copy(original:)();
    v34 = v33;
    v35 = 0;
    v36 = *(v32 + 64);
    v73 = v32 + 64;
    v37 = 1 << *(v32 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & v36;
    v40 = (v37 + 63) >> 6;
    v88 = (v2 + 8);
    v89 = (v2 + 16);
    v79 = v33 + 64;
    v41 = MEMORY[0x277D84F90];
    v77 = v32;
    v78 = v33;
    v76 = v40;
    if (v39)
    {
      while (1)
      {
        v42 = __clz(__rbit64(v39));
        v43 = (v39 - 1) & v39;
LABEL_18:
        v46 = v42 | (v35 << 6);
        v85 = v43;
        v47 = *(v32 + 56);
        v48 = (*(v32 + 48) + 16 * v46);
        v49 = v48[1];
        v86 = *v48;
        v87 = v46;
        v50 = *(v47 + 8 * v46);
        v51 = *(v50 + 16);
        if (v51)
        {
          v83 = v49;
          v84 = v35;
          v92 = v41;

          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51, 0);
          v52 = v50;
          v53 = v92;
          v54 = *(v2 + 80);
          v82 = v52;
          v55 = v52 + ((v54 + 32) & ~v54);
          v90 = *(v2 + 72);
          v56 = *(v2 + 16);
          do
          {
            v57 = v91;
            v58 = v56(v5, v55, v91);
            v59 = MEMORY[0x223D8C6A0](v58);
            v60 = MEMORY[0x223D8C690]();
            (*v88)(v5, v57);
            v92 = v53;
            v62 = *(v53 + 16);
            v61 = *(v53 + 24);
            if (v62 >= v61 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1);
              v53 = v92;
            }

            v63 = v60;
            *(v53 + 16) = v62 + 1;
            v64 = v53 + 16 * v62;
            *(v64 + 32) = v59;
            *(v64 + 40) = v63;
            v55 += v90;
            --v51;
          }

          while (v51);

          v2 = v80;
          a1 = v81;
          v41 = MEMORY[0x277D84F90];
          v32 = v77;
          v34 = v78;
          v65 = v83;
          v35 = v84;
          v40 = v76;
        }

        else
        {

          v53 = v41;
        }

        v66 = v87;
        *(v79 + ((v87 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v87;
        v67 = (v34[6] + 16 * v66);
        *v67 = v86;
        v67[1] = v65;
        *(v34[7] + 8 * v66) = v53;
        v68 = v34[2];
        v69 = __OFADD__(v68, 1);
        v70 = v68 + 1;
        if (v69)
        {
          break;
        }

        v34[2] = v70;
        v39 = v85;
        if (!v85)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      v44 = v35;
      while (1)
      {
        v35 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          break;
        }

        if (v35 >= v40)
        {

          v71 = type metadata accessor for LLMAdapterAssetMetadata.ClassifierMetadata();
          (*(*(v71 - 8) + 8))(a1, v71);
          return;
        }

        v45 = *(v73 + 8 * v35);
        ++v44;
        if (v45)
        {
          v42 = __clz(__rbit64(v45));
          v43 = (v45 - 1) & v45;
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v72 = type metadata accessor for LLMAdapterAssetMetadata.ClassifierMetadata();
    (*(*(v72 - 8) + 8))(a1, v72);
  }
}

void *specialized AdapterMetadata.init(from:metadataUrl:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v232 = a2;
  v174 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog23LLMAdapterAssetMetadataV010ClassifierE0VSgMd, &_s12ModelCatalog23LLMAdapterAssetMetadataV010ClassifierE0VSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v184 = &v149 - v6;
  v7 = type metadata accessor for LLMAdapterAssetMetadata.ClassifierMetadata();
  v185 = *(v7 - 8);
  v186 = v7;
  v9 = MEMORY[0x28223BE20](v7, v8);
  v172 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v173 = &v149 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog23LLMAdapterAssetMetadataV18DeviceLocalizationVSgMd, &_s12ModelCatalog23LLMAdapterAssetMetadataV18DeviceLocalizationVSgMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v180 = &v149 - v15;
  v16 = type metadata accessor for LLMAdapterAssetMetadata.DeviceLocalization();
  v181 = *(v16 - 8);
  v182 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v171 = &v149 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog23LLMAdapterAssetMetadataV05DraftE0VSgMd, &_s12ModelCatalog23LLMAdapterAssetMetadataV05DraftE0VSgMR);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v177 = &v149 - v21;
  v22 = type metadata accessor for LLMAdapterAssetMetadata.DraftMetadata();
  v178 = *(v22 - 8);
  v179 = v22;
  v24 = MEMORY[0x28223BE20](v22, v23);
  v169 = &v149 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v170 = &v149 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog9StopTokenVSgMd, &_s12ModelCatalog9StopTokenVSgMR);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v190 = &v149 - v30;
  v31 = type metadata accessor for StopToken();
  v175 = *(v31 - 8);
  v176 = v31;
  MEMORY[0x28223BE20](v31, v32);
  v168 = &v149 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog23LLMAdapterAssetMetadataV22DeviceSpecialTokensMapVSgMd, &_s12ModelCatalog23LLMAdapterAssetMetadataV22DeviceSpecialTokensMapVSgMR);
  v36 = MEMORY[0x28223BE20](v34 - 8, v35);
  v189 = &v149 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v38);
  v40 = &v149 - v39;
  v41 = type metadata accessor for LLMAdapterAssetMetadata.DeviceSpecialTokensMap();
  v188 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v42);
  v187 = &v149 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog23LLMAdapterAssetMetadataV8LoraRankOSgMd, &_s12ModelCatalog23LLMAdapterAssetMetadataV8LoraRankOSgMR);
  MEMORY[0x28223BE20](v44 - 8, v45);
  v47 = &v149 - v46;
  v48 = type metadata accessor for LLMAdapterAssetMetadata.LoraRank();
  v49 = *(v48 - 8);
  v51 = MEMORY[0x28223BE20](v48, v50);
  v53 = &v149 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  MEMORY[0x223D8C7B0](v51);
  if ((*(v49 + 48))(v47, 1, v48) == 1)
  {
    outlined destroy of [Int](v47, &_s12ModelCatalog23LLMAdapterAssetMetadataV8LoraRankOSgMd, &_s12ModelCatalog23LLMAdapterAssetMetadataV8LoraRankOSgMR);
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Log.device);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_220940000, v56, v57, "Adapter metadata is missing field: type", v58, 2u);
      MEMORY[0x223D90A10](v58, -1, -1);
    }

    lazy protocol witness table accessor for type DataSourceError and conformance DataSourceError();
    swift_allocError();
    *v59 = 4;
    swift_willThrow();
    v60 = type metadata accessor for URL();
    (*(*(v60 - 8) + 8))(v232, v60);
    v61 = type metadata accessor for LLMAdapterAssetMetadata();
    (*(*(v61 - 8) + 8))(v54, v61);
    goto LABEL_15;
  }

  v183 = v49;
  v62 = *(v49 + 32);
  v165 = v48;
  v63 = v62(v53, v47, v48);
  v164 = MEMORY[0x223D8C7C0](v63);
  v167 = v64;
  v192 = a1;
  LLMAdapterAssetMetadata.specialTokensMap.getter();
  v65 = v188;
  v66 = *(v188 + 48);
  v67 = v41;
  if (v66(v40, 1, v41) == 1)
  {
    outlined destroy of [Int](v40, &_s12ModelCatalog23LLMAdapterAssetMetadataV22DeviceSpecialTokensMapVSgMd, &_s12ModelCatalog23LLMAdapterAssetMetadataV22DeviceSpecialTokensMapVSgMR);
    v166 = 0;
  }

  else
  {
    v68 = v187;
    (*(v65 + 32))(v187, v40, v41);
    v166 = specialized SpecialTokenMetadataProtocol.mapToDictionary()();
    (*(v65 + 8))(v68, v41);
  }

  v69 = v232;
  v187 = v53;
  v70 = v189;
  LLMAdapterAssetMetadata.specialTokensMap.getter();
  if (v66(v70, 1, v67) == 1)
  {
    outlined destroy of [Int](v70, &_s12ModelCatalog23LLMAdapterAssetMetadataV22DeviceSpecialTokensMapVSgMd, &_s12ModelCatalog23LLMAdapterAssetMetadataV22DeviceSpecialTokensMapVSgMR);
    v195 = 0u;
    v196 = 0u;
    *&v197 = 0;
  }

  else
  {
    *(&v196 + 1) = v67;
    *&v197 = MEMORY[0x277D29C50];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v195);
    (*(v65 + 32))(boxed_opaque_existential_1, v70, v67);
  }

  v72 = v183;
  v73 = v190;
  v74 = type metadata accessor for LLMAdapterAssetMetadata();
  lazy protocol witness table accessor for type LLMModelAssetMetadata.DraftMetadata and conformance LLMModelAssetMetadata.DraftMetadata(&lazy protocol witness table cache variable for type LLMAdapterAssetMetadata and conformance LLMAdapterAssetMetadata, MEMORY[0x277D29C60], MEMORY[0x277D29C58]);
  v75 = v191;
  v76 = v192;
  AssetMetadata.stopToken(metadataURL:deviceSpecialTokensMap:)();
  if (v75)
  {
    v77 = type metadata accessor for URL();
    (*(*(v77 - 8) + 8))(v69, v77);
    (*(*(v74 - 8) + 8))(v76, v74);
    (*(v72 + 8))(v187, v165);
    outlined destroy of [Int](&v195, &_s12ModelCatalog30DeviceSpecialTokensMapProtocol_pSgMd, &_s12ModelCatalog30DeviceSpecialTokensMapProtocol_pSgMR);

LABEL_15:
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 1;
    v96 = 1;
LABEL_16:
    *&v195 = v78;
    *(&v195 + 1) = v79;
    *&v196 = v80;
    *(&v196 + 1) = v81;
    *&v197 = v82;
    *(&v197 + 1) = v83;
    *&v198 = v84;
    *(&v198 + 1) = v85;
    *&v199 = v86;
    *(&v199 + 1) = v87;
    v200 = v88;
    v201 = v95;
    v202 = v89;
    v203 = v90;
    LOWORD(v204) = v91;
    outlined destroy of [Int](&v195, &_s24TokenGenerationInference17DefaultParametersVSgMd, &_s24TokenGenerationInference17DefaultParametersVSgMR);

    return outlined consume of StopToken?(v92, v93, v94, v96);
  }

  outlined destroy of [Int](&v195, &_s12ModelCatalog30DeviceSpecialTokensMapProtocol_pSgMd, &_s12ModelCatalog30DeviceSpecialTokensMapProtocol_pSgMR);
  v99 = v175;
  v98 = v176;
  v100 = (*(v175 + 48))(v73, 1, v176);
  v191 = 0;
  if (v100 == 1)
  {
    v101 = outlined destroy of [Int](v73, &_s12ModelCatalog9StopTokenVSgMd, &_s12ModelCatalog9StopTokenVSgMR);
    v102 = 0;
    v188 = 0;
    v190 = 0;
    v103 = 1;
  }

  else
  {
    v104 = v168;
    (*(v99 + 32))(v168, v73, v98);
    v190 = StopToken.intValue.getter();
    v106 = v105;
    v107 = StopToken.stringValue.getter();
    v108 = v99;
    v102 = v107;
    v103 = v109;
    v101 = (*(v108 + 8))(v104, v98);
    v188 = v106 & 1;
  }

  v110 = v180;
  v155 = v74;
  v180 = v103;
  v152 = MEMORY[0x223D8C640](v101);
  v154 = v111;
  v151 = MEMORY[0x223D8C660]();
  v153 = v112;
  v150 = MEMORY[0x223D8C760]();
  v229 = v113 & 1;
  v114 = v177;
  LLMAdapterAssetMetadata.speculativeStreamingDefaultParameters.getter();
  v116 = v178;
  v115 = v179;
  if ((*(v178 + 48))(v114, 1, v179) == 1)
  {
    v117 = outlined destroy of [Int](v114, &_s12ModelCatalog23LLMAdapterAssetMetadataV05DraftE0VSgMd, &_s12ModelCatalog23LLMAdapterAssetMetadataV05DraftE0VSgMR);
    v176 = 0;
    v177 = 0;
    v175 = 0;
    v168 = 0;
    v169 = 0;
    v162 = 0;
    v163 = 0;
    v160 = 0;
    v161 = 0;
    v158 = 0;
    v159 = 0;
    v156 = 0;
    v157 = 0;
    v91 = 0;
    v95 = 1;
  }

  else
  {
    v118 = v170;
    (*(v116 + 32))(v170, v114, v115);
    v119 = v169;
    (*(v116 + 16))(v169, v118, v115);
    _s24TokenGenerationInference17DefaultParametersV4fromAcA21DraftMetadataProtocol_p_tcfCTf4en_n12ModelCatalog015LLMAdapterAssetH0V0gH0V_Tt0g5(v119, v230);
    v176 = v230[1];
    v177 = v230[0];
    v175 = v230[2];
    v168 = v230[4];
    v169 = v230[3];
    v162 = v230[6];
    v163 = v230[5];
    v160 = v230[8];
    v161 = v230[7];
    v95 = v230[11];
    v158 = v230[10];
    v159 = v230[9];
    v156 = v230[13];
    v157 = v230[12];
    v120 = v116;
    v91 = v231;
    (*(v120 + 8))(v118, v115);
    v198 = 0u;
    v199 = 0u;
    v196 = 0u;
    v197 = 0u;
    v195 = 0u;
    v200 = 0;
    v201 = 1;
    v203 = 0;
    v202 = 0;
    LOWORD(v204) = 0;
    v117 = outlined destroy of [Int](&v195, &_s24TokenGenerationInference17DefaultParametersVSgMd, &_s24TokenGenerationInference17DefaultParametersVSgMR);
  }

  MEMORY[0x223D8C630](v117);
  v121 = v181;
  v122 = v182;
  v123 = (*(v181 + 48))(v110, 1, v182);
  v189 = v102;
  if (v123 == 1)
  {
    v124 = outlined destroy of [Int](v110, &_s12ModelCatalog23LLMAdapterAssetMetadataV18DeviceLocalizationVSgMd, &_s12ModelCatalog23LLMAdapterAssetMetadataV18DeviceLocalizationVSgMR);
    v125 = 0;
  }

  else
  {
    v126 = v110;
    v127 = v171;
    (*(v121 + 32))(v171, v126, v122);
    v128 = v121;
    specialized LocalizationMetadataProtocol.mapToDictionary()(MEMORY[0x277D29C30], MEMORY[0x277D29C48], MEMORY[0x277D29C20], MEMORY[0x277D29C40], MEMORY[0x277D29C28], MEMORY[0x277D29C18], MEMORY[0x277D29C38]);
    v125 = v129;
    v124 = (*(v128 + 8))(v127, v122);
  }

  v130 = v184;
  MEMORY[0x223D8C530](v124);
  v132 = v185;
  v131 = v186;
  if ((*(v185 + 48))(v130, 1, v186) == 1)
  {
    v133 = outlined destroy of [Int](v130, &_s12ModelCatalog23LLMAdapterAssetMetadataV010ClassifierE0VSgMd, &_s12ModelCatalog23LLMAdapterAssetMetadataV010ClassifierE0VSgMR);
    v134 = 0;
    v135 = 0;
    v136 = 0;
  }

  else
  {
    v137 = v173;
    (*(v132 + 32))(v173, v130, v131);
    v138 = v172;
    (*(v132 + 16))(v172, v137, v131);
    v139 = v191;
    specialized ClassifierMetadata.init(from:)(v138);
    v135 = v142;
    v143 = v131;
    if (v139)
    {
      v144 = type metadata accessor for URL();
      (*(*(v144 - 8) + 8))(v232, v144);
      (*(*(v155 - 8) + 8))(v192);
      (*(v132 + 8))(v137, v131);
      (*(v183 + 8))(v187, v165);

      v94 = v189;
      v92 = v190;
      v93 = v188;
      v96 = v180;
      v79 = v176;
      v78 = v177;
      v80 = v175;
      v82 = v168;
      v81 = v169;
      v84 = v162;
      v83 = v163;
      v86 = v160;
      v85 = v161;
      v88 = v158;
      v87 = v159;
      v90 = v156;
      v89 = v157;
      goto LABEL_16;
    }

    v134 = v141;
    v191 = 0;
    v145 = v140;
    v133 = (*(v132 + 8))(v137, v143);
    v136 = v145;
  }

  v146 = v192;
  v147 = MEMORY[0x223D8C790](v133);
  LODWORD(v186) = MEMORY[0x223D8C680]();
  v148 = type metadata accessor for URL();
  (*(*(v148 - 8) + 8))(v232, v148);
  (*(*(v155 - 8) + 8))(v146);
  (*(v183 + 8))(v187, v165);
  *(&v194[8] + 1) = v228[0];
  *(&v194[23] + 2) = v226;
  *(&v199 + 1) = v228[0];
  v214 = v226;
  HIDWORD(v194[8]) = *(v228 + 3);
  HIWORD(v194[23]) = v227;
  *&v195 = v164;
  v194[0] = v164;
  v194[1] = v167;
  *(&v195 + 1) = v167;
  *&v196 = v166;
  v194[2] = v166;
  v194[3] = v152;
  *(&v196 + 1) = v152;
  *&v197 = v154;
  v194[4] = v154;
  v194[5] = v151;
  *(&v197 + 1) = v151;
  *&v198 = v153;
  v194[6] = v153;
  v194[7] = v150;
  *(&v198 + 1) = v150;
  LOBYTE(v194[8]) = v229;
  LOBYTE(v199) = v229;
  DWORD1(v199) = *(v228 + 3);
  *(&v199 + 1) = v177;
  v194[9] = v177;
  v194[10] = v176;
  v200 = v176;
  v201 = v175;
  v194[11] = v175;
  v194[12] = v169;
  v202 = v169;
  v203 = v168;
  v194[13] = v168;
  v194[14] = v163;
  v204 = v163;
  v205 = v162;
  v194[15] = v162;
  v194[16] = v161;
  v206 = v161;
  v207 = v160;
  v194[17] = v160;
  v194[18] = v159;
  v208 = v159;
  v209 = v158;
  v194[19] = v158;
  v194[20] = v95;
  v210 = v95;
  v211 = v157;
  v194[21] = v157;
  v194[22] = v156;
  v212 = v156;
  LOWORD(v194[23]) = v91;
  v213 = v91;
  v215 = v227;
  v216 = v125;
  v194[24] = v125;
  v194[25] = v136;
  v217 = v136;
  v218 = v135;
  v194[26] = v135;
  v194[27] = v134;
  v219 = v134;
  v220 = v190;
  v194[28] = v190;
  v194[29] = v188;
  v221 = v188;
  v222 = v189;
  v194[30] = v189;
  v194[31] = v180;
  v223 = v180;
  LOBYTE(v194[32]) = v147;
  v224 = v147;
  BYTE1(v194[32]) = v186;
  v225 = v186;
  outlined init with copy of AdapterMetadata(v194, &v193);
  outlined destroy of AdapterMetadata(&v195);
  return memcpy(v174, v194, 0x102uLL);
}

uint64_t specialized ClassifierMetadata.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000220AFC900 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C4374757074756FLL && a2 == 0xED00007365737361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000220AFC920 == a2)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized ClassifierMetadata.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24TokenGenerationInference18ClassifierMetadataV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd, &_ss22KeyedDecodingContainerVy24TokenGenerationInference18ClassifierMetadataV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  HIBYTE(v9) = 0;
  lazy protocol witness table accessor for type ClassifierDefaultOutputClass and conformance ClassifierDefaultOutputClass();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay24TokenGenerationInference21ClassifierOutputClassVGMd, &_sSay24TokenGenerationInference21ClassifierOutputClassVGMR);
  HIBYTE(v9) = 1;
  lazy protocol witness table accessor for type [ClassifierOutputClass] and conformance <A> [A](&lazy protocol witness table cache variable for type [ClassifierOutputClass] and conformance <A> [A], lazy protocol witness table accessor for type ClassifierOutputClass and conformance ClassifierOutputClass, MEMORY[0x277D83978]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSay24TokenGenerationInference21ClassifierOutputClassVGGMd, &_sSDySSSay24TokenGenerationInference21ClassifierOutputClassVGGMR);
  HIBYTE(v9) = 2;
  lazy protocol witness table accessor for type [String : [ClassifierOutputClass]] and conformance <> [A : B]();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

float specialized ClassifierOutputClass.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24TokenGenerationInference21ClassifierOutputClassV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd, &_ss22KeyedDecodingContainerVy24TokenGenerationInference21ClassifierOutputClassV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v10 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v11 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v8 = v7;
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t lazy protocol witness table accessor for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StopToken.CodingKeys and conformance StopToken.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StopToken.CodingKeys and conformance StopToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type StopToken.CodingKeys and conformance StopToken.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StopToken.CodingKeys and conformance StopToken.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StopToken.CodingKeys and conformance StopToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type StopToken.CodingKeys and conformance StopToken.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StopToken.CodingKeys and conformance StopToken.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StopToken.CodingKeys and conformance StopToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type StopToken.CodingKeys and conformance StopToken.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StopToken.CodingKeys and conformance StopToken.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StopToken.CodingKeys and conformance StopToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type StopToken.CodingKeys and conformance StopToken.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StopToken.CodingKeys and conformance StopToken.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClassifierDefaultOutputClass and conformance ClassifierDefaultOutputClass()
{
  result = lazy protocol witness table cache variable for type ClassifierDefaultOutputClass and conformance ClassifierDefaultOutputClass;
  if (!lazy protocol witness table cache variable for type ClassifierDefaultOutputClass and conformance ClassifierDefaultOutputClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierDefaultOutputClass and conformance ClassifierDefaultOutputClass);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifierDefaultOutputClass and conformance ClassifierDefaultOutputClass;
  if (!lazy protocol witness table cache variable for type ClassifierDefaultOutputClass and conformance ClassifierDefaultOutputClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierDefaultOutputClass and conformance ClassifierDefaultOutputClass);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClassifierOutputClass and conformance ClassifierOutputClass()
{
  result = lazy protocol witness table cache variable for type ClassifierOutputClass and conformance ClassifierOutputClass;
  if (!lazy protocol witness table cache variable for type ClassifierOutputClass and conformance ClassifierOutputClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierOutputClass and conformance ClassifierOutputClass);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifierOutputClass and conformance ClassifierOutputClass;
  if (!lazy protocol witness table cache variable for type ClassifierOutputClass and conformance ClassifierOutputClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierOutputClass and conformance ClassifierOutputClass);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [ClassifierOutputClass] and conformance <A> [A](unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay24TokenGenerationInference21ClassifierOutputClassVGMd, &_sSay24TokenGenerationInference21ClassifierOutputClassVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys()
{
  result = lazy protocol witness table cache variable for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys;
  if (!lazy protocol witness table cache variable for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys;
  if (!lazy protocol witness table cache variable for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys;
  if (!lazy protocol witness table cache variable for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys;
  if (!lazy protocol witness table cache variable for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys()
{
  result = lazy protocol witness table cache variable for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys;
  if (!lazy protocol witness table cache variable for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys;
  if (!lazy protocol witness table cache variable for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys;
  if (!lazy protocol witness table cache variable for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys;
  if (!lazy protocol witness table cache variable for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DataSourceError and conformance DataSourceError()
{
  result = lazy protocol witness table cache variable for type DataSourceError and conformance DataSourceError;
  if (!lazy protocol witness table cache variable for type DataSourceError and conformance DataSourceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataSourceError and conformance DataSourceError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DataSourceError and conformance DataSourceError;
  if (!lazy protocol witness table cache variable for type DataSourceError and conformance DataSourceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataSourceError and conformance DataSourceError);
  }

  return result;
}

uint64_t outlined consume of StopToken?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t outlined destroy of ModelMetadata(uint64_t a1)
{
  v2 = type metadata accessor for ModelMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for E5Function(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for E5Function(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_24TokenGenerationInference17DefaultParametersVSg(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t get_enum_tag_for_layout_string_24TokenGenerationInference18ClassifierMetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_24TokenGenerationInference04StopA0VSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t getEnumTagSinglePayload for AdapterMetadata(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 258))
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

uint64_t storeEnumTagSinglePayload for AdapterMetadata(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 256) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 258) = 1;
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

    *(result + 258) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy114_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 56);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DefaultParameters(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 114))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 88);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for DefaultParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 114) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 114) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type E5Function.CodingKeys and conformance E5Function.CodingKeys()
{
  result = lazy protocol witness table cache variable for type E5Function.CodingKeys and conformance E5Function.CodingKeys;
  if (!lazy protocol witness table cache variable for type E5Function.CodingKeys and conformance E5Function.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type E5Function.CodingKeys and conformance E5Function.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type E5Function.CodingKeys and conformance E5Function.CodingKeys;
  if (!lazy protocol witness table cache variable for type E5Function.CodingKeys and conformance E5Function.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type E5Function.CodingKeys and conformance E5Function.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type E5Function.CodingKeys and conformance E5Function.CodingKeys;
  if (!lazy protocol witness table cache variable for type E5Function.CodingKeys and conformance E5Function.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type E5Function.CodingKeys and conformance E5Function.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type E5Function.CodingKeys and conformance E5Function.CodingKeys;
  if (!lazy protocol witness table cache variable for type E5Function.CodingKeys and conformance E5Function.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type E5Function.CodingKeys and conformance E5Function.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys);
  }

  return result;
}

void outlined consume of ClassifierMetadata?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

unint64_t lazy protocol witness table accessor for type MetadataSpecialToken and conformance MetadataSpecialToken()
{
  result = lazy protocol witness table cache variable for type MetadataSpecialToken and conformance MetadataSpecialToken;
  if (!lazy protocol witness table cache variable for type MetadataSpecialToken and conformance MetadataSpecialToken)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetadataSpecialToken and conformance MetadataSpecialToken);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetadataSpecialToken and conformance MetadataSpecialToken;
  if (!lazy protocol witness table cache variable for type MetadataSpecialToken and conformance MetadataSpecialToken)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetadataSpecialToken and conformance MetadataSpecialToken);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultParameters and conformance DefaultParameters()
{
  result = lazy protocol witness table cache variable for type DefaultParameters and conformance DefaultParameters;
  if (!lazy protocol witness table cache variable for type DefaultParameters and conformance DefaultParameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultParameters and conformance DefaultParameters);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DefaultParameters and conformance DefaultParameters;
  if (!lazy protocol witness table cache variable for type DefaultParameters and conformance DefaultParameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultParameters and conformance DefaultParameters);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClassifierMetadata and conformance ClassifierMetadata()
{
  result = lazy protocol witness table cache variable for type ClassifierMetadata and conformance ClassifierMetadata;
  if (!lazy protocol witness table cache variable for type ClassifierMetadata and conformance ClassifierMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierMetadata and conformance ClassifierMetadata);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifierMetadata and conformance ClassifierMetadata;
  if (!lazy protocol witness table cache variable for type ClassifierMetadata and conformance ClassifierMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifierMetadata and conformance ClassifierMetadata);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StopToken and conformance StopToken()
{
  result = lazy protocol witness table cache variable for type StopToken and conformance StopToken;
  if (!lazy protocol witness table cache variable for type StopToken and conformance StopToken)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StopToken and conformance StopToken);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StopToken and conformance StopToken;
  if (!lazy protocol witness table cache variable for type StopToken and conformance StopToken)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StopToken and conformance StopToken);
  }

  return result;
}

uint64_t outlined init with copy of DefaultParameters?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference17DefaultParametersVSgMd, &_s24TokenGenerationInference17DefaultParametersVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type E5Function and conformance E5Function()
{
  result = lazy protocol witness table cache variable for type E5Function and conformance E5Function;
  if (!lazy protocol witness table cache variable for type E5Function and conformance E5Function)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type E5Function and conformance E5Function);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type E5Function and conformance E5Function;
  if (!lazy protocol witness table cache variable for type E5Function and conformance E5Function)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type E5Function and conformance E5Function);
  }

  return result;
}

uint64_t outlined assign with take of PromptPreprocessingTemplateVersion?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ModelMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type LLMModelAssetMetadata.DraftMetadata and conformance LLMModelAssetMetadata.DraftMetadata(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for ModelMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ModelMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DefaultParameters.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DefaultParameters.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdapterMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AdapterMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void __swiftcall OnDeviceE5ImageTokenizerConfiguration.init(inputImageDimension:highQualityImageTokenizationDimension:)(TokenGenerationInference::OnDeviceE5ImageTokenizerConfiguration *__return_ptr retstr, Swift::Int inputImageDimension, Swift::Int highQualityImageTokenizationDimension)
{
  retstr->supportedBitsPerComponent = 8;
  retstr->inputImageDimension = inputImageDimension;
  retstr->highQualityImageTokenizationDimension = highQualityImageTokenizationDimension;
  *&retstr->inputBytesPerPixel = xmmword_220AED8E0;
  *&retstr->defaultEndOfImageTokenID = xmmword_220AED8F0;
}

uint64_t OnDeviceInferenceAssetRepository.stopTokensFor(modelBundleIdentifier:tokenizer:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v98 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v96 - v8;
  v106 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  v103 = *(v106 - 8);
  v11 = MEMORY[0x28223BE20](v106, v10);
  v105 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v96 - v14;
  v16 = type metadata accessor for InferenceError();
  MEMORY[0x28223BE20](v16, v17);
  v19 = a1;
  v99 = a2;
  v36 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC025assetObjectIdentifiersForF6Bundle33_65818D6FA4B5F545C6B162D7CBE031AELL10identifierSaySSGSS_t20ModelManagerServices0C5ErrorOYKF(a1, a2, &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = v15;
  v96 = 0;
  v97 = v19;
  v37 = *(v36 + 2);
  swift_beginAccess();
  v27 = v3;
  v38 = v36;
  v104 = v37;
  if (v37)
  {
    v39 = 0;
    v40 = v103;
    v41 = (v103 + 56);
    v100 = (v103 + 48);
    v102 = MEMORY[0x277D84F90];
    v42 = v38 + 5;
    while (1)
    {
      if (v39 >= v38[2])
      {
        __break(1u);
        goto LABEL_62;
      }

      v44 = v27[16];
      if (!*(v44 + 16))
      {
        goto LABEL_11;
      }

      v45 = v38;
      v46 = v27;
      v48 = *(v42 - 1);
      v47 = *v42;

      v49 = specialized __RawDictionaryStorage.find<A>(_:)(v48, v47);
      if ((v50 & 1) == 0)
      {
        break;
      }

      outlined init with copy of DeterministicLanguageModelProtocol(*(v44 + 56) + 40 * v49, v111);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
      v43 = v106;
      v51 = swift_dynamicCast();
      (*v41)(v9, v51 ^ 1u, 1, v43);
      v52 = (*v100)(v9, 1, v43);
      v27 = v46;
      v40 = v103;
      v38 = v45;
      if (v52 != 1)
      {
        outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v9, v101, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v102[2] + 1, 1, v102);
        }

        v53 = v101;
        v55 = v102[2];
        v54 = v102[3];
        if (v55 >= v54 >> 1)
        {
          v102 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v102);
          v53 = v101;
        }

        v56 = v102;
        v102[2] = v55 + 1;
        outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v53, v56 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v55, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
        v38 = v45;
        v43 = v106;
        goto LABEL_13;
      }

LABEL_12:
      outlined destroy of [Int](v9, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
LABEL_13:
      v39 = (v39 + 1);
      v42 += 2;
      if (v104 == v39)
      {
        goto LABEL_28;
      }
    }

    v27 = v46;
    v40 = v103;
    v38 = v45;
LABEL_11:
    v43 = v106;
    (*v41)(v9, 1, 1, v106);
    goto LABEL_12;
  }

  v102 = MEMORY[0x277D84F90];
  v40 = v103;
  v43 = v106;
LABEL_28:

  v57 = v102[2];
  if (v57)
  {
    v104 = v27;
    v58 = v105;
    v59 = &v105[*(v43 + 68)];
    v60 = v102 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v106 = *(v40 + 72);
    v61 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v60, v58, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
      v62 = *v59;
      v63 = v59[1];
      v65 = v59[2];
      v64 = v59[3];
      outlined copy of StopToken?(*v59, v63, v65, v64);
      outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v58, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
      if (v64 != 1)
      {
        if (v64)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 2) + 1, 1, v61);
          }

          v67 = *(v61 + 2);
          v66 = *(v61 + 3);
          if (v67 >= v66 >> 1)
          {
            v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v61);
          }

          *(v61 + 2) = v67 + 1;
          v68 = &v61[16 * v67];
          *(v68 + 4) = v65;
          *(v68 + 5) = v64;
        }

        else
        {
          outlined consume of StopToken?(v62, v63, v65, 0);
        }
      }

      v58 = v105;
      v60 += v106;
      --v57;
    }

    while (v57);

    v40 = v99;
    v27 = v104;
  }

  else
  {

    v61 = MEMORY[0x277D84F90];
    v40 = v99;
  }

  v38 = v96;
  v42 = v97;
  if (!*(v61 + 2))
  {

    if (one-time initialization token for device != -1)
    {
LABEL_62:
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Log.device);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = v27;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v111[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v40, v111);
      _os_log_impl(&dword_220940000, v21, v22, "Failed to find in-memory E5Runner. Fetching stop token from ModelCatalog for model bundle identifier: %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x223D90A10](v25, -1, -1);
      v26 = v24;
      v27 = v23;
      MEMORY[0x223D90A10](v26, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1(v27 + 24, v27[27]);
    OnDeviceInferenceProviderDataSource.catalogResource(for:)(v110);
    if (v38)
    {

      v28 = v38;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v29, v30))
      {

        return 0;
      }

      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v110[0] = v33;
      *v31 = 136446466;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v40, v110);
      *(v31 + 12) = 2114;
      v34 = v38;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v35;
      *v32 = v35;
      _os_log_impl(&dword_220940000, v29, v30, "Failed to lookup stop token for model bundle identifier %{public}s. Error: %{public}@", v31, 0x16u);
      outlined destroy of [Int](v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D90A10](v32, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x223D90A10](v33, -1, -1);
      MEMORY[0x223D90A10](v31, -1, -1);
    }

    else
    {
      outlined init with copy of DeterministicLanguageModelProtocol(v110, v111);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B8Resource_pMd, &_s12ModelCatalog0B8Resource_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog21AssetBackedLLMAdapter_pMd, &_s12ModelCatalog21AssetBackedLLMAdapter_pMR);
      if (swift_dynamicCast())
      {
        outlined init with take of RandomNumberGenerator(v107, v109);
        specialized OnDeviceInferenceProviderDataSource.adapterMetadataFromResource(_:)(v109, v111);
        v79 = v40;
        v80 = v112;
        if (v112 == 1)
        {
          outlined destroy of AdapterMetadata(v111);
        }

        else
        {
          v82 = v111[28];
          v81 = v111[29];
          v83 = v111[30];

          outlined destroy of AdapterMetadata(v111);
          if (v80)
          {
            v84 = dispatch thunk of TokenizerRunner.tokenID(forText:)();

            v85 = Logger.logObject.getter();
            v86 = static os_log_type_t.info.getter();
            outlined consume of StopToken?(v82, v81, v83, v80);
            if (os_log_type_enabled(v85, v86))
            {
              v87 = swift_slowAlloc();
              v88 = swift_slowAlloc();
              *&v107[0] = v88;
              *v87 = 136446466;
              v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v80, v107);
              LODWORD(v106) = v86;
              v90 = v84;
              v91 = v89;
              outlined consume of StopToken?(v82, v81, v83, v80);
              *(v87 + 4) = v91;
              v84 = v90;
              *(v87 + 12) = 2050;
              *(v87 + 14) = v90;
              _os_log_impl(&dword_220940000, v85, v106, "Looked up stop token %{public}s as %{public}ld from adapterMetadata for use with GuidedGeneration", v87, 0x16u);
              __swift_destroy_boxed_opaque_existential_1(v88);
              MEMORY[0x223D90A10](v88, -1, -1);
              MEMORY[0x223D90A10](v87, -1, -1);
            }

            else
            {

              outlined consume of StopToken?(v82, v81, v83, v80);
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
            v95 = swift_allocObject();
            *(v95 + 16) = xmmword_220AE8A30;
            *(v95 + 32) = v84;
            __swift_destroy_boxed_opaque_existential_1(v109);
            __swift_destroy_boxed_opaque_existential_1(v110);
            return v95;
          }
        }

        __swift_destroy_boxed_opaque_existential_1(v109);
        __swift_destroy_boxed_opaque_existential_1(v110);
        v40 = v79;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v110);
        v108 = 0;
        memset(v107, 0, sizeof(v107));
        outlined destroy of [Int](v107, &_s12ModelCatalog21AssetBackedLLMAdapter_pSgMd, &_s12ModelCatalog21AssetBackedLLMAdapter_pSgMR);
      }

      v29 = Logger.logObject.getter();
      v92 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v110[0] = v94;
        *v93 = 136446210;
        *(v93 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v40, v110);
        _os_log_impl(&dword_220940000, v29, v92, "Failed to lookup stop token for model bundle identifier %{public}s", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v94);
        MEMORY[0x223D90A10](v94, -1, -1);
        MEMORY[0x223D90A10](v93, -1, -1);
      }
    }

    return 0;
  }

  v70 = *(v61 + 4);
  v69 = *(v61 + 5);

  v71 = dispatch thunk of TokenizerRunner.tokenID(forText:)();
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v72 = type metadata accessor for Logger();
  __swift_project_value_buffer(v72, static Log.device);

  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v111[0] = v76;
    *v75 = 136446466;
    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v69, v111);

    *(v75 + 4) = v77;
    *(v75 + 12) = 2050;
    *(v75 + 14) = v71;
    _os_log_impl(&dword_220940000, v73, v74, "Looked up stop token %{public}s as %{public}ld for use with GuidedGeneration", v75, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v76);
    MEMORY[0x223D90A10](v76, -1, -1);
    MEMORY[0x223D90A10](v75, -1, -1);
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_220AE8A30;
  *(result + 32) = v71;
  return result;
}

uint64_t OnDeviceInferenceAssetRepository.resumeSuspendedFetch()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC14SuspendedFetchVSgMd, &_s24TokenGenerationInference08OnDeviceC14SuspendedFetchVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v137 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v153 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v152 = &v137 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v151 = &v137 - v15;
  v16 = type metadata accessor for OnDeviceInferenceSuspendedFetch(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v162 = (&v137 - v24);
  MEMORY[0x28223BE20](v23, v25);
  v27 = (&v137 - v26);
  result = swift_beginAccess();
  v29 = v1[20];
  if (!*(v29 + 16))
  {
    return result;
  }

  v137 = v21;
  v138 = v5;
  v158 = v6;
  v154 = v16;
  v144 = v17;
  v140 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v29 + v140, v27, type metadata accessor for OnDeviceInferenceSuspendedFetch);
  v139 = v27;
  v145 = *v27;
  v30 = *(v145 + 16);
  swift_beginAccess();
  v155 = v1;
  if (v30)
  {
    v31 = 0;
    v32 = (v145 + 40);
    while (v31 < *(v145 + 16))
    {
      v33 = v1[18];
      if (*(v33 + 16))
      {
        v35 = *(v32 - 1);
        v34 = *v32;

        v36 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v34);
        if (v37)
        {
          outlined init with copy of DeterministicLanguageModelProtocol(*(v33 + 56) + 40 * v36, &v171);

          outlined destroy of [Int](&v171, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
          if (one-time initialization token for device != -1)
          {
            swift_once();
          }

          v129 = type metadata accessor for Logger();
          __swift_project_value_buffer(v129, static Log.device);

          v130 = Logger.logObject.getter();
          v131 = static os_log_type_t.default.getter();

          v132 = os_log_type_enabled(v130, v131);
          v133 = v139;
          if (v132)
          {
            v134 = swift_slowAlloc();
            v135 = swift_slowAlloc();
            *&v171 = v135;
            *v134 = 136446210;
            v136 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, &v171);

            *(v134 + 4) = v136;
            _os_log_impl(&dword_220940000, v130, v131, "Cannot resume suspended fetch since asset %{public}s is in use ", v134, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v135);
            MEMORY[0x223D90A10](v135, -1, -1);
            MEMORY[0x223D90A10](v134, -1, -1);
          }

          else
          {
          }

          v128 = v133;
          return outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v128, type metadata accessor for OnDeviceInferenceSuspendedFetch);
        }

        v1 = v155;
      }

      ++v31;
      v173 = 0;
      v171 = 0u;
      v172 = 0u;
      outlined destroy of [Int](&v171, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
      v32 += 2;
      if (v30 == v31)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_61;
  }

LABEL_9:
  v38 = v1[20];
  v39 = v154;
  v143 = *(v38 + 16);
  if (v143)
  {
    v141 = v38 + v140;
    v161 = (v7 + 16);

    v41 = 0;
    *&v42 = 136446466;
    v147 = v42;
    v43 = v158;
    v142 = v40;
    v150 = (v7 + 8);
    while (1)
    {
      if (v41 >= *(v40 + 16))
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v44 = *(v144 + 72);
      v146 = v41;
      v45 = v162;
      outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v141 + v44 * v41, v162, type metadata accessor for OnDeviceInferenceSuspendedFetch);
      v46 = *v45;
      v47 = *(v46 + 16);
      if (v47)
      {
        break;
      }

LABEL_11:
      v41 = v146 + 1;
      outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v162, type metadata accessor for OnDeviceInferenceSuspendedFetch);
      v40 = v142;
      if (v41 == v143)
      {

        goto LABEL_27;
      }
    }

    swift_beginAccess();
    v48 = (v46 + 40);
    while (1)
    {
      v54 = *(v48 - 1);
      v53 = *v48;
      v55 = v1[16];
      v56 = *(v55 + 16);

      if (!v56)
      {
        goto LABEL_22;
      }

      v57 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v53);
      if ((v58 & 1) == 0)
      {
        break;
      }

      v59 = v57;

      outlined init with copy of DeterministicLanguageModelProtocol(*(v55 + 56) + 40 * v59, &v171);

      outlined destroy of [Int](&v171, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
LABEL_17:
      v48 += 2;
      if (!--v47)
      {
        goto LABEL_11;
      }
    }

LABEL_22:
    v157 = v54;
    v173 = 0;
    v171 = 0u;
    v172 = 0u;
    outlined destroy of [Int](&v171, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
    v60 = *(v39 + 24);
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    __swift_project_value_buffer(v61, static Log.device);
    v62 = *v161;
    v63 = v151;
    (*v161)(v151, v162 + v60, v43);

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();

    v156 = v65;
    v159 = v64;
    v66 = os_log_type_enabled(v64, v65);
    v67 = v150;
    v160 = v150 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v66)
    {
      v68 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      *&v171 = v148;
      *v68 = v147;
      lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v149 = v47;
      v69 = v62;
      v70 = v60;
      v71 = v67;
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v73;
      v75 = v63;
      v50 = *v71;
      (*v71)(v75, v158);
      v60 = v70;
      v62 = v69;
      v47 = v149;
      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, &v171);

      *(v68 + 4) = v76;
      *(v68 + 12) = 2082;
      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v53, &v171);

      *(v68 + 14) = v77;
      v78 = v159;
      _os_log_impl(&dword_220940000, v159, v156, "Cancelling the request %{public}s since the asset %{public}s was unloaded", v68, 0x16u);
      v79 = v148;
      swift_arrayDestroy();
      MEMORY[0x223D90A10](v79, -1, -1);
      v80 = v68;
      v43 = v158;
      v39 = v154;
      MEMORY[0x223D90A10](v80, -1, -1);
    }

    else
    {

      v49 = v63;
      v50 = *v67;
      (*v67)(v49, v43);
      v39 = v154;
    }

    v51 = v153;
    v62(v153, v162 + v60, v43);
    v1 = v155;
    swift_beginAccess();
    v52 = v152;
    specialized Set._Variant.insert(_:)(v152, v51);
    v50(v52, v43);
    swift_endAccess();
    goto LABEL_17;
  }

LABEL_27:
  swift_beginAccess();
  v81 = v1[20];
  if (!*(v81 + 16))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v82 = v138;
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v81 + v140, v138, type metadata accessor for OnDeviceInferenceSuspendedFetch);
  (*(v144 + 56))(v82, 0, 1, v39);
  outlined destroy of [Int](v82, &_s24TokenGenerationInference08OnDeviceC14SuspendedFetchVSgMd, &_s24TokenGenerationInference08OnDeviceC14SuspendedFetchVSgMR);
  if (*(v81 + 16))
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, 1);
    swift_endAccess();
    v160 = *(v145 + 16);
    if (!v160)
    {
LABEL_45:
      if (one-time initialization token for device == -1)
      {
        goto LABEL_46;
      }

      goto LABEL_65;
    }

    v83 = 0;
    v84 = (v145 + 40);
    while (1)
    {
      if (v83 >= *(v145 + 16))
      {
        goto LABEL_59;
      }

      v162 = v83;
      v88 = *(v84 - 1);
      v87 = *v84;
      v89 = type metadata accessor for OnDeviceInferenceAssetInUsePlaceHolder(0);
      *(&v172 + 1) = v89;
      v173 = &protocol witness table for OnDeviceInferenceAssetInUsePlaceHolder;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v171);
      v91 = *(v89 + 20);
      v92 = type metadata accessor for Asset(0);
      (*(*(v92 - 8) + 56))(boxed_opaque_existential_1 + v91, 1, 1, v92);
      *boxed_opaque_existential_1 = v88;
      boxed_opaque_existential_1[1] = v87;
      swift_beginAccess();
      outlined init with take of RandomNumberGenerator(&v171, v170);
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v169 = v1[18];
      v94 = v169;
      v1[18] = 0x8000000000000000;
      v95 = __swift_mutable_project_boxed_opaque_existential_1(v170, v170[3]);
      v161 = &v137;
      MEMORY[0x28223BE20](v95, v95);
      v97 = &v137 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v98 + 16))(v97);
      v167 = v89;
      v168 = &protocol witness table for OnDeviceInferenceAssetInUsePlaceHolder;
      v99 = __swift_allocate_boxed_opaque_existential_1(&v166);
      outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v97, v99, type metadata accessor for OnDeviceInferenceAssetInUsePlaceHolder);
      v101 = specialized __RawDictionaryStorage.find<A>(_:)(v88, v87);
      v102 = v94[2];
      v103 = (v100 & 1) == 0;
      v104 = v102 + v103;
      if (__OFADD__(v102, v103))
      {
        goto LABEL_60;
      }

      v105 = v100;
      if (v94[3] >= v104)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v100)
          {
            goto LABEL_31;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          if (v105)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v104, isUniquelyReferenced_nonNull_native);
        v106 = specialized __RawDictionaryStorage.find<A>(_:)(v88, v87);
        if ((v105 & 1) != (v107 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v101 = v106;
        if (v105)
        {
LABEL_31:

          v85 = v169;
          v86 = (v169[7] + 40 * v101);
          __swift_destroy_boxed_opaque_existential_1(v86);
          outlined init with take of RandomNumberGenerator(&v166, v86);
          goto LABEL_32;
        }
      }

      v85 = v169;
      v108 = __swift_mutable_project_boxed_opaque_existential_1(&v166, v167);
      MEMORY[0x28223BE20](v108, v108);
      v110 = &v137 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v111 + 16))(v110);
      v164 = v89;
      v165 = &protocol witness table for OnDeviceInferenceAssetInUsePlaceHolder;
      v112 = __swift_allocate_boxed_opaque_existential_1(&v163);
      outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v110, v112, type metadata accessor for OnDeviceInferenceAssetInUsePlaceHolder);
      v85[(v101 >> 6) + 8] |= 1 << v101;
      v113 = (v85[6] + 16 * v101);
      *v113 = v88;
      v113[1] = v87;
      outlined init with take of RandomNumberGenerator(&v163, v85[7] + 40 * v101);
      v114 = v85[2];
      v115 = __OFADD__(v114, 1);
      v116 = v114 + 1;
      if (v115)
      {
        goto LABEL_62;
      }

      v85[2] = v116;
      __swift_destroy_boxed_opaque_existential_1(&v166);
LABEL_32:
      v83 = v162 + 1;
      __swift_destroy_boxed_opaque_existential_1(v170);
      v1 = v155;
      v155[18] = v85;

      swift_endAccess();
      v84 += 2;
      if (v160 == v83)
      {
        goto LABEL_45;
      }
    }
  }

LABEL_64:
  __break(1u);
LABEL_65:
  swift_once();
LABEL_46:
  v117 = type metadata accessor for Logger();
  __swift_project_value_buffer(v117, static Log.device);
  v118 = v139;
  v119 = v137;
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v139, v137, type metadata accessor for OnDeviceInferenceSuspendedFetch);
  v120 = Logger.logObject.getter();
  v121 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    *&v171 = v123;
    *v122 = 136446210;
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v124 = dispatch thunk of CustomStringConvertible.description.getter();
    v126 = v125;
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v119, type metadata accessor for OnDeviceInferenceSuspendedFetch);
    v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v126, &v171);

    *(v122 + 4) = v127;
    _os_log_impl(&dword_220940000, v120, v121, "Resuming suspended fetch for request %{public}s", v122, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v123);
    MEMORY[0x223D90A10](v123, -1, -1);
    MEMORY[0x223D90A10](v122, -1, -1);
  }

  else
  {

    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v119, type metadata accessor for OnDeviceInferenceSuspendedFetch);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  CheckedContinuation.resume(returning:)();
  v128 = v118;
  return outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v128, type metadata accessor for OnDeviceInferenceSuspendedFetch);
}

uint64_t OnDeviceInferenceAssetRepository.localizationOverrideMap(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v19 - v6;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a1, &v19 - v6, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  v8 = type metadata accessor for ModelMetadata(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of [Int](v7, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  }

  else
  {
    v9 = *(v7 + 23);

    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v7, type metadata accessor for ModelMetadata);
    if (v9)
    {
      goto LABEL_5;
    }
  }

  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySS24TokenGenerationInference015MetadataSpecialC0OGTt0g5Tf4g_n(MEMORY[0x277D84F90]);

LABEL_5:
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v9);
  v11 = v10;

  if (*(a2 + 192))
  {
    v12 = *(a2 + 192);
  }

  else
  {
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySS24TokenGenerationInference015MetadataSpecialC0OGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v12);
  v14 = v13;

  v15 = OnDeviceInferenceAssetRepository.mergeDicts(_:_:)(v11, v14);

  specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v15);
  v17 = v16;

  return v17;
}

void specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
        v15 = *v13;
        v14 = v13[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS24TokenGenerationInference015MetadataSpecialA0OGMd, &_sSDySS24TokenGenerationInference015MetadataSpecialA0OGMR);
        swift_dynamicCast();
        outlined init with take of Any(&v22, v24);
        outlined init with take of Any(v24, v25);
        outlined init with take of Any(v25, &v23);
        v16 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          outlined init with take of Any(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          outlined init with take of Any(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSDySS24TokenGenerationInference015MetadataSpecialC0OGGMd, &_ss18_DictionaryStorageCySSSDySS24TokenGenerationInference015MetadataSpecialC0OGGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v10, v24);
    *&v23 = v12;
    *(&v23 + 1) = v13;
    v21[2] = v23;
    v22[0] = v24[0];
    v22[1] = v24[1];
    v14 = v23;
    outlined init with take of Any(v22, v21);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS24TokenGenerationInference015MetadataSpecialA0OGMd, &_sSDySS24TokenGenerationInference015MetadataSpecialA0OGMR);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(v14, *(&v14 + 1));
    if (v16)
    {
      *(v2[6] + 16 * v15) = v14;
      v8 = v15;

      *(v2[7] + 8 * v8) = v20;

      v7 = v9;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
      *(v2[6] + 16 * v15) = v14;
      *(v2[7] + 8 * v15) = v20;
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      v2[2] = v19;
      v7 = v9;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v9 = v7;
  }
}

void *OnDeviceInferenceAssetRepository.mergeDicts(_:_:)(void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v54 = a2;

  v9 = 0;
  while (v7)
  {
    v13 = v9;
LABEL_16:
    v16 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v17 = v16 | (v13 << 6);
    v18 = (*(v54 + 48) + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    outlined init with copy of Any(*(v54 + 56) + 32 * v17, &v57);
    *&v59 = v20;
    *(&v59 + 1) = v19;
    outlined init with take of Any(&v57, &v60);

    v15 = v13;
LABEL_17:
    v62 = v59;
    v63[0] = v60;
    v63[1] = v61;
    v21 = *(&v59 + 1);
    if (!*(&v59 + 1))
    {
      goto LABEL_45;
    }

    v55 = v15;
    v22 = v62;
    outlined init with take of Any(v63, &v59);
    if (a1[2])
    {
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v21);
      if (v24)
      {
        outlined init with copy of Any(a1[7] + 32 * v23, &v57);
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
        if (swift_dynamicCast())
        {
          v26 = *&v56[0];
          outlined init with copy of Any(&v59, &v57);
          if (swift_dynamicCast())
          {
            v27 = OnDeviceInferenceAssetRepository.mergeDicts(_:_:)(v26, *&v56[0]);

            v58 = v25;
            *&v57 = v27;
            outlined init with take of Any(&v57, v56);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v29 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v21);
            v31 = a1[2];
            v32 = (v30 & 1) == 0;
            v33 = __OFADD__(v31, v32);
            v34 = v31 + v32;
            if (v33)
            {
              goto LABEL_49;
            }

            v35 = v30;
            if (a1[3] < v34)
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, isUniquelyReferenced_nonNull_native);
              v29 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v21);
              if ((v35 & 1) != (v36 & 1))
              {
                goto LABEL_50;
              }

              goto LABEL_37;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
LABEL_37:
              if (v35)
              {
                goto LABEL_38;
              }
            }

            else
            {
              v50 = v29;
              specialized _NativeDictionary.copy()();
              v29 = v50;
              if (v35)
              {
LABEL_38:
                v48 = v29;

                v11 = (a1[7] + 32 * v48);
                __swift_destroy_boxed_opaque_existential_1(v11);
                v12 = v56;
                goto LABEL_5;
              }
            }

            a1[(v29 >> 6) + 8] |= 1 << v29;
            v51 = (a1[6] + 16 * v29);
            *v51 = v22;
            v51[1] = v21;
            outlined init with take of Any(v56, (a1[7] + 32 * v29));
            __swift_destroy_boxed_opaque_existential_1(&v59);
            v52 = a1[2];
            v33 = __OFADD__(v52, 1);
            v47 = v52 + 1;
            if (v33)
            {
              __break(1u);
LABEL_45:

              return a1;
            }

            goto LABEL_35;
          }
        }
      }
    }

    outlined init with copy of Any(&v59, &v57);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    *&v56[0] = a1;
    v38 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v21);
    v40 = a1[2];
    v41 = (v39 & 1) == 0;
    v33 = __OFADD__(v40, v41);
    v42 = v40 + v41;
    if (v33)
    {
      goto LABEL_47;
    }

    v43 = v39;
    if (a1[3] >= v42)
    {
      if ((v37 & 1) == 0)
      {
        v49 = v38;
        specialized _NativeDictionary.copy()();
        v38 = v49;
        if (v43)
        {
LABEL_4:
          v10 = v38;

          a1 = *&v56[0];
          v11 = (*(*&v56[0] + 56) + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          v12 = &v57;
LABEL_5:
          outlined init with take of Any(v12, v11);
          __swift_destroy_boxed_opaque_existential_1(&v59);
          goto LABEL_6;
        }

        goto LABEL_34;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v42, v37);
      v38 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v21);
      if ((v43 & 1) != (v44 & 1))
      {
        goto LABEL_50;
      }
    }

    if (v43)
    {
      goto LABEL_4;
    }

LABEL_34:
    a1 = *&v56[0];
    *(*&v56[0] + 8 * (v38 >> 6) + 64) |= 1 << v38;
    v45 = (a1[6] + 16 * v38);
    *v45 = v22;
    v45[1] = v21;
    outlined init with take of Any(&v57, (a1[7] + 32 * v38));
    __swift_destroy_boxed_opaque_existential_1(&v59);
    v46 = a1[2];
    v33 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (v33)
    {
      goto LABEL_48;
    }

LABEL_35:
    a1[2] = v47;
LABEL_6:
    v9 = v55;
  }

  if (v8 <= v9 + 1)
  {
    v14 = v9 + 1;
  }

  else
  {
    v14 = v8;
  }

  v15 = v14 - 1;
  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v13 >= v8)
    {
      v7 = 0;
      v60 = 0u;
      v61 = 0u;
      v59 = 0u;
      goto LABEL_17;
    }

    v7 = *(v4 + 8 * v13);
    ++v9;
    if (v7)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKFTQ1_()
{
  v2 = *v1;
  *(*v1 + 992) = v0;

  if (v0)
  {
    v3 = *(v2 + 616);

    v4 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKFTY3_;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 616);
    v4 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKFTY2_;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKFTY2_()
{
  v1 = *(v0 + 992);
  outlined init with take of RandomNumberGenerator((v0 + 456), v0 + 416);
  v2 = *(v0 + 440);
  v3 = *(v0 + 448);
  __swift_project_boxed_opaque_existential_1((v0 + 416), v2);
  (*(v3 + 24))(v2, v3);
  if (v1)
  {

    v4 = _convertErrorToNSError(_:)();
    v5 = [v4 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = [v4 domain];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = v4;
    [v4 code];
    v25 = *(v0 + 960);
    v26 = *(v0 + 952);
    v27 = *(v0 + 992);
    v7 = *(v0 + 832);
    v8 = *(v0 + 824);
    v9 = *(v0 + 760);
    v10 = *(v0 + 752);
    v11 = *(v0 + 744);
    v12 = *(v0 + 624);
    v13 = v1;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
    (*(v10 + 16))(v12, v9, v11);
    (*(v7 + 104))(v12, *MEMORY[0x277D29D78], v8);
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    swift_willThrowTypedImpl();

    (*(v10 + 8))(v9, v11);
    outlined destroy of [Int](v26, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
    if (!v27)
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 416));
    }

    v14 = *(v0 + 8);
  }

  else
  {
    v15 = *(v0 + 976);
    v16 = *(v0 + 968);
    v17 = *(v0 + 960);
    v18 = *(v0 + 952);
    v19 = *(v0 + 736);
    v20 = *(v0 + 728);
    v21 = *(v20 + 20);
    outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(*(v0 + 608), v19 + v21, type metadata accessor for Asset);
    v22 = type metadata accessor for Asset(0);
    (*(*(v22 - 8) + 56))(v19 + v21, 0, 1, v22);
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 416, v19 + *(v20 + 24));
    *v19 = v16;
    v19[1] = v15;
    *(v0 + 520) = v20;
    *(v0 + 528) = &protocol witness table for OnDeviceInferenceAssetObjectBaseModel;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 496));
    outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v19, boxed_opaque_existential_1, type metadata accessor for OnDeviceInferenceAssetObjectBaseModel);
    swift_beginAccess();

    specialized Dictionary.subscript.setter(v0 + 496, v16, v15);
    swift_endAccess();

    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v19, type metadata accessor for OnDeviceInferenceAssetObjectBaseModel);
    outlined destroy of [Int](v18, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
    __swift_destroy_boxed_opaque_existential_1((v0 + 416));

    v14 = *(v0 + 8);
  }

  return v14();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKFTY3_()
{
  v1 = v0[124];
  v2 = _convertErrorToNSError(_:)();
  v3 = [v2 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = [v2 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  [v2 code];
  v14 = v0[120];
  v15 = v0[119];
  v16 = v0[124];
  v5 = v0[104];
  v6 = v0[103];
  v7 = v0[95];
  v8 = v0[94];
  v9 = v0[93];
  v10 = v0[78];
  v11 = v1;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
  (*(v8 + 16))(v10, v7, v9);
  (*(v5 + 104))(v10, *MEMORY[0x277D29D78], v6);
  lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
  swift_willThrowTypedImpl();

  (*(v8 + 8))(v7, v9);
  outlined destroy of [Int](v15, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  if (!v16)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 52);
  }

  v12 = v0[1];

  return v12();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKFTQ4_(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[127] = a1;
  v4[128] = a2;
  v4[129] = v2;

  if (v2)
  {
    v5 = v4[77];

    outlined destroy of [Int]((v4 + 42), &_s24TokenGenerationInference9BaseModel_pSgMd, &_s24TokenGenerationInference9BaseModel_pSgMR);
    v6 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKFTY6_;
  }

  else
  {
    v5 = v4[77];
    outlined destroy of [Int]((v4 + 42), &_s24TokenGenerationInference9BaseModel_pSgMd, &_s24TokenGenerationInference9BaseModel_pSgMR);
    v6 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKFTY5_;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKFTY6_()
{
  v1 = _convertErrorToNSError(_:)();
  v2 = [v1 localizedDescription];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = [v1 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  [v1 code];
  v4 = v0[129];
  v14 = v0[120];
  v15 = v0[119];
  v5 = v0[104];
  v6 = v0[103];
  v7 = v0[95];
  v8 = v0[94];
  v9 = v0[93];
  v10 = v0[78];
  v11 = v4;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
  (*(v8 + 16))(v10, v7, v9);
  (*(v5 + 104))(v10, *MEMORY[0x277D29D78], v6);
  lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
  swift_willThrowTypedImpl();

  (*(v8 + 8))(v7, v9);
  outlined destroy of [Int](v15, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);

  v12 = v0[1];

  return v12();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleLLMAdapter33_65818D6FA4B5F545C6B162D7CBE031AELL10llmAdapter10identifier5assety12ModelCatalog0f6BackedI0_p_SSAA0F0VtYa0W15ManagerServices0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[136] = a5;
  v6[135] = v5;
  v6[134] = a4;
  v6[133] = a3;
  v6[132] = a2;
  v6[131] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
  v6[137] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6[138] = swift_task_alloc();
  v6[139] = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  v6[140] = swift_task_alloc();
  v7 = type metadata accessor for ModelConfiguration();
  v6[141] = v7;
  v6[142] = *(v7 - 8);
  v6[143] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMR);
  v6[144] = swift_task_alloc();
  v6[145] = swift_task_alloc();
  v6[146] = swift_task_alloc();
  v8 = type metadata accessor for InferenceError();
  v6[147] = v8;
  v6[148] = *(v8 - 8);
  v6[149] = swift_task_alloc();
  v6[150] = swift_task_alloc();
  v6[151] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  v6[152] = swift_task_alloc();
  v6[153] = swift_task_alloc();
  v6[154] = swift_task_alloc();
  v6[155] = swift_task_alloc();
  v6[156] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v6[157] = v9;
  v6[158] = *(v9 - 8);
  v6[159] = swift_task_alloc();
  v6[160] = swift_task_alloc();
  v6[161] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6[162] = swift_task_alloc();
  v6[163] = swift_task_alloc();
  v6[164] = swift_task_alloc();
  v6[165] = swift_task_alloc();
  v6[166] = swift_task_alloc();
  v6[167] = swift_task_alloc();
  v10 = type metadata accessor for Asset(0);
  v6[168] = v10;
  v6[169] = *(v10 - 8);
  v6[170] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC20AssetObjectBaseModelVSgMd, &_s24TokenGenerationInference08OnDeviceC20AssetObjectBaseModelVSgMR);
  v6[171] = swift_task_alloc();
  v11 = type metadata accessor for OnDeviceInferenceAssetObjectBaseModel(0);
  v6[172] = v11;
  v6[173] = *(v11 - 8);
  v6[174] = swift_task_alloc();
  v12 = type metadata accessor for InferenceError.Context();
  v6[175] = v12;
  v6[176] = *(v12 - 8);
  v6[177] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  v6[178] = swift_task_alloc();
  v6[179] = swift_task_alloc();
  v6[180] = swift_task_alloc();
  v6[181] = swift_task_alloc();
  v6[182] = swift_task_alloc();
  v13 = type metadata accessor for CostProfile();
  v6[183] = v13;
  v6[184] = *(v13 - 8);
  v6[185] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleLLMAdapter33_65818D6FA4B5F545C6B162D7CBE031AELL10llmAdapter10identifier5assety12ModelCatalog0f6BackedI0_p_SSAA0F0VtYa0W15ManagerServices0C5ErrorOYKFTY0_, v5, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleLLMAdapter33_65818D6FA4B5F545C6B162D7CBE031AELL10llmAdapter10identifier5assety12ModelCatalog0f6BackedI0_p_SSAA0F0VtYa0W15ManagerServices0C5ErrorOYKFTY0_()
{
  v237 = v0;
  v1 = *(v0 + 1480);
  v2 = *(v0 + 1472);
  v3 = *(v0 + 1464);
  v4 = *(v0 + 1048);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v5 = dispatch thunk of CatalogResource.dependentResourceIDs.getter();
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  dispatch thunk of ManagedResource.cost.getter();
  v6 = CostProfile.energyEfficientMode.getter();
  (*(v2 + 8))(v1, v3);
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  *(v0 + 1488) = __swift_project_value_buffer(v7, static Log.device);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1064);
    v11 = *(v0 + 1056);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v235 = v13;
    *v12 = 136446210;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v235);
    _os_log_impl(&dword_220940000, v8, v9, "Creating asset object for adapter with identifier %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x223D90A10](v13, -1, -1);
    MEMORY[0x223D90A10](v12, -1, -1);
  }

  specialized OnDeviceInferenceProviderDataSource.adapterMetadataFromResource(_:)(*(v0 + 1048), (v0 + 16));
  v231 = v0;
  v14 = *(v0 + 1456);
  v15 = *(v0 + 1352);
  v16 = *(v0 + 1344);
  v214 = *(v0 + 1080);
  v210 = *(v0 + 16);
  v17 = *(v0 + 24);
  v18 = *(v15 + 56);
  *(v0 + 1496) = v18;
  *(v0 + 1504) = (v15 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v18(v14, 1, 1, v16);
  *(v0 + 352) = 0;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0u;
  *(v0 + 392) = 0;
  v228 = v0 + 360;
  v229 = *(v5 + 16);
  if (!v229)
  {

    v24 = 0;
    v25 = 0;
LABEL_20:
    *(v0 + 1520) = v25;
    *(v0 + 1512) = v24;
    v26 = *(v0 + 1440);
    v27 = *(v0 + 1352);
    v28 = *(v0 + 1344);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 1456), v26, &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
    v29 = (*(v27 + 48))(v26, 1, v28);
    v30 = *(v0 + 1440);
    if (v29 == 1)
    {

      outlined destroy of AdapterMetadata(v0 + 16);
      outlined destroy of [Int](v30, &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
    }

    else
    {
      outlined init with take of OnDeviceInferenceAssetObjectE5Runner(*(v0 + 1440), *(v0 + 1360), type metadata accessor for Asset);
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v228, v0 + 600, &_s12ModelCatalog19AssetBackedLLMModel_pSgMd, &_s12ModelCatalog19AssetBackedLLMModel_pSgMR);
      if (*(v0 + 624))
      {
        outlined init with take of RandomNumberGenerator((v0 + 600), v0 + 560);
        if (v25)
        {
          v218 = v6;
          v229 = v25;
          v31 = *(v0 + 1336);
          v32 = *(v0 + 1328);
          v33 = *(v0 + 1264);
          v34 = *(v0 + 1256);
          static LanguageModelLoader.findURLOfKnownAdapterAsset(in:source:)(v31);
          outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v31, v32, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          v35 = *(v33 + 48);
          if (v35(v32, 1, v34) != 1)
          {
            v194 = v24;
            v55 = *(v0 + 1320);
            v56 = *(v0 + 1312);
            v57 = *(v0 + 1264);
            v58 = *(v0 + 1256);
            v196 = *(v57 + 32);
            v196(*(v0 + 1288), *(v0 + 1328), v58);

            v59 = URL.path(percentEncoded:)(1);
            (*(v57 + 56))(v55, 1, 1, v58);
            v60 = *(v0 + 584);
            v61 = *(v0 + 592);
            v225 = v17;
            v62 = __swift_project_boxed_opaque_existential_1((v0 + 560), v60);
            *(v0 + 664) = v60;
            *(v0 + 672) = *(v61 + 8);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 640));
            (*(*(v60 - 8) + 16))(boxed_opaque_existential_1, v62, v60);
            outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v55, v56, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            if (v35(v56, 1, v58) != 1)
            {
              v74 = *(v0 + 1248);
              v75 = *(v0 + 1200);
              v196(*(v0 + 1280), *(v0 + 1312), *(v0 + 1256));
              v76 = URL.path(percentEncoded:)(1);
              v95 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC25modelConfigurationWithURL33_65818D6FA4B5F545C6B162D7CBE031AELL0H4Path0H8Resource07adapterV11InformationSo017TGIMutableE5ModelI4ObjCC_AA13ModelMetadataVSgtSS_12ModelCatalog0f6BackedV0_pAA07AdaptervX0VSgt20ModelManagerServices0C5ErrorOYKF(v74, v76._countAndFlagsBits, v76._object, v0 + 640, v210, v225, v59._countAndFlagsBits, v59._object, v75);
              v96 = *(v0 + 1280);
              v97 = *(v0 + 1264);
              v98 = *(v0 + 1256);

              v99 = *(v97 + 8);
              v99(v96, v98);
              v5 = v225;
              goto LABEL_52;
            }

            v64 = *(v0 + 1304);
            v65 = *(v0 + 1296);
            v66 = *(v0 + 1256);
            outlined destroy of [Int](*(v0 + 1312), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            static LanguageModelLoader.findURLOfKnownModelAsset(in:source:)(v64);
            outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v64, v65, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            if (v35(v65, 1, v66) != 1)
            {
              v92 = *(v0 + 1248);
              v93 = *(v0 + 1192);
              v196(*(v0 + 1272), *(v0 + 1296), *(v0 + 1256));
              v94 = URL.path(percentEncoded:)(1);
              v5 = v225;
              v20 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC25modelConfigurationWithURL33_65818D6FA4B5F545C6B162D7CBE031AELL0H4Path0H8Resource07adapterV11InformationSo017TGIMutableE5ModelI4ObjCC_AA13ModelMetadataVSgtSS_12ModelCatalog0f6BackedV0_pAA07AdaptervX0VSgt20ModelManagerServices0C5ErrorOYKF(v92, v94._countAndFlagsBits, v94._object, v0 + 640, v210, v225, v59._countAndFlagsBits, v59._object, v93);
              goto LABEL_51;
            }

            v232 = *(v0 + 1456);
            v67 = *(v0 + 1416);
            v68 = *(v0 + 1408);
            v195 = *(v0 + 1400);
            v220 = *(v0 + 1360);
            v197 = *(v0 + 1304);
            v201 = *(v0 + 1320);
            v69 = *(v0 + 1296);
            v212 = *(v0 + 1288);
            v216 = *(v0 + 1336);
            v70 = *(v0 + 1264);
            v207 = *(v0 + 1256);
            v71 = *(v0 + 1208);
            v72 = *(v0 + 1184);
            v73 = *(v0 + 1176);

            outlined destroy of AdapterMetadata(v0 + 16);

            outlined destroy of [Int](v69, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

            _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
            InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
            (*(v68 + 16))(v71, v67, v195);
            (*(v72 + 104))(v71, *MEMORY[0x277D29D78], v73);
            lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
            swift_willThrowTypedImpl();
            (*(v68 + 8))(v67, v195);
            outlined destroy of [Int](v197, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            outlined destroy of [Int](v201, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            (*(v70 + 8))(v212, v207);
            outlined destroy of [Int](v216, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v220, type metadata accessor for Asset);
            outlined destroy of [Int](v228, &_s12ModelCatalog19AssetBackedLLMModel_pSgMd, &_s12ModelCatalog19AssetBackedLLMModel_pSgMR);
            outlined destroy of [Int](v0 + 320, &_s24TokenGenerationInference9BaseModel_pSgMd, &_s24TokenGenerationInference9BaseModel_pSgMR);
            outlined destroy of [Int](v232, &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
            v44 = v0;
            (*(v72 + 32))(*(v0 + 1088), *(v0 + 1208), *(v0 + 1176));
            __swift_destroy_boxed_opaque_existential_1((v0 + 640));
            goto LABEL_42;
          }

          v223 = *(v0 + 1456);
          v36 = *(v0 + 1416);
          v37 = *(v0 + 1408);
          v206 = *(v0 + 1400);
          v219 = *(v0 + 1360);
          v215 = *(v0 + 1336);
          v38 = *(v0 + 1328);
          v39 = *(v231 + 1184);
          v211 = *(v231 + 1176);
          v40 = *(v231 + 1088);
          v41 = *(v231 + 1064);
          v42 = *(v231 + 1056);

          outlined destroy of AdapterMetadata(v231 + 16);
          outlined destroy of [Int](v38, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          v235 = 0;
          v236 = 0xE000000000000000;
          _StringGuts.grow(_:)(45);

          v235 = 0xD00000000000001BLL;
          v236 = 0x8000000220AFD0F0;
          MEMORY[0x223D8E780](v42, v41);
          MEMORY[0x223D8E780](0x65726964206E6920, 0xEE002079726F7463);
          lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type URL and conformance URL, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          v43 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x223D8E780](v43);

          _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
          InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
          (*(v37 + 16))(v40, v36, v206);
          (*(v39 + 104))(v40, *MEMORY[0x277D29D78], v211);
          v44 = v231;
          lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
          swift_willThrowTypedImpl();
          (*(v37 + 8))(v36, v206);
          outlined destroy of [Int](v215, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v219, type metadata accessor for Asset);
          outlined destroy of [Int](v228, &_s12ModelCatalog19AssetBackedLLMModel_pSgMd, &_s12ModelCatalog19AssetBackedLLMModel_pSgMR);
          outlined destroy of [Int](v231 + 320, &_s24TokenGenerationInference9BaseModel_pSgMd, &_s24TokenGenerationInference9BaseModel_pSgMR);
          v45 = v223;
LABEL_26:
          outlined destroy of [Int](v45, &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
LABEL_42:
          __swift_destroy_boxed_opaque_existential_1(v44 + 70);
          goto LABEL_30;
        }

        outlined destroy of OnDeviceInferenceAssetObjectE5Runner(*(v0 + 1360), type metadata accessor for Asset);

        outlined destroy of AdapterMetadata(v0 + 16);
        __swift_destroy_boxed_opaque_existential_1((v0 + 560));
      }

      else
      {
        outlined destroy of OnDeviceInferenceAssetObjectE5Runner(*(v0 + 1360), type metadata accessor for Asset);

        outlined destroy of AdapterMetadata(v0 + 16);
        outlined destroy of [Int](v0 + 600, &_s12ModelCatalog19AssetBackedLLMModel_pSgMd, &_s12ModelCatalog19AssetBackedLLMModel_pSgMR);
      }
    }

    v230 = *(v0 + 1456);
    v46 = *(v0 + 1416);
    v47 = *(v0 + 1408);
    v224 = *(v0 + 1400);
    v48 = *(v0 + 1184);
    v49 = *(v0 + 1176);
    v50 = *(v0 + 1088);
    v51 = *(v0 + 1064);
    v52 = *(v231 + 1056);
    v235 = 0;
    v236 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v235 = 0xD000000000000025;
    v236 = 0x8000000220AFD0C0;
    MEMORY[0x223D8E780](v52, v51);

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v44 = v231;
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
    (*(v47 + 16))(v50, v46, v224);
    (*(v48 + 104))(v50, *MEMORY[0x277D29D78], v49);
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    swift_willThrowTypedImpl();
    (*(v47 + 8))(v46, v224);
    outlined destroy of [Int](v228, &_s12ModelCatalog19AssetBackedLLMModel_pSgMd, &_s12ModelCatalog19AssetBackedLLMModel_pSgMR);
    outlined destroy of [Int](v231 + 320, &_s24TokenGenerationInference9BaseModel_pSgMd, &_s24TokenGenerationInference9BaseModel_pSgMR);
    outlined destroy of [Int](v230, &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
LABEL_30:

    v53 = v44[1];

    return v53();
  }

  v200 = v18;
  v218 = v6;
  v19 = v0 + 440;
  v222 = v17;

  v21 = 0;
  v22 = v5 + 40;
  while (v21 < *(v5 + 16))
  {
    type metadata accessor for CatalogClient();
    swift_allocObject();

    CatalogClient.init()();
    v0 = v231;
    dispatch thunk of CatalogClient.resource(for:)();

    if (!*(v231 + 544))
    {
      outlined destroy of [Int](v231 + 520, &_s12ModelCatalog0B8Resource_pSgMd, &_s12ModelCatalog0B8Resource_pSgMR);
LABEL_9:
      *(v19 + 32) = 0;
      *v19 = 0u;
      *(v19 + 16) = 0u;
LABEL_10:
      v23 = v19;
      goto LABEL_11;
    }

    outlined init with take of RandomNumberGenerator((v231 + 520), v231 + 480);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B8Resource_pMd, &_s12ModelCatalog0B8Resource_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog19AssetBackedLLMModel_pMd, &_s12ModelCatalog19AssetBackedLLMModel_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_9;
    }

    if (!*(v231 + 464))
    {
      goto LABEL_10;
    }

    outlined destroy of [Int](v228, &_s12ModelCatalog19AssetBackedLLMModel_pSgMd, &_s12ModelCatalog19AssetBackedLLMModel_pSgMR);
    v0 = v231;
    outlined init with take of RandomNumberGenerator(v19, v231 + 400);
    outlined init with copy of DeterministicLanguageModelProtocol(v231 + 400, v228);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v228, v231 + 800, &_s12ModelCatalog19AssetBackedLLMModel_pSgMd, &_s12ModelCatalog19AssetBackedLLMModel_pSgMR);
    if (*(v231 + 824))
    {
      v77 = *(v231 + 1080);

      outlined init with take of RandomNumberGenerator((v231 + 800), v231 + 840);
      __swift_project_boxed_opaque_existential_1((v231 + 840), *(v231 + 864));
      v78 = dispatch thunk of CatalogResource.id.getter();
      v80 = v79;
      swift_beginAccess();
      v81 = *(v77 + 128);
      if (*(v81 + 16))
      {

        v82 = specialized __RawDictionaryStorage.find<A>(_:)(v78, v80);
        v84 = v83;

        v6 = v218;
        if (v84)
        {
          v85 = *(v231 + 1384);
          v86 = *(v231 + 1376);
          v87 = *(v231 + 1368);
          outlined init with copy of DeterministicLanguageModelProtocol(*(v81 + 56) + 40 * v82, v231 + 760);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
          v88 = swift_dynamicCast();
          (*(v85 + 56))(v87, v88 ^ 1u, 1, v86);
          if ((*(v85 + 48))(v87, 1, v86) != 1)
          {
            v89 = *(v231 + 1392);
            v90 = *(v231 + 1376);
            v91 = *(v231 + 1368);
            outlined destroy of [Int](v231 + 320, &_s24TokenGenerationInference9BaseModel_pSgMd, &_s24TokenGenerationInference9BaseModel_pSgMR);
            outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v91, v89, type metadata accessor for OnDeviceInferenceAssetObjectBaseModel);
            outlined init with copy of DeterministicLanguageModelProtocol(v89 + *(v90 + 24), v231 + 320);
            outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v89, type metadata accessor for OnDeviceInferenceAssetObjectBaseModel);
LABEL_49:
            v110 = *(v0 + 1448);
            __swift_project_boxed_opaque_existential_1((v214 + 192), *(*(v0 + 1080) + 216));
            __swift_project_boxed_opaque_existential_1((v0 + 840), *(v0 + 864));
            v111 = dispatch thunk of CatalogResource.id.getter();
            OnDeviceInferenceProviderDataSource.asset(for:)(v111, v112, v110);
            outlined destroy of [Int](*(v0 + 1456), &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);

            v113 = *(v0 + 1456);
            v114 = *(v0 + 1448);
            v200(v114, 0, 1, *(v0 + 1344));
            outlined init with take of Asset?(v114, v113, &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
            __swift_project_boxed_opaque_existential_1((v0 + 840), *(v0 + 864));
            v24 = dispatch thunk of CatalogResource.id.getter();
            v25 = v115;
            __swift_destroy_boxed_opaque_existential_1((v0 + 400));
            __swift_destroy_boxed_opaque_existential_1((v0 + 840));
            goto LABEL_20;
          }

LABEL_46:
          outlined destroy of [Int](*(v231 + 1368), &_s24TokenGenerationInference08OnDeviceC20AssetObjectBaseModelVSgMd, &_s24TokenGenerationInference08OnDeviceC20AssetObjectBaseModelVSgMR);
          outlined init with copy of DeterministicLanguageModelProtocol(v231 + 840, v231 + 720);

          v100 = Logger.logObject.getter();
          v101 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v100, v101))
          {
            v102 = *(v231 + 1064);
            v103 = *(v231 + 1056);
            v104 = swift_slowAlloc();
            v105 = swift_slowAlloc();
            v235 = v105;
            *v104 = 136446466;
            __swift_project_boxed_opaque_existential_1((v231 + 720), *(v231 + 744));
            v106 = dispatch thunk of CatalogResource.id.getter();
            v108 = v107;
            __swift_destroy_boxed_opaque_existential_1((v231 + 720));
            v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v108, &v235);
            v17 = v222;
            v0 = v231;

            *(v104 + 4) = v109;
            *(v104 + 12) = 2082;
            *(v104 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v102, &v235);
            _os_log_impl(&dword_220940000, v100, v101, "Base model asset %{public}s was not loaded at time of loading the adapter %{public}s", v104, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223D90A10](v105, -1, -1);
            MEMORY[0x223D90A10](v104, -1, -1);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1((v231 + 720));
          }

          goto LABEL_49;
        }
      }

      else
      {

        v6 = v218;
      }

      (*(*(v231 + 1384) + 56))(*(v231 + 1368), 1, 1, *(v231 + 1376));
      goto LABEL_46;
    }

    __swift_destroy_boxed_opaque_existential_1((v231 + 400));
    v23 = v231 + 800;
LABEL_11:
    v20 = outlined destroy of [Int](v23, &_s12ModelCatalog19AssetBackedLLMModel_pSgMd, &_s12ModelCatalog19AssetBackedLLMModel_pSgMR);
    ++v21;
    v22 += 16;
    if (v229 == v21)
    {

      v24 = 0;
      v25 = 0;
      v0 = v231;
      v6 = v218;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_51:
  v95 = v20;
  v116 = *(v0 + 1304);
  v117 = *(v0 + 1272);
  v118 = *(v0 + 1264);
  v119 = *(v0 + 1256);

  v99 = *(v118 + 8);
  v99(v117, v119);
  outlined destroy of [Int](v116, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_52:
  *(v0 + 1536) = v95;
  *(v0 + 1528) = v99;
  outlined destroy of [Int](*(v0 + 1320), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + 640));
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 320, v0 + 680, &_s24TokenGenerationInference9BaseModel_pSgMd, &_s24TokenGenerationInference9BaseModel_pSgMR);
  v120 = v0;
  if (*(v0 + 704))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference9BaseModel_pMd, &_s24TokenGenerationInference9BaseModel_pMR);
    type metadata accessor for TGIE5FunctionObjC(0, &lazy cache variable for type metadata for TGIE5BaseModelObjC, off_27844EEB8);
    if (swift_dynamicCast())
    {
      v121 = *(v0 + 1040);
      [v95 setBaseModel_];
    }
  }

  else
  {
    outlined destroy of [Int](v0 + 680, &_s24TokenGenerationInference9BaseModel_pSgMd, &_s24TokenGenerationInference9BaseModel_pSgMR);
  }

  [v95 setUseEnergyEfficientMode_];
  v122 = MEMORY[0x223D8E6B0](*(v0 + 1056), *(v0 + 1064));
  v221 = v95;
  [v95 setAssetIdentifier_];
  v217 = v99;
  v123 = *(v0 + 1248);
  v124 = *(v0 + 1240);

  v125 = *(v0 + 64);
  v226 = *(v0 + 56);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v123, v124, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  v126 = type metadata accessor for ModelMetadata(0);
  *(v0 + 1544) = v126;
  v127 = *(v126 - 8);
  v128 = *(v127 + 48);
  *(v0 + 1552) = v128;
  *(v0 + 1560) = (v127 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v129 = v128(v124, 1, v126);
  v130 = *(v0 + 1240);
  if (v129 == 1)
  {

    outlined destroy of [Int](v130, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
    v213 = 0;
    goto LABEL_65;
  }

  v131 = *(v130 + 160);
  v132 = *(v130 + 168);

  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v130, type metadata accessor for ModelMetadata);
  if (!v132)
  {
    v213 = v131;
    v120 = v231;
LABEL_65:

    outlined destroy of AdapterMetadata((v120 + 2));

    v132 = 0;
    goto LABEL_66;
  }

  if ((v131 != v226 || v132 != v125) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v213 = v131;

    v120 = v231;
    outlined destroy of AdapterMetadata(v231 + 16);
LABEL_66:

    v140 = Logger.logObject.getter();
    v141 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v140, v141))
    {
      v142 = v120[133];
      v143 = v120[132];
      v144 = swift_slowAlloc();
      v233 = swift_slowAlloc();
      v235 = v233;
      *v144 = 136446978;
      *(v144 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v142, &v235);
      *(v144 + 12) = 2082;
      *(v144 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v226, v125, &v235);
      *(v144 + 22) = 2082;
      *(v144 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v194, v229, &v235);
      *(v144 + 32) = 2082;
      v120[126] = v213;
      v120[127] = v132;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v145 = String.init<A>(describing:)();
      v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v146, &v235);

      *(v144 + 34) = v147;
      _os_log_impl(&dword_220940000, v140, v141, "Failed to load adapter %{public}s, adapter backbone signature %{public}s does not match base model %{public}s backbone signature %{public}s", v144, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x223D90A10](v233, -1, -1);
      MEMORY[0x223D90A10](v144, -1, -1);
    }

    v234 = v120[182];
    v148 = v120[176];
    v187 = v120[177];
    v189 = v120[175];
    v204 = v120[167];
    v208 = v120[170];
    v198 = v120[157];
    v202 = v120[161];
    v192 = v120[156];
    v149 = v120[148];
    v190 = v120[147];
    v150 = v120[136];
    v151 = v120[133];
    v152 = v120[132];
    v235 = 0;
    v236 = 0xE000000000000000;
    _StringGuts.grow(_:)(70);
    MEMORY[0x223D8E780](0x2072657470616441, 0xE800000000000000);
    MEMORY[0x223D8E780](v152, v151);
    MEMORY[0x223D8E780](0x7574616E67697320, 0xEB00000000206572);
    MEMORY[0x223D8E780](v226, v125);

    MEMORY[0x223D8E780](0xD000000000000020, 0x8000000220AFD110);
    MEMORY[0x223D8E780](v194, v229);

    MEMORY[0x223D8E780](0x7574616E67697320, 0xEB00000000206572);
    v120[128] = v213;
    v120[129] = v132;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v153 = String.init<A>(describing:)();
    MEMORY[0x223D8E780](v153);

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
    (*(v148 + 16))(v150, v187, v189);
    (*(v149 + 104))(v150, *MEMORY[0x277D29D78], v190);
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    swift_willThrowTypedImpl();

    (*(v148 + 8))(v187, v189);
    outlined destroy of [Int](v192, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
    v217(v202, v198);
    outlined destroy of [Int](v204, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v208, type metadata accessor for Asset);
    outlined destroy of [Int](v228, &_s12ModelCatalog19AssetBackedLLMModel_pSgMd, &_s12ModelCatalog19AssetBackedLLMModel_pSgMR);
    outlined destroy of [Int]((v120 + 40), &_s24TokenGenerationInference9BaseModel_pSgMd, &_s24TokenGenerationInference9BaseModel_pSgMR);
    outlined destroy of [Int](v234, &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
    __swift_destroy_boxed_opaque_existential_1(v120 + 70);
    v44 = v120;
    goto LABEL_30;
  }

  v133 = *(v231 + 1248);
  v134 = *(v231 + 1232);

  v135 = v231;

  v136 = *(v231 + 40);
  v137 = *(v231 + 48);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v133, v134, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  v138 = v128(v134, 1, v126);
  v139 = *(v231 + 1232);
  if (v138 == 1)
  {

    outlined destroy of [Int](v139, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
    goto LABEL_80;
  }

  v154 = *(v139 + 176);

  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v139, type metadata accessor for ModelMetadata);
  if (!v154)
  {
    goto LABEL_80;
  }

  if (!*(v154 + 16) || (v155 = specialized __RawDictionaryStorage.find<A>(_:)(v210, v5), (v156 & 1) == 0))
  {

LABEL_80:
    v158 = 0;
    v159 = 0;
LABEL_81:
    v205 = v158;
    v227 = v136;
    outlined destroy of AdapterMetadata(v231 + 16);

    v168 = Logger.logObject.getter();
    v169 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v168, v169))
    {
      v170 = *(v231 + 1064);
      v171 = *(v231 + 1056);
      v172 = swift_slowAlloc();
      v173 = swift_slowAlloc();
      v235 = v173;
      *v172 = 136447234;
      *(v172 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v171, v170, &v235);
      *(v172 + 12) = 2082;
      *(v172 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v210, v5, &v235);
      *(v172 + 22) = 2082;
      *(v172 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v227, v137, &v235);
      *(v172 + 32) = 2082;
      *(v172 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v194, v229, &v235);
      *(v172 + 42) = 2082;
      *(v231 + 976) = v205;
      *(v231 + 984) = v159;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v174 = String.init<A>(describing:)();
      v176 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v174, v175, &v235);

      *(v172 + 44) = v176;
      v135 = v231;
      _os_log_impl(&dword_220940000, v168, v169, "Failed to load adapter %{public}s type %{public}s, type signature %{public}s does not match base model %{public}s adapter type signature %{public}s", v172, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x223D90A10](v173, -1, -1);
      MEMORY[0x223D90A10](v172, -1, -1);
    }

    v209 = v135[182];
    v177 = v135[177];
    v178 = v135[176];
    v199 = v135[167];
    v203 = v135[170];
    v191 = v135[157];
    v193 = v135[161];
    v188 = v135[156];
    v179 = v135[148];
    v185 = v135[175];
    v186 = v135[147];
    v180 = *(v231 + 1088);
    v181 = *(v231 + 1064);
    v182 = *(v231 + 1056);
    v235 = 0;
    v236 = 0xE000000000000000;
    _StringGuts.grow(_:)(92);
    MEMORY[0x223D8E780](0x2072657470616441, 0xE800000000000000);
    MEMORY[0x223D8E780](v182, v181);
    MEMORY[0x223D8E780](0x206570797420, 0xE600000000000000);
    MEMORY[0x223D8E780](v210, v5);

    MEMORY[0x223D8E780](0xD000000000000011, 0x8000000220AFD140);
    MEMORY[0x223D8E780](v227, v137);

    MEMORY[0x223D8E780](0xD00000000000001BLL, 0x8000000220AFD160);
    MEMORY[0x223D8E780](v194, v229);

    MEMORY[0x223D8E780](0xD000000000000018, 0x8000000220AFD180);
    *(v231 + 992) = v205;
    *(v231 + 1000) = v159;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v183 = String.init<A>(describing:)();
    MEMORY[0x223D8E780](v183);

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
    (*(v178 + 16))(v180, v177, v185);
    (*(v179 + 104))(v180, *MEMORY[0x277D29D78], v186);
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    v44 = v231;
    swift_willThrowTypedImpl();

    (*(v178 + 8))(v177, v185);
    outlined destroy of [Int](v188, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
    v217(v193, v191);
    outlined destroy of [Int](v199, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v203, type metadata accessor for Asset);
    outlined destroy of [Int](v228, &_s12ModelCatalog19AssetBackedLLMModel_pSgMd, &_s12ModelCatalog19AssetBackedLLMModel_pSgMR);
    outlined destroy of [Int](v231 + 320, &_s24TokenGenerationInference9BaseModel_pSgMd, &_s24TokenGenerationInference9BaseModel_pSgMR);
    v45 = v209;
    goto LABEL_26;
  }

  v157 = (*(v154 + 56) + 16 * v155);
  v158 = *v157;
  v159 = v157[1];

  if ((v158 != v136 || v159 != v137) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_81;
  }

  v160 = *(v231 + 1248);

  v162 = *(v231 + 240);
  v161 = *(v231 + 248);
  v163 = *(v231 + 256);
  v164 = *(v231 + 264);
  outlined copy of StopToken?(v162, v161, v163, v164);
  *(v231 + 1568) = specialized OnDeviceInferenceAssetRepository.specialTokensMap(_:_:)(v160, v231 + 16);
  if (v164 == 1)
  {
    v165 = *(v231 + 1224);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v231 + 1248), v165, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
    v166 = v128(v165, 1, v126);
    v167 = *(v231 + 1224);
    if (v166 == 1)
    {
      outlined destroy of [Int](*(v231 + 1224), &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
      v162 = 0;
      v161 = 0;
      v163 = 0;
      v164 = 1;
    }

    else
    {
      v162 = v167[28];
      v161 = v167[29];
      v163 = v167[30];
      v164 = v167[31];
      outlined copy of StopToken?(v162, v161, v163, v164);
      outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v167, type metadata accessor for ModelMetadata);
    }
  }

  *(v231 + 1600) = v164;
  *(v231 + 1592) = v163;
  *(v231 + 1584) = v161;
  *(v231 + 1576) = v162;
  *(v231 + 1608) = OnDeviceInferenceAssetRepository.localizationOverrideMap(_:_:)(*(v231 + 1248), v231 + 16);
  v184 = swift_task_alloc();
  *(v231 + 1616) = v184;
  *v184 = v231;
  v184[1] = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleLLMAdapter33_65818D6FA4B5F545C6B162D7CBE031AELL10llmAdapter10identifier5assety12ModelCatalog0f6BackedI0_p_SSAA0F0VtYa0W15ManagerServices0C5ErrorOYKFTQ1_;

  return specialized static LanguageModelLoader.load(from:baseModel:)(v221, v231 + 320);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleLLMAdapter33_65818D6FA4B5F545C6B162D7CBE031AELL10llmAdapter10identifier5assety12ModelCatalog0f6BackedI0_p_SSAA0F0VtYa0W15ManagerServices0C5ErrorOYKFTQ1_(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 1624) = a1;
  *(v4 + 1632) = a2;
  *(v4 + 1640) = v2;

  if (v2)
  {
    v5 = *(v4 + 1600);
    v6 = *(v4 + 1592);
    v7 = *(v4 + 1584);
    v8 = *(v4 + 1576);
    v9 = *(v4 + 1080);

    outlined consume of StopToken?(v8, v7, v6, v5);

    outlined destroy of AdapterMetadata(v4 + 16);
    v10 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleLLMAdapter33_65818D6FA4B5F545C6B162D7CBE031AELL10llmAdapter10identifier5assety12ModelCatalog0f6BackedI0_p_SSAA0F0VtYa0W15ManagerServices0C5ErrorOYKFTY3_;
    v11 = v9;
  }

  else
  {
    v11 = *(v4 + 1080);
    *(v4 + 1648) = *(v4 + 72);
    *(v4 + 274) = *(v4 + 80);
    v10 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleLLMAdapter33_65818D6FA4B5F545C6B162D7CBE031AELL10llmAdapter10identifier5assety12ModelCatalog0f6BackedI0_p_SSAA0F0VtYa0W15ManagerServices0C5ErrorOYKFTY2_;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleLLMAdapter33_65818D6FA4B5F545C6B162D7CBE031AELL10llmAdapter10identifier5assety12ModelCatalog0f6BackedI0_p_SSAA0F0VtYa0W15ManagerServices0C5ErrorOYKFTY2_()
{
  v79 = v0;
  v1 = *(v0 + 1640);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1520);
  v4 = *(v0 + 1512);
  v5 = *(v0 + 1144);
  v6 = type metadata accessor for E5TransformerLanguageModel(0);
  ObjectType = swift_getObjectType();
  v8 = swift_unknownObjectRetain_n();
  v75 = specialized E5TransformerLanguageModel.__allocating_init(e5Runner:name:)(v8, v4, v3, v6, ObjectType, v2);
  OnDeviceInferenceAssetRepository.metadataModelConfiguration(asset:)(v5);
  v9 = *(v0 + 1168);
  if (v1)
  {

    v10 = type metadata accessor for PromptTemplateConfiguration(0);
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  }

  else
  {
    (*(*(v0 + 1136) + 32))(*(v0 + 1168), *(v0 + 1144), *(v0 + 1128));
    v10 = type metadata accessor for PromptTemplateConfiguration(0);
    *(v9 + *(v10 + 20)) = 0;
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  v77 = (v0 + 880);
  v11 = *(v0 + 1160);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 1168), v11, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMR);
  type metadata accessor for PromptTemplateConfiguration(0);
  v12 = *(*(v10 - 8) + 48);
  v13 = v12(v11, 1, v10);
  outlined destroy of [Int](v11, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMR);
  if (v13 == 1)
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 1064);
      v17 = *(v0 + 1056);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v78[0] = v19;
      *v18 = 136446210;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, v78);
      _os_log_impl(&dword_220940000, v14, v15, "Did not find prompt template configuration for asset %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x223D90A10](v19, -1, -1);
      MEMORY[0x223D90A10](v18, -1, -1);
    }
  }

  else
  {
    v20 = *(v0 + 1168);
    if (!v12(v20, 1, v10))
    {
      *(v20 + *(v10 + 20)) = *(v0 + 273) & 1;
    }
  }

  v73 = *(v0 + 1544);
  v74 = *(v0 + 1552);
  v21 = *(v0 + 1496);
  v22 = *(v0 + 1432);
  v23 = *(v0 + 1424);
  v24 = *(v0 + 1344);
  v71 = *(v0 + 1216);
  v72 = *(v0 + 1248);
  v70 = *(v0 + 1168);
  v68 = *(v0 + 1360);
  v69 = *(v0 + 1152);
  v25 = *(v0 + 1104);
  v26 = *(v0 + 1072);
  __swift_project_boxed_opaque_existential_1(*(v0 + 1048), *(*(v0 + 1048) + 24));
  v27 = dispatch thunk of CatalogResource.id.getter();
  v64 = v28;
  v65 = v27;
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v26, v22, type metadata accessor for Asset);
  v21(v22, 0, 1, v24);
  v29 = type metadata accessor for UUID();
  (*(*(v29 - 8) + 56))(v25, 1, 1, v29);
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v68, v23, type metadata accessor for Asset);
  v21(v23, 0, 1, v24);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v70, v69, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMR);
  *v77 = *(v0 + 216);
  *(v0 + 896) = *(v0 + 232);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v77, v0 + 904, &_s24TokenGenerationInference18ClassifierMetadataVSgMd, &_s24TokenGenerationInference18ClassifierMetadataVSgMR);
  outlined destroy of AdapterMetadata(v0 + 16);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v72, v71, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  if (v74(v71, 1, v73) == 1)
  {
    v30 = *(v0 + 1096);
    outlined destroy of [Int](*(v0 + 1216), &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
    v31 = type metadata accessor for PromptPreprocessingTemplateVersion();
    (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
  }

  else
  {
    v32 = *(v0 + 1216);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v32 + *(*(v0 + 1544) + 64), *(v0 + 1096), &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v32, type metadata accessor for ModelMetadata);
  }

  v33 = *(v0 + 1648);
  v54 = *(v0 + 1608);
  v53 = *(v0 + 1568);
  v59 = *(v0 + 1536);
  v67 = *(v0 + 1456);
  v34 = *(v0 + 1432);
  v55 = *(v0 + 1424);
  v66 = *(v0 + 1360);
  v63 = *(v0 + 1336);
  v61 = *(v0 + 1288);
  v58 = *(v0 + 1264);
  v60 = *(v0 + 1256);
  v57 = *(v0 + 1248);
  v35 = *(v0 + 274) == 0;
  v51 = *(v0 + 1592);
  v52 = *(v0 + 1576);
  v76 = *(v0 + 1624);
  v62 = *(v0 + 1168);
  v36 = *(v0 + 1152);
  v37 = *(v0 + 1120);
  v38 = *(v0 + 1112);
  v39 = *(v0 + 1104);
  v40 = *(v0 + 1096);
  v41 = *(v0 + 1064);
  v42 = *(v0 + 1056);
  v56 = v42;
  v37[2] = v65;
  v37[3] = v64;
  if (v35)
  {
    v43 = v33;
  }

  else
  {
    v43 = 0;
  }

  *v37 = v42;
  v37[1] = v41;
  outlined init with take of Asset?(v34, v37 + v38[6], &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  *(v37 + v38[7]) = v76;
  *(v37 + v38[8]) = v75;
  v44 = (v37 + v38[9]);
  *v44 = xmmword_220AED900;
  v44[1] = 0u;
  v44[2] = 0u;
  v44[3] = 0u;
  *(v44 + 57) = 0u;
  *(v37 + v38[10]) = v53;
  *(v37 + v38[11]) = v43;
  *(v37 + v38[12]) = v54;
  outlined init with take of Asset?(v39, v37 + v38[13], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with take of Asset?(v55, v37 + v38[14], &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  outlined init with take of Asset?(v36, v37 + v38[15], &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMR);
  v45 = v37 + v38[16];
  v46 = *(v0 + 896);
  *v45 = *v77;
  *(v45 + 2) = v46;
  v47 = (v37 + v38[17]);
  *v47 = v52;
  v47[1] = v51;
  outlined init with take of Asset?(v40, v37 + v38[18], &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
  *(v0 + 304) = v38;
  *(v0 + 312) = &protocol witness table for OnDeviceInferenceAssetObjectE5Runner;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 280));
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v37, boxed_opaque_existential_1, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  specialized Dictionary.subscript.setter(v0 + 280, v56, v41);
  swift_endAccess();
  swift_unknownObjectRelease();

  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v37, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  outlined destroy of [Int](v57, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  (*(v58 + 8))(v61, v60);
  outlined destroy of [Int](v63, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v66, type metadata accessor for Asset);
  outlined destroy of [Int](v0 + 360, &_s12ModelCatalog19AssetBackedLLMModel_pSgMd, &_s12ModelCatalog19AssetBackedLLMModel_pSgMR);
  outlined destroy of [Int](v0 + 320, &_s24TokenGenerationInference9BaseModel_pSgMd, &_s24TokenGenerationInference9BaseModel_pSgMR);
  outlined destroy of [Int](v67, &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  outlined destroy of [Int](v62, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + 560));

  v49 = *(v0 + 8);

  return v49();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleLLMAdapter33_65818D6FA4B5F545C6B162D7CBE031AELL10llmAdapter10identifier5assety12ModelCatalog0f6BackedI0_p_SSAA0F0VtYa0W15ManagerServices0C5ErrorOYKFTY3_()
{
  v1 = _convertErrorToNSError(_:)();
  v2 = [v1 localizedDescription];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = [v1 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  [v1 code];
  v4 = v0[205];
  v14 = v0[192];
  v19 = v0[191];
  v5 = v0[177];
  v6 = v0[176];
  v7 = v0[175];
  v20 = v0[170];
  v21 = v0[182];
  v17 = v0[161];
  v18 = v0[167];
  v16 = v0[157];
  v15 = v0[156];
  v8 = v0[148];
  v9 = v0[147];
  v10 = v0[136];
  v11 = v4;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
  (*(v6 + 16))(v10, v5, v7);
  (*(v8 + 104))(v10, *MEMORY[0x277D29D78], v9);
  lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
  swift_willThrowTypedImpl();

  (*(v6 + 8))(v5, v7);
  outlined destroy of [Int](v15, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  v19(v17, v16);
  outlined destroy of [Int](v18, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v20, type metadata accessor for Asset);
  outlined destroy of [Int]((v0 + 45), &_s12ModelCatalog19AssetBackedLLMModel_pSgMd, &_s12ModelCatalog19AssetBackedLLMModel_pSgMR);
  outlined destroy of [Int]((v0 + 40), &_s24TokenGenerationInference9BaseModel_pSgMd, &_s24TokenGenerationInference9BaseModel_pSgMR);
  outlined destroy of [Int](v21, &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  __swift_destroy_boxed_opaque_existential_1(v0 + 70);

  v12 = v0[1];

  return v12();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = v3;
  v4[28] = a3;
  v4[25] = a1;
  v4[26] = a2;
  v4[29] = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  v4[30] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v6 = type metadata accessor for InferenceError();
  v4[36] = v6;
  v4[37] = *(v6 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = type metadata accessor for Asset(0);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v7 = type metadata accessor for AssetVersion();
  v4[43] = v7;
  v4[44] = *(v7 - 8);
  v4[45] = swift_task_alloc();
  v8 = type metadata accessor for TokenGenerationError();
  v4[46] = v8;
  v4[47] = *(v8 - 8);
  v4[48] = swift_task_alloc();
  v9 = type metadata accessor for TokenGenerationError.Context();
  v4[49] = v9;
  v4[50] = *(v9 - 8);
  v4[51] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMR);
  v4[52] = v10;
  v4[53] = *(v10 - 8);
  v4[54] = swift_task_alloc();
  type metadata accessor for AppAssetManager.CopyResult(0);
  v4[55] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  type metadata accessor for XPCCodableObject();
  v4[59] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ModelManagerServices10AuditTokenVSgMd, &_s20ModelManagerServices10AuditTokenVSgMR);
  v4[60] = swift_task_alloc();
  v11 = type metadata accessor for AuditToken();
  v4[61] = v11;
  v4[62] = *(v11 - 8);
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKFTY0_, v3, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKFTY0_()
{
  v86 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 496);
  v3 = *(v0 + 480);
  MEMORY[0x223D8DA00]();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 400);
    v4 = *(v0 + 408);
    v6 = *(v0 + 384);
    v7 = *(v0 + 392);
    v8 = *(v0 + 368);
    v9 = *(v0 + 376);
    outlined destroy of [Int](*(v0 + 480), &_s20ModelManagerServices10AuditTokenVSgMd, &_s20ModelManagerServices10AuditTokenVSgMR);
    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    (*(v5 + 16))(v6, v4, v7);
    (*(v9 + 104))(v6, *MEMORY[0x277D71AF0], v8);
    TokenGenerationError.toInferenceError()();
    (*(v9 + 8))(v6, v8);
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    swift_willThrowTypedImpl();
    (*(v5 + 8))(v4, v7);
LABEL_13:

    v42 = *(v0 + 8);

    return v42();
  }

  v10 = (*(*(v0 + 496) + 32))(*(v0 + 512), *(v0 + 480), *(v0 + 488));
  MEMORY[0x223D8DA30](v10);
  type metadata accessor for FoundationModelsExtensionInfo();
  swift_allocObject();
  v11 = FoundationModelsExtensionInfo.init(xpcObject:)();
  *(v0 + 520) = v11;
  v12 = *(v0 + 512);
  if (!v11)
  {
    v28 = *(v0 + 496);
    v29 = *(v0 + 400);
    v30 = *(v0 + 408);
    v31 = *(v0 + 384);
    v32 = *(v0 + 392);
    v34 = *(v0 + 368);
    v33 = *(v0 + 376);
    v82 = *(v0 + 488);
    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    (*(v29 + 16))(v31, v30, v32);
    (*(v33 + 104))(v31, *MEMORY[0x277D71AF0], v34);
    TokenGenerationError.toInferenceError()();
    (*(v33 + 8))(v31, v34);
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    swift_willThrowTypedImpl();
    (*(v29 + 8))(v30, v32);
    (*(v28 + 8))(v12, v82);
    goto LABEL_13;
  }

  v14 = *(v0 + 496);
  v13 = *(v0 + 504);
  v15 = *(v0 + 488);
  v16 = CustomAssetConfiguration.secureIdentifier.getter();
  v18 = v17;
  (*(v14 + 16))(v13, v12, v15);
  specialized AppAssetManager.__allocating_init(identifier:auditToken:)(v16, v18, v13);
  *(v0 + 528) = v19;
  if (!v19)
  {
    v79 = *(v0 + 512);
    v80 = *(v0 + 496);
    v36 = *(v0 + 400);
    v35 = *(v0 + 408);
    v37 = *(v0 + 384);
    v78 = *(v0 + 392);
    v38 = *(v0 + 368);
    v39 = *(v0 + 376);
    v83 = *(v0 + 488);
    _StringGuts.grow(_:)(45);

    v85[0] = 0xD00000000000002BLL;
    v85[1] = 0x8000000220AFCFD0;
    *(v0 + 608) = AuditToken.processIdentifier.getter();
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223D8E780](v40);

    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    (*(v36 + 16))(v37, v35, v78);
    (*(v39 + 104))(v37, *MEMORY[0x277D71AF0], v38);
    TokenGenerationError.toInferenceError()();
    (*(v39 + 8))(v37, v38);
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    swift_willThrowTypedImpl();

    (*(v36 + 8))(v35, v78);
    (*(v80 + 8))(v79, v83);
    goto LABEL_13;
  }

  v20 = v19;
  v21 = *(v0 + 440);
  v22 = FoundationModelsExtensionInfo.metadata.getter();
  v23 = FoundationModelsExtensionInfo.adapterWeights.getter();
  v24 = FoundationModelsExtensionInfo.draftMIL.getter();
  v25 = FoundationModelsExtensionInfo.draftWeights.getter();
  v26 = v25;
  if ((v24 & 0x100000000) != 0)
  {
    v27 = 0;
  }

  else
  {
    v27 = v24;
  }

  if ((v25 & 0x100000000) != 0)
  {
    v26 = 0;
  }

  AppAssetManager.copyAssetsIfNeeded(metadata:adapterWeights:draftMIL:draftWeights:)(v22, v23, v27 | ((HIDWORD(v24) & 1) << 32), v26 | ((HIDWORD(v25) & 1) << 32), v21);
  v41 = *(v0 + 208);
  outlined init with take of Asset?(*(v0 + 440), *(v0 + 464), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  dispatch thunk of AssetBackedResource.fetchAsset()();
  v45 = *(v0 + 424);
  v44 = *(v0 + 432);
  v46 = *(v0 + 416);
  v48 = *(v0 + 352);
  v47 = *(v0 + 360);
  v50 = *(v0 + 336);
  v49 = *(v0 + 344);
  v51 = *(v0 + 256);
  v81 = *(v0 + 248);
  v84 = *(v0 + 320);
  CatalogAsset.version.getter();
  (*(v45 + 8))(v44, v46);
  v52 = AssetVersion.number.getter();
  v54 = v53;
  (*(v48 + 8))(v47, v49);
  v55 = OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_temporaryDirectory;
  v56 = *(v51 + 16);
  *(v0 + 536) = v56;
  *(v0 + 544) = (v51 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v56(v50, v20 + v55, v81);
  v57 = (v50 + *(v84 + 20));
  *v57 = v52;
  v57[1] = v54;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v58 = *(v0 + 328);
  v59 = *(v0 + 336);
  v60 = type metadata accessor for Logger();
  *(v0 + 552) = __swift_project_value_buffer(v60, static Log.device);
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v59, v58, type metadata accessor for Asset);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();
  v63 = os_log_type_enabled(v61, v62);
  v64 = *(v0 + 328);
  if (v63)
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v85[0] = v66;
    *v65 = 136446210;
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type URL and conformance URL, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = v68;
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v64, type metadata accessor for Asset);
    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, v85);

    *(v65 + 4) = v70;
    _os_log_impl(&dword_220940000, v61, v62, "Loading custom adapter from: %{public}s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v66);
    MEMORY[0x223D90A10](v66, -1, -1);
    MEMORY[0x223D90A10](v65, -1, -1);
  }

  else
  {

    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v64, type metadata accessor for Asset);
  }

  v71 = CustomAssetConfiguration.identifier.getter();
  v73 = v72;
  *(v0 + 560) = v72;
  v74 = swift_task_alloc();
  *(v0 + 568) = v74;
  *v74 = v0;
  v74[1] = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKFTQ1_;
  v75 = *(v0 + 336);
  v76 = *(v0 + 312);
  v77 = *(v0 + 208);

  return _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleLLMAdapter33_65818D6FA4B5F545C6B162D7CBE031AELL10llmAdapter10identifier5assety12ModelCatalog0f6BackedI0_p_SSAA0F0VtYa0W15ManagerServices0C5ErrorOYKF(v77, v71, v73, v75, v76);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKFTQ1_()
{
  v2 = *v1;
  *(*v1 + 576) = v0;

  v3 = *(v2 + 216);

  if (v0)
  {
    v4 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKFTY5_;
  }

  else
  {
    v4 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKFTY2_;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKFTY2_()
{
  v82 = v0;
  v1 = *(v0 + 456);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 464), v1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 264);
    outlined destroy of [Int](*(v0 + 456), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    AppAssetManager.draftMILURL.getter(v4);
    v5 = [objc_opt_self() defaultManager];
    countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
    v7 = MEMORY[0x223D8E6B0](countAndFlagsBits);

    v8 = [v5 fileExistsAtPath_];
    v10 = *(v0 + 256);
    v9 = *(v0 + 264);
    v11 = *(v0 + 248);

    (*(v10 + 8))(v9, v11);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v77 = *(v0 + 512);
    v15 = *(v0 + 488);
    v16 = *(v0 + 496);
    v17 = *(v0 + 464);
    v18 = *(v0 + 336);
    if (v8)
    {
      if (v14)
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        v20 = "Custom adapter has draft model, but it has not been compiled. Not using speculative decoding for this request.";
LABEL_12:
        _os_log_impl(&dword_220940000, v12, v13, v20, v19, 2u);
        MEMORY[0x223D90A10](v19, -1, -1);

LABEL_14:

        outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v18, type metadata accessor for Asset);
        outlined destroy of [Int](v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        (*(v16 + 8))(v77, v15);

        v39 = *(v0 + 8);
LABEL_22:

        return v39();
      }
    }

    else if (v14)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "Custom adapter has no draft model. Not using speculative decoding for this request.";
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v21 = *(v0 + 536);
  v23 = *(v0 + 272);
  v22 = *(v0 + 280);
  v24 = *(v0 + 248);
  (*(*(v0 + 256) + 32))(v22, *(v0 + 456), v24);
  v21(v23, v22, v24);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 272);
  v29 = *(v0 + 248);
  v30 = *(v0 + 256);
  if (v27)
  {
    v31 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v80 = v78;
    *v31 = 136446210;
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type URL and conformance URL, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    v35 = *(v30 + 8);
    v35(v28, v29);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v80);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_220940000, v25, v26, "Custom adapter has compiled draft model. Loading draft model from: %{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v78);
    MEMORY[0x223D90A10](v78, -1, -1);
    MEMORY[0x223D90A10](v31, -1, -1);

    v37 = v35;
  }

  else
  {

    v37 = *(v30 + 8);
    v37(v28, v29);
  }

  *(v0 + 584) = v37;
  v38 = *(v0 + 576);
  __swift_project_boxed_opaque_existential_1((*(v0 + 216) + 192), *(*(v0 + 216) + 216));
  OnDeviceInferenceProviderDataSource.catalogResource(for:)(v0 + 96);
  if (v38)
  {

LABEL_20:
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B8Resource_pMd, &_s12ModelCatalog0B8Resource_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog019AssetBackedLLMDraftA0_pMd, &_s12ModelCatalog019AssetBackedLLMDraftA0_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  if (!*(v0 + 80))
  {
LABEL_21:
    v54 = *(v0 + 400);
    v55 = *(v0 + 408);
    v56 = *(v0 + 384);
    v57 = *(v0 + 392);
    v73 = v37;
    v59 = *(v0 + 368);
    v58 = *(v0 + 376);
    v75 = *(v0 + 336);
    v71 = *(v0 + 280);
    v60 = *(v0 + 248);
    outlined destroy of [Int](v0 + 56, &_s12ModelCatalog019AssetBackedLLMDraftA0_pSgMd, &_s12ModelCatalog019AssetBackedLLMDraftA0_pSgMR);
    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    (*(v54 + 16))(v56, v55, v57);
    v79 = *MEMORY[0x277D71AF0];
    (*(v58 + 104))(v56);
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    v61 = swift_allocError();
    TokenGenerationError.toInferenceError()();
    (*(v58 + 8))(v56, v59);
    swift_willThrow();
    (*(v54 + 8))(v55, v57);
    v73(v71, v60);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v75, type metadata accessor for Asset);
    v74 = *(v0 + 496);
    v76 = *(v0 + 488);
    v72 = *(v0 + 464);
    v63 = *(v0 + 400);
    v62 = *(v0 + 408);
    v64 = *(v0 + 384);
    v69 = *(v0 + 392);
    v66 = *(v0 + 368);
    v65 = *(v0 + 376);
    v70 = *(v0 + 512);
    v80 = 0;
    v81 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v80 = 0xD00000000000002FLL;
    v81 = 0x8000000220AFD030;
    *(v0 + 616) = AuditToken.processIdentifier.getter();
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223D8E780](v67);

    v68 = v61;
    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    (*(v63 + 16))(v64, v62, v69);
    (*(v65 + 104))(v64, v79, v66);
    TokenGenerationError.toInferenceError()();
    (*(v65 + 8))(v64, v66);
    swift_willThrowTypedImpl();

    (*(v63 + 8))(v62, v69);
    outlined destroy of [Int](v72, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v74 + 8))(v70, v76);

    v39 = *(v0 + 8);
    goto LABEL_22;
  }

  v40 = *(v0 + 536);
  v41 = *(v0 + 448);
  v42 = *(v0 + 280);
  v43 = *(v0 + 248);
  v44 = *(v0 + 256);
  outlined init with take of RandomNumberGenerator((v0 + 56), v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v45 = dispatch thunk of CatalogResource.id.getter();
  v47 = v46;
  *(v0 + 592) = v46;
  v40(v41, v42, v43);
  (*(v44 + 56))(v41, 0, 1, v43);
  v48 = swift_task_alloc();
  *(v0 + 600) = v48;
  *v48 = v0;
  v48[1] = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKFTQ3_;
  v49 = *(v0 + 448);
  v50 = *(v0 + 336);
  v51 = *(v0 + 304);
  v52 = *(v0 + 240);

  return _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleDraftModel33_65818D6FA4B5F545C6B162D7CBE031AELL05draftJ05asset10identifier21explicitBundleFileURLAA0decF14ObjectE5RunnerV0J7Catalog0f14BackedLLMDraftJ0_p_AA0F0VSS10Foundation0Z0VSgtYa0J15ManagerServices0C5ErrorOYKF(v52, v0 + 16, v50, v45, v47, v49, v51);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKFTQ3_()
{
  v2 = *v1;

  v3 = *(v2 + 448);
  v4 = *(v2 + 216);
  outlined destroy of [Int](v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  if (v0)
  {
    v5 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKFTY6_;
  }

  else
  {
    v5 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKFTY4_;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKFTY4_(uint64_t a1)
{
  v2 = v1[62];
  v16 = v1[61];
  v17 = v1[64];
  v14 = v1[73];
  v15 = v1[58];
  v12 = v1[35];
  v13 = v1[42];
  v11 = v1[31];
  v3 = v1[29];
  v4 = v1[30];
  v5 = CustomAssetConfiguration.identifier.getter();
  v7 = v6;
  v1[20] = v3;
  v1[21] = &protocol witness table for OnDeviceInferenceAssetObjectE5Runner;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 17);
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v4, boxed_opaque_existential_1, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  swift_beginAccess();
  specialized Dictionary.subscript.setter((v1 + 17), v5, v7);
  swift_endAccess();

  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v4, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  v14(v12, v11);
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v13, type metadata accessor for Asset);
  outlined destroy of [Int](v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v2 + 8))(v17, v16);
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);

  v9 = v1[1];

  return v9();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKFTY5_()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
  v5 = swift_allocError();
  (*(v4 + 32))(v6, v2, v3);
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v1, type metadata accessor for Asset);
  v19 = *(v0 + 496);
  v20 = *(v0 + 488);
  v18 = *(v0 + 464);
  v8 = *(v0 + 400);
  v7 = *(v0 + 408);
  v9 = *(v0 + 384);
  v16 = *(v0 + 392);
  v11 = *(v0 + 368);
  v10 = *(v0 + 376);
  v17 = *(v0 + 512);
  _StringGuts.grow(_:)(49);

  *(v0 + 616) = AuditToken.processIdentifier.getter();
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223D8E780](v12);

  v13 = v5;
  TokenGenerationError.Context.init(debugDescription:underlyingError:)();
  (*(v8 + 16))(v9, v7, v16);
  (*(v10 + 104))(v9, *MEMORY[0x277D71AF0], v11);
  TokenGenerationError.toInferenceError()();
  (*(v10 + 8))(v9, v11);
  swift_willThrowTypedImpl();

  (*(v8 + 8))(v7, v16);
  outlined destroy of [Int](v18, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v19 + 8))(v17, v20);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKFTY6_()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 336);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v6 = *(v0 + 280);
  v5 = *(v0 + 288);
  v7 = *(v0 + 248);
  lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
  v19 = swift_allocError();
  (*(v3 + 32))(v8, v4, v5);
  v1(v6, v7);
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v2, type metadata accessor for Asset);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v22 = *(v0 + 496);
  v23 = *(v0 + 488);
  v21 = *(v0 + 464);
  v10 = *(v0 + 400);
  v9 = *(v0 + 408);
  v11 = *(v0 + 384);
  v18 = *(v0 + 392);
  v13 = *(v0 + 368);
  v12 = *(v0 + 376);
  v20 = *(v0 + 512);
  _StringGuts.grow(_:)(49);

  *(v0 + 616) = AuditToken.processIdentifier.getter();
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223D8E780](v14);

  v15 = v19;
  TokenGenerationError.Context.init(debugDescription:underlyingError:)();
  (*(v10 + 16))(v11, v9, v18);
  (*(v12 + 104))(v11, *MEMORY[0x277D71AF0], v13);
  TokenGenerationError.toInferenceError()();
  (*(v12 + 8))(v11, v13);
  swift_willThrowTypedImpl();

  (*(v10 + 8))(v9, v18);
  outlined destroy of [Int](v21, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v22 + 8))(v20, v23);

  v16 = *(v0 + 8);

  return v16();
}

unint64_t OnDeviceInferenceAssetRepository.makeDraftingBehavior(metadataModelConfiguration:defaultParameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v71 = a1;
  v7 = *(a2 + 64);
  v8 = *(a2 + 72);
  v61 = *(a2 + 57);
  v62 = v8;
  v64 = *(a2 + 104);
  v65 = v7;
  v63 = *(a2 + 112);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18ModelConfigurationVSgMd, &_s19TokenGenerationCore18ModelConfigurationVSgMR);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = &v60[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v60[-v15];
  __swift_project_boxed_opaque_existential_1((v3 + 232), *(v3 + 256));
  v17 = off_2834512C8[0];
  type metadata accessor for OnDeviceInferenceOverrides(0);
  v17();
  if (v18)
  {
    v70 = v13;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v71, v16, &_s19TokenGenerationCore18ModelConfigurationVSgMd, &_s19TokenGenerationCore18ModelConfigurationVSgMR);
    v19 = type metadata accessor for ModelConfiguration();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v16, 1, v19) == 1)
    {
      outlined destroy of [Int](v16, &_s19TokenGenerationCore18ModelConfigurationVSgMd, &_s19TokenGenerationCore18ModelConfigurationVSgMR);
      v13 = v70;
    }

    else
    {
      v69 = ModelConfiguration.speculativeDecodingDraftTokenCount.getter();
      v22 = v21;
      (*(v20 + 8))(v16, v19);
      v13 = v70;
      if ((v22 & 1) == 0)
      {
        if (one-time initialization token for device == -1)
        {
          goto LABEL_6;
        }

        goto LABEL_73;
      }
    }
  }

  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v4 + 232), *(v4 + 256));
    v28 = v17();
    if ((v29 & 1) == 0)
    {
      v32 = v28;
      goto LABEL_18;
    }

    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v71, v13, &_s19TokenGenerationCore18ModelConfigurationVSgMd, &_s19TokenGenerationCore18ModelConfigurationVSgMR);
    v30 = type metadata accessor for ModelConfiguration();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v13, 1, v30) == 1)
    {
      outlined destroy of [Int](v13, &_s19TokenGenerationCore18ModelConfigurationVSgMd, &_s19TokenGenerationCore18ModelConfigurationVSgMR);
    }

    else
    {
      v32 = ModelConfiguration.speculativeDecodingDraftTokenCount.getter();
      v34 = v33;
      (*(v31 + 8))(v13, v30);
      if ((v34 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v32 = *(a2 + 88) == 1 || (*(a2 + 8) & 1) != 0 ? 2 : *a2;
LABEL_18:
    __swift_project_boxed_opaque_existential_1((v4 + 232), *(v4 + 256));
    v35 = (off_2834512D0)();
    if (v35 == 2)
    {
      LODWORD(v69) = *(a2 + 88) == 1 ? 0 : *(a2 + 9);
    }

    else
    {
      LODWORD(v69) = v35;
    }

    __swift_project_boxed_opaque_existential_1((v4 + 232), *(v4 + 256));
    v36 = (off_2834512D8)();
    if (v37)
    {
      v38 = *(a2 + 88) == 1 || (*(a2 + 24) & 1) != 0 ? 1 : *(a2 + 16);
      v71 = v38;
    }

    else
    {
      v71 = v36;
    }

    __swift_project_boxed_opaque_existential_1((v4 + 232), *(v4 + 256));
    v39 = (off_2834512E0)();
    if (v40)
    {
      v41 = *(a2 + 88);
      if (v41 == 1)
      {
        v68 = 0;
      }

      else
      {
        v68 = *(a2 + 32);
        LODWORD(v41) = *(a2 + 40);
      }

      v67 = v41;
    }

    else
    {
      v68 = v39;
      v67 = 0;
    }

    __swift_project_boxed_opaque_existential_1((v4 + 232), *(v4 + 256));
    v42 = (off_2834512E8)();
    if (v42 == 2)
    {
      v43 = *(a2 + 88) == 1 ? 0 : *(a2 + 113);
    }

    else
    {
      v43 = v42;
    }

    __swift_project_boxed_opaque_existential_1((v4 + 232), *(v4 + 256));
    v44 = (off_2834512F0)();
    if ((v44 & 0x100000000) != 0)
    {
      v45 = *(a2 + 88);
      if (v45 == 1)
      {
        v13 = 0;
      }

      else
      {
        v13 = *(a2 + 44);
        LODWORD(v45) = *(a2 + 48);
      }

      v66 = v45;
    }

    else
    {
      v13 = v44;
      v66 = 0;
    }

    __swift_project_boxed_opaque_existential_1((v4 + 232), *(v4 + 256));
    v46 = (off_283451300)();
    v70 = v32;
    if (v46 == 2)
    {
      v17 = *(a2 + 88) == 1 ? 0 : *(a2 + 49);
    }

    else
    {
      v17 = v46;
    }

    __swift_project_boxed_opaque_existential_1((v4 + 232), *(v4 + 256));
    v47 = (off_283451308)();
    if (v47 == 2)
    {
      v48 = *(a2 + 88) == 1 ? 0 : *(a2 + 50);
    }

    else
    {
      v48 = v47;
    }

    __swift_project_boxed_opaque_existential_1((v4 + 232), *(v4 + 256));
    result = (off_283451318)();
    if ((result & 0x100000000) != 0)
    {
      break;
    }

    v50 = 0;
    v51 = v71;
    if (*(a2 + 88) == 1)
    {
      v52 = 0;
      v53 = 0;
      goto LABEL_71;
    }

    v53 = 0;
LABEL_64:
    v50 = v61;
    v54 = v64;
    v52 = v65;
    if (v61 == 2)
    {
      v50 = 0;
      if ((v62 & 1) == 0)
      {
LABEL_66:
        if (v63)
        {
          goto LABEL_71;
        }

        goto LABEL_67;
      }
    }

    else if ((v62 & 1) == 0)
    {
      goto LABEL_66;
    }

    v52 = 0;
    if (v63)
    {
      goto LABEL_71;
    }

LABEL_67:
    if (v51 >= 1)
    {
      goto LABEL_68;
    }

LABEL_72:
    __break(1u);
LABEL_73:
    swift_once();
LABEL_6:
    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Log.device);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134349056;
      *(v26 + 4) = v69;
      _os_log_impl(&dword_220940000, v24, v25, "Reading draft steps from metadata: %{public}ld", v26, 0xCu);
      v27 = v26;
      v13 = v70;
      MEMORY[0x223D90A10](v27, -1, -1);
    }
  }

  v51 = v71;
  if (*(a2 + 88) != 1)
  {
    result = *(a2 + 52);
    v53 = *(a2 + 56);
    goto LABEL_64;
  }

  v52 = 0;
  v50 = 0;
  result = 0;
  v53 = 1;
LABEL_71:
  v54 = 1;
  if (v51 < 1)
  {
    goto LABEL_72;
  }

LABEL_68:
  v55 = v67 & 1;
  v74 = v67 & 1;
  v56 = v66 & 1;
  v73 = v66 & 1;
  v57 = v69 & 1;
  v58 = v53 & 1;
  v72 = v58;
  *a3 = v70;
  *(a3 + 8) = v57;
  v59 = v68;
  *(a3 + 16) = v51;
  *(a3 + 24) = v59;
  *(a3 + 32) = v55;
  *(a3 + 36) = v13;
  *(a3 + 40) = v56;
  *(a3 + 41) = v56 & v17;
  *(a3 + 42) = v48 & 1;
  *(a3 + 44) = result;
  *(a3 + 48) = v58;
  *(a3 + 49) = v50 & 1;
  *(a3 + 56) = v52;
  *(a3 + 64) = v54;
  *(a3 + 72) = v43 & 1;
  return result;
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC20handleImageTokenizer33_65818D6FA4B5F545C6B162D7CBE031AELL05imageJ05assety12ModelCatalog0f6BackediJ0_p_AA0F0VtYa0V15ManagerServices0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = v3;
  v4[19] = a3;
  v4[16] = a1;
  v4[17] = a2;
  v4[20] = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
  v4[21] = swift_task_alloc();
  v5 = type metadata accessor for InferenceError.Context();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  v6 = type metadata accessor for CostProfile();
  v4[25] = v6;
  v4[26] = *(v6 - 8);
  v4[27] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v4[28] = v7;
  v4[29] = *(v7 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v8 = type metadata accessor for InferenceError();
  v4[32] = v8;
  v4[33] = *(v8 - 8);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  v4[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s24TokenGenerationInference08OnDeviceC15AssetRepositoryC20handleImageTokenizer33_65818D6FA4B5F545C6B162D7CBE031AELL05imageJ05assety12ModelCatalog0f6BackediJ0_p_AA0F0VtYa0V15ManagerServices0C5ErrorOYKFTY0_, v3, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC20handleImageTokenizer33_65818D6FA4B5F545C6B162D7CBE031AELL05imageJ05assety12ModelCatalog0f6BackediJ0_p_AA0F0VtYa0V15ManagerServices0C5ErrorOYKFTY0_()
{
  v57 = v0;
  v56[1] = *MEMORY[0x277D85DE8];
  v54 = v0[16];
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  v1 = dispatch thunk of CatalogResource.id.getter();
  v3 = v2;
  v0[42] = v1;
  v0[43] = v2;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.device);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v56[0] = v8;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v3, v56);
    _os_log_impl(&dword_220940000, v5, v6, "Loading image tokenizer with identifier %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x223D90A10](v8, -1, -1);
    MEMORY[0x223D90A10](v7, -1, -1);
  }

  v10 = v0[39];
  v9 = v0[40];
  v12 = v0[28];
  v11 = v0[29];
  v13 = v0[16];
  (*(v11 + 56))(v9, 1, 1, v12);
  v15 = v54[3];
  v14 = v54[4];
  v16 = __swift_project_boxed_opaque_existential_1(v13, v15);
  v0[5] = v15;
  v0[6] = *(v14 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v16, v15);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v9, v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v18 = *(v11 + 48);
  if (v18(v10, 1, v12) == 1)
  {
    v52 = v1;
    v19 = v0[38];
    v20 = v0[37];
    v21 = v0[28];
    outlined destroy of [Int](v0[39], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    static LanguageModelLoader.findURLOfKnownModelAsset(in:source:)(v19);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v19, v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v22 = v18(v20, 1, v21);
    v23 = v0[37];
    if (v22 == 1)
    {
      v55 = v0[40];
      v53 = v0[38];
      v24 = v0[36];
      v26 = v0[32];
      v25 = v0[33];
      v27 = v0[23];
      v28 = v0[24];
      v29 = v0[22];

      outlined destroy of [Int](v23, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
      (*(v27 + 16))(v24, v28, v29);
      (*(v25 + 104))(v24, *MEMORY[0x277D29D78], v26);
      lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
      swift_willThrowTypedImpl();
      (*(v27 + 8))(v28, v29);
      outlined destroy of [Int](v53, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      outlined destroy of [Int](v55, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(v25 + 32))(v0[19], v0[36], v0[32]);
      __swift_destroy_boxed_opaque_existential_1(v0 + 2);

      v36 = v0[1];

      return v36();
    }

    v33 = v0[41];
    v34 = v0[34];
    (*(v0[29] + 32))(v0[30], v0[37], v0[28]);
    v35 = URL.path(percentEncoded:)(1);
    v38 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC25modelConfigurationWithURL33_65818D6FA4B5F545C6B162D7CBE031AELL0H4Path0H8Resource07adapterV11InformationSo017TGIMutableE5ModelI4ObjCC_AA13ModelMetadataVSgtSS_12ModelCatalog0f6BackedV0_pAA07AdaptervX0VSgt20ModelManagerServices0C5ErrorOYKF(v33, v35._countAndFlagsBits, v35._object, (v0 + 2), 0, 0, 0, 0, v34);
    v42 = v0[38];
    v43 = v0[29];
    v44 = v0[30];
    v45 = v0[28];

    (*(v43 + 8))(v44, v45);
    outlined destroy of [Int](v42, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v30 = v0[41];
    v31 = v0[35];
    (*(v0[29] + 32))(v0[31], v0[39], v0[28]);
    v32 = URL.path(percentEncoded:)(1);
    v38 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC25modelConfigurationWithURL33_65818D6FA4B5F545C6B162D7CBE031AELL0H4Path0H8Resource07adapterV11InformationSo017TGIMutableE5ModelI4ObjCC_AA13ModelMetadataVSgtSS_12ModelCatalog0f6BackedV0_pAA07AdaptervX0VSgt20ModelManagerServices0C5ErrorOYKF(v30, v32._countAndFlagsBits, v32._object, (v0 + 2), 0, 0, 0, 0, v31);
    v52 = v1;
    v39 = v0[31];
    v41 = v0[28];
    v40 = v0[29];

    (*(v40 + 8))(v39, v41);
  }

  v0[44] = v38;
  v46 = v0[41];
  v47 = v0[26];
  v48 = v0[27];
  v49 = v0[25];
  v50 = v0[16];
  outlined destroy of [Int](v0[40], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of [Int](v46, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_project_boxed_opaque_existential_1(v50, v54[3]);
  dispatch thunk of ManagedResource.cost.getter();
  LOBYTE(v46) = CostProfile.energyEfficientMode.getter();
  (*(v47 + 8))(v48, v49);
  [v38 setUseEnergyEfficientMode_];
  v51 = MEMORY[0x223D8E6B0](v52, v3);
  [v38 setAssetIdentifier_];

  return MEMORY[0x2822009F8](_s24TokenGenerationInference08OnDeviceC15AssetRepositoryC20handleImageTokenizer33_65818D6FA4B5F545C6B162D7CBE031AELL05imageJ05assety12ModelCatalog0f6BackediJ0_p_AA0F0VtYa0V15ManagerServices0C5ErrorOYKFTY1_, 0, 0);
}

void sub_220A04CAC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x220A04CB4);
  }

  _Unwind_Resume(a1);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC20handleImageTokenizer33_65818D6FA4B5F545C6B162D7CBE031AELL05imageJ05assety12ModelCatalog0f6BackediJ0_p_AA0F0VtYa0V15ManagerServices0C5ErrorOYKFTY1_()
{
  v1 = v0[44];
  v2 = objc_allocWithZone(E5RunnerImageTokenizerObjC);
  v0[15] = 0;
  v3 = [v2 initWithModelConfiguration:v1 error:v0 + 15];
  v0[45] = v3;
  v4 = v0[15];
  v5 = v0[44];
  v6 = v0[18];
  if (v3)
  {
    v7 = v4;

    v8 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC20handleImageTokenizer33_65818D6FA4B5F545C6B162D7CBE031AELL05imageJ05assety12ModelCatalog0f6BackediJ0_p_AA0F0VtYa0V15ManagerServices0C5ErrorOYKFTY2_;
  }

  else
  {
    v9 = v4;
    v0[46] = _convertNSErrorToError(_:)();

    swift_willThrow();

    v8 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC20handleImageTokenizer33_65818D6FA4B5F545C6B162D7CBE031AELL05imageJ05assety12ModelCatalog0f6BackediJ0_p_AA0F0VtYa0V15ManagerServices0C5ErrorOYKFTY3_;
  }

  return MEMORY[0x2822009F8](v8, v6, 0);
}

void sub_220A04DF8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __break(1u);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC20handleImageTokenizer33_65818D6FA4B5F545C6B162D7CBE031AELL05imageJ05assety12ModelCatalog0f6BackediJ0_p_AA0F0VtYa0V15ManagerServices0C5ErrorOYKFTY2_()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 144);
  __swift_project_boxed_opaque_existential_1((v2 + 232), *(v2 + 256));
  v3 = off_283451328[0];
  type metadata accessor for OnDeviceInferenceOverrides(0);
  v4 = v1;
  v5 = v3();
  v7 = v6;
  __swift_project_boxed_opaque_existential_1((v2 + 232), *(v2 + 256));
  v8 = (off_283451330)();
  v10 = v9;
  __swift_project_boxed_opaque_existential_1((v2 + 232), *(v2 + 256));
  v11 = (off_283451340)();
  v13 = v12;
  v35 = [v4 _inputBytesPerPixel];
  v14 = [*(v0 + 360) _inputImageDimension];
  v15 = [*(v0 + 360) _inputImageDimension];

  if (v14 != v15)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v34 = [*(v0 + 360) _inputImageDimension];
  v32 = *(v0 + 360);
  v33 = *(v0 + 352);
  v16 = *(v0 + 344);
  v31 = *(v0 + 336);
  if (v13)
  {
    v17 = 10000000;
  }

  else
  {
    v17 = v11;
  }

  v18 = *(v0 + 160);
  v19 = *(v0 + 168);
  if (v10)
  {
    v20 = 100014;
  }

  else
  {
    v20 = v8;
  }

  v30 = v20;
  if (v7)
  {
    v21 = 100013;
  }

  else
  {
    v21 = v5;
  }

  v22 = v18[6];
  v23 = type metadata accessor for Asset(0);
  (*(*(v23 - 8) + 56))(v19 + v22, 1, 1, v23);
  type metadata accessor for ImageEmbeddingCache();
  v24 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13AsyncLRUCacheCyAA19ImageEmbeddingCacheC3Key33_CFAE1BBD2BB7BB3F3F8CA2528C3DB6E7LLVSay10Foundation4DataVGGMd, &_s24TokenGenerationInference13AsyncLRUCacheCyAA19ImageEmbeddingCacheC3Key33_CFAE1BBD2BB7BB3F3F8CA2528C3DB6E7LLVSay10Foundation4DataVGGMR);
  v25 = swift_allocObject();

  swift_defaultActor_initialize();
  v25[14] = 0;
  v25[15] = 0;
  v25[16] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC24TokenGenerationInference13AsyncLRUCacheC6KeyRef33_8DC87293709CC156815E18BD803FE0EELLCyAC19ImageEmbeddingCacheC0H033_CFAE1BBD2BB7BB3F3F8CA2528C3DB6E7LLVSay10Foundation4DataVG_G_AC10LinkedListAGLLV4NodeCyAE0R4DataAGLLVyAmQ_G_GTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v25[17] = 0;
  v25[18] = v17;
  *(v24 + 16) = v25;
  *v19 = v31;
  v19[1] = v16;
  v19[2] = v32;
  v19[3] = &protocol witness table for E5RunnerImageTokenizerObjC;
  v26 = (v19 + v18[7]);
  *v26 = 8;
  v26[1] = v34;
  v26[2] = 1344;
  v26[3] = v35;
  v26[4] = v21;
  v26[5] = v30;
  v26[6] = v17;
  *(v19 + v18[8]) = v24;
  *(v0 + 80) = v18;
  *(v0 + 88) = &protocol witness table for OnDeviceInferenceAssetObjectImageTokenizer;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v19, boxed_opaque_existential_1, type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v0 + 56, v31, v16);
  swift_endAccess();

  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v19, type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer);

  v28 = *(v0 + 8);

  return v28();
}

void sub_220A052A4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x220A052ACLL);
  }

  _Unwind_Resume(a1);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC20handleImageTokenizer33_65818D6FA4B5F545C6B162D7CBE031AELL05imageJ05assety12ModelCatalog0f6BackediJ0_p_AA0F0VtYa0V15ManagerServices0C5ErrorOYKFTY3_()
{
  v1 = _convertErrorToNSError(_:)();
  v2 = [v1 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = [v1 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  [v1 code];
  v15 = v1;
  v4 = v0[46];
  v14 = v0[44];
  v6 = v0[32];
  v5 = v0[33];
  v8 = v0[23];
  v7 = v0[24];
  v9 = v0[22];
  v10 = v0[19];
  v11 = v4;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
  (*(v8 + 16))(v10, v7, v9);
  (*(v5 + 104))(v10, *MEMORY[0x277D29D78], v6);
  lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
  swift_willThrowTypedImpl();

  (*(v8 + 8))(v7, v9);

  v12 = v0[1];

  return v12();
}

void sub_220A05588(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x220A05590);
  }

  _Unwind_Resume(a1);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleDraftModel33_65818D6FA4B5F545C6B162D7CBE031AELL05draftJ05asset10identifier21explicitBundleFileURLAA0decF14ObjectE5RunnerV0J7Catalog0f14BackedLLMDraftJ0_p_AA0F0VSS10Foundation0Z0VSgtYa0J15ManagerServices0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[117] = a7;
  v8[116] = v7;
  v8[115] = a6;
  v8[114] = a5;
  v8[113] = a4;
  v8[112] = a3;
  v8[111] = a2;
  v8[110] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
  v8[118] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8[119] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  v8[120] = swift_task_alloc();
  v8[121] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMR);
  v8[122] = swift_task_alloc();
  v8[123] = swift_task_alloc();
  v8[124] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18ModelConfigurationVSgMd, &_s19TokenGenerationCore18ModelConfigurationVSgMR);
  v8[125] = swift_task_alloc();
  v8[126] = swift_task_alloc();
  v9 = type metadata accessor for InferenceError.Context();
  v8[127] = v9;
  v8[128] = *(v9 - 8);
  v8[129] = swift_task_alloc();
  v10 = type metadata accessor for CostProfile();
  v8[130] = v10;
  v8[131] = *(v10 - 8);
  v8[132] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v8[133] = swift_task_alloc();
  v8[134] = swift_task_alloc();
  v8[135] = swift_task_alloc();
  v11 = type metadata accessor for URL();
  v8[136] = v11;
  v8[137] = *(v11 - 8);
  v8[138] = swift_task_alloc();
  v8[139] = swift_task_alloc();
  v12 = type metadata accessor for InferenceError();
  v8[140] = v12;
  v8[141] = *(v12 - 8);
  v8[142] = swift_task_alloc();
  v8[143] = swift_task_alloc();
  v8[144] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  v8[145] = swift_task_alloc();
  v8[146] = swift_task_alloc();
  v8[147] = swift_task_alloc();
  v8[148] = swift_task_alloc();
  v8[149] = swift_task_alloc();
  v8[150] = swift_task_alloc();
  v8[151] = swift_task_alloc();
  v8[152] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleDraftModel33_65818D6FA4B5F545C6B162D7CBE031AELL05draftJ05asset10identifier21explicitBundleFileURLAA0decF14ObjectE5RunnerV0J7Catalog0f14BackedLLMDraftJ0_p_AA0F0VSS10Foundation0Z0VSgtYa0J15ManagerServices0C5ErrorOYKFTY0_, v7, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleDraftModel33_65818D6FA4B5F545C6B162D7CBE031AELL05draftJ05asset10identifier21explicitBundleFileURLAA0decF14ObjectE5RunnerV0J7Catalog0f14BackedLLMDraftJ0_p_AA0F0VSS10Foundation0Z0VSgtYa0J15ManagerServices0C5ErrorOYKFTY0_()
{
  v49 = v0;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 1224) = __swift_project_value_buffer(v1, static Log.device);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 912);
    v5 = *(v0 + 904);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v48 = v7;
    *v6 = 136446210;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v48);
    _os_log_impl(&dword_220940000, v2, v3, "Loading draft model with identifier %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x223D90A10](v7, -1, -1);
    MEMORY[0x223D90A10](v6, -1, -1);
  }

  v8 = *(v0 + 1096);
  v9 = *(v0 + 1088);
  v10 = *(v0 + 1080);
  v11 = *(v0 + 920);
  v12 = *(v0 + 888);
  v13 = v12[3];
  v14 = v12[4];
  v15 = __swift_project_boxed_opaque_existential_1(v12, v13);
  *(v0 + 760) = v13;
  *(v0 + 768) = *(v14 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 736));
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v15, v13);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v11, v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v17 = *(v8 + 48);
  if (v17(v10, 1, v9) == 1)
  {
    v46 = v12;
    v18 = *(v0 + 1088);
    v19 = *(v0 + 1072);
    v20 = *(v0 + 1064);
    outlined destroy of [Int](*(v0 + 1080), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    static LanguageModelLoader.findURLOfKnownModelAsset(in:source:)(v19);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v19, v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (v17(v20, 1, v18) == 1)
    {
      v21 = *(v0 + 1152);
      v22 = *(v0 + 1128);
      v23 = *(v0 + 1120);
      v47 = *(v0 + 1072);
      v24 = *(v0 + 1032);
      v25 = *(v0 + 1024);
      v26 = *(v0 + 1016);
      outlined destroy of [Int](*(v0 + 1064), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
      (*(v25 + 16))(v21, v24, v26);
      (*(v22 + 104))(v21, *MEMORY[0x277D29D78], v23);
      lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
      swift_willThrowTypedImpl();
      (*(v25 + 8))(v24, v26);
      outlined destroy of [Int](v47, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(v22 + 32))(*(v0 + 936), *(v0 + 1152), *(v0 + 1120));
      __swift_destroy_boxed_opaque_existential_1((v0 + 736));

      v33 = *(v0 + 8);

      return v33();
    }

    v30 = *(v0 + 1216);
    v31 = *(v0 + 1136);
    (*(*(v0 + 1096) + 32))(*(v0 + 1104), *(v0 + 1064), *(v0 + 1088));
    v32 = URL.path(percentEncoded:)(1);
    v35 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC25modelConfigurationWithURL33_65818D6FA4B5F545C6B162D7CBE031AELL0H4Path0H8Resource07adapterV11InformationSo017TGIMutableE5ModelI4ObjCC_AA13ModelMetadataVSgtSS_12ModelCatalog0f6BackedV0_pAA07AdaptervX0VSgt20ModelManagerServices0C5ErrorOYKF(v30, v32._countAndFlagsBits, v32._object, v0 + 736, 0, 0, 0, 0, v31);
    v36 = *(v0 + 1104);
    v37 = *(v0 + 1096);
    v38 = *(v0 + 1088);
    v39 = *(v0 + 1072);

    (*(v37 + 8))(v36, v38);
    outlined destroy of [Int](v39, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v27 = *(v0 + 1216);
    v28 = *(v0 + 1144);
    (*(*(v0 + 1096) + 32))(*(v0 + 1112), *(v0 + 1080), *(v0 + 1088));
    v29 = URL.path(percentEncoded:)(1);
    v35 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC25modelConfigurationWithURL33_65818D6FA4B5F545C6B162D7CBE031AELL0H4Path0H8Resource07adapterV11InformationSo017TGIMutableE5ModelI4ObjCC_AA13ModelMetadataVSgtSS_12ModelCatalog0f6BackedV0_pAA07AdaptervX0VSgt20ModelManagerServices0C5ErrorOYKF(v27, v29._countAndFlagsBits, v29._object, v0 + 736, 0, 0, 0, 0, v28);
    v46 = v12;
    (*(*(v0 + 1096) + 8))(*(v0 + 1112), *(v0 + 1088));
  }

  *(v0 + 1232) = v35;
  v40 = *(v0 + 1056);
  v41 = *(v0 + 1048);
  v42 = *(v0 + 1040);
  v43 = *(v0 + 888);
  __swift_destroy_boxed_opaque_existential_1((v0 + 736));
  __swift_project_boxed_opaque_existential_1(v43, v46[3]);
  dispatch thunk of ManagedResource.cost.getter();
  LOBYTE(v43) = CostProfile.energyEfficientMode.getter();
  (*(v41 + 8))(v40, v42);
  [v35 setUseEnergyEfficientMode_];
  v44 = MEMORY[0x223D8E6B0](*(v0 + 904), *(v0 + 912));
  [v35 setAssetIdentifier_];

  [v35 setIgnoreUnknownTokens_];
  *(v0 + 808) = 0;
  *(v0 + 776) = 0u;
  *(v0 + 792) = 0u;
  v45 = swift_task_alloc();
  *(v0 + 1240) = v45;
  *v45 = v0;
  v45[1] = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleDraftModel33_65818D6FA4B5F545C6B162D7CBE031AELL05draftJ05asset10identifier21explicitBundleFileURLAA0decF14ObjectE5RunnerV0J7Catalog0f14BackedLLMDraftJ0_p_AA0F0VSS10Foundation0Z0VSgtYa0J15ManagerServices0C5ErrorOYKFTQ1_;

  return specialized static LanguageModelLoader.load(from:baseModel:)(v35, v0 + 776);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleDraftModel33_65818D6FA4B5F545C6B162D7CBE031AELL05draftJ05asset10identifier21explicitBundleFileURLAA0decF14ObjectE5RunnerV0J7Catalog0f14BackedLLMDraftJ0_p_AA0F0VSS10Foundation0Z0VSgtYa0J15ManagerServices0C5ErrorOYKFTQ1_(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[156] = a1;
  v5[157] = a2;
  v5[158] = v2;

  v6 = v4[116];
  outlined destroy of [Int]((v5 + 97), &_s24TokenGenerationInference9BaseModel_pSgMd, &_s24TokenGenerationInference9BaseModel_pSgMR);
  if (v2)
  {
    v7 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleDraftModel33_65818D6FA4B5F545C6B162D7CBE031AELL05draftJ05asset10identifier21explicitBundleFileURLAA0decF14ObjectE5RunnerV0J7Catalog0f14BackedLLMDraftJ0_p_AA0F0VSS10Foundation0Z0VSgtYa0J15ManagerServices0C5ErrorOYKFTY3_;
  }

  else
  {
    v7 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleDraftModel33_65818D6FA4B5F545C6B162D7CBE031AELL05draftJ05asset10identifier21explicitBundleFileURLAA0decF14ObjectE5RunnerV0J7Catalog0f14BackedLLMDraftJ0_p_AA0F0VSS10Foundation0Z0VSgtYa0J15ManagerServices0C5ErrorOYKFTY2_;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleDraftModel33_65818D6FA4B5F545C6B162D7CBE031AELL05draftJ05asset10identifier21explicitBundleFileURLAA0decF14ObjectE5RunnerV0J7Catalog0f14BackedLLMDraftJ0_p_AA0F0VSS10Foundation0Z0VSgtYa0J15ManagerServices0C5ErrorOYKFTY2_()
{
  v126 = v0;
  v1 = *(v0 + 1256);
  v2 = *(v0 + 1248);
  v3 = *(v0 + 1216);
  v4 = *(v0 + 1208);
  v5 = *(v0 + 912);
  v6 = *(v0 + 904);
  v7 = type metadata accessor for E5TransformerLanguageModel(0);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain_n();

  v120 = specialized E5TransformerLanguageModel.__allocating_init(e5Runner:name:)(v2, v6, v5, v7, ObjectType, v1);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v3, v4, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  v9 = type metadata accessor for ModelMetadata(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v4, 1, v9) == 1)
  {
    outlined destroy of [Int](*(v0 + 1208), &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
    v119 = 0;
  }

  else
  {
    v11 = *(v0 + 1208);
    v12 = *(v11 + 56);
    v13 = *(v11 + 88);
    v14 = *(v11 + 40);
    *(v0 + 528) = *(v11 + 72);
    *(v0 + 544) = v13;
    *(v0 + 496) = v14;
    *(v0 + 512) = v12;
    v15 = *(v11 + 120);
    v16 = *(v11 + 136);
    v17 = *(v11 + 104);
    *(v0 + 608) = *(v11 + 152);
    *(v0 + 576) = v15;
    *(v0 + 592) = v16;
    *(v0 + 560) = v17;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 496, v0 + 616, &_s24TokenGenerationInference17DefaultParametersVSgMd, &_s24TokenGenerationInference17DefaultParametersVSgMR);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v11, type metadata accessor for ModelMetadata);
    if (*(v0 + 584) == 1)
    {
      v119 = 0;
    }

    else
    {
      v18 = *(v0 + 560);
      v19 = *(v0 + 568);
      outlined destroy of [Int](v0 + 496, &_s24TokenGenerationInference17DefaultParametersVSgMd, &_s24TokenGenerationInference17DefaultParametersVSgMR);
      if (v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = v18;
      }

      v119 = v20;
    }
  }

  v21 = *(v0 + 1264);
  OnDeviceInferenceAssetRepository.metadataModelConfiguration(asset:)(*(v0 + 1008));
  v121 = v10;
  if (v21)
  {

    v21 = 1;
  }

  v22 = *(v0 + 1008);
  v23 = *(v0 + 1000);
  v24 = type metadata accessor for ModelConfiguration();
  v25 = *(v24 - 8);
  (*(v25 + 56))(v22, v21, 1, v24);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v22, v23, &_s19TokenGenerationCore18ModelConfigurationVSgMd, &_s19TokenGenerationCore18ModelConfigurationVSgMR);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    v26 = *(v0 + 992);
    v27 = type metadata accessor for PromptTemplateConfiguration(0);
    (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
  }

  else
  {
    v28 = *(v0 + 992);
    (*(v25 + 32))(v28, *(v0 + 1000), v24);
    v27 = type metadata accessor for PromptTemplateConfiguration(0);
    *(v28 + *(v27 + 20)) = 0;
    (*(*(v27 - 8) + 56))(v28, 0, 1, v27);
  }

  v29 = *(v0 + 984);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 992), v29, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMR);
  type metadata accessor for PromptTemplateConfiguration(0);
  v30 = *(*(v27 - 8) + 48);
  v31 = v30(v29, 1, v27);
  outlined destroy of [Int](v29, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMR);
  if (v31 == 1)
  {

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 912);
      v35 = *(v0 + 904);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v125[0] = v37;
      *v36 = 136446210;
      *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, v125);
      _os_log_impl(&dword_220940000, v32, v33, "Did not find prompt template configuration for asset %{public}s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x223D90A10](v37, -1, -1);
      MEMORY[0x223D90A10](v36, -1, -1);
    }
  }

  else if (!v30(*(v0 + 992), 1, v27))
  {
    v38 = *(v0 + 1200);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 1216), v38, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
    v39 = v121(v38, 1, v9);
    v40 = *(v0 + 1200);
    if (v39 == 1)
    {
      outlined destroy of [Int](v40, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
      v41 = 0;
    }

    else
    {
      v41 = *(v40 + 192);
      outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v40, type metadata accessor for ModelMetadata);
    }

    *(*(v0 + 992) + *(v27 + 20)) = v41 & 1;
  }

  v42 = *(v0 + 1216);
  v43 = *(v0 + 1192);
  v44 = *(v0 + 968);
  v45 = *(v0 + 896);
  __swift_project_boxed_opaque_existential_1(*(v0 + 888), *(*(v0 + 888) + 24));
  v46 = dispatch thunk of CatalogResource.id.getter();
  v117 = v47;
  v118 = v46;
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v45, v44, type metadata accessor for Asset);
  v48 = type metadata accessor for Asset(0);
  v49 = (*(v48 - 8) + 56);
  v115 = *v49;
  (*v49)(v44, 0, 1, v48);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v42, v43, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  v50 = v121(v43, 1, v9);
  v51 = *(v0 + 1192);
  if (v50 == 1)
  {
    outlined destroy of [Int](*(v0 + 1192), &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
    *(v0 + 136) = 0u;
    *(v0 + 152) = 0u;
    *(v0 + 168) = 0u;
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0;
    *(v0 + 224) = 1;
    *(v0 + 232) = 0;
    *(v0 + 240) = 0;
    *(v0 + 248) = 0;
  }

  else
  {
    v52 = *(v51 + 40);
    v53 = *(v51 + 56);
    v54 = *(v51 + 88);
    *(v0 + 288) = *(v51 + 72);
    *(v0 + 304) = v54;
    *(v0 + 256) = v52;
    *(v0 + 272) = v53;
    v55 = *(v51 + 104);
    v56 = *(v51 + 120);
    v57 = *(v51 + 136);
    *(v0 + 368) = *(v51 + 152);
    *(v0 + 336) = v56;
    *(v0 + 352) = v57;
    *(v0 + 320) = v55;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 256, v0 + 376, &_s24TokenGenerationInference17DefaultParametersVSgMd, &_s24TokenGenerationInference17DefaultParametersVSgMR);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v51, type metadata accessor for ModelMetadata);
    v58 = *(v0 + 336);
    *(v0 + 200) = *(v0 + 320);
    *(v0 + 216) = v58;
    *(v0 + 232) = *(v0 + 352);
    v59 = *(v0 + 272);
    *(v0 + 136) = *(v0 + 256);
    *(v0 + 152) = v59;
    v60 = *(v0 + 304);
    *(v0 + 168) = *(v0 + 288);
    *(v0 + 248) = *(v0 + 368);
    *(v0 + 184) = v60;
  }

  v61 = *(v0 + 1216);
  v62 = *(v0 + 1184);
  v63 = *(v0 + 1008);
  v64 = *(v0 + 216);
  *(v0 + 80) = *(v0 + 200);
  *(v0 + 96) = v64;
  *(v0 + 112) = *(v0 + 232);
  *(v0 + 128) = *(v0 + 248);
  v65 = *(v0 + 152);
  *(v0 + 16) = *(v0 + 136);
  *(v0 + 32) = v65;
  v66 = *(v0 + 184);
  *(v0 + 48) = *(v0 + 168);
  *(v0 + 64) = v66;
  OnDeviceInferenceAssetRepository.makeDraftingBehavior(metadataModelConfiguration:defaultParameters:)(v63, v0 + 16, v123);
  outlined destroy of [Int](v0 + 136, &_s24TokenGenerationInference17DefaultParametersVSgMd, &_s24TokenGenerationInference17DefaultParametersVSgMR);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v61, v62, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  v67 = v121(v62, 1, v9);
  v68 = *(v0 + 1184);
  if (v67 == 1)
  {
    outlined destroy of [Int](*(v0 + 1184), &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
    v116 = 0;
  }

  else
  {
    v116 = *(v68 + 32);

    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v68, type metadata accessor for ModelMetadata);
  }

  v69 = *(v0 + 1176);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 1216), v69, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  v70 = v121(v69, 1, v9);
  v71 = *(v0 + 1176);
  v72 = v9;
  if (v70 == 1)
  {
    outlined destroy of [Int](*(v0 + 1176), &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
    v114 = 0;
  }

  else
  {
    v114 = *(v71 + 184);

    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v71, type metadata accessor for ModelMetadata);
  }

  v73 = *(v0 + 1216);
  v74 = *(v0 + 1168);
  v75 = *(v0 + 992);
  v76 = *(v0 + 976);
  v77 = *(v0 + 960);
  v78 = *(v0 + 952);
  v79 = type metadata accessor for UUID();
  (*(*(v79 - 8) + 56))(v78, 1, 1, v79);
  v115(v77, 1, 1, v48);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v75, v76, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMR);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v73, v74, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  v80 = v121(v74, 1, v72);
  v81 = *(v0 + 1168);
  if (v80 == 1)
  {
    outlined destroy of [Int](*(v0 + 1168), &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
    v113 = 0;
    v111 = 0;
    v112 = 0;
    v110 = 1;
  }

  else
  {
    v113 = v81[28];
    v111 = v81[30];
    v112 = v81[29];
    v110 = v81[31];
    outlined copy of StopToken?(v113, v112, v111, v110);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v81, type metadata accessor for ModelMetadata);
  }

  v82 = *(v0 + 1160);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 1216), v82, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  v83 = v121(v82, 1, v72);
  v84 = *(v0 + 1160);
  v85 = *(v0 + 944);
  if (v83 == 1)
  {
    outlined destroy of [Int](v84, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
    v86 = type metadata accessor for PromptPreprocessingTemplateVersion();
    (*(*(v86 - 8) + 56))(v85, 1, 1, v86);
  }

  else
  {
    v87 = *(v72 + 64);
    v88 = *(v0 + 1160);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v84 + v87, *(v0 + 944), &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v88, type metadata accessor for ModelMetadata);
  }

  v107 = *(v0 + 1232);
  v109 = *(v0 + 1216);
  v106 = *(v0 + 1008);
  v108 = *(v0 + 992);
  v89 = *(v0 + 968);
  v90 = *(v0 + 960);
  v91 = *(v0 + 952);
  v92 = *(v0 + 944);
  v105 = *(v0 + 976);
  v93 = *(v0 + 912);
  v94 = *(v0 + 904);
  v95 = *(v0 + 880);
  v96 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  v122 = *(v0 + 1248);
  *v95 = v94;
  v95[1] = v93;
  v95[2] = v118;
  v95[3] = v117;
  outlined init with take of Asset?(v89, v95 + v96[6], &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  *(v95 + v96[7]) = v122;
  *(v95 + v96[8]) = v120;
  v97 = (v95 + v96[9]);
  v98 = v124[0];
  v97[2] = v123[2];
  v97[3] = v98;
  *(v97 + 57) = *(v124 + 9);
  v99 = v123[1];
  *v97 = v123[0];
  v97[1] = v99;
  *(v95 + v96[10]) = v116;
  *(v95 + v96[11]) = v119;
  *(v95 + v96[12]) = v114;
  outlined init with take of Asset?(v91, v95 + v96[13], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with take of Asset?(v90, v95 + v96[14], &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  outlined init with take of Asset?(v105, v95 + v96[15], &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMR);
  v100 = (v95 + v96[16]);
  *v100 = 0;
  v100[1] = 0;
  v100[2] = 0;
  v101 = (v95 + v96[17]);
  *v101 = v113;
  v101[1] = v112;
  v101[2] = v111;
  v101[3] = v110;
  outlined init with take of Asset?(v92, v95 + v96[18], &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
  *(v0 + 840) = v96;
  *(v0 + 848) = &protocol witness table for OnDeviceInferenceAssetObjectE5Runner;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 816));
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v95, boxed_opaque_existential_1, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  swift_beginAccess();
  swift_bridgeObjectRetain_n();

  specialized Dictionary.subscript.setter(v0 + 816, v94, v93);
  swift_endAccess();
  swift_unknownObjectRelease();

  outlined destroy of [Int](v106, &_s19TokenGenerationCore18ModelConfigurationVSgMd, &_s19TokenGenerationCore18ModelConfigurationVSgMR);
  outlined destroy of [Int](v109, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  outlined destroy of [Int](v108, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMR);

  v103 = *(v0 + 8);

  return v103();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleDraftModel33_65818D6FA4B5F545C6B162D7CBE031AELL05draftJ05asset10identifier21explicitBundleFileURLAA0decF14ObjectE5RunnerV0J7Catalog0f14BackedLLMDraftJ0_p_AA0F0VSS10Foundation0Z0VSgtYa0J15ManagerServices0C5ErrorOYKFTY3_()
{
  v1 = _convertErrorToNSError(_:)();
  v2 = [v1 localizedDescription];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = [v1 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  [v1 code];
  v4 = v0[158];
  v14 = v0[154];
  v15 = v0[152];
  v5 = v0[141];
  v6 = v0[140];
  v7 = v0[129];
  v8 = v0[128];
  v9 = v0[127];
  v10 = v0[117];
  v11 = v4;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
  (*(v8 + 16))(v10, v7, v9);
  (*(v5 + 104))(v10, *MEMORY[0x277D29D78], v6);
  lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
  swift_willThrowTypedImpl();

  (*(v8 + 8))(v7, v9);
  outlined destroy of [Int](v15, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);

  v12 = v0[1];

  return v12();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC19loadTokenizerAtPath4pathySS_t20ModelManagerServices0C5ErrorOYKF(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v51 = a3;
  v5 = v4;
  v6 = v3;
  v56 = type metadata accessor for InferenceError.Context();
  v52 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = __swift_project_value_buffer(v12, static Log.device);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v50 = v13;
    v17 = v16;
    v18 = swift_slowAlloc();
    *&v54[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v54);
    _os_log_impl(&dword_220940000, v14, v15, "Loading tokenizer at path %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v19 = v18;
    v5 = v4;
    MEMORY[0x223D90A10](v19, -1, -1);
    MEMORY[0x223D90A10](v17, -1, -1);
  }

  swift_beginAccess();
  v20 = *(v6 + 128);
  if (*(v20 + 16))
  {

    v21 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v22)
    {
      outlined init with copy of DeterministicLanguageModelProtocol(*(v20 + 56) + 40 * v21, v54);

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v53[0] = v26;
        *v25 = 136315138;
        *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v53);
        _os_log_impl(&dword_220940000, v23, v24, "Tokenizer at path is already loaded %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x223D90A10](v26, -1, -1);
        MEMORY[0x223D90A10](v25, -1, -1);
      }

      v53[0] = 0x657A696E656B6F54;
      v53[1] = 0xEA00000000002072;
      MEMORY[0x223D8E780](a1, a2);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
      v27 = v51;
      v28 = v52;
      v29 = v56;
      (*(v52 + 16))(v51, v11, v56);
      v30 = *MEMORY[0x277D29D88];
      v31 = type metadata accessor for InferenceError();
      (*(*(v31 - 8) + 104))(v27, v30, v31);
      lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
      swift_willThrowTypedImpl();
      goto LABEL_13;
    }
  }

  v55 = 0;
  memset(v54, 0, sizeof(v54));
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&_s24TokenGenerationInference08OnDeviceC15AssetRepositoryC19loadTokenizerAtPath4pathySS_t20ModelManagerServices0C5ErrorOYKFTv_r);
  outlined destroy of [Int](&unk_28344E2E0, &_sSS_SStMd, &_sSS_SStMR);
  type metadata accessor for TokenizerRunner();
  swift_allocObject();

  v32 = TokenizerRunner.init(tokenizerPath:substitutionTextForInputTokenText:)();
  if (v5)
  {
    v33 = _convertErrorToNSError(_:)();
    v34 = [v33 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = [v33 domain];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    [v33 code];
    v36 = v5;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
    v37 = v51;
    v28 = v52;
    v29 = v56;
    (*(v52 + 16))(v51, v11, v56);
    v38 = *MEMORY[0x277D29D78];
    v39 = type metadata accessor for InferenceError();
    (*(*(v39 - 8) + 104))(v37, v38, v39);
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    swift_willThrowTypedImpl();

LABEL_13:
    (*(v28 + 8))(v11, v29);
    return outlined destroy of [Int](v54, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
  }

  v41 = v32;
  v42 = type metadata accessor for OnDeviceInferenceAssetObjectTokenizer(0);
  v53[3] = v42;
  v53[4] = &protocol witness table for OnDeviceInferenceAssetObjectTokenizer;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53);
  v44 = v42[5];
  v45 = type metadata accessor for Asset(0);
  (*(*(v45 - 8) + 56))(boxed_opaque_existential_1 + v44, 1, 1, v45);
  swift_bridgeObjectRetain_n();

  v46 = dispatch thunk of TokenizerRunner.vocabularyCount.getter();
  type metadata accessor for ImageTokenIDGenerator();
  v47 = swift_allocObject();
  *(v47 + 16) = v46;
  v48 = v42[11];
  v49 = type metadata accessor for GuidedGenerationVocabularyManager();
  (*(*(v49 - 8) + 56))(boxed_opaque_existential_1 + v48, 1, 1, v49);
  *boxed_opaque_existential_1 = a1;
  boxed_opaque_existential_1[1] = a2;
  *(boxed_opaque_existential_1 + v42[6]) = v41;
  *(boxed_opaque_existential_1 + v42[7]) = v47;
  *(boxed_opaque_existential_1 + v42[8]) = 0;
  *(boxed_opaque_existential_1 + v42[9]) = 0;
  *(boxed_opaque_existential_1 + v42[10]) = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v53, a1, a2);
  swift_endAccess();

  return outlined destroy of [Int](v54, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC12loadE5Runner18modelConfiguration16draftingBehaviorySo010TGIE5ModelL4ObjCC_AA08DraftingN0VSgtYa0P15ManagerServices0C5ErrorOYKF(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v4 + 272) = v3;
  *(v4 + 280) = a3;
  *(v4 + 264) = a1;
  v6 = type metadata accessor for InferenceError.Context();
  *(v4 + 288) = v6;
  *(v4 + 296) = *(v6 - 8);
  *(v4 + 304) = swift_task_alloc();
  v7 = a2[3];
  *(v4 + 48) = a2[2];
  *(v4 + 64) = v7;
  *(v4 + 73) = *(a2 + 57);
  v8 = a2[1];
  *(v4 + 16) = *a2;
  *(v4 + 32) = v8;

  return MEMORY[0x2822009F8](_s24TokenGenerationInference08OnDeviceC15AssetRepositoryC12loadE5Runner18modelConfiguration16draftingBehaviorySo010TGIE5ModelL4ObjCC_AA08DraftingN0VSgtYa0P15ManagerServices0C5ErrorOYKFTY0_, v3, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC12loadE5Runner18modelConfiguration16draftingBehaviorySo010TGIE5ModelL4ObjCC_AA08DraftingN0VSgtYa0P15ManagerServices0C5ErrorOYKFTY0_()
{
  v29 = v0;
  v1 = [*(v0 + 264) modelBundlePath];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  *(v0 + 312) = v2;
  *(v0 + 320) = v4;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.device);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v4, v28);
    _os_log_impl(&dword_220940000, v6, v7, "Loading model at path %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x223D90A10](v9, -1, -1);
    MEMORY[0x223D90A10](v8, -1, -1);
  }

  v10 = *(v0 + 272);
  swift_beginAccess();
  v11 = *(v10 + 128);
  if (*(v11 + 16))
  {

    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v4);
    if (v13)
    {
      outlined init with copy of DeterministicLanguageModelProtocol(*(v11 + 56) + 40 * v12, v0 + 96);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v28[0] = v17;
        *v16 = 136315138;
        *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v4, v28);
        _os_log_impl(&dword_220940000, v14, v15, "Model at path is already loaded %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x223D90A10](v17, -1, -1);
        MEMORY[0x223D90A10](v16, -1, -1);
      }

      v19 = *(v0 + 296);
      v18 = *(v0 + 304);
      v20 = *(v0 + 280);
      v21 = *(v0 + 288);
      v28[0] = 0x206C65646F4DLL;
      v28[1] = 0xE600000000000000;
      MEMORY[0x223D8E780](v2, v4);

      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
      (*(v19 + 16))(v20, v18, v21);
      v22 = *MEMORY[0x277D29D88];
      v23 = type metadata accessor for InferenceError();
      (*(*(v23 - 8) + 104))(v20, v22, v23);
      lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
      swift_willThrowTypedImpl();
      (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
      outlined destroy of [Int](v0 + 96, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);

      v24 = *(v0 + 8);

      return v24();
    }
  }

  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 168) = 0;
  v26 = swift_task_alloc();
  *(v0 + 328) = v26;
  *v26 = v0;
  v26[1] = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC12loadE5Runner18modelConfiguration16draftingBehaviorySo010TGIE5ModelL4ObjCC_AA08DraftingN0VSgtYa0P15ManagerServices0C5ErrorOYKFTQ1_;
  v27 = *(v0 + 264);

  return specialized static LanguageModelLoader.load(from:baseModel:)(v27, v0 + 136);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC12loadE5Runner18modelConfiguration16draftingBehaviorySo010TGIE5ModelL4ObjCC_AA08DraftingN0VSgtYa0P15ManagerServices0C5ErrorOYKFTQ1_(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[42] = a1;
  v4[43] = a2;
  v4[44] = v2;

  outlined destroy of [Int]((v4 + 17), &_s24TokenGenerationInference9BaseModel_pSgMd, &_s24TokenGenerationInference9BaseModel_pSgMR);
  if (v2)
  {
    v5 = v4[34];

    v6 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC12loadE5Runner18modelConfiguration16draftingBehaviorySo010TGIE5ModelL4ObjCC_AA08DraftingN0VSgtYa0P15ManagerServices0C5ErrorOYKFTY3_;
    v7 = v5;
  }

  else
  {
    v7 = v4[34];
    v6 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC12loadE5Runner18modelConfiguration16draftingBehaviorySo010TGIE5ModelL4ObjCC_AA08DraftingN0VSgtYa0P15ManagerServices0C5ErrorOYKFTY2_;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC12loadE5Runner18modelConfiguration16draftingBehaviorySo010TGIE5ModelL4ObjCC_AA08DraftingN0VSgtYa0P15ManagerServices0C5ErrorOYKFTY2_(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 264);
  swift_unknownObjectRetain();
  v4 = [v3 assetIdentifier];
  v5 = *(v2 + 344);
  v6 = *(v2 + 264);
  v7 = v4;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = type metadata accessor for E5TransformerLanguageModel(0);
  ObjectType = swift_getObjectType();
  v13 = swift_unknownObjectRetain();
  v14 = specialized E5TransformerLanguageModel.__allocating_init(e5Runner:name:)(v13, v8, v10, v11, ObjectType, v5);

  v15 = [v6 assetIdentifier];
  v39 = *(v2 + 312);
  v40 = *(v2 + 320);
  v41 = *(v2 + 336);
  v16 = v15;
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  *(v2 + 200) = v19;
  *(v2 + 208) = &protocol witness table for OnDeviceInferenceAssetObjectE5Runner;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 176));
  v21 = v19[6];
  v22 = type metadata accessor for Asset(0);
  v23 = *(*(v22 - 8) + 56);
  v23(boxed_opaque_existential_1 + v21, 1, 1, v22);
  v24 = v19[13];
  v25 = type metadata accessor for UUID();
  (*(*(v25 - 8) + 56))(boxed_opaque_existential_1 + v24, 1, 1, v25);
  v23(boxed_opaque_existential_1 + v19[14], 1, 1, v22);
  v26 = v19[15];
  v27 = type metadata accessor for PromptTemplateConfiguration(0);
  (*(*(v27 - 8) + 56))(boxed_opaque_existential_1 + v26, 1, 1, v27);
  v28 = v19[18];
  v29 = type metadata accessor for PromptPreprocessingTemplateVersion();
  (*(*(v29 - 8) + 56))(boxed_opaque_existential_1 + v28, 1, 1, v29);
  *boxed_opaque_existential_1 = v39;
  boxed_opaque_existential_1[1] = v40;
  boxed_opaque_existential_1[2] = v38;
  boxed_opaque_existential_1[3] = v18;
  *(boxed_opaque_existential_1 + v19[7]) = v41;
  *(boxed_opaque_existential_1 + v19[8]) = v14;
  v30 = (boxed_opaque_existential_1 + v19[9]);
  *v30 = *(v2 + 16);
  v31 = *(v2 + 32);
  v32 = *(v2 + 48);
  v33 = *(v2 + 64);
  *(v30 + 57) = *(v2 + 73);
  v30[2] = v32;
  v30[3] = v33;
  v30[1] = v31;
  *(boxed_opaque_existential_1 + v19[10]) = 0;
  *(boxed_opaque_existential_1 + v19[11]) = 0;
  *(boxed_opaque_existential_1 + v19[12]) = 0;
  v34 = (boxed_opaque_existential_1 + v19[16]);
  *v34 = 0;
  v34[1] = 0;
  v34[2] = 0;
  v35 = (boxed_opaque_existential_1 + v19[17]);
  *v35 = 0;
  v35[1] = 0;
  v35[2] = 0;
  v35[3] = 1;
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v2 + 176, v39, v40);
  swift_endAccess();
  swift_unknownObjectRelease();

  outlined destroy of [Int](v2 + 96, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);

  v36 = *(v2 + 8);

  return v36();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC12loadE5Runner18modelConfiguration16draftingBehaviorySo010TGIE5ModelL4ObjCC_AA08DraftingN0VSgtYa0P15ManagerServices0C5ErrorOYKFTY3_()
{
  v1 = _convertErrorToNSError(_:)();
  v2 = [v1 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = [v1 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  [v1 code];
  v4 = v0[44];
  v5 = v0[37];
  v6 = v0[38];
  v8 = v0[35];
  v7 = v0[36];
  v9 = v4;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
  (*(v5 + 16))(v8, v6, v7);
  v10 = *MEMORY[0x277D29D78];
  v11 = type metadata accessor for InferenceError();
  (*(*(v11 - 8) + 104))(v8, v10, v11);
  lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
  swift_willThrowTypedImpl();

  (*(v0[37] + 8))(v0[38], v0[36]);
  outlined destroy of [Int]((v0 + 12), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);

  v12 = v0[1];

  return v12();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC035fetchPromptTemplateConfigurationForF6Bundle10identifierAA0ijK0VSgSS_tYa20ModelManagerServices0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = v4;
  v5[6] = a4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for InferenceError();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s24TokenGenerationInference08OnDeviceC15AssetRepositoryC035fetchPromptTemplateConfigurationForF6Bundle10identifierAA0ijK0VSgSS_tYa20ModelManagerServices0C5ErrorOYKFTY0_, v4, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC035fetchPromptTemplateConfigurationForF6Bundle10identifierAA0ijK0VSgSS_tYa20ModelManagerServices0C5ErrorOYKFTY0_()
{
  v12 = v0;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.device);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136446210;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v11);
    _os_log_impl(&dword_220940000, v2, v3, "Fetching prompt template for asset bundle %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x223D90A10](v7, -1, -1);
    MEMORY[0x223D90A10](v6, -1, -1);
  }

  _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC08e5Runnerf9ObjectForF6Bundle33_65818D6FA4B5F545C6B162D7CBE031AELL10identifierAA0decfj2E5I0VSS_t20ModelManagerServices0C5ErrorOYKF(v0[3], v0[4], v0[9], v0[11]);
  v8 = v0[11];
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v8 + *(v0[10] + 60), v0[2], &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMR);
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v8, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);

  v9 = v0[1];

  return v9();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC024fetchSpecialTokensMapForF6Bundle10identifierSDySSAA08MetadataiA0OGSgSS_t20ModelManagerServices0C5ErrorOYKF(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v29 = a3;
  v30 = a1;
  v4 = v3;
  v6 = type metadata accessor for InferenceError();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  MEMORY[0x28223BE20](v28, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.device);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = v6;
    v18 = v17;
    v19 = swift_slowAlloc();
    v26 = v7;
    v20 = v19;
    v32 = v19;
    *v18 = 136446210;
    v21 = v30;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, a2, &v32);
    _os_log_impl(&dword_220940000, v15, v16, "Fetching special tokens map for asset bundle %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v22 = v20;
    v4 = v3;
    v7 = v26;
    MEMORY[0x223D90A10](v22, -1, -1);
    v23 = v18;
    v6 = v27;
    MEMORY[0x223D90A10](v23, -1, -1);
  }

  else
  {

    v21 = v30;
  }

  v24 = v31;
  _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC08e5Runnerf9ObjectForF6Bundle33_65818D6FA4B5F545C6B162D7CBE031AELL10identifierAA0decfj2E5I0VSS_t20ModelManagerServices0C5ErrorOYKF(v21, a2, v10, v13);
  if (v4)
  {
    (*(v7 + 32))(v29, v10, v6);
  }

  else
  {
    v24 = *&v13[*(v28 + 40)];

    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v13, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  }

  return v24;
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC028fetchLocalizationMetadataForF6Bundle10identifierSDySSSDySSAA0j7SpecialA0OGGSgSS_t20ModelManagerServices0C5ErrorOYKF(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v29 = a3;
  v30 = a1;
  v4 = v3;
  v6 = type metadata accessor for InferenceError();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  MEMORY[0x28223BE20](v28, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.device);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = v6;
    v18 = v17;
    v19 = swift_slowAlloc();
    v26 = v7;
    v20 = v19;
    v32 = v19;
    *v18 = 136446210;
    v21 = v30;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, a2, &v32);
    _os_log_impl(&dword_220940000, v15, v16, "Fetching localization metadata for asset bundle %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v22 = v20;
    v4 = v3;
    v7 = v26;
    MEMORY[0x223D90A10](v22, -1, -1);
    v23 = v18;
    v6 = v27;
    MEMORY[0x223D90A10](v23, -1, -1);
  }

  else
  {

    v21 = v30;
  }

  v24 = v31;
  _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC08e5Runnerf9ObjectForF6Bundle33_65818D6FA4B5F545C6B162D7CBE031AELL10identifierAA0decfj2E5I0VSS_t20ModelManagerServices0C5ErrorOYKF(v21, a2, v10, v13);
  if (v4)
  {
    (*(v7 + 32))(v29, v10, v6);
  }

  else
  {
    v24 = *&v13[*(v28 + 48)];

    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v13, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  }

  return v24;
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC042fetchPromptPreprocessingTemplateVersionForF6Bundle10identifier0aB4Core0ijkL0OSgSS_t20ModelManagerServices0C5ErrorOYKF@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v32 = a1;
  v6 = type metadata accessor for InferenceError();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  MEMORY[0x28223BE20](v30, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.device);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = v6;
    v18 = v17;
    v19 = swift_slowAlloc();
    v28 = v7;
    v20 = a3;
    v21 = v19;
    v34 = v19;
    *v18 = 136446210;
    v22 = v32;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, a2, &v34);
    _os_log_impl(&dword_220940000, v15, v16, "Fetching prompt preprocessing template version for asset bundle %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v23 = v21;
    a3 = v20;
    v7 = v28;
    MEMORY[0x223D90A10](v23, -1, -1);
    v24 = v18;
    v6 = v29;
    MEMORY[0x223D90A10](v24, -1, -1);
  }

  else
  {

    v22 = v32;
  }

  v25 = v33;
  _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC08e5Runnerf9ObjectForF6Bundle33_65818D6FA4B5F545C6B162D7CBE031AELL10identifierAA0decfj2E5I0VSS_t20ModelManagerServices0C5ErrorOYKF(v22, a2, v10, v13);
  if (v25)
  {
    return (*(v7 + 32))(a3, v10, v6);
  }

  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(&v13[*(v30 + 72)], v31, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
  return outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v13, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTQ1_()
{
  v2 = *v1;

  v3 = *(v2 + 952);
  if (v0)
  {
    v4 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY11_;
  }

  else
  {
    v4 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY2_;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY2_()
{
  v1 = v0[134];
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v1, type metadata accessor for Asset);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  outlined destroy of [Int]((v0 + 17), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
  outlined destroy of [Int]((v0 + 12), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);

  v2 = v0[1];

  return v2();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTQ3_()
{
  v2 = *v1;

  v3 = *(v2 + 952);
  if (v0)
  {
    v4 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY12_;
  }

  else
  {
    v4 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY4_;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY4_()
{
  v1 = v0[134];
  (*(v0[126] + 8))(v0[127], v0[125]);
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v1, type metadata accessor for Asset);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  outlined destroy of [Int]((v0 + 17), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
  outlined destroy of [Int]((v0 + 12), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
  __swift_destroy_boxed_opaque_existential_1(v0 + 77);

  v2 = v0[1];

  return v2();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTQ5_()
{
  v2 = *v1;

  v3 = *(v2 + 952);

  if (v0)
  {
    v4 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY13_;
  }

  else
  {
    v4 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY6_;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY6_()
{
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v0[134], type metadata accessor for Asset);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  outlined destroy of [Int]((v0 + 17), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
  outlined destroy of [Int]((v0 + 12), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
  __swift_destroy_boxed_opaque_existential_1(v0 + 77);

  v1 = v0[1];

  return v1();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTQ7_()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[119];
    outlined destroy of [Int](v2[121], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

    v4 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY14_;
    v5 = v3;
  }

  else
  {
    v6 = v2[122];
    v7 = v2[121];
    v8 = v2[119];

    outlined destroy of [Int](v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v6, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
    v4 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY8_;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY8_()
{
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v0[134], type metadata accessor for Asset);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  outlined destroy of [Int]((v0 + 17), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
  outlined destroy of [Int]((v0 + 12), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
  __swift_destroy_boxed_opaque_existential_1(v0 + 92);

  v1 = v0[1];

  return v1();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTQ9_()
{
  v2 = *v1;

  v3 = *(v2 + 952);
  if (v0)
  {
    v4 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY15_;
  }

  else
  {
    v4 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY10_;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY10_()
{
  v1 = v0[134];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v1, type metadata accessor for Asset);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  outlined destroy of [Int]((v0 + 17), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
  outlined destroy of [Int]((v0 + 12), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);

  v2 = v0[1];

  return v2();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY11_()
{
  v1 = v0[145];
  v2 = v0[139];
  v3 = v0[138];
  v4 = v0[134];
  v5 = v0[120];
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v4, type metadata accessor for Asset);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  outlined destroy of [Int]((v0 + 17), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
  outlined destroy of [Int]((v0 + 12), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
  (*(v2 + 32))(v5, v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY12_()
{
  v1 = v0[143];
  v2 = v0[139];
  v3 = v0[138];
  v4 = v0[134];
  v5 = v0[120];
  (*(v0[126] + 8))(v0[127], v0[125]);
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v4, type metadata accessor for Asset);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  outlined destroy of [Int]((v0 + 17), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
  outlined destroy of [Int]((v0 + 12), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
  (*(v2 + 32))(v5, v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 77);

  v6 = v0[1];

  return v6();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY13_()
{
  v1 = v0[142];
  v2 = v0[139];
  v3 = v0[138];
  v4 = v0[120];
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v0[134], type metadata accessor for Asset);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  outlined destroy of [Int]((v0 + 17), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
  outlined destroy of [Int]((v0 + 12), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
  (*(v2 + 32))(v4, v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 77);

  v5 = v0[1];

  return v5();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY14_()
{
  v1 = v0[141];
  v2 = v0[139];
  v3 = v0[138];
  v4 = v0[120];
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v0[134], type metadata accessor for Asset);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  outlined destroy of [Int]((v0 + 17), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
  outlined destroy of [Int]((v0 + 12), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
  (*(v2 + 32))(v4, v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 92);

  v5 = v0[1];

  return v5();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY15_()
{
  v1 = v0[140];
  v2 = v0[139];
  v3 = v0[138];
  v4 = v0[134];
  v5 = v0[120];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v4, type metadata accessor for Asset);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  outlined destroy of [Int]((v0 + 17), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
  outlined destroy of [Int]((v0 + 12), &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
  (*(v2 + 32))(v5, v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC06unloadF010identifierySS_tYa20ModelManagerServices0C5ErrorOYKFTQ1_()
{
  v1 = *(*v0 + 408);

  return MEMORY[0x2822009F8](_s24TokenGenerationInference08OnDeviceC15AssetRepositoryC06unloadF010identifierySS_tYa20ModelManagerServices0C5ErrorOYKFTY2_, v1, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC06unloadF010identifierySS_tYa20ModelManagerServices0C5ErrorOYKFTY2_()
{
  v18 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[49];
    v3 = v0[50];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v17);
    _os_log_impl(&dword_220940000, v1, v2, "Resumed unload for asset %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x223D90A10](v6, -1, -1);
    MEMORY[0x223D90A10](v5, -1, -1);
  }

  v7 = v0[50];
  v8 = v0[49];
  OnDeviceInferenceAssetRepository.resumeSuspendedFetch()();
  swift_beginAccess();
  specialized Set._Variant.remove(_:)(v8, v7);
  swift_endAccess();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = v0[49];
    v11 = v0[50];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136446210;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v17);
    _os_log_impl(&dword_220940000, v9, v10, "Finished unloading asset %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x223D90A10](v14, -1, -1);
    MEMORY[0x223D90A10](v13, -1, -1);
  }

  v15 = v0[1];

  return v15();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC06unloadF010identifierySS_tYa20ModelManagerServices0C5ErrorOYKFyScCyyts5NeverOGXEfU0_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v14 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v10, a3, a4);
  return swift_endAccess();
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC05fetchF7Objects11identifiers13configurationSayAA0decF6Object_pGSaySSG_20ModelManagerServices0C28ProviderRequestConfigurationVtYaAJ0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[111] = a3;
  v4[110] = v3;
  v4[109] = a2;
  v4[108] = a1;
  v4[112] = type metadata accessor for OnDeviceInferenceAssetObjectTokenizer(0);
  v4[113] = swift_task_alloc();
  v5 = type metadata accessor for InferenceError.Context();
  v4[114] = v5;
  v4[115] = *(v5 - 8);
  v4[116] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
  v4[117] = swift_task_alloc();
  v6 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  v4[118] = v6;
  v4[119] = *(v6 - 8);
  v4[120] = swift_task_alloc();
  v4[121] = type metadata accessor for OnDeviceInferenceAssetObjectBaseModel(0);
  v4[122] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4[123] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[124] = v7;
  v4[125] = *(v7 - 8);
  v4[126] = swift_task_alloc();
  v4[127] = swift_task_alloc();
  v4[128] = swift_task_alloc();
  v4[129] = swift_task_alloc();
  v4[130] = swift_task_alloc();
  v4[131] = swift_task_alloc();
  v4[132] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s24TokenGenerationInference08OnDeviceC15AssetRepositoryC05fetchF7Objects11identifiers13configurationSayAA0decF6Object_pGSaySSG_20ModelManagerServices0C28ProviderRequestConfigurationVtYaAJ0C5ErrorOYKFTY0_, v3, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC05fetchF7Objects11identifiers13configurationSayAA0decF6Object_pGSaySSG_20ModelManagerServices0C28ProviderRequestConfigurationVtYaAJ0C5ErrorOYKFTY0_()
{
  v184 = v0;
  v175 = (v0 + 856);
  *(v0 + 856) = *(v0 + 864);
  *(v0 + 560) = &type metadata for FoundationModelsFeatureFlags;
  *(v0 + 568) = lazy protocol witness table accessor for type FoundationModelsFeatureFlags and conformance FoundationModelsFeatureFlags();

  v1 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1((v0 + 536));
  v2 = *(v0 + 864);
  if (v1)
  {
    v3 = *(v2 + 2);
    if (v3)
    {
      v4 = *(v0 + 880);

      swift_beginAccess();
      v5 = (v2 + 40);
      v2 = *(v0 + 864);
      do
      {
        v6 = *(v4 + 136);
        if (*(v6 + 16))
        {
          v7 = *(v5 - 1);
          v8 = *v5;

          v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
          v11 = v10;

          if (v11)
          {
            outlined init with copy of DeterministicLanguageModelProtocol(*(v6 + 56) + 40 * v9, v0 + 16);

            outlined init with take of RandomNumberGenerator((v0 + 16), v0 + 456);
            v12 = *(v0 + 480);
            v13 = *(v0 + 488);
            __swift_project_boxed_opaque_existential_1((v0 + 456), v12);
            v14 = (*(v13 + 8))(v12, v13);
            v16 = v15;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
            }

            v18 = *(v2 + 2);
            v17 = *(v2 + 3);
            if (v18 >= v17 >> 1)
            {
              v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v2);
            }

            *(v2 + 2) = v18 + 1;
            v19 = &v2[16 * v18];
            *(v19 + 4) = v14;
            *(v19 + 5) = v16;
            *v175 = v2;
            __swift_destroy_boxed_opaque_existential_1((v0 + 456));
          }

          else
          {
          }
        }

        v5 += 2;
        --v3;
      }

      while (v3);
    }
  }

  InferenceProviderRequestConfiguration.requestUUID.getter();
  if (one-time initialization token for device != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v20 = *(v0 + 1056);
    v21 = *(v0 + 1048);
    v22 = *(v0 + 1000);
    v23 = *(v0 + 992);
    v24 = type metadata accessor for Logger();
    *(v0 + 1064) = __swift_project_value_buffer(v24, static Log.device);
    v25 = *(v22 + 16);
    *(v0 + 1072) = v25;
    *(v0 + 1080) = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v167 = v25;
    v25(v21, v20, v23);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 1048);
    v30 = *(v0 + 1000);
    v31 = *(v0 + 992);
    if (v28)
    {
      v32 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      v182 = v164;
      *v32 = 136446466;

      v179 = v2;
      v34 = MEMORY[0x223D8E8D0](v33, MEMORY[0x277D837D0]);
      v36 = v35;

      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v182);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2082;
      lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      v41 = v27;
      v42 = *(v30 + 8);
      v42(v29, v31);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v182);
      v2 = v179;

      *(v32 + 14) = v43;
      _os_log_impl(&dword_220940000, v26, v41, "Fetching assets %{public}s for request %{public}s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D90A10](v164, -1, -1);
      MEMORY[0x223D90A10](v32, -1, -1);
    }

    else
    {

      v42 = *(v30 + 8);
      v42(v29, v31);
    }

    v165 = v42;
    *(v0 + 1088) = v42;
    v44 = *(v0 + 880);
    v45 = *(v2 + 2);
    v180 = v2;

    swift_beginAccess();
    if (v45)
    {
      v46 = 0;
      v2 += 40;
      do
      {
        if (v46 >= *(v180 + 2))
        {
          __break(1u);
          goto LABEL_73;
        }

        v47 = *(v44 + 144);
        if (*(v47 + 16))
        {
          v49 = *(v2 - 1);
          v48 = *v2;

          v50 = specialized __RawDictionaryStorage.find<A>(_:)(v49, v48);
          if (v51)
          {
            v102 = *(v0 + 1056);
            v103 = *(v0 + 1040);
            v104 = *(v0 + 992);
            v105 = v50;

            outlined init with copy of DeterministicLanguageModelProtocol(*(v47 + 56) + 40 * v105, v0 + 96);

            outlined destroy of [Int](v0 + 96, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
            v167(v103, v102, v104);

            v106 = Logger.logObject.getter();
            v107 = static os_log_type_t.default.getter();

            v108 = os_log_type_enabled(v106, v107);
            v109 = *(v0 + 1040);
            v110 = *(v0 + 992);
            if (v108)
            {
              v173 = v107;
              v111 = swift_slowAlloc();
              v181 = swift_slowAlloc();
              v182 = v181;
              *v111 = 136446466;
              lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v112 = dispatch thunk of CustomStringConvertible.description.getter();
              v114 = v113;
              v165(v109, v110);
              v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v114, &v182);

              *(v111 + 4) = v115;
              *(v111 + 12) = 2082;
              v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v48, &v182);

              *(v111 + 14) = v116;
              _os_log_impl(&dword_220940000, v106, v173, "Suspending fetch for request %{public}s since asset %{public}s is in use", v111, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223D90A10](v181, -1, -1);
              MEMORY[0x223D90A10](v111, -1, -1);
            }

            else
            {

              v165(v109, v110);
            }

            v158 = *(v0 + 1056);
            v159 = *(v0 + 880);
            lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type OnDeviceInferenceAssetRepository and conformance OnDeviceInferenceAssetRepository, v117, type metadata accessor for OnDeviceInferenceAssetRepository, &protocol conformance descriptor for OnDeviceInferenceAssetRepository);
            v160 = swift_task_alloc();
            *(v0 + 1096) = v160;
            v160[2] = v175;
            v160[3] = v158;
            v160[4] = v159;
            v161 = swift_task_alloc();
            *(v0 + 1104) = v161;
            *v161 = v0;
            v161[1] = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC05fetchF7Objects11identifiers13configurationSayAA0decF6Object_pGSaySSG_20ModelManagerServices0C28ProviderRequestConfigurationVtYaAJ0C5ErrorOYKFTQ1_;

            return MEMORY[0x2822007B8]();
          }
        }

        ++v46;
        *(v0 + 128) = 0;
        *(v0 + 96) = 0u;
        *(v0 + 112) = 0u;
        outlined destroy of [Int](v0 + 96, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
        v2 += 16;
      }

      while (v45 != v46);
    }

    v2 = v180;

    v52 = *(v0 + 880);
    v53 = *(v180 + 2);

    swift_beginAccess();
    if (!v53)
    {
      break;
    }

    v54 = 0;
    log = *(v0 + 960);
    v175 = (*(v0 + 952) + 56);
    v55 = -v53;
    v56 = v180 + 40;
    v166 = *(v0 + 944);
    v168 = MEMORY[0x277D84F90];
LABEL_27:
    v57 = &v56[16 * v54++];
    while ((v54 - 1) < *(v2 + 2))
    {
      v59 = *(v57 - 1);
      v58 = *v57;
      v60 = *(v52 + 128);
      v61 = *(v60 + 16);

      if (!v61)
      {
        goto LABEL_62;
      }

      v62 = specialized __RawDictionaryStorage.find<A>(_:)(v59, v58);
      if ((v63 & 1) == 0)
      {

LABEL_62:
        v136 = *(v0 + 1072);
        v137 = *(v0 + 1056);
        v138 = *(v0 + 1016);
        v139 = *(v0 + 992);

        v136(v138, v137, v139);

        v140 = Logger.logObject.getter();
        v141 = static os_log_type_t.error.getter();

        v142 = os_log_type_enabled(v140, v141);
        v143 = *(v0 + 1088);
        v144 = *(v0 + 1016);
        v145 = *(v0 + 992);
        if (v142)
        {
          v174 = v141;
          v146 = swift_slowAlloc();
          v178 = swift_slowAlloc();
          v182 = v178;
          *v146 = 136446466;
          lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v147 = dispatch thunk of CustomStringConvertible.description.getter();
          logb = v140;
          v149 = v148;
          v143(v144, v145);
          v150 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, v149, &v182);

          *(v146 + 4) = v150;
          *(v146 + 12) = 2082;
          *(v146 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v58, &v182);
          _os_log_impl(&dword_220940000, logb, v174, "Fetch for request %{public}s failed, asset %{public}s is not loaded", v146, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D90A10](v178, -1, -1);
          MEMORY[0x223D90A10](v146, -1, -1);
        }

        else
        {

          v143(v144, v145);
        }

        v151 = *(v0 + 928);
        v152 = *(v0 + 920);
        v153 = *(v0 + 912);
        v154 = *(v0 + 888);
        OnDeviceInferenceAssetRepository.resumeSuspendedFetch()();
        v182 = 0;
        v183 = 0xE000000000000000;
        _StringGuts.grow(_:)(22);

        v182 = 0x207465737341;
        v183 = 0xE600000000000000;
        MEMORY[0x223D8E780](v59, v58);

        MEMORY[0x223D8E780](0x20746F6E20736920, 0xEE00646564616F6CLL);
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
        (*(v152 + 16))(v154, v151, v153);
        v155 = *MEMORY[0x277D29DD8];
        v156 = type metadata accessor for InferenceError();
        (*(*(v156 - 8) + 104))(v154, v155, v156);
        lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
        swift_willThrowTypedImpl();
        (*(v152 + 8))(v151, v153);
        (*(v0 + 1088))(*(v0 + 1056), *(v0 + 992));

        v157 = *(v0 + 8);

        return v157();
      }

      v64 = v62;

      outlined init with copy of DeterministicLanguageModelProtocol(*(v60 + 56) + 40 * v64, v0 + 176);

      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 176, v0 + 216);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
      if ((swift_dynamicCast() & 1) == 0)
      {
        outlined init with copy of DeterministicLanguageModelProtocol(v0 + 176, v0 + 256);
        v66 = swift_dynamicCast();
        v67 = *v175;
        if (v66)
        {
          v68 = *(v0 + 960);
          v69 = *(v0 + 944);
          v70 = *(v0 + 936);
          v71 = *(v0 + 872);
          (v67)(v70, 0, 1, v69);
          outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v70, v68, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
          OnDeviceInferenceAssetRepository.clearE5RunnerAssetIfNeeded(e5RunnerAsset:configuration:)(v68, v71);
          *(v0 + 360) = v69;
          *(v0 + 368) = &protocol witness table for OnDeviceInferenceAssetObjectE5Runner;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 336));
          outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v68, boxed_opaque_existential_1, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
          __swift_destroy_boxed_opaque_existential_1((v0 + 176));
          outlined init with take of RandomNumberGenerator((v0 + 336), v0 + 176);
          isa = log[1].isa;
          v163 = *v68;
          *(v0 + 400) = v69;
          *(v0 + 408) = &protocol witness table for OnDeviceInferenceAssetObjectE5Runner;
          v73 = __swift_allocate_boxed_opaque_existential_1((v0 + 376));
          outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v68, v73, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
          swift_beginAccess();
          outlined init with take of RandomNumberGenerator((v0 + 376), v0 + 416);
          LOBYTE(v69) = swift_isUniquelyReferenced_nonNull_native();
          v182 = *(v52 + 128);
          *(v52 + 128) = 0x8000000000000000;
          v74 = *(v0 + 440);
          v75 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 416, v74);
          v76 = *(v74 - 8);
          v77 = swift_task_alloc();
          (*(v76 + 16))(v77, v75, v74);
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v77, v163, isa, v69, &v182);
          __swift_destroy_boxed_opaque_existential_1((v0 + 416));

          *(v52 + 128) = v182;
          swift_endAccess();
          v78 = *(v68 + *(v166 + 32));
          v79 = v78 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_prefixKVCacheTokensMatchCount;
          *v79 = 0;
          v79[8] = 1;
          v80 = v78 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_promptModulesKVCacheTokensMatchCount;
          *v80 = 0;
          v80[8] = 1;
          v78[8] = 0;
          v81 = static Duration.zero.getter();
          v83 = v82;
          swift_beginAccess();
          v78[9] = v81;
          v78[10] = v83;
          outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v68, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
        }

        else
        {
          v84 = *(v0 + 936);
          (v67)(v84, 1, 1, *(v0 + 944));
          outlined destroy of [Int](v84, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
        }

        outlined init with copy of DeterministicLanguageModelProtocol(v0 + 176, v0 + 296);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v2 = v180;
          v85 = v168;
        }

        else
        {
          v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v168[2] + 1, 1, v168);
          v2 = v180;
        }

        v87 = v85[2];
        v86 = v85[3];
        if (v87 >= v86 >> 1)
        {
          v168 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1, v85);
        }

        else
        {
          v168 = v85;
        }

        __swift_destroy_boxed_opaque_existential_1((v0 + 176));
        v168[2] = v87 + 1;
        outlined init with take of RandomNumberGenerator((v0 + 296), &v168[5 * v87 + 4]);
        v56 = v180 + 40;
        if (v55 + v54)
        {
          goto LABEL_27;
        }

        goto LABEL_46;
      }

      v65 = *(v0 + 976);
      __swift_destroy_boxed_opaque_existential_1((v0 + 176));
      outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v65, type metadata accessor for OnDeviceInferenceAssetObjectBaseModel);
      ++v54;
      v57 += 2;
      v2 = v180;
      if (v55 + v54 == 1)
      {
        goto LABEL_46;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

  v168 = MEMORY[0x277D84F90];
LABEL_46:

  v88 = v168[2];
  if (v88)
  {
    v89 = (v168 + 4);

    v90 = &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR;
    do
    {
      outlined init with copy of DeterministicLanguageModelProtocol(v89, v0 + 56);
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 56, v0 + 576);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, v90);
      if (swift_dynamicCast())
      {
        outlined destroy of OnDeviceInferenceAssetObjectE5Runner(*(v0 + 904), type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
      }

      else
      {
        v91 = *(v0 + 880);
        v92 = *(v0 + 80);
        v93 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v92);
        v176 = (*(v93 + 8))(v92, v93);
        v95 = v94;
        outlined init with copy of DeterministicLanguageModelProtocol(v0 + 56, v0 + 496);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v182 = *(v91 + 144);
        *(v91 + 144) = 0x8000000000000000;
        v96 = *(v0 + 520);
        loga = *(v0 + 528);
        v97 = v90;
        v98 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 496, v96);
        v99 = *(v96 - 8);
        v100 = swift_task_alloc();
        v101 = v98;
        v90 = v97;
        (*(v99 + 16))(v100, v101, v96);
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v100, v176, v95, isUniquelyReferenced_nonNull_native, &v182, v96, loga);

        __swift_destroy_boxed_opaque_existential_1((v0 + 496));

        *(v91 + 144) = v182;
        swift_endAccess();
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 56));
      v89 += 40;
      --v88;
    }

    while (v88);
  }

  else
  {
  }

  (*(v0 + 1072))(*(v0 + 1008), *(v0 + 1056), *(v0 + 992));
  v118 = Logger.logObject.getter();
  v119 = static os_log_type_t.default.getter();
  v120 = os_log_type_enabled(v118, v119);
  v121 = *(v0 + 1088);
  v122 = *(v0 + 1008);
  v123 = *(v0 + 992);
  if (v120)
  {
    v124 = swift_slowAlloc();
    v177 = swift_slowAlloc();
    v182 = v177;
    *v124 = 136446466;

    v126 = MEMORY[0x223D8E8D0](v125, MEMORY[0x277D837D0]);
    v128 = v127;

    v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v128, &v182);

    *(v124 + 4) = v129;
    *(v124 + 12) = 2080;
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v130 = dispatch thunk of CustomStringConvertible.description.getter();
    v132 = v131;
    v121(v122, v123);
    v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v132, &v182);

    *(v124 + 14) = v133;

    _os_log_impl(&dword_220940000, v118, v119, "Successfully fetched asset %{public}s for request %s", v124, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D90A10](v177, -1, -1);
    MEMORY[0x223D90A10](v124, -1, -1);
  }

  else
  {

    v121(v122, v123);
  }

  (*(v0 + 1088))(*(v0 + 1056), *(v0 + 992));

  v134 = *(v0 + 8);

  return v134(v168);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC05fetchF7Objects11identifiers13configurationSayAA0decF6Object_pGSaySSG_20ModelManagerServices0C28ProviderRequestConfigurationVtYaAJ0C5ErrorOYKFTQ1_()
{
  v1 = *(*v0 + 880);

  return MEMORY[0x2822009F8](_s24TokenGenerationInference08OnDeviceC15AssetRepositoryC05fetchF7Objects11identifiers13configurationSayAA0decF6Object_pGSaySSG_20ModelManagerServices0C28ProviderRequestConfigurationVtYaAJ0C5ErrorOYKFTY2_, v1, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC05fetchF7Objects11identifiers13configurationSayAA0decF6Object_pGSaySSG_20ModelManagerServices0C28ProviderRequestConfigurationVtYaAJ0C5ErrorOYKFTY2_()
{
  v160 = v0;
  v1 = (v0 + 856);
  (*(v0 + 1072))(*(v0 + 1032), *(v0 + 1056), *(v0 + 992));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 1088);
  v6 = *(v0 + 1032);
  v7 = *(v0 + 992);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v151 = v5;
    v9 = swift_slowAlloc();
    v158 = v9;
    *v8 = 136446210;
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v151(v6, v7);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v158);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_220940000, v2, v3, "Resumed fetch request %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x223D90A10](v9, -1, -1);
    v14 = v8;
    v1 = (v0 + 856);
    MEMORY[0x223D90A10](v14, -1, -1);
  }

  else
  {

    v5(v6, v7);
  }

  swift_beginAccess();
  v15 = *v1;
  v16 = *(*v1 + 16);
  v157 = *v1;
  if (v16)
  {

    v17 = (v15 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      swift_beginAccess();

      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
      v22 = v21;

      if (v22)
      {
        v23 = *(v0 + 880);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = *(v23 + 144);
        v158 = v25;
        *(v23 + 144) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
          v25 = v158;
        }

        v26 = *(v0 + 880);

        outlined init with take of RandomNumberGenerator((*(v25 + 56) + 40 * v20), v0 + 136);
        specialized _NativeDictionary._delete(at:)(v20, v25);
        *(v26 + 144) = v25;
      }

      else
      {
        *(v0 + 168) = 0;
        *(v0 + 152) = 0u;
        *(v0 + 136) = 0u;
      }

      outlined destroy of [Int](v0 + 136, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
      swift_endAccess();
      v17 += 2;
      --v16;
    }

    while (v16);
    v15 = v157;
  }

  v27 = *(v0 + 1056);
  v28 = *(v0 + 880);
  swift_beginAccess();
  v29 = *(v28 + 176);

  LOBYTE(v27) = specialized Set.contains(_:)(v27, v29);

  if (v27)
  {
    v30 = *(v0 + 1072);
    v31 = *(v0 + 1056);
    v32 = *(v0 + 1024);
    v33 = *(v0 + 992);

    v30(v32, v31, v33);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 1088);
    v38 = *(v0 + 1024);
    v39 = *(v0 + 992);
    if (v36)
    {
      v146 = *(v0 + 1088);
      v40 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v158 = v152;
      *v40 = 136446210;
      lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      v146(v38, v39);
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v158);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_220940000, v34, v35, "Request %{public}s is cancelled because of asset unload", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v152);
      MEMORY[0x223D90A10](v152, -1, -1);
      MEMORY[0x223D90A10](v40, -1, -1);
    }

    else
    {

      v37(v38, v39);
    }

    v81 = *(v0 + 1056);
    v82 = *(v0 + 984);
    v83 = *(v0 + 888);
    swift_beginAccess();
    specialized Set._Variant.remove(_:)(v81, v82);
    outlined destroy of [Int](v82, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    swift_endAccess();
    OnDeviceInferenceAssetRepository.resumeSuspendedFetch()();
    v84 = *MEMORY[0x277D29DB8];
    v85 = type metadata accessor for InferenceError();
    (*(*(v85 - 8) + 104))(v83, v84, v85);
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    swift_willThrowTypedImpl();
LABEL_55:
    (*(v0 + 1088))(*(v0 + 1056), *(v0 + 992));

    v138 = *(v0 + 8);

    return v138();
  }

  else
  {
    v45 = *(v0 + 880);
    v46 = *(v15 + 16);

    result = swift_beginAccess();
    if (v46)
    {
      v48 = 0;
      log = *(v0 + 960);
      v153 = (*(v0 + 952) + 56);
      v49 = -v46;
      v50 = v15 + 40;
      v141 = *(v0 + 944);
      v142 = MEMORY[0x277D84F90];
      v147 = v15 + 40;
      do
      {
        v51 = (v50 + 16 * v48++);
        while (1)
        {
          if ((v48 - 1) >= *(v15 + 16))
          {
            __break(1u);
            return result;
          }

          v53 = *(v51 - 1);
          v52 = *v51;
          v54 = *(v45 + 128);
          v55 = *(v54 + 16);

          if (!v55)
          {
            goto LABEL_51;
          }

          v56 = specialized __RawDictionaryStorage.find<A>(_:)(v53, v52);
          if ((v57 & 1) == 0)
          {

LABEL_51:
            v117 = *(v0 + 1072);
            v118 = *(v0 + 1056);
            v119 = *(v0 + 1016);
            v120 = *(v0 + 992);

            v117(v119, v118, v120);

            v121 = Logger.logObject.getter();
            v122 = static os_log_type_t.error.getter();

            v123 = os_log_type_enabled(v121, v122);
            v124 = *(v0 + 1088);
            v125 = *(v0 + 1016);
            v126 = *(v0 + 992);
            if (v123)
            {
              v150 = v122;
              v127 = swift_slowAlloc();
              v156 = swift_slowAlloc();
              v158 = v156;
              *v127 = 136446466;
              lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v128 = dispatch thunk of CustomStringConvertible.description.getter();
              logb = v121;
              v130 = v129;
              v124(v125, v126);
              v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v130, &v158);

              *(v127 + 4) = v131;
              *(v127 + 12) = 2082;
              *(v127 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v52, &v158);
              _os_log_impl(&dword_220940000, logb, v150, "Fetch for request %{public}s failed, asset %{public}s is not loaded", v127, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223D90A10](v156, -1, -1);
              MEMORY[0x223D90A10](v127, -1, -1);
            }

            else
            {

              v124(v125, v126);
            }

            v132 = *(v0 + 928);
            v133 = *(v0 + 920);
            v134 = *(v0 + 912);
            v135 = *(v0 + 888);
            OnDeviceInferenceAssetRepository.resumeSuspendedFetch()();
            v158 = 0;
            v159 = 0xE000000000000000;
            _StringGuts.grow(_:)(22);

            v158 = 0x207465737341;
            v159 = 0xE600000000000000;
            MEMORY[0x223D8E780](v53, v52);

            MEMORY[0x223D8E780](0x20746F6E20736920, 0xEE00646564616F6CLL);
            _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
            InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
            (*(v133 + 16))(v135, v132, v134);
            v136 = *MEMORY[0x277D29DD8];
            v137 = type metadata accessor for InferenceError();
            (*(*(v137 - 8) + 104))(v135, v136, v137);
            lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
            swift_willThrowTypedImpl();
            (*(v133 + 8))(v132, v134);
            goto LABEL_55;
          }

          v58 = v56;

          outlined init with copy of DeterministicLanguageModelProtocol(*(v54 + 56) + 40 * v58, v0 + 176);

          outlined init with copy of DeterministicLanguageModelProtocol(v0 + 176, v0 + 216);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
          if ((swift_dynamicCast() & 1) == 0)
          {
            break;
          }

          v59 = *(v0 + 976);
          __swift_destroy_boxed_opaque_existential_1((v0 + 176));
          result = outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v59, type metadata accessor for OnDeviceInferenceAssetObjectBaseModel);
          ++v48;
          v51 += 2;
          v15 = v157;
          if (v49 + v48 == 1)
          {
            goto LABEL_37;
          }
        }

        outlined init with copy of DeterministicLanguageModelProtocol(v0 + 176, v0 + 256);
        v60 = swift_dynamicCast();
        v61 = *v153;
        if (v60)
        {
          v62 = *(v0 + 960);
          v63 = *(v0 + 944);
          v64 = *(v0 + 936);
          v65 = *(v0 + 872);
          v61(v64, 0, 1, v63);
          outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v64, v62, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
          OnDeviceInferenceAssetRepository.clearE5RunnerAssetIfNeeded(e5RunnerAsset:configuration:)(v62, v65);
          *(v0 + 360) = v63;
          *(v0 + 368) = &protocol witness table for OnDeviceInferenceAssetObjectE5Runner;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 336));
          outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v62, boxed_opaque_existential_1, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
          __swift_destroy_boxed_opaque_existential_1((v0 + 176));
          outlined init with take of RandomNumberGenerator((v0 + 336), v0 + 176);
          isa = log[1].isa;
          v140 = *v62;
          *(v0 + 400) = v63;
          *(v0 + 408) = &protocol witness table for OnDeviceInferenceAssetObjectE5Runner;
          v67 = __swift_allocate_boxed_opaque_existential_1((v0 + 376));
          outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v62, v67, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
          swift_beginAccess();
          outlined init with take of RandomNumberGenerator((v0 + 376), v0 + 416);
          LOBYTE(v63) = swift_isUniquelyReferenced_nonNull_native();
          v158 = *(v45 + 128);
          *(v45 + 128) = 0x8000000000000000;
          v68 = *(v0 + 440);
          v69 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 416, v68);
          v70 = *(v68 - 8);
          v71 = swift_task_alloc();
          (*(v70 + 16))(v71, v69, v68);
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, v140, isa, v63, &v158);
          __swift_destroy_boxed_opaque_existential_1((v0 + 416));

          *(v45 + 128) = v158;
          swift_endAccess();
          v72 = *(v62 + *(v141 + 32));
          v73 = v72 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_prefixKVCacheTokensMatchCount;
          *v73 = 0;
          v73[8] = 1;
          v74 = v72 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_promptModulesKVCacheTokensMatchCount;
          *v74 = 0;
          v74[8] = 1;
          v72[8] = 0;
          v75 = static Duration.zero.getter();
          v77 = v76;
          swift_beginAccess();
          v72[9] = v75;
          v72[10] = v77;
          outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v62, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
        }

        else
        {
          v78 = *(v0 + 936);
          v61(v78, 1, 1, *(v0 + 944));
          outlined destroy of [Int](v78, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
        }

        outlined init with copy of DeterministicLanguageModelProtocol(v0 + 176, v0 + 296);
        v15 = v157;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v142 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v142[2] + 1, 1, v142);
        }

        v80 = v142[2];
        v79 = v142[3];
        if (v80 >= v79 >> 1)
        {
          v142 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1, v142);
        }

        __swift_destroy_boxed_opaque_existential_1((v0 + 176));
        v142[2] = v80 + 1;
        result = outlined init with take of RandomNumberGenerator((v0 + 296), &v142[5 * v80 + 4]);
        v50 = v147;
      }

      while (v49 + v48);
    }

    else
    {
      v142 = MEMORY[0x277D84F90];
    }

LABEL_37:

    v86 = v142[2];
    if (v86)
    {
      v87 = (v142 + 4);

      v88 = &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd;
      do
      {
        outlined init with copy of DeterministicLanguageModelProtocol(v87, v0 + 56);
        outlined init with copy of DeterministicLanguageModelProtocol(v0 + 56, v0 + 576);
        __swift_instantiateConcreteTypeFromMangledNameV2(v88, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
        if (swift_dynamicCast())
        {
          outlined destroy of OnDeviceInferenceAssetObjectE5Runner(*(v0 + 904), type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
        }

        else
        {
          v89 = *(v0 + 880);
          v90 = *(v0 + 80);
          v91 = *(v0 + 88);
          __swift_project_boxed_opaque_existential_1((v0 + 56), v90);
          v154 = (*(v91 + 8))(v90, v91);
          v93 = v92;
          outlined init with copy of DeterministicLanguageModelProtocol(v0 + 56, v0 + 496);
          swift_beginAccess();
          v148 = swift_isUniquelyReferenced_nonNull_native();
          v158 = *(v89 + 144);
          *(v89 + 144) = 0x8000000000000000;
          v94 = *(v0 + 520);
          loga = *(v0 + 528);
          v95 = v88;
          v96 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 496, v94);
          v97 = *(v94 - 8);
          v98 = swift_task_alloc();
          v99 = v96;
          v88 = v95;
          (*(v97 + 16))(v98, v99, v94);
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v98, v154, v93, v148, &v158, v94, loga);

          __swift_destroy_boxed_opaque_existential_1((v0 + 496));

          *(v89 + 144) = v158;
          swift_endAccess();
        }

        __swift_destroy_boxed_opaque_existential_1((v0 + 56));
        v87 += 40;
        --v86;
      }

      while (v86);
    }

    else
    {
    }

    (*(v0 + 1072))(*(v0 + 1008), *(v0 + 1056), *(v0 + 992));
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.default.getter();
    v102 = os_log_type_enabled(v100, v101);
    v103 = *(v0 + 1088);
    v104 = *(v0 + 1008);
    v105 = *(v0 + 992);
    if (v102)
    {
      v106 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      v158 = v155;
      *v106 = 136446466;

      v149 = v103;
      v108 = MEMORY[0x223D8E8D0](v107, MEMORY[0x277D837D0]);
      v110 = v109;

      v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v110, &v158);

      *(v106 + 4) = v111;
      *(v106 + 12) = 2080;
      lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v112 = dispatch thunk of CustomStringConvertible.description.getter();
      v114 = v113;
      v149(v104, v105);
      v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v114, &v158);

      *(v106 + 14) = v115;

      _os_log_impl(&dword_220940000, v100, v101, "Successfully fetched asset %{public}s for request %s", v106, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D90A10](v155, -1, -1);
      MEMORY[0x223D90A10](v106, -1, -1);
    }

    else
    {

      v103(v104, v105);
    }

    (*(v0 + 1088))(*(v0 + 1056), *(v0 + 992));

    v116 = *(v0 + 8);

    return v116(v142);
  }
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC05fetchF7Objects11identifiers13configurationSayAA0decF6Object_pGSaySSG_20ModelManagerServices0C28ProviderRequestConfigurationVtYaAJ0C5ErrorOYKFyScCyyts5NeverOGXEfU0_(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for OnDeviceInferenceSuspendedFetch(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v28[-v16];
  swift_beginAccess();
  v18 = *a2;
  v19 = *(v9 + 28);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  (*(*(v20 - 8) + 16))(&v17[v19], a1, v20);
  v21 = *(v9 + 32);
  v22 = type metadata accessor for UUID();
  (*(*(v22 - 8) + 16))(&v17[v21], a3, v22);
  *v17 = v18;
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v17, v14, type metadata accessor for OnDeviceInferenceSuspendedFetch);
  swift_beginAccess();
  v23 = *(a4 + 160);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 160) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    *(a4 + 160) = v23;
  }

  v26 = v23[2];
  v25 = v23[3];
  if (v26 >= v25 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v23);
  }

  v23[2] = v26 + 1;
  outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v14, v23 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v26, type metadata accessor for OnDeviceInferenceSuspendedFetch);
  *(a4 + 160) = v23;
  swift_endAccess();
  return outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v17, type metadata accessor for OnDeviceInferenceSuspendedFetch);
}

Swift::Void __swiftcall OnDeviceInferenceAssetRepository.releaseAssetObjects(assetObjects:)(Swift::OpaquePointer assetObjects)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v81 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v84 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v91 = &v81 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v90 = &v81 - v13;
  v92 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  v14 = *(v92 - 8);
  MEMORY[0x28223BE20](v92, v15);
  v81 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(assetObjects._rawValue + 2);
  if (v17)
  {
    v94 = v8;
    v89 = v7;
    v98 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
    v18 = v98;
    v19 = assetObjects._rawValue + 32;
    do
    {
      outlined init with copy of DeterministicLanguageModelProtocol(v19, &v99);
      v20 = *(&v100 + 1);
      v21 = v101;
      __swift_project_boxed_opaque_existential_1(&v99, *(&v100 + 1));
      v22 = (*(v21 + 8))(v20, v21);
      v24 = v23;
      __swift_destroy_boxed_opaque_existential_1(&v99);
      v98 = v18;
      v26 = v18[2];
      v25 = v18[3];
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
        v18 = v98;
      }

      v18[2] = v26 + 1;
      v27 = &v18[2 * v26];
      v27[4] = v22;
      v27[5] = v24;
      v19 += 40;
      --v17;
    }

    while (v17);
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    v29 = __swift_project_value_buffer(v28, static Log.device);

    v95 = v29;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v99 = v33;
      *v32 = 136446210;
      v34 = MEMORY[0x223D8E8D0](v18, MEMORY[0x277D837D0]);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v99);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_220940000, v30, v31, "Releasing assets %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x223D90A10](v33, -1, -1);
      MEMORY[0x223D90A10](v32, -1, -1);
    }

    v37 = v94;
    v38 = v18[2];
    if (v38)
    {
      swift_beginAccess();
      v88 = (v14 + 56);
      v82 = (v14 + 48);
      v87 = (v84 + 56);
      v86 = (v84 + 32);
      v85 = (v84 + 48);
      v83 = (v84 + 8);
      v39 = v18 + 5;
      *&v40 = 136446210;
      v93 = v40;
      do
      {
        v41 = *(v39 - 1);
        v42 = *v39;
        v43 = *(v2 + 144);
        v44 = *(v43 + 16);

        if (v44)
        {

          v45 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v42);
          if (v46)
          {
            outlined init with copy of DeterministicLanguageModelProtocol(*(v43 + 56) + 40 * v45, &v99);

            outlined destroy of [Int](&v99, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
            v47 = *(v2 + 144);
            if (*(v47 + 16))
            {

              v48 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v42);
              if (v49)
              {
                outlined init with copy of DeterministicLanguageModelProtocol(*(v47 + 56) + 40 * v48, &v99);

                __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
                v50 = v90;
                v51 = v92;
                v52 = swift_dynamicCast();
                (*v88)(v50, v52 ^ 1u, 1, v51);
                if ((*v82)(v50, 1, v51) != 1)
                {
                  v53 = v81;
                  outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v50, v81, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
                  v54 = *(v53 + *(v92 + 28) + 8);
                  ObjectType = swift_getObjectType();
                  (*(v54 + 104))(0, ObjectType, v54);
                  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v53, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
LABEL_27:
                  swift_beginAccess();
                  v62 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v42);
                  if (v63)
                  {
                    v64 = v62;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v66 = *(v2 + 144);
                    v96 = v66;
                    *(v2 + 144) = 0x8000000000000000;
                    if (!isUniquelyReferenced_nonNull_native)
                    {
                      specialized _NativeDictionary.copy()();
                      v66 = v96;
                    }

                    outlined init with take of RandomNumberGenerator((*(v66 + 56) + 40 * v64), &v99);
                    specialized _NativeDictionary._delete(at:)(v64, v66);
                    *(v2 + 144) = v66;
                  }

                  else
                  {
                    v101 = 0;
                    v99 = 0u;
                    v100 = 0u;
                  }

                  outlined destroy of [Int](&v99, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
                  swift_endAccess();
                  swift_beginAccess();
                  v67 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v42);
                  if (v68)
                  {
                    v69 = v67;
                    v70 = swift_isUniquelyReferenced_nonNull_native();
                    v71 = *(v2 + 168);
                    v97 = v71;
                    *(v2 + 168) = 0x8000000000000000;
                    if (!v70)
                    {
                      specialized _NativeDictionary.copy()();
                      v71 = v97;
                    }

                    v72 = v89;
                    (*(v84 + 32))(v89, *(v71 + 56) + *(v84 + 72) * v69, v37);
                    specialized _NativeDictionary._delete(at:)(v69, v71);
                    *(v2 + 168) = v71;

                    v73 = 0;
                  }

                  else
                  {
                    v73 = 1;
                    v72 = v89;
                  }

                  (*v87)(v72, v73, 1, v37);
                  swift_endAccess();
                  if ((*v85)(v72, 1, v37) == 1)
                  {

                    outlined destroy of [Int](v72, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
                  }

                  else
                  {
                    (*v86)(v91, v72, v37);

                    v74 = Logger.logObject.getter();
                    v75 = static os_log_type_t.default.getter();

                    if (os_log_type_enabled(v74, v75))
                    {
                      v76 = swift_slowAlloc();
                      v77 = swift_slowAlloc();
                      *&v99 = v77;
                      *v76 = v93;
                      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v99);

                      *(v76 + 4) = v78;
                      _os_log_impl(&dword_220940000, v74, v75, "Resuming suspended unload for asset %{public}s", v76, 0xCu);
                      __swift_destroy_boxed_opaque_existential_1(v77);
                      v79 = v77;
                      v37 = v94;
                      MEMORY[0x223D90A10](v79, -1, -1);
                      MEMORY[0x223D90A10](v76, -1, -1);
                    }

                    else
                    {
                    }

                    v80 = v91;
                    CheckedContinuation.resume(returning:)();
                    (*v83)(v80, v37);
                  }

                  goto LABEL_14;
                }

LABEL_26:
                outlined destroy of [Int](v50, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
                goto LABEL_27;
              }
            }

            v50 = v90;
            (*v88)(v90, 1, 1, v92);
            goto LABEL_26;
          }
        }

        v101 = 0;
        v99 = 0u;
        v100 = 0u;
        outlined destroy of [Int](&v99, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);

        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          *&v99 = v59;
          *v58 = v93;
          v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v99);

          *(v58 + 4) = v60;
          _os_log_impl(&dword_220940000, v56, v57, "Attempting to release asset %{public}s that is not marked as in-use", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v59);
          v61 = v59;
          v37 = v94;
          MEMORY[0x223D90A10](v61, -1, -1);
          MEMORY[0x223D90A10](v58, -1, -1);
        }

        else
        {
        }

LABEL_14:
        v39 += 2;
        --v38;
      }

      while (v38);
    }

    OnDeviceInferenceAssetRepository.resumeSuspendedFetch()();
  }
}

Swift::String __swiftcall OnDeviceInferenceAssetRepository.dumpState()()
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVySS24TokenGenerationInference08OnDeviceD11AssetObject_p_GMd, &_sSD4KeysVySS24TokenGenerationInference08OnDeviceD11AssetObject_p_GMR);
  lazy protocol witness table accessor for type [String : OnDeviceInferenceAssetObject].Keys and conformance [A : B].Keys();
  lazy protocol witness table accessor for type String and conformance String();
  v0 = Sequence<>.joined(separator:)();
  v2 = v1;

  swift_beginAccess();

  v3 = Sequence<>.joined(separator:)();
  v5 = v4;

  swift_beginAccess();

  v6 = Sequence<>.joined(separator:)();
  v8 = v7;

  _StringGuts.grow(_:)(87);
  MEMORY[0x223D8E780](0xD00000000000002ALL, 0x8000000220AFD2A0);
  MEMORY[0x223D8E780](v0, v2);

  MEMORY[0x223D8E780](0xD000000000000017, 0x8000000220AFD2D0);
  MEMORY[0x223D8E780](v6, v8);

  MEMORY[0x223D8E780](0xD000000000000010, 0x8000000220AFD2F0);
  MEMORY[0x223D8E780](v3, v5);

  v9 = 0;
  v10 = 0xE000000000000000;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t OnDeviceInferenceAssetRepository.clearE5RunnerAssetIfNeeded(e5RunnerAsset:configuration:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceProviderRequestConfiguration();
  v86 = *(v4 - 8);
  v87 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v85 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v73 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v84 = v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = v73 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = v73 - v25;
  v94[0] = 0;
  v27 = a1[1];
  v91 = *a1;
  v92 = v27;
  v88 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  v28 = *(v88 + 52);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a1 + v28, v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of [Int](v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    InferenceProviderRequestConfiguration.sessionUUID.getter();
    (*(v16 + 56))(v11, 0, 1, v15);
    outlined assign with take of UUID?(v11, a1 + v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v29 = a2;
    v30 = v92;
    v31 = a1;
  }

  else
  {
    v82 = v28;
    v83 = a1;
    v81 = v11;
    (*(v16 + 32))(v26, v14, v15);
    v89 = a2;
    InferenceProviderRequestConfiguration.sessionUUID.getter();
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v32 = dispatch thunk of static Equatable.== infix(_:_:)();
    v33 = *(v16 + 8);
    v33(v23, v15);
    v34 = v15;
    if (v32)
    {
      v33(v26, v15);
      v29 = v89;
      v30 = v92;
      v31 = v83;
    }

    else
    {
      v78 = v33;
      v35 = v92;
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Log.device);
      v79 = v16;
      v80 = v26;
      v37 = *(v16 + 16);
      v38 = v84;
      v37(v84, v26, v15);
      v40 = v85;
      v39 = v86;
      v41 = v87;
      (*(v86 + 16))(v85, v89, v87);

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v74 = v23;
        v76 = v43;
        v45 = v44;
        v77 = swift_slowAlloc();
        v93 = v77;
        *v45 = 136446722;
        *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v35, &v93);
        *(v45 + 12) = 2082;
        v73[1] = lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v75 = v42;
        v46 = dispatch thunk of CustomStringConvertible.description.getter();
        v48 = v47;
        v49 = v38;
        v50 = v78;
        v78(v49, v34);
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v93);

        *(v45 + 14) = v51;
        *(v45 + 22) = 2082;
        v52 = v74;
        InferenceProviderRequestConfiguration.sessionUUID.getter();
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        v55 = v54;
        v50(v52, v34);
        (*(v39 + 8))(v40, v41);
        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, &v93);

        *(v45 + 24) = v56;
        v57 = v75;
        _os_log_impl(&dword_220940000, v75, v76, "E5Runner %{public}s last used for ID %{public}s is different from next ID %{public}s. Clearing model state.", v45, 0x20u);
        v58 = v77;
        swift_arrayDestroy();
        MEMORY[0x223D90A10](v58, -1, -1);
        MEMORY[0x223D90A10](v45, -1, -1);
      }

      else
      {

        (*(v39 + 8))(v40, v41);
        v59 = v38;
        v50 = v78;
        v78(v59, v34);
      }

      v61 = v81;
      v60 = v82;
      v29 = v89;
      InferenceProviderRequestConfiguration.sessionUUID.getter();
      (*(v79 + 56))(v61, 0, 1, v34);
      v62 = v83;
      v63 = v83 + v60;
      v64 = v83;
      outlined assign with take of UUID?(v61, v63, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v65 = v88;
      v66 = *(v62 + *(v88 + 28) + 8);
      ObjectType = swift_getObjectType();
      (*(v66 + 56))(ObjectType, v66);
      v68 = type metadata accessor for E5TransformerLanguageModel(0);
      v69 = swift_unknownObjectRetain();
      v70 = specialized E5TransformerLanguageModel.__allocating_init(e5Runner:name:)(v69, 1296840005, 0xE400000000000000, v68, ObjectType, v66);
      v50(v80, v34);
      v71 = *(v65 + 32);

      v31 = v64;
      *(v64 + v71) = v70;
      v94[0] = 1;
      v30 = v92;
    }
  }

  return $defer #1 () in OnDeviceInferenceAssetRepository.clearE5RunnerAssetIfNeeded(e5RunnerAsset:configuration:)(v94, v90, v91, v30, v29, v31);
}

uint64_t $defer #1 () in OnDeviceInferenceAssetRepository.clearE5RunnerAssetIfNeeded(e5RunnerAsset:configuration:)(_BYTE *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a5;
  v46 = type metadata accessor for UUID();
  v11 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for InferenceProviderRequestConfiguration();
  v48 = *(v15 - 8);
  result = MEMORY[0x28223BE20](v15, v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((a2 + 232), *(a2 + 256));
    v20 = off_2834512B8[0];
    type metadata accessor for OnDeviceInferenceOverrides(0);
    result = v20();
    if (result != 2 && (result & 1) != 0)
    {
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Log.device);
      v22 = v48;
      (*(v48 + 16))(v19, v47, v15);

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v45 = v24;
        v26 = v25;
        v47 = swift_slowAlloc();
        v49 = v47;
        *v26 = 136446466;
        *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v49);
        *(v26 + 12) = 2082;
        v44 = v23;
        InferenceProviderRequestConfiguration.requestUUID.getter();
        lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v27 = v46;
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v29 = v22;
        v31 = v30;
        (*(v11 + 8))(v14, v27);
        (*(v29 + 8))(v19, v15);
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v31, &v49);

        *(v26 + 14) = v32;
        v33 = v44;
        _os_log_impl(&dword_220940000, v44, v45, "Resetting the e5Runner %{public}s for request %{public}s because prefix based kv cache optimization is disabled", v26, 0x16u);
        v34 = v47;
        swift_arrayDestroy();
        MEMORY[0x223D90A10](v34, -1, -1);
        MEMORY[0x223D90A10](v26, -1, -1);
      }

      else
      {

        (*(v22 + 8))(v19, v15);
      }

      v35 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
      v36 = a6 + *(v35 + 28);
      v37 = *(v36 + 8);
      ObjectType = swift_getObjectType();
      v39 = *(v37 + 40);
      swift_unknownObjectRetain();
      v39(ObjectType, v37);
      swift_unknownObjectRelease();
      v40 = type metadata accessor for E5TransformerLanguageModel(0);
      v41 = *(v36 + 8);
      v42 = swift_getObjectType();
      v43 = swift_unknownObjectRetain();
      *(a6 + *(v35 + 32)) = specialized E5TransformerLanguageModel.__allocating_init(e5Runner:name:)(v43, 1296840005, 0xE400000000000000, v40, v42, v41);
    }
  }

  return result;
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC08e5Runnerf9ObjectForF6Bundle33_65818D6FA4B5F545C6B162D7CBE031AELL10identifierAA0decfj2E5I0VSS_t20ModelManagerServices0C5ErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v156 = a3;
  v145 = a4;
  v7 = type metadata accessor for InferenceError.Context();
  v158 = *(v7 - 8);
  v159 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v157 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v155 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v147 = &v140 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v148 = &v140 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v149 = &v140 - v21;
  v22 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  v150 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22, v23);
  v26 = &v140 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = &v140 - v29;
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v140 - v32;
  v34 = *(v4 + 216);
  v154 = v4;
  __swift_project_boxed_opaque_existential_1((v4 + 192), v34);
  v35 = a1;
  v36 = a2;
  v37 = v178;
  OnDeviceInferenceProviderDataSource.resourceBundle(for:)(&v170);
  v178 = v37;
  if (v37)
  {
    v38 = v37;
    v39 = _convertErrorToNSError(_:)();
    if (one-time initialization token for device == -1)
    {
LABEL_3:
      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Log.device);

      v41 = v38;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();

      v44 = os_log_type_enabled(v42, v43);
      v155 = v39;
      if (v44)
      {
        v45 = v36;
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *&v170 = v48;
        *v46 = 136446466;
        v49 = v45;
        v39 = v155;
        *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v49, &v170);
        *(v46 + 12) = 2112;
        v50 = v38;
        v51 = _swift_stdlib_bridgeErrorToNSError();
        *(v46 + 14) = v51;
        *v47 = v51;
        _os_log_impl(&dword_220940000, v42, v43, "Failed to look up resource bundle %{public}s : %@", v46, 0x16u);
        outlined destroy of [Int](v47, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x223D90A10](v47, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v48);
        MEMORY[0x223D90A10](v48, -1, -1);
        MEMORY[0x223D90A10](v46, -1, -1);
      }

      v52 = v159;
      v53 = [v39 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v54 = [v39 domain];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      [v39 code];
      v55 = v178;
      v56 = v178;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v57 = v157;
      InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
      v58 = v158;
      v59 = v156;
      (*(v158 + 16))(v156, v57, v52);
      v60 = *MEMORY[0x277D29DC0];
      v61 = type metadata accessor for InferenceError();
      (*(*(v61 - 8) + 104))(v59, v60, v61);
      lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
      swift_willThrowTypedImpl();

      return (*(v58 + 8))(v57, v52);
    }

LABEL_76:
    swift_once();
    goto LABEL_3;
  }

  v141 = v30;
  v142 = v33;
  v153 = v22;
  v140 = v26;
  v143 = v35;
  v144 = a2;
  outlined init with take of RandomNumberGenerator(&v170, v175);
  v36 = v177;
  __swift_project_boxed_opaque_existential_1(v175, v176);
  v63 = dispatch thunk of ResourceBundle.resources.getter();
  v64 = v63;
  v35 = *(v63 + 16);
  if (v35)
  {
    v38 = 0;
    v39 = (v63 + 32);
    while (1)
    {
      if (v38 >= *(v64 + 16))
      {
        goto LABEL_73;
      }

      outlined init with copy of DeterministicLanguageModelProtocol(v39, &v167);
      outlined init with copy of DeterministicLanguageModelProtocol(&v167, &v163);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B8Resource_pMd, &_s12ModelCatalog0B8Resource_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog10LLMAdapter_pMd, &_s12ModelCatalog10LLMAdapter_pMR);
      if (swift_dynamicCast())
      {
        break;
      }

      ++v38;
      v162 = 0;
      v160 = 0u;
      v161 = 0u;
      outlined destroy of [Int](&v160, &_s12ModelCatalog10LLMAdapter_pSgMd, &_s12ModelCatalog10LLMAdapter_pSgMR);
      __swift_destroy_boxed_opaque_existential_1(&v167);
      v39 += 40;
      if (v35 == v38)
      {
        goto LABEL_11;
      }
    }

    v77 = &_s12ModelCatalog10LLMAdapter_pSgMd;
    v78 = &_s12ModelCatalog10LLMAdapter_pSgMR;
  }

  else
  {
LABEL_11:

    v35 = v176;
    __swift_project_boxed_opaque_existential_1(v175, v176);
    v65 = dispatch thunk of ResourceBundle.resources.getter();
    v66 = v65;
    v36 = *(v65 + 16);
    if (v36)
    {
      v67 = 0;
      v38 = &_s12ModelCatalog8LLMModel_pMR;
      v39 = (v65 + 32);
      while (1)
      {
        if (v67 >= *(v66 + 16))
        {
          goto LABEL_74;
        }

        outlined init with copy of DeterministicLanguageModelProtocol(v39, &v167);
        outlined init with copy of DeterministicLanguageModelProtocol(&v167, &v163);
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B8Resource_pMd, &_s12ModelCatalog0B8Resource_pMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog8LLMModel_pMd, &_s12ModelCatalog8LLMModel_pMR);
        if (swift_dynamicCast())
        {
          break;
        }

        ++v67;
        v162 = 0;
        v160 = 0u;
        v161 = 0u;
        outlined destroy of [Int](&v160, &_s12ModelCatalog8LLMModel_pSgMd, &_s12ModelCatalog8LLMModel_pSgMR);
        __swift_destroy_boxed_opaque_existential_1(&v167);
        v39 += 40;
        if (v36 == v67)
        {
          goto LABEL_16;
        }
      }

      v77 = &_s12ModelCatalog8LLMModel_pSgMd;
      v78 = &_s12ModelCatalog8LLMModel_pSgMR;
    }

    else
    {
LABEL_16:

      v35 = v176;
      __swift_project_boxed_opaque_existential_1(v175, v176);
      v68 = dispatch thunk of ResourceBundle.resources.getter();
      v69 = v68;
      v36 = *(v68 + 16);
      if (!v36)
      {
LABEL_21:

        *&v170 = 0;
        *(&v170 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(48);

        *&v170 = 0xD00000000000002ELL;
        *(&v170 + 1) = 0x8000000220AFCD50;
        MEMORY[0x223D8E780](v143, v144);

        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        v71 = v157;
        InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
        v73 = v158;
        v72 = v159;
        v74 = v156;
        (*(v158 + 16))(v156, v71, v159);
        v75 = *MEMORY[0x277D29DC0];
        v76 = type metadata accessor for InferenceError();
        (*(*(v76 - 8) + 104))(v74, v75, v76);
        lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
        swift_willThrowTypedImpl();
        (*(v73 + 8))(v71, v72);
        return __swift_destroy_boxed_opaque_existential_1(v175);
      }

      v70 = 0;
      v38 = &_s12ModelCatalog08LLMDraftA0_pMR;
      v39 = (v68 + 32);
      while (1)
      {
        if (v70 >= *(v69 + 16))
        {
          goto LABEL_75;
        }

        outlined init with copy of DeterministicLanguageModelProtocol(v39, &v167);
        outlined init with copy of DeterministicLanguageModelProtocol(&v167, &v163);
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B8Resource_pMd, &_s12ModelCatalog0B8Resource_pMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog08LLMDraftA0_pMd, &_s12ModelCatalog08LLMDraftA0_pMR);
        if (swift_dynamicCast())
        {
          break;
        }

        ++v70;
        v162 = 0;
        v160 = 0u;
        v161 = 0u;
        outlined destroy of [Int](&v160, &_s12ModelCatalog08LLMDraftA0_pSgMd, &_s12ModelCatalog08LLMDraftA0_pSgMR);
        __swift_destroy_boxed_opaque_existential_1(&v167);
        v39 += 40;
        if (v36 == v70)
        {
          goto LABEL_21;
        }
      }

      v77 = &_s12ModelCatalog08LLMDraftA0_pSgMd;
      v78 = &_s12ModelCatalog08LLMDraftA0_pSgMR;
    }
  }

  outlined destroy of [Int](&v160, v77, v78);

  outlined init with take of RandomNumberGenerator(&v167, &v170);
  __swift_project_boxed_opaque_existential_1(&v170, *(&v171 + 1));
  v152 = dispatch thunk of CatalogResource.id.getter();
  v80 = v79;
  __swift_destroy_boxed_opaque_existential_1(&v170);
  v81 = v144;
  v82 = v154;
  v83 = v150;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v84 = type metadata accessor for Logger();
  v85 = __swift_project_value_buffer(v84, static Log.device);

  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.info.getter();

  v88 = os_log_type_enabled(v86, v87);
  v146 = v80;
  if (v88)
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *&v170 = v90;
    *v89 = 136446210;
    *(v89 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v146, &v170);
    _os_log_impl(&dword_220940000, v86, v87, "Using identifier %{public}s for localization metadata fetch", v89, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v90);
    v91 = v90;
    v80 = v146;
    MEMORY[0x223D90A10](v91, -1, -1);
    MEMORY[0x223D90A10](v89, -1, -1);
  }

  v92 = v153;
  swift_beginAccess();
  v93 = *(v82 + 128);
  if (!*(v93 + 16))
  {
    goto LABEL_35;
  }

  v94 = specialized __RawDictionaryStorage.find<A>(_:)(v152, v80);
  if ((v95 & 1) == 0)
  {

LABEL_35:
    v96 = v149;
    v151 = *(v83 + 56);
    v151(v149, 1, 1, v92);
    goto LABEL_36;
  }

  outlined init with copy of DeterministicLanguageModelProtocol(*(v93 + 56) + 40 * v94, &v170);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
  v96 = v149;
  v97 = swift_dynamicCast();
  v151 = *(v83 + 56);
  v151(v96, v97 ^ 1u, 1, v92);
  if ((*(v83 + 48))(v96, 1, v92) != 1)
  {

    v98 = v142;
    outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v96, v142, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);

    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      *&v170 = v102;
      *v101 = 136446210;
      *(v101 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v81, &v170);
      v103 = "Found loaded e5Runner asset object for resource bundle %{public}s";
      goto LABEL_41;
    }

    goto LABEL_42;
  }

LABEL_36:
  outlined destroy of [Int](v96, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
  swift_beginAccess();
  v104 = *(v82 + 144);
  if (*(v104 + 16))
  {

    v105 = specialized __RawDictionaryStorage.find<A>(_:)(v152, v80);
    if (v106)
    {
      outlined init with copy of DeterministicLanguageModelProtocol(*(v104 + 56) + 40 * v105, &v170);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
      v107 = v148;
      v108 = swift_dynamicCast();
      v151(v107, v108 ^ 1u, 1, v92);
      if ((*(v83 + 48))(v107, 1, v92) != 1)
      {

        v98 = v141;
        outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v107, v141, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);

        v99 = Logger.logObject.getter();
        v100 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          *&v170 = v102;
          *v101 = 136446210;
          *(v101 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v81, &v170);
          v103 = "Found inuse e5Runner asset object for resource bundle %{public}s";
          goto LABEL_41;
        }

        goto LABEL_42;
      }

      goto LABEL_45;
    }
  }

  v107 = v148;
  v151(v148, 1, 1, v92);
LABEL_45:
  v148 = v85;
  outlined destroy of [Int](v107, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
  v109 = *(v82 + 128);
  v36 = v109 + 64;
  v110 = 1 << *(v109 + 32);
  v111 = -1;
  if (v110 < 64)
  {
    v111 = ~(-1 << v110);
  }

  v38 = v111 & *(v109 + 64);
  v112 = v110 + 63;
  v113 = v83;
  v39 = (v112 >> 6);
  v149 = (v113 + 56);
  swift_bridgeObjectRetain_n();
  v35 = 0;
  while (1)
  {
    if (!v38)
    {
      while (1)
      {
        v114 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v114 >= v39)
        {

          v170 = 0u;
          v171 = 0u;
          v172 = 0u;
          v173 = 0;

          v126 = v158;
          v125 = v159;
          v127 = v144;
          goto LABEL_61;
        }

        v38 = *(v36 + 8 * v114);
        ++v35;
        if (v38)
        {
          v35 = v114;
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

LABEL_55:
    v115 = __clz(__rbit64(v38)) | (v35 << 6);
    v116 = (*(v109 + 48) + 16 * v115);
    v118 = *v116;
    v117 = v116[1];
    outlined init with copy of DeterministicLanguageModelProtocol(*(v109 + 56) + 40 * v115, v168);
    *&v167 = v118;
    *(&v167 + 1) = v117;
    v163 = v167;
    v164 = v168[0];
    v165 = v168[1];
    v166 = v169;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(&v163, &v160, &_sSS3key_24TokenGenerationInference08OnDeviceD11AssetObject_p5valuetMd, &_sSS3key_24TokenGenerationInference08OnDeviceD11AssetObject_p5valuetMR);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
    v119 = v155;
    v120 = v153;
    if (!swift_dynamicCast())
    {
      v151(v119, 1, 1, v120);
      outlined destroy of [Int](v119, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
      goto LABEL_49;
    }

    v151(v119, 0, 1, v120);
    v121 = v119;
    v122 = *(v119 + 2);
    v123 = *(v121 + 24);

    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v121, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
    if (v122 == v152 && v123 == v146)
    {
      break;
    }

    v124 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v124)
    {

      goto LABEL_68;
    }

LABEL_49:
    v38 &= v38 - 1;
    outlined destroy of [Int](&v163, &_sSS3key_24TokenGenerationInference08OnDeviceD11AssetObject_p5valuetMd, &_sSS3key_24TokenGenerationInference08OnDeviceD11AssetObject_p5valuetMR);
  }

LABEL_68:
  v170 = v163;
  v171 = v164;
  v172 = v165;
  v173 = v166;

  v126 = v158;
  v125 = v159;
  v127 = v144;
  if (!*(&v170 + 1))
  {
LABEL_61:
    outlined destroy of [Int](&v170, &_sSS3key_24TokenGenerationInference08OnDeviceD11AssetObject_p5valuetSgMd, &_sSS3key_24TokenGenerationInference08OnDeviceD11AssetObject_p5valuetSgMR);
    v128 = v147;
    v151(v147, 1, 1, v153);
LABEL_62:
    outlined destroy of [Int](v128, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);

    v129 = Logger.logObject.getter();
    v130 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      *&v170 = v132;
      *v131 = 136446210;
      v133 = v143;
      *(v131 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v127, &v170);
      _os_log_impl(&dword_220940000, v129, v130, "Failed to look up e5Runner asset object for asset bundle %{public}s", v131, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v132);
      MEMORY[0x223D90A10](v132, -1, -1);
      MEMORY[0x223D90A10](v131, -1, -1);
    }

    else
    {

      v133 = v143;
    }

    *&v170 = 0;
    *(&v170 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    MEMORY[0x223D8E780](0xD000000000000039, 0x8000000220AFCD80);
    MEMORY[0x223D8E780](v133, v127);

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v134 = v157;
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
    v135 = v156;
    (*(v126 + 16))(v156, v134, v125);
    v136 = *MEMORY[0x277D29DD8];
    v137 = type metadata accessor for InferenceError();
    (*(*(v137 - 8) + 104))(v135, v136, v137);
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    swift_willThrowTypedImpl();
    (*(v126 + 8))(v134, v125);
    return __swift_destroy_boxed_opaque_existential_1(v175);
  }

  outlined init with take of RandomNumberGenerator(&v171, v174);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
  v128 = v147;
  v138 = v153;
  v139 = swift_dynamicCast();
  v151(v128, v139 ^ 1u, 1, v138);
  if ((*(v150 + 48))(v128, 1, v138) == 1)
  {
    goto LABEL_62;
  }

  v98 = v140;
  outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v128, v140, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);

  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v99, v100))
  {
    goto LABEL_42;
  }

  v101 = swift_slowAlloc();
  v102 = swift_slowAlloc();
  *&v170 = v102;
  *v101 = 136446210;
  *(v101 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v127, &v170);
  v103 = "Found e5Runner asset object for resource bundle %{public}s";
LABEL_41:
  _os_log_impl(&dword_220940000, v99, v100, v103, v101, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v102);
  MEMORY[0x223D90A10](v102, -1, -1);
  MEMORY[0x223D90A10](v101, -1, -1);
LABEL_42:

  outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v98, v145, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  return __swift_destroy_boxed_opaque_existential_1(v175);
}