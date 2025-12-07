void sub_1C7280E8C()
{
  v221 = v0;
  v1 = *(v0 + 120);
  v2 = OBJC_IVAR____TtC18PhotosIntelligence20GlobalTraitGenerator_logger;
  *(v0 + 216) = OBJC_IVAR____TtC18PhotosIntelligence20GlobalTraitGenerator_logger;
  sub_1C75504FC();
  v3 = sub_1C754FEEC();
  v4 = sub_1C75511BC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 128);
    v6 = *(v0 + 96);
    v7 = OUTLINED_FUNCTION_41_0();
    v8 = OUTLINED_FUNCTION_20_1();
    *&v219 = v8;
    *v7 = 136642819;
    v9 = MEMORY[0x1CCA5D090](v6, v5);
    v11 = sub_1C6F765A4(v9, v10, &v219);

    *(v7 + 4) = v11;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_23_3();
  }

  if (*(*(v0 + 120) + 56) == 1)
  {
    v17 = *(v0 + 104);
    sub_1C75504FC();
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v18 = *(v0 + 200);
  v219 = *(v0 + 184);
  v220 = v18;
  v19 = sub_1C754F41C();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219EA0, &unk_1C75706A0);
  *(v0 + 40) = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *(v0 + 48) = OpaqueTypeConformance2;
  __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  MEMORY[0x1CCA5B6D0]();
  StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&v219, v17, v0 + 16, v22, v23, v24, v25, v26, v178, v180, v183, v186, v188, v190, v193, v196, v199, v201, v205, v208);
  *(v0 + 224) = v27;
  v200 = v27;
  v202 = OpaqueTypeConformance2;
  v215 = v17;
  v197 = v1;
  v28 = *(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v29 = *(v28 + 16);
  *(v0 + 232) = v29;
  v30 = MEMORY[0x1E69E7CC0];
  v206 = v0;
  v209 = v20;
  v211 = v19;
  v212 = v29;
  v194 = v2;
  if (v29)
  {
    v31 = *(v0 + 128);
    v32 = *(v0 + 176);
    v33 = *(v31 + 32);
    OUTLINED_FUNCTION_152_2();
    v36 = v35 + v34;
    v1 = *(v37 + 72);
    do
    {
      v38 = *(v206 + 176);
      OUTLINED_FUNCTION_0_120();
      v39 = OUTLINED_FUNCTION_49_3();
      sub_1C72853C8(v39, v40, v41);
      v42 = *(v32 + v33);
      sub_1C75504FC();
      sub_1C7285288(v38);
      v43 = *(v42 + 16);
      v44 = *(v30 + 16);
      if (__OFADD__(v44, v43))
      {
        goto LABEL_91;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v44 + v43 > *(v30 + 24) >> 1)
      {
        sub_1C6FB1814();
        v30 = v45;
      }

      if (*(v42 + 16))
      {
        if ((*(v30 + 24) >> 1) - *(v30 + 16) < v43)
        {
          goto LABEL_93;
        }

        swift_arrayInitWithCopy();

        if (v43)
        {
          v46 = *(v30 + 16);
          v47 = __OFADD__(v46, v43);
          v48 = v46 + v43;
          if (v47)
          {
            goto LABEL_94;
          }

          *(v30 + 16) = v48;
        }
      }

      else
      {

        if (v43)
        {
          goto LABEL_92;
        }
      }

      v36 += v1;
      --v29;
    }

    while (v29);
  }

  sub_1C706D154();
  StoryAsset.Manager.collection(with:)(v49, &v219);

  v51 = *(&v219 + 1);
  v50 = v219;
  v52 = v206;
  *(v206 + 240) = v219;
  *(v206 + 248) = v51;
  v53 = v220;
  *(v206 + 256) = v220;
  v219 = __PAIR128__(v51, v50);
  v220 = v53;
  *(v206 + 80) = v209;
  *(v206 + 88) = v202;
  __swift_allocate_boxed_opaque_existential_0((v206 + 56));
  MEMORY[0x1CCA5B6D0]();
  StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&v219, v215, v206 + 56, v54, v55, v56, v57, v58, v179, v181, v184, v187, v189, v191, v194, v197, v200, v202, v206, v209);
  v60 = v59;
  v61 = v52[15];

  __swift_destroy_boxed_opaque_existential_1(v52 + 7);
  v62 = *(v61 + 112);
  v63 = *(v61 + 120);
  v64 = *(v61 + 128);
  *&v219 = v62;
  WORD4(v219) = v63;
  *&v220 = v64;
  v65 = v62;

  v66 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v60, &v219);
  v52[34] = v66;

  v67 = objc_opt_self();
  v52[35] = v67;
  v68 = [v67 globalTraitsUseSemanticSimilarity];
  v69 = sub_1C754FEEC();
  v70 = sub_1C75511BC();
  v71 = OUTLINED_FUNCTION_128(v70);
  if (v68)
  {
    if (v71)
    {
      v72 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v72);
      _os_log_impl(&dword_1C6F5C000, v69, v70, "globalTraitsUseSemanticSimilarity is TRUE - counting semantically similar traits as 1 trait for moment frequency", 0, 2u);
      OUTLINED_FUNCTION_23_3();
    }

    v73 = swift_task_alloc();
    v52[36] = v73;
    *v73 = v52;
    v73[1] = sub_1C7281B4C;
    OUTLINED_FUNCTION_61_3(v52[12]);
    OUTLINED_FUNCTION_188_1();

    sub_1C72827A8(v74, v75, v76);
    return;
  }

  if (v71)
  {
    *OUTLINED_FUNCTION_127() = 0;
    OUTLINED_FUNCTION_88_1();
    _os_log_impl(v78, v79, v80, v81, v82, 2u);
    OUTLINED_FUNCTION_109();
  }

  *&v219 = MEMORY[0x1E69E7CC8];
  if (!v212)
  {
LABEL_43:
    v106 = [v52[35] globalTraitsNumberOfTraitsForMomentOverlap];
    v107 = sub_1C754FEEC();
    sub_1C75511BC();
    OUTLINED_FUNCTION_58_20();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = OUTLINED_FUNCTION_41_0();
      *v109 = 134217984;
      *(v109 + 4) = v106;
      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v110, v111, v112, v113, v109, 0xCu);
      OUTLINED_FUNCTION_79();
    }

    v114 = v52[29];

    v115 = OUTLINED_FUNCTION_145_2();
    sub_1C72857E8(v115, v116);

    v117 = sub_1C7080ED4();
    if (v114)
    {
      v204 = v52[34];
      v118 = v52[28];
      v119 = v52[17];
      v120 = v52[12];
      OUTLINED_FUNCTION_265_1();
      v121 = v218;
      OUTLINED_FUNCTION_191();
      v185 = v123;
      v214 = v117 + 56;
      v217 = v117;
      v124 = *(v119 + 72);
      v182 = v124;
      do
      {
        v127 = v52 + 18;
        v126 = v52[18];
        v125 = v127[1];
        v198 = v122 + 1;
        OUTLINED_FUNCTION_100_8();
        sub_1C72853C8(v128, v125, v129);
        sub_1C72853C8(v125, v126, v124);
        OUTLINED_FUNCTION_148_6();
        v130 = MEMORY[0x1E69E7CC0];
LABEL_48:
        while (v211)
        {
          if (!*(v212 + 16))
          {
            goto LABEL_90;
          }

          OUTLINED_FUNCTION_201_1();
          if (v131)
          {
            sub_1C7551F3C();
            sub_1C75504FC();
            sub_1C75505AC();
            sub_1C7551FAC();
            OUTLINED_FUNCTION_38_7();
            while (1)
            {
              OUTLINED_FUNCTION_38_23();
              if ((v132 & 1) == 0)
              {
                break;
              }

              if (OUTLINED_FUNCTION_222_0(*(v118 + 48)) != v51 || v133 != v1)
              {
                sub_1C7551DBC();
                OUTLINED_FUNCTION_220_1();
                if ((v135 & 1) == 0)
                {
                  continue;
                }
              }

LABEL_73:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v143 = OUTLINED_FUNCTION_99();
                sub_1C6F7ED9C(v143, v144, v145, v146, v147, v148, v149);
              }

              v120 = *(v130 + 16);
              OUTLINED_FUNCTION_242_1();
              if (v151)
              {
                OUTLINED_FUNCTION_15(v150);
                OUTLINED_FUNCTION_143_0();
                sub_1C6F7ED9C(v153, v154, v155, v156, v157, v158, v159);
              }

              *(v130 + 16) = v124;
              v152 = v130 + 16 * v120;
              *(v152 + 32) = v51;
              *(v152 + 40) = v1;
              goto LABEL_48;
            }
          }

          else
          {
            sub_1C75504FC();
          }

          v124 = v204;
          if (*(v204 + 16) && (v136 = OUTLINED_FUNCTION_2_56(), sub_1C6F78124(v136, v137), (v138 & 1) != 0))
          {
            OUTLINED_FUNCTION_255_2();
          }

          else
          {
            v117 = 0;
            v124 = 0xE000000000000000;
          }

          if (*(v217 + 16))
          {
            sub_1C7551F3C();
            sub_1C75505AC();
            sub_1C7551FAC();
            while (1)
            {
              OUTLINED_FUNCTION_186_2();
              if (((*(v214 + v140) >> v120) & 1) == 0)
              {
                break;
              }

              v141 = (*(v139 + 48) + 16 * v120);
              v142 = *v141 == v117 && v141[1] == v124;
              if (v142 || (sub_1C7551DBC() & 1) != 0)
              {

                goto LABEL_73;
              }
            }
          }
        }

        v117 = v207;
        v160 = v207[18];
        sub_1C7285288(v207[19]);

        *(v195 + v192) = v130;
        v161 = OUTLINED_FUNCTION_90();
        sub_1C7285088(v161, v162);
        v120 = *(v218 + 16);
        OUTLINED_FUNCTION_242_1();
        if (v151)
        {
          OUTLINED_FUNCTION_15(v163);
          OUTLINED_FUNCTION_143_0();
          sub_1C716E538();
        }

        v164 = v207[29];
        v165 = v207[20];
        *(v218 + 16) = v160;
        v124 = v182;
        sub_1C7285088(v165, v218 + v185 + v120 * v182);
        v122 = v198;
        v52 = v207;
      }

      while (v198 != v164);
    }

    else
    {

      v121 = MEMORY[0x1E69E7CC0];
    }

    sub_1C75504FC();
    v166 = sub_1C754FEEC();
    v167 = v121;
    v168 = sub_1C75511BC();

    if (os_log_type_enabled(v166, v168))
    {
      v169 = v52[16];
      OUTLINED_FUNCTION_41_0();
      v170 = OUTLINED_FUNCTION_103_6();
      *&v219 = v170;
      *v167 = 136642819;
      v171 = MEMORY[0x1CCA5D090](v167, v169);
      v173 = sub_1C6F765A4(v171, v172, &v219);

      *(v167 + 4) = v173;
      OUTLINED_FUNCTION_258_1(&dword_1C6F5C000, v174, v175, "Global traits after, with updated assets: %{sensitive}s");
      __swift_destroy_boxed_opaque_existential_1(v170);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_188_1();

    __asm { BRAA            X2, X16 }
  }

  v83 = 0;
  v84 = 0;
  v210 = v52[21];
  v203 = *(v52[16] + 32);
  OUTLINED_FUNCTION_152_2();
LABEL_29:
  v216 = v83;
  OUTLINED_FUNCTION_0_120();
  sub_1C72853C8(v85, v86, v87);
  v1 = 0;
  v213 = v84 + 1;
  v51 = *(v210 + v203);
  v88 = *(v51 + 16);
  v89 = v51 + 40;
  v90 = MEMORY[0x1E69E7CC0];
LABEL_30:
  for (i = (v89 + 16 * v1); ; i += 2)
  {
    if (v88 == v1)
    {
      v52 = v207;
      v104 = v207[21];
      sub_1C706D154();
      sub_1C72738F0(v105, &v219);
      v83 = v216;

      sub_1C7285288(v104);
      v84 = v213;
      if (v213 == v212)
      {
        goto LABEL_43;
      }

      goto LABEL_29;
    }

    if (v1 >= *(v51 + 16))
    {
      break;
    }

    if (*(v66 + 16))
    {
      v92 = *(i - 1);
      v93 = *i;
      sub_1C75504FC();
      v94 = sub_1C6F78124(v92, v93);
      if (v95)
      {
        v211 = v89;
        v96 = (*(v66 + 56) + 16 * v94);
        v98 = *v96;
        v97 = v96[1];
        sub_1C75504FC();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_99();
          sub_1C6FB1814();
          v90 = v102;
        }

        v100 = *(v90 + 16);
        v99 = *(v90 + 24);
        if (v100 >= v99 >> 1)
        {
          OUTLINED_FUNCTION_15(v99);
          OUTLINED_FUNCTION_89_5();
          sub_1C6FB1814();
          v90 = v103;
        }

        ++v1;
        *(v90 + 16) = v100 + 1;
        v101 = v90 + 16 * v100;
        *(v101 + 32) = v98;
        *(v101 + 40) = v97;
        v89 = v211;
        goto LABEL_30;
      }
    }

    ++v1;
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
}

uint64_t sub_1C7281B4C()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 296) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 304) = v3;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C7281C6C()
{
  v82 = v0;
  v3 = [v0[35] globalTraitsNumberOfTraitsForMomentOverlap];
  v4 = sub_1C754FEEC();
  v5 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v5))
  {
    v6 = OUTLINED_FUNCTION_41_0();
    *v6 = 134217984;
    *(v6 + 4) = v3;
    _os_log_impl(&dword_1C6F5C000, v4, v5, "globalTraitsNumberOfTraitsForMomentOverlap = %ld", v6, 0xCu);
    OUTLINED_FUNCTION_79();
  }

  v7 = v0[29];

  v8 = OUTLINED_FUNCTION_457();
  sub_1C72857E8(v8, v9);

  v10 = sub_1C7080ED4();
  if (!v7)
  {

    v14 = MEMORY[0x1E69E7CC0];
LABEL_42:
    sub_1C75504FC();
    v58 = sub_1C754FEEC();
    v59 = sub_1C75511BC();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = v0[16];
      OUTLINED_FUNCTION_41_0();
      v61 = OUTLINED_FUNCTION_103_6();
      v81[0] = v61;
      *v14 = 136642819;
      v62 = MEMORY[0x1CCA5D090](v14, v60);
      v64 = sub_1C6F765A4(v62, v63, v81);

      *(v14 + 4) = v64;
      OUTLINED_FUNCTION_258_1(&dword_1C6F5C000, v65, v66, "Global traits after, with updated assets: %{sensitive}s");
      __swift_destroy_boxed_opaque_existential_1(v61);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_188_1();

    __asm { BRAA            X2, X16 }
  }

  v76 = v0[34];
  v11 = v0[28];
  v12 = v0[17];
  v13 = v0[12];
  OUTLINED_FUNCTION_265_1();
  v14 = v80;
  OUTLINED_FUNCTION_191();
  v70 = v16;
  v17 = *(v12 + 72);
  v75 = v0;
  v69 = v17;
LABEL_5:
  v20 = v0 + 18;
  v19 = v0[18];
  v18 = v20[1];
  v73 = v15 + 1;
  v74 = v14;
  OUTLINED_FUNCTION_100_8();
  sub_1C72853C8(v21, v18, v22);
  sub_1C72853C8(v18, v19, v17);
  OUTLINED_FUNCTION_148_6();
  for (i = MEMORY[0x1E69E7CC0]; ; i = v79)
  {
LABEL_6:
    if (!v77)
    {
      v0 = v75;
      v52 = v75[18];
      sub_1C7285288(v75[19]);

      *(v72 + v71) = i;
      v53 = OUTLINED_FUNCTION_90();
      sub_1C7285088(v53, v54);
      v14 = v74;
      v13 = *(v74 + 16);
      OUTLINED_FUNCTION_242_1();
      if (v43)
      {
        OUTLINED_FUNCTION_15(v55);
        OUTLINED_FUNCTION_143_0();
        sub_1C716E538();
        v14 = v74;
      }

      v56 = v75[29];
      v57 = v75[20];
      *(v14 + 16) = v52;
      v17 = v69;
      sub_1C7285088(v57, v14 + v70 + v13 * v69);
      v15 = v73;
      if (v73 == v56)
      {

        goto LABEL_42;
      }

      goto LABEL_5;
    }

    if (!*(v78 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_201_1();
    if (v24)
    {
      sub_1C7551F3C();
      sub_1C75504FC();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_38_7();
      while (1)
      {
        OUTLINED_FUNCTION_38_23();
        if ((v25 & 1) == 0)
        {
          break;
        }

        if (OUTLINED_FUNCTION_222_0(*(v11 + 48)) != v2 || v26 != v1)
        {
          sub_1C7551DBC();
          OUTLINED_FUNCTION_220_1();
          if ((v28 & 1) == 0)
          {
            continue;
          }
        }

LABEL_31:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = OUTLINED_FUNCTION_99();
          sub_1C6F7ED9C(v35, v36, v37, v38, v39, v40, v41);
        }

        v13 = *(i + 16);
        OUTLINED_FUNCTION_242_1();
        if (v43)
        {
          OUTLINED_FUNCTION_15(v42);
          OUTLINED_FUNCTION_143_0();
          sub_1C6F7ED9C(v45, v46, v47, v48, v49, v50, v51);
        }

        *(i + 16) = v17;
        v44 = i + 16 * v13;
        *(v44 + 32) = v2;
        *(v44 + 40) = v1;
        goto LABEL_6;
      }
    }

    else
    {
      sub_1C75504FC();
    }

    v17 = v76;
    v79 = i;
    if (*(v76 + 16) && (v29 = OUTLINED_FUNCTION_2_56(), sub_1C6F78124(v29, v30), (v31 & 1) != 0))
    {
      OUTLINED_FUNCTION_255_2();
    }

    else
    {
      i = 0;
      v17 = 0xE000000000000000;
    }

    if (*(v10 + 16))
    {
      sub_1C7551F3C();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_38_7();
      while (1)
      {
        OUTLINED_FUNCTION_186_2();
        if (((*(v10 + 56 + v32) >> v13) & 1) == 0)
        {
          break;
        }

        v33 = (*(v10 + 48) + 16 * v13);
        v34 = *v33 == i && v33[1] == v17;
        if (v34 || (sub_1C7551DBC() & 1) != 0)
        {

          i = v79;
          goto LABEL_31;
        }
      }
    }
  }

  __break(1u);
}

uint64_t sub_1C72821F8()
{

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t GlobalTraitGenerator.isValid(globalTrait:numberOfAssetsInExpandedPool:)(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for GlobalTrait(0);
  if (*(a1 + *(result + 28)) != 1)
  {
    return 1;
  }

  v6 = ceil(*(v2 + 40) * a2);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v7 = v6;
  if (*(v2 + 32) < v6)
  {
    v7 = *(v2 + 32);
  }

  if (v7 <= *(v2 + 24))
  {
    v7 = *(v2 + 24);
  }

  return *(*(a1 + *(result + 32)) + 16) >= v7;
}

uint64_t sub_1C728237C(uint64_t a1, uint64_t a2)
{
  sub_1C6FB0848();
  v4 = *(*(a1 + 112) + 16);
  sub_1C6FB10D4(v4, v5, v6, v7, v8, v9);
  v10 = *(a1 + 112);
  *(v10 + 16) = v4 + 1;
  v11 = *(type metadata accessor for GlobalTrait(0) - 8);
  result = sub_1C72853C8(a2, v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v4, type metadata accessor for GlobalTrait);
  *(a1 + 112) = v10;
  return result;
}

uint64_t sub_1C728244C(uint64_t a1, uint64_t a2)
{
  sub_1C6FB0848();
  v4 = *(*(a1 + 120) + 16);
  sub_1C6FB10D4(v4, v5, v6, v7, v8, v9);
  v10 = *(a1 + 120);
  *(v10 + 16) = v4 + 1;
  v11 = *(type metadata accessor for GlobalTrait(0) - 8);
  result = sub_1C72853C8(a2, v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v4, type metadata accessor for GlobalTrait);
  *(a1 + 120) = v10;
  return result;
}

void static GlobalTraitGenerator.computeNumberOfTokens(_:)(uint64_t a1, uint64_t a2)
{
  if (a1 || a2 != 0xE000000000000000)
  {
    OUTLINED_FUNCTION_103();
    if ((sub_1C7551DBC() & 1) == 0)
    {
      v5 = objc_allocWithZone(MEMORY[0x1E696AE70]);
      v6 = sub_1C71C8B80(0x5A2D417A2D615E5BLL, 0xED00005D20392D30, 0);
      if (v2)
      {
      }

      else
      {
        v7 = v6;
        if (v6)
        {
          v8 = objc_allocWithZone(MEMORY[0x1E696AE70]);
          v9 = sub_1C71C8B80(0x5D275C090A5BLL, 0xE600000000000000, 0);
          v11 = v9;
          if (v9)
          {
            sub_1C6FB5E8C();
            v17 = *(sub_1C755152C() + 16);

            OUTLINED_FUNCTION_103();
            v12 = sub_1C75507FC();
            OUTLINED_FUNCTION_103();
            v13 = sub_1C755065C();
            v14 = [v7 numberOfMatchesInString:v13 options:0 range:{0, v12, 32, 0xE100000000000000, a1, a2}];

            OUTLINED_FUNCTION_103();
            v15 = sub_1C755065C();
            v16 = [v11 numberOfMatchesInString:v15 options:0 range:{0, v12}];

            if (!__OFADD__(v17, v14))
            {
              if (!__OFADD__(&v14[v17], v16))
              {
                return;
              }

              __break(1u);
            }

            __break(1u);
            return;
          }
        }
      }

      sub_1C7196EF4();
      swift_allocError();
      *v10 = 0;
      *(v10 + 8) = 2;
      swift_willThrow();
    }
  }
}

uint64_t sub_1C72827A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = type metadata accessor for GlobalTrait(0);
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C72828D4, 0, 0);
}

uint64_t sub_1C72828D4()
{
  OUTLINED_FUNCTION_63_0();
  v1 = [objc_opt_self() globalTraitsMaximumTextSimilarityScore];
  sub_1C7550F1C();
  v3 = v2;
  v0[31] = v2;

  v0[32] = OBJC_IVAR____TtC18PhotosIntelligence20GlobalTraitGenerator_logger;
  v4 = sub_1C754FEEC();
  v5 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_21_0(v5))
  {
    v6 = OUTLINED_FUNCTION_41_0();
    *v6 = 134217984;
    *(v6 + 4) = v3;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    OUTLINED_FUNCTION_23_3();
  }

  v12 = v0[19];

  v13 = *(v12 + 16);
  v0[33] = v13;
  if (v13)
  {
    v14 = 0;
    v15 = v0[20];
    v70 = *(v0[23] + 32);
    v71 = v0[30];
    OUTLINED_FUNCTION_152_2();
    v18 = v17 + v16;
    v73 = *(v19 + 72);
    v74 = MEMORY[0x1E69E7CC8];
    v68 = v17 + v16;
    v69 = v13;
    do
    {
      sub_1C72853C8(v18 + v14 * v73, v0[30], type metadata accessor for GlobalTrait);
      v72 = v14 + 1;
      v20 = OUTLINED_FUNCTION_82();
      sub_1C72853C8(v20, v21, type metadata accessor for GlobalTrait);
      v22 = 0;
      v23 = *(v71 + v70);
      v24 = *(v23 + 16);
      v25 = v23 + 40;
      v26 = MEMORY[0x1E69E7CC0];
LABEL_6:
      v27 = v25 + 16 * v22;
      while (v24 != v22)
      {
        if (v22 >= *(v23 + 16))
        {
          __break(1u);
        }

        if (*(v15 + 16))
        {
          sub_1C75504FC();
          v28 = OUTLINED_FUNCTION_66_4();
          v30 = sub_1C6F78124(v28, v29);
          if (v31)
          {
            v32 = (*(v15 + 56) + 16 * v30);
            v34 = *v32;
            v33 = v32[1];
            sub_1C75504FC();

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_99();
              sub_1C6FB1814();
              v26 = v38;
            }

            v36 = *(v26 + 16);
            v35 = *(v26 + 24);
            if (v36 >= v35 >> 1)
            {
              OUTLINED_FUNCTION_15(v35);
              OUTLINED_FUNCTION_89_5();
              sub_1C6FB1814();
              v26 = v39;
            }

            ++v22;
            *(v26 + 16) = v36 + 1;
            v37 = v26 + 16 * v36;
            *(v37 + 32) = v34;
            *(v37 + 40) = v33;
            v25 = v23 + 40;
            goto LABEL_6;
          }
        }

        v27 += 16;
        ++v22;
      }

      v41 = v0[29];
      v40 = v0[30];
      sub_1C706D154();
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C6FC8F1C();
      sub_1C7285288(v41);
      sub_1C7285288(v40);
      v18 = v68;
      v46 = v69;
      v14 = v72;
    }

    while (v72 != v69);
    v47 = v0[28];
    v75 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v69, 0, v42, v43, v44, v45);
    v48 = v75;
    do
    {
      v49 = v0[28];
      OUTLINED_FUNCTION_0_120();
      sub_1C72853C8(v18, v49, v50);
      v51 = *v49;
      v52 = *(v47 + 8);
      sub_1C75504FC();
      sub_1C7285288(v49);
      v54 = *(v75 + 16);
      v53 = *(v75 + 24);
      if (v54 >= v53 >> 1)
      {
        OUTLINED_FUNCTION_15(v53);
        OUTLINED_FUNCTION_89_5();
        sub_1C6F7ED9C(v56, v57, v58, v59, v60, v61, v62);
      }

      *(v75 + 16) = v54 + 1;
      v55 = v75 + 16 * v54;
      *(v55 + 32) = v51;
      *(v55 + 40) = v52;
      v18 += v73;
      --v46;
    }

    while (v46);
    v63 = v74;
  }

  else
  {
    v48 = MEMORY[0x1E69E7CC0];
    v63 = MEMORY[0x1E69E7CC8];
  }

  v0[34] = v63;
  v0[35] = v48;
  v64 = v0[21];
  v65 = sub_1C7550B3C();
  v0[36] = v65;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C7282D84;
  v66 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217AB0, &qword_1C756D7F0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C74E0464;
  v0[13] = &block_descriptor_23;
  v0[14] = v66;
  [v64 requestTextEmbeddings:v65 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C7282D84()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 296) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1C7282EB8()
{
  v131 = v0;
  v130[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 144);
  v117 = v0 + 144;
  v2 = sub_1C6FB6304();
  if (v2)
  {
    v3 = v2;
    v130[0] = MEMORY[0x1E69E7CC0];
    sub_1C716E518(0, v2 & ~(v2 >> 63), 0);
    if (v3 < 0)
    {
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    v4 = 0;
    v5 = v130[0];
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = OUTLINED_FUNCTION_145_2();
        MEMORY[0x1CCA5DDD0](v6);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      v7 = PNTextEmbeddingResult.embeddingFloatValues.getter();
      swift_unknownObjectRelease();
      v130[0] = v5;
      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (v9 >= v8 >> 1)
      {
        v10 = OUTLINED_FUNCTION_15(v8);
        sub_1C716E518(v10, v9 + 1, 1);
        v5 = v130[0];
      }

      ++v4;
      *(v5 + 16) = v9 + 1;
      *(v5 + 8 * v9 + 32) = v7;
    }

    while (v3 != v4);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v11 = (v0 + 304);
  v12 = (v0 + 308);
  v126 = v5 + 32;
  v13 = *(v0 + 280);
  v14 = *(v0 + 248);
  v123 = *(v0 + 192);

  v15 = 0;
  v124 = *(v5 + 16);
  v16 = *(v0 + 272);
  v118 = v13;
  v17 = v13 + 40;
  v115 = v0;
  v114 = v13 + 40;
  while (2)
  {
    for (i = v17 + 16 * v15; ; i += 16)
    {
      if (v124 == v15)
      {

        v130[0] = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_10();
        v80 = v79 & v78;
        v82 = (63 - v81) >> 6;
        swift_bridgeObjectRetain_n();
        v83 = 0;
        if (!v80)
        {
          goto LABEL_63;
        }

        do
        {
LABEL_67:
          v80 &= v80 - 1;
          v85 = sub_1C75504FC();
          sub_1C6FD25FC(v85);
        }

        while (v80);
LABEL_63:
        while (1)
        {
          v84 = v83 + 1;
          if (__OFADD__(v83, 1))
          {
            break;
          }

          if (v84 >= v82)
          {

            v86 = 0;
            v127 = *(v130[0] + 16);
            v87 = MEMORY[0x1E69E7CC8];
            v129 = v130[0];
            for (j = (v130[0] + 40); ; j += 2)
            {
              if (v127 == v86)
              {

                OUTLINED_FUNCTION_116();
                OUTLINED_FUNCTION_276_2();

                __asm { BRAA            X2, X16 }
              }

              if (v86 >= *(v129 + 16))
              {
                break;
              }

              v89 = v16;
              v91 = *(j - 1);
              v90 = *j;
              sub_1C75504FC();
              swift_isUniquelyReferenced_nonNull_native();
              v130[0] = v87;
              v92 = OUTLINED_FUNCTION_66_4();
              v94 = sub_1C6F78124(v92, v93);
              if (__OFADD__(v87[2], (v95 & 1) == 0))
              {
                goto LABEL_91;
              }

              v96 = v94;
              v97 = v95;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A8, &qword_1C755C750);
              v98 = sub_1C7551A2C();
              v87 = v130[0];
              if (v98)
              {
                v99 = OUTLINED_FUNCTION_66_4();
                v101 = sub_1C6F78124(v99, v100);
                if ((v97 & 1) != (v102 & 1))
                {
                  goto LABEL_84;
                }

                v96 = v101;
              }

              if ((v97 & 1) == 0)
              {
                OUTLINED_FUNCTION_1_3(&v87[v96 >> 6]);
                v103 = (v87[6] + 16 * v96);
                *v103 = v91;
                v103[1] = v90;
                *(v87[7] + 8 * v96) = 0;
                v104 = v87[2];
                v66 = __OFADD__(v104, 1);
                v105 = v104 + 1;
                if (v66)
                {
                  goto LABEL_93;
                }

                v87[2] = v105;
                sub_1C75504FC();
              }

              v106 = v87[7];
              v107 = *(v106 + 8 * v96);
              v66 = __OFADD__(v107, 1);
              v108 = v107 + 1;
              if (v66)
              {
                goto LABEL_92;
              }

              *(v106 + 8 * v96) = v108;

              ++v86;
              v16 = v89;
            }

LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_84:
            OUTLINED_FUNCTION_276_2();

            sub_1C7551E4C();
            return;
          }

          v80 = *(v16 + 64 + 8 * v84);
          ++v83;
          if (v80)
          {
            v83 = v84;
            goto LABEL_67;
          }
        }

        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      if (v15 >= *(v5 + 16))
      {
        goto LABEL_88;
      }

      if (v15 >= *(v0 + 264))
      {
        goto LABEL_89;
      }

      v18 = *(v126 + 8 * v15);
      v19 = *(v0 + 152);
      v20 = (*(v123 + 80) + 32) & ~*(v123 + 80);
      v125 = *(v123 + 72);
      OUTLINED_FUNCTION_0_120();
      sub_1C72853C8(v21, v22, v23);
      v24 = *(v16 + 16);
      sub_1C75504FC();
      v25 = *(v0 + 216);
      if (!v24)
      {
        goto LABEL_22;
      }

      v26 = sub_1C6FC2FA4();
      if (v27)
      {
        break;
      }

      v25 = *(v0 + 216);
LABEL_22:
      sub_1C7285288(v25);
LABEL_23:

      ++v15;
    }

    v28 = *(*(v16 + 56) + 8 * v26);
    if (!*(v28 + 16))
    {
      v29 = *(v0 + 216);
      sub_1C75504FC();
      sub_1C7285288(v29);

      goto LABEL_23;
    }

    v113 = v28;
    sub_1C75504FC();
    v30 = v19 + v20;
    v112 = v19 + v20;
    v31 = v15 + 1;
    v116 = v12;
LABEL_25:
    v121 = (v114 + 16 * v31);
    v122 = v30 + v125 * v31;
    v32 = v31;
    v119 = v31;
LABEL_26:
    v33 = *(v0 + 264);
    if (v32 == v33)
    {
      sub_1C7285288(*(v0 + 216));

      v17 = v114;
      ++v15;
      continue;
    }

    break;
  }

  if (v31 <= v15 || v32 >= v33)
  {
    goto LABEL_94;
  }

  if (v32 >= *(v5 + 16))
  {
    goto LABEL_95;
  }

  v35 = *(v126 + 8 * v32);
  v36 = *(v18 + 16);
  if (v36 != *(v35 + 16))
  {
    goto LABEL_96;
  }

  v120 = v32;
  *v11 = NAN;
  sub_1C75504FC();
  vDSP_svesq((v18 + 32), 1, v11, v36);
  v37 = *v11;
  v38 = *(v35 + 16);
  *v12 = NAN;
  v39 = sqrtf(v37);
  vDSP_svesq((v35 + 32), 1, v12, v38);
  v40 = v39 * sqrtf(*v12);
  if (v40 == 0.0)
  {

    if (v14 > 0.0)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v41 = *(v18 + 16);
    if (v41 != *(v35 + 16))
    {
      goto LABEL_97;
    }

    v42 = *(v0 + 248);
    *(v0 + 312) = 0;
    vDSP_dotpr((v18 + 32), 1, (v35 + 32), 1, (v117 + 168), v41);
    v43 = *(v0 + 312);

    if (v42 > (v43 / v40))
    {
      goto LABEL_47;
    }
  }

  sub_1C75504FC();
  v44 = sub_1C754FEEC();
  v45 = sub_1C75511BC();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = v16;
    v47 = swift_slowAlloc();
    v130[0] = swift_slowAlloc();
    *v47 = 136643075;
    if (v15 >= *(v118 + 16))
    {
      __break(1u);
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    sub_1C75504FC();
    v48 = OUTLINED_FUNCTION_34_20();
    v51 = sub_1C6F765A4(v48, v49, v50);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2085;
    if (v120 >= *(v118 + 16))
    {
      goto LABEL_100;
    }

    v52 = *(v121 - 1);
    v53 = *v121;
    sub_1C75504FC();
    v54 = sub_1C6F765A4(v52, v53, v130);

    *(v47 + 14) = v54;
    _os_log_impl(&dword_1C6F5C000, v44, v45, "Traits %{sensitive}s and %{sensitive}s are too similar, only keeping moment for one", v47, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_90_2();

    v16 = v46;
    v11 = (v117 + 160);
    v0 = v115;
  }

  else
  {
  }

  OUTLINED_FUNCTION_0_120();
  sub_1C72853C8(v122, v55, v56);
  v12 = v116;
  if (!*(v16 + 16) || (v57 = sub_1C6FC2FA4(), (v58 & 1) == 0))
  {
    sub_1C7285288(*(v0 + 208));
LABEL_47:
    v121 += 2;
    v122 += v125;
    v32 = v120 + 1;
    v31 = v119;
    goto LABEL_26;
  }

  if (*(v113 + 16) <= *(*(*(v16 + 56) + 8 * v57) + 16) >> 3)
  {
    v130[0] = *(*(v16 + 56) + 8 * v57);
    sub_1C75504FC();
    sub_1C7420F88();
    v60 = v130[0];
  }

  else
  {
    sub_1C75504FC();
    OUTLINED_FUNCTION_90();
    sub_1C74C35FC();
    v60 = v59;
  }

  v61 = *(v0 + 200);
  OUTLINED_FUNCTION_0_120();
  sub_1C72853C8(v62, v61, v63);
  swift_isUniquelyReferenced_nonNull_native();
  v130[0] = v16;
  sub_1C6FC2FA4();
  OUTLINED_FUNCTION_183_0();
  if (!v66)
  {
    v67 = v64;
    v68 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219EB0, &qword_1C755CBD0);
    v69 = sub_1C7551A2C();
    v16 = v130[0];
    if (v69)
    {
      v70 = sub_1C6FC2FA4();
      if ((v68 & 1) != (v71 & 1))
      {
        goto LABEL_84;
      }

      v67 = v70;
    }

    if (v68)
    {
      *(*(v16 + 56) + 8 * v67) = v60;
    }

    else
    {
      OUTLINED_FUNCTION_1_3(v16 + 8 * (v67 >> 6));
      OUTLINED_FUNCTION_0_120();
      sub_1C72853C8(v72, v73, v74);
      *(*(v16 + 56) + 8 * v67) = v60;
      v75 = *(v16 + 16);
      v66 = __OFADD__(v75, 1);
      v76 = v75 + 1;
      if (v66)
      {
        goto LABEL_103;
      }

      *(v16 + 16) = v76;
    }

    v11 = (v117 + 160);
    v12 = v116;
    v77 = *(v0 + 208);
    sub_1C7285288(*(v0 + 200));
    sub_1C7285288(v77);
    v31 = v120 + 1;
    v30 = v112;
    goto LABEL_25;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
}

uint64_t sub_1C72838D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 288);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1C72839CC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  if (sub_1C73BF00C(*a1, v5))
  {
    v6 = sub_1C754FEEC();
    v7 = sub_1C755119C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C6F5C000, v6, v7, "Global traits completion included an empty collection trait title.", v8, 2u);
      v9 = v8;
LABEL_7:
      MEMORY[0x1CCA5F8E0](v9, -1, -1);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v10 = sub_1C75506FC();
  v12 = sub_1C7009C30(v10, v11, a3);

  if (v12)
  {
    sub_1C75504FC();
    v6 = sub_1C754FEEC();
    v13 = sub_1C75511BC();

    if (os_log_type_enabled(v6, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1C6F765A4(v4, v5, &v17);
      _os_log_impl(&dword_1C6F5C000, v6, v13, "Global traits deny list contained the trait title %s, removed it.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1CCA5F8E0](v15, -1, -1);
      v9 = v14;
      goto LABEL_7;
    }

LABEL_8:

    return 0;
  }

  return 1;
}

uint64_t sub_1C7283B94(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_1C73BF00C(a1, a2))
  {
    v11 = sub_1C754FEEC();
    v12 = sub_1C755119C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "Global traits completion included an empty speculative trait title.";
LABEL_7:
      _os_log_impl(&dword_1C6F5C000, v11, v12, v14, v13, 2u);
      MEMORY[0x1CCA5F8E0](v13, -1, -1);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (sub_1C73BF00C(a3, a4))
  {
    v11 = sub_1C754FEEC();
    v12 = sub_1C755119C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "Global traits completion included an empty speculative trait query.";
      goto LABEL_7;
    }

LABEL_8:

    return 0;
  }

  v16 = sub_1C75506FC();
  v18 = sub_1C7009C30(v16, v17, a6);

  if ((v18 & 1) == 0)
  {
    return 1;
  }

  sub_1C75504FC();
  v19 = sub_1C754FEEC();
  v20 = sub_1C75511BC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_1C6F765A4(a1, a2, &v23);
    _os_log_impl(&dword_1C6F5C000, v19, v20, "Global traits deny list contained the trait title %s, removed it.", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1CCA5F8E0](v22, -1, -1);
    MEMORY[0x1CCA5F8E0](v21, -1, -1);
  }

  return 0;
}

uint64_t GlobalTraitGenerator.deinit()
{

  v1 = *(v0 + 112);

  sub_1C6FD7FC8(v0 + 152, &unk_1EC219E90, &qword_1C757DAD8);

  v2 = OBJC_IVAR____TtC18PhotosIntelligence20GlobalTraitGenerator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(v0 + v2);
  return v0;
}

uint64_t GlobalTraitGenerator.__deallocating_deinit()
{
  GlobalTraitGenerator.deinit();

  return swift_deallocClassInstance();
}

void sub_1C7283ED8(uint64_t *a1)
{
  v2 = *(type metadata accessor for GlobalTrait(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422D74();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C7283F80(v6);
  *a1 = v3;
}

void sub_1C7283F80(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C7551D7C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for GlobalTrait(0);
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for GlobalTrait(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C72842DC(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C72840B0(0, v2, 1, a1);
  }
}

void sub_1C72840B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for GlobalTrait(0);
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v26 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v26 - v15);
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v27 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v31 = v19;
      v32 = a3;
      v29 = v22;
      v30 = v21;
      while (1)
      {
        sub_1C72853C8(v22, v16, type metadata accessor for GlobalTrait);
        sub_1C72853C8(v19, v12, type metadata accessor for GlobalTrait);
        if (*v16 == *v12 && v16[1] == v12[1])
        {
          break;
        }

        v24 = sub_1C7551DBC();
        sub_1C7285288(v12);
        sub_1C7285288(v16);
        if (v24)
        {
          if (!v17)
          {
            __break(1u);
            return;
          }

          sub_1C7285088(v22, v9);
          swift_arrayInitWithTakeFrontToBack();
          sub_1C7285088(v9, v19);
          v19 += v20;
          v22 += v20;
          if (!__CFADD__(v21++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_1C7285288(v12);
      sub_1C7285288(v16);
LABEL_14:
      a3 = v32 + 1;
      v19 = v31 + v27;
      v21 = v30 - 1;
      v22 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C72842DC(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v122 = a1;
  v137 = type metadata accessor for GlobalTrait(0);
  v129 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v125 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v136 = &v117 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v138 = (&v117 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v117 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v134 = (&v117 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v133 = (&v117 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v121 = (&v117 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v120 = (&v117 - v21);
  v131 = a3;
  v22 = a3[1];
  if (v22 < 1)
  {
    v24 = MEMORY[0x1E69E7CC0];
LABEL_112:
    v26 = *v122;
    if (!*v122)
    {
      goto LABEL_152;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_114:
      v109 = (v24 + 16);
      for (i = *(v24 + 2); i >= 2; *v109 = i)
      {
        if (!*v131)
        {
          goto LABEL_149;
        }

        v111 = &v24[16 * i];
        v112 = *v111;
        v113 = &v109[2 * i];
        v114 = *(v113 + 1);
        v115 = v135;
        sub_1C7284C10(*v131 + *(v129 + 72) * *v111, *v131 + *(v129 + 72) * *v113, *v131 + *(v129 + 72) * v114, v26);
        v135 = v115;
        if (v115)
        {
          break;
        }

        if (v114 < v112)
        {
          goto LABEL_137;
        }

        if (i - 2 >= *v109)
        {
          goto LABEL_138;
        }

        *v111 = v112;
        *(v111 + 1) = v114;
        v116 = *v109 - i;
        if (*v109 < i)
        {
          goto LABEL_139;
        }

        i = *v109 - 1;
        sub_1C7423CF4(v113 + 16, v116, v113);
      }

LABEL_110:

      return;
    }

LABEL_146:
    v24 = sub_1C7420830();
    goto LABEL_114;
  }

  v118 = a4;
  v23 = 0;
  v24 = MEMORY[0x1E69E7CC0];
  v126 = v13;
  while (1)
  {
    v25 = v23;
    v26 = v23 + 1;
    v123 = v23;
    if (v23 + 1 < v22)
    {
      v27 = *v131;
      v28 = *(v129 + 72);
      v29 = v120;
      sub_1C72853C8(*v131 + v28 * v26, v120, type metadata accessor for GlobalTrait);
      v130 = v28;
      v30 = v27 + v28 * v25;
      v31 = v121;
      sub_1C72853C8(v30, v121, type metadata accessor for GlobalTrait);
      if (*v29 == *v31 && v29[1] == v31[1])
      {
        LODWORD(v128) = 0;
      }

      else
      {
        LODWORD(v128) = sub_1C7551DBC();
      }

      v119 = v24;
      sub_1C7285288(v121);
      sub_1C7285288(v120);
      v33 = v25 + 2;
      v34 = v130 * (v25 + 2);
      v35 = v27 + v34;
      v36 = v26;
      v37 = v130 * v26;
      v38 = v27 + v130 * v26;
      v127 = v22;
      do
      {
        v39 = v33;
        v40 = v36;
        v41 = v37;
        v26 = v34;
        if (v33 >= v22)
        {
          break;
        }

        v132 = v33;
        v42 = v133;
        sub_1C72853C8(v35, v133, type metadata accessor for GlobalTrait);
        v43 = v134;
        sub_1C72853C8(v38, v134, type metadata accessor for GlobalTrait);
        v44 = *v42 == *v43 && v42[1] == v43[1];
        v45 = v44 ? 0 : sub_1C7551DBC();
        v39 = v132;
        sub_1C7285288(v134);
        sub_1C7285288(v133);
        v33 = v39 + 1;
        v35 += v130;
        v38 += v130;
        v36 = v40 + 1;
        v37 = v41 + v130;
        v34 = v26 + v130;
        v13 = v126;
        v22 = v127;
      }

      while (((v128 ^ v45) & 1) == 0);
      if (v128)
      {
        v25 = v123;
        if (v39 < v123)
        {
          goto LABEL_143;
        }

        if (v123 >= v39)
        {
          v26 = v39;
          v24 = v119;
          goto LABEL_37;
        }

        v46 = v123 * v130;
        do
        {
          if (v25 != v40)
          {
            v47 = *v131;
            if (!*v131)
            {
              goto LABEL_150;
            }

            sub_1C7285088(v47 + v46, v125);
            v48 = v46 < v41 || v47 + v46 >= (v47 + v26);
            if (v48)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v46 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1C7285088(v125, v47 + v41);
          }

          ++v25;
          v41 -= v130;
          v26 -= v130;
          v46 += v130;
        }

        while (v25 < v40--);
      }

      v26 = v39;
      v24 = v119;
      v25 = v123;
    }

LABEL_37:
    v50 = v131[1];
    if (v26 < v50)
    {
      if (__OFSUB__(v26, v25))
      {
        goto LABEL_142;
      }

      if (v26 - v25 < v118)
      {
        break;
      }
    }

LABEL_59:
    if (v26 < v25)
    {
      goto LABEL_141;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v24 + 2) + 1, 1, v24);
      v24 = v107;
    }

    v64 = *(v24 + 2);
    v63 = *(v24 + 3);
    v65 = v64 + 1;
    if (v64 >= v63 >> 1)
    {
      sub_1C6FB17EC(v63 > 1, v64 + 1, 1, v24);
      v24 = v108;
    }

    *(v24 + 2) = v65;
    v66 = v24 + 32;
    v67 = &v24[16 * v64 + 32];
    *v67 = v123;
    *(v67 + 1) = v26;
    v130 = *v122;
    if (!v130)
    {
      goto LABEL_151;
    }

    v132 = v26;
    if (v64)
    {
      while (1)
      {
        v68 = v65 - 1;
        v69 = &v66[16 * v65 - 16];
        v70 = &v24[16 * v65];
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v71 = *(v24 + 4);
          v72 = *(v24 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_79:
          if (v74)
          {
            goto LABEL_128;
          }

          v86 = *v70;
          v85 = *(v70 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_131;
          }

          v90 = *(v69 + 1);
          v91 = v90 - *v69;
          if (__OFSUB__(v90, *v69))
          {
            goto LABEL_134;
          }

          if (__OFADD__(v88, v91))
          {
            goto LABEL_136;
          }

          if (v88 + v91 >= v73)
          {
            if (v73 < v91)
            {
              v68 = v65 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        if (v65 < 2)
        {
          goto LABEL_130;
        }

        v93 = *v70;
        v92 = *(v70 + 1);
        v81 = __OFSUB__(v92, v93);
        v88 = v92 - v93;
        v89 = v81;
LABEL_94:
        if (v89)
        {
          goto LABEL_133;
        }

        v95 = *v69;
        v94 = *(v69 + 1);
        v81 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v81)
        {
          goto LABEL_135;
        }

        if (v96 < v88)
        {
          goto LABEL_108;
        }

LABEL_101:
        if (v68 - 1 >= v65)
        {
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
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
          goto LABEL_145;
        }

        if (!*v131)
        {
          goto LABEL_148;
        }

        v100 = v24;
        v101 = &v66[16 * v68 - 16];
        v102 = *v101;
        v103 = v66;
        v104 = &v66[16 * v68];
        v105 = *(v104 + 1);
        v106 = v135;
        sub_1C7284C10(*v131 + *(v129 + 72) * *v101, *v131 + *(v129 + 72) * *v104, *v131 + *(v129 + 72) * v105, v130);
        v135 = v106;
        if (v106)
        {
          goto LABEL_110;
        }

        if (v105 < v102)
        {
          goto LABEL_123;
        }

        v26 = *(v100 + 2);
        if (v68 > v26)
        {
          goto LABEL_124;
        }

        *v101 = v102;
        *(v101 + 1) = v105;
        if (v68 >= v26)
        {
          goto LABEL_125;
        }

        v65 = v26 - 1;
        sub_1C7423CF4(v104 + 16, v26 - 1 - v68, v104);
        v24 = v100;
        *(v100 + 2) = v26 - 1;
        v66 = v103;
        if (v26 <= 2)
        {
          goto LABEL_108;
        }
      }

      v75 = &v66[16 * v65];
      v76 = *(v75 - 8);
      v77 = *(v75 - 7);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_126;
      }

      v80 = *(v75 - 6);
      v79 = *(v75 - 5);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_127;
      }

      v82 = *(v70 + 1);
      v83 = v82 - *v70;
      if (__OFSUB__(v82, *v70))
      {
        goto LABEL_129;
      }

      v81 = __OFADD__(v73, v83);
      v84 = v73 + v83;
      if (v81)
      {
        goto LABEL_132;
      }

      if (v84 >= v78)
      {
        v98 = *v69;
        v97 = *(v69 + 1);
        v81 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v81)
        {
          goto LABEL_140;
        }

        if (v73 < v99)
        {
          v68 = v65 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_79;
    }

LABEL_108:
    v23 = v132;
    v22 = v131[1];
    if (v132 >= v22)
    {
      goto LABEL_112;
    }
  }

  v51 = v25 + v118;
  if (__OFADD__(v25, v118))
  {
    goto LABEL_144;
  }

  if (v51 >= v50)
  {
    v51 = v131[1];
  }

  if (v51 < v25)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (v26 == v51)
  {
    goto LABEL_59;
  }

  v119 = v24;
  v52 = *v131;
  v53 = *(v129 + 72);
  v54 = *v131 + v53 * (v26 - 1);
  v55 = -v53;
  v56 = v25 - v26;
  v124 = v53;
  v57 = v52 + v26 * v53;
  v127 = v51;
LABEL_46:
  v132 = v26;
  v58 = v57;
  v128 = v56;
  v130 = v54;
  while (1)
  {
    sub_1C72853C8(v58, v13, type metadata accessor for GlobalTrait);
    v59 = v138;
    sub_1C72853C8(v54, v138, type metadata accessor for GlobalTrait);
    if (*v13 == *v59 && v13[1] == v59[1])
    {
      sub_1C7285288(v138);
      sub_1C7285288(v13);
LABEL_57:
      v26 = v132 + 1;
      v54 = v130 + v124;
      v56 = v128 - 1;
      v57 += v124;
      if (v132 + 1 == v127)
      {
        v26 = v127;
        v24 = v119;
        v25 = v123;
        goto LABEL_59;
      }

      goto LABEL_46;
    }

    v61 = sub_1C7551DBC();
    sub_1C7285288(v138);
    sub_1C7285288(v13);
    if ((v61 & 1) == 0)
    {
      goto LABEL_57;
    }

    if (!v52)
    {
      break;
    }

    v62 = v136;
    sub_1C7285088(v58, v136);
    swift_arrayInitWithTakeFrontToBack();
    sub_1C7285088(v62, v54);
    v54 += v55;
    v58 += v55;
    v48 = __CFADD__(v56++, 1);
    if (v48)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
}

void sub_1C7284C10(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = type metadata accessor for GlobalTrait(0);
  MEMORY[0x1EEE9AC00](v52);
  v51 = (&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v50 = (&v46 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v46 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v46 - v15);
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

  v19 = a2 - a1;
  v20 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v20)
  {
    goto LABEL_73;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_74;
  }

  v23 = v19 / v18;
  v55 = a1;
  v54 = a4;
  v24 = v21 / v18;
  if (v19 / v18 < v21 / v18)
  {
    sub_1C741E3B0(a1, v19 / v18, a4);
    v25 = a4 + v23 * v18;
    v53 = v25;
    while (1)
    {
      if (a4 >= v25 || a2 >= a3)
      {
        goto LABEL_71;
      }

      sub_1C72853C8(a2, v16, type metadata accessor for GlobalTrait);
      sub_1C72853C8(a4, v13, type metadata accessor for GlobalTrait);
      if (*v16 == *v13 && v16[1] == v13[1])
      {
        sub_1C7285288(v13);
        sub_1C7285288(v16);
      }

      else
      {
        v28 = sub_1C7551DBC();
        sub_1C7285288(v13);
        sub_1C7285288(v16);
        if (v28)
        {
          if (a1 < a2 || a1 >= a2 + v18)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v18;
          goto LABEL_40;
        }
      }

      if (a1 < a4 || a1 >= a4 + v18)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v54 = a4 + v18;
      a4 += v18;
LABEL_40:
      a1 += v18;
      v55 = a1;
    }
  }

  sub_1C741E3B0(a2, v21 / v18, a4);
  v31 = a4 + v24 * v18;
  v32 = -v18;
  v33 = v31;
LABEL_42:
  v48 = a2;
  v49 = a2 + v32;
  v34 = a3;
  v46 = v33;
  while (1)
  {
    if (v31 <= a4)
    {
      v55 = a2;
      v53 = v33;
      goto LABEL_71;
    }

    if (a2 <= a1)
    {
      break;
    }

    v47 = v33;
    v35 = v32;
    v36 = v31 + v32;
    v37 = v31 + v32;
    v38 = v50;
    sub_1C72853C8(v37, v50, type metadata accessor for GlobalTrait);
    v39 = v51;
    sub_1C72853C8(v49, v51, type metadata accessor for GlobalTrait);
    if (*v38 == *v39 && v38[1] == v39[1])
    {
      v41 = 0;
    }

    else
    {
      v41 = sub_1C7551DBC();
    }

    v32 = v35;
    a3 = v34 + v35;
    sub_1C7285288(v51);
    sub_1C7285288(v50);
    if (v41)
    {
      if (v34 < v48 || a3 >= v48)
      {
        a2 = v49;
        swift_arrayInitWithTakeFrontToBack();
        v33 = v47;
      }

      else
      {
        v33 = v47;
        v44 = v49;
        a2 = v49;
        if (v34 != v48)
        {
          v45 = v47;
          swift_arrayInitWithTakeBackToFront();
          a2 = v44;
          v33 = v45;
        }
      }

      goto LABEL_42;
    }

    v42 = v34 < v31 || a3 >= v31;
    a2 = v48;
    if (v42)
    {
      swift_arrayInitWithTakeFrontToBack();
      goto LABEL_60;
    }

    v33 = v36;
    v20 = v31 == v34;
    v34 = a3;
    v31 = v36;
    if (!v20)
    {
      swift_arrayInitWithTakeBackToFront();
LABEL_60:
      v34 = a3;
      v31 = v36;
      v33 = v36;
    }
  }

  v55 = a2;
  v53 = v46;
LABEL_71:
  sub_1C74208CC(&v55, &v54, &v53);
}

uint64_t sub_1C7285088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlobalTrait(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C72850EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219E90, &qword_1C757DAD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C728515C()
{
  OUTLINED_FUNCTION_236_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_111_6(v1);

  return sub_1C727EA34(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C72851FC()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_237_0(v1);

  return sub_1C7280B88(v3, v4);
}

uint64_t sub_1C7285288(uint64_t a1)
{
  v2 = type metadata accessor for GlobalTrait(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C72852E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return a2;
}

unint64_t sub_1C7285360()
{
  result = qword_1EDD0A1D0;
  if (!qword_1EDD0A1D0)
  {
    v3 = type metadata accessor for GlobalTraitGenerator.Error(255);
    result = swift_getWitnessTable(protocol conformance descriptor for GlobalTraitGenerator.Error, v3, v0, v1);
    atomic_store(result, &qword_1EDD0A1D0);
  }

  return result;
}

uint64_t sub_1C72853C8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_90();
  v5(v4);
  return a2;
}

void *sub_1C728542C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), void *a3)
{
  v6 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a3 = sub_1C7285BC4(v12, v8, v6, a2);
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      return a3;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v9 = v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C71FAC38(0, v8, v9);
  sub_1C7285958(v9, v8, v6, a2);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a3;
}

uint64_t sub_1C7285600(uint64_t a1)
{
  result = sub_1C754FF1C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1C72856F0(uint64_t a1)
{
  sub_1C728579C(319, &qword_1EDD06AB8, sub_1C704303C);
  if (v1 <= 0x3F)
  {
    sub_1C728579C(319, qword_1EDD0C538, type metadata accessor for GlobalTrait);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1C728579C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_1C72857E8(uint64_t a1, void *a2)
{
  v4 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      a2 = sub_1C7285C54(v10, v6, v4, a2);
      MEMORY[0x1CCA5F8E0](v10, -1, -1);
      return a2;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v7 = v11 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C71FAC38(0, v6, v7);
  v8 = sub_1C7285AD4(v7, v6, v4, a2);
  if (!v2)
  {
    return v8;
  }

  swift_willThrow();
  return a2;
}

void sub_1C7285958(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(a3 + 56) + 16 * v13);
    v19 = *v17;
    v18 = v17[1];
    sub_1C75504FC();
    sub_1C75504FC();
    LOBYTE(v19) = a4(v15, v16, v19, v18);

    if (v19)
    {
      *(result + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1C7483F80();
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1C7285BC4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C7285958(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_1C7285C54(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1C7285AD4(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  if (v0[9])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  OUTLINED_FUNCTION_199_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C7285D40()
{
  OUTLINED_FUNCTION_236_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_111_6(v1);

  return sub_1C727EA34(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C7285DE0()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_237_0(v1);

  return sub_1C7280B88(v3, v4);
}

uint64_t OUTLINED_FUNCTION_43_24()
{
}

uint64_t OUTLINED_FUNCTION_53_24()
{

  return sub_1C7285288(v0);
}

uint64_t OUTLINED_FUNCTION_54_22()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return __swift_destroy_boxed_opaque_existential_1((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_56_18()
{
  *(v0 + 256) = 0;
  *(v0 + 264) = 0xE000000000000000;

  return sub_1C755180C();
}

double OUTLINED_FUNCTION_68_18()
{

  sub_1C754F17C();
  return result;
}

uint64_t OUTLINED_FUNCTION_69_16()
{
  v2 = v0[66];
  v3 = v0[59] + *(v0[56] + 48);

  return sub_1C7285088(v3, v2);
}

void OUTLINED_FUNCTION_70_15()
{
  *(v0 + 272) = 0xD000000000000013;
  *(v0 + 280) = v1;

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_74_10()
{
  *(v1 - 96) = v0;

  sub_1C716E538();
}

double OUTLINED_FUNCTION_87_13()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_103_6()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_106_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_108_7(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_110_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 a22)
{
  *(v22 + 192) = a17;
  *(v22 + 176) = a22;
  return v23;
}

void OUTLINED_FUNCTION_116_8()
{
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);

  sub_1C7161CDC(v2, v3);
}

uint64_t OUTLINED_FUNCTION_118_6@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 256) = 0;
  *(v1 + 264) = a1;

  return sub_1C755180C();
}

void OUTLINED_FUNCTION_119_9()
{
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);

  sub_1C7161CDC(v2, v3);
}

uint64_t OUTLINED_FUNCTION_128_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22)
{
  *(v23 + 192) = a21;
  *(v23 + 176) = a22;
  return v22;
}

void OUTLINED_FUNCTION_132_5()
{
  v4 = (*(v0 + 48) + 16 * v3);
  *v4 = v2;
  v4[1] = v1;
  v5 = (*(v0 + 56) + 16 * v3);
  *v5 = v2;
  v5[1] = v1;
}

void OUTLINED_FUNCTION_149_3(uint64_t a1@<X8>)
{
  *(v5 + v2) = v3;
  *(v5 + a1) = 0;
  *(v5 + v1) = 0;
  *(v6 - 96) = v4;
}

void OUTLINED_FUNCTION_150_4()
{
  *v0 = v2;
  v3[1] = v1;
  v3[2] = v2;
  v3[3] = v1;
  *(v0 + *(v4 + 28)) = 0;
}

void OUTLINED_FUNCTION_151_3(uint64_t a1@<X8>)
{
  *(v4 + v2) = v3;
  *(v4 + a1) = 0;
  *(v4 + v1) = 0;
  *(v6 - 96) = v5;
}

void OUTLINED_FUNCTION_153_2()
{
  *v0 = v1;
  v3[1] = v2;
  v3[2] = v1;
  v3[3] = v2;
  *(v0 + *(v4 + 28)) = 0;
}

unint64_t OUTLINED_FUNCTION_156_3()
{
  type metadata accessor for GlobalTraitGenerator.Error(0);

  return sub_1C7285360();
}

uint64_t OUTLINED_FUNCTION_159_3()
{
}

uint64_t OUTLINED_FUNCTION_160_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v20;
  *(a1 + 40) = a19;
  v22 = *(v21 + 112);
  *(a1 + 48) = *(v21 + 96);
  *(a1 + 64) = v22;
  *(a1 + 80) = *(v21 + 128);
  *(a1 + 88) = v19;
  sub_1C6FD80E4((v21 + 136), a1 + 96);

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_161_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a21;
  *(a1 + 40) = a20;
  v23 = *(v22 + 112);
  *(a1 + 48) = *(v22 + 96);
  *(a1 + 64) = v23;
  *(a1 + 80) = *(v22 + 128);
  *(a1 + 88) = v21;
  sub_1C6FD80E4((v22 + 136), a1 + 96);

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_162_3()
{
}

void OUTLINED_FUNCTION_164_2()
{
  *(v0 - 96) = 7;

  StoryGenerationDiagnosticContext.generationStage.setter((v0 - 96));
}

uint64_t OUTLINED_FUNCTION_167_3(float a1)
{
  *v3 = a1;
  *(v4 - 96) = v2;
  *(v4 - 88) = v1;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_168_3()
{
}

double OUTLINED_FUNCTION_170_2()
{

  sub_1C754F15C();
  return result;
}

uint64_t OUTLINED_FUNCTION_179_2()
{
}

unint64_t OUTLINED_FUNCTION_185_2()
{
  type metadata accessor for GlobalTraitGenerator.Error(0);

  return sub_1C7285360();
}

uint64_t OUTLINED_FUNCTION_187_2(uint64_t a1)
{

  return sub_1C754F1CC();
}

uint64_t OUTLINED_FUNCTION_189_0()
{
  *(v2 - 96) = v1;
  *(v2 - 88) = v0;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_202_1()
{
  *(v0 + 12) = 2048;
}

void OUTLINED_FUNCTION_203_2()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_204_3()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_205_1()
{
  v2 = *(v0 + 920);
  v3 = *(v0 + 528);

  return GlobalTraitGenerator.isValid(globalTrait:numberOfAssetsInExpandedPool:)(v3, v2);
}

uint64_t OUTLINED_FUNCTION_206_3()
{

  return sub_1C754F1AC();
}

void OUTLINED_FUNCTION_208_2()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_209_2()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_210_1()
{

  return sub_1C754F2DC();
}

uint64_t OUTLINED_FUNCTION_211_2()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_212_2()
{
  v2 = *(v0 + 912);
  v3 = *(v0 + 504);

  return GlobalTraitGenerator.isValid(globalTrait:numberOfAssetsInExpandedPool:)(v3, v2);
}

uint64_t OUTLINED_FUNCTION_255_2()
{

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_256_2()
{
  v5 = (*(v0 + 56) + 16 * v3);
  *v5 = v2;
  v5[1] = v1;
}

uint64_t OUTLINED_FUNCTION_257_2(uint64_t a1)
{

  return sub_1C7551A2C();
}

void OUTLINED_FUNCTION_258_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

double OUTLINED_FUNCTION_259_0(__n128 a1, __n128 a2)
{

  sub_1C754F2BC();
  return result;
}

void OUTLINED_FUNCTION_260_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

void OUTLINED_FUNCTION_261_2()
{
  *(v0 - 81) = 6;

  StoryGenerationDiagnosticContext.generationStage.setter((v0 - 81));
}

void OUTLINED_FUNCTION_262_2()
{
  v2 = *(v0 - 176);

  sub_1C6FDE438(v2, 0);
}

uint64_t OUTLINED_FUNCTION_263_0()
{
  *(v0 + 256) = 0;
  *(v0 + 264) = 0xE000000000000000;

  return sub_1C755180C();
}

uint64_t OUTLINED_FUNCTION_264_1()
{
  *(v0 + 288) = 0;
  *(v0 + 296) = 0xE000000000000000;

  return sub_1C755180C();
}

void OUTLINED_FUNCTION_265_1()
{

  sub_1C716E538();
}

void OUTLINED_FUNCTION_266_2(uint64_t a1@<X8>)
{

  os_unfair_lock_lock((v1 + a1));
}

BOOL OUTLINED_FUNCTION_267_1()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_268_2()
{
}

uint64_t OUTLINED_FUNCTION_270_2()
{

  return sub_1C754F2DC();
}

void OUTLINED_FUNCTION_271_1(__n128 a1)
{

  StoryGenerationDiagnosticContext.addToGenerationSummary(block:)(v1, a1);
}

uint64_t OUTLINED_FUNCTION_272_1@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X8>)
{

  return sub_1C72853C8(a2 + v2, v4 + v3, a1);
}

uint64_t OUTLINED_FUNCTION_273_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C7550E1C();
}

BOOL OUTLINED_FUNCTION_274_2()
{

  return os_log_type_enabled(v0, v1);
}

void *OUTLINED_FUNCTION_275_1(uint64_t a1, uint64_t a2)
{

  v4 = v2 - 96;
  return GlobalTraitGenerator.removeUninterestingOrEmptyTraits(from:)(*(&a2 - 1)).collectionTraits._rawValue;
}

uint64_t MagicSlotSuggestionPersisterRecipe.curationRecipe.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 18);
  v6 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 18) = v4;
  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
  sub_1C75504FC();

  return sub_1C75504FC();
}

uint64_t MagicSlotSuggestionPersisterRecipe.underlyingCollection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MagicSlotSuggestionPersisterRecipe(0) + 24);

  return sub_1C7286E30(v3, a1);
}

uint64_t sub_1C7286E30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TriggeredCollection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MagicSlotSuggestionPersisterRecipe.init(curationRecipe:assetFetchResult:underlyingCollection:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 8);
  v10 = *(a1 + 18);
  v11 = a1[3];
  v12 = a1[4];
  v13 = type metadata accessor for MagicSlotSuggestionPersisterRecipe(0);
  *(a4 + *(v13 + 28)) = 10;
  *a4 = v7;
  *(a4 + 8) = v8;
  *(a4 + 16) = v9;
  *(a4 + 18) = v10;
  *(a4 + 24) = v11;
  *(a4 + 32) = v12;
  *(a4 + 40) = a2;
  v14 = a4 + *(v13 + 24);

  return sub_1C7286F54(a3, v14);
}

uint64_t sub_1C7286F54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TriggeredCollection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1C7286FE4()
{
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_1C72870A4()
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60, 0x1E69E9BF8);
  result = sub_1C755146C();
  qword_1EDD28BB0 = result;
  return result;
}

uint64_t SuggestionPersister.__allocating_init(photoLibrary:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SuggestionPersister.init(photoLibrary:)(a1);
  return v2;
}

uint64_t SuggestionPersister.init(photoLibrary:)(uint64_t a1)
{
  v3 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0x4144103900000000;
  if (qword_1EDD0A500 != -1)
  {
    OUTLINED_FUNCTION_2_83(&qword_1EDD0A500);
  }

  v9 = qword_1EDD28BB0;
  sub_1C754FF2C();
  (*(v5 + 32))(v1 + OBJC_IVAR____TtC18PhotosIntelligence19SuggestionPersister_logger, v8, v3);
  *(v1 + OBJC_IVAR____TtC18PhotosIntelligence19SuggestionPersister_photoLibrary) = a1;
  return v1;
}

uint64_t sub_1C7287270(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = sub_1C754DF6C();
  v2[22] = v3;
  v4 = *(v3 - 8);
  v2[23] = v4;
  v2[24] = *(v4 + 64);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7287344, 0, 0);
}

uint64_t sub_1C7287344()
{
  if (qword_1EDD0A500 != -1)
  {
    OUTLINED_FUNCTION_2_83(&qword_1EDD0A500);
  }

  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[22];
  v24 = v0[21];
  v25 = v0[24];
  v5 = qword_1EDD28BB0;
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v6 = v5;
  PerformanceMeasure.init(name:log:)();
  sub_1C754DF5C();
  v27 = sub_1C7287FE4(10);
  OUTLINED_FUNCTION_40_0();
  v23 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  *(v23 + 16) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_40_0();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  (*(v3 + 16))(v1, v2, v4);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = (v25 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v9, v1, v4);
  *(v12 + v10) = v24;
  *(v12 + v11) = v8;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
  v0[6] = sub_1C7288B78;
  v0[7] = v12;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1C7067B48;
  v0[5] = &block_descriptor_24;
  v13 = _Block_copy(v0 + 2);

  [v27 enumerateObjectsUsingBlock_];
  _Block_release(v13);

  v14 = sub_1C754FEEC();
  v15 = sub_1C755117C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134218240;
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    *(v16 + 4) = sub_1C6FB6304();

    *(v16 + 12) = 2048;
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    *(v16 + 14) = sub_1C6FB6304();

    _os_log_impl(&dword_1C6F5C000, v14, v15, "Found %ld Magic Slot suggestions to retire, %ld suggestions to delete", v16, 0x16u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  sub_1C71BB580();
  v18 = v17;
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v19 = *(v23 + 16);
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v20 = *(v8 + 16);
  sub_1C75504FC();
  sub_1C75504FC();
  v26 = sub_1C72879A4(v18, v19, v20);
  (*(v0[23] + 8))(v0[26], v0[22]);

  sub_1C6F85170();

  v21 = v0[1];

  return v21(v26);
}

id sub_1C72877A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = sub_1C754DF6C();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ([a1 state] != 2)
  {
    goto LABEL_4;
  }

  result = [a1 creationDate];
  if (result)
  {
    v14 = result;
    sub_1C754DF2C();

    sub_1C754DEAC();
    (*(v9 + 8))(v12, v8);
    swift_beginAccess();
LABEL_4:
    swift_beginAccess();
    a1;
    MEMORY[0x1CCA5D040]();
    sub_1C6FB6328();
    sub_1C7550BEC();
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C72879A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x1E69E7CC0];
  v8 = *(v3 + OBJC_IVAR____TtC18PhotosIntelligence19SuggestionPersister_photoLibrary);
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = v3;
  v9[4] = a3;
  v9[5] = a1;
  v9[6] = v7;
  aBlock[4] = sub_1C7288C44;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6FD8F68;
  aBlock[3] = &block_descriptor_14;
  v10 = _Block_copy(aBlock);
  sub_1C75504FC();

  sub_1C75504FC();
  sub_1C75504FC();

  aBlock[0] = 0;
  v11 = [v8 performChangesAndWait:v10 error:aBlock];
  _Block_release(v10);
  v12 = aBlock[0];
  if (v11)
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_1C75504FC();
    v13 = v12;
    v14 = sub_1C754FEEC();
    v15 = sub_1C75511BC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134218496;
      v17 = *(a1 + 16);

      *(v16 + 4) = v17;

      *(v16 + 12) = 2048;
      v18 = sub_1C6FB6304();

      *(v16 + 14) = v18;

      *(v16 + 22) = 2048;
      *(v16 + 24) = sub_1C6FB6304();

      _os_log_impl(&dword_1C6F5C000, v14, v15, "Created %ld, Deleted %ld, Retired %ld suggestions", v16, 0x20u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    v3 = *(v7 + 16);
    sub_1C75504FC();
  }

  else
  {
    v19 = aBlock[0];
    sub_1C754DBEC();

    swift_willThrow();
  }

  return v3;
}

void sub_1C7287CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1C6FB6304();
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_self();
    v9 = 0;
    v10 = a1 & 0xC000000000000001;
    v41 = a1 & 0xFFFFFFFFFFFFFF8;
    v40 = a1;
    while (1)
    {
      if (v10)
      {
        v11 = MEMORY[0x1CCA5DDD0](v9, a1);
      }

      else
      {
        if (v9 >= *(v41 + 16))
        {
          goto LABEL_25;
        }

        v11 = *(a1 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v14 = [v8 changeRequestForSuggestion_];
      if (v14)
      {
        v15 = v14;
        [v14 markRetired];
        [v15 setFeaturedState:0];
      }

      else
      {
        v16 = v10;
        v15 = sub_1C754FEEC();
        v17 = sub_1C755119C();
        if (os_log_type_enabled(v15, v17))
        {
          v18 = v7;
          v19 = v8;
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_1C6F5C000, v15, v17, "Failed to initialize PHSuggestionChangeRequest", v20, 2u);
          v21 = v20;
          v8 = v19;
          v7 = v18;
          a1 = v40;
          MEMORY[0x1CCA5F8E0](v21, -1, -1);
        }

        v10 = v16;
      }

      ++v9;
      if (v13 == v7)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_14:
    v22 = objc_opt_self();
    sub_1C6F65BE8(0, &qword_1EDD0CEB0, 0x1E6978AE8);
    v23 = sub_1C7550B3C();
    [v22 deleteSuggestions_];

    v24 = *(a4 + 16);
    if (v24)
    {
      v25 = (a4 + 32);
      do
      {
        v26 = sub_1C7288320(v25);
        v27 = [v26 placeholderForCreatedSuggestion];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 localIdentifier];

          v30 = sub_1C755068C();
          v32 = v31;

          swift_beginAccess();
          v33 = *(a5 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(a5 + 16) = v33;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C6FB1814();
            v33 = v37;
            *(a5 + 16) = v37;
          }

          v35 = *(v33 + 16);
          if (v35 >= *(v33 + 24) >> 1)
          {
            sub_1C6FB1814();
            v33 = v38;
          }

          *(v33 + 16) = v35 + 1;
          v36 = v33 + 16 * v35;
          *(v36 + 32) = v30;
          *(v36 + 40) = v32;
          *(a5 + 16) = v33;
          swift_endAccess();
        }

        v25 += 5;
        --v24;
      }

      while (v24);
    }
  }
}

id sub_1C7287FE4(__int16 a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC18PhotosIntelligence19SuggestionPersister_photoLibrary) librarySpecificFetchOptions];
  sub_1C6F65BE8(0, &qword_1EDD0FA80, 0x1E696AB28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C7564A90;
  sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C75604F0;
  v5 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1C6F6D524();
  *(v4 + 64) = v6;
  *(v4 + 32) = 0x6574617473;
  *(v4 + 40) = 0xE500000000000000;
  v7 = MEMORY[0x1E69E75F8];
  v8 = MEMORY[0x1E69E7660];
  *(v4 + 96) = MEMORY[0x1E69E75F8];
  *(v4 + 104) = v8;
  *(v4 + 72) = 4;
  *(v3 + 32) = sub_1C755112C();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C75604F0;
  *(v9 + 56) = v5;
  *(v9 + 64) = v6;
  v10 = v2;
  *(v9 + 32) = 1701869940;
  *(v9 + 40) = 0xE400000000000000;
  *(v9 + 96) = v7;
  *(v9 + 104) = v8;
  *(v9 + 72) = a1;
  *(v3 + 40) = sub_1C755112C();
  v11 = sub_1C6F6E5C4(v3);
  [v2 setPredicate_];

  v12 = [objc_opt_self() fetchSuggestionsWithOptions_];
  v13 = sub_1C754FEEC();
  v14 = sub_1C755117C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 134218242;
    *(v15 + 4) = [v12 count];

    *(v15 + 12) = 2080;
    type metadata accessor for PHSuggestionType(0);
    v17 = sub_1C75506EC();
    v19 = sub_1C6F765A4(v17, v18, &v22);

    *(v15 + 14) = v19;
    _os_log_impl(&dword_1C6F5C000, v13, v14, "Found %ld existing %s suggestions", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  return v12;
}

id sub_1C7288320(void *a1)
{
  sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v66 = v5;
  v67 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v58 - v9;
  v11 = type metadata accessor for TriggeredCollection(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v63 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - v14;
  v16 = OUTLINED_FUNCTION_6_67();
  v17 = *(v2 + 40);
  v58 = v16;
  v59 = v17;
  v61 = v2;
  v62 = v1;
  v60 = v2 + 40;
  v17(v1, v2);
  v18 = *v15;
  sub_1C7288C54(v15);
  LOBYTE(v68) = v18;
  LOWORD(v15) = FeaturedCollectionKind.phSuggestionSubtype.getter();
  sub_1C754DF5C();
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  sub_1C754DEBC();
  v19 = objc_opt_self();
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = (*(v21 + 48))(v20, v21);
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  v25 = (*(v24 + 32))(v23, v24);
  v64 = v10;
  v26 = sub_1C754DECC();
  v65 = v7;
  v27 = sub_1C754DECC();
  v28 = [v19 creationRequestForSuggestionWithType:v22 subtype:v15 keyAssets:v25 representativeAssets:0 creationDate:v26 relevantUntilDate:v27 version:3];

  OUTLINED_FUNCTION_6_67();
  v29 = OUTLINED_FUNCTION_5_62();
  OUTLINED_FUNCTION_3_0();
  v31 = v30;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v58 - v34;
  v26[3](v22, v26, v33);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if ((*(AssociatedConformanceWitness + 48))(v29, AssociatedConformanceWitness) != 10)
  {
    (*(v31 + 8))(v35, v29);
    v68 = 0;
    v69 = 0xE000000000000000;
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0xD000000000000020, 0x80000001C75A80B0);
    MEMORY[0x1CCA5CD70](0xD000000000000026, 0x80000001C75A80E0);
    v47 = a1[3];
    v48 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v47);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_3_0();
    v51 = v50;
    v53 = MEMORY[0x1EEE9AC00](v52);
    v55 = &v58 - v54;
    (*(v48 + 24))(v47, v48, v53);
    v56 = swift_getAssociatedConformanceWitness();
    v57 = (*(v56 + 48))(AssociatedTypeWitness, v56);
    (*(v51 + 8))(v55, AssociatedTypeWitness);
    v70 = v57;
    type metadata accessor for PHSuggestionType(0);
    sub_1C75519EC();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_6_67();
  v37 = OUTLINED_FUNCTION_5_62();
  v38 = MEMORY[0x1EEE9AC00](v37);
  v26[3](v22, v26, v38);
  if (!swift_dynamicCast())
  {
LABEL_8:
    result = sub_1C7551AAC();
    __break(1u);
    return result;
  }

  (*(v31 + 8))(v35, v29);

  v39 = sub_1C755065C();
  [v28 setContext_];

  [v28 setFeaturedState_];
  v40 = v63;
  v59(v62, v61);
  v41 = *(v40 + 24);
  sub_1C7288C54(v40);
  sub_1C6FCA214(v41);
  if (v42)
  {
    v43 = sub_1C755065C();
  }

  else
  {
    v43 = 0;
  }

  [v28 setRelatedCollectionUUID_];

  v44 = *(v66 + 8);
  v45 = v67;
  v44(v65, v67);
  v44(v64, v45);
  return v28;
}

uint64_t SuggestionPersister.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence19SuggestionPersister_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t SuggestionPersister.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence19SuggestionPersister_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

id sub_1C7288B78(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_1C754DF6C() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v3 + v9);
  v12 = *(v3 + v10);
  v13 = *(v3 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C72877A0(a1, a2, a3, v3 + v8, v11, v12, v13);
}

uint64_t sub_1C7288C54(uint64_t a1)
{
  v2 = type metadata accessor for TriggeredCollection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C7288CB4()
{
  result = qword_1EDD0C0B8;
  if (!qword_1EDD0C0B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MagicSlotItem, &type metadata for MagicSlotItem, v0, v1);
    atomic_store(result, &qword_1EDD0C0B8);
  }

  return result;
}

void sub_1C7288D80(uint64_t a1)
{
  sub_1C6F65BE8(319, &qword_1EDD0CEA0, 0x1E6978840);
  if (v1 <= 0x3F)
  {
    type metadata accessor for TriggeredCollection(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PHSuggestionType(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C7288E64(uint64_t a1)
{
  result = sub_1C754FF1C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of SuggestionPersister.persist(magicSlotRecipes:)(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C70E8468;

  return v6(a1);
}

uint64_t sub_1C7289150(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1C75504FC();
  return sub_1C72891CC(v1, v2);
}

uint64_t sub_1C7289190(uint64_t a1)
{
  OUTLINED_FUNCTION_0_121(a1);
  v2 = *(v1 + 96);
  sub_1C75504FC();
  return v2;
}

uint64_t sub_1C72891CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t sub_1C7289270(uint64_t a1)
{
  OUTLINED_FUNCTION_0_121(a1);
  if (*(v1 + 104) && (OUTLINED_FUNCTION_1_90(), v2))
  {
    return *(v1 + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C72892AC()
{
  if (v0[5])
  {
    v1 = v0[4];
  }

  else
  {
    v1 = v0[6];
    sub_1C75504FC();
  }

  sub_1C75504FC();
  return v1;
}

BOOL sub_1C7289300(uint64_t a1)
{
  OUTLINED_FUNCTION_0_121(a1);
  if (!*(v1 + 104))
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_90();
  return v2 != 0;
}

uint64_t sub_1C728933C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_121(a1);
  if (!*(v1 + 104))
  {
    return 0;
  }

  sub_1C75504FC();
  v2 = sub_1C755065C();

  return v2;
}

void *FeatureSurveyStringQuestion.deinit()
{
  v0 = FeatureSurveyQuestion.deinit();

  return v0;
}

uint64_t FeatureSurveyStringQuestion.__deallocating_deinit()
{
  FeatureSurveyQuestion.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C72894C4()
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60, 0x1E69E9BF8);
  result = sub_1C755146C();
  qword_1EDD0FFB0 = result;
  return result;
}

uint64_t sub_1C7289540()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD0FF88);
  __swift_project_value_buffer(v0, qword_1EDD0FF88);
  if (qword_1EDD0FFA8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDD0FFB0;
  return sub_1C754FF2C();
}

id static KeyAssetFetcher.fetchKeyAsset(for:options:)(void *a1, id a2)
{
  if (qword_1EDD0FF80 != -1)
  {
    swift_once();
  }

  v4 = sub_1C754FF1C();
  __swift_project_value_buffer(v4, qword_1EDD0FF88);
  v5 = a1;
  v6 = sub_1C754FEEC();
  v7 = sub_1C755117C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v55 = v9;
    *v8 = 136315138;
    v10 = [v5 localIdentifier];
    v11 = sub_1C755068C();
    v13 = v12;

    v14 = sub_1C6F765A4(v11, v13, &v55);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_1C6F5C000, v6, v7, "Start fetching key assets for collection %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  if (qword_1EDD0FFA8 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDD0FFB0;
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v16 = v15;
  PerformanceMeasure.init(name:log:)();
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    [a2 copy];
    sub_1C75515CC();
    sub_1C6F65BE8(0, &qword_1EDD0FAC8, 0x1E6978830);
    if (swift_dynamicCast())
    {
      v5 = v54;
      swift_unknownObjectRelease();
      goto LABEL_15;
    }

LABEL_13:
    v21 = [v5 photoLibrary];
    if (!v21)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v22 = v21;
    swift_unknownObjectRelease();
    v5 = [v22 librarySpecificFetchOptions];

LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1C7565670;
    v24 = [v18 detectionType];
    *(v23 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
    sub_1C7082AAC(v23, v5);
    v25 = [objc_opt_self() fetchKeyAssetForPerson:v18 options:v5];
    if (v25)
    {
LABEL_16:
      v26 = v25;

LABEL_20:
      sub_1C6F85170();

      return v26;
    }

    __break(1u);
    goto LABEL_26;
  }

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v18 = v19;
    v20 = [objc_opt_self() fetchKeyAssetForSocialGroup:v19 options:a2];
    if (!v20)
    {
      __break(1u);
      goto LABEL_13;
    }

LABEL_19:
    v26 = v20;
    goto LABEL_20;
  }

  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v28 = v27;
    v29 = objc_opt_self();
    v20 = [v29 fetchKeyAssetsInAssetCollection:v28 options:a2];
    if (!v20)
    {
      v5 = v5;
      v31 = sub_1C754FEEC();
      v32 = sub_1C755119C();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v55 = v53;
        *v33 = 136315138;
        v34 = [v28 localIdentifier];
        v35 = sub_1C755068C();
        v36 = v29;
        v37 = v5;
        v39 = v38;

        v40 = sub_1C6F765A4(v35, v39, &v55);
        v5 = v37;
        v29 = v36;

        *(v33 + 4) = v40;
        _os_log_impl(&dword_1C6F5C000, v31, v32, "Fallback has been used for %s since no key assets were available", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v53);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      v41 = [v5 photoLibrary];
      if (v41)
      {
        v42 = v41;
        v5 = [v41 librarySpecificFetchOptions];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0, &unk_1C755BE10);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_1C75604F0;
        v44 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
        v45 = sub_1C6F6AF98(0x6165724365746164, 0xEB00000000646574, 0);
        v46 = sub_1C6F65BE8(0, &qword_1EDD108F0, 0x1E696AEB0);
        *(v43 + 56) = v46;
        *(v43 + 32) = v45;
        v47 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
        v48 = sub_1C6F6AF98(0x44497463656A626FLL, 0xE800000000000000, 1);
        *(v43 + 88) = v46;
        *(v43 + 64) = v48;
        sub_1C70E7F40(v43, v5);
        [v5 setFetchLimit_];
        v25 = [v29 fetchAssetsInAssetCollection:v28 options:v5];
        goto LABEL_16;
      }

      goto LABEL_27;
    }

    goto LABEL_19;
  }

LABEL_28:
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_1C755180C();

  v55 = 0xD00000000000002ELL;
  v56 = 0x80000001C75A8210;
  v49 = [v5 description];
  v50 = sub_1C755068C();
  v52 = v51;

  MEMORY[0x1CCA5CD70](v50, v52);

  result = sub_1C7551AAC();
  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for KeyAssetFetcher(_BYTE *result, int a2, int a3)
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

uint64_t PersonalizationProfileBuilderError.hashValue.getter()
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](0);
  return sub_1C7551FAC();
}

uint64_t PersonalizationUserProfile.init(sceneAnalysisVersion:medoidIdentifiers:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t static PersonalizationUserProfile.== infix(_:_:)(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 == *a2)
  {
    return sub_1C70020D4(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C7289E84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x80000001C75A82A0 == a2;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C75A82C0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1C7289F58(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1C7289F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7289E84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7289FC0(uint64_t a1)
{
  v2 = sub_1C728A1F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7289FFC(uint64_t a1)
{
  v2 = sub_1C728A1F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizationUserProfile.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219EC0, &unk_1C757DDB0);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - v8;
  v11[0] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C728A1F0();
  sub_1C755200C();
  v13 = 0;
  sub_1C7551D3C();
  if (!v2)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C6FF60E4(&qword_1EDD0CF60, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1C7551D2C();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1C728A1F0()
{
  result = qword_1EC219EC8;
  if (!qword_1EC219EC8)
  {
    result = swift_getWitnessTable(aE_5, &type metadata for PersonalizationUserProfile.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219EC8);
  }

  return result;
}

uint64_t PersonalizationUserProfile.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219ED0, &qword_1C757DDC0);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C728A1F0();
  sub_1C7551FFC();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_1C7551C2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    v15 = 1;
    sub_1C6FF60E4(&qword_1EDD0CF50, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1C7551C1C();
    (*(v7 + 8))(v10, v5);
    v12 = v14[1];
    *a2 = v11;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersonalizationProfileBuilder.__allocating_init(with:numCentroids:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t PersonalizationProfileBuilder.init(with:numCentroids:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void sub_1C728A4B0(uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = [*(v2 + 16) librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C755BAA0;
  *(v5 + 32) = sub_1C755068C();
  *(v5 + 40) = v6;
  *(v5 + 48) = sub_1C755068C();
  *(v5 + 56) = v7;
  *(v5 + 64) = sub_1C755068C();
  *(v5 + 72) = v8;
  sub_1C70B81C8(v5, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C7565670;
  v10 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v9 + 32) = sub_1C6F6AF98(0x6E6F697461657263, 0xEC00000065746144, 0);
  sub_1C71F8834(v9, v4);
  [v4 setFetchLimit_];
  v11 = objc_opt_self();
  v12 = sub_1C7550B3C();
  v118 = v4;
  v13 = [v11 fetchAssetsWithLocalIdentifiers:v12 options:v4];

  v138 = MEMORY[0x1E69E7CD0];
  v14 = [v13 count];
  if ((v14 & 0x8000000000000000) == 0)
  {
    v15 = v14;
    v16 = MEMORY[0x1E69E7CC0];
    v127 = v13;
    if (v14)
    {
      v121 = v3;
      v17 = 0;
      v124 = *MEMORY[0x1E69C0C38];
      v18 = &selRef_mergedPersonIdentifiers;
      v126 = MEMORY[0x1E69E7CC0];
      v132 = MEMORY[0x1E69E7CC0];
      do
      {
        v19 = objc_autoreleasePoolPush();
        v20 = [v13 v18[45]];
        v21 = [v20 sceneAnalysisProperties];
        if (v21 && (v22 = v21, v23 = [v21 sceneAnalysisVersion], v22, v23) && v124 != v23 && (sub_1C73C6BB8(), v24))
        {
          v25 = v24;
          v26 = v20;
          sub_1C70F5F1C(&v137, v23);
          v27 = v126;
          v134 = v19;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_24_0();
            sub_1C6FB441C();
            v27 = v49;
          }

          v28 = *(v27 + 16);
          if (v28 >= *(v27 + 24) >> 1)
          {
            sub_1C6FB441C();
            v27 = v50;
          }

          *(v27 + 16) = v28 + 1;
          v126 = v27;
          *(v27 + 8 * v28 + 32) = v25;
          v29 = v26;
          v30 = [v26 localIdentifier];
          v31 = sub_1C755068C();
          v33 = v32;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_24_0();
            sub_1C6FB1814();
            v132 = v51;
          }

          v13 = v127;
          v34 = *(v132 + 16);
          if (v34 >= *(v132 + 24) >> 1)
          {
            sub_1C6FB1814();
            v132 = v52;
          }

          *(v132 + 16) = v34 + 1;
          v35 = v132 + 16 * v34;
          *(v35 + 32) = v31;
          *(v35 + 40) = v33;
          v19 = v134;
        }

        else
        {
          v36 = sub_1C755119C();
          sub_1C7047818();
          v37 = sub_1C755145C();
          if (os_log_type_enabled(v37, v36))
          {
            v128 = v36;
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v40 = v20;
            v130 = v20;
            v41 = v39;
            v137 = v39;
            *v38 = 136315138;
            v42 = v18;
            v43 = v15;
            v44 = [v40 localIdentifier];
            v45 = sub_1C755068C();
            v135 = v19;
            v47 = v46;

            v15 = v43;
            v18 = v42;
            v48 = sub_1C6F765A4(v45, v47, &v137);
            v19 = v135;

            *(v38 + 4) = v48;
            v13 = v127;
            _os_log_impl(&dword_1C6F5C000, v37, v128, "PersonalizationProfileBuilder: Sceneprint not processed for asset %s.", v38, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v41);
            MEMORY[0x1CCA5F8E0](v41, -1, -1);
            MEMORY[0x1CCA5F8E0](v38, -1, -1);
          }

          else
          {
          }
        }

        ++v17;
        objc_autoreleasePoolPop(v19);
      }

      while (v15 != v17);
      v53 = v138;
      v54 = v126;
      v16 = v132;
      v3 = v121;
    }

    else
    {
      v53 = MEMORY[0x1E69E7CD0];
      v54 = MEMORY[0x1E69E7CC0];
    }

    if (*(v53 + 16) != 1)
    {
      sub_1C728AE38();
      swift_allocError();
      swift_willThrow();

      return;
    }

    v116 = v53;
    sub_1C705FFB0(v54, *(v3 + 24));
    v56 = v55 + 64;
    v57 = 1 << *(v55 + 32);
    v58 = -1;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    v59 = v58 & *(v55 + 64);
    v60 = (v57 + 63) >> 6;
    v136 = v16 + 32;
    v123 = v55;
    sub_1C75504FC();
    v61 = v59;
    v62 = v60;
    v63 = 0;
    v64 = MEMORY[0x1E69E7CC0];
    v133 = v16;
    v120 = v60;
    v122 = v56;
    while (1)
    {
      v131 = v64;
      if (!v61)
      {
        break;
      }

      v65 = v123;
LABEL_34:
      v129 = v61;
      v125 = v63;
      v67 = (v63 << 9) | (8 * __clz(__rbit64(v61)));
      v68 = *(*(v65 + 48) + v67);
      v69 = *(*(v65 + 56) + v67);
      v70 = *(v69 + 16);
      if (v70)
      {
        v119 = *(*(v65 + 48) + v67);
        v137 = MEMORY[0x1E69E7CC0];
        sub_1C75504FC();
        sub_1C6F7ED9C(0, v70, 0, v71, v72, v73, v74);
        v16 = v133;
        v75 = v137;
        v76 = 32;
        while (1)
        {
          v77 = *(v69 + v76);
          if ((v77 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (v77 >= *(v16 + 16))
          {
            goto LABEL_61;
          }

          v78 = (v136 + 16 * v77);
          v80 = *v78;
          v79 = v78[1];
          v137 = v75;
          v82 = *(v75 + 16);
          v81 = *(v75 + 24);
          sub_1C75504FC();
          if (v82 >= v81 >> 1)
          {
            sub_1C6F7ED9C(v81 > 1, v82 + 1, 1, v83, v84, v85, v86);
            v16 = v133;
            v75 = v137;
          }

          *(v75 + 16) = v82 + 1;
          v87 = v75 + 16 * v82;
          *(v87 + 32) = v80;
          *(v87 + 40) = v79;
          v76 += 8;
          if (!--v70)
          {

            v68 = v119;
            goto LABEL_43;
          }
        }

        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v75 = MEMORY[0x1E69E7CC0];
LABEL_43:
      v64 = v131;
      if ((v68 & 0x8000000000000000) != 0)
      {
        goto LABEL_63;
      }

      if (v68 >= *(v16 + 16))
      {
        goto LABEL_64;
      }

      v88 = (v136 + 16 * v68);
      v90 = *v88;
      v89 = v88[1];
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB434C(v95);
        v64 = v96;
      }

      v92 = v64[2];
      v91 = v64[3];
      v62 = v120;
      v56 = v122;
      v93 = v129;
      if (v92 >= v91 >> 1)
      {
        sub_1C6FB434C(v91 > 1);
        v93 = v129;
        v62 = v120;
        v56 = v122;
        v64 = v97;
      }

      v61 = (v93 - 1) & v93;
      v64[2] = v92 + 1;
      v94 = &v64[3 * v92];
      v94[4] = v75;
      v94[5] = v90;
      v94[6] = v89;
      v13 = v127;
      v16 = v133;
      v63 = v125;
    }

    v65 = v123;
    while (1)
    {
      v66 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      if (v66 >= v62)
      {

        v98 = sub_1C710DDB0(v116);
        if ((v98 & 0x10000) != 0)
        {
          goto LABEL_66;
        }

        v99 = v98;

        v104 = v64[2];
        if (v104)
        {
          v137 = MEMORY[0x1E69E7CC0];
          sub_1C6F7ED9C(0, v104, 0, v100, v101, v102, v103);
          v105 = v137;
          v106 = v64 + 6;
          do
          {
            v108 = *(v106 - 1);
            v107 = *v106;
            v137 = v105;
            v110 = *(v105 + 16);
            v109 = *(v105 + 24);
            sub_1C75504FC();
            if (v110 >= v109 >> 1)
            {
              sub_1C6F7ED9C(v109 > 1, v110 + 1, 1, v111, v112, v113, v114);
              v105 = v137;
            }

            *(v105 + 16) = v110 + 1;
            v115 = v105 + 16 * v110;
            *(v115 + 32) = v108;
            *(v115 + 40) = v107;
            v106 += 3;
            --v104;
          }

          while (v104);
        }

        else
        {

          v105 = MEMORY[0x1E69E7CC0];
        }

        *a2 = v99;
        *(a2 + 8) = v105;
        return;
      }

      v61 = *(v56 + 8 * v66);
      ++v63;
      if (v61)
      {
        v63 = v66;
        goto LABEL_34;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
  }

  __break(1u);
LABEL_66:
  __break(1u);
}

uint64_t PersonalizationProfileBuilder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1C728AE38()
{
  result = qword_1EC219ED8;
  if (!qword_1EC219ED8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PersonalizationProfileBuilderError, &type metadata for PersonalizationProfileBuilderError, v0, v1);
    atomic_store(result, &qword_1EC219ED8);
  }

  return result;
}

unint64_t sub_1C728AE90()
{
  result = qword_1EC219EE0;
  if (!qword_1EC219EE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PersonalizationProfileBuilderError, &type metadata for PersonalizationProfileBuilderError, v0, v1);
    atomic_store(result, &qword_1EC219EE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalizationProfileBuilderError(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for PersonalizationUserProfile.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C728B100()
{
  result = qword_1EC219EE8;
  if (!qword_1EC219EE8)
  {
    result = swift_getWitnessTable(byte_1C757E04C, &type metadata for PersonalizationUserProfile.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219EE8);
  }

  return result;
}

unint64_t sub_1C728B158()
{
  result = qword_1EC219EF0;
  if (!qword_1EC219EF0)
  {
    result = swift_getWitnessTable(a5_2, &type metadata for PersonalizationUserProfile.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219EF0);
  }

  return result;
}

unint64_t sub_1C728B1B0()
{
  result = qword_1EC219EF8;
  if (!qword_1EC219EF8)
  {
    result = swift_getWitnessTable(aM_4, &type metadata for PersonalizationUserProfile.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219EF8);
  }

  return result;
}

uint64_t MusicMobileAssetsConfig.description.getter()
{
  OUTLINED_FUNCTION_7_55();
  sub_1C755180C();
  OUTLINED_FUNCTION_547();
  MEMORY[0x1CCA5CD70]();
  MEMORY[0x1CCA5CD70](*v0, v0[1]);
  MEMORY[0x1CCA5CD70](0x725565736162202CLL, 0xEB00000000203A6CLL);
  MEMORY[0x1CCA5CD70](v0[2], v0[3]);
  MEMORY[0x1CCA5CD70](0x6F5065746164202CLL, 0xEE00203A64657473);
  type metadata accessor for MusicMobileAssetsConfig(0);
  sub_1C754DF6C();
  sub_1C728C2C8(&qword_1EDD0F9D8, MEMORY[0x1E6969570]);
  v1 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v1);

  MEMORY[0x1CCA5CD70](0x737465737361202CLL, 0xEF203A746E756F43);
  OUTLINED_FUNCTION_8_57();
  v2 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v2);

  OUTLINED_FUNCTION_547();
  MEMORY[0x1CCA5CD70]();
  OUTLINED_FUNCTION_8_57();
  v3 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v3);

  OUTLINED_FUNCTION_547();
  v4 = MEMORY[0x1CCA5CD70]();
  v6 = OUTLINED_FUNCTION_0_122(v4, v5);
  v12 = OUTLINED_FUNCTION_3_77(v6, MEMORY[0x1E69E6158], v7, v6, v8, v9, v10, v11, v18);
  v13 = (v12 & 1) == 0;
  if (v12)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v13)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v14, v15);

  OUTLINED_FUNCTION_547();
  MEMORY[0x1CCA5CD70](0xD000000000000014);
  v16 = MusicMobileAssetsConfig.dateForAnalytics.getter();
  MEMORY[0x1CCA5CD70](v16);

  return v19;
}

uint64_t MusicMobileAssetsConfig.shortDescription.getter()
{
  OUTLINED_FUNCTION_7_55();
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0x6F43737465737361, 0xED0000203A746E75);
  type metadata accessor for MusicMobileAssetsConfig(0);
  OUTLINED_FUNCTION_8_57();
  v0 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v0);

  OUTLINED_FUNCTION_547();
  MEMORY[0x1CCA5CD70]();
  OUTLINED_FUNCTION_8_57();
  v1 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v1);

  OUTLINED_FUNCTION_547();
  v2 = MEMORY[0x1CCA5CD70]();
  v4 = OUTLINED_FUNCTION_0_122(v2, v3);
  v10 = OUTLINED_FUNCTION_3_77(v4, MEMORY[0x1E69E6158], v5, v4, v6, v7, v8, v9, v16);
  v11 = (v10 & 1) == 0;
  if (v10)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v11)
  {
    v13 = 0xE500000000000000;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v12, v13);

  OUTLINED_FUNCTION_547();
  MEMORY[0x1CCA5CD70](0xD000000000000014);
  v14 = MusicMobileAssetsConfig.dateForAnalytics.getter();
  MEMORY[0x1CCA5CD70](v14);

  return v17;
}

uint64_t MusicMobileAssetsConfig.assetType.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

uint64_t MusicMobileAssetsConfig.baseUrl.getter()
{
  v1 = *(v0 + 16);
  sub_1C75504FC();
  return v1;
}

uint64_t MusicMobileAssetsConfig.datePosted.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicMobileAssetsConfig(0) + 24);
  v4 = sub_1C754DF6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MusicMobileAssetsConfig.dateForAnalytics.getter()
{
  v0 = sub_1C754E15C();
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v6 = v5 - v4;
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C754E03C();
  v8 = sub_1C754E09C();
  (*(v2 + 8))(v6, v0);
  [v7 setLocale_];

  sub_1C7069CE4(0x2D4D4D2D79797979, 0xEA00000000006464, v7);
  type metadata accessor for MusicMobileAssetsConfig(0);
  v9 = sub_1C754DECC();
  v10 = [v7 stringFromDate_];

  v11 = sub_1C755068C();
  return v11;
}

uint64_t sub_1C728B948(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079547465737361 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C725565736162 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74736F5065746164 && a2 == 0xEA00000000006465;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F43737465737361 && a2 == 0xEB00000000746E75;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD00000000000001CLL && 0x80000001C75A8380 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C7551DBC();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C728BB04(char a1)
{
  result = 0x7079547465737361;
  switch(a1)
  {
    case 1:
      result = 0x6C725565736162;
      break;
    case 2:
      result = 0x74736F5065746164;
      break;
    case 3:
      result = 0x6F43737465737361;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C728BBBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C728B948(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C728BBE4(uint64_t a1)
{
  v2 = sub_1C728C274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C728BC20(uint64_t a1)
{
  v2 = sub_1C728C274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicMobileAssetsConfig.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219F00, &qword_1C757E100);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C728C274();
  sub_1C755200C();
  v10[15] = 0;
  OUTLINED_FUNCTION_442();
  sub_1C7551CCC();
  if (!v1)
  {
    v10[14] = 1;
    OUTLINED_FUNCTION_442();
    sub_1C7551CCC();
    type metadata accessor for MusicMobileAssetsConfig(0);
    v10[13] = 2;
    sub_1C754DF6C();
    sub_1C728C2C8(&qword_1EDD0F9E8, MEMORY[0x1E6969538]);
    OUTLINED_FUNCTION_442();
    sub_1C7551D2C();
    v10[12] = 3;
    OUTLINED_FUNCTION_442();
    sub_1C7551D0C();
    v10[11] = 4;
    OUTLINED_FUNCTION_442();
    sub_1C7551D0C();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t MusicMobileAssetsConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v28 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219F10, &qword_1C757E108);
  OUTLINED_FUNCTION_3_0();
  v27 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - v11;
  v13 = type metadata accessor for MusicMobileAssetsConfig(0);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14_0();
  v16 = (v15 - v14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C728C274();
  v29 = v12;
  v17 = v31;
  sub_1C7551FFC();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v28;
  v36 = 0;
  OUTLINED_FUNCTION_9_61();
  *v16 = sub_1C7551BBC();
  v16[1] = v19;
  v31 = v19;
  v35 = 1;
  OUTLINED_FUNCTION_9_61();
  v16[2] = sub_1C7551BBC();
  v16[3] = v20;
  v34 = 2;
  sub_1C728C2C8(&qword_1EDD100B8, MEMORY[0x1E6969558]);
  v25[1] = 0;
  sub_1C7551C1C();
  (*(v18 + 32))(v16 + v13[6], v8, v3);
  v33 = 3;
  OUTLINED_FUNCTION_9_61();
  *(v16 + v13[7]) = sub_1C7551BFC();
  v32 = 4;
  OUTLINED_FUNCTION_9_61();
  v21 = sub_1C7551BFC();
  v22 = OUTLINED_FUNCTION_5_63();
  v23(v22);
  *(v16 + v13[8]) = v21;
  sub_1C728C30C(v16, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1C70D7D88(v16);
}

uint64_t type metadata accessor for MusicMobileAssetsConfig(uint64_t a1)
{
  result = qword_1EDD09918;
  if (!qword_1EDD09918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C728C274()
{
  result = qword_1EC219F08;
  if (!qword_1EC219F08)
  {
    result = swift_getWitnessTable(aM_5, &type metadata for MusicMobileAssetsConfig.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219F08);
  }

  return result;
}

uint64_t sub_1C728C2C8(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_1C754DF6C();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C728C30C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicMobileAssetsConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C728C398(uint64_t a1)
{
  result = sub_1C754DF6C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicMobileAssetsConfig.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C728C504()
{
  result = qword_1EC219F18;
  if (!qword_1EC219F18)
  {
    result = swift_getWitnessTable(byte_1C757E244, &type metadata for MusicMobileAssetsConfig.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219F18);
  }

  return result;
}

unint64_t sub_1C728C55C()
{
  result = qword_1EC219F20;
  if (!qword_1EC219F20)
  {
    result = swift_getWitnessTable(asc_1C757E1B4, &type metadata for MusicMobileAssetsConfig.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219F20);
  }

  return result;
}

unint64_t sub_1C728C5B4()
{
  result = qword_1EC219F28;
  if (!qword_1EC219F28)
  {
    result = swift_getWitnessTable(aU_8, &type metadata for MusicMobileAssetsConfig.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219F28);
  }

  return result;
}

uint64_t Calendar.lastWeekend(for:)(uint64_t a1)
{
  v2 = sub_1C754E1CC();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v19 - v16;
  (*(v10 + 16))(&v19 - v16, a1, v8, v15);
  if (sub_1C754E1DC())
  {
    sub_1C754DEBC();
    (*(v10 + 8))(v17, v8);
    (*(v10 + 32))(v17, v13, v8);
  }

  (*(v4 + 104))(v7, *MEMORY[0x1E69699A0], v2);
  sub_1C754E19C();
  (*(v4 + 8))(v7, v2);
  return (*(v10 + 8))(v17, v8);
}

uint64_t Calendar.enclosingInterval(for:intervalSize:)@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v15 - v11;
  sub_1C754DF5C();
  v15[1] = 0;
  sub_1C754E1AC();
  (*(v6 + 16))(v9, v12, v4);
  sub_1C754D88C();
  (*(v6 + 8))(v12, v4);
  v13 = sub_1C754D8BC();
  return __swift_storeEnumTagSinglePayload(a3, 0, 1, v13);
}

uint64_t Calendar.intervalForPreceedingPeriod(for:intervalSize:)@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C754E1FC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1C70D7CB8(v6);
    v13 = sub_1C754D8BC();
    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v13);
  }

  else
  {
    (*(v9 + 32))(v12, v6, v7);
    Calendar.enclosingInterval(for:intervalSize:)(a3);
    return (*(v9 + 8))(v12, v7);
  }
}

id static SuggestionCollectionFetcher.predicateForFavorites(_:)(int a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v5) = a1;
  v6 = sub_1C754FF1C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 8);
  (*(v11 + 16))(a2, v11, v8);
  v12 = sub_1C754FEEC();
  v13 = sub_1C755119C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    HIDWORD(v22) = v5;
    v5 = v14;
    v15 = swift_slowAlloc();
    v23 = v15;
    *v5 = 136315138;
    v16 = (*(*(v11 + 8) + 16))(a2);
    v18 = sub_1C6F765A4(v16, v17, &v23);

    *(v5 + 4) = v18;
    _os_log_impl(&dword_1C6F5C000, v12, v13, "CollectionFetcher.%s do not supports favorites", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1CCA5F8E0](v15, -1, -1);
    v19 = v5;
    LOBYTE(v5) = BYTE4(v22);
    MEMORY[0x1CCA5F8E0](v19, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v20 = [objc_opt_self() predicateWithValue_];

  return v20;
}

uint64_t static SuggestionCollectionFetcher.defaultSortDescriptors(ascending:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C7564A90;
  v3 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 32) = sub_1C6F6AF98(0x6E6F697461657263, 0xEC00000065746144, a1);
  v4 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 40) = sub_1C6F6AF98(1684632949, 0xE400000000000000, 0);
  return v2;
}

uint64_t sub_1C728CE08(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  v3 = (v2 + 16);
  v7[4] = sub_1C728D404;
  v7[5] = v2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1C7067B48;
  v7[3] = &block_descriptor_7;
  v4 = _Block_copy(v7);

  [a1 enumerateObjectsUsingBlock_];
  _Block_release(v4);
  swift_beginAccess();
  v5 = *v3;
  sub_1C75504FC();

  return v5;
}

uint64_t static SuggestionCollectionFetcher.describe(collections:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v11[4] = sub_1C728D3F8;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1C7067B48;
  v11[3] = &block_descriptor_25;
  v8 = _Block_copy(v11);

  [a1 enumerateObjectsUsingBlock_];
  _Block_release(v8);
  swift_beginAccess();
  v9 = *(v6 + 16);
  sub_1C75504FC();

  return v9;
}

uint64_t sub_1C728D06C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C728D40C();
  v20 = sub_1C755204C();
  v21 = v6;
  MEMORY[0x1CCA5CD70](46, 0xE100000000000000);
  MEMORY[0x1CCA5CD70](0x6465727574616546, 0xEF736F746F685020);
  MEMORY[0x1CCA5CD70](32, 0xE100000000000000);
  v7 = [a1 uuid];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1C755068C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  MEMORY[0x1CCA5CD70](v9, v11);

  MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
  [a1 subtype];
  v12 = PHSuggestionStringWithSubtype();
  v13 = sub_1C755068C();
  v15 = v14;

  MEMORY[0x1CCA5CD70](v13, v15);

  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
  swift_beginAccess();
  sub_1C6FB0600();
  v16 = *(*(a4 + 16) + 16);
  sub_1C6FB0EFC();
  v17 = *(a4 + 16);
  *(v17 + 16) = v16 + 1;
  v18 = v17 + 16 * v16;
  *(v18 + 32) = v20;
  *(v18 + 40) = v21;
  *(a4 + 16) = v17;
  return swift_endAccess();
}

uint64_t sub_1C728D214(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C728D40C();
  v25 = sub_1C755204C();
  v26 = v10;
  MEMORY[0x1CCA5CD70](46, 0xE100000000000000);
  v11 = (*(*(*(a6 + 8) + 8) + 16))(a5);
  MEMORY[0x1CCA5CD70](v11);

  MEMORY[0x1CCA5CD70](32, 0xE100000000000000);
  v12 = [a1 uuid];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1C755068C();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  MEMORY[0x1CCA5CD70](v14, v16);

  MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
  [a1 subtype];
  v17 = PHSuggestionStringWithSubtype();
  v18 = sub_1C755068C();
  v20 = v19;

  MEMORY[0x1CCA5CD70](v18, v20);

  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
  swift_beginAccess();
  sub_1C6FB0600();
  v21 = *(*(a4 + 16) + 16);
  sub_1C6FB0EFC();
  v22 = *(a4 + 16);
  *(v22 + 16) = v21 + 1;
  v23 = v22 + 16 * v21;
  *(v23 + 32) = v25;
  *(v23 + 40) = v26;
  *(a4 + 16) = v22;
  return swift_endAccess();
}

unint64_t sub_1C728D40C()
{
  result = qword_1EDD0CEB0;
  if (!qword_1EDD0CEB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD0CEB0);
  }

  return result;
}

uint64_t QueryUnderstandingResult.sensitiveFlags.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 33);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
  return sub_1C75504FC();
}

uint64_t QueryUnderstandingResult.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v60 = *(v0 + 33);
  v61 = *(v0 + 32);
  v4 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C757E2F0;
  OUTLINED_FUNCTION_3_1();
  v6 = 0xD000000000000018;
  *(v7 + 32) = 0xD000000000000018;
  *(v7 + 40) = v8;
  sub_1C755180C();

  OUTLINED_FUNCTION_3_1();
  __dst[0] = 0xD000000000000012;
  __dst[1] = v9;
  v10 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v10);

  v11 = __dst[1];
  *(v5 + 48) = 0xD000000000000012;
  *(v5 + 56) = v11;
  OUTLINED_FUNCTION_3_1();
  *(v5 + 64) = 0xD000000000000023;
  *(v5 + 72) = v16;
  v66 = 0;
  v67 = 0xE000000000000000;
  v17 = *(v1 + 16);
  if (v17)
  {
    v58 = v2;
    v59 = v4;
    v64 = 91;
    v65 = 0xE100000000000000;
    v63 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v17, 0, v12, v13, v14, v15);
    v18 = v63;
    v19 = (v1 + 32);
    do
    {
      v20 = memcpy(__dst, v19, sizeof(__dst));
      QueryToken.description.getter(v20, v21, v22, v23, v24, v25, v26);
      v32 = v31;
      v34 = v33;
      v63 = v18;
      v36 = *(v18 + 16);
      v35 = *(v18 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1C6F7ED9C(v35 > 1, v36 + 1, 1, v27, v28, v29, v30);
        v18 = v63;
      }

      *(v18 + 16) = v36 + 1;
      v37 = v18 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
      v19 += 120;
      --v17;
    }

    while (v17);
    __dst[0] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C703328C();
    v38 = sub_1C75505FC();
    v40 = v39;

    MEMORY[0x1CCA5CD70](v38, v40);

    MEMORY[0x1CCA5CD70](93, 0xE100000000000000);
    v6 = v64;
    v41 = v65;
    v4 = v59;
    v2 = v58;
  }

  else
  {
    v41 = 0x80000001C75A8410;
  }

  MEMORY[0x1CCA5CD70](v6, v41);

  v42 = v67;
  *(v5 + 80) = v66;
  *(v5 + 88) = v42;
  OUTLINED_FUNCTION_3_1();
  *(v5 + 96) = 0xD00000000000001ELL;
  *(v5 + 104) = v43;
  v44 = [v2 description];
  v45 = sub_1C755068C();
  v47 = v46;

  *(v5 + 112) = v45;
  *(v5 + 120) = v47;
  OUTLINED_FUNCTION_3_1();
  *(v5 + 128) = 0xD000000000000017;
  *(v5 + 136) = v48;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  v66 = v3;
  LOBYTE(v67) = v61;
  BYTE1(v67) = v60;
  sub_1C75519EC();
  v49 = __dst[1];
  *(v5 + 144) = __dst[0];
  *(v5 + 152) = v49;
  OUTLINED_FUNCTION_3_1();
  *(v5 + 160) = 0xD00000000000002DLL;
  *(v5 + 168) = v50;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1C755180C();

  OUTLINED_FUNCTION_3_1();
  __dst[0] = 0xD000000000000017;
  __dst[1] = v51;
  if (v4)
  {
    v66 = *(v4 + 16);
    sub_1C7025C9C();
    v52 = sub_1C75515BC();
    v54 = v53;
  }

  else
  {
    v54 = 0xE300000000000000;
    v52 = 7104878;
  }

  MEMORY[0x1CCA5CD70](v52, v54);

  v55 = __dst[1];
  *(v5 + 176) = __dst[0];
  *(v5 + 184) = v55;
  __dst[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  sub_1C703328C();
  v56 = sub_1C75505FC();

  return v56;
}

uint64_t QueryUnderstandingResult.init(retrievedAssetUUIDs:queryTokens:attributedUserPrompt:sensitiveFlags:consolidatedPersonAssetUUIDs:llmQULatency:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v8 = *a4;
  v9 = *(a4 + 8);
  v10 = *(a4 + 9);
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = v8;
  *(a8 + 32) = v9;
  *(a8 + 33) = v10;
  *(a8 + 40) = a5;
  *(a8 + 48) = a6;
  *(a8 + 56) = a7 & 1;
  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C728D8F4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1C728D934(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C728D994@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = -1 << *(a1 + 32);
  v3 = ~v2;
  *a2 = a1;
  v6 = *(a1 + 64);
  result = a1 + 64;
  v5 = v6;
  v7 = -v2;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  a2[1] = result;
  a2[2] = v3;
  a2[3] = 0;
  a2[4] = v8 & v5;
  a2[5] = 0;
  return result;
}

uint64_t sub_1C728D9D0()
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60, 0x1E69E9BF8);
  result = sub_1C755146C();
  qword_1EC219F30 = result;
  return result;
}

uint64_t sub_1C728DA48()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC219F38);
  __swift_project_value_buffer(v0, qword_1EC219F38);
  if (qword_1EC213F88 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC219F30;
  return sub_1C754FF2C();
}

void FeaturedPhotosSpatial3DGeneration.init(photoLibrary:)(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = a1;
  a2[1] = sub_1C728DB30(1, v3);
  v4 = sub_1C728DB30(0, v3);

  a2[2] = v4;
}

id sub_1C728DB30(int a1, void *a2)
{
  v31 = a1;
  v3 = sub_1C754E24C();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C754DF6C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = &v28 - v15;
  v17 = [a2 librarySpecificFetchOptions];
  [v17 setFetchLimit_];
  [v17 setWantsIncrementalChangeDetails_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C7564A90;
  v19 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v18 + 32) = sub_1C6F6AF98(0x6E6F697461657263, 0xEC00000065746144, 0);
  v20 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v18 + 40) = sub_1C6F6AF98(1684632949, 0xE400000000000000, 1);
  sub_1C71F8834(v18, v17);
  sub_1C754E21C();
  sub_1C754DF3C();
  Calendar.nearestMidnight(for:)(v12);
  v21 = *(v7 + 8);
  v21(v9, v6);
  (*(v29 + 8))(v5, v30);
  v22 = v31;
  sub_1C754DEFC();
  v21(v12, v6);
  if ((v22 & 1) == 0)
  {
    sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1C75604F0;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1C6F6D524();
    strcpy((v23 + 32), "creationDate");
    *(v23 + 45) = 0;
    *(v23 + 46) = -5120;
    v24 = sub_1C754DECC();
    *(v23 + 96) = sub_1C6F65BE8(0, &unk_1EDD0CD28, 0x1E695DF00);
    *(v23 + 104) = sub_1C706700C();
    *(v23 + 72) = v24;
    v25 = sub_1C755112C();
    [v17 setPredicate_];
  }

  v26 = [objc_opt_self() fetchWidgetSuggestionsWithFeaturedState:v22 & 1 withOptions:v17];

  v21(v16, v6);
  return v26;
}

uint64_t FeaturedPhotosSpatial3DGeneration.execute(with:progressReporter:)()
{
  OUTLINED_FUNCTION_49_0();
  v3 = *v2;
  v4 = *(v0 + 16);
  v5 = 0x30201u >> ((*v2 >> 3) & 0x18);
  *(v1 + 16) = *v0;
  *(v1 + 56) = v3;
  *(v1 + 32) = v4;
  *(v1 + 57) = v5;
  v6 = swift_task_alloc();
  *(v1 + 40) = v6;
  *v6 = v1;
  v6[1] = sub_1C728E028;

  return FeaturedPhotosSpatial3DGeneration.execute(with:generationMode:progressReporter:)();
}

uint64_t sub_1C728E028()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v8 + 48) = v0;

  if (v0)
  {
    v9 = OUTLINED_FUNCTION_24_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v6 + 8);

    return v12(v3);
  }
}

uint64_t FeaturedPhotosSpatial3DGeneration.execute(with:generationMode:progressReporter:)()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  v5 = v4;
  *(v1 + 232) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  OUTLINED_FUNCTION_76(v7);
  *(v1 + 240) = swift_task_alloc();
  *(v1 + 248) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8, &unk_1C7564890);
  OUTLINED_FUNCTION_76(v8);
  *(v1 + 256) = swift_task_alloc();
  v9 = type metadata accessor for Spatial3DResourceGenerator(0);
  OUTLINED_FUNCTION_18(v9);
  *(v1 + 264) = v10;
  *(v1 + 272) = *(v11 + 64);
  *(v1 + 280) = swift_task_alloc();
  *(v1 + 288) = swift_task_alloc();
  *(v1 + 296) = swift_task_alloc();
  *(v1 + 304) = swift_task_alloc();
  *(v1 + 489) = *v5;
  *(v1 + 490) = *v3;
  *(v1 + 312) = *v0;
  *(v1 + 328) = *(v0 + 16);
  v12 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C728E2E8()
{
  v81 = v0;
  if (qword_1EC213F88 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC219F30;
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v2 = v1;
  *(v0 + 336) = PerformanceMeasure.init(name:log:)();
  sub_1C754F2CC();
  if ([*(v0 + 320) count] < 1)
  {
    if (qword_1EC213F90 != -1)
    {
      OUTLINED_FUNCTION_0_123(&qword_1EC213F90);
    }

    v25 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v25, qword_1EC219F38);
    v26 = sub_1C754FEEC();
    v27 = sub_1C755119C();
    if (os_log_type_enabled(v26, v27))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_57_22(&dword_1C6F5C000, v28, v29, "No suggestions to alchemize");
      OUTLINED_FUNCTION_10_1();
    }

    sub_1C754F2EC();
    goto LABEL_23;
  }

  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v5 = *(v0 + 489);
  v6 = *(v0 + 304);
  LOBYTE(v79[0]) = *(v0 + 490);
  Spatial3DResourceGenerator.init(with:processInBackground:)(v79, 1, v6);
  v80[0] = v5;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0;
  static AssetGating.EligibilityChecker<>.buildSpatial3DEligibilityChecker(for:suggestionContext:)(v80, v0 + 64, v7, v79);
  sub_1C6FB5FC8(v0 + 64, &unk_1EC219240, &qword_1C756A850);
  *(v0 + 344) = v79[1];
  v8 = [v4 librarySpecificFetchOptions];
  *(v0 + 352) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C755BAA0;
  *(v9 + 32) = sub_1C755068C();
  *(v9 + 40) = v10;
  *(v9 + 48) = sub_1C755068C();
  *(v9 + 56) = v11;
  *(v9 + 64) = sub_1C755068C();
  *(v9 + 72) = v12;
  sub_1C6FCA0EC(v9, v8);
  v13 = [objc_opt_self() fetchKeyAssetBySuggestionUUIDForSuggestions:v3 options:v8];
  if (!v13)
  {
LABEL_19:

    if (qword_1EC213F90 == -1)
    {
LABEL_20:
      v31 = *(v0 + 320);
      v30 = *(v0 + 328);
      v32 = *(v0 + 312);
      v33 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v33, qword_1EC219F38);
      v34 = v32;
      v35 = v31;
      v36 = v30;
      v37 = sub_1C754FEEC();
      v38 = sub_1C755119C();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = *(v0 + 320);
        v40 = OUTLINED_FUNCTION_41_0();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        *(v40 + 4) = v39;
        *v41 = v3;
        v42 = v39;
        _os_log_impl(&dword_1C6F5C000, v37, v38, "No key assets found for suggestions: %@", v40, 0xCu);
        sub_1C6FB5FC8(v41, &qword_1EC215190, &qword_1C755C730);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_79();
      }

      sub_1C754F2EC();
      sub_1C7292A5C(*(v0 + 304));

LABEL_23:
      sub_1C6F85170();

      goto LABEL_24;
    }

LABEL_36:
    OUTLINED_FUNCTION_0_123(&qword_1EC213F90);
    goto LABEL_20;
  }

  v14 = v13;
  sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
  v15 = sub_1C75504AC();
  *(v0 + 360) = v15;

  if (!*(v15 + 16))
  {

    goto LABEL_19;
  }

  *(v0 + 200) = MEMORY[0x1E69E7CC8];
  sub_1C728D994(v15, (v0 + 16));
  v17 = *(v0 + 16);
  v16 = *(v0 + 24);
  *(v0 + 368) = v17;
  *(v0 + 376) = v16;
  v3 = *(v0 + 32);
  v8 = *(v0 + 40);
  v18 = *(v0 + 48);
  v19 = *(v0 + 56);
  *(v0 + 384) = v3;
  *(v0 + 392) = 0;
  *(v0 + 400) = 0;
  *(v0 + 408) = 0;
  sub_1C75504FC();
  v20 = v18;
  v21 = v8;
  if (!v18)
  {
    v22 = v8;
    while (1)
    {
      v21 = (v22 + 1);
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v21 >= ((v3 + 64) >> 6))
      {
        v54 = OUTLINED_FUNCTION_66_2();
        sub_1C6F61E88(v54);

        if (qword_1EC213F90 == -1)
        {
          goto LABEL_31;
        }

        goto LABEL_38;
      }

      v20 = *(v16 + 8 * v21);
      ++v22;
      if (v20)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_11:
  *(v0 + 416) = v20;
  *(v0 + 424) = v21;
  v23 = *(*(v17 + 56) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
  *(v0 + 432) = v23;
  *(v0 + 440) = v19 + 1;
  if (__OFADD__(v19, 1))
  {
    __break(1u);
LABEL_38:
    OUTLINED_FUNCTION_0_123(&qword_1EC213F90);
LABEL_31:
    v55 = sub_1C754FF1C();
    v56 = __swift_project_value_buffer(v55, qword_1EC219F38);
    sub_1C75504FC();
    v57 = sub_1C754FEEC();
    v58 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_21_0(v58))
    {
      v60 = *(v0 + 392);
      v59 = *(v0 + 400);
      v61 = *(v0 + 360);
      v62 = swift_slowAlloc();
      v63 = OUTLINED_FUNCTION_20_1();
      v79[0] = v63;
      *v62 = 134218754;
      *(v62 + 4) = v59;
      *(v62 + 12) = 2048;
      v64 = *(v61 + 16);

      *(v62 + 14) = v64;

      *(v62 + 22) = 2080;
      OUTLINED_FUNCTION_33_27();
      v65 = *(v0 + 200);
      sub_1C70E2254();
      sub_1C75504FC();
      sub_1C75504BC();
      OUTLINED_FUNCTION_59();

      OUTLINED_FUNCTION_58_0(v66, v67, v68, v69, v70, v71, v72, v73);
      OUTLINED_FUNCTION_80();
      *(v62 + 24) = v65;
      *(v62 + 32) = 2048;
      *(v62 + 34) = v60;
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v74, v75, v76, v77, v78, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1(v63);
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_23_3();
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    sub_1C754F2EC();
    OUTLINED_FUNCTION_44_23();

    sub_1C6F85170();

LABEL_24:
    OUTLINED_FUNCTION_31_29();

    OUTLINED_FUNCTION_0_89();
    OUTLINED_FUNCTION_12_1();

    __asm { BRAA            X2, X16 }
  }

  v24 = v23;
  sub_1C754F2DC();
  *(v0 + 448) = 0;
  type metadata accessor for Spatial3DAssetResourceUtils();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 456) = v45;
  *v45 = v46;
  OUTLINED_FUNCTION_2_84(v45);
  OUTLINED_FUNCTION_22_44();
  OUTLINED_FUNCTION_12_1();

  return static Spatial3DAssetResourceUtils.requestSpatial3DImageURL(for:with:statusHandler:)(v47, v48, v49, v50, v51);
}

uint64_t sub_1C728EB44()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C728EC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_42_25();
  v21 = *(v19 + 256);
  v22 = sub_1C754DD2C();
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) != 1)
  {
    if (qword_1EC213F90 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_61;
  }

  v23 = *(v19 + 344);
  v24 = MEMORY[0x1E69E7CD0];
  *(v19 + 208) = MEMORY[0x1E69E7CD0];
  v25 = *(v23 + 16);
  if (v25)
  {
    sub_1C75504FC();
    v26 = 32;
    do
    {
      v27 = *(v19 + 432);
      sub_1C6FB5E28(*(v19 + 344) + v26, v19 + 104);
      v28 = *(v19 + 128);
      v18 = *(v19 + 136);
      __swift_project_boxed_opaque_existential_1((v19 + 104), v28);
      v29 = (*(v18 + 32))(v27, v28, v18);
      sub_1C7397F54(v29);
      __swift_destroy_boxed_opaque_existential_1((v19 + 104));
      v26 += 40;
      --v25;
    }

    while (v25);

    v24 = *(v19 + 208);
  }

  if (*(v24 + 16))
  {
    v18 = *(v19 + 448);
    v30 = sub_1C75504FC();
    sub_1C7205098(v30, (v19 + 200));
    if (qword_1EC213F90 != -1)
    {
      OUTLINED_FUNCTION_0_123(&qword_1EC213F90);
    }

    v31 = *(v19 + 432);
    v32 = *(v19 + 304);
    v33 = *(v19 + 288);
    v34 = sub_1C754FF1C();
    __swift_project_value_buffer(v34, qword_1EC219F38);
    sub_1C7292AB8(v32, v33);
    v20 = v31;
    sub_1C75504FC();
    v35 = sub_1C754FEEC();
    v36 = sub_1C75511BC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = 0x7055656E6FLL;
      v38 = *(v19 + 288);
      v39 = OUTLINED_FUNCTION_20_1();
      v40 = swift_slowAlloc();
      *(v19 + 216) = v40;
      *v39 = 136315650;
      v41 = 0xE500000000000000;
      v20 = v40;
      a12 = v18;
      switch(*v38)
      {
        case 1:
          v37 = 0x657061706C6C6177;
          v41 = 0xEF72656B63695072;
          break;
        case 2:
          OUTLINED_FUNCTION_50_22();
          v41 = 0xE900000000000031;
          break;
        case 3:
          OUTLINED_FUNCTION_50_22();
          v41 = 0xE900000000000032;
          break;
        default:
          break;
      }

      v89 = *(v19 + 432);
      a11 = v89;
      sub_1C7292A5C(*(v19 + 288));
      v90 = sub_1C6F765A4(v37, v41, (v19 + 216));

      *(v39 + 4) = v90;
      *(v39 + 12) = 2080;
      v91 = [v89 localIdentifier];
      v92 = sub_1C755068C();
      v94 = v93;

      v95 = sub_1C6F765A4(v92, v94, (v19 + 216));

      *(v39 + 14) = v95;
      *(v39 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2192E0, &qword_1C7577760);
      sub_1C7292B1C();
      v96 = sub_1C7550F9C();
      v98 = v97;

      v99 = sub_1C6F765A4(v96, v98, (v19 + 216));

      *(v39 + 24) = v99;
      _os_log_impl(&dword_1C6F5C000, v35, v36, "Not generating Spatial3D %s resource for asset %s because %s", v39, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_10_1();
    }

    else
    {
      v70 = *(v19 + 432);
      v71 = *(v19 + 288);
      swift_bridgeObjectRelease_n();

      sub_1C7292A5C(v71);
    }

    while (1)
    {
      sub_1C6FB5FC8(*(v19 + 256), &qword_1EC215BD8, &unk_1C7564890);
      if (((*(v19 + 416) - 1) & *(v19 + 416)) == 0)
      {
        v100 = *(v19 + 424);
        while (1)
        {
          v101 = v100 + 1;
          if (__OFADD__(v100, 1))
          {
            __break(1u);
            goto LABEL_60;
          }

          if (v101 >= ((*(v19 + 384) + 64) >> 6))
          {
            break;
          }

          ++v100;
          if (*(*(v19 + 376) + 8 * v101))
          {
            goto LABEL_42;
          }
        }

        OUTLINED_FUNCTION_61_14();
        if (qword_1EC213F90 != -1)
        {
          goto LABEL_63;
        }

        goto LABEL_52;
      }

LABEL_42:
      OUTLINED_FUNCTION_27_33();
      *(v19 + 432) = v102;
      *(v19 + 440) = v103;
      if (!v104)
      {
        break;
      }

LABEL_60:
      __break(1u);
LABEL_61:
      OUTLINED_FUNCTION_0_123(&qword_1EC213F90);
LABEL_13:
      v42 = *(v19 + 432);
      v43 = sub_1C754FF1C();
      __swift_project_value_buffer(v43, qword_1EC219F38);
      v44 = OUTLINED_FUNCTION_66_2();
      sub_1C7292AB8(v44, v45);
      v46 = v42;
      v47 = sub_1C754FEEC();
      v48 = sub_1C75511BC();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = *(v19 + 296);
        v50 = OUTLINED_FUNCTION_23_1();
        *(v19 + 224) = OUTLINED_FUNCTION_49_1();
        *v50 = 136315394;
        v51 = 0xE500000000000000;
        switch(*v49)
        {
          case 1:
            OUTLINED_FUNCTION_56_19();
            v51 = 0xEF72656B63695072;
            break;
          case 2:
            OUTLINED_FUNCTION_7_56();
            v51 = 0xE900000000000031;
            break;
          case 3:
            OUTLINED_FUNCTION_7_56();
            v51 = 0xE900000000000032;
            break;
          default:
            break;
        }

        v83 = *(v19 + 432);
        sub_1C7292A5C(*(v19 + 296));
        v84 = sub_1C6F765A4(0x7055656E6FLL, v51, (v19 + 224));

        *(v50 + 4) = v84;
        *(v50 + 12) = 2080;
        v85 = [v83 localIdentifier];
        v86 = sub_1C755068C();
        v88 = v87;

        v20 = sub_1C6F765A4(v86, v88, (v19 + 224));

        *(v50 + 14) = v20;
        _os_log_impl(&dword_1C6F5C000, v47, v48, "Not generating Spatial3D %s resource for asset %s because a resource already exists", v50, 0x16u);
        OUTLINED_FUNCTION_43_25();
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_109();
      }

      else
      {
        v52 = *(v19 + 296);

        sub_1C7292A5C(v52);
      }

      v18 = *(v19 + 448);
    }

    v105 = OUTLINED_FUNCTION_39_27();
    sub_1C754F2DC();
    *(v19 + 448) = v18;
    if (v18)
    {
      OUTLINED_FUNCTION_30_30();

      OUTLINED_FUNCTION_62_15();
      sub_1C6F85170();

      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v106 + 8))(a12);
      goto LABEL_45;
    }

    type metadata accessor for Spatial3DAssetResourceUtils();
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v19 + 456) = v115;
    *v115 = v116;
    OUTLINED_FUNCTION_2_84(v115);
    OUTLINED_FUNCTION_22_44();
    OUTLINED_FUNCTION_6_68();

    return static Spatial3DAssetResourceUtils.requestSpatial3DImageURL(for:with:statusHandler:)(v117, v118, v119, v120, v121);
  }

  else
  {
    v53 = *(v19 + 400);

    *(v19 + 464) = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
LABEL_63:
      OUTLINED_FUNCTION_0_123(&qword_1EC213F90);
LABEL_52:
      v123 = sub_1C754FF1C();
      v124 = __swift_project_value_buffer(v123, qword_1EC219F38);
      sub_1C75504FC();
      v125 = sub_1C754FEEC();
      v126 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_21_0(v126))
      {
        v128 = *(v19 + 392);
        v127 = *(v19 + 400);
        v129 = *(v19 + 360);
        v130 = swift_slowAlloc();
        a13 = OUTLINED_FUNCTION_20_1();
        *v130 = 134218754;
        *(v130 + 4) = v127;
        *(v130 + 12) = 2048;
        v131 = *(v129 + 16);

        *(v130 + 14) = v131;

        *(v130 + 22) = 2080;
        OUTLINED_FUNCTION_33_27();
        sub_1C70E2254();
        sub_1C75504FC();
        sub_1C75504BC();
        OUTLINED_FUNCTION_59();

        v140 = OUTLINED_FUNCTION_58_0(v132, v133, v134, v135, v136, v137, v138, v139);

        *(v130 + 24) = v140;
        *(v130 + 32) = 2048;
        *(v130 + 34) = v128;
        OUTLINED_FUNCTION_145();
        _os_log_impl(v141, v142, v143, v144, v130, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1(a13);
        OUTLINED_FUNCTION_10_1();
        OUTLINED_FUNCTION_37();
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      sub_1C754F2EC();
      OUTLINED_FUNCTION_44_23();

      sub_1C6F85170();

      if (v18)
      {
LABEL_45:
        OUTLINED_FUNCTION_32_26();

        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_68();

        return v108(v107, v108, v109, v110, v111, v112, v113, v114, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
      }

      else
      {
        OUTLINED_FUNCTION_31_29();

        OUTLINED_FUNCTION_0_89();
        OUTLINED_FUNCTION_6_68();

        return v147(v145, v146, v147, v148, v149, v150, v151, v152, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
      }
    }

    else
    {
      v54 = *(v19 + 432);
      v55 = *(v19 + 304);
      v56 = *(v19 + 272);
      v57 = *(v19 + 280);
      v58 = *(v19 + 264);
      v60 = *(v19 + 240);
      v59 = *(v19 + 248);
      v61 = sub_1C7550D5C();
      OUTLINED_FUNCTION_84();
      __swift_storeEnumTagSinglePayload(v62, v63, v64, v61);
      sub_1C7292AB8(v55, v57);
      v65 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v66 = (v56 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
      v67 = swift_allocObject();
      *(v67 + 16) = 0;
      *(v67 + 24) = 0;
      sub_1C70CB390(v57, v67 + v65);
      *(v67 + v66) = v54;
      sub_1C70A3CFC(v59, v60);
      LODWORD(v57) = __swift_getEnumTagSinglePayload(v60, 1, v61);
      v68 = v54;

      v69 = *(v19 + 240);
      if (v57 == 1)
      {
        sub_1C6FB5FC8(*(v19 + 240), &qword_1EC2158F8, &qword_1C755FF40);
      }

      else
      {
        sub_1C7550D4C();
        OUTLINED_FUNCTION_62_2();
        (*(v72 + 8))(v69, v61);
      }

      v74 = *(v67 + 16);
      v73 = *(v67 + 24);
      swift_unknownObjectRetain();

      if (v74)
      {
        swift_getObjectType();
        v75 = v74;
        sub_1C7550C8C();
        OUTLINED_FUNCTION_45_22();
      }

      else
      {
        v75 = 0;
        v73 = 0;
      }

      sub_1C6FB5FC8(*(v19 + 248), &qword_1EC2158F8, &qword_1C755FF40);
      v76 = swift_allocObject();
      *(v76 + 16) = &unk_1C757E3D8;
      *(v76 + 24) = v67;
      if (v73 | v75)
      {
        *(v19 + 144) = 0;
        *(v19 + 152) = 0;
        *(v19 + 160) = v75;
        *(v19 + 168) = v73;
      }

      *(v19 + 472) = swift_task_create();
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v19 + 480) = v77;
      *v77 = v78;
      v77[1] = sub_1C728F7CC;
      OUTLINED_FUNCTION_6_68();

      return MEMORY[0x1EEE6DA40](v79, v80, v81);
    }
  }
}

uint64_t sub_1C728F7CC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C728F8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_42_25();
  a25 = v29;
  a26 = v30;
  a24 = v27;

  v31 = *(v27 + 408);
  if (*(v27 + 488))
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
LABEL_29:
      __break(1u);
LABEL_30:
      OUTLINED_FUNCTION_0_123(&qword_1EC213F90);
      goto LABEL_20;
    }

    ++v31;
  }

  else
  {
    v32 = *(v27 + 392);
  }

  sub_1C6FB5FC8(*(v27 + 256), &qword_1EC215BD8, &unk_1C7564890);
  v26 = *(v27 + 448);
  v33 = *(v27 + 416);
  v34 = *(v27 + 424);
  *(v27 + 400) = *(v27 + 464);
  *(v27 + 408) = v31;
  *(v27 + 392) = v32;
  if (((v33 - 1) & v33) != 0)
  {
LABEL_10:
    OUTLINED_FUNCTION_27_33();
    *(v27 + 432) = v37;
    *(v27 + 440) = v38;
    if (!v39)
    {
      v40 = OUTLINED_FUNCTION_39_27();
      sub_1C754F2DC();
      *(v27 + 448) = v26;
      if (!v26)
      {
        type metadata accessor for Spatial3DAssetResourceUtils();
        swift_task_alloc();
        OUTLINED_FUNCTION_48();
        *(v27 + 456) = v51;
        *v51 = v52;
        OUTLINED_FUNCTION_2_84(v51);
        OUTLINED_FUNCTION_22_44();
        OUTLINED_FUNCTION_6_68();

        return static Spatial3DAssetResourceUtils.requestSpatial3DImageURL(for:with:statusHandler:)(v53, v54, v55, v56, v57);
      }

      OUTLINED_FUNCTION_30_30();

      OUTLINED_FUNCTION_62_15();
      sub_1C6F85170();

      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v41 + 8))(a12);
LABEL_13:
      OUTLINED_FUNCTION_32_26();

      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_68();

      return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v35 = v34;
  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v36 >= ((*(v27 + 384) + 64) >> 6))
    {
      break;
    }

    ++v35;
    if (*(*(v27 + 376) + 8 * v36))
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_61_14();
  if (qword_1EC213F90 != -1)
  {
    goto LABEL_30;
  }

LABEL_20:
  v59 = sub_1C754FF1C();
  v60 = __swift_project_value_buffer(v59, qword_1EC219F38);
  sub_1C75504FC();
  v61 = sub_1C754FEEC();
  v62 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_21_0(v62))
  {
    v64 = *(v27 + 392);
    v63 = *(v27 + 400);
    v65 = *(v27 + 360);
    v66 = swift_slowAlloc();
    v67 = OUTLINED_FUNCTION_20_1();
    a13 = v67;
    *v66 = 134218754;
    *(v66 + 4) = v63;
    *(v66 + 12) = 2048;
    v68 = *(v65 + 16);

    *(v66 + 14) = v68;

    *(v66 + 22) = 2080;
    OUTLINED_FUNCTION_33_27();
    sub_1C70E2254();
    sub_1C75504FC();
    v69 = sub_1C75504BC();
    v71 = v70;

    v72 = sub_1C6F765A4(v69, v71, &a13);

    *(v66 + 24) = v72;
    *(v66 + 32) = 2048;
    *(v66 + 34) = v64;
    OUTLINED_FUNCTION_145();
    _os_log_impl(v73, v74, v75, v76, v66, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1(v67);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_37();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  sub_1C754F2EC();
  OUTLINED_FUNCTION_44_23();

  sub_1C6F85170();

  if (v26)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_31_29();

  OUTLINED_FUNCTION_0_89();
  OUTLINED_FUNCTION_6_68();

  return v79(v77, v78, v79, v80, v81, v82, v83, v84, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C728FCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  type metadata accessor for Spatial3DResourceGenerator(0);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C728FD9C, 0, 0);
}

uint64_t sub_1C728FD9C()
{
  v23 = v0;
  if (qword_1EC213F90 != -1)
  {
    OUTLINED_FUNCTION_0_123(&qword_1EC213F90);
  }

  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[7];
  v4 = v0[8];
  v5 = sub_1C754FF1C();
  v0[13] = __swift_project_value_buffer(v5, qword_1EC219F38);
  sub_1C7292AB8(v3, v2);
  sub_1C7292AB8(v3, v1);
  v6 = v4;
  v7 = sub_1C754FEEC();
  v8 = sub_1C75511BC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  if (v9)
  {
    v11 = OUTLINED_FUNCTION_20_1();
    v22 = OUTLINED_FUNCTION_49_1();
    *v11 = 134218498;
    v12 = *&aT_0[8 * *v10];
    v13 = v0[11];
    sub_1C7292A5C(v0[12]);
    *(v11 + 4) = v12;
    *(v11 + 12) = 2080;
    v14 = 0xE500000000000000;
    switch(*v13)
    {
      case 1:
        v14 = 0xEF72656B63695072;
        OUTLINED_FUNCTION_56_19();
        break;
      case 2:
        OUTLINED_FUNCTION_7_56();
        v14 = 0xE900000000000031;
        break;
      case 3:
        OUTLINED_FUNCTION_7_56();
        v14 = 0xE900000000000032;
        break;
      default:
        break;
    }

    v16 = v0[8];
    sub_1C7292A5C(v0[11]);
    v17 = sub_1C6F765A4(0x7055656E6FLL, v14, &v22);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2080;
    v18 = [v16 localIdentifier];
    sub_1C755068C();
    OUTLINED_FUNCTION_59();

    sub_1C6F765A4(v17, v16, &v22);
    OUTLINED_FUNCTION_80();
    *(v11 + 24) = v18;
    _os_log_impl(&dword_1C6F5C000, v7, v8, "Generating Spatial3D resource with type %ld (%s) for asset %s", v11, 0x20u);
    OUTLINED_FUNCTION_43_25();
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_109();
  }

  else
  {
    v15 = v0[11];
    sub_1C7292A5C(v0[12]);

    sub_1C7292A5C(v15);
  }

  v19 = swift_task_alloc();
  v0[14] = v19;
  *v19 = v0;
  v19[1] = sub_1C729005C;
  v20 = v0[8];

  return Spatial3DResourceGenerator.generateSpatial3DResourceInBackground(for:)(v20);
}

uint64_t sub_1C729005C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {
    v7 = sub_1C72901E4;
  }

  else
  {
    v7 = sub_1C729015C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C729015C()
{
  OUTLINED_FUNCTION_49_0();
  **(v0 + 48) = 1;

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C72901E4()
{
  v57 = v0;
  v1 = *(v0 + 120);
  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    if (v5 == 2 && v3 == 2 && v4 == 0)
    {
      v34 = *(v0 + 80);
      v35 = *(v0 + 56);
      v36 = *(v0 + 64);

      sub_1C7292AB8(v35, v34);
      v37 = v36;
      v38 = sub_1C754FEEC();
      sub_1C75511BC();

      v39 = OUTLINED_FUNCTION_200();
      v40 = *(v0 + 80);
      if (v39)
      {
        v41 = *(v0 + 64);
        v42 = *(v0 + 48);
        v43 = OUTLINED_FUNCTION_23_1();
        v56 = OUTLINED_FUNCTION_49_1();
        *v43 = 136315394;
        *(v0 + 34) = *v40;
        v44 = sub_1C75506EC();
        v46 = v45;
        sub_1C7292A5C(v40);
        v47 = sub_1C6F765A4(v44, v46, &v56);

        *(v43 + 4) = v47;
        OUTLINED_FUNCTION_40_29();
        v48 = [v41 localIdentifier];
        sub_1C755068C();
        OUTLINED_FUNCTION_59();

        sub_1C6F765A4(v44, v41, &v56);
        OUTLINED_FUNCTION_80();
        *(v43 + 14) = v48;
        OUTLINED_FUNCTION_8_1();
        _os_log_impl(v49, v50, v51, v52, v53, 0x16u);
        OUTLINED_FUNCTION_43_25();
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_23_3();

        *v42 = 0;
      }

      else
      {
        v54 = *(v0 + 48);

        sub_1C7292A5C(v40);
        *v54 = 0;
      }

      goto LABEL_14;
    }

    sub_1C6FE0E78(v3, v4, v5);
  }

  v8 = *(v0 + 120);
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v11 = *(v0 + 56);

  sub_1C7292AB8(v11, v9);
  v12 = v10;
  v13 = v8;
  v14 = sub_1C754FEEC();
  v15 = sub_1C755119C();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 120);
  v18 = *(v0 + 72);
  if (v16)
  {
    v55 = *(v0 + 64);
    v19 = OUTLINED_FUNCTION_20_1();
    v20 = swift_slowAlloc();
    v56 = OUTLINED_FUNCTION_49_1();
    *v19 = 136315650;
    *(v0 + 33) = *v18;
    v21 = sub_1C75506EC();
    v23 = v22;
    sub_1C7292A5C(v18);
    v24 = sub_1C6F765A4(v21, v23, &v56);

    *(v19 + 4) = v24;
    OUTLINED_FUNCTION_40_29();
    v25 = [v55 localIdentifier];
    v26 = sub_1C755068C();
    v28 = v27;

    v29 = sub_1C6F765A4(v26, v28, &v56);

    *(v19 + 14) = v29;
    *(v19 + 22) = 2112;
    v30 = v17;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 24) = v31;
    *v20 = v31;
    _os_log_impl(&dword_1C6F5C000, v14, v15, "Error generating Spatial3D resource with type %s for asset %s: %@", v19, 0x20u);
    sub_1C6FB5FC8(v20, &qword_1EC215190, &qword_1C755C730);
    OUTLINED_FUNCTION_79();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_23_3();
  }

  else
  {

    sub_1C7292A5C(v18);
  }

  **(v0 + 48) = 0;
LABEL_14:

  OUTLINED_FUNCTION_43();

  return v32();
}

uint64_t FeaturedPhotosSpatial3DGeneration.runPostgating(with:progressReporter:)()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  *(v1 + 72) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  OUTLINED_FUNCTION_76(v5);
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  v6 = type metadata accessor for Spatial3DResourceGenerator(0);
  OUTLINED_FUNCTION_18(v6);
  *(v1 + 96) = v7;
  *(v1 + 104) = *(v8 + 64);
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 232) = *v3;
  *(v1 + 128) = *v0;
  *(v1 + 144) = *(v0 + 16);
  v9 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C7290744(uint64_t a1)
{
  v66 = v1;
  v2 = 0;
  sub_1C754F2CC();
  if ([*(v1 + 136) count] < 1)
  {
    if (qword_1EC213F90 == -1)
    {
LABEL_12:
      v31 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v31, qword_1EC219F38);
      v32 = sub_1C754FEEC();
      v33 = sub_1C755119C();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = OUTLINED_FUNCTION_127();
        *v34 = 0;
        _os_log_impl(&dword_1C6F5C000, v32, v33, "No suggestions to postgate", v34, 2u);
        OUTLINED_FUNCTION_37();
      }

      sub_1C754F2EC();
      if (v2)
      {

        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_329();

        __asm { BRAA            X1, X16 }
      }

      goto LABEL_21;
    }

LABEL_36:
    OUTLINED_FUNCTION_0_123(&qword_1EC213F90);
    goto LABEL_12;
  }

  v5 = *(v1 + 136);
  v6 = [*(v1 + 128) librarySpecificFetchOptions];
  *(v1 + 152) = v6;
  [v6 setIncludeGuestAssets_];
  v7 = [objc_opt_self() fetchKeyAssetBySuggestionUUIDForSuggestions:v5 options:v6];
  if (!v7)
  {
    if (qword_1EC213F90 != -1)
    {
      OUTLINED_FUNCTION_0_123(&qword_1EC213F90);
    }

    v35 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v35, qword_1EC219F38);
    v36 = sub_1C754FEEC();
    v37 = sub_1C755119C();
    if (os_log_type_enabled(v36, v37))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_57_22(&dword_1C6F5C000, v38, v39, "Unable to fetch assets");
      OUTLINED_FUNCTION_10_1();
    }

    sub_1C754F2EC();
LABEL_21:

    OUTLINED_FUNCTION_0_89();
    OUTLINED_FUNCTION_329();

    __asm { BRAA            X2, X16 }
  }

  v8 = v7;
  v9 = *(v1 + 136);
  v10 = *(v1 + 232);
  v2 = *(v1 + 120);
  sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
  *(v1 + 160) = sub_1C75504AC();

  v65[0] = v10;
  Spatial3DResourceGenerator.init(with:processInBackground:)(v65, 1, v2);
  v11 = swift_allocObject();
  *(v1 + 168) = v11;
  *(v11 + 16) = MEMORY[0x1E69E7CD0];
  v12 = [v9 count];
  *(v1 + 176) = v12;
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (!v12)
  {

    sub_1C754F2EC();
    v42 = *(v1 + 152);
    sub_1C7292A5C(*(v1 + 120));

    swift_beginAccess();
    sub_1C75504FC();

    goto LABEL_21;
  }

  *(v1 + 184) = 1;
  v64 = *(v1 + 168);
  v13 = *(v1 + 136);
  v60 = *(v1 + 144);
  v61 = *(v1 + 160);
  v63 = *(v1 + 232);
  v14 = *(v1 + 120);
  v15 = *(v1 + 112);
  v58 = *(v1 + 104);
  v59 = *(v1 + 128);
  v56 = *(v1 + 88);
  v57 = *(v1 + 96);
  v62 = *(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90, &qword_1C7564BC0);
  v16 = swift_allocBox();
  v18 = v17;
  *(v1 + 192) = v16;
  [v13 count];
  sub_1C754F2AC();
  v19 = sub_1C754F2FC();
  *(v1 + 200) = v19;
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v19);
  v20 = sub_1C7550D5C();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  sub_1C7292AB8(v14, v15);
  v24 = (*(v57 + 80) + 80) & ~*(v57 + 80);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v16;
  v25[5] = v59;
  v25[6] = v13;
  v25[7] = v60;
  v25[8] = 0;
  v25[9] = v61;
  sub_1C70CB390(v15, v25 + v24);
  *(v25 + v24 + v58) = v63;
  v26 = v20;
  *(v25 + ((v24 + v58) & 0xFFFFFFFFFFFFFFF8) + 8) = v64;
  sub_1C70A3CFC(v56, v62);
  LODWORD(v20) = __swift_getEnumTagSinglePayload(v62, 1, v20);

  v27 = v59;
  v28 = v13;
  v29 = v60;
  sub_1C75504FC();

  v30 = *(v1 + 80);
  if (v20 == 1)
  {
    sub_1C6FB5FC8(*(v1 + 80), &qword_1EC2158F8, &qword_1C755FF40);
  }

  else
  {
    sub_1C7550D4C();
    OUTLINED_FUNCTION_62_2();
    (*(v43 + 8))(v30, v26);
  }

  v45 = v25[2];
  v44 = v25[3];
  swift_unknownObjectRetain();

  if (v45)
  {
    swift_getObjectType();
    v46 = v45;
    sub_1C7550C8C();
    OUTLINED_FUNCTION_45_22();
  }

  else
  {
    v46 = 0;
    v44 = 0;
  }

  v47 = sub_1C6FB5FC8(*(v1 + 88), &qword_1EC2158F8, &qword_1C755FF40);
  if (v44 | v46)
  {
    v48 = v1 + 16;
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    *(v1 + 32) = v46;
    *(v1 + 40) = v44;
  }

  else
  {
    v48 = 0;
  }

  *(v1 + 208) = OUTLINED_FUNCTION_18_38(v47, v48);
  v49 = swift_task_alloc();
  *(v1 + 216) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  *v49 = v1;
  OUTLINED_FUNCTION_17_53();
  OUTLINED_FUNCTION_53_25();
  OUTLINED_FUNCTION_329();

  return MEMORY[0x1EEE6DA10](v50, v51, v52, v53, v54);
}

uint64_t sub_1C7290E04()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 224) = v0;

  if (v0)
  {

    v7 = sub_1C7291398;
  }

  else
  {
    v7 = sub_1C7290F18;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C7290F18()
{

  v6 = *(v0 + 184);
  if (v6 == *(v0 + 176))
  {
    v7 = *(v0 + 224);

    sub_1C754F2EC();
    if (v7)
    {
      v8 = *(v0 + 152);
      sub_1C7292A5C(*(v0 + 120));

      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_329();

      __asm { BRAA            X1, X16 }
    }

    v33 = *(v0 + 152);
    sub_1C7292A5C(*(v0 + 120));

    swift_beginAccess();
    sub_1C75504FC();

    OUTLINED_FUNCTION_329();

    __asm { BRAA            X2, X16 }
  }

  *(v0 + 184) = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    v48 = *(v0 + 168);
    v11 = *(v0 + 136);
    v44 = *(v0 + 144);
    v45 = *(v0 + 160);
    v47 = *(v0 + 232);
    v12 = *(v0 + 120);
    v14 = *(v0 + 104);
    v13 = *(v0 + 112);
    v42 = *(v0 + 96);
    v43 = *(v0 + 128);
    v40 = *(v0 + 88);
    v46 = *(v0 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90, &qword_1C7564BC0);
    v41 = swift_allocBox();
    v16 = v15;
    *(v0 + 192) = v41;
    [v11 count];
    sub_1C754F2AC();
    v17 = sub_1C754F2FC();
    *(v0 + 200) = v17;
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
    v18 = sub_1C7550D5C();
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
    sub_1C7292AB8(v12, v13);
    v22 = (*(v42 + 80) + 80) & ~*(v42 + 80);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v41;
    v23[5] = v43;
    v23[6] = v11;
    v23[7] = v44;
    v23[8] = v6;
    v23[9] = v45;
    sub_1C70CB390(v13, v23 + v22);
    *(v23 + v22 + v14) = v47;
    v24 = v18;
    *(v23 + ((v22 + v14) & 0xFFFFFFFFFFFFFFF8) + 8) = v48;
    sub_1C70A3CFC(v40, v46);
    LODWORD(v18) = __swift_getEnumTagSinglePayload(v46, 1, v18);

    v25 = v43;
    v26 = v11;
    v27 = v44;
    sub_1C75504FC();

    v28 = *(v0 + 80);
    if (v18 == 1)
    {
      sub_1C6FB5FC8(*(v0 + 80), &qword_1EC2158F8, &qword_1C755FF40);
    }

    else
    {
      sub_1C7550D4C();
      OUTLINED_FUNCTION_62_2();
      (*(v29 + 8))(v28, v24);
    }

    v31 = v23[2];
    v30 = v23[3];
    swift_unknownObjectRetain();

    if (v31)
    {
      swift_getObjectType();
      v32 = v31;
      sub_1C7550C8C();
      OUTLINED_FUNCTION_45_22();
    }

    else
    {
      v32 = 0;
      v30 = 0;
    }

    v36 = sub_1C6FB5FC8(*(v0 + 88), &qword_1EC2158F8, &qword_1C755FF40);
    if (v30 | v32)
    {
      v37 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v32;
      *(v0 + 40) = v30;
    }

    else
    {
      v37 = 0;
    }

    *(v0 + 208) = OUTLINED_FUNCTION_18_38(v36, v37);
    v38 = swift_task_alloc();
    *(v0 + 216) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
    *v38 = v0;
    OUTLINED_FUNCTION_17_53();
    OUTLINED_FUNCTION_53_25();
    OUTLINED_FUNCTION_329();
  }

  return MEMORY[0x1EEE6DA10](v1, v2, v3, v4, v5);
}

uint64_t sub_1C7291398()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 120);
  v3 = *(v0 + 72);

  sub_1C7292A5C(v2);

  OUTLINED_FUNCTION_62_2();
  (*(v4 + 8))(v3, v1);

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1C7291480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v14;
  *(v8 + 74) = v13;
  *(v8 + 96) = v12;
  *(v8 + 80) = a6;
  *(v8 + 88) = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90, &qword_1C7564BC0);
  *(v8 + 120) = swift_task_alloc();
  v9 = sub_1C754F2FC();
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C72915A4, 0, 0);
}

uint64_t sub_1C72915A4()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  swift_beginAccess();
  sub_1C705544C(v1, v3);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v2);
  if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
  {
    v7 = *(v0 + 120);
    if (__swift_getEnumTagSinglePayload(v7, 1, *(v0 + 128)) != 1)
    {
      sub_1C6FB5FC8(v7, &unk_1EC218C90, &qword_1C7564BC0);
    }

    return sub_1C7551AAC();
  }

  else
  {
    (*(*(v0 + 136) + 32))(*(v0 + 144), *(v0 + 120), *(v0 + 128));
    sub_1C754F2CC();
    v9 = [*(v0 + 80) objectAtIndexedSubscript_];
    *(v0 + 160) = v9;
    v10 = v9;
    v11 = sub_1C6FCA214(v10);
    if (v12 && (v13 = sub_1C6FE376C(v11, v12, *(v0 + 96)), *(v0 + 168) = v13, , v13))
    {
      v14 = [v13 localIdentifier];
      v15 = sub_1C755068C();
      v17 = v16;

      *(v0 + 176) = v15;
      *(v0 + 184) = v17;
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v0 + 192) = v18;
      *v18 = v19;
      v18[1] = sub_1C7291864;
      v20 = *(v0 + 104);

      return static Spatial3DCuration.Postgating.persistDisparityScore(for:with:)(v0 + 64, v10, v20);
    }

    else
    {
      v22 = *(v0 + 136);
      v21 = *(v0 + 144);
      v23 = *(v0 + 128);

      (*(v22 + 8))(v21, v23);
      OUTLINED_FUNCTION_60_16();

      OUTLINED_FUNCTION_25();

      return v24();
    }
  }
}

uint64_t sub_1C7291864()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (v0)
  {

    v7 = sub_1C7291DB8;
  }

  else
  {
    v7 = sub_1C729196C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C729196C()
{
  v53 = v0;
  if (*(v0 + 73))
  {
    if (qword_1EC213F90 != -1)
    {
      OUTLINED_FUNCTION_0_123(&qword_1EC213F90);
    }

    v1 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v1, qword_1EC219F38);
    sub_1C75504FC();
    v2 = sub_1C754FEEC();
    sub_1C75511BC();

    v3 = OUTLINED_FUNCTION_200();
    v4 = *(v0 + 184);
    if (v3)
    {
      v5 = *(v0 + 176);
      v6 = OUTLINED_FUNCTION_41_0();
      v7 = OUTLINED_FUNCTION_20_1();
      v50 = v7;
      *v6 = 136315138;
      v8 = sub_1C6F765A4(v5, v4, &v50);

      *(v6 + 4) = v8;
      OUTLINED_FUNCTION_145();
      _os_log_impl(v9, v10, v11, v12, v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_10_1();
    }

    else
    {
    }

    v31 = *(v0 + 200);
  }

  else
  {
    v13 = *(v0 + 64);
    v14 = *(v0 + 72);
    if (qword_1EC213F90 != -1)
    {
      OUTLINED_FUNCTION_0_123(&qword_1EC213F90);
    }

    v15 = sub_1C754FF1C();
    __swift_project_value_buffer(v15, qword_1EC219F38);
    sub_1C75504FC();
    v16 = sub_1C754FEEC();
    v17 = sub_1C75511BC();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = *(v0 + 176);
      v18 = *(v0 + 184);
      v49 = *(v0 + 74);
      v20 = OUTLINED_FUNCTION_20_1();
      v52[0] = OUTLINED_FUNCTION_49_1();
      *v20 = 136315650;
      *(v20 + 4) = sub_1C6F765A4(v19, v18, v52);
      *(v20 + 12) = 2080;
      v50 = v13;
      LOBYTE(v51) = v14 & 1;
      v21 = Spatial3DCuration.Postgating.Result.FailureReason.description.getter();
      v23 = sub_1C6F765A4(v21, v22, v52);

      *(v20 + 14) = v23;
      *(v20 + 22) = 2048;
      *(v20 + 24) = *&aT_0[8 * v49];
      _os_log_impl(&dword_1C6F5C000, v16, v17, "Asset %s failed gating for reason: %s. Removing %ld resource...", v20, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_10_1();
    }

    v24 = *&aT_0[8 * *(v0 + 74)];
    v25 = *(v0 + 200);
    v26 = *(v0 + 168);
    type metadata accessor for Spatial3DAssetResourceUtils();
    static Spatial3DAssetResourceUtils.clearSpatial3DScene(for:with:)(v26, v24);
    if (v25)
    {
      v28 = *(v0 + 160);
      v27 = *(v0 + 168);

      v29 = OUTLINED_FUNCTION_66_2();
      v30(v29);
LABEL_18:
      OUTLINED_FUNCTION_60_16();

      OUTLINED_FUNCTION_6_0();
      goto LABEL_20;
    }

    sub_1C75504FC();
    v32 = sub_1C754FEEC();
    sub_1C75511BC();

    if (OUTLINED_FUNCTION_200())
    {
      v33 = *(v0 + 74);
      v34 = OUTLINED_FUNCTION_23_1();
      v35 = OUTLINED_FUNCTION_20_1();
      v50 = v35;
      v36 = *&aT_0[8 * v33];
      *v34 = 134218242;
      *(v34 + 4) = v36;
      OUTLINED_FUNCTION_40_29();
      *(v34 + 14) = sub_1C6F765A4(v37, v38, &v50);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v39, v40, v41, v42, v43, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_23_3();
    }

    v45 = *(v0 + 176);
    v44 = *(v0 + 184);
    swift_beginAccess();
    sub_1C70F082C(&v50, v45, v44);
    swift_endAccess();

    v31 = 0;
  }

  sub_1C754F2EC();
  v46 = *(v0 + 168);

  if (v31)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_60_16();

  OUTLINED_FUNCTION_25();
LABEL_20:

  return v47();
}

uint64_t sub_1C7291DB8()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 168);

  v2 = OUTLINED_FUNCTION_66_2();
  v3(v2);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t FeaturedPhotosSpatial3DGeneration.removeExpiredResources(with:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8, &unk_1C7564890);
  OUTLINED_FUNCTION_76(v4);
  *(v1 + 32) = swift_task_alloc();
  *(v1 + 40) = *v0;
  *(v1 + 56) = *(v0 + 16);
  v5 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C7291EEC(uint64_t a1)
{
  v67 = v1;
  sub_1C754F2CC();
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v66 = MEMORY[0x1E69E7CC0];
    sub_1C716EA70(0, v4, 0);
    v5 = v66;
    v6 = (v3 + 32);
    do
    {
      v7 = *v6++;
      v8 = *&aT_0[8 * v7];
      v66 = v5;
      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1C716EA70(v9 > 1, v10 + 1, 1);
        v5 = v66;
      }

      *(v5 + 16) = v10 + 1;
      *(v5 + 8 * v10 + 32) = v8;
      --v4;
    }

    while (v4);
  }

  *(v1 + 64) = v5;
  v11 = *(v1 + 56);
  v12 = [*(v1 + 40) librarySpecificFetchOptions];
  *(v1 + 72) = v12;
  v13 = [objc_opt_self() fetchKeyAssetForEachSuggestion:v11 options:v12];
  *(v1 + 80) = v13;
  if (!v13)
  {

    if (qword_1EC213F90 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

  v14 = v13;
  if (qword_1EC213F90 != -1)
  {
LABEL_35:
    OUTLINED_FUNCTION_0_123(&qword_1EC213F90);
  }

  v16 = *(v1 + 48);
  v15 = *(v1 + 56);
  v17 = *(v1 + 40);
  v18 = sub_1C754FF1C();
  *(v1 + 88) = OUTLINED_FUNCTION_23_2(v18, qword_1EC219F38);
  v19 = v17;
  v20 = v16;
  v21 = v15;
  v22 = sub_1C754FEEC();
  v12 = sub_1C75511BC();
  v23 = os_log_type_enabled(v22, v12);
  v25 = *(v1 + 48);
  v24 = *(v1 + 56);
  v26 = &selRef_clsSceneClassifications;
  if (v23)
  {
    v27 = *(v1 + 40);
    v28 = OUTLINED_FUNCTION_41_0();
    *v28 = 134217984;
    *(v28 + 4) = [v24 count];

    _os_log_impl(&dword_1C6F5C000, v22, v12, "Removing resources for %ld suggestions", v28, 0xCu);
    OUTLINED_FUNCTION_10_1();
  }

  else
  {

    v22 = *(v1 + 40);
  }

  v40 = [v14 count];
  *(v1 + 96) = v40;
  if ((v40 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_37:
    OUTLINED_FUNCTION_0_123(&qword_1EC213F90);
LABEL_15:
    v29 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v29, qword_1EC219F38);
    v30 = sub_1C754FEEC();
    v31 = sub_1C755119C();
    if (OUTLINED_FUNCTION_21_0(v31))
    {
      v32 = OUTLINED_FUNCTION_127();
      *v32 = 0;
      OUTLINED_FUNCTION_145();
      _os_log_impl(v33, v34, v35, v36, v32, 2u);
      OUTLINED_FUNCTION_37();
    }

    v37 = *(v1 + 24);

    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v38 + 8))(v37);
LABEL_18:

    OUTLINED_FUNCTION_25();

    return v39();
  }

  for (i = 0; ; i = *(v1 + 104))
  {
    if (i == v40)
    {
      v57 = *(v1 + 72);
      v56 = *(v1 + 80);

      sub_1C754F2EC();

      goto LABEL_18;
    }

    *(v1 + 104) = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    [*(v1 + 80) v26[32]];
    sub_1C754F2DC();
    v42 = *(v1 + 64);
    v43 = [*(v1 + 80) objectAtIndexedSubscript_];
    *(v1 + 112) = v43;
    v44 = *(v42 + 16);
    *(v1 + 120) = v44;
    if (v44)
    {
      break;
    }

    v45 = v43;
    v46 = sub_1C754FEEC();
    v47 = sub_1C75511BC();

    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v1 + 112);
    if (v48)
    {
      v50 = OUTLINED_FUNCTION_41_0();
      v51 = OUTLINED_FUNCTION_20_1();
      v66 = v51;
      *v50 = 136315138;
      v52 = [v49 localIdentifier];
      v53 = sub_1C755068C();
      v14 = v54;

      v55 = sub_1C6F765A4(v53, v14, &v66);

      *(v50 + 4) = v55;
      v26 = &selRef_clsSceneClassifications;
      _os_log_impl(&dword_1C6F5C000, v46, v47, "Removed resources for asset %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_79();
    }

    else
    {
    }

    v40 = *(v1 + 96);
  }

  result = type metadata accessor for Spatial3DAssetResourceUtils();
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  *(v1 + 128) = result;
  v58 = *(v1 + 64);
  if (*(v58 + 16))
  {
    *(v1 + 152) = *(v58 + 32);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v1 + 160) = v59;
    *v59 = v60;
    v61 = OUTLINED_FUNCTION_9_62(v59);

    return static Spatial3DAssetResourceUtils.requestSpatial3DImageURL(for:with:statusHandler:)(v61, v62, v63, v64, v65);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C72924A0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1C7292584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_42_25();
  a24 = v26;
  a25 = v27;
  a23 = v25;
  v28 = *(v25 + 112);
  v29 = *(v25 + 32);
  v30 = sub_1C754DD2C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v30);
  sub_1C6FB5FC8(v29, &qword_1EC215BD8, &unk_1C7564890);
  v32 = v28;
  v33 = sub_1C754FEEC();
  sub_1C755118C();

  v34 = OUTLINED_FUNCTION_200();
  if (EnumTagSinglePayload == 1)
  {
    if (v34)
    {
      v35 = *(v25 + 152);
      v36 = *(v25 + 112);
      v37 = OUTLINED_FUNCTION_23_1();
      v38 = OUTLINED_FUNCTION_20_1();
      a12 = v38;
      *v37 = 134218242;
      *(v37 + 4) = v35;
      OUTLINED_FUNCTION_40_29();
      v39 = [v36 localIdentifier];
      sub_1C755068C();
      OUTLINED_FUNCTION_59();

      OUTLINED_FUNCTION_58_0(v40, v41, v42, v43, v44, v45, v46, v47);
      OUTLINED_FUNCTION_80();
      *(v37 + 14) = v39;
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v48, v49, v50, v51, v52, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v38);
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_23_3();
    }

    v54 = *(v25 + 136);
  }

  else
  {
    if (v34)
    {
      v55 = *(v25 + 152);
      v56 = *(v25 + 112);
      v57 = OUTLINED_FUNCTION_23_1();
      v58 = OUTLINED_FUNCTION_20_1();
      a12 = v58;
      *v57 = 134218242;
      *(v57 + 4) = v55;
      OUTLINED_FUNCTION_40_29();
      v59 = [v56 localIdentifier];
      sub_1C755068C();
      OUTLINED_FUNCTION_59();

      OUTLINED_FUNCTION_58_0(v60, v61, v62, v63, v64, v65, v66, v67);
      OUTLINED_FUNCTION_80();
      *(v57 + 14) = v59;
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v68, v69, v70, v71, v72, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v58);
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_23_3();
    }

    v54 = *(v25 + 136);
    static Spatial3DAssetResourceUtils.clearSpatial3DScene(for:with:)(*(v25 + 112), *(v25 + 152));
    if (v54)
    {
      v73 = *(v25 + 112);
      v75 = *(v25 + 72);
      v74 = *(v25 + 80);

LABEL_26:
      v111 = *(v25 + 24);
      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v112 + 8))(v111);
LABEL_27:

      OUTLINED_FUNCTION_6_0();
LABEL_28:
      OUTLINED_FUNCTION_6_68();

      v114(v113, v114, v115, v116, v117, v118, v119, v120, a9, *(&a9 + 1), a10, a11, a12, a13, a14, a15, a16, a17);
      return;
    }
  }

  v76 = *(v25 + 144) + 1;
  if (v76 == *(v25 + 120))
  {
    v77 = *(v25 + 112);
    *&v53 = 136315138;
    a9 = v53;
    v78 = &selRef_clsSceneClassifications;
    v79 = &selRef_mergedPersonIdentifiers;
    while (1)
    {
      v80 = v77;
      v81 = sub_1C754FEEC();
      v82 = sub_1C75511BC();

      v83 = os_log_type_enabled(v81, v82);
      v84 = *(v25 + 112);
      if (v83)
      {
        a11 = v54;
        v85 = OUTLINED_FUNCTION_41_0();
        v86 = OUTLINED_FUNCTION_20_1();
        a12 = v86;
        *v85 = a9;
        v87 = [v84 localIdentifier];
        v88 = v78;
        v89 = sub_1C755068C();
        a10 = v84;
        v90 = v79;
        v92 = v91;

        v93 = sub_1C6F765A4(v89, v92, &a12);
        v79 = v90;

        *(v85 + 4) = v93;
        v78 = v88;
        _os_log_impl(&dword_1C6F5C000, v81, v82, "Removed resources for asset %s", v85, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v86);
        OUTLINED_FUNCTION_109();
        v54 = a11;
        OUTLINED_FUNCTION_109();
      }

      else
      {
      }

      v94 = *(v25 + 104);
      if (v94 == *(v25 + 96))
      {
        break;
      }

      *(v25 + 104) = v94 + 1;
      if (__OFADD__(v94, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      [*(v25 + 80) v78[32]];
      sub_1C754F2DC();
      v95 = *(v25 + 80);
      if (v54)
      {
        v110 = *(v25 + 72);

        goto LABEL_26;
      }

      v96 = *(v25 + 64);
      v77 = [v95 v79[45]];
      *(v25 + 112) = v77;
      v97 = *(v96 + 16);
      *(v25 + 120) = v97;
      if (v97)
      {
        v98 = type metadata accessor for Spatial3DAssetResourceUtils();
        v54 = 0;
        v76 = 0;
        *(v25 + 128) = v98;
        goto LABEL_19;
      }
    }

    v109 = *(v25 + 72);
    v108 = *(v25 + 80);

    sub_1C754F2EC();

    if (v54)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_25();
    goto LABEL_28;
  }

LABEL_19:
  *(v25 + 136) = v54;
  *(v25 + 144) = v76;
  v99 = *(v25 + 64);
  if (v76 >= *(v99 + 16))
  {
LABEL_32:
    __break(1u);
  }

  else
  {
    *(v25 + 152) = *(v99 + 8 * v76 + 32);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v25 + 160) = v100;
    *v100 = v101;
    OUTLINED_FUNCTION_9_62(v100);
    OUTLINED_FUNCTION_6_68();

    static Spatial3DAssetResourceUtils.requestSpatial3DImageURL(for:with:statusHandler:)(v102, v103, v104, v105, v106);
  }
}

uint64_t sub_1C7292A5C(uint64_t a1)
{
  v2 = type metadata accessor for Spatial3DResourceGenerator(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C7292AB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Spatial3DResourceGenerator(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C7292B1C()
{
  result = qword_1EC2192E8;
  if (!qword_1EC2192E8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2192E0, &qword_1C7577760);
    result = swift_getWitnessTable(protocol conformance descriptor for AssetGating.GenericFailureReason<A>, v3, v0, v1);
    atomic_store(result, &qword_1EC2192E8);
  }

  return result;
}

uint64_t sub_1C7292B80(uint64_t a1)
{
  v4 = type metadata accessor for Spatial3DResourceGenerator(0);
  OUTLINED_FUNCTION_18(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + ((*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v2 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_1C6F738F4;

  return sub_1C728FCE4(a1, v8, v9, v1 + v6, v10);
}

uint64_t sub_1C7292C94(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1C7292D88;

  return v5(v2 + 32);
}

uint64_t sub_1C7292D88()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v2 = v1;
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_14();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_25();

  return v8();
}

uint64_t sub_1C7292E80()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  v4 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_1C6F739D4;

  return sub_1C7292C94(v3, v4);
}

uint64_t sub_1C7292F30(uint64_t a1)
{
  v3 = type metadata accessor for Spatial3DResourceGenerator(0);
  OUTLINED_FUNCTION_18(v3);
  v12 = v1[2];
  v4 = v1[4];
  v11 = v1[3];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C6F738F4;

  return sub_1C7291480(a1, v12, v11, v4, v5, v6, v7, v8);
}

uint64_t OUTLINED_FUNCTION_32_26()
{
}

uint64_t OUTLINED_FUNCTION_43_25()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_60_16()
{
}

uint64_t OUTLINED_FUNCTION_61_14()
{
  sub_1C6F61E88(*(v0 + 368));
}

uint64_t OUTLINED_FUNCTION_62_15()
{
  sub_1C6F61E88(v0);
}

void sub_1C7293288(double a1)
{
  if (a1 < -9.22337204e18 || a1 > 9.22337204e18)
  {
    sub_1C72933D0();
    swift_allocError();
    *v3 = a1;
    swift_willThrow();
    return;
  }

  if (a1 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
  }
}

unint64_t sub_1C72933D0()
{
  result = qword_1EC219F50;
  if (!qword_1EC219F50)
  {
    result = swift_getWitnessTable(byte_1C757E4BC, &_s5ErrorON_1, v0, v1);
    atomic_store(result, &qword_1EC219F50);
  }

  return result;
}

void FreeformStoryGenerator.musicCurationTask(from:storyCompletion:storySession:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_33();
  v47 = v0;
  v48 = v1;
  v3 = v2;
  v44 = v5;
  v45 = v4;
  v7 = v6;
  v49 = *v0;
  v50 = v8;
  v9 = type metadata accessor for StoryGenerationSession(0);
  v10 = OUTLINED_FUNCTION_18(v9);
  v43 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  OUTLINED_FUNCTION_76(v14);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  v41 = &v40 - v16;
  memcpy(v55, v7, 0x130uLL);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C754F17C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90, &qword_1C7564BC0);
  v40 = swift_allocBox();
  v18 = v17;
  sub_1C754F29C();
  v46 = sub_1C754F2FC();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v46);
  v42 = sub_1C7550D5C();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  sub_1C7298170();
  sub_1C6FD7F70();
  sub_1C7055874(v54, v53);
  v23 = (v13 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 47) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 311) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  sub_1C7298118();
  v29 = v28 + v23;
  v30 = v51[1];
  *v29 = v51[0];
  *(v29 + 16) = v30;
  *(v29 + 32) = v52;
  *(v28 + v24) = v40;
  *(v28 + v25) = v47;
  memcpy((v28 + v26), v55, 0x130uLL);
  sub_1C6FD80E4(v53, v28 + v27);
  *(v28 + ((v27 + 47) & 0xFFFFFFFFFFFFFFF8)) = v49;

  sub_1C6FDE884(v55, v51);
  v31 = sub_1C7293AD4(0, 0, v41, &unk_1C757E510, v28);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v42);
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = v31;

  sub_1C729386C();
  v37 = v36;
  __swift_destroy_boxed_opaque_existential_1(v54);

  v38 = v50;
  *v50 = v31;
  v38[1] = v37;
  OUTLINED_FUNCTION_62_2();
  (*(v39 + 8))(v48);
  OUTLINED_FUNCTION_25_0();
}

void sub_1C729386C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  OUTLINED_FUNCTION_76(v7);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_41_27();
  sub_1C6FD7F70();
  v9 = sub_1C7550D5C();
  v10 = OUTLINED_FUNCTION_69_2();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, v11, v9);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C6FD7FC8(v0, &qword_1EC2158F8, &qword_1C755FF40);
  }

  else
  {
    sub_1C7550D4C();
    OUTLINED_FUNCTION_62_2();
    (*(v13 + 8))(v0, v9);
  }

  v14 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v14)
  {
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1C6FD7FC8(v4, &qword_1EC2158F8, &qword_1C755FF40);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1C7550C8C();
  swift_unknownObjectRelease();
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1C755071C();

  swift_task_create();

  sub_1C6FD7FC8(v4, &qword_1EC2158F8, &qword_1C755FF40);

LABEL_9:
  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C7293AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  sub_1C6FD7F70();
  v11 = sub_1C7550D5C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C6FD7FC8(v10, &qword_1EC2158F8, &qword_1C755FF40);
  }

  else
  {
    sub_1C7550D4C();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1C7550C8C();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21[0] = a2;
      v17 = sub_1C755071C() + 32;
      type metadata accessor for StoryMusicCuration(0);

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

      sub_1C6FD7FC8(a3, &qword_1EC2158F8, &qword_1C755FF40);

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

  sub_1C6FD7FC8(a3, &qword_1EC2158F8, &qword_1C755FF40);
  type metadata accessor for StoryMusicCuration(0);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

void sub_1C7293D94()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  OUTLINED_FUNCTION_76(v11);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_41_27();
  sub_1C6FD7F70();
  v13 = sub_1C7550D5C();
  v14 = OUTLINED_FUNCTION_69_2();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, v15, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C6FD7FC8(v0, &qword_1EC2158F8, &qword_1C755FF40);
  }

  else
  {
    sub_1C7550D4C();
    OUTLINED_FUNCTION_62_2();
    (*(v17 + 8))(v0, v13);
  }

  v18 = *(v6 + 16);
  swift_unknownObjectRetain();

  if (!v18)
  {
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1C6FD7FC8(v8, &qword_1EC2158F8, &qword_1C755FF40);
    __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1C7550C8C();
  swift_unknownObjectRelease();
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1C755071C();

  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  swift_task_create();

  sub_1C6FD7FC8(v8, &qword_1EC2158F8, &qword_1C755FF40);

LABEL_9:
  OUTLINED_FUNCTION_25_0();
}

void sub_1C7294014()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  OUTLINED_FUNCTION_76(v7);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_41_27();
  sub_1C6FD7F70();
  v9 = sub_1C7550D5C();
  v10 = OUTLINED_FUNCTION_69_2();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, v11, v9);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C6FD7FC8(v0, &qword_1EC2158F8, &qword_1C755FF40);
  }

  else
  {
    sub_1C7550D4C();
    OUTLINED_FUNCTION_62_2();
    (*(v13 + 8))(v0, v9);
  }

  v14 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v14)
  {
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1C6FD7FC8(v4, &qword_1EC2158F8, &qword_1C755FF40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217ED8, &qword_1C756FCA0);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1C7550C8C();
  swift_unknownObjectRelease();
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1C755071C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217ED8, &qword_1C756FCA0);
  swift_task_create();
  OUTLINED_FUNCTION_24_2();

  sub_1C6FD7FC8(v4, &qword_1EC2158F8, &qword_1C755FF40);

LABEL_9:
  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C7294294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[52] = a8;
  v8[53] = v12;
  v8[50] = a5;
  v8[51] = a7;
  v8[48] = a1;
  v8[49] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90, &qword_1C7564BC0);
  v8[54] = swift_task_alloc();
  v9 = sub_1C754F2FC();
  v8[55] = v9;
  v8[56] = *(v9 - 8);
  v8[57] = swift_task_alloc();
  v8[58] = swift_task_alloc();
  v8[59] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C72943B8, 0, 0);
}

uint64_t sub_1C72943B8()
{
  v1 = v0[49];
  v2 = *(v1 + *(type metadata accessor for StoryGenerationSession(0) + 24));
  v0[60] = v2;
  if (v2)
  {
    *(*(*(v2 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics) + 56) + 33) = 1;
  }

  if (qword_1EDD09CF0 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1EDD09CF0);
  }

  v3 = sub_1C754FF1C();
  v0[61] = __swift_project_value_buffer(v3, qword_1EDD28B68);
  v4 = sub_1C754FEEC();
  v5 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_21_0(v5))
  {
    v6 = OUTLINED_FUNCTION_41_0();
    *v6 = 134217984;
    [objc_opt_self() storyMusicCurationTimeoutSeconds];
    *(v6 + 4) = v7;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    OUTLINED_FUNCTION_23_3();
  }

  sub_1C6FD7F70();
  if (v0[43])
  {
    v13 = v0[44];
    __swift_project_boxed_opaque_existential_1(v0 + 40, v0[43]);
    v31 = (*(v13 + 48) + **(v13 + 48));
    v14 = swift_task_alloc();
    v0[62] = v14;
    *v14 = v0;
    v14[1] = sub_1C7294788;
    v15 = OUTLINED_FUNCTION_57_0();

    return v31(v15);
  }

  else
  {
    sub_1C6FD7FC8((v0 + 40), &qword_1EC215748, &unk_1C755EED0);
    v0[65] = MEMORY[0x1E69E7CC0];
    v18 = v0[54];
    v17 = v0[55];
    swift_beginAccess();
    sub_1C7091CBC();
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v17);
    if (__swift_getEnumTagSinglePayload(v18, 1, v17) == 1)
    {
      v22 = v0[54];
      v23 = OUTLINED_FUNCTION_69_2();
      if (__swift_getEnumTagSinglePayload(v23, v24, v25) != 1)
      {
        sub_1C6FD7FC8(v22, &unk_1EC218C90, &qword_1C7564BC0);
      }

      OUTLINED_FUNCTION_54_23();
      return OUTLINED_FUNCTION_39_28();
    }

    else
    {
      v26 = v0[52];
      v27 = *(v0[56] + 32);
      (v27)(v0[58], v0[54], v0[55]);
      memcpy(v0 + 2, v26, 0x130uLL);
      v28 = OUTLINED_FUNCTION_90();
      v27(v28);
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      v0[66] = v29;
      *v29 = v30;
      OUTLINED_FUNCTION_13_55(v29);

      return FreeformStoryGenerator.generateMusicCuration(from:traits:storySession:eventRecorder:progressReporter:)();
    }
  }
}

uint64_t sub_1C7294788()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 504) = v0;

  if (!v0)
  {
    *(v5 + 512) = v3;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C7294898()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  v0[65] = v0[64];
  v2 = v0[54];
  v1 = v0[55];
  swift_beginAccess();
  sub_1C7091CBC();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v1);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v6 = v0[54];
    v7 = OUTLINED_FUNCTION_69_2();
    if (__swift_getEnumTagSinglePayload(v7, v8, v9) != 1)
    {
      sub_1C6FD7FC8(v6, &unk_1EC218C90, &qword_1C7564BC0);
    }

    OUTLINED_FUNCTION_54_23();
    return OUTLINED_FUNCTION_39_28();
  }

  else
  {
    v12 = v0[57];
    v11 = v0[58];
    v13 = v0[55];
    v14 = v0[52];
    v15 = *(v0[56] + 32);
    v15(v11, v0[54], v13);
    memcpy(v0 + 2, v14, 0x130uLL);
    v15(v12, v11, v13);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[66] = v16;
    *v16 = v17;
    OUTLINED_FUNCTION_13_55(v16);

    return FreeformStoryGenerator.generateMusicCuration(from:traits:storySession:eventRecorder:progressReporter:)();
  }
}

uint64_t sub_1C7294A54()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 536) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7294B6C()
{
  OUTLINED_FUNCTION_49_0();
  v1 = sub_1C754FEEC();
  v2 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    v3 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v3);
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  v9 = *(v0 + 480);

  if (v9)
  {
    *(*(*(*(v0 + 480) + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics) + 56) + 34) = 1;
  }

  OUTLINED_FUNCTION_25();

  return v10();
}

uint64_t sub_1C7294C4C()
{
  OUTLINED_FUNCTION_49_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + 320));

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C7294CCC()
{
  OUTLINED_FUNCTION_49_0();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C7294D44(uint64_t a1)
{
  v3 = type metadata accessor for StoryGenerationSession(0);
  OUTLINED_FUNCTION_18(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v1 + v8);
  v11 = *(v1 + v9);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1C6F738F4;

  return sub_1C7294294(a1, v12, v13, v1 + v5, v1 + v7, v16, v11, v1 + v10);
}

uint64_t FreeformStoryGenerator.generateMusicCuration(from:traits:storySession:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  *(v1 + 416) = v4;
  *(v1 + 424) = v0;
  *(v1 + 400) = v5;
  *(v1 + 408) = v6;
  *(v1 + 384) = v7;
  *(v1 + 392) = v8;
  v9 = sub_1C754F2FC();
  *(v1 + 432) = v9;
  OUTLINED_FUNCTION_18(v9);
  *(v1 + 440) = v10;
  *(v1 + 448) = OUTLINED_FUNCTION_81_0();
  *(v1 + 456) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C60, &qword_1C757ED30);
  OUTLINED_FUNCTION_76(v11);
  *(v1 + 464) = OUTLINED_FUNCTION_77();
  v12 = type metadata accessor for StoryMusicCurationOptions(0);
  *(v1 + 472) = v12;
  OUTLINED_FUNCTION_76(v12);
  *(v1 + 480) = OUTLINED_FUNCTION_81_0();
  *(v1 + 488) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155A8, &unk_1C7570210);
  OUTLINED_FUNCTION_76(v13);
  *(v1 + 496) = OUTLINED_FUNCTION_81_0();
  *(v1 + 504) = swift_task_alloc();
  v14 = type metadata accessor for StoryMusicCuration(0);
  *(v1 + 512) = v14;
  OUTLINED_FUNCTION_76(v14);
  *(v1 + 520) = OUTLINED_FUNCTION_81_0();
  *(v1 + 528) = swift_task_alloc();
  *(v1 + 536) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2173A0, &qword_1C75699C8);
  OUTLINED_FUNCTION_76(v15);
  *(v1 + 544) = OUTLINED_FUNCTION_77();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217C28, &unk_1C756E200);
  OUTLINED_FUNCTION_76(v16);
  *(v1 + 552) = OUTLINED_FUNCTION_77();
  v17 = sub_1C754DF6C();
  *(v1 + 560) = v17;
  OUTLINED_FUNCTION_18(v17);
  *(v1 + 568) = v18;
  *(v1 + 576) = OUTLINED_FUNCTION_81_0();
  *(v1 + 584) = swift_task_alloc();
  v19 = sub_1C754F38C();
  *(v1 + 592) = v19;
  OUTLINED_FUNCTION_18(v19);
  *(v1 + 600) = v20;
  *(v1 + 608) = OUTLINED_FUNCTION_77();
  *(v1 + 761) = *v3;
  *(v1 + 616) = *(v3 + 8);
  *(v1 + 632) = *(v3 + 24);
  v21 = *(v3 + 136);
  *(v1 + 640) = *(v3 + 120);
  *(v1 + 656) = v21;
  *(v1 + 672) = *(v3 + 152);
  *(v1 + 762) = *(v3 + 160);
  *(v1 + 763) = *(v3 + 161);
  memcpy((v1 + 16), (v3 + 216), 0x50uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_1C7295194()
{
  v121 = v0;
  v1 = *(v0 + 408);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  sub_1C754DF5C();
  if (qword_1EDD09CF0 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1EDD09CF0);
  }

  v2 = sub_1C754FF1C();
  *(v0 + 680) = __swift_project_value_buffer(v2, qword_1EDD28B68);
  v3 = sub_1C754FEEC();
  v4 = sub_1C755117C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_127();
    *v5 = 0;
    _os_log_impl(&dword_1C6F5C000, v3, v4, "StoryOrchestrator music curation started", v5, 2u);
    OUTLINED_FUNCTION_37();
  }

  v6 = *(v0 + 408);

  __swift_project_boxed_opaque_existential_1(v6, v1[3]);
  sub_1C754F15C();
  sub_1C754F2CC();
  v7 = *(v0 + 512);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v7);
  sub_1C754F2DC();
  v15 = *(v0 + 761);
  v16 = sub_1C754FEEC();
  v17 = sub_1C755118C();
  v18 = OUTLINED_FUNCTION_21_0(v17);
  if (v15 == 1)
  {
    if (v18)
    {
      v19 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v19);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v20, v21, v22, v23, v24, 2u);
      OUTLINED_FUNCTION_23_3();
    }

    v25 = *(v0 + 616);
    v26 = *(v0 + 504);
    v27 = *(v0 + 424);

    v28 = [v25 string];
    v29 = sub_1C755068C();
    v31 = v30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    *(inited + 32) = v29;
    *(inited + 40) = v31;
    v33 = *(v27 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);
    sub_1C75504FC();
    v34 = static PromptSuggestionReader.promptSuggestionByPromptText(_:in:sources:)(inited, v33, &unk_1F46A8708);
    swift_setDeallocating();
    sub_1C6FDC9DC();
    sub_1C6FE149C(v29, v31, v34, v26);
    type metadata accessor for PromptSuggestion(0);
    v35 = OUTLINED_FUNCTION_24_2();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, inited);
    v37 = *(v0 + 504);
    if (EnumTagSinglePayload == 1)
    {
      sub_1C6FD7FC8(*(v0 + 504), &qword_1EC2155A8, &unk_1C7570210);
    }

    else
    {
      v45 = *(v37 + *(inited + 112));
      sub_1C7224968(v45);
      OUTLINED_FUNCTION_19_48();
      sub_1C72981C8(v37, v46);
      if (v45)
      {
        v47 = sub_1C75504FC();
        sub_1C716A74C(v47);
        goto LABEL_16;
      }
    }

    v45 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v48 = *(v0 + 496);
    sub_1C6FE149C(v29, v31, v34, v48);

    v49 = __swift_getEnumTagSinglePayload(v48, 1, inited);
    v50 = *(v0 + 496);
    if (v49 == 1)
    {
      sub_1C6FD7FC8(*(v0 + 496), &qword_1EC2155A8, &unk_1C7570210);
    }

    else
    {
      v51 = (v50 + *(inited + 112));
      v52 = *v51;
      v44 = v51[1];
      v53 = OUTLINED_FUNCTION_57_3();
      sub_1C7224968(v53);
      OUTLINED_FUNCTION_19_48();
      sub_1C72981C8(v50, v54);
      if (v52)
      {
        sub_1C75504FC();
        v55 = OUTLINED_FUNCTION_57_3();
        sub_1C716A74C(v55);
LABEL_21:
        sub_1C75504FC();
        sub_1C75504FC();
        v56 = sub_1C754FEEC();
        v57 = sub_1C755117C();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          *v58 = 136315394;
          v59 = sub_1C75504FC();
          v60 = MEMORY[0x1E69E6158];
          v61 = MEMORY[0x1CCA5D090](v59, MEMORY[0x1E69E6158]);
          v63 = v62;

          v64 = sub_1C6F765A4(v61, v63, &v117);

          *(v58 + 4) = v64;
          *(v58 + 12) = 2080;
          v65 = sub_1C75504FC();
          v66 = MEMORY[0x1CCA5D090](v65, v60);
          v68 = v67;

          v69 = sub_1C6F765A4(v66, v68, &v117);

          *(v58 + 14) = v69;
          _os_log_impl(&dword_1C6F5C000, v56, v57, "(Pre-curated) StoryOrchestrator music curation suggested prompt has pre-curated moods: %s, keywords: %s", v58, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_79();
          OUTLINED_FUNCTION_10_1();
        }

        goto LABEL_24;
      }
    }

    v44 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  if (v18)
  {
    v38 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v38);
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v39, v40, v41, v42, v43, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  v44 = 0;
  v45 = 0;
LABEL_24:
  sub_1C754F2DC();
  v115 = v44;
  v116 = v45;
  v70 = *(v0 + 424);
  v72 = *(v70 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext + 8);
  v73 = *(v70 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext + 16);
  v117 = *(v70 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);
  v71 = v117;
  v118 = v72;
  v119 = v73;
  sub_1C7055874(v70 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_safetyController, v0 + 344);
  type metadata accessor for StoryMusicCurator(0);
  v74 = swift_allocObject();
  v75 = *(v0 + 368);
  v76 = *(v0 + 376);
  v77 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 344, v75);
  v78 = *(v75 - 8);
  v79 = OUTLINED_FUNCTION_77();
  (*(v78 + 16))(v79, v77, v75);
  v80 = v71;

  *(v0 + 688) = sub_1C74CFFC8(&v117, v79, v74, v75, v76);
  __swift_destroy_boxed_opaque_existential_1((v0 + 344));

  sub_1C754F2DC();
  v81 = *(v0 + 664);
  v82 = *(v0 + 656);
  v83 = *(v0 + 640);
  v102 = v83;
  v103 = *(v0 + 648);
  v104 = *(v0 + 632);
  v107 = *(v0 + 624);
  v109 = *(v0 + 552);
  v110 = *(v0 + 672);
  v84 = *(v0 + 480);
  v85 = *(v0 + 472);
  v114 = *(v0 + 448);
  v112 = *(v0 + 440);
  v113 = *(v0 + 432);
  v111 = *(v0 + 456);
  v105 = *(v0 + 762) | (*(v0 + 763) << 8);
  v108 = *(v0 + 392);
  memcpy((v0 + 96), (v0 + 16), 0x50uLL);
  type metadata accessor for AppleMusicSubscriptionState(0);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
  sub_1C75504FC();
  v90 = v83;
  v91 = v82;
  sub_1C71AACA4(v90);
  v92 = v81;
  sub_1C75504FC();
  sub_1C7027A20(v0 + 16, v0 + 176);
  v93 = MEMORY[0x1E69E7CC0];
  v106 = OUTLINED_FUNCTION_55_22();
  v94 = OUTLINED_FUNCTION_55_22();
  *(v84 + v85[19]) = 2;
  *v84 = &unk_1F46A9218;
  *(v84 + 8) = 5;
  memcpy(&v120[6], (v0 + 96), 0x50uLL);
  v95 = v84 + v85[22];
  *v95 = 0;
  *(v95 + 8) = v107;
  *(v95 + 16) = v104;
  *(v95 + 24) = v102;
  *(v95 + 32) = v103;
  *(v95 + 40) = v91;
  *(v95 + 48) = v92;
  *(v95 + 56) = v110;
  *(v95 + 64) = v105;
  memcpy((v95 + 66), v120, 0x56uLL);
  *(v95 + 152) = v108;
  *(v95 + 160) = v116;
  *(v95 + 168) = v115;
  *(v84 + 16) = 9;
  *(v84 + 32) = &unk_1F46A91F0;
  *(v84 + 40) = 0;
  sub_1C75504FC();
  if (static StoryMusicCurator.isUserAllowedExplicitContent()())
  {
    v96 = &unk_1F46A9240;
  }

  else
  {
    v96 = v93;
  }

  sub_1C6FD7FC8(v109, &qword_1EC217C28, &unk_1C756E200);
  *(v84 + 56) = v96;
  *(v84 + 24) = 0;
  *(v84 + 48) = 1;
  *(v84 + v85[20]) = 0;
  *(v84 + v85[21]) = 0;
  *(v84 + 64) = v93;
  *(v84 + 72) = v93;
  sub_1C7091CBC();
  *(v84 + v85[15]) = v106;
  *(v84 + v85[16]) = v94;
  v97 = (v84 + v85[17]);
  *v97 = 0;
  v97[1] = 0;
  *(v84 + v85[18]) = 1064849900;
  sub_1C7298118();
  OUTLINED_FUNCTION_57_3();
  sub_1C7298170();
  __swift_storeEnumTagSinglePayload(v109, 0, 1, v85);
  sub_1C754F2BC();
  (*(v112 + 32))(v114, v111, v113);
  *(v0 + 760) = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 696) = v98;
  *v98 = v99;
  v98[1] = sub_1C7295E2C;
  OUTLINED_FUNCTION_45_23();

  return StoryMusicCurator.curateMusic(with:using:eventRecorder:progressReporter:)();
}