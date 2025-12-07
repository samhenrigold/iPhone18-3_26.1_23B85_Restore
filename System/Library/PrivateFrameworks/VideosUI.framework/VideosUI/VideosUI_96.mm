void sub_1E3E12F34(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v6 = sub_1E32AE9B0(a3);
  for (i = 0; v6 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1E6911E60](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(a3 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v11 = v8;
    v10 = a1(&v11);
    if (v3)
    {

      return;
    }

    if (v10)
    {
      return;
    }
  }
}

uint64_t sub_1E3E13020(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1E3E25084(0, v1, 0);
    v2 = v15;
    v4 = a1 + 32;
    do
    {
      sub_1E3E2597C(v4, v11, &unk_1ECF3D320, &unk_1E42D4E88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D320, &unk_1E42D4E88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F0E0, &qword_1E42AE140);
      swift_dynamicCast();
      v15 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E3E25084((v5 > 1), v6 + 1, 1);
        v2 = v15;
      }

      *(v2 + 16) = v6 + 1;
      v7 = (v2 + 48 * v6);
      v8 = v12;
      v9 = v14;
      v7[3] = v13;
      v7[4] = v9;
      v7[2] = v8;
      v4 += 48;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1E3E13168()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v205 = v3;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF396A0, &unk_1E42AE170);
  OUTLINED_FUNCTION_0_10();
  v199 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v207 = &v192 - v6;
  OUTLINED_FUNCTION_138();
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v192 - v16;
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  v19 = *(v18 + 440);
  v204 = v0;
  v20 = v19();
  v21 = sub_1E374E8E4(v20, 2);
  v22 = sub_1E324FBDC();
  v23 = v9;
  v26 = *(v9 + 16);
  v25 = (v9 + 16);
  v24 = v26;
  if (v21)
  {
    v193 = v22;
    v208 = v7;
    v195 = v25;
    OUTLINED_FUNCTION_189_3(v24);
    v27();
    v28 = sub_1E41FFC94();
    v29 = sub_1E4206814();
    if (OUTLINED_FUNCTION_20_11(v29))
    {
      v30 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v30);
      OUTLINED_FUNCTION_20_34();
      _os_log_impl(v31, v32, v33, v34, v25, 2u);
      OUTLINED_FUNCTION_51_2();
    }

    v36 = *(v23 + 8);
    v35 = (v23 + 8);
    v196 = v35;
    v192 = v36;
    v37 = v36(v17, v208);
    v38 = v204;
    v39 = *((*MEMORY[0x1E69E7D40] & *v204) + 0x278);
    v40 = v204;
    v201 = (*MEMORY[0x1E69E7D40] & *v204) + 632;
    v200 = v39;
    v41 = v39(v37);
    v42 = 0;
    v43 = *(v41 + 16);
    i = v41 + 32;
    v203 = v2;
    while (v43 != v42)
    {
      if (v42 >= *(v41 + 16))
      {
        goto LABEL_100;
      }

      sub_1E38C6028(i, &v210);
      v45 = v212;
      v40 = v213;
      OUTLINED_FUNCTION_0_257(&v210, v212);
      v46(v45);
      OUTLINED_FUNCTION_159_3();
      v47 = sub_1E396B0E4();
      if (j == *v47 && v40 == v47[1])
      {

LABEL_18:

        sub_1E3251BE8(&v210, v214);
        sub_1E3251BE8(v214, &v215);
        v198 = type metadata accessor for LibrarySidebarItem();
        OUTLINED_FUNCTION_34_7(&v215, v217);
        v74 = OUTLINED_FUNCTION_50();
        v197 = v75(v74);
        v77 = v76;
        v78 = v217;
        OUTLINED_FUNCTION_0_257(&v215, v217);
        v80 = v79(v78);
        v82 = v81;
        v83 = v218;
        OUTLINED_FUNCTION_220_0(&v215, v217);
        v84 = OUTLINED_FUNCTION_38();
        LOBYTE(v78) = v85(v84, v83);
        v86 = v218;
        __swift_project_boxed_opaque_existential_1(&v215, v217);
        v87 = OUTLINED_FUNCTION_16_5();
        LOBYTE(v83) = v88(v87, v86);
        v35 = v203;
        OUTLINED_FUNCTION_97_14();
        v62 = MEMORY[0x1E69E7D40];
        (*((*MEMORY[0x1E69E7D40] & v89) + 0x178))();
        v2 = j__OUTLINED_FUNCTION_18();
        v90 = j__OUTLINED_FUNCTION_18();
        j__OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_195_3();
        BYTE3(v193) = v83 & 1;
        BYTE2(v193) = v90 & 1;
        BYTE1(v193) = v78 & 1;
        LOBYTE(v193) = 1;
        v192 = 0;
        v91 = OUTLINED_FUNCTION_114_2();
        OUTLINED_FUNCTION_178_4(v91, v77, v80, v82, v92, v93, v94, v95, v192, v193, SBYTE2(v193), SBYTE3(v193), SBYTE4(v193), v194);
        j = v96;
        __swift_destroy_boxed_opaque_existential_1(&v215);
        v38 = v204;
LABEL_19:
        OUTLINED_FUNCTION_27_29();
        (*(v97 + 480))(0);
        v98 = *(v35 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_libraryManager);
        v99 = *((*v62 & *j) + 0x1C8);
        v100 = v98;
        v99(v98, &off_1F5D8BA78);

        v101 = (*((*v62 & *v38) + 0x2B0))();
        v102 = &off_1EE277438;
        v198 = j;
        if (v101)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F340, &qword_1E42E8F20);
          v103 = swift_allocObject();
          *(v103 + 16) = xmmword_1E4297BE0;
          *(v103 + 56) = type metadata accessor for LibrarySidebarItem();
          *(v103 + 64) = &off_1EE277438;
          *(v103 + 32) = j;
          v104 = *((*v62 & *v38) + 0x280);
          v105 = j;
          v104(v103);
          v102 = j;
          goto LABEL_46;
        }

        v40 = v38;
        OUTLINED_FUNCTION_38_49();
        v41 = v106();
        v2 = 0;
        v107 = *(v41 + 16);
        for (i = v41 + 32; ; i += 40)
        {
          if (v107 == v2)
          {

            OUTLINED_FUNCTION_201();
            goto LABEL_46;
          }

          if (v2 >= *(v41 + 16))
          {
            goto LABEL_101;
          }

          sub_1E38C6028(i, &v215);
          v108 = v217;
          v40 = v218;
          OUTLINED_FUNCTION_0_257(&v215, v217);
          v109(v108);
          OUTLINED_FUNCTION_159_3();
          v110 = sub_1E396B0E4();
          if (j == *v110 && v40 == v110[1])
          {

            __swift_destroy_boxed_opaque_existential_1(&v215);
          }

          else
          {
            v112 = v110;
            OUTLINED_FUNCTION_176_5();
            OUTLINED_FUNCTION_28_3();
            __swift_destroy_boxed_opaque_existential_1(&v215);
            if ((v108 & 1) == 0)
            {

              v113 = v204;
              v40 = v204;
              OUTLINED_FUNCTION_38_49();
              v41 = v114();
              v2 = 0;
              i = *(v41 + 16);
              for (j = 32; ; j += 40)
              {
                if (i == v2)
                {

                  OUTLINED_FUNCTION_27_29();
                  v121 = *(v120 + 648);
                  OUTLINED_FUNCTION_201();
                  v122 = &off_1EE277438;
                  j = &v215;
                  v121(&v215);
                  OUTLINED_FUNCTION_152();
                  sub_1E3E2422C();
                  sub_1E3E24278(*(*v113 + 16));
                  v123 = OUTLINED_FUNCTION_11_6();
                  sub_1E3E2587C(v123, v124, v113);
                  (v121)(&v215, 0);
                  goto LABEL_46;
                }

                if (v2 >= *(v41 + 16))
                {
                  goto LABEL_102;
                }

                sub_1E38C6028(v41 + j, &v215);
                v115 = v217;
                OUTLINED_FUNCTION_0_257(&v215, v217);
                v117 = v116(v115);
                v40 = v118;
                if (v117 == *v112 && v118 == v112[1])
                {
                  break;
                }

                sub_1E42079A4();
                OUTLINED_FUNCTION_28_3();
                __swift_destroy_boxed_opaque_existential_1(&v215);
                if (v115)
                {
                  goto LABEL_43;
                }

                v2 = (v2 + 1);
              }

              __swift_destroy_boxed_opaque_existential_1(&v215);
LABEL_43:

              v217 = type metadata accessor for LibrarySidebarItem();
              v218 = &off_1EE277438;
              *&v215 = v198;
              v125 = *((*MEMORY[0x1E69E7D40] & *v113) + 0x288);
              v126 = v198;
              v41 = v125(v214);
              i = v127;
              v40 = *v127;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *i = v40;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                goto LABEL_104;
              }

              while (2)
              {
                v102 = v198;
                if (v2 >= v40[2])
                {
                  __break(1u);
                  return;
                }

                __swift_destroy_boxed_opaque_existential_1((v40 + j));
                sub_1E3251BE8(&v215, v40 + j);
                (v41)(v214, 0);
LABEL_46:
                v209 = v205;
                OUTLINED_FUNCTION_27_29();
                v130 = *(v129 + 376);

                v40 = v102;
                v41 = v130(v131);
                v132 = sub_1E32AE9B0(v41);
                if (v132)
                {
                  i = v132;
                  if (v132 >= 1)
                  {
                    for (k = 0; k != i; ++k)
                    {
                      if ((v41 & 0xC000000000000001) != 0)
                      {
                        v134 = MEMORY[0x1E6911E60](k, v41);
                      }

                      else
                      {
                        v134 = *(v41 + 8 * k + 32);
                      }

                      v135 = v134;
                      if (v209)
                      {
                        v136 = *&v134[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier];
                        v137 = *&v134[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier + 8];

                        sub_1E397B708(v136, v137);
                      }

                      else
                      {
                      }
                    }

                    goto LABEL_56;
                  }
                }

                else
                {
LABEL_56:

                  v40 = v204;
                  OUTLINED_FUNCTION_38_49();
                  v41 = *(v138() + 16);

                  j = MEMORY[0x1E69E7D40];
                  if (v41)
                  {
                    OUTLINED_FUNCTION_16_89();
                    v140 = (*(v139 + 520))();
                    if (v140)
                    {
                      v41 = v140;
                      v141 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented;
                      OUTLINED_FUNCTION_25();
                      swift_beginAccess();
                      LOBYTE(v141) = *(v41 + v141);

                      if ((v141 & 1) == 0)
                      {
                        OUTLINED_FUNCTION_22_77();
                        v142();
                        v41 = sub_1E41FFC94();
                        v143 = sub_1E4206814();
                        if (OUTLINED_FUNCTION_6_33(v143))
                        {
                          v144 = OUTLINED_FUNCTION_125_0();
                          OUTLINED_FUNCTION_9_11(v144);
                          OUTLINED_FUNCTION_6_29();
                          _os_log_impl(v145, v146, v147, v148, v149, 2u);
                          OUTLINED_FUNCTION_51_2();
                        }

                        OUTLINED_FUNCTION_132_2();
                        v150();
                      }
                    }

                    v40 = v35;
                    sub_1E3E16BA8();
                  }

                  v202 = v209;
                  if (v209)
                  {
                    v2 = (v209 + 56);
                    OUTLINED_FUNCTION_4_4();
                    i = v152 & v151;
                    v154 = (v153 + 63) >> 6;

                    v35 = 0;
                    if (i)
                    {
                      goto LABEL_69;
                    }

                    while (1)
                    {
                      v155 = v35 + 1;
                      if (__OFADD__(v35, 1))
                      {
                        goto LABEL_99;
                      }

                      if (v155 >= v154)
                      {
                        break;
                      }

                      i = v2[v155];
                      v35 = (v35 + 1);
                      if (i)
                      {
                        v35 = v155;
                        do
                        {
LABEL_69:
                          OUTLINED_FUNCTION_172_0();
                          v41 = *(v156 + 8);
                          OUTLINED_FUNCTION_68_5();
                          OUTLINED_FUNCTION_21();
                          v158 = *(v157 + 608);

                          j = v158(&v215);
                          v160 = v159;
                          v40 = *v159;
                          v161 = OUTLINED_FUNCTION_13_8();
                          v163 = sub_1E327D33C(v161, v162);
                          if (v164)
                          {
                            v165 = v163;
                            LODWORD(v208) = swift_isUniquelyReferenced_nonNull_native();
                            *&v210 = *v160;
                            *v160 = 0x8000000000000000;
                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF396A8, &qword_1E42D4E68);
                            sub_1E4207644();
                            v40 = v210;

                            type metadata accessor for SideBarItemConfig();
                            sub_1E4207664();
                            *v160 = v40;
                          }

                          i &= i - 1;
                          (j)(&v215, 0);
                        }

                        while (i);
                      }
                    }

                    j = MEMORY[0x1E69E7D40];
                  }

                  OUTLINED_FUNCTION_25_5();
                  v166 += 123;
                  v167 = *v166;
                  (*v166)(1);
                  sub_1E3E18440();
                  sub_1E3E1A2B0();
                  v167(0);
                  OUTLINED_FUNCTION_39();
                  *&v215 = (*((*j & v168) + 0x290))();
                  *(&v215 + 1) = v169;
                  v170 = OUTLINED_FUNCTION_32_0();
                  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(v170, v171);
                  OUTLINED_FUNCTION_81_21(&qword_1EE279310);
                  sub_1E4206194();
                  v173 = sub_1E3280A90(255, &qword_1EE23B250, 0x1E69DD258);
                  v205 = v173;
                  while (1)
                  {
                    *&v210 = MEMORY[0x1E69E6158];
                    *(&v210 + 1) = v173;
                    v211 = MEMORY[0x1E69E6168];
                    OUTLINED_FUNCTION_76_21();
                    swift_getOpaqueTypeConformance2();
                    sub_1E4207174();
                    v35 = *(&v215 + 1);
                    if (!*(&v215 + 1))
                    {
                      OUTLINED_FUNCTION_15_5();
                      v182(v207, v206);
                      OUTLINED_FUNCTION_67_1();
                      (*((*MEMORY[0x1E69E7D40] & v183) + 0x198))(1);
                      OUTLINED_FUNCTION_38_49();
                      v185 = v184();
                      sub_1E39574B8(v185, &v215);

                      v186 = v217;
                      if (v217)
                      {
                        OUTLINED_FUNCTION_34_7(&v215, v217);
                        v187 = OUTLINED_FUNCTION_50();
                        v186 = v188(v187);
                        __swift_destroy_boxed_opaque_existential_1(&v215);
                        OUTLINED_FUNCTION_32_0();
                        sub_1E4205ED4();
                        OUTLINED_FUNCTION_12_1();
                      }

                      else
                      {
                        sub_1E325F7FC(&v215, &qword_1ECF2EC80, &qword_1E42AD1C0);
                      }

                      v189 = v198;
                      v190 = OUTLINED_FUNCTION_33_14();
                      [v190 v191];

                      goto LABEL_96;
                    }

                    v40 = v216;
                    objc_opt_self();
                    OUTLINED_FUNCTION_20_2();
                    v174 = swift_dynamicCastObjCClass();
                    if (v174)
                    {
                      break;
                    }

LABEL_90:
                  }

                  v208 = v40;
                  v175 = [v174 viewControllers];
                  OUTLINED_FUNCTION_106();
                  swift_checkMetadataState();
                  OUTLINED_FUNCTION_20_2();
                  v41 = sub_1E42062B4();

                  v2 = (v41 & 0xFFFFFFFFFFFFFF8);
                  if (v41 >> 62)
                  {
                    i = sub_1E4207384();
                  }

                  else
                  {
                    i = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  for (m = 0; ; ++m)
                  {
                    if (i == m)
                    {

                      v173 = v205;
                      v40 = v208;
                      goto LABEL_90;
                    }

                    if ((v41 & 0xC000000000000001) != 0)
                    {
                      v181 = OUTLINED_FUNCTION_55_39();
                      v177 = MEMORY[0x1E6911E60](v181);
                    }

                    else
                    {
                      if (m >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_98;
                      }

                      v177 = *(v41 + 8 * m + 32);
                    }

                    j = v177;
                    if (__OFADD__(m, 1))
                    {
                      break;
                    }

                    swift_getObjectType();
                    v178 = OUTLINED_FUNCTION_138_1();
                    if (dynamic_cast_existential_1_conditional(v178, v179, &protocol descriptor for TemplateReparentable))
                    {
                      OUTLINED_FUNCTION_145();
                      ObjectType = swift_getObjectType();
                      (*(v172 + 64))(0, ObjectType, v172);
                    }
                  }

                  __break(1u);
LABEL_98:
                  __break(1u);
LABEL_99:
                  __break(1u);
LABEL_100:
                  __break(1u);
LABEL_101:
                  __break(1u);
LABEL_102:
                  __break(1u);
                }

                __break(1u);
LABEL_104:
                v40 = sub_1E3E25304(v40);
                *i = v40;
                continue;
              }
            }
          }

          v2 = (v2 + 1);
        }
      }

      OUTLINED_FUNCTION_176_5();
      OUTLINED_FUNCTION_28_3();
      if (v45)
      {
        goto LABEL_18;
      }

      __swift_destroy_boxed_opaque_existential_1(&v210);
      i += 40;
      ++v42;
    }

    v198 = type metadata accessor for LibrarySidebarItem();
    v59 = *(v38 + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_libraryTitle + 8);
    v197 = *(v38 + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_libraryTitle);

    v60 = sub_1E396B0E4();
    v35 = v2;
    v61 = *v60;
    v2 = v60[1];
    v62 = MEMORY[0x1E69E7D40];
    v63 = *((*MEMORY[0x1E69E7D40] & *v38) + 0x2B0);

    v65 = v63(v64);
    OUTLINED_FUNCTION_97_14();
    (*((*v62 & v66) + 0x178))();
    j__OUTLINED_FUNCTION_18();
    v67 = j__OUTLINED_FUNCTION_18();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_195_3();
    BYTE3(v193) = (v65 & 1) == 0;
    BYTE2(v193) = v67 & 1;
    LOWORD(v193) = 257;
    v192 = 0;
    v68 = OUTLINED_FUNCTION_114_2();
    OUTLINED_FUNCTION_178_4(v68, v59, v61, v2, v69, v70, v71, v72, v192, v193, SBYTE2(v193), SBYTE3(v193), SBYTE4(v193), v194);
    j = v73;
    goto LABEL_19;
  }

  v24(v13, v22, v7);
  v49 = v2;
  v50 = sub_1E41FFC94();
  v51 = v7;
  v52 = sub_1E4206814();

  if (os_log_type_enabled(v50, v52))
  {
    v53 = OUTLINED_FUNCTION_6_21();
    *&v215 = OUTLINED_FUNCTION_100();
    *v53 = 136315138;
    v208 = v51;
    v54 = v19();
    LOBYTE(v214[0]) = v54;
    sub_1E3E25614(v54, v55, v56);
    v57 = sub_1E4207944();
    sub_1E3270FC8(v57, v58, &v215);
    OUTLINED_FUNCTION_11_5();

    *(v53 + 4) = v49;
    _os_log_impl(&dword_1E323F000, v50, v52, "RootSplitViewController:: Pad:: commit changes for sidebar mode, but the current mode is %s", v53, 0xCu);
    OUTLINED_FUNCTION_248();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_65_0();

    (*(v23 + 8))(v13, v208);
  }

  else
  {

    (*(v23 + 8))(v13, v51);
  }

LABEL_96:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E144EC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_4_32();
  v10(v9);
  v11 = v0;
  v12 = sub_1E41FFC94();
  v13 = sub_1E4206814();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_42_9();
    v15 = OUTLINED_FUNCTION_100();
    *v14 = 136315394;
    *(v14 + 4) = OUTLINED_FUNCTION_183_4(&v11[OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_logPrefix]);
    *(v14 + 12) = 1024;
    *(v14 + 14) = v2 & 1;
    _os_log_impl(&dword_1E323F000, v12, v13, "%s libraryHideSideBar: hidden:%{BOOL}d", v14, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_55();
  }

  (*(v5 + 8))(v9, v3);
  sub_1E3E0FBF0(v2 & 1);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E14684()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 1000))();
}

void sub_1E3E14798()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v11(v0);

  v12 = sub_1E41FFC94();
  v13 = sub_1E4206814();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_6_21();
    *v14 = 134217984;
    *(v14 + 4) = *(v6 + 16);

    OUTLINED_FUNCTION_235(&dword_1E323F000, v15, v16, "RootSplitViewController:: Pad:: update with bar items count %ld");
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  (*(v9 + 8))(v0, v7);
  v17 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_85();
  v19 = *(v18 + 376);
  v20 = v2;
  v19(v2);
  OUTLINED_FUNCTION_67_1();
  (*((*v17 & v21) + 0x3F0))(v6, v4 & 1);
  OUTLINED_FUNCTION_67_1();
  if ((*((*v17 & v22) + 0x3A0))())
  {
    OUTLINED_FUNCTION_30();
    v24 = *(v23 + 880);
    v25 = swift_unknownObjectRetain();
    v24(v25, &off_1F5D87340);
  }

  v26 = *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_libraryManager);
  OUTLINED_FUNCTION_21_70();
  v27 += 86;
  v28 = *v27;
  v29 = (*v27)();
  v30 = (*((*v17 & *v26) + 0x110))(v29 & 1);
  (v28)(v30);
  OUTLINED_FUNCTION_36_3();
  (*((*v17 & v31) + 0x1E0))(v32 & 1);
  sub_1E3E13168();

  sub_1E3E14C2C();
  OUTLINED_FUNCTION_36_3();
  v34 = (*((*v17 & v33) + 0x118))();
  if (v34 != 3)
  {
    v35 = v34;
    OUTLINED_FUNCTION_27_29();
    if ((*(v36 + 272))())
    {
      OUTLINED_FUNCTION_27_29();
      if ((*(v37 + 304))())
      {
        OUTLINED_FUNCTION_21_70();
        (*(v38 + 448))(v35);
        OUTLINED_FUNCTION_36_3();
        (*((*v17 & v39) + 0x120))(3);
      }
    }
  }

  sub_1E3E0F9E8();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E14C2C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF396A0, &unk_1E42AE170);
  OUTLINED_FUNCTION_0_10();
  v45 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_35_3();
  v11 = *&v0[OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_manager];
  v12 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_7_20();
  v14 = *(v13 + 440);
  v15 = v14();
  if (sub_1E374E8E4(v15, 1))
  {
    v16 = *((*v12 & *v11) + 0x3D8);
    v16(1);
    sub_1E3E18440();
    sub_1E3E1A2B0();
    v16(0);
    OUTLINED_FUNCTION_1_31();
    v48 = (*((*v12 & v17) + 0x290))();
    v49 = v18;
    v19 = OUTLINED_FUNCTION_32_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
    OUTLINED_FUNCTION_81_21(&qword_1EE279310);
    sub_1E4206194();
    v21 = v1;
    v22 = v12;
    sub_1E3280A90(255, &qword_1EE23B250, 0x1E69DD258);
    while (1)
    {
      OUTLINED_FUNCTION_76_21();
      swift_getOpaqueTypeConformance2();
      sub_1E4207174();
      if (!v49)
      {
        (*(v45 + 8))(v21, v46);
        OUTLINED_FUNCTION_26_3();
        (*((*v22 & v44) + 0x198))(1);
        goto LABEL_24;
      }

      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (v23)
      {
        break;
      }

LABEL_18:
    }

    v24 = [v23 viewControllers];
    swift_checkMetadataState();
    OUTLINED_FUNCTION_19_3();
    v25 = sub_1E42062B4();

    if (v25 >> 62)
    {
      v26 = sub_1E4207384();
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; ; ++i)
    {
      if (v26 == i)
      {

        v21 = v1;
        v22 = MEMORY[0x1E69E7D40];
        goto LABEL_18;
      }

      if ((v25 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1E6911E60](i, v25);
      }

      else
      {
        if (i >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v28 = *(v25 + 8 * i + 32);
      }

      v29 = v28;
      if (__OFADD__(i, 1))
      {
        break;
      }

      swift_getObjectType();
      v30 = OUTLINED_FUNCTION_40_3();
      if (dynamic_cast_existential_1_conditional(v30, v31, &protocol descriptor for TemplateReparentable))
      {
        OUTLINED_FUNCTION_49_4();
        ObjectType = swift_getObjectType();
        (*(v50 + 8))(1, ObjectType, v50);
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_4_32();
    v33(v8);
    v34 = v0;
    v35 = sub_1E41FFC94();
    v36 = sub_1E4206814();

    if (os_log_type_enabled(v35, v36))
    {
      OUTLINED_FUNCTION_6_21();
      v47 = OUTLINED_FUNCTION_16_2();
      v48 = v47;
      *v34 = 136315138;
      v37 = v14();
      sub_1E3E25614(v37, v38, v39);
      v40 = sub_1E4207944();
      v42 = sub_1E3270FC8(v40, v41, &v48);

      *(v34 + 4) = v42;
      OUTLINED_FUNCTION_112_12(&dword_1E323F000, v43, v36, "RootSplitViewController:: Pad:: commit changes for tabbar mode, but the current mode is %s");
      __swift_destroy_boxed_opaque_existential_1(v47);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_7_9();
    }

    (*(v4 + 8))(v8, v2);
LABEL_24:
    OUTLINED_FUNCTION_25_2();
  }
}

void sub_1E3E15228()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  (*(v0 + 1032))();
  if ((v1 & 1) == 0)
  {

    sub_1E3E152AC();
  }
}

void sub_1E3E152AC()
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
  v12 = *&v0[OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_manager];
  v13 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_35_62();
  (*(v14 + 1064))(&v141, v4);
  if (!*(&v142 + 1))
  {
    sub_1E325F7FC(&v141, &unk_1ECF2F1D0, &qword_1E42AE148);
    v22 = sub_1E324FBDC();
    (*(v7 + 16))(v11, v22, v5);
    v23 = sub_1E41FFC94();
    v24 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_6_33(v24))
    {
      v25 = OUTLINED_FUNCTION_42_9();
      *v25 = 134218240;
      *(v25 + 4) = v4;
      *(v25 + 12) = 1024;
      *(v25 + 14) = v2 & 1;
      OUTLINED_FUNCTION_6_29();
      _os_log_impl(v26, v27, v28, v29, v30, 0x12u);
      OUTLINED_FUNCTION_51_2();
    }

    v31 = OUTLINED_FUNCTION_123_1();
    v32(v31);
    goto LABEL_72;
  }

  sub_1E3251BE8(&v141, v146);
  OUTLINED_FUNCTION_97_14();
  v16 = ((*v13 & v15) + 488);
  v17 = *((*v13 & v15) + 0x1E8);
  v18 = v17();
  if (v19 & 1) == 0 && v18 == v4 && (v2)
  {
    v17();
    OUTLINED_FUNCTION_35_62();
    (*(v20 + 520))();
    OUTLINED_FUNCTION_97_14();
    (*((*v13 & v21) + 0x400))(v2 & 1);
LABEL_38:
    __swift_destroy_boxed_opaque_existential_1(v146);
LABEL_72:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v132 = v17;
  v133 = v16;
  v135 = v0;
  v33 = v147;
  v34 = v148;
  OUTLINED_FUNCTION_220_0(v146, v147);
  OUTLINED_FUNCTION_33();
  v36 = v35(v33, v34);
  v38 = v37;
  OUTLINED_FUNCTION_97_14();
  (*((*v13 & v39) + 0x290))();
  OUTLINED_FUNCTION_227_0();
  *&v141 = v36;
  *(&v141 + 1) = v38;
  v40 = sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
  sub_1E3CA4D00(&v141, v12, v5, MEMORY[0x1E69E6158], v40, MEMORY[0x1E69E6168]);

  v41 = v145;
  v134 = v4;
  if (!v145)
  {
    sub_1E38C6028(v146, &v141);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F310, &qword_1E42AE150);
    type metadata accessor for RemoteBarItem();
    OUTLINED_FUNCTION_157_7();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_232_0();
      v42 = v147;
      v43 = v148;
      __swift_project_boxed_opaque_existential_1(v146, v147);
      OUTLINED_FUNCTION_33();
      v44(v42, v43);
      OUTLINED_FUNCTION_134_2();

      *&v141 = v12;
      *(&v141 + 1) = v42;
      OUTLINED_FUNCTION_230_0();
      v41 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x450))(v138, 1, 1, v141, *(&v141 + 1));
    }

    else
    {
      v41 = 0;
    }

    sub_1E38C6028(v146, &v141);
    type metadata accessor for LibraryBarItem();
    OUTLINED_FUNCTION_157_7();
    v130 = v2;
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_232_0();
      v46 = *(v138 + OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier);
      v45 = *(v138 + OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier + 8);

      *&v141 = v46;
      *(&v141 + 1) = v45;
      OUTLINED_FUNCTION_230_0();
      v13 = MEMORY[0x1E69E7D40];
      v47 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x410))(v138, 0, 1, v141, *(&v141 + 1));

      v41 = v47;
    }

    else
    {
      v13 = MEMORY[0x1E69E7D40];
    }

    if (!v41)
    {
      goto LABEL_38;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_40_3();
    v48 = swift_dynamicCastObjCClass();
    if (v48)
    {
      v131 = v41;
      v136 = v12;
      v49 = [v48 viewControllers];
      v40 = sub_1E42062B4();

      v50 = sub_1E32AE9B0(v40);
      v51 = 0;
      v12 = (v40 & 0xC000000000000001);
      while (1)
      {
        if (v50 == v51)
        {

          v2 = v130;
          OUTLINED_FUNCTION_190_2();
          v13 = MEMORY[0x1E69E7D40];
          v41 = v131;
          goto LABEL_30;
        }

        if (v12)
        {
          v52 = MEMORY[0x1E6911E60](v51, v40);
        }

        else
        {
          if (v51 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_75;
          }

          v52 = *(v40 + 8 * v51 + 32);
        }

        v53 = v52;
        if (__OFADD__(v51, 1))
        {
          break;
        }

        swift_getObjectType();
        v54 = OUTLINED_FUNCTION_19_3();
        if (dynamic_cast_existential_1_conditional(v54, v55, &protocol descriptor for TemplateReparentable))
        {
          v57 = v56;
          ObjectType = swift_getObjectType();
          OUTLINED_FUNCTION_62_30();
          OUTLINED_FUNCTION_21();
          v60 = (*(v59 + 440))();
          v61 = sub_1E374E8E4(v60, 1);
          (*(v57 + 64))(v61, ObjectType, v57);
        }

        ++v51;
      }

      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v2 = v130;
  }

LABEL_30:
  objc_opt_self();
  OUTLINED_FUNCTION_40_3();
  v62 = swift_dynamicCastObjCClass();
  if (!v62)
  {

    goto LABEL_38;
  }

  v63 = v62;
  v64 = v41;
  v132();
  OUTLINED_FUNCTION_97_14();
  (*((*v13 & v65) + 0x208))();
  OUTLINED_FUNCTION_97_14();
  (*((*v13 & v66) + 0x1F0))(v134, 0);
  if (v2)
  {
    type metadata accessor for VideosUI();
    v67 = v41;
    static VideosUI.notifyAppearingViewControllerOfTabSwitch(_:)(v63);
  }

  v131 = v41;
  OUTLINED_FUNCTION_35_62();
  v69 = (*(v68 + 440))();
  v70 = sub_1E374E8E4(v69, 2);
  v71 = v147;
  v72 = v148;
  OUTLINED_FUNCTION_220_0(v146, v147);
  OUTLINED_FUNCTION_33();
  v73(v71, v72);
  isEscapingClosureAtFileLocation = v74;
  v136 = v12;
  if ((v70 & 1) == 0)
  {
    sub_1E4205ED4();
    OUTLINED_FUNCTION_50();

    OUTLINED_FUNCTION_199_0();
    v13 = [isEscapingClosureAtFileLocation v90];

    if (v13)
    {
      if ((*((*MEMORY[0x1E69E7D40] & *v12) + 0x3B8))())
      {
        v134 = v64;
        v70 = objc_opt_self();
        OUTLINED_FUNCTION_2_4();
        v91 = swift_allocObject();
        *(v91 + 16) = isEscapingClosureAtFileLocation;
        *(v91 + 24) = v13;
        OUTLINED_FUNCTION_2_4();
        v92 = swift_allocObject();
        v93 = sub_1E3E25A2C;
        *(v92 + 16) = sub_1E3E25A2C;
        *(v92 + 24) = v91;
        v143 = sub_1E37D1918;
        v144 = v92;
        OUTLINED_FUNCTION_75_21();
        *(&v141 + 1) = 1107296256;
        OUTLINED_FUNCTION_67();
        *&v142 = v94;
        *(&v142 + 1) = &block_descriptor_83_1;
        v95 = _Block_copy(&v141);
        v96 = isEscapingClosureAtFileLocation;
        v97 = v95;
        v98 = v96;
        v99 = v13;

        v100 = OUTLINED_FUNCTION_33_14();
        [v100 v101];

        _Block_release(v97);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

        OUTLINED_FUNCTION_214_1();
        goto LABEL_65;
      }

      [isEscapingClosureAtFileLocation setSelectedTab_];
      goto LABEL_46;
    }

    OUTLINED_FUNCTION_214_1();
    v93 = 0;
LABEL_67:
    v91 = 0;
    OUTLINED_FUNCTION_153_6();
    goto LABEL_71;
  }

  OUTLINED_FUNCTION_35_62();
  (*(v76 + 1144))();

  v70 = v148;
  OUTLINED_FUNCTION_70(v146);
  v77 = OUTLINED_FUNCTION_26_1();
  v40 = v78(v77);
  v80 = v79;
  sub_1E38C6028(v146, &v137);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F310, &qword_1E42AE150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
  if (!swift_dynamicCast())
  {
    v143 = 0;
    v141 = 0u;
    v142 = 0u;
    sub_1E325F7FC(&v141, &qword_1ECF2EC80, &qword_1E42AD1C0);
    v138 = 0u;
    v139 = 0u;
    AssociatedConformanceWitness = 0;
LABEL_52:
    sub_1E325F7FC(&v138, &qword_1ECF2EC80, &qword_1E42AD1C0);
    goto LABEL_53;
  }

  v132 = v40;
  v133 = v80;
  v134 = v64;
  v130 = v2;
  v81 = *(&v142 + 1);
  v13 = v143;
  __swift_project_boxed_opaque_existential_1(&v141, *(&v142 + 1));
  v82 = v13[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = sub_1E4207104();
  v129 = &v129;
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  v85 = MEMORY[0x1EEE9AC00](v84);
  v87 = &v129 - v86;
  v82(v81, v13, v85);
  if (__swift_getEnumTagSinglePayload(v87, 1, AssociatedTypeWitness) == 1)
  {
    v88 = OUTLINED_FUNCTION_27_0();
    v89(v88);
    OUTLINED_FUNCTION_151_7();
    AssociatedConformanceWitness = 0;
    v138 = 0u;
    v139 = 0u;
  }

  else
  {
    *(&v139 + 1) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v138);
    OUTLINED_FUNCTION_37_1();
    (*(v102 + 32))();
    OUTLINED_FUNCTION_151_7();
  }

  __swift_destroy_boxed_opaque_existential_1(&v141);
  LOBYTE(v2) = v130;
  v64 = v134;
  v40 = v132;
  if (!*(&v139 + 1))
  {
    goto LABEL_52;
  }

  v103 = OUTLINED_FUNCTION_157_7();
  sub_1E3251BE8(v103, v104);
  v70 = v143;
  OUTLINED_FUNCTION_70(&v141);
  v105 = OUTLINED_FUNCTION_26_1();
  if (v106(v105))
  {

    v107 = *(&v142 + 1);
    OUTLINED_FUNCTION_0_257(&v141, *(&v142 + 1));
    v40 = v108(v107);
  }

  __swift_destroy_boxed_opaque_existential_1(&v141);
LABEL_53:
  isEscapingClosureAtFileLocation = sub_1E4205ED4();

  v93 = [v135 tabForIdentifier_];

  if (!v93)
  {
    OUTLINED_FUNCTION_214_1();
    goto LABEL_67;
  }

  v109 = [v93 viewController];
  OUTLINED_FUNCTION_153_6();
  if (!v110)
  {
    v13 = v93;
    goto LABEL_70;
  }

  OUTLINED_FUNCTION_56_20();
  type metadata accessor for RootHostingViewController();
  v111 = swift_dynamicCastClass();
  if (!v111)
  {

    goto LABEL_70;
  }

  v112 = (*((*MEMORY[0x1E69E7D40] & *v111) + 0x60))();
  if (!v112 || (isEscapingClosureAtFileLocation = v112, v112, v63 != isEscapingClosureAtFileLocation))
  {
    OUTLINED_FUNCTION_21();
    isEscapingClosureAtFileLocation = *(v113 + 152);
    v70 = v113 + 152;
    v114 = v131;
    (isEscapingClosureAtFileLocation)(v63);
  }

  objc_opt_self();
  v115 = swift_dynamicCastObjCClass();
  if (v115)
  {
    v40 = v115;
    v116 = v93;
    v117 = [v40 children];
    sub_1E3280A90(0, &unk_1ECF39558, 0x1E69DCFE0);
    OUTLINED_FUNCTION_19_3();
    v118 = sub_1E42062B4();

    MEMORY[0x1EEE9AC00](v119);
    *(&v129 - 2) = v146;
    v70 = 0;
    sub_1E3E12F34(sub_1E3E2554C, (&v129 - 4), v118);
    isEscapingClosureAtFileLocation = v120;

    [v40 setSelectedChild_];
  }

  OUTLINED_FUNCTION_199_0();
  OUTLINED_FUNCTION_12_5();
  if ((*(v121 + 400))())
  {
    OUTLINED_FUNCTION_62_30();
    OUTLINED_FUNCTION_21();
    if (((*(v122 + 952))() & 1) == 0)
    {
      [isEscapingClosureAtFileLocation setSelectedTab_];

LABEL_46:
      OUTLINED_FUNCTION_153_6();
LABEL_70:

      OUTLINED_FUNCTION_214_1();
      v93 = 0;
      v91 = 0;
      goto LABEL_71;
    }
  }

  v134 = v64;
  v133 = objc_opt_self();
  OUTLINED_FUNCTION_2_4();
  v70 = swift_allocObject();
  *(v70 + 16) = isEscapingClosureAtFileLocation;
  *(v70 + 24) = v93;
  OUTLINED_FUNCTION_2_4();
  v123 = swift_allocObject();
  v40 = sub_1E3E2553C;
  *(v123 + 16) = sub_1E3E2553C;
  *(v123 + 24) = v70;
  v143 = sub_1E37D1918;
  v144 = v123;
  OUTLINED_FUNCTION_75_21();
  *(&v141 + 1) = 1107296256;
  OUTLINED_FUNCTION_67();
  *&v142 = v124;
  *(&v142 + 1) = &block_descriptor_93_1;
  v125 = _Block_copy(&v141);
  v126 = v93;
  v127 = isEscapingClosureAtFileLocation;

  [v133 performWithoutAnimation_];

  _Block_release(v125);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v93 = 0;
    v91 = 0;
LABEL_65:
    OUTLINED_FUNCTION_153_6();
    v64 = v134;
LABEL_71:
    OUTLINED_FUNCTION_62_30();
    OUTLINED_FUNCTION_21();
    (*(v128 + 1024))(v2 & 1);

    __swift_destroy_boxed_opaque_existential_1(v146);
    sub_1E37FAED8(v40, v70);
    sub_1E37FAED8(v93, v91);
    goto LABEL_72;
  }

LABEL_77:
  __break(1u);
}

BOOL sub_1E3E165C4()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  (*(v0 + 1072))();
  return (v1 & 1) == 0;
}

uint64_t sub_1E3E16684(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 656);

  v6(v7);
  OUTLINED_FUNCTION_49_4();
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
  sub_1E3CA4D00(v10, v2, v6, MEMORY[0x1E69E6158], v8, MEMORY[0x1E69E6168]);

  return v10[2];
}

BOOL sub_1E3E167D8()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 440))();

  return sub_1E374E8E4(v1, 1);
}

uint64_t sub_1E3E168D4()
{
  if ([v0 isTabBarHidden])
  {
    return 0;
  }

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  [result bounds];
  OUTLINED_FUNCTION_240_0();
  v3 = OUTLINED_FUNCTION_14_25();
  result = [v0 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = result;
  [result bounds];
  v6 = v5;

  result = [v0 view];
  if (result)
  {
    if (v6 >= v3)
    {
      v7 = 1194.0;
    }

    else
    {
      v7 = 1024.0;
    }

    [result bounds];
    OUTLINED_FUNCTION_240_0();
    if (OUTLINED_FUNCTION_14_25() < v7)
    {
      return 1;
    }

    v8 = [v0 sidebar];
    v1 = [v8 isHidden];

    return v1;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1E3E16A58()
{
  sub_1E3280A90(0, &unk_1ECF39558, 0x1E69DCFE0);
  v1 = sub_1E42062A4();
  [v0 setTabs:v1 animated:0];
}

uint64_t sub_1E3E16B14()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 1048))() & 1;
}

void sub_1E3E16BA8()
{
  OUTLINED_FUNCTION_31_1();
  v247 = v2;
  v235 = v3;
  v4 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_20(v9 - v8);
  v10 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v241 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_20(v14 - v13);
  v238 = sub_1E4203FB4();
  OUTLINED_FUNCTION_0_10();
  v237 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_20(v18 - v17);
  v244 = sub_1E4204014();
  OUTLINED_FUNCTION_0_10();
  v239 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_20(v22);
  v23 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_18_6();
  v246 = v28;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_18_6();
  v245 = v30;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v218 - v37;
  OUTLINED_FUNCTION_26_3();
  v40 = (*((*MEMORY[0x1E69E7D40] & v39) + 0x208))();
  if (!v40)
  {
    goto LABEL_6;
  }

  v41 = v40;
  v229 = v10;
  v231 = v0;
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  v43 = (*(v42 + 928))();
  if (!v43)
  {

    goto LABEL_6;
  }

  v44 = v43;
  v226 = v6;
  v45 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented;
  swift_beginAccess();
  if (*(&v41->isa + v45))
  {

LABEL_6:
    if (v247)
    {
      v46 = sub_1E324FBDC();
      (*(v25 + 16))(v1, v46, v23);
      v47 = sub_1E41FFC94();
      v48 = sub_1E42067F4();
      if (OUTLINED_FUNCTION_6_33(v48))
      {
        v49 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_9_11(v49);
        OUTLINED_FUNCTION_6_29();
        _os_log_impl(v50, v51, v52, v53, v54, 2u);
        OUTLINED_FUNCTION_51_2();
      }

      (*(v25 + 8))(v1, v23);
    }

LABEL_52:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v222 = v4;
  v221 = v45;
  v230 = v25;
  v227 = v44;
  v228 = v23;
  v225 = v41;
  OUTLINED_FUNCTION_21();
  v56 = (*(v55 + 632))();
  v57 = 0;
  v58 = *(v56 + 16);
  v59 = (v56 + 32);
  v60 = qword_1E42AD1A0;
  while (1)
  {
    if (v58 == v57)
    {
LABEL_15:

      v63 = [objc_opt_self() sharedInstance];
      v223 = [v63 isPlaybackUIBeingShown];

      OUTLINED_FUNCTION_26_3();
      v65 = (*((*MEMORY[0x1E69E7D40] & v64) + 0x1B8))();
      v224 = sub_1E374E8E4(v65, 2);
      v59 = *(*v227 + 952);

      v67 = v59(v66);

      OUTLINED_FUNCTION_197_1();
      v69 = [v59 v68];
      v70 = v228;
      if (v69)
      {
      }

      else
      {
        v71 = [objc_opt_self() sharedInstance];
        v72 = [v71 isPurchaseInProgress];

        if (!v72)
        {
          v60 = &selRef_setWaitingForTransactionToStart_;
          if (v224)
          {
            if (v58 != v57)
            {
              v74 = v67;
              if (v223)
              {
                goto LABEL_42;
              }

              v38 = &unk_1E429A000;
              v100 = 0;
LABEL_38:
              OUTLINED_FUNCTION_85();
              if ((*(v111 + 544))() & 1) != 0 || (v74)
              {
                goto LABEL_26;
              }

              if (v100)
              {
                goto LABEL_25;
              }

              OUTLINED_FUNCTION_85();
              if (((*(v112 + 568))() & 1) == 0)
              {
                goto LABEL_54;
              }

LABEL_42:
              v100 = 0;
              goto LABEL_26;
            }

            v100 = 0;
            v101 = 1;
          }

          else
          {
            v100 = 0;
            v101 = 0;
          }

          v74 = v67;
          if (v247)
          {
            goto LABEL_29;
          }

          goto LABEL_46;
        }
      }

      OUTLINED_FUNCTION_85();
      v74 = v67;
      if (((*(v73 + 568))() & 1) == 0)
      {
        v220 = v67;
        sub_1E324FBDC();
        OUTLINED_FUNCTION_94_18();
        v75(v38);
        v76 = sub_1E41FFC94();
        v77 = sub_1E4206814();
        if (OUTLINED_FUNCTION_6_33(v77))
        {
          v78 = OUTLINED_FUNCTION_125_0();
          OUTLINED_FUNCTION_9_11(v78);
          OUTLINED_FUNCTION_6_29();
          _os_log_impl(v79, v80, v81, v82, v83, 2u);
          OUTLINED_FUNCTION_197_1();
          OUTLINED_FUNCTION_6_0();
        }

        (*(v230 + 8))(v38, v70);
        OUTLINED_FUNCTION_67_1();
        (*((*MEMORY[0x1E69E7D40] & v84) + 0x240))(1);
        sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
        v219 = sub_1E4206A04();
        OUTLINED_FUNCTION_129_10();
        sub_1E4204004();
        v85 = v236;
        *v236 = 5;
        (*(v237 + 104))(v85, *MEMORY[0x1E69E7F48], v238);
        OUTLINED_FUNCTION_143();
        MEMORY[0x1E690E9C0](v38, v85);
        v86 = OUTLINED_FUNCTION_11_6();
        v87(v86);
        OUTLINED_FUNCTION_190_2();
        v239 = *(v67 + 8);
        v239(v38, v244);
        OUTLINED_FUNCTION_4_0();
        v88 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v253 = sub_1E3E24D2C;
        v254 = v88;
        OUTLINED_FUNCTION_15_123();
        *(&v250 + 1) = 1107296256;
        OUTLINED_FUNCTION_14_1();
        v251 = v89;
        v252 = &block_descriptor_30_0;
        v59 = _Block_copy(&v250);

        v90 = v240;
        sub_1E4203FE4();
        *&v250 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_7_180();
        sub_1E3274BD0(v91, v92);
        v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
        OUTLINED_FUNCTION_47();
        sub_1E328FCF4(v94, v95, &qword_1E429B000);
        v96 = v242;
        OUTLINED_FUNCTION_217();
        sub_1E42072E4();
        v97 = v243;
        v98 = v219;
        MEMORY[0x1E69112E0](v243, v90, v96, v59);
        OUTLINED_FUNCTION_197_1();
        _Block_release(v99);

        (*(v226 + 8))(v96, v93);
        (*(v241 + 8))(v90, v229);
        v239(v97, v244);
        v74 = v220;
      }

      v60 = &selRef_setWaitingForTransactionToStart_;
      if (!v224)
      {
        v101 = 0;
        v100 = 1;
LABEL_28:
        if (v247)
        {
LABEL_29:
          sub_1E324FBDC();
          OUTLINED_FUNCTION_94_18();
          v102 = v245;
          v103(v245);
          v104 = v59;
          v105 = sub_1E41FFC94();
          v106 = sub_1E4206814();
          if (OUTLINED_FUNCTION_262(v106))
          {
            v107 = OUTLINED_FUNCTION_237();
            *v107 = 67110656;
            *(v107 + 4) = v101;
            *(v107 + 8) = 1024;
            *(v107 + 10) = v102;
            *(v107 + 14) = 1024;
            *(v107 + 16) = v223;
            *(v107 + 20) = 1024;
            v108 = MEMORY[0x1E69E7D40];
            *(v107 + 22) = (*((*MEMORY[0x1E69E7D40] & *v104) + 0x220))() & 1;

            *(v107 + 26) = 1024;
            *(v107 + 28) = v74 & 1;
            *(v107 + 32) = 1024;
            *(v107 + 34) = v100;
            *(v107 + 38) = 1024;
            *(v107 + 40) = (*((*v108 & *v104) + 0x238))() & 1;

            _os_log_impl(&dword_1E323F000, v105, v106, "    RootSplitViewController:: account message: post animated sidebar opening: can't show message because:\n    mode is sidebar = %{BOOL}d, have items besides library = %{BOOL}d,\n    is playback happening = %{BOOL}d, sidebar opening in progress = %{BOOL}d,\n    waiting for UM update = %{BOOL}d, something presented overtop = %{BOOL}d,\n    waiting for presentation dismissal = %{BOOL}d", v107, 0x2Cu);
            OUTLINED_FUNCTION_55();
            OUTLINED_FUNCTION_176();

            OUTLINED_FUNCTION_243();
          }

          else
          {

            OUTLINED_FUNCTION_176();

            v105 = v225;
          }

          OUTLINED_FUNCTION_15_5();
          v110 = v245;
LABEL_50:
          v120 = &v255 + 8;
LABEL_51:
          v109(v110, *(v120 - 32));
          goto LABEL_52;
        }

LABEL_46:
        sub_1E324FBDC();
        OUTLINED_FUNCTION_94_18();
        v113 = v246;
        v114(v246);
        v115 = v59;
        v116 = sub_1E41FFC94();
        v117 = sub_1E4206814();
        if (OUTLINED_FUNCTION_262(v117))
        {
          v118 = OUTLINED_FUNCTION_237();
          *v118 = 67110656;
          *(v118 + 4) = v101;
          *(v118 + 8) = 1024;
          *(v118 + 10) = v113;
          *(v118 + 14) = 1024;
          *(v118 + 16) = v223;
          *(v118 + 20) = 1024;
          v119 = MEMORY[0x1E69E7D40];
          *(v118 + 22) = (*((*MEMORY[0x1E69E7D40] & *v115) + 0x220))() & 1;

          *(v118 + 26) = 1024;
          *(v118 + 28) = v74 & 1;
          *(v118 + 32) = 1024;
          *(v118 + 34) = v100;
          *(v118 + 38) = 1024;
          *(v118 + 40) = (*((*v119 & *v115) + 0x238))() & 1;

          _os_log_impl(&dword_1E323F000, v116, v117, "    RootSplitViewController:: account message: can't show message because:\n    mode is sidebar = %{BOOL}d, have items besides library = %{BOOL}d,\n    is playback happening = %{BOOL}d, sidebar opening in progress = %{BOOL}d,\n    waiting for UM update = %{BOOL}d, something presented overtop = %{BOOL}d,\n    waiting for presentation dismissal = %{BOOL}d", v118, 0x2Cu);
          OUTLINED_FUNCTION_21_0();
          OUTLINED_FUNCTION_176();

          OUTLINED_FUNCTION_243();
        }

        else
        {

          OUTLINED_FUNCTION_176();

          v116 = v225;
        }

        OUTLINED_FUNCTION_15_5();
        v110 = v246;
        goto LABEL_50;
      }

      if (v58 == v57 || (v223 & 1) != 0)
      {
LABEL_25:
        v100 = 1;
LABEL_26:
        v101 = 1;
        goto LABEL_28;
      }

      v38 = &unk_1E429A000;
      v100 = 1;
      goto LABEL_38;
    }

    if (v57 >= *(v56 + 16))
    {
      break;
    }

    sub_1E38C6028(v59, &v250);
    sub_1E3251BE8(&v250, &v255);
    v61 = OUTLINED_FUNCTION_11_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(v61, v62);
    type metadata accessor for LibrarySidebarItem();
    if (!swift_dynamicCast())
    {
      goto LABEL_15;
    }

    ++v57;

    v59 = (v59 + 40);
  }

  __break(1u);
LABEL_54:
  v121 = [objc_opt_self() v60[64]];
  v122 = [v121 accountMessageConfig];

  type metadata accessor for UnifiedMessagingAccountMessageViewModel();
  v123 = v225;
  v124 = sub_1E375D4BC();
  if (!v124)
  {
    v255 = 0u;
    v256 = 0u;
    v129 = v247;
    goto LABEL_59;
  }

  v248 = sub_1E4205F14();
  v249 = v125;

  sub_1E4207414();
  sub_1E375D7E8(v124, &v255, &v250);

  v126 = sub_1E375D84C(&v250);
  v129 = v247;
  if (!*(&v256 + 1))
  {
LABEL_59:
    sub_1E325F7FC(&v255, &unk_1ECF296E0, &unk_1E4298030);
    if (v124)
    {
      goto LABEL_60;
    }

    v255 = 0u;
    v256 = 0u;
    v130 = 1;
    goto LABEL_65;
  }

  if (OUTLINED_FUNCTION_238_0(v126, v127, v128, MEMORY[0x1E69E6370]))
  {
    v130 = v250;
    goto LABEL_61;
  }

LABEL_60:
  v130 = 1;
LABEL_61:
  v248 = sub_1E4205F14();
  v249 = v131;
  sub_1E4207414();
  sub_1E375D7E8(v124, &v255, &v250);

  v132 = sub_1E375D84C(&v250);
  if (!*(&v256 + 1))
  {
LABEL_65:
    sub_1E325F7FC(&v255, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_66;
  }

  if (OUTLINED_FUNCTION_238_0(v132, v133, v134, MEMORY[0x1E69E6370]))
  {
    v135 = v250;
    goto LABEL_67;
  }

LABEL_66:
  v135 = 1;
LABEL_67:
  v247 = v135;
  if ([v122 alwaysForceOpenSidebarAnimated])
  {
    v136 = 1;
  }

  else
  {
    v137 = [v122 alwaysForceOpenSidebarNonAnimated];
    v136 = (v137 ^ 1) & v130 & v235;
  }

  v138 = [v59 sidebar];
  v139 = [v138 isHidden];

  OUTLINED_FUNCTION_67_1();
  if ((*((*MEMORY[0x1E69E7D40] & v140) + 0x1C0))())
  {
    if (v129)
    {
      sub_1E324FBDC();
      v141 = v230;
      OUTLINED_FUNCTION_131_0();
      v142 = v233;
      v143 = v228;
      v144(v233);
      v145 = sub_1E41FFC94();
      v146 = sub_1E42067F4();
      if (OUTLINED_FUNCTION_6_33(v146))
      {
        v147 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_9_11(v147);
        OUTLINED_FUNCTION_6_29();
        _os_log_impl(v148, v149, v150, v151, v152, 2u);
        OUTLINED_FUNCTION_51_2();
      }

      else
      {
      }

      (*(v141 + 8))(v142, v143);
      goto LABEL_52;
    }

LABEL_80:
    OUTLINED_FUNCTION_176();

    goto LABEL_52;
  }

  v246 = v122;
  if (v129)
  {
    if (v139)
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_0_11();
      v153 = OUTLINED_FUNCTION_209_0();
      v154(v153);
      v155 = sub_1E41FFC94();
      v156 = sub_1E42067F4();
      if (OUTLINED_FUNCTION_6_33(v156))
      {
        v157 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_9_11(v157);
        OUTLINED_FUNCTION_6_29();
        _os_log_impl(v158, v159, v160, v161, v162, 2u);
        OUTLINED_FUNCTION_51_2();
      }

      v163 = OUTLINED_FUNCTION_191_3();
      v164(v163);
LABEL_92:
      OUTLINED_FUNCTION_15_8();
LABEL_93:
      sub_1E3E20EA4();
      OUTLINED_FUNCTION_176();

      *(&v123->isa + v221) = 1;
      goto LABEL_52;
    }

LABEL_89:
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v189 = OUTLINED_FUNCTION_209_0();
    v190(v189);
    v191 = sub_1E41FFC94();
    v192 = sub_1E4206814();
    if (OUTLINED_FUNCTION_6_33(v192))
    {
      v193 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v193);
      OUTLINED_FUNCTION_6_29();
      _os_log_impl(v194, v195, v196, v197, v198, 2u);
      OUTLINED_FUNCTION_51_2();
    }

    v199 = OUTLINED_FUNCTION_191_3();
    v200(v199);
    OUTLINED_FUNCTION_224();
    goto LABEL_93;
  }

  v165 = sub_1E324FBDC();
  v245 = *(v230 + 16);
  v245(v234, v165, v228);
  v166 = sub_1E41FFC94();
  v167 = sub_1E4206814();
  if (OUTLINED_FUNCTION_104(v167))
  {
    v168 = swift_slowAlloc();
    *v168 = 67109632;
    *(v168 + 4) = v130;
    *(v168 + 8) = 1024;
    *(v168 + 10) = v136;
    *(v168 + 14) = 1024;
    *(v168 + 16) = v247;
    OUTLINED_FUNCTION_136();
    _os_log_impl(v169, v170, v171, v172, v168, 0x14u);
    v123 = v225;
    OUTLINED_FUNCTION_6_0();
  }

  v173 = *(v230 + 8);
  v173(v234, v228);
  if ((v139 & 1) == 0)
  {
    goto LABEL_89;
  }

  if (!v130)
  {
    goto LABEL_92;
  }

  if ((v247 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_8();
    sub_1E3E20EA4();
    *(&v123->isa + v221) = 1;
  }

  if (v136)
  {
    OUTLINED_FUNCTION_197_1();
    OUTLINED_FUNCTION_85();
    (*(v174 + 552))(1);
    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v175 = sub_1E4206A04();
    OUTLINED_FUNCTION_4_0();
    v176 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v177 = swift_allocObject();
    *(v177 + 16) = v176;
    *(v177 + 24) = v247;
    *(v177 + 25) = v235 & 1;
    v253 = sub_1E3E24D1C;
    v254 = v177;
    OUTLINED_FUNCTION_15_123();
    *(&v250 + 1) = *(v38 + 375);
    OUTLINED_FUNCTION_14_1();
    v251 = v178;
    v252 = &block_descriptor_26_0;
    v179 = _Block_copy(&v250);

    v180 = v240;
    sub_1E4203FE4();
    *&v250 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_7_180();
    sub_1E3274BD0(v181, v182);
    v183 = OUTLINED_FUNCTION_32_7();
    __swift_instantiateConcreteTypeFromMangledNameV2(v183, v184);
    OUTLINED_FUNCTION_47();
    sub_1E328FCF4(v185, v186, &qword_1E429B000);
    v187 = v242;
    OUTLINED_FUNCTION_217();
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v180, v187, v179);

    _Block_release(v179);
    OUTLINED_FUNCTION_176();

    OUTLINED_FUNCTION_243();

    OUTLINED_FUNCTION_15_5();
    v188(v187, &qword_1E429B000);
    OUTLINED_FUNCTION_15_5();
    v110 = v180;
    v120 = &v256;
    goto LABEL_51;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_4_0();
  v201 = swift_allocObject();
  v202 = v231;
  *(v201 + 16) = v231;
  OUTLINED_FUNCTION_2_4();
  v203 = swift_allocObject();
  *(v203 + 16) = sub_1E3E24CC0;
  *(v203 + 24) = v201;
  v253 = sub_1E379E500;
  v254 = v203;
  OUTLINED_FUNCTION_15_123();
  *(&v250 + 1) = *(v38 + 375);
  OUTLINED_FUNCTION_67();
  v251 = v204;
  v252 = &block_descriptor_121;
  v205 = _Block_copy(&v250);
  v202;

  v206 = OUTLINED_FUNCTION_116_8();
  [v206 v207];
  _Block_release(v205);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v209 = sub_1E324FBDC();
    v245(v232, v209, v228);
    v210 = sub_1E41FFC94();
    v211 = sub_1E4206814();
    if (OUTLINED_FUNCTION_20_11(v211))
    {
      v212 = OUTLINED_FUNCTION_125_0();
      *v212 = 0;
      OUTLINED_FUNCTION_20_34();
      _os_log_impl(v213, v214, v215, v216, v212, 2u);
      OUTLINED_FUNCTION_65_0();
    }

    v173(v232, v228);
    if (v247)
    {
      OUTLINED_FUNCTION_224();
      sub_1E3E20EA4();
      OUTLINED_FUNCTION_176();

      v217 = v225;
      *(&v225->isa + v221) = 1;

      goto LABEL_52;
    }

    OUTLINED_FUNCTION_243();

    goto LABEL_80;
  }

  __break(1u);
}

void sub_1E3E18440()
{
  OUTLINED_FUNCTION_31_1();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v365 - v10;
  v400 = MEMORY[0x1E69E7CC0];
  v12 = sub_1E324FBDC();
  v13 = *(v4 + 16);
  v375 = v12;
  v377 = v4 + 16;
  v376 = v13;
  v13(v11);
  v14 = v0;
  v15 = sub_1E41FFC94();
  v16 = sub_1E4206814();

  v17 = os_log_type_enabled(v15, v16);
  v18 = &qword_1ECF39000;
  v19 = MEMORY[0x1E69E7D40];
  v387 = v1;
  v388 = v14;
  if (v17)
  {
    v20 = OUTLINED_FUNCTION_6_21();
    v21 = OUTLINED_FUNCTION_100();
    v396 = v21;
    *v20 = 136315138;
    OUTLINED_FUNCTION_6_41();
    v23 = (*(v22 + 440))();
    LOBYTE(v392) = v23;
    sub_1E3E25614(v23, v24, v25);
    v26 = sub_1E4207944();
    v28 = sub_1E3270FC8(v26, v27, &v396);

    *(v20 + 4) = v28;
    OUTLINED_FUNCTION_235(&dword_1E323F000, v29, v30, "RootSplitViewController:: updateUI, mode=%s");
    __swift_destroy_boxed_opaque_existential_1(v21);
    v18 = &qword_1ECF39000;
    OUTLINED_FUNCTION_6_0();
    v14 = v388;
    OUTLINED_FUNCTION_6_0();
  }

  v374 = *(v4 + 8);
  v374(v11, v2);
  v31 = v4;
  v32 = *&v14[v18[154]];
  OUTLINED_FUNCTION_6_41();
  v33 += 55;
  v34 = *v33;
  v35 = (*v33)();
  v36 = sub_1E374E8E4(v35, 2);
  v378 = v2;
  v379 = v32;
  if (!v36)
  {
    v240 = v34();
    sub_1E374E8E4(v240, 1);
    OUTLINED_FUNCTION_154_5();
    v366 = v4;
    if ((v241 & 1) == 0)
    {
      v45 = MEMORY[0x1E69E7CC0];
      v41 = MEMORY[0x1E69E7D40];
      goto LABEL_123;
    }

    v41 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_21();
    v243 = (*(v242 + 736))();
    v244 = sub_1E32AE9B0(v243);
    if (!v244)
    {

      v45 = MEMORY[0x1E69E7CC0];
      goto LABEL_123;
    }

    if (v244 < 1)
    {
      goto LABEL_142;
    }

    OUTLINED_FUNCTION_8_9();
    v385 = (v243 & 0xC000000000000001);
    v380 = v31 + 8;
    v45 = MEMORY[0x1E69E7CC0];
    v246 += 82;
    v384 = *v246;
    v383 = v246;
    v368 = @"search";
    v367 = @"UIA.TV.Tab.";
    *&v247 = 136315138;
    v369 = v247;
    v382 = v243;
    v381 = v248;
    while (1)
    {
      v387 = v245;
      if (v385)
      {
        v249 = MEMORY[0x1E6911E60](v245, v243);
      }

      else
      {
        v249 = *(v243 + 8 * v245 + 32);
      }

      v250 = v249;
      v251 = &v249[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier];
      v252 = *&v249[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier];
      v253 = *&v249[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8];

      v254 = v379;
      OUTLINED_FUNCTION_143();
      v255();
      OUTLINED_FUNCTION_134_2();
      v396 = v252;
      v397 = v253;
      v256 = sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
      sub_1E3CA4D00(&v396, v254, v34, MEMORY[0x1E69E6158], v256, MEMORY[0x1E69E6168]);

      v257 = v392;
      if (v392)
      {
        objc_opt_self();
        OUTLINED_FUNCTION_138_1();
        if (swift_dynamicCastObjCClass())
        {
          OUTLINED_FUNCTION_56_20();
          type metadata accessor for RootHostingViewController();
          v258 = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
          OUTLINED_FUNCTION_8_9();
          v260 = *(v259 + 152);
          v261 = v257;
          v386 = v258;
          v260(v14);

          v262 = *v251;
          v263 = v251[1];
          v265 = v262 == sub_1E4205F14() && v263 == v264;
          v371 = v261;
          if (v265)
          {
          }

          else
          {
            OUTLINED_FUNCTION_116_10();
            v266 = sub_1E42079A4();

            if ((v266 & 1) == 0)
            {
              v267 = *&v250[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_title + 8];
              v268 = OUTLINED_FUNCTION_231_0();

              v269 = sub_1E395DF10(v268, &off_1F5D824A8);
              v270 = *v251;
              v271 = v251[1];
              OUTLINED_FUNCTION_4_0();
              v272 = swift_allocObject();
              v273 = v386;
              *(v272 + 16) = v386;
              objc_allocWithZone(MEMORY[0x1E69DCFE0]);
              v274 = v273;

              v275 = sub_1E3E25A30;
              v276 = v370;
              v277 = v267;
              v278 = v269;
              v279 = v270;
              v280 = v271;
              v281 = v272;
              v282 = &block_descriptor_109_2;
LABEL_108:
              v300 = sub_1E3E23F9C(v276, v277, v278, v279, v280, v275, v281, v282);
              v301 = v372;
              OUTLINED_FUNCTION_141_8();
              v303 = *(v302 - 256);
              OUTLINED_FUNCTION_22_77();
              v304();
              v305 = v300;
              v306 = v250;
              v307 = sub_1E41FFC94();
              v308 = sub_1E4206814();

              if (OUTLINED_FUNCTION_84_1())
              {
                OUTLINED_FUNCTION_6_21();
                v309 = OUTLINED_FUNCTION_16_15();
                OUTLINED_FUNCTION_165_7(v309);

                v310 = OUTLINED_FUNCTION_39_0();
                v313 = sub_1E3270FC8(v310, v311, v312);

                *(v303 + 4) = v313;
                OUTLINED_FUNCTION_53_15(&dword_1E323F000, v307, v308, "RootSplitViewController:: updateUI, mode=tabbar, tabId=%s)", v365);
                __swift_destroy_boxed_opaque_existential_1(v301);
                OUTLINED_FUNCTION_7_9();
                OUTLINED_FUNCTION_51_2();
              }

              else
              {

                OUTLINED_FUNCTION_74();
              }

              OUTLINED_FUNCTION_151_7();
              v314();
              v315 = v371;
              OUTLINED_FUNCTION_176();
              v316 = sub_1E4205F14();
              v317 = *v251;
              v318 = v251[1];
              v396 = v316;
              v397 = v319;
              v320 = v305;

              MEMORY[0x1E69109E0](v317, v318);

              sub_1E37FB7F0(v396, v397, v320, &selRef_setAccessibilityIdentifier_);

              MEMORY[0x1E6910BF0]();
              OUTLINED_FUNCTION_193_2();
              v34 = *(v321 + 16);
              v322 = *(v321 + 24);
              if (v34 >= v322 >> 1)
              {
                OUTLINED_FUNCTION_35(v322);
                sub_1E42062F4();
              }

              sub_1E4206324();

              v45 = v400;
              OUTLINED_FUNCTION_154_5();
              v14 = v388;
              goto LABEL_114;
            }
          }

          v291 = *&v250[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_title + 8];
          v292 = OUTLINED_FUNCTION_231_0();

          v293 = sub_1E395DF10(v292, &off_1F5D824A8);
          v295 = *v251;
          v294 = v251[1];
          OUTLINED_FUNCTION_4_0();
          v296 = swift_allocObject();
          v297 = v386;
          *(v296 + 16) = v386;
          v298 = objc_allocWithZone(MEMORY[0x1E69DCF20]);
          OUTLINED_FUNCTION_38();

          v299 = v297;
          v275 = sub_1E3E25668;
          v276 = v370;
          v277 = v291;
          v278 = v293;
          v279 = v295;
          v280 = v294;
          v281 = v296;
          v282 = &block_descriptor_106_0;
          goto LABEL_108;
        }

        v14 = v388;
      }

      OUTLINED_FUNCTION_141_8();
      OUTLINED_FUNCTION_22_77();
      v283();
      v284 = v250;
      v285 = sub_1E41FFC94();
      v34 = sub_1E4206814();

      if (OUTLINED_FUNCTION_84_1())
      {
        OUTLINED_FUNCTION_6_21();
        v286 = OUTLINED_FUNCTION_16_15();
        OUTLINED_FUNCTION_165_7(v286);
        v287 = *v251;
        v288 = v251[1];

        v289 = sub_1E3270FC8(v287, v288, &v396);
        v14 = v388;

        *(v252 + 4) = v289;
        OUTLINED_FUNCTION_53_15(&dword_1E323F000, v285, v34, "RootSplitViewController:: updateUI, mode=tabbar, missing controller, tabId=%s", v365);
        __swift_destroy_boxed_opaque_existential_1(v253);
        OUTLINED_FUNCTION_7_9();
        OUTLINED_FUNCTION_51_2();
      }

      else
      {
      }

      OUTLINED_FUNCTION_123_1();
      OUTLINED_FUNCTION_151_7();
      v290();
      OUTLINED_FUNCTION_154_5();
      v41 = MEMORY[0x1E69E7D40];
LABEL_114:
      v243 = v382;
      v245 = v387 + 1;
      if (v381 == v387 + 1)
      {
LABEL_120:

        goto LABEL_123;
      }
    }
  }

  OUTLINED_FUNCTION_6_41();
  v37 += 79;
  v38 = *v37;
  v39 = *((*v37)() + 16);

  if (!v39)
  {
    OUTLINED_FUNCTION_22_77();
    v323();
    v324 = sub_1E41FFC94();
    v325 = sub_1E4206814();
    if (OUTLINED_FUNCTION_104(v325))
    {
      v326 = OUTLINED_FUNCTION_125_0();
      *v326 = 0;
      OUTLINED_FUNCTION_136();
      _os_log_impl(v327, v328, v329, v330, v326, 2u);
      OUTLINED_FUNCTION_7_9();
    }

    OUTLINED_FUNCTION_132_2();
    v331();
LABEL_137:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v41 = v19;
  v366 = v31;
  v42 = (v38)(v40);
  v373 = *(v42 + 16);
  if (!v373)
  {

    v45 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_154_5();
LABEL_123:
    OUTLINED_FUNCTION_141_8();
    OUTLINED_FUNCTION_22_77();
    v332();
    v333 = v14;

    v334 = sub_1E41FFC94();
    v335 = sub_1E4206814();

    if (os_log_type_enabled(v334, v335))
    {
      LODWORD(v388) = v335;
      v336 = swift_slowAlloc();
      v337 = swift_slowAlloc();
      v338 = v379;
      v387 = v337;
      v396 = v337;
      *v336 = 136315394;
      v339 = (*((*v41 & *v338) + 0x1B8))();
      LOBYTE(v392) = v339;
      sub_1E3E25614(v339, v340, v341);
      v342 = sub_1E4207944();
      sub_1E3270FC8(v342, v343, &v396);
      OUTLINED_FUNCTION_50();

      *(v336 + 4) = &v392;
      *(v336 + 12) = 2080;
      v344 = sub_1E32AE9B0(v45);
      v345 = MEMORY[0x1E69E7CC0];
      if (v344)
      {
        v346 = v344;
        v392 = MEMORY[0x1E69E7CC0];
        sub_1E377FD30(0, v344 & ~(v344 >> 63), 0);
        if (v346 < 0)
        {
          goto LABEL_141;
        }

        v385 = v334;
        v386 = v333;
        v347 = 0;
        v345 = v392;
        do
        {
          if ((v45 & 0xC000000000000001) != 0)
          {
            v348 = MEMORY[0x1E6911E60](v347, v45);
          }

          else
          {
            v348 = *(v45 + 8 * v347 + 32);
          }

          v349 = v348;
          v350 = [v348 identifier];
          v351 = sub_1E4205F14();
          v353 = v352;

          v392 = v345;
          v355 = *(v345 + 16);
          v354 = *(v345 + 24);
          if (v355 >= v354 >> 1)
          {
            v357 = OUTLINED_FUNCTION_35(v354);
            sub_1E377FD30(v357, v355 + 1, 1);
            v345 = v392;
          }

          ++v347;
          *(v345 + 16) = v355 + 1;
          v356 = v345 + 16 * v355;
          *(v356 + 32) = v351;
          *(v356 + 40) = v353;
        }

        while (v346 != v347);
        OUTLINED_FUNCTION_154_5();
        v334 = v385;
        v333 = v386;
      }

      v359 = MEMORY[0x1E6910C30](v345, MEMORY[0x1E69E6158]);
      v361 = v360;

      v362 = sub_1E3270FC8(v359, v361, &v396);

      *(v336 + 14) = v362;

      _os_log_impl(&dword_1E323F000, v334, v388, "RootSplitViewController:: Pad: update UI: mode=%s, with tabs %s", v336, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_7_9();

      OUTLINED_FUNCTION_132_2();
      v363();
    }

    else
    {

      OUTLINED_FUNCTION_13_8();
      OUTLINED_FUNCTION_132_2();
      v358();
    }

    sub_1E3280A90(0, &unk_1ECF39558, 0x1E69DCFE0);
    v364 = sub_1E42062A4();

    [v333 setTabs:v364 animated:1];

    goto LABEL_137;
  }

  v43 = 0;
  v372 = (v42 + 32);
  v382 = @"search";
  *&v369 = @"UIA.TV.Tab.";
  v44 = MEMORY[0x1E69E7CC0];
  v45 = MEMORY[0x1E69E7CC0];
  v371 = v42;
  while (1)
  {
    if (v43 >= *(v42 + 16))
    {
      goto LABEL_140;
    }

    v380 = v43;
    sub_1E38C6028(&v372[5 * v43], &v396);
    OUTLINED_FUNCTION_70(&v396);
    v46 = OUTLINED_FUNCTION_26_1();
    if (v47(v46))
    {
      break;
    }

    v98 = OUTLINED_FUNCTION_9_141(&v396);
    v99(v98);
    OUTLINED_FUNCTION_26_90();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
    OUTLINED_FUNCTION_156_1();
    sub_1E4207604();
    OUTLINED_FUNCTION_12_1();

    v101 = *(AssociatedTypeWitness + 16);
    if (v101)
    {
      v387 = AssociatedTypeWitness;
      v102 = AssociatedTypeWitness + 32;
      while (1)
      {
        sub_1E38C6028(v102, &v392);
        v103 = OUTLINED_FUNCTION_203_2();
        sub_1E3E1A488(v103, v104);
        v106 = v105;
        __swift_project_boxed_opaque_existential_1(&v392, v394);
        v107 = OUTLINED_FUNCTION_3_194();
        v109 = v108(v107);
        v111 = v110;
        if (v109 == sub_1E4205F14() && v111 == v112)
        {
        }

        else
        {
          OUTLINED_FUNCTION_74();
          OUTLINED_FUNCTION_116_10();
          v114 = sub_1E42079A4();

          if ((v114 & 1) == 0)
          {
            v115 = v394;
            OUTLINED_FUNCTION_0_257(&v392, v394);
            v116(v115);
            sub_1E4205ED4();
            OUTLINED_FUNCTION_11_5();

            v117 = [v14 tabForIdentifier_];

            if (v117)
            {
              v118 = [v117 parent];
              if (!v118)
              {
                OUTLINED_FUNCTION_9_13();
                v161 = *(v163 + 200);
                v162 = v117;
                v139 = v162;
                goto LABEL_44;
              }

              v119 = v118;
            }

            OUTLINED_FUNCTION_34_7(&v392, v394);
            v120 = OUTLINED_FUNCTION_38();
            v121(v120);
            OUTLINED_FUNCTION_9_9();
            OUTLINED_FUNCTION_9_13();
            (*(v122 + 200))();
            v14 = v394;
            v123 = OUTLINED_FUNCTION_203_2();
            OUTLINED_FUNCTION_0_257(v123, v124);
            v125(v14);
            OUTLINED_FUNCTION_108_3();
            v126 = objc_allocWithZone(MEMORY[0x1E69DCFE0]);
            v127 = OUTLINED_FUNCTION_91_16();
            v134 = sub_1E3E23F9C(v127, v128, v129, v130, v131, v132, v133, &block_descriptor_109_2);
            goto LABEL_37;
          }
        }

        v135 = v394;
        OUTLINED_FUNCTION_0_257(&v392, v394);
        v136(v135);
        sub_1E4205ED4();
        OUTLINED_FUNCTION_11_5();

        v137 = [v14 tabForIdentifier_];

        if (v137)
        {
          objc_opt_self();
          OUTLINED_FUNCTION_20_2();
          v138 = swift_dynamicCastObjCClass();
          if (v138)
          {
            v139 = v138;
            v140 = [v138 parent];
            if (!v140)
            {
              OUTLINED_FUNCTION_9_13();
              v161 = *(v160 + 200);
              v162 = v137;
LABEL_44:
              v164 = v161(v162);
              [v139 setImage_];

              v165 = v394;
              OUTLINED_FUNCTION_34_7(&v392, v394);
              v166 = OUTLINED_FUNCTION_38();
              v167(v166);
              sub_1E4205ED4();
              OUTLINED_FUNCTION_11_5();

              [v139 setTitle_];

              goto LABEL_38;
            }
          }
        }

        OUTLINED_FUNCTION_34_7(&v392, v394);
        v141 = OUTLINED_FUNCTION_38();
        v142(v141);
        OUTLINED_FUNCTION_9_9();
        OUTLINED_FUNCTION_9_13();
        (*(v143 + 200))();
        v14 = v394;
        v144 = OUTLINED_FUNCTION_203_2();
        OUTLINED_FUNCTION_0_257(v144, v145);
        v146(v14);
        OUTLINED_FUNCTION_108_3();
        v147 = objc_allocWithZone(MEMORY[0x1E69DCF20]);
        v148 = OUTLINED_FUNCTION_91_16();
        v134 = sub_1E3E23F9C(v148, v149, v150, v151, v152, v153, v154, &block_descriptor_106_0);
LABEL_37:
        v139 = v134;
LABEL_38:
        OUTLINED_FUNCTION_8_9();
        AssociatedTypeWitness = *(v155 + 400);
        v156 = v139;
        (AssociatedTypeWitness)(v139);
        OUTLINED_FUNCTION_236();
        MEMORY[0x1E6910BF0]();
        OUTLINED_FUNCTION_193_2();
        v159 = *(v157 + 16);
        v158 = *(v157 + 24);
        if (v159 >= v158 >> 1)
        {
          OUTLINED_FUNCTION_35(v158);
          sub_1E42062F4();
        }

        OUTLINED_FUNCTION_74();
        sub_1E4206324();
        v45 = v400;

        __swift_destroy_boxed_opaque_existential_1(&v392);
        v102 += 40;
        if (!--v101)
        {

          goto LABEL_83;
        }
      }
    }

LABEL_84:
    OUTLINED_FUNCTION_199_0();
    v43 = AssociatedTypeWitness + 1;
    __swift_destroy_boxed_opaque_existential_1(&v396);
    v42 = v371;
    if (v43 == v373)
    {
      goto LABEL_120;
    }
  }

  v391 = v44;
  v48 = v398;
  v49 = OUTLINED_FUNCTION_9_141(&v396);
  v50(v49);
  OUTLINED_FUNCTION_26_90();
  v51 = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
  OUTLINED_FUNCTION_156_1();
  v381 = v52;
  sub_1E4207604();
  OUTLINED_FUNCTION_12_1();

  if (*(v48 + 16))
  {
    v370 = v48;
    OUTLINED_FUNCTION_8_9();
    v55 += 74;
    v384 = *v55;
    v383 = v55;
    do
    {
      v386 = v53;
      v387 = v54;
      sub_1E38C6028(v53, &v392);
      v57 = v394;
      v56 = v395;
      v58 = OUTLINED_FUNCTION_203_2();
      v60 = __swift_project_boxed_opaque_existential_1(v58, v59);
      v61 = *(v56 + 8);
      v62 = *(v61 + 16);
      v62(v57, v61);
      OUTLINED_FUNCTION_143();
      v64 = v63();
      if (*(v64 + 16) && (v65 = OUTLINED_FUNCTION_53(), v67 = sub_1E327D33C(v65, v66), (v68 & 1) != 0))
      {
        v69 = *(*(v64 + 56) + 8 * v67);

        v70 = MEMORY[0x1E69E7D40];
      }

      else
      {

        v385 = type metadata accessor for SideBarItemConfig();
        v71 = [v388 traitCollection];
        v73 = v394;
        v72 = v395;
        __swift_project_boxed_opaque_existential_1(&v392, v394);
        OUTLINED_FUNCTION_33_24();
        v74(v73, v72);
        OUTLINED_FUNCTION_106();
        swift_getAssociatedTypeWitness();
        OUTLINED_FUNCTION_20_2();
        sub_1E4207604();
        OUTLINED_FUNCTION_12_1();

        v75 = *(v72 + 16);

        v69 = sub_1E38D1344(v71, v75 != 0);
        v62(v57, v61);
        OUTLINED_FUNCTION_65_1();
        OUTLINED_FUNCTION_39();
        v70 = MEMORY[0x1E69E7D40];
        v77 = (*((*MEMORY[0x1E69E7D40] & v76) + 0x260))(v390);
        v79 = v78;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v389 = *v79;
        sub_1E3E25318(v69, v72, v60, isUniquelyReferenced_nonNull_native);
        *v79 = v389;

        v77(v390, 0);
      }

      OUTLINED_FUNCTION_34_7(&v392, v394);
      v81 = OUTLINED_FUNCTION_50();
      v82(v81);
      OUTLINED_FUNCTION_65_1();
      OUTLINED_FUNCTION_9_13();
      v84 = (*(v83 + 200))();
      v85 = v394;
      OUTLINED_FUNCTION_0_257(&v392, v394);
      v87 = v86(v85);
      v89 = v88;
      v90 = objc_allocWithZone(MEMORY[0x1E69DCFE0]);
      v91 = OUTLINED_FUNCTION_27_0();
      v93 = sub_1E3E23F9C(v91, v92, v84, v87, v89, 0, 0, &block_descriptor_109_2);
      v94 = *((*v70 & *v69) + 0x190);
      v95 = v93;
      v96 = OUTLINED_FUNCTION_87_0();
      v94(v96);
      OUTLINED_FUNCTION_236();
      v51 = v60;
      MEMORY[0x1E6910BF0]();
      v97 = *((v391 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v391 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v97 >> 1)
      {
        OUTLINED_FUNCTION_35(v97);
        sub_1E42062F4();
      }

      OUTLINED_FUNCTION_74();
      sub_1E4206324();

      v44 = v391;
      __swift_destroy_boxed_opaque_existential_1(&v392);
      v53 = v386 + 40;
      v54 = v387 - 1;
    }

    while (v387 != 1);

    v14 = v388;
  }

  else
  {
  }

  sub_1E3E1A488(&v396, v14);
  v169 = v168;
  v170 = v398;
  OUTLINED_FUNCTION_0_257(&v396, v398);
  v171(v170);
  sub_1E4205ED4();
  OUTLINED_FUNCTION_87_0();

  v172 = [v14 tabForIdentifier_];

  if (v172)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_20_2();
    v173 = swift_dynamicCastObjCClass();
    if (v173)
    {
      v174 = v173;
      v175 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_35_62();
      v177 = *(v176 + 200);
      v178 = v172;
      v179 = v177();
      v180 = OUTLINED_FUNCTION_297();
      [v180 v181];

      v182 = v399;
      OUTLINED_FUNCTION_34_7(&v396, v398);
      v183 = OUTLINED_FUNCTION_50();
      v184(v183);
      sub_1E4205ED4();
      OUTLINED_FUNCTION_50();

      [v174 setTitle_];

      sub_1E3280A90(0, &unk_1ECF39558, 0x1E69DCFE0);
      OUTLINED_FUNCTION_138_1();
      v185 = sub_1E42062A4();
      v186 = OUTLINED_FUNCTION_297();
      [v186 v187];

      goto LABEL_52;
    }
  }

  OUTLINED_FUNCTION_34_7(&v396, v398);
  v188 = OUTLINED_FUNCTION_50();
  v189(v188);
  OUTLINED_FUNCTION_65_1();
  v175 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_35_62();
  v191 = (*(v190 + 200))();
  v192 = v398;
  OUTLINED_FUNCTION_0_257(&v396, v398);
  v194 = v193(v192);
  v196 = v195;
  v197 = objc_allocWithZone(MEMORY[0x1E69DD010]);

  v198 = OUTLINED_FUNCTION_27_0();
  v174 = sub_1E3E240C4(v198, v199, v191, v194, v196, v44, v200, 0);
LABEL_52:
  OUTLINED_FUNCTION_4_154();
  v201 += 50;
  v202 = *v201;
  v203 = v201;
  v204 = v174;
  v202(v174);
  sub_1E3E1A708();
  v385 = v204;

  (*((*v175 & *v379) + 0x448))();
  if (!v205)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_65_1();
  v206 = v398;
  OUTLINED_FUNCTION_0_257(&v396, v398);
  if (v202 == v207(v206) && v203 == v208)
  {
  }

  else
  {
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_116_10();
    v210 = sub_1E42079A4();

    if ((v210 & 1) == 0)
    {
      goto LABEL_74;
    }
  }

  OUTLINED_FUNCTION_4_154();
  v212 = (*(v211 + 1088))();
  if (!v213)
  {
LABEL_74:

    v14 = v388;
LABEL_80:
    v230 = sub_1E4205F14();
    v232 = v231;
    v234 = v398;
    v233 = v399;
    __swift_project_boxed_opaque_existential_1(&v396, v398);
    v235 = v233[1];
    v236 = *(v235 + 16);
    v237 = v385;
    v236(v234, v235);
    OUTLINED_FUNCTION_206_1();
    v392 = v230;
    v393 = v232;

    MEMORY[0x1E69109E0](v234, v235);

    sub_1E37FB7F0(v392, v393, v237, &selRef_setAccessibilityIdentifier_);

    MEMORY[0x1E6910BF0]();
    OUTLINED_FUNCTION_193_2();
    AssociatedTypeWitness = *(v238 + 16);
    v239 = *(v238 + 24);
    if (AssociatedTypeWitness >= v239 >> 1)
    {
      OUTLINED_FUNCTION_35(v239);
      sub_1E42062F4();
    }

    OUTLINED_FUNCTION_27_0();
    sub_1E4206324();
    v45 = v400;

    v41 = MEMORY[0x1E69E7D40];
LABEL_83:
    v44 = MEMORY[0x1E69E7CC0];
    goto LABEL_84;
  }

  v214 = v212;
  v215 = v213;
  v384 = v169;
  v216 = [v385 children];
  v217 = OUTLINED_FUNCTION_118();
  sub_1E3280A90(v217, &unk_1ECF39558, 0x1E69DCFE0);
  OUTLINED_FUNCTION_40_3();
  v218 = sub_1E42062B4();

  v219 = sub_1E32AE9B0(v218);
  v220 = 0;
  v386 = (v218 & 0xC000000000000001);
  v387 = v219;
  while (1)
  {
    v14 = v388;
    if (v387 == v220)
    {

LABEL_79:
      v169 = v384;
      goto LABEL_80;
    }

    if (v386)
    {
      v229 = OUTLINED_FUNCTION_53_3();
      v221 = MEMORY[0x1E6911E60](v229);
    }

    else
    {
      if (v220 >= *((v218 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_139;
      }

      v221 = *(v218 + 8 * v220 + 32);
    }

    v222 = v221;
    if (__OFADD__(v220, 1))
    {
      break;
    }

    v223 = [v221 identifier];
    v224 = sub_1E4205F14();
    v226 = v225;

    if (v224 == v214 && v215 == v226)
    {

LABEL_78:

      [v385 setSelectedChild:v222];

      v14 = v388;
      goto LABEL_79;
    }

    OUTLINED_FUNCTION_116_10();
    v228 = sub_1E42079A4();

    if (v228)
    {

      goto LABEL_78;
    }

    ++v220;
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

void sub_1E3E1A2B0()
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  v3 = v2 - v1;
  OUTLINED_FUNCTION_120_1();
  v4 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  (*(v5 + 440))();
  OUTLINED_FUNCTION_26_3();
  v7 = (*((*v4 & v6) + 0x3F8))();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_89_5();
  v8(v3);
  v9 = sub_1E41FFC94();
  sub_1E42067F4();
  OUTLINED_FUNCTION_178();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_6_21();
    *v11 = 134217984;
    *(v11 + 4) = v7;
    OUTLINED_FUNCTION_36_4();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    OUTLINED_FUNCTION_55();
  }

  v17 = OUTLINED_FUNCTION_74();
  v18(v17);
  sub_1E3E152AC();
}

void sub_1E3E1A488(void *a1, void *a2)
{
  v5 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v6 = *(v4 + 8);
  v8 = *(v6 + 16);
  v7 = v6 + 16;
  v9 = OUTLINED_FUNCTION_38();
  v8(v9, v6);
  OUTLINED_FUNCTION_36_3();
  v11 = (*((*MEMORY[0x1E69E7D40] & v10) + 0x250))();
  v12 = OUTLINED_FUNCTION_39_0();
  v14 = sub_1E378A81C(v12, v13, v11);

  if (!v14)
  {
    type metadata accessor for SideBarItemConfig();
    v15 = [a2 traitCollection];
    v16 = a1[3];
    v17 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v16);
    OUTLINED_FUNCTION_33_24();
    v18(v16, v17);
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
    OUTLINED_FUNCTION_156_1();
    v19 = sub_1E4207604();

    v20 = *(v19 + 16);

    v21 = sub_1E38D1344(v15, v20 != 0);
    v22 = OUTLINED_FUNCTION_35_5();
    v23(v22);
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_36_3();
    v25 = (*((*MEMORY[0x1E69E7D40] & v24) + 0x260))(v30);
    v27 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v27;
    sub_1E3E25318(v21, v5, v7, isUniquelyReferenced_nonNull_native);
    *v27 = v29;

    v25(v30, 0);
  }

  OUTLINED_FUNCTION_229_0();
}

void sub_1E3E1A708()
{
  OUTLINED_FUNCTION_31_1();
  v143 = v1;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_56_20();
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v144 = v10 - v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_6();
  v141 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_6();
  v140 = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  v139 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_6();
  v138 = v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_3();
  v142 = v21;
  v22 = sub_1E4205F14();
  v24 = v23;
  v25 = v5[3];
  OUTLINED_FUNCTION_0_257(v5, v25);
  v26(v25);
  v146[0] = v22;
  v146[1] = v24;

  v27 = OUTLINED_FUNCTION_39_0();
  MEMORY[0x1E69109E0](v27);

  v28 = v0;

  sub_1E37FB7F0(v22, v24, v0, &selRef_setAccessibilityIdentifier_);
  if (*(v3 + OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_isHeader))
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_107_0();
    v29(v144);
    OUTLINED_FUNCTION_181_2();
    v30 = sub_1E41FFC94();
    v31 = sub_1E4206814();
    if (OUTLINED_FUNCTION_262(v31))
    {
      OUTLINED_FUNCTION_6_21();
      v145 = OUTLINED_FUNCTION_16_15();
      *v8 = 136315138;
      v33 = v147;
      v32 = v148;
      OUTLINED_FUNCTION_0_257(v146, v147);
      v35 = v34(v33);
      OUTLINED_FUNCTION_18_102(v35, v36);
      OUTLINED_FUNCTION_16_5();

      *(v8 + 4) = v32;
      OUTLINED_FUNCTION_53_15(&dword_1E323F000, v30, v31, "RootSplitViewController:: configureTabElement %s, preferredPlacement=sidebarOnly", v137);
      __swift_destroy_boxed_opaque_existential_1(v145);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_51_2();

      (*(v8 + 8))(v144, v6);
    }

    else
    {

      (*(v8 + 8))(v144, v6);
      __swift_destroy_boxed_opaque_existential_1(v146);
    }

    [v28 setPreferredPlacement_];
  }

  else
  {
    v37 = v6;
    v38 = v5[4];
    v39 = OUTLINED_FUNCTION_53_3();
    OUTLINED_FUNCTION_220_0(v39, v40);
    v41 = OUTLINED_FUNCTION_50();
    if (v42(v41, v38))
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_107_0();
      v43(v142);
      OUTLINED_FUNCTION_181_2();
      v44 = sub_1E41FFC94();
      v45 = sub_1E4206814();
      if (OUTLINED_FUNCTION_262(v45))
      {
        v46 = OUTLINED_FUNCTION_6_21();
        OUTLINED_FUNCTION_100();
        *v46 = 136315138;
        v48 = v147;
        v47 = v148;
        OUTLINED_FUNCTION_0_257(v146, v147);
        v50 = v49(v48);
        OUTLINED_FUNCTION_18_102(v50, v51);
        OUTLINED_FUNCTION_16_5();

        *(v46 + 4) = v47;
        _os_log_impl(&dword_1E323F000, v44, v45, "RootSplitViewController:: configureTabElement %s, preferredPlacement=pinned", v46, 0xCu);
        OUTLINED_FUNCTION_248();
        v28 = v0;
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_21_0();

        (*(v8 + 8))(v142, v6);
      }

      else
      {

        (*(v8 + 8))(v142, v6);
        __swift_destroy_boxed_opaque_existential_1(v146);
      }

      v77 = 4;
      v65 = v143;
    }

    else
    {
      v52 = v5[4];
      v53 = OUTLINED_FUNCTION_53_3();
      __swift_project_boxed_opaque_existential_1(v53, v54);
      v55 = OUTLINED_FUNCTION_50();
      v57 = v56(v55, v52);
      v58 = v5[4];
      v59 = OUTLINED_FUNCTION_53_3();
      OUTLINED_FUNCTION_220_0(v59, v60);
      v61 = OUTLINED_FUNCTION_50();
      v63 = v62(v61, v58);
      sub_1E324FBDC();
      v64 = v8;
      OUTLINED_FUNCTION_107_0();
      if (v57)
      {
        v65 = v143;
        if (v63)
        {
          v66 = OUTLINED_FUNCTION_116_8();
          v67(v66);
          OUTLINED_FUNCTION_181_2();
          v68 = sub_1E41FFC94();
          sub_1E4206814();
          OUTLINED_FUNCTION_178();
          if (os_log_type_enabled(v68, v69))
          {
            OUTLINED_FUNCTION_6_21();
            v70 = OUTLINED_FUNCTION_16_2();
            *v57 = 136315138;
            v72 = v147;
            v71 = v148;
            OUTLINED_FUNCTION_0_257(v146, v147);
            v74 = v73(v72);
            OUTLINED_FUNCTION_18_102(v74, v75);
            OUTLINED_FUNCTION_16_5();

            *(v57 + 4) = v71;
            OUTLINED_FUNCTION_112_12(&dword_1E323F000, v76, v37, "RootSplitViewController:: configureTabElement %s, preferredPlacement=default");
            __swift_destroy_boxed_opaque_existential_1(v70);
            OUTLINED_FUNCTION_55();
            OUTLINED_FUNCTION_7_9();

            (*(v64 + 8))(v138, v37);
          }

          else
          {

            v129 = OUTLINED_FUNCTION_32_7();
            v130(v129);
            __swift_destroy_boxed_opaque_existential_1(v146);
          }

          v77 = 1;
        }

        else
        {
          v108 = OUTLINED_FUNCTION_116_8();
          v109(v108);
          OUTLINED_FUNCTION_181_2();
          v110 = sub_1E41FFC94();
          sub_1E4206814();
          OUTLINED_FUNCTION_178();
          if (os_log_type_enabled(v110, v111))
          {
            OUTLINED_FUNCTION_6_21();
            v112 = OUTLINED_FUNCTION_16_2();
            *v57 = 136315138;
            v114 = v147;
            v113 = v148;
            OUTLINED_FUNCTION_0_257(v146, v147);
            v116 = v115(v114);
            OUTLINED_FUNCTION_18_102(v116, v117);
            OUTLINED_FUNCTION_16_5();

            *(v57 + 4) = v113;
            OUTLINED_FUNCTION_112_12(&dword_1E323F000, v118, v37, "RootSplitViewController:: configureTabElement %s, preferredPlacement=fixed");
            __swift_destroy_boxed_opaque_existential_1(v112);
            OUTLINED_FUNCTION_55();
            OUTLINED_FUNCTION_7_9();

            (*(v64 + 8))(v139, v37);
          }

          else
          {

            v133 = OUTLINED_FUNCTION_32_7();
            v134(v133);
            __swift_destroy_boxed_opaque_existential_1(v146);
          }

          v77 = 5;
        }
      }

      else
      {
        v65 = v143;
        if (v63)
        {
          v98 = OUTLINED_FUNCTION_116_8();
          v99(v98);
          OUTLINED_FUNCTION_181_2();
          v100 = sub_1E41FFC94();
          sub_1E4206814();
          OUTLINED_FUNCTION_178();
          if (os_log_type_enabled(v100, v101))
          {
            OUTLINED_FUNCTION_6_21();
            OUTLINED_FUNCTION_16_2();
            *v57 = 136315138;
            v103 = v147;
            v102 = v148;
            OUTLINED_FUNCTION_0_257(v146, v147);
            v105 = v104(v103);
            OUTLINED_FUNCTION_18_102(v105, v106);
            OUTLINED_FUNCTION_16_5();

            *(v57 + 4) = v102;
            OUTLINED_FUNCTION_112_12(&dword_1E323F000, v107, v37, "RootSplitViewController:: configureTabElement %s, preferredPlacement=optional");
            OUTLINED_FUNCTION_248();
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_7_9();

            (*(v64 + 8))(v140, v37);
          }

          else
          {

            v131 = OUTLINED_FUNCTION_32_7();
            v132(v131);
            __swift_destroy_boxed_opaque_existential_1(v146);
          }

          v77 = 2;
        }

        else
        {
          v119 = OUTLINED_FUNCTION_116_8();
          v120(v119);
          OUTLINED_FUNCTION_181_2();
          v121 = sub_1E41FFC94();
          v122 = sub_1E4206814();
          if (OUTLINED_FUNCTION_262(v122))
          {
            OUTLINED_FUNCTION_6_21();
            OUTLINED_FUNCTION_16_2();
            *v57 = 136315138;
            v124 = v147;
            v123 = v148;
            OUTLINED_FUNCTION_0_257(v146, v147);
            v126 = v125(v124);
            OUTLINED_FUNCTION_18_102(v126, v127);
            OUTLINED_FUNCTION_16_5();

            *(v57 + 4) = v123;
            OUTLINED_FUNCTION_112_12(&dword_1E323F000, v128, v122, "RootSplitViewController:: configureTabElement %s, preferredPlacement=sidebarOnly");
            OUTLINED_FUNCTION_248();
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_7_9();

            (*(v64 + 8))(v141, v37);
          }

          else
          {

            v135 = OUTLINED_FUNCTION_32_7();
            v136(v135);
            __swift_destroy_boxed_opaque_existential_1(v146);
          }

          v77 = 6;
        }
      }
    }

    [v28 setPreferredPlacement_];
    v78 = [v65 traitCollection];
    v79 = OUTLINED_FUNCTION_53_3();
    sub_1E3E10D08(v79, v80, 0);

    v81 = v5[4];
    v82 = OUTLINED_FUNCTION_53_3();
    __swift_project_boxed_opaque_existential_1(v82, v83);
    v84 = OUTLINED_FUNCTION_50();
    if (v85(v84, v81))
    {
      sub_1E3E1B070(v5);
    }

    else
    {
      v86 = v5[4];
      v87 = OUTLINED_FUNCTION_53_3();
      __swift_project_boxed_opaque_existential_1(v87, v88);
      v89 = OUTLINED_FUNCTION_50();
      v90(v89, v86);
      if (v91)
      {
        v92 = objc_allocWithZone(MEMORY[0x1E69DD798]);
        v93 = OUTLINED_FUNCTION_32_0();
        v95 = sub_1E3E23F38(v93, v94, 0);
        v96 = OUTLINED_FUNCTION_297();
        [v96 v97];
      }

      else
      {
        [v28 _setCompactRepresentation_];
      }
    }
  }

  OUTLINED_FUNCTION_25_2();
}

double sub_1E3E1B070(void *a1)
{
  v3 = a1[3];
  OUTLINED_FUNCTION_0_257(a1, v3);
  v4(v3);
  v6 = v5;
  OUTLINED_FUNCTION_67_1();
  (*((*MEMORY[0x1E69E7D40] & v7) + 0x250))();
  v8 = OUTLINED_FUNCTION_31_4();
  v34 = sub_1E378A81C(v8, v6, v1);

  v10 = v34;
  if (!v34)
  {
    return result;
  }

  if (*(v34 + OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_isHeader))
  {
    goto LABEL_6;
  }

  v11 = a1[4];
  v12 = OUTLINED_FUNCTION_114_0();
  OUTLINED_FUNCTION_220_0(v12, v13);
  v14 = OUTLINED_FUNCTION_31_4();
  if (v15(v14, v11) & 1) == 0 || (OUTLINED_FUNCTION_8_9(), ((*(v16 + 344))()))
  {
    v10 = v34;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_8_9();
  v18 = (*(v17 + 368))();
  if (v18)
  {
    v33 = v18;
    OUTLINED_FUNCTION_8_9();
    v20 = (*(v19 + 392))();
    if (v20)
    {
      v21 = v20;
      v22 = objc_allocWithZone(MEMORY[0x1E69DD798]);
      v32 = v33;
      v23 = sub_1E3E23F38(0, 0xE000000000000000, v33);
      [v21 _setCompactRepresentation_];

      v10 = v32;
    }

    else
    {

      v10 = v33;
    }

LABEL_6:

    return result;
  }

  OUTLINED_FUNCTION_8_9();
  (*(v24 + 352))(1);
  v25 = *sub_1E3CE4D98();
  OUTLINED_FUNCTION_4_0();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_2_4();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v34;
  v28 = v25;
  OUTLINED_FUNCTION_31_4();

  v29 = v34;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  (*(v30 + 224))(a1, 2, 0, v31 & 1, sub_1E3E24D34, v27);

  return result;
}

void sub_1E3E1B42C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25_3();
  v204 = v9;
  v10 = *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_manager);
  v11 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_16_89();
  v13 = *(v12 + 960);
  v14 = v13(1);
  v212.n128_u8[0] = v3;
  v209.n128_u8[0] = 0;
  sub_1E397C3E4(v14, v15, v16);
  if (sub_1E4205E84())
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v17(v1);
    v18 = sub_1E41FFC94();
    v19 = sub_1E4206814();
    if (OUTLINED_FUNCTION_104(v19))
    {
      v20 = OUTLINED_FUNCTION_125_0();
      *v20 = 0;
      OUTLINED_FUNCTION_136();
      _os_log_impl(v21, v22, v23, v24, v20, 2u);
      OUTLINED_FUNCTION_65_0();
    }

    (*(v6 + 8))(v1, v4);
    sub_1E3E13168();
    v13(0);
    goto LABEL_96;
  }

  v201 = v4;
  OUTLINED_FUNCTION_16_89();
  (*(v25 + 792))(1);
  OUTLINED_FUNCTION_36_3();
  v27 = (*((*v11 & v26) + 0x2E0))();
  v28 = sub_1E32AE9B0(v27);
  v203 = v10;
  v190 = v0;
  if (v28)
  {
    v29 = v28;
    v212.n128_u64[0] = MEMORY[0x1E69E7CC0];
    sub_1E377FD30(0, v28 & ~(v28 >> 63), 0);
    if (v29 < 0)
    {
      goto LABEL_102;
    }

    v30 = 0;
    v31 = v212.n128_u64[0];
    do
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v32 = OUTLINED_FUNCTION_102_3();
        v33 = MEMORY[0x1E6911E60](v32);
      }

      else
      {
        v33 = *(v27 + 8 * v30 + 32);
      }

      v34 = v33;
      v35 = *&v33[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier];
      v3 = *&v33[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8];

      v212.n128_u64[0] = v31;
      v37 = *(v31 + 16);
      v36 = *(v31 + 24);
      if (v37 >= v36 >> 1)
      {
        v39 = OUTLINED_FUNCTION_35(v36);
        sub_1E377FD30(v39, v37 + 1, 1);
        v31 = v212.n128_u64[0];
      }

      ++v30;
      *(v31 + 16) = v37 + 1;
      v38 = v31 + 16 * v37;
      *(v38 + 32) = v35;
      *(v38 + 40) = v3;
    }

    while (v29 != v30);
  }

  else
  {

    v31 = MEMORY[0x1E69E7CC0];
  }

  v218 = sub_1E32772D8(v31);
  OUTLINED_FUNCTION_16_89();
  v41 = (*(v40 + 632))();
  v42 = 0;
  v43 = *(v41 + 16);
  v44 = MEMORY[0x1E69E7CC0];
  v45 = v41 + 32;
  while (v43 != v42)
  {
    if (v42 >= *(v41 + 16))
    {
      goto LABEL_99;
    }

    sub_1E38C6028(v45, &v212);
    sub_1E38C6028(&v212, &v209);
    v46 = OUTLINED_FUNCTION_39_9();
    __swift_instantiateConcreteTypeFromMangledNameV2(v46, v47);
    OUTLINED_FUNCTION_106();
    v48 = type metadata accessor for LibrarySidebarItem();
    if (OUTLINED_FUNCTION_90_0(v206, &v209, v49, v48))
    {
      __swift_destroy_boxed_opaque_existential_1(&v212);
    }

    else
    {
      sub_1E3251BE8(&v212, &v209);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v215[0] = v44;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v51 = OUTLINED_FUNCTION_73_0();
        sub_1E397A464(v51, v52, v53);
        v44 = v215[0];
      }

      v55 = *(v44 + 16);
      v54 = *(v44 + 24);
      v3 = v55 + 1;
      if (v55 >= v54 >> 1)
      {
        v56 = OUTLINED_FUNCTION_35(v54);
        sub_1E397A464(v56, v55 + 1, 1);
        v44 = v215[0];
      }

      *(v44 + 16) = v3;
      sub_1E3251BE8(&v209, v44 + 40 * v55 + 32);
    }

    v45 += 40;
    ++v42;
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_128_9();
  AssociatedTypeWitness = v201;
  (*(v43 + 16))(v204);

  v58 = sub_1E41FFC94();
  v59 = sub_1E4206814();

  v195 = v44;
  if (os_log_type_enabled(v58, v59))
  {
    v60 = OUTLINED_FUNCTION_6_21();
    v196 = OUTLINED_FUNCTION_100();
    v209.n128_u64[0] = v196;
    v198 = v60;
    *v60 = 136315138;
    v61 = *(v44 + 16);
    v62 = MEMORY[0x1E69E7CC0];
    if (v61)
    {
      v193 = v59;
      v215[0] = MEMORY[0x1E69E7CC0];
      sub_1E377FD30(0, v61, 0);
      v62 = v215[0];
      v3 = v44 + 32;
      do
      {
        sub_1E38C6028(v3, &v212);
        v60 = v214;
        OUTLINED_FUNCTION_34_7(&v212, *(&v213 + 1));
        v63 = OUTLINED_FUNCTION_31_4();
        v64(v63);
        OUTLINED_FUNCTION_206_1();
        __swift_destroy_boxed_opaque_existential_1(&v212);
        v215[0] = v62;
        v66 = *(v62 + 16);
        v65 = *(v62 + 24);
        if (v66 >= v65 >> 1)
        {
          v68 = OUTLINED_FUNCTION_35(v65);
          v60 = v215;
          sub_1E377FD30(v68, v66 + 1, 1);
          v62 = v215[0];
        }

        *(v62 + 16) = v66 + 1;
        v67 = v62 + 16 * v66;
        *(v67 + 32) = v43;
        *(v67 + 40) = v204;
        v3 += 40;
        --v61;
      }

      while (v61);
      AssociatedTypeWitness = v201;
      OUTLINED_FUNCTION_128_9();
      v59 = v193;
    }

    MEMORY[0x1E6910C30](v62, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_145();

    sub_1E3270FC8(v60, v3, &v209);
    OUTLINED_FUNCTION_38();

    *(v198 + 1) = v60;
    _os_log_impl(&dword_1E323F000, v58, v59, "RootSplitViewController:: updating to sidebar mode with sections %s", v198, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v196);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v69 = (v43 + 8);
    v73 = OUTLINED_FUNCTION_102_3();
    v74(v73);
    OUTLINED_FUNCTION_129_10();
    v72 = MEMORY[0x1E69E7D40];
  }

  else
  {

    v69 = (v43 + 8);
    v70 = OUTLINED_FUNCTION_102_3();
    v71(v70);
    OUTLINED_FUNCTION_129_10();
    v72 = MEMORY[0x1E69E7D40];
  }

  v194 = *(v44 + 16);
  if (!v194)
  {
    goto LABEL_80;
  }

  v75 = 0;
  OUTLINED_FUNCTION_27_29();
  v192 = v44 + 32;
  v191 = *(v76 + 656);
  do
  {
    if (v75 >= *(v44 + 16))
    {
      goto LABEL_101;
    }

    sub_1E38C6028(v192 + 40 * v75, v215);
    v77 = v216;
    OUTLINED_FUNCTION_0_257(v215, v216);
    v78(v77);
    OUTLINED_FUNCTION_9_9();
    v191();
    OUTLINED_FUNCTION_134_2();
    v212.n128_u64[0] = v77;
    v212.n128_u64[1] = AssociatedTypeWitness;
    v79 = sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
    v80 = OUTLINED_FUNCTION_89_13();
    sub_1E3CA4D00(v80, v81, v69, MEMORY[0x1E69E6158], v79, MEMORY[0x1E69E6168]);

    v82 = v209.n128_u64[0];
    v197 = v75;
    if (v209.n128_u64[0])
    {
      objc_opt_self();
      OUTLINED_FUNCTION_40_3();
      if (swift_dynamicCastObjCClass())
      {
        v83 = v217;
        __swift_project_boxed_opaque_existential_1(v215, v216);
        OUTLINED_FUNCTION_202_1();
        v84 = OUTLINED_FUNCTION_31_4();
        v85(v84, v83);
        OUTLINED_FUNCTION_106();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
        OUTLINED_FUNCTION_156_1();
        sub_1E4207604();
        OUTLINED_FUNCTION_12_1();

        v86 = 0;
        v87 = *(v44 + 16);
        while (1)
        {
          v88 = 0uLL;
          v59 = v87;
          v89 = 0uLL;
          v90 = 0uLL;
          if (v86 != v87)
          {
            if (v86 >= *(v44 + 16))
            {
              goto LABEL_98;
            }

            v59 = v86 + 1;
            v209.n128_u64[0] = v86;
            sub_1E38C6028(v44 + 32 + 40 * v86, &v209.n128_i64[1]);
            v88 = v209;
            v89 = v210;
            v90 = v211;
          }

          v212 = v88;
          v213 = v89;
          v214 = v90;
          if (!v90)
          {

            OUTLINED_FUNCTION_129_10();
            goto LABEL_79;
          }

          OUTLINED_FUNCTION_175(*&v90, *&v89, v88);
          v91 = v217;
          __swift_project_boxed_opaque_existential_1(v215, v216);
          v92 = OUTLINED_FUNCTION_31_4();
          if (v93(v92, v91))
          {
            OUTLINED_FUNCTION_227_0();
            swift_getObjectType();
            v95 = *(&v210 + 1);
            v94 = v211;
            __swift_project_boxed_opaque_existential_1(&v209, *(&v210 + 1));
            v207 = v95;
            v208 = *(v94 + 8);
            __swift_allocate_boxed_opaque_existential_1(v206);
            OUTLINED_FUNCTION_37_1();
            (*(v96 + 16))();
            v69 = (v91 + 16);
            v97 = *(v91 + 16);
            v98 = v82;
            v99 = OUTLINED_FUNCTION_194_2();
            v100 = v97(v99);

            v72 = MEMORY[0x1E69E7D40];
            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_1(v206);
            if (v100)
            {
              break;
            }
          }

LABEL_59:
          v119 = *(&v210 + 1);
          OUTLINED_FUNCTION_0_257(&v209, *(&v210 + 1));
          v121 = v120(v119);
          AssociatedTypeWitness = v122;
          sub_1E397B708(v121, v122);

          __swift_destroy_boxed_opaque_existential_1(&v209);
          v86 = v59;
        }

        v101 = *(&v210 + 1);
        OUTLINED_FUNCTION_0_257(&v209, *(&v210 + 1));
        v205 = v102(v101);
        v69 = *((*v72 & *v203) + 0x2A0);
        v103 = v100;
        v104 = v69(v206);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0, &qword_1E42AE160);
        sub_1E3CA4D10();
        v105 = OUTLINED_FUNCTION_60_6();
        v104(v105);
        v106 = v216;
        OUTLINED_FUNCTION_0_257(v215, v216);
        v108 = v107(v106);
        v110 = v109;
        OUTLINED_FUNCTION_36_3();
        v112 = (*((*v72 & v111) + 0x448))();
        if (v113)
        {
          if (v108 == v112 && v113 == v110)
          {
          }

          else
          {
            OUTLINED_FUNCTION_116_10();
            v115 = sub_1E42079A4();

            if ((v115 & 1) == 0)
            {
              goto LABEL_58;
            }
          }

          v116 = *(&v210 + 1);
          OUTLINED_FUNCTION_0_257(&v209, *(&v210 + 1));
          v117(v116);
          OUTLINED_FUNCTION_26_3();
          (*((*v72 & v118) + 0x220))();
        }

        else
        {
        }

LABEL_58:

        goto LABEL_59;
      }
    }

    AssociatedTypeWitness = v217;
    __swift_project_boxed_opaque_existential_1(v215, v216);
    v123 = OUTLINED_FUNCTION_38();
    v124(v123, AssociatedTypeWitness);
    OUTLINED_FUNCTION_106();
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
    OUTLINED_FUNCTION_156_1();
    sub_1E4207604();
    OUTLINED_FUNCTION_12_1();

    v125 = 0;
    v126 = *(v44 + 16);
    v202 = v44;
    v200 = v44 + 32;
    v199 = v79;
    while (1)
    {
      v127 = 0uLL;
      v128 = v126;
      v129 = 0uLL;
      v130 = 0uLL;
      if (v125 == v126)
      {
        goto LABEL_66;
      }

      if (v125 >= *(v202 + 16))
      {
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
        return;
      }

      v128 = v125 + 1;
      v209.n128_u64[0] = v125;
      sub_1E38C6028(v200 + 40 * v125, &v209.n128_i64[1]);
      v127 = v209;
      v129 = v210;
      v130 = v211;
LABEL_66:
      v212 = v127;
      v213 = v129;
      v214 = v130;
      if (!v130)
      {
        break;
      }

      v125 = v128;
      OUTLINED_FUNCTION_175(*&v130, *&v129, v127);
      v131 = *(&v210 + 1);
      OUTLINED_FUNCTION_0_257(&v209, *(&v210 + 1));
      v133 = v132(v131);
      v135 = v134;
      (*((*v72 & *v59) + 0x290))();
      OUTLINED_FUNCTION_227_0();
      v206[0] = v133;
      v206[1] = v135;
      sub_1E3CA4D00(v206, v59, v75, MEMORY[0x1E69E6158], v79, MEMORY[0x1E69E6168]);

      v69 = v205;
      if (!v205)
      {
        goto LABEL_77;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_138_1();
      v136 = swift_dynamicCastObjCClass();
      if (!v136)
      {

        goto LABEL_77;
      }

      v75 = v136;
      v137 = v217;
      __swift_project_boxed_opaque_existential_1(v215, v216);
      v138 = OUTLINED_FUNCTION_31_4();
      if (!v139(v138, v137))
      {

LABEL_75:
        v72 = MEMORY[0x1E69E7D40];
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_108_3();
      swift_getObjectType();
      v141 = *(&v210 + 1);
      v140 = v211;
      v59 = __swift_project_boxed_opaque_existential_1(&v209, *(&v210 + 1));
      v207 = v141;
      v208 = *(v140 + 8);
      __swift_allocate_boxed_opaque_existential_1(v206);
      OUTLINED_FUNCTION_37_1();
      (*(v142 + 16))();
      v143 = *(v79 + 16);
      v69 = v205;
      v144 = OUTLINED_FUNCTION_194_2();
      v75 = v143(v144);

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v206);
      if (!v75)
      {

        OUTLINED_FUNCTION_129_10();
        goto LABEL_75;
      }

      v145 = *(&v210 + 1);
      __swift_project_boxed_opaque_existential_1(&v209, *(&v210 + 1));
      OUTLINED_FUNCTION_8_156();
      v146(v145);
      OUTLINED_FUNCTION_129_10();
      v205 = v147;
      v148 = MEMORY[0x1E69E7D40];
      v149 = *((*MEMORY[0x1E69E7D40] & *v59) + 0x2A0);
      v150 = v75;
      v151 = v149(v206);
      v72 = v148;
      v75 = v151;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0, &qword_1E42AE160);
      sub_1E3CA4D10();
      v152 = OUTLINED_FUNCTION_60_6();
      (v75)(v152);

LABEL_76:
      v79 = v199;
LABEL_77:
      v153 = *(&v210 + 1);
      __swift_project_boxed_opaque_existential_1(&v209, *(&v210 + 1));
      OUTLINED_FUNCTION_8_156();
      v155 = v154(v153);
      AssociatedTypeWitness = v156;
      sub_1E397B708(v155, v156);

      __swift_destroy_boxed_opaque_existential_1(&v209);
    }

    OUTLINED_FUNCTION_188_2();

LABEL_79:
    v75 = v197 + 1;
    __swift_destroy_boxed_opaque_existential_1(v215);
    v44 = v195;
  }

  while (v197 + 1 != v194);
LABEL_80:
  sub_1E3E1E8C0();
  v157 = v218 + 56;
  OUTLINED_FUNCTION_4_4();
  v160 = v159 & v158;
  v162 = (v161 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v163 = 0;
  if (v160)
  {
    goto LABEL_85;
  }

  while (2)
  {
    v164 = v163 + 1;
    if (__OFADD__(v163, 1))
    {
      goto LABEL_100;
    }

    if (v164 < v162)
    {
      v160 = *(v157 + 8 * v164);
      ++v163;
      if (!v160)
      {
        continue;
      }

      v163 = v164;
LABEL_85:
      OUTLINED_FUNCTION_172_0();
      v167 = *v165;
      v166 = v165[1];
      OUTLINED_FUNCTION_68_5();
      OUTLINED_FUNCTION_21();
      v168 += 82;
      v169 = *v168;
      v170 = v168;
      v171 = swift_bridgeObjectRetain_n();
      v169(v171);
      OUTLINED_FUNCTION_49_4();
      v212.n128_u64[0] = v167;
      v212.n128_u64[1] = v166;
      sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
      v172 = OUTLINED_FUNCTION_89_13();
      sub_1E3CA4D00(v172, v173, v170, MEMORY[0x1E69E6158], v174, MEMORY[0x1E69E6168]);

      v175 = v209.n128_u64[0];
      if (v209.n128_u64[0])
      {
        objc_opt_self();
        OUTLINED_FUNCTION_19_3();
        v176 = swift_dynamicCastObjCClass();
        if (v176)
        {
          v177 = v203;
          [v176 vui:v203 removeControllerObserver:?];

          goto LABEL_90;
        }
      }

      v177 = v203;
LABEL_90:
      v160 &= v160 - 1;
      v215[0] = 0;
      v209.n128_u64[0] = v167;
      v209.n128_u64[1] = v166;
      v178 = *((*MEMORY[0x1E69E7D40] & *v177) + 0x2A0);

      v179 = v178(&v212);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0, &qword_1E42AE160);
      sub_1E3CA4D10();
      v180 = OUTLINED_FUNCTION_192_2();
      v179(v180);

      if (!v160)
      {
        continue;
      }

      goto LABEL_85;
    }

    break;
  }

  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_36_3();
  v181 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & v182) + 0x280))(v195);
  OUTLINED_FUNCTION_21();
  (*(v183 + 696))(1);
  OUTLINED_FUNCTION_36_3();
  (*((*v181 & v184) + 0x3C0))(0);
  OUTLINED_FUNCTION_36_3();
  (*((*v181 & v185) + 0x318))(0);
  v186 = [*(v190 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_rootControllerConfig) normalControllerLimit];
  v187 = v186;
  if (v186)
  {
    v188 = [v186 integerValue];
  }

  else
  {
    v188 = 0;
  }

  OUTLINED_FUNCTION_16_89();
  (*(v189 + 1112))(v188);
LABEL_96:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E1C958()
{
  OUTLINED_FUNCTION_31_1();
  v280 = v1;
  v282 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v292 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v281 = v5 - v4;
  v283 = v0;
  OUTLINED_FUNCTION_120_1();
  v6 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_6_41();
  v8 = (*(v7 + 960))(1);
  v9 = MEMORY[0x1E69E7CC0];
  v315 = MEMORY[0x1E69E7CC0];
  v298 = v0;
  v10 = (*((*v6 & *v0) + 0x278))(v8);
  v11 = 0;
  v12 = *(v10 + 16);
  v13 = v10 + 32;
  while (v12 != v11)
  {
    if (v11 >= *(v10 + 16))
    {
      goto LABEL_194;
    }

    sub_1E38C6028(v13, &v301);
    sub_1E38C6028(&v301, &v312);
    v14 = OUTLINED_FUNCTION_39_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
    OUTLINED_FUNCTION_106();
    v16 = type metadata accessor for LibrarySidebarItem();
    if (OUTLINED_FUNCTION_90_0(&v304, &v312, v17, v16))
    {
      __swift_destroy_boxed_opaque_existential_1(&v301);
    }

    else
    {
      sub_1E3251BE8(&v301, &v312);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v307[0] = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = OUTLINED_FUNCTION_73_0();
        sub_1E397A464(v19, v20, v21);
        v9 = v307[0];
      }

      v23 = v9[2];
      v22 = v9[3];
      v24 = v9;
      if (v23 >= v22 >> 1)
      {
        v25 = OUTLINED_FUNCTION_35(v22);
        sub_1E397A464(v25, v23 + 1, 1);
        v24 = v307[0];
      }

      v24[2] = v23 + 1;
      sub_1E3251BE8(&v312, &v24[5 * v23 + 4]);
      v9 = v24;
    }

    v13 += 40;
    ++v11;
  }

  v26 = v9[2];
  if (v26)
  {
    v307[0] = MEMORY[0x1E69E7CC0];
    sub_1E377FD10(0, v26, 0);
    v27 = 0;
    v28 = v307[0];
    v295 = v9 + 4;
    v29 = MEMORY[0x1E69E7D40];
    v297 = v9;
    v293 = v26;
    do
    {
      if (v27 >= v9[2])
      {
        goto LABEL_199;
      }

      sub_1E38C6028(&v295[5 * v27], &v301);
      v30 = v303;
      __swift_project_boxed_opaque_existential_1(&v301, *(&v302 + 1));
      OUTLINED_FUNCTION_202_1();
      v31 = OUTLINED_FUNCTION_38();
      v32(v31, v30);
      OUTLINED_FUNCTION_106();
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
      OUTLINED_FUNCTION_156_1();
      v33 = sub_1E4207604();

      v34 = *(v33 + 16);
      if (v34)
      {
        v299 = v28;
        *&v304 = MEMORY[0x1E69E7CC0];
        sub_1E377FD30(0, v34, 0);
        v35 = v304;
        v36 = v33 + 32;
        do
        {
          sub_1E38C6028(v36, &v312);
          v37 = v313;
          OUTLINED_FUNCTION_0_257(&v312, v313);
          v39 = v38(v37);
          v41 = v40;
          __swift_destroy_boxed_opaque_existential_1(&v312);
          *&v304 = v35;
          v43 = *(v35 + 16);
          v42 = *(v35 + 24);
          if (v43 >= v42 >> 1)
          {
            v45 = OUTLINED_FUNCTION_35(v42);
            sub_1E377FD30(v45, v43 + 1, 1);
            v35 = v304;
          }

          *(v35 + 16) = v43 + 1;
          v44 = v35 + 16 * v43;
          *(v44 + 32) = v39;
          *(v44 + 40) = v41;
          v36 += 40;
          --v34;
        }

        while (v34);

        v29 = MEMORY[0x1E69E7D40];
        v28 = v299;
        v26 = v293;
      }

      else
      {

        v35 = MEMORY[0x1E69E7CC0];
      }

      __swift_destroy_boxed_opaque_existential_1(&v301);
      v307[0] = v28;
      v47 = v28[2];
      v46 = v28[3];
      if (v47 >= v46 >> 1)
      {
        v48 = OUTLINED_FUNCTION_35(v46);
        sub_1E377FD10(v48, v47 + 1, 1);
        v28 = v307[0];
      }

      ++v27;
      v28[2] = v47 + 1;
      v28[v47 + 4] = v35;
      v9 = v297;
    }

    while (v27 != v26);
  }

  else
  {

    v28 = MEMORY[0x1E69E7CC0];
    v29 = MEMORY[0x1E69E7D40];
  }

  v49 = 0;
  v50 = v28[2];
  v51 = MEMORY[0x1E69E7CC0];
  while (v50 != v49)
  {
    if (v49 >= v28[2])
    {
      goto LABEL_195;
    }

    v52 = v28[v49 + 4];
    v53 = *(v52 + 16);
    v54 = *(v51 + 2);
    v55 = v54 + v53;
    if (__OFADD__(v54, v53))
    {
      goto LABEL_196;
    }

    v56 = swift_isUniquelyReferenced_nonNull_native();
    if (!v56 || v55 > *(v51 + 3) >> 1)
    {
      if (v54 <= v55)
      {
        v57 = v54 + v53;
      }

      else
      {
        v57 = v54;
      }

      v51 = sub_1E3740F88(v56, v57, 1, v51);
    }

    if (*(v52 + 16))
    {
      if ((*(v51 + 3) >> 1) - *(v51 + 2) < v53)
      {
        goto LABEL_200;
      }

      swift_arrayInitWithCopy();

      if (v53)
      {
        v58 = *(v51 + 2);
        v59 = __OFADD__(v58, v53);
        v60 = v58 + v53;
        if (v59)
        {
          goto LABEL_205;
        }

        *(v51 + 2) = v60;
      }
    }

    else
    {

      if (v53)
      {
        goto LABEL_197;
      }
    }

    ++v49;
  }

  sub_1E32772D8(v51);
  OUTLINED_FUNCTION_115_8();
  v62 = v61;
  v311 = v61;
  v63 = OUTLINED_FUNCTION_224();
  v64(v63);
  OUTLINED_FUNCTION_1_31();
  (*((*v29 & v65) + 0x428))(&v301);
  if (*(&v302 + 1))
  {
    v49 = v303;
    OUTLINED_FUNCTION_70(&v301);
    v66 = OUTLINED_FUNCTION_26_1();
    v284 = v67(v66);
    v288 = v68;
    __swift_destroy_boxed_opaque_existential_1(&v301);
  }

  else
  {
    sub_1E325F7FC(&v301, &unk_1ECF2F1D0, &qword_1E42AE148);
    v284 = 0;
    v288 = 0;
  }

  OUTLINED_FUNCTION_12_129();
  v70 = (*(v69 + 736))();
  v296 = sub_1E32AE9B0(v70);
  if (!v296)
  {

    OUTLINED_FUNCTION_200_2();
    OUTLINED_FUNCTION_189_3(MEMORY[0x1E69E7CC0]);
    v183 = v62;
LABEL_140:
    sub_1E3E1F79C();
    v184 = v183 + 56;
    OUTLINED_FUNCTION_4_4();
    v187 = v186 & v185;
    v189 = (v188 + 63) >> 6;

    v190 = 0;
    if (v187)
    {
      goto LABEL_146;
    }

LABEL_141:
    OUTLINED_FUNCTION_115_8();
    v191 = MEMORY[0x1E69E7D40];
    while (1)
    {
      v192 = v190 + 1;
      if (__OFADD__(v190, 1))
      {
        goto LABEL_198;
      }

      if (v192 >= v189)
      {
        break;
      }

      v187 = *(v184 + 8 * v192);
      ++v190;
      if (v187)
      {
        v190 = v192;
        while (1)
        {
LABEL_146:
          v193 = v183;
          OUTLINED_FUNCTION_172_0();
          v195 = *v194;
          v196 = v194[1];
          OUTLINED_FUNCTION_62_30();
          OUTLINED_FUNCTION_21();
          v198 = *(v197 + 656);
          v199 = swift_bridgeObjectRetain_n();
          v198(v199);
          OUTLINED_FUNCTION_145();
          *&v301 = v195;
          *(&v301 + 1) = v196;
          sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
          OUTLINED_FUNCTION_82();
          sub_1E3CA4D00(v200, v201, v202, MEMORY[0x1E69E6158], v203, MEMORY[0x1E69E6168]);

          v204 = v312;
          if (!v312)
          {
            goto LABEL_150;
          }

          objc_opt_self();
          OUTLINED_FUNCTION_40_3();
          if (!swift_dynamicCastObjCClass())
          {
            break;
          }

          OUTLINED_FUNCTION_90_2();
          [v205 v206];

LABEL_151:
          v187 &= v187 - 1;
          v307[0] = 0;
          *&v312 = v195;
          *(&v312 + 1) = v196;
          v207 = ((*MEMORY[0x1E69E7D40] & *v283) + 672);
          v208 = *((*MEMORY[0x1E69E7D40] & *v283) + 0x2A0);

          v208(&v301);
          OUTLINED_FUNCTION_152();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0, &qword_1E42AE160);
          OUTLINED_FUNCTION_177_3();
          v209 = OUTLINED_FUNCTION_60_6();
          v207(v209);

          v183 = v193;
          if (!v187)
          {
            goto LABEL_141;
          }
        }

LABEL_150:
        OUTLINED_FUNCTION_90_2();
        goto LABEL_151;
      }
    }

    OUTLINED_FUNCTION_12_129();
    v211 = *(v210 + 744);
    OUTLINED_FUNCTION_188_2();

    v211(v212);

    OUTLINED_FUNCTION_1_31();
    v214 = (*((*v191 & v213) + 0x340))();
    v215 = sub_1E396B0E4()[1];

    v216 = OUTLINED_FUNCTION_27_0();
    v218 = sub_1E37D26AC(v216, v217, v214);
    v220 = v219;

    OUTLINED_FUNCTION_1_31();
    v222 = (*((*v191 & v221) + 0x440))();
    if (v220)
    {
      v224 = v280;
      if (v223)
      {
        if (v218 == v222 && v220 == v223)
        {

LABEL_165:
          v226 = *(v283 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_libraryManager);
          goto LABEL_166;
        }

        OUTLINED_FUNCTION_55_39();
        OUTLINED_FUNCTION_116_10();
        sub_1E42079A4();
        OUTLINED_FUNCTION_28_3();
        if (v215)
        {
          goto LABEL_165;
        }
      }
    }

    else
    {
      v224 = v280;
      if (!v223)
      {
LABEL_163:
        v226 = *(v283 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_libraryManager);

        v218 = 0;
        v220 = 0xE000000000000000;
LABEL_166:
        OUTLINED_FUNCTION_12_129();
        (*(v227 + 656))();
        OUTLINED_FUNCTION_145();
        *&v301 = v218;
        *(&v301 + 1) = v220;
        sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
        OUTLINED_FUNCTION_82();
        sub_1E3CA4D00(v228, v229, v230, v231, v232, v233);

        v234 = v312;
        if (v312)
        {
          objc_opt_self();
          OUTLINED_FUNCTION_20_2();
          v235 = swift_dynamicCastObjCClass();
          if (!v235)
          {
          }
        }

        else
        {
          v235 = 0;
        }

        (*((*v191 & *v226) + 0x2B0))(1, v235);

        if (sub_1E374E8E4(v224, 0))
        {
          OUTLINED_FUNCTION_68_5();
          OUTLINED_FUNCTION_21();
          v237 = (*(v236 + 376))();
          v238 = sub_1E32AE9B0(v237);
          for (i = 0; v238 != i; ++i)
          {
            if ((v237 & 0xC000000000000001) != 0)
            {
              v247 = OUTLINED_FUNCTION_55_39();
              v240 = MEMORY[0x1E6911E60](v247);
            }

            else
            {
              if (i >= *((v237 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_204;
              }

              v240 = *(v237 + 8 * i + 32);
            }

            v241 = v240;
            if (__OFADD__(i, 1))
            {
              goto LABEL_203;
            }

            v243 = *&v240[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier];
            v242 = *&v240[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier + 8];
            v307[0] = 0;
            *&v312 = v243;
            *(&v312 + 1) = v242;
            v244 = ((*MEMORY[0x1E69E7D40] & *v298) + 672);
            v245 = *((*MEMORY[0x1E69E7D40] & *v298) + 0x2A0);

            v245(&v301);
            OUTLINED_FUNCTION_152();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0, &qword_1E42AE160);
            OUTLINED_FUNCTION_177_3();
            v246 = OUTLINED_FUNCTION_60_6();
            v244(v246);
          }

          OUTLINED_FUNCTION_68_5();
          v191 = MEMORY[0x1E69E7D40];
          OUTLINED_FUNCTION_21();
          v249 = (*(v248 + 392))(&v301);
          *v250 = MEMORY[0x1E69E7CC0];

          v249(&v301, 0);
          OUTLINED_FUNCTION_115_8();
        }

        OUTLINED_FUNCTION_12_129();
        v251 += 79;
        v252 = *v251;
        v253 = (*v251)();
        v254 = 0;
        v255 = *(v253 + 16);
        for (j = 4u; ; j += 5)
        {
          if (v255 == v254)
          {
            OUTLINED_FUNCTION_188_2();

            OUTLINED_FUNCTION_116_1();

            OUTLINED_FUNCTION_115_8();
            goto LABEL_192;
          }

          if (v254 >= *(v253 + 16))
          {
            goto LABEL_202;
          }

          sub_1E38C6028(v253 + j * 8, &v301);
          sub_1E3251BE8(&v301, &v312);
          v257 = OUTLINED_FUNCTION_146();
          __swift_instantiateConcreteTypeFromMangledNameV2(v257, v258);
          type metadata accessor for LibrarySidebarItem();
          if (swift_dynamicCast())
          {
            break;
          }

          ++v254;
        }

        OUTLINED_FUNCTION_115_8();
        v252();
        v259 = OUTLINED_FUNCTION_50();
        sub_1E39ABF00(v259, 1, qword_1E42AD1A0);
        sub_1E38C6028(&qword_1E42AD1A0[j], &v301);

        OUTLINED_FUNCTION_1_31();
        v261 = (*((*v191 & v260) + 0x288))(v307);
        sub_1E3E1FFD8(v254, &v312);
        __swift_destroy_boxed_opaque_existential_1(&v312);
        v262 = OUTLINED_FUNCTION_192_2();
        v261(v262);
        v263 = *(&v302 + 1);
        v264 = OUTLINED_FUNCTION_9_141(&v301);
        v265(v264);
        OUTLINED_FUNCTION_59_1();
        swift_getAssociatedTypeWitness();
        OUTLINED_FUNCTION_20_2();
        sub_1E4207604();
        OUTLINED_FUNCTION_12_1();

        v266 = *(v263 + 16);
        if (v266)
        {
          OUTLINED_FUNCTION_12_129();
          v268 = *(v267 + 672);
          v269 = v263 + 32;
          do
          {
            sub_1E38C6028(v269, &v312);
            v270 = v313;
            OUTLINED_FUNCTION_0_257(&v312, v313);
            v272 = v271(v270);
            v310 = 0;
            *&v304 = v272;
            *(&v304 + 1) = v273;
            v268(v307);
            OUTLINED_FUNCTION_152();
            v274 = OUTLINED_FUNCTION_55_39();
            __swift_instantiateConcreteTypeFromMangledNameV2(v274, v275);
            sub_1E3CA4D10();
            v276 = OUTLINED_FUNCTION_192_2();
            v270(v276);
            __swift_destroy_boxed_opaque_existential_1(&v312);
            v269 += 40;
            --v266;
          }

          while (v266);
          OUTLINED_FUNCTION_116_1();

          OUTLINED_FUNCTION_114_2();

          v191 = MEMORY[0x1E69E7D40];
        }

        else
        {
          OUTLINED_FUNCTION_116_1();
        }

        OUTLINED_FUNCTION_188_2();

        __swift_destroy_boxed_opaque_existential_1(&v301);
LABEL_192:
        sub_1E3E14C2C();
        OUTLINED_FUNCTION_12_129();
        (*(v277 + 960))(0);
        OUTLINED_FUNCTION_1_31();
        (*((*v191 & v278) + 0x498))();
        OUTLINED_FUNCTION_241_0();
        *(v283 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_tabsStateForMetrics) = 0;
        OUTLINED_FUNCTION_25_2();
        return;
      }
    }

    goto LABEL_163;
  }

  OUTLINED_FUNCTION_200_2();
  v71 = 0;
  v294 = v70 & 0xC000000000000001;
  v286 = v70 & 0xFFFFFFFFFFFFFF8;
  v285 = v70 + 32;
  while (1)
  {
    if (v294)
    {
      v72 = MEMORY[0x1E6911E60](v71, v70);
    }

    else
    {
      if (v71 >= *(v286 + 16))
      {
        goto LABEL_206;
      }

      v72 = *(v285 + 8 * v71);
    }

    v73 = v72;
    v59 = __OFADD__(v71, 1);
    v74 = v71 + 1;
    if (v59)
    {
      goto LABEL_201;
    }

    v300 = v74;
    v75 = *&v72[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier];
    v76 = *&v72[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8];
    if (v75 == sub_1E4205F14() && v76 == v77)
    {

LABEL_77:
      OUTLINED_FUNCTION_12_129();
      OUTLINED_FUNCTION_25();
      v101 = v100();
      if (!v101)
      {
        OUTLINED_FUNCTION_241_0();
        OUTLINED_FUNCTION_200_2();
        goto LABEL_97;
      }

      v102 = v101;
      v103 = [v101 viewControllers];
      v104 = OUTLINED_FUNCTION_118();
      sub_1E3280A90(v104, &qword_1EE23B250, 0x1E69DD258);
      OUTLINED_FUNCTION_40_3();
      v105 = sub_1E42062B4();

      if (v105 >> 62)
      {
        if (sub_1E4207384())
        {
LABEL_80:
          if ((v105 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1E6911E60](0, v105);
          }

          else
          {
            if (!*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_207;
            }

            v106 = *(v105 + 32);
          }

          OUTLINED_FUNCTION_87_0();

          OUTLINED_FUNCTION_241_0();
          v297 = v49;
          goto LABEL_133;
        }
      }

      else if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_80;
      }

      OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_200_2();
      goto LABEL_133;
    }

    OUTLINED_FUNCTION_125();
    v79 = sub_1E42079A4();

    if (v79)
    {
      goto LABEL_77;
    }

    OUTLINED_FUNCTION_12_129();
    v81 = (*(v80 + 632))();
    v73 = 0;
    v82 = *(v81 + 16);
    v83 = v81 + 32;
    v287 = v82;
    for (k = v81; ; v81 = k)
    {
      if (v73 == v82)
      {

        if (v288)
        {
          OUTLINED_FUNCTION_128_9();
LABEL_99:
          if (v122 == v75 && v121 == v76)
          {
            v124 = 1;
          }

          else
          {
            v124 = OUTLINED_FUNCTION_182(v122, v121);
          }
        }

        else
        {
          v124 = 0;
          OUTLINED_FUNCTION_128_9();
        }

        goto LABEL_106;
      }

      sub_1E39ABF00(v73, 1, v81);
      v84 = v83;
      sub_1E38C6028(v83 + 40 * v73, &v312);
      v85 = v313;
      OUTLINED_FUNCTION_0_257(&v312, v313);
      v87 = v86(v85);
      if (v87 == v75 && v88 == v76)
      {

LABEL_114:

        v137 = OUTLINED_FUNCTION_9_141(&v312);
        v138(v137);
        OUTLINED_FUNCTION_26_90();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
        OUTLINED_FUNCTION_156_1();
        sub_1E4207604();
        OUTLINED_FUNCTION_12_1();

        v140 = *(AssociatedTypeWitness + 16);
        if (v140)
        {
          OUTLINED_FUNCTION_7_20();
          v279 = AssociatedTypeWitness;
          v141 = AssociatedTypeWitness + 32;
          v142 = MEMORY[0x1E69E7CC0];
          do
          {
            sub_1E38C6028(v141, v307);
            v143 = v308;
            v144 = v309;
            __swift_project_boxed_opaque_existential_1(v307, v308);
            v305 = v143;
            v306 = *(v144 + 8);
            __swift_allocate_boxed_opaque_existential_1(&v304);
            OUTLINED_FUNCTION_37_1();
            (*(v145 + 16))();
            v146 = v308;
            OUTLINED_FUNCTION_0_257(v307, v308);
            v147(v146);
            OUTLINED_FUNCTION_65_1();
            __swift_destroy_boxed_opaque_existential_1(v307);
            OUTLINED_FUNCTION_151_7();
            v149 = v148();
            v70 = v150;
            *&v301 = v146;
            *(&v301 + 1) = v144;
            v151 = sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
            sub_1E3CA4D00(&v301, v149, v70, MEMORY[0x1E69E6158], v151, MEMORY[0x1E69E6168]);

            v152 = v310;
            if (v310)
            {
              objc_opt_self();
              OUTLINED_FUNCTION_19_3();
              v153 = swift_dynamicCastObjCClass();
              if (!v153)
              {
              }
            }

            else
            {
              v153 = 0;
            }

            sub_1E3251BE8(&v304, &v301);
            *(&v303 + 1) = v153;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v159 = OUTLINED_FUNCTION_73_0();
              v142 = sub_1E3E24800(v159, v160, v161, v142);
            }

            v155 = v142[2];
            v154 = v142[3];
            if (v155 >= v154 >> 1)
            {
              v162 = OUTLINED_FUNCTION_35(v154);
              v142 = sub_1E3E24800(v162, v155 + 1, 1, v142);
            }

            v142[2] = v155 + 1;
            v156 = &v142[6 * v155];
            v157 = v301;
            v158 = v303;
            v156[3] = v302;
            v156[4] = v158;
            v156[2] = v157;
            v141 += 40;
            --v140;
          }

          while (v140);
        }

        else
        {

          v142 = MEMORY[0x1E69E7CC0];
        }

        v29 = MEMORY[0x1E69E7D40];
        OUTLINED_FUNCTION_7_20();
        v164 = (*(v163 + 832))();
        v165 = v313;
        OUTLINED_FUNCTION_0_257(&v312, v313);
        v167 = v166(v165);
        sub_1E37D26AC(v167, v168, v164);

        v73 = v314;
        OUTLINED_FUNCTION_220_0(&v312, v313);
        v169 = OUTLINED_FUNCTION_38();
        v171 = v170(v169, v73);
        if (v171)
        {
          v70 = v171;
          v73 = v172;
          swift_getObjectType();
          sub_1E3E13020(v142);

          OUTLINED_FUNCTION_59_1();
          v102 = v173();
          swift_unknownObjectRelease();

          goto LABEL_96;
        }

LABEL_93:
        __swift_destroy_boxed_opaque_existential_1(&v312);
        OUTLINED_FUNCTION_187_3();
        OUTLINED_FUNCTION_128_9();
        goto LABEL_97;
      }

      v90 = OUTLINED_FUNCTION_182(v87, v88);

      if (v90)
      {
        goto LABEL_114;
      }

      ++v73;
      v91 = OUTLINED_FUNCTION_9_141(&v312);
      v92(v91);
      OUTLINED_FUNCTION_26_90();
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
      OUTLINED_FUNCTION_156_1();
      v70 = sub_1E4207604();

      v93 = 0;
      v50 = *(v70 + 16);
      v94 = v70 + 32;
LABEL_67:
      if (v50 != v93)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(&v312);
      OUTLINED_FUNCTION_115_8();
      v29 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_187_3();
      v82 = v287;
      v83 = v84;
    }

    if (v93 >= *(v70 + 16))
    {
      break;
    }

    sub_1E38C6028(v94, &v301);
    v95 = *(&v302 + 1);
    OUTLINED_FUNCTION_0_257(&v301, *(&v302 + 1));
    v97 = v96(v95);
    if (v97 == v75 && v98 == v76)
    {

      goto LABEL_87;
    }

    OUTLINED_FUNCTION_182(v97, v98);
    OUTLINED_FUNCTION_28_3();
    if ((v95 & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(&v301);
      v94 += 40;
      v93 = (v93 + 1);
      goto LABEL_67;
    }

LABEL_87:

    OUTLINED_FUNCTION_70(&v312);
    v107 = OUTLINED_FUNCTION_26_1();
    v108(v107);
    OUTLINED_FUNCTION_115_8();
    v29 = MEMORY[0x1E69E7D40];
    if (!v109)
    {
      __swift_destroy_boxed_opaque_existential_1(&v301);
      goto LABEL_93;
    }

    v73 = v109;
    v290 = v110;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF396D0, &qword_1E42D4E80);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_1E4297BE0;
    v111 = *(&v302 + 1);
    v112 = v303;
    __swift_project_boxed_opaque_existential_1(&v301, *(&v302 + 1));
    *(v70 + 56) = v111;
    *(v70 + 64) = v112[1];
    __swift_allocate_boxed_opaque_existential_1((v70 + 32));
    OUTLINED_FUNCTION_37_1();
    (*(v113 + 16))();
    v114 = *(&v302 + 1);
    OUTLINED_FUNCTION_0_257(&v301, *(&v302 + 1));
    v115(v114);
    OUTLINED_FUNCTION_65_1();
    OUTLINED_FUNCTION_1_31();
    (*((*v29 & v116) + 0x290))();
    OUTLINED_FUNCTION_108_3();
    v307[0] = v114;
    v307[1] = v112;
    v117 = sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
    sub_1E3CA4D00(v307, v50, v84, MEMORY[0x1E69E6158], v117, MEMORY[0x1E69E6168]);

    v118 = v304;
    if (v304)
    {
      objc_opt_self();
      OUTLINED_FUNCTION_19_3();
      v119 = swift_dynamicCastObjCClass();
      if (!v119)
      {

        v119 = 0;
      }

      *(v70 + 72) = v119;
    }

    else
    {
      *(v70 + 72) = 0;
    }

    ObjectType = swift_getObjectType();
    v102 = v73;
    (*(v290 + 8))(0, 0, v70, ObjectType);
    OUTLINED_FUNCTION_16_5();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v301);
LABEL_96:
    __swift_destroy_boxed_opaque_existential_1(&v312);
    OUTLINED_FUNCTION_187_3();
    OUTLINED_FUNCTION_128_9();
    if (!v102)
    {
LABEL_97:
      v121 = v288;
      if (v288)
      {
        v122 = v284;
        goto LABEL_99;
      }

      v124 = 0;
LABEL_106:
      OUTLINED_FUNCTION_12_129();
      v49 = (*(v125 + 368))();
      OUTLINED_FUNCTION_1_31();
      v102 = (*((*v29 & v126) + 0x460))(v73, v124 & 1, v49, 0);

      if (!v102)
      {
        v127 = sub_1E324FBDC();
        v70 = v281;
        (*(v292 + 16))(v281, v127, v282);

        v128 = sub_1E41FFC94();
        v129 = sub_1E42067F4();

        if (os_log_type_enabled(v128, v129))
        {
          OUTLINED_FUNCTION_6_21();
          v291 = v73;
          v130 = OUTLINED_FUNCTION_16_15();
          *&v301 = v130;
          *v49 = 136315138;
          v131 = OUTLINED_FUNCTION_125();
          v134 = sub_1E3270FC8(v131, v132, v133);

          *(v49 + 4) = v134;
          OUTLINED_FUNCTION_53_15(&dword_1E323F000, v128, v129, "RootSplitViewController:: updating to tab bar mode could not create view controller for %s", v279);
          __swift_destroy_boxed_opaque_existential_1(v130);
          OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_51_2();
        }

        else
        {
        }

        v135 = OUTLINED_FUNCTION_39_9();
        v136(v135);
        OUTLINED_FUNCTION_187_3();
        goto LABEL_136;
      }
    }

LABEL_133:
    v307[0] = v102;
    *&v312 = v75;
    *(&v312 + 1) = v76;
    v174 = *((*v29 & *v50) + 0x2A0);

    v175 = v102;
    v176 = v174(&v301);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0, &qword_1E42AE160);
    OUTLINED_FUNCTION_177_3();
    v177 = OUTLINED_FUNCTION_60_6();
    v176(v177);
    v178 = OUTLINED_FUNCTION_125();
    sub_1E397B708(v178, v179);

    v180 = v73;
    MEMORY[0x1E6910BF0]();
    OUTLINED_FUNCTION_193_2();
    v49 = *(v181 + 16);
    v182 = *(v181 + 24);
    if (v49 >= v182 >> 1)
    {
      OUTLINED_FUNCTION_35(v182);
      sub_1E42062F4();
    }

    OUTLINED_FUNCTION_13_8();
    sub_1E4206324();

    OUTLINED_FUNCTION_189_3(v315);
LABEL_136:
    v71 = v300;
    if (v300 == v296)
    {

      v183 = v311;
      goto LABEL_140;
    }
  }

  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
}

void sub_1E3E1E8C0()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_manager);
  OUTLINED_FUNCTION_67_22();
  v4 = *(v3 + 632);
  v5 = v4();
  sub_1E39574B8(v5, &v53);

  if (v55)
  {
    v6 = v56;
    __swift_project_boxed_opaque_existential_1(&v53, v55);
    v7 = OUTLINED_FUNCTION_38();
    v9 = v8(v7, v6);
    v11 = v10;
    v12 = __swift_destroy_boxed_opaque_existential_1(&v53);
    if (v11)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = sub_1E325F7FC(&v53, &qword_1ECF2EC80, &qword_1E42AD1C0);
  }

  v13 = (v4)(v12);
  sub_1E39574B8(v13, v50);

  if (!v51)
  {
    v48 = v50;
LABEL_23:
    sub_1E325F7FC(v48, &qword_1ECF2EC80, &qword_1E42AD1C0);
LABEL_24:

    goto LABEL_25;
  }

  v6 = v52;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  v14 = OUTLINED_FUNCTION_38();
  v15(v14, v6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
  OUTLINED_FUNCTION_156_1();
  sub_1E4207604();
  OUTLINED_FUNCTION_11_5();

  sub_1E39574B8(AssociatedTypeWitness, &v53);

  if (!v55)
  {
    __swift_destroy_boxed_opaque_existential_1(v50);
    v48 = &v53;
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(&v53, v55);
  v17 = OUTLINED_FUNCTION_3_194();
  v9 = v18(v17);
  v11 = v19;
  __swift_destroy_boxed_opaque_existential_1(&v53);
  __swift_destroy_boxed_opaque_existential_1(v50);

LABEL_8:
  OUTLINED_FUNCTION_67_22();
  v21 = *(v20 + 656);

  v21(v22);
  OUTLINED_FUNCTION_49_4();
  v53 = v9;
  v54 = v11;
  v23 = sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
  sub_1E3CA4D00(&v53, v2, v6, MEMORY[0x1E69E6158], v23, MEMORY[0x1E69E6168]);

  v24 = v50[0];
  if (!v50[0])
  {
    goto LABEL_24;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_19_3();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    v26 = v25;
    v27 = [v25 viewControllers];
    v28 = sub_1E42062B4();

    v50[0] = v28;
    v53 = 1;
    LOBYTE(v54) = 0;
    v29 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
    sub_1E328FCF4(&qword_1EE23B4A0, &unk_1ECF396B0, &qword_1E42B49B0);
    v31 = OUTLINED_FUNCTION_147();
    sub_1E38D2054(v31, v32);

    if (v49)
    {
      ObjectType = swift_getObjectType();
      if (!dynamic_cast_existential_1_conditional(v49, ObjectType, &protocol descriptor for TemplateReparentable))
      {
        OUTLINED_FUNCTION_46_12();

        goto LABEL_25;
      }

      OUTLINED_FUNCTION_227_0();
      swift_getObjectType();
      OUTLINED_FUNCTION_202_1();
      v34();
      v36 = v35;

      if (v36)
      {
        v24 = 1;
        do
        {
          v37 = [v26 viewControllers];
          v38 = sub_1E42062B4();

          v50[0] = v38;
          v53 = v24;
          LOBYTE(v54) = 0;
          v39 = OUTLINED_FUNCTION_147();
          sub_1E38D2054(v39, v40);

          v41 = swift_getObjectType();
          if (dynamic_cast_existential_1_conditional(v49, v41, &protocol descriptor for TemplateReparentable))
          {
            OUTLINED_FUNCTION_134_2();
            v42 = swift_getObjectType();
            v43 = v49[2];
            v44 = v49;
            v43(1, v42, v49);

            v45 = v49[5];
            v46 = v44;
            (v45)(0, 0, v42, v49);
          }
        }

        while (!__OFADD__(v24++, 1));
        __break(1u);
      }
    }
  }

  OUTLINED_FUNCTION_46_12();

LABEL_25:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E1F79C()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_45();
  (*(v2 + 1088))();
  if (!v3)
  {
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_206_1();
  OUTLINED_FUNCTION_45();
  v5 = (*(v4 + 808))();
  v83 = v0;
  v84 = v1;
  MEMORY[0x1EEE9AC00](v5);
  v70[2] = &v83;
  v6 = sub_1E3849DF8(sub_1E3756228, v70, v5);

  if (!v6)
  {
    goto LABEL_47;
  }

  v78 = v0;
  OUTLINED_FUNCTION_45();
  v7 += 79;
  v8 = *v7;
  v9 = (*v7)();
  sub_1E39574B8(v9, &v83);

  v10 = v85;
  if (v85)
  {
    v11 = v86;
    __swift_project_boxed_opaque_existential_1(&v83, v85);
    v79 = (*(v11 + 48))(v10, v11);
    v13 = v12;
    v14 = __swift_destroy_boxed_opaque_existential_1(&v83);
    if (v13)
    {
      v73 = 0;
      v74 = v1;
      goto LABEL_10;
    }
  }

  else
  {
    v14 = sub_1E325F7FC(&v83, &qword_1ECF2EC80, &qword_1E42AD1C0);
  }

  v15 = (v8)(v14);
  sub_1E39574B8(v15, v80);

  if (!v81)
  {
    v31 = v80;
LABEL_46:
    sub_1E325F7FC(v31, &qword_1ECF2EC80, &qword_1E42AD1C0);

LABEL_47:

    goto LABEL_48;
  }

  v16 = v82;
  __swift_project_boxed_opaque_existential_1(v80, v81);
  OUTLINED_FUNCTION_202_1();
  v17 = OUTLINED_FUNCTION_50();
  v18(v17, v16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
  OUTLINED_FUNCTION_156_1();
  sub_1E4207604();
  OUTLINED_FUNCTION_12_1();

  sub_1E39574B8(AssociatedTypeWitness, &v83);

  v20 = v85;
  if (!v85)
  {
    __swift_destroy_boxed_opaque_existential_1(v80);
    v31 = &v83;
    goto LABEL_46;
  }

  v73 = 0;
  v74 = v1;
  __swift_project_boxed_opaque_existential_1(&v83, v85);
  OUTLINED_FUNCTION_8_156();
  v79 = v21(v20);
  v13 = v22;
  __swift_destroy_boxed_opaque_existential_1(&v83);
  __swift_destroy_boxed_opaque_existential_1(v80);

LABEL_10:
  OUTLINED_FUNCTION_45();
  v24 = (*(v23 + 736))();
  v25 = sub_1E32AE9B0(v24);
  v26 = 0;
  while (1)
  {
    if (v25 == v26)
    {

      goto LABEL_47;
    }

    if ((v24 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x1E6911E60](v26, v24);
    }

    else
    {
      if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v27 = *(v24 + 8 * v26 + 32);
    }

    v28 = v27;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      return;
    }

    if (*&v27[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier] == v79 && v13 == *&v27[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8])
    {
      break;
    }

    v30 = sub_1E42079A4();

    ++v26;
    if (v30)
    {

      goto LABEL_26;
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_45();
  v33 = *(v32 + 656);

  v33(v34);
  OUTLINED_FUNCTION_145();
  v83 = v79;
  v84 = v13;
  sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
  OUTLINED_FUNCTION_82();
  v77 = v35;
  sub_1E3CA4D00(v36, v37, v38, v39, v35, v40);

  v41 = v80[0];
  v42 = v74;
  v43 = v78;
  if (!v80[0])
  {

    goto LABEL_47;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20_2();
  v76 = swift_dynamicCastObjCClass();
  if (v76)
  {
    v72 = v41;

    v33(v44);
    OUTLINED_FUNCTION_145();
    v83 = v43;
    v84 = v42;
    OUTLINED_FUNCTION_82();
    sub_1E3CA4D00(v45, v46, v47, v48, v77, v49);

    v41 = v80[0];
    if (!v80[0])
    {

      v69 = v72;
LABEL_52:

      goto LABEL_48;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_20_2();
    v75 = swift_dynamicCastObjCClass();
    if (v75)
    {
      v71 = v41;
      v50 = [v76 popToRootViewControllerAnimated_];
      while (1)
      {

        v51 = [v75 viewControllers];
        v52 = sub_1E42062B4();

        v53 = v52 >> 62 ? sub_1E4207384() : *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v54 = MEMORY[0x1E69E7D40];
        if (!v53)
        {
          break;
        }

        if ((v52 & 0xC000000000000001) != 0)
        {
          v55 = MEMORY[0x1E6911E60](0, v52);
        }

        else
        {
          if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_57;
          }

          v55 = *(v52 + 32);
        }

        v50 = v55;

        ObjectType = swift_getObjectType();
        if (dynamic_cast_existential_1_conditional(v50, ObjectType, &protocol descriptor for TemplateReparentable))
        {
          OUTLINED_FUNCTION_145();
          v57 = swift_getObjectType();
          v58 = v51[11];
          v59 = v50;
          v58(0, v57, v51);

          v60 = v51[5];

          v61 = v59;
          v60(v78, v42, v57, v51);

          v62 = v51[2];
          v63 = v61;
          v62(1, v57, v51);
        }

        [v76 pushViewController:v50 animated:0];
        v64 = swift_getObjectType();
        if (dynamic_cast_existential_1_conditional(v50, v64, &protocol descriptor for TemplateReparentable))
        {
          OUTLINED_FUNCTION_145();
          v65 = swift_getObjectType();
          v66 = v51[2];
          v67 = v50;
          v66(0, v65, v51);
        }
      }

      OUTLINED_FUNCTION_39();
      (*((*v54 & v68) + 0x220))(v79, v13);

      v69 = v71;
      goto LABEL_52;
    }
  }

  else
  {
  }

LABEL_48:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E1FFD8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E3E25304(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = &v5[5 * a1];
    sub_1E3251BE8(v8 + 2, a2);
    result = memmove(v8 + 2, v8 + 72, 40 * (v7 - 1 - a1));
    v5[2] = v7 - 1;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1E3E200A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_118();
  sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E41FDEE4();
  v7 = v4;
  a4();

  v8 = OUTLINED_FUNCTION_53();
  return v9(v8);
}

void sub_1E3E20174(void *a1, char a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_4_0();
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x1E69E7CD0];
  v6 = [v2 tabs];
  sub_1E3280A90(0, &unk_1ECF39558, 0x1E69DCFE0);
  OUTLINED_FUNCTION_138_1();
  v7 = sub_1E42062B4();

  sub_1E3E20528(v7, v5);

  if (a2)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    *&v2[OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_savedTabBarItemsIds] = *(v5 + 16);

LABEL_14:
  }

  else
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v8 = *(v5 + 16);
    v35 = v3;
    v33 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_savedTabBarItemsIds;

    sub_1E397015C(v9, v8);
    OUTLINED_FUNCTION_31_4();

    v10 = v8 + 56;
    OUTLINED_FUNCTION_4_4();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;

    v16 = 0;
    v34 = v8 + 56;
    if (v13)
    {
      goto LABEL_8;
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        *&v35[v33] = MEMORY[0x1E69E7CD0];
        goto LABEL_14;
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
      if (v13)
      {
        v16 = v17;
        do
        {
LABEL_8:
          OUTLINED_FUNCTION_172_0();
          v19 = *v18;
          v20 = v18[1];

          v21 = sub_1E4205ED4();
          v22 = [a1 tabForIdentifier_];

          v38 = v22;
          if (v22)
          {
            v23 = [v22 title];
            v37 = sub_1E4205F14();
            v25 = v24;
          }

          else
          {
            v37 = 0;
            v25 = 0xE000000000000000;
          }

          v13 &= v13 - 1;
          v26 = *&v35[OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_manager];
          v27 = *(v26 + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_tabBarPageDataDict);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1E4297BE0;
          *(inited + 32) = sub_1E4205F14();
          *(inited + 40) = v29;
          v30 = *(v26 + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_actionContextTabBar);
          v31 = *(v26 + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_actionContextTabBar + 8);
          *(inited + 72) = MEMORY[0x1E69E6158];
          *(inited + 48) = v30;
          *(inited + 56) = v31;

          v32 = sub_1E4205CB4();

          sub_1E3BA71B8(v19, v20, 1, 3, v37, v25, 0, 0, v39, v27, v32);
          sub_1E3BA6C54();
          sub_1E3814D14(v39);

          v10 = v34;
        }

        while (v13);
      }
    }

    __break(1u);
  }
}

void sub_1E3E20528(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v5 = sub_1E4207384();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 >= 1)
  {
    v6 = 0;
    v7 = &selRef_alwaysPrefetchAppConfiguration;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1E6911E60](v6, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v6 + 32);
      }

      v9 = v8;
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        v11 = [v10 children];
        v12 = OUTLINED_FUNCTION_106();
        sub_1E3280A90(v12, &unk_1ECF39558, 0x1E69DCFE0);
        OUTLINED_FUNCTION_20_2();
        v13 = sub_1E42062B4();

        sub_1E3E20528(v13, a2);
      }

      else
      {
        if (![v9 v7[187]])
        {

          goto LABEL_13;
        }

        v14 = [v9 identifier];
        v15 = sub_1E4205F14();
        v16 = v7;
        v18 = v17;

        swift_beginAccess();
        v2 = (a2 + 16);
        v19 = v18;
        v7 = v16;
        sub_1E3277398(&v20, v15, v19);
        swift_endAccess();
      }

LABEL_13:
      if (v5 == ++v6)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_1E3E206E8()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v121 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v110 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v110 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v110 - v17;
  type metadata accessor for UnifiedMessagingAccountMessageViewModel();
  OUTLINED_FUNCTION_19_3();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    goto LABEL_44;
  }

  v20 = v19;
  v114 = v10;
  v115 = v2;
  v113 = v0;
  OUTLINED_FUNCTION_21();
  v21 += 65;
  v22 = *v21;
  v23 = v21;

  v118 = v23;
  v119 = v22;
  v25 = (v22)(v24);
  if (v25)
  {
    v26 = v25;
    v27 = v4;
    v120 = sub_1E3A517DC();
  }

  else
  {
    v27 = v4;
    v120 = 0;
  }

  v28 = *(*v20 + 896);

  v30 = v28(v29);
  v31 = v27;
  v32 = v30;
  v117 = v31;

  v34 = (v119)(v33);
  if (v34)
  {
    v35 = v34;
    v36 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v116 = v35[v36];
  }

  else
  {
    v116 = 0;
  }

  v37 = v6;
  v38 = v120;
  if (!v32)
  {
    if (!v120)
    {

      goto LABEL_44;
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_4_32();
    v62 = v121;
    v63(v1);
    v64 = sub_1E41FFC94();
    sub_1E4206814();
    OUTLINED_FUNCTION_178();
    if (os_log_type_enabled(v64, v65))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_36_4();
      _os_log_impl(v66, v67, v68, v69, v70, 2u);
      v62 = v121;
      OUTLINED_FUNCTION_6_0();
    }

    (*(v6 + 8))(v1, v62);
    sub_1E3E20EA4();
    OUTLINED_FUNCTION_67_1();
    (*((*MEMORY[0x1E69E7D40] & v71) + 0x210))(0);

LABEL_37:

    goto LABEL_44;
  }

  v39 = v32;
  v40 = sub_1E324FBDC();
  v41 = *(v37 + 16);
  v112 = v40;
  if (v38 && v32 == v38)
  {
    v42 = v121;
    v43 = v41;
    v41(v13, v40, v121);
    v44 = sub_1E41FFC94();
    v45 = sub_1E4206814();
    if (OUTLINED_FUNCTION_20_11(v45))
    {
      v46 = OUTLINED_FUNCTION_125_0();
      *v46 = 0;
      OUTLINED_FUNCTION_20_34();
      _os_log_impl(v47, v48, v49, v50, v46, 2u);
      v42 = v121;
      OUTLINED_FUNCTION_6_0();
    }

    v51 = *(v37 + 8);
    v52 = OUTLINED_FUNCTION_146();
    v51(v52);
    if ((v116 & 1) == 0)
    {
      v53 = v114;
      v43(v114, v112, v42);
      v54 = v53;
      v55 = sub_1E41FFC94();
      v56 = sub_1E4206814();
      if (OUTLINED_FUNCTION_20_11(v56))
      {
        v57 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_50_4(v57);
        OUTLINED_FUNCTION_20_34();
        _os_log_impl(v58, v59, v60, v61, v13, 2u);
        OUTLINED_FUNCTION_21_0();
      }

      (v51)(v54, v42);
      OUTLINED_FUNCTION_15_8();
      sub_1E3E16BA8();
    }

LABEL_43:

    goto LABEL_44;
  }

  v111 = v41;
  v41(v18, v40, v121);
  v72 = sub_1E41FFC94();
  v73 = sub_1E4206814();
  if (OUTLINED_FUNCTION_20_11(v73))
  {
    v74 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v74);
    OUTLINED_FUNCTION_20_34();
    _os_log_impl(v75, v76, v77, v78, v13, 2u);
    OUTLINED_FUNCTION_21_0();
  }

  v79 = (v37 + 8);
  v80 = *(v37 + 8);
  v81 = v18;
  v82 = v121;
  v114 = v79;
  v80(v81, v121);
  if (v38)
  {
    v111(v115, v112, v82);
    v83 = sub_1E41FFC94();
    v84 = sub_1E4206814();
    if (OUTLINED_FUNCTION_20_11(v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 67109120;
      *(v85 + 4) = v116;
      OUTLINED_FUNCTION_20_34();
      _os_log_impl(v86, v87, v88, v89, v85, 8u);
      OUTLINED_FUNCTION_21_0();
    }

    v80(v115, v82);
  }

  else
  {
    v116 = 0;
  }

  v90 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
  v91 = v119();
  v123 = 0;
  memset(v122, 0, sizeof(v122));
  v92 = sub_1E39C4090(v20, v91, v122);

  sub_1E325F7FC(v122, &qword_1ECF296C0, &unk_1E429BBE0);
  if (!v92)
  {

    goto LABEL_37;
  }

  type metadata accessor for AccountMessageViewController();
  OUTLINED_FUNCTION_20_2();
  v93 = swift_dynamicCastClass();
  if (v93)
  {
    v94 = v93;
    OUTLINED_FUNCTION_85();
    v96 = *(v95 + 528);
    v97 = v92;
    v98 = v96(v94);
    v99 = (v119)(v98);
    if (v99)
    {
      v101 = v99;
      sub_1E3A51794(0, v100);
    }

    if (v116)
    {
      OUTLINED_FUNCTION_224();
      sub_1E3E20EA4();
    }

    else
    {
      v102 = v121;
      v111(v113, v112, v121);
      v103 = sub_1E41FFC94();
      sub_1E4206814();
      OUTLINED_FUNCTION_178();
      if (os_log_type_enabled(v103, v104))
      {
        *OUTLINED_FUNCTION_125_0() = 0;
        OUTLINED_FUNCTION_36_4();
        _os_log_impl(v105, v106, v107, v108, v109, 2u);
        v102 = v121;
        OUTLINED_FUNCTION_6_0();
      }

      v80(v113, v102);
      OUTLINED_FUNCTION_15_8();
      sub_1E3E16BA8();
    }

    goto LABEL_43;
  }

LABEL_44:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E20EA4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E4206D84();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_26_3();
  v14 = (*((*MEMORY[0x1E69E7D40] & v13) + 0x208))();
  if (!v14)
  {
LABEL_16:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v15 = v14;
  if (v5)
  {
    v16 = type metadata accessor for AccountMessageContentConfiguration();
    v17 = v15;
    v18 = sub_1E3A52AE4();
  }

  else
  {
    [v14 vui:0 willMoveToParentViewController:?];
    v19 = [v15 view];
    if (!v19)
    {
      goto LABEL_18;
    }

    v16 = v19;
    [v19 vui_removeFromSuperView];

    [v15 vui_removeFromParentViewController];
    v18 = 0;
  }

  if (v3)
  {
    v20 = [v1 sidebar];
    v21 = OUTLINED_FUNCTION_106();
    if (v18)
    {
      v22 = type metadata accessor for AccountMessageContentConfiguration();
      OUTLINED_FUNCTION_77_19();
      v25 = sub_1E3274BD0(v23, v24);
      v21 = v18;
    }

    else
    {
      v22 = 0;
      v25 = 0;
      v40 = 0;
      v41 = 0;
    }

    v39 = v21;
    v42 = v22;
    v43 = v25;

    sub_1E4206D94();

    goto LABEL_13;
  }

  v37 = v5;
  v38 = objc_opt_self();
  OUTLINED_FUNCTION_2_4();
  v26 = swift_allocObject();
  *(v26 + 16) = v1;
  *(v26 + 24) = v18;
  OUTLINED_FUNCTION_2_4();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1E3E24E9C;
  *(v27 + 24) = v26;
  v43 = sub_1E37D1918;
  v44 = v27;
  OUTLINED_FUNCTION_12_0();
  v40 = 1107296256;
  OUTLINED_FUNCTION_67();
  v41 = v28;
  v42 = &block_descriptor_44_1;
  v29 = _Block_copy(&v39);

  v30 = v1;

  [v38 performWithoutAnimation_];
  _Block_release(v29);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v5 = v37;
LABEL_13:
    v32 = [v1 sidebar];
    (*(v8 + 104))(v12, *MEMORY[0x1E69DC430], v6);
    sub_1E4206DA4();

    v33 = OUTLINED_FUNCTION_102_3();
    v34(v33);
    if (v5)
    {
      [v1 vui:v15 addChildViewController:?];
      [v15 vui:v1 didMoveToParentViewController:?];
    }

    v35 = OUTLINED_FUNCTION_170_0();
    sub_1E37FAED8(v35, v36);
    goto LABEL_16;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1E3E21260()
{
  OUTLINED_FUNCTION_118();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_131_0();
    v8(v0);
    v9 = sub_1E41FFC94();
    v10 = sub_1E4206814();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_50_4(v11);
      _os_log_impl(&dword_1E323F000, v9, v10, "RootSplitViewController:: account message: dispatch timer ended, attempting to present", v1, 2u);
      OUTLINED_FUNCTION_21_0();
    }

    (*(v4 + 8))(v0, v2);
    OUTLINED_FUNCTION_67_1();
    (*((*MEMORY[0x1E69E7D40] & v12) + 0x240))(0);
    OUTLINED_FUNCTION_15_8();
    sub_1E3E16BA8();
  }
}

void sub_1E3E21400()
{
  OUTLINED_FUNCTION_31_1();
  v51 = v3;
  v58 = v4;
  v5 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v57 = v10 - v9;
  OUTLINED_FUNCTION_138();
  v11 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v56 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v55 = v15 - v14;
  OUTLINED_FUNCTION_138();
  v50 = sub_1E4203FB4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v60 = sub_1E4204014();
  OUTLINED_FUNCTION_0_10();
  v53 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25_3();
  v52 = v22;
  OUTLINED_FUNCTION_138();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v25 = Strong;
  v48 = v7;
  v49 = v5;
  v26 = [Strong sidebar];
  [v26 setHidden_];

  v27 = v58;
  v46 = v11;
  if (v58)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_89_5();
    v28(v0);
    v29 = sub_1E41FFC94();
    v30 = sub_1E4206814();
    if (OUTLINED_FUNCTION_262(v30))
    {
      v31 = OUTLINED_FUNCTION_125_0();
      *v31 = 0;
      _os_log_impl(&dword_1E323F000, v29, v30, "RootSplitViewController:: animating sidebar open, will try to present account message in 0.5s", v31, 2u);
      OUTLINED_FUNCTION_65_0();
    }

    v32 = OUTLINED_FUNCTION_97_1();
    v33(v32);
    v27 = v58;
  }

  v34 = [v25 view];
  if (v34)
  {
    v35 = v34;
    [v34 setUserInteractionEnabled_];

    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v59 = sub_1E4206A04();
    sub_1E4204004();
    *v1 = 500;
    (*(v17 + 104))(v1, *MEMORY[0x1E69E7F38], v50);
    MEMORY[0x1E690E9C0](v2, v1);
    v36 = OUTLINED_FUNCTION_13_8();
    v37(v36);
    v54 = *(v53 + 8);
    v54(v2, v60);
    OUTLINED_FUNCTION_4_0();
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    *(v39 + 24) = v27 & 1;
    *(v39 + 25) = v51 & 1;
    v61[4] = sub_1E3E25454;
    v61[5] = v39;
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v61[2] = v40;
    v61[3] = &block_descriptor_73_0;
    v41 = _Block_copy(v61);

    sub_1E4203FE4();
    v61[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_7_180();
    sub_1E3274BD0(v42, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    OUTLINED_FUNCTION_47();
    sub_1E328FCF4(v44, v45, &qword_1E429B000);
    sub_1E42072E4();
    MEMORY[0x1E69112E0](v52, v55, v57, v41);
    _Block_release(v41);

    (*(v48 + 8))(v57, v49);
    (*(v56 + 8))(v55, v47);
    v54(v52, v60);
LABEL_8:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  __break(1u);
}

void sub_1E3E219C8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = [v3 identifier];
  sub_1E4205F14();

  OUTLINED_FUNCTION_26_3();
  v12 = MEMORY[0x1E69E7D40];
  v13 = OUTLINED_FUNCTION_39_0();
  v14(v13);
  v16 = v15;

  if (v16)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v17(v10);
    v18 = v3;
    v19 = sub_1E41FFC94();
    v20 = sub_1E42067F4();

    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_6_21();
      v21 = OUTLINED_FUNCTION_16_15();
      v56[0] = v21;
      *v12 = 136315138;
      v22 = [v18 identifier];
      sub_1E4205F14();

      v23 = OUTLINED_FUNCTION_39_9();
      v26 = sub_1E3270FC8(v23, v24, v25);

      *(v12 + 4) = v26;
      OUTLINED_FUNCTION_6_29();
      _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_7_9();
      OUTLINED_FUNCTION_51_2();
    }

    (*(v6 + 8))(v10, v4);
  }

  else
  {
    v32 = [v3 identifier];
    sub_1E4205F14();

    OUTLINED_FUNCTION_26_3();
    v33 = OUTLINED_FUNCTION_146();
    v34(v33);

    if (!v54)
    {
      sub_1E325F7FC(&v53, &unk_1ECF2F1D0, &qword_1E42AE148);
      goto LABEL_17;
    }

    sub_1E3251BE8(&v53, v56);
    OUTLINED_FUNCTION_26_3();
    v36 = (*((*v12 & v35) + 0x1B8))();
    if (sub_1E374E8E4(v36, 2))
    {
      sub_1E38C6028(v56, &v52);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F310, &qword_1E42AE150);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
      if (swift_dynamicCast())
      {
        sub_1E3251BE8(v50, &v53);
        v37 = v55;
        __swift_project_boxed_opaque_existential_1(&v53, v54);
        v38 = OUTLINED_FUNCTION_35_0();
        if ((v39(v38, v37) & 1) == 0)
        {
          __swift_project_boxed_opaque_existential_1(&v53, v54);
          OUTLINED_FUNCTION_33_24();
          v40 = OUTLINED_FUNCTION_146();
          v41(v40);
          swift_getAssociatedTypeWitness();
          OUTLINED_FUNCTION_20_2();
          v42 = sub_1E4207604();

          v43 = *(v42 + 16);

          if (v43)
          {
            __swift_destroy_boxed_opaque_existential_1(v56);
            __swift_destroy_boxed_opaque_existential_1(&v53);
            goto LABEL_17;
          }
        }

        __swift_destroy_boxed_opaque_existential_1(&v53);
      }

      else
      {
        v51 = 0;
        memset(v50, 0, sizeof(v50));
        sub_1E325F7FC(v50, &qword_1ECF2EC80, &qword_1E42AD1C0);
      }
    }

    v44 = [v3 identifier];
    sub_1E4205F14();

    OUTLINED_FUNCTION_21();
    v46 = (*(v45 + 440))();
    if (sub_1E374E8E4(v46, 2))
    {
      v47 = [v1 sidebar];
      [v47 isHidden];

      OUTLINED_FUNCTION_26_3();
      v48 = OUTLINED_FUNCTION_53();
      v49(v48);
    }

    OUTLINED_FUNCTION_46_12();
    sub_1E3E152AC();
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

LABEL_17:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E21FA8()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v68 = v5;
  v69 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_3();
  v65 = v10;
  OUTLINED_FUNCTION_138();
  v11 = sub_1E41FFE34();
  OUTLINED_FUNCTION_0_10();
  v66 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  sub_1E4206914();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v18 = [objc_opt_self() itemFromRequest_];
  v67 = v0;
  v19 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_67_22();
  v21 = (*(v20 + 440))();
  if (!sub_1E374E8E4(v21, 2))
  {
    goto LABEL_15;
  }

  sub_1E4206924();
  v22 = OUTLINED_FUNCTION_170_0();
  if (v23(v22) == *MEMORY[0x1E69DC410])
  {
    v24 = OUTLINED_FUNCTION_170_0();
    v25(v24);
    v26 = *v1;
    v27 = [v26 identifier];
    v28 = sub_1E4205F14();
    v30 = v29;

    OUTLINED_FUNCTION_97_14();
    (*((*v19 & v31) + 0x438))(v70, v28, v30);
    if (v70[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F310, &qword_1E42AE150);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
      if (OUTLINED_FUNCTION_90_0(&v71, v70, v33, v32))
      {
        if (*(&v72 + 1))
        {
          sub_1E3251BE8(&v71, v74);
          OUTLINED_FUNCTION_97_14();
          (*((*v19 & v34) + 0x250))();
          v35 = OUTLINED_FUNCTION_35_0();
          sub_1E378A81C(v35, v30, v67);
          OUTLINED_FUNCTION_11_5();

          if (v26)
          {
            v36 = OUTLINED_FUNCTION_35_5();
            sub_1E3E22644(v36, v37, v28, v30);

            MEMORY[0x1E6911240](v38);
            v39 = sub_1E41FFE14();
            (*(v66 + 8))(v16, v11);
            sub_1E3E10D08(v74, v39, 1);

            OUTLINED_FUNCTION_143();
            __swift_destroy_boxed_opaque_existential_1(v74);
          }

          else
          {
            sub_1E324FBDC();
            OUTLINED_FUNCTION_89_5();
            v54(v65);

            v55 = sub_1E41FFC94();
            v56 = sub_1E42067F4();

            if (os_log_type_enabled(v55, v56))
            {
              v57 = OUTLINED_FUNCTION_6_21();
              v58 = OUTLINED_FUNCTION_100();
              *&v71 = v58;
              *v57 = 136315138;
              v59 = sub_1E3270FC8(v28, v30, &v71);

              *(v57 + 4) = v59;
              OUTLINED_FUNCTION_136();
              _os_log_impl(v60, v61, v62, v63, v57, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v58);
              OUTLINED_FUNCTION_55();
              OUTLINED_FUNCTION_6_0();
            }

            else
            {
            }

            OUTLINED_FUNCTION_143();
            (*(v68 + 8))(v65, v69);
            __swift_destroy_boxed_opaque_existential_1(v74);
          }

          goto LABEL_15;
        }
      }

      else
      {
        v73 = 0;
        v71 = 0u;
        v72 = 0u;
      }
    }

    else
    {

      sub_1E325F7FC(v70, &unk_1ECF2F1D0, &qword_1E42AE148);
      v71 = 0u;
      v72 = 0u;
      v73 = 0;
    }

    sub_1E325F7FC(&v71, &qword_1ECF2EC80, &qword_1E42AD1C0);
    goto LABEL_15;
  }

  v41 = OUTLINED_FUNCTION_170_0();
  v42(v41);
  v43 = sub_1E324FBDC();
  (*(v68 + 16))(v8, v43, v69);
  v44 = v18;
  v45 = sub_1E41FFC94();
  v46 = sub_1E4206814();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = OUTLINED_FUNCTION_6_21();
    v48 = swift_slowAlloc();
    *v47 = 138412290;
    *(v47 + 4) = v44;
    *v48 = v44;
    v49 = v44;
    OUTLINED_FUNCTION_20_34();
    _os_log_impl(v50, v51, v52, v53, v47, 0xCu);
    sub_1E325F7FC(v48, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_65_0();
  }

  (*(v68 + 8))(v8, v69);
LABEL_15:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E22644(uint64_t a1, uint64_t (**a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v80 = a4;
  v79 = a3;
  OUTLINED_FUNCTION_118();
  v82 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v81 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_20(v9 - v8);
  sub_1E41FFE34();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39568, &unk_1E42D4D80);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v78 - v12;
  v14 = sub_1E41FFF54();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  MEMORY[0x1E6911250](v84);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF39570, &qword_1E42B4AB0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
    v21 = *(v16 + 32);
    v83 = v14;
    v22 = v21(v20, v13, v14);
    MEMORY[0x1E6911240](v22);
    v23 = sub_1E41FFE14();
    v24 = OUTLINED_FUNCTION_114_0();
    v25(v24);
    v26 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_85();
    (*(v27 + 184))(v23);
    v28 = *(v4 + OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_isHeader);
    v29 = a2;
    v78 = v16;
    if ((v28 & 1) == 0)
    {
      OUTLINED_FUNCTION_21_70();
      v48 = (*(v45 + 200))(v46, v47);
      if (v48)
      {
      }

      else
      {
        v49 = [objc_opt_self() clearColor];
        v50 = [objc_opt_self() imageWithColor_];

        sub_1E41FFF44();
      }
    }

    v51 = sub_1E41FFEF4();
    sub_1E41FFEE4();
    v52 = OUTLINED_FUNCTION_15_119();
    (v51)(v52);
    OUTLINED_FUNCTION_21_70();
    v54 = *(v53 + 200);
    v55 = v54();
    if (v55)
    {

      OUTLINED_FUNCTION_21_70();
      (*(v56 + 432))();
      OUTLINED_FUNCTION_67_1();
      (*((*v26 & v57) + 0x1A8))();
      if ((v58 & 1) == 0)
      {
        VUIRoundValue();
        VUIRoundValue();
        v51 = sub_1E41FFEF4();
        sub_1E41FFEC4();
        v59 = OUTLINED_FUNCTION_15_119();
        (v51)(v59);
      }

      v82 = v20;
      OUTLINED_FUNCTION_21_70();
      v61 = *(v60 + 248);
      v62 = v61();
      if (v62)
      {
        v63 = v62;
        v81 = v29;
        v51 = *(*v62 + 744);

        v64 = (v51)();
        if (v64)
        {

          (*(*v63 + 552))(v87);

          if (v88)
          {
            sub_1E374E9C4();
            OUTLINED_FUNCTION_30();
            (*(v65 + 552))(v89);
            v66 = *v89;
            v67 = *&v89[1];
            v68 = *&v89[2];
            v69 = v90;

            if ((v91 & 1) == 0)
            {
              sub_1E3952BE8(v66, v67, v68, v69);
            }
          }

          VUIFloorValue();
          v51 = OUTLINED_FUNCTION_233_0();
          sub_1E41FFED4();
          v70 = OUTLINED_FUNCTION_15_119();
          (v51)(v70);
        }

        else
        {
        }
      }

      OUTLINED_FUNCTION_21_70();
      v72 = (*(v71 + 224))();
      if (v72 != 5 && (sub_1E3CE4DD8(v72) & 1) != 0 && v61())
      {
        OUTLINED_FUNCTION_30();
        (*(v73 + 1944))();
        OUTLINED_FUNCTION_12_1();

        if (v51)
        {
          v74 = v51;
          v75 = OUTLINED_FUNCTION_233_0();
          sub_1E41FFEB4();
          v76 = OUTLINED_FUNCTION_15_119();
          v75(v76);
        }
      }

      v54();
      v20 = v82;
      sub_1E41FFF44();
    }

    v77 = v83;
    v85 = v83;
    v86 = MEMORY[0x1E69DC110];
    __swift_allocate_boxed_opaque_existential_1(v84);
    OUTLINED_FUNCTION_199_0();
    (*(v51 + 16))();
    sub_1E4206904();
    return (*(v51 + 8))(v20, v77);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
    sub_1E325F7FC(v13, &qword_1ECF39568, &unk_1E42D4D80);
    sub_1E324FBDC();
    v30 = v81;
    OUTLINED_FUNCTION_131_0();
    v31 = v82;
    v32(v83);
    v33 = v80;

    v34 = a2;
    v35 = sub_1E41FFC94();
    v36 = sub_1E42067F4();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v87[0] = swift_slowAlloc();
      *v37 = 136315394;
      *(v37 + 4) = sub_1E3270FC8(v79, v33, v87);
      *(v37 + 12) = 2080;
      MEMORY[0x1E6911250](v84);
      v38 = v85;
      __swift_project_boxed_opaque_existential_1(v84, v85);
      v90 = *&v38;
      __swift_allocate_boxed_opaque_existential_1(v89);
      OUTLINED_FUNCTION_37_1();
      (*(v39 + 16))();
      v40 = sub_1E3294FA4(v89);
      v42 = v41;
      __swift_destroy_boxed_opaque_existential_1(v84);
      v43 = sub_1E3270FC8(v40, v42, v87);

      *(v37 + 14) = v43;
      _os_log_impl(&dword_1E323F000, v35, v36, "RootSplitViewController:: %s with config %s is not list!", v37, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_7_9();
    }

    return v30[1](v83, v31);
  }
}

void sub_1E3E23030()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v72 = v5;
  v73 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25_3();
  v70 = v7;
  OUTLINED_FUNCTION_138();
  v8 = sub_1E41FFE34();
  OUTLINED_FUNCTION_0_10();
  v71 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  sub_1E4206914();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = (v16 - v15);
  OUTLINED_FUNCTION_120_1();
  v18 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_6_41();
  v20 = (*(v19 + 440))();
  if (sub_1E374E8E4(v20, 2))
  {
    sub_1E4206924();
    v21 = OUTLINED_FUNCTION_123_1();
    if (v22(v21) == *MEMORY[0x1E69DC410])
    {
      v69 = v3;
      v23 = OUTLINED_FUNCTION_123_1();
      v24(v23);
      v25 = *v17;
      v26 = [*v17 identifier];
      v27 = sub_1E4205F14();
      v29 = v28;

      (*((*v18 & *v1) + 0x250))();
      v30 = OUTLINED_FUNCTION_38();
      v31 = sub_1E378A81C(v30, v29, v1);

      if (v31)
      {
        v74 = v27;
        OUTLINED_FUNCTION_67_22();
        v33 = (*(v32 + 176))();
        MEMORY[0x1E6911240]();
        v34 = sub_1E41FFE14();
        (*(v71 + 8))(v13, v8);
        v35 = [v33 preferredContentSizeCategory];
        v36 = [v34 preferredContentSizeCategory];
        v37 = sub_1E4205F14();
        v39 = v38;
        if (v37 == sub_1E4205F14() && v39 == v40)
        {
        }

        else
        {
          v42 = sub_1E42079A4();

          if ((v42 & 1) == 0)
          {
            sub_1E3E22644(v31, v69, v74, v29);
          }
        }
      }

      else
      {
        v59 = v25;
        v60 = sub_1E324FBDC();
        (*(v72 + 16))(v70, v60, v73);

        v61 = sub_1E41FFC94();
        v62 = sub_1E42067F4();

        if (os_log_type_enabled(v61, v62))
        {
          OUTLINED_FUNCTION_6_21();
          v63 = OUTLINED_FUNCTION_16_15();
          v75 = v63;
          *v27 = 136315138;
          v64 = sub_1E3270FC8(v27, v29, &v75);

          *(v27 + 4) = v64;
          OUTLINED_FUNCTION_20_34();
          OUTLINED_FUNCTION_53_15(v65, v66, v67, v68);
          __swift_destroy_boxed_opaque_existential_1(v63);
          OUTLINED_FUNCTION_55();
          OUTLINED_FUNCTION_51_2();
        }

        else
        {
        }

        (*(v72 + 8))(v70, v73);
      }
    }

    else
    {
      v43 = OUTLINED_FUNCTION_123_1();
      v44(v43);
      sub_1E324FBDC();
      OUTLINED_FUNCTION_89_5();
      v45 = OUTLINED_FUNCTION_33_14();
      v46(v45);
      v47 = v3;
      v48 = sub_1E41FFC94();
      sub_1E4206814();

      if (OUTLINED_FUNCTION_84_1())
      {
        v49 = OUTLINED_FUNCTION_6_21();
        v50 = swift_slowAlloc();
        *v49 = 138412290;
        *(v49 + 4) = v47;
        *v50 = v47;
        v51 = v47;
        OUTLINED_FUNCTION_35_8();
        _os_log_impl(v52, v53, v54, v55, v56, 0xCu);
        sub_1E325F7FC(v50, &unk_1ECF28E30, &qword_1E429E820);
        OUTLINED_FUNCTION_55();
        OUTLINED_FUNCTION_21_0();
      }

      v57 = OUTLINED_FUNCTION_13_8();
      v58(v57);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E23680()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 440))();
  sub_1E397C3E4(v2, v3, v4);
  result = sub_1E4205E84();
  if ((result & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_wasSidebarVisibilityUpdatedForMetrics) = 1;
  }

  return result;
}

uint64_t sub_1E3E23828(int a1, int a2, id a3)
{
  v3 = [a3 identifier];
  v4 = sub_1E4205F14();
  v6 = v5;

  OUTLINED_FUNCTION_67_1();
  v7 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & v8) + 0x438))(v21, v4, v6);

  if (!v22)
  {
    sub_1E325F7FC(v21, &unk_1ECF2F1D0, &qword_1E42AE148);
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    return sub_1E325F7FC(&v18, &qword_1ECF2EC80, &qword_1E42AD1C0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F310, &qword_1E42AE150);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
  if ((OUTLINED_FUNCTION_90_0(&v18, v21, v10, v9) & 1) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    return sub_1E325F7FC(&v18, &qword_1ECF2EC80, &qword_1E42AD1C0);
  }

  if (!*(&v19 + 1))
  {
    return sub_1E325F7FC(&v18, &qword_1ECF2EC80, &qword_1E42AD1C0);
  }

  sub_1E3251BE8(&v18, v21);
  v11 = v23;
  OUTLINED_FUNCTION_220_0(v21, v22);
  v12 = OUTLINED_FUNCTION_31_4();
  if (v13(v12, v11))
  {
    v14 = v22;
    OUTLINED_FUNCTION_0_257(v21, v22);
    v15(v14);
    OUTLINED_FUNCTION_67_1();
    (*((*v7 & v16) + 0x480))();
  }

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

void sub_1E3E23B28(void *a1, char a2)
{
  v4 = [objc_opt_self() defaultCenter];
  sub_1E396B128();

  v5 = sub_1E4205ED4();

  [v4 postNotificationName:v5 object:0];

  sub_1E3E20174(a1, a2);
}

void sub_1E3E23C48()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  if (v4)
  {
    v30 = v14;
    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v29 = sub_1E4206A04();
    OUTLINED_FUNCTION_2_4();
    v15 = swift_allocObject();
    *(v15 + 16) = v2;
    *(v15 + 24) = v6;
    v31[4] = sub_1E3E258EC;
    v31[5] = v15;
    OUTLINED_FUNCTION_12_0();
    v31[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v31[2] = v16;
    v31[3] = &block_descriptor_115_0;
    v17 = _Block_copy(v31);
    v18 = v6;
    v19 = v2;

    sub_1E4203FE4();
    v31[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_7_180();
    sub_1E3274BD0(v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    OUTLINED_FUNCTION_47();
    sub_1E328FCF4(v22, v23, &qword_1E429B000);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v0, v10, v17);
    _Block_release(v17);

    v24 = OUTLINED_FUNCTION_11_6();
    v25(v24);
    (*(v12 + 8))(v0, v30);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_7_20();
    [(*(v26 + 392))() setImage_];
    OUTLINED_FUNCTION_25_2();
  }
}

id sub_1E3E23F38(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1E4205ED4();

  v6 = [v3 initWithTitle:v5 image:a3];

  return v6;
}

id sub_1E3E23F9C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8;
  v14 = sub_1E4205ED4();

  v15 = sub_1E4205ED4();

  if (a6)
  {
    v19[4] = a6;
    v19[5] = a7;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1E3A01924;
    v19[3] = a8;
    v16 = _Block_copy(v19);
  }

  else
  {
    v16 = 0;
  }

  v17 = [v10 initWithTitle:v14 image:a3 identifier:v15 viewControllerProvider:v16];
  _Block_release(v16);

  return v17;
}

id sub_1E3E240C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v13 = sub_1E4205ED4();

  v14 = sub_1E4205ED4();

  sub_1E3280A90(0, &unk_1ECF39558, 0x1E69DCFE0);
  v15 = sub_1E42062A4();

  if (a7)
  {
    v19[4] = a7;
    v19[5] = a8;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1E3A01924;
    v19[3] = &block_descriptor_103_0;
    v16 = _Block_copy(v19);
  }

  else
  {
    v16 = 0;
  }

  v17 = [v9 initWithTitle:v13 image:a3 identifier:v14 children:v15 viewControllerProvider:v16];
  _Block_release(v16);

  return v17;
}

void *sub_1E3E2422C()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1E397A120(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

void *sub_1E3E24278(void *result)
{
  v2 = (*v1)[3];
  if (result + 1 > (v2 >> 1))
  {
    result = sub_1E397A120((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

void sub_1E3E242DC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    OUTLINED_FUNCTION_21();
    (*(v2 + 440))();
    sub_1E3E10978();
  }
}

void sub_1E3E24384()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() sharedApplication];
    v3 = [v2 applicationState];

    OUTLINED_FUNCTION_67_22();
    if (v3 == 2)
    {
      (*(v4 + 360))(1);
    }

    else if ((*(v4 + 304))())
    {
      v5 = [v1 traitCollection];
      v6 = [v5 horizontalSizeClass];

      if (v6 == 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }

      sub_1E3E10BC8(v7);
    }

    else
    {
      OUTLINED_FUNCTION_6_41();
      (*(v8 + 336))(1);
    }
  }
}

void sub_1E3E244EC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 440))();
  if (!sub_1E374E8E4(v3, 2))
  {
LABEL_18:

    return;
  }

  OUTLINED_FUNCTION_8_9();
  v5 = (*(v4 + 592))() + 64;
  OUTLINED_FUNCTION_4_4();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v27 = v11;

  v12 = 0;
  v26 = v1;
  while (v8)
  {
LABEL_9:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v27 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = *(*(v27 + 56) + 8 * v15);
    OUTLINED_FUNCTION_21();
    v21 = *(v20 + 1080);

    v22 = v19;
    v21(v28, v18, v17);
    if (!v28[3])
    {

      sub_1E325F7FC(v28, &unk_1ECF2F1D0, &qword_1E42AE148);
      v29 = 0u;
      v30 = 0u;
      v31 = 0;
      v1 = v26;
      goto LABEL_16;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F310, &qword_1E42AE150);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
    if ((OUTLINED_FUNCTION_90_0(&v29, v28, v24, v23) & 1) == 0)
    {
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      v1 = v26;
      goto LABEL_15;
    }

    v1 = v26;
    if (*(&v30 + 1))
    {
      sub_1E3251BE8(&v29, v32);
      v25 = [v26 traitCollection];
      sub_1E3E10D08(v32, v25, 0);

      __swift_destroy_boxed_opaque_existential_1(v32);
    }

    else
    {
LABEL_15:

LABEL_16:
      sub_1E325F7FC(&v29, &qword_1ECF2EC80, &qword_1E42AD1C0);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      goto LABEL_18;
    }

    v8 = *(v5 + 8 * v13);
    ++v12;
    if (v8)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void *sub_1E3E24800(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D330, &qword_1E42D4E98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[6 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D320, &unk_1E42D4E88);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_1E3E24938(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v4 = v3;
  v8 = *(v4 + 32);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v11 = sub_1E3CE4EE4(a3, 1);
    v12 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_4_154();
    if (v14)
    {
      (*(v13 + 304))(0);
      if (!UIAccessibilityIsBoldTextEnabled())
      {
        return result;
      }
    }

    else
    {
      (*(v13 + 280))(0);
      if (UIAccessibilityIsBoldTextEnabled() & v8)
      {
        return result;
      }
    }

    OUTLINED_FUNCTION_4_154();
    v16 = *(v15 + 208);
    v17 = a2;
    v16(a2);
    OUTLINED_FUNCTION_67_1();
    (*((*v12 & v18) + 0x148))(v11 & 1);
    OUTLINED_FUNCTION_4_154();
    (*(v19 + 232))(a1);
    __swift_project_boxed_opaque_existential_1((v4 + 40), *(v4 + 64));
    v20 = OUTLINED_FUNCTION_39_0();
    v22 = v21(v20);
    if (v22)
    {
      v23 = (*(*v22 + 392))(v22);

      if (v23)
      {
        type metadata accessor for ImageLayout();
        OUTLINED_FUNCTION_20_2();
        if (!swift_dynamicCastClass())
        {
        }
      }
    }

    if (v11)
    {
      v24 = *(v4 + 72);
      __swift_project_boxed_opaque_existential_1((v4 + 40), *(v4 + 64));
      v25 = OUTLINED_FUNCTION_35_0();
      v27 = v26(v25, v24);
      if (v27)
      {
        (*(*v27 + 392))();
        OUTLINED_FUNCTION_16_5();

        type metadata accessor for ImageLayout();
        OUTLINED_FUNCTION_20_2();
        swift_dynamicCastClass();
      }
    }

    OUTLINED_FUNCTION_4_154();
    v29 = *(v28 + 256);

    v29(v30);
    sub_1E3E23C48();
  }

  return result;
}

void *sub_1E3E24C80(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3E251DC(a1, a2, a3, *v3, &unk_1ECF396C0, &unk_1E42D4E70, &unk_1ECF2F1E0, &qword_1E42AE158);
  *v3 = result;
  return result;
}

void sub_1E3E24CC0()
{
  v1 = [*(v0 + 16) sidebar];
  [v1 setHidden_];
}

void sub_1E3E24D34(uint64_t a1, void *a2)
{
  v4 = *(v2 + 16);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v6 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_21();
    (*(v7 + 352))(0);
    OUTLINED_FUNCTION_26_3();
    v9 = *((*v6 & v8) + 0x178);
    v10 = a2;
    v11 = OUTLINED_FUNCTION_87_0();
    v9(v11);
    if (a2)
    {
      OUTLINED_FUNCTION_21();
      v13 = *(v12 + 392);
      v14 = v4;
      v15 = v13();
      if (v15)
      {
        v16 = v15;
        v17 = objc_allocWithZone(MEMORY[0x1E69DD798]);
        v18 = v14;
        v19 = sub_1E3E23F38(0, 0xE000000000000000, a2);
        [v16 _setCompactRepresentation_];
      }
    }
  }
}

void sub_1E3E24E9C()
{
  v1 = *(v0 + 24);
  v4 = [*(v0 + 16) sidebar];
  if (v1)
  {
    type metadata accessor for AccountMessageContentConfiguration();
    OUTLINED_FUNCTION_77_19();
    sub_1E3274BD0(v2, v3);
  }

  sub_1E4206D94();
}

_BYTE *storeEnumTagSinglePayload for TabsStateForMetrics(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E3E25030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF64360[0];
  if (!qword_1ECF64360[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF64360);
  }

  return result;
}

void *sub_1E3E25084(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3E250A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E3E250A4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF396D0, &qword_1E42D4E80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[6 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F0E0, &qword_1E42AE140);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E3E251DC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 8);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || &a4[v14 + 4] <= v16 + 4)
    {
      v19 = OUTLINED_FUNCTION_39_0();
      memmove(v19, v20, v21);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    OUTLINED_FUNCTION_39_0();
    swift_arrayInitWithCopy();
  }

  return v16;
}

void sub_1E3E25318(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1E327D33C(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF396A8, &qword_1E42D4E68);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1E327D33C(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v12);
    *(v17 + 8 * v12) = a1;
  }

  else
  {
    sub_1E377E1B0(v12, a2, a3, a1, v16);
  }
}

void sub_1E3E25454()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong view];
    if (v4)
    {
      v5 = v4;
      [v4 setUserInteractionEnabled_];

      OUTLINED_FUNCTION_26_3();
      (*((*MEMORY[0x1E69E7D40] & v6) + 0x228))(0);
      if (v1)
      {
        sub_1E3E16BA8();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1E3E2554C(id *a1)
{
  v1 = [*a1 identifier];
  v2 = sub_1E4205F14();
  v4 = v3;

  v5 = OUTLINED_FUNCTION_97_1();
  __swift_project_boxed_opaque_existential_1(v5, v6);
  OUTLINED_FUNCTION_33();
  v7 = OUTLINED_FUNCTION_146();
  if (v2 == v8(v7) && v4 == v9)
  {
    v11 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_116_10();
    v11 = sub_1E42079A4();
  }

  return v11 & 1;
}

unint64_t sub_1E3E25614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE269FF0;
  if (!qword_1EE269FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE269FF0);
  }

  return result;
}

void sub_1E3E25670()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_131_0();
  v10(v0);
  v11 = [objc_allocWithZone(VUIAppNavigationController) initWithRootViewController_];
  v12 = *(v2 + 16);
  v13 = v11;
  v14 = OUTLINED_FUNCTION_114_0();
  v15 = v12(v14);
  sub_1E37FB7F0(v15, v16, v13, &selRef_setVuiViewControllerIdentifier_);
  [v13 setMaxNavControllerStackDepth_];
  v17 = *(v2 + 8);
  v18 = OUTLINED_FUNCTION_114_0();
  v19 = v17(v18);
  sub_1E37FB7F0(v19, v20, v13, &selRef_setTitle_);
  v21 = [v13 tabBarItem];
  if (v21)
  {
    v22 = v21;
    v23 = OUTLINED_FUNCTION_114_0();
    v24 = v17(v23);
    sub_1E37FB7F0(v24, v25, v22, &selRef_setTitle_);

    v26 = [v13 tabBarItem];
    if (v26)
    {
      v27 = OUTLINED_FUNCTION_114_0();
      v29 = sub_1E395DF10(v27, v28);
      [v26 setImage_];

      [v13 vui:*(v6 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_manager) addControllerObserver:?];
      (*(v9 + 8))(v0, v4);
      OUTLINED_FUNCTION_25_2();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1E3E2587C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = type metadata accessor for LibrarySidebarItem();
  v10 = &off_1EE277438;
  *&v8 = a2;
  v6 = *a3;
  *(v6 + 16) = a1 + 1;
  return sub_1E3251BE8(&v8, v6 + 40 * a1 + 32);
}

void sub_1E3E258EC()
{
  v1 = *(v0 + 24);
  v2 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x188))();
  [v2 setImage_];
}

uint64_t sub_1E3E2597C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_37_1();
  v5 = OUTLINED_FUNCTION_32_0();
  v6(v5);
  return a2;
}

void OUTLINED_FUNCTION_112_12(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_133_7()
{
  result = v0;
  *(v1 - 120) = *(*(v1 - 128) + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_163_6()
{
  result = v0;
  *(v2 - 120) = *(v1 + 8);
  return result;
}

__n128 OUTLINED_FUNCTION_165_7(uint64_t a1)
{
  *(v2 - 136) = a1;
  result = *(v2 - 400);
  *v1 = result.n128_u32[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_176_5()
{

  return sub_1E42079A4();
}

void OUTLINED_FUNCTION_177_3()
{

  sub_1E3CA4D10();
}

void OUTLINED_FUNCTION_178_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, uint64_t a14)
{

  sub_1E37EE894(a1, a2, a3, a4, 1, a6, 0, 0, a9, a10, a11, a12, a13, a14);
}

uint64_t OUTLINED_FUNCTION_181_2()
{

  return sub_1E38C6028(v0, v1 - 120);
}

unint64_t OUTLINED_FUNCTION_183_4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v4 = a1[1];

  return sub_1E3270FC8(v3, v4, (v1 - 88));
}

void OUTLINED_FUNCTION_230_0()
{

  JUMPOUT(0x1E69109E0);
}

uint64_t OUTLINED_FUNCTION_231_0()
{
  *(v2 - 384) = v0;
  *(v2 - 136) = v1;

  return type metadata accessor for RemoteBarItem();
}

uint64_t OUTLINED_FUNCTION_232_0()
{
  *(v0 - 192) = 0;
  *(v0 - 184) = 0xE000000000000000;

  return sub_1E42074B4();
}

uint64_t OUTLINED_FUNCTION_233_0()
{

  return sub_1E41FFEF4();
}

void OUTLINED_FUNCTION_235(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_236()
{

  sub_1E3E1A708();
}

uint64_t OUTLINED_FUNCTION_237()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_238_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_240_0()
{
}

void OUTLINED_FUNCTION_241_0()
{
  v2 = *(v0 - 304);
}

void OUTLINED_FUNCTION_243()
{
  v2 = *(v0 - 432);
}

uint64_t sub_1E3E25EDC()
{
  swift_allocObject();
  v0 = sub_1E3C2F9A0();

  sub_1E3C2D0A0();

  return v0;
}

void *sub_1E3E25F54@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E381BEF8(__src);
  memcpy(a3, __src, 0x150uLL);
  v6 = type metadata accessor for HorizontalMultiRowCollectionView(0);
  v7 = v6[6];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v8 = (a3 + v6[7]);
  v16[0] = 0x4054400000000000;
  sub_1E42038E4();
  v9 = __dst[1];
  *v8 = __dst[0];
  v8[1] = v9;
  *(a3 + 336) = sub_1E381AE50;
  *(a3 + 344) = a1;
  *(a3 + 352) = 0;
  memcpy(__dst, a2, sizeof(__dst));
  v10 = sub_1E3748B78(__dst);
  v11 = 0uLL;
  if (v10 != 1)
  {
    v12 = vdup_n_s32(LOBYTE(__dst[27]));
    v13.i64[0] = v12.u32[0];
    v13.i64[1] = v12.u32[1];
    v11 = vandq_s8(*&__dst[25], vcgezq_s64(vshlq_n_s64(v13, 0x3FuLL)));
  }

  v14 = (a3 + v6[8]);
  *v14 = v11;
  v14[1].i64[0] = 0;
  *(a3 + v6[9]) = a1;
  memcpy(v16, a3, sizeof(v16));

  sub_1E325F69C(v16, &qword_1ECF2B5C0);
  return memcpy(a3, a2, 0x150uLL);
}

uint64_t type metadata accessor for HorizontalMultiRowCollectionView(uint64_t a1)
{
  result = qword_1EE292450;
  if (!qword_1EE292450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3E26128()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for HorizontalMultiRowCollectionView(0);
  OUTLINED_FUNCTION_0_10();
  v46 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25_6();
  v47 = v8;
  v48 = v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF396E8, &unk_1E42D4F00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  v13 = *(v0 + 336);
  v12 = *(v0 + 344);
  type metadata accessor for CollectionInteractor(0);
  OUTLINED_FUNCTION_4_200();
  sub_1E3E293B0(v14, v15, &unk_1E42BD340);
  v52 = v12;
  v16 = OUTLINED_FUNCTION_18_103(v13, v12);
  v17 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v18 = *(v16 + v17);

  v20 = (*(*v18 + 1040))(v19);

  v50 = v11;
  v51 = v3;
  if (!v20)
  {
    v21 = v4;
LABEL_9:
    v45 = 0;
    goto LABEL_10;
  }

  if (!sub_1E32AE9B0(v20))
  {
    v21 = v4;

    goto LABEL_9;
  }

  if ((v20 & 0xC000000000000001) != 0)
  {
    v45 = MEMORY[0x1E6911E60](0, v20);
  }

  else
  {
    if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v45 = *(v20 + 32);
  }

  v21 = v4;

LABEL_10:
  v22 = v52;
  v23 = sub_1E4200BC4();
  v24 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v25 = *(v23 + v24);

  v44 = (*(*v25 + 960))(v26);

  type metadata accessor for LayoutGrid();
  v27 = v1 + *(v21 + 32);
  v28 = *(v27 + 16);
  v54 = *v27;
  v55 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028, &qword_1E42992D0);
  sub_1E42038F4();
  sub_1E3A2579C(v53);
  v29 = OUTLINED_FUNCTION_18_103(v13, v22);
  v30 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v31 = *(v29 + v30);

  v32 = *(**&v31 + 392);

  v34 = v32(v33);

  if (v34)
  {

    sub_1E3C2AE10();
    v36 = v35;
    (*(*v34 + 1640))();
  }

  OUTLINED_FUNCTION_18_103(v13, v52);
  sub_1E37CDDA4();

  v37 = v50;
  sub_1E3E26680(v45, v44, v50);
  v53 = v31;
  v38 = v48;
  sub_1E3E276C4(v1, v48);
  v39 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v40 = swift_allocObject();
  sub_1E3E27728(v38, v40 + v39);
  type metadata accessor for CollectionViewModel();
  sub_1E3E27864();
  OUTLINED_FUNCTION_10_135();
  sub_1E3E293B0(v41, v42, &protocol conformance descriptor for ViewModel);
  sub_1E4203524();

  sub_1E325F69C(v37, &qword_1ECF396E8);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E26680@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v176 = a2;
  v185 = a1;
  v164 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39708, &qword_1E42D5020);
  OUTLINED_FUNCTION_0_10();
  v153 = v6;
  v154 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v152 = v8;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39710, &unk_1E42D5028);
  OUTLINED_FUNCTION_0_10();
  v157 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  v158 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v156 = &v150 - v13;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CBA0, &qword_1E42A7B30);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_5();
  v155 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v172 = &v150 - v17;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39700, &qword_1E42D4F10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v173 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF396E8, &unk_1E42D4F00);
  OUTLINED_FUNCTION_17_2(v20);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v162 = v22;
  OUTLINED_FUNCTION_138();
  v186 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  *&v169 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  *&v168 = v26 - v25;
  OUTLINED_FUNCTION_138();
  sub_1E4203C44();
  OUTLINED_FUNCTION_0_10();
  v183 = v28;
  v184 = v27;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v182 = (v30 - v29);
  OUTLINED_FUNCTION_138();
  sub_1E4203C54();
  OUTLINED_FUNCTION_0_10();
  v160 = v32;
  v161 = v31;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v178 = v34 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250, " B\r");
  OUTLINED_FUNCTION_17_2(v35);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  v38 = (&v150 - v37);
  v39 = *(v3 + 336);
  v174 = *(v4 + 344);
  v175 = v39;
  LODWORD(v171) = *(v4 + 352);
  v170 = type metadata accessor for CollectionInteractor(0);
  OUTLINED_FUNCTION_4_200();
  sub_1E3E293B0(v40, v41, &unk_1E42BD340);
  OUTLINED_FUNCTION_57();
  v42 = sub_1E4200BC4();
  v43 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v44 = *(v42 + v43);

  v45 = (*v44 + 392);
  v46 = *v45;

  v165 = v46;
  v166 = v45;
  v177 = v46(v47);
  v48 = type metadata accessor for LayoutGrid();
  v49 = type metadata accessor for HorizontalMultiRowCollectionView(0);
  v50 = (v4 + v49[8]);
  v52 = v50[1];
  v53 = v50[2];
  v192 = *v50;
  v51 = v192;
  v193 = v52;
  v194 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028, &qword_1E42992D0);
  sub_1E42038F4();
  sub_1E3A25950(*v191[0].i64);
  v56 = v55;
  type metadata accessor for CollectionLayoutFactory();
  v179 = v44;
  v59 = *sub_1E3C11B78(v44, v57, v58);
  v181 = (*(v59 + 1176))();
  LODWORD(v180) = v60;

  v192 = v51;
  v193 = v52;
  v194 = v53;
  sub_1E42038F4();
  v167 = v48;
  sub_1E3A258E4(*v191[0].i64);
  v65 = j_nullsub_1(v61, v62, v63, v64);
  v67 = v66;
  v69 = v68;
  v71 = v70;
  sub_1E4200BC4();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  v192 = v51;
  v193 = v52;
  v174 = v53;
  v194 = v53;
  v171 = v54;
  sub_1E42038F4();
  v72 = v49[6];
  sub_1E3746E10(v38);
  __swift_storeEnumTagSinglePayload(v38, 0, 1, v186);
  memcpy(v191, v4, 0x150uLL);
  v73 = sub_1E3748B78(v191);
  v74.i32[0] = 1;
  v75.i32[0] = v73;
  v76 = vdupq_lane_s32(*&vceqq_s32(v75, v74), 0);
  v197 = vbicq_s8(v191[14], v76);
  v198 = vbicq_s8(v191[15], v76);
  v199 = v73 == 1;
  j__OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_5_11();
  v77 = v177;
  sub_1E389BFA8();

  sub_1E325F69C(v38, &qword_1ECF2A250);
  v78 = v49[7];
  v175 = v4;
  v79 = (v4 + v78);
  v80 = *v79;
  v81 = v79[1];
  v188 = v80;
  v189 = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868, &unk_1E4297BF0);
  sub_1E42038F4();
  v83 = v182;
  v82 = v183;
  *v182 = v187;
  (*(v82 + 104))(v83, *MEMORY[0x1E697D728], v184);
  sub_1E4203D84();
  v84 = sub_1E4203C64();
  if (v77 && (v85 = *(*v77 + 1104), v86 = , v87 = v85(v86), v89 = v88, v84 = , (v89 & 1) == 0))
  {
    v90 = v185;
    v170 = v87;
    if (v87 < 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v170 = 1;
    v90 = v185;
  }

  if (v90 && (v91 = (*(*v90 + 872))(v84)) != 0)
  {
    v53 = sub_1E32AE9B0(v91);
  }

  else
  {
    v53 = 0;
  }

  v92 = v179;

  v93 = v168;
  sub_1E3746E10(v168);
  v94 = sub_1E389CA24(v92, v93, 0);

  v95 = (*(v169 + 8))(v93, v186);
  v96 = v165(v95);

  v98 = 1.0;
  if (v96)
  {
    v99 = (*(*v96 + 1128))(v97);
    v101 = v100;

    if ((v101 & 1) == 0)
    {
      v98 = *&v99;
    }
  }

  v188 = v51;
  v189 = v52;
  v190 = v174;
  sub_1E42038F4();
  v102 = sub_1E3A262D8(v53, v94, 0, v187, v98);
  v182 = v103;
  v174 = (*(*v179 + 968))(v102);
  v168 = v196;
  v169 = v195;
  if (v90 && (v104 = (*(*v90 + 872))()) != 0)
  {
    v72 = v104;
  }

  else
  {

    v72 = MEMORY[0x1E69E7CC0];
  }

  if (v72 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E4207384())
  {
    v171 = v53;
    v106 = MEMORY[0x1E69E7CC0];
    if (i < 1)
    {
      break;
    }

    v107 = 0;
    v180 = i;
    v181 = 0x80000001E42850C0;
    v53 = &unk_1ECF2C790;
    v108 = MEMORY[0x1E69E7CC0];
    while (1)
    {

      v187 = v106;
      v188 = 0;
      v189 = 0xE000000000000000;
      sub_1E42074B4();

      v188 = 0xD00000000000001BLL;
      v189 = v181;
      v201 = v107;
      v109 = sub_1E4207944();
      MEMORY[0x1E69109E0](v109);

      if (__OFADD__(v107, v182))
      {
        break;
      }

      v185 = v182 + v107;
      v186 = v108;
      v183 = v189;
      v184 = v188;
      v110 = v106;
      if ((v182 + v107) > v107)
      {
        sub_1E374AD40(&qword_1EE23B540, &unk_1ECF2C790, &qword_1E42996A0, MEMORY[0x1E69E6340]);
        v111 = v182;
        v110 = MEMORY[0x1E69E7CC0];
        do
        {
          v201 = v72;
          v188 = v107;
          LOBYTE(v189) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
          sub_1E38D2054(&v188, &v200);
          if (v200)
          {

            MEMORY[0x1E6910BF0](v112);
            if (*((*&v187 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v187 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E42062F4();
            }

            sub_1E4206324();

            v110 = v187;
          }

          ++v107;
          v111 = (v111 - 1);
        }

        while (v111);
      }

      v108 = v186;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v108 = sub_1E3E28DC8(0, *(v108 + 2) + 1, 1, v108);
      }

      v106 = MEMORY[0x1E69E7CC0];
      v114 = *(v108 + 2);
      v113 = *(v108 + 3);
      if (v114 >= v113 >> 1)
      {
        v108 = sub_1E3E28DC8((v113 > 1), v114 + 1, 1, v108);
      }

      *(v108 + 2) = v114 + 1;
      v115 = &v108[24 * v114];
      v116 = v183;
      *(v115 + 4) = v184;
      *(v115 + 5) = v116;
      v115[6] = v110;
      v107 = v185;
      if (v185 >= v180)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  v108 = MEMORY[0x1E69E7CC0];
LABEL_35:

  if (v171 < 1)
  {

    sub_1E375B760(&v192);

    v146 = 1;
    v147 = v163;
    v148 = v164;
    v145 = v162;
    v144 = v178;
  }

  else
  {
    if (*(v108 + 2) >= v170)
    {
      v117 = v170;
    }

    else
    {
      v117 = *(v108 + 2);
    }

    v118 = sub_1E4201D54();
    v119 = v173;
    *v173 = v118;
    v119[1] = 0;
    *(v119 + 16) = 0;
    v120 = v119 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39718, &qword_1E42D5038) + 44);
    v121 = v172;
    OUTLINED_FUNCTION_25();
    sub_1E39E19A0(v122, v123, v124);
    v125 = sub_1E4202734();
    v126 = v121 + *(v151 + 36);
    *v126 = v125;
    *(v126 + 8) = v65;
    *(v126 + 16) = v67;
    *(v126 + 24) = v69;
    *(v126 + 32) = v71;
    *(v126 + 40) = 0;
    v127 = sub_1E42026E4();
    MEMORY[0x1EEE9AC00](v127);
    *(&v150 - 16) = v178;
    *(&v150 - 15) = v117;
    *(&v150 - 14) = v56;
    v128 = v175;
    *(&v150 - 13) = v108;
    *(&v150 - 12) = v128;
    *(&v150 - 11) = &v192;
    v129 = v176;
    *(&v150 - 10) = v179;
    *(&v150 - 9) = v129;
    v130 = v168;
    *(&v150 - 4) = v169;
    *(&v150 - 3) = v130;
    *(&v150 - 4) = v65;
    *(&v150 - 3) = v67;
    *(&v150 - 2) = v69;
    *(&v150 - 1) = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39720, &qword_1E42D5040);
    sub_1E3E29230();
    v131 = v152;
    sub_1E4200AD4();
    v132 = sub_1E374AD40(&qword_1ECF39760, &qword_1ECF39708, &qword_1E42D5020, MEMORY[0x1E697BE60]);
    v133 = v158;
    v134 = v154;
    sub_1E4203194();
    (*(v153 + 8))(v131, v134);
    sub_1E42026E4();
    v188 = v134;
    v189 = v132;
    swift_getOpaqueTypeConformance2();
    v186 = v108;
    v135 = v156;
    v136 = v159;
    sub_1E3E3665C(v159, v156);
    v137 = v157;
    v138 = *(v157 + 8);
    v138(v133, v136);
    v139 = v121;
    v140 = v155;
    sub_1E32D6EEC(v139, v155);
    v141 = *(v137 + 16);
    v141(v133, v135, v136);
    sub_1E32D6EEC(v140, v120);
    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39768, &qword_1E42D5060);
    v141(v120 + *(v142 + 48), v133, v136);
    v138(v135, v136);
    sub_1E325F69C(v172, &qword_1ECF2CBA0);
    v143 = v136;
    v144 = v178;
    v138(v133, v143);
    sub_1E325F69C(v140, &qword_1ECF2CBA0);

    sub_1E375B760(&v192);

    v145 = v162;
    sub_1E379E528(v173, v162, &qword_1ECF39700, &qword_1E42D4F10);
    v146 = 0;
    v147 = v163;
    v148 = v164;
  }

  __swift_storeEnumTagSinglePayload(v145, v146, 1, v147);
  sub_1E379E528(v145, v148, &qword_1ECF396E8, &unk_1E42D4F00);
  return (*(v160 + 8))(v144, v161);
}

uint64_t sub_1E3E276C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HorizontalMultiRowCollectionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3E27728(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HorizontalMultiRowCollectionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1E3E2778C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for HorizontalMultiRowCollectionView(0);
  OUTLINED_FUNCTION_17_2(v3);
  v4 = *a2;
  type metadata accessor for CollectionInteractor(0);
  OUTLINED_FUNCTION_4_200();
  sub_1E3E293B0(v5, v6, &unk_1E42BD340);
  OUTLINED_FUNCTION_57();
  sub_1E4200BC4();
  sub_1E37CDC8C(v4);

  return result;
}

unint64_t sub_1E3E27864()
{
  result = qword_1ECF396F0;
  if (!qword_1ECF396F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF396E8, &unk_1E42D4F00);
    sub_1E374AD40(&qword_1ECF396F8, &qword_1ECF39700, &qword_1E42D4F10, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF396F0);
  }

  return result;
}

uint64_t sub_1E3E27918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a8@<X8>, double a10@<D1>, double a11@<D2>, double a12@<D3>, double a13@<D4>)
{
  sub_1E4202084();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  sub_1E4203C54();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  (*(v25 + 16))(v23 - v22, a1);
  sub_1E3E27BC4(v24, a2);
  sub_1E4201B64();
  sub_1E3E293B0(&qword_1EE2889E8, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  sub_1E4207CD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39770, &qword_1E42D5068);
  sub_1E3E293F8();
  sub_1E4203EA4();
  v26 = sub_1E4203DA4();
  v28 = v27;
  v29 = a8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39738, &qword_1E42D5048) + 36);
  sub_1E3E28064();
  v30 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39758, &qword_1E42D5058) + 36));
  *v30 = v26;
  v30[1] = v28;
  LOBYTE(v26) = sub_1E4202734();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39720, &qword_1E42D5040);
  v32 = a8 + *(result + 36);
  *v32 = v26;
  *(v32 + 8) = a10;
  *(v32 + 16) = a12;
  *(v32 + 24) = a11;
  *(v32 + 32) = a13;
  *(v32 + 40) = 0;
  return result;
}

uint64_t sub_1E3E27BC4(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      v4 = sub_1E4203C54();
      v5 = sub_1E4206314();
      *(v5 + 16) = v2;
      v6 = *(v4 - 8);
      v7 = v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v8 = *(v6 + 16);
      while (1)
      {
        --v2;
        v8(v7, v3, v4);
        if (!v2)
        {
          break;
        }

        v7 += *(v6 + 72);
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    v9 = sub_1E4203C54();
    (*(*(v9 - 8) + 8))(v3, v9);
    return v5;
  }

  return result;
}

uint64_t sub_1E3E27CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v25[1] = a5;
  v11 = type metadata accessor for HorizontalMultiRowCollectionView(0);
  v12 = OUTLINED_FUNCTION_8_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[42] = a1;
  v25[0] = swift_getKeyPath();
  sub_1E3E276C4(a2, v17);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_1E3E27728(v17, v21 + v18);
  *(v21 + v19) = a6;
  memcpy((v21 + v20), a3, 0x150uLL);
  *(v21 + ((v20 + 343) & 0xFFFFFFFFFFFFFFF8)) = a4;

  sub_1E37E6E1C(a3, v26);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF397E8, &qword_1E42D50D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39788, &qword_1E42D5070);
  OUTLINED_FUNCTION_14_11();
  sub_1E374AD40(v22, &qword_1ECF397E8, &qword_1E42D50D8, v23);
  sub_1E3E2947C();
  return sub_1E4203B34();
}

void *sub_1E3E27EFC@<X0>(uint64_t a5@<X8>, double a6@<D0>)
{
  v9 = OUTLINED_FUNCTION_57();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_26_2();
  *v6 = sub_1E4201B84();
  *(v6 + 8) = a6;
  *(v6 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF397F8, &qword_1E42D50E0);
  sub_1E3E2854C();
  sub_1E4203DB4();
  sub_1E42015C4();
  sub_1E379E528(v6, a5, &qword_1ECF39798, &unk_1E42D5078);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39788, &qword_1E42D5070);
  return memcpy((a5 + *(v13 + 36)), __src, 0x70uLL);
}

void sub_1E3E28064()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v64 = v2;
  v69 = v3;
  v70 = v4;
  v6 = v5;
  v7 = type metadata accessor for HorizontalMultiRowCollectionView(0);
  v8 = OUTLINED_FUNCTION_8_0(v7);
  v66 = v9;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25_6();
  v67 = v11;
  v68 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060, &qword_1E42A7B70);
  OUTLINED_FUNCTION_0_10();
  v63 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF397A0, &qword_1E42D5088);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v57 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF397A8, &qword_1E42D5090);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v57 - v20;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF397B0, &qword_1E42D5098);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v57 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF397B8, &unk_1E42D50A0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  if (v6)
  {
    v29 = v6;
    v58 = v18;
    v59 = v27;
    v30 = v1;
    v31 = v64;
    v60 = v28;
    v61 = v26;
    memcpy(v72, v64, sizeof(v72));

    sub_1E37E6E1C(v31, v71);
    OUTLINED_FUNCTION_25();
    v37 = sub_1E40EA03C(v32, v33, v34, v35, v36);
    v38 = OUTLINED_FUNCTION_6_8(v37);
    v39 = OUTLINED_FUNCTION_51_1();
    sub_1E3C6184C(v30, v29, v39 & 1, 0, 0, v12, v38);
    sub_1E375B760(v31);
    v40 = OUTLINED_FUNCTION_57();
    v41(v40);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B628, &unk_1E42A0C40);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v42);
    *&v17[*(v62 + 36)] = 256;
    sub_1E4203DA4();
    sub_1E4200D94();
    sub_1E379E528(v17, v21, &qword_1ECF397A0, &qword_1E42D5088);
    v43 = &v21[*(v58 + 36)];
    v44 = v71[1];
    *v43 = v71[0];
    *(v43 + 1) = v44;
    *(v43 + 2) = v71[2];
    sub_1E379E528(v21, v24, &qword_1ECF397A8, &qword_1E42D5090);
    v45 = v68;
    sub_1E3E276C4(v69, v68);
    v46 = (*(v66 + 80) + 16) & ~*(v66 + 80);
    v47 = swift_allocObject();
    sub_1E3E27728(v45, v47 + v46);
    sub_1E3E29744();
    v48 = OUTLINED_FUNCTION_51_1();
    v49 = v59;
    sub_1E40AB6EC(v48 & 1);

    sub_1E325F69C(v24, &qword_1ECF397B0);
    v50 = v61;
    v51 = v70;
    (*(v60 + 32))(v70, v49, v61);
    __swift_storeEnumTagSinglePayload(v51, 0, 1, v50);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  }
}