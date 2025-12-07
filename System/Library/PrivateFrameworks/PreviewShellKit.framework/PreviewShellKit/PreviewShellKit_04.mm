__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_25F12E724(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F12E76C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_25F12E7D0(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD48860, &qword_25F180798);
  v10 = *(sub_25F1776AC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_25F1776AC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_25F12E9A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486F0, &unk_25F17F870);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F12EAB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486E8, &unk_25F180708);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_25F12EBB8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486F8, &qword_25F180718);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48700, &qword_25F180720);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_25F12ECEC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25F12F6D8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = sub_25F1797FC();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_25F17926C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    sub_25F12EE20(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_25F12EE20(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_25F12F5EC(v8);
    }

    v75 = v8 + 16;
    v76 = *(v8 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[16 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_25F12F36C((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_25F116170(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v29 = *(v8 + 3);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      v8 = sub_25F116170((v29 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v30;
    v31 = v8 + 32;
    v32 = &v8[16 * v5 + 32];
    *v32 = v9;
    *(v32 + 1) = v7;
    v84 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 4);
          v34 = *(v8 + 5);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[16 * v30];
          v51 = *v49;
          v50 = *(v49 + 1);
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[16 * v5];
          v57 = *v55;
          v56 = *(v55 + 1);
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[16 * v30];
        v61 = *v59;
        v60 = *(v59 + 1);
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[16 * v5];
        v64 = *v62;
        v63 = *(v62 + 1);
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[16 * v5 - 16];
        v71 = *v70;
        v72 = &v31[16 * v5];
        v73 = *(v72 + 1);
        sub_25F12F36C((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        *(v70 + 1) = v73;
        v74 = *(v8 + 2);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        memmove(&v31[16 * v5], v72 + 16, 16 * (v74 - 1 - v5));
        *(v8 + 2) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[16 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[16 * v30];
      v46 = *v44;
      v45 = *(v44 + 1);
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[16 * v5];
        v68 = *v66;
        v67 = *(v66 + 1);
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_25F12F36C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_25F12F560(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25F12F5EC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_25F12F600(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = *(*(a5 + 48) + 8 * a2);
    v9 = sub_25F17892C();
    (*(*(v9 - 8) + 16))(v6, v7 + *(*(v9 - 8) + 72) * a2, v9);
    return v8;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_25F12F700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48710;
  if (!qword_27FD48710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48710);
  }

  return result;
}

uint64_t sub_25F12F754(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v6 = sub_25F1790AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_25F17888C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_25F0ED3D8(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48848, &qword_25F180788);
  v15 = swift_allocObject();
  *(v15 + 44) = 0;
  *(v15 + 16) = a1;
  *(v15 + 24) = v14;
  *(v15 + 32) = 0;
  *(v15 + 40) = 1;
  *(v3 + 16) = v15;

  if (v4)
  {
    v29 = v6;
    sub_25F17885C();
    v16 = sub_25F17887C();
    v17 = sub_25F17951C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v28 = v4;
      v4 = v18;
      *v18 = 0;
      _os_log_impl(&dword_25F0B3000, v16, v17, "All JIT symbols will be logged", v18, 2u);
      v19 = v4;
      LOBYTE(v4) = v28;
      MEMORY[0x25F8D6230](v19, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    v6 = v29;
  }

  v30 = 0xD00000000000001DLL;
  v31 = 0x800000025F186800;
  v20 = sub_25F17909C();
  sub_25F0B7DB8(v20, v21, v22);
  v23 = sub_25F17965C();
  result = (*(v7 + 8))(v9, v6);
  if (v23)
  {
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v4 & 1;
    *(v26 + 24) = v25;
    *(v26 + 32) = v23;

    sub_25F178ABC();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25F12FA6C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v89 = a7;
  v81 = a6;
  v84 = a5;
  v90 = a3;
  v107 = a1;
  v99 = a9;
  v12 = sub_25F178A0C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v80 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v82 = &v80 - v16;
  v85 = sub_25F178A2C();
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v100 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25F1788DC();
  v96 = *(v18 - 8);
  v97 = v18;
  MEMORY[0x28223BE20](v18);
  v95 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_25F17895C();
  v21 = *(v20 - 8);
  v91 = v20;
  v92 = v21;
  v22 = MEMORY[0x28223BE20](v20);
  v88 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v101 = &v80 - v24;
  v25 = sub_25F17888C();
  v93 = *(v25 - 8);
  v94 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17885C();

  v28 = sub_25F17887C();
  v29 = sub_25F17952C();

  v30 = a8;

  v31 = os_log_type_enabled(v28, v29);
  v87 = v12;
  v86 = v13;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = a4;
    v34 = swift_slowAlloc();
    v104 = v34;
    *v32 = 136446722;
    *(v32 + 4) = sub_25F0BECF0(v89, v30, &v104);
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_25F0BECF0(v107, a2, &v104);
    *(v32 + 22) = 2080;
    *(v32 + 24) = sub_25F0BECF0(v90, v33, &v104);
    _os_log_impl(&dword_25F0B3000, v28, v29, "%{public}s: Loading static archive %s with identifier %s", v32, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v34, -1, -1);
    MEMORY[0x25F8D6230](v32, -1, -1);
  }

  (*(v93 + 8))(v27, v94);
  v36 = v95;
  v35 = v96;
  v37 = v97;
  (*(v96 + 104))(v95, *MEMORY[0x277D7E8E8], v97);
  v38 = v101;
  v39 = v98;
  v40 = sub_25F17896C();
  v41 = v39;
  v42 = v100;
  if (v39)
  {
    (*(v35 + 8))(v36, v37);
  }

  else
  {
    v98 = v40;
    (*(v35 + 8))(v36, v37);
    v43 = v91;
    v44 = v92;
    v45 = v88;
    (*(v92 + 16))(v88, v38, v91);
    v46 = (*(v44 + 88))(v45, v43);
    if (v46 == *MEMORY[0x277D7E900])
    {
      sub_25F130550(v46, v47, v48);
      v41 = swift_allocError();
      *v49 = v107;
      *(v49 + 8) = a2;
      *(v49 + 16) = 2;
      swift_willThrow();

      (*(v92 + 8))(v38, v91);
    }

    else
    {
      if (v46 == *MEMORY[0x277D7E8F8])
      {
        sub_25F178A7C();
        v50 = v42;
        v51 = v86;
        v52 = v80;
        v53 = v87;
        (*(v86 + 104))(v80, **(&unk_279A7F5A8 + v81), v87);
        v54 = v82;
        (*(v51 + 32))(v82, v52, v53);
        sub_25F1789FC();

        (*(v51 + 8))(v54, v53);
        (*(v83 + 8))(v50, v85);
        return (*(v92 + 8))(v38, v91);
      }

      if (v46 == *MEMORY[0x277D7E8F0])
      {
        v104 = 0;
        v105 = 0xE000000000000000;

        v55 = v91;
        v56 = sub_25F17976C();
        v57 = v104;
        v58 = v105;
        sub_25F1305A4(v56, v59, v60);
        v41 = swift_allocError();
        *v61 = v107;
        v61[1] = a2;
        v61[2] = 0x65766968637261;
        v61[3] = 0xE700000000000000;
        v61[4] = v57;
        v61[5] = v58;
        swift_willThrow();

        (*(v92 + 8))(v38, v55);
      }

      else
      {
        v104 = 0;
        v105 = 0xE000000000000000;

        v62 = v91;
        v63 = sub_25F17976C();
        v64 = v104;
        v65 = v105;
        sub_25F1304FC(v63, v66, v67);
        v41 = swift_allocError();
        *v68 = v107;
        v68[1] = a2;
        v68[2] = v64;
        v68[3] = v65;
        swift_willThrow();

        v69 = *(v92 + 8);
        v69(v38, v62);
        v69(v88, v62);
      }
    }
  }

  v102 = v107;
  v103 = a2;

  v70 = v41;
  sub_25F1305F8(v70, v71, v72);
  sub_25F1781BC();

  v73 = v106;
  v74 = __swift_project_boxed_opaque_existential_1(&v104, v106);
  v75 = *(v73 - 8);
  MEMORY[0x28223BE20](v74);
  v77 = &v80 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v75 + 16))(v77);
  if (sub_25F17981C())
  {
    (*(v75 + 8))(v77, v73);
  }

  else
  {
    swift_allocError();
    (*(v75 + 32))(v78, v77, v73);
  }

  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1Tm(&v104);
}

unint64_t sub_25F1304A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48718;
  if (!qword_27FD48718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48718);
  }

  return result;
}

unint64_t sub_25F1304FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48720;
  if (!qword_27FD48720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48720);
  }

  return result;
}

unint64_t sub_25F130550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48728;
  if (!qword_27FD48728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48728);
  }

  return result;
}

unint64_t sub_25F1305A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48730;
  if (!qword_27FD48730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48730);
  }

  return result;
}

unint64_t sub_25F1305F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48758;
  if (!qword_27FD48758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48758);
  }

  return result;
}

unint64_t sub_25F13066C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48788;
  if (!qword_27FD48788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48788);
  }

  return result;
}

unint64_t sub_25F1306C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48790;
  if (!qword_27FD48790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48790);
  }

  return result;
}

unint64_t sub_25F130714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD487A0;
  if (!qword_27FD487A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD487A0);
  }

  return result;
}

unint64_t sub_25F130768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD487A8;
  if (!qword_27FD487A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD487A8);
  }

  return result;
}

unint64_t sub_25F1307BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD487B8;
  if (!qword_27FD487B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD487B8);
  }

  return result;
}

uint64_t sub_25F130830()
{
  v1 = sub_25F17767C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F13097C()
{
  v1 = sub_25F17767C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F130B48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48708, &qword_25F180728);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_25F130BB8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v94 = a4;
  v98 = a3;
  v89 = a2;
  v97 = sub_25F178B1C();
  v100 = *(v97 - 8);
  v7 = MEMORY[0x28223BE20](v97);
  v91 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v82 - v9;
  v99 = sub_25F17888C();
  v90 = *(v99 - 8);
  v11 = MEMORY[0x28223BE20](v99);
  v13 = v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v86 = v82 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v88 = v82 - v17;
  MEMORY[0x28223BE20](v16);
  v95 = v82 - v18;
  v93 = sub_25F17835C();
  v19 = *(v93 - 1);
  MEMORY[0x28223BE20](v93);
  v21 = v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD487B0, &unk_25F180760);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v82 - v23;
  v25 = sub_25F177FBC();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = a1;
  if (*(a1 + 2))
  {
    v102 = *(a1 + 2);
    v82[0] = v13;
    v96 = v10;
    v30 = v27;
    v82[1] = sub_25F1782EC();
    sub_25F1782DC();
    v84 = v26;
    v85 = v30;
    (*(v26 + 56))(v24, 1, 1, v30);
    v31 = v21;
    sub_25F17832C();
    v83 = v29;
    v32 = v89;
    v33 = v98;
    sub_25F1782CC();

    (*(v19 + 8))(v31, v93);
    sub_25F0B7E94(v24, &qword_27FD487B0, &unk_25F180760);
    v34 = v95;
    sub_25F17885C();

    v35 = sub_25F17887C();
    v36 = sub_25F17952C();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v103 = v38;
      *v37 = 136446210;
      *(v37 + 4) = sub_25F0BECF0(v32, v33, &v103);
      _os_log_impl(&dword_25F0B3000, v35, v36, "%{public}s: Applying pending updates.", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x25F8D6230](v38, -1, -1);
      MEMORY[0x25F8D6230](v37, -1, -1);
    }

    v39 = v90 + 8;
    v95 = *(v90 + 8);
    v40 = (v95)(v34, v99);
    v42 = v96;
    v41 = v97;
    v43 = v88;
    v44 = *(v100 + 16);
    v45 = &v101[(*(v100 + 80) + 32) & ~*(v100 + 80)];
    v100 += 16;
    v101 = (v100 - 8);
    v92 = *(v100 + 56);
    v93 = v44;
    v40.n128_u64[0] = 136446466;
    v87 = v40;
    v46 = v91;
    v47 = v102;
    v90 = v39;
    while (v47)
    {
      v102 = v47;
      v48 = v93;
      v93(v42, v45, v41);
      sub_25F17885C();
      v48(v46, v42, v41);
      v49 = v98;

      v50 = v43;
      v51 = sub_25F17887C();
      v52 = sub_25F17952C();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v91 = v5;
        v54 = v53;
        v55 = swift_slowAlloc();
        v103 = v55;
        *v54 = v87.n128_u32[0];
        *(v54 + 4) = sub_25F0BECF0(v89, v49, &v103);
        *(v54 + 12) = 2080;
        v56 = sub_25F178B0C();
        v58 = v57;
        v59 = *v101;
        (*v101)(v46, v97);
        v60 = sub_25F0BECF0(v56, v58, &v103);
        v41 = v97;

        *(v54 + 14) = v60;
        _os_log_impl(&dword_25F0B3000, v51, v52, "%{public}s: Applying for %s", v54, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8D6230](v55, -1, -1);
        v61 = v54;
        v5 = v91;
        MEMORY[0x25F8D6230](v61, -1, -1);

        v43 = v88;
        (v95)(v88, v99);
      }

      else
      {

        v59 = *v101;
        (*v101)(v46, v41);
        (v95)(v50, v99);
        v43 = v50;
      }

      v42 = v96;
      sub_25F178A4C();
      if (v5)
      {
        v102 = v59;
        v68 = v82[0];
        sub_25F17885C();
        v69 = v98;

        v70 = v5;
        v71 = sub_25F17887C();
        v72 = sub_25F17953C();

        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v103 = v75;
          *v73 = v87.n128_u32[0];
          *(v73 + 4) = sub_25F0BECF0(v89, v69, &v103);
          *(v73 + 12) = 2112;
          v76 = v5;
          v77 = _swift_stdlib_bridgeErrorToNSError();
          *(v73 + 14) = v77;
          *v74 = v77;
          _os_log_impl(&dword_25F0B3000, v71, v72, "%{public}s: Failed applying pending updates: %@", v73, 0x16u);
          sub_25F0B7E94(v74, &qword_27FD473D0, &unk_25F17C540);
          MEMORY[0x25F8D6230](v74, -1, -1);
          __swift_destroy_boxed_opaque_existential_1Tm(v75);
          v78 = v75;
          v42 = v96;
          MEMORY[0x25F8D6230](v78, -1, -1);
          MEMORY[0x25F8D6230](v73, -1, -1);

          v79 = v68;
          v80 = v99;
          v41 = v97;
        }

        else
        {

          v79 = v68;
          v80 = v99;
        }

        (v95)(v79, v80);
        swift_willThrow();
        (v102)(v42, v41);
        goto LABEL_18;
      }

      (v59)(v42, v41);
      v45 += v92;
      v47 = v102 - 1;
      if (v102 == 1)
      {
        v62 = v86;
        sub_25F17885C();
        v63 = v98;

        v64 = sub_25F17887C();
        v65 = sub_25F17952C();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v103 = v67;
          *v66 = 136446210;
          *(v66 + 4) = sub_25F0BECF0(v89, v63, &v103);
          _os_log_impl(&dword_25F0B3000, v64, v65, "%{public}s: Finished applying pending updates", v66, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v67);
          MEMORY[0x25F8D6230](v67, -1, -1);
          MEMORY[0x25F8D6230](v66, -1, -1);
        }

        (v95)(v62, v99);
LABEL_18:
        sub_25F1782DC();
        v81 = v83;
        sub_25F1782BC();

        (*(v84 + 8))(v81, v85);
        return;
      }
    }

    __break(1u);
  }
}

unint64_t sub_25F1315D8()
{
  result = qword_27FD47E08;
  if (!qword_27FD47E08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD47E08);
  }

  return result;
}

uint64_t sub_25F131644()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25F13169C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25F1316D4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25F13173C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_25F131818(uint64_t a1)
{
  sub_25F17722C();
  if (v1 <= 0x3F)
  {
    sub_25F1318AC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25F1318AC()
{
  if (!qword_27FD48880)
  {
    v0 = sub_25F17960C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD48880);
    }
  }
}

uint64_t sub_25F1319B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F131A00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_25F131C30(uint64_t a1)
{
  result = sub_25F1779DC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_62Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F17767C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_63Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F17767C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25F131DC8(uint64_t a1)
{
  result = sub_25F17767C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_25F131E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD488E0;
  if (!qword_27FD488E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD488E0);
  }

  return result;
}

unint64_t sub_25F131F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD488F8;
  if (!qword_27FD488F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD488F8);
  }

  return result;
}

unint64_t sub_25F131FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48900;
  if (!qword_27FD48900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48900);
  }

  return result;
}

unint64_t sub_25F132108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48918;
  if (!qword_27FD48918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48918);
  }

  return result;
}

unint64_t sub_25F132160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48920;
  if (!qword_27FD48920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48920);
  }

  return result;
}

unint64_t sub_25F1321B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48928;
  if (!qword_27FD48928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48928);
  }

  return result;
}

unint64_t sub_25F132214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48930;
  if (!qword_27FD48930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48930);
  }

  return result;
}

unint64_t sub_25F13226C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48938;
  if (!qword_27FD48938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48938);
  }

  return result;
}

unint64_t sub_25F1322C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48940;
  if (!qword_27FD48940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48940);
  }

  return result;
}

unint64_t sub_25F132320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48948;
  if (!qword_27FD48948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48948);
  }

  return result;
}

unint64_t sub_25F13237C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48950;
  if (!qword_27FD48950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48950);
  }

  return result;
}

unint64_t sub_25F1323D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48958;
  if (!qword_27FD48958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48958);
  }

  return result;
}

unint64_t sub_25F13242C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48960;
  if (!qword_27FD48960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48960);
  }

  return result;
}

unint64_t sub_25F132488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48968;
  if (!qword_27FD48968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48968);
  }

  return result;
}

unint64_t sub_25F1324E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48970;
  if (!qword_27FD48970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48970);
  }

  return result;
}

unint64_t sub_25F132538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48978;
  if (!qword_27FD48978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48978);
  }

  return result;
}

unint64_t sub_25F132594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48980;
  if (!qword_27FD48980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48980);
  }

  return result;
}

unint64_t sub_25F1325EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48988;
  if (!qword_27FD48988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48988);
  }

  return result;
}

unint64_t sub_25F132648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48990;
  if (!qword_27FD48990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48990);
  }

  return result;
}

unint64_t sub_25F1326A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48998;
  if (!qword_27FD48998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48998);
  }

  return result;
}

unint64_t sub_25F132980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD489D0;
  if (!qword_27FD489D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD489D0);
  }

  return result;
}

unint64_t sub_25F1329D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD489D8;
  if (!qword_27FD489D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD489D8);
  }

  return result;
}

unint64_t sub_25F132A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD489E0;
  if (!qword_27FD489E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD489E0);
  }

  return result;
}

unint64_t sub_25F132A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD489E8;
  if (!qword_27FD489E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD489E8);
  }

  return result;
}

unint64_t sub_25F132AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD489F0;
  if (!qword_27FD489F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD489F0);
  }

  return result;
}

unint64_t sub_25F132B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD489F8;
  if (!qword_27FD489F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD489F8);
  }

  return result;
}

unint64_t sub_25F132B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48A18;
  if (!qword_27FD48A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48A18);
  }

  return result;
}

unint64_t sub_25F132BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48A20;
  if (!qword_27FD48A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48A20);
  }

  return result;
}

unint64_t sub_25F132C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48A28;
  if (!qword_27FD48A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48A28);
  }

  return result;
}

unint64_t sub_25F132C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48A30;
  if (!qword_27FD48A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48A30);
  }

  return result;
}

unint64_t sub_25F132CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48A38;
  if (!qword_27FD48A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48A38);
  }

  return result;
}

unint64_t sub_25F132D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48A40;
  if (!qword_27FD48A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48A40);
  }

  return result;
}

unint64_t sub_25F132D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48A48;
  if (!qword_27FD48A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48A48);
  }

  return result;
}

unint64_t sub_25F132DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48A78;
  if (!qword_27FD48A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48A78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreviewsJITLinkerState.InvalidLinkerInputFile.Location(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_25F132ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48A88;
  if (!qword_27FD48A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48A88);
  }

  return result;
}

uint64_t CanvasUpdateResult.staticChromeType.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_25F17719C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CanvasUpdateResult.makeStaticOutput.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));

  return v2;
}

uint64_t CanvasUpdateResult.controlConfiguration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 52);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v5;
  *(a2 + 32) = *(v3 + 32);
  *(a2 + 48) = v4;
}

uint64_t CanvasUpdateResult.init(hostedOutput:staticChromeType:makeStaticOutput:controlConfiguration:controlStates:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v18 = *(a5 + 6);
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  updated = type metadata accessor for CanvasUpdateResult(0, a7, a8, a10);
  v20 = updated[11];
  v21 = sub_25F17719C();
  v28 = a5[1];
  v29 = *a5;
  v27 = a5[2];
  (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  v22 = (a9 + updated[12]);
  *v22 = a3;
  v22[1] = a4;
  v23 = a9 + updated[13];
  *v23 = v29;
  *(v23 + 16) = v28;
  *(v23 + 32) = v27;
  *(v23 + 48) = v18;
  v24 = *(*(a10 - 8) + 32);
  v25 = a9 + updated[14];

  return v24(v25, a6, a10);
}

uint64_t CanvasUpdateResult.init<>(hostedOutput:staticChromeType:makeStaticOutput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a4;
  v24 = a6;
  v12 = sub_25F17719C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a5 - 8);
  MEMORY[0x28223BE20](v14);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, a1, a5);
  (*(v13 + 32))(v16, a2, v12);
  (*(v17 + 8))(a1, a5);
  *&v25 = MEMORY[0x277D84F90];
  *(&v25 + 1) = nullsub_1;
  v26 = 0;
  v27 = sub_25F157D78;
  v28 = 0;
  v29 = sub_25F157D84;
  v30 = 0;
  return CanvasUpdateResult.init(hostedOutput:staticChromeType:makeStaticOutput:controlConfiguration:controlStates:)(v19, v16, a3, v23, &v25, v20, a5, v24, a7, MEMORY[0x277D84F78] + 8);
}

uint64_t CanvasUpdateResult.init<>(hostedOutput:staticChromeType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_25F17719C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 - 8);
  MEMORY[0x28223BE20](v10);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, a3);
  (*(v9 + 32))(v12, a2, v8);
  (*(v13 + 8))(a1, a3);
  *&v19 = MEMORY[0x277D84F90];
  *(&v19 + 1) = nullsub_1;
  v20 = 0;
  v21 = sub_25F157D78;
  v22 = 0;
  v23 = sub_25F157D84;
  v24 = 0;
  return CanvasUpdateResult.init(hostedOutput:staticChromeType:makeStaticOutput:controlConfiguration:controlStates:)(v15, v12, sub_25F133718, 0, &v19, v16, a3, MEMORY[0x277D84F78] + 8, a4, MEMORY[0x277D84F78] + 8);
}

uint64_t CanvasUpdateResult.init<>(staticChromeType:makeStaticOutput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_25F17719C();
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (*(v13 + 32))(v12, a1);
  *&v18 = MEMORY[0x277D84F90];
  *(&v18 + 1) = nullsub_1;
  v19 = 0;
  v20 = sub_25F157D78;
  v21 = 0;
  v22 = sub_25F157D84;
  v23 = 0;
  return CanvasUpdateResult.init(hostedOutput:staticChromeType:makeStaticOutput:controlConfiguration:controlStates:)(v14, v12, a2, a3, &v18, v15, MEMORY[0x277D84F78] + 8, a4, a5, MEMORY[0x277D84F78] + 8);
}

uint64_t CanvasUpdateResult.init<>(staticChromeType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25F17719C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD48A90, &qword_25F1820F0);
  v6 = (a2 + *(result + 48));
  *v6 = sub_25F1339C4;
  v6[1] = 0;
  v7 = (a2 + *(result + 52));
  *v7 = MEMORY[0x277D84F90];
  v7[1] = nullsub_1;
  v7[2] = 0;
  v7[3] = sub_25F157D78;
  v7[4] = 0;
  v7[5] = sub_25F157D84;
  v7[6] = 0;
  return result;
}

uint64_t CanvasUpdateResult.init<>(hostedOutput:staticChromeType:controlConfiguration:controlStates:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *(a3 + 48);
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v10[2] = *(a3 + 32);
  v11 = v7;
  return CanvasUpdateResult.init(hostedOutput:staticChromeType:makeStaticOutput:controlConfiguration:controlStates:)(a1, a2, sub_25F133AB0, 0, v10, a4, a5, MEMORY[0x277D84F78] + 8, a7, a6);
}

uint64_t CanvasUpdateResult.init<>(staticChromeType:makeStaticOutput:controlConfiguration:controlStates:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *(a4 + 48);
  v9 = *(a4 + 16);
  v11[0] = *a4;
  v11[1] = v9;
  v11[2] = *(a4 + 32);
  v12 = v8;
  return CanvasUpdateResult.init(hostedOutput:staticChromeType:makeStaticOutput:controlConfiguration:controlStates:)(a1, a1, a2, a3, v11, a5, MEMORY[0x277D84F78] + 8, a6, a8, a7);
}

uint64_t CanvasUpdateResult.init<>(staticChromeType:controlConfiguration:controlStates:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 48);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  v8[2] = *(a2 + 32);
  v9 = v5;
  return CanvasUpdateResult.init(hostedOutput:staticChromeType:makeStaticOutput:controlConfiguration:controlStates:)(a1, a1, sub_25F133C00, 0, v8, a3, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78] + 8, a5, a4);
}

uint64_t CanvasUpdateOutput.hostedOutput.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F177F8C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CanvasUpdateOutput.staticChromeType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CanvasUpdateOutput(0) + 20);
  v4 = sub_25F17719C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CanvasUpdateOutput.makeStaticOutput.getter()
{
  v1 = *(v0 + *(type metadata accessor for CanvasUpdateOutput(0) + 24));

  return v1;
}

uint64_t CanvasUpdateOutput.controlDescriptions.getter()
{
  type metadata accessor for CanvasUpdateOutput(0);
}

uint64_t CanvasUpdateOutput.controlStates.getter()
{
  type metadata accessor for CanvasUpdateOutput(0);
}

uint64_t sub_25F133E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_25F133E60(a1, a2, a3);
  return v6;
}

void *sub_25F133E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(*v3 + 80);
  v8 = *(*v3 + 88);
  sub_25F17828C();
  *(v3 + 64) = sub_25F17827C();
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 116) = 0u;
  *(v3 + 132) = 1;
  *(v3 + 136) = 0;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v9 = sub_25F1776AC();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  *(v13 + 24) = v8;
  (*(v10 + 32))(v13 + v11, a3, v9);
  v14 = (v13 + v12);
  *v14 = a1;
  v14[1] = a2;
  v4[4] = &unk_25F1823A0;
  v4[5] = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v4[6] = sub_25F13C0B8;
  v4[7] = v15;
  swift_unknownObjectRetain_n();
  return v4;
}

uint64_t sub_25F134034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_25F17930C();
  v7[3] = sub_25F1792FC();
  v15 = *(a5 + 8);
  v18 = (*(a7 + 56) + **(a7 + 56));
  v16 = swift_task_alloc();
  v7[4] = v16;
  *v16 = v7;
  v16[1] = sub_25F1341B0;

  return v18(a1, a3, a4, v15, a2, a6, a7);
}

uint64_t sub_25F1341B0()
{
  *(*v1 + 40) = v0;

  v3 = sub_25F1792CC();
  if (v0)
  {
    v4 = sub_25F134370;
  }

  else
  {
    v4 = sub_25F13430C;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_25F13430C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F134370()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F134410(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v79 = a8;
  v82 = a7;
  v81 = a6;
  v80 = a4;
  v78 = a3;
  v85 = a2;
  v73 = a1;
  v83 = *v8;
  v76 = sub_25F177F8C();
  v89 = *(v76 - 8);
  v77 = *(v89 + 64);
  MEMORY[0x28223BE20](v76);
  v88 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_25F177FFC();
  v90 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v14 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25F177D2C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v70 = v17;
  v18 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  *(v8 + 32) = *a1;
  *(v8 + 132) = 0;
  v20 = *(v16 + 16);
  v67 = v16 + 16;
  v68 = v20;
  v87 = v18;
  v64 = a5;
  v22 = v21;
  v86 = v21;
  (v20)(v18, a5);
  v71 = *(v16 + 80);
  v23 = (v71 + 40) & ~v71;
  v72 = v71 | 7;
  v24 = swift_allocObject();
  v25 = v83;
  v26 = *(v83 + 80);
  v24[2] = v26;
  v83 = *(v25 + 88);
  v24[3] = v83;
  v24[4] = v9;
  v27 = *(v16 + 32);
  v74 = v16 + 32;
  v75 = v27;
  v27(v24 + v23, v18, v22);

  sub_25F10436C(a5, sub_25F13AAA4, v24);

  LODWORD(v94) = v19;
  v91 = v9;
  v92 = v73;
  v69 = sub_25F17825C();
  v28 = swift_allocObject();
  v29 = v83;
  *(v28 + 16) = v26;
  *(v28 + 24) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48BB8, &qword_25F182348);
  sub_25F1008A0(v26);
  sub_25F1785BC();

  v31 = v90 + 8;
  v30 = *(v90 + 8);
  v32 = v84;
  v30(v14, v84);
  v66 = v30;
  v90 = v31;
  sub_25F177FCC();
  sub_25F17875C();

  v62 = v14;
  v30(v14, v32);
  v65 = v9;
  v33 = *(v9 + 11);
  v94 = *(v9 + 9);
  v95 = v33;
  v96 = *(v9 + 13);
  v97 = v9[15];
  v34 = v26;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for CanvasControlConfiguration(255, AssociatedTypeWitness, v35, v36);
  v85 = sub_25F17960C();
  v73 = *(v85 - 8);
  v37 = *(v73 + 2);
  v60[1] = v73 + 4;
  v61 = v37;
  v37(&v93, &v94, v85);
  sub_25F177FDC();
  v38 = v89;
  v39 = v76;
  (*(v89 + 16))(v88, v78, v76);
  v68(v87, v64, v86);
  sub_25F0BEC1C(v79, &v93);
  v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v41 = (v77 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v71 + v42 + 56) & ~v71;
  v44 = (v70 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v46 = v83;
  *(v45 + 16) = v34;
  *(v45 + 24) = v46;
  (*(v89 + 32))(v45 + v40, v88, v39);
  *(v45 + v41) = v80;
  v47 = v45 + v42;
  *(v47 + 48) = v97;
  v48 = v96;
  *(v47 + 16) = v95;
  *(v47 + 32) = v48;
  *v47 = v94;
  v75(v45 + v43, v87, v86);
  v49 = (v45 + v44);
  v50 = v82;
  *v49 = v81;
  v49[1] = v50;
  sub_25F0C0C84(&v93, v45 + ((v44 + 23) & 0xFFFFFFFFFFFFFFF8));
  v61(&v93, &v94, v85);
  v51 = swift_getAssociatedTypeWitness();
  v52 = v46;
  v53 = swift_getAssociatedTypeWitness();
  type metadata accessor for CanvasUpdateResult(0, v51, v53, AssociatedTypeWitness);

  v54 = v62;
  sub_25F1786AC();

  v55 = v84;
  v56 = v66;
  v66(v54, v84);

  sub_25F17860C();

  v57 = swift_allocObject();
  *(v57 + 16) = v34;
  *(v57 + 24) = v52;
  type metadata accessor for CanvasUpdateOutput(0);
  sub_25F177FCC();
  v58 = sub_25F1785EC();

  (*(v73 + 1))(&v94, v85);
  v56(v54, v55);
  return v58;
}

uint64_t sub_25F134D80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480F8, &qword_25F17F060);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_25F177D0C();
  v7 = sub_25F134E50(a1, a2, v6);
  sub_25F0B7E94(v6, &qword_27FD480F8, &qword_25F17F060);
  return v7 & 1;
}

uint64_t sub_25F134E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a3;
  v60 = a1;
  v47 = *v3;
  v5 = *(v47 + 80);
  v6 = sub_25F17960C();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v48 = &v43 - v8;
  v49 = *(v5 - 8);
  MEMORY[0x28223BE20](v7);
  v44 = &v43 - v9;
  v10 = sub_25F1774BC();
  v57 = *(v10 - 8);
  v58 = v10;
  MEMORY[0x28223BE20](v10);
  v56 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25F17757C();
  v53 = *(v12 - 8);
  v54 = v12;
  MEMORY[0x28223BE20](v12);
  v51 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480F8, &qword_25F17F060);
  MEMORY[0x28223BE20](v14 - 8);
  v52 = &v43 - v15;
  v16 = sub_25F177CBC();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v59 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v43 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v43 - v23;
  sub_25F177C9C();
  sub_25F13BE44(&qword_27FD48098, MEMORY[0x277D40C50], MEMORY[0x277D40C68]);
  v25 = a2;
  sub_25F1791FC();
  sub_25F1791FC();
  v50 = v5;
  if (v62 == v61)
  {
    v26 = 1;
  }

  else
  {
    v26 = sub_25F17983C();
  }

  v27 = *(v17 + 8);
  v27(v24, v16);

  if (v26)
  {
    sub_25F1372D4(v60);
LABEL_10:
    v30 = 1;
    return v30 & 1;
  }

  sub_25F177CAC();
  v28 = v25;
  sub_25F1791FC();
  sub_25F1791FC();
  if (v62 == v61)
  {
    v27(v22, v16);

LABEL_9:
    sub_25F137680(v60);
    goto LABEL_10;
  }

  v29 = sub_25F17983C();
  v27(v22, v16);

  if (v29)
  {
    goto LABEL_9;
  }

  v32 = v59;
  sub_25F177C8C();
  sub_25F1791FC();
  sub_25F1791FC();
  if (v62 == v61)
  {
    v27(v32, v16);

LABEL_15:
    v34 = v52;
    sub_25F0B7E2C(v55, v52, &qword_27FD480F8, &qword_25F17F060);
    v36 = v53;
    v35 = v54;
    if ((*(v53 + 48))(v34, 1, v54) != 1)
    {
      v37 = v51;
      (*(v36 + 32))(v51, v34, v35);
      *&v62 = 0x2D6C6C656873;
      *(&v62 + 1) = 0xE600000000000000;
      sub_25F13BE44(&qword_27FD48BC8, MEMORY[0x277D40810], MEMORY[0x277D40820]);
      v38 = sub_25F17980C();
      MEMORY[0x25F8D50D0](v38);

      (*(v36 + 8))(v37, v35);
    }

    sub_25F1777AC();
    (*(v57 + 16))(v56, v60, v58);
    sub_25F17779C();

    goto LABEL_10;
  }

  v33 = sub_25F17983C();
  v27(v32, v16);

  if (v33)
  {
    goto LABEL_15;
  }

  v39 = v48;
  sub_25F137120(v48);
  v41 = v49;
  v40 = v50;
  if ((*(v49 + 48))(v39, 1, v50) == 1)
  {
    (*(v45 + 8))(v39, v46);
    v30 = 0;
  }

  else
  {
    v42 = v44;
    (*(v41 + 32))(v44, v39, v40);
    v30 = (*(*(*(v47 + 88) + 16) + 32))(v60, v28, v40);
    (*(v41 + 8))(v42, v40);
  }

  return v30 & 1;
}

uint64_t sub_25F135640(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = type metadata accessor for PreviewAgentConnector(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = *(v4 + 80);
  v18[1] = sub_25F17873C();
  v12 = sub_25F17932C();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  sub_25F13BA58(a2, v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PreviewAgentConnector);
  v13 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v14[2] = v11;
  v15 = *(v4 + 88);
  v14[3] = v15;
  v14[4] = a1;
  sub_25F13BCD8(v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for PreviewAgentConnector);
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  *(v16 + 24) = v15;

  return sub_25F17870C();
}

uint64_t sub_25F1358C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_25F1358E4, 0, 0);
}

uint64_t sub_25F1358E4()
{
  sub_25F17930C();
  *(v0 + 40) = sub_25F1792FC();
  v2 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F135978, v2, v1);
}

uint64_t sub_25F135978()
{
  v1 = v0[3];

  v6 = (*(v1 + 32) + **(v1 + 32));
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_25F135A78;
  v3 = v0[4];
  v4 = v0[2];

  return v6(v4, v3);
}

uint64_t sub_25F135A78()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25F135B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v39 = a5;
  v40 = a8;
  v35 = a7;
  v36 = a6;
  v32 = a4;
  v30 = a3;
  v38 = a1;
  v43 = sub_25F177D7C();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v37 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_25F17960C();
  v34 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v33 = &v26 - v14;
  v15 = *(a10 + 16);
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v26 - v18;
  v20 = (*(v15 + 48))(a2, a9, v15);
  if (!v10)
  {
    v27 = v17;
    v28 = v16;
    v29 = v13;
    v42[0] = v30;
    MEMORY[0x28223BE20](v20);
    *(&v26 - 4) = a9;
    *(&v26 - 3) = a10;
    *(&v26 - 2) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48BC0, &unk_25F182350);
    v21 = v33;
    sub_25F100B94(sub_25F13B290, (&v26 - 6), MEMORY[0x277D84A98], AssociatedTypeWitness, v22, v33);
    v42[3] = a9;
    v42[4] = a10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
    (*(*(a9 - 8) + 16))(boxed_opaque_existential_1, v38, a9);
    v24 = v37;
    v36(v42);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    v16 = (*(a10 + 48))(v19, v21, v39, v24, v40, a9, a10);
    (*(v41 + 8))(v24, v43);
    (*(v34 + 8))(v21, v29);
    (*(v27 + 8))(v19, v28);
  }

  return v16;
}

uint64_t sub_25F135F9C@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *a2;
  v12 = a2[6];
  v46 = a2[4];
  v47 = v12;
  v13 = sub_25F17888C();
  v14 = MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11)
  {
    v44 = v15;
    v45 = v14;
    v48 = a4;
    v49 = a3;
    v18 = *a1;
    (a2[1])(*a1);
    if (!v5)
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      return (*(*(AssociatedTypeWitness - 8) + 56))(a5, 0, 1, AssociatedTypeWitness);
    }

    if (*(v18 + 16))
    {
      v42 = v5;
      v43 = a5;
      sub_25F17886C();

      v19 = swift_getAssociatedTypeWitness();
      type metadata accessor for CanvasControlConfiguration(255, v19, v20, v21);
      v22 = sub_25F17960C();
      v23 = *(v22 - 8);
      (*(v23 + 16))(v50, a2, v22);
      v24 = sub_25F17887C();
      v25 = sub_25F17953C();

      (*(v23 + 8))(a2, v22);
      v26 = v24;
      v41 = v25;
      if (os_log_type_enabled(v24, v25))
      {
        v27 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v52 = v40;
        *v27 = 136315394;
        v28 = sub_25F1774FC();
        v29 = MEMORY[0x25F8D51C0](v18, v28);
        v31 = sub_25F0BECF0(v29, v30, &v52);

        *(v27 + 4) = v31;
        *(v27 + 12) = 2080;
        v32 = *(a2 + 1);
        v50[0] = *a2;
        v50[1] = v32;
        v50[2] = *(a2 + 2);
        v51 = a2[6];

        v33 = sub_25F1790BC();
        v35 = sub_25F0BECF0(v33, v34, &v52);

        *(v27 + 14) = v35;
        _os_log_impl(&dword_25F0B3000, v26, v41, "Failed to decode state: %s, for configuration: %s", v27, 0x16u);
        v36 = v40;
        swift_arrayDestroy();
        MEMORY[0x25F8D6230](v36, -1, -1);
        MEMORY[0x25F8D6230](v27, -1, -1);
      }

      (*(v44 + 8))(v17, v45);
      a5 = v43;
    }

    else
    {
    }
  }

  v39 = swift_getAssociatedTypeWitness();
  return (*(*(v39 - 8) + 56))(a5, 1, 1, v39);
}

uint64_t sub_25F136420(uint64_t a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = swift_getAssociatedTypeWitness();
  v6 = swift_getAssociatedTypeWitness();
  v7 = a1 + *(type metadata accessor for CanvasUpdateResult(0, AssociatedTypeWitness, v5, v6) + 52);
  v8 = *(v7 + 48);
  v9 = a2[9];
  v10 = a2[10];
  v11 = a2[11];
  v12 = a2[12];
  v13 = a2[13];
  v14 = a2[14];
  v15 = a2[15];
  v16 = *(v7 + 16);
  *(a2 + 9) = *v7;
  *(a2 + 11) = v16;
  *(a2 + 13) = *(v7 + 32);
  a2[15] = v8;

  return sub_25F13B230(v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_25F1365A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  updated = type metadata accessor for CanvasUpdateResult(0, AssociatedTypeWitness, v9, v10);
  v12 = *(updated - 1);
  MEMORY[0x28223BE20](updated);
  v14 = &v30 - v13;
  v15 = *(a3 + 40);
  v33 = a4;
  v15(a1, a2, a3);
  v31 = updated[11];
  v16 = type metadata accessor for CanvasUpdateOutput(0);
  v17 = v16[5];
  v18 = sub_25F17719C();
  v19 = a4 + v17;
  v20 = v32;
  (*(*(v18 - 8) + 16))(v19, v32 + v31, v18);
  (*(v12 + 16))(v14, v20, updated);
  v21 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  (*(v12 + 32))(v22 + v21, v14, updated);
  v23 = updated[14];
  v24 = (v20 + updated[13]);
  v25 = *v24;
  v26 = v24[3];

  result = v26(v20 + v23);
  v28 = v33;
  v29 = (v33 + v16[6]);
  *v29 = sub_25F13B100;
  v29[1] = v22;
  *(v28 + v16[7]) = v25;
  *(v28 + v16[8]) = result;
  return result;
}

uint64_t sub_25F136828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_25F177FFC();
  v17 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedTypeWitness();
  updated = type metadata accessor for CanvasUpdateResult(0, AssociatedTypeWitness, v11, v12);
  (*(a1 + *(updated + 48)))();
  if (!v3)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    sub_25F177F8C();
    sub_25F1008A0(v11);
    a3 = sub_25F1785BC();

    (*(v17 + 8))(v9, v7);
  }

  return a3;
}

uint64_t sub_25F136A5C(uint64_t result)
{
  if (*(v1 + 136))
  {
    *(swift_allocObject() + 16) = result;

    sub_25F17860C();
  }

  return result;
}

uint64_t sub_25F136AF8(uint64_t a1, unsigned int a2)
{
  v32 = a2;
  v31 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480A8, &qword_25F17EFA0);
  v2 = *(v30 - 8);
  v28[1] = *(v2 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = v28 - v3;
  v4 = sub_25F17781C();
  MEMORY[0x28223BE20](v4);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F17888C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v28 - v12;
  sub_25F17886C();
  v14 = sub_25F17887C();
  v15 = sub_25F17955C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67240192;
    *(v16 + 4) = v32;
    _os_log_impl(&dword_25F0B3000, v14, v15, "Notifying host that crash occurred for %{public}d", v16, 8u);
    MEMORY[0x25F8D6230](v16, -1, -1);
  }

  v17 = *(v8 + 8);
  v17(v13, v7);
  *v6 = v32;
  v6[4] = 0;
  swift_storeEnumTagMultiPayload();
  v18 = v30;
  sub_25F17746C();
  sub_25F10297C(v6);
  sub_25F17886C();
  v19 = sub_25F17887C();
  v20 = sub_25F17955C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67240192;
    *(v21 + 4) = v32;
    _os_log_impl(&dword_25F0B3000, v19, v20, "Gathering crash details for %{public}d", v21, 8u);
    MEMORY[0x25F8D6230](v21, -1, -1);
  }

  v17(v11, v7);
  sub_25F176FCC();
  v22 = sub_25F176FBC();
  v23 = v32;
  sub_25F176F9C();

  v24 = v29;
  (*(v2 + 16))(v29, v31, v18);
  v25 = (*(v2 + 80) + 20) & ~*(v2 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  (*(v2 + 32))(v26 + v25, v24, v18);
  sub_25F17860C();
}

uint64_t sub_25F136EEC(uint64_t a1, int a2)
{
  v4 = sub_25F17781C();
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F17888C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17886C();
  v11 = sub_25F17887C();
  v12 = sub_25F17955C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67240192;
    *(v13 + 4) = a2;
    _os_log_impl(&dword_25F0B3000, v11, v12, "Sending host crash details for %{public}d", v13, 8u);
    MEMORY[0x25F8D6230](v13, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v14 = sub_25F177EAC();
  (*(*(v14 - 8) + 16))(v6, a1, v14);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480A8, &qword_25F17EFA0);
  sub_25F17746C();
  return sub_25F10297C(v6);
}

uint64_t sub_25F137120@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48090, &unk_25F17EF60);
  return sub_25F100B94(sub_25F13BE8C, v2, MEMORY[0x277D84A98], *(v4 + 80), v5, a1);
}

uint64_t sub_25F1371CC@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_25F17826C();
  v5 = *(v4 + 80);
  sub_25F17873C();
  sub_25F17900C();

  if (!v7)
  {
    return (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  }

  sub_25F17861C();
}

uint64_t sub_25F1372D4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_25F1774BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F17888C();
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17886C();

  v12 = sub_25F17887C();
  v13 = sub_25F17952C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = v14;
    v16 = swift_slowAlloc();
    v27[1] = v7;
    v17 = v16;
    v33 = v16;
    *v15 = 136315138;
    v30 = a1;

    v18 = sub_25F17992C();
    v29 = v5;
    v19 = v4;
    v21 = v20;

    v22 = sub_25F0BECF0(v18, v21, &v33);
    v4 = v19;
    v5 = v29;

    *(v15 + 4) = v22;
    a1 = v30;
    _os_log_impl(&dword_25F0B3000, v12, v13, "Received incoming control events message stream for %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x25F8D6230](v17, -1, -1);
    v23 = v15;
    v8 = v28;
    MEMORY[0x25F8D6230](v23, -1, -1);
  }

  else
  {
  }

  (*(v31 + 8))(v11, v32);
  sub_25F17780C();
  (*(v6 + 16))(v8, a1, v5);
  v24 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = *(v4 + 80);
  *(v25 + 3) = *(v4 + 88);
  *(v25 + 4) = v2;
  (*(v6 + 32))(&v25[v24], v8, v5);
  sub_25F13BE44(&qword_27FD48BD0, MEMORY[0x277D40A60], MEMORY[0x277D40A58]);

  sub_25F17745C();
}

uint64_t sub_25F137680(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25F17888C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17886C();

  v8 = sub_25F17887C();
  v9 = sub_25F17955C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = a1;
    v20 = v11;
    v12 = v11;
    *v10 = 136315138;

    v13 = sub_25F17992C();
    v15 = v14;

    v16 = sub_25F0BECF0(v13, v15, &v20);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_25F0B3000, v8, v9, "Received incoming remote events message stream for %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x25F8D6230](v12, -1, -1);
    MEMORY[0x25F8D6230](v10, -1, -1);
  }

  else
  {
  }

  (*(v5 + 8))(v7, v4);
  sub_25F17781C();
  sub_25F177B5C();
  sub_25F13BE44(&qword_27FD480A0, MEMORY[0x277D40AA8], MEMORY[0x277D40AA0]);
  sub_25F13BE44(&qword_27FD48BE0, MEMORY[0x277D40BC0], MEMORY[0x277D40BB8]);

  v17 = sub_25F17744C();

  *(v2 + 136) = v17;
}

uint64_t sub_25F13795C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v25 = *a3;
  v6 = sub_25F177B5C();
  v23 = *(v6 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD483D8, &qword_25F17F828);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = &v22 - v11;
  v24 = sub_25F177FFC();
  v13 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F177FDC();
  sub_25F0B7E2C(a2, v12, &qword_27FD483D8, &qword_25F17F828);
  v16 = MEMORY[0x277D40BC0];
  sub_25F13BA58(a1, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D40BC0]);
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = (v10 + *(v23 + 80) + v17) & ~*(v23 + 80);
  v19 = swift_allocObject();
  v20 = v25;
  *(v19 + 16) = *(v25 + 80);
  *(v19 + 24) = *(v20 + 88);
  sub_25F117154(v12, v19 + v17);
  sub_25F13BCD8(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, v16);
  *(v19 + ((v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;

  sub_25F177FEC();

  return (*(v13 + 8))(v15, v24);
}

void sub_25F137C44(uint64_t a1, size_t a2, const __CFData *a3)
{
  v116 = a3;
  Width = a2;
  v124 = a1;
  v3 = sub_25F177EAC();
  v119 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v111 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v113 = &v105 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v121 = &v105 - v9;
  MEMORY[0x28223BE20](v8);
  v120 = &v105 - v10;
  v112 = sub_25F17775C();
  v108 = *(v112 - 8);
  v11 = MEMORY[0x28223BE20](v112);
  v106 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v107 = &v105 - v14;
  MEMORY[0x28223BE20](v13);
  v110 = &v105 - v15;
  v16 = sub_25F17888C();
  v122 = *(v16 - 8);
  v123 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v114 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  Height = &v105 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v109 = &v105 - v22;
  MEMORY[0x28223BE20](v21);
  v115 = &v105 - v23;
  v24 = sub_25F177B5C();
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD483D8, &qword_25F17F828);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v105 - v28;
  v30 = sub_25F1774AC();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17930C();
  sub_25F1792FC();
  sub_25F1792EC();

  sub_25F0B7E2C(v124, v29, &qword_27FD483D8, &qword_25F17F828);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_25F0B7E94(v29, &qword_27FD483D8, &qword_25F17F828);
  }

  else
  {
    (*(v31 + 32))(v33, v29, v30);
    sub_25F13BA58(Width, v26, MEMORY[0x277D40BC0]);
    v34 = v119;
    v35 = (*(v119 + 48))(v26, 1, v3);
    v105 = v33;
    if (v35 == 1)
    {
      v36 = v115;
      sub_25F17884C();
      v37 = v116;

      v38 = sub_25F17887C();
      v39 = sub_25F17955C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v126[0] = v41;
        *v40 = 136315394;
        v42 = sub_25F17992C();
        v43 = v31;
        v45 = v44;

        v46 = sub_25F0BECF0(v42, v45, v126);

        *(v40 + 4) = v46;
        *(v40 + 12) = 2080;
        v125 = *(v37 + 1);
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD48BF8, &unk_25F182388);
        v47 = sub_25F1790BC();
        v49 = sub_25F0BECF0(v47, v48, v126);

        *(v40 + 14) = v49;
        v31 = v43;
        _os_log_impl(&dword_25F0B3000, v38, v39, "Received screenshot request %s, scene: %s", v40, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8D6230](v41, -1, -1);
        MEMORY[0x25F8D6230](v40, -1, -1);
      }

      else
      {
      }

      v61 = *(v122 + 8);
      v61(v36, v123);
      v62 = *(v37 + 3);
      ObjectType = swift_getObjectType();
      v72 = (*(*(v62 + 8) + 88))(ObjectType);
      v73 = CGImageGetDataProvider(v72);
      if (v73 && (v74 = v73, v75 = CGDataProviderCopyData(v73), v74, v75))
      {
        v124 = v31;
        v121 = v30;
        v76 = v75;
        v77 = MEMORY[0x25F8D2D50]();
        v119 = v78;
        v120 = v77;
        v116 = v76;

        Width = CGImageGetWidth(v72);
        Height = CGImageGetHeight(v72);
        CGImageGetBytesPerRow(v72);
        CGImageGetBitmapInfo(v72);
        CGImageGetBitsPerComponent(v72);
        CGImageGetBitsPerPixel(v72);
        v79 = CGImageGetColorSpace(v72);
        if (v79 && (v80 = v79, v81 = CGColorSpaceCopyName(v79), v80, v81))
        {
          sub_25F17908C();
        }

        else
        {
          sub_25F17908C();
        }

        v85 = v110;
        sub_25F17774C();
        v86 = v109;
        sub_25F17884C();
        v87 = v108;
        v88 = *(v108 + 16);
        v89 = v107;
        v90 = v112;
        v88(v107, v85, v112);
        v91 = sub_25F17887C();
        LODWORD(v120) = sub_25F17955C();
        if (os_log_type_enabled(v91, v120))
        {
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          *&v125 = v93;
          *v92 = 136315138;
          v88(v106, v89, v112);
          v94 = sub_25F1790BC();
          v96 = v95;
          v97 = v89;
          v98 = *(v87 + 8);
          v98(v97, v112);
          v99 = sub_25F0BECF0(v94, v96, &v125);

          *(v92 + 4) = v99;
          _os_log_impl(&dword_25F0B3000, v91, v120, "Responding to screenshot request with %s", v92, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v93);
          MEMORY[0x25F8D6230](v93, -1, -1);
          v100 = v92;
          v90 = v112;
          MEMORY[0x25F8D6230](v100, -1, -1);

          v101 = v109;
        }

        else
        {

          v102 = v89;
          v98 = *(v87 + 8);
          v98(v102, v90);
          v101 = v86;
        }

        v61(v101, v123);
        sub_25F13BE44(&qword_27FD48BF0, MEMORY[0x277D409F8], MEMORY[0x277D409F0]);
        v103 = v110;
        v104 = v105;
        sub_25F17748C();

        v98(v103, v90);
        (*(v124 + 8))(v104, v121);
      }

      else
      {
        (*(v31 + 8))(v105, v30);
      }
    }

    else
    {
      v50 = v3;
      v51 = v120;
      (*(v34 + 32))(v120, v26, v50);
      sub_25F17845C();
      sub_25F17844C();
      sub_25F177E9C();
      v52 = sub_25F17842C();

      if (v52)
      {
        sub_25F17809C();
        sub_25F17844C();
        sub_25F177E9C();
        sub_25F17841C();

        sub_25F17886C();
        v53 = v113;
        (*(v34 + 16))(v113, v51, v50);
        v54 = sub_25F17887C();
        v55 = sub_25F17955C();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v124 = v31;
          v57 = v56;
          *v56 = 67109120;
          v58 = sub_25F177E9C();
          v59 = *(v34 + 8);
          v59(v53, v50);
          *(v57 + 1) = v58;
          _os_log_impl(&dword_25F0B3000, v54, v55, "Responding to symbolication request with an augmented crash for pid: %d", v57, 8u);
          v60 = v57;
          v31 = v124;
          MEMORY[0x25F8D6230](v60, -1, -1);
        }

        else
        {
          v59 = *(v34 + 8);
          v59(v53, v50);
        }

        v82 = Height;
      }

      else
      {
        v64 = *(v34 + 16);
        v64(v121, v51, v50);
        sub_25F17886C();
        v65 = v111;
        v64(v111, v51, v50);
        v66 = sub_25F17887C();
        v67 = v34;
        v68 = v50;
        v69 = sub_25F17955C();
        if (os_log_type_enabled(v66, v69))
        {
          v70 = swift_slowAlloc();
          *v70 = 67109120;
          v71 = sub_25F177E9C();
          v59 = *(v67 + 8);
          v59(v65, v68);
          *(v70 + 4) = v71;
          _os_log_impl(&dword_25F0B3000, v66, v69, "Responding to symbolication request with an unaugmented crash for pid: %d. No matching symbol table found", v70, 8u);
          MEMORY[0x25F8D6230](v70, -1, -1);
        }

        else
        {
          v59 = *(v67 + 8);
          v59(v65, v68);
        }

        v50 = v68;

        v82 = v114;
      }

      (*(v122 + 8))(v82, v123);
      sub_25F13BE44(&qword_27FD48BE8, MEMORY[0x277D403F0], MEMORY[0x277D40CC0]);
      v83 = v121;
      v84 = v105;
      sub_25F17748C();
      v59(v83, v50);
      v59(v120, v50);
      (*(v31 + 8))(v84, v30);
    }
  }
}

uint64_t sub_25F138A30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v64 = a4;
  v56 = a2;
  v60 = *a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD483D8, &qword_25F17F828);
  v61 = *(v6 - 8);
  v57 = *(v61 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v63 = &v49[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v8 - 8);
  v62 = &v49[-v9];
  v10 = sub_25F17780C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v58 = v13;
  v59 = &v49[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v15 = &v49[-v14];
  v16 = sub_25F17888C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v49[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25F17886C();
  v65 = v11;
  v66 = v10;
  v20 = *(v11 + 16);
  v20(v15, a1, v10);
  swift_retain_n();
  v21 = sub_25F17887C();
  v22 = sub_25F17952C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v54 = v16;
    v24 = v23;
    v53 = swift_slowAlloc();
    v67 = v53;
    *v24 = 136315394;
    sub_25F13BE44(&qword_27FD48BD8, MEMORY[0x277D40A60], MEMORY[0x277D40A68]);
    v51 = v21;
    v50 = v22;
    v25 = v66;
    v26 = sub_25F17980C();
    v55 = a1;
    v52 = v17;
    v28 = v27;
    (*(v65 + 8))(v15, v25);
    v29 = sub_25F0BECF0(v26, v28, &v67);
    a1 = v55;

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    v30 = sub_25F17992C();
    v32 = v31;

    v33 = sub_25F0BECF0(v30, v32, &v67);

    *(v24 + 14) = v33;
    v34 = v51;
    _os_log_impl(&dword_25F0B3000, v51, v50, "Received '%s' via control events message stream for %s", v24, 0x16u);
    v35 = v53;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v35, -1, -1);
    MEMORY[0x25F8D6230](v24, -1, -1);

    (*(v52 + 8))(v19, v54);
  }

  else
  {

    (*(v65 + 8))(v15, v66);
    (*(v17 + 8))(v19, v16);
  }

  v36 = sub_25F17932C();
  v37 = v62;
  (*(*(v36 - 8) + 56))(v62, 1, 1, v36);
  v38 = v59;
  v39 = v66;
  v20(v59, a1, v66);
  v40 = v63;
  sub_25F0B7E2C(v56, v63, &qword_27FD483D8, &qword_25F17F828);
  sub_25F17930C();

  v41 = sub_25F1792FC();
  v42 = v65;
  v43 = (*(v65 + 80) + 56) & ~*(v65 + 80);
  v44 = (v58 + *(v61 + 80) + v43) & ~*(v61 + 80);
  v45 = swift_allocObject();
  v46 = MEMORY[0x277D85700];
  *(v45 + 2) = v41;
  *(v45 + 3) = v46;
  v47 = v60;
  *(v45 + 4) = *(v60 + 80);
  *(v45 + 5) = *(v47 + 88);
  *(v45 + 6) = a3;
  (*(v42 + 32))(&v45[v43], v38, v39);
  sub_25F117154(v40, &v45[v44]);
  sub_25F0CD9E8(0, 0, v37, &unk_25F182378, v45);
  sub_25F1774BC();
  sub_25F13BE44(&qword_27FD480D0, MEMORY[0x277D40750], MEMORY[0x277D40748]);

  sub_25F17802C();
}

uint64_t sub_25F1390CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD483D8, &qword_25F17F828);
  v6[6] = swift_task_alloc();
  v7 = sub_25F17780C();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  v8 = sub_25F17888C();
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();
  sub_25F17930C();
  v6[13] = sub_25F1792FC();
  v10 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F139280, v10, v9);
}

uint64_t sub_25F139280()
{
  v55 = v0;
  v1 = v0[2];

  v3 = v1[9];
  if (v3)
  {
    v5 = v1[14];
    v4 = v1[15];
    v6 = v1[13];
    v7 = v1[11];
    v50 = v1[10];
    v52 = v1[12];
    v9 = v0[3];
    v8 = v0[4];
    v10 = v0[2];
    v11 = *(v10 + 48);
    v12 = *(v10 + 56);

    v5(v9, v8, v11, v12);
    sub_25F13B230(v3, v50, v7, v52, v6, v5, v4);
  }

  else
  {
    type metadata accessor for CanvasBox.UnknownControlConfiguration(0, *(v0[5] + 80), *(v0[5] + 88), v2);
    swift_getWitnessTable();
    v13 = swift_allocError();
    swift_willThrow();
    v15 = v0[8];
    v14 = v0[9];
    v16 = v0[7];
    v17 = v0[3];
    sub_25F17886C();
    (*(v15 + 16))(v14, v17, v16);
    swift_retain_n();
    v18 = v13;
    v19 = sub_25F17887C();
    v20 = sub_25F17953C();

    v53 = v20;
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[11];
    v23 = v0[12];
    v24 = v0[9];
    v25 = v0[10];
    v27 = v0[7];
    v26 = v0[8];
    if (v21)
    {
      v47 = v19;
      v28 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v54[0] = v51;
      *v28 = 136446722;
      sub_25F13BE44(&qword_27FD48BD8, MEMORY[0x277D40A60], MEMORY[0x277D40A68]);
      v48 = v25;
      v49 = v23;
      v29 = sub_25F17980C();
      v31 = v30;
      (*(v26 + 8))(v24, v27);
      v32 = sub_25F0BECF0(v29, v31, v54);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      v33 = sub_25F17992C();
      v35 = v34;

      v36 = sub_25F0BECF0(v33, v35, v54);

      *(v28 + 14) = v36;
      *(v28 + 22) = 2112;
      v37 = v13;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 24) = v38;
      *v46 = v38;
      _os_log_impl(&dword_25F0B3000, v47, v53, "Error handling control event '%{public}s' for %{public}s: %@", v28, 0x20u);
      sub_25F0B7E94(v46, &qword_27FD473D0, &unk_25F17C540);
      MEMORY[0x25F8D6230](v46, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x25F8D6230](v51, -1, -1);
      MEMORY[0x25F8D6230](v28, -1, -1);

      (*(v22 + 8))(v49, v48);
    }

    else
    {

      (*(v26 + 8))(v24, v27);
      (*(v22 + 8))(v23, v25);
    }

    v39 = v0[6];
    sub_25F0B7E2C(v0[4], v39, &qword_27FD483D8, &qword_25F17F828);
    v40 = sub_25F1774AC();
    v41 = *(v40 - 8);
    v42 = (*(v41 + 48))(v39, 1, v40);
    v43 = v0[6];
    if (v42 == 1)
    {

      sub_25F0B7E94(v43, &qword_27FD483D8, &qword_25F17F828);
    }

    else
    {
      sub_25F17747C();

      (*(v41 + 8))(v43, v40);
    }
  }

  v44 = v0[1];

  return v44();
}

uint64_t sub_25F1397AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A0810](a1, WitnessTable);
}

uint64_t sub_25F139800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A07F0](a1, WitnessTable);
}

uint64_t *sub_25F139854()
{
  swift_unknownObjectRelease();

  sub_25F13B230(v0[9], v0[10], v0[11], v0[12], v0[13], v0[14], v0[15]);

  return v0;
}

uint64_t sub_25F1398A8()
{
  sub_25F139854();

  return swift_deallocClassInstance();
}

uint64_t sub_25F1398DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_25F133E08(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t type metadata accessor for CanvasUpdateOutput(uint64_t a1)
{
  result = qword_27FD48B18;
  if (!qword_27FD48B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of static CanvasContentProvider.create(for:in:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 56) + **(a7 + 56));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_25F0BF3E4;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

unint64_t sub_25F139BD8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_25F17719C();
    if (v4 <= 0x3F)
    {
      result = sub_25F105150();
      if (v7 <= 0x3F)
      {
        result = type metadata accessor for CanvasControlConfiguration(319, *(a1 + 32), v5, v6);
        if (v8 <= 0x3F)
        {
          result = swift_checkMetadataState();
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_25F139CB4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(sub_25F17719C() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(a3 + 32);
  v14 = *(v13 - 8);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  v17 = *(v14 + 80);
  if (v12 <= *(v14 + 84))
  {
    v12 = *(v14 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v7 + 64) + v15;
  v20 = v16 + 7;
  v21 = v17 + 56;
  if (a2 <= v18)
  {
    goto LABEL_33;
  }

  v22 = ((v21 + ((((v20 + (v19 & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + *(v14 + 64);
  v23 = 8 * v22;
  if (v22 > 3)
  {
    goto LABEL_12;
  }

  v26 = ((a2 - v18 + ~(-1 << v23)) >> v23) + 1;
  if (HIWORD(v26))
  {
    v24 = *(a1 + v22);
    if (v24)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v26 <= 0xFF)
    {
      if (v26 < 2)
      {
        goto LABEL_33;
      }

LABEL_12:
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_33;
      }

LABEL_20:
      v27 = (v24 - 1) << v23;
      if (v22 > 3)
      {
        v27 = 0;
      }

      if (v22)
      {
        if (v22 <= 3)
        {
          v28 = ((v21 + ((((v20 + (v19 & ~v15)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v17) + *(v14 + 64);
        }

        else
        {
          v28 = 4;
        }

        if (v28 > 2)
        {
          if (v28 == 3)
          {
            v29 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v29 = *a1;
          }
        }

        else if (v28 == 1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *a1;
        }
      }

      else
      {
        v29 = 0;
      }

      return v18 + (v29 | v27) + 1;
    }

    v24 = *(a1 + v22);
    if (*(a1 + v22))
    {
      goto LABEL_20;
    }
  }

LABEL_33:
  if (v8 == v18)
  {
    v30 = *(v7 + 48);
    v31 = a1;
    v32 = v8;
    v13 = v6;
LABEL_35:

    return v30(v31, v32, v13);
  }

  v33 = (a1 + v19) & ~v15;
  if (v11 == v18)
  {
    v34 = *(v10 + 48);

    return v34(v33);
  }

  else
  {
    v35 = ((v20 + v33) & 0xFFFFFFFFFFFFFFF8);
    if ((v12 & 0x80000000) != 0)
    {
      v30 = *(v14 + 48);
      v31 = ((v21 + ((v35 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v17);
      v32 = *(v14 + 84);
      goto LABEL_35;
    }

    v36 = *v35;
    if (*v35 >= 0xFFFFFFFF)
    {
      LODWORD(v36) = -1;
    }

    return (v36 + 1);
  }
}

void sub_25F139FFC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(sub_25F17719C() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = *(a4 + 32);
  v16 = *(v15 - 8);
  v17 = *(v16 + 84);
  v18 = *(v9 + 64);
  v19 = *(v11 + 80);
  v20 = *(v11 + 64);
  v21 = *(v16 + 80);
  if (v14 <= v17)
  {
    v22 = *(v16 + 84);
  }

  else
  {
    v22 = v14;
  }

  if (v22 <= 0x7FFFFFFF)
  {
    v23 = 0x7FFFFFFF;
  }

  else
  {
    v23 = v22;
  }

  v24 = ((v21 + 56 + ((((v20 + 7 + ((v18 + v19) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v21) + *(v16 + 64);
  if (a3 <= v23)
  {
    v25 = 0;
  }

  else if (v24 <= 3)
  {
    v28 = ((a3 - v23 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
    if (HIWORD(v28))
    {
      v25 = 4;
    }

    else
    {
      if (v28 < 0x100)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }

      if (v28 >= 2)
      {
        v25 = v29;
      }

      else
      {
        v25 = 0;
      }
    }
  }

  else
  {
    v25 = 1;
  }

  if (v23 < a2)
  {
    v26 = ~v23 + a2;
    if (v24 < 4)
    {
      v27 = (v26 >> (8 * v24)) + 1;
      if (v24)
      {
        v30 = v26 & ~(-1 << (8 * v24));
        bzero(a1, v24);
        if (v24 != 3)
        {
          if (v24 == 2)
          {
            *a1 = v30;
            if (v25 > 1)
            {
LABEL_57:
              if (v25 == 2)
              {
                *&a1[v24] = v27;
              }

              else
              {
                *&a1[v24] = v27;
              }

              return;
            }
          }

          else
          {
            *a1 = v26;
            if (v25 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v30;
        a1[2] = BYTE2(v30);
      }

      if (v25 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v24);
      *a1 = v26;
      v27 = 1;
      if (v25 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v25)
    {
      a1[v24] = v27;
    }

    return;
  }

  if (v25 > 1)
  {
    if (v25 != 2)
    {
      *&a1[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v24] = 0;
  }

  else if (v25)
  {
    a1[v24] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v10 == v23)
  {
    v31 = *(v9 + 56);
    v32 = a1;
    v33 = a2;
    v34 = v10;
    v15 = v8;
LABEL_39:

    v31(v32, v33, v34, v15);
    return;
  }

  v35 = &a1[v18 + v19] & ~v19;
  if (v13 != v23)
  {
    v37 = ((v20 + 7 + v35) & 0xFFFFFFFFFFFFFFF8);
    if ((v22 & 0x80000000) == 0)
    {
      if ((a2 & 0x80000000) != 0)
      {
        *v37 = a2 & 0x7FFFFFFF;
        v37[1] = 0;
      }

      else
      {
        *v37 = (a2 - 1);
      }

      return;
    }

    v31 = *(v16 + 56);
    v32 = ((v21 + 56 + ((v37 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v21);
    v33 = a2;
    v34 = v17;
    goto LABEL_39;
  }

  v36 = *(v12 + 56);

  v36(v35, a2);
}

uint64_t sub_25F13A460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F177F8C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_25F17719C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_25F13A580(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25F177F8C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_25F17719C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_25F13A688(uint64_t a1)
{
  sub_25F177F8C();
  if (v1 <= 0x3F)
  {
    sub_25F17719C();
    if (v2 <= 0x3F)
    {
      sub_25F105150();
      if (v3 <= 0x3F)
      {
        sub_25F13A78C(319, &qword_27FD48B28, MEMORY[0x277D40B88]);
        if (v4 <= 0x3F)
        {
          sub_25F13A78C(319, qword_27FD48B30, MEMORY[0x277D40758]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_25F13A78C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25F1792BC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25F13A878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F13A8CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480A8, &qword_25F17EFA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 20) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F13A960(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480A8, &qword_25F17EFA0);
  v3 = *(v1 + 16);

  return sub_25F136EEC(a1, v3);
}

uint64_t sub_25F13A9E0(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_25F13AA18(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_25F13AAA4(uint64_t a1, uint64_t a2)
{
  sub_25F177D2C();

  return sub_25F134D80(a1, a2);
}

uint64_t sub_25F13AB54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(v2 + 16);
  *(a2 + 24) = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  v5 = *(*(v7 - 8) + 16);

  return v5(boxed_opaque_existential_1, a1);
}

uint64_t sub_25F13ABD0()
{
  v1 = sub_25F177F8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_25F177D2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v12 = *(v7 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  v9 = (v5 + v8 + 56) & ~v8;
  v10 = (((v12 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v7 + 8))(v0 + v9, v6);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v10));

  return MEMORY[0x2821FE8E8](v0, v10 + 40, v3 | v8 | 7);
}

uint64_t sub_25F13AD94(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_25F177F8C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_25F177D2C() - 8);
  v10 = (v8 + *(v9 + 80) + 56) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_25F135B6C(a1, v1 + v6, *(v1 + v7), v1 + v8, v1 + v10, *(v1 + v11), *(v1 + v11 + 8), v1 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8), v3, v4);
}

uint64_t sub_25F13AF00()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = swift_getAssociatedTypeWitness();
  v3 = swift_getAssociatedTypeWitness();
  v4 = (type metadata accessor for CanvasUpdateResult(0, AssociatedTypeWitness, v2, v3) - 8);
  v5 = *(*v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(*v4 + 64);
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v6, AssociatedTypeWitness);
  v8 = v4[13];
  v9 = sub_25F17719C();
  (*(*(v9 - 8) + 8))(v0 + v6 + v8, v9);

  (*(*(v3 - 8) + 8))(v0 + v6 + v4[16], v3);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t sub_25F13B100()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = swift_getAssociatedTypeWitness();
  v5 = swift_getAssociatedTypeWitness();
  v6 = *(type metadata accessor for CanvasUpdateResult(0, AssociatedTypeWitness, v4, v5) - 8);
  return sub_25F136828(v0 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v1, v2);
}

uint64_t sub_25F13B230(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25F13B2B4()
{
  v1 = (type metadata accessor for PreviewAgentConnector(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_25F17767C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25F13B43C(uint64_t a1)
{
  v4 = *(type metadata accessor for PreviewAgentConnector(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F0C10CC;

  return sub_25F1358C0(a1, v6, v1 + v5);
}

uint64_t objectdestroy_13Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_25F13B678(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_25F1774BC() - 8);
  v6 = *(v2 + 32);
  v7 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_25F138A30(a1, a2, v6, v7);
}

uint64_t sub_25F13B6FC()
{
  v1 = sub_25F17780C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD483D8, &qword_25F17F828) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_25F1774AC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_25F13B8A8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_25F17780C() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD483D8, &qword_25F17F828) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[6];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_25F0BF3E4;

  return sub_25F1390CC(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_25F13BA58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F13BAC0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD483D8, &qword_25F17F828) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(sub_25F177B5C() - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_25F1774AC();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = sub_25F177EAC();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v7, 1, v11))
  {
    (*(v12 + 8))(v0 + v7, v11);
  }

  return MEMORY[0x2821FE8E8](v0, ((v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v6 | 7);
}

uint64_t sub_25F13BCD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_25F13BD40()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD483D8, &qword_25F17F828) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_25F177B5C() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_25F137C44(v0 + v2, v0 + v5, v6);
}

uint64_t sub_25F13BE44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25F13BEAC()
{
  v1 = sub_25F1776AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_25F13BF48(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(sub_25F1776AC() - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = (v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_25F0C10CC;

  return sub_25F134034(a1, a2, v2 + v9, v11, v12, v6, v7);
}

uint64_t sub_25F13C080()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F13C0B8()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(ObjectType, v1);
}

uint64_t Agent.agentBundle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
  v4 = *(type metadata accessor for BatchIdentity(0) + 20);
  v5 = sub_25F17767C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_25F13C224(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_25F17767C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F13C2EC, 0, 0);
}

uint64_t sub_25F13C2EC()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = v5[5];
  v17 = v5[4];
  v18 = v0[2];
  v7 = v5[3];
  v8 = OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
  v9 = type metadata accessor for BatchIdentity(0);
  (*(v4 + 16))(v2, v7 + v8 + *(v9 + 20), v3);
  v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v11 = (v1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[8] = v12;
  *(v12 + 16) = v5;
  (*(v4 + 32))(v12 + v10, v2, v3);
  *(v12 + v11) = v18;
  v13 = (v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v13 = v17;
  v13[1] = v6;

  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_25F13C4A4;
  v15 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2821A0D70](v14, sub_25F14A5C8, v12, v15);
}

uint64_t sub_25F13C4A4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_25F13C638;
  }

  else
  {
    v2 = sub_25F13C5D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F13C5D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F13C638()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_25F13C69C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v65 = a5;
  v61 = a4;
  v10 = sub_25F1787BC();
  v63 = *(v10 - 8);
  v64 = v10;
  MEMORY[0x28223BE20](v10);
  v62 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25F1787FC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25F17888C();
  MEMORY[0x28223BE20](v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[8];
  if (v20)
  {
    v59 = v17;
    v60 = v15;
    v21 = a1[11];
    v22 = a1[12];
    v23 = a1[9];
    v24 = a1[10];
    v68 = a1[7];
    v69 = v20;
    v70 = v23;
    *&v71 = v24;
    *(&v71 + 1) = v21;
    v72 = v22;

    sub_25F13CD90(a3);
    if (v6)
    {
      v58 = v13;
      sub_25F17885C();

      v25 = v6;
      v26 = sub_25F17887C();
      v27 = sub_25F17953C();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v57 = v12;
        v30 = v29;
        v31 = swift_slowAlloc();
        v66[0] = v31;
        *v28 = 136446466;
        *(v28 + 4) = sub_25F0BECF0(v61, v65, v66);
        *(v28 + 12) = 2112;
        v32 = v6;
        v33 = _swift_stdlib_bridgeErrorToNSError();
        *(v28 + 14) = v33;
        *v30 = v33;
        _os_log_impl(&dword_25F0B3000, v26, v27, "%{public}s: Failed loading target descriptions: %@", v28, 0x16u);
        sub_25F0B7E94(v30, &qword_27FD473D0, &unk_25F17C540);
        v34 = v30;
        v12 = v57;
        MEMORY[0x25F8D6230](v34, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x25F8D6230](v31, -1, -1);
        MEMORY[0x25F8D6230](v28, -1, -1);
      }

      (*(v59 + 8))(v19, v16);
      v73 = a1[14];

      v35 = v62;
      sub_25F1787CC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD487C8, &qword_25F1827F0);
      sub_25F0B7D00(&qword_27FD487D0, &qword_27FD487C8, &qword_25F1827F0, MEMORY[0x277D40588]);
      sub_25F17856C();
      (*(v63 + 8))(v35, v64);

      v36 = v60;
      sub_25F1787DC();
      v37 = v6;
      sub_25F148850(&qword_27FD487D8, MEMORY[0x277D40580], MEMORY[0x277D40578]);
      sub_25F1781BC();

      (*(v58 + 8))(v36, v12);
      v38 = v67;
      v39 = __swift_project_boxed_opaque_existential_1(v66, v67);
      v40 = *(v38 - 8);
      MEMORY[0x28223BE20](v39);
      v42 = &v56 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v40 + 16))(v42);
      if (sub_25F17981C())
      {
        (*(v40 + 8))(v42, v38);
      }

      else
      {
        swift_allocError();
        (*(v40 + 32))(v55, v42, v38);
      }

      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1Tm(v66);
    }

    else
    {
      v46 = v69;
      v47 = v70;
      v48 = v72;
      v49 = a1[7];
      v50 = a1[8];
      v51 = a1[9];
      v52 = a1[10];
      v53 = a1[11];
      v54 = a1[12];
      a1[7] = v68;
      a1[8] = v46;
      a1[9] = v47;
      *(a1 + 5) = v71;
      a1[12] = v48;
      sub_25F11D8DC(v49, v50, v51, v52, v53, v54);
    }
  }

  else
  {
    type metadata accessor for PreviewsJITLinker.InvalidatedError(0);
    sub_25F148850(&qword_27FD487E0, type metadata accessor for PreviewsJITLinker.InvalidatedError, &unk_25F182018);
    swift_allocError();
    v44 = v43;
    v45 = sub_25F17767C();
    (*(*(v45 - 8) + 16))(v44, a2, v45);
    swift_willThrow();
  }
}

uint64_t sub_25F13CD90(uint64_t a1)
{
  v127 = a1;
  v136 = sub_25F178B1C();
  v126 = *(v136 - 8);
  v2 = MEMORY[0x28223BE20](v136);
  v125 = v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v129 = v118 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48708, &qword_25F180728);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v132 = v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v135 = v118 - v8;
  v141 = sub_25F1779DC();
  v124 = *(v141 - 1);
  v9 = MEMORY[0x28223BE20](v141);
  v128 = v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v137 = v118 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v118[0] = v118 - v14;
  MEMORY[0x28223BE20](v13);
  v134 = v118 - v15;
  v140 = sub_25F17888C();
  v138 = *(v140 - 1);
  MEMORY[0x28223BE20](v140);
  v130 = v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_25F17835C();
  isa = v133[-1].isa;
  MEMORY[0x28223BE20](v133);
  v19 = v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD487B0, &unk_25F180760);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v118 - v21;
  v23 = sub_25F177FBC();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *v1;
  v27 = v1[1];
  v131 = v1;
  v118[1] = sub_25F1782EC();
  sub_25F1782DC();
  v120 = v24;
  v29 = v24;
  v30 = v127;
  v31 = *(v29 + 56);
  v121 = v23;
  v31(v22, 1, 1, v23);
  sub_25F17833C();
  v119 = v26;
  v32 = v130;
  v123 = v28;
  sub_25F1782CC();

  (*(isa + 1))(v19, v133);
  sub_25F0B7E94(v22, &qword_27FD487B0, &unk_25F180760);
  sub_25F17885C();
  v144 = v30;

  v33 = sub_25F17887C();
  v34 = sub_25F17952C();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    v143[0] = v133;
    *v35 = 136446466;
    *(v35 + 4) = sub_25F0BECF0(v123, v27, v143);
    *(v35 + 12) = 2082;
    LODWORD(v123) = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48D78, &qword_25F1827F8);
    sub_25F0B7D00(&qword_27FD48D80, &qword_27FD48D78, &qword_25F1827F8, MEMORY[0x277D83988]);
    sub_25F1794DC();
    v36 = sub_25F1794CC();
    v38 = v37;

    v39 = sub_25F0BECF0(v36, v38, v143);

    *(v35 + 14) = v39;
    _os_log_impl(&dword_25F0B3000, v33, v123, "%{public}s: Loading %{public}s", v35, 0x16u);
    v40 = v133;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v40, -1, -1);
    MEMORY[0x25F8D6230](v35, -1, -1);
  }

  else
  {
  }

  (*(v138 + 8))(v32, v140);
  v41 = sub_25F0ED6C8(MEMORY[0x277D84F90]);
  v144 = v41;
  v42 = v134;
  v133 = *(v30 + 16);
  if (!v133)
  {
LABEL_24:
    v138 = v124 + 16;
    v71 = (v124 + 56);
    v143[0] = MEMORY[0x277D84F90];
    v72 = (v124 + 48);
    v73 = (v124 + 32);
    v74 = (v124 + 8);
    v140 = (v126 + 8);

    v75 = 0;
    while (1)
    {
      v76 = v132;
      if (v75 == v133)
      {
        v77 = 1;
        v75 = v133;
      }

      else
      {
        if (v75 >= v133)
        {
          goto LABEL_49;
        }

        (*(v124 + 16))(v135, v127 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v75, v141);
        v69 = __OFADD__(v75, 1);
        v75 = (v75 + 1);
        if (v69)
        {
          goto LABEL_50;
        }

        v77 = 0;
      }

      v78 = v135;
      v79 = v141;
      (*v71)(v135, v77, 1, v141);
      sub_25F130B48(v78, v76);
      if ((*v72)(v76, 1, v79) == 1)
      {
        break;
      }

      v80 = v128;
      (*v73)(v128, v76, v79);
      v81 = sub_25F17793C();
      v83 = v82;
      (*v74)(v80, v79);
      v84 = v129;
      v85 = v139;
      sub_25F127E88(v81, v83, &v144, v143, v129);
      v139 = v85;
      if (v85)
      {

        goto LABEL_40;
      }

      (*v140)(v84, v136);
    }

    v86 = v143[0];
    v87 = v143[0][2].isa;
    if (v87)
    {
      v142 = MEMORY[0x277D84F90];
      sub_25F0C97D8(0, v87, 0);
      v141 = *(v126 + 16);
      v88 = v142;
      v89 = v86 + ((*(v126 + 80) + 32) & ~*(v126 + 80));
      v126 += 16;
      v138 = *(v126 + 56);
      do
      {
        v90 = v125;
        v91 = v136;
        (v141)(v125, v89, v136);
        v92 = sub_25F178B0C();
        v94 = v93;
        (*v140)(v90, v91);
        v142 = v88;
        v96 = *(v88 + 16);
        v95 = *(v88 + 24);
        if (v96 >= v95 >> 1)
        {
          sub_25F0C97D8((v95 > 1), v96 + 1, 1);
          v88 = v142;
        }

        *(v88 + 16) = v96 + 1;
        v97 = v88 + 16 * v96;
        *(v97 + 32) = v92;
        *(v97 + 40) = v94;
        v89 += v138;
        v87 = (v87 - 1);
      }

      while (v87);
    }

    else
    {

      v88 = MEMORY[0x277D84F90];
    }

    v111 = v139;
    sub_25F12A358(v88);
    v108 = v121;
    v109 = v120;
    v110 = v119;
    if (v111)
    {
    }

    else
    {

      v116 = v144;
      if (v144[2].isa)
      {
        sub_25F1307BC(v113, v114, v115);
        swift_allocError();
        *v117 = v116;
        swift_willThrow();
      }

      else
      {
      }
    }

    goto LABEL_44;
  }

  v43 = v41;
  v138 = *(v124 + 16);
  v44 = v127 + ((*(v124 + 80) + 32) & ~*(v124 + 80));
  v123 = (v124 + 32);
  v45 = *(v124 + 72);
  v130 = (v124 + 8);
  v140 = (v124 + 16);
  v122 = (v124 + 40);
  v46 = v133;
  (v138)(v134, v44, v141);
  while (1)
  {
    v48 = sub_25F17793C();
    if (v43[2].isa)
    {
      break;
    }

LABEL_13:
    v53 = sub_25F17793C();
    v55 = v54;
    (v138)(v137, v42, v141);
    v56 = v144;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v143[0] = v56;
    v59 = sub_25F0C8D24(v53, v55);
    v60 = v56[2].isa;
    v61 = (v58 & 1) == 0;
    v62 = v60 + v61;
    if (__OFADD__(v60, v61))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      result = sub_25F17985C();
      __break(1u);
      return result;
    }

    v63 = v58;
    if (v56[3].isa >= v62)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v58)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_25F1706A4();
        if (v63)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      sub_25F16C3E8(v62, isUniquelyReferenced_nonNull_native);
      v64 = sub_25F0C8D24(v53, v55);
      if ((v63 & 1) != (v65 & 1))
      {
        goto LABEL_52;
      }

      v59 = v64;
      if (v63)
      {
LABEL_6:

        v43 = v143[0];
        v47 = v141;
        (*v122)(v143[0][7].isa + v59 * v45, v137, v141);
        v42 = v134;
        (*v130)(v134, v47);
        goto LABEL_7;
      }
    }

    v43 = v143[0];
    v143[0][(v59 >> 6) + 8].isa = (v143[0][(v59 >> 6) + 8].isa | (1 << v59));
    v66 = (v43[6].isa + 16 * v59);
    *v66 = v53;
    v66[1] = v55;
    v67 = v141;
    (*v123)(v43[7].isa + v59 * v45, v137, v141);
    v42 = v134;
    (*v130)(v134, v67);
    v68 = v43[2].isa;
    v69 = __OFADD__(v68, 1);
    v70 = (v68 + 1);
    if (v69)
    {
      goto LABEL_51;
    }

    v43[2].isa = v70;
LABEL_7:
    v144 = v43;
    v44 += v45;
    v46 = (v46 - 1);
    if (!v46)
    {
      goto LABEL_24;
    }

    (v138)(v42, v44, v141);
  }

  v50 = sub_25F0C8D24(v48, v49);
  v52 = v51;

  if ((v52 & 1) == 0)
  {
    goto LABEL_13;
  }

  v98 = v43[7].isa + v50 * v45;
  v99 = v118[0];
  v100 = v141;
  v101 = v138;
  (v138)(v118[0], v98, v141);
  v139 = sub_25F17793C();
  v103 = v102;
  v104 = type metadata accessor for PreviewsJITLinkerState.TargetDescriptionWithDuplicateInstallNameEncountered(0);
  sub_25F148850(&qword_27FD487C0, type metadata accessor for PreviewsJITLinkerState.TargetDescriptionWithDuplicateInstallNameEncountered, &unk_25F181F98);
  swift_allocError();
  v106 = v105;
  *v105 = v139;
  v105[1] = v103;
  v101(v105 + *(v104 + 20), v99, v100);
  v101(v106 + *(v104 + 24), v42, v100);
  swift_willThrow();
  v107 = *v130;
  (*v130)(v99, v100);
  v107(v42, v100);

LABEL_40:
  v108 = v121;
  v109 = v120;
  v110 = v119;
LABEL_44:
  sub_25F1782DC();
  sub_25F1782BC();

  return (*(v109 + 8))(v110, v108);
}

uint64_t sub_25F13DBC0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F177E8C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BatchIdentity.workspaceID.getter()
{
  v1 = *v0;

  return v1;
}

void BatchIdentity.workspaceID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t BatchIdentity.agentBundle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BatchIdentity(0) + 20);
  v4 = sub_25F17767C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BatchIdentity.agentBundle.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BatchIdentity(0) + 20);
  v4 = sub_25F17767C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BatchIdentity.agentRole.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BatchIdentity(0) + 24);
  v4 = sub_25F17773C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BatchIdentity.agentRole.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BatchIdentity(0) + 24);
  v4 = sub_25F17773C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BatchIdentity.agentProcessType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BatchIdentity(0) + 28);
  v4 = sub_25F17722C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BatchIdentity.agentProcessType.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BatchIdentity(0) + 28);
  v4 = sub_25F17722C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BatchIdentity.agentBootstrapMode.setter(char a1)
{
  result = type metadata accessor for BatchIdentity(0);
  *(v1 + *(result + 32)) = a1 & 1;
  return result;
}

uint64_t BatchIdentity.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_25F17769C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = sub_25F1773BC();
  a3[1] = v10;
  sub_25F1773CC();
  v11 = type metadata accessor for BatchIdentity(0);
  sub_25F17768C();
  (*(v7 + 8))(v9, v6);
  sub_25F1773FC();
  sub_25F1773AC();
  v12 = sub_25F1773DC();
  v13 = sub_25F17741C();
  (*(*(v13 - 8) + 8))(a1, v13);
  *(a3 + *(v11 + 32)) = v12 & 1;
  return sub_25F149EDC(a2, a3 + *(v11 + 36), MEMORY[0x277D406A0]);
}

uint64_t BatchIdentity.hash(into:)(uint64_t a1)
{
  sub_25F17911C();
  type metadata accessor for BatchIdentity(0);
  sub_25F17767C();
  sub_25F148850(&qword_27FD48C80, MEMORY[0x277D408A0], MEMORY[0x277D408A8]);
  sub_25F17902C();
  sub_25F17773C();
  sub_25F148850(&qword_27FD48C88, MEMORY[0x277D409D0], MEMORY[0x277D409D8]);
  sub_25F17902C();
  sub_25F17722C();
  sub_25F148850(&qword_27FD471F0, MEMORY[0x277D406E8], MEMORY[0x277D406F0]);
  v1 = sub_25F17902C();
  sub_25F148898(v1, v2, v3);
  sub_25F17902C();
  sub_25F1771BC();
  sub_25F148850(&qword_27FD48C98, MEMORY[0x277D406A0], MEMORY[0x277D406A8]);
  return sub_25F17902C();
}

uint64_t BatchIdentity.hashValue.getter()
{
  sub_25F1798CC();
  sub_25F17911C();
  type metadata accessor for BatchIdentity(0);
  sub_25F17767C();
  sub_25F148850(&qword_27FD48C80, MEMORY[0x277D408A0], MEMORY[0x277D408A8]);
  sub_25F17902C();
  sub_25F17773C();
  sub_25F148850(&qword_27FD48C88, MEMORY[0x277D409D0], MEMORY[0x277D409D8]);
  sub_25F17902C();
  sub_25F17722C();
  sub_25F148850(&qword_27FD471F0, MEMORY[0x277D406E8], MEMORY[0x277D406F0]);
  v0 = sub_25F17902C();
  sub_25F148898(v0, v1, v2);
  sub_25F17902C();
  sub_25F1771BC();
  sub_25F148850(&qword_27FD48C98, MEMORY[0x277D406A0], MEMORY[0x277D406A8]);
  sub_25F17902C();
  return sub_25F17990C();
}

uint64_t sub_25F13E744(uint64_t a1)
{
  sub_25F17911C();
  sub_25F17767C();
  sub_25F148850(&qword_27FD48C80, MEMORY[0x277D408A0], MEMORY[0x277D408A8]);
  sub_25F17902C();
  sub_25F17773C();
  sub_25F148850(&qword_27FD48C88, MEMORY[0x277D409D0], MEMORY[0x277D409D8]);
  sub_25F17902C();
  sub_25F17722C();
  sub_25F148850(&qword_27FD471F0, MEMORY[0x277D406E8], MEMORY[0x277D406F0]);
  v1 = sub_25F17902C();
  sub_25F148898(v1, v2, v3);
  sub_25F17902C();
  sub_25F1771BC();
  sub_25F148850(&qword_27FD48C98, MEMORY[0x277D406A0], MEMORY[0x277D406A8]);
  return sub_25F17902C();
}

uint64_t sub_25F13E914(uint64_t a1)
{
  sub_25F1798CC();
  sub_25F17911C();
  sub_25F17767C();
  sub_25F148850(&qword_27FD48C80, MEMORY[0x277D408A0], MEMORY[0x277D408A8]);
  sub_25F17902C();
  sub_25F17773C();
  sub_25F148850(&qword_27FD48C88, MEMORY[0x277D409D0], MEMORY[0x277D409D8]);
  sub_25F17902C();
  sub_25F17722C();
  sub_25F148850(&qword_27FD471F0, MEMORY[0x277D406E8], MEMORY[0x277D406F0]);
  v1 = sub_25F17902C();
  sub_25F148898(v1, v2, v3);
  sub_25F17902C();
  sub_25F1771BC();
  sub_25F148850(&qword_27FD48C98, MEMORY[0x277D406A0], MEMORY[0x277D406A8]);
  sub_25F17902C();
  return sub_25F17990C();
}

uint64_t Agent.jitBootstrapConnectionIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier);
  a1[1] = v2;
}

uint64_t Agent.jitBootstrapAgentServer.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapAgentServer + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapAgentServer);
  a1[1] = v2;
}

unint64_t Agent.pid.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48188, &qword_25F182550);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v10 - v1;
  sub_25F17861C();
  v3 = type metadata accessor for Process(0);
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  if (v4 == 1)
  {
    sub_25F0B7E94(v2, &qword_27FD48188, &qword_25F182550);
    v5 = 0;
  }

  else
  {
    v6 = &v2[*(v3 + 24)];
    v7 = *(v6 + 1);
    v10[0] = *v6;
    v10[1] = v7;
    v11 = v6[32];
    v8 = sub_25F177CDC();
    sub_25F1489A4(v2, type metadata accessor for Process);
    v5 = v8;
  }

  return v5 | ((v4 == 1) << 32);
}

uint64_t Agent.deviceType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
  v4 = type metadata accessor for BatchIdentity(0);
  return sub_25F1488EC(v3 + *(v4 + 36), a1, MEMORY[0x277D406A0]);
}

uint64_t Agent.__allocating_init(launcher:batchIdentity:jitBootstrapAgentServer:jitBootstrapTimeout:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v30 = a5;
  v28 = a2;
  v29 = a4;
  *&v26 = a3;
  v27 = a1;
  v5 = sub_25F177FFC();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F176DFC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  sub_25F1782AC();
  swift_allocObject();
  *(v12 + 16) = sub_25F17829C();
  sub_25F177E7C();
  v13 = (v12 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier);
  sub_25F176DEC();
  v14 = sub_25F176DDC();
  v16 = v15;
  v17 = *(v9 + 8);
  v26 = *v26;
  v17(v11, v8);
  *v13 = v14;
  v13[1] = v16;
  v18 = OBJC_IVAR____TtC15PreviewShellKit5Agent_processFuture;
  v19 = OBJC_IVAR____TtC15PreviewShellKit5Agent_processPromise;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD481A8, qword_25F17F300);
  *(v12 + v18) = sub_25F17867C();
  *(v12 + v19) = v20;
  v21 = OBJC_IVAR____TtC15PreviewShellKit5Agent_updates;
  *(v12 + v21) = sub_25F0ED8B4(MEMORY[0x277D84F90]);
  v22 = v27;
  sub_25F0BEC1C(v27, v12 + OBJC_IVAR____TtC15PreviewShellKit5Agent_launcher);
  v23 = v28;
  sub_25F1488EC(v28, v12 + OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity, type metadata accessor for BatchIdentity);
  *(v12 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapAgentServer) = v26;
  v24 = v12 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapTimeout;
  *v24 = v29;
  *(v24 + 8) = v30 & 1;
  v33 = v12;
  sub_25F177FDC();
  sub_25F148850(&qword_27FD47EA0, type metadata accessor for Agent, &protocol conformance descriptor for Agent);

  sub_25F17801C();

  (*(v31 + 8))(v7, v32);

  sub_25F17860C();

  sub_25F1489A4(v23, type metadata accessor for BatchIdentity);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  return v12;
}

void *Agent.init(launcher:batchIdentity:jitBootstrapAgentServer:jitBootstrapTimeout:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v30 = a5;
  v28 = a2;
  v29 = a4;
  *&v26 = a3;
  v27 = a1;
  v32 = *v5;
  v33 = sub_25F177FFC();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F176DFC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F1782AC();
  swift_allocObject();
  v5[2] = sub_25F17829C();
  sub_25F177E7C();
  v13 = (v5 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier);
  sub_25F176DEC();
  v14 = sub_25F176DDC();
  v16 = v15;
  v17 = *(v10 + 8);
  v26 = *v26;
  v17(v12, v9);
  *v13 = v14;
  v13[1] = v16;
  v18 = OBJC_IVAR____TtC15PreviewShellKit5Agent_processFuture;
  v19 = OBJC_IVAR____TtC15PreviewShellKit5Agent_processPromise;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD481A8, qword_25F17F300);
  *(v6 + v18) = sub_25F17867C();
  *(v6 + v19) = v20;
  v21 = OBJC_IVAR____TtC15PreviewShellKit5Agent_updates;
  *(v6 + v21) = sub_25F0ED8B4(MEMORY[0x277D84F90]);
  v22 = v27;
  sub_25F0BEC1C(v27, v6 + OBJC_IVAR____TtC15PreviewShellKit5Agent_launcher);
  v23 = v28;
  sub_25F1488EC(v28, v6 + OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity, type metadata accessor for BatchIdentity);
  *(v6 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapAgentServer) = v26;
  v24 = v6 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapTimeout;
  *v24 = v29;
  v24[8] = v30 & 1;
  v34 = v6;
  sub_25F177FDC();
  sub_25F148850(&qword_27FD47EA0, type metadata accessor for Agent, &protocol conformance descriptor for Agent);

  sub_25F17801C();

  (*(v31 + 8))(v8, v33);

  sub_25F17860C();

  sub_25F1489A4(v23, type metadata accessor for BatchIdentity);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  return v6;
}

void sub_25F13F568(uint64_t a1)
{
  v2 = type metadata accessor for Agent.Update(0);
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48D90, &qword_25F182810);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - v7;
  v9 = sub_25F17888C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17884C();

  v13 = sub_25F17887C();
  v14 = sub_25F17955C();

  LODWORD(v53) = v14;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v52 = v10;
    v16 = v15;
    v48 = swift_slowAlloc();
    v54[0] = v48;
    *v16 = 136315394;
    type metadata accessor for BatchIdentity(0);
    v49 = v9;
    sub_25F17767C();
    v47 = v5;
    sub_25F148850(&qword_27FD47EC0, MEMORY[0x277D408A0], MEMORY[0x277D408B0]);
    v17 = sub_25F17980C();
    v19 = sub_25F0BECF0(v17, v18, v54);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    sub_25F17863C();
    sub_25F0B7D00(&qword_27FD48D98, &qword_27FD48D90, &qword_25F182810, MEMORY[0x277D403F8]);
    v20 = v47;
    v21 = sub_25F17980C();
    v23 = v22;
    (*(v6 + 8))(v8, v20);
    v24 = sub_25F0BECF0(v21, v23, v54);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_25F0B3000, v13, v53, "agent (%s invalidated with current process future state %s", v16, 0x16u);
    v25 = v48;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v25, -1, -1);
    MEMORY[0x25F8D6230](v16, -1, -1);

    (*(v52 + 8))(v12, v49);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v26 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/OS/PreviewShell/Sources/PreviewShellKit/Process.swift";
  v27 = "init(launcher:batchIdentity:jitBootstrapAgentServer:jitBootstrapTimeout:)";
  sub_25F17866C();
  v28 = OBJC_IVAR____TtC15PreviewShellKit5Agent_updates;
  swift_beginAccess();
  v29 = *(a1 + v28);
  v30 = *(v29 + 64);
  v48 = v29 + 64;
  v31 = 1 << *(v29 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v30;
  v47 = (v31 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v34 = 0;
  v49 = v29;
  while (v33)
  {
LABEL_12:
    v36 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v37 = *(v29 + 56);
    v38 = (v34 << 9) | (8 * v36);
    v39 = *(v37 + v38);
    v40 = *(v39 + 16);
    if (v40)
    {
      v52 = *(v37 + v38);
      v53 = v33;
      v41 = v50;
      v42 = v39 + ((*(v50 + 80) + 32) & ~*(v50 + 80));

      v43 = v27;
      v44 = v4;
      v45 = v26;
      v46 = *(v41 + 72);
      do
      {
        sub_25F1488EC(v42, v44, type metadata accessor for Agent.Update);
        sub_25F17866C();
        sub_25F1489A4(v44, type metadata accessor for Agent.Update);
        v42 += v46;
        --v40;
      }

      while (v40);

      v26 = v45;
      v4 = v44;
      v27 = v43;
      v29 = v49;
      v33 = v53;
    }
  }

  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v35 >= v47)
    {

      return;
    }

    v33 = *(v48 + 8 * v35);
    ++v34;
    if (v33)
    {
      v34 = v35;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_25F13FB54(uint64_t a1, void *a2)
{
  v60 = *a2;
  v61 = a2;
  v3 = sub_25F1780FC();
  v67 = *(v3 - 8);
  v68 = v3;
  MEMORY[0x28223BE20](v3);
  v73 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Process(0);
  v6 = MEMORY[0x28223BE20](v5);
  v66 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v62 = &v60 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v60 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v60 - v13;
  v70 = sub_25F17888C();
  v15 = *(v70 - 8);
  v16 = MEMORY[0x28223BE20](v70);
  v64 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v72 = &v60 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v60 - v20;
  sub_25F17884C();
  sub_25F1488EC(a1, v14, type metadata accessor for Process);
  v65 = a1;
  sub_25F1488EC(a1, v12, type metadata accessor for Process);
  v22 = sub_25F17887C();
  v23 = sub_25F17955C();
  v24 = os_log_type_enabled(v22, v23);
  v69 = v5;
  v63 = v15;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *&v74 = v71;
    *v25 = 136446466;
    sub_25F177E8C();
    sub_25F148850(&qword_27FD481A0, MEMORY[0x277D403A8], MEMORY[0x277D403C0]);
    v26 = sub_25F17980C();
    v28 = v27;
    sub_25F1489A4(v14, type metadata accessor for Process);
    v29 = sub_25F0BECF0(v26, v28, &v74);
    v5 = v69;

    *(v25 + 4) = v29;
    *(v25 + 12) = 1026;
    v30 = &v12[*(v5 + 24)];
    v31 = *(v30 + 1);
    v89 = *v30;
    v90 = v31;
    v91 = v30[32];
    LODWORD(v29) = sub_25F177CDC();
    v15 = v63;
    sub_25F1489A4(v12, type metadata accessor for Process);
    *(v25 + 14) = v29;
    _os_log_impl(&dword_25F0B3000, v22, v23, "Taking active preview assertion for %{public}s with pid %{public}d", v25, 0x12u);
    v32 = v71;
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    MEMORY[0x25F8D6230](v32, -1, -1);
    MEMORY[0x25F8D6230](v25, -1, -1);
  }

  else
  {
    sub_25F1489A4(v12, type metadata accessor for Process);

    sub_25F1489A4(v14, type metadata accessor for Process);
  }

  v33 = v70;
  v71 = *(v15 + 8);
  (v71)(v21, v70);
  v70 = sub_25F1770AC();
  sub_25F17709C();
  v34 = v65;
  v35 = v65 + *(v5 + 24);
  v88 = *(v35 + 32);
  v36 = *(v35 + 16);
  v86 = *v35;
  v87 = v36;
  sub_25F177CDC();
  sub_25F17706C();

  *(&v75 + 1) = v60;
  v76 = sub_25F148850(&qword_27FD47EA0, type metadata accessor for Agent, &protocol conformance descriptor for Agent);
  *&v74 = v61;

  sub_25F1780DC();
  __swift_destroy_boxed_opaque_existential_1Tm(&v74);
  sub_25F17884C();
  v37 = v62;
  sub_25F1488EC(v34, v62, type metadata accessor for Process);
  v38 = sub_25F17887C();
  v39 = sub_25F17952C();
  v40 = os_log_type_enabled(v38, v39);
  v41 = v66;
  if (v40)
  {
    v42 = v33;
    v43 = swift_slowAlloc();
    *v43 = 67240192;
    v44 = v37 + *(v69 + 24);
    LOBYTE(v76) = *(v44 + 32);
    v45 = *(v44 + 16);
    v74 = *v44;
    v75 = v45;
    v46 = sub_25F177CDC();
    sub_25F1489A4(v37, type metadata accessor for Process);
    *(v43 + 4) = v46;
    _os_log_impl(&dword_25F0B3000, v38, v39, "Taking subordinate process assertion for pid %{public}d", v43, 8u);
    v47 = v43;
    v33 = v42;
    MEMORY[0x25F8D6230](v47, -1, -1);
  }

  else
  {
    sub_25F1489A4(v37, type metadata accessor for Process);
  }

  (v71)(v72, v33);
  sub_25F17709C();
  v48 = *(v35 + 16);
  v83 = *v35;
  v84 = v48;
  v85 = *(v35 + 32);
  sub_25F177CDC();
  sub_25F17707C();

  v49 = v64;
  sub_25F17884C();
  sub_25F1488EC(v34, v41, type metadata accessor for Process);
  v50 = sub_25F17887C();
  v51 = sub_25F17952C();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = v33;
    v53 = swift_slowAlloc();
    *v53 = 67240192;
    v54 = v41 + *(v69 + 24);
    v82 = *(v54 + 32);
    v55 = *(v54 + 16);
    v80 = *v54;
    v81 = v55;
    v56 = sub_25F177CDC();
    sub_25F1489A4(v41, type metadata accessor for Process);
    *(v53 + 4) = v56;
    _os_log_impl(&dword_25F0B3000, v50, v51, "Taking frontboard visibility assertion for pid %{public}d", v53, 8u);
    v57 = v53;
    v33 = v52;
    MEMORY[0x25F8D6230](v57, -1, -1);
  }

  else
  {
    sub_25F1489A4(v41, type metadata accessor for Process);
  }

  (v71)(v49, v33);
  sub_25F17709C();
  v58 = *(v35 + 16);
  v77 = *v35;
  v78 = v58;
  v79 = *(v35 + 32);
  sub_25F177CDC();
  sub_25F17708C();

  return (*(v67 + 8))(v73, v68);
}

uint64_t Agent.description.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48188, &qword_25F182550);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v11 - v1;
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  sub_25F1796DC();
  v12 = v13;
  MEMORY[0x25F8D50D0](0x6920746E6567413CLL, 0xEB00000000203A64);
  sub_25F177E8C();
  sub_25F148850(&qword_27FD481A0, MEMORY[0x277D403A8], MEMORY[0x277D403C0]);
  v3 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v3);

  MEMORY[0x25F8D50D0](0x203A646970202CLL, 0xE700000000000000);
  sub_25F17861C();
  v4 = type metadata accessor for Process(0);
  if ((*(*(v4 - 8) + 48))(v2, 1, v4) == 1)
  {
    sub_25F0B7E94(v2, &qword_27FD48188, &qword_25F182550);
    v5 = -1;
  }

  else
  {
    v6 = &v2[*(v4 + 24)];
    v7 = *(v6 + 1);
    v13 = *v6;
    v14 = v7;
    v15 = v6[32];
    v5 = sub_25F177CDC();
    sub_25F1489A4(v2, type metadata accessor for Process);
  }

  v11[3] = v5;
  v8 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v8);

  MEMORY[0x25F8D50D0](0xD000000000000010, 0x800000025F186E30);
  type metadata accessor for BatchIdentity(0);
  sub_25F17767C();
  sub_25F148850(&qword_27FD47EC0, MEMORY[0x277D408A0], MEMORY[0x277D408B0]);
  v9 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v9);

  MEMORY[0x25F8D50D0](0x3A65707974202C27, 0xEA00000000002720);
  sub_25F1771BC();
  sub_25F17976C();
  MEMORY[0x25F8D50D0](15911, 0xE200000000000000);
  return v12;
}

uint64_t Agent.launch(with:killing:)(uint64_t a1, uint64_t a2)
{
  v122 = a2;
  v128 = a1;
  v125 = sub_25F177FFC();
  v3 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v5 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_25F17741C();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v118 = v6;
  v119 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v7 - 8);
  v126 = &v114 - v8;
  v9 = sub_25F17888C();
  v10 = *(v9 - 8);
  v131 = v9;
  v132 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v130 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  *&v129 = &v114 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v114 - v15;
  type metadata accessor for BatchIdentity(0);
  sub_25F17884C();

  v17 = sub_25F17887C();
  v18 = sub_25F17955C();
  v127 = v2;

  v19 = os_log_type_enabled(v17, v18);
  v123 = v5;
  v124 = v3;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v134 = v21;
    *v20 = 136446466;
    v22 = sub_25F177B4C();
    v24 = sub_25F0BECF0(v22, v23, &v134);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    sub_25F17767C();
    sub_25F148850(&qword_27FD47EC0, MEMORY[0x277D408A0], MEMORY[0x277D408B0]);
    v25 = sub_25F17980C();
    v27 = sub_25F0BECF0(v25, v26, &v134);

    *(v20 + 14) = v27;
    _os_log_impl(&dword_25F0B3000, v17, v18, "Preparing to launch agent in %{public}s mode: %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v21, -1, -1);
    MEMORY[0x25F8D6230](v20, -1, -1);
  }

  v133 = *(v132 + 8);
  v133(v16, v131);
  v28 = sub_25F17739C();
  v29 = v130;
  if (*(v28 + 16) && (v30 = sub_25F0C8D24(0xD000000000000024, 0x800000025F186E50), (v31 & 1) != 0))
  {
    v32 = (*(v28 + 56) + 16 * v30);
    v33 = *v32;
    v34 = v32[1];
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  v134 = v33;
  v135 = v34;
  MEMORY[0x28223BE20](v35);
  v112 = &v134;
  v36 = sub_25F1480DC(sub_25F148A04, &v110, &unk_287150ED8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486D0, &qword_25F1806F0);
  swift_arrayDestroy();

  v37 = sub_25F17739C();
  v38 = *(v37 + 16);
  v117 = v36;
  if (v38 && (v39 = sub_25F0C8D24(0xD00000000000001ELL, 0x800000025F186E80), (v40 & 1) != 0))
  {
    v41 = (*(v37 + 56) + 16 * v39);
    v43 = *v41;
    v42 = v41[1];
  }

  else
  {
    v43 = 0;
    v42 = 0;
  }

  v134 = v43;
  v135 = v42;
  MEMORY[0x28223BE20](v44);
  v112 = &v134;
  v45 = sub_25F1480DC(sub_25F14AA54, &v110, &unk_287150F18);
  swift_arrayDestroy();

  v46 = sub_25F17739C();
  v47 = *(v46 + 16);
  v116 = v45;
  if (v47 && (v48 = sub_25F0C8D24(0xD000000000000020, 0x800000025F186EA0), (v49 & 1) != 0))
  {
    v50 = (*(v46 + 56) + 16 * v48);
    v51 = *v50;
    v52 = v50[1];
  }

  else
  {
    v51 = 0;
    v52 = 0;
  }

  v134 = v51;
  v135 = v52;
  MEMORY[0x28223BE20](v53);
  v112 = &v134;
  v54 = sub_25F1480DC(sub_25F14AA54, &v110, &unk_287150F58);
  swift_arrayDestroy();

  if (v54)
  {
    v55 = v129;
    sub_25F17884C();
    v56 = sub_25F17887C();
    v57 = sub_25F17951C();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_25F0B3000, v56, v57, "Logging shell environment:", v58, 2u);
      MEMORY[0x25F8D6230](v58, -1, -1);
    }

    v132 += 8;
    v133(v55, v131);
    v59 = [objc_opt_self() processInfo];
    v60 = [v59 environment];

    v61 = sub_25F178FDC();
    v62 = *(v61 + 16);
    if (v62)
    {
      v63 = sub_25F1475B8(*(v61 + 16), 0);
      v64 = sub_25F148378(&v134, v63 + 4, v62, v61);
      v65 = v134;
      v66 = v136;

      sub_25F0C03C0(v65);
      if (v64 != v62)
      {
        __break(1u);

        __break(1u);
        return result;
      }

      v29 = v130;
    }

    else
    {
      v63 = MEMORY[0x277D84F90];
    }

    v134 = v63;
    sub_25F14768C(&v134);

    v115 = v134;
    v68 = *(v134 + 2);
    v69 = v131;
    if (v68)
    {
      v70 = (v115 + 56);
      *&v67 = 136315394;
      v129 = v67;
      do
      {
        v71 = *(v70 - 3);
        v72 = *(v70 - 2);
        v74 = *(v70 - 1);
        v73 = *v70;

        sub_25F17884C();

        v75 = sub_25F17887C();
        v76 = sub_25F17951C();

        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v134 = v78;
          *v77 = v129;
          v79 = sub_25F0BECF0(v71, v72, &v134);

          *(v77 + 4) = v79;
          *(v77 + 12) = 2080;
          v80 = sub_25F0BECF0(v74, v73, &v134);

          *(v77 + 14) = v80;
          _os_log_impl(&dword_25F0B3000, v75, v76, "    %s: %s", v77, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x25F8D6230](v78, -1, -1);
          v81 = v77;
          v29 = v130;
          v69 = v131;
          MEMORY[0x25F8D6230](v81, -1, -1);
        }

        else
        {
        }

        v133(v29, v69);
        v70 += 4;
        --v68;
      }

      while (v68);
    }
  }

  if (*(sub_25F17739C() + 16))
  {
    sub_25F0C8D24(0xD00000000000002BLL, 0x800000025F186ED0);
    if (v82)
    {

      sub_25F17830C();
    }
  }

  type metadata accessor for LegacyPidPromiseFuture();
  v83 = swift_allocObject();
  v134 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48CC0, &qword_25F182568);
  v84 = sub_25F17883C();
  *(v83 + 16) = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48CC8, &qword_25F182570);

  v111 = sub_25F148A48;
  v112 = v84;
  LOBYTE(v110) = 2;
  v85 = sub_25F1786BC();

  *(v83 + 24) = v85;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48CD0, &qword_25F182578);
  *&v129 = sub_25F17932C();
  v86 = *(v129 - 8);
  v130 = *(v86 + 56);
  v131 = v86 + 56;
  (v130)(v126, 1, 1, v129);
  v87 = v120;
  v115 = *(v120 + 16);
  v88 = v119;
  v89 = v121;
  (v115)(v119, v128, v121);
  v90 = *(v87 + 80);
  v91 = v118;
  v92 = swift_allocObject();
  v93 = v127;
  *(v92 + 16) = v127;
  *(v92 + 24) = v83;
  v133 = v83;
  v120 = *(v87 + 32);
  (v120)(v92 + ((v90 + 32) & ~v90), v88, v89);

  v112 = nullsub_1;
  v113 = 0;
  v110 = &unk_25F182588;
  v111 = v92;
  v94 = v126;
  v132 = sub_25F17870C();
  (v130)(v94, 1, 1, v129);
  (v115)(v88, v128, v89);
  v95 = (v90 + 24) & ~v90;
  v96 = swift_allocObject();
  *(v96 + 16) = v133;
  (v120)(v96 + v95, v88, v89);
  v97 = v96 + ((v91 + v95 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v97 = v93;
  *(v97 + 8) = (v117 & 1) == 0;
  *(v97 + 9) = v116 & 1;
  v98 = swift_allocObject();
  *(v98 + 16) = &unk_25F182598;
  *(v98 + 24) = v96;

  v111 = v98;
  v112 = (MEMORY[0x277D84F78] + 8);
  v110 = &unk_25F1825A8;
  v99 = sub_25F17865C();
  v130 = v99;

  sub_25F0B7E94(v94, &qword_27FD46BB0, &qword_25F17AF30);
  v100 = v123;
  sub_25F177FDC();
  v101 = swift_allocObject();
  v102 = v122;
  *(v101 + 16) = v93;
  *(v101 + 24) = v102;
  v103 = swift_allocObject();
  *(v103 + 16) = sub_25F148F60;
  *(v103 + 24) = v101;
  v104 = type metadata accessor for Process(0);

  v111 = v103;
  v112 = v104;
  v110 = sub_25F148F68;
  v105 = sub_25F17864C();
  v131 = v105;

  v106 = v125;
  v107 = *(v124 + 8);
  v107(v100, v125);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D60, &qword_25F180310);
  v111 = v99;
  v112 = v105;
  LOBYTE(v110) = 2;
  sub_25F17871C();
  sub_25F177FCC();
  v111 = 0;
  v112 = v104;
  v110 = sub_25F144094;
  sub_25F1785BC();

  v107(v100, v106);
  sub_25F177FCC();
  sub_25F17875C();
  v107(v100, v106);

  sub_25F1785DC();

  sub_25F177FCC();
  v111 = 0;
  v112 = MEMORY[0x277D40CB0];
  v110 = sub_25F1442FC;
  v108 = sub_25F1785BC();

  v107(v100, v106);
  return v108;
}

uint64_t sub_25F1417FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48D60, &qword_25F1827E0) + 48);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25F0C10CC;

  return sub_25F1418D8(a1, a1 + v8, a3, a4);
}

uint64_t sub_25F1418D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = sub_25F17888C();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v7 = sub_25F17767C();
  v5[20] = v7;
  v5[21] = *(v7 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F141A20, 0, 0);
}

uint64_t sub_25F141A20(uint64_t a1)
{
  v65 = v1;
  v2 = v1[14];
  v3 = sub_25F17739C();
  v4 = OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
  v1[24] = OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
  v5 = v2 + v4;
  v6 = type metadata accessor for BatchIdentity(0);
  v7 = v6;
  v1[25] = v6;
  v58 = v1[23];
  v60 = v1[22];
  v9 = v1[20];
  v8 = v1[21];
  if (*(v5 + *(v6 + 32)) == 1)
  {
    v10 = v1[14];
    v12 = *(v10 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier);
    v11 = *(v10 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier + 8);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = v3;
    sub_25F16F150(v12, v11, 0xD000000000000029, 0x800000025F1870D0, isUniquelyReferenced_nonNull_native);
    v1[26] = v3;
    v14 = *(v8 + 16);
    v14(v58, v5 + *(v7 + 20), v9);
    sub_25F17885C();
    v14(v60, v58, v9);

    v15 = sub_25F17887C();
    v16 = sub_25F17952C();

    v17 = os_log_type_enabled(v15, v16);
    v19 = v1[21];
    v18 = v1[22];
    v20 = v1[19];
    v21 = v1[20];
    v22 = &unk_27FD52000;
    v24 = v1[15];
    v23 = v1[16];
    if (v17)
    {
      v62 = v1[19];
      v25 = v1[14];
      v61 = v1[15];
      v26 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v64 = v59;
      *v26 = 136446466;
      sub_25F0BEC1C(v25 + OBJC_IVAR____TtC15PreviewShellKit5Agent_launcher, (v1 + 2));
      __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
      DynamicType = swift_getDynamicType();
      v28 = v1[6];
      __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);
      v1[7] = DynamicType;
      v1[8] = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48D88, &qword_25F182808);
      v29 = sub_25F1790BC();
      v31 = sub_25F0BECF0(v29, v30, &v64);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      sub_25F148850(&qword_27FD47EC0, MEMORY[0x277D408A0], MEMORY[0x277D408B0]);
      v32 = sub_25F17980C();
      v34 = v33;
      v35 = v21;
      v36 = v15;
      v37 = v16;
      v38 = *(v19 + 8);
      v38(v18, v35);
      v39 = sub_25F0BECF0(v32, v34, &v64);
      v22 = &unk_27FD52000;

      *(v26 + 14) = v39;
      _os_log_impl(&dword_25F0B3000, v36, v37, "Asking for launcher %{public}s for bootstrap method of: %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8D6230](v59, -1, -1);
      MEMORY[0x25F8D6230](v26, -1, -1);

      v40 = *(v23 + 8);
      v40(v62, v61);
    }

    else
    {

      v38 = *(v19 + 8);
      v38(v18, v21);
      v40 = *(v23 + 8);
      v40(v20, v24);
    }

    v1[27] = v40;
    v1[28] = v38;
    v52 = (v1[14] + v22[230]);
    v53 = v52[3];
    v54 = v52[4];
    __swift_project_boxed_opaque_existential_1(v52, v53);
    v63 = (*(v54 + 24) + **(v54 + 24));
    v55 = swift_task_alloc();
    v1[29] = v55;
    *v55 = v1;
    v55[1] = sub_25F142000;
    v56 = v1[23];

    return v63(v1 + 9, v56, v53, v54);
  }

  else
  {
    v41 = v1[10];
    v57 = v1[11];
    v42 = v1[14] + v4;
    v43 = *(v6 + 20);
    v44 = type metadata accessor for PreviewAgentLaunchConfiguration(0);
    (*(v8 + 16))(v41 + v44[9], v42 + v43, v9);
    v45 = *(v7 + 24);
    v46 = sub_25F17773C();
    (*(*(v46 - 8) + 16))(v41, v42 + v45, v46);
    sub_25F17737C();
    v47 = sub_25F17740C();
    v48 = (v41 + v44[5]);
    *v48 = 0xD00000000000004FLL;
    v48[1] = 0x800000025F183FC0;
    *(v41 + v44[7]) = v3;
    *(v41 + v44[8]) = v47;
    v49 = (v41 + v44[10]);
    *v49 = sub_25F144340;
    v49[1] = 0;
    *v57 = 1;

    v50 = v1[1];

    return v50();
  }
}

uint64_t sub_25F142000()
{
  *(*v1 + 240) = v0;

  if (v0)
  {

    v2 = sub_25F1424F8;
  }

  else
  {
    v2 = sub_25F14211C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F14211C(uint64_t a1)
{
  v2 = v1[9];
  v43 = v2;
  if (v2)
  {
    v39 = v2;
    sub_25F17885C();
    v3 = sub_25F17887C();
    v4 = sub_25F17952C();
    v5 = os_log_type_enabled(v3, v4);
    v7 = v1[27];
    v6 = v1[28];
    v40 = v1[23];
    v8 = v1[20];
    v9 = v1[18];
    v10 = v1[15];
    if (v5)
    {
      v38 = v1[28];
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_25F0B3000, v3, v4, "Bootstrap method is running board identity", v11, 2u);
      MEMORY[0x25F8D6230](v11, -1, -1);

      v7(v9, v10);
      v38(v40, v8);
    }

    else
    {

      v7(v9, v10);
      v6(v40, v8);
    }

    v20 = 0;
    v21 = sub_25F144360;
  }

  else
  {
    sub_25F17885C();
    v12 = sub_25F17887C();
    v13 = sub_25F17952C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_25F0B3000, v12, v13, "Bootstrap method is legacy pid", v14, 2u);
      MEMORY[0x25F8D6230](v14, -1, -1);
    }

    v15 = v1[27];
    v41 = v1[28];
    v16 = v1[23];
    v17 = v1[20];
    v18 = v1[17];
    v19 = v1[15];

    v15(v18, v19);
    v41(v16, v17);
    swift_retain_n();
    v20 = v1[12];
    v21 = sub_25F14A674;
  }

  v22 = v1[25];
  v37 = v1[26];
  v23 = v1[21];
  v24 = v1[20];
  v42 = v21;
  v25 = v1[10];
  v36 = v1[11];
  v26 = v1[14] + v1[24];
  v27 = *(v22 + 20);
  v28 = type metadata accessor for PreviewAgentLaunchConfiguration(0);
  (*(v23 + 16))(v25 + v28[9], v26 + v27, v24);
  v29 = *(v22 + 24);
  v30 = sub_25F17773C();
  (*(*(v30 - 8) + 16))(v25, v26 + v29, v30);
  sub_25F17737C();
  v31 = sub_25F17740C();

  v32 = (v25 + v28[5]);
  *v32 = 0xD00000000000004FLL;
  v32[1] = 0x800000025F183FC0;
  *(v25 + v28[7]) = v37;
  *(v25 + v28[8]) = v31;
  v33 = (v25 + v28[10]);
  *v33 = v42;
  v33[1] = v20;
  *v36 = v43;

  v34 = v1[1];

  return v34();
}

uint64_t sub_25F1424F8()
{
  (*(v0 + 224))(*(v0 + 184), *(v0 + 160));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F1425B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v7 + 33) = a7;
  *(v7 + 27) = a6;
  *(v7 + 56) = a4;
  *(v7 + 64) = a5;
  *(v7 + 48) = a3;
  v9 = sub_25F17741C();
  *(v7 + 72) = v9;
  *(v7 + 80) = *(v9 - 8);
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();
  v10 = sub_25F17888C();
  *(v7 + 104) = v10;
  *(v7 + 112) = *(v10 - 8);
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();
  v11 = swift_task_alloc();
  v12 = *a2;
  *(v7 + 144) = v11;
  *(v7 + 152) = v12;

  return MEMORY[0x2822009F8](sub_25F142714, 0, 0);
}

uint64_t sub_25F142714()
{
  v67 = v0;
  v1 = *(v0 + 152);
  if (v1 == 1)
  {

    v3 = *(v0 + 8);
  }

  else
  {
    if (!v1)
    {
      v2 = swift_task_alloc();
      *(v0 + 160) = v2;
      *v2 = v0;
      v2[1] = sub_25F142DE8;

      return MEMORY[0x2821A0BA0](v0 + 28);
    }

    *(v0 + 176) = v1;
    sub_25F14A470(v1);
    v4 = v1;
    v5 = *(sub_25F1773EC() + 16);

    if (v5)
    {
      v7 = *(v0 + 88);
      v6 = *(v0 + 96);
      v8 = *(v0 + 72);
      v9 = *(v0 + 80);
      v10 = *(v0 + 56);
      sub_25F17885C();
      v11 = *(v9 + 16);
      v11(v6, v10, v8);
      v11(v7, v10, v8);
      v12 = sub_25F17887C();
      v13 = sub_25F17955C();
      v14 = os_log_type_enabled(v12, v13);
      v65 = *(v0 + 136);
      v15 = *(v0 + 104);
      v16 = *(v0 + 112);
      v18 = *(v0 + 88);
      v17 = *(v0 + 96);
      v19 = *(v0 + 72);
      v20 = *(v0 + 80);
      if (v14)
      {
        log = v12;
        v21 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v66[0] = v59;
        *v21 = 134349314;
        v58 = v13;
        v22 = *(sub_25F1773EC() + 16);

        v63 = v15;
        v23 = *(v20 + 8);
        v23(v17, v19);
        *(v21 + 4) = v22;
        *(v21 + 12) = 2080;
        v24 = *(sub_25F1773EC() + 16);

        v25 = v24 == 1;
        if (v24 == 1)
        {
          v26 = 0;
        }

        else
        {
          v26 = 115;
        }

        if (v25)
        {
          v27 = 0xE000000000000000;
        }

        else
        {
          v27 = 0xE100000000000000;
        }

        v23(v18, v19);
        v28 = sub_25F0BECF0(v26, v27, v66);

        *(v21 + 14) = v28;
        _os_log_impl(&dword_25F0B3000, log, v58, "Loading JIT symbols from %{public}ld target descriptions%s", v21, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        MEMORY[0x25F8D6230](v59, -1, -1);
        MEMORY[0x25F8D6230](v21, -1, -1);

        v29 = *(v16 + 8);
        v29(v65, v63);
      }

      else
      {
        v41 = *(v20 + 8);
        v41(*(v0 + 96), *(v0 + 72));

        v41(v18, v19);
        v29 = *(v16 + 8);
        v29(v65, v15);
      }

      if (qword_27FD46800 != -1)
      {
        swift_once();
      }

      v42 = *(v0 + 33);
      v43 = *(v0 + 27);
      *(v0 + 184) = sub_25F0F5498(*(v0 + 64));
      sub_25F17885C();

      v44 = sub_25F17887C();
      v45 = sub_25F17955C();

      v46 = os_log_type_enabled(v44, v45);
      v47 = *(v0 + 128);
      v48 = *(v0 + 104);
      if (v46)
      {
        loga = *(v0 + 128);
        v49 = *(v0 + 64);
        v64 = v42;
        v50 = swift_slowAlloc();
        v60 = v48;
        v51 = swift_slowAlloc();
        v66[0] = v51;
        *v50 = 136315138;
        *(v50 + 4) = sub_25F0BECF0(*(v49 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier), *(v49 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier + 8), v66);
        _os_log_impl(&dword_25F0B3000, v44, v45, "JITManager: Initializing for %s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v51);
        MEMORY[0x25F8D6230](v51, -1, -1);
        v52 = v50;
        v42 = v64;
        MEMORY[0x25F8D6230](v52, -1, -1);

        v54 = v60;
        v53 = loga;
      }

      else
      {

        v53 = v47;
        v54 = v48;
      }

      v29(v53, v54);
      v55 = *(v0 + 152) == 0;
      *(v0 + 16) = v1;
      *(v0 + 24) = v55;
      *(v0 + 25) = v43;
      *(v0 + 26) = v42;
      v56 = swift_task_alloc();
      *(v0 + 192) = v56;
      *v56 = v0;
      v56[1] = sub_25F143670;

      return sub_25F0F5848((v0 + 16), (v0 + 25));
    }

    sub_25F17885C();
    v30 = sub_25F17887C();
    v31 = sub_25F17953C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_25F0B3000, v30, v31, "No target descriptions provided in launch payload.", v32, 2u);
      MEMORY[0x25F8D6230](v32, -1, -1);
    }

    v33 = *(v0 + 152);
    v35 = *(v0 + 112);
    v34 = *(v0 + 120);
    v36 = *(v0 + 104);

    v37 = (*(v35 + 8))(v34, v36);
    sub_25F14A480(v37, v38, v39);
    swift_allocError();
    *v40 = 0u;
    v40[1] = 0u;
    swift_willThrow();
    sub_25F0F26EC(v1, v33 == 0);
    sub_25F14A460(v33);

    v3 = *(v0 + 8);
  }

  return v3();
}

uint64_t sub_25F142DE8()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_25F1435CC;
  }

  else
  {
    v2 = sub_25F142EFC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F142EFC(uint64_t a1)
{
  v80 = v1;
  if (*(v1 + 32) == 1)
  {
    sub_25F17885C();
    v2 = sub_25F17887C();
    v3 = sub_25F17953C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_25F0B3000, v2, v3, "No pid provided when expected for JIT bootstrap method.", v4, 2u);
      MEMORY[0x25F8D6230](v4, -1, -1);
    }

    v5 = *(v1 + 144);
    v6 = *(v1 + 104);
    v7 = *(v1 + 112);

    v8 = (*(v7 + 8))(v5, v6);
    sub_25F14A40C(v8, v9, v10);
    swift_allocError();
    *v11 = 0;
    v11[1] = 0;
    swift_willThrow();
    v12 = 0;
    goto LABEL_23;
  }

  v13 = *(v1 + 28);
  v14 = *(v1 + 168);
  *(v1 + 176) = v13;
  v15 = *(v1 + 152);
  sub_25F14A470(v15);
  v16 = v15;
  v17 = *(sub_25F1773EC() + 16);

  if (!v17)
  {
    sub_25F17885C();
    v42 = sub_25F17887C();
    v43 = sub_25F17953C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_25F0B3000, v42, v43, "No target descriptions provided in launch payload.", v44, 2u);
      MEMORY[0x25F8D6230](v44, -1, -1);
    }

    v12 = *(v1 + 152);
    v46 = *(v1 + 112);
    v45 = *(v1 + 120);
    v47 = *(v1 + 104);

    v48 = (*(v46 + 8))(v45, v47);
    sub_25F14A480(v48, v49, v50);
    swift_allocError();
    *v51 = 0u;
    v51[1] = 0u;
    swift_willThrow();
    v52 = v13;
    v53 = v12 == 0;
    goto LABEL_22;
  }

  v77 = v14;
  v74 = v13;
  v19 = *(v1 + 88);
  v18 = *(v1 + 96);
  v20 = *(v1 + 72);
  v21 = *(v1 + 80);
  v22 = *(v1 + 56);
  sub_25F17885C();
  v23 = *(v21 + 16);
  v23(v18, v22, v20);
  v23(v19, v22, v20);
  v24 = sub_25F17887C();
  v25 = sub_25F17955C();
  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v1 + 136);
  v28 = *(v1 + 112);
  v75 = *(v1 + 104);
  v30 = *(v1 + 88);
  v29 = *(v1 + 96);
  v31 = *(v1 + 72);
  v32 = *(v1 + 80);
  if (v26)
  {
    v33 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v79[0] = v72;
    *v33 = 134349314;
    v73 = v27;
    v34 = *(sub_25F1773EC() + 16);

    v71 = v25;
    v35 = *(v32 + 8);
    v35(v29, v31);
    *(v33 + 4) = v34;
    *(v33 + 12) = 2080;
    v36 = *(sub_25F1773EC() + 16);

    v37 = v36 == 1;
    if (v36 == 1)
    {
      v38 = 0;
    }

    else
    {
      v38 = 115;
    }

    if (v37)
    {
      v39 = 0xE000000000000000;
    }

    else
    {
      v39 = 0xE100000000000000;
    }

    v35(v30, v31);
    v40 = sub_25F0BECF0(v38, v39, v79);

    *(v33 + 14) = v40;
    _os_log_impl(&dword_25F0B3000, v24, v71, "Loading JIT symbols from %{public}ld target descriptions%s", v33, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    MEMORY[0x25F8D6230](v72, -1, -1);
    MEMORY[0x25F8D6230](v33, -1, -1);

    v41 = *(v28 + 8);
    v41(v73, v75);
  }

  else
  {
    v54 = *(v32 + 8);
    v54(*(v1 + 96), *(v1 + 72));

    v54(v30, v31);
    v41 = *(v28 + 8);
    v41(v27, v75);
  }

  if (qword_27FD46800 != -1)
  {
    swift_once();
  }

  v55 = *(v1 + 33);
  v56 = *(v1 + 27);
  *(v1 + 184) = sub_25F0F5498(*(v1 + 64));
  if (v77)
  {
    v52 = *(v1 + 176);
    v12 = *(v1 + 152);
    v53 = v12 == 0;
LABEL_22:
    sub_25F0F26EC(v52, v53);
LABEL_23:
    sub_25F14A460(v12);

    v57 = *(v1 + 8);

    return v57();
  }

  sub_25F17885C();

  v59 = sub_25F17887C();
  v60 = sub_25F17955C();

  v61 = os_log_type_enabled(v59, v60);
  v62 = *(v1 + 128);
  v63 = *(v1 + 104);
  if (v61)
  {
    v78 = *(v1 + 128);
    v64 = *(v1 + 64);
    v76 = *(v1 + 104);
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v79[0] = v66;
    *v65 = 136315138;
    *(v65 + 4) = sub_25F0BECF0(*(v64 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier), *(v64 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier + 8), v79);
    _os_log_impl(&dword_25F0B3000, v59, v60, "JITManager: Initializing for %s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    MEMORY[0x25F8D6230](v66, -1, -1);
    MEMORY[0x25F8D6230](v65, -1, -1);

    v68 = v76;
    v67 = v78;
  }

  else
  {

    v67 = v62;
    v68 = v63;
  }

  v41(v67, v68);
  v69 = *(v1 + 152) == 0;
  *(v1 + 16) = v74;
  *(v1 + 24) = v69;
  *(v1 + 25) = v56;
  *(v1 + 26) = v55;
  v70 = swift_task_alloc();
  *(v1 + 192) = v70;
  *v70 = v1;
  v70[1] = sub_25F143670;

  return sub_25F0F5848((v1 + 16), (v1 + 25));
}

uint64_t sub_25F1435CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F143670(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v4 = sub_25F143CC8;
  }

  else
  {
    v4 = sub_25F143784;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F143784(uint64_t a1)
{
  v2 = sub_25F1773EC();
  *(v1 + 216) = v2;
  v3 = swift_task_alloc();
  *(v1 + 224) = v3;
  *v3 = v1;
  v3[1] = sub_25F143840;

  return sub_25F13C224(v2);
}

uint64_t sub_25F143840()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_25F143B60;
  }

  else
  {
    v2 = sub_25F143974;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F143974()
{
  v1 = *(v0 + 232);
  sub_25F12279C();
  if (v1)
  {

    v2 = *(v0 + 184);
    *(v0 + 40) = v2;
    type metadata accessor for PreviewsJITConfigurator();
    sub_25F148850(&qword_27FD47D08, type metadata accessor for PreviewsJITConfigurator, &unk_25F17DBE0);
    sub_25F17800C();
    swift_willThrow();

    v3 = *(v0 + 152);
    sub_25F0F26EC(*(v0 + 176), v3 == 0);
    sub_25F14A460(v3);
  }

  else
  {
    v5 = *(v0 + 176);
    v6 = *(v0 + 184);
    v7 = *(v0 + 152);

    sub_25F0F26EC(v5, v7 == 0);
    sub_25F14A460(v7);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25F143B60()
{

  v1 = *(v0 + 184);
  *(v0 + 40) = v1;
  type metadata accessor for PreviewsJITConfigurator();
  sub_25F148850(&qword_27FD47D08, type metadata accessor for PreviewsJITConfigurator, &unk_25F17DBE0);
  sub_25F17800C();
  swift_willThrow();

  v2 = *(v0 + 152);
  sub_25F0F26EC(*(v0 + 176), v2 == 0);
  sub_25F14A460(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25F143CC8()
{
  v1 = *(v0 + 184);
  *(v0 + 40) = v1;
  type metadata accessor for PreviewsJITConfigurator();
  sub_25F148850(&qword_27FD47D08, type metadata accessor for PreviewsJITConfigurator, &unk_25F17DBE0);
  sub_25F17800C();
  swift_willThrow();

  v2 = *(v0 + 152);
  sub_25F0F26EC(*(v0 + 176), v2 == 0);
  sub_25F14A460(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25F143E28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48D60, &qword_25F1827E0) + 48);
  v9 = (a3 + *a3);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F0BF3E4;

  return v9(a2, a2 + v6);
}

uint64_t sub_25F143F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48188, &qword_25F182550);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16[-1] - v8;
  sub_25F0BEC1C(a3 + OBJC_IVAR____TtC15PreviewShellKit5Agent_launcher, v16);
  v10 = v17;
  v11 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  if (a4)
  {
    sub_25F17861C();
  }

  else
  {
    v12 = type metadata accessor for Process(0);
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  }

  v13 = sub_25F106F50(a1, v9, v10, v11);
  sub_25F0B7E94(v9, &qword_27FD48188, &qword_25F182550);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v13;
}

uint64_t sub_25F144094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48D58, &qword_25F1827D8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  sub_25F0B7E2C(a1, &v8 - v5, &qword_27FD48D58, &qword_25F1827D8);
  return sub_25F149EDC(v6, a2, type metadata accessor for Process);
}

uint64_t sub_25F144154(uint64_t a1, uint64_t a2)
{
  v3 = sub_25F1787BC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(a2 + 16);

  sub_25F1787CC();
  v9 = 0;
  v10 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48D48, &qword_25F1827D0);
  sub_25F0B7D00(&qword_27FD48D50, &qword_27FD48D48, &qword_25F1827D0, MEMORY[0x277D40588]);
  sub_25F17855C();
  (*(v4 + 8))(v6, v3);
}

__n128 sub_25F1442FC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Process(0) + 24);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_25F144380(uint64_t a1, uint64_t (*a2)(void), const char *a3)
{
  v5 = sub_25F17888C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17885C();
  v9 = sub_25F17887C();
  v10 = a2();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_25F0B3000, v9, v10, a3, v11, 2u);
    MEMORY[0x25F8D6230](v11, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_25F1444C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F1787BC();
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F17888C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17885C();
  v11 = sub_25F17887C();
  v12 = sub_25F17952C();
  v13 = os_log_type_enabled(v11, v12);
  v26 = a1;
  if (v13)
  {
    v24 = a2;
    v25 = v4;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136446210;
    if ((a1 & 0x100000000) != 0)
    {
      v16 = 0xE500000000000000;
      v17 = 0x3E6C696E3CLL;
    }

    else
    {
      v28 = a1;
      v17 = sub_25F17980C();
      v16 = v18;
    }

    v19 = sub_25F0BECF0(v17, v16, &v29);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_25F0B3000, v11, v12, "pid_t callback used: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x25F8D6230](v15, -1, -1);
    MEMORY[0x25F8D6230](v14, -1, -1);

    (*(v8 + 8))(v10, v7);
    a2 = v24;
    v4 = v25;
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v29 = *(a2 + 16);

  v20 = sub_25F1787CC();
  MEMORY[0x28223BE20](v20);
  v21 = BYTE4(v26);
  *(&v23 - 4) = v26;
  *(&v23 - 12) = v21 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48D48, &qword_25F1827D0);
  sub_25F0B7D00(&qword_27FD48D50, &qword_27FD48D48, &qword_25F1827D0, MEMORY[0x277D40588]);
  sub_25F17855C();
  (*(v27 + 8))(v6, v4);
}

uint64_t Agent.applyUpdateFor(payload:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25F17788C();
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v39 - v7;
  v43 = sub_25F17888C();
  v9 = *(v43 - 8);
  v10 = MEMORY[0x28223BE20](v43);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v39 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  v42 = sub_25F17787C();
  v18 = v1 + OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
  if ((*(v18 + *(type metadata accessor for BatchIdentity(0) + 32)) & 1) == 0)
  {
    sub_25F17885C();
    v25 = sub_25F17887C();
    v26 = sub_25F17952C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 67240192;
      *(v27 + 4) = v42;
      _os_log_impl(&dword_25F0B3000, v25, v26, "Full binary mode. Not looking for JIT products for pid: %{public}d", v27, 8u);
      MEMORY[0x25F8D6230](v27, -1, -1);
    }

    (*(v9 + 8))(v17, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48CD8, &qword_25F1825B8);
    v44 = 0;
    return sub_25F1786DC();
  }

  v19 = sub_25F17784C();
  if (!*(v19 + 16))
  {

    sub_25F17885C();
    v28 = sub_25F17887C();
    v29 = sub_25F17952C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 67240192;
      *(v30 + 4) = v42;
      _os_log_impl(&dword_25F0B3000, v28, v29, "Found no XOJIT loadable products, pid: %{public}d", v30, 8u);
      MEMORY[0x25F8D6230](v30, -1, -1);
    }

    (*(v9 + 8))(v12, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48CD8, &qword_25F1825B8);
    v45 = 0;
    return sub_25F1786DC();
  }

  sub_25F17885C();

  v20 = sub_25F17887C();
  v21 = sub_25F17952C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v39 = v4;
    v23 = v22;
    *v22 = 134218240;
    *(v22 + 4) = *(v19 + 16);

    *(v23 + 12) = 1026;
    *(v23 + 14) = v42;
    _os_log_impl(&dword_25F0B3000, v20, v21, "Found %ld XOJIT loadable products, pid: %{public}d", v23, 0x12u);
    v24 = v23;
    v4 = v39;
    MEMORY[0x25F8D6230](v24, -1, -1);
  }

  else
  {
  }

  (*(v9 + 8))(v15, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48CD8, &qword_25F1825B8);
  v32 = sub_25F17932C();
  (*(*(v32 - 8) + 56))(v8, 1, 1, v32);
  v33 = swift_allocObject();
  *(v33 + 16) = v2;
  *(v33 + 24) = v42;
  *(v33 + 32) = v19;

  v31 = sub_25F17870C();
  v35 = v40;
  v34 = v41;
  (*(v41 + 16))(v40, a1, v4);
  v36 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v37 = swift_allocObject();
  (*(v34 + 32))(v37 + v36, v35, v4);
  sub_25F17862C();

  return v31;
}

uint64_t sub_25F144ED8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = a4;
  *(v4 + 208) = a3;
  *(v4 + 24) = a1;
  v5 = sub_25F17767C();
  *(v4 + 48) = v5;
  v6 = *(v5 - 8);
  *(v4 + 56) = v6;
  *(v4 + 64) = *(v6 + 64);
  *(v4 + 72) = swift_task_alloc();
  v7 = sub_25F17888C();
  *(v4 + 80) = v7;
  *(v4 + 88) = *(v7 - 8);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F14501C, 0, 0);
}

uint64_t sub_25F14501C()
{
  if (qword_27FD46800 != -1)
  {
    swift_once();
  }

  v1 = sub_25F0F5498(v0[4]);
  v0[15] = *(v1 + OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF23PreviewsJITConfigurator_future);
  v2 = v1;

  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_25F145190;

  return MEMORY[0x2821A0BA0](v0 + 2);
}

uint64_t sub_25F145190()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_25F1456B4;
  }

  else
  {
    v2 = sub_25F1452C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F1452C4(uint64_t a1)
{
  *(v1 + 144) = *(v1 + 16);
  sub_25F17885C();
  v2 = sub_25F17887C();
  v3 = sub_25F17952C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 208);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_25F0B3000, v2, v3, "Loading products from shell update payload for pid: %{public}d", v5, 8u);
    MEMORY[0x25F8D6230](v5, -1, -1);
  }

  v6 = *(v1 + 112);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = *(v1 + 40);

  v10 = *(v8 + 8);
  *(v1 + 152) = v10;
  *(v1 + 160) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v7);
  v11 = *(v9 + 16);
  *(v1 + 168) = v11;
  if (v11)
  {
    v12 = *(v1 + 56);
    v13 = *(v1 + 64);
    *(v1 + 213) = 0;
    *(v1 + 176) = 0;
    v14 = *(v1 + 144);
    v15 = *(v1 + 72);
    v16 = *(v1 + 48);
    sub_25F177B9C();
    v34 = sub_25F177B8C();
    v35 = v14[5];
    v33 = v14[4];
    v17 = v14[3];
    v18 = OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
    v19 = v18 + *(type metadata accessor for BatchIdentity(0) + 20);
    (*(v12 + 16))(v15, v17 + v19, v16);
    v20 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v1 + 184) = v22;
    *(v22 + 16) = v14;
    (*(v12 + 32))(v22 + v20, v15, v16);
    *(v22 + v21) = v34;
    v23 = (v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v23 = v33;
    v23[1] = v35;

    v24 = swift_task_alloc();
    *(v1 + 192) = v24;
    *v24 = v1;
    v24[1] = sub_25F145740;
    v25 = MEMORY[0x277D839B0];

    return MEMORY[0x2821A0D70](v1 + 212, sub_25F12DFAC, v22, v25);
  }

  else
  {
    sub_25F17885C();
    v26 = sub_25F17887C();
    v27 = sub_25F17952C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v1 + 208);
      v29 = swift_slowAlloc();
      *v29 = 67240192;
      *(v29 + 4) = v28;
      _os_log_impl(&dword_25F0B3000, v26, v27, "No products loaded from shell update payload for pid: %{public}d", v29, 8u);
      MEMORY[0x25F8D6230](v29, -1, -1);
    }

    else
    {
    }

    v30 = *(v1 + 24);
    (*(v1 + 152))(*(v1 + 96), *(v1 + 80));
    *v30 = 0;

    v31 = *(v1 + 8);

    return v31();
  }
}

uint64_t sub_25F1456B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F145740()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_25F145C54;
  }

  else
  {
    v2 = sub_25F145874;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F145874(uint64_t a1)
{
  v2 = *(v1 + 176) + 1;
  v3 = *(v1 + 212) | *(v1 + 213);
  if (v2 == *(v1 + 168))
  {
    if ((*(v1 + 212) | *(v1 + 213)))
    {
      v4 = (v1 + 104);
      sub_25F17885C();
      v5 = sub_25F17887C();
      v6 = sub_25F17952C();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = *(v1 + 208);
        v8 = swift_slowAlloc();
        *v8 = 67240192;
        *(v8 + 4) = v7;
        v9 = "Finished loading products from shell update payload for pid: %{public}d";
LABEL_10:
        _os_log_impl(&dword_25F0B3000, v5, v6, v9, v8, 8u);
        MEMORY[0x25F8D6230](v8, -1, -1);

LABEL_12:
        v24 = *v4;
        v25 = *(v1 + 24);
        (*(v1 + 152))(v24, *(v1 + 80));
        *v25 = v3 & 1;

        v26 = *(v1 + 8);

        return v26();
      }
    }

    else
    {
      v4 = (v1 + 96);
      sub_25F17885C();
      v5 = sub_25F17887C();
      v6 = sub_25F17952C();
      if (os_log_type_enabled(v5, v6))
      {
        v23 = *(v1 + 208);
        v8 = swift_slowAlloc();
        *v8 = 67240192;
        *(v8 + 4) = v23;
        v9 = "No products loaded from shell update payload for pid: %{public}d";
        goto LABEL_10;
      }
    }

    goto LABEL_12;
  }

  *(v1 + 213) = v3 & 1;
  *(v1 + 176) = v2;
  v10 = *(v1 + 144);
  v11 = *(v1 + 72);
  v31 = *(v1 + 64);
  v12 = *(v1 + 48);
  v13 = *(v1 + 56);
  sub_25F177B9C();
  v29 = sub_25F177B8C();
  v30 = v10[5];
  v28 = v10[4];
  v14 = v10[3];
  v15 = OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
  v16 = v15 + *(type metadata accessor for BatchIdentity(0) + 20);
  (*(v13 + 16))(v11, v14 + v16, v12);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = (v31 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v1 + 184) = v19;
  *(v19 + 16) = v10;
  (*(v13 + 32))(v19 + v17, v11, v12);
  *(v19 + v18) = v29;
  v20 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v20 = v28;
  v20[1] = v30;

  v21 = swift_task_alloc();
  *(v1 + 192) = v21;
  *v21 = v1;
  v21[1] = sub_25F145740;
  v22 = MEMORY[0x277D839B0];

  return MEMORY[0x2821A0D70](v1 + 212, sub_25F12DFAC, v19, v22);
}

uint64_t sub_25F145C54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F145CE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F17788C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - v9;
  v11 = sub_25F17888C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  if (*(a1 + 8) == 1)
  {
    v18 = *a1;
    sub_25F17885C();
    (*(v5 + 16))(v8, a2, v4);
    v19 = v18;
    v20 = sub_25F17887C();
    v21 = sub_25F17953C();
    sub_25F0C0FA8(v18, 1);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v34 = v11;
      v23 = v22;
      v33 = swift_slowAlloc();
      *v23 = 67240450;
      v24 = sub_25F17787C();
      (*(v5 + 8))(v8, v4);
      *(v23 + 4) = v24;
      *(v23 + 8) = 2114;
      v25 = v18;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 10) = v26;
      v27 = v33;
      *v33 = v26;
      _os_log_impl(&dword_25F0B3000, v20, v21, "JIT (pid: %{public}d) for shell update failed: %{public}@", v23, 0x12u);
      sub_25F0B7E94(v27, &qword_27FD473D0, &unk_25F17C540);
      MEMORY[0x25F8D6230](v27, -1, -1);
      v28 = v23;
      v11 = v34;
      MEMORY[0x25F8D6230](v28, -1, -1);
    }

    else
    {
      (*(v5 + 8))(v8, v4);
    }

    v17 = v15;
  }

  else
  {
    sub_25F17885C();
    (*(v5 + 16))(v10, a2, v4);
    v20 = sub_25F17887C();
    v29 = sub_25F17952C();
    if (os_log_type_enabled(v20, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 67240192;
      v31 = sub_25F17787C();
      (*(v5 + 8))(v10, v4);
      *(v30 + 4) = v31;
      _os_log_impl(&dword_25F0B3000, v20, v29, "JIT (pid: %{public}d) for shell update succeeded", v30, 8u);
      MEMORY[0x25F8D6230](v30, -1, -1);
    }

    else
    {
      (*(v5 + 8))(v10, v4);
    }
  }

  return (*(v12 + 8))(v17, v11);
}

uint64_t Agent.kill()()
{
  v0 = sub_25F177FFC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F177FDC();

  v4 = sub_25F17864C();

  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_25F146224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v90 = a3;
  v80 = a1;
  v5 = sub_25F177FFC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v71 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_25F17776C();
  v78 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v69 = v8;
  v77 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F1778EC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v86 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v85 = v67 - v13;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48D40, &unk_25F1827C0);
  MEMORY[0x28223BE20](v87);
  v15 = v67 - v14;
  v16 = type metadata accessor for Agent.Update(0);
  v91 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v68 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v75 = v67 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v81 = v67 - v22;
  v67[1] = v23;
  MEMORY[0x28223BE20](v21);
  isUniquelyReferenced_nonNull_native = v67 - v24;
  v26 = OBJC_IVAR____TtC15PreviewShellKit5Agent_updates;
  swift_beginAccess();
  v76 = v3;
  v74 = v26;
  v27 = *&v3[v26];
  v28 = *(v27 + 16);
  v79 = a2;
  v73 = v5;
  v72 = v6;
  if (v28 && (v29 = sub_25F0C8E04(a2), (v30 & 1) != 0))
  {
    v92 = *(*(v27 + 56) + 8 * v29);
  }

  else
  {
    v92 = MEMORY[0x277D84F90];
  }

  v31 = v87;
  swift_endAccess();
  v89 = *(v92 + 16);
  if (!v89)
  {
LABEL_16:

    v44 = v81;
    sub_25F0B7E2C(v90, v81 + *(v16 + 20), &qword_27FD48D08, &unk_25F183080);
    sub_25F177E7C();
    *(v44 + *(v16 + 24)) = v80;
    v9 = v75;
    sub_25F1488EC(v44, v75, type metadata accessor for Agent.Update);
    v10 = v76;
    v45 = v74;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v93 = *&v10[v45];
    v27 = v93;
    *&v10[v45] = 0x8000000000000000;
    v46 = v79;
    v33 = sub_25F0C8E04(v79);
    v48 = *(v27 + 16);
    v49 = (v47 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_29;
    }

    v51 = v47;
    if (*(v27 + 24) >= v50)
    {
      v15 = v70;
      if (isUniquelyReferenced_nonNull_native)
      {
        *&v10[v45] = v27;
        if (v47)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_25F170D34();
        v27 = v93;
        *&v10[v45] = v93;
        if (v51)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      sub_25F16CDA0(v50, isUniquelyReferenced_nonNull_native);
      v27 = v93;
      v52 = sub_25F0C8E04(v46);
      v15 = v70;
      if ((v51 & 1) != (v53 & 1))
      {
        result = sub_25F17985C();
        __break(1u);
        return result;
      }

      v33 = v52;
      *&v10[v45] = v27;
      if (v51)
      {
LABEL_24:
        isUniquelyReferenced_nonNull_native = *(v27 + 56);
        v27 = *(isUniquelyReferenced_nonNull_native + 8 * v33);
        v55 = swift_isUniquelyReferenced_nonNull_native();
        *(isUniquelyReferenced_nonNull_native + 8 * v33) = v27;
        if ((v55 & 1) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_25;
      }
    }

    v54 = v77;
    (*(v78 + 16))(v77, v46, v15);
    sub_25F16FAEC(v33, v54, MEMORY[0x277D84F90], v27);
    goto LABEL_24;
  }

  v32 = 0;
  v88 = v92 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
  v33 = (v10 + 48);
  v83 = v16;
  v84 = (v10 + 32);
  v82 = (v10 + 8);
  while (v32 < *(v92 + 16))
  {
    sub_25F1488EC(v88 + *(v91 + 72) * v32, isUniquelyReferenced_nonNull_native, type metadata accessor for Agent.Update);
    v35 = &v15[*(v31 + 48)];
    sub_25F0B7E2C(isUniquelyReferenced_nonNull_native + *(v16 + 20), v15, &qword_27FD48D08, &unk_25F183080);
    sub_25F0B7E2C(v90, v35, &qword_27FD48D08, &unk_25F183080);
    v10 = *v33;
    if ((*v33)(v15, 1, v9) == 1)
    {
      v34 = v35;
    }

    else
    {
      v36 = (v10)(v35, 1, v9);
      v34 = v15;
      if (v36 != 1)
      {
        v37 = v85;
        v38 = *v84;
        (*v84)(v85, v15, v9);
        v39 = v9;
        v40 = v86;
        v38(v86, v35, v39);
        v27 = sub_25F1778DC();
        v10 = *v82;
        v41 = v40;
        v9 = v39;
        v42 = v87;
        (*v82)(v41, v9);
        v43 = v37;
        v16 = v83;
        (v10)(v43, v9);
        v31 = v42;
        if ((v27 & 1) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    sub_25F0B7E94(v34, &qword_27FD48D08, &unk_25F183080);
LABEL_9:
    v27 = *(isUniquelyReferenced_nonNull_native + *(v16 + 24));
    sub_25F17866C();
LABEL_10:
    ++v32;
    sub_25F1489A4(isUniquelyReferenced_nonNull_native, type metadata accessor for Agent.Update);
    if (v89 == v32)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  v27 = sub_25F116274(0, *(v27 + 16) + 1, 1, v27);
  *(isUniquelyReferenced_nonNull_native + 8 * v33) = v27;
LABEL_25:
  v57 = *(v27 + 16);
  v56 = *(v27 + 24);
  if (v57 >= v56 >> 1)
  {
    v27 = sub_25F116274((v56 > 1), v57 + 1, 1, v27);
    *(isUniquelyReferenced_nonNull_native + 8 * v33) = v27;
  }

  *(v27 + 16) = v57 + 1;
  v58 = *(v91 + 80);
  sub_25F149EDC(v9, v27 + ((v58 + 32) & ~v58) + *(v91 + 72) * v57, type metadata accessor for Agent.Update);
  swift_endAccess();
  v59 = v71;
  sub_25F177FDC();
  v61 = v77;
  v60 = v78;
  (*(v78 + 16))(v77, v79, v15);
  v62 = v68;
  sub_25F1488EC(v81, v68, type metadata accessor for Agent.Update);
  v63 = (*(v60 + 80) + 24) & ~*(v60 + 80);
  v64 = (v69 + v58 + v63) & ~v58;
  v65 = swift_allocObject();
  *(v65 + 16) = v10;
  (*(v60 + 32))(v65 + v63, v61, v15);
  sub_25F149EDC(v62, v65 + v64, type metadata accessor for Agent.Update);

  sub_25F1785CC();

  (*(v72 + 8))(v59, v73);
  return sub_25F1489A4(v81, type metadata accessor for Agent.Update);
}

void sub_25F146BB0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v45 = a4;
  v6 = sub_25F17776C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Agent.Update(0);
  v44 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v42 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v43 = v38 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = v38 - v15;
  v17 = OBJC_IVAR____TtC15PreviewShellKit5Agent_updates;
  swift_beginAccess();
  v18 = *(a2 + v17);
  if (!*(v18 + 16) || (v19 = sub_25F0C8E04(a3), (v20 & 1) == 0))
  {
    v46 = 0;
    swift_endAccess();
LABEL_32:
    (*(v7 + 16))(v9, a3, v6);
    swift_beginAccess();

    sub_25F16A4F0(v37, v9);
    swift_endAccess();

    return;
  }

  v38[3] = v17;
  v39 = v7;
  v40 = v6;
  v41 = a3;
  v46 = *(*(v18 + 56) + 8 * v19);
  v21 = v46;
  v22 = swift_endAccess();
  v38[2] = v38;
  MEMORY[0x28223BE20](v22);
  v38[-2] = v45;

  v23 = sub_25F14818C(sub_25F14A210, &v38[-4], v21);
  if (v24)
  {
    v25 = v21[2];
    v26 = v25;
LABEL_24:
    if (!__OFADD__(v25, v26 - v25))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v21;
      if (!isUniquelyReferenced_nonNull_native || v26 > v21[3] >> 1)
      {
        if (v25 <= v26)
        {
          v36 = v26;
        }

        else
        {
          v36 = v25;
        }

        v21 = sub_25F116274(isUniquelyReferenced_nonNull_native, v36, 1, v21);
        v46 = v21;
      }

      sub_25F14A240(v26, v25, 0);
      v46 = v21;
      v6 = v40;
      a3 = v41;
      v7 = v39;
      goto LABEL_32;
    }
  }

  else
  {
    v26 = v23;
    v38[0] = v9;
    v38[1] = a2;
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_9;
    }

    while (1)
    {
      v27 = v21[2];
      if (v25 == v27)
      {
        break;
      }

      if (v25 >= v27)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v28 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v29 = v21 + v28;
      v30 = *(v44 + 72);
      v31 = v30 * v25;
      sub_25F1488EC(v21 + v28 + v30 * v25, v16, type metadata accessor for Agent.Update);
      v32 = sub_25F177E6C();
      sub_25F1489A4(v16, type metadata accessor for Agent.Update);
      if ((v32 & 1) == 0)
      {
        if (v25 != v26)
        {
          if (v26 < 0)
          {
            goto LABEL_34;
          }

          v33 = v21[2];
          if (v26 >= v33)
          {
            goto LABEL_35;
          }

          sub_25F1488EC(&v29[v30 * v26], v43, type metadata accessor for Agent.Update);
          if (v25 >= v33)
          {
            goto LABEL_36;
          }

          v34 = v42;
          sub_25F1488EC(&v29[v31], v42, type metadata accessor for Agent.Update);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_25F148570(v21);
          }

          sub_25F14A388(v34, v21 + v28 + v30 * v26, type metadata accessor for Agent.Update);
          if (v25 >= v21[2])
          {
            goto LABEL_37;
          }

          sub_25F14A388(v43, v21 + v28 + v31, type metadata accessor for Agent.Update);
        }

LABEL_9:
        ++v26;
      }

      ++v25;
    }

    if (v25 < v26)
    {
      goto LABEL_38;
    }

    v9 = v38[0];
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_39:
    __break(1u);
  }

  __break(1u);
}

uint64_t Agent.deinit()
{

  v1 = OBJC_IVAR____TtC15PreviewShellKit5Agent_identifier;
  v2 = sub_25F177E8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15PreviewShellKit5Agent_launcher));
  sub_25F1489A4(v0 + OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity, type metadata accessor for BatchIdentity);

  return v0;
}

uint64_t Agent.__deallocating_deinit()
{
  Agent.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_25F1471FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F14A988(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F147238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F14A988(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

uint64_t sub_25F147290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F14A9DC(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F1472CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F14A9DC(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

uint64_t sub_25F147308(uint64_t a1, uint64_t a2)
{
  v3 = sub_25F1787BC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = a2;
  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48D48, &qword_25F1827D0);
  sub_25F0B7D00(&qword_27FD48D50, &qword_27FD48D48, &qword_25F1827D0, MEMORY[0x277D40588]);
  sub_25F17855C();
  return (*(v4 + 8))(v6, v3);
}

void *sub_25F147494(void *result, uint64_t a2)
{
  v2 = result;
  if (*result)
  {
    sub_25F17876C();
  }

  *v2 = 0;
  return result;
}

uint64_t sub_25F1474F4()
{

  return swift_deallocClassInstance();
}

void *sub_25F147534(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486E8, &unk_25F180708);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_25F1475B8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486F8, &qword_25F180718);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_25F14763C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_25F14765C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_25F14768C(void *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25F12F6EC(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_25F1476F8(v4);
  *a1 = v2;
}

void sub_25F1476F8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_25F1797FC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48700, &qword_25F180720);
        v5 = sub_25F17926C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_25F1478D0(v7, v8, a1, v4);
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
    sub_25F147800(0, v2, 1, a1);
  }
}

uint64_t sub_25F147800(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 32 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = sub_25F17983C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *(v12 + 32);
      v10 = *(v12 + 40);
      v14 = *(v12 + 48);
      v15 = *(v12 + 56);
      v16 = *(v12 + 16);
      *(v12 + 32) = *v12;
      *(v12 + 48) = v16;
      *v12 = result;
      *(v12 + 8) = v10;
      *(v12 + 16) = v14;
      *(v12 + 24) = v15;
      v12 -= 32;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_25F1478D0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_105:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_137:
      v7 = sub_25F12F5EC(v7);
    }

    v90 = v7 + 16;
    v91 = *(v7 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = &v7[16 * v91];
        v93 = *v92;
        v94 = &v90[2 * v91];
        v95 = v94[1];
        sub_25F147EB4((*a3 + 32 * *v92), (*a3 + 32 * *v94), (*a3 + 32 * v95), v8);
        if (v4)
        {
          goto LABEL_114;
        }

        if (v95 < v93)
        {
          goto LABEL_129;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_130;
        }

        *v92 = v93;
        *(v92 + 1) = v95;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_131;
        }

        v91 = *v90 - 1;
        memmove(v94, v94 + 2, 16 * v96);
        *v90 = v91;
        if (v91 <= 1)
        {
          goto LABEL_114;
        }
      }

      goto LABEL_141;
    }

LABEL_114:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = (*a3 + 32 * v6);
      v10 = (*a3 + 32 * v8);
      if (*v9 == *v10 && v9[1] == v10[1])
      {
        v12 = 0;
      }

      else
      {
        v12 = sub_25F17983C();
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = v10 + 5;
        v14 = v10 + 5;
        do
        {
          v16 = v14[4];
          v14 += 4;
          v15 = v16;
          if (v13[3] == *(v13 - 1) && v15 == *v13)
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else if ((v12 ^ sub_25F17983C()))
          {
            goto LABEL_23;
          }

          ++v6;
          v13 = v14;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v18 = 32 * v6 - 16;
          v19 = (32 * v8) | 0x18;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v22 = (v28 + v19);
              v23 = (v28 + v18);
              v24 = *(v22 - 3);
              v25 = *(v22 - 1);
              v26 = *v22;
              v27 = *v23;
              *(v22 - 3) = *(v23 - 1);
              *(v22 - 1) = v27;
              *(v23 - 1) = v24;
              *v23 = v25;
              *(v23 + 1) = v26;
            }

            ++v21;
            v18 -= 32;
            v19 += 32;
          }

          while (v21 < v20);
        }
      }
    }

    v29 = a3[1];
    if (v6 < v29)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v29)
        {
          v30 = a3[1];
        }

        else
        {
          v30 = v8 + a4;
        }

        if (v30 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v30)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_25F116170(0, *(v7 + 2) + 1, 1, v7);
    }

    v45 = *(v7 + 2);
    v44 = *(v7 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v7 = sub_25F116170((v44 > 1), v45 + 1, 1, v7);
    }

    *(v7 + 2) = v46;
    v47 = &v7[16 * v45];
    *(v47 + 4) = v8;
    *(v47 + 5) = v6;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v7 + 4);
          v51 = *(v7 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_74:
          if (v53)
          {
            goto LABEL_120;
          }

          v66 = &v7[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_123;
          }

          v72 = &v7[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_127;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v76 = &v7[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_88:
        if (v71)
        {
          goto LABEL_122;
        }

        v79 = &v7[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_125;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v49 - 1;
        if (v49 - 1 >= v46)
        {
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
          goto LABEL_139;
        }

        v87 = *&v7[16 * v8 + 32];
        v88 = *&v7[16 * v49 + 40];
        sub_25F147EB4((*a3 + 32 * v87), (*a3 + 32 * *&v7[16 * v49 + 32]), (*a3 + 32 * v88), v48);
        if (v4)
        {
          goto LABEL_114;
        }

        if (v88 < v87)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_25F12F5EC(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_117;
        }

        v89 = &v7[16 * v8];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        sub_25F12F560(v49);
        v46 = *(v7 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v7[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_118;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_119;
      }

      v61 = &v7[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_121;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_124;
      }

      if (v65 >= v57)
      {
        v83 = &v7[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_128;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v31 = *a3;
  v32 = *a3 + 32 * v6 - 32;
  v97 = v8;
  v33 = (v8 - v6);
LABEL_43:
  v34 = (v31 + 32 * v6);
  v35 = *v34;
  v36 = v34[1];
  v37 = v33;
  v38 = v32;
  while (1)
  {
    v39 = v35 == *v38 && v36 == *(v38 + 8);
    if (v39 || (sub_25F17983C() & 1) == 0)
    {
LABEL_42:
      ++v6;
      v32 += 32;
      --v33;
      if (v6 != v30)
      {
        goto LABEL_43;
      }

      v6 = v30;
      v8 = v97;
      goto LABEL_54;
    }

    if (!v31)
    {
      break;
    }

    v35 = *(v38 + 32);
    v36 = *(v38 + 40);
    v40 = *(v38 + 48);
    v41 = *(v38 + 56);
    v42 = *(v38 + 16);
    *(v38 + 32) = *v38;
    *(v38 + 48) = v42;
    *v38 = v35;
    *(v38 + 8) = v36;
    *(v38 + 16) = v40;
    *(v38 + 24) = v41;
    v38 -= 32;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_42;
    }
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
LABEL_143:
  __break(1u);
}

uint64_t sub_25F147EB4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v17 && (sub_25F17983C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v17 = v7 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v17 = v7 == v6;
    v6 += 32;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_28:
    v18 = v6 - 32;
    v5 -= 32;
    v19 = v14;
    do
    {
      v20 = *(v19 - 4);
      v21 = *(v19 - 3);
      v19 -= 32;
      v22 = v20 == *(v6 - 4) && v21 == *(v6 - 3);
      if (!v22 && (sub_25F17983C() & 1) != 0)
      {
        if (v5 + 32 != v6)
        {
          v24 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v24;
        }

        if (v14 <= v4 || (v6 -= 32, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 32 != v14)
      {
        v23 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v23;
      }

      v5 -= 32;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

uint64_t sub_25F1480DC(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}