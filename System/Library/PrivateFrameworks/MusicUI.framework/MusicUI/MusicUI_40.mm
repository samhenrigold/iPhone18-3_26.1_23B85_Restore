uint64_t sub_216A95C5C(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for PlaylistAddableItem(0);
  v7 = OUTLINED_FUNCTION_2(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v8 = *(a3 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v20 = MEMORY[0x277D84F90];
    sub_216AB99A0(0, v8, 0);
    v9 = v20;
    v10 = sub_217006924();
    OUTLINED_FUNCTION_2(v10);
    v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v17 = *(v13 + 72);
    while (1)
    {
      a1(v12, &v19);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v20 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_216AB99A0(v14 > 1, v15 + 1, 1);
        v9 = v20;
      }

      *(v9 + 16) = v15 + 1;
      OUTLINED_FUNCTION_236();
      sub_216ABEA38();
      v12 += v17;
      if (!--v8)
      {
        return v9;
      }
    }
  }

  return v9;
}

uint64_t sub_216A95E40(void (*a1)(uint64_t *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v18 = MEMORY[0x277D84F90];
  sub_216AB9D1C(0, v5, 0);
  v6 = v18;
  for (i = (a3 + 32); ; i += 120)
  {
    memcpy(__dst, i, 0x78uLL);
    memcpy(__src, i, sizeof(__src));
    sub_2168A5278(__dst, v14);
    a1(&v16, __src);
    if (v4)
    {
      break;
    }

    v4 = 0;
    memcpy(v14, __src, sizeof(v14));
    sub_2168A52D4(v14);
    v10 = v16;
    v18 = v6;
    v12 = *(v6 + 16);
    v11 = *(v6 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_216AB9D1C(v11 > 1, v12 + 1, 1);
      v6 = v18;
    }

    *(v6 + 16) = v12 + 1;
    *(v6 + 8 * v12 + 32) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  memcpy(v14, __src, sizeof(v14));
  sub_2168A52D4(v14);

  __break(1u);
  return result;
}

void sub_216A95FA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v28 = MEMORY[0x277D84F90];
    sub_2166F4258();
    v5 = sub_216ABE478();
    v6 = 0;
    v7 = a1 + 64;
    v24 = v1;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(a1 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_24;
        }

        v25 = v4;
        v26 = v6;
        v27 = v3;
        v9 = (*(a1 + 48) + 16 * v5);
        v10 = *v9;
        v11 = v9[1];
        v13 = *(v28 + 16);
        v12 = *(v28 + 24);
        sub_21700DF14();
        if (v13 >= v12 >> 1)
        {
          sub_2166F4258();
        }

        *(v28 + 16) = v13 + 1;
        v14 = v28 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        v15 = 1 << *(a1 + 32);
        if (v5 >= v15)
        {
          goto LABEL_25;
        }

        v7 = a1 + 64;
        v16 = *(a1 + 64 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v27)
        {
          goto LABEL_27;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
          v18 = v24;
        }

        else
        {
          v19 = v8 << 6;
          v20 = v8 + 1;
          v18 = v24;
          v21 = (a1 + 72 + 8 * v8);
          while (v20 < (v15 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              sub_2166F42E8(v5, v27, v25 & 1);
              v15 = __clz(__rbit64(v22)) + v19;
              goto LABEL_18;
            }
          }

          sub_2166F42E8(v5, v27, v25 & 1);
        }

LABEL_18:
        v6 = v26 + 1;
        if (v26 + 1 == v18)
        {
          return;
        }

        v4 = 0;
        v3 = *(a1 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

void sub_216A961E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v28 = MEMORY[0x277D84F90];
    sub_216AB9954();
    v5 = sub_2166F42AC();
    v6 = 0;
    v7 = v2 + 56;
    v22 = v2 + 64;
    v23 = v1;
    v24 = v2 + 56;
    v25 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v27 = v4;
        v26 = v3;
        sub_21700DF14();
        v9 = sub_21700BA64();
        v11 = v10;
        v12 = *(v28 + 16);
        if (v12 >= *(v28 + 24) >> 1)
        {
          sub_216AB9954();
        }

        *(v28 + 16) = v12 + 1;
        v13 = v28 + 16 * v12;
        *(v13 + 32) = v9;
        *(v13 + 40) = v11;
        if (v27)
        {
          goto LABEL_29;
        }

        v7 = v24;
        v2 = v25;
        v14 = 1 << *(v25 + 32);
        if (v5 >= v14)
        {
          goto LABEL_26;
        }

        v15 = *(v24 + 8 * v8);
        if ((v15 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v25 + 36) != v26)
        {
          goto LABEL_28;
        }

        v16 = v15 & (-2 << (v5 & 0x3F));
        if (v16)
        {
          v14 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = v8 << 6;
          v18 = v8 + 1;
          v19 = (v22 + 8 * v8);
          while (v18 < (v14 + 63) >> 6)
          {
            v21 = *v19++;
            v20 = v21;
            v17 += 64;
            ++v18;
            if (v21)
            {
              sub_2166F42E8(v5, v26, 0);
              v14 = __clz(__rbit64(v20)) + v17;
              goto LABEL_19;
            }
          }

          sub_2166F42E8(v5, v26, 0);
        }

LABEL_19:
        if (++v6 == v23)
        {
          return;
        }

        v4 = 0;
        v3 = *(v25 + 36);
        v5 = v14;
        if (v14 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_216A9642C(uint64_t a1)
{
  v3 = _s7SectionVMa(0);
  v4 = OUTLINED_FUNCTION_2(v3);
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_116();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_2();
  v9 = sub_21700EA74();
  OUTLINED_FUNCTION_184_0(v9);
  OUTLINED_FUNCTION_49_19();
  sub_216ABE93C();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;
  sub_216ABEA38();

  v11 = OUTLINED_FUNCTION_9_46();
  sub_216888C34(v11, v12, v2, v13, v10);

  OUTLINED_FUNCTION_71_0();
  return sub_2166997CC(v14, v15, v16);
}

uint64_t sub_216A965B0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_55();
  sub_2166D9530(v0, v1, v2, v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20_0(v4);
  *v5 = v6;
  v5[1] = sub_216A96690;
  OUTLINED_FUNCTION_71_0();

  return MEMORY[0x282180360](v7);
}

uint64_t sub_216A96690()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_202_0();

    return v7();
  }

  else
  {
    v9 = *(v3 + 24);
    v10 = *(v5 + 8);

    return v10(v9);
  }
}

uint64_t sub_216A967B0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_202_0();

    return v7();
  }

  else
  {
    v9 = *(v3 + 24);
    if (*(v3 + 25))
    {
      v10 = 256;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v5 + 8);

    return v11(v10 | v9);
  }
}

uint64_t sub_216A968E4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1880, &qword_21703F500);
  v2[7] = swift_task_alloc();
  v3 = sub_217006FE4();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216A96A48, v1, 0);
}

uint64_t sub_216A96A48()
{
  v1 = v0;
  v2 = v0[9];
  v3 = v0[3];
  sub_2166C32C0();
  v4 = sub_21700E384();
  v5 = sub_21700E384();
  v6 = v3 + 64;
  OUTLINED_FUNCTION_187();
  v9 = v8 & v7;
  v11 = (63 - v10) >> 6;
  v78 = (v2 + 16);
  v79 = (v2 + 32);
  v77 = v2;
  v84 = v3;
  sub_21700DF14();
  v12 = 0;
  v82 = v3 + 64;
  v83 = v1;
  v81 = v11;
  while (2)
  {
    v80 = v4;
    v1[12] = v4;
    v13 = v12;
    while (1)
    {
      v1[13] = v5;
      if (!v9)
      {
        while (1)
        {
          v12 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
            goto LABEL_39;
          }

          if (v12 >= v11)
          {
            break;
          }

          v9 = *(v6 + 8 * v12);
          ++v13;
          if (v9)
          {
            goto LABEL_8;
          }
        }

        if (!v5[2])
        {

          OUTLINED_FUNCTION_237();

          __asm { BRAA            X2, X16 }
        }

        v64 = v1[5];
        v63 = v1[6];
        sub_21700EA44();
        v65 = sub_21700EA74();
        __swift_storeEnumTagSinglePayload(v63, 0, 1, v65);
        v66 = swift_allocObject();
        v66[2] = 0;
        v66[3] = 0;
        v66[4] = v5;
        v66[5] = v64;
        sub_21700DF14();
        v67 = OUTLINED_FUNCTION_9_46();
        v1[14] = sub_216888EB8(v67, v68, v63, v69, v66);
        sub_2166997CC(v63, &unk_27CABFAC0, &qword_21701B9F0);
        v70 = swift_task_alloc();
        v1[15] = v70;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA7E8, &qword_21703F520);
        *v70 = v1;
        v70[1] = sub_216A97058;
        OUTLINED_FUNCTION_237();

        return MEMORY[0x282200460]();
      }

      v12 = v13;
LABEL_8:
      v14 = v1[7];
      OUTLINED_FUNCTION_104_7();
      v16 = v15 | (v12 << 6);
      v17 = (*(v84 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = *(*(v84 + 56) + v16);
      sub_21700DF14();
      v21 = OUTLINED_FUNCTION_208_0();
      sub_216A97C48(v21, v22, v23);
      if (OUTLINED_FUNCTION_176_0(v14) != 1)
      {
        break;
      }

      sub_2166997CC(v1[7], &qword_27CAC1880, &qword_21703F500);
      swift_isUniquelyReferenced_nonNull_native();
      v24 = OUTLINED_FUNCTION_208_0();
      v26 = sub_216E69548(v24, v25);
      if (__OFADD__(v5[2], (v27 & 1) == 0))
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        return MEMORY[0x282200460]();
      }

      v28 = v26;
      v29 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1878, &qword_21703F4E8);
      if (sub_21700F554())
      {
        v30 = v18;
        v31 = OUTLINED_FUNCTION_208_0();
        v33 = sub_216E69548(v31, v32);
        v35 = v83;
        if ((v29 & 1) != (v34 & 1))
        {
          goto LABEL_35;
        }

        v28 = v33;
        if (v29)
        {
LABEL_16:

          *(v5[7] + v28) = v20;
          goto LABEL_17;
        }
      }

      else
      {
        v30 = v18;
        v35 = v83;
        if (v29)
        {
          goto LABEL_16;
        }
      }

      OUTLINED_FUNCTION_123_4(&v5[v28 >> 6]);
      v36 = (v5[6] + 16 * v28);
      *v36 = v30;
      v36[1] = v19;
      *(v5[7] + v28) = v20;
      v37 = v5[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_40;
      }

      v5[2] = v39;
LABEL_17:
      v13 = v12;
      v11 = v81;
      v6 = v82;
      v1 = v35;
    }

    v41 = v1[10];
    v40 = v1[11];
    v42 = v1[8];
    v76 = *v79;
    (*v79)(v40, v1[7], v42);
    (*v78)(v41, v40, v42);
    swift_isUniquelyReferenced_nonNull_native();
    v43 = OUTLINED_FUNCTION_208_0();
    sub_216E69548(v43, v44);
    OUTLINED_FUNCTION_146_2();
    if (__OFADD__(v47, v48))
    {
      goto LABEL_41;
    }

    v49 = v45;
    v50 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1888, &qword_21703F508);
    if ((sub_21700F554() & 1) == 0)
    {
      v51 = v18;
      v1 = v83;
LABEL_23:
      v56 = v1[8];
      if (v50)
      {
        v57 = v1[10];

        v4 = v80;
        (*(v77 + 40))(v80[7] + *(v77 + 72) * v49, v57, v56);
        OUTLINED_FUNCTION_225_0();
        v58();
      }

      else
      {
        v4 = v80;
        OUTLINED_FUNCTION_123_4(&v80[v49 >> 6]);
        v59 = (v80[6] + 16 * v49);
        *v59 = v51;
        v59[1] = v19;
        v76(v80[7] + *(v77 + 72) * v49);
        OUTLINED_FUNCTION_225_0();
        v60();
        v61 = v80[2];
        v38 = __OFADD__(v61, 1);
        v62 = v61 + 1;
        if (v38)
        {
          goto LABEL_42;
        }

        v80[2] = v62;
      }

      v11 = v81;
      v6 = v82;
      continue;
    }

    break;
  }

  v51 = v18;
  v52 = OUTLINED_FUNCTION_208_0();
  v54 = sub_216E69548(v52, v53);
  v1 = v83;
  if ((v50 & 1) == (v55 & 1))
  {
    v49 = v54;
    goto LABEL_23;
  }

LABEL_35:
  OUTLINED_FUNCTION_237();

  return sub_21700F824();
}

uint64_t sub_216A97058()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_28();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_216A97158, v2, 0);
}

uint64_t sub_216A97158()
{
  OUTLINED_FUNCTION_93();
  v1 = v0[4];
  v2 = sub_216A97844(v0[2], v0[12]);

  v3 = *(v1 + 128);
  v4 = v0[4];
  if (v3)
  {

    *(v4 + 112) = v2;
    sub_21700DF14();
  }

  else
  {

    sub_216A978C8(v2);
  }

  OUTLINED_FUNCTION_43_4();

  return v5(v2);
}

uint64_t sub_216A97258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1880, &qword_21703F500);
  v4[4] = swift_task_alloc();
  v5 = sub_217006FE4();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216A9735C, 0, 0);
}

void sub_216A9735C()
{
  v1 = v0[6];
  v2 = v0[2];
  sub_2166C32C0();
  sub_21700E384();
  v3 = v2 + 64;
  OUTLINED_FUNCTION_187();
  v6 = v5 & v4;
  v8 = (63 - v7) >> 6;
  v42 = (v1 + 32);
  v43 = v9;
  v41 = v1;
  v45 = v2;
  sub_21700DF14();
  v10 = 0;
  v44 = v2 + 64;
LABEL_2:
  v11 = v10;
  if (!v6)
  {
    goto LABEL_4;
  }

  do
  {
    v10 = v11;
LABEL_7:
    v12 = v0[5];
    v13 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v14 = (*(v45 + 48) + 16 * (v13 | (v10 << 6)));
    v16 = *v14;
    v15 = v14[1];
    sub_21700DF14();
    sub_216A97730(v16, v15);
    v17 = OUTLINED_FUNCTION_49_1();
    if (__swift_getEnumTagSinglePayload(v17, v18, v12) != 1)
    {
      v39 = *v42;
      v40 = v0;
      (*v42)(v0[8], v0[4], v0[5]);
      v20 = OUTLINED_FUNCTION_227();
      v21(v20);
      swift_isUniquelyReferenced_nonNull_native();
      sub_216E69548(v16, v15);
      OUTLINED_FUNCTION_146_2();
      if (__OFADD__(v24, v25))
      {
        __break(1u);
      }

      else
      {
        v26 = v22;
        v27 = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1888, &qword_21703F508);
        if (sub_21700F554())
        {
          v28 = sub_216E69548(v16, v15);
          if ((v27 & 1) != (v29 & 1))
          {
LABEL_23:

            sub_21700F824();
            return;
          }

          v26 = v28;
        }

        v30 = v40[5];
        if (v27)
        {
          v31 = v40[7];

          (*(v41 + 40))(v43[7] + *(v41 + 72) * v26, v31, v30);
          OUTLINED_FUNCTION_225_0();
          v32();
LABEL_18:
          v0 = v40;
          v3 = v44;
          goto LABEL_2;
        }

        OUTLINED_FUNCTION_123_4(&v43[v26 >> 6]);
        v33 = (v43[6] + 16 * v26);
        *v33 = v16;
        v33[1] = v15;
        v39(v43[7] + *(v41 + 72) * v26);
        OUTLINED_FUNCTION_225_0();
        v34();
        v35 = v43[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (!v36)
        {
          v43[2] = v37;
          goto LABEL_18;
        }
      }

      __break(1u);
      return;
    }

    v19 = v0[4];

    sub_2166997CC(v19, &qword_27CAC1880, &qword_21703F500);
    v11 = v10;
    v3 = v44;
  }

  while (v6);
  while (1)
  {
LABEL_4:
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v10 >= v8)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v11;
    if (v6)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_43_4();

  v38(v43);
}

uint64_t sub_216A97730(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() isMainThread];
  if (result)
  {
    __break(1u);
  }

  else
  {
    sub_217006FE4();
    sub_2170068F4();
    sub_2170068E4();
    v3 = MEMORY[0x277D2AB38];
    sub_2166C53B4(&qword_27CABDBF8, MEMORY[0x277D2AB38], MEMORY[0x277D2AB28]);
    sub_2166C53B4(&qword_27CAC18C0, v3, MEMORY[0x277D2AB58]);
    sub_2170068D4();
  }

  return result;
}

uint64_t sub_216A97844(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_216ABC524(a1, sub_216ABC4B4, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void sub_216A978C8(uint64_t a1)
{
  v43 = sub_217006FE4();
  v2 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1890, &qword_21703F528);
  MEMORY[0x28223BE20](v4 - 8);
  v40 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v33 - v7;
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v33[1] = v2 + 16;
  v41 = (v2 + 32);
  v36 = v2;
  v37 = a1;
  v39 = (v2 + 8);
  sub_21700DF14();
  v14 = 0;
  v34 = v9;
  v35 = v8;
  v38 = v13;
  if (v12)
  {
    while (1)
    {
      v15 = v14;
LABEL_10:
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v18 = v17 | (v15 << 6);
      v19 = v36;
      v20 = (*(v37 + 48) + 16 * v18);
      v21 = *v20;
      v22 = v20[1];
      v23 = v42;
      v24 = v43;
      (*(v36 + 16))(v42, *(v37 + 56) + *(v36 + 72) * v18, v43);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1898, &qword_21703F530);
      v26 = *(v25 + 48);
      v27 = v40;
      *v40 = v21;
      *(v27 + 1) = v22;
      v28 = v27;
      (*(v19 + 32))(&v27[v26], v23, v24);
      __swift_storeEnumTagSinglePayload(v28, 0, 1, v25);
      sub_21700DF14();
      v9 = v34;
      v8 = v35;
LABEL_11:
      sub_216ABE580();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1898, &qword_21703F530);
      if (__swift_getEnumTagSinglePayload(v8, 1, v29) == 1)
      {
        break;
      }

      v30 = v42;
      v31 = v43;
      (*v41)(v42, &v8[*(v29 + 48)], v43);
      sub_216AB7690();

      (*v39)(v30, v31);
      v13 = v38;
      if (!v12)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v16 = v40;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1898, &qword_21703F530);
        __swift_storeEnumTagSinglePayload(v16, 1, 1, v32);
        v12 = 0;
        goto LABEL_11;
      }

      v12 = *(v9 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_216A97C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(v3 + 128) == 1)
  {
    v7 = *(v3 + 112);
    if (*(v7 + 16))
    {
      sub_21700DF14();
      v8 = sub_216E69548(a1, a2);
      if (v9)
      {
        v10 = v8;
        v11 = *(v7 + 56);
        v12 = sub_217006FE4();
        (*(*(v12 - 8) + 16))(a3, v11 + *(*(v12 - 8) + 72) * v10, v12);
        v13 = a3;
        v14 = 0;
        v15 = v12;
      }

      else
      {
        v15 = sub_217006FE4();
        v13 = a3;
        v14 = 1;
      }

      __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
    }

    else
    {
      v17 = sub_217006FE4();

      return __swift_storeEnumTagSinglePayload(a3, 1, 1, v17);
    }
  }

  else
  {

    sub_216A97DC0(a1, a2);
  }
}

uint64_t sub_216A97E28()
{
  OUTLINED_FUNCTION_33();
  v1[5] = v2;
  v1[6] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1228, qword_21703D310);
  OUTLINED_FUNCTION_36(v3);
  v1[7] = swift_task_alloc();
  v4 = type metadata accessor for SocialBadgingMap(0);
  v1[8] = v4;
  OUTLINED_FUNCTION_36(v4);
  v1[9] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_216A97EE0()
{
  v11 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v3 = *(v0[6] + 48);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  swift_beginAccess();
  sub_216ABE890();
  os_unfair_lock_unlock(*(v3 + 16));

  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_2166997CC(v0[7], &qword_27CAC1228, qword_21703D310);

    OUTLINED_FUNCTION_43_4();

    return v5(0);
  }

  else
  {
    v7 = v0[5];
    OUTLINED_FUNCTION_138_4();
    sub_216ABEA38();
    memcpy(v10, v7, sizeof(v10));
    v0[10] = sub_216AB4FE4(v10);
    v8 = swift_task_alloc();
    v0[11] = v8;
    *v8 = v0;
    v8[1] = sub_216A980A4;
    v9 = OUTLINED_FUNCTION_170_0();

    return sub_216AB503C(v9);
  }
}

uint64_t sub_216A980A4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_28();
  *v4 = v3;
  *(v6 + 96) = v5;

  v7 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A981A4()
{
  OUTLINED_FUNCTION_33();
  v1 = sub_216AB406C(*(v0 + 96));
  OUTLINED_FUNCTION_27_30();
  sub_216ABE994();

  OUTLINED_FUNCTION_43_4();

  return v2(v1);
}

uint64_t sub_216A98228(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A98240()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_193_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_128_0(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_37_28();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_102_9(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A98338()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9841C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_102_9(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A984AC()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F5A0);
    swift_task_alloc();
    OUTLINED_FUNCTION_100_11();
    *(v4 + 72) = v17;
    *v17 = v18;
    v17[1] = sub_216A98628;
    OUTLINED_FUNCTION_47_8();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t sub_216A98628()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A98720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A98738()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A98830()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A98914()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A989A4()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F618);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A98B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A98B28()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A98C20()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A98D04()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A98D94()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F708);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A98F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A98F18()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A99010()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A990F4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A99184()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F720);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A992F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A99308()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A99400()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A994E4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A99574()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703FB98);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A996E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A996F8()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A997F0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A998D4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A99964()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703FBA8);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A99AD0(__int16 a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 80) = a1;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A99AE8()
{
  OUTLINED_FUNCTION_31();
  if (sub_21669DAC4())
  {
    v1 = swift_task_alloc();
    *(v0 + 32) = v1;
    *v1 = v0;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_148_1();
    OUTLINED_FUNCTION_206();
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_88_9(v3);
    *v4 = v5;
    v13 = OUTLINED_FUNCTION_23_32(v4, v6, v7, v8, v9, v10, v11, v12, v14, v15);

    return v13();
  }
}

uint64_t sub_216A99BEC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A99CD0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_148_1();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_88_9(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A99D60()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 56) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_233();
    OUTLINED_FUNCTION_47_8();
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703FA88);
    swift_task_alloc();
    OUTLINED_FUNCTION_100_11();
    *(v4 + 64) = v16;
    *v16 = v17;
    v16[1] = sub_216A99EE4;
    OUTLINED_FUNCTION_47_8();
  }

  return v10(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216A99EE4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_45_20();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 82) = v1 & 1;
  }

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216A99FEC()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_43_4();
  v2 = *(v0 + 82);

  return v1(v2);
}

uint64_t sub_216A9A04C()
{
  OUTLINED_FUNCTION_33();

  v0 = OUTLINED_FUNCTION_95_11();

  return v1(v0);
}

uint64_t sub_216A9A0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9A0C0()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9A1B8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9A29C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9A32C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703FB10);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A9A498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9A4B0()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9A5A8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9A68C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9A71C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703FB28);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A9A888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9A8A0()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9A998()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9AA7C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9AB0C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703FA68);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_98_12(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_14_42(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A9AC78()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_45_20();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216A9AD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9AD98()
{
  OUTLINED_FUNCTION_31();
  if (sub_21669DAC4())
  {
    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_102_9(v1);
    *v2 = v3;
    OUTLINED_FUNCTION_99_0(v2);

    return sub_216A4F6C8();
  }

  else
  {
    v0[8] = *(v0[6] + 40);
    OUTLINED_FUNCTION_206();
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v13 = OUTLINED_FUNCTION_23_32(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15);

    return v13();
  }
}

uint64_t sub_216A9AEA4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9AF88()
{
  OUTLINED_FUNCTION_31();
  v0[8] = *(v0[6] + 40);
  OUTLINED_FUNCTION_206();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v9 = OUTLINED_FUNCTION_23_32(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);

  return v9();
}

uint64_t sub_216A9B024()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 80) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F9B0);
    swift_task_alloc();
    OUTLINED_FUNCTION_100_11();
    *(v4 + 88) = v17;
    *v17 = v18;
    v17[1] = sub_216A9B1A4;
    OUTLINED_FUNCTION_47_8();

    return v23(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t sub_216A9B1A4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A9B29C()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216A9B2F4()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A9B350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9B368()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9B460()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9B544()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9B5D4()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F990);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A9B740()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A9B838()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A9B894(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9B8AC()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_193_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_128_0(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_37_28();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_102_9(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9B9A4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9BA88()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_102_9(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9BB18()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F7C0);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_133_1(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_17_43(v18);
    OUTLINED_FUNCTION_47_8();

    return v22(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A9BC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9BC9C()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9BD94()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9BE78()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9BF08()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703FA48);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A9C074(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 88) = a2;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9C090()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_193_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_128_0(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_37_28();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_102_9(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9C188()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9C26C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_102_9(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9C2FC()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F920);
    swift_task_alloc();
    OUTLINED_FUNCTION_100_11();
    *(v4 + 72) = v17;
    *v17 = v18;
    OUTLINED_FUNCTION_124_6(v17);
    OUTLINED_FUNCTION_47_8();

    return v22(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t sub_216A9C46C(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 88) = a2;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9C488()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_193_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_128_0(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_37_28();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_102_9(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9C580()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9C664()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_102_9(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9C6F4()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F880);
    swift_task_alloc();
    OUTLINED_FUNCTION_100_11();
    *(v4 + 72) = v17;
    *v17 = v18;
    OUTLINED_FUNCTION_124_6(v17);
    OUTLINED_FUNCTION_47_8();

    return v22(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t sub_216A9C864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9C87C()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9C974()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9CA58()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9CAE8()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F788);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A9CC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9CC6C()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9CD64()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9CE48()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9CED8()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703FBE8);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A9D044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9D05C()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9D154()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9D238()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9D2C8()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F9E8);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_98_12(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_14_42(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A9D434()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_45_20();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216A9D538()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_43_4();
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_216A9D598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9D5B0()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9D6A8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9D78C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9D81C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F9C0);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A9D988()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9DA6C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9DAFC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_45_20();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216A9DC00()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_43_4();

  return v2(v1 & 0x1010101);
}

uint64_t sub_216A9DC64(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9DC7C()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_193_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_128_0(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_37_28();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_102_9(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9DD74()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9DE58()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_102_9(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9DEE8()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F818);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_133_1(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_17_43(v18);
    OUTLINED_FUNCTION_47_8();

    return v22(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A9E054()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_45_20();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 80) = v0;

  if (!v0)
  {
    *(v4 + 88) = v1;
  }

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216A9E158(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 96) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9E174()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9E26C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9E350()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9E3E0()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703FA18);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_98_12(v17);
    *v18 = v19;
    v18[1] = sub_216A9E56C;
    OUTLINED_FUNCTION_47_8();

    return v24(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A9E56C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_45_20();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 97) = v1;
  }

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216A9E670()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_43_4();
  v2 = *(v0 + 97);

  return v1(v2);
}

uint64_t sub_216A9E6D0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9E7B4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9E844(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_216A9E868, 0, 0);
}

uint64_t sub_216A9E868()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_193_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_128_0(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_37_28();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_102_9(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9E960()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9EA44()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_102_9(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9EAD4()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F4B0);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_133_1(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_17_43(v18);
    OUTLINED_FUNCTION_47_8();

    return v22(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A9EC40()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_69_0();
  v5 = v4;
  OUTLINED_FUNCTION_26_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_28();
  *v8 = v7;
  *(v5 + 80) = v0;

  if (!v0)
  {
    *(v5 + 88) = v3;
  }

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_216A9ED48()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_43_4();
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_216A9EDA8()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A9EE04(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9EE1C()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_193_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_128_0(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_37_28();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_102_9(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9EF14()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9EFF8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_102_9(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9F088()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F9D8);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_133_1(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_17_43(v18);
    OUTLINED_FUNCTION_47_8();

    return v22(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A9F1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9F20C()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9F304()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9F3E8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9F478()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703FA78);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_98_12(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_14_42(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A9F5E4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_45_20();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216A9F6E8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9F700()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_193_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_128_0(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_37_28();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_102_9(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9F7F8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9F8DC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_102_9(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9F96C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F828);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_133_1(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_17_43(v18);
    OUTLINED_FUNCTION_47_8();

    return v22(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A9FAD8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9FAF0()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_193_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_128_0(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_37_28();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_102_9(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9FBE8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9FCCC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_102_9(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9FD5C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703FA08);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_133_1(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_17_43(v18);
    OUTLINED_FUNCTION_47_8();

    return v22(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A9FEC8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_45_20();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 80) = v0;

  if (!v0)
  {
    *(v4 + 88) = v1;
  }

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216A9FFCC()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_43_4();
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_216AA002C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216AA0044()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216AA013C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216AA0220()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216AA02B0()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F9F8);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_98_12(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_14_42(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216AA041C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216AA0438()
{
  OUTLINED_FUNCTION_31();
  if (sub_21669DAC4())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_75_11(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_145_3();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_207_0(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216AA0538()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216AA061C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_145_3();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_207_0(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216AA06AC()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F808);
    v17 = swift_task_alloc();
    *(v4 + 96) = v17;
    *v17 = v6;
    v17[1] = sub_216AA082C;
    OUTLINED_FUNCTION_36_24();
    OUTLINED_FUNCTION_47_8();

    return v23(v18, v19, v20, v21, v22, v23, v24, v25);
  }
}

uint64_t sub_216AA082C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_69_0();
  v7 = v6;
  OUTLINED_FUNCTION_26_0();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_28();
  *v10 = v9;
  v7[13] = v0;

  if (!v0)
  {
    v7[14] = v3;
    v7[15] = v5;
  }

  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_47_8();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_216AA093C()
{
  OUTLINED_FUNCTION_33();

  v1 = v0[1];
  v3 = v0[14];
  v2 = v0[15];

  return v1(v2, v3);
}

uint64_t sub_216AA09A0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216AA09B8()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_193_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_128_0(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_37_28();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_102_9(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216AA0AB0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216AA0B94()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_102_9(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216AA0C24()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703FA28);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_133_1(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_17_43(v18);
    OUTLINED_FUNCTION_47_8();

    return v22(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216AA0D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216AA0DA8()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216AA0EA0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216AA0F84()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216AA1014()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F760);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216AA1180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216AA1198()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216AA1290()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216AA1374()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216AA1404()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F748);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216AA1570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216AA1588()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216AA1680()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216AA1764()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216AA17F4()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_233();
    OUTLINED_FUNCTION_47_8();

    return v10(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703FA38);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_98_12(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_14_42(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216AA1960()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_69_0();
  v9 = v8;
  OUTLINED_FUNCTION_26_0();
  *v10 = v9;
  v11 = *v1;
  OUTLINED_FUNCTION_28();
  *v12 = v11;
  *(v9 + 88) = v0;

  if (!v0)
  {
    *(v9 + 96) = v3;
    *(v9 + 104) = v5;
    *(v9 + 112) = v7 & 1;
  }

  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_12_7();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_216AA1A7C()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_220_0();
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);

  return v1(v2, v3, v4);
}

uint64_t sub_216AA1AE0()
{
  OUTLINED_FUNCTION_33();

  v0 = OUTLINED_FUNCTION_95_11();

  return v1(v0);
}

uint64_t sub_216AA1B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216AA1B54()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216AA1C4C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216AA1D30()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216AA1DC0()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F7A0);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216AA1F2C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216AA1F44()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_193_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_128_0(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_37_28();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_102_9(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216AA203C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216AA2120()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_102_9(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216AA21B0()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703FB40);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_133_1(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_17_43(v18);
    OUTLINED_FUNCTION_47_8();

    return v22(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216AA231C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_69_0();
  v11 = v10;
  OUTLINED_FUNCTION_26_0();
  *v12 = v11;
  v13 = *v5;
  OUTLINED_FUNCTION_28();
  *v14 = v13;
  v11[10] = v4;

  if (!v4)
  {
    v11[11] = a4;
    v11[12] = a3;
    v11[13] = a2;
    v11[14] = a1;
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_216AA244C()
{
  OUTLINED_FUNCTION_33();

  v1 = v0[1];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];

  return v1(v2, v3, v4, v5);
}

uint64_t sub_216AA24B4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216AA24C8()
{
  OUTLINED_FUNCTION_31();
  if (sub_21669DAC4())
  {
    v1 = swift_task_alloc();
    *(v0 + 32) = v1;
    *v1 = v0;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_148_1();
    OUTLINED_FUNCTION_206();
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_88_9(v3);
    *v4 = v5;
    v13 = OUTLINED_FUNCTION_23_32(v4, v6, v7, v8, v9, v10, v11, v12, v14, v15);

    return v13();
  }
}

uint64_t sub_216AA25CC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216AA26B0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_148_1();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_88_9(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216AA2740()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 56) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F7E0);
    v16 = swift_task_alloc();
    *(v4 + 64) = v16;
    *v16 = v6;
    v16[1] = sub_216AA28B8;
    OUTLINED_FUNCTION_36_24();
    OUTLINED_FUNCTION_47_8();
  }

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216AA28B8()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_69_0();
  v9 = v8;
  OUTLINED_FUNCTION_26_0();
  *v10 = v9;
  v11 = *v1;
  OUTLINED_FUNCTION_28();
  *v12 = v11;
  v9[9] = v0;

  if (!v0)
  {
    v9[10] = v3;
    v9[11] = v5;
    v9[12] = v7;
  }

  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_12_7();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_216AA29D0()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_220_0();
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  return v1(v2, v3, v4);
}

uint64_t sub_216AA2A34()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216AA2A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216AA2AA8()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216AA2BA0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216AA2C84()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216AA2D14()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703FA58);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_98_12(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_14_42(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216AA2E80()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216AA2F64()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_145_3();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_207_0(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216AA2FF4(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 88) = a2;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216AA3010()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_193_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_128_0(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_37_28();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_102_9(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216AA3108()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216AA31EC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_102_9(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216AA327C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F588);
    swift_task_alloc();
    OUTLINED_FUNCTION_100_11();
    *(v4 + 72) = v17;
    *v17 = v18;
    OUTLINED_FUNCTION_124_6(v17);
    OUTLINED_FUNCTION_47_8();

    return v22(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t sub_216AA33EC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216AA34E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216AA34FC()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216AA35F4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216AA36D8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216AA3768()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703FB68);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216AA38D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216AA38EC()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216AA39E4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216AA3AC8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216AA3B58()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703FB80);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216AA3CC4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_21700D2F4();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = sub_21700CF34();
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216AA3EC0, 0, 0);
}

uint64_t sub_216AA3EC0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_44_18();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_43_23();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_141_3(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AA3F70()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_196_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AA41C8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216AA42DC()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  if (qword_27CAB6170 != -1)
  {
    OUTLINED_FUNCTION_7_65(&qword_27CAB6170);
  }

  v0 = OUTLINED_FUNCTION_253_0();
  __swift_project_value_buffer(v0, qword_27CB22AE0);
  v1 = OUTLINED_FUNCTION_70_0();
  v2 = sub_217007C84();
  sub_21700ED84();
  OUTLINED_FUNCTION_180_0();
  if (OUTLINED_FUNCTION_179())
  {
    OUTLINED_FUNCTION_96();
    v3 = OUTLINED_FUNCTION_203();
    OUTLINED_FUNCTION_178_0(5.8381e-34);
    v4 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_118(v4);
    OUTLINED_FUNCTION_51_9(&dword_216679000, v5, v6, "Failed to bootstrap JavaScript stack: %{public}@");
    sub_2166997CC(v3, &qword_27CABF880, &unk_21701D6E0);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_56_1();
  }

  OUTLINED_FUNCTION_190_0();
  OUTLINED_FUNCTION_177_1();
  os_unfair_lock_lock(v2);
  OUTLINED_FUNCTION_99_10();

  swift_willThrow();

  OUTLINED_FUNCTION_72_14();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47_8();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_216AA4430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_47_20();

  v13 = OUTLINED_FUNCTION_226();
  v12(v13);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_7_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_216AA44CC()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_81_8();

  v1 = OUTLINED_FUNCTION_115();
  v0(v1);
  OUTLINED_FUNCTION_72_14();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_7();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_216AA4568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_21700D2F4();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_21700CF34();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216AA4764, 0, 0);
}

uint64_t sub_216AA4764()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_34_23();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_35_26();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_105_8(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AA4814()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_169_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AA4A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_21700D2F4();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_21700CF34();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216AA4C80, 0, 0);
}

uint64_t sub_216AA4C80()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_34_23();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_35_26();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_105_8(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AA4D30()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_169_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AA4FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_21700D2F4();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_21700CF34();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216AA519C, 0, 0);
}

uint64_t sub_216AA519C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_34_23();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_35_26();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_105_8(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AA524C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_169_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AA54BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_21700D2F4();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_21700CF34();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216AA56B8, 0, 0);
}

uint64_t sub_216AA56B8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_34_23();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_35_26();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_105_8(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AA5768()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_169_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AA59F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_21700D2F4();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_21700CF34();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216AA5BEC, 0, 0);
}

uint64_t sub_216AA5BEC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_34_23();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_35_26();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_105_8(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AA5C9C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_169_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AA5F24(__int16 a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  *(v3 + 32) = v5;
  *(v3 + 40) = *(v5 - 8);
  *(v3 + 48) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  *(v3 + 56) = v6;
  *(v3 + 64) = *(v6 - 8);
  *(v3 + 72) = swift_task_alloc();
  v7 = sub_21700D2F4();
  *(v3 + 80) = v7;
  *(v3 + 88) = *(v7 - 8);
  *(v3 + 96) = swift_task_alloc();
  v8 = sub_21700CF34();
  *(v3 + 104) = v8;
  *(v3 + 112) = *(v8 - 8);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 216) = a1 & 1;
  *(v3 + 217) = HIBYTE(a1) & 1;

  return MEMORY[0x2822009F8](sub_216AA6130, 0, 0);
}

uint64_t sub_216AA6130()
{
  OUTLINED_FUNCTION_31();
  v2 = *(v1[3] + 40);
  v1[17] = v2;
  OUTLINED_FUNCTION_162_0();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_79_15();
  v1[18] = v0;
  OUTLINED_FUNCTION_161_0();
  os_unfair_lock_unlock(v2);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v14 = v3;
  v4 = swift_task_alloc();
  v1[19] = v4;
  *v4 = v1;
  v12 = OUTLINED_FUNCTION_12_45(v4, v5, v6, v7, v8, v9, v10, v11, v14);

  return v12();
}

uint64_t sub_216AA61F8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 160) = v4;
  *(v2 + 168) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_216AA64AC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 208) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AA65C4()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  if (qword_27CAB6170 != -1)
  {
    OUTLINED_FUNCTION_7_65(&qword_27CAB6170);
  }

  v0 = sub_217007CA4();
  __swift_project_value_buffer(v0, qword_27CB22AE0);
  v1 = OUTLINED_FUNCTION_70_0();
  v2 = sub_217007C84();
  sub_21700ED84();
  OUTLINED_FUNCTION_180_0();
  if (OUTLINED_FUNCTION_179())
  {
    OUTLINED_FUNCTION_96();
    v3 = OUTLINED_FUNCTION_203();
    OUTLINED_FUNCTION_178_0(5.8381e-34);
    v4 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_118(v4);
    OUTLINED_FUNCTION_51_9(&dword_216679000, v5, v6, "Failed to bootstrap JavaScript stack: %{public}@");
    sub_2166997CC(v3, &qword_27CABF880, &unk_21701D6E0);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_56_1();
  }

  OUTLINED_FUNCTION_177_1();
  os_unfair_lock_lock(v2);
  OUTLINED_FUNCTION_99_10();

  swift_willThrow();

  OUTLINED_FUNCTION_243_0();

  OUTLINED_FUNCTION_95_11();
  OUTLINED_FUNCTION_47_8();

  return v9(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_216AA672C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  v13 = *(v12 + 176);
  v24 = *(v12 + 48);

  v14 = OUTLINED_FUNCTION_226();
  v13(v14);

  OUTLINED_FUNCTION_58_14();
  OUTLINED_FUNCTION_7_3();

  return v17(v15, v16, v17, v18, v19, v20, v21, v22, v24, a10, a11, a12);
}

uint64_t sub_216AA67F0()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v1 = *(v0 + 176);

  v2 = OUTLINED_FUNCTION_115();
  v1(v2);
  OUTLINED_FUNCTION_243_0();

  OUTLINED_FUNCTION_95_11();
  OUTLINED_FUNCTION_12_7();

  return v5(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_216AA68A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_21700D2F4();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_21700CF34();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216AA6AA0, 0, 0);
}

uint64_t sub_216AA6AA0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_34_23();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_35_26();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_105_8(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AA6B50()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_169_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AA6DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_21700D2F4();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_21700CF34();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216AA6FBC, 0, 0);
}

uint64_t sub_216AA6FBC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_34_23();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_35_26();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_105_8(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AA706C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_169_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AA72DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v4[6] = v7;
  v4[7] = *(v7 - 8);
  v4[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v4[9] = v8;
  v4[10] = *(v8 - 8);
  v4[11] = swift_task_alloc();
  v9 = sub_21700D2F4();
  v4[12] = v9;
  v4[13] = *(v9 - 8);
  v4[14] = swift_task_alloc();
  v10 = sub_21700CF34();
  v4[15] = v10;
  v4[16] = *(v10 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[2] = a1;
  v4[3] = a2;

  return MEMORY[0x2822009F8](sub_216AA74E8, 0, 0);
}

uint64_t sub_216AA74E8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_34_23();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_35_26();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_105_8(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AA7598()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_169_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AA77F4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 224) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AA790C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[4] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v5[7] = v8;
  v5[8] = *(v8 - 8);
  v5[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v5[10] = v9;
  v5[11] = *(v9 - 8);
  v5[12] = swift_task_alloc();
  v10 = sub_21700D2F4();
  v5[13] = v10;
  v5[14] = *(v10 - 8);
  v5[15] = swift_task_alloc();
  v11 = sub_21700CF34();
  v5[16] = v11;
  v5[17] = *(v11 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[2] = a2;
  v5[3] = a3;

  return MEMORY[0x2822009F8](sub_216AA7B1C, 0, 0);
}

uint64_t sub_216AA7B1C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_154_0();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_79_15();
  *(v2 + 168) = v0;
  OUTLINED_FUNCTION_161_0();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v14 = v3;
  v4 = swift_task_alloc();
  *(v2 + 176) = v4;
  *v4 = v2;
  v12 = OUTLINED_FUNCTION_12_45(v4, v5, v6, v7, v8, v9, v10, v11, v14);

  return v12();
}

uint64_t sub_216AA7BD8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 184) = v4;
  *(v2 + 192) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_216AA7E54()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 232) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AA7F6C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  if (qword_27CAB6170 != -1)
  {
    OUTLINED_FUNCTION_7_65(&qword_27CAB6170);
  }

  v0 = sub_217007CA4();
  __swift_project_value_buffer(v0, qword_27CB22AE0);
  v1 = OUTLINED_FUNCTION_70_0();
  v2 = sub_217007C84();
  sub_21700ED84();
  OUTLINED_FUNCTION_180_0();
  if (OUTLINED_FUNCTION_179())
  {
    OUTLINED_FUNCTION_96();
    v3 = OUTLINED_FUNCTION_203();
    OUTLINED_FUNCTION_178_0(5.8381e-34);
    v4 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_118(v4);
    OUTLINED_FUNCTION_51_9(&dword_216679000, v5, v6, "Failed to bootstrap JavaScript stack: %{public}@");
    sub_2166997CC(v3, &qword_27CABF880, &unk_21701D6E0);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_56_1();
  }

  OUTLINED_FUNCTION_215_0();
  OUTLINED_FUNCTION_177_1();
  os_unfair_lock_lock(v2);
  OUTLINED_FUNCTION_99_10();

  swift_willThrow();

  OUTLINED_FUNCTION_111_7();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47_8();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_216AA80C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_76_11();

  v13 = OUTLINED_FUNCTION_226();
  v12(v13);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_7_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_216AA8164()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_131_2();

  v1 = OUTLINED_FUNCTION_115();
  v0(v1);
  OUTLINED_FUNCTION_111_7();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_7();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_216AA8200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_21700D2F4();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_21700CF34();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216AA83FC, 0, 0);
}

uint64_t sub_216AA83FC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_34_23();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_35_26();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_105_8(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AA84AC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_169_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AA8734()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216AA8848()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  if (qword_27CAB6170 != -1)
  {
    OUTLINED_FUNCTION_7_65(&qword_27CAB6170);
  }

  v0 = OUTLINED_FUNCTION_251_0();
  __swift_project_value_buffer(v0, qword_27CB22AE0);
  v1 = OUTLINED_FUNCTION_70_0();
  v2 = sub_217007C84();
  sub_21700ED84();
  OUTLINED_FUNCTION_180_0();
  if (OUTLINED_FUNCTION_179())
  {
    OUTLINED_FUNCTION_96();
    v3 = OUTLINED_FUNCTION_203();
    OUTLINED_FUNCTION_178_0(5.8381e-34);
    v4 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_118(v4);
    OUTLINED_FUNCTION_51_9(&dword_216679000, v5, v6, "Failed to bootstrap JavaScript stack: %{public}@");
    sub_2166997CC(v3, &qword_27CABF880, &unk_21701D6E0);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_56_1();
  }

  OUTLINED_FUNCTION_186_0();
  OUTLINED_FUNCTION_177_1();
  os_unfair_lock_lock(v2);
  OUTLINED_FUNCTION_99_10();

  swift_willThrow();

  OUTLINED_FUNCTION_71_12();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47_8();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_216AA899C()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_80_11();

  v1 = OUTLINED_FUNCTION_115();
  v0(v1);
  OUTLINED_FUNCTION_71_12();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_7();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_216AA8A38(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_21700D2F4();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = sub_21700CF34();
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216AA8C34, 0, 0);
}

uint64_t sub_216AA8C34()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_44_18();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_43_23();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_141_3(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AA8CE4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_196_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AA8F74()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216AA9088(uint64_t a1, const void *a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[13] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();
  v8 = sub_21700D2F4();
  v4[22] = v8;
  v4[23] = *(v8 - 8);
  v4[24] = swift_task_alloc();
  v9 = sub_21700CF34();
  v4[25] = v9;
  v4[26] = *(v9 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  memcpy(v4 + 2, a2, 0x58uLL);

  return MEMORY[0x2822009F8](sub_216AA9298, 0, 0);
}

uint64_t sub_216AA9298()
{
  OUTLINED_FUNCTION_31();
  v2 = *(v1[15] + 40);
  v1[29] = v2;
  OUTLINED_FUNCTION_162_0();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_79_15();
  v1[30] = v0;
  OUTLINED_FUNCTION_161_0();
  os_unfair_lock_unlock(v2);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v14 = v3;
  v4 = swift_task_alloc();
  v1[31] = v4;
  *v4 = v1;
  v12 = OUTLINED_FUNCTION_12_45(v4, v5, v6, v7, v8, v9, v10, v11, v14);

  return v12();
}

uint64_t sub_216AA9360()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 256) = v4;
  *(v2 + 264) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_216AA9610()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 304) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AA9728()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  if (qword_27CAB6170 != -1)
  {
    OUTLINED_FUNCTION_7_65(&qword_27CAB6170);
  }

  v0 = sub_217007CA4();
  __swift_project_value_buffer(v0, qword_27CB22AE0);
  v1 = OUTLINED_FUNCTION_70_0();
  v2 = sub_217007C84();
  sub_21700ED84();
  OUTLINED_FUNCTION_180_0();
  if (OUTLINED_FUNCTION_179())
  {
    OUTLINED_FUNCTION_96();
    v3 = OUTLINED_FUNCTION_203();
    OUTLINED_FUNCTION_178_0(5.8381e-34);
    v4 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_118(v4);
    OUTLINED_FUNCTION_51_9(&dword_216679000, v5, v6, "Failed to bootstrap JavaScript stack: %{public}@");
    sub_2166997CC(v3, &qword_27CABF880, &unk_21701D6E0);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_56_1();
  }

  OUTLINED_FUNCTION_177_1();
  os_unfair_lock_lock(v2);
  OUTLINED_FUNCTION_99_10();

  swift_willThrow();

  OUTLINED_FUNCTION_240_0();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47_8();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_216AA9890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  v13 = *(v12 + 272);
  v24 = *(v12 + 144);

  v14 = OUTLINED_FUNCTION_226();
  v13(v14);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_7_3();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, v24, a10, a11, a12);
}

uint64_t sub_216AA9950()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v1 = *(v0 + 272);

  v2 = OUTLINED_FUNCTION_115();
  v1(v2);
  OUTLINED_FUNCTION_240_0();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_7();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_216AA9A04(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  *(v4 + 40) = v6;
  *(v4 + 48) = *(v6 - 8);
  *(v4 + 56) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  *(v4 + 64) = v7;
  *(v4 + 72) = *(v7 - 8);
  *(v4 + 80) = swift_task_alloc();
  v8 = sub_21700D2F4();
  *(v4 + 88) = v8;
  *(v4 + 96) = *(v8 - 8);
  *(v4 + 104) = swift_task_alloc();
  v9 = sub_21700CF34();
  *(v4 + 112) = v9;
  *(v4 + 120) = *(v9 - 8);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 224) = a2;

  return MEMORY[0x2822009F8](sub_216AA9C08, 0, 0);
}

uint64_t sub_216AA9C08()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_44_18();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_43_23();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_141_3(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AA9CB8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_196_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AA9F14()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AAA02C(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  *(v4 + 40) = v6;
  *(v4 + 48) = *(v6 - 8);
  *(v4 + 56) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  *(v4 + 64) = v7;
  *(v4 + 72) = *(v7 - 8);
  *(v4 + 80) = swift_task_alloc();
  v8 = sub_21700D2F4();
  *(v4 + 88) = v8;
  *(v4 + 96) = *(v8 - 8);
  *(v4 + 104) = swift_task_alloc();
  v9 = sub_21700CF34();
  *(v4 + 112) = v9;
  *(v4 + 120) = *(v9 - 8);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 224) = a2;

  return MEMORY[0x2822009F8](sub_216AAA230, 0, 0);
}

uint64_t sub_216AAA230()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_44_18();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_43_23();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_141_3(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AAA2E0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_196_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AAA53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_21700D2F4();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_21700CF34();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216AAA738, 0, 0);
}

uint64_t sub_216AAA738()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_34_23();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_35_26();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_105_8(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AAA7E8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_169_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AAAA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_21700D2F4();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_21700CF34();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216AAAC54, 0, 0);
}

uint64_t sub_216AAAC54()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_34_23();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_35_26();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_105_8(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AAAD04()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_169_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AAAF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v4[6] = v7;
  v4[7] = *(v7 - 8);
  v4[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v4[9] = v8;
  v4[10] = *(v8 - 8);
  v4[11] = swift_task_alloc();
  v9 = sub_21700D2F4();
  v4[12] = v9;
  v4[13] = *(v9 - 8);
  v4[14] = swift_task_alloc();
  v10 = sub_21700CF34();
  v4[15] = v10;
  v4[16] = *(v10 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[2] = a1;
  v4[3] = a2;

  return MEMORY[0x2822009F8](sub_216AAB180, 0, 0);
}

uint64_t sub_216AAB180()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_34_23();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_35_26();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_105_8(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AAB230()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_169_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AAB48C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 224) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AAB5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_46_19();

  v13 = OUTLINED_FUNCTION_226();
  v12(v13);

  OUTLINED_FUNCTION_58_14();
  OUTLINED_FUNCTION_7_3();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_216AAB644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_21700D2F4();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_21700CF34();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216AAB840, 0, 0);
}

uint64_t sub_216AAB840()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_34_23();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_35_26();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_105_8(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AAB8F0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_169_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AABB60()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_169_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AABDBC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 224) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AABED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_46_19();

  v13 = OUTLINED_FUNCTION_226();
  v12(v13);

  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_7_3();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_216AABF8C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v3[8] = v6;
  v3[9] = *(v6 - 8);
  v3[10] = swift_task_alloc();
  v7 = sub_21700D2F4();
  v3[11] = v7;
  v3[12] = *(v7 - 8);
  v3[13] = swift_task_alloc();
  v8 = sub_21700CF34();
  v3[14] = v8;
  v3[15] = *(v8 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[2] = a1;

  return MEMORY[0x2822009F8](sub_216AAC18C, 0, 0);
}

uint64_t sub_216AAC18C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_44_18();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_43_23();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_141_3(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AAC23C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_196_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AAC498()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AAC5B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  *(v5 + 56) = v9;
  *(v5 + 64) = *(v9 - 8);
  *(v5 + 72) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  *(v5 + 80) = v10;
  *(v5 + 88) = *(v10 - 8);
  *(v5 + 96) = swift_task_alloc();
  v11 = sub_21700D2F4();
  *(v5 + 104) = v11;
  *(v5 + 112) = *(v11 - 8);
  *(v5 + 120) = swift_task_alloc();
  v12 = sub_21700CF34();
  *(v5 + 128) = v12;
  *(v5 + 136) = *(v12 - 8);
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3 & 1;

  return MEMORY[0x2822009F8](sub_216AAC7C8, 0, 0);
}

uint64_t sub_216AAC7C8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_154_0();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_79_15();
  *(v2 + 168) = v0;
  OUTLINED_FUNCTION_161_0();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v14 = v3;
  v4 = swift_task_alloc();
  *(v2 + 176) = v4;
  *v4 = v2;
  v12 = OUTLINED_FUNCTION_12_45(v4, v5, v6, v7, v8, v9, v10, v11, v14);

  return v12();
}

uint64_t sub_216AAC884()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 184) = v4;
  *(v2 + 192) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_216AACB00()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 232) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AACC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_76_11();

  v13 = OUTLINED_FUNCTION_226();
  v12(v13);

  OUTLINED_FUNCTION_58_14();
  OUTLINED_FUNCTION_7_3();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_216AACCB8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v3[9] = v6;
  v3[10] = *(v6 - 8);
  v3[11] = swift_task_alloc();
  v7 = sub_21700D2F4();
  v3[12] = v7;
  v3[13] = *(v7 - 8);
  v3[14] = swift_task_alloc();
  v8 = sub_21700CF34();
  v3[15] = v8;
  v3[16] = *(v8 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[3] = a1;

  return MEMORY[0x2822009F8](sub_216AACEB8, 0, 0);
}

uint64_t sub_216AACEB8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_34_23();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_35_26();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_105_8(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AACF68()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_169_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AAD1C8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 224) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AAD2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_46_19();

  v13 = OUTLINED_FUNCTION_226();
  v12(v13);

  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_7_3();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_216AAD388(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v3[8] = v6;
  v3[9] = *(v6 - 8);
  v3[10] = swift_task_alloc();
  v7 = sub_21700D2F4();
  v3[11] = v7;
  v3[12] = *(v7 - 8);
  v3[13] = swift_task_alloc();
  v8 = sub_21700CF34();
  v3[14] = v8;
  v3[15] = *(v8 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[2] = a1;

  return MEMORY[0x2822009F8](sub_216AAD588, 0, 0);
}

uint64_t sub_216AAD588()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_44_18();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_43_23();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_141_3(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AAD638()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_196_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AAD894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v4[6] = v7;
  v4[7] = *(v7 - 8);
  v4[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v4[9] = v8;
  v4[10] = *(v8 - 8);
  v4[11] = swift_task_alloc();
  v9 = sub_21700D2F4();
  v4[12] = v9;
  v4[13] = *(v9 - 8);
  v4[14] = swift_task_alloc();
  v10 = sub_21700CF34();
  v4[15] = v10;
  v4[16] = *(v10 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[2] = a1;
  v4[3] = a2;

  return MEMORY[0x2822009F8](sub_216AADAA0, 0, 0);
}

uint64_t sub_216AADAA0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_34_23();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_35_26();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_105_8(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AADB50()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_169_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AADDAC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v3[8] = v6;
  v3[9] = *(v6 - 8);
  v3[10] = swift_task_alloc();
  v7 = sub_21700D2F4();
  v3[11] = v7;
  v3[12] = *(v7 - 8);
  v3[13] = swift_task_alloc();
  v8 = sub_21700CF34();
  v3[14] = v8;
  v3[15] = *(v8 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[2] = a1;

  return MEMORY[0x2822009F8](sub_216AADFAC, 0, 0);
}

uint64_t sub_216AADFAC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_44_18();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_43_23();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_141_3(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AAE05C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_196_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AAE2B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v3[8] = v6;
  v3[9] = *(v6 - 8);
  v3[10] = swift_task_alloc();
  v7 = sub_21700D2F4();
  v3[11] = v7;
  v3[12] = *(v7 - 8);
  v3[13] = swift_task_alloc();
  v8 = sub_21700CF34();
  v3[14] = v8;
  v3[15] = *(v8 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[2] = a1;

  return MEMORY[0x2822009F8](sub_216AAE4B8, 0, 0);
}

uint64_t sub_216AAE4B8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_44_18();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_43_23();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_141_3(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AAE568()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_196_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AAE7C4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AAE8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_47_20();

  v13 = OUTLINED_FUNCTION_226();
  v12(v13);

  OUTLINED_FUNCTION_58_14();
  OUTLINED_FUNCTION_7_3();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_216AAE97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v4[6] = v7;
  v4[7] = *(v7 - 8);
  v4[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v4[9] = v8;
  v4[10] = *(v8 - 8);
  v4[11] = swift_task_alloc();
  v9 = sub_21700D2F4();
  v4[12] = v9;
  v4[13] = *(v9 - 8);
  v4[14] = swift_task_alloc();
  v10 = sub_21700CF34();
  v4[15] = v10;
  v4[16] = *(v10 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[2] = a1;
  v4[3] = a2;

  return MEMORY[0x2822009F8](sub_216AAEB88, 0, 0);
}

uint64_t sub_216AAEB88()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_34_23();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_35_26();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_105_8(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AAEC38()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_169_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AAEE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v6[10] = v11;
  v6[11] = *(v11 - 8);
  v6[12] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v6[13] = v12;
  v6[14] = *(v12 - 8);
  v6[15] = swift_task_alloc();
  v13 = sub_21700D2F4();
  v6[16] = v13;
  v6[17] = *(v13 - 8);
  v6[18] = swift_task_alloc();
  v14 = sub_21700CF34();
  v6[19] = v14;
  v6[20] = *(v14 - 8);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;

  return MEMORY[0x2822009F8](sub_216AAF0B4, 0, 0);
}

uint64_t sub_216AAF0B4()
{
  OUTLINED_FUNCTION_31();
  v2 = *(v1[9] + 40);
  v1[23] = v2;
  OUTLINED_FUNCTION_162_0();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_79_15();
  v1[24] = v0;
  OUTLINED_FUNCTION_161_0();
  os_unfair_lock_unlock(v2);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v14 = v3;
  v4 = swift_task_alloc();
  v1[25] = v4;
  *v4 = v1;
  v12 = OUTLINED_FUNCTION_12_45(v4, v5, v6, v7, v8, v9, v10, v11, v14);

  return v12();
}

uint64_t sub_216AAF17C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 208) = v4;
  *(v2 + 216) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_216AAF42C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 256) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AAF544()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  if (qword_27CAB6170 != -1)
  {
    OUTLINED_FUNCTION_7_65(&qword_27CAB6170);
  }

  v0 = sub_217007CA4();
  __swift_project_value_buffer(v0, qword_27CB22AE0);
  v1 = OUTLINED_FUNCTION_70_0();
  v2 = sub_217007C84();
  sub_21700ED84();
  OUTLINED_FUNCTION_180_0();
  if (OUTLINED_FUNCTION_179())
  {
    OUTLINED_FUNCTION_96();
    v3 = OUTLINED_FUNCTION_203();
    OUTLINED_FUNCTION_178_0(5.8381e-34);
    v4 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_118(v4);
    OUTLINED_FUNCTION_51_9(&dword_216679000, v5, v6, "Failed to bootstrap JavaScript stack: %{public}@");
    sub_2166997CC(v3, &qword_27CABF880, &unk_21701D6E0);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_56_1();
  }

  OUTLINED_FUNCTION_177_1();
  os_unfair_lock_lock(v2);
  OUTLINED_FUNCTION_99_10();

  swift_willThrow();

  OUTLINED_FUNCTION_247_0();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47_8();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_216AAF6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  v13 = *(v12 + 224);
  v24 = *(v12 + 96);

  v14 = OUTLINED_FUNCTION_226();
  v13(v14);

  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_7_3();

  return v18(v15, v16, v17, v18, v19, v20, v21, v22, v24, a10, a11, a12);
}

uint64_t sub_216AAF77C()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v1 = *(v0 + 224);

  v2 = OUTLINED_FUNCTION_115();
  v1(v2);
  OUTLINED_FUNCTION_247_0();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_7();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_216AAF830(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_21700D2F4();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = sub_21700CF34();
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216AAFA2C, 0, 0);
}

uint64_t sub_216AAFA2C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_44_18();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_43_23();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_141_3(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AAFADC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_196_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AAFD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_21700D2F4();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_21700CF34();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216AAFF80, 0, 0);
}

uint64_t sub_216AAFF80()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_34_23();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_35_26();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_105_8(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AB0030()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_169_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AB02A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_21700D2F4();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_21700CF34();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216AB049C, 0, 0);
}

uint64_t sub_216AB049C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_34_23();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_35_26();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_105_8(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AB054C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_169_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AB07BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v4[9] = v7;
  v4[10] = *(v7 - 8);
  v4[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v4[12] = v8;
  v4[13] = *(v8 - 8);
  v4[14] = swift_task_alloc();
  v9 = sub_21700D2F4();
  v4[15] = v9;
  v4[16] = *(v9 - 8);
  v4[17] = swift_task_alloc();
  v10 = sub_21700CF34();
  v4[18] = v10;
  v4[19] = *(v10 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[5] = a1;
  v4[6] = a2;

  return MEMORY[0x2822009F8](sub_216AB09C8, 0, 0);
}

uint64_t sub_216AB09C8()
{
  OUTLINED_FUNCTION_31();
  v2 = *(v1[8] + 40);
  v1[22] = v2;
  OUTLINED_FUNCTION_162_0();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_79_15();
  v1[23] = v0;
  OUTLINED_FUNCTION_161_0();
  os_unfair_lock_unlock(v2);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v14 = v3;
  v4 = swift_task_alloc();
  v1[24] = v4;
  *v4 = v1;
  v12 = OUTLINED_FUNCTION_12_45(v4, v5, v6, v7, v8, v9, v10, v11, v14);

  return v12();
}

uint64_t sub_216AB0A90()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 200) = v4;
  *(v2 + 208) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_216AB0D1C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 248) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AB0E34()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  if (qword_27CAB6170 != -1)
  {
    OUTLINED_FUNCTION_7_65(&qword_27CAB6170);
  }

  v0 = sub_217007CA4();
  __swift_project_value_buffer(v0, qword_27CB22AE0);
  v1 = OUTLINED_FUNCTION_70_0();
  v2 = sub_217007C84();
  sub_21700ED84();
  OUTLINED_FUNCTION_180_0();
  if (OUTLINED_FUNCTION_179())
  {
    OUTLINED_FUNCTION_96();
    v3 = OUTLINED_FUNCTION_203();
    OUTLINED_FUNCTION_178_0(5.8381e-34);
    v4 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_118(v4);
    OUTLINED_FUNCTION_51_9(&dword_216679000, v5, v6, "Failed to bootstrap JavaScript stack: %{public}@");
    sub_2166997CC(v3, &qword_27CABF880, &unk_21701D6E0);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_56_1();
  }

  OUTLINED_FUNCTION_177_1();
  os_unfair_lock_lock(v2);
  OUTLINED_FUNCTION_99_10();

  swift_willThrow();

  OUTLINED_FUNCTION_142_1();

  OUTLINED_FUNCTION_95_11();
  OUTLINED_FUNCTION_47_8();

  return v9(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_216AB0F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_164_0();

  v13 = OUTLINED_FUNCTION_226();
  v12(v13);

  OUTLINED_FUNCTION_220_0();
  OUTLINED_FUNCTION_7_3();

  return v18(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_216AB1050()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_205_1();

  v1 = OUTLINED_FUNCTION_115();
  v0(v1);
  OUTLINED_FUNCTION_142_1();

  OUTLINED_FUNCTION_95_11();
  OUTLINED_FUNCTION_12_7();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_216AB10EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_21700D2F4();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_21700CF34();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216AB12E8, 0, 0);
}

uint64_t sub_216AB12E8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_34_23();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_35_26();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_105_8(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AB1398()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_169_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AB1608(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v6 = sub_21700D2F4();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v7 = sub_21700CF34();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216AB1804, 0, 0);
}

uint64_t sub_216AB1804()
{
  OUTLINED_FUNCTION_31();
  v2 = *(v1[8] + 40);
  v1[22] = v2;
  OUTLINED_FUNCTION_162_0();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_79_15();
  v1[23] = v0;
  OUTLINED_FUNCTION_161_0();
  os_unfair_lock_unlock(v2);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v14 = v3;
  v4 = swift_task_alloc();
  v1[24] = v4;
  *v4 = v1;
  v12 = OUTLINED_FUNCTION_12_45(v4, v5, v6, v7, v8, v9, v10, v11, v14);

  return v12();
}

uint64_t sub_216AB18CC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 200) = v4;
  *(v2 + 208) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_216AB1B7C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 248) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AB1C94()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  if (qword_27CAB6170 != -1)
  {
    OUTLINED_FUNCTION_7_65(&qword_27CAB6170);
  }

  v0 = sub_217007CA4();
  __swift_project_value_buffer(v0, qword_27CB22AE0);
  v1 = OUTLINED_FUNCTION_70_0();
  v2 = sub_217007C84();
  sub_21700ED84();
  OUTLINED_FUNCTION_180_0();
  if (OUTLINED_FUNCTION_179())
  {
    OUTLINED_FUNCTION_96();
    v3 = OUTLINED_FUNCTION_203();
    OUTLINED_FUNCTION_178_0(5.8381e-34);
    v4 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_118(v4);
    OUTLINED_FUNCTION_51_9(&dword_216679000, v5, v6, "Failed to bootstrap JavaScript stack: %{public}@");
    sub_2166997CC(v3, &qword_27CABF880, &unk_21701D6E0);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_56_1();
  }

  OUTLINED_FUNCTION_177_1();
  os_unfair_lock_lock(v2);
  OUTLINED_FUNCTION_99_10();

  swift_willThrow();

  OUTLINED_FUNCTION_142_1();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47_8();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_216AB1DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_164_0();

  v13 = OUTLINED_FUNCTION_226();
  v12(v13);

  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_7_3();

  return v19(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_216AB1EB4()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_205_1();

  v1 = OUTLINED_FUNCTION_115();
  v0(v1);
  OUTLINED_FUNCTION_142_1();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_7();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_216AB1F50(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_21700D2F4();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v6 = sub_21700CF34();
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216AB2148, 0, 0);
}

uint64_t sub_216AB2148()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_154_0();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_79_15();
  *(v2 + 168) = v0;
  OUTLINED_FUNCTION_161_0();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v14 = v3;
  v4 = swift_task_alloc();
  *(v2 + 176) = v4;
  *v4 = v2;
  v12 = OUTLINED_FUNCTION_12_45(v4, v5, v6, v7, v8, v9, v10, v11, v14);

  return v12();
}

uint64_t sub_216AB2204()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 184) = v4;
  *(v2 + 192) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_216AB2480()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 232) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AB2598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_76_11();

  v13 = OUTLINED_FUNCTION_226();
  v12(v13);

  OUTLINED_FUNCTION_220_0();
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_7_3();

  return v18(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_216AB2648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v4[6] = v7;
  v4[7] = *(v7 - 8);
  v4[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v4[9] = v8;
  v4[10] = *(v8 - 8);
  v4[11] = swift_task_alloc();
  v9 = sub_21700D2F4();
  v4[12] = v9;
  v4[13] = *(v9 - 8);
  v4[14] = swift_task_alloc();
  v10 = sub_21700CF34();
  v4[15] = v10;
  v4[16] = *(v10 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[2] = a1;
  v4[3] = a2;

  return MEMORY[0x2822009F8](sub_216AB2854, 0, 0);
}

uint64_t sub_216AB2854()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_34_23();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_35_26();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_105_8(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AB2904()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_169_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AB2B60()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  if (qword_27CAB6170 != -1)
  {
    OUTLINED_FUNCTION_7_65(&qword_27CAB6170);
  }

  v0 = sub_217007CA4();
  __swift_project_value_buffer(v0, qword_27CB22AE0);
  v1 = OUTLINED_FUNCTION_70_0();
  v2 = sub_217007C84();
  sub_21700ED84();
  OUTLINED_FUNCTION_180_0();
  if (OUTLINED_FUNCTION_179())
  {
    OUTLINED_FUNCTION_96();
    v3 = OUTLINED_FUNCTION_203();
    OUTLINED_FUNCTION_178_0(5.8381e-34);
    v4 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_118(v4);
    OUTLINED_FUNCTION_51_9(&dword_216679000, v5, v6, "Failed to bootstrap JavaScript stack: %{public}@");
    sub_2166997CC(v3, &qword_27CABF880, &unk_21701D6E0);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_56_1();
  }

  OUTLINED_FUNCTION_177_1();
  os_unfair_lock_lock(v2);
  OUTLINED_FUNCTION_99_10();

  swift_willThrow();

  OUTLINED_FUNCTION_245();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47_8();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_216AB2CC8()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v1 = *(v0 + 208);

  v2 = OUTLINED_FUNCTION_115();
  v1(v2);
  OUTLINED_FUNCTION_245();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_7();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_216AB2D7C(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  *(v4 + 40) = v6;
  *(v4 + 48) = *(v6 - 8);
  *(v4 + 56) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  *(v4 + 64) = v7;
  *(v4 + 72) = *(v7 - 8);
  *(v4 + 80) = swift_task_alloc();
  v8 = sub_21700D2F4();
  *(v4 + 88) = v8;
  *(v4 + 96) = *(v8 - 8);
  *(v4 + 104) = swift_task_alloc();
  v9 = sub_21700CF34();
  *(v4 + 112) = v9;
  *(v4 + 120) = *(v9 - 8);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 224) = a2;

  return MEMORY[0x2822009F8](sub_216AB2F80, 0, 0);
}

uint64_t sub_216AB2F80()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_44_18();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_43_23();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_141_3(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AB3030()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_196_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AB328C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AB33A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_21700D2F4();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_21700CF34();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216AB35A0, 0, 0);
}

uint64_t sub_216AB35A0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_34_23();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_35_26();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_105_8(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AB3650()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_169_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216AB38C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_21700D2F4();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_21700CF34();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216AB3ABC, 0, 0);
}

uint64_t sub_216AB3ABC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_34_23();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_35_26();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_105_8(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_216AB3B6C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_169_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_216AB3DDC(void (*a1)(void))
{
  os_unfair_lock_lock(*(v1 + 16));
  a1();
  os_unfair_lock_unlock(*(v1 + 16));
}

char *sub_216AB406C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_216AB8D84(*(a1 + 16), 0, &qword_27CAC1BD8, &qword_21703FBD8, MEMORY[0x277D2AB38]);
  v4 = *(sub_217006FE4() - 8);
  v5 = sub_216ABD224(&v7, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, a1);
  sub_216687978(v7);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_216AB4158(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  sub_216AB8670(*(a1 + 16), 0);
  OUTLINED_FUNCTION_206_0();
  sub_216ABD4BC(v4, v5, v6, v7);
  OUTLINED_FUNCTION_183_0(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, v19, v20, v21, v22);
  if (a1 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v1;
}

void *sub_216AB41C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_182_0();
  v6 = sub_216AB8D84(v2, 0, v3, v4, v5);
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  OUTLINED_FUNCTION_36(Friends);
  OUTLINED_FUNCTION_236();
  sub_216ABD618();
  OUTLINED_FUNCTION_183_0(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, v19, v20, v21, v22);
  if (a1 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t sub_216AB428C(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  sub_216AB8670(*(a1 + 16), 0);
  OUTLINED_FUNCTION_206_0();
  sub_216ABD840(v4, v5, v6, v7);
  OUTLINED_FUNCTION_183_0(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, v19, v20, v21, v22);
  if (a1 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t sub_216AB42FC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216AB441C()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[10];
  v2 = v0[7];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);

    OUTLINED_FUNCTION_3();

    return v3();
  }

  else
  {
    (*(v0[8] + 32))(v0[9], v1, v2);
    if (swift_weakLoadStrong())
    {
      sub_216AB4624(v0[9]);
    }

    (*(v0[8] + 8))(v0[9], v0[7]);
    OUTLINED_FUNCTION_136_1();
    sub_2166C53B4(v5, v6, MEMORY[0x277CC9D70]);
    swift_task_alloc();
    OUTLINED_FUNCTION_52();
    v0[14] = v7;
    *v7 = v8;
    v9 = OUTLINED_FUNCTION_120_5(v7);

    return MEMORY[0x282200308](v9);
  }
}

uint64_t sub_216AB459C()
{
  OUTLINED_FUNCTION_33();
  *(v0 + 40) = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

void sub_216AB4624(uint64_t a1)
{
  v2 = sub_217005974();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v42[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1AA8, &unk_21703F8B0);
  MEMORY[0x28223BE20](v6);
  v48 = &v42[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1228, qword_21703D310);
  MEMORY[0x28223BE20](v8 - 8);
  v46 = &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v45 = &v42[-v11];
  MEMORY[0x28223BE20](v12);
  v47 = &v42[-v13];
  MEMORY[0x28223BE20](v14);
  v16 = &v42[-v15];
  MEMORY[0x28223BE20](v17);
  v19 = &v42[-v18];
  v20 = type metadata accessor for SocialBadgingMap(0);
  MEMORY[0x28223BE20](v20);
  v44 = &v42[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  if (!sub_217005964())
  {
    v51 = 0u;
    v52 = 0u;
    goto LABEL_8;
  }

  sub_216ABE83C();
  sub_21700F364();
  sub_216934FBC();

  sub_216788110(v50);
  if (!*(&v52 + 1))
  {
LABEL_8:
    sub_2166997CC(&v51, &unk_27CABF7A0, &unk_217014D20);
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
    goto LABEL_9;
  }

  v23 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v19, v23 ^ 1u, 1, v20);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) != 1)
  {
    sub_216ABEA38();
    sub_216ABE93C();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v20);
    v24 = *(v49 + 48);
    v25 = *(v24 + 16);

    os_unfair_lock_lock(v25);
    swift_beginAccess();
    v26 = v47;
    sub_216ABE890();
    os_unfair_lock_unlock(*(v24 + 16));

    v27 = *(v6 + 48);
    v28 = v48;
    sub_216ABE890();
    sub_216ABE890();
    if (__swift_getEnumTagSinglePayload(v28, 1, v20) == 1)
    {
      sub_2166997CC(v26, &qword_27CAC1228, qword_21703D310);
      sub_2166997CC(v16, &qword_27CAC1228, qword_21703D310);
      if (__swift_getEnumTagSinglePayload(v28 + v27, 1, v20) == 1)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v38 = v45;
      sub_216ABE890();
      if (__swift_getEnumTagSinglePayload(v28 + v27, 1, v20) != 1)
      {
        v40 = v44;
        sub_216ABEA38();
        if (*v38 == *v40 && v38[1] == v40[1])
        {
          sub_2166997CC(v26, &qword_27CAC1228, qword_21703D310);
          sub_2166997CC(v16, &qword_27CAC1228, qword_21703D310);
          sub_216ABE994();
          sub_216ABE994();
LABEL_25:
          sub_2166997CC(v28, &qword_27CAC1228, qword_21703D310);
          goto LABEL_26;
        }

        v43 = sub_21700F7D4();
        sub_2166997CC(v26, &qword_27CAC1228, qword_21703D310);
        sub_2166997CC(v16, &qword_27CAC1228, qword_21703D310);
        sub_216ABE994();
        sub_216ABE994();
        sub_2166997CC(v28, &qword_27CAC1228, qword_21703D310);
        if (v43)
        {
          goto LABEL_26;
        }

LABEL_17:
        v39 = v46;
        sub_216ABE93C();
        __swift_storeEnumTagSinglePayload(v39, 0, 1, v20);
        sub_216AB5F9C(v39);
LABEL_26:
        sub_216ABE994();
        return;
      }

      sub_2166997CC(v26, &qword_27CAC1228, qword_21703D310);
      sub_2166997CC(v16, &qword_27CAC1228, qword_21703D310);
      sub_216ABE994();
    }

    sub_2166997CC(v28, &qword_27CAC1AA8, &unk_21703F8B0);
    goto LABEL_17;
  }

LABEL_9:
  sub_2166997CC(v19, &qword_27CAC1228, qword_21703D310);
  if (qword_27CAB5CD0 != -1)
  {
    swift_once();
  }

  v29 = sub_217007CA4();
  __swift_project_value_buffer(v29, qword_27CAC1820);
  (*(v3 + 16))(v5, a1, v2);
  v30 = sub_217007C84();
  v31 = sub_21700ED84();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v50[0] = v33;
    *v32 = 136446210;
    sub_2166C53B4(&qword_27CAC1AB0, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
    v34 = sub_21700F784();
    v36 = v35;
    (*(v3 + 8))(v5, v2);
    v37 = sub_2166A85FC(v34, v36, v50);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_216679000, v30, v31, "Expected new badging map in notification: %{public}s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x21CEA1440](v33, -1, -1);
    MEMORY[0x21CEA1440](v32, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_216AB4E84()
{
  if (*(v0 + 40))
  {

    sub_21700EB04();
  }

  v1 = OBJC_IVAR____TtC7MusicUI31SocialBadgingRequestCoordinator__updatedRequestDescriptors;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1A78, &unk_21703F850);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);

  sub_2166997CC(v0 + OBJC_IVAR____TtC7MusicUI31SocialBadgingRequestCoordinator__badgingMap, &qword_27CAC1228, qword_21703D310);
  return v0;
}

uint64_t sub_216AB4F84()
{
  sub_216AB4E84();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216AB4FE4(uint64_t *__src)
{
  memcpy(v3, __src, 0x69uLL);
  result = sub_216A73704(v3, __src[14]);
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_216AB503C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_216AB505C, 0, 0);
}

void sub_216AB505C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v29 = MEMORY[0x277D84F90];
    sub_216AB9954();
    v3 = v29;
    v4 = v1 + 40;
    do
    {
      sub_21700DF14();
      v5 = sub_21700BA64();
      v7 = v6;
      v8 = *(v29 + 16);
      if (v8 >= *(v29 + 24) >> 1)
      {
        sub_216AB9954();
      }

      *(v29 + 16) = v8 + 1;
      v9 = v29 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v7;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  sub_2166C32C0();
  v10 = sub_21700E384();
  v11 = 0;
  v26 = *(v3 + 16);
  for (i = v3 + 40; ; i += 16)
  {
    *(v28 + 32) = v10;
    if (v26 == v11)
    {
      break;
    }

    if (v11 >= *(v3 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    sub_21700DF14();
    swift_isUniquelyReferenced_nonNull_native();
    v13 = OUTLINED_FUNCTION_39();
    sub_216E69548(v13, v14);
    OUTLINED_FUNCTION_146_2();
    if (__OFADD__(v16, v17))
    {
      goto LABEL_24;
    }

    v18 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1878, &qword_21703F4E8);
    if (sub_21700F554())
    {
      v19 = OUTLINED_FUNCTION_39();
      sub_216E69548(v19, v20);
      if ((v18 & 1) != (v21 & 1))
      {

        sub_21700F824();
        return;
      }
    }

    if (v18)
    {
      OUTLINED_FUNCTION_241_0();
    }

    else
    {
      OUTLINED_FUNCTION_122_6();
      if (v23)
      {
        goto LABEL_25;
      }

      *(v10 + 16) = v22;
    }

    ++v11;
  }

  OUTLINED_FUNCTION_38_0(&unk_21703F4F0);
  v27 = v24;
  v25 = swift_task_alloc();
  *(v28 + 40) = v25;
  *v25 = v28;
  OUTLINED_FUNCTION_99_0(v25);

  v27(v10);
}

uint64_t sub_216AB531C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  OUTLINED_FUNCTION_69_0();
  v3 = *v0;
  OUTLINED_FUNCTION_28();
  *v4 = v3;

  OUTLINED_FUNCTION_43_4();

  return v5(v2);
}

uint64_t sub_216AB5420(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_216AB5440, 0, 0);
}

void sub_216AB5440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();
  v47 = v16;
  sub_216A961E0(*(v16 + 16));
  v18 = v17;
  sub_2166C32C0();
  v19 = sub_21700E384();
  v20 = 0;
  v21 = *(v18 + 16);
  v45 = v18;
  for (i = v18 + 40; ; i += 16)
  {
    *(v47 + 32) = v19;
    if (v21 == v20)
    {
      break;
    }

    if (v20 >= *(v45 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    sub_21700DF14();
    swift_isUniquelyReferenced_nonNull_native();
    a12 = v19;
    v23 = OUTLINED_FUNCTION_39();
    sub_216E69548(v23, v24);
    OUTLINED_FUNCTION_146_2();
    if (__OFADD__(v26, v27))
    {
      goto LABEL_19;
    }

    v28 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1878, &qword_21703F4E8);
    if (sub_21700F554())
    {
      v29 = OUTLINED_FUNCTION_39();
      sub_216E69548(v29, v30);
      if ((v28 & 1) != (v31 & 1))
      {
        OUTLINED_FUNCTION_13_2();

        sub_21700F824();
        return;
      }
    }

    if (v28)
    {
      OUTLINED_FUNCTION_241_0();
    }

    else
    {
      OUTLINED_FUNCTION_122_6();
      if (v33)
      {
        goto LABEL_20;
      }

      *(v19 + 16) = v32;
    }

    ++v20;
  }

  OUTLINED_FUNCTION_38_0(&unk_21703F4F0);
  v46 = v34;
  v35 = swift_task_alloc();
  *(v47 + 40) = v35;
  *v35 = v47;
  OUTLINED_FUNCTION_99_0(v35);
  OUTLINED_FUNCTION_13_2();

  v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, v46, v47, a12, a13, a14, a15, a16);
}

uint64_t sub_216AB5644()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_99_0(v3);

  return sub_216AB56D8(v2);
}

uint64_t sub_216AB56D8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_216AB56F8, 0, 0);
}

uint64_t sub_216AB56F8()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  *(v0 + 32) = (*(*(v3 + 16) + 32))(v2);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_128_0(v4);
  *v5 = v6;
  v5[1] = sub_216AB57B8;
  v7 = OUTLINED_FUNCTION_170_0();

  return sub_216AB5AFC(v7);
}

uint64_t sub_216AB57B8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_216AB58B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_216AB58D4, 0, 0);
}

uint64_t sub_216AB58D4()
{
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1928, &qword_21703F628);
  v1 = OUTLINED_FUNCTION_31_0();
  v2 = _s7SectionVMa(v1);
  OUTLINED_FUNCTION_2(v2);
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  *(v3 + 16) = xmmword_217013DA0;
  OUTLINED_FUNCTION_49_19();
  sub_216ABE93C();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_128_0(v4);
  *v5 = v6;
  v5[1] = sub_216AB59FC;
  v7 = OUTLINED_FUNCTION_170_0();

  return sub_216AB5AFC(v7);
}

uint64_t sub_216AB59FC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  swift_setDeallocating();
  sub_2169FAD48();
  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_216AB5AFC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = _s7SectionVMa(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216AB5BBC, 0, 0);
}

void sub_216AB5BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  v13 = v12[2];
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v12[5];
    v16 = v13 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v17 = MEMORY[0x277D84F90];
    v18 = *(v15 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_49_19();
      sub_216ABE93C();
      v19 = sub_2169A2CF0();
      v20 = *(v19 + 16);
      v21 = *(v17 + 16);
      v22 = v21 + v20;
      if (__OFADD__(v21, v20))
      {
        break;
      }

      v23 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v22 > *(v17 + 24) >> 1)
      {
        if (v21 <= v22)
        {
          v25 = v21 + v20;
        }

        else
        {
          v25 = v21;
        }

        sub_216938DEC(isUniquelyReferenced_nonNull_native, v25, 1, v17);
        v17 = v26;
      }

      if (*(v23 + 16))
      {
        if ((*(v17 + 24) >> 1) - *(v17 + 16) < v20)
        {
          goto LABEL_24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD128, &qword_217029E30);
        swift_arrayInitWithCopy();

        if (v20)
        {
          v27 = *(v17 + 16);
          v28 = __OFADD__(v27, v20);
          v29 = v27 + v20;
          if (v28)
          {
            goto LABEL_25;
          }

          *(v17 + 16) = v29;
        }
      }

      else
      {

        if (v20)
        {
          goto LABEL_23;
        }
      }

      sub_216ABE994();
      v16 += v18;
      if (!--v14)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
LABEL_19:
    v12[7] = v17;
    v30 = swift_task_alloc();
    v31 = OUTLINED_FUNCTION_75_11(v30);
    *v31 = v32;
    v31[1] = sub_216AB5DA4;
    OUTLINED_FUNCTION_170_0();
    OUTLINED_FUNCTION_7_3();

    sub_216AB6010(v33);
  }
}

uint64_t sub_216AB5DA4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_216AB5EBC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_71_0();
  sub_217007DE4();

  return v1;
}

uint64_t sub_216AB5F2C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_216AB6010(uint64_t a1)
{
  v2[50] = a1;
  v2[51] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  v2[52] = swift_task_alloc();
  v2[53] = type metadata accessor for ContentDescriptor(0);
  v2[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216AB60DC, 0, 0);
}

uint64_t sub_216AB60DC()
{
  v24 = v0;
  v1 = *(v0 + 400);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v21 = *(v0 + 432);
    v22 = MEMORY[0x277D84F90];
    do
    {
      sub_216681AA4(v3, v0 + 240);
      sub_216681AA4(v0 + 240, v0 + 320);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD128, &qword_217029E30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1840, &qword_21703F420);
      if (swift_dynamicCast())
      {
        v4 = *(v0 + 424);
        sub_2166A0F18((v0 + 360), v0 + 280);
        v5 = *(v0 + 304);
        v6 = *(v0 + 312);
        __swift_project_boxed_opaque_existential_1((v0 + 280), v5);
        (*(v6 + 8))(v5, v6);
        v7 = OUTLINED_FUNCTION_19_2();
        if (__swift_getEnumTagSinglePayload(v7, v8, v4) == 1)
        {
          v9 = *(v0 + 416);
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));
          sub_2166997CC(v9, &qword_27CAB6A00, &unk_217016B60);
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 280));
        }

        else
        {
          sub_216ABEA38();
          memcpy((v0 + 16), (v21 + 8), 0x69uLL);
          v10 = *(v0 + 304);
          v11 = *(v0 + 312);
          __swift_project_boxed_opaque_existential_1((v0 + 280), v10);
          v12 = *(v11 + 16);
          sub_21686BC90(v0 + 16, v0 + 128);
          v13 = v12(v10, v11);
          sub_216ABE994();
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));
          memcpy(__dst, (v0 + 16), 0x69uLL);
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 280));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_216938D1C();
            v22 = v16;
          }

          v14 = *(v22 + 16);
          if (v14 >= *(v22 + 24) >> 1)
          {
            sub_216938D1C();
            v22 = v17;
          }

          *(v22 + 16) = v14 + 1;
          v15 = v22 + 120 * v14;
          memcpy((v15 + 32), __dst, 0x70uLL);
          *(v15 + 144) = v13;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));
        *(v0 + 392) = 0;
        *(v0 + 360) = 0u;
        *(v0 + 376) = 0u;
        sub_2166997CC(v0 + 360, &qword_27CAC1848, &qword_21703F428);
      }

      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  *(v0 + 440) = v22;
  v18 = swift_task_alloc();
  *(v0 + 448) = v18;
  *v18 = v0;
  v18[1] = sub_216AB646C;
  v19 = OUTLINED_FUNCTION_170_0();

  return sub_216AB65A8(v19);
}