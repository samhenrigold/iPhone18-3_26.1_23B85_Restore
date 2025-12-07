uint64_t sub_231CF07AC()
{
  OUTLINED_FUNCTION_50_0();
  v2 = *(v0 + 896);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744F8, &qword_231E16F08);
  type metadata accessor for EntityKind(0);
  OUTLINED_FUNCTION_7_4();
  v3 = OUTLINED_FUNCTION_129_0();
  OUTLINED_FUNCTION_89_0(v3, xmmword_231E138E0);
  sub_231E106A0();
  OUTLINED_FUNCTION_6_0();
  (*(v4 + 16))(v3 + v1, v2);
  swift_storeEnumTagMultiPayload();
  v5 = OUTLINED_FUNCTION_59_0();
  sub_231CEAA30(v5, v6, v3);
  swift_setDeallocating();
  sub_231CF0D6C();
  *(v0 + 504) = 0;
  *(v0 + 512) = 1;
  OUTLINED_FUNCTION_1_6((v0 + 520));
  OUTLINED_FUNCTION_128_0();
  v7 = OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_178(v7);

  OUTLINED_FUNCTION_14_0();

  return v8();
}

uint64_t sub_231CF0934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v13;
  v8[16] = v14;
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[8] = a2;
  v9 = OUTLINED_FUNCTION_10();
  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231CF0974()
{
  OUTLINED_FUNCTION_50_0();
  v1 = v0[12];
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v0[17] = *(v1 + 8);

  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_231CF0A5C;
  OUTLINED_FUNCTION_135_0();
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_81();

  return sub_231CE9B24();
}

uint64_t sub_231CF0A5C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  *(v5 + 152) = v6;

  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CF0B5C()
{
  OUTLINED_FUNCTION_18();
  v2 = *(v1 + 152);
  OUTLINED_FUNCTION_146_0();
  *v0 = v2;
  OUTLINED_FUNCTION_14_0();

  return v3();
}

unint64_t sub_231CF0BB8(unint64_t result, uint64_t a2, uint64_t a3)
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

uint64_t sub_231CF0C24(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 1 == a3)
  {
    return 0;
  }

  if ((a4 >> 1) > a3)
  {
    return *(a2 + 16 * (a4 >> 1) - 16);
  }

  __break(1u);
  return result;
}

uint64_t sub_231CF0C58()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));

  return v0;
}

uint64_t sub_231CF0C98()
{
  sub_231CF0C58();

  return swift_deallocClassInstance();
}

uint64_t sub_231CF0CCC()
{
  OUTLINED_FUNCTION_29();
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_29_0(v1);

  return sub_231CE8AD4();
}

uint64_t sub_231CF0D6C()
{
  type metadata accessor for EntityKind(0);
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

char *sub_231CF0DE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74500, &qword_231E16F30);
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

uint64_t sub_231CF0EE4()
{
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_29_0(v3);

  return sub_231CEB9FC(v5, v6, v2);
}

uint64_t sub_231CF0F7C()
{
  OUTLINED_FUNCTION_50_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_29_0(v1);

  return sub_231CEBC68();
}

uint64_t sub_231CF102C()
{
  OUTLINED_FUNCTION_29();
  v0 = sub_231E10A30();
  OUTLINED_FUNCTION_6(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_38(v1);
  *v2 = v3;
  v2[1] = sub_231CC6BF8;

  return sub_231CEB5C0();
}

uint64_t sub_231CF111C()
{
  OUTLINED_FUNCTION_29();
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_29_0(v1);

  return sub_231CEF978();
}

uint64_t sub_231CF11E0()
{
  OUTLINED_FUNCTION_57_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v1[1] = sub_231CC6BF8;
  OUTLINED_FUNCTION_44_2();
  OUTLINED_FUNCTION_44();

  return sub_231CF0934(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_231CF12A0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_231CF1D60(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_231CF142C(v5);
  *a1 = v2;
  return result;
}

char *sub_231CF130C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_231CF132C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_231CF132C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74508, &qword_231E16F38);
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

uint64_t sub_231CF142C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_231E120B0();
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
        v6 = sub_231E118B0();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_231CF1598(v7, v8, a1, v4);
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
    return sub_231CF1520(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_231CF1520(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 24);
        *(v9 + 16) = *v9;
        *v9 = v7;
        *(v9 + 8) = v10;
        v9 -= 16;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_231CF1598(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v82 = result;
  v86 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v81 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = (*a3 + 16 * v7);
        v12 = 16 * v7;
        v14 = *v11;
        v13 = v11 + 4;
        v15 = v14;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v13;
          v13 += 2;
          v20 = (v10 < v15) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v15)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 16 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *v25;
                v28 = v25[1];
                *v25 = *(v26 - 16);
                *(v26 - 16) = v27;
                *(v26 - 8) = v28;
              }

              ++v23;
              v21 -= 16;
              v12 += 16;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return result;
          }

          if (v9 != v6)
          {
            v29 = *a3;
            v30 = *a3 + 16 * v9 - 16;
            v31 = v7 - v9;
            do
            {
              v32 = *(v29 + 16 * v9);
              v33 = v31;
              v34 = v30;
              do
              {
                if (v32 >= *v34)
                {
                  break;
                }

                if (!v29)
                {
                  goto LABEL_111;
                }

                v35 = *(v34 + 24);
                *(v34 + 16) = *v34;
                *v34 = v32;
                *(v34 + 8) = v35;
                v34 -= 16;
              }

              while (!__CFADD__(v33++, 1));
              ++v9;
              v30 += 16;
              --v31;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v83 = v9;
      if ((result & 1) == 0)
      {
        result = sub_231CF0DE4(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v38 = *(v8 + 16);
      v37 = *(v8 + 24);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        result = sub_231CF0DE4((v37 > 1), v38 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v39;
      v40 = v8 + 32;
      v41 = (v8 + 32 + 16 * v38);
      *v41 = v7;
      v41[1] = v9;
      __src = *v82;
      if (!*v82)
      {
        goto LABEL_114;
      }

      if (v38)
      {
        while (1)
        {
          v42 = v39 - 1;
          v43 = (v40 + 16 * (v39 - 1));
          v44 = (v8 + 16 * v39);
          if (v39 >= 4)
          {
            break;
          }

          if (v39 == 3)
          {
            v45 = *(v8 + 32);
            v46 = *(v8 + 40);
            v55 = __OFSUB__(v46, v45);
            v47 = v46 - v45;
            v48 = v55;
LABEL_56:
            if (v48)
            {
              goto LABEL_96;
            }

            v60 = *v44;
            v59 = v44[1];
            v61 = __OFSUB__(v59, v60);
            v62 = v59 - v60;
            v63 = v61;
            if (v61)
            {
              goto LABEL_99;
            }

            v64 = v43[1];
            v65 = v64 - *v43;
            if (__OFSUB__(v64, *v43))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v62, v65))
            {
              goto LABEL_104;
            }

            if (v62 + v65 >= v47)
            {
              if (v47 < v65)
              {
                v42 = v39 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v39 < 2)
          {
            goto LABEL_98;
          }

          v67 = *v44;
          v66 = v44[1];
          v55 = __OFSUB__(v66, v67);
          v62 = v66 - v67;
          v63 = v55;
LABEL_71:
          if (v63)
          {
            goto LABEL_101;
          }

          v69 = *v43;
          v68 = v43[1];
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_103;
          }

          if (v70 < v62)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v42 - 1 >= v39)
          {
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
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v74 = (v40 + 16 * (v42 - 1));
          v75 = *v74;
          v76 = (v40 + 16 * v42);
          v77 = v76[1];
          result = sub_231CF1BAC((*a3 + 16 * *v74), (*a3 + 16 * *v76), (*a3 + 16 * v77), __src);
          if (v5)
          {
          }

          if (v77 < v75)
          {
            goto LABEL_91;
          }

          v78 = v8;
          v79 = *(v8 + 16);
          if (v42 > v79)
          {
            goto LABEL_92;
          }

          *v74 = v75;
          v74[1] = v77;
          if (v42 >= v79)
          {
            goto LABEL_93;
          }

          v39 = v79 - 1;
          result = memmove((v40 + 16 * v42), v76 + 2, 16 * (v79 - 1 - v42));
          *(v78 + 16) = v79 - 1;
          v80 = v79 > 2;
          v8 = v78;
          v5 = 0;
          if (!v80)
          {
            goto LABEL_85;
          }
        }

        v49 = v40 + 16 * v39;
        v50 = *(v49 - 64);
        v51 = *(v49 - 56);
        v55 = __OFSUB__(v51, v50);
        v52 = v51 - v50;
        if (v55)
        {
          goto LABEL_94;
        }

        v54 = *(v49 - 48);
        v53 = *(v49 - 40);
        v55 = __OFSUB__(v53, v54);
        v47 = v53 - v54;
        v48 = v55;
        if (v55)
        {
          goto LABEL_95;
        }

        v56 = v44[1];
        v57 = v56 - *v44;
        if (__OFSUB__(v56, *v44))
        {
          goto LABEL_97;
        }

        v55 = __OFADD__(v47, v57);
        v58 = v47 + v57;
        if (v55)
        {
          goto LABEL_100;
        }

        if (v58 >= v52)
        {
          v72 = *v43;
          v71 = v43[1];
          v55 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v55)
          {
            goto LABEL_105;
          }

          if (v47 < v73)
          {
            v42 = v39 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v83;
      a4 = v81;
      if (v83 >= v6)
      {
        v86 = v8;
        break;
      }
    }
  }

  if (!*v82)
  {
    goto LABEL_115;
  }

  sub_231CF1A80(&v86, *v82, a3);
}

uint64_t sub_231CF1A80(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_231CF1D4C(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_231CF1BAC((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_231CF1BAC(double *a1, double *__dst, double *a3, double *__src)
{
  v4 = __src;
  v5 = a3;
  v6 = __dst;
  v7 = a1;
  v8 = (__dst - a1) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (__src != a1 || &a1[2 * v8] <= __src)
    {
      v11 = OUTLINED_FUNCTION_18_0();
      memmove(v11, v12, v13);
    }

    v14 = &v4[2 * v8];
    while (1)
    {
      if (v4 >= v14 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v16 = v6;
      v17 = v7 == v6;
      v6 += 2;
      if (!v17)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 2;
    }

    v16 = v4;
    v17 = v7 == v4;
    v4 += 2;
    if (v17)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v7 = *v16;
    goto LABEL_18;
  }

  if (__src != __dst || &__dst[2 * v9] <= __src)
  {
    memmove(__src, __dst, 16 * v9);
  }

  v14 = &v4[2 * v9];
LABEL_25:
  v19 = v6 - 2;
  for (v5 -= 2; v14 > v4 && v6 > v7; v5 -= 2)
  {
    if (*(v14 - 2) < *v19)
    {
      v17 = v5 + 2 == v6;
      v6 -= 2;
      if (!v17)
      {
        *v5 = *v19;
        v6 = v19;
      }

      goto LABEL_25;
    }

    if (v14 != v5 + 2)
    {
      *v5 = *(v14 - 1);
    }

    v14 -= 2;
  }

LABEL_38:
  v21 = (v14 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[2 * v21])
  {
    memmove(v6, v4, 16 * v21);
  }

  return 1;
}

uint64_t sub_231CF1D74(uint64_t a1)
{
  v2 = type metadata accessor for EntityKind(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231CF1E24()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v1[1] = sub_231CC6BF8;
  OUTLINED_FUNCTION_44_2();
  OUTLINED_FUNCTION_35();

  return sub_231CEF310(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_231CF1F0C()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v1[1] = sub_231CC6BF8;
  OUTLINED_FUNCTION_44_2();

  return sub_231CE97B8();
}

double OUTLINED_FUNCTION_1_6@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  return result;
}

void *OUTLINED_FUNCTION_13_4()
{

  return sub_231CE25FC((v1 + 1592), 2, v0, 0, 0, v1 + 16);
}

void *OUTLINED_FUNCTION_22_3()
{

  return sub_231CE25FC((v1 + 696), v0, 1, 0, 0x200u, v1 + 144);
}

void *OUTLINED_FUNCTION_24_1@<X0>(void *a1@<X4>, uint64_t a2@<X8>)
{

  return sub_231CE25FC(a1, v2, 1, 0, 0x200u, a2);
}

uint64_t OUTLINED_FUNCTION_38_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_39_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_41_2()
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 1024;
  *(v1 + 14) = v0 & 1;
}

uint64_t OUTLINED_FUNCTION_43_3(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_47_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_48_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_49_2()
{

  JUMPOUT(0x23837E1D0);
}

void *OUTLINED_FUNCTION_52_2()
{

  return sub_231CE25FC((v0 + 1496), 2, 49, 0, 0x10Du, v0 + 528);
}

void *OUTLINED_FUNCTION_53_2()
{

  return sub_231CE25FC((v0 + 1688), 2, 48, 0, 0x10Du, v0 + 400);
}

void *OUTLINED_FUNCTION_54_2()
{

  return sub_231CE25FC((v0 + 1784), 2, 47, 0, 0x10Du, v0 + 272);
}

uint64_t OUTLINED_FUNCTION_56_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v23 + 2488) = result;
  *(result + 16) = a15;
  *(result + 24) = v25;
  *(result + 32) = a20;
  *(result + 40) = v20;
  *(result + 48) = v27;
  *(result + 56) = v28;
  *(result + 64) = a16;
  *(result + 72) = a17;
  *(result + 80) = v21;
  *(result + 88) = v22;
  *(result + 96) = v24;
  *(result + 104) = v26;
  return result;
}

uint64_t OUTLINED_FUNCTION_60_1(uint64_t a1)
{
  v3[302] = a1;
  v3[303] = *(v2 + 16);
  v3[304] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

id OUTLINED_FUNCTION_68_2()
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2112;

  return v0;
}

char *OUTLINED_FUNCTION_69_1()
{
  v2 = *(v0 + 16) + 1;

  return sub_231CF130C(0, v2, 1);
}

double OUTLINED_FUNCTION_71_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16)
{
  *(v17 + 4) = v16;
  *(v17 + 12) = 1024;
  *(v17 + 14) = a16;
  *(v17 + 18) = 2048;
  result = v18;
  *(v17 + 20) = v18;
  return result;
}

uint64_t OUTLINED_FUNCTION_74_0()
{
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));

  return sub_231DDAFC4();
}

uint64_t OUTLINED_FUNCTION_78_0()
{
}

uint64_t OUTLINED_FUNCTION_79_0()
{
}

uint64_t OUTLINED_FUNCTION_84_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_85_0()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_86_0()
{

  return sub_231CEAA30(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_87_0()
{
}

BOOL OUTLINED_FUNCTION_91_0()
{

  return os_log_type_enabled(v0, v1);
}

unint64_t OUTLINED_FUNCTION_93_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  return sub_231CB5000(a1, a2, va);
}

void OUTLINED_FUNCTION_94_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_96_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 1992) = a1;
  *(v1 + 1960) = 7;

  return sub_231E0FA80();
}

void OUTLINED_FUNCTION_97_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_98_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_99_0(uint64_t a1)
{

  return sub_231E0F920();
}

uint64_t OUTLINED_FUNCTION_100_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 1952) = a1;
  *(v1 + 1920) = 6;

  return sub_231E0FA80();
}

void *OUTLINED_FUNCTION_101_0@<X0>(void *a1@<X4>, uint64_t a2@<X8>)
{

  return sub_231CE25FC(a1, v2, 2, 0, 0x200u, a2);
}

void *OUTLINED_FUNCTION_103_0()
{

  return memcpy((v0 + 1400), (v0 + 1104), 0x60uLL);
}

void *OUTLINED_FUNCTION_104_0()
{

  return memcpy((v0 + 696), (v0 + 408), 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_105_0()
{
}

uint64_t OUTLINED_FUNCTION_106_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_108_0()
{

  return sub_231E116F0();
}

uint64_t OUTLINED_FUNCTION_116_0()
{
}

uint64_t OUTLINED_FUNCTION_117_0()
{
}

unint64_t OUTLINED_FUNCTION_118_1(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  return sub_231CB5000(a1, a2, va);
}

void *OUTLINED_FUNCTION_128_0()
{

  return sub_231CE25FC((v1 + 504), 2, v0, 0, 0, v1 + 16);
}

uint64_t OUTLINED_FUNCTION_129_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_130_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return sub_231E109C0();
}

double OUTLINED_FUNCTION_131_0()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2048;
  result = v2;
  *(v0 + 14) = v2;
  return result;
}

double OUTLINED_FUNCTION_133_0()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2048;
  result = v2;
  *(v0 + 14) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_141_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_142_0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_143_0()
{
}

uint64_t OUTLINED_FUNCTION_144_0(uint64_t a1, double a2)
{

  return sub_231E0F8B0();
}

unint64_t OUTLINED_FUNCTION_145_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  return sub_231CB5000(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_146_0()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_147_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, os_log_type_t a19)
{

  _os_log_impl(a1, v19, a19, a4, v20, 0x16u);
}

uint64_t OUTLINED_FUNCTION_148_0()
{
}

uint64_t OUTLINED_FUNCTION_149_0()
{
}

uint64_t OUTLINED_FUNCTION_150_0(uint64_t a1)
{
  *(v1 + 2448) = a1;
  *(v1 + 1912) = a1;
  *(v1 + 1880) = 7;

  return sub_231E0FA80();
}

void OUTLINED_FUNCTION_151_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_231D4F620(a18, a20, v20);
}

uint64_t OUTLINED_FUNCTION_153_0(uint64_t a1)
{
  *(v1 + 2516) = v3;

  return sub_231DC4B64();
}

uint64_t OUTLINED_FUNCTION_154_0(uint64_t a1)
{

  return sub_231DC4B64();
}

uint64_t OUTLINED_FUNCTION_155_1()
{

  return type metadata accessor for EntityKind(0);
}

uint64_t OUTLINED_FUNCTION_159(uint64_t result, uint64_t a2)
{
  *(v2 + 2096) = result;
  *(v2 + 2104) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_167(uint64_t a1)
{
  *(v1 + 824) = a1;
  *(v1 + 792) = 7;

  return sub_231E0FA80();
}

uint64_t OUTLINED_FUNCTION_168(uint64_t a1)
{

  return sub_231E0F920();
}

void OUTLINED_FUNCTION_169(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x1Cu);
}

uint64_t OUTLINED_FUNCTION_170()
{
  *(v1 + 2480) = v0;

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_171()
{

  sub_231D4EC98(v1, v2, v0);
}

uint64_t OUTLINED_FUNCTION_172(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *(v22 + 2112) = a21;
  *(v22 + 2120) = a22;

  return sub_231E0F490();
}

void *OUTLINED_FUNCTION_173(void *a1)
{

  return memcpy(a1, (v1 + 144), 0x80uLL);
}

unint64_t OUTLINED_FUNCTION_174(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_231CB5000(a1, a2, va);
}

unint64_t OUTLINED_FUNCTION_175(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_231CB5000(a1, a2, va);
}

BOOL OUTLINED_FUNCTION_176()
{

  return os_log_type_enabled(v0, v1);
}

BOOL OUTLINED_FUNCTION_177()
{

  return os_log_type_enabled(v0, v1);
}

void *OUTLINED_FUNCTION_178(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x80uLL);
}

unint64_t sub_231CF2D74(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    sub_231E11D70();
    v1 = 0xD000000000000010;
    v2 = 0x8000000231E2F030;
    goto LABEL_5;
  }

  if (a1 >> 62 == 1)
  {
    v1 = 0x652065646F636544;
    v2 = 0xED000020726F7272;
LABEL_5:
    MEMORY[0x23837CC20](v1, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F90, &qword_231E16840);
    sub_231E11E90();
    return 0;
  }

  v4 = __ROR8__(a1 ^ 0x8000000000000000, 3);
  result = 0x61746164206F4ELL;
  switch(v4)
  {
    case 1:
      result = 0xD000000000000026;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000026;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_231CF2EEC(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_231CF2F0C, 0, 0);
}

uint64_t sub_231CF2F0C()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_231CF2FFC;

  return MEMORY[0x2822008A0](v0 + 16);
}

uint64_t sub_231CF2FFC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_231CF3134;
  }

  else
  {

    v2 = sub_231CF3118;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_231CF3134()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_231CF3198(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74518, &qword_231E16F78);
  OUTLINED_FUNCTION_24();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = sub_231E106A0();
  OUTLINED_FUNCTION_24();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v16 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a2[11];
  v29 = sub_231E115F0();
  sub_231E10690();
  v28 = sub_231E115F0();

  v26 = sub_231E115F0();
  (*(v12 + 16))(v16, a3, v10);
  v17 = v25;
  (*(v6 + 16))(v9, v27, v25);
  v18 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v19 = (v14 + *(v6 + 80) + v18) & ~*(v6 + 80);
  v20 = swift_allocObject();
  (*(v12 + 32))(v20 + v18, v16, v10);
  (*(v6 + 32))(v20 + v19, v9, v17);
  aBlock[4] = sub_231CF4120;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_231CF427C;
  aBlock[3] = &block_descriptor_0;
  v21 = _Block_copy(aBlock);

  v22 = v29;
  v23 = v28;
  v24 = v26;
  [v30 provideDataForBundle:v29 identifier:v28 type:v26 completionHandler:v21];
  _Block_release(v21);
}

uint64_t sub_231CF3480(uint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v154 = a4;
  v155 = a5;
  v151 = a1;
  v152 = a2;
  v7 = sub_231E106A0();
  OUTLINED_FUNCTION_24();
  v153 = v8;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v145 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v145 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v145 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v145 - v22;
  v24 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  v29 = MEMORY[0x28223BE20](&v145 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = MEMORY[0x28223BE20](v29);
  v31 = MEMORY[0x28223BE20](v30);
  v32 = MEMORY[0x28223BE20](v31);
  if (a3)
  {
    v37 = &v145 - v33;
    v38 = a3;
    sub_231CB4EEC();
    OUTLINED_FUNCTION_3_8();
    v39(v37);
    v40 = v153;
    (*(v153 + 16))(v23, v154, v7);
    v41 = a3;
    v42 = v26;
    v43 = sub_231E10E10();
    v44 = sub_231E11AD0();

    v45 = v24;
    if (os_log_type_enabled(v43, v44))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v154 = v45;
      v151 = v47;
      v152 = swift_slowAlloc();
      *&v158[0] = v152;
      *v46 = 136315394;
      sub_231E10690();
      v48 = v7;
      v50 = v49;
      (*(v40 + 8))(v23, v48);
      v51 = OUTLINED_FUNCTION_4_6();
      v53 = sub_231CB5000(v51, v50, v52);

      *(v46 + 4) = v53;
      *(v46 + 12) = 2112;
      v54 = a3;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 14) = v55;
      v56 = v151;
      *v151 = v55;
      _os_log_impl(&dword_231CAE000, v43, v44, "Unable to request full content for message: %s with error %@", v46, 0x16u);
      sub_231CE1118(v56, &qword_27DD74D30, &unk_231E13480);
      OUTLINED_FUNCTION_30();
      __swift_destroy_boxed_opaque_existential_0(v152);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      (*(v42 + 8))(v37, v154);
    }

    else
    {

      (*(v40 + 8))(v23, v7);
      (*(v42 + 8))(v37, v24);
    }

    v72 = sub_231CF43AC();
    v73 = OUTLINED_FUNCTION_7_5(&type metadata for MessageContentError, v72);
    *v74 = a3;
LABEL_14:
    *&v158[0] = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74518, &qword_231E16F78);
    OUTLINED_FUNCTION_1_7();
    return sub_231E11930();
  }

  v149 = v15;
  v148 = v21;
  v150 = v7;
  v57 = v152;
  if (v152 >> 60 == 15)
  {
    v58 = v32;
    sub_231CB4EEC();
    OUTLINED_FUNCTION_3_8();
    v59 = v24;
    v60(v58);
    v61 = v153;
    v62 = v12;
    v63 = v150;
    (*(v153 + 16))(v12, v154, v150);
    v64 = v26;
    v65 = sub_231E10E10();
    v66 = sub_231E11AD0();
    if (os_log_type_enabled(v65, v66))
    {
      OUTLINED_FUNCTION_9_1();
      v152 = OUTLINED_FUNCTION_6_1();
      *&v158[0] = v152;
      *v5 = 136315138;
      sub_231E10690();
      v154 = v59;
      v68 = v67;
      (*(v61 + 8))(v62, v63);
      v69 = OUTLINED_FUNCTION_4_6();
      v71 = sub_231CB5000(v69, v68, v70);

      *(v5 + 4) = v71;
      _os_log_impl(&dword_231CAE000, v65, v66, "No data returned when requesting full content for message: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v152);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      (*(v64 + 8))(v58, v154);
    }

    else
    {

      (*(v61 + 8))(v62, v63);
      (*(v26 + 8))(v58, v59);
    }

    v96 = sub_231CF43AC();
    v73 = OUTLINED_FUNCTION_7_5(&type metadata for MessageContentError, v96);
    *v97 = 0x8000000000000000;
    goto LABEL_14;
  }

  v75 = v36;
  v145 = v35;
  v146 = v34;
  v76 = v26;
  sub_231CC1784(0, &qword_27DD74520, 0x277CCAAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74528, &unk_231E16F80);
  v77 = swift_allocObject();
  v147 = xmmword_231E138E0;
  *(v77 + 16) = xmmword_231E138E0;
  v78 = sub_231CC1784(0, &qword_2814CAEA8, 0x277CCACA8);
  *(v77 + 32) = v78;
  v79 = swift_allocObject();
  *(v79 + 16) = v147;
  *(v79 + 32) = v78;
  v80 = v151;
  sub_231CF4400(v151, v57);
  v103 = sub_231E11B10();

  if (!v103)
  {
    sub_231CB4EEC();
    OUTLINED_FUNCTION_8_6();
    v81 = v75;
    v82 = v24;
    v83(v75);
    v84 = v153;
    v86 = v149;
    v85 = v150;
    (*(v153 + 16))(v149, v154, v150);
    v87 = sub_231E10E10();
    v88 = sub_231E11AD0();
    if (os_log_type_enabled(v87, v88))
    {
      OUTLINED_FUNCTION_9_1();
      v154 = v81;
      v89 = OUTLINED_FUNCTION_6_1();
      *&v158[0] = v89;
      MEMORY[0] = 136315138;
      v90 = v86;
      sub_231E10690();
      v91 = OUTLINED_FUNCTION_9_5();
      v93 = v92;
      (*(v84 + 8))(v91, v85);
      v94 = OUTLINED_FUNCTION_4_6();
      sub_231CB5000(v94, v93, v95);
      OUTLINED_FUNCTION_9_5();

      MEMORY[4] = v90;
      _os_log_impl(&dword_231CAE000, v87, v88, "Invalid response for full content of message: %s, expecting dictionary", 0, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v89);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      (v80[1])(v154, v82);
    }

    else
    {

      (*(v84 + 8))(v86, v85);
      (v80[1])(v81, v82);
    }

    v99 = sub_231CF43AC();
    v100 = OUTLINED_FUNCTION_7_5(&type metadata for MessageContentError, v99);
    v102 = 0x8000000000000000;
    goto LABEL_18;
  }

  *&v156 = 1954047348;
  *(&v156 + 1) = 0xE400000000000000;
  sub_231E11D20();
  sub_231CF4218(v103, &v156, v158);

  sub_231CF4458(v158);
  v104 = v24;
  if (!v157)
  {
    sub_231CE1118(&v156, &dword_27DD741E0, &qword_231E15D70);
    sub_231CB4EEC();
    OUTLINED_FUNCTION_8_6();
    v108 = v145;
    v109(v145);
    v110 = v153;
    v111 = v148;
    v112 = v150;
    (*(v153 + 16))(v148, v154, v150);
    v113 = sub_231E10E10();
    v114 = sub_231E11AD0();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = OUTLINED_FUNCTION_9_1();
      v116 = swift_slowAlloc();
      v154 = v104;
      v117 = v116;
      *&v158[0] = v116;
      *v115 = 136315138;
      v118 = v111;
      sub_231E10690();
      v119 = OUTLINED_FUNCTION_9_5();
      v121 = v120;
      (*(v110 + 8))(v119, v112);
      v122 = OUTLINED_FUNCTION_4_6();
      sub_231CB5000(v122, v121, v123);
      OUTLINED_FUNCTION_9_5();

      *(v115 + 4) = v118;
      _os_log_impl(&dword_231CAE000, v113, v114, "Invalid response for full content of message: %s, expecting 'text' key", v115, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v117);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      (v80[1])(v108, v154);
    }

    else
    {

      (*(v110 + 8))(v111, v112);
      (v80[1])(v108, v24);
    }

    v141 = sub_231CF43AC();
    v100 = OUTLINED_FUNCTION_7_5(&type metadata for MessageContentError, v141);
    v102 = 0x8000000000000010;
LABEL_18:
    *v101 = v102;
    *&v158[0] = v100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74518, &qword_231E16F78);
    OUTLINED_FUNCTION_1_7();
    sub_231E11930();
    return sub_231CF4340(v151, v152);
  }

  sub_231CE1044(&v156, v159);
  sub_231CB51C4(v159, v158);
  v105 = swift_dynamicCast();
  v106 = v76;
  v107 = v154;
  if (v105)
  {
    v158[0] = v156;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74518, &qword_231E16F78);
    OUTLINED_FUNCTION_1_7();
    sub_231E11940();
  }

  else
  {
    sub_231CB4EEC();
    OUTLINED_FUNCTION_3_8();
    v124 = v146;
    v125(v146);
    v126 = v153;
    v127 = v18;
    v128 = v150;
    (*(v153 + 16))(v18, v107, v150);
    v129 = v24;
    v130 = v106;
    v131 = sub_231E10E10();
    v132 = sub_231E11AD0();
    if (os_log_type_enabled(v131, v132))
    {
      OUTLINED_FUNCTION_9_1();
      v133 = OUTLINED_FUNCTION_6_1();
      v154 = v129;
      v134 = v133;
      *&v158[0] = v133;
      *v124 = 136315138;
      sub_231E10690();
      v135 = v127;
      v137 = v136;
      (*(v126 + 8))(v135, v128);
      v138 = OUTLINED_FUNCTION_4_6();
      v140 = sub_231CB5000(v138, v137, v139);

      *(v124 + 4) = v140;
      _os_log_impl(&dword_231CAE000, v131, v132, "Invalid type for full content of message: %s, expecting string", v124, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v134);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      (*(v130 + 8))(v146, v154);
    }

    else
    {

      (*(v126 + 8))(v127, v128);
      (*(v106 + 8))(v124, v129);
    }

    v142 = sub_231CF43AC();
    v143 = OUTLINED_FUNCTION_7_5(&type metadata for MessageContentError, v142);
    *v144 = 0x8000000000000018;
    *&v158[0] = v143;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74518, &qword_231E16F78);
    OUTLINED_FUNCTION_1_7();
    sub_231E11930();
  }

  sub_231CF4340(v80, v152);
  return __swift_destroy_boxed_opaque_existential_0(v159);
}

uint64_t sub_231CF4120(uint64_t *a1, void *a2, void *a3)
{
  v7 = *(sub_231E106A0() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74518, &qword_231E16F78) - 8);
  v11 = v3 + ((v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_231CF3480(a1, a2, a3, v3 + v8, v11);
}

double sub_231CF4218@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_231CF44AC(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_231CB51C4(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_231CF427C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_231E0F840();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_231CF4340(v4, v8);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_231CF4340(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_231CF4354(result, a2);
  }

  return result;
}

uint64_t sub_231CF4354(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_231CF43AC()
{
  result = qword_27DD7A160[0];
  if (!qword_27DD7A160[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD7A160);
  }

  return result;
}

uint64_t sub_231CF4400(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_231CF44AC(uint64_t a1)
{
  v2 = sub_231E11D00();

  return sub_231CF44F0(a1, v2);
}

unint64_t sub_231CF44F0(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_231CF45B4(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x23837D210](v8, a1);
    sub_231CF4458(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t get_enum_tag_for_layout_string_22ProactiveSummarization19MessageContentError33_EF1DB716D889276C42E85C11934D6C90LLO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_231CF4638(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
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

void *sub_231CF468C(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      return OUTLINED_FUNCTION_5_5(result, (v3 | (v3 << 57)) & 0xF000000000000007);
    }
  }

  return result;
}

void *sub_231CF46E4(void *a1, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *a1 & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return OUTLINED_FUNCTION_5_5(a1, v2);
}

uint64_t OUTLINED_FUNCTION_7_5(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

void sub_231CF4764()
{
  OUTLINED_FUNCTION_118();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74530, &qword_231E17080);
  v6 = OUTLINED_FUNCTION_47(v5);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v51 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v51 - v14;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_104_1();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v51 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v51 - v20;
  sub_231CFE0D8(v2, &v51 - v20, &qword_27DD74530, &qword_231E17080);
  v22 = sub_231E113A0();
  OUTLINED_FUNCTION_28_2(v21);
  if (v23)
  {
    sub_231CC154C(v21, &qword_27DD74530, &qword_231E17080);
    v55 = 0;
    v56 = 0;
  }

  else
  {
    v24 = sub_231E11350();
    v55 = v25;
    v56 = v24;
    OUTLINED_FUNCTION_12_5();
    (*(v26 + 8))(v21, v22);
  }

  sub_231CFE0D8(v2, v19, &qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_28_2(v19);
  if (v23)
  {
    sub_231CC154C(v19, &qword_27DD74530, &qword_231E17080);
    v53 = 0;
    v54 = 0;
  }

  else
  {
    v27 = sub_231E11340();
    v53 = v28;
    v54 = v27;
    OUTLINED_FUNCTION_12_5();
    (*(v29 + 8))(v19, v22);
  }

  sub_231CFE0D8(v2, v0, &qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_28_2(v0);
  if (v23)
  {
    sub_231CC154C(v0, &qword_27DD74530, &qword_231E17080);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v30 = sub_231E11380();
    v51 = v31;
    v52 = v30;
    OUTLINED_FUNCTION_12_5();
    (*(v32 + 8))(v0, v22);
  }

  sub_231CFE0D8(v2, v15, &qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_28_2(v15);
  if (v23)
  {
    sub_231CC154C(v15, &qword_27DD74530, &qword_231E17080);
    v33 = 0;
    v35 = 0;
  }

  else
  {
    v33 = sub_231E11360();
    v35 = v34;
    OUTLINED_FUNCTION_12_5();
    v36 = OUTLINED_FUNCTION_83();
    v37(v36);
  }

  sub_231CFE0D8(v2, v12, &qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_28_2(v12);
  if (v23)
  {
    sub_231CC154C(v12, &qword_27DD74530, &qword_231E17080);
    v38 = 0;
    v40 = 0;
  }

  else
  {
    v38 = sub_231E11390();
    v40 = v39;
    OUTLINED_FUNCTION_12_5();
    (*(v41 + 8))(v12, v22);
  }

  sub_231CFE0D8(v2, v9, &qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_28_2(v9);
  if (v23)
  {
    v42 = OUTLINED_FUNCTION_102_0();
    sub_231CC154C(v42, v43, &qword_231E17080);
    sub_231CC154C(v9, &qword_27DD74530, &qword_231E17080);
    v44 = 0;
    v46 = 0;
  }

  else
  {
    v44 = sub_231E11370();
    v46 = v45;
    sub_231CC154C(v2, &qword_27DD74530, &qword_231E17080);
    OUTLINED_FUNCTION_12_5();
    (*(v47 + 8))(v9, v22);
  }

  v48 = v55;
  *v4 = v56;
  v4[1] = v48;
  v49 = v53;
  v4[2] = v54;
  v4[3] = v49;
  v50 = v51;
  v4[4] = v52;
  v4[5] = v50;
  v4[6] = v33;
  v4[7] = v35;
  v4[8] = v38;
  v4[9] = v40;
  v4[10] = v44;
  v4[11] = v46;
  OUTLINED_FUNCTION_113();
}

void sub_231CF4BD8()
{
  OUTLINED_FUNCTION_118();
  sub_231E11180();
  OUTLINED_FUNCTION_24();
  v33[2] = v5;
  v34 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_139();
  v33[1] = v6;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v7);
  v33[0] = v33 - v8;
  OUTLINED_FUNCTION_3_0();
  v9 = sub_231E106E0();
  OUTLINED_FUNCTION_24();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_1();
  v15 = v14 - v13;
  v36 = MEMORY[0x277D84FA0];
  sub_231E106D0();
  OUTLINED_FUNCTION_36_1();
  sub_231CFEB58(v16, v17, MEMORY[0x277D42388]);
  v35 = v1;
  OUTLINED_FUNCTION_99_1();
  v18 = sub_231E11C90();
  v19 = *(v11 + 8);
  v19(v15, v9);
  if (v18)
  {
    v20 = OUTLINED_FUNCTION_46_2();
    v21 = v34;
    v22(v20);
    OUTLINED_FUNCTION_112_1();
    v23 = *(v2 + 8);
    v2 += 8;
    v23(v0, v21);
  }

  sub_231E106B0();
  OUTLINED_FUNCTION_99_1();
  v24 = sub_231E11C90();
  v19(v15, v9);
  if (v24)
  {
    v25 = OUTLINED_FUNCTION_46_2();
    v26 = v34;
    v27(v25);
    OUTLINED_FUNCTION_112_1();
    (*(v2 + 8))(v0, v26);
  }

  sub_231E106C0();
  OUTLINED_FUNCTION_99_1();
  v28 = sub_231E11C90();
  v19(v15, v9);
  if (v28)
  {
    v29 = OUTLINED_FUNCTION_46_2();
    v30 = v34;
    v31(v29);
    v32 = v33[0];
    sub_231CFCCB0(v33[0], v3);
    (*(v2 + 8))(v32, v30);
  }

  OUTLINED_FUNCTION_113();
}

void *sub_231CF4E98@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a5;
  v67 = __src;
  v68 = a4;
  memcpy(__dst, __src, sizeof(__dst));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74548, &qword_231E170A0);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_1();
  v64 = v10;
  OUTLINED_FUNCTION_3_0();
  sub_231E0F5E0();
  OUTLINED_FUNCTION_24();
  v65 = v12;
  v66 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_1();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74470, &qword_231E17120);
  v17 = OUTLINED_FUNCTION_47(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_139();
  v62 = v18;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_104_1();
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - v21;
  sub_231E106E0();
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4_1();
  sub_231E106D0();
  OUTLINED_FUNCTION_36_1();
  sub_231CFEB58(v24, v25, MEMORY[0x277D42388]);
  v71 = a3;
  LOBYTE(a3) = sub_231E11C90();
  v26 = OUTLINED_FUNCTION_101_1();
  v69 = v27;
  v27(v26);
  if (a3)
  {
    v61 = a2;
    sub_231E11440();
    v28 = sub_231E0F5F0();
    if (__swift_getEnumTagSinglePayload(v22, 1, v28) == 1)
    {

      sub_231CFEAB0(v67);
      sub_231CC154C(v22, &qword_27DD74470, &qword_231E17120);
      v29 = 1;
      a2 = v61;
LABEL_22:
      sub_231CFEB04();
      swift_allocError();
      *v56 = v29;
      swift_willThrow();
      v57 = OUTLINED_FUNCTION_69_2();
      v58(v57);
      sub_231E11450();
      OUTLINED_FUNCTION_12();
      return (*(v59 + 8))(a2);
    }

    sub_231E0F5C0();
    (*(*(v28 - 8) + 8))(v22, v28);
    sub_231E0F5D0();
    v30 = OUTLINED_FUNCTION_97_1();
    v31(v30);
    a2 = v61;
    if (v15 <= 0)
    {

      sub_231CFEAB0(v67);
      v29 = 1;
      goto LABEL_22;
    }
  }

  sub_231E106C0();
  v32 = OUTLINED_FUNCTION_117_1();
  v33 = OUTLINED_FUNCTION_101_1();
  v69(v33);
  if (v32)
  {
    sub_231E11430();
    v34 = sub_231E0F5F0();
    if (__swift_getEnumTagSinglePayload(v5, 1, v34) == 1)
    {

      sub_231CFEAB0(v67);
      sub_231CC154C(v5, &qword_27DD74470, &qword_231E17120);
LABEL_19:
      v29 = 2;
      goto LABEL_22;
    }

    sub_231E0F5C0();
    (*(*(v34 - 8) + 8))(v5, v34);
    sub_231E0F5D0();
    v35 = OUTLINED_FUNCTION_97_1();
    v36(v35);
    if (v15 <= 0)
    {

      sub_231CFEAB0(v67);
      goto LABEL_19;
    }
  }

  sub_231E106B0();
  v37 = OUTLINED_FUNCTION_117_1();
  v38 = OUTLINED_FUNCTION_101_1();
  v69(v38);
  v39 = v64;
  if (v37)
  {
    v40 = v62;
    sub_231E11420();
    v41 = sub_231E0F5F0();
    if (__swift_getEnumTagSinglePayload(v40, 1, v41) == 1)
    {

      sub_231CFEAB0(v67);
      sub_231CC154C(v40, &qword_27DD74470, &qword_231E17120);
LABEL_21:
      v29 = 3;
      goto LABEL_22;
    }

    sub_231E0F5C0();
    OUTLINED_FUNCTION_16();
    (*(v42 + 8))(v40, v41);
    v43 = sub_231E0F5D0();
    (*(v65 + 8))(v15, v66);
    if (v43 <= 0)
    {

      sub_231CFEAB0(v67);
      goto LABEL_21;
    }
  }

  v44 = v63;
  sub_231E11420();
  v45 = type metadata accessor for SummarizerResult(0);
  sub_231E11430();
  sub_231E11440();
  sub_231E11400();
  v46 = sub_231E113C0();
  if (__swift_getEnumTagSinglePayload(v39, 1, v46) == 1)
  {
    v47 = OUTLINED_FUNCTION_69_2();
    v48(v47);
    sub_231E11450();
    OUTLINED_FUNCTION_12();
    (*(v49 + 8))(a2);
    sub_231CC154C(v39, &qword_27DD74548, &qword_231E170A0);
    v50 = 2;
  }

  else
  {
    v51 = sub_231E113B0();
    v52 = OUTLINED_FUNCTION_69_2();
    v53(v52);
    sub_231E11450();
    OUTLINED_FUNCTION_12();
    (*(v54 + 8))(a2);
    (*(*(v46 - 8) + 8))(v39, v46);
    v50 = v51 & 1;
  }

  *(v44 + v45[7]) = v50;
  result = memcpy((v44 + v45[8]), __dst, 0x60uLL);
  *(v44 + v45[9]) = v68;
  return result;
}

uint64_t sub_231CF559C()
{
  v0 = swift_allocObject();
  sub_231E11250();
  swift_allocObject();
  *(v0 + 16) = sub_231E11240();
  return v0;
}

uint64_t sub_231CF55F0()
{
  v0 = sub_231E11190();
  OUTLINED_FUNCTION_24();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_1();
  v6 = v5 - v4;
  (*(v2 + 104))(v5 - v4, *MEMORY[0x277D4B078], v0);
  sub_231E111C0();
  return (*(v2 + 8))(v6, v0);
}

void sub_231CF56C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_118();
  v164 = v20;
  v153 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74538, &unk_231E17088);
  OUTLINED_FUNCTION_47(v24);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_12_1();
  v152 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  OUTLINED_FUNCTION_47(v27);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_12_1();
  v151 = v29;
  OUTLINED_FUNCTION_3_0();
  v150 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v163 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4_1();
  v158 = v33 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74540, &qword_231E23510);
  OUTLINED_FUNCTION_47(v34);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_12_1();
  v149 = v36;
  OUTLINED_FUNCTION_3_0();
  v169 = sub_231E113F0();
  OUTLINED_FUNCTION_24();
  v162 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_139();
  v168 = v39;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v40);
  v167 = v141 - v41;
  OUTLINED_FUNCTION_3_0();
  v148 = sub_231E10400();
  OUTLINED_FUNCTION_24();
  v156 = v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_4_1();
  v166 = v45 - v44;
  OUTLINED_FUNCTION_3_0();
  v154 = sub_231E10470();
  OUTLINED_FUNCTION_24();
  v157 = v46;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_4_1();
  v159 = v49 - v48;
  OUTLINED_FUNCTION_3_0();
  v170 = sub_231E10F70();
  OUTLINED_FUNCTION_24();
  v51 = v50;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_139();
  v165 = v53;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v54);
  v56 = v141 - v55;
  v57 = sub_231E0F4A0();
  OUTLINED_FUNCTION_24();
  v59 = v58;
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_4_1();
  v63 = v62 - v61;
  v64 = sub_231E10210();
  OUTLINED_FUNCTION_24();
  v66 = v65;
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_4_1();
  v70 = v69 - v68;
  v155 = v23;
  sub_231E10220();
  v71 = sub_231E10200();
  v73 = v72;
  (*(v66 + 8))(v70, v64);
  v74 = MEMORY[0x277D84F90];
  if (v73)
  {
    v171 = v71;
    v172 = v73;
    sub_231E0F490();
    sub_231CE11D8();
    v75 = sub_231E11C30();
    v77 = v76;
    (*(v59 + 8))(v63, v57);

    v78 = HIBYTE(v77) & 0xF;
    if ((v77 & 0x2000000000000000) == 0)
    {
      v78 = v75 & 0xFFFFFFFFFFFFLL;
    }

    if (v78)
    {
      type metadata accessor for GenerativeModelsHandleResolver();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD740A8, &unk_231E13540);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_231E138E0;
      sub_231E100E0();
      sub_231E10150();
      v171 = v79;
      OUTLINED_FUNCTION_0_11();
      sub_231CFDB0C(v80, v81, MEMORY[0x277D42328]);
      v82 = sub_231E090CC(v171);
      sub_231CD1550(v82, v153, v56);

      v74 = sub_231CFDE40(0, 1, 1, MEMORY[0x277D84F90]);
      v84 = v74[2];
      v83 = v74[3];
      if (v84 >= v83 >> 1)
      {
        v134 = OUTLINED_FUNCTION_84_1(v83);
        v74 = sub_231CFDE40(v134, v135, v136, v137);
      }

      v74[2] = v84 + 1;
      (*(v51 + 32))(v74 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v84, v56, v170);
    }

    else
    {
      v74 = MEMORY[0x277D84F90];
    }
  }

  v85 = v164;
  v86 = v164[2];
  if (v86)
  {
    v147 = type metadata accessor for GenerativeModelsHandleResolver();
    v146 = *(v157 + 16);
    OUTLINED_FUNCTION_79();
    v88 = v85 + v87;
    v145 = *(v89 + 56);
    v144 = v156 + 32;
    v143 = v162 + 16;
    v141[0] = v163 + 32;
    v142 = *MEMORY[0x277D4B3A8];
    v141[4] = v51 + 16;
    v141[3] = v51 + 8;
    v141[2] = v162 + 8;
    v157 = v89;
    v141[1] = v89 - 8;
    do
    {
      v163 = v86;
      v164 = v74;
      v90 = OUTLINED_FUNCTION_70();
      v146(v90);
      v91 = sub_231E10150();
      sub_231E100E0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v91 = sub_231CFDF64(0, *(v91 + 16) + 1, 1, v91);
      }

      v93 = *(v91 + 16);
      v92 = *(v91 + 24);
      if (v93 >= v92 >> 1)
      {
        v130 = OUTLINED_FUNCTION_84_1(v92);
        v91 = sub_231CFDF64(v130, v131, v132, v133);
      }

      *(v91 + 16) = v93 + 1;
      OUTLINED_FUNCTION_79();
      (*(v95 + 32))(v91 + v94 + *(v95 + 72) * v93, v166, v148);

      v97 = sub_231E090CC(v96);
      sub_231E10430();
      sub_231E10420();
      v98 = sub_231E10440();
      if (v99)
      {
        v100 = v98;
      }

      else
      {
        v100 = 0;
      }

      if (v99)
      {
        v101 = v99;
      }

      else
      {
        v101 = 0xE000000000000000;
      }

      v102 = v149;
      *v149 = v100;
      *(v102 + 8) = v101;
      v103 = sub_231E113D0();
      OUTLINED_FUNCTION_12();
      (*(v104 + 104))(v102, v142, v103);
      __swift_storeEnumTagSinglePayload(v102, 0, 1, v103);
      v105 = v167;
      sub_231E113E0();
      v106 = sub_231E10000();
      v160 = v107;
      v161 = v106;
      OUTLINED_FUNCTION_66_2();
      v108 = v105;
      v109 = v159;
      v110(v168, v108, v169);
      v111 = sub_231E10150();
      MEMORY[0x28223BE20](v111);
      v162 = v97;
      v139 = v97;
      v140 = v153;
      sub_231CD1BA8(sub_231CD1B30, v138, v111);

      v112 = v151;
      sub_231E10410();
      v113 = OUTLINED_FUNCTION_91_1();
      v114 = v150;
      if (__swift_getEnumTagSinglePayload(v113, v115, v150) == 1)
      {
        sub_231E101B0();
        v116 = OUTLINED_FUNCTION_91_1();
        v109 = v159;
        if (__swift_getEnumTagSinglePayload(v116, v117, v114) != 1)
        {
          sub_231CC154C(v112, &dword_27DD74AD0, &qword_231E16C40);
        }
      }

      else
      {
        OUTLINED_FUNCTION_66_2();
        v118(v158, v112, v114);
      }

      sub_231E102B0();

      sub_231E102D0();
      v119 = sub_231E10450();
      v138[1] = v120;
      v139 = MEMORY[0x277D84F90];
      v138[0] = v119;
      v121 = v165;
      sub_231E10F60();
      OUTLINED_FUNCTION_66_2();
      v122 = v152;
      v123(v152, v121, v170);
      v74 = v164;
      v124 = v164[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v171 = v74;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v124 >= v74[3] >> 1)
      {
        v74 = sub_231CFDE40(isUniquelyReferenced_nonNull_native, v124 + 1, 1, v74);
        v171 = v74;
      }

      v126 = v154;
      sub_231CFDC98(0, 0, 1, v122);

      OUTLINED_FUNCTION_66_2();
      v127(v165, v170);
      OUTLINED_FUNCTION_66_2();
      v128(v167, v169);
      OUTLINED_FUNCTION_66_2();
      v129(v109, v126);
      v88 += v145;
      v86 = v163 - 1;
    }

    while (v163 != 1);
  }

  OUTLINED_FUNCTION_113();
}

uint64_t sub_231CF61A4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_2(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74548, &qword_231E170A0);
  OUTLINED_FUNCTION_47(v7);
  v8 = OUTLINED_FUNCTION_55();
  v9 = OUTLINED_FUNCTION_120_0(v8);
  v0[22] = v9;
  OUTLINED_FUNCTION_6(v9);
  v0[23] = v10;
  v0[24] = OUTLINED_FUNCTION_55();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_47(v11);
  v12 = OUTLINED_FUNCTION_69();
  v0[26] = OUTLINED_FUNCTION_89_1(v12);
  v13 = sub_231E11110();
  v0[27] = v13;
  OUTLINED_FUNCTION_6(v13);
  v0[28] = v14;
  v15 = OUTLINED_FUNCTION_55();
  v16 = OUTLINED_FUNCTION_119_0(v15);
  v0[30] = v16;
  OUTLINED_FUNCTION_6(v16);
  v0[31] = v17;
  v18 = OUTLINED_FUNCTION_69();
  v19 = OUTLINED_FUNCTION_87_1(v18);
  OUTLINED_FUNCTION_65_2(v19);
  v20 = sub_231E110C0();
  v0[34] = v20;
  OUTLINED_FUNCTION_6(v20);
  v0[35] = v21;
  v0[36] = OUTLINED_FUNCTION_55();
  v22 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_231CF6378()
{
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_71_2();
  sub_231CF4BD8();
  sub_231E110B0();
  type metadata accessor for GenerativeModelsHandleResolver();
  v1 = sub_231E10930();
  sub_231E10970();
  OUTLINED_FUNCTION_0_11();
  sub_231CFDB0C(v2, v3, MEMORY[0x277D42328]);
  sub_231E090CC(v1);
  OUTLINED_FUNCTION_98_1();
  sub_231DF2E4C(v4, v5, v6);

  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 296) = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_63_1(v7);

  return MEMORY[0x2821AB700](v9);
}

uint64_t sub_231CF64A4()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v6 + 304) = v0;

  v7 = OUTLINED_FUNCTION_43_4();
  v8(v7);
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231CF65F4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_2(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74548, &qword_231E170A0);
  OUTLINED_FUNCTION_47(v7);
  v8 = OUTLINED_FUNCTION_55();
  v9 = OUTLINED_FUNCTION_120_0(v8);
  v0[22] = v9;
  OUTLINED_FUNCTION_6(v9);
  v0[23] = v10;
  v0[24] = OUTLINED_FUNCTION_55();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_47(v11);
  v12 = OUTLINED_FUNCTION_69();
  v0[26] = OUTLINED_FUNCTION_89_1(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74550, &qword_231E170B0);
  v0[27] = v13;
  OUTLINED_FUNCTION_6(v13);
  v0[28] = v14;
  v15 = OUTLINED_FUNCTION_55();
  v16 = OUTLINED_FUNCTION_119_0(v15);
  v0[30] = v16;
  OUTLINED_FUNCTION_6(v16);
  v0[31] = v17;
  v18 = OUTLINED_FUNCTION_69();
  v19 = OUTLINED_FUNCTION_87_1(v18);
  OUTLINED_FUNCTION_65_2(v19);
  v20 = sub_231E10A30();
  v0[34] = v20;
  OUTLINED_FUNCTION_6(v20);
  v0[35] = v21;
  v0[36] = OUTLINED_FUNCTION_55();
  v22 = sub_231E11100();
  v0[37] = v22;
  OUTLINED_FUNCTION_6(v22);
  v0[38] = v23;
  v0[39] = OUTLINED_FUNCTION_55();
  v24 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_231CF6820()
{
  OUTLINED_FUNCTION_108_1();
  OUTLINED_FUNCTION_85_1();
  sub_231CF4BD8();
  v4 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_83();
  sub_231E110B0();
  v5 = *(v1 + 16);
  if (v5)
  {
    v21 = *(v3[35] + 16);
    OUTLINED_FUNCTION_60_2();
    v20 = v6;
    do
    {
      v21(v3[36], v0, v3[34]);
      v7 = sub_231E10930();

      v8 = MEMORY[0x277D42328];
      sub_231CFDB0C(v7, sub_231CFDF64, MEMORY[0x277D42328]);
      v2 = v4;
      v9 = sub_231E10970();
      sub_231CFDB0C(v9, sub_231CFDF64, v8);

      v10 = OUTLINED_FUNCTION_70();
      v11(v10);
      v0 += v20;
      --v5;
    }

    while (v5);
  }

  OUTLINED_FUNCTION_109_1();
  v12 = sub_231E090CC(v4);
  v13 = OUTLINED_FUNCTION_110_1(v12);
  *(v13 + 16) = v4;
  *(v13 + 24) = v2;
  OUTLINED_FUNCTION_86_1(sub_231CFE088, v14, v15, MEMORY[0x277D4B000], sub_231CFE4B0, MEMORY[0x277D42428]);

  sub_231E11110();
  sub_231CFEB58(&qword_2814CAFF0, MEMORY[0x277D4B000], MEMORY[0x277D4AFF8]);
  OUTLINED_FUNCTION_25();
  sub_231E11140();
  v16 = swift_task_alloc();
  v3[41] = v16;
  *v16 = v3;
  OUTLINED_FUNCTION_81_1(v16);
  OUTLINED_FUNCTION_107_1();

  return MEMORY[0x2821AB718](v17);
}

uint64_t sub_231CF6A9C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v6 + 336) = v0;

  v7 = OUTLINED_FUNCTION_43_4();
  v8(v7);
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231CF6BEC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v9 = v6;
  v30 = a1;
  v31 = a2;
  v29 = a4(0);
  OUTLINED_FUNCTION_24();
  v12 = v11;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  v16 = *(a3 + 16);
  v17 = MEMORY[0x277D84F90];
  if (!v16)
  {
    return v17;
  }

  v32 = MEMORY[0x277D84F90];
  v26 = a5;
  a5(0, v16, 0);
  v17 = v32;
  v18 = a6(0);
  OUTLINED_FUNCTION_6(v18);
  v20 = a3 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v28 = v12 + 32;
  v27 = *(v21 + 72);
  while (1)
  {
    v30(v20);
    if (v9)
    {
      break;
    }

    v9 = 0;
    v32 = v17;
    v23 = *(v17 + 16);
    v22 = *(v17 + 24);
    if (v23 >= v22 >> 1)
    {
      v26(v22 > 1, v23 + 1, 1);
      v17 = v32;
    }

    *(v17 + 16) = v23 + 1;
    OUTLINED_FUNCTION_79();
    (*(v12 + 32))(v17 + v24 + *(v12 + 72) * v23, v15, v29);
    v20 += v27;
    if (!--v16)
    {
      return v17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_231CF6DF0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_2(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74548, &qword_231E170A0);
  OUTLINED_FUNCTION_47(v7);
  v8 = OUTLINED_FUNCTION_55();
  v9 = OUTLINED_FUNCTION_120_0(v8);
  v0[22] = v9;
  OUTLINED_FUNCTION_6(v9);
  v0[23] = v10;
  v0[24] = OUTLINED_FUNCTION_55();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_47(v11);
  v12 = OUTLINED_FUNCTION_69();
  v0[26] = OUTLINED_FUNCTION_89_1(v12);
  v13 = sub_231E11020();
  v0[27] = v13;
  OUTLINED_FUNCTION_6(v13);
  v0[28] = v14;
  v15 = OUTLINED_FUNCTION_55();
  v16 = OUTLINED_FUNCTION_119_0(v15);
  v0[30] = v16;
  OUTLINED_FUNCTION_6(v16);
  v0[31] = v17;
  v18 = OUTLINED_FUNCTION_69();
  v19 = OUTLINED_FUNCTION_87_1(v18);
  OUTLINED_FUNCTION_65_2(v19);
  v20 = sub_231E10F90();
  v0[34] = v20;
  OUTLINED_FUNCTION_6(v20);
  v0[35] = v21;
  v0[36] = OUTLINED_FUNCTION_55();
  v22 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_231CF6FC4()
{
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_71_2();
  sub_231CF4BD8();
  sub_231E10F80();
  type metadata accessor for GenerativeModelsHandleResolver();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD740A8, &unk_231E13540);
  v1 = OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_6(v1);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_231E138E0;
  sub_231E104F0();
  sub_231E10590();
  OUTLINED_FUNCTION_0_11();
  sub_231CFDB0C(v3, v4, MEMORY[0x277D42328]);
  sub_231E090CC(v2);
  OUTLINED_FUNCTION_98_1();
  sub_231DC2418(v5, v6, v7);

  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 296) = v8;
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_63_1(v8);

  return MEMORY[0x2821AB6F8](v10);
}

uint64_t sub_231CF716C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v6 + 304) = v0;

  v7 = OUTLINED_FUNCTION_43_4();
  v8(v7);
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231CF72BC(uint64_t a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  v2 = OUTLINED_FUNCTION_14_2();
  v3(v2);
  v4 = OUTLINED_FUNCTION_13_5();
  v5(v4);
  sub_231E11400();
  v6 = sub_231E113C0();
  if (OUTLINED_FUNCTION_29_3(v6) == 1)
  {
    sub_231CC154C(v1[21], &qword_27DD74548, &qword_231E170A0);
  }

  else
  {
    sub_231E113B0();
    OUTLINED_FUNCTION_16();
    v7 = OUTLINED_FUNCTION_48();
    v8(v7);
  }

  v9 = v1[35];
  v19 = v1[34];
  v20 = v1[36];
  v18 = v1[33];
  v10 = v1[31];
  v11 = v1[32];
  v12 = v1[30];
  v13 = v1[26];
  v14 = v1[24];
  v15 = v1[14];
  sub_231CFE0D8(v13, v1[25], &qword_27DD74530, &qword_231E17080);
  sub_231CF4764();
  sub_231CF4E98(v1 + 2, v11, v14, 0, v15);
  sub_231CC154C(v13, &qword_27DD74530, &qword_231E17080);
  (*(v10 + 8))(v18, v12);
  (*(v9 + 8))(v20, v19);
  OUTLINED_FUNCTION_116_1();

  OUTLINED_FUNCTION_19();

  return v16();
}

uint64_t sub_231CF74B8()
{
  OUTLINED_FUNCTION_47_0();
  (*(v0[35] + 8))(v0[36], v0[34]);
  OUTLINED_FUNCTION_116_1();

  OUTLINED_FUNCTION_19();

  return v1();
}

uint64_t sub_231CF7580()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_2(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74548, &qword_231E170A0);
  OUTLINED_FUNCTION_47(v7);
  v8 = OUTLINED_FUNCTION_55();
  v9 = OUTLINED_FUNCTION_120_0(v8);
  v0[22] = v9;
  OUTLINED_FUNCTION_6(v9);
  v0[23] = v10;
  v0[24] = OUTLINED_FUNCTION_55();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_47(v11);
  v12 = OUTLINED_FUNCTION_69();
  v0[26] = OUTLINED_FUNCTION_89_1(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74558, &qword_231E170C8);
  v0[27] = v13;
  OUTLINED_FUNCTION_6(v13);
  v0[28] = v14;
  v15 = OUTLINED_FUNCTION_55();
  v16 = OUTLINED_FUNCTION_119_0(v15);
  v0[30] = v16;
  OUTLINED_FUNCTION_6(v16);
  v0[31] = v17;
  v18 = OUTLINED_FUNCTION_69();
  v19 = OUTLINED_FUNCTION_87_1(v18);
  OUTLINED_FUNCTION_65_2(v19);
  v20 = sub_231E106A0();
  v0[34] = v20;
  OUTLINED_FUNCTION_6(v20);
  v0[35] = v21;
  v0[36] = OUTLINED_FUNCTION_55();
  v22 = sub_231E10FD0();
  v0[37] = v22;
  OUTLINED_FUNCTION_6(v22);
  v0[38] = v23;
  v0[39] = OUTLINED_FUNCTION_55();
  v24 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_231CF77AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_96_1();
  OUTLINED_FUNCTION_85_1();
  sub_231CF4BD8();
  v22 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_83();
  sub_231E10F80();
  if (*(v19 + 16))
  {
    v23 = v21[35];
    a13 = *(v23 + 16);
    a14 = v23 + 16;
    OUTLINED_FUNCTION_60_2();
    a11 = v24;
    a12 = v25;
    a9 = xmmword_231E138E0;
    do
    {
      v20 = v21[36];
      v26 = OUTLINED_FUNCTION_100_1();
      v27(v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD740A8, &unk_231E13540);
      v28 = OUTLINED_FUNCTION_88_1();
      OUTLINED_FUNCTION_6(v28);
      v29 = OUTLINED_FUNCTION_19_3();
      OUTLINED_FUNCTION_68_3(v29, xmmword_231E138E0);
      sub_231E104F0();

      v30 = MEMORY[0x277D42328];
      sub_231CFDB0C(v29, sub_231CFDF64, MEMORY[0x277D42328]);
      v31 = sub_231E10590();
      a15 = v22;
      sub_231CFDB0C(v31, sub_231CFDF64, v30);

      v32 = OUTLINED_FUNCTION_93_1();
      v33(v32);
      OUTLINED_FUNCTION_92_0();
    }

    while (!v34);
  }

  OUTLINED_FUNCTION_109_1();
  v35 = sub_231E090CC(v22);
  v36 = OUTLINED_FUNCTION_110_1(v35);
  *(v36 + 16) = v22;
  *(v36 + 24) = v20;
  OUTLINED_FUNCTION_86_1(sub_231CFE0B0, v37, v38, MEMORY[0x277D4AFC8], sub_231CFE508, MEMORY[0x277D42368]);

  sub_231E11020();
  sub_231CFEB58(&qword_2814CB000, MEMORY[0x277D4AFC8], MEMORY[0x277D4AFC0]);
  OUTLINED_FUNCTION_25();
  sub_231E11140();
  v39 = swift_task_alloc();
  v21[41] = v39;
  *v39 = v21;
  OUTLINED_FUNCTION_81_1(v39);
  OUTLINED_FUNCTION_95_1();

  return MEMORY[0x2821AB710](v40, v41, v42, v43, v44, v45, v46, v47, a9, *(&a9 + 1), a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_231CF7A68()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v6 + 336) = v0;

  v7 = OUTLINED_FUNCTION_43_4();
  v8(v7);
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231CF7BB8(uint64_t a1)
{
  OUTLINED_FUNCTION_72_1(a1);
  v2 = OUTLINED_FUNCTION_14_2();
  v3(v2);
  v4 = OUTLINED_FUNCTION_13_5();
  v5(v4);
  sub_231E11400();
  v6 = sub_231E113C0();
  if (OUTLINED_FUNCTION_29_3(v6) == 1)
  {
    sub_231CC154C(v1[21], &qword_27DD74548, &qword_231E170A0);
  }

  else
  {
    sub_231E113B0();
    OUTLINED_FUNCTION_16();
    v7 = OUTLINED_FUNCTION_48();
    v8(v7);
  }

  v9 = v1[38];
  v19 = v1[37];
  v20 = v1[39];
  v10 = v1[32];
  v11 = v1[31];
  v17 = v1[30];
  v18 = v1[33];
  v12 = v1[26];
  v13 = v1[24];
  v14 = v1[14];
  sub_231CFE0D8(v12, v1[25], &qword_27DD74530, &qword_231E17080);
  sub_231CF4764();
  sub_231CF4E98(v1 + 2, v10, v13, 0, v14);

  sub_231CC154C(v12, &qword_27DD74530, &qword_231E17080);
  (*(v11 + 8))(v18, v17);
  (*(v9 + 8))(v20, v19);
  OUTLINED_FUNCTION_111_1();

  OUTLINED_FUNCTION_19();

  return v15();
}

uint64_t sub_231CF7DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();

  v12 = OUTLINED_FUNCTION_30_3();
  v13(v12);
  OUTLINED_FUNCTION_111_1();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_44();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_231CF7E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_18();
  *(v10 + 296) = a9;
  *(v10 + 304) = v9;
  *(v10 + 673) = v11;
  *(v10 + 672) = v12;
  OUTLINED_FUNCTION_61_2(v13, v14, v15, v16, v17, v12, v11, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74548, &qword_231E170A0);
  OUTLINED_FUNCTION_47(v19);
  *(v10 + 344) = OUTLINED_FUNCTION_69();
  *(v10 + 352) = swift_task_alloc();
  v20 = sub_231E106E0();
  *(v10 + 360) = v20;
  OUTLINED_FUNCTION_6(v20);
  *(v10 + 368) = v21;
  *(v10 + 376) = OUTLINED_FUNCTION_69();
  *(v10 + 384) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_47(v22);
  *(v10 + 392) = OUTLINED_FUNCTION_69();
  *(v10 + 400) = swift_task_alloc();
  *(v10 + 408) = swift_task_alloc();
  v23 = sub_231E10F70();
  *(v10 + 416) = v23;
  OUTLINED_FUNCTION_6(v23);
  *(v10 + 424) = v24;
  *(v10 + 432) = OUTLINED_FUNCTION_69();
  *(v10 + 440) = swift_task_alloc();
  v25 = sub_231E11450();
  *(v10 + 448) = v25;
  OUTLINED_FUNCTION_6(v25);
  *(v10 + 456) = v26;
  *(v10 + 464) = OUTLINED_FUNCTION_69();
  *(v10 + 472) = swift_task_alloc();
  *(v10 + 480) = swift_task_alloc();
  *(v10 + 488) = swift_task_alloc();
  *(v10 + 496) = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74560, &qword_231E170D8);
  OUTLINED_FUNCTION_47(v27);
  *(v10 + 504) = OUTLINED_FUNCTION_69();
  *(v10 + 512) = swift_task_alloc();
  *(v10 + 520) = swift_task_alloc();
  v28 = sub_231E10F00();
  *(v10 + 528) = v28;
  OUTLINED_FUNCTION_6(v28);
  *(v10 + 536) = v29;
  *(v10 + 544) = OUTLINED_FUNCTION_69();
  *(v10 + 552) = swift_task_alloc();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F98, &unk_231E170E0);
  OUTLINED_FUNCTION_47(v30);
  *(v10 + 560) = OUTLINED_FUNCTION_69();
  *(v10 + 568) = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_33_1(v31, v32, v33);
}

uint64_t sub_231CF8164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_56_3();
  sub_231E10080();
  v11 = sub_231E10290();
  v12 = OUTLINED_FUNCTION_91_1();
  if (__swift_getEnumTagSinglePayload(v12, v13, v11) == 1)
  {
LABEL_2:
    v14 = *(v10 + 288);
    sub_231CC154C(*(v10 + 568), &qword_27DD73F98, &unk_231E170E0);
    if (*(v14 + 32))
    {
      v76 = 1;
    }

    else
    {
      sub_231E11120();
      v76 = 0;
    }

    v15 = *(v10 + 504);
    v16 = *(v10 + 512);
    v17 = *(v10 + 432);
    v18 = *(v10 + 296);
    v95 = *(v10 + 672);
    v96 = *(v10 + 673);
    v19 = *(v10 + 272);
    v94 = *(v10 + 264);
    v20 = sub_231E11130();
    __swift_storeEnumTagSinglePayload(v16, v76, 1, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD740A8, &unk_231E13540);
    v21 = OUTLINED_FUNCTION_88_1();
    OUTLINED_FUNCTION_6(v21);
    v22 = OUTLINED_FUNCTION_19_3();
    OUTLINED_FUNCTION_68_3(v22, xmmword_231E138E0);
    sub_231E100E0();
    sub_231E10150();
    OUTLINED_FUNCTION_0_11();
    sub_231CFDB0C(v23, v24, MEMORY[0x277D42328]);
    type metadata accessor for GenerativeModelsHandleResolver();
    v25 = sub_231E090CC(v22);
    *(v10 + 640) = v25;
    sub_231CD1550(v25, v18, v17);

    sub_231CF4BD8();
    v27 = v26;
    sub_231CFE0D8(v16, v15, &qword_27DD74560, &qword_231E170D8);
    MEMORY[0x23837C3F0](v94, v19, v27, v95, v96, v15, MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74568, &qword_231E1C7B0);
    v28 = swift_allocObject();
    *(v10 + 648) = v28;
    *(v28 + 16) = xmmword_231E138E0;
    *(v28 + 32) = sub_231E10F50() & 1;
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    *(v10 + 656) = v29;
    *v29 = v30;
    v29[1] = sub_231CF9004;
    v31 = *(v10 + 544);
    v32 = *(v10 + 472);
    v33 = *(v10 + 432);
LABEL_6:

    return MEMORY[0x2821AB6F0](v32, v33, v31);
  }

  sub_231CFE0D8(*(v10 + 568), *(v10 + 560), &qword_27DD73F98, &unk_231E170E0);
  v34 = OUTLINED_FUNCTION_59_0();
  v36 = v35(v34);
  if (v36 == *MEMORY[0x277D42288])
  {
    v37 = *(v10 + 560);
    v38 = OUTLINED_FUNCTION_59_0();
    v39(v38);
    *(v10 + 576) = *v37;
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    *(v10 + 584) = v40;
    *v40 = v41;
    v40[1] = sub_231CF8910;
    OUTLINED_FUNCTION_39();

    return sub_231CF98F4(v42, v43, v44, v45, v46, v47, v48, v49, a9, SBYTE1(a9), a10);
  }

  v51 = *(v10 + 560);
  if (v36 != *MEMORY[0x277D42290])
  {
    v74 = OUTLINED_FUNCTION_59_0();
    v75(v74);
    goto LABEL_2;
  }

  v52 = OUTLINED_FUNCTION_59_0();
  v53(v52);
  v54 = *v51;
  *(v10 + 232) = &unk_2846F07A0;
  *(v10 + 240) = sub_231CC7270();
  *(v10 + 208) = 3;
  v55 = sub_231E0FA80();
  __swift_destroy_boxed_opaque_existential_0((v10 + 208));
  if ((v55 & 1) == 0)
  {

    goto LABEL_21;
  }

  v56 = *(v54 + 16);

  if (!v56)
  {
LABEL_21:
    v77 = *(v10 + 288);
    sub_231CF4BD8();
    v97 = v78;
    if (*(v77 + 32))
    {
      v92 = 1;
    }

    else
    {
      sub_231E11120();
      v92 = 0;
    }

    v79 = *(v10 + 520);
    v98 = *(v10 + 296);
    v99 = *(v10 + 440);
    v80 = *(v10 + 673);
    v81 = *(v10 + 672);
    v83 = *(v10 + 264);
    v82 = *(v10 + 272);
    v84 = sub_231E11130();
    __swift_storeEnumTagSinglePayload(v79, v92, 1, v84);

    MEMORY[0x23837C3F0](v83, v82, v97, v81, v80, v79, MEMORY[0x277D84F90]);
    type metadata accessor for GenerativeModelsHandleResolver();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD740A8, &unk_231E13540);
    v85 = OUTLINED_FUNCTION_88_1();
    OUTLINED_FUNCTION_6(v85);
    v86 = OUTLINED_FUNCTION_19_3();
    *(v86 + 16) = xmmword_231E138E0;
    sub_231E100E0();
    sub_231E10150();
    OUTLINED_FUNCTION_0_11();
    sub_231CFDB0C(v87, v88, MEMORY[0x277D42328]);
    v89 = sub_231E090CC(v86);
    sub_231CD1550(v89, v98, v99);

    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    *(v10 + 624) = v90;
    *v90 = v91;
    v90[1] = sub_231CF8C54;
    v31 = *(v10 + 552);
    v32 = *(v10 + 496);
    v33 = *(v10 + 440);
    goto LABEL_6;
  }

  v57 = *(v10 + 256);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74570, &qword_231E170F0);
  v58 = sub_231E10340();
  OUTLINED_FUNCTION_24();
  v60 = v59;
  v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v62 = swift_allocObject();
  *(v10 + 600) = v62;
  *(v62 + 16) = xmmword_231E138E0;
  (*(v60 + 16))(v62 + v61, v57, v58);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v10 + 608) = v63;
  *v63 = v64;
  v63[1] = sub_231CF8B4C;
  OUTLINED_FUNCTION_39();

  return sub_231CFAE30(v65, v66, v67, v68, v69, v70, v71, v72, a9);
}

uint64_t sub_231CF8910()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 592) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CF8A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_56_3();
  sub_231CC154C(*(v22 + 568), &qword_27DD73F98, &unk_231E170E0);
  OUTLINED_FUNCTION_11_6(*(v22 + 568));

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_39();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_231CF8B4C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 616) = v0;

  if (!v0)
  {
    swift_setDeallocating();
    sub_231CFE3EC();
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CF8C54()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 632) = v0;

  OUTLINED_FUNCTION_90_1();
  (*(*(v1 + 424) + 8))(*(v5 + 440), *(v1 + 416));
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231CF8DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_70_1(v25);
  v26 = OUTLINED_FUNCTION_14_2();
  v27(v26);
  v28 = OUTLINED_FUNCTION_13_5();
  v29(v28);
  sub_231E11400();
  v30 = sub_231E113C0();
  if (OUTLINED_FUNCTION_29_3(v30) == 1)
  {
    sub_231CC154C(v24[44], &qword_27DD74548, &qword_231E170A0);
  }

  else
  {
    sub_231E113B0();
    OUTLINED_FUNCTION_16();
    v31 = OUTLINED_FUNCTION_48();
    v32(v31);
  }

  v33 = v24[79];
  sub_231CFE0D8(v24[51], v24[50], &qword_27DD74530, &qword_231E17080);
  sub_231CF4764();
  OUTLINED_FUNCTION_58_3(v34, v35, v24 + 14);
  v53 = v33;
  v36 = v24[71];
  v37 = v24[69];
  v38 = v24[67];
  v39 = v24[66];
  v40 = v24[62];
  v41 = v24[56];
  v42 = v24[57];
  sub_231CC154C(v24[51], &qword_27DD74530, &qword_231E17080);
  (*(v42 + 8))(v40, v41);
  (*(v38 + 8))(v37, v39);
  sub_231CC154C(v36, &qword_27DD73F98, &unk_231E170E0);
  OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_11_6(v43);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_51_2();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v53, a21, a22, a23, a24);
}

uint64_t sub_231CF9004()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 664) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CF9104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_62_0();
  v25 = *(v24 + 512);

  v26 = OUTLINED_FUNCTION_48();
  v27(v26);
  v28 = OUTLINED_FUNCTION_70();
  v29(v28);
  sub_231CC154C(v25, &qword_27DD74560, &qword_231E170D8);
  OUTLINED_FUNCTION_2_7(*(v24 + 664));

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_51_2();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_231CF9268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_62_0();
  v25 = v24[46];
  v58 = v24[45];
  v59 = v24[47];
  v26 = v24[43];
  v27 = v24[35];
  (*(v24[67] + 8))(v24[68], v24[66]);
  v28 = OUTLINED_FUNCTION_48();
  v29(v28);
  sub_231E11410();
  v30 = OUTLINED_FUNCTION_102_0();
  v31(v30);
  (*(v25 + 16))(v59, v27, v58);
  sub_231E11400();
  v32 = sub_231E113C0();
  if (__swift_getEnumTagSinglePayload(v26, 1, v32) == 1)
  {
    sub_231CC154C(v24[43], &qword_27DD74548, &qword_231E170A0);
  }

  else
  {
    sub_231E113B0();
    OUTLINED_FUNCTION_16();
    v33 = OUTLINED_FUNCTION_48();
    v34(v33);
  }

  v35 = v24[83];
  v36 = v24[81];
  v37 = v24[58];
  v38 = v24[47];
  v39 = v24[31];
  sub_231CFE0D8(v24[49], v24[50], &qword_27DD74530, &qword_231E17080);
  sub_231CF4764();
  v40 = sub_231CFAD78(v36);
  sub_231CF4E98(v24 + 2, v37, v38, v40, v39);
  v60 = v35;
  v41 = v24[64];
  v42 = v24[60];
  v44 = v24[56];
  v43 = v24[57];
  v45 = v24[49];

  sub_231CC154C(v45, &qword_27DD74530, &qword_231E17080);
  (*(v43 + 8))(v42, v44);
  v46 = OUTLINED_FUNCTION_67_2();
  v47(v46);
  sub_231CC154C(v41, &qword_27DD74560, &qword_231E170D8);
  OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_11_6(v48);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_51_2();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v58, v60, a21, a22, a23, a24);
}

uint64_t sub_231CF9560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_62_0();
  v25 = *(v24 + 568);

  sub_231CC154C(v25, &qword_27DD73F98, &unk_231E170E0);
  OUTLINED_FUNCTION_2_7(*(v24 + 592));

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_51_2();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_231CF9688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_62_0();
  v25 = *(v24 + 568);
  swift_setDeallocating();
  sub_231CFE3EC();
  sub_231CC154C(v25, &qword_27DD73F98, &unk_231E170E0);
  OUTLINED_FUNCTION_2_7(*(v24 + 616));

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_51_2();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_231CF97B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_62_0();
  v25 = v24[71];
  (*(v24[67] + 8))(v24[69], v24[66]);
  sub_231CC154C(v25, &qword_27DD73F98, &unk_231E170E0);
  OUTLINED_FUNCTION_2_7(v24[79]);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_51_2();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_231CF98F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, uint64_t a11)
{
  OUTLINED_FUNCTION_18();
  *(v11 + 176) = v12;
  *(v11 + 184) = a11;
  *(v11 + 521) = a10;
  *(v11 + 520) = a9;
  *(v11 + 160) = v13;
  *(v11 + 168) = v14;
  *(v11 + 144) = v15;
  *(v11 + 152) = v16;
  *(v11 + 128) = v17;
  *(v11 + 136) = v18;
  *(v11 + 120) = v19;
  v20 = v18[1];
  *(v11 + 192) = *v18;
  *(v11 + 208) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74548, &qword_231E170A0);
  OUTLINED_FUNCTION_47(v21);
  *(v11 + 224) = OUTLINED_FUNCTION_55();
  v22 = sub_231E106E0();
  *(v11 + 232) = v22;
  OUTLINED_FUNCTION_6(v22);
  *(v11 + 240) = v23;
  *(v11 + 248) = OUTLINED_FUNCTION_55();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_47(v24);
  v25 = OUTLINED_FUNCTION_69();
  v26 = OUTLINED_FUNCTION_87_1(v25);
  OUTLINED_FUNCTION_65_2(v26);
  v27 = sub_231E10F00();
  *(v11 + 272) = v27;
  OUTLINED_FUNCTION_6(v27);
  *(v11 + 280) = v28;
  *(v11 + 288) = OUTLINED_FUNCTION_55();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74578, &qword_231E17108);
  *(v11 + 296) = v29;
  OUTLINED_FUNCTION_6(v29);
  *(v11 + 304) = v30;
  *(v11 + 312) = OUTLINED_FUNCTION_55();
  v31 = sub_231E10F40();
  *(v11 + 320) = v31;
  OUTLINED_FUNCTION_6(v31);
  *(v11 + 328) = v32;
  *(v11 + 336) = OUTLINED_FUNCTION_55();
  v33 = sub_231E11450();
  *(v11 + 344) = v33;
  OUTLINED_FUNCTION_6(v33);
  *(v11 + 352) = v34;
  *(v11 + 360) = OUTLINED_FUNCTION_69();
  *(v11 + 368) = swift_task_alloc();
  *(v11 + 376) = swift_task_alloc();
  *(v11 + 384) = swift_task_alloc();
  v35 = sub_231E10F70();
  *(v11 + 392) = v35;
  OUTLINED_FUNCTION_6(v35);
  *(v11 + 400) = v36;
  *(v11 + 408) = OUTLINED_FUNCTION_69();
  *(v11 + 416) = swift_task_alloc();
  v37 = sub_231E10010();
  *(v11 + 424) = v37;
  OUTLINED_FUNCTION_6(v37);
  *(v11 + 432) = v38;
  *(v11 + 440) = OUTLINED_FUNCTION_55();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74560, &qword_231E170D8);
  OUTLINED_FUNCTION_47(v39);
  *(v11 + 448) = OUTLINED_FUNCTION_69();
  *(v11 + 456) = swift_task_alloc();
  v40 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_33_1(v40, v41, v42);
}

uint64_t sub_231CF9C4C()
{
  if (*(v0[17] + 32))
  {
    v67 = 1;
  }

  else
  {
    sub_231E11120();
    v67 = 0;
  }

  v1 = v0[57];
  v2 = v0[16];
  v3 = sub_231E11130();
  __swift_storeEnumTagSinglePayload(v1, v67, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD740A8, &unk_231E13540);
  v4 = sub_231E10400();
  OUTLINED_FUNCTION_6(v4);
  v6 = *(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_231E138E0;
  sub_231E100E0();
  sub_231E10150();
  OUTLINED_FUNCTION_0_11();
  sub_231CFDB0C(v8, v9, MEMORY[0x277D42328]);
  v10 = v7;
  v0[14] = v7;
  v86 = v0;
  if (v2)
  {
    v75 = v2;
    v11 = v0[16];
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = v0[54];
      v14 = *(v13 + 16);
      v13 += 16;
      v79 = v14;
      v15 = v11 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
      v76 = (v13 - 8);
      v77 = *(v13 + 56);
      v16 = MEMORY[0x277D84F90];
      do
      {
        v17 = v0[55];
        v83 = v86[53];
        v18 = OUTLINED_FUNCTION_83();
        v79(v18);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_231E138E0;
        sub_231E0FF80();

        v20 = v6;
        v21 = MEMORY[0x277D42328];
        sub_231CFDB0C(v19, sub_231CFDF64, MEMORY[0x277D42328]);
        v22 = sub_231E0FF90();
        v23 = v21;
        v6 = v20;
        sub_231CFDB0C(v22, sub_231CFDF64, v23);

        v0 = v86;
        (*v76)(v17, v83);
        v15 += v77;
        --v12;
      }

      while (v12);
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

    OUTLINED_FUNCTION_0_11();
    sub_231CFDB0C(v16, v24, MEMORY[0x277D42328]);
    v10 = v0[14];
    v2 = v75;
  }

  v25 = v0[52];
  v26 = v0[19];
  type metadata accessor for GenerativeModelsHandleResolver();
  v27 = sub_231E090CC(v10);
  v0[58] = v27;
  sub_231CD1550(v27, v26, v25);
  if (v2 && *(v0[16] + 16))
  {
    v29 = v0[56];
    v28 = v0[57];
    v30 = v0[50];
    v78 = v0[49];
    v80 = v0[52];
    v84 = *(v0 + 521);
    v31 = *(v0 + 520);
    v32 = v0[21];
    v33 = v0[20];
    v81 = v0[19];
    v82 = v0[16];

    sub_231CF4BD8();
    v35 = v34;
    sub_231CFE0D8(v28, v29, &qword_27DD74560, &qword_231E170D8);
    v36 = MEMORY[0x277D84F90];
    MEMORY[0x23837C430](v33, v32, v35, v31, v84, v29, MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74598, &qword_231E171A0);
    v37 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v85 = *(v30 + 72);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_231E138E0;
    v39 = *(v30 + 16);
    (v39)(v38 + v37, v80, v78);
    v40 = swift_task_alloc();
    *(v40 + 16) = v27;
    *(v40 + 24) = v81;
    v41 = sub_231CF6BEC(sub_231CFE88C, v40, v82, MEMORY[0x277D4AF68], sub_231CFE580, MEMORY[0x277D42240]);

    sub_231CFDB0C(v41, sub_231CFDE40, MEMORY[0x277D4AF68]);
    v42 = sub_231CFE8B4(v38);

    v43 = v42[2];
    if (v43)
    {
      v44 = v86[50];
      sub_231CFE560(0, v43, 0);
      v45 = v42 + v37;
      v46 = (v44 + 8);
      v47 = v86;
      do
      {
        v48 = v47[51];
        v49 = v47[49];
        OUTLINED_FUNCTION_99_1();
        v39();
        v50 = sub_231E10F50();
        (*v46)(v48, v49);
        v52 = *(v36 + 16);
        v51 = *(v36 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_231CFE560((v51 > 1), v52 + 1, 1);
        }

        *(v36 + 16) = v52 + 1;
        *(v36 + v52 + 32) = v50 & 1;
        v47 = v86;
        v45 += v85;
        --v43;
      }

      while (v43);
    }

    else
    {
      v47 = v86;
    }

    v47[59] = v36;
    OUTLINED_FUNCTION_7_6();
    sub_231CFEB58(v68, v69, MEMORY[0x277D4AF60]);
    OUTLINED_FUNCTION_83();
    sub_231E11140();
    v70 = swift_task_alloc();
    v47[60] = v70;
    *v70 = v47;
    v70[1] = sub_231CFA410;
    v71 = v47[47];
    v72 = v47[42];
    v73 = v47[39];

    return MEMORY[0x2821AB708](v71, v73, v72);
  }

  else
  {
    v54 = v0[56];
    v53 = v0[57];
    v55 = *(v0 + 521);
    v56 = *(v0 + 520);
    v58 = v0[20];
    v57 = v0[21];

    sub_231CF4BD8();
    v60 = v59;
    sub_231CFE0D8(v53, v54, &qword_27DD74560, &qword_231E170D8);
    MEMORY[0x23837C3F0](v58, v57, v60, v56, v55, v54, MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74568, &qword_231E1C7B0);
    v61 = swift_allocObject();
    v0[62] = v61;
    *(v61 + 16) = xmmword_231E138E0;
    *(v61 + 32) = sub_231E10F50() & 1;
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    v0[63] = v62;
    *v62 = v63;
    v62[1] = sub_231CFA7BC;
    v64 = v0[52];
    v65 = v0[46];
    v66 = v0[36];

    return MEMORY[0x2821AB6F0](v65, v64, v66);
  }
}

uint64_t sub_231CFA410()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = v5[39];
  v7 = v5[38];
  v8 = v5[37];
  v9 = *v1;
  OUTLINED_FUNCTION_4();
  *v10 = v9;
  *(v3 + 488) = v0;

  (*(v7 + 8))(v6, v8);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231CFA7BC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 512) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CFAB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_108_1();
  v33 = *(v18 + 488);
  v19 = *(v18 + 456);

  v20 = OUTLINED_FUNCTION_25();
  v21(v20);
  v22 = OUTLINED_FUNCTION_67_2();
  v23(v22);
  sub_231CC154C(v19, &qword_27DD74560, &qword_231E170D8);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_48_3();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_107_1();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, v33, a16, a17, a18);
}

uint64_t sub_231CFAC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_108_1();
  v33 = *(v18 + 512);
  v19 = *(v18 + 456);

  v20 = OUTLINED_FUNCTION_25();
  v21(v20);
  v22 = OUTLINED_FUNCTION_67_2();
  v23(v22);
  sub_231CC154C(v19, &qword_27DD74560, &qword_231E170D8);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_48_3();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_107_1();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, v33, a16, a17, a18);
}

uint64_t sub_231CFAD78(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 31;
  for (i = 32; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_10;
    }

    v6 = *(v1 + 16);
    if (i - 32 >= v6)
    {
      break;
    }

    if (v4 - 32 >= v6)
    {
      goto LABEL_13;
    }

    v7 = *(v1 + i);
    v8 = *(v1 + v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_231CFE878(v1);
      v1 = result;
    }

    *(v1 + i) = v8;
    *(v1 + v4) = v7;
LABEL_10:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_231CFAE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_18();
  *(v10 + 296) = a9;
  *(v10 + 304) = v9;
  *(v10 + 617) = v11;
  *(v10 + 616) = v12;
  OUTLINED_FUNCTION_61_2(v13, v14, v15, v16, v17, v12, v11, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74548, &qword_231E170A0);
  OUTLINED_FUNCTION_47(v19);
  *(v10 + 344) = OUTLINED_FUNCTION_69();
  *(v10 + 352) = swift_task_alloc();
  v20 = sub_231E106E0();
  *(v10 + 360) = v20;
  OUTLINED_FUNCTION_6(v20);
  *(v10 + 368) = v21;
  *(v10 + 376) = OUTLINED_FUNCTION_69();
  *(v10 + 384) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_47(v22);
  *(v10 + 392) = OUTLINED_FUNCTION_69();
  *(v10 + 400) = swift_task_alloc();
  *(v10 + 408) = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74578, &qword_231E17108);
  *(v10 + 416) = v23;
  OUTLINED_FUNCTION_6(v23);
  *(v10 + 424) = v24;
  *(v10 + 432) = OUTLINED_FUNCTION_69();
  *(v10 + 440) = swift_task_alloc();
  v25 = sub_231E11450();
  *(v10 + 448) = v25;
  OUTLINED_FUNCTION_6(v25);
  *(v10 + 456) = v26;
  *(v10 + 464) = OUTLINED_FUNCTION_69();
  *(v10 + 472) = swift_task_alloc();
  *(v10 + 480) = swift_task_alloc();
  *(v10 + 488) = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F98, &unk_231E170E0);
  OUTLINED_FUNCTION_47(v27);
  *(v10 + 496) = OUTLINED_FUNCTION_55();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74580, &qword_231E17110);
  OUTLINED_FUNCTION_47(v28);
  *(v10 + 504) = OUTLINED_FUNCTION_55();
  v29 = sub_231E10340();
  *(v10 + 512) = v29;
  OUTLINED_FUNCTION_6(v29);
  *(v10 + 520) = v30;
  *(v10 + 528) = OUTLINED_FUNCTION_69();
  *(v10 + 536) = swift_task_alloc();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74560, &qword_231E170D8);
  OUTLINED_FUNCTION_47(v31);
  *(v10 + 544) = OUTLINED_FUNCTION_55();
  v32 = sub_231E10F40();
  *(v10 + 552) = v32;
  OUTLINED_FUNCTION_6(v32);
  *(v10 + 560) = v33;
  *(v10 + 568) = OUTLINED_FUNCTION_55();
  v34 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_33_1(v34, v35, v36);
}

uint64_t sub_231CFB72C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 584) = v0;

  OUTLINED_FUNCTION_90_1();
  (*(*(v1 + 424) + 8))(*(v5 + 440), *(v1 + 416));
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231CFB87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_70_1(v23);
  v24 = OUTLINED_FUNCTION_14_2();
  v25(v24);
  v26 = OUTLINED_FUNCTION_13_5();
  v27(v26);
  sub_231E11400();
  v28 = sub_231E113C0();
  if (OUTLINED_FUNCTION_29_3(v28) == 1)
  {
    sub_231CC154C(v22[44], &qword_27DD74548, &qword_231E170A0);
  }

  else
  {
    sub_231E113B0();
    OUTLINED_FUNCTION_16();
    v29 = OUTLINED_FUNCTION_48();
    v30(v29);
  }

  v31 = v22[73];
  sub_231CFE0D8(v22[51], v22[50], &qword_27DD74530, &qword_231E17080);
  sub_231CF4764();
  OUTLINED_FUNCTION_58_3(v32, v33, v22 + 14);
  OUTLINED_FUNCTION_44_3();
  v34 = v22[61];
  v36 = v22[56];
  v35 = v22[57];
  sub_231CC154C(v22[51], &qword_27DD74530, &qword_231E17080);
  (*(v35 + 8))(v34, v36);
  v37 = OUTLINED_FUNCTION_70();
  v38(v37);
  v39 = OUTLINED_FUNCTION_30_3();
  v40(v39);
  OUTLINED_FUNCTION_33_4();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_39();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, v31, a19, a20, a21, a22);
}

uint64_t sub_231CFBAAC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 608) = v0;

  OUTLINED_FUNCTION_90_1();
  (*(*(v1 + 424) + 8))(*(v5 + 432), *(v1 + 416));
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231CFBBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_56_3();
  sub_231E11410();
  v23 = OUTLINED_FUNCTION_14_2();
  v24(v23);
  v25 = OUTLINED_FUNCTION_13_5();
  v26(v25);
  sub_231E11400();
  v27 = sub_231E113C0();
  if (OUTLINED_FUNCTION_29_3(v27) == 1)
  {
    sub_231CC154C(v22[43], &qword_27DD74548, &qword_231E170A0);
  }

  else
  {
    sub_231E113B0();
    OUTLINED_FUNCTION_16();
    v28 = OUTLINED_FUNCTION_48();
    v29(v28);
  }

  v30 = v22[76];
  sub_231CFE0D8(v22[49], v22[50], &qword_27DD74530, &qword_231E17080);
  sub_231CF4764();
  OUTLINED_FUNCTION_58_3(v31, v32, v22 + 2);
  OUTLINED_FUNCTION_44_3();
  v33 = v22[49];

  sub_231CC154C(v33, &qword_27DD74530, &qword_231E17080);
  v34 = OUTLINED_FUNCTION_70();
  v35(v34);
  v36 = OUTLINED_FUNCTION_30_3();
  v37(v36);
  OUTLINED_FUNCTION_33_4();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_39();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, v30, a19, a20, a21, a22);
}

uint64_t sub_231CFBE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_44_3();
  (*(v22[65] + 8))(v22[67], v22[64]);
  v23 = OUTLINED_FUNCTION_30_3();
  v24(v23);
  OUTLINED_FUNCTION_32_3();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_39();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_231CFBF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_44_3();

  v22 = OUTLINED_FUNCTION_30_3();
  v23(v22);
  OUTLINED_FUNCTION_32_3();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_39();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_231CFC060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_231E10340();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_231CFC108()
{
  OUTLINED_FUNCTION_18();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v1[16] = v5;
  v6 = sub_231E0F630();
  OUTLINED_FUNCTION_47(v6);
  v1[21] = OUTLINED_FUNCTION_55();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74470, &qword_231E17120);
  OUTLINED_FUNCTION_47(v7);
  v1[22] = OUTLINED_FUNCTION_69();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_47(v8);
  v9 = OUTLINED_FUNCTION_69();
  v1[26] = OUTLINED_FUNCTION_89_1(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74590, &qword_231E17128);
  v1[27] = v10;
  OUTLINED_FUNCTION_6(v10);
  v1[28] = v11;
  v1[29] = OUTLINED_FUNCTION_55();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74560, &qword_231E170D8);
  OUTLINED_FUNCTION_47(v12);
  v1[30] = OUTLINED_FUNCTION_55();
  v13 = sub_231E11150();
  v1[31] = v13;
  OUTLINED_FUNCTION_6(v13);
  v1[32] = v14;
  v15 = OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_65_2(v15);
  v16 = sub_231E11170();
  v1[34] = v16;
  OUTLINED_FUNCTION_6(v16);
  v1[35] = v17;
  v1[36] = OUTLINED_FUNCTION_55();
  v18 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_231CFC314()
{
  v1 = v0[30];
  (*(v0[32] + 104))(v0[33], *MEMORY[0x277D4B030], v0[31]);
  v2 = sub_231E11130();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  sub_231E11160();
  v3 = sub_231E10AA0();
  v5 = v4;
  v0[37] = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  v0[38] = v6;
  *v6 = v7;
  v6[1] = sub_231CFC444;
  v8 = v0[36];
  v9 = v0[29];
  v10 = v0[18];
  v11 = v0[19];

  return MEMORY[0x2821AB6E8](v9, v3, v5, v8, v10, v11);
}

uint64_t sub_231CFC444()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 312) = v0;

  OUTLINED_FUNCTION_90_1();

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231CFC560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_56_3();
  v43 = v22[35];
  v44 = v22[34];
  v45 = v22[36];
  v23 = v22[29];
  v46 = v22[33];
  v47 = v22[30];
  v24 = v22[27];
  v25 = v22[26];
  v26 = v22[23];
  v27 = v22[24];
  v40 = v22[25];
  v28 = v22[21];
  v39 = v22[22];
  v41 = v22[16];
  v42 = v22[28];
  MEMORY[0x23837C6B0](v24);
  sub_231E111A0();
  v29 = sub_231E0F5F0();
  __swift_storeEnumTagSinglePayload(v27, 1, 1, v29);
  sub_231E0F620();
  sub_231E0F600();
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v29);
  __swift_storeEnumTagSinglePayload(v39, 1, 1, v29);
  sub_231CFE0D8(v25, v40, &qword_27DD74530, &qword_231E17080);
  sub_231CF4764();
  sub_231D48A80(v27, v26, v39, 1, v22 + 2, 0, v41);
  sub_231CC154C(v25, &qword_27DD74530, &qword_231E17080);
  (*(v42 + 8))(v23, v24);
  (*(v43 + 8))(v45, v44);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_39();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, v39, v27, v40, v41, v42, v28, v43, v44, v45, v46, v47, a20, a21, a22);
}

uint64_t sub_231CFC76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  v22 = v12[21];
  (*(v12[35] + 8))(v12[36], v12[34]);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_44();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, v22, a10, a11, a12);
}

uint64_t sub_231CFC848()
{

  return swift_deallocClassInstance();
}

uint64_t sub_231CFC8A4()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_6_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_6(v1);
  OUTLINED_FUNCTION_66_0();

  return sub_231CF61A4();
}

uint64_t sub_231CFC930()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_6_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_6(v1);
  OUTLINED_FUNCTION_66_0();

  return sub_231CF65F4();
}

uint64_t sub_231CFC9BC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_6_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_6(v1);
  OUTLINED_FUNCTION_66_0();

  return sub_231CF6DF0();
}

uint64_t sub_231CFCA48()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_6_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_6(v1);
  OUTLINED_FUNCTION_66_0();

  return sub_231CF7580();
}

uint64_t sub_231CFCAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_42_3();
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_17(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_37_2(v10);
  OUTLINED_FUNCTION_44();

  return sub_231CF7E8C(v12, v13, v14, v15, v16, v17, v18, v19, a9);
}

uint64_t sub_231CFCB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_42_3();
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_17(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_37_2(v10);
  OUTLINED_FUNCTION_44();

  return sub_231CFAE30(v12, v13, v14, v15, v16, v17, v18, v19, a9);
}

uint64_t sub_231CFCBF4()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  v1[1] = sub_231CC6BF8;

  return sub_231CFC108();
}

BOOL sub_231CFCCB0(char *a1, char *a2)
{
  v22 = a1;
  v4 = sub_231E11180();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_231CFEB58(&qword_2814CAFE8, MEMORY[0x277D4B060], MEMORY[0x277D4B068]);
  v27 = a2;
  v9 = sub_231E11550();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_231CFD2D0(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_231CFEB58(&qword_27DD745B0, MEMORY[0x277D4B060], MEMORY[0x277D4B070]);
    v15 = sub_231E115D0();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

uint64_t sub_231CFCF78(uint64_t a1)
{
  v2 = v1;
  v36 = sub_231E11180();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD745B8, &qword_231E171B8);
  result = sub_231E11D40();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
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
        goto LABEL_29;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_231CFD55C(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_231CFEB58(&qword_2814CAFE8, MEMORY[0x277D4B060], MEMORY[0x277D4B068]);
    result = sub_231E11550();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_231CFD2D0(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_231E11180();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_231CFCF78(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_231CFD7F4(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_231CFEB58(&qword_2814CAFE8, MEMORY[0x277D4B060], MEMORY[0x277D4B068]);
      v13 = sub_231E11550();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_231CFEB58(&qword_27DD745B0, MEMORY[0x277D4B060], MEMORY[0x277D4B070]);
        v15 = sub_231E115D0();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_231CFD5C0();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_231E12150();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_231CFD55C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_231E13680;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_231CFD5C0()
{
  v1 = v0;
  v2 = sub_231E11180();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD745B8, &qword_231E171B8);
  v6 = *v0;
  v7 = sub_231E11D30();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_231CFD7F4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_231E11180();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD745B8, &qword_231E171B8);
  v7 = sub_231E11D40();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_231CFEB58(&qword_2814CAFE8, MEMORY[0x277D4B060], MEMORY[0x277D4B068]);
        result = sub_231E11550();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_231CFDB0C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(*v3 + 16);
  result = v6 + v5;
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_231CFDC20(result, 1, a2);
  v9 = *v3;
  if (!*(a1 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = a3(0);
  if (v10 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v3 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v12 = __OFADD__(v11, v5);
  v13 = v11 + v5;
  if (!v12)
  {
    *(v9 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_231CFDC20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

void sub_231CFDC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = sub_231E10F70();
  v11 = *(*(v10 - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v13 = v10;
  v23 = *(v10 - 8);
  v14 = v9 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v15 = v14 + v11 * a1;
  swift_arrayDestroy();
  v16 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v24 = v15 + v11 * a3;
  if (v16)
  {
    v17 = *(v9 + 16);
    if (!__OFSUB__(v17, a2))
    {
      sub_231CFE228(v14 + v11 * a2, v17 - a2, v24, MEMORY[0x277D4AF68]);
      v18 = *(v9 + 16);
      v19 = __OFADD__(v18, v16);
      v20 = v18 + v16;
      if (!v19)
      {
        *(v9 + 16) = v20;
        goto LABEL_7;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_7:
  if (a3 < 1 || v11 * a3 < 1)
  {
LABEL_14:
    sub_231CC154C(a4, &qword_27DD74538, &unk_231E17088);
    return;
  }

  v22 = 0;
  while ((v22 & 1) == 0)
  {
    (*(v23 + 16))(v15, a4, v13);
    v15 += v11;
    v22 = 1;
    if (v15 >= v24)
    {
      goto LABEL_14;
    }
  }

LABEL_19:
  __break(1u);
}

void *sub_231CFDE40(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_231CFE2F8(v9, a2, &qword_27DD74598, &qword_231E171A0, MEMORY[0x277D4AF68]);
  v11 = *(sub_231E10F70() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_231CFE228(a4 + v12, v9, v10 + v12, MEMORY[0x277D4AF68]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_231CFDF64(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_231CFE2F8(v9, a2, &qword_27DD740A8, &unk_231E13540, MEMORY[0x277D42328]);
  v11 = *(sub_231E10400() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_231CFE228(a4 + v12, v9, v10 + v12, MEMORY[0x277D42328]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_231CFE0D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_59_0();
  v6(v5);
  return a2;
}

char *sub_231CFE134(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74568, &qword_231E1C7B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_231CFE228(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_12(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_102_0();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_102_0();

    swift_arrayInitWithTakeBackToFront();
  }
}

void *sub_231CFE2F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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

uint64_t sub_231CFE3EC()
{
  sub_231E10340();
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

char *sub_231CFE560(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_231CFE784(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_231CFE5D8()
{
  OUTLINED_FUNCTION_118();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v16 = v7(0);
  OUTLINED_FUNCTION_6(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v22 = _swift_stdlib_malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v22 - v20 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((v22 - v20) / v18);
LABEL_19:
  v7(0);
  OUTLINED_FUNCTION_79();
  if (v10)
  {
    sub_231CFE228(v8 + v24, v14, v21 + v24, v5);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_113();
}

char *sub_231CFE784(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74568, &qword_231E1C7B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_231CFE8B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_231CFE2F8(*(a1 + 16), 0, &qword_27DD74598, &qword_231E171A0, MEMORY[0x277D4AF68]);
  v4 = *(sub_231E10F70() - 8);
  v5 = sub_231CFE9A4(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v1, a1);

  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_231CFE9A4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v7 = 0;
LABEL_11:
    v10 = *(a4 + 16);
LABEL_12:
    *v5 = a4;
    v5[1] = v10;
    return v7;
  }

  v7 = a3;
  if (!a3)
  {
    goto LABEL_11;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    for (i = 0; ; --i)
    {
      v10 = v6 + i;
      if (!(v6 + i))
      {
        v7 = v6;
        goto LABEL_12;
      }

      if (v10 > *(a4 + 16))
      {
        break;
      }

      v11 = v10 - 1;
      v12 = sub_231E10F70();
      v13 = *(v12 - 8);
      v14 = *(v13 + 72);
      result = (*(v13 + 16))(v8, a4 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + v14 * v11, v12);
      if (v7 + i == 1)
      {
        v10 = v6 + i - 1;
        goto LABEL_12;
      }

      v8 += v14;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_231CFEB04()
{
  result = qword_2814CBBB0[0];
  if (!qword_2814CBBB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814CBBB0);
  }

  return result;
}

uint64_t sub_231CFEB58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_19_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_21_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[19] = a6;
  v7[20] = v6;
  v7[17] = a4;
  v7[18] = a5;
  v7[15] = a2;
  v7[16] = a3;
  v7[14] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_3()
{
}

uint64_t OUTLINED_FUNCTION_33_4()
{
}

uint64_t OUTLINED_FUNCTION_37_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v4 + 32) = v2;
  return v3;
}

uint64_t OUTLINED_FUNCTION_48_3()
{
}

uint64_t OUTLINED_FUNCTION_49_3()
{
}

void *OUTLINED_FUNCTION_58_3(uint64_t a1, uint64_t a2, void *a3)
{

  return sub_231CF4E98(a3, v3, v4, 0, v5);
}

__n128 OUTLINED_FUNCTION_61_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 280) = a5;
  *(v8 + 288) = a8;
  *(v8 + 264) = a3;
  *(v8 + 272) = a4;
  *(v8 + 248) = a1;
  *(v8 + 256) = a2;
  result = *a8;
  v10 = *(a8 + 16);
  *(v8 + 312) = *a8;
  *(v8 + 328) = v10;
  return result;
}

uint64_t OUTLINED_FUNCTION_70_1(uint64_t a1)
{

  return sub_231E11410();
}

uint64_t OUTLINED_FUNCTION_71_2()
{
}

uint64_t OUTLINED_FUNCTION_72_1(uint64_t a1)
{

  return sub_231E11410();
}

void *OUTLINED_FUNCTION_73_1(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  return sub_231CF4E98((v17 + 16), v19, v16, a1, v18);
}

uint64_t OUTLINED_FUNCTION_85_1()
{
}

uint64_t OUTLINED_FUNCTION_86_1(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{

  return sub_231CF6BEC(a1, v7, v6, a4, a5, a6);
}

uint64_t OUTLINED_FUNCTION_87_1(uint64_t a1)
{
  *(v1 + 256) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_88_1()
{

  return sub_231E10400();
}

uint64_t OUTLINED_FUNCTION_89_1(uint64_t a1)
{
  *(v1 + 200) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_109_1()
{

  return type metadata accessor for GenerativeModelsHandleResolver();
}

uint64_t OUTLINED_FUNCTION_110_1(uint64_t a1)
{
  *(v1 + 320) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_111_1()
{
}

BOOL OUTLINED_FUNCTION_112_1()
{
  v3 = *(v1 - 128);

  return sub_231CFCCB0(v3, v0);
}

uint64_t OUTLINED_FUNCTION_116_1()
{
}

uint64_t OUTLINED_FUNCTION_117_1()
{

  return sub_231E11C90();
}

uint64_t OUTLINED_FUNCTION_119_0(uint64_t a1)
{
  *(v1 + 232) = a1;

  return sub_231E11450();
}

uint64_t OUTLINED_FUNCTION_120_0(uint64_t a1)
{
  *(v1 + 168) = a1;

  return sub_231E106E0();
}

uint64_t sub_231CFF338(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 96))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_231CFF38C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_231CFF408(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD745C0, &qword_231E17240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231CFF470(id *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD745C0, &qword_231E17240);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = [objc_opt_self() defaultManager];
  v6 = [v5 containerURLForSecurityApplicationGroupIdentifier_];

  if (v6)
  {
    sub_231E0F730();

    v7 = sub_231E0F780();
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v7);
    sub_231CFF408(v4);
    v8 = sub_231E11620();
    v10 = v9;
    v11 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v12 = sub_231CC8DEC(v8, v10);
    if (v12)
    {
      v13 = v12;
      v14 = *a1;
      v15 = [v13 BOOLForKey_];

      if (v15)
      {
        return 0;
      }
    }
  }

  else
  {
    v17 = sub_231E0F780();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v17);
    sub_231CFF408(v4);
  }

  return 1;
}

void sub_231CFF668(uint64_t a1, unint64_t a2, char a3)
{
  switch(a3)
  {
    case 6:
      OUTLINED_FUNCTION_12_6();
      sub_231E11D70();

      OUTLINED_FUNCTION_51_3();
      OUTLINED_FUNCTION_43_5();
      goto LABEL_8;
    case 7:
    case 10:
      OUTLINED_FUNCTION_12_6();
      sub_231E11D70();

      OUTLINED_FUNCTION_51_3();
      OUTLINED_FUNCTION_43_5();
      goto LABEL_10;
    case 8:
      OUTLINED_FUNCTION_12_6();
      sub_231E11D70();
      OUTLINED_FUNCTION_40_3();
      goto LABEL_12;
    case 9:
    case 11:
      OUTLINED_FUNCTION_12_6();
      sub_231E11D70();
      OUTLINED_FUNCTION_40_3();
      OUTLINED_FUNCTION_22_4();
      OUTLINED_FUNCTION_49_4();
      MEMORY[0x23837CC20]();
LABEL_8:
      sub_231DAA23C(a1);
      OUTLINED_FUNCTION_61_3();

      return;
    case 12:
      OUTLINED_FUNCTION_12_6();
      sub_231E11D70();
      OUTLINED_FUNCTION_40_3();
      OUTLINED_FUNCTION_22_4();
      OUTLINED_FUNCTION_49_4();
      MEMORY[0x23837CC20]();
LABEL_10:
      v5 = a1;
      v6 = a2;
      goto LABEL_13;
    case 13:
      switch(a1)
      {
        case 1:
        case 8:
        case 33:
        case 45:
          OUTLINED_FUNCTION_59_3();
          OUTLINED_FUNCTION_0();
          break;
        case 2:
        case 3:
        case 5:
        case 6:
        case 7:
        case 9:
        case 10:
        case 11:
        case 12:
        case 14:
        case 15:
        case 16:
        case 18:
        case 19:
        case 20:
        case 21:
        case 23:
        case 24:
        case 25:
        case 26:
        case 28:
        case 29:
        case 30:
        case 31:
        case 32:
        case 34:
        case 35:
        case 37:
        case 38:
        case 39:
        case 40:
        case 41:
        case 42:
        case 43:
        case 44:
        case 46:
        case 47:
        case 48:
        case 49:
        case 51:
        case 55:
        case 56:
        case 57:
        case 58:
          OUTLINED_FUNCTION_4_8();
          break;
        case 22:
          return;
        default:
          OUTLINED_FUNCTION_0();
          OUTLINED_FUNCTION_43_5();
          break;
      }

      return;
    default:
      OUTLINED_FUNCTION_12_6();
      sub_231E11D70();
      OUTLINED_FUNCTION_40_3();
      OUTLINED_FUNCTION_22_4();
LABEL_12:
      OUTLINED_FUNCTION_49_4();
      MEMORY[0x23837CC20]();
      sub_231E120D0();
      OUTLINED_FUNCTION_61_3();

      v5 = OUTLINED_FUNCTION_52_4();
      v6 = v7 & 0xFFFF0000FFFFLL | 0xEC00000029730000;
LABEL_13:
      MEMORY[0x23837CC20](v5, v6);
      return;
  }
}

void sub_231CFFD6C(uint64_t a1, unint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      OUTLINED_FUNCTION_12_6();
      sub_231E11D70();
      OUTLINED_FUNCTION_40_3();
      OUTLINED_FUNCTION_49_4();
      v5 = OUTLINED_FUNCTION_58_4();
      goto LABEL_16;
    case 2:
      OUTLINED_FUNCTION_12_6();
      sub_231E11D70();
      OUTLINED_FUNCTION_40_3();
      OUTLINED_FUNCTION_25_3();
      OUTLINED_FUNCTION_49_4();
      MEMORY[0x23837CC20]();
      sub_231E120D0();
      goto LABEL_11;
    case 6:
    case 11:
      OUTLINED_FUNCTION_12_6();
      sub_231E11D70();
      OUTLINED_FUNCTION_40_3();
      OUTLINED_FUNCTION_25_3();
      OUTLINED_FUNCTION_49_4();
      MEMORY[0x23837CC20]();
      goto LABEL_10;
    case 7:
      OUTLINED_FUNCTION_12_6();
      sub_231E11D70();
      OUTLINED_FUNCTION_40_3();
      OUTLINED_FUNCTION_25_3();
      OUTLINED_FUNCTION_49_4();
      MEMORY[0x23837CC20]();
      goto LABEL_13;
    case 8:
      OUTLINED_FUNCTION_12_6();
      sub_231E11D70();
      OUTLINED_FUNCTION_40_3();
      goto LABEL_15;
    case 9:
      OUTLINED_FUNCTION_12_6();
      sub_231E11D70();

      OUTLINED_FUNCTION_51_3();
LABEL_10:
      sub_231DAA23C(a1);
LABEL_11:
      OUTLINED_FUNCTION_61_3();

      return;
    case 10:
    case 12:
      OUTLINED_FUNCTION_12_6();
      sub_231E11D70();

      OUTLINED_FUNCTION_51_3();
LABEL_13:
      v6 = a1;
      v7 = a2;
      goto LABEL_17;
    case 13:
      switch(a1)
      {
        case 26:
        case 42:
        case 57:
          OUTLINED_FUNCTION_58_4();
          OUTLINED_FUNCTION_0();
          break;
        case 30:
        case 39:
          OUTLINED_FUNCTION_0();
          break;
        default:
          OUTLINED_FUNCTION_3_9();
          break;
      }

      return;
    default:
      OUTLINED_FUNCTION_12_6();
      sub_231E11D70();
      OUTLINED_FUNCTION_40_3();
      OUTLINED_FUNCTION_25_3();
LABEL_15:
      OUTLINED_FUNCTION_49_4();
LABEL_16:
      MEMORY[0x23837CC20](v5);
      sub_231E120D0();
      OUTLINED_FUNCTION_61_3();

      v6 = OUTLINED_FUNCTION_52_4();
      v7 = v8 & 0xFFFF0000FFFFLL | 0xEB00000000730000;
LABEL_17:
      MEMORY[0x23837CC20](v6, v7);
      return;
  }
}

uint64_t sub_231D00484(unint64_t a1, uint64_t a2, char a3)
{
  if (a1 <= 0x37)
  {
    v3 = 0x800F80C0000000uLL >> a1;
  }

  else
  {
    v3 = 0;
  }

  if (a3 == 13)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_231D004C0(uint64_t a1, uint64_t a2, char a3)
{
  result = 15;
  switch(a3)
  {
    case 1:
      result = 18;
      break;
    case 2:
      result = 19;
      break;
    case 3:
      result = 23;
      break;
    case 4:
      result = 24;
      break;
    case 5:
      result = 25;
      break;
    case 6:
      result = 33;
      break;
    case 7:
      result = 34;
      break;
    case 8:
      result = 64;
      break;
    case 9:
      result = 66;
      break;
    case 10:
      result = 67;
      break;
    case 11:
      result = 69;
      break;
    case 12:
      result = 70;
      break;
    case 13:
      result = qword_231E1BDE8[a1];
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_231D0055C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 != 1)
      {
        goto LABEL_199;
      }

      goto LABEL_35;
    case 2:
      if (a6 != 2)
      {
        goto LABEL_199;
      }

      goto LABEL_35;
    case 3:
      if (a6 != 3)
      {
        goto LABEL_199;
      }

      goto LABEL_35;
    case 4:
      if (a6 != 4)
      {
        goto LABEL_199;
      }

      goto LABEL_35;
    case 5:
      if (a6 != 5)
      {
        goto LABEL_199;
      }

      goto LABEL_35;
    case 6:
      if (a6 == 6)
      {
        return sub_231D00B30(a1, a4);
      }

      goto LABEL_199;
    case 7:
      if (a6 != 7)
      {
        goto LABEL_199;
      }

      goto LABEL_29;
    case 8:
      if (a6 == 8)
      {
        goto LABEL_35;
      }

      goto LABEL_199;
    case 9:
      if (a6 != 9)
      {
        goto LABEL_199;
      }

      return sub_231D00B30(a1, a4);
    case 10:
      if (a6 == 10)
      {
        goto LABEL_29;
      }

      goto LABEL_199;
    case 11:
      if (a6 != 11)
      {
        goto LABEL_199;
      }

      return sub_231D00B30(a1, a4);
    case 12:
      if (a6 != 12)
      {
        goto LABEL_199;
      }

LABEL_29:
      if (a1 == a4 && a2 == a5)
      {
LABEL_215:
        result = OUTLINED_FUNCTION_42_0();
      }

      else
      {
        result = sub_231E12100();
      }

      break;
    case 13:
      switch(a1)
      {
        case 1:
          v8 = a6 == 13 && a4 == 1;
          goto LABEL_195;
        case 2:
          v8 = a6 == 13 && a4 == 2;
          goto LABEL_195;
        case 3:
          v8 = a6 == 13 && a4 == 3;
          goto LABEL_195;
        case 4:
          v8 = a6 == 13 && a4 == 4;
          goto LABEL_195;
        case 5:
          v8 = a6 == 13 && a4 == 5;
          goto LABEL_195;
        case 6:
          v8 = a6 == 13 && a4 == 6;
          goto LABEL_195;
        case 7:
          v8 = a6 == 13 && a4 == 7;
          goto LABEL_195;
        case 8:
          v8 = a6 == 13 && a4 == 8;
          goto LABEL_195;
        case 9:
          v8 = a6 == 13 && a4 == 9;
          goto LABEL_195;
        case 10:
          v8 = a6 == 13 && a4 == 10;
          goto LABEL_195;
        case 11:
          v8 = a6 == 13 && a4 == 11;
          goto LABEL_195;
        case 12:
          v8 = a6 == 13 && a4 == 12;
          goto LABEL_195;
        case 13:
          v8 = a6 == 13 && a4 == 13;
          goto LABEL_195;
        case 14:
          v8 = a6 == 13 && a4 == 14;
          goto LABEL_195;
        case 15:
          v8 = a6 == 13 && a4 == 15;
          goto LABEL_195;
        case 16:
          v8 = a6 == 13 && a4 == 16;
          goto LABEL_195;
        case 17:
          v8 = a6 == 13 && a4 == 17;
          goto LABEL_195;
        case 18:
          v8 = a6 == 13 && a4 == 18;
          goto LABEL_195;
        case 19:
          v8 = a6 == 13 && a4 == 19;
          goto LABEL_195;
        case 20:
          v8 = a6 == 13 && a4 == 20;
          goto LABEL_195;
        case 21:
          v8 = a6 == 13 && a4 == 21;
          goto LABEL_195;
        case 22:
          v8 = a6 == 13 && a4 == 22;
          goto LABEL_195;
        case 23:
          v8 = a6 == 13 && a4 == 23;
          goto LABEL_195;
        case 24:
          v8 = a6 == 13 && a4 == 24;
          goto LABEL_195;
        case 25:
          v8 = a6 == 13 && a4 == 25;
          goto LABEL_195;
        case 26:
          v8 = a6 == 13 && a4 == 26;
          goto LABEL_195;
        case 27:
          v8 = a6 == 13 && a4 == 27;
          goto LABEL_195;
        case 28:
          v8 = a6 == 13 && a4 == 28;
          goto LABEL_195;
        case 29:
          v8 = a6 == 13 && a4 == 29;
          goto LABEL_195;
        case 30:
          v8 = a6 == 13 && a4 == 30;
          goto LABEL_195;
        case 31:
          v8 = a6 == 13 && a4 == 31;
LABEL_195:
          if (!v8 || a5 != 0)
          {
            goto LABEL_199;
          }

          goto LABEL_215;
        case 32:
          if (a6 != 13 || a4 != 32)
          {
            goto LABEL_199;
          }

          goto LABEL_214;
        case 33:
          if (a6 != 13 || a4 != 33)
          {
            goto LABEL_199;
          }

          goto LABEL_214;
        case 34:
          if (a6 != 13 || a4 != 34)
          {
            goto LABEL_199;
          }

          goto LABEL_214;
        case 35:
          if (a6 != 13 || a4 != 35)
          {
            goto LABEL_199;
          }

          goto LABEL_214;
        case 36:
          if (a6 != 13 || a4 != 36)
          {
            goto LABEL_199;
          }

          goto LABEL_214;
        case 37:
          if (a6 != 13 || a4 != 37)
          {
            goto LABEL_199;
          }

          goto LABEL_214;
        case 38:
          if (a6 != 13 || a4 != 38)
          {
            goto LABEL_199;
          }

          goto LABEL_214;
        case 39:
          if (a6 != 13 || a4 != 39)
          {
            goto LABEL_199;
          }

          goto LABEL_214;
        case 40:
          if (a6 != 13 || a4 != 40)
          {
            goto LABEL_199;
          }

          goto LABEL_214;
        case 41:
          if (a6 != 13 || a4 != 41)
          {
            goto LABEL_199;
          }

          goto LABEL_214;
        case 42:
          if (a6 != 13 || a4 != 42)
          {
            goto LABEL_199;
          }

          goto LABEL_214;
        case 43:
          if (a6 != 13 || a4 != 43)
          {
            goto LABEL_199;
          }

          goto LABEL_214;
        case 44:
          if (a6 != 13 || a4 != 44)
          {
            goto LABEL_199;
          }

          goto LABEL_214;
        case 45:
          if (a6 != 13 || a4 != 45)
          {
            goto LABEL_199;
          }

          goto LABEL_214;
        case 46:
          if (a6 != 13 || a4 != 46)
          {
            goto LABEL_199;
          }

          goto LABEL_214;
        case 47:
          if (a6 != 13 || a4 != 47)
          {
            goto LABEL_199;
          }

          goto LABEL_214;
        case 48:
          if (a6 != 13 || a4 != 48)
          {
            goto LABEL_199;
          }

          goto LABEL_214;
        case 49:
          if (a6 != 13 || a4 != 49)
          {
            goto LABEL_199;
          }

          goto LABEL_214;
        case 50:
          if (a6 != 13 || a4 != 50)
          {
            goto LABEL_199;
          }

          goto LABEL_214;
        case 51:
          if (a6 != 13 || a4 != 51)
          {
            goto LABEL_199;
          }

          goto LABEL_214;
        case 52:
          if (a6 != 13 || a4 != 52)
          {
            goto LABEL_199;
          }

          goto LABEL_214;
        case 53:
          if (a6 != 13 || a4 != 53)
          {
            goto LABEL_199;
          }

          goto LABEL_214;
        case 54:
          if (a6 != 13 || a4 != 54)
          {
            goto LABEL_199;
          }

          goto LABEL_214;
        case 55:
          if (a6 != 13 || a4 != 55)
          {
            goto LABEL_199;
          }

          goto LABEL_214;
        case 56:
          if (a6 != 13 || a4 != 56)
          {
            goto LABEL_199;
          }

          goto LABEL_214;
        case 57:
          if (a6 != 13 || a4 != 57)
          {
            goto LABEL_199;
          }

          goto LABEL_214;
        case 58:
          if (a6 != 13 || a4 != 58)
          {
            goto LABEL_199;
          }

LABEL_214:
          if (!a5)
          {
            goto LABEL_215;
          }

          goto LABEL_199;
        default:
          if (a6 != 13 || a5 | a4)
          {
            goto LABEL_199;
          }

          goto LABEL_215;
      }

    default:
      if (a6)
      {
LABEL_199:
        result = OUTLINED_FUNCTION_155();
      }

      else
      {
LABEL_35:
        result = a1 == a4;
      }

      break;
  }

  return result;
}

BOOL sub_231D00B30(char a1, char a2)
{
  sub_231D112E0();
  sub_231E117E0();
  sub_231E117E0();
  return v4 == v3;
}

uint64_t sub_231D00BA8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0();
  v5 = v3 == 0xD000000000000019 && v4 == a2;
  if (v5 || (v6 = v3, (OUTLINED_FUNCTION_15_2(0xD000000000000019, v4) & 1) != 0))
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_0();
    v9 = v6 == 0xD000000000000016 && v8 == a2;
    if (v9 || (OUTLINED_FUNCTION_15_2(0xD000000000000016, v8) & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_0();
      v11 = v6 == 0xD000000000000017 && v10 == a2;
      if (v11 || (OUTLINED_FUNCTION_15_2(0xD000000000000017, v10) & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_0();
        v13 = v6 == 0xD000000000000013 && v12 == a2;
        if (v13 || (OUTLINED_FUNCTION_15_2(0xD000000000000013, v12) & 1) != 0)
        {

          return 3;
        }

        else
        {
          OUTLINED_FUNCTION_0();
          v15 = v6 == 0xD000000000000013 && v14 == a2;
          if (v15 || (OUTLINED_FUNCTION_15_2(0xD000000000000013, v14) & 1) != 0)
          {

            return 4;
          }

          else
          {
            OUTLINED_FUNCTION_0();
            v17 = v6 == 0xD000000000000012 && v16 == a2;
            if (v17 || (OUTLINED_FUNCTION_15_2(0xD000000000000012, v16) & 1) != 0)
            {

              return 5;
            }

            else
            {
              OUTLINED_FUNCTION_47_3();
              v19 = v5 && v18 == a2;
              if (v19 || (OUTLINED_FUNCTION_15_2(0xD000000000000019, v18) & 1) != 0)
              {

                return 6;
              }

              else
              {
                OUTLINED_FUNCTION_0();
                v21 = v6 == 0xD00000000000001ALL && v20 == a2;
                if (v21 || (OUTLINED_FUNCTION_15_2(0xD00000000000001ALL, v20) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  OUTLINED_FUNCTION_46_3();
                  v23 = v5 && v22 == a2;
                  if (v23 || (OUTLINED_FUNCTION_15_2(0xD000000000000016, v22) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_46_3();
                    v25 = v5 && v24 == a2;
                    if (v25 || (OUTLINED_FUNCTION_15_2(0xD000000000000016, v24) & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_47_3();
                      v27 = v5 && v26 == a2;
                      if (v27 || (OUTLINED_FUNCTION_15_2(0xD000000000000019, v26) & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_0();
                        v29 = v6 == 0xD000000000000015 && v28 == a2;
                        if (v29 || (OUTLINED_FUNCTION_15_2(0xD000000000000015, v28) & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_0();
                          v31 = v6 == 0xD00000000000001BLL && v30 == a2;
                          if (v31 || (OUTLINED_FUNCTION_15_2(0xD00000000000001BLL, v30) & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_48_4();
                            v33 = v5 && v32 == a2;
                            if (v33 || (OUTLINED_FUNCTION_15_2(0xD00000000000001ALL, v32) & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_0();
                              v35 = v6 == 0xD000000000000026 && v34 == a2;
                              if (v35 || (OUTLINED_FUNCTION_15_2(0xD000000000000026, v34) & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                OUTLINED_FUNCTION_0();
                                v37 = v6 == 0xD000000000000021 && v36 == a2;
                                if (v37 || (OUTLINED_FUNCTION_15_2(0xD000000000000021, v36) & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_0();
                                  v39 = v6 == 0xD000000000000029 && v38 == a2;
                                  if (v39 || (OUTLINED_FUNCTION_15_2(0xD000000000000029, v38) & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_0();
                                    v41 = v6 == 0xD000000000000028 && v40 == a2;
                                    if (v41 || (OUTLINED_FUNCTION_15_2(0xD000000000000028, v40) & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_0();
                                      v43 = v6 == 0xD000000000000024 && v42 == a2;
                                      if (v43 || (OUTLINED_FUNCTION_15_2(0xD000000000000024, v42) & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_36_2();
                                        v46 = v5 && v45 == a2;
                                        if (v46 || (OUTLINED_FUNCTION_23_4(v44, v45) & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_0();
                                          v48 = v6 == 0xD00000000000002ELL && v47 == a2;
                                          if (v48 || (OUTLINED_FUNCTION_15_2(0xD00000000000002ELL, v47) & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            OUTLINED_FUNCTION_36_2();
                                            v51 = v5 && v50 == a2;
                                            if (v51 || (OUTLINED_FUNCTION_23_4(v49, v50) & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              OUTLINED_FUNCTION_0();
                                              v53 = v6 == 0xD000000000000030 && v52 == a2;
                                              if (v53 || (OUTLINED_FUNCTION_15_2(0xD000000000000030, v52) & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                OUTLINED_FUNCTION_38_3();
                                                v55 = v5 && v54 == a2;
                                                if (v55 || (OUTLINED_FUNCTION_15_2(0xD00000000000002ELL, v54) & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  OUTLINED_FUNCTION_46_3();
                                                  v57 = v5 && v56 == a2;
                                                  if (v57 || (OUTLINED_FUNCTION_15_2(0xD000000000000029, v56) & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    OUTLINED_FUNCTION_0();
                                                    v59 = v6 == 0xD000000000000031 && v58 == a2;
                                                    if (v59 || (OUTLINED_FUNCTION_15_2(0xD000000000000031, v58) & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_0();
                                                      v61 = v6 == 0xD000000000000033 && v60 == a2;
                                                      if (v61 || (OUTLINED_FUNCTION_15_2(0xD000000000000033, v60) & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        OUTLINED_FUNCTION_0();
                                                        v63 = v6 == 0xD00000000000001ELL && v62 == a2;
                                                        if (v63 || (OUTLINED_FUNCTION_15_2(0xD00000000000001ELL, v62) & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          OUTLINED_FUNCTION_48_4();
                                                          v65 = v5 && v64 == a2;
                                                          if (v65 || (OUTLINED_FUNCTION_15_2(0xD00000000000001ALL, v64) & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            OUTLINED_FUNCTION_48_4();
                                                            v67 = v5 && v66 == a2;
                                                            if (v67 || (OUTLINED_FUNCTION_15_2(0xD00000000000001ALL, v66) & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              OUTLINED_FUNCTION_47_3();
                                                              v69 = v5 && v68 == a2;
                                                              if (v69 || (OUTLINED_FUNCTION_15_2(0xD000000000000019, v68) & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                OUTLINED_FUNCTION_0();
                                                                v71 = v6 == 0xD00000000000001ELL && v70 == a2;
                                                                if (v71 || (OUTLINED_FUNCTION_15_2(0xD00000000000001ELL, v70) & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  OUTLINED_FUNCTION_0();
                                                                  v73 = v6 == 0xD00000000000002ALL && v72 == a2;
                                                                  if (v73 || (OUTLINED_FUNCTION_15_2(0xD00000000000002ALL, v72) & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    OUTLINED_FUNCTION_0();
                                                                    v75 = v6 == 0xD000000000000033 && v74 == a2;
                                                                    if (v75 || (OUTLINED_FUNCTION_15_2(0xD000000000000033, v74) & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      OUTLINED_FUNCTION_0();
                                                                      v77 = v6 == 0xD00000000000002DLL && v76 == a2;
                                                                      if (v77 || (OUTLINED_FUNCTION_15_2(0xD00000000000002DLL, v76) & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        OUTLINED_FUNCTION_38_3();
                                                                        v79 = v5 && v78 == a2;
                                                                        if (v79 || (OUTLINED_FUNCTION_15_2(0xD000000000000031, v78) & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          OUTLINED_FUNCTION_0();
                                                                          v81 = v6 == 0xD000000000000018 && v80 == a2;
                                                                          if (v81 || (OUTLINED_FUNCTION_15_2(0xD000000000000018, v80) & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            OUTLINED_FUNCTION_0();
                                                                            v83 = v6 == 0xD000000000000026 && v82 == a2;
                                                                            if (v83 || (OUTLINED_FUNCTION_15_2(0xD000000000000026, v82) & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              OUTLINED_FUNCTION_38_3();
                                                                              v85 = v5 && v84 == a2;
                                                                              if (v85 || (OUTLINED_FUNCTION_15_2(0xD000000000000031, v84) & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                OUTLINED_FUNCTION_0();
                                                                                v87 = v6 == 0xD000000000000036 && v86 == a2;
                                                                                if (v87 || (OUTLINED_FUNCTION_15_2(0xD000000000000036, v86) & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  OUTLINED_FUNCTION_0();
                                                                                  v89 = v6 == 0xD000000000000026 && v88 == a2;
                                                                                  if (v89 || (OUTLINED_FUNCTION_15_2(0xD000000000000026, v88) & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    OUTLINED_FUNCTION_0();
                                                                                    v91 = v6 == 0xD00000000000001DLL && v90 == a2;
                                                                                    if (v91 || (OUTLINED_FUNCTION_15_2(0xD00000000000001DLL, v90) & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      OUTLINED_FUNCTION_0();
                                                                                      v93 = v6 == 0xD00000000000003FLL && v92 == a2;
                                                                                      if (v93 || (OUTLINED_FUNCTION_15_2(0xD00000000000003FLL, v92) & 1) != 0)
                                                                                      {

                                                                                        return 42;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        OUTLINED_FUNCTION_0();
                                                                                        v95 = v6 == 0xD00000000000003ELL && v94 == a2;
                                                                                        if (v95 || (OUTLINED_FUNCTION_15_2(0xD00000000000003ELL, v94) & 1) != 0)
                                                                                        {

                                                                                          return 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          OUTLINED_FUNCTION_36_2();
                                                                                          v98 = v5 && v97 == a2;
                                                                                          if (v98 || (OUTLINED_FUNCTION_23_4(v96, v97) & 1) != 0)
                                                                                          {

                                                                                            return 44;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            OUTLINED_FUNCTION_0();
                                                                                            v100 = v6 == 0xD000000000000032 && v99 == a2;
                                                                                            if (v100 || (OUTLINED_FUNCTION_15_2(0xD000000000000032, v99) & 1) != 0)
                                                                                            {

                                                                                              return 45;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              OUTLINED_FUNCTION_0();
                                                                                              v102 = v6 == 0xD000000000000021 && v101 == a2;
                                                                                              if (v102 || (OUTLINED_FUNCTION_15_2(0xD000000000000021, v101) & 1) != 0)
                                                                                              {

                                                                                                return 46;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                OUTLINED_FUNCTION_46_3();
                                                                                                v104 = v5 && v103 == a2;
                                                                                                if (v104 || (OUTLINED_FUNCTION_15_2(0xD000000000000029, v103) & 1) != 0)
                                                                                                {

                                                                                                  return 47;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  OUTLINED_FUNCTION_36_2();
                                                                                                  v107 = v5 && v106 == a2;
                                                                                                  if (v107 || (OUTLINED_FUNCTION_23_4(v105, v106) & 1) != 0)
                                                                                                  {

                                                                                                    return 48;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    OUTLINED_FUNCTION_0();
                                                                                                    v109 = v6 == 0xD000000000000023 && v108 == a2;
                                                                                                    if (v109 || (OUTLINED_FUNCTION_15_2(0xD000000000000023, v108) & 1) != 0)
                                                                                                    {

                                                                                                      return 49;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      OUTLINED_FUNCTION_0();
                                                                                                      v111 = v6 == 0xD000000000000026 && v110 == a2;
                                                                                                      if (v111 || (OUTLINED_FUNCTION_15_2(0xD000000000000026, v110) & 1) != 0)
                                                                                                      {

                                                                                                        return 50;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        OUTLINED_FUNCTION_0();
                                                                                                        v113 = v6 == 0xD00000000000002BLL && v112 == a2;
                                                                                                        if (v113 || (OUTLINED_FUNCTION_15_2(0xD00000000000002BLL, v112) & 1) != 0)
                                                                                                        {

                                                                                                          return 51;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          OUTLINED_FUNCTION_47_3();
                                                                                                          v115 = v5 && v114 == a2;
                                                                                                          if (v115 || (OUTLINED_FUNCTION_15_2(0xD000000000000018, v114) & 1) != 0)
                                                                                                          {

                                                                                                            return 52;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            OUTLINED_FUNCTION_0();
                                                                                                            v117 = v6 == 0xD000000000000017 && v116 == a2;
                                                                                                            if (v117 || (OUTLINED_FUNCTION_15_2(0xD000000000000017, v116) & 1) != 0)
                                                                                                            {

                                                                                                              return 53;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              OUTLINED_FUNCTION_0();
                                                                                                              v119 = v6 == 0xD000000000000022 && v118 == a2;
                                                                                                              if (v119 || (OUTLINED_FUNCTION_15_2(0xD000000000000022, v118) & 1) != 0)
                                                                                                              {

                                                                                                                return 54;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                OUTLINED_FUNCTION_36_2();
                                                                                                                v122 = v5 && v121 == a2;
                                                                                                                if (v122 || (OUTLINED_FUNCTION_23_4(v120, v121) & 1) != 0)
                                                                                                                {

                                                                                                                  return 55;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  OUTLINED_FUNCTION_0();
                                                                                                                  v124 = v6 == 0xD000000000000034 && v123 == a2;
                                                                                                                  if (v124 || (OUTLINED_FUNCTION_15_2(0xD000000000000034, v123) & 1) != 0)
                                                                                                                  {

                                                                                                                    return 56;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    OUTLINED_FUNCTION_0();
                                                                                                                    v126 = v6 == 0xD00000000000003DLL && v125 == a2;
                                                                                                                    if (v126 || (OUTLINED_FUNCTION_15_2(0xD00000000000003DLL, v125) & 1) != 0)
                                                                                                                    {

                                                                                                                      return 57;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      OUTLINED_FUNCTION_0();
                                                                                                                      v128 = v6 == 0xD000000000000012 && v127 == a2;
                                                                                                                      if (v128 || (OUTLINED_FUNCTION_15_2(0xD000000000000012, v127) & 1) != 0)
                                                                                                                      {

                                                                                                                        return 58;
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v129 = OUTLINED_FUNCTION_54_3();
                                                                                                                        v131 = v6 == v129 && a2 == v130;
                                                                                                                        if (v131 || (OUTLINED_FUNCTION_15_2(v129, v130) & 1) != 0)
                                                                                                                        {

                                                                                                                          return 59;
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          OUTLINED_FUNCTION_0();
                                                                                                                          v133 = v6 == 0xD000000000000023 && v132 == a2;
                                                                                                                          if (v133 || (OUTLINED_FUNCTION_15_2(0xD000000000000023, v132) & 1) != 0)
                                                                                                                          {

                                                                                                                            return 60;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            OUTLINED_FUNCTION_48_4();
                                                                                                                            v135 = v5 && v134 == a2;
                                                                                                                            if (v135 || (OUTLINED_FUNCTION_15_2(0xD00000000000001DLL, v134) & 1) != 0)
                                                                                                                            {

                                                                                                                              return 61;
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              OUTLINED_FUNCTION_0();
                                                                                                                              v137 = v6 == 0xD00000000000002ALL && v136 == a2;
                                                                                                                              if (v137 || (OUTLINED_FUNCTION_15_2(0xD00000000000002ALL, v136) & 1) != 0)
                                                                                                                              {

                                                                                                                                return 62;
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                OUTLINED_FUNCTION_0();
                                                                                                                                v139 = v6 == 0xD000000000000034 && v138 == a2;
                                                                                                                                if (v139 || (OUTLINED_FUNCTION_15_2(0xD000000000000034, v138) & 1) != 0)
                                                                                                                                {

                                                                                                                                  return 63;
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  OUTLINED_FUNCTION_36_2();
                                                                                                                                  v142 = v5 && v141 == a2;
                                                                                                                                  if (v142 || (OUTLINED_FUNCTION_23_4(v140, v141) & 1) != 0)
                                                                                                                                  {

                                                                                                                                    return 64;
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    OUTLINED_FUNCTION_0();
                                                                                                                                    v144 = v6 == 0xD000000000000030 && v143 == a2;
                                                                                                                                    if (v144 || (OUTLINED_FUNCTION_15_2(0xD000000000000030, v143) & 1) != 0)
                                                                                                                                    {

                                                                                                                                      return 65;
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      OUTLINED_FUNCTION_0();
                                                                                                                                      v146 = v6 == 0xD000000000000039 && v145 == a2;
                                                                                                                                      if (v146 || (OUTLINED_FUNCTION_15_2(0xD000000000000039, v145) & 1) != 0)
                                                                                                                                      {

                                                                                                                                        return 66;
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        OUTLINED_FUNCTION_0();
                                                                                                                                        v148 = v6 == 0xD000000000000033 && v147 == a2;
                                                                                                                                        if (v148 || (OUTLINED_FUNCTION_15_2(0xD000000000000033, v147) & 1) != 0)
                                                                                                                                        {

                                                                                                                                          return 67;
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          OUTLINED_FUNCTION_0();
                                                                                                                                          v150 = v6 == 0xD000000000000035 && v149 == a2;
                                                                                                                                          if (v150 || (OUTLINED_FUNCTION_15_2(0xD000000000000035, v149) & 1) != 0)
                                                                                                                                          {

                                                                                                                                            return 68;
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            OUTLINED_FUNCTION_38_3();
                                                                                                                                            v152 = v5 && v151 == a2;
                                                                                                                                            if (v152 || (OUTLINED_FUNCTION_15_2(0xD00000000000003ELL, v151) & 1) != 0)
                                                                                                                                            {

                                                                                                                                              return 69;
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              OUTLINED_FUNCTION_0();
                                                                                                                                              v154 = v6 == 0xD000000000000038 && v153 == a2;
                                                                                                                                              if (v154 || (OUTLINED_FUNCTION_15_2(0xD000000000000038, v153) & 1) != 0)
                                                                                                                                              {

                                                                                                                                                return 70;
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                OUTLINED_FUNCTION_0();
                                                                                                                                                if (v6 == 0xD000000000000049 && v155 == a2)
                                                                                                                                                {

                                                                                                                                                  return 71;
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  OUTLINED_FUNCTION_15_2(0xD000000000000049, v155);
                                                                                                                                                  OUTLINED_FUNCTION_10_1();
                                                                                                                                                  if (v6)
                                                                                                                                                  {
                                                                                                                                                    return 71;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    return 72;
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
              }
            }
          }
        }
      }
    }
  }
}

void sub_231D01AAC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_54_3();
  switch(v2)
  {
    case ';':
      return;
    default:
      OUTLINED_FUNCTION_0();
      break;
  }
}

uint64_t sub_231D022DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231D00BA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231D02310()
{
  sub_231D07738();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D02348()
{
  sub_231D07738();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D02394(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000231E31A30 == a2)
  {

    v4 = 0;
  }

  else
  {
    sub_231E12100();
    OUTLINED_FUNCTION_10_1();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_231D0240C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965)
  {

    v4 = 0;
  }

  else
  {
    sub_231E12100();
    OUTLINED_FUNCTION_10_1();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_231D02480(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x644965726E6567 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_231E12100();
    OUTLINED_FUNCTION_10_1();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_231D024FC()
{
  sub_231D07B7C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D02534()
{
  sub_231D07B7C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D0256C()
{
  sub_231D07BD0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D025A4()
{
  sub_231D07BD0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D025DC()
{
  sub_231D07C24();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D02614()
{
  sub_231D07C24();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D0264C()
{
  sub_231D07E1C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D02684()
{
  sub_231D07E1C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D026BC()
{
  sub_231D0835C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D026F4()
{
  sub_231D0835C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D0272C()
{
  sub_231D07B28();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D02764()
{
  sub_231D07B28();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D0279C()
{
  sub_231D08ED8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D027D4()
{
  sub_231D08ED8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D0280C()
{
  sub_231D08E30();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D02844()
{
  sub_231D08E30();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D0287C()
{
  sub_231D08F2C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D028B4()
{
  sub_231D08F2C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D028EC()
{
  sub_231D08D88();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D02924()
{
  sub_231D08D88();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D0295C()
{
  sub_231D08E84();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D02994()
{
  sub_231D08E84();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D029CC()
{
  sub_231D08DDC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D02A04()
{
  sub_231D08DDC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D02A3C()
{
  sub_231D08BE4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D02A74()
{
  sub_231D08BE4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D02AAC()
{
  sub_231D07D74();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D02AE4()
{
  sub_231D07D74();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D02B1C()
{
  sub_231D08C8C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D02B54()
{
  sub_231D08C8C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D02B8C()
{
  sub_231D08B90();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D02BC4()
{
  sub_231D08B90();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D02BFC()
{
  sub_231D08CE0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D02C34()
{
  sub_231D08CE0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D02C6C()
{
  sub_231D08C38();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D02CA4()
{
  sub_231D08C38();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D02CDC()
{
  sub_231D08B3C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D02D14()
{
  sub_231D08B3C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D02D4C()
{
  sub_231D08D34();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D02D84()
{
  sub_231D08D34();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D02DBC()
{
  sub_231D08AE8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D02DF4()
{
  sub_231D08AE8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D02E2C()
{
  sub_231D07A80();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D02E64()
{
  sub_231D07A80();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D02EA0()
{
  sub_231D07A2C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D02ED8()
{
  sub_231D07A2C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D02F10()
{
  sub_231D08068();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D02F48()
{
  sub_231D08068();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D02F80()
{
  sub_231D07FC0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D02FB8()
{
  sub_231D07FC0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D03014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231D02394(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_231D03040()
{
  sub_231D08A40();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D03078()
{
  sub_231D08A40();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D030B0()
{
  sub_231D08A94();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D030E8()
{
  sub_231D08A94();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D03120()
{
  sub_231D0889C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D03158()
{
  sub_231D0889C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D03190()
{
  sub_231D088F0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D031C8()
{
  sub_231D088F0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D03200()
{
  sub_231D08848();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D03238()
{
  sub_231D08848();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D03270()
{
  sub_231D08998();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D032A8()
{
  sub_231D08998();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D032E0()
{
  sub_231D07F6C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D03318()
{
  sub_231D07F6C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D03350()
{
  sub_231D08944();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D03388()
{
  sub_231D08944();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D033C0()
{
  sub_231D089EC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D033F8()
{
  sub_231D089EC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D03434()
{
  sub_231D077E0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D0346C()
{
  sub_231D077E0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D034A8()
{
  sub_231D07834();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D034E0()
{
  sub_231D07834();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D03518()
{
  sub_231D078DC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D03550()
{
  sub_231D078DC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D03588()
{
  sub_231D08260();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D035C0()
{
  sub_231D08260();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D035F8()
{
  sub_231D087F4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D03630()
{
  sub_231D087F4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D03668()
{
  sub_231D087A0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D036A0()
{
  sub_231D087A0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D036D8()
{
  sub_231D086A4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D03710()
{
  sub_231D086A4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D03748()
{
  sub_231D086F8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D03780()
{
  sub_231D086F8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D037B8()
{
  sub_231D07930();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D037F0()
{
  sub_231D07930();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D03828()
{
  sub_231D07984();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D03860()
{
  sub_231D07984();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D03898()
{
  sub_231D079D8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D038D0()
{
  sub_231D079D8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D03908()
{
  sub_231D08164();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D03940()
{
  sub_231D08164();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D03978()
{
  sub_231D08110();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D039B0()
{
  sub_231D08110();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D039E8()
{
  sub_231D083B0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D03A20()
{
  sub_231D083B0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D03A58()
{
  sub_231D082B4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D03A90()
{
  sub_231D082B4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D03AC8()
{
  sub_231D0874C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D03B00()
{
  sub_231D0874C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D03B38()
{
  sub_231D07AD4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D03B70()
{
  sub_231D07AD4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D03BA8()
{
  sub_231D08014();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D03BE0()
{
  sub_231D08014();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D03C18()
{
  sub_231D07F18();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D03C50()
{
  sub_231D07F18();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D03C88()
{
  sub_231D07DC8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D03CC0()
{
  sub_231D07DC8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D03CF8()
{
  sub_231D08308();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D03D30()
{
  sub_231D08308();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D03D68()
{
  sub_231D0820C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D03DA0()
{
  sub_231D0820C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D03DD8()
{
  sub_231D085FC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D03E10()
{
  sub_231D085FC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D03E48()
{
  sub_231D08554();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D03E80()
{
  sub_231D08554();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D03EB8()
{
  sub_231D08650();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D03EF0()
{
  sub_231D08650();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D03F28()
{
  sub_231D07EC4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D03F60()
{
  sub_231D07EC4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D03F98()
{
  sub_231D0778C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D03FD0()
{
  sub_231D0778C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D04008()
{
  sub_231D085A8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D04040()
{
  sub_231D085A8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D04078()
{
  sub_231D081B8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D040B0()
{
  sub_231D081B8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D040E8()
{
  sub_231D080BC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D04120()
{
  sub_231D080BC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D04158()
{
  sub_231D07CCC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D04190()
{
  sub_231D07CCC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D041E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231D0240C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_231D04210()
{
  sub_231D08404();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D04248()
{
  sub_231D08404();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D04280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231D02480(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_231D042AC()
{
  sub_231D08458();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D042E4()
{
  sub_231D08458();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D0431C()
{
  sub_231D084AC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D04354()
{
  sub_231D084AC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D0438C()
{
  sub_231D07D20();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D043C4()
{
  sub_231D07D20();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D043FC()
{
  sub_231D08500();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D04434()
{
  sub_231D08500();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D0446C()
{
  sub_231D07E70();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D044A4()
{
  sub_231D07E70();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D044DC()
{
  sub_231D07C78();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D04514()
{
  sub_231D07C78();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D0454C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v386 = a2;
  v387 = a4;
  v385 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD745C8, &qword_231E17290);
  OUTLINED_FUNCTION_0_7(v5, &v377);
  v362 = v6;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD745D0, &qword_231E17298);
  OUTLINED_FUNCTION_24();
  v383 = v10;
  v384 = v9;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_1();
  v382 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD745D8, &qword_231E172A0);
  OUTLINED_FUNCTION_24();
  v380 = v14;
  v381 = v13;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_12_1();
  v379 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD745E0, &qword_231E172A8);
  OUTLINED_FUNCTION_0_7(v17, &v374);
  v361 = v18;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD745E8, &qword_231E172B0);
  OUTLINED_FUNCTION_24();
  v377 = v22;
  v378 = v21;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_12_1();
  v376 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD745F0, &qword_231E172B8);
  OUTLINED_FUNCTION_24();
  v374 = v26;
  v375 = v25;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_12_1();
  v373 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD745F8, &qword_231E172C0);
  OUTLINED_FUNCTION_0_7(v29, &v371);
  v360 = v30;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74600, &qword_231E172C8);
  OUTLINED_FUNCTION_24();
  v371 = v34;
  v372 = v33;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74608, &qword_231E172D0);
  OUTLINED_FUNCTION_0_7(v37, v370);
  v359 = v38;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74610, &qword_231E172D8);
  OUTLINED_FUNCTION_0_7(v41, &v369);
  v358 = v42;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74618, &qword_231E172E0);
  OUTLINED_FUNCTION_0_7(v45, &v368);
  v357 = v46;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74620, &qword_231E172E8);
  OUTLINED_FUNCTION_0_7(v49, &v367);
  v356 = v50;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74628, &qword_231E172F0);
  OUTLINED_FUNCTION_0_7(v53, &v366);
  v355 = v54;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74630, &qword_231E172F8);
  OUTLINED_FUNCTION_0_7(v57, &v365);
  v354 = v58;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74638, &qword_231E17300);
  OUTLINED_FUNCTION_0_7(v61, &v364);
  v353 = v62;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74640, &qword_231E17308);
  OUTLINED_FUNCTION_0_7(v65, &v363);
  v352 = v66;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74648, &qword_231E17310);
  OUTLINED_FUNCTION_0_7(v69, &v362);
  v351 = v70;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74650, &qword_231E17318);
  OUTLINED_FUNCTION_0_7(v73, &v361);
  v350 = v74;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74658, &qword_231E17320);
  OUTLINED_FUNCTION_0_7(v77, &v360);
  v349 = v78;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74660, &qword_231E17328);
  OUTLINED_FUNCTION_0_7(v81, &v359);
  v348 = v82;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74668, &qword_231E17330);
  OUTLINED_FUNCTION_0_7(v85, &v358);
  v347 = v86;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74670, &qword_231E17338);
  OUTLINED_FUNCTION_0_7(v89, &v357);
  v346 = v90;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v92);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74678, &qword_231E17340);
  OUTLINED_FUNCTION_0_7(v93, &v356);
  v345 = v94;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v96);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74680, &qword_231E17348);
  OUTLINED_FUNCTION_0_7(v97, &v355);
  v344 = v98;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v100);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74688, &qword_231E17350);
  OUTLINED_FUNCTION_0_7(v101, &v354);
  v343 = v102;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v104);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74690, &qword_231E17358);
  OUTLINED_FUNCTION_0_7(v105, &v353);
  v342 = v106;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v108);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74698, &qword_231E17360);
  OUTLINED_FUNCTION_0_7(v109, &v352);
  v341 = v110;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v112);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD746A0, &qword_231E17368);
  OUTLINED_FUNCTION_0_7(v113, &v351);
  v340 = v114;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v116);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD746A8, &qword_231E17370);
  OUTLINED_FUNCTION_0_7(v117, &v350);
  v339 = v118;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v120);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD746B0, &qword_231E17378);
  OUTLINED_FUNCTION_0_7(v121, &v349);
  v338 = v122;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v124);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD746B8, &qword_231E17380);
  OUTLINED_FUNCTION_0_7(v125, &v348);
  v337 = v126;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v128);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD746C0, &qword_231E17388);
  OUTLINED_FUNCTION_0_7(v129, &v347);
  v336 = v130;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v132);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD746C8, &qword_231E17390);
  OUTLINED_FUNCTION_0_7(v133, &v346);
  v335 = v134;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v135);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v136);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD746D0, &qword_231E17398);
  OUTLINED_FUNCTION_0_7(v137, &v345);
  v334 = v138;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v139);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v140);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD746D8, &qword_231E173A0);
  OUTLINED_FUNCTION_0_7(v141, &v344);
  v333 = v142;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v143);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v144);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD746E0, &qword_231E173A8);
  OUTLINED_FUNCTION_0_7(v145, &v343);
  v332 = v146;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v147);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v148);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD746E8, &qword_231E173B0);
  OUTLINED_FUNCTION_0_7(v149, &v342);
  v331 = v150;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v151);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v152);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD746F0, &qword_231E173B8);
  OUTLINED_FUNCTION_0_7(v153, &v399);
  v370[0] = v154;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v155);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v156);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD746F8, &qword_231E173C0);
  OUTLINED_FUNCTION_0_7(v157, &v397);
  v369 = v158;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v159);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v160);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74700, &qword_231E173C8);
  OUTLINED_FUNCTION_0_7(v161, &v341);
  v330 = v162;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v163);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v164);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74708, &qword_231E173D0);
  OUTLINED_FUNCTION_0_7(v165, &v340);
  v329 = v166;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v167);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v168);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74710, &qword_231E173D8);
  OUTLINED_FUNCTION_0_7(v169, &v339);
  v328 = v170;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v171);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v172);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74718, &qword_231E173E0);
  OUTLINED_FUNCTION_0_7(v173, &v338);
  v327 = v174;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v175);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v176);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74720, &qword_231E173E8);
  OUTLINED_FUNCTION_0_7(v177, &v337);
  v326 = v178;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v179);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v180);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74728, &qword_231E173F0);
  OUTLINED_FUNCTION_0_7(v181, &v336);
  v325 = v182;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v183);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v184);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74730, &qword_231E173F8);
  OUTLINED_FUNCTION_0_7(v185, &v335);
  v324 = v186;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v187);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v188);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74738, &qword_231E17400);
  OUTLINED_FUNCTION_0_7(v189, &v395);
  v368 = v190;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v191);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v192);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74740, &qword_231E17408);
  OUTLINED_FUNCTION_0_7(v193, &v392);
  v367 = v194;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v195);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v196);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74748, &qword_231E17410);
  OUTLINED_FUNCTION_0_7(v197, &v389);
  v366 = v198;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v199);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v200);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74750, &qword_231E17418);
  OUTLINED_FUNCTION_0_7(v201, &v334);
  v323 = v202;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v203);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v204);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74758, &qword_231E17420);
  OUTLINED_FUNCTION_0_7(v205, &v333);
  v322 = v206;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v207);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v208);
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74760, &qword_231E17428);
  OUTLINED_FUNCTION_0_7(v209, &v332);
  v321 = v210;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v211);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v212);
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74768, &qword_231E17430);
  OUTLINED_FUNCTION_0_7(v213, &v386);
  v365 = v214;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v215);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v216);
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74770, &qword_231E17438);
  OUTLINED_FUNCTION_0_7(v217, &v383);
  v364 = v218;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v219);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v220);
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74778, &qword_231E17440);
  OUTLINED_FUNCTION_0_7(v221, &v331);
  v320 = v222;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v223);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v224);
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74780, &qword_231E17448);
  OUTLINED_FUNCTION_0_7(v225, &v330);
  v319 = v226;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v227);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v228);
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74788, &qword_231E17450);
  OUTLINED_FUNCTION_0_7(v229, &v380);
  v363 = v230;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v231);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v232);
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74790, &qword_231E17458);
  OUTLINED_FUNCTION_0_7(v233, &v329);
  v318 = v234;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v235);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v236);
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74798, &qword_231E17460);
  OUTLINED_FUNCTION_0_7(v237, &v328);
  v317 = v238;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v239);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v240);
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD747A0, &qword_231E17468);
  OUTLINED_FUNCTION_0_7(v241, &v327);
  v316[33] = v242;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v243);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v244);
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD747A8, &qword_231E17470);
  OUTLINED_FUNCTION_0_7(v245, &v326);
  v316[30] = v246;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v247);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v248);
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD747B0, &qword_231E17478);
  OUTLINED_FUNCTION_0_7(v249, &v325);
  v316[27] = v250;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v251);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v252);
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD747B8, &qword_231E17480);
  OUTLINED_FUNCTION_0_7(v253, &v324);
  v316[24] = v254;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v255);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v256);
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD747C0, &qword_231E17488);
  OUTLINED_FUNCTION_0_7(v257, &v323);
  v316[21] = v258;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v259);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v260);
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD747C8, &qword_231E17490);
  OUTLINED_FUNCTION_0_7(v261, &v322);
  v316[18] = v262;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v263);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v264);
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD747D0, &qword_231E17498);
  OUTLINED_FUNCTION_0_7(v265, &v321);
  v316[15] = v266;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v267);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v268);
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD747D8, &qword_231E174A0);
  OUTLINED_FUNCTION_0_7(v269, &v320);
  v316[12] = v270;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v271);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v272);
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD747E0, &qword_231E174A8);
  OUTLINED_FUNCTION_0_7(v273, &v319);
  v316[9] = v274;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v275);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v276);
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD747E8, &qword_231E174B0);
  OUTLINED_FUNCTION_0_7(v277, &v318);
  v316[6] = v278;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v279);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v280);
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD747F0, &qword_231E174B8);
  OUTLINED_FUNCTION_0_7(v281, &v317);
  v316[3] = v282;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v283);
  v285 = v316 - v284;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD747F8, &qword_231E174C0);
  OUTLINED_FUNCTION_24();
  v316[2] = v287;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v288);
  v290 = v316 - v289;
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74800, &qword_231E174C8);
  OUTLINED_FUNCTION_24();
  v316[1] = v292;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v293);
  v295 = v316 - v294;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74808, &qword_231E174D0);
  OUTLINED_FUNCTION_24();
  v389 = v296;
  v390 = v297;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v298);
  v300 = v316 - v299;
  v301 = a1[3];
  v302 = __swift_project_boxed_opaque_existential_0(a1, v301);
  sub_231D07738();
  v388 = v300;
  sub_231E12270();
  switch(v387)
  {
    case 1:
      v394 = 18;
      sub_231D08944();
      OUTLINED_FUNCTION_13_6(&unk_2846F1B90, &v394);
      OUTLINED_FUNCTION_16_6();
      sub_231E12080();
      v303 = &v382;
      goto LABEL_15;
    case 2:
      v394 = 19;
      sub_231D088F0();
      OUTLINED_FUNCTION_13_6(&unk_2846F1C20, &v394);
      OUTLINED_FUNCTION_16_6();
      sub_231E12080();
      v303 = &v385;
      goto LABEL_15;
    case 3:
      v394 = 23;
      sub_231D087A0();
      OUTLINED_FUNCTION_13_6(&unk_2846F1D10, &v394);
      OUTLINED_FUNCTION_16_6();
      sub_231E12080();
      v303 = &v388;
      goto LABEL_15;
    case 4:
      v394 = 24;
      sub_231D0874C();
      OUTLINED_FUNCTION_13_6(&unk_2846F1DA0, &v394);
      OUTLINED_FUNCTION_16_6();
      sub_231E12080();
      v303 = &v391;
      goto LABEL_15;
    case 5:
      v394 = 25;
      sub_231D086F8();
      OUTLINED_FUNCTION_13_6(&unk_2846F1E30, &v394);
      OUTLINED_FUNCTION_16_6();
      sub_231E12080();
      v303 = &v393;
      goto LABEL_15;
    case 6:
      v394 = 33;
      sub_231D08458();
      OUTLINED_FUNCTION_13_6(&unk_2846F1FA0, &v394);
      v394 = v386;
      sub_231D07888();
      OUTLINED_FUNCTION_16_6();
      sub_231E12090();
      v303 = &v396;
      goto LABEL_15;
    case 7:
      v394 = 34;
      sub_231D08404();
      OUTLINED_FUNCTION_13_6(&unk_2846F2030, &v394);
      v301 = v370[1];
      OUTLINED_FUNCTION_56_4(v386, v385, v306);
      v303 = &v398;
      goto LABEL_15;
    case 8:
      v394 = 64;
      sub_231D07A2C();
      OUTLINED_FUNCTION_13_6(&unk_2846F2460, &v394);
      v301 = v372;
      OUTLINED_FUNCTION_20_5();
      sub_231E12080();
      v304 = v371;
      goto LABEL_16;
    case 9:
      v394 = 66;
      sub_231D07984();
      v286 = v373;
      OUTLINED_FUNCTION_14_3(&unk_2846F2510, &v394);
      v394 = v386;
      sub_231D07888();
      v301 = v375;
      OUTLINED_FUNCTION_20_5();
      sub_231E12090();
      v304 = v374;
      goto LABEL_16;
    case 10:
      v394 = 67;
      sub_231D07930();
      v286 = v376;
      OUTLINED_FUNCTION_14_3(&unk_2846F25A0, &v394);
      v301 = v378;
      OUTLINED_FUNCTION_56_4(v386, v385, v311);
      v304 = v377;
      goto LABEL_16;
    case 11:
      v394 = 69;
      sub_231D07834();
      v286 = v379;
      OUTLINED_FUNCTION_14_3(&unk_2846F2650, &v394);
      v394 = v386;
      sub_231D07888();
      v301 = v381;
      OUTLINED_FUNCTION_20_5();
      sub_231E12090();
      v304 = v380;
      goto LABEL_16;
    case 12:
      v394 = 70;
      sub_231D077E0();
      v286 = v382;
      OUTLINED_FUNCTION_14_3(&unk_2846F26E0, &v394);
      v301 = v384;
      OUTLINED_FUNCTION_56_4(v386, v385, v305);
      v304 = v383;
      goto LABEL_16;
    case 13:
      switch(v386)
      {
        case 1:
          v394 = 1;
          sub_231D08ED8();
          v302 = v388;
          v300 = v389;
          sub_231E12000();
          v308 = OUTLINED_FUNCTION_6_4();
          v309 = v286;
          break;
        case 2:
          v394 = 2;
          sub_231D08E84();
          v313 = v388;
          v314 = v389;
          sub_231E12000();
          OUTLINED_FUNCTION_13();
          v315(v285, v316[4]);
          return (*(v390 + 8))(v313, v314);
        case 3:
          v394 = 3;
          sub_231D08E30();
          OUTLINED_FUNCTION_9_6(&unk_2846F18D0, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v318;
          goto LABEL_77;
        case 4:
          v394 = 4;
          sub_231D08DDC();
          OUTLINED_FUNCTION_9_6(&unk_2846F18F0, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v319;
          goto LABEL_77;
        case 5:
          v394 = 5;
          sub_231D08D88();
          OUTLINED_FUNCTION_9_6(&unk_2846F1910, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v320;
          goto LABEL_77;
        case 6:
          v394 = 6;
          sub_231D08D34();
          OUTLINED_FUNCTION_9_6(&unk_2846F1930, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v321;
          goto LABEL_77;
        case 7:
          v394 = 7;
          sub_231D08CE0();
          OUTLINED_FUNCTION_9_6(&unk_2846F1950, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v322;
          goto LABEL_77;
        case 8:
          v394 = 8;
          sub_231D08C8C();
          OUTLINED_FUNCTION_9_6(&unk_2846F1970, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v323;
          goto LABEL_77;
        case 9:
          v394 = 9;
          sub_231D08C38();
          OUTLINED_FUNCTION_9_6(&unk_2846F1990, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v324;
          goto LABEL_77;
        case 10:
          v394 = 10;
          sub_231D08BE4();
          OUTLINED_FUNCTION_9_6(&unk_2846F19B0, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v325;
          goto LABEL_77;
        case 11:
          v394 = 11;
          sub_231D08B90();
          OUTLINED_FUNCTION_9_6(&unk_2846F19D0, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v326;
          goto LABEL_77;
        case 12:
          v394 = 12;
          sub_231D08B3C();
          OUTLINED_FUNCTION_9_6(&unk_2846F19F0, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v327;
          goto LABEL_77;
        case 13:
          v394 = 13;
          sub_231D08AE8();
          OUTLINED_FUNCTION_9_6(&unk_2846F1A10, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v328;
          goto LABEL_77;
        case 14:
          v394 = 14;
          sub_231D08A94();
          OUTLINED_FUNCTION_9_6(&unk_2846F1A30, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v329;
          goto LABEL_77;
        case 15:
          v394 = 16;
          sub_231D089EC();
          OUTLINED_FUNCTION_9_6(&unk_2846F1AE0, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v330;
          goto LABEL_77;
        case 16:
          v394 = 17;
          sub_231D08998();
          OUTLINED_FUNCTION_9_6(&unk_2846F1B00, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v331;
          goto LABEL_77;
        case 17:
          v394 = 20;
          sub_231D0889C();
          OUTLINED_FUNCTION_9_6(&unk_2846F1C40, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v332;
          goto LABEL_77;
        case 18:
          v394 = 21;
          sub_231D08848();
          OUTLINED_FUNCTION_9_6(&unk_2846F1C60, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v333;
          goto LABEL_77;
        case 19:
          v394 = 22;
          sub_231D087F4();
          OUTLINED_FUNCTION_9_6(&unk_2846F1C80, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v334;
          goto LABEL_77;
        case 20:
          v394 = 26;
          sub_231D086A4();
          OUTLINED_FUNCTION_9_6(&unk_2846F1E50, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v335;
          goto LABEL_77;
        case 21:
          v394 = 27;
          sub_231D08650();
          OUTLINED_FUNCTION_9_6(&unk_2846F1E70, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v336;
          goto LABEL_77;
        case 22:
          v394 = 28;
          sub_231D085FC();
          OUTLINED_FUNCTION_9_6(&unk_2846F1E90, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v337;
          goto LABEL_77;
        case 23:
          v394 = 29;
          sub_231D085A8();
          OUTLINED_FUNCTION_9_6(&unk_2846F1EB0, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v338;
          goto LABEL_77;
        case 24:
          v394 = 30;
          sub_231D08554();
          OUTLINED_FUNCTION_9_6(&unk_2846F1ED0, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v339;
          goto LABEL_77;
        case 25:
          v394 = 31;
          sub_231D08500();
          OUTLINED_FUNCTION_9_6(&unk_2846F1EF0, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v340;
          goto LABEL_77;
        case 26:
          v394 = 32;
          sub_231D084AC();
          OUTLINED_FUNCTION_9_6(&unk_2846F1F10, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v341;
          goto LABEL_77;
        case 27:
          v394 = 35;
          sub_231D083B0();
          OUTLINED_FUNCTION_9_6(&unk_2846F2050, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v342;
          goto LABEL_77;
        case 28:
          v394 = 36;
          sub_231D0835C();
          OUTLINED_FUNCTION_9_6(&unk_2846F2070, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v343;
          goto LABEL_77;
        case 29:
          v394 = 37;
          sub_231D08308();
          OUTLINED_FUNCTION_9_6(&unk_2846F2090, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v344;
          goto LABEL_77;
        case 30:
          v394 = 38;
          sub_231D082B4();
          OUTLINED_FUNCTION_9_6(&unk_2846F20B0, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v345;
          goto LABEL_77;
        case 31:
          v394 = 39;
          sub_231D08260();
          OUTLINED_FUNCTION_9_6(&unk_2846F20D0, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v346;
          goto LABEL_77;
        case 32:
          v394 = 40;
          sub_231D0820C();
          OUTLINED_FUNCTION_9_6(&unk_2846F20F0, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v347;
          goto LABEL_77;
        case 33:
          v394 = 41;
          sub_231D081B8();
          OUTLINED_FUNCTION_9_6(&unk_2846F2110, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v348;
          goto LABEL_77;
        case 34:
          v394 = 42;
          sub_231D08164();
          OUTLINED_FUNCTION_9_6(&unk_2846F2130, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v349;
          goto LABEL_77;
        case 35:
          v394 = 43;
          sub_231D08110();
          OUTLINED_FUNCTION_9_6(&unk_2846F2150, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v350;
          goto LABEL_77;
        case 36:
          v394 = 44;
          sub_231D080BC();
          OUTLINED_FUNCTION_9_6(&unk_2846F2170, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v351;
          goto LABEL_77;
        case 37:
          v394 = 45;
          sub_231D08068();
          OUTLINED_FUNCTION_9_6(&unk_2846F2190, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v352;
          goto LABEL_77;
        case 38:
          v394 = 46;
          sub_231D08014();
          OUTLINED_FUNCTION_9_6(&unk_2846F21B0, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v353;
          goto LABEL_77;
        case 39:
          v394 = 47;
          sub_231D07FC0();
          OUTLINED_FUNCTION_9_6(&unk_2846F21D0, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v354;
          goto LABEL_77;
        case 40:
          v394 = 48;
          sub_231D07F6C();
          OUTLINED_FUNCTION_9_6(&unk_2846F21F0, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v355;
          goto LABEL_77;
        case 41:
          v394 = 49;
          sub_231D07F18();
          OUTLINED_FUNCTION_9_6(&unk_2846F2210, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v356;
          goto LABEL_77;
        case 42:
          v394 = 50;
          sub_231D07EC4();
          OUTLINED_FUNCTION_9_6(&unk_2846F2230, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v357;
          goto LABEL_77;
        case 43:
          v394 = 51;
          sub_231D07E70();
          OUTLINED_FUNCTION_9_6(&unk_2846F2250, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v358;
          goto LABEL_77;
        case 44:
          v394 = 52;
          sub_231D07E1C();
          OUTLINED_FUNCTION_9_6(&unk_2846F2270, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v359;
          goto LABEL_77;
        case 45:
          v394 = 53;
          sub_231D07DC8();
          OUTLINED_FUNCTION_9_6(&unk_2846F2290, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v360;
          goto LABEL_77;
        case 46:
          v394 = 54;
          sub_231D07D74();
          OUTLINED_FUNCTION_9_6(&unk_2846F22B0, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v361;
          goto LABEL_77;
        case 47:
          v394 = 55;
          sub_231D07D20();
          OUTLINED_FUNCTION_9_6(&unk_2846F22D0, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v362;
          goto LABEL_77;
        case 48:
          v394 = 56;
          sub_231D07CCC();
          OUTLINED_FUNCTION_9_6(&unk_2846F22F0, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v363;
          goto LABEL_77;
        case 49:
          v394 = 57;
          sub_231D07C78();
          OUTLINED_FUNCTION_9_6(&unk_2846F2310, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v364;
          goto LABEL_77;
        case 50:
          v394 = 58;
          sub_231D07C24();
          OUTLINED_FUNCTION_9_6(&unk_2846F2330, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v365;
          goto LABEL_77;
        case 51:
          v394 = 59;
          sub_231D07BD0();
          OUTLINED_FUNCTION_9_6(&unk_2846F2350, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v366;
          goto LABEL_77;
        case 52:
          v394 = 60;
          sub_231D07B7C();
          OUTLINED_FUNCTION_9_6(&unk_2846F2370, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v367;
          goto LABEL_77;
        case 53:
          v394 = 61;
          sub_231D07B28();
          OUTLINED_FUNCTION_9_6(&unk_2846F2390, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v368;
          goto LABEL_77;
        case 54:
          v394 = 62;
          sub_231D07AD4();
          OUTLINED_FUNCTION_9_6(&unk_2846F23B0, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v369;
          goto LABEL_77;
        case 55:
          v394 = 63;
          sub_231D07A80();
          OUTLINED_FUNCTION_9_6(&unk_2846F23D0, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = v370;
          goto LABEL_77;
        case 56:
          v394 = 65;
          sub_231D079D8();
          OUTLINED_FUNCTION_9_6(&unk_2846F2480, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v371;
          goto LABEL_77;
        case 57:
          v394 = 68;
          sub_231D078DC();
          OUTLINED_FUNCTION_9_6(&unk_2846F25C0, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v374;
          goto LABEL_77;
        case 58:
          v394 = 71;
          sub_231D0778C();
          OUTLINED_FUNCTION_9_6(&unk_2846F2700, &v394);
          v308 = OUTLINED_FUNCTION_6_4();
          v312 = &v377;
LABEL_77:
          v309 = *(v312 - 32);
          break;
        default:
          v394 = 0;
          sub_231D08F2C();
          v302 = v388;
          v300 = v389;
          sub_231E12000();
          OUTLINED_FUNCTION_13();
          v308 = v295;
          v309 = v291;
          break;
      }

      v307(v308, v309);
      return (*(v390 + 8))(v302, v300);
    default:
      v394 = 15;
      sub_231D08A40();
      OUTLINED_FUNCTION_13_6(&unk_2846F1AC0, &v394);
      OUTLINED_FUNCTION_16_6();
      sub_231E12080();
      v303 = &v379;
LABEL_15:
      v304 = *(v303 - 32);
LABEL_16:
      (*(v304 + 8))(v286, v301);
      return (*(v390 + 8))(v285, v290);
  }
}