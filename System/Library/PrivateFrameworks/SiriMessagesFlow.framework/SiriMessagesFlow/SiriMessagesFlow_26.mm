int16x4_t *sub_267DE0CF0(int16x4_t *result)
{
  if (*&result[2] >= 5uLL)
  {
    return (result[5].i16[0] + vaddvq_s32(vmovl_s16(result[4])));
  }

  __break(1u);
  return result;
}

uint64_t sub_267DE0D1C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 < 6)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 == 6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 >= 8)
  {
    return *(result + 42) + *(result + 44) + *(result + 46);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_267DE0D58@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v77 = sub_267EF2CC8();
  OUTLINED_FUNCTION_58();
  v68 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v67 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_6();
  v76 = v6;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v7);
  v75 = &v64 - v8;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v9);
  v65 = &v64 - v10;
  OUTLINED_FUNCTION_3_54();
  v11 = *(v1 + 24);
  v12 = *(v11 + 16);
  if (!v12)
  {
    v14 = MEMORY[0x277D84F90];
LABEL_35:
    result = sub_267BAF0DC(v14);
    v41 = result;
    v42 = 0;
    v43 = v14 & 0xC000000000000001;
    v44 = v14;
    v45 = v14 & 0xFFFFFFFFFFFFFF8;
    v78 = MEMORY[0x277D84F90];
    v74 = v68 + 32;
    while (v41 != v42)
    {
      if (v43)
      {
        result = MEMORY[0x26D609870](v42, v44);
      }

      else
      {
        if (v42 >= *(v45 + 16))
        {
          goto LABEL_58;
        }

        result = *(v44 + 8 * v42 + 32);
      }

      v46 = result;
      v47 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v48 = [result dateSent];
      if (v48)
      {
        v49 = v48;
        v50 = v76;
        sub_267EF2C98();

        v51 = 0;
      }

      else
      {
        v51 = 1;
        v50 = v76;
      }

      v52 = v51;
      v53 = v77;
      __swift_storeEnumTagSinglePayload(v50, v52, 1, v77);
      v54 = v75;
      sub_267C5EE88(v50, v75);
      if (__swift_getEnumTagSinglePayload(v54, 1, v53) == 1)
      {
        result = sub_267B9FF34(v54, &qword_28022BD90, &unk_267EFCDD0);
        ++v42;
      }

      else
      {
        v55 = v54;
        v56 = *v74;
        (*v74)(v67, v55, v77);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_267C70B00();
          v78 = v60;
        }

        v57 = *(v78 + 16);
        if (v57 >= *(v78 + 24) >> 1)
        {
          sub_267C70B00();
          v78 = v61;
        }

        v58 = v77;
        v59 = v78;
        *(v78 + 16) = v57 + 1;
        result = v56(v59 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v57, v67, v58);
        v42 = v47;
      }
    }

    v62 = v65;
    sub_267DE1404(v78, v65);

    v63 = v77;
    if (__swift_getEnumTagSinglePayload(v62, 1, v77) != 1)
    {
      return (*v74)(v66, v62, v63);
    }

    sub_267EF2C18();
    result = __swift_getEnumTagSinglePayload(v62, 1, v63);
    if (result != 1)
    {
      return sub_267B9FF34(v62, &qword_28022BD90, &unk_267EFCDD0);
    }

    return result;
  }

  v73 = v11 + 32;
  v64 = v11;

  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  v69 = v12;
  while (1)
  {
    sub_267B9AFEC(v73 + 40 * v13, v80);
    v15 = v81;
    v16 = v82;
    __swift_project_boxed_opaque_existential_0(v80, v81);
    OUTLINED_FUNCTION_42_7();
    v18 = v17(v15, v16);

    __swift_destroy_boxed_opaque_existential_0(v80);
    v19 = v18 >> 62 ? sub_267EF9A68() : *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v14 >> 62;
    result = v14 >> 62 ? sub_267EF9A68() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = result + v19;
    if (__OFADD__(result, v19))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v78 = v19;
    if (result)
    {
      if (!v20)
      {
        v23 = v14 & 0xFFFFFFFFFFFFFF8;
        if (v22 <= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

LABEL_13:
      sub_267EF9A68();
      goto LABEL_14;
    }

    if (v20)
    {
      goto LABEL_13;
    }

LABEL_14:
    result = sub_267EF9BB8();
    v14 = result;
    v23 = result & 0xFFFFFFFFFFFFFF8;
LABEL_15:
    v24 = *(v23 + 16);
    v25 = (*(v23 + 24) >> 1) - v24;
    v26 = v23 + 8 * v24;
    v74 = v23;
    if (v18 >> 62)
    {
      v28 = OUTLINED_FUNCTION_16_30();
      if (v28)
      {
        v29 = v28;
        result = sub_267EF9A68();
        if (v25 < result)
        {
          goto LABEL_62;
        }

        if (v29 < 1)
        {
          goto LABEL_64;
        }

        v70 = result;
        v71 = v13;
        v72 = v14;
        v30 = v26 + 32;
        sub_267CF6EF8();
        for (i = 0; i != v29; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229968, &unk_267EFEBC0);
          v32 = OUTLINED_FUNCTION_13_34();
          v35 = sub_267C73FD8(v32, v33, v34);
          v37 = *v36;
          v35(v79, 0);
          *(v30 + 8 * i) = v37;
        }

        v13 = v71;
        v14 = v72;
        v12 = v69;
        v27 = v70;
        goto LABEL_25;
      }
    }

    else
    {
      v27 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27)
      {
        if (v25 < v27)
        {
          goto LABEL_63;
        }

        sub_267CF6EB4();
        swift_arrayInitWithCopy();
LABEL_25:

        if (v27 < v78)
        {
          goto LABEL_60;
        }

        if (v27 > 0)
        {
          v38 = *(v74 + 16);
          v39 = __OFADD__(v38, v27);
          v40 = v38 + v27;
          if (v39)
          {
            goto LABEL_61;
          }

          *(v74 + 16) = v40;
        }

        goto LABEL_30;
      }
    }

    if (v78 > 0)
    {
      goto LABEL_60;
    }

LABEL_30:
    if (++v13 == v12)
    {

      goto LABEL_35;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_267DE1404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_267EF2CC8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v20 = *(a1 + 16);
  if (v20)
  {
    v19 = a2;
    v11 = *(v5 + 16);
    v12 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11(&v19 - v9, v12, v4);
    v13 = (v5 + 32);
    for (i = 1; v20 != i; ++i)
    {
      v11(v8, v12 + *(v5 + 72) * i, v4);
      sub_267DE2CF4();
      v15 = sub_267EF8FD8();
      v16 = *(v5 + 8);
      if (v15)
      {
        v16(v10, v4);
        (*v13)(v10, v8, v4);
      }

      else
      {
        v16(v8, v4);
      }
    }

    v17 = v19;
    (*v13)(v19, v10, v4);
    return __swift_storeEnumTagSinglePayload(v17, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

void sub_267DE1640()
{
  OUTLINED_FUNCTION_3_54();
  v1 = *(v0 + 24);
  v2 = MEMORY[0x277D84F90];
  v38 = *(v1 + 16);
  if (v38)
  {
    v37 = v1 + 32;

    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_267B9AFEC(v37 + 40 * v3, v40);
      v5 = v41;
      v6 = v42;
      __swift_project_boxed_opaque_existential_0(v40, v41);
      OUTLINED_FUNCTION_42_7();
      v8 = v7(v5, v6);

      __swift_destroy_boxed_opaque_existential_0(v40);
      if (v8 >> 62)
      {
        v9 = sub_267EF9A68();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v4 >> 62;
      if (v4 >> 62)
      {
        v11 = sub_267EF9A68();
      }

      else
      {
        v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v11 + v9;
      if (__OFADD__(v11, v9))
      {
        goto LABEL_49;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v10)
      {
        goto LABEL_13;
      }

LABEL_14:
      v4 = sub_267EF9BB8();
      v13 = v4 & 0xFFFFFFFFFFFFFF8;
LABEL_15:
      v14 = *(v13 + 16);
      v15 = (*(v13 + 24) >> 1) - v14;
      v16 = v13 + 8 * v14;
      if (v8 >> 62)
      {
        v18 = sub_267EF9A68();
        if (!v18)
        {
LABEL_29:

          if (v9 > 0)
          {
            goto LABEL_50;
          }

          goto LABEL_30;
        }

        v19 = v18;
        v36 = sub_267EF9A68();
        if (v15 < v36)
        {
          goto LABEL_52;
        }

        if (v19 < 1)
        {
          goto LABEL_54;
        }

        v35 = v13;
        v20 = v16 + 32;
        sub_267CF6EF8();
        for (i = 0; i != v19; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229968, &unk_267EFEBC0);
          v22 = sub_267C73FD8(v39, i, v8);
          v24 = *v23;
          v22(v39, 0);
          *(v20 + 8 * i) = v24;
        }

        v13 = v35;
        v17 = v36;
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v17)
        {
          goto LABEL_29;
        }

        if (v15 < v17)
        {
          goto LABEL_53;
        }

        sub_267CF6EB4();
        swift_arrayInitWithCopy();
      }

      if (v17 < v9)
      {
        goto LABEL_50;
      }

      if (v17 > 0)
      {
        v25 = *(v13 + 16);
        v26 = __OFADD__(v25, v17);
        v27 = v25 + v17;
        if (v26)
        {
          goto LABEL_51;
        }

        *(v13 + 16) = v27;
      }

LABEL_30:
      if (++v3 == v38)
      {

        v2 = MEMORY[0x277D84F90];
        goto LABEL_35;
      }
    }

    if (!v10)
    {
      v13 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v12 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

LABEL_13:
    sub_267EF9A68();
    goto LABEL_14;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_35:
  v28 = v2;
  v40[0] = v2;
  v29 = sub_267BAF0DC(v4);
  v30 = 0;
  while (1)
  {
    if (v29 == v30)
    {

      sub_267D2F5A8(v28);
      return;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x26D609870](v30, v4);
    }

    else
    {
      if (v30 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v31 = *(v4 + 8 * v30 + 32);
    }

    v32 = v31;
    v33 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    v34 = [v31 sender];

    ++v30;
    if (v34)
    {
      MEMORY[0x26D608F90]();
      if (*((v40[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_267EF9328();
      }

      sub_267EF9368();
      v28 = v40[0];
      v30 = v33;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
}

id sub_267DE1A4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_6();
  v75 = v2;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v3);
  v74 = &v67 - v4;
  v80 = sub_267EF2CC8();
  v5 = *(v80 - 8);
  MEMORY[0x28223BE20](v80 - 8);
  OUTLINED_FUNCTION_6();
  v72 = v6;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v7);
  v76 = &v67 - v8;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v9);
  v79 = &v67 - v10;
  OUTLINED_FUNCTION_3_54();
  v11 = *(v0 + 24);
  v12 = *(v11 + 16);
  if (v12)
  {
    v68 = v5;
    v13 = v11 + 32;
    v67 = v11;

    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v70 = v12;
    v69 = v13;
    while (1)
    {
      sub_267B9AFEC(v13 + 40 * v14, v83);
      v16 = v84;
      v17 = v85;
      __swift_project_boxed_opaque_existential_0(v83, v84);
      OUTLINED_FUNCTION_42_7();
      v19 = v18(v16, v17);

      __swift_destroy_boxed_opaque_existential_0(v83);
      v5 = v19 >> 62;
      if (v19 >> 62)
      {
        v20 = sub_267EF9A68();
      }

      else
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v21 = v15 >> 62;
      if (v15 >> 62)
      {
        v22 = sub_267EF9A68();
      }

      else
      {
        v22 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v23 = &v20[v22];
      if (__OFADD__(v22, v20))
      {
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
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
        v43 = MEMORY[0x26D609870](0, v15);
        goto LABEL_38;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v81 = v20;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        break;
      }

      if (v21)
      {
        goto LABEL_13;
      }

LABEL_14:
      v15 = sub_267EF9BB8();
      v25 = v15 & 0xFFFFFFFFFFFFFF8;
LABEL_15:
      v26 = *(v25 + 16);
      v27 = (*(v25 + 24) >> 1) - v26;
      v28 = v25 + 8 * v26;
      v77 = v25;
      if (v5)
      {
        v29 = OUTLINED_FUNCTION_16_30();
        if (v29)
        {
          v30 = v29;
          v31 = sub_267EF9A68();
          if (v27 < v31)
          {
            goto LABEL_66;
          }

          if (v30 < 1)
          {
            goto LABEL_68;
          }

          v71 = v31;
          v73 = v14;
          v78 = v15;
          v32 = v28 + 32;
          sub_267CF6EF8();
          for (i = 0; i != v30; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229968, &unk_267EFEBC0);
            v34 = OUTLINED_FUNCTION_13_34();
            v37 = sub_267C73FD8(v34, v35, v36);
            v39 = *v38;
            v37(v82, 0);
            *(v32 + 8 * i) = v39;
          }

          v15 = v78;
          v12 = v70;
          v13 = v69;
          v14 = v73;
          v5 = v71;
          goto LABEL_25;
        }
      }

      else
      {
        v5 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v5)
        {
          if (v27 < v5)
          {
            goto LABEL_67;
          }

          sub_267CF6EB4();
          swift_arrayInitWithCopy();
LABEL_25:

          if (v5 < v81)
          {
            goto LABEL_61;
          }

          if (v5 > 0)
          {
            v40 = *(v77 + 16);
            v41 = __OFADD__(v40, v5);
            v42 = v40 + v5;
            if (v41)
            {
              goto LABEL_63;
            }

            *(v77 + 16) = v42;
          }

          goto LABEL_30;
        }
      }

      if (v81 > 0)
      {
        goto LABEL_61;
      }

LABEL_30:
      if (++v14 == v12)
      {

        v5 = v68;
        goto LABEL_35;
      }
    }

    if (!v21)
    {
      v25 = v15 & 0xFFFFFFFFFFFFFF8;
      if (v23 <= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

LABEL_13:
    sub_267EF9A68();
    goto LABEL_14;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_35:
  v73 = sub_267BAF0DC(v15);
  if (v73)
  {
    v19 = v15 & 0xC000000000000001;
    sub_267BBD0EC(0, (v15 & 0xC000000000000001) == 0, v15);
    v71 = v15 & 0xC000000000000001;
    if ((v15 & 0xC000000000000001) != 0)
    {
      goto LABEL_69;
    }

    v43 = *(v15 + 32);
LABEL_38:
    v44 = v43;
    v69 = v15 & 0xFFFFFFFFFFFFFF8;
    v77 = v5 + 32;
    v70 = (v5 + 8);
    v45 = 1;
    v46 = &off_279C2E000;
    v78 = v15;
    v47 = v79;
    while (v73 != v45)
    {
      if (v71)
      {
        v48 = MEMORY[0x26D609870](v45, v15);
      }

      else
      {
        if ((v45 & 0x8000000000000000) != 0)
        {
          goto LABEL_64;
        }

        if (v45 >= *(v69 + 16))
        {
          goto LABEL_65;
        }

        v48 = *(v15 + 8 * v45 + 32);
      }

      v15 = v48;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_62;
      }

      v49 = v46[427];
      v81 = v44;
      v50 = [v44 v49];
      if (v50)
      {
        v51 = v50;
        v19 = v76;
        sub_267EF2C98();

        v52 = *v77;
        v53 = v74;
        v54 = OUTLINED_FUNCTION_12_34();
        v52(v54);
        OUTLINED_FUNCTION_17_24();
        (v52)(v79, v53, v19);
      }

      else
      {
        v55 = v74;
        OUTLINED_FUNCTION_8_46();
        sub_267EF2C18();
        if (__swift_getEnumTagSinglePayload(v55, 1, v19) != 1)
        {
          sub_267B9FF34(v74, &qword_28022BD90, &unk_267EFCDD0);
        }
      }

      v56 = v46;
      v57 = [v15 v46[427]];
      if (v57)
      {
        v58 = v57;
        v44 = v15;
        v19 = v76;
        sub_267EF2C98();

        v59 = *v77;
        v60 = v75;
        v61 = OUTLINED_FUNCTION_12_34();
        v59(v61);
        OUTLINED_FUNCTION_17_24();
        v62 = v72;
        (v59)(v72, v60, v19);
      }

      else
      {
        v44 = v15;
        v63 = v75;
        OUTLINED_FUNCTION_8_46();
        v62 = v72;
        sub_267EF2C18();
        if (__swift_getEnumTagSinglePayload(v63, 1, v19) != 1)
        {
          sub_267B9FF34(v75, &qword_28022BD90, &unk_267EFCDD0);
        }
      }

      v5 = sub_267EF2C68();
      v64 = *v70;
      (*v70)(v62, v19);
      v64(v47, v19);
      if (v5)
      {

        ++v45;
        v15 = v78;
      }

      else
      {

        ++v45;
        v15 = v78;
        v44 = v81;
      }

      v46 = v56;
    }
  }

  else
  {
    v44 = 0;
  }

  v65 = [v44 sender];

  return v65;
}

void sub_267DE2198()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;

    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_267B9AFEC(v3, v14);
      v5 = v15;
      v6 = v16;
      __swift_project_boxed_opaque_existential_0(v14, v15);
      v7 = (*(v6 + 24))(v5, v6);
      __swift_destroy_boxed_opaque_existential_0(v14);
      v8 = *(v7 + 16);
      v9 = *(v4 + 16);
      if (__OFADD__(v9, v8))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v9 + v8 > *(v4 + 24) >> 1)
      {
        sub_267BF4EE8();
        v4 = v10;
      }

      if (*(v7 + 16))
      {
        if ((*(v4 + 24) >> 1) - *(v4 + 16) < v8)
        {
          goto LABEL_18;
        }

        swift_arrayInitWithCopy();

        if (v8)
        {
          v11 = *(v4 + 16);
          v12 = __OFADD__(v11, v8);
          v13 = v11 + v8;
          if (v12)
          {
            goto LABEL_19;
          }

          *(v4 + 16) = v13;
        }
      }

      else
      {

        if (v8)
        {
          goto LABEL_17;
        }
      }

      v3 += 40;
      if (!--v2)
      {

        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }
}

uint64_t sub_267DE2334(uint64_t a1)
{
  *(v2 + 528) = v1;
  *(v2 + 520) = a1;
  return MEMORY[0x2822009F8](sub_267DE2358, 0, 0);
}

void sub_267DE2358()
{
  v2 = v1[66];
  swift_beginAccess();
  v4 = *(v2 + 24);
  v1[67] = v4;
  v5 = *(v4 + 16);
  v1[68] = v5;
  if (!v5)
  {
LABEL_14:
    v10 = v1[1];
    v3.n128_u64[0] = 0;

    v10(v3);
    return;
  }

  v6 = 0;
  while (1)
  {
    v1[70] = v6;
    v1[69] = 0;
    if (v6 >= *(v1[67] + 16))
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_15_31(v6);
    sub_267B9AFEC((v1 + 32), (v1 + 37));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    if (!swift_dynamicCast())
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_0(v1 + 32);
    v7 = v1[13];
    v0 = v1[15];

LABEL_8:

LABEL_11:
    OUTLINED_FUNCTION_14_35();
    if (v9)
    {

      goto LABEL_14;
    }
  }

  sub_267B9AFEC((v1 + 32), (v1 + 42));
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v1 + 32);
    v0 = v1[21];
    v7 = v1[28];

    goto LABEL_8;
  }

  sub_267B9AFEC((v1 + 32), (v1 + 52));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C1B0, &qword_267F09868);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v1 + 32);
    v8 = OUTLINED_FUNCTION_9_39();
    sub_267B9FF34(v8, &qword_28022C1B8, &unk_267F09870);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_19_30();
  v13 = (*(v0 + 64) + **(v0 + 64));
  v11 = swift_task_alloc();
  v1[71] = v11;
  *v11 = v1;
  v12 = OUTLINED_FUNCTION_0_52(v11);

  v13(v12);
}

uint64_t sub_267DE269C(double a1)
{
  v4 = *v2;
  *(*v2 + 576) = v1;

  if (v1)
  {

    v5 = sub_267DE2B58;
  }

  else
  {
    *(v4 + 584) = a1;
    v5 = sub_267DE27C8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_267DE27C8()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 552);
  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  v3 = v1 + v2;
  __swift_destroy_boxed_opaque_existential_0((v0 + 376));
  while (1)
  {
    OUTLINED_FUNCTION_14_35();
    if (v5)
    {
      break;
    }

    *(v0 + 560) = v4;
    *(v0 + 552) = v3;
    if (v4 >= *(*(v0 + 536) + 16))
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_15_31(v4);
    sub_267B9AFEC(v0 + 256, v0 + 296);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    v6 = (v0 + 104);
    if (swift_dynamicCast() || (sub_267B9AFEC(v0 + 256, v0 + 336), v6 = (v0 + 224), (swift_dynamicCast() & 1) != 0))
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 256));
      v7 = *v6;
    }

    else
    {
      sub_267B9AFEC(v0 + 256, v0 + 416);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C1B0, &qword_267F09868);
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_19_30();
        v13 = (*(v0 + 224) + **(v0 + 224));
        v11 = swift_task_alloc();
        *(v0 + 568) = v11;
        *v11 = v0;
        v12 = OUTLINED_FUNCTION_0_52(v11);

        v13(v12);
        return;
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 256));
      v8 = OUTLINED_FUNCTION_9_39();
      sub_267B9FF34(v8, &qword_28022C1B8, &unk_267F09870);
    }
  }

  v9 = *(v0 + 8);
  v10.n128_f64[0] = v3;

  v9(v10);
}

uint64_t sub_267DE2B58()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v1 = v0[72];
  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[72];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_267B93000, v4, v5, "#Conversation error getting content speech duration for component %@", v8, 0xCu);
    sub_267B9FF34(v9, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 47);
  v12 = v0[1];
  v13.n128_u64[0] = 0;

  return v12(v13);
}

unint64_t sub_267DE2CF4()
{
  result = qword_28022B0C0;
  if (!qword_28022B0C0)
  {
    sub_267EF2CC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B0C0);
  }

  return result;
}

void sub_267DE2D6C()
{
  v0 = [objc_opt_self() clientWithIdentifier_];
  v1 = type metadata accessor for DisallowedAppsProvider();
  v2 = swift_allocObject();
  v3 = v0;
  v4 = sub_267DE3488(v3, v2);

  qword_280240E48 = v1;
  unk_280240E50 = &off_2878D8290;
  qword_280240E30[0] = v4;
}

uint64_t sub_267DE2E24()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D3A0D0]) init];
  result = sub_267BA9F38(0, &qword_28022C1C0, 0x277D3A0D0);
  qword_280240E98 = result;
  unk_280240EA0 = &off_2878D5F58;
  qword_280240E80 = v0;
  return result;
}

uint64_t sub_267DE2E8C()
{
  v18[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultWorkspace];
  if (!v0)
  {
    __break(1u);
  }

  v1 = v0;
  v18[0] = 0;
  v2 = [v0 defaultApplicationForCategory:3 error:v18];

  if (v2)
  {
    v3 = v18[0];
    return sub_267BC3164(v2, &selRef_bundleIdentifier);
  }

  else
  {
    v5 = v18[0];
    OUTLINED_FUNCTION_43();
    v6 = sub_267EF2A78();

    swift_willThrow();
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v7 = sub_267EF8A08();
    __swift_project_value_buffer(v7, qword_280240FB0);
    v8 = OUTLINED_FUNCTION_43();
    v9 = sub_267EF89F8();
    sub_267EF95E8();

    if (OUTLINED_FUNCTION_99())
    {
      v10 = OUTLINED_FUNCTION_48();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = v6;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      OUTLINED_FUNCTION_45();
      _os_log_impl(v14, v15, v16, v17, v10, 0xCu);
      sub_267B9FF34(v11, &unk_280229E30, &unk_267EFC270);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {
    }

    return 0;
  }
}

void *sub_267DE3080(uint64_t a1, uint64_t a2)
{
  v4 = sub_267EF92D8();
  v5 = [v2 relativeAppUsageProbabilitiesForCandidateBundleIds:v4 daysAgo:a2];

  sub_267BA9F38(0, &qword_280229538, 0x277CCABB0);
  v6 = sub_267EF8EF8();

  v7 = sub_267DE3318(v6);

  return v7;
}

uint64_t sub_267DE3164(uint64_t a1)
{
  sub_267EF57C8();
  OUTLINED_FUNCTION_4_6();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_55();
  sub_267EF5E68();
  swift_allocObject();
  v6 = sub_267EF5E58();
  sub_267EF4628();
  swift_allocObject();

  sub_267EF4618();
  sub_267EF4608();
  v8 = v7;

  if (v8)
  {
    sub_267EF5E48();
  }

  sub_267EF7C18();
  if (v9)
  {
    if (sub_267EF5E38())
    {
      sub_267EF5798();
      sub_267EF5668();

      (*(v4 + 8))(v2, v1);
    }

    else
    {
    }
  }

  return v6;
}

void *sub_267DE3318(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C1C8, &unk_267F09900);
  result = sub_267EF9CD8();
  v3 = result;
  v4 = 0;
  v26 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v12 = result + 8;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v16 = v13 | (v4 << 6);
      v17 = (*(v26 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = *(*(v26 + 56) + 8 * v16);

      result = [v20 doubleValue];
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v21 = (v3[6] + 16 * v16);
      *v21 = v18;
      v21[1] = v19;
      *(v3[7] + 8 * v16) = v22;
      v23 = v3[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v3[2] = v25;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v4;
    while (1)
    {
      v4 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v15 = *(v6 + 8 * v4);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_267DE3488(uint64_t a1, void *a2)
{
  v9[3] = sub_267BA9F38(0, &qword_28022B5B8, 0x277D73660);
  v9[4] = &off_2878D3D40;
  v9[0] = a1;
  sub_267B9AFEC(v9, (a2 + 2));
  v4 = a2[5];
  v5 = a2[6];
  __swift_project_boxed_opaque_existential_0(a2 + 2, v4);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = *(v5 + 16);

  v7(0xD000000000000031, 0x8000000267F0F890, sub_267DE35AC, v6, v4, v5);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v9);

  return a2;
}

uint64_t sub_267DE35D4()
{
  v7 = MEMORY[0x277D84F90];
  sub_267EF9BF8();
  v0 = 0;
  do
  {
    v1 = byte_2878CA9E0[v0 + 32];
    switch(byte_2878CA9E0[v0 + 32])
    {
      case 5u:
        OUTLINED_FUNCTION_19_31();
        goto LABEL_4;
      case 6u:
LABEL_18:

        break;
      default:
LABEL_4:
        v2 = sub_267EF9EA8();

        if ((v2 & 1) == 0)
        {
          v3 = 0xEA00000000007265;
          v4 = 0x696669746E656469;
          switch(v1)
          {
            case 0:
              v3 = 0xE900000000000074;
              v4 = 0x6E65697069636572;
              goto LABEL_13;
            case 1:
              v3 = 0xE600000000000000;
              v4 = OUTLINED_FUNCTION_21_25();
              goto LABEL_13;
            case 2:
              v4 = OUTLINED_FUNCTION_44_18();
              goto LABEL_13;
            case 3:
              v4 = OUTLINED_FUNCTION_36_19();
              goto LABEL_13;
            case 4:
              v4 = OUTLINED_FUNCTION_28_27();
              goto LABEL_13;
            case 5:
              v4 = OUTLINED_FUNCTION_10_34();
              goto LABEL_13;
            case 6:
              goto LABEL_13;
            case 7:
              v3 = 0x8000000267F0FE30;
              v4 = 0xD000000000000016;
              if (0x8000000267F0FDD0 == 0x8000000267F0FE30)
              {
                goto LABEL_18;
              }

LABEL_13:
              v5 = OUTLINED_FUNCTION_51_14(v4, v3);

              if ((v5 & 1) == 0)
              {
                switch(v1)
                {
                  case 1:
                    OUTLINED_FUNCTION_21_25();
                    break;
                  case 2:
                    OUTLINED_FUNCTION_44_18();
                    break;
                  case 3:
                    OUTLINED_FUNCTION_36_19();
                    break;
                  case 4:
                    OUTLINED_FUNCTION_28_27();
                    break;
                  case 5:
                    OUTLINED_FUNCTION_10_34();
                    break;
                  case 7:
                    goto LABEL_18;
                  default:
                    break;
                }

                sub_267EF9EA8();
              }

              break;
            case 8:
              goto LABEL_18;
            default:
              JUMPOUT(0);
          }
        }

        return result;
    }

    ++v0;
    sub_267EF3888();
    swift_allocObject();
    sub_267EF3878();
    sub_267EF9BD8();
    sub_267EF9C08();
    sub_267EF9C18();
    sub_267EF9BE8();
  }

  while (v0 != 9);
  return v7;
}

uint64_t sub_267DE3998()
{
  v5 = MEMORY[0x277D84F90];
  sub_267EF9BF8();
  v0 = 0;
  v1 = 0;
  do
  {
    v2 = v0;
    if (*(&unk_2878CADC0 + v1 + 32))
    {
      v3 = 0x8000000267F0FE60;
    }

    else
    {
      v3 = 0xED0000746E65746ELL;
    }

    if ((*(&unk_2878CADC0 + v1 + 32) & 1) != 0 || v3 != 0xED0000746E65746ELL)
    {
      sub_267EF9EA8();
    }

    sub_267EF3888();
    swift_allocObject();
    sub_267EF3878();
    sub_267EF9BD8();
    sub_267EF9C08();
    sub_267EF9C18();
    sub_267EF9BE8();
    v0 = 1;
    v1 = 1u;
  }

  while ((v2 & 1) == 0);
  return v5;
}

uint64_t sub_267DE3B04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v51 = v5;
  v7 = MEMORY[0x28223BE20](v6);
  v49 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v50 = v48 - v9;
  v10 = sub_267EF4BA8();
  OUTLINED_FUNCTION_58();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v16 = sub_267EF8A08();
  v17 = __swift_project_value_buffer(v16, qword_280240FB0);
  (*(v12 + 16))(v15, a1, v10);
  v48[2] = v17;
  v18 = sub_267EF89F8();
  v19 = sub_267EF95C8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v48[0] = swift_slowAlloc();
    v48[1] = a2;
    v54[0] = v48[0];
    *v20 = 136315138;
    sub_267DE7764(&qword_28022AF50, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v21 = sub_267EF9E58();
    v22 = v4;
    v24 = v23;
    (*(v12 + 8))(v15, v10);
    v25 = sub_267BA33E8(v21, v24, v54);
    v4 = v22;

    *(v20 + 4) = v25;
    _os_log_impl(&dword_267B93000, v18, v19, "#EditMessageRCHFlowStrategy received input: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48[0]);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v12 + 8))(v15, v10);
  }

  v26 = v50;
  sub_267EF4B88();
  v27 = v51;
  v28 = (*(v51 + 88))(v26, v4);
  v29 = *MEMORY[0x277D5C150];
  v30 = *(v27 + 8);
  v30(v26, v4);
  if (v28 == v29)
  {
    return sub_267EF3E58();
  }

  v32 = v49;
  sub_267EF4B88();
  v33 = sub_267E57DFC(v32, &v52);
  (v30)(v32, v4, v33);
  if (v53)
  {
    sub_267BE58F4(&v52, v54);
    __swift_project_boxed_opaque_existential_0(v54, v55);
    v34 = OUTLINED_FUNCTION_38_0();
    if (v35(v34) & 1) != 0 && (__swift_project_boxed_opaque_existential_0(v54, v55), v36 = OUTLINED_FUNCTION_38_0(), (v37(v36)))
    {
      sub_267EF3E58();
    }

    else
    {
      v38 = sub_267EF89F8();
      v39 = sub_267EF95D8();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v40);
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v41, v42, "#EditMessageRCHFlowStrategy unrelated request, ignoring");
        OUTLINED_FUNCTION_26();
      }

      sub_267EF3E68();
    }

    return __swift_destroy_boxed_opaque_existential_0(v54);
  }

  else
  {
    sub_267B9F98C(&v52, &unk_28022BBF0, &unk_267F01C60);
    v43 = sub_267EF89F8();
    v44 = sub_267EF95C8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v45);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v46, v47, "#EditMessageRCHFlowStrategy unexpected input, ignoring");
      OUTLINED_FUNCTION_26();
    }

    return sub_267EF3E68();
  }
}

uint64_t sub_267DE3FD0()
{
  OUTLINED_FUNCTION_12();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_267EF4BE8();
  v1[8] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[9] = v5;
  v1[10] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF4C08();
  v1[11] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[12] = v7;
  v1[13] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267DE40C8()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = sub_267EF8A08();
  __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v5, v6, "#EditMessageRCHFlowStrategy making intent");
    OUTLINED_FUNCTION_26();
  }

  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];
  v10 = v0[5];

  (*(v8 + 16))(v7, v10, v9);
  v11 = (*(v8 + 88))(v7, v9);
  if (v11 == *MEMORY[0x277D5C128])
  {
    goto LABEL_6;
  }

  if (v11 == *MEMORY[0x277D5C150])
  {
    v14 = v0[13];
    v15 = v0[10];
    v16 = v0[8];
    v17 = v0[9];
    (*(v0[12] + 96))(v14, v0[11]);
    (*(v17 + 32))(v15, v14, v16);
    v18 = swift_task_alloc();
    v0[14] = v18;
    *v18 = v0;
    v18[1] = sub_267DE43E0;

    return sub_267DE6628();
  }

  else
  {
    if (v11 == *MEMORY[0x277D5C160])
    {
LABEL_6:
      (*(v0[12] + 8))(v0[13], v0[11]);
      v12 = swift_task_alloc();
      v0[16] = v12;
      *v12 = v0;
      v12[1] = sub_267DE4568;

      return sub_267DE6244();
    }

    v19 = v0[12];
    sub_267C266B0();
    swift_allocError();
    *v20 = 0xD000000000000042;
    v20[1] = 0x8000000267F1A700;
    swift_willThrow();
    (*(v19 + 8))(v0[13], v0[11]);

    OUTLINED_FUNCTION_17();

    return v21();
  }
}

uint64_t sub_267DE43E0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v7 + 120) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267DE44E0()
{
  OUTLINED_FUNCTION_12();
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[3];

  OUTLINED_FUNCTION_4_3();

  return v2(v1);
}

uint64_t sub_267DE4568(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t sub_267DE46A8()
{
  OUTLINED_FUNCTION_12();
  (*(v0[9] + 8))(v0[10], v0[8]);

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267DE472C()
{
  OUTLINED_FUNCTION_12();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v1[26] = OUTLINED_FUNCTION_2();
  v5 = sub_267EF4228();
  v1[27] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[28] = v6;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DE4864()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = sub_267EF8A08();
  __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95E8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v5, v6, "#EditMessageRCHFlowStrategy received error response");
    OUTLINED_FUNCTION_26();
  }

  v7 = v0[24];

  v8 = [v7 code];
  if (v8 == 9)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[37] = v9;
    *v9 = v10;
    v9[1] = sub_267DE4DB4;

    return sub_267D250F8();
  }

  else if (*MEMORY[0x277CD4438] == v8)
  {
    v12 = [*(v0[25] + OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_sentMessageContext + *(type metadata accessor for TimedSentMessageContext(0) + 28)) recipients];
    if (v12)
    {
      sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      v13 = sub_267EF92F8();

      v12 = sub_267BAF0DC(v13);

      LOBYTE(v12) = v12 == 1;
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[39] = v14;
    *v14 = v15;
    v14[1] = sub_267DE4FF8;
    v16 = v0[34];

    return sub_267D249F0(v16, v12);
  }

  else if (*MEMORY[0x277CD4448] == v8)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[41] = v17;
    *v17 = v18;
    v17[1] = sub_267DE5240;

    return sub_267D25048();
  }

  else if (*MEMORY[0x277CD4440] == v8)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[43] = v19;
    *v19 = v20;
    v19[1] = sub_267DE5488;

    return sub_267D24F98();
  }

  else if (v8 == 8)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[48] = v26;
    *v26 = v27;
    v26[1] = sub_267DE5928;

    return sub_267D24EE8();
  }

  else if (v8 == 10)
  {
    type metadata accessor for MessagesApp(0);

    v22 = sub_267EC814C(v21);
    v0[45] = v22;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[46] = v23;
    *v23 = v24;
    v23[1] = sub_267DE56D0;
    v25 = v0[31];

    return sub_267D24C5C(v25, v22);
  }

  else
  {
    __swift_project_boxed_opaque_existential_0((v0[25] + 16), *(v0[25] + 40));
    v28 = OUTLINED_FUNCTION_38_0();
    v29(v28);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[50] = v30;
    *v30 = v31;
    v30[1] = sub_267DE5B70;
    v32 = v0[29];

    return MEMORY[0x2821BAEE0](v32, v0 + 2);
  }
}

uint64_t sub_267DE4DB4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 304) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DE4EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_37_16();
  v22();
  v23 = OUTLINED_FUNCTION_0_54();
  v24(v23);
  OUTLINED_FUNCTION_1_8();
  v25 = OUTLINED_FUNCTION_4_1();
  v26(v25);
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  v27 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v27);
  OUTLINED_FUNCTION_3_51();
  v29 = OUTLINED_FUNCTION_25_1(v28, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_51(v29, v30, v31, MEMORY[0x277D84F90]);
  sub_267B9F98C(v21, &unk_28022CF80, &unk_267EFED50);
  sub_267B9F98C(v20, &unk_28022AE40, &unk_267EFCB60);
  v32 = OUTLINED_FUNCTION_7_40();
  v33(v32);
  OUTLINED_FUNCTION_31_20();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v21, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267DE4FF8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 320) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DE50F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_37_16();
  v22();
  v23 = OUTLINED_FUNCTION_0_54();
  v24(v23);
  OUTLINED_FUNCTION_1_8();
  v25 = OUTLINED_FUNCTION_4_1();
  v26(v25);
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  v27 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v27);
  OUTLINED_FUNCTION_3_51();
  v29 = OUTLINED_FUNCTION_25_1(v28, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_51(v29, v30, v31, MEMORY[0x277D84F90]);
  sub_267B9F98C(v21, &unk_28022CF80, &unk_267EFED50);
  sub_267B9F98C(v20, &unk_28022AE40, &unk_267EFCB60);
  v32 = OUTLINED_FUNCTION_7_40();
  v33(v32);
  OUTLINED_FUNCTION_31_20();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v21, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267DE5240()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 336) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DE5338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_37_16();
  v22();
  v23 = OUTLINED_FUNCTION_0_54();
  v24(v23);
  OUTLINED_FUNCTION_1_8();
  v25 = OUTLINED_FUNCTION_4_1();
  v26(v25);
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  v27 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v27);
  OUTLINED_FUNCTION_3_51();
  v29 = OUTLINED_FUNCTION_25_1(v28, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_51(v29, v30, v31, MEMORY[0x277D84F90]);
  sub_267B9F98C(v21, &unk_28022CF80, &unk_267EFED50);
  sub_267B9F98C(v20, &unk_28022AE40, &unk_267EFCB60);
  v32 = OUTLINED_FUNCTION_7_40();
  v33(v32);
  OUTLINED_FUNCTION_31_20();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v21, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267DE5488()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 352) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DE5580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_37_16();
  v22();
  v23 = OUTLINED_FUNCTION_0_54();
  v24(v23);
  OUTLINED_FUNCTION_1_8();
  v25 = OUTLINED_FUNCTION_4_1();
  v26(v25);
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  v27 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v27);
  OUTLINED_FUNCTION_3_51();
  v29 = OUTLINED_FUNCTION_25_1(v28, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_51(v29, v30, v31, MEMORY[0x277D84F90]);
  sub_267B9F98C(v21, &unk_28022CF80, &unk_267EFED50);
  sub_267B9F98C(v20, &unk_28022AE40, &unk_267EFCB60);
  v32 = OUTLINED_FUNCTION_7_40();
  v33(v32);
  OUTLINED_FUNCTION_31_20();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v21, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267DE56D0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v3 + 376) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267DE57D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_37_16();
  v22();
  v23 = OUTLINED_FUNCTION_0_54();
  v24(v23);
  OUTLINED_FUNCTION_1_8();
  v25 = OUTLINED_FUNCTION_4_1();
  v26(v25);
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  v27 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v27);
  OUTLINED_FUNCTION_3_51();
  v29 = OUTLINED_FUNCTION_25_1(v28, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_51(v29, v30, v31, MEMORY[0x277D84F90]);
  sub_267B9F98C(v21, &unk_28022CF80, &unk_267EFED50);
  sub_267B9F98C(v20, &unk_28022AE40, &unk_267EFCB60);
  v32 = OUTLINED_FUNCTION_7_40();
  v33(v32);
  OUTLINED_FUNCTION_31_20();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v21, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267DE5928()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 392) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DE5A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_37_16();
  v22();
  v23 = OUTLINED_FUNCTION_0_54();
  v24(v23);
  OUTLINED_FUNCTION_1_8();
  v25 = OUTLINED_FUNCTION_4_1();
  v26(v25);
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  v27 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v27);
  OUTLINED_FUNCTION_3_51();
  v29 = OUTLINED_FUNCTION_25_1(v28, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_51(v29, v30, v31, MEMORY[0x277D84F90]);
  sub_267B9F98C(v21, &unk_28022CF80, &unk_267EFED50);
  sub_267B9F98C(v20, &unk_28022AE40, &unk_267EFCB60);
  v32 = OUTLINED_FUNCTION_7_40();
  v33(v32);
  OUTLINED_FUNCTION_31_20();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v21, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267DE5B70()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v3 + 408) = v0;

  sub_267B9F98C(v3 + 16, &qword_28022A620, &qword_267F08EC0);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267DE5C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  (*(v21[28] + 32))(v21[36], v21[29], v21[27]);
  v23 = OUTLINED_FUNCTION_0_54();
  v24(v23);
  OUTLINED_FUNCTION_1_8();
  v25 = OUTLINED_FUNCTION_4_1();
  v26(v25);
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  v27 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v27);
  OUTLINED_FUNCTION_3_51();
  v29 = OUTLINED_FUNCTION_25_1(v28, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_51(v29, v30, v31, MEMORY[0x277D84F90]);
  sub_267B9F98C(v22, &unk_28022CF80, &unk_267EFED50);
  sub_267B9F98C(v20, &unk_28022AE40, &unk_267EFCB60);
  v32 = OUTLINED_FUNCTION_7_40();
  v33(v32);
  OUTLINED_FUNCTION_31_20();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v22, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267DE5DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_9_40();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_267DE5E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_9_40();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_267DE5F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_9_40();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_267DE5FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_9_40();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_267DE605C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_9_40();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_267DE60FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();

  OUTLINED_FUNCTION_9_40();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_267DE61A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_9_40();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_267DE6244()
{
  OUTLINED_FUNCTION_12();
  v1[22] = v2;
  v1[23] = v0;
  v1[21] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AF10, &unk_267F001E0);
  v1[24] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267DE62D4()
{
  v1 = *(v0 + 176);
  sub_267E57DFC(*(v0 + 168), (v0 + 16));
  if (v1)
  {
    v2 = sub_267EF97C8();
  }

  else
  {
    v3 = [*(*(v0 + 184) + OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_sentMessageContext + *(type metadata accessor for TimedSentMessageContext(0) + 32)) sentMessages];
    if (v3)
    {
      sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
      v4 = sub_267EF92F8();

      if (sub_267BAF0DC(v4))
      {
        sub_267BBD0EC(0, (v4 & 0xC000000000000001) == 0, v4);
        if ((v4 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x26D609870](0, v4);
        }

        else
        {
          v5 = *(v4 + 32);
        }

        v6 = v5;

        v7 = [v6 identifier];

        v8 = sub_267EF9028();
        v3 = v9;
      }

      else
      {

        v8 = 0;
        v3 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = objc_allocWithZone(MEMORY[0x277CD3BC0]);
    v2 = sub_267DE76C4(v8, v3, 0, 0);
  }

  v11 = v2;
  sub_267C2FB6C(v0 + 16, v0 + 56, &unk_28022BBF0, &unk_267F01C60);
  v12 = *(v0 + 80);
  if (v12)
  {
    v13 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
    v14 = (*(v13 + 400))(v12, v13);
    if (v15)
    {
      v16 = v14;
      v17 = v15;
      v18 = *(v0 + 192);
      __swift_project_boxed_opaque_existential_0((*(v0 + 184) + 16), *(*(v0 + 184) + 40));
      v19 = OUTLINED_FUNCTION_4_1();
      v20(v19);
      OUTLINED_FUNCTION_17_25();
      OUTLINED_FUNCTION_4_1();
      sub_267EF3B68();
      v21 = sub_267EF2E38();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v21);
      v22 = sub_267D5EBA4(v18, v16, v17);
      v24 = v23;

      sub_267B9F98C(v18, &unk_28022AF10, &unk_267F001E0);
      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));
      if (v24)
      {
        *(v0 + 160) = MEMORY[0x277D837D0];
        *(v0 + 136) = v22;
        *(v0 + 144) = v24;
        goto LABEL_18;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    }
  }

  else
  {
    sub_267B9F98C(v0 + 56, &unk_28022BBF0, &unk_267F01C60);
  }

  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
LABEL_18:
  sub_267ECE2B8(v0 + 136, 0);
  sub_267B9F98C(v0 + 16, &unk_28022BBF0, &unk_267F01C60);
  sub_267B9F98C(v0 + 136, &qword_28022AEF0, &qword_267EFCDE0);

  OUTLINED_FUNCTION_4_3();

  return v25(v11);
}

uint64_t sub_267DE6628()
{
  OUTLINED_FUNCTION_12();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_267EF8228();
  v1[5] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[6] = v5;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267DE6738()
{
  v61 = v0;
  v1 = v0 + 11;
  v2 = v0[3];
  sub_267B9CC04(v0[2], v0[11]);
  if (!v2)
  {
    sub_267C266B0();
    swift_allocError();
    *v9 = 0xD00000000000004BLL;
    v9[1] = 0x8000000267F1A660;
    swift_willThrow();
    goto LABEL_6;
  }

  v3 = v0[10];
  v4 = v0[3];
  sub_267C2FB6C(v0[11], v3, &unk_28022BBE0, qword_267EFD030);
  v5 = type metadata accessor for DirectInvocationUseCases(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    v6 = v4;
LABEL_4:
    v7 = *v1;
    sub_267C266B0();
    swift_allocError();
    *v8 = 0xD000000000000044;
    v8[1] = 0x8000000267F1A6B0;
    swift_willThrow();

    sub_267B9F98C(v7, &unk_28022BBE0, qword_267EFD030);
    v1 = v0 + 10;
LABEL_6:
    sub_267B9F98C(*v1, &unk_28022BBE0, qword_267EFD030);

    OUTLINED_FUNCTION_17();

    return v10();
  }

  sub_267C2FB6C(v0[10], v0[9], &unk_28022BBE0, qword_267EFD030);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[6] + 32))(v0[8], v0[9], v0[5]);
    v30 = qword_280228818;
    v18 = v4;
    if (v30 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v32 = v0[7];
    v31 = v0[8];
    v34 = v0[5];
    v33 = v0[6];
    v35 = sub_267EF8A08();
    __swift_project_value_buffer(v35, qword_280240FB0);
    (*(v33 + 16))(v32, v31, v34);
    v36 = sub_267EF89F8();
    v37 = sub_267EF95D8();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v0[11];
    v40 = v0[7];
    v41 = v0[8];
    v43 = v0[5];
    v42 = v0[6];
    if (v38)
    {
      v59 = v18;
      v44 = swift_slowAlloc();
      v58 = v41;
      v45 = swift_slowAlloc();
      v60 = v45;
      *v44 = 136315138;
      v46 = sub_267EF8218();
      v57 = v39;
      v48 = v47;
      v49 = *(v42 + 8);
      v49(v40, v43);
      v50 = sub_267BA33E8(v46, v48, &v60);

      *(v44 + 4) = v50;
      _os_log_impl(&dword_267B93000, v36, v37, "#EditMessageRCHFlowStrategy Keeping the current intent for button %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      OUTLINED_FUNCTION_32_0();
      v18 = v59;
      OUTLINED_FUNCTION_32_0();

      v49(v58, v43);
      v51 = v57;
    }

    else
    {

      v55 = *(v42 + 8);
      v55(v40, v43);
      v55(v41, v43);
      v51 = v39;
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload == 12)
  {
    v20 = v0[9];
    v21 = *v20;
    v22 = v20[1];
    v23 = v4;

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v24 = sub_267EF8A08();
    __swift_project_value_buffer(v24, qword_280240FB0);

    v25 = sub_267EF89F8();
    v26 = sub_267EF95D8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = v27;
      *v27 = 67109120;
      v29 = HIBYTE(v22) & 0xF;
      if ((v22 & 0x2000000000000000) == 0)
      {
        v29 = v21 & 0xFFFFFFFFFFFFLL;
      }

      *(v27 + 1) = v29 == 0;

      _os_log_impl(&dword_267B93000, v25, v26, "#EditMessageRCHFlowStrategy received a contentChangedViaSnippet directInvocation content.isEmpty %{BOOL}d", v28, 8u);
      OUTLINED_FUNCTION_32_0();
    }

    else
    {
    }

    v54 = v0[11];
    *(*(v0[4] + OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_editMessageState) + 18) = 1;
    v18 = sub_267DE6DBC(v23, v21, v22);

    v51 = v54;
LABEL_30:
    sub_267B9F98C(v51, &unk_28022BBE0, qword_267EFD030);
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload != 11)
  {
    v52 = v0[9];
    v53 = v4;
    sub_267C269D0(v52, type metadata accessor for DirectInvocationUseCases);
    goto LABEL_4;
  }

  v13 = v0[11];
  v14 = v0[9];
  v15 = *v14;
  v16 = v14[1];
  v17 = v4;

  v18 = sub_267DE6DBC(v17, v15, v16);

  sub_267B9F98C(v13, &unk_28022BBE0, qword_267EFD030);

  v19 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v19 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    *(*(v0[4] + OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_editMessageState) + 16) = 1;
  }

LABEL_31:
  sub_267B9F98C(v0[10], &unk_28022BBE0, qword_267EFD030);

  OUTLINED_FUNCTION_4_3();

  return v56(v18);
}

uint64_t sub_267DE6DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_267EF97C8();
  v7[3] = MEMORY[0x277D837D0];
  v7[0] = a2;
  v7[1] = a3;

  sub_267ECE2B8(v7, 0);
  sub_267B9F98C(v7, &qword_28022AEF0, &qword_267EFCDE0);
  return v5;
}

uint64_t sub_267DE6E3C()
{
  OUTLINED_FUNCTION_53_2(OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_sentMessageContext);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_commonTemplateProvider));
}

uint64_t sub_267DE6E98()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_53_2(OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_sentMessageContext);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_commonTemplateProvider));

  return v0;
}

uint64_t sub_267DE6EF4()
{
  sub_267DE6E98();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EditMessageRCHFlowStrategy(uint64_t a1)
{
  result = qword_28022C1F0;
  if (!qword_28022C1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267DE6FA0(uint64_t a1)
{
  result = type metadata accessor for TimedSentMessageContext(319);
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

uint64_t sub_267DE7060()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267CE6778;

  return sub_267DE3FD0();
}

uint64_t sub_267DE7120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for EditMessageRCHFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_267BBD07C;

  return MEMORY[0x2821B9D90](a1, a2, a3, v11, a5);
}

uint64_t sub_267DE71F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for EditMessageRCHFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_267BBD07C;

  return MEMORY[0x2821B9D88](a1, a2, a3, v11, a5);
}

uint64_t sub_267DE72C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for EditMessageRCHFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_267BBD07C;

  return MEMORY[0x2821B9D80](a1, a2, a3, v11, a5);
}

uint64_t sub_267DE7390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for EditMessageRCHFlowStrategy(0);
  *v12 = v6;
  v12[1] = sub_267BAEBEC;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_267DE7470()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267DE472C();
}

uint64_t sub_267DE7524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for EditMessageRCHFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BF1F28;

  return MEMORY[0x2821BBB48](a1, a2, v9, a4);
}

id sub_267DE76C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = sub_267EF8FF8();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_267EF8FF8();

LABEL_6:
  v8 = [v4 initWithMessageIdentifier:v6 editedContent:v7];

  return v8;
}

uint64_t sub_267DE7764(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267DE77AC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAC0, &unk_267EFE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_267EF7118();
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v28 - v11;
  sub_267EF7AC8();
  swift_allocObject();
  sub_267EF7AB8();
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v13 = sub_267EF3C58();
  OUTLINED_FUNCTION_3_56(v13);
  sub_267EF7A58();
  OUTLINED_FUNCTION_5_51();
  OUTLINED_FUNCTION_0_55();
  v14 = sub_267EF3C28();
  OUTLINED_FUNCTION_2_52(v14);
  sub_267EF7A18();
  OUTLINED_FUNCTION_4_51();
  OUTLINED_FUNCTION_1_62();
  v15 = sub_267EF3BE8();
  OUTLINED_FUNCTION_3_56(v15);
  sub_267EF7A98();
  OUTLINED_FUNCTION_5_51();
  OUTLINED_FUNCTION_0_55();
  v16 = sub_267EF3C38();
  OUTLINED_FUNCTION_2_52(v16);
  sub_267EF7A38();
  OUTLINED_FUNCTION_4_51();
  OUTLINED_FUNCTION_1_62();
  v17 = sub_267EF3C18();
  OUTLINED_FUNCTION_3_56(v17);
  sub_267EF7A08();
  OUTLINED_FUNCTION_5_51();
  OUTLINED_FUNCTION_0_55();
  v18 = sub_267EF3BF8();
  OUTLINED_FUNCTION_2_52(v18);
  sub_267EF7AA8();
  OUTLINED_FUNCTION_4_51();
  OUTLINED_FUNCTION_1_62();
  v19 = sub_267EF3C48();
  OUTLINED_FUNCTION_3_56(v19);
  sub_267EF7A48();
  OUTLINED_FUNCTION_5_51();
  OUTLINED_FUNCTION_0_55();
  v20 = sub_267EF3B88();
  OUTLINED_FUNCTION_2_52(v20);
  sub_267EF7A28();
  OUTLINED_FUNCTION_4_51();
  OUTLINED_FUNCTION_1_62();
  v21 = sub_267EF3BC8();
  OUTLINED_FUNCTION_3_56(v21);
  sub_267EF7A88();
  OUTLINED_FUNCTION_5_51();
  OUTLINED_FUNCTION_0_55();
  v22 = sub_267EF3B48();
  OUTLINED_FUNCTION_2_52(v22);
  sub_267EF7A68();
  OUTLINED_FUNCTION_4_51();
  sub_267DE7B70(a2, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    sub_267EF3BA8();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);
    v24 = v28;
    if (EnumTagSinglePayload != 1)
    {
      sub_267B9FF34(v6, &unk_28022BAC0, &unk_267EFE470);
    }
  }

  else
  {
    v24 = v28;
    (*(v28 + 32))(v9, v6, v7);
  }

  sub_267EF7108();
  (*(v24 + 8))(v9, v7);
  sub_267EF90F8();

  v25 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v25);
  sub_267EF7A78();

  sub_267B9FF34(v12, &unk_28022AE30, &qword_267EFC0B0);
  v26 = sub_267EF7AD8();
  sub_267B9FF34(a2, &unk_28022BAC0, &unk_267EFE470);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v26;
}

uint64_t sub_267DE7B70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAC0, &unk_267EFE470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267DE7BE0()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 272) = v2;
  *(v1 + 144) = v3;
  *(v1 + 152) = v0;
  *(v1 + 128) = v4;
  *(v1 + 136) = v5;
  *(v1 + 112) = v6;
  *(v1 + 120) = v7;
  *(v1 + 96) = v8;
  *(v1 + 104) = v9;
  v10 = sub_267EF8B28();
  *(v1 + 160) = v10;
  *(v1 + 168) = *(v10 - 8);
  *(v1 + 176) = swift_task_alloc();
  *(v1 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C218, &qword_267F09B90);
  *(v1 + 192) = swift_task_alloc();
  *(v1 + 200) = swift_task_alloc();
  *(v1 + 208) = swift_task_alloc();
  *(v1 + 216) = swift_task_alloc();
  v11 = sub_267EF89E8();
  *(v1 + 224) = v11;
  *(v1 + 232) = *(v11 - 8);
  *(v1 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267DE7D68, 0, 0);
}

uint64_t sub_267DE7D68()
{
  OUTLINED_FUNCTION_56();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = sub_267EF8A08();
  v0[31] = __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_26();
  }

  v10 = v0[19];

  v11 = *(v10 + 16);
  v12 = swift_task_alloc();
  v0[32] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A418, &qword_267F00AE0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
  *v12 = v0;
  v12[1] = sub_267DE7EC8;
  v15 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 7, v11, v13, v14, v15);
}

uint64_t sub_267DE7EC8()
{
  OUTLINED_FUNCTION_12();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  *(v4 + 264) = v0;

  if (v0)
  {
    v5 = sub_267DE8460;
  }

  else
  {
    v5 = sub_267DE7FD0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_267DE7FD0()
{
  v43 = v0;
  sub_267BE58F4((v0 + 56), v0 + 16);
  v1 = sub_267EF89F8();
  v2 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v2))
  {
    v3 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v3);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_26();
  }

  if (qword_280228820 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 216);
  v41 = *(v0 + 208);
  v10 = qword_280240FC8;
  sub_267EF89C8();
  sub_267EF9698();
  sub_267EF89B8();
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  sub_267EF8B18();
  sub_267EF9688();
  sub_267EF89B8();
  sub_267DE8630(v9, v41);
  v11 = sub_267EF89F8();
  v12 = sub_267EF95D8();
  v13 = OUTLINED_FUNCTION_10_2(v12);
  v14 = *(v0 + 208);
  if (v13)
  {
    v15 = *(v0 + 200);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v42 = v17;
    *v16 = 136315138;
    sub_267DE8630(v14, v15);
    v18 = sub_267EF9098();
    v20 = v19;
    sub_267B9F98C(v14, &qword_28022C218, &qword_267F09B90);
    v21 = sub_267BA33E8(v18, v20, &v42);

    *(v16 + 4) = v21;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x26D60A7B0](v17, -1, -1);
    OUTLINED_FUNCTION_26();
  }

  else
  {

    sub_267B9F98C(v14, &qword_28022C218, &qword_267F09B90);
  }

  sub_267DE8630(*(v0 + 216), *(v0 + 192));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v29 = *(v0 + 232);
  v28 = *(v0 + 240);
  v30 = *(v0 + 216);
  v31 = *(v0 + 224);
  if (EnumCaseMultiPayload == 1)
  {
    v32 = *(v0 + 176);
    v33 = *(v0 + 160);
    v34 = *(*(v0 + 168) + 32);
    v34(v32);
    sub_267BF1D98();
    swift_willThrowTypedImpl();
    swift_allocError();
    (v34)(v35, v32, v33);
    sub_267B9F98C(v30, &qword_28022C218, &qword_267F09B90);
    (*(v29 + 8))(v28, v31);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  else
  {
    v37 = *(v0 + 192);
    v38 = *(v0 + 96);
    sub_267B9F98C(*(v0 + 216), &qword_28022C218, &qword_267F09B90);
    (*(v29 + 8))(v28, v31);
    sub_267EF8B38();
    OUTLINED_FUNCTION_22();
    (*(v39 + 32))(v38, v37);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    OUTLINED_FUNCTION_10_35();
  }

  OUTLINED_FUNCTION_17();

  return v36();
}

uint64_t sub_267DE8460()
{
  v1 = *(v0 + 264);
  v2 = v1;
  v3 = sub_267EF89F8();
  v4 = sub_267EF95E8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 264);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_267B93000, v3, v4, "#SendMessageIntentConfirmationInferrer failed to get AutoConfirming: %@, returning .confirmWithUser", v7, 0xCu);
    sub_267B9F98C(v8, &unk_280229E30, &unk_267EFC270);
    MEMORY[0x26D60A7B0](v8, -1, -1);
    MEMORY[0x26D60A7B0](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 96);
  v12 = *MEMORY[0x277D55958];
  sub_267EF8B38();
  OUTLINED_FUNCTION_22();
  (*(v13 + 104))(v11, v12);
  OUTLINED_FUNCTION_10_35();

  OUTLINED_FUNCTION_17();

  return v14();
}

uint64_t sub_267DE8630(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C218, &qword_267F09B90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267DE86A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
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

id sub_267DE86F4()
{
  v2 = objc_allocWithZone(OUTLINED_FUNCTION_3_57());
  sub_267EF92D8();
  OUTLINED_FUNCTION_7_41();
  v3 = OUTLINED_FUNCTION_5_52();
  v5 = [v3 v4];

  v6 = v5;
  if (v0)
  {
    v7 = sub_267EF8FF8();
  }

  else
  {
    v7 = 0;
  }

  [v5 _setLaunchId_];

  return v5;
}

uint64_t sub_267DE87C0()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_28022C220);
  swift_endAccess();
  if (v1)
  {
    sub_267EF99B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_267B9FF34(v6, &qword_28022AEF0, &qword_267EFCDE0);
    return 0;
  }
}

uint64_t sub_267DE88AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_267EF8FF8();
  }

  else
  {
    v3 = 0;
  }

  swift_beginAccess();
  objc_setAssociatedObject(v2, &unk_28022C220, v3, 1);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void sub_267DE8E14()
{
  OUTLINED_FUNCTION_28_10();
  v1 = v0;
  v3 = v2;
  if (sub_267BCEA0C(v2))
  {
    v4 = sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v16 = OUTLINED_FUNCTION_2_53(v4);
  }

  else
  {
    v16 = 0;
  }

  if (sub_267E2D6E4(v3))
  {
    v5 = sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v6 = OUTLINED_FUNCTION_2_53(v5);
  }

  else
  {
    v6 = 0;
  }

  if (sub_267E43628(v3))
  {
    v7 = sub_267EF92D8();
  }

  else
  {
    v7 = 0;
  }

  v15 = [v3 attributes];
  v8 = [v3 dateTimeRange];
  if (sub_267DE92F0(v3))
  {
    v9 = sub_267EF92D8();
  }

  else
  {
    v9 = 0;
  }

  if (sub_267E2D798(v3))
  {
    v10 = sub_267EF92D8();

    if (v1)
    {
LABEL_15:
      sub_267BA9F38(0, &qword_280229ED0, 0x277CD4188);
      v11 = sub_267EF92D8();

      goto LABEL_18;
    }
  }

  else
  {
    v10 = 0;
    if (v1)
    {
      goto LABEL_15;
    }
  }

  v11 = 0;
LABEL_18:
  if (sub_267E2D78C(v3))
  {
    sub_267EF92D8();
    OUTLINED_FUNCTION_7_41();
  }

  else
  {
    v1 = 0;
  }

  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRecipients:v16 senders:v6 searchTerms:v7 attributes:v15 dateTimeRange:v8 identifiers:v9 notificationIdentifiers:? speakableGroupNames:? conversationIdentifiers:?];

  v13 = v12;
  v14 = [v3 _metadata];
  OUTLINED_FUNCTION_6_42(v14, sel__setMetadata_);

  OUTLINED_FUNCTION_27_1();
}

void sub_267DE9088()
{
  OUTLINED_FUNCTION_28_10();
  v17 = v0;
  v2 = v1;
  if (sub_267BCEA0C(v1))
  {
    v3 = sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v4 = OUTLINED_FUNCTION_2_53(v3);
  }

  else
  {
    v4 = 0;
  }

  if (sub_267E2D6E4(v2))
  {
    v5 = sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v6 = OUTLINED_FUNCTION_2_53(v5);
  }

  else
  {
    v6 = 0;
  }

  if (sub_267E43628(v2))
  {
    v7 = sub_267EF92D8();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v2 dateTimeRange];
  if (sub_267DE92F0(v2))
  {
    v9 = sub_267EF92D8();
  }

  else
  {
    v9 = 0;
  }

  if (sub_267E2D798(v2))
  {
    v10 = sub_267EF92D8();
  }

  else
  {
    v10 = 0;
  }

  if (sub_267E2D700(v2))
  {
    v11 = sub_267BA9F38(0, &qword_280229ED0, 0x277CD4188);
    v12 = OUTLINED_FUNCTION_2_53(v11);
  }

  else
  {
    v12 = 0;
  }

  if (sub_267E2D78C(v2))
  {
    v13 = sub_267EF92D8();
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRecipients:v4 senders:v6 searchTerms:v7 attributes:v17 dateTimeRange:v8 identifiers:v9 notificationIdentifiers:? speakableGroupNames:? conversationIdentifiers:?];

  v15 = v14;
  v16 = [v2 _metadata];
  OUTLINED_FUNCTION_6_42(v16, sel__setMetadata_);

  OUTLINED_FUNCTION_27_1();
}

uint64_t sub_267DE92F0(void *a1)
{
  v1 = [a1 identifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF92F8();

  return v3;
}

uint64_t sub_267DE9348@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_267EF2D78();
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v3;
  v6 = v4;
  if (qword_2802287D8 != -1)
  {
    OUTLINED_FUNCTION_0_56(&qword_2802287D8);
  }

  v7 = sub_267BC2F78(v5, v6, qword_28022C230);

  if (v7)
  {
    if (qword_2802287F0 != -1)
    {
      swift_once();
    }

    v8 = qword_28022C268;
  }

  else
  {
LABEL_8:
    if (qword_2802287D0 != -1)
    {
      swift_once();
    }

    v8 = qword_280240EC0;
  }

  v9 = sub_267EF2728();
  __swift_project_value_buffer(v9, v8);
  OUTLINED_FUNCTION_1_63();
  v11 = *(v10 + 16);

  return v11(a2);
}

uint64_t sub_267DE9484@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_267EF2D78();
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v3;
  v6 = v4;
  if (qword_2802287D8 != -1)
  {
    OUTLINED_FUNCTION_0_56(&qword_2802287D8);
  }

  v7 = sub_267BC2F78(v5, v6, qword_28022C230);

  if (v7)
  {
    if (qword_2802287E8 != -1)
    {
      swift_once();
    }

    v8 = qword_28022C250;
  }

  else
  {
LABEL_8:
    if (qword_2802287C8 != -1)
    {
      swift_once();
    }

    v8 = qword_280240EA8;
  }

  v9 = sub_267EF2728();
  __swift_project_value_buffer(v9, v8);
  OUTLINED_FUNCTION_1_63();
  v11 = *(v10 + 16);

  return v11(a2);
}

uint64_t sub_267DE95C0()
{
  v0 = sub_267EF2728();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  __swift_allocate_value_buffer(v5, qword_280240EA8);
  __swift_project_value_buffer(v0, qword_280240EA8);
  sub_267EF26C8();
  sub_267EF26D8();
  sub_267EF26E8();
  v8 = *(v1 + 8);
  v8(v4, v0);
  return (v8)(v7, v0);
}

uint64_t sub_267DE9744()
{
  v0 = sub_267EF2728();
  __swift_allocate_value_buffer(v0, qword_28022C238);
  __swift_project_value_buffer(v0, qword_28022C238);
  return sub_267EF26A8();
}

uint64_t sub_267DE9798()
{
  v0 = sub_267EF2728();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v14 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v14 - v9;
  __swift_allocate_value_buffer(v8, qword_28022C250);
  __swift_project_value_buffer(v0, qword_28022C250);
  sub_267EF26D8();
  sub_267EF26C8();
  sub_267EF26E8();
  v11 = *(v1 + 8);
  v11(v4, v0);
  v11(v7, v0);
  if (qword_2802287E0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v0, qword_28022C238);
  (*(v1 + 16))(v7, v12, v0);
  sub_267EF2688();
  v11(v7, v0);
  return (v11)(v10, v0);
}

uint64_t sub_267DE99C0(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_267EF2728();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v10, a2);
  __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, a4);
  (*(v9 + 16))(v12, v13, v8);
  sub_267EF2718();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_267DE9B04()
{
  sub_267BBD38C(v1, &selRef_contactIdentifier);
  if (v2 || (sub_267BBD38C(v1, &selRef_customIdentifier), v3) || (v5 = [v1 personHandle]) != 0 && (sub_267BBE048(v5), v6))
  {
    OUTLINED_FUNCTION_38_21();
  }

  else
  {
    v7 = [v1 displayName];
    sub_267EF9028();
    OUTLINED_FUNCTION_38_21();
  }

  return v0;
}

uint64_t sub_267DE9BAC()
{
  v1 = sub_267EF2A58();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  OUTLINED_FUNCTION_18(v3);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  if ((sub_267DEAF90() & 1) == 0)
  {
    return 0;
  }

  v7 = [v0 nameComponents];
  if (v7)
  {
    v8 = v7;
    sub_267EF2A18();

    v9 = OUTLINED_FUNCTION_54_0();
    v10(v9);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v1);
    sub_267B9FED8(v6, &unk_28022BCA0, &unk_267EFD990);
    return 0;
  }

  v11 = 1;
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v1);
  sub_267B9FED8(v6, &unk_28022BCA0, &unk_267EFD990);
  v12 = [v0 relationship];
  if (v12)
  {

    return 0;
  }

  return v11;
}

void sub_267DE9D58()
{
  OUTLINED_FUNCTION_48_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_60();
  v52 = v8 - v9;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_32_17();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v16);
  v18 = &v48 - v17;
  v53 = v0;
  v19 = [v0 displayName];
  sub_267EF9028();

  OUTLINED_FUNCTION_30_27();
  if (v20)
  {
    goto LABEL_2;
  }

  v50 = v0;
  v51 = v4;
  v49 = v1;
  v21 = v53;
  v22 = [v53 nameComponents];
  if (v22)
  {
    v23 = v22;
    sub_267EF2A18();

    sub_267EF2A58();
    v24 = 0;
  }

  else
  {
    sub_267EF2A58();
    v24 = 1;
  }

  OUTLINED_FUNCTION_18_28(v5, v24);
  sub_267D2E49C(v5, v18);
  sub_267EF2A58();
  if (OUTLINED_FUNCTION_11_38() || (v29 = sub_267EF2988(), !v30))
  {
    sub_267B9FED8(v18, &unk_28022BCA0, &unk_267EFD990);
  }

  else
  {
    v31 = v29;
    v32 = v30;
    sub_267B9FED8(v18, &unk_28022BCA0, &unk_267EFD990);

    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      goto LABEL_2;
    }
  }

  v25 = [v21 nameComponents];
  if (v25)
  {
    v26 = v25;
    v27 = v50;
    sub_267EF2A18();

    v28 = 0;
  }

  else
  {
    v28 = 1;
    v27 = v50;
  }

  OUTLINED_FUNCTION_18_28(v27, v28);
  sub_267D2E49C(v27, v2);
  if (OUTLINED_FUNCTION_14_36(v2) || (sub_267EF29A8(), !v38))
  {
    sub_267B9FED8(v2, &unk_28022BCA0, &unk_267EFD990);
    v34 = v51;
  }

  else
  {
    sub_267B9FED8(v2, &unk_28022BCA0, &unk_267EFD990);

    OUTLINED_FUNCTION_16_31();
    v34 = v51;
    if (v39)
    {
      goto LABEL_2;
    }
  }

  v35 = [v21 &selRef_setDelayDismissalMs_ + 3];
  if (v35)
  {
    v36 = v35;
    sub_267EF2A18();

    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  OUTLINED_FUNCTION_18_28(v34, v37);
  sub_267D2E49C(v34, v3);
  if (OUTLINED_FUNCTION_14_36(v3) || (sub_267EF29C8(), !v45))
  {
    sub_267B9FED8(v3, &unk_28022BCA0, &unk_267EFD990);
  }

  else
  {
    sub_267B9FED8(v3, &unk_28022BCA0, &unk_267EFD990);

    OUTLINED_FUNCTION_16_31();
    if (v46)
    {
      goto LABEL_2;
    }
  }

  v40 = [v21 &selRef_setDelayDismissalMs_ + 3];
  if (v40)
  {
    v41 = v40;
    v42 = v52;
    sub_267EF2A18();

    v43 = 0;
    v44 = v49;
  }

  else
  {
    v43 = 1;
    v44 = v49;
    v42 = v52;
  }

  OUTLINED_FUNCTION_18_28(v42, v43);
  sub_267D2E49C(v42, v44);
  if (OUTLINED_FUNCTION_11_38() || (sub_267EF2A28(), !v47))
  {
    sub_267B9FED8(v44, &unk_28022BCA0, &unk_267EFD990);
  }

  else
  {
    sub_267B9FED8(v44, &unk_28022BCA0, &unk_267EFD990);

    OUTLINED_FUNCTION_16_31();
  }

LABEL_2:
  OUTLINED_FUNCTION_47();
}

id sub_267DEA1E8()
{
  OUTLINED_FUNCTION_48_0();
  v121 = v0;
  v119 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  v9 = OUTLINED_FUNCTION_18(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_60();
  v118 = v10 - v11;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77_0();
  v112 = v13;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77_0();
  v114 = v15;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77_0();
  v117 = v17;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77_0();
  v120 = v19;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_77_0();
  v116 = v21;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77_0();
  v111 = v23;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_77_0();
  v113 = v25;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_77_0();
  v115 = v27;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_77_0();
  v109 = v30;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_77_0();
  v110 = v32;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_51();
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v108 - v37;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_66_5();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_32_17();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_22_4();
  MEMORY[0x28223BE20](v42);
  v44 = &v108 - v43;
  v45 = [v121 nameComponents];
  if (v45)
  {
    v46 = v45;
    sub_267EF2A18();

    v47 = sub_267EF2A58();
    v48 = 0;
  }

  else
  {
    v47 = sub_267EF2A58();
    v48 = 1;
  }

  OUTLINED_FUNCTION_18_28(v2, v48);
  sub_267D2E49C(v2, v44);
  sub_267EF2A58();
  if (OUTLINED_FUNCTION_11_38())
  {
    v49 = OUTLINED_FUNCTION_61_0();
    sub_267BF6CEC(v49, v50, v51, v52);
    OUTLINED_FUNCTION_8_6(v0);
    v53 = v120;
    if (v54)
    {
      v58 = 0;
    }

    else
    {
      v58 = sub_267EF29E8();
      OUTLINED_FUNCTION_5_0();
      (*(v59 + 8))(v0, v47);
    }

    [v121 setNameComponents_];

    sub_267B9FED8(v44, &unk_28022BCA0, &unk_267EFD990);
  }

  else
  {
    v55 = [v121 nameComponents];
    if (v55)
    {
      v56 = v55;
      sub_267EF2A18();

      v57 = 0;
    }

    else
    {
      v57 = 1;
    }

    OUTLINED_FUNCTION_18_28(v6, v57);
    sub_267D2E49C(v6, v1);
    if (!OUTLINED_FUNCTION_14_36(v1))
    {
      sub_267EF2988();
    }

    sub_267B9FED8(v1, &unk_28022BCA0, &unk_267EFD990);
    sub_267DEBDB8();
    OUTLINED_FUNCTION_15_33();

    OUTLINED_FUNCTION_54_0();
    sub_267EF2998();
    OUTLINED_FUNCTION_8_6(v44);
    if (v54)
    {
      v60 = 0;
    }

    else
    {
      v60 = sub_267EF29E8();
      OUTLINED_FUNCTION_5_0();
      (*(v61 + 8))(v44, v47);
    }

    v53 = v120;
    [v121 setNameComponents_];
  }

  v62 = OUTLINED_FUNCTION_27_24();
  if (v62)
  {
    v44 = v62;
    sub_267EF2A18();

    v63 = 0;
  }

  else
  {
    v63 = 1;
  }

  OUTLINED_FUNCTION_18_28(v3, v63);
  sub_267D2E49C(v3, v38);
  if (OUTLINED_FUNCTION_14_36(v38))
  {
    sub_267BF6CEC(v38, v4, &unk_28022BCA0, &unk_267EFD990);
    OUTLINED_FUNCTION_8_6(v4);
    if (v54)
    {
      v44 = 0;
    }

    else
    {
      sub_267EF29E8();
      OUTLINED_FUNCTION_0_57();
      (*(v70 + 8))(v4, v47);
    }

    v71 = v116;
    v68 = &selRef_personTypes;
    OUTLINED_FUNCTION_26_26();

    sub_267B9FED8(v38, &unk_28022BCA0, &unk_267EFD990);
    v72 = v117;
  }

  else
  {
    v64 = OUTLINED_FUNCTION_27_24();
    if (v64)
    {
      v65 = v64;
      v66 = v109;
      sub_267EF2A18();

      v67 = 0;
      v68 = &selRef_personTypes;
    }

    else
    {
      v67 = 1;
      v68 = &selRef_personTypes;
      v66 = v109;
    }

    v69 = v110;
    OUTLINED_FUNCTION_18_28(v66, v67);
    sub_267D2E49C(v66, v69);
    if (OUTLINED_FUNCTION_14_36(v69))
    {
      v73 = 0;
    }

    else
    {
      sub_267EF29A8();
      v73 = v74;
    }

    sub_267B9FED8(v69, &unk_28022BCA0, &unk_267EFD990);
    OUTLINED_FUNCTION_66();
    sub_267DEBDB8();
    OUTLINED_FUNCTION_74_0();

    OUTLINED_FUNCTION_108();
    sub_267EF29B8();
    OUTLINED_FUNCTION_8_6(v38);
    if (v54)
    {
      v73 = 0;
    }

    else
    {
      sub_267EF29E8();
      OUTLINED_FUNCTION_0_57();
      (*(v75 + 8))(v38, v47);
    }

    v71 = v116;
    v72 = v117;
    [v121 v68[346]];
  }

  v76 = OUTLINED_FUNCTION_27_24();
  if (v76)
  {
    v77 = v76;
    v78 = v115;
    sub_267EF2A18();

    v79 = v78;
    v80 = 0;
  }

  else
  {
    v80 = 1;
    v79 = v115;
  }

  OUTLINED_FUNCTION_18_28(v79, v80);
  sub_267D2E49C(v79, v5);
  if (OUTLINED_FUNCTION_14_36(v5))
  {
    v81 = v113;
    sub_267BF6CEC(v5, v113, &unk_28022BCA0, &unk_267EFD990);
    OUTLINED_FUNCTION_8_6(v81);
    if (v54)
    {
      v81 = 0;
    }

    else
    {
      sub_267EF29E8();
      OUTLINED_FUNCTION_0_57();
      (*(v85 + 8))(v81, v47);
    }

    v86 = v118;
    OUTLINED_FUNCTION_26_26();

    sub_267B9FED8(v5, &unk_28022BCA0, &unk_267EFD990);
  }

  else
  {
    v82 = OUTLINED_FUNCTION_27_24();
    if (v82)
    {
      v83 = v82;
      sub_267EF2A18();

      v84 = 0;
    }

    else
    {
      v84 = 1;
    }

    v87 = v111;
    OUTLINED_FUNCTION_18_28(v71, v84);
    v88 = OUTLINED_FUNCTION_108();
    sub_267D2E49C(v88, v89);
    if (OUTLINED_FUNCTION_14_36(v87))
    {
      v81 = 0;
    }

    else
    {
      sub_267EF29C8();
      v81 = v90;
    }

    sub_267B9FED8(v87, &unk_28022BCA0, &unk_267EFD990);
    OUTLINED_FUNCTION_66();
    sub_267DEBDB8();
    OUTLINED_FUNCTION_74_0();

    OUTLINED_FUNCTION_108();
    sub_267EF29D8();
    OUTLINED_FUNCTION_8_6(v5);
    if (v54)
    {
      v81 = 0;
    }

    else
    {
      sub_267EF29E8();
      OUTLINED_FUNCTION_0_57();
      (*(v91 + 8))(v5, v47);
    }

    v86 = v118;
    [v121 v68[346]];
  }

  v92 = OUTLINED_FUNCTION_27_24();
  if (v92)
  {
    v81 = v92;
    sub_267EF2A18();

    v93 = 0;
  }

  else
  {
    v93 = 1;
  }

  OUTLINED_FUNCTION_18_28(v72, v93);
  sub_267D2E49C(v72, v53);
  if (OUTLINED_FUNCTION_14_36(v53))
  {
    v94 = v114;
    sub_267BF6CEC(v53, v114, &unk_28022BCA0, &unk_267EFD990);
    OUTLINED_FUNCTION_8_6(v94);
    if (v54)
    {
      v81 = 0;
    }

    else
    {
      sub_267EF29E8();
      OUTLINED_FUNCTION_0_57();
      (*(v98 + 8))(v94, v47);
    }

    OUTLINED_FUNCTION_26_26();

    sub_267B9FED8(v53, &unk_28022BCA0, &unk_267EFD990);
  }

  else
  {
    v95 = OUTLINED_FUNCTION_27_24();
    if (v95)
    {
      v96 = v95;
      sub_267EF2A18();

      v97 = 0;
    }

    else
    {
      v97 = 1;
    }

    v99 = v112;
    OUTLINED_FUNCTION_18_28(v86, v97);
    v100 = OUTLINED_FUNCTION_108();
    sub_267D2E49C(v100, v101);
    if (OUTLINED_FUNCTION_14_36(v99))
    {
      v102 = 0;
    }

    else
    {
      sub_267EF2A28();
      v102 = v103;
    }

    sub_267B9FED8(v99, &unk_28022BCA0, &unk_267EFD990);
    OUTLINED_FUNCTION_66();
    sub_267DEBDB8();
    OUTLINED_FUNCTION_74_0();

    OUTLINED_FUNCTION_108();
    sub_267EF2A38();
    OUTLINED_FUNCTION_8_6(v53);
    if (v54)
    {
      v102 = 0;
    }

    else
    {
      sub_267EF29E8();
      OUTLINED_FUNCTION_0_57();
      (*(v104 + 8))(v53, v47);
    }

    [v121 v68[346]];
  }

  OUTLINED_FUNCTION_47();

  return v105;
}

BOOL sub_267DEAC40()
{
  sub_267DE9D58();
  if ((v1 & 1) != 0 && (sub_267BBD38C(v0, &selRef_contactIdentifier), v2))
  {

    return !sub_267DEB1AC();
  }

  else
  {
    return 1;
  }
}

BOOL sub_267DEAC8C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 == 0;
  return !a2 || v3;
}

id sub_267DEAE28()
{
  result = [v0 personHandle];
  if (result)
  {
    v3 = result;
    v4 = [result label];

    if (v4)
    {
      sub_267EF9028();
      OUTLINED_FUNCTION_38_21();

      v5 = HIBYTE(v1) & 0xF;
      if ((v1 & 0x2000000000000000) == 0)
      {
        v5 = v3 & 0xFFFFFFFFFFFFLL;
      }

      return (v5 != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_267DEAEC4()
{
  sub_267EF9B68();

  result = INIntentSlotValueTransformToContactValue();
  if (result)
  {
    result = sub_267DEC238(result);
    if (v1 >> 60 != 15)
    {
      OUTLINED_FUNCTION_23_21();
      sub_267EF2BC8();
      OUTLINED_FUNCTION_15_33();
      v2 = OUTLINED_FUNCTION_61_0();
      sub_267BBE0C8(v2, v3);
      v4 = OUTLINED_FUNCTION_54_0();
      MEMORY[0x26D608E60](v4);

      return 0xD000000000000010;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_267DEAF90()
{
  result = [v0 personHandle];
  if (result)
  {
    sub_267BBE048(result);
    if (v2)
    {
      OUTLINED_FUNCTION_23_21();

      OUTLINED_FUNCTION_16_31();
      return (v3 != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_267DEAFF8()
{
  sub_267BBD38C(v0, &selRef_contactIdentifier);
  if (!v1)
  {
    sub_267BBD38C(v0, &selRef_customIdentifier);
    if (!v2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_267DEB048()
{
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_66();
  v2 = objc_getAssociatedObject(v0, v1);
  swift_endAccess();
  if (v2)
  {
    sub_267EF99B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    type metadata accessor for FLOWSchemaFLOWPersonType(0);
    result = swift_dynamicCast();
    if (result)
    {
      return v4;
    }
  }

  else
  {
    sub_267B9FED8(v7, &qword_28022AEF0, &qword_267EFCDE0);
    return 0;
  }

  return result;
}

uint64_t sub_267DEB128(int a1)
{
  type metadata accessor for FLOWSchemaFLOWPersonType(0);
  v1 = sub_267EF9F08();
  swift_beginAccess();
  v2 = OUTLINED_FUNCTION_108();
  objc_setAssociatedObject(v2, v3, v1, 1);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

BOOL sub_267DEB1AC()
{
  sub_267BBD38C(v0, &selRef_contactIdentifier);
  if (v1)
  {

    sub_267BBD38C(v0, &selRef_contactIdentifier);
    if (v2)
    {

      OUTLINED_FUNCTION_30_27();
      if (v3)
      {
        return 1;
      }
    }
  }

  sub_267BBD38C(v0, &selRef_customIdentifier);
  if (!v5)
  {
    return 0;
  }

  sub_267BBD38C(v0, &selRef_customIdentifier);
  if (!v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_23_21();

  OUTLINED_FUNCTION_16_31();
  return v7 != 0;
}

uint64_t sub_267DEB278()
{
  if (sub_267DEB1AC())
  {
    return 1;
  }

  sub_267DE9D58();
  if (v0)
  {
    return 1;
  }

  return sub_267DEAF90();
}

BOOL sub_267DEB2B8()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  OUTLINED_FUNCTION_18(v3);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - v5;
  v7 = [v0 personHandle];
  if (v7)
  {
    goto LABEL_2;
  }

  v8 = [v0 nameComponents];
  if (v8)
  {
    v9 = v8;
    sub_267EF2A18();

    sub_267EF2A58();
    v10 = OUTLINED_FUNCTION_57_0();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    sub_267B9FED8(v6, &unk_28022BCA0, &unk_267EFD990);
    return 0;
  }

  v14 = sub_267EF2A58();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v14);
  sub_267B9FED8(v6, &unk_28022BCA0, &unk_267EFD990);
  v15 = [v0 displayName];
  sub_267EF9028();
  OUTLINED_FUNCTION_15_33();

  v16 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v16 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    return 0;
  }

  v7 = [v0 image];
  if (v7)
  {
    goto LABEL_2;
  }

  v18 = sub_267D102E0(v0, &selRef_aliases, &qword_28022C298, 0x277CD3E98);
  if (v18)
  {
    v19 = sub_267BAF0DC(v18);

    if (v19)
    {
      return 0;
    }
  }

  sub_267BBD38C(v0, &selRef_contactIdentifier);
  if (v20)
  {
    goto LABEL_15;
  }

  sub_267BBD38C(v0, &selRef_customIdentifier);
  if (v21)
  {
    goto LABEL_15;
  }

  if ([v0 isMe])
  {
    return 0;
  }

  v7 = [v0 relationship];
  if (v7)
  {
LABEL_2:

    return 0;
  }

  sub_267BBD38C(v0, &selRef_sourceAppBundleIdentifier);
  if (v22)
  {
LABEL_15:

    return 0;
  }

  v23 = sub_267D102E0(v0, &selRef_scoredAlternatives, &qword_280229DB8, 0x277CD4008);
  if (!v23)
  {
    return 1;
  }

  v24 = sub_267BAF0DC(v23);

  return v24 == 0;
}

void sub_267DEB538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_0();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  v27 = OUTLINED_FUNCTION_18(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_22_4();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_66_5();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &a9 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &a9 - v33;
  v35 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
  v36 = [v25 nameComponents];
  if (v36)
  {
    v37 = v36;
    sub_267EF2A18();

    v38 = sub_267EF2A58();
    v39 = 0;
  }

  else
  {
    v38 = sub_267EF2A58();
    v39 = 1;
  }

  __swift_storeEnumTagSinglePayload(v32, v39, 1, v38);
  sub_267D2E49C(v32, v34);
  sub_267EF2A58();
  if (__swift_getEnumTagSinglePayload(v34, 1, v38))
  {
    sub_267B9FED8(v34, &unk_28022BCA0, &unk_267EFD990);
LABEL_6:

    goto LABEL_8;
  }

  sub_267EF2988();
  v41 = v40;
  sub_267B9FED8(v34, &unk_28022BCA0, &unk_267EFD990);
  if (!v41)
  {
    goto LABEL_6;
  }

LABEL_8:
  v42 = sub_267EF8FF8();

  [v35 setGivenName_];

  v43 = [v25 nameComponents];
  if (v43)
  {
    v44 = v43;
    sub_267EF2A18();

    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  __swift_storeEnumTagSinglePayload(v22, v45, 1, v38);
  sub_267D2E49C(v22, v21);
  if (__swift_getEnumTagSinglePayload(v21, 1, v38))
  {
    sub_267B9FED8(v21, &unk_28022BCA0, &unk_267EFD990);
  }

  else
  {
    sub_267EF29A8();
    v47 = v46;
    sub_267B9FED8(v21, &unk_28022BCA0, &unk_267EFD990);
    if (v47)
    {
      goto LABEL_15;
    }
  }

LABEL_15:
  v48 = sub_267EF8FF8();

  [v35 setFamilyName_];

  OUTLINED_FUNCTION_47();
}

void sub_267DEB810()
{
  OUTLINED_FUNCTION_48_0();
  v4 = v0;
  v70 = v5;
  v71 = v6;
  v72 = v7;
  v73 = v8;
  v77 = v9;
  v78 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  v12 = OUTLINED_FUNCTION_18(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_60();
  v74 = v13 - v14;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_77_0();
  v75 = v16;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v18);
  v20 = &v69 - v19;
  v21 = sub_267EF2728();
  OUTLINED_FUNCTION_58();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_0_0();
  v27 = v26 - v25;
  v28 = [v0 displayName];
  sub_267EF9028();
  OUTLINED_FUNCTION_15_33();

  v83 = v1;
  v84 = v2;
  sub_267EF2698();
  v80 = sub_267BB5034();
  v69 = sub_267EF9918();
  v76 = v29;
  v79 = *(v23 + 8);
  v79(v27, v21);

  v30 = v4;
  v31 = [v4 nameComponents];
  if (v31)
  {
    v32 = v31;
    sub_267EF2A18();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = sub_267EF2A58();
  __swift_storeEnumTagSinglePayload(v3, v33, 1, v34);
  sub_267D2E49C(v3, v20);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v34);
  v36 = v21;
  v37 = v74;
  if (EnumTagSinglePayload)
  {
    sub_267B9FED8(v20, &unk_28022BCA0, &unk_267EFD990);
LABEL_6:

    v38 = 0;
    v39 = 0xE000000000000000;
    goto LABEL_8;
  }

  v38 = sub_267EF2988();
  v39 = v40;
  sub_267B9FED8(v20, &unk_28022BCA0, &unk_267EFD990);
  if (!v39)
  {
    goto LABEL_6;
  }

LABEL_8:
  v83 = v38;
  v84 = v39;
  sub_267EF2698();
  v41 = sub_267EF9918();
  v43 = v42;
  v79(v27, v36);

  v44 = [v30 nameComponents];
  if (v44)
  {
    v45 = v44;
    sub_267EF2A18();

    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  v47 = v75;
  __swift_storeEnumTagSinglePayload(v37, v46, 1, v34);
  v48 = OUTLINED_FUNCTION_61_0();
  sub_267D2E49C(v48, v49);
  if (__swift_getEnumTagSinglePayload(v47, 1, v34))
  {
    sub_267B9FED8(v47, &unk_28022BCA0, &unk_267EFD990);
  }

  else
  {
    sub_267EF29A8();
    OUTLINED_FUNCTION_38_21();
    sub_267B9FED8(v47, &unk_28022BCA0, &unk_267EFD990);
    if (v34)
    {
      goto LABEL_15;
    }
  }

  v37 = 0;
  v34 = 0xE000000000000000;
LABEL_15:
  v83 = v37;
  v84 = v34;
  sub_267EF2698();
  v50 = sub_267EF9918();
  v52 = v51;
  v79(v27, v36);

  v55 = v77;
  v54 = v78;
  if (!v78)
  {
    goto LABEL_24;
  }

  v56 = HIBYTE(v78) & 0xF;
  if ((v78 & 0x2000000000000000) == 0)
  {
    v56 = v77 & 0xFFFFFFFFFFFFLL;
  }

  if (!v56)
  {
LABEL_24:

    v62 = v72;
    v61 = v73;
    if (v73 && (OUTLINED_FUNCTION_16_31(), v64))
    {
      if (!v71)
      {
        goto LABEL_42;
      }

      v65 = HIBYTE(v71) & 0xF;
      if ((v71 & 0x2000000000000000) == 0)
      {
        v65 = v70 & 0xFFFFFFFFFFFFLL;
      }

      if (!v65)
      {
LABEL_42:

        v83 = v41;
        v84 = v43;
        v81 = v62;
        v82 = v61;
        OUTLINED_FUNCTION_2_54(v68, MEMORY[0x277D837D0]);

        goto LABEL_43;
      }

      v83 = v41;
      v84 = v43;
      v81 = v62;
      v82 = v61;
      v66 = OUTLINED_FUNCTION_2_54(v63, MEMORY[0x277D837D0]);

      if (!v66)
      {
        v83 = v50;
        v84 = v52;
        v81 = v70;
        v82 = v71;
        goto LABEL_37;
      }
    }

    else
    {

      if (v71)
      {
        v67 = HIBYTE(v71) & 0xF;
        if ((v71 & 0x2000000000000000) == 0)
        {
          v67 = v70 & 0xFFFFFFFFFFFFLL;
        }

        if (v67)
        {
          v83 = v50;
          v84 = v52;
          v81 = v70;
          v82 = v71;
          goto LABEL_37;
        }
      }
    }

    goto LABEL_41;
  }

  v83 = v69;
  v84 = v76;
  v81 = v77;
  v82 = v78;
  v57 = OUTLINED_FUNCTION_2_54(v53, MEMORY[0x277D837D0]);

  if (!v57)
  {

    goto LABEL_41;
  }

  if (!sub_267DEAC8C(v72, v73) || !(v58 = sub_267DEAC8C(v70, v71)))
  {

    goto LABEL_41;
  }

  v83 = v41;
  v84 = v43;
  v81 = v55;
  v82 = v54;
  v59 = OUTLINED_FUNCTION_2_54(v58, MEMORY[0x277D837D0]);

  if (!v59)
  {
LABEL_41:

    goto LABEL_43;
  }

  v83 = v50;
  v84 = v52;
  v81 = v55;
  v82 = v54;
LABEL_37:
  OUTLINED_FUNCTION_2_54(v60, MEMORY[0x277D837D0]);

LABEL_43:
  OUTLINED_FUNCTION_47();
}

void sub_267DEBDB8()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AF10, &unk_267F001E0);
  OUTLINED_FUNCTION_18(v6);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  if (v3)
  {
    v10 = sub_267D5EEC4(v5, v3);
    v12 = v11;
    v34 = v10;
    v35 = v11;
    v13 = sub_267EF2E38();
    OUTLINED_FUNCTION_5_0();
    v15 = *(v14 + 16);
    v33 = v1;
    v15(v9, v1, v13);
    v16 = OUTLINED_FUNCTION_57_0();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v13);
    sub_267BB5034();
    v19 = sub_267EF98D8();
    v21 = v20;
    sub_267B9FED8(v9, &unk_28022AF10, &unk_267F001E0);
    v22 = v10 == v19 && v12 == v21;
    if (!v22 && (sub_267EF9EA8() & 1) == 0)
    {
      v34 = v10;
      v35 = v12;
      v15(v9, v33, v13);
      v26 = OUTLINED_FUNCTION_57_0();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v13);
      v32 = sub_267EF98E8();
      v30 = v29;
      sub_267B9FED8(v9, &unk_28022AF10, &unk_267F001E0);
      if (v10 == v32 && v12 == v30)
      {
      }

      else
      {
        LODWORD(v32) = sub_267EF9EA8();

        if ((v32 & 1) == 0)
        {
          goto LABEL_8;
        }
      }
    }

    v34 = v19;
    v35 = v21;
    v15(v9, v33, v13);
    v23 = OUTLINED_FUNCTION_57_0();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v13);
    sub_267EF98F8();
    sub_267B9FED8(v9, &unk_28022AF10, &unk_267F001E0);
LABEL_8:
  }

  OUTLINED_FUNCTION_47();
}

void sub_267DEC034(uint64_t a1)
{
  v2 = sub_267BAF0DC(a1);
  v3 = 0;
  do
  {
    v4 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D609870](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v7 = [v5 searchProvider];

    v3 = v4 + 1;
  }

  while (v7 != 1);
}

uint64_t INScoredPersonRecommendation.description.getter(uint64_t a1)
{
  if (a1 == 2)
  {
    sub_267EF9B68();

    OUTLINED_FUNCTION_37_17();
    v5 = v2 + 2;
  }

  else if (a1 == 1)
  {
    sub_267EF9B68();

    OUTLINED_FUNCTION_37_17();
    v5 = v1;
  }

  else if (a1)
  {
    v5 = 0x286E776F6E6B6E75;
  }

  else
  {
    v5 = 0x6E656469666E6F63;
  }

  v3 = sub_267EF9E58();
  MEMORY[0x26D608E60](v3);

  MEMORY[0x26D608E60](41, 0xE100000000000000);
  return v5;
}

uint64_t sub_267DEC238(void *a1)
{
  v2 = [a1 data];

  if (v2)
  {
    sub_267EF2BE8();
    OUTLINED_FUNCTION_23_21();
  }

  return OUTLINED_FUNCTION_61_0();
}

uint64_t sub_267DEC2BC(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v11 = a4;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
  *(v8 + 56) = a3;
  *(v8 + 64) = a4;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  sub_267DEE0EC(a7, &v21);
  if (v22)
  {
    sub_267DEE208(a7);
    sub_267BE58F4(&v21, &v23);
  }

  else
  {
    v15 = a5[6];
    v19 = a5[5];
    __swift_project_boxed_opaque_existential_0(a5 + 2, v19);
    v20 = v11;
    v18 = *(v15 + 8);
    sub_267DEE15C(a1, a2, a3, v11);

    v18(&v23, v19, v15);
    v16 = sub_267BFA8F4(&v23);
    __swift_destroy_boxed_opaque_existential_0(&v23);
    v24 = type metadata accessor for SearchForMessagesCATPatternsExecutor(0);
    v25 = &off_2878D3460;

    sub_267DEE1AC(a1, a2, a3, v20);
    *&v23 = v16;
    sub_267DEE208(a7);
    if (v22)
    {
      sub_267DEE208(&v21);
    }
  }

  sub_267BE58F4(&v23, v8 + 88);
  return v8;
}

uint64_t sub_267DEC43C()
{
  OUTLINED_FUNCTION_12();
  v1[35] = v2;
  v1[36] = v0;
  sub_267EF3CF8();
  v1[37] = OUTLINED_FUNCTION_2();
  v3 = sub_267EF48A8();
  v1[38] = v3;
  v1[39] = *(v3 - 8);
  v1[40] = OUTLINED_FUNCTION_2();
  sub_267EF2E38();
  v1[41] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267DEC534()
{
  v1 = v0[36];
  v2 = *(v1 + 40);
  v0[42] = v2;
  v3 = *(v1 + 48);
  v0[43] = v3;
  v4 = *(v1 + 56);
  v0[44] = v4;
  if (!*(v1 + 64))
  {
    v9 = v0[41];
    type metadata accessor for MessagesGroup(0);
    v10 = *(v1 + 72);
    v11 = v2;
    v50 = sub_267BE4AD0(v11);
    v13 = v10[5];
    v12 = v10[6];
    __swift_project_boxed_opaque_existential_0(v10 + 2, v13);
    v14 = *(v12 + 8);
    v15 = v11;
    v14(v13, v12);
    __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
    sub_267EF3B68();
    sub_267D2EBEC(v50, v2, v9);
    v17 = v16;
    v0[48] = v16;
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    OUTLINED_FUNCTION_19_32();
    v18 = *(v17 + OBJC_IVAR____TtC16SiriMessagesFlow13MessagesGroup_membersOtherThanYouAndSender);
    v0[49] = v18;

    swift_bridgeObjectRetain_n();
    if (v18 >> 62)
    {
      goto LABEL_46;
    }

    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
    *&v20 = v19;

    v0[56] = sub_267D40204(v21, v18, v20, 0);
    OUTLINED_FUNCTION_10(MEMORY[0x277D55BE8]);
    v22 = swift_task_alloc();
    v0[57] = v22;
    *v22 = v0;
    v22[1] = sub_267DED438;
    goto LABEL_41;
  }

  if (*(v1 + 64) == 1)
  {
    OUTLINED_FUNCTION_19_32();

    v5 = v3;

    sub_267DEE15C(v2, v3, v4, 1);
    OUTLINED_FUNCTION_10(&unk_267F05418);
    v6 = swift_task_alloc();
    v0[46] = v6;
    *v6 = v0;
    v6[1] = sub_267DECDA4;
    OUTLINED_FUNCTION_15();

    __asm { BR              X5 }
  }

  if (!(v4 | v3 | v2))
  {
    v18 = *(v1 + 72);
    v49 = sub_267BF4170(v18);
    v0[51] = v49;
    swift_beginAccess();
    v27 = *(v18 + 56);
    v28 = sub_267BAF0DC(v27);
    v29 = MEMORY[0x277D84F90];
    if (v28)
    {
      v30 = v28;
      v53 = MEMORY[0x277D84F90];

      result = sub_267EF9BF8();
      if (v30 < 0)
      {
        __break(1u);
        return result;
      }

      v31 = 0;
      v51 = v27 & 0xC000000000000001;
      type metadata accessor for MessagesGroup(0);
      v32 = v27;
      do
      {
        if (v51)
        {
          v33 = MEMORY[0x26D609870](v31, v27);
        }

        else
        {
          v33 = *(v27 + 8 * v31 + 32);
        }

        v34 = v0[41];
        ++v31;
        v35 = *(v18 + 40);
        v36 = *(v18 + 48);
        __swift_project_boxed_opaque_existential_0((v18 + 16), v35);
        (*(v36 + 8))(v35, v36);
        __swift_project_boxed_opaque_existential_0(v0 + 12, v0[15]);
        sub_267EF3B68();
        sub_267D2EBEC(v33, 0, v34);
        __swift_destroy_boxed_opaque_existential_0(v0 + 12);
        sub_267EF9BD8();
        sub_267EF9C08();
        sub_267EF9C18();
        sub_267EF9BE8();
        v27 = v32;
      }

      while (v30 != v31);

      v37 = v53;
      v29 = MEMORY[0x277D84F90];
    }

    else
    {
      v37 = MEMORY[0x277D84F90];
    }

    v52 = v37;
    v54 = v29;
    v0[52] = v37;
    v40 = *(v18 + 56);
    v41 = sub_267BAF0DC(v40);

    for (i = 0; v41 != i; ++i)
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D609870](i, v40);
      }

      else
      {
        if (i >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        v19 = sub_267EF9A68();
        goto LABEL_8;
      }

      if (sub_267BF4920())
      {
        sub_267EF9BD8();
        sub_267EF9C08();
        sub_267EF9C18();
        sub_267EF9BE8();
      }

      else
      {
      }
    }

    v43 = v0[36];

    v44 = sub_267BAF0DC(v54);

    __swift_project_boxed_opaque_existential_0((v43 + 88), *(v43 + 112));
    v45 = [*(v18 + 64) attributes] == 1;
    LODWORD(v44) = (v44 != 0) | (v45 << 8) | (([*(v18 + 64) attributes] == 2) << 16);
    swift_retain_n();

    v0[53] = sub_267D40088(v44, v52, v49);
    OUTLINED_FUNCTION_10(MEMORY[0x277D55BE8]);
    v46 = swift_task_alloc();
    v0[54] = v46;
    *v46 = v0;
    v46[1] = sub_267DED1CC;
LABEL_41:
    OUTLINED_FUNCTION_15();

    __asm { BR              X3 }
  }

  if (v2 == 1 && (v4 | v3) == 0)
  {
    OUTLINED_FUNCTION_19_32();
    v38 = swift_task_alloc();
    v0[50] = v38;
    *v38 = v0;
    v38[1] = sub_267DECFDC;
    OUTLINED_FUNCTION_15();

    return sub_267D48450();
  }

  else
  {
    OUTLINED_FUNCTION_19_32();
    v24 = swift_task_alloc();
    v0[45] = v24;
    *v24 = v0;
    v24[1] = sub_267DECC64;
    OUTLINED_FUNCTION_15();

    return sub_267D481B4();
  }
}

uint64_t sub_267DECC64()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v3[20] = v1;
  v3[21] = v5;
  v3[22] = v0;
  OUTLINED_FUNCTION_84();
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;

  if (v0)
  {

    OUTLINED_FUNCTION_17();

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_267DECDA4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v2[23] = v1;
  v2[24] = v4;
  v2[25] = v0;
  OUTLINED_FUNCTION_84();
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v7 + 376) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267DECEA4()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 344);

  OUTLINED_FUNCTION_9_41(*(v0 + 192));
  OUTLINED_FUNCTION_16_32();
  OUTLINED_FUNCTION_1_64();
  sub_267EF47F8();
  sub_267EF4858();
  v2 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v2);
  v3 = sub_267EF4188();
  OUTLINED_FUNCTION_13_35(v3);
  OUTLINED_FUNCTION_10(MEMORY[0x277D5BD48]);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_4_53(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_58(v5);

  return v8(v7);
}

uint64_t sub_267DECF60()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 344);

  OUTLINED_FUNCTION_18_29();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267DECFDC()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v3[26] = v1;
  v3[27] = v5;
  v3[28] = v0;
  OUTLINED_FUNCTION_84();
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;

  if (v0)
  {

    OUTLINED_FUNCTION_17();

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_267DED11C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_9_41(*(v0 + 216));
  OUTLINED_FUNCTION_16_32();
  OUTLINED_FUNCTION_1_64();
  sub_267EF47F8();
  sub_267EF4858();
  v1 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v1);
  v2 = sub_267EF4188();
  OUTLINED_FUNCTION_13_35(v2);
  OUTLINED_FUNCTION_10(MEMORY[0x277D5BD48]);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4_53(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_58(v4);

  return v7(v6);
}

uint64_t sub_267DED1CC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v2[29] = v1;
  v2[30] = v4;
  v2[31] = v0;
  OUTLINED_FUNCTION_84();
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v7 + 440) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267DED2E8()
{
  OUTLINED_FUNCTION_56();
  swift_bridgeObjectRelease_n();

  OUTLINED_FUNCTION_9_41(*(v0 + 240));
  OUTLINED_FUNCTION_16_32();
  OUTLINED_FUNCTION_1_64();
  sub_267EF47F8();
  sub_267EF4858();
  v1 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v1);
  v2 = sub_267EF4188();
  OUTLINED_FUNCTION_13_35(v2);
  OUTLINED_FUNCTION_10(MEMORY[0x277D5BD48]);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4_53(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_58(v4);

  return v7(v6);
}

uint64_t sub_267DED3B0()
{
  OUTLINED_FUNCTION_56();
  swift_bridgeObjectRelease_n();

  OUTLINED_FUNCTION_18_29();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267DED438()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v2[32] = v1;
  v2[33] = v4;
  v2[34] = v0;
  OUTLINED_FUNCTION_84();
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v7 + 464) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267DED554()
{
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = *(v0 + 336);

  swift_bridgeObjectRelease_n();
  sub_267DEE1AC(v3, v2, v1, 0);

  OUTLINED_FUNCTION_9_41(*(v0 + 264));
  OUTLINED_FUNCTION_16_32();
  OUTLINED_FUNCTION_1_64();
  sub_267EF47F8();
  sub_267EF4858();
  v4 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v4);
  v5 = sub_267EF4188();
  OUTLINED_FUNCTION_13_35(v5);
  OUTLINED_FUNCTION_10(MEMORY[0x277D5BD48]);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4_53(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_0_58(v7);

  return v10(v9);
}

uint64_t sub_267DED650()
{
  OUTLINED_FUNCTION_56();
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];

  swift_bridgeObjectRelease_n();
  sub_267DEE1AC(v3, v2, v1, 0);
  OUTLINED_FUNCTION_18_29();

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267DED6F4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_9_41(*(v0 + 168));
  OUTLINED_FUNCTION_16_32();
  OUTLINED_FUNCTION_1_64();
  sub_267EF47F8();
  sub_267EF4858();
  v1 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v1);
  v2 = sub_267EF4188();
  OUTLINED_FUNCTION_13_35(v2);
  OUTLINED_FUNCTION_10(MEMORY[0x277D5BD48]);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4_53(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_58(v4);

  return v7(v6);
}

uint64_t sub_267DED7A4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 472);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 496) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267DED8DC()
{
  v1 = v0[59];
  v2 = v0[40];
  v3 = v0[38];
  v4 = v0[39];
  v5 = v0[35];
  sub_267B9AFEC((v0 + 2), v5);

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v4 + 8))(v2, v3);
  v6 = MEMORY[0x277D84F90];
  *(v5 + 40) = MEMORY[0x277D84F90];
  *(v5 + 48) = v6;

  OUTLINED_FUNCTION_17();

  return v7();
}

uint64_t sub_267DED9B4()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);

  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_18_29();

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267DEDA4C()
{
  OUTLINED_FUNCTION_12();
  v0[9] = v1;
  v0[10] = v2;
  v0[7] = v3;
  v0[8] = v4;
  v5 = sub_267EF2E38();
  v0[11] = v5;
  v0[12] = *(v5 - 8);
  v0[13] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267DEDB00()
{
  v1 = v0[8];
  if (v1)
  {
    v3 = v0[12];
    v2 = v0[13];
    v4 = v0[11];
    v5 = *(v0[9] + 72);
    v6 = v5[5];
    v7 = v5[6];
    __swift_project_boxed_opaque_existential_0(v5 + 2, v6);
    (*(v7 + 8))(v6, v7);
    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    sub_267EF3B68();
    v8 = sub_267BC20F4(v2, 0, 0, 0, v1);
    (*(v3 + 8))(v2, v4);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  else
  {
    v8 = 0;
  }

  v9 = v0[10];
  v10 = v0[7];

  v10[2] = v8;

  *v10 = v9;

  OUTLINED_FUNCTION_17();

  return v11();
}

uint64_t sub_267DEDC5C()
{
  swift_unknownObjectRelease();
  sub_267DEE1AC(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  __swift_destroy_boxed_opaque_existential_0((v0 + 88));
  return v0;
}

uint64_t sub_267DEDCA4()
{
  sub_267DEDC5C();

  return swift_deallocClassInstance();
}

uint64_t sub_267DEDCFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267DEC43C();
}

uint64_t sub_267DEDDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return j__OUTLINED_FUNCTION_5_10(a1, a2, a3, WitnessTable);
}

void (*sub_267DEDE10(void *a1, uint64_t a2))(uint64_t **a1, uint64_t a2)
{
  v5 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v5;
  v5[2] = v2;
  v5[3] = a2;
  WitnessTable = swift_getWitnessTable();
  v5[4] = WitnessTable;
  *v5 = sub_267C3698C(a2, WitnessTable);
  v5[1] = v7;
  return sub_267C94288;
}

uint64_t sub_267DEDEA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_267C3698C(a1, WitnessTable);
}

uint64_t sub_267DEDEF4(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  swift_getWitnessTable();
  *v2 = v1;
  v2[1] = sub_267BAEBEC;

  return sub_267BF9538();
}

uint64_t sub_267DEE068(uint64_t a1)
{
  result = sub_267DEE0AC(&qword_28022C2B0, &unk_267F09CD0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267DEE0AC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ReadingSummaryAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267DEE0EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299B0, &unk_267F00D00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_267DEE15C(id result, void *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return result;
    }

    result = a2;
  }

  return result;
}

void sub_267DEE1AC(void *a1, void *a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  else if (!a4)
  {
  }
}

uint64_t sub_267DEE208(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299B0, &unk_267F00D00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267DEE298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_267BCE5E4;

  return MEMORY[0x2821B9CD8](a1, a2, a3);
}

uint64_t sub_267DEE34C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 128) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  *(v5 + 48) = swift_task_alloc();
  v6 = sub_267EF89E8();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267DEE44C, 0, 0);
}

uint64_t sub_267DEE44C()
{
  v1 = v0[5];
  v2 = [objc_allocWithZone(MEMORY[0x277D47700]) init];
  v0[10] = v2;
  v3 = sub_267EFA068();
  [v2 setStartTime_];

  v4 = sub_267EFA068();
  [v2 setEndTime_];

  v5 = sub_267EF9028();
  sub_267DEEC6C(v5, v6, v2);
  __swift_project_boxed_opaque_existential_0(v1, v1[3]);
  sub_267EF45A8();
  if (v7)
  {
    v8 = sub_267EF8FF8();
  }

  else
  {
    v8 = 0;
  }

  [v2 setSpeechRequestId_];

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v9 = sub_267EF8A08();
  v0[11] = __swift_project_value_buffer(v9, qword_280240FB0);
  v10 = sub_267EF89F8();
  v11 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v11))
  {
    v13 = v0[3];
    v12 = v0[4];
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    *(v14 + 4) = v13;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v12;
    _os_log_impl(&dword_267B93000, v10, v11, "extractSpeechData attempting to extract speech for audio message with startTime: %llu and endTime: %llu", v14, 0x16u);
    OUTLINED_FUNCTION_32_0();
  }

  if (qword_280228820 != -1)
  {
    swift_once();
  }

  v15 = v0[5];
  v16 = qword_280240FC8;
  v0[12] = qword_280240FC8;
  v17 = v16;
  sub_267EF89C8();
  sub_267EF9698();
  sub_267EF89A8();
  v18 = v1[3];
  v19 = v1[4];
  __swift_project_boxed_opaque_existential_0(v15, v18);
  v20 = swift_task_alloc();
  v0[13] = v20;
  v21 = sub_267DEECD0();
  *v20 = v0;
  v20[1] = sub_267DEE780;

  return MEMORY[0x2821BB6A0](v2, v18, v21, v19);
}

uint64_t sub_267DEE780(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_267DEEBE0;
  }

  else
  {
    v4 = sub_267DEE894;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_267DEE894(uint64_t a1)
{
  v34 = v1;
  v2 = v1[14];
  sub_267EF9688();
  sub_267EF89B8();
  v3 = sub_267DEED14(v2);
  if (!v4)
  {
    v14 = sub_267EF89F8();
    v19 = sub_267EF95E8();
    v16 = ".ExtractSpeechData";
    if (!OUTLINED_FUNCTION_5_2(v19))
    {
      v13 = 0xD000000000000013;
      goto LABEL_12;
    }

    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_1_7(&dword_267B93000, v20, v21, "SASExtractSpeechData returned an empty speechDataUrl");
    v13 = 0xD000000000000013;
    goto LABEL_9;
  }

  v5 = v3;
  v6 = v4;
  v7 = sub_267EF89F8();
  v8 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_267BA33E8(v5, v6, &v33);
    _os_log_impl(&dword_267B93000, v7, v8, "SASExtractSpeechData returned url: '%s'", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v11 = v1[6];
  sub_267EF2B88();

  v12 = sub_267EF2BA8();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
  {
    v22 = v1[14];
    v23 = v1[10];
    v24 = v1[6];
    v25 = v1[2];
    (*(v1[8] + 8))(v1[9], v1[7]);

    (*(*(v12 - 8) + 32))(v25, v24, v12);

    v26 = v1[1];
    goto LABEL_13;
  }

  v13 = 0xD000000000000012;
  sub_267BB2D24(v1[6]);
  v14 = sub_267EF89F8();
  v15 = sub_267EF95E8();
  v16 = "Empty speechDataUrl";
  if (OUTLINED_FUNCTION_5_2(v15))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_1_7(&dword_267B93000, v17, v18, "SASExtractSpeechData failed to create url object");
LABEL_9:
    OUTLINED_FUNCTION_32_0();
  }

LABEL_12:
  v27 = v1[14];
  v28 = v1[10];

  sub_267C266B0();
  swift_allocError();
  *v29 = v13;
  v29[1] = v16 | 0x8000000000000000;
  swift_willThrow();

  v30 = OUTLINED_FUNCTION_0_59();
  v31(v30);

  v26 = v1[1];
LABEL_13:

  return v26();
}

uint64_t sub_267DEEBE0()
{
  v1 = OUTLINED_FUNCTION_0_59();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

void sub_267DEEC6C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();

  [a3 setAudioOutputType_];
}

unint64_t sub_267DEECD0()
{
  result = qword_28022C2B8;
  if (!qword_28022C2B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28022C2B8);
  }

  return result;
}

uint64_t sub_267DEED14(void *a1)
{
  v1 = [a1 speechDataUrl];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

unint64_t sub_267DEED78@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAE0, &unk_267F07D80);
  MEMORY[0x28223BE20](v3 - 8);
  v74 = v69 - v4;
  sub_267EF2D28();
  OUTLINED_FUNCTION_58();
  v72 = v6;
  v73 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_0();
  v9 = v8 - v7;
  v10 = sub_267EF8AE8();
  OUTLINED_FUNCTION_58();
  v79 = v11;
  v13 = MEMORY[0x28223BE20](v12);
  v78 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v75 = v69 - v15;
  sub_267EF57C8();
  OUTLINED_FUNCTION_58();
  v76 = v17;
  v77 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_0();
  v80 = v19 - v18;
  v20 = sub_267EF6178();
  OUTLINED_FUNCTION_58();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_0_0();
  v26 = v25 - v24;
  v27 = sub_267BB8214(v1);
  if (v28)
  {
    v29 = v27;
    v30 = v28;
    v70 = v10;
    v71 = a1;
    v31 = sub_267EF6388();
    OUTLINED_FUNCTION_97(v31);
    v32 = sub_267EF6378();
    v33 = sub_267EF6558();
    OUTLINED_FUNCTION_97(v33);
    sub_267EF6548();
    (*(v22 + 104))(v26, *MEMORY[0x277D5ED90], v20);
    sub_267EF6538();
    (*(v22 + 8))(v26, v20);

    sub_267EF6368();

    v82[0] = v29;
    v82[1] = v30;
    v81[0] = 61;
    v81[1] = 0xE100000000000000;
    MEMORY[0x28223BE20](v34);
    v67 = v81;
    result = sub_267DF0D8C(sub_267BC3234, &v69[-4], v29, v30);
    if (v36)
    {
      __break(1u);
    }

    else
    {
      sub_267EF9178();
      sub_267BB5034();
      sub_267EF9988();

      v37 = v80;
      sub_267EF5798();
      sub_267EF5668();
      v38 = MEMORY[0x26D6059D0](v32);
      v39 = v78;
      if (v38)
      {
        v40 = v38;
        v69[1] = v32;
        sub_267EF2D18();
        v41 = sub_267EF2CE8();
        v43 = v42;
        (*(v72 + 8))(v9, v73);
        v44 = sub_267EF8A78();
        v45 = v74;
        __swift_storeEnumTagSinglePayload(v74, 1, 1, v44);

        v67 = 0xF000000000000000;
        v68 = v45;
        v46 = v75;
        OUTLINED_FUNCTION_29_24(v41, v43, 0x6C7070612E6D6F63, 0xEF636973754D2E65, v40);
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v47 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v47, qword_280240FB0);
        v48 = v79;
        v49 = v70;
        (*(v79 + 16))(v39, v46, v70);
        v50 = sub_267EF89F8();
        v51 = sub_267EF95D8();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = OUTLINED_FUNCTION_48();
          v53 = v39;
          v54 = OUTLINED_FUNCTION_52();
          v82[0] = v54;
          *v52 = 136642819;
          sub_267DF0E90();
          v55 = sub_267EF9E58();
          v57 = v56;
          (*(v79 + 8))(v53, v49);
          v58 = sub_267BA33E8(v55, v57, v82);
          v46 = v75;

          *(v52 + 4) = v58;
          _os_log_impl(&dword_267B93000, v50, v51, "#INMessage+RREntityHelpers extractSongEntity Created entity for Apple Music link: %{sensitive}s.", v52, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v54);
          OUTLINED_FUNCTION_32_0();
          v48 = v79;
          OUTLINED_FUNCTION_32_0();
        }

        else
        {

          (*(v48 + 8))(v39, v49);
        }

        (*(v76 + 8))(v80, v77);
        v66 = v71;
        (*(v48 + 32))(v71, v46, v49);
        v63 = v66;
        v65 = 0;
        v64 = v49;
      }

      else
      {
        (*(v76 + 8))(v37, v77);

        v64 = v70;
        v63 = v71;
        v65 = 1;
      }

      return __swift_storeEnumTagSinglePayload(v63, v65, 1, v64);
    }
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v59 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v59, qword_280240FB0);
    v60 = sub_267EF89F8();
    v61 = sub_267EF95E8();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v62);
      _os_log_impl(&dword_267B93000, v60, v61, "#INMessage+RREntityHelpers extractSongEntity INMessage has no content. Unable to perform search for Apple Music link. RREntity cannot be created.", v20, 2u);
      OUTLINED_FUNCTION_26();
    }

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v10);
  }

  return result;
}

uint64_t sub_267DEF520()
{
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267DEFDC8()
{
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267DF0554()
{
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267DF0CE0(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  result = *(a3 + 16);
  v6 = (a3 + 16 * result + 24);
  do
  {
    v7 = result;
    if (!result)
    {
      break;
    }

    v8 = *v6;
    v10[0] = *(v6 - 1);
    v10[1] = v8;

    v9 = (a1)(v10);

    if (v3)
    {
      break;
    }

    v6 -= 2;
    result = v7 - 1;
  }

  while ((v9 & 1) == 0);
  return result;
}

unint64_t sub_267DF0D8C(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_267EF9158();
    v13[0] = sub_267EF9258();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

unint64_t sub_267DF0E90()
{
  result = qword_2802294B8;
  if (!qword_2802294B8)
  {
    sub_267EF8AE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802294B8);
  }

  return result;
}

uint64_t sub_267DF0EE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280228FB0, &qword_267EFC248);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267DF0F50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267DF1004(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v7 = a1;
  v8 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_267EF9A68())
  {
    if (a2 >> 62)
    {
      result = sub_267EF9A68();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v22 = 0;
      return v22 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v11 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
    v24 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 < 0)
    {
      v11 = v7;
    }

    if (v8)
    {
      v12 = v11;
    }

    v13 = a2 & 0xFFFFFFFFFFFFFF8;
    v14 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v13 = a2;
    }

    if (a2 >> 62)
    {
      v14 = v13;
    }

    if (v12 == v14)
    {
LABEL_31:
      v22 = 1;
      return v22 & 1;
    }

    if (i < 0)
    {
      break;
    }

    a4 = sub_267BA9F38(0, a3, a4);
    v25 = v7;
    v15 = v7 & 0xC000000000000001;
    v7 = a2;
    v16 = a2 & 0xC000000000000001;
    v17 = 4;
    a2 = i;
    while (1)
    {
      v18 = v17 - 4;
      v8 = v17 - 3;
      if (__OFADD__(v17 - 4, 1))
      {
        break;
      }

      if (v15)
      {
        v19 = MEMORY[0x26D609870](v17 - 4, v25);
      }

      else
      {
        if (v18 >= *(v24 + 16))
        {
          goto LABEL_34;
        }

        v19 = *(v25 + 8 * v17);
      }

      a3 = v19;
      if (v16)
      {
        v20 = MEMORY[0x26D609870](v17 - 4, v7);
      }

      else
      {
        if (v18 >= *(v23 + 16))
        {
          goto LABEL_35;
        }

        v20 = *(v7 + 8 * v17);
      }

      v21 = v20;
      v22 = sub_267EF9818();

      if (v22)
      {
        ++v17;
        if (v8 != a2)
        {
          continue;
        }
      }

      return v22 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_267DF11D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_267EF9EA8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_267DF1260@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  sub_267EF6FF8();
  if (sub_267EF6FC8())
  {
    sub_267EF6FA8();

    sub_267EF8678();
    v6 = v5;

    if (v6)
    {
      sub_267EF2CD8();

      v7 = sub_267EF2D28();
      if (__swift_getEnumTagSinglePayload(v4, 1, v7) != 1)
      {
        (*(*(v7 - 8) + 32))(a1, v4, v7);
        v13 = a1;
        v14 = 0;
        v12 = v7;
        return __swift_storeEnumTagSinglePayload(v13, v14, 1, v12);
      }

      sub_267B9F98C(v4, &qword_280229430, &qword_267EFD2C0);
    }
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v8 = sub_267EF8A08();
  __swift_project_value_buffer(v8, qword_280240FB0);
  v9 = sub_267EF89F8();
  v10 = sub_267EF95E8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_267B93000, v9, v10, "Failed to get the request id for the current execution.", v11, 2u);
    MEMORY[0x26D60A7B0](v11, -1, -1);
  }

  v12 = sub_267EF2D28();
  v13 = a1;
  v14 = 1;
  return __swift_storeEnumTagSinglePayload(v13, v14, 1, v12);
}

void sub_267DF1490(uint64_t a1)
{
  v2 = sub_267EF2D28();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = sub_267EF2CF8();
  v18 = [v6 derivedIdentifierForComponentName:27 fromSourceIdentifier:v7];

  if (v18)
  {
    sub_267EF2D08();
    v8 = v18;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v9 = sub_267EF8A08();
    __swift_project_value_buffer(v9, qword_280240FB0);
    (*(v3 + 16))(v5, a1, v2);
    v10 = sub_267EF89F8();
    v11 = sub_267EF95E8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      v14 = sub_267EF2CE8();
      v16 = v15;
      (*(v3 + 8))(v5, v2);
      v17 = sub_267BA33E8(v14, v16, &v19);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_267B93000, v10, v11, "Failed to create a derived identifier for SELF for request ID: %s. Will create a random UUID.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x26D60A7B0](v13, -1, -1);
      MEMORY[0x26D60A7B0](v12, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    sub_267EF2D18();
  }
}

uint64_t sub_267DF1780(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v6 = type metadata accessor for DefaultUnlockDeviceFlowStrategyAsync();
  OUTLINED_FUNCTION_49(v6);
  type metadata accessor for SendMessageAppResolutionOnDeviceFlowStrategy(0);
  sub_267BA9F38(0, a3, a4);
  sub_267DF5E38(&unk_28022CEF0, type metadata accessor for SendMessageAppResolutionOnDeviceFlowStrategy, &unk_267F0E4C8);
  sub_267DF5E38(&qword_28022C310, type metadata accessor for DefaultUnlockDeviceFlowStrategyAsync, &unk_267F09D80);
  v7 = sub_267EF3408();

  return v7;
}

uint64_t sub_267DF189C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DefaultUnlockDeviceFlowStrategyAsync();
  swift_allocObject();
  type metadata accessor for FixedAppResolutionOnDeviceFlowStrategy();
  sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
  sub_267DF5E38(&qword_28022C308, type metadata accessor for FixedAppResolutionOnDeviceFlowStrategy, &unk_267F04A38);
  sub_267DF5E38(&qword_28022C310, type metadata accessor for DefaultUnlockDeviceFlowStrategyAsync, &unk_267F09D80);
  v2 = sub_267EF3408();

  return v2;
}

uint64_t sub_267DF19E0()
{
  OUTLINED_FUNCTION_56();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *(v1 + 16) = v0 + 16;
  OUTLINED_FUNCTION_10(&unk_267F004A8);
  v5 = v2;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_267DF1AA8;

  return v5(sub_267DF7214, v1);
}

uint64_t sub_267DF1AA8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *(v6 + 40) = v5;

  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DF1BC4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_267CB8FE8(0xD000000000000013, 0x8000000267F0F820, sub_267CA5B68, v4);
}

uint64_t sub_267DF1C60@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SendMessageAppResolutionAndPreRCHCheckFlow.State(0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_0();
  v6 = v5 - v4;
  v7 = OBJC_IVAR____TtC16SiriMessagesFlow42SendMessageAppResolutionAndPreRCHCheckFlow_state;
  swift_beginAccess();
  sub_267DF72E8(v1 + v7, v6);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_267EF2FC8();
    OUTLINED_FUNCTION_22();
    v8 = OUTLINED_FUNCTION_26_0();
    return v9(v8);
  }

  else
  {
    sub_267C4BE60();
    v11 = swift_allocError();
    *v12 = 0;
    v12[1] = 0;
    *a1 = v11;
    *(a1 + 8) = 0;
    v13 = *MEMORY[0x277D5B408];
    sub_267EF2FC8();
    OUTLINED_FUNCTION_22();
    (*(v14 + 104))(a1, v13);
    OUTLINED_FUNCTION_1_66();
    return sub_267DF7290(v6, v15);
  }
}

uint64_t sub_267DF1E14()
{
  OUTLINED_FUNCTION_12();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_267EF2FC8();
  v1[7] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[8] = v4;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v5 = sub_267EF4BA8();
  v1[12] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_2();
  v7 = type metadata accessor for SendMessageAppResolutionAndPreRCHCheckFlow.State(0);
  v1[15] = v7;
  OUTLINED_FUNCTION_18(v7);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267DF1F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_65();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v25 = v22[17];
  v26 = v22[6];
  v27 = OBJC_IVAR____TtC16SiriMessagesFlow42SendMessageAppResolutionAndPreRCHCheckFlow_state;
  swift_beginAccess();
  sub_267DF72E8(v26 + v27, v25);
  OUTLINED_FUNCTION_66();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    (*(v22[8] + 32))(v22[11], v22[17], v22[7]);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v37 = v22[10];
    v38 = v22[8];
    v39 = sub_267EF8A08();
    __swift_project_value_buffer(v39, qword_280240FB0);
    v40 = *(v38 + 16);
    v41 = OUTLINED_FUNCTION_61_0();
    v40(v41);
    v42 = sub_267EF89F8();
    v43 = sub_267EF95D8();
    v44 = OUTLINED_FUNCTION_10_2(v43);
    v45 = v22[10];
    if (v44)
    {
      HIDWORD(a10) = v37;
      v46 = v22[8];
      v47 = v22[9];
      v48 = v22[7];
      v49 = OUTLINED_FUNCTION_48();
      a9 = OUTLINED_FUNCTION_52();
      a11 = a9;
      *v49 = 136315138;
      (v40)(v47, v45, v48);
      v50 = sub_267EF9098();
      v52 = v51;
      v53 = *(v46 + 8);
      v53(v45, v48);
      v54 = sub_267BA33E8(v50, v52, &a11);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_267B93000, v42, BYTE4(a10), "SendAppResolutionFlow# flow execution completed with result: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(a9);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_26();
    }

    else
    {
      v71 = v22[7];
      v72 = v22[8];

      v53 = *(v72 + 8);
      v53(v45, v71);
    }

    sub_267EF4018();
    v73 = OUTLINED_FUNCTION_66();
    (v53)(v73);
LABEL_21:
    OUTLINED_FUNCTION_25_29();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_64_3();

    return v75(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, a12, a13, a14);
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v29 = v22[17];
      v22[18] = *(v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C318, &qword_267F0AA40) + 48));
      v30 = OUTLINED_FUNCTION_61_0();
      v31(v30);
      v32 = swift_task_alloc();
      v22[19] = v32;
      *v32 = v22;
      v32[1] = sub_267DF242C;
      OUTLINED_FUNCTION_64_3();

      return sub_267DF2740();
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v55 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v55, qword_280240FB0);

    v56 = sub_267EF89F8();
    v57 = sub_267EF95E8();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = v22[16];
      v59 = OUTLINED_FUNCTION_48();
      v60 = OUTLINED_FUNCTION_52();
      a11 = v60;
      *v59 = 136315138;
      sub_267DF72E8(v26 + v27, v58);
      v61 = sub_267EF9098();
      v63 = sub_267BA33E8(v61, v62, &a11);

      *(v59 + 4) = v63;
      OUTLINED_FUNCTION_21();
      _os_log_impl(v64, v65, v66, v67, v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_26();
    }

    v69 = v22[17];
    sub_267EF4018();
    OUTLINED_FUNCTION_1_66();
    sub_267DF7290(v69, v70);
    goto LABEL_21;
  }

  v22[20] = *v22[17];
  v35 = swift_task_alloc();
  v22[21] = v35;
  *v35 = v22;
  v35[1] = sub_267DF25C4;
  OUTLINED_FUNCTION_64_3();

  return sub_267DF410C();
}

uint64_t sub_267DF242C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267DF2510()
{

  v0 = OUTLINED_FUNCTION_66();
  v1(v0);
  OUTLINED_FUNCTION_25_29();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267DF25C4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267DF26A8()
{

  OUTLINED_FUNCTION_25_29();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267DF2740()
{
  OUTLINED_FUNCTION_12();
  v1[70] = v0;
  v1[69] = v2;
  v1[68] = v3;
  v1[67] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  OUTLINED_FUNCTION_18(v5);
  v1[71] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF4C08();
  v1[72] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[73] = v7;
  v1[74] = OUTLINED_FUNCTION_2();
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267DF281C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_65();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v25 = *(v22 + 592);
  v26 = *(v22 + 568);
  sub_267EF4B88();
  sub_267E57DFC(v25, (v22 + 16));
  v27 = OUTLINED_FUNCTION_26_0();
  v28(v27);
  sub_267E71BD8(v26);
  v29 = type metadata accessor for DirectInvocationUseCases(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, 1, v29);
  v31 = *(v22 + 568);
  if (EnumTagSinglePayload == 1)
  {
    sub_267B9F98C(*(v22 + 568), &unk_28022BBE0, qword_267EFD030);
  }

  else
  {
    OUTLINED_FUNCTION_66();
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      v33 = *v31;
      v32 = v31[1];
      goto LABEL_9;
    }

    sub_267DF7290(v31, type metadata accessor for DirectInvocationUseCases);
  }

  sub_267C6AD4C(v22 + 16, v22 + 56, &unk_28022BBF0, &unk_267F01C60);
  if (*(v22 + 80))
  {
    __swift_project_boxed_opaque_existential_0((v22 + 56), *(v22 + 80));
    v34 = OUTLINED_FUNCTION_26_0();
    v33 = v35(v34);
    v32 = v36;
    __swift_destroy_boxed_opaque_existential_0((v22 + 56));
  }

  else
  {
    sub_267B9F98C(v22 + 56, &unk_28022BBF0, &unk_267F01C60);
    v33 = 0;
    v32 = 0;
  }

LABEL_9:

  sub_267C6AD4C(v22 + 16, v22 + 96, &unk_28022BBF0, &unk_267F01C60);
  v37 = *(v22 + 120);
  if (v37)
  {
    v38 = *(v22 + 128);
    __swift_project_boxed_opaque_existential_0((v22 + 96), *(v22 + 120));
    v39 = (*(v38 + 272))(v37, v38);
    __swift_destroy_boxed_opaque_existential_0((v22 + 96));
    if ((v39 & 1) != 0 || v32)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_267B9F98C(v22 + 96, &unk_28022BBF0, &unk_267F01C60);
    if (v32)
    {
LABEL_12:

      v40 = 1;
      goto LABEL_15;
    }
  }

  v40 = 0;
LABEL_15:
  sub_267BA9F38(0, &qword_280229280, 0x277CBEBD0);
  sub_267BF0A00((v22 + 136));
  v41 = *(v22 + 160);
  v42 = *(v22 + 168);
  OUTLINED_FUNCTION_62_1((v22 + 136), v41);
  v43 = (*(v42 + 8))(0xD000000000000013, 0x8000000267F1AB10, v41, v42);
  __swift_destroy_boxed_opaque_existential_0((v22 + 136));
  if (v43)
  {

    sub_267EF7C38();
    v44 = sub_267EF7C08();
    OUTLINED_FUNCTION_44_1();
    if (!v45)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v46 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v46, qword_280240FB0);
    v47 = sub_267EF89F8();
    v48 = sub_267EF95E8();
    if (!OUTLINED_FUNCTION_27(v48))
    {
      goto LABEL_30;
    }

    *OUTLINED_FUNCTION_32() = 0;
    OUTLINED_FUNCTION_6_24(&dword_267B93000, v49, v50, "SendAppResolutionFlow# Forcing App to 1P for testing!");
LABEL_29:
    OUTLINED_FUNCTION_32_0();
LABEL_30:

LABEL_31:
    v57 = qword_280228818;

    if (v57 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v58 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v58, qword_280240FB0);
    v59 = sub_267EF89F8();
    v60 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_27(v60))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_6_24(&dword_267B93000, v61, v62, "SendAppResolutionFlow# using fixed app resolution flow strategy");
      OUTLINED_FUNCTION_32_0();
    }

    v63 = *(v22 + 560);
    v64 = *(v22 + 544);

    OUTLINED_FUNCTION_62_1((v63 + 152), *(v63 + 176));
    type metadata accessor for FixedAppResolutionOnDeviceFlowStrategy();
    v65 = swift_allocObject();
    *(v65 + 16) = v44;
    v66 = *v59;

    sub_267DF189C(v65, v64);

LABEL_36:

    OUTLINED_FUNCTION_38_22();
    sub_267C6AD4C(v66 + 56, v22 + 416, &qword_28022AC78, &unk_267F09F80);
    if (*(v22 + 440))
    {
      sub_267B9A5E8((v22 + 416), v22 + 376);
      OUTLINED_FUNCTION_44_1();
      if (!v45)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v67 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v67, qword_280240FB0);
      v68 = sub_267EF89F8();
      v69 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_5_2(v69))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_6_22(&dword_267B93000, v70, v71, "#SendAppResolutionFlow# overriding protected app client");
        OUTLINED_FUNCTION_32_0();
      }

      sub_267EF30B8();
      __swift_destroy_boxed_opaque_existential_0((v22 + 376));
    }

    else
    {
      sub_267B9F98C(v22 + 416, &qword_28022AC78, &unk_267F09F80);
    }

    OUTLINED_FUNCTION_34_23();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AC88, &unk_267F03600);
    v72 = sub_267D01510();
    OUTLINED_FUNCTION_12_35(v72);

    sub_267B9F98C(v22 + 16, &unk_28022BBF0, &unk_267F01C60);

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_64_3();

    return v74(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12, a13, a14);
  }

  v51 = *(v22 + 552);
  if (v51)
  {
    if (v40)
    {
      if (!v32)
      {
        goto LABEL_55;
      }

LABEL_25:
      sub_267EF7C38();

      v44 = sub_267EF7C08();
      sub_267DF4BB4();
      OUTLINED_FUNCTION_44_1();
      if (!v45)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v52 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v52, qword_280240FB0);

      v47 = sub_267EF89F8();
      v53 = sub_267EF95C8();

      if (!os_log_type_enabled(v47, v53))
      {

        goto LABEL_31;
      }

      v54 = OUTLINED_FUNCTION_48();
      v55 = OUTLINED_FUNCTION_52();
      a11 = v55;
      *v54 = 136446210;
      v56 = sub_267BA33E8(v33, v32, &a11);

      *(v54 + 4) = v56;
      _os_log_impl(&dword_267B93000, v47, v53, "SendAppResolutionFlow# app identifier available in input, resolving to: %{public}s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      OUTLINED_FUNCTION_32_0();
      goto LABEL_29;
    }

    *(v22 + 480) = &type metadata for Features;
    *(v22 + 488) = sub_267BAFCAC();
    *(v22 + 456) = 7;

    v82 = sub_267EF5128();
    __swift_destroy_boxed_opaque_existential_0((v22 + 456));
    if ((v82 & 1) == 0 || (sub_267DF4000() & 1) == 0 || *(*(*(v22 + 560) + 104) + 96) == 1)
    {

      v83 = qword_280228818;

      if (v83 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v84 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v84, qword_280240FB0);

      v85 = sub_267EF89F8();
      v86 = sub_267EF95C8();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = OUTLINED_FUNCTION_48();
        v88 = OUTLINED_FUNCTION_52();
        a11 = v88;
        *v87 = 136446210;
        *(v22 + 528) = v51;
        sub_267EF7C38();
        sub_267DF5E38(&qword_28022A060, MEMORY[0x277D55380], MEMORY[0x277D55390]);
        v89 = sub_267EF9E58();
        v91 = v90;

        v92 = sub_267BA33E8(v89, v91, &a11);

        *(v87 + 4) = v92;
        _os_log_impl(&dword_267B93000, v85, v86, "SendAppResolutionFlow# previously resolved app %{public}s is present, fresh app is not in input and recipient is not changed, skipping app resolution", v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v88);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      else
      {
      }

      v44 = *(v22 + 552);
      goto LABEL_31;
    }

    if (v32)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v32)
    {
      goto LABEL_25;
    }

    if (v40)
    {
LABEL_55:
      OUTLINED_FUNCTION_44_1();
      if (!v45)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v93 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v93, qword_280240FB0);
      v94 = sub_267EF89F8();
      v95 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_10_2(v95))
      {
        v96 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v96);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v97, v98, v99, v100, v101, 2u);
        OUTLINED_FUNCTION_26();
      }

      v102 = *(v22 + 560);

      v103 = *(v102 + 96);
      v66 = *(v102 + 104);
      sub_267B9AFEC(v102 + 16, v22 + 176);
      v104 = qword_2802286F0;
      a10 = v103;

      if (v104 != -1)
      {
        OUTLINED_FUNCTION_4_0(&qword_2802286F0);
      }

      sub_267B9AFEC(qword_2802405A0, v22 + 216);
      v105 = type metadata accessor for AppInfoBuilder();
      v106 = OUTLINED_FUNCTION_49(v105);
      if (qword_280228730 != -1)
      {
        OUTLINED_FUNCTION_2_9(&qword_280228730);
      }

      a9 = *(v22 + 544);
      __swift_mutable_project_boxed_opaque_existential_1(v22 + 216, *(v22 + 240));
      *(v22 + 280) = &type metadata for CATProvider;
      *(v22 + 288) = &off_2878CE7A0;
      *(v22 + 320) = &type metadata for MessagesFeatureFlagsImpl;
      *(v22 + 328) = off_2878D1228;
      *(v22 + 360) = v105;
      *(v22 + 368) = &off_2878D24C8;
      *(v22 + 336) = v106;
      type metadata accessor for SendMessageAppResolutionOnDeviceFlowStrategy(0);
      OUTLINED_FUNCTION_27_4();
      swift_allocObject();
      __swift_mutable_project_boxed_opaque_existential_1(v22 + 256, &type metadata for CATProvider);
      __swift_mutable_project_boxed_opaque_existential_1(v22 + 296, &type metadata for MessagesFeatureFlagsImpl);
      __swift_mutable_project_boxed_opaque_existential_1(v22 + 336, v105);
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_39_20();
      v107();

      v110 = OUTLINED_FUNCTION_33_16(a10, v108, v109, (v22 + 176));
      __swift_destroy_boxed_opaque_existential_0((v22 + 336));

      OUTLINED_FUNCTION_36_21();
      sub_267DF1780(v110, a9, &qword_28022AE60, 0x277CD4078);
      goto LABEL_36;
    }
  }

  v111 = swift_task_alloc();
  *(v22 + 600) = v111;
  *v111 = v22;
  v111[1] = sub_267DF333C;
  OUTLINED_FUNCTION_64_3();

  return sub_267DF4704();
}

uint64_t sub_267DF333C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 608) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267DF3428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  if (*(v14 + 608))
  {
    v15 = qword_280228818;

    if (v15 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v16 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v16, qword_280240FB0);
    v17 = sub_267EF89F8();
    v18 = sub_267EF95C8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_32();
      *v19 = 0;
      _os_log_impl(&dword_267B93000, v17, v18, "SendAppResolutionFlow# run app selection Experiment", v19, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v20 = *(v14 + 560);
    v21 = *(v14 + 544);

    v22 = OUTLINED_FUNCTION_26_0();
    v24 = sub_267DF4904(v22, v23);
    v25 = *__swift_project_boxed_opaque_existential_0((v20 + 152), *(v20 + 176));
    sub_267DF1780(v24, v21, &qword_28022AE60, 0x277CD4078);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v26 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v26, qword_280240FB0);
    v27 = sub_267EF89F8();
    v28 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_10_2(v28))
    {
      v29 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v29);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v30, v31, v32, v33, v34, 2u);
      OUTLINED_FUNCTION_26();
    }

    v35 = *(v14 + 560);

    v36 = *(v35 + 96);
    v25 = *(v35 + 104);
    sub_267B9AFEC(v35 + 16, v14 + 176);
    v37 = qword_2802286F0;
    a11 = v36;

    if (v37 != -1)
    {
      OUTLINED_FUNCTION_4_0(&qword_2802286F0);
    }

    sub_267B9AFEC(qword_2802405A0, v14 + 216);
    v38 = type metadata accessor for AppInfoBuilder();
    v39 = OUTLINED_FUNCTION_49(v38);
    if (qword_280228730 != -1)
    {
      OUTLINED_FUNCTION_2_9(&qword_280228730);
    }

    a10 = *(v14 + 544);
    __swift_mutable_project_boxed_opaque_existential_1(v14 + 216, *(v14 + 240));
    *(v14 + 280) = &type metadata for CATProvider;
    *(v14 + 288) = &off_2878CE7A0;
    *(v14 + 320) = &type metadata for MessagesFeatureFlagsImpl;
    *(v14 + 328) = off_2878D1228;
    *(v14 + 360) = v38;
    *(v14 + 368) = &off_2878D24C8;
    *(v14 + 336) = v39;
    type metadata accessor for SendMessageAppResolutionOnDeviceFlowStrategy(0);
    OUTLINED_FUNCTION_27_4();
    swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v14 + 256, &type metadata for CATProvider);
    __swift_mutable_project_boxed_opaque_existential_1(v14 + 296, &type metadata for MessagesFeatureFlagsImpl);
    __swift_mutable_project_boxed_opaque_existential_1(v14 + 336, v38);
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_39_20();
    v40();

    v43 = OUTLINED_FUNCTION_33_16(a11, v41, v42, (v14 + 176));
    __swift_destroy_boxed_opaque_existential_0((v14 + 336));

    OUTLINED_FUNCTION_36_21();
    sub_267DF1780(v43, a10, &qword_28022AE60, 0x277CD4078);
  }

  OUTLINED_FUNCTION_38_22();
  sub_267C6AD4C(v25 + 56, v14 + 416, &qword_28022AC78, &unk_267F09F80);
  if (*(v14 + 440))
  {
    sub_267B9A5E8((v14 + 416), v14 + 376);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v44 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v44, qword_280240FB0);
    v45 = sub_267EF89F8();
    v46 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v46))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_6_22(&dword_267B93000, v47, v48, "#SendAppResolutionFlow# overriding protected app client");
      OUTLINED_FUNCTION_32_0();
    }

    sub_267EF30B8();
    __swift_destroy_boxed_opaque_existential_0((v14 + 376));
  }

  else
  {
    sub_267B9F98C(v14 + 416, &qword_28022AC78, &unk_267F09F80);
  }

  OUTLINED_FUNCTION_34_23();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AC88, &unk_267F03600);
  v49 = sub_267D01510();
  OUTLINED_FUNCTION_12_35(v49);

  sub_267B9F98C(v14 + 16, &unk_28022BBF0, &unk_267F01C60);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_3();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267DF3904(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for SendMessageAppResolutionAndPreRCHCheckFlow.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_267EF2FC8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v52 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = (&v52 - v15);
  v58 = *(v8 + 16);
  v59 = a1;
  v58(&v52 - v15, a1, v7);
  if ((*(v8 + 88))(v16, v7) == *MEMORY[0x277D5B410])
  {
    (*(v8 + 96))(v16, v7);
    v17 = *v16;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v18 = sub_267EF8A08();
    __swift_project_value_buffer(v18, qword_280240FB0);

    v19 = sub_267EF89F8();
    v20 = sub_267EF95C8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = v6;
      v23 = swift_slowAlloc();
      v61[0] = v23;
      *v21 = 136446210;
      v60[0] = v17;
      sub_267EF7C38();
      sub_267DF5E38(&qword_28022A060, MEMORY[0x277D55380], MEMORY[0x277D55390]);
      v24 = sub_267EF9E58();
      v26 = sub_267BA33E8(v24, v25, v61);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_267B93000, v19, v20, "SendAppResolutionFlow# app resolution flow resolved app: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      v27 = v23;
      v6 = v22;
      MEMORY[0x26D60A7B0](v27, -1, -1);
      MEMORY[0x26D60A7B0](v21, -1, -1);
    }

    *v6 = v17;
    swift_storeEnumTagMultiPayload();
    v28 = OBJC_IVAR____TtC16SiriMessagesFlow42SendMessageAppResolutionAndPreRCHCheckFlow_state;
    swift_beginAccess();

    sub_267DF721C(v6, a2 + v28);
    swift_endAccess();
    v29 = a2[5];
    v30 = a2[6];
    __swift_project_boxed_opaque_existential_0(a2 + 2, v29);
    (*(v30 + 8))(v61, v29, v30);
    __swift_project_boxed_opaque_existential_0(v61, v61[3]);
    if (sub_267EF3C28())
    {

      return __swift_destroy_boxed_opaque_existential_0(v61);
    }

    else
    {
      v47 = a2[5];
      v48 = a2[6];
      __swift_project_boxed_opaque_existential_0(a2 + 2, v47);
      (*(v48 + 8))(v60, v47, v48);
      __swift_project_boxed_opaque_existential_0(v60, v60[3]);
      LOBYTE(v47) = sub_267EF3BE8();
      __swift_destroy_boxed_opaque_existential_0(v60);
      __swift_destroy_boxed_opaque_existential_0(v61);
      if ((v47 & 1) == 0)
      {
        sub_267DF534C(v17);
      }
    }
  }

  else
  {
    v55 = v4;
    v56 = v6;
    v57 = a2;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v32 = sub_267EF8A08();
    __swift_project_value_buffer(v32, qword_280240FB0);
    v33 = sub_267EF89F8();
    v34 = sub_267EF95C8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_267B93000, v33, v34, "SendAppResolutionFlow# app resolution flow didn't resolve app", v35, 2u);
      MEMORY[0x26D60A7B0](v35, -1, -1);
    }

    v36 = v58;
    v58(v14, v59, v7);
    v37 = sub_267EF89F8();
    v38 = sub_267EF95D8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v53 = v39;
      v54 = swift_slowAlloc();
      v61[0] = v54;
      *v39 = 136315138;
      v36(v11, v14, v7);
      v52 = sub_267EF9098();
      v41 = v40;
      v42 = *(v8 + 8);
      v42(v14, v7);
      v43 = sub_267BA33E8(v52, v41, v61);

      v44 = v53;
      *(v53 + 1) = v43;
      _os_log_impl(&dword_267B93000, v37, v38, "SendAppResolutionFlow# app resolution flow didn't resolve app: %s", v44, 0xCu);
      v45 = v54;
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x26D60A7B0](v45, -1, -1);
      MEMORY[0x26D60A7B0](v44, -1, -1);

      v46 = v58;
    }

    else
    {

      v42 = *(v8 + 8);
      v46 = v36;
      v42(v14, v7);
    }

    v49 = v56;
    v46(v56, v59, v7);
    swift_storeEnumTagMultiPayload();
    v50 = OBJC_IVAR____TtC16SiriMessagesFlow42SendMessageAppResolutionAndPreRCHCheckFlow_state;
    v51 = v57;
    swift_beginAccess();
    sub_267DF721C(v49, v51 + v50);
    swift_endAccess();
    return (v42)(v16, v7);
  }
}

uint64_t sub_267DF4000()
{
  v1 = *(*(v0 + 104) + 64);
  if (v1)
  {
    v2 = *(v0 + 96);
    v3 = v1;
    v4 = [v2 recipients];
    if (v4)
    {
      v5 = v4;
      sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      v6 = sub_267EF92F8();
    }

    else
    {
      v6 = 0;
    }

    v7 = sub_267BCEA0C(v3);
    v8 = v7;
    if (v6)
    {
      if (v7)
      {
        v9 = sub_267DF1004(v6, v7, &qword_28022BB60, 0x277CD3E90);

        LOBYTE(v1) = v9 ^ 1;
        return v1 & 1;
      }
    }

    else
    {

      if (!v8)
      {
        LOBYTE(v1) = 0;
        return v1 & 1;
      }
    }

    LOBYTE(v1) = 1;
  }

  return v1 & 1;
}

uint64_t sub_267DF410C()
{
  OUTLINED_FUNCTION_12();
  v1[12] = v2;
  v1[13] = v0;
  v1[11] = v3;
  v4 = type metadata accessor for SendMessageAppResolutionAndPreRCHCheckFlow.State(0);
  v1[14] = v4;
  OUTLINED_FUNCTION_18(v4);
  v1[15] = OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267DF418C()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = sub_267EF89F8();
  v4 = sub_267EF95C8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_59(v5);
    _os_log_impl(&dword_267B93000, v3, v4, "SendAppResolutionFlow# pushing unlock check flow", v0, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v6 = *(v1 + 120);
  v7 = *(v1 + 96);
  v8 = *(v1 + 104);

  v9 = *(v8 + 96);
  sub_267B9AFEC(v8 + 16, v1 + 16);
  v10 = type metadata accessor for SiriKitFlowFactoryImpl();
  v11 = OUTLINED_FUNCTION_49(v10);
  v12 = sub_267BCD068(v9, (v1 + 16), v11);
  swift_storeEnumTagMultiPayload();
  v13 = OBJC_IVAR____TtC16SiriMessagesFlow42SendMessageAppResolutionAndPreRCHCheckFlow_state;
  swift_beginAccess();
  sub_267DF721C(v6, v8 + v13);
  swift_endAccess();
  *(v1 + 80) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  *(v14 + 24) = v7;
  type metadata accessor for SendMessageUnlockCheckFlow();
  sub_267DF5E38(&qword_28022AC80, type metadata accessor for SendMessageUnlockCheckFlow, &unk_267F0AD00);

  sub_267EF3FC8();

  OUTLINED_FUNCTION_17();

  return v15();
}

uint64_t sub_267DF43C8(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SendMessageAppResolutionAndPreRCHCheckFlow.State(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v9 = sub_267EF8A08();
    __swift_project_value_buffer(v9, qword_280240FB0);
    v10 = sub_267EF89F8();
    v11 = sub_267EF95E8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_267B93000, v10, v11, "SendAppResolutionFlow# error while trying to unlock the device", v12, 2u);
      MEMORY[0x26D60A7B0](v12, -1, -1);
    }

    sub_267C4BE60();
    v13 = swift_allocError();
    *v14 = xmmword_267F00050;
    *v8 = v13;
    v8[8] = 0;
    v15 = *MEMORY[0x277D5B408];
    v16 = sub_267EF2FC8();
    (*(*(v16 - 8) + 104))(v8, v15, v16);
    swift_storeEnumTagMultiPayload();
    v17 = OBJC_IVAR____TtC16SiriMessagesFlow42SendMessageAppResolutionAndPreRCHCheckFlow_state;
    swift_beginAccess();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v18 = sub_267EF8A08();
    __swift_project_value_buffer(v18, qword_280240FB0);
    v19 = sub_267EF89F8();
    v20 = sub_267EF95C8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_267B93000, v19, v20, "SendAppResolutionFlow# Unlock successful!", v21, 2u);
      MEMORY[0x26D60A7B0](v21, -1, -1);
    }

    *v8 = a3;
    v22 = *MEMORY[0x277D5B410];
    v23 = sub_267EF2FC8();
    (*(*(v23 - 8) + 104))(v8, v22, v23);
    swift_storeEnumTagMultiPayload();
    v17 = OBJC_IVAR____TtC16SiriMessagesFlow42SendMessageAppResolutionAndPreRCHCheckFlow_state;
    swift_beginAccess();
  }

  sub_267DF721C(v8, a2 + v17);
  return swift_endAccess();
}

uint64_t sub_267DF4704()
{
  *(v1 + 16) = v0;
  v2 = OUTLINED_FUNCTION_4();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_267DF472C()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 16);
  v2 = v1[12];
  if (qword_280228730 != -1)
  {
    OUTLINED_FUNCTION_2_9(&qword_280228730);
    v1 = *(v0 + 16);
  }

  v3 = qword_280240A10;
  v4 = *__swift_project_boxed_opaque_existential_0(v1 + 14, v1[17]);
  OUTLINED_FUNCTION_10(&dword_267F09FA0);
  v8 = v5;
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_267DF4818;

  return v8(v2, v4, v3);
}

uint64_t sub_267DF4818()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_14();
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

char *sub_267DF4904(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2[12];
  v6 = v2[13];
  if (qword_280228730 != -1)
  {
    OUTLINED_FUNCTION_2_9(&qword_280228730);
  }

  v7 = qword_280240A10;
  v8 = v2[5];
  v9 = v2[6];
  OUTLINED_FUNCTION_62_1(v2 + 2, v8);
  v10 = *(v9 + 8);

  v10(v30, v8, v9);
  v11 = v7;
  v12 = sub_267DF5E80(v5, a2, v6, v30, v7);
  __swift_destroy_boxed_opaque_existential_0(v30);
  sub_267B9AFEC((v3 + 2), v30);
  v13 = qword_2802286F0;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_4_0(&qword_2802286F0);
  }

  sub_267B9AFEC(qword_2802405A0, v29);
  v14 = type metadata accessor for AppInfoBuilder();
  v15 = OUTLINED_FUNCTION_49(v14);
  __swift_mutable_project_boxed_opaque_existential_1(v29, v29[3]);
  v28[3] = &type metadata for CATProvider;
  v28[4] = &off_2878CE7A0;
  v27[3] = &type metadata for MessagesFeatureFlagsImpl;
  v27[4] = off_2878D1228;
  v26[4] = &off_2878D24C8;
  v26[3] = v14;
  v26[0] = v15;
  type metadata accessor for SendMessageAppResolutionOnDeviceFlowStrategy(0);
  OUTLINED_FUNCTION_27_4();
  v16 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v28, &type metadata for CATProvider);
  __swift_mutable_project_boxed_opaque_existential_1(v27, &type metadata for MessagesFeatureFlagsImpl);
  __swift_mutable_project_boxed_opaque_existential_1(v26, v14);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_0();
  v20 = (v19 - v18);
  (*(v21 + 16))(v19 - v18);
  v22 = *v20;
  v23 = v5;

  v24 = sub_267DF6184(v23, 0, v6, v30, v22, v12, v11, v16);

  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v27);
  __swift_destroy_boxed_opaque_existential_0(v28);
  __swift_destroy_boxed_opaque_existential_0(v29);
  return v24;
}

uint64_t sub_267DF4BB4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  v3 = OUTLINED_FUNCTION_18(v2);
  MEMORY[0x28223BE20](v3);
  v5 = v48 - v4;
  v6 = sub_267EF2D28();
  OUTLINED_FUNCTION_23();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_0();
  v12 = v11 - v10;
  v13 = v0[13];
  *(v13 + 96) = 1;
  v14 = v0[42];
  v15 = v1[43];
  __swift_project_boxed_opaque_existential_0(v1 + 39, v14);
  sub_267C31594(9, v14, v15);
  swift_beginAccess();
  sub_267C6AD4C(v13 + 224, __dst, &qword_2802295C8, &qword_267EFDD28);
  v16 = __dst[3];
  result = sub_267B9F98C(__dst, &qword_2802295C8, &qword_267EFDD28);
  if (!v16)
  {
    OUTLINED_FUNCTION_62_1(v1 + 14, v1[17]);
    if (qword_280228770 != -1)
    {
      swift_once();
    }

    memcpy(__dst, &dword_280240CC0, 0x58uLL);
    result = sub_267D623B4(__dst);
    if (result)
    {
      v50 = v12;
      v51 = v8;
      v52 = v6;
      v48[0] = v1[12];
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
      v72 = 0;
      memset(v71, 0, sizeof(v71));
      v18 = [objc_opt_self() sharedAnalytics];
      v19 = [v18 defaultMessageStream];

      v70[3] = sub_267BA9F38(0, &qword_28022A6B0, 0x277D552C8);
      v70[4] = &off_2878D94D8;
      v70[0] = v19;
      v20 = type metadata accessor for ExperimentSignalGatherer();
      v21 = swift_allocObject();
      *(v21 + 16) = 0x4024000000000000;
      v22 = type metadata accessor for ExperimentSignalFactory();
      v23 = OUTLINED_FUNCTION_49(v22);
      v69[3] = v20;
      v69[4] = &off_2878D94E8;
      v68 = &off_2878D94F8;
      v69[0] = v21;
      v67 = v22;
      v66[0] = v23;
      type metadata accessor for AppSelectionSignalCollector(0);
      OUTLINED_FUNCTION_27_4();
      v49 = v24;
      v25 = swift_allocObject();
      __swift_mutable_project_boxed_opaque_existential_1(v69, v20);
      v48[2] = v48;
      OUTLINED_FUNCTION_23();
      MEMORY[0x28223BE20](v26);
      OUTLINED_FUNCTION_0_0();
      v29 = (v28 - v27);
      (*(v30 + 16))(v28 - v27);
      __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
      v48[1] = v48;
      OUTLINED_FUNCTION_23();
      MEMORY[0x28223BE20](v31);
      OUTLINED_FUNCTION_0_0();
      v34 = (v33 - v32);
      (*(v35 + 16))(v33 - v32);
      v36 = *v29;
      v37 = *v34;
      v65[3] = v20;
      v65[4] = &off_2878D94E8;
      v64[4] = &off_2878D94F8;
      v65[0] = v36;
      v64[3] = v22;
      v64[0] = v37;
      *(v25 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_intent) = sub_267EF97C8();
      *(v25 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_appResolutionType) = 9;
      *(v25 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_shadowAppResolution) = 0;
      sub_267B9AFEC(v65, v25 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_signalGatherer);
      sub_267B9AFEC(v70, v25 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_messageStream);
      sub_267B9AFEC(v64, v25 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_signalFactory);
      sub_267C6AD4C(&v73, v25 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_userDefaults, &qword_280229840, &qword_267EFE9E0);
      sub_267C6AD4C(v71, &v59, &qword_28022A708, &unk_267F01640);
      if (v60)
      {
        sub_267B9A5E8(&v59, &v61);
        v38 = v50;
      }

      else
      {
        if (qword_280228730 != -1)
        {
          OUTLINED_FUNCTION_2_9(&qword_280228730);
        }

        v39 = qword_280240A10;
        v57 = type metadata accessor for EligibleAppFinder();
        OUTLINED_FUNCTION_3_59();
        v58 = sub_267DF5E38(v40, v41, &unk_267F014D4);
        *&v56 = v39;
        v42 = swift_allocObject();
        *(v42 + 16) = 0x4024000000000000;
        v54 = v20;
        v55 = &off_2878D94E8;
        *&v53 = v42;
        v62 = &type metadata for UserPersonaSignalCollector;
        v63 = &off_2878D9498;
        v43 = swift_allocObject();
        *&v61 = v43;

        sub_267EDEDFC(&v56, &v53, (v43 + 16));
        v38 = v50;
        if (v60)
        {
          sub_267B9F98C(&v59, &qword_28022A708, &unk_267F01640);
        }
      }

      sub_267B9A5E8(&v61, v25 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_userPresonaSignalCollector);
      sub_267DF1260(v5);
      v44 = v52;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v52);
      v46 = v51;
      if (EnumTagSinglePayload == 1)
      {
        sub_267EF2D18();
        if (__swift_getEnumTagSinglePayload(v5, 1, v44) != 1)
        {
          sub_267B9F98C(v5, &qword_280229430, &qword_267EFD2C0);
        }
      }

      else
      {
        (*(v51 + 32))(v38, v5, v44);
      }

      v47 = OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_requestID;
      (*(v46 + 32))(v25 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_requestID, v38, v44);
      sub_267DF1490(v25 + v47);
      sub_267D293AC(v25 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_crrCommsAppSelectionJointId);
      sub_267EF2D18();
      sub_267B9F98C(v71, &qword_28022A708, &unk_267F01640);
      sub_267B9F98C(&v73, &qword_280229840, &qword_267EFE9E0);
      __swift_destroy_boxed_opaque_existential_0(v64);
      __swift_destroy_boxed_opaque_existential_0(v65);
      *(v25 + 16) = sub_267EE9EA4;
      *(v25 + 24) = 0;
      __swift_destroy_boxed_opaque_existential_0(v70);
      __swift_destroy_boxed_opaque_existential_0(v66);
      __swift_destroy_boxed_opaque_existential_0(v69);
      *(&v74 + 1) = v49;
      v75 = &off_2878D9520;
      *&v73 = v25;
      swift_beginAccess();
      sub_267BF3128(&v73, v13 + 224, &qword_2802295C8, &qword_267EFDD28);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_267DF534C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  v4 = OUTLINED_FUNCTION_18(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  sub_267EF93D8();
  v7 = sub_267EF93F8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = a1;

  sub_267E8FA18();
}

uint64_t sub_267DF5440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  return MEMORY[0x2822009F8](sub_267DF5460, 0, 0);
}

uint64_t sub_267DF5460()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[7];
  v0[9] = [objc_allocWithZone(MEMORY[0x277D576E0]) init];
  OUTLINED_FUNCTION_62_1((v1 + 232), *(v1 + 256));
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_267DF5514;

  return sub_267EDEFC8();
}

uint64_t sub_267DF5514()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 88) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267DF5600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v15 = *(v14 + 88);
  v16 = *(v14 + 72);
  v17 = *(v14 + 56);
  [v16 setUserPersona_];
  v18 = [*(*(*(v17 + 104) + 136) + 16) smsContext];
  [v18 setUserPersona_];

  v19 = [objc_allocWithZone(MEMORY[0x277D57520]) init];
  [v19 setSmsContext_];
  sub_267B9AFEC(v17 + 272, v14 + 16);
  v35 = *(v14 + 48);
  __swift_project_boxed_opaque_existential_0((v14 + 16), *(v14 + 40));
  sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = sub_267BB41B0(ObjCClassFromMetadata);
  if (v22)
  {
    v24 = *(v14 + 64);
    v23 = *(v14 + 72);
    sub_267EF3B18();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = v19;

    v26 = v19;
    BYTE4(a11) = 1;
    sub_267EF3B08();
    sub_267EF3848();

    __swift_destroy_boxed_opaque_existential_0((v14 + 16));
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_64_3();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v35, a11, a12, a13, a14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_267DF57D0(uint64_t a1, uint64_t a2, void *a3)
{

  sub_267EF3AD8();
  v4 = a3;
  return sub_267EF3AB8();
}

uint64_t sub_267DF581C()
{
  sub_267B9F98C(v0 + 56, &qword_28022AC78, &unk_267F09F80);

  OUTLINED_FUNCTION_28_28();
  OUTLINED_FUNCTION_1_66();
  return sub_267DF7290(v0 + v1, v2);
}

uint64_t sub_267DF5870()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_267B9F98C(v0 + 56, &qword_28022AC78, &unk_267F09F80);

  OUTLINED_FUNCTION_28_28();
  OUTLINED_FUNCTION_1_66();
  sub_267DF7290(v0 + v1, v2);
  return v0;
}

uint64_t sub_267DF58D0()
{
  sub_267DF5870();

  return swift_deallocClassInstance();
}

uint64_t sub_267DF5950(uint64_t a1)
{
  result = type metadata accessor for SendMessageAppResolutionAndPreRCHCheckFlow.State(319);
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

void sub_267DF5A3C(uint64_t a1)
{
  sub_267DF5AC4(319);
  if (v1 <= 0x3F)
  {
    sub_267EF7C38();
    if (v2 <= 0x3F)
    {
      sub_267EF2FC8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_267DF5AC4(uint64_t a1)
{
  if (!qword_28022C2E8)
  {
    sub_267EF4BA8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022C2F0, qword_267F09EA8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28022C2E8);
    }
  }
}

uint64_t sub_267DF5B44@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_267C6AD4C(v3 + 56, a1, &qword_28022AC78, &unk_267F09F80);
}

uint64_t sub_267DF5BA0(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_267BF3128(a1, v3 + 56, &qword_28022AC78, &unk_267F09F80);
  return swift_endAccess();
}

uint64_t sub_267DF5C68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BAEBEC;

  return sub_267DF1E14();
}

uint64_t sub_267DF5D70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_267BAEBEC;

  return sub_267DF5440(a1, v4, v5, v7, v6);
}

uint64_t sub_267DF5E38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267DF5E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33[3] = type metadata accessor for EligibleAppFinder();
  OUTLINED_FUNCTION_3_59();
  v33[4] = sub_267DF5E38(v9, v10, &unk_267F014D4);
  v33[0] = a5;
  v11 = qword_280228818;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v12 = sub_267EF8A08();
  __swift_project_value_buffer(v12, qword_280240FB0);
  v13 = sub_267EF89F8();
  v14 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v14))
  {
    v15 = OUTLINED_FUNCTION_32();
    *v15 = 0;
    _os_log_impl(&dword_267B93000, v13, v14, "#SeasExperiment: making experiment service for Force-App-Disambiguation", v15, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v16 = sub_267D29748();
  if (v19 == 2 && !(v16 | v17 | v18))
  {
    v24 = 0;
  }

  else
  {
    sub_267DF6BA0(v16, v17, v18, v19);
    v20 = sub_267EF89F8();
    v21 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v21))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_6_22(&dword_267B93000, v22, v23, "#SeasExperiment: run SeAS in shadow for Force-App-Disambiguation");
      OUTLINED_FUNCTION_32_0();
    }

    sub_267B9AFEC(a4, v32);
    type metadata accessor for SendMessageAppSelectionService(0);
    OUTLINED_FUNCTION_27_4();
    swift_allocObject();

    v24 = sub_267CB8280(v32, a3, 1);
  }

  sub_267B9AFEC(a4, v32);
  sub_267B9AFEC(v33, v31);
  v25 = [objc_opt_self() sharedAnalytics];
  v26 = [v25 defaultMessageStream];

  type metadata accessor for SendMessageAppSelectionExperimentService(0);
  OUTLINED_FUNCTION_27_4();
  v27 = swift_allocObject();
  v30[3] = sub_267BA9F38(0, &qword_28022A6B0, 0x277D552C8);
  v30[4] = &off_2878D94D8;
  v30[0] = v26;
  *(v27 + qword_28022A6C8) = v24;
  *(v27 + qword_28022A6D0) = a2;
  sub_267B9AFEC(v31, v27 + qword_28022A6D8);
  *(v27 + qword_28022A6E8) = a3;
  sub_267B9AFEC(v32, v27 + qword_28022A6E0);
  sub_267B9AFEC(v30, v27 + qword_28022A6F0);

  v28 = sub_267EF7BC8();
  __swift_destroy_boxed_opaque_existential_0(v31);
  __swift_destroy_boxed_opaque_existential_0(v32);
  __swift_destroy_boxed_opaque_existential_0(v30);
  __swift_destroy_boxed_opaque_existential_0(v33);
  return v28;
}

char *sub_267DF6184(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{
  v80 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
  OUTLINED_FUNCTION_23();
  v70 = v16;
  v71 = v15;
  MEMORY[0x28223BE20](v15);
  v69 = &v67 - v17;
  v18 = sub_267EF7B88();
  v19 = OUTLINED_FUNCTION_18(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_0_0();
  v72 = v21 - v20;
  sub_267EF68A8();
  OUTLINED_FUNCTION_23();
  v73 = v23;
  v74 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_0();
  v79 = v25 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299A8, &unk_267F00CF0);
  v27 = OUTLINED_FUNCTION_18(v26);
  v28 = MEMORY[0x28223BE20](v27);
  v68 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v81 = &v67 - v30;
  v118[3] = type metadata accessor for EligibleAppFinder();
  OUTLINED_FUNCTION_3_59();
  v118[4] = sub_267DF5E38(v31, v32, &unk_267F014D4);
  v118[0] = a7;
  v117[3] = &type metadata for CATProvider;
  v117[4] = &off_2878CE7A0;
  v116[3] = &type metadata for MessagesFeatureFlagsImpl;
  v116[4] = off_2878D1228;
  v115[3] = type metadata accessor for AppInfoBuilder();
  v115[4] = &off_2878D24C8;
  v115[0] = a5;
  v33 = MEMORY[0x277D84F90];
  *&a8[OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_apps] = MEMORY[0x277D84F90];
  *&a8[OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_eligibleApps] = v33;
  v34 = &a8[OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_appName];
  *v34 = 0;
  *(v34 + 1) = 0;
  *&a8[OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_intent] = a1;
  *&a8[OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_previouslyResolvedApp] = a2;
  sub_267B9AFEC(v115, &a8[OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_appInfoBuilder]);
  v77 = a6;
  v78 = a4;
  v75 = a1;
  v76 = a2;
  if (a6)
  {

    v35 = a1;
    v36 = a6;
  }

  else
  {
    v37 = v80;
    v39 = a4[3];
    v38 = a4[4];
    OUTLINED_FUNCTION_62_1(a4, v39);
    v40 = *(v38 + 8);

    v41 = a1;
    v40(v103, v39, v38);
    a4 = v78;
    type metadata accessor for SendMessageAppSelectionService(0);
    OUTLINED_FUNCTION_27_4();
    swift_allocObject();
    v36 = sub_267CB8280(v103, v37, 0);
  }

  *&a8[OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_appResolutionService] = v36;
  sub_267B9AFEC(a4, v114);
  sub_267B9AFEC(v117, v113);
  v42 = v71;
  __swift_storeEnumTagSinglePayload(v81, 1, 1, v71);
  sub_267B9AFEC(v116, v112);
  sub_267B9AFEC(v118, v111);
  v43 = sub_267EF8938();

  v44 = sub_267EF8928();
  v110[4] = MEMORY[0x277D5FDD8];
  v110[3] = v43;
  v110[0] = v44;
  v67 = sub_267EF3AA8();
  sub_267EF3838();
  v45 = type metadata accessor for NetworkStatusProvider();
  v46 = OUTLINED_FUNCTION_49(v45);
  sub_267BA9F38(0, &qword_280229280, 0x277CBEBD0);
  sub_267BF0A00(v108);
  sub_267EF8668();
  v47 = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
  v48 = sub_267BA9F38(0, &qword_28022C300, 0x277CEF2E8);
  v106 = &off_2878CF540;
  v105 = v48;
  *&v104 = v47;
  v49 = sub_267EF72E8();
  v50 = v79;
  sub_267EF6898();
  ConversationEventStore.init()(v103);
  v51 = type metadata accessor for ShareSheetProvider();
  v52 = OUTLINED_FUNCTION_49(v51);
  __swift_mutable_project_boxed_opaque_existential_1(v113, v113[3]);
  __swift_mutable_project_boxed_opaque_existential_1(v112, v112[3]);
  v101 = &type metadata for CATProvider;
  v102 = &off_2878CE7A0;
  v99[3] = &type metadata for MessagesFeatureFlagsImpl;
  v99[4] = off_2878D1228;
  v98[3] = v45;
  v98[4] = &off_2878D2ED0;
  v98[0] = v46;
  v96 = &type metadata for TTSUtil;
  v97 = &off_2878D0CB0;
  *&v95 = v49;
  *(&v95 + 1) = &off_2878D0918;
  v53 = v74;
  v93 = v74;
  v94 = &off_2878D54D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v92);
  v55 = v73;
  (*(v73 + 16))(boxed_opaque_existential_0, v50, v53);
  v90 = v51;
  v91 = &off_2878D0D48;
  *&v89 = v52;
  *(a8 + 7) = v80;
  sub_267B9AFEC(v100, (a8 + 64));
  type metadata accessor for SendMessageCATs(0);

  sub_267EF7B68();
  OUTLINED_FUNCTION_44_19();
  *(a8 + 13) = sub_267EF78E8();
  type metadata accessor for SendMessageCATsSimple(0);
  sub_267EF7B68();
  OUTLINED_FUNCTION_44_19();
  *&a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageCATsSimple] = sub_267EF79E8();
  type metadata accessor for MessagesCATs(0);
  sub_267EF7B68();
  OUTLINED_FUNCTION_44_19();
  *(a8 + 15) = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0(v100, v101);
  *(a8 + 14) = sub_267BB4A3C();
  v56 = v68;
  sub_267C6AD4C(v81, v68, &qword_2802299A8, &unk_267F00CF0);
  if (__swift_getEnumTagSinglePayload(v56, 1, v42) == 1)
  {
    v87 = v53;
    v88 = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(&v86);
    sub_267EF6898();
    v57 = sub_267EF8928();
    v85[3] = v43;
    v85[4] = MEMORY[0x277D5FDD8];
    v85[0] = v57;
    sub_267B9AFEC(v114, v84);
    sub_267B9AFEC(&v86, v83);
    sub_267B9AFEC(v85, v82);
    v58 = swift_allocObject();
    sub_267B9A5E8(v84, v58 + 16);
    sub_267B9A5E8(v83, v58 + 56);
    sub_267B9A5E8(v82, v58 + 96);
    sub_267EF4C08();
    sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
    v59 = v69;
    sub_267EF7058();
    __swift_destroy_boxed_opaque_existential_0(v85);
    __swift_destroy_boxed_opaque_existential_0(&v86);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v56, 1, v42);
    v61 = v75;
    v62 = v70;
    if (EnumTagSinglePayload != 1)
    {
      sub_267B9F98C(v56, &qword_2802299A8, &unk_267F00CF0);
    }
  }

  else
  {
    v59 = v69;
    v62 = v70;
    (*(v70 + 32))(v69, v56, v42);
    v61 = v75;
  }

  (*(v62 + 32))(&a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_transformer], v59, v42);
  sub_267B9AFEC(v99, &a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags]);
  sub_267B9AFEC(v110, &a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_referenceResolver]);
  v63 = &a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_disambiguationSnippetProvider];
  *v63 = v67;
  v63[1] = &off_2878D5360;
  sub_267B9AFEC(v109, &a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender]);
  sub_267B9AFEC(v98, &a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_networkStatusProvider]);
  sub_267B9AFEC(v108, &a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_userDefaults]);
  v64 = type metadata accessor for SendMessageCATPatternsExecutor(0);
  sub_267EF7B68();
  OUTLINED_FUNCTION_44_19();
  v65 = sub_267EF78E8();
  v87 = v64;
  v88 = &off_2878D1100;

  *&v86 = v65;
  (*(v55 + 8))(v79, v53);
  __swift_destroy_boxed_opaque_existential_0(v108);
  __swift_destroy_boxed_opaque_existential_0(v109);
  sub_267B9F98C(v81, &qword_2802299A8, &unk_267F00CF0);
  __swift_destroy_boxed_opaque_existential_0(v118);
  __swift_destroy_boxed_opaque_existential_0(v115);
  __swift_destroy_boxed_opaque_existential_0(v116);
  __swift_destroy_boxed_opaque_existential_0(v117);
  __swift_destroy_boxed_opaque_existential_0(v110);
  __swift_destroy_boxed_opaque_existential_0(v98);
  __swift_destroy_boxed_opaque_existential_0(v99);
  sub_267B9A5E8(&v86, &a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns]);
  sub_267B9A5E8(&v107, &a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sharedContextService]);
  sub_267B9A5E8(&v104, &a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_locationService]);
  sub_267B9A5E8(&v95, &a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_ttsUtil]);
  sub_267B9A5E8(&v92, &a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_contactResolver]);
  memcpy(&a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageEventStore], v103, 0x60uLL);
  sub_267B9A5E8(v111, &a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_appFinder]);
  sub_267B9A5E8(&v89, &a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_shareSheetProvider]);
  sub_267B9A5E8(v114, (a8 + 16));
  __swift_destroy_boxed_opaque_existential_0(v100);
  __swift_destroy_boxed_opaque_existential_0(v112);
  __swift_destroy_boxed_opaque_existential_0(v113);
  __swift_destroy_boxed_opaque_existential_0(v78);
  return a8;
}

void *sub_267DF6BA0(void *result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_267DF6BFC()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v0[29] = v3;
  v0[30] = v4;
  v5 = type metadata accessor for SmartAppSelectionFeatureImpl();
  v0[31] = v5;
  v0[27] = v5;
  v0[28] = &off_2878D3D60;
  v0[24] = v2;

  return MEMORY[0x2822009F8](sub_267DF6C88, 0, 0);
}

uint64_t sub_267DF6C88()
{
  OUTLINED_FUNCTION_56();
  if (sub_267EF9718() & 1) != 0 || (v3 = sub_267EF96E8(), (v3))
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v4 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v4, qword_280240FB0);
    v5 = sub_267EF89F8();
    v6 = sub_267EF95D8();
    if (!OUTLINED_FUNCTION_27(v6))
    {
      goto LABEL_8;
    }

    v7 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_59(v7);
    v8 = "#SeasExperiment - intent not eligible for forced disambiguation";
LABEL_7:
    _os_log_impl(&dword_267B93000, v5, v1, v8, v0, 2u);
    OUTLINED_FUNCTION_32_0();
LABEL_8:

    __swift_destroy_boxed_opaque_existential_0(v2 + 24);
    v9 = v2[1];

    return v9(0);
  }

  v11 = sub_267D292FC(v3);
  if (v11)
  {
    OUTLINED_FUNCTION_62_1(v2 + 24, v2[31]);
    if (qword_280228778 != -1)
    {
      swift_once();
    }

    memcpy(v2 + 2, &dword_280240D18, 0x58uLL);
    v11 = sub_267D623B4((v2 + 2));
    if ((v11 & 1) == 0)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v14 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v14, qword_280240FB0);
      v5 = sub_267EF89F8();
      v15 = sub_267EF95D8();
      if (!OUTLINED_FUNCTION_27(v15))
      {
        goto LABEL_8;
      }

      v16 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_59(v16);
      v8 = "#SeasExperiment - CRR force prompted, but failed enhanced joint prompt rate check for forced disambiguation";
      goto LABEL_7;
    }
  }

  if ((sub_267D292FC(v11) & 1) == 0)
  {
    OUTLINED_FUNCTION_62_1(v2 + 24, v2[27]);
    if (qword_280228768 != -1)
    {
      swift_once();
    }

    memcpy(v2 + 13, &dword_280240C68, 0x58uLL);
    if (!sub_267D623B4((v2 + 13)))
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v17 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v17, qword_280240FB0);
      v5 = sub_267EF89F8();
      v18 = sub_267EF95D8();
      if (!OUTLINED_FUNCTION_27(v18))
      {
        goto LABEL_8;
      }

      v19 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_59(v19);
      v8 = "#SeasExperiment - disabled for forced disambiguation";
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_10(&unk_267F09FA8);
  v20 = v12;
  v13 = swift_task_alloc();
  v2[32] = v13;
  *v13 = v2;
  v13[1] = sub_267DF6FA0;

  return v20();
}

uint64_t sub_267DF6FA0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 264) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267DF708C()
{
  OUTLINED_FUNCTION_56();
  v1 = sub_267BAF0DC(v0[33]);

  if (v1 <= 1)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v13 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v13, qword_280240FB0);
    v14 = sub_267EF89F8();
    v15 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v15))
    {
      v16 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v16);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      OUTLINED_FUNCTION_26();
    }

    v12 = 0;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v2 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
    v3 = sub_267EF89F8();
    v4 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v4))
    {
      v5 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v5);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_26();
    }

    v11 = type metadata accessor for AppDisambiguationExperiment();
    v12 = OUTLINED_FUNCTION_49(v11);
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  v22 = v0[1];

  return v22(v12);
}

uint64_t sub_267DF721C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SendMessageAppResolutionAndPreRCHCheckFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267DF7290(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_22();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_267DF72E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SendMessageAppResolutionAndPreRCHCheckFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267DF734C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_267EF2BA8();
  __swift_allocate_value_buffer(v3, qword_28022C320);
  v4 = __swift_project_value_buffer(v3, qword_28022C320);
  sub_267EF2B88();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_267DF745C(uint64_t a1)
{
  v1 = sub_267EF3CF8();
  v2 = OUTLINED_FUNCTION_18(v1);
  MEMORY[0x28223BE20](v2);
  sub_267EF3C88();
  return sub_267EF47A8();
}

uint64_t sub_267DF7500(uint64_t a1, void *a2)
{
  sub_267EF47F8();
  v3 = [a2 catId];
  sub_267EF9028();

  return sub_267EF47D8();
}

uint64_t sub_267DF756C()
{
  OUTLINED_FUNCTION_12();
  v1[7] = v2;
  v1[8] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAC0, &unk_267EFE470);
  OUTLINED_FUNCTION_18(v3);
  v1[9] = OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267DF75F0()
{
  OUTLINED_FUNCTION_62();
  v2 = v0[8];
  v1 = v0[9];
  sub_267EF7AE8();
  sub_267B9AFEC(v2 + 16, (v0 + 2));
  v3 = sub_267EF7118();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
  v4 = sub_267DE77AC(v0 + 2, v1);
  v0[10] = v4;
  __swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40));
  OUTLINED_FUNCTION_44_0();
  v5 = sub_267EF3C28();
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_267DF7708;

  return sub_267E9D550(v4, v5 & 1);
}

uint64_t sub_267DF7708()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_9_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v5[12] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    v5[13] = v3;
    v12 = swift_task_alloc();
    v5[14] = v12;
    *v12 = v7;
    v12[1] = sub_267DF787C;

    return sub_267DF9110();
  }
}

uint64_t sub_267DF787C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267DF7960()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_1();

  return v1();
}

uint64_t sub_267DF79C4()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267DF7A28()
{
  OUTLINED_FUNCTION_12();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAC0, &unk_267EFE470);
  OUTLINED_FUNCTION_18(v4);
  v1[10] = OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267DF7AB0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21_27();

  v0[11] = sub_267EC814C(v3);
  sub_267EF7AE8();
  sub_267B9AFEC(v2 + 16, (v0 + 2));
  v4 = sub_267EF7118();
  OUTLINED_FUNCTION_46_11(v4);
  v5 = sub_267DE77AC(v0 + 2, v1);
  OUTLINED_FUNCTION_16_34(v5);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_15_34(v6);

  return sub_267E9D3DC(v7, v8, v9);
}

uint64_t sub_267DF7BA4()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_9_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v5[14] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    v5[15] = v3;
    v12 = swift_task_alloc();
    v5[16] = v12;
    *v12 = v7;
    OUTLINED_FUNCTION_18_31(v12);

    return sub_267DF9110();
  }
}

uint64_t sub_267DF7D18()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267DF7DFC()
{
  OUTLINED_FUNCTION_12();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAC0, &unk_267EFE470);
  OUTLINED_FUNCTION_18(v4);
  v1[10] = OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267DF7E84()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21_27();

  v0[11] = sub_267EC814C(v3);
  sub_267EF7AE8();
  sub_267B9AFEC(v2 + 16, (v0 + 2));
  v4 = sub_267EF7118();
  OUTLINED_FUNCTION_46_11(v4);
  v5 = sub_267DE77AC(v0 + 2, v1);
  OUTLINED_FUNCTION_16_34(v5);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_15_34(v6);

  return sub_267E9D140(v7, v8, v9);
}

uint64_t sub_267DF7F78()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_9_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v5[14] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    v5[15] = v3;
    v12 = swift_task_alloc();
    v5[16] = v12;
    *v12 = v7;
    OUTLINED_FUNCTION_18_31(v12);

    return sub_267DF9110();
  }
}

uint64_t sub_267DF80EC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267DF81D0()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_1();

  return v1();
}

uint64_t sub_267DF8234()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267DF82A4()
{
  OUTLINED_FUNCTION_12();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_267EF48A8();
  v1[4] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267DF8348()
{
  OUTLINED_FUNCTION_12();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_267DF83D8;

  return sub_267E9EC38();
}

uint64_t sub_267DF83D8()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_9_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;

  if (v0)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 64) = v3;
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_267DF8510()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[8];
  v2 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v2);
  v0[9] = sub_267EF4188();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v4 = OUTLINED_FUNCTION_47_3(v3);
  v0[10] = v4;
  *(v4 + 16) = xmmword_267EFCA40;
  *(v4 + 32) = v1;
  sub_267DF745C(v1);
  OUTLINED_FUNCTION_10(MEMORY[0x277D5BD50]);
  v11 = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[11] = v6;
  *v6 = v7;
  v6[1] = sub_267DF861C;
  v8 = v0[6];
  v9 = v0[2];

  return v11(v9, v4, v8);
}

uint64_t sub_267DF861C()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14();
  v2 = v1[6];
  v3 = v1[5];
  v4 = v1[4];
  v5 = *v0;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DF879C()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_1();

  return v1();
}

uint64_t sub_267DF8800()
{
  OUTLINED_FUNCTION_12();
  v1[16] = v2;
  v1[17] = v0;
  v1[15] = v3;
  v4 = sub_267EF48A8();
  v1[18] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[19] = v5;
  v1[20] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF83E8();
  v1[21] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[22] = v7;
  v1[23] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF8178();
  v1[24] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[25] = v9;
  v1[26] = OUTLINED_FUNCTION_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  v1[27] = v10;
  OUTLINED_FUNCTION_18(v10);
  v1[28] = OUTLINED_FUNCTION_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAC0, &unk_267EFE470);
  OUTLINED_FUNCTION_18(v11);
  v1[29] = OUTLINED_FUNCTION_2();
  v12 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267DF899C()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[29];
  v2 = v0[17];
  type metadata accessor for MessagesApp(0);

  v4 = sub_267EC814C(v3);
  v0[30] = v4;
  sub_267EF7AE8();
  sub_267B9AFEC(v2 + 16, (v0 + 2));
  v5 = sub_267EF7118();
  OUTLINED_FUNCTION_46_11(v5);

  v6 = sub_267DE77AC(v0 + 2, v1);
  v0[31] = v6;
  v7 = swift_task_alloc();
  v0[32] = v7;
  *v7 = v0;
  v7[1] = sub_267DF8AB0;

  return sub_267E9D6B0(v4, v6);
}

uint64_t sub_267DF8AB0()
{
  OUTLINED_FUNCTION_56();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v2[12] = v1;
  v2[13] = v4;
  v2[14] = v0;
  *v3 = *v1;
  v2[33] = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267DF8BEC()
{
  v1 = v0[28];
  v2 = v0[25];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v20 = v0[13];
  v21 = v0[21];
  v22 = v0[26];
  sub_267C7FD8C(v0[30]);

  sub_267EFA028();
  sub_267DF9A30(v1);
  v6 = sub_267EF7C18();
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v0[34] = v20;
  *v4 = v8;
  v4[1] = v9;
  (*(v5 + 104))(v4, *MEMORY[0x277D5D6E8], v21);
  sub_267EF83F8();
  (*(v2 + 104))(v22, *MEMORY[0x277D5D358], v3);
  v10 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v10);
  v0[35] = sub_267EF4188();
  v0[10] = v3;
  v0[11] = sub_267DF9A98();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
  (*(v2 + 16))(boxed_opaque_existential_0, v22, v3);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v13 = OUTLINED_FUNCTION_47_3(v12);
  v0[36] = v13;
  *(v13 + 16) = xmmword_267EFCA40;
  *(v13 + 32) = v20;
  sub_267DF745C(v20);
  OUTLINED_FUNCTION_10(MEMORY[0x277D5BD40]);
  v23 = v14;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[37] = v15;
  *v15 = v16;
  v15[1] = sub_267DF8E28;
  v17 = v0[20];
  v18 = v0[15];

  return v23(v18, v0 + 7, v13, v17);
}