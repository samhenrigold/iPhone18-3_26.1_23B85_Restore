void sub_261FF97CC()
{
  OUTLINED_FUNCTION_96();
  v4 = v0;
  v6 = v5;
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_60_2();
  type metadata accessor for TunnelEndpoint.State(0, v8, *(v7 + 88), v9);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14();
  v11 = &unk_28108B000;
  if (v6)
  {
    v12 = v6;
    v13 = sub_26203A48C();
    if (qword_28108B618 != -1)
    {
      OUTLINED_FUNCTION_0_27();
      swift_once();
    }

    v14 = qword_28108B620;
    if (os_log_type_enabled(qword_28108B620, v13))
    {
      OUTLINED_FUNCTION_57_1();
      swift_slowAlloc();
      OUTLINED_FUNCTION_57_2();
      v94[0] = swift_slowAlloc();
      *v2 = 136446466;
      *(v2 + 4) = sub_261F67FE4(*(v4 + 16), *(v4 + 24), v94);
      *(v2 + 12) = 2082;
      v95 = v6;
      v15 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
      v16 = sub_26203A20C();
      v3 = sub_261F67FE4(v16, v17, v94);

      *(v2 + 14) = v3;
      _os_log_impl(&dword_261F5B000, v14, v13, "%{public}s: Cancelling TunnelEndpoint due to error %{public}s", v2, 0x16u);
      swift_arrayDestroy();
      v18 = OUTLINED_FUNCTION_16_3();
      MEMORY[0x266724180](v18);
      v19 = OUTLINED_FUNCTION_24_5();
      MEMORY[0x266724180](v19);
    }
  }

  else
  {
    v20 = sub_26203A4AC();
    if (qword_28108B618 != -1)
    {
      OUTLINED_FUNCTION_0_27();
      swift_once();
    }

    v14 = qword_28108B620;
    if (os_log_type_enabled(qword_28108B620, v20))
    {
      OUTLINED_FUNCTION_42_1();
      v21 = swift_slowAlloc();
      OUTLINED_FUNCTION_30();
      v22 = swift_slowAlloc();
      v94[0] = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_261F67FE4(*(v4 + 16), *(v4 + 24), v94);
      _os_log_impl(&dword_261F5B000, v14, v20, "%{public}s: Cancelling TunnelEndpoint", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      v23 = OUTLINED_FUNCTION_16_3();
      MEMORY[0x266724180](v23);
      v24 = OUTLINED_FUNCTION_24_5();
      MEMORY[0x266724180](v24);
    }
  }

  v25 = sub_26203A4AC();
  if (qword_28108B618 != -1)
  {
    OUTLINED_FUNCTION_0_27();
    swift_once();
  }

  if (os_log_type_enabled(v14, v25))
  {
    OUTLINED_FUNCTION_57_1();
    v26 = swift_slowAlloc();
    OUTLINED_FUNCTION_56();
    v27 = swift_slowAlloc();
    OUTLINED_FUNCTION_251(v27);
    *v26 = 136446466;
    v28 = sub_261F7C884();
    OUTLINED_FUNCTION_219(v28, v29);
    OUTLINED_FUNCTION_154_0();

    *(v26 + 4) = v3;
    *(v26 + 12) = 2080;
    v30 = sub_261FF22B0();
    sub_261FF9FA0(v30, v31);
    OUTLINED_FUNCTION_154_0();

    v32 = MEMORY[0x266722880](v3, MEMORY[0x277D837D0]);
    v11 = v33;

    v34 = OUTLINED_FUNCTION_131();
    sub_261F67FE4(v34, v35, v36);
    OUTLINED_FUNCTION_67_2();

    *(v26 + 14) = v32;
    _os_log_impl(&dword_261F5B000, v14, v25, "%{public}s recent events prior to cancellation: %s", v26, 0x16u);
    OUTLINED_FUNCTION_186_0();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
    v37 = OUTLINED_FUNCTION_16_3();
    MEMORY[0x266724180](v37);
  }

  v38 = sub_26203A4AC();
  if (OUTLINED_FUNCTION_222(v38))
  {
    OUTLINED_FUNCTION_57_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_57_2();
    v39 = swift_slowAlloc();
    OUTLINED_FUNCTION_251(v39);
    *v25 = 136446466;
    v40 = sub_261F7C884();
    OUTLINED_FUNCTION_219(v40, v41);
    OUTLINED_FUNCTION_73_2();

    OUTLINED_FUNCTION_192();
    v42 = sub_261FF2300();
    sub_261FF9FA0(v42, v43);
    OUTLINED_FUNCTION_73_2();

    v44 = MEMORY[0x266722880](v11, MEMORY[0x277D837D0]);
    v3 = v45;

    v46 = OUTLINED_FUNCTION_45_0();
    sub_261F67FE4(v46, v47, v48);
    OUTLINED_FUNCTION_263();

    *(v25 + 14) = v44;
    OUTLINED_FUNCTION_169_0(&dword_261F5B000, v49, v50, "%{public}s recent incoming packet flow events prior to cancellation: %s");
    OUTLINED_FUNCTION_186_0();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
    v51 = OUTLINED_FUNCTION_24_5();
    MEMORY[0x266724180](v51);
  }

  v52 = sub_26203A4AC();
  if (OUTLINED_FUNCTION_222(v52))
  {
    OUTLINED_FUNCTION_57_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_57_2();
    v53 = swift_slowAlloc();
    OUTLINED_FUNCTION_251(v53);
    *v25 = 136446466;
    v54 = sub_261F7C884();
    OUTLINED_FUNCTION_219(v54, v55);
    OUTLINED_FUNCTION_73_2();

    OUTLINED_FUNCTION_192();
    v56 = sub_261FF2350();
    sub_261FF9FA0(v56, v57);
    OUTLINED_FUNCTION_73_2();

    v58 = MEMORY[0x266722880](v11, MEMORY[0x277D837D0]);
    v3 = v59;

    v60 = OUTLINED_FUNCTION_45_0();
    sub_261F67FE4(v60, v61, v62);
    OUTLINED_FUNCTION_263();

    *(v25 + 14) = v58;
    OUTLINED_FUNCTION_169_0(&dword_261F5B000, v63, v64, "%{public}s recent incoming packet flow events prior to cancellation: %s");
    OUTLINED_FUNCTION_186_0();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
    v65 = OUTLINED_FUNCTION_24_5();
    MEMORY[0x266724180](v65);
  }

  swift_storeEnumTagMultiPayload();
  sub_261FF2200(v1);
  sub_261FF258C();
  OUTLINED_FUNCTION_84();
  sub_261FF24AC();
  if (sub_261FF2534())
  {
    swift_getObjectType();
    sub_26203A61C();
    swift_unknownObjectRelease();
  }

  sub_261FF255C();
  if (v6 && (v66 = sub_261FF24D0()) != 0)
  {
    v67 = v66;
    v68 = v6;
    v69 = sub_26203A48C();
    if (OUTLINED_FUNCTION_222(v69))
    {
      OUTLINED_FUNCTION_57_1();
      swift_slowAlloc();
      OUTLINED_FUNCTION_57_2();
      v70 = swift_slowAlloc();
      OUTLINED_FUNCTION_251(v70);
      *v25 = 136446466;
      v71 = sub_261F7C884();
      OUTLINED_FUNCTION_219(v71, v72);
      OUTLINED_FUNCTION_154_0();

      *(v25 + 4) = v3;
      *(v25 + 12) = 2080;
      v95 = v6;
      v73 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
      v74 = sub_26203A20C();
      OUTLINED_FUNCTION_219(v74, v75);
      OUTLINED_FUNCTION_154_0();

      *(v25 + 14) = v3;
      OUTLINED_FUNCTION_169_0(&dword_261F5B000, v76, v77, "%{public}s: failed with error: %s");
      OUTLINED_FUNCTION_186_0();
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
      v78 = OUTLINED_FUNCTION_24_5();
      MEMORY[0x266724180](v78);
    }

    v67(v6);
    v79 = OUTLINED_FUNCTION_39_1();
    sub_261F665E4(v79, v80);
  }

  else
  {
    v81 = sub_26203A4AC();
    if (os_log_type_enabled(v14, v81))
    {
      OUTLINED_FUNCTION_42_1();
      v82 = swift_slowAlloc();
      OUTLINED_FUNCTION_30();
      v83 = swift_slowAlloc();
      v94[0] = v83;
      *v82 = 136446210;
      v84 = sub_261F7C884();
      OUTLINED_FUNCTION_219(v84, v85);
      OUTLINED_FUNCTION_142_0();

      *(v82 + 4) = v25;
      _os_log_impl(&dword_261F5B000, v14, v81, "%{public}s: cancelled", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v83);
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
    }
  }

  OUTLINED_FUNCTION_84();
  sub_261FF2510();
  v95 = MEMORY[0x277D84F90];
  v86 = sub_261FF2098();
  sub_261FF0078(v86);
  OUTLINED_FUNCTION_70();

  sub_261FFA278(v14);
  v87 = sub_261FF2178();
  v88 = sub_261FF0078(v87);

  sub_261FFA278(v88);
  v89 = sub_261FF21BC();
  sub_261FFA368(v89);
  v90 = v95[2];
  if (v90)
  {
    v91 = (v95 + 4);
    do
    {
      sub_261F79740(v91, v94);
      __swift_project_boxed_opaque_existential_0Tm(v94, v94[3]);
      v92 = OUTLINED_FUNCTION_18_5();
      v93(v92);
      __swift_destroy_boxed_opaque_existential_0Tm(v94);
      v91 += 40;
      --v90;
    }

    while (v90);
  }

  OUTLINED_FUNCTION_31_0();
}

void sub_261FF9FA0(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3 < a2)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_261FFAD44(a2, v3, result);
  if (a2 < 0)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  v10 = v7;
  v11 = sub_261FFAD44(0, a2, result);
  sub_261FFE218(v11, v12, v13, v14);
  v15 = v10 >> 1;
  v16 = MEMORY[0x277D84F90];
  v17 = v9;
  v18 = v9;
LABEL_4:
  v19 = (v8 - 16 + 16 * v17);
  while (v15 != v18)
  {
    if (v17 < v9 || v18 >= v15)
    {
      __break(1u);
      goto LABEL_18;
    }

    v21 = v19[3];
    ++v18;
    v19 += 2;
    if (v21)
    {
      v22 = *v19;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_261F67ABC();
        v16 = v25;
      }

      v23 = *(v16 + 16);
      if (v23 >= *(v16 + 24) >> 1)
      {
        sub_261F67ABC();
        v16 = v26;
      }

      *(v16 + 16) = v23 + 1;
      v24 = v16 + 16 * v23;
      *(v24 + 32) = v22;
      *(v24 + 40) = v21;
      v17 = v18;
      goto LABEL_4;
    }
  }

  swift_unknownObjectRelease();
}

void sub_261FFA16C(uint64_t a1)
{
  OUTLINED_FUNCTION_243();
  v5 = v4;
  v6 = *(v4 + 16);
  v7 = *(*v1 + 16);
  if (__OFADD__(v7, v6))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v3;
  sub_261FFB518(v7 + v6, 1, v2);
  v9 = *v1;
  if (!*(v5 + 16))
  {

    if (!v6)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  v8(0);
  if (v10 < v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_8:
    *v1 = v9;
    OUTLINED_FUNCTION_22_2();
    return;
  }

  v11 = *(v9 + 16);
  v12 = __OFADD__(v11, v6);
  v13 = v11 + v6;
  if (!v12)
  {
    *(v9 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_261FFA278(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_261FFB518(result, 1, sub_261FBA008);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void *sub_261FFA368(uint64_t a1)
{
  v6 = *(a1 + 16);
  v7 = *(*v2 + 16);
  result = (v7 + v6);
  if (__OFADD__(v7, v6))
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_261FFB518(result, 1, sub_261FBA008);
  v1 = *v2;
  v9 = *(*v2 + 16);
  v10 = (*(*v2 + 24) >> 1) - v9;
  result = sub_261FFDF50(v34, *v2 + 40 * v9 + 32, v10, a1);
  if (result < v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (result)
  {
    v12 = *(v1 + 16);
    v13 = __OFADD__(v12, result);
    v14 = result + v12;
    if (v13)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v1 + 16) = v14;
  }

  if (result != v10)
  {
    result = sub_261FFED8C(v34[0]);
LABEL_8:
    *v2 = v1;
    return result;
  }

LABEL_11:
  v4 = *(v1 + 16);
  v10 = v34[1];
  v11 = v35;
  v3 = v36;
  v26 = v34[0];
  if (v37)
  {
    v15 = (v37 - 1) & v37;
    v16 = __clz(__rbit64(v37)) | (v36 << 6);
    v17 = (v35 + 64) >> 6;
LABEL_19:
    sub_261F79740(*(v26 + 56) + 40 * v16, &v31);
LABEL_20:
    v20 = &qword_27FEFA288;
    while (2)
    {
      sub_261F674BC(&v31, &v29, v20, &qword_262044098);
      if (v30)
      {
        v21 = v20;
        sub_261F66E60(&v29, v20, &qword_262044098);
        v22 = *(v1 + 24) >> 1;
        if (v22 < v4 + 1)
        {
          sub_261FBA008();
          v1 = v25;
          v22 = *(v25 + 24) >> 1;
        }

LABEL_24:
        while (1)
        {
          sub_261F674BC(&v31, &v27, v21, &qword_262044098);
          if (!v28)
          {
            break;
          }

          sub_261F797BC(&v27, &v29);
          if (v4 >= v22)
          {
            __swift_destroy_boxed_opaque_existential_0Tm(&v29);
            v20 = v21;
            goto LABEL_36;
          }

          sub_261F66E60(&v31, v21, &qword_262044098);
          sub_261F797BC(&v29, v1 + 32 + 40 * v4++);
          if (!v15)
          {
            while (1)
            {
              v23 = v3 + 1;
              if (__OFADD__(v3, 1))
              {
                break;
              }

              if (v23 >= v17)
              {
                v15 = 0;
                v33 = 0;
                v31 = 0u;
                v32 = 0u;
                goto LABEL_24;
              }

              v15 = *(v10 + 8 * v23);
              ++v3;
              if (v15)
              {
                v3 = v23;
                goto LABEL_32;
              }
            }

            __break(1u);
            goto LABEL_38;
          }

          v23 = v3;
LABEL_32:
          v24 = __clz(__rbit64(v15));
          v15 &= v15 - 1;
          sub_261F79740(*(v26 + 56) + 40 * (v24 | (v23 << 6)), &v31);
        }

        v20 = v21;
        sub_261F66E60(&v27, v21, &qword_262044098);
LABEL_36:
        *(v1 + 16) = v4;
        continue;
      }

      break;
    }

LABEL_38:
    sub_261F66E60(&v31, &qword_27FEFA288, &qword_262044098);
    sub_261FFED8C(v26);
    result = sub_261F66E60(&v29, &qword_27FEFA288, &qword_262044098);
    goto LABEL_8;
  }

LABEL_14:
  v17 = (v11 + 64) >> 6;
  while (1)
  {
    v18 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v18 >= v17)
    {
      v15 = 0;
      v33 = 0;
      v31 = 0u;
      v32 = 0u;
      goto LABEL_20;
    }

    v19 = *(v10 + 8 * v18);
    ++v3;
    if (v19)
    {
      v15 = (v19 - 1) & v19;
      v16 = __clz(__rbit64(v19)) | (v18 << 6);
      v3 = v18;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void sub_261FFA6C4()
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_60_2();
  type metadata accessor for TunnelEndpoint.State(0, v2, *(v1 + 88), v3);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_37();
  v5 = sub_26203A07C();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_74();
  v11 = (v10 - v9);
  *v11 = sub_261F6E294();
  (*(v7 + 104))(v11, *MEMORY[0x277D85200], v5);
  v12 = sub_26203A0AC();
  v14 = *(v7 + 8);
  v13 = v7 + 8;
  v14(v11, v5);
  if (v12)
  {
    LOBYTE(v11) = sub_26203A4AC();
    if (qword_28108B618 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_27();
  swift_once();
LABEL_3:
  v15 = qword_28108B620;
  if (os_log_type_enabled(qword_28108B620, v11))
  {
    OUTLINED_FUNCTION_57_1();
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_56();
    v13 = swift_slowAlloc();
    v56 = v13;
    *v12 = 136446466;
    v16 = sub_261F7C884();
    v18 = sub_261F67FE4(v16, v17, &v56);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;
    sub_261F798CC(v0);
    OUTLINED_FUNCTION_75();
    v19 = sub_26203A20C();
    v21 = sub_261F67FE4(v19, v20, &v56);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_261F5B000, v15, v11, "State dump: %{public}s has state %s", v12, 0x16u);
    swift_arrayDestroy();
    v22 = OUTLINED_FUNCTION_24_5();
    MEMORY[0x266724180](v22);
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  v23 = sub_26203A4AC();
  if (OUTLINED_FUNCTION_226(v23))
  {
    OUTLINED_FUNCTION_57_1();
    v24 = swift_slowAlloc();
    OUTLINED_FUNCTION_56();
    v56 = swift_slowAlloc();
    *v24 = 136446466;
    v25 = sub_261F7C884();
    OUTLINED_FUNCTION_303(v25, v26);
    OUTLINED_FUNCTION_238();
    OUTLINED_FUNCTION_190();
    v27 = sub_261FF22B0();
    sub_261FF9FA0(v27, v28);
    OUTLINED_FUNCTION_238();
    v29 = MEMORY[0x266722880](v13, MEMORY[0x277D837D0]);
    v31 = v30;

    v12 = sub_261F67FE4(v29, v31, &v56);

    *(v24 + 14) = v12;
    OUTLINED_FUNCTION_168_0(&dword_261F5B000, v32, v33, "State dump: %{public}s recently processed events: %s");
    OUTLINED_FUNCTION_220();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  v34 = sub_26203A4AC();
  if (OUTLINED_FUNCTION_226(v34))
  {
    OUTLINED_FUNCTION_57_1();
    v35 = swift_slowAlloc();
    OUTLINED_FUNCTION_56();
    v56 = swift_slowAlloc();
    *v35 = 136446466;
    v36 = sub_261F7C884();
    OUTLINED_FUNCTION_303(v36, v37);
    OUTLINED_FUNCTION_238();
    OUTLINED_FUNCTION_190();
    v38 = sub_261FF2300();
    sub_261FF9FA0(v38, v39);
    OUTLINED_FUNCTION_238();
    v40 = MEMORY[0x266722880](v13, MEMORY[0x277D837D0]);
    v42 = v41;

    v12 = sub_261F67FE4(v40, v42, &v56);

    *(v35 + 14) = v12;
    OUTLINED_FUNCTION_168_0(&dword_261F5B000, v43, v44, "State dump: %{public}s recently processed incoming packet flow events: %s");
    OUTLINED_FUNCTION_220();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  v45 = sub_26203A4AC();
  if (OUTLINED_FUNCTION_226(v45))
  {
    OUTLINED_FUNCTION_57_1();
    v46 = swift_slowAlloc();
    OUTLINED_FUNCTION_56();
    v56 = swift_slowAlloc();
    *v46 = 136446466;
    v47 = sub_261F7C884();
    OUTLINED_FUNCTION_303(v47, v48);
    OUTLINED_FUNCTION_238();
    OUTLINED_FUNCTION_190();
    v49 = sub_261FF2350();
    sub_261FF9FA0(v49, v50);
    OUTLINED_FUNCTION_65();

    v51 = MEMORY[0x266722880](v12, MEMORY[0x277D837D0]);
    v53 = v52;

    sub_261F67FE4(v51, v53, &v56);
    OUTLINED_FUNCTION_181_0();

    *(v46 + 14) = v51;
    OUTLINED_FUNCTION_168_0(&dword_261F5B000, v54, v55, "State dump: %{public}s recently processed outgoing packet flow events: %s");
    OUTLINED_FUNCTION_220();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  OUTLINED_FUNCTION_31_0();
}

unint64_t sub_261FFAD44(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_261FFADB0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a3)
    {
      v5 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A60, &unk_26203E650);
      v6 = sub_26203A3FC();
      *(v6 + 16) = a3;
      v7 = a3 - 1;
      for (i = 32; ; i += 16)
      {
        v9 = (v6 + i);
        *v9 = v5;
        v9[1] = a2;
        if (!v7)
        {
          break;
        }

        --v7;
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v6;
  }

  return result;
}

uint64_t sub_261FFAE58(void (*a1)(void *__return_ptr))
{
  a1(v2);
  MEMORY[0x266722710](v2[0], v2[1]);

  return 0x5F6E6F6374;
}

uint64_t (*sub_261FFAECC(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_261FFB4BC(v6);
  v6[9] = sub_261FFB060(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_261FFF854;
}

uint64_t (*sub_261FFAF64(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_261FFB4E4(v6);
  v6[9] = sub_261FFB26C(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_261FFAFFC;
}

void sub_261FFB000(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_261FFB060(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  v9 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v9;
  v9[2] = a3;
  v9[3] = v4;
  v9[1] = a2;
  v10 = *v4;
  v11 = sub_261FA3868(a2, a3);
  *(v9 + 40) = v12 & 1;
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FEFA3A0, &qword_26203F6A8);
  if (sub_26203A8EC())
  {
    v15 = sub_261FA3868(a2, a3);
    if ((v14 & 1) == (v16 & 1))
    {
      v13 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_26203AC9C();
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
  return sub_261FFB1A0;
}

void sub_261FFB1A0(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    if (v3)
    {
      *(*(*v1[3] + 56) + 8 * v4) = v2;
    }

    else
    {
      sub_261FA5004(v4);
    }
  }

  else if ((*a1)[5])
  {
    v5 = OUTLINED_FUNCTION_240();
    sub_261FA41D4(v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9D80, &unk_262044800);
    OUTLINED_FUNCTION_72();
    sub_26203A90C();
  }

  free(v1);
}

void (*sub_261FFB26C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1)
{
  v5 = v4;
  v9 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v9;
  v9[2] = a3;
  v9[3] = v4;
  v9[1] = a2;
  v10 = *v4;
  v11 = sub_261FA3868(a2, a3);
  *(v9 + 40) = v12 & 1;
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98B8, &qword_2620447C0);
  if (sub_26203A8EC())
  {
    v15 = sub_261FA3868(a2, a3);
    if ((v14 & 1) == (v16 & 1))
    {
      v13 = v15;
      goto LABEL_5;
    }

LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98B0, &unk_26203F690);
    result = sub_26203AC9C();
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
  return sub_261FFB3B8;
}

void sub_261FFB3B8(uint64_t a1)
{
  OUTLINED_FUNCTION_243();
  v2 = *v1;
  v3 = **v1;
  v4 = *(*v1 + 40);
  if (v3)
  {
    v5 = v2[4];
    v6 = *v2[3];
    if (v4)
    {
      *(*(v6 + 56) + 8 * v5) = v3;
    }

    else
    {
      sub_261FA5008(v5, v2[1], v2[2], v3, v6);
    }
  }

  else if ((*v1)[5])
  {
    OUTLINED_FUNCTION_240();
    OUTLINED_FUNCTION_153();
    sub_261F66E60(v7, v8, v9);
    v10 = OUTLINED_FUNCTION_39_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA278, &unk_26204AE90);
    OUTLINED_FUNCTION_11_9();
    OUTLINED_FUNCTION_153();
    sub_261F67F70(v12, v13, v14, v15);
    OUTLINED_FUNCTION_72();
    sub_26203A90C();
  }

  OUTLINED_FUNCTION_22_2();

  free(v16);
}

uint64_t (*sub_261FFB4BC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_261FFF7F8;
}

uint64_t (*sub_261FFB4E4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_261FFB50C;
}

uint64_t sub_261FFB518(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t sub_261FFB5BC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_261FFB518(result, 1, sub_261FB9C28);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 32 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_261FBA55C((v9 + 32 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_261FFB6D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = *(*v8 + 16);
  if (v9 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = __OFSUB__(1, v10);
  v12 = 1 - v10;
  if (v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v9 + v12;
  if (__OFADD__(v9, v12))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_261FFB518(result, 1, a7);
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_267();

  return a8();
}

void sub_261FFB7AC(uint64_t a1)
{
  OUTLINED_FUNCTION_243();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = *(*v1 + 16);
  if (v5 < v3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v2;
  v7 = v3 - v2;
  if (__OFSUB__(v3, v2))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = v2 - v3;
  if (__OFSUB__(0, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v5, v8))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_261FFB518(v5 - v7, 1, sub_261FB9CF4);
  v9 = *v1;
  v10 = *v1 + 32;
  v11 = (v10 + 32 * v6);
  OUTLINED_FUNCTION_72();
  swift_arrayDestroy();
  if (!v7)
  {
LABEL_10:
    *v1 = v9;
    OUTLINED_FUNCTION_22_2();
    return;
  }

  v12 = *(v9 + 16);
  if (__OFSUB__(v12, v4))
  {
    goto LABEL_16;
  }

  sub_261FBA55C((v10 + 32 * v4), v12 - v4, v11);
  v13 = *(v9 + 16);
  v14 = __OFADD__(v13, v8);
  v15 = v13 - v7;
  if (!v14)
  {
    *(v9 + 16) = v15;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_261FFB890(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_261FFB518(v4 - v6, 1, sub_261FB9EF8);
  v8 = *v2;
  v9 = *(type metadata accessor for TunnelMessage(0) - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * result;
  swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  sub_261FBA594(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_261FFB9D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = *v7;
  v15 = (v14 + 32 + 32 * result);
  result = swift_arrayDestroy();
  v16 = a3 - v8;
  if (__OFSUB__(a3, v8))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = *(v14 + 16);
  if (__OFSUB__(v17, a2))
  {
    goto LABEL_16;
  }

  result = sub_261FBA55C((v14 + 32 + 32 * a2), v17 - a2, &v15[4 * a3]);
  v18 = *(v14 + 16);
  v19 = __OFADD__(v18, v16);
  v20 = v18 + v16;
  if (v19)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v14 + 16) = v20;
LABEL_7:
  if (a3 < 1)
  {
  }

  else
  {
    *v15 = a4;
    v15[1] = a5;
    v15[2] = a6;
    v15[3] = a7;
    if (v15 + 4 < &v15[4 * a3])
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_261FFBB14(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = *v7;
  v15 = (v14 + 32 + 32 * result);
  result = swift_arrayDestroy();
  v16 = a3 - v8;
  if (__OFSUB__(a3, v8))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = *(v14 + 16);
  if (__OFSUB__(v17, a2))
  {
    goto LABEL_16;
  }

  result = sub_261FBA55C((v14 + 32 + 32 * a2), v17 - a2, &v15[4 * a3]);
  v18 = *(v14 + 16);
  v19 = __OFADD__(v18, v16);
  v20 = v18 + v16;
  if (v19)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v14 + 16) = v20;
LABEL_7:
  if (a3 < 1)
  {
    sub_261F6BFFC(a4, a5);
  }

  else
  {
    *v15 = a4;
    v15[1] = a5;
    v15[2] = a6;
    v15[3] = a7;
    if (v15 + 4 < &v15[4 * a3])
    {
      sub_261F6B73C(a4, a5);

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_261FFBC68(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A60, &unk_26203E650);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = *(v7 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_11;
  }

  result = sub_261F7DED0((v7 + 32 + 16 * a2), v11 - a2, (v8 + 16 * a3));
  v12 = *(v7 + 16);
  v9 = __OFADD__(v12, v10);
  v13 = v12 + v10;
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v7 + 16) = v13;
LABEL_7:
  if (a3 > 0)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_261FFBD4C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_261FFED94(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_261FFBF48(v6);
  *a1 = v2;
  return result;
}

char *sub_261FFBDB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_261FBA44C(*(a1 + 16), 0);
  v4 = sub_261FFDE00(&v7, v3 + 2, v1, a1);
  v5 = v7;

  sub_261FFED8C(v5);
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_261FFBE74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9AC8, &qword_262040310);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 96);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_261FFBF48(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26203AB9C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_26203A3FC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_261FFC138(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_261FFC03C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_261FFC03C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v22 = a2;
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 48 * a3;
    v7 = result - a3;
    while (2)
    {
      v8 = v7;
      v9 = v6;
      do
      {
        sub_261FA5688(v9, v20);
        v10 = v9 - 3;
        sub_261FA5688((v9 - 3), v18);
        v11 = v21;
        v12 = v19;
        sub_261FFEDE8(v18);
        result = sub_261FFEDE8(v20);
        if (v12 >= v11)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return result;
        }

        v14 = v9[1];
        v13 = v9[2];
        v15 = *v9;
        v16 = *(v9 - 2);
        *v9 = *v10;
        v9[1] = v16;
        v9[2] = *(v9 - 1);
        *v10 = v15;
        *(v9 - 2) = v14;
        v9 -= 3;
        v10[2] = v13;
      }

      while (!__CFADD__(v8++, 1));
      ++v4;
      v6 += 48;
      --v7;
      if (v4 != v22)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_261FFC138(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v112 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_95:
    v107 = *a1;
    if (!*a1)
    {
      goto LABEL_136;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_97:
      v103 = v8;
      v91 = (v8 + 16);
      v92 = *(v8 + 16);
      v8 = 48;
      while (v92 >= 2)
      {
        if (!*v112)
        {
          goto LABEL_133;
        }

        v93 = (v103 + 16 * v92);
        v94 = *v93;
        v95 = &v91[2 * v92];
        v96 = v95[1];
        sub_261FFC7C0((*v112 + 48 * *v93), (*v112 + 48 * *v95), (*v112 + 48 * v96), v107);
        if (v5)
        {
          break;
        }

        if (v96 < v94)
        {
          goto LABEL_121;
        }

        if (v92 - 2 >= *v91)
        {
          goto LABEL_122;
        }

        *v93 = v94;
        v93[1] = v96;
        v97 = *v91 - v92;
        if (*v91 < v92)
        {
          goto LABEL_123;
        }

        v92 = *v91 - 1;
        memmove(v95, v95 + 2, 16 * v97);
        *v91 = v92;
      }

LABEL_105:

      return;
    }

LABEL_130:
    v8 = sub_261FFC9D0(v8);
    goto LABEL_97;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v101 = v8;
      v10 = *v112;
      sub_261FA5688(*v112 + 48 * v7, v110);
      v11 = 48 * v9;
      sub_261FA5688(v10 + 48 * v9, v108);
      v104 = v109;
      v107 = v111;
      sub_261FFEDE8(v108);
      sub_261FFEDE8(v110);
      v8 = v10 + 48 * v9 + 96;
      v12 = v9 + 2;
      while (1)
      {
        v13 = v12;
        if (++v7 >= v6)
        {
          break;
        }

        sub_261FA5688(v8, v110);
        sub_261FA5688(v8 - 48, v108);
        v14 = v5;
        v15 = v111;
        v16 = v109;
        sub_261FFEDE8(v108);
        sub_261FFEDE8(v110);
        v17 = v16 < v15;
        v5 = v14;
        v18 = !v17;
        v19 = (v104 < v107) ^ v18;
        v8 += 48;
        v12 = v13 + 1;
        if ((v19 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v7 = v6;
LABEL_12:
      if (v104 >= v107)
      {
        v8 = v101;
      }

      else
      {
        if (v7 < v9)
        {
          goto LABEL_127;
        }

        if (v9 >= v7)
        {
          v8 = v101;
        }

        else
        {
          if (v6 >= v13)
          {
            v20 = v13;
          }

          else
          {
            v20 = v6;
          }

          v21 = 48 * v20 - 48;
          v22 = v7;
          v23 = v9;
          v8 = v101;
          do
          {
            if (v23 != --v22)
            {
              v24 = *v112;
              if (!*v112)
              {
                goto LABEL_134;
              }

              v25 = (v24 + v11);
              v26 = (v24 + v21);
              v27 = *v25;
              v28 = v25[1];
              v29 = v25[2];
              v31 = v26[1];
              v30 = v26[2];
              *v25 = *v26;
              v25[1] = v31;
              v25[2] = v30;
              v26[1] = v28;
              v26[2] = v29;
              *v26 = v27;
            }

            ++v23;
            v21 -= 48;
            v11 += 48;
          }

          while (v23 < v22);
        }
      }
    }

    v32 = v112[1];
    if (v7 < v32)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_126;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_42:
    if (v7 < v9)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_261FB9F34();
      v8 = v89;
    }

    v47 = *(v8 + 16);
    v48 = v47 + 1;
    if (v47 >= *(v8 + 24) >> 1)
    {
      sub_261FB9F34();
      v8 = v90;
    }

    *(v8 + 16) = v48;
    v49 = v8 + 32;
    v50 = (v8 + 32 + 16 * v47);
    *v50 = v9;
    v50[1] = v7;
    v107 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    if (v47)
    {
      v106 = v7;
      while (1)
      {
        v51 = v48 - 1;
        v52 = (v49 + 16 * (v48 - 1));
        v53 = (v8 + 16 * v48);
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v54 = *(v8 + 32);
          v55 = *(v8 + 40);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_63:
          if (v57)
          {
            goto LABEL_112;
          }

          v69 = *v53;
          v68 = v53[1];
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_115;
          }

          v73 = v52[1];
          v74 = v73 - *v52;
          if (__OFSUB__(v73, *v52))
          {
            goto LABEL_118;
          }

          if (__OFADD__(v71, v74))
          {
            goto LABEL_120;
          }

          if (v71 + v74 >= v56)
          {
            if (v56 < v74)
            {
              v51 = v48 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        if (v48 < 2)
        {
          goto LABEL_114;
        }

        v76 = *v53;
        v75 = v53[1];
        v64 = __OFSUB__(v75, v76);
        v71 = v75 - v76;
        v72 = v64;
LABEL_78:
        if (v72)
        {
          goto LABEL_117;
        }

        v78 = *v52;
        v77 = v52[1];
        v64 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v64)
        {
          goto LABEL_119;
        }

        if (v79 < v71)
        {
          goto LABEL_92;
        }

LABEL_85:
        if (v51 - 1 >= v48)
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
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
          goto LABEL_129;
        }

        if (!*v112)
        {
          goto LABEL_132;
        }

        v83 = (v49 + 16 * (v51 - 1));
        v84 = *v83;
        v85 = v51;
        v86 = (v49 + 16 * v51);
        v87 = v86[1];
        sub_261FFC7C0((*v112 + 48 * *v83), (*v112 + 48 * *v86), (*v112 + 48 * v87), v107);
        if (v5)
        {
          goto LABEL_105;
        }

        if (v87 < v84)
        {
          goto LABEL_107;
        }

        v5 = v49;
        v88 = v8;
        v8 = *(v8 + 16);
        if (v85 > v8)
        {
          goto LABEL_108;
        }

        *v83 = v84;
        v83[1] = v87;
        if (v85 >= v8)
        {
          goto LABEL_109;
        }

        v48 = v8 - 1;
        memmove(v86, v86 + 2, 16 * (v8 - 1 - v85));
        *(v88 + 16) = v8 - 1;
        v17 = v8 > 2;
        v8 = v88;
        v49 = v5;
        v5 = 0;
        v7 = v106;
        if (!v17)
        {
          goto LABEL_92;
        }
      }

      v58 = v49 + 16 * v48;
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_110;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_111;
      }

      v65 = v53[1];
      v66 = v65 - *v53;
      if (__OFSUB__(v65, *v53))
      {
        goto LABEL_113;
      }

      v64 = __OFADD__(v56, v66);
      v67 = v56 + v66;
      if (v64)
      {
        goto LABEL_116;
      }

      if (v67 >= v61)
      {
        v81 = *v52;
        v80 = v52[1];
        v64 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v64)
        {
          goto LABEL_124;
        }

        if (v56 < v82)
        {
          v51 = v48 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_63;
    }

LABEL_92:
    v6 = v112[1];
    if (v7 >= v6)
    {
      goto LABEL_95;
    }
  }

  v33 = (v9 + a4);
  if (__OFADD__(v9, a4))
  {
    goto LABEL_128;
  }

  if (v33 >= v32)
  {
    v33 = v112[1];
  }

  if (v33 < v9)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v7 == v33)
  {
    goto LABEL_42;
  }

  v102 = v8;
  v105 = v5;
  v34 = *v112;
  v35 = *v112 + 48 * v7;
  v99 = v9;
  v36 = v9 - v7;
  v107 = v33;
LABEL_35:
  v37 = v36;
  v38 = v35;
  while (1)
  {
    sub_261FA5688(v38, v110);
    v39 = v38 - 3;
    sub_261FA5688((v38 - 3), v108);
    v40 = v111;
    v41 = v109;
    sub_261FFEDE8(v108);
    sub_261FFEDE8(v110);
    if (v41 >= v40)
    {
LABEL_40:
      ++v7;
      v35 += 48;
      --v36;
      if (v7 == v107)
      {
        v7 = v107;
        v8 = v102;
        v5 = v105;
        v9 = v99;
        goto LABEL_42;
      }

      goto LABEL_35;
    }

    if (!v34)
    {
      break;
    }

    v43 = v38[1];
    v42 = v38[2];
    v44 = *v38;
    v45 = *(v38 - 2);
    *v38 = *v39;
    v38[1] = v45;
    v38[2] = *(v38 - 1);
    *v39 = v44;
    *(v38 - 2) = v43;
    v38 -= 3;
    v39[2] = v42;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_40;
    }
  }

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
}

uint64_t sub_261FFC7C0(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 48;
  v9 = (a3 - a2) / 48;
  if (v8 < v9)
  {
    sub_261FBA66C(a1, (a2 - a1) / 48, a4);
    v10 = &v4[48 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      sub_261FA5688(v6, v33);
      sub_261FA5688(v4, v31);
      v12 = v34;
      v13 = v32;
      sub_261FFEDE8(v31);
      sub_261FFEDE8(v33);
      if (v13 >= v12)
      {
        break;
      }

      v14 = v6;
      v15 = v7 == v6;
      v6 += 48;
      if (!v15)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 48;
    }

    v14 = v4;
    v15 = v7 == v4;
    v4 += 48;
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *v14;
    v17 = *(v14 + 2);
    *(v7 + 1) = *(v14 + 1);
    *(v7 + 2) = v17;
    *v7 = v16;
    goto LABEL_13;
  }

  sub_261FBA66C(a2, (a3 - a2) / 48, a4);
  v18 = &v4[48 * v9];
LABEL_15:
  v19 = v6 - 48;
  v5 -= 48;
  for (i = v18 - 48; ; i -= 48)
  {
    v10 = i + 48;
    if (i + 48 <= v4 || v6 <= v7)
    {
      break;
    }

    sub_261FA5688(i, v33);
    sub_261FA5688((v6 - 48), v31);
    v22 = v34;
    v23 = v32;
    sub_261FFEDE8(v31);
    sub_261FFEDE8(v33);
    if (v23 < v22)
    {
      v18 = i + 48;
      v15 = v5 + 48 == v6;
      v6 -= 48;
      if (!v15)
      {
        v26 = *v19;
        v27 = *(v19 + 2);
        *(v5 + 1) = *(v19 + 1);
        *(v5 + 2) = v27;
        *v5 = v26;
        v6 = v19;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 48)
    {
      v24 = *i;
      v25 = *(i + 2);
      *(v5 + 1) = *(i + 1);
      *(v5 + 2) = v25;
      *v5 = v24;
    }

    v5 -= 48;
  }

LABEL_28:
  v28 = (v10 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v28])
  {
    memmove(v6, v4, 48 * v28);
  }

  return 1;
}

char *sub_261FFC9E4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A48, &qword_2620402B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

unint64_t sub_261FFCB08()
{
  result = qword_27FEFA2C8;
  if (!qword_27FEFA2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA2C8);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void sub_261FFCCBC(uint64_t a1)
{
  v2 = *(a1 + 80);
  sub_26203A6DC();
  if (v3 <= 0x3F)
  {
    sub_261FFD454(319, &unk_28108B380, MEMORY[0x277CD8C88]);
    if (v5 <= 0x3F)
    {
      type metadata accessor for TunnelEndpoint.State(319, v2, *(a1 + 88), v4);
      if (v6 <= 0x3F)
      {
        sub_261FFD454(319, qword_28108B8C8, type metadata accessor for TunnelInterfaceParameters);
        if (v7 <= 0x3F)
        {
          swift_initClassMetadata2();
        }
      }
    }
  }
}

void sub_261FFD454(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26203A6DC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_261FFD4A8(uint64_t a1)
{
  sub_261FFD51C();
  if (v1 <= 0x3F)
  {
    sub_261FFD544(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_261FFD51C()
{
  result = qword_28108B300;
  if (!qword_28108B300)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_28108B300);
  }

  return result;
}

void sub_261FFD544(uint64_t a1)
{
  if (!qword_28108B308)
  {
    sub_26203965C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28108B308);
    }
  }
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

uint64_t sub_261FFD5C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_261FFD604(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_261FFD660(uint64_t a1)
{
  sub_261FFD828();
  if (v2 <= 0x3F)
  {
    sub_261FFD8CC(319, &qword_28108C788);
    if (v3 <= 0x3F)
    {
      sub_261FFD8CC(319, &qword_28108C778);
      if (v5 <= 0x3F)
      {
        type metadata accessor for TunnelEndpoint.State(319, *(a1 + 16), *(a1 + 24), v4);
        if (v6 <= 0x3F)
        {
          sub_261FFD954(319, &qword_28108C7A8, &protocol descriptor for TunnelConnection);
          if (v7 <= 0x3F)
          {
            sub_261FFD8CC(319, &qword_28108C7A0);
            if (v8 <= 0x3F)
            {
              sub_261FFD8CC(319, &unk_28108C790);
              if (v9 <= 0x3F)
              {
                sub_261FFD850(319);
                if (v10 <= 0x3F)
                {
                  sub_261FFD8CC(319, &qword_28108C780);
                  if (v11 <= 0x3F)
                  {
                    sub_261FFD954(319, &qword_28108B268, MEMORY[0x277D84948]);
                    if (v12 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_261FFD828()
{
  result = qword_28108B240;
  if (!qword_28108B240)
  {
    result = MEMORY[0x277D84C58];
    atomic_store(MEMORY[0x277D84C58], &qword_28108B240);
  }

  return result;
}

void sub_261FFD850(uint64_t a1)
{
  if (!qword_28108B260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEF9A90, &unk_26203EB50);
    sub_26203965C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28108B260);
    }
  }
}

void sub_261FFD8CC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FEF95D0, &qword_26203E5F0);
    v3 = OUTLINED_FUNCTION_75();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    OUTLINED_FUNCTION_131();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_261FFD954(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TunnelConnectionType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for TunnelConnectionType.SinglePathCodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_261FFDB44()
{
  result = qword_27FEFA2F0;
  if (!qword_27FEFA2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA2F0);
  }

  return result;
}

unint64_t sub_261FFDB9C()
{
  result = qword_27FEFA2F8;
  if (!qword_27FEFA2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA2F8);
  }

  return result;
}

unint64_t sub_261FFDBF4()
{
  result = qword_27FEFA300;
  if (!qword_27FEFA300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA300);
  }

  return result;
}

unint64_t sub_261FFDC4C()
{
  result = qword_27FEFA308;
  if (!qword_27FEFA308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA308);
  }

  return result;
}

unint64_t sub_261FFDCA4()
{
  result = qword_27FEFA310;
  if (!qword_27FEFA310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA310);
  }

  return result;
}

unint64_t sub_261FFDCFC()
{
  result = qword_27FEFA318;
  if (!qword_27FEFA318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA318);
  }

  return result;
}

unint64_t sub_261FFDD54()
{
  result = qword_27FEFA320;
  if (!qword_27FEFA320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA320);
  }

  return result;
}

unint64_t sub_261FFDDAC()
{
  result = qword_27FEFA328;
  if (!qword_27FEFA328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA328);
  }

  return result;
}

void *sub_261FFDE00(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
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
LABEL_19:
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
    goto LABEL_19;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
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
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            v13 = v15;
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

LABEL_14:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      result = sub_261FA5688(*(a4 + 56) + 48 * (v16 | (v13 << 6)), v19);
      v18 = v19[1];
      v17 = v19[2];
      *v11 = v19[0];
      v11[1] = v18;
      v11[2] = v17;
      v11 += 3;
      v12 = v14;
      if (v14 == v10)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_261FFDF50(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
LABEL_19:
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
    goto LABEL_19;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
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
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            v13 = v15;
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

LABEL_14:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_261F79740(*(a4 + 56) + 40 * (v16 | (v13 << 6)), v17);
      sub_261F797BC(v17, v18);
      result = sub_261F797BC(v18, v11);
      v11 += 40;
      v12 = v14;
      if (v14 == v10)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_261FFE0A8(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0 || (v5 = *v1, result = swift_isUniquelyReferenced_nonNull(), *v1 = v5, (result & 1) == 0))
  {
LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_261FBA2E8(v4 - v14, v2);
      if (v4 >= v14)
      {
        v15 = result;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A60, &unk_26203E650);
        swift_arrayInitWithCopy();
        sub_261F961E8(v15, v14);
        v5 = v16;
        v18 = v17;
        v20 = v19;
        v22 = v21;
        result = swift_unknownObjectRelease();
        v1[1] = v18;
        v1[2] = v20;
        v1[3] = v22;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v1[1];
  sub_26203AC5C();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);
  if (v8 + 16 * v6 + 16 * v7 != v9 + 16 * v10 + 32)
  {

    goto LABEL_9;
  }

  v11 = *(v9 + 24);

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_13:
      *v1 = v5;
      return result;
    }

    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_261FFE218(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_24;
  }

  v9 = result;
  result = sub_261FFE660((a4 >> 1) - a3);
  v11 = v4[2];
  v10 = v4[3];
  v12 = (v10 >> 1) - v11;
  if (__OFSUB__(v10 >> 1, v11))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v13 = v4[1] + 16 * v11 + 16 * v12;
  if ((v10 & 1) == 0)
  {
LABEL_8:
    v16 = v12;
    goto LABEL_10;
  }

  sub_26203AC5C();
  swift_unknownObjectRetain();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    v14 = MEMORY[0x277D84F90];
  }

  v15 = *(v14 + 16);
  if (v13 != v14 + 16 * v15 + 32)
  {

    goto LABEL_8;
  }

  v17 = *(v14 + 24);

  v18 = (v17 >> 1) - v15;
  v19 = __OFADD__(v12, v18);
  v16 = v12 + v18;
  if (v19)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_10:
  v20 = v16 - v12;
  if (__OFSUB__(v16, v12))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      v6 = 0;
      v5 = a3;
      goto LABEL_18;
    }

    goto LABEL_26;
  }

  if (v20 < v6)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A60, &unk_26203E650);
  swift_arrayInitWithCopy();
  if (v6 > 0)
  {
    result = (v12 + v6);
    if (__OFADD__(v12, v6))
    {
LABEL_29:
      __break(1u);
      return result;
    }

    sub_261FFE768(result);
  }

LABEL_18:
  if (v6 == v20)
  {
    v22[0] = v9;
    v22[1] = a2;
    v22[2] = a3;
    v22[3] = a4;
    v22[4] = v5;
    return sub_261FFE820(v22);
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

void sub_261FFE3EC(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *a1;
  v10 = *(*a1 + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = __OFSUB__(v14, v13);
  v15 = v14 - v13;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v33 = v15;
  v17 = (v9 + 32);
  v18 = v9 + 32 + 16 * a2;
  v31 = (v18 + 16 * a3);
  v19 = sub_261FFEC34(v7);
  v32 = v9;
  if (v19)
  {
    v20 = v19;
    v30 = v4[2];
    v21 = (v4[1] + 16 * v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A60, &unk_26203E650);
    swift_arrayDestroy();
    sub_261F7DED0(v21, a2, v17);
    swift_arrayDestroy();
    a4(v18, a3);
    sub_261F7DED0(&v21[16 * a2 + 16 * v33], v13, v31);
    swift_arrayDestroy();
    *(v20 + 16) = 0;
    v22 = v30;

LABEL_15:

    swift_unknownObjectRelease();
    sub_261F961E8(v32, v22);
    *v4 = v26;
    v4[1] = v27;
    v4[2] = v28;
    v4[3] = v29;
    return;
  }

  v22 = v4[2];
  v23 = v22 + a2;
  if (__OFADD__(v22, a2))
  {
    goto LABEL_21;
  }

  if (v23 < v22)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFSUB__(v23, v22))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A60, &unk_26203E650);
  swift_arrayInitWithCopy();
  a4(&v17[16 * a2], a3);
  v24 = v23 + v33;
  if (__OFADD__(v23, v33))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v25 = v4[3] >> 1;
  if (v25 < v24)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!__OFSUB__(v25, v24))
  {
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_261FFE660(uint64_t result)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  if ((v2 & 1) == 0)
  {
    goto LABEL_7;
  }

  v6 = v1[1];
  sub_26203AC5C();
  swift_unknownObjectRetain();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v7 + 16);
  if (v6 + 16 * v3 + 16 * v4 != v7 + 16 * v8 + 32)
  {

LABEL_7:
    v9 = v4;
    goto LABEL_9;
  }

  v10 = *(v7 + 24);

  v11 = (v10 >> 1) - v8;
  v12 = __OFADD__(v4, v11);
  v9 = v4 + v11;
  if (v12)
  {
LABEL_20:
    __break(1u);
    return result;
  }

LABEL_9:
  result = v4 + v5;
  if (__OFADD__(v4, v5))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v9 < result)
  {
    if (v9 + 0x4000000000000000 >= 0)
    {
      v13 = 2 * v9;
      if (v13 > result)
      {
        result = v13;
      }

      goto LABEL_14;
    }

    goto LABEL_19;
  }

LABEL_14:

  return sub_261FFE0A8(result);
}

uint64_t sub_261FFE768(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  sub_26203AC5C();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x277D84F90];
  }

  v8 = *(result + 16);
  v5 = __OFADD__(v8, v7);
  v9 = v8 + v7;
  if (v5)
  {
    goto LABEL_13;
  }

  *(result + 16) = v9;

  v10 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(v1 + 24) = v3 & 1 | (2 * v10);
  return result;
}

void *sub_261FFE820(void *result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24) >> 1;
  v4 = v3 - v2;
  if (__OFSUB__(v3, v2))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v6 = result[3];
  v5 = result[4];
  v28 = result;
  if (v5 == v6 >> 1)
  {
    return sub_261F66E60(v28, &qword_27FEFA338, &qword_262044788);
  }

  v7 = v6 >> 1;
  v31 = result[2];
  if (v5 >= v31 && v5 < v7)
  {
    v9 = result[1];
    v10 = v5 + 1;
    v11 = (v9 + 16 * v5);
    v13 = *v11;
    v12 = v11[1];

    v29 = v9 + 8;
    while (!__OFADD__(v4, 1))
    {
      v32 = sub_261FFEA58(v4, v4 + 1, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
      v14 = sub_261FFEC18();
      sub_261FFE3EC(&v32, v4, 0, v14);

      v16 = *(v1 + 16);
      v15 = *(v1 + 24);
      v17 = (v15 >> 1) - v16;
      if (__OFSUB__(v15 >> 1, v16))
      {
        goto LABEL_31;
      }

      v18 = *(v1 + 8);
      if (v15)
      {
        v30 = *(v1 + 8);
        sub_26203AC5C();
        swift_unknownObjectRetain();
        v19 = swift_dynamicCastClass();
        if (!v19)
        {
          swift_unknownObjectRelease();
          v19 = MEMORY[0x277D84F90];
        }

        v20 = *(v19 + 16);
        v18 = v30;
        if (v30 + 16 * v16 + 16 * v17 == v19 + 16 * v20 + 32)
        {
          v21 = *(v19 + 24);

          v22 = (v21 >> 1) - v20;
          v23 = __OFADD__(v17, v22);
          v17 += v22;
          if (v23)
          {
            goto LABEL_32;
          }

          v18 = v30;
        }

        else
        {
        }
      }

      v24 = (v18 + 16 * v4 + 16 * v16 + 8);
      v25 = (v29 + 16 * v10);
      v26 = v10;
      while (v4 < v17)
      {
        *(v24 - 1) = v13;
        *v24 = v12;
        if (v7 == v26)
        {
          v13 = 0;
          ++v4;
          v26 = v7;
          v12 = 1;
          break;
        }

        if (v10 < v31 || v26 >= v7)
        {
          __break(1u);
          goto LABEL_30;
        }

        ++v26;
        v13 = *(v25 - 1);
        v12 = *v25;

        v24 += 2;
        v25 += 2;
        ++v4;
      }

      result = sub_261FFE768(v4);
      v10 = v26;
      if (v12 == 1)
      {
        return sub_261F66E60(v28, &qword_27FEFA338, &qword_262044788);
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_34:
  __break(1u);
  return result;
}

void *sub_261FFEA58(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_26203AC5C();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 16);
  v13 = a4 + 16 * a5 + 16 * v8;
  if (v13 == v11 + 16 * v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x277D84F90];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + 16 * v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x277D84F90];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + 16 * v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_261FBA2E8(v6, v25);
}

uint64_t sub_261FFEC34(uint64_t a1)
{
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  if (!isUniquelyReferenced_nonNull)
  {
    return 0;
  }

  v6 = v1[2];
  v5 = v1[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = v1[1] + 16 * v6;
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_26203AC5C();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);
  if (v8 + 16 * v7 != v9 + 16 * v10 + 32)
  {

LABEL_8:
    v11 = v7;
    goto LABEL_10;
  }

  v12 = *(v9 + 24);

  v14 = (v12 >> 1) - v10;
  v15 = __OFADD__(v7, v14);
  v11 = v7 + v14;
  if (!v15)
  {
LABEL_10:
    if (v11 < a1)
    {
      return 0;
    }

    sub_26203AC5C();
    swift_unknownObjectRetain();
    a1 = swift_dynamicCastClass();
    if (!a1)
    {
      swift_unknownObjectRelease();
      a1 = MEMORY[0x277D84F90];
    }

    v16 = (v8 - a1 - 32) / 16;
    isUniquelyReferenced_nonNull = v7 + v16;
    if (!__OFADD__(v7, v16))
    {
      v4 = *(a1 + 16);
      if (isUniquelyReferenced_nonNull >= v4)
      {
        return a1;
      }

LABEL_19:
      sub_261FFBC68(isUniquelyReferenced_nonNull, v4, 0);
      return a1;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_261FFEE18(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_261FFEE24(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_43_1();
  v4(v3);
  OUTLINED_FUNCTION_6_1();
  v5 = OUTLINED_FUNCTION_47();
  v6(v5);
  return a2;
}

uint64_t sub_261FFEE7C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_261FFEEEC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_43_1();
  v4(v3);
  OUTLINED_FUNCTION_6_1();
  v5 = OUTLINED_FUNCTION_47();
  v6(v5);
  return a2;
}

uint64_t objectdestroy_154Tm()
{
  sub_26203965C();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_261FFEFE8()
{
  v0 = sub_26203965C();
  OUTLINED_FUNCTION_40(v0);
  return sub_261FF67CC();
}

void sub_261FFF0A8(double **a1)
{
  v3 = (*(v1 + 16))();
  v4 = *a1;
  *v4 = v3;
  *a1 = v4 + 1;
}

uint64_t sub_261FFF0E0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_26203965C();
  OUTLINED_FUNCTION_40(v3);
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0 + ((*(v4 + 80) + 48) & ~*(v4 + 80));

  return sub_261FF6B64(v5, v6, v7, v1, v2);
}

uint64_t objectdestroy_106Tm()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_56_2();
  type metadata accessor for TunnelEndpoint.Event(v1, v2, v3, v4);
  OUTLINED_FUNCTION_249();
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (v0 + v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
    case 0xCu:
      v8 = OUTLINED_FUNCTION_300();
      goto LABEL_11;
    case 3u:
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + v6));
      v7 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA378, &qword_2620447D0) + 48));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA2D0, &qword_262045930);
      OUTLINED_FUNCTION_151_0();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_10;
      }

      type metadata accessor for TunnelMessage(0);
      OUTLINED_FUNCTION_151_0();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA350, &unk_262041920) + 48);
        v30 = sub_262039ACC();
        if (!OUTLINED_FUNCTION_286(v30))
        {
          OUTLINED_FUNCTION_71();
          (*(v31 + 8))(v7 + v29);
        }
      }

      else if (EnumCaseMultiPayload == 1)
      {
        sub_262039ACC();
        OUTLINED_FUNCTION_6_1();
        v23 = *(v22 + 8);
        v24 = OUTLINED_FUNCTION_108();
        v23(v24);
        v25 = type metadata accessor for TunnelInterfaceParameters(0);
        v26 = OUTLINED_FUNCTION_257(*(v25 + 20));
        v23(v26);
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9E10, &qword_2620447B0);
        v28 = OUTLINED_FUNCTION_257(*(v27 + 48));
        v23(v28);
      }

      break;
    case 4u:
      v11 = OUTLINED_FUNCTION_56_2();
      type metadata accessor for TunnelEndpoint.State(v11, v12, v13, v14);
      OUTLINED_FUNCTION_151_0();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        break;
      }

      v9 = &qword_27FEFA348;
      v10 = &qword_262044798;
LABEL_8:
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v9, v10) + 48);
      sub_26203965C();
      OUTLINED_FUNCTION_6_1();
      (*(v16 + 8))(v7 + v15);
      break;
    case 5u:

      break;
    case 6u:
    case 8u:
    case 0xAu:
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + v6));
      break;
    case 7u:
    case 9u:
      OUTLINED_FUNCTION_300();

      break;
    case 0xBu:

      v9 = &qword_27FEFA370;
      v10 = &qword_2620447C8;
      goto LABEL_8;
    case 0xDu:
LABEL_10:
      v8 = *v7;
LABEL_11:

      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_22_2();

  return MEMORY[0x2821FE8E8](v17, v18, v19);
}

uint64_t sub_261FFF458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for TunnelEndpoint.Event(0, v5, v6, a4);
  OUTLINED_FUNCTION_40(v7);
  return sub_261FF6D2C(v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v5, v6, v9);
}

uint64_t objectdestroy_103Tm(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 40));

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_261FFF570@<X0>(_WORD *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_261FFF5A8@<X0>(_DWORD *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_261FFF604(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA2D0, &qword_262045930);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_261FFF69C()
{
  result = qword_28108BA70;
  if (!qword_28108BA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108BA70);
  }

  return result;
}

_BYTE *sub_261FFF6F0(_BYTE *result, unsigned int a2, unsigned int a3)
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

void OUTLINED_FUNCTION_27_5(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_66_2()
{
  *v0 = 258;
  *(v0 + 2) = 34;
}

void OUTLINED_FUNCTION_78_1(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = 0;
  *(v3 + 8) = v2;
}

void OUTLINED_FUNCTION_132_0()
{
  v1 = v0[151];
  v0[145] = v0[150];
  v0[146] = v1;
}

void OUTLINED_FUNCTION_135_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = *(v4 + 912);
  v8 = *(v4 + 920);

  _os_log_impl(a1, v8, v7, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_143_0()
{

  return sub_26203ABDC();
}

uint64_t OUTLINED_FUNCTION_165_0()
{
  *(v0 + 14) = v1;
  *(v0 + 22) = 2082;
  return v2;
}

uint64_t OUTLINED_FUNCTION_166_0@<X0>(__int16 a1@<W8>)
{
  *v1 = a1;
  *(v1 + 2) = 34;
}

void OUTLINED_FUNCTION_168_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_169_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_170_0()
{

  JUMPOUT(0x266722710);
}

uint64_t OUTLINED_FUNCTION_174_0(uint64_t a1)
{
  v3 = *(v1 + 776);

  return sub_261F798CC(v3);
}

uint64_t OUTLINED_FUNCTION_178_0()
{
  *(v1 + 4) = v0;
}

uint64_t OUTLINED_FUNCTION_185_0()
{
}

uint64_t OUTLINED_FUNCTION_186_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_187()
{
}

unint64_t OUTLINED_FUNCTION_188(uint64_t a1, unint64_t a2)
{

  return sub_261F67FE4(a1, a2, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_191(uint64_t a1)
{
  *(a1 + 32) = v1;
  sub_261F797BC((v3 - 240), v2 + 40);
}

void *OUTLINED_FUNCTION_202()
{

  return __swift_project_boxed_opaque_existential_0Tm((v1 - 192), v0);
}

__n128 OUTLINED_FUNCTION_217()
{
  result = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = v1 - 240;
  *(v4 + 64) = result;
  *(v4 + 80) = v3;
  *(v4 + 48) = *v0;
  return result;
}

unint64_t OUTLINED_FUNCTION_218(uint64_t a1, unint64_t a2)
{

  return sub_261F67FE4(a1, a2, (v2 + 1160));
}

unint64_t OUTLINED_FUNCTION_219(uint64_t a1, unint64_t a2)
{

  return sub_261F67FE4(a1, a2, (v2 - 136));
}

uint64_t OUTLINED_FUNCTION_220()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_221()
{

  return swift_allocObject();
}

BOOL OUTLINED_FUNCTION_222(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_224()
{

  return sub_261F797BC(v0, v1 - 192);
}

uint64_t OUTLINED_FUNCTION_225()
{
  *(v0 + 3) = 8;
}

BOOL OUTLINED_FUNCTION_226(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_227()
{
}

uint64_t OUTLINED_FUNCTION_228()
{
  v5 = v1 + 16 * v0;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
}

void *OUTLINED_FUNCTION_229()
{
  v2 = v0[3];

  return __swift_project_boxed_opaque_existential_0Tm(v0, v2);
}

uint64_t OUTLINED_FUNCTION_231()
{

  return sub_26203ABEC();
}

uint64_t OUTLINED_FUNCTION_233()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_234(char a1, uint64_t a2)
{
  v4 = *(v2 + 840);
  v5 = *(v2 + 824);

  return sub_261FF5EE8(a1, a2, v4, v5);
}

uint64_t OUTLINED_FUNCTION_235(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26203AD3C();
}

void *OUTLINED_FUNCTION_236()
{
  v2 = *(v0 - 168);

  return __swift_project_boxed_opaque_existential_0Tm((v0 - 192), v2);
}

uint64_t OUTLINED_FUNCTION_237()
{

  return sub_261F797BC((v0 - 240), v0 - 192);
}

uint64_t OUTLINED_FUNCTION_238()
{
}

uint64_t OUTLINED_FUNCTION_259()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 - 240));

  return __swift_destroy_boxed_opaque_existential_0Tm((v0 - 192));
}

void OUTLINED_FUNCTION_268()
{
  v2 = *(v1 + 8);
  *v0 = *v1;
  *(v0 + 8) = v2;
}

void OUTLINED_FUNCTION_276()
{
  v1 = *(v0 - 136);
  *(v0 - 192) = *(v0 - 144);
  *(v0 - 184) = v1;
}

void OUTLINED_FUNCTION_281()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2082;
  *(v3 - 92) = v2;
}

void OUTLINED_FUNCTION_282(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 112);

  _os_log_impl(a1, v8, v5, a4, v4, 0x20u);
}

uint64_t OUTLINED_FUNCTION_287@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 8) = a1 % v1;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_288(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_289(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_290()
{

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_291()
{

  return sub_261F79740(v0 - 136, v0 - 192);
}

uint64_t OUTLINED_FUNCTION_292()
{

  return sub_26203ABEC();
}

BOOL OUTLINED_FUNCTION_293@<W0>(os_log_type_t a1@<W8>)
{
  v3 = *(v1 + 920);

  return os_log_type_enabled(v3, a1);
}

uint64_t OUTLINED_FUNCTION_294()
{
}

uint64_t OUTLINED_FUNCTION_295(uint64_t a1)
{

  return sub_26203A20C();
}

BOOL OUTLINED_FUNCTION_296()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_297()
{
}

uint64_t OUTLINED_FUNCTION_298()
{
}

uint64_t OUTLINED_FUNCTION_301()
{

  return swift_getEnumCaseMultiPayload();
}

unint64_t OUTLINED_FUNCTION_303(uint64_t a1, unint64_t a2)
{

  return sub_261F67FE4(a1, a2, (v2 - 88));
}

void sub_262000380(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_2620393EC();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_262000410()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_27FEFA430 = result;
  return result;
}

uint64_t RPPairableHostBrowser.state.getter@<X0>(void *a1@<X8>)
{
  sub_261FA0600(&v4);
  v2 = v4;
  sub_261FA0B3C(v4);
  sub_261FC3EDC(v2);

  *a1 = v2;
  return result;
}

id sub_2620004F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA450, &qword_262044908);
  swift_allocObject();
  *&v0[OBJC_IVAR___RPPairableHostBrowser__stateStorage] = sub_261FA09DC(1, MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
  sub_2620398EC();
  sub_2620398CC();
  OUTLINED_FUNCTION_43_1();
  sub_26203990C();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = &v0[OBJC_IVAR___RPPairableHostBrowser_connection];
  v3 = MEMORY[0x277D28160];
  *v2 = v1;
  v2[1] = v3;
  v5.receiver = v0;
  v5.super_class = RPPairableHostBrowser;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t RPPairableHostBrowser.registerInvalidationHandler(onQueue:handler:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    if (qword_27FEF8718 != -1)
    {
      OUTLINED_FUNCTION_6_2(&qword_27FEF8718);
    }

    v7 = qword_27FEFAA30;
  }

  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = a3;
  v9 = *(v3 + OBJC_IVAR___RPPairableHostBrowser__stateStorage);
  v10 = *(v9 + 16);
  v11 = v7;
  swift_retain_n();
  v12 = v11;

  v13 = a1;
  os_unfair_lock_lock(v10);
  swift_beginAccess();
  v14 = *(v9 + 24);
  v15 = *(v9 + 32);
  v16 = *(v9 + 40);
  if ((v14 - 1) >= 2)
  {
    sub_261FA0B3C(*(v9 + 24));

    sub_261FA0B3C(v14);
    sub_262000870(v14, v12, a2, a3);
    sub_261FC3EDC(v14);
  }

  else
  {
    v17 = swift_allocObject();
    *(v17 + 16) = sub_262001D30;
    *(v17 + 24) = v8;

    sub_261FA0B3C(v14);

    v25 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_261FB9908(0, *(v16 + 16) + 1, 1, v16);
      v16 = v23;
    }

    v19 = *(v16 + 16);
    v18 = *(v16 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_261FB9908(v18 > 1, v19 + 1, 1, v16);
      v16 = v24;
    }

    *(v16 + 16) = v19 + 1;
    v20 = v16 + 16 * v19;
    *(v20 + 32) = sub_262001D3C;
    *(v20 + 40) = v17;
    v10 = v25;
  }

  v21 = *(v9 + 24);
  *(v9 + 24) = v14;
  *(v9 + 32) = v15;
  *(v9 + 40) = v16;
  sub_261FC3EDC(v21);

  os_unfair_lock_unlock(v10);
}

uint64_t sub_262000870(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_262039FAC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_262039FEC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  aBlock[4] = sub_261F9B62C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261F78F64;
  aBlock[3] = &block_descriptor_28;
  v16 = _Block_copy(aBlock);

  v17 = a1;
  sub_262039FCC();
  v19[1] = MEMORY[0x277D84F90];
  sub_2620020C8(&qword_28108B370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F98F68();
  sub_26203A75C();
  MEMORY[0x266722A20](0, v14, v10, v16);
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
}

void RPPairableHostBrowser.registerHostDiscoveredHandler(on:handler:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    if (qword_27FEF8718 != -1)
    {
      OUTLINED_FUNCTION_6_2(&qword_27FEF8718);
    }

    v7 = qword_27FEFAA30;
  }

  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = a3;
  v9 = *(v3 + OBJC_IVAR___RPPairableHostBrowser__stateStorage);

  v10 = a1;
  v11 = v7;

  sub_261FC354C(v9, sub_262001E30, v8);
}

uint64_t sub_262000C58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_262039FAC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_262039FEC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  aBlock[4] = sub_261FD3974;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261F78F64;
  aBlock[3] = &block_descriptor_11;
  v16 = _Block_copy(aBlock);

  v17 = a1;
  sub_262039FCC();
  v19[1] = MEMORY[0x277D84F90];
  sub_2620020C8(&qword_28108B370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F98F68();
  sub_26203A75C();
  MEMORY[0x266722A20](0, v14, v10, v16);
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
}

uint64_t sub_262000F3C(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(void *, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_63();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(a3, a6, v12);
}

Swift::Void __swiftcall RPPairableHostBrowser.startBrowsing()()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR___RPPairableHostBrowser__stateStorage];
  v3 = v0;
  sub_261FC3694(v2, v3, ObjectType);
  OUTLINED_FUNCTION_63();
  *(swift_allocObject() + 16) = v3;
  v4 = v3;
  sub_261F940EC();
}

void sub_26200109C(id *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == 1)
  {
    OUTLINED_FUNCTION_63();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for DeviceServiceEvent(0);
    sub_2620020C8(&qword_27FEF9EB0, type metadata accessor for DeviceServiceEvent, &protocol conformance descriptor for DeviceServiceEvent);
    sub_2620020C8(&qword_27FEF9EB8, type metadata accessor for DeviceServiceEvent, &protocol conformance descriptor for DeviceServiceEvent);
    sub_26203984C();

    sub_26203975C();
    sub_261FC3EDC(*a1);
    *a1 = 2;
  }

  else
  {
    sub_26203A7CC();
    MEMORY[0x266722710](0xD000000000000026, 0x8000000262051CC0);
    v4 = sub_26203AE8C();
    MEMORY[0x266722710](v4);

    MEMORY[0x266722710](46, 0xE100000000000000);
    MEMORY[0x266722710](0x6F72427472617473, 0xEF2928676E697377);
    MEMORY[0x266722710](0xD00000000000001CLL, 0x8000000262051CF0);
    sub_26203A91C();
    __break(1u);
  }
}

void sub_262001300(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PairableHostInfo(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DeviceServiceEvent(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v37 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9EC0, &unk_262042070);
  MEMORY[0x28223BE20](v15);
  v17 = (v37 - v16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    sub_262001F48(a1, v17);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = *v17;
      v21 = sub_26203A4AC();
      if (qword_27FEF86B8 != -1)
      {
        swift_once();
      }

      v22 = qword_27FEFA430;
      if (os_log_type_enabled(qword_27FEFA430, v21))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v37[1] = v20;
        v38 = v24;
        *v23 = 136446210;
        v25 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
        v26 = sub_26203A20C();
        v28 = sub_261F67FE4(v26, v27, &v38);

        *(v23 + 4) = v28;
        _os_log_impl(&dword_261F5B000, v22, v21, "Receieved XPC error from service: %{public}s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v24);
        MEMORY[0x266724180](v24, -1, -1);
        MEMORY[0x266724180](v23, -1, -1);
      }

      v29 = v20;
      sub_26200179C(v20);
    }

    else
    {
      sub_262001FB8(v17, v14);
      sub_26200206C(v14, v12);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v30 = sub_26203A48C();
        if (qword_27FEF86B8 != -1)
        {
          swift_once();
        }

        v31 = qword_27FEFA430;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9AA0, &qword_262040540);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_26203E9E0;
        sub_26200206C(v14, v9);
        v33 = sub_26203A20C();
        v35 = v34;
        *(v32 + 56) = MEMORY[0x277D837D0];
        *(v32 + 64) = sub_261FBC69C();
        *(v32 + 32) = v33;
        *(v32 + 40) = v35;
        sub_26203969C(v30, &dword_261F5B000, v31, "Unexpected message type received by browser: %{public}s", 55, 2, v32);

        sub_262002014(v14, type metadata accessor for DeviceServiceEvent);
        v36 = v12;
      }

      else
      {
        sub_262001FB8(v12, v5);
        sub_2620017F4();

        sub_262002014(v5, type metadata accessor for PairableHostInfo);
        v36 = v14;
      }

      sub_262002014(v36, type metadata accessor for DeviceServiceEvent);
    }
  }
}

void sub_26200179C(void *a1)
{
  v3 = *&v1[OBJC_IVAR___RPPairableHostBrowser__stateStorage];
  v4 = a1;
  sub_261FC3798(v3, a1, v1);
}

void sub_2620017F4()
{
  v1 = OUTLINED_FUNCTION_43_1();
  v2 = type metadata accessor for PairableHostInfo(v1);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26200206C(v0, v4);
  v5 = objc_allocWithZone(RPPairableHost);
  v6 = sub_261FD0F7C(v4);
  v7 = *(v0 + OBJC_IVAR___RPPairableHostBrowser__stateStorage);
  v8 = v6;
  sub_261FC38A4(v7, v8);
}

void sub_2620018C8(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v1 = *a1;
    v2 = sub_26203A48C();
    if (qword_27FEF86B8 != -1)
    {
      swift_once();
    }

    v3 = qword_27FEFA430;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9AA0, &qword_262040540);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_26203E9E0;
    v5 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
    v6 = sub_26203A20C();
    v8 = v7;
    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_261FBC69C();
    *(v4 + 32) = v6;
    *(v4 + 40) = v8;
    sub_26203969C(v2, &dword_261F5B000, v3, "Browser cancelled due to error from service: %{pubic}s", 54, 2, v4);

    sub_26200179C(v1);
  }
}

Swift::Void __swiftcall RPPairableHostBrowser.cancel()()
{
  v0 = sub_26203A4AC();
  if (qword_27FEF86B8 != -1)
  {
    swift_once();
  }

  sub_26203969C(v0, &dword_261F5B000, qword_27FEFA430, "Browser cancelled by client", 27, 2, MEMORY[0x277D84F90]);

  sub_26200179C(0);
}

uint64_t sub_262001B38(uint64_t a1, id a2)
{
  v4 = *a1;
  v5 = a2;
  sub_261FC3EDC(v4);
  *a1 = a2;
  v6 = *(a1 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 40;
    do
    {
      v9 = *(v8 - 8);
      v12 = a2;

      v9(&v12);

      v8 += 16;
      --v7;
    }

    while (v7);
  }

  v10 = MEMORY[0x277D84F90];
  *(a1 + 16) = MEMORY[0x277D84F90];

  *(a1 + 8) = v10;
  return sub_26203974C();
}

uint64_t sub_262001CBC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_262001DB0(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  v1 = OUTLINED_FUNCTION_2_20();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t get_enum_tag_for_layout_string_So21RPPairableHostBrowserC19RemotePairingDeviceE5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_262001E68(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_262001ECC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_262001F48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9EC0, &unk_262042070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_262001FB8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_43_1();
  v5(v4);
  OUTLINED_FUNCTION_6_1();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_262002014(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26200206C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_43_1();
  v5(v4);
  OUTLINED_FUNCTION_6_1();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_2620020C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL NWInterface.isValidForNetworkControlChannel.getter()
{
  if (qword_27FEF8528 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27FEF8F30;
  v1 = *algn_27FEF8F38;
  v2 = byte_27FEF8F40;
  if (byte_27FEF8F41)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_261F83BA8(v0, v1, v3 | v2);

  if (v4)
  {
    return 1;
  }

  v6 = sub_262039B2C();
  return !InterfaceIndexCorrespondsToAppleNCMInterface(v6);
}

uint64_t sub_2620021FC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v9[2] = *MEMORY[0x277D85DE8];
  switch(a2 >> 62)
  {
    case 1uLL:
      v8 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v7 = v8;
      goto LABEL_7;
    case 2uLL:
      v5 = *(a1 + 24);
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v7 = v5;
LABEL_7:
      result = sub_262005DCC(a1, v7, v6, a3);
      break;
    case 3uLL:
      memset(v9, 0, 14);
      result = *(v9 + a3);
      break;
    default:
      v9[0] = a1;
      LOWORD(v9[1]) = a2;
      BYTE2(v9[1]) = BYTE2(a2);
      BYTE3(v9[1]) = BYTE3(a2);
      BYTE4(v9[1]) = BYTE4(a2);
      BYTE5(v9[1]) = BYTE5(a2);
      result = *(v9 + a3);
      break;
  }

  return result;
}

uint64_t sub_26200232C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v10[2] = *MEMORY[0x277D85DE8];
  switch(a2 >> 62)
  {
    case 1uLL:
      v9 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v7 = v9;
      return sub_262005E44(a1, v7, v6, a3);
    case 2uLL:
      v5 = *(a1 + 24);
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v7 = v5;
      return sub_262005E44(a1, v7, v6, a3);
    case 3uLL:
      memset(v10, 0, 14);
      v4 = *(v10 + a3);
      return bswap32(v4);
    default:
      v10[0] = a1;
      LOWORD(v10[1]) = a2;
      BYTE2(v10[1]) = BYTE2(a2);
      BYTE3(v10[1]) = BYTE3(a2);
      BYTE4(v10[1]) = BYTE4(a2);
      BYTE5(v10[1]) = BYTE5(a2);
      v4 = *(v10 + a3);
      return bswap32(v4);
  }
}

void *TunnelPacket.init(data:)()
{
  OUTLINED_FUNCTION_6_13();
  sub_261F6B73C(v4, v5);
  v6 = OUTLINED_FUNCTION_1_1();
  if (MEMORY[0x266721A20](v6) < 40)
  {
    v7 = OUTLINED_FUNCTION_1_1();
    sub_261F6BFFC(v7, v8);
    sub_261F9BCE0();
    sub_26203ACEC();
    v29 = v30;
    v9 = sub_261F9D610();
    OUTLINED_FUNCTION_6(v9);
    sub_26203AD4C();
    swift_willThrow();
LABEL_5:
    v14 = OUTLINED_FUNCTION_1_1();
    return sub_261F6BFFC(v14, v15);
  }

  v10 = OUTLINED_FUNCTION_1_1();
  sub_261F6B73C(v10, v11);
  OUTLINED_FUNCTION_1_1();
  IPv6Header.init(_:)();
  if (v2)
  {
    v12 = OUTLINED_FUNCTION_1_1();
    sub_261F6BFFC(v12, v13);
    goto LABEL_5;
  }

  v17 = *(&v30 + 1);
  v18 = v30;
  v19 = v31;
  v20 = v32;
  v21 = v33;
  v23 = v34;
  v22 = v35;
  if (qword_28108CB70 != -1)
  {
    swift_once();
    v22 = v35;
    v20 = v32;
    v23 = v34;
    v19 = v31;
    v17 = *(&v30 + 1);
  }

  v36 = v17;
  v28 = v19;
  if (byte_27FF07DF0 == 1)
  {
    *(&v30 + 1) = v17;
    v31 = v19;
    v32 = v20;
    v34 = v23;
    v35 = v22;
    v24 = v20;
    v25 = v22;
    sub_261F6B73C(v20, v33);
    sub_261F6B73C(v23, v25);
    result = sub_2620043E4(&v30, v3, v0, &v29);
    v26 = v29;
  }

  else
  {
    v24 = v20;
    v25 = v22;
    result = sub_261F6BFFC(v3, v0);
    v26 = xmmword_26203F730;
  }

  *v1 = 30;
  v27 = v36;
  *(v1 + 8) = v18;
  *(v1 + 16) = v27;
  *(v1 + 24) = v28;
  *(v1 + 32) = v24;
  *(v1 + 40) = v21;
  *(v1 + 48) = v23;
  *(v1 + 56) = v25;
  *(v1 + 64) = v26;
  *(v1 + 80) = v3;
  *(v1 + 88) = v0;
  return result;
}

uint64_t sub_2620026A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_2620026FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LODWORD(v2) = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 = v4 | v2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL sub_262002760(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = (*v2 & a2);
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_262002790(unsigned __int8 a1)
{
  v2 = *v1;
  if ((*v1 & a1) != 0)
  {
    *v1 = v2 & ~a1;
  }

  return (v2 & a1) | (((v2 & a1) == 0) << 8);
}

uint64_t sub_2620027C0(char a1)
{
  v2 = *v1;
  *v1 |= a1;
  return (v2 & a1) | (((v2 & a1) == 0) << 8);
}

uint64_t TunnelInterfaceParameters.init(address:netmask:mtu:)@<X0>(uint64_t a1@<X1>, __int16 a2@<W2>, uint64_t a3@<X8>)
{
  v6 = sub_262039ACC();
  OUTLINED_FUNCTION_6_1();
  v8 = *(v7 + 32);
  v9 = OUTLINED_FUNCTION_75();
  v8(v9);
  v10 = type metadata accessor for TunnelInterfaceParameters(0);
  result = (v8)(a3 + *(v10 + 20), a1, v6);
  *(a3 + *(v10 + 24)) = a2;
  return result;
}

uint64_t sub_2620028E4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_262039ACC();
  v11 = MEMORY[0x277CD8C80];
  v23[3] = v10;
  v23[4] = MEMORY[0x277CD8C80];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
  v13 = *(*(v10 - 8) + 16);
  v13(boxed_opaque_existential_0, a2, v10);
  v14 = type metadata accessor for TunnelInterfaceParameters(0);
  v15 = *(v14 + 20);
  v22[3] = v10;
  v22[4] = v11;
  v16 = __swift_allocate_boxed_opaque_existential_0(v22);
  v13(v16, a2 + v15, v10);
  (*(a7 + 56))(a1, v23, v22, *(a2 + *(v14 + 24)), a3 | ((HIDWORD(a3) & 1) << 32), a4, a5, a6, a7);
  return sub_261FCF214(a2);
}

uint64_t sub_262002A18@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v96 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9B60, &unk_262040530);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v1);
  v67 = &v64 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA270, &qword_262041910);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v3);
  v5 = &v64 - v4;
  type metadata accessor for TunnelInterfaceParameters(0);
  v6 = sub_262039AAC();
  v8 = v7;
  v9 = sub_262039AAC();
  v11 = v10;
  v12 = OUTLINED_FUNCTION_42_3();
  v13 = MEMORY[0x266721A20](v12);
  v14 = OUTLINED_FUNCTION_20_8();
  if (v13 != MEMORY[0x266721A20](v14))
  {
    goto LABEL_88;
  }

  v15 = OUTLINED_FUNCTION_20_8();
  v16 = MEMORY[0x266721A20](v15);
  if (v16 < 0)
  {
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
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
  }

  v17 = v16;
  v18 = 0;
  v71 = v6;
  v70 = v6 >> 32;
  v69 = BYTE6(v8);
  v78 = v8 >> 62;
  v73 = v16;
  v66 = v5;
  v74 = v6;
  v80 = v8;
  while (1)
  {
    v19 = v18;
LABEL_5:
    v91 = v9;
    v89 = v9 >> 32;
    v72 = (v9 >> 32) - v9;
    v20 = v19;
    v90 = v19;
LABEL_6:
    if (v17 == v20)
    {
      break;
    }

    if (v20 >= v17)
    {
      __break(1u);
LABEL_72:
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
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
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
      goto LABEL_89;
    }

    if (__OFADD__(v20, 1))
    {
      goto LABEL_72;
    }

    v79 = v20 + 1;
    v81 = v9 >> 24;
    v82 = HIDWORD(v9);
    v85 = HIWORD(v9);
    v86 = HIBYTE(v9);
    v88 = HIDWORD(v11);
    v87 = v11 >> 16;
    v83 = v9 >> 40;
    v84 = v11 >> 8;
    v21 = v11 >> 62;
    v76 = v11 >> 40;
    v77 = HIWORD(v11);
    v75 = v11 >> 24;
    switch(v11 >> 62)
    {
      case 1uLL:
        if (v20 >= v89 || v90 < v91)
        {
          goto LABEL_77;
        }

        v28 = sub_26203937C();
        if (!v28)
        {
          goto LABEL_98;
        }

        v24 = v28;
        v29 = sub_2620393AC();
        v26 = v20 - v29;
        if (!__OFSUB__(v20, v29))
        {
          goto LABEL_24;
        }

        goto LABEL_79;
      case 2uLL:
        if (v20 < *(v9 + 16))
        {
          goto LABEL_76;
        }

        if (v20 >= *(v9 + 24))
        {
          goto LABEL_78;
        }

        v23 = sub_26203937C();
        if (!v23)
        {
          goto LABEL_100;
        }

        v24 = v23;
        v25 = sub_2620393AC();
        v26 = v20 - v25;
        if (__OFSUB__(v20, v25))
        {
          goto LABEL_82;
        }

LABEL_24:
        v22 = *(v24 + v26);
        break;
      case 3uLL:
        goto LABEL_97;
      default:
        if (v20 >= BYTE6(v11))
        {
          goto LABEL_75;
        }

        LOWORD(v92) = v9;
        BYTE2(v92) = BYTE2(v9);
        BYTE3(v92) = v81;
        BYTE4(v92) = v82;
        BYTE5(v92) = v83;
        BYTE6(v92) = v85;
        HIBYTE(v92) = v86;
        LOBYTE(v93) = v11;
        BYTE1(v93) = v84;
        BYTE2(v93) = v87;
        HIBYTE(v93) = BYTE3(v11);
        LOBYTE(v94) = v88;
        HIBYTE(v94) = BYTE5(v11);
        v22 = *(&v92 + v20);
        break;
    }

    switch(v78)
    {
      case 1uLL:
        if (v20 < v71 || v20 >= v70)
        {
          goto LABEL_83;
        }

        v36 = sub_26203937C();
        if (!v36)
        {
          goto LABEL_101;
        }

        v32 = v36;
        v37 = sub_2620393AC();
        v34 = v20 - v37;
        if (!__OFSUB__(v20, v37))
        {
          goto LABEL_41;
        }

        goto LABEL_85;
      case 2uLL:
        if (v20 < *(v74 + 16))
        {
          goto LABEL_80;
        }

        if (v20 >= *(v74 + 24))
        {
          goto LABEL_84;
        }

        v31 = sub_26203937C();
        if (!v31)
        {
          goto LABEL_102;
        }

        v32 = v31;
        v33 = sub_2620393AC();
        v34 = v20 - v33;
        if (__OFSUB__(v20, v33))
        {
          goto LABEL_86;
        }

LABEL_41:
        v30 = *(v32 + v34);
        v17 = v73;
LABEL_42:
        if (v21 == 1)
        {
          if (v20 >= v89 || v90 < v91)
          {
            goto LABEL_73;
          }

          v39 = v30 & v22;
          v40 = v11 & 0x3FFFFFFFFFFFFFFFLL;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {

            if (sub_26203937C() && __OFSUB__(v91, sub_2620393AC()))
            {
              goto LABEL_87;
            }

            sub_2620393BC();
            swift_allocObject();
            v41 = sub_26203935C();

            v40 = v41;
          }

          sub_26203934C();
          v42 = sub_26203937C();
          if (!v42)
          {
            goto LABEL_96;
          }

          v43 = v42;
          v44 = sub_2620393AC();
          if (__OFSUB__(v20, v44))
          {
            goto LABEL_74;
          }

          *(v43 + v20 - v44) = v39;
          v11 = v40 | 0x4000000000000000;
          ++v20;
          goto LABEL_6;
        }

        if (v21 == 2)
        {
          if (v20 < *(v9 + 16))
          {
            goto LABEL_91;
          }

          if (v20 >= *(v9 + 24))
          {
            goto LABEL_92;
          }

          v45 = v30 & v22;
          v46 = v11 & 0x3FFFFFFFFFFFFFFFLL;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_62;
          }

          v47 = *(v9 + 16);
          v48 = *(v9 + 24);
          if (sub_26203937C() && __OFSUB__(v47, sub_2620393AC()))
          {
            goto LABEL_95;
          }

          if (__OFSUB__(v48, v47))
          {
            goto LABEL_94;
          }

          sub_2620393BC();
          swift_allocObject();
          v49 = sub_26203935C();

          v46 = v49;
LABEL_62:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = *(v9 + 16);
            v51 = *(v9 + 24);
            sub_2620394AC();
            v52 = swift_allocObject();
            *(v52 + 16) = v50;
            *(v52 + 24) = v51;

            v9 = v52;
          }

          v53 = v46;
          sub_26203934C();
          v54 = sub_26203937C();
          if (!v54)
          {
            __break(1u);
LABEL_104:
            sub_261F66E60(v53, &qword_27FEFA270, &qword_262041910);
            result = sub_26203A91C();
            __break(1u);
            return result;
          }

          v55 = v54;
          v56 = sub_2620393AC();
          if (__OFSUB__(v20, v56))
          {
            goto LABEL_93;
          }

          *(v55 + v20 - v56) = v45;
          v11 = v46 | 0x8000000000000000;
          v19 = v79;
          goto LABEL_5;
        }

        LOWORD(v92) = v9;
        BYTE2(v92) = BYTE2(v9);
        BYTE3(v92) = v81;
        BYTE4(v92) = v82;
        BYTE5(v92) = v83;
        BYTE6(v92) = v85;
        HIBYTE(v92) = v86;
        LOBYTE(v93) = v11;
        BYTE1(v93) = v84;
        BYTE2(v93) = v87;
        HIBYTE(v93) = v75;
        LOBYTE(v94) = v88;
        HIBYTE(v94) = v76;
        v95 = v77;
        if (v20 >= v77)
        {
          goto LABEL_90;
        }

        *(&v92 + v20) = v30 & v22;
        v9 = v92;
        v11 = v65 & 0xF00000000000000 | v93 | ((v94 | (v95 << 16)) << 32);
        v65 = v11;
        v18 = v79;
        break;
      case 3uLL:
        goto LABEL_99;
      default:
        if (v20 >= v69)
        {
          goto LABEL_81;
        }

        v92 = v74;
        v93 = v80;
        v94 = WORD2(v80);
        v30 = *(&v92 + v20);
        goto LABEL_42;
    }
  }

  v57 = sub_262039B3C();
  __swift_storeEnumTagSinglePayload(v67, 1, 1, v57);
  v58 = OUTLINED_FUNCTION_20_8();
  sub_261F6B73C(v58, v59);
  v53 = v66;
  OUTLINED_FUNCTION_20_8();
  sub_262039ADC();
  v60 = sub_262039ACC();
  if (__swift_getEnumTagSinglePayload(v53, 1, v60) == 1)
  {
    goto LABEL_104;
  }

  sub_261F6BFFC(v74, v80);
  (*(*(v60 - 8) + 32))(v68, v53, v60);
  v61 = OUTLINED_FUNCTION_20_8();
  return sub_261F6BFFC(v61, v62);
}

uint64_t sub_262003314()
{
  if (qword_28108B4A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_28108B4A8;
  v1 = unk_28108B4B0;
  v2 = byte_28108B4B8;
  if (byte_28108B4B9)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_261F83BA8(v0, v1, v3 | v2);

  byte_27FF07DF0 = v4 & 1;
  return result;
}

uint64_t sub_2620033D4(char a1)
{
  v2 = a1 < 0;
  if (a1 < 0)
  {
    v3 = 67;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = 0xE100000000000000;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  MEMORY[0x266722710](v3, v4);

  OUTLINED_FUNCTION_21_7();
  v5 = OUTLINED_FUNCTION_42_3();
  MEMORY[0x266722710](v5);

  OUTLINED_FUNCTION_21_7();
  v6 = OUTLINED_FUNCTION_42_3();
  MEMORY[0x266722710](v6);

  OUTLINED_FUNCTION_21_7();
  v7 = OUTLINED_FUNCTION_42_3();
  MEMORY[0x266722710](v7);

  OUTLINED_FUNCTION_21_7();
  v8 = OUTLINED_FUNCTION_42_3();
  MEMORY[0x266722710](v8);

  OUTLINED_FUNCTION_21_7();
  v9 = OUTLINED_FUNCTION_42_3();
  MEMORY[0x266722710](v9);

  OUTLINED_FUNCTION_21_7();
  v10 = OUTLINED_FUNCTION_42_3();
  MEMORY[0x266722710](v10);

  v11 = (a1 & 0x10) == 0;
  if ((a1 & 0x10) != 0)
  {
    v12 = 46;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = 0xE000000000000000;
  }

  else
  {
    v13 = 0xE100000000000000;
  }

  OUTLINED_FUNCTION_21_7();
  MEMORY[0x266722710](v12, v13);

  MEMORY[0x266722710](93, 0xE100000000000000);

  return 91;
}

uint64_t sub_2620035FC@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_30_1();
  *a1 = result;
  return result;
}

uint64_t sub_262003630@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_262002750(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_262003660@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_262031C64(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_262003690@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_262002758(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2620036C8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_262002790(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_2620036FC@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2620027C0(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_262003748@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_262002808(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2620037BC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2620026FC(a1);
  *a2 = result;
  return result;
}

void sub_2620037E4()
{
  OUTLINED_FUNCTION_6_13();
  if (MEMORY[0x266721A20]() >= 20)
  {
    OUTLINED_FUNCTION_19_7();
    switch(v12)
    {
      case 1:
        v14 = v4 + 2;
        v15 = v3;
        v13 = v4;
        goto LABEL_8;
      case 2:
        v13 = *(v1 + 16);
        v14 = v13 + 2;
        if (__OFADD__(v13, 2))
        {
          goto LABEL_140;
        }

        v15 = *(v1 + 24);
LABEL_8:
        if (v15 < v14 || v13 >= v14)
        {
          goto LABEL_56;
        }

        v17 = OUTLINED_FUNCTION_1_1();
        v19 = sub_261F6BE04(v17, v18, 0);
        if (v2)
        {
          if (v2 == 2)
          {
            v20 = *(v1 + 16);
          }

          else
          {
            v20 = v4;
          }
        }

        else
        {
          v20 = 0;
        }

        v21 = __OFADD__(v20, 2);
        v22 = v20 + 2;
        if (v21)
        {
          __break(1u);
        }

        else
        {
          v23 = v22 + 2;
          if (!__OFADD__(v22, 2))
          {
            if (v2)
            {
              if (v2 == 2)
              {
                v24 = *(v1 + 16);
              }

              else
              {
                v24 = v4;
              }

              if (v22 < v24)
              {
                goto LABEL_56;
              }

              if (v2 == 2)
              {
                v25 = *(v1 + 24);
              }

              else
              {
                v25 = v3;
              }
            }

            else
            {
              if (v22 < 0)
              {
                goto LABEL_56;
              }

              v25 = v5;
            }

            if (v22 >= v23 || v25 < v23)
            {
              goto LABEL_56;
            }

            v27 = OUTLINED_FUNCTION_1_1();
            sub_261F6BE04(v27, v28, 2);
            if (v2)
            {
              if (v2 == 2)
              {
                v29 = *(v1 + 16);
              }

              else
              {
                v29 = v4;
              }
            }

            else
            {
              v29 = 0;
            }

            v21 = __OFADD__(v29, 4);
            v30 = v29 + 4;
            if (!v21)
            {
              v31 = v30 + 4;
              if (!__OFADD__(v30, 4))
              {
                if (v2)
                {
                  if (v2 == 2)
                  {
                    v32 = *(v1 + 16);
                  }

                  else
                  {
                    v32 = v4;
                  }

                  if (v30 < v32)
                  {
                    goto LABEL_56;
                  }

                  if (v2 == 2)
                  {
                    v33 = *(v1 + 24);
                  }

                  else
                  {
                    v33 = v3;
                  }
                }

                else
                {
                  if (v30 < 0)
                  {
                    goto LABEL_56;
                  }

                  v33 = v5;
                }

                if (v30 < v31 && v33 >= v31)
                {
                  v38 = OUTLINED_FUNCTION_1_1();
                  v40 = sub_26200232C(v38, v39, 4);
                  if (v2)
                  {
                    if (v2 == 2)
                    {
                      v41 = *(v1 + 16);
                    }

                    else
                    {
                      v41 = v4;
                    }
                  }

                  else
                  {
                    v41 = 0;
                  }

                  v21 = __OFADD__(v41, 8);
                  v42 = v41 + 8;
                  if (!v21)
                  {
                    v43 = v42 + 4;
                    if (!__OFADD__(v42, 4))
                    {
                      switch(v2)
                      {
                        case 1:
                          v45 = v4;
                          goto LABEL_77;
                        case 2:
                          v45 = *(v1 + 16);
LABEL_77:
                          if (v42 < v45)
                          {
                            goto LABEL_56;
                          }

                          if (v2 == 2)
                          {
                            v44 = *(v1 + 24);
                          }

                          else
                          {
                            v44 = v3;
                          }

LABEL_81:
                          if (v42 >= v43 || v44 < v43)
                          {
                            goto LABEL_56;
                          }

                          v78 = v40;
                          v52 = OUTLINED_FUNCTION_1_1();
                          v49 = sub_26200232C(v52, v53, 8);
                          if (v2)
                          {
                            if (v2 == 2)
                            {
                              v50 = *(v1 + 16);
                            }

                            else
                            {
                              v50 = v4;
                            }
                          }

                          else
                          {
                            v50 = 0;
                          }

LABEL_90:
                          v21 = __OFADD__(v50, 13);
                          v54 = v50 + 13;
                          if (v21)
                          {
                            goto LABEL_145;
                          }

                          v55 = v54 + 1;
                          if (__OFADD__(v54, 1))
                          {
                            goto LABEL_146;
                          }

                          switch(v2)
                          {
                            case 1:
                              v57 = v4;
                              goto LABEL_104;
                            case 2:
                              v57 = *(v1 + 16);
LABEL_104:
                              if (v54 < v57)
                              {
                                goto LABEL_56;
                              }

                              if (v2 == 2)
                              {
                                v56 = *(v1 + 24);
                              }

                              else
                              {
                                v56 = v3;
                              }

LABEL_108:
                              if (v54 >= v55 || v56 < v55)
                              {
                                goto LABEL_56;
                              }

                              v77 = v49;
                              v64 = OUTLINED_FUNCTION_1_1();
                              v61 = sub_2620021FC(v64, v65, 13);
                              if (v2)
                              {
                                if (v2 == 2)
                                {
                                  v62 = *(v1 + 16);
                                }

                                else
                                {
                                  v62 = v4;
                                }
                              }

                              else
                              {
                                v62 = 0;
                              }

LABEL_117:
                              v21 = __OFADD__(v62, 14);
                              v66 = v62 + 14;
                              if (v21)
                              {
                                goto LABEL_147;
                              }

                              v67 = v66 + 2;
                              if (__OFADD__(v66, 2))
                              {
                                goto LABEL_148;
                              }

                              switch(v2)
                              {
                                case 1:
                                  goto LABEL_123;
                                case 2:
                                  v4 = *(v1 + 16);
LABEL_123:
                                  if (v66 < v4)
                                  {
                                    goto LABEL_56;
                                  }

                                  if (v2 == 2)
                                  {
                                    v3 = *(v1 + 24);
                                  }

LABEL_126:
                                  if (v66 >= v67 || v3 < v67)
                                  {
                                    goto LABEL_56;
                                  }

LABEL_137:
                                  v79 = v61;
                                  v70 = OUTLINED_FUNCTION_1_1();
                                  v72 = v71;
                                  v74 = sub_261F6BE04(v70, v73, 14);
                                  v75 = OUTLINED_FUNCTION_1_1();
                                  sub_261F6BFFC(v75, v76);
                                  *v0 = v19;
                                  *(v0 + 2) = v72;
                                  *(v0 + 4) = v78;
                                  *(v0 + 8) = v77;
                                  *(v0 + 12) = v74;
                                  *(v0 + 14) = v79;
                                  break;
                                case 3:
                                  if (v66 < 0)
                                  {
                                    goto LABEL_56;
                                  }

                                  if (v67 > 0 || __OFSUB__(v66, v67))
                                  {
                                    goto LABEL_56;
                                  }

                                  goto LABEL_137;
                                default:
                                  if (v66 < 0)
                                  {
                                    goto LABEL_56;
                                  }

                                  v3 = v5;
                                  goto LABEL_126;
                              }

                              break;
                            case 3:
                              if (v54 < 0)
                              {
                                goto LABEL_56;
                              }

                              if (v55 > 0 || __OFSUB__(v54, v55))
                              {
                                goto LABEL_56;
                              }

                              v77 = v49;
                              v59 = OUTLINED_FUNCTION_1_1();
                              v61 = sub_2620021FC(v59, v60, 13);
                              v62 = 0;
                              goto LABEL_117;
                            default:
                              if (v54 < 0)
                              {
                                goto LABEL_56;
                              }

                              v56 = v5;
                              goto LABEL_108;
                          }

                          break;
                        case 3:
                          if (v42 < 0)
                          {
                            goto LABEL_56;
                          }

                          if (v43 > 0 || __OFSUB__(v42, v43))
                          {
                            goto LABEL_56;
                          }

                          v78 = v40;
                          v47 = OUTLINED_FUNCTION_1_1();
                          v49 = sub_26200232C(v47, v48, 8);
                          v50 = 0;
                          goto LABEL_90;
                        default:
                          if (v42 < 0)
                          {
                            goto LABEL_56;
                          }

                          v44 = v5;
                          goto LABEL_81;
                      }

                      return;
                    }

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
                    return;
                  }

LABEL_143:
                  __break(1u);
                  goto LABEL_144;
                }

LABEL_56:
                sub_261F9BCE0();
                OUTLINED_FUNCTION_131();
                sub_26203ACEC();
                v35 = sub_261F9D610();
                OUTLINED_FUNCTION_6(v35);
                OUTLINED_FUNCTION_12_10();
                goto LABEL_57;
              }

LABEL_142:
              __break(1u);
              goto LABEL_143;
            }

LABEL_141:
            __break(1u);
            goto LABEL_142;
          }
        }

        __break(1u);
LABEL_140:
        __break(1u);
        goto LABEL_141;
      case 3:
        goto LABEL_56;
      default:
        v13 = 0;
        v14 = 2;
        v15 = v5;
        goto LABEL_8;
    }
  }

  sub_261F9BCE0();
  OUTLINED_FUNCTION_122();
  sub_26203ACEC();
  OUTLINED_FUNCTION_17_9();
  sub_26203A7CC();

  OUTLINED_FUNCTION_16_11();
  v6 = OUTLINED_FUNCTION_1_1();
  MEMORY[0x266721A20](v6);
  OUTLINED_FUNCTION_126();
  v7 = sub_26203ABAC();
  MEMORY[0x266722710](v7);

  v8 = OUTLINED_FUNCTION_0_28();
  MEMORY[0x266722710](v8);
  OUTLINED_FUNCTION_126();
  v9 = sub_26203ABAC();
  MEMORY[0x266722710](v9);

  v10 = OUTLINED_FUNCTION_15_8();
  MEMORY[0x266722710](v10, 0xE600000000000000);
  v11 = sub_261F9D610();
  OUTLINED_FUNCTION_14_0(v11);
  OUTLINED_FUNCTION_0_0();
LABEL_57:
  sub_26203AD4C();
  swift_willThrow();
  v36 = OUTLINED_FUNCTION_1_1();
  sub_261F6BFFC(v36, v37);
}

void sub_262003DB4()
{
  OUTLINED_FUNCTION_6_13();
  if (MEMORY[0x266721A20]() >= 16)
  {
    OUTLINED_FUNCTION_19_7();
    switch(v12)
    {
      case 1:
        v14 = v4 + 2;
        v15 = v3;
        v13 = v4;
        goto LABEL_8;
      case 2:
        v13 = *(v1 + 16);
        v14 = v13 + 2;
        if (__OFADD__(v13, 2))
        {
          goto LABEL_57;
        }

        v15 = *(v1 + 24);
LABEL_8:
        if (v15 < v14 || v13 >= v14)
        {
          goto LABEL_53;
        }

        v17 = OUTLINED_FUNCTION_1_1();
        v19 = sub_261F6BE04(v17, v18, 0);
        v20 = v2;
        if (v2)
        {
          if (v2 == 2)
          {
            v21 = *(v1 + 16);
          }

          else
          {
            v21 = v4;
          }
        }

        else
        {
          v21 = 0;
        }

        v22 = __OFADD__(v21, 2);
        v23 = v21 + 2;
        if (v22)
        {
          __break(1u);
        }

        else
        {
          v24 = v23 + 2;
          if (!__OFADD__(v23, 2))
          {
            if (v2)
            {
              if (v2 == 2)
              {
                v25 = *(v1 + 16);
              }

              else
              {
                v25 = v4;
              }

              if (v23 < v25)
              {
                goto LABEL_53;
              }

              if (v2 == 2)
              {
                v26 = *(v1 + 24);
              }

              else
              {
                v26 = v3;
              }
            }

            else
            {
              if (v23 < 0)
              {
                goto LABEL_53;
              }

              v26 = v5;
            }

            if (v23 >= v24 || v26 < v24)
            {
              goto LABEL_53;
            }

            v28 = OUTLINED_FUNCTION_1_1();
            v30 = sub_261F6BE04(v28, v29, 2);
            if (v2)
            {
              if (v2 == 2)
              {
                v20 = *(v1 + 16);
              }

              else
              {
                v20 = v4;
              }
            }

            v31 = v20 + 4;
            if (!__OFADD__(v20, 4))
            {
              v32 = v20 + 6;
              if (!__OFADD__(v31, 2))
              {
                if (v2)
                {
                  if (v2 == 2)
                  {
                    v4 = *(v1 + 16);
                  }

                  if (v31 >= v4)
                  {
                    if (v2 == 2)
                    {
                      v3 = *(v1 + 24);
                    }

LABEL_48:
                    if (v31 < v32 && v3 >= v32)
                    {
                      v37 = v30;
                      v38 = OUTLINED_FUNCTION_1_1();
                      v40 = sub_261F6BE04(v38, v39, 4);
                      v41 = OUTLINED_FUNCTION_1_1();
                      sub_261F6BFFC(v41, v42);
                      *v0 = v19;
                      v0[1] = v37;
                      v0[2] = v40;
                      return;
                    }
                  }
                }

                else if ((v31 & 0x8000000000000000) == 0)
                {
                  v3 = v5;
                  goto LABEL_48;
                }

LABEL_53:
                sub_261F9BCE0();
                OUTLINED_FUNCTION_131();
                sub_26203ACEC();
                v34 = sub_261F9D610();
                OUTLINED_FUNCTION_6(v34);
                OUTLINED_FUNCTION_12_10();
                goto LABEL_54;
              }

LABEL_59:
              __break(1u);
              return;
            }

LABEL_58:
            __break(1u);
            goto LABEL_59;
          }
        }

        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      case 3:
        goto LABEL_53;
      default:
        v13 = 0;
        v14 = 2;
        v15 = v5;
        goto LABEL_8;
    }
  }

  sub_261F9BCE0();
  OUTLINED_FUNCTION_122();
  sub_26203ACEC();
  sub_26203A7CC();

  OUTLINED_FUNCTION_16_11();
  v6 = OUTLINED_FUNCTION_1_1();
  MEMORY[0x266721A20](v6);
  OUTLINED_FUNCTION_126();
  v7 = sub_26203ABAC();
  MEMORY[0x266722710](v7);

  v8 = OUTLINED_FUNCTION_0_28();
  MEMORY[0x266722710](v8);
  OUTLINED_FUNCTION_126();
  v9 = sub_26203ABAC();
  MEMORY[0x266722710](v9);

  v10 = OUTLINED_FUNCTION_15_8();
  MEMORY[0x266722710](v10, 0xE600000000000000);
  v11 = sub_261F9D610();
  OUTLINED_FUNCTION_14_0(v11);
LABEL_54:
  sub_26203AD4C();
  swift_willThrow();
  v35 = OUTLINED_FUNCTION_1_1();
  sub_261F6BFFC(v35, v36);
}

uint64_t sub_262004114()
{
  OUTLINED_FUNCTION_6_13();
  result = MEMORY[0x266721A20]();
  if (result >= 16)
  {
    v10 = v0 >> 62;
    v11 = v2;
    v12 = v2 >> 32;
    switch(v0 >> 62)
    {
      case 1uLL:
        v14 = v2 + 1;
        v15 = v2 >> 32;
        v13 = v2;
        goto LABEL_8;
      case 2uLL:
        v13 = *(v2 + 16);
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_37;
        }

        v15 = *(v2 + 24);
LABEL_8:
        if (v15 < v14 || v13 >= v14)
        {
          goto LABEL_33;
        }

        v17 = OUTLINED_FUNCTION_1_1();
        result = sub_2620021FC(v17, v18, 0);
        v19 = result;
        if (v10)
        {
          if (v10 == 2)
          {
            v20 = *(v2 + 16);
          }

          else
          {
            v20 = v2;
          }
        }

        else
        {
          v20 = 0;
        }

        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          __break(1u);
        }

        else
        {
          v23 = v22 + 1;
          if (!__OFADD__(v22, 1))
          {
            if (v10)
            {
              if (v10 == 2)
              {
                v11 = *(v2 + 16);
              }

              if (v22 >= v11)
              {
                if (v10 == 2)
                {
                  v12 = *(v2 + 24);
                }

LABEL_28:
                if (v22 < v23 && v12 >= v23)
                {
                  v28 = OUTLINED_FUNCTION_1_1();
                  v30 = sub_2620021FC(v28, v29, 1);
                  v31 = OUTLINED_FUNCTION_1_1();
                  result = sub_261F6BFFC(v31, v32);
                  *v1 = v19;
                  v1[1] = v30;
                  return result;
                }
              }
            }

            else if ((v22 & 0x8000000000000000) == 0)
            {
              v12 = BYTE6(v0);
              goto LABEL_28;
            }

LABEL_33:
            sub_261F9BCE0();
            OUTLINED_FUNCTION_131();
            sub_26203ACEC();
            v25 = sub_261F9D610();
            OUTLINED_FUNCTION_6(v25);
            goto LABEL_34;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
        return result;
      case 3uLL:
        goto LABEL_33;
      default:
        v13 = 0;
        v14 = 1;
        v15 = BYTE6(v0);
        goto LABEL_8;
    }
  }

  sub_261F9BCE0();
  OUTLINED_FUNCTION_122();
  sub_26203ACEC();
  OUTLINED_FUNCTION_17_9();
  sub_26203A7CC();
  MEMORY[0x266722710](0xD00000000000001FLL, 0x8000000262051E20);
  v4 = OUTLINED_FUNCTION_1_1();
  MEMORY[0x266721A20](v4);
  OUTLINED_FUNCTION_126();
  v5 = sub_26203ABAC();
  MEMORY[0x266722710](v5);

  v6 = OUTLINED_FUNCTION_0_28();
  MEMORY[0x266722710](v6);
  OUTLINED_FUNCTION_126();
  v7 = sub_26203ABAC();
  MEMORY[0x266722710](v7);

  v8 = OUTLINED_FUNCTION_15_8();
  MEMORY[0x266722710](v8, 0xE600000000000000);
  v9 = sub_261F9D610();
  OUTLINED_FUNCTION_14_0(v9);
  OUTLINED_FUNCTION_0_0();
LABEL_34:
  sub_26203AD4C();
  swift_willThrow();
  v26 = OUTLINED_FUNCTION_1_1();
  return sub_261F6BFFC(v26, v27);
}

uint64_t sub_2620043E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v7 = *(a1 + 16);
  sub_261F6B73C(a2, a3);
  sub_261FDDBE0(0x28uLL, a2, a3, &v18);
  switch(v7)
  {
    case 6:
      sub_2620037E4();
      v16 = OUTLINED_FUNCTION_122();
      sub_261F6BFFC(v16, v17);
      OUTLINED_FUNCTION_27_6();
      result = OUTLINED_FUNCTION_28_7();
      v7 = v18;
      v11 = v19 | (WORD2(v19) << 32) | (BYTE6(v19) << 48);
      break;
    case 0x3A:
      sub_262004114();
      v12 = OUTLINED_FUNCTION_122();
      sub_261F6BFFC(v12, v13);
      OUTLINED_FUNCTION_27_6();
      result = OUTLINED_FUNCTION_28_7();
      v7 = v18;
      v11 = 0x4000000000000000;
      break;
    case 0x11:
      sub_262003DB4();
      v8 = OUTLINED_FUNCTION_122();
      sub_261F6BFFC(v8, v9);
      OUTLINED_FUNCTION_27_6();
      result = OUTLINED_FUNCTION_28_7();
      v7 = v18 | (WORD2(v18) << 32);
      v11 = 0x2000000000000000;
      break;
    default:
      sub_261F6BFFC(v18, v19);
      v14 = OUTLINED_FUNCTION_122();
      sub_261F6BFFC(v14, v15);
      OUTLINED_FUNCTION_27_6();
      result = OUTLINED_FUNCTION_28_7();
      v11 = 0x8000000000000000;
      break;
  }

  *a4 = v7;
  a4[1] = v11;
  return result;
}

uint64_t TunnelPacket.length.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  result = 0;
  switch(v2 >> 62)
  {
    case 1uLL:
      v4 = __OFSUB__(HIDWORD(v1), v1);
      v5 = HIDWORD(v1) - v1;
      if (v4)
      {
        __break(1u);
        goto LABEL_8;
      }

      result = v5;
      break;
    case 2uLL:
      v8 = v1 + 16;
      v6 = *(v1 + 16);
      v7 = *(v8 + 8);
      result = v7 - v6;
      if (__OFSUB__(v7, v6))
      {
LABEL_8:
        __break(1u);
      }

      break;
    case 3uLL:
      return result;
    default:
      result = BYTE6(v2);
      break;
  }

  return result;
}

uint64_t TunnelPacket.ipHeader.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  sub_261F6B73C(v3, v4);

  return sub_261F6B73C(v5, v6);
}

uint64_t TunnelPacket.transportProtocolHeader.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  *a1 = v2;
  a1[1] = v3;
  return sub_261F7B690(v2, v3);
}

uint64_t TunnelPacket.packetData.getter()
{
  v1 = *(v0 + 80);
  sub_261F6B73C(v1, *(v0 + 88));
  return v1;
}

uint64_t TunnelPacket.packetData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_261F6BFFC(*(v2 + 80), *(v2 + 88));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t TunnelPacket.init(data:ipHeader:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = *(a3 + 16);
  v10 = a3[3];
  v11 = a3[4];
  v12 = a3[5];
  v13 = a3[6];
  sub_261F6B73C(a1, a2);
  v14 = OUTLINED_FUNCTION_42_3();
  sub_261F6B73C(v14, v15);
  v16 = OUTLINED_FUNCTION_30_6();
  sub_261F6B73C(v16, v17);
  if (qword_28108CB70 != -1)
  {
    swift_once();
  }

  if (byte_27FF07DF0 == 1)
  {
    v24[0] = v7;
    v24[1] = v8;
    v25 = v9;
    v26 = v10;
    v27 = v11;
    v28 = v12;
    v29 = v13;
    result = sub_2620043E4(v24, a1, a2, &v30);
    v19 = v30;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_42_3();
    sub_261F6BFFC(v20, v21);
    v22 = OUTLINED_FUNCTION_30_6();
    sub_261F6BFFC(v22, v23);
    result = sub_261F6BFFC(a1, a2);
    v19 = xmmword_26203F730;
  }

  *a4 = 30;
  *(a4 + 8) = v7;
  *(a4 + 16) = v8;
  *(a4 + 24) = v9;
  *(a4 + 32) = v10;
  *(a4 + 40) = v11;
  *(a4 + 48) = v12;
  *(a4 + 56) = v13;
  *(a4 + 64) = v19;
  *(a4 + 80) = a1;
  *(a4 + 88) = a2;
  return result;
}

BOOL TunnelPacket.isValidPacket.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = 0;
  switch(v2 >> 62)
  {
    case 1uLL:
      LODWORD(v3) = HIDWORD(v1) - v1;
      if (__OFSUB__(HIDWORD(v1), v1))
      {
        goto LABEL_14;
      }

      v3 = v3;
      goto LABEL_6;
    case 2uLL:
      v6 = v1 + 16;
      v5 = *(v1 + 16);
      v4 = *(v6 + 8);
      v7 = __OFSUB__(v4, v5);
      v3 = v4 - v5;
      if (!v7)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    case 3uLL:
      goto LABEL_6;
    default:
      v3 = BYTE6(v2);
LABEL_6:
      v8 = *(v0 + 8);
      v9 = *(v0 + 16);
      v7 = __OFADD__(v8, v9);
      v10 = v8 + v9;
      if (!v7)
      {
        return *v0 == 30 && v3 == v10;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      return result;
  }
}

void *TunnelPacket.isValidInboundPacket(localInterface:remoteAddress:)(void *result)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = result;
  v5 = 0;
  switch(v3 >> 62)
  {
    case 1uLL:
      LODWORD(v5) = HIDWORD(v2) - v2;
      if (__OFSUB__(HIDWORD(v2), v2))
      {
        goto LABEL_17;
      }

      v5 = v5;
      goto LABEL_6;
    case 2uLL:
      v8 = v2 + 16;
      v7 = *(v2 + 16);
      v6 = *(v8 + 8);
      v9 = __OFSUB__(v6, v7);
      v5 = v6 - v7;
      if (!v9)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    case 3uLL:
      goto LABEL_6;
    default:
      v5 = BYTE6(v3);
LABEL_6:
      v10 = *(v1 + 8);
      v11 = *(v1 + 16);
      v9 = __OFADD__(v10, v11);
      v12 = v10 + v11;
      if (v9)
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
      }

      else
      {
        v13 = *v1 == 30 && v5 == v12;
        if (v13 && (v14 = OUTLINED_FUNCTION_42_3(), sub_261F6B73C(v14, v15), v16 = sub_262039AAC(), v18 = v17, v19 = OUTLINED_FUNCTION_42_3(), v20 = MEMORY[0x2667219E0](v19), sub_261F6BFFC(v16, v18), v21 = OUTLINED_FUNCTION_42_3(), sub_261F6BFFC(v21, v22), (v20 & 1) != 0))
        {
          v23 = v4[3];
          v24 = v4[4];
          __swift_project_boxed_opaque_existential_0Tm(v4, v23);
          v25 = *(v24 + 48);
          v26 = OUTLINED_FUNCTION_75();
          sub_261F6B73C(v26, v27);
          v25(v34, v23, v24);
          __swift_project_boxed_opaque_existential_0Tm(v34, v34[3]);
          sub_262039EBC();
          v28 = OUTLINED_FUNCTION_75();
          v29 = MEMORY[0x2667219E0](v28);
          v30 = OUTLINED_FUNCTION_75();
          sub_261F6BFFC(v30, v31);
          v32 = OUTLINED_FUNCTION_131();
          sub_261F6BFFC(v32, v33);
          __swift_destroy_boxed_opaque_existential_0Tm(v34);
        }

        else
        {
          v29 = 0;
        }

        return (v29 & 1);
      }

      return result;
  }
}

void *TunnelPacket.isValidOutboundPacket(localInterface:remoteAddress:)(void *result)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = 0;
  switch(v3 >> 62)
  {
    case 1uLL:
      LODWORD(v4) = HIDWORD(v2) - v2;
      if (__OFSUB__(HIDWORD(v2), v2))
      {
        goto LABEL_17;
      }

      v4 = v4;
      goto LABEL_6;
    case 2uLL:
      v7 = v2 + 16;
      v6 = *(v2 + 16);
      v5 = *(v7 + 8);
      v8 = __OFSUB__(v5, v6);
      v4 = v5 - v6;
      if (!v8)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    case 3uLL:
      goto LABEL_6;
    default:
      v4 = BYTE6(v3);
LABEL_6:
      v9 = *(v1 + 8);
      v10 = *(v1 + 16);
      v8 = __OFADD__(v9, v10);
      v11 = v9 + v10;
      if (v8)
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
      }

      else
      {
        v12 = *v1 == 30 && v4 == v11;
        if (v12 && (v13 = result[4], __swift_project_boxed_opaque_existential_0Tm(result, result[3]), v14 = *(v13 + 48), v15 = OUTLINED_FUNCTION_42_3(), sub_261F6B73C(v15, v16), v17 = OUTLINED_FUNCTION_30_6(), v14(v17), __swift_project_boxed_opaque_existential_0Tm(v32, v32[3]), OUTLINED_FUNCTION_30_6(), v18 = sub_262039EBC(), v20 = v19, v21 = OUTLINED_FUNCTION_42_3(), LOBYTE(v13) = MEMORY[0x2667219E0](v21), v22 = OUTLINED_FUNCTION_42_3(), sub_261F6BFFC(v22, v23), sub_261F6BFFC(v18, v20), __swift_destroy_boxed_opaque_existential_0Tm(v32), (v13 & 1) != 0))
        {
          v24 = OUTLINED_FUNCTION_75();
          sub_261F6B73C(v24, v25);
          sub_262039AAC();
          v26 = OUTLINED_FUNCTION_75();
          v27 = MEMORY[0x2667219E0](v26);
          v28 = OUTLINED_FUNCTION_131();
          sub_261F6BFFC(v28, v29);
          v30 = OUTLINED_FUNCTION_75();
          sub_261F6BFFC(v30, v31);
        }

        else
        {
          v27 = 0;
        }

        return (v27 & 1);
      }

      return result;
  }
}

uint64_t ReadPacketGroup.finalize.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_262004BD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
  if (v4 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6B73616D74656ELL && a2 == 0xE700000000000000;
    if (v6 || (sub_26203AC0C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 7697517 && a2 == 0xE300000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_26203AC0C();

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

uint64_t sub_262004CEC(char a1)
{
  if (!a1)
  {
    return 0x73736572646461;
  }

  if (a1 == 1)
  {
    return 0x6B73616D74656ELL;
  }

  return 7697517;
}

uint64_t sub_262004D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_262004BD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_262004D6C(uint64_t a1)
{
  v2 = sub_262004F8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262004DA8(uint64_t a1)
{
  v2 = sub_262004F8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TunnelInterfaceParameters.encode(to:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA458, &qword_262044980);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_262004F8C();
  sub_26203AE5C();
  v11 = 0;
  sub_262039ACC();
  sub_262005384(&qword_28108B398, &protocol conformance descriptor for IPv6Address);
  OUTLINED_FUNCTION_24_6(v3, &v11);
  if (!v2)
  {
    v6 = *(type metadata accessor for TunnelInterfaceParameters(0) + 20);
    v10 = 1;
    OUTLINED_FUNCTION_24_6(v3 + v6, &v10);
    sub_26203AB6C();
  }

  v7 = OUTLINED_FUNCTION_1_1();
  return v8(v7);
}

unint64_t sub_262004F8C()
{
  result = qword_28108B928;
  if (!qword_28108B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B928);
  }

  return result;
}

uint64_t TunnelInterfaceParameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v36 = sub_262039ACC();
  OUTLINED_FUNCTION_0();
  v34 = v4;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v35 = &v29 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA460, &qword_262044988);
  OUTLINED_FUNCTION_0();
  v37 = v11;
  v38 = v10;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v12);
  v13 = type metadata accessor for TunnelInterfaceParameters(0);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_262004F8C();
  sub_26203AE3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v31 = v16;
  v32 = a1;
  v30 = v13;
  v41 = 0;
  sub_262005384(&qword_27FEF9E00, &protocol conformance descriptor for IPv6Address);
  v17 = v35;
  v18 = v36;
  OUTLINED_FUNCTION_25_3(v36, &v41);
  v35 = *(v34 + 32);
  (v35)(v31, v17, v18);
  v40 = 1;
  v19 = v8;
  OUTLINED_FUNCTION_25_3(v18, &v40);
  v21 = v30;
  v20 = v31;
  (v35)(&v31[*(v30 + 20)], v19, v18);
  v39 = 2;
  v22 = sub_26203AA5C();
  v23 = v20;
  v24 = v32;
  v25 = v22;
  v26 = OUTLINED_FUNCTION_31_6();
  v27(v26);
  *(v23 + *(v21 + 24)) = v25;
  sub_2620053C8(v23, v33);
  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  return sub_261FCF214(v23);
}

uint64_t sub_262005384(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_262039ACC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2620053C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TunnelInterfaceParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_262005470(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 96))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 40) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 40) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_2620054BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *(result + 40) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void *__swift_memcpy15_4(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TunnelPacket.TCPSegmentHeader(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 15))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TunnelPacket.TCPSegmentHeader(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 14) = 0;
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 15) = v3;
  return result;
}

uint64_t __swift_memcpy6_2(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TunnelPacket.UDPDatagramHeader(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TunnelPacket.UDPDatagramHeader(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 6) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TunnelPacket.ICMPv6Header(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if ((a2 + 0xFFFF) < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 0xFFFF;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        return 0;
      }

      return (*a1 | (v4 << 16)) - 0xFFFF;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 0xFFFF;
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for TunnelPacket.ICMPv6Header(uint64_t result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
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
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        break;
      case 2:
        *(result + 2) = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *(result + 2) = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_26200575C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xC && *(a1 + 16))
    {
      v2 = *a1 + 11;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 1) & 0xFFFFFFF7 | (8 * ((*(a1 + 8) & 0x1000000000000000) != 0))) ^ 0xF;
      if (v2 >= 0xB)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_2620057A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 3) & 1) - 2 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_262005850(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 89))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_262005870(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 89) = v3;
  return result;
}

uint64_t sub_2620059FC(uint64_t a1)
{
  result = sub_262039ACC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TunnelInterfaceParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_262005B68()
{
  result = qword_27FEFA468;
  if (!qword_27FEFA468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA468);
  }

  return result;
}

unint64_t sub_262005BC0()
{
  result = qword_27FEFA470;
  if (!qword_27FEFA470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA470);
  }

  return result;
}

unint64_t sub_262005C18()
{
  result = qword_27FEFA478;
  if (!qword_27FEFA478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA478);
  }

  return result;
}

unint64_t sub_262005C70()
{
  result = qword_27FEFA480;
  if (!qword_27FEFA480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA480);
  }

  return result;
}

unint64_t sub_262005CC8()
{
  result = qword_27FEFA488;
  if (!qword_27FEFA488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA488);
  }

  return result;
}

unint64_t sub_262005D20()
{
  result = qword_28108B918;
  if (!qword_28108B918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B918);
  }

  return result;
}

unint64_t sub_262005D78()
{
  result = qword_28108B920;
  if (!qword_28108B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B920);
  }

  return result;
}

uint64_t sub_262005DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_26203937C();
  if (v6)
  {
    v7 = v6;
    result = sub_2620393AC();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v9 = a1 - result + v7;
  }

  else
  {
    v9 = 0;
  }

  result = sub_26203939C();
  if (v9)
  {
    return *(v9 + a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_262005E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_26203937C();
  if (v6)
  {
    v7 = v6;
    result = sub_2620393AC();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v9 = a1 - result + v7;
  }

  else
  {
    v9 = 0;
  }

  result = sub_26203939C();
  if (v9)
  {
    return bswap32(*(v9 + a4));
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_27_6()
{

  return sub_261F6BFFC(v1, v0);
}

uint64_t sub_262005F2C()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_27FEFA490 = result;
  return result;
}

uint64_t sub_262005FA8()
{
  if (qword_27FEF86D8 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_27FEFA49A)
  {
    v1 = 16032;
  }

  else
  {
    v1 = 4096;
  }

  word_27FEFA498 = v1;
  return result;
}

char *sub_262006034()
{
  if (qword_27FEF86D8 != -1)
  {
    OUTLINED_FUNCTION_2_22(&qword_27FEF86D8);
  }

  return &byte_27FEFA49A;
}

uint64_t sub_262006074()
{
  result = sub_262006098();
  byte_27FEFA49A = result & 1;
  return result;
}

uint64_t sub_262006098()
{
  v0 = sub_262039FBC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SkywalkChannelVirtualInterface();
  sub_261F9B6D0(0, &qword_28108CFB0, 0x277D85C78);
  (*(v1 + 104))(v3, *MEMORY[0x277D851C8], v0);
  v4 = sub_26203A59C();
  (*(v1 + 8))(v3, v0);
  v5 = sub_26200633C(v4, 16032);

  if (!v5)
  {
    v8 = sub_26203A4AC();
    if (qword_27FEF86C8 != -1)
    {
      swift_once();
    }

    sub_26203969C(v8, &dword_261F5B000, qword_27FEFA490, "Wide skywalk channels are not supported on this build. Received error constructing interface in order to probe wide skywalk channel availability", 144, 2, MEMORY[0x277D84F90]);
    return 0;
  }

  if (!NEVirtualInterfaceSetMTU())
  {
    v9 = sub_26203A4AC();
    if (qword_27FEF86C8 != -1)
    {
      swift_once();
    }

    sub_26203969C(v9, &dword_261F5B000, qword_27FEFA490, "Wide skywalk channels are not supported on this build. Received error when configuring wide MTU on test interface", 113, 2, MEMORY[0x277D84F90]);

    return 0;
  }

  NEVirtualInterfaceInvalidate();
  v6 = sub_26203A4AC();
  if (qword_27FEF86C8 != -1)
  {
    swift_once();
  }

  sub_26203969C(v6, &dword_261F5B000, qword_27FEFA490, "Wide skywalk channels are supported on this build", 49, 2, MEMORY[0x277D84F90]);

  return 1;
}

uint64_t sub_26200633C(uint64_t a1, uint64_t a2)
{
  sub_26203A0FC();
  v2 = MEMORY[0x277D839B0];
  v8 = MEMORY[0x277D839B0];
  LOBYTE(v7) = 1;
  sub_261F8D184(&v7, v6);
  swift_isUniquelyReferenced_nonNull_native();
  sub_261FA4260();
  v8 = v2;
  LOBYTE(v7) = 1;
  sub_261F8D184(&v7, v6);
  swift_isUniquelyReferenced_nonNull_native();
  sub_261FA4260();
  v3 = sub_26203A0BC();

  NexusExtendedWithOptions = NEVirtualInterfaceCreateNexusExtendedWithOptions();

  result = 0;
  if (NexusExtendedWithOptions)
  {
    type metadata accessor for _ManagedOpaqueCFTypeWrapper();
    swift_allocObject();
    return _ManagedOpaqueCFTypeWrapper.init(retainedValue:)(NexusExtendedWithOptions);
  }

  return result;
}

uint64_t static SkywalkChannelVirtualInterface.wideSkywalkChannelSupported.getter()
{
  if (qword_27FEF86D8 != -1)
  {
    OUTLINED_FUNCTION_2_22(&qword_27FEF86D8);
  }

  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return byte_27FEFA49A;
}

uint64_t static SkywalkChannelVirtualInterface.wideSkywalkChannelSupported.setter(char a1)
{
  if (qword_27FEF86D8 != -1)
  {
    OUTLINED_FUNCTION_2_22(&qword_27FEF86D8);
  }

  result = swift_beginAccess();
  byte_27FEFA49A = a1 & 1;
  return result;
}

uint64_t (*static SkywalkChannelVirtualInterface.wideSkywalkChannelSupported.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FEF86D8 != -1)
  {
    OUTLINED_FUNCTION_2_22(&qword_27FEF86D8);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_262006620@<X0>(_BYTE *a1@<X8>)
{
  sub_262006034();
  result = swift_beginAccess();
  *a1 = byte_27FEFA49A;
  return result;
}

uint64_t sub_262006670(char *a1)
{
  v1 = *a1;
  sub_262006034();
  result = swift_beginAccess();
  byte_27FEFA49A = v1;
  return result;
}

uint64_t sub_2620066C4()
{
  if (qword_27FEF86D0 != -1)
  {
    result = swift_once();
  }

  if (((word_27FEFA498 - 32) & 0xFFFF0000) != 0)
  {
    __break(1u);
  }

  else
  {
    word_27FEFA49C = word_27FEFA498 - 32;
  }

  return result;
}

uint64_t static SkywalkChannelVirtualInterface.maxSupportedMTU.getter()
{
  if (qword_27FEF86E0 != -1)
  {
    OUTLINED_FUNCTION_6_14(&qword_27FEF86E0);
  }

  return word_27FEFA49C;
}

uint64_t static SkywalkChannelVirtualInterface.maxSupportedPendingPackets.getter()
{
  if (qword_28108B4C0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_7_2();
  v0 = swift_beginAccess();
  OUTLINED_FUNCTION_21_2(v0, v1, v2, v3, v4, v5, v6, v7, v15, v16, v17, v18, v19, v20, v21, v22, v23[0], v23[1], v24);
  v8 = sub_261F83CD4();
  v10 = v9;
  sub_261FC2F14(v23, &qword_27FEF9148, &qword_262040450);
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = 1;
  }

  if (v8 <= 0x400)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1024;
  }

  if (HIDWORD(v8))
  {
    v13 = 32;
  }

  else
  {
    v13 = v12;
  }

  if (v10)
  {
    return 32;
  }

  else
  {
    return v13;
  }
}

uint64_t static SkywalkChannelVirtualInterface.defaultMTU.getter()
{
  if (qword_28108B518 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_7_2();
  v0 = swift_beginAccess();
  OUTLINED_FUNCTION_21_2(v0, v1, v2, v3, v4, v5, v6, v7, v13, v14, v15, v16, v17, v18, v19, v20, v21[0], v21[1], v22);
  v8 = sub_261F83CD4();
  v10 = v9;
  sub_261FC2F14(v21, &qword_27FEF9148, &qword_262040450);
  if ((v10 & 1) != 0 || v8 >> 16)
  {
    if (qword_27FEF86E0 != -1)
    {
      OUTLINED_FUNCTION_6_14(&qword_27FEF86E0);
    }

    return word_27FEFA49C;
  }

  else
  {
    if (qword_27FEF86E0 != -1)
    {
      OUTLINED_FUNCTION_6_14(&qword_27FEF86E0);
    }

    v11 = v8;
    if (v8 <= 0x500u)
    {
      v11 = 1280;
    }

    if (word_27FEFA49C >= v8)
    {
      return v11;
    }

    else
    {
      return word_27FEFA49C;
    }
  }
}

uint64_t sub_262006940()
{
  v0 = nw_context_create();
  nw_context_set_isolate_protocol_stack();
  nw_context_set_scheduling_mode();
  result = nw_context_activate();
  qword_27FEFA4A0 = v0;
  return result;
}

uint64_t SkywalkChannelVirtualInterface.interfaceName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SkywalkChannelVirtualInterface.__allocating_init(queue:address:netmask:mtu:maxPendingPackets:physicalInterfaceName:)(void *a1, char *a2, void *a3, int a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  SkywalkChannelVirtualInterface.init(queue:address:netmask:mtu:maxPendingPackets:physicalInterfaceName:)(a1, a2, a3, a4 & 0x1FFFF, a5 | ((HIDWORD(a5) & 1) << 32), a6, a7);
  return v14;
}

void *SkywalkChannelVirtualInterface.init(queue:address:netmask:mtu:maxPendingPackets:physicalInterfaceName:)(void *a1, char *a2, void *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_262039F9C();
  OUTLINED_FUNCTION_0();
  v94 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_74();
  v17 = (v16 - v15);
  *(v7 + 152) = 0;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0u;
  *(v7 + 120) = 0;
  if (qword_28108B4A0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v18 = qword_28108B4A8;
  v19 = unk_28108B4B0;
  v20 = byte_28108B4B8;
  if (byte_28108B4B9)
  {
    v21 = 256;
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_261F83BA8(v18, v19, v21 | v20);

  if (v22)
  {
    v23 = sub_26200785C(a2, a1);
    v24 = *(v8 + 152);
    *(v8 + 152) = v23;
  }

  if ((a4 & 0x10000) != 0)
  {
    a4 = static SkywalkChannelVirtualInterface.defaultMTU.getter();
  }

  if (((a4 + 32) & 0x10000) != 0)
  {
    __break(1u);
LABEL_56:
    swift_once();
LABEL_14:
    *(v8 + 144) = qword_27FEFA4A0;
    v101 = 0;
    swift_unknownObjectRetain();

    sub_26203A7CC();

    v99[0] = 0xD000000000000029;
    v99[1] = 0x800000026204F720;
    MEMORY[0x266722710](v12, v17);
    sub_26203A21C();

    v28 = os_transaction_create();

    v29 = a7;
    if (!v28)
    {

      sub_261F9BCE0();
      OUTLINED_FUNCTION_1_21();
      OUTLINED_FUNCTION_18_6();
      v43 = sub_261F9D610();
      OUTLINED_FUNCTION_6(v43);
      OUTLINED_FUNCTION_16_12();
      OUTLINED_FUNCTION_14_12();
      sub_26203AD4C();
      swift_willThrow();
      OUTLINED_FUNCTION_35_4(&v101, v12);

      goto LABEL_43;
    }

    v91 = v12;
    v92 = a1;
    v93 = v17;
    v30 = a2;
    v90 = v28;
    if (!v29)
    {
      v44 = sub_26203A4AC();
      v45 = a3;
      if (qword_27FEF86C8 != -1)
      {
        OUTLINED_FUNCTION_0_29();
        swift_once();
      }

      sub_26203969C(v44, &dword_261F5B000, qword_27FEFA490, "Failed to set delegate interface on virtual interface as physicalInterfaceName is nil", 85, 2, MEMORY[0x277D84F90], v88, v89);
      goto LABEL_33;
    }

    v31 = sub_26203A4AC();
    if (qword_27FEF86C8 != -1)
    {
      OUTLINED_FUNCTION_0_29();
      swift_once();
    }

    v32 = qword_27FEFA490;
    if (os_log_type_enabled(qword_27FEFA490, v31))
    {
      OUTLINED_FUNCTION_42_1();
      v33 = swift_slowAlloc();
      OUTLINED_FUNCTION_30();
      v34 = swift_slowAlloc();
      v99[0] = v34;
      *v33 = 136446210;
      *(v33 + 4) = OUTLINED_FUNCTION_27_7();
      _os_log_impl(&dword_261F5B000, v32, v31, "Physical interface name is:%{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
      v30 = a2;
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
    }

    v35 = sub_26203A18C();
    v36 = NEVirtualInterfaceSetDelegateInterface();

    if (v36)
    {
      LOBYTE(v37) = sub_26203A4AC();
      if (os_log_type_enabled(v32, v37))
      {
        OUTLINED_FUNCTION_42_1();
        v38 = swift_slowAlloc();
        OUTLINED_FUNCTION_30();
        v39 = swift_slowAlloc();
        v99[0] = v39;
        *v38 = 136315138;
        v40 = OUTLINED_FUNCTION_27_7();

        *(v38 + 4) = v40;
        v41 = "Assigned %s as the delegate interface on virtual interface successfully";
LABEL_30:
        _os_log_impl(&dword_261F5B000, v32, v37, v41, v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v39);
        v30 = a2;
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
LABEL_32:
        v45 = a3;
LABEL_33:
        sub_261F79740(v30, v99);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9B40, &qword_262040458);
        v47 = sub_26203A20C();
        v49 = v48;
        sub_261F79740(v45, v99);
        v50 = sub_26203A20C();
        v52 = v51;
        v53 = sub_26203A18C();
        v54 = v20;
        v55 = sub_26203A18C();
        v56 = NEVirtualInterfaceAddAddress();

        if (!v56)
        {

          sub_261F9BCE0();
          OUTLINED_FUNCTION_5_11();
          sub_26203AD3C();
          OUTLINED_FUNCTION_18_6();
          sub_26203A7CC();
          MEMORY[0x266722710](0xD000000000000017, 0x800000026204F8D0);
          MEMORY[0x266722710](v47, v49);

          MEMORY[0x266722710](0xD000000000000010, 0x800000026204F8F0);
          MEMORY[0x266722710](v50, v52);

          v63 = OUTLINED_FUNCTION_22(0x6F742027u);
          MEMORY[0x266722710](v63, v64 & 0xFFFFFFFFFFFFLL | 0xEF2E000000000000);
          sub_261F9D610();
          swift_allocError();
          sub_26203AD4C();
          swift_willThrow();
          swift_unknownObjectRelease();
          v65 = OUTLINED_FUNCTION_22_8();
          sub_262008160(v65, v66, v93, v54);

          v67 = OUTLINED_FUNCTION_37_3();
          __swift_destroy_boxed_opaque_existential_0Tm(v67);
          v62 = 0;
          v20 = v54;
          goto LABEL_45;
        }

        v20 = v54;
        if (NEVirtualInterfaceSetRankNever())
        {
          if (NEVirtualInterfaceUpdateAdHocService() && NEVirtualInterfaceSetMTU())
          {
            if ((a5 & 0x100000000) != 0 || NEVirtualInterfaceSetMaxPendingPackets())
            {
              *(v8 + 16) = v91;
              *(v8 + 24) = v93;
              sub_261F79740(a2, v8 + 32);
              *(v8 + 72) = v54;
              *(v8 + 80) = v92;
              *(v8 + 128) = v90;
              v57 = *(v54 + 16);
              v58 = *(v8 + 144);

              v59 = v92;
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              v60 = sub_2620082E0(v57, v58);
              if (!v95)
              {
                v75 = v60;
                swift_unknownObjectRelease();

                v76 = *(v8 + 144);
                *v89 = 10;
                (*(v94 + 104))(v89, *MEMORY[0x277D85188], v88);
                type metadata accessor for SkywalkVirtualInterfaceNetworkProtocol(0);
                swift_allocObject();
                v77 = v59;
                swift_unknownObjectRetain();
                v78 = sub_26203531C(v75, v77, v91, v93, v76, v89);
                swift_unknownObjectRelease();

                *(v8 + 136) = v78;
                v79 = swift_allocObject();
                swift_weakInit();
                v80 = *(v78 + 16);
                v81 = *(v78 + 24);
                *(v78 + 16) = sub_26200A448;
                *(v78 + 24) = v79;

                sub_261F665E4(v80, v81);

                v82 = *(v8 + 136);
                v83 = swift_allocObject();
                swift_weakInit();

                v84 = *(v82 + 32);
                v85 = *(v82 + 40);
                *(v82 + 32) = sub_26200A450;
                *(v82 + 40) = v83;

                sub_261F665E4(v84, v85);

                v86 = OUTLINED_FUNCTION_37_3();
                __swift_destroy_boxed_opaque_existential_0Tm(v86);
                return v8;
              }

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              OUTLINED_FUNCTION_35_4(&v101, v91);

              v61 = OUTLINED_FUNCTION_37_3();
              __swift_destroy_boxed_opaque_existential_0Tm(v61);

              __swift_destroy_boxed_opaque_existential_0Tm((v8 + 32));

              v62 = 1;
LABEL_45:
              sub_261F665E4(*(v8 + 88), *(v8 + 96));
              sub_262007818(*(v8 + 104), *(v8 + 112));
              if (v62)
              {
                swift_unknownObjectRelease();
              }

              if (v20)
              {
                swift_unknownObjectRelease();
              }

              swift_deallocPartialClassInstance();
              return v8;
            }

            sub_261F9BCE0();
            OUTLINED_FUNCTION_1_21();
            OUTLINED_FUNCTION_18_6();
            v87 = sub_261F9D610();
            OUTLINED_FUNCTION_6(v87);
          }

          else
          {

            sub_261F9BCE0();
            OUTLINED_FUNCTION_1_21();
            OUTLINED_FUNCTION_18_6();
            v72 = sub_261F9D610();
            OUTLINED_FUNCTION_6(v72);
            OUTLINED_FUNCTION_16_12();
          }

          OUTLINED_FUNCTION_14_12();
          sub_26203AD4C();
          swift_willThrow();
          swift_unknownObjectRelease();
          v73 = OUTLINED_FUNCTION_22_8();
          OUTLINED_FUNCTION_35_4(v73, v74);

          __swift_destroy_boxed_opaque_existential_0Tm(a3);
          v71 = a2;
LABEL_44:
          __swift_destroy_boxed_opaque_existential_0Tm(v71);
          v62 = 0;
          goto LABEL_45;
        }

        sub_261F9BCE0();
        OUTLINED_FUNCTION_1_21();
        OUTLINED_FUNCTION_18_6();
        v68 = sub_261F9D610();
        OUTLINED_FUNCTION_6(v68);
        OUTLINED_FUNCTION_16_12();
        OUTLINED_FUNCTION_14_12();
        sub_26203AD4C();
        swift_willThrow();
        swift_unknownObjectRelease();
        v69 = OUTLINED_FUNCTION_22_8();
        OUTLINED_FUNCTION_35_4(v69, v70);

LABEL_43:
        v71 = OUTLINED_FUNCTION_37_3();
        goto LABEL_44;
      }
    }

    else
    {
      v37 = sub_26203A49C();
      if (os_log_type_enabled(v32, v37))
      {
        OUTLINED_FUNCTION_42_1();
        v38 = swift_slowAlloc();
        OUTLINED_FUNCTION_30();
        v39 = swift_slowAlloc();
        v99[0] = v39;
        *v38 = 136315138;
        v46 = OUTLINED_FUNCTION_27_7();

        *(v38 + 4) = v46;
        v41 = "Failed to set %s as the delegate interface on virtual interface";
        goto LABEL_30;
      }
    }

    goto LABEL_32;
  }

  v20 = sub_26200633C(a1, (a4 + 32));
  if (!v20)
  {

    sub_261F9BCE0();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_18_6();
    v42 = sub_261F9D610();
    OUTLINED_FUNCTION_6(v42);
    v20 = 0;
    OUTLINED_FUNCTION_14_12();
    sub_26203AD4C();
    swift_willThrow();

    goto LABEL_43;
  }

  v88 = v12;
  v89 = v17;
  result = NEVirtualInterfaceCopyName();
  if (result)
  {
    v26 = result;
    v100 = a4;
    v12 = sub_26203A1BC();
    v17 = v27;

    if (qword_27FEF86E8 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_56;
  }

  __break(1u);
  return result;
}

uint64_t sub_262007818(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26200785C(char *a1, void *a2)
{
  v84 = a2;
  v85 = a1;
  sub_26203A1FC();
  OUTLINED_FUNCTION_0();
  v89 = v3;
  v90 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_74();
  v88 = v5 - v4;
  sub_26203A4CC();
  OUTLINED_FUNCTION_0();
  v86 = v7;
  v87 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_74();
  v91 = (v9 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA4B0, &unk_262045270);
  v11 = OUTLINED_FUNCTION_40(v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v77 - v12;
  v14 = sub_26203942C();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v19);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v77 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v83 = &v77 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v77 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v77 - v29;
  v31 = [objc_opt_self() defaultManager];
  v32 = [v31 URLsForDirectory:13 inDomains:1];

  v33 = sub_26203A3CC();
  sub_261FD45F4(v33);

  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_261FC2F14(v13, &unk_27FEFA4B0, &unk_262045270);
    v34 = sub_26203A48C();
    if (qword_27FEF86C8 != -1)
    {
      OUTLINED_FUNCTION_0_29();
      swift_once();
    }

    sub_26203969C(v34, &dword_261F5B000, qword_27FEFA490, "Failed to find caches directory to create packet tracing logger", 63, 2, MEMORY[0x277D84F90]);
    return 0;
  }

  v78 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v23;
  v81 = *(v16 + 32);
  v82 = v16;
  v81(v30, v13, v14);
  v96 = 0;
  v97 = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9B40, &qword_262040458);
  sub_26203A8CC();
  MEMORY[0x266722710](0x2E6C656E6E75742DLL, 0xEB00000000676F6CLL);
  v94 = 58;
  v95 = 0xE100000000000000;
  v92 = 45;
  v93 = 0xE100000000000000;
  sub_261FC2E54();
  v80 = v14;
  OUTLINED_FUNCTION_7_2();
  sub_26203A70C();

  v85 = v30;
  sub_26203940C();
  (*(v86 + 104))(v91, *MEMORY[0x277D85218], v87);
  v96 = sub_26203941C();
  v97 = v37;
  v38 = v88;
  sub_26203A1EC();
  v39 = sub_26203A71C();
  (*(v89 + 8))(v38, v90);

  if (v39)
  {

    sub_261F9B6D0(0, &qword_27FEFA4C0, 0x277D85C70);
    v40 = v83;
    v41 = v82 + 16;
    v42 = v80;
    v90 = *(v82 + 16);
    v90(v83, v28, v80);
    v43 = (*(v41 + 64) + 16) & ~*(v41 + 64);
    v44 = swift_allocObject();
    v81((v44 + v43), v40, v42);
    v45 = v84;
    v35 = sub_26203A4FC();

    v46 = sub_26203A48C();
    v47 = v42;
    if (v35)
    {
      if (qword_27FEF86C8 != -1)
      {
        OUTLINED_FUNCTION_0_29();
        swift_once();
      }

      v48 = qword_27FEFA490;
      v49 = v79;
      v50 = OUTLINED_FUNCTION_26_4();
      v51(v50);
      if (os_log_type_enabled(v48, v46))
      {
        OUTLINED_FUNCTION_42_1();
        v52 = swift_slowAlloc();
        OUTLINED_FUNCTION_30();
        v53 = swift_slowAlloc();
        v96 = v53;
        *v52 = 136315138;
        OUTLINED_FUNCTION_11();
        sub_261F7AA38(v54, v55, MEMORY[0x277CC9290]);
        LODWORD(v90) = v46;
        v56 = sub_26203ABAC();
        v58 = v57;
        v91 = v28;
        v59 = *(v82 + 8);
        v59(v49, v47);
        v60 = sub_261F67FE4(v56, v58, &v96);

        *(v52 + 4) = v60;
        _os_log_impl(&dword_261F5B000, v48, v90, "Successfully created packet tracing logger at %s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v53);
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
        v59(v91, v47);
        v59(v85, v47);
      }

      else
      {
        v75 = OUTLINED_FUNCTION_29_0();
        v46(v75);
        (v46)(v28, v42);
        (v46)(v85, v42);
      }

      return v35;
    }

    if (qword_27FEF86C8 != -1)
    {
      OUTLINED_FUNCTION_0_29();
      swift_once();
    }

    v61 = qword_27FEFA490;
    v62 = v78;
    v63 = OUTLINED_FUNCTION_26_4();
    v64(v63);
    if (os_log_type_enabled(v61, v46))
    {
      OUTLINED_FUNCTION_42_1();
      v65 = swift_slowAlloc();
      OUTLINED_FUNCTION_30();
      v91 = swift_slowAlloc();
      v96 = v91;
      *v65 = 136315138;
      OUTLINED_FUNCTION_11();
      sub_261F7AA38(v66, v67, MEMORY[0x277CC9290]);
      v68 = v46;
      v69 = sub_26203ABAC();
      v71 = v70;
      v72 = v42;
      v73 = *(v82 + 8);
      v73(v62, v72);
      v74 = sub_261F67FE4(v69, v71, &v96);

      *(v65 + 4) = v74;
      _os_log_impl(&dword_261F5B000, v61, v68, "Failed to create packet tracing logger at %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v91);
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
      v73(v28, v72);
      v73(v85, v72);
    }

    else
    {
      v76 = OUTLINED_FUNCTION_29_0();
      v46(v76);
      (v46)(v28, v42);
      (v46)(v85, v42);
    }

    return 0;
  }

  __break(1u);
  return result;
}

_BYTE *sub_262008160(_BYTE *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((*result & 1) == 0)
  {
    v14[9] = v4;
    v15 = v5;
    v8 = sub_26203A48C();
    if (qword_27FEF86C8 != -1)
    {
      swift_once();
    }

    v9 = qword_27FEFA490;
    if (os_log_type_enabled(qword_27FEFA490, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14[0] = v11;
      *v10 = 136446210;
      if (a3)
      {
        v12 = a3;
      }

      else
      {
        a2 = 0x6E776F6E6B6E753CLL;
        v12 = 0xE90000000000003ELL;
      }

      v13 = sub_261F67FE4(a2, v12, v14);

      *(v10 + 4) = v13;
      _os_log_impl(&dword_261F5B000, v9, v8, "Cleaning up virtual interface %{public}s due to throwing init", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x266724180](v11, -1, -1);
      MEMORY[0x266724180](v10, -1, -1);
    }

    return NEVirtualInterfaceInvalidate();
  }

  return result;
}

ValueMetadata *sub_2620082E0(uint64_t a1, uint64_t a2)
{
  v2 = NEVirtualInterfaceCopyNexusInstances();
  if (!v2)
  {
    __break(1u);
  }

  v3 = v2;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for CFUUID(0);
    sub_26203A3BC();
  }

  sub_261F9BCE0();
  OUTLINED_FUNCTION_5_11();
  sub_26203AD3C();
  v4 = sub_261F9D610();
  OUTLINED_FUNCTION_6(v4);
  sub_26203AD4C();
  swift_willThrow();
  return &type metadata for RemotePairingError;
}

uint64_t sub_2620084BC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 88);
    if (v2)
    {
      v3 = *(result + 96);
      *(result + 88) = 0;
      *(result + 96) = 0;
      SkywalkChannelVirtualInterface.readPackets(completion:)(v2, v3);
      sub_261F665E4(v2, v3);
    }
  }

  return result;
}

void SkywalkChannelVirtualInterface.readPackets(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  OUTLINED_FUNCTION_0_21();
  v8[1] = 1107296256;
  OUTLINED_FUNCTION_1();
  v8[2] = v6;
  v8[3] = &block_descriptor_12;
  v7 = _Block_copy(v8);

  nw_queue_context_async_if_needed();
  _Block_release(v7);
}

void *sub_26200860C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = result[13];
    if (v3)
    {
      v4 = result[14];
      v5 = result[15];
      result[13] = 0;
      result[14] = 0;
      result[15] = 0;
      v6 = swift_allocObject();
      v6[2] = v2;
      v6[3] = v5;
      v6[4] = v3;
      v6[5] = v4;
      aBlock[4] = sub_26200AAF0;
      aBlock[5] = v6;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_261F78F64;
      aBlock[3] = &block_descriptor_30_1;
      v7 = _Block_copy(aBlock);
      swift_retain_n();

      swift_unknownObjectRetain();

      nw_queue_context_async_if_needed();
      _Block_release(v7);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void SkywalkChannelVirtualInterface.writePackets(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  OUTLINED_FUNCTION_0_21();
  v10[1] = 1107296256;
  OUTLINED_FUNCTION_1();
  v10[2] = v8;
  v10[3] = &block_descriptor_10_0;
  v9 = _Block_copy(v10);

  nw_queue_context_async_if_needed();
  _Block_release(v9);
}

uint64_t SkywalkChannelVirtualInterface.deinit()
{
  v1 = v0;
  v2 = sub_26203A4BC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_74();
  v8 = v7 - v6;
  v9 = sub_26203A4AC();
  if (qword_27FEF86C8 != -1)
  {
    OUTLINED_FUNCTION_0_29();
    swift_once();
  }

  v10 = qword_27FEFA490;
  if (os_log_type_enabled(qword_27FEFA490, v9))
  {
    OUTLINED_FUNCTION_42_1();
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_30();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_261F67FE4(*(v1 + 16), *(v1 + 24), aBlock);
    _os_log_impl(&dword_261F5B000, v10, v9, "Invalidating virtual interface ref for interface %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  NEVirtualInterfaceInvalidate();
  v13 = *(v1 + 152);
  if (v13)
  {
    aBlock[0] = MEMORY[0x277D84F90];
    sub_261F7AA38(&qword_27FEF9B48, MEMORY[0x277D85208], MEMORY[0x277D85210]);
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9B50, &unk_262040460);
    sub_261F7AA80(&qword_27FEF9B58, &qword_27FEF9B50, &unk_262040460);
    sub_26203A75C();
    sub_26203A50C();

    (*(v4 + 8))(v8, v2);
  }

  v15 = *(v1 + 136);
  aBlock[4] = sub_26200A974;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_1();
  aBlock[2] = v16;
  aBlock[3] = &block_descriptor_13_0;
  v17 = _Block_copy(aBlock);
  swift_retain_n();
  swift_unknownObjectRetain();

  nw_queue_context_async_if_needed();
  _Block_release(v17);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 32));

  sub_261F665E4(*(v1 + 88), *(v1 + 96));
  sub_262007818(*(v1 + 104), *(v1 + 112));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v1;
}

uint64_t SkywalkChannelVirtualInterface.__deallocating_deinit()
{
  SkywalkChannelVirtualInterface.deinit();

  return MEMORY[0x2821FE8D8](v0, 160, 7);
}

uint64_t sub_262008BE8(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v7 = a1;
  v8 = *(a2 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v35 = MEMORY[0x277D84F90];
    sub_261F95AE0(0, v8, 0);
    v9 = v35;
    v10 = (a2 + 120);
    v11 = v8;
    do
    {
      v12 = *(v10 - 1);
      v13 = *v10;
      sub_261F6B73C(v12, *v10);
      v15 = *(v35 + 16);
      v14 = *(v35 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_261F95AE0(v14 > 1, v15 + 1, 1);
      }

      v10 += 12;
      *(v35 + 16) = v15 + 1;
      v16 = v35 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      --v11;
    }

    while (v11);
    v5 = a3;
    v4 = a4;
    v7 = a1;
  }

  v17 = sub_262035D44(v9);

  if (v17 >= v8)
  {
    return v5(0);
  }

  v18 = sub_261FFAD40(v17);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  if ((v23 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_26203AC5C();
  swift_unknownObjectRetain_n();
  v28 = swift_dynamicCastClass();
  if (!v28)
  {
    swift_unknownObjectRelease();
    v28 = MEMORY[0x277D84F90];
  }

  v29 = *(v28 + 16);

  if (__OFSUB__(v24 >> 1, v22))
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v29 != (v24 >> 1) - v22)
  {
LABEL_22:
    swift_unknownObjectRelease();
LABEL_9:
    sub_261FFBE74(v18, v20, v22, v24);
    v26 = v25;
LABEL_17:
    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v26 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v26)
  {
    v26 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

LABEL_18:
  v30 = v7[13];
  v31 = v7[14];
  v7[13] = v5;
  v7[14] = v4;
  v7[15] = v26;

  return sub_262007818(v30, v31);
}