void sub_1E3F76DEC()
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 432))();
  if (v2)
  {

    OUTLINED_FUNCTION_4_0();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = sub_1E3F813A4;
    v11 = v3;
    v6 = MEMORY[0x1E69E9820];
    v7 = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v8 = v4;
    v9 = &block_descriptor_143;
    v5 = _Block_copy(&v6);

    [v0 dismissViewControllerAnimated:1 completion:{v5, v6, v7}];
    _Block_release(v5);
  }

  else
  {

    sub_1E3F7D644(0);
  }
}

void sub_1E3F76F10(char a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_222();
  v4 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_13_164();
  v6 = (*(v5 + 440))();
  sub_1E397C3E4(v6, v7, v8);
  if (sub_1E4205E84())
  {
    OUTLINED_FUNCTION_18_1();
    if ((*(v9 + 384))())
    {
      OUTLINED_FUNCTION_18_1();
      v11 = (v10 + 368);
      if (a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      (*v11)(v12);
    }
  }

  else
  {
    v13 = [objc_opt_self() sharedApplication];
    v14 = [v13 applicationState];

    if (v14 != 2)
    {
      OUTLINED_FUNCTION_13_164();
      v16 = (v15 + 448);
      if (a1)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      (*v16)(v17);
      (*((*v4 & *v2) + 0x138))(1);
    }
  }
}

void sub_1E3F770EC(uint64_t a1)
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 440))();
  if (!sub_1E374E8E4(v2, 2))
  {
    j__OUTLINED_FUNCTION_51_1();
    j__OUTLINED_FUNCTION_51_1();

    sub_1E408450C();
  }
}

void sub_1E3F771A8(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_154();
  v2 = (*(v1 + 632))();
  v33 = *(v2 + 16);
  if (v33)
  {
    v3 = 0;
    v34 = v2;
    v35 = v2 + 32;
    while (v3 < *(v2 + 16))
    {
      v37 = v3;
      sub_1E327F454(v35 + 40 * v3, v41);
      v4 = v42;
      v5 = v43;
      __swift_project_boxed_opaque_existential_1(v41, v42);
      (*(v5 + 32))(v4, v5);
      OUTLINED_FUNCTION_106();
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
      OUTLINED_FUNCTION_156_1();
      v6 = sub_1E4207604();

      v38 = *(v6 + 16);
      if (v38)
      {
        v7 = 0;
        OUTLINED_FUNCTION_154();
        v9 = *(v8 + 904);
        v10 = v6 + 32;
        while (v7 < *(v6 + 16))
        {
          v11 = sub_1E327F454(v10, v39);
          v12 = v9(v11);
          v14 = v13;
          v15 = v42;
          OUTLINED_FUNCTION_0_257(v41, v42);
          v17 = v16(v15);
          if (v14)
          {
            if (v12 == v17 && v14 == v18)
            {
LABEL_26:

LABEL_28:

              MEMORY[0x1E6909170](v7, v37);
              v32 = sub_1E41FE874();
              __swift_storeEnumTagSinglePayload(a1, 0, 1, v32);
              __swift_destroy_boxed_opaque_existential_1(v39);
              __swift_destroy_boxed_opaque_existential_1(v41);
              return;
            }

            v20 = OUTLINED_FUNCTION_102_16(v17, v18, v17);

            if (v20)
            {
              goto LABEL_27;
            }
          }

          else
          {
          }

          v22 = v9(v21);
          v24 = v23;
          v25 = v40;
          OUTLINED_FUNCTION_0_257(v39, v40);
          v27 = v26(v25);
          if (v24)
          {
            if (v22 == v27 && v24 == v28)
            {
              goto LABEL_26;
            }

            v30 = OUTLINED_FUNCTION_102_16(v27, v28, v27);

            if (v30)
            {
LABEL_27:

              goto LABEL_28;
            }
          }

          else
          {
          }

          ++v7;
          __swift_destroy_boxed_opaque_existential_1(v39);
          v10 += 40;
          if (v38 == v7)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        break;
      }

LABEL_24:
      v3 = v37 + 1;

      __swift_destroy_boxed_opaque_existential_1(v41);
      v2 = v34;
      if (v37 + 1 == v33)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_25:

    v31 = sub_1E41FE874();
    __swift_storeEnumTagSinglePayload(a1, 1, 1, v31);
  }
}

uint64_t sub_1E3F77520()
{
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_13_164();
  v3 = (*(v2 + 440))();
  sub_1E397C3E4(v3, v4, v5);
  result = sub_1E4205E84();
  if ((result & 1) == 0)
  {
    OUTLINED_FUNCTION_13_164();
    result = (*(v7 + 1096))();
    if (v8)
    {
      OUTLINED_FUNCTION_159_3();
      v9 = sub_1E396B0E4();
      if (v1 == *v9 && v0 == v9[1])
      {
      }

      else
      {
        v11 = sub_1E42079A4();

        if ((v11 & 1) == 0)
        {
          return result;
        }
      }

      OUTLINED_FUNCTION_13_164();
      v13 = *(v12 + 544);

      v14 = OUTLINED_FUNCTION_13_8();
      return v13(v14);
    }
  }

  return result;
}

void sub_1E3F77680(char a1)
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_51_4();
  v7(v1);
  v8 = sub_1E41FFC94();
  v9 = sub_1E4206814();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = a1 & 1;
    _os_log_impl(&dword_1E323F000, v8, v9, "RootSplitViewController:: libraryHideSideBar: hidden:%{BOOL}d", v10, 8u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v5 + 8))(v1, v3);
  OUTLINED_FUNCTION_21();
  v12 = (*(v11 + 440))();
  sub_1E397C3E4(v12, v13, v14);
  if ((sub_1E4205E84() & 1) == 0)
  {
    sub_1E3F77858();
  }
}

void sub_1E3F77858()
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
  OUTLINED_FUNCTION_26_3();
  v11 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & v12) + 0x150))(v3);
  OUTLINED_FUNCTION_26_3();
  v14 = *((*v11 & v13) + 0x198);
  if (v14())
  {
    if (v3)
    {
      v15 = sub_1E324FBDC();
      (*(v6 + 16))(v10, v15, v4);
      v16 = sub_1E41FFC94();
      v17 = sub_1E4206814();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_50_4(v18);
        OUTLINED_FUNCTION_108_12(&dword_1E323F000, v16, v17, "RootSplitViewController:: clearing user preferred display mode due sidebar being disabled");
        OUTLINED_FUNCTION_21_0();
      }

      (*(v6 + 8))(v10, v4);
      (*((*v11 & *v1) + 0x1A0))(0);
      goto LABEL_7;
    }
  }

  else if (v3)
  {
LABEL_7:
    [v1 setPreferredDisplayMode_];
    [v1 setDisplayModeButtonVisibility_];
    [v1 setPresentsWithGesture_];
    OUTLINED_FUNCTION_25_2();
    return;
  }

  [v0 setPreferredDisplayMode_];
  [v0 setDisplayModeButtonVisibility_];
  OUTLINED_FUNCTION_25_2();

  [v19 v20];
}

uint64_t sub_1E3F77B08(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_45();
  v7 = (*(v6 + 440))();
  v157[0] = v7;
  LOBYTE(v154) = 1;
  sub_1E397C3E4(v7, v8, v9);
  result = sub_1E4205E84();
  if (result)
  {
    return result;
  }

  v139 = a1;
  v143 = v3;
  v131 = v2;
  result = sub_1E32AE9B0(a2);
  if (result)
  {
    v11 = result;
    if (result < 1)
    {
      goto LABEL_91;
    }

    v12 = 0;
    v13 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x2A0);
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v14 = OUTLINED_FUNCTION_55_39();
        v15 = MEMORY[0x1E6911E60](v14);
      }

      else
      {
        v15 = *(a2 + 8 * v12 + 32);
      }

      v16 = v15;
      ++v12;
      v18 = *&v15[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier];
      v17 = *&v15[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier + 8];
      v148 = 0;
      *&v154 = v18;
      *(&v154 + 1) = v17;

      v19 = v13(v157);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0, &qword_1E42AE160);
      sub_1E3CA4D10();
      v19(v157, 0);
    }

    while (v11 != v12);
  }

  v20 = MEMORY[0x1E69E7D40];
  v137 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x440))();
  v138 = v21;
  v22 = MEMORY[0x1E69E7CC0];
  v159 = MEMORY[0x1E69E7CC0];
  result = (*((*v20 & *v3) + 0x278))();
  v23 = result;
  v24 = 0;
  v25 = *(result + 16);
  for (i = result + 32; ; i += 40)
  {
    if (v25 == v24)
    {

      v158 = 0;
      memset(v157, 0, sizeof(v157));
      goto LABEL_16;
    }

    if (v24 >= *(v23 + 16))
    {
      goto LABEL_90;
    }

    sub_1E327F454(i, &v154);
    sub_1E327F454(&v154, v157);
    v27 = OUTLINED_FUNCTION_125();
    __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
    type metadata accessor for LibrarySidebarItem();
    if (swift_dynamicCast())
    {
      break;
    }

    ++v24;
    result = __swift_destroy_boxed_opaque_existential_1(&v154);
  }

  sub_1E3251BE8(&v154, v157);
LABEL_16:
  sub_1E3D96570(v157, &v154, &qword_1ECF2EC80, &qword_1E42AD1C0);
  if (*(&v155 + 1))
  {
    v29 = v156;
    __swift_project_boxed_opaque_existential_1(&v154, *(&v155 + 1));
    v30 = OUTLINED_FUNCTION_11_168();
    v31(v30, v29);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
    OUTLINED_FUNCTION_16_0();
    sub_1E4207604();
    OUTLINED_FUNCTION_79_2();
    v33 = *(AssociatedTypeWitness + 16);
    if (v33)
    {
      sub_1E377FD30(0, v33, 0);
      v34 = v22;
      v35 = AssociatedTypeWitness + 32;
      do
      {
        sub_1E327F454(v35, &v148);
        v36 = v151;
        OUTLINED_FUNCTION_0_257(&v148, v151);
        v38 = v37(v36);
        v25 = v39;
        __swift_destroy_boxed_opaque_existential_1(&v148);
        *&v144 = v34;
        v41 = *(v34 + 16);
        v40 = *(v34 + 24);
        if (v41 >= v40 >> 1)
        {
          v43 = OUTLINED_FUNCTION_35(v40);
          sub_1E377FD30(v43, v41 + 1, 1);
          v34 = v144;
        }

        *(v34 + 16) = v41 + 1;
        v42 = v34 + 16 * v41;
        *(v42 + 32) = v38;
        *(v42 + 40) = v25;
        v35 += 40;
        --v33;
      }

      while (v33);
    }

    else
    {

      v34 = MEMORY[0x1E69E7CC0];
    }

    __swift_destroy_boxed_opaque_existential_1(&v154);
  }

  else
  {
    sub_1E325F7FC(&v154, &qword_1ECF2EC80, &qword_1E42AD1C0);
    v34 = MEMORY[0x1E69E7CC0];
  }

  v44 = v139;
  v45 = sub_1E32772D8(v34);
  v153 = v45;
  v136 = sub_1E32AE9B0(v139);
  if (v136)
  {
    v141 = type metadata accessor for LibrarySidebarItem();
    v25 = 0;
    OUTLINED_FUNCTION_16_89();
    v133 = v46 + 656;
    v134 = *(v46 + 656);
    v135 = v139 & 0xC000000000000001;
    v132 = v139 + 32;
    while (1)
    {
      sub_1E34AF4E4(v25, v135 == 0, v44);
      if (v135)
      {
        result = MEMORY[0x1E6911E60](v25, v44);
      }

      else
      {
        result = *(v132 + 8 * v25);
      }

      v47 = result;
      if (__OFADD__(v25++, 1))
      {
        goto LABEL_89;
      }

      v49 = (result + OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier);
      v51 = *(result + OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier);
      v50 = *(result + OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier + 8);

      v134(v52);
      v54 = v53;
      *&v154 = v51;
      *(&v154 + 1) = v50;
      v55 = sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
      v63 = OUTLINED_FUNCTION_91_18(v55, v56, v57, v58, v59, v60, v61, v62, v131, v132, v133, v134, v135, v136, v137, v138, v139, v141, v143, v144, *(&v144 + 1), v145, v146, v147, v148, v149, v150, v151, v152, v153, v154);
      sub_1E3CA4D00(v63, v64, v54, MEMORY[0x1E69E6158], v65, MEMORY[0x1E69E6168]);

      if (!v148)
      {
        v78 = 0;
        v79 = 1;
        goto LABEL_53;
      }

      sub_1E3D96570(v157, &v148, &qword_1ECF2EC80, &qword_1E42AD1C0);
      if (!v151)
      {
        break;
      }

      v66 = v152;
      __swift_project_boxed_opaque_existential_1(&v148, v151);
      v67 = OUTLINED_FUNCTION_11_168();
      v68(v67, v66);
      OUTLINED_FUNCTION_106();
      v69 = swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
      OUTLINED_FUNCTION_16_0();
      sub_1E4207604();
      result = OUTLINED_FUNCTION_79_2();
      v70 = 0;
      v71 = *(v69 + 16);
      for (j = v69 + 32; ; j += 40)
      {
        if (v71 == v70)
        {

          v156 = 0;
          v154 = 0u;
          v155 = 0u;
          goto LABEL_48;
        }

        if (v70 >= *(v69 + 16))
        {
          __break(1u);
          goto LABEL_88;
        }

        sub_1E327F454(j, &v144);
        v73 = v146;
        OUTLINED_FUNCTION_0_257(&v144, v146);
        if (v74(v73) == *v49 && v75 == v49[1])
        {
          break;
        }

        v77 = sub_1E42079A4();

        if (v77)
        {
          goto LABEL_47;
        }

        result = __swift_destroy_boxed_opaque_existential_1(&v144);
        ++v70;
      }

LABEL_47:

      sub_1E3251BE8(&v144, &v154);
LABEL_48:
      v83 = MEMORY[0x1E69E7D40];
      __swift_destroy_boxed_opaque_existential_1(&v148);
      if (!*(&v155 + 1))
      {
        goto LABEL_51;
      }

      if (swift_dynamicCast())
      {
        v84 = *((*v83 & *v148) + 0xA8);
        v85 = v148;
        v86 = v84();

        OUTLINED_FUNCTION_16_89();
        v88 = (*(v87 + 168))();

        v78 = v86 ^ v88;
        v79 = v86 ^ v88;
        goto LABEL_53;
      }

LABEL_52:
      v78 = 0;
      v79 = 0;
LABEL_53:
      if (v138)
      {
        if (v137 == *v49 && v138 == v49[1])
        {
          if (((v79 | v78) & 1) == 0)
          {
            goto LABEL_62;
          }
        }

        else if (((v79 & sub_1E42079A4() | v78) & 1) == 0)
        {
          goto LABEL_62;
        }

LABEL_61:
        j__OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_16_89();

        goto LABEL_62;
      }

      if (v78)
      {
        goto LABEL_61;
      }

LABEL_62:

      v92 = OUTLINED_FUNCTION_114_0();
      sub_1E397B708(v92, v93);

      v94 = v47;
      sub_1E37EE4E8(v94);
      MEMORY[0x1E6910BF0]();
      v95 = *((v159 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v159 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v95 >> 1)
      {
        OUTLINED_FUNCTION_35(v95);
        sub_1E42062F4();
      }

      sub_1E4206324();

      v44 = v139;
      if (v25 == v136)
      {
        v140 = v159;

        v45 = v153;
        goto LABEL_69;
      }
    }

    OUTLINED_FUNCTION_82();
    sub_1E325F7FC(v80, v81, v82);
    v154 = 0u;
    v155 = 0u;
    v156 = 0;
LABEL_51:
    sub_1E325F7FC(&v154, &qword_1ECF2EC80, &qword_1E42AD1C0);
    goto LABEL_52;
  }

  v140 = MEMORY[0x1E69E7CC0];
LABEL_69:
  OUTLINED_FUNCTION_29_90();
  v97 = v96 >> 6;
  OUTLINED_FUNCTION_194_0();
  result = swift_bridgeObjectRetain_n();
  v98 = 0;
  for (k = v45; ; v45 = k)
  {
    v99 = MEMORY[0x1E69E7D40];
    if (!v25)
    {
      break;
    }

LABEL_75:
    v101 = *(v45 + 48) + ((v98 << 10) | (16 * __clz(__rbit64(v25))));
    v103 = *v101;
    v102 = *(v101 + 8);
    OUTLINED_FUNCTION_21();
    v104 += 82;
    v105 = *v104;
    v106 = v104;
    OUTLINED_FUNCTION_194_0();
    v107 = swift_bridgeObjectRetain_n();
    v105(v107);
    OUTLINED_FUNCTION_134_2();
    *&v154 = v103;
    *(&v154 + 1) = v102;
    v108 = sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
    v116 = OUTLINED_FUNCTION_91_18(v108, v109, v110, v111, v112, v113, v114, v115, v131, v132, v133, v134, v135, v136, v137, v138, v140, k, v143, v144, *(&v144 + 1), v145, v146, v147, v148, v149, v150, v151, v152, v153, v154);
    sub_1E3CA4D00(v116, v117, v106, MEMORY[0x1E69E6158], v118, MEMORY[0x1E69E6168]);

    v119 = v148;
    if (v148)
    {
      objc_opt_self();
      OUTLINED_FUNCTION_20_2();
      v120 = swift_dynamicCastObjCClass();
      if (v120)
      {
        v121 = v143;
        [v120 vui:v143 removeControllerObserver:?];

        goto LABEL_80;
      }
    }

    v121 = v143;
LABEL_80:
    v25 &= v25 - 1;
    *&v144 = 0;
    v148 = v103;
    v149 = v102;
    v122 = *((*MEMORY[0x1E69E7D40] & *v121) + 0x2A0);

    v122(&v154);
    OUTLINED_FUNCTION_159_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0, &qword_1E42AE160);
    sub_1E3CA4D10();
    (v122)(&v154, 0);
  }

  while (1)
  {
    v100 = v98 + 1;
    if (__OFADD__(v98, 1))
    {
      break;
    }

    if (v100 >= v97)
    {

      OUTLINED_FUNCTION_67_1();
      (*((*v99 & v123) + 0x120))(v140);
      j__OUTLINED_FUNCTION_51_1();
      sub_1E4083278();

      OUTLINED_FUNCTION_67_1();
      v125 = (*((*v99 & v124) + 0x168))();
      if (v125 != 3)
      {
        v126 = v125;
        OUTLINED_FUNCTION_16_89();
        if ((*(v127 + 352))())
        {
          OUTLINED_FUNCTION_16_89();
          if ((*(v128 + 384))())
          {
            OUTLINED_FUNCTION_16_89();
            (*(v129 + 448))(v126);
            OUTLINED_FUNCTION_67_1();
            (*((*v99 & v130) + 0x170))(3);
          }
        }
      }

      return sub_1E325F7FC(v157, &qword_1ECF2EC80, &qword_1E42AD1C0);
    }

    v25 = *(v44 + 8 * v100);
    ++v98;
    if (v25)
    {
      v98 = v100;
      goto LABEL_75;
    }
  }

LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
  return result;
}

void sub_1E3F788B0()
{
  OUTLINED_FUNCTION_31_1();
  v197 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v198 = v4;
  v213.n128_u8[0] = v4;
  v210.n128_u8[0] = v2;
  sub_1E397C3E4(v12, v13, v14);
  OUTLINED_FUNCTION_84_19();
  if (sub_1E4205E84())
  {
    goto LABEL_93;
  }

  if (!v2)
  {
LABEL_90:
    v174 = sub_1E324FBDC();
    (*(v7 + 16))(v11, v174, v5);
    v175 = sub_1E41FFC94();
    v176 = v7;
    v177 = sub_1E4206814();
    if (OUTLINED_FUNCTION_262(v177))
    {
      v193 = v5;
      v178 = swift_slowAlloc();
      v191 = v11;
      v179 = swift_slowAlloc();
      v213.n128_u64[0] = v179;
      *v178 = 136315394;
      v210.n128_u8[0] = v198;
      sub_1E3E25614(v179, v180, v181);
      v182 = sub_1E4207944();
      v184 = sub_1E3270FC8(v182, v183, &v213);

      *(v178 + 4) = v184;
      *(v178 + 12) = 2080;
      v210.n128_u8[0] = v2;
      v185 = sub_1E4207944();
      v187 = sub_1E3270FC8(v185, v186, &v213);

      *(v178 + 14) = v187;
      _os_log_impl(&dword_1E323F000, v175, v177, "RootSplitViewController:: updating from %s mode to %s mode", v178, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_51_2();

      (*(v176 + 8))(v191, v193);
    }

    else
    {

      (*(v176 + 8))(v11, v5);
    }

LABEL_93:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  if (v2 == 1)
  {
    sub_1E3F79CE0();
    goto LABEL_90;
  }

  v213.n128_u8[0] = v4;
  v210.n128_u8[0] = 0;
  OUTLINED_FUNCTION_84_19();
  if (sub_1E4205E84())
  {
    j__OUTLINED_FUNCTION_51_1();
    sub_1E4083278();
    goto LABEL_90;
  }

  v192 = v5;
  v15 = *(v0 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_manager);
  v16 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_4_154();
  (*(v17 + 792))(1);
  OUTLINED_FUNCTION_1_31();
  v19 = (*((*v16 & v18) + 0x2E0))();
  v20 = sub_1E32AE9B0(v19);
  v190 = v11;
  v188 = v2;
  v189 = v7;
  if (v20)
  {
    v21 = v20;
    v213.n128_u64[0] = MEMORY[0x1E69E7CC0];
    sub_1E377FD30(0, v20 & ~(v20 >> 63), 0);
    if (v21 < 0)
    {
      goto LABEL_99;
    }

    v22 = 0;
    v23 = v213.n128_u64[0];
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1E6911E60](v22, v19);
      }

      else
      {
        v24 = *(v19 + 8 * v22 + 32);
      }

      v25 = v24;
      v27 = *&v24[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier];
      v26 = *&v24[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8];

      v213.n128_u64[0] = v23;
      v29 = *(v23 + 16);
      v28 = *(v23 + 24);
      if (v29 >= v28 >> 1)
      {
        OUTLINED_FUNCTION_35(v28);
        OUTLINED_FUNCTION_94_21();
        sub_1E377FD30(v31, v32, v33);
        v23 = v213.n128_u64[0];
      }

      ++v22;
      *(v23 + 16) = v29 + 1;
      v30 = v23 + 16 * v29;
      *(v30 + 32) = v27;
      *(v30 + 40) = v26;
    }

    while (v21 != v22);
  }

  else
  {

    v23 = MEMORY[0x1E69E7CC0];
  }

  v219 = sub_1E32772D8(v23);
  OUTLINED_FUNCTION_5_4();
  v35 = (*(v34 + 632))();
  v36 = 0;
  v37 = *(v35 + 16);
  v38 = MEMORY[0x1E69E7CC0];
  v39 = v35 + 32;
  v40 = qword_1E42AD1A0;
  while (1)
  {
    v201 = v38;
    if (v37 == v36)
    {
      break;
    }

    if (v36 >= *(v35 + 16))
    {
      goto LABEL_96;
    }

    sub_1E327F454(v39, &v213);
    v41 = OUTLINED_FUNCTION_84_19();
    sub_1E327F454(v41, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
    OUTLINED_FUNCTION_106();
    type metadata accessor for LibrarySidebarItem();
    if (swift_dynamicCast())
    {

      __swift_destroy_boxed_opaque_existential_1(&v213);
    }

    else
    {
      v43 = OUTLINED_FUNCTION_84_19();
      sub_1E3251BE8(v43, v44);
      v45 = v201;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v216[0] = v201;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v47 = OUTLINED_FUNCTION_73_0();
        sub_1E397A464(v47, v48, v49);
        v45 = v216[0];
      }

      v51 = *(v45 + 16);
      v50 = *(v45 + 24);
      if (v51 >= v50 >> 1)
      {
        OUTLINED_FUNCTION_35(v50);
        OUTLINED_FUNCTION_94_21();
        sub_1E397A464(v52, v53, v54);
        v45 = v216[0];
      }

      *(v45 + 16) = v51 + 1;
      v201 = v45;
      sub_1E3251BE8(&v210, v45 + 40 * v51 + 32);
    }

    v39 += 40;
    ++v36;
    v38 = v201;
  }

  v200 = v15;
  v55 = MEMORY[0x1E69E7D40];
  v196 = *(v201 + 16);
  if (!v196)
  {
    goto LABEL_73;
  }

  v35 = 0;
  OUTLINED_FUNCTION_4_154();
  v195 = v56 + 32;
  v57 = MEMORY[0x1E69E6158];
  v194 = *(v58 + 656);
  do
  {
    if (v35 >= *(v56 + 16))
    {
      goto LABEL_98;
    }

    v199 = v35;
    sub_1E327F454(v195 + 40 * v35, v216);
    v59 = v217;
    OUTLINED_FUNCTION_0_257(v216, v217);
    v61 = v60(v59);
    v63 = v62;
    v194();
    OUTLINED_FUNCTION_134_2();
    v213.n128_u64[0] = v61;
    v213.n128_u64[1] = v63;
    v64 = sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
    sub_1E3CA4D00(&v213, v15, v40, v57, v64, MEMORY[0x1E69E6168]);

    v65 = v210.n128_u64[0];
    if (v210.n128_u64[0])
    {
      objc_opt_self();
      OUTLINED_FUNCTION_19_3();
      if (swift_dynamicCastObjCClass())
      {
        v66 = v217;
        v40 = v218;
        __swift_project_boxed_opaque_existential_1(v216, v217);
        (v40[4])(v66, v40);
        OUTLINED_FUNCTION_106();
        swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
        OUTLINED_FUNCTION_156_1();
        v67 = sub_1E4207604();

        v68 = 0;
        v69 = *(v67 + 16);
        v204 = v67;
        v202 = v67 + 32;
        while (1)
        {
          v70 = 0uLL;
          v71 = v69;
          v72 = 0uLL;
          v73 = 0uLL;
          if (v68 != v69)
          {
            if (v68 >= *(v204 + 16))
            {
              goto LABEL_95;
            }

            v71 = v68 + 1;
            v210.n128_u64[0] = v68;
            sub_1E327F454(v202 + 40 * v68, &v210.n128_i64[1]);
            v70 = v210;
            v72 = v211;
            v73 = v212;
          }

          v213 = v70;
          v214 = v72;
          v215 = v73;
          if (!v73)
          {

            v57 = MEMORY[0x1E69E6158];
            goto LABEL_72;
          }

          OUTLINED_FUNCTION_175(*&v73, *&v72, v70);
          v74 = v217;
          v75 = v218;
          __swift_project_boxed_opaque_existential_1(v216, v217);
          v76 = OUTLINED_FUNCTION_16_5();
          if (v77(v76, v75))
          {
            OUTLINED_FUNCTION_134_2();
            swift_getObjectType();
            v79 = *(&v211 + 1);
            v78 = v212;
            __swift_project_boxed_opaque_existential_1(&v210, *(&v211 + 1));
            v208 = v79;
            v209 = *(v78 + 8);
            __swift_allocate_boxed_opaque_existential_1(v207);
            OUTLINED_FUNCTION_37_1();
            (*(v80 + 16))();
            v81 = *(v74 + 16);
            v82 = v65;
            v83 = OUTLINED_FUNCTION_194_2();
            v84 = v81(v83);
            v55 = MEMORY[0x1E69E7D40];
            v85 = v84;
            swift_unknownObjectRelease();

            __swift_destroy_boxed_opaque_existential_1(v207);
            if (v85)
            {
              break;
            }
          }

LABEL_52:
          v104 = *(&v211 + 1);
          OUTLINED_FUNCTION_0_257(&v210, *(&v211 + 1));
          v106 = v105(v104);
          v40 = v107;
          sub_1E397B708(v106, v107);

          __swift_destroy_boxed_opaque_existential_1(&v210);
          v68 = v71;
        }

        v86 = *(&v211 + 1);
        OUTLINED_FUNCTION_0_257(&v210, *(&v211 + 1));
        v206 = v87(v86);
        v88 = *((*v55 & *v15) + 0x2A0);
        v89 = v85;
        v88(v207);
        OUTLINED_FUNCTION_159_3();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0, &qword_1E42AE160);
        sub_1E3CA4D10();
        v90 = OUTLINED_FUNCTION_60_6();
        (v85)(v90);
        v91 = v217;
        OUTLINED_FUNCTION_0_257(v216, v217);
        v93 = v92(v91);
        v95 = v94;
        OUTLINED_FUNCTION_1_31();
        v97 = (*((*v55 & v96) + 0x448))();
        if (v98)
        {
          if (v93 == v97 && v98 == v95)
          {
          }

          else
          {
            v100 = sub_1E42079A4();

            if ((v100 & 1) == 0)
            {
              goto LABEL_51;
            }
          }

          v101 = *(&v211 + 1);
          OUTLINED_FUNCTION_0_257(&v210, *(&v211 + 1));
          v102(v101);
          OUTLINED_FUNCTION_1_31();
          (*((*v55 & v103) + 0x220))();
        }

        else
        {
        }

LABEL_51:

        goto LABEL_52;
      }
    }

    OUTLINED_FUNCTION_75_26();
    v108 = OUTLINED_FUNCTION_9_168();
    v109(v108);
    OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_59_1();
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
    OUTLINED_FUNCTION_16_0();
    v110 = sub_1E4207604();

    v111 = 0;
    v112 = *(v110 + 16);
    v205 = v110 + 32;
    v203 = v64;
    while (1)
    {
      v113 = 0uLL;
      v114 = v112;
      v115 = 0uLL;
      v116 = 0uLL;
      if (v111 != v112)
      {
        OUTLINED_FUNCTION_89_0();
        if (v111 >= *(v117 + 16))
        {
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        v114 = v111 + 1;
        v210.n128_u64[0] = v111;
        sub_1E327F454(v205 + 40 * v111, &v210.n128_i64[1]);
        v113 = v210;
        v115 = v211;
        v116 = v212;
      }

      v213 = v113;
      v214 = v115;
      v215 = v116;
      if (!v116)
      {
        break;
      }

      v111 = v114;
      OUTLINED_FUNCTION_175(*&v116, *&v115, v113);
      v118 = *(&v211 + 1);
      OUTLINED_FUNCTION_0_257(&v210, *(&v211 + 1));
      v120 = v119(v118);
      v40 = v121;
      OUTLINED_FUNCTION_1_31();
      v123 = (*((*v55 & v122) + 0x290))();
      v207[0] = v120;
      v207[1] = v40;
      sub_1E3CA4D00(v207, v123, v124, v57, v64, MEMORY[0x1E69E6168]);

      if (v206)
      {
        objc_opt_self();
        OUTLINED_FUNCTION_40_3();
        if (swift_dynamicCastObjCClass())
        {
          v40 = v217;
          v125 = v218;
          __swift_project_boxed_opaque_existential_1(v216, v217);
          v126 = OUTLINED_FUNCTION_16_5();
          if (v127(v126, v125))
          {
            OUTLINED_FUNCTION_134_2();
            swift_getObjectType();
            v129 = *(&v211 + 1);
            v128 = v212;
            __swift_project_boxed_opaque_existential_1(&v210, *(&v211 + 1));
            v208 = v129;
            v209 = *(v128 + 8);
            __swift_allocate_boxed_opaque_existential_1(v207);
            OUTLINED_FUNCTION_37_1();
            (*(v130 + 16))();
            v131 = v40[2];
            v132 = v206;
            v133 = OUTLINED_FUNCTION_194_2();
            v40 = v131(v133);
            swift_unknownObjectRelease();

            __swift_destroy_boxed_opaque_existential_1(v207);
            if (v40)
            {
              v134 = *(&v211 + 1);
              OUTLINED_FUNCTION_0_257(&v210, *(&v211 + 1));
              v206 = v135(v134);
              v55 = MEMORY[0x1E69E7D40];
              v136 = *((*MEMORY[0x1E69E7D40] & *v200) + 0x2A0);
              v40 = v40;
              v137 = v136(v207);
              v15 = v200;
              v138 = v137;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0, &qword_1E42AE160);
              sub_1E3CA4D10();
              v139 = OUTLINED_FUNCTION_60_6();
              v138(v139);
            }

            else
            {

              v15 = v200;
              v55 = MEMORY[0x1E69E7D40];
            }

            v57 = MEMORY[0x1E69E6158];
          }

          else
          {
          }

          v64 = v203;
        }

        else
        {
        }
      }

      v140 = *(&v211 + 1);
      OUTLINED_FUNCTION_0_257(&v210, *(&v211 + 1));
      v142 = v141(v140);
      sub_1E397B708(v142, v143);

      __swift_destroy_boxed_opaque_existential_1(&v210);
    }

    OUTLINED_FUNCTION_101_13();

LABEL_72:
    v35 = v199 + 1;
    __swift_destroy_boxed_opaque_existential_1(v216);
    v56 = v201;
  }

  while (v199 + 1 != v196);
LABEL_73:
  sub_1E3F7BEC4();
  v144 = v219;
  OUTLINED_FUNCTION_29_90();
  v146 = v145 >> 6;
  OUTLINED_FUNCTION_194_0();
  swift_bridgeObjectRetain_n();
  v147 = 0;
  while (v55)
  {
    v148 = v200;
LABEL_81:
    v150 = (*(v144 + 48) + ((v147 << 10) | (16 * __clz(__rbit64(v55)))));
    v152 = *v150;
    v151 = v150[1];
    v153 = *((*MEMORY[0x1E69E7D40] & *v148) + 0x290);
    v154 = swift_bridgeObjectRetain_n();
    v155 = v153(v154);
    v157 = v156;
    v213.n128_u64[0] = v152;
    v213.n128_u64[1] = v151;
    v158 = sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
    sub_1E3CA4D00(&v213, v155, v157, MEMORY[0x1E69E6158], v158, MEMORY[0x1E69E6168]);

    v159 = v210.n128_u64[0];
    if (v210.n128_u64[0])
    {
      objc_opt_self();
      OUTLINED_FUNCTION_20_2();
      v160 = swift_dynamicCastObjCClass();
      if (v160)
      {
        v161 = v200;
        [v160 vui:v200 removeControllerObserver:?];

        goto LABEL_86;
      }
    }

    v161 = v200;
LABEL_86:
    v55 &= v55 - 1;
    v216[0] = 0;
    v210.n128_u64[0] = v152;
    v210.n128_u64[1] = v151;
    v162 = *((*MEMORY[0x1E69E7D40] & *v161) + 0x2A0);

    v163 = v162(&v213);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0, &qword_1E42AE160);
    sub_1E3CA4D10();
    v163(&v213, 0);
  }

  v148 = v200;
  while (1)
  {
    v149 = v147 + 1;
    if (__OFADD__(v147, 1))
    {
      break;
    }

    if (v149 >= v146)
    {

      OUTLINED_FUNCTION_194_0();
      swift_bridgeObjectRelease_n();
      OUTLINED_FUNCTION_39();
      v164 = MEMORY[0x1E69E7D40];
      v166 = (*((*MEMORY[0x1E69E7D40] & v165) + 0x100))();
      [v166 setViewControllers:0 animated:0];

      OUTLINED_FUNCTION_1_31();
      (*((*v164 & v167) + 0x280))(v201);
      OUTLINED_FUNCTION_1_13();
      (*(v168 + 696))(1);
      OUTLINED_FUNCTION_1_31();
      (*((*v164 & v169) + 0x318))(0);
      v170 = [*(v197 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_rootControllerConfig) normalControllerLimit];
      v171 = v170;
      if (v170)
      {
        [v170 integerValue];
      }

      v7 = v189;
      v11 = v190;
      v2 = v188;
      OUTLINED_FUNCTION_7_20();
      v172 = OUTLINED_FUNCTION_71_30();
      v173(v172);
      v5 = v192;
      goto LABEL_90;
    }

    v55 = *(v35 + 8 * v149);
    ++v147;
    if (v55)
    {
      v147 = v149;
      goto LABEL_81;
    }
  }

LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
}

void sub_1E3F79CE0()
{
  OUTLINED_FUNCTION_31_1();
  v298 = v1;
  v300 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v312 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v299 = (v5 - v4);
  v6 = MEMORY[0x1E69E7CC0];
  v335 = MEMORY[0x1E69E7CC0];
  v301 = v0;
  v7 = *(v0 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_manager);
  OUTLINED_FUNCTION_21();
  v319 = v7;
  v9 = (*(v8 + 632))();
  v10 = 0;
  v11 = *(v9 + 16);
  v12 = v9 + 32;
  while (v11 != v10)
  {
    if (v10 >= *(v9 + 16))
    {
      goto LABEL_198;
    }

    sub_1E327F454(v12, &v321);
    sub_1E327F454(&v321, &v332);
    v13 = OUTLINED_FUNCTION_39_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
    OUTLINED_FUNCTION_106();
    type metadata accessor for LibrarySidebarItem();
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(&v321);
    }

    else
    {
      sub_1E3251BE8(&v321, &v332);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v327[0] = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = OUTLINED_FUNCTION_73_0();
        sub_1E397A464(v16, v17, v18);
        v6 = v327[0];
      }

      v20 = v6[2];
      v19 = v6[3];
      v21 = v6;
      if (v20 >= v19 >> 1)
      {
        v22 = OUTLINED_FUNCTION_35(v19);
        sub_1E397A464(v22, v20 + 1, 1);
        v21 = v327[0];
      }

      v21[2] = v20 + 1;
      sub_1E3251BE8(&v332, &v21[5 * v20 + 4]);
      v6 = v21;
    }

    v12 += 40;
    ++v10;
  }

  v23 = v6[2];
  if (v23)
  {
    v327[0] = MEMORY[0x1E69E7CC0];
    sub_1E377FD10(0, v23, 0);
    v24 = 0;
    v25 = v327[0];
    v314 = v6 + 4;
    v26 = MEMORY[0x1E69E7D40];
    v316 = v6;
    v313 = v23;
    do
    {
      if (v24 >= v6[2])
      {
        goto LABEL_203;
      }

      sub_1E327F454(&v314[5 * v24], &v321);
      v27 = v323;
      __swift_project_boxed_opaque_existential_1(&v321, *(&v322 + 1));
      v28 = OUTLINED_FUNCTION_38();
      v29(v28, v27);
      OUTLINED_FUNCTION_106();
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
      OUTLINED_FUNCTION_156_1();
      v30 = sub_1E4207604();

      v31 = *(v30 + 16);
      if (v31)
      {
        *&v324 = MEMORY[0x1E69E7CC0];
        sub_1E377FD30(0, v31, 0);
        v32 = v324;
        v33 = v30 + 32;
        do
        {
          sub_1E327F454(v33, &v332);
          v34 = v333;
          OUTLINED_FUNCTION_0_257(&v332, v333);
          v36 = v35(v34);
          v25 = v37;
          __swift_destroy_boxed_opaque_existential_1(&v332);
          *&v324 = v32;
          v39 = *(v32 + 16);
          v38 = *(v32 + 24);
          if (v39 >= v38 >> 1)
          {
            v41 = OUTLINED_FUNCTION_35(v38);
            sub_1E377FD30(v41, v39 + 1, 1);
            v32 = v324;
          }

          *(v32 + 16) = v39 + 1;
          v40 = v32 + 16 * v39;
          *(v40 + 32) = v36;
          *(v40 + 40) = v25;
          v33 += 40;
          --v31;
        }

        while (v31);

        v26 = MEMORY[0x1E69E7D40];
        OUTLINED_FUNCTION_20_12();
        v23 = v313;
      }

      else
      {

        v32 = MEMORY[0x1E69E7CC0];
      }

      __swift_destroy_boxed_opaque_existential_1(&v321);
      v327[0] = v25;
      v43 = v25[2];
      v42 = v25[3];
      if (v43 >= v42 >> 1)
      {
        OUTLINED_FUNCTION_35(v42);
        OUTLINED_FUNCTION_94_21();
        sub_1E377FD10(v44, v45, v46);
        v25 = v327[0];
      }

      ++v24;
      v25[2] = v43 + 1;
      v25[v43 + 4] = v32;
      v6 = v316;
    }

    while (v24 != v23);
  }

  else
  {

    v25 = MEMORY[0x1E69E7CC0];
    v26 = MEMORY[0x1E69E7D40];
  }

  v47 = 0;
  v48 = v25[2];
  v49 = MEMORY[0x1E69E7CC0];
  while (v48 != v47)
  {
    if (v47 >= v25[2])
    {
      goto LABEL_199;
    }

    v50 = v25[v47 + 4];
    v51 = *(v50 + 16);
    v52 = *(v49 + 2);
    v53 = v52 + v51;
    if (__OFADD__(v52, v51))
    {
      goto LABEL_200;
    }

    v54 = swift_isUniquelyReferenced_nonNull_native();
    if (!v54 || v53 > *(v49 + 3) >> 1)
    {
      if (v52 <= v53)
      {
        v55 = v52 + v51;
      }

      else
      {
        v55 = v52;
      }

      v49 = sub_1E3740F88(v54, v55, 1, v49);
    }

    if (*(v50 + 16))
    {
      if ((*(v49 + 3) >> 1) - *(v49 + 2) < v51)
      {
        goto LABEL_204;
      }

      swift_arrayInitWithCopy();

      if (v51)
      {
        v56 = *(v49 + 2);
        v57 = __OFADD__(v56, v51);
        v58 = v56 + v51;
        if (v57)
        {
          goto LABEL_209;
        }

        *(v49 + 2) = v58;
      }
    }

    else
    {

      if (v51)
      {
        goto LABEL_201;
      }
    }

    ++v47;
  }

  v59 = sub_1E32772D8(v49);
  OUTLINED_FUNCTION_115_8();
  v331 = v60;
  (*((*v26 & *v48) + 0x3F8))(1, 1, 0);
  OUTLINED_FUNCTION_1_31();
  (*((*v26 & v61) + 0x428))(&v321);
  v62 = *(&v322 + 1);
  if (*(&v322 + 1))
  {
    v63 = v323;
    __swift_project_boxed_opaque_existential_1(&v321, *(&v322 + 1));
    v302 = (*(v63 + 16))(v62, v63);
    v309 = v64;
    __swift_destroy_boxed_opaque_existential_1(&v321);
  }

  else
  {
    sub_1E325F7FC(&v321, &unk_1ECF2F1D0, &qword_1E42AE148);
    v302 = 0;
    v309 = 0;
  }

  OUTLINED_FUNCTION_5_4();
  v66 = (*(v65 + 736))();
  v317 = sub_1E32AE9B0(v66);
  if (!v317)
  {

LABEL_141:
    v193 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) init];
    v194 = [v193 navigationBar];
    [v194 setHidden_];

    OUTLINED_FUNCTION_21();
    v196 = *(v195 + 152);
    v197 = v193;
    v196(v193);
    v318 = v197;

    v198 = v301;
    sub_1E3F7CE00();
    v199 = v59 + 56;
    v200 = 1 << *(v59 + 32);
    v201 = -1;
    if (v200 < 64)
    {
      v201 = ~(-1 << v200);
    }

    v202 = v201 & *(v59 + 56);
    v203 = (v200 + 63) >> 6;

    v204 = 0;
    if (!v202)
    {
      while (1)
      {
LABEL_144:
        v205 = v204 + 1;
        if (__OFADD__(v204, 1))
        {
          goto LABEL_202;
        }

        if (v205 >= v203)
        {
          break;
        }

        v202 = *(v199 + 8 * v205);
        ++v204;
        if (v202)
        {
          v204 = v205;
          goto LABEL_148;
        }
      }

      OUTLINED_FUNCTION_115_8();
      OUTLINED_FUNCTION_5_4();
      v224 = *(v223 + 744);
      OUTLINED_FUNCTION_101_13();

      v224(v225);
      OUTLINED_FUNCTION_20_12();

      OUTLINED_FUNCTION_1_31();
      v228 = (*((*v26 & v227) + 0x340))();
      v229 = sub_1E396B0E4();
      v230 = *v229;
      v231 = v229[1];

      v232 = sub_1E37D26AC(v230, v231, v228);
      v234 = v233;

      OUTLINED_FUNCTION_1_31();
      v236 = (*((*v26 & v235) + 0x440))();
      if (v234)
      {
        if (v237)
        {
          if (v232 == v236 && v234 == v237)
          {

LABEL_167:
            OUTLINED_FUNCTION_99_12();
            goto LABEL_168;
          }

          OUTLINED_FUNCTION_55_39();
          v239 = sub_1E42079A4();

          if (v239)
          {
            goto LABEL_167;
          }
        }
      }

      else if (!v237)
      {
LABEL_165:
        OUTLINED_FUNCTION_99_12();

        v232 = 0;
        v234 = 0xE000000000000000;
LABEL_168:
        OUTLINED_FUNCTION_5_4();
        (*(v240 + 656))();
        OUTLINED_FUNCTION_145();
        *&v321 = v232;
        *(&v321 + 1) = v234;
        sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
        OUTLINED_FUNCTION_82();
        sub_1E3CA4D00(v241, v242, v243, v244, v245, v246);

        v247 = v332;
        if (v332)
        {
          objc_opt_self();
          OUTLINED_FUNCTION_20_2();
          v248 = swift_dynamicCastObjCClass();
          v249 = v298;
          if (!v248)
          {
          }
        }

        else
        {
          v248 = 0;
          v249 = v298;
        }

        OUTLINED_FUNCTION_4_154();
        (*(v250 + 688))(1, v248);

        if (sub_1E374E8E4(v249, 0))
        {
          OUTLINED_FUNCTION_68_5();
          OUTLINED_FUNCTION_21();
          v252 = (*(v251 + 280))();
          v253 = sub_1E32AE9B0(v252);
          v254 = 0;
          v25 = (v252 & 0xFFFFFFFFFFFFFF8);
          while (v253 != v254)
          {
            if ((v252 & 0xC000000000000001) != 0)
            {
              v262 = OUTLINED_FUNCTION_55_39();
              v255 = MEMORY[0x1E6911E60](v262);
            }

            else
            {
              if (v254 >= *((v252 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_208;
              }

              v255 = *(v252 + 8 * v254 + 32);
            }

            v256 = v255;
            if (__OFADD__(v254, 1))
            {
              goto LABEL_207;
            }

            v258 = *&v255[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier];
            v257 = *&v255[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier + 8];
            v327[0] = 0;
            *&v332 = v258;
            *(&v332 + 1) = v257;
            v259 = *((*MEMORY[0x1E69E7D40] & *v319) + 0x2A0);

            v260 = v259(&v321);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0, &qword_1E42AE160);
            OUTLINED_FUNCTION_177_3();
            v261 = OUTLINED_FUNCTION_60_6();
            v260(v261);

            ++v254;
          }

          OUTLINED_FUNCTION_68_5();
          OUTLINED_FUNCTION_21();
          v264 = (*(v263 + 296))(&v321);
          *v265 = MEMORY[0x1E69E7CC0];

          v264(&v321, 0);
          OUTLINED_FUNCTION_115_8();
          OUTLINED_FUNCTION_20_12();
        }

        OUTLINED_FUNCTION_5_4();
        v266 += 79;
        v267 = *v266;
        v268 = (*v266)();
        v269 = 0;
        v270 = *(v268 + 16);
        for (i = 32; ; i += 40)
        {
          if (v270 == v269)
          {
            OUTLINED_FUNCTION_101_13();

            OUTLINED_FUNCTION_115_8();
            v272 = MEMORY[0x1E69E7D40];
            goto LABEL_194;
          }

          if (v269 >= *(v268 + 16))
          {
            goto LABEL_206;
          }

          sub_1E327F454(v268 + i, &v321);
          sub_1E3251BE8(&v321, &v332);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
          type metadata accessor for LibrarySidebarItem();
          if (swift_dynamicCast())
          {
            break;
          }

          ++v269;
        }

        OUTLINED_FUNCTION_115_8();
        v273 = v267();
        sub_1E39ABF00(v269, 1, v273);
        sub_1E327F454(v273 + i, &v321);

        OUTLINED_FUNCTION_1_31();
        v272 = MEMORY[0x1E69E7D40];
        v275 = (*((*MEMORY[0x1E69E7D40] & v274) + 0x288))(v327);
        sub_1E3E1FFD8(v269, &v332);
        __swift_destroy_boxed_opaque_existential_1(&v332);
        v275(v327, 0);
        v276 = *(&v322 + 1);
        __swift_project_boxed_opaque_existential_1(&v321, *(&v322 + 1));
        v277 = OUTLINED_FUNCTION_9_168();
        v278(v277);
        OUTLINED_FUNCTION_59_1();
        swift_getAssociatedTypeWitness();
        OUTLINED_FUNCTION_20_2();
        sub_1E4207604();
        OUTLINED_FUNCTION_79_2();
        v279 = *(v276 + 16);
        if (v279)
        {
          OUTLINED_FUNCTION_7_20();
          v280 += 84;
          v281 = *v280;
          v25 = v280;
          v282 = v276 + 32;
          do
          {
            sub_1E327F454(v282, &v332);
            v283 = v333;
            OUTLINED_FUNCTION_0_257(&v332, v333);
            v285 = v284(v283);
            v330 = 0;
            *&v324 = v285;
            *(&v324 + 1) = v286;
            v287 = v281(v327);
            v288 = OUTLINED_FUNCTION_55_39();
            __swift_instantiateConcreteTypeFromMangledNameV2(v288, v289);
            sub_1E3CA4D10();
            v287(v327, 0);
            __swift_destroy_boxed_opaque_existential_1(&v332);
            v282 += 40;
            --v279;
          }

          while (v279);

          v272 = MEMORY[0x1E69E7D40];
          OUTLINED_FUNCTION_20_12();
        }

        else
        {
        }

        OUTLINED_FUNCTION_101_13();

        __swift_destroy_boxed_opaque_existential_1(&v321);
LABEL_194:
        OUTLINED_FUNCTION_13_164();
        v291 = (*(v290 + 256))();
        v292 = [v291 tabBar];

        OUTLINED_FUNCTION_1_31();
        [v292 setHidden_];

        v294 = [*(v301 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_rootControllerConfig) normalControllerLimit];
        v295 = v294;
        if (v294)
        {
          [v294 integerValue];
        }

        v296 = OUTLINED_FUNCTION_71_30();
        v297(v296);
        sub_1E3F76770();

        OUTLINED_FUNCTION_25_2();
        return;
      }

      goto LABEL_165;
    }

    while (1)
    {
LABEL_148:
      v25 = v59;
      v206 = (*(v59 + 48) + ((v204 << 10) | (16 * __clz(__rbit64(v202)))));
      v208 = *v206;
      v207 = v206[1];
      OUTLINED_FUNCTION_68_5();
      OUTLINED_FUNCTION_21();
      v210 = *(v209 + 656);
      v211 = swift_bridgeObjectRetain_n();
      v210(v211);
      OUTLINED_FUNCTION_145();
      *&v321 = v208;
      *(&v321 + 1) = v207;
      sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
      OUTLINED_FUNCTION_82();
      sub_1E3CA4D00(v212, v213, v214, MEMORY[0x1E69E6158], v215, MEMORY[0x1E69E6168]);

      v216 = v332;
      if (!v332)
      {
        goto LABEL_152;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_40_3();
      if (!swift_dynamicCastObjCClass())
      {
        break;
      }

      OUTLINED_FUNCTION_90_2();
      [v217 v218];

LABEL_153:
      v202 &= v202 - 1;
      v327[0] = 0;
      *&v332 = v208;
      *(&v332 + 1) = v207;
      v26 = MEMORY[0x1E69E7D40];
      v219 = *((*MEMORY[0x1E69E7D40] & *v198) + 0x2A0);

      v220 = v219(&v321);
      v198 = v221;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0, &qword_1E42AE160);
      OUTLINED_FUNCTION_177_3();
      v222 = OUTLINED_FUNCTION_60_6();
      v220(v222);

      v59 = v25;
      if (!v202)
      {
        goto LABEL_144;
      }
    }

LABEL_152:
    OUTLINED_FUNCTION_90_2();
    goto LABEL_153;
  }

  v67 = 0;
  v68 = 0;
  v315 = v66 & 0xC000000000000001;
  v304 = v66 & 0xFFFFFFFFFFFFFF8;
  v303 = v66 + 32;
  v311 = v66;
  while (1)
  {
    if (v315)
    {
      v69 = MEMORY[0x1E6911E60](v68, v311);
    }

    else
    {
      if (v68 >= *(v304 + 16))
      {
        goto LABEL_210;
      }

      v69 = *(v303 + 8 * v68);
    }

    v70 = v69;
    v57 = __OFADD__(v68++, 1);
    if (v57)
    {
      goto LABEL_205;
    }

    v71 = *&v69[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier];
    v72 = *&v69[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8];
    if (v71 == sub_1E4205F14() && v72 == v73)
    {

LABEL_77:
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_25();
      v97 = v96();
      if (!v97)
      {

        v67 = 0;
        goto LABEL_97;
      }

      v98 = v97;
      v99 = v67;
      v100 = [v97 viewControllers];
      sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
      OUTLINED_FUNCTION_40_3();
      v101 = sub_1E42062B4();

      if (v101 >> 62)
      {
        if (sub_1E4207384())
        {
LABEL_80:
          if ((v101 & 0xC000000000000001) != 0)
          {
            v102 = MEMORY[0x1E6911E60](0, v101);
          }

          else
          {
            if (!*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_211;
            }

            v102 = *(v101 + 32);
          }

          v67 = v102;

          goto LABEL_134;
        }
      }

      else if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_80;
      }

      v67 = 0;
LABEL_134:
      v320 = v67;
      v327[0] = v98;
      *&v332 = v71;
      *(&v332 + 1) = v72;
      v186 = *((*v26 & *v48) + 0x2A0);

      v25 = v98;
      v187 = v186(&v321);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0, &qword_1E42AE160);
      OUTLINED_FUNCTION_177_3();
      v188 = OUTLINED_FUNCTION_60_6();
      v187(v188);
      v189 = OUTLINED_FUNCTION_125();
      sub_1E397B708(v189, v190);

      v191 = v70;
      MEMORY[0x1E6910BF0]();
      v192 = *((v335 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v335 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v192 >> 1)
      {
        OUTLINED_FUNCTION_35(v192);
        sub_1E42062F4();
      }

      OUTLINED_FUNCTION_13_8();
      sub_1E4206324();

      goto LABEL_137;
    }

    OUTLINED_FUNCTION_125();
    v75 = sub_1E42079A4();

    if (v75)
    {
      goto LABEL_77;
    }

    OUTLINED_FUNCTION_5_4();
    v77 = (*(v76 + 632))();
    v70 = 0;
    v78 = *(v77 + 16);
    v79 = v77 + 32;
    v320 = v67;
    v306 = v78;
    v305 = v77 + 32;
    while (1)
    {
      if (v70 == v78)
      {

        if (v309)
        {
          v26 = MEMORY[0x1E69E7D40];
          OUTLINED_FUNCTION_80_20();
LABEL_99:
          v125 = v124 == v71 && v123 == v72;
          v320 = v67;
          if (v125)
          {
            v126 = 1;
          }

          else
          {
            v126 = OUTLINED_FUNCTION_182(v124, v123);
          }
        }

        else
        {
          v126 = 0;
          v26 = MEMORY[0x1E69E7D40];
          OUTLINED_FUNCTION_80_20();
        }

        goto LABEL_106;
      }

      v80 = v77;
      sub_1E39ABF00(v70, 1, v77);
      sub_1E327F454(v79 + 40 * v70, &v332);
      v81 = v333;
      OUTLINED_FUNCTION_0_257(&v332, v333);
      v83 = v82(v81);
      if (v83 == v71 && v84 == v72)
      {

LABEL_115:

        OUTLINED_FUNCTION_75_26();
        v138 = OUTLINED_FUNCTION_9_168();
        v139(v138);
        OUTLINED_FUNCTION_106();
        OUTLINED_FUNCTION_59_1();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
        OUTLINED_FUNCTION_16_0();
        sub_1E4207604();
        OUTLINED_FUNCTION_79_2();
        v141 = *(AssociatedTypeWitness + 16);
        if (v141)
        {
          OUTLINED_FUNCTION_7_20();
          v308 = *(v142 + 656);
          v143 = AssociatedTypeWitness + 32;
          v144 = MEMORY[0x1E69E7CC0];
          do
          {
            sub_1E327F454(v143, v327);
            v145 = v328;
            v146 = v329;
            __swift_project_boxed_opaque_existential_1(v327, v328);
            v325 = v145;
            v326 = *(v146 + 8);
            __swift_allocate_boxed_opaque_existential_1(&v324);
            OUTLINED_FUNCTION_37_1();
            (*(v147 + 16))();
            v148 = v328;
            OUTLINED_FUNCTION_0_257(v327, v328);
            v150 = v149(v148);
            v152 = v151;
            v153 = __swift_destroy_boxed_opaque_existential_1(v327);
            v154 = v308(v153);
            v68 = v155;
            *&v321 = v150;
            *(&v321 + 1) = v152;
            v156 = sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
            sub_1E3CA4D00(&v321, v154, v68, MEMORY[0x1E69E6158], v156, MEMORY[0x1E69E6168]);

            v157 = v330;
            if (v330)
            {
              objc_opt_self();
              OUTLINED_FUNCTION_19_3();
              v158 = swift_dynamicCastObjCClass();
              if (!v158)
              {
              }
            }

            else
            {
              v158 = 0;
            }

            sub_1E3251BE8(&v324, &v321);
            *(&v323 + 1) = v158;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v164 = OUTLINED_FUNCTION_73_0();
              v144 = sub_1E3E24800(v164, v165, v166, v144);
            }

            v160 = v144[2];
            v159 = v144[3];
            if (v160 >= v159 >> 1)
            {
              v167 = OUTLINED_FUNCTION_35(v159);
              v144 = sub_1E3E24800(v167, v160 + 1, 1, v144);
            }

            v144[2] = v160 + 1;
            v161 = &v144[6 * v160];
            v162 = v321;
            v163 = v323;
            v161[3] = v322;
            v161[4] = v163;
            v161[2] = v162;
            v143 += 40;
            --v141;
          }

          while (v141);
        }

        else
        {

          v144 = MEMORY[0x1E69E7CC0];
        }

        OUTLINED_FUNCTION_7_20();
        v169 = (*(v168 + 832))();
        v170 = v333;
        OUTLINED_FUNCTION_0_257(&v332, v333);
        v172 = v171(v170);
        v174 = sub_1E37D26AC(v172, v173, v169);
        v176 = v175;

        v67 = v333;
        v70 = v334;
        __swift_project_boxed_opaque_existential_1(&v332, v333);
        v177 = OUTLINED_FUNCTION_38();
        v178(v177, v70);
        OUTLINED_FUNCTION_93_16();
        if (v179)
        {
          v68 = v179;
          v70 = v180;
          v181 = v174;
          ObjectType = swift_getObjectType();
          v183 = v176;
          v184 = sub_1E3E13020(v144);

          v185 = ObjectType;
          v67 = v320;
          v98 = (*(v70 + 8))(v181, v183, v184, v185, v70);
          swift_unknownObjectRelease();

          v26 = MEMORY[0x1E69E7D40];
          goto LABEL_96;
        }

        __swift_destroy_boxed_opaque_existential_1(&v332);
        v26 = MEMORY[0x1E69E7D40];
LABEL_93:
        OUTLINED_FUNCTION_90_19();
        OUTLINED_FUNCTION_80_20();
        goto LABEL_97;
      }

      v86 = OUTLINED_FUNCTION_182(v83, v84);

      if (v86)
      {
        goto LABEL_115;
      }

      ++v70;
      v67 = v334;
      OUTLINED_FUNCTION_75_26();
      v87 = OUTLINED_FUNCTION_9_168();
      v88(v87);
      OUTLINED_FUNCTION_106();
      OUTLINED_FUNCTION_59_1();
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
      OUTLINED_FUNCTION_16_0();
      v68 = sub_1E4207604();

      v89 = 0;
      v48 = *(v68 + 16);
      v90 = v68 + 32;
LABEL_67:
      if (v48 != v89)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(&v332);
      OUTLINED_FUNCTION_115_8();
      OUTLINED_FUNCTION_93_16();
      OUTLINED_FUNCTION_90_19();
      v78 = v306;
      v79 = v305;
      v77 = v80;
    }

    if (v89 >= *(v68 + 16))
    {
      break;
    }

    sub_1E327F454(v90, &v321);
    v91 = *(&v322 + 1);
    OUTLINED_FUNCTION_0_257(&v321, *(&v322 + 1));
    v93 = v92(v91);
    if (v93 == v71 && v94 == v72)
    {

      goto LABEL_87;
    }

    v67 = OUTLINED_FUNCTION_182(v93, v94);

    if ((v67 & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(&v321);
      v90 += 40;
      v89 = (v89 + 1);
      goto LABEL_67;
    }

LABEL_87:

    v103 = v333;
    v67 = v334;
    OUTLINED_FUNCTION_75_26();
    (*(v67 + 56))(v103, v67);
    OUTLINED_FUNCTION_115_8();
    v26 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_93_16();
    if (!v104)
    {
      __swift_destroy_boxed_opaque_existential_1(&v321);
      __swift_destroy_boxed_opaque_existential_1(&v332);
      goto LABEL_93;
    }

    v70 = v104;
    v307 = v105;
    v106 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF396D0, &qword_1E42D4E80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1E4297BE0;
    v107 = *(&v322 + 1);
    v108 = v323;
    __swift_project_boxed_opaque_existential_1(&v321, *(&v322 + 1));
    *(v68 + 56) = v107;
    *(v68 + 64) = *(v108 + 8);
    __swift_allocate_boxed_opaque_existential_1((v68 + 32));
    OUTLINED_FUNCTION_37_1();
    (*(v109 + 16))();
    v110 = *(&v322 + 1);
    OUTLINED_FUNCTION_0_257(&v321, *(&v322 + 1));
    v112 = v111(v110);
    v114 = v113;
    OUTLINED_FUNCTION_1_31();
    v116 = (*((*v26 & v115) + 0x290))();
    v118 = v117;
    v327[0] = v112;
    v327[1] = v114;
    v119 = sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
    sub_1E3CA4D00(v327, v116, v118, MEMORY[0x1E69E6158], v119, MEMORY[0x1E69E6168]);

    v120 = v324;
    if (v324)
    {
      objc_opt_self();
      OUTLINED_FUNCTION_19_3();
      v121 = swift_dynamicCastObjCClass();
      if (!v121)
      {

        v121 = 0;
      }

      v26 = MEMORY[0x1E69E7D40];
      v67 = v106;
      *(v68 + 72) = v121;
    }

    else
    {
      *(v68 + 72) = 0;
      v26 = MEMORY[0x1E69E7D40];
      v67 = v106;
    }

    v122 = swift_getObjectType();
    v98 = (*(v307 + 8))(0, 0, v68, v122);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v321);
LABEL_96:
    __swift_destroy_boxed_opaque_existential_1(&v332);
    OUTLINED_FUNCTION_90_19();
    OUTLINED_FUNCTION_80_20();
    if (v98)
    {
      goto LABEL_134;
    }

LABEL_97:
    v123 = v309;
    if (v309)
    {
      v124 = v302;
      goto LABEL_99;
    }

    v320 = v67;
    v126 = 0;
LABEL_106:
    OUTLINED_FUNCTION_5_4();
    v67 = (*(v127 + 368))();
    OUTLINED_FUNCTION_1_31();
    v98 = (*((*v26 & v128) + 0x460))(v70, v126 & 1, v67, 0);

    if (v98)
    {
      OUTLINED_FUNCTION_93_16();
      goto LABEL_134;
    }

    v129 = sub_1E324FBDC();
    v25 = v299;
    v68 = v300;
    (*(v312 + 16))(v299, v129, v300);

    v130 = sub_1E41FFC94();
    v131 = sub_1E42067F4();

    if (os_log_type_enabled(v130, v131))
    {
      v132 = OUTLINED_FUNCTION_6_21();
      v310 = v70;
      v133 = OUTLINED_FUNCTION_100();
      *&v321 = v133;
      *v132 = 136315138;
      v134 = OUTLINED_FUNCTION_125();
      v137 = sub_1E3270FC8(v134, v135, v136);

      *(v132 + 4) = v137;
      _os_log_impl(&dword_1E323F000, v130, v131, "RootSplitViewController:: updating to tab bar mode could not create view controller for %s", v132, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v133);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_51_2();
    }

    else
    {
    }

    (*(v312 + 8))(v299, v300);
    OUTLINED_FUNCTION_90_19();
LABEL_137:
    v67 = v320;
    if (v68 == v317)
    {

      v59 = v331;
      goto LABEL_141;
    }
  }

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
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
}

void sub_1E3F7BEC4()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_154();
  v2 = *(v1 + 632);
  v3 = v2();
  sub_1E39574B8(v3, &v55);

  if (v57)
  {
    v4 = v58;
    __swift_project_boxed_opaque_existential_1(&v55, v57);
    v5 = OUTLINED_FUNCTION_38();
    v7 = v6(v5, v4);
    v9 = v8;
    v10 = __swift_destroy_boxed_opaque_existential_1(&v55);
    if (v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = sub_1E325F7FC(&v55, &qword_1ECF2EC80, &qword_1E42AD1C0);
  }

  v11 = (v2)(v10);
  sub_1E39574B8(v11, v52);

  if (!v53)
  {
    v50 = v52;
LABEL_23:
    sub_1E325F7FC(v50, &qword_1ECF2EC80, &qword_1E42AD1C0);
LABEL_24:

    goto LABEL_25;
  }

  v12 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  v13 = OUTLINED_FUNCTION_38();
  v14(v13, v12);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
  OUTLINED_FUNCTION_156_1();
  v15 = sub_1E4207604();

  sub_1E39574B8(v15, &v55);

  if (!v57)
  {
    __swift_destroy_boxed_opaque_existential_1(v52);
    v50 = &v55;
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(&v55, v57);
  v16 = OUTLINED_FUNCTION_38();
  v7 = v17(v16);
  v9 = v18;
  __swift_destroy_boxed_opaque_existential_1(&v55);
  __swift_destroy_boxed_opaque_existential_1(v52);

LABEL_8:
  OUTLINED_FUNCTION_154();
  v20 = *(v19 + 656);

  v22 = v20(v21);
  v24 = v23;
  v55 = v7;
  v56 = v9;
  v25 = sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
  sub_1E3CA4D00(&v55, v22, v24, MEMORY[0x1E69E6158], v25, MEMORY[0x1E69E6168]);

  v26 = v52[0];
  if (!v52[0])
  {
    goto LABEL_24;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_19_3();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v28 = v27;
    v29 = [v27 viewControllers];
    v30 = sub_1E42062B4();

    v52[0] = v30;
    v55 = 1;
    LOBYTE(v56) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF396B0, &qword_1E42B49B0);
    sub_1E328FCF4(&qword_1EE23B4A0, &unk_1ECF396B0, &qword_1E42B49B0);
    v31 = OUTLINED_FUNCTION_147();
    sub_1E38D2054(v31, v32);

    if (v51)
    {
      ObjectType = swift_getObjectType();
      if (!dynamic_cast_existential_1_conditional(v51, ObjectType, &protocol descriptor for TemplateReparentable))
      {

        goto LABEL_25;
      }

      v35 = v34;
      v36 = swift_getObjectType();
      (*(v35 + 32))(v36, v35);
      v38 = v37;

      if (v38)
      {
        v26 = 1;
        do
        {
          v39 = [v28 viewControllers];
          v40 = sub_1E42062B4();

          v52[0] = v40;
          v55 = v26;
          LOBYTE(v56) = 0;
          v41 = OUTLINED_FUNCTION_147();
          sub_1E38D2054(v41, v42);

          v43 = swift_getObjectType();
          if (dynamic_cast_existential_1_conditional(v51, v43, &protocol descriptor for TemplateReparentable))
          {
            OUTLINED_FUNCTION_134_2();
            v44 = swift_getObjectType();
            v45 = v51[2];
            v46 = v51;
            v45(1, v44, v51);

            v47 = v51[5];
            v48 = v46;
            (v47)(0, 0, v44, v51);
          }
        }

        while (!__OFADD__(v26++, 1));
        __break(1u);
      }
    }
  }

LABEL_25:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F7CE00()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_45();
  v1 = (*(v0 + 1088))();
  if (!v2)
  {
    goto LABEL_48;
  }

  v3 = v1;
  v4 = v2;
  OUTLINED_FUNCTION_45();
  v6 = (*(v5 + 808))();
  v84 = v3;
  v85 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v71[2] = &v84;
  v7 = sub_1E3849DF8(sub_1E3756228, v71, v6);

  if (!v7)
  {
    goto LABEL_47;
  }

  v79 = v3;
  OUTLINED_FUNCTION_45();
  v8 += 79;
  v9 = *v8;
  v10 = (*v8)();
  sub_1E39574B8(v10, &v84);

  v11 = v86;
  if (v86)
  {
    v12 = v87;
    __swift_project_boxed_opaque_existential_1(&v84, v86);
    v80 = (*(v12 + 48))(v11, v12);
    v14 = v13;
    v15 = __swift_destroy_boxed_opaque_existential_1(&v84);
    if (v14)
    {
      v74 = 0;
      v75 = v4;
      goto LABEL_10;
    }
  }

  else
  {
    v15 = sub_1E325F7FC(&v84, &qword_1ECF2EC80, &qword_1E42AD1C0);
  }

  v16 = (v9)(v15);
  sub_1E39574B8(v16, v81);

  if (!v82)
  {
    v32 = v81;
LABEL_46:
    sub_1E325F7FC(v32, &qword_1ECF2EC80, &qword_1E42AD1C0);

LABEL_47:

    goto LABEL_48;
  }

  v17 = v83;
  __swift_project_boxed_opaque_existential_1(v81, v82);
  v18 = OUTLINED_FUNCTION_11_168();
  v19(v18, v17);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
  OUTLINED_FUNCTION_16_0();
  sub_1E4207604();
  OUTLINED_FUNCTION_79_2();
  sub_1E39574B8(AssociatedTypeWitness, &v84);

  if (!v86)
  {
    __swift_destroy_boxed_opaque_existential_1(v81);
    v32 = &v84;
    goto LABEL_46;
  }

  v74 = 0;
  v75 = v4;
  __swift_project_boxed_opaque_existential_1(&v84, v86);
  v21 = OUTLINED_FUNCTION_16_5();
  v80 = v22(v21);
  v14 = v23;
  __swift_destroy_boxed_opaque_existential_1(&v84);
  __swift_destroy_boxed_opaque_existential_1(v81);

LABEL_10:
  OUTLINED_FUNCTION_45();
  v25 = (*(v24 + 736))();
  v26 = sub_1E32AE9B0(v25);
  v27 = 0;
  while (1)
  {
    if (v26 == v27)
    {

      goto LABEL_47;
    }

    if ((v25 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x1E6911E60](v27, v25);
    }

    else
    {
      if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v28 = *(v25 + 8 * v27 + 32);
    }

    v29 = v28;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      return;
    }

    if (*&v28[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier] == v80 && v14 == *&v28[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8])
    {
      break;
    }

    v31 = sub_1E42079A4();

    ++v27;
    if (v31)
    {

      goto LABEL_26;
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_45();
  v34 = *(v33 + 656);

  v34(v35);
  OUTLINED_FUNCTION_145();
  v84 = v80;
  v85 = v14;
  sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
  OUTLINED_FUNCTION_82();
  v78 = v36;
  sub_1E3CA4D00(v37, v38, v39, v40, v36, v41);

  v42 = v81[0];
  v43 = v75;
  v44 = v79;
  if (!v81[0])
  {

    goto LABEL_47;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20_2();
  v77 = swift_dynamicCastObjCClass();
  if (v77)
  {
    v73 = v42;

    v34(v45);
    OUTLINED_FUNCTION_145();
    v84 = v44;
    v85 = v43;
    OUTLINED_FUNCTION_82();
    sub_1E3CA4D00(v46, v47, v48, v49, v78, v50);

    v42 = v81[0];
    if (!v81[0])
    {

      v70 = v73;
LABEL_52:

      goto LABEL_48;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_20_2();
    v76 = swift_dynamicCastObjCClass();
    if (v76)
    {
      v72 = v42;
      v51 = [v77 popToRootViewControllerAnimated_];
      while (1)
      {

        v52 = [v76 viewControllers];
        v53 = sub_1E42062B4();

        v54 = v53 >> 62 ? sub_1E4207384() : *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v55 = MEMORY[0x1E69E7D40];
        if (!v54)
        {
          break;
        }

        if ((v53 & 0xC000000000000001) != 0)
        {
          v56 = MEMORY[0x1E6911E60](0, v53);
        }

        else
        {
          if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_57;
          }

          v56 = *(v53 + 32);
        }

        v51 = v56;

        ObjectType = swift_getObjectType();
        if (dynamic_cast_existential_1_conditional(v51, ObjectType, &protocol descriptor for TemplateReparentable))
        {
          OUTLINED_FUNCTION_145();
          v58 = swift_getObjectType();
          v59 = v52[11];
          v60 = v51;
          v59(0, v58, v52);

          v61 = v52[5];

          v62 = v60;
          v61(v79, v43, v58, v52);

          v63 = v52[2];
          v64 = v62;
          v63(1, v58, v52);
        }

        [v77 pushViewController:v51 animated:0];
        v65 = swift_getObjectType();
        if (dynamic_cast_existential_1_conditional(v51, v65, &protocol descriptor for TemplateReparentable))
        {
          OUTLINED_FUNCTION_145();
          v66 = swift_getObjectType();
          v67 = v52[2];
          v68 = v51;
          v67(0, v66, v52);
        }
      }

      OUTLINED_FUNCTION_39();
      (*((*v55 & v69) + 0x220))(v80, v14);

      v70 = v72;
      goto LABEL_52;
    }
  }

  else
  {
  }

LABEL_48:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F7D644(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0, &qword_1E42A7870);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v80 - v5;
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v81 = v8;
  v82 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_manager);
  OUTLINED_FUNCTION_4_154();
  v14 = *(v13 + 440);
  v15 = v14();
  v84 = v15;
  v83 = 2;
  sub_1E397C3E4(v15, v16, v17);
  if ((sub_1E4205E84() & 1) == 0 || (a1 & 0xFFFFFFFFFFFFFFFELL) == 2 || [v1 displayMode] == 2 || (result = objc_msgSend(v1, sel_displayMode), result == 3))
  {
    OUTLINED_FUNCTION_5_4();
    result = (*(v19 + 856))();
    if (v20)
    {
      v21 = v14();
      if (!sub_1E374E8E4(v21, 1) || (OUTLINED_FUNCTION_5_4(), v23 = v12, (*(v22 + 880))() == -1))
      {
        v24 = v14();
        if (!sub_1E374E8E4(v24, 2))
        {
        }

        OUTLINED_FUNCTION_5_4();
        v23 = v12;
        (*(v25 + 904))();
        if (!v26)
        {
        }
      }

      v27 = *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
      OUTLINED_FUNCTION_38();
      sub_1E3B5AB8C();
      v29 = v28;

      if (v29)
      {
        objc_opt_self();
        OUTLINED_FUNCTION_40_3();
        v30 = swift_dynamicCastObjCClass();
        if (!v30)
        {
          return swift_unknownObjectRelease();
        }

        v31 = v30;
        OUTLINED_FUNCTION_4_154();
        v33 = (*(v32 + 432))();
        if (v33)
        {
          v34 = v33;
          sub_1E3280A90(0, &qword_1ECF3D318, 0x1E698CC80);
          OUTLINED_FUNCTION_38();
          swift_unknownObjectRetain_n();
          v35 = sub_1E4206F64();

          swift_unknownObjectRelease();
          if (v35)
          {
            return swift_unknownObjectRelease_n();
          }
        }

        else
        {
          swift_unknownObjectRetain();
        }

        swift_unknownObjectRetain();
        [v31 setModalPresentationStyle_];
        v36 = [v31 popoverPresentationController];
        if (v36)
        {
          v37 = v36;
          [v36 setDelegate_];
        }

        v38 = (v14)([v31 setDelegate_]);
        if (sub_1E374E8E4(v38, 2))
        {
          sub_1E3F771A8(v6);
          v39 = v82;
          if (__swift_getEnumTagSinglePayload(v6, 1, v82) == 1)
          {
            swift_unknownObjectRelease_n();
            return sub_1E325F7FC(v6, &qword_1ECF309A0, &qword_1E42A7870);
          }

          else
          {
            v59 = v81;
            (*(v81 + 32))(v11, v6, v39);
            OUTLINED_FUNCTION_16_89();
            v61 = (*(v60 + 232))();
            OUTLINED_FUNCTION_16_89();
            v63 = (*(v62 + 168))();

            v64 = sub_1E41FE7E4();
            v65 = [v63 cellForItemAtIndexPath_];

            v66 = [v31 popoverPresentationController];
            OUTLINED_FUNCTION_38();
            swift_unknownObjectRelease();
            if (v64)
            {
              [v64 setSourceView_];
            }

            OUTLINED_FUNCTION_16_89();
            v68 = (*(v67 + 440))(v31);
            OUTLINED_FUNCTION_104_15(v68, sel_presentViewController_animated_completion_);

            swift_unknownObjectRelease();
            return (*(v59 + 8))(v11, v39);
          }
        }

        v40 = MEMORY[0x1E69E7D40];
        OUTLINED_FUNCTION_4_154();
        v41 += 32;
        v42 = *v41;
        v43 = (*v41)();
        v44 = [v43 tabBar];

        [v44 bounds];
        v46 = v45;
        v48 = v47;
        v50 = v49;
        v52 = v51;

        OUTLINED_FUNCTION_1_31();
        v54 = *((*v40 & v53) + 0x2E0);
        v55 = v54();
        v56 = sub_1E32AE9B0(v55);

        if (v56)
        {
          v57 = v12;
          v58 = (v54)(result);
          sub_1E32AE9B0(v58);
          OUTLINED_FUNCTION_16_5();
        }

        else
        {
          v57 = 1;
        }

        v69 = MEMORY[0x1E69E7D40];
        if ((*&v50 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v50 > -9.22337204e18)
        {
          if (v50 < 9.22337204e18)
          {
            if (v57)
            {
              if (v50 == 0x8000000000000000 && v57 == -1)
              {
                goto LABEL_48;
              }

              v71 = v50 / v57;
              v72 = v12;
              result = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x370))(result);
              if ((v71 * result) >> 64 == (v71 * result) >> 63)
              {
                v73 = v46 + (v71 * result);
                v74 = v71;
                v75 = [v31 popoverPresentationController];
                if (v75)
                {
                  v76 = v75;
                  v72 = v42();
                  v77 = [v72 tabBar];

                  [v76 setSourceView_];
                }

                v78 = [v31 popoverPresentationController];
                OUTLINED_FUNCTION_38();
                swift_unknownObjectRelease();
                [v72 setSourceRect_];

                v79 = (*((*v69 & *v2) + 0x1B8))(v31);
                OUTLINED_FUNCTION_104_15(v79, sel_presentViewController_animated_completion_);
                return swift_unknownObjectRelease();
              }

LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
              return result;
            }

LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_45;
      }
    }
  }

  return result;
}

uint64_t sub_1E3F7DED4(void *a1)
{
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 432))();
  if (v3)
  {

    return -1;
  }

  else
  {

    return [a1 presentationStyle];
  }
}

void sub_1E3F7DFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v22;
  a20 = v23;
  LODWORD(v275) = v24;
  v262 = v25;
  v26 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  v269 = v31 - v30;
  OUTLINED_FUNCTION_138();
  v270 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v268 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  v267 = v35 - v34;
  OUTLINED_FUNCTION_138();
  v265 = sub_1E4203FB4();
  OUTLINED_FUNCTION_0_10();
  v264 = v36;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5();
  v40 = (v39 - v38);
  v274 = sub_1E4204014();
  OUTLINED_FUNCTION_0_10();
  v266 = v41;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v43);
  v273 = &v247 - v44;
  OUTLINED_FUNCTION_138();
  v45 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v47 = v46;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_18_6();
  v272 = v50;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v247 - v59;
  OUTLINED_FUNCTION_26_3();
  v62 = (*((*MEMORY[0x1E69E7D40] & v61) + 0x1C8))();
  if (!v62)
  {
    goto LABEL_6;
  }

  v63 = v62;
  v257 = v28;
  v259 = v20;
  OUTLINED_FUNCTION_1_13();
  v65 = (*(v64 + 928))();
  if (!v65)
  {

    goto LABEL_6;
  }

  v66 = v65;
  v254 = v26;
  v67 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented;
  swift_beginAccess();
  if (*(&v63->isa + v67))
  {

LABEL_6:
    if (v275)
    {
      v68 = sub_1E324FBDC();
      (*(v47 + 16))(v21, v68, v45);
      v69 = sub_1E41FFC94();
      v70 = sub_1E42067F4();
      if (OUTLINED_FUNCTION_6_33(v70))
      {
        v71 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_9_11(v71);
        OUTLINED_FUNCTION_6_29();
        _os_log_impl(v72, v73, v74, v75, v76, 2u);
        OUTLINED_FUNCTION_51_2();
      }

      (*(v47 + 8))(v21, v45);
    }

LABEL_40:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v250 = v67;
  v258 = v47;
  v256 = v45;
  v255 = v66;
  v253 = v63;
  OUTLINED_FUNCTION_1_13();
  v78 = (*(v77 + 632))();
  v79 = 0;
  v80 = *(v78 + 16);
  v81 = v78 + 32;
  v82 = &qword_1ECF2F0F0;
  while (1)
  {
    if (v80 == v79)
    {
LABEL_16:

      v82 = &selRef_setWaitingForTransactionToStart_;
      v83 = [objc_opt_self() sharedInstance];
      v252 = [v83 isPlaybackUIBeingShown];

      OUTLINED_FUNCTION_26_3();
      v85 = (*((*MEMORY[0x1E69E7D40] & v84) + 0x1B8))();
      v86 = sub_1E374E8E4(v85, 2);
      v87 = *(*v255 + 952);

      v251 = v87(v88);

      v89 = v259;
      v90 = [v259 presentedViewController];
      v47 = MEMORY[0x1E69E7CC0];
      if (v90)
      {
      }

      else
      {
        v91 = [objc_opt_self() sharedInstance];
        v92 = [v91 isPurchaseInProgress];

        if (!v92)
        {
          if (!v86)
          {
            v117 = 0;
            v118 = 0;
            goto LABEL_29;
          }

          if (v80 == v79 || v252)
          {
            goto LABEL_50;
          }

          v117 = 0;
LABEL_46:
          OUTLINED_FUNCTION_45();
          if ((*(v137 + 480))() & 1) != 0 || (v251)
          {
            goto LABEL_27;
          }

          if (v117)
          {
            goto LABEL_26;
          }

          OUTLINED_FUNCTION_45();
          if (((*(v138 + 504))() & 1) == 0)
          {
            goto LABEL_53;
          }

LABEL_50:
          v117 = 0;
          goto LABEL_27;
        }
      }

      OUTLINED_FUNCTION_45();
      if (((*(v93 + 504))() & 1) == 0)
      {
        v249 = v86;
        sub_1E324FBDC();
        OUTLINED_FUNCTION_36_64();
        v94 = v256;
        v95(v60);
        v96 = sub_1E41FFC94();
        v97 = sub_1E4206814();
        if (OUTLINED_FUNCTION_161(v97))
        {
          v98 = OUTLINED_FUNCTION_125_0();
          *v98 = 0;
          OUTLINED_FUNCTION_136();
          _os_log_impl(v99, v100, v101, v102, v98, 2u);
          OUTLINED_FUNCTION_6_0();
        }

        (*(v258 + 8))(v60, v94);
        OUTLINED_FUNCTION_39();
        (*((*MEMORY[0x1E69E7D40] & v103) + 0x200))(1);
        sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
        v248 = sub_1E4206A04();
        v104 = v263;
        sub_1E4204004();
        *v40 = 5;
        (*(v264 + 104))(v40, *MEMORY[0x1E69E7F48], v265);
        MEMORY[0x1E690E9C0](v104, v40);
        v105 = OUTLINED_FUNCTION_55_39();
        v106(v105);
        v266 = *(v266 + 8);
        (v266)(v104, v274);
        OUTLINED_FUNCTION_4_0();
        v107 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v281 = sub_1E3F81478;
        v282 = v107;
        OUTLINED_FUNCTION_15_123();
        *(&v278 + 1) = 1107296256;
        OUTLINED_FUNCTION_14_1();
        v279 = v108;
        v280 = &block_descriptor_12_3;
        v109 = _Block_copy(&v278);

        v110 = v267;
        sub_1E4203FE4();
        *&v278 = v47;
        sub_1E37E7A8C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
        OUTLINED_FUNCTION_47();
        sub_1E328FCF4(v111, v112, &qword_1E429B000);
        OUTLINED_FUNCTION_31_79();
        v89 = v259;
        sub_1E42072E4();
        v113 = v273;
        v114 = OUTLINED_FUNCTION_55_39();
        v115 = v248;
        MEMORY[0x1E69112E0](v114);
        _Block_release(v109);

        v116 = v47;
        v47 = MEMORY[0x1E69E7CC0];
        (*(v257 + 8))(v116, &qword_1E429B000);
        (*(v268 + 8))(v110, v270);
        (v266)(v113, v274);
        v82 = &selRef_setWaitingForTransactionToStart_;
        LOBYTE(v86) = v249;
      }

      if (!v86)
      {
        v118 = 0;
        v117 = 1;
        goto LABEL_29;
      }

      if (v80 == v79 || (v252 & 1) != 0)
      {
LABEL_26:
        v117 = 1;
LABEL_27:
        v118 = 1;
LABEL_29:
        if (v275)
        {
          LODWORD(v275) = v117;
          sub_1E324FBDC();
          OUTLINED_FUNCTION_36_64();
          v119 = v271;
          v120(v271);
          v121 = v89;
          v122 = sub_1E41FFC94();
          v123 = sub_1E4206814();
          if (OUTLINED_FUNCTION_262(v123))
          {
            v124 = OUTLINED_FUNCTION_106_18();
            *v124 = 67110656;
            *(v124 + 4) = v118;
            *(v124 + 8) = 1024;
            *(v124 + 10) = v119;
            *(v124 + 14) = 1024;
            *(v124 + 16) = v252;
            *(v124 + 20) = 1024;
            v125 = MEMORY[0x1E69E7D40];
            *(v124 + 22) = (*((*MEMORY[0x1E69E7D40] & *v121) + 0x1E0))() & 1;

            *(v124 + 26) = 1024;
            *(v124 + 28) = v251 & 1;
            *(v124 + 32) = 1024;
            *(v124 + 34) = v275;
            *(v124 + 38) = 1024;
            *(v124 + 40) = (*((*v125 & *v121) + 0x1F8))() & 1;

            _os_log_impl(&dword_1E323F000, v122, v123, "    RootSplitViewController:: account message: post animated sidebar opening: can't show message because:\n    mode is sidebar = %{BOOL}d, have items besides library = %{BOOL}d,\n    is playback happening = %{BOOL}d, sidebar opening in progress = %{BOOL}d,\n    waiting for UM update = %{BOOL}d, something presented overtop = %{BOOL}d,\n    waiting for presentation dismissal = %{BOOL}d", v124, 0x2Cu);
            v119 = v271;
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_63_32();
            OUTLINED_FUNCTION_107_11();
          }

          else
          {

            OUTLINED_FUNCTION_63_32();
            v122 = v253;
          }

          OUTLINED_FUNCTION_15_5();
          v135 = v119;
        }

        else
        {
          sub_1E324FBDC();
          OUTLINED_FUNCTION_36_64();
          v126 = v272;
          v127(v272);
          v128 = v89;
          v129 = sub_1E41FFC94();
          v130 = sub_1E4206814();
          if (OUTLINED_FUNCTION_262(v130))
          {
            v131 = v117;
            v132 = OUTLINED_FUNCTION_106_18();
            *v132 = 67110656;
            *(v132 + 4) = v118;
            *(v132 + 8) = 1024;
            *(v132 + 10) = v126;
            *(v132 + 14) = 1024;
            *(v132 + 16) = v252;
            *(v132 + 20) = 1024;
            v133 = MEMORY[0x1E69E7D40];
            *(v132 + 22) = (*((*MEMORY[0x1E69E7D40] & *v128) + 0x1E0))() & 1;

            *(v132 + 26) = 1024;
            *(v132 + 28) = v251 & 1;
            *(v132 + 32) = 1024;
            *(v132 + 34) = v131;
            *(v132 + 38) = 1024;
            v126 = v272;
            *(v132 + 40) = (*((*v133 & *v128) + 0x1F8))() & 1;

            _os_log_impl(&dword_1E323F000, v129, v130, "    RootSplitViewController:: account message: can't show message because:\n    mode is sidebar = %{BOOL}d, have items besides library = %{BOOL}d,\n    is playback happening = %{BOOL}d, sidebar opening in progress = %{BOOL}d,\n    waiting for UM update = %{BOOL}d, something presented overtop = %{BOOL}d,\n    waiting for presentation dismissal = %{BOOL}d", v132, 0x2Cu);
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_63_32();
            OUTLINED_FUNCTION_107_11();
          }

          else
          {

            OUTLINED_FUNCTION_63_32();
            v129 = v253;
          }

          OUTLINED_FUNCTION_15_5();
          v135 = v126;
        }

        v136 = &v283;
        goto LABEL_39;
      }

      v117 = 1;
      goto LABEL_46;
    }

    if (v79 >= *(v78 + 16))
    {
      break;
    }

    sub_1E327F454(v81, &v278);
    sub_1E3251BE8(&v278, &v283);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
    type metadata accessor for LibrarySidebarItem();
    if (!swift_dynamicCast())
    {
      goto LABEL_16;
    }

    ++v79;

    v81 += 40;
  }

  __break(1u);
LABEL_53:
  v139 = [objc_opt_self() v82[64]];
  v140 = [v139 accountMessageConfig];

  v141 = type metadata accessor for UnifiedMessagingAccountMessageViewModel();
  v142 = v253;
  v143 = sub_1E375D4BC();
  if (!v143)
  {
    v283 = 0u;
    v284 = 0u;
    goto LABEL_58;
  }

  v276 = sub_1E4205F14();
  v277 = v144;

  sub_1E4207414();
  sub_1E375D7E8(v143, &v283, &v278);

  v145 = sub_1E375D84C(&v278);
  if (!*(&v284 + 1))
  {
LABEL_58:
    sub_1E325F7FC(&v283, &unk_1ECF296E0, &unk_1E4298030);
    if (v143)
    {
      goto LABEL_59;
    }

    v283 = 0u;
    v284 = 0u;
    v148 = 1;
    goto LABEL_64;
  }

  if (OUTLINED_FUNCTION_105_14(v145, v146, v147, MEMORY[0x1E69E6370]))
  {
    v148 = v278;
    goto LABEL_60;
  }

LABEL_59:
  v148 = 1;
LABEL_60:
  v276 = sub_1E4205F14();
  v277 = v149;

  sub_1E4207414();
  sub_1E375D7E8(v143, &v283, &v278);

  v150 = sub_1E375D84C(&v278);
  if (!*(&v284 + 1))
  {
LABEL_64:
    sub_1E325F7FC(&v283, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_65;
  }

  if (OUTLINED_FUNCTION_105_14(v150, v151, v152, MEMORY[0x1E69E6370]))
  {
    v153 = v278;
    goto LABEL_66;
  }

LABEL_65:
  v153 = 1;
LABEL_66:
  LODWORD(v274) = v153;
  v154 = v47;
  if ([v140 alwaysForceOpenSidebarAnimated])
  {
    v155 = 1;
  }

  else
  {
    v156 = [v140 alwaysForceOpenSidebarNonAnimated];
    v155 = (v156 ^ 1) & v148 & v262;
  }

  OUTLINED_FUNCTION_44_59();
  v158 = [v141 v157] == 3 || objc_msgSend(v141, sel_displayMode) == 2;
  OUTLINED_FUNCTION_21();
  if ((*(v159 + 328))())
  {

    if (v275)
    {
      v160 = sub_1E324FBDC();
      v161 = v258;
      v162 = v260;
      v163 = v256;
      (*(v258 + 16))(v260, v160, v256);
      v164 = sub_1E41FFC94();
      v165 = sub_1E42067F4();
      if (OUTLINED_FUNCTION_6_33(v165))
      {
        v166 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_9_11(v166);
        OUTLINED_FUNCTION_6_29();
        _os_log_impl(v167, v168, v169, v170, v171, 2u);
        OUTLINED_FUNCTION_51_2();
      }

      else
      {
      }

      (*(v161 + 8))(v162, v163);
      goto LABEL_40;
    }

LABEL_82:
    OUTLINED_FUNCTION_63_32();
    goto LABEL_40;
  }

  v273 = v140;
  if (v275)
  {
    v172 = v258;
    if (!v158)
    {

      sub_1E324FBDC();
      OUTLINED_FUNCTION_51_4();
      v173 = OUTLINED_FUNCTION_70_28();
      v174(v173);
      v175 = sub_1E41FFC94();
      v176 = sub_1E42067F4();
      if (OUTLINED_FUNCTION_6_33(v176))
      {
        v177 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_9_11(v177);
        OUTLINED_FUNCTION_6_29();
        _os_log_impl(v178, v179, v180, v181, v182, 2u);
        OUTLINED_FUNCTION_51_2();
      }

      (*(v172 + 8))(v154, v142);
      OUTLINED_FUNCTION_68_5();
      v183 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_21();
      v185 = (*(v184 + 232))();
      goto LABEL_102;
    }

LABEL_86:

    sub_1E324FBDC();
    OUTLINED_FUNCTION_51_4();
    v192 = OUTLINED_FUNCTION_70_28();
    v193(v192);
    v194 = v154;
    v195 = sub_1E41FFC94();
    v196 = sub_1E4206814();
    if (OUTLINED_FUNCTION_6_33(v196))
    {
      v197 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v197);
      OUTLINED_FUNCTION_6_29();
      _os_log_impl(v198, v199, v200, v201, v202, 2u);
      OUTLINED_FUNCTION_51_2();
    }

    (*(v172 + 8))(v154, v142);
LABEL_89:
    OUTLINED_FUNCTION_68_5();
    v203 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_21();
    (*(v204 + 232))();
    OUTLINED_FUNCTION_7_5();
    v206 = v253;
    (*((*v203 & v205) + 0x168))(v253, 1);

    OUTLINED_FUNCTION_63_32();
    *(&v206->isa + v250) = 1;

    goto LABEL_40;
  }

  v186 = sub_1E324FBDC();
  v187 = v261;
  v275 = *(v258 + 16);
  v275(v261, v186, v256);
  v188 = sub_1E41FFC94();
  v189 = sub_1E4206814();
  if (OUTLINED_FUNCTION_6_33(v189))
  {
    v190 = swift_slowAlloc();
    *v190 = 67109632;
    *(v190 + 4) = v148;
    *(v190 + 8) = 1024;
    *(v190 + 10) = v155;
    *(v190 + 14) = 1024;
    *(v190 + 16) = v274;
    _os_log_impl(&dword_1E323F000, v188, v187, "    RootSplitViewController:: account message: present opening sidebar = %{BOOL}d,\n    animating sidebar open = %{BOOL}d, animating message in = %{BOOL}d", v190, 0x14u);
    OUTLINED_FUNCTION_6_0();
  }

  v172 = v258;
  v142 = (v258 + 8);
  v183 = *(v258 + 8);
  v191 = OUTLINED_FUNCTION_61_28(&v287);
  v183(v191);
  if (v158)
  {
    goto LABEL_86;
  }

  v207 = MEMORY[0x1E69E7D40];
  if (!v148)
  {

    OUTLINED_FUNCTION_44_59();
    OUTLINED_FUNCTION_1_13();
    v185 = (*(v229 + 232))();
LABEL_102:
    v230 = OUTLINED_FUNCTION_83_19();
    v231(v230);

    OUTLINED_FUNCTION_63_32();
    OUTLINED_FUNCTION_86_17();

    goto LABEL_40;
  }

  v208 = v183;
  if ((v274 & 1) == 0)
  {
    OUTLINED_FUNCTION_44_59();
    OUTLINED_FUNCTION_1_13();
    (*(v209 + 232))();
    OUTLINED_FUNCTION_7_5();
    v210 = OUTLINED_FUNCTION_83_19();
    v211(v210);

    OUTLINED_FUNCTION_86_17();
  }

  OUTLINED_FUNCTION_44_59();
  OUTLINED_FUNCTION_1_13();
  if ((*(v212 + 408))())
  {
    sub_1E324FBDC();
    v213 = OUTLINED_FUNCTION_65_34(&v285);
    v214(v213);
    v215 = sub_1E41FFC94();
    v216 = sub_1E4206814();
    if (OUTLINED_FUNCTION_6_33(v216))
    {
      v217 = OUTLINED_FUNCTION_125_0();
      *v217 = 0;
      _os_log_impl(&dword_1E323F000, v215, v187, "RootSplitViewController:: clearing user preferred display mode due to account message", v217, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v218 = OUTLINED_FUNCTION_61_28(&v285);
    v208(v218);
    OUTLINED_FUNCTION_44_59();
    OUTLINED_FUNCTION_26_3();
    (*((*v207 & v219) + 0x1A0))(0);
    [v187 setPreferredDisplayMode_];
  }

  if (v155)
  {

    (*((*v207 & *v259) + 0x1E8))(1);
    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v220 = sub_1E4206A04();
    OUTLINED_FUNCTION_4_0();
    v221 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v222 = swift_allocObject();
    *(v222 + 16) = v221;
    *(v222 + 24) = v274;
    *(v222 + 25) = v262 & 1;
    v281 = sub_1E3F81468;
    v282 = v222;
    OUTLINED_FUNCTION_15_123();
    *(&v278 + 1) = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v279 = v223;
    v280 = &block_descriptor_8_3;
    v224 = _Block_copy(&v278);

    v225 = v267;
    sub_1E4203FE4();
    *&v278 = v154;
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    OUTLINED_FUNCTION_47();
    sub_1E328FCF4(v226, v227, &qword_1E429B000);
    OUTLINED_FUNCTION_31_79();
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v225, v155, v224);

    _Block_release(v224);
    OUTLINED_FUNCTION_63_32();
    OUTLINED_FUNCTION_107_11();

    OUTLINED_FUNCTION_15_5();
    v228(v155, &qword_1E429B000);
    OUTLINED_FUNCTION_15_5();
    v135 = v225;
    v136 = &a17;
LABEL_39:
    v134(v135, *(v136 - 32));
    goto LABEL_40;
  }

  v232 = [v259 vuiView];
  if (v232)
  {
    v233 = v232;

    v194 = [v233 window];

    if (v194)
    {
      v234 = [v194 windowScene];

      if (v234)
      {
        v194 = [v234 interfaceOrientation];

        if (UIDeviceOrientationIsLandscape(v194))
        {
          v235 = 2;
          goto LABEL_110;
        }

        if (UIInterfaceOrientationIsPortrait(v194))
        {
          v235 = 3;
LABEL_110:
          [v259 setPreferredDisplayMode_];
        }
      }
    }

    sub_1E324FBDC();
    v236 = OUTLINED_FUNCTION_65_34(v286);
    v237(v236);
    v238 = sub_1E41FFC94();
    v239 = sub_1E4206814();
    if (OUTLINED_FUNCTION_6_33(v239))
    {
      v240 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v240);
      OUTLINED_FUNCTION_6_29();
      _os_log_impl(v241, v242, v243, v244, v245, 2u);
      OUTLINED_FUNCTION_51_2();
    }

    v246 = OUTLINED_FUNCTION_61_28(v286);
    v208(v246);
    if (!v274)
    {
      OUTLINED_FUNCTION_107_11();

      goto LABEL_82;
    }

    goto LABEL_89;
  }

  __break(1u);
}

void sub_1E3F7F9FC(uint64_t a1)
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1E324FBDC();
    v4 = OUTLINED_FUNCTION_101();
    v5(v4);
    v6 = sub_1E41FFC94();
    v7 = sub_1E4206814();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_50_4(v8);
      OUTLINED_FUNCTION_108_12(&dword_1E323F000, v6, v7, "RootSplitViewController:: account message: dispatch timer ended, attempting to present");
      OUTLINED_FUNCTION_21_0();
    }

    v9 = OUTLINED_FUNCTION_16_0();
    v10(v9);
    OUTLINED_FUNCTION_67_1();
    (*((*MEMORY[0x1E69E7D40] & v11) + 0x200))(0);
    sub_1E3F7DFAC(1, 0, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

void sub_1E3F7FB94()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v62 = v4;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v59 = v6;
  v60 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v57 = v8 - v7;
  OUTLINED_FUNCTION_138();
  v58 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v56 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v53 = sub_1E4203FB4();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = (v18 - v17);
  v61 = sub_1E4204014();
  OUTLINED_FUNCTION_0_10();
  v55 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v22);
  v54 = &v51 - v23;
  OUTLINED_FUNCTION_138();
  v24 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    [Strong showColumn_];
  }

  if (v62)
  {
    LODWORD(v52) = v3;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_51_4();
    v30(v0);
    v31 = sub_1E41FFC94();
    v32 = sub_1E4206814();
    if (OUTLINED_FUNCTION_262(v32))
    {
      v33 = OUTLINED_FUNCTION_125_0();
      v51 = v13;
      *v33 = 0;
      _os_log_impl(&dword_1E323F000, v31, v32, "RootSplitViewController:: animating sidebar open, will try to present account message in 0.5s", v33, 2u);
      v13 = v51;
      OUTLINED_FUNCTION_6_0();
    }

    (*(v26 + 8))(v0, v24);
    LOBYTE(v3) = v52;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v34 = swift_unknownObjectWeakLoadStrong();
  if (!v34)
  {
    goto LABEL_10;
  }

  v35 = v34;
  v36 = [v34 vuiView];

  if (v36)
  {
    [v36 setUserInteractionEnabled_];

LABEL_10:
    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v52 = sub_1E4206A04();
    sub_1E4204004();
    *v19 = 500;
    (*(v15 + 104))(v19, *MEMORY[0x1E69E7F38], v53);
    v37 = v54;
    MEMORY[0x1E690E9C0](v1, v19);
    v38 = OUTLINED_FUNCTION_13_8();
    v39(v38);
    v55 = *(v55 + 8);
    (v55)(v1, v61);
    OUTLINED_FUNCTION_4_0();
    v40 = swift_allocObject();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v41 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v42 = swift_allocObject();
    *(v42 + 16) = v40;
    *(v42 + 24) = v62 & 1;
    *(v42 + 25) = v3 & 1;
    v63[4] = sub_1E3F81480;
    v63[5] = v42;
    OUTLINED_FUNCTION_15_123();
    v63[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v63[2] = v43;
    v63[3] = &block_descriptor_19_4;
    v44 = _Block_copy(v63);

    sub_1E4203FE4();
    v63[0] = MEMORY[0x1E69E7CC0];
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    OUTLINED_FUNCTION_47();
    sub_1E328FCF4(v45, v46, &qword_1E429B000);
    v47 = v57;
    v48 = v60;
    v49 = v60;
    sub_1E42072E4();
    OUTLINED_FUNCTION_90_2();
    MEMORY[0x1E69112E0]();
    _Block_release(v44);

    (*(v59 + 8))(v47, v48);
    OUTLINED_FUNCTION_15_5();
    v50(v13, v58);
    (v55)(v37, v61);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  __break(1u);
}

void sub_1E3F80188()
{
  OUTLINED_FUNCTION_31_1();
  v133 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v122 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v122 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v122 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v122 - v19;
  type metadata accessor for UnifiedMessagingAccountMessageViewModel();
  OUTLINED_FUNCTION_19_3();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    goto LABEL_44;
  }

  v22 = v21;
  v128 = v1;
  v126 = v10;
  OUTLINED_FUNCTION_21();
  v23 += 57;
  v24 = *v23;
  v25 = v23;

  v131 = v24;
  v132 = v0;
  v130 = v25;
  v27 = (v24)(v26);
  v125 = v16;
  if (v27)
  {
    v28 = v27;
    v29 = sub_1E3A517DC();
  }

  else
  {
    v29 = 0;
  }

  v30 = *(*v22 + 896);

  v32 = v30(v31);

  v34 = (v131)(v33);
  if (v34)
  {
    v35 = v34;
    v36 = v32;
    v37 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    HIDWORD(v129) = v35[v37];
    v32 = v36;
  }

  else
  {
    HIDWORD(v129) = 0;
  }

  v38 = v29;
  if (!v32)
  {
    if (!v29)
    {

      goto LABEL_44;
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_51_4();
    v65(v7);
    v66 = sub_1E41FFC94();
    v67 = sub_1E4206814();
    if (os_log_type_enabled(v66, v67))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_103_12(&dword_1E323F000, v68, v69, "RootSplitViewController:: account message: removed");
      OUTLINED_FUNCTION_6_0();
    }

    v70 = OUTLINED_FUNCTION_13_8();
    v71(v70);
    v72 = v132;
    OUTLINED_FUNCTION_26_3();
    v73 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & v74) + 0x1D0))(0);
    OUTLINED_FUNCTION_21();
    (*(v75 + 232))();
    OUTLINED_FUNCTION_7_5();
    (*((*v73 & v76) + 0x168))(0, 1);

LABEL_37:

    goto LABEL_44;
  }

  v39 = sub_1E324FBDC();
  v40 = v3;
  v41 = *(v3 + 16);
  v127 = v32;
  v124 = v39;
  if (v38 && v32 == v38)
  {
    v42 = v133;
    v43 = v41;
    v41(v13, v39, v133);
    v44 = sub_1E41FFC94();
    v45 = sub_1E4206814();
    if (OUTLINED_FUNCTION_161(v45))
    {
      v46 = OUTLINED_FUNCTION_125_0();
      *v46 = 0;
      OUTLINED_FUNCTION_136();
      _os_log_impl(v47, v48, v49, v50, v46, 2u);
      v42 = v133;
      OUTLINED_FUNCTION_6_0();
    }

    v51 = *(v40 + 8);
    v51(v13, v42);
    if ((v129 & 0x100000000) == 0)
    {
      v43(v126, v124, v42);
      v52 = sub_1E41FFC94();
      v53 = sub_1E4206814();
      if (OUTLINED_FUNCTION_161(v53))
      {
        v54 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_50_4(v54);
        OUTLINED_FUNCTION_136();
        OUTLINED_FUNCTION_108_12(v55, v56, v57, v58);
        OUTLINED_FUNCTION_21_0();
      }

      v51(v126, v42);
      sub_1E3F7DFAC(1, 0, v59, v60, v61, v62, v63, v64, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);
    }

LABEL_43:

    goto LABEL_44;
  }

  v122 = v41;
  v123 = v3 + 16;
  v41(v20, v39, v133);
  v77 = sub_1E41FFC94();
  v78 = sub_1E4206814();
  if (OUTLINED_FUNCTION_161(v78))
  {
    v79 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v79);
    OUTLINED_FUNCTION_136();
    OUTLINED_FUNCTION_108_12(v80, v81, v82, v83);
    OUTLINED_FUNCTION_21_0();
  }

  v84 = *(v3 + 8);
  v85 = v133;
  v126 = (v3 + 8);
  v84(v20, v133);
  if (v38)
  {
    v122(v128, v124, v85);
    v86 = sub_1E41FFC94();
    v87 = sub_1E4206814();
    if (OUTLINED_FUNCTION_161(v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 67109120;
      *(v88 + 4) = HIDWORD(v129);
      OUTLINED_FUNCTION_136();
      _os_log_impl(v89, v90, v91, v92, v88, 8u);
      OUTLINED_FUNCTION_21_0();
    }

    v84(v128, v85);
  }

  else
  {
    HIDWORD(v129) = 0;
  }

  v93 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
  v94 = v131();
  v135 = 0;
  memset(v134, 0, sizeof(v134));
  v95 = sub_1E39C4090(v22, v94, v134);

  sub_1E325F7FC(v134, &qword_1ECF296C0, &unk_1E429BBE0);
  v96 = v127;
  if (!v95)
  {

    goto LABEL_37;
  }

  type metadata accessor for AccountMessageViewController();
  v97 = swift_dynamicCastClass();
  if (v97)
  {
    v98 = v97;
    v99 = v132;
    v100 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_21();
    v102 = *(v101 + 464);
    v103 = v95;
    v104 = v102(v98);
    v105 = v99;
    v106 = (v131)(v104);
    if (v106)
    {
      v108 = v106;
      sub_1E3A51794(0, v107);
    }

    if ((v129 & 0x100000000) != 0)
    {
      OUTLINED_FUNCTION_154();
      (*(v109 + 232))();
      OUTLINED_FUNCTION_7_5();
      (*((*v100 & v110) + 0x168))(v98, 1);
    }

    else
    {

      v111 = v133;
      v122(v125, v124, v133);
      v112 = sub_1E41FFC94();
      v113 = sub_1E4206814();
      if (os_log_type_enabled(v112, v113))
      {
        *OUTLINED_FUNCTION_125_0() = 0;
        OUTLINED_FUNCTION_103_12(&dword_1E323F000, v114, v115, "RootSplitViewController:: account message: did update, attempting to present");
        v111 = v133;
        OUTLINED_FUNCTION_6_0();
      }

      v84(v125, v111);
      sub_1E3F7DFAC(1, 0, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);
    }

    goto LABEL_43;
  }

LABEL_44:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F80A30(double a1, double a2)
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  v3 = OUTLINED_FUNCTION_101();
  v4(v3);
  v5 = sub_1E41FFC94();
  v6 = sub_1E42067E4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_6_21();
    v8 = OUTLINED_FUNCTION_100();
    v15 = v8;
    *v7 = 136315138;
    v9 = sub_1E4206E64();
    v11 = sub_1E3270FC8(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1E323F000, v5, v6, "UnifiedMessaging::didUpdate newSize %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_6_0();
  }

  v12 = OUTLINED_FUNCTION_16_0();
  return v13(v12);
}

uint64_t sub_1E3F80C24()
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  v1 = OUTLINED_FUNCTION_101();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E42067E4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_125_0();
    *v5 = 0;
    _os_log_impl(&dword_1E323F000, v3, v4, "UnifiedMessaging::didFailWithError", v5, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v6 = OUTLINED_FUNCTION_16_0();
  return v7(v6);
}

void sub_1E3F80DAC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v66 = v4;
  sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v67 = v6;
  v68 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v65 = v8 - v7;
  OUTLINED_FUNCTION_138();
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v64 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_6();
  v63 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v63 - v18;
  v20 = sub_1E324FBDC();
  v21 = *(v11 + 16);
  v69 = v20;
  v70 = v21;
  (v21)(v19);
  v22 = v3;
  v23 = sub_1E41FFC94();
  v24 = sub_1E42067E4();

  v25 = &selRef_needsAdamIdToCanonicalIdConversion;
  if (os_log_type_enabled(v23, v24))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412546;
    *(v26 + 4) = v22;
    *v27 = v22;
    *(v26 + 12) = 2112;
    v28 = [v22 originalRequest];
    *(v26 + 14) = v28;
    v27[1] = v28;
    _os_log_impl(&dword_1E323F000, v23, v24, "UnifiedMessaging::Action dialogResult: %@, request: %@", v26, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E30, &qword_1E429E820);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_51_2();
    v25 = &selRef_needsAdamIdToCanonicalIdConversion;
    OUTLINED_FUNCTION_6_0();
  }

  v29 = OUTLINED_FUNCTION_16_0();
  v71 = v30;
  (v30)(v29);
  [v1 dismissViewControllerAnimated:1 completion:0];
  v31 = [v22 v25[138]];
  v32 = [v22 selectedActionIdentifier];
  v33 = sub_1E4205F14();
  v35 = v34;

  v36 = sub_1E3A7C950(v33, v35, v31);
  if (!v36)
  {
    v43 = v64;
    v70(v64, v69, v9);
    v44 = v22;
    v45 = sub_1E41FFC94();
    v46 = sub_1E42067E4();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = OUTLINED_FUNCTION_6_21();
      v48 = OUTLINED_FUNCTION_100();
      v72 = v48;
      *v47 = 136315138;
      v49 = [v44 selectedActionIdentifier];
      sub_1E4205F14();

      v50 = OUTLINED_FUNCTION_39_0();
      v53 = sub_1E3270FC8(v50, v51, v52);

      *(v47 + 4) = v53;
      _os_log_impl(&dword_1E323F000, v45, v46, "UnifiedMessaging::Action Could not find action for %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_6_0();
    }

    v54 = v43;
    goto LABEL_12;
  }

  v37 = [v36 deepLink];
  if (!v37)
  {
    v55 = v63;
    v70(v63, v69, v9);
    v56 = sub_1E41FFC94();
    v57 = sub_1E42067E4();
    if (OUTLINED_FUNCTION_161(v57))
    {
      v58 = OUTLINED_FUNCTION_125_0();
      *v58 = 0;
      OUTLINED_FUNCTION_136();
      _os_log_impl(v59, v60, v61, v62, v58, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v54 = v55;
LABEL_12:
    v71(v54, v9);
    goto LABEL_13;
  }

  v38 = v37;
  v39 = v65;
  sub_1E41FE3C4();

  v40 = _s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
  v41 = *v40;
  OUTLINED_FUNCTION_38();
  sub_1E3B60024();

  v42 = *v40;
  nullsub_1();

  (*(v67 + 8))(v39, v68);
LABEL_13:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F81310(uint64_t a1, char a2, void *a3)
{
  sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
  v5 = sub_1E42062A4();

  [a3 setViewControllers:v5 animated:a2 & 1];
}

void sub_1E3F813A4()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v0 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x1B8))(0);
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = OUTLINED_FUNCTION_106();
    sub_1E3F7D644(v2);
  }
}

void sub_1E3F81480()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 25);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong vuiView];

    if (!v5)
    {
      __break(1u);
      return;
    }

    [v5 setUserInteractionEnabled_];
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    (*((*MEMORY[0x1E69E7D40] & *v6) + 0x1E8))(0);
  }

  if (v1)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v15 = v8;
      sub_1E3F7DFAC(v2, 1, v9, v10, v11, v12, v13, v14, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }
}

void sub_1E3F815B4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_8();
  v6 = OUTLINED_FUNCTION_101();
  v7(v6);
  v8 = [objc_allocWithZone(VUIAppNavigationController) initWithRootViewController_];
  v9 = *(v1 + 16);
  v10 = v8;
  v11 = OUTLINED_FUNCTION_114_0();
  v12 = v9(v11);
  sub_1E37FB7F0(v12, v13, v10, &selRef_setVuiViewControllerIdentifier_);
  [v10 setMaxNavControllerStackDepth_];
  v14 = *(v1 + 8);
  v15 = OUTLINED_FUNCTION_114_0();
  v16 = v14(v15);
  sub_1E37FB7F0(v16, v17, v10, &selRef_setTitle_);
  v18 = [v10 tabBarItem];
  if (v18)
  {
    v19 = v18;
    v20 = OUTLINED_FUNCTION_114_0();
    v21 = v14(v20);
    sub_1E37FB7F0(v21, v22, v19, &selRef_setTitle_);

    v23 = [v10 tabBarItem];
    if (v23)
    {
      v24 = OUTLINED_FUNCTION_114_0();
      v26 = sub_1E395DF10(v24, v25);
      [v23 setImage_];

      [v10 vui:*(v3 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_manager) addControllerObserver:?];
      v27 = OUTLINED_FUNCTION_16_0();
      v28(v27);
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

void OUTLINED_FUNCTION_103_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_106_18()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_107_11()
{
  v2 = *(v0 - 440);
}

void OUTLINED_FUNCTION_108_12(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t sub_1E3F818F0()
{
  *(v0 + 104) = 0;
  v1 = sub_1E3C2F9A0();
  v2 = *(* + 1696);
  v3 = *v2();
  (*(v3 + 1808))(3);

  v5 = (v2)(v4);
  sub_1E39537A8();
  v26[0] = v6;
  v26[1] = v7;
  v26[2] = v8;
  v26[3] = v9;
  v27 = 0;
  (*(*v5 + 560))(v26);

  v11 = (v2)(v10);
  v12.n128_u64[0] = 0.5;
  v24[0] = j__OUTLINED_FUNCTION_7_78(v12);
  v24[1] = v13;
  v24[2] = v14;
  v24[3] = v15;
  v25 = 0;
  (*(*v11 + 1856))(v24);

  v17 = (v2)(v16);
  v18 = *sub_1E3E60CFC();
  v19 = *(*v17 + 1832);
  v20 = v18;
  v19(v18);

  v22 = (*(*v1 + 1696))(v21);
  sub_1E3C37CBC(v22, 39);

  return v1;
}

id sub_1E3F81BB8(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendItem_viewModel;
  *&v2[OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendItem_viewModel] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendItem_stackItems] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendItem_layout] = 0;
  *&v2[v4] = a1;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for LeagueStandingsLegendItem();

  v5 = objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);

  return v5;
}

uint64_t sub_1E3F81C84(void *a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendItem_viewModel) = 0;
  v2 = OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendItem_stackItems;

  *(v1 + v2) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendItem_layout) = 0;

  type metadata accessor for LeagueStandingsLegendItem();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1E3F81D34(uint64_t a1, void *a2)
{
  if ((*(*a1 + 392))())
  {
    type metadata accessor for LeagueStandingsLegendItemLayout();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      if (a2 && (type metadata accessor for LeagueStandingsLegendItem(), (v6 = swift_dynamicCastClass()) != 0))
      {
        v7 = v6;
        v8 = a2;
      }

      else
      {
        v9 = objc_allocWithZone(type metadata accessor for LeagueStandingsLegendItem());

        v7 = sub_1E3F81BB8(v10, 0);
      }

      *&v7[OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendItem_layout] = v5;

      *&v7[OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendItem_viewModel] = a1;

      v11 = OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendItem_stackItems;
      swift_beginAccess();
      v81 = v11;
      v12 = *&v7[v11];
      v13 = *(v12 + 16);

      v14 = 0;
      v15 = 32;
      while (v13 != v14)
      {
        if (v14 >= *(v12 + 16))
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);

          __break(1u);
          return;
        }

        ++v14;
        [*(v12 + v15) removeFromSuperview];
        v15 += 16;
      }

      *&v7[v81] = MEMORY[0x1E69E7CC0];

      v17 = (*(*a1 + 488))(v16);
      if (v17)
      {
        v82 = v5;
        *&v83[0] = sub_1E3B892B8(v17);
        sub_1E3F8271C(v83);
        v78 = 0;

        v18 = *&v83[0];
        v19 = sub_1E32AE9B0(*&v83[0]);
        v20 = 0;
        v21 = v18 & 0xC000000000000001;
        while (v19 != v20)
        {
          if (v21)
          {
            v22 = MEMORY[0x1E6911E60](v20, v18);
          }

          else
          {
            if (v20 >= *(v18 + 16))
            {
              goto LABEL_42;
            }

            v22 = *(v18 + 8 * v20 + 32);
          }

          if (__OFADD__(v20, 1))
          {
            goto LABEL_41;
          }

          if (sub_1E373F6E0(*(v22 + 98), 39, v23, v24, v25, v26))
          {
            v27 = v19;
            type metadata accessor for LeagueStandingsLegendIndicatorView();
            v28 = sub_1E3D21A5C(v22);
            v29 = *v82;
            if (v28)
            {
              v30 = (*(v29 + 1760))();
            }

            else
            {
              v30 = (*(v29 + 1736))();
            }

            v50 = v30;

            v51 = sub_1E3D20E14(v22, 0, v50);

            if (v51)
            {
              OUTLINED_FUNCTION_2_226(v52, v53, v54, v55, v56, v57, v58, v59, v75, v78);
              v60 = v51;

              sub_1E3F83324();
              v61 = OUTLINED_FUNCTION_1_265();
              OUTLINED_FUNCTION_0_303(v61, v62, v63, v64, v65, v66, v67, v68, v77, v80);
              LODWORD(v69) = 1144750080;
              [v60 setContentHuggingPriority:0 forAxis:v69];
              LODWORD(v70) = 1144750080;
              [v60 setContentCompressionResistancePriority:0 forAxis:v70];
            }

            else
            {
            }

            v19 = v27;
            v21 = v18 & 0xC000000000000001;
          }

          else
          {
            type metadata accessor for UIFactory();
            v31 = sub_1E373C4DC();
            memset(v83, 0, sizeof(v83));
            v84 = 0;
            v32 = sub_1E393D92C(v22, 0, v83, 0, v31);
            sub_1E373C624(v83);
            if (v32)
            {
              v33 = [v32 setIsAccessibilityElement_];
              OUTLINED_FUNCTION_2_226(v33, v34, v35, v36, v37, v38, v39, v40, v75, v78);

              v41 = v32;
              sub_1E3F83324();
              v42 = OUTLINED_FUNCTION_1_265();
              OUTLINED_FUNCTION_0_303(v42, v43, v44, v45, v46, v47, v48, v49, v76, v79);
            }
          }

          ++v20;
        }
      }

      else
      {
        v78 = 0;
      }

      v71 = *&v7[v81];
      v72 = *(v71 + 16);

      v73 = 0;
      v74 = 32;
      while (v72 != v73)
      {
        if (v73 >= *(v71 + 16))
        {
          goto LABEL_40;
        }

        ++v73;
        [v7 addSubview_];
        v74 += 16;
      }
    }

    else
    {
    }
  }
}

void sub_1E3F82274(char a1, double a2, double a3)
{
  v4 = v3;
  v5 = *&v3[OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendItem_layout];
  if (v5)
  {
    v45.receiver = v4;
    v45.super_class = type metadata accessor for LeagueStandingsLegendItem();

    objc_msgSendSuper2(&v45, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
    v9 = OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendItem_stackItems;
    swift_beginAccess();
    v10 = *(*&v4[v9] + 16);
    if (v10)
    {
      v11 =  + 40;
      v12 = MEMORY[0x1E69E7CC0];
      v13 = a2;
      do
      {
        v14 = *(*v11 + 98);
        v15 = *(v11 - 8);

        if (sub_1E38504C4(v14))
        {
          [v15 vui:v13 sizeThatFits:0.0];
        }

        else
        {
          [v15 vui:a1 & 1 layoutSubviews:a2 computationOnly:a3];
        }

        v18 = v16;
        v19 = v17;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1E385A4A0(0, v12[2] + 1, 1, v12);
        }

        v21 = v12[2];
        v20 = v12[3];
        if (v21 >= v20 >> 1)
        {
          v12 = sub_1E385A4A0((v20 > 1), v21 + 1, 1, v12);
        }

        v12[2] = v21 + 1;
        v22 = &v12[3 * v21];
        *(v22 + 4) = v15;
        v22[5] = v18;
        *(v22 + 6) = v19;
        if (v13 - v18 < 0.0)
        {
          v13 = 0.0;
        }

        else
        {
          v13 = v13 - v18;
        }

        v11 += 16;
        --v10;
      }

      while (v10);
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

    v23 = *(*v5 + 1152);

    v23(v24);
    v25 = v12[2];
    v26 = 0.0;
    v27 = 5;
    for (i = v25; i; --i)
    {
      v26 = v26 + *&v12[v27];
      v27 += 3;
    }

    v29 = 0.0;
    v30 = 6;
    v31 = v12[2];
    if (v25)
    {
      do
      {
        if (v29 <= *&v12[v30])
        {
          v29 = *&v12[v30];
        }

        v30 += 3;
        --v31;
      }

      while (v31);
    }

    if (!v25 || (a1 & 1) != 0)
    {
LABEL_34:
    }

    else
    {
      v32 = 0;
      v33 = v25 - 1;
      v34 = (v12 + 6);
      v35 = 0.0;
      while (v32 < v25)
      {
        v37 = *(v34 - 1);
        v36 = *v34;
        v38 = (v29 - *v34) * 0.5;
        v39 = *(v34 - 2);
        v40 = [v39 setFrame_];
        v41 = v35 + v37;
        v42 = COERCE_DOUBLE((v23)(v40));
        v44 = v43;

        if (v44)
        {
          if (v33 == v32)
          {
            goto LABEL_34;
          }

          v35 = v41 + 0.0;
        }

        else
        {
          if (v33 == v32)
          {
            goto LABEL_34;
          }

          v35 = v41 + v42;
        }

        v25 = v12[2];
        v34 += 3;
        ++v32;
      }

      __break(1u);
    }
  }
}

id sub_1E3F82690()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LeagueStandingsLegendItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3F8271C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1E34AF5E0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1E3F82798(v6);
  return sub_1E4207554();
}

uint64_t sub_1E3F82798(uint64_t *a1)
{
  v3 = a1[1];
  result = sub_1E4207914();
  if (result < v3)
  {
    v5 = result;
    v6 = sub_1E39623D8(v3 / 2);
    v10[0] = v7;
    v10[1] = v3 / 2;
    result = sub_1E3F829CC(v10, v11, a1, v5, v8, v9);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    return sub_1E3F82878(0, v3, 1, a1);
  }

  return result;
}

uint64_t sub_1E3F82878(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_1E3742F1C(result, a2, a3);
    v7 = v5 - v4;
    v8 = (v6 + 8 * v4);
    while (2)
    {
      v16 = v7;
      v17 = v4;
      v15 = v8;
      v9 = v7;
      do
      {
        sub_1E4206254();
        sub_1E4206254();
        if (v20 == v18 && v21 == v19)
        {
        }

        else
        {
          v11 = sub_1E42079A4();

          if ((v11 & 1) == 0)
          {
            break;
          }
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v12 = *v8;
        *v8 = *(v8 - 1);
        *--v8 = v12;
      }

      while (!__CFADD__(v9++, 1));
      v4 = v17 + 1;
      v7 = v16 - 1;
      v8 = v15 + 1;
      if (v17 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1E3F829CC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v85 = result;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        result = sub_1E373F6E0(*(*(*a3 + 8 * v10) + 98), 39, a3, a4, a5, a6);
        v11 = result;
        for (i = v9 + 2; i < v6; ++i)
        {
          sub_1E3742F1C(result, a2, a3);
          sub_1E4206254();
          sub_1E4206254();
          if (v94 == v92 && v95 == v93)
          {

            if ((v11 & 1) == 0)
            {
              v10 = i;
              goto LABEL_28;
            }
          }

          else
          {
            v14 = sub_1E42079A4();

            if ((v11 ^ v14))
            {
              v10 = i;
              goto LABEL_15;
            }
          }
        }

        v10 = v6;
LABEL_15:
        if (v11)
        {
          if (v10 < v9)
          {
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
            return result;
          }

          if (v9 < v10)
          {
            if (v6 >= i)
            {
              v15 = i;
            }

            else
            {
              v15 = v6;
            }

            v16 = 8 * v15 - 8;
            v17 = 8 * v9;
            v18 = v10;
            v19 = v9;
            do
            {
              if (v19 != --v18)
              {
                v20 = *a3;
                if (!*a3)
                {
                  goto LABEL_142;
                }

                v21 = *(v20 + v17);
                *(v20 + v17) = *(v20 + v16);
                *(v20 + v16) = v21;
              }

              ++v19;
              v16 -= 8;
              v17 += 8;
            }

            while (v19 < v18);
          }
        }
      }

LABEL_28:
      v22 = a3[1];
      if (v10 < v22)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_134;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_135;
          }

          if (v9 + a4 >= v22)
          {
            v23 = a3[1];
          }

          else
          {
            v23 = v9 + a4;
          }

          if (v23 < v9)
          {
LABEL_136:
            __break(1u);
            goto LABEL_137;
          }

          if (v10 != v23)
          {
            v82 = v8;
            v24 = *a3;
            sub_1E3742F1C(result, a2, a3);
            v84 = v9;
            v25 = v9 - v10;
            v26 = (v24 + 8 * v10);
            v86 = v23;
            do
            {
              v88 = v10;
              v27 = v26;
              v28 = v25;
              do
              {
                sub_1E4206254();
                sub_1E4206254();
                if (v94 == v92 && v95 == v93)
                {
                }

                else
                {
                  v30 = sub_1E42079A4();

                  if ((v30 & 1) == 0)
                  {
                    break;
                  }
                }

                if (!v24)
                {
                  goto LABEL_139;
                }

                v31 = *v27;
                *v27 = *(v27 - 1);
                *--v27 = v31;
              }

              while (!__CFADD__(v28++, 1));
              ++v10;
              --v25;
              ++v26;
            }

            while ((v88 + 1) != v86);
            v10 = v86;
            v8 = v82;
            v9 = v84;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_133;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E37FFF70(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v34 = *(v8 + 16);
      v33 = *(v8 + 24);
      v35 = v34 + 1;
      v89 = v10;
      if (v34 >= v33 >> 1)
      {
        result = sub_1E37FFF70((v33 > 1), v34 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v35;
      v36 = v8 + 32;
      v37 = (v8 + 32 + 16 * v34);
      *v37 = v9;
      v37[1] = v10;
      v87 = *v85;
      if (!*v85)
      {
        goto LABEL_143;
      }

      if (v34)
      {
        while (1)
        {
          v38 = v35 - 1;
          v39 = (v36 + 16 * (v35 - 1));
          v40 = (v8 + 16 * v35);
          if (v35 >= 4)
          {
            break;
          }

          if (v35 == 3)
          {
            v41 = *(v8 + 32);
            v42 = *(v8 + 40);
            v51 = __OFSUB__(v42, v41);
            v43 = v42 - v41;
            v44 = v51;
LABEL_71:
            if (v44)
            {
              goto LABEL_120;
            }

            v56 = *v40;
            v55 = v40[1];
            v57 = __OFSUB__(v55, v56);
            v58 = v55 - v56;
            v59 = v57;
            if (v57)
            {
              goto LABEL_123;
            }

            v60 = v39[1];
            v61 = v60 - *v39;
            if (__OFSUB__(v60, *v39))
            {
              goto LABEL_126;
            }

            if (__OFADD__(v58, v61))
            {
              goto LABEL_128;
            }

            if (v58 + v61 >= v43)
            {
              if (v43 < v61)
              {
                v38 = v35 - 2;
              }

              goto LABEL_93;
            }

            goto LABEL_86;
          }

          if (v35 < 2)
          {
            goto LABEL_122;
          }

          v63 = *v40;
          v62 = v40[1];
          v51 = __OFSUB__(v62, v63);
          v58 = v62 - v63;
          v59 = v51;
LABEL_86:
          if (v59)
          {
            goto LABEL_125;
          }

          v65 = *v39;
          v64 = v39[1];
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_127;
          }

          if (v66 < v58)
          {
            goto LABEL_100;
          }

LABEL_93:
          if (v38 - 1 >= v35)
          {
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
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
            goto LABEL_136;
          }

          if (!*a3)
          {
            goto LABEL_140;
          }

          v70 = (v36 + 16 * (v38 - 1));
          v71 = *v70;
          v72 = (v36 + 16 * v38);
          v73 = v72[1];
          sub_1E3F83064((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v87);
          if (v91)
          {
          }

          if (v73 < v71)
          {
            goto LABEL_115;
          }

          v10 = v8;
          v8 = *(v8 + 16);
          if (v38 > v8)
          {
            goto LABEL_116;
          }

          *v70 = v71;
          v70[1] = v73;
          if (v38 >= v8)
          {
            goto LABEL_117;
          }

          v35 = v8 - 1;
          result = memmove((v36 + 16 * v38), v72 + 2, 16 * (v8 - 1 - v38));
          *(v10 + 16) = v8 - 1;
          v74 = v8 > 2;
          v8 = v10;
          if (!v74)
          {
            goto LABEL_100;
          }
        }

        v45 = v36 + 16 * v35;
        v46 = *(v45 - 64);
        v47 = *(v45 - 56);
        v51 = __OFSUB__(v47, v46);
        v48 = v47 - v46;
        if (v51)
        {
          goto LABEL_118;
        }

        v50 = *(v45 - 48);
        v49 = *(v45 - 40);
        v51 = __OFSUB__(v49, v50);
        v43 = v49 - v50;
        v44 = v51;
        if (v51)
        {
          goto LABEL_119;
        }

        v52 = v40[1];
        v53 = v52 - *v40;
        if (__OFSUB__(v52, *v40))
        {
          goto LABEL_121;
        }

        v51 = __OFADD__(v43, v53);
        v54 = v43 + v53;
        if (v51)
        {
          goto LABEL_124;
        }

        if (v54 >= v48)
        {
          v68 = *v39;
          v67 = v39[1];
          v51 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v51)
          {
            goto LABEL_132;
          }

          if (v43 < v69)
          {
            v38 = v35 - 2;
          }

          goto LABEL_93;
        }

        goto LABEL_71;
      }

LABEL_100:
      v7 = v89;
      v6 = a3[1];
      if (v89 >= v6)
      {
        goto LABEL_103;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_103:
  v10 = *v85;
  if (!*v85)
  {
    goto LABEL_144;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_137:
    result = sub_1E37FFF5C(v8);
    v8 = result;
  }

  v75 = (v8 + 16);
  v76 = *(v8 + 16);
  while (v76 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_141;
    }

    v77 = v8;
    v78 = (v8 + 16 * v76);
    v8 = *v78;
    v79 = &v75[2 * v76];
    v80 = v79[1];
    sub_1E3F83064((*a3 + 8 * *v78), (*a3 + 8 * *v79), (*a3 + 8 * v80), v10);
    if (v91)
    {
      break;
    }

    if (v80 < v8)
    {
      goto LABEL_129;
    }

    if (v76 - 2 >= *v75)
    {
      goto LABEL_130;
    }

    *v78 = v8;
    v78[1] = v80;
    v81 = *v75 - v76;
    if (*v75 < v76)
    {
      goto LABEL_131;
    }

    v76 = *v75 - 1;
    result = memmove(v79, v79 + 2, 16 * v81);
    *v75 = v76;
    v8 = v77;
  }
}

uint64_t sub_1E3F83064(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 8;
  v9 = (a3 - __dst) / 8;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[8 * v8] <= a4)
    {
      __src = memmove(a4, __src, 8 * v8);
    }

    v11 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v17 = v7;
        goto LABEL_48;
      }

      sub_1E3742F1C(__src, __dst, a3);
      sub_1E4206254();
      sub_1E4206254();
      v13 = v26 == v24 && v27 == v25;
      if (v13)
      {
        break;
      }

      v14 = sub_1E42079A4();

      if (v14)
      {
        goto LABEL_21;
      }

      v15 = v4;
      v13 = v7 == v4;
      v4 += 8;
      if (!v13)
      {
        goto LABEL_22;
      }

LABEL_23:
      v7 += 8;
    }

LABEL_21:
    v15 = v6;
    v13 = v7 == v6;
    v6 += 8;
    if (v13)
    {
      goto LABEL_23;
    }

LABEL_22:
    *v7 = *v15;
    goto LABEL_23;
  }

  if (a4 != __dst || &__dst[8 * v9] <= a4)
  {
    __src = memmove(a4, __dst, 8 * v9);
  }

  v11 = &v4[8 * v9];
LABEL_30:
  v17 = v6;
  for (v5 -= 8; v11 > v4 && v6 > v7; v5 -= 8)
  {
    sub_1E3742F1C(__src, __dst, a3);
    sub_1E4206254();
    sub_1E4206254();
    if (v26 == v24 && v27 == v25)
    {

LABEL_45:
      v6 -= 8;
      if (v5 + 8 != v17)
      {
        *v5 = *v6;
      }

      goto LABEL_30;
    }

    v20 = sub_1E42079A4();

    if (v20)
    {
      goto LABEL_45;
    }

    if (v11 != v5 + 8)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 8;
  }

LABEL_48:
  v21 = (v11 - v4) / 8;
  if (v17 != v4 || v17 >= &v4[8 * v21])
  {
    memmove(v17, v4, 8 * v21);
  }

  return 1;
}

void *sub_1E3F83324()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1E3DA7FD4(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

void *sub_1E3F83370(void *result)
{
  v2 = (*v1)[3];
  if (result + 1 > (v2 >> 1))
  {
    result = sub_1E3DA7FD4((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1E3F83404(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v20 - v11;
  v13 = a1;
  v14 = sub_1E4205334();
  v20[4] = &type metadata for SportsRunningClockLocalization;
  v20[5] = sub_1E376DC98(v14, v15, v16);

  sub_1E4205394();
  v17 = sub_1E42056A4();
  sub_1E4205044();

  (*(v6 + 104))(v9, *MEMORY[0x1E69D3B78], v4);
  LOBYTE(v17) = sub_1E3823168();
  v18 = *(v6 + 8);
  v18(v9, v4);
  v18(v12, v4);
  if ((v17 & 1) == 0)
  {
  }

  sub_1E4205364();

  return v14;
}

uint64_t sub_1E3F835FC()
{
  v0 = sub_1E42053E4();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

id SportsRunningClockLocalization.hasSeparatorGlyph.getter()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    sub_1E3797E30(0xD000000000000021, 0x80000001E428B0B0, result);

    OUTLINED_FUNCTION_9_169();
    sub_1E32822E0(v2, v3, v4);
    v5 = sub_1E4207254();

    return (v5 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SportsRunningClockLocalization.localizedString(key:)(uint64_t a1)
{
  v3 = sub_1E4205344();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v135[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v3, v7);
  LODWORD(result) = (*(v5 + 88))(v9, v3);
  if (result != *MEMORY[0x1E69D3A70])
  {
    if (result == *MEMORY[0x1E69D3A68])
    {
      v27 = OUTLINED_FUNCTION_7_203();
      v28(v27);
      v3 = *v9;
      v9 = *(v9 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_5_212(inited, xmmword_1E4297BE0);
      v134 = sub_1E4205CB4();
      v30 = [objc_opt_self() sharedInstance];
      if (v30)
      {
        v31 = v30;
        OUTLINED_FUNCTION_7_13();
        sub_1E3797E30(v32 + 20, v33 | 0x8000000000000000, v31);
        OUTLINED_FUNCTION_49_4();

        if (a1)
        {
          v34 = OUTLINED_FUNCTION_1_266();
          if (v3)
          {
            while (1)
            {
              OUTLINED_FUNCTION_0_304(0, v34, v35, v36);
              OUTLINED_FUNCTION_14_163();

              v37 = OUTLINED_FUNCTION_3_229();
              OUTLINED_FUNCTION_6_198(v37, v38, v39, v40, v41, v42, MEMORY[0x1E69E6158], v43, v134, v135[0]);
              OUTLINED_FUNCTION_8_180();
            }
          }

          while (v1 > 1)
          {
            OUTLINED_FUNCTION_13_165();
          }

          goto LABEL_46;
        }

LABEL_47:

        return 0;
      }

      __break(1u);
LABEL_103:
      (*(v5 + 8))(v9, v3);
      return 0;
    }

    if (result == *MEMORY[0x1E69D3A90])
    {
      v44 = OUTLINED_FUNCTION_7_203();
      v45(v44);
      v46 = *v9;
      v9 = *(v9 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
      v47 = swift_initStackObject();
      OUTLINED_FUNCTION_5_212(v47, xmmword_1E4297BE0);
      v134 = sub_1E4205CB4();
      result = [objc_opt_self() sharedInstance];
      if (result)
      {
        v48 = result;
        OUTLINED_FUNCTION_7_13();
        sub_1E3797E30(v49 + 15, v50 | 0x8000000000000000, v48);
        OUTLINED_FUNCTION_49_4();

        if (a1)
        {
          v51 = OUTLINED_FUNCTION_1_266();
          if (v46)
          {
            while (1)
            {
              OUTLINED_FUNCTION_0_304(0, v51, v52, v53);
              OUTLINED_FUNCTION_14_163();

              v54 = OUTLINED_FUNCTION_3_229();
              OUTLINED_FUNCTION_6_198(v54, v55, v56, v57, v58, v59, MEMORY[0x1E69E6158], v60, v134, v135[0]);
              OUTLINED_FUNCTION_8_180();
            }
          }

          while (v1 > 1)
          {
            OUTLINED_FUNCTION_13_165();
          }

          goto LABEL_46;
        }

        goto LABEL_47;
      }

      __break(1u);
      goto LABEL_105;
    }

    if (result == *MEMORY[0x1E69D3A80])
    {
      v61 = OUTLINED_FUNCTION_7_203();
      v62(v61);
      v63 = *v9;
      v64 = *(v9 + 8);
      v9 = TVAppFeature.isEnabled.getter(10, v65, v66);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
      v67 = swift_initStackObject();
      *(v67 + 16) = xmmword_1E4297BE0;
      *(v67 + 32) = 0x4065726F63734040;
      *(v67 + 40) = 0xE900000000000040;
      *(v67 + 48) = v63;
      *(v67 + 56) = v64;
      v134 = sub_1E4205CB4();
      result = [objc_opt_self() sharedInstance];
      if (result)
      {
        v68 = result;
        v69 = "TV.Scores.Shootout.PENS";
        if (v9)
        {
          v69 = "TV.Scores.Shootout.Pens";
        }

        v70 = v69 - 32;
        sub_1E3797E30(0xD000000000000017, (v69 - 32) | 0x8000000000000000, result);
        OUTLINED_FUNCTION_49_4();

        if (v64)
        {
          v71 = OUTLINED_FUNCTION_1_266();
          if (v70)
          {
            while (1)
            {
              OUTLINED_FUNCTION_0_304(0, v71, v72, v73);
              OUTLINED_FUNCTION_14_163();

              v74 = OUTLINED_FUNCTION_3_229();
              OUTLINED_FUNCTION_6_198(v74, v75, v76, v77, v78, v79, MEMORY[0x1E69E6158], v80, v134, v135[0]);
              OUTLINED_FUNCTION_8_180();
            }
          }

          while (v1 > 1)
          {
            OUTLINED_FUNCTION_13_165();
          }

          goto LABEL_46;
        }

        goto LABEL_47;
      }

LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    if (result == *MEMORY[0x1E69D3AD0])
    {
      v81 = OUTLINED_FUNCTION_7_203();
      v82(v81);
      OUTLINED_FUNCTION_7_13();
      v86 = v85 - 1;
LABEL_35:
      sub_1E3F844B8(v83, v86, v84 | 0x8000000000000000);
      OUTLINED_FUNCTION_49_4();
      return v9;
    }

    if (result == *MEMORY[0x1E69D3A98])
    {
      v87 = OUTLINED_FUNCTION_7_203();
      v88(v87);
      OUTLINED_FUNCTION_7_13();
      v86 = v89 + 18;
      goto LABEL_35;
    }

    if (result == *MEMORY[0x1E69D3A60])
    {
      v90 = OUTLINED_FUNCTION_7_203();
      v91(v90);
      v92 = *v9;
      v93 = *(v9 + 8);
      v94 = *(v9 + 16);
      v95 = *(v9 + 24);
      v9 = objc_opt_self();
      result = [v9 sharedInstance];
      if (result)
      {
        v96 = result;
        OUTLINED_FUNCTION_7_13();
        v99 = sub_1E3797E30(v97 + 15, v98 | 0x8000000000000000, v96);
        v101 = v100;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
        v102 = swift_initStackObject();
        *(v102 + 16) = xmmword_1E4297BD0;
        *(v102 + 32) = 0x616E6964726F4040;
        *(v102 + 40) = 0xEB0000000040406CLL;
        *(v102 + 48) = v92;
        *(v102 + 56) = v93;
        OUTLINED_FUNCTION_9_169();
        v103[8] = v104;
        v103[9] = v105;
        v103[10] = 47042;
        v103[11] = 0xA200000000000000;
        v103[12] = 0x406B636F6C634040;
        v103[13] = 0xE900000000000040;
        v103[14] = v94;
        v103[15] = v95;
        v134 = sub_1E4205CB4();
        result = [v9 sharedInstance];
        if (result)
        {
          v106 = result;
          if (v101)
          {
            v107 = v99;
          }

          else
          {
            v101 = 0xE000000000000000;
            v107 = 0;
          }

          sub_1E3797E30(v107, v101, v106);
          OUTLINED_FUNCTION_49_4();

          v108 = OUTLINED_FUNCTION_1_266();
          if (v99)
          {
            while (1)
            {
              OUTLINED_FUNCTION_0_304(0, v108, v109, v110);
              OUTLINED_FUNCTION_14_163();

              v111 = OUTLINED_FUNCTION_3_229();
              OUTLINED_FUNCTION_6_198(v111, v112, v113, v114, v115, v116, MEMORY[0x1E69E6158], v117, v134, v135[0]);
              OUTLINED_FUNCTION_8_180();
            }
          }

          while (v93 > 1)
          {
            OUTLINED_FUNCTION_13_165();
          }

          goto LABEL_46;
        }

        goto LABEL_107;
      }

LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    if (result == *MEMORY[0x1E69D3AA0])
    {
      result = [objc_opt_self() sharedInstance];
      if (!result)
      {
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      goto LABEL_51;
    }

    if (result == *MEMORY[0x1E69D3AE0])
    {
      result = [objc_opt_self() sharedInstance];
      if (!result)
      {
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      v9 = result;
      v122 = "TV.Scores.Halftime";
    }

    else
    {
      if (result != *MEMORY[0x1E69D3AD8])
      {
        if (result == *MEMORY[0x1E69D3AB8])
        {
          result = [objc_opt_self() sharedInstance];
          if (!result)
          {
LABEL_111:
            __break(1u);
            goto LABEL_112;
          }

          v120 = OUTLINED_FUNCTION_11_169();
          v121 = v126 | 0xEF6C616E69460000;
        }

        else
        {
          if (result != *MEMORY[0x1E69D3AB0])
          {
            if (result != *MEMORY[0x1E69D3AE8])
            {
              if (result == *MEMORY[0x1E69D3A78])
              {
                result = [objc_opt_self() sharedInstance];
                if (!result)
                {
LABEL_114:
                  __break(1u);
                  goto LABEL_115;
                }

                v9 = result;
                OUTLINED_FUNCTION_7_13();
                v120 = v128 + 6;
              }

              else if (result == *MEMORY[0x1E69D3A88])
              {
                result = [objc_opt_self() sharedInstance];
                if (!result)
                {
LABEL_115:
                  __break(1u);
                  goto LABEL_116;
                }

                v9 = result;
                OUTLINED_FUNCTION_7_13();
                v120 = v129 + 7;
              }

              else if (result == *MEMORY[0x1E69D3AF0])
              {
                result = [objc_opt_self() sharedInstance];
                if (!result)
                {
LABEL_116:
                  __break(1u);
                  goto LABEL_117;
                }

                v9 = result;
                OUTLINED_FUNCTION_7_13();
                v120 = v130 | 1;
              }

              else
              {
                if (result != *MEMORY[0x1E69D3AA8])
                {
                  if (result == *MEMORY[0x1E69D3AF8])
                  {
                    result = [objc_opt_self() sharedInstance];
                    if (result)
                    {
                      v9 = result;
LABEL_87:
                      OUTLINED_FUNCTION_7_13();
                      v120 = v132 + 11;
                      goto LABEL_52;
                    }

                    goto LABEL_118;
                  }

                  if (result == *MEMORY[0x1E69D3AC8])
                  {
                    result = [objc_opt_self() sharedInstance];
                    if (!result)
                    {
LABEL_119:
                      __break(1u);
                      goto LABEL_120;
                    }

                    v9 = result;
                    v133 = "TV.Sports.GameState.Forfeit";
                  }

                  else
                  {
                    if (result == *MEMORY[0x1E69D3B00])
                    {
                      result = [objc_opt_self() sharedInstance];
                      if (result)
                      {
LABEL_51:
                        v9 = result;
                        OUTLINED_FUNCTION_7_13();
                        v120 = v119 + 10;
                        goto LABEL_52;
                      }

                      __break(1u);
                    }

                    if (result != *MEMORY[0x1E69D3AC0])
                    {
                      goto LABEL_99;
                    }

                    result = [objc_opt_self() sharedInstance];
                    if (!result)
                    {
LABEL_120:
                      __break(1u);
                      goto LABEL_121;
                    }

                    v9 = result;
                    v133 = "TV.Sports.GameState.Delayed";
                  }

                  v118 = v133 - 32;
                  v120 = 0xD00000000000001BLL;
                  goto LABEL_52;
                }

                result = [objc_opt_self() sharedInstance];
                if (!result)
                {
LABEL_117:
                  __break(1u);
LABEL_118:
                  __break(1u);
                  goto LABEL_119;
                }

                v9 = result;
                OUTLINED_FUNCTION_7_13();
                v120 = v131 | 0xC;
              }

LABEL_52:
              v121 = v118 | 0x8000000000000000;
              goto LABEL_60;
            }

            result = [objc_opt_self() sharedInstance];
            if (!result)
            {
LABEL_113:
              __break(1u);
              goto LABEL_114;
            }

            v9 = result;
            v122 = "TV.Scores.Overtime";
            goto LABEL_59;
          }

          result = [objc_opt_self() sharedInstance];
          if (!result)
          {
LABEL_112:
            __break(1u);
            goto LABEL_113;
          }

          v120 = OUTLINED_FUNCTION_11_169();
          v121 = v127 | 0xED0000646E450000;
        }

LABEL_60:
        v123 = sub_1E3797E30(v120, v121, v9);
        v125 = v124;

        if (v125)
        {
          return v123;
        }

        else
        {
          return 0;
        }
      }

      result = [objc_opt_self() sharedInstance];
      if (!result)
      {
LABEL_110:
        __break(1u);
        goto LABEL_111;
      }

      v9 = result;
      v122 = "TV.Scores.Fulltime";
    }

LABEL_59:
    v121 = (v122 - 32) | 0x8000000000000000;
    v120 = 0xD000000000000012;
    goto LABEL_60;
  }

  v11 = OUTLINED_FUNCTION_7_203();
  v12(v11);
  v3 = *v9;
  v9 = *(v9 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
  v13 = swift_initStackObject();
  OUTLINED_FUNCTION_5_212(v13, xmmword_1E4297BE0);
  v134 = sub_1E4205CB4();
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v14 = result;
    OUTLINED_FUNCTION_7_13();
    sub_1E3797E30(v15 + 17, v16 | 0x8000000000000000, v14);
    OUTLINED_FUNCTION_49_4();

    if (a1)
    {
      v17 = OUTLINED_FUNCTION_1_266();
      if (v3)
      {
        while (1)
        {
          OUTLINED_FUNCTION_0_304(0, v17, v18, v19);
          OUTLINED_FUNCTION_14_163();

          v20 = OUTLINED_FUNCTION_3_229();
          OUTLINED_FUNCTION_6_198(v20, v21, v22, v23, v24, v25, MEMORY[0x1E69E6158], v26, v134, v135[0]);
          OUTLINED_FUNCTION_8_180();
        }
      }

      while (v1 > 1)
      {
        OUTLINED_FUNCTION_13_165();
      }

LABEL_46:

      return v9;
    }

    goto LABEL_47;
  }

  __break(1u);
LABEL_99:
  if (result != *MEMORY[0x1E69D3B08])
  {
    goto LABEL_103;
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v9 = result;
    goto LABEL_87;
  }

LABEL_121:
  __break(1u);
  return result;
}

id sub_1E3F844B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_10_151(a1, a2, a3);
      v3 = 0x74737269462ELL;
      goto LABEL_33;
    case 2:
      OUTLINED_FUNCTION_10_151(a1, a2, a3);
      v3 = 0x646E6F6365532ELL;
      goto LABEL_19;
    case 3:
      OUTLINED_FUNCTION_10_151(a1, a2, a3);
      v3 = 0x64726968542ELL;
      goto LABEL_33;
    case 4:
      OUTLINED_FUNCTION_10_151(a1, a2, a3);
      v10 = 0x7472756F462ELL;
      goto LABEL_17;
    case 5:
      OUTLINED_FUNCTION_10_151(a1, a2, a3);
      v8 = 1718175278;
      goto LABEL_32;
    case 6:
      OUTLINED_FUNCTION_10_151(a1, a2, a3);
      v8 = 2020168494;
      goto LABEL_32;
    case 7:
      OUTLINED_FUNCTION_10_151(a1, a2, a3);
      v7 = 0x6E657665532ELL;
      goto LABEL_26;
    case 8:
      OUTLINED_FUNCTION_10_151(a1, a2, a3);
      v10 = 0x74686769452ELL;
LABEL_17:
      v3 = v10 & 0xFFFFFFFFFFFFLL | 0x68000000000000;
LABEL_19:
      v5 = 0xE700000000000000;
      goto LABEL_47;
    case 9:
      OUTLINED_FUNCTION_10_151(a1, a2, a3);
      v8 = 1852395054;
      goto LABEL_32;
    case 10:
      OUTLINED_FUNCTION_10_151(a1, a2, a3);
      v8 = 1852134446;
LABEL_32:
      v3 = v8 & 0xFFFF0000FFFFFFFFLL | 0x687400000000;
LABEL_33:
      v5 = 0xE600000000000000;
      goto LABEL_47;
    case 11:
      OUTLINED_FUNCTION_10_151(a1, a2, a3);
      v3 = 0x746E6576656C452ELL;
      v5 = 0xE900000000000068;
      goto LABEL_47;
    case 12:
      OUTLINED_FUNCTION_10_151(a1, a2, a3);
      v7 = 0x666C6577542ELL;
LABEL_26:
      v3 = v7 & 0xFFFFFFFFFFFFLL | 0x6874000000000000;
      v5 = 0xE800000000000000;
      goto LABEL_47;
    case 13:
      OUTLINED_FUNCTION_10_151(a1, a2, a3);
      v3 = 0x656974726968542ELL;
      goto LABEL_29;
    case 14:
      OUTLINED_FUNCTION_10_151(a1, a2, a3);
      v11 = 0x7472756F462ELL;
      goto LABEL_28;
    case 15:
      OUTLINED_FUNCTION_10_151(a1, a2, a3);
      v6 = 1718175278;
      goto LABEL_14;
    case 16:
      OUTLINED_FUNCTION_10_151(a1, a2, a3);
      v6 = 2020168494;
LABEL_14:
      v3 = v6 | 0x6E65657400000000;
      goto LABEL_46;
    case 17:
      OUTLINED_FUNCTION_10_151(a1, a2, a3);
      v3 = 0x65746E657665532ELL;
      v5 = 0xEC00000068746E65;
      goto LABEL_47;
    case 18:
      OUTLINED_FUNCTION_10_151(a1, a2, a3);
      v11 = 0x74686769452ELL;
      goto LABEL_28;
    case 19:
      OUTLINED_FUNCTION_10_151(a1, a2, a3);
      v11 = 0x74656E694E2ELL;
LABEL_28:
      v3 = v11 & 0xFFFFFFFFFFFFLL | 0x6565000000000000;
LABEL_29:
      v5 = 0xEB0000000068746ELL;
      goto LABEL_47;
    case 20:
      OUTLINED_FUNCTION_10_151(a1, a2, a3);
      v15 = 0x746E6577542ELL;
      goto LABEL_45;
    case 21:
      OUTLINED_FUNCTION_10_151(a1, a2, a3);
      v3 = OUTLINED_FUNCTION_2_227();
      v12 = 0x7473726946;
      goto LABEL_42;
    case 22:
      OUTLINED_FUNCTION_10_151(a1, a2, a3);
      v3 = OUTLINED_FUNCTION_2_227();
      v13 = 0x646E6F636553;
      goto LABEL_39;
    case 23:
      OUTLINED_FUNCTION_10_151(a1, a2, a3);
      v3 = OUTLINED_FUNCTION_2_227();
      v12 = 0x6472696854;
      goto LABEL_42;
    case 24:
      OUTLINED_FUNCTION_10_151(a1, a2, a3);
      v3 = OUTLINED_FUNCTION_2_227();
      v4 = 1920298822;
      goto LABEL_38;
    case 25:
      OUTLINED_FUNCTION_10_151(a1, a2, a3);
      v3 = OUTLINED_FUNCTION_2_227();
      v9 = 1952868678;
      goto LABEL_41;
    case 26:
      OUTLINED_FUNCTION_10_151(a1, a2, a3);
      v3 = OUTLINED_FUNCTION_2_227();
      v9 = 1954048339;
      goto LABEL_41;
    case 27:
      OUTLINED_FUNCTION_10_151(a1, a2, a3);
      v3 = OUTLINED_FUNCTION_2_227();
      v5 = 0xEF68746E65766553;
      goto LABEL_47;
    case 28:
      OUTLINED_FUNCTION_10_151(a1, a2, a3);
      v3 = OUTLINED_FUNCTION_2_227();
      v4 = 1751607621;
LABEL_38:
      v13 = v4 & 0xFFFF0000FFFFFFFFLL | 0x687400000000;
LABEL_39:
      v5 = v13 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      goto LABEL_47;
    case 29:
      OUTLINED_FUNCTION_10_151(a1, a2, a3);
      v3 = OUTLINED_FUNCTION_2_227();
      v9 = 1953392974;
LABEL_41:
      v12 = v9 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
LABEL_42:
      v5 = v12 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      goto LABEL_47;
    case 30:
      OUTLINED_FUNCTION_10_151(a1, a2, a3);
      v15 = 0x74726968542ELL;
LABEL_45:
      v3 = v15 & 0xFFFFFFFFFFFFLL | 0x6569000000000000;
LABEL_46:
      v5 = 0xEA00000000006874;
LABEL_47:
      MEMORY[0x1E69109E0](v3, v5);
      v14 = v20;
      if (!v21)
      {
        return v14;
      }

      result = [objc_opt_self() sharedInstance];
      if (result)
      {
        v17 = result;
        v14 = sub_1E3797E30(v20, v21, result);
        v19 = v18;

        if (!v19)
        {
          return 0;
        }

        return v14;
      }

      else
      {
        __break(1u);
      }

      return result;
    default:
      return 0;
  }
}

uint64_t type metadata accessor for SportsRunningClockViewModel(uint64_t a1)
{
  result = qword_1EE294650;
  if (!qword_1EE294650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1E3F8494C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI12HintListCell_layout;
  OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1E3F849E4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI12HintListCell_shouldShowBottomSeparator;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3F84A18(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI12HintListCell_shouldShowBottomSeparator;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

id sub_1E3F84AA8()
{
  v1 = OBJC_IVAR____TtC8VideosUI12HintListCell____lazy_storage___accessoryImageView;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI12HintListCell____lazy_storage___accessoryImageView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI12HintListCell____lazy_storage___accessoryImageView];
  }

  else
  {
    v4 = v0;
    OUTLINED_FUNCTION_21();
    if ((*(v5 + 120))())
    {
      OUTLINED_FUNCTION_30();
      v7 = (*(v6 + 1728))();
    }

    else
    {
      v7 = 0;
    }

    v8 = [objc_allocWithZone(MEMORY[0x1E69DF740]) init];
    if (v7)
    {
      v9 = *(*v7 + 1944);

      v11 = v9(v10);
    }

    else
    {
      v11 = 0;
    }

    sub_1E3280A90(0, &qword_1EE23AE00, 0x1E69DCAB8);
    v12 = OUTLINED_FUNCTION_3_230();
    v14 = sub_1E3F84CDC(v12, v13, v11);
    [v8 setImage_];
    if (v7)
    {
      v15 = *(*v7 + 672);

      v17 = v15(v16);
    }

    else
    {
      v17 = 0;
    }

    [v8 _setTintColor_];

    v18 = [v4 vuiContentView];
    [v18 addSubview_];

    v19 = *&v4[v1];
    *&v4[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v20 = v2;
  return v3;
}

id sub_1E3F84CDC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_1E4205ED4();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() _systemImageNamed_withConfiguration_];

  return v5;
}

id sub_1E3F84D5C()
{
  v1 = OBJC_IVAR____TtC8VideosUI12HintListCell____lazy_storage___bottomSeparatorView;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI12HintListCell____lazy_storage___bottomSeparatorView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI12HintListCell____lazy_storage___bottomSeparatorView];
  }

  else
  {
    type metadata accessor for SeparatorView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = [v0 vuiContentView];
    [v5 addSubview_];

    v6 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1E3F84E08(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v56 = sub_1E41FFCB4();
  v4 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v54 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FBA0, &unk_1E42B49D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v54 - v11;
  OUTLINED_FUNCTION_21();
  v14 = *(v13 + 120);
  v57 = v2;
  if (v14())
  {
    OUTLINED_FUNCTION_30();
    v16 = (*(v15 + 1704))();
  }

  else
  {
    v16 = 0;
  }

  v17 = OUTLINED_FUNCTION_18();
  v18 = sub_1E3C287F4(v16, v17 & 1);

  if (v18)
  {
    v19 = [v18 string];
    v20 = sub_1E4205F14();
    v22 = v21;

    v54 = v20;
    v60 = v20;
    v61 = v22;
    v58 = a1;
    v59 = v55;
    v23 = sub_1E41FE6C4();
    v24 = __swift_storeEnumTagSinglePayload(v12, 1, 1, v23);
    sub_1E32822E0(v24, v25, v26);
    v27 = sub_1E4207234();
    v55 = v28;
    LOBYTE(v19) = v29;
    v30 = sub_1E3F863D8(v12);
    if (v19)
    {

      v31 = sub_1E324FBDC();
      v32 = v56;
      (*(v4 + 16))(v9, v31, v56);
      v33 = sub_1E41FFC94();
      v34 = sub_1E4206814();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1E323F000, v33, v34, "HintListCell: query does not exist in hint provided", v35, 2u);
        MEMORY[0x1E69143B0](v35, -1, -1);
      }

      (*(v4 + 8))(v9, v32);
      sub_1E3F85430(v18);
    }

    else
    {
      if ((v14)(v30) && (OUTLINED_FUNCTION_30(), (*(v41 + 1704))(), v42 = OUTLINED_FUNCTION_30_6(), v43 = (*(*v4 + 864))(v42), , v43))
      {
        v44 = v27;
      }

      else
      {
        v44 = v27;
        v43 = *sub_1E3E5FD88();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35760, &qword_1E42E0F60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;
      v46 = *MEMORY[0x1E69DB650];
      *(inited + 32) = *MEMORY[0x1E69DB650];
      *(inited + 40) = v43;
      type metadata accessor for Key(0);
      sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
      sub_1E3B9794C(&qword_1EE23B100, &unk_1E429A0E0);
      v47 = v46;
      v48 = v43;
      v49 = sub_1E4205CB4();
      v50 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
      sub_1E3C28388(v49);

      v51 = sub_1E4205C44();

      v60 = v44;
      v61 = v55;
      v58 = v54;
      v59 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D3B0, &qword_1E42E0F68);
      sub_1E3F86440();
      v52 = sub_1E4207044();
      [v50 addAttributes:v51 range:{v52, v53}];

      sub_1E3F85430(v50);
    }
  }

  else
  {
    v36 = sub_1E324FBDC();
    v37 = v56;
    (*(v4 + 16))(v6, v36, v56);
    v38 = sub_1E41FFC94();
    v39 = sub_1E4206814();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1E323F000, v38, v39, "HintListCell: no value provided in hint text view model, cannot get attributed string", v40, 2u);
      MEMORY[0x1E69143B0](v40, -1, -1);
    }

    (*(v4 + 8))(v6, v37);
  }
}

void sub_1E3F85430(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI12HintListCell_titleLabel;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  v16 = *&v1[OBJC_IVAR____TtC8VideosUI12HintListCell_titleLabel];
  v6 = v5();
  if (v6)
  {
    v7 = v6;
    sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
    v8 = *(*(*v7 + 1704))();
    v9 = (*(v8 + 2408))();

    v10 = *&v1[v4];
    v11 = v10;
    v12 = a1;
    v13 = sub_1E3889680(a1, v9, v10);
    v14 = *&v2[v4];
    *&v2[v4] = v13;
    v15 = v13;

    [v2 vui:v15 addSubview:v16 oldView:?];
  }
}

id sub_1E3F855D0()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI12HintListCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI12HintListCell_shouldShowBottomSeparator) = 1;
  OUTLINED_FUNCTION_9_66(&OBJC_IVAR____TtC8VideosUI12HintListCell_titleLabel);
  v6 = type metadata accessor for HintListCell();
  v1 = OUTLINED_FUNCTION_2_0();
  v4 = objc_msgSendSuper2(v2, v3, v1, v0, v6);
  [v4 setAutoresizingMask_];
  return v4;
}

void sub_1E3F85688()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI12HintListCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI12HintListCell_shouldShowBottomSeparator) = 1;
  OUTLINED_FUNCTION_9_66(&OBJC_IVAR____TtC8VideosUI12HintListCell_titleLabel);
  sub_1E42076B4();
  __break(1u);
}

double sub_1E3F85734(char a1, double a2, double a3)
{
  v5 = v3;
  v7 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 120);
  if (!v9() || (OUTLINED_FUNCTION_30(), (*(v10 + 176))(v64), v11 = *v64, v12 = *&v64[1], v13 = *&v64[2], v14 = *&v64[3], , (v65 & 1) != 0))
  {
    v11 = *MEMORY[0x1E69DDCE0];
    v12 = *(MEMORY[0x1E69DDCE0] + 8);
    v13 = *(MEMORY[0x1E69DDCE0] + 16);
    v14 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v15 = sub_1E3952BE0(v11, v12, v13, v14);
  v16 = sub_1E3F84AA8();
  [v16 vui:a2 sizeThatFits:a3];
  v60 = v17;
  v61 = v18;

  v19 = 0.0;
  if (v9())
  {
    OUTLINED_FUNCTION_30();
    (*(v20 + 1728))();
    v21 = OUTLINED_FUNCTION_30_6();
    (*(*v4 + 152))(&v66, v21);
  }

  if (v9())
  {
    OUTLINED_FUNCTION_30();
    (*(v22 + 1728))();
    v23 = OUTLINED_FUNCTION_30_6();
    (*(*v4 + 152))(v67, v23);
    v24 = *v67;
    v25 = *&v67[1];
    v26 = *&v67[2];
    v27 = *&v67[3];

    if ((v68 & 1) == 0)
    {
      v19 = sub_1E3952BE0(v24, v25, v26, v27);
    }
  }

  v28 = v9();
  v29 = 0.0;
  v30 = 0.0;
  if (v28)
  {
    OUTLINED_FUNCTION_30();
    (*(v31 + 1704))();
    v32 = OUTLINED_FUNCTION_30_6();
    (*(*v4 + 152))(v69, v32);

    v30 = *&v69[3];
    if (v70)
    {
      v30 = 0.0;
    }
  }

  v33 = OBJC_IVAR____TtC8VideosUI12HintListCell_titleLabel;
  v34 = *(v5 + OBJC_IVAR____TtC8VideosUI12HintListCell_titleLabel);
  if (v34)
  {
    v35 = a2 - v15 - (v60 + v19 + v30);
    v36 = v34;
    v37 = 0.0;
    if ((v9)([v36 sizeThatFits_]))
    {
      OUTLINED_FUNCTION_30();
      v39 = (*(v38 + 1704))();

      (*(*v39 + 152))(v71, v40);

      if (v72)
      {
        v37 = 0.0;
      }

      else
      {
        v37 = v71[0];
      }
    }

    if (v9())
    {
      OUTLINED_FUNCTION_30();
      v44 = (*(v43 + 1704))();

      (*(*v44 + 152))(v73, v45);

      if (v74)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = *&v73[2];
      }
    }

    if ((TVAppFeature.isEnabled.getter(10, v41, v42) & 1) == 0)
    {
      [v36 bottomMarginWithBaselineMargin_];
    }

    if ((TVAppFeature.isEnabled.getter(10, v46, v47) & 1) == 0)
    {
      sub_1E3C8B6B4(0, v37);
    }

    v76.origin.x = OUTLINED_FUNCTION_4_228();
    v76.size.width = v60;
    v76.size.height = v61;
    CGRectGetMinX(v76);
    v77.origin.x = OUTLINED_FUNCTION_4_228();
    v77.size.width = v60;
    v77.size.height = v61;
    CGRectGetWidth(v77);
    if (v9())
    {
      OUTLINED_FUNCTION_30();
      v49 = (*(v48 + 1728))();

      (*(*v49 + 152))(v75, v50);
    }

    else
    {
    }
  }

  if ((*((*v7 & *v5) + 0x90))())
  {
    v51 = sub_1E3F84D5C();
    (*((*v7 & *v51) + 0x70))();

    v52 = *(v5 + OBJC_IVAR____TtC8VideosUI12HintListCell____lazy_storage___bottomSeparatorView);
    v53 = *((*v7 & *v52) + 0x70);
    v54 = v52;
    v53();
  }

  if ((a1 & 1) == 0)
  {
    [v5 vuiIsRTL];
    v55 = *(v5 + OBJC_IVAR____TtC8VideosUI12HintListCell____lazy_storage___accessoryImageView);
    [v5 vuiBounds];
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_4_228();
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    [v55 setFrame_];

    v56 = *(v5 + v33);
    if (v56)
    {
      v57 = v56;
      [v5 vuiBounds];
      OUTLINED_FUNCTION_2_6();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      [v57 setFrame_];
    }

    v58 = sub_1E3F84D5C();
    [v5 vuiBounds];
    OUTLINED_FUNCTION_2_6();
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    [v58 setFrame_];
  }

  return a2;
}

void sub_1E3F85F10(uint64_t a1)
{
  v2 = a1;
  v8 = type metadata accessor for HintListCell();
  v3 = OUTLINED_FUNCTION_6_12();
  objc_msgSendSuper2(v4, v5, v3, v1, v8);
  v6 = OUTLINED_FUNCTION_6_12();
  sub_1E3F85734(v2, v6, v7);
}

id sub_1E3F85FCC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HintListCell();
  objc_msgSendSuper2(&v3, sel_prepareForReuse);
  if ([v1 vui_highlighted])
  {
    [v1 vui:0 setHighlighted:?];
  }

  result = [v1 isSelected];
  if (result)
  {
    return [v1 setSelected:0 animated:1];
  }

  return result;
}

void sub_1E3F8609C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for HintListCell();
  objc_msgSendSuper2(&v12, sel_vui_setHighlighted_, v3 & 1);
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 120);
  if (v5())
  {
    OUTLINED_FUNCTION_30();
    v7 = (*(v6 + 744))();

    if (v7)
    {
      v9 = (v5)(v8);
      if (v9)
      {
        v10 = (*(*v9 + 864))();

        if (v10)
        {
          if (v3)
          {
            v11 = v10;
            [v2 setBackgroundColor_];
          }

          else
          {
            [v2 setBackgroundColor_];
            v11 = v7;
            v7 = v10;
          }
        }
      }
    }
  }
}

id sub_1E3F8625C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HintListCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_1E3F862F8@<X0>(void *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  [v6 vui:a2 sizeThatFits:1.79769313e308];
  sub_1E41A300C(v16);
  v12 = OUTLINED_FUNCTION_4_228();
  sub_1E41A2FE8(v13, v12, v14);
  *&v16[6] = a3;
  *&v16[7] = a4;
  *&v16[8] = a5;
  *&v16[9] = a6;
  return memcpy(a1, v16, 0x50uLL);
}

uint64_t sub_1E3F863D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FBA0, &unk_1E42B49D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E3F86440()
{
  result = qword_1ECF3D3B8;
  if (!qword_1ECF3D3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D3B0, &qword_1E42E0F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D3B8);
  }

  return result;
}

uint64_t sub_1E3F864C8(uint64_t a1)
{
  v2 = type metadata accessor for ViewModel();

  v3 = j___s8VideosUI9ViewModelCMa(v2);
  v4 = sub_1E39C1CF8(59, v3, v2);

  result = sub_1E32AE9B0(v4);
  if (!result)
  {
    goto LABEL_5;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E6911E60](0, v4);
    goto LABEL_5;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_5:

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3F8658C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_1E4203DA4();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D3C0, &qword_1E42E0FA0);
  sub_1E3F8660C(a1, a2, (a3 + *(v7 + 44)));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D3C8, &qword_1E42E0FA8);
  *(a3 + *(result + 36)) = 256;
  return result;
}

void sub_1E3F8660C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v48 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29878, &unk_1E429C0E0);
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289E8, &qword_1E4297EE8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289F0, &qword_1E4297EF0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  v21 = *sub_1E3E6011C();
  v22 = sub_1E38F08C4(v21);

  if (a2)
  {

    sub_1E3EC24F4(v23, 0, 0, 0);
    v24 = (*(*a1 + 392))();
    if (v24 && ((*(*v24 + 176))(v49), v25 = v49[0], v26 = v49[1], v27 = v49[2], v28 = v49[3], , (v50 & 1) == 0))
    {
      v29.n128_u64[0] = v25;
      v30.n128_u64[0] = v26;
      v31.n128_u64[0] = v27;
      v32.n128_u64[0] = v28;
      v33 = j_nullsub_1(v29, v30, v31, v32);
    }

    else
    {
      v33 = OUTLINED_FUNCTION_5_8();
    }

    v38 = v33;
    v39 = v34;
    v40 = v35;
    v41 = v36;
    v42 = sub_1E4202734();

    (*(v46 + 32))(v11, v7, v47);
    v43 = &v11[*(v8 + 36)];
    *v43 = v42;
    *(v43 + 1) = v38;
    *(v43 + 2) = v39;
    *(v43 + 3) = v40;
    *(v43 + 4) = v41;
    v43[40] = 0;
    sub_1E32DD814(v11, v14);
    sub_1E32DD814(v14, v20);
    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  __swift_storeEnumTagSinglePayload(v20, v37, 1, v8);
  sub_1E32DD74C(v20, v17);
  v44 = v48;
  *v48 = v22;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D3E8, &qword_1E42E1058);
  sub_1E32DD74C(v17, v44 + *(v45 + 48));

  sub_1E32DD7B4(v20);
  sub_1E32DD7B4(v17);
}

unint64_t sub_1E3F869B4()
{
  result = qword_1ECF3D3D0;
  if (!qword_1ECF3D3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D3C8, &qword_1E42E0FA8);
    sub_1E3F86A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D3D0);
  }

  return result;
}

unint64_t sub_1E3F86A40()
{
  result = qword_1ECF3D3D8;
  if (!qword_1ECF3D3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D3E0, &unk_1E42E1048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D3D8);
  }

  return result;
}

double sub_1E3F86AA4@<D0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 88) = 0;
  return result;
}

uint64_t sub_1E3F86AD0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

void sub_1E3F86AE0()
{
  OUTLINED_FUNCTION_156();
  (*(*v0 + 1784))();
  OUTLINED_FUNCTION_13_5();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1E3BC0C44(v1, v2, v3);
  }

  if (sub_1E3AF9DBC(v5, &unk_1F5D8F9D0))
  {
    OUTLINED_FUNCTION_47_0();
    v7 = (*(v6 + 464))();
    if (v7)
    {
      v8 = v7;
      v9 = sub_1E32AE9B0(v7);
      v10 = 0;
      do
      {
        if (v9 == v10)
        {

          goto LABEL_17;
        }

        if ((v8 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E6911E60](v10, v8);
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }
        }

        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          return;
        }

        OUTLINED_FUNCTION_26_0();
        v12 = v11;

        ++v10;
      }

      while (v12 != _TtC8VideosUI13TextViewModel);
    }

    else
    {
LABEL_17:
      OUTLINED_FUNCTION_111();
      v13 += 262;
      v14 = *v13;
      (*v13)();
      OUTLINED_FUNCTION_30();
      (*(v15 + 2168))(11);

      (v14)(v16);
      OUTLINED_FUNCTION_2_1();
      (*(v17 + 2024))(3, 0);
    }
  }
}

void sub_1E3F86D44()
{
  OUTLINED_FUNCTION_31_1();
  v174 = v1;
  v175 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  memcpy(v188, v0, sizeof(v188));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v158 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D550, &qword_1E42E1060);
  v13 = OUTLINED_FUNCTION_17_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  v173 = &v158 - v14;
  v172 = type metadata accessor for ViewModelLinkEntity(0);
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v158 - v22;
  v24 = v3;
  if (!v3)
  {
    v24 = (*(*v7 + 392))(v21);
    if (!v24)
    {
      goto LABEL_137;
    }
  }

  v177 = v7;
  type metadata accessor for ButtonLayout();
  OUTLINED_FUNCTION_20_2();
  v176 = swift_dynamicCastClass();
  if (!v176)
  {

    goto LABEL_137;
  }

  v171 = v24;
  v168 = &v158 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = v23;
  v166 = v16;
  v167 = v18;
  if (v5)
  {
    objc_opt_self();
    swift_dynamicCastObjCClass();
  }

  v25 = v177;
  sub_1E3F880F4();
  v28 = v26;
  if (!v26)
  {
LABEL_136:

LABEL_137:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v29 = v27;
  v170 = v26;
  if ((v27 & 0x100) == 0 || (OUTLINED_FUNCTION_8(), (v31 = (*(v30 + 464))()) == 0))
  {
LABEL_108:
    if (v29)
    {
      v165 = v11;
      OUTLINED_FUNCTION_4_0();
      swift_allocObject();
      v123 = v177;
      swift_weakInit();
      v124 = 0xE000000000000000;
      v183[0] = 0;
      v183[1] = 0xE000000000000000;

      sub_1E42074B4();

      strcpy(v183, "SelectAction<");
      HIWORD(v183[1]) = -4864;
      v125 = *(v123 + 24);
      if (v125)
      {
        v126 = *(v123 + 16);
      }

      else
      {
        v126 = 0;
      }

      if (v125)
      {
        v124 = v125;
      }

      MEMORY[0x1E69109E0](v126, v124);

      MEMORY[0x1E69109E0](62, 0xE100000000000000);
      sub_1E3F89E60();
      v128 = v127;
      v130 = v129;

      if (v128)
      {
        v183[4] = v128;
        v183[5] = v130;
        v183[0] = MEMORY[0x1E69E9820];
        v183[1] = 1107296256;
        v183[2] = sub_1E37C0588;
        v183[3] = &block_descriptor_7_2;
        v128 = _Block_copy(v183);
      }

      [v170 setSelectActionHandler_];
      _Block_release(v128);
      strcpy(v183, "LongPress<");
      BYTE3(v183[1]) = 0;
      HIDWORD(v183[1]) = -369098752;
      if (*(v177 + 24))
      {
        v131 = *(v177 + 16);
        v132 = *(v177 + 24);
      }

      else
      {
        v131 = 0;
        v132 = 0xE000000000000000;
      }

      MEMORY[0x1E69109E0](v131, v132);

      MEMORY[0x1E69109E0](62, 0xE100000000000000);
      sub_1E3F89E60();
      v134 = v133;
      v136 = v135;

      if (v134)
      {
        v183[4] = v134;
        v183[5] = v136;
        v183[0] = MEMORY[0x1E69E9820];
        v183[1] = 1107296256;
        v183[2] = sub_1E37C0588;
        v183[3] = &block_descriptor_144;
        v134 = _Block_copy(v183);
      }

      v11 = v165;
      v28 = v170;
      [v170 setLongPressActionHandler_];
      _Block_release(v134);
    }

    v183[3] = &unk_1F5D5D0A8;
    v183[4] = &off_1F5D5C758;
    LOBYTE(v183[0]) = 1;
    sub_1E39C29A4(v183);
    v138 = v137;
    __swift_destroy_boxed_opaque_existential_1(v183);
    if (v138)
    {
      v139 = sub_1E4205ED4();
    }

    else
    {
      v139 = 0;
    }

    [v28 setGroupName_];

    v183[3] = &unk_1F5D5D0A8;
    v183[4] = &off_1F5D5C758;
    LOBYTE(v183[0]) = 2;
    v140 = j__OUTLINED_FUNCTION_18();
    v141 = sub_1E39C29F0(v183, v140 & 1);
    __swift_destroy_boxed_opaque_existential_1(v183);
    [v28 setHasDisclaimerText_];
    sub_1E3F88F44();
    objc_opt_self();
    v142 = swift_dynamicCastObjCClass();
    if (!v142)
    {
LABEL_133:
      [v28 configureWithLayoutProperties];
      if (TVAppFeature.isEnabled.getter(7, v147, v148))
      {

        v149 = v173;
        sub_1E3CF1174();
        if (__swift_getEnumTagSinglePayload(v149, 1, v172) == 1)
        {

          sub_1E325F6F0(v149, &qword_1ECF2D550, &qword_1E42E1060);
        }

        else
        {
          v150 = v169;
          sub_1E38E7DBC(v149, v169);
          v151 = sub_1E4206474();
          __swift_storeEnumTagSinglePayload(v11, 1, 1, v151);
          v152 = v168;
          sub_1E38E7FC4(v150, v168);
          sub_1E4206434();
          v153 = v28;
          v154 = sub_1E4206424();
          v155 = (*(v166 + 80) + 40) & ~*(v166 + 80);
          v156 = swift_allocObject();
          v157 = MEMORY[0x1E69E85E0];
          v156[2] = v154;
          v156[3] = v157;
          v156[4] = v153;
          sub_1E38E7DBC(v152, v156 + v155);
          sub_1E376FE58(0, 0, v11, &unk_1E42E1070, v156);

          sub_1E38E80FC(v150);
        }

        goto LABEL_137;
      }

      goto LABEL_136;
    }

    v143 = v142;
    v144 = v28;
    LOBYTE(v182[0]) = 0;
    OUTLINED_FUNCTION_8();
    (*(v145 + 776))(v183, v182, &unk_1F5D5D0A8, &off_1F5D5C758);
    if (v183[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
      if ((OUTLINED_FUNCTION_21_4() & 1) != 0 && sub_1E32772D8(v182[0]))
      {
        v146 = sub_1E4206614();

LABEL_132:
        [v143 setTransactionIDs_];

        goto LABEL_133;
      }
    }

    else
    {
      sub_1E325F6F0(v183, &unk_1ECF296E0, &unk_1E4298030);
    }

    v146 = 0;
    goto LABEL_132;
  }

  v32 = v31;
  v33 = sub_1E32AE9B0(v31);
  if (!v33)
  {

    v34 = 0;
    v35 = 0;
    v37 = 0;
    v118 = 0;
    v119 = 0;
LABEL_103:
    v120 = v170;
    [v170 setTextContentView_];
    v164 = v118;
    [v120 setSubtitleContentView_];
    [v120 setImageView_];
    [v120 setProgressBarView_];
    v121 = [v37 image];
    [v120 setSelectionImage_];

    if (v119)
    {
      [v119 setEnabled_];
    }

    if (v164)
    {
      v122 = v164;
      [v164 setEnabled_];

      v35 = v34;
      v34 = v122;
    }

    v28 = v170;
    goto LABEL_108;
  }

  v161 = v29;
  v165 = v11;
  if (v33 >= 1)
  {
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v164 = 0;
    v162 = 0;
    v178 = v32 & 0xC000000000000001;
    v179 = v33;
    v38 = v32 & 0xFFFFFFFFFFFFFF8;
    v159 = v32 & 0xFFFFFFFFFFFFFF8;
    if (v32 < 0)
    {
      v38 = v32;
    }

    v158 = v38;
    v180 = v32;
    while (1)
    {
      v181 = v35;
      v39 = v37;
      v40 = v34;
      if (v178)
      {
        v41 = MEMORY[0x1E6911E60](v36, v32);
      }

      else
      {
        v41 = *(v32 + 8 * v36 + 32);
      }

      OUTLINED_FUNCTION_44_60();
      v187 = 3;
      v45 = sub_1E3742F1C(v42, v43, v44);
      OUTLINED_FUNCTION_17_135();
      OUTLINED_FUNCTION_21_106();
      OUTLINED_FUNCTION_6_199();
      v46 = OUTLINED_FUNCTION_7_204();
      v49 = v49 && v34 == v25;
      if (v49)
      {
        break;
      }

      OUTLINED_FUNCTION_24_41(v46, v47, v48);
      OUTLINED_FUNCTION_39_60();

      if ((&qword_1F5D5CE68 & 1) == 0)
      {
        OUTLINED_FUNCTION_44_60();
        v187 = 11;
        OUTLINED_FUNCTION_17_135();
        OUTLINED_FUNCTION_21_106();
        OUTLINED_FUNCTION_6_199();
        v50 = OUTLINED_FUNCTION_7_204();
        if (v49 && v34 == v25)
        {
          break;
        }

        OUTLINED_FUNCTION_24_41(v50, v51, v52);
        OUTLINED_FUNCTION_39_60();

        if ((&qword_1F5D5CE68 & 1) == 0)
        {
          if (*v41 != _TtC8VideosUI13TextViewModel)
          {
            type metadata accessor for ImageViewModel();
            v63 = swift_dynamicCastClass();
            if (v63)
            {
              v163 = v63;
              LOWORD(v184) = *(v177 + 98);
              v187 = 65;

              OUTLINED_FUNCTION_17_135();
              OUTLINED_FUNCTION_21_106();
              OUTLINED_FUNCTION_6_199();
              v64 = OUTLINED_FUNCTION_7_204();
              if (v49 && v34 == v25)
              {
              }

              else
              {
                OUTLINED_FUNCTION_24_41(v64, v65, v66);
                OUTLINED_FUNCTION_39_60();

                if ((&qword_1F5D5CE68 & 1) == 0)
                {
LABEL_73:
                  if (v180 >> 62)
                  {
                    v95 = sub_1E4207384();
                  }

                  else
                  {
                    v95 = *(v159 + 16);
                  }

                  v96 = v163;
                  if (v95 >= 2)
                  {

                    v97 = sub_1E37D027C(v180);
                    v183[0] = v96;
                    if (v97)
                    {
                      v34 = v97;
                      v182[0] = v97;
                      type metadata accessor for ViewModel();
                      sub_1E388C264();
                      v25 = sub_1E4205E84();

                      if (v25)
                      {
                        [v170 setImageTrailsTextContent_];
                      }
                    }

                    else
                    {
                    }
                  }

                  sub_1E3F86AE0();
                  LOWORD(v184) = v96[49];
                  v187 = 44;

                  OUTLINED_FUNCTION_17_135();
                  OUTLINED_FUNCTION_21_106();
                  OUTLINED_FUNCTION_6_199();
                  v101 = OUTLINED_FUNCTION_7_204();
                  if (v49 && v34 == v25)
                  {
                  }

                  else
                  {
                    OUTLINED_FUNCTION_24_41(v101, v102, v103);
                    OUTLINED_FUNCTION_39_60();

                    if ((&qword_1F5D5CE68 & 1) == 0)
                    {
                      v105 = [v170 imageView];
                      OUTLINED_FUNCTION_43_62();
                      if (v106)
                      {
                        v113 = *(v45 + 88);
                        *(&v185 + 1) = &unk_1F5D869A0;
                        v186 = &off_1F5D868A0;
                        v114 = swift_allocObject();
                        OUTLINED_FUNCTION_38_65(v114);
                        *(v25 + 88) = &qword_1F5D5CE68;
                        *(v25 + 96) = v113;
                        memcpy(v183, v188, 0x5AuLL);
                        sub_1E3F8B6F0(v183, v182);
                      }

                      else
                      {
                        v186 = 0;
                        v184 = 0u;
                        v185 = 0u;
                      }

                      type metadata accessor for UIFactory();
                      OUTLINED_FUNCTION_8();
                      v116 = (*(v115 + 2096))();
                      v117 = sub_1E3280A90(0, &qword_1EE23B360, 0x1E69DF740);
                      v25 = sub_1E393D92C(v163, v105, &v184, v116, v117);

                      sub_1E325F6F0(&v184, &qword_1ECF296C0, &unk_1E429BBE0);
                      v34 = v40;
                      v37 = v39;
                      v35 = v25;
                      goto LABEL_38;
                    }
                  }

                  OUTLINED_FUNCTION_43_62();
                  if (v106)
                  {
                    v107 = *(v45 + 88);
                    *(&v185 + 1) = &unk_1F5D869A0;
                    v186 = &off_1F5D868A0;
                    v108 = swift_allocObject();
                    OUTLINED_FUNCTION_38_65(v108);
                    *(v25 + 88) = &qword_1F5D5CE68;
                    *(v25 + 96) = v107;
                    memcpy(v183, v188, 0x5AuLL);
                    sub_1E3F8B6F0(v183, v182);
                  }

                  else
                  {
                    v186 = 0;
                    v184 = 0u;
                    v185 = 0u;
                  }

                  v109 = type metadata accessor for UIFactory();
                  OUTLINED_FUNCTION_8();
                  v111 = (*(v110 + 2120))();
                  v112 = sub_1E3280A90(0, &qword_1EE23B360, 0x1E69DF740);
                  v25 = v109;
                  v37 = sub_1E393D92C(v163, 0, &v184, v111, v112);

                  sub_1E325F6F0(&v184, &qword_1ECF296C0, &unk_1E429BBE0);
LABEL_96:
                  v34 = v40;
                  goto LABEL_37;
                }
              }

              v91 = [objc_opt_self() configurationWithPointSize:7 weight:11.0];
              OUTLINED_FUNCTION_29_91();
              (*(v92 + 2096))();
              OUTLINED_FUNCTION_2_1();
              v160 = v93 + 1952;
              v94 = *(v93 + 1952);
              v34 = v91;
              v94(v91);

              goto LABEL_73;
            }

            OUTLINED_FUNCTION_44_60();
            v187 = 115;
            OUTLINED_FUNCTION_17_135();
            OUTLINED_FUNCTION_21_106();
            OUTLINED_FUNCTION_6_199();
            v78 = OUTLINED_FUNCTION_7_204();
            if (v49 && v34 == v25)
            {

              v37 = v39;
LABEL_80:
              v98 = TVAppFeature.isEnabled.getter(10, v82, v83);
              v35 = v181;
              if (v98)
              {
                type metadata accessor for UIFactory();

                v99 = [v170 progressBarView];
                v100 = sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
                memset(v183, 0, 40);
                v25 = sub_1E393D92C(v41, v99, v183, 0, v100);
                OUTLINED_FUNCTION_157();

                sub_1E325F6F0(v183, &qword_1ECF296C0, &unk_1E429BBE0);
                v34 = v25;
              }

              else
              {
              }

              goto LABEL_38;
            }

            OUTLINED_FUNCTION_24_41(v78, v79, v80);
            OUTLINED_FUNCTION_39_60();

            v37 = v39;
            if (&qword_1F5D5CE68)
            {
              goto LABEL_80;
            }

            goto LABEL_96;
          }

          OUTLINED_FUNCTION_44_60();
          v187 = 15;
          OUTLINED_FUNCTION_157();
          swift_retain_n();
          OUTLINED_FUNCTION_17_135();
          OUTLINED_FUNCTION_21_106();
          OUTLINED_FUNCTION_6_199();
          v54 = OUTLINED_FUNCTION_7_204();
          if (v49 && v34 == v25)
          {
          }

          else
          {
            OUTLINED_FUNCTION_24_41(v54, v55, v56);
            OUTLINED_FUNCTION_39_60();

            if ((&qword_1F5D5CE68 & 1) == 0)
            {
              v58 = [v170 textContentView];
              OUTLINED_FUNCTION_29_91();
              v60 = *(v59 + 2048);
              v163 = v61;
              v62 = v60();
              goto LABEL_49;
            }
          }

          v68 = [v170 subtitleContentView];
          OUTLINED_FUNCTION_29_91();
          v70 = *(v69 + 2072);
          v163 = v71;
          v62 = v70();
LABEL_49:
          v72 = v62;

          v73 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
          memset(v183, 0, 40);
          v74 = v73;
          v75 = v163;
          v76 = sub_1E393D9C4(v41, v163, v183, v72);

          v160 = v72;

          sub_1E325F6F0(v183, &qword_1ECF296C0, &unk_1E429BBE0);
          if (v76)
          {
            objc_opt_self();
            OUTLINED_FUNCTION_20_2();
            v77 = swift_dynamicCastObjCClass();
            if (!v77)
            {
            }
          }

          else
          {
            v77 = 0;
          }

          v84 = *(v41 + 49);

          LOWORD(v184) = v84;
          v187 = 15;
          OUTLINED_FUNCTION_17_135();
          OUTLINED_FUNCTION_21_106();
          OUTLINED_FUNCTION_6_199();
          if (v183[0] == v182[0] && v183[1] == v182[1])
          {
          }

          else
          {
            v86 = OUTLINED_FUNCTION_97_0(v183[0], v183[1], v182[0]);

            if ((v86 & 1) == 0)
            {
              v25 = v162;
              v162 = v77;
LABEL_67:
              v87 = v170;
              v88 = v77;

              if ([v87 buttonType] == 7)
              {
                v25 = v176;
                OUTLINED_FUNCTION_8();
                v90 = *(v89 + 752);

                v90(0);
                OUTLINED_FUNCTION_157();
              }

              else
              {
                OUTLINED_FUNCTION_157();
              }

              goto LABEL_36;
            }
          }

          v25 = v164;
          v164 = v77;
          goto LABEL_67;
        }
      }

LABEL_35:

LABEL_36:
      v34 = v40;
      v37 = v39;
LABEL_37:
      v35 = v181;
LABEL_38:
      ++v36;
      v32 = v180;
      if (v179 == v36)
      {

        v118 = v164;
        v11 = v165;
        LOBYTE(v29) = v161;
        v119 = v162;
        goto LABEL_103;
      }
    }

    goto LABEL_35;
  }

  __break(1u);
}

void sub_1E3F880F4()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (v1[10] == 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = *v1;
  }

  OUTLINED_FUNCTION_47_0();
  v9 += 223;
  v10 = *v9;
  v143 = v9;
  v144 = v10;
  v10();
  OUTLINED_FUNCTION_13_5();
  if (v14)
  {
    v142 = 0;
  }

  else
  {
    v142 = sub_1E3BC0C44(v11, v12, v13);
  }

  LOBYTE(v149[0]) = 0;
  OUTLINED_FUNCTION_111();
  v15 = OUTLINED_FUNCTION_27_89();
  v16(v15);
  if (v147)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
    if (swift_dynamicCast())
    {
      v21 = *(v149[0] + 16);

      if (v21)
      {
        if (v5 && (objc_opt_self(), OUTLINED_FUNCTION_22_93(), (v22 = swift_dynamicCastObjCClass()) != 0))
        {
          v23 = v22;
          v24 = v5;
        }

        else
        {
          v23 = [objc_allocWithZone(VUITransactionButton) initWithType:v142 interfaceStyle:v8];
        }

        goto LABEL_21;
      }
    }
  }

  else
  {
    sub_1E325F6F0(v146, &unk_1ECF296E0, &unk_1E4298030);
  }

  v29 = sub_1E373F6E0(*(v7 + 98), 65, v17, v18, v19, v20);
  if (v29)
  {
    v23 = sub_1E3F8A898(v7, v3, v8, v5);
    v141 = 0;
    goto LABEL_22;
  }

  if (v5)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_22_93();
    v29 = swift_dynamicCastObjCClass();
    if (v29)
    {
      v29 = [v29 setTransactionIDs_];
    }
  }

  p_vtable = &v139;
  v149[0] = v5;
  MEMORY[0x1EEE9AC00](v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D408, &qword_1E42E11E8);
  v30 = OUTLINED_FUNCTION_30_78();
  sub_1E4148C68(v30, v31, v32);
  v23 = v146[0];
LABEL_21:
  v141 = 1;
LABEL_22:
  v33 = *(v7 + 98);
  if ((sub_1E373F6E0(v33, 62, v25, v26, v27, v28) & 1) == 0)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_45_65();
  v38();
  OUTLINED_FUNCTION_13_5();
  if (v14)
  {
    v42 = 0;
  }

  else
  {
    v42 = sub_1E3BC0C44(v39, v40, v41);
  }

  p_vtable = VUIDownloadCollectionViewCell.vtable;
  if (v5 && (objc_opt_self(), OUTLINED_FUNCTION_22_93(), (v43 = swift_dynamicCastObjCClass()) != 0))
  {
    v44 = v43;
    v45 = v5;
  }

  else
  {
    v44 = [objc_allocWithZone(VUIAccountSettingsButton) initWithType:v42 interfaceStyle:v8];
  }

  OUTLINED_FUNCTION_47_0();
  v47 = (*(v46 + 200))();
  if (v48 & 1) != 0 || (v49 = *&v47, OUTLINED_FUNCTION_47_0(), v51 = COERCE_DOUBLE((*(v50 + 304))()), (v52))
  {

    if (!v44)
    {
      goto LABEL_38;
    }

LABEL_36:
    v23 = v44;
    goto LABEL_39;
  }

  if (v44)
  {
    [v44 setPreferedContentSize_];

    goto LABEL_36;
  }

LABEL_38:
  v23 = 0;
LABEL_39:
  v53 = sub_1E373F6E0(v33, 71, v34, v35, v36, v37);
  if (v53)
  {
    if (v5)
    {
      type metadata accessor for SportsBridgeButton();
      OUTLINED_FUNCTION_22_93();
      v53 = swift_dynamicCastClass();
      v58 = v53;
      if (v53)
      {
        v53 = v5;
      }
    }

    else
    {
      v58 = 0;
    }

    p_vtable = &v139;
    v149[0] = v58;
    MEMORY[0x1EEE9AC00](v53);
    OUTLINED_FUNCTION_28_81();
    *(v59 - 16) = v142;
    *(v59 - 8) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D418, &qword_1E42E11F8);
    v60 = OUTLINED_FUNCTION_30_78();
    sub_1E4148C68(v60, v61, v62);

    v63 = v146[0];
    sub_1E37C0398();

    v23 = v63;
  }

  if (sub_1E373F6E0(v33, 60, v54, v55, v56, v57))
  {
    OUTLINED_FUNCTION_45_65();
    v68();
    OUTLINED_FUNCTION_13_5();
    if (!v14)
    {
      LOBYTE(v146[0]) = v69;
      LOBYTE(v149[0]) = 5;
      sub_1E3751DB0(v69, v70, v64);
      v71 = sub_1E4205E84();
      if (v71)
      {
        if (v5)
        {
          type metadata accessor for SeeAllButton();
          OUTLINED_FUNCTION_22_93();
          v71 = swift_dynamicCastClass();
          v72 = v71;
          if (v71)
          {
            v71 = v5;
          }
        }

        else
        {
          v72 = 0;
        }

        p_vtable = &v139;
        v149[0] = v72;
        MEMORY[0x1EEE9AC00](v71);
        OUTLINED_FUNCTION_28_81();
        *(v73 - 16) = v142;
        *(v73 - 8) = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D410, &qword_1E42E11F0);
        v74 = OUTLINED_FUNCTION_30_78();
        sub_1E4148C68(v74, v75, v76);

        v77 = v146[0];
        sub_1E3DFC234();

        v23 = v77;
      }
    }
  }

  if (sub_1E373F6E0(v33, 63, v64, v65, v66, v67) & 1) != 0 || (sub_1E373F6E0(v33, 64, v78, v79, v80, v81))
  {
    if (v5)
    {
      objc_opt_self();
      OUTLINED_FUNCTION_22_93();
      v5 = swift_dynamicCastObjCClass();
    }

    type metadata accessor for LibDownloadButtonViewModel();
    v82 = swift_dynamicCastClass();
    if (v82)
    {
      v83 = [*(v82 + 280) videosPlayable];
      if (v83)
      {
        goto LABEL_60;
      }

      goto LABEL_101;
    }

    OUTLINED_FUNCTION_111();
    v92 = (*(v91 + 552))();
    if (!v92)
    {
      goto LABEL_101;
    }

    v93 = v92;
    v147 = &unk_1F5D7BE68;
    v148 = &off_1F5D7BC48;
    LOBYTE(v146[0]) = 8;
    p_vtable = MEMORY[0x1E69E7CA0];
    sub_1E3F9F164(v146, v92, MEMORY[0x1E69E7CA0] + 8);
    if (!v150)
    {

      __swift_destroy_boxed_opaque_existential_1(v146);
      sub_1E325F6F0(v149, &unk_1ECF296E0, &unk_1E4298030);
      goto LABEL_101;
    }

    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
    if ((OUTLINED_FUNCTION_54_47(v94, v95, v96, v94) & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1(v146);
      goto LABEL_101;
    }

    v140 = v145;
    __swift_destroy_boxed_opaque_existential_1(v146);
    v147 = &unk_1F5D7BE68;
    v148 = &off_1F5D7BC48;
    LOBYTE(v146[0]) = 6;
    sub_1E3F9F164(v146, v93, (p_vtable + 1));

    if (v150)
    {
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      if (OUTLINED_FUNCTION_54_47(v97, v98, v99, v97))
      {
        v100 = v145;
        __swift_destroy_boxed_opaque_existential_1(v146);
        goto LABEL_92;
      }

      __swift_destroy_boxed_opaque_existential_1(v146);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v146);
      sub_1E325F6F0(v149, &unk_1ECF296E0, &unk_1E4298030);
    }

    v100 = 0;
LABEL_92:
    sub_1E388A824(v140);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
    v120 = sub_1E42062A4();

    if (v100)
    {
      sub_1E3744600(v100);

      v100 = sub_1E4205C44();
    }

    v121 = [objc_opt_self() videosPlayablesFromDictionaries:v120 andMetadataDictionary:v100];

    if (v121)
    {
      sub_1E3280A90(0, &qword_1EE23B1C0, off_1E8728690);
      v122 = sub_1E42062B4();

      if (sub_1E32AE9B0(v122))
      {
        if ((v122 & 0xC000000000000001) != 0)
        {
          v123 = MEMORY[0x1E6911E60](0, v122);
        }

        else
        {
          if (!*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v123 = *(v122 + 32);
        }

        v83 = v123;

LABEL_60:
        v86 = v83;
        if (v5)
        {
          v87 = v5;
          v88 = [v87 buttonType];
          if (v88 == v142)
          {
            OUTLINED_FUNCTION_47_0();
            (*(v89 + 2048))();
            OUTLINED_FUNCTION_30();
            (*(v90 + 2408))();
            OUTLINED_FUNCTION_122();

            [v87 updateWithPlayable:v86 textLayout:p_vtable];

LABEL_78:
            [v87 setImageTrailsTextContent_];

            v23 = v5;
LABEL_79:
            v109 = v87;
            OUTLINED_FUNCTION_45_65();
            v110();
            OUTLINED_FUNCTION_13_5();
            if (!v14)
            {
              LOBYTE(v146[0]) = v111;
              LOBYTE(v149[0]) = 8;
              sub_1E3751DB0(v111, v112, v113);
              if (sub_1E4205E84())
              {
                [v109 setTranslatesAutoresizingMaskIntoConstraints_];
              }
            }

            LOBYTE(v149[0]) = 1;
            OUTLINED_FUNCTION_111();
            v115 = *(v114 + 776);
            v116 = v23;
            v117 = OUTLINED_FUNCTION_27_89();
            v115(v117);
            if (v147)
            {
              if (swift_dynamicCast())
              {
                v118 = v149[0];
                v119 = v149[1];
                [v116 vui:1 isAccessibilityElement:?];
                sub_1E37FB7F0(v118, v119, v116, &selRef_vui_setAccessibilityText_);
              }
            }

            else
            {

              sub_1E325F6F0(v146, &unk_1ECF296E0, &unk_1E4298030);
            }

            goto LABEL_108;
          }
        }

        if (TVAppFeature.isEnabled.getter(16, v84, v85) & 1) != 0 && (sub_1E373F6E0(*(v7 + 98), 64, v101, v102, v103, v104))
        {
          sub_1E3280A90(0, &qword_1ECF3D428, off_1E8728330);
          (*(*v3 + 2048))();
          OUTLINED_FUNCTION_2_1();
          v106 = (*(v105 + 2408))();

          v107 = &selRef_initWithRemotePlayable_type_textLayout_;
        }

        else
        {
          sub_1E3280A90(0, &qword_1ECF3D428, off_1E8728330);
          (*(*v3 + 2048))();
          OUTLINED_FUNCTION_2_1();
          v106 = (*(v108 + 2408))();

          v107 = &selRef_initWithPlayable_type_textLayout_;
        }

        v87 = sub_1E3F8B5B8(v86, v142, v106, v107);
        if (v87)
        {
LABEL_77:
          v5 = v87;
          goto LABEL_78;
        }

        goto LABEL_105;
      }
    }

LABEL_101:
    LOBYTE(v149[0]) = 15;
    OUTLINED_FUNCTION_111();
    v124 = OUTLINED_FUNCTION_27_89();
    v125(v124);
    if (!v147)
    {
      sub_1E325F6F0(v146, &unk_1ECF296E0, &unk_1E4298030);
      goto LABEL_107;
    }

    if (!OUTLINED_FUNCTION_21_4() || (v149[0] & 1) == 0)
    {
      goto LABEL_107;
    }

    OUTLINED_FUNCTION_47_0();
    (*(v126 + 2048))();
    OUTLINED_FUNCTION_30();
    v128 = (*(v127 + 2408))();

    v129 = objc_allocWithZone(VUIDownloadButton);
    v87 = [v129 initTVShowDownloadButtonWithType:v142 textLayout:v128];

    v86 = 0;
    if (v87)
    {
      goto LABEL_77;
    }

LABEL_105:

LABEL_107:
    v23 = 0;
    goto LABEL_108;
  }

  if (v23)
  {
    v87 = v23;
    goto LABEL_79;
  }

LABEL_108:
  v147 = &unk_1F5D5DAC8;
  v148 = &off_1F5D5C998;
  LOBYTE(v146[0]) = 46;
  v130 = j__OUTLINED_FUNCTION_18();
  v131 = sub_1E39C29F0(v146, v130 & 1);
  __swift_destroy_boxed_opaque_existential_1(v146);
  if (v23)
  {
    [v23 setEnabled_];
  }

  OUTLINED_FUNCTION_45_65();
  v132();
  OUTLINED_FUNCTION_13_5();
  if (!v14)
  {
    [v23 setButtonType_];
  }

  OUTLINED_FUNCTION_47_0();
  v137 = (*(v136 + 1880))();
  if (v137 != 3)
  {
    [v23 setButtonShape_];
  }

  type metadata accessor for Accessibility();
  v138 = v23;
  sub_1E40A91FC(v23, 0, v7);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F88F44()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  OUTLINED_FUNCTION_26_0();
  v3 = (*(v2 + 304))();
  OUTLINED_FUNCTION_5_213(v3, v4);
  v106[2] = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40, &qword_1E429EC80);
  OUTLINED_FUNCTION_40_65(sub_1E3BE812C, v106);
  OUTLINED_FUNCTION_12_6();
  v7 = (*(v6 + 200))();
  OUTLINED_FUNCTION_5_213(v7, v8);
  v105[2] = v1;
  OUTLINED_FUNCTION_40_65(sub_1E3BE8140, v105);
  OUTLINED_FUNCTION_12_6();
  v10 = (*(v9 + 224))();
  OUTLINED_FUNCTION_5_213(v10, v11);
  v104[2] = v1;
  OUTLINED_FUNCTION_40_65(sub_1E3BE8154, v104);
  OUTLINED_FUNCTION_12_6();
  v13 = (*(v12 + 248))();
  OUTLINED_FUNCTION_5_213(v13, v14);
  v103[2] = v1;
  OUTLINED_FUNCTION_40_65(sub_1E3BE8168, v103);
  OUTLINED_FUNCTION_3_11();
  v16 = (*(v15 + 328))();
  OUTLINED_FUNCTION_5_213(v16, v17);
  v102[2] = v1;
  OUTLINED_FUNCTION_40_65(sub_1E3BE817C, v102);
  OUTLINED_FUNCTION_3_11();
  v19 = (*(v18 + 352))();
  OUTLINED_FUNCTION_5_213(v19, v20);
  v101[10] = v1;
  v100[3] = v5;
  sub_1E4148DE0(sub_1E3BE8190);
  OUTLINED_FUNCTION_3_11();
  v22 = (*(v21 + 2288))();
  OUTLINED_FUNCTION_5_213(v22, v23);
  v101[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D3F0, &qword_1E42E1078);
  sub_1E4148DE0(sub_1E3F8B728);
  OUTLINED_FUNCTION_12_6();
  (*(v24 + 176))(v113);
  v101[2] = v1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3C0, &qword_1E42B9710);
  OUTLINED_FUNCTION_40_65(sub_1E3F8B73C, v101);
  if (sub_1E39DFFC8() & 1) != 0 && (OUTLINED_FUNCTION_12_6(), (*(v26 + 792))(), OUTLINED_FUNCTION_13_5(), !v30) && (LOBYTE(v113[0]) = v27, LOBYTE(v111[0]) = 9, sub_1E3F8B7D8(v27, v28, v29), (sub_1E4205E84()))
  {
    v31 = sub_1E3C8BE74();
    [v1 vuiEnableGlassBackgroundWithIsEnabled:1 tint:0 type:v31 flexible:OUTLINED_FUNCTION_18() & 1];
  }

  else
  {
    v32 = sub_1E3C8BE74();
    [v1 vuiEnableGlassBackgroundWithIsEnabled:0 tint:0 type:v32 flexible:OUTLINED_FUNCTION_18() & 1];
    OUTLINED_FUNCTION_3_11();
    v34 = (*(v33 + 744))();
    *&v113[0] = v34;
    MEMORY[0x1EEE9AC00](v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC50, &unk_1E42DC510);
    v35 = OUTLINED_FUNCTION_3_34();
    sub_1E4148DE0(v35);
  }

  OUTLINED_FUNCTION_12_6();
  v37 = (*(v36 + 2312))();
  LOBYTE(v113[0]) = v37;
  MEMORY[0x1EEE9AC00](v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC60, &qword_1E42D7E80);
  v38 = OUTLINED_FUNCTION_3_34();
  sub_1E4148DE0(v38);
  OUTLINED_FUNCTION_3_11();
  v40 = (*(v39 + 864))();
  *&v113[0] = v40;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_51_46();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC50, &unk_1E42DC510);
  v41 = OUTLINED_FUNCTION_3_34();
  v100[1] = v42;
  sub_1E4148DE0(v41);

  OUTLINED_FUNCTION_3_11();
  v44 = (*(v43 + 552))(v113);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_2_228();
  v45 = OUTLINED_FUNCTION_3_34();
  v100[2] = v25;
  sub_1E4148DE0(v45);
  OUTLINED_FUNCTION_3_11();
  v47 = *(v46 + 1880);
  v48 = v47();
  LOBYTE(v113[0]) = v48;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_51_46();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34C70, &qword_1E42C1DE8);
  v49 = OUTLINED_FUNCTION_3_34();
  sub_1E4148DE0(v49);
  OUTLINED_FUNCTION_3_11();
  v51 = (*(v50 + 600))();
  *&v113[0] = v51;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_28_81();
  *(v52 - 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34C68, &qword_1E42E1080);
  v53 = OUTLINED_FUNCTION_3_34();
  sub_1E4148DE0(v53);

  v54 = v47();
  LOBYTE(v113[0]) = v54;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_2_228();
  v55 = OUTLINED_FUNCTION_3_34();
  sub_1E4148DE0(v55);
  OUTLINED_FUNCTION_3_11();
  v57 = (*(v56 + 1976))();
  [v1 setSecondaryBackgroundColor_];

  OUTLINED_FUNCTION_3_11();
  v59 = (*(v58 + 1928))();
  [v1 setBorderColor_];

  OUTLINED_FUNCTION_3_11();
  (*(v60 + 1952))(v111);
  v61 = v111[0];
  if (v112)
  {
    v61 = 0.0;
  }

  [v1 setBorderWidth_];
  OUTLINED_FUNCTION_3_11();
  v63 = (*(v62 + 1832))();
  if (v63 == 2)
  {
    v64 = 0;
  }

  else
  {
    v64 = sub_1E385EBA8(v63 & 1);
  }

  [v1 setUberButtonType_];
  OUTLINED_FUNCTION_3_11();
  v66 = *(v65 + 2096);
  v66();
  OUTLINED_FUNCTION_30();
  (*(v67 + 248))();

  OUTLINED_FUNCTION_32_80();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_2_228();
  v69 = OUTLINED_FUNCTION_3_34();
  v70 = sub_1E4148DE0(v69);
  (v66)(v70);
  OUTLINED_FUNCTION_2_1();
  (*(v71 + 352))();

  OUTLINED_FUNCTION_32_80();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_2_228();
  v73 = OUTLINED_FUNCTION_3_34();
  v74 = sub_1E4148DE0(v73);
  (v66)(v74);
  OUTLINED_FUNCTION_2_1();
  (*(v75 + 672))();
  OUTLINED_FUNCTION_122();

  *&v113[0] = v100;
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_2_228();
  v77 = OUTLINED_FUNCTION_3_34();
  sub_1E4148DE0(v77);

  v66();
  OUTLINED_FUNCTION_2_1();
  (*(v78 + 864))();
  OUTLINED_FUNCTION_122();

  *&v113[0] = v100;
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_2_228();
  v80 = OUTLINED_FUNCTION_3_34();
  sub_1E4148DE0(v80);

  v66();
  OUTLINED_FUNCTION_30();
  (*(v81 + 152))(v113);

  v108 = v113[0];
  v109 = v113[1];
  v110 = v114;
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_2_228();
  sub_1E4148DE0(sub_1E3F8B7B4);
  if (sub_1E39DFFC8())
  {
    v66();
    OUTLINED_FUNCTION_26_0();
    v84 = (*(v83 + 504))();

    if (v84 == 18)
    {
      v88 = 0;
    }

    else
    {
      LOBYTE(v108) = v84;
      v107 = 1;
      sub_1E39E67F4(v85, v86, v87);
      v88 = sub_1E4205E84();
    }

    [v1 setVerticallyCenterContent_];
  }

  if (sub_1E39E01A4())
  {
    OUTLINED_FUNCTION_12_6();
    v89 += 66;
    v90 = *v89;
    v91 = (*v89)();
    if (v91 == 4)
    {
      v92 = 0;
    }

    else
    {
      v92 = sub_1E4125C2C(v91);
    }

    v93 = (v90)([v1 _setMonochromaticTreatment_]);
    if (v93 == 4)
    {
      v94 = 0;
    }

    else
    {
      v94 = sub_1E4125B78(v93);
    }

    [v1 _setEnableMonochromaticTreatment_];
  }

  OUTLINED_FUNCTION_12_6();
  v96 = (*(v95 + 2264))();
  if (v97)
  {
    v98 = 0;
  }

  else
  {
    v98 = v96;
  }

  v99 = [objc_opt_self() uiContentSizeCategoryFor_];
  [v1 setMaximumContentSizeCategory_];

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F89CFC()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v0[3] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D568, &qword_1E42E11E0);
  OUTLINED_FUNCTION_17_2(v3);
  v0[4] = swift_task_alloc();
  sub_1E4206434();
  v0[5] = sub_1E4206424();
  v5 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3F89DC4, v5, v4);
}

uint64_t sub_1E3F89DC4()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 32);

  sub_1E3CF14B0();
  v2 = sub_1E41FDCC4();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
  sub_1E4206EA4();

  OUTLINED_FUNCTION_54();

  return v3();
}

void sub_1E3F89E60()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v28 = v4;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_156();
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8)
  {
    v27 = v0;

    v15 = sub_1E324FBDC();
    (*(v11 + 16))(v14, v15, v9);

    v16 = sub_1E41FFC94();
    v17 = sub_1E4206814();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v25 = v8;
      v19 = v18;
      v20 = OUTLINED_FUNCTION_100();
      v26 = v6;
      v21 = v20;
      v29 = v20;
      *v19 = 136315138;
      v22 = v28;
      *(v19 + 4) = sub_1E3270FC8(v28, v3, &v29);
      _os_log_impl(&dword_1E323F000, v16, v17, "ButtonViewFactory:%s overriding handler", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      v6 = v26;
      OUTLINED_FUNCTION_6_0();
      v8 = v25;
      OUTLINED_FUNCTION_6_0();

      (*(v11 + 8))(v14, v9);
    }

    else
    {

      (*(v11 + 8))(v14, v9);
      v22 = v28;
    }

    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = v3;
    v0 = v27;
    v23[4] = v1;
    v23[5] = v0;
    v23[6] = v8;
    v23[7] = v6;
  }

  sub_1E34AF604(v1, v0);
  OUTLINED_FUNCTION_25_2();
}

void (*sub_1E3F8A0A4())()
{
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  return sub_1E3F8B82C;
}

void sub_1E3F8A0FC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_1E324FBDC();
    (*(v4 + 16))(v7, v10, v2);

    v11 = sub_1E41FFC94();
    v12 = sub_1E4206814();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v22 = v1;
      v14 = v13;
      v15 = OUTLINED_FUNCTION_100();
      v24[0] = v15;
      *v14 = 136315138;
      v16 = (*(*v9 + 368))();
      v18 = sub_1E3270FC8(v16, v17, v24);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1E323F000, v11, v12, "Button(%s) dispatching select event", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      OUTLINED_FUNCTION_6_0();
      v1 = v22;
      OUTLINED_FUNCTION_6_0();
    }

    (*(v4 + 8))(v7, v2);
    sub_1E379D7E4(v1, v24, &unk_1ECF296E0, &unk_1E4298030);
    if (v24[3])
    {
      sub_1E3280A90(0, &qword_1EE23B3D0, 0x1E69DCE60);
      if (OUTLINED_FUNCTION_21_4())
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      sub_1E325F6F0(v24, &unk_1ECF296E0, &unk_1E4298030);
      v19 = 0;
    }

    v23 = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D400, "rs\b");
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
    sub_1E4148F70(sub_1E3F8A444, 0, v20, v21, v24);
    (*(*v9 + 800))(2, v24[0], v19, 0);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F8A444@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BaseImpressionManager();
  v2 = OUTLINED_FUNCTION_20_2();
  result = static BaseImpressionManager.getParentSnapshotImpressions(responder:)(v2);
  *a1 = result;
  return result;
}

void sub_1E3F8A490()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v41 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37[-v18];
  sub_1E379D7E4(v10, &v43, &unk_1ECF296E0, &unk_1E4298030);
  if (*(&v44 + 1))
  {
    v20 = sub_1E3280A90(0, &qword_1EE23ACF0, off_1E8728290);
    if (swift_dynamicCast())
    {
      v40 = v42;
      v21 = v1();
      v22 = sub_1E324FBDC();
      (*(v13 + 16))(v19, v22, v11);

      v23 = sub_1E41FFC94();
      v24 = sub_1E4206814();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v38 = v21;
        v26 = v25;
        v27 = OUTLINED_FUNCTION_100();
        v39 = v4;
        v28 = v27;
        *&v43 = v27;
        *v26 = 136315394;
        *(v26 + 4) = sub_1E3270FC8(v8, v6, &v43);
        *(v26 + 12) = 1024;
        v29 = v38;
        *(v26 + 14) = v38 & 1;
        _os_log_impl(&dword_1E323F000, v23, v24, "ButtonViewFactory:%s event was handled %{BOOL}d", v26, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v28);
        v4 = v39;
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        (*(v13 + 8))(v19, v11);
        if (v29)
        {
          goto LABEL_15;
        }
      }

      else
      {

        (*(v13 + 8))(v19, v11);
        if (v21)
        {
          goto LABEL_15;
        }
      }

      if (v4)
      {
        *(&v44 + 1) = v20;
        *&v43 = v40;
        v36 = v40;
        v4(&v43);

        goto LABEL_11;
      }

LABEL_15:

      goto LABEL_16;
    }
  }

  else
  {
    sub_1E325F6F0(&v43, &unk_1ECF296E0, &unk_1E4298030);
  }

  v30 = sub_1E324FBDC();
  (*(v13 + 16))(v16, v30, v11);

  v31 = sub_1E41FFC94();
  v32 = sub_1E4206814();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = v4;
    v35 = OUTLINED_FUNCTION_100();
    *&v43 = v35;
    *v33 = 136315138;
    *(v33 + 4) = sub_1E3270FC8(v8, v6, &v43);
    _os_log_impl(&dword_1E323F000, v31, v32, "ButtonViewFactory:%s button is invalid, invoking original handler", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    v4 = v34;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v13 + 8))(v16, v11);
  if (v4)
  {
    v43 = 0u;
    v44 = 0u;
    v4(&v43);
LABEL_11:
    sub_1E325F6F0(&v43, &unk_1ECF296E0, &unk_1E4298030);
  }

LABEL_16:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F8A898(uint64_t a1, uint64_t a2, uint64_t a3, id a4)
{
  (*(*a2 + 1784))();
  OUTLINED_FUNCTION_13_5();
  if (v20)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_1E3BC0C44(v7, v8, v9);
  }

  if (a4 && (objc_opt_self(), (v11 = swift_dynamicCastObjCClass()) != 0))
  {
    v12 = v11;
    v13 = a4;
  }

  else
  {
    v12 = [objc_allocWithZone(VUIUpNextButton) initWithType:v10 interfaceStyle:a3];
    if (!a4)
    {
      goto LABEL_10;
    }
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    [v14 setStateDidChangeHandler_];
  }

LABEL_10:
  v94 = [v12 properties];
  LOBYTE(v96) = 4;
  v15 = *(*a1 + 776);
  v16 = OUTLINED_FUNCTION_48_50();
  (v15)(v16, &unk_1F5D5D0A8, &off_1F5D5C758);
  if (!*(&v99 + 1))
  {
    sub_1E325F6F0(&aBlock, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_47_53();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v17 = a1;
  v18 = sub_1E3F8BA40(v94);
  if (v19)
  {
    v20 = v18 == v96 && v19 == v97;
    if (v20)
    {

LABEL_22:

      goto LABEL_23;
    }

    v21 = OUTLINED_FUNCTION_97_0(v18, v19, v96);

    if (v21)
    {
      goto LABEL_22;
    }
  }

  [v94 removeNotificationObserver];
  sub_1E37FB7F0(v96, v97, v94, &selRef_setCanonicalID_);
  [v94 setupNotificationObserver];
LABEL_23:
  a1 = v17;
LABEL_24:
  *(&v99 + 1) = &unk_1F5D5D0A8;
  v100 = &off_1F5D5C758;
  LOBYTE(aBlock) = 19;
  v22 = j__OUTLINED_FUNCTION_18();
  v23 = sub_1E39C29F0(&aBlock, v22 & 1);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  if (v23)
  {
    [v94 setRemoveTitleForSquareAspectRatio_];
  }

  LOBYTE(v96) = 5;
  v24 = OUTLINED_FUNCTION_48_50();
  v15(v24);
  if (*(&v99 + 1))
  {
    OUTLINED_FUNCTION_47_53();
    if (OUTLINED_FUNCTION_21_4())
    {
      v25 = sub_1E4205F14();
      if (v96 == v25 && v97 == v26)
      {
        v28 = 1;
      }

      else
      {
        v28 = OUTLINED_FUNCTION_97_0(v96, v97, v25);
      }

      [v94 setIsWatchListed_];
    }
  }

  else
  {
    sub_1E325F6F0(&aBlock, &unk_1ECF296E0, &unk_1E4298030);
  }

  v29 = OUTLINED_FUNCTION_48_50();
  v15(v29);
  if (*(&v99 + 1))
  {
    OUTLINED_FUNCTION_47_53();
    v30 = v94;
    if (OUTLINED_FUNCTION_21_4())
    {
      [v94 setDismissOnSelect_];
    }
  }

  else
  {
    sub_1E325F6F0(&aBlock, &unk_1ECF296E0, &unk_1E4298030);
    v30 = v94;
  }

  [v12 setProperties_];
  v90 = v12;
  v31 = [v30 setDelegate_];
  v32 = (*a2 + 2096);
  v33 = *v32;
  (*v32)(v31);
  OUTLINED_FUNCTION_30();
  (*(v34 + 200))();
  v36 = v35;

  (v33)(v37);
  OUTLINED_FUNCTION_2_1();
  (*(v38 + 304))();
  v40 = v39;

  v42 = (*(*a1 + 464))(v41);
  if (!v42)
  {
    goto LABEL_72;
  }

  v43 = v42;
  result = sub_1E32AE9B0(v42);
  if (!result)
  {
LABEL_71:

LABEL_72:
    [v30 updateButtonContentView];
    OUTLINED_FUNCTION_4_0();
    v83 = swift_allocObject();
    swift_weakInit();
    v100 = sub_1E3F8BB58;
    v101 = v83;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v99 = sub_1E37C0588;
    *(&v99 + 1) = &block_descriptor_43_3;
    v84 = _Block_copy(&aBlock);
    v85 = v90;

    [v85 setSelectActionHandler_];
    _Block_release(v84);

    OUTLINED_FUNCTION_4_0();
    v86 = swift_allocObject();
    swift_weakInit();
    v100 = sub_1E3F8BE58;
    v101 = v86;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v99 = sub_1E37C0588;
    *(&v99 + 1) = &block_descriptor_47_0;
    v87 = _Block_copy(&aBlock);

    [v85 setStateDidChangeHandler_];
    _Block_release(v87);

    return v90;
  }

  v45 = result;
  if (result >= 1)
  {
    v46 = 0;
    v47 = v43 & 0xC000000000000001;
    HIDWORD(v88) = v36 & 1;
    LODWORD(v88) = v40 & 1;
    v92 = v43;
    v93 = result;
    v89 = v43 & 0xC000000000000001;
    do
    {
      if (v47)
      {
        v48 = MEMORY[0x1E6911E60](v46, v43);
      }

      else
      {
        v48 = *(v43 + 8 * v46 + 32);
      }

      LOBYTE(v96) = 28;
      v49 = OUTLINED_FUNCTION_48_50();
      v50(v49, &unk_1F5D5DAC8, &off_1F5D5C998);
      if (*(&v99 + 1))
      {
        OUTLINED_FUNCTION_47_53();
        if (swift_dynamicCast())
        {
          v51 = sub_1E4205F14();
          if (v96 == v51 && v97 == v52)
          {

            v56 = 0;
            v55 = &selRef_addedStateView;
          }

          else
          {
            v54 = OUTLINED_FUNCTION_97_0(v96, v97, v51);

            v55 = &selRef_removedStateView;
            if (v54)
            {
              v55 = &selRef_addedStateView;
            }

            v56 = v54 ^ 1;
          }

          v57 = [v30 *v55];
          if (*v48 == _TtC8VideosUI13TextViewModel)
          {
            v58 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
            v59 = [v57 label];
            v100 = 0;
            aBlock = 0u;
            v99 = 0u;
            v60 = (*(*a2 + 2048))();
            v61 = sub_1E393D9C4(v48, v59, &aBlock, v60);

            sub_1E325F6F0(&aBlock, &qword_1ECF296C0, &unk_1E429BBE0);
            if (v61)
            {
              objc_opt_self();
              OUTLINED_FUNCTION_20_2();
              v62 = swift_dynamicCastObjCClass();
              v43 = v92;
              v45 = v93;
              if (!v62)
              {
              }
            }

            else
            {
              v62 = 0;
              v43 = v92;
              v45 = v93;
            }

            [v57 setLabel_];
          }

          else
          {
            type metadata accessor for ImageViewModel();
            v63 = swift_dynamicCastClass();
            if (v63)
            {
              v64 = v63;
              sub_1E3F86AE0();
              v33();
              OUTLINED_FUNCTION_30();
              v66 = (*(v65 + 200))();
              v91 = v64;
              LOBYTE(v64) = v67;

              *&aBlock = v66;
              BYTE8(aBlock) = v64 & 1;
              MEMORY[0x1EEE9AC00](v68);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40, &qword_1E429EC80);
              v69 = sub_1E4148DE0(sub_1E3F8BFFC);
              (v33)(v69);
              OUTLINED_FUNCTION_2_1();
              v71 = (*(v70 + 304))();
              v73 = v72;

              *&aBlock = v71;
              v75 = v73 & 1;
              v30 = v94;
              BYTE8(aBlock) = v75;
              MEMORY[0x1EEE9AC00](v74);
              v76 = sub_1E4148DE0(sub_1E3F8C098);
              v77 = (v33)(v76);
              v78 = sub_1E37E9528(v91, v77);

              [v57 setImage_];
              if ((v56 & 1) != [v94 isWatchListed])
              {
                v79 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
                v80 = [v94 currentImageView];
                v100 = 0;
                aBlock = 0u;
                v99 = 0u;
                v81 = (v33)();
                v82 = sub_1E393D9C4(v91, v80, &aBlock, v81);

                v30 = v94;

                sub_1E325F6F0(&aBlock, &qword_1ECF296C0, &unk_1E429BBE0);
                [v94 setCurrentImageView_];
              }

              v43 = v92;
              v45 = v93;
              v47 = v89;
            }

            else
            {

              v45 = v93;
            }
          }
        }

        else
        {
        }
      }

      else
      {

        sub_1E325F6F0(&aBlock, &unk_1ECF296E0, &unk_1E4298030);
      }

      ++v46;
    }

    while (v45 != v46);
    goto LABEL_71;
  }

  __break(1u);
  return result;
}