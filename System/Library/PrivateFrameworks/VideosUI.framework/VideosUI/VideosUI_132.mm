void sub_1E4120C38()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 isFullscreenPlaybackUIBeingShown];

  if (v3)
  {
    if (*&v1[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_selfVisibilityMonitor])
    {
      OUTLINED_FUNCTION_8();
      v5 = *(v4 + 312);

      v5(0);
    }

    return;
  }

  v6 = [objc_opt_self() currentNavigationController];
  if (!v6)
  {
    return;
  }

  v18 = v6;
  v7 = [v6 childViewControllers];
  sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
  OUTLINED_FUNCTION_20_2();
  v8 = sub_1E42062B4();

  v19 = sub_1E37CB21C(v8);

  if (!v19)
  {
    goto LABEL_18;
  }

  type metadata accessor for DocumentViewController(0);
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x1B0))();
    if (v10)
    {
      v11 = v10;
      v12 = [v1 parentViewController];
      if (v12)
      {
        v13 = v12;

        if (v13 == v11 && *&v1[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_selfVisibilityMonitor])
        {
          OUTLINED_FUNCTION_8();
          v15 = *(v14 + 304);

          v15(v16);
        }
      }

      else
      {
      }

LABEL_18:
      v17 = v18;
      goto LABEL_19;
    }
  }

  v17 = v19;
LABEL_19:
}

uint64_t sub_1E4120FB0(unsigned __int8 *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_5_0(v1 + 16, v9);
  sub_1E327F454(v1 + 16, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 80))(v2, v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

void sub_1E4121034(unint64_t a1)
{
  OUTLINED_FUNCTION_5_0(v1 + 16, v20);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v18 = Strong;
  v4 = sub_1E32AE9B0(a1);
  v5 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  v6 = MEMORY[0x1E69E7D40];
  while (1)
  {
    if (v4 == v5)
    {

      v16 = sub_1E3E30038(v19);

      OUTLINED_FUNCTION_36();
      (*(v17 + 256))(v16);

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E6911E60](v5, a1);
    }

    else
    {
      if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v7 = *(a1 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    type metadata accessor for FlowcaseViewCell();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = (*((*v6 & *v9) + 0x1E8))();
      v12 = v11;

      if (!v12)
      {
        goto LABEL_16;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1E3740F88(0, *(v19 + 2) + 1, 1, v19);
      }

      v14 = *(v19 + 2);
      v13 = *(v19 + 3);
      if (v14 >= v13 >> 1)
      {
        v19 = sub_1E3740F88((v13 > 1), v14 + 1, 1, v19);
      }

      *(v19 + 2) = v14 + 1;
      v15 = &v19[16 * v14];
      *(v15 + 4) = v10;
      *(v15 + 5) = v12;
      ++v5;
    }

    else
    {

LABEL_16:
      ++v5;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

double sub_1E412126C(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *sub_1E411BDA4(Strong, v5, v6);
    if (a1)
    {
      (*(v9 + 304))();

      OUTLINED_FUNCTION_36();
      v11 = *(v10 + 328);

      v11(v12);
    }

    else
    {
      (*(v9 + 312))(0);
    }
  }

  return result;
}

void sub_1E4121398()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v79 = v6;
  v80 = v7;
  v8 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_3();
  v83 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ED18, qword_1E42AD5E0);
  OUTLINED_FUNCTION_17_2(v13);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v78 - v15;
  sub_1E4201044();
  v17 = OUTLINED_FUNCTION_9_199(&qword_1EE289D88);
  sub_1E42066B4();
  sub_1E4206724();
  OUTLINED_FUNCTION_26_120();
  v18 = v17;
  if (sub_1E4206714() == 1)
  {
    sub_1E395FB64(v16);
    if (__swift_getEnumTagSinglePayload(v16, 1, v8) == 1)
    {
      sub_1E325F6F0(v16, &qword_1ECF2ED18, qword_1E42AD5E0);
      v19 = 0;
LABEL_38:
      *v3 = v19;
      goto LABEL_39;
    }

    v42 = sub_1E4201504();
    OUTLINED_FUNCTION_16_163(v42, v43, v44, v45);
    sub_1E4200EF4();
    (*(v10 + 8))(v16, v8);
LABEL_36:
    v19 = 0;
    goto LABEL_38;
  }

  v82 = v8;
  v78[2] = v5;
  v78[1] = v1;
  v20 = *(v1 + 32);
  if (sub_1E3CCE274(v20, 2u) || sub_1E3CCE274(v20, 7u))
  {
    v21 = OUTLINED_FUNCTION_14_185();
    v22 = MEMORY[0x1E69E7CC0];
    if (v21)
    {
      v23 = v21;
      v78[0] = v3;
      v84 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_6_238(v21);
      OUTLINED_FUNCTION_19_154();
      if (v23 < 0)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v24 = (v10 + 16);
      v25 = (v10 + 8);
      do
      {
        v26 = OUTLINED_FUNCTION_18_141();
        v27 = v82;
        v28 = v83;
        (*v24)(v83);
        v29 = OUTLINED_FUNCTION_4_273();
        v26(v29);
        v30 = sub_1E4201504();
        OUTLINED_FUNCTION_0_351(v30, v31, v32, v33);
        sub_1E4200EF4();
        v34 = sub_1E4201514();
        OUTLINED_FUNCTION_0_351(v34, v35, v36, v37);
        sub_1E4200EF4();
        (*v25)(v28, v27);
        v84 = v22;
        v38 = v18;
        v40 = *(v22 + 16);
        v39 = *(v22 + 24);
        if (v40 >= v39 >> 1)
        {
          v41 = OUTLINED_FUNCTION_7_246(v39);
          sub_1E3A79F84(v41, v40 + 1, 1);
          v22 = v84;
        }

        *(v22 + 16) = v40 + 1;
        OUTLINED_FUNCTION_23_110(v22 + 16 * v40);
        sub_1E4206734();
        --v23;
        v18 = v38;
      }

      while (v23);
      v3 = v78[0];
    }

    goto LABEL_21;
  }

  v46 = OUTLINED_FUNCTION_14_185();
  v22 = MEMORY[0x1E69E7CC0];
  if (!v46)
  {
LABEL_21:
    v76 = v80;
    v77 = v79;
LABEL_22:
    v60 = *(v22 + 16);
    if (v60)
    {
      v61 = 0;
      v62 = (v22 + 40);
      v63 = 0.0;
      do
      {
        v64 = v62 - 1;
        if (v61)
        {
          v64 = v62;
        }

        ++v61;
        v63 = v63 + *v64;
        v62 += 2;
      }

      while (v60 != v61);
      v65 = (v22 + 40);
      v66 = 0.0;
      do
      {
        v67 = *v65;
        v65 += 2;
        v68 = v67;
        if (v66 <= v67)
        {
          v66 = v68;
        }

        --v60;
      }

      while (v60);
    }

    else
    {
      v63 = 0.0;
    }

    v69 = OUTLINED_FUNCTION_24_0();
    sub_1E3952BE0(v69, v70, v71, v72);
    sub_1E42066B4();
    sub_1E4206724();
    OUTLINED_FUNCTION_26_120();
    if (!__OFSUB__(sub_1E4206714(), 1))
    {
      if (v77)
      {
LABEL_39:
        OUTLINED_FUNCTION_42();
        return;
      }

      if (v63 >= v76)
      {
        v73 = OUTLINED_FUNCTION_24_0();
        sub_1E3952BD8(v73, v74, v75);
        v19 = 1;
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_41;
  }

  v47 = v46;
  v84 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_6_238(v46);
  OUTLINED_FUNCTION_19_154();
  if ((v47 & 0x8000000000000000) == 0)
  {
    v81 = (v10 + 16);
    v48 = (v10 + 8);
    v78[0] = v3;
    v49 = v82;
    do
    {
      v50 = OUTLINED_FUNCTION_18_141();
      v51 = v83;
      (*v81)(v83);
      v52 = OUTLINED_FUNCTION_4_273();
      v50(v52);
      v53 = sub_1E4201504();
      OUTLINED_FUNCTION_0_351(v53, v54, v55, v56);
      sub_1E4200EF4();
      (*v48)(v51, v49);
      v84 = v22;
      v58 = *(v22 + 16);
      v57 = *(v22 + 24);
      if (v58 >= v57 >> 1)
      {
        v59 = OUTLINED_FUNCTION_7_246(v57);
        sub_1E3A79F84(v59, v58 + 1, 1);
        v22 = v84;
      }

      *(v22 + 16) = v58 + 1;
      OUTLINED_FUNCTION_23_110(v22 + 16 * v58);
      sub_1E4206734();
      --v47;
    }

    while (v47);
    v76 = v80;
    v77 = v79;
    v3 = v78[0];
    goto LABEL_22;
  }

LABEL_42:
  __break(1u);
}

void sub_1E41218D4()
{
  OUTLINED_FUNCTION_41_5();
  v264 = v0;
  v279 = v1;
  v3 = v2;
  v255 = v4;
  v256 = v5;
  LODWORD(v257) = v6;
  v258 = v7;
  v9 = v8;
  v11 = v10;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40758, &qword_1E42ED5E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v13);
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40760, &qword_1E42ED5F0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40768, &qword_1E42ED5F8);
  v19 = OUTLINED_FUNCTION_17_2(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_5();
  v276 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v22);
  v23 = sub_1E4201044();
  OUTLINED_FUNCTION_0_10();
  v250 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v26);
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40770, &qword_1E42ED600);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40778, &qword_1E42ED608);
  OUTLINED_FUNCTION_17_2(v29);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v239 - v31;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40780, &unk_1E42ED610);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v34);
  v35 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v251 = v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v239 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = (&v239 - v41);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v45);
  *&v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E40, &unk_1E42D8890);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40788, &unk_1E42ED620);
  v51 = OUTLINED_FUNCTION_17_2(v50);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E50, &unk_1E42B3958);
  v55 = OUTLINED_FUNCTION_17_2(v54);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40790, &qword_1E42ED630);
  OUTLINED_FUNCTION_17_2(v58);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v60);
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40798, &qword_1E42ED638);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v61);
  v63 = (&v239 - v62);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ED18, qword_1E42AD5E0);
  v65 = OUTLINED_FUNCTION_17_2(v64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_18_6();
  v68 = v67;
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_25_3();
  v71 = v70;
  v72 = OUTLINED_FUNCTION_9_199(&qword_1EE289D88);
  sub_1E42066B4();
  sub_1E4206724();
  OUTLINED_FUNCTION_26_120();
  v275 = v72;
  if (sub_1E4206714() == 1)
  {
    sub_1E395FB64(v71);
    if (__swift_getEnumTagSinglePayload(v71, 1, v35) != 1)
    {
      sub_1E4201504();
      v84 = v83;
      v86 = v85;
      sub_1E4203F04();
      OUTLINED_FUNCTION_15_174();
      LOBYTE(v280) = v84 & 1;
      LOBYTE(v282) = v86 & 1;
      OUTLINED_FUNCTION_20_131();
      sub_1E4200F04();
      (*(v251 + 8))(v71, v35);
LABEL_83:
      OUTLINED_FUNCTION_42();
      return;
    }

    v73 = &qword_1ECF2ED18;
    v74 = qword_1E42AD5E0;
    v75 = v71;
LABEL_82:
    sub_1E325F6F0(v75, v73, v74);
    goto LABEL_83;
  }

  v240 = v32;
  v245 = v3;
  v76 = *v279;
  v77 = v23;
  v278 = v35;
  v279 = v23;
  if (v76 == 1)
  {
    v78 = v245;
    sub_1E395FB64(v68);
    v79 = v278;
    if (__swift_getEnumTagSinglePayload(v68, 1, v278) == 1)
    {
      sub_1E325F6F0(v68, &qword_1ECF2ED18, qword_1E42AD5E0);
      v80 = v251;
      v81 = v23;
      v82 = v257;
    }

    else
    {
      v82 = v257;
      OUTLINED_FUNCTION_25_114();
      LOBYTE(v282) = v115 & 1;
      sub_1E4200EF4();
      v80 = v251;
      (*(v251 + 8))(v68, v79);
      v81 = v23;
    }

    v116 = v246;
    sub_1E395FB64(v246);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v116, 1, v79);
    v267 = v11;
    if (EnumTagSinglePayload == 1)
    {
      sub_1E325F6F0(v116, &qword_1ECF2ED18, qword_1E42AD5E0);
      v118 = v258;
    }

    else
    {
      sub_1E4203F04();
      OUTLINED_FUNCTION_15_174();
      OUTLINED_FUNCTION_25_114();
      LOBYTE(v282) = v119 & 1;
      OUTLINED_FUNCTION_20_131();
      v118 = v258;
      sub_1E4200F04();
      (*(v80 + 8))(v116, v79);
    }

    v120 = v247;
    v121 = OUTLINED_FUNCTION_16();
    sub_1E3952BD8(v121, v122, v123);
    if (v82)
    {
      v124 = v9;
    }

    else
    {
      v124 = v118;
    }

    (*(v250 + 16))(v120, v78, v81);
    v125 = v249;
    sub_1E4122F60(1, v249);
    sub_1E3294EE4(v125, v63, &qword_1ECF407A8, qword_1E42ED650);
    v126 = (v63 + *(v248 + 36));
    v127 = v125[2];
    v128 = v125[3];
    *v126 = v127;
    v126[1] = v128;
    v276 = v126;
    sub_1E325F6F0(v125, &qword_1ECF407A8, qword_1E42ED650);
    v274 = v80 + 16;
    v129 = (v80 + 32);
    v130 = *v63;
    v272 = (v80 + 8);
    v131 = v275;
    for (i = v130; ; v130 = i)
    {
      if (v127 == v130)
      {
        v146 = 1;
        v127 = v130;
        v145 = v277;
        v144 = v271;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF407A8, qword_1E42ED650);
        v280 = v127;
        sub_1E412316C(&qword_1ECF407B0, MEMORY[0x1E697E3C8]);
        sub_1E4205DE4();
        sub_1E4206724();
        if (v127 == v281)
        {
          v128 = sub_1E42066D4();
        }

        v132 = __OFSUB__(v128--, 1);
        v133 = v277;
        if (v132)
        {
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

        v127 = v282;
        v134 = v276;
        *v276 = v282;
        v134[1] = v128;
        if (v127 < v130 || v127 >= v63[2])
        {
          goto LABEL_86;
        }

        v136 = *(v133 + 48);
        v282 = v127;
        v137 = v131;
        sub_1E42066B4();
        OUTLINED_FUNCTION_22_103();
        if (v138 != v132)
        {
          goto LABEL_87;
        }

        sub_1E4206724();
        OUTLINED_FUNCTION_22_103();
        if (v138 == v132)
        {
          goto LABEL_88;
        }

        OUTLINED_FUNCTION_26_120();
        v139 = sub_1E4206764();
        OUTLINED_FUNCTION_36_5();
        v140 = v269;
        v141 = v278;
        v142(v269 + v136);
        v143 = OUTLINED_FUNCTION_4_273();
        v139(v143);
        v144 = v271;
        *v271 = v128;
        v145 = v277;
        (*v129)(v144 + *(v277 + 48), v140 + v136, v141);
        v146 = 0;
        v131 = v137;
      }

      v147 = v270;
      __swift_storeEnumTagSinglePayload(v144, v146, 1, v145);
      sub_1E329E454(v144, v147, &qword_1ECF40788, &unk_1E42ED620);
      if (__swift_getEnumTagSinglePayload(v147, 1, v145) == 1)
      {
        v73 = &qword_1ECF40798;
        v74 = &qword_1E42ED638;
        v75 = v63;
        goto LABEL_82;
      }

      v148 = v147 + *(v145 + 48);
      v149 = v268;
      v150 = v278;
      (*v129)(v268, v148, v278);
      v151 = sub_1E4201504();
      OUTLINED_FUNCTION_16_163(v151, v152, v153, v154);
      sub_1E4200EF4();
      v156 = v155;
      sub_1E4203F04();
      OUTLINED_FUNCTION_15_174();
      LOBYTE(v280) = 0;
      LOBYTE(v282) = 0;
      sub_1E4200F04();
      v157 = OUTLINED_FUNCTION_16();
      v161 = sub_1E3952BE0(v157, v158, v159, v160);
      OUTLINED_FUNCTION_36_5();
      v162(v149, v150);
      v124 = v124 - (v156 + v161);
    }
  }

  v87 = *(v264 + 32);
  v88 = sub_1E3CCE274(v87, 2u);
  v271 = v42;
  v262 = v39;
  if (v88 || sub_1E3CCE274(v87, 7u))
  {
    v89 = sub_1E42066D4();
    v90 = MEMORY[0x1E69E7CC0];
    v91 = v276;
    if (v89)
    {
      v92 = v89;
      v282 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_6_238(v89);
      v90 = v282;
      sub_1E42066B4();
      if (v92 < 0)
      {
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      v93 = (v251 + 16);
      v94 = (v251 + 8);
      do
      {
        v95 = sub_1E4206764();
        v96 = v265;
        v97 = v278;
        (*v93)(v265);
        v98 = OUTLINED_FUNCTION_4_273();
        v95(v98);
        v99 = sub_1E4201504();
        OUTLINED_FUNCTION_0_351(v99, v100, v101, v102);
        sub_1E4200EF4();
        v104 = v103;
        v105 = sub_1E4201514();
        OUTLINED_FUNCTION_0_351(v105, v106, v107, v108);
        sub_1E4200EF4();
        v110 = v109;
        (*v94)(v96, v97);
        v282 = v90;
        v112 = *(v90 + 16);
        v111 = *(v90 + 24);
        if (v112 >= v111 >> 1)
        {
          v114 = OUTLINED_FUNCTION_7_246(v111);
          sub_1E3A79F84(v114, v112 + 1, 1);
          v90 = v282;
        }

        *(v90 + 16) = v112 + 1;
        v113 = v90 + 16 * v112;
        *(v113 + 32) = v104;
        *(v113 + 40) = v110;
        sub_1E4206734();
        --v92;
      }

      while (v92);
LABEL_56:
      v91 = v276;
      v39 = v262;
    }

LABEL_57:
    v188 = v77;
    v189 = *(v90 + 16);
    v190 = MEMORY[0x1E69E7CC0];
    v191 = v278;
    if (v189)
    {
      v280 = MEMORY[0x1E69E7CC0];

      sub_1E3887DC4(0, v189, 0);
      v190 = v280;
      v192 = *(v280 + 16);
      v193 = 40;
      do
      {
        v194 = *(v90 + v193);
        v280 = v190;
        v195 = *(v190 + 24);
        if (v192 >= v195 >> 1)
        {
          sub_1E3887DC4((v195 > 1), v192 + 1, 1);
          v190 = v280;
        }

        *(v190 + 16) = v192 + 1;
        *(v190 + 8 * v192 + 32) = v194;
        v193 += 16;
        ++v192;
        --v189;
      }

      while (v189);

      v91 = v276;
    }

    v196 = sub_1E39AB6F8(v190);
    v198 = v197;

    v199 = v250;
    v200 = v240;
    (*(v250 + 16))(v240, v245, v188);
    v201 = v243;
    *(v200 + *(v243 + 52)) = v90;
    v202 = v242;
    sub_1E329E454(v200, v242, &qword_1ECF40770, &qword_1E42ED600);
    (*(v199 + 32))(v244, v202, v188);
    sub_1E412316C(&qword_1EE289D90, MEMORY[0x1E697E3D0]);
    v203 = v266;
    sub_1E4206194();
    v204 = *(v202 + *(v201 + 52));
    v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF407A0, &unk_1E42ED640);
    v260 = 0;
    *&v277 = 0;
    v206 = (v203 + *(v205 + 52));
    *v206 = v204;
    *(v206 + 1) = 0;
    v259 = v206;
    v270 = *(v205 + 56);
    *(v203 + v270) = 0;
    v257 = *(v241 + 36);
    *(v203 + v257) = 0;
    v265 = v251 + 16;
    v268 = v204;
    *&v258 = v204 + 32;
    v207 = (v251 + 32);
    v208 = (v251 + 8);
    if (v198)
    {
      v209 = 0;
    }

    else
    {
      v209 = v196;
    }

    v269 = v209;
    OUTLINED_FUNCTION_27_103();
    v261 = v208;
LABEL_67:
    v210 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E58, &unk_1E42DD790) + 36);
    v211 = v266;
    sub_1E4206724();
    if (*(v211 + v210) == v280)
    {
LABEL_70:
      *(v211 + v270) = 1;
      goto LABEL_71;
    }

    v196 = v191;
    v198 = v275;
    v212 = sub_1E4206764();
    OUTLINED_FUNCTION_36_5();
    v213 = v271;
    v214(v271);
    v215 = OUTLINED_FUNCTION_4_273();
    v212(v215);
    sub_1E4206734();
    v216 = *(v268 + 16);
    if (v277 == v216)
    {
      OUTLINED_FUNCTION_36_5();
      v217 = v213;
      v208 = v218;
      v219(v217, v191);
      OUTLINED_FUNCTION_27_103();
      v211 = v266;
      v39 = v262;
      goto LABEL_70;
    }

    v198 = v263;
    if (v277 < v216)
    {
      v229 = v277;
      v230 = v277 + 1;
      v277 = *(*&v258 + 16 * v277);
      *(v259 + 1) = v229 + 1;
      v231 = *(v274 + 48);
      v232 = v253;
      v191 = v278;
      (*v207)(v253, v271, v278);
      *(v232 + v231) = v277;
      v233 = v232;
      v234 = v252;
      sub_1E329E454(v233, v252, &qword_1ECF40760, &qword_1E42ED5F0);
      v235 = *(v198 + 48);
      v236 = v254;
      v237 = v260;
      *v254 = v260;
      sub_1E329E454(v234, v236 + v235, &qword_1ECF40760, &qword_1E42ED5F0);
      v132 = __OFADD__(v237, 1);
      v238 = (v237 + 1);
      if (!v132)
      {
        v260 = v238;
        *(v266 + v257) = v238;
        v91 = v276;
        sub_1E329E454(v236, v276, &qword_1ECF40758, &qword_1E42ED5E8);
        __swift_storeEnumTagSinglePayload(v91, 0, 1, v198);
        v220 = 0;
        *&v277 = v230;
        v196 = v264;
        v39 = v262;
        v208 = v261;
        while (1)
        {
          v221 = i;
          sub_1E329E454(v91, i, &qword_1ECF40768, &qword_1E42ED5F8);
          if (__swift_getEnumTagSinglePayload(v221, 1, v198) == 1)
          {
            break;
          }

          v222 = *v221;
          v223 = (v221 + *(v198 + 48) + *(v274 + 48));
          v224 = *v223;
          v225 = v223[1];
          v226 = *v207;
          v227 = v272;
          (*v207)(v272);
          v226(v39, v227, v191);
          sub_1E4203F04();
          OUTLINED_FUNCTION_15_174();
          if (v222)
          {
            LOBYTE(v280) = 0;
            LOBYTE(v282) = 0;
            OUTLINED_FUNCTION_20_131();
            sub_1E4200F04();
            v224 = v225;
          }

          else
          {
            LOBYTE(v280) = 1;
            LOBYTE(v282) = 0;
            OUTLINED_FUNCTION_20_131();
            sub_1E4200F04();
          }

          v228 = sub_1E3952BE0(*v196, v196[1], v196[2], v196[3]);
          (*v208)(v39, v191);
          v11 = v11 + v224 + v228;
          v91 = v276;
          if ((v220 & 1) == 0)
          {
            goto LABEL_67;
          }

LABEL_71:
          v220 = 1;
          __swift_storeEnumTagSinglePayload(v91, 1, 1, v198);
        }

        v73 = &qword_1ECF40780;
        v74 = &unk_1E42ED610;
        v75 = v266;
        goto LABEL_82;
      }

      goto LABEL_93;
    }

LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v163 = v261;
  (*(v250 + 16))(v261, v245, v23);
  v164 = sub_1E42066D4();
  v91 = v276;
  if (!v164)
  {
    sub_1E325F6F0(v163, &qword_1ECF30E50, &unk_1E42B3958);
    v90 = MEMORY[0x1E69E7CC0];
    goto LABEL_57;
  }

  v165 = v164;
  v282 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_6_238(v164);
  v90 = v282;
  sub_1E42066B4();
  if ((v165 & 0x8000000000000000) == 0)
  {
    v166 = 0;
    v167 = v280;
    v270 = v251 + 16;
    v168 = (v251 + 32);
    v169 = v277;
    while (1)
    {
      v170 = *(v169 + 48);
      v281 = v167;
      sub_1E42066B4();
      OUTLINED_FUNCTION_22_103();
      if (v138 != v132)
      {
        goto LABEL_89;
      }

      sub_1E4206724();
      OUTLINED_FUNCTION_22_103();
      if (v138 == v132)
      {
        break;
      }

      v171 = sub_1E4206764();
      OUTLINED_FUNCTION_36_5();
      v172 = v259;
      v173 = v278;
      v174(&v259[v170]);
      v175 = OUTLINED_FUNCTION_4_273();
      v171(v175);
      v176 = v260;
      *v260 = v166;
      (*v168)(v176 + *(v277 + 48), &v172[v170], v173);
      if (v166)
      {
        v177 = v257;
        v178 = v255;
      }

      else
      {
        sub_1E4201504();
      }

      LOBYTE(v280) = v177 & 1;
      LOBYTE(v281) = v178 & 1;
      sub_1E4200EF4();
      v180 = v179;
      v182 = v181;
      sub_1E325F6F0(v176, &qword_1ECF30E40, &unk_1E42D8890);
      v282 = v90;
      v184 = *(v90 + 16);
      v183 = *(v90 + 24);
      v185 = v261;
      if (v184 >= v183 >> 1)
      {
        v187 = OUTLINED_FUNCTION_7_246(v183);
        sub_1E3A79F84(v187, v184 + 1, 1);
        v90 = v282;
      }

      *(v90 + 16) = v184 + 1;
      v186 = v90 + 16 * v184;
      *(v186 + 32) = v180;
      *(v186 + 40) = v182;
      v281 = v167;
      sub_1E42066E4();
      if (v166 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_91;
      }

      ++v166;
      v167 = v280;
      v169 = v277;
      if (v165 == v166)
      {
        sub_1E325F6F0(v185, &qword_1ECF30E50, &unk_1E42B3958);
        v77 = v279;
        goto LABEL_56;
      }
    }

LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

LABEL_95:
  __break(1u);
}

uint64_t sub_1E4122F60@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    sub_1E4201044();
    sub_1E412316C(&qword_1EE289D88, MEMORY[0x1E697E3D8]);
    sub_1E42066B4();
    sub_1E4206724();
    v5 = sub_1E4123498(v10, 0, v3, v10);
    if (v7)
    {
      sub_1E4206724();
      v8 = 0;
      v9 = v10;
    }

    else
    {
      v9 = v5;
      v8 = v6;
    }

    result = sub_1E4206724();
    if (v10 >= v9)
    {
      sub_1E4123388(v9, v8, v10, 0, a2);
      return sub_1E325F6F0(v2, &qword_1ECF30E50, &unk_1E42B3958);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4123084@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = result;
  return result;
}

void (*sub_1E41230F8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1E42009D4();
  return sub_1E37BCF0C;
}

uint64_t sub_1E412316C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1E4201044();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E41231B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2400C0;
  if (!qword_1EE2400C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2400C0);
  }

  return result;
}

uint64_t sub_1E4123208(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF6 && *(a1 + 33))
    {
      v2 = *a1 + 245;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 0xA)
      {
        v4 = 10;
      }

      else
      {
        v4 = *(a1 + 32);
      }

      v5 = v4 - 11;
      if (v3 < 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v5;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4123254(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 246;
    *(result + 8) = 0;
    if (a3 >= 0xF6)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 10;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaShowcasingStackedButtonLayout.Cache(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E4123388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1E4201044();
  sub_1E412316C(&qword_1EE289D88, MEMORY[0x1E697E3D8]);
  sub_1E42066B4();
  result = sub_1E4206724();
  if (v13 > a1)
  {
    __break(1u);
  }

  else if (v13 >= a3)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF407A8, qword_1E42ED650);
    result = sub_1E3294EE4(v5, a5 + *(v12 + 40), &qword_1ECF30E50, &unk_1E42B3958);
    *a5 = a1;
    a5[1] = a2;
    a5[2] = a3;
    a5[3] = a4;
    return result;
  }

  __break(1u);
  return result;
}

void *sub_1E4123498(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1E4201044();
  sub_1E412316C(&qword_1EE289D88, MEMORY[0x1E697E3D8]);
  result = sub_1E42066F4();
  v8 = 0;
  if (v10)
  {
    return v8;
  }

  v8 = v9;
  if (a3 < 0)
  {
    result = sub_1E4206724();
    if (v9 == a1)
    {
      result = sub_1E42066D4();
      a2 = result;
    }
  }

  if (!__OFADD__(a2, a3))
  {
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4123590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  if ([v4 mediaItemMetadataForProperty_])
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  v7 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a3, v7 ^ 1u, 1, a2);
}

uint64_t sub_1E4123650(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_1E376948C();
  sub_1E4123590(a1, v4, &v7);
  v5 = v7;
  if (v7)
  {
    a2 = [v7 BOOLValue];
  }

  return a2 & 1;
}

uint64_t sub_1E41236C0(uint64_t a1)
{
  v2 = sub_1E376948C();
  sub_1E4123590(a1, v2, &v7);
  v3 = v7;
  if (!v7)
  {
    return 0;
  }

  [v7 doubleValue];
  v5 = v4;

  return v5;
}

VideosUI::DocumentType_optional __swiftcall DocumentType.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1E4207784();

  if (v1 >= 8)
  {
    return 8;
  }

  else
  {
    return v1;
  }
}

unint64_t DocumentType.rawValue.getter(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      result = 0x6163696E6F6E6163;
      break;
    case 2:
      result = 0x4D747865746E6F63;
      break;
    case 3:
      result = 0x6B63616279616C70;
      break;
    case 4:
      result = 0x726579616C70;
      break;
    case 5:
      result = 0x79616C5074736F70;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x74736F506576696CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E4123898(unsigned __int8 a1, char a2)
{
  v2 = 0x746C7561666564;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x746C7561666564;
  switch(v4)
  {
    case 1:
      v5 = 0x6163696E6F6E6163;
      v3 = 0xE90000000000006CLL;
      break;
    case 2:
      v5 = 0x4D747865746E6F63;
      v3 = 0xEB00000000756E65;
      break;
    case 3:
      v5 = 0x6B63616279616C70;
      v3 = 0xEE007478654E7055;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x726579616C70;
      break;
    case 5:
      v3 = 0xE800000000000000;
      v5 = 0x79616C5074736F70;
      break;
    case 6:
      v5 = 0xD000000000000011;
      v3 = 0x80000001E4292960;
      break;
    case 7:
      v5 = 0x74736F506576696CLL;
      v3 = 0xEC00000079616C50;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6163696E6F6E6163;
      v6 = 0xE90000000000006CLL;
      break;
    case 2:
      v2 = 0x4D747865746E6F63;
      v6 = 0xEB00000000756E65;
      break;
    case 3:
      v2 = 0x6B63616279616C70;
      v6 = 0xEE007478654E7055;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v2 = 0x726579616C70;
      break;
    case 5:
      v6 = 0xE800000000000000;
      v2 = 0x79616C5074736F70;
      break;
    case 6:
      v2 = 0xD000000000000011;
      v6 = 0x80000001E4292960;
      break;
    case 7:
      v2 = 0x74736F506576696CLL;
      v6 = 0xEC00000079616C50;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E4123B0C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_1E4207B44();
  v4 = a2(a1);
  OUTLINED_FUNCTION_18_0(v4, v5, v6);

  return sub_1E4207BA4();
}

uint64_t sub_1E4123B6C(uint64_t a1, uint64_t a2)
{
  sub_1E4123DE4(a2);
  sub_1E4206014();
}

uint64_t sub_1E4123BC0(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E4123D28(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1E4207B44();
  v5 = a3(a2);
  OUTLINED_FUNCTION_18_0(v5, v6, v7);

  return sub_1E4207BA4();
}

VideosUI::DocumentType_optional sub_1E4123D7C@<W0>(Swift::String *a1@<X0>, VideosUI::DocumentType_optional *a2@<X8>)
{
  result.value = DocumentType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t sub_1E4123DAC@<X0>(unint64_t *a1@<X8>)
{
  result = DocumentType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E4123DE4(char a1)
{
  result = 0x6D65547472656C61;
  switch(a1)
  {
    case 1:
      return 0xD000000000000013;
    case 2:
    case 17:
    case 18:
      OUTLINED_FUNCTION_1_50();
      return v10 - 2;
    case 3:
      return 0xD000000000000013;
    case 4:
      OUTLINED_FUNCTION_1_50();
      return v4 + 11;
    case 5:
    case 22:
      OUTLINED_FUNCTION_1_50();
      return v12 + 7;
    case 6:
    case 13:
    case 14:
    case 28:
    case 29:
      OUTLINED_FUNCTION_1_50();
      return v13 | 4;
    case 7:
      return 0xD000000000000013;
    case 8:
      return 0xD000000000000013;
    case 9:
      return 0xD000000000000013;
    case 10:
      v6 = 0x54726F727265;
      goto LABEL_17;
    case 11:
      OUTLINED_FUNCTION_1_50();
      return v3 + 3;
    case 12:
      OUTLINED_FUNCTION_1_50();
      return v5 - 1;
    case 15:
    case 27:
      OUTLINED_FUNCTION_1_50();
      return v8 + 2;
    case 16:
      return 0x6554686372616573;
    case 19:
    case 26:
      OUTLINED_FUNCTION_1_50();
      return v14 - 3;
    case 20:
      OUTLINED_FUNCTION_1_50();
      return v9 + 1;
    case 21:
      return 0xD000000000000013;
    case 23:
      v7 = 1852399981;
      goto LABEL_23;
    case 24:
      v7 = 1953720684;
LABEL_23:
      result = v7 | 0x706D655400000000;
      break;
    case 25:
      v6 = 0x547075656E6FLL;
LABEL_17:
      result = v6 & 0xFFFFFFFFFFFFLL | 0x6D65000000000000;
      break;
    case 30:
      OUTLINED_FUNCTION_1_50();
      result = v11 + 6;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1E41240F4()
{
  v0 = sub_1E4207A04();

  if (v0 >= 0x1F)
  {
    return 31;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E412414C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF407B8;
  if (!qword_1ECF407B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF407B8);
  }

  return result;
}

unint64_t sub_1E4124218@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E41240F4();
  *a1 = result;
  return result;
}

uint64_t sub_1E4124248@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4123DE4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for DocumentType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TemplateModelType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE2)
  {
    if (a2 + 30 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 30) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 31;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v5 = v6 - 31;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TemplateModelType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE1)
  {
    v6 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
          *result = a2 + 30;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E41244C4(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      result = sub_1E4202764();
      break;
    case 2:
      result = sub_1E4202754();
      break;
    case 3:
      result = sub_1E4202784();
      break;
    default:
      result = sub_1E4202744();
      break;
  }

  return result;
}

uint64_t sub_1E41244F8()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_57_0();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E4124534(char a1)
{
  result = 7368564;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_1_311();
      break;
    case 2:
      result = OUTLINED_FUNCTION_15_175();
      break;
    case 3:
      result = 0x7468676972;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E4124590(unsigned __int8 a1, char a2)
{
  v2 = 0x64656C6261736964;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x64656C6261736964;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1701736302;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1953393012;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x746E6172626976;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1701736302;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1953393012;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x746E6172626976;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E41246BC(unsigned __int8 a1, char a2)
{
  v2 = 0x7972616D697270;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x7972616D697270;
  switch(v4)
  {
    case 1:
      v5 = 0x7261646E6F636573;
      v3 = 0xE900000000000079;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x7972616974726574;
      break;
    case 3:
      v5 = 0x616E726574617571;
      v3 = 0xEA00000000007972;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x7261646E6F636573;
      v6 = 0xE900000000000079;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v2 = 0x7972616974726574;
      break;
    case 3:
      v2 = 0x616E726574617571;
      v6 = 0xEA00000000007972;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E4124818(unsigned __int8 a1, char a2)
{
  v2 = 0x72616C75676572;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x72616C75676572;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1852401780;
      break;
    case 2:
      v5 = 0x6968546172746C75;
      v3 = 0xE90000000000006ELL;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x6B63696874;
      break;
    case 4:
      v5 = 0x6968546172746C75;
      v3 = 0xEA00000000006B63;
      break;
    case 5:
      v5 = 0x72657474616C70;
      break;
    case 6:
      v3 = 0xE300000000000000;
      v5 = 7496034;
      break;
    case 7:
      v5 = 0x756964654D767461;
      v3 = 0xE90000000000006DLL;
      break;
    case 8:
      v5 = 0xD000000000000010;
      v3 = 0x80000001E4292E60;
      break;
    case 9:
      v3 = 0xE500000000000000;
      v5 = 0x7373616C67;
      break;
    case 10:
      v5 = 0x616C507373616C67;
      v3 = 0xEB00000000726579;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1852401780;
      break;
    case 2:
      v2 = 0x6968546172746C75;
      v6 = 0xE90000000000006ELL;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x6B63696874;
      break;
    case 4:
      v2 = 0x6968546172746C75;
      v6 = 0xEA00000000006B63;
      break;
    case 5:
      v2 = 0x72657474616C70;
      break;
    case 6:
      v6 = 0xE300000000000000;
      v2 = 7496034;
      break;
    case 7:
      v2 = 0x756964654D767461;
      v6 = 0xE90000000000006DLL;
      break;
    case 8:
      v2 = 0xD000000000000010;
      v6 = 0x80000001E4292E60;
      break;
    case 9:
      v6 = 0xE500000000000000;
      v2 = 0x7373616C67;
      break;
    case 10:
      v2 = 0x616C507373616C67;
      v6 = 0xEB00000000726579;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E4124AAC(unsigned __int8 a1, char a2)
{
  v2 = 7368564;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6D6F74746F62;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7368564;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6D6F74746F62;
    }

    else
    {
      v2 = 1701736302;
    }

    if (a2 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E4124B8C(unsigned __int8 a1, char a2)
{
  v2 = 7368564;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7368564;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1952867692;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x6D6F74746F62;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x7468676972;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1952867692;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x6D6F74746F62;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x7468676972;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E4124CF0()
{
  OUTLINED_FUNCTION_71_1();
  v0(v3, v1);
  return sub_1E4207BA4();
}

uint64_t sub_1E4124D30()
{
  OUTLINED_FUNCTION_71_1();
  v2 = v0(v1);
  OUTLINED_FUNCTION_18_0(v2, v3, v4);

  return sub_1E4207BA4();
}

uint64_t sub_1E4124D80(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E4124E70(uint64_t a1, uint64_t a2)
{
  sub_1E4125678();
  sub_1E4206014();
}

uint64_t sub_1E4124EC4(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E4124F6C(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E412502C(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E412518C(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E4125238(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E4125310(uint64_t a1, unsigned __int8 a2)
{
  sub_1E4206014();
}

uint64_t sub_1E4125388(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E4125458(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E41254E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, uint64_t, __n128))
{
  sub_1E4207B44();
  (a3)(v6, a2);
  return sub_1E4207BA4();
}

uint64_t sub_1E4125530(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1E4207B44();
  v5 = a3(a2);
  OUTLINED_FUNCTION_18_0(v5, v6, v7);

  return sub_1E4207BA4();
}

uint64_t sub_1E4125584(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E41244F8();
  *v1 = result;
  return result;
}

uint64_t sub_1E41255AC()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E4124534(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E41255DC(char a1)
{
  if ((a1 - 1) > 0x10u)
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_19_155((a1 - 1));
  }
}

unint64_t sub_1E4125630()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207A04();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E4125678()
{
  result = OUTLINED_FUNCTION_16_164();
  switch(v1)
  {
    case 1:
      v2 = 1953391971;
      goto LABEL_18;
    case 2:
      return OUTLINED_FUNCTION_2_271();
    case 3:
      return OUTLINED_FUNCTION_15_175();
    case 4:
      return OUTLINED_FUNCTION_1_311();
    case 5:
      return OUTLINED_FUNCTION_13_192();
    case 6:
      return 0x7466654C706F74;
    case 7:
      return 0x7468676952706F74;
    case 8:
      return 0x654C6D6F74746F62;
    case 9:
      return 0x69526D6F74746F62;
    case 10:
      v2 = 1684104552;
      goto LABEL_18;
    case 11:
      v2 = 1953460070;
LABEL_18:
      result = v2 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
      break;
    case 12:
      result = OUTLINED_FUNCTION_11_190();
      break;
    case 13:
      result = OUTLINED_FUNCTION_8_206();
      break;
    case 14:
      result = 0x696461654C706F74;
      break;
    case 15:
      result = 0x6C69617254706F74;
      break;
    case 16:
      result = 0x654C6D6F74746F62;
      break;
    case 17:
      result = 0x72546D6F74746F62;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1E4125860(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E4125630();
  *v1 = result;
  return result;
}

uint64_t sub_1E4125888()
{
  OUTLINED_FUNCTION_11_15();
  result = sub_1E4125678();
  *v0 = result;
  v0[1] = v2;
  return result;
}

unint64_t sub_1E41258B8()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E41258F8()
{
  result = OUTLINED_FUNCTION_16_164();
  switch(v1)
  {
    case 1:
      result = OUTLINED_FUNCTION_14_186();
      break;
    case 2:
      result = OUTLINED_FUNCTION_1_311();
      break;
    case 3:
      result = OUTLINED_FUNCTION_13_192();
      break;
    case 4:
      result = OUTLINED_FUNCTION_11_190();
      break;
    case 5:
      result = OUTLINED_FUNCTION_8_206();
      break;
    case 6:
      result = 0x656966697473756ALL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1E41259C8(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E41258B8();
  *v1 = result;
  return result;
}

uint64_t sub_1E41259F0()
{
  OUTLINED_FUNCTION_11_15();
  result = sub_1E41258F8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1E4125A20()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_57_0();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E4125A5C()
{
  result = OUTLINED_FUNCTION_16_164();
  switch(v1)
  {
    case 1:
      result = OUTLINED_FUNCTION_14_186();
      break;
    case 2:
      result = OUTLINED_FUNCTION_2_271();
      break;
    case 3:
      result = 0x6D6F74746F62;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E4125B20(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E4125A20();
  *v1 = result;
  return result;
}

uint64_t sub_1E4125B48()
{
  OUTLINED_FUNCTION_11_15();
  result = sub_1E4125A5C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1E4125B78(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
      v2 = sub_1E42079A4();

      v1 = v2 ^ 1;
      break;
    default:

      v1 = 0;
      break;
  }

  return v1 & 1;
}

uint64_t sub_1E4125C3C()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_57_0();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E4125C78(char a1)
{
  result = 0x64656C6261736964;
  switch(a1)
  {
    case 1:
      result = 1701736302;
      break;
    case 2:
      result = 1953393012;
      break;
    case 3:
      result = 0x746E6172626976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E4125D60(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E4125C3C();
  *v1 = result;
  return result;
}

uint64_t sub_1E4125D88()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E4125C78(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1E4125DB8()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E4125DF8(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_2_271();
  }

  if (a1 == 1)
  {
    return 0x6D6F74746F62;
  }

  return 1701736302;
}

unint64_t sub_1E4125E54(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E4125DB8();
  *v1 = result;
  return result;
}

uint64_t sub_1E4125E7C()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E4125DF8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E4125EAC(char a1, char a2)
{
  v2 = 1;
  switch(a2)
  {
    case 1:
    case 4:
      v2 = a1;
      break;
    case 2:
      v2 = a1 ^ 1;
      break;
    default:
      return v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_1E4125EE8(uint64_t a1)
{
  v1 = a1;
  switch(a1)
  {
    case 3:
      goto LABEL_9;
    case 4:
      OUTLINED_FUNCTION_21_124();
      break;
    default:
      break;
  }

  v2 = sub_1E42079A4();

  if ((v2 & 1) == 0)
  {
    v3 = sub_1E4126068(v1);
    if (v3 != 0xD000000000000019 || 0x80000001E4292DF0 != v4)
    {
      v7 = OUTLINED_FUNCTION_23_111(v3, v4, v5, 0x80000001E4292DF0);

      return v7 & 1;
    }

LABEL_9:
  }

  return 1;
}

unint64_t sub_1E4126028()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E4126068(char a1)
{
  result = 0x737961776C61;
  switch(a1)
  {
    case 1:
      v3 = 2003789939;
      goto LABEL_5;
    case 2:
      v3 = 1701079400;
LABEL_5:
      result = v3 | 0x69486E4F00000000;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1E4126180(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E4126028();
  *v1 = result;
  return result;
}

uint64_t sub_1E41261A8()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E4126068(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E41261D8(char a1)
{
  switch(a1)
  {
    case 1:
      result = sub_1E4202184();
      break;
    case 2:
      result = MEMORY[0x1EEDE18E8]();
      break;
    case 3:
      result = MEMORY[0x1EEDE18B0]();
      break;
    default:
      result = sub_1E4202164();
      break;
  }

  return result;
}

uint64_t sub_1E412620C()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_57_0();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E4126248(char a1)
{
  result = 0x7972616D697270;
  switch(a1)
  {
    case 1:
      result = 0x7261646E6F636573;
      break;
    case 2:
      result = 0x7972616974726574;
      break;
    case 3:
      result = 0x616E726574617571;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E4126348(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E412620C();
  *v1 = result;
  return result;
}

uint64_t sub_1E4126370()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E4126248(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E41263A0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A258, &qword_1E42DE8A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  v7 = sub_1E4203D34();
  result = __swift_storeEnumTagSinglePayload(a2, 1, 1, v7);
  switch(a1)
  {
    case 1:
      sub_1E4203CE4();
      goto LABEL_8;
    case 2:
    case 8:
      sub_1E4203D24();
      goto LABEL_8;
    case 3:
      sub_1E4203CF4();
      goto LABEL_8;
    case 4:
      sub_1E4203C74();
      goto LABEL_8;
    case 6:
      sub_1E4203CD4();
      goto LABEL_8;
    case 7:
    case 9:
    case 10:
      return result;
    default:
      sub_1E4203D14();
LABEL_8:
      sub_1E41264CC(a2);
      __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
      return sub_1E4126534(v6, a2);
  }
}

uint64_t sub_1E41264CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A258, &qword_1E42DE8A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4126534(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A258, &qword_1E42DE8A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1E41265A4(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    return 0;
  }

  else
  {
    return [objc_opt_self() effectWithStyle_];
  }
}

unint64_t sub_1E412660C()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E412664C(char a1)
{
  result = 0x72616C75676572;
  switch(a1)
  {
    case 1:
      result = 1852401780;
      break;
    case 2:
      result = 0x6968546172746C75;
      break;
    case 3:
      result = 0x6B63696874;
      break;
    case 4:
      result = 0x6968546172746C75;
      break;
    case 5:
      result = 0x72657474616C70;
      break;
    case 6:
      result = 7496034;
      break;
    case 7:
      result = 0x756964654D767461;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x7373616C67;
      break;
    case 10:
      result = 0x616C507373616C67;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1E412677C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF407C0;
  if (!qword_1ECF407C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF407C0);
  }

  return result;
}

unint64_t sub_1E41267DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF407C8;
  if (!qword_1ECF407C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF407C8);
  }

  return result;
}

unint64_t sub_1E4126834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF407D0;
  if (!qword_1ECF407D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF407D0);
  }

  return result;
}

unint64_t sub_1E412688C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF407D8;
  if (!qword_1ECF407D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF407D8);
  }

  return result;
}

unint64_t sub_1E41268E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF407E0;
  if (!qword_1ECF407E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF407E0);
  }

  return result;
}

unint64_t sub_1E41269B4(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E412660C();
  *v1 = result;
  return result;
}

unint64_t sub_1E41269DC()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E412664C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E4126A1C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 18);
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

      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 18);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 18);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v8);
}

_BYTE *sub_1E4126AA0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 17);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E4126B68(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E4126C48(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E4126D10(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E4126DD8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E4126EA0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 10);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E4126F6C(uint64_t a1, uint64_t a2, double *a3, void *a4)
{
  v5 = a2;
  v391 = a1;
  v6 = *a3;
  if (*a3 == 2)
  {
    v6 = 0;
    v7 = 0;
    Width = 0.0;
    v9 = 0.0;
  }

  else
  {
    Width = a3[1];
    v9 = a3[2];
    v7 = (v6 >> 16) & 1;
  }

  v388 = v7;
  if (!a2)
  {
    goto LABEL_144;
  }

  OUTLINED_FUNCTION_8();
  v11 = *(v10 + 488);
  v12 = v5;
  v13 = v11();
  if (!v13)
  {

    goto LABEL_144;
  }

  v14 = v13;
  if (!*(v13 + 16) || (OUTLINED_FUNCTION_8(), (v16 = (*(v15 + 392))()) == 0))
  {
LABEL_141:

LABEL_144:
    result = sub_1E42076B4();
    __break(1u);
    return result;
  }

  v17 = v16;
  type metadata accessor for CanonicalBannerLayout();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {

    goto LABEL_144;
  }

  v19 = v18;
  v20 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_16_89();
  (*(v21 + 664))();
  v22 = *((*v20 & *v12) + 0x280);

  v22(v19);
  v25 = TVAppFeature.isEnabled.getter(10, v23, v24);
  if (v25)
  {
    v26 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x1F8);
    v27 = a4;
    v25 = v26(a4);
  }

  v382 = v6;
  v28 = (*(*v19 + 1912))(v25);
  v29 = v12;
  v30 = [v29 vuiTraitCollection];
  v32 = sub_1E373E010(35, v14, v31);
  if (v32)
  {
  }

  type metadata accessor for CanonicalBannerViewCell();
  v33 = j__OUTLINED_FUNCTION_18();
  HIDWORD(v385) = sub_1E3D17C34(v28, v30, v32 != 0, v33 & 1);

  v34 = v29;
  v35 = MEMORY[0x1E69E7D40];
  v36 = v388;
  if ((v388 & 1) == 0)
  {
    v37 = v29;
    [v37 vuiBounds];
    if (CGRectGetWidth(v402) <= 0.0)
    {
    }

    else
    {
      [v37 vuiBounds];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;

      v403.origin.x = v39;
      v403.origin.y = v41;
      v403.size.width = v43;
      v403.size.height = v45;
      Width = CGRectGetWidth(v403);
    }

    type metadata accessor for MediaShowcaseHostingView();
    v46 = sub_1E40037C8(v391);
    v34 = [v37 vuiTraitCollection];

    (*(*v19 + 2592))(v34, BYTE4(v385) & 1, Width, v9, v46);
    v36 = v388;
  }

  if ((TVAppFeature.isEnabled.getter(10, v47, v48) & 1) == 0)
  {
    sub_1E4128FF0(v29, v14, v36, BYTE4(v385) & 1, v19, v391);
    goto LABEL_103;
  }

  v355 = v17;
  if ((v385 & 0x100000000) != 0)
  {
    v49 = 2;
  }

  else
  {
    v49 = 0;
  }

  [v29 vui:v49 setOverrideUserInterfaceStyle:?];
  OUTLINED_FUNCTION_19_156();
  v51 = (*((*v35 & v50) + 0x2A8))();
  if (!v51)
  {
    type metadata accessor for CanonicalBannerInfoView();
    v51 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  v52 = v51;
  OUTLINED_FUNCTION_16_89();
  v54 = *(v53 + 264);

  v54(v55);
  v376 = v5;
  if (!sub_1E373E010(91, v14, v56) || (OUTLINED_FUNCTION_30(), v58 = (*(v57 + 464))(), , !v58))
  {

    v58 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_1_250();
  v60 = *(v59 + 288);

  v352 = v58;
  v60(v61);
  OUTLINED_FUNCTION_22_87();
  (*((*v35 & v62) + 0x150))(BYTE4(v385) & 1);
  v63 = 1 << *(v14 + 32);
  v64 = -1;
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  v65 = v64 & *(v14 + 64);
  v66 = (v63 + 63) >> 6;

  v67 = 0;
  if (!v65)
  {
LABEL_31:
    while (1)
    {
      v5 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        break;
      }

      if (v5 >= v66)
      {

        v68 = 0;
        goto LABEL_39;
      }

      v65 = *(v14 + 64 + 8 * v5);
      ++v67;
      if (v65)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_139;
  }

  while (1)
  {
    v5 = v67;
LABEL_34:
    v68 = *(*(v14 + 56) + ((v5 << 9) | (8 * __clz(__rbit64(v65)))));

    if (sub_1E385050C())
    {
      break;
    }

    v65 &= v65 - 1;
    v67 = v5;
    if (!v65)
    {
      goto LABEL_31;
    }
  }

LABEL_39:
  v369 = v19;
  v70 = *((*MEMORY[0x1E69E7D40] & *v29) + 0x248);
  v70(v69);
  v373 = v68;
  if (v68)
  {
    OUTLINED_FUNCTION_71_2();
    v73 = *(v72 + 392);

    v75 = v73(v74);

    if (v75)
    {
      type metadata accessor for TextBadgeLayout(0);
      OUTLINED_FUNCTION_20_2();
      v76 = swift_dynamicCastClass();
      if (v76)
      {
        goto LABEL_44;
      }
    }
  }

  v76 = 0;
LABEL_44:
  sub_1E3788E58(v76, v71);

  v70(v77);
  nullsub_1();
  v79 = v78;
  v80 = type metadata accessor for UIFactory();
  OUTLINED_FUNCTION_22_87();
  v81 = MEMORY[0x1E69E7D40];
  v83 = (*((*MEMORY[0x1E69E7D40] & v82) + 0x160))();
  v397 = &type metadata for BadgeViewContext;
  v398 = &off_1F5D588D0;
  aBlock = v79;
  v84 = sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
  v349 = v79;

  sub_1E393D92C(v373, v83, &aBlock, 0, v84);

  v85 = &qword_1ECF296C0;
  OUTLINED_FUNCTION_29_105(v86, v87, v88, v89, v90, v91, v92, v93, v342, v345, v349, v352, v355, v358, v14, v84, v369, v373, v376, v379, v382, v385, v388, v391);
  v94 = OUTLINED_FUNCTION_10_181();
  v95(v94);
  v14 = v363;
  sub_1E373E010(43, v363, v96);
  OUTLINED_FUNCTION_22_87();
  v98 = (*((*v81 & v97) + 0x178))();
  sub_1E3280A90(0, &qword_1EE23B360, 0x1E69DF740);
  v99 = OUTLINED_FUNCTION_18_143();
  sub_1E393D92C(v99, v100, v101, v102, v103);

  OUTLINED_FUNCTION_29_105(v104, v105, v106, v107, v108, v109, v110, v111, v343, v346, v350, v353, v356, v359, v363, v366, v370, v374, v377, v380, v383, v386, v389, v392);
  OUTLINED_FUNCTION_22_87();
  v112 = OUTLINED_FUNCTION_10_181();
  v113(v112);
  sub_1E373E010(23, v14, v114);
  OUTLINED_FUNCTION_22_87();
  v116 = (*((*v81 & v115) + 0x190))();
  sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
  v117 = OUTLINED_FUNCTION_18_143();
  v360 = v118;
  sub_1E393D92C(v117, v119, v120, v121, v118);

  OUTLINED_FUNCTION_29_105(v122, v123, v124, v125, v126, v127, v128, v129, v344, v347, v351, v354, v357, v360, v364, v367, v371, v375, v378, v381, v384, v387, v390, v393);
  OUTLINED_FUNCTION_22_87();
  v130 = OUTLINED_FUNCTION_10_181();
  v131(v130);
  if (sub_1E373E010(15, v14, v132))
  {

    sub_1E373E010(15, v14, v134);
    OUTLINED_FUNCTION_22_87();
    (*((*v81 & v135) + 0x1A8))();
    OUTLINED_FUNCTION_6_239();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF310A0, &qword_1E42B4768);
    v136 = OUTLINED_FUNCTION_5_252();
    sub_1E393D92C(v136, v137, v138, v139, v140);

    sub_1E325F748(&aBlock, &qword_1ECF296C0, &unk_1E429BBE0);
    OUTLINED_FUNCTION_22_87();
    v141 = OUTLINED_FUNCTION_10_181();
    v142(v141);
  }

  else if (sub_1E373E010(60, v14, v133))
  {
    OUTLINED_FUNCTION_1_250();
    v144 += 53;
    v145 = *v144;
    v85 = v144;

    v145(v146);
    OUTLINED_FUNCTION_6_239();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF310A0, &qword_1E42B4768);
    v147 = OUTLINED_FUNCTION_5_252();
    sub_1E393D92C(v147, v148, v149, v150, v151);
    OUTLINED_FUNCTION_38();

    sub_1E325F748(&aBlock, &qword_1ECF296C0, &unk_1E429BBE0);
    OUTLINED_FUNCTION_22_87();
    v152 = OUTLINED_FUNCTION_10_181();
    v153(v152);
  }

  if (sub_1E373E010(12, v14, v143))
  {
    OUTLINED_FUNCTION_1_250();
    v85 = *(v154 + 448);
    if (v388)
    {
      (v85)();
    }

    else
    {

      (v85)(v157);
      v158 = OUTLINED_FUNCTION_3_280();
      sub_1E393D92C(v158, v159, v160, v161, v361);
      OUTLINED_FUNCTION_38();

      sub_1E325F748(&aBlock, &qword_1ECF296C0, &unk_1E429BBE0);
    }

    OUTLINED_FUNCTION_16_89();
    v162 = OUTLINED_FUNCTION_10_181();
    v163(v162);
  }

  else
  {
    OUTLINED_FUNCTION_1_250();
    (*(v155 + 456))();
  }

  if (v388)
  {
    OUTLINED_FUNCTION_1_250();
    (*(v164 + 472))();
  }

  else
  {
    sub_1E373E010(13, v14, v156);
    OUTLINED_FUNCTION_1_250();
    (*(v165 + 472))();
    v166 = OUTLINED_FUNCTION_3_280();
    sub_1E393D92C(v166, v167, v168, v169, v361);

    sub_1E325F748(&aBlock, &qword_1ECF296C0, &unk_1E429BBE0);
  }

  OUTLINED_FUNCTION_1_250();
  v170 = OUTLINED_FUNCTION_10_181();
  v171(v170);
  if (sub_1E373E010(27, v14, v172))
  {
    OUTLINED_FUNCTION_1_250();
    v85 = *(v174 + 496);
    if (v388)
    {
      (v85)();
    }

    else
    {

      (v85)(v175);
      v176 = OUTLINED_FUNCTION_3_280();
      sub_1E393D92C(v176, v177, v178, v179, v361);
      OUTLINED_FUNCTION_38();

      sub_1E325F748(&aBlock, &qword_1ECF296C0, &unk_1E429BBE0);
    }

    OUTLINED_FUNCTION_16_89();
    v180 = OUTLINED_FUNCTION_10_181();
    v181(v180);
  }

  v358 = v80;
  if (!sub_1E373E010(9, v14, v173))
  {
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_16_89();
  v184 = *(v183 + 520);

  v184(v185);
  v186 = OUTLINED_FUNCTION_3_280();
  sub_1E393D92C(v186, v187, v188, v189, v365);

  sub_1E325F748(&aBlock, &qword_1ECF296C0, &unk_1E429BBE0);
  OUTLINED_FUNCTION_22_87();
  v190 = OUTLINED_FUNCTION_10_181();
  v192 = v191(v190);
  v193 = (v184)(v192);
  if (!v193)
  {
    goto LABEL_67;
  }

  v194 = v193;
  objc_opt_self();
  OUTLINED_FUNCTION_20_2();
  v195 = swift_dynamicCastObjCClass();
  if (!v195)
  {

LABEL_67:

    goto LABEL_68;
  }

  v196 = v195;
  OUTLINED_FUNCTION_4_0();
  v197 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_4_0();
  v198 = swift_allocObject();
  swift_weakInit();

  v199 = swift_allocObject();
  v199[2] = v197;
  v199[3] = v198;
  v199[4] = v379;
  v398 = sub_1E412BB38;
  v399 = v199;
  aBlock = MEMORY[0x1E69E9820];
  v395 = 1107296256;
  v396 = sub_1E3889A38;
  v397 = &block_descriptor_169;
  v200 = _Block_copy(&aBlock);

  [v196 setSelectionHandler_];

  _Block_release(v200);

LABEL_68:
  v14 = v362;
LABEL_69:
  if (sub_1E373E010(91, v14, v182))
  {
    OUTLINED_FUNCTION_30();
    v202 = (*(v201 + 464))();
  }

  else
  {
    v202 = 0;
  }

  type metadata accessor for CanonicalBannerFactory();
  OUTLINED_FUNCTION_1_250();
  v204 = (*(v203 + 592))();
  v205 = [v29 vuiTraitCollection];
  sub_1E412A22C(v202, v204, BYTE4(v385) & 1);
  v207 = v206;

  if (!v207)
  {
    v5 = v376;
    goto LABEL_76;
  }

  v5 = v376;
  if (!(v207 >> 62))
  {

    sub_1E42079D4();
    goto LABEL_76;
  }

LABEL_139:

  sub_1E42076C4();
  OUTLINED_FUNCTION_38();

LABEL_76:
  v35 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_1_250();
  v208 = OUTLINED_FUNCTION_10_181();
  v209(v208);
  if (v388)
  {
    OUTLINED_FUNCTION_1_250();
    (*(v211 + 616))();
  }

  else
  {
    sub_1E373E010(11, v14, v210);
    OUTLINED_FUNCTION_19_156();
    v213 = (*((*v35 & v212) + 0x3B0))();
    OUTLINED_FUNCTION_4_274();
    OUTLINED_FUNCTION_30_89(v214, v215, v216, v217, v218, v219, v220, v221, v342, v345, v348, v352, v355, v358, v362, v365);

    v35 = MEMORY[0x1E69E7D40];

    sub_1E325F748(&aBlock, &qword_1ECF296C0, &unk_1E429BBE0);
  }

  OUTLINED_FUNCTION_1_250();
  v222 = OUTLINED_FUNCTION_10_181();
  v223(v222);
  if (v388)
  {
    OUTLINED_FUNCTION_1_250();
    (*(v225 + 640))();
  }

  else
  {
    sub_1E373E010(3, v14, v224);
    OUTLINED_FUNCTION_19_156();
    v227 = (*((*v35 & v226) + 0x380))();
    OUTLINED_FUNCTION_4_274();
    OUTLINED_FUNCTION_30_89(v228, v229, v230, v231, v232, v233, v234, v235, v342, v345, v348, v352, v355, v358, v362, v365);

    v35 = MEMORY[0x1E69E7D40];

    sub_1E325F748(&aBlock, &qword_1ECF296C0, &unk_1E429BBE0);
  }

  OUTLINED_FUNCTION_1_250();
  v236 = OUTLINED_FUNCTION_10_181();
  v237(v236);
  OUTLINED_FUNCTION_19_156();
  v239 = *((*v35 & v238) + 0x2B0);
  v240 = v52;
  v239(v52);
  v242 = sub_1E373E010(93, v14, v241);
  if (v242)
  {
    v243 = v242;
    v244 = v388;
    if (v388)
    {
      OUTLINED_FUNCTION_2_272();
      v246 = (*(v245 + 992))();
    }

    else
    {
      type metadata accessor for RolesSummaryView();
      v265 = (*((*MEMORY[0x1E69E7D40] & *v29) + 0x3E0))();
      v35 = MEMORY[0x1E69E7D40];
      sub_1E413A93C(v243, v265, v266, v267, v268, v269, v270, v271, v342, v345, v348, v352, v355, v358, v362, v365, v368, v372, v376, v379, v382, v385, v388, v391, aBlock, v395);
      v246 = v272;

      v5 = v376;
    }

    OUTLINED_FUNCTION_2_272();
    (*(v273 + 1000))(v246);

    if (v244)
    {
      goto LABEL_95;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_272();
    (*(v247 + 1000))();
    if (v388)
    {
LABEL_95:

      goto LABEL_103;
    }
  }

  v12 = [objc_allocWithZone(VUIContentMetadata) init];
  v248 = (*(*v391 + 552))();
  if (v248)
  {
    v397 = &unk_1F5D7BE68;
    v398 = &off_1F5D7BC48;
    LOBYTE(aBlock) = 6;
    sub_1E3F9F164(&aBlock, v248, MEMORY[0x1E69E7CA0] + 8);

    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    if (*(&v401 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      if ((swift_dynamicCast() & 1) == 0)
      {

LABEL_101:
        v35 = MEMORY[0x1E69E7D40];
        goto LABEL_102;
      }

      sub_1E3744600(aBlock);
      v249 = objc_allocWithZone(VUIContentMetadata);
      v250 = OUTLINED_FUNCTION_20_2();
      v251 = sub_1E37AD294(v250);
      if (v251)
      {
        v252 = v251;

        v253 = *((*MEMORY[0x1E69E7D40] & *v240) + 0x238);
        v12 = v252;
        v254 = v253();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710, &qword_1E429AC10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E4297BE0;
        *&v400 = sub_1E4205F14();
        *(&v400 + 1) = v256;
        sub_1E4207414();
        sub_1E32ABF64();
        OUTLINED_FUNCTION_8();
        v258 = *(v257 + 96);

        v260 = v258(v259);

        *(inited + 96) = MEMORY[0x1E69E6370];
        *(inited + 72) = v260 & 1;
        v261 = sub_1E4205CB4();
        v262 = sub_1E412B098(v261, v12, v368, v254, v261);

        if (v262)
        {
          v263 = *((*MEMORY[0x1E69E7D40] & *v240) + 0x240);
          v264 = v262;
          v263(v262);
        }

        v5 = v376;
        goto LABEL_101;
      }

      __break(1u);
      goto LABEL_141;
    }
  }

  else
  {

    v400 = 0u;
    v401 = 0u;
  }

  sub_1E325F748(&v400, &unk_1ECF296E0, &unk_1E4298030);
  v35 = MEMORY[0x1E69E7D40];
LABEL_102:
  sub_1E3BD1AA4(v29, v391);

LABEL_103:

  if (*sub_1E3D0D648() == 1)
  {
    v274 = objc_allocWithZone(MEMORY[0x1E69DD250]);
    v275 = OUTLINED_FUNCTION_1_36();
    v278 = [v276 v277];
    v279 = [objc_opt_self() randomColor];
    [v278 setVuiBackgroundColor_];

    OUTLINED_FUNCTION_19_156();
    v281 = *((*v35 & v280) + 0x600);
    v282 = v278;
    v283 = OUTLINED_FUNCTION_21_125();
    v281(v283);
LABEL_114:

    goto LABEL_115;
  }

  LOBYTE(v400) = 0;
  OUTLINED_FUNCTION_8();
  (*(v284 + 776))(&aBlock, &v400, &unk_1F5D5E0F8, &off_1F5D5CAF8);
  if (v397)
  {
    swift_dynamicCast();
  }

  else
  {
    sub_1E325F748(&aBlock, &unk_1ECF296E0, &unk_1E4298030);
  }

  OUTLINED_FUNCTION_2_272();
  (*(v285 + 1440))();
  OUTLINED_FUNCTION_19_156();
  v287 = (*((*v35 & v286) + 0x598))();
  if (v288)
  {
    v289 = v287;
    v290 = v288;
    sub_1E3285D14();
    OUTLINED_FUNCTION_10_118();
    v292 = *(v291 + 272);
    v294 = v293;
    v279 = v292(v289, v290);

    v35 = MEMORY[0x1E69E7D40];

    if (v279)
    {
      if (v388)
      {
        OUTLINED_FUNCTION_2_272();
        v296 = (*(v295 + 1528))();
      }

      else
      {
        OUTLINED_FUNCTION_10_118();
        v298 = *(v297 + 264);
        v300 = v299;
        v301 = v298(v279);
        v35 = MEMORY[0x1E69E7D40];
        v296 = v301;
      }

      OUTLINED_FUNCTION_2_272();
      (*(v302 + 1536))(v296);
      goto LABEL_114;
    }
  }

LABEL_115:
  OUTLINED_FUNCTION_2_272();
  v303 += 77;
  v304 = *v303;
  v305 = v303;

  v304(v306);
  OUTLINED_FUNCTION_19_156();
  v307 = OUTLINED_FUNCTION_1_36();
  v308(v307);
  if (![objc_opt_self() isMac])
  {
    if (v382 & 1 | ((TVAppFeature.isEnabled.getter(10, v309, v310) & 1) == 0) || ((HIDWORD(v385) ^ 1) & 1) != 0)
    {
      goto LABEL_124;
    }

LABEL_120:
    TVAppFeature.isEnabled.getter(10, v309, v310);
    OUTLINED_FUNCTION_16_89();
    if (v312)
    {
      v313 = (*(v311 + 1112))();
      if (!v313)
      {
        type metadata accessor for ProductGradientView();
        OUTLINED_FUNCTION_1_36();
        v313 = sub_1E3890DAC();
      }

      v314 = v313;
      OUTLINED_FUNCTION_2_272();
      v316 = *(v315 + 1120);
      v317 = v314;
      v318 = OUTLINED_FUNCTION_21_125();
      v316(v318);
    }

    else
    {
      v325 = (*(v311 + 1064))();
      if (!v325)
      {
        v325 = [objc_allocWithZone(VUIProductUberBackgroundView) init];
      }

      v326 = v325;
      OUTLINED_FUNCTION_2_272();
      v328 = *(v327 + 1072);
      v329 = v326;
      v330 = OUTLINED_FUNCTION_21_125();
      v328(v330);
    }

    OUTLINED_FUNCTION_2_272();
    v332 = (*(v331 + 1256))();
    if (!v332)
    {
      sub_1E3280A90(0, &qword_1EE23AF70, off_1E8728270);
      v332 = sub_1E39F8768();
    }

    v335 = v332;
    if (TVAppFeature.isEnabled.getter(10, v333, v334))
    {
      sub_1E38D25EC();

      v336 = sub_1E38D262C();

      [v335 setMutePlaybackInBackground_];
    }

    OUTLINED_FUNCTION_2_272();
    v338 = *(v337 + 1264);
    v339 = v335;
    v338(v335);
    OUTLINED_FUNCTION_19_156();
    (*((*v35 & v340) + 0x228))(v391);

    v322 = v388;
    goto LABEL_135;
  }

  if ((v382 & 1) == 0)
  {
    goto LABEL_120;
  }

LABEL_124:
  OUTLINED_FUNCTION_2_272();
  (*(v319 + 1264))(0);
  v322 = v388;
  if (TVAppFeature.isEnabled.getter(10, v320, v321))
  {
    OUTLINED_FUNCTION_2_272();
    (*(v323 + 560))(0);
  }

  else
  {
    v324 = [v29 vuiContentView];
    [v324 setVuiBackgroundColor_];
  }

LABEL_135:
  if ((v322 & 1) == 0)
  {
    [v29 setNeedsLayout];
  }

  return v5;
}

void sub_1E4128FF0(void *a1, uint64_t a2, int a3, int a4, uint64_t *a5, uint64_t a6)
{
  v168 = a6;
  HIDWORD(v169) = a4;
  HIDWORD(v174) = a3;
  v8 = type metadata accessor for UIFactory();
  v10 = sub_1E373E010(43, a2, v9);
  OUTLINED_FUNCTION_39();
  v11 = MEMORY[0x1E69E7D40];
  v13 = (*((*MEMORY[0x1E69E7D40] & v12) + 0x2C0))();
  v14 = sub_1E3280A90(0, &qword_1EE23B360, 0x1E69DF740);
  v187 = 0u;
  v188 = 0u;
  v189 = 0;
  sub_1E393D92C(v10, v13, &v187, 0, v14);

  v15 = v8;

  sub_1E325F748(&v187, &qword_1ECF296C0, &unk_1E429BBE0);
  OUTLINED_FUNCTION_39();
  v16 = OUTLINED_FUNCTION_15_18();
  v17(v16);
  sub_1E373E010(23, a2, v18);
  OUTLINED_FUNCTION_39();
  v20 = (*((*v11 & v19) + 0x2D8))();
  sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
  v187 = 0u;
  v188 = 0u;
  v189 = 0;
  v21 = OUTLINED_FUNCTION_13_193();
  v172 = v22;
  sub_1E393D92C(v21, v23, v24, v25, v22);

  v26 = a2;

  sub_1E325F748(&v187, &qword_1ECF296C0, &unk_1E429BBE0);
  OUTLINED_FUNCTION_39();
  v27 = OUTLINED_FUNCTION_15_18();
  v28(v27);
  v175 = a2;
  if (sub_1E373E010(15, a2, v29))
  {

    sub_1E373E010(15, a2, v31);
    OUTLINED_FUNCTION_39();
    v33 = (*((*v11 & v32) + 0x2F0))();
    v189 = 0;
    v187 = 0u;
    v188 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF310A0, &qword_1E42B4768);
    v34 = OUTLINED_FUNCTION_7_247();
    sub_1E393D92C(v34, v35, v36, v37, v38);

    sub_1E325F748(&v187, &qword_1ECF296C0, &unk_1E429BBE0);
    OUTLINED_FUNCTION_39();
    v39 = OUTLINED_FUNCTION_15_18();
    v40(v39);
  }

  else if (sub_1E373E010(60, a2, v30))
  {
    OUTLINED_FUNCTION_32();
    v43 = *(v42 + 752);

    v26 = a2;
    v45 = v43(v44);
    OUTLINED_FUNCTION_14_187();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF310A0, &qword_1E42B4768);
    v46 = OUTLINED_FUNCTION_7_247();
    sub_1E393D92C(v46, v47, v48, v49, v50);
    OUTLINED_FUNCTION_50();

    sub_1E325F748(&v187, &qword_1ECF296C0, &unk_1E429BBE0);
    OUTLINED_FUNCTION_39();
    v51 = OUTLINED_FUNCTION_15_18();
    v52(v51);
  }

  v173 = v15;
  v53 = BYTE4(v174);
  if (sub_1E373E010(12, v26, v41))
  {
    OUTLINED_FUNCTION_32();
    v55 = *(v54 + 776);
    v56 = a5;
    if ((v174 & 0x100000000) != 0)
    {
      v55();
    }

    else
    {

      v67 = (v55)(v66);
      OUTLINED_FUNCTION_14_187();
      v68 = OUTLINED_FUNCTION_7_247();
      sub_1E393D92C(v68, v69, v70, v71, v172);
      OUTLINED_FUNCTION_50();

      sub_1E325F748(&v187, &qword_1ECF296C0, &unk_1E429BBE0);
    }

    OUTLINED_FUNCTION_32();
    v72 = OUTLINED_FUNCTION_15_18();
    v73(v72);

    v26 = v175;
    if ((v174 & 0x100000000) != 0)
    {
      goto LABEL_12;
    }

LABEL_9:
    sub_1E373E010(13, v26, v58);
    OUTLINED_FUNCTION_32();
    v60 = (*(v59 + 800))();
    OUTLINED_FUNCTION_14_187();
    v61 = OUTLINED_FUNCTION_13_193();
    v65 = sub_1E393D92C(v61, v62, v63, v64, v172);

    v26 = v175;

    sub_1E325F748(&v187, &qword_1ECF296C0, &unk_1E429BBE0);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_32();
  (*(v57 + 784))();
  v56 = a5;
  if ((v174 & 0x100000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  OUTLINED_FUNCTION_32();
  v65 = (*(v74 + 800))();
LABEL_13:
  OUTLINED_FUNCTION_32();
  (*(v75 + 808))(v65);
  if (sub_1E373E010(27, v26, v76))
  {
    OUTLINED_FUNCTION_32();
    v79 = *(v78 + 824);
    if ((v174 & 0x100000000) != 0)
    {
      v79();
    }

    else
    {

      v81 = (v79)(v80);
      OUTLINED_FUNCTION_14_187();
      v82 = OUTLINED_FUNCTION_7_247();
      sub_1E393D92C(v82, v83, v84, v85, v172);
      OUTLINED_FUNCTION_50();

      sub_1E325F748(&v187, &qword_1ECF296C0, &unk_1E429BBE0);
    }

    OUTLINED_FUNCTION_32();
    v86 = OUTLINED_FUNCTION_15_18();
    v87(v86);

    v26 = v175;
  }

  v88 = sub_1E373E010(9, v26, v77);
  if (v88)
  {
    if (*v88 == _TtC8VideosUI13TextViewModel)
    {
      OUTLINED_FUNCTION_32();
      v91 = *(v90 + 968);
      v92 = swift_retain_n();
      v93 = v91(v92);
      sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
      v187 = 0u;
      v188 = 0u;
      v189 = 0;
      v94 = OUTLINED_FUNCTION_7_247();
      sub_1E393D92C(v94, v95, v96, v97, v98);
      OUTLINED_FUNCTION_50();

      sub_1E325F748(&v187, &qword_1ECF296C0, &unk_1E429BBE0);
      OUTLINED_FUNCTION_39();
      v99 = OUTLINED_FUNCTION_15_18();
      v101 = v100(v99);
      v102 = (*(*v56 + 2224))(v101);
      v103 = OUTLINED_FUNCTION_18();
      v104 = sub_1E3C287F4(v102, v103 & 1);
      v105 = (*(*v102 + 2408))();
      OUTLINED_FUNCTION_39();
      v107 = *((*v11 & v106) + 0x568);
      a5 = v104;
      v108 = v105;
      v109 = v107();
      v11 = MEMORY[0x1E69E7D40];
      v26 = v175;
      sub_1E3889680(v104, v108, v109);
      OUTLINED_FUNCTION_39();
      (*((*v11 & v110) + 0x570))();

      v53 = BYTE4(v174);
    }

    else
    {
    }
  }

  v111 = sub_1E373E010(93, v26, v89);
  if (v111)
  {
    v112 = v111;
    if (v53)
    {
      OUTLINED_FUNCTION_32();
      (*(v113 + 992))();
    }

    else
    {
      type metadata accessor for RolesSummaryView();
      OUTLINED_FUNCTION_32();
      v117 = (*(v116 + 992))();
      sub_1E413A93C(v112, v117, v118, v119, v120, v121, v122, v123, v167, v168, v169, a5, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184);

      v26 = v175;
    }

    OUTLINED_FUNCTION_32();
    v124 = OUTLINED_FUNCTION_15_18();
    v125(v124);
  }

  else
  {
    OUTLINED_FUNCTION_32();
    (*(v114 + 1000))();
  }

  if (sub_1E373E010(91, v26, v115))
  {
    OUTLINED_FUNCTION_30();
    v127 = (*(v126 + 464))();
  }

  else
  {
    v127 = 0;
  }

  type metadata accessor for CanonicalBannerFactory();
  OUTLINED_FUNCTION_32();
  v129 = (*(v128 + 872))();
  v130 = [a1 vuiTraitCollection];
  sub_1E412A22C(v127, v129, BYTE4(v169) & 1);
  v132 = v131;

  if (v132)
  {
    v133 = BYTE4(v174);
    if (v132 >> 62)
    {
      sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);

      v134 = sub_1E42076C4();
    }

    else
    {

      sub_1E42079D4();
      sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
      v134 = v132;
    }
  }

  else
  {
    v134 = 0;
    v133 = BYTE4(v174);
  }

  OUTLINED_FUNCTION_32();
  (*(v135 + 880))(v134);
  if (v133)
  {
    OUTLINED_FUNCTION_32();
    v138 = (*(v137 + 944))();
  }

  else
  {
    sub_1E373E010(11, v175, v136);
    OUTLINED_FUNCTION_32();
    v140 = (*(v139 + 944))();
    v189 = 0;
    v187 = 0u;
    v188 = 0u;
    v141 = OUTLINED_FUNCTION_13_193();
    v138 = sub_1E393D92C(v141, v142, v143, v144, v172);

    sub_1E325F748(&v187, &qword_1ECF296C0, &unk_1E429BBE0);
  }

  OUTLINED_FUNCTION_32();
  (*(v145 + 952))(v138);
  if (v133)
  {

    return;
  }

  v146 = v56;
  v147 = [objc_allocWithZone(VUIContentMetadata) init];
  v148 = (*(*v168 + 552))();
  if (!v148)
  {

    v185 = 0u;
    v186 = 0u;
LABEL_49:
    sub_1E325F748(&v185, &unk_1ECF296E0, &unk_1E4298030);
LABEL_51:
    sub_1E3BD1AA4(a1, v168);

    return;
  }

  *(&v188 + 1) = &unk_1F5D7BE68;
  v189 = &off_1F5D7BC48;
  LOBYTE(v187) = 6;
  sub_1E3F9F164(&v187, v148, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(&v187);
  if (!*(&v186 + 1))
  {

    goto LABEL_49;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_51;
  }

  sub_1E3744600(v187);
  v149 = objc_allocWithZone(VUIContentMetadata);
  v150 = OUTLINED_FUNCTION_50();
  v151 = sub_1E37AD294(v150);
  if (v151)
  {
    v152 = v151;

    OUTLINED_FUNCTION_39();
    v154 = *((*v11 & v153) + 0x3F8);
    v147 = v152;
    v155 = v154();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710, &qword_1E429AC10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    *&v187 = sub_1E4205F14();
    *(&v187 + 1) = v157;
    sub_1E4207414();
    v158 = *sub_1E32ABF64();
    OUTLINED_FUNCTION_8();
    v160 = *(v159 + 96);

    LOBYTE(v160) = v160(v161);

    *(inited + 96) = MEMORY[0x1E69E6370];
    *(inited + 72) = v160 & 1;
    v162 = sub_1E4205CB4();
    sub_1E412B098(v162, v147, v146, v155, v162);
    OUTLINED_FUNCTION_38();

    if (v158)
    {
      OUTLINED_FUNCTION_32();
      v164 = *(v163 + 1024);
      v165 = v158;
      v166 = OUTLINED_FUNCTION_15_18();
      v164(v166);
    }

    goto LABEL_51;
  }

  __break(1u);
}

double sub_1E412A080(uint64_t a1)
{
  v1 = (*(*a1 + 648))();
  if (v1)
  {
    v3 = v1;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v4 = *(v3 + 56);

    if (v4)
    {
      v5 = [objc_opt_self() topMostVisibleViewController];
      if (v5)
      {
        v6 = v5;
        type metadata accessor for CanonicalDescriptionTemplateFactory();
        v7 = [v6 vuiTraitCollection];
        v8 = sub_1E3B18658(v4, v7);

        if (v8)
        {
          v9 = [objc_allocWithZone(VUIDocumentUIConfigurationFormSheet) init];
          [v9 setType_];
          [v9 setShouldWrapModalInNavigationController_];
          [v9 setAnimated_];
          [v9 setTapDismissable_];
          [v9 setModalOverModalAllowed_];
          [objc_opt_self() presentViewController:v8 fromViewController:v6 WithConfiguration:v9 completion:0];
        }
      }
    }
  }

  return result;
}

void sub_1E412A22C(unint64_t a1, unint64_t a2, char a3)
{
  if (!a1)
  {
    return;
  }

  v4 = a1;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_110:
    v6 = sub_1E4207384();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  v7 = 0;
  v8 = v4 & 0xC000000000000001;
  v135 = MEMORY[0x1E69E7CC0];
  v160 = MEMORY[0x1E69E7CC0];
  v139 = a2 & 0xFFFFFFFFFFFFFF8;
  v136 = a2 & 0xC000000000000001;
  v144 = a2;
  v145 = -v6;
  v142 = v5;
  v143 = v4;
  v141 = v4 & 0xC000000000000001;
LABEL_5:
  v9 = v7 + 4;
  while (v145 + v9 != 4)
  {
    v10 = v9 - 4;
    if (v8)
    {
      v110 = OUTLINED_FUNCTION_46_2();
      v11 = MEMORY[0x1E6911E60](v110);
    }

    else
    {
      if (v10 >= *(v5 + 16))
      {
        goto LABEL_108;
      }

      v11 = *(v4 + 8 * v9);
    }

    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    if (a2 && (a2 >> 62 ? (v12 = sub_1E4207384()) : (v12 = *(v139 + 16)), v10 < v12))
    {
      if (v136)
      {
        v13 = MEMORY[0x1E6911E60](v9 - 4, a2);
      }

      else
      {
        if (v10 >= *(v139 + 16))
        {
          goto LABEL_109;
        }

        v13 = *(a2 + 8 * v9);
      }

      v155 = v13;
    }

    else
    {
      v155 = 0;
    }

    if ((*(*v11 + 392))())
    {
      type metadata accessor for ButtonLayout();
      OUTLINED_FUNCTION_20_2();
      v16 = swift_dynamicCastClass();
      if (!v16)
      {
      }
    }

    else
    {
      v16 = 0;
    }

    v140 = v9 - 3;
    if (TVAppFeature.isEnabled.getter(10, v14, v15))
    {
      v181 = v4;
      v156 = v9 - 4;
      LOBYTE(v157) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
      sub_1E3798394();
      v17 = sub_1E38D2054(&v156, &v180);
      if (v180 && (LOWORD(v156) = *(v180 + 98), LOWORD(v181) = 60, sub_1E3741534(v17, v18, v19), (sub_1E4205E84() & 1) != 0))
      {
        if (a3)
        {
          sub_1E3E5FD88();
          if (v16)
          {
            OUTLINED_FUNCTION_71_2();
            v21 = *(v20 + 2048);
            v23 = v22;
            v21();
            OUTLINED_FUNCTION_2_1();
            v25 = *(v24 + 680);
            v151 = v23;
            v25(v23);

            (v21)(v26);
            OUTLINED_FUNCTION_2_1();
            v28 = *(v27 + 872);
            v29 = v151;
            v28(v23);
          }
        }

        else if (v16)
        {
          OUTLINED_FUNCTION_71_2();
          v99 += 256;
          v153 = *v99;
          v100 = (*v99)();
          v101 = sub_1E3E60700();
          v102 = *v101;
          v103 = *(*v100 + 680);
          v104 = *v101;
          v103(v102);

          v106 = (v153)(v105);
          v107 = *v101;
          v108 = *(*v106 + 872);
          v109 = v107;
          v108(v107);
        }
      }

      else if (v16)
      {
        OUTLINED_FUNCTION_71_2();
        (*(v39 + 2296))(10, 0);
        (*(*v16 + 2360))(a3 & 1);
      }

      goto LABEL_57;
    }

    sub_1E34AF4E4(v9 - 4, v8 == 0, v4);
    if (v8)
    {
      v111 = OUTLINED_FUNCTION_46_2();
      v30 = MEMORY[0x1E6911E60](v111);
    }

    else
    {
    }

    v31 = *(v30 + 98);

    v36 = sub_1E373F6E0(v31, 60, v32, v33, v34, v35);
    if (v8)
    {
      v37 = OUTLINED_FUNCTION_46_2();
      v38 = MEMORY[0x1E6911E60](v37);
    }

    else
    {
    }

    v40 = *(v38 + 98);

    v45 = sub_1E373F6E0(v40, 65, v41, v42, v43, v44);
    if (v8)
    {
      v46 = OUTLINED_FUNCTION_46_2();
      v47 = MEMORY[0x1E6911E60](v46);
    }

    else
    {
    }

    v48 = *(v47 + 98);

    v53 = sub_1E373F6E0(v48, 64, v49, v50, v51, v52);
    if (v36)
    {
      if (!v16)
      {
        goto LABEL_54;
      }

      j__OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_71_2();
      v56 = (*(v54 + 2352))(3, v55 & 1, 2);
    }

    else
    {
      if (!v16)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_71_2();
      v56 = (*(v57 + 2352))(a3 & 1, 1, 2);
    }

    (*(*v16 + 2048))(v56);
    OUTLINED_FUNCTION_2_1();
    (*(v58 + 1720))(12);

    if ((v36 & 1) == 0)
    {
LABEL_49:
      OUTLINED_FUNCTION_8();
      (*(v75 + 2600))(v16);
      if (v45)
      {
        if (v16)
        {
          OUTLINED_FUNCTION_71_2();
          (*(v76 + 208))(0, 1);
        }
      }

      else if (v16 != 0 && (v53 & 1) != 0)
      {
        OUTLINED_FUNCTION_71_2();
        (*(v77 + 256))(0x4077700000000000, 0);
      }

      goto LABEL_54;
    }

    OUTLINED_FUNCTION_8();
    v60 = (*(v59 + 2008))();
    (*(*v16 + 1648))(v60);

    if ((a3 & 1) == 0)
    {
      v62 = (*v16 + 2048);
      v63 = *v62;
      v64 = (*v62)(v61);
      v65 = sub_1E3E60700();
      v66 = *v65;
      v67 = v11;
      v68 = *(*v64 + 680);
      v69 = *v65;
      v68(v66);
      v11 = v67;

      v71 = v63(v70);
      v72 = *v65;
      v73 = *(*v71 + 872);
      v74 = v72;
      v73(v72);
    }

LABEL_54:
    v78 = [objc_opt_self() isSUIEnabled];
    if (v16 && v78)
    {
      OUTLINED_FUNCTION_71_2();
      (*(v79 + 256))(0x7FF0000000000000, 0);
      (*(*v16 + 360))(0x7FF0000000000000, 0);
    }

LABEL_57:
    v152 = v9;
    v158 = &unk_1F5D5D6D8;
    v159 = &off_1F5D5C8B8;
    LOBYTE(v156) = 7;
    v80 = j__OUTLINED_FUNCTION_18();
    v81 = sub_1E39C29F0(&v156, v80 & 1);
    __swift_destroy_boxed_opaque_existential_1(&v156);
    if (v81)
    {
      v82 = swift_allocObject();
      *(v82 + 16) = v137;
      *(v82 + 24) = v11;

      OUTLINED_FUNCTION_25();
      sub_1E3F86AD0(v83, v84, v85, v86, 0, 0, v87);
      v88 = v161;
      v89 = v162;
      v91 = v163;
      v90 = v164;
      v92 = v11;
      v93 = v165;
      v94 = v166;
    }

    else
    {
      v89 = 0;
      v91 = 0;
      v90 = 0;
      v93 = 0;
      v92 = v11;
      v94 = 0;
      v88 = 1;
    }

    v174 = v88;
    v175 = v89;
    v176 = v91;
    v177 = v90;
    v178 = v93;
    v179 = v94;
    v167 = 0u;
    v168 = 0u;
    v169 = 0u;
    v170 = 0u;
    v171 = 0u;
    v172 = 2;
    v173 = 0;

    v95 = v92;
    sub_1E3F86D44();
    v97 = v96;

    if (v97)
    {
      v146 = v88;
      v147 = v89;
      v148 = v94;
      v149 = v93;
      v150 = v90;
      objc_opt_self();
      v98 = swift_dynamicCastObjCClass();
      if (v98)
      {
        v112 = [v98 imageView];
        v115 = v95;
        if (v112)
        {
          v116 = v112;
          [v112 setAdjustsLocalImageForContentSizeCategory_];
        }

        if (TVAppFeature.isEnabled.getter(16, v113, v114))
        {
          v158 = &unk_1F5D5D0A8;
          v159 = &off_1F5D5C758;
          LOBYTE(v156) = 15;
          v117 = sub_1E39C29F0(&v156, 0);
          __swift_destroy_boxed_opaque_existential_1(&v156);
          if (v117)
          {
            objc_opt_self();
            v118 = swift_dynamicCastObjCClass();
            if (v118)
            {
              v119 = v118;
              v120 = *(*v115 + 648);
              v121 = v97;
              v122 = v120();
              if (v122 && (v123 = v122, OUTLINED_FUNCTION_25(), swift_beginAccess(), v124 = *(v123 + 56), , , v124))
              {
                if (sub_1E397D25C())
                {
                  v125 = (*(*v124 + 464))();
                  if (v125)
                  {
                    v126 = v125;
                    v154 = sub_1E32AE9B0(v125);
                    for (i = 0; ; ++i)
                    {
                      if (v154 == i)
                      {

                        goto LABEL_100;
                      }

                      if ((v126 & 0xC000000000000001) != 0)
                      {
                        v128 = MEMORY[0x1E6911E60](i, v126);
                      }

                      else
                      {
                        if (i >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_113;
                        }
                      }

                      if (__OFADD__(i, 1))
                      {
                        __break(1u);
LABEL_113:
                        __break(1u);
                        return;
                      }

                      LOWORD(v180) = *(v128 + 98);
                      v183 = 130;
                      sub_1E3742F1C(v128, v129, v130);
                      sub_1E4206254();
                      sub_1E4206254();
                      if (v156 == v181 && v157 == v182)
                      {
                        break;
                      }

                      v132 = sub_1E42079A4();

                      if (v132)
                      {
                        goto LABEL_97;
                      }
                    }

LABEL_97:

                    type metadata accessor for EpisodeCollectionViewModel();
                    v133 = swift_dynamicCastClass();
                    if (v133)
                    {
                      [v119 setSeasonDownloadDataSourceProvider_];
                    }
                  }
                }

LABEL_100:
              }

              else
              {
              }
            }
          }
        }

        v134 = v97;
        MEMORY[0x1E6910BF0]();
        if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        OUTLINED_FUNCTION_46_2();
        sub_1E4206324();
        sub_1E412BAB0(v146, v147, v91, v150, v149, v148);

        v135 = v160;
        v4 = v143;
        a2 = v144;
        v8 = v141;
        v5 = v142;
        v7 = v140;
        goto LABEL_5;
      }

      sub_1E412BAB0(v88, v89, v91, v90, v93, v94);
    }

    else
    {

      sub_1E412BAB0(v88, v89, v91, v90, v93, v94);
    }

    v9 = v152 + 1;
    v4 = v143;
    a2 = v144;
    v8 = v141;
    v5 = v142;
  }

  if (!sub_1E32AE9B0(v135))
  {
  }
}

id sub_1E412B098(uint64_t a1, void *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v9 = TVAppFeature.isEnabled.getter(10, a2, a3);
  v10 = *a3;
  if (v9)
  {
    v11 = (*(v10 + 2344))();
  }

  else
  {
    v11 = (*(v10 + 2392))();
  }

  v12 = v11;
  v13 = a4;
  if (!a4)
  {
    v14 = objc_allocWithZone(VUIMediaTagsView);
    v15 = OUTLINED_FUNCTION_1_36();
    v13 = [v16 v17];
  }

  v18 = objc_allocWithZone(VUIMediaTagsViewHelper);
  v19 = a4;
  v20 = a2;

  v21 = sub_1E4006AD0(v20, a5);
  if (v13)
  {
    v22 = v13;
    v23 = [v21 tagsViewDictionary];
    v24 = sub_1E4205C64();

    sub_1E3821F04(v24, v22);
  }

  return v13;
}

id sub_1E412B208(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v146 = a4;
  v150 = a5;
  v142 = a3;
  v7 = a1;
  v8 = (*(*a1 + 488))(a1, a2);
  if (a6)
  {
    v9 = a6;
  }

  else
  {
    v9 = sub_1E4205CB4();
  }

  if (!v8)
  {

    goto LABEL_9;
  }

  v11 = sub_1E373E010(92, v8, v10);
  if (!v11)
  {
LABEL_9:
    v12 = 0;
    v157 = 0u;
    v158 = 0u;
    v14 = 1;
LABEL_10:
    sub_1E325F748(&v157, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_11;
  }

  v12 = v11;
  LOBYTE(v160) = 2;
  v13 = *(*v11 + 776);

  v13(&v157, &v160, &unk_1F5D5D6D8, &off_1F5D5C8B8);

  if (!*(&v158 + 1))
  {
    v14 = 0;
    goto LABEL_10;
  }

  swift_dynamicCast();
  v14 = 0;
LABEL_11:
  v15 = sub_1E3BE9884();
  v154 = v7;
  if (v15 == 3 || (sub_1E3BE9944(v15, 1) & 1) == 0)
  {
    goto LABEL_28;
  }

  if (v14)
  {
    goto LABEL_14;
  }

  v18 = *(*v12 + 488);

  v17 = v18(v19);

  if (!v17)
  {
    goto LABEL_21;
  }

  v21 = sub_1E373E010(23, v17, v20);

  if (!v21)
  {
    v17 = 0;
    goto LABEL_21;
  }

  if (*v21 != _TtC8VideosUI13TextViewModel)
  {

LABEL_14:
    v17 = 0;
LABEL_21:
    v25 = 0xE000000000000000;
    goto LABEL_22;
  }

  v22 = OUTLINED_FUNCTION_18();
  v17 = sub_1E3C287F4(0, v22 & 1);

  if (!v17)
  {
    goto LABEL_21;
  }

  v23 = [v17 string];

  v17 = sub_1E4205F14();
  v25 = v24;

LABEL_22:
  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    sub_1E4205F14();
    OUTLINED_FUNCTION_22_104();
    *(&v157 + 1) = v25;
    v35 = OUTLINED_FUNCTION_26_121(v27, v28, v29, v30, v31, v32, v33, v34, v138, v142, v146, v150, v154, v155, v17);
    sub_1E329504C(v35, v36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_9_200(isUniquelyReferenced_nonNull_native, v38, v39, v40, v41, v42, v43, v44, v139, v143, v147, v151);

    v9 = v155;
  }

  else
  {
  }

  v7 = v154;
LABEL_28:
  if (v8)
  {
    v45 = sub_1E373E010(3, v8, v16);
    if (v45)
    {
      if (*v45 == _TtC8VideosUI13TextViewModel && (v47 = OUTLINED_FUNCTION_18(), (v48 = sub_1E3C287F4(0, v47 & 1)) != 0))
      {
        v49 = v48;
        v50 = [v48 string];

        v51 = sub_1E4205F14();
        v53 = v52;

        v54 = HIBYTE(v53) & 0xF;
        if ((v53 & 0x2000000000000000) == 0)
        {
          v54 = v51 & 0xFFFFFFFFFFFFLL;
        }

        if (v54)
        {
          sub_1E4205F14();
          OUTLINED_FUNCTION_22_104();
          *(&v157 + 1) = v53;
          v63 = OUTLINED_FUNCTION_26_121(v55, v56, v57, v58, v59, v60, v61, v62, v138, v142, v146, v150, v154, v155, v51);
          sub_1E329504C(v63, v64);
          v65 = swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_9_200(v65, v66, v67, v68, v69, v70, v71, v72, v140, v144, v148, v152);

          v9 = v155;
        }

        else
        {
        }
      }

      else
      {
      }
    }

    if (sub_1E373E010(34, v8, v46))
    {
      type metadata accessor for ImageViewModel();
      if (swift_dynamicCastClass() && (OUTLINED_FUNCTION_30(), v74 = (*(v73 + 1016))(7), v75))
      {
        v76 = v74;
        v77 = v75;
        sub_1E4205F14();
        OUTLINED_FUNCTION_22_104();
        *(&v157 + 1) = v77;
        v86 = OUTLINED_FUNCTION_26_121(v78, v79, v80, v81, v82, v83, v84, v85, v138, v142, v146, v150, v154, v155, v76);
        sub_1E329504C(v86, v87);
        v88 = swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_9_200(v88, v89, v90, v91, v92, v93, v94, v95, v141, v145, v149, v153);

        v9 = v155;
      }

      else
      {
      }
    }

    v7 = v154;
  }

  v96 = (*v7 + 552);
  v97 = *v96;
  v98 = (*v96)();
  if (!v98)
  {
    v157 = 0u;
    v158 = 0u;
    goto LABEL_48;
  }

  v99 = v98;
  v100 = sub_1E4205F14();
  sub_1E3277E60(v100, v101, v99, &v157);

  if (!*(&v158 + 1))
  {
LABEL_48:
    v102 = v9;
    sub_1E325F748(&v157, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_49;
  }

  v102 = v9;
  if (swift_dynamicCast())
  {
    v104 = *(&v160 + 1);
    v103 = v160;
    goto LABEL_50;
  }

LABEL_49:
  v103 = 0;
  v104 = 0;
LABEL_50:
  OUTLINED_FUNCTION_8();
  v106 = (*(v105 + 1560))();
  if (v104)
  {
    if (sub_1E3A24FDC(v106))
    {
      v107 = sub_1E4205F14();
      v109 = v108;
      *(&v158 + 1) = MEMORY[0x1E69E6158];
      *(&v157 + 1) = v104;
      v116 = OUTLINED_FUNCTION_26_121(v107, v108, v110, v111, v112, v113, v114, v115, v138, v142, v146, v150, v154, v155, v103);
      sub_1E329504C(v116, v117);
      v118 = swift_isUniquelyReferenced_nonNull_native();
      v155 = v102;
      sub_1E32A87C0(&v160, v107, v109, v118);

      v119 = v102;
      goto LABEL_55;
    }
  }

  v119 = v102;
LABEL_55:
  v120 = v154;
  v121 = (v97)(v106);
  if (!v121)
  {
    v160 = 0u;
    v161 = 0u;
    goto LABEL_65;
  }

  *(&v158 + 1) = &unk_1F5D7BE68;
  v159 = &off_1F5D7BC48;
  LOBYTE(v157) = 7;
  v122 = MEMORY[0x1E69E7CA0];
  sub_1E3F9F164(&v157, v121, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(&v157);
  if (!*(&v161 + 1))
  {
LABEL_65:
    sub_1E325F748(&v160, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_66;
  }

  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  OUTLINED_FUNCTION_26_121(v123, v124, v125, v126, v127, v128, v129, v130, v138, v142, v146, v150, v154, v155, v157);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_66;
  }

  v131 = v157;
  *(&v158 + 1) = &qword_1F5D5CE68;
  v159 = &off_1F5D5C708;
  LOWORD(v157) = 61;
  sub_1E3F9F164(&v157, v131, v122 + 8);

  if (!*(&v161 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1(&v157);
    goto LABEL_65;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v157);
    sub_1E384EE08(61);
    *(&v158 + 1) = v123;
    *&v157 = v156;
    v134 = sub_1E3A7CD30(v132, v133, &v157, v120);

    __swift_destroy_boxed_opaque_existential_1(&v157);
    if (v134)
    {
      if (v8)
      {

        v135 = swift_isUniquelyReferenced_nonNull_native();
        *&v157 = v8;
        sub_1E37518B8(v134, 61, v135);
      }
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v157);
  }

LABEL_66:
  sub_1E3280A90(0, &qword_1EE23B228, off_1E8728490);
  v136 = sub_1E4005268(v120, v146, v150, v119, 0);

  return v136;
}

uint64_t sub_1E412BAB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result != 1)
  {
    sub_1E37FAED8(result, a2);
    sub_1E37FAED8(a3, a4);

    return sub_1E37FAED8(a5, a6);
  }

  return result;
}

double sub_1E412BB38()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v3 = swift_weakLoadStrong();
    if (!v3)
    {
LABEL_6:

      return result;
    }

    v4 = v3;
    v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x208))();
    if (v5)
    {
      v6 = v5;
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();

      if (v7)
      {
        sub_1E412A080(v4);

        goto LABEL_6;
      }
    }
  }

  return result;
}

void sub_1E412BC34()
{
  v1 = v0;
  OUTLINED_FUNCTION_5_0(v0 + 176, v360);
  if (*(v0 + 176) == 1)
  {
    v2 = *sub_1E3E5FB0C();
    sub_1E3C2DE50();
    v3 = *sub_1E3E5FB88();
    sub_1E3C2E258();
    v4.n128_u64[0] = 12.0;
    j__OUTLINED_FUNCTION_7_78(v4);
    OUTLINED_FUNCTION_8_207();
    v5.n128_u64[0] = 20.0;
    v370 = j__OUTLINED_FUNCTION_7_78(v5);
    v371 = v6;
    v372 = v7;
    v373 = v8;
    v374 = 0;
    v9.n128_u64[0] = 14.0;
    v365 = j__OUTLINED_FUNCTION_7_78(v9);
    v366 = v10;
    v367 = v11;
    v368 = v12;
    v369 = 0;
    type metadata accessor for UIEdgeInsets();
    v14 = v13;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_10_182();
    v15 = OUTLINED_FUNCTION_9_201();
    v347 = v350;
    v348 = v351;
    v349 = v352;
    v23 = OUTLINED_FUNCTION_0_352(v15, v16, v17, v18, v19, v20, v21, v22, v317, v331, v344);
    sub_1E3C2FCB8(v23, v24, v25, v26, v27, &v347, v14, v28);
    v37 = OUTLINED_FUNCTION_16_165(v29, v30, v31, v32, v33, v34, v35, v36, v318, v332, v344);
    memcpy(v37, v38, 0xE9uLL);
    v39 = OUTLINED_FUNCTION_18();
    v47 = OUTLINED_FUNCTION_12_2(v39, v40, v41, v42, v43, v44, v45, v46, v319, v333, v344);
    sub_1E3C2FDFC(v47, 1, v48, v14);
    v370 = 170.0;
    LOBYTE(v371) = 0;
    v365 = 94.0;
    LOBYTE(v366) = 0;
    v49 = MEMORY[0x1E69E7DE0];
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_12_174();
    v50 = OUTLINED_FUNCTION_11_191();
    *&v347 = v350;
    BYTE8(v347) = BYTE8(v350);
    v58 = OUTLINED_FUNCTION_0_352(v50, v51, v52, v53, v54, v55, v56, v57, v320, v334, 0);
    sub_1E3C2FCB8(v58, v59, v60, v61, v62, &v347, v49, v63);
    v72 = OUTLINED_FUNCTION_16_165(v64, v65, v66, v67, v68, v69, v70, v71, v321, v335, v344);
    memcpy(v72, v73, 0x59uLL);
    v74 = OUTLINED_FUNCTION_18();
    v82 = OUTLINED_FUNCTION_12_2(v74, v75, v76, v77, v78, v79, v80, v81, v322, v336, v344);
    sub_1E3C2FDFC(v82, 6, v83, v49);
    BYTE8(v344) = 0;
    v370 = 20.0;
    LOBYTE(v371) = 0;
    v365 = 12.0;
    LOBYTE(v366) = 0;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_12_174();
    v84 = OUTLINED_FUNCTION_11_191();
    *&v347 = v350;
    BYTE8(v347) = BYTE8(v350);
    v92 = OUTLINED_FUNCTION_0_352(v84, v85, v86, v87, v88, v89, v90, v91, v323, v337, 0);
    sub_1E3C2FCB8(v92, v93, v94, v95, v96, &v347, v49, v97);
    v106 = OUTLINED_FUNCTION_16_165(v98, v99, v100, v101, v102, v103, v104, v105, v324, v338, v344);
    memcpy(v106, v107, 0x59uLL);
    v108 = OUTLINED_FUNCTION_18();
    v116 = OUTLINED_FUNCTION_12_2(v108, v109, v110, v111, v112, v113, v114, v115, v325, v339, v344);
    sub_1E3C2FDFC(v116, 10, v117, v49);
    sub_1E39537A8();
    OUTLINED_FUNCTION_8_207();
    sub_1E39537A8();
    v370 = v118;
    v371 = v119;
    v372 = v120;
    v373 = v121;
    v374 = 0;
    sub_1E39537A8();
    v365 = v122;
    v366 = v123;
    v367 = v124;
    v368 = v125;
    v369 = 0;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_10_182();
    v126 = OUTLINED_FUNCTION_9_201();
    v347 = v350;
    v348 = v351;
    v349 = v352;
    v134 = OUTLINED_FUNCTION_0_352(v126, v127, v128, v129, v130, v131, v132, v133, v326, v340, v344);
    sub_1E3C2FCB8(v134, v135, v136, v137, v138, &v347, v14, v139);
    v148 = OUTLINED_FUNCTION_16_165(v140, v141, v142, v143, v144, v145, v146, v147, v327, v341, v344);
    memcpy(v148, v149, 0xE9uLL);
    v150 = OUTLINED_FUNCTION_18();
    v158 = OUTLINED_FUNCTION_12_2(v150, v151, v152, v153, v154, v155, v156, v157, v328, v342, v344);
    sub_1E3C2FDFC(v158, 17, v159, v14);
  }

  else
  {
    OUTLINED_FUNCTION_36_0();
    sub_1E3C2D0A0();
    OUTLINED_FUNCTION_36_0();
    sub_1E3C2EAE8();
    sub_1E3C2DE50();
    sub_1E3C2E258();
    v357 = 0u;
    v358 = 0u;
    v359 = 1;
    sub_1E3C2D7EC();
    v160 = sub_1E3C6DC70();
    v161 = v160[1];
    v344 = *v160;
    v345 = v161;
    v346 = 0;
    sub_1E3C2CC78();
    sub_1E3C6DC7C();
    sub_1E3C2EAE8();
  }

  OUTLINED_FUNCTION_13_12();
  sub_1E3C2CE80();
  OUTLINED_FUNCTION_13_12();
  sub_1E3C2D200();
  OUTLINED_FUNCTION_5_0(v0 + 176, v362);
  v162 = MEMORY[0x1E69DDCE0];
  if (*(v0 + 176))
  {
    v163 = COERCE_DOUBLE(sub_1E3C2D080());
    if (v164)
    {
      v165 = 0.0;
    }

    else
    {
      v165 = v163;
    }

    sub_1E3C2CC44();
    if (v374)
    {
      v166 = 0.0;
    }

    else
    {
      v166 = v370;
    }

    sub_1E3C2CC44();
    v167 = *&v345;
    if (v346)
    {
      v167 = 0.0;
    }

    v168 = v165 - v166 - v167;
    OUTLINED_FUNCTION_5_0(v0 + 112, v361);
    OUTLINED_FUNCTION_8();
    v170 = *(v169 + 312);

    v171 = OUTLINED_FUNCTION_36_2();
    v170(v171);

    OUTLINED_FUNCTION_8();
    v173 = *(v172 + 208);

    v174 = OUTLINED_FUNCTION_36_2();
    v173(v174);

    v175 = v162[1];
    v357 = *v162;
    v358 = v175;
    v359 = 0;
    OUTLINED_FUNCTION_8();
    v177 = *(v176 + 160);

    v177(&v357);

    OUTLINED_FUNCTION_36();
    v179 = *(v178 + 1744);

    v179(v180);
    OUTLINED_FUNCTION_4_9();
    v181 = OUTLINED_FUNCTION_36_0();
    v182(v181);

    OUTLINED_FUNCTION_36();
    v184 = *(v183 + 1744);

    v184(v185);
    OUTLINED_FUNCTION_4_9();
    v186 = OUTLINED_FUNCTION_36_0();
    v187(v186);

    OUTLINED_FUNCTION_36();
    v189 = v188 + 1744;
    v190 = *(v188 + 1744);

    v190(v191);
    OUTLINED_FUNCTION_4_9();
    (*(*v189 + 440))(0x3FF0000000000000, 0);

    OUTLINED_FUNCTION_36();
    v193 = v192 + 1744;
    v194 = *(v192 + 1744);

    v194(v195);
    OUTLINED_FUNCTION_4_9();
    (*(*v193 + 1712))(1);

    OUTLINED_FUNCTION_36();
    v197 = v196 + 1768;
    v198 = *(v196 + 1768);

    v198(v199);
    OUTLINED_FUNCTION_4_9();
    (*(*v197 + 1816))(v168 * 116.0 / 255.0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_5_0(v0 + 112, v361);

    sub_1E3C6E348(v200);
  }

  OUTLINED_FUNCTION_5_0(v0 + 176, v364);
  if (*(v0 + 176))
  {
    OUTLINED_FUNCTION_5_0(v0 + 104, v363);
    OUTLINED_FUNCTION_36();
    v202 = *(v201 + 1712);

    v202(1);

    v203 = *(v0 + 104);
    OUTLINED_FUNCTION_36();
    v205 = *(v204 + 1808);

    v205(3);

    OUTLINED_FUNCTION_12_13();
    v206 = *sub_1E3E60A14();
    v207 = *(*v203 + 872);
    v208 = v206;
    v207(v206);

    OUTLINED_FUNCTION_12_13();
    v209 = *sub_1E418A500();
    (*(*v203 + 440))(v209, 0);

    v210 = *(v1 + 104);
    OUTLINED_FUNCTION_36();
    v212 = *(v211 + 2000);

    v212(0);

    OUTLINED_FUNCTION_12_13();
    sub_1E39537A8();
    *&v357 = v213;
    *(&v357 + 1) = v214;
    *&v358 = v215;
    *(&v358 + 1) = v216;
    v359 = 0;
    (*(*v210 + 560))(&v357);

    sub_1E3C2D080();
    sub_1E3C2CC44();
    sub_1E3C2CC44();
    OUTLINED_FUNCTION_8();
    v218 = *(v217 + 312);

    v219 = OUTLINED_FUNCTION_36_2();
    v218(v219);

    OUTLINED_FUNCTION_8();
    v221 = *(v220 + 208);

    v222 = OUTLINED_FUNCTION_36_0();
    v221(v222);

    OUTLINED_FUNCTION_12_13();
    v223.n128_u64[0] = 6.0;
    j__OUTLINED_FUNCTION_7_78(v223);
    OUTLINED_FUNCTION_8_207();
    OUTLINED_FUNCTION_8();
    (*(v224 + 184))(&v344);
  }

  else
  {
    OUTLINED_FUNCTION_5_0(v0 + 104, v363);

    v225 = sub_1E418A500();
    sub_1E3C6DFCC(*v225);
  }

  type metadata accessor for StandardLockupCellLayout();
  OUTLINED_FUNCTION_5_0(v1 + 120, v375);

  sub_1E3D8D0C0(v226);

  LOBYTE(v357) = 22;
  LOBYTE(v344) = 27;
  LOBYTE(v370) = 27;
  LOBYTE(v365) = 27;
  LOBYTE(v356[0]) = 14;
  LOBYTE(v355[0]) = 19;
  OUTLINED_FUNCTION_8();
  v228 = *(v227 + 1608);

  OUTLINED_FUNCTION_7_248();
  v228(48, 0);

  v229 = *(v1 + 120);

  *&v357 = *sub_1E3E5FDEC();
  *&v344 = 0;
  v370 = 0.0;
  v230 = v357;
  v231 = *sub_1E3E60364();
  v365 = *&v231;
  v356[0] = 0;
  v355[0] = 0;
  v232 = *(*v229 + 1608);
  sub_1E3755B54();
  v233 = v231;
  OUTLINED_FUNCTION_7_248();
  v232(21, 0);

  v234 = *v162;
  v235 = *(v162 + 1);
  v237 = *(v162 + 2);
  v236 = *(v162 + 3);
  *&v357 = v234;
  *(&v357 + 1) = v235;
  *&v358 = v237;
  *(&v358 + 1) = v236;
  v359 = 0;
  OUTLINED_FUNCTION_8();
  v239 = *(v238 + 160);

  v239(&v357);

  LOBYTE(v344) = 11;
  LOBYTE(v370) = 11;
  LOBYTE(v365) = 11;
  LOBYTE(v356[0]) = 11;
  LOBYTE(v355[0]) = 11;
  v354[0] = 5;
  OUTLINED_FUNCTION_8();
  v241 = *(v240 + 1608);

  v329 = &qword_1F5D54AF8;
  v241(54, 0, &v344, &v370, &v365, v356, v355, v354);

  OUTLINED_FUNCTION_36();
  v243 = *(v242 + 1936);

  v243(2);

  OUTLINED_FUNCTION_5_0(v1 + 176, &v347);
  v244 = v1 + 128;
  if (*(v1 + 176) == 1)
  {
    OUTLINED_FUNCTION_5_0(v244, v376);
    v245 = *(v1 + 128);

    v246 = *sub_1E3E5FD88();
    v247 = *(*v245 + 680);
    v248 = v246;
    v247(v246);

    OUTLINED_FUNCTION_36();
    v250 = *(v249 + 2056);

    v250(2, 0);

    OUTLINED_FUNCTION_36();
    v252 = *(v251 + 2080);

    v252(2, 0);

    OUTLINED_FUNCTION_36();
    v254 = *(v253 + 1984);

    v254(5);

    LOBYTE(v344) = 17;
    LOBYTE(v370) = 15;
    LOBYTE(v365) = 3;

    sub_1E3C2FC98();
    OUTLINED_FUNCTION_20_132();
    v353[0] = v354[0];
    v255 = sub_1E3C3DE00();
    v378 = v350;
    v263 = OUTLINED_FUNCTION_0_352(v255, v256, v257, v258, v259, v260, v261, v262, &qword_1F5D54AF8, v331, v344);
    sub_1E3C2FCB8(v263, v264, v265, v266, v267, &v378, &qword_1F5D549D8, v268);
    OUTLINED_FUNCTION_14_188();
    OUTLINED_FUNCTION_36();
    v277 = OUTLINED_FUNCTION_17_155(v269, v270, v271, v272, v273, v274, v275, v276, v330, v343, v344);
    v278(v277);

    OUTLINED_FUNCTION_36();
    v280 = *(v279 + 256);

    v281 = OUTLINED_FUNCTION_13_12();
    v280(v281);
  }

  else
  {
    OUTLINED_FUNCTION_5_0(v244, v376);

    sub_1E3C6DC94(v282);
  }

  OUTLINED_FUNCTION_5_0(v1 + 176, v353);
  v283 = v1 + 136;
  if (*(v1 + 176) == 1)
  {
    OUTLINED_FUNCTION_5_0(v283, &v350);
    LOBYTE(v344) = 19;
    LOBYTE(v370) = 22;
    LOBYTE(v365) = 14;

    sub_1E3C2FC98();
    OUTLINED_FUNCTION_20_132();
    v378 = v354[0];
    sub_1E3C3DE00();
    v377[0] = v377[1];
    sub_1E3C2FCB8(&v344, v355, &v378, &v370, &v365, v377, &qword_1F5D549D8, &v357);
    OUTLINED_FUNCTION_14_188();
    OUTLINED_FUNCTION_36();
    v292 = OUTLINED_FUNCTION_17_155(v284, v285, v286, v287, v288, v289, v290, v291, v329, v331, v344);
    v293(v292);

    v294 = *(v1 + 136);

    v295 = *sub_1E3E5FDEC();
    v296 = *(*v294 + 680);
    v297 = v295;
    v296(v295);

    OUTLINED_FUNCTION_36();
    v299 = *(v298 + 2056);

    v299(1, 0);

    OUTLINED_FUNCTION_36();
    v301 = *(v300 + 2080);

    v301(1, 0);

    sub_1E3952C88();
    *&v357 = v302;
    *(&v357 + 1) = v303;
    *&v358 = v304;
    *(&v358 + 1) = v305;
    v359 = 0;
    OUTLINED_FUNCTION_8();
    (*(v306 + 160))(&v357);

    OUTLINED_FUNCTION_36();
    v308 = *(v307 + 1984);

    v308(5);

    OUTLINED_FUNCTION_36();
    v310 = *(v309 + 256);

    v311 = OUTLINED_FUNCTION_13_12();
    v310(v311);
  }

  else
  {
    OUTLINED_FUNCTION_5_0(v283, &v350);

    sub_1E3C6DE18();
  }

  OUTLINED_FUNCTION_5_0(v1 + 176, v355);
  if ((*(v1 + 176) & 1) == 0)
  {
    OUTLINED_FUNCTION_5_0(v1 + 168, v354);

    sub_1E3C6E604(v312);
  }

  OUTLINED_FUNCTION_5_0(v1 + 144, &v344);

  sub_1E3C6E74C();

  OUTLINED_FUNCTION_5_0(v1 + 152, &v370);

  sub_1E3C6E74C();

  OUTLINED_FUNCTION_5_0(v1 + 160, &v365);
  OUTLINED_FUNCTION_5_0(v1 + 176, v356);
  v313 = *(v1 + 176);

  sub_1E375DA98(v314, (v313 & 1) == 0);

  *&v357 = v234;
  *(&v357 + 1) = v235;
  *&v358 = v237;
  *(&v358 + 1) = v236;
  v359 = 0;
  OUTLINED_FUNCTION_8();
  v316 = *(v315 + 160);

  v316(&v357);
}

double sub_1E412CFFC(char a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_14_0(v3 + 176, a2);
  v5 = *(v3 + 176);
  *(v3 + 176) = a1 & 1;
  OUTLINED_FUNCTION_5_0(v3 + 176, v15);
  if (v5 != *(v3 + 176))
  {
    OUTLINED_FUNCTION_5_0(v3 + 104, v14);
    OUTLINED_FUNCTION_36();
    v8 = *(v7 + 432);

    v8(v9);
    LOBYTE(v8) = v10;

    sub_1E412BC34();
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_8();
      v12 = *(v11 + 440);

      v13 = OUTLINED_FUNCTION_36_2();
      v12(v13);
    }
  }

  return result;
}

uint64_t sub_1E412D104(uint64_t a1)
{
  v1 = a1;
  swift_allocObject();
  return sub_1E412D140(v1);
}

uint64_t sub_1E412D140(unsigned __int8 a1)
{
  v3 = a1;
  type metadata accessor for ImageLayout();
  *(v1 + 104) = sub_1E3BD61D8();
  type metadata accessor for MonogramLayout();
  *(v1 + 112) = sub_1E4097BF8(0);
  type metadata accessor for TextLayout();
  *(v1 + 120) = sub_1E383BCC0();
  *(v1 + 128) = sub_1E383BCC0();
  *(v1 + 136) = sub_1E383BCC0();
  type metadata accessor for TextBadgeLayout(0);
  v4 = OUTLINED_FUNCTION_51_1();
  *(v1 + 144) = sub_1E382F55C(3, 1, v4 & 1);
  v5 = OUTLINED_FUNCTION_51_1();
  *(v1 + 152) = sub_1E382F55C(4, 1, v5 & 1);
  *(v1 + 160) = sub_1E3BD61D8();
  type metadata accessor for ButtonLayout();
  *(v1 + 168) = sub_1E3BBB724();
  *(v1 + 177) = a1;
  *(v1 + 176) = (v3 == 2) | a1 & 1;
  v6 = sub_1E3C2F9A0();

  sub_1E412BC34();
  OUTLINED_FUNCTION_5_0(v6 + 104, v25);

  sub_1E3C37CBC(v7, 39);

  OUTLINED_FUNCTION_5_0(v6 + 112, v24);

  sub_1E3C37CBC(v8, 41);

  OUTLINED_FUNCTION_5_0(v6 + 120, v23);

  sub_1E3C37EC8(v9, &unk_1F5D99AB8);

  OUTLINED_FUNCTION_5_0(v6 + 128, v22);

  sub_1E3C37CBC(v10, 23);

  OUTLINED_FUNCTION_5_0(v6 + 136, v21);

  sub_1E3C37CBC(v11, 15);

  OUTLINED_FUNCTION_5_0(v6 + 168, v20);

  sub_1E3C37CBC(v12, 67);

  OUTLINED_FUNCTION_5_0(v6 + 144, v19);

  sub_1E3C37CBC(v13, 53);

  OUTLINED_FUNCTION_5_0(v6 + 152, v18);

  sub_1E3C37CBC(v14, 54);

  OUTLINED_FUNCTION_15_0(v6 + 160, v15);

  sub_1E3C37CBC(v16, 31);

  return v6;
}

double sub_1E412D408(uint64_t a1, void *a2)
{
  sub_1E3C35CF4(a1, a2);
  v3 = sub_1E412D444(a1);

  return sub_1E412CFFC(v3, v4);
}

uint64_t sub_1E412D444(uint64_t a1)
{
  v2 = *(v1 + 177);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_1E3A24FDC(a1) ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_1E412D470()
{
  v0 = sub_1E3DF11E8();

  return MEMORY[0x1EEE6BDC0](v0, 178, 7);
}

BOOL sub_1E412D4A0(uint64_t a1)
{
  v2 = sub_1E412D444(a1);
  OUTLINED_FUNCTION_15_0(v1 + 176, v3);
  return *(v1 + 176) != v2;
}

unint64_t sub_1E412D4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF407E8;
  if (!qword_1ECF407E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF407E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchTopResultLockupLayoutType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E412D660()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_mediaLibrary) uniqueIdentifier];
  if (v1)
  {
    v2 = v1;
    sub_1E4205F14();
  }

  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1E412D744(void *a1)
{
  OUTLINED_FUNCTION_5_0(v1 + *a1, v3);

  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1E412D7E4()
{
  v1 = OBJC_IVAR____TtC8VideosUI14LibLocalSource_menuItems;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_menuItems, v11);
  v2 = *(v0 + v1);
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1A8);

  v6 = v4(v5);
  sub_1E37D466C(v2, v6);
  v8 = v7;

  OUTLINED_FUNCTION_26_3();
  return (*((*v3 & v9) + 0x1B0))(v8);
}

uint64_t sub_1E412D8F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI14LibLocalSource_menuItems;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_menuItems, v5);
  *(v1 + v3) = a1;

  return sub_1E412D7E4();
}

uint64_t sub_1E412D944(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

uint64_t sub_1E412D994(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1E412D7E4();
  }

  return result;
}

uint64_t sub_1E412D9C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C78, &unk_1E42BD110);
  OUTLINED_FUNCTION_21_1();
  sub_1E32752B0(v0, v1, v2, v3);
  return sub_1E42006B4();
}

uint64_t sub_1E412DA64(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI14LibLocalSource_phoneRecentlyPurchasedMenuItems;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_phoneRecentlyPurchasedMenuItems, v5);
  *(v1 + v3) = a1;
}

id sub_1E412DB00()
{
  v0 = [objc_opt_self() defaultManager];
  v1 = [v0 deviceMediaLibrary];

  v2 = [v1 didFailUpdateCloudLibrary];
  return v2;
}

void sub_1E412DBA4()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v2 = objc_opt_self();
  v3 = [v2 sharedInstance];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = OUTLINED_FUNCTION_64_33();
  v7 = v6;

  if (!v7)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = (v0 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_displayName);
  *v8 = v5;
  v8[1] = v7;
  v9 = [v2 sharedInstance];
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = v9;
  v11 = OUTLINED_FUNCTION_64_33();
  v13 = v12;

  if (v13)
  {
    v14 = (v0 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_sourceTypeName);
    *v14 = v11;
    v14[1] = v13;
    v15 = MEMORY[0x1E69E7CC0];
    *(v0 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_menuItems) = MEMORY[0x1E69E7CC0];
    *(v0 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_phoneRecentlyPurchasedMenuItems) = v15;
    v16 = OBJC_IVAR____TtC8VideosUI14LibLocalSource_mediaLibrary;
    *(v0 + v16) = [objc_opt_self() defaultMediaLibrary];
    v17 = OBJC_IVAR____TtC8VideosUI14LibLocalSource_sidebandMediaLibrary;
    v18 = [objc_opt_self() defaultManager];
    v19 = [v18 sidebandMediaLibrary];

    *(v0 + v17) = v19;
    v20 = (v0 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_sidebandLibraryId);
    sub_1E41FE614();
    v21 = sub_1E41FE5E4();
    v23 = v22;
    v24 = OUTLINED_FUNCTION_57();
    v25(v24);
    *v20 = v21;
    v20[1] = v23;
    v26 = OBJC_IVAR____TtC8VideosUI14LibLocalSource_menuItemUpdateSubject;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C78, &unk_1E42BD110);
    swift_allocObject();
    *(v0 + v26) = sub_1E4200544();
    *(v0 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_cancellables) = v15;
    *(v0 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_mpMenuItems) = v15;
    *(v0 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_sidebandDownloadedMenu) = 0;
    *(v0 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_combinedDownloadedMenu) = 0;
    v27 = *(v0 + v16);
    sub_1E3AD25B8();
    OUTLINED_FUNCTION_25_2();
    return;
  }

LABEL_9:
  __break(1u);
}

double sub_1E412DE14()
{

  return result;
}

id sub_1E412DEF0()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for LibLocalSource();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1E412E06C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v8 = sub_1E41A3110();
  (*(v6 + 16))(v0, v8, v4);

  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();

  if (os_log_type_enabled(v9, v10))
  {
    v28 = v4;
    v11 = OUTLINED_FUNCTION_6_21();
    v12 = OUTLINED_FUNCTION_100();
    v29[0] = v12;
    *v11 = 136315138;
    v13 = type metadata accessor for LibMenuItem(0);
    v14 = MEMORY[0x1E6910C30](v3, v13);
    v16 = sub_1E3270FC8(v14, v15, v29);

    *(v11 + 4) = v16;
    OUTLINED_FUNCTION_60_3();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_55();

    (*(v6 + 8))(v0, v28);
  }

  else
  {

    (*(v6 + 8))(v0, v4);
  }

  v22 = OBJC_IVAR____TtC8VideosUI14LibLocalSource_mpMenuItems;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_mpMenuItems, v29);
  *(v1 + v22) = v3;

  v23 = *(v1 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_sidebandDownloadedMenu);

  sub_1E412E33C(v24, v23);

  sub_1E412EA1C();
  OUTLINED_FUNCTION_38();

  v25 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x190))(v1);
  v26 = *((*v25 & *v1) + 0x188);

  v26(v27);
  sub_1E4200524();

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E412E33C(unint64_t a1, uint64_t a2)
{
  v3 = sub_1E32AE9B0(a1);
  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = MEMORY[0x1E6911E60](v4, a1);
      v69 = v7;
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4 >= v6)
      {
        goto LABEL_79;
      }

      v69 = *(a1 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      OUTLINED_FUNCTION_35(v6);
      sub_1E42062F4();
      goto LABEL_34;
    }

    LOBYTE(v71) = *(v69 + 32);
    sub_1E37D4BA4(v7, v8, v9);
    OUTLINED_FUNCTION_142();
    sub_1E4206254();
    OUTLINED_FUNCTION_142();
    sub_1E4206254();
    if (v74 == v72 && v75 == v73)
    {

      goto LABEL_17;
    }

    v11 = sub_1E42079A4();

    if (v11)
    {
      goto LABEL_17;
    }

    ++v4;
  }

  if (!a2)
  {
    *(v68 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_combinedDownloadedMenu) = 0;
    goto LABEL_20;
  }

LABEL_17:
  v12 = OBJC_IVAR____TtC8VideosUI14LibLocalSource_combinedDownloadedMenu;
  if (*(v68 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_combinedDownloadedMenu))
  {
    goto LABEL_21;
  }

  type metadata accessor for LibMenuItem(0);
  OUTLINED_FUNCTION_21();
  (*(v13 + 336))();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_7();
  *(v68 + v12) = sub_1E3A8A680(v14, v15, v16, v17, v18, v19);
LABEL_20:

LABEL_21:
  v20 = 0;
  v74 = MEMORY[0x1E69E7CC0];
  while (v3 != v20)
  {
    if (v5)
    {
      v22 = MEMORY[0x1E6911E60](v20, a1);
      v21 = v22;
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20 >= v6)
      {
        goto LABEL_73;
      }

      v21 = *(a1 + 8 * v20 + 32);
    }

    if (__OFADD__(v20, 1))
    {
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
      goto LABEL_78;
    }

    LOBYTE(v72) = *(v21 + 32);
    LOBYTE(v71) = 10;
    sub_1E37DA4B8(v22, v23, v24);
    if (sub_1E4205E84())
    {
    }

    else
    {
      sub_1E4207544();
      sub_1E4207584();
      OUTLINED_FUNCTION_142();
      sub_1E4207594();
      sub_1E4207554();
    }

    ++v20;
  }

  v25 = sub_1E413430C(v74);
  v71 = v25;
  v26 = *(v68 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_combinedDownloadedMenu);
  if (!v26)
  {
    v29 = v25;
    goto LABEL_36;
  }

  v27 = *(*v26 + 264);

  v28 = v27(1);
  MEMORY[0x1E6910BF0](v28);
  v6 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v6 >> 1)
  {
    goto LABEL_80;
  }

LABEL_34:
  sub_1E4206324();
  v29 = v71;
LABEL_36:
  v30 = sub_1E32AE9B0(v29);
  v31 = 0;
  v32 = MEMORY[0x1E69E7CC8];
  v67 = v29 & 0xFFFFFFFFFFFFFF8;
  while (v30 != v31)
  {
    if ((v29 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x1E6911E60](v31, v29);
    }

    else
    {
      v6 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31 >= v6)
      {
        goto LABEL_75;
      }

      v33 = *(v29 + 8 * v31 + 32);
    }

    if (__OFADD__(v31, 1))
    {
      goto LABEL_74;
    }

    v34 = *(v33 + 32);

    swift_isUniquelyReferenced_nonNull_native();
    v74 = v32;
    v37 = sub_1E3B8A658(v34, v35, v36);
    v6 = v32[2];
    if (__OFADD__(v6, (v38 & 1) == 0))
    {
      goto LABEL_76;
    }

    v39 = v37;
    v40 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF341C0, &qword_1E42BF0C8);
    if (sub_1E4207644())
    {
      v43 = sub_1E3B8A658(v34, v41, v42);
      if ((v40 & 1) != (v44 & 1))
      {
        result = sub_1E4207A74();
        __break(1u);
        return result;
      }

      v39 = v43;
    }

    if (v40)
    {
      *(v32[7] + 8 * v39) = v33;
    }

    else
    {
      v32[(v39 >> 6) + 8] |= 1 << v39;
      *(v32[6] + v39) = v34;
      *(v32[7] + 8 * v39) = v33;

      v45 = v32[2];
      v46 = __OFADD__(v45, 1);
      v6 = v45 + 1;
      if (v46)
      {
        goto LABEL_77;
      }

      v32[2] = v6;
    }

    ++v31;
  }

  v70 = MEMORY[0x1E69E7CC0];
  v47 = sub_1E3A8CC10();
  v48 = *(v47 + 2);
  if (v48)
  {
    v49 = objc_opt_self();
    v50 = (v47 + 32);
    v51 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v53 = *v50++;
      v52 = v53;
      v54 = [v49 isRemoteServerConnected];
      if (v32[2])
      {
        v57 = v54;
        v58 = sub_1E3B8A658(v52, v55, v56);
        if (v59)
        {
          if (v57)
          {

LABEL_65:

            MEMORY[0x1E6910BF0](v63);
            v64 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18);
            if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v64 >> 1)
            {
              OUTLINED_FUNCTION_35(v64);
              sub_1E42062F4();
            }

            sub_1E4206324();

            v51 = v70;
            goto LABEL_68;
          }

          sub_1E37D4BA4(v58, v59, v60);
          OUTLINED_FUNCTION_61_32();

          OUTLINED_FUNCTION_32_12();
          sub_1E4206254();
          OUTLINED_FUNCTION_32_12();
          sub_1E4206254();
          if (v74 == v72 && v75 == v73)
          {

            goto LABEL_65;
          }

          v62 = sub_1E42079A4();

          if (v62)
          {
            goto LABEL_65;
          }
        }
      }

LABEL_68:
      if (!--v48)
      {

        goto LABEL_71;
      }
    }
  }

  v51 = MEMORY[0x1E69E7CC0];
LABEL_71:

  return v51;
}

void sub_1E412EA1C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  if (![objc_opt_self() isRemoteServerConnected] || (v12 = objc_opt_self(), (objc_msgSend(v12, sel_isLibraryOnlyCountry) & 1) != 0))
  {

    goto LABEL_68;
  }

  v72 = v11;
  v73 = v5;
  v71 = v7;
  v70 = v2;
  if ([v12 userHasActiveAccount])
  {
  }

  else
  {
    v13 = sub_1E32AE9B0(v4);
    v14 = 0;
    v11 = v4 & 0xFFFFFFFFFFFFFF8;
    v15 = &type metadata for LibMenuType;
    while (1)
    {
      if (v13 == v14)
      {
        v4 = MEMORY[0x1E69E7CC0];
        goto LABEL_22;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1E6911E60](v14, v4);
        v17 = v18;
      }

      else
      {
        v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14 >= v16)
        {
          goto LABEL_72;
        }

        v17 = *(v4 + 8 * v14 + 32);
      }

      if (__OFADD__(v14, 1))
      {
        goto LABEL_71;
      }

      LOBYTE(v76) = *(v17 + 32);
      v81 = 10;
      v12 = sub_1E37D4BA4(v18, v19, v20);
      OUTLINED_FUNCTION_32_12();
      sub_1E4206254();
      OUTLINED_FUNCTION_32_12();
      sub_1E4206254();
      v0 = v78;
      v21 = v79 == v77 && v80 == v78;
      if (v21)
      {
        break;
      }

      OUTLINED_FUNCTION_97_0(v79, v80, v77);
      OUTLINED_FUNCTION_65_39();

      if (v12)
      {
        goto LABEL_21;
      }

      ++v14;
    }

LABEL_21:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
    OUTLINED_FUNCTION_5_10();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1E4298880;
    *(v4 + 32) = v17;
  }

LABEL_22:
  v76 = MEMORY[0x1E69E7CC0];
  v13 = sub_1E32AE9B0(v4);
  v14 = 0;
  v74 = v4 & 0xFFFFFFFFFFFFFF8;
  v75 = v4 & 0xC000000000000001;
  v15 = &type metadata for LibMenuType;
  while (v13 != v14)
  {
    if (v75)
    {
      v11 = v4;
      v23 = MEMORY[0x1E6911E60](v14, v4);
      v22 = v23;
    }

    else
    {
      v16 = *(v74 + 16);
      if (v14 >= v16)
      {
        goto LABEL_70;
      }

      v11 = v4;
      v22 = *(v4 + 8 * v14 + 32);
    }

    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v26 = *(v22 + 32);
    v81 = v26;
    sub_1E37D4BA4(v23, v24, v25);
    OUTLINED_FUNCTION_24_117();
    OUTLINED_FUNCTION_23_112();
    v27 = OUTLINED_FUNCTION_29_106();
    if (v21 && v12 == v0)
    {
LABEL_44:

      goto LABEL_45;
    }

    v30 = OUTLINED_FUNCTION_97_0(v27, v12, v28);

    if ((v30 & 1) == 0)
    {
      v81 = v26;
      OUTLINED_FUNCTION_24_117();
      OUTLINED_FUNCTION_23_112();
      v31 = OUTLINED_FUNCTION_29_106();
      if (v21 && v12 == v0)
      {
        goto LABEL_44;
      }

      v34 = OUTLINED_FUNCTION_97_0(v31, v12, v32);

      if ((v34 & 1) == 0)
      {
        v81 = v26;
        OUTLINED_FUNCTION_24_117();
        OUTLINED_FUNCTION_23_112();
        v35 = OUTLINED_FUNCTION_29_106();
        if (v21 && v12 == v0)
        {
          goto LABEL_44;
        }

        v38 = OUTLINED_FUNCTION_97_0(v35, v12, v36);

        if ((v38 & 1) == 0)
        {
          v0 = &v76;
          sub_1E4207544();
          v12 = *(v76 + 16);
          sub_1E4207584();
          sub_1E4207594();
          sub_1E4207554();
          goto LABEL_46;
        }
      }
    }

LABEL_45:

LABEL_46:
    ++v14;
    v4 = v11;
  }

  v39 = v76;
  v40 = *(**sub_1E3B7B1C8() + 696);

  v42 = v40(v41);

  v43 = *(v42 + 16);

  v79 = v4;
  v13 = type metadata accessor for LibMenuItem(0);
  OUTLINED_FUNCTION_26_3();
  (*((*MEMORY[0x1E69E7D40] & v44) + 0x150))();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_21_7();
  v51 = sub_1E3A8A680(v45, v46, v47, v48, v49, v50);
  v52 = objc_opt_self();
  v53 = 0;
  if ([v52 isPad])
  {
    type metadata accessor for LayoutGrid();
    v54 = sub_1E3A256EC();
    v53 = sub_1E3A24FDC(v54) | v70;
  }

  v11 = v73;
  v15 = v71;
  if ([v52 isTV] & 1) != 0 || (objc_msgSend(v52, sel_isVision) & 1) != 0 || ((objc_msgSend(v52, sel_isPhone) | v53))
  {
    sub_1E32AE9B0(v39);
    OUTLINED_FUNCTION_61_32();

    if (v53)
    {
      v55 = 0;
      v14 = v72;
      goto LABEL_65;
    }

    v14 = v72;
    if (!sub_1E32AE9B0(v4) && v43 <= 1)
    {
      goto LABEL_57;
    }
  }

  else
  {
    sub_1E32AE9B0(v39);
    OUTLINED_FUNCTION_61_32();

    v14 = v72;
    if (v53)
    {
LABEL_57:
      v55 = 0;
      goto LABEL_65;
    }
  }

  if (!sub_1E32AE9B0(v4))
  {

    MEMORY[0x1E6910BF0](v58);
    v16 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) < v16 >> 1)
    {
LABEL_64:
      OUTLINED_FUNCTION_46_2();
      sub_1E4206324();
      v55 = 1;
      goto LABEL_65;
    }

LABEL_75:
    OUTLINED_FUNCTION_35(v16);
    sub_1E42062F4();
    goto LABEL_64;
  }

  sub_1E37EFABC(0, v4);
  if (sub_1E32AE9B0(v4) < 0)
  {
    goto LABEL_73;
  }

  v56 = sub_1E32AE9B0(v4);
  v57 = v56 + 1;
  if (__OFADD__(v56, 1))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v55 = 1;
  sub_1E3797CDC(v57, 1);
  sub_1E3AD8DE4(0, 0, 1, v51);
LABEL_65:
  v59 = sub_1E41A3110();
  (v15[1].Kind)(v14, v59, v11);
  v60 = sub_1E41FFC94();
  v61 = sub_1E4206814();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = v14;
    v63 = swift_slowAlloc();
    v64 = OUTLINED_FUNCTION_100();
    v77 = v64;
    *v63 = 67109378;
    *(v63 + 4) = v55;
    *(v63 + 8) = 2080;

    v66 = MEMORY[0x1E6910C30](v65, v13);
    v68 = v67;

    v69 = sub_1E3270FC8(v66, v68, &v77);

    *(v63 + 10) = v69;
    _os_log_impl(&dword_1E323F000, v60, v61, "LibLocalSource:: shouldInsertMenuItem %{BOOL}d, new menu items %s", v63, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (v15->Description)(v62, v73);
  }

  else
  {

    (v15->Description)(v14, v11);
  }

LABEL_68:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E412F1BC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  sub_1E41A3110();
  v4 = OUTLINED_FUNCTION_35_83();
  v5(v4);
  v6 = sub_1E41FFC94();
  v7 = sub_1E4206814();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    v8[1] = v2 & 1;
    OUTLINED_FUNCTION_60_3();
    _os_log_impl(v9, v10, v11, v12, v13, 8u);
    OUTLINED_FUNCTION_55();
  }

  v14 = OUTLINED_FUNCTION_57();
  v15(v14);
  v16 = OBJC_IVAR____TtC8VideosUI14LibLocalSource_mpMenuItems;
  OUTLINED_FUNCTION_73(v0 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_mpMenuItems);
  v62 = v16;
  v63 = v0;
  v17 = *(v0 + v16);
  v18 = sub_1E32AE9B0(v17);

  for (i = 0; ; ++i)
  {
    if (v18 == i)
    {

      if (v2)
      {
        v26 = v0;
        v27 = [*(v0 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_mediaLibrary) uniqueIdentifier];
        if (!v27)
        {
          goto LABEL_99;
        }

        v28 = v27;
        type metadata accessor for LibMenuItem(0);
        OUTLINED_FUNCTION_11_5();
        sub_1E4205F14();

        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_21_7();
        sub_1E3A8A680(v29, v30, v31, v32, v33, v34);
        v35 = OUTLINED_FUNCTION_11_3(v63 + v16, &v66);
        MEMORY[0x1E6910BF0](v35);
        sub_1E38C5A18(*((*(v63 + v16) & 0xFFFFFFFFFFFFFF8) + 0x10));
        sub_1E4206324();
        swift_endAccess();
        goto LABEL_43;
      }

      v26 = v0;
      goto LABEL_23;
    }

    if ((v17 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x1E6911E60](i, v17);
      v20 = v21;
    }

    else
    {
      if (i >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_84;
      }

      v20 = *(v17 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_83;
    }

    LOBYTE(v64) = *(v20 + 32);
    v70 = 10;
    sub_1E37D4BA4(v21, v22, v23);
    OUTLINED_FUNCTION_39_9();
    sub_1E4206254();
    OUTLINED_FUNCTION_33_94();
    OUTLINED_FUNCTION_39_9();
    sub_1E4206254();
    if (v66 == v68 && v67 == v69)
    {
      break;
    }

    v25 = OUTLINED_FUNCTION_97_0(v66, v67, v68);

    if (v25)
    {
      goto LABEL_20;
    }
  }

LABEL_20:

  v26 = v0;
  if (v2)
  {
LABEL_43:
    v45 = *(v26 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_sidebandDownloadedMenu);

    sub_1E412E33C(v46, v45);

    sub_1E412EA1C();
    v48 = v47;

    v49 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v26) + 0x190))(v48);
    v50 = *((*v49 & *v26) + 0x188);

    v66 = v50(v51);
    sub_1E4200524();

    OUTLINED_FUNCTION_25_2();
    return;
  }

LABEL_23:
  OUTLINED_FUNCTION_11_3(v26 + v16, &v66);
  v36 = *(v26 + v16);
  v37 = sub_1E32AE9B0(v36);
  v38 = 0;
  while (1)
  {
    if (v37 == v38)
    {
      v38 = sub_1E32AE9B0(v36);
      goto LABEL_41;
    }

    if ((v36 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v38, v36);
    }

    else
    {
      if (v38 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_85;
      }
    }

    OUTLINED_FUNCTION_51_54();
    sub_1E37D4BA4(v39, v40, v41);
    OUTLINED_FUNCTION_33_94();
    OUTLINED_FUNCTION_46_2();
    sub_1E4206254();
    OUTLINED_FUNCTION_46_2();
    sub_1E4206254();
    if (v68 == v64 && v69 == v65)
    {
      break;
    }

    OUTLINED_FUNCTION_97_0(v68, v69, v64);
    OUTLINED_FUNCTION_65_39();

    if (&type metadata for LibMenuType)
    {
      goto LABEL_39;
    }

    v43 = __OFADD__(v38++, 1);
    if (v43)
    {
      goto LABEL_86;
    }
  }

LABEL_39:
  if (__OFADD__(v38, 1))
  {
    goto LABEL_95;
  }

  if (v38 + 1 == sub_1E32AE9B0(v36))
  {
LABEL_41:
    v44 = sub_1E32AE9B0(v36);
    if (v44 < v38)
    {
      goto LABEL_94;
    }

    v26 = v63;
    sub_1E4134F2C(v38, v44);
    swift_endAccess();
    goto LABEL_43;
  }

  v52 = v38 + 5;
  while (1)
  {
    v53 = v52 - 4;
    if ((v36 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v52 - 4, v36);
    }

    else
    {
      if ((v53 & 0x8000000000000000) != 0)
      {
        goto LABEL_87;
      }

      if (v53 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_88;
      }
    }

    OUTLINED_FUNCTION_51_54();
    OUTLINED_FUNCTION_33_94();
    OUTLINED_FUNCTION_46_2();
    sub_1E4206254();
    OUTLINED_FUNCTION_46_2();
    sub_1E4206254();
    if (v68 == v64 && v69 == v65)
    {

      goto LABEL_74;
    }

    OUTLINED_FUNCTION_97_0(v68, v69, v64);
    OUTLINED_FUNCTION_65_39();

    if ((&type metadata for LibMenuType & 1) == 0)
    {
      break;
    }

LABEL_74:
    v60 = v52 - 3;
    if (__OFADD__(v53, 1))
    {
      goto LABEL_89;
    }

    if (v36 >> 62)
    {
      v61 = sub_1E4207384();
    }

    else
    {
      v61 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v52;
    if (v60 == v61)
    {
      goto LABEL_41;
    }
  }

  if (v53 == v38)
  {
    goto LABEL_73;
  }

  if ((v36 & 0xC000000000000001) != 0)
  {
    v55 = MEMORY[0x1E6911E60](v38, v36);
    v56 = MEMORY[0x1E6911E60](v52 - 4, v36);
  }

  else
  {
    if ((v38 & 0x8000000000000000) != 0)
    {
      goto LABEL_96;
    }

    v57 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v38 >= v57)
    {
      goto LABEL_97;
    }

    if (v53 >= v57)
    {
      goto LABEL_98;
    }

    v55 = *(v36 + 8 * v38 + 32);
    v56 = *(v36 + 8 * v52);
  }

  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *(v63 + v62) = v36;
  if (!isUniquelyReferenced_nonNull_bridgeObject || (v36 & 0x8000000000000000) != 0 || (v36 & 0x4000000000000000) != 0)
  {
    v36 = sub_1E37EFA58(v36);
    *(v63 + v62) = v36;
  }

  if ((v38 & 0x8000000000000000) != 0)
  {
    goto LABEL_91;
  }

  v59 = v36 & 0xFFFFFFFFFFFFFF8;
  if (v38 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_92;
  }

  *((v36 & 0xFFFFFFFFFFFFFF8) + 8 * v38 + 0x20) = v56;

  *(v63 + v62) = v36;
  if ((v36 & 0x8000000000000000) == 0 && (v36 & 0x4000000000000000) == 0)
  {
    if ((v53 & 0x8000000000000000) != 0)
    {
      goto LABEL_82;
    }

LABEL_71:
    if (v53 >= *(v59 + 16))
    {
      goto LABEL_93;
    }

    *(v59 + 8 * v52) = v55;

    *(v63 + v62) = v36;
LABEL_73:
    v43 = __OFADD__(v38++, 1);
    if (v43)
    {
      goto LABEL_90;
    }

    goto LABEL_74;
  }

  v36 = sub_1E37EFA58(v36);
  *(v63 + v62) = v36;
  v59 = v36 & 0xFFFFFFFFFFFFFF8;
  if ((v53 & 0x8000000000000000) == 0)
  {
    goto LABEL_71;
  }

LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
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
}

void sub_1E412F9B0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  sub_1E41A3110();
  v4 = OUTLINED_FUNCTION_35_83();
  v5(v4);
  v6 = sub_1E41FFC94();
  v7 = sub_1E4206814();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_6_21();
    *v8 = 134217984;
    *(v8 + 4) = v2;
    OUTLINED_FUNCTION_60_3();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    OUTLINED_FUNCTION_55();
  }

  v14 = OUTLINED_FUNCTION_57();
  v16 = v15(v14);
  v37 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x188);
  v17 = v37(v16);
  v18 = sub_1E32AE9B0(v17);
  for (i = 0; ; ++i)
  {
    if (v18 == i)
    {

      goto LABEL_33;
    }

    if ((v17 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x1E6911E60](i, v17);
      v20 = v21;
    }

    else
    {
      if (i >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v20 = *(v17 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1E37D4BA4(v21, v22, v23);
    OUTLINED_FUNCTION_39_9();
    sub_1E4206254();
    OUTLINED_FUNCTION_39_9();
    sub_1E4206254();
    if (v40 == v38 && v41 == v39)
    {

LABEL_18:

      (*(*v20 + 232))(v2);
      v26 = (*(*v20 + 264))(1);
      if (!v2)
      {
        v27 = v37(v26);
        v28 = sub_1E32AE9B0(v27);
        for (j = 0; v28 != j; ++j)
        {
          if ((v27 & 0xC000000000000001) != 0)
          {
            v30 = MEMORY[0x1E6911E60](j, v27);
          }

          else
          {
            if (j >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_37;
            }
          }

          if (__OFADD__(j, 1))
          {
            goto LABEL_36;
          }

          sub_1E37DA4B8(v30, v31, v32);
          if (OUTLINED_FUNCTION_49_65() & 1) != 0 || (OUTLINED_FUNCTION_49_65())
          {
          }

          else
          {
            sub_1E4207544();
            sub_1E4207584();
            sub_1E4207594();
            sub_1E4207554();
          }
        }

        sub_1E412EA1C();
        v34 = v33;

        OUTLINED_FUNCTION_26_3();
        (*((*MEMORY[0x1E69E7D40] & v35) + 0x190))(v34);
      }

      v37(v36);
      sub_1E4200524();

LABEL_33:
      OUTLINED_FUNCTION_25_2();
      return;
    }

    v25 = OUTLINED_FUNCTION_97_0(v40, v41, v38);

    if (v25)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

double sub_1E412FE64(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_10();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  OUTLINED_FUNCTION_21();
  v7 = *(v6 + 192);
  v8 = v2;
  OUTLINED_FUNCTION_50();

  v7(sub_1E413643C, v5);

  return result;
}

void sub_1E412FF1C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  v25 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v11 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_10_9();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = v4;
  v13[4] = v2;
  v13[5] = v6;
  OUTLINED_FUNCTION_2_12(v13);
  OUTLINED_FUNCTION_2_62(COERCE_DOUBLE(1107296256));
  v26[2] = v14;
  v26[3] = &block_descriptor_46_2;
  v15 = _Block_copy(v26);

  sub_1E4203FE4();
  v26[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_5_253();
  sub_1E41366E8(v16, 255, v17, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  OUTLINED_FUNCTION_47();
  v21 = sub_1E32752B0(v18, v19, &qword_1E429B000, v20);
  OUTLINED_FUNCTION_19_133(v21);
  v22 = OUTLINED_FUNCTION_62_0();
  MEMORY[0x1E6911380](v22);
  _Block_release(v15);

  v23 = OUTLINED_FUNCTION_11_192();
  v24(v23);
  (*(v9 + 8))(v0, v25);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4130188()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v44 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_73(v5 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v42 = v3;
    v17 = OBJC_IVAR____TtC8VideosUI14LibLocalSource_mpMenuItems;
    OUTLINED_FUNCTION_3_0(Strong + OBJC_IVAR____TtC8VideosUI14LibLocalSource_mpMenuItems, &v46);
    *(v16 + v17) = v1;

    v18 = sub_1E4206BA4();
    v43 = v11;
    v19 = v7;
    v20 = VUISignpostLogObject(v18);
    sub_1E41FFBE4();
    OUTLINED_FUNCTION_66_37(v18, &dword_1E323F000, v20, "LibLocalSource.fetchSidebandDownloadedMenu", 42);

    v21 = *(v13 + 8);
    v22 = OUTLINED_FUNCTION_123_0();
    v21(v22);
    v23 = sub_1E41305EC();
    v24 = OBJC_IVAR____TtC8VideosUI14LibLocalSource_sidebandDownloadedMenu;
    *(v16 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_sidebandDownloadedMenu) = v23;

    v25 = sub_1E4206B94();
    v26 = VUISignpostLogObject(v25);
    sub_1E41FFBE4();
    OUTLINED_FUNCTION_66_37(v25, &dword_1E323F000, v26, "LibLocalSource.fetchSidebandDownloadedMenu", 42);

    v27 = OUTLINED_FUNCTION_123_0();
    v21(v27);
    v28 = *(v16 + v24);

    v29 = OUTLINED_FUNCTION_142();
    v31 = sub_1E412E33C(v29, v30);

    v32 = sub_1E41A3110();
    (*(v19 + 16))(v43, v32, v44);

    v33 = sub_1E41FFC94();
    v34 = sub_1E4206814();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_6_21();
      v28 = OUTLINED_FUNCTION_100();
      v45 = v28;
      *v35 = 136315138;
      v36 = type metadata accessor for LibMenuItem(0);
      v37 = MEMORY[0x1E6910C30](v31, v36);
      v39 = sub_1E3270FC8(v37, v38, &v45);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_1E323F000, v33, v34, "LibLocalSource::did fetch mp menu items with %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v19 + 8))(v43, v44);
    }

    else
    {

      (*(v19 + 8))(v43, v44);
    }

    sub_1E412EA1C();
    OUTLINED_FUNCTION_61_32();

    v40 = MEMORY[0x1E69E7D40];
    v41 = (*((*MEMORY[0x1E69E7D40] & *v16) + 0x190))(v28);
    (*((*v40 & *v16) + 0x188))(v41);
    v42();

    sub_1E41306B4();
  }

  else
  {
    (v3)(MEMORY[0x1E69E7CC0]);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E41305EC()
{
  OUTLINED_FUNCTION_21();
  if (((*(v0 + 664))() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for LibMenuItem(0);
  OUTLINED_FUNCTION_21();
  (*(v1 + 336))();
  OUTLINED_FUNCTION_21_7();
  return sub_1E3A8A680(v2, v3, v4, v5, v6, 1);
}

void sub_1E41306B4()
{
  OUTLINED_FUNCTION_31_1();
  v31 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB30, &unk_1E42A89B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v26 - v3;
  v29 = sub_1E4207094();
  OUTLINED_FUNCTION_0_10();
  v27 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  v26[1] = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326E0, &unk_1E42B8F30);
  OUTLINED_FUNCTION_0_10();
  v30 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  v12 = [objc_opt_self() defaultCenter];
  sub_1E4206C14();

  sub_1E3B7B208();
  sub_1E4207074();
  v13 = [objc_opt_self() mainRunLoop];
  v32 = v13;
  v14 = sub_1E4207054();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v14);
  OUTLINED_FUNCTION_21_1();
  sub_1E3280A90(v15, v16, v17);
  sub_1E41366E8(&qword_1EE23B130, 255, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  OUTLINED_FUNCTION_21_1();
  sub_1E32ADE7C(v18, v19, v20, v21);
  sub_1E42007F4();
  sub_1E325F748(v4, &unk_1ECF3DB30, &unk_1E42A89B0);

  (*(v27 + 8))(v1, v29);
  v22 = OUTLINED_FUNCTION_32_12();
  v23(v22);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  v24 = v31;
  swift_unknownObjectWeakInit();
  sub_1E32752B0(&unk_1EE28A2C0, &unk_1ECF326E0, &unk_1E42B8F30, MEMORY[0x1E695BE50]);
  v25 = v28;
  sub_1E4200844();
  OUTLINED_FUNCTION_50();

  (*(v30 + 8))(v11, v25);
  OUTLINED_FUNCTION_11_3(v24 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_cancellables, &v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32580, &qword_1E42A9B90);
  sub_1E32752B0(&qword_1EE23B5E0, &qword_1ECF32580, &qword_1E42A9B90, MEMORY[0x1E69E6348]);
  sub_1E42004D4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

double sub_1E4130B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_10_9();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a2;
  v7[4] = a3;
  v7[5] = a1;
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 200);
  v10 = v3;
  OUTLINED_FUNCTION_50();

  v9(v11, sub_1E4136448, v7);

  return result;
}

void sub_1E4130BDC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  v26 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v25 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = v6;
  v14[4] = v4;
  v14[5] = v8;
  v14[6] = v2;
  OUTLINED_FUNCTION_2_12(v14);
  OUTLINED_FUNCTION_2_62(COERCE_DOUBLE(1107296256));
  v27[2] = v15;
  v27[3] = &block_descriptor_39_6;
  v16 = _Block_copy(v27);

  sub_1E4203FE4();
  v27[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_5_253();
  sub_1E41366E8(v17, 255, v18, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  OUTLINED_FUNCTION_47();
  sub_1E32752B0(v19, v20, &qword_1E429B000, v21);
  sub_1E42072E4();
  v22 = OUTLINED_FUNCTION_62_0();
  MEMORY[0x1E6911380](v22);
  _Block_release(v16);

  v23 = OUTLINED_FUNCTION_11_192();
  v24(v23);
  (*(v11 + 8))(v0, v26);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4130E78()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v50 = v9;
  v51 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_73(v7 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = *(v1 + 32);

    if (sub_1E38BBD0C(v18, 10, v19))
    {
      v49 = v5;
      v20 = sub_1E4206BA4();
      v21 = VUISignpostLogObject(v20);
      sub_1E41FFBE4();
      OUTLINED_FUNCTION_66_37(v20, &dword_1E323F000, v21, "LibLocalSource.fetchSidebandDownloadedCollection", 48);

      v22 = *(v14 + 8);
      v23 = OUTLINED_FUNCTION_123_0();
      v22(v23);
      sub_1E4131298();
      v25 = v24;
      v26 = sub_1E4206B94();
      v27 = VUISignpostLogObject(v26);
      sub_1E41FFBE4();
      OUTLINED_FUNCTION_66_37(v26, &dword_1E323F000, v27, "LibLocalSource.fetchSidebandDownloadedCollection", 48);

      v28 = OUTLINED_FUNCTION_123_0();
      v22(v28);
      v29 = sub_1E41A3110();
      (*(v50 + 16))(v12, v29, v51);

      v30 = sub_1E41FFC94();
      v31 = sub_1E4206814();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v52[0] = swift_slowAlloc();
        *v32 = 136315394;
        v48 = v31;
        v33 = type metadata accessor for LibLockupViewModel(0);

        v35 = MEMORY[0x1E6910C30](v34, v33);
        v37 = v36;

        v38 = sub_1E3270FC8(v35, v37, v52);

        *(v32 + 4) = v38;
        *(v32 + 12) = 2080;
        v39 = MEMORY[0x1E6910C30](v25, v33);
        v41 = sub_1E3270FC8(v39, v40, v52);

        *(v32 + 14) = v41;
        _os_log_impl(&dword_1E323F000, v30, v48, "LibLocalSource:: downloads:: fetched mp %s, sideband %s", v32, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        v42 = OUTLINED_FUNCTION_39_0();
        v43(v42);
      }

      else
      {

        v44 = OUTLINED_FUNCTION_39_0();
        v45(v44);
      }

      v5 = v49;
      type metadata accessor for ComposedMediaQuery();

      v46 = sub_1E399FD3C();
      sub_1E399FD44(v3, v25, v46);
      swift_bridgeObjectRelease_n();
    }

    v5(v47);

    swift_bridgeObjectRelease_n();
  }

  else
  {
    v5(v3);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E4131298()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v89 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v89 - v11;
  v103 = v0;
  sub_1E4133298();
  v14 = v13;
  v105 = sub_1E32AE9B0(v13);
  if (!v105)
  {
    goto LABEL_61;
  }

  v15 = sub_1E41A3110();
  v16 = *(v3 + 16);
  v99 = v15;
  v98 = v3 + 16;
  v97 = v16;
  v16(v12);

  v17 = sub_1E41FFC94();
  v18 = sub_1E4206814();
  v19 = os_log_type_enabled(v17, v18);
  v100 = v9;
  if (v19)
  {
    v20 = OUTLINED_FUNCTION_6_21();
    *v20 = 134217984;
    *(v20 + 4) = sub_1E32AE9B0(v14);

    _os_log_impl(&dword_1E323F000, v17, v18, "LibLocalSource:: fetched downloaded videos from sideband: count %ld", v20, 0xCu);
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  v21 = v14;
  v22 = v3 + 8;
  v23 = OUTLINED_FUNCTION_46_2();
  v96 = v24;
  (v24)(v23);
  v104 = v14 & 0xC000000000000001;
  if ((v14 & 0xC000000000000001) != 0)
  {
LABEL_66:
    v25 = MEMORY[0x1E6911E60](0, v21);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v25 = *(v14 + 32);
  }

  v26 = v25;
  v27 = [v25 managedObjectContext];

  v90 = v27;
  if (!v27)
  {
LABEL_61:

    goto LABEL_63;
  }

  v29 = 0;
  v95 = v21 & 0xFFFFFFFFFFFFFF8;
  v110 = MEMORY[0x1E69E7CD0];
  v111 = MEMORY[0x1E69E7CC0];
  *&v28 = 136315650;
  v91 = v28;
  v101 = MEMORY[0x1E69E7CC0];
  v92 = v22;
  v94 = v6;
  v102 = v21;
  v93 = v1;
  do
  {
    if (v104)
    {
      v30 = MEMORY[0x1E6911E60](v29, v21);
    }

    else
    {
      if (v29 >= *(v95 + 16))
      {
        goto LABEL_65;
      }

      v30 = *(v21 + 8 * v29 + 32);
    }

    v31 = v30;
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v33 = [v30 entitlementType];
    if (v33)
    {
      v34 = v33;
      v35 = [v33 integerValue];

      if (v35 == 2 || v35 == 3)
      {

        goto LABEL_51;
      }
    }

    objc_opt_self();
    v36 = swift_dynamicCastObjCClass();
    if (!v36)
    {
      v46 = v31;
      MEMORY[0x1E6910BF0]();
      OUTLINED_FUNCTION_10_31();
      if (v48)
      {
        OUTLINED_FUNCTION_35(v47);
        sub_1E42062F4();
      }

      sub_1E4206324();

      v101 = v111;
      goto LABEL_50;
    }

    v37 = [v36 series];
    if (v37)
    {
      v38 = v37;
      OUTLINED_FUNCTION_26_122();
      v39();
      v40 = v38;
      v41 = sub_1E41FFC94();
      v42 = sub_1E4206814();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = OUTLINED_FUNCTION_100();
        v106[0] = swift_slowAlloc();
        *v43 = v91;
        v44 = sub_1E32859C4(v40, &selRef_title);
        if (v45)
        {
          *(&v108 + 1) = MEMORY[0x1E69E6158];
          *&v107 = v44;
          *(&v107 + 1) = v45;
        }

        else
        {
          v107 = 0u;
          v108 = 0u;
        }

        v54 = sub_1E3294FA4(&v107);
        v56 = sub_1E3270FC8(v54, v55, v106);

        *(v43 + 4) = v56;
        *(v43 + 12) = 2080;
        v57 = sub_1E32859C4(v40, &selRef_canonicalID);
        if (v58)
        {
          *(&v108 + 1) = MEMORY[0x1E69E6158];
          *&v107 = v57;
          *(&v107 + 1) = v58;
        }

        else
        {
          v107 = 0u;
          v108 = 0u;
        }

        v59 = sub_1E3294FA4(&v107);
        v61 = sub_1E3270FC8(v59, v60, v106);

        *(v43 + 14) = v61;
        *(v43 + 22) = 2080;
        v62 = sub_1E32859C4(v40, &selRef_adamID);
        if (v63)
        {
          *(&v108 + 1) = MEMORY[0x1E69E6158];
          *&v107 = v62;
          *(&v107 + 1) = v63;
        }

        else
        {
          v107 = 0u;
          v108 = 0u;
        }

        v64 = sub_1E3294FA4(&v107);
        v66 = sub_1E3270FC8(v64, v65, v106);

        *(v43 + 24) = v66;
        _os_log_impl(&dword_1E323F000, v41, v42, "LibLocalSource::sideband get download episode with serie\n%s\ncanonicalid %s\nadamid %s", v43, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        v1 = v93;
        v22 = v92;
        v96(v100, v93);
        v6 = v94;
      }

      else
      {

        v53 = OUTLINED_FUNCTION_24_4();
        (v96)(v53);
      }

      v67 = sub_1E32859C4(v40, &selRef_canonicalID);
      if (v68)
      {
        v69 = v67;
        v70 = v68;
        if (!sub_1E3862230(v67, v68, v110))
        {
          goto LABEL_47;
        }
      }

      v71 = sub_1E32859C4(v40, &selRef_adamID);
      if (!v72)
      {
LABEL_46:

LABEL_50:
        v21 = v102;
        goto LABEL_51;
      }

      v69 = v71;
      v70 = v72;
      if (sub_1E3862230(v71, v72, v110))
      {

        goto LABEL_46;
      }

LABEL_47:
      sub_1E3277398(&v107, v69, v70);

      v73 = v40;
      MEMORY[0x1E6910BF0]();
      OUTLINED_FUNCTION_10_31();
      if (v48)
      {
        OUTLINED_FUNCTION_35(v74);
        sub_1E42062F4();
      }

      sub_1E4206324();

      v101 = v111;
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_26_122();
    v49();
    v50 = sub_1E41FFC94();
    v51 = sub_1E42067F4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1E323F000, v50, v51, "LibLocalSource::sideband get download episode without series", v52, 2u);
      v6 = v94;
      OUTLINED_FUNCTION_6_0();
    }

    v96(v6, v1);
LABEL_51:
    ++v29;
  }

  while (v32 != v105);

  type metadata accessor for LibResponseParser();
  sub_1E39212D0(v101, v90);
  v76 = v75;
  v109 = MEMORY[0x1E69E7CC0];
  v77 = *(v75 + 16);
  if (v77)
  {
    type metadata accessor for LibLockupViewModel(0);
    v78 = *((*MEMORY[0x1E69E7D40] & *v103) + 0x150);
    v79 = v76 + 32;
    do
    {
      sub_1E327F454(v79, &v107);
      v80 = sub_1E327F454(&v107, v106);
      v81 = v78(v80);
      v83 = v82;
      v84 = j__OUTLINED_FUNCTION_18();
      sub_1E38BC104(v106, 10, v81, v83, v84 & 1);
      if (v85)
      {
        v86 = *(*v85 + 1640);

        v86();

        v87 = __swift_destroy_boxed_opaque_existential_1Tm(&v107);
        MEMORY[0x1E6910BF0](v87);
        v88 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v88 >> 1)
        {
          OUTLINED_FUNCTION_35(v88);
          sub_1E42062F4();
        }

        OUTLINED_FUNCTION_24_4();
        sub_1E4206324();
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v107);
      }

      v79 += 40;
      --v77;
    }

    while (v77);
  }

LABEL_63:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4131BDC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v63 = v7;
  v9 = v8;
  v62 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v14 = *(v9 + 24);
  v13 = *(v9 + 32);
  v15 = OUTLINED_FUNCTION_39_9();
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v17 = (*(*(v13 + 8) + 16))(v14);
  v19 = v18;
  sub_1E327F454(v9, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780, &unk_1E42A8840);
  v20 = type metadata accessor for LibMPShowMediaEntity(0);
  if (OUTLINED_FUNCTION_46_67(v20))
  {

    v21 = swift_allocObject();
    *(v21 + 16) = v6;
    *(v21 + 24) = v4;
    v22 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xD0);

    v22(v17, v19, v63 & 1, sub_1E4136454, v21);

LABEL_31:

    goto LABEL_32;
  }

  sub_1E327F454(v9, v64);
  v23 = type metadata accessor for LibSidebandShowMediaEntity(0);
  if (OUTLINED_FUNCTION_46_67(v23))
  {

    v25 = *(v9 + 24);
    v24 = *(v9 + 32);
    v26 = OUTLINED_FUNCTION_17_11();
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v28 = (*(*(v24 + 8) + 24))(v25);
    if (!v29)
    {
      v31 = *(v9 + 24);
      v30 = *(v9 + 32);
      v32 = OUTLINED_FUNCTION_17_11();
      __swift_project_boxed_opaque_existential_1(v32, v33);
      v28 = (*(*(v30 + 8) + 88))(v31);
      if (!v29)
      {
        v53 = MEMORY[0x1E69E7CC0];
LABEL_30:
        v6(v53);
        goto LABEL_31;
      }
    }

    v34 = v28;
    v35 = v29;
    v36 = sub_1E4206BA4();
    v37 = VUISignpostLogObject(v36);
    sub_1E41FFBE4();
    sub_1E41FFBA4();

    v38 = *(v11 + 8);
    v38(v1, v62);
    v39 = sub_1E4135D84(v34, v35, *(v2 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_sidebandMediaLibrary));
    if (!v39)
    {
      goto LABEL_28;
    }

    v40 = v39;
    v41 = sub_1E4135DD4(v39, &selRef_seasons, &qword_1ECF300C8, off_1E8728610);
    if (v41)
    {
      v42 = v41;
      if (!sub_1E374CEE0(v41))
      {
        sub_1E4134B64();
        if (v54)
        {
          v55 = v54;
          v47 = [v54 managedObjectContext];

          if (v47)
          {
            sub_1E4134E1C(v42, &qword_1ECF300C8, off_1E8728610, &qword_1ECF40838);

            v64[0] = sub_1E4135E6C(v56);
            sub_1E4134FD0(v64);

            v57 = v64[0];
            if (v64[0] < 0 || (v64[0] & 0x4000000000000000) != 0)
            {
              sub_1E3280A90(0, &qword_1ECF40820, 0x1E695D620);
              OUTLINED_FUNCTION_11_5();

              sub_1E42076C4();
              OUTLINED_FUNCTION_11_5();
            }

            else
            {

              sub_1E42079D4();
              sub_1E3280A90(0, &qword_1ECF40820, 0x1E695D620);
            }

            type metadata accessor for LibResponseParser();
            v58 = OUTLINED_FUNCTION_38();
            sub_1E39212D0(v58, v47);
            OUTLINED_FUNCTION_38();

            v53 = sub_1E3AD5600(v57);

            if (v53)
            {
              goto LABEL_24;
            }

LABEL_28:
            v53 = MEMORY[0x1E69E7CC0];
            goto LABEL_29;
          }
        }

LABEL_25:

        goto LABEL_28;
      }
    }

    v43 = sub_1E4135DD4(v40, &selRef_episodes, &qword_1ECF300D0, off_1E8728600);
    if (!v43)
    {

      goto LABEL_28;
    }

    v44 = v43;
    sub_1E4134B64();
    if (v45)
    {
      v46 = v45;
      v47 = [v45 managedObjectContext];

      if (v47)
      {
        v48 = sub_1E4134E1C(v44, &qword_1ECF300D0, off_1E8728600, &qword_1ECF315E0);

        v61 = type metadata accessor for LibSidebandSeasonMediaEntity(0);
        v49 = sub_1E3AF7D1C([objc_allocWithZone(VUIVideoManagedObject) init]);
        if (v48 < 0 || (v48 & 0x4000000000000000) != 0)
        {
          v50 = sub_1E3280A90(0, &qword_1ECF40820, 0x1E695D620);

          v51 = sub_1E42076C4();
        }

        else
        {

          v50 = v48;
          sub_1E42079D4();
          sub_1E3280A90(0, &qword_1ECF40820, 0x1E695D620);
          v51 = v48;
        }

        type metadata accessor for LibResponseParser();
        v52 = OUTLINED_FUNCTION_38();
        sub_1E39212D0(v52, v47);
        OUTLINED_FUNCTION_38();

        sub_1E4134C2C(v50);
        OUTLINED_FUNCTION_11_5();

        (*(*v49 + 464))(v51);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32768, &unk_1E42E03B0);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_1E4297BE0;
        *(v53 + 56) = v61;
        *(v53 + 64) = sub_1E41366E8(&qword_1ECF33AD8, 255, type metadata accessor for LibSidebandSeasonMediaEntity, &unk_1E42B9CF0);
        *(v53 + 32) = v49;
LABEL_24:

LABEL_29:

        v59 = sub_1E4206B94();
        v60 = VUISignpostLogObject(v59);
        sub_1E41FFBE4();
        sub_1E41FFBA4();

        v38(v1, v62);
        goto LABEL_30;
      }
    }

    goto LABEL_25;
  }

  v6(MEMORY[0x1E69E7CC0]);
LABEL_32:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4132330()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  v24 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v11 = sub_1E4206A04();
  OUTLINED_FUNCTION_5_10();
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = v2;
  v12[4] = v6;
  OUTLINED_FUNCTION_2_12(v12);
  OUTLINED_FUNCTION_2_62(COERCE_DOUBLE(1107296256));
  v25[2] = v13;
  v25[3] = &block_descriptor_170;
  v14 = _Block_copy(v25);

  sub_1E4203FE4();
  v25[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_5_253();
  sub_1E41366E8(v15, 255, v16, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  OUTLINED_FUNCTION_47();
  v20 = sub_1E32752B0(v17, v18, &qword_1E429B000, v19);
  OUTLINED_FUNCTION_19_133(v20);
  v21 = OUTLINED_FUNCTION_62_0();
  MEMORY[0x1E6911380](v21);
  _Block_release(v14);

  v22 = OUTLINED_FUNCTION_11_192();
  v23(v22);
  (*(v9 + 8))(v0, v24);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E4132578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = v3;
  result = sub_1E38BBD0C(*(a1 + 32), 10, a3);
  if ((result & 1) == 0)
  {
    return result;
  }

  v41 = a3;
  v8 = *(a2 + 16);
  if (!v8)
  {
    return v41();
  }

  v9 = 0;
  v10 = a2 + 32;
  v43 = *(a2 + 16);
  v44 = v4;
  v42 = a2 + 32;
  while (1)
  {
    sub_1E327F454(v10 + 40 * v9, v52);
    sub_1E327F454(v52, &v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
    v11 = OUTLINED_FUNCTION_24_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    if (!swift_dynamicCast())
    {
      v47 = 0;
      memset(v46, 0, sizeof(v46));
      sub_1E325F748(v46, &qword_1ECF2A778, &unk_1E429E340);
      sub_1E3280A90(0, &qword_1EE23AFA0, off_1E8728338);
      sub_1E327F454(v52, v51);
      v50 = 0;
      v48 = 0u;
      v49 = 0u;
      v30 = sub_1E3BFF560(v51, &v48);
      if (v30)
      {
        v31 = v30;
        [v30 deleteDownload];
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      goto LABEL_40;
    }

    sub_1E3251BE8(v46, v51);
    v13 = v51[4];
    __swift_project_boxed_opaque_existential_1(v51, v51[3]);
    v14 = OUTLINED_FUNCTION_38();
    v16 = v15(v14, v13);
    if (v16)
    {
      break;
    }

    OUTLINED_FUNCTION_4_0();
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1E327F454(v51, &v48);
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    sub_1E3251BE8(&v48, v33 + 24);
    v34 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x260);

    v34(v51, 1, sub_1E413645C, v33);

    __swift_destroy_boxed_opaque_existential_1Tm(v52);

LABEL_39:
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
LABEL_40:
    if (++v9 == v8)
    {
      return v41();
    }
  }

  v17 = *(v16 + 16);
  if (!v17)
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_31:

    v35 = v19[2];
    if (v35)
    {
      v45 = MEMORY[0x1E69E7CC0];
      sub_1E3923EE8(0, v35, 0);
      v36 = v45;
      v37 = (v19 + 4);
      do
      {
        sub_1E327F454(v37, v46);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE58, &unk_1E42A8830);
        swift_dynamicCast();
        v39 = *(v45 + 16);
        v38 = *(v45 + 24);
        if (v39 >= v38 >> 1)
        {
          v40 = OUTLINED_FUNCTION_35(v38);
          sub_1E3923EE8(v40, v39 + 1, 1);
        }

        *(v45 + 16) = v39 + 1;
        sub_1E3251BE8(&v48, v45 + 40 * v39 + 32);
        v37 += 40;
        --v35;
      }

      while (v35);
    }

    else
    {

      v36 = MEMORY[0x1E69E7CC0];
    }

    v4 = v44;
    (*((*MEMORY[0x1E69E7D40] & *v44) + 0x270))(v51, v36, nullsub_1, 0);

    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    v10 = v42;
    v8 = v43;
    goto LABEL_39;
  }

  v18 = v16 + 32;
  v19 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1E327F454(v18, &v48);
    __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
    v20 = OUTLINED_FUNCTION_39_0();
    result = v21(v20);
    v22 = result ? result : MEMORY[0x1E69E7CC0];
    v23 = *(v22 + 16);
    v24 = v19[2];
    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v25 > v19[3] >> 1)
    {
      if (v24 <= v25)
      {
        v26 = v24 + v23;
      }

      else
      {
        v26 = v24;
      }

      result = sub_1E3AF90C0(result, v26, 1, v19);
      v19 = result;
    }

    if (*(v22 + 16))
    {
      if ((v19[3] >> 1) - v19[2] < v23)
      {
        goto LABEL_45;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE58, &unk_1E42A8830);
      swift_arrayInitWithCopy();

      if (v23)
      {
        v27 = v19[2];
        v28 = __OFADD__(v27, v23);
        v29 = v27 + v23;
        if (v28)
        {
          goto LABEL_46;
        }

        v19[2] = v29;
      }
    }

    else
    {

      if (v23)
      {
        goto LABEL_44;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v48);
    v18 += 40;
    if (!--v17)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1E4132B2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = *(a2 + 16);
  if (v4)
  {
    sub_1E3280A90(0, &qword_1EE23AFA0, off_1E8728338);
    v6 = a2 + 32;
    do
    {
      sub_1E327F454(v6, v11);
      v10 = 0;
      memset(v9, 0, sizeof(v9));
      v7 = sub_1E3BFF560(v11, v9);
      [v7 deleteDownload];

      v6 += 40;
      --v4;
    }

    while (v4);
  }

  return a3(a1);
}

void sub_1E4132BEC()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 392))();
  v2 = sub_1E32AE9B0(v1);
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {
      goto LABEL_16;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1E6911E60](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1E37D4BA4(v4, v5, v6);
    sub_1E4206254();
    sub_1E4206254();
    if (v11 == v9 && v12 == v10)
    {

LABEL_16:

      return;
    }

    v8 = OUTLINED_FUNCTION_97_0(v11, v12, v9);

    if (v8)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

double sub_1E4132D84()
{
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v1 += 49;
  v2 = *v1;
  v3 = (*v1)();
  sub_1E412EA1C();
  v5 = v4;
  OUTLINED_FUNCTION_26_3();
  v7 = *((*v0 & v6) + 0x190);

  v7(v8);
  v9 = sub_1E32AE9B0(v5);

  v10 = sub_1E32AE9B0(v3);

  if (v9 != v10)
  {

    (v2)(v12);
    sub_1E4200524();
  }

  return result;
}

void sub_1E4132EBC()
{
  OUTLINED_FUNCTION_21();
  v5 = (*(v4 + 392))();
  sub_1E32AE9B0(v5);
  OUTLINED_FUNCTION_55_53();
  while (1)
  {
    if (v0 == v1)
    {

      sub_1E412EA1C();

      return;
    }

    if (v2)
    {
      v6 = MEMORY[0x1E6911E60](v1, v5);
    }

    else
    {
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_14;
      }
    }

    if (__OFADD__(v1, 1))
    {
      break;
    }

    sub_1E37DA4B8(v6, v7, v8);
    if (sub_1E4205E84())
    {
    }

    else
    {
      sub_1E4207544();
      sub_1E4207584();
      OUTLINED_FUNCTION_17_11();
      sub_1E4207594();
      sub_1E4207554();
    }

    ++v1;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}