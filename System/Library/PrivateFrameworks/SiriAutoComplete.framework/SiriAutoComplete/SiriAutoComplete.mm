uint64_t sub_21E529004()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E52904C()
{
  OUTLINED_FUNCTION_93();
  v1 = sub_21E57B9EC();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_21E57BA0C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v10 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);

  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);

  OUTLINED_FUNCTION_100();

  return MEMORY[0x2821FE8E8](v11, v12, v13);
}

uint64_t sub_21E52935C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E529394()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_21E529444()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8BF0, qword_21E57D8D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21E5294E8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_21E529530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88D8, &unk_21E57D3B0);

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_21E529590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88D8, &unk_21E57D3B0);

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_21E5297C0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E529804(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

char *sub_21E52981C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_4(a3, result);
  }

  return result;
}

id sub_21E52983C(void *a1, uint64_t a2)
{
  v3 = sub_21E57B5EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 error];
  if (result)
  {
    v8 = result;
    sub_21E57B5BC();
    v9 = v8;
    v10 = sub_21E57B5DC();
    v11 = sub_21E57B86C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136315394;
      v14 = sub_21E57BC2C();
      v16 = sub_21E5553D8(v14, v15, &v21);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      swift_getErrorValue();
      v17 = sub_21E57BB7C();
      v19 = sub_21E5553D8(v17, v18, &v21);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_21E527000, v10, v11, "%s: Error encountered while fetching app intents from Biome: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D5D740](v13, -1, -1);
      MEMORY[0x223D5D740](v12, -1, -1);
    }

    else
    {
    }

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void sub_21E529A78(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

BOOL sub_21E529AE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28[1] = a6;
  v31 = a5;
  v8 = sub_21E57B5EC();
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21E57B9EC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = a1;
  MEMORY[0x223D5CC60]();
  sub_21E52F358(*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_21E57B7CC();
  swift_endAccess();
  sub_21E57B9CC();
  sub_21E57B9DC();
  (*(v12 + 8))(v14, v11);
  v16 = sub_21E57BBFC();
  sub_21E57BBFC();
  v18 = v17 * 1.0e-18 + v16;
  v19 = *(v31 + OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_fetchPhrasesTimeoutSeconds);
  if (v19 < v18)
  {
    sub_21E57B5BC();
    v20 = sub_21E57B5DC();
    v21 = sub_21E57B85C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32[0] = v23;
      *v22 = 136315394;
      v24 = sub_21E57BC2C();
      v26 = sub_21E5553D8(v24, v25, v32);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2048;
      *(v22 + 14) = v18;
      _os_log_impl(&dword_21E527000, v20, v21, "%s: %f seconds have passed since requesting SiriKitIntentTranscript events, which is passed our threshold. Not continuing to process more events", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x223D5D740](v23, -1, -1);
      MEMORY[0x223D5D740](v22, -1, -1);
    }

    (*(v29 + 8))(v10, v30);
  }

  return v19 >= v18;
}

uint64_t sub_21E529E04(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_21E529E5C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_21E57BA4C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_21E529ED8(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v9, v6 + 32, v4, a1);
  sub_21E534EAC(v9);
  if (v7 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t sub_21E529F78()
{
  OUTLINED_FUNCTION_29();
  v1[44] = v2;
  v1[45] = v0;
  v1[42] = v3;
  v1[43] = v4;
  v1[40] = v5;
  v1[41] = v6;
  v1[39] = v7;
  v1[46] = *v0;
  v8 = sub_21E57B5EC();
  v1[47] = v8;
  OUTLINED_FUNCTION_6(v8);
  v1[48] = v9;
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_21E52A094()
{
  v197 = v0;
  v1 = [*(v0 + 312) eventBody];
  *(v0 + 440) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_21E52FECC(v1);
    *(v0 + 448) = v3;
    *(v0 + 456) = v4;
    if (v4 >> 60 == 15)
    {
      v190 = v2;
      sub_21E57B5BC();
      v5 = sub_21E57B5DC();
      v6 = sub_21E57B86C();
      v7 = OUTLINED_FUNCTION_48(v6);
      v8 = *(v0 + 400);
      v10 = *(v0 + 376);
      v9 = *(v0 + 384);
      if (v7)
      {
        v11 = OUTLINED_FUNCTION_50();
        v12 = OUTLINED_FUNCTION_43();
        v195 = v12;
        v13 = OUTLINED_FUNCTION_70(4.8149e-34);
        v15 = sub_21E5553D8(v13, v14, &v195);

        *(v11 + 4) = v15;
        OUTLINED_FUNCTION_35();
        _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v12);
        OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_20();
      }

      (*(v9 + 8))(v8, v10);
      goto LABEL_9;
    }

    v38 = v3;
    v39 = v4;
    sub_21E535114(0, &qword_2812254E8, 0x277CCAAC8);
    sub_21E535114(0, &qword_281225508, 0x277CD3D58);
    v40 = sub_21E57B88C();
    *(v0 + 464) = v40;
    v41 = v40;
    if (!v40)
    {
      sub_21E57B5BC();
      v68 = sub_21E57B5DC();
      v69 = sub_21E57B86C();
      v70 = OUTLINED_FUNCTION_48(v69);
      v71 = *(v0 + 408);
      v73 = *(v0 + 376);
      v72 = *(v0 + 384);
      if (v70)
      {
        v187 = v38;
        v74 = OUTLINED_FUNCTION_50();
        v192 = v71;
        v195 = OUTLINED_FUNCTION_43();
        v75 = v195;
        *v74 = 136315138;
        v76 = OUTLINED_FUNCTION_105();
        v182 = v73;
        v78 = sub_21E5553D8(v76, v77, &v195);

        *(v74 + 4) = v78;
        _os_log_impl(&dword_21E527000, v68, v69, "%s: Unable to unarchive INInteraction from Biome event", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v75);
        OUTLINED_FUNCTION_39();
        v38 = v187;
        OUTLINED_FUNCTION_39();

        (*(v72 + 8))(v192, v182);
      }

      else
      {

        (*(v72 + 8))(v71, v73);
      }

      sub_21E535048(v38, v39);

      goto LABEL_9;
    }

    v42 = sub_21E52FF30(v2, &selRef_bundleID);
    if (!v43)
    {
      sub_21E57B5BC();
      v79 = sub_21E57B5DC();
      v80 = sub_21E57B86C();
      v81 = OUTLINED_FUNCTION_48(v80);
      v82 = *(v0 + 416);
      v84 = *(v0 + 376);
      v83 = *(v0 + 384);
      if (v81)
      {
        v193 = *(v0 + 416);
        v183 = v80;
        v85 = OUTLINED_FUNCTION_50();
        v179 = OUTLINED_FUNCTION_43();
        v195 = v179;
        *v85 = 136315138;
        v86 = sub_21E57BC2C();
        v188 = v84;
        v88 = v38;
        v89 = sub_21E5553D8(v86, v87, &v195);

        *(v85 + 4) = v89;
        v38 = v88;
        _os_log_impl(&dword_21E527000, v79, v183, "%s: nil bundleId", v85, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v179);
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_39();

        (*(v83 + 8))(v193, v188);
      }

      else
      {

        (*(v83 + 8))(v82, v84);
      }

      sub_21E535048(v38, v39);

      goto LABEL_9;
    }

    v44 = v42;
    v45 = v43;
    v186 = v38;
    v46 = *(v0 + 368);
    v47 = *(v0 + 320);

    v48 = [v41 intent];
    v49 = __swift_project_boxed_opaque_existential_1(v47, v47[3]);
    v50 = sub_21E530D48(v44, v45, v48, *v49, v46);
    v52 = v51;

    *(v0 + 472) = v52;

    if (v50 == 0xD000000000000017 && 0x800000021E57EDC0 == v52)
    {
    }

    else
    {
      OUTLINED_FUNCTION_47();
      sub_21E57BB3C();
      OUTLINED_FUNCTION_103();
      if ((v45 & 1) == 0)
      {
        v54 = *__swift_project_boxed_opaque_existential_1(*(v0 + 320), v47[3]);

        v55 = OUTLINED_FUNCTION_47();
        sub_21E54A03C(v55);
        OUTLINED_FUNCTION_103();
        if ((v54 & 1) == 0)
        {
          sub_21E57B5BC();
          v56 = sub_21E57B5DC();
          v191 = sub_21E57B86C();
          v57 = OUTLINED_FUNCTION_48(v191);
          v58 = *(v0 + 432);
          v60 = *(v0 + 376);
          v59 = *(v0 + 384);
          if (v57)
          {
            v181 = *(v0 + 432);
            v61 = OUTLINED_FUNCTION_57();
            v195 = swift_slowAlloc();
            *v61 = 136315394;
            v62 = sub_21E57BC2C();
            loga = v56;
            v64 = sub_21E5553D8(v62, v63, &v195);

            *(v61 + 4) = v64;
            *(v61 + 12) = 2080;

            v65 = OUTLINED_FUNCTION_47();
            sub_21E5553D8(v65, v66, v67);
            OUTLINED_FUNCTION_85();

            *(v61 + 14) = v64;
            _os_log_impl(&dword_21E527000, loga, v191, "%s: Skipping INIntent since app is not installed: %s", v61, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_39();
            OUTLINED_FUNCTION_31();

            (*(v59 + 8))(v181, v60);
LABEL_72:
            sub_21E535048(v186, v39);

            goto LABEL_73;
          }

LABEL_71:

          (*(v59 + 8))(v58, v60);
          goto LABEL_72;
        }
      }
    }

    v90 = [v41 intent];
    v91 = [v90 _type];

    if (v91 == 1)
    {
      goto LABEL_41;
    }

    v92 = sub_21E52FF30(v2, &selRef_intentClass);
    if (!v93)
    {
      goto LABEL_41;
    }

    v94 = v93;
    if (v92 == 0xD00000000000001ALL && v93 == 0x800000021E57F1E0)
    {
    }

    else
    {
      v96 = sub_21E57BB3C();

      if ((v96 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    v97 = OUTLINED_FUNCTION_47();
    sub_21E52B2A8(v97, v98);
    OUTLINED_FUNCTION_103();
    if ((v94 & 1) == 0)
    {
      sub_21E57B5BC();
      v41 = v41;
      v56 = sub_21E57B5DC();
      v150 = sub_21E57B86C();

      v185 = v150;
      v151 = os_log_type_enabled(v56, v150);
      v58 = *(v0 + 424);
      v60 = *(v0 + 376);
      v59 = *(v0 + 384);
      if (!v151)
      {
        goto LABEL_71;
      }

      v180 = *(v0 + 384);
      v152 = v41;
      v177 = *(v0 + 376);
      v153 = OUTLINED_FUNCTION_43();
      v195 = OUTLINED_FUNCTION_104();
      *v153 = 136315650;
      v154 = sub_21E57BC2C();
      logb = v58;
      v156 = sub_21E5553D8(v154, v155, &v195);

      *(v153 + 4) = v156;
      v194 = v2;
      *(v153 + 12) = 2080;
      v157 = [v41 intent];
      v158 = [v157 _title];

      v159 = sub_21E57B67C();
      v160 = v56;
      v162 = v161;

      v163 = sub_21E5553D8(v159, v162, &v195);

      *(v153 + 14) = v163;
      *(v153 + 22) = 2080;

      v164 = OUTLINED_FUNCTION_47();
      sub_21E5553D8(v164, v165, v166);
      OUTLINED_FUNCTION_85();

      *(v153 + 24) = v162;
      _os_log_impl(&dword_21E527000, v160, v185, "%s: Skipping INIntent that is not supported: %s from bundleId: %s", v153, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_39();

      (*(v180 + 8))(logb, v177);
      sub_21E535048(v186, v39);

      goto LABEL_73;
    }

LABEL_41:
    v99 = MEMORY[0x277D84F90];
    *(v0 + 304) = MEMORY[0x277D84F90];
    v100 = [v41 intent];
    v101 = [v100 isGenericIntent];

    if (!v101)
    {
      v140 = *(v0 + 320);

      *(v0 + 480) = [v41 intent];
      __swift_project_boxed_opaque_existential_1(v140, v47[3]);
      OUTLINED_FUNCTION_11(&qword_21E57C508);
      v141 = swift_task_alloc();
      *(v0 + 488) = v141;
      *v141 = v0;
      v141[1] = sub_21E52AECC;
      v198 = *(v0 + 360);
      OUTLINED_FUNCTION_47();
      OUTLINED_FUNCTION_95();

      __asm { BR              X8 }
    }

    v103 = *(v0 + 352);
    v102 = *(v0 + 360);
    v104 = *(v0 + 320);
    v105 = [v41 &off_278359C78];
    v106 = *__swift_project_boxed_opaque_existential_1(v104, v47[3]);

    sub_21E530E48(v105, v2, v50, v52, v106, v103, v102, (v0 + 16));

    v107 = *(v0 + 24);
    if (v107)
    {
      v108 = *(v0 + 16);
      sub_21E543754();
      v110 = v109;
      v112 = *(v109 + 16);
      v111 = *(v109 + 24);
      if (v112 >= v111 >> 1)
      {
        OUTLINED_FUNCTION_40(v111);
        sub_21E543754();
        v110 = v167;
      }

      *(v110 + 16) = v112 + 1;
      v113 = (v110 + 96 * v112);
      v113[4] = v108;
      v113[5] = v107;
      memcpy(v113 + 6, (v0 + 32), 0x50uLL);
      *(v0 + 304) = v110;
    }

    v114 = *(v0 + 440);
    v115 = sub_21E52FF30(v114, &selRef_intentClass);
    if (v116)
    {
      v117 = v115;
    }

    else
    {
      v117 = 0;
    }

    if (v116)
    {
      v118 = v116;
    }

    else
    {
      v118 = 0xE000000000000000;
    }

    v195 = v117;

    MEMORY[0x223D5CBD0](46, 0xE100000000000000);

    v119 = [v114 identifier];
    v120 = sub_21E57B67C();
    v122 = v121;

    v196 = v118;

    MEMORY[0x223D5CBD0](v120, v122);

    v123 = *(*(v0 + 304) + 16);
    if (v123)
    {
      v168 = v195;
      v169 = v196;
      v195 = v99;
      OUTLINED_FUNCTION_98();
      OUTLINED_FUNCTION_61();
      while (1)
      {
        OUTLINED_FUNCTION_97(v124);
        if (*(v0 + 168))
        {
          v184 = *(v0 + 168);
          v189 = *(v0 + 160);
        }

        else
        {

          v189 = v168;
        }

        OUTLINED_FUNCTION_41();
        sub_21E534CEC(v0 + 112, v0 + 208);
        v125 = sub_21E52FF30(v123, &selRef_intentClass);
        v127 = v126;

        if (v127)
        {
          v172 = v125;
        }

        else
        {
          v172 = *(v0 + 176);
        }

        sub_21E534D48(v0 + 112);
        OUTLINED_FUNCTION_81();
        if (v137)
        {
          v139 = OUTLINED_FUNCTION_40(v136);
          v128 = sub_21E562880(v139, v123, 1);
        }

        OUTLINED_FUNCTION_19(v128, v129, v130, v131, v132, v133, v134, v135, v168, v169, v170, v171, v172, log, v176, v178, v184, v189);
        if (!v138)
        {
          break;
        }

        OUTLINED_FUNCTION_80();
      }

      v144 = *(v0 + 464);
      v145 = *(v0 + 440);
      sub_21E535048(*(v0 + 448), *(v0 + 456));

      goto LABEL_9;
    }

    v146 = *(v0 + 464);
    v147 = *(v0 + 440);

    v148 = OUTLINED_FUNCTION_79();
    sub_21E535048(v148, v149);

LABEL_73:

    goto LABEL_9;
  }

  sub_21E57B5BC();
  v21 = sub_21E57B5DC();
  v22 = sub_21E57B86C();
  if (OUTLINED_FUNCTION_48(v22))
  {
    v23 = OUTLINED_FUNCTION_50();
    v24 = OUTLINED_FUNCTION_43();
    v195 = v24;
    *v23 = 136315138;
    v25 = sub_21E57BC2C();
    v27 = sub_21E5553D8(v25, v26, &v195);

    *(v23 + 4) = v27;
    OUTLINED_FUNCTION_12();
    _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_30();
  }

  v33 = OUTLINED_FUNCTION_34();
  v34(v33);
LABEL_9:

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_95();

  return v35();
}

uint64_t sub_21E52AECC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 480);
  v5 = *v0;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v8 + 496) = v7;

  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_21E52AFE4()
{
  sub_21E54A344(v0[62]);
  v1 = v0[55];
  v2 = sub_21E52FF30(v1, &selRef_intentClass);
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v46 = v4;

  MEMORY[0x223D5CBD0](46, 0xE100000000000000);

  v6 = [v1 identifier];
  v7 = sub_21E57B67C();
  v9 = v8;

  v47 = v5;

  MEMORY[0x223D5CBD0](v7, v9);

  v10 = *(v0[38] + 16);
  if (v10)
  {
    v36 = v46;
    v37 = v47;
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_61();
    while (1)
    {
      OUTLINED_FUNCTION_97(v11);
      if (v0[21])
      {
        v44 = v0[21];
        v45 = v0[20];
      }

      else
      {

        v45 = v36;
      }

      OUTLINED_FUNCTION_41();
      sub_21E534CEC((v0 + 14), (v0 + 26));
      v12 = sub_21E52FF30(v10, &selRef_intentClass);
      v14 = v13;

      if (v14)
      {
        v40 = v12;
      }

      else
      {
        v40 = v0[22];
      }

      sub_21E534D48((v0 + 14));
      OUTLINED_FUNCTION_81();
      if (v24)
      {
        v26 = OUTLINED_FUNCTION_40(v23);
        v15 = sub_21E562880(v26, v10, 1);
      }

      OUTLINED_FUNCTION_19(v15, v16, v17, v18, v19, v20, v21, v22, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
      if (!v25)
      {
        break;
      }

      OUTLINED_FUNCTION_80();
    }

    v27 = v0[58];
    v28 = v0[55];
    sub_21E535048(v0[56], v0[57]);
  }

  else
  {
    v29 = v0[58];
    v30 = v0[55];

    v31 = OUTLINED_FUNCTION_79();
    sub_21E535048(v31, v32);
  }

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_95();

  return v33();
}

BOOL sub_21E52B2A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E54335C(&unk_282F92058);
  v11 = v4;
  sub_21E57B56C();
  sub_21E57B55C();
  sub_21E57B54C();

  v5 = sub_21E57B70C();

  if (v5)
  {
    sub_21E576044(&v10, 0xD000000000000010, 0x800000021E57F200);

    v4 = v11;
  }

  v6 = sub_21E52B3AC(v4);
  v7 = sub_21E52E370(v6, v4);
  v8 = sub_21E543EB0(a1, a2, v7);

  return v8;
}

uint64_t sub_21E52B3AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v38 = MEMORY[0x277D84F90];
  sub_21E562860(0, v1, 0);
  v2 = v38;
  result = sub_21E530844(v3);
  v7 = result;
  v8 = 0;
  v37 = v3 + 56;
  v32 = v3 + 64;
  v33 = v1;
  v34 = v3;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v9 = v7 >> 6;
      if ((*(v37 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_28;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_29;
      }

      v36 = v6;
      v35 = v5;
      v10 = v2;
      v11 = (*(v3 + 48) + 16 * v7);
      v13 = *v11;
      v12 = v11[1];

      v14 = sub_21E57B1DC();
      if (*(v14 + 16))
      {
        v15 = sub_21E52F7C4(v13);
        if (v16)
        {
          v17 = (*(v14 + 56) + 16 * v15);
          v13 = *v17;
          v18 = v17[1];

          v12 = v18;
        }
      }

      v2 = v10;
      v39 = v10;
      v19 = *(v10 + 16);
      v20 = *(v2 + 24);
      if (v19 >= v20 >> 1)
      {
        result = sub_21E562860((v20 > 1), v19 + 1, 1);
        v2 = v39;
      }

      *(v2 + 16) = v19 + 1;
      v21 = v2 + 16 * v19;
      *(v21 + 32) = v13;
      *(v21 + 40) = v12;
      if (v36)
      {
        goto LABEL_33;
      }

      v3 = v34;
      v22 = 1 << *(v34 + 32);
      if (v7 >= v22)
      {
        goto LABEL_30;
      }

      v23 = *(v37 + 8 * v9);
      if ((v23 & (1 << v7)) == 0)
      {
        goto LABEL_31;
      }

      if (*(v34 + 36) != v35)
      {
        goto LABEL_32;
      }

      v24 = v23 & (-2 << (v7 & 0x3F));
      if (v24)
      {
        v22 = __clz(__rbit64(v24)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v25 = v33;
      }

      else
      {
        v26 = v2;
        v27 = v9 << 6;
        v28 = v9 + 1;
        v25 = v33;
        v29 = (v32 + 8 * v9);
        while (v28 < (v22 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_21E5350B4(v7, v35, 0);
            v22 = __clz(__rbit64(v30)) + v27;
            goto LABEL_22;
          }
        }

        result = sub_21E5350B4(v7, v35, 0);
LABEL_22:
        v2 = v26;
      }

      if (++v8 == v25)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v34 + 36);
      v7 = v22;
      if (v22 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_21E52B648(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;

  v11 = 0;
  v23 = v2;
  if (v7)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
LABEL_10:
      while (2)
      {
        if (!*(a1 + 16))
        {

          return 0;
        }

        v13 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v14 = (*(v2 + 48) + ((v11 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];
        sub_21E57BB8C();

        sub_21E57B6AC();
        v17 = sub_21E57BBCC();
        v18 = ~(-1 << *(a1 + 32));
        do
        {
          v19 = v17 & v18;
          if (((*(v9 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
          {

            return 0;
          }

          v20 = (*(a1 + 48) + 16 * v19);
          if (*v20 == v16 && v20[1] == v15)
          {
            break;
          }

          v22 = sub_21E57BB3C();
          v17 = v19 + 1;
        }

        while ((v22 & 1) == 0);

        v2 = v23;
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21E52B808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = OUTLINED_FUNCTION_10();
  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_21E52B83C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_91();
  v21 = *(v20 + 24);
  v39 = [*(v20 + 16) _emptyCopy];
  *(v20 + 80) = v39;
  v22 = -1;
  v23 = -1 << *(v21 + 32);
  if (-v23 < 64)
  {
    v22 = ~(-1 << -v23);
  }

  v24 = v22 & *(v21 + 56);
  v25 = (63 - v23) >> 6;

  v27 = 0;
  if (v24)
  {
    while (1)
    {
LABEL_7:
      v29 = *(v20 + 16);
      OUTLINED_FUNCTION_37();

      OUTLINED_FUNCTION_59();
      v30 = sub_21E57B66C();
      v31 = [v29 valueForKey_];

      OUTLINED_FUNCTION_59();
      v32 = sub_21E57B66C();

      [v39 setValue:v31 forKey:v32];

      swift_unknownObjectRelease();
    }
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      return result;
    }

    if (v28 >= v25)
    {
      break;
    }

    ++v27;
    if (*(v21 + 56 + 8 * v28))
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_60();
  v33 = sub_21E57B66C();
  v34 = [v39 _titleForLanguage_];

  sub_21E57B67C();
  v36 = v35;

  *(v20 + 88) = v36;
  v37 = swift_task_alloc();
  *(v20 + 96) = v37;
  *v37 = v20;
  v37[1] = sub_21E52BA54;
  OUTLINED_FUNCTION_55();

  return sub_21E52BBB4();
}

uint64_t sub_21E52BA54()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  *(v6 + 104) = v5;

  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_21E52BB54()
{
  OUTLINED_FUNCTION_29();

  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1(v2);
}

uint64_t sub_21E52BBB4()
{
  OUTLINED_FUNCTION_29();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v1[11] = v5;
  v1[12] = v6;
  v1[9] = v7;
  v1[10] = v8;
  v1[8] = v9;
  v1[17] = *v0;
  v10 = sub_21E57B08C();
  v1[18] = v10;
  OUTLINED_FUNCTION_6(v10);
  v1[19] = v11;
  v1[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8950, &unk_21E57C4D0);
  v1[21] = swift_task_alloc();
  v12 = sub_21E57B06C();
  v1[22] = v12;
  OUTLINED_FUNCTION_6(v12);
  v1[23] = v13;
  v1[24] = swift_task_alloc();
  v14 = sub_21E57B10C();
  v1[25] = v14;
  OUTLINED_FUNCTION_6(v14);
  v1[26] = v15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v16 = sub_21E57B5EC();
  v1[30] = v16;
  OUTLINED_FUNCTION_6(v16);
  v1[31] = v17;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v18);
}

char *sub_21E52BDFC()
{
  v148 = v0;
  objc_opt_self();
  OUTLINED_FUNCTION_46();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    goto LABEL_30;
  }

  v2 = v1;
  v3 = **(v0 + 104);
  v4 = *(v0 + 64);
  v5 = OUTLINED_FUNCTION_60();
  v7 = sub_21E52D23C(v5, v6, v3);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x277D84FA0];
  }

  v9 = sub_21E52FD84(v2, &selRef_recipients, &qword_2812254C0, 0x277CD3E90);
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if ([v2 speakableGroupName])
  {
    OUTLINED_FUNCTION_85();

    v11 = [v2 spokenPhrase];

    v12 = sub_21E57B67C();
    v14 = v13;

LABEL_10:

    v15 = OUTLINED_FUNCTION_79();
    sub_21E543EB0(v15, v16, v8);
    OUTLINED_FUNCTION_103();
    if (v2)
    {
      v17 = *(v0 + 64);

      goto LABEL_77;
    }

    v27 = *(v0 + 104);
    v28 = *(v0 + 88);

    sub_21E576044(&v147, v12, v14);

    swift_isUniquelyReferenced_nonNull_native();
    v147 = *v27;
    sub_21E545AB0(v8, v28);
    *v27 = v147;
    sub_21E57B5BC();

    v29 = sub_21E57B5DC();
    v30 = sub_21E57B85C();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 272);
    v34 = *(v0 + 240);
    v33 = *(v0 + 248);
    if (v31)
    {
      v136 = *(v0 + 88);
      v137 = *(v0 + 96);
      v140 = *(v0 + 64);
      v143 = *(v0 + 240);
      v35 = OUTLINED_FUNCTION_43();
      v147 = OUTLINED_FUNCTION_104();
      *v35 = 136315650;
      v36 = OUTLINED_FUNCTION_105();
      v138 = v32;
      v38 = sub_21E5553D8(v36, v37, &v147);

      *(v35 + 4) = v38;
      *(v35 + 12) = 2080;
      v39 = OUTLINED_FUNCTION_79();
      v42 = sub_21E5553D8(v39, v40, v41);

      *(v35 + 14) = v42;
      *(v35 + 22) = 2080;
      *(v35 + 24) = sub_21E5553D8(v136, v137, &v147);
      _os_log_impl(&dword_21E527000, v29, v30, "%s: Added %s to inSendMessageIntentCache for %s", v35, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_39();

      (*(v33 + 8))(v138, v143);
    }

    else
    {

      (*(v33 + 8))(v32, v34);
    }

LABEL_30:
    objc_opt_self();
    OUTLINED_FUNCTION_46();
    v43 = swift_dynamicCastObjCClass();
    if (v43)
    {
      v44 = v43;
      v45 = *(v0 + 64);
      v46 = sub_21E52FD84(v44, &selRef_contacts, &qword_2812254C0, 0x277CD3E90);
      if (v46)
      {
        v47 = sub_21E529E5C(v46);

        if (v47 >= 2)
        {
          v49 = *(v0 + 88);
          v48 = *(v0 + 96);
          (*(*(v0 + 208) + 104))(*(v0 + 232), *MEMORY[0x277D60F20], *(v0 + 200));
          v50 = sub_21E57B0FC();
          v52 = v51;
          v53 = OUTLINED_FUNCTION_59();
          v54(v53);
          if (v50 == v49 && v52 == v48)
          {
          }

          else
          {
            v56 = sub_21E57BB3C();

            if ((v56 & 1) == 0)
            {
LABEL_72:
              sub_21E57B5BC();

              v103 = sub_21E57B5DC();
              sub_21E57B85C();

              v104 = OUTLINED_FUNCTION_77();
              v105 = *(v0 + 264);
              v107 = *(v0 + 240);
              v106 = *(v0 + 248);
              if (v104)
              {
                v108 = *(v0 + 88);
                v145 = *(v0 + 80);
                v139 = *(v0 + 96);
                v141 = *(v0 + 72);
                v146 = *(v0 + 264);
                v109 = OUTLINED_FUNCTION_43();
                v147 = OUTLINED_FUNCTION_104();
                *v109 = 136315650;
                v110 = OUTLINED_FUNCTION_105();
                v112 = sub_21E5553D8(v110, v111, &v147);

                *(v109 + 4) = v112;
                *(v109 + 12) = 2080;
                *(v109 + 14) = sub_21E5553D8(v108, v139, &v147);
                *(v109 + 22) = 2080;
                *(v109 + 24) = sub_21E5553D8(v141, v145, &v147);
                OUTLINED_FUNCTION_12();
                _os_log_impl(v113, v114, v115, v116, v117, 0x20u);
                OUTLINED_FUNCTION_64();
                swift_arrayDestroy();
                OUTLINED_FUNCTION_20();
                OUTLINED_FUNCTION_30();

                (*(v106 + 8))(v146, v107);
              }

              else
              {

                (*(v106 + 8))(v105, v107);
              }

LABEL_76:

              goto LABEL_77;
            }
          }

          if ([v44 callCapability] != 2)
          {
            goto LABEL_72;
          }

LABEL_71:
          OUTLINED_FUNCTION_51();
          v100 = *(v0 + 64);
          v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8928, &qword_21E57C4A8);
          v102 = OUTLINED_FUNCTION_107(v101);
          OUTLINED_FUNCTION_13(v102, xmmword_21E57C390);

          goto LABEL_77;
        }
      }
    }

    objc_opt_self();
    OUTLINED_FUNCTION_46();
    v57 = swift_dynamicCastObjCClass();
    if (!v57)
    {
      goto LABEL_45;
    }

    v58 = v57;
    v59 = *(v0 + 64);
    v60 = [v58 mediaContainer];
    if (v60)
    {

      goto LABEL_43;
    }

    v91 = sub_21E52FD84(v58, &selRef_mediaItems, &qword_281225510, 0x277CD3DB8);
    if (v91)
    {
      v2 = v91;
      if (sub_21E5351E4())
      {
        sub_21E55BF7C();
        if ((v2 & 0xC000000000000001) != 0)
        {
          goto LABEL_96;
        }

        goto LABEL_43;
      }
    }

    goto LABEL_76;
  }

  if (!sub_21E5351E4() || (v18 = OUTLINED_FUNCTION_85(), v142 = sub_21E529E5C(v18), v142 > 3))
  {
LABEL_26:

    goto LABEL_77;
  }

  v19 = 0;
  v20 = v10 & 0xC000000000000001;
  while (1)
  {
    if (v2 == v19)
    {
      if (v142)
      {
        v147 = MEMORY[0x277D84F90];
        result = sub_21E562860(0, v142 & ~(v142 >> 63), 0);
        if (v142 < 0)
        {
          __break(1u);
          return result;
        }

        v120 = 0;
        v2 = v147;
        do
        {
          if (v20)
          {
            v121 = MEMORY[0x223D5CE50](v120, v10);
          }

          else
          {
            v121 = *(v10 + 8 * v120 + 32);
          }

          v122 = v121;
          v123 = [v121 displayName];
          v124 = sub_21E57B67C();
          v126 = v125;

          v147 = v2;
          v128 = *(v2 + 16);
          v127 = *(v2 + 24);
          if (v128 >= v127 >> 1)
          {
            v130 = OUTLINED_FUNCTION_40(v127);
            sub_21E562860(v130, v128 + 1, 1);
            v2 = v147;
          }

          ++v120;
          *(v2 + 16) = v128 + 1;
          v129 = v2 + 16 * v128;
          *(v129 + 32) = v124;
          *(v129 + 40) = v126;
        }

        while (v142 != v120);
      }

      else
      {

        v2 = MEMORY[0x277D84F90];
      }

      v147 = v2;

      sub_21E578154(&v147);

      *(v0 + 56) = v147;
      v133 = OUTLINED_FUNCTION_38();
      __swift_instantiateConcreteTypeFromMangledNameV2(v133, v134);
      sub_21E535154(&qword_281225538, &qword_27CEC8958, &unk_21E57C580);
      LOBYTE(v2) = v0 + 56;
      v12 = sub_21E57B64C();
      v14 = v135;

      goto LABEL_10;
    }

    if (v20)
    {
      v21 = MEMORY[0x223D5CE50](v19, v10);
    }

    else
    {
      if (v19 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_95;
      }

      v21 = *(v10 + 8 * v19 + 32);
    }

    v22 = v21;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    v23 = sub_21E52FF30(v21, &selRef_contactIdentifier);
    v25 = v24;

    if (v25)
    {

      v26 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v26 = v23 & 0xFFFFFFFFFFFFLL;
      }

      ++v19;
      if (v26)
      {
        continue;
      }
    }

    goto LABEL_26;
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  MEMORY[0x223D5CE50](0, v2);

  swift_unknownObjectRelease();
LABEL_43:
  if ((sub_21E57B70C() & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_45:
  v61 = *(v0 + 224);
  v62 = *(v0 + 200);
  v63 = *(v0 + 208);
  v64 = *(v0 + 88);
  v65 = *(v0 + 96);
  v144 = *(v63 + 104);
  v144(v61, *MEMORY[0x277D60EA8], v62);
  v66 = sub_21E57B0FC();
  v68 = v67;
  v69 = *(v63 + 8);
  v69(v61, v62);
  if (v66 == v64 && v68 == v65)
  {
  }

  else
  {
    v71 = OUTLINED_FUNCTION_102();

    if ((v71 & 1) == 0)
    {
      objc_opt_self();
      OUTLINED_FUNCTION_46();
      if (!swift_dynamicCastObjCClass())
      {
        goto LABEL_56;
      }

      v72 = *(v0 + 216);
      v73 = *(v0 + 200);
      v75 = *(v0 + 88);
      v74 = *(v0 + 96);
      v144(v72, *MEMORY[0x277D60F48], v73);
      v76 = sub_21E57B0FC();
      v78 = v77;
      v69(v72, v73);
      if (v76 == v75 && v78 == v74)
      {
      }

      else
      {
        v80 = OUTLINED_FUNCTION_102();

        if ((v80 & 1) == 0)
        {
LABEL_56:
          v82 = *(v0 + 152);
          v81 = *(v0 + 160);
          v83 = *(v0 + 144);
          v84 = *(v0 + 64);
          sub_21E534F3C(*(v0 + 128) + OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_suggestionsForIntentProvider, v0 + 16);
          __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
          *v81 = v84;
          (*(v82 + 104))(v81, *MEMORY[0x277D60918], v83);
          v85 = v84;
          v86 = swift_task_alloc();
          *(v0 + 304) = v86;
          *v86 = v0;
          v86[1] = sub_21E52CD94;
          OUTLINED_FUNCTION_56();

          return sub_21E560D3C();
        }
      }

      OUTLINED_FUNCTION_51();
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8928, &qword_21E57C4A8);
      v132 = OUTLINED_FUNCTION_107(v131);
      OUTLINED_FUNCTION_13(v132, xmmword_21E57C390);

LABEL_77:
      OUTLINED_FUNCTION_23();

      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_56();

      __asm { BRAA            X2, X16 }
    }
  }

  v90 = *(v0 + 168);
  v89 = *(v0 + 176);
  sub_21E52D324(*(v0 + 64));
  if (__swift_getEnumTagSinglePayload(v90, 1, v89) == 1)
  {
    sub_21E5350C0(*(v0 + 168), &qword_27CEC8950, &unk_21E57C4D0);
    goto LABEL_77;
  }

  v93 = *(v0 + 184);
  v92 = *(v0 + 192);
  v94 = *(v0 + 176);
  v95 = *(v0 + 128);
  (*(v93 + 32))(v92, *(v0 + 168), v94);
  __swift_project_boxed_opaque_existential_1((v95 + OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_suggestionsForIntentProvider), *(v95 + OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_suggestionsForIntentProvider + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8930, &unk_21E57C4B0);
  v96 = (*(v93 + 80) + 32) & ~*(v93 + 80);
  v97 = swift_allocObject();
  *(v0 + 280) = v97;
  *(v97 + 16) = xmmword_21E57C390;
  (*(v93 + 16))(v97 + v96, v92, v94);
  v98 = swift_task_alloc();
  *(v0 + 288) = v98;
  *v98 = v0;
  v98[1] = sub_21E52CBA8;
  OUTLINED_FUNCTION_56();

  return sub_21E5615B8();
}

uint64_t sub_21E52CBA8()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  *(v6 + 296) = v5;

  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_21E52CCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_91();
  v14 = v12[23];
  v13 = v12[24];
  v15 = v12[22];
  if (v12[37])
  {
    sub_21E52EA08(v12[37], v12[11], v12[12]);
  }

  (*(v14 + 8))(v13, v15);
  OUTLINED_FUNCTION_23();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_55();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_21E52CD94(uint64_t a1)
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v7 + 312) = v6;

  v8 = OUTLINED_FUNCTION_90();
  v9(v8);
  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_21E52D0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (sub_21E52F7C4(a1), (v3 & 1) != 0))
  {
  }

  else
  {
    OUTLINED_FUNCTION_78();
  }

  return OUTLINED_FUNCTION_87();
}

uint64_t sub_21E52D130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_21E52F7C4(a1);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

double sub_21E52D180@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_21E52F7C4(a1), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_21E534EE0(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_21E52D1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_21E52F7C4(a1);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21E52D23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_21E52F7C4(a1);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

void *sub_21E52D28C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_21E52F914(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_21E52D2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (sub_21E52F7C4(a1), (v3 & 1) != 0))
  {
  }

  else
  {
    OUTLINED_FUNCTION_78();
  }

  return OUTLINED_FUNCTION_87();
}

void sub_21E52D324(uint64_t a1)
{
  OUTLINED_FUNCTION_93();
  v128 = v1;
  v3 = v2;
  v142 = v4;
  sub_21E57B5EC();
  OUTLINED_FUNCTION_0();
  v131 = v6;
  v132 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14();
  v130 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8960, &unk_21E57C4E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v126 - v10;
  v135 = sub_21E57AB6C();
  OUTLINED_FUNCTION_0();
  v129 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14();
  v133 = v15 - v14;
  v16 = sub_21E57ACDC();
  OUTLINED_FUNCTION_0();
  v134 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14();
  v21 = v20 - v19;
  v136 = sub_21E57AFEC();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_14();
  v137 = (v26 - v25);
  sub_21E57B03C();
  OUTLINED_FUNCTION_0();
  v140 = v28;
  v141 = v27;
  v29 = MEMORY[0x28223BE20](v27);
  v138 = &v126 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v139 = &v126 - v31;
  v32 = [v3 _className];
  v33 = sub_21E57B67C();
  v35 = v34;

  v36 = v33 == 0xD000000000000013 && 0x800000021E57F160 == v35;
  if (!v36 && (OUTLINED_FUNCTION_67(0xD000000000000013) & 1) == 0)
  {
    OUTLINED_FUNCTION_58();
    v127 = v59;
    v60 = v33 == 0xD000000000000013 && 0x800000021E57F180 == v35;
    if (v60 || (OUTLINED_FUNCTION_67(0xD000000000000013) & 1) != 0)
    {

      v61 = sub_21E57B66C();
      v62 = [v3 valueForKeyPath_];

      if (v62)
      {
        sub_21E57B8EC();
        swift_unknownObjectRelease();
      }

      else
      {
        v144 = 0u;
        v145 = 0u;
      }

      v146 = v144;
      v147 = v145;
      if (*(&v145 + 1))
      {
        sub_21E535114(0, &qword_2812254F8, 0x277CBEAB8);
        if (swift_dynamicCast())
        {
          v63 = v143;
          sub_21E57ACBC();
          v64 = sub_21E57AC9C();
          (*(v134 + 8))(v21, v16);
          [v63 setCalendar_];

          v65 = v136;
          v66 = v137;
          v67 = v127;
          *v137 = 0xD000000000000063;
          v66[1] = v67;
          (*(v23 + 104))(v66, *MEMORY[0x277D60868], v65);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8970, &unk_21E57C4F0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_21E57C3A0;
          *(inited + 32) = 1701669236;
          *(inited + 40) = 0xE400000000000000;
          *(inited + 72) = v135;
          v69 = MEMORY[0x277CC8990];
          *(inited + 80) = sub_21E535198(&qword_2812260D0, MEMORY[0x277CC8990]);
          OUTLINED_FUNCTION_28();
          *(inited + 88) = sub_21E535198(v70, v69);
          OUTLINED_FUNCTION_27();
          *(inited + 96) = sub_21E535198(v71, v69);
          __swift_allocate_boxed_opaque_existential_3((inited + 48));
          sub_21E57AB5C();
          OUTLINED_FUNCTION_36();
          *(inited + 104) = v72;
          *(inited + 112) = v73;
          OUTLINED_FUNCTION_58();
          v49 = MEMORY[0x277D837D0];
          v74 = MEMORY[0x277D83808];
          *(inited + 144) = MEMORY[0x277D837D0];
          *(inited + 152) = v74;
          v75 = MEMORY[0x277D837F8];
          *(inited + 160) = MEMORY[0x277D837D8];
          *(inited + 168) = v75;
          *(inited + 120) = 0xD000000000000012;
          *(inited + 128) = v76;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8978, &qword_21E57C650);
          v77 = OUTLINED_FUNCTION_106(inited);
          OUTLINED_FUNCTION_96(v77);
          v79 = v140;
          v78 = v141;
          v80 = OUTLINED_FUNCTION_62();
          v81(v80);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8980, &qword_21E57C500);
          OUTLINED_FUNCTION_106(MEMORY[0x277D84F90]);
          OUTLINED_FUNCTION_49();
          sub_21E57B05C();

          (*(v79 + 8))(v23 + 104, v78);
          goto LABEL_8;
        }

LABEL_39:
        v58 = 1;
        v49 = v142;
        goto LABEL_40;
      }

      v82 = &qword_27CEC8968;
      v83 = qword_21E57D170;
      v84 = &v146;
    }

    else
    {
      if (v33 == 0xD000000000000011 && 0x800000021E57F1A0 == v35)
      {
      }

      else
      {
        v86 = OUTLINED_FUNCTION_67(0xD000000000000011);

        if ((v86 & 1) == 0)
        {
          v87 = v130;
          sub_21E57B5BC();
          v88 = v3;
          v89 = sub_21E57B5DC();
          v90 = sub_21E57B85C();

          if (OUTLINED_FUNCTION_77())
          {
            v91 = OUTLINED_FUNCTION_57();
            *&v146 = swift_slowAlloc();
            *v91 = 136315394;
            v92 = sub_21E57BC2C();
            v94 = sub_21E5553D8(v92, v93, &v146);

            *(v91 + 4) = v94;
            *(v91 + 12) = 2080;
            v95 = [v88 _className];
            sub_21E57B67C();

            v96 = OUTLINED_FUNCTION_83();
            v99 = sub_21E5553D8(v96, v97, v98);

            *(v91 + 14) = v99;
            _os_log_impl(&dword_21E527000, v89, v90, "%s: Not indexing time intent - %s", v91, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_30();
            OUTLINED_FUNCTION_39();
          }

          (*(v131 + 8))(v87, v132);
          goto LABEL_39;
        }
      }

      v100 = sub_21E57B66C();
      v101 = [v3 valueForKeyPath_];

      if (v101)
      {
        sub_21E57B8EC();
        swift_unknownObjectRelease();
      }

      else
      {
        v144 = 0u;
        v145 = 0u;
      }

      v102 = v135;
      v146 = v144;
      v147 = v145;
      if (*(&v145 + 1))
      {
        v103 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v11, v103 ^ 1u, 1, v102);
        if (__swift_getEnumTagSinglePayload(v11, 1, v102) != 1)
        {
          v104 = v129;
          v105 = v133;
          (*(v129 + 32))(v133, v11, v102);
          v106 = v136;
          v107 = v137;
          v108 = v127;
          *v137 = 0xD000000000000063;
          v107[1] = v108;
          (*(v23 + 104))(v107, *MEMORY[0x277D60868], v106);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8970, &unk_21E57C4F0);
          v109 = swift_initStackObject();
          *(v109 + 16) = xmmword_21E57C3A0;
          *(v109 + 32) = 1701669236;
          *(v109 + 40) = 0xE400000000000000;
          *(v109 + 72) = v102;
          v110 = MEMORY[0x277CC8990];
          *(v109 + 80) = sub_21E535198(&qword_2812260D0, MEMORY[0x277CC8990]);
          OUTLINED_FUNCTION_28();
          *(v109 + 88) = sub_21E535198(v111, v110);
          OUTLINED_FUNCTION_27();
          *(v109 + 96) = sub_21E535198(v112, v110);
          boxed_opaque_existential_3 = __swift_allocate_boxed_opaque_existential_3((v109 + 48));
          (*(v104 + 16))(boxed_opaque_existential_3, v105, v102);
          OUTLINED_FUNCTION_36();
          *(v109 + 104) = v114;
          *(v109 + 112) = v115;
          OUTLINED_FUNCTION_58();
          v116 = MEMORY[0x277D83808];
          *(v109 + 144) = MEMORY[0x277D837D0];
          *(v109 + 152) = v116;
          v117 = MEMORY[0x277D837F8];
          *(v109 + 160) = MEMORY[0x277D837D8];
          *(v109 + 168) = v117;
          *(v109 + 120) = 0xD000000000000012;
          *(v109 + 128) = v118;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8978, &qword_21E57C650);
          v49 = MEMORY[0x277D837E0];
          OUTLINED_FUNCTION_38();
          sub_21E57B62C();
          v119 = v139;
          sub_21E57B00C();
          v121 = v140;
          v120 = v141;
          (*(v140 + 16))(v138, v119, v141);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8980, &qword_21E57C500);
          sub_21E57B62C();
          OUTLINED_FUNCTION_49();
          sub_21E57B05C();
          (*(v121 + 8))(v119, v120);
          (*(v104 + 8))(v133, v102);
          goto LABEL_8;
        }
      }

      else
      {
        sub_21E5350C0(&v146, &qword_27CEC8968, qword_21E57D170);
        OUTLINED_FUNCTION_26();
        __swift_storeEnumTagSinglePayload(v122, v123, v124, v102);
      }

      v82 = &qword_27CEC8960;
      v83 = &unk_21E57C4E0;
      v84 = v11;
    }

    sub_21E5350C0(v84, v82, v83);
    goto LABEL_39;
  }

  objc_opt_self();
  v37 = swift_dynamicCastObjCClass();
  if (!v37)
  {
    goto LABEL_39;
  }

  v38 = v37;
  OUTLINED_FUNCTION_58();
  v39 = v136;
  v40 = v137;
  *v137 = 0xD00000000000005ELL;
  v40[1] = v41;
  (*(v23 + 104))(v40, *MEMORY[0x277D60868], v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8970, &unk_21E57C4F0);
  v42 = swift_initStackObject();
  *(v42 + 16) = xmmword_21E57C3A0;
  *(v42 + 32) = 0x6E6F697461727564;
  *(v42 + 40) = 0xE800000000000000;
  v43 = v3;
  [v38 duration];
  v44 = MEMORY[0x277D83A30];
  *(v42 + 72) = MEMORY[0x277D839F8];
  *(v42 + 80) = v44;
  v45 = MEMORY[0x277D83A28];
  *(v42 + 88) = MEMORY[0x277D83A08];
  *(v42 + 96) = v45;
  *(v42 + 48) = v46;
  OUTLINED_FUNCTION_36();
  *(v42 + 104) = v47;
  *(v42 + 112) = v48;
  OUTLINED_FUNCTION_58();
  v49 = MEMORY[0x277D837D0];
  v50 = MEMORY[0x277D83808];
  *(v42 + 144) = MEMORY[0x277D837D0];
  *(v42 + 152) = v50;
  v51 = MEMORY[0x277D837F8];
  *(v42 + 160) = MEMORY[0x277D837D8];
  *(v42 + 168) = v51;
  *(v42 + 120) = 0xD000000000000012;
  *(v42 + 128) = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8978, &qword_21E57C650);
  v53 = OUTLINED_FUNCTION_106(v42);
  OUTLINED_FUNCTION_96(v53);
  v55 = v140;
  v54 = v141;
  v56 = OUTLINED_FUNCTION_62();
  v57(v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8980, &qword_21E57C500);
  OUTLINED_FUNCTION_106(MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_49();
  sub_21E57B05C();

  (*(v55 + 8))(v23 + 104, v54);
LABEL_8:
  v58 = 0;
LABEL_40:
  v125 = sub_21E57B06C();
  __swift_storeEnumTagSinglePayload(v49, v58, 1, v125);
  OUTLINED_FUNCTION_100();
}

void sub_21E52E01C(uint64_t a1)
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_21E57B10C();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14();
  v17 = v16 - v15;
  (*(v13 + 104))(v16 - v15, *MEMORY[0x277D60E80], v11);
  v18 = sub_21E57B0FC();
  v20 = v19;
  (*(v13 + 8))(v17, v11);
  if (v18 == v8 && v20 == v6)
  {
  }

  else
  {
    v22 = sub_21E57BB3C();

    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    if ((v22 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  sub_21E540E54(v8, v6, v4, v2, v29);
  v23 = v29[0];
  v24 = v29[1];
  v25 = v29[2];
  v26 = v29[3];
  v27 = v29[4];
  v28 = v29[5];
LABEL_9:
  *v10 = v23;
  v10[1] = v24;
  v10[2] = v25;
  v10[3] = v26;
  v10[4] = v27;
  v10[5] = v28;
  OUTLINED_FUNCTION_100();
}

void sub_21E52E1B8(uint64_t a1)
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v3 = sub_21E57B5EC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14();
  v9 = v8 - v7;
  sub_21E57B5BC();
  v10 = sub_21E57B5DC();
  v11 = sub_21E57B84C();
  if (os_log_type_enabled(v10, v11))
  {
    v17 = v2;
    v12 = OUTLINED_FUNCTION_50();
    v13 = OUTLINED_FUNCTION_43();
    v18 = v13;
    *v12 = 136315138;
    v14 = sub_21E57BC2C();
    v16 = sub_21E5553D8(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_21E527000, v10, v11, "%s: Ranking SiriKit Intent phrases", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    OUTLINED_FUNCTION_31();
    v2 = v17;
    OUTLINED_FUNCTION_39();
  }

  (*(v5 + 8))(v9, v3);

  sub_21E5427F8(v2);

  OUTLINED_FUNCTION_100();
}

uint64_t sub_21E52E370(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v9 = a2;
  v4 = *(result + 16);
  for (i = (result + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_21E576044(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_21E52E418(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v10 = a2;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  if ((v4 & *(result + 56)) != 0)
  {
    while (1)
    {
LABEL_7:
      OUTLINED_FUNCTION_37();
      v7 = *v6;
      v8 = v6[1];

      sub_21E576044(&v9, v7, v8);
    }
  }

  while (1)
  {
    v5 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v5 >= ((v3 + 63) >> 6))
    {

      return v10;
    }

    ++v2;
    if (*(result + 56 + 8 * v5))
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21E52E500()
{
  v1 = OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_source;
  sub_21E57B3DC();
  OUTLINED_FUNCTION_82();
  (*(v2 + 8))(v0 + v1);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_suggestionsForIntentProvider));
  return v0;
}

uint64_t sub_21E52E574()
{
  sub_21E52E500();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SiriKitIntentSource(uint64_t a1)
{
  result = qword_2812260B0;
  if (!qword_2812260B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E52E620(uint64_t a1)
{
  result = sub_21E57B3DC();
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

uint64_t sub_21E52E6D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_source;
  v5 = sub_21E57B3DC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_21E52E750(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21E52E824;

  return sub_21E532DE4(v8, a2, a3, v7);
}

uint64_t sub_21E52E824()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_5();

  return v4(v3);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_21E52E970(char a1)
{
  result = 0x656D614E707061;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    default:
      result = 0xD000000000000021;
      break;
  }

  return result;
}

uint64_t sub_21E52EA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v89 = a2;
  v90 = a3;
  v88 = sub_21E57B23C();
  v4 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_21E57AFDC();
  v6 = *(v86 - 8);
  v7 = MEMORY[0x28223BE20](v86);
  v85 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v84 = &v73 - v9;
  v10 = sub_21E57AF9C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21E57B5EC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v16);
  v19 = &v73 - v18;
  v20 = *(a1 + 16);
  if (v20)
  {
    v76 = v17;
    v74 = v15;
    v75 = v14;
    v22 = *(v11 + 16);
    v21 = v11 + 16;
    v23 = a1 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v80 = *(v21 + 56);
    v81 = v22;
    v78 = (v4 + 8);
    v79 = (v6 + 8);
    v77 = (v21 - 8);
    v24 = MEMORY[0x277D84F90];
    v82 = v21;
    v83 = v10;
    do
    {
      v81(v13, v23, v10);
      v25 = v84;
      sub_21E57AF5C();
      v26 = sub_21E57AFAC();
      v93 = v27;
      v94 = v26;
      v28 = *v79;
      v29 = v25;
      v30 = v86;
      (*v79)(v29, v86);
      v31 = v85;
      sub_21E57AF5C();
      v32 = sub_21E57AFCC();
      v91 = v33;
      v92 = v32;
      v28(v31, v30);
      v34 = v89;
      v35 = v90;
      if (!v90)
      {
        v34 = sub_21E57AF8C();
        v35 = v36;
      }

      v37 = v87;
      sub_21E57AF6C();
      v38 = sub_21E57B22C();
      v40 = v39;
      (*v78)(v37, v88);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21E543754();
        v24 = v48;
      }

      v42 = *(v24 + 16);
      v41 = *(v24 + 24);
      v95 = v24;
      if (v42 >= v41 >> 1)
      {
        sub_21E543754();
        v95 = v49;
      }

      v10 = v83;
      (*v77)(v13, v83);
      v44 = v94;
      v43 = v95;
      *(v95 + 16) = v42 + 1;
      v24 = v43;
      v45 = v43 + 96 * v42;
      v46 = v92;
      v47 = v93;
      *(v45 + 32) = v44;
      *(v45 + 40) = v47;
      *(v45 + 48) = v46;
      *(v45 + 56) = v91;
      *(v45 + 64) = v34;
      *(v45 + 72) = v35;
      *(v45 + 80) = v38;
      *(v45 + 88) = v40;
      *(v45 + 96) = 0u;
      *(v45 + 112) = 0u;
      v23 += v80;
      --v20;
    }

    while (v20);
    v50 = v24;
    v51 = v76;
    sub_21E57B5BC();

    v52 = sub_21E57B5DC();
    v53 = sub_21E57B85C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = v55;
      v97 = v55;
      *v54 = 136315138;
      v57 = *(v50 + 16);
      v58 = MEMORY[0x277D84F90];
      if (v57)
      {
        v93 = v55;
        v94 = v54;
        v96 = MEMORY[0x277D84F90];
        sub_21E562860(0, v57, 0);
        v58 = v96;
        v59 = (v50 + 40);
        do
        {
          v61 = *(v59 - 1);
          v60 = *v59;
          v96 = v58;
          v63 = *(v58 + 16);
          v62 = *(v58 + 24);

          if (v63 >= v62 >> 1)
          {
            sub_21E562860((v62 > 1), v63 + 1, 1);
            v58 = v96;
          }

          *(v58 + 16) = v63 + 1;
          v64 = v58 + 16 * v63;
          *(v64 + 32) = v61;
          *(v64 + 40) = v60;
          v59 += 12;
          --v57;
        }

        while (v57);
        v51 = v76;
        v56 = v93;
        v54 = v94;
      }

      v68 = MEMORY[0x223D5CC90](v58, MEMORY[0x277D837D0]);
      v70 = v69;

      v71 = sub_21E5553D8(v68, v70, &v97);

      *(v54 + 4) = v71;
      v50 = v95;

      _os_log_impl(&dword_21E527000, v52, v53, "SuggestionsForIntentProvider: Extracted suggestion phrases: %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      MEMORY[0x223D5D740](v56, -1, -1);
      MEMORY[0x223D5D740](v54, -1, -1);

      (*(v74 + 8))(v51, v75);
    }

    else
    {

      (*(v74 + 8))(v51, v75);
    }
  }

  else
  {
    sub_21E57B5BC();
    v65 = sub_21E57B5DC();
    v66 = sub_21E57B85C();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_21E527000, v65, v66, "SuggestionsForIntentProvider: Empty suggestion list", v67, 2u);
      MEMORY[0x223D5D740](v67, -1, -1);
    }

    (*(v15 + 8))(v19, v14);
    return MEMORY[0x277D84F90];
  }

  return v50;
}

id sub_21E52F134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_21E57AC4C();
  v13 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) != 1)
  {
    v13 = sub_21E57AC1C();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_21E57AC1C();
    v15 = OUTLINED_FUNCTION_83();
    v16(v15);
  }

  v17 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v17;
}

uint64_t sub_21E52F2C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E54A2F8();
  *a1 = result;
  return result;
}

uint64_t sub_21E52F2F8(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_21E52F358(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_21E57B7AC();
  }

  return result;
}

uint64_t sub_21E52F3B4(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void *sub_21E52F3FC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8940, &qword_21E57C4C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_21E52F4A0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8928, &qword_21E57C4A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 96);
  return v4;
}

void *sub_21E52F54C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_6(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21E52F640(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8938, &qword_21E57E680);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

uint64_t sub_21E52F6C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_21E52F6F0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void sub_21E52F78C(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

unint64_t sub_21E52F7C4(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_66(a1);
  OUTLINED_FUNCTION_75(v3);
  v4 = sub_21E57BBCC();

  return sub_21E52F9AC(v2, v1, v4);
}

unint64_t sub_21E52F81C(uint64_t a1)
{
  OUTLINED_FUNCTION_66(a1);
  v3 = MEMORY[0x223D5D090](0);
  OUTLINED_FUNCTION_75(v3);
  v4 = sub_21E57BBCC();

  return sub_21E52F9AC(v2, v1, v4);
}

unint64_t sub_21E52F880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21E57BB8C();
  v8 = sub_21E57B6AC();
  OUTLINED_FUNCTION_75(v8);
  v9 = sub_21E57BBCC();

  return sub_21E52FA60(a1, a2, a3, a4, v9);
}

unint64_t sub_21E52F914(uint64_t a1)
{
  sub_21E57AC6C();
  sub_21E535198(&qword_27CEC8990, MEMORY[0x277CC95F0]);
  v2 = sub_21E57B63C();

  return sub_21E52FB5C(a1, v2);
}

unint64_t sub_21E52F9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_21E57BB3C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_21E52FA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_21E57BB3C() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_21E57BB3C() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_21E52FB5C(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_21E57AC6C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_21E535198(&qword_27CEC8998, MEMORY[0x277CC95F0]);
    v9 = sub_21E57B65C();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_21E52FD18(void *a1)
{
  v1 = [a1 parametersByName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21E57B60C();

  return v3;
}

uint64_t sub_21E52FD84(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_21E535114(0, a3, a4);
  v8 = sub_21E57B78C();

  return v8;
}

uint64_t sub_21E52FDF8(void *a1)
{
  v1 = [a1 _validParameterCombinations];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88E0, &unk_21E57C450);
  sub_21E535114(0, &qword_2812254D8, 0x277CD3E58);
  sub_21E535154(&qword_281225528, &qword_27CEC88E0, &unk_21E57C450);
  v3 = sub_21E57B60C();

  return v3;
}

uint64_t sub_21E52FECC(void *a1)
{
  v1 = [a1 interaction];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21E57AC0C();

  return v3;
}

uint64_t sub_21E52FF30(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_21E57B67C();
  }

  else
  {
    OUTLINED_FUNCTION_78();
  }

  return OUTLINED_FUNCTION_87();
}

void *sub_21E52FF88(void *result, char *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v19 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 96 * (v17 | (v16 << 6)));
      memcpy(__dst, v18, 0x60uLL);
      memmove(v11, v18, 0x60uLL);
      if (v15 == v10)
      {
        break;
      }

      v11 += 96;
      result = sub_21E534CEC(__dst, v20);
      v12 = v15;
      v13 = v16;
    }

    sub_21E534CEC(__dst, v20);
    v13 = v16;
LABEL_19:
    v7 = v19;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_21E53011C(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
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
            v10 = v12;
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      ++v11;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21E530274(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
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
            v10 = v12;
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
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
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
  return result;
}

uint64_t sub_21E5303D0(void *a1, uint64_t a2, uint64_t a3)
{
  v42 = sub_21E57B5EC();
  v6 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21E57B10C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DefaultEligibilityCriteria();
  v44[3] = v13;
  v44[4] = &off_282F92F38;
  v44[0] = a2;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v40 = v6;
    v41 = v10;

    v16 = a1;
    if ([v15 preferredCallProvider] == 1 && (v38 = __swift_project_boxed_opaque_existential_1(v44, v13), v17 = v41, v18 = *(v41 + 104), v36 = *MEMORY[0x277D60EC8], v35 = v18, v18(v12), v19 = v8, v20 = sub_21E57B0FC(), v39 = a3, v37 = *(v17 + 8), v37(v12, v9), v21 = v20, v8 = v19, v22 = sub_21E54A03C(v21), , (v22 & 1) != 0))
    {
      v35(v12, v36, v9);
      v23 = sub_21E57B0FC();

      v37(v12, v9);
    }

    else if ([v15 preferredCallProvider] == 2)
    {
      v24 = v41;
      (*(v41 + 104))(v12, *MEMORY[0x277D60F20], v9);
      v23 = sub_21E57B0FC();

      (*(v24 + 8))(v12, v9);
    }

    else
    {
      sub_21E57B5BC();
      v25 = sub_21E57B5DC();
      v26 = sub_21E57B85C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = v16;
        v29 = swift_slowAlloc();
        v43 = v29;
        *v27 = 136315138;
        v30 = sub_21E57BC2C();
        v32 = sub_21E5553D8(v30, v31, &v43);

        *(v27 + 4) = v32;
        _os_log_impl(&dword_21E527000, v25, v26, "%s: Can't map com.apple.InCallService to appropriate bundleId", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        v33 = v29;
        v16 = v28;
        MEMORY[0x223D5D740](v33, -1, -1);
        MEMORY[0x223D5D740](v27, -1, -1);
      }

      (*(v40 + 8))(v8, v42);
      v23 = 0xD000000000000017;
    }
  }

  else
  {
    v23 = 0xD000000000000017;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  return v23;
}

BOOL sub_21E530884(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v51 = a4;
  v12 = sub_21E57B5EC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DefaultEligibilityCriteria();
  v53[3] = v16;
  v53[4] = &off_282F92F38;
  v53[0] = a6;

  v17 = sub_21E52FF30(a3, &selRef_intentClass);
  if (!v18)
  {
    sub_21E57B5BC();
    v31 = sub_21E57B5DC();
    v32 = sub_21E57B85C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v52 = v34;
      *v33 = 136315138;
      v35 = sub_21E57BC2C();
      v37 = sub_21E5553D8(v35, v36, &v52);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_21E527000, v31, v32, "%s: Unable to fetch intent class for BMAppIntent", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x223D5D740](v34, -1, -1);
      MEMORY[0x223D5D740](v33, -1, -1);
    }

    (*(v13 + 8))(v15, v12);
    goto LABEL_18;
  }

  v19 = v17;
  v20 = v18;
  if (qword_281225880 != -1)
  {
    swift_once();
  }

  sub_21E5693C4(v19, v20, v51);
  if ((v21 & 1) == 0)
  {
    v22 = 0x6C7070612E6D6F63;
    if ((sub_21E57B70C() & 1) != 0 || (v23 = __swift_project_boxed_opaque_existential_1(v53, v16), v24 = *(*__swift_project_boxed_opaque_existential_1((*v23 + 16), *(*v23 + 40)) + 16), , sub_21E52D0C0(a1, a2, v24), v26 = v25, v28 = v27, , !v26) || (v29 = sub_21E543EB0(v19, v20, v28), , , v29))
    {
      if (!sub_21E543EB0(0xD00000000000001ALL, 0x800000021E57F220, a5))
      {
        v30 = v19 == 0xD000000000000013 && v20 == 0x800000021E57F240;
        if (!v30 && (sub_21E57BB3C() & 1) == 0)
        {
          v40 = 0xEE007377656E2E65;
          v41 = a1 == 0x6C7070612E6D6F63 && a2 == 0xEE007377656E2E65;
          if (!v41 && (sub_21E57BB3C() & 1) == 0)
          {
            v42 = sub_21E57B1DC();
            if (*(v42 + 16))
            {
              v43 = sub_21E52F7C4(0x6C7070612E6D6F63);
              if (v44)
              {
                v45 = (*(v42 + 56) + 16 * v43);
                v22 = *v45;
                v40 = v45[1];
              }
            }

            if (v22 == a1 && v40 == a2)
            {
            }

            else
            {
              v47 = sub_21E57BB3C();

              if ((v47 & 1) == 0)
              {

LABEL_40:
                v38 = 1;
                goto LABEL_19;
              }
            }
          }

          if (v19 == 0xD000000000000011 && v20 == 0x800000021E57F260)
          {
          }

          else
          {
            v49 = sub_21E57BB3C();

            if ((v49 & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v38 = !sub_21E543EB0(0x657449616964656DLL, 0xEA0000000000736DLL, v51);
          goto LABEL_19;
        }
      }
    }
  }

LABEL_18:
  v38 = 0;
LABEL_19:
  __swift_destroy_boxed_opaque_existential_0Tm(v53);
  return v38;
}

uint64_t sub_21E530D48(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DefaultEligibilityCriteria();
  v14[3] = v10;
  v14[4] = &off_282F92F38;
  v14[0] = a4;
  v11 = a1 == 0xD000000000000017 && 0x800000021E57EDC0 == a2;
  if (v11 || (sub_21E57BB3C() & 1) != 0)
  {
    v12 = *__swift_project_boxed_opaque_existential_1(v14, v10);

    a1 = sub_21E5303D0(a3, v12, a5);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  return a1;
}

uint64_t sub_21E530E48@<X0>(void *a1@<X0>, void (**a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X8>)
{
  v44 = a6;
  v45 = a2;
  v46 = a4;
  v13 = sub_21E57B5EC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DefaultEligibilityCriteria();
  v47[3] = v17;
  v47[4] = &off_282F92F38;
  v47[0] = a5;

  if (!sub_21E52FD18(a1))
  {
    v44 = v13;
    v45 = v14;
    sub_21E57B5BC();
    v33 = v46;

    v34 = sub_21E57B5DC();
    v35 = sub_21E57B86C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v48 = v37;
      *v36 = 136315394;
      v38 = sub_21E57BC2C();
      v40 = sub_21E5553D8(v38, v39, &v48);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_21E5553D8(a3, v33, &v48);
      _os_log_impl(&dword_21E527000, v34, v35, "%s: parametersByName was unexpectedly empty for generic intent from bundleId: %s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D5D740](v37, -1, -1);
      MEMORY[0x223D5D740](v36, -1, -1);
    }

    (v45)[1](v16, v44);
    goto LABEL_12;
  }

  sub_21E54341C(v18);
  v20 = v19;
  v21 = __swift_project_boxed_opaque_existential_1(v47, v17);
  v22 = sub_21E530884(a3, v46, v45, v20, v20, *v21, a7);

  if (!v22)
  {

LABEL_12:
    v24 = 0;
    v23 = 0;
LABEL_13:
    v45 = 0;
    v46 = 0;
    v44 = 0;
    v32 = 0;
    v30 = 0;
    v31 = 0;
    v29 = 0;
    v28 = 0;
    v26 = 0;
    v27 = 0;
    goto LABEL_14;
  }

  sub_21E52E01C(a3);

  v23 = v49;
  if (!v49)
  {
    v24 = 0;
    goto LABEL_13;
  }

  v24 = v48;
  v25 = HIBYTE(v49) & 0xF;
  if ((v49 & 0x2000000000000000) == 0)
  {
    v25 = v48 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
    sub_21E5350C0(&v48, &qword_27CEC8988, &unk_21E57C510);
    goto LABEL_12;
  }

  v26 = v58;
  v27 = v59;
  v29 = v56;
  v28 = v57;
  v30 = v54;
  v31 = v55;
  v32 = v53;
  v44 = v52;
  v45 = v51;
  v46 = v50;
LABEL_14:
  result = __swift_destroy_boxed_opaque_existential_0Tm(v47);
  *a8 = v24;
  a8[1] = v23;
  v42 = v45;
  a8[2] = v46;
  a8[3] = v42;
  a8[4] = v44;
  a8[5] = v32;
  a8[6] = v30;
  a8[7] = v31;
  a8[8] = v29;
  a8[9] = v28;
  a8[10] = v26;
  a8[11] = v27;
  return result;
}

uint64_t sub_21E5311E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[37] = a8;
  v8[38] = v13;
  v8[35] = a6;
  v8[36] = a7;
  v8[33] = a3;
  v8[34] = a4;
  v8[31] = a1;
  v8[32] = a2;
  v8[39] = *v13;
  v10 = sub_21E57B5EC();
  v8[40] = v10;
  v8[41] = *(v10 - 8);
  v8[42] = swift_task_alloc();
  v8[29] = type metadata accessor for DefaultEligibilityCriteria();
  v8[30] = &off_282F92F38;
  v8[26] = a5;

  return MEMORY[0x2822009F8](sub_21E531300);
}

uint64_t sub_21E53160C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  *(v6 + 392) = v5;

  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7);
}

void sub_21E53170C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_91();
  v14 = *(v12 + 392);
  v15 = *(v14 + 16);
  if (!v15)
  {

    v30 = *(v12 + 368);
    v31 = (*(v12 + 360) - 1) & *(v12 + 360);
    if (v31)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v16 = 0;
  v17 = (v14 + 32);
  v18 = *(v12 + 400);
  v19 = v15 - 1;
  while (1)
  {
    if (v16 >= v15)
    {
LABEL_42:
      __break(1u);
      return;
    }

    memcpy((v12 + 16), v17, 0x60uLL);
    v13 = *(v12 + 24);
    OUTLINED_FUNCTION_15();
    if (v20)
    {
      __swift_project_boxed_opaque_existential_1((v12 + 208), *(v12 + 232));
      sub_21E534CEC(v12 + 16, v12 + 112);
      v21 = OUTLINED_FUNCTION_21();
      if (sub_21E54A0B4(v21, v22))
      {
        sub_21E534D48(v12 + 16);
      }

      else
      {
        v23 = sub_21E52FF30(*(v12 + 264), &selRef_intentClass);
        if (v24)
        {
          if (v23 == 0xD000000000000011 && v24 == 0x800000021E57F260)
          {

LABEL_37:

            v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8928, &qword_21E57C4A8);
            v50 = OUTLINED_FUNCTION_107(v49);
            *(v50 + 16) = xmmword_21E57C390;
            memcpy((v50 + 32), (v12 + 16), 0x60uLL);

LABEL_33:
            __swift_destroy_boxed_opaque_existential_0Tm((v12 + 208));

            OUTLINED_FUNCTION_5();
            OUTLINED_FUNCTION_55();

            v43(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
            return;
          }

          v26 = sub_21E57BB3C();

          if (v26)
          {
            goto LABEL_37;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21E543754();
          v18 = v28;
        }

        v13 = *(v18 + 16);
        v27 = *(v18 + 24);
        if (v13 >= v27 >> 1)
        {
          OUTLINED_FUNCTION_40(v27);
          sub_21E543754();
          v18 = v29;
        }

        *(v18 + 16) = v13 + 1;
        memcpy((v18 + 96 * v13 + 32), (v12 + 16), 0x60uLL);
      }
    }

    if (v19 == v16)
    {
      break;
    }

    v15 = *(v14 + 16);
    v17 += 96;
    ++v16;
  }

  v30 = *(v12 + 368);
  v31 = (*(v12 + 360) - 1) & *(v12 + 360);
  *(v12 + 400) = v18;
  if (v31)
  {
    goto LABEL_28;
  }

  do
  {
LABEL_24:
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v32 >= (((1 << *(v12 + 408)) + 63) >> 6))
    {

      goto LABEL_33;
    }

    v31 = *(*(v12 + 352) + 8 * v32 + 64);
    ++v30;
  }

  while (!v31);
  v30 = v32;
LABEL_28:
  while (1)
  {
    *(v12 + 360) = v31;
    *(v12 + 368) = v30;
    v33 = *(v12 + 344);
    OUTLINED_FUNCTION_94(__clz(__rbit64(v31)));
    if (sub_21E52B648(v33, v13))
    {
      v34 = *(v12 + 304);
      __swift_project_boxed_opaque_existential_1((v12 + 208), *(v12 + 232));
      v35 = OUTLINED_FUNCTION_45();
      if (sub_21E530884(v35, v36, v37, v38, v39, v40, v34))
      {
        break;
      }
    }

    v31 &= v31 - 1;

    if (!v31)
    {
      goto LABEL_24;
    }
  }

  v51 = swift_task_alloc();
  *(v12 + 384) = v51;
  *v51 = v12;
  OUTLINED_FUNCTION_16(v51);
  OUTLINED_FUNCTION_55();

  sub_21E52B808(v52, v53, v54, v55, v56, v57, v58);
}

uint64_t sub_21E531AAC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v3[32] = a1;
  v7 = sub_21E57B5EC();
  v3[33] = v7;
  v3[34] = *(v7 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8918, &qword_21E57C498);
  v3[37] = swift_task_alloc();
  v8 = type metadata accessor for DefaultEligibilityCriteria();
  v3[38] = v8;
  v3[17] = v8;
  v3[18] = &off_282F92F38;
  v3[14] = a2;
  v3[22] = v6;
  v3[23] = &off_282F930A8;
  v3[19] = a3;

  return MEMORY[0x2822009F8](sub_21E531C28);
}

uint64_t sub_21E531C28()
{
  v42 = v0;

  v1 = OUTLINED_FUNCTION_90();
  v3 = sub_21E54354C(v1, v2);

  if ((v3 & 1) == 0)
  {
    v4 = __swift_project_boxed_opaque_existential_1((v0 + 112), *(v0 + 304));
    v5 = *(*__swift_project_boxed_opaque_existential_1((*v4 + 16), *(*v4 + 40)) + 16);

    v6 = OUTLINED_FUNCTION_90();
    v8 = sub_21E52D0C0(v6, v7, v5);
    v10 = v9;

    *(v0 + 312) = v8;
    *(v0 + 320) = v10;
    if (v10)
    {

      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v11 && (v12 = *(v0 + 256), *(v0 + 192) = *(v12 + 64), v13 = *(v0 + 200), *(v0 + 328) = *(v0 + 192), (*(v0 + 336) = v13) != 0))
      {
        v14 = *(v0 + 296);
        v15 = *(v12 + 8);
        *(v0 + 208) = *v12;
        *(v0 + 216) = v15;
        *(v0 + 224) = v8;
        *(v0 + 232) = v10;
        sub_21E57AC7C();
        OUTLINED_FUNCTION_26();
        __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
        sub_21E534DE8();

        sub_21E57B8CC();
        v21 = v20;
        sub_21E5350C0(v14, &qword_27CEC8918, &qword_21E57C498);

        if (v21)
        {
          __swift_project_boxed_opaque_existential_1((v0 + 152), *(v0 + 176));
          v22 = swift_task_alloc();
          *(v0 + 344) = v22;
          *v22 = v0;
          v22[1] = sub_21E532034;
          OUTLINED_FUNCTION_83();

          return sub_21E55FF74();
        }

        v24 = *(v0 + 256);
        sub_21E57B5BC();

        sub_21E534CEC(v24, v0 + 16);
        v25 = sub_21E57B5DC();
        v26 = sub_21E57B85C();

        sub_21E534D48(v24);
        v27 = os_log_type_enabled(v25, v26);
        v28 = *(v0 + 288);
        v30 = *(v0 + 264);
        v29 = *(v0 + 272);
        if (v27)
        {
          v40 = *(v0 + 264);
          v31 = OUTLINED_FUNCTION_43();
          v41 = OUTLINED_FUNCTION_104();
          *v31 = 136315650;
          *(v31 + 4) = sub_21E5553D8(0xD000000000000018, 0x800000021E57F070, &v41);
          *(v31 + 12) = 2080;
          v32 = OUTLINED_FUNCTION_60();
          v35 = sub_21E5553D8(v32, v33, v34);

          *(v31 + 14) = v35;
          *(v31 + 22) = 2080;
          v36 = OUTLINED_FUNCTION_59();
          *(v31 + 24) = sub_21E5553D8(v36, v37, v38);
          _os_log_impl(&dword_21E527000, v25, v26, "%s: %s already in %s, not adding app mention suffix", v31, 0x20u);
          OUTLINED_FUNCTION_64();
          swift_arrayDestroy();
          OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_39();

          (*(v29 + 8))(v28, v40);
        }

        else
        {

          (*(v29 + 8))(v28, v30);
        }
      }

      else
      {
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 152));

  v39 = *(v0 + 8);

  return v39(0, 0);
}

uint64_t sub_21E532034()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 352) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_21E53211C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_92();
  a21 = v24;
  a22 = v25;
  a20 = v22;
  if (sub_21E529E5C(v22[44]) == 1)
  {

    sub_21E57B5BC();

    sub_21E534E3C((v22 + 24), (v22 + 30));
    v26 = sub_21E57B5DC();
    sub_21E57B85C();
    sub_21E5350C0((v22 + 24), &qword_27CEC8920, &qword_21E57C4A0);
    v27 = OUTLINED_FUNCTION_77();
    v28 = v22[44];
    if (v27)
    {
      v30 = v22[41];
      v29 = v22[42];
      v31 = v22[34];
      a9 = v22[33];
      a10 = v22[35];
      OUTLINED_FUNCTION_43();
      a11 = OUTLINED_FUNCTION_69();
      *v23 = 136315650;
      *(v23 + 4) = sub_21E5553D8(0xD000000000000018, 0x800000021E57F070, &a11);
      *(v23 + 12) = 2048;
      v32 = sub_21E529E5C(v28);

      *(v23 + 14) = v32;

      *(v23 + 22) = 2080;
      *(v23 + 24) = sub_21E5553D8(v30, v29, &a11);
      OUTLINED_FUNCTION_12();
      _os_log_impl(v33, v34, v35, v36, v37, 0x20u);
      OUTLINED_FUNCTION_64();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_30();

      (*(v31 + 8))(a10, a9);
    }

    else
    {
      v39 = v22[34];
      v38 = v22[35];
      v40 = v22[33];
      swift_bridgeObjectRelease_n();

      (*(v39 + 8))(v38, v40);
    }

    OUTLINED_FUNCTION_78();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v22 + 14);
  __swift_destroy_boxed_opaque_existential_0Tm(v22 + 19);

  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_54();

  return v44(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_21E532350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[65] = a5;
  v5[63] = a1;
  v5[64] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88F8, &unk_21E57C470);
  v5[66] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8900, &unk_21E57C620);
  v5[67] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88D8, &unk_21E57D3B0);
  v5[68] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8908, &qword_21E57C480);
  v5[69] = swift_task_alloc();
  v8 = sub_21E57B3DC();
  v5[70] = v8;
  v5[71] = *(v8 - 8);
  v5[72] = swift_task_alloc();
  v5[45] = type metadata accessor for DefaultEligibilityCriteria();
  v5[46] = &off_282F92F38;
  v5[42] = a2;
  v5[50] = type metadata accessor for DefaultAppFinderForIntentProvider();
  v5[51] = &off_282F930A8;
  v5[47] = a3;

  return MEMORY[0x2822009F8](sub_21E532548);
}

uint64_t sub_21E532548()
{
  v1 = *(v0 + 504);
  *(v0 + 496) = MEMORY[0x277D84F90];
  v2 = *(v1 + 16);
  *(v0 + 584) = v2;
  if (v2)
  {
    *(v0 + 688) = *MEMORY[0x277D55868];
    *(v0 + 592) = 0;
    memcpy((v0 + 144), (v1 + 32), 0x60uLL);
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_11(&qword_21E57C488);
    v9 = v3;
    v4 = swift_task_alloc();
    *(v0 + 664) = v4;
    *v4 = v0;
    v5 = OUTLINED_FUNCTION_17(v4);

    return v9(v5);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 336));
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 376));

    v7 = *(v0 + 8);
    v8 = MEMORY[0x277D84F90];

    return v7(v8);
  }
}

uint64_t sub_21E5326A8()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 672) = v3;
  *(v1 + 680) = v4;

  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_21E532794()
{
  v1 = *(v0 + 680);
  if (v1)
  {
    v2 = *(v0 + 672);
    v3 = *(v0 + 656);
    v4 = *(v0 + 648);
    v61 = *(v0 + 688);
    v5 = *(v0 + 568);
    v59 = *(v0 + 576);
    v60 = *(v0 + 560);
    v62 = *(v0 + 552);
    v63 = *(v0 + 544);
    v64 = *(v0 + 536);
    v65 = *(v0 + 528);
    v57 = *(v0 + 512);
    v58 = *(v0 + 520);
    type metadata accessor for CATDialogProvider();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8910, &qword_21E57C490);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21E57C3A0;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x800000021E57EEF0;
    v7 = MEMORY[0x277D837D0];
    *(inited + 48) = v4;
    *(inited + 56) = v3;
    *(inited + 72) = v7;
    *(inited + 80) = 0x656D614E707061;
    *(inited + 120) = v7;
    *(inited + 88) = 0xE700000000000000;
    *(inited + 96) = v2;
    *(inited + 104) = v1;

    v8 = sub_21E57B62C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    sub_21E55E854(v10, 0xD000000000000021, 0x800000021E57EEC0, v8, v57, v58, 0xD00000000000001ALL, 0x800000021E57EF10);

    (*(v5 + 104))(v59, v61, v60);
    v11 = sub_21E57B1FC();
    OUTLINED_FUNCTION_7(v62, v12, v13, v11);
    v14 = sub_21E57AC4C();
    OUTLINED_FUNCTION_7(v63, v15, v16, v14);
    v17 = sub_21E57B5FC();
    OUTLINED_FUNCTION_7(v64, v18, v19, v17);
    v20 = sub_21E57B04C();
    OUTLINED_FUNCTION_7(v65, v21, v22, v20);
    v23 = sub_21E57B5AC();

    v24 = sub_21E57B59C();
    v25 = MEMORY[0x277D55898];
    *(v0 + 480) = v23;
    *(v0 + 488) = v25;
    *(v0 + 456) = v24;
    sub_21E57B4AC();
    swift_allocObject();
    sub_21E57B44C();
    v26 = sub_21E534D48(v0 + 144);
    MEMORY[0x223D5CC60](v26);
    OUTLINED_FUNCTION_88();
    if (v28)
    {
      OUTLINED_FUNCTION_40(v27);
      sub_21E57B7AC();
    }

    OUTLINED_FUNCTION_60();
    sub_21E57B7CC();
  }

  else
  {
    v29 = *(v0 + 552);
    v30 = *(v0 + 544);
    v31 = *(v0 + 536);
    v32 = *(v0 + 528);
    (*(*(v0 + 568) + 104))();
    v33 = sub_21E57B1FC();
    OUTLINED_FUNCTION_7(v29, v34, v35, v33);
    v36 = sub_21E57AC4C();
    OUTLINED_FUNCTION_7(v30, v37, v38, v36);
    v39 = sub_21E57B5FC();
    OUTLINED_FUNCTION_7(v31, v40, v41, v39);
    v42 = sub_21E57B04C();
    OUTLINED_FUNCTION_7(v32, v43, v44, v42);
    v45 = sub_21E57B5AC();

    v46 = sub_21E57B59C();
    v47 = MEMORY[0x277D55898];
    *(v0 + 440) = v45;
    *(v0 + 448) = v47;
    *(v0 + 416) = v46;
    sub_21E57B4AC();
    swift_allocObject();
    sub_21E57B44C();
    sub_21E534D48(v0 + 144);

    MEMORY[0x223D5CC60](v48);
    OUTLINED_FUNCTION_88();
    if (v28)
    {
      OUTLINED_FUNCTION_40(v49);
      sub_21E57B7AC();
    }

    OUTLINED_FUNCTION_60();
    sub_21E57B7CC();
  }

  v50 = *(v0 + 592) + 1;
  if (v50 == *(v0 + 584))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 336));
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 376));

    v51 = OUTLINED_FUNCTION_5();

    return v52(v51);
  }

  else
  {
    *(v0 + 592) = v50;
    memcpy((v0 + 144), (*(v0 + 504) + 96 * v50 + 32), 0x60uLL);
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_11(&qword_21E57C488);
    v66 = v54;
    v55 = swift_task_alloc();
    *(v0 + 664) = v55;
    *v55 = v0;
    v56 = OUTLINED_FUNCTION_17(v55);

    return v66(v56);
  }
}

uint64_t sub_21E532DE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[78] = a4;
  v4[77] = a3;
  v4[76] = a2;
  v4[79] = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88D8, &unk_21E57D3B0);
  v4[80] = swift_task_alloc();
  v4[81] = swift_task_alloc();
  v6 = sub_21E57B9EC();
  v4[82] = v6;
  v7 = *(v6 - 8);
  v4[83] = v7;
  v4[84] = *(v7 + 64);
  v4[85] = swift_task_alloc();
  v4[86] = swift_task_alloc();
  v8 = sub_21E57BA0C();
  v4[87] = v8;
  v9 = *(v8 - 8);
  v4[88] = v9;
  v4[89] = *(v9 + 64);
  v4[90] = swift_task_alloc();
  v4[91] = swift_task_alloc();
  v10 = sub_21E57B5EC();
  v4[92] = v10;
  v4[93] = *(v10 - 8);
  v4[94] = swift_task_alloc();
  v4[95] = swift_task_alloc();
  v4[96] = swift_task_alloc();
  v4[97] = swift_task_alloc();
  v4[65] = type metadata accessor for DefaultEligibilityCriteria();
  v4[66] = &off_282F92F38;
  v4[62] = a1;

  return MEMORY[0x2822009F8](sub_21E533048);
}

uint64_t sub_21E533048(uint64_t a1)
{
  v123 = v1;
  sub_21E57B5BC();
  v2 = sub_21E57B5DC();
  v3 = sub_21E57B84C();
  v4 = OUTLINED_FUNCTION_48(v3);
  v5 = v1[93];
  if (v4)
  {
    v6 = OUTLINED_FUNCTION_50();
    v7 = OUTLINED_FUNCTION_43();
    v122 = v7;
    *v6 = 136315138;
    v8 = sub_21E57BC2C();
    v10 = sub_21E5553D8(v8, v9, &v122);

    *(v6 + 4) = v10;
    OUTLINED_FUNCTION_12();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_30();
  }

  v16 = OUTLINED_FUNCTION_34();
  v17(v16);
  v1[98] = v5;
  v18 = v1[91];
  v114 = v1[89];
  v109 = v1[88];
  v111 = v1[87];
  v112 = v1[90];
  v19 = v1[86];
  v121 = v1[85];
  v113 = v1[84];
  v119 = v1[83];
  v20 = v1[82];
  v21 = v1[81];
  v22 = v1[80];
  v23 = v1[79];
  v107 = v20;
  v115 = v1[78];
  v24 = v1[77];
  v25 = v1[76];
  v26 = MEMORY[0x277D84F90];
  v1[74] = MEMORY[0x277D84F90];
  v110 = swift_allocObject();
  v1[99] = v110;
  *(v110 + 16) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88E0, &unk_21E57C450);
  v1[75] = sub_21E57B62C();
  sub_21E57B9FC();
  sub_21E57B9CC();
  type metadata accessor for MapsGenericIntentTitleProvider();
  inited = swift_initStackObject();
  v1[100] = inited;
  *(inited + 16) = v25;
  *(inited + 24) = v24;

  v28 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v29 = [v28 Intent];
  swift_unknownObjectRelease();
  v30 = sub_21E57AC4C();
  OUTLINED_FUNCTION_26();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v30);
  OUTLINED_FUNCTION_26();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v30);
  v37 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v38 = sub_21E52F134(v21, v22, 50000, 0, 1);
  v108 = [v29 publisherWithOptions_];

  v39 = swift_allocObject();
  *(v39 + 16) = v23;
  v1[54] = sub_21E534BCC;
  v1[55] = v39;
  v1[50] = MEMORY[0x277D85DD0];
  v1[51] = 1107296256;
  v1[52] = sub_21E529A78;
  v1[53] = &block_descriptor;
  aBlock = _Block_copy(v1 + 50);

  (*(v119 + 16))(v121, v19, v20);
  v40 = v111;
  (*(v109 + 16))(v112, v18, v111);
  v41 = (*(v119 + 80) + 24) & ~*(v119 + 80);
  v42 = (v113 + *(v109 + 80) + v41) & ~*(v109 + 80);
  v43 = (v114 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *(v44 + 16) = v110;
  (*(v119 + 32))(v44 + v41, v121, v107);
  (*(v109 + 32))(v44 + v42, v112, v111);
  *(v44 + v43) = v115;
  *(v44 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
  v1[60] = sub_21E534BEC;
  v1[61] = v44;
  v1[56] = MEMORY[0x277D85DD0];
  v1[57] = 1107296256;
  v1[58] = sub_21E529E04;
  v1[59] = &block_descriptor_30;
  v45 = _Block_copy(v1 + 56);

  v46 = [v108 sinkWithCompletion:aBlock shouldContinue:v45];
  _Block_release(v45);
  _Block_release(aBlock);

  swift_beginAccess();
  v1[101] = *(v110 + 16);
  v47 = sub_21E5351E4();
  v1[102] = v47;
  v48 = OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_fetchPhrasesTimeoutSeconds;
  v1[103] = OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_fetchPhrasesTimeoutSeconds;

  v50 = v1[101];
  if (!v47)
  {

    goto LABEL_16;
  }

  if ((v50 & 0xC000000000000001) != 0)
  {
    goto LABEL_46;
  }

  if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v51 = *(v50 + 32);
    while (1)
    {
      v1[104] = v51;
      v1[105] = 1;
      v52 = v1[85];
      v53 = v1[83];
      v54 = v1[78];
      sub_21E57B9CC();
      sub_21E57B9DC();
      v55 = v53 + 8;
      v56 = OUTLINED_FUNCTION_59();
      v57(v56);
      OUTLINED_FUNCTION_38();
      v58 = sub_21E57BBFC();
      OUTLINED_FUNCTION_38();
      sub_21E57BBFC();
      if (*(v54 + v48) >= v59 * 1.0e-18 + v58)
      {
        break;
      }

      v60 = v1[95];

      sub_21E57B5BC();
      v50 = sub_21E57B5DC();
      v40 = sub_21E57B85C();
      OUTLINED_FUNCTION_48(v40);
      OUTLINED_FUNCTION_89();
      if (v61)
      {
        OUTLINED_FUNCTION_57();
        v62 = OUTLINED_FUNCTION_43();
        v122 = v62;
        v63 = OUTLINED_FUNCTION_70(4.8151e-34);
        sub_21E5553D8(v63, v64, &v122);

        OUTLINED_FUNCTION_84();
        OUTLINED_FUNCTION_35();
        _os_log_impl(v65, v66, v67, v68, v69, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v62);
        OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_20();
      }

      (*(v60 + 8))(v55, v52);
LABEL_16:
      v72 = sub_21E542EF0(v1[74]);
      v73 = sub_21E57B62C();
      v74 = *(v72 + 16);
      if (!v74)
      {
LABEL_34:

        OUTLINED_FUNCTION_73(v92);

        v93 = sub_21E57B5DC();
        v94 = sub_21E57B84C();
        if (OUTLINED_FUNCTION_48(v94))
        {
          v95 = OUTLINED_FUNCTION_50();
          OUTLINED_FUNCTION_72(v95, 3.852e-34);
          *(v95 + 4) = v40;

          OUTLINED_FUNCTION_44(&dword_21E527000, v96, v97, "SiriKitIntentSource: created %ld phrases from App.Intent biome stream");
          OUTLINED_FUNCTION_39();
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        v98 = OUTLINED_FUNCTION_18();
        v99(v98);

        OUTLINED_FUNCTION_3();
        v102 = sub_21E529ED8(v100, v101, sub_21E52FF88);
        OUTLINED_FUNCTION_71(v102);
        swift_initStaticObject();
        OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_11(&qword_21E57C468);
        v103 = swift_task_alloc();
        v1[108] = v103;
        *v103 = v1;
        OUTLINED_FUNCTION_1(v103);
        OUTLINED_FUNCTION_65();

        __asm { BR              X5 }
      }

      v75 = v1[78];
      v40 = OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_histogram;
      v76 = v74 - 1;
      v77 = 32;
      v120 = v75;
      v117 = v74 - 1;
      v118 = OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_histogram;
      while (v74)
      {
        memcpy(v1 + 2, (v72 + v77), 0x60uLL);
        OUTLINED_FUNCTION_42();

        v78 = OUTLINED_FUNCTION_21();
        sub_21E542680(v78, v79, v80);

        OUTLINED_FUNCTION_15();
        if (!v81 || *(v73 + 16) && (, v82 = OUTLINED_FUNCTION_21(), sub_21E52F7C4(v82), v50 = v83, , (v50 & 1) != 0))
        {
          sub_21E534D48((v1 + 2));
        }

        else
        {
          OUTLINED_FUNCTION_74();
          swift_isUniquelyReferenced_nonNull_native();
          v122 = v73;
          v84 = OUTLINED_FUNCTION_21();
          v50 = v73;
          sub_21E52F7C4(v84);
          OUTLINED_FUNCTION_33();
          if (v86)
          {
            goto LABEL_44;
          }

          v87 = v85;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88F0, &qword_21E57C460);
          v50 = &v122;
          if (sub_21E57BA1C())
          {
            v50 = v122;
            v88 = OUTLINED_FUNCTION_21();
            sub_21E52F7C4(v88);
            OUTLINED_FUNCTION_52();
            if (!v89)
            {
              OUTLINED_FUNCTION_65();

              return sub_21E57BB6C();
            }
          }

          if (v87)
          {
            v73 = v122;
            OUTLINED_FUNCTION_24();
            OUTLINED_FUNCTION_76();
            sub_21E534D48((v1 + 38));
            sub_21E534D48((v1 + 2));
          }

          else
          {
            v73 = v122;
            OUTLINED_FUNCTION_4();

            sub_21E534D48((v1 + 2));
            v90 = *(v73 + 16);
            v86 = __OFADD__(v90, 1);
            v91 = v90 + 1;
            if (v86)
            {
              goto LABEL_45;
            }

            *(v73 + 16) = v91;
          }

          v72 = v75;
          v75 = v120;
          v76 = v117;
          v40 = v118;
        }

        if (!v76)
        {
          goto LABEL_34;
        }

        OUTLINED_FUNCTION_53();
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      v51 = MEMORY[0x223D5CE50](0, v50);
      v48 = v1[103];
    }

    v70 = swift_task_alloc();
    v1[110] = v70;
    *v70 = v1;
    OUTLINED_FUNCTION_2(v70);
    OUTLINED_FUNCTION_65();

    return sub_21E529F78();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21E533AF4()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  *(v6 + 872) = v5;

  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_21E533BF4()
{
  v1 = v0[91];
  v2 = v0[88];
  v3 = v0[87];
  v4 = v0[86];
  v5 = v0[83];
  v6 = v0[82];
  sub_21E52E1B8(v0[109]);
  swift_setDeallocating();

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 62);

  v7 = v0[1];
  v8 = v0[109];

  return v7(v8);
}

uint64_t sub_21E533D7C(uint64_t a1)
{
  OUTLINED_FUNCTION_32();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v5 + 888) = v1;

  if (v1)
  {
    v8 = sub_21E53445C;
  }

  else
  {
    *(v5 + 896) = a1;
    v8 = sub_21E533E98;
  }

  return MEMORY[0x2822009F8](v8);
}

void sub_21E533E98()
{
  v64 = v0;
  v3 = v0 + 74;
  v4 = v0[104];
  sub_21E54A344(v0[112]);

  v5 = v0[105];
  v6 = v0[101];
  if (v5 == v0[102])
  {

    while (1)
    {
      v3 = sub_21E542EF0(*v3);
      v26 = sub_21E57B62C();
      if (!v3[2])
      {
LABEL_32:

        OUTLINED_FUNCTION_73(v43);

        v44 = sub_21E57B5DC();
        v45 = sub_21E57B84C();
        if (OUTLINED_FUNCTION_48(v45))
        {
          v46 = OUTLINED_FUNCTION_50();
          OUTLINED_FUNCTION_72(v46, 3.852e-34);
          *(v46 + 4) = v1;

          OUTLINED_FUNCTION_44(&dword_21E527000, v47, v48, "SiriKitIntentSource: created %ld phrases from App.Intent biome stream");
          OUTLINED_FUNCTION_39();
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        v49 = OUTLINED_FUNCTION_18();
        v50(v49);

        OUTLINED_FUNCTION_3();
        v53 = sub_21E529ED8(v51, v52, sub_21E52FF88);
        OUTLINED_FUNCTION_71(v53);
        swift_initStaticObject();
        OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_11(&qword_21E57C468);
        v54 = swift_task_alloc();
        v0[108] = v54;
        *v54 = v0;
        OUTLINED_FUNCTION_1(v54);
        OUTLINED_FUNCTION_22();

        __asm { BR              X5 }
      }

      v27 = v0[78];
      v1 = OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_histogram;
      OUTLINED_FUNCTION_86();
      while (v28)
      {
        OUTLINED_FUNCTION_101();
        OUTLINED_FUNCTION_42();

        v29 = OUTLINED_FUNCTION_21();
        sub_21E542680(v29, v30, v31);

        OUTLINED_FUNCTION_15();
        if (!v32 || *(v26 + 16) && (, v33 = OUTLINED_FUNCTION_21(), sub_21E52F7C4(v33), v5 = v34, , (v5 & 1) != 0))
        {
          sub_21E534D48((v0 + 2));
        }

        else
        {
          OUTLINED_FUNCTION_74();
          swift_isUniquelyReferenced_nonNull_native();
          v63 = v26;
          v35 = OUTLINED_FUNCTION_21();
          v5 = v26;
          sub_21E52F7C4(v35);
          OUTLINED_FUNCTION_33();
          if (v37)
          {
            goto LABEL_42;
          }

          v3 = v36;
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88F0, &qword_21E57C460);
          if (OUTLINED_FUNCTION_99(v38))
          {
            v5 = v63;
            v39 = OUTLINED_FUNCTION_21();
            sub_21E52F7C4(v39);
            OUTLINED_FUNCTION_52();
            if (!v40)
            {
              OUTLINED_FUNCTION_22();

              sub_21E57BB6C();
              return;
            }
          }

          if (v3)
          {
            v26 = v63;
            OUTLINED_FUNCTION_24();
            OUTLINED_FUNCTION_76();
            sub_21E534D48((v0 + 38));
            sub_21E534D48((v0 + 2));
          }

          else
          {
            v26 = v63;
            OUTLINED_FUNCTION_4();

            sub_21E534D48((v0 + 2));
            v41 = *(v26 + 16);
            v37 = __OFADD__(v41, 1);
            v42 = v41 + 1;
            if (v37)
            {
              goto LABEL_43;
            }

            *(v26 + 16) = v42;
          }

          v3 = v27;
          v1 = v60;
          v27 = v61;
          v2 = v59;
        }

        if (!v2)
        {
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_53();
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      v58 = OUTLINED_FUNCTION_38();
      v7 = MEMORY[0x223D5CE50](v58);
LABEL_6:
      v0[104] = v7;
      v0[105] = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      v62 = v7;
      v8 = v0[103];
      v9 = v0[83];
      v10 = v0[78];
      sub_21E57B9CC();
      sub_21E57B9DC();
      v2 = (v9 + 8);
      v11 = OUTLINED_FUNCTION_83();
      v12(v11);
      v13 = sub_21E57BBFC();
      sub_21E57BBFC();
      v15 = v14 * 1.0e-18 + v13;
      if (*(v10 + v8) >= v15)
      {
        break;
      }

      sub_21E57B5BC();
      v5 = sub_21E57B5DC();
      v16 = sub_21E57B85C();
      v17 = OUTLINED_FUNCTION_48(v16);
      v18 = v0[95];
      v1 = v0[93];
      v19 = v0[92];
      if (v17)
      {
        v61 = v0[92];
        v20 = OUTLINED_FUNCTION_57();
        v2 = OUTLINED_FUNCTION_43();
        v63 = v2;
        *v20 = 136315394;
        v21 = sub_21E57BC2C();
        v60 = v18;
        v23 = sub_21E5553D8(v21, v22, &v63);

        *(v20 + 4) = v23;
        *(v20 + 12) = 2048;
        *(v20 + 14) = v15;
        _os_log_impl(&dword_21E527000, v5, v16, "%s: %f seconds have passed since processing SiriKitIntentTranscript events, which is passed our threshold. Not continuing to process more events", v20, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v2);
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_39();

        (*(v1 + 8))(v60, v61);
      }

      else
      {

        (*(v1 + 8))(v18, v19);
      }
    }

    v24 = swift_task_alloc();
    v0[110] = v24;
    *v24 = v0;
    OUTLINED_FUNCTION_2(v24);
    OUTLINED_FUNCTION_22();

    sub_21E529F78();
  }

  else
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      goto LABEL_44;
    }

    if (v5 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v7 = *(v6 + 8 * v5 + 32);
      goto LABEL_6;
    }

LABEL_46:
    __break(1u);
  }
}

id sub_21E53445C(uint64_t a1)
{
  v87 = v1;
  v2 = v1[111];
  sub_21E57B5BC();
  v3 = v2;
  v4 = sub_21E57B5DC();
  v5 = sub_21E57B86C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[111];
  v8 = v1[104];
  v9 = v1[94];
  v10 = v1[93];
  v11 = v1[92];
  if (v6)
  {
    v85 = v1[93];
    v12 = OUTLINED_FUNCTION_57();
    v84 = v11;
    v13 = swift_slowAlloc();
    v83 = v9;
    v14 = OUTLINED_FUNCTION_43();
    v86 = v14;
    *v12 = 136315394;
    v15 = OUTLINED_FUNCTION_105();
    v10 = v16;
    v17 = sub_21E5553D8(v15, v16, &v86);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    v18 = v7;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v13 = v19;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v20, v21, v22, v23, v24, 0x16u);
    sub_21E5350C0(v13, &qword_27CEC88E8, &qword_21E57C660);
    OUTLINED_FUNCTION_31();
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_20();

    result = (*(v85 + 8))(v83, v84);
  }

  else
  {

    result = (*(v10 + 8))(v9, v11);
  }

  v26 = v1[105];
  v27 = v1[101];
  if (v26 == v1[102])
  {

    while (1)
    {
      v28 = sub_21E542EF0(v1[74]);
      v29 = sub_21E57B62C();
      if (!*(v28 + 16))
      {
LABEL_32:

        OUTLINED_FUNCTION_73(v65);

        v66 = sub_21E57B5DC();
        v67 = sub_21E57B84C();
        if (OUTLINED_FUNCTION_48(v67))
        {
          v68 = OUTLINED_FUNCTION_50();
          OUTLINED_FUNCTION_72(v68, 3.852e-34);
          *(v68 + 4) = v5;

          OUTLINED_FUNCTION_44(&dword_21E527000, v69, v70, "SiriKitIntentSource: created %ld phrases from App.Intent biome stream");
          OUTLINED_FUNCTION_39();
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        v71 = OUTLINED_FUNCTION_18();
        v72(v71);

        OUTLINED_FUNCTION_3();
        v75 = sub_21E529ED8(v73, v74, sub_21E52FF88);
        OUTLINED_FUNCTION_71(v75);
        swift_initStaticObject();
        OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_11(&qword_21E57C468);
        v76 = swift_task_alloc();
        v1[108] = v76;
        *v76 = v1;
        OUTLINED_FUNCTION_1(v76);
        OUTLINED_FUNCTION_22();

        __asm { BR              X5 }
      }

      v5 = OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_histogram;
      OUTLINED_FUNCTION_86();
      while (v30)
      {
        OUTLINED_FUNCTION_101();
        OUTLINED_FUNCTION_42();

        v31 = OUTLINED_FUNCTION_21();
        sub_21E542680(v31, v32, v33);

        OUTLINED_FUNCTION_15();
        if (!v34 || *(v29 + 16) && (, v35 = OUTLINED_FUNCTION_21(), sub_21E52F7C4(v35), v26 = v36, , (v26 & 1) != 0))
        {
          sub_21E534D48((v1 + 2));
        }

        else
        {
          OUTLINED_FUNCTION_74();
          swift_isUniquelyReferenced_nonNull_native();
          v86 = v29;
          v37 = OUTLINED_FUNCTION_21();
          v26 = v29;
          sub_21E52F7C4(v37);
          OUTLINED_FUNCTION_33();
          if (v39)
          {
            goto LABEL_46;
          }

          v40 = v38;
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88F0, &qword_21E57C460);
          if (OUTLINED_FUNCTION_99(v41))
          {
            v26 = v86;
            v42 = OUTLINED_FUNCTION_21();
            sub_21E52F7C4(v42);
            OUTLINED_FUNCTION_52();
            if (!v43)
            {
              OUTLINED_FUNCTION_22();

              return sub_21E57BB6C();
            }
          }

          if (v40)
          {
            v29 = v86;
            OUTLINED_FUNCTION_24();
            OUTLINED_FUNCTION_76();
            sub_21E534D48((v1 + 38));
            sub_21E534D48((v1 + 2));
          }

          else
          {
            v29 = v86;
            OUTLINED_FUNCTION_4();

            sub_21E534D48((v1 + 2));
            v44 = *(v29 + 16);
            v39 = __OFADD__(v44, 1);
            v45 = v44 + 1;
            if (v39)
            {
              goto LABEL_47;
            }

            *(v29 + 16) = v45;
          }

          v5 = v84;
          v10 = v83;
        }

        if (!v10)
        {
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_53();
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      v82 = OUTLINED_FUNCTION_90();
      result = MEMORY[0x223D5CE50](v82);
LABEL_27:
      v46 = result;
      v1[104] = result;
      v1[105] = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_50;
      }

      v47 = v1[103];
      v48 = v1[85];
      v49 = v1[83];
      v50 = v1[82];
      v10 = v1[78];
      sub_21E57B9CC();
      sub_21E57B9DC();
      v52 = v51;
      (*(v49 + 8))(v48, v50);
      v53 = sub_21E57BBFC();
      sub_21E57BBFC();
      if (*(v10 + v47) >= v54 * 1.0e-18 + v53)
      {
        break;
      }

      v55 = v1[95];

      sub_21E57B5BC();
      v26 = sub_21E57B5DC();
      v5 = sub_21E57B85C();
      OUTLINED_FUNCTION_48(v5);
      OUTLINED_FUNCTION_89();
      if (v56)
      {
        OUTLINED_FUNCTION_57();
        v57 = OUTLINED_FUNCTION_43();
        v86 = v57;
        v58 = OUTLINED_FUNCTION_70(4.8151e-34);
        v10 = sub_21E5553D8(v58, v59, &v86);

        OUTLINED_FUNCTION_84();
        OUTLINED_FUNCTION_35();
        _os_log_impl(v60, v61, v62, v63, v64, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v57);
        OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_20();
      }

      (*(v55 + 8))(v47, v52);
    }

    v79 = swift_task_alloc();
    v1[110] = v79;
    *v79 = v1;
    OUTLINED_FUNCTION_2(v79);
    OUTLINED_FUNCTION_22();

    return sub_21E529F78();
  }

  else
  {
    if ((v27 & 0xC000000000000001) != 0)
    {
      goto LABEL_48;
    }

    if (v26 < *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      result = *(v27 + 8 * v26 + 32);
      goto LABEL_27;
    }

LABEL_50:
    __break(1u);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

BOOL sub_21E534BEC(void *a1)
{
  v3 = sub_21E57B9EC();
  OUTLINED_FUNCTION_6(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = sub_21E57BA0C();
  OUTLINED_FUNCTION_6(v8);
  v10 = v9;
  v12 = v11;
  v13 = (v5 + v7 + *(v10 + 80)) & ~*(v10 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v1 + 16);
  v16 = *(v1 + v14);
  v17 = *(v1 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_21E529AE0(a1, v15, v1 + v5, v1 + v13, v16, v17);
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_21E534DE8()
{
  result = qword_281225550;
  if (!qword_281225550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225550);
  }

  return result;
}

uint64_t sub_21E534E3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8920, &qword_21E57C4A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E534EE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21E534F3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_3(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_21E535048(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21E53505C(a1, a2);
  }

  return a1;
}

uint64_t sub_21E53505C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_21E5350B4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_21E5350C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_82();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_21E535114(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_21E535154(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_46();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21E535198(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_46();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *OUTLINED_FUNCTION_4()
{
  *(v0 + 8 * (v4 >> 6) + 64) |= 1 << v4;
  v6 = (*(v0 + 48) + 16 * v4);
  *v6 = v3;
  v6[1] = v2;
  v7 = (*(v0 + 56) + 96 * v4);

  return memcpy(v7, (v1 + 16), 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_13(uint64_t a1, __n128 a2)
{
  *(a1 + 16) = a2;
  *(a1 + 32) = v7;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  *(a1 + 56) = v2;
  *(a1 + 64) = v6;
  *(a1 + 72) = v3;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
}

void OUTLINED_FUNCTION_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(v19 + 16) = v20;
  v27 = (v19 + 96 * v25);
  v27[4] = a14;
  v27[5] = v24;
  v27[6] = a15;
  v27[7] = v23;
  v27[8] = a16;
  v27[9] = v22;
  v27[10] = a18;
  v27[11] = a17;
  v27[12] = a13;
  v27[13] = v26;
  v27[14] = v18;
  v27[15] = v21;
}

void OUTLINED_FUNCTION_20()
{

  JUMPOUT(0x223D5D740);
}

uint64_t OUTLINED_FUNCTION_23()
{
}

void *OUTLINED_FUNCTION_24()
{
  v4 = (*(v0 + 56) + 96 * v2);

  return memcpy((v1 + 304), v4, 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_25()
{
  *(v0 + 600) = *(v0 + 192);
  v1 = *(v0 + 184);
  *(v0 + 616) = *(v0 + 176);
  *(v0 + 624) = v1;
  *(v0 + 632) = *(v0 + 160);
  v2 = *(v0 + 152);
  *(v0 + 648) = *(v0 + 144);
  *(v0 + 656) = v2;
  __swift_project_boxed_opaque_existential_1((v0 + 336), *(v0 + 360));
  __swift_project_boxed_opaque_existential_1((v0 + 376), *(v0 + 400));

  return sub_21E534CEC(v0 + 144, v0 + 240);
}

void OUTLINED_FUNCTION_30()
{

  JUMPOUT(0x223D5D740);
}

void OUTLINED_FUNCTION_31()
{

  JUMPOUT(0x223D5D740);
}

void OUTLINED_FUNCTION_39()
{

  JUMPOUT(0x223D5D740);
}

uint64_t OUTLINED_FUNCTION_41()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_42()
{

  return sub_21E534CEC(v0 + 16, v0 + 112);
}

uint64_t OUTLINED_FUNCTION_43()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_44(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_48(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_50()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_57()
{

  return swift_slowAlloc();
}

void *OUTLINED_FUNCTION_66(uint64_t a1, ...)
{

  return sub_21E57BB8C();
}

uint64_t OUTLINED_FUNCTION_67(uint64_t a1)
{

  return sub_21E57BB3C();
}

uint64_t OUTLINED_FUNCTION_68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, ...)
{
  va_start(va, a10);
  *(v10 + 4) = v11;
  *(v10 + 12) = 2080;

  return sub_21E5553D8(a9, a10, va);
}

uint64_t OUTLINED_FUNCTION_69()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_70(float a1)
{
  *v1 = a1;

  return sub_21E57BC2C();
}

uint64_t OUTLINED_FUNCTION_71(uint64_t a1)
{
  *(v1 + 856) = a1;

  return type metadata accessor for DefaultAppFinderForIntentProvider();
}

uint64_t OUTLINED_FUNCTION_72(float *a1, float a2)
{
  *a1 = a2;
}

uint64_t OUTLINED_FUNCTION_73(uint64_t a1)
{
  *(v2 + 848) = v1;

  return sub_21E57B5BC();
}

uint64_t OUTLINED_FUNCTION_74()
{

  return sub_21E534CEC(v0 + 16, v0 + 208);
}

uint64_t OUTLINED_FUNCTION_75(uint64_t a1, ...)
{

  return sub_21E57B6AC();
}

void *OUTLINED_FUNCTION_76()
{

  return memcpy(v0, (v1 + 16), 0x60uLL);
}

BOOL OUTLINED_FUNCTION_77()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_84()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2048;
  *(v0 + 14) = v2;
}

uint64_t OUTLINED_FUNCTION_94@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 376) = *(v1 + (v2 | (8 * a1)));
}

uint64_t OUTLINED_FUNCTION_96(uint64_t a1)
{

  return sub_21E57B00C();
}

void *OUTLINED_FUNCTION_97@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v1 + 112), (v2 + a1), 0x60uLL);
}

char *OUTLINED_FUNCTION_98()
{

  return sub_21E562880(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_99(uint64_t a1)
{

  return sub_21E57BA1C();
}

void *OUTLINED_FUNCTION_101()
{

  return memcpy((v2 + 16), (v1 + v0), 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_102()
{

  return sub_21E57BB3C();
}

uint64_t OUTLINED_FUNCTION_103()
{
}

uint64_t OUTLINED_FUNCTION_104()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_105()
{

  return sub_21E57BC2C();
}

uint64_t OUTLINED_FUNCTION_106(uint64_t a1)
{

  return sub_21E57B62C();
}

uint64_t OUTLINED_FUNCTION_107(uint64_t a1)
{

  return swift_allocObject();
}

unint64_t sub_21E535D08(char a1)
{
  result = 0x6449656C646E7562;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x657361726870;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_21E535D98()
{
  type metadata accessor for DenyListManager();
  swift_allocObject();
  result = sub_21E535DD4();
  qword_281226A58 = result;
  return result;
}

uint64_t sub_21E535DD4()
{
  v1 = sub_21E535EE0();
  v2 = sub_21E53626C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v1;
  sub_21E537EA0(v2, sub_21E538C64, 0, isUniquelyReferenced_nonNull_native, &v6);
  v7 = v6;
  sub_21E57AE2C();
  swift_allocObject();
  v4 = sub_21E57AE1C();
  sub_21E5387E0(&v7, v4);

  *(v0 + 16) = v7;
  return v0;
}

uint64_t sub_21E535EE0()
{
  v0 = sub_21E57ABEC();
  v27 = *(v0 - 8);
  v28 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21E57B5EC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  sub_21E57B5BC();
  v10 = sub_21E57B5DC();
  v11 = sub_21E57B85C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = v3;
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_21E527000, v10, v11, "DenyListManager: loading deny list from project resources.", v13, 2u);
    v14 = v13;
    v3 = v12;
    MEMORY[0x223D5D740](v14, -1, -1);
  }

  v15 = *(v4 + 8);
  v15(v9, v3);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  v18 = sub_21E57B66C();
  v19 = v3;
  v20 = sub_21E57B66C();
  v21 = [v17 URLForResource:v18 withExtension:v20];

  if (v21)
  {
    sub_21E57ABDC();

    v22 = sub_21E536B8C(v2);
    (*(v27 + 8))(v2, v28);
  }

  else
  {
    sub_21E57B5BC();
    v23 = sub_21E57B5DC();
    v24 = sub_21E57B86C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_21E527000, v23, v24, "DenyListManager: unable to get path to the deny list file", v25, 2u);
      MEMORY[0x223D5D740](v25, -1, -1);
    }

    v15(v7, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88E0, &unk_21E57C450);
    return sub_21E57B62C();
  }

  return v22;
}

uint64_t sub_21E53626C()
{
  v0 = sub_21E57ABEC();
  v43 = *(v0 - 8);
  v1 = MEMORY[0x28223BE20](v0);
  v41 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v42 = &v39 - v3;
  v46 = sub_21E57ADEC();
  v4 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E57B5EC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v44 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v40 = &v39 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - v13;
  v15 = [objc_opt_self() clientWithIdentifier_];
  sub_21E57B5BC();
  v16 = sub_21E57B5DC();
  v17 = sub_21E57B85C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = v0;
    v19 = v8;
    v20 = v7;
    v21 = v15;
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_21E527000, v16, v17, "DenyListManager: looking for deny list on Trial.", v22, 2u);
    v23 = v22;
    v15 = v21;
    v7 = v20;
    v8 = v19;
    v0 = v18;
    MEMORY[0x223D5D740](v23, -1, -1);
  }

  v45 = *(v8 + 8);
  v45(v14, v7);
  sub_21E57AD9C();
  v24 = sub_21E57B66C();

  v25 = v46;
  (*(v4 + 104))(v6, *MEMORY[0x277D60418], v46);
  sub_21E57ADDC();
  (*(v4 + 8))(v6, v25);
  v26 = sub_21E57B66C();

  v27 = [v15 levelForFactor:v24 withNamespaceName:v26];

  v28 = sub_21E57AD8C();
  if (v29)
  {
    v47 = v28;
    v48 = v29;

    MEMORY[0x223D5CBD0](47, 0xE100000000000000);

    v30 = v41;
    sub_21E57ABBC();

    v31 = v42;
    sub_21E57ABCC();
    v32 = *(v43 + 8);
    v32(v30, v0);
    v33 = sub_21E536B8C(v31);

    v32(v31, v0);
  }

  else
  {
    v35 = v40;
    sub_21E57B5BC();
    v36 = sub_21E57B5DC();
    v37 = sub_21E57B85C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_21E527000, v36, v37, "DenyListManager: No deny list on Trial.", v38, 2u);
      MEMORY[0x223D5D740](v38, -1, -1);
    }

    v45(v35, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88E0, &unk_21E57C450);
    v33 = sub_21E57B62C();
  }

  return v33;
}

uint64_t (*sub_21E536938(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_21E53815C(v6, a2, a3);
  return sub_21E539008;
}

uint64_t (*sub_21E5369AC(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v10;
  v10[4] = sub_21E5381F4(v10, a2, a3, a4, a5);
  return sub_21E536A38;
}

void sub_21E536A3C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_21E536A88(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_21E576044(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_21E536B8C(uint64_t a1)
{
  v1 = sub_21E57B5EC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v52 - v5;
  MEMORY[0x28223BE20](v4);
  v8 = &v52 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88E0, &unk_21E57C450);
  v63 = sub_21E57B62C();
  sub_21E57AB9C();
  swift_allocObject();
  v9 = sub_21E57AB8C();
  v10 = sub_21E57ABFC();
  v62 = v1;
  v59 = v6;
  v11 = v10;
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC89B8, &qword_21E57C578);
  sub_21E538DD4();
  sub_21E57AB7C();
  v53 = v11;
  v54 = v13;
  v55 = v9;
  v56 = v2;
  v57 = 0;
  v30 = 0;
  v31 = v64[0];
  v60 = 0x800000021E57F2E0;
  v61 = 0x800000021E57F2C0;
  v32 = (v2 + 8);
  *&v33 = 136315138;
  v58 = v33;
  do
  {
    v34 = byte_282F921A8[v30++ + 32];
    v35 = 0x6449656C646E7562;
    switch(v34)
    {
      case 1:
        break;
      case 2:
        v35 = 0x657361726870;
        break;
      case 3:
        v35 = 0xD00000000000001BLL;
        break;
      default:
        v35 = 0xD000000000000010;
        break;
    }

    if (*(v31 + 16))
    {
      sub_21E52F7C4(v35);
      v37 = v36;

      if (v37)
      {
        v38 = v34;
        v39 = 0x6449656C646E7562;
        switch(v38)
        {
          case 0:
            v39 = 0xD000000000000010;
            goto LABEL_36;
          case 1:
            goto LABEL_36;
          case 2:
            v39 = 0x657361726870;
            goto LABEL_36;
          case 3:
            v39 = 0xD00000000000001BLL;
LABEL_36:

            v49 = sub_21E54335C(v48);
            v50 = v63;
            swift_isUniquelyReferenced_nonNull_native();
            v64[0] = v50;
            sub_21E545AB0(v49, v39);

            v63 = v64[0];
            continue;
          default:
            goto LABEL_40;
        }
      }
    }

    else
    {
    }

    sub_21E57B5BC();
    v40 = sub_21E57B5DC();
    v41 = sub_21E57B86C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v64[0] = v43;
      *v42 = v58;
      v44 = 0xE800000000000000;
      v45 = v43;
      v46 = 0x6449656C646E7562;
      switch(v34)
      {
        case 0:
          v46 = 0xD000000000000010;
          v44 = v60;
          goto LABEL_32;
        case 1:
          goto LABEL_32;
        case 2:
          v44 = 0xE600000000000000;
          v46 = 0x657361726870;
          goto LABEL_32;
        case 3:
          v46 = 0xD00000000000001BLL;
          v44 = v61;
LABEL_32:
          v47 = sub_21E5553D8(v46, v44, v64);

          *(v42 + 4) = v47;
          _os_log_impl(&dword_21E527000, v40, v41, "DenyListManager: Unable to find attribute in the deny list: %s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v45);
          MEMORY[0x223D5D740](v45, -1, -1);
          MEMORY[0x223D5D740](v42, -1, -1);

          v1 = v62;
          (*v32)(v8, v62);
          continue;
        default:
          goto LABEL_40;
      }
    }

    (*v32)(v8, v1);
  }

  while (v30 != 4);
  sub_21E53505C(v53, v54);

  v51 = v56;
  v14 = 0;
  v15 = 0;
  v16 = v63;
  v17 = 1 << *(v63 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v63 + 64);
  v20 = (v17 + 63) >> 6;
  v21 = v59;
  while (v19)
  {
    v22 = v14;
LABEL_11:
    v23 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v24 = *(*(*(v63 + 56) + ((v22 << 9) | (8 * v23))) + 16);
    v25 = __OFADD__(v15, v24);
    v15 += v24;
    if (v25)
    {
      __break(1u);
      goto LABEL_14;
    }
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_40:
      JUMPOUT(0);
    }

    if (v22 >= v20)
    {
      break;
    }

    v19 = *(v63 + 64 + 8 * v22);
    ++v14;
    if (v19)
    {
      v14 = v22;
      goto LABEL_11;
    }
  }

LABEL_14:
  sub_21E57B5BC();
  v26 = sub_21E57B5DC();
  v27 = sub_21E57B85C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = v15;
    _os_log_impl(&dword_21E527000, v26, v27, "DenyListManager: loaded %ld records", v28, 0xCu);
    MEMORY[0x223D5D740](v28, -1, -1);
  }

  (*(v51 + 8))(v21, v1);
  return v16;
}

uint64_t sub_21E537304(uint64_t a1)
{
  v2 = sub_21E57B5EC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v52[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v52[-v8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v52[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v52[-v13];
  v15 = sub_21E57B40C();
  v17 = sub_21E53778C(v15, v16, 0);

  if (v17)
  {
    sub_21E57B5BC();

    v18 = sub_21E57B5DC();
    v19 = sub_21E57B85C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_50();
      v21 = swift_slowAlloc();
      OUTLINED_FUNCTION_3_0(v21);
      *v20 = 136315138;
      v22 = sub_21E57B40C();
      OUTLINED_FUNCTION_4_0(v22, v23);
      OUTLINED_FUNCTION_6_0();
      *(v20 + 4) = a1;
      _os_log_impl(&dword_21E527000, v18, v19, "Phrase is not being added to the index since the actionIdentifier is in the deny list: %s", v20, 0xCu);
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_39();
    }

    (*(v3 + 8))(v14, v2);
  }

  else
  {
    v24 = sub_21E57B47C();
    v26 = v25;
    v27 = sub_21E53778C(v24, v25, 1);

    if (v27)
    {
      sub_21E57B5BC();

      v28 = sub_21E57B5DC();
      v29 = sub_21E57B85C();

      if (os_log_type_enabled(v28, v29))
      {
        OUTLINED_FUNCTION_50();
        v30 = OUTLINED_FUNCTION_2_0();
        OUTLINED_FUNCTION_3_0(v30);
        *v26 = 136315138;
        v31 = sub_21E57B47C();
        OUTLINED_FUNCTION_4_0(v31, v32);
        OUTLINED_FUNCTION_6_0();
        *(v26 + 4) = a1;
        _os_log_impl(&dword_21E527000, v28, v29, "Phrase is not being added to the index since the bundleId is in the deny list: %s", v26, 0xCu);
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_39();
      }

      (*(v3 + 8))(v12, v2);
    }

    else
    {
      v33 = sub_21E57B45C();
      v35 = sub_21E53778C(v33, v34, 2);

      if (v35)
      {
        sub_21E57B5BC();

        v37 = sub_21E57B5DC();
        v38 = sub_21E57B85C();

        if (os_log_type_enabled(v37, v38))
        {
          OUTLINED_FUNCTION_50();
          v39 = OUTLINED_FUNCTION_2_0();
          OUTLINED_FUNCTION_3_0(v39);
          *v26 = 136315138;
          v40 = sub_21E57B45C();
          OUTLINED_FUNCTION_4_0(v40, v41);
          OUTLINED_FUNCTION_6_0();
          *(v26 + 4) = a1;
          _os_log_impl(&dword_21E527000, v37, v38, "Phrase is not being added to the index since the phrase is in the deny list: %s", v26, 0xCu);
          OUTLINED_FUNCTION_0_0();
          OUTLINED_FUNCTION_39();
        }

        (*(v3 + 8))(v9, v2);
      }

      else
      {
        v42 = sub_21E537AAC(v36);
        v44 = sub_21E53778C(v42, v43, 3);

        if (!v44)
        {
          return 0;
        }

        sub_21E57B5BC();

        v45 = sub_21E57B5DC();
        v46 = sub_21E57B85C();

        if (os_log_type_enabled(v45, v46))
        {
          OUTLINED_FUNCTION_50();
          v47 = OUTLINED_FUNCTION_2_0();
          v48 = OUTLINED_FUNCTION_3_0(v47);
          *v26 = 136315138;
          v49 = sub_21E537AAC(v48);
          OUTLINED_FUNCTION_4_0(v49, v50);
          OUTLINED_FUNCTION_6_0();
          *(v26 + 4) = a1;
          _os_log_impl(&dword_21E527000, v45, v46, "Phrase is not being added to the index since the bundleId and ActionIdentifier pair is in the deny list: %s)", v26, 0xCu);
          OUTLINED_FUNCTION_0_0();
          OUTLINED_FUNCTION_39();
        }

        (*(v3 + 8))(v6, v2);
      }
    }
  }

  return 1;
}

BOOL sub_21E53778C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = 0x6449656C646E7562;
  v7 = sub_21E57B5EC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21E5351EC();

  if (v11)
  {
    v12 = sub_21E543EB0(a1, a2, v11);

    return v12;
  }

  else
  {
    sub_21E57B5BC();
    v14 = sub_21E57B5DC();
    v15 = sub_21E57B86C();
    if (os_log_type_enabled(v14, v15))
    {
      v21 = v8;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      v18 = 0xE800000000000000;
      v19 = v17;
      switch(a3)
      {
        case 0:
          v6 = 0xD000000000000010;
          v18 = 0x800000021E57F2E0;
          break;
        case 1:
          break;
        case 2:
          v18 = 0xE600000000000000;
          v6 = 0x657361726870;
          break;
        case 3:
          v18 = 0x800000021E57F2C0;
          v6 = 0xD00000000000001BLL;
          break;
        default:
          JUMPOUT(0);
      }

      v20 = sub_21E5553D8(v6, v18, &v22);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_21E527000, v14, v15, "DenyListManager: Unable to find attribute in the deny list: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x223D5D740](v19, -1, -1);
      MEMORY[0x223D5D740](v16, -1, -1);

      (*(v21 + 8))(v10, v7);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    return 0;
  }
}

uint64_t sub_21E537AAC(uint64_t a1)
{
  v5 = sub_21E57B47C();

  MEMORY[0x223D5CBD0](95, 0xE100000000000000);

  v1 = sub_21E57B40C();
  v3 = v2;

  MEMORY[0x223D5CBD0](v1, v3);

  return v5;
}

uint64_t sub_21E537B54()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_21E537BB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC89B0, &qword_21E57C570);
  v34 = v4;
  result = sub_21E57BA5C();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v33 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_21E575FE0(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v34 & 1) == 0)
    {
    }

    sub_21E57BB8C();
    sub_21E57B6AC();
    result = sub_21E57BBCC();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_21E537E54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;

  return a2;
}

uint64_t sub_21E537EA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v43 = a5;
  sub_21E538D98(a1, a2, a3, v42);
  v6 = v42[1];
  v7 = v42[3];
  v8 = v42[4];
  v38 = v42[5];
  v39 = v42[0];
  v9 = (v42[2] + 64) >> 6;

  v36 = v9;
  v37 = v6;
  if (v8)
  {
    while (1)
    {
      v10 = v7;
LABEL_7:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v39 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v39 + 56) + 8 * v12);
      v41[0] = *v13;
      v41[1] = v14;
      v41[2] = v15;

      v38(v40, v41);

      v16 = v40[0];
      v17 = v40[1];
      v18 = v40[2];
      v19 = *v43;
      v21 = sub_21E52F7C4(v40[0]);
      v22 = v19[2];
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v25 = v20;
      if (v19[3] >= v24)
      {
        if ((a4 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC89A8, &unk_21E57C560);
          sub_21E57BA2C();
        }
      }

      else
      {
        sub_21E537BB0(v24, a4 & 1);
        v26 = sub_21E52F7C4(v16);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_23;
        }

        v21 = v26;
      }

      v8 &= v8 - 1;
      v28 = *v43;
      if (v25)
      {
        v29 = *(v28[7] + 8 * v21);

        v30 = sub_21E52E418(v18, v29);

        *(v28[7] + 8 * v21) = v30;
      }

      else
      {
        v28[(v21 >> 6) + 8] |= 1 << v21;
        v31 = (v28[6] + 16 * v21);
        *v31 = v16;
        v31[1] = v17;
        *(v28[7] + 8 * v21) = v18;
        v32 = v28[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_22;
        }

        v28[2] = v34;
      }

      a4 = 1;
      v7 = v10;
      v9 = v36;
      v6 = v37;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_21E534EAC(v39);
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_21E57BB6C();
  __break(1u);
  return result;
}

uint64_t (*sub_21E53815C(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_21E538784(v6);
  v6[9] = sub_21E538308(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_21E53900C;
}

uint64_t (*sub_21E5381F4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10[8] = sub_21E5387AC(v10);
  v10[9] = sub_21E538524(v10 + 4, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);
  return sub_21E5382A4;
}

void sub_21E5382A8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_21E538308(uint64_t *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  v9 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v9;
  v9[2] = a3;
  v9[3] = v4;
  v9[1] = a2;
  v10 = *v4;
  v11 = sub_21E52F7C4(a2);
  *(v9 + 40) = v12 & 1;
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC89A8, &unk_21E57C560);
  if (sub_21E57BA1C())
  {
    v15 = sub_21E52F7C4(a2);
    if ((v14 & 1) == (v16 & 1))
    {
      v13 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_21E57BB6C();
    __break(1u);
    return result;
  }

LABEL_5:
  v9[4] = v13;
  if (v14)
  {
    v17 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v17 = 0;
  }

  *v9 = v17;
  return sub_21E538448;
}

void sub_21E538448(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      sub_21E5461B8(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    sub_21E538D44(*(*v1[3] + 48) + 16 * v1[4]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88E0, &unk_21E57C450);
    sub_21E57BA3C();
  }

  free(v1);
}

void (*sub_21E538524(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6))(__int128 **a1)
{
  v7 = v6;
  v13 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v13;
  v13[5] = a5;
  v13[6] = v7;
  v13[3] = a3;
  v13[4] = a4;
  v13[2] = a2;
  v14 = *v7;
  v15 = sub_21E52F880(a2, a3, a4, a5);
  *(v13 + 64) = v16 & 1;
  if (__OFADD__(*(v14 + 16), (v16 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
  }

  v17 = v15;
  v18 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC89C0, &qword_21E57D420);
  if (sub_21E57BA1C())
  {
    v19 = sub_21E52F880(a2, a3, a4, a5);
    if ((v18 & 1) == (v20 & 1))
    {
      v17 = v19;
      goto LABEL_5;
    }

LABEL_9:
    result = sub_21E57BB6C();
    __break(1u);
    return result;
  }

LABEL_5:
  v13[7] = v17;
  v21 = 0uLL;
  if (v18)
  {
    v21 = *(*(*v7 + 56) + 16 * v17);
  }

  *v13 = v21;
  return sub_21E53868C;
}

void sub_21E53868C(__int128 **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = **a1;
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 1);
  if (v3)
  {
    v6 = v1[7];
    v7 = *v1[6];
    if (v4)
    {
      *(v7[7] + 16 * v6) = v2;
    }

    else
    {
      sub_21E546224(v6, v1[2], v1[3], v1[4], v1[5], v3, v5, v7);
    }
  }

  else if ((*a1)[4])
  {
    sub_21E538F5C(*(*v1[6] + 48) + 32 * v1[7]);
    sub_21E538FB0();
    sub_21E57BA3C();
  }

  v8 = *v1;
  sub_21E538EDC(v3, v5);
  sub_21E538F1C(v8);

  free(v1);
}

uint64_t (*sub_21E538784(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_21E539004;
}

uint64_t (*sub_21E5387AC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_21E5387D4;
}

uint64_t sub_21E5387E0(uint64_t a1, uint64_t *a2)
{
  v28[1] = a1;
  v3 = sub_21E57B5EC();
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v4);
  v6 = v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC89A0, &qword_21E57C558);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v28 - v8;
  v10 = sub_21E57AE5C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[5] = a2;

  sub_21E57ADFC();

  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  (*(v11 + 32))(v13, v9, v10);
  v14 = *(sub_21E57AE3C() + 16);

  v15 = *(sub_21E57AE4C() + 16);

  v17 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
  }

  else
  {
    v18 = v11;
    sub_21E57B5BC();
    v19 = sub_21E57B5DC();
    v20 = sub_21E57B85C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = v17;
      _os_log_impl(&dword_21E527000, v19, v20, "DenyListManager: loaded %ld records from suggestions deny list.", v21, 0xCu);
      MEMORY[0x223D5D740](v21, -1, -1);
    }

    (*(v29 + 8))(v6, v30);
    v22 = sub_21E536938(v31, 0xD000000000000010, 0x800000021E57F2E0);
    if (*v23)
    {
      v24 = sub_21E57AE3C();
      sub_21E536A88(v24);
    }

    (v22)(v31, 0);
    v25 = sub_21E536938(v31, 0xD000000000000010, 0x800000021E57F2E0);
    if (*v26)
    {
      v27 = sub_21E57AE4C();
      sub_21E536A88(v27);
    }

    (v25)(v31, 0);
    return (*(v18 + 8))(v13, v10);
  }

  return result;
}

uint64_t sub_21E538C64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21E537E54(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_21E538CA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC89A0, &qword_21E57C558);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_21E538D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

unint64_t sub_21E538DD4()
{
  result = qword_2812264E0;
  if (!qword_2812264E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC89B8, &qword_21E57C578);
    sub_21E538E60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812264E0);
  }

  return result;
}

unint64_t sub_21E538E60()
{
  result = qword_2812264D8;
  if (!qword_2812264D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC8958, &unk_21E57C580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812264D8);
  }

  return result;
}

uint64_t sub_21E538EDC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21E538F1C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_21E538FB0()
{
  result = qword_2812261B8;
  if (!qword_2812261B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812261B8);
  }

  return result;
}

void OUTLINED_FUNCTION_0_0()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x223D5D740);
}

uint64_t OUTLINED_FUNCTION_2_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1, unint64_t a2)
{

  return sub_21E5553D8(a1, a2, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_6_0()
{
}

uint64_t sub_21E53909C()
{
  v0 = sub_21E57B5EC();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  v4 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v4);
  v6 = v26 - v5;
  v7 = sub_21E57ABEC();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v26 - v14;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  v18 = sub_21E546314(0xD00000000000001BLL, 0x800000021E57F340, 0x7473696C70, 0xE500000000000000, v17);

  if (v18)
  {
    sub_21E57ABDC();

    (*(v9 + 32))(v15, v13, v7);
    sub_21E57AB9C();
    swift_allocObject();
    sub_21E57AB8C();
    v19 = sub_21E57ABFC();
    v21 = v20;
    sub_21E53C0E8();
    sub_21E57AB7C();
    (*(v9 + 8))(v15, v7);
    sub_21E53505C(v19, v21);

    return v26[2];
  }

  else
  {
    sub_21E57B5BC();
    v22 = sub_21E57B5DC();
    v23 = sub_21E57B85C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_21E527000, v22, v23, "BaseSetAppIntentSuggestionSource: unable to get URL to filePath. Returning 0 phrases", v24, 2u);
      OUTLINED_FUNCTION_39();
    }

    (*(v2 + 8))(v6, v0);
    return 0;
  }
}

void *sub_21E539508(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC89F8, &qword_21E57C658);
    v4 = sub_21E57BA6C();
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  OUTLINED_FUNCTION_1_0();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v11 = 0;
  while (v7)
  {
    v12 = v11;
LABEL_10:
    v7 &= v7 - 1;
    OUTLINED_FUNCTION_3_1();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8980, &qword_21E57C500);
    swift_dynamicCast();
    sub_21E53C0D0(v22, v24);
    sub_21E53C0D0(v24, v25);
    sub_21E53C0D0(v25, &v23);
    result = sub_21E52F7C4(v2);
    v13 = result;
    if (v14)
    {
      OUTLINED_FUNCTION_8_0();
      *v15 = v2;
      v15[1] = v1;

      v1 = (v4[7] + 48 * v13);
      __swift_destroy_boxed_opaque_existential_0Tm(v1);
      result = sub_21E53C0D0(&v23, v1);
      v11 = v12;
    }

    else
    {
      if (v4[2] >= v4[3])
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_6_1();
      *(v4 + v16 + 64) |= v17;
      OUTLINED_FUNCTION_8_0();
      *v18 = v2;
      v18[1] = v1;
      result = sub_21E53C0D0(&v23, (v4[7] + 48 * v13));
      v19 = v4[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_18;
      }

      v4[2] = v21;
      v11 = v12;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return v4;
    }

    v7 = *(v3 + 8 * v12);
    ++v11;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_21E539720(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC89F0, &qword_21E57C648);
    v4 = sub_21E57BA6C();
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  OUTLINED_FUNCTION_1_0();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
    v11 = v10;
LABEL_10:
    v7 &= v7 - 1;
    OUTLINED_FUNCTION_3_1();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8978, &qword_21E57C650);
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    v33 = v29;
    v25 = v26;
    v26 = v27;
    v27 = v28;
    *&v28 = v29;
    v12 = sub_21E52F7C4(v2);
    if (v13)
    {
      OUTLINED_FUNCTION_8_0();
      *v14 = v2;
      v14[1] = v1;

      sub_21E53C060(&v25, v4[7] + 56 * v12);
      v10 = v11;
    }

    else
    {
      if (v4[2] >= v4[3])
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_6_1();
      *(v4 + v15 + 64) |= v16;
      OUTLINED_FUNCTION_8_0();
      *v17 = v2;
      v17[1] = v1;
      v18 = v4[7] + 56 * v12;
      v19 = v25;
      v20 = v26;
      v21 = v27;
      *(v18 + 48) = v28;
      *(v18 + 16) = v20;
      *(v18 + 32) = v21;
      *v18 = v19;
      v22 = v4[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_18;
      }

      v4[2] = v24;
      v10 = v11;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v7 = *(v3 + 8 * v11);
    ++v10;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_21E53994C(uint64_t a1)
{

  sub_21E5427F8(a1);
}

uint64_t sub_21E53999C()
{
  v1 = OBJC_IVAR____TtC16SiriAutoComplete29BaseSetAppIntentPhrasesSource_source;
  sub_21E57B3DC();
  OUTLINED_FUNCTION_82();
  (*(v2 + 8))(v0 + v1);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC16SiriAutoComplete29BaseSetAppIntentPhrasesSource_suggestionsForIntentProvider));
  return v0;
}

uint64_t sub_21E539A10()
{
  sub_21E53999C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for BaseSetAppIntentPhrasesSource(uint64_t a1)
{
  result = qword_27CEC89D0;
  if (!qword_27CEC89D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E539ABC(uint64_t a1)
{
  result = sub_21E57B3DC();
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

uint64_t sub_21E539B64(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x800000021E57F360 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21E57BB3C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_21E539C14()
{
  sub_21E57BB8C();
  MEMORY[0x223D5D090](0);
  return sub_21E57BBCC();
}

uint64_t sub_21E539C80@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16SiriAutoComplete29BaseSetAppIntentPhrasesSource_source;
  v5 = sub_21E57B3DC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_21E539CFC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21E539DD0;

  return sub_21E53B354(v8, a2, a3, v7);
}

uint64_t sub_21E539DD0(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_10_0();
  *v4 = v3;

  OUTLINED_FUNCTION_9_0();

  return v5(a1);
}

uint64_t sub_21E539ED0(uint64_t a1)
{
  sub_21E57BB8C();
  MEMORY[0x223D5D090](0);
  return sub_21E57BBCC();
}

uint64_t sub_21E539F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E539B64(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21E539F5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E539BE4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21E539F88(uint64_t a1)
{
  v2 = sub_21E53C14C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E539FC4(uint64_t a1)
{
  v2 = sub_21E53C14C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21E53A000(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8A30, &qword_21E57C708);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E53C14C();
  sub_21E57BBEC();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8A18, &qword_21E57C700);
  sub_21E53C1F4(&qword_27CEC8A38, sub_21E53C26C, MEMORY[0x277D83948]);
  sub_21E57BAFC();
  return (*(v6 + 8))(v9, v4);
}

void *sub_21E53A17C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8A08, &qword_21E57C6F8);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E53C14C();
  sub_21E57BBDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8A18, &qword_21E57C700);
    sub_21E53C1F4(&qword_27CEC8A20, sub_21E53C1A0, MEMORY[0x277D83978]);
    sub_21E57BABC();
    (*(v5 + 8))(v8, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v9;
}

uint64_t sub_21E53A320(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E746E65746E69 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_21E57BB3C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
    if (v6 || (sub_21E57BB3C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x800000021E57F380 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_21E57BB3C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_21E53A484(unsigned __int8 a1)
{
  sub_21E57BB8C();
  MEMORY[0x223D5D090](a1);
  return sub_21E57BBCC();
}

uint64_t sub_21E53A4CC(char a1)
{
  if (!a1)
  {
    return 0x614E746E65746E69;
  }

  if (a1 == 1)
  {
    return 0x6C646E7542707061;
  }

  return 0xD000000000000010;
}

uint64_t sub_21E53A534(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8A78, &qword_21E57C8D0);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E53C584();
  sub_21E57BBEC();
  v15 = 0;
  sub_21E57BAEC();
  if (!v2)
  {
    v14 = 1;
    sub_21E57BAEC();
    v13 = *(v3 + 32);
    v12[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8A70, &qword_21E57CEB0);
    sub_21E53C5D8(&qword_27CEC8A80, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_21E57BADC();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_21E53A700@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8A60, &unk_21E57C8C0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E53C584();
  sub_21E57BBDC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v6 = sub_21E57BAAC();
  v8 = v7;
  v15 = v6;
  v13 = sub_21E57BAAC();
  v14 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8A70, &qword_21E57CEB0);
  sub_21E53C5D8(qword_2812260F8, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_21E57BA9C();
  v10 = OUTLINED_FUNCTION_2_1();
  v11(v10);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v15;
  a2[1] = v8;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v16;
  return result;
}

void *sub_21E53A968@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_21E53A17C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_21E53A9CC(uint64_t a1)
{
  v2 = *v1;
  sub_21E57BB8C();
  MEMORY[0x223D5D090](v2);
  return sub_21E57BBCC();
}

uint64_t sub_21E53AA18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E53A320(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21E53AA60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E53A444();
  *a1 = result;
  return result;
}

uint64_t sub_21E53AA88(uint64_t a1)
{
  v2 = sub_21E53C584();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E53AAC4(uint64_t a1)
{
  v2 = sub_21E53C584();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_21E53AB00@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21E53A700(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_21E53AB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  v5 = sub_21E57B06C();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC89E8, &unk_21E57C638);
  v3[13] = swift_task_alloc();
  v6 = sub_21E57AFEC();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v7 = sub_21E57B03C();
  v3[17] = v7;
  v3[18] = *(v7 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[5] = type metadata accessor for DefaultEligibilityCriteria();
  v3[6] = &off_282F92F38;
  v3[2] = a2;

  return MEMORY[0x2822009F8](sub_21E53AD50);
}

uint64_t sub_21E53AD50()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[18];
    v34 = v0[16];
    v32 = *MEMORY[0x277D60878];
    v30 = (v3 + 16);
    v31 = (v0[15] + 104);
    v29 = (v0[10] + 16);
    v33 = v0[10];
    v28 = (v3 + 8);
    v4 = (v1 + 64);
    v40 = MEMORY[0x277D84F90];
    do
    {
      v5 = *(v4 - 4);
      v6 = *(v4 - 3);
      v7 = *(v4 - 2);
      v8 = *(v4 - 1);
      v9 = *v4;
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

      swift_bridgeObjectRetain_n();

      if (sub_21E54A03C(v7))
      {
        v39 = v2;
        v10 = v0[16];
        v11 = v0[14];

        MEMORY[0x223D5CBD0](46, 0xE100000000000000);

        MEMORY[0x223D5CBD0](v5, v6);

        *v10 = v7;
        *(v34 + 8) = v8;
        (*v31)(v10, v32, v11);
        if (!v9)
        {
          v9 = sub_21E57B62C();
        }

        v13 = v0[19];
        v12 = v0[20];
        v14 = v0[13];
        v35 = v0[17];
        v36 = v0[12];
        v37 = v0[11];
        v38 = v0[9];

        sub_21E539720(v9);

        v15 = sub_21E57B08C();
        OUTLINED_FUNCTION_11_0(v14, v16, v17, v15);
        sub_21E57AFFC();
        (*v30)(v13, v12, v35);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8980, &qword_21E57C500);
        sub_21E57B62C();
        sub_21E57B05C();
        (*v29)(v37, v36, v38);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21E5438E4(0, *(v40 + 16) + 1, 1, v40);
          v40 = v24;
        }

        v19 = *(v40 + 16);
        v18 = *(v40 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_21E5438E4(v18 > 1, v19 + 1, 1, v40);
          v40 = v25;
        }

        v20 = v0[20];
        v21 = v0[17];
        v22 = v0[11];
        v23 = v0[9];
        (*(v33 + 8))(v0[12], v23);
        (*v28)(v20, v21);
        *(v40 + 16) = v19 + 1;
        (*(v33 + 32))(v40 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v19, v22, v23);
        v2 = v39;
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      v4 += 5;
      --v2;
    }

    while (v2);
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
  }

  v0[21] = v40;
  __swift_project_boxed_opaque_existential_1((v0[8] + OBJC_IVAR____TtC16SiriAutoComplete29BaseSetAppIntentPhrasesSource_suggestionsForIntentProvider), *(v0[8] + OBJC_IVAR____TtC16SiriAutoComplete29BaseSetAppIntentPhrasesSource_suggestionsForIntentProvider + 24));
  v26 = swift_task_alloc();
  v0[22] = v26;
  *v26 = v0;
  v26[1] = sub_21E53B184;

  return sub_21E5615B8();
}

uint64_t sub_21E53B184(uint64_t a1)
{
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 184) = v4;

  return MEMORY[0x2822009F8](sub_21E53B280);
}

uint64_t sub_21E53B280()
{
  v1 = *(v0 + 184);

  if (!v1)
  {
    v1 = MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  OUTLINED_FUNCTION_9_0();

  return v2(v1);
}

uint64_t sub_21E53B354(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[8] = a2;
  v4[11] = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88F8, &unk_21E57C470);
  v4[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8900, &unk_21E57C620);
  v4[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88D8, &unk_21E57D3B0);
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8908, &qword_21E57C480);
  v4[15] = swift_task_alloc();
  v6 = sub_21E57B3DC();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC89E0, &unk_21E57D3C0);
  v4[19] = swift_task_alloc();
  v7 = sub_21E57B23C();
  v4[20] = v7;
  v4[21] = *(v7 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v8 = sub_21E57AFDC();
  v4[24] = v8;
  v4[25] = *(v8 - 8);
  v4[26] = swift_task_alloc();
  v9 = sub_21E57AF9C();
  v4[27] = v9;
  v4[28] = *(v9 - 8);
  v4[29] = swift_task_alloc();
  v10 = sub_21E57B5EC();
  v4[30] = v10;
  v4[31] = *(v10 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[5] = type metadata accessor for DefaultEligibilityCriteria();
  v4[6] = &off_282F92F38;
  v4[2] = a1;

  return MEMORY[0x2822009F8](sub_21E53B708);
}

uint64_t sub_21E53B708(uint64_t a1)
{
  v23 = v1;
  sub_21E57B5BC();
  v2 = sub_21E57B5DC();
  v3 = sub_21E57B84C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[33];
  v6 = v1[30];
  v7 = v1[31];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    v10 = sub_21E57BC2C();
    v12 = sub_21E5553D8(v10, v11, &v22);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_21E527000, v2, v3, "%s: Fetching phrases", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_39();
  }

  v13 = *(v7 + 8);
  v13(v5, v6);
  v1[34] = v13;
  v1[7] = MEMORY[0x277D84F90];
  v14 = sub_21E53909C();
  v1[35] = v14;
  if (v14)
  {
    v15 = v14;
    v16 = *__swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    v17 = swift_task_alloc();
    v1[36] = v17;
    *v17 = v1;
    v17[1] = sub_21E53B9C0;
    v18 = v1[10];

    return sub_21E53AB60(v15, v16, v18);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v1 + 2);

    OUTLINED_FUNCTION_9_0();
    v21 = MEMORY[0x277D84F90];

    return v20(v21);
  }
}

uint64_t sub_21E53B9C0(uint64_t a1)
{
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_10_0();
  *v5 = v4;
  *(v7 + 296) = v6;

  return MEMORY[0x2822009F8](sub_21E53BAD8);
}

uint64_t sub_21E53BAD8()
{
  v1 = v0[37];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[28];
    v4 = v0[25];
    v5 = v0[21];
    v6 = v0[17];
    v52 = v0[10];
    sub_21E57B5AC();
    v7 = *(v3 + 16);
    v3 += 16;
    v51 = v7;
    v8 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v49 = *(v3 + 56);
    v50 = OBJC_IVAR____TtC16SiriAutoComplete29BaseSetAppIntentPhrasesSource_source;
    v47 = (v5 + 8);
    v48 = (v4 + 8);
    v45 = (v3 - 8);
    v46 = (v6 + 16);
    do
    {
      v53 = v2;
      v9 = v0[26];
      v11 = v0[23];
      v10 = v0[24];
      v12 = v0[22];
      v13 = v0[19];
      v14 = v0[20];
      v51(v0[29], v8, v0[27]);
      sub_21E57AF5C();
      sub_21E57AFAC();
      (*v48)(v9, v10);
      sub_21E57AF6C();
      sub_21E57B22C();
      v15 = *v47;
      (*v47)(v11, v14);
      sub_21E57AF6C();
      sub_21E57B20C();
      v15(v12, v14);
      v16 = sub_21E57B0CC();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v16);
      v18 = v0[19];
      if (EnumTagSinglePayload == 1)
      {
        sub_21E5350C0(v0[19], &qword_27CEC89E0, &unk_21E57D3C0);
      }

      else
      {
        sub_21E57B0BC();
        (*(*(v16 - 8) + 8))(v18, v16);
      }

      v19 = v0[15];
      v20 = v0[14];
      v21 = v0[12];
      (*v46)(v0[18], v52 + v50, v0[16]);
      v22 = sub_21E57B1FC();
      OUTLINED_FUNCTION_11_0(v19, v23, v24, v22);
      v25 = sub_21E57AC4C();
      OUTLINED_FUNCTION_11_0(v20, v26, v27, v25);
      sub_21E57AF7C();
      v28 = sub_21E57B04C();
      OUTLINED_FUNCTION_11_0(v21, v29, v30, v28);
      sub_21E57B59C();
      sub_21E57B4AC();
      swift_allocObject();

      sub_21E57B44C();

      MEMORY[0x223D5CC60](v31);
      if (*((v0[7] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[7] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21E57B7AC();
      }

      v32 = v0[29];
      v33 = v0[27];
      sub_21E57B7CC();

      (*v45)(v32, v33);
      v8 += v49;
      v2 = v53 - 1;
    }

    while (v53 != 1);
    v34 = v0[7];
  }

  else
  {

    v34 = MEMORY[0x277D84F90];
  }

  swift_bridgeObjectRetain_n();
  sub_21E53994C(v34);
  sub_21E57B5BC();

  v35 = sub_21E57B5DC();
  v36 = sub_21E57B84C();
  v37 = os_log_type_enabled(v35, v36);
  v38 = v0[34];
  v39 = v0[32];
  v40 = v0[30];
  if (v37)
  {
    v41 = swift_slowAlloc();
    *v41 = 134217984;
    v42 = sub_21E529E5C(v34);

    *(v41 + 4) = v42;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&dword_21E527000, v35, v36, "BaseSetAppIntentPhrasesSource: created %ld phrases", v41, 0xCu);
    OUTLINED_FUNCTION_39();

    v38(v39, v40);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v38(v39, v40);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  OUTLINED_FUNCTION_9_0();

  return v43(v34);
}

uint64_t sub_21E53C060(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8978, &qword_21E57C650);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_OWORD *sub_21E53C0D0(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

unint64_t sub_21E53C0E8()
{
  result = qword_27CEC8A00;
  if (!qword_27CEC8A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8A00);
  }

  return result;
}

unint64_t sub_21E53C14C()
{
  result = qword_27CEC8A10;
  if (!qword_27CEC8A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8A10);
  }

  return result;
}

unint64_t sub_21E53C1A0()
{
  result = qword_27CEC8A28;
  if (!qword_27CEC8A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8A28);
  }

  return result;
}

uint64_t sub_21E53C1F4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC8A18, &qword_21E57C700);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21E53C26C()
{
  result = qword_27CEC8A40;
  if (!qword_27CEC8A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8A40);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BaseSetAppIntentList.CodingKeys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for BaseSetAppIntentList.CodingKeys(_BYTE *result, int a2, int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21E53C3E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_21E53C424(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21E53C480()
{
  result = qword_27CEC8A48;
  if (!qword_27CEC8A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8A48);
  }

  return result;
}

unint64_t sub_21E53C4D8()
{
  result = qword_27CEC8A50;
  if (!qword_27CEC8A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8A50);
  }

  return result;
}

unint64_t sub_21E53C530()
{
  result = qword_27CEC8A58;
  if (!qword_27CEC8A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8A58);
  }

  return result;
}

unint64_t sub_21E53C584()
{
  result = qword_27CEC8A68;
  if (!qword_27CEC8A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8A68);
  }

  return result;
}

uint64_t sub_21E53C5D8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC8A70, &qword_21E57CEB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriAutoCompleteHistogramType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BaseSetAppIntentInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21E53C7C0()
{
  result = qword_27CEC8A88;
  if (!qword_27CEC8A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8A88);
  }

  return result;
}

unint64_t sub_21E53C818()
{
  result = qword_27CEC8A90;
  if (!qword_27CEC8A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8A90);
  }

  return result;
}

unint64_t sub_21E53C870()
{
  result = qword_27CEC8A98;
  if (!qword_27CEC8A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8A98);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t sub_21E53C9CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000021E57F2E0 == a2;
  if (v3 || (sub_21E57BB3C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (sub_21E57BB3C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x657361726870 && a2 == 0xE600000000000000;
      if (v7 || (sub_21E57BB3C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6574656D61726170 && a2 == 0xE900000000000072)
      {

        return 3;
      }

      else
      {
        v9 = sub_21E57BB3C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_21E53CB38(char a1)
{
  result = 0x6449656C646E7562;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x657361726870;
      break;
    case 3:
      result = 0x6574656D61726170;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_21E53CBC0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8B28, &qword_21E57CEC0);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E540638();
  sub_21E57BBEC();
  v14 = 0;
  OUTLINED_FUNCTION_10_1();
  sub_21E57BAEC();
  if (!v2)
  {
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_10_1();
    sub_21E57BAEC();
    v13 = *(v3 + 32);
    v12[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8A70, &qword_21E57CEB0);
    sub_21E5406E0(&qword_27CEC8A80);
    OUTLINED_FUNCTION_1_1(&v13);
    v12[14] = 3;
    OUTLINED_FUNCTION_10_1();
    sub_21E57BACC();
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_21E53CD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_25_0();
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8B18, &qword_21E57CEA8);
  OUTLINED_FUNCTION_0();
  v31 = v30;
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v32);
  v34 = &v48 - v33;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_21E540638();
  sub_21E57BBDC();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  else
  {
    OUTLINED_FUNCTION_12_0();
    v35 = sub_21E57BAAC();
    v37 = v36;
    v51 = v35;
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_12_0();
    v38 = sub_21E57BAAC();
    v52 = v39;
    v50 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8A70, &qword_21E57CEB0);
    sub_21E5406E0(qword_2812260F8);
    sub_21E57BABC();
    v49 = v53;
    OUTLINED_FUNCTION_12_0();
    v40 = sub_21E57BA8C();
    v42 = v41;
    v43 = *(v31 + 8);
    v48 = v40;
    v43(v34, v29);

    v44 = v52;

    v45 = v49;

    __swift_destroy_boxed_opaque_existential_0Tm(v26);

    v46 = v50;
    *v28 = v51;
    v28[1] = v37;
    v28[2] = v46;
    v28[3] = v44;
    v47 = v48;
    v28[4] = v45;
    v28[5] = v47;
    v28[6] = v42;
  }

  OUTLINED_FUNCTION_28_0();
}

uint64_t sub_21E53D070(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000021E57F2E0 == a2;
  if (v3 || (sub_21E57BB3C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_21E57BB3C();

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

uint64_t sub_21E53D148(char a1)
{
  if (a1)
  {
    return 0x6449656C646E7562;
  }

  else
  {
    return 0xD000000000000010;
  }
}

void sub_21E53D184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_25_0();
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8B30, &qword_21E57CEC8);
  OUTLINED_FUNCTION_0();
  v28 = v27;
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_14_0();
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_21E54068C();
  sub_21E57BBEC();
  sub_21E57BAEC();
  if (!v22)
  {
    OUTLINED_FUNCTION_18_0();
    sub_21E57BAEC();
  }

  (*(v28 + 8))(v23, v26);
  OUTLINED_FUNCTION_28_0();
}

void sub_21E53D2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_25_0();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8B20, &qword_21E57CEB8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_14_0();
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  v26 = sub_21E54068C();
  OUTLINED_FUNCTION_16_0(&type metadata for ApprovedAction.CodingKeys, v27, v26);
  if (!v22)
  {
    sub_21E57BAAC();
    OUTLINED_FUNCTION_18_0();
    sub_21E57BAAC();
    v28 = OUTLINED_FUNCTION_9_1();
    v29(v28);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  OUTLINED_FUNCTION_28_0();
}

uint64_t sub_21E53D468(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465766F72707061 && a2 == 0xEF73657361726850;
  if (v4 || (sub_21E57BB3C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x800000021E57F440 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_21E57BB3C();

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

uint64_t sub_21E53D540(char a1)
{
  sub_21E57BB8C();
  MEMORY[0x223D5D090](a1 & 1);
  return sub_21E57BBCC();
}

uint64_t sub_21E53D588(char a1)
{
  if (a1)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0x6465766F72707061;
  }
}

void sub_21E53D5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8AE8, &qword_21E57CC90);
  OUTLINED_FUNCTION_0();
  v31 = v30;
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v32);
  v34 = &v35 - v33;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_21E54017C();
  sub_21E57BBEC();
  a10 = v26;
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8AD8, &qword_21E57CC80);
  sub_21E5402D8(&unk_27CEC8AF0);
  OUTLINED_FUNCTION_1_1(&a10);
  if (!v20)
  {
    a10 = v24;
    v36 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8AE0, &qword_21E57CC88);
    sub_21E540224(&unk_27CEC8B00);
    OUTLINED_FUNCTION_1_1(&a10);
  }

  (*(v31 + 8))(v34, v29);
  OUTLINED_FUNCTION_28_0();
}

uint64_t sub_21E53D7A8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8AD0, &qword_21E57CC78);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14_0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_21E54017C();
  OUTLINED_FUNCTION_16_0(&type metadata for ApprovedPhraseList.CodingKeys, v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8AD8, &qword_21E57CC80);
  sub_21E5402D8(&unk_2812260E8);
  OUTLINED_FUNCTION_7_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8AE0, &qword_21E57CC88);
  sub_21E540224(&unk_2812260F0);
  OUTLINED_FUNCTION_7_0();
  v6 = OUTLINED_FUNCTION_9_1();
  v7(v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t sub_21E53D9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_21E57BB3C(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_21E57BB3C();
    }
  }

  return result;
}

uint64_t sub_21E53DA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21E57B6AC();

  return sub_21E57B6AC();
}

uint64_t sub_21E53DA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_19_0();
  sub_21E57BB8C();
  sub_21E57B6AC();
  sub_21E57B6AC();
  return sub_21E57BBCC();
}

uint64_t sub_21E53DB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_21E53FBDC(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_21E57412C(a2, a4);
}

uint64_t sub_21E53DB58(const void *a1, uint64_t a2, uint64_t a3)
{
  sub_21E53FD84(a1, a2);

  return sub_21E579E90(a1, a3);
}

uint64_t sub_21E53DB98(uint64_t a1, uint64_t a2)
{
  sub_21E57BB8C();
  sub_21E53FD84(v5, a1);
  sub_21E579E90(v5, a2);
  return sub_21E57BBCC();
}

uint64_t sub_21E53DBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E53C9CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21E53DC20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E53CB30();
  *a1 = result;
  return result;
}

uint64_t sub_21E53DC48(uint64_t a1)
{
  v2 = sub_21E540638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E53DC84(uint64_t a1)
{
  v2 = sub_21E540638();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_21E53DCC0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_21E53CD84(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13, SBYTE4(v13), SBYTE5(v13), SBYTE6(v13), SHIBYTE(v13), v15, v16, v18, v19, v21, v22, v24, v25, vars0, vars8);
  if (!v9)
  {
    *a9 = v14;
    *(a9 + 16) = v17;
    result = *&v20;
    *(a9 + 32) = v20;
    *(a9 + 48) = v23;
  }

  return result;
}

uint64_t sub_21E53DD30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E53D070(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21E53DD58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E53D140();
  *a1 = result;
  return result;
}

uint64_t sub_21E53DD80(uint64_t a1)
{
  v2 = sub_21E54068C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E53DDBC(uint64_t a1)
{
  v2 = sub_21E54068C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21E53DE50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E53D468(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21E53DE78(uint64_t a1)
{
  v2 = sub_21E54017C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E53DEB4(uint64_t a1)
{
  v2 = sub_21E54017C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21E53DEF0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21E53D7A8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_21E53DF50(uint64_t a1)
{
  sub_21E57BB8C();
  sub_21E57B6AC();
  sub_21E57B6AC();
  return sub_21E57BBCC();
}

uint64_t sub_21E53DFE0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_21E57BB8C();
  sub_21E53FD84(v5, v2);
  sub_21E579E90(v5, v3);
  return sub_21E57BBCC();
}

uint64_t sub_21E53E044()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D23B78]) init];
  type metadata accessor for DefaultAppShortcutsApprovedPhrasesProvider();
  v1 = swift_allocObject();
  result = sub_21E53E0A0(v0);
  qword_281226A28 = v1;
  return result;
}

uint64_t sub_21E53E0A0(uint64_t a1)
{
  sub_21E53E100();
  *(v1 + 16) = v3;
  *(v1 + 24) = a1;
  return v1;
}

void sub_21E53E100()
{
  OUTLINED_FUNCTION_93();
  v29 = sub_21E57B5EC();
  OUTLINED_FUNCTION_0();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_2();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v7 = sub_21E57ABEC();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_2();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v26 - v15;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  v19 = sub_21E546314(0xD00000000000001ELL, 0x800000021E57F420, 0x7473696C70, 0xE500000000000000, v18);

  if (v19)
  {
    v26[1] = v1;
    sub_21E57ABDC();

    v27 = v9;
    v28 = v7;
    (*(v9 + 32))(v16, v13, v7);
    sub_21E57AB9C();
    swift_allocObject();
    sub_21E57AB8C();
    v20 = sub_21E57ABFC();
    v22 = v21;
    sub_21E540090();
    sub_21E57AB7C();
    sub_21E53E5C4(v30, v31);
    sub_21E53505C(v20, v22);

    (*(v27 + 8))(v16, v28);
  }

  else
  {
    sub_21E57B5BC();
    v23 = sub_21E57B5DC();
    v24 = sub_21E57B85C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_21E527000, v23, v24, "ApprovedPhrasesForAppShortcuts: unable to get a path to the list of approved phrases for App Shortcuts", v25, 2u);
      OUTLINED_FUNCTION_39();
    }

    (*(v1 + 8))(v5, v29);
    sub_21E538FB0();
    sub_21E57B62C();
  }

  OUTLINED_FUNCTION_100();
}

uint64_t sub_21E53E5C4(uint64_t a1, uint64_t a2)
{
  v86 = a2;
  sub_21E538FB0();
  v108 = sub_21E57B62C();
  v94 = *(a1 + 16);
  if (v94)
  {
    v3 = 0;
    v91 = 0;
    v93 = a1 + 32;
    while (1)
    {
      v4 = (v93 + 56 * v3);
      v5 = v4[4];
      v100 = v3 + 1;
      v6 = v4[2];
      v7 = v4[3];
      v8 = *v4;
      v9 = v4[1];
      v95 = v4[5];
      v97 = v4[6];

      v98 = v7;
      v99 = v9;
      v10 = sub_21E53EAF0(v6, v7, v8, v9, &v108);
      v103 = v11;
      v104 = v10;
      v105 = v13;
      v106 = v12;
      v14 = v5 + 64;
      v15 = 1 << *(v5 + 32);
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v17 = v16 & *(v5 + 64);
      v18 = (v15 + 63) >> 6;

      v19 = 0;
      for (i = v5; ; v5 = i)
      {
        v20 = v19;
        if (!v17)
        {
          goto LABEL_9;
        }

LABEL_8:
        v19 = v20;
LABEL_12:
        v21 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v22 = (v19 << 10) | (16 * v21);
        v23 = (*(v5 + 48) + v22);
        v24 = *v23;
        v25 = v23[1];
        v26 = (*(v5 + 56) + v22);
        v27 = *v26;
        v28 = v26[1];

        v37 = OUTLINED_FUNCTION_26_0(v29, v30, v31, v32, v33, v34, v35, v36, v85, v86, v87, v88, v89, v90, v91, v93, v94, v95, v97, v98, v99, v100, i, v103, v104, v105, v106);
        v39 = v37;
        if (!*v38)
        {
          break;
        }

        v41 = v38;
        v88 = v37;
        v90 = v27;
        sub_21E5400E4(v91, 0);
        HIDWORD(v89) = swift_isUniquelyReferenced_nonNull_native();
        v42 = *v41;
        v107 = *v41;
        *v41 = 0x8000000000000000;
        v87 = sub_21E52F7C4(v24);
        v92 = v43;
        if (__OFADD__(v42[2], (v43 & 1) == 0))
        {
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          result = sub_21E57BB6C();
          __break(1u);
          return result;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8AC8, &qword_21E57CC08);
        if (sub_21E57BA1C())
        {
          v44 = sub_21E52F7C4(v24);
          if ((v92 & 1) != (v45 & 1))
          {
            goto LABEL_45;
          }

          v46 = v44;
        }

        else
        {
          v46 = v87;
        }

        *v41 = v107;

        v47 = *v41;
        if (v92)
        {
        }

        else
        {
          v47[(v46 >> 6) + 8] |= 1 << v46;
          v48 = (v47[6] + 16 * v46);
          *v48 = v24;
          v48[1] = v25;
          *(v47[7] + 8 * v46) = MEMORY[0x277D84F90];
          v49 = v47[2];
          v50 = __OFADD__(v49, 1);
          v51 = v49 + 1;
          if (v50)
          {
            goto LABEL_44;
          }

          v47[2] = v51;
        }

        v52 = v47[7];
        v53 = *(v52 + 8 * v46);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v52 + 8 * v46) = v53;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21E543924();
          v53 = v59;
          *(v52 + 8 * v46) = v59;
        }

        v55 = *(v53 + 16);
        v56 = v90;
        if (v55 >= *(v53 + 24) >> 1)
        {
          sub_21E543924();
          v56 = v90;
          v53 = v60;
          *(v52 + 8 * v46) = v60;
        }

        *(v53 + 16) = v55 + 1;
        v57 = v53 + 16 * v55;
        *(v57 + 32) = v56;
        *(v57 + 40) = v28;
        v58 = OUTLINED_FUNCTION_11_1();
        (v88)(v58);
        v91 = sub_21E53EBE4;
      }

      v40 = OUTLINED_FUNCTION_11_1();
      (v39)(v40);
      v20 = v19;
      v5 = i;
      if (v17)
      {
        goto LABEL_8;
      }

      while (1)
      {
LABEL_9:
        v19 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
          goto LABEL_43;
        }

        if (v19 >= v18)
        {
          break;
        }

        v17 = *(v14 + 8 * v19);
        ++v20;
        if (v17)
        {
          goto LABEL_12;
        }
      }

      v61 = v97;
      if (v97)
      {

        v71 = OUTLINED_FUNCTION_26_0(v62, v63, v64, v65, v66, v67, v68, v69, v85, v86, v87, v88, v89, v90, v91, v93, v94, v95, v97, v98, v99, v100, i, v103, v104, v105, v106);
        v3 = v101;
        if (*v70)
        {
          v72 = v70;
          sub_21E545A3C();
          v73 = *(v72[1] + 16);
          sub_21E52F384(v73);
          v74 = v72[1];
          *(v74 + 16) = v73 + 1;
          v75 = v74 + 16 * v73;
          *(v75 + 32) = v96;
          *(v75 + 40) = v61;
        }

        else
        {
        }

        v76 = OUTLINED_FUNCTION_11_1();
        (v71)(v76);
      }

      else
      {

        v3 = v100;
      }

      if (v3 == v94)
      {
        goto LABEL_38;
      }
    }
  }

  v91 = 0;
LABEL_38:
  v77 = *(v86 + 16);
  if (v77)
  {
    v78 = v86 + 56;
    do
    {
      v79 = *(v78 - 24);
      v80 = *(v78 - 16);

      v81 = OUTLINED_FUNCTION_15_0();
      sub_21E53EAF0(v81, v82, v79, v80, v83);

      v78 += 32;
      --v77;
    }

    while (v77);
  }

  sub_21E5400E4(v91, 0);
  return v108;
}