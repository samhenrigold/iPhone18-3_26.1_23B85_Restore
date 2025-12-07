uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20DA72AEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20DA72B34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_20DA72B90(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20DA72BD8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_20DA73A3C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_20DD65924();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[16 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 1) >= v11)
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 16;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844AD0, &unk_20DD96290);
      v7 = sub_20DD65034();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_20DA72D34(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_20DA72D34(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_20DA73550(v8);
      v8 = result;
    }

    v81 = (v8 + 16);
    v82 = *(v8 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v8 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_20DA732C0((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = (v13 < v10) ^ (v16 >= v17);
        ++v14;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
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
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
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

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_20D9E014C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v35 = *(v8 + 24);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_20D9E014C((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v36;
    v37 = v8 + 32;
    v38 = (v8 + 32 + 16 * v5);
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v8 + 32);
          v40 = *(v8 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = (v8 + 16 * v36);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = (v37 + 16 * v5);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = (v8 + 16 * v36);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = (v37 + 16 * v5);
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
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

        v76 = (v37 + 16 * (v5 - 1));
        v77 = *v76;
        v78 = (v37 + 16 * v5);
        v79 = v78[1];
        sub_20DA732C0((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v8 + 16);
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove((v37 + 16 * v5), v78 + 2, 16 * (v80 - 1 - v5));
        *(v8 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v37 + 16 * v36;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = (v8 + 16 * v36);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = (v37 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (*(v32 - 1) >= v30)
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
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
  return result;
}

uint64_t sub_20DA732C0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
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

      if (*(v4 + 1) < *(v6 + 1))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 16;
    do
    {
      v17 = v5 + 16;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v19 = v6 - 16;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 16, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 16;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 -= 16;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v20 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t sub_20DA734C4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_20DA73550(v3);
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

void sub_20DA73564(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_20DD65444();
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    _s19ItemSearchContainerCMa();
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = sub_20DD65454();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

uint64_t sub_20DA736C0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
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
  v8 = a4(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v7 + *(v9 + 72) * v5;

  return v10(a5, v11, v8);
}

uint64_t sub_20DA73784(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_20DA737FC(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x20F326530](a1, a2, v11);
      sub_20D9D7510(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_20D9D7510(0, a5, a6);
    if (sub_20DD65594() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_20DD655A4();
    swift_dynamicCast();
    v6 = v19;
    v12 = sub_20DD65444();
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_20DD65454();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

uint64_t sub_20DA73A50(uint64_t a1)
{
  type metadata accessor for HFItemProviderInvalidationReason(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_20DA73AAC(id a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
LABEL_5:
      v2 = a1;
      return result;
    }

    if (a2 != 3)
    {
      if (a2 != 4)
      {
        return result;
      }

      goto LABEL_5;
    }

    goto LABEL_9;
  }

  if (!a2)
  {
LABEL_9:

    return result;
  }

  if (a2 == 1)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

void sub_20DA73AEC(id a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
LABEL_5:

      return;
    }

    if (a2 != 3)
    {
      if (a2 != 4)
      {
        return;
      }

      goto LABEL_5;
    }

    goto LABEL_9;
  }

  if (!a2)
  {
LABEL_9:

    return;
  }

  if (a2 == 1)
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_20DA73B2C(void *a1, void *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844AA0, &unk_20DD96280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD93A70;
  *(inited + 32) = @"appleMusicAccount";
  v7 = @"appleMusicAccount";
  v8 = sub_20D9EEE3C(inited);
  swift_setDeallocating();
  sub_20DA73A50(inited + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_20DD940A0;
  *(v9 + 32) = a1;
  v10 = a1;
  sub_20D9EE8D0(v9);
  v12 = v11;
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_20DA7141C(v12, 3u, v8, a2, a3);
}

Swift::Void __swiftcall HFHomeKitDispatcher.registerHomeStateStream()()
{
  v1 = v0;
  sub_20DD63B44();
  if (sub_20DD639E4())
  {
    MEMORY[0x20F324A90]();
    v2 = sub_20DD63AA4();

    [v0 addHomeManagerObserver_];
    swift_unknownObjectRelease();
    [v0 addHomeObserver_];
    swift_unknownObjectRelease();
    [v0 addAccessoryObserver_];
    swift_unknownObjectRelease();
    [v0 addMediaSessionObserver_];
    swift_unknownObjectRelease();
    [v0 addMediaObjectObserver_];
    swift_unknownObjectRelease();
    [v0 addResidentDeviceObserver_];
    swift_unknownObjectRelease();
    [v0 addLightObserver_];
    swift_unknownObjectRelease();
    [v0 addSymptomsHandlerObserver_];
    swift_unknownObjectRelease();
    [v0 addSoftwareUpdateObserver_];
    swift_unknownObjectRelease();
    [v0 addSoftwareUpdateControllerV2Observer_];
    v3 = swift_unknownObjectRelease();
    v4 = MEMORY[0x20F324A90](v3);
    v5 = _s21HomeFrameworkObserverCMa();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtCE4HomeCV13HomeDataModel9HomeState6Stream21HomeFrameworkObserver_stream] = v4;
    v11.receiver = v6;
    v11.super_class = v5;
    v7 = objc_msgSendSuper2(&v11, sel_init);
    [v1 addHomeObserver_];
    [v1 addSoftwareUpdateControllerV2Observer_];
    v8 = objc_opt_self();
    v9 = [v8 sharedInstance];
    [v9 addObserver_];

    v10 = [v8 sharedInstance];
    [v7 executionEnvironmentRunningStateDidChange_];

    [v1 setHomeStateStreamHomeFrameworkObserver_];
    [v1 setHomeStateStreamDelegatePackage_];
  }
}

Swift::Void __swiftcall HFHomeKitDispatcher.disconnectHomeStateStream()()
{
  sub_20DD63B44();
  if (sub_20DD639E4())
  {
    if ([v0 homeStateStreamDelegatePackage])
    {
      sub_20DD654E4();
      swift_unknownObjectRelease();
    }

    else
    {
      v3 = 0u;
      v4 = 0u;
    }

    v5 = v3;
    v6 = v4;
    if (*(&v4 + 1))
    {
      sub_20DD63A94();
      if (swift_dynamicCast())
      {
        [v0 removeHomeManagerObserver_];
        swift_unknownObjectRelease();
        [v0 removeHomeObserver_];
        swift_unknownObjectRelease();
        [v0 removeAccessoryObserver_];
        swift_unknownObjectRelease();
        [v0 removeMediaSessionObserver_];
        swift_unknownObjectRelease();
        [v0 removeMediaObjectObserver_];
        swift_unknownObjectRelease();
        [v0 removeResidentDeviceObserver_];
        swift_unknownObjectRelease();
        [v0 removeLightObserver_];
        swift_unknownObjectRelease();
        [v0 removeSymptomsHandlerObserver_];
        swift_unknownObjectRelease();
        [v0 removeSoftwareUpdateObserver_];
        swift_unknownObjectRelease();
        [v0 removeSoftwareUpdateControllerV2Observer_];

        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_20D9D76EC(&v5, &unk_27C843A80, &qword_20DD94100);
    }

    if ([v0 homeStateStreamHomeFrameworkObserver])
    {
      sub_20DD654E4();
      swift_unknownObjectRelease();
    }

    else
    {
      v3 = 0u;
      v4 = 0u;
    }

    v5 = v3;
    v6 = v4;
    if (*(&v4 + 1))
    {
      _s21HomeFrameworkObserverCMa();
      if (swift_dynamicCast())
      {
        [v0 removeHomeObserver_];
        [v0 removeSoftwareUpdateControllerV2Observer_];
        v1 = [objc_opt_self() sharedInstance];
        [v1 removeObserver_];
      }
    }

    else
    {
      sub_20D9D76EC(&v5, &unk_27C843A80, &qword_20DD94100);
    }

    [v0 setHomeStateStreamDelegatePackage_];
    [v0 setHomeStateStreamHomeFrameworkObserver_];
  }
}

Swift::Void __swiftcall HFHomeKitDispatcher.configureHomeStateStream(with:)(HMHomeManager with)
{
  v1 = sub_20DD639C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DD63B44();
  if (sub_20DD639E4())
  {
    MEMORY[0x20F324A90]();
    (*(v2 + 104))(v4, *MEMORY[0x277D15390], v1);
    sub_20DD63AC4();

    (*(v2 + 8))(v4, v1);
  }
}

Swift::Void __swiftcall HFHomeKitDispatcher.configureHomeStateStream(with:)(HMHome with)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_20DD63B44();
  if (sub_20DD639E4())
  {
    sub_20DD63BB4();
    v5 = sub_20DD65114();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    *(swift_allocObject() + 16) = with;
    v6 = with.super.isa;
    sub_20DD63B94();

    sub_20D9D76EC(v4, &qword_27C8443F0, &qword_20DD93820);
  }
}

uint64_t sub_20DA7471C(void *a1)
{
  sub_20DD63B44();
  MEMORY[0x20F324A90]();
  v2 = a1;
  sub_20DD639B4();
}

id sub_20DA749AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CD1C60]) initWithOptions:-1 cachePolicy:a2];
  [v4 setDiscretionary_];
  result = [v4 setAdaptive_];
  *a3 = v4;
  return result;
}

id sub_20DA74A40(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

id sub_20DA74AE8(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v6 = *a4;
  }

  else
  {
    swift_once();
    v6 = *a4;
  }

  return v6;
}

uint64_t HFHomeActivityState.init(homeActivityState:transitionalStateETA:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((a2 & 1) != 0 || a1 <= 3)
  {
    goto LABEL_2;
  }

  if (a1 > 5)
  {
    if (a1 == 6 || a1 == 7)
    {
      goto LABEL_9;
    }

LABEL_2:
    sub_20D9D76EC(a3, &unk_27C843810, &qword_20DD93F00);
    goto LABEL_3;
  }

  if (a1 == 4)
  {
    goto LABEL_2;
  }

LABEL_9:
  sub_20DA47868(a3, a4);
LABEL_3:
  type metadata accessor for HFHomeActivityState(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for HFHomeActivityState(uint64_t a1)
{
  result = qword_27C844B10;
  if (!qword_27C844B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HFHomeActivityState.hm_homeActivityState.getter()
{
  v1 = type metadata accessor for HFHomeActivityState(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DA74E60(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        return 3;
      }

      else
      {
        return 4;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    v6 = EnumCaseMultiPayload;
    result = 0;
    if (v6 == 2)
    {
      sub_20D9D76EC(v3, &unk_27C843810, &qword_20DD93F00);
      return 7;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_20D9D76EC(v3, &unk_27C843810, &qword_20DD93F00);
    return 6;
  }

  else
  {
    sub_20D9D76EC(v3, &unk_27C843810, &qword_20DD93F00);
    return 5;
  }

  return result;
}

uint64_t sub_20DA74E60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HFHomeActivityState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t HFHomeActivityState.title.getter()
{
  v1 = type metadata accessor for HFHomeActivityState(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DA74E60(v0, v3);
  if (swift_getEnumCaseMultiPayload() > 2)
  {
    v5 = sub_20DD64E74();
    v8 = HFLocalizedString(v5);

    v7 = sub_20DD64EB4();
  }

  else
  {
    v4 = sub_20DD64E74();
    v6 = HFLocalizedString(v4);

    v7 = sub_20DD64EB4();
    sub_20D9D76EC(v3, &unk_27C843810, &qword_20DD93F00);
  }

  return v7;
}

BOOL HFHomeActivityState.isTransitionalState.getter()
{
  v1 = type metadata accessor for HFHomeActivityState(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DA74E60(v0, v3);
  v4 = swift_getEnumCaseMultiPayload() & 0xFFFFFFFC;
  if (v4 != 4)
  {
    sub_20DA75200(v3);
  }

  return v4 != 4;
}

uint64_t sub_20DA75200(uint64_t a1)
{
  v2 = type metadata accessor for HFHomeActivityState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t HFHomeActivityState.mainState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for HFHomeActivityState(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DA74E60(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6 || EnumCaseMultiPayload == 7)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_20D9D76EC(v7, &unk_27C843810, &qword_20DD93F00);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 4)
    {
      goto LABEL_14;
    }

LABEL_9:
    (*(v5 + 56))(a1, 1, 1, v4);
    return sub_20DA75200(v7);
  }

  sub_20D9D76EC(v7, &unk_27C843810, &qword_20DD93F00);
LABEL_14:
  swift_storeEnumTagMultiPayload();
  return (*(v5 + 56))(a1, 0, 1, v4);
}

uint64_t HFHomeActivityState.nextState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for HFHomeActivityState(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DA74E60(v2, v7);
  if (swift_getEnumCaseMultiPayload() > 2)
  {
    (*(v5 + 56))(a1, 1, 1, v4);
    return sub_20DA75200(v7);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(a1, 0, 1, v4);
    return sub_20D9D76EC(v7, &unk_27C843810, &qword_20DD93F00);
  }
}

uint64_t HFHomeActivityState.transitionalStateETA.getter()
{
  v1 = sub_20DD63554();
  v48 = *(v1 - 8);
  v49 = v1;
  MEMORY[0x28223BE20](v1);
  v46 = v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_20DD63574();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844AF0, &qword_20DD96860);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v42 - v5;
  v7 = sub_20DD636C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HFHomeActivityState(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v43 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v42 - v21;
  sub_20DA74E60(v0, v16);
  if (swift_getEnumCaseMultiPayload() > 2)
  {
    sub_20DA75200(v16);
  }

  else
  {
    sub_20DA47868(v16, v22);
    sub_20DA47868(v22, v20);
    if ((*(v8 + 48))(v20, 1, v7) == 1)
    {
      sub_20D9D76EC(v20, &unk_27C843810, &qword_20DD93F00);
    }

    else
    {
      v24 = v10;
      (*(v8 + 32))(v10, v20, v7);
      HFHomeActivityState.nextState.getter(v6);
      if ((*(v12 + 48))(v6, 1, v11) != 1)
      {
        v25 = v43;
        sub_20DA75B04(v6, v43);
        v26 = sub_20DD64E74();
        v27 = HFLocalizedString(v26);

        v28 = sub_20DD64EB4();
        v42[1] = v29;
        v42[2] = v28;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DF0, &qword_20DD96310);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_20DD94280;
        v31 = HFHomeActivityState.title.getter();
        v33 = v32;
        *(v30 + 56) = MEMORY[0x277D837D0];
        v34 = v24;
        v35 = sub_20DA52BE8();
        *(v30 + 64) = v35;
        *(v30 + 32) = v31;
        *(v30 + 40) = v33;
        v36 = v44;
        sub_20DD63564();
        v37 = v46;
        sub_20DD63544();
        v38 = sub_20DD636A4();
        v40 = v39;
        (*(v48 + 8))(v37, v49);
        (*(v45 + 8))(v36, v47);
        *(v30 + 96) = MEMORY[0x277D837D0];
        *(v30 + 104) = v35;
        *(v30 + 72) = v38;
        *(v30 + 80) = v40;
        v41 = sub_20DD64EC4();

        sub_20DA75200(v25);
        (*(v8 + 8))(v34, v7);
        return v41;
      }

      (*(v8 + 8))(v10, v7);
      sub_20D9D76EC(v6, &qword_27C844AF0, &qword_20DD96860);
    }
  }

  return 0;
}

uint64_t sub_20DA75B04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HFHomeActivityState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static HFHomeActivityState.allCases.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844AF8, &qword_20DD96318);
  type metadata accessor for HFHomeActivityState(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20DD96300;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  return v0;
}

uint64_t HFHomeActivityState.symbolName.getter()
{
  v1 = type metadata accessor for HFHomeActivityState(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DA74E60(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        return 0x62756F642E646562;
      }

      else
      {
        return 0x656E616C70726961;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        return 0xD000000000000013;
      }

      return 0xD000000000000015;
    }
  }

  else
  {
    if ((EnumCaseMultiPayload - 1) < 2)
    {
      sub_20D9D76EC(v3, &unk_27C843810, &qword_20DD93F00);
      return 0xD000000000000013;
    }

    if (EnumCaseMultiPayload)
    {
      sub_20DA75200(v3);
      return 0;
    }

    else
    {
      sub_20D9D76EC(v3, &unk_27C843810, &qword_20DD93F00);
      return 0x6174732E6E6F6F6DLL;
    }
  }
}

unint64_t sub_20DA75E1C()
{
  result = qword_27C844B00;
  if (!qword_27C844B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C844B08, &qword_20DD96320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C844B00);
  }

  return result;
}

uint64_t sub_20DA75E80@<X0>(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844AF8, &qword_20DD96318);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20DD96300;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  result = swift_storeEnumTagMultiPayload();
  *a2 = v3;
  return result;
}

void sub_20DA75FD4(uint64_t a1)
{
  sub_20DA76038();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_20DA76038()
{
  if (!qword_27C844B20)
  {
    sub_20DA47528(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27C844B20);
    }
  }
}

id sub_20DA76080()
{
  result = [objc_opt_self() standardUserDefaults];
  qword_27C84C668 = result;
  return result;
}

unint64_t HomeKitObjectSettingsStore.StorageLocation.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t *sub_20DA76110@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t static HomeKitObjectSettingsStore.value<A>(for:on:in:)@<X0>(id *a1@<X0>, void *a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  if (a4)
  {
    if (v7)
    {
      v14 = *a1;
LABEL_11:
      result = sub_20DD659B4();
      __break(1u);
      return result;
    }
  }

  else if (a3 != 1)
  {
    if (!a3)
    {
      v14 = *a1;
      v15 = v8;
      return sub_20DA762E8(&v14, a2, a5, a6);
    }

    v14 = a3;
    goto LABEL_11;
  }

  v16 = &unk_2825629C8;
  v17 = &unk_282541CB0;
  v18 = &unk_2825601D8;
  v10 = swift_dynamicCastObjCProtocolConditional();
  if (v10)
  {
    v11 = v10;
    v14 = v7;
    v15 = v8;
    swift_unknownObjectRetain();
    sub_20DA76774(v11, &v14, a5, a6);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_20DA76294();
    swift_allocError();
    *v13 = 0;
    return swift_willThrow();
  }
}

unint64_t sub_20DA76294()
{
  result = qword_27C844BF0;
  if (!qword_27C844BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C844BF0);
  }

  return result;
}

uint64_t sub_20DA762E8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_20DD63744();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    *&v24 = *a1;
    result = sub_20DD659B4();
    __break(1u);
  }

  else
  {
    v12 = [a2 uniqueIdentifier];
    sub_20DD63714();

    if (qword_27C8424D8 != -1)
    {
      swift_once();
    }

    v13 = qword_27C84C668;
    v14 = sub_20DD64E74();
    v15 = [v13 dictionaryForKey_];

    if (v15)
    {
      v16 = sub_20DD64DC4();

      v17 = sub_20DD636E4();
      if (*(v16 + 16))
      {
        v26 = a4;
        v19 = sub_20D9CB170(v17, v18);
        v21 = v20;

        if (v21)
        {
          sub_20D9D7174(*(v16 + 56) + 32 * v19, &v24);
          (*(v9 + 8))(v11, v8);
        }

        else
        {

          (*(v9 + 8))(v11, v8);
          v24 = 0u;
          v25 = 0u;
        }

        a4 = v26;
      }

      else
      {

        (*(v9 + 8))(v11, v8);
        v24 = 0u;
        v25 = 0u;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A80, &qword_20DD94100);
      v23 = swift_dynamicCast();
      return (*(*(a3 - 8) + 56))(a4, v23 ^ 1u, 1, a3);
    }

    else
    {
      (*(v9 + 8))(v11, v8);
      return (*(*(a3 - 8) + 56))(a4, 1, 1, a3);
    }
  }

  return result;
}

uint64_t sub_20DA76644(uint64_t a1, int a2, id a3)
{
  if (a1)
  {
    result = sub_20DD659B4();
    __break(1u);
  }

  else
  {
    v3 = [a3 applicationData];
    v4 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v5 = sub_20DD64E74();
    v6 = [v4 initWithString_];

    [v3 objectForKey_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844CA0, &unk_20DD96670);
    if (swift_dynamicCast())
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_20DA76774@<X0>(id a1@<X1>, id *a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2)
  {
    result = sub_20DD659B4();
    __break(1u);
  }

  else
  {
    v6 = [a1 applicationData];
    v7 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v8 = sub_20DD64E74();
    v9 = [v7 initWithString_];

    [v6 objectForKey_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844CA0, &unk_20DD96670);
    v10 = swift_dynamicCast();
    return (*(*(a3 - 8) + 56))(a4, v10 ^ 1u, 1, a3);
  }

  return result;
}

id static HomeKitObjectSettingsStore.set<A>(value:for:on:in:)(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, char a5, uint64_t a6)
{
  v9 = *a2;
  v10 = a2[1];
  if ((a5 & 1) == 0)
  {
    if (a4 != 1)
    {
      if (a4)
      {
        v18 = a4;
        goto LABEL_13;
      }

      v18 = *a2;
      v19 = v10;
      v16 = sub_20DA76A48(a1, &v18, a3, a6);
      if (!v7)
      {
        return v16;
      }

      return v6;
    }

LABEL_5:
    v20 = &unk_2825629C8;
    v21 = &unk_282541CB0;
    v22 = &unk_2825601D8;
    v12 = swift_dynamicCastObjCProtocolConditional();
    if (v12)
    {
      v13 = v12;
      v18 = v9;
      v19 = v10;
      swift_unknownObjectRetain();
      sub_20DA77244(a1, &v18, v13, a6);
      v6 = v14;
      swift_unknownObjectRelease();
    }

    else
    {
      sub_20DA76294();
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
    }

    return v6;
  }

  if (!v9)
  {
    goto LABEL_5;
  }

  v18 = *a2;
LABEL_13:
  result = sub_20DD659B4();
  __break(1u);
  return result;
}

id sub_20DA76A48(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v38 = a1;
  v39 = sub_20DD65494();
  v7 = *(v39 - 8);
  v8 = MEMORY[0x28223BE20](v39);
  v10 = &v36 - v9;
  v11 = *(a4 - 8);
  MEMORY[0x28223BE20](v8);
  v37 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20DD63744();
  v40 = *(v13 - 8);
  v41 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a2)
  {
    v16 = [a3 uniqueIdentifier];
    sub_20DD63714();

    if (qword_27C8424D8 != -1)
    {
      swift_once();
    }

    v17 = qword_27C84C668;
    v18 = sub_20DD64E74();
    v19 = [v17 dictionaryForKey_];

    if (v19)
    {
      v20 = sub_20DD64DC4();
    }

    else
    {
      v20 = sub_20D9D4C24(MEMORY[0x277D84F90]);
    }

    v46 = v20;
    v21 = v39;
    (*(v7 + 16))(v10, v38, v39);
    if ((*(v11 + 48))(v10, 1, a4) == 1)
    {
      (*(v7 + 8))(v10, v21);
      v22 = sub_20DD636E4();
      sub_20DA275F0(v22, v23, &v44);

      sub_20D9F8608(&v44);
      if (*(v46 + 16))
      {
LABEL_9:
        v24 = qword_27C84C668;
        v25 = sub_20DD64DB4();

        v26 = sub_20DD64E74();
        [v24 setObject:v25 forKey:v26];

LABEL_12:
        v34 = [objc_opt_self() futureWithNoResult];
        (*(v40 + 8))(v15, v41);
        return v34;
      }
    }

    else
    {
      v27 = v37;
      (*(v11 + 32))(v37, v10, a4);
      v28 = sub_20DD636E4();
      v30 = v29;
      v45 = a4;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
      (*(v11 + 16))(boxed_opaque_existential_1, v27, a4);
      sub_20D9D77C8(&v44, v43);
      v32 = v46;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v32;
      sub_20D9D01B0(v43, v28, v30, isUniquelyReferenced_nonNull_native);

      (*(v11 + 8))(v27, a4);
      v46 = v42;
      if (*(v42 + 16))
      {
        goto LABEL_9;
      }
    }

    v25 = qword_27C84C668;
    v26 = sub_20DD64E74();
    [v25 removeObjectForKey_];
    goto LABEL_12;
  }

  *&v44 = *a2;
  result = sub_20DD659B4();
  __break(1u);
  return result;
}

id sub_20DA76FAC(uint64_t a1, id a2, uint64_t a3, uint64_t a4, id a5)
{
  if (a3)
  {
    result = sub_20DD659B4();
    __break(1u);
  }

  else
  {
    v7 = [a5 applicationData];
    if (a2)
    {
      v8 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v9 = sub_20DD64E74();
      a2 = [v8 initWithString_];
    }

    v10 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v11 = sub_20DD64E74();
    v12 = [v10 initWithString_];

    [v7 setObject:a2 forKey:v12];
    v13 = swift_allocObject();
    *(v13 + 16) = a5;
    *(v13 + 24) = v7;
    v25 = sub_20DA78A60;
    v26 = v13;
    v21 = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_20DA4A9B0;
    v24 = &block_descriptor_13;
    v14 = _Block_copy(&v21);
    v15 = objc_opt_self();
    swift_unknownObjectRetain();
    v16 = v7;
    v17 = [v15 futureWithErrorOnlyHandlerAdapterBlock_];
    _Block_release(v14);

    v25 = _s4Home23ItemSelectionControllerPAAE23selectionCompleteFutureSo8NAFutureCyyXlGvg_0;
    v26 = 0;
    v21 = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_20DA77A10;
    v24 = &block_descriptor_14;
    v18 = _Block_copy(&v21);
    v19 = [v17 flatMap_];
    swift_unknownObjectRelease();

    _Block_release(v18);
    return v19;
  }

  return result;
}

void sub_20DA77244(uint64_t a1, uint64_t *a2, id a3, uint64_t a4)
{
  if (*a2)
  {
    sub_20DD659B4();
    __break(1u);
  }

  else
  {
    v8 = [a3 applicationData];
    v9 = sub_20DA774D0(a1, a4);
    if (v4)
    {
    }

    else
    {
      v10 = v9;
      v11 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v12 = sub_20DD64E74();
      v13 = [v11 initWithString_];

      [v8 setObject:v10 forKey:v13];
      v14 = swift_allocObject();
      *(v14 + 16) = a3;
      *(v14 + 24) = v8;
      v24 = sub_20DA78B1C;
      v25 = v14;
      v20 = MEMORY[0x277D85DD0];
      v21 = 1107296256;
      v22 = sub_20DA4A9B0;
      v23 = &block_descriptor_24;
      v15 = _Block_copy(&v20);
      v16 = objc_opt_self();
      swift_unknownObjectRetain();
      v17 = v8;
      v18 = [v16 futureWithErrorOnlyHandlerAdapterBlock_];
      _Block_release(v15);

      v24 = _s4Home23ItemSelectionControllerPAAE23selectionCompleteFutureSo8NAFutureCyyXlGvg_0;
      v25 = 0;
      v20 = MEMORY[0x277D85DD0];
      v21 = 1107296256;
      v22 = sub_20DA77A10;
      v23 = &block_descriptor_27;
      v19 = _Block_copy(&v20);
      [v18 flatMap_];
      swift_unknownObjectRelease();

      _Block_release(v19);
    }
  }
}

id sub_20DA774D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20DD65494();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v29 - v7;
  v9 = *(a2 - 8);
  v10 = MEMORY[0x28223BE20](v6);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v29 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v29 - v16;
  (*(v5 + 16))(v8, a1, v4);
  if ((*(v9 + 48))(v8, 1, a2) == 1)
  {
    (*(v5 + 8))(v8, v4);
    return 0;
  }

  (*(v9 + 32))(v17, v8, a2);
  v19 = *(v9 + 16);
  v19(v15, v17, a2);
  if (swift_dynamicCast())
  {
    v20 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v21 = sub_20DD64E74();

    v22 = [v20 initWithString_];

    v23 = *(v9 + 8);
    v23(v17, a2);
    v23(v15, a2);
    return v22;
  }

  if (swift_dynamicCast())
  {
    sub_20DA78AC0();
    v24 = sub_20DD65424();
LABEL_11:
    v25 = v24;
    v26 = *(v9 + 8);
    v26(v17, a2);
    v26(v15, a2);
    return v25;
  }

  if (swift_dynamicCast())
  {
    sub_20DA78AC0();
    v24 = sub_20DD65434();
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    sub_20DA78AC0();
    v24 = sub_20DD65414();
    goto LABEL_11;
  }

  v27 = *(v9 + 8);
  v27(v15, a2);
  v19(v12, v17, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844CB0, &unk_20DD955C0);
  if (swift_dynamicCast())
  {
    v27(v17, a2);
    return v29[2];
  }

  else
  {
    sub_20DA76294();
    swift_allocError();
    *v28 = 1;
    swift_willThrow();
    return (v27)(v17, a2);
  }
}

void sub_20DA77944(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_20DA899CC;
  v7[3] = &block_descriptor_17;
  v6 = _Block_copy(v7);

  [a3 hf:a4 updateApplicationData:1 handleError:v6 completionHandler:?];
  _Block_release(v6);
}

id sub_20DA77A10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v4 = v2(v3);

  swift_unknownObjectRelease();

  return v4;
}

uint64_t HomeKitObjectSettingsStore.Errors.hashValue.getter()
{
  v1 = *v0;
  sub_20DD65A64();
  MEMORY[0x20F3269D0](v1);
  return sub_20DD65AA4();
}

id HomeKitObjectSettingsStore.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HomeKitObjectSettingsStore();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void *sub_20DA77B90@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

void *static HomeKitObjectSettingsStore.stringValueForSetting(_:on:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    goto LABEL_13;
  }

  if (qword_27C8424E0 != -1)
  {
    swift_once();
  }

  if (qword_27C84C670)
  {
LABEL_13:
    result = sub_20DD659B4();
    __break(1u);
  }

  else
  {
    v2 = qword_27C84C678;
    result = swift_dynamicCastObjCProtocolConditional();
    if (result)
    {
      v4 = result;
      swift_unknownObjectRetain();
      sub_20DA76644(0, v2, v4);
      v6 = v5;
      swift_unknownObjectRelease();
      if (v6)
      {
        sub_20DD64E74();

        if (swift_dynamicCast())
        {
          return v7;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void *_s4Home0A22KitObjectSettingsStoreC8tileSize3forSo015HFTileResizableG0aSgSo06HFHomebC0_p_tFZ_0(uint64_t a1)
{
  if (qword_27C8424E0 != -1)
  {
    swift_once();
  }

  if (qword_27C84C670)
  {
    result = sub_20DD659B4();
    __break(1u);
  }

  else
  {
    v1 = qword_27C84C678;
    result = swift_dynamicCastObjCProtocolConditional();
    if (result)
    {
      v3 = result;
      swift_unknownObjectRetain();
      sub_20DA76644(0, v1, v3);
      v5 = v4;
      swift_unknownObjectRelease();
      if (v5)
      {
        v6 = sub_20DD64E74();

        return v6;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

id _s4Home0A22KitObjectSettingsStoreC3set8tileSize3forSo8NAFutureCySo6NSNullCGSo015HFTileResizableH0aSg_So06HFHomebC0_ptFZ_0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = sub_20DD64EB4();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  if (qword_27C8424E0 != -1)
  {
    swift_once();
  }

  if (qword_27C84C670)
  {
    result = sub_20DD659B4();
    __break(1u);
  }

  else
  {
    v5 = qword_27C84C678;
    v6 = swift_dynamicCastObjCProtocolConditional();
    if (v6)
    {
      v7 = v6;
      swift_unknownObjectRetain();
      v12 = sub_20DA76FAC(v2, v4, 0, v5, v7);
      swift_unknownObjectRelease();

      return v12;
    }

    else
    {

      sub_20DA76294();
      v8 = swift_allocError();
      *v9 = 0;
      swift_willThrow();
      v10 = sub_20DD63494();
      v11 = [objc_opt_self() futureWithError_];

      return v11;
    }
  }

  return result;
}

void *sub_20DA783A0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    goto LABEL_11;
  }

  if (qword_27C8424E0 != -1)
  {
    swift_once();
  }

  if (qword_27C84C670)
  {
LABEL_11:
    result = sub_20DD659B4();
    __break(1u);
  }

  else
  {
    v2 = qword_27C84C678;
    result = swift_dynamicCastObjCProtocolConditional();
    if (result)
    {
      v4 = result;
      swift_unknownObjectRetain();
      sub_20DA76644(0, v2, v4);
      v6 = v5;
      swift_unknownObjectRelease();
      if (v6)
      {
        v7 = sub_20DD64E74();

        return v7;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_20DA784DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if (a1)
    {
      swift_unknownObjectRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_20DA76294();
        v8 = swift_allocError();
        *v9 = 1;
LABEL_13:
        swift_willThrow();
        v11 = sub_20DD63494();
        v12 = [objc_opt_self() futureWithError_];

        return v12;
      }

      v4 = v15;
      v3 = v16;
    }

    else
    {
      v4 = 0;
      v3 = 0;
    }

    if (qword_27C8424E0 != -1)
    {
      swift_once();
    }

    if (!qword_27C84C670)
    {
      v5 = qword_27C84C678;
      v6 = swift_dynamicCastObjCProtocolConditional();
      if (v6)
      {
        v7 = v6;
        swift_unknownObjectRetain();
        v13 = sub_20DA76FAC(v4, v3, 0, v5, v7);
        swift_unknownObjectRelease();

        return v13;
      }

      sub_20DA76294();
      v8 = swift_allocError();
      *v10 = 0;
      goto LABEL_13;
    }
  }

  result = sub_20DD659B4();
  __break(1u);
  return result;
}

unint64_t sub_20DA78708()
{
  result = qword_27C844BF8;
  if (!qword_27C844BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C844BF8);
  }

  return result;
}

unint64_t sub_20DA78760()
{
  result = qword_27C844C00;
  if (!qword_27C844C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C844C00);
  }

  return result;
}

unint64_t sub_20DA787B8()
{
  result = qword_27C844C08[0];
  if (!qword_27C844C08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C844C08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeKitObjectSettingsStore.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeKitObjectSettingsStore.Errors(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_20DA78978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_20DA789CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_20DA78A14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_20DA78AC0()
{
  result = qword_27C8433B0;
  if (!qword_27C8433B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C8433B0);
  }

  return result;
}

id MatterAccessoryLikeItemProvider.__allocating_init(in:in:filter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[qword_27C84C680] = a1;
  v10 = &v9[qword_27C844CB8];
  *v10 = a3;
  *(v10 + 1) = a4;
  sub_20D9D7558(a2, &v9[qword_27C84C688], &unk_27C843A70, &qword_20DD94260);
  v13.receiver = v9;
  v13.super_class = v4;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  sub_20D9D76EC(a2, &unk_27C843A70, &qword_20DD94260);
  return v11;
}

void (*sub_20DA78C00(void *a1, void *a2, void (**a3)(void, void), uint64_t a4, uint64_t (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8))(char *, uint64_t)
{
  v147 = a6;
  v146 = a5;
  v157 = a4;
  v154 = a3;
  v159 = sub_20DD63FE4();
  v156 = *(v159 - 8);
  v14 = MEMORY[0x28223BE20](v159);
  v149 = &v140 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v145 = &v140 - v17;
  MEMORY[0x28223BE20](v16);
  v155 = &v140 - v18;
  v19 = a2[3];
  v158 = a2;
  __swift_project_boxed_opaque_existential_0(a2, v19);
  v20 = MEMORY[0x277D84F90];
  v165 = sub_20D9D674C(MEMORY[0x277D84F90]);
  v162 = a7;
  v163 = a8;
  v144 = v8;
  v164 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844D08, &qword_20DD96718);
  sub_20DD64F84();
  v21 = v166;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v148 = v20;
  v165 = sub_20D9D6934(v20);
  v160 = v154;
  v161 = v157;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844D10, &unk_20DD96720);
  sub_20DD64F84();
  v157 = v9;
  v22 = v166;

  v23 = sub_20D9F96F8();

  v25 = sub_20DA8940C(v24, v23);

  v26 = sub_20D9F96F8();

  v28 = sub_20DA8940C(v27, v26);

  v150 = v21;
  v29 = sub_20D9F96F8();

  v32 = sub_20DA7CF70(v30, v29, v31);
  v151 = v22;

  if (qword_27C842418 != -1)
  {
LABEL_54:
    swift_once();
  }

  v33 = sub_20DD64C44();
  v34 = __swift_project_value_buffer(v33, qword_27C84C588);

  v35 = sub_20DD64C24();
  v36 = sub_20DD65354();

  v37 = os_log_type_enabled(v35, v36);
  v152 = v25;
  v153 = v32;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v154 = v28;
    v39 = v38;
    v40 = swift_slowAlloc();
    v166 = v40;
    *v39 = 136315394;
    v41 = sub_20DD65B04();
    v43 = sub_20D9E0B38(v41, v42, &v166);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2080;
    sub_20DA7F500(&qword_27C844380, MEMORY[0x277D15B60], MEMORY[0x277D15B68]);
    v44 = sub_20DD651F4();
    v46 = sub_20D9E0B38(v44, v45, &v166);

    *(v39 + 14) = v46;
    _os_log_impl(&dword_20D9BF000, v35, v36, "%s-diffItems: newKeys=%s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v40, -1, -1);
    MEMORY[0x20F327D10](v39, -1, -1);
  }

  v47 = sub_20DD64C24();
  v48 = sub_20DD65354();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v166 = v50;
    *v49 = 136315394;
    v51 = sub_20DD65B04();
    v53 = sub_20D9E0B38(v51, v52, &v166);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2080;
    sub_20DA7F500(&qword_27C844380, MEMORY[0x277D15B60], MEMORY[0x277D15B68]);
    v54 = sub_20DD651F4();
    v56 = v55;

    v57 = sub_20D9E0B38(v54, v56, &v166);

    *(v49 + 14) = v57;
    _os_log_impl(&dword_20D9BF000, v47, v48, "%s-diffItems: removedKeys=%s", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v50, -1, -1);
    MEMORY[0x20F327D10](v49, -1, -1);
  }

  else
  {
  }

  v58 = sub_20DD64C24();
  v59 = sub_20DD65354();

  v60 = os_log_type_enabled(v58, v59);
  v143 = v34;
  if (v60)
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v166 = v62;
    *v61 = 136315394;
    v63 = sub_20DD65B04();
    v65 = sub_20D9E0B38(v63, v64, &v166);

    *(v61 + 4) = v65;
    *(v61 + 12) = 2080;
    sub_20DA7F500(&qword_27C844380, MEMORY[0x277D15B60], MEMORY[0x277D15B68]);
    v66 = sub_20DD651F4();
    v68 = sub_20D9E0B38(v66, v67, &v166);

    *(v61 + 14) = v68;
    _os_log_impl(&dword_20D9BF000, v58, v59, "%s-diffItems: existingKeys=%s", v61, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v62, -1, -1);
    MEMORY[0x20F327D10](v61, -1, -1);
  }

  v69 = v152;
  v32 = v158[4];
  __swift_project_boxed_opaque_existential_0(v158, v158[3]);
  v165 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844CE0, &qword_20DD966A0);
  v70 = v157;
  sub_20DD64F84();
  v157 = v70;
  v141 = v166;
  v71 = MEMORY[0x277D84F90];
  v166 = MEMORY[0x277D84F90];
  v72 = v69 + 56;
  v73 = 1 << *(v69 + 32);
  v74 = -1;
  if (v73 < 64)
  {
    v74 = ~(-1 << v73);
  }

  v75 = v74 & *(v69 + 56);
  v28 = (v73 + 63) >> 6;
  v158 = (v156 + 16);
  v154 = (v156 + 8);

  v25 = 0;
  v142 = v71;
  while (1)
  {
    if (!v75)
    {
      v76 = v155;
      while (1)
      {
        v77 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          goto LABEL_49;
        }

        if (v77 >= v28)
        {
          break;
        }

        v75 = *(v72 + 8 * v77);
        ++v25;
        if (v75)
        {
          v25 = v77;
          goto LABEL_19;
        }
      }

      v89 = sub_20D9F922C(v142);

      v166 = MEMORY[0x277D84F90];
      v32 = v153 + 7;
      v90 = 1 << *(v153 + 32);
      v91 = -1;
      if (v90 < 64)
      {
        v91 = ~(-1 << v90);
      }

      v92 = v91 & v153[7];
      v25 = (v90 + 63) >> 6;

      v28 = 0;
      while (1)
      {
        v93 = v149;
        if (!v92)
        {
          break;
        }

LABEL_34:
        (*(v156 + 16))(v149, v153[6] + *(v156 + 72) * (__clz(__rbit64(v92)) | (v28 << 6)), v159);
        v95 = v150;
        if (!*(v150 + 16))
        {
          goto LABEL_52;
        }

        v96 = sub_20D9CB800(v93);
        if ((v97 & 1) == 0)
        {
          goto LABEL_53;
        }

        v98 = *v154;
        v99 = *(*(v95 + 56) + 8 * v96);
        v100 = v98(v93, v159);
        MEMORY[0x20F325F00](v100);
        if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v152 = *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_20DD65014();
        }

        v92 &= v92 - 1;
        sub_20DD65054();
        v148 = v166;
      }

      while (1)
      {
        v94 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v94 >= v25)
        {

          v101 = sub_20D9F922C(v148);

          v102 = v157;
          sub_20DA7EFCC(v141, v89, v101);

          v103 = sub_20DD64C24();
          v104 = sub_20DD65354();

          v105 = os_log_type_enabled(v103, v104);
          v157 = v102;
          v155 = v89;
          if (v105)
          {
            v106 = swift_slowAlloc();
            v107 = swift_slowAlloc();
            v166 = v107;
            *v106 = 136315394;
            v108 = sub_20DD65B04();
            v110 = sub_20D9E0B38(v108, v109, &v166);

            *(v106 + 4) = v110;
            *(v106 + 12) = 2080;
            type metadata accessor for MatterAccessoryLikeItem(0);
            sub_20DA7F500(&qword_27C843B68, type metadata accessor for MatterAccessoryLikeItem, MEMORY[0x277D85378]);
            v111 = sub_20DD651F4();
            v113 = sub_20D9E0B38(v111, v112, &v166);

            *(v106 + 14) = v113;
            _os_log_impl(&dword_20D9BF000, v103, v104, "%s-diffItems: newItems=%s", v106, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x20F327D10](v107, -1, -1);
            MEMORY[0x20F327D10](v106, -1, -1);
          }

          v114 = sub_20DD64C24();
          v115 = sub_20DD65354();

          if (os_log_type_enabled(v114, v115))
          {
            v116 = swift_slowAlloc();
            v117 = swift_slowAlloc();
            v166 = v117;
            *v116 = 136315394;
            v118 = sub_20DD65B04();
            v120 = sub_20D9E0B38(v118, v119, &v166);

            *(v116 + 4) = v120;
            *(v116 + 12) = 2080;
            type metadata accessor for MatterAccessoryLikeItem(0);
            sub_20DA7F500(&qword_27C843B68, type metadata accessor for MatterAccessoryLikeItem, MEMORY[0x277D85378]);
            v121 = sub_20DD651F4();
            v123 = sub_20D9E0B38(v121, v122, &v166);

            *(v116 + 14) = v123;
            _os_log_impl(&dword_20D9BF000, v114, v115, "%s-diffItems: stillExistingItems=%s", v116, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x20F327D10](v117, -1, -1);
            MEMORY[0x20F327D10](v116, -1, -1);
          }

          v124 = sub_20DD64C24();
          v125 = sub_20DD65354();

          if (os_log_type_enabled(v124, v125))
          {
            v126 = swift_slowAlloc();
            v127 = swift_slowAlloc();
            v166 = v127;
            *v126 = 136315394;
            v128 = sub_20DD65B04();
            v130 = sub_20D9E0B38(v128, v129, &v166);

            *(v126 + 4) = v130;
            *(v126 + 12) = 2080;
            type metadata accessor for MatterAccessoryLikeItem(0);
            sub_20DA7F500(&qword_27C843B68, type metadata accessor for MatterAccessoryLikeItem, MEMORY[0x277D85378]);
            v131 = sub_20DD651F4();
            v133 = sub_20D9E0B38(v131, v132, &v166);

            *(v126 + 14) = v133;
            _os_log_impl(&dword_20D9BF000, v124, v125, "%s-diffItems: removedItems=%s", v126, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x20F327D10](v127, -1, -1);
            MEMORY[0x20F327D10](v126, -1, -1);
          }

          v134 = objc_allocWithZone(HFItemProviderReloadResults);
          type metadata accessor for MatterAccessoryLikeItem(0);
          sub_20DA7F500(&qword_27C843B68, type metadata accessor for MatterAccessoryLikeItem, MEMORY[0x277D85378]);
          v135 = sub_20DD651C4();

          v136 = sub_20DD651C4();

          v137 = sub_20DD651C4();

          v138 = [v134 initWithAddedItems:v135 removedItems:v136 existingItems:v137];

          return v138;
        }

        v92 = v32[v94];
        ++v28;
        if (v92)
        {
          v28 = v94;
          goto LABEL_34;
        }
      }

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
      goto LABEL_54;
    }

    v76 = v155;
LABEL_19:
    v78 = *(v156 + 72);
    v32 = *(v156 + 16);
    (v32)(v76, *(v69 + 48) + v78 * (__clz(__rbit64(v75)) | (v25 << 6)), v159);
    v79 = v151;
    if (!*(v151 + 16))
    {
      goto LABEL_50;
    }

    v80 = sub_20D9CB800(v76);
    if ((v81 & 1) == 0)
    {
      goto LABEL_51;
    }

    v82 = *(v79 + 56) + v80 * v78;
    v83 = v145;
    v84 = v159;
    (v32)(v145, v82, v159);
    v85 = v157;
    v86 = v146(v83);
    v157 = v85;
    if (v85)
    {
      break;
    }

    v32 = v86;
    v75 &= v75 - 1;
    v87 = *v154;
    (*v154)(v83, v84);
    v88 = v87(v155, v84);
    v69 = v152;
    if (v32)
    {
      MEMORY[0x20F325F00](v88);
      if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20DD65014();
      }

      sub_20DD65054();
      v142 = v166;
    }
  }

  v138 = *v154;
  (*v154)(v83, v84);

  v138(v155, v84);

  return v138;
}

uint64_t sub_20DA79D50(uint64_t *a1, void *a2, void (*a3)(void *), uint64_t a4, void *a5)
{
  v54 = a5;
  v56 = a1;
  v8 = sub_20DD63FE4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v53 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  a3(a2);
  if (qword_27C842418 != -1)
  {
    swift_once();
  }

  v17 = sub_20DD64C44();
  __swift_project_value_buffer(v17, qword_27C84C588);
  v18 = *(v9 + 16);
  v55 = v16;
  v18(v14, v16, v8);
  v19 = a2;
  v20 = sub_20DD64C24();
  v21 = sub_20DD65354();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v52 = v5;
    v23 = v22;
    v51 = swift_slowAlloc();
    v57 = v51;
    *v23 = 136315650;
    v24 = sub_20DD65B04();
    v54 = v19;
    v26 = sub_20D9E0B38(v24, v25, &v57);
    v50 = v20;
    v27 = v8;
    v28 = v26;

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    v18(v53, v14, v27);
    v29 = sub_20DD64ED4();
    v31 = v30;
    LODWORD(v53) = v21;
    v32 = *(v9 + 8);
    v32(v14, v27);
    v33 = sub_20D9E0B38(v29, v31, &v57);

    *(v23 + 14) = v33;
    *(v23 + 22) = 2080;
    v34 = v54;
    v35 = [v34 description];
    v36 = sub_20DD64EB4();
    v38 = v37;

    v19 = v54;
    v39 = v36;
    v8 = v27;
    v40 = sub_20D9E0B38(v39, v38, &v57);

    *(v23 + 24) = v40;
    v41 = v50;
    _os_log_impl(&dword_20D9BF000, v50, v53, "%s-diffItems: key is %s for %s", v23, 0x20u);
    v42 = v51;
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v42, -1, -1);
    MEMORY[0x20F327D10](v23, -1, -1);
  }

  else
  {

    v32 = *(v9 + 8);
    v32(v14, v8);
  }

  v43 = v19;
  v44 = v56;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v44;
  v46 = v43;
  v47 = v55;
  sub_20D9D19E0(v46, v55, isUniquelyReferenced_nonNull_native);
  *v44 = v57;
  return (v32)(v47, v8);
}

uint64_t sub_20DA7A13C(uint64_t a1, char *a2, void (*a3)(char *))
{
  v20[1] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D40, &unk_20DD94230);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  v11 = sub_20DD63FE4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v20 - v16;
  a3(a2);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_20D9D76EC(v10, &qword_27C843D40, &unk_20DD94230);
  }

  (*(v12 + 32))(v17, v10, v11);
  v19 = *(v12 + 16);
  v19(v15, v17, v11);
  v19(v8, a2, v11);
  (*(v12 + 56))(v8, 0, 1, v11);
  sub_20D9F9E54(v8, v15);
  return (*(v12 + 8))(v17, v11);
}

uint64_t sub_20DA7A398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20DD63FE4();
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_20DA7A468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_tilePath;
  v5 = sub_20DD63FE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

id MatterAccessoryLikeItemProvider.init(in:in:filter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[qword_27C84C680] = a1;
  v6 = &v4[qword_27C844CB8];
  *v6 = a3;
  *(v6 + 1) = a4;
  sub_20D9D7558(a2, &v4[qword_27C84C688], &unk_27C843A70, &qword_20DD94260);
  v9.receiver = v4;
  v9.super_class = type metadata accessor for MatterAccessoryLikeItemProvider(0);
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_20D9D76EC(a2, &unk_27C843A70, &qword_20DD94260);
  return v7;
}

uint64_t type metadata accessor for MatterAccessoryLikeItemProvider(uint64_t a1)
{
  result = qword_27C844CF8;
  if (!qword_27C844CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20DA7A5E0(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_20DD64C44();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844CC0, &qword_20DD96680);
  v2[17] = swift_task_alloc();
  v4 = sub_20DD64164();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v5 = sub_20DD63FE4();
  v2[21] = v5;
  v2[22] = *(v5 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v6 = sub_20DD64354();
  v2[28] = v6;
  v2[29] = *(v6 - 8);
  v2[30] = swift_task_alloc();
  v7 = sub_20DD63744();
  v2[31] = v7;
  v2[32] = *(v7 - 8);
  v2[33] = swift_task_alloc();
  v8 = sub_20DD63E94();
  v2[34] = v8;
  v2[35] = *(v8 - 8);
  v2[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA7A8D4, 0, 0);
}

uint64_t sub_20DA7A8D4()
{
  v1 = *(v0[13] + qword_27C84C680);
  v0[37] = v1;
  v2 = [v1 uniqueIdentifier];
  sub_20DD63714();

  v3 = swift_task_alloc();
  v0[38] = v3;
  *v3 = v0;
  v3[1] = sub_20DA7A9A8;
  v4 = v0[36];
  v5 = v0[33];

  return sub_20DA7C578(v4, v5);
}

uint64_t sub_20DA7A9A8()
{
  v1 = *v0;
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 256);
  v4 = *(*v0 + 248);

  v5 = *(v3 + 8);
  *(v1 + 312) = v5;
  *(v1 + 320) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);

  return MEMORY[0x2822009F8](sub_20DA7AB0C, 0, 0);
}

uint64_t sub_20DA7AB0C()
{
  v1 = [*(v0 + 296) uniqueIdentifier];
  sub_20DD63714();

  v2 = swift_task_alloc();
  *(v0 + 328) = v2;
  *v2 = v0;
  v2[1] = sub_20DA7ABD0;
  v3 = *(v0 + 264);
  v4 = *(v0 + 240);

  return sub_20DA7BDD8(v4, v3);
}

uint64_t sub_20DA7ABD0()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 248);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_20DA7AD30, 0, 0);
}

uint64_t sub_20DA7AD30()
{
  v77 = v0;
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[22];
  v5 = v0[19];
  v6 = v0[15];
  v7 = sub_20DD64344();
  result = (*(v2 + 8))(v1, v3);
  v9 = 0;
  v10 = 0;
  v11 = v7 + 56;
  v67 = v7;
  v12 = -1 << *(v7 + 32);
  v75 = MEMORY[0x277D84FA0];
  if (-v12 < 64)
  {
    v13 = ~(-1 << -v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 56);
  v15 = (63 - v12) >> 6;
  v63 = (v5 + 48);
  v58 = (v5 + 8);
  v66 = v4;
  v68 = (v4 + 8);
  v56 = (v5 + 32);
  v57 = (v6 + 8);
  v64 = v15;
  v65 = v7 + 56;
  while (v14)
  {
LABEL_13:
    v18 = v0[26];
    v17 = v0[27];
    v19 = v0[21];
    v20 = v0[17];
    v69 = v0[18];
    v21 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v72 = *(v66 + 16);
    v72(v17, *(v67 + 48) + *(v66 + 72) * (v21 | (v10 << 6)), v19);
    (*(v66 + 32))(v18, v17, v19);
    v22 = sub_20DD63E84();
    v23 = sub_20DA7D510(v22);
    *(swift_task_alloc() + 16) = v18;
    sub_20DA2FE0C(sub_20DA7D724, v23, v20);
    v74 = v9;

    if ((*v63)(v20, 1, v69) == 1)
    {
      v25 = v0[25];
      v24 = v0[26];
      v26 = v0[24];
      v60 = v0[23];
      v27 = v0[21];
      sub_20D9D76EC(v0[17], &qword_27C844CC0, &qword_20DD96680);
      v72(v26, v24, v27);
      sub_20D9E2D34(v25, v26);
      v70 = *v68;
      (*v68)(v25, v27);
      sub_20DD64BE4();
      v72(v60, v24, v27);
      v28 = sub_20DD64C24();
      v29 = sub_20DD65364();
      v30 = os_log_type_enabled(v28, v29);
      v31 = v0[23];
      v32 = v0[21];
      v33 = v0[16];
      v34 = v0[14];
      if (v30)
      {
        v73 = v0[14];
        v35 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v76[0] = v61;
        *v35 = 136315394;
        *(v35 + 4) = sub_20D9E0B38(0xD00000000000002ALL, 0x800000020DD9A280, v76);
        *(v35 + 12) = 2082;
        sub_20DA7F500(&qword_27C844CC8, MEMORY[0x277D15B60], MEMORY[0x277D15B78]);
        v55 = v29;
        v36 = sub_20DD65934();
        v59 = v33;
        v38 = v37;
        v39 = v32;
        v40 = v70;
        v70(v31, v39);
        v41 = sub_20D9E0B38(v36, v38, v76);

        *(v35 + 14) = v41;
        _os_log_impl(&dword_20D9BF000, v28, v55, "%s Failed to get static accessory for tilePath %{public}s", v35, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F327D10](v61, -1, -1);
        MEMORY[0x20F327D10](v35, -1, -1);

        (*v57)(v59, v73);
      }

      else
      {

        v47 = v32;
        v40 = v70;
        v70(v31, v47);
        (*v57)(v33, v34);
      }

      result = (v40)(v0[26], v0[21]);
    }

    else
    {
      (*v56)(v0[20], v0[17], v0[18]);
      if (sub_20DD64144())
      {
        v42 = v0[25];
        v43 = v0[24];
        v44 = v0[21];
        v71 = v0[20];
        v45 = v0[18];
        v72(v43, v0[26], v44);
        sub_20D9E2D34(v42, v43);
        v46 = *v68;
        (*v68)(v42, v44);
        (*v58)(v71, v45);
        result = (v46)(v0[26], v0[21]);
      }

      else
      {
        (*v58)(v0[20], v0[18]);
        result = (*v68)(v0[26], v0[21]);
      }
    }

    v9 = v74;
    v15 = v64;
    v11 = v65;
  }

  while (1)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v16 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v16);
    ++v10;
    if (v14)
    {
      v10 = v16;
      goto LABEL_13;
    }
  }

  v48 = v0[35];
  v49 = v0[36];
  v62 = v0[34];
  v50 = v0[12];
  v51 = v0[13];

  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844CD0, &qword_20DD96698);
  v0[6] = sub_20DA7D780(&qword_27C844CD8, &qword_27C844CD0, &qword_20DD96698);
  v0[2] = v75;
  v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844CE0, &qword_20DD966A0);
  v0[11] = sub_20DA7D780(&qword_27C844CE8, &qword_27C844CE0, &qword_20DD966A0);
  v0[7] = v50;
  v52 = swift_task_alloc();
  *(v52 + 16) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844CF0, &qword_20DD966A8);

  v53 = sub_20DA78C00(v0 + 2, v0 + 7, sub_20DA7A398, 0, sub_20DA7D7D4, v52, sub_20DA7A468, 0);

  (*(v48 + 8))(v49, v62);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v54 = v0[1];

  return v54(v53);
}

char *sub_20DA7B4E0(char *a1, uint64_t a2)
{
  v4 = sub_20DD63FE4();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_20DD63744();
  v36 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  v37 = a2;
  v16 = *(a2 + qword_27C844CB8);
  if (v16 && (v16(a1) & 1) == 0)
  {
    return 0;
  }

  v32 = v6;
  v17 = v37;
  v18 = [*(v37 + qword_27C84C680) accessories];
  sub_20DA7F3AC();
  v19 = sub_20DD64FD4();

  MEMORY[0x28223BE20](v20);
  v33 = a1;
  *(&v32 - 2) = a1;
  v21 = sub_20DA36A4C(sub_20DA7F3F8, (&v32 - 4), v19);

  if (!v21)
  {
    return 0;
  }

  sub_20D9D7558(v17 + qword_27C84C688, v9, &unk_27C843A70, &qword_20DD94260);
  v22 = v36;
  if ((*(v36 + 48))(v9, 1, v10) == 1)
  {
    sub_20D9D76EC(v9, &unk_27C843A70, &qword_20DD94260);
LABEL_12:
    v28 = v33;
    goto LABEL_13;
  }

  (*(v22 + 32))(v15, v9, v10);
  v24 = [v21 room];
  if (!v24)
  {
    (*(v22 + 8))(v15, v10);
    goto LABEL_12;
  }

  v25 = v24;
  v26 = [v24 uniqueIdentifier];
  sub_20DD63714();

  sub_20DA7F500(&qword_280E02288, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  LOBYTE(v26) = sub_20DD64E64();

  v27 = *(v22 + 8);
  v27(v13, v10);
  v27(v15, v10);
  v28 = v33;
  if ((v26 & 1) == 0)
  {

    return 0;
  }

LABEL_13:
  v29 = v32;
  (*(v34 + 16))(v32, v28, v35);
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = sub_20D9FED40(v29, &unk_20DD96738, v30, v21);

  return v31;
}

uint64_t sub_20DA7B96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D50, &qword_20DD94250);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA7BA0C, 0, 0);
}

uint64_t sub_20DA7BA0C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_20DA7BBC8;
    v3 = v0[8];
    v4 = v0[6];

    return sub_20DA7BDD8(v3, v4);
  }

  else
  {
    v6 = v0[8];
    v7 = sub_20DD64354();
    v8 = *(v7 - 8);
    (*(v8 + 56))(v6, 1, 1, v7);
    sub_20DD64324();
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      sub_20D9D76EC(v0[8], &qword_27C843D50, &qword_20DD94250);
    }

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_20DA7BBC8()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_20DA7BCDC, 0, 0);
}

uint64_t sub_20DA7BCDC()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = sub_20DD64354();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 0, 1, v3);
  (*(v4 + 32))(v2, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_20DA7BDD8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D50, &qword_20DD94250);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA7BE80, 0, 0);
}

uint64_t sub_20DA7BE80()
{
  v0[6] = sub_20DD63C84();
  v0[7] = sub_20DD650F4();
  v0[8] = sub_20DD650E4();
  v2 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA7BF24, v2, v1);
}

uint64_t sub_20DA7BF24()
{

  *(v0 + 72) = sub_20DD63C64();

  return MEMORY[0x2822009F8](sub_20DA7BF98, 0, 0);
}

uint64_t sub_20DA7BF98(__n128 a1)
{
  *(v1 + 80) = sub_20DD650E4();
  v3 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA7C024, v3, v2);
}

uint64_t sub_20DA7C024()
{
  v1 = *(v0 + 72);

  *(v0 + 88) = sub_20DD63C14();

  return MEMORY[0x2822009F8](sub_20DA7C098, 0, 0);
}

uint64_t sub_20DA7C098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(v5[11] + 16))
  {
    v6 = sub_20D9CB38C(v5[3], a2, a3, a4, a5);
    v7 = v5[5];
    if (v8)
    {
      v9 = v6;
      v10 = *(v5[11] + 56);
      v11 = sub_20DD64354();
      v12 = *(v11 - 8);
      (*(v12 + 16))(v7, v10 + *(v12 + 72) * v9, v11);

      (*(v12 + 56))(v7, 0, 1, v11);
      goto LABEL_6;
    }
  }

  else
  {
    v7 = v5[5];
  }

  v11 = sub_20DD64354();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
LABEL_6:
  v13 = v5[4];
  sub_20D9D7558(v5[5], v13, &qword_27C843D50, &qword_20DD94250);
  sub_20DD64354();
  v14 = *(v11 - 8);
  v15 = (*(v14 + 48))(v13, 1, v11);
  v16 = v5[4];
  if (v15 == 1)
  {
    sub_20D9D76EC(v5[4], &qword_27C843D50, &qword_20DD94250);
    v5[12] = sub_20DD650E4();
    v18 = sub_20DD65094();

    return MEMORY[0x2822009F8](sub_20DA7C380, v18, v17);
  }

  else
  {
    v19 = v5[2];
    sub_20D9D76EC(v5[5], &qword_27C843D50, &qword_20DD94250);
    (*(v14 + 32))(v19, v16, v11);

    v20 = v5[1];

    return v20();
  }
}

uint64_t sub_20DA7C380()
{

  *(v0 + 104) = sub_20DD63C64();

  return MEMORY[0x2822009F8](sub_20DA7C3F4, 0, 0);
}

uint64_t sub_20DA7C3F4(__n128 a1)
{
  *(v1 + 112) = sub_20DD650E4();
  v3 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA7C480, v3, v2);
}

uint64_t sub_20DA7C480()
{
  v1 = *(v0 + 104);

  sub_20DD63BF4();

  return MEMORY[0x2822009F8](sub_20DA7C4F8, 0, 0);
}

uint64_t sub_20DA7C4F8()
{
  sub_20D9D76EC(*(v0 + 40), &qword_27C843D50, &qword_20DD94250);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20DA7C578(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_20DD63E94();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA7C638, 0, 0);
}

uint64_t sub_20DA7C638()
{
  v0[7] = sub_20DD63C84();
  v0[8] = sub_20DD650F4();
  v0[9] = sub_20DD650E4();
  v2 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA7C6DC, v2, v1);
}

uint64_t sub_20DA7C6DC()
{

  *(v0 + 80) = sub_20DD63C64();

  return MEMORY[0x2822009F8](sub_20DA7C750, 0, 0);
}

uint64_t sub_20DA7C750(__n128 a1)
{
  *(v1 + 88) = sub_20DD650E4();
  v3 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA7C7DC, v3, v2);
}

uint64_t sub_20DA7C7DC()
{
  v1 = *(v0 + 80);

  *(v0 + 96) = sub_20DD63C04();

  return MEMORY[0x2822009F8](sub_20DA7C850, 0, 0);
}

uint64_t sub_20DA7C850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(v5[12] + 16) && (v6 = sub_20D9CB38C(v5[3], a2, a3, a4, a5), (v7 & 1) != 0))
  {
    v9 = v5[5];
    v8 = v5[6];
    v10 = v5[4];
    v11 = v5[2];
    (*(v9 + 16))(v8, *(v5[12] + 56) + *(v9 + 72) * v6, v10);

    (*(v9 + 32))(v11, v8, v10);

    v12 = v5[1];

    return v12();
  }

  else
  {

    v5[13] = sub_20DD650E4();
    v15 = sub_20DD65094();

    return MEMORY[0x2822009F8](sub_20DA7C9A8, v15, v14);
  }
}

uint64_t sub_20DA7C9A8()
{

  *(v0 + 112) = sub_20DD63C64();

  return MEMORY[0x2822009F8](sub_20DA7CA1C, 0, 0);
}

uint64_t sub_20DA7CA1C(__n128 a1)
{
  *(v1 + 120) = sub_20DD650E4();
  v3 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA7CAA8, v3, v2);
}

uint64_t sub_20DA7CAA8()
{
  v1 = *(v0 + 112);

  sub_20DD63BE4();

  v2 = *(v0 + 8);

  return v2();
}

id sub_20DA7CB20(void *a1)
{
  v9.receiver = a1;
  v9.super_class = type metadata accessor for MatterAccessoryLikeItemProvider(0);
  v1 = v9.receiver;
  v2 = objc_msgSendSuper2(&v9, sel_invalidationReasons);
  v3 = sub_20DD651E4();

  v10 = v3;
  v4 = sub_20DD64EB4();
  sub_20D9E3400(&v8, v4, v5);

  v6 = sub_20DD651C4();

  return v6;
}

id MatterAccessoryLikeItemProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_20DA7CCB4()
{
  sub_20D9C2E38(*(v0 + qword_27C844CB8), *(v0 + qword_27C844CB8 + 8));
  sub_20D9D76EC(v0 + qword_27C84C688, &unk_27C843A70, &qword_20DD94260);
  v1 = *(v0 + qword_27C84C680);
}

id MatterAccessoryLikeItemProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MatterAccessoryLikeItemProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20DA7CD50(uint64_t a1)
{
  sub_20D9C2E38(*(a1 + qword_27C844CB8), *(a1 + qword_27C844CB8 + 8));
  sub_20D9D76EC(a1 + qword_27C84C688, &unk_27C843A70, &qword_20DD94260);
  v2 = *(a1 + qword_27C84C680);
}

uint64_t MatterAccessoryLikeItem.diffingKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_tilePath;
  v4 = sub_20DD63FE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_20DA7CE3C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_tilePath;
  v4 = sub_20DD63FE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t *sub_20DA7CEB8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_20DA7E7C8(v9, a2, a3, a4, a5);
    v11 = v10;
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v11;
  }

  return result;
}

uint64_t sub_20DA7CF70(uint64_t isStackAllocationSafe, uint64_t a2, __n128 a3)
{
  v4 = isStackAllocationSafe;
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = isStackAllocationSafe;
  v5 = *(a2 + 32);
  v6 = v5 & 0x3F;
  v19[3] = &v18;
  v19[4] = a2;
  v7 = (1 << v5) + 63;
  v8 = v7 >> 6;
  if (v6 <= 0xD || (v14 = 8 * (v7 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v10 = &v17 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    sub_20DA7D110(v10, v8, v4, a2);
    v12 = v11;
  }

  else
  {
    v15 = v14;
    v16 = swift_slowAlloc();
    bzero(v16, v15);
    sub_20DA7F378(v16, v8, v19);
    v12 = v19[0];

    MEMORY[0x20F327D10](v16, -1, -1);
  }

  return v12;
}

void sub_20DA7D110(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a2;
  v40 = a1;
  v6 = sub_20DD63FE4();
  v7 = MEMORY[0x28223BE20](v6);
  v48 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v56 = &v37 - v10;
  MEMORY[0x28223BE20](v9);
  v46 = &v37 - v12;
  v13 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a3 + 64);
  v17 = (v14 + 63) >> 6;
  v53 = v11 + 16;
  v54 = a4;
  v45 = v11 + 32;
  v50 = a4 + 56;
  v47 = v11;
  v55 = (v11 + 8);

  v39 = 0;
  v18 = 0;
  v43 = v17;
  v44 = a3 + 64;
  v41 = a3;
  while (v16)
  {
LABEL_12:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = v46;
    v22 = v47;
    v24 = *(v47 + 72);
    v25 = *(a3 + 48) + v24 * (v21 | (v18 << 6));
    v51 = *(v47 + 16);
    v52 = v24;
    v51(v46, v25, v6);
    (*(v22 + 32))(v56, v23, v6);
    v26 = v54;
    sub_20DA7F500(&qword_27C844380, MEMORY[0x277D15B60], MEMORY[0x277D15B68]);
    v27 = sub_20DD64E24();
    v28 = -1 << *(v26 + 32);
    v29 = v27 & ~v28;
    v30 = v29 >> 6;
    v31 = 1 << v29;
    if (((1 << v29) & *(v50 + 8 * (v29 >> 6))) != 0)
    {
      v42 = v55 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v49 = ~v28;
      while (1)
      {
        v32 = v48;
        v51(v48, *(v54 + 48) + v29 * v52, v6);
        sub_20DA7F500(&qword_27C8434C0, MEMORY[0x277D15B60], MEMORY[0x277D15B70]);
        v33 = sub_20DD64E64();
        v19 = *v55;
        (*v55)(v32, v6);
        if (v33)
        {
          break;
        }

        v29 = (v29 + 1) & v49;
        v30 = v29 >> 6;
        v31 = 1 << v29;
        if (((1 << v29) & *(v50 + 8 * (v29 >> 6))) == 0)
        {
          a3 = v41;
          goto LABEL_6;
        }
      }

      v19(v56, v6);
      a3 = v41;
      v34 = v40[v30];
      v40[v30] = v34 | v31;
      v17 = v43;
      v13 = v44;
      if ((v34 & v31) == 0 && __OFADD__(v39++, 1))
      {
        __break(1u);
LABEL_21:

        v36 = v54;

        sub_20D9F86AC(v40, v38, v39, v36);
        return;
      }
    }

    else
    {
      v19 = *v55;
LABEL_6:
      v17 = v43;
      v19(v56, v6);
      v13 = v44;
    }
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_21;
    }

    v16 = *(v13 + 8 * v20);
    ++v18;
    if (v16)
    {
      v18 = v20;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_20DA7D510(uint64_t a1)
{
  v2 = sub_20DD64164();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20DA7F500(&qword_27C844D18, MEMORY[0x277D15D40], MEMORY[0x277D15D58]);
  result = MEMORY[0x20F326190](v9, v2, v10);
  v12 = 0;
  v23 = a1;
  v24 = result;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v22[1] = v3 + 16;
  if ((v17 & v13) != 0)
  {
    do
    {
      v20 = v12;
LABEL_9:
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      (*(v3 + 16))(v8, *(v23 + 56) + *(v3 + 72) * (v21 | (v20 << 6)), v2);
      sub_20DA7D914(v6, v8);
      result = (*(v3 + 8))(v6, v2);
    }

    while (v18);
  }

  while (1)
  {
    v20 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      return v24;
    }

    v18 = *(v14 + 8 * v20);
    ++v12;
    if (v18)
    {
      v12 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20DA7D780(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20DA7D838(uint64_t a1)
{
  sub_20DA34408(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_20DA7D914(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20DD64164();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20DA7F500(&qword_27C844D18, MEMORY[0x277D15D40], MEMORY[0x277D15D58]);
  v33 = a2;
  v11 = sub_20DD64E24();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_20DA7F500(&qword_27C844D20, MEMORY[0x277D15D40], MEMORY[0x277D15D60]);
      v21 = sub_20DD64E64();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_20DA7DBF4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20DA7DBF4(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_20DD64164();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v11 <= v10)
  {
    v12 = v10 + 1;
    if (a3)
    {
      sub_20DA7E3E0(v12);
    }

    else
    {
      sub_20DA7E0C4(v12);
    }

    v13 = *v3;
    sub_20DA7F500(&qword_27C844D18, MEMORY[0x277D15D40], MEMORY[0x277D15D58]);
    v14 = sub_20DD64E24();
    v15 = v13 + 56;
    v31 = v13;
    v16 = -1 << *(v13 + 32);
    a2 = v14 & ~v16;
    if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v17 = ~v16;
      v20 = *(v7 + 16);
      v19 = v7 + 16;
      v18 = v20;
      v21 = *(v19 + 56);
      do
      {
        v18(v9, *(v31 + 48) + v21 * a2, v6);
        sub_20DA7F500(&qword_27C844D20, MEMORY[0x277D15D40], MEMORY[0x277D15D60]);
        v22 = sub_20DD64E64();
        (*(v19 - 8))(v9, v6);
        if (v22)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v17;
      }

      while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_20DA7DE8C();
  }

  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_14:
  result = sub_20DD659D4();
  __break(1u);
  return result;
}

void *sub_20DA7DE8C()
{
  v1 = v0;
  v2 = sub_20DD64164();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844D28, &qword_20DD96748);
  v6 = *v0;
  v7 = sub_20DD656A4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
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
LABEL_14:
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
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_20DA7E0C4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_20DD64164();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844D28, &qword_20DD96748);
  v7 = sub_20DD656B4();
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
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_20DA7F500(&qword_27C844D18, MEMORY[0x277D15D40], MEMORY[0x277D15D58]);
      result = sub_20DD64E24();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_20DA7E3E0(uint64_t a1)
{
  v2 = v1;
  v36 = sub_20DD64164();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844D28, &qword_20DD96748);
  result = sub_20DD656B4();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_20DA7F500(&qword_27C844D18, MEMORY[0x277D15D40], MEMORY[0x277D15D58]);
      result = sub_20DD64E24();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

void sub_20DA7E7C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  v36 = a3 + 56;
  v37 = 0;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v40 = a4 & 0xC000000000000001;
  v44 = a4 + 56;
  v38 = a5 & 0xC000000000000001;
  v45 = a5 + 56;
  v41 = v10;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v43 = (v9 - 1) & v9;
LABEL_13:
    v39 = v11 | (v6 << 6);
    v14 = *(*(a3 + 48) + 8 * v39);
    type metadata accessor for MatterAccessoryLikeItem(0);
    if (v40)
    {
      v15 = v14;
      v16 = sub_20DD65604();

      if (v16)
      {
        goto LABEL_5;
      }

LABEL_21:
      if (!v38)
      {
        goto LABEL_25;
      }

LABEL_22:
      v24 = v14;
      v25 = sub_20DD65604();

      v10 = v41;
      v9 = v43;
      if ((v25 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else if (*(a4 + 16))
    {
      v17 = v14;
      v18 = sub_20DD65444();
      v19 = -1 << *(a4 + 32);
      v20 = v18 & ~v19;
      if (((*(v44 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_21;
      }

      v21 = ~v19;
      while (1)
      {
        v22 = *(*(a4 + 48) + 8 * v20);
        v23 = sub_20DD65454();

        if (v23)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v44 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

LABEL_5:

      v10 = v41;
      v9 = v43;
    }

    else
    {
      v26 = v14;
      if (v38)
      {
        goto LABEL_22;
      }

LABEL_25:
      if (*(a5 + 16))
      {
        v27 = sub_20DD65444();
        v28 = -1 << *(a5 + 32);
        v29 = v27 & ~v28;
        if ((*(v45 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
        {
          v30 = ~v28;
          do
          {
            v31 = *(*(a5 + 48) + 8 * v29);
            v32 = sub_20DD65454();

            if (v32)
            {
              goto LABEL_5;
            }

            v29 = (v29 + 1) & v30;
          }

          while (((*(v45 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0);
        }
      }

      v10 = v41;
      v9 = v43;
LABEL_31:
      *(a1 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      if (__OFADD__(v37++, 1))
      {
        __break(1u);
LABEL_34:

        sub_20D9F8698(a1, a2, v37, a3);
        return;
      }
    }
  }

  v12 = v6;
  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      goto LABEL_34;
    }

    v13 = *(v36 + 8 * v6);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v43 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_20DA7EB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1;
  v64 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = (8 * v10);

  v61 = a2;
  v63 = a3;
  if (v9 > 0xD)
  {
    goto LABEL_43;
  }

  while (2)
  {
    v48 = v10;
    v49 = v4;
    v47 = &v47;
    MEMORY[0x28223BE20](v12);
    v50 = &v47 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v50, v11);
    v52 = 0;
    v13 = 0;
    v14 = v7 + 56;
    v15 = 1 << *(v7 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v7 + 56);
    v18 = (v15 + 63) >> 6;
    v56 = a2 & 0xC000000000000001;
    v57 = v18;
    if (a2 < 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v60 = a2 + 56;
    v53 = a3 & 0xC000000000000001;
    v54 = v19;
    v20 = a3 & 0xFFFFFFFFFFFFFF8;
    if (a3 < 0)
    {
      v20 = a3;
    }

    v51 = v20;
    v62 = a3 + 56;
    v58 = v7;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v59 = (v17 - 1) & v17;
LABEL_19:
      v24 = v21 | (v13 << 6);
      v25 = *(v7 + 48);
      v55 = v24;
      v26 = *(v25 + 8 * v24);
      v11 = type metadata accessor for MatterAccessoryLikeItem(0);
      if (v56)
      {
        v27 = v26;
        v28 = sub_20DD65604();

        if (v28)
        {
          goto LABEL_11;
        }

LABEL_27:
        if (!v53)
        {
          goto LABEL_31;
        }

LABEL_28:
        v11 = v26;
        v34 = sub_20DD65604();

        v18 = v57;
        v7 = v58;
        v17 = v59;
        if ((v34 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      else if (*(v61 + 16))
      {
        v4 = v61;
        v29 = v26;
        v30 = sub_20DD65444();
        v31 = -1 << *(v4 + 32);
        v32 = v30 & ~v31;
        if (((*(v60 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_27;
        }

        v4 = ~v31;
        while (1)
        {
          v10 = *(*(v61 + 48) + 8 * v32);
          v33 = sub_20DD65454();

          if (v33)
          {
            break;
          }

          v32 = (v32 + 1) & v4;
          if (((*(v60 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_27;
          }
        }

LABEL_11:

        v18 = v57;
        v7 = v58;
        v17 = v59;
      }

      else
      {
        v35 = v26;
        if (v53)
        {
          goto LABEL_28;
        }

LABEL_31:
        if (*(v63 + 16))
        {
          v36 = sub_20DD65444();
          v37 = v63;
          v38 = -1 << *(v63 + 32);
          v39 = v36 & ~v38;
          if ((*(v62 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
          {
            v4 = ~v38;
            do
            {
              v10 = *(*(v37 + 48) + 8 * v39);
              v40 = sub_20DD65454();

              if (v40)
              {
                goto LABEL_11;
              }

              v39 = (v39 + 1) & v4;
              v37 = v63;
            }

            while (((*(v62 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0);
          }
        }

        v18 = v57;
        v7 = v58;
        v17 = v59;
LABEL_37:
        *&v50[(v55 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v55;
        if (__OFADD__(v52++, 1))
        {
          __break(1u);
LABEL_40:
          v42 = sub_20D9F8698(v50, v48, v52, v7);

          return v42;
        }
      }
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_40;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v59 = (v23 - 1) & v23;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_43:

    if (swift_stdlib_isStackAllocationSafe())
    {

      a2 = v61;
      a3 = v63;
      continue;
    }

    break;
  }

  v44 = swift_slowAlloc();
  v45 = v61;

  v46 = v63;

  v42 = sub_20DA7CEB8(v44, v10, v7, v45, v46);

  MEMORY[0x20F327D10](v44, -1, -1);

  return v42;
}

uint64_t sub_20DA7EFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_20DA7EB1C(a1, a2, a3);
  }

  v5 = MEMORY[0x277D84FA0];
  v38 = MEMORY[0x277D84FA0];

  sub_20DD65564();
  v36 = a3;
  if (sub_20DD655F4())
  {
    type metadata accessor for MatterAccessoryLikeItem(0);
    v6 = a2 + 56;
    v34 = a3 & 0xC000000000000001;
    v35 = a3 + 56;
    do
    {
      swift_dynamicCast();
      if ((a2 & 0xC000000000000001) != 0)
      {
        v7 = v37;
        v8 = sub_20DD65604();

        if (v8)
        {
          goto LABEL_4;
        }
      }

      else if (*(a2 + 16))
      {
        v9 = sub_20DD65444();
        v10 = -1 << *(a2 + 32);
        v11 = v9 & ~v10;
        if ((*(v6 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
        {
          v12 = ~v10;
          do
          {
            v13 = *(*(a2 + 48) + 8 * v11);
            v14 = sub_20DD65454();

            if (v14)
            {
              goto LABEL_4;
            }

            v11 = (v11 + 1) & v12;
          }

          while (((*(v6 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
        }
      }

      if (v34)
      {
        v15 = v37;
        v16 = sub_20DD65604();

        if ((v16 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (!*(v36 + 16) || (v17 = sub_20DD65444(), v18 = -1 << *(v36 + 32), v19 = v17 & ~v18, ((*(v35 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0))
        {
LABEL_22:
          v23 = *(v5 + 16);
          if (*(v5 + 24) <= v23)
          {
            sub_20D9F7AF0(v23 + 1);
          }

          v5 = v38;
          result = sub_20DD65444();
          v25 = v38 + 56;
          v26 = -1 << *(v38 + 32);
          v27 = result & ~v26;
          v28 = v27 >> 6;
          if (((-1 << v27) & ~*(v38 + 56 + 8 * (v27 >> 6))) != 0)
          {
            v29 = __clz(__rbit64((-1 << v27) & ~*(v38 + 56 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v30 = 0;
            v31 = (63 - v26) >> 6;
            do
            {
              if (++v28 == v31 && (v30 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v32 = v28 == v31;
              if (v28 == v31)
              {
                v28 = 0;
              }

              v30 |= v32;
              v33 = *(v25 + 8 * v28);
            }

            while (v33 == -1);
            v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          }

          *(v25 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
          *(*(v38 + 48) + 8 * v29) = v37;
          ++*(v38 + 16);
          continue;
        }

        v20 = ~v18;
        while (1)
        {
          v21 = *(*(v36 + 48) + 8 * v19);
          v22 = sub_20DD65454();

          if (v22)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v35 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_22;
          }
        }
      }

LABEL_4:
    }

    while (sub_20DD655F4());
  }

  return v5;
}

void sub_20DA7F378(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_20DA7D110(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = v6;
  }
}

unint64_t sub_20DA7F3AC()
{
  result = qword_27C844290;
  if (!qword_27C844290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C844290);
  }

  return result;
}

uint64_t sub_20DA7F454(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20D9C76B4;

  return sub_20DA7B96C(a1, a2, v2);
}

uint64_t sub_20DA7F500(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t HMAccessory.enableAdaptiveTemperature(to:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 88) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844D30, &qword_20DD96758);
  *(v2 + 24) = swift_task_alloc();
  v3 = sub_20DD64594();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA7F644, 0, 0);
}

uint64_t sub_20DA7F644()
{
  v22 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  sub_20DD65304();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DA7FF74(*(v0 + 24));
    if (qword_27C8424E8 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 16);
    v5 = sub_20DD64C44();
    __swift_project_value_buffer(v5, qword_27C84C690);
    v6 = v4;
    v7 = sub_20DD64C24();
    v8 = sub_20DD65364();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 16);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136315650;
      *(v10 + 4) = sub_20D9E0B38(0xD00000000000001CLL, 0x800000020DD9A320, &v21);
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_20D9E0B38(0xD00000000000001ELL, 0x800000020DD9A340, &v21);
      *(v10 + 22) = 2080;
      v12 = [v9 name];
      v13 = sub_20DD64EB4();
      v15 = v14;

      v16 = sub_20D9E0B38(v13, v15, &v21);

      *(v10 + 24) = v16;
      _os_log_impl(&dword_20D9BF000, v7, v8, "%s - %s: Error - No thermostat cluster found on accessory: %s", v10, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v11, -1, -1);
      MEMORY[0x20F327D10](v10, -1, -1);
    }

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    (*(*(v0 + 40) + 32))(*(v0 + 48), *(v0 + 24), *(v0 + 32));
    v19 = swift_task_alloc();
    *(v0 + 56) = v19;
    *v19 = v0;
    v19[1] = sub_20DA7F950;
    v20 = *(v0 + 88);

    return MEMORY[0x282170F78](v20);
  }
}

uint64_t sub_20DA7F950()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20DA7FC60, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 72) = v3;
    *v3 = v2;
    v3[1] = sub_20DA7FAC4;

    return MEMORY[0x2821711E0](1);
  }
}

uint64_t sub_20DA7FAC4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_20DA7FEEC;
  }

  else
  {
    v2 = sub_20DA7FBD8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DA7FBD8()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20DA7FC60()
{
  v24 = v0;
  if (qword_27C8424E8 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_20DD64C44();
  __swift_project_value_buffer(v2, qword_27C84C690);
  v3 = v1;
  v4 = sub_20DD64C24();
  v5 = sub_20DD65364();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];
  if (v6)
  {
    v11 = v0[2];
    v22 = v0[4];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315650;
    v21 = v8;
    *(v12 + 4) = sub_20D9E0B38(0xD00000000000001CLL, 0x800000020DD9A320, &v23);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_20D9E0B38(0xD00000000000001ELL, 0x800000020DD9A340, &v23);
    *(v12 + 22) = 2080;
    v14 = [v11 name];
    v15 = sub_20DD64EB4();
    v17 = v16;

    v18 = sub_20D9E0B38(v15, v17, &v23);

    *(v12 + 24) = v18;
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v13, -1, -1);
    MEMORY[0x20F327D10](v12, -1, -1);

    (*(v9 + 8))(v21, v22);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_20DA7FEEC()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20DA7FF74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844D30, &qword_20DD96758);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DA7FFDC(void *a1, uint64_t a2, char a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = v10;
  *(v11 + 32) = a1;
  v12 = sub_20DD65114();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_20DD96780;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_20DD96788;
  v14[5] = v13;
  v15 = a1;
  sub_20DAB35AC(0, 0, v9, &unk_20DD96790, v14);
}

uint64_t sub_20DA80160(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_20DA8021C;

  return HMAccessory.enableAdaptiveTemperature(to:)(a1);
}

uint64_t sub_20DA8021C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_20DD63494();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t HMAccessory.enableGridForecastAutomation(to:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 72) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844D30, &qword_20DD96758);
  *(v2 + 24) = swift_task_alloc();
  v3 = sub_20DD64594();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA8049C, 0, 0);
}

uint64_t sub_20DA8049C()
{
  v22 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  sub_20DD65304();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DA7FF74(*(v0 + 24));
    if (qword_27C8424E8 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 16);
    v5 = sub_20DD64C44();
    __swift_project_value_buffer(v5, qword_27C84C690);
    v6 = v4;
    v7 = sub_20DD64C24();
    v8 = sub_20DD65364();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 16);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136315650;
      *(v10 + 4) = sub_20D9E0B38(0xD00000000000001CLL, 0x800000020DD9A320, &v21);
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_20D9E0B38(0xD000000000000021, 0x800000020DD9A360, &v21);
      *(v10 + 22) = 2080;
      v12 = [v9 name];
      v13 = sub_20DD64EB4();
      v15 = v14;

      v16 = sub_20D9E0B38(v13, v15, &v21);

      *(v10 + 24) = v16;
      _os_log_impl(&dword_20D9BF000, v7, v8, "%s - %s: Error - No thermostat cluster found on accessory: %s", v10, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v11, -1, -1);
      MEMORY[0x20F327D10](v10, -1, -1);
    }

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    (*(*(v0 + 40) + 32))(*(v0 + 48), *(v0 + 24), *(v0 + 32));
    v19 = swift_task_alloc();
    *(v0 + 56) = v19;
    *v19 = v0;
    v19[1] = sub_20DA807A8;
    v20 = *(v0 + 72);

    return MEMORY[0x282170F18](v20);
  }
}

uint64_t sub_20DA807A8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_20DA808BC;
  }

  else
  {
    v2 = sub_20DA814E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DA808BC()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20DA80944(void *a1, uint64_t a2, char a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = v10;
  *(v11 + 32) = a1;
  v12 = sub_20DD65114();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_20DD96770;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_20DD94D90;
  v14[5] = v13;
  v15 = a1;
  sub_20DAB35AC(0, 0, v9, &unk_20DD95520, v14);
}

uint64_t sub_20DA80AC8(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_20DA814E0;

  return HMAccessory.enableGridForecastAutomation(to:)(a1);
}

Swift::Bool __swiftcall HMAccessory.shouldShowPresetConfiguration()()
{
  v0 = sub_20DD645A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844D30, &qword_20DD96758);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_20DD64594();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DD65304();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_20DA7FF74(v6);
    return 0;
  }

  (*(v8 + 32))(v10, v6, v7);
  (*(v1 + 104))(v3, *MEMORY[0x277D16E28], v0);
  v11 = sub_20DD64554();
  (*(v1 + 8))(v3, v0);
  v12 = sub_20DD64574();
  (*(v8 + 8))(v10, v7);
  if ((v12 & 1) == 0)
  {

    return 0;
  }

  if (!v11)
  {
    return 1;
  }

  v13 = *(v11 + 16);

  return v13 != 0;
}

BOOL sub_20DA80E58(void *a1)
{
  v1 = a1;
  v2 = HMAccessory.shouldShowPresetConfiguration()();

  return v2;
}

uint64_t sub_20DA80EA4(uint64_t (*a1)(uint64_t))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844D30, &qword_20DD96758);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_20DD64594();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DD65304();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_20DA7FF74(v4);
    v9 = 0;
  }

  else
  {
    v10 = (*(v6 + 32))(v8, v4, v5);
    v9 = a1(v10);
    (*(v6 + 8))(v8, v5);
  }

  return v9 & 1;
}

uint64_t sub_20DA81040(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844D30, &qword_20DD96758);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_20DD64594();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1;
  sub_20DD65304();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_20DA7FF74(v7);
    v13 = 0;
  }

  else
  {
    v14 = (*(v9 + 32))(v11, v7, v8);
    v13 = a3(v14);

    (*(v9 + 8))(v11, v8);
  }

  return v13 & 1;
}

uint64_t sub_20DA811E4()
{
  v0 = sub_20DD64C44();
  __swift_allocate_value_buffer(v0, qword_27C84C690);
  __swift_project_value_buffer(v0, qword_27C84C690);
  return sub_20DD64C34();
}

uint64_t sub_20DA8126C()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_20D9D77C4;

  return sub_20DA80AC8(v2, v4, v3);
}

uint64_t objectdestroyTm_2()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20DA81360()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_20D9D77C4;

  return sub_20DA80160(v2, v4, v3);
}

uint64_t sub_20DA81414(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D9C76B4;

  return sub_20DAB34C4(a1, v4, v5, v6);
}

id HFEvent.iconDescriptor.getter()
{
  v1 = sub_20DD64784();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20DD649D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v0, v5);
  if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D17970])
  {
    (*(v6 + 96))(v8, v5);
    (*(v2 + 32))(v4, v8, v1);
    v9 = sub_20DA81708(v4);
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v9 = [objc_allocWithZone(HFImageIconDescriptor) initWithImageIdentifier_];
    (*(v6 + 8))(v8, v5);
  }

  return v9;
}

id sub_20DA81708(uint64_t a1)
{
  v220 = a1;
  v180 = sub_20DD64864();
  v219 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v218 = &v170 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_20DD64894();
  v178 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v177 = &v170 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = sub_20DD648B4();
  v226 = *(v224 - 8);
  MEMORY[0x28223BE20](v224);
  v225 = &v170 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_20DD64744();
  v183 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v185 = &v170 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_20DD64764();
  v181 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v189 = &v170 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_20DD64794();
  v187 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v191 = &v170 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_20DD647B4();
  v186 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v196 = &v170 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = sub_20DD64944();
  v207 = *(v209 - 8);
  MEMORY[0x28223BE20](v209);
  v210 = &v170 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_20DD64964();
  v206 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v211 = &v170 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_20DD64634();
  v172 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v175 = &v170 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_20DD64654();
  v171 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v176 = &v170 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_20DD646A4();
  v200 = *(v202 - 8);
  MEMORY[0x28223BE20](v202);
  v203 = &v170 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_20DD646C4();
  v199 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v205 = &v170 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = sub_20DD64714();
  v214 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v217 = &v170 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_20DD64734();
  v213 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v212 = &v170 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_20DD64974();
  v193 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v197 = &v170 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_20DD64994();
  v192 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v198 = &v170 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = sub_20DD64784();
  v222 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v223 = &v170 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844D38, &unk_20DD96E60);
  MEMORY[0x28223BE20](v240);
  v20 = &v170 - v19;
  v230 = 0;
  v21 = sub_20DD64674();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v170 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20DD64664();
  v26 = *(v25 + 16);
  if (v26)
  {
    v28 = *(v22 + 16);
    v27 = v22 + 16;
    v239 = v28;
    v29 = (*(v27 + 64) + 32) & ~*(v27 + 64);
    v204 = v25;
    v30 = v25 + v29;
    v232 = *(v27 + 56);
    v238 = (v27 + 72);
    LODWORD(v237) = *MEMORY[0x277D17670];
    LODWORD(v236) = *MEMORY[0x277D17658];
    v235 = *MEMORY[0x277D17678];
    v231 = *MEMORY[0x277D17680];
    v229 = *MEMORY[0x277D17668];
    v241[0] = (v27 - 8);
    v228[1] = *MEMORY[0x277CD0F30];
    v228[0] = *MEMORY[0x277CD0E60];
    v31 = MEMORY[0x277D84F90];
    v227 = xmmword_20DD94280;
    v233 = v27;
    while (1)
    {
      v32 = v239;
      (v239)(v24, v30, v21);
      v33 = *(v240 + 48);
      *v20 = 1;
      (v32)(&v20[v33], v24, v21);
      v34 = (*v238)(&v20[v33], v21);
      if (v34 == v237 || v34 == v236 || v34 == v235)
      {
        goto LABEL_13;
      }

      if (v34 != v231)
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843870, &qword_20DD93F40);
      v37 = swift_allocObject();
      *(v37 + 16) = v227;
      *(v37 + 32) = sub_20DD64EB4();
      *(v37 + 40) = v38;
      *(v37 + 48) = sub_20DD64EB4();
      *(v37 + 56) = v39;
      (*v241[0])(&v20[v33], v21);
LABEL_17:
      v40 = *(v37 + 16);
      v41 = *(v31 + 2);
      v42 = (v40 + v41);
      if (__OFADD__(v41, v40))
      {
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v42 <= *(v31 + 3) >> 1)
      {
        if (!*(v37 + 16))
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v41 <= v42)
        {
          v47 = v40 + v41;
        }

        else
        {
          v47 = v41;
        }

        isUniquelyReferenced_nonNull_native = sub_20D9E0040(isUniquelyReferenced_nonNull_native, v47, 1, v31);
        v31 = isUniquelyReferenced_nonNull_native;
        if (!*(v37 + 16))
        {
LABEL_29:

          if (v40)
          {
            goto LABEL_135;
          }

          goto LABEL_30;
        }
      }

      if ((*(v31 + 3) >> 1) - *(v31 + 2) < v40)
      {
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
        goto LABEL_154;
      }

      swift_arrayInitWithCopy();

      if (v40)
      {
        v44 = *(v31 + 2);
        v45 = __OFADD__(v44, v40);
        v46 = v40 + v44;
        if (v45)
        {
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          if (isUniquelyReferenced_nonNull_native == *MEMORY[0x277D17890] || isUniquelyReferenced_nonNull_native == *MEMORY[0x277D178A0])
          {
            v147 = objc_allocWithZone(HFImageIconDescriptor);
            v148 = sub_20DD64E74();
            v145 = v37;
            v146 = v24;
            goto LABEL_175;
          }

          v136 = v21;
          if (isUniquelyReferenced_nonNull_native != *MEMORY[0x277D17888] && isUniquelyReferenced_nonNull_native != *MEMORY[0x277D17870])
          {
            v165 = objc_allocWithZone(HFImageIconDescriptor);
            v166 = v37;
            v167 = v24;
            v168 = sub_20DD64E74();
            v140 = [v165 initWithSystemImageNamed_];
            swift_unknownObjectRelease();

            (*(v136 + 8))(v26, v20);
            (*(v166 + 8))(v31, v167);
            return v140;
          }

LABEL_133:
          (*(v37 + 8))(v31, v24);
          v138 = objc_allocWithZone(HFImageIconDescriptor);
          v139 = sub_20DD64E74();
          v140 = [v138 initWithSystemImageNamed_];
          swift_unknownObjectRelease();

          (*(v136 + 8))(v26, v20);
          return v140;
        }

        *(v31 + 2) = v46;
      }

LABEL_30:
      isUniquelyReferenced_nonNull_native = sub_20DA9AE18(0);
      v37 = *(isUniquelyReferenced_nonNull_native + 16);
      v48 = *(v31 + 2);
      v49 = v48 + v37;
      if (__OFADD__(v48, v37))
      {
        goto LABEL_136;
      }

      if (v49 > *(v31 + 3) >> 1)
      {
        if (v48 <= v49)
        {
          v52 = v48 + v37;
        }

        else
        {
          v52 = *(v31 + 2);
        }

        v40 = isUniquelyReferenced_nonNull_native;
        v31 = sub_20D9E0040(1, v52, 1, v31);
        LODWORD(isUniquelyReferenced_nonNull_native) = v40;
        v48 = *(v31 + 2);
        if (!v40->data)
        {
LABEL_3:

          if (v37)
          {
            goto LABEL_137;
          }

          goto LABEL_4;
        }
      }

      else if (!v37)
      {
        goto LABEL_3;
      }

      if (((*(v31 + 3) >> 1) - v48) < v37)
      {
        goto LABEL_153;
      }

      swift_arrayInitWithCopy();

      if (v37)
      {
        v50 = *(v31 + 2);
        v45 = __OFADD__(v50, v37);
        v51 = v50 + v37;
        if (v45)
        {
          goto LABEL_167;
        }

        *(v31 + 2) = v51;
      }

LABEL_4:
      (*v241[0])(v24, v21);
      v30 += v232;
      if (!--v26)
      {

        goto LABEL_46;
      }
    }

    if (v34 == v229)
    {
      (*v241[0])(&v20[v33], v21);
    }

    else
    {
LABEL_13:
      sub_20DA83E48(v20);
    }

    v37 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v31 = MEMORY[0x277D84F90];
LABEL_46:
  v53 = HFEvent.accessory.getter();
  v41 = 0x277DEF000;
  v20 = v224;
  v37 = v226;
  v26 = v225;
  if (!v53)
  {
    v21 = v226;

    v42 = 0;
    v241[0] = 0;
    v37 = v219;
    v31 = v218;
    goto LABEL_69;
  }

  v54 = v53;
  v55 = [v53 hf_visibleServices];

  v56 = sub_20DA83EB0();
  sub_20DA6C1EC();
  v57 = sub_20DD651E4();

  v237 = v57;
  v238 = v56;
  if ((v57 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20DD65564();
    LODWORD(isUniquelyReferenced_nonNull_native) = sub_20DD65284();
    v57 = v242[2];
    v58 = v242[3];
    v24 = v242[4];
    v20 = v242[5];
    v42 = v242[6];
  }

  else
  {
    v59 = -1 << *(v57 + 32);
    v58 = v57 + 56;
    v24 = ~v59;
    v60 = -v59;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    else
    {
      v61 = -1;
    }

    v42 = (v61 & *(v57 + 56));

    v20 = 0;
  }

  v236 = v24;
  v21 = (v24 + 64) >> 6;
  if ((v57 & 0x8000000000000000) == 0)
  {
    goto LABEL_58;
  }

LABEL_55:
  v62 = sub_20DD655F4();
  if (!v62)
  {
    v21 = v37;
LABEL_67:
    sub_20D9C51CC(v57);

    v42 = 0;
    v241[0] = 0;
    v37 = v219;
    v31 = v218;
    v20 = v224;
LABEL_68:
    v41 = 0x277DEF000uLL;
    goto LABEL_69;
  }

  v241[1] = v62;
  swift_dynamicCast();
  v63 = v242[0];
  v64 = v20;
  v65 = v42;
  if (!v242[0])
  {
LABEL_89:
    v21 = v226;
    v26 = v225;
    goto LABEL_67;
  }

  while (1)
  {
    v239 = v20;
    v240 = v42;
    v24 = v57;
    v241[0] = v63;
    v68 = [v63 serviceType];
    v69 = sub_20DD64EB4();
    v71 = v70;

    v242[0] = v69;
    v242[1] = v71;
    MEMORY[0x28223BE20](v72);
    *(&v170 - 2) = v242;
    v73 = v230;
    LOBYTE(v69) = sub_20D9DFE38(sub_20DA83EFC, (&v170 - 4), v31);
    v230 = v73;

    if (v69)
    {
      break;
    }

    v20 = v64;
    v42 = v65;
    v37 = v226;
    v26 = v225;
    v57 = v24;
    if (v24 < 0)
    {
      goto LABEL_55;
    }

LABEL_58:
    v66 = v20;
    v67 = v42;
    v64 = v20;
    if (!v42)
    {
      while (1)
      {
        v64 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          break;
        }

        if (v64 >= v21)
        {
          v21 = v37;
          goto LABEL_67;
        }

        v67 = *(v58 + 8 * v64);
        v66 = (v66 + 1);
        if (v67)
        {
          goto LABEL_62;
        }
      }

      __break(1u);
      goto LABEL_152;
    }

LABEL_62:
    v65 = (v67 - 1) & v67;
    v63 = *(*(v57 + 48) + ((v64 << 9) | (8 * __clz(__rbit64(v67)))));
    if (!v63)
    {
      goto LABEL_89;
    }
  }

  sub_20D9C51CC(v24);

  v112 = v241[0];
  v113 = [v241[0] hf_iconDescriptor];

  v26 = v225;
  v241[0] = v113;
  if (!v113)
  {
    v42 = 0;
    v241[0] = 0;
    v37 = v219;
    v31 = v218;
    v20 = v224;
    v21 = v226;
    goto LABEL_68;
  }

  v41 = 0x277DEF000uLL;
  objc_opt_self();
  v114 = swift_dynamicCastObjCClass();
  v37 = v219;
  v31 = v218;
  v20 = v224;
  v21 = v226;
  if (v114)
  {
    v115 = v114;
    swift_unknownObjectRetain();
    v42 = [v115 packageIdentifier];
    if (!v42)
    {
      sub_20DD64EB4();
      v42 = sub_20DD64E74();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0;
  }

LABEL_69:
  v74 = v222;
  v75 = v223;
  v76 = v221;
  (*(v222 + 16))(v223, v220, v221);
  v77 = (*(v74 + 88))(v75, v76);
  if (v77 == *MEMORY[0x277D17758])
  {
    (*(v74 + 96))(v75, v76);
    v78 = v213;
    v79 = v212;
    v80 = v215;
    (*(v213 + 32))(v212, v75, v215);
    v40 = @"HFCAPackageIconIdentifierContactSensor";
    v81 = v217;
    sub_20DD64724();
    v82 = v214;
    v83 = v216;
    v84 = (*(v214 + 88))(v81, v216);
    if (v84 == *MEMORY[0x277D17730])
    {
      goto LABEL_71;
    }

    if (v84 == *MEMORY[0x277D17720])
    {
      v85 = &HFCAPackageStateOn;
      goto LABEL_77;
    }

    if (v84 == *MEMORY[0x277D17728])
    {
LABEL_71:
      v85 = &HFCAPackageStateOff;
LABEL_77:
      v93 = *(v78 + 8);
      v94 = *v85;
      v95 = v79;
      goto LABEL_147;
    }

    v104 = *(v78 + 8);
    v94 = HFCAPackageStateOff;
    v104(v79, v80);
    (*(v82 + 8))(v217, v83);
    goto LABEL_102;
  }

  if (v77 == *MEMORY[0x277D17788])
  {
    v86 = v223;
    (*(v222 + 96))(v223, v221);
    v87 = v206;
    v80 = v208;
    (*(v206 + 32))(v211, v86, v208);
    v40 = @"HFCAPackageIconIdentifierDoor";
    v88 = v210;
    sub_20DD64954();
    v89 = v207;
    v90 = v209;
    v91 = (*(v207 + 88))(v88, v209);
    if (v91 == *MEMORY[0x277D178E0])
    {
      goto LABEL_74;
    }

    if (v91 == *MEMORY[0x277D178C0])
    {
      v92 = &HFCAPackageStateOn;
      goto LABEL_83;
    }

    if (v91 == *MEMORY[0x277D178C8] || v91 == *MEMORY[0x277D178D8] || v91 == *MEMORY[0x277D178D0])
    {
LABEL_74:
      v92 = &HFCAPackageStateOff;
LABEL_83:
      v93 = *(v87 + 8);
      v94 = *v92;
      v103 = v241;
LABEL_146:
      v95 = *(v103 - 32);
LABEL_147:
      v93(v95, v80);
      if (v42)
      {
        goto LABEL_148;
      }

LABEL_103:
      v117 = v94;
      v118 = v40;
LABEL_149:
      v140 = [objc_allocWithZone(*(v41 + 1648)) initWithPackageIdentifier:v118 state:v94];
      swift_unknownObjectRelease();

      return v140;
    }

    v116 = *(v87 + 8);
    v94 = HFCAPackageStateOff;
    v116(v211, v80);
    (*(v89 + 8))(v210, v90);
LABEL_102:
    if (!v42)
    {
      goto LABEL_103;
    }

    goto LABEL_148;
  }

  if (v77 == *MEMORY[0x277D17750])
  {
    v96 = v223;
    (*(v222 + 96))(v223, v221);
    v97 = v199;
    v80 = v201;
    (*(v199 + 32))(v205, v96, v201);
    v40 = @"HFCAPackageIconIdentifierGarageDoor";
    v98 = v203;
    sub_20DD646B4();
    v99 = v200;
    v100 = v202;
    v101 = (*(v200 + 88))(v98, v202);
    if (v101 == *MEMORY[0x277D176E8])
    {
LABEL_80:
      v102 = &HFCAPackageStateOff;
LABEL_97:
      v93 = *(v97 + 8);
      v94 = *v102;
      v103 = &v234;
      goto LABEL_146;
    }

    if (v101 != *MEMORY[0x277D176C0])
    {
      if (v101 == *MEMORY[0x277D176C8])
      {
        goto LABEL_80;
      }

      if (v101 != *MEMORY[0x277D176D8] && v101 != *MEMORY[0x277D176D0] && v101 != *MEMORY[0x277D176E0] && v101 != *MEMORY[0x277D176B8])
      {
        v126 = *(v97 + 8);
        v94 = HFCAPackageStateOff;
        v126(v205, v80);
        (*(v99 + 8))(v203, v100);
        goto LABEL_102;
      }
    }

    v102 = &HFCAPackageStateOn;
    goto LABEL_97;
  }

  if (v77 == *MEMORY[0x277D17790])
  {
    v105 = v223;
    (*(v222 + 96))(v223, v221);
    v106 = v192;
    v80 = v194;
    (*(v192 + 32))(v198, v105, v194);
    v40 = @"HFCAPackageIconIdentifierDoorLock";
    v107 = v197;
    sub_20DD64984();
    v108 = v193;
    v109 = v195;
    v110 = (*(v193 + 88))(v107, v195);
    if (v110 == *MEMORY[0x277D17928])
    {
LABEL_88:
      v111 = &HFCAPackageStateOff;
LABEL_113:
      v93 = *(v106 + 8);
      v94 = *v111;
      v103 = v228;
      goto LABEL_146;
    }

    if (v110 != *MEMORY[0x277D17930])
    {
      if (v110 == *MEMORY[0x277D17918])
      {
        goto LABEL_88;
      }

      if (v110 != *MEMORY[0x277D17938] && v110 != *MEMORY[0x277D17920] && v110 != *MEMORY[0x277D17910])
      {
        v134 = *(v106 + 8);
        v94 = HFCAPackageStateOff;
        v134(v198, v80);
        (*(v108 + 8))(v197, v109);
        goto LABEL_102;
      }
    }

    v111 = &HFCAPackageStateOn;
    goto LABEL_113;
  }

  if (v77 == *MEMORY[0x277D17768])
  {
    v119 = v223;
    (*(v222 + 96))(v223, v221);
    v120 = v186;
    v80 = v188;
    (*(v186 + 32))(v196, v119, v188);
    v40 = @"HFCAPackageIconIdentifierSecuritySystem";
    v121 = v191;
    sub_20DD647A4();
    v122 = v187;
    v123 = v190;
    v124 = (*(v187 + 88))(v121, v190);
    if (v124 != *MEMORY[0x277D177C0] && v124 != *MEMORY[0x277D177D0])
    {
      if (v124 == *MEMORY[0x277D177B8])
      {
LABEL_108:
        v125 = &HFCAPackageStateOn;
LABEL_145:
        v93 = *(v120 + 8);
        v94 = *v125;
        v103 = &v227;
        goto LABEL_146;
      }

      if (v124 != *MEMORY[0x277D177E0])
      {
        if (v124 != *MEMORY[0x277D177C8] && v124 != *MEMORY[0x277D177D8] && v124 != *MEMORY[0x277D177B0] && v124 != *MEMORY[0x277D177E8])
        {
          v154 = *(v120 + 8);
          v94 = HFCAPackageStateOff;
          v154(v196, v80);
          (*(v122 + 8))(v191, v123);
          goto LABEL_102;
        }

        goto LABEL_108;
      }
    }

    v125 = &HFCAPackageStateOff;
    goto LABEL_145;
  }

  if (v77 == *MEMORY[0x277D17760])
  {
    v127 = v223;
    (*(v222 + 96))(v223, v221);
    v21 = v181;
    v26 = v182;
    (*(v181 + 32))(v189, v127, v182);
    v40 = @"HFCAPackageIconIdentifierSmokeSensor";
    v128 = v185;
    sub_20DD64754();
    v129 = v183;
    v130 = v184;
    v131 = (*(v183 + 88))(v128, v184);
    if (v131 == *MEMORY[0x277D17740] || v131 == *MEMORY[0x277D17738])
    {
LABEL_138:
      v133 = HFCAPackageStateOff;
      v132 = *(v21 + 8);
    }

    else
    {
      v132 = *(v21 + 8);
      if (v131 != *MEMORY[0x277D17748])
      {
        v94 = HFCAPackageStateOff;
        v132(v189, v26);
        (*(v129 + 8))(v185, v130);
        if (v42)
        {
          goto LABEL_148;
        }

        goto LABEL_103;
      }

      v133 = HFCAPackageStateOn;
    }

    v94 = v133;
    v132(v189, v26);
    if (!v42)
    {
      goto LABEL_103;
    }

LABEL_148:
    v143 = v94;
    v42 = v42;

    v118 = v42;
    goto LABEL_149;
  }

  if (v77 != *MEMORY[0x277D17770])
  {
    if (v77 == *MEMORY[0x277D17778])
    {
      v141 = objc_allocWithZone(HFImageIconDescriptor);
      v142 = sub_20DD64E74();
      v140 = [v141 initWithSystemImageNamed_];
      swift_unknownObjectRelease();

      (*(v222 + 8))(v223, v221);
      return v140;
    }

    v149 = v223;
    v150 = v222;
    v151 = v221;
    if (v77 == *MEMORY[0x277D17780])
    {
      v152 = objc_allocWithZone(HFImageIconDescriptor);
      v153 = sub_20DD64E74();
      v140 = [v152 initWithSystemImageNamed_];
      swift_unknownObjectRelease();

      goto LABEL_158;
    }

    if (v77 != *MEMORY[0x277D17798])
    {
      v162 = HFEvent.accessory.getter();
      if (v162)
      {
        v163 = v162;
        v164 = [objc_opt_self() iconDescriptorForAccessory_];

        swift_unknownObjectRelease();
        (*(v150 + 8))(v149, v151);
        return v164;
      }

      v140 = [objc_allocWithZone(HFImageIconDescriptor) initWithImageIdentifier_];
      swift_unknownObjectRelease();
LABEL_158:

      (*(v150 + 8))(v149, v151);
      return v140;
    }

    (*(v222 + 96))(v223, v221);
    v155 = v171;
    v80 = v173;
    (*(v171 + 32))(v176, v149, v173);
    v40 = @"HFCAPackageIconIdentifierWindowVertical";
    v156 = v175;
    sub_20DD64644();
    v157 = v172;
    v158 = v174;
    v159 = (*(v172 + 88))(v156, v174);
    if (v159 != *MEMORY[0x277D175F8])
    {
      if (v159 == *MEMORY[0x277D175D8])
      {
        v160 = &HFCAPackageStateOn;
        goto LABEL_180;
      }

      if (v159 != *MEMORY[0x277D175E0] && v159 != *MEMORY[0x277D175F0] && v159 != *MEMORY[0x277D175E8])
      {
        v169 = *(v155 + 8);
        v94 = HFCAPackageStateOff;
        v169(v176, v80);
        (*(v157 + 8))(v175, v158);
        goto LABEL_102;
      }
    }

    v160 = &HFCAPackageStateOff;
LABEL_180:
    v93 = *(v155 + 8);
    v94 = *v160;
    v103 = &v208;
    goto LABEL_146;
  }

  v135 = v223;
  (*(v222 + 96))(v223, v221);
  v136 = v21;
  (*(v21 + 32))(v26, v135, v20);
  v137 = v177;
  sub_20DD648A4();
  sub_20DD64884();
  (*(v178 + 8))(v137, v179);
  v24 = v180;
  LODWORD(isUniquelyReferenced_nonNull_native) = (*(v37 + 88))(v31, v180);
  if (isUniquelyReferenced_nonNull_native == *MEMORY[0x277D17898])
  {
    goto LABEL_133;
  }

LABEL_154:
  if (isUniquelyReferenced_nonNull_native != *MEMORY[0x277D17848])
  {
    goto LABEL_168;
  }

  v145 = v37;
  v146 = v24;
  v147 = objc_allocWithZone(HFImageIconDescriptor);
  v148 = sub_20DD64E74();
LABEL_175:
  v161 = v148;
  v140 = [v147 initWithSystemImageNamed_];
  swift_unknownObjectRelease();

  (*(v21 + 8))(v26, v20);
  (*(v145 + 8))(v31, v146);
  return v140;
}

id HFEvent.iconColor.getter()
{
  v1 = v0;
  v2 = sub_20DD64784();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = sub_20DD649D4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, v1, v9);
  if ((*(v10 + 88))(v12, v9) == *MEMORY[0x277D17970])
  {
    (*(v10 + 96))(v12, v9);
    (*(v3 + 32))(v8, v12, v2);
    (*(v3 + 16))(v6, v8, v2);
    v13 = (*(v3 + 88))(v6, v2);
    if (v13 == *MEMORY[0x277D17770] || v13 == *MEMORY[0x277D17780])
    {
      v15 = *(v3 + 8);
      v15(v6, v2);
      v16 = [objc_opt_self() systemCyanColor];
      v15(v8, v2);
      return v16;
    }

    else
    {
      v18 = [objc_opt_self() labelColor];
      v19 = *(v3 + 8);
      v19(v8, v2);
      v19(v6, v2);
      return v18;
    }
  }

  else
  {
    v17 = [objc_opt_self() labelColor];
    (*(v10 + 8))(v12, v9);
    return v17;
  }
}

uint64_t sub_20DA83E48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844D38, &unk_20DD96E60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20DA83EB0()
{
  result = qword_27C8435F0;
  if (!qword_27C8435F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C8435F0);
  }

  return result;
}

void __swiftcall HFStaticItem.init(results:)(HFStaticItem *__return_ptr retstr, Swift::OpaquePointer results)
{
  v2 = results._rawValue + 64;
  v3 = 1 << *(results._rawValue + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(results._rawValue + 8);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F98];
  if (v5)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v11 >= v6)
    {

      v32 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      sub_20D9CA5EC(v8);

      v33 = sub_20DD64DB4();

      [v32 initWithResults_];

      return;
    }

    v5 = *&v2[8 * v11];
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v12 = __clz(__rbit64(v5)) | (v11 << 6);
    v13 = *(*(results._rawValue + 6) + 8 * v12);
    sub_20D9D7174(*(results._rawValue + 7) + 32 * v12, &v38);
    v37 = v13;
    sub_20DA8422C(&v37, v35);
    v14 = *&v35[0];
    sub_20D9D77C8((v35 + 8), v36);
    v15 = sub_20DD64EB4();
    v17 = v16;
    sub_20D9D7174(v36, v35);
    v18 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_20D9CB170(v15, v17);
    v22 = v8[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      break;
    }

    v26 = v21;
    if (v8[3] >= v25)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = v20;
        sub_20D9D256C();
        v20 = v31;
      }
    }

    else
    {
      sub_20D9CC5C4(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_20D9CB170(v15, v17);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_24;
      }
    }

    v5 &= v5 - 1;
    if (v26)
    {
      v9 = v20;

      v10 = (v8[7] + 32 * v9);
      __swift_destroy_boxed_opaque_existential_0(v10);
      sub_20D9D77C8(v35, v10);

      __swift_destroy_boxed_opaque_existential_0(v36);
      sub_20DA8429C(&v37);
      v7 = v11;
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v8[(v20 >> 6) + 8] |= 1 << v20;
      v28 = (v8[6] + 16 * v20);
      *v28 = v15;
      v28[1] = v17;
      sub_20D9D77C8(v35, (v8[7] + 32 * v20));

      __swift_destroy_boxed_opaque_existential_0(v36);
      sub_20DA8429C(&v37);
      v29 = v8[2];
      v24 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v24)
      {
        goto LABEL_23;
      }

      v8[2] = v30;
      v7 = v11;
      if (!v5)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v11 = v7;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_20DD659E4();
  __break(1u);
}

uint64_t sub_20DA8422C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C845130, &unk_20DD96BA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DA8429C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C845130, &unk_20DD96BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t HFMatterSnapshotContainer.device(for:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20DD64354();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D50, &qword_20DD94250);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - v8;
  v10 = sub_20DD65334();
  if ((v11 & 1) != 0 || !v10)
  {
    v14 = sub_20DD64294();
    v15 = *(*(v14 - 8) + 56);

    return v15(a1, 1, 1, v14);
  }

  else
  {
    v12 = v10;
    v13 = *(v1 + OBJC_IVAR___HFMatterSnapshotContainer_internalContainer);
    if (v13)
    {
      (*(v4 + 16))(v9, v13 + OBJC_IVAR____TtCE4HomeCSo25HFMatterSnapshotContainerP33_B7E3F95BF7FF115BC363C826A52F413717InternalContainer_snapshot, v3);
      (*(v4 + 56))(v9, 0, 1, v3);
    }

    else
    {
      (*(v4 + 56))(v9, 1, 1, v3);
    }

    if ((*(v4 + 48))(v9, 1, v3))
    {
      sub_20DA846C4(v9);
    }

    else
    {
      (*(v4 + 16))(v6, v9, v3);
      sub_20DA846C4(v9);
      v17 = sub_20DD642E4();
      (*(v4 + 8))(v6, v3);
      if (*(v17 + 16))
      {
        v18 = sub_20D9CB2A8(v12);
        if (v19)
        {
          v20 = v18;
          v21 = *(v17 + 56);
          v22 = sub_20DD64294();
          v23 = *(v22 - 8);
          (*(v23 + 16))(a1, v21 + *(v23 + 72) * v20, v22);

          return (*(v23 + 56))(a1, 0, 1, v22);
        }
      }
    }

    v24 = sub_20DD64294();
    return (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
  }
}

uint64_t sub_20DA846C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D50, &qword_20DD94250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DA8474C()
{
  sub_20DD650F4();
  *(v0 + 24) = sub_20DD650E4();
  v2 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA847E0, v2, v1);
}

uint64_t sub_20DA847E0()
{

  v1 = [swift_getObjCClassFromMetadata() fetchCurrent];
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_20DA849C8(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_20DA84A34, 0, 0);
}

uint64_t sub_20DA84A34()
{
  sub_20DD650F4();
  *(v0 + 32) = sub_20DD650E4();
  v2 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA84AC8, v2, v1);
}

uint64_t sub_20DA84AC8()
{
  v1 = *(v0 + 16);

  *(v0 + 40) = [v1 fetchCurrent];

  return MEMORY[0x2822009F8](sub_20DA84B50, 0, 0);
}

uint64_t sub_20DA84B50()
{
  v1 = v0[3];
  v2 = v0[5];
  if (v1)
  {
    v1[2](v0[3], v0[5]);

    _Block_release(v1);
  }

  else
  {
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_20DA84C08()
{
  v1 = OBJC_IVAR____TtCE4HomeCSo25HFMatterSnapshotContainerP33_B7E3F95BF7FF115BC363C826A52F413717InternalContainer_snapshot;
  v2 = sub_20DD64354();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

char *_sSo25HFMatterSnapshotContainerC4HomeE12fetchCurrentAByFZ_0()
{
  v0 = sub_20DD64354();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  v7 = [objc_allocWithZone(HFMatterSnapshotContainer) init];
  sub_20DD63C84();
  v8 = sub_20DD63C64();
  sub_20DD63BF4();

  v9 = *(v1 + 32);
  v9(v4, v6, v0);
  _s17InternalContainerCMa(0);
  v10 = swift_allocObject();
  v9((v10 + OBJC_IVAR____TtCE4HomeCSo25HFMatterSnapshotContainerP33_B7E3F95BF7FF115BC363C826A52F413717InternalContainer_snapshot), v4, v0);
  *&v7[OBJC_IVAR___HFMatterSnapshotContainer_internalContainer] = v10;

  return v7;
}

uint64_t _s17InternalContainerCMa(uint64_t a1)
{
  result = qword_27C844D50;
  if (!qword_27C844D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20DA84E80(uint64_t a1)
{
  result = sub_20DD64354();
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

unint64_t type metadata accessor for HFMatterSnapshotContainer()
{
  result = qword_27C844D60;
  if (!qword_27C844D60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C844D60);
  }

  return result;
}

uint64_t sub_20DA84F5C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D9D77C4;

  return sub_20DA849C8(v2, v3);
}

HFMatterColors __swiftcall HFMatterColors.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_20DA85110(uint64_t a1)
{
  v3 = sub_20DD63744();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v36 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v37 = &v27 - v7;
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v27 = v1;
    v39 = MEMORY[0x277D84F90];
    sub_20DD65774();
    v35 = a1 + 56;
    result = sub_20DD65514();
    v10 = result;
    v11 = 0;
    v38 = *(a1 + 36);
    v32 = (v4 + 8);
    v33 = v4 + 16;
    v28 = a1 + 64;
    v31 = xmmword_20DD967E0;
    v34 = a1;
    v29 = v8;
    v30 = v4;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v35 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_27;
      }

      if (v38 != *(a1 + 36))
      {
        goto LABEL_28;
      }

      v14 = *(a1 + 48) + *(v4 + 72) * v10;
      v15 = *(v4 + 16);
      v16 = v37;
      v15(v37, v14, v3);
      v15(v36, v16, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
      v17 = swift_allocObject();
      *(v17 + 16) = v31;
      if (qword_27C842500 != -1)
      {
        swift_once();
      }

      *(v17 + 32) = qword_27C844D88;
      v18 = qword_27C842508;

      if (v18 != -1)
      {
        swift_once();
      }

      *(v17 + 40) = qword_27C844D90;
      v19 = qword_27C842510;

      if (v19 != -1)
      {
        swift_once();
      }

      *(v17 + 48) = qword_27C844D98;
      sub_20DD64D44();
      swift_allocObject();

      sub_20DD64D34();
      (*v32)(v37, v3);
      sub_20DD65754();
      sub_20DD65784();
      sub_20DD65794();
      result = sub_20DD65764();
      a1 = v34;
      v12 = 1 << *(v34 + 32);
      if (v10 >= v12)
      {
        goto LABEL_29;
      }

      v20 = *(v35 + 8 * v13);
      if ((v20 & (1 << v10)) == 0)
      {
        goto LABEL_30;
      }

      if (v38 != *(v34 + 36))
      {
        goto LABEL_31;
      }

      v21 = v20 & (-2 << (v10 & 0x3F));
      if (v21)
      {
        v12 = __clz(__rbit64(v21)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v4 = v30;
      }

      else
      {
        v22 = v13 << 6;
        v23 = v13 + 1;
        v24 = (v28 + 8 * v13);
        v4 = v30;
        while (v23 < (v12 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_20D9EF46C(v10, v38, 0);
            a1 = v34;
            v12 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_20D9EF46C(v10, v38, 0);
        a1 = v34;
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v29)
      {
        return v39;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

void sub_20DA85578(uint64_t a1)
{
  v1 = a1;
  v18 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20DD65564();
    sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
    sub_20D9EC18C(&qword_280E01F00, &qword_280E01F10, off_277DEFBE0);
    sub_20DD65284();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_20DD655F4() || (sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_20D9C51CC(v1);
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x20F325F00]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20DD65014();
      }

      sub_20DD65054();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_20DA857FC()
{
  type metadata accessor for MediaStateFetchManager();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DA8, &qword_20DD96840);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x277D84FA0];
  *(v0 + 16) = result;
  qword_27C844D78 = v0;
  return result;
}

uint64_t MediaStateFetchManager.fetchUpdates(items:in:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x2822009F8](sub_20DA858D8, 0, 0);
}

uint64_t sub_20DA858D8()
{
  v12 = v0;
  v1 = v0[2];
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (!sub_20DD655B4())
    {
      goto LABEL_10;
    }
  }

  else if (!*(v1 + 16))
  {
LABEL_10:
    v9 = v0[1];

    return v9();
  }

  v2 = v0[4];
  v3 = sub_20DA85E50(v0[2]);
  v4 = *(v2 + 16);
  *(swift_task_alloc() + 16) = v3;
  os_unfair_lock_lock((v4 + 24));
  sub_20DA86338((v4 + 16), &v11);
  os_unfair_lock_unlock((v4 + 24));
  v5 = v11;

  if (!*(v5 + 16))
  {

    goto LABEL_10;
  }

  *(swift_task_alloc() + 16) = v5;
  os_unfair_lock_lock((v4 + 24));
  sub_20DA86354();
  os_unfair_lock_unlock((v4 + 24));

  v6 = sub_20DA85110(v5);
  v0[6] = v6;

  v0[7] = sub_20DD653F4();
  v10 = (*MEMORY[0x277CCE638] + MEMORY[0x277CCE638]);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_20DA85AEC;

  return v10(v6);
}

uint64_t sub_20DA85AEC()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20DA85C2C, 0, 0);
  }

  else
  {
    v3 = v2[7];

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_20DA85C2C()
{
  v19 = v0;

  if (qword_27C842518 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = sub_20DD64C44();
  __swift_project_value_buffer(v2, qword_27C84C6A8);
  v3 = v1;
  v4 = sub_20DD64C24();
  v5 = sub_20DD65364();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 72);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136315394;
    v11 = sub_20DD65B04();
    v13 = sub_20D9E0B38(v11, v12, &v18);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_20D9BF000, v4, v5, "%s: Failed to fetch updates for media devices with error: %@", v8, 0x16u);
    sub_20D9D76EC(v9, &unk_27C843630, &qword_20DD94080);
    MEMORY[0x20F327D10](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x20F327D10](v10, -1, -1);
    MEMORY[0x20F327D10](v8, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 8);

  return v16();
}

void *sub_20DA85E50(uint64_t a1)
{
  v2 = sub_20DD63744();
  v3 = *(v2 - 8);
  v34 = v2;
  v35 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DA85578(a1);
  v7 = v6;
  v36 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20DD655B4())
  {
    v9 = MEMORY[0x277D84F90];
    if (i)
    {
      v10 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x20F326680](v10, v7);
        }

        else
        {
          if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v11 = *&v7[8 * v10 + 32];
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if ([v11 isHomePod] & 1) != 0 || objc_msgSend(v12, sel_isAppleTV) || (objc_msgSend(v12, sel_isHomePodMediaSystem))
        {
          sub_20DD65754();
          sub_20DD65784();
          sub_20DD65794();
          sub_20DD65764();
        }

        else
        {
        }

        ++v10;
        if (v13 == i)
        {
          v14 = v36;
          v9 = MEMORY[0x277D84F90];
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v14 = MEMORY[0x277D84F90];
LABEL_18:

    v36 = v9;
    if ((v14 & 0x8000000000000000) == 0 && (v14 & 0x4000000000000000) == 0)
    {
      v15 = *(v14 + 16);
      if (!v15)
      {
        break;
      }

      goto LABEL_21;
    }

    v15 = sub_20DD655B4();
    if (!v15)
    {
      break;
    }

LABEL_21:
    v16 = 0;
    v33 = v14 & 0xC000000000000001;
    v7 = v5;
    while (1)
    {
      if (v33)
      {
        v17 = MEMORY[0x20F326680](v16, v14);
      }

      else
      {
        if (v16 >= *(v14 + 16))
        {
          goto LABEL_32;
        }

        v17 = *(v14 + 8 * v16 + 32);
      }

      v18 = v17;
      v5 = (v16 + 1);
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v19 = [v17 accessories];
      sub_20D9D7510(0, &qword_27C844290, 0x277CD1650);
      sub_20D9EC18C(&qword_27C843840, &qword_27C844290, 0x277CD1650);
      v20 = sub_20DD651E4();

      sub_20DA134FC(v20);
      ++v16;
      if (v5 == v15)
      {
        v5 = v7;
        v21 = v36;
        v9 = MEMORY[0x277D84F90];
        goto LABEL_36;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v21 = v9;
LABEL_36:

  if (v21 >> 62)
  {
    v22 = sub_20DD655B4();
    if (!v22)
    {
      goto LABEL_48;
    }

LABEL_38:
    v36 = v9;
    result = sub_20DA4B068(0, v22 & ~(v22 >> 63), 0);
    if ((v22 & 0x8000000000000000) == 0)
    {
      v24 = 0;
      v25 = v36;
      do
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x20F326680](v24, v21);
        }

        else
        {
          v26 = *(v21 + 8 * v24 + 32);
        }

        v27 = v26;
        v28 = [v26 uniqueIdentifier];
        sub_20DD63714();

        v36 = v25;
        v30 = *(v25 + 16);
        v29 = *(v25 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_20DA4B068((v29 > 1), v30 + 1, 1);
          v25 = v36;
        }

        ++v24;
        *(v25 + 16) = v30 + 1;
        (*(v35 + 32))(v25 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v30, v5, v34);
      }

      while (v22 != v24);

      goto LABEL_49;
    }

    __break(1u);
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_38;
    }

LABEL_48:

    v25 = MEMORY[0x277D84F90];
LABEL_49:
    v31 = sub_20D9F9514(v25);

    return v31;
  }

  return result;
}

uint64_t sub_20DA862B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) <= *(a2 + 16) >> 3)
  {

    sub_20D9E9E58(v4);
    result = a2;
  }

  else
  {

    result = sub_20DA87A78(v4, a2);
  }

  *a3 = result;
  return result;
}

uint64_t static Collection<>.mediaStateInfo.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20DD967E0;
  if (qword_27C842500 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_27C844D88;
  v1 = qword_27C842508;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_27C844D90;
  v2 = qword_27C842510;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v0 + 48) = qword_27C844D98;

  return v0;
}

Swift::Void __swiftcall MediaStateFetchManager.resetFetchedItems()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  if (*(*(v1 + 16) + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v2 = *(v1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DA0, &qword_20DD967F8);
    sub_20DD65544();
    *(v1 + 16) = v2;
  }

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t MediaStateFetchManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_20DA86614(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_20DA866D8(uint64_t a1, void *a2, uint64_t *a3)
{
  sub_20DD64EB4();
  sub_20DD64D24();
  swift_allocObject();
  result = sub_20DD64D14();
  *a3 = result;
  return result;
}

uint64_t sub_20DA86760()
{
  v0 = sub_20DD64C44();
  __swift_allocate_value_buffer(v0, qword_27C84C6A8);
  __swift_project_value_buffer(v0, qword_27C84C6A8);
  return sub_20DD64C34();
}

uint64_t sub_20DA86820(uint64_t a1, uint64_t a2)
{

  return sub_20DA86950(a1, a2, &qword_280E02100, 0x277CD1970, &unk_280E020F0, sub_20D9F8670, sub_20DA884DC);
}

uint64_t sub_20DA868B8(uint64_t a1, uint64_t a2)
{

  return sub_20DA86950(a1, a2, &qword_27C843BB0, 0x277CD1B68, &qword_27C843930, sub_20D9F8684, sub_20DA88778);
}

uint64_t sub_20DA86950(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4, unint64_t *a5, uint64_t (*a6)(unint64_t *, unint64_t, void *, uint64_t), unint64_t *a7)
{
  v70 = a4;
  v68 = a3;
  v8 = a2;
  v88 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v9 = a1;
  v67 = a6;
  v66 = a7;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20DD65564();
    v7 = sub_20D9D7510(0, v68, v70);
    sub_20D9EC18C(a5, v68, v70);
    sub_20DD65284();
    v9 = v83;
    v12 = v84;
    v13 = v85;
    v14 = v86;
    v15 = v87;
  }

  else
  {
    v16 = -1 << *(a1 + 32);
    v12 = a1 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a1 + 56);

    v14 = 0;
  }

  v78 = v9;
  v79 = v12;
  v80 = v13;
  v81 = v14;
  v69 = v13;
  v19 = (v13 + 64) >> 6;
  v75 = (v8 + 56);
  v82 = v15;
  v72 = v12;
  v73 = v9;
  for (i = v19; ; v19 = i)
  {
    if (v9 < 0)
    {
      v27 = sub_20DD655F4();
      if (!v27)
      {
        goto LABEL_65;
      }

      v76 = v27;
      sub_20D9D7510(0, v68, v70);
      swift_dynamicCast();
      v25 = v77;
      v23 = v14;
      v7 = v15;
      if (!v77)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v20 = v15;
      v21 = v14;
      if (v15)
      {
LABEL_20:
        v7 = (v20 - 1) & v20;
        v25 = *(*(v9 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
        v26 = v25;
        v23 = v21;
      }

      else
      {
        if (v19 <= v14 + 1)
        {
          v22 = v14 + 1;
        }

        else
        {
          v22 = v19;
        }

        v23 = v22 - 1;
        v24 = v14;
        while (1)
        {
          v21 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_67;
          }

          if (v21 >= v19)
          {
            break;
          }

          v20 = *(v12 + 8 * v21);
          ++v24;
          if (v20)
          {
            goto LABEL_20;
          }
        }

        v25 = 0;
        v7 = 0;
      }

      v78 = v9;
      v79 = v12;
      v80 = v69;
      v81 = v23;
      v82 = v7;
      if (!v25)
      {
LABEL_65:
        v59 = v9;
        goto LABEL_63;
      }
    }

    v28 = v25;
    v29 = sub_20DD65444();
    v30 = -1 << *(v8 + 32);
    v15 = v29 & ~v30;
    v9 = v15 >> 6;
    v21 = 1 << v15;
    if (((1 << v15) & v75[v15 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v14 = v23;
    v15 = v7;
    v12 = v72;
    v9 = v73;
  }

  v31 = ~v30;
  v32 = sub_20D9D7510(0, v68, v70);
  v33 = *(*(v8 + 48) + 8 * v15);
  v74 = v32;
  while (1)
  {
    v34 = sub_20DD65454();

    if (v34)
    {
      break;
    }

    v15 = (v15 + 1) & v31;
    v9 = v15 >> 6;
    v21 = 1 << v15;
    if (((1 << v15) & v75[v15 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v33 = *(*(v8 + 48) + 8 * v15);
  }

  v36 = *(v8 + 32);
  v65 = ((1 << v36) + 63) >> 6;
  v11 = 8 * v65;
  if ((v36 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v66 = &v65;
    MEMORY[0x28223BE20](v35);
    v38 = &v65 - ((v37 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v38, v75, v37);
    v39 = *&v38[8 * v9] & ~v21;
    v40 = *(v8 + 16);
    v68 = v38;
    *&v38[8 * v9] = v39;
    v41 = (v40 - 1);
    v15 = v72;
    v42 = v73;
    v43 = i;
LABEL_33:
    v70 = v41;
    while (v42 < 0)
    {
      v44 = sub_20DD655F4();
      if (!v44)
      {
        goto LABEL_61;
      }

      v76 = v44;
      swift_dynamicCast();
      v45 = v77;
      if (!v77)
      {
        goto LABEL_61;
      }

LABEL_50:
      v50 = sub_20DD65444();
      v51 = v8;
      v52 = -1 << *(v8 + 32);
      v53 = v50 & ~v52;
      v54 = v53 >> 6;
      v9 = 1 << v53;
      if (((1 << v53) & v75[v53 >> 6]) != 0)
      {
        v55 = ~v52;
        while (1)
        {
          v56 = *(*(v51 + 48) + 8 * v53);
          v57 = sub_20DD65454();

          if (v57)
          {
            break;
          }

          v53 = (v53 + 1) & v55;
          v54 = v53 >> 6;
          v9 = 1 << v53;
          if (((1 << v53) & v75[v53 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v58 = v68[v54];
        v68[v54] = v58 & ~v9;
        v8 = v51;
        v15 = v72;
        v42 = v73;
        v41 = v70;
        v43 = i;
        if ((v58 & v9) != 0)
        {
          v41 = (v70 - 1);
          if (__OFSUB__(v70, 1))
          {
            __break(1u);
          }

          if (v70 == 1)
          {

            v8 = MEMORY[0x277D84FA0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v8 = v51;
        v15 = v72;
        v42 = v73;
        v41 = v70;
        v43 = i;
      }
    }

    if (v7)
    {
      v21 = v23;
LABEL_48:
      v48 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v45 = *(*(v42 + 48) + ((v21 << 9) | (8 * v48)));
      v49 = v45;
      v47 = v21;
LABEL_49:
      v78 = v42;
      v79 = v15;
      v80 = v69;
      v81 = v47;
      v23 = v47;
      v82 = v7;
      if (!v45)
      {
LABEL_61:
        v8 = v67(v68, v65, v41, v8);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v43 <= v23 + 1)
    {
      v46 = v23 + 1;
    }

    else
    {
      v46 = v43;
    }

    v47 = v46 - 1;
    while (1)
    {
      v21 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v21 >= v43)
      {
        v45 = 0;
        v7 = 0;
        goto LABEL_49;
      }

      v7 = *(v15 + 8 * v21);
      ++v23;
      if (v7)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v61 = v11;

    v62 = v8;
    v63 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {

      v8 = v62;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v75, v63);
  v8 = (v66)(v64, v65, v62, v15, &v78);

  MEMORY[0x20F327D10](v64, -1, -1);
LABEL_62:
  v59 = v78;
LABEL_63:
  sub_20D9C51CC(v59);
  return v8;
}

uint64_t sub_20DA87014(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D40, &unk_20DD94230);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v65 - v9);
  v11 = sub_20DD63FE4();
  v12 = MEMORY[0x28223BE20](v11);
  v85 = (&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v65 - v15);
  MEMORY[0x28223BE20](v14);
  v80 = (&v65 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v66 = v10;
  v68 = v8;
  v20 = a1 + 64;
  v19 = *(a1 + 64);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = (a2 + 56);
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 64; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      sub_20D9D76EC(v30, &qword_27C843D40, &unk_20DD94230);
      v59 = a1;
      goto LABEL_53;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = sub_20DA893C4(&qword_27C844380, MEMORY[0x277D15B60], MEMORY[0x277D15B68]);
    v32 = sub_20DD64E24();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v16, *(a2 + 48) + v84 * v24, v11);
    v35 = sub_20DA893C4(&qword_27C8434C0, MEMORY[0x277D15B60], MEMORY[0x277D15B70]);
    v36 = sub_20DD64E64();
    v87 = *v88;
    v87(v16, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v66 = &v65;
    MEMORY[0x28223BE20](v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        sub_20D9D76EC(v24, &qword_27C843D40, &unk_20DD94230);
        a2 = sub_20D9F86AC(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = sub_20DD64E24();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v16, *(v52 + 48) + v54 * v84, v11);
        v55 = sub_20DD64E64();
        v87(v16, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v16, *(v52 + 48) + v54 * v84, v11);
            v57 = sub_20DD64E64();
            v87(v16, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;

    v80 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v80;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v82, v62);
  a2 = sub_20DA88A1C(v64, v65, v80, v24, &v89);

  MEMORY[0x20F327D10](v64, -1, -1);
LABEL_52:
  v59 = v89;
LABEL_53:
  sub_20D9C51CC(v59);
  return a2;
}

uint64_t sub_20DA87A78(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v65 - v9);
  v11 = sub_20DD63744();
  v12 = MEMORY[0x28223BE20](v11);
  v85 = (&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v65 - v15);
  MEMORY[0x28223BE20](v14);
  v80 = (&v65 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v66 = v10;
  v68 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = (a2 + 56);
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      sub_20D9D76EC(v30, &unk_27C843A70, &qword_20DD94260);
      v59 = a1;
      goto LABEL_53;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = sub_20DA893C4(&qword_280E02290, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v32 = sub_20DD64E24();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v16, *(a2 + 48) + v84 * v24, v11);
    v35 = sub_20DA893C4(&qword_280E02288, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v36 = sub_20DD64E64();
    v87 = *v88;
    v87(v16, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v66 = &v65;
    MEMORY[0x28223BE20](v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        sub_20D9D76EC(v24, &unk_27C843A70, &qword_20DD94260);
        a2 = sub_20D9F8BD4(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = sub_20DD64E24();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v16, *(v52 + 48) + v54 * v84, v11);
        v55 = sub_20DD64E64();
        v87(v16, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v16, *(v52 + 48) + v54 * v84, v11);
            v57 = sub_20DD64E64();
            v87(v16, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;

    v80 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v80;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v82, v62);
  a2 = sub_20DA88EF0(v64, v65, v80, v24, &v89);

  MEMORY[0x20F327D10](v64, -1, -1);
LABEL_52:
  v59 = v89;
LABEL_53:
  sub_20D9C51CC(v59);
  return a2;
}

void sub_20DA884DC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_20DD655F4())
          {
            goto LABEL_30;
          }

          sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v12 = 0;
                v16 = 0;
                goto LABEL_18;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v15 = v11;
LABEL_18:
          v5[3] = v15;
          v5[4] = v16;
          if (!v12)
          {
LABEL_30:

            sub_20D9F8670(a1, a2, v30, a3);
            return;
          }
        }

        v18 = sub_20DD65444();
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = sub_20DD65454();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = sub_20DD65454();

          if (v27)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_24:

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
      v5 = a5;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_20DA88778(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_20DD655F4())
          {
            goto LABEL_29;
          }

          sub_20D9D7510(0, &qword_27C843BB0, 0x277CD1B68);
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v5[3] = v15;
                v5[4] = 0;
                goto LABEL_29;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v5[3] = v11;
          v5[4] = v16;
          if (!v12)
          {
LABEL_29:

            sub_20D9F8684(a1, a2, v30, a3);
            return;
          }
        }

        v18 = sub_20DD65444();
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_20D9D7510(0, &qword_27C843BB0, 0x277CD1B68);
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = sub_20DD65454();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = sub_20DD65454();

          if (v27)
          {
            goto LABEL_23;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_23:

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
      v5 = a5;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}