void sub_23DF1FE24(uint64_t **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v78 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v73 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 8 * v16);
                *(v17 + 8 * v16) = *(v17 + 8 * v15);
                *(v17 + 8 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
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
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (v23 >= *v25)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v75 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23DE4CE18(0, v7[2] + 1, 1, v7);
        v7 = v71;
      }

      v29 = v7[2];
      v28 = v7[3];
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        sub_23DE4CE18(v28 > 1, v29 + 1, 1, v7);
        v7 = v72;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v76 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
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

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_23DF20974((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v76);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v70 - 1 - v33));
          v69[2] = v70 - 1;
          v19 = v70 > 2;
          v7 = v69;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v75;
      a4 = v73;
      if (v75 >= v5)
      {
        v78 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_23DF202C4(&v78, *result, a3);
LABEL_89:
}

uint64_t sub_23DF202C4(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_23DF20AE8(v5);
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
    sub_23DF20974((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
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

uint64_t sub_23DF203F0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v63 = a4;
  v7 = sub_23E1FC08C();
  v8 = MEMORY[0x28223BE20](v7);
  v61 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v60 = &v51 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v15 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v15)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v18 = (a2 - a1) / v14;
  v66 = a1;
  v65 = v63;
  v58 = (v11 + 8);
  v59 = (v11 + 16);
  v19 = v14;
  v20 = v16 / v14;
  if (v18 >= v16 / v14)
  {
    v35 = v63;
    sub_23DF319B4(a2, v16 / v14, v63);
    v36 = v35 + v20 * v19;
    v37 = -v19;
    v38 = v36;
    v54 = -v19;
    v55 = a1;
LABEL_36:
    v56 = a2;
    v57 = a2 + v37;
    v39 = a3;
    v52 = v38;
    while (1)
    {
      if (v36 <= v63)
      {
        v66 = a2;
        v64 = v38;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v53 = v38;
      v62 = v39 + v37;
      v40 = v36 + v37;
      v41 = v36;
      v42 = v60;
      v43 = *v59;
      (*v59)(v60, v40, v7);
      v44 = v61;
      v43(v61, v57, v7);
      sub_23DF21C74(&qword_27E32D9F8, MEMORY[0x277CC9578]);
      LOBYTE(v43) = sub_23E1FDB1C();
      v45 = *v58;
      (*v58)(v44, v7);
      v45(v42, v7);
      if (v43)
      {
        v36 = v41;
        a3 = v62;
        if (v39 < v56 || v62 >= v56)
        {
          a2 = v57;
          swift_arrayInitWithTakeFrontToBack();
          v38 = v53;
          v37 = v54;
          a1 = v55;
        }

        else
        {
          v49 = v53;
          v37 = v54;
          v38 = v53;
          v15 = v39 == v56;
          v50 = v57;
          a2 = v57;
          a1 = v55;
          if (!v15)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v50;
            v38 = v49;
          }
        }

        goto LABEL_36;
      }

      v46 = v62;
      if (v39 < v41 || v62 >= v41)
      {
        swift_arrayInitWithTakeFrontToBack();
        v39 = v46;
        v36 = v40;
        v38 = v40;
        a1 = v55;
        a2 = v56;
        v37 = v54;
      }

      else
      {
        v38 = v40;
        v15 = v41 == v39;
        v39 = v62;
        v36 = v40;
        a1 = v55;
        a2 = v56;
        v37 = v54;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          v39 = v46;
          v36 = v40;
          v38 = v40;
        }
      }
    }

    v66 = a2;
    v64 = v52;
  }

  else
  {
    v21 = v63;
    sub_23DF319B4(a1, (a2 - a1) / v14, v63);
    v57 = v21 + v18 * v19;
    v64 = v57;
    v22 = v19;
    v62 = a3;
    while (v63 < v57 && a2 < a3)
    {
      v24 = a1;
      v25 = v60;
      v26 = *v59;
      (*v59)(v60, a2, v7);
      v27 = a2;
      v28 = v61;
      v26(v61, v63, v7);
      sub_23DF21C74(&qword_27E32D9F8, MEMORY[0x277CC9578]);
      v29 = sub_23E1FDB1C();
      v30 = *v58;
      (*v58)(v28, v7);
      v30(v25, v7);
      if (v29)
      {
        a2 = v27 + v22;
        v31 = v24;
        if (v24 < v27 || v24 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v62;
        }

        else
        {
          a3 = v62;
          if (v24 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v33 = v63 + v22;
        v31 = v24;
        if (v24 < v63 || v24 >= v33)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v27;
          a3 = v62;
        }

        else
        {
          a3 = v62;
          a2 = v27;
          if (v24 != v63)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v65 = v33;
        v63 = v33;
      }

      a1 = v31 + v22;
      v66 = a1;
    }
  }

LABEL_58:
  sub_23DF20B2C(&v66, &v65, &v64, MEMORY[0x277CC9578]);
  return 1;
}

uint64_t sub_23DF20974(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_23DF31CF0(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6++;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
    }

    v12 = *v4;
    v13 = v7 == v4++;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_23DF31CF0(a2, a3 - a2, a4);
  v10 = &v4[v9];
LABEL_15:
  v14 = v6 - 1;
  for (--v5; v10 > v4 && v6 > v7; --v5)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 1 == v6--;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 1)
    {
      *v5 = v16;
    }

    --v10;
  }

LABEL_28:
  v17 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

void sub_23DF20B2C(unint64_t *a1, unint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  a4(0);
  OUTLINED_FUNCTION_21();
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  v10 = v5 + (v6 - v5) / v8 * v8;
  if (v4 < v5 || v4 >= v10)
  {

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_23DF20C0C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_23DF20C38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C290, &unk_23E224020);
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

void sub_23DF20D38()
{
  OUTLINED_FUNCTION_90();
  v2 = v1;
  v3 = sub_23E1FBBDC();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_32_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_94_0();
  v24 = v6;
  if (*(v2 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D710, &qword_23E229898), OUTLINED_FUNCTION_20(), v7 = sub_23E1FE57C(), *(v2 + 16)))
  {
    OUTLINED_FUNCTION_8_7();
    while (v8 < *(v2 + 16))
    {
      v9 = OUTLINED_FUNCTION_11_12(v8);
      (v2)(v9);
      v10 = *(v7 + 40);
      OUTLINED_FUNCTION_9_11();
      v12 = sub_23DF21C74(&qword_27E32CD30, v11);
      OUTLINED_FUNCTION_53_3(v12);
      OUTLINED_FUNCTION_48_6();
      while (1)
      {
        OUTLINED_FUNCTION_24_6();
        if (v14)
        {
          break;
        }

        v15 = OUTLINED_FUNCTION_29_4();
        (v2)(v15);
        OUTLINED_FUNCTION_9_11();
        v17 = sub_23DF21C74(&qword_27E32D8D0, v16);
        OUTLINED_FUNCTION_41_5(v17);
        v18 = OUTLINED_FUNCTION_51_3();
        (v7)(v18);
        if (v10)
        {
          (v7)(v24, v3);
          v7 = v0;
          goto LABEL_12;
        }

        v7 = v0;
      }

      v19 = OUTLINED_FUNCTION_18_13(v13);
      v20(v19);
      v21 = *(v7 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_16;
      }

      *(v7 + 16) = v23;
LABEL_12:
      OUTLINED_FUNCTION_39_4();
      if (v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_76();
  }
}

void sub_23DF20F38()
{
  OUTLINED_FUNCTION_90();
  v2 = v1;
  v3 = sub_23E1FD0EC();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_32_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_94_0();
  v24 = v6;
  if (*(v2 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DA20, &qword_23E22A3A0), OUTLINED_FUNCTION_20(), v7 = sub_23E1FE57C(), *(v2 + 16)))
  {
    OUTLINED_FUNCTION_8_7();
    while (v8 < *(v2 + 16))
    {
      v9 = OUTLINED_FUNCTION_11_12(v8);
      (v2)(v9);
      v10 = *(v7 + 40);
      OUTLINED_FUNCTION_13_9();
      v12 = sub_23DF21C74(&qword_27E32DA28, v11);
      OUTLINED_FUNCTION_53_3(v12);
      OUTLINED_FUNCTION_48_6();
      while (1)
      {
        OUTLINED_FUNCTION_24_6();
        if (v14)
        {
          break;
        }

        v15 = OUTLINED_FUNCTION_29_4();
        (v2)(v15);
        OUTLINED_FUNCTION_13_9();
        v17 = sub_23DF21C74(&qword_27E32DA30, v16);
        OUTLINED_FUNCTION_41_5(v17);
        v18 = OUTLINED_FUNCTION_51_3();
        (v7)(v18);
        if (v10)
        {
          (v7)(v24, v3);
          v7 = v0;
          goto LABEL_12;
        }

        v7 = v0;
      }

      v19 = OUTLINED_FUNCTION_18_13(v13);
      v20(v19);
      v21 = *(v7 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_16;
      }

      *(v7 + 16) = v23;
LABEL_12:
      OUTLINED_FUNCTION_39_4();
      if (v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_76();
  }
}

uint64_t sub_23DF21138(uint64_t a1)
{
  v2 = sub_23E1FC21C();
  v32 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D9D8, &qword_23E22A358);
  result = sub_23E1FE57C();
  v8 = result;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_15:

    return v8;
  }

  v9 = 0;
  v35 = result + 56;
  v10 = *(v32 + 80);
  v29 = a1;
  v30 = a1 + ((v10 + 32) & ~v10);
  v34 = v32 + 16;
  v11 = (v32 + 8);
  v28 = (v32 + 32);
  while (v9 < *(a1 + 16))
  {
    v12 = *(v32 + 72);
    v33 = v9 + 1;
    v13 = *(v32 + 16);
    v13(v36, v30 + v12 * v9, v2);
    sub_23DF21C74(&qword_27E32D9E0, MEMORY[0x277CC99D0]);
    v14 = sub_23E1FDADC();
    v15 = ~(-1 << *(v8 + 32));
    while (1)
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *(v35 + 8 * v17);
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) == 0)
      {
        break;
      }

      v20 = v8;
      v13(v5, *(v8 + 48) + v16 * v12, v2);
      sub_23DF21C74(&qword_27E32D9E8, MEMORY[0x277CC99D0]);
      v21 = sub_23E1FDB2C();
      v22 = *v11;
      (*v11)(v5, v2);
      if (v21)
      {
        result = (v22)(v36, v2);
        v8 = v20;
        goto LABEL_12;
      }

      v14 = v16 + 1;
      v8 = v20;
    }

    v23 = v36;
    *(v35 + 8 * v17) = v19 | v18;
    result = (*v28)(*(v8 + 48) + v16 * v12, v23, v2);
    v24 = *(v8 + 16);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    *(v8 + 16) = v26;
LABEL_12:
    v9 = v33;
    a1 = v29;
    if (v33 == v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_23DF2147C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_23E1FDBDC();

  [a3 setDateFormat_];
}

unint64_t sub_23DF214E0(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_23E1FBBDC();
  v9 = *(v8 - 8);
  v41 = v8;
  v42 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v40 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v39 = &v32 - v12;
  v14 = a4 + 56;
  v13 = *(a4 + 56);
  v38 = -1 << *(a4 + 32);
  if (-v38 < 64)
  {
    v15 = ~(-1 << -v38);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v13;
  if (!a2)
  {
    v19 = 0;
    result = 0;
LABEL_22:
    v31 = ~v38;
    *a1 = a4;
    a1[1] = v14;
    a1[2] = v31;
    a1[3] = v19;
    a1[4] = v16;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v19 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = a1;
    v34 = a4 + 56;
    v18 = 0;
    v19 = 0;
    v20 = (63 - v38) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    v37 = result;
    while (v18 < result)
    {
      if (__OFADD__(v18, 1))
      {
        goto LABEL_26;
      }

      if (!v16)
      {
        v14 = v34;
        while (1)
        {
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v21 >= v20)
          {
            v16 = 0;
            result = v18;
            a1 = v33;
            goto LABEL_22;
          }

          v16 = *(v34 + 8 * v21);
          ++v19;
          if (v16)
          {
            v43 = v18 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v43 = v18 + 1;
      v21 = v19;
LABEL_17:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = a4;
      v24 = *(a4 + 48);
      v26 = v41;
      v25 = v42;
      v27 = *(v42 + 72);
      v28 = v40;
      (*(v42 + 16))(v40, v24 + v27 * (v22 | (v21 << 6)), v41);
      v29 = *(v25 + 32);
      v30 = v39;
      v29(v39, v28, v26);
      v29(a2, v30, v26);
      result = v37;
      v18 = v43;
      if (v43 == v37)
      {
        v19 = v21;
        a1 = v33;
        v14 = v34;
        a4 = v23;
        goto LABEL_22;
      }

      a2 += v27;
      v19 = v21;
      a4 = v23;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_23DF21778(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 9) | (8 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23DF21980(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C180, &unk_23E224340);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DF219F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C180, &unk_23E224340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DF21A7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C180, &unk_23E224340);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DF21AEC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23DE7E040(result, a2);
  }

  return result;
}

unint64_t sub_23DF21B00()
{
  result = qword_27E32DA10;
  if (!qword_27E32DA10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E32DA10);
  }

  return result;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23DF21BB4@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, void (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  if (result < 0 || (v5 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = *(a3 + 48);
  a4(0);
  OUTLINED_FUNCTION_21();
  v10 = *(v9 + 16);
  v11 = v7 + *(v9 + 72) * v5;

  return v10(a5, v11, v8);
}

uint64_t sub_23DF21C74(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntelligencePlatformDataActionsFlags(_BYTE *result, int a2, int a3)
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

unint64_t sub_23DF21D68()
{
  result = qword_27E32DAC8;
  if (!qword_27E32DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32DAC8);
  }

  return result;
}

void OUTLINED_FUNCTION_8_7()
{
  *(v2 - 96) = v1 + 56;
  v3 = *(v2 - 120);
  v4 = *(v3 + 80);
  *(v2 - 144) = v0;
  *(v2 - 136) = v0 + ((v4 + 32) & ~v4);
  *(v2 - 104) = v3 + 16;
  *(v2 - 152) = v3 + 32;
}

BOOL OUTLINED_FUNCTION_20_6(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_27_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_41_5(uint64_t a1)
{

  return sub_23E1FDB2C();
}

void OUTLINED_FUNCTION_42_4()
{
  v2 = *(v0 + 16) + 1;

  sub_23DE640F4(0, v2, 1);
}

void *OUTLINED_FUNCTION_43_4(uint64_t a1, uint64_t a2, ...)
{

  return sub_23E1FE84C();
}

uint64_t OUTLINED_FUNCTION_46_4(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_23E1FDCCC();
}

uint64_t OUTLINED_FUNCTION_52_4(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_53_3(uint64_t a1)
{

  return sub_23E1FDADC();
}

id sub_23DF220FC()
{
  v231 = sub_23E1FC77C();
  v234 = *(v231 - 8);
  MEMORY[0x28223BE20](v231);
  v230 = (v207 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v207 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v207 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E225EA0;
  v8 = *MEMORY[0x277D7CB18];
  v9 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000016;
  v224 = 0xD000000000000016;
  *(inited + 48) = 0x800000023E258E70;
  v10 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  v11 = v8;
  v12 = v10;
  v13 = sub_23E1FDCBC("capture|take|screen", 19);
  v15 = v14;
  sub_23E1FDCBC("capture|take|screen", 19);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v235 = qword_280DAE278;
  v16 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v17 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v13, v15);
  v19 = v18;
  v20 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v236 = v20;
  *(inited + 80) = v19;
  v21 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v20;
  *(inited + 112) = v21;
  v233 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v22 = swift_initStackObject();
  v226 = xmmword_23E222370;
  *(v22 + 16) = xmmword_23E222370;
  v23 = *MEMORY[0x277D7CC28];
  *(v22 + 32) = *MEMORY[0x277D7CC28];
  v24 = v21;
  v25 = v23;
  v229 = sub_23E1FDCBC("Image from the device's screen.", 31);
  v27 = v26;
  sub_23E1FDCBC("Image from the device's screen.", 31);
  sub_23E1FC14C();
  v28 = v235;
  v29 = [v235 &selRef_characterIsMember_];
  v232 = v3;
  sub_23E1FBF9C();

  v30 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v229, v27);
  *(v22 + 40) = v31;
  v32 = *MEMORY[0x277D7CC30];
  v33 = v236;
  *(v22 + 64) = v236;
  *(v22 + 72) = v32;
  v34 = v32;
  v35 = sub_23E1FDCBC("Take a screenshot of the device's screen.", 41);
  v228 = v36;
  v229 = v35;
  sub_23E1FDCBC("Take a screenshot of the device's screen.", 41);
  v37 = v6;
  sub_23E1FC14C();
  v38 = [v28 bundleURL];
  sub_23E1FBF9C();

  v39 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v229, v228);
  *(v22 + 104) = v33;
  *(v22 + 80) = v40;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v41 = sub_23E1FDABC();
  v42 = v233;
  v43 = sub_23DF3BE54(v41);
  v44 = MEMORY[0x277D7CB48];
  *(inited + 120) = v43;
  v45 = *v44;
  *(inited + 144) = v42;
  *(inited + 152) = v45;
  *(inited + 160) = 2036429383;
  *(inited + 168) = 0xE400000000000000;
  v46 = *MEMORY[0x277D7CB60];
  v47 = MEMORY[0x277D837D0];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v46;
  *(inited + 200) = 0xD000000000000011;
  *(inited + 208) = 0x800000023E258F00;
  v48 = *MEMORY[0x277D7CB90];
  *(inited + 224) = v47;
  *(inited + 232) = v48;
  v49 = v45;
  v50 = v46;
  v51 = v48;
  v52 = sub_23E1FDCBC("Take Screenshot (Action Name)", 29);
  v54 = v53;
  sub_23E1FDCBC("Take Screenshot", 15);
  sub_23E1FC14C();
  v55 = [v28 bundleURL];
  sub_23E1FBF9C();

  v56 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v52, v54);
  *(inited + 240) = v57;
  v58 = *MEMORY[0x277D7CDD0];
  *(inited + 264) = v236;
  *(inited + 272) = v58;
  v225 = inited;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v59 = swift_initStackObject();
  *(v59 + 16) = xmmword_23E222350;
  *(v59 + 32) = 0x656C7069746C754DLL;
  *(v59 + 40) = 0xE800000000000000;
  v60 = MEMORY[0x277D839B0];
  *(v59 + 48) = 1;
  *(v59 + 72) = v60;
  *(v59 + 80) = 0x614E74757074754FLL;
  *(v59 + 88) = 0xEA0000000000656DLL;
  v61 = v58;
  v62 = sub_23E1FDCBC("Screenshot (Default Output Name)", 32);
  v64 = v63;
  sub_23E1FDCBC("Screenshot", 10);
  sub_23E1FC14C();
  v65 = [v28 bundleURL];
  sub_23E1FBF9C();

  v66 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v67 = v37;
  sub_23DE477A0(v62, v64);
  *(v59 + 96) = v68;
  *(v59 + 120) = v236;
  *(v59 + 128) = 0x6465726975716552;
  *(v59 + 136) = 0xE800000000000000;
  *(v59 + 144) = 1;
  *(v59 + 168) = MEMORY[0x277D839B0];
  *(v59 + 176) = 0x7365707954;
  *(v59 + 184) = 0xE500000000000000;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v59 + 216) = v214;
  *(v59 + 192) = &unk_2850250C0;
  v69 = MEMORY[0x277D837D0];
  v70 = sub_23E1FDABC();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v72 = v225;
  v225[35] = v70;
  v73 = *MEMORY[0x277D7CBA0];
  v72[38] = v71;
  v72[39] = v73;
  v207[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v229 = swift_allocObject();
  *(v229 + 16) = xmmword_23E225530;
  v233 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v74 = swift_allocObject();
  v220 = xmmword_23E224C10;
  *(v74 + 16) = xmmword_23E224C10;
  v75 = *MEMORY[0x277D7CDF8];
  v218 = 0x800000023E24FDA0;
  v76 = v224;
  *(v74 + 32) = v75;
  *(v74 + 40) = v76;
  *(v74 + 48) = 0x800000023E24FDA0;
  v77 = *MEMORY[0x277D7CE00];
  *(v74 + 64) = v69;
  *(v74 + 72) = v77;
  *(v74 + 80) = 0x726353206C6C7546;
  *(v74 + 88) = 0xEB000000006E6565;
  v78 = *MEMORY[0x277D7CE38];
  *(v74 + 104) = v69;
  *(v74 + 112) = v78;
  v227 = swift_allocObject();
  v217 = xmmword_23E2246F0;
  *(v227 + 16) = xmmword_23E2246F0;
  v79 = v75;
  v80 = v77;
  v81 = v79;
  v82 = v80;
  v83 = v78;
  v211 = v81;
  *&v210 = v82;
  v212 = v83;
  v84 = v73;
  v85 = sub_23E1FDCBC("Full Screen (WFTakeScreenshotScreenshotType)", 44);
  v87 = v86;
  sub_23E1FDCBC("Full Screen", 11);
  v88 = v67;
  sub_23E1FC14C();
  v89 = v235;
  v90 = [v235 bundleURL];
  sub_23E1FBF9C();

  v91 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v92 = v88;
  sub_23DE477A0(v85, v87);
  v93 = v227;
  *(v227 + 32) = v94;
  v223 = sub_23E1FDCBC("Interactive (WFTakeScreenshotScreenshotType)", 44);
  v96 = v95;
  sub_23E1FDCBC("Interactive", 11);
  sub_23E1FC14C();
  v97 = [v89 bundleURL];
  sub_23E1FBF9C();

  v98 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v223, v96);
  *(v93 + 40) = v99;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  v213 = v100;
  *(v74 + 120) = v93;
  v101 = *MEMORY[0x277D7CE70];
  *(v74 + 144) = v100;
  *(v74 + 152) = v101;
  *(v74 + 160) = 0xD00000000000001ELL;
  *(v74 + 168) = 0x800000023E24DC00;
  v102 = *MEMORY[0x277D7CE80];
  *(v74 + 184) = MEMORY[0x277D837D0];
  *(v74 + 192) = v102;
  v103 = v101;
  v104 = v102;
  v105 = v103;
  v106 = v104;
  v208 = v105;
  v209 = v106;
  v107 = sub_23E1FDCBC("Type (WFTakeScreenshotScreenshotType)", 37);
  v109 = v108;
  sub_23E1FDCBC("Type", 4);
  v110 = v92;
  sub_23E1FC14C();
  v111 = [v235 bundleURL];
  sub_23E1FBF9C();

  v112 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v113 = v110;
  sub_23DE477A0(v107, v109);
  *(v74 + 200) = v114;
  v115 = *MEMORY[0x277D7CEE8];
  *(v74 + 224) = v236;
  *(v74 + 232) = v115;
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_23E2235B0;
  v117 = v230;
  *v230 = 2;
  LODWORD(v223) = *MEMORY[0x277D7BEE0];
  v118 = *(v234 + 104);
  v234 += 104;
  v222 = v118;
  v118(v117);
  v219 = sub_23E1FC79C();
  v119 = objc_allocWithZone(v219);
  v221 = v115;
  *(v116 + 32) = sub_23E1FC78C();
  *(v74 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BF50, &unk_23E2235C0);
  *(v74 + 240) = v116;
  _s3__C3KeyVMa_0(0);
  v216 = v120;
  v227 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v121 = sub_23E1FDABC();
  v122 = sub_23DF3BE9C(v121);
  *(v229 + 32) = v122;
  v123 = swift_allocObject();
  *(v123 + 16) = v220;
  v124 = v211;
  v125 = v224;
  *(v123 + 32) = v211;
  *(v123 + 40) = v125;
  *(v123 + 48) = v218;
  v126 = MEMORY[0x277D837D0];
  v127 = v210;
  *(v123 + 64) = MEMORY[0x277D837D0];
  *(v123 + 72) = v127;
  *(v123 + 80) = 0x776F646E6957;
  *(v123 + 88) = 0xE600000000000000;
  v128 = v212;
  *(v123 + 104) = v126;
  *(v123 + 112) = v128;
  v129 = swift_allocObject();
  *(v129 + 16) = v217;
  v224 = v124;
  *&v220 = v127;
  v218 = sub_23E1FDCBC("Window (WFTakeScreenshotActionInteractiveSelectionType)", 55);
  v131 = v130;
  sub_23E1FDCBC("Window", 6);
  v132 = v113;
  sub_23E1FC14C();
  v133 = v235;
  v134 = [v235 bundleURL];
  sub_23E1FBF9C();

  v135 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v218, v131);
  *(v129 + 32) = v136;
  v218 = sub_23E1FDCBC("Custom (WFTakeScreenshotActionInteractiveSelectionType)", 55);
  *&v217 = v137;
  sub_23E1FDCBC("Custom", 6);
  v138 = v132;
  sub_23E1FC14C();
  v139 = [v133 bundleURL];
  sub_23E1FBF9C();

  v140 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v218, v217);
  *(v129 + 40) = v141;
  *(v123 + 120) = v129;
  v142 = v208;
  v143 = v209;
  *(v123 + 144) = v213;
  *(v123 + 152) = v142;
  *(v123 + 160) = 0xD00000000000002ELL;
  *(v123 + 168) = 0x800000023E2590D0;
  *(v123 + 184) = MEMORY[0x277D837D0];
  *(v123 + 192) = v143;
  *&v217 = v142;
  v218 = v143;
  v144 = sub_23E1FDCBC("Selection (WFTakeScreenshotActionInteractiveSelectionType)", 58);
  v146 = v145;
  sub_23E1FDCBC("Selection", 9);
  v207[0] = v138;
  sub_23E1FC14C();
  v147 = [v235 bundleURL];
  sub_23E1FBF9C();

  v148 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v144, v146);
  *(v123 + 200) = v149;
  v150 = v221;
  *(v123 + 224) = v236;
  *(v123 + 232) = v150;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2E0, &qword_23E224068);
  v151 = swift_allocObject();
  *(v151 + 16) = v226;
  v153 = v230;
  v152 = v231;
  *v230 = 2;
  v222(v153, v223, v152);
  v154 = v219;
  v155 = objc_allocWithZone(v219);
  v156 = sub_23E1FC78C();
  *(v151 + 56) = v154;
  *(v151 + 32) = v156;
  v157 = MEMORY[0x277D837D0];
  v158 = sub_23E1FDABC();
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(v151 + 88) = v212;
  *(v151 + 64) = v158;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7B0, &qword_23E224B88);
  *(v123 + 264) = v211;
  *(v123 + 240) = v151;
  v159 = sub_23E1FDABC();
  v160 = sub_23DF3BE9C(v159);
  *(v229 + 40) = v160;
  v161 = swift_initStackObject();
  v210 = xmmword_23E224710;
  *(v161 + 16) = xmmword_23E224710;
  v209 = 0x800000023E250E40;
  *(v161 + 32) = v224;
  *(v161 + 40) = 0xD000000000000011;
  *(v161 + 48) = 0x800000023E250E40;
  v162 = v220;
  *(v161 + 64) = v157;
  *(v161 + 72) = v162;
  *(v161 + 80) = 0;
  v163 = v217;
  *(v161 + 104) = MEMORY[0x277D839B0];
  *(v161 + 112) = v163;
  *(v161 + 120) = 0xD00000000000001FLL;
  *(v161 + 128) = 0x800000023E259150;
  v164 = v218;
  *(v161 + 144) = v157;
  *(v161 + 152) = v164;
  v165 = sub_23E1FDCBC("Capture Main Display Only (WFTakeScreenshotMainMonitorOnly)", 59);
  v167 = v166;
  sub_23E1FDCBC("Capture Main Display Only", 25);
  sub_23E1FC14C();
  v168 = [v235 bundleURL];
  sub_23E1FBF9C();

  v169 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v165, v167);
  *(v161 + 160) = v170;
  v171 = v221;
  *(v161 + 184) = v236;
  *(v161 + 192) = v171;
  v172 = swift_allocObject();
  *(v172 + 16) = v226;
  v174 = v230;
  v173 = v231;
  *v230 = 2;
  v222(v174, v223, v173);
  v175 = v219;
  v176 = objc_allocWithZone(v219);
  v177 = sub_23E1FC78C();
  *(v172 + 56) = v175;
  *(v172 + 32) = v177;
  v178 = MEMORY[0x277D837D0];
  v179 = sub_23E1FDABC();
  v180 = v211;
  *(v172 + 88) = v212;
  *(v172 + 64) = v179;
  *(v161 + 224) = v180;
  *(v161 + 200) = v172;
  v181 = sub_23E1FDABC();
  v182 = sub_23DF3BE9C(v181);
  v183 = v229;
  *(v229 + 48) = v182;
  v184 = swift_allocObject();
  *(v184 + 16) = v210;
  *(v184 + 32) = v224;
  *(v184 + 40) = 0xD000000000000011;
  *(v184 + 48) = v209;
  v185 = v220;
  *(v184 + 64) = v178;
  *(v184 + 72) = v185;
  *(v184 + 80) = 0;
  v186 = *MEMORY[0x277D7CE40];
  v187 = MEMORY[0x277D839B0];
  *(v184 + 104) = MEMORY[0x277D839B0];
  *(v184 + 112) = v186;
  *(v184 + 120) = 1;
  *(v184 + 144) = v187;
  *(v184 + 152) = v217;
  *(v184 + 160) = 0xD000000000000030;
  *(v184 + 168) = 0x800000023E2591D0;
  v188 = v218;
  *(v184 + 184) = v178;
  *(v184 + 192) = v188;
  v189 = v186;
  v190 = sub_23E1FDCBC("Ignore Contextual Assistance Layers (WFTakeScreenshotIgnoreContextualAssistanceLayers)", 86);
  v192 = v191;
  sub_23E1FDCBC("Ignore Contextual Assistance Layers", 35);
  sub_23E1FC14C();
  v193 = [v235 bundleURL];
  sub_23E1FBF9C();

  v194 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v190, v192);
  *(v184 + 224) = v236;
  *(v184 + 200) = v195;
  v196 = sub_23E1FDABC();
  *(v183 + 56) = sub_23DF3BE9C(v196);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v198 = v225;
  v225[40] = v183;
  v199 = *MEMORY[0x277D7CCA8];
  v198[43] = v197;
  v198[44] = v199;
  v200 = v199;
  v201 = sub_23E1FDABC();
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA30, &unk_23E225EB0);
  v198[45] = v201;
  v203 = *MEMORY[0x277D7CF20];
  v198[48] = v202;
  v198[49] = v203;
  v198[53] = v214;
  v198[50] = &unk_285025258;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v204 = v203;
  v205 = sub_23E1FDABC();
  return sub_23DF3BF9C(v205);
}

id sub_23DF23710()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v392 = &v358 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v358 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v365 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222360;
  v6 = *MEMORY[0x277D7CB18];
  v7 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x800000023E2592D0;
  v8 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  v9 = v6;
  v10 = v8;
  v11 = sub_23E1FDCBC("date|time|formatter", 19);
  v13 = v12;
  sub_23E1FDCBC("date|time|formatter", 19);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v393 = qword_280DAE278;
  v14 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v15 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v11, v13);
  v17 = v16;
  v18 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v391 = v18;
  *(inited + 80) = v17;
  v19 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v18;
  *(inited + 112) = v19;
  v390 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_23E222370;
  v381 = inited;
  v21 = *MEMORY[0x277D7CC20];
  *(v20 + 32) = *MEMORY[0x277D7CC20];
  v22 = v19;
  v23 = v21;
  v24 = sub_23E1FDCBC("Custom format strings use the format patterns from Unicode Technical Standard #35 (unicode.org/reports/tr35/tr35-31/tr35-dates.html#Date_Format_Patterns).", 154);
  v26 = v25;
  sub_23E1FDCBC("Custom format strings use the format patterns from Unicode Technical Standard #35 (unicode.org/reports/tr35/tr35-31/tr35-dates.html#Date_Format_Patterns).", 154);
  sub_23E1FC14C();
  v27 = v393;
  v28 = [v393 bundleURL];
  sub_23E1FBF9C();

  v29 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v30 = v26;
  v31 = v4;
  sub_23DE477A0(v24, v30);
  *(v20 + 40) = v32;
  v33 = *MEMORY[0x277D7CC30];
  v34 = v391;
  *(v20 + 64) = v391;
  *(v20 + 72) = v33;
  v35 = v33;
  v36 = sub_23E1FDCBC("Formats a date and time into text.", 34);
  v38 = v37;
  sub_23E1FDCBC("Formats a date and time into text.", 34);
  sub_23E1FC14C();
  v39 = [v27 bundleURL];
  sub_23E1FBF9C();

  v40 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v36, v38);
  *(v20 + 104) = v34;
  *(v20 + 80) = v41;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v42 = sub_23E1FDABC();
  v43 = v390;
  v44 = sub_23DF3BE54(v42);
  v45 = v381;
  v381[15] = v44;
  v46 = *MEMORY[0x277D7CB48];
  v45[18] = v43;
  v45[19] = v46;
  v45[20] = 1953392980;
  v45[21] = 0xE400000000000000;
  v47 = *MEMORY[0x277D7CB60];
  v48 = MEMORY[0x277D837D0];
  v45[23] = MEMORY[0x277D837D0];
  v45[24] = v47;
  v45[25] = 0x7261646E656C6163;
  v45[26] = 0xE800000000000000;
  v49 = *MEMORY[0x277D7CB58];
  v45[28] = v48;
  v45[29] = v49;
  v45[30] = 6579538;
  v45[31] = 0xE300000000000000;
  v50 = *MEMORY[0x277D7CCC0];
  v45[33] = v48;
  v45[34] = v50;
  v51 = v48;
  v52 = v45;
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v53 = swift_initStackObject();
  v386 = xmmword_23E222350;
  *(v53 + 16) = xmmword_23E222350;
  *(v53 + 32) = 0x656C7069746C754DLL;
  *(v53 + 40) = 0xE800000000000000;
  v54 = MEMORY[0x277D839B0];
  *(v53 + 48) = 1;
  *(v53 + 72) = v54;
  strcpy((v53 + 80), "ParameterKey");
  *(v53 + 93) = 0;
  *(v53 + 94) = -5120;
  *(v53 + 96) = 0x657461444657;
  *(v53 + 104) = 0xE600000000000000;
  *(v53 + 120) = v51;
  *(v53 + 128) = 0x6465726975716552;
  *(v53 + 136) = 0xE800000000000000;
  *(v53 + 144) = 1;
  *(v53 + 168) = v54;
  *(v53 + 176) = 0x7365707954;
  *(v53 + 184) = 0xE500000000000000;
  v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v53 + 216) = v382;
  *(v53 + 192) = &unk_285025288;
  v55 = v46;
  v56 = v47;
  v57 = v49;
  v58 = v50;
  v59 = sub_23E1FDABC();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v390 = v60;
  v52[35] = v59;
  v61 = *MEMORY[0x277D7CB90];
  v52[38] = v60;
  v52[39] = v61;
  v62 = v61;
  v63 = sub_23E1FDCBC("Format Date (Action Name)", 25);
  v65 = v64;
  sub_23E1FDCBC("Format Date", 11);
  v358 = v31;
  sub_23E1FC14C();
  v66 = v393;
  v67 = [v393 bundleURL];
  sub_23E1FBF9C();

  v68 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v63, v65);
  v52[40] = v69;
  v70 = *MEMORY[0x277D7CDD0];
  v71 = v391;
  v52[43] = v391;
  v52[44] = v70;
  v72 = swift_allocObject();
  *(v72 + 16) = v386;
  *(v72 + 32) = 0x75736F6C63736944;
  *(v72 + 40) = 0xEF6C6576654C6572;
  *(v72 + 48) = 0x63696C627550;
  *(v72 + 56) = 0xE600000000000000;
  *(v72 + 72) = MEMORY[0x277D837D0];
  *(v72 + 80) = 0x656C7069746C754DLL;
  *(v72 + 88) = 0xE800000000000000;
  *(v72 + 96) = 1;
  *(v72 + 120) = MEMORY[0x277D839B0];
  *(v72 + 128) = 0x614E74757074754FLL;
  *(v72 + 136) = 0xEA0000000000656DLL;
  v73 = v70;
  v389 = sub_23E1FDCBC("Formatted Date (Default Output Name)", 36);
  v75 = v74;
  sub_23E1FDCBC("Formatted Date", 14);
  sub_23E1FC14C();
  v76 = [v66 bundleURL];
  sub_23E1FBF9C();

  v77 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v389, v75);
  *(v72 + 144) = v78;
  *(v72 + 168) = v71;
  *(v72 + 176) = 0x7365707954;
  *(v72 + 216) = v382;
  *(v72 + 184) = 0xE500000000000000;
  *(v72 + 192) = &unk_2850252B8;
  v79 = MEMORY[0x277D837D0];
  v80 = sub_23E1FDABC();
  v81 = v381;
  v381[45] = v80;
  v82 = *MEMORY[0x277D7CBA0];
  v81[48] = v390;
  v81[49] = v82;
  v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v389 = swift_allocObject();
  *(v389 + 16) = xmmword_23E228180;
  v390 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v83 = swift_allocObject();
  v367 = v83;
  v374 = xmmword_23E224C10;
  *(v83 + 16) = xmmword_23E224C10;
  v84 = *MEMORY[0x277D7CDF8];
  v372 = 0x800000023E24FDA0;
  v373 = 0xD000000000000016;
  *(v83 + 32) = v84;
  *(v83 + 40) = 0xD000000000000016;
  v85 = MEMORY[0x277D7CE00];
  *(v83 + 48) = 0x800000023E24FDA0;
  v86 = *v85;
  *(v83 + 64) = v79;
  *(v83 + 72) = v86;
  *(v83 + 80) = 0x74726F6853;
  *(v83 + 88) = 0xE500000000000000;
  v87 = *MEMORY[0x277D7CE38];
  *(v83 + 104) = v79;
  *(v83 + 112) = v87;
  v388 = swift_allocObject();
  *(v388 + 16) = xmmword_23E224C50;
  v88 = v84;
  v89 = v86;
  v90 = v87;
  v91 = v88;
  v92 = v89;
  v93 = v90;
  v366 = v91;
  v370 = v92;
  v369 = v93;
  v94 = v82;
  v95 = sub_23E1FDCBC("None (WFDateFormatStyle)", 24);
  v97 = v96;
  sub_23E1FDCBC("None", 4);
  sub_23E1FC14C();
  v98 = v393;
  v99 = [v393 bundleURL];
  sub_23E1FBF9C();

  v100 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v95, v97);
  v101 = v388;
  *(v388 + 32) = v102;
  v103 = sub_23E1FDCBC("Short (WFDateFormatStyle)", 25);
  v105 = v104;
  sub_23E1FDCBC("Short", 5);
  sub_23E1FC14C();
  v106 = [v98 bundleURL];
  sub_23E1FBF9C();

  v107 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v103, v105);
  v101[5] = v108;
  v109 = sub_23E1FDCBC("Medium (WFDateFormatStyle)", 26);
  v111 = v110;
  sub_23E1FDCBC("Medium", 6);
  sub_23E1FC14C();
  v112 = [v98 bundleURL];
  sub_23E1FBF9C();

  v113 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v109, v111);
  v101[6] = v114;
  v115 = sub_23E1FDCBC("Long (WFDateFormatStyle)", 24);
  v117 = v116;
  sub_23E1FDCBC("Long", 4);
  sub_23E1FC14C();
  v118 = [v98 bundleURL];
  sub_23E1FBF9C();

  v119 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v115, v117);
  v101[7] = v120;
  v121 = v101;
  v122 = sub_23E1FDCBC("Relative (WFDateFormatStyle)", 28);
  v124 = v123;
  sub_23E1FDCBC("Relative", 8);
  sub_23E1FC14C();
  v125 = v393;
  v126 = [v393 bundleURL];
  sub_23E1FBF9C();

  v127 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v122, v124);
  v121[8] = v128;
  v129 = sub_23E1FDCBC("RFC 2822 (WFDateFormatStyle)", 28);
  v131 = v130;
  sub_23E1FDCBC("RFC 2822", 8);
  sub_23E1FC14C();
  v132 = [v125 bundleURL];
  sub_23E1FBF9C();

  v133 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v129, v131);
  v121[9] = v134;
  v135 = sub_23E1FDCBC("ISO 8601 (WFDateFormatStyle)", 28);
  v137 = v136;
  sub_23E1FDCBC("ISO 8601", 8);
  sub_23E1FC14C();
  v138 = [v125 bundleURL];
  sub_23E1FBF9C();

  v139 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v135, v137);
  v121[10] = v140;
  v141 = sub_23E1FDCBC("Custom (WFDateFormatStyle)", 26);
  v143 = v142;
  sub_23E1FDCBC("Custom", 6);
  sub_23E1FC14C();
  v144 = [v125 bundleURL];
  sub_23E1FBF9C();

  v145 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v141, v143);
  v146 = v121;
  v121[11] = v147;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  v368 = v148;
  v149 = v367;
  *(v367 + 120) = v146;
  v150 = *MEMORY[0x277D7CE70];
  v149[18] = v148;
  v149[19] = v150;
  v379 = 0x800000023E24DC40;
  v149[20] = 0xD000000000000011;
  v149[21] = 0x800000023E24DC40;
  v151 = *MEMORY[0x277D7CE80];
  v149[23] = MEMORY[0x277D837D0];
  v149[24] = v151;
  v152 = v150;
  v153 = v151;
  v154 = v152;
  v155 = v153;
  v362 = v154;
  v361 = v155;
  v156 = sub_23E1FDCBC("Date Format (WFDateFormatStyle)", 31);
  v158 = v157;
  sub_23E1FDCBC("Date Format", 11);
  sub_23E1FC14C();
  v159 = [v125 bundleURL];
  sub_23E1FBF9C();

  v160 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v156, v158);
  v149[25] = v161;
  v162 = *MEMORY[0x277D7CEE8];
  v149[28] = v391;
  v149[29] = v162;
  v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8D8, &qword_23E225540);
  v163 = swift_allocObject();
  v384 = xmmword_23E222340;
  *(v163 + 16) = xmmword_23E222340;
  v164 = swift_initStackObject();
  v364 = xmmword_23E222380;
  *(v164 + 16) = xmmword_23E222380;
  strcpy((v164 + 32), "WFParameterKey");
  *(v164 + 47) = -18;
  v363 = 0x800000023E2595C0;
  *(v164 + 48) = 0xD000000000000011;
  *(v164 + 56) = 0x800000023E2595C0;
  v378 = 0x800000023E2595E0;
  v165 = MEMORY[0x277D837D0];
  *(v164 + 72) = MEMORY[0x277D837D0];
  *(v164 + 80) = 0xD000000000000011;
  *(v164 + 88) = 0x800000023E2595E0;
  *(v164 + 96) = &unk_2850252E8;
  *(v164 + 120) = v382;
  *(v164 + 128) = 0x72756F7365524657;
  v376 = 0x800000023E24D730;
  *(v164 + 168) = v165;
  v380 = 0xD00000000000001BLL;
  *(v164 + 136) = 0xEF7373616C436563;
  *(v164 + 144) = 0xD00000000000001BLL;
  *(v164 + 152) = 0x800000023E24D730;
  v360 = v162;
  *(v163 + 32) = sub_23E1FDABC();
  v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8E0, qword_23E225548);
  v149[33] = v375;
  v149[30] = v163;
  _s3__C3KeyVMa_0(0);
  v387 = v166;
  v388 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v167 = sub_23E1FDABC();
  v168 = sub_23DF3BE9C(v167);
  *(v389 + 32) = v168;
  v169 = swift_allocObject();
  *(v169 + 16) = v374;
  v170 = v366;
  v171 = v372;
  v172 = v373;
  *(v169 + 32) = v366;
  *(v169 + 40) = v172;
  *(v169 + 48) = v171;
  v173 = v370;
  *(v169 + 64) = v165;
  *(v169 + 72) = v173;
  *(v169 + 80) = 0x6D756964654DLL;
  *(v169 + 88) = 0xE600000000000000;
  v174 = v369;
  *(v169 + 104) = v165;
  *(v169 + 112) = v174;
  v367 = swift_allocObject();
  *(v367 + 16) = xmmword_23E224C00;
  v359 = v170;
  v175 = sub_23E1FDCBC("Short (WFRelativeDateFormatStyle)", 33);
  v177 = v176;
  sub_23E1FDCBC("Short", 5);
  sub_23E1FC14C();
  v178 = v125;
  v179 = [v125 bundleURL];
  sub_23E1FBF9C();

  v180 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v175, v177);
  v181 = v367;
  *(v367 + 32) = v182;
  v183 = sub_23E1FDCBC("Medium (WFRelativeDateFormatStyle)", 34);
  v366 = v184;
  sub_23E1FDCBC("Medium", 6);
  sub_23E1FC14C();
  v185 = [v178 bundleURL];
  sub_23E1FBF9C();

  v186 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v183, v366);
  *(v181 + 40) = v187;
  v188 = sub_23E1FDCBC("Long (WFRelativeDateFormatStyle)", 32);
  v190 = v189;
  sub_23E1FDCBC("Long", 4);
  sub_23E1FC14C();
  v191 = [v178 bundleURL];
  sub_23E1FBF9C();

  v192 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v188, v190);
  v194 = v367;
  v193 = v368;
  *(v367 + 48) = v195;
  *(v169 + 120) = v194;
  v197 = v361;
  v196 = v362;
  *(v169 + 144) = v193;
  *(v169 + 152) = v196;
  *(v169 + 160) = 0xD000000000000019;
  *(v169 + 168) = 0x800000023E259690;
  *(v169 + 184) = MEMORY[0x277D837D0];
  *(v169 + 192) = v197;
  v362 = v196;
  v361 = v197;
  v198 = sub_23E1FDCBC("Alternate Format (WFRelativeDateFormatStyle)", 44);
  v200 = v199;
  sub_23E1FDCBC("Alternate Format", 16);
  sub_23E1FC14C();
  v201 = [v393 bundleURL];
  sub_23E1FBF9C();

  v202 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v198, v200);
  *(v169 + 200) = v203;
  v204 = v360;
  *(v169 + 224) = v391;
  *(v169 + 232) = v204;
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7E0, &qword_23E224C28);
  v205 = swift_allocObject();
  *(v205 + 16) = v384;
  v360 = v204;
  v206 = MEMORY[0x277D837D0];
  *(v205 + 32) = sub_23E1FDABC();
  v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7E8, &unk_23E224C30);
  *(v169 + 264) = v366;
  *(v169 + 240) = v205;
  v207 = sub_23E1FDABC();
  v208 = sub_23DF3BE9C(v207);
  *(v389 + 40) = v208;
  v209 = swift_allocObject();
  *(v209 + 16) = v374;
  v210 = v359;
  v211 = v372;
  v212 = v373;
  *(v209 + 32) = v359;
  *(v209 + 40) = v212;
  *(v209 + 48) = v211;
  v213 = v370;
  *(v209 + 64) = v206;
  *(v209 + 72) = v213;
  *(v209 + 80) = 0x74726F6853;
  *(v209 + 88) = 0xE500000000000000;
  v214 = v369;
  *(v209 + 104) = v206;
  *(v209 + 112) = v214;
  *&v374 = swift_allocObject();
  *(v374 + 16) = xmmword_23E22A520;
  v373 = v210;
  v215 = sub_23E1FDCBC("None (WFTimeFormatStyle)", 24);
  v217 = v216;
  sub_23E1FDCBC("None", 4);
  sub_23E1FC14C();
  v218 = v393;
  v219 = [v393 bundleURL];
  sub_23E1FBF9C();

  v220 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v215, v217);
  v221 = v374;
  *(v374 + 32) = v222;
  v223 = sub_23E1FDCBC("Short (WFTimeFormatStyle)", 25);
  v372 = v224;
  sub_23E1FDCBC("Short", 5);
  sub_23E1FC14C();
  v225 = [v218 bundleURL];
  sub_23E1FBF9C();

  v226 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v223, v372);
  v221[5] = v227;
  v228 = sub_23E1FDCBC("Medium (WFTimeFormatStyle)", 26);
  v372 = v229;
  sub_23E1FDCBC("Medium", 6);
  sub_23E1FC14C();
  v230 = [v218 bundleURL];
  sub_23E1FBF9C();

  v231 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v228, v372);
  v221[6] = v232;
  v233 = sub_23E1FDCBC("Long (WFTimeFormatStyle)", 24);
  v372 = v234;
  sub_23E1FDCBC("Long", 4);
  sub_23E1FC14C();
  v235 = [v218 bundleURL];
  sub_23E1FBF9C();

  v236 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v233, v372);
  v221[7] = v237;
  v238 = sub_23E1FDCBC("Relative (WFTimeFormatStyle)", 28);
  v372 = v239;
  sub_23E1FDCBC("Relative", 8);
  sub_23E1FC14C();
  v240 = [v218 bundleURL];
  sub_23E1FBF9C();

  v241 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v238, v372);
  v242 = v374;
  *(v374 + 64) = v243;
  *(v209 + 120) = v242;
  v245 = v361;
  v244 = v362;
  *(v209 + 144) = v368;
  *(v209 + 152) = v244;
  *(v209 + 160) = 0xD000000000000011;
  *(v209 + 168) = v363;
  *(v209 + 184) = MEMORY[0x277D837D0];
  *(v209 + 192) = v245;
  v372 = v244;
  *&v374 = v245;
  v246 = sub_23E1FDCBC("Time Format (WFTimeFormatStyle)", 31);
  v248 = v247;
  sub_23E1FDCBC("Time Format", 11);
  sub_23E1FC14C();
  v249 = [v218 bundleURL];
  sub_23E1FBF9C();

  v250 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v246, v248);
  *(v209 + 200) = v251;
  v252 = v360;
  *(v209 + 224) = v391;
  *(v209 + 232) = v252;
  v253 = swift_allocObject();
  *(v253 + 16) = v384;
  v254 = swift_allocObject();
  *(v254 + 16) = v364;
  strcpy((v254 + 32), "WFParameterKey");
  *(v254 + 47) = -18;
  v255 = v378;
  v256 = v379;
  *(v254 + 48) = 0xD000000000000011;
  *(v254 + 56) = v256;
  v257 = MEMORY[0x277D837D0];
  *(v254 + 72) = MEMORY[0x277D837D0];
  *(v254 + 80) = 0xD000000000000011;
  *(v254 + 88) = v255;
  *(v254 + 96) = &unk_2850253C8;
  *(v254 + 120) = v382;
  *(v254 + 128) = 0x72756F7365524657;
  *(v254 + 168) = v257;
  *(v254 + 136) = 0xEF7373616C436563;
  v258 = v376;
  *(v254 + 144) = v380;
  *(v254 + 152) = v258;
  v371 = v252;
  *(v253 + 32) = sub_23E1FDABC();
  *(v209 + 264) = v375;
  *(v209 + 240) = v253;
  v259 = sub_23E1FDABC();
  v260 = sub_23DF3BE9C(v259);
  *(v389 + 48) = v260;
  v261 = swift_allocObject();
  *(v261 + 16) = v386;
  v263 = v372;
  v262 = v373;
  *(v261 + 32) = v373;
  *(v261 + 40) = 0xD000000000000011;
  *(v261 + 48) = 0x800000023E250E40;
  *(v261 + 64) = v257;
  *(v261 + 72) = v263;
  v370 = 0xD000000000000014;
  *(v261 + 80) = 0xD000000000000014;
  *(v261 + 88) = 0x800000023E2597D0;
  v264 = v374;
  *(v261 + 104) = v257;
  *(v261 + 112) = v264;
  v369 = v262;
  v368 = v263;
  v373 = v264;
  v265 = sub_23E1FDCBC("Include ISO 8601 Time (WFISO8601IncludeTime)", 44);
  v267 = v266;
  sub_23E1FDCBC("Include ISO 8601 Time", 21);
  sub_23E1FC14C();
  v268 = [v393 bundleURL];
  sub_23E1FBF9C();

  v269 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v265, v267);
  *(v261 + 120) = v270;
  v271 = v371;
  *(v261 + 144) = v391;
  *(v261 + 152) = v271;
  v272 = swift_allocObject();
  *(v272 + 16) = v384;
  *&v374 = v271;
  v273 = MEMORY[0x277D837D0];
  *(v272 + 32) = sub_23E1FDABC();
  *(v261 + 184) = v366;
  *(v261 + 160) = v272;
  v274 = sub_23E1FDABC();
  v275 = sub_23DF3BE9C(v274);
  v276 = v389;
  *(v389 + 56) = v275;
  v277 = swift_allocObject();
  *(v277 + 16) = v386;
  v279 = v368;
  v278 = v369;
  v280 = v380;
  *(v277 + 32) = v369;
  *(v277 + 40) = v280;
  *(v277 + 48) = 0x800000023E259840;
  *(v277 + 64) = v273;
  *(v277 + 72) = v279;
  strcpy((v277 + 80), "WFDateFormat");
  *(v277 + 93) = 0;
  *(v277 + 94) = -5120;
  *(v277 + 104) = v273;
  v281 = v373;
  *(v277 + 112) = v373;
  v372 = v278;
  v371 = v279;
  v373 = v281;
  v282 = sub_23E1FDCBC("Format String (WFDateFormat)", 28);
  v284 = v283;
  sub_23E1FDCBC("Format String", 13);
  sub_23E1FC14C();
  v285 = [v393 bundleURL];
  sub_23E1FBF9C();

  v286 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v282, v284);
  *(v277 + 120) = v287;
  v288 = v374;
  *(v277 + 144) = v391;
  *(v277 + 152) = v288;
  v289 = swift_allocObject();
  *(v289 + 16) = v384;
  v290 = MEMORY[0x277D837D0];
  *(v289 + 32) = sub_23E1FDABC();
  *(v277 + 184) = v366;
  *(v277 + 160) = v289;
  v291 = sub_23E1FDABC();
  *(v276 + 64) = sub_23DF3BE9C(v291);
  v292 = swift_allocObject();
  *(v292 + 16) = xmmword_23E224710;
  v293 = v370;
  *(v292 + 32) = v372;
  *(v292 + 40) = v293;
  *(v292 + 48) = 0x800000023E250150;
  v294 = v371;
  *(v292 + 64) = v290;
  *(v292 + 72) = v294;
  *(v292 + 80) = 0x657461444657;
  *(v292 + 88) = 0xE600000000000000;
  v295 = v373;
  *(v292 + 104) = v290;
  *(v292 + 112) = v295;
  v296 = sub_23E1FDCBC("Date (WFDate)", 13);
  v370 = v297;
  sub_23E1FDCBC("Date", 4);
  sub_23E1FC14C();
  v298 = v393;
  v299 = [v393 bundleURL];
  sub_23E1FBF9C();

  v300 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v296, v370);
  *(v292 + 120) = v301;
  v302 = *MEMORY[0x277D7CEA8];
  v303 = v391;
  *(v292 + 144) = v391;
  *(v292 + 152) = v302;
  v304 = v302;
  v305 = sub_23E1FDCBC("Date (WFDate)", 13);
  v370 = v306;
  sub_23E1FDCBC("Date", 4);
  sub_23E1FC14C();
  v307 = v298;
  v308 = [v298 bundleURL];
  sub_23E1FBF9C();

  v309 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v305, v370);
  *(v292 + 160) = v310;
  v311 = *MEMORY[0x277D7CEC8];
  *(v292 + 184) = v303;
  *(v292 + 192) = v311;
  v312 = v311;
  v313 = sub_23E1FDCBC("What date do you want to format? (WFDate)", 41);
  v315 = v314;
  sub_23E1FDCBC("What date do you want to format?", 32);
  sub_23E1FC14C();
  v316 = [v307 bundleURL];
  sub_23E1FBF9C();

  v317 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v313, v315);
  v318 = v391;
  *(v292 + 224) = v391;
  *(v292 + 200) = v319;
  v320 = sub_23E1FDABC();
  v321 = sub_23DF3BE9C(v320);
  *(v389 + 72) = v321;
  v322 = swift_allocObject();
  *(v322 + 16) = v386;
  *(v322 + 32) = v372;
  *(v322 + 40) = 0xD000000000000017;
  *(v322 + 48) = 0x800000023E259910;
  v323 = MEMORY[0x277D837D0];
  v324 = v371;
  *(v322 + 64) = MEMORY[0x277D837D0];
  *(v322 + 72) = v324;
  *(v322 + 80) = 0x656C61636F4C4657;
  *(v322 + 88) = 0xE800000000000000;
  v325 = v373;
  *(v322 + 104) = v323;
  *(v322 + 112) = v325;
  v326 = sub_23E1FDCBC("Locale (WFLocale)", 17);
  v328 = v327;
  sub_23E1FDCBC("Locale", 6);
  sub_23E1FC14C();
  v329 = [v393 bundleURL];
  sub_23E1FBF9C();

  v330 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v326, v328);
  *(v322 + 120) = v331;
  v332 = v374;
  *(v322 + 144) = v318;
  *(v322 + 152) = v332;
  v333 = swift_allocObject();
  *(v333 + 16) = v384;
  v334 = swift_allocObject();
  *(v334 + 16) = v386;
  strcpy((v334 + 32), "WFParameterKey");
  *(v334 + 47) = -18;
  *(v334 + 48) = 0xD000000000000011;
  *(v334 + 56) = v379;
  v335 = MEMORY[0x277D837D0];
  *(v334 + 72) = MEMORY[0x277D837D0];
  *(v334 + 80) = 0xD000000000000013;
  *(v334 + 88) = 0x800000023E24DCC0;
  *(v334 + 96) = 15649;
  *(v334 + 104) = 0xE200000000000000;
  *(v334 + 120) = v335;
  *(v334 + 128) = 0xD000000000000011;
  *(v334 + 136) = v378;
  *(v334 + 144) = &unk_285025538;
  *(v334 + 168) = v382;
  *(v334 + 176) = 0x72756F7365524657;
  *(v334 + 216) = v335;
  *(v334 + 184) = 0xEF7373616C436563;
  v336 = v376;
  *(v334 + 192) = v380;
  *(v334 + 200) = v336;
  *(v333 + 32) = sub_23E1FDABC();
  *(v322 + 184) = v375;
  *(v322 + 160) = v333;
  v337 = sub_23E1FDABC();
  v338 = sub_23DF3BE9C(v337);
  v339 = v389;
  *(v389 + 80) = v338;
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v341 = v381;
  v381[50] = v339;
  v342 = *MEMORY[0x277D7CB98];
  v341[53] = v340;
  v341[54] = v342;
  v343 = v342;
  v344 = sub_23E1FDCBC("Format ${WFDate} (Parameter Summary)", 36);
  v346 = v345;
  sub_23E1FDCBC("Format ${WFDate}", 16);
  sub_23E1FC14C();
  v347 = [v393 bundleURL];
  sub_23E1FBF9C();

  v348 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v344, v346);
  v350 = v349;
  v351 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v352 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v353 = MEMORY[0x277D7CB78];
  v341[55] = v351;
  v354 = *v353;
  v341[58] = v352;
  v341[59] = v354;
  v341[63] = MEMORY[0x277D839B0];
  *(v341 + 480) = 1;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v355 = v354;
  v356 = sub_23E1FDABC();
  return sub_23DF3BF9C(v356);
}

id sub_23DF25E1C()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v136 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v138 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E22A530;
  v5 = *MEMORY[0x277D7CB18];
  v6 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x800000023E2599E0;
  v7 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = v5;
  v9 = v7;
  v10 = sub_23E1FDCBC("translation|language", 20);
  v12 = v11;
  sub_23E1FDCBC("translation|language", 20);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v151 = qword_280DAE278;
  v13 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v14 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v10, v12);
  v16 = v15;
  v17 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v150 = v17;
  *(inited + 80) = v16;
  v18 = *MEMORY[0x277D7CB10];
  *(inited + 104) = v17;
  *(inited + 112) = v18;
  v19 = v18;
  v20 = sub_23E1FDABC();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 120) = v20;
  v22 = *MEMORY[0x277D7CC18];
  *(inited + 144) = v21;
  *(inited + 152) = v22;
  *&v148 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_23E222340;
  v24 = *MEMORY[0x277D7CC30];
  *(v23 + 32) = *MEMORY[0x277D7CC30];
  v25 = v22;
  v26 = v24;
  v27 = sub_23E1FDCBC("Translates the text passed into the action into another language.", 65);
  v29 = v28;
  sub_23E1FDCBC("Translates the text passed into the action into another language.", 65);
  sub_23E1FC14C();
  v30 = [v151 bundleURL];
  v149 = v2;
  sub_23E1FBF9C();

  v31 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v27, v29);
  *(v23 + 64) = v150;
  *(v23 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v33 = sub_23E1FDABC();
  v34 = v148;
  *(inited + 160) = sub_23DF3BE54(v33);
  v35 = *MEMORY[0x277D7CB50];
  *(inited + 184) = v34;
  *(inited + 192) = v35;
  strcpy((inited + 200), "TranslateIcon");
  *(inited + 214) = -4864;
  v36 = *MEMORY[0x277D7CCC0];
  v37 = MEMORY[0x277D837D0];
  *(inited + 224) = MEMORY[0x277D837D0];
  *(inited + 232) = v36;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v38 = swift_initStackObject();
  v148 = xmmword_23E222350;
  *(v38 + 16) = xmmword_23E222350;
  *(v38 + 32) = 0x656C7069746C754DLL;
  *(v38 + 40) = 0xE800000000000000;
  v39 = MEMORY[0x277D839B0];
  *(v38 + 48) = 1;
  *(v38 + 72) = v39;
  strcpy((v38 + 80), "ParameterKey");
  *(v38 + 93) = 0;
  *(v38 + 94) = -5120;
  *(v38 + 96) = 0x547475706E494657;
  *(v38 + 104) = 0xEB00000000747865;
  *(v38 + 120) = v37;
  *(v38 + 128) = 0x6465726975716552;
  *(v38 + 136) = 0xE800000000000000;
  *(v38 + 144) = 1;
  *(v38 + 168) = v39;
  *(v38 + 176) = 0x7365707954;
  v40 = v39;
  *(v38 + 184) = 0xE500000000000000;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v38 + 216) = v145;
  *(v38 + 192) = &unk_2850255B8;
  v41 = v35;
  v42 = v36;
  v43 = sub_23E1FDABC();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v147 = v44;
  *(inited + 240) = v43;
  v45 = *MEMORY[0x277D7CCC8];
  *(inited + 264) = v44;
  *(inited + 272) = v45;
  *(inited + 280) = 0;
  v46 = *MEMORY[0x277D7CB90];
  *(inited + 304) = v40;
  *(inited + 312) = v46;
  v47 = v45;
  v48 = v46;
  v49 = sub_23E1FDCBC("Translate Text (Action Name)", 28);
  v51 = v50;
  sub_23E1FDCBC("Translate Text", 14);
  sub_23E1FC14C();
  v52 = v151;
  v53 = [v151 bundleURL];
  sub_23E1FBF9C();

  v54 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v49, v51);
  *(inited + 320) = v55;
  v56 = *MEMORY[0x277D7CDD0];
  v57 = v150;
  *(inited + 344) = v150;
  *(inited + 352) = v56;
  v58 = swift_allocObject();
  *(v58 + 16) = v148;
  *(v58 + 32) = 0x75736F6C63736944;
  *(v58 + 40) = 0xEF6C6576654C6572;
  *(v58 + 48) = 0x63696C627550;
  *(v58 + 56) = 0xE600000000000000;
  *(v58 + 72) = MEMORY[0x277D837D0];
  *(v58 + 80) = 0x656C7069746C754DLL;
  *(v58 + 88) = 0xE800000000000000;
  *(v58 + 96) = 1;
  *(v58 + 120) = MEMORY[0x277D839B0];
  *(v58 + 128) = 0x614E74757074754FLL;
  *(v58 + 136) = 0xEA0000000000656DLL;
  v59 = v56;
  v146 = sub_23E1FDCBC("Translated Text (Default Output Name)", 37);
  v61 = v60;
  sub_23E1FDCBC("Translated Text", 15);
  sub_23E1FC14C();
  v62 = [v52 bundleURL];
  sub_23E1FBF9C();

  v63 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v146, v61);
  *(v58 + 144) = v64;
  *(v58 + 168) = v57;
  *(v58 + 176) = 0x7365707954;
  *(v58 + 216) = v145;
  *(v58 + 184) = 0xE500000000000000;
  *(v58 + 192) = &unk_2850255E8;
  v65 = MEMORY[0x277D837D0];
  *(inited + 360) = sub_23E1FDABC();
  v66 = *MEMORY[0x277D7CBA0];
  *(inited + 384) = v147;
  *(inited + 392) = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_23E224C00;
  v146 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v67 = swift_allocObject();
  *(v67 + 16) = v148;
  v68 = *MEMORY[0x277D7CDF8];
  v137 = 0x800000023E259AE0;
  *(v67 + 32) = v68;
  *(v67 + 40) = 0xD000000000000026;
  *(v67 + 48) = 0x800000023E259AE0;
  v69 = *MEMORY[0x277D7CE70];
  *(v67 + 64) = v65;
  *(v67 + 72) = v69;
  *(v67 + 80) = 0xD000000000000016;
  *(v67 + 88) = 0x800000023E259B10;
  v70 = *MEMORY[0x277D7CE80];
  *(v67 + 104) = v65;
  *(v67 + 112) = v70;
  v71 = v68;
  v72 = v69;
  v73 = v70;
  v74 = v71;
  v75 = v72;
  v76 = v73;
  v143 = v74;
  v142 = v75;
  v141 = v76;
  v77 = v66;
  v78 = sub_23E1FDCBC("Language (WFSelectedFromLanguage)", 33);
  v80 = v79;
  sub_23E1FDCBC("Language", 8);
  sub_23E1FC14C();
  v81 = [v151 bundleURL];
  sub_23E1FBF9C();

  v82 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v78, v80);
  *(v67 + 144) = v150;
  *(v67 + 120) = v83;
  *(v67 + 152) = sub_23E1FDBDC();
  *(v67 + 184) = MEMORY[0x277D839B0];
  *(v67 + 160) = 1;
  _s3__C3KeyVMa_0(0);
  v140 = v84;
  v139 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v85 = sub_23E1FDABC();
  v86 = sub_23DF3BE9C(v85);
  *(v147 + 32) = v86;
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_23E222380;
  *(v87 + 32) = v143;
  *(v87 + 40) = 0xD000000000000026;
  *(v87 + 48) = v137;
  v88 = MEMORY[0x277D837D0];
  v89 = v142;
  *(v87 + 64) = MEMORY[0x277D837D0];
  *(v87 + 72) = v89;
  *(v87 + 80) = 0xD000000000000012;
  *(v87 + 88) = 0x800000023E259B80;
  v90 = v141;
  *(v87 + 104) = v88;
  *(v87 + 112) = v90;
  v137 = sub_23E1FDCBC("To (WFSelectedLanguage)", 23);
  v92 = v91;
  sub_23E1FDCBC("To", 2);
  sub_23E1FC14C();
  v93 = v151;
  v94 = [v151 bundleURL];
  sub_23E1FBF9C();

  v95 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v137, v92);
  *(v87 + 144) = v150;
  *(v87 + 120) = v96;
  v97 = sub_23E1FDABC();
  v98 = sub_23DF3BE9C(v97);
  *(v147 + 40) = v98;
  v99 = swift_allocObject();
  *(v99 + 16) = v148;
  *(v99 + 32) = v143;
  *(v99 + 40) = 0xD000000000000014;
  *(v99 + 48) = 0x800000023E24EAF0;
  v100 = MEMORY[0x277D837D0];
  v101 = v142;
  *(v99 + 64) = MEMORY[0x277D837D0];
  *(v99 + 72) = v101;
  *(v99 + 80) = 0x547475706E494657;
  *(v99 + 88) = 0xEB00000000747865;
  v102 = v141;
  *(v99 + 104) = v100;
  *(v99 + 112) = v102;
  v103 = sub_23E1FDCBC("Text (WFInputText)", 18);
  v105 = v104;
  sub_23E1FDCBC("Text", 4);
  sub_23E1FC14C();
  v106 = [v93 bundleURL];
  sub_23E1FBF9C();

  v107 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v103, v105);
  v108 = MEMORY[0x277D7CE98];
  *(v99 + 120) = v109;
  v110 = *v108;
  *(v99 + 144) = v150;
  *(v99 + 152) = v110;
  *(v99 + 184) = MEMORY[0x277D839B0];
  *(v99 + 160) = 1;
  v111 = v110;
  v112 = sub_23E1FDABC();
  v113 = sub_23DF3BE9C(v112);
  v114 = v147;
  *(v147 + 48) = v113;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 400) = v114;
  v116 = *MEMORY[0x277D7CB98];
  *(inited + 424) = v115;
  *(inited + 432) = v116;
  v117 = v116;
  v118 = sub_23E1FDCBC("Translate ${WFInputText} from ${WFSelectedFromLanguage} to ${WFSelectedLanguage} (Parameter Summary)", 100);
  v120 = v119;
  sub_23E1FDCBC("Translate ${WFInputText} from ${WFSelectedFromLanguage} to ${WFSelectedLanguage}", 80);
  sub_23E1FC14C();
  v121 = [v151 bundleURL];
  sub_23E1FBF9C();

  v122 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v118, v120);
  v124 = v123;
  v125 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v126 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 440) = v125;
  v127 = *MEMORY[0x277D7CBB0];
  *(inited + 464) = v126;
  *(inited + 472) = v127;
  *(inited + 480) = &unk_285025618;
  v128 = *MEMORY[0x277D7CF20];
  v129 = v145;
  *(inited + 504) = v145;
  *(inited + 512) = v128;
  *(inited + 544) = v129;
  *(inited + 520) = &unk_285025648;
  v130 = *MEMORY[0x277D7CB78];
  *(inited + 552) = *MEMORY[0x277D7CB78];
  *(inited + 584) = MEMORY[0x277D839B0];
  *(inited + 560) = 0;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v131 = v127;
  v132 = v128;
  v133 = v130;
  v134 = sub_23E1FDABC();
  return sub_23DF3BF9C(v134);
}

id sub_23DF26E08()
{
  v74 = sub_23E1FC77C();
  v71 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = (&v68 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v4 - 8);
  v72 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E2235A0;
  v6 = *MEMORY[0x277D7CB18];
  v7 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x800000023E24E550;
  v8 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  v9 = v6;
  v10 = v8;
  v11 = sub_23E1FDCBC("log|out|logout|user", 19);
  v13 = v12;
  sub_23E1FDCBC("log|out|logout|user", 19);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v76 = qword_280DAE278;
  v14 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v15 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v11, v13);
  v17 = v16;
  v18 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v75 = v18;
  *(inited + 80) = v17;
  v19 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v18;
  *(inited + 112) = v19;
  v69 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_23E222340;
  v21 = *MEMORY[0x277D7CC30];
  *(v20 + 32) = *MEMORY[0x277D7CC30];
  v22 = v19;
  v23 = v21;
  v24 = sub_23E1FDCBC("Logs out the current user.", 26);
  v26 = v25;
  sub_23E1FDCBC("Logs out the current user.", 26);
  sub_23E1FC14C();
  v27 = [v76 bundleURL];
  v70 = v3;
  sub_23E1FBF9C();

  v28 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v24, v26);
  *(v20 + 64) = v75;
  *(v20 + 40) = v29;
  type metadata accessor for DescriptionKey(0);
  sub_23DE39F84(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v30 = sub_23E1FDABC();
  v31 = v69;
  *(inited + 120) = sub_23DF3BE54(v30);
  v32 = *MEMORY[0x277D7CB28];
  *(inited + 144) = v31;
  *(inited + 152) = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(inited + 160) = &unk_285025678;
  v34 = *MEMORY[0x277D7CB48];
  *(inited + 184) = v33;
  *(inited + 192) = v34;
  *(inited + 200) = 2036429383;
  *(inited + 208) = 0xE400000000000000;
  v35 = *MEMORY[0x277D7CB60];
  v36 = MEMORY[0x277D837D0];
  *(inited + 224) = MEMORY[0x277D837D0];
  *(inited + 232) = v35;
  *(inited + 240) = 0xD000000000000017;
  *(inited + 248) = 0x800000023E259D20;
  v37 = *MEMORY[0x277D7CB90];
  *(inited + 264) = v36;
  *(inited + 272) = v37;
  v38 = v32;
  v39 = v34;
  v40 = v35;
  v41 = v37;
  v42 = sub_23E1FDCBC("Log Out User (Action Name)", 26);
  v44 = v43;
  sub_23E1FDCBC("Log Out User", 12);
  sub_23E1FC14C();
  v45 = v76;
  v46 = [v76 bundleURL];
  sub_23E1FBF9C();

  v47 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v42, v44);
  *(inited + 280) = v48;
  v49 = *MEMORY[0x277D7CB98];
  *(inited + 304) = v75;
  *(inited + 312) = v49;
  v50 = v49;
  v51 = sub_23E1FDCBC("Log out the current user (Parameter Summary)", 44);
  v53 = v52;
  sub_23E1FDCBC("Log out the current user", 24);
  sub_23E1FC14C();
  v54 = [v45 bundleURL];
  sub_23E1FBF9C();

  v55 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v51, v53);
  v57 = v56;
  v58 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v59 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 320) = v58;
  v60 = *MEMORY[0x277D7CF20];
  *(inited + 344) = v59;
  *(inited + 352) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_23E2235B0;
  v63 = v73;
  v62 = v74;
  *v73 = 2;
  (*(v71 + 104))(v63, *MEMORY[0x277D7BEE0], v62);
  v64 = objc_allocWithZone(sub_23E1FC79C());
  v65 = v60;
  *(v61 + 32) = sub_23E1FC78C();
  *(inited + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BF50, &unk_23E2235C0);
  *(inited + 360) = v61;
  type metadata accessor for Key(0);
  sub_23DE39F84(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v66 = sub_23E1FDABC();
  return sub_23DF3BF9C(v66);
}

unint64_t StaticString._asString.getter(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return sub_23E1FDCBC(result, a2);
    }

    __break(1u);
  }

  v3 = HIDWORD(result);
  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    v3 = result >> 16;
    if (result >> 16 <= 0x10)
    {
      if (result <= 0x7F)
      {
        v4 = result + 1;
LABEL_9:
        v5 = __clz(v4);
        a2 = 4 - (v5 >> 3);
        v11 = (v4 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (v5 >> 3))));
        result = &v11;
        return sub_23E1FDCBC(result, a2);
      }

LABEL_13:
      v6 = (result & 0x3F) << 8;
      v7 = (result >> 6) + v6 + 33217;
      v8 = (v6 | (result >> 6) & 0x3F) << 8;
      v9 = (result >> 18) + ((v8 | (result >> 12) & 0x3F) << 8) - 2122219023;
      v10 = (result >> 12) + v8 + 8487393;
      if (v3)
      {
        v4 = v9;
      }

      else
      {
        v4 = v10;
      }

      if (result < 0x800)
      {
        v4 = v7;
      }

      goto LABEL_9;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

id static NSBundle._current.getter()
{
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v1 = qword_280DAE278;

  return v1;
}

id sub_23DF27750()
{
  _s2__CMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280DAE278 = result;
  return result;
}

id sub_23DF27800()
{
  v320 = sub_23E1FD89C();
  v324 = *(v320 - 8);
  MEMORY[0x28223BE20](v320);
  v319 = &v289 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = sub_23E1FC77C();
  v322 = *(v316 - 1);
  MEMORY[0x28223BE20](v316);
  v297 = &v289 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v289 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v289 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E224C40;
  v9 = *MEMORY[0x277D7CB18];
  v10 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000014;
  v307 = 0xD000000000000014;
  *(inited + 48) = 0x800000023E259E40;
  v11 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = inited;
  v13 = v9;
  v14 = v11;
  v15 = sub_23E1FDCBC("set|wallpaper|current|photo|lock|home|screen", 44);
  v17 = v16;
  sub_23E1FDCBC("set|wallpaper|current|photo|lock|home|screen", 44);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v333 = qword_280DAE278;
  v18 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v19 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v15, v17);
  v21 = v20;
  v22 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v331 = v22;
  v12[10] = v21;
  v23 = *MEMORY[0x277D7CC18];
  v12[13] = v22;
  v12[14] = v23;
  v330 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v24 = swift_initStackObject();
  v293 = xmmword_23E222340;
  *(v24 + 16) = xmmword_23E222340;
  v25 = v4;
  v26 = *MEMORY[0x277D7CC30];
  *(v24 + 32) = *MEMORY[0x277D7CC30];
  v27 = v23;
  v28 = v26;
  v29 = sub_23E1FDCBC("Sets the wallpaper to the specified image.", 42);
  v31 = v30;
  sub_23E1FDCBC("Sets the wallpaper to the specified image.", 42);
  sub_23E1FC14C();
  v32 = [v333 bundleURL];
  v332 = v25;
  sub_23E1FBF9C();

  v33 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v29, v31);
  *(v24 + 64) = v331;
  *(v24 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v35 = sub_23E1FDABC();
  v36 = v330;
  v12[15] = sub_23DF3BE54(v35);
  v37 = *MEMORY[0x277D7CB28];
  v12[18] = v36;
  v12[19] = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  v12[20] = &unk_2850256A8;
  v39 = *MEMORY[0x277D7CB50];
  v12[23] = v38;
  v12[24] = v39;
  v40 = v38;
  v313 = v38;
  v12[25] = 0x657061706C6C6157;
  v12[26] = 0xE900000000000072;
  v41 = *MEMORY[0x277D7CCC0];
  v42 = MEMORY[0x277D837D0];
  v12[28] = MEMORY[0x277D837D0];
  v12[29] = v41;
  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v43 = swift_initStackObject();
  *(v43 + 16) = xmmword_23E222350;
  *(v43 + 32) = 0x656C7069746C754DLL;
  *(v43 + 40) = 0xE800000000000000;
  v44 = MEMORY[0x277D839B0];
  *(v43 + 48) = 0;
  *(v43 + 72) = v44;
  strcpy((v43 + 80), "ParameterKey");
  *(v43 + 93) = 0;
  *(v43 + 94) = -5120;
  *(v43 + 96) = 0x7475706E494657;
  *(v43 + 104) = 0xE700000000000000;
  *(v43 + 120) = v42;
  *(v43 + 128) = 0x6465726975716552;
  *(v43 + 136) = 0xE800000000000000;
  *(v43 + 144) = 1;
  *(v43 + 168) = v44;
  *(v43 + 176) = 0x7365707954;
  *(v43 + 216) = v40;
  *(v43 + 184) = 0xE500000000000000;
  *(v43 + 192) = &unk_2850256D8;
  v45 = v37;
  v46 = v39;
  v47 = v41;
  v48 = sub_23E1FDABC();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v317 = v49;
  v12[30] = v48;
  v50 = *MEMORY[0x277D7CB90];
  v12[33] = v49;
  v12[34] = v50;
  v51 = v50;
  v52 = sub_23E1FDCBC("Set Wallpaper Photo (Action Name)", 33);
  v54 = v53;
  sub_23E1FDCBC("Set Wallpaper Photo", 19);
  v55 = v7;
  sub_23E1FC14C();
  v56 = v333;
  v57 = [v333 bundleURL];
  sub_23E1FBF9C();

  v58 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v52, v54);
  v315 = v12;
  v12[35] = v59;
  v60 = *MEMORY[0x277D7CDD0];
  v61 = v331;
  v12[38] = v331;
  v12[39] = v60;
  v62 = swift_initStackObject();
  v323 = xmmword_23E222380;
  *(v62 + 16) = xmmword_23E222380;
  *(v62 + 32) = 0x656C7069746C754DLL;
  *(v62 + 40) = 0xE800000000000000;
  *(v62 + 48) = 0;
  *(v62 + 72) = MEMORY[0x277D839B0];
  *(v62 + 80) = 0x614E74757074754FLL;
  *(v62 + 88) = 0xEA0000000000656DLL;
  v63 = v60;
  v64 = sub_23E1FDCBC("Wallpaper (Default Output Name)", 31);
  v66 = v65;
  sub_23E1FDCBC("Wallpaper", 9);
  v321 = v55;
  sub_23E1FC14C();
  v67 = [v56 bundleURL];
  sub_23E1FBF9C();

  v68 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v64, v66);
  *(v62 + 96) = v69;
  *(v62 + 120) = v61;
  *(v62 + 128) = 0x7365707954;
  *(v62 + 168) = v313;
  *(v62 + 136) = 0xE500000000000000;
  *(v62 + 144) = &unk_285025718;
  v70 = MEMORY[0x277D837D0];
  v71 = sub_23E1FDABC();
  v72 = v315;
  v315[40] = v71;
  v73 = *MEMORY[0x277D7CBA0];
  v72[43] = v317;
  v72[44] = v73;
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v329 = swift_allocObject();
  *(v329 + 16) = xmmword_23E228180;
  v330 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v74 = swift_allocObject();
  *(v74 + 16) = v323;
  v75 = *MEMORY[0x277D7CDF8];
  v308 = 0xD000000000000019;
  *(v74 + 32) = v75;
  *(v74 + 40) = 0xD000000000000019;
  *(v74 + 48) = 0x800000023E24F180;
  v76 = *MEMORY[0x277D7CE70];
  *(v74 + 64) = v70;
  *(v74 + 72) = v76;
  *(v74 + 80) = 0x7475706E494657;
  *(v74 + 88) = 0xE700000000000000;
  v77 = *MEMORY[0x277D7CE80];
  *(v74 + 104) = v70;
  *(v74 + 112) = v77;
  v78 = v75;
  v79 = v76;
  v80 = v77;
  v81 = v78;
  v82 = v79;
  v83 = v80;
  v84 = v81;
  *&v310 = v82;
  v311 = v83;
  v85 = v73;
  v86 = sub_23E1FDCBC("Image (WFInput)", 15);
  v88 = v87;
  sub_23E1FDCBC("Image", 5);
  sub_23E1FC14C();
  v89 = [v333 bundleURL];
  sub_23E1FBF9C();

  v90 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v86, v88);
  *(v74 + 144) = v331;
  *(v74 + 120) = v91;
  _s3__C3KeyVMa_0(0);
  v327 = v92;
  v325 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v93 = sub_23E1FDABC();
  v94 = sub_23DF3BE9C(v93);
  *(v329 + 32) = v94;
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_23E224700;
  v96 = *MEMORY[0x277D7CDE0];
  *(v95 + 32) = *MEMORY[0x277D7CDE0];
  *(v95 + 40) = 1;
  *(v95 + 64) = MEMORY[0x277D839B0];
  *(v95 + 72) = v84;
  v314 = 0xD000000000000016;
  v97 = MEMORY[0x277D7CE00];
  *(v95 + 80) = 0xD000000000000016;
  *(v95 + 88) = 0x800000023E24FDA0;
  v98 = *v97;
  *(v95 + 104) = MEMORY[0x277D837D0];
  *(v95 + 112) = v98;
  *(v95 + 120) = &unk_285025748;
  v99 = *MEMORY[0x277D7CE38];
  *(v95 + 144) = v313;
  *(v95 + 152) = v99;
  v309 = swift_allocObject();
  *(v309 + 16) = xmmword_23E2246F0;
  v100 = v98;
  v313 = v84;
  *&v312 = v100;
  v101 = v96;
  v102 = v99;
  v103 = sub_23E1FDCBC("Lock Screen (WFWallpaperLocation)", 33);
  v105 = v104;
  sub_23E1FDCBC("Lock Screen", 11);
  sub_23E1FC14C();
  v106 = v333;
  v107 = [v333 bundleURL];
  sub_23E1FBF9C();

  v108 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v103, v105);
  v109 = v309;
  *(v309 + 32) = v110;
  v306 = sub_23E1FDCBC("Home Screen (WFWallpaperLocation)", 33);
  v112 = v111;
  sub_23E1FDCBC("Home Screen", 11);
  sub_23E1FC14C();
  v113 = [v106 bundleURL];
  sub_23E1FBF9C();

  v114 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v306, v112);
  *(v109 + 40) = v115;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  *(v95 + 160) = v109;
  v117 = v310;
  *(v95 + 184) = v116;
  *(v95 + 192) = v117;
  *(v95 + 200) = 0xD000000000000013;
  *(v95 + 208) = 0x800000023E24DCA0;
  v118 = v311;
  *(v95 + 224) = MEMORY[0x277D837D0];
  *(v95 + 232) = v118;
  v119 = v117;
  v311 = v118;
  v120 = sub_23E1FDCBC("Wallpaper Location (WFWallpaperLocation)", 40);
  v122 = v121;
  sub_23E1FDCBC("Wallpaper Location", 18);
  sub_23E1FC14C();
  v123 = [v106 bundleURL];
  sub_23E1FBF9C();

  v124 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v120, v122);
  *(v95 + 240) = v125;
  v126 = *MEMORY[0x277D7CEE8];
  *(v95 + 264) = v331;
  *(v95 + 272) = v126;
  v127 = swift_allocObject();
  v301 = xmmword_23E2235B0;
  *(v127 + 16) = xmmword_23E2235B0;
  v128 = v297;
  *v297 = 2;
  LODWORD(v305) = *MEMORY[0x277D7BED8];
  v129 = *(v322 + 13);
  v322 = (v322 + 104);
  v299 = v129;
  v129(v128);
  v298 = sub_23E1FC79C();
  v130 = objc_allocWithZone(v298);
  v304 = v126;
  *(v127 + 32) = sub_23E1FC78C();
  *(v95 + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BF50, &unk_23E2235C0);
  *(v95 + 280) = v127;
  v131 = sub_23E1FDABC();
  v132 = sub_23DF3BE9C(v131);
  *(v329 + 40) = v132;
  v133 = swift_allocObject();
  v310 = xmmword_23E224710;
  *(v133 + 16) = xmmword_23E224710;
  v309 = 0x800000023E250E40;
  v134 = v313;
  *(v133 + 32) = v313;
  *(v133 + 40) = 0xD000000000000011;
  *(v133 + 48) = 0x800000023E250E40;
  v135 = MEMORY[0x277D837D0];
  v137 = v311;
  v136 = v312;
  *(v133 + 64) = MEMORY[0x277D837D0];
  *(v133 + 72) = v136;
  *(v133 + 80) = 1;
  *(v133 + 104) = MEMORY[0x277D839B0];
  *(v133 + 112) = v119;
  v306 = 0x800000023E25A010;
  *(v133 + 120) = v314;
  *(v133 + 128) = 0x800000023E25A010;
  *(v133 + 144) = v135;
  *(v133 + 152) = v137;
  v296 = v134;
  v300 = v119;
  v302 = v137;
  v292 = v136;
  v138 = sub_23E1FDCBC("Show Preview (WFWallpaperShowPreview)", 37);
  v140 = v139;
  sub_23E1FDCBC("Show Preview", 12);
  sub_23E1FC14C();
  v141 = [v333 bundleURL];
  sub_23E1FBF9C();

  v142 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v138, v140);
  *(v133 + 160) = v143;
  v144 = v304;
  *(v133 + 184) = v331;
  *(v133 + 192) = v144;
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2E0, &qword_23E224068);
  v145 = swift_allocObject();
  v312 = xmmword_23E222370;
  *(v145 + 16) = xmmword_23E222370;
  *v128 = 2;
  (v299)(v128, v305, v316);
  v146 = v298;
  v147 = objc_allocWithZone(v298);
  v290 = v144;
  v148 = sub_23E1FC78C();
  *(v145 + 56) = v146;
  *(v145 + 32) = v148;
  v303 = 0x800000023E24D710;
  v304 = 0x800000023E24D730;
  v149 = MEMORY[0x277D837D0];
  v150 = sub_23E1FDABC();
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(v145 + 88) = v305;
  *(v145 + 64) = v150;
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7B0, &qword_23E224B88);
  *(v133 + 224) = v313;
  *(v133 + 200) = v145;
  v151 = sub_23E1FDABC();
  v152 = sub_23DF3BE9C(v151);
  *(v329 + 48) = v152;
  v153 = swift_allocObject();
  *(v153 + 16) = v310;
  v154 = v296;
  *(v153 + 32) = v296;
  *(v153 + 40) = 0xD000000000000011;
  *(v153 + 48) = v309;
  v155 = v149;
  *(v153 + 64) = v149;
  v156 = v292;
  *(v153 + 72) = v292;
  *(v153 + 80) = 0;
  v157 = v300;
  *(v153 + 104) = MEMORY[0x277D839B0];
  *(v153 + 112) = v157;
  *(v153 + 120) = 0xD00000000000001ALL;
  *(v153 + 128) = 0x800000023E25A070;
  v158 = v302;
  *(v153 + 144) = v155;
  *(v153 + 152) = v158;
  v291 = v154;
  v295 = v157;
  v296 = v158;
  v300 = v156;
  v159 = sub_23E1FDCBC("Perspective Zoom (WFWallpaperPerspectiveZoom)", 45);
  v161 = v160;
  sub_23E1FDCBC("Perspective Zoom", 16);
  sub_23E1FC14C();
  v162 = [v333 bundleURL];
  sub_23E1FBF9C();

  v163 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v159, v161);
  *(v153 + 160) = v164;
  v165 = v290;
  *(v153 + 184) = v331;
  *(v153 + 192) = v165;
  v166 = swift_allocObject();
  *(v166 + 16) = v312;
  v167 = swift_allocObject();
  *(v167 + 16) = v323;
  strcpy((v167 + 32), "WFParameterKey");
  *(v167 + 47) = -18;
  v168 = v306;
  *(v167 + 48) = v314;
  *(v167 + 56) = v168;
  v169 = MEMORY[0x277D837D0];
  *(v167 + 72) = MEMORY[0x277D837D0];
  *(v167 + 80) = 0xD000000000000010;
  v292 = 0xD000000000000010;
  *(v167 + 88) = v303;
  *(v167 + 96) = 0;
  v170 = MEMORY[0x277D839B0];
  *(v167 + 120) = MEMORY[0x277D839B0];
  *(v167 + 128) = 0x72756F7365524657;
  *(v167 + 168) = v169;
  v302 = 0xD00000000000001BLL;
  *(v167 + 136) = 0xEF7373616C436563;
  *(v167 + 144) = 0xD00000000000001BLL;
  *(v167 + 152) = v304;
  v290 = v165;
  v171 = sub_23E1FDABC();
  v172 = v316;
  *(v166 + 56) = v317;
  *(v166 + 32) = v171;
  *v128 = 1;
  (v299)(v128, *MEMORY[0x277D7BEE0], v172);
  v173 = v298;
  v174 = objc_allocWithZone(v298);
  v175 = sub_23E1FC78C();
  *(v166 + 88) = v173;
  *(v166 + 64) = v175;
  *(v153 + 224) = v313;
  *(v153 + 200) = v166;
  v176 = sub_23E1FDABC();
  v177 = sub_23DF3BE9C(v176);
  *(v329 + 56) = v177;
  v178 = swift_allocObject();
  *(v178 + 16) = xmmword_23E224C10;
  *(v178 + 64) = v169;
  v179 = v291;
  *(v178 + 32) = v291;
  *(v178 + 40) = 0xD000000000000017;
  *(v178 + 48) = 0x800000023E252880;
  v322 = v179;
  *(v178 + 72) = sub_23E1FDBDC();
  *(v178 + 80) = 1;
  v180 = v295;
  v181 = v296;
  *(v178 + 104) = v170;
  *(v178 + 112) = v180;
  *(v178 + 120) = 0xD000000000000010;
  *(v178 + 128) = 0x800000023E25A0E0;
  *(v178 + 144) = v169;
  *(v178 + 152) = v181;
  v299 = v180;
  v316 = v181;
  v182 = sub_23E1FDCBC("Wallpaper (WFSelectedPoster)", 28);
  v184 = v183;
  sub_23E1FDCBC("Wallpaper", 9);
  sub_23E1FC14C();
  v185 = v333;
  v186 = [v333 bundleURL];
  sub_23E1FBF9C();

  v187 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v182, v184);
  *(v178 + 160) = v188;
  v189 = v290;
  *(v178 + 184) = v331;
  *(v178 + 192) = v189;
  v190 = swift_allocObject();
  *(v190 + 16) = v301;
  LODWORD(v298) = *MEMORY[0x277D732F8];
  v191 = *(v324 + 104);
  v324 += 104;
  v297 = v191;
  (v191)(v319);
  v296 = sub_23E1FC85C();
  v192 = objc_allocWithZone(v296);
  v295 = v189;
  *(v190 + 32) = sub_23E1FC84C();
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C480, &qword_23E224258);
  *(v178 + 224) = v291;
  *(v178 + 200) = v190;
  v193 = sub_23E1FDBDC();
  v194 = MEMORY[0x277D837D0];
  *(v178 + 264) = MEMORY[0x277D837D0];
  *(v178 + 232) = v193;
  strcpy((v178 + 240), "EligiblePhotos");
  *(v178 + 255) = -18;
  v195 = sub_23E1FDABC();
  v196 = sub_23DF3BE9C(v195);
  *(v329 + 64) = v196;
  v197 = swift_allocObject();
  *(v197 + 16) = v310;
  *(v197 + 32) = v322;
  *(v197 + 40) = 0xD000000000000011;
  *(v197 + 48) = v309;
  v198 = v300;
  *(v197 + 64) = v194;
  *(v197 + 72) = v198;
  *(v197 + 80) = 1;
  v199 = v299;
  *(v197 + 104) = MEMORY[0x277D839B0];
  *(v197 + 112) = v199;
  *(v197 + 120) = v307;
  *(v197 + 128) = 0x800000023E25A120;
  v200 = v316;
  *(v197 + 144) = v194;
  *(v197 + 152) = v200;
  v201 = sub_23E1FDCBC("Crop to Subject (WFWallpaperSmartCrop)", 38);
  v203 = v202;
  sub_23E1FDCBC("Crop to Subject", 15);
  sub_23E1FC14C();
  v204 = [v185 bundleURL];
  sub_23E1FBF9C();

  v205 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v201, v203);
  *(v197 + 160) = v206;
  v207 = v295;
  *(v197 + 184) = v331;
  *(v197 + 192) = v207;
  v208 = swift_allocObject();
  *(v208 + 16) = v301;
  (v297)(v319, v298, v320);
  v209 = objc_allocWithZone(v296);
  *(v208 + 32) = sub_23E1FC84C();
  *(v197 + 224) = v291;
  *(v197 + 200) = v208;
  v210 = sub_23E1FDABC();
  v211 = sub_23DF3BE9C(v210);
  *(v329 + 72) = v211;
  v212 = swift_allocObject();
  *(v212 + 16) = v310;
  *(v212 + 32) = v322;
  *(v212 + 40) = 0xD000000000000011;
  v213 = v308;
  *(v212 + 48) = v309;
  v214 = MEMORY[0x277D837D0];
  v215 = v300;
  *(v212 + 64) = MEMORY[0x277D837D0];
  *(v212 + 72) = v215;
  *(v212 + 80) = 1;
  v216 = v299;
  *(v212 + 104) = MEMORY[0x277D839B0];
  *(v212 + 112) = v216;
  *(v212 + 120) = v213;
  *(v212 + 128) = 0x800000023E25A180;
  v217 = v316;
  *(v212 + 144) = v214;
  *(v212 + 152) = v217;
  v218 = sub_23E1FDCBC("Legibility Blur (WFWallpaperLegibilityBlur)", 43);
  v220 = v219;
  sub_23E1FDCBC("Legibility Blur", 15);
  sub_23E1FC14C();
  v221 = [v333 bundleURL];
  sub_23E1FBF9C();

  v222 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v218, v220);
  *(v212 + 160) = v223;
  v224 = v295;
  *(v212 + 184) = v331;
  *(v212 + 192) = v224;
  v225 = swift_allocObject();
  *(v225 + 16) = v312;
  (v297)(v319, v298, v320);
  v226 = v296;
  v227 = objc_allocWithZone(v296);
  v228 = sub_23E1FC84C();
  *(v225 + 56) = v226;
  *(v225 + 32) = v228;
  v229 = sub_23E1FDABC();
  *(v225 + 88) = v305;
  *(v225 + 64) = v229;
  *(v212 + 224) = v313;
  *(v212 + 200) = v225;
  v230 = sub_23E1FDABC();
  v231 = sub_23DF3BE9C(v230);
  v232 = v329;
  *(v329 + 80) = v231;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v234 = v315;
  v315[45] = v232;
  v235 = *MEMORY[0x277D7CB98];
  v234[48] = v233;
  v234[49] = v235;
  v331 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v236 = swift_allocObject();
  *(v236 + 16) = xmmword_23E224C00;
  v237 = v235;
  v238 = sub_23E1FDCBC("Set wallpaper to ${WFInput}", 27);
  v240 = v239;
  sub_23E1FDCBC("Set wallpaper to ${WFInput}", 27);
  sub_23E1FC14C();
  v241 = v333;
  v242 = [v333 bundleURL];
  sub_23E1FBF9C();

  v243 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v238, v240);
  v245 = v244;
  v246 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v236 + 32) = sub_23DF34C40(0x7475706E494657, 0xE700000000000000, v245);
  v330 = "Set wallpaper to ${WFInput}";
  v247 = sub_23E1FDCBC("Set ${WFWallpaperLocation} wallpaper to ${WFInput}", 50);
  v249 = v248;
  sub_23E1FDCBC("Set ${WFWallpaperLocation} wallpaper to ${WFInput}", 50);
  sub_23E1FC14C();
  v250 = [v241 bundleURL];
  sub_23E1FBF9C();

  v251 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v247, v249);
  v253 = v252;
  v254 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v236 + 40) = sub_23DF34C40(v302, v330 | 0x8000000000000000, v253);
  v255 = sub_23E1FDCBC("Set ${WFSelectedPoster} to ${WFInput} for ${WFWallpaperLocation}", 64);
  v257 = v256;
  sub_23E1FDCBC("Set ${WFSelectedPoster} to ${WFInput} for ${WFWallpaperLocation}", 64);
  sub_23E1FC14C();
  v258 = [v333 bundleURL];
  sub_23E1FBF9C();

  v259 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v255, v257);
  v261 = v260;
  v262 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v236 + 48) = sub_23DF34C40(0xD00000000000002CLL, 0x800000023E25A260, v261);
  v263 = v331;
  v264 = sub_23DF333E0(v236);
  v265 = v315;
  v315[50] = v264;
  v266 = *MEMORY[0x277D7CCA8];
  v265[53] = v263;
  v265[54] = v266;
  v267 = v266;
  v268 = MEMORY[0x277D837D0];
  v269 = sub_23E1FDABC();
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA30, &unk_23E225EB0);
  v265[55] = v269;
  v271 = *MEMORY[0x277D7CF20];
  v265[58] = v270;
  v265[59] = v271;
  v272 = swift_allocObject();
  *(v272 + 16) = v323;
  *(v272 + 32) = 0xD000000000000025;
  *(v272 + 40) = 0x800000023E252930;
  *(v272 + 88) = v268;
  *(v272 + 56) = v268;
  *(v272 + 64) = 0xD000000000000015;
  v273 = v268;
  *(v272 + 72) = 0x800000023E24D8B0;
  v274 = swift_allocObject();
  *(v274 + 16) = v312;
  *(v274 + 32) = 0xD000000000000011;
  *(v274 + 40) = 0x800000023E254400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8D8, &qword_23E225540);
  v275 = swift_allocObject();
  *(v275 + 16) = v293;
  v276 = swift_allocObject();
  *(v276 + 16) = v323;
  strcpy((v276 + 32), "WFParameterKey");
  *(v276 + 47) = -18;
  v277 = v306;
  *(v276 + 48) = v314;
  *(v276 + 56) = v277;
  v278 = v292;
  *(v276 + 72) = v273;
  *(v276 + 80) = v278;
  *(v276 + 88) = v303;
  *(v276 + 96) = 1;
  *(v276 + 120) = MEMORY[0x277D839B0];
  *(v276 + 128) = 0x72756F7365524657;
  *(v276 + 168) = v273;
  v279 = v302;
  *(v276 + 136) = 0xEF7373616C436563;
  *(v276 + 144) = v279;
  *(v276 + 152) = v304;
  v280 = v271;
  *(v275 + 32) = sub_23E1FDABC();
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8E0, qword_23E225548);
  *(v274 + 48) = v275;
  *(v274 + 72) = v281;
  *(v274 + 80) = 0x72756F7365524657;
  *(v274 + 120) = v273;
  v282 = v308;
  *(v274 + 88) = 0xEF7373616C436563;
  *(v274 + 96) = v282;
  *(v274 + 104) = 0x800000023E24D560;
  v283 = sub_23E1FDABC();
  *(v272 + 120) = v317;
  *(v272 + 96) = v283;
  v265[60] = v272;
  v284 = *MEMORY[0x277D7D028];
  v265[63] = v313;
  v265[64] = v284;
  v285 = v284;
  v286 = sub_23E1FDABC();
  v265[68] = v305;
  v265[65] = v286;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v287 = sub_23E1FDABC();
  return sub_23DF3BF9C(v287);
}

id sub_23DF29978()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v162 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v169 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E225EA0;
  v5 = *MEMORY[0x277D7CB18];
  v6 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  strcpy((inited + 40), "WFDateAction");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  v7 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = inited;
  v9 = v5;
  v10 = v7;
  v11 = sub_23E1FDCBC("date|set date|pass date|time|current|now|get|holiday|public event|event", 71);
  v13 = v12;
  sub_23E1FDCBC("date|set date|pass date|time|current|now|get|holiday|public event|event", 71);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v179 = qword_280DAE278;
  v14 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v15 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v11, v13);
  v17 = v16;
  v18 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v178 = v18;
  v8[10] = v17;
  v19 = *MEMORY[0x277D7CC18];
  v8[13] = v18;
  v8[14] = v19;
  v177 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v20 = swift_initStackObject();
  v168 = xmmword_23E222340;
  *(v20 + 16) = xmmword_23E222340;
  v21 = v2;
  v22 = *MEMORY[0x277D7CC30];
  *(v20 + 32) = *MEMORY[0x277D7CC30];
  v23 = v19;
  v24 = v22;
  v25 = sub_23E1FDCBC("Passes the specified date and time to the next action.", 54);
  v27 = v26;
  sub_23E1FDCBC("Passes the specified date and time to the next action.", 54);
  sub_23E1FC14C();
  v28 = [v179 bundleURL];
  sub_23E1FBF9C();

  v29 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v25, v27);
  *(v20 + 64) = v178;
  *(v20 + 40) = v30;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v31 = sub_23E1FDABC();
  v32 = v177;
  v8[15] = sub_23DF3BE54(v31);
  v33 = *MEMORY[0x277D7CB48];
  v8[18] = v32;
  v8[19] = v33;
  v8[20] = 1953392980;
  v8[21] = 0xE400000000000000;
  v34 = *MEMORY[0x277D7CB60];
  v35 = MEMORY[0x277D837D0];
  v8[23] = MEMORY[0x277D837D0];
  v8[24] = v34;
  v8[25] = 0x7261646E656C6163;
  v8[26] = 0xE800000000000000;
  v36 = *MEMORY[0x277D7CB58];
  v8[28] = v35;
  v8[29] = v36;
  v8[30] = 6579538;
  v8[31] = 0xE300000000000000;
  v37 = *MEMORY[0x277D7CB90];
  v8[33] = v35;
  v8[34] = v37;
  v38 = v33;
  v39 = v34;
  v40 = v36;
  v41 = v37;
  v42 = sub_23E1FDCBC("Date (Action Name)", 18);
  v44 = v43;
  sub_23E1FDCBC("Date", 4);
  sub_23E1FC14C();
  v45 = v179;
  v46 = [v179 bundleURL];
  v176 = v21;
  sub_23E1FBF9C();

  v47 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v42, v44);
  v8[35] = v48;
  v49 = *MEMORY[0x277D7CDD0];
  v8[38] = v178;
  v8[39] = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v50 = swift_initStackObject();
  v173 = xmmword_23E222350;
  *(v50 + 16) = xmmword_23E222350;
  *(v50 + 32) = 0x75736F6C63736944;
  *(v50 + 40) = 0xEF6C6576654C6572;
  *(v50 + 48) = 0x63696C627550;
  *(v50 + 56) = 0xE600000000000000;
  *(v50 + 72) = MEMORY[0x277D837D0];
  *(v50 + 80) = 0x656C7069746C754DLL;
  *(v50 + 88) = 0xE800000000000000;
  v51 = MEMORY[0x277D839B0];
  *(v50 + 96) = 0;
  *(v50 + 120) = v51;
  *(v50 + 128) = 0x614E74757074754FLL;
  *(v50 + 136) = 0xEA0000000000656DLL;
  v52 = v49;
  v53 = sub_23E1FDCBC("Date (Default Output Name)", 26);
  v55 = v54;
  sub_23E1FDCBC("Date", 4);
  sub_23E1FC14C();
  v56 = [v45 bundleURL];
  sub_23E1FBF9C();

  v57 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v53, v55);
  *(v50 + 144) = v58;
  *(v50 + 168) = v178;
  *(v50 + 176) = 0x7365707954;
  *(v50 + 184) = 0xE500000000000000;
  *(v50 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v50 + 192) = &unk_285025970;
  v59 = MEMORY[0x277D837D0];
  v60 = sub_23E1FDABC();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v163 = v8;
  v8[40] = v60;
  v62 = *MEMORY[0x277D7CBA0];
  v8[43] = v61;
  v8[44] = v62;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v175 = swift_allocObject();
  *(v175 + 16) = xmmword_23E225530;
  v177 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v63 = swift_initStackObject();
  v64 = MEMORY[0x277D7CDF8];
  *(v63 + 16) = v173;
  v65 = *v64;
  v167 = 0xD00000000000001FLL;
  *(v63 + 32) = v65;
  *(v63 + 40) = 0xD00000000000001FLL;
  v66 = MEMORY[0x277D7CE00];
  *(v63 + 48) = 0x800000023E25A3E0;
  v67 = *v66;
  v68 = v59;
  *(v63 + 64) = v59;
  *(v63 + 72) = v67;
  strcpy((v63 + 80), "Current Date");
  *(v63 + 93) = 0;
  *(v63 + 94) = -5120;
  v69 = *MEMORY[0x277D7CE70];
  *(v63 + 104) = v68;
  *(v63 + 112) = v69;
  *(v63 + 120) = 0xD000000000000010;
  *(v63 + 128) = 0x800000023E24DD10;
  v70 = *MEMORY[0x277D7CE80];
  *(v63 + 144) = v68;
  *(v63 + 152) = v70;
  v71 = v65;
  v72 = v69;
  v73 = v70;
  v74 = v71;
  v75 = v72;
  v76 = v73;
  v77 = v67;
  v78 = v74;
  v170 = v75;
  v165 = v76;
  v164 = v77;
  v79 = v62;
  v80 = sub_23E1FDCBC("Use (WFDateActionMode)", 22);
  v82 = v81;
  sub_23E1FDCBC("Date", 4);
  sub_23E1FC14C();
  v83 = [v179 bundleURL];
  sub_23E1FBF9C();

  v84 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v80, v82);
  *(v63 + 184) = v178;
  *(v63 + 160) = v85;
  _s3__C3KeyVMa_0(0);
  v172 = v86;
  *&v173 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v87 = sub_23E1FDABC();
  v88 = sub_23DF3BE9C(v87);
  *(v175 + 32) = v88;
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_23E224C10;
  *(v89 + 32) = v78;
  *(v89 + 40) = 0xD000000000000014;
  *(v89 + 48) = 0x800000023E250150;
  v90 = MEMORY[0x277D837D0];
  v91 = v170;
  *(v89 + 64) = MEMORY[0x277D837D0];
  *(v89 + 72) = v91;
  *(v89 + 80) = 0xD000000000000010;
  *(v89 + 88) = 0x800000023E25A420;
  v92 = v165;
  *(v89 + 104) = v90;
  *(v89 + 112) = v92;
  v171 = v78;
  v170 = v91;
  v165 = v92;
  v93 = sub_23E1FDCBC("Date (WFDateActionDate)", 23);
  v95 = v94;
  sub_23E1FDCBC("Date", 4);
  sub_23E1FC14C();
  v96 = v179;
  v97 = [v179 bundleURL];
  sub_23E1FBF9C();

  v98 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v93, v95);
  *(v89 + 120) = v99;
  v100 = *MEMORY[0x277D7CEA8];
  v101 = v178;
  *(v89 + 144) = v178;
  *(v89 + 152) = v100;
  v102 = v100;
  v103 = sub_23E1FDCBC("June 29, 2007 (WFDateActionDate)", 32);
  v105 = v104;
  sub_23E1FDCBC("June 29, 2007", 13);
  sub_23E1FC14C();
  v106 = [v96 bundleURL];
  sub_23E1FBF9C();

  v107 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v103, v105);
  *(v89 + 160) = v108;
  v109 = *MEMORY[0x277D7CEE8];
  *(v89 + 184) = v101;
  *(v89 + 192) = v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7E0, &qword_23E224C28);
  v110 = swift_allocObject();
  *(v110 + 16) = v168;
  v111 = v109;
  v112 = MEMORY[0x277D837D0];
  *(v110 + 32) = sub_23E1FDABC();
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7E8, &unk_23E224C30);
  *(v89 + 200) = v110;
  v114 = *MEMORY[0x277D7CF10];
  *(v89 + 224) = v113;
  *(v89 + 232) = v114;
  *(v89 + 264) = v112;
  *(v89 + 240) = 0x7468676952;
  *(v89 + 248) = 0xE500000000000000;
  v115 = v114;
  v116 = sub_23E1FDABC();
  v117 = sub_23DF3BE9C(v116);
  *(v175 + 40) = v117;
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_23E224710;
  *(v118 + 32) = v171;
  *(v118 + 40) = 0xD000000000000016;
  *(v118 + 48) = 0x800000023E24FDA0;
  v119 = v164;
  *(v118 + 64) = v112;
  *(v118 + 72) = v119;
  *(v118 + 80) = 0x63634F207478654ELL;
  *(v118 + 88) = 0xEF65636E65727275;
  v120 = *MEMORY[0x277D7CE38];
  *(v118 + 104) = v112;
  *(v118 + 112) = v120;
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_23E2246F0;
  v122 = v120;
  *&v168 = sub_23E1FDCBC("Next Occurrence (WFEventOccurrenceMode)", 39);
  v124 = v123;
  sub_23E1FDCBC("Next Occurrence", 15);
  sub_23E1FC14C();
  v125 = v179;
  v126 = [v179 bundleURL];
  sub_23E1FBF9C();

  v127 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v168, v124);
  *(v121 + 32) = v128;
  *&v168 = sub_23E1FDCBC("Specified Year (WFEventOccurrenceMode)", 38);
  v166 = v129;
  sub_23E1FDCBC("Specified Year", 14);
  sub_23E1FC14C();
  v130 = [v125 bundleURL];
  sub_23E1FBF9C();

  v131 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v168, v166);
  *(v121 + 40) = v132;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  *(v118 + 120) = v121;
  v134 = v170;
  *(v118 + 144) = v133;
  *(v118 + 152) = v134;
  *(v118 + 160) = 0xD000000000000015;
  *(v118 + 168) = 0x800000023E25A510;
  v135 = v165;
  *(v118 + 184) = MEMORY[0x277D837D0];
  *(v118 + 192) = v135;
  v136 = sub_23E1FDCBC("Occurrence (WFEventOccurrenceMode)", 34);
  v138 = v137;
  sub_23E1FDCBC("Occurrence", 10);
  sub_23E1FC14C();
  v139 = [v179 bundleURL];
  sub_23E1FBF9C();

  v140 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v136, v138);
  *(v118 + 224) = v178;
  *(v118 + 200) = v141;
  v142 = sub_23E1FDABC();
  v143 = sub_23DF3BE9C(v142);
  v144 = v175;
  *(v175 + 48) = v143;
  v145 = swift_allocObject();
  *(v145 + 16) = xmmword_23E222380;
  v146 = v167;
  *(v145 + 32) = v171;
  *(v145 + 40) = v146;
  *(v145 + 48) = 0x800000023E25A560;
  v147 = MEMORY[0x277D837D0];
  v148 = v170;
  *(v145 + 64) = MEMORY[0x277D837D0];
  *(v145 + 72) = v148;
  *(v145 + 80) = 0xD00000000000001ELL;
  *(v145 + 88) = 0x800000023E25A580;
  *(v145 + 104) = v147;
  *(v145 + 112) = v135;
  v149 = sub_23E1FDCBC("Year (WFEventOccurrenceSpecifiedYear)", 37);
  v151 = v150;
  sub_23E1FDCBC("Year", 4);
  sub_23E1FC14C();
  v152 = [v179 bundleURL];
  sub_23E1FBF9C();

  v153 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v149, v151);
  *(v145 + 144) = v178;
  *(v145 + 120) = v154;
  v155 = sub_23E1FDABC();
  *(v144 + 56) = sub_23DF3BE9C(v155);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v157 = v163;
  v163[45] = v144;
  v158 = *MEMORY[0x277D7CB78];
  v157[48] = v156;
  v157[49] = v158;
  v157[53] = MEMORY[0x277D839B0];
  *(v157 + 400) = 1;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v159 = v158;
  v160 = sub_23E1FDABC();
  return sub_23DF3BF9C(v160);
}

id sub_23DF2AB78()
{
  v246 = sub_23E1FC77C();
  v244 = *(v246 - 8);
  MEMORY[0x28223BE20](v246);
  v245 = (&v240 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v240 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v240 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E224C40;
  v8 = *MEMORY[0x277D7CB18];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  sub_23DE38DA8(0, &qword_27E32DAD0, off_278C01808);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = v8;
  v11 = NSStringFromClass(ObjCClassFromMetadata);
  v12 = sub_23E1FDC1C();
  v14 = v13;

  v15 = MEMORY[0x277D837D0];
  *(inited + 40) = v12;
  *(inited + 48) = v14;
  v16 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v15;
  *(inited + 72) = v16;
  v17 = v16;
  v18 = sub_23E1FDCBC("camera|take|photo", 17);
  v20 = v19;
  sub_23E1FDCBC("camera|take|photo", 17);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v263 = qword_280DAE278;
  v21 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v22 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v23 = v6;
  sub_23DE477A0(v18, v20);
  v25 = v24;
  v26 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v261 = v26;
  v27 = inited;
  *(inited + 80) = v25;
  v28 = *MEMORY[0x277D7CB10];
  *(inited + 104) = v26;
  *(inited + 112) = v28;
  v29 = v28;
  v30 = sub_23E1FDABC();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  v247 = v31;
  *(inited + 120) = v30;
  v32 = *MEMORY[0x277D7CC18];
  *(inited + 144) = v31;
  *(inited + 152) = v32;
  v259 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_23E222370;
  v34 = *MEMORY[0x277D7CC28];
  *(v33 + 32) = *MEMORY[0x277D7CC28];
  v35 = v32;
  v36 = v34;
  v258 = sub_23E1FDCBC("Photo from the camera.", 22);
  v38 = v37;
  sub_23E1FDCBC("Photo from the camera.", 22);
  sub_23E1FC14C();
  v39 = v263;
  v40 = [v263 bundleURL];
  v262 = v3;
  sub_23E1FBF9C();

  v41 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v258, v38);
  *(v33 + 40) = v42;
  v43 = *MEMORY[0x277D7CC30];
  v44 = v261;
  *(v33 + 64) = v261;
  *(v33 + 72) = v43;
  v45 = v43;
  v46 = sub_23E1FDCBC("Uses the camera to take photos.", 31);
  v258 = v47;
  sub_23E1FDCBC("Uses the camera to take photos.", 31);
  sub_23E1FC14C();
  v48 = [v39 bundleURL];
  sub_23E1FBF9C();

  v49 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v46, v258);
  *(v33 + 104) = v44;
  *(v33 + 80) = v50;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v51 = sub_23E1FDABC();
  v52 = v259;
  *(v27 + 160) = sub_23DF3BE54(v51);
  v53 = *MEMORY[0x277D7CB28];
  *(v27 + 184) = v52;
  *(v27 + 192) = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  v257 = v54;
  v55 = MEMORY[0x277D7CCC8];
  *(v27 + 200) = &unk_285025A70;
  v56 = *v55;
  *(v27 + 224) = v54;
  *(v27 + 232) = v56;
  v57 = MEMORY[0x277D839B0];
  *(v27 + 240) = 0;
  v58 = *MEMORY[0x277D7CB90];
  *(v27 + 264) = v57;
  *(v27 + 272) = v58;
  v59 = v53;
  v60 = v56;
  v61 = v58;
  v62 = sub_23E1FDCBC("Take Photo (Action Name)", 24);
  v64 = v63;
  sub_23E1FDCBC("Take Photo", 10);
  v65 = v23;
  sub_23E1FC14C();
  v66 = v263;
  v67 = [v263 bundleURL];
  sub_23E1FBF9C();

  v68 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v62, v64);
  v69 = v27;
  v260 = v27;
  *(v27 + 280) = v70;
  v71 = *MEMORY[0x277D7CDD0];
  v72 = v261;
  *(v69 + 304) = v261;
  *(v69 + 312) = v71;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v73 = swift_initStackObject();
  v256 = xmmword_23E222350;
  *(v73 + 16) = xmmword_23E222350;
  *(v73 + 32) = 0x656C7069746C754DLL;
  *(v73 + 40) = 0xE800000000000000;
  *(v73 + 48) = 1;
  *(v73 + 72) = MEMORY[0x277D839B0];
  *(v73 + 80) = 0x614E74757074754FLL;
  *(v73 + 88) = 0xEA0000000000656DLL;
  v74 = v71;
  v75 = sub_23E1FDCBC("Photo (Default Output Name)", 27);
  v77 = v76;
  sub_23E1FDCBC("Photo", 5);
  v249 = v65;
  sub_23E1FC14C();
  v78 = [v66 bundleURL];
  sub_23E1FBF9C();

  v79 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v75, v77);
  *(v73 + 96) = v80;
  *(v73 + 120) = v72;
  *(v73 + 128) = 0x6465726975716552;
  *(v73 + 136) = 0xE800000000000000;
  *(v73 + 144) = 1;
  v81 = MEMORY[0x277D839B0];
  *(v73 + 168) = MEMORY[0x277D839B0];
  *(v73 + 176) = 0x7365707954;
  *(v73 + 216) = v257;
  *(v73 + 184) = 0xE500000000000000;
  *(v73 + 192) = &unk_285025AA0;
  v82 = MEMORY[0x277D837D0];
  v83 = sub_23E1FDABC();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v85 = v260;
  v260[40] = v83;
  v86 = *MEMORY[0x277D7CBA0];
  v85[43] = v84;
  v85[44] = v86;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v259 = swift_allocObject();
  *(v259 + 16) = xmmword_23E224C00;
  v258 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v87 = swift_allocObject();
  *(v87 + 16) = v256;
  v88 = *MEMORY[0x277D7CDF8];
  *(v87 + 32) = *MEMORY[0x277D7CDF8];
  *(v87 + 40) = 0xD000000000000011;
  *(v87 + 48) = 0x800000023E250E40;
  v89 = *MEMORY[0x277D7CE00];
  v90 = v82;
  *(v87 + 64) = v82;
  *(v87 + 72) = v89;
  *(v87 + 80) = 1;
  v91 = *MEMORY[0x277D7CE70];
  *(v87 + 104) = v81;
  *(v87 + 112) = v91;
  *&v256 = 0x800000023E25A6C0;
  *(v87 + 120) = 0xD00000000000001ALL;
  *(v87 + 128) = 0x800000023E25A6C0;
  v92 = *MEMORY[0x277D7CE80];
  *(v87 + 144) = v90;
  *(v87 + 152) = v92;
  v93 = v88;
  v94 = v89;
  v95 = v91;
  v96 = v93;
  v97 = v94;
  v98 = v95;
  v99 = v92;
  v251 = v96;
  v250 = v97;
  v100 = v98;
  v242 = v100;
  v243 = v99;
  v101 = v86;
  v102 = sub_23E1FDCBC("Show Camera Preview (WFCameraCaptureShowPreview)", 48);
  v104 = v103;
  sub_23E1FDCBC("Show Camera Preview", 19);
  sub_23E1FC14C();
  v105 = [v263 bundleURL];
  sub_23E1FBF9C();

  v106 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v102, v104);
  *(v87 + 184) = v261;
  *(v87 + 160) = v107;
  _s3__C3KeyVMa_0(0);
  v254 = v108;
  v253 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v109 = sub_23E1FDABC();
  v110 = sub_23DF3BE9C(v109);
  *(v259 + 32) = v110;
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_23E224700;
  *(v111 + 32) = v251;
  *(v111 + 40) = 0xD000000000000012;
  *(v111 + 48) = 0x800000023E252300;
  v112 = MEMORY[0x277D837D0];
  v113 = v250;
  *(v111 + 64) = MEMORY[0x277D837D0];
  *(v111 + 72) = v113;
  v114 = MEMORY[0x277D83B88];
  *(v111 + 80) = 1;
  *(v111 + 104) = v114;
  *(v111 + 112) = v100;
  strcpy((v111 + 120), "WFPhotoCount");
  *(v111 + 133) = 0;
  *(v111 + 134) = -5120;
  v115 = *MEMORY[0x277D7CEE8];
  *(v111 + 144) = v112;
  *(v111 + 152) = v115;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8D8, &qword_23E225540);
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_23E222340;
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_23E222380;
  strcpy((v117 + 32), "WFParameterKey");
  *(v117 + 47) = -18;
  v118 = v256;
  *(v117 + 48) = 0xD00000000000001ALL;
  *(v117 + 56) = v118;
  v240 = 0xD000000000000010;
  *(v117 + 72) = v112;
  *(v117 + 80) = 0xD000000000000010;
  *(v117 + 88) = 0x800000023E24D710;
  *(v117 + 96) = 1;
  *(v117 + 120) = MEMORY[0x277D839B0];
  *(v117 + 128) = 0x72756F7365524657;
  *(v117 + 168) = v112;
  *(v117 + 136) = 0xEF7373616C436563;
  *(v117 + 144) = 0xD00000000000001BLL;
  *(v117 + 152) = 0x800000023E24D730;
  v241 = v115;
  *(v116 + 32) = sub_23E1FDABC();
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8E0, qword_23E225548);
  *(v111 + 160) = v116;
  v120 = *MEMORY[0x277D7CEF0];
  *(v111 + 184) = v119;
  *(v111 + 192) = v120;
  v121 = v120;
  v122 = sub_23E1FDCBC("Number of Photos (WFPhotoCount)", 31);
  v124 = v123;
  sub_23E1FDCBC("Number of Photos", 16);
  sub_23E1FC14C();
  v125 = v263;
  v126 = [v263 bundleURL];
  sub_23E1FBF9C();

  v127 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v122, v124);
  *(v111 + 200) = v128;
  v129 = *MEMORY[0x277D7CEF8];
  v130 = v261;
  *(v111 + 224) = v261;
  *(v111 + 232) = v129;
  v131 = v129;
  v132 = sub_23E1FDCBC("%d Photos", v240);
  v134 = v133;
  v268 = 0;
  v269 = 0xE000000000000000;
  sub_23E1FE5CC();

  v268 = v132;
  v269 = v134;
  v266 = 10;
  v267 = 0xE100000000000000;
  v264 = 32;
  v265 = 0xE100000000000000;
  sub_23DE655BC();
  v268 = sub_23E1FE46C();
  v269 = v135;
  MEMORY[0x23EF044F0](v240, 0x800000023E252360);
  v136 = v268;
  v137 = v269;
  sub_23E1FC14C();
  v138 = [v125 bundleURL];
  sub_23E1FBF9C();

  v139 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v136, v137);
  *(v111 + 240) = v140;
  v141 = *MEMORY[0x277D7CF00];
  *(v111 + 264) = v130;
  *(v111 + 272) = v141;
  v142 = v141;
  v143 = sub_23E1FDCBC("Take (WFPhotoCount-Stepper)", 27);
  v145 = v144;
  sub_23E1FDCBC("Take", 4);
  sub_23E1FC14C();
  v146 = [v263 bundleURL];
  sub_23E1FBF9C();

  v147 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v143, v145);
  *(v111 + 304) = v130;
  *(v111 + 280) = v148;
  v149 = sub_23E1FDABC();
  v150 = sub_23DF3BE9C(v149);
  *(v259 + 40) = v150;
  v151 = swift_allocObject();
  *(v151 + 16) = xmmword_23E224C10;
  *(v151 + 32) = v251;
  *(v151 + 40) = 0xD000000000000016;
  *(v151 + 48) = 0x800000023E24FDA0;
  v152 = MEMORY[0x277D837D0];
  v153 = v250;
  *(v151 + 64) = MEMORY[0x277D837D0];
  *(v151 + 72) = v153;
  *(v151 + 80) = 1801675074;
  *(v151 + 88) = 0xE400000000000000;
  v154 = *MEMORY[0x277D7CE38];
  *(v151 + 104) = v152;
  *(v151 + 112) = v154;
  v155 = swift_allocObject();
  *(v155 + 16) = xmmword_23E2246F0;
  v156 = v154;
  v252 = sub_23E1FDCBC("Front (WFCameraCaptureDevice)", 29);
  v158 = v157;
  sub_23E1FDCBC("Front", 5);
  sub_23E1FC14C();
  v159 = v263;
  v160 = [v263 bundleURL];
  sub_23E1FBF9C();

  v161 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v252, v158);
  *(v155 + 32) = v162;
  v163 = sub_23E1FDCBC("Back (WFCameraCaptureDevice)", 28);
  v252 = v164;
  sub_23E1FDCBC("Back", 4);
  sub_23E1FC14C();
  v165 = [v159 bundleURL];
  sub_23E1FBF9C();

  v166 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v163, v252);
  *(v155 + 40) = v167;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  *(v151 + 120) = v155;
  v169 = v242;
  *(v151 + 144) = v168;
  *(v151 + 152) = v169;
  *(v151 + 160) = 0xD000000000000015;
  *(v151 + 168) = 0x800000023E25A800;
  v170 = v243;
  *(v151 + 184) = MEMORY[0x277D837D0];
  *(v151 + 192) = v170;
  v171 = sub_23E1FDCBC("Camera (WFCameraCaptureDevice)", 30);
  v173 = v172;
  sub_23E1FDCBC("Camera", 6);
  sub_23E1FC14C();
  v174 = [v263 bundleURL];
  sub_23E1FBF9C();

  v175 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v171, v173);
  *(v151 + 200) = v176;
  v177 = v241;
  *(v151 + 224) = v261;
  *(v151 + 232) = v177;
  v178 = swift_allocObject();
  *(v178 + 16) = xmmword_23E2235B0;
  v179 = v244;
  v180 = v245;
  *v245 = 2;
  (*(v179 + 104))(v180, *MEMORY[0x277D7BED8], v246);
  v181 = objc_allocWithZone(sub_23E1FC79C());
  *(v178 + 32) = sub_23E1FC78C();
  *(v151 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BF50, &unk_23E2235C0);
  *(v151 + 240) = v178;
  v182 = sub_23E1FDABC();
  v183 = sub_23DF3BE9C(v182);
  v184 = v259;
  *(v259 + 48) = v183;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v186 = v260;
  v260[45] = v184;
  v187 = *MEMORY[0x277D7CB98];
  v186[48] = v185;
  v186[49] = v187;
  v261 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v188 = swift_allocObject();
  *(v188 + 16) = xmmword_23E225530;
  v189 = v188;
  v259 = v188;
  v190 = v187;
  v191 = sub_23E1FDCBC("Take Photo (Parameter Summary)", 30);
  v193 = v192;
  sub_23E1FDCBC("Take photo", 10);
  sub_23E1FC14C();
  v194 = v263;
  v195 = [v263 bundleURL];
  sub_23E1FBF9C();

  v196 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v191, v193);
  v198 = v197;
  v199 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v189 + 32) = sub_23DF34C40(0xD00000000000001ALL, v256, v198);
  v258 = "meter Summary)";
  v200 = sub_23E1FDCBC("Take photo with ${WFCameraCaptureDevice} camera", 47);
  v202 = v201;
  sub_23E1FDCBC("Take photo with ${WFCameraCaptureDevice} camera", 47);
  sub_23E1FC14C();
  v203 = v194;
  v204 = [v194 bundleURL];
  sub_23E1FBF9C();

  v205 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v200, v202);
  v207 = v206;
  v208 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  v209 = sub_23DF34C40(0xD000000000000030, v258 | 0x8000000000000000, v207);
  v210 = v259;
  *(v259 + 40) = v209;
  v258 = "${WFCameraCaptureDevice} camera";
  v211 = sub_23E1FDCBC("Take ${WFPhotoCount}", 20);
  v213 = v212;
  sub_23E1FDCBC("Take ${WFPhotoCount}", 20);
  sub_23E1FC14C();
  v214 = [v203 bundleURL];
  sub_23E1FBF9C();

  v215 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v211, v213);
  v217 = v216;
  v218 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v210 + 48) = sub_23DF34C40(0xD00000000000002ALL, v258 | 0x8000000000000000, v217);
  v219 = sub_23E1FDCBC("Take ${WFPhotoCount} with ${WFCameraCaptureDevice} camera", 57);
  v221 = v220;
  sub_23E1FDCBC("Take ${WFPhotoCount} with ${WFCameraCaptureDevice} camera", 57);
  sub_23E1FC14C();
  v222 = [v263 bundleURL];
  sub_23E1FBF9C();

  v223 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v219, v221);
  v225 = v224;
  v226 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v210 + 56) = sub_23DF34C40(0xD000000000000040, 0x800000023E25A940, v225);
  v227 = v261;
  v228 = sub_23DF333E0(v210);
  v229 = MEMORY[0x277D7CF20];
  v230 = v260;
  v260[50] = v228;
  v231 = *v229;
  v230[53] = v227;
  v230[54] = v231;
  v230[55] = &unk_285025AD0;
  v232 = *MEMORY[0x277D7D028];
  v233 = v257;
  v230[58] = v257;
  v230[59] = v232;
  v234 = v231;
  v235 = v232;
  v230[60] = sub_23E1FDABC();
  v236 = *MEMORY[0x277D7D030];
  v230[63] = v247;
  v230[64] = v236;
  v230[68] = v233;
  v230[65] = &unk_285025B70;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v237 = v236;
  v238 = sub_23E1FDABC();
  return sub_23DF3BF9C(v238);
}

unint64_t sub_23DF2C440()
{
  result = qword_280DAEA88;
  if (!qword_280DAEA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA88);
  }

  return result;
}

unint64_t sub_23DF2C498()
{
  result = qword_280DAEA98;
  if (!qword_280DAEA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA98);
  }

  return result;
}

unint64_t sub_23DF2C570()
{
  result = qword_280DAEA90;
  if (!qword_280DAEA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA90);
  }

  return result;
}

uint64_t sub_23DF2C5C4()
{
  v0 = sub_23E1FBEEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_23E1FDBCC();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_23E1FBF0C();
  __swift_allocate_value_buffer(v6, qword_27E33E188);
  __swift_project_value_buffer(v6, qword_27E33E188);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_23E1FBF1C();
}

uint64_t sub_23DF2C7BC()
{
  v0 = sub_23E1FC7FC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C310, &unk_23E225DA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_23E1FC82C();
  v7 = sub_23E1FC81C();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  (*(v1 + 104))(v3, *MEMORY[0x277D7BF40], v0);
  type metadata accessor for Key(0);
  sub_23DE664D0();
  sub_23E1FDABC();
  v8 = objc_allocWithZone(sub_23E1FC83C());
  return sub_23E1FC80C();
}

uint64_t sub_23DF2C97C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_23E1FDECC();
  *(v1 + 24) = sub_23E1FDEBC();
  v3 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DF2CA14, v3, v2);
}

uint64_t sub_23DF2CA14()
{

  v1 = [objc_allocWithZone(MEMORY[0x277CF05B0]) init];
  v2 = [v1 currentDeviceOrientation];

  v3 = 0x5040302010006uLL >> (8 * v2);
  if (v2 >= 7)
  {
    LOBYTE(v3) = 6;
  }

  *(v0 + 32) = v3;
  sub_23DF2CCE8();
  sub_23E1FB53C();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23DF2CAF4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E32B990 != -1)
  {
    swift_once();
  }

  v2 = sub_23E1FBF0C();
  v3 = __swift_project_value_buffer(v2, qword_27E33E188);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_23DF2CB9C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23DE662F0;

  return sub_23DF2C97C(a1);
}

uint64_t sub_23DF2CC38(uint64_t a1)
{
  v2 = sub_23DF2C570();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_23DF2CC84()
{
  result = qword_27E32DAD8;
  if (!qword_27E32DAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E32DAE0, "pg\a");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32DAD8);
  }

  return result;
}

unint64_t sub_23DF2CCE8()
{
  result = qword_280DAEA58;
  if (!qword_280DAEA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA58);
  }

  return result;
}

unint64_t Orientation.init(value:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x5040302010006uLL >> (8 * result);
  if (result >= 7)
  {
    LOBYTE(v2) = 6;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_23DF2CD68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  MEMORY[0x28223BE20](v0 - 8);
  v54 = &v42 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  MEMORY[0x28223BE20](v2 - 8);
  v52 = &v42 - v3;
  v4 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_23E1FBEEC();
  v58 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23E1FDBCC();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_23E1FBF0C();
  MEMORY[0x28223BE20](v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DB20, &qword_23E22A958);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DB28, &qword_23E22A960);
  v13 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
  v56 = *(*(v12 - 8) + 72);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_23E224700;
  v15 = (v14 + v13);
  v55 = v12;
  v45 = *(v12 + 48);
  v46 = v14;
  *v15 = 0;
  sub_23E1FDB5C();
  if (qword_280DAE5D0 != -1)
  {
    swift_once();
  }

  v16 = v53;
  v51 = __swift_project_value_buffer(v53, qword_280DB7710);
  v17 = *(v58 + 16);
  v58 += 16;
  v17(v8, v51, v16);
  v50 = v17;
  v47 = v6;
  sub_23E1FC19C();
  sub_23E1FBF1C();
  v18 = v52;
  __swift_storeEnumTagSinglePayload(v52, 1, 1, v57);
  v19 = sub_23E1FB75C();
  v48 = v19;
  __swift_storeEnumTagSinglePayload(v54, 1, 1, v19);
  sub_23E1FB76C();
  v49 = v15;
  v45 = *(v55 + 48);
  v15[v56] = 1;
  v42 = v11;
  sub_23E1FDB5C();
  v20 = v51;
  v17(v8, v51, v16);
  sub_23E1FC19C();
  sub_23E1FBF1C();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v57);
  __swift_storeEnumTagSinglePayload(v54, 1, 1, v19);
  sub_23E1FB76C();
  v21 = v56;
  v22 = v49;
  v23 = *(v55 + 48);
  v44 = &v49[2 * v56];
  v45 = v23;
  *v44 = 2;
  sub_23E1FDB5C();
  v24 = v20;
  v25 = v53;
  v26 = v50;
  v50(v8, v24, v53);
  sub_23E1FC19C();
  sub_23E1FBF1C();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v57);
  v27 = v48;
  __swift_storeEnumTagSinglePayload(v54, 1, 1, v48);
  sub_23E1FB76C();
  v28 = &v22[3 * v21];
  v29 = v55;
  v30 = *(v55 + 48);
  v44 = v28;
  v45 = v30;
  *v28 = 3;
  sub_23E1FDB5C();
  v43 = v8;
  v31 = v51;
  v26(v8, v51, v25);
  sub_23E1FC19C();
  sub_23E1FBF1C();
  v32 = v57;
  __swift_storeEnumTagSinglePayload(v52, 1, 1, v57);
  __swift_storeEnumTagSinglePayload(v54, 1, 1, v27);
  sub_23E1FB76C();
  v33 = v49;
  v45 = *(v29 + 48);
  v49[4 * v56] = 4;
  sub_23E1FDB5C();
  v34 = v43;
  v35 = v53;
  v50(v43, v31, v53);
  sub_23E1FC19C();
  sub_23E1FBF1C();
  __swift_storeEnumTagSinglePayload(v52, 1, 1, v32);
  v36 = v54;
  v37 = v48;
  __swift_storeEnumTagSinglePayload(v54, 1, 1, v48);
  sub_23E1FB76C();
  v45 = *(v55 + 48);
  v33[5 * v56] = 5;
  sub_23E1FDB5C();
  v38 = v50;
  v50(v34, v51, v35);
  sub_23E1FC19C();
  sub_23E1FBF1C();
  v39 = v52;
  v40 = v57;
  __swift_storeEnumTagSinglePayload(v52, 1, 1, v57);
  __swift_storeEnumTagSinglePayload(v36, 1, 1, v37);
  sub_23E1FB76C();
  v49[6 * v56] = 6;
  sub_23E1FDB5C();
  v38(v34, v51, v53);
  sub_23E1FC19C();
  sub_23E1FBF1C();
  __swift_storeEnumTagSinglePayload(v39, 1, 1, v40);
  __swift_storeEnumTagSinglePayload(v36, 1, 1, v48);
  sub_23E1FB76C();
  sub_23E1FB77C();
  sub_23DF2E46C();
  result = sub_23E1FDABC();
  qword_27E32DAE8 = result;
  return result;
}

uint64_t *sub_23DF2D758()
{
  if (qword_27E32B998 != -1)
  {
    OUTLINED_FUNCTION_0_24(&qword_27E32B998);
  }

  return &qword_27E32DAE8;
}

uint64_t static Orientation.caseDisplayRepresentations.getter()
{
  if (qword_27E32B998 != -1)
  {
    OUTLINED_FUNCTION_0_24(&qword_27E32B998);
  }

  swift_beginAccess();
  return sub_23E1FB7BC();
}

uint64_t static Orientation.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_27E32B998 != -1)
  {
    OUTLINED_FUNCTION_0_24(&qword_27E32B998);
  }

  swift_beginAccess();
  qword_27E32DAE8 = a1;
}

uint64_t (*static Orientation.caseDisplayRepresentations.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27E32B998 != -1)
  {
    OUTLINED_FUNCTION_0_24(&qword_27E32B998);
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_23DF2D8E8@<X0>(void *a1@<X8>)
{
  sub_23DF2D758();
  swift_beginAccess();
  *a1 = qword_27E32DAE8;
  return sub_23E1FB7BC();
}

uint64_t sub_23DF2D93C(uint64_t *a1)
{
  v1 = *a1;
  sub_23E1FB7BC();
  sub_23DF2D758();
  swift_beginAccess();
  qword_27E32DAE8 = v1;
}

uint64_t sub_23DF2D998()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13[-v1];
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_23E1FBEEC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_23E1FDBCC();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_23E1FBF0C();
  MEMORY[0x28223BE20](v9);
  v10 = sub_23E1FB8FC();
  __swift_allocate_value_buffer(v10, qword_27E32DAF0);
  __swift_project_value_buffer(v10, qword_27E32DAF0);
  sub_23E1FDB5C();
  if (qword_280DAE5D0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_280DB7710);
  (*(v5 + 16))(v7, v11, v4);
  sub_23E1FC19C();
  sub_23E1FBF1C();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
  return sub_23E1FB8EC();
}

uint64_t sub_23DF2DC88()
{
  if (qword_27E32B9A0 != -1)
  {
    OUTLINED_FUNCTION_1_21(&qword_27E32B9A0);
  }

  v0 = sub_23E1FB8FC();

  return __swift_project_value_buffer(v0, qword_27E32DAF0);
}

uint64_t static Orientation.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E32B9A0 != -1)
  {
    OUTLINED_FUNCTION_1_21(&qword_27E32B9A0);
  }

  v2 = sub_23E1FB8FC();
  v3 = __swift_project_value_buffer(v2, qword_27E32DAF0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static Orientation.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27E32B9A0 != -1)
  {
    OUTLINED_FUNCTION_1_21(&qword_27E32B9A0);
  }

  v2 = sub_23E1FB8FC();
  v3 = __swift_project_value_buffer(v2, qword_27E32DAF0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static Orientation.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27E32B9A0 != -1)
  {
    OUTLINED_FUNCTION_1_21(&qword_27E32B9A0);
  }

  v1 = sub_23E1FB8FC();
  __swift_project_value_buffer(v1, qword_27E32DAF0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_23DF2DEF4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DF2DC88();
  swift_beginAccess();
  v3 = sub_23E1FB8FC();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_23DF2DF70(uint64_t a1)
{
  v2 = sub_23DF2DC88();
  swift_beginAccess();
  v3 = sub_23E1FB8FC();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

ActionKit::Orientation_optional __swiftcall Orientation.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_23DF2E020()
{
  result = qword_280DAEA20;
  if (!qword_280DAEA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA20);
  }

  return result;
}

uint64_t sub_23DF2E084@<X0>(uint64_t *a1@<X8>)
{
  result = Orientation.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_23DF2E0B0()
{
  result = qword_280DAEA60;
  if (!qword_280DAEA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA60);
  }

  return result;
}

unint64_t sub_23DF2E108()
{
  result = qword_280DAEA38;
  if (!qword_280DAEA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA38);
  }

  return result;
}

unint64_t sub_23DF2E160()
{
  result = qword_280DAEA18;
  if (!qword_280DAEA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA18);
  }

  return result;
}

unint64_t sub_23DF2E1C4()
{
  result = qword_280DAEA48;
  if (!qword_280DAEA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA48);
  }

  return result;
}

unint64_t sub_23DF2E218()
{
  result = qword_280DAEA40;
  if (!qword_280DAEA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA40);
  }

  return result;
}

unint64_t sub_23DF2E270()
{
  result = qword_280DAEA50;
  if (!qword_280DAEA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA50);
  }

  return result;
}

unint64_t sub_23DF2E318()
{
  result = qword_27E32DB08;
  if (!qword_27E32DB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32DB08);
  }

  return result;
}

uint64_t sub_23DF2E36C(uint64_t a1)
{
  v2 = sub_23DF2E318();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_23DF2E3BC()
{
  result = qword_280DAEA30;
  if (!qword_280DAEA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA30);
  }

  return result;
}

unint64_t sub_23DF2E414()
{
  result = qword_280DAEA10;
  if (!qword_280DAEA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA10);
  }

  return result;
}

unint64_t sub_23DF2E46C()
{
  result = qword_280DAEA28;
  if (!qword_280DAEA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA28);
  }

  return result;
}

uint64_t sub_23DF2E4C4(uint64_t a1)
{
  v2 = sub_23DF2E270();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_23DF2E514()
{
  result = qword_27E32DB10;
  if (!qword_27E32DB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E32DB18, &qword_23E22A8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32DB10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Orientation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Orientation(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_24(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_21(uint64_t a1)
{

  return swift_once();
}

id sub_23DF2E768()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v120 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v128 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222360;
  v5 = *MEMORY[0x277D7CB18];
  v6 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x800000023E258320;
  v7 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = v5;
  v9 = v7;
  v10 = sub_23E1FDCBC("phone|number|dial|mobile|telephone", 34);
  v12 = v11;
  sub_23E1FDCBC("phone|number|dial|mobile|telephone", 34);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v133 = qword_280DAE278;
  v13 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v14 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v10, v12);
  v16 = v15;
  v17 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v132 = v17;
  *(inited + 80) = v16;
  v18 = *MEMORY[0x277D7CB10];
  *(inited + 104) = v17;
  *(inited + 112) = v18;
  v19 = v18;
  v20 = sub_23E1FDABC();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  v126 = v21;
  *(inited + 120) = v20;
  v22 = *MEMORY[0x277D7CC18];
  *(inited + 144) = v21;
  *(inited + 152) = v22;
  v130 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_23E222340;
  v24 = v2;
  v25 = *MEMORY[0x277D7CC30];
  *(v23 + 32) = *MEMORY[0x277D7CC30];
  v26 = v22;
  v27 = v25;
  v28 = sub_23E1FDCBC("Calls the phone number passed in as input.", 42);
  v30 = v29;
  sub_23E1FDCBC("Calls the phone number passed in as input.", 42);
  sub_23E1FC14C();
  v31 = [v133 bundleURL];
  sub_23E1FBF9C();

  v32 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v28, v30);
  *(v23 + 64) = v132;
  *(v23 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v34 = sub_23E1FDABC();
  v35 = v130;
  *(inited + 160) = sub_23DF3BE54(v34);
  v36 = *MEMORY[0x277D7CCC0];
  *(inited + 184) = v35;
  *(inited + 192) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_23E222350;
  *(v37 + 32) = 0x656C7069746C754DLL;
  *(v37 + 40) = 0xE800000000000000;
  v38 = MEMORY[0x277D839B0];
  *(v37 + 48) = 0;
  *(v37 + 72) = v38;
  strcpy((v37 + 80), "ParameterKey");
  *(v37 + 93) = 0;
  *(v37 + 94) = -5120;
  strcpy((v37 + 96), "WFCallContact");
  *(v37 + 110) = -4864;
  v39 = MEMORY[0x277D837D0];
  *(v37 + 120) = MEMORY[0x277D837D0];
  *(v37 + 128) = 0x6465726975716552;
  *(v37 + 136) = 0xE800000000000000;
  *(v37 + 144) = 1;
  *(v37 + 168) = v38;
  *(v37 + 176) = 0x7365707954;
  v40 = v38;
  *(v37 + 184) = 0xE500000000000000;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v37 + 216) = v127;
  *(v37 + 192) = &unk_285025C08;
  v41 = v36;
  v42 = sub_23E1FDABC();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  *(inited + 200) = v42;
  v44 = *MEMORY[0x277D7CCC8];
  *(inited + 224) = v43;
  *(inited + 232) = v44;
  *(inited + 264) = v40;
  *(inited + 240) = 1;
  v45 = v44;
  *(inited + 272) = sub_23E1FDBDC();
  *(inited + 280) = 0xD000000000000023;
  *(inited + 288) = 0x800000023E2583C0;
  v46 = *MEMORY[0x277D7CB90];
  *(inited + 304) = v39;
  *(inited + 312) = v46;
  v47 = v46;
  v48 = sub_23E1FDCBC("Call (Action Name)", 18);
  v50 = v49;
  sub_23E1FDCBC("Call", 4);
  sub_23E1FC14C();
  v51 = v133;
  v52 = [v133 bundleURL];
  v131 = v24;
  sub_23E1FBF9C();

  v53 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v48, v50);
  *(inited + 320) = v54;
  v55 = *MEMORY[0x277D7CBA0];
  *(inited + 344) = v132;
  *(inited + 352) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v130 = swift_allocObject();
  *(v130 + 16) = xmmword_23E2246F0;
  v129 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v56 = swift_allocObject();
  v124 = xmmword_23E224C10;
  *(v56 + 16) = xmmword_23E224C10;
  v57 = *MEMORY[0x277D7CDF8];
  *(v56 + 32) = *MEMORY[0x277D7CDF8];
  *(v56 + 40) = 0xD00000000000001ALL;
  *(v56 + 48) = 0x800000023E258410;
  v58 = *MEMORY[0x277D7CE00];
  v59 = MEMORY[0x277D837D0];
  *(v56 + 64) = MEMORY[0x277D837D0];
  *(v56 + 72) = v58;
  v122 = v57;
  v60 = v55;
  v61 = v58;
  v62 = sub_23E1FDABC();
  v63 = MEMORY[0x277D7CE40];
  *(v56 + 80) = v62;
  v64 = *v63;
  *(v56 + 104) = v126;
  *(v56 + 112) = v64;
  *(v56 + 144) = MEMORY[0x277D839B0];
  *(v56 + 120) = 1;
  v65 = v64;
  *(v56 + 152) = sub_23E1FDBDC();
  *(v56 + 160) = 0xD000000000000011;
  *(v56 + 168) = 0x800000023E258430;
  v66 = *MEMORY[0x277D7CE70];
  *(v56 + 184) = v59;
  *(v56 + 192) = v66;
  *(v56 + 200) = 0xD000000000000013;
  *(v56 + 208) = 0x800000023E258450;
  v67 = *MEMORY[0x277D7CE80];
  *(v56 + 224) = v59;
  *(v56 + 232) = v67;
  v68 = v66;
  v69 = v67;
  v121 = v68;
  v120 = v69;
  v70 = sub_23E1FDCBC("App (IntentAppDefinition)", 25);
  v72 = v71;
  sub_23E1FDCBC("App", 3);
  sub_23E1FC14C();
  v73 = [v51 bundleURL];
  sub_23E1FBF9C();

  v74 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v70, v72);
  *(v56 + 264) = v132;
  *(v56 + 240) = v75;
  _s3__C3KeyVMa_0(0);
  v126 = v76;
  v123 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v77 = sub_23E1FDABC();
  v78 = sub_23DF3BE9C(v77);
  *(v130 + 32) = v78;
  v79 = swift_allocObject();
  *(v79 + 16) = v124;
  v80 = *MEMORY[0x277D7CDE0];
  *(v79 + 32) = *MEMORY[0x277D7CDE0];
  *(v79 + 40) = 0;
  v81 = v122;
  *(v79 + 64) = MEMORY[0x277D839B0];
  *(v79 + 72) = v81;
  v82 = MEMORY[0x277D837D0];
  *(v79 + 104) = MEMORY[0x277D837D0];
  *(v79 + 80) = 0xD00000000000001BLL;
  *(v79 + 88) = 0x800000023E254D00;
  v83 = v80;
  *(v79 + 112) = sub_23E1FDBDC();
  *(v79 + 120) = 0x73746361746E6F63;
  *(v79 + 128) = 0xE800000000000000;
  v84 = v120;
  v85 = v121;
  *(v79 + 144) = v82;
  *(v79 + 152) = v85;
  strcpy((v79 + 160), "WFCallContact");
  *(v79 + 174) = -4864;
  *(v79 + 184) = v82;
  *(v79 + 192) = v84;
  v125 = sub_23E1FDCBC("Contact (WFCallContact)", 23);
  v87 = v86;
  sub_23E1FDCBC("Contact", 7);
  sub_23E1FC14C();
  v88 = v133;
  v89 = [v133 bundleURL];
  sub_23E1FBF9C();

  v90 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v125, v87);
  *(v79 + 200) = v91;
  v92 = *MEMORY[0x277D7CEC8];
  v93 = v132;
  *(v79 + 224) = v132;
  *(v79 + 232) = v92;
  v94 = v92;
  v95 = sub_23E1FDCBC("Who do you want to call? (WFCallContact)", 40);
  v125 = v96;
  sub_23E1FDCBC("Who do you want to call?", 24);
  sub_23E1FC14C();
  v97 = [v88 bundleURL];
  sub_23E1FBF9C();

  v98 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v95, v125);
  *(v79 + 264) = v93;
  *(v79 + 240) = v99;
  v100 = sub_23E1FDABC();
  v101 = sub_23DF3BE9C(v100);
  v102 = v130;
  *(v130 + 40) = v101;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 360) = v102;
  v104 = *MEMORY[0x277D7CB98];
  *(inited + 384) = v103;
  *(inited + 392) = v104;
  v105 = v104;
  v106 = sub_23E1FDCBC("Call ${WFCallContact} (Parameter Summary)", 41);
  v108 = v107;
  sub_23E1FDCBC("Call ${WFCallContact}", 21);
  sub_23E1FC14C();
  v109 = [v133 bundleURL];
  sub_23E1FBF9C();

  v110 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v106, v108);
  v112 = v111;
  v113 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v114 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 400) = v113;
  v115 = *MEMORY[0x277D7CF20];
  *(inited + 424) = v114;
  *(inited + 432) = v115;
  *(inited + 464) = v127;
  *(inited + 440) = &unk_285025C88;
  v116 = v115;
  v117 = sub_23E1FDBDC();
  *(inited + 504) = MEMORY[0x277D837D0];
  *(inited + 472) = v117;
  *(inited + 480) = 0x656E6F6850;
  *(inited + 488) = 0xE500000000000000;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v118 = sub_23E1FDABC();
  return sub_23DF3BF9C(v118);
}

uint64_t sub_23DF2F58C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32DB60, &qword_23E224230);
  v0 = sub_23E1FBBDC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23E224C10;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277CFC0F8], v0);
  v6(v5 + v2, *MEMORY[0x277CFC100], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277CFC0E8], v0);
  v6(v5 + 3 * v2, *MEMORY[0x277CFC108], v0);
  v6(v5 + 4 * v2, *MEMORY[0x277CFC0F0], v0);
  result = (v6)(v5 + 5 * v2, *MEMORY[0x277CFC0D0], v0);
  qword_27E33E1A0 = v4;
  return result;
}

void sub_23DF2F728(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_23DF2F7A0(v1);
}

void sub_23DF2F7A0(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_23DF2F7FC(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___WFGenerativeResultTypePickerParameter_action;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_23DE62A4C;
}

id sub_23DF2F880(void *a1)
{
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WFGenerativeResultTypePickerParameter();
  v3 = objc_msgSendSuper2(&v5, sel_initWithDefinition_, a1);
  [v3 setDataSource_];

  return v3;
}

id sub_23DF2F97C(uint64_t a1)
{
  v1 = sub_23E1FBBDC();
  OUTLINED_FUNCTION_6_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_59();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  sub_23DE38DA8(0, &unk_280DAE660, 0x277D7C928);
  sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  v11 = sub_23E1FC9CC();
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = [v11 value];
  if (!v13)
  {
    goto LABEL_23;
  }

  v14 = v13;
  v34 = 0;
  v35 = 0;
  sub_23E1FDC0C();

  if (!v35)
  {
    goto LABEL_23;
  }

  sub_23E1FB7BC();
  sub_23E1FBBBC();
  (*(v3 + 16))(v7, v10, v1);
  v15 = (*(v3 + 88))(v7, v1);
  if (v15 == *MEMORY[0x277CFC0D8])
  {
    v16 = *(v3 + 8);
    v17 = OUTLINED_FUNCTION_35_0();
    v16(v17);

    (v16)(v7, v1);
    return 0;
  }

  if (v15 == *MEMORY[0x277CFC110])
  {

    v18 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v19 = 0x73656C6B72617073;
    v20 = 0xEA0000000000322ELL;
LABEL_15:
    v24 = sub_23DE63D1C(v19, v20, 0, 2);

    v25 = OUTLINED_FUNCTION_35_0();
    v26(v25);
    return v24;
  }

  if (v15 == *MEMORY[0x277CFC0F8])
  {

    v21 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v20 = 0x800000023E25AB70;
    v19 = 0xD000000000000014;
    goto LABEL_15;
  }

  if (v15 == *MEMORY[0x277CFC100])
  {

    v22 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v19 = 0x7265626D756ELL;
LABEL_14:
    v20 = 0xE600000000000000;
    goto LABEL_15;
  }

  if (v15 == *MEMORY[0x277CFC108])
  {

    v23 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v19 = 0x686374697773;
    goto LABEL_14;
  }

  if (v15 == *MEMORY[0x277CFC0F0])
  {

    v27 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v19 = 0x6C75622E7473696CLL;
    v28 = 7628140;
LABEL_20:
    v20 = v28 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    goto LABEL_15;
  }

  if (v15 == *MEMORY[0x277CFC0D0])
  {

    v29 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v19 = 0x6F6C632E6B6F6F62;
    v28 = 6579571;
    goto LABEL_20;
  }

  if (v15 == *MEMORY[0x277CFC0E0])
  {
    v30 = OUTLINED_FUNCTION_35_0();
    v31(v30);

LABEL_23:

    return 0;
  }

  if (v15 == *MEMORY[0x277CFC0E8])
  {

    v33 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v19 = 0x7261646E656C6163;
    v20 = 0xE800000000000000;
    goto LABEL_15;
  }

  result = sub_23E1FE74C();
  __break(1u);
  return result;
}

void sub_23DF2FE20(uint64_t a1)
{
  sub_23E1FBBDC();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_15();
  sub_23DE38DA8(0, &unk_280DAE660, 0x277D7C928);
  sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  v2 = sub_23E1FC9CC();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 value];
    if (v4)
    {
      v5 = v4;
      sub_23E1FDC0C();
    }
  }
}

id sub_23DF30248(uint64_t a1, uint64_t a2)
{
  sub_23E1FBBDC();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_15();
  sub_23DE38DA8(0, &unk_280DAE660, 0x277D7C928);
  sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  v3 = sub_23E1FC9CC();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v3 value];
  if (v5)
  {
    sub_23E1FDC0C();

    return 0;
  }

  return v5;
}

id sub_23DF30460()
{
  v1 = v0;
  v110 = sub_23E1FD03C();
  OUTLINED_FUNCTION_6_0();
  v112 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_59();
  v111 = v4 - v5;
  MEMORY[0x28223BE20](v6);
  v107 = &v94 - v7;
  v8 = sub_23E1FBBDC();
  OUTLINED_FUNCTION_6_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_59();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = &v94 - v16;
  v122 = MEMORY[0x277D84F90];
  v18 = *MEMORY[0x277CFC110];
  v19 = *(v10 + 104);
  v103 = v10 + 104;
  v102 = v19;
  v19((&v94 - v16), v18, v8);
  sub_23E1FBBCC();
  v20 = sub_23E1FDBDC();

  v21 = [objc_allocWithZone(MEMORY[0x277D7C928]) initWithValue_];

  v22 = sub_23DE38DA8(0, &unk_280DAE660, 0x277D7C928);
  v23 = sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  v24 = sub_23E1FC98C();

  v118 = v10;
  v26 = *(v10 + 8);
  v25 = v10 + 8;
  v108 = v26;
  v26(v17, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_23E2235B0;
  *(v27 + 32) = v24;
  objc_allocWithZone(MEMORY[0x277CD3E30]);
  v101 = v24;
  sub_23DE63D90(0, 0, v27);
  MEMORY[0x23EF045A0]();
  v28 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v28 >> 1)
  {
    goto LABEL_107;
  }

  while (1)
  {
    v109 = v22;
    sub_23E1FDE3C();
    if (qword_27E32B9A8 != -1)
    {
      swift_once();
    }

    v29 = qword_27E33E1A0;
    v30 = *(qword_27E33E1A0 + 16);
    v31 = MEMORY[0x277D84F90];
    v32 = 0x277D7C000;
    v115 = v14;
    if (v30)
    {
      v114 = v1;
      v121[0] = MEMORY[0x277D84F90];
      sub_23E1FE63C();
      v33 = *(v118 + 16);
      v34 = v29 + ((*(v118 + 80) + 32) & ~*(v118 + 80));
      v116 = *(v118 + 72);
      v117 = v33;
      v118 = v25;
      v119 = v23;
      v35 = v108;
      do
      {
        v117(v17, v34, v8);
        sub_23E1FBBCC();
        v36 = sub_23E1FDBDC();

        v37 = [objc_allocWithZone(MEMORY[0x277D7C928]) initWithValue_];

        sub_23E1FC98C();
        v35(v17, v8);
        sub_23E1FE61C();
        sub_23E1FE64C();
        sub_23E1FE65C();
        sub_23E1FE62C();
        v34 += v116;
        --v30;
      }

      while (v30);
      v31 = v121[0];
      v14 = v115;
      v25 = v118;
      v23 = v119;
      v32 = 0x277D7C000uLL;
    }

    v38 = objc_allocWithZone(MEMORY[0x277CD3E30]);
    sub_23DE63D90(0, 0, v31);
    MEMORY[0x23EF045A0]();
    v39 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v39 >> 1)
    {
      OUTLINED_FUNCTION_9(v39);
      sub_23E1FDE0C();
    }

    sub_23E1FDE3C();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v87 = v101;
      goto LABEL_94;
    }

    v17 = Strong;
    v1 = v23;
    v41 = MEMORY[0x277D84F90];
    v120 = MEMORY[0x277D84F90];
    v42 = OUTLINED_FUNCTION_3_12();
    v43 = [v17 parameterStateForKey_];

    v95 = v17;
    if (!v43)
    {
      v104 = v41;
      goto LABEL_91;
    }

    v22 = [v43 containedVariables];
    sub_23DE38DA8(0, &qword_27E32CC50, 0x277D7C9F8);
    v44 = sub_23E1FDDEC();

    v114 = sub_23DE4D8B0();
    if (!v114)
    {
      break;
    }

    v118 = v25;
    v98 = v8;
    v46 = 0;
    v113 = v44 & 0xC000000000000001;
    v100 = v44 & 0xFFFFFFFFFFFFFF8;
    v99 = v44 + 32;
    v97 = *MEMORY[0x277CFC0D8];
    v47 = *MEMORY[0x277D7A440];
    v105 = (v112 + 8);
    v106 = v47;
    v104 = MEMORY[0x277D84F90];
    *&v45 = 138412290;
    v96 = v45;
    v119 = v23;
    v112 = v44;
    while (1)
    {
      if (v113)
      {
        v48 = MEMORY[0x23EF04DD0](v46, v44);
      }

      else
      {
        v28 = *(v100 + 16);
        if (v46 >= v28)
        {
          goto LABEL_105;
        }

        v48 = *(v99 + 8 * v46);
      }

      v49 = v48;
      v50 = __OFADD__(v46++, 1);
      if (v50)
      {
        break;
      }

      v25 = v32;
      objc_opt_self();
      v51 = swift_dynamicCastObjCClass();
      if (v51)
      {
        v17 = v51;
        v52 = v49;
        v53 = sub_23E1FDFBC();
        v117 = v52;

        v116 = v17;
        v54 = [v17 action];
        if (v54)
        {
          v22 = v54;
          v55 = sub_23E1FE41C();

          v8 = *(v55 + 16);
          if (v8)
          {
            v1 = 0;
            v14 = (v55 + 32);
            while (1)
            {
              v28 = *(v55 + 16);
              if (v1 >= v28)
              {
                break;
              }

              v23 = v14[v1++];
              v22 = *(v53 + 16);
              v56 = v22;
              v57 = 32;
              while (v56)
              {
                v58 = *(v53 + v57);
                v57 += 8;
                --v56;
                if (v58 == v23)
                {
                  goto LABEL_33;
                }
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_23DE4CC50();
                v53 = v60;
              }

              v17 = *(v53 + 16);
              v59 = *(v53 + 24);
              v22 = v17 + 1;
              if (v17 >= v59 >> 1)
              {
                OUTLINED_FUNCTION_9(v59);
                sub_23DE4CC50();
                v53 = v61;
              }

              *(v53 + 16) = v22;
              *(v53 + 8 * v17 + 32) = v23;
LABEL_33:
              if (v1 == v8)
              {

                v14 = v115;
                v1 = v119;
                goto LABEL_40;
              }
            }

LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
            break;
          }
        }

LABEL_40:
        v22 = 0;
        v66 = *(v53 + 16);
        v23 = v53 + 32;
LABEL_41:
        if (v22 == v66)
        {
          v69 = *(v53 + 16);
          v22 = v69;
        }

        else
        {
          v1 = *(v23 + 8 * v22);
          if (qword_27E32B9B0 != -1)
          {
            OUTLINED_FUNCTION_2_20();
            swift_once();
          }

          v8 = off_27E32DB30;
          v28 = *(off_27E32DB30 + 2);
          v67 = (off_27E32DB30 + 32);
          do
          {
            if (!v28)
            {
              ++v22;
              v1 = v119;
              goto LABEL_41;
            }

            v68 = *v67++;
            --v28;
          }

          while (v68 != v1);
          v69 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_104;
          }

          v1 = off_27E32DB30 + 32;
          while (1)
          {
            v28 = *(v53 + 16);
            if (v69 == v28)
            {
              break;
            }

            if (v69 >= v28)
            {
              __break(1u);
LABEL_96:
              __break(1u);
LABEL_97:
              __break(1u);
              goto LABEL_98;
            }

            v23 = *(v53 + 32 + 8 * v69);
            v70 = v8[2];
            v71 = v8 + 4;
            while (v70)
            {
              v72 = *v71++;
              --v70;
              if (v72 == v23)
              {
                goto LABEL_63;
              }
            }

            if (v22 != v69)
            {
              if (v22 >= v28)
              {
                goto LABEL_99;
              }

              v17 = *(v53 + 32 + 8 * v22);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_23DF31B34();
                v53 = v73;
              }

              v28 = v53 + 32;
              *(v53 + 32 + 8 * v22) = v23;
              *(v53 + 32 + 8 * v69) = v17;
            }

            v50 = __OFADD__(v22++, 1);
            if (v50)
            {
              goto LABEL_97;
            }

LABEL_63:
            v50 = __OFADD__(v69++, 1);
            if (v50)
            {
              goto LABEL_96;
            }
          }

          if (v69 < v22)
          {
            goto LABEL_101;
          }

          v1 = v119;
          if (v22 < 0)
          {
            goto LABEL_102;
          }
        }

        v8 = (v22 - v69);
        v17 = v22;
        if (__OFADD__(v69, v22 - v69))
        {
          goto LABEL_103;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v22 > *(v53 + 24) >> 1)
        {
          sub_23DE4CC50();
          v53 = v74;
        }

        v17 = *(v53 + 16);
        if (v22 != v69)
        {
          memmove((v53 + 32 + 8 * v22), (v53 + 32 + 8 * v69), 8 * (v17 - v69));
          v28 = *(v53 + 16);
          v17 = v8 + v28;
          if (__OFADD__(v28, v8))
          {
            goto LABEL_106;
          }

          *(v53 + 16) = v17;
        }

        if (v17)
        {
          v75 = [v116 name];
          v76 = sub_23E1FDC1C();
          v78 = v77;

          *v14 = v76;
          v14[1] = v78;
          v8 = v98;
          v102(v14, v97, v98);
          sub_23E1FBBCC();
          v79 = sub_23E1FDBDC();

          v80 = [objc_allocWithZone(*(v25 + 2344)) initWithValue_];

          v17 = sub_23E1FC98C();
          MEMORY[0x23EF045A0]();
          v81 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v81 >> 1)
          {
            OUTLINED_FUNCTION_9(v81);
            sub_23E1FDE0C();
          }

          sub_23E1FDE3C();
          v22 = v117;

          v108(v14, v8);
          v104 = v120;
        }

        else
        {
          sub_23E1FCB9C();
          v82 = v117;
          v83 = sub_23E1FD02C();
          v84 = sub_23E1FE1AC();

          if (os_log_type_enabled(v83, v84))
          {
            v22 = swift_slowAlloc();
            swift_slowAlloc();
            OUTLINED_FUNCTION_7_11();
            v85 = v116;
            *(v22 + 4) = v116;
            *v86 = v85;
            v17 = v82;
            _os_log_impl(&dword_23DE30000, v83, v84, "Variable %@ only provides content item types that are not allowed", v22, 0xCu);
            sub_23DE8B994(v8);
            OUTLINED_FUNCTION_56();
            OUTLINED_FUNCTION_56();
          }

          else
          {
            v17 = v83;
            v83 = v82;
          }

          (*v105)(v107, v110);
          v14 = v115;
        }

        v32 = v25;
      }

      else
      {
        v22 = v111;
        sub_23E1FCB9C();
        v17 = v49;
        v62 = sub_23E1FD02C();
        v63 = sub_23E1FE1AC();

        if (os_log_type_enabled(v62, v63))
        {
          v22 = swift_slowAlloc();
          swift_slowAlloc();
          OUTLINED_FUNCTION_7_11();
          *(v22 + 4) = v17;
          *v64 = v17;
          v65 = v17;
          _os_log_impl(&dword_23DE30000, v62, v63, "Variable %@ is not the output of an action, ignoring it", v22, 0xCu);
          sub_23DE8B994(v8);
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_56();
        }

        else
        {
          v65 = v62;
          v62 = v17;
        }

        v32 = v25;

        (*v105)(v111, v110);
        v14 = v115;
      }

      v44 = v112;
      if (v46 == v114)
      {
        goto LABEL_90;
      }
    }

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
    OUTLINED_FUNCTION_9(v28);
    sub_23E1FDE0C();
  }

  v104 = MEMORY[0x277D84F90];
LABEL_90:
  swift_unknownObjectRelease();

LABEL_91:
  v88 = objc_allocWithZone(MEMORY[0x277CD3E30]);
  sub_23DE63D90(0, 0, v104);
  MEMORY[0x23EF045A0]();
  v89 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18);
  v87 = v101;
  if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v89 >> 1)
  {
    OUTLINED_FUNCTION_9(v89);
    sub_23E1FDE0C();
  }

  OUTLINED_FUNCTION_35_0();
  sub_23E1FDE3C();

LABEL_94:
  v90 = objc_allocWithZone(MEMORY[0x277CD3E28]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DB40, &unk_23E2243C0);
  v91 = sub_23E1FDDCC();

  v92 = [v90 initWithSections_];

  return v92;
}

uint64_t sub_23DF3123C()
{
  sub_23DF1DC70();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23E222330;
  *(v0 + 32) = sub_23DE38DA8(0, &unk_280DAE6E0, 0x277CFC270);
  *(v0 + 40) = sub_23DE38DA8(0, &unk_280DAE720, 0x277CFC368);
  *(v0 + 48) = sub_23DE38DA8(0, &qword_27E32DB48, off_278C01420);
  *(v0 + 56) = sub_23DE38DA8(0, &qword_27E32CD40, 0x277CFC388);
  *(v0 + 64) = sub_23DE38DA8(0, &unk_280DAE680, 0x277CFC3F0);
  *(v0 + 72) = sub_23DE38DA8(0, &qword_27E32DB50, off_278C01518);
  *(v0 + 80) = sub_23DE38DA8(0, &qword_27E32C7F8, 0x277CFC410);
  *(v0 + 88) = sub_23DE38DA8(0, &qword_280DAE710, 0x277CFC480);
  *(v0 + 96) = sub_23DE38DA8(0, &qword_27E32DB58, off_278C016B0);
  *(v0 + 104) = sub_23DE38DA8(0, &qword_27E32C3A0, 0x277CFC4C0);
  result = sub_23DE38DA8(0, &unk_280DAE700, 0x277CFC530);
  *(v0 + 112) = result;
  off_27E32DB30 = v0;
  return result;
}

uint64_t static WFGenerativeResultTypePickerParameter.prohibitedContentItemTypes.getter()
{
  if (qword_27E32B9B0 != -1)
  {
    OUTLINED_FUNCTION_2_20();
    swift_once();
  }

  return sub_23E1FB7BC();
}

void sub_23DF3141C(void *a1@<X8>)
{
  v2 = sub_23E1FBBDC();
  OUTLINED_FUNCTION_6_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  (*(v4 + 104))(v7 - v6, *MEMORY[0x277CFC110], v2);
  sub_23E1FBBCC();
  v9 = sub_23E1FDBDC();

  v10 = [objc_allocWithZone(MEMORY[0x277D7C928]) initWithValue_];

  sub_23DE38DA8(0, &unk_280DAE660, 0x277D7C928);
  sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  v11 = sub_23E1FC98C();

  (*(v4 + 8))(v8, v2);
  v12 = [v11 serializedRepresentation];
  if (v12)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {

    ObjectType = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v12;
  a1[3] = ObjectType;
}

id WFGenerativeResultTypePickerParameter.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WFGenerativeResultTypePickerParameter();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_23DF3175C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_25(a3, result);
  }

  return result;
}

char *sub_23DF31824(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_25(a3, result);
  }

  return result;
}

char *sub_23DF318A4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_25(a3, result);
  }

  return result;
}

char *sub_23DF318CC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_25(a3, result);
  }

  return result;
}

uint64_t sub_23DF319CC(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (result = a4(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_8_8();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_8_8();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_23DF31ABC(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_23E1FE6AC();
  }

  return sub_23E1FE5FC();
}

uint64_t OUTLINED_FUNCTION_3_12()
{

  return sub_23E1FDBDC();
}

__n128 OUTLINED_FUNCTION_7_11()
{
  result = *(v1 - 336);
  *v0 = result.n128_u32[0];
  return result;
}

id sub_23DF31DA4()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v140 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v144 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E2235A0;
  v5 = *MEMORY[0x277D7CB18];
  v6 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x800000023E25AC00;
  v7 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = v5;
  v9 = v7;
  v148 = sub_23E1FDCBC("remaining|percentage|left|power|charging|charger|plugged|outlet|level|connected|lightning|usb", 93);
  v11 = v10;
  sub_23E1FDCBC("remaining|percentage|left|power|charging|charger|plugged|outlet|level|connected|lightning|usb", 93);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v147 = qword_280DAE278;
  v12 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v13 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v148, v11);
  v15 = v14;
  v16 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v148 = v16;
  *(inited + 80) = v15;
  v17 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v16;
  *(inited + 112) = v17;
  v145 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_23E222380;
  v19 = *MEMORY[0x277D7CC20];
  *(v18 + 32) = *MEMORY[0x277D7CC20];
  v20 = v17;
  v21 = v19;
  v22 = sub_23E1FDCBC("You can use this action to obtain the current battery percentage, or to know whether your device is plugged into a charger or is charging.", 138);
  v24 = v23;
  sub_23E1FDCBC("You can use this action to obtain the current battery percentage, or to know whether your device is plugged into a charger or is charging.", 138);
  sub_23E1FC14C();
  v146 = inited;
  v25 = v147;
  v26 = [v147 bundleURL];
  v149 = v2;
  sub_23E1FBF9C();

  v27 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v22, v24);
  *(v18 + 40) = v28;
  v29 = *MEMORY[0x277D7CC28];
  *(v18 + 64) = v148;
  *(v18 + 72) = v29;
  v30 = v29;
  v31 = sub_23E1FDCBC("A number with the current battery percentage, or a Yes/No Boolean value.", 72);
  v33 = v32;
  sub_23E1FDCBC("A number with the current battery percentage, or a Yes/No Boolean value.", 72);
  sub_23E1FC14C();
  v34 = v25;
  v35 = [v25 bundleURL];
  sub_23E1FBF9C();

  v36 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v31, v33);
  *(v18 + 80) = v37;
  v38 = *MEMORY[0x277D7CC30];
  v39 = v148;
  *(v18 + 104) = v148;
  *(v18 + 112) = v38;
  v40 = v38;
  v41 = sub_23E1FDCBC("Returns information about the battery and any charger connected to the device.", 78);
  v43 = v42;
  sub_23E1FDCBC("Returns information about the battery and any charger connected to the device.", 78);
  sub_23E1FC14C();
  v44 = [v34 bundleURL];
  sub_23E1FBF9C();

  v45 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v41, v43);
  *(v18 + 144) = v39;
  *(v18 + 120) = v46;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v47 = sub_23E1FDABC();
  v48 = v145;
  v49 = sub_23DF3BE54(v47);
  v50 = v146;
  v146[15] = v49;
  v51 = *MEMORY[0x277D7CB48];
  v50[18] = v48;
  v50[19] = v51;
  v50[20] = 0x6E65657247;
  v50[21] = 0xE500000000000000;
  v52 = *MEMORY[0x277D7CB60];
  v53 = MEMORY[0x277D837D0];
  v50[23] = MEMORY[0x277D837D0];
  v50[24] = v52;
  v50[25] = 0x2E79726574746162;
  v50[26] = 0xEB00000000303031;
  v54 = *MEMORY[0x277D7CB90];
  v50[28] = v53;
  v50[29] = v54;
  v55 = v50;
  v56 = v51;
  v57 = v52;
  v58 = v54;
  v59 = sub_23E1FDCBC("Get Battery Status (Action Name)", 32);
  v61 = v60;
  sub_23E1FDCBC("Get Battery Status", 18);
  sub_23E1FC14C();
  v62 = v147;
  v63 = [v147 bundleURL];
  sub_23E1FBF9C();

  v64 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v59, v61);
  v55[30] = v65;
  v66 = *MEMORY[0x277D7CDD0];
  v67 = v148;
  v55[33] = v148;
  v55[34] = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v68 = swift_initStackObject();
  *(v68 + 16) = xmmword_23E222350;
  *(v68 + 32) = 0x75736F6C63736944;
  *(v68 + 40) = 0xEF6C6576654C6572;
  *(v68 + 48) = 0x63696C627550;
  *(v68 + 56) = 0xE600000000000000;
  *(v68 + 72) = MEMORY[0x277D837D0];
  *(v68 + 80) = 0x656C7069746C754DLL;
  *(v68 + 88) = 0xE800000000000000;
  v69 = MEMORY[0x277D839B0];
  *(v68 + 96) = 0;
  *(v68 + 120) = v69;
  *(v68 + 128) = 0x614E74757074754FLL;
  *(v68 + 136) = 0xEA0000000000656DLL;
  v70 = v66;
  v71 = sub_23E1FDCBC("Battery State (Default Output Name)", 35);
  v73 = v72;
  sub_23E1FDCBC("Battery State", 13);
  sub_23E1FC14C();
  v74 = [v62 bundleURL];
  sub_23E1FBF9C();

  v75 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v71, v73);
  *(v68 + 144) = v76;
  *(v68 + 168) = v67;
  *(v68 + 176) = 0x7365707954;
  *(v68 + 184) = 0xE500000000000000;
  *(v68 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v68 + 192) = &unk_285025CC8;
  v77 = MEMORY[0x277D837D0];
  v78 = sub_23E1FDABC();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v80 = v146;
  v146[35] = v78;
  v81 = *MEMORY[0x277D7CBA0];
  v80[38] = v79;
  v80[39] = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v143 = swift_allocObject();
  *(v143 + 16) = xmmword_23E2235B0;
  v142 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v82 = swift_initStackObject();
  v83 = MEMORY[0x277D7CDF8];
  *(v82 + 16) = xmmword_23E224710;
  v84 = *v83;
  *(v82 + 32) = *v83;
  *(v82 + 40) = 0xD000000000000016;
  *(v82 + 48) = 0x800000023E24FDA0;
  v85 = *MEMORY[0x277D7CE00];
  *(v82 + 64) = v77;
  *(v82 + 72) = v85;
  strcpy((v82 + 80), "Battery Level");
  *(v82 + 94) = -4864;
  v86 = *MEMORY[0x277D7CE38];
  *(v82 + 104) = v77;
  *(v82 + 112) = v86;
  v145 = swift_allocObject();
  *(v145 + 16) = xmmword_23E224C00;
  v87 = v81;
  v88 = v84;
  v89 = v85;
  v90 = v86;
  v91 = sub_23E1FDCBC("Battery Level (Subject)", 23);
  v93 = v92;
  sub_23E1FDCBC("Battery Level", 13);
  sub_23E1FC14C();
  v94 = v147;
  v95 = [v147 bundleURL];
  sub_23E1FBF9C();

  v96 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v91, v93);
  v97 = v145;
  *(v145 + 32) = v98;
  v99 = sub_23E1FDCBC("Is Charging (Subject)", 21);
  v141 = v100;
  sub_23E1FDCBC("Is Charging", 11);
  sub_23E1FC14C();
  v101 = v94;
  v102 = [v94 bundleURL];
  sub_23E1FBF9C();

  v103 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v99, v141);
  *(v97 + 40) = v104;
  v105 = sub_23E1FDCBC("Is Connected to Charger (Subject)", 33);
  v107 = v106;
  sub_23E1FDCBC("Is Connected to Charger", 23);
  sub_23E1FC14C();
  v108 = [v94 bundleURL];
  sub_23E1FBF9C();

  v109 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v105, v107);
  v110 = v145;
  *(v145 + 48) = v111;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  *(v82 + 120) = v110;
  v113 = *MEMORY[0x277D7CE70];
  *(v82 + 144) = v112;
  *(v82 + 152) = v113;
  *(v82 + 160) = 0x7463656A627553;
  *(v82 + 168) = 0xE700000000000000;
  v114 = *MEMORY[0x277D7CE80];
  *(v82 + 184) = MEMORY[0x277D837D0];
  *(v82 + 192) = v114;
  v115 = v113;
  v116 = v114;
  v117 = sub_23E1FDCBC("Get (Subject)", 13);
  v119 = v118;
  sub_23E1FDCBC("Get", 3);
  sub_23E1FC14C();
  v120 = [v101 bundleURL];
  sub_23E1FBF9C();

  v121 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v117, v119);
  *(v82 + 224) = v148;
  *(v82 + 200) = v122;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v123 = sub_23E1FDABC();
  v124 = sub_23DF3BE9C(v123);
  v125 = v143;
  *(v143 + 32) = v124;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v127 = v146;
  v146[40] = v125;
  v128 = *MEMORY[0x277D7CB98];
  v127[43] = v126;
  v127[44] = v128;
  v129 = v128;
  v130 = sub_23E1FDCBC("Get ${Subject} (Parameter Summary)", 34);
  v132 = v131;
  sub_23E1FDCBC("Get ${Subject}", 14);
  sub_23E1FC14C();
  v133 = [v147 bundleURL];
  sub_23E1FBF9C();

  v134 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v130, v132);
  v136 = v135;
  v137 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v127[48] = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v127[45] = v137;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v138 = sub_23E1FDABC();
  return sub_23DF3BF9C(v138);
}

id sub_23DF32CAC()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v1 - 8);
  sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E2235A0;
  v3 = *MEMORY[0x277D7CB18];
  v4 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x800000023E2518B0;
  v5 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v4;
  *(inited + 72) = v5;
  v6 = v3;
  v7 = v5;
  v8 = sub_23E1FDCBC("separate|delimiter", 18);
  v10 = v9;
  sub_23E1FDCBC("separate|delimiter", 18);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v11 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v12 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v8, v10);
  v14 = v13;
  v15 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  *(inited + 80) = v14;
  v16 = *MEMORY[0x277D7CB50];
  *(inited + 104) = v15;
  *(inited + 112) = v16;
  *(inited + 144) = v4;
  *(inited + 120) = 1954047316;
  *(inited + 128) = 0xE400000000000000;
  v17 = v16;
  *(inited + 152) = sub_23E1FDBDC();
  v18 = MEMORY[0x277D839B0];
  *(inited + 184) = MEMORY[0x277D839B0];
  v19 = v18;
  *(inited + 160) = 1;
  *(inited + 192) = sub_23E1FDBDC();
  *(inited + 200) = 0xD00000000000004FLL;
  *(inited + 208) = 0x800000023E25AF70;
  v20 = *MEMORY[0x277D7CDD0];
  *(inited + 224) = v4;
  *(inited + 232) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_23E222370;
  *(v21 + 32) = 0x75736F6C63736944;
  *(v21 + 40) = 0xEF6C6576654C6572;
  *(v21 + 48) = 0x63696C627550;
  *(v21 + 56) = 0xE600000000000000;
  *(v21 + 72) = v4;
  *(v21 + 80) = 0x656C7069746C754DLL;
  *(v21 + 88) = 0xE800000000000000;
  *(v21 + 120) = v19;
  *(v21 + 96) = 1;
  v22 = v20;
  v23 = sub_23E1FDABC();
  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  *(inited + 240) = v23;
  *(inited + 272) = sub_23E1FDBDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA70, &qword_23E222780);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_23E222370;
  *(v24 + 32) = 0x65536D6F74737563;
  *(v24 + 40) = 0xEF726F7461726170;
  sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_23E222340;
  v26 = *MEMORY[0x277D7CE70];
  *(v25 + 64) = v4;
  *(v25 + 32) = v26;
  *(v25 + 40) = 0xD000000000000015;
  *(v25 + 48) = 0x800000023E251950;
  _s3__C3KeyVMa_0(0);
  sub_23DE71CF8(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v41 = v26;
  v27 = sub_23E1FDABC();
  *(v24 + 48) = sub_23DF3BE9C(v27);
  *(v24 + 56) = 0x6F74617261706573;
  *(v24 + 64) = 0xE900000000000072;
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_23E222370;
  v29 = *MEMORY[0x277D7CE58];
  *(v28 + 32) = *MEMORY[0x277D7CE58];
  v30 = v29;
  v31 = sub_23E1FDABC();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(v28 + 40) = v31;
  *(v28 + 64) = v32;
  *(v28 + 72) = v41;
  *(v28 + 104) = v4;
  *(v28 + 80) = 0x6553747865544657;
  *(v28 + 88) = 0xEF726F7461726170;
  v33 = sub_23E1FDABC();
  *(v24 + 72) = sub_23DF3BE9C(v33);
  v34 = sub_23E1FDABC();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA98, &qword_23E222798);
  *(inited + 280) = v34;
  v36 = *MEMORY[0x277D7CB78];
  *(inited + 304) = v35;
  *(inited + 312) = v36;
  *(inited + 344) = MEMORY[0x277D839B0];
  *(inited + 320) = 1;
  v37 = v36;
  v38 = sub_23E1FDBDC();
  *(inited + 384) = v4;
  *(inited + 352) = v38;
  *(inited + 360) = 0x74696C7053;
  *(inited + 368) = 0xE500000000000000;
  type metadata accessor for Key(0);
  sub_23DE71CF8(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v39 = sub_23E1FDABC();
  return sub_23DF3BF9C(v39);
}

id sub_23DF333E0(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_23DE38DA8(0, &unk_27E32DB70, 0x277D7C0C8);
  v2 = sub_23E1FDDCC();

  v3 = [v1 initWithValues_];

  return v3;
}

id sub_23DF3349C()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v251 = &v236 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v236 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222360;
  v6 = *MEMORY[0x277D7CB18];
  v7 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  strcpy((inited + 40), "WFSetVPNAction");
  *(inited + 55) = -18;
  v8 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  v9 = v6;
  v10 = v8;
  v252 = sub_23E1FDCBC("virtual|private|network|secure|connect|tunnel", 45);
  v12 = v11;
  sub_23E1FDCBC("virtual|private|network|secure|connect|tunnel", 45);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v253 = qword_280DAE278;
  v13 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v14 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v15 = v4;
  sub_23DE477A0(v252, v12);
  v17 = v16;
  v18 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v252 = v18;
  *(inited + 80) = v17;
  v19 = *MEMORY[0x277D7CB10];
  *(inited + 104) = v18;
  *(inited + 112) = v19;
  v20 = v19;
  v21 = sub_23E1FDABC();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 120) = v21;
  v23 = *MEMORY[0x277D7CC18];
  *(inited + 144) = v22;
  *(inited + 152) = v23;
  v250 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_23E222370;
  v25 = *MEMORY[0x277D7CC20];
  *(v24 + 32) = *MEMORY[0x277D7CC20];
  v26 = v23;
  v27 = v25;
  v28 = sub_23E1FDCBC("VPN Configurations can be set up in the Settings app. On macOS, you must authenticate as an administrator to change the On Demand setting for a VPN Configuration.", 162);
  v249 = v29;
  sub_23E1FDCBC("VPN Configurations can be set up in the Settings app. On macOS, you must authenticate as an administrator to change the On Demand setting for a VPN Configuration.", 162);
  sub_23E1FC14C();
  v30 = v253;
  v31 = [v253 bundleURL];
  sub_23E1FBF9C();

  v32 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v33 = v28;
  v34 = v15;
  sub_23DE477A0(v33, v249);
  *(v24 + 40) = v35;
  v36 = *MEMORY[0x277D7CC30];
  v37 = v252;
  *(v24 + 64) = v252;
  *(v24 + 72) = v36;
  v38 = v36;
  v249 = sub_23E1FDCBC("Connects, disconnects or changes the On Demand setting for a VPN Configuration on this device.", 94);
  v40 = v39;
  sub_23E1FDCBC("Connects, disconnects or changes the On Demand setting for a VPN Configuration on this device.", 94);
  sub_23E1FC14C();
  v41 = [v30 bundleURL];
  sub_23E1FBF9C();

  v42 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v249, v40);
  *(v24 + 104) = v37;
  *(v24 + 80) = v43;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v44 = sub_23E1FDABC();
  v45 = v250;
  *(inited + 160) = sub_23DF3BE54(v44);
  v46 = *MEMORY[0x277D7CB28];
  *(inited + 184) = v45;
  *(inited + 192) = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(inited + 200) = &unk_285025DE8;
  v48 = *MEMORY[0x277D7CB48];
  *(inited + 224) = v47;
  *(inited + 232) = v48;
  *(inited + 240) = 1702194242;
  *(inited + 248) = 0xE400000000000000;
  v49 = inited;
  v50 = *MEMORY[0x277D7CB60];
  v51 = MEMORY[0x277D837D0];
  *(v49 + 264) = MEMORY[0x277D837D0];
  *(v49 + 272) = v50;
  *(v49 + 280) = 0xD000000000000024;
  *(v49 + 288) = 0x800000023E25B130;
  v52 = *MEMORY[0x277D7CCC8];
  *(v49 + 304) = v51;
  *(v49 + 312) = v52;
  v53 = MEMORY[0x277D839B0];
  *(v49 + 320) = 1;
  v54 = *MEMORY[0x277D7CB90];
  *(v49 + 344) = v53;
  *(v49 + 352) = v54;
  v55 = v46;
  v56 = v48;
  v57 = v50;
  v58 = v52;
  v59 = v54;
  v60 = sub_23E1FDCBC("Set VPN (Action Name)", 21);
  v62 = v61;
  sub_23E1FDCBC("Set VPN", 7);
  v236 = v34;
  sub_23E1FC14C();
  v63 = [v253 bundleURL];
  sub_23E1FBF9C();

  v64 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v60, v62);
  v247 = v49;
  *(v49 + 360) = v65;
  v66 = *MEMORY[0x277D7CBA0];
  *(v49 + 384) = v252;
  *(v49 + 392) = v66;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v250 = swift_allocObject();
  *(v250 + 16) = xmmword_23E224C00;
  v249 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v67 = swift_initStackObject();
  v238 = xmmword_23E224710;
  v68 = MEMORY[0x277D7CDF8];
  *(v67 + 16) = xmmword_23E224710;
  v69 = *v68;
  *(v67 + 32) = *v68;
  *(v67 + 40) = 0xD000000000000016;
  *(v67 + 48) = 0x800000023E24FDA0;
  v70 = *MEMORY[0x277D7CE00];
  v71 = MEMORY[0x277D837D0];
  *(v67 + 64) = MEMORY[0x277D837D0];
  *(v67 + 72) = v70;
  *(v67 + 80) = 0x7463656E6E6F43;
  *(v67 + 88) = 0xE700000000000000;
  v72 = *MEMORY[0x277D7CE38];
  *(v67 + 104) = v71;
  *(v67 + 112) = v72;
  v248 = swift_allocObject();
  v239 = xmmword_23E22A520;
  *(v248 + 16) = xmmword_23E22A520;
  v73 = v69;
  v74 = v70;
  v245 = v73;
  v237 = v74;
  v75 = v66;
  v76 = v72;
  v77 = sub_23E1FDCBC("Connect (WFVPNOperation)", 24);
  v79 = v78;
  sub_23E1FDCBC("Connect", 7);
  sub_23E1FC14C();
  v80 = v253;
  v81 = [v253 bundleURL];
  sub_23E1FBF9C();

  v82 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v77, v79);
  v83 = v248;
  *(v248 + 32) = v84;
  v85 = sub_23E1FDCBC("Disconnect (WFVPNOperation)", 27);
  v244 = v86;
  sub_23E1FDCBC("Disconnect", 10);
  sub_23E1FC14C();
  v87 = [v80 bundleURL];
  sub_23E1FBF9C();

  v88 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v85, v244);
  *(v83 + 40) = v89;
  v90 = sub_23E1FDCBC("Toggle (WFVPNOperation)", 23);
  v244 = v91;
  sub_23E1FDCBC("Toggle", 6);
  sub_23E1FC14C();
  v92 = v253;
  v93 = [v253 bundleURL];
  sub_23E1FBF9C();

  v94 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v90, v244);
  v95 = v248;
  *(v248 + 48) = v96;
  v97 = sub_23E1FDCBC("Set On Demand (WFVPNOperation)", 30);
  v244 = v98;
  sub_23E1FDCBC("Set On Demand", 13);
  sub_23E1FC14C();
  v99 = [v92 bundleURL];
  sub_23E1FBF9C();

  v100 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v97, v244);
  *(v95 + 56) = v101;
  v102 = sub_23E1FDCBC("Toggle On Demand (WFVPNOperation)", 33);
  v104 = v103;
  sub_23E1FDCBC("Toggle On Demand", 16);
  sub_23E1FC14C();
  v105 = v253;
  v106 = [v253 bundleURL];
  sub_23E1FBF9C();

  v107 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v102, v104);
  v108 = v248;
  *(v248 + 64) = v109;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  v111 = MEMORY[0x277D7CE70];
  *(v67 + 120) = v108;
  v112 = *v111;
  *(v67 + 144) = v110;
  *(v67 + 152) = v112;
  strcpy((v67 + 160), "WFVPNOperation");
  *(v67 + 175) = -18;
  v113 = *MEMORY[0x277D7CE80];
  *(v67 + 184) = MEMORY[0x277D837D0];
  *(v67 + 192) = v113;
  v114 = v112;
  v115 = v113;
  v116 = v114;
  v117 = v115;
  v242 = v116;
  v243 = v117;
  v118 = sub_23E1FDCBC("Operation (WFVPNOperation)", 26);
  v120 = v119;
  sub_23E1FDCBC("Operation", 9);
  sub_23E1FC14C();
  v121 = [v105 bundleURL];
  sub_23E1FBF9C();

  v122 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v118, v120);
  v123 = v252;
  *(v67 + 224) = v252;
  *(v67 + 200) = v124;
  _s3__C3KeyVMa_0(0);
  v248 = v125;
  v244 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v126 = sub_23E1FDABC();
  v127 = sub_23DF3BE9C(v126);
  *(v250 + 32) = v127;
  v128 = swift_allocObject();
  *(v128 + 16) = v238;
  *(v128 + 32) = v245;
  *(v128 + 40) = 0xD000000000000011;
  *(v128 + 48) = 0x800000023E250E40;
  v129 = MEMORY[0x277D837D0];
  v130 = v237;
  *(v128 + 64) = MEMORY[0x277D837D0];
  *(v128 + 72) = v130;
  *(v128 + 80) = 1;
  v131 = v242;
  *(v128 + 104) = MEMORY[0x277D839B0];
  *(v128 + 112) = v131;
  *(v128 + 120) = 0x616D65446E4F4657;
  *(v128 + 128) = 0xEF65756C6156646ELL;
  v132 = v243;
  *(v128 + 144) = v129;
  *(v128 + 152) = v132;
  v133 = sub_23E1FDCBC("Set On Demand To (WFOnDemandValue)", 34);
  v135 = v134;
  sub_23E1FDCBC("Set On Demand To", 16);
  sub_23E1FC14C();
  v136 = [v105 bundleURL];
  sub_23E1FBF9C();

  v137 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v133, v135);
  *(v128 + 160) = v138;
  v139 = *MEMORY[0x277D7CEE8];
  *(v128 + 184) = v123;
  *(v128 + 192) = v139;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7E0, &qword_23E224C28);
  v140 = swift_allocObject();
  *(v140 + 16) = xmmword_23E222340;
  v141 = v139;
  v142 = MEMORY[0x277D837D0];
  *(v140 + 32) = sub_23E1FDABC();
  *(v128 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7E8, &unk_23E224C30);
  *(v128 + 200) = v140;
  v143 = sub_23E1FDABC();
  v144 = sub_23DF3BE9C(v143);
  *(v250 + 40) = v144;
  v145 = swift_allocObject();
  v146 = MEMORY[0x277D7CE28];
  *(v145 + 16) = xmmword_23E224C10;
  v147 = *v146;
  *(v145 + 32) = v147;
  *(v145 + 40) = 1;
  v148 = v245;
  *(v145 + 64) = MEMORY[0x277D839B0];
  *(v145 + 72) = v148;
  *(v145 + 80) = 0xD000000000000014;
  *(v145 + 88) = 0x800000023E25B2F0;
  v149 = *MEMORY[0x277D7CE08];
  *(v145 + 104) = v142;
  *(v145 + 112) = v149;
  v150 = v147;
  v151 = v149;
  v152 = sub_23E1FDCBC("The VPN that will be configured by running this action. (WFVPN)", 63);
  v154 = v153;
  sub_23E1FDCBC("The VPN that will be configured by running this action.", 55);
  sub_23E1FC14C();
  v155 = v253;
  v156 = [v253 bundleURL];
  sub_23E1FBF9C();

  v157 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v152, v154);
  *(v145 + 120) = v158;
  v159 = v252;
  v160 = v242;
  *(v145 + 144) = v252;
  *(v145 + 152) = v160;
  *(v145 + 160) = 0x4E50564657;
  *(v145 + 168) = 0xE500000000000000;
  v161 = v243;
  *(v145 + 184) = MEMORY[0x277D837D0];
  *(v145 + 192) = v161;
  v162 = sub_23E1FDCBC("VPN (WFVPN)", 11);
  v245 = v163;
  v246 = v162;
  sub_23E1FDCBC("VPN", 3);
  sub_23E1FC14C();
  v164 = [v155 bundleURL];
  sub_23E1FBF9C();

  v165 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v246, v245);
  *(v145 + 200) = v166;
  v167 = *MEMORY[0x277D7CEC8];
  *(v145 + 224) = v159;
  *(v145 + 232) = v167;
  v168 = v167;
  v169 = sub_23E1FDCBC("Which VPN? (WFVPN)", 18);
  v171 = v170;
  sub_23E1FDCBC("Which VPN?", 10);
  sub_23E1FC14C();
  v172 = [v155 bundleURL];
  sub_23E1FBF9C();

  v173 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v169, v171);
  *(v145 + 264) = v252;
  *(v145 + 240) = v174;
  v175 = sub_23E1FDABC();
  v176 = sub_23DF3BE9C(v175);
  v177 = v250;
  *(v250 + 48) = v176;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v179 = v247;
  v247[50] = v177;
  v180 = *MEMORY[0x277D7CB98];
  v179[53] = v178;
  v179[54] = v180;
  v250 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v181 = swift_allocObject();
  *(v181 + 16) = v239;
  v252 = v181;
  v249 = "Which VPN? (WFVPN)";
  v182 = v180;
  v183 = sub_23E1FDCBC("${WFVPNOperation} to ${WFVPN} VPN", 33);
  v185 = v184;
  sub_23E1FDCBC("${WFVPNOperation} to ${WFVPN} VPN", 33);
  sub_23E1FC14C();
  v186 = v253;
  v187 = [v253 bundleURL];
  sub_23E1FBF9C();

  v188 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v183, v185);
  v190 = v189;
  v191 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v181 + 32) = sub_23DF34C40(0xD00000000000001DLL, v249 | 0x8000000000000000, v190);
  v249 = "} to ${WFVPN} VPN";
  v192 = sub_23E1FDCBC("${WFVPNOperation} from ${WFVPN} VPN", 35);
  v194 = v193;
  sub_23E1FDCBC("${WFVPNOperation} from ${WFVPN} VPN", 35);
  sub_23E1FC14C();
  v195 = v186;
  v196 = [v186 bundleURL];
  sub_23E1FBF9C();

  v197 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v192, v194);
  v199 = v198;
  v200 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  v201 = sub_23DF34C40(0xD000000000000020, v249 | 0x8000000000000000, v199);
  v202 = v252;
  *(v252 + 40) = v201;
  v249 = "} from ${WFVPN} VPN";
  v203 = sub_23E1FDCBC("${WFVPNOperation} to ${WFOnDemandValue} for ${WFVPN} VPN", 56);
  v205 = v204;
  sub_23E1FDCBC("${WFVPNOperation} to ${WFOnDemandValue} for ${WFVPN} VPN", 56);
  sub_23E1FC14C();
  v206 = [v195 bundleURL];
  sub_23E1FBF9C();

  v207 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v203, v205);
  v209 = v208;
  v210 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v202 + 48) = sub_23DF34C40(0xD000000000000033, v249 | 0x8000000000000000, v209);
  v249 = "dValue} for ${WFVPN} VPN";
  v211 = sub_23E1FDCBC("${WFVPNOperation} for ${WFVPN} VPN", 34);
  v213 = v212;
  sub_23E1FDCBC("${WFVPNOperation} for ${WFVPN} VPN", 34);
  sub_23E1FC14C();
  v214 = [v195 bundleURL];
  sub_23E1FBF9C();

  v215 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v211, v213);
  v217 = v216;
  v218 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v202 + 56) = sub_23DF34C40(0xD000000000000026, v249 | 0x8000000000000000, v217);
  v219 = sub_23E1FDCBC("${WFVPNOperation} ${WFVPN} VPN", 30);
  v221 = v220;
  sub_23E1FDCBC("${WFVPNOperation} ${WFVPN} VPN", 30);
  sub_23E1FC14C();
  v222 = [v195 bundleURL];
  sub_23E1FBF9C();

  v223 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v219, v221);
  v225 = v224;
  v226 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  v227 = sub_23DF34C40(0xD00000000000001CLL, 0x800000023E25B540, v225);
  v228 = v252;
  *(v252 + 64) = v227;
  v229 = v250;
  v230 = sub_23DF333E0(v228);
  v231 = v247;
  v247[55] = v230;
  v232 = *MEMORY[0x277D7CF20];
  v231[58] = v229;
  v231[59] = v232;
  v231[63] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7B0, &qword_23E224B88);
  v231[60] = MEMORY[0x277D84F90];
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v233 = v232;
  v234 = sub_23E1FDABC();
  return sub_23DF3BF9C(v234);
}

id sub_23DF34C40(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_23E1FDBDC();

  v6 = [v3 initWithKey:v5 summaryString:a3];

  return v6;
}

uint64_t CMMotionActivity.isEmpty.getter()
{
  if ([v0 stationary] & 1) != 0 || (objc_msgSend(v0, sel_walking) & 1) != 0 || (objc_msgSend(v0, sel_running) & 1) != 0 || (objc_msgSend(v0, sel_cycling) & 1) != 0 || (objc_msgSend(v0, sel_automotive))
  {
    return 0;
  }

  else
  {
    return [v0 unknown] ^ 1;
  }
}

uint64_t CMMotionActivity.debugString.getter()
{
  v1 = [v0 confidence];
  if (v1)
  {
    if (v1 == 2)
    {
      v2 = 0xE400000000000000;
      v3 = 1751607624;
    }

    else if (v1 == 1)
    {
      v2 = 0xE600000000000000;
      v3 = 0x6D756964654DLL;
    }

    else
    {
      v2 = 0xE700000000000000;
      v3 = 0x6E776F6E6B6E55;
    }
  }

  else
  {
    v2 = 0xE300000000000000;
    v3 = 7827276;
  }

  sub_23E1FE5CC();
  MEMORY[0x23EF044F0](0x3A6E776F6E6B6E55, 0xE900000000000020);
  [v0 unknown];
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_2_21();
  OUTLINED_FUNCTION_1_22([v0 stationary]);
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_1_22([v0 walking]);
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_1_22([v0 running]);
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_1_22([v0 cycling]);
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_2_21();
  v4 = OUTLINED_FUNCTION_1_22([v0 automotive]);
  if (v5)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  MEMORY[0x23EF044F0](v4, v6);

  OUTLINED_FUNCTION_2_21();
  MEMORY[0x23EF044F0](v3, v2);

  return 0;
}

void OUTLINED_FUNCTION_0_26()
{

  JUMPOUT(0x23EF044F0);
}

uint64_t OUTLINED_FUNCTION_1_22(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void OUTLINED_FUNCTION_2_21()
{

  JUMPOUT(0x23EF044F0);
}

void OUTLINED_FUNCTION_3_13()
{

  JUMPOUT(0x23EF044F0);
}

id sub_23DF3505C()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v112 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222330;
  v7 = *MEMORY[0x277D7CB18];
  v8 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0x7463414C52554657;
  *(inited + 48) = 0xEB000000006E6F69;
  v9 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = v7;
  v11 = v9;
  v12 = sub_23E1FDCBC("text|such text|very speech|much words|so wow", 44);
  v14 = v13;
  sub_23E1FDCBC("text|such text|very speech|much words|so wow", 44);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v116 = qword_280DAE278;
  v15 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v16 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v12, v14);
  v18 = v17;
  v19 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v115 = v19;
  *(inited + 80) = v18;
  v20 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v19;
  *(inited + 112) = v20;
  v113 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_23E222340;
  v117 = v2;
  v22 = v5;
  v23 = *MEMORY[0x277D7CC30];
  *(v21 + 32) = *MEMORY[0x277D7CC30];
  v24 = v20;
  v25 = v23;
  v26 = sub_23E1FDCBC("Passes the specified URL to the next action.", 44);
  v28 = v27;
  sub_23E1FDCBC("Passes the specified URL to the next action.", 44);
  sub_23E1FC14C();
  v29 = [v116 bundleURL];
  sub_23E1FBF9C();

  v30 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v26, v28);
  *(v21 + 64) = v115;
  *(v21 + 40) = v31;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v32 = sub_23E1FDABC();
  v33 = v113;
  *(inited + 120) = sub_23DF3BE54(v32);
  v34 = *MEMORY[0x277D7CB48];
  *(inited + 144) = v33;
  *(inited + 152) = v34;
  *(inited + 160) = 1953392980;
  *(inited + 168) = 0xE400000000000000;
  v35 = *MEMORY[0x277D7CB60];
  v36 = MEMORY[0x277D837D0];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v35;
  v37 = MEMORY[0x277D7CB58];
  *(inited + 200) = 1802398060;
  *(inited + 208) = 0xE400000000000000;
  v38 = *v37;
  *(inited + 224) = v36;
  *(inited + 232) = v38;
  *(inited + 240) = 1702194242;
  *(inited + 248) = 0xE400000000000000;
  v39 = *MEMORY[0x277D7CB90];
  *(inited + 264) = v36;
  *(inited + 272) = v39;
  v40 = v34;
  v41 = v35;
  v42 = v38;
  v43 = v39;
  v44 = sub_23E1FDCBC("URL (Action Name)", 17);
  v46 = v45;
  sub_23E1FDCBC("URL", 3);
  sub_23E1FC14C();
  v47 = v116;
  v48 = [v116 bundleURL];
  sub_23E1FBF9C();

  v49 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v44, v46);
  *(inited + 280) = v50;
  v51 = *MEMORY[0x277D7CDD0];
  *(inited + 304) = v115;
  *(inited + 312) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v52 = swift_initStackObject();
  *(v52 + 16) = xmmword_23E222350;
  *(v52 + 32) = 0x75736F6C63736944;
  *(v52 + 40) = 0xEF6C6576654C6572;
  *(v52 + 48) = 0x63696C627550;
  *(v52 + 56) = 0xE600000000000000;
  *(v52 + 72) = MEMORY[0x277D837D0];
  *(v52 + 80) = 0x656C7069746C754DLL;
  *(v52 + 88) = 0xE800000000000000;
  v53 = MEMORY[0x277D839B0];
  *(v52 + 96) = 1;
  *(v52 + 120) = v53;
  *(v52 + 128) = 0x614E74757074754FLL;
  *(v52 + 136) = 0xEA0000000000656DLL;
  v54 = v51;
  v55 = sub_23E1FDCBC("URL (Default Output Name)", 25);
  v57 = v56;
  sub_23E1FDCBC("URL", 3);
  sub_23E1FC14C();
  v58 = [v47 bundleURL];
  sub_23E1FBF9C();

  v59 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v60 = v22;
  sub_23DE477A0(v55, v57);
  *(v52 + 144) = v61;
  *(v52 + 168) = v115;
  *(v52 + 176) = 0x7365707954;
  *(v52 + 184) = 0xE500000000000000;
  *(v52 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v52 + 192) = &unk_285025E98;
  v62 = MEMORY[0x277D837D0];
  v63 = sub_23E1FDABC();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  *(inited + 320) = v63;
  v65 = *MEMORY[0x277D7CBA0];
  *(inited + 344) = v64;
  *(inited + 352) = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_23E2235B0;
  v112[2] = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v66 = swift_initStackObject();
  *(v66 + 16) = xmmword_23E224710;
  v67 = *MEMORY[0x277D7CDE0];
  *(v66 + 32) = *MEMORY[0x277D7CDE0];
  *(v66 + 40) = 1;
  v68 = *MEMORY[0x277D7CDF8];
  *(v66 + 64) = MEMORY[0x277D839B0];
  *(v66 + 72) = v68;
  v69 = MEMORY[0x277D7CE70];
  strcpy((v66 + 80), "WFURLParameter");
  *(v66 + 95) = -18;
  v70 = *v69;
  *(v66 + 104) = v62;
  *(v66 + 112) = v70;
  strcpy((v66 + 120), "WFURLActionURL");
  *(v66 + 135) = -18;
  v71 = *MEMORY[0x277D7CE80];
  *(v66 + 144) = v62;
  *(v66 + 152) = v71;
  v72 = v65;
  v73 = v67;
  v74 = v68;
  v75 = v70;
  v76 = v71;
  v77 = sub_23E1FDCBC("URL (WFURLActionURL)", 20);
  v112[0] = v78;
  sub_23E1FDCBC("URL", 3);
  v79 = v60;
  sub_23E1FC14C();
  v80 = v116;
  v81 = [v116 bundleURL];
  sub_23E1FBF9C();

  v82 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v77, v112[0]);
  *(v66 + 160) = v83;
  v84 = *MEMORY[0x277D7CEA8];
  v85 = v115;
  *(v66 + 184) = v115;
  *(v66 + 192) = v84;
  v86 = v84;
  v112[0] = sub_23E1FDCBC("apple.com (WFURLActionURL)", 26);
  v88 = v87;
  sub_23E1FDCBC("apple.com", 9);
  v112[1] = v79;
  sub_23E1FC14C();
  v89 = [v80 bundleURL];
  sub_23E1FBF9C();

  v90 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v112[0], v88);
  *(v66 + 224) = v85;
  *(v66 + 200) = v91;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v92 = sub_23E1FDABC();
  v93 = sub_23DF3BE9C(v92);
  v94 = v113;
  *(v113 + 32) = v93;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 360) = v94;
  v96 = *MEMORY[0x277D7CB98];
  *(inited + 384) = v95;
  *(inited + 392) = v96;
  v97 = v96;
  v98 = sub_23E1FDCBC("${WFURLActionURL} (Parameter Summary)", 37);
  v100 = v99;
  sub_23E1FDCBC("${WFURLActionURL}", 17);
  sub_23E1FC14C();
  v101 = [v116 bundleURL];
  sub_23E1FBF9C();

  v102 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v98, v100);
  v104 = v103;
  v105 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v106 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v107 = MEMORY[0x277D7CB78];
  *(inited + 400) = v105;
  v108 = *v107;
  *(inited + 424) = v106;
  *(inited + 432) = v108;
  *(inited + 464) = MEMORY[0x277D839B0];
  *(inited + 440) = 1;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v109 = v108;
  v110 = sub_23E1FDABC();
  return sub_23DF3BF9C(v110);
}

id sub_23DF35C78()
{
  v0 = sub_23E1FC77C();
  v32 = *(v0 - 8);
  v33 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = (&v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E224700;
  v4 = *MEMORY[0x277D7CB18];
  v5 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x800000023E2536A0;
  v6 = *MEMORY[0x277D7CB10];
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v7 = v4;
  v8 = v6;
  v9 = sub_23E1FDABC();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 80) = v9;
  v11 = *MEMORY[0x277D7CB28];
  *(inited + 104) = v10;
  *(inited + 112) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  v13 = MEMORY[0x277D7CB50];
  *(inited + 120) = &unk_285025F08;
  v14 = *v13;
  *(inited + 144) = v12;
  *(inited + 152) = v14;
  *(inited + 184) = v5;
  *(inited + 160) = 1769105747;
  *(inited + 168) = 0xE400000000000000;
  v15 = v11;
  v16 = v14;
  v17 = sub_23E1FDBDC();
  *(inited + 224) = v5;
  *(inited + 192) = v17;
  *(inited + 200) = 0xD000000000000060;
  *(inited + 208) = 0x800000023E25B730;
  *(inited + 232) = sub_23E1FDBDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA70, &qword_23E222780);
  v18 = swift_initStackObject();
  v31 = xmmword_23E222340;
  *(v18 + 16) = xmmword_23E222340;
  *(v18 + 32) = 0x6574617473;
  *(v18 + 40) = 0xE500000000000000;
  sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v19 = swift_initStackObject();
  *(v19 + 16) = v31;
  v20 = *MEMORY[0x277D7CE70];
  *(v19 + 64) = v5;
  *(v19 + 32) = v20;
  *(v19 + 40) = 0x65756C61566E4FLL;
  *(v19 + 48) = 0xE700000000000000;
  _s3__C3KeyVMa_0(0);
  sub_23DE71CF8(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v21 = v20;
  v22 = sub_23E1FDABC();
  *(v18 + 48) = sub_23DF3BE9C(v22);
  v23 = sub_23E1FDABC();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA98, &qword_23E222798);
  *(inited + 240) = v23;
  v25 = *MEMORY[0x277D7CF20];
  *(inited + 264) = v24;
  *(inited + 272) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_23E2235B0;
  *v2 = 2;
  (*(v32 + 104))(v2, *MEMORY[0x277D7BED8], v33);
  v27 = objc_allocWithZone(sub_23E1FC79C());
  v28 = v25;
  *(v26 + 32) = sub_23E1FC78C();
  *(inited + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BF50, &unk_23E2235C0);
  *(inited + 280) = v26;
  type metadata accessor for Key(0);
  sub_23DE71CF8(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v29 = sub_23E1FDABC();
  return sub_23DF3BF9C(v29);
}

uint64_t sub_23DF36144(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CD50, &qword_23E22A9F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_23E1FDEFC();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_23E22AA00;
  v9[5] = v8;
  sub_23DF37A18(0, 0, v6, &unk_23E22AA10, v9);
}

uint64_t sub_23DF36254()
{
  OUTLINED_FUNCTION_23();
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  v2 = sub_23E1FBFBC();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_23E1FDECC();
  v1[7] = sub_23E1FDEBC();
  v4 = sub_23E1FDE6C();
  v1[8] = v4;
  v1[9] = v3;

  return MEMORY[0x2822009F8](sub_23DF36350, v4, v3);
}

uint64_t sub_23DF36350()
{
  OUTLINED_FUNCTION_4();
  sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  v1 = sub_23E1FE3FC();
  if (v1)
  {
    v2 = v1;
    sub_23E1FDC0C();

    v1 = 0;
  }

  sub_23DF366B8(v1, 0);

  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_23DF36470;
  v4 = *(v0 + 48);

  return sub_23DF36828(v4);
}

uint64_t sub_23DF36470()
{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_23DF36630;
  }

  else
  {
    v5 = sub_23DF365A8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23DF365A8()
{
  OUTLINED_FUNCTION_4();
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];

  (*(v3 + 8))(v1, v2);

  OUTLINED_FUNCTION_19();

  return v4();
}

uint64_t sub_23DF36630()
{
  OUTLINED_FUNCTION_4();
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];

  (*(v3 + 8))(v1, v2);

  OUTLINED_FUNCTION_19();

  return v4();
}

void sub_23DF366B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C750, &qword_23E224B18);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E222340;
    *(inited + 32) = 0x686372616573;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    sub_23E1FB7BC();
    sub_23E1FDABC();
    v6 = sub_23E1FDA9C();

    v7 = [v4 passwordManagerURLWithParameters_];

    sub_23E1FBF9C();
  }

  else
  {
    v8 = [objc_opt_self() passwordManagerURL];
    sub_23E1FBF9C();
  }
}

uint64_t sub_23DF36828(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_23E1FDECC();
  v1[4] = sub_23E1FDEBC();
  v3 = sub_23E1FDE6C();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_23DF368C4, v3, v2);
}

uint64_t sub_23DF368C4()
{
  OUTLINED_FUNCTION_4();
  v1 = v0[2];
  v0[7] = sub_23E1FDEBC();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_23DF369C8;

  return MEMORY[0x2822008A0](v3);
}

uint64_t sub_23DF369C8()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  v3[10] = v0;

  if (v0)
  {
    v6 = v3[5];
    v7 = v3[6];
    v8 = sub_23DF36B38;
  }

  else
  {

    v6 = v3[5];
    v7 = v3[6];
    v8 = sub_23DF36ADC;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_23DF36ADC()
{
  OUTLINED_FUNCTION_23();

  OUTLINED_FUNCTION_19();

  return v0();
}

uint64_t sub_23DF36B38()
{
  OUTLINED_FUNCTION_23();

  OUTLINED_FUNCTION_19();

  return v0();
}

uint64_t sub_23DF36C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23E1FDECC();
  v3[5] = sub_23E1FDEBC();
  v5 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DF36CCC, v5, v4);
}

uint64_t sub_23DF36CCC()
{
  OUTLINED_FUNCTION_4();
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_23DEC7D20;

  return sub_23DF36254();
}

void sub_23DF36D84(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DB80, &qword_23E22AA40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = sub_23E1FBFBC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v13;
  v24 = sub_23DE38DA8(0, &qword_27E32DB88, 0x277D7C558);
  (*(v11 + 16))(v13, a2, v10);
  v14 = *(v5 + 16);
  v14(v9, a1, v4);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  v17 = *(v5 + 32);
  v17(v16 + v15, v9, v4);
  v18 = v25;
  v14(v25, v22, v4);
  v19 = swift_allocObject();
  v17(v19 + v15, v18, v4);
  v20 = sub_23DF370FC(v23, 0, 0, 0, 0, sub_23DF38028, v16, sub_23DF38148, v19);
  v21 = [objc_opt_self() sharedManager];
  [v21 performRequest_];
}

void *sub_23DF370A4(void *result)
{
  if (result)
  {
    v1 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DB80, &qword_23E22AA40);
    return sub_23E1FDE7C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_23DF370FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9)
{
  v16 = sub_23E1FBF6C();
  if (a5)
  {
    v17 = sub_23E1FDBDC();
  }

  else
  {
    v17 = 0;
  }

  if (!a6)
  {
    v18 = 0;
    if (!a8)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v26 = a6;
  v27 = a7;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_23DF373EC;
  v25 = &block_descriptor_35;
  v18 = _Block_copy(&v22);

  if (a8)
  {
LABEL_6:
    v26 = a8;
    v27 = a9;
    v22 = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = sub_23DF37484;
    v25 = &block_descriptor_18;
    a8 = _Block_copy(&v22);
  }

LABEL_7:
  v19 = [swift_getObjCClassFromMetadata() requestWithURL:v16 scheme:a2 userInterface:a3 bundleIdentifier:v17 successHandler:v18 failureHandler:a8];
  _Block_release(a8);
  _Block_release(v18);

  swift_unknownObjectRelease();
  v20 = sub_23E1FBFBC();
  (*(*(v20 - 8) + 8))(a1, v20);
  return v19;
}

id sub_23DF372F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v9 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v10 = sub_23E1FDA9C();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v5;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_definition_serializedParameters_, v9, a3, v10);

  if (v11)
  {
  }

  return v11;
}

uint64_t sub_23DF373EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_23E1FDAAC();
  }

  else
  {
    v5 = 0;
  }

  sub_23E1FB7CC();
  v4(v5, a3);
}

void sub_23DF37484(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_23E1FB7CC();
  v4 = a2;
  v3(a2);
}

uint64_t sub_23DF375D4()
{
  OUTLINED_FUNCTION_4();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23DE47040;

  return sub_23DF36C30(v2, v3, v4);
}

uint64_t sub_23DF37684(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_23DE4D8A8;

  return v6();
}

uint64_t sub_23DF3776C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23DE4D8A8;

  return sub_23DF37684(v2, v3, v4);
}

uint64_t sub_23DF3782C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_23DE47040;

  return v7();
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23DF37954(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_5_13(v6);
  *v7 = v8;
  v7[1] = sub_23DE4D8A8;

  return sub_23DF3782C(a1, v3, v4, v5);
}

uint64_t sub_23DF37A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CD50, &qword_23E22A9F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_23DE58B60(a3, v22 - v10);
  v12 = sub_23E1FDEFC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_23DF37CB4(v11);
  }

  else
  {
    sub_23E1FDEEC();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_23E1FDE6C();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_23E1FDC9C() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;
      sub_23E1FB7CC();
      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_23DF37CB4(a3);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23DF37CB4(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_23DF37CB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CD50, &qword_23E22A9F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DF37D1C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23DF37E14;

  return v6(a1);
}

uint64_t sub_23DF37E14()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_23DF37EF8()
{
  OUTLINED_FUNCTION_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_13(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_16(v1);

  return v4(v3);
}

uint64_t sub_23DF37F8C()
{
  OUTLINED_FUNCTION_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_13(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_16(v1);

  return v4(v3);
}

uint64_t sub_23DF38028()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DB80, &qword_23E22AA40);

  return sub_23DF37068();
}

uint64_t objectdestroy_28Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DB80, &qword_23E22AA40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void *sub_23DF38148(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DB80, &qword_23E22AA40);

  return sub_23DF370A4(a1);
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_23E1FB7CC();
}

id sub_23DF38248()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v95 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v98 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E2235A0;
  v5 = *MEMORY[0x277D7CB18];
  v6 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x800000023E25B7F0;
  v7 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = v5;
  v9 = v7;
  v10 = sub_23E1FDCBC("json|plist", 10);
  v12 = v11;
  sub_23E1FDCBC("json|plist", 10);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v101 = qword_280DAE278;
  v13 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v14 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v10, v12);
  v16 = v15;
  v17 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v100 = v17;
  *(inited + 80) = v16;
  v18 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v17;
  *(inited + 112) = v18;
  v97 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_23E222370;
  v20 = *MEMORY[0x277D7CC20];
  *(v19 + 32) = *MEMORY[0x277D7CC20];
  v21 = v18;
  v22 = v20;
  v23 = sub_23E1FDCBC("When coerced to text, the dictionary is represented as JSON.", 60);
  *&v96 = v24;
  sub_23E1FDCBC("When coerced to text, the dictionary is represented as JSON.", 60);
  sub_23E1FC14C();
  v25 = v101;
  v26 = [v101 bundleURL];
  v99 = v2;
  sub_23E1FBF9C();

  v27 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v23, v96);
  *(v19 + 40) = v28;
  v29 = *MEMORY[0x277D7CC30];
  v30 = v100;
  *(v19 + 64) = v100;
  *(v19 + 72) = v29;
  v31 = v29;
  *&v96 = sub_23E1FDCBC("Passes the specified list of key-value pairs to the next action as a dictionary.", 80);
  v33 = v32;
  sub_23E1FDCBC("Passes the specified list of key-value pairs to the next action as a dictionary.", 80);
  sub_23E1FC14C();
  v34 = [v25 bundleURL];
  sub_23E1FBF9C();

  v35 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v96, v33);
  *(v19 + 104) = v30;
  *(v19 + 80) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v37 = sub_23E1FDABC();
  v38 = v97;
  v39 = sub_23DF3BE54(v37);
  v40 = MEMORY[0x277D7CB48];
  *(inited + 120) = v39;
  v41 = *v40;
  *(inited + 144) = v38;
  *(inited + 152) = v41;
  *(inited + 160) = 0x65676E61724FLL;
  *(inited + 168) = 0xE600000000000000;
  v42 = *MEMORY[0x277D7CB60];
  v43 = MEMORY[0x277D837D0];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v42;
  *(inited + 200) = 0xD000000000000010;
  *(inited + 208) = 0x800000023E24FCE0;
  v44 = *MEMORY[0x277D7CB90];
  *(inited + 224) = v43;
  *(inited + 232) = v44;
  v45 = v43;
  v46 = v41;
  v47 = v42;
  v48 = v44;
  v49 = sub_23E1FDCBC("Dictionary (Action Name)", 24);
  v51 = v50;
  sub_23E1FDCBC("Dictionary", 10);
  sub_23E1FC14C();
  v52 = [v101 bundleURL];
  sub_23E1FBF9C();

  v53 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v49, v51);
  *(inited + 240) = v54;
  v55 = *MEMORY[0x277D7CDD0];
  *(inited + 264) = v100;
  *(inited + 272) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v56 = swift_initStackObject();
  v96 = xmmword_23E222350;
  *(v56 + 16) = xmmword_23E222350;
  *(v56 + 32) = 0x75736F6C63736944;
  *(v56 + 40) = 0xEF6C6576654C6572;
  *(v56 + 48) = 0x63696C627550;
  *(v56 + 56) = 0xE600000000000000;
  *(v56 + 72) = v45;
  *(v56 + 80) = 0x656C7069746C754DLL;
  *(v56 + 88) = 0xE800000000000000;
  v57 = MEMORY[0x277D839B0];
  *(v56 + 96) = 0;
  *(v56 + 120) = v57;
  *(v56 + 128) = 0x614E74757074754FLL;
  *(v56 + 136) = 0xEA0000000000656DLL;
  v58 = v55;
  v59 = sub_23E1FDCBC("Dictionary (Default Output Name)", 32);
  v61 = v60;
  sub_23E1FDCBC("Dictionary", 10);
  sub_23E1FC14C();
  v62 = [v101 bundleURL];
  sub_23E1FBF9C();

  v63 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v59, v61);
  *(v56 + 144) = v64;
  *(v56 + 168) = v100;
  *(v56 + 176) = 0x7365707954;
  *(v56 + 184) = 0xE500000000000000;
  *(v56 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v56 + 192) = &unk_285025F38;
  v65 = MEMORY[0x277D837D0];
  v66 = sub_23E1FDABC();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  *(inited + 280) = v66;
  v68 = *MEMORY[0x277D7CBA0];
  *(inited + 304) = v67;
  *(inited + 312) = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_23E2235B0;
  v95[1] = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v69 = swift_initStackObject();
  *(v69 + 16) = v96;
  v70 = *MEMORY[0x277D7CE10];
  *(v69 + 32) = *MEMORY[0x277D7CE10];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DB90, &qword_23E22AA48);
  *(v69 + 40) = &unk_285025F68;
  v72 = *MEMORY[0x277D7CDF8];
  *(v69 + 64) = v71;
  *(v69 + 72) = v72;
  *(v69 + 80) = 0xD000000000000015;
  *(v69 + 88) = 0x800000023E25B900;
  v73 = *MEMORY[0x277D7CE70];
  v74 = v65;
  *(v69 + 104) = v65;
  *(v69 + 112) = v73;
  *(v69 + 120) = 0x736D6574494657;
  *(v69 + 128) = 0xE700000000000000;
  v75 = *MEMORY[0x277D7CE80];
  *(v69 + 144) = v74;
  *(v69 + 152) = v75;
  v76 = v68;
  v77 = v70;
  v78 = v72;
  v79 = v73;
  v80 = v75;
  v81 = sub_23E1FDCBC("Items (WFItems)", 15);
  v83 = v82;
  sub_23E1FDCBC("Items", 5);
  sub_23E1FC14C();
  v84 = [v101 bundleURL];
  sub_23E1FBF9C();

  v85 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v81, v83);
  *(v69 + 184) = v100;
  *(v69 + 160) = v86;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v87 = sub_23E1FDABC();
  v88 = sub_23DF3BE9C(v87);
  v89 = v97;
  *(v97 + 32) = v88;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 320) = v89;
  v91 = *MEMORY[0x277D7CB78];
  *(inited + 344) = v90;
  *(inited + 352) = v91;
  *(inited + 384) = MEMORY[0x277D839B0];
  *(inited + 360) = 1;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v92 = v91;
  v93 = sub_23E1FDABC();
  return sub_23DF3BF9C(v93);
}

void sub_23DF38D2C()
{
  OUTLINED_FUNCTION_90();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v1);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v2);
  v3 = sub_23E1FBEEC();
  OUTLINED_FUNCTION_6_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_4();
  v7 = sub_23E1FC1DC();
  v8 = OUTLINED_FUNCTION_25(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16_12();
  v9 = sub_23E1FDBCC();
  v10 = OUTLINED_FUNCTION_25(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_18_5();
  v11 = sub_23E1FBF0C();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_13_8();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v5 + 104))(v0, *MEMORY[0x277CC9110], v3);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_4();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  sub_23E1FB8EC();
  OUTLINED_FUNCTION_76();
}

void sub_23DF38F30()
{
  OUTLINED_FUNCTION_90();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  OUTLINED_FUNCTION_25(v1);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_16_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v3);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_16_4();
  v37 = sub_23E1FBEEC();
  v5 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_18_5();
  v6 = sub_23E1FC1DC();
  v7 = OUTLINED_FUNCTION_25(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  v11 = sub_23E1FDBCC();
  v12 = OUTLINED_FUNCTION_25(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  v15 = v14 - v13;
  v40 = sub_23E1FBF0C();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DC28, &qword_23E22AF78);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DC30, &qword_23E22AF80) - 8;
  v39 = *(*v16 + 72);
  v17 = (*(*v16 + 80) + 32) & ~*(*v16 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_23E222370;
  v18 = v41 + v17;
  *(v41 + v17) = 0;
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v36 = *MEMORY[0x277CC9110];
  v38 = *(v5 + 104);
  v38(v0);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_9_12(v15, v19, 0xEA00000000007374, v10, v0);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v40);
  v23 = sub_23E1FB75C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
  OUTLINED_FUNCTION_15_12();
  *(v18 + v39) = 1;
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v38)(v0, v36, v37);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_9_12(v27, v28, v29, v10, v0);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v40);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v23);
  OUTLINED_FUNCTION_15_12();
  sub_23E1FB77C();
  sub_23DF39870();
  sub_23E1FDABC();
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DF39338(uint64_t a1, uint64_t a2)
{
  v2 = sub_23E1FE6EC();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_23DF39390()
{
  result = qword_280DAF1F8;
  if (!qword_280DAF1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF1F8);
  }

  return result;
}

uint64_t sub_23DF393E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23DF39338(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_23DF3946C()
{
  result = qword_280DAF238;
  if (!qword_280DAF238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF238);
  }

  return result;
}

unint64_t sub_23DF394C4()
{
  result = qword_280DAF210;
  if (!qword_280DAF210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF210);
  }

  return result;
}

unint64_t sub_23DF3951C()
{
  result = qword_280DAF1F0;
  if (!qword_280DAF1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF1F0);
  }

  return result;
}

unint64_t sub_23DF39574()
{
  result = qword_280DAF220;
  if (!qword_280DAF220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF220);
  }

  return result;
}

unint64_t sub_23DF395C8()
{
  result = qword_280DAF218;
  if (!qword_280DAF218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF218);
  }

  return result;
}

unint64_t sub_23DF3961C()
{
  result = qword_280DAF230;
  if (!qword_280DAF230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF230);
  }

  return result;
}

unint64_t sub_23DF39674()
{
  result = qword_280DAF228;
  if (!qword_280DAF228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF228);
  }

  return result;
}

unint64_t sub_23DF3971C()
{
  result = qword_280DAE578;
  if (!qword_280DAE578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE578);
  }

  return result;
}

uint64_t sub_23DF39770(uint64_t a1)
{
  v2 = sub_23DF3971C();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_23DF397C0()
{
  result = qword_280DAF208;
  if (!qword_280DAF208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF208);
  }

  return result;
}

unint64_t sub_23DF39818()
{
  result = qword_280DAF1E8;
  if (!qword_280DAF1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF1E8);
  }

  return result;
}

unint64_t sub_23DF39870()
{
  result = qword_280DAF200;
  if (!qword_280DAF200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF200);
  }

  return result;
}

uint64_t sub_23DF398C8(uint64_t a1)
{
  v2 = sub_23DF39674();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_23DF39918()
{
  result = qword_280DAF1D0;
  if (!qword_280DAF1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF1D0);
  }

  return result;
}

unint64_t sub_23DF39970()
{
  result = qword_280DAF1E0;
  if (!qword_280DAF1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF1E0);
  }

  return result;
}

uint64_t sub_23DF399FC()
{
  v0 = sub_23E1FBEEC();
  OUTLINED_FUNCTION_6_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  v7 = sub_23E1FC1DC();
  v8 = OUTLINED_FUNCTION_25(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_4();
  v9 = sub_23E1FDBCC();
  v10 = OUTLINED_FUNCTION_25(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16_12();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v2 + 104))(v6, *MEMORY[0x277CC9110], v0);
  OUTLINED_FUNCTION_2_5();
  return sub_23E1FBF1C();
}

void sub_23DF39B78()
{
  OUTLINED_FUNCTION_90();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v1);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_16_4();
  v3 = sub_23E1FBEEC();
  OUTLINED_FUNCTION_6_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_4();
  v7 = sub_23E1FC1DC();
  v8 = OUTLINED_FUNCTION_25(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16_12();
  v9 = sub_23E1FDBCC();
  v10 = OUTLINED_FUNCTION_25(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_18_5();
  v11 = sub_23E1FBF0C();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v100 = *MEMORY[0x277CC9110];
  v12 = *(v5 + 104);
  v12(v0);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_4();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C600, &qword_23E224590);
  *(swift_allocObject() + 16) = xmmword_23E22AA50;
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v12)(v0, v100, v3);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_11_13(v16, v17, v18, v19, v20, v21);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v22 = OUTLINED_FUNCTION_36_5();
  v12(v22);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_11_13(v23, v24, v25, v26, v27, "Toggle Cellular Plan – Search Keyword");
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v28 = OUTLINED_FUNCTION_36_5();
  v12(v28);
  v29 = OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_13(v29, v30, v31, v32, v33, "Toggle Cellular Plan – Search Keyword");
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v34 = OUTLINED_FUNCTION_36_5();
  v12(v34);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_11_13(v35, v36, v37, v38, v39, "Toggle Cellular Plan – Search Keyword");
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v12)(v0, v100, v3);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_11_13(v40, v41, v42, v43, v44, "Toggle Cellular Plan – Search Keyword");
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v12)(v0, v100, v3);
  v45 = OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_13(v45, v46, v47, v48, v49, "Toggle Cellular Plan – Search Keyword");
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v12)(v0, v100, v3);
  v50 = OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_13(v50, v51, v52, v53, v54, "Toggle Cellular Plan – Search Keyword");
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v12)(v0, v100, v3);
  v55 = OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_13(v55, v56, v57, v58, v59, "Toggle Cellular Plan – Search Keyword");
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v60 = OUTLINED_FUNCTION_8_9();
  v12(v60);
  v61 = OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_13(v61, v62, v63, v64, v65, "Toggle Cellular Plan – Search Keyword");
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v66 = OUTLINED_FUNCTION_8_9();
  v12(v66);
  v67 = OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_13(v67, v68, v69, v70, v71, "Toggle Cellular Plan – Search Keyword");
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v72 = OUTLINED_FUNCTION_8_9();
  v12(v72);
  v73 = OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_13(v73, v74, v75, v76, v77, "Toggle Cellular Plan – Search Keyword");
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v78 = OUTLINED_FUNCTION_8_9();
  v12(v78);
  v79 = OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_13(v79, v80, v81, v82, v83, "Toggle Cellular Plan – Search Keyword");
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v12)(v0, v100, v3);
  v84 = OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_13(v84, v85, v86, v87, v88, "Toggle Cellular Plan – Search Keyword");
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v12)(v0, v100, v3);
  v89 = OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_13(v89, v90, v91, v92, v93, "Toggle Cellular Plan – Search Keyword");
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v12)(v0, v100, v3);
  v94 = OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_13(v94, v95, v96, v97, v98, "Toggle Cellular Plan – Search Keyword");
  sub_23E1FB69C();
  v99 = sub_23E1FB67C();
  OUTLINED_FUNCTION_9_0(v99);
  OUTLINED_FUNCTION_76();
}