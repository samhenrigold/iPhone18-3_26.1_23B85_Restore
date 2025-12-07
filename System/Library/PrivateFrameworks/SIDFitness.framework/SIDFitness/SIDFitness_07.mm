uint64_t sub_262A10278(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v86 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v86;
    if (!*v86)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_262A1F22C(v8);
      v8 = result;
    }

    v78 = (v8 + 16);
    v79 = *(v8 + 16);
    if (v79 >= 2)
    {
      while (*a3)
      {
        v80 = (v8 + 16 * v79);
        v81 = *v80;
        v82 = &v78[2 * v79];
        v83 = v82[1];
        sub_262A107F4((*a3 + 16 * *v80), (*a3 + 16 * *v82), (*a3 + 16 * v83), v5);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_114;
        }

        if (v79 - 2 >= *v78)
        {
          goto LABEL_115;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *v78 - v79;
        if (*v78 < v79)
        {
          goto LABEL_116;
        }

        v79 = *v78 - 1;
        result = memmove(v82, v82 + 2, 16 * v84);
        *v78 = v79;
        if (v79 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v85 = a4;
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
        v19 = 16 * v7 - 16;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = *(v23 + v11);
            *(v23 + v11) = *(v23 + v19);
            *(v23 + v19) = v22;
          }

          ++v21;
          v19 -= 16;
          v11 += 16;
        }

        while (v21 < v20);
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
      result = sub_2629A8DAC(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v32 = *(v8 + 24);
    v33 = v5 + 1;
    if (v5 >= v32 >> 1)
    {
      result = sub_2629A8DAC((v32 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v33;
    v34 = v8 + 32;
    v35 = (v8 + 32 + 16 * v5);
    *v35 = v9;
    v35[1] = v7;
    v87 = *v86;
    if (!*v86)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v36 = *(v8 + 32);
          v37 = *(v8 + 40);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = (v8 + 16 * v33);
          v54 = *v52;
          v53 = v52[1];
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = (v34 + 16 * v5);
          v60 = *v58;
          v59 = v58[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v5 = v33 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v33 < 2)
        {
          goto LABEL_112;
        }

        v62 = (v8 + 16 * v33);
        v64 = *v62;
        v63 = v62[1];
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_72:
        if (v57)
        {
          goto LABEL_108;
        }

        v65 = (v34 + 16 * v5);
        v67 = *v65;
        v66 = v65[1];
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_110;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v33)
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

        v73 = (v34 + 16 * (v5 - 1));
        v74 = *v73;
        v75 = (v34 + 16 * v5);
        v76 = v75[1];
        sub_262A107F4((*a3 + 16 * *v73), (*a3 + 16 * *v75), (*a3 + 16 * v76), v87);
        if (v4)
        {
        }

        if (v76 < v74)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v73 = v74;
        v73[1] = v76;
        v77 = *(v8 + 16);
        if (v5 >= v77)
        {
          goto LABEL_101;
        }

        v33 = v77 - 1;
        result = memmove((v34 + 16 * v5), v75 + 2, 16 * (v77 - 1 - v5));
        *(v8 + 16) = v77 - 1;
        if (v77 <= 2)
        {
          goto LABEL_3;
        }
      }

      v40 = v34 + 16 * v33;
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = (v8 + 16 * v33);
      v49 = *v47;
      v48 = v47[1];
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = (v34 + 16 * v5);
        v71 = *v69;
        v70 = v69[1];
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_113;
        }

        if (v38 < v72)
        {
          v5 = v33 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v85;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 16 * v7;
  v26 = v9 - v7;
LABEL_30:
  v27 = *(v24 + 16 * v7 + 8);
  v28 = v26;
  v29 = v25;
  while (1)
  {
    if (*(v29 - 1) >= v27)
    {
LABEL_29:
      ++v7;
      v25 += 16;
      --v26;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    v30 = *v29;
    *v29 = *(v29 - 1);
    *(v29 - 1) = v27;
    *(v29 - 2) = v30;
    v29 -= 2;
    if (__CFADD__(v28++, 1))
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

uint64_t sub_262A107F4(char *__dst, char *__src, char *a3, char *a4)
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

uint64_t sub_262A109F8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_262A2A658() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_262A2A988();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_262A10B68(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_262A2A658() + 1) & ~v5;
    do
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      sub_262A2A998();
      MEMORY[0x26672F240](v10);
      MEMORY[0x26672F240](v11);
      result = sub_262A2A9D8();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_262A10D0C(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_262A2A658() + 1) & ~v5;
    v29 = v4;
    do
    {
      v9 = v2;
      v10 = (*(v2 + 48) + 32 * v6);
      v11 = v7;
      v12 = *v10;
      v13 = v10[1];
      v14 = v10[2];
      v15 = v10[3];
      v16 = v8;
      sub_262A2A998();
      v17 = v12;
      v7 = v11;
      MEMORY[0x26672F240](v17);
      MEMORY[0x26672F240](v13);
      MEMORY[0x26672F240](v14);
      MEMORY[0x26672F240](v15);
      result = sub_262A2A9D8();
      v8 = v16;
      v18 = result & v11;
      if (v3 >= v16)
      {
        if (v18 < v16)
        {
          v4 = v29;
          v2 = v9;
        }

        else
        {
          v4 = v29;
          v2 = v9;
          if (v3 >= v18)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v29;
        v2 = v9;
        if (v18 >= v8 || v3 >= v18)
        {
LABEL_11:
          v19 = *(v2 + 48);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v22 = v21[1];
            *v20 = *v21;
            v20[1] = v22;
          }

          v23 = *(v2 + 56);
          v24 = (v23 + 8 * v3);
          v25 = (v23 + 8 * v6);
          if (v3 != v6 || v24 >= v25 + 1)
          {
            *v24 = *v25;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v11;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v26 = *(v2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v28;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_262A10F0C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_262A2A658() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_262A2A998();
      MEMORY[0x26672F240](v9);
      result = sub_262A2A9D8();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_262A110A0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_262A2A658() + 1) & ~v5;
    do
    {
      sub_262A2A998();

      sub_262A2A448();
      v9 = sub_262A2A9D8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_262A11250(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_262A2A658() + 1) & ~v5;
    do
    {
      sub_262A2A998();
      sub_262A2A448();

      result = sub_262A2A9D8();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 32 * v3);
        v16 = (v14 + 32 * v6);
        if (v3 != v6 || v15 >= v16 + 2)
        {
          v9 = v16[1];
          *v15 = *v16;
          v15[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
    JUMPOUT(0x262A11800);
  }

  *(a2 + 16) = v19;
  ++*(a2 + 36);
  return result;
}

unint64_t sub_262A118B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2629CB2B8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2629D0170(v16, a4 & 1);
      result = sub_2629CB2B8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_262A2A938();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_2629CE2C8();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = a2;
    v22[1] = a3;
    *(v21[7] + 8 * result) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  *(v21[7] + 8 * result) = a1;
}

unint64_t sub_262A11A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_2629CB134(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_2629D0B78(v20, a6 & 1);
      result = sub_2629CB134(a2, a3, a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        result = sub_262A2A938();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      sub_2629CE828();
      result = v23;
    }
  }

  v25 = *v7;
  if ((v21 & 1) == 0)
  {
    v25[(result >> 6) + 8] |= 1 << result;
    v26 = (v25[6] + 32 * result);
    *v26 = a2;
    v26[1] = a3;
    v26[2] = a4;
    v26[3] = a5;
    *(v25[7] + 8 * result) = a1;
    v27 = v25[2];
    v19 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v19)
    {
      v25[2] = v28;
      return result;
    }

    goto LABEL_15;
  }

  *(v25[7] + 8 * result) = a1;
}

unint64_t sub_262A11BAC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2629D41BC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_2629CEB04();
    result = v17;
    goto LABEL_8;
  }

  sub_2629D10F4(v14, a3 & 1);
  result = sub_2629D41BC(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_262A2A938();
  __break(1u);
  return result;
}

unint64_t sub_262A11CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_2629CB134(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 >= v20 && (a6 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v22 >= v20 && (a6 & 1) == 0)
  {
    v23 = result;
    sub_2629CEB18();
    result = v23;
    goto LABEL_8;
  }

  sub_2629D1374(v20, a6 & 1);
  result = sub_2629CB134(a2, a3, a4, a5);
  if ((v21 & 1) == (v24 & 1))
  {
LABEL_8:
    v25 = *v7;
    if (v21)
    {
      *(v25[7] + 8 * result) = a1;
      return result;
    }

    v25[(result >> 6) + 8] |= 1 << result;
    v26 = (v25[6] + 32 * result);
    *v26 = a2;
    v26[1] = a3;
    v26[2] = a4;
    v26[3] = a5;
    *(v25[7] + 8 * result) = a1;
    v27 = v25[2];
    v19 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v19)
    {
      v25[2] = v28;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_262A2A938();
  __break(1u);
  return result;
}

_OWORD *sub_262A11E30(_OWORD *a1, uint64_t a2, char a3, __n128 a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_2629CB338(a2, a4);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v11;
  v17 = v9[3];
  if (v17 < v15 || (a3 & 1) == 0)
  {
    if (v17 >= v15 && (a3 & 1) == 0)
    {
      v18 = v10;
      sub_2629CEC70();
      v10 = v18;
      goto LABEL_8;
    }

    sub_2629D1630(v15, a3 & 1);
    v10 = sub_2629CB338(a2, v19);
    if ((v16 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_262A2A938();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v16)
  {
    v22 = (v21[7] + 32 * v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return sub_2629AD99C(a1, v22);
  }

  else
  {

    return sub_262A12424(v10, a2, a1, v21);
  }
}

unint64_t sub_262A11FA4(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), void (*a5)(void), void (*a6)(uint64_t, void), unint64_t a7)
{
  v11 = v7;
  v15 = *v7;
  result = a4(a2);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = v17;
  v23 = *(v15 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 < v21 || (a3 & 1) != 0)
    {
      a6(v21, a3 & 1);
      result = a4(a2);
      if ((v22 & 1) != (v25 & 1))
      {
LABEL_16:
        result = sub_262A2A938();
        __break(1u);
        return result;
      }
    }

    else
    {
      v24 = result;
      a5();
      result = v24;
    }
  }

  v26 = *v11;
  if ((v22 & 1) == 0)
  {
    v26[(result >> 6) + 8] |= 1 << result;
    *(v26[6] + result) = a2;
    *(v26[7] + 8 * result) = a1;
    v27 = v26[2];
    v20 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v20)
    {
      v26[2] = v28;
      return result;
    }

    goto LABEL_15;
  }

  *(v26[7] + 8 * result) = a1;
}

unint64_t sub_262A12124(uint64_t a1, uint64_t a2, uint64_t a3, char a4, __n128 a5)
{
  v6 = v5;
  v11 = *v5;
  result = sub_2629CB1E4(a3, a5);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a4 & 1) == 0)
  {
    if (v19 < v17 || (a4 & 1) != 0)
    {
      sub_2629D26E4(v17, a4 & 1);
      result = sub_2629CB1E4(a3, v21);
      if ((v18 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_262A2A938();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = result;
      sub_2629CEF88();
      result = v20;
    }
  }

  v23 = *v6;
  if ((v18 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + result) = a3;
    v25 = (v23[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v23[2];
    v16 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v16)
    {
      v23[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v24 = (v23[7] + 16 * result);
  *v24 = a1;
  v24[1] = a2;
}

unint64_t sub_262A1228C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, __n128 a7)
{
  v8 = v7;
  v15 = *v7;
  result = sub_2629CB1E4(a5, a7);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = v17;
  v23 = *(v15 + 24);
  if (v23 < v21 || (a6 & 1) == 0)
  {
    if (v23 < v21 || (a6 & 1) != 0)
    {
      sub_2629D3658(v21, a6 & 1);
      result = sub_2629CB1E4(a5, v25);
      if ((v22 & 1) != (v26 & 1))
      {
LABEL_16:
        result = sub_262A2A938();
        __break(1u);
        return result;
      }
    }

    else
    {
      v24 = result;
      sub_2629CF3C8();
      result = v24;
    }
  }

  v27 = *v8;
  if ((v22 & 1) == 0)
  {
    v27[(result >> 6) + 8] |= 1 << result;
    *(v27[6] + result) = a5;
    v29 = (v27[7] + 32 * result);
    *v29 = a1;
    v29[1] = a2;
    v29[2] = a3;
    v29[3] = a4;
    v30 = v27[2];
    v20 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (!v20)
    {
      v27[2] = v31;
      return result;
    }

    goto LABEL_15;
  }

  v28 = (v27[7] + 32 * result);
  *v28 = a1;
  v28[1] = a2;
  v28[2] = a3;
  v28[3] = a4;
}

_OWORD *sub_262A12424(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_2629AD99C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t *sub_262A1248C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, double))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_262A1251C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_262A1251C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, double))
{
  v22 = result;
  v23 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v27 = (v8 - 1) & v8;
LABEL_11:
    v24 = v10 | (v4 << 6);
    v13 = *(a3 + 48) + 24 * v24;
    v15 = *v13;
    v14 = *(v13 + 8);
    v28[0] = v15;
    v28[1] = v14;
    v29 = *(v13 + 16);
    v16 = v29;
    v17 = sub_2629D40D0(v15, v14, v29);
    v18 = v30;
    v19 = a4(v28, v17);
    result = sub_2629B6A68(v15, v14, v16);
    v30 = v18;
    if (v18)
    {
      return result;
    }

    v8 = v27;
    if (v19)
    {
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_262A26738(v22, a2, v23, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_16;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v27 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_262A126C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v20 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v21 = *(*(a3 + 48) + 8 * v17);
    result = a4(&v21);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v20 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_262A26988(v20, a2, v7, a3);
      }
    }
  }

  v15 = v8;
  while (1)
  {
    v8 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      goto LABEL_16;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*sub_262A12810(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_262A134DC(v5);
  v5[9] = sub_262A12B2C(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_262A15D78;
}

uint64_t (*sub_262A128B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x50uLL);
  }

  v11 = v10;
  *a1 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11[8] = sub_262A134DC(v11);
  v11[9] = sub_262A12D94(v11 + 4, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);
  return sub_262A15D78;
}

uint64_t (*sub_262A12978(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_262A13504(v5);
  v5[9] = sub_262A1304C((v5 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_262A12A1C;
}

uint64_t (*sub_262A12A20(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_262A134DC(v7);
  v7[9] = sub_262A13240(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_262A15D78;
}

void sub_262A12ACC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_262A12B2C(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, char a2)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_2629CB210(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_2629CE16C();
      v11 = v19;
      goto LABEL_11;
    }

    sub_2629CFF00(v16, a3 & 1);
    v11 = sub_2629CB210(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_262A2A938();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_262A12C74;
}

void sub_262A12C74(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(v2 + 32);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[3];
    v6 = *v2[2];
    if (v2[4])
    {
      goto LABEL_9;
    }

    v7 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v6[6] + 8 * v5) = v7;
    *(v6[7] + 8 * v5) = v3;
    v8 = v6[2];
    v9 = __OFADD__(v8, 1);
    v4 = v8 + 1;
    if (!v9)
    {
LABEL_13:
      v6[2] = v4;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      sub_262A109F8(v2[3], *v2[2]);
    }

    goto LABEL_14;
  }

  v5 = v2[3];
  v6 = *v2[2];
  if ((v4 & 1) == 0)
  {
    v10 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v6[6] + 8 * v5) = v10;
    *(v6[7] + 8 * v5) = v3;
    v11 = v6[2];
    v9 = __OFADD__(v11, 1);
    v4 = v11 + 1;
    if (v9)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

void (*sub_262A12D94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6))(uint64_t **a1, char a2)
{
  v7 = v6;
  if (MEMORY[0x277D84FD8])
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(0x40uLL);
  }

  v15 = v14;
  *a1 = v14;
  v14[4] = a5;
  v14[5] = v6;
  v14[2] = a3;
  v14[3] = a4;
  v14[1] = a2;
  v16 = *v6;
  v18 = sub_2629CB134(a2, a3, a4, a5);
  *(v15 + 56) = v17 & 1;
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a6 & 1) == 0)
  {
    if (v23 >= v21 && (a6 & 1) == 0)
    {
      sub_2629CE828();
      goto LABEL_12;
    }

    sub_2629D0B78(v21, a6 & 1);
    v24 = sub_2629CB134(a2, a3, a4, a5);
    if ((v22 & 1) == (v25 & 1))
    {
      v18 = v24;
      goto LABEL_12;
    }

LABEL_17:
    result = sub_262A2A938();
    __break(1u);
    return result;
  }

LABEL_12:
  v15[6] = v18;
  if (v22)
  {
    v26 = *(*(*v7 + 56) + 8 * v18);
  }

  else
  {
    v26 = 0;
  }

  *v15 = v26;
  return sub_262A12F1C;
}

void sub_262A12F1C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(v2 + 56);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[6];
    v6 = *v2[5];
    if (v2[7])
    {
      goto LABEL_9;
    }

    v7 = (v6[6] + 32 * v5);
    v8 = *(v2 + 1);
    v9 = *(v2 + 3);
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *v7 = v8;
    v7[1] = v9;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v6[2] = v4;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      sub_262A10D0C(v2[6], *v2[5]);
    }

    goto LABEL_14;
  }

  v5 = v2[6];
  v6 = *v2[5];
  if ((v4 & 1) == 0)
  {
    v12 = (v6[6] + 32 * v5);
    v13 = *(v2 + 1);
    v14 = *(v2 + 3);
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *v12 = v13;
    v12[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v15 = v6[2];
    v11 = __OFADD__(v15, 1);
    v4 = v15 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

uint64_t *(*sub_262A1304C(uint64_t a1, uint64_t a2, char a3))(uint64_t *result, char a2)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_2629D41BC(a2);
  *(a1 + 25) = v10 & 1;
  v12 = *(v8 + 16);
  v13 = (v10 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v10;
  v17 = *(v8 + 24);
  if (v17 < v15 || (a3 & 1) == 0)
  {
    if (v17 >= v15 && (a3 & 1) == 0)
    {
      v18 = v9;
      sub_2629CDF00(v11);
      v9 = v18;
      goto LABEL_8;
    }

    sub_2629CF7DC(v15, a3 & 1, v11);
    v9 = sub_2629D41BC(a2);
    if ((v16 & 1) == (v19 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_262A2A938();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v16)
  {
    v20 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v20 = 0;
  }

  *a1 = v20;
  return sub_262A13168;
}

uint64_t *sub_262A13168(uint64_t *result, char a2)
{
  v2 = *result;
  LOBYTE(v3) = *(result + 25);
  if (a2)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v4 = result[2];
    v5 = *result[1];
    if (*(result + 25))
    {
LABEL_9:
      *(v5[7] + 8 * v4) = v2;
      return result;
    }

    v6 = *(result + 24);
    v5[(v4 >> 6) + 8] |= 1 << v4;
    *(v5[6] + v4) = v6;
    v3 = v5[7];
    *(v3 + 8 * v4) = v2;
    v7 = v5[2];
    v8 = __OFADD__(v7, 1);
    v2 = v7 + 1;
    if (!v8)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v2)
  {
LABEL_10:
    if (v3)
    {
      return sub_262A10F0C(result[2], *result[1]);
    }

    return result;
  }

  v4 = result[2];
  v5 = *result[1];
  if (v3)
  {
    goto LABEL_9;
  }

  v9 = *(result + 24);
  v5[(v4 >> 6) + 8] |= 1 << v4;
  *(v5[6] + v4) = v9;
  *(v5[7] + 8 * v4) = v2;
  v10 = v5[2];
  v8 = __OFADD__(v10, 1);
  v2 = v10 + 1;
  if (!v8)
  {
LABEL_14:
    v5[2] = v2;
    return result;
  }

  __break(1u);
  return result;
}

void (*sub_262A13240(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_2629CB0BC(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_2629CE990();
      v13 = v21;
      goto LABEL_11;
    }

    sub_2629D0E40(v18, a4 & 1);
    v13 = sub_2629CB0BC(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_262A2A938();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_262A13398;
}

void sub_262A13398(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      sub_262A15B58(*(v13 + 48) + 16 * v12);
      sub_262A110A0(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v15 = v2[1];
    v14 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v16 = (v6[6] + 16 * v5);
    *v16 = v15;
    v16[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*sub_262A134DC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_262A15D44;
}

uint64_t (*sub_262A13504(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_262A1352C;
}

void *sub_262A13538(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_262A13690(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
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
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 10) | (16 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_262A13790(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
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
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_262A13890(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
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
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_262A13990(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
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
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = (v9 << 9) | (8 * __clz(__rbit64(v7)));
      v15 = *(*(a4 + 48) + v14);
      v16 = *(*(a4 + 56) + v14);
      v7 &= v7 - 1;
      *a2 = v15;
      a2[1] = v16;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v18 = v9 + 1;
    }

    else
    {
      v18 = (63 - v6) >> 6;
    }

    v9 = v18 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_262A13A94(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
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
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_262A13B90(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
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
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = (*(a4 + 48) + ((v9 << 11) | (32 * __clz(__rbit64(v7)))));
      v15 = v14[1];
      v7 &= v7 - 1;
      *a2 = *v14;
      a2[1] = v15;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v17 = v9 + 1;
    }

    else
    {
      v17 = (63 - v6) >> 6;
    }

    v9 = v17 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_262A13C94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC80, &unk_262A30C48);
  v3 = sub_262A2A6D8();
  v4 = 0;
  v195 = v1;
  v196 = a1 + 32;
  v198 = v3;
  v200 = v3 + 56;
  do
  {
    v5 = v196 + 16 * v4;
    v6 = *v5;
    v7 = *(v5 + 8);
    sub_262A2A998();
    v201 = v7;
    if (v7 > 4)
    {
      if (v7 > 7)
      {
        if (v7 == 8)
        {
          v8 = 8;
        }

        else
        {
          if (v7 == 9)
          {
            MEMORY[0x26672F240](9);

            sub_2629B55DC(v202, v6);
            goto LABEL_28;
          }

          v8 = 10;
        }
      }

      else if (v7 == 5)
      {
        v8 = 5;
      }

      else if (v7 == 6)
      {
        v8 = 6;
      }

      else
      {
        v8 = 7;
      }

      goto LABEL_27;
    }

    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v8 = 2;
      }

      else if (v7 == 3)
      {
        v8 = 3;
      }

      else
      {
        v8 = 4;
      }

LABEL_27:
      MEMORY[0x26672F240](v8);

      sub_2629B5854(v202, v6);
      goto LABEL_28;
    }

    if (v7)
    {
      MEMORY[0x26672F240](1);

      sub_2629B59B0(v202, v6);
    }

    else
    {
      MEMORY[0x26672F240](0);

      sub_2629B5B40(v202, v6);
    }

LABEL_28:
    v9 = sub_262A2A9D8();
    v10 = -1 << *(v3 + 32);
    v11 = v9 & ~v10;
    v12 = v11 >> 6;
    v13 = v200;
    v14 = *(v200 + 8 * (v11 >> 6));
    v15 = 1 << v11;
    if (((1 << v11) & v14) != 0)
    {
      v197 = v4;
      v16 = ~v10;
      v17 = v6 + 56;
      v18 = v7;
      v199 = ~v10;
      while (1)
      {
        v19 = *(v3 + 48) + 16 * v11;
        v20 = *v19;
        v21 = *(v19 + 8);
        if (v21 <= 4)
        {
          if (v21 <= 1)
          {
            if (v21)
            {
              if (v18 == 1)
              {

                v31 = sub_2629D4314(v61, v6);
LABEL_107:
                v62 = v31;

                v16 = v199;
                v13 = v200;
                v18 = v201;
                if (v62)
                {
                  goto LABEL_4;
                }
              }
            }

            else if (!v18)
            {
              if (v20 == v6)
              {
                goto LABEL_4;
              }

              if (*(v20 + 16) == *(v6 + 16))
              {
                v32 = 0;
                v33 = 1 << *(v20 + 32);
                if (v33 < 64)
                {
                  v34 = ~(-1 << v33);
                }

                else
                {
                  v34 = -1;
                }

                v35 = v34 & *(v20 + 56);
                v36 = (v33 + 63) >> 6;
                while (v35)
                {
                  v37 = __clz(__rbit64(v35));
                  v35 &= v35 - 1;
LABEL_72:
                  v40 = *(*(v20 + 48) + 8 * (v37 | (v32 << 6)));
                  v41 = sub_262A2A988();
                  v42 = -1 << *(v6 + 32);
                  v43 = v41 & ~v42;
                  v16 = v199;
                  v13 = v200;
                  v18 = v201;
                  if (((*(v17 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
                  {
                    goto LABEL_31;
                  }

                  v44 = ~v42;
                  while (*(*(v6 + 48) + 8 * v43) != v40)
                  {
                    v43 = (v43 + 1) & v44;
                    if (((*(v17 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
                    {
                      goto LABEL_31;
                    }
                  }
                }

                v38 = v32;
                while (1)
                {
                  v32 = v38 + 1;
                  if (__OFADD__(v38, 1))
                  {
                    break;
                  }

                  if (v32 >= v36)
                  {
                    goto LABEL_4;
                  }

                  v39 = *(v20 + 56 + 8 * v32);
                  ++v38;
                  if (v39)
                  {
                    v37 = __clz(__rbit64(v39));
                    v35 = (v39 - 1) & v39;
                    goto LABEL_72;
                  }
                }

LABEL_272:
                __break(1u);
LABEL_273:
                __break(1u);
                return;
              }
            }
          }

          else if (v21 == 2)
          {
            if (v18 == 2)
            {
              if (v20 == v6)
              {
                goto LABEL_4;
              }

              if (*(v20 + 16) == *(v6 + 16))
              {
                v45 = 1 << *(v20 + 32);
                if (v45 < 64)
                {
                  v46 = ~(-1 << v45);
                }

                else
                {
                  v46 = -1;
                }

                v47 = v46 & *(v20 + 56);
                v181 = (v45 + 63) >> 6;

                v48 = 0;
                while (v47)
                {
                  v71 = __clz(__rbit64(v47));
                  v72 = (v47 - 1) & v47;
LABEL_131:
                  v75 = (*(v20 + 48) + 16 * (v71 | (v48 << 6)));
                  v77 = *v75;
                  v76 = v75[1];
                  sub_262A2A998();

                  sub_262A2A448();
                  v78 = sub_262A2A9D8();
                  v79 = -1 << *(v6 + 32);
                  v80 = v78 & ~v79;
                  if (((*(v17 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
                  {
LABEL_30:

                    v3 = v198;
                    v16 = v199;
                    v13 = v200;
                    v18 = v201;
                    goto LABEL_31;
                  }

                  v187 = v72;
                  v81 = ~v79;
                  while (1)
                  {
                    v82 = (*(v6 + 48) + 16 * v80);
                    v83 = *v82 == v77 && v82[1] == v76;
                    if (v83 || (sub_262A2A878() & 1) != 0)
                    {
                      break;
                    }

                    v80 = (v80 + 1) & v81;
                    if (((*(v17 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
                    {
                      goto LABEL_30;
                    }
                  }

                  v3 = v198;
                  v47 = v187;
                }

                v73 = v48;
                while (1)
                {
                  v48 = v73 + 1;
                  if (__OFADD__(v73, 1))
                  {
                    goto LABEL_266;
                  }

                  if (v48 >= v181)
                  {
LABEL_3:

                    goto LABEL_4;
                  }

                  v74 = *(v20 + 56 + 8 * v48);
                  ++v73;
                  if (v74)
                  {
                    v71 = __clz(__rbit64(v74));
                    v72 = (v74 - 1) & v74;
                    goto LABEL_131;
                  }
                }
              }
            }
          }

          else if (v21 == 3)
          {
            if (v18 == 3)
            {
              if (v20 == v6)
              {
                goto LABEL_4;
              }

              if (*(v20 + 16) == *(v6 + 16))
              {
                v26 = 1 << *(v20 + 32);
                if (v26 < 64)
                {
                  v27 = ~(-1 << v26);
                }

                else
                {
                  v27 = -1;
                }

                v28 = v27 & *(v20 + 56);
                v180 = (v26 + 63) >> 6;

                v29 = 0;
                while (v28)
                {
                  v110 = __clz(__rbit64(v28));
                  v111 = (v28 - 1) & v28;
LABEL_182:
                  v114 = (*(v20 + 48) + 16 * (v110 | (v29 << 6)));
                  v116 = *v114;
                  v115 = v114[1];
                  sub_262A2A998();

                  sub_262A2A448();
                  v117 = sub_262A2A9D8();
                  v118 = -1 << *(v6 + 32);
                  v119 = v117 & ~v118;
                  if (((*(v17 + ((v119 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v119) & 1) == 0)
                  {
                    goto LABEL_30;
                  }

                  v190 = v111;
                  v120 = ~v118;
                  while (1)
                  {
                    v121 = (*(v6 + 48) + 16 * v119);
                    v122 = *v121 == v116 && v121[1] == v115;
                    if (v122 || (sub_262A2A878() & 1) != 0)
                    {
                      break;
                    }

                    v119 = (v119 + 1) & v120;
                    if (((*(v17 + ((v119 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v119) & 1) == 0)
                    {
                      goto LABEL_30;
                    }
                  }

                  v3 = v198;
                  v28 = v190;
                }

                v112 = v29;
                while (1)
                {
                  v29 = v112 + 1;
                  if (__OFADD__(v112, 1))
                  {
                    goto LABEL_267;
                  }

                  if (v29 >= v180)
                  {
                    goto LABEL_3;
                  }

                  v113 = *(v20 + 56 + 8 * v29);
                  ++v112;
                  if (v113)
                  {
                    v110 = __clz(__rbit64(v113));
                    v111 = (v113 - 1) & v113;
                    goto LABEL_182;
                  }
                }
              }
            }
          }

          else if (v18 == 4)
          {
            if (v20 == v6)
            {
              goto LABEL_4;
            }

            if (*(v20 + 16) == *(v6 + 16))
            {
              v57 = 1 << *(v20 + 32);
              if (v57 < 64)
              {
                v58 = ~(-1 << v57);
              }

              else
              {
                v58 = -1;
              }

              v59 = v58 & *(v20 + 56);
              v184 = (v57 + 63) >> 6;

              v60 = 0;
              while (v59)
              {
                v123 = __clz(__rbit64(v59));
                v124 = (v59 - 1) & v59;
LABEL_199:
                v127 = (*(v20 + 48) + 16 * (v123 | (v60 << 6)));
                v129 = *v127;
                v128 = v127[1];
                sub_262A2A998();

                sub_262A2A448();
                v130 = sub_262A2A9D8();
                v131 = -1 << *(v6 + 32);
                v132 = v130 & ~v131;
                if (((*(v17 + ((v132 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v132) & 1) == 0)
                {
                  goto LABEL_30;
                }

                v191 = v124;
                v133 = ~v131;
                while (1)
                {
                  v134 = (*(v6 + 48) + 16 * v132);
                  v135 = *v134 == v129 && v134[1] == v128;
                  if (v135 || (sub_262A2A878() & 1) != 0)
                  {
                    break;
                  }

                  v132 = (v132 + 1) & v133;
                  if (((*(v17 + ((v132 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v132) & 1) == 0)
                  {
                    goto LABEL_30;
                  }
                }

                v3 = v198;
                v59 = v191;
              }

              v125 = v60;
              while (1)
              {
                v60 = v125 + 1;
                if (__OFADD__(v125, 1))
                {
                  goto LABEL_271;
                }

                if (v60 >= v184)
                {
                  goto LABEL_3;
                }

                v126 = *(v20 + 56 + 8 * v60);
                ++v125;
                if (v126)
                {
                  v123 = __clz(__rbit64(v126));
                  v124 = (v126 - 1) & v126;
                  goto LABEL_199;
                }
              }
            }
          }
        }

        else if (v21 > 7)
        {
          if (v21 == 8)
          {
            if (v18 == 8)
            {
              if (v20 == v6)
              {
                goto LABEL_4;
              }

              if (*(v20 + 16) == *(v6 + 16))
              {
                v53 = 1 << *(v20 + 32);
                if (v53 < 64)
                {
                  v54 = ~(-1 << v53);
                }

                else
                {
                  v54 = -1;
                }

                v55 = v54 & *(v20 + 56);
                v183 = (v53 + 63) >> 6;

                v56 = 0;
                while (v55)
                {
                  v97 = __clz(__rbit64(v55));
                  v98 = (v55 - 1) & v55;
LABEL_165:
                  v101 = (*(v20 + 48) + 16 * (v97 | (v56 << 6)));
                  v103 = *v101;
                  v102 = v101[1];
                  sub_262A2A998();

                  sub_262A2A448();
                  v104 = sub_262A2A9D8();
                  v105 = -1 << *(v6 + 32);
                  v106 = v104 & ~v105;
                  if (((*(v17 + ((v106 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v106) & 1) == 0)
                  {
                    goto LABEL_30;
                  }

                  v189 = v98;
                  v107 = ~v105;
                  while (1)
                  {
                    v108 = (*(v6 + 48) + 16 * v106);
                    v109 = *v108 == v103 && v108[1] == v102;
                    if (v109 || (sub_262A2A878() & 1) != 0)
                    {
                      break;
                    }

                    v106 = (v106 + 1) & v107;
                    if (((*(v17 + ((v106 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v106) & 1) == 0)
                    {
                      goto LABEL_30;
                    }
                  }

                  v3 = v198;
                  v55 = v189;
                }

                v99 = v56;
                while (1)
                {
                  v56 = v99 + 1;
                  if (__OFADD__(v99, 1))
                  {
                    break;
                  }

                  if (v56 >= v183)
                  {
                    goto LABEL_3;
                  }

                  v100 = *(v20 + 56 + 8 * v56);
                  ++v99;
                  if (v100)
                  {
                    v97 = __clz(__rbit64(v100));
                    v98 = (v100 - 1) & v100;
                    goto LABEL_165;
                  }
                }

LABEL_268:
                __break(1u);
LABEL_269:
                __break(1u);
                goto LABEL_270;
              }
            }
          }

          else if (v21 == 9)
          {
            if (v18 == 9)
            {

              v31 = sub_2629D47AC(v30, v6);
              goto LABEL_107;
            }
          }

          else if (v18 == 10)
          {
            if (v20 == v6)
            {
LABEL_4:

              v1 = v195;
              v4 = v197;
              goto LABEL_5;
            }

            if (*(v20 + 16) == *(v6 + 16))
            {
              v67 = 1 << *(v20 + 32);
              if (v67 < 64)
              {
                v68 = ~(-1 << v67);
              }

              else
              {
                v68 = -1;
              }

              v69 = v68 & *(v20 + 56);
              v186 = (v67 + 63) >> 6;

              v70 = 0;
              while (v69)
              {
                v162 = __clz(__rbit64(v69));
                v163 = (v69 - 1) & v69;
LABEL_250:
                v166 = (*(v20 + 48) + 16 * (v162 | (v70 << 6)));
                v168 = *v166;
                v167 = v166[1];
                sub_262A2A998();

                sub_262A2A448();
                v169 = sub_262A2A9D8();
                v170 = -1 << *(v6 + 32);
                v171 = v169 & ~v170;
                if (((*(v17 + ((v171 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v171) & 1) == 0)
                {
                  goto LABEL_30;
                }

                v194 = v163;
                v172 = ~v170;
                while (1)
                {
                  v173 = (*(v6 + 48) + 16 * v171);
                  v174 = *v173 == v168 && v173[1] == v167;
                  if (v174 || (sub_262A2A878() & 1) != 0)
                  {
                    break;
                  }

                  v171 = (v171 + 1) & v172;
                  if (((*(v17 + ((v171 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v171) & 1) == 0)
                  {
                    goto LABEL_30;
                  }
                }

                v3 = v198;
                v69 = v194;
              }

              v164 = v70;
              while (1)
              {
                v70 = v164 + 1;
                if (__OFADD__(v164, 1))
                {
                  break;
                }

                if (v70 >= v186)
                {
                  goto LABEL_3;
                }

                v165 = *(v20 + 56 + 8 * v70);
                ++v164;
                if (v165)
                {
                  v162 = __clz(__rbit64(v165));
                  v163 = (v165 - 1) & v165;
                  goto LABEL_250;
                }
              }

LABEL_270:
              __break(1u);
LABEL_271:
              __break(1u);
              goto LABEL_272;
            }
          }
        }

        else if (v21 == 5)
        {
          if (v18 == 5)
          {
            if (v20 == v6)
            {
              goto LABEL_4;
            }

            if (*(v20 + 16) == *(v6 + 16))
            {
              v49 = 1 << *(v20 + 32);
              if (v49 < 64)
              {
                v50 = ~(-1 << v49);
              }

              else
              {
                v50 = -1;
              }

              v51 = v50 & *(v20 + 56);
              v182 = (v49 + 63) >> 6;

              v52 = 0;
              while (v51)
              {
                v84 = __clz(__rbit64(v51));
                v85 = (v51 - 1) & v51;
LABEL_148:
                v88 = (*(v20 + 48) + 16 * (v84 | (v52 << 6)));
                v90 = *v88;
                v89 = v88[1];
                sub_262A2A998();

                sub_262A2A448();
                v91 = sub_262A2A9D8();
                v92 = -1 << *(v6 + 32);
                v93 = v91 & ~v92;
                if (((*(v17 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93) & 1) == 0)
                {
                  goto LABEL_30;
                }

                v188 = v85;
                v94 = ~v92;
                while (1)
                {
                  v95 = (*(v6 + 48) + 16 * v93);
                  v96 = *v95 == v90 && v95[1] == v89;
                  if (v96 || (sub_262A2A878() & 1) != 0)
                  {
                    break;
                  }

                  v93 = (v93 + 1) & v94;
                  if (((*(v17 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93) & 1) == 0)
                  {
                    goto LABEL_30;
                  }
                }

                v3 = v198;
                v51 = v188;
              }

              v86 = v52;
              while (1)
              {
                v52 = v86 + 1;
                if (__OFADD__(v86, 1))
                {
                  break;
                }

                if (v52 >= v182)
                {
                  goto LABEL_3;
                }

                v87 = *(v20 + 56 + 8 * v52);
                ++v86;
                if (v87)
                {
                  v84 = __clz(__rbit64(v87));
                  v85 = (v87 - 1) & v87;
                  goto LABEL_148;
                }
              }

LABEL_265:
              __break(1u);
LABEL_266:
              __break(1u);
LABEL_267:
              __break(1u);
              goto LABEL_268;
            }
          }
        }

        else if (v21 == 6)
        {
          if (v18 == 6)
          {
            if (v20 == v6)
            {
              goto LABEL_4;
            }

            if (*(v20 + 16) == *(v6 + 16))
            {
              v22 = 1 << *(v20 + 32);
              if (v22 < 64)
              {
                v23 = ~(-1 << v22);
              }

              else
              {
                v23 = -1;
              }

              v24 = v23 & *(v20 + 56);
              v179 = (v22 + 63) >> 6;

              v25 = 0;
              while (v24)
              {
                v136 = __clz(__rbit64(v24));
                v137 = (v24 - 1) & v24;
LABEL_216:
                v140 = (*(v20 + 48) + 16 * (v136 | (v25 << 6)));
                v142 = *v140;
                v141 = v140[1];
                sub_262A2A998();

                sub_262A2A448();
                v143 = sub_262A2A9D8();
                v144 = -1 << *(v6 + 32);
                v145 = v143 & ~v144;
                if (((*(v17 + ((v145 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v145) & 1) == 0)
                {
                  goto LABEL_30;
                }

                v192 = v137;
                v146 = ~v144;
                while (1)
                {
                  v147 = (*(v6 + 48) + 16 * v145);
                  v148 = *v147 == v142 && v147[1] == v141;
                  if (v148 || (sub_262A2A878() & 1) != 0)
                  {
                    break;
                  }

                  v145 = (v145 + 1) & v146;
                  if (((*(v17 + ((v145 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v145) & 1) == 0)
                  {
                    goto LABEL_30;
                  }
                }

                v3 = v198;
                v24 = v192;
              }

              v138 = v25;
              while (1)
              {
                v25 = v138 + 1;
                if (__OFADD__(v138, 1))
                {
                  goto LABEL_269;
                }

                if (v25 >= v179)
                {
                  goto LABEL_3;
                }

                v139 = *(v20 + 56 + 8 * v25);
                ++v138;
                if (v139)
                {
                  v136 = __clz(__rbit64(v139));
                  v137 = (v139 - 1) & v139;
                  goto LABEL_216;
                }
              }
            }
          }
        }

        else if (v18 == 7)
        {
          if (v20 == v6)
          {
            goto LABEL_4;
          }

          if (*(v20 + 16) == *(v6 + 16))
          {
            v63 = 1 << *(v20 + 32);
            if (v63 < 64)
            {
              v64 = ~(-1 << v63);
            }

            else
            {
              v64 = -1;
            }

            v65 = v64 & *(v20 + 56);
            v185 = (v63 + 63) >> 6;

            v66 = 0;
            while (v65)
            {
              v149 = __clz(__rbit64(v65));
              v150 = (v65 - 1) & v65;
LABEL_233:
              v153 = (*(v20 + 48) + 16 * (v149 | (v66 << 6)));
              v155 = *v153;
              v154 = v153[1];
              sub_262A2A998();

              sub_262A2A448();
              v156 = sub_262A2A9D8();
              v157 = -1 << *(v6 + 32);
              v158 = v156 & ~v157;
              if (((*(v17 + ((v158 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v158) & 1) == 0)
              {
                goto LABEL_30;
              }

              v193 = v150;
              v159 = ~v157;
              while (1)
              {
                v160 = (*(v6 + 48) + 16 * v158);
                v161 = *v160 == v155 && v160[1] == v154;
                if (v161 || (sub_262A2A878() & 1) != 0)
                {
                  break;
                }

                v158 = (v158 + 1) & v159;
                if (((*(v17 + ((v158 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v158) & 1) == 0)
                {
                  goto LABEL_30;
                }
              }

              v3 = v198;
              v65 = v193;
            }

            v151 = v66;
            while (1)
            {
              v66 = v151 + 1;
              if (__OFADD__(v151, 1))
              {
                break;
              }

              if (v66 >= v185)
              {
                goto LABEL_3;
              }

              v152 = *(v20 + 56 + 8 * v66);
              ++v151;
              if (v152)
              {
                v149 = __clz(__rbit64(v152));
                v150 = (v152 - 1) & v152;
                goto LABEL_233;
              }
            }

            __break(1u);
            goto LABEL_265;
          }
        }

LABEL_31:
        v11 = (v11 + 1) & v16;
        v12 = v11 >> 6;
        v14 = *(v13 + 8 * (v11 >> 6));
        v15 = 1 << v11;
        if ((v14 & (1 << v11)) == 0)
        {
          v1 = v195;
          v4 = v197;
          goto LABEL_261;
        }
      }
    }

    LOBYTE(v18) = v7;
LABEL_261:
    *(v13 + 8 * v12) = v14 | v15;
    v175 = *(v3 + 48) + 16 * v11;
    *v175 = v6;
    *(v175 + 8) = v18;
    v176 = *(v3 + 16);
    v177 = __OFADD__(v176, 1);
    v178 = v176 + 1;
    if (v177)
    {
      goto LABEL_273;
    }

    *(v3 + 16) = v178;
LABEL_5:
    ++v4;
  }

  while (v4 != v1);
}

uint64_t sub_262A14CA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC78, &qword_262A30C40);
    v3 = sub_262A2A6D8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_262A2A998();
      MEMORY[0x26672F240](v10);
      result = sub_262A2A9D8();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_262A14DE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC70, &qword_262A30C38);
    v3 = sub_262A2A6D8();
    v4 = 0;
    v5 = v3 + 56;
    v33 = v3;
    v34 = a1 + 32;
    v32 = v1;
    while (1)
    {
      v9 = v34 + 24 * v4;
      v11 = *v9;
      v10 = *(v9 + 8);
      v12 = *(v9 + 16);
      sub_262A2A998();
      MEMORY[0x26672F240](v12);

      sub_262A2A448();
      result = sub_262A2A9D8();
      v14 = v3;
      v15 = ~(-1 << *(v3 + 32));
      v16 = result & v15;
      v17 = (result & v15) >> 6;
      v18 = *(v5 + 8 * v17);
      v19 = 1 << (result & v15);
      v20 = *(v14 + 48);
      if ((v19 & v18) != 0)
      {
        do
        {
          v21 = v20 + 24 * v16;
          result = *v21;
          v22 = *(v21 + 8);
          v23 = *(v21 + 16);
          if (v23 > 1)
          {
            if (v23 == 2)
            {
              if (v12 == 2)
              {
                v25 = result == v11 && v22 == v10;
                if (v25 || (result = sub_262A2A878(), (result & 1) != 0))
                {
                  v6 = v11;
                  v7 = v10;
                  v8 = 2;
                  goto LABEL_4;
                }
              }
            }

            else if (v12 == 3)
            {
              v26 = result == v11 && v22 == v10;
              if (v26 || (result = sub_262A2A878(), (result & 1) != 0))
              {
                v6 = v11;
                v7 = v10;
                v8 = 3;
                goto LABEL_4;
              }
            }
          }

          else if (v23)
          {
            if (v12 == 1)
            {
              v24 = result == v11 && v22 == v10;
              if (v24 || (result = sub_262A2A878(), (result & 1) != 0))
              {
                v6 = v11;
                v7 = v10;
                v8 = 1;
LABEL_4:
                sub_2629B6A68(v6, v7, v8);
                v3 = v33;
                goto LABEL_5;
              }
            }
          }

          else if (!v12)
          {
            v27 = result == v11 && v22 == v10;
            if (v27 || (result = sub_262A2A878(), (result & 1) != 0))
            {
              v6 = v11;
              v7 = v10;
              v8 = 0;
              goto LABEL_4;
            }
          }

          v16 = (v16 + 1) & v15;
          v17 = v16 >> 6;
          v18 = *(v5 + 8 * (v16 >> 6));
          v19 = 1 << v16;
        }

        while ((v18 & (1 << v16)) != 0);
        v3 = v33;
        v20 = *(v33 + 48);
      }

      else
      {
        v3 = v33;
      }

      *(v5 + 8 * v17) = v18 | v19;
      v28 = v20 + 24 * v16;
      *v28 = v11;
      *(v28 + 8) = v10;
      *(v28 + 16) = v12;
      v29 = *(v3 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      *(v3 + 16) = v31;
LABEL_5:
      if (++v4 == v32)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_262A15074(uint64_t a1)
{
  v4 = *(type metadata accessor for SIDPersonalizedPlanRequest(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2629A88B4;

  return sub_262A0C5E8(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for SIDPersonalizedPlanRequest(0);
  v20 = *(*(v1 - 8) + 80);
  v18 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v19 = (v20 + 32) & ~v20;
  v2 = sub_262A2A018();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v19, v2);
  v4 = v0 + v19 + *(v1 + 20);
  v5 = type metadata accessor for SIDActiveWorkoutPlan(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    v6 = sub_262A29FD8();
    (*(*(v6 - 8) + 8))(v4, v6);
    v3(v4 + *(v5 + 20), v2);
  }

  v7 = type metadata accessor for SIDPersonalizedPlanDataProvider(0);

  v8 = v4 + v7[8];

  v9 = type metadata accessor for SIDUserMetadata(0);
  v10 = *(v9 + 32);
  v11 = sub_262A2A168();
  v12 = *(*(v11 - 8) + 8);
  v12(v8 + v10, v11);

  v13 = v4 + v7[10];
  v14 = type metadata accessor for SIDUserOnboardingData(0);
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    v15 = sub_262A29FD8();
    (*(*(v15 - 8) + 8))(v13, v15);
  }

  v16 = v4 + v7[15];

  v12(v16 + *(v9 + 32), v11);

  return MEMORY[0x2821FE8E8](v0, ((v18 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v20 | 7);
}

uint64_t sub_262A15544(uint64_t a1)
{
  v4 = *(type metadata accessor for SIDPersonalizedPlanRequest(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2629E4964;

  return sub_262A0C0F0(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_262A15664(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2629E4964;

  return sub_262A0FED8(a1, v4);
}

uint64_t sub_262A1571C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_262A15754(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2629A88B4;

  return sub_262A0FED8(a1, v4);
}

unint64_t sub_262A1580C()
{
  result = qword_27FF3CC30;
  if (!qword_27FF3CC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CC30);
  }

  return result;
}

uint64_t sub_262A15860(uint64_t a1)
{
  v2 = sub_262A2A108();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC58, &qword_262A30C30);
    v9 = sub_262A2A6D8();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_262A15D00(&qword_27FF3CC60, MEMORY[0x277CC99D8]);
      v16 = sub_262A2A378();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_262A15D00(&qword_27FF3CC68, MEMORY[0x277CC99E0]);
          v23 = sub_262A2A3B8();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_262A15BAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_262A15C14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_262A15C74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_262A15D00(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_262A2A108();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_262A15D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_262A2A328();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_262A15E4C, 0, 0);
}

uint64_t sub_262A15E4C(uint64_t a1)
{
  sub_262A2A318();
  v2 = swift_task_alloc();
  v1[13] = v2;
  *v2 = v1;
  v2[1] = sub_262A15EEC;
  v3 = v1[7];
  v5 = v1[5];
  v4 = v1[6];

  return sub_262A16270(v5, v4, v3);
}

uint64_t sub_262A15EEC(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[14] = v1;

  if (v1)
  {
    v4 = sub_262A161E8;
  }

  else
  {
    v4 = sub_262A16008;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_262A16008(uint64_t a1)
{
  v3 = *(v1 + 88);
  v2 = *(v1 + 96);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  sub_262A2A318();
  v6 = sub_262A2A308();
  v7 = sub_262A2A308();
  v8 = *(v5 + 8);
  v8(v3, v4);
  result = (v8)(v2, v4);
  if (v6 < v7)
  {
    __break(1u);
  }

  else
  {
    v10 = *(v1 + 112);
    v11 = *(v1 + 64);
    v12 = (v6 - v7) / 1000000.0;
    v13 = *(v11 + *(type metadata accessor for CatalogMetadataService(0) + 20));
    *(v1 + 120) = 1;
    v14 = *(v13 + 16);
    v15 = swift_task_alloc();
    *(v15 + 16) = v13;
    *(v15 + 24) = v12;
    *(v15 + 32) = 0;
    *(v15 + 40) = v1 + 120;
    v16 = swift_task_alloc();
    *(v16 + 16) = sub_2629B3A78;
    *(v16 + 24) = v15;

    os_unfair_lock_lock(v14 + 4);
    sub_2629B3A9C(v17);
    if (v10)
    {
      os_unfair_lock_unlock(v14 + 4);
    }

    else
    {
      v18 = *(v1 + 24);
      os_unfair_lock_unlock(v14 + 4);

      v19 = *(v1 + 8);

      return v19(v18);
    }
  }

  return result;
}

uint64_t sub_262A161E8()
{
  (*(v0[10] + 8))(v0[12], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_262A16270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  return MEMORY[0x2822009F8](sub_262A16294, 0, 0);
}

uint64_t sub_262A16294()
{
  v1 = v0[19];
  v2 = v0[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC88, &unk_262A30CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_262A2B290;
  *(inited + 32) = v1;
  *(inited + 40) = 10;

  sub_262A13C94(inited);
  v5 = v4;
  v0[21] = v4;
  swift_setDeallocating();
  sub_262A168EC(inited + 32);
  v0[8] = MEMORY[0x277D84FA0];
  v0[9] = v5;
  v0[10] = 0;
  v6 = MEMORY[0x277D84F90];
  v0[11] = 0;
  v0[12] = v6;
  v9 = (v2 + *v2);
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_262A16418;

  return v9(v0 + 8);
}

uint64_t sub_262A16418(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_262A16674;
  }

  else
  {

    *(v4 + 192) = a1;
    v5 = sub_262A16564;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_262A16564()
{
  v1 = v0[24];
  sub_262A2A6F8();

  v0[16] = *(v1 + 16);
  v2 = sub_262A2A868();
  MEMORY[0x26672ECF0](v2);

  MEMORY[0x26672ECF0](0xD000000000000017, 0x8000000262A33DC0);
  sub_2629EA8C8(0x20676E6974746547, 0xE800000000000000);

  v3 = v0[1];
  v4 = v0[24];

  return v3(v4);
}

uint64_t sub_262A16674()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);

  v3 = *(v2 + *(type metadata accessor for CatalogMetadataService(0) + 20));
  *(v0 + 200) = 1;
  v4 = *(v3 + 16);
  v5 = swift_task_alloc();
  v5[2] = v3;
  v5[3] = 0;
  v5[4] = v1;
  v5[5] = v0 + 200;
  v6 = swift_task_alloc();
  *(v6 + 16) = sub_2629B3BF4;
  *(v6 + 24) = v5;

  os_unfair_lock_lock(v4 + 4);
  sub_2629B3C0C(v7);
  v8 = *(v0 + 184);
  os_unfair_lock_unlock(v4 + 4);

  sub_262A2A6F8();
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xE000000000000000;
  MEMORY[0x26672ECF0](0xD000000000000022, 0x8000000262A33D90);
  *(v0 + 120) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEC0, &unk_262A2BA60);
  sub_262A2A738();
  sub_2629EA8B0(*(v0 + 104), *(v0 + 112));

  sub_262A16940();
  swift_allocError();
  *v9 = 2;
  swift_willThrow();
  MEMORY[0x26672F6A0](v8);
  v10 = *(v0 + 8);

  return v10();
}

uint64_t type metadata accessor for CatalogMetadataService(uint64_t a1)
{
  result = qword_27FF3CC98;
  if (!qword_27FF3CC98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_262A16940()
{
  result = qword_27FF3CC90;
  if (!qword_27FF3CC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CC90);
  }

  return result;
}

uint64_t sub_262A169A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PersistentLogger(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_262A16A78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PersistentLogger(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_262A16B30(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ResultPostProcessor(0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PlanGenerationContext(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PersistentLogger(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = sub_262A17A1C(0, 0);
  sub_262A17B14(0, 0, v13);
  sub_262A17F9C(v13, v2 + OBJC_IVAR____TtC10SIDFitness32ColdStartUserWorkoutPlanStrategy_logger, type metadata accessor for PersistentLogger);
  *(v2 + OBJC_IVAR____TtC10SIDFitness32ColdStartUserWorkoutPlanStrategy_operationTracker) = sub_262A17CDC(0, 0);
  sub_262A17DD4(0, 0, v10);
  sub_262A17F9C(v10, v2 + OBJC_IVAR____TtC10SIDFitness32ColdStartUserWorkoutPlanStrategy_planGenerationContext, type metadata accessor for PlanGenerationContext);
  sub_262A17B14(0, 0, v7);
  *&v7[v5[7]] = sub_262A17CDC(0, 0);
  sub_262A17DD4(0, 0, &v7[v5[8]]);
  *&v7[v5[9]] = a1;
  sub_262A17F9C(v7, v2 + OBJC_IVAR____TtC10SIDFitness32ColdStartUserWorkoutPlanStrategy_resultPostProcessor, type metadata accessor for ResultPostProcessor);
  return v2;
}

uint64_t sub_262A16D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[23] = a3;
  v4[24] = v3;
  v4[21] = a1;
  v4[22] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CD10, &qword_262A2D5B0);
  v4[25] = swift_task_alloc();
  v4[26] = type metadata accessor for SIDMetricCreatePlanScaffold(0);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for SIDPersonalizedWorkoutPlan(0);
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_262A16E68, 0, 0);
}

uint64_t sub_262A16E68()
{
  v62 = v0;
  v1 = v0[30];
  v41 = v0[28];
  v46 = v0[27];
  v53 = v0[26];
  v50 = v0[29];
  v52 = v0[25];
  v59 = v0[23];
  v55 = v0[22];
  v57 = v0[21];
  v2 = v0[24];
  v58 = v2;
  sub_2629EA8C8(0xD000000000000044, 0x8000000262A33F60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF28, &qword_262A2B3D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_262A2E460;
  *(v3 + 32) = 0x3932343038373431;
  *(v3 + 40) = 0xEA00000000003238;
  v4 = MEMORY[0x277D84F90];
  *(v3 + 48) = MEMORY[0x277D84F90];
  *(v3 + 56) = v4;
  *(v3 + 64) = v4;
  *(v3 + 72) = v4;
  *(v3 + 80) = 0x3932343038373431;
  *(v3 + 88) = 0xEA00000000003538;
  *(v3 + 96) = v4;
  *(v3 + 104) = v4;
  *(v3 + 112) = v4;
  *(v3 + 120) = v4;
  *(v3 + 128) = 0x3932343038373431;
  *(v3 + 136) = 0xEA00000000003338;
  *(v3 + 144) = v4;
  *(v3 + 152) = v4;
  v5 = v2 + OBJC_IVAR____TtC10SIDFitness32ColdStartUserWorkoutPlanStrategy_planGenerationContext;
  v39 = v2 + OBJC_IVAR____TtC10SIDFitness32ColdStartUserWorkoutPlanStrategy_planGenerationContext;
  *(v3 + 160) = v4;
  *(v3 + 168) = v4;
  v47 = type metadata accessor for PlanGenerationContext(0);
  v40 = *(v5 + *(v47 + 116));
  v56 = sub_262A14CA8(&unk_287533850);
  v44 = sub_262A14DE4(&unk_287533878);
  sub_262A18174(&unk_287533898);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CD20, &unk_262A30D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_262A2E460;
  *(inited + 48) = 0u;
  *(inited + 32) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEE0, &qword_262A2B388);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_262A2B290;
  v8 = MEMORY[0x277D84FA0];
  *(v7 + 32) = 10;
  *(v7 + 40) = v8;
  *(v7 + 48) = 0x3932343038373431;
  *(v7 + 56) = 0xEA00000000003238;
  *(inited + 64) = v7;
  *(inited + 72) = 2;
  *(inited + 88) = 0;
  *(inited + 96) = 0;
  *(inited + 80) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_262A2B290;
  *(v9 + 32) = 10;
  *(v9 + 40) = v8;
  *(v9 + 48) = 0x3932343038373431;
  *(v9 + 56) = 0xEA00000000003538;
  *(inited + 104) = v9;
  *(inited + 112) = 5;
  *(inited + 128) = 0;
  *(inited + 136) = 0;
  *(inited + 120) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_262A2B290;
  *(v10 + 32) = 10;
  *(v10 + 40) = v44;
  *(v10 + 48) = 0x3932343038373431;
  *(v10 + 56) = 0xEA00000000003338;
  *(inited + 144) = v10;
  v11 = sub_2629AC204(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CD30, &unk_262A30D70);
  swift_arrayDestroy();
  LOBYTE(v60) = 0;
  v12 = sub_262A04710(&v60, v59);
  v14 = v13;
  v15 = *(v47 + 24);
  v16 = *(v41 + 32);
  v43 = sub_262A2A018();
  v48 = *(v43 - 8);
  v45 = *(v48 + 16);
  v45(&v1->i8[v16], v39 + v15, v43);

  sub_262A2A008();
  v1[1] = vdupq_n_s64(0xAuLL);
  v1[2].i64[0] = v3;
  v1[2].i64[1] = 10;
  v1[3].i64[0] = v40;
  v1[3].i64[1] = v56;
  v1->i64[0] = v12;
  v1->i64[1] = v14;
  v1[4].i8[0] = 0;
  v1[4].i64[1] = v11;
  v60 = 0;
  v61 = 0xE000000000000000;

  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000035, 0x8000000262A33FB0);
  v17 = SIDPersonalizedWorkoutPlan.description.getter();
  MEMORY[0x26672ECF0](v17);

  sub_2629EA8C8(v60, v61);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF38, &unk_262A2B3E0);
  v18 = type metadata accessor for SIDWorkoutPlanType(0);
  v19 = *(*(v18 - 8) + 72);
  v20 = (*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_262A2EA00;
  v22 = v21 + v20;
  sub_262A181C8(v1, v21 + v20);
  v23 = *(v50 + 56);
  v23(v22, 0, 1, v41);
  v23(v22 + v19, 1, 1, v41);
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_262A2A6F8();

  v60 = 0xD000000000000011;
  v61 = 0x8000000262A33FF0;
  v24 = MEMORY[0x26672EDD0](v21, v18);
  MEMORY[0x26672ECF0](v24);

  sub_2629EA8C8(v60, v61);

  v25 = type metadata accessor for FitnessPlanUser(0);
  v26 = *(v59 + *(v25 + 36));
  v27 = v57 + *(type metadata accessor for SIDPersonalizedPlanResponse(0) + 20);
  sub_262A2A008();
  v28 = *(v59 + *(v25 + 32));
  v29 = type metadata accessor for SIDMetrics(0);
  *&v27[*(v29 + 20)] = v26;
  *&v27[*(v29 + 24)] = v28;
  *v57 = v21;
  v60 = 0;
  v61 = 0xE000000000000000;

  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD00000000000001FLL, 0x8000000262A34010);
  sub_262A1FD14(v57);
  sub_2629EA8C8(v60, v61);

  sub_2629EA8C8(0xD00000000000001DLL, 0x8000000262A34030);
  v51 = sub_2629AC344(MEMORY[0x277D84F90]);

  v42 = sub_262A26C70(v30);

  v45(v52, v1->i64 + v16, v43);
  v31 = *(v48 + 56);
  v31(v52, 0, 1, v43);
  v60 = v11;
  v32 = SIDWorkoutPlanSchedule.metricScaffold.getter();

  sub_2629E6220(v32);
  v34 = v33;

  v35 = v53[12];
  v31(v46 + v35, 1, 1, v43);
  v36 = v53[14];
  v49 = v46 + v53[13];
  v31(v46 + v36, 1, 1, v43);
  *v46 = v51;
  *(v46 + 8) = 0;
  *(v46 + 16) = 0;
  *(v46 + 24) = v42;
  sub_2629BEB44(v52, v46 + v35);
  *(v46 + 32) = 0;
  *(v46 + v53[15]) = v34;
  *(v46 + 40) = 0;
  *(v46 + 48) = 0;
  *(v46 + v53[16]) = 10;
  *(v46 + 49) = 0;
  *(v46 + 56) = v56;
  sub_2629ADF2C(v46 + v36, &unk_27FF3CD10, &qword_262A2D5B0);
  v31(v46 + v36, 1, 1, v43);

  sub_2629ADF2C(v52, &unk_27FF3CD10, &qword_262A2D5B0);
  *(v46 + v53[17]) = MEMORY[0x277D84F90];
  *v49 = 0;
  *(v49 + 8) = 1;
  sub_262A09FD0(*(v58 + 16), v55, v59, v57, v46);
  sub_262A1822C(v1, type metadata accessor for SIDPersonalizedWorkoutPlan);
  sub_262A1822C(v46, type metadata accessor for SIDMetricCreatePlanScaffold);

  v37 = *(v54 + 8);

  return v37();
}

uint64_t sub_262A17720()
{
  swift_unknownObjectRelease();
  sub_262A1822C(v0 + OBJC_IVAR____TtC10SIDFitness32ColdStartUserWorkoutPlanStrategy_logger, type metadata accessor for PersistentLogger);

  sub_262A1822C(v0 + OBJC_IVAR____TtC10SIDFitness32ColdStartUserWorkoutPlanStrategy_planGenerationContext, type metadata accessor for PlanGenerationContext);
  sub_262A1822C(v0 + OBJC_IVAR____TtC10SIDFitness32ColdStartUserWorkoutPlanStrategy_resultPostProcessor, type metadata accessor for ResultPostProcessor);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ColdStartUserWorkoutPlanStrategy(uint64_t a1)
{
  result = qword_27FF3CCD8;
  if (!qword_27FF3CCD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_262A1784C(uint64_t a1)
{
  result = type metadata accessor for PersistentLogger(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PlanGenerationContext(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ResultPostProcessor(319);
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_262A17968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2629A88B4;

  return sub_262A16D3C(a1, a2, a3);
}

uint64_t sub_262A17A1C(void (*a1)(), uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CD08, &qword_262A30D58);
  v6 = *(v2 + 16);
  if (*(v6 + 16) && (v7 = sub_2629CB210(v5), (v8 & 1) != 0))
  {
    sub_2629ADE10(*(v6 + 56) + 32 * v7, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CCF0, &unk_262A2B9A0);
  if (swift_dynamicCast())
  {
    return v12;
  }

  if (a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = sub_262A18118;
  }

  v11 = sub_2629ADEAC(a1, a2);
  (v10)(v13, v11);

  return *&v13[0];
}

uint64_t sub_262A17B14@<X0>(void (*a1)()@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CD00, &qword_262A30D50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v20 - v8;
  v10 = type metadata accessor for PersistentLogger(0);
  v11 = v10;
  v12 = *(v3 + 16);
  if (*(v12 + 16) && (v13 = sub_2629CB210(v10), (v14 & 1) != 0))
  {
    sub_2629ADE10(*(v12 + 56) + 32 * v13, v20);
  }

  else
  {
    memset(v20, 0, sizeof(v20));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CCF0, &unk_262A2B9A0);
  v15 = swift_dynamicCast();
  v16 = *(*(v11 - 8) + 56);
  if (v15)
  {
    v16(v9, 0, 1, v11);
    return sub_262A17F9C(v9, a3, type metadata accessor for PersistentLogger);
  }

  else
  {
    v16(v9, 1, 1, v11);
    sub_2629ADF2C(v9, &qword_27FF3CD00, &qword_262A30D50);
    if (a1)
    {
      v18 = a1;
    }

    else
    {
      v18 = sub_262A18004;
    }

    v19 = sub_2629ADEAC(a1, a2);
    (v18)(v19);
  }
}

uint64_t sub_262A17CDC(void (*a1)(), uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BE80, &qword_262A2B2B0);
  v6 = *(v2 + 16);
  if (*(v6 + 16) && (v7 = sub_2629CB210(v5), (v8 & 1) != 0))
  {
    sub_2629ADE10(*(v6 + 56) + 32 * v7, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CCF0, &unk_262A2B9A0);
  if (swift_dynamicCast())
  {
    return v12;
  }

  if (a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = sub_262A180BC;
  }

  v11 = sub_2629ADEAC(a1, a2);
  (v10)(v13, v11);

  return *&v13[0];
}

uint64_t sub_262A17DD4@<X0>(void (*a1)()@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CCE8, &qword_262A30D48);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v20 - v8;
  v10 = type metadata accessor for PlanGenerationContext(0);
  v11 = v10;
  v12 = *(v3 + 16);
  if (*(v12 + 16) && (v13 = sub_2629CB210(v10), (v14 & 1) != 0))
  {
    sub_2629ADE10(*(v12 + 56) + 32 * v13, v20);
  }

  else
  {
    memset(v20, 0, sizeof(v20));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CCF0, &unk_262A2B9A0);
  v15 = swift_dynamicCast();
  v16 = *(*(v11 - 8) + 56);
  if (v15)
  {
    v16(v9, 0, 1, v11);
    return sub_262A17F9C(v9, a3, type metadata accessor for PlanGenerationContext);
  }

  else
  {
    v16(v9, 1, 1, v11);
    sub_2629ADF2C(v9, &qword_27FF3CCE8, &qword_262A30D48);
    if (a1)
    {
      v18 = a1;
    }

    else
    {
      v18 = sub_262A18060;
    }

    v19 = sub_2629ADEAC(a1, a2);
    (v18)(v19);
  }
}

uint64_t sub_262A17F9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_262A181C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDPersonalizedWorkoutPlan(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_262A1822C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_262A1828C()
{
  sub_262A184BC(v0 + OBJC_IVAR____TtC10SIDFitness34DefaultStretchPlanDurationStrategy_logger, type metadata accessor for PersistentLogger);

  sub_262A184BC(v0 + OBJC_IVAR____TtC10SIDFitness34DefaultStretchPlanDurationStrategy_planGenerationContext, type metadata accessor for PlanGenerationContext);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DefaultStretchPlanDurationStrategy(uint64_t a1)
{
  result = qword_27FF3CD50;
  if (!qword_27FF3CD50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_262A1838C(uint64_t a1)
{
  result = type metadata accessor for PersistentLogger(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PlanGenerationContext(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_262A184BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_262A1851C(char *a1, uint64_t a2)
{
  v91 = a2;
  v99 = sub_262A29FD8();
  v4 = *(v99 - 8);
  v5 = MEMORY[0x28223BE20](v99);
  v88 = v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v87 = v81 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CD88, &unk_262A30E00);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v97 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v98 = v81 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v81 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C050, &qword_262A2B4F8);
  v16 = MEMORY[0x28223BE20](v15);
  v95 = (v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v16);
  v90 = v81 - v20;
  v21 = *(a1 + 2);
  v85 = a1;
  v100 = v18;
  v92 = v19;
  v103 = v21;
  v82 = v4;
  if (v21)
  {
    v22 = 0;
    v83 = (v4 + 16);
    v89 = v4 + 32;
    v93 = v19 + 48;
    v94 = (v19 + 56);
    v23 = (a1 + 56);
    v24 = MEMORY[0x277D84F90];
    do
    {
      v25 = v24;
      v26 = *(v23 - 2);
      v96 = *(v23 - 3);
      v2 = *(v23 - 1);
      v27 = *v23;
      swift_bridgeObjectRetain_n();

      v28 = _s10SIDFitness18SIDWorkoutModalityO8rawValueACSgSS_tcfC_0(v2, v27);
      if (v28 != 14 && *(v91 + 16) && (v30 = v28, v31 = sub_2629CB1E4(v28, v29), (v32 & 1) != 0) && (v33 = *(*(v91 + 56) + 8 * v31), *(v33 + 16)))
      {
        v34 = type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
        (*v83)(v88, v33 + *(v34 + 24) + ((*(*(v34 - 8) + 80) + 32) & ~*(*(v34 - 8) + 80)), v99);
        v35 = *v89;
        (*v89)(v87, v88, v99);
        v36 = v35;
        v37 = v99;
        v38 = v100[12];
        v39 = &v14[v100[16]];
        v86 = v100[20];
        *v14 = v22;
        v36(&v14[v38], v87, v37);
        *v39 = v96;
        v39[1] = v26;
        v39[2] = v2;
        v39[3] = v27;
        if (v30 > 0xDu)
        {
          v40 = 100;
        }

        else
        {
          v40 = qword_262A30E10[v30];
        }

        *&v14[v86] = v40;
        v15 = v100;
        (*v94)(v14, 0, 1, v100);
      }

      else
      {
        v15 = v100;
        (*v94)(v14, 1, 1, v100);
      }

      v24 = v25;
      if ((*v93)(v14, 1, v15) == 1)
      {
        sub_2629ADF2C(v14, &qword_27FF3CD88, &unk_262A30E00);
      }

      else
      {
        v41 = v90;
        sub_2629E2E14(v14, v90, &qword_27FF3C050, &qword_262A2B4F8);
        sub_2629E2E14(v41, v95, &qword_27FF3C050, &qword_262A2B4F8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_2629A94AC(0, v25[2] + 1, 1, v25);
        }

        v43 = v24[2];
        v42 = v24[3];
        if (v43 >= v42 >> 1)
        {
          v24 = sub_2629A94AC((v42 > 1), v43 + 1, 1, v24);
        }

        v24[2] = v43 + 1;
        sub_2629E2E14(v95, v24 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v43, &qword_27FF3C050, &qword_262A2B4F8);
      }

      ++v22;
      v23 += 4;
    }

    while (v103 != v22);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v101 = v24;

  v44 = v81[1];
  sub_262A190D4(&v101);
  v45 = v44;
  if (v44)
  {
LABEL_64:
    MEMORY[0x26672F6A0](v45);

    __break(1u);
LABEL_65:
    os_unfair_lock_unlock(v45 + 4);
    __break(1u);
  }

  else
  {

    v46 = 0;
    v91 = v101;
    v47 = v103 + 1;
    v48 = 32;
    v50 = v97;
    v49 = v98;
    v51 = v82;
    while (--v47)
    {
      v52 = *&v85[v48];
      v48 += 32;
      v53 = __OFADD__(v46, v52);
      v46 += v52;
      if (v53)
      {
        __break(1u);
        break;
      }
    }

    v88 = 0;
    v54 = 0;
    v90 = v84 + OBJC_IVAR____TtC10SIDFitness42EstablishedUserStretchPlanDurationStrategy_planGenerationContext;
    v55 = *(v91 + 16);
    v95 = (v92 + 48);
    v96 = (v92 + 56);
    v94 = (v51 + 8);
    while (1)
    {
      if (v54 == v55)
      {
        v56 = 1;
        v54 = v55;
      }

      else
      {
        if ((v54 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        if (v54 >= *(v91 + 16))
        {
          goto LABEL_56;
        }

        sub_262A1A6F0(v91 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v54, v50);
        v56 = 0;
        ++v54;
      }

      (*v96)(v50, v56, 1, v15);
      sub_2629E2E14(v50, v49, &qword_27FF3CD88, &unk_262A30E00);
      if ((*v95)(v49, 1, v15) == 1)
      {
        break;
      }

      v93 = *v49;
      v103 = *(v15 + 48);
      v57 = (v49 + *(v15 + 64));
      v58 = *v57;
      v15 = v57[1];
      v45 = v57[2];
      v50 = v57[3];

      v2 = sub_262A2A788();

      if (v2 <= 0xD)
      {
        v89 = type metadata accessor for PlanGenerationContext(0);
        v60 = *(v90 + *(v89 + 92));
        if (*(v60 + 16))
        {
          v61 = sub_2629CB1E4(v2, v59);
          if (v62)
          {
            v63 = *(*(v60 + 56) + 8 * v61);
            v64 = *(v63 + 16);
            if (v64)
            {
              v65 = 0;
              v66 = v63 + 32;
              while (*(v66 + 8 * v65) != v58)
              {
                if (v64 == ++v65)
                {
                  goto LABEL_28;
                }
              }

              v53 = __OFADD__(v65, 1);
              v67 = v65 + 1;
              if (v53)
              {
                goto LABEL_57;
              }

              if (v67 < v64)
              {
                if (v67 < 0)
                {
                  goto LABEL_58;
                }

                v2 = *(v66 + 8 * v67);
                v68 = v2 - v58;
                if (__OFSUB__(v2, v58))
                {
                  goto LABEL_59;
                }

                v53 = __OFADD__(v46, v68);
                v69 = v46 + v68;
                if (v53)
                {
                  goto LABEL_60;
                }

                if (*(v90 + *(v89 + 52)) >= v69)
                {

                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
LABEL_50:
                    if ((v93 & 0x8000000000000000) != 0)
                    {
                      __break(1u);
                    }

                    else if (v93 < *(v85 + 2))
                    {
                      v70 = &v85[32 * v93];
                      *(v70 + 4) = v2;
                      *(v70 + 5) = v15;
                      *(v70 + 6) = v45;
                      *(v70 + 7) = v50;

                      (*v94)(&v98[v103], v99);
                      return;
                    }

                    __break(1u);
                    goto LABEL_64;
                  }

LABEL_61:
                  v85 = sub_262A1F240(v85);
                  goto LABEL_50;
                }
              }
            }
          }
        }
      }

LABEL_28:

      v49 = v98;
      (*v94)(&v98[v103], v99);
      v50 = v97;
      v15 = v100;
    }

    v101 = 0;
    v102 = 0xE000000000000000;
    sub_262A2A6F8();
    MEMORY[0x26672ECF0](0xD00000000000003ALL, 0x8000000262A34100);
    v71 = MEMORY[0x26672EDD0](v85, &type metadata for SIDWorkoutPlanScheduledItem);
    MEMORY[0x26672ECF0](v71);

    MEMORY[0x26672ECF0](0xD00000000000002ELL, 0x8000000262A34140);
    v72 = v84;
    sub_2629EA8C8(v101, v102);

    v73 = *(v72 + OBJC_IVAR____TtC10SIDFitness42EstablishedUserStretchPlanDurationStrategy_operationTracker);
    sub_2629B3A24();
    v74 = swift_allocError();
    *v75 = 8;
    LOBYTE(v101) = 8;
    v45 = *(v73 + 16);
    v76 = MEMORY[0x28223BE20](v74);
    v81[-4] = v73;
    v81[-3] = 0;
    v81[-2] = v76;
    v81[-1] = &v101;
    MEMORY[0x28223BE20](v76);
    v81[-2] = sub_2629B3A78;
    v81[-1] = v77;

    os_unfair_lock_lock(v45 + 4);
    v78 = v88;
    sub_2629B3A9C(v79);
    if (v78)
    {
      goto LABEL_65;
    }

    os_unfair_lock_unlock(v45 + 4);

    MEMORY[0x26672F6A0](v74);
    swift_allocError();
    *v80 = 8;
    swift_willThrow();
  }
}

uint64_t sub_262A18FB0()
{
  sub_262A184BC(v0 + OBJC_IVAR____TtC10SIDFitness42EstablishedUserStretchPlanDurationStrategy_logger, type metadata accessor for PersistentLogger);

  sub_262A184BC(v0 + OBJC_IVAR____TtC10SIDFitness42EstablishedUserStretchPlanDurationStrategy_planGenerationContext, type metadata accessor for PlanGenerationContext);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EstablishedUserStretchPlanDurationStrategy(uint64_t a1)
{
  result = qword_27FF3CD78;
  if (!qword_27FF3CD78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_262A190D4(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C050, &qword_262A2B4F8) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_262A1F3CC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_262A19188(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_262A19188(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_262A2A858();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C050, &qword_262A2B4F8);
        v6 = sub_262A2A548();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C050, &qword_262A2B4F8) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_262A19530(v8, v9, a1, v4);
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
    return sub_262A192CC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_262A192CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C050, &qword_262A2B4F8);
  v8 = MEMORY[0x28223BE20](v38);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  result = MEMORY[0x28223BE20](v10);
  v16 = &v29 - v15;
  v31 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v36 = v17;
    v30 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v34 = v19;
    v35 = a3;
    v32 = v22;
    v33 = v21;
    while (1)
    {
      sub_262A1A6F0(v22, v16);
      sub_262A1A6F0(v19, v12);
      v23 = *(v38 + 80);
      v24 = *&v16[v23];
      v25 = *&v12[v23];
      if (v24 == v25)
      {
        v26 = sub_262A29F98();
      }

      else
      {
        v26 = v24 < v25;
      }

      sub_2629ADF2C(v12, &qword_27FF3C050, &qword_262A2B4F8);
      result = sub_2629ADF2C(v16, &qword_27FF3C050, &qword_262A2B4F8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v19 = v34 + v30;
        v21 = v33 - 1;
        v22 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_2629E2E14(v22, v37, &qword_27FF3C050, &qword_262A2B4F8);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_2629E2E14(v27, v19, &qword_27FF3C050, &qword_262A2B4F8);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_262A19530(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = v4;
  v128 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C050, &qword_262A2B4F8);
  v137 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v131 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v142 = &v122 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v144 = &v122 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v143 = &v122 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v139 = &v122 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v20 = MEMORY[0x28223BE20](v19);
  v124 = &v122 - v21;
  result = MEMORY[0x28223BE20](v20);
  v123 = &v122 - v24;
  v25 = a3[1];
  if (v25 < 1)
  {
    v27 = MEMORY[0x277D84F90];
LABEL_103:
    a4 = *v128;
    if (!*v128)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_105:
      v145 = v27;
      v117 = *(v27 + 16);
      if (v117 >= 2)
      {
        while (*a3)
        {
          v118 = v27;
          v27 = v117 - 1;
          v119 = *&v118[16 * v117];
          v120 = *&v118[16 * v117 + 24];
          sub_262A19F68(*a3 + *(v137 + 72) * v119, *a3 + *(v137 + 72) * *&v118[16 * v117 + 16], *a3 + *(v137 + 72) * v120, a4);
          if (v5)
          {
          }

          if (v120 < v119)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v118 = sub_262A1F22C(v118);
          }

          if (v117 - 2 >= *(v118 + 2))
          {
            goto LABEL_129;
          }

          v121 = &v118[16 * v117];
          *v121 = v119;
          *(v121 + 1) = v120;
          v145 = v118;
          result = sub_262A1F1A0(v27);
          v27 = v145;
          v117 = *(v145 + 16);
          if (v117 <= 1)
          {
          }
        }

        goto LABEL_139;
      }
    }

LABEL_135:
    result = sub_262A1F22C(v27);
    v27 = result;
    goto LABEL_105;
  }

  v134 = v23;
  v122 = a4;
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v138 = a3;
  v133 = v8;
  while (1)
  {
    v28 = v26++;
    if (v26 < v25)
    {
      v135 = v25;
      v29 = *a3;
      v30 = *(v137 + 72);
      v31 = v123;
      sub_262A1A6F0(*a3 + v30 * v26, v123);
      v140 = v30;
      v32 = v29 + v30 * v28;
      v33 = v124;
      sub_262A1A6F0(v32, v124);
      v34 = *(v8 + 80);
      v35 = *(v31 + v34);
      v36 = *(v33 + v34);
      v126 = v5;
      if (v35 == v36)
      {
        v37 = sub_262A29F98();
        v33 = v124;
        LODWORD(v136) = v37;
      }

      else
      {
        LODWORD(v136) = v35 < v36;
      }

      v125 = v27;
      sub_2629ADF2C(v33, &qword_27FF3C050, &qword_262A2B4F8);
      result = sub_2629ADF2C(v31, &qword_27FF3C050, &qword_262A2B4F8);
      v127 = v28;
      v38 = (v28 + 2);
      v39 = v140 * (v28 + 2);
      v40 = v29 + v39;
      v41 = v140 * v26;
      a4 = v29 + v140 * v26;
      do
      {
        a3 = v38;
        v43 = v26;
        v27 = v41;
        v5 = v39;
        if (v38 >= v135)
        {
          break;
        }

        v141 = v38;
        v44 = v8;
        v45 = v134;
        sub_262A1A6F0(v40, v134);
        v46 = v139;
        sub_262A1A6F0(a4, v139);
        v47 = v46;
        v48 = *(v44 + 80);
        v49 = *(v45 + v48);
        v50 = *(v46 + v48);
        if (v49 == v50)
        {
          v51 = sub_262A29F98();
          v47 = v139;
          v42 = v51;
        }

        else
        {
          v42 = v49 < v50;
        }

        sub_2629ADF2C(v47, &qword_27FF3C050, &qword_262A2B4F8);
        result = sub_2629ADF2C(v45, &qword_27FF3C050, &qword_262A2B4F8);
        a3 = v141;
        v38 = (v141 + 1);
        v40 += v140;
        a4 += v140;
        ++v26;
        v41 = v27 + v140;
        v39 = v5 + v140;
        v8 = v133;
      }

      while ((v136 & 1) == v42);
      if (v136)
      {
        v52 = v127;
        if (a3 < v127)
        {
          goto LABEL_132;
        }

        if (v127 >= a3)
        {
          v26 = a3;
          v27 = v125;
          v5 = v126;
          a3 = v138;
          v28 = v127;
          goto LABEL_30;
        }

        v53 = v127 * v140;
        do
        {
          if (v52 != v43)
          {
            a4 = *v138;
            if (!*v138)
            {
              goto LABEL_138;
            }

            sub_2629E2E14(a4 + v53, v131, &qword_27FF3C050, &qword_262A2B4F8);
            if (v53 < v27 || a4 + v53 >= a4 + v5)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v53 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_2629E2E14(v131, a4 + v27, &qword_27FF3C050, &qword_262A2B4F8);
          }

          ++v52;
          v27 -= v140;
          v5 -= v140;
          v53 += v140;
        }

        while (v52 < v43--);
      }

      v26 = a3;
      v27 = v125;
      v5 = v126;
      a3 = v138;
      v28 = v127;
    }

LABEL_30:
    v55 = a3[1];
    if (v26 < v55)
    {
      if (__OFSUB__(v26, v28))
      {
        goto LABEL_131;
      }

      if (v26 - v28 < v122)
      {
        break;
      }
    }

LABEL_51:
    if (v26 < v28)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2629A8DAC(0, *(v27 + 16) + 1, 1, v27);
      v27 = result;
    }

    a4 = *(v27 + 16);
    v72 = *(v27 + 24);
    v73 = a4 + 1;
    if (a4 >= v72 >> 1)
    {
      result = sub_2629A8DAC((v72 > 1), a4 + 1, 1, v27);
      v27 = result;
    }

    *(v27 + 16) = v73;
    v74 = v27 + 16 * a4;
    *(v74 + 32) = v28;
    *(v74 + 40) = v26;
    if (!*v128)
    {
      goto LABEL_140;
    }

    if (a4)
    {
      a3 = *v128;
      while (1)
      {
        a4 = v73 - 1;
        if (v73 >= 4)
        {
          break;
        }

        if (v73 == 3)
        {
          v75 = *(v27 + 32);
          v76 = *(v27 + 40);
          v85 = __OFSUB__(v76, v75);
          v77 = v76 - v75;
          v78 = v85;
LABEL_72:
          if (v78)
          {
            goto LABEL_119;
          }

          v91 = (v27 + 16 * v73);
          v93 = *v91;
          v92 = v91[1];
          v94 = __OFSUB__(v92, v93);
          v95 = v92 - v93;
          v96 = v94;
          if (v94)
          {
            goto LABEL_122;
          }

          v97 = (v27 + 32 + 16 * a4);
          v99 = *v97;
          v98 = v97[1];
          v85 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v85)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v95, v100))
          {
            goto LABEL_126;
          }

          if (v95 + v100 >= v77)
          {
            if (v77 < v100)
            {
              a4 = v73 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v101 = (v27 + 16 * v73);
        v103 = *v101;
        v102 = v101[1];
        v85 = __OFSUB__(v102, v103);
        v95 = v102 - v103;
        v96 = v85;
LABEL_86:
        if (v96)
        {
          goto LABEL_121;
        }

        v104 = v27 + 16 * a4;
        v106 = *(v104 + 32);
        v105 = *(v104 + 40);
        v85 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v85)
        {
          goto LABEL_124;
        }

        if (v107 < v95)
        {
          goto LABEL_3;
        }

LABEL_93:
        v112 = a4 - 1;
        if (a4 - 1 >= v73)
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
          goto LABEL_134;
        }

        if (!*v138)
        {
          goto LABEL_137;
        }

        v113 = v27;
        v114 = v27 + 32;
        v27 = *(v27 + 32 + 16 * v112);
        v115 = *(v114 + 16 * a4 + 8);
        sub_262A19F68(*v138 + *(v137 + 72) * v27, *v138 + *(v137 + 72) * *(v114 + 16 * a4), *v138 + *(v137 + 72) * v115, a3);
        if (v5)
        {
        }

        if (v115 < v27)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = sub_262A1F22C(v113);
        }

        if (v112 >= *(v113 + 2))
        {
          goto LABEL_116;
        }

        v116 = &v113[16 * v112];
        *(v116 + 4) = v27;
        *(v116 + 5) = v115;
        v145 = v113;
        result = sub_262A1F1A0(a4);
        v27 = v145;
        v73 = *(v145 + 16);
        if (v73 <= 1)
        {
          goto LABEL_3;
        }
      }

      v79 = v27 + 32 + 16 * v73;
      v80 = *(v79 - 64);
      v81 = *(v79 - 56);
      v85 = __OFSUB__(v81, v80);
      v82 = v81 - v80;
      if (v85)
      {
        goto LABEL_117;
      }

      v84 = *(v79 - 48);
      v83 = *(v79 - 40);
      v85 = __OFSUB__(v83, v84);
      v77 = v83 - v84;
      v78 = v85;
      if (v85)
      {
        goto LABEL_118;
      }

      v86 = (v27 + 16 * v73);
      v88 = *v86;
      v87 = v86[1];
      v85 = __OFSUB__(v87, v88);
      v89 = v87 - v88;
      if (v85)
      {
        goto LABEL_120;
      }

      v85 = __OFADD__(v77, v89);
      v90 = v77 + v89;
      if (v85)
      {
        goto LABEL_123;
      }

      if (v90 >= v82)
      {
        v108 = (v27 + 32 + 16 * a4);
        v110 = *v108;
        v109 = v108[1];
        v85 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v85)
        {
          goto LABEL_127;
        }

        if (v77 < v111)
        {
          a4 = v73 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    a3 = v138;
    v25 = v138[1];
    if (v26 >= v25)
    {
      goto LABEL_103;
    }
  }

  v56 = v28 + v122;
  if (__OFADD__(v28, v122))
  {
    goto LABEL_133;
  }

  if (v56 >= v55)
  {
    v56 = a3[1];
  }

  if (v56 < v28)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v26 == v56)
  {
    goto LABEL_51;
  }

  v125 = v27;
  v126 = v5;
  v57 = *a3;
  v58 = *(v137 + 72);
  v59 = *a3 + v58 * (v26 - 1);
  v60 = v28;
  v61 = -v58;
  v127 = v60;
  v62 = v60 - v26;
  v140 = v26;
  v141 = v57;
  v129 = v58;
  v130 = v56;
  a4 = v57 + v26 * v58;
  v63 = v8;
  v64 = v143;
LABEL_41:
  v132 = a4;
  v135 = v62;
  v136 = v59;
  while (1)
  {
    sub_262A1A6F0(a4, v64);
    v65 = v144;
    sub_262A1A6F0(v59, v144);
    v66 = *(v8 + 80);
    v67 = *(v64 + v66);
    v68 = *(v65 + v66);
    if (v67 == v68)
    {
      v69 = sub_262A29F98();
    }

    else
    {
      v69 = v67 < v68;
    }

    a3 = &qword_262A2B4F8;
    sub_2629ADF2C(v144, &qword_27FF3C050, &qword_262A2B4F8);
    result = sub_2629ADF2C(v64, &qword_27FF3C050, &qword_262A2B4F8);
    if ((v69 & 1) == 0)
    {
      v8 = v63;
LABEL_40:
      v59 = v136 + v129;
      v62 = v135 - 1;
      a4 = v132 + v129;
      if (++v140 == v130)
      {
        v26 = v130;
        v27 = v125;
        v5 = v126;
        v28 = v127;
        goto LABEL_51;
      }

      goto LABEL_41;
    }

    if (!v141)
    {
      break;
    }

    v70 = v142;
    a3 = &qword_27FF3C050;
    sub_2629E2E14(a4, v142, &qword_27FF3C050, &qword_262A2B4F8);
    v8 = v63;
    swift_arrayInitWithTakeFrontToBack();
    v64 = v143;
    sub_2629E2E14(v70, v59, &qword_27FF3C050, &qword_262A2B4F8);
    v59 += v61;
    a4 += v61;
    if (__CFADD__(v62++, 1))
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_262A19F68(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C050, &qword_262A2B4F8);
  v11 = MEMORY[0x28223BE20](v10);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v55 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v55 - v16;
  result = MEMORY[0x28223BE20](v15);
  v21 = v55 - v20;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_70;
  }

  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_71;
  }

  v25 = (a2 - a1) / v23;
  v66 = a1;
  v65 = a4;
  v63 = v10;
  v55[1] = v5;
  if (v25 >= v24 / v23)
  {
    v27 = v24 / v23 * v23;
    v62 = v19;
    v60 = v14;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v35 = a4 + v27;
    if (v27 < 1)
    {
      v38 = a4 + v27;
    }

    else
    {
      v36 = -v23;
      v37 = v35;
      v38 = v35;
      v57 = a4;
      v61 = v36;
      while (2)
      {
        while (1)
        {
          v55[0] = v38;
          v39 = a2 + v36;
          v58 = a2;
          v59 = a2 + v36;
          while (1)
          {
            if (a2 <= a1)
            {
              v66 = a2;
              v64 = v55[0];
              goto LABEL_68;
            }

            v42 = a3;
            v56 = v38;
            v43 = v39;
            v44 = v37 + v36;
            v45 = v60;
            sub_262A1A6F0(v44, v60);
            v46 = v43;
            v47 = v62;
            sub_262A1A6F0(v46, v62);
            v48 = *(v10 + 80);
            v49 = *(v45 + v48);
            v50 = *(v47 + v48);
            if (v49 == v50)
            {
              v51 = sub_262A29F98();
              v47 = v62;
              v52 = v51;
            }

            else
            {
              v52 = v49 < v50;
            }

            v53 = v42 + v61;
            sub_2629ADF2C(v47, &qword_27FF3C050, &qword_262A2B4F8);
            sub_2629ADF2C(v45, &qword_27FF3C050, &qword_262A2B4F8);
            if (v52)
            {
              break;
            }

            v38 = v44;
            a3 = v53;
            a2 = v58;
            if (v42 < v37 || v53 >= v37)
            {
              v10 = v63;
              swift_arrayInitWithTakeFrontToBack();
              v40 = v57;
            }

            else
            {
              v10 = v63;
              v40 = v57;
              if (v42 != v37)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v37 = v44;
            v41 = v44 > v40;
            v36 = v61;
            v39 = v59;
            if (!v41)
            {
              goto LABEL_66;
            }
          }

          a3 = v53;
          if (v42 < v58 || v53 >= v58)
          {
            break;
          }

          v10 = v63;
          v38 = v56;
          v54 = v57;
          v36 = v61;
          a2 = v59;
          if (v42 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v37 <= v54)
          {
            goto LABEL_66;
          }
        }

        a2 = v59;
        v10 = v63;
        swift_arrayInitWithTakeFrontToBack();
        v38 = v56;
        v36 = v61;
        if (v37 > v57)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v66 = a2;
    v64 = v38;
  }

  else
  {
    v26 = v25 * v23;
    if (a4 < a1 || a1 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v62 = a4 + v26;
    v64 = a4 + v26;
    v28 = v26 < 1 || a2 >= a3;
    v29 = v63;
    if (!v28)
    {
      v61 = a3;
      do
      {
        sub_262A1A6F0(a2, v21);
        sub_262A1A6F0(a4, v17);
        v30 = *(v29 + 80);
        v31 = *&v21[v30];
        v32 = *&v17[v30];
        if (v31 == v32)
        {
          v33 = sub_262A29F98();
        }

        else
        {
          v33 = v31 < v32;
        }

        sub_2629ADF2C(v17, &qword_27FF3C050, &qword_262A2B4F8);
        sub_2629ADF2C(v21, &qword_27FF3C050, &qword_262A2B4F8);
        if (v33)
        {
          if (a1 < a2 || a1 >= a2 + v23)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v23;
            v34 = v61;
          }

          else
          {
            v34 = v61;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v23;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v23)
          {
            swift_arrayInitWithTakeFrontToBack();
            v34 = v61;
          }

          else
          {
            v34 = v61;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v65 = a4 + v23;
          a4 += v23;
        }

        a1 += v23;
        v66 = a1;
        v29 = v63;
      }

      while (a4 < v62 && a2 < v34);
    }
  }

LABEL_68:
  sub_262A1A608(&v66, &v65, &v64, &qword_27FF3C050, &qword_262A2B4F8);
  return 1;
}

uint64_t sub_262A1A524(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_262A1A608(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(*(result - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_262A1A6F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C050, &qword_262A2B4F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_262A1A760(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v33 = MEMORY[0x277D84F90];
    v32 = *(a1 + 16);
    sub_2629CD800(0, v1, 0);
    v2 = v33;
    v4 = a1 + 64;
    v5 = sub_262A2A648();
    v6 = v32;
    v7 = 0;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v9 = v5 >> 6;
      v10 = 1 << v5;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_37;
      }

      v11 = *(a1 + 36);
      ++v7;
      v12 = v5 & 0x3F;
      v13 = 0xEA00000000003638;
      v14 = 0x3932343038373431;
      switch(*(*(a1 + 48) + v5))
      {
        case 1:
          v13 = 0xEA00000000003937;
          goto LABEL_22;
        case 2:
          v13 = 0xEA00000000003438;
          goto LABEL_22;
        case 3:
          v13 = 0xEA00000000003238;
          goto LABEL_22;
        case 4:
          v13 = 0xEA00000000003633;
          v14 = 0x3532363037343631;
          break;
        case 5:
          v13 = 0xEA00000000003839;
          goto LABEL_18;
        case 6:
          v13 = 0xEA00000000003738;
          goto LABEL_22;
        case 7:
          v13 = 0xEA00000000003739;
          goto LABEL_18;
        case 8:
          v14 = 0x3932343038373431;
          v13 = 0xEA00000000003038;
          break;
        case 9:
          v13 = 0xEA00000000003639;
LABEL_18:
          v14 = 0x3332373831363531;
          break;
        case 0xA:
          v13 = 0xEA00000000003338;
          goto LABEL_22;
        case 0xB:
          v13 = 0xEA00000000003138;
          goto LABEL_22;
        case 0xC:
          v13 = 0xEA00000000003635;
          v14 = 0x3032383934393431;
          break;
        case 0xD:
          v13 = 0xEA00000000003538;
LABEL_22:
          v14 = 0x3932343038373431;
          break;
        default:
          break;
      }

      v16 = *(v33 + 16);
      v15 = *(v33 + 24);
      if (v16 >= v15 >> 1)
      {
        v30 = *(a1 + 36);
        v31 = v5;
        v28 = v5 & 0x3F;
        v29 = v7;
        sub_2629CD800((v15 > 1), v16 + 1, 1);
        v12 = v28;
        v7 = v29;
        v6 = v32;
        v11 = v30;
        v5 = v31;
      }

      *(v33 + 16) = v16 + 1;
      v17 = v33 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_38;
      }

      v18 = *(v4 + 8 * v9);
      if ((v18 & v10) == 0)
      {
        goto LABEL_39;
      }

      if (v11 != *(a1 + 36))
      {
        goto LABEL_40;
      }

      v19 = v18 & (-2 << v12);
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v22 = (a1 + 72 + 8 * v9);
        while (v21 < (v8 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            v25 = v7;
            sub_2629D40E8(v5, v11, 0);
            v7 = v25;
            v6 = v32;
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        v26 = v7;
        sub_2629D40E8(v5, v11, 0);
        v7 = v26;
        v6 = v32;
      }

LABEL_4:
      v5 = v8;
      if (v7 == v6)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    JUMPOUT(0x262A1AAA4);
  }

  return v2;
}

void sub_262A1AAF4(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v7 = a4 + 64;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = __clz(__rbit64(v10)) | (v13 << 6);
      v15 = *(*(a4 + 56) + 8 * v14);
      v16[0] = *(*(a4 + 48) + v14);
      v17 = v15;

      a2(&v18, v16);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;

      v12 = v13;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        return;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_262A1AC3C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ResultPostProcessor(0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HeuristicsProcessor(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PlanGenerationContext(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PersistentLogger(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = sub_262A17A1C(0, 0);
  sub_262A17B14(0, 0, v17);
  sub_262A1CF28(v17, v2 + OBJC_IVAR____TtC10SIDFitness34EstablishedUserWorkoutPlanStrategy_logger, type metadata accessor for PersistentLogger);
  *(v2 + OBJC_IVAR____TtC10SIDFitness34EstablishedUserWorkoutPlanStrategy_operationTracker) = sub_262A17CDC(0, 0);
  sub_262A17DD4(0, 0, v14);
  sub_262A1CF28(v14, v2 + OBJC_IVAR____TtC10SIDFitness34EstablishedUserWorkoutPlanStrategy_planGenerationContext, type metadata accessor for PlanGenerationContext);

  sub_262A17B14(0, 0, v11);
  *&v11[v9[7]] = sub_262A17CDC(0, 0);
  sub_262A17DD4(0, 0, &v11[v9[8]]);
  *&v11[v9[9]] = a1;
  sub_262A1CF28(v11, v2 + OBJC_IVAR____TtC10SIDFitness34EstablishedUserWorkoutPlanStrategy_heuristicsProcessor, type metadata accessor for HeuristicsProcessor);
  sub_262A17B14(0, 0, v7);
  *&v7[v5[7]] = sub_262A17CDC(0, 0);
  sub_262A17DD4(0, 0, &v7[v5[8]]);
  *&v7[v5[9]] = a1;
  sub_262A1CF28(v7, v2 + OBJC_IVAR____TtC10SIDFitness34EstablishedUserWorkoutPlanStrategy_resultPostProcessor, type metadata accessor for ResultPostProcessor);
  return v2;
}

uint64_t sub_262A1AF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CD10, &qword_262A2D5B0);
  v5[22] = swift_task_alloc();
  v5[23] = type metadata accessor for SIDMetricCreatePlanScaffold(0);
  v5[24] = swift_task_alloc();
  v5[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC38, &unk_262A30C00);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = type metadata accessor for SIDPersonalizedPlanResponse(0);
  v5[29] = swift_task_alloc();
  v6 = type metadata accessor for SIDPersonalizedWorkoutPlan(0);
  v5[30] = v6;
  v5[31] = *(v6 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = type metadata accessor for ConsistentWorkoutPlanResult(0);
  v5[34] = swift_task_alloc();
  type metadata accessor for PersistentLogger(0);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_262A1B118, 0, 0);
}

uint64_t sub_262A1B118()
{
  v105 = v0;
  v1 = v0[36];
  v2 = v0[20];
  v3 = v0[21];
  v0[37] = OBJC_IVAR____TtC10SIDFitness34EstablishedUserWorkoutPlanStrategy_heuristicsProcessor;
  v4 = sub_2629ED5CC(v2);
  v5 = OBJC_IVAR____TtC10SIDFitness34EstablishedUserWorkoutPlanStrategy_logger;
  v0[38] = v4;
  v0[39] = v5;
  sub_2629B17C0(v3 + v5, v1);
  sub_262A2A6F8();

  v99 = 0xD00000000000001DLL;
  v100 = 0x8000000262A341D0;

  v7 = sub_262A1A760(v6);

  v0[12] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0C0, &unk_262A2BA70);
  sub_2629ADBD8();
  v8 = sub_262A2A398();
  v10 = v9;

  MEMORY[0x26672ECF0](v8, v10);
  v11 = v4;

  MEMORY[0x26672ECF0](0x6F63206874697720, 0xEE00203A73746E75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CDD0, &qword_262A2B3B0);
  result = sub_262A2A758();
  v13 = result;
  v14 = 0;
  v15 = 1 << *(v4 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v18 = v4[8];
  v17 = v4 + 8;
  v19 = v16 & v18;
  v20 = (v15 + 63) >> 6;
  v21 = result + 64;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v23 = v22 | (v14 << 6);
LABEL_10:
      v26 = *(v11[6] + v23);
      v27 = *(*(v11[7] + 8 * v23) + 16);
      v28 = (v23 >> 3) & 0x1FFFFFFFFFFFFFF8;
      result = *(v21 + v28);
      *(v21 + v28) = result | (1 << v23);
      *(v13[6] + v23) = v26;
      *(v13[7] + 8 * v23) = v27;
      v29 = v13[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      v13[2] = v31;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

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
  }

  else
  {
LABEL_5:
    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if (v14 >= v20)
      {
        break;
      }

      v25 = v17[v14];
      ++v24;
      if (v25)
      {
        v19 = (v25 - 1) & v25;
        v23 = __clz(__rbit64(v25)) | (v14 << 6);
        goto LABEL_10;
      }
    }

    v32 = v0[36];
    v0[40] = sub_2629C24D0();
    v33 = sub_262A2A348();
    v96 = v11;
    v35 = v34;

    MEMORY[0x26672ECF0](v33, v35);
    v36 = v96;

    sub_2629EA8C8(v99, v100);

    sub_262A1CEC8(v32, type metadata accessor for PersistentLogger);
    if (*(v96 + 16))
    {
      v93 = v5;
      v94 = v3;
      v95 = v0;
      v37 = -1;
      v38 = -1 << *(v96 + 32);
      if (-v38 < 64)
      {
        v37 = ~(-1 << -v38);
      }

      v39 = v37 & *(v96 + 64);
      v40 = (63 - v38) >> 6;
      result = swift_bridgeObjectRetain_n();
      v41 = 0;
      v42 = MEMORY[0x277D84F90];
      while (v39)
      {
LABEL_23:
        v44 = *(*(v36 + 56) + ((v41 << 9) | (8 * __clz(__rbit64(v39)))));
        v45 = *(v44 + 16);
        v46 = v42[2];
        v47 = v46 + v45;
        if (__OFADD__(v46, v45))
        {
          goto LABEL_49;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v47 > v42[3] >> 1)
        {
          if (v46 <= v47)
          {
            v49 = v46 + v45;
          }

          else
          {
            v49 = v46;
          }

          v42 = sub_2629A8FBC(isUniquelyReferenced_nonNull_native, v49, 1, v42);
        }

        v39 &= v39 - 1;
        if (*(v44 + 16))
        {
          v50 = (v42[3] >> 1) - v42[2];
          result = type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
          if (v50 < v45)
          {
            goto LABEL_51;
          }

          swift_arrayInitWithCopy();

          v36 = v96;
          if (v45)
          {
            v51 = v42[2];
            v30 = __OFADD__(v51, v45);
            v52 = v51 + v45;
            if (v30)
            {
              goto LABEL_52;
            }

            v42[2] = v52;
          }
        }

        else
        {

          v36 = v96;
          if (v45)
          {
            goto LABEL_50;
          }
        }
      }

      while (1)
      {
        v43 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          goto LABEL_47;
        }

        if (v43 >= v40)
        {
          v53 = v95[35];

          sub_262A2A6F8();

          v99 = 0xD000000000000026;
          v100 = 0x8000000262A341F0;
          v95[13] = v42[2];
          v54 = sub_262A2A868();
          MEMORY[0x26672ECF0](v54);

          sub_2629EA8C8(v99, v100);

          v55 = sub_2629F1C80(v42);
          v56 = sub_2629F23E4(v55);
          v57 = sub_2629F25D4(v55, v56);
          v59 = v58;

          v95[44] = v57;
          v95[45] = v59;
          v60 = sub_2629F4A34(v42, v56);

          sub_2629B17C0(v94 + v93, v53);
          v99 = 0;
          v100 = 0xE000000000000000;
          sub_262A2A6F8();
          MEMORY[0x26672ECF0](0xD00000000000002DLL, 0x8000000262A34220);
          v61 = MEMORY[0x26672EDD0](v56, MEMORY[0x277D83B88]);
          v63 = v62;

          MEMORY[0x26672ECF0](v61, v63);

          MEMORY[0x26672ECF0](0xD000000000000011, 0x8000000262A34250);
          v95[14] = v60;
          v64 = sub_262A2A868();
          MEMORY[0x26672ECF0](v64);

          MEMORY[0x26672ECF0](0x61646B656577202CLL, 0xEC000000203A7379);
          v65 = *(v57 + 2);
          v66 = MEMORY[0x277D84F90];
          if (v65)
          {
            v98 = MEMORY[0x277D84F90];
            sub_2629CD840(0, v65, 0);
            v66 = v98;
            v67 = (v57 + 32);
            v68 = *(v98 + 16);
            do
            {
              v70 = *v67++;
              v69 = v70;
              v71 = *(v98 + 24);
              if (v68 >= v71 >> 1)
              {
                sub_2629CD840((v71 > 1), v68 + 1, 1);
              }

              *(v98 + 16) = v68 + 1;
              *(v98 + 8 * v68++ + 32) = v69;
              --v65;
            }

            while (v65);
          }

          v72 = v95[35];
          v73 = MEMORY[0x26672EDD0](v66, MEMORY[0x277D83B88]);
          v75 = v74;

          MEMORY[0x26672ECF0](v73, v75);

          sub_2629EA8C8(v99, v100);

          sub_262A1CEC8(v72, type metadata accessor for PersistentLogger);
          sub_2629F514C(v96, v57, v60, &v99);
          v76 = v99;
          v77 = v100;
          v95[46] = v99;
          v95[47] = v77;
          v78 = v76;
          v97 = v76;
          v79 = v101;
          v80 = v102;
          v95[48] = v101;
          v95[49] = v80;
          v81 = v103;
          v82 = v104;
          v95[50] = v103;
          v95[51] = v82;
          v99 = 0;
          v100 = 0xE000000000000000;
          sub_262A2A6F8();

          v99 = v78;
          v100 = v77;
          v101 = v79;
          v102 = v80;
          v103 = v81;
          v104 = v82;
          v83 = SIDWorkoutPlanScaffold.description.getter();
          MEMORY[0x26672ECF0](v83);

          sub_2629EA8C8(0xD000000000000025, 0x8000000262A34270);

          sub_2629EA8C8(0xD000000000000029, 0x8000000262A342A0);
          v95[52] = OBJC_IVAR____TtC10SIDFitness34EstablishedUserWorkoutPlanStrategy_resultPostProcessor;
          v95[2] = v97;
          v95[3] = v77;
          v95[4] = v79;
          v95[5] = v80;
          v95[6] = v81;
          v95[7] = v82;
          v84 = swift_task_alloc();
          v95[53] = v84;
          *v84 = v95;
          v84[1] = sub_262A1BDFC;
          v85 = v95[34];
          v86 = v95[18];
          v87 = v95[19];

          return sub_262A06214(v85, (v95 + 2), v86, v87);
        }

        v39 = v17[v43];
        ++v41;
        if (v39)
        {
          v41 = v43;
          goto LABEL_23;
        }
      }
    }

    sub_2629EA8C8(0xD00000000000003ELL, 0x8000000262A34400);
    sub_2629EA8C8(0xD000000000000038, 0x8000000262A34440);
    type metadata accessor for HeuristicsProcessor(0);
    type metadata accessor for ColdStartUserWorkoutPlanStrategy(0);
    swift_allocObject();

    v0[41] = sub_262A16B30(v88);
    v89 = swift_task_alloc();
    v0[42] = v89;
    *v89 = v0;
    v89[1] = sub_262A1BB24;
    v90 = v0[19];
    v91 = v0[17];
    v92 = v0[18];

    return sub_262A16D3C(v91, v92, v90);
  }

  return result;
}

uint64_t sub_262A1BB24()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_262A1BD14;
  }

  else
  {
    v2 = sub_262A1BC38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_262A1BC38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_262A1BD14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_262A1BDFC()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = sub_262A1BF28;
  }

  else
  {

    *(v2 + 440) = 0;
    v3 = sub_262A1C0B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_262A1BF28()
{
  v18 = v0;
  v1 = v0[54];
  v2 = v0[51];
  v7 = v0[49];
  v8 = v0[50];
  v4 = v0[47];
  v3 = v0[48];
  v5 = v0[46];
  v12 = v0[38];
  v10 = v0[20];
  v11 = v0[34];
  v9 = v0[19];
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  sub_262A2A6F8();
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  MEMORY[0x26672ECF0](0xD00000000000002BLL, 0x8000000262A342D0);
  v0[15] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEC0, &unk_262A2BA60);
  sub_262A2A738();
  sub_2629EA8B0(v0[8], v0[9]);

  *&v13 = v5;
  *(&v13 + 1) = v4;
  v14 = v3;
  v15 = v7;
  v16 = v8;
  v17 = v2;
  sub_262A0F55C(v10, v9, &v13, v12, v11);
  MEMORY[0x26672F6A0](v1);

  v0[55] = 0;

  return MEMORY[0x2822009F8](sub_262A1C0B8, 0, 0);
}

uint64_t sub_262A1C0B8()
{
  v69 = v0[55];
  v1 = v0[38];
  v71 = v0[34];
  v67 = v0[32];
  v76 = v0[26];
  v78 = v0[45];
  v74 = v0[19];
  v2 = v0[21] + v0[37];
  sub_262A2A6F8();

  v3 = SIDPersonalizedWorkoutPlan.description.getter();
  MEMORY[0x26672ECF0](v3);

  sub_2629EA8C8(0xD000000000000020, 0x8000000262A34300);

  v4 = (v2 + *(type metadata accessor for HeuristicsProcessor(0) + 24));
  v80 = *v4;
  v5 = type metadata accessor for PlanGenerationContext(0);
  v6.f64[0] = *(v4 + v5[31]);
  v6.f64[1] = *(v4 + v5[30]);
  v64 = v6;
  v6.f64[0] = v80;
  v6.f64[1] = *(v4 + v5[7]);
  v81 = v6;
  v7 = sub_2629AC1C8(&unk_287533A20);
  v8 = sub_2629AC5B8(&unk_287533CE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C2D8, &unk_262A30A30);
  swift_arrayDestroy();
  v9 = sub_2629ACDDC(MEMORY[0x277D84F90]);
  v10 = swift_task_alloc();
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  *(v10 + 32) = v2;
  v11 = vdupq_n_s64(0x4059000000000000uLL);
  *(v10 + 56) = vmulq_f64(v64, v11);
  *(v10 + 40) = vmulq_f64(v81, v11);
  sub_262A1AAF4(v9, sub_262A1CE30, v10, v1);
  v13 = v12;

  sub_262A2A6F8();

  v14 = sub_262A2A348();
  MEMORY[0x26672ECF0](v14);

  sub_2629EA8C8(0xD000000000000021, 0x8000000262A34330);

  sub_262A088C0(v71, v13, v67);

  sub_262A2A6F8();

  v15 = SIDPersonalizedWorkoutPlan.description.getter();
  MEMORY[0x26672ECF0](v15);

  sub_2629EA8C8(0xD000000000000028, 0x8000000262A34360);

  sub_262A04CC4(v67, v74, v1, v78, v76);
  if (v69)
  {
    v16 = v0[30];
    v17 = v0[31];
    v18 = v0[27];

    sub_262A2A6F8();
    v0[10] = 0;
    v0[11] = 0xE000000000000000;
    MEMORY[0x26672ECF0](0xD00000000000001FLL, 0x8000000262A34390);
    v0[16] = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEC0, &unk_262A2BA60);
    sub_262A2A738();
    sub_2629EA8B0(v0[10], v0[11]);
    MEMORY[0x26672F6A0](v69);

    (*(v17 + 56))(v18, 1, 1, v16);
  }

  else
  {
    v19 = v0[30];
    v20 = v0[31];
    v22 = v0[26];
    v21 = v0[27];

    (*(v20 + 56))(v22, 0, 1, v19);
    sub_262A1CE58(v22, v21);
    sub_262A2A6F8();

    v23 = sub_262A2A608();
    MEMORY[0x26672ECF0](v23);

    sub_2629EA8C8(0xD000000000000023, 0x8000000262A343D0);
  }

  v62 = v0[33];
  v24 = v0[32];
  v65 = v0[30];
  v75 = v24;
  v77 = v0[29];
  v25 = v0[27];
  v56 = v0[28];
  v26 = v0[24];
  v27 = v0[21];
  v79 = v0[22];
  v82 = v0[34];
  v28 = v0[18];
  v29 = v0[19];
  v70 = v0[23];
  v72 = v28;
  v73 = v0[17];
  v30 = type metadata accessor for SIDPersonalizedPlanRequest(0);
  v31 = sub_262A07AD0(v24, v25, (v28 + *(v30 + 20)));
  sub_262A2A6F8();

  v32 = type metadata accessor for SIDWorkoutPlanType(0);
  v33 = MEMORY[0x26672EDD0](v31, v32);
  MEMORY[0x26672ECF0](v33);

  sub_2629EA8C8(0xD000000000000019, 0x8000000262A343B0);

  v34 = type metadata accessor for FitnessPlanUser(0);
  v68 = v29;
  v35 = *(v29 + *(v34 + 36));
  v36 = v77 + *(v56 + 20);
  sub_262A2A008();

  sub_2629ADF2C(v25, &qword_27FF3CC38, &unk_262A30C00);
  v37 = *(v29 + *(v34 + 32));
  v38 = type metadata accessor for SIDMetrics(0);
  *&v36[*(v38 + 20)] = v35;
  *&v36[*(v38 + 24)] = v37;
  *v77 = v31;

  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD00000000000001FLL, 0x8000000262A34010);
  sub_262A1FD14(v77);
  v60 = v27;
  sub_2629EA8C8(0, 0xE000000000000000);

  sub_2629EA8C8(0xD00000000000001DLL, 0x8000000262A34030);
  v39 = v82 + *(v62 + 20);
  v63 = *v39;
  v40 = *(v39 + 8);
  v41 = *(v39 + 16);

  v61 = sub_262A26C70(v42);

  v43 = *(v65 + 32);
  v44 = sub_262A2A018();
  v45 = *(v44 - 8);
  (*(v45 + 16))(v79, v75 + v43, v44);
  v46 = *(v45 + 56);
  v46(v79, 0, 1, v44);
  v66 = *(v39 + 32);
  v47 = SIDWorkoutPlanSchedule.metricScaffold.getter();
  sub_2629E6220(v47);
  v59 = v48;

  v55 = *(v39 + 48);
  v57 = *(v39 + 40);
  v58 = *(v75 + 40);
  v49 = *(v75 + 56);
  v50 = v70[12];
  v46(v26 + v50, 1, 1, v44);
  v51 = v70[14];
  v52 = v26 + v70[13];
  v46(v26 + v51, 1, 1, v44);
  *v26 = v63;
  *(v26 + 8) = v40;
  *(v26 + 16) = v41;
  *(v26 + 24) = v61;

  sub_2629BEB44(v79, v26 + v50);
  *(v26 + 32) = v66;
  *(v26 + v70[15]) = v59;
  *(v26 + 40) = v57;
  *(v26 + 48) = v55;
  *(v26 + v70[16]) = v58;
  *(v26 + 49) = 0;
  *(v26 + 56) = v49;
  sub_2629ADF2C(v26 + v51, &unk_27FF3CD10, &qword_262A2D5B0);
  v46(v26 + v51, 1, 1, v44);
  sub_2629ADF2C(v79, &unk_27FF3CD10, &qword_262A2D5B0);
  *(v26 + v70[17]) = MEMORY[0x277D84F90];
  *v52 = 0;
  *(v52 + 8) = 1;
  sub_262A09FD0(*(v60 + 16), v72, v68, v77, v26);
  sub_262A1CEC8(v82, type metadata accessor for ConsistentWorkoutPlanResult);
  sub_262A1CEC8(v26, type metadata accessor for SIDMetricCreatePlanScaffold);
  sub_262A1CEC8(v75, type metadata accessor for SIDPersonalizedWorkoutPlan);
  sub_262A1CF28(v77, v73, type metadata accessor for SIDPersonalizedPlanResponse);

  v53 = v0[1];

  return v53();
}

uint64_t sub_262A1CAC4()
{
  swift_unknownObjectRelease();
  sub_262A1CEC8(v0 + OBJC_IVAR____TtC10SIDFitness34EstablishedUserWorkoutPlanStrategy_logger, type metadata accessor for PersistentLogger);

  sub_262A1CEC8(v0 + OBJC_IVAR____TtC10SIDFitness34EstablishedUserWorkoutPlanStrategy_planGenerationContext, type metadata accessor for PlanGenerationContext);
  sub_262A1CEC8(v0 + OBJC_IVAR____TtC10SIDFitness34EstablishedUserWorkoutPlanStrategy_heuristicsProcessor, type metadata accessor for HeuristicsProcessor);
  sub_262A1CEC8(v0 + OBJC_IVAR____TtC10SIDFitness34EstablishedUserWorkoutPlanStrategy_resultPostProcessor, type metadata accessor for ResultPostProcessor);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EstablishedUserWorkoutPlanStrategy(uint64_t a1)
{
  result = qword_27FF3CDC0;
  if (!qword_27FF3CDC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_262A1CC14(uint64_t a1)
{
  result = type metadata accessor for PersistentLogger(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PlanGenerationContext(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for HeuristicsProcessor(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ResultPostProcessor(319);
        if (v5 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_262A1CD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2629A88B4;

  return sub_262A1AF08(a1, a2, a3, a4);
}

uint64_t sub_262A1CE58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC38, &unk_262A30C00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_262A1CEC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_262A1CF28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_262A1CFA8()
{
  sub_262A184BC(v0 + OBJC_IVAR____TtC10SIDFitness40OnboardedUserStretchPlanDurationStrategy_logger, type metadata accessor for PersistentLogger);

  sub_262A184BC(v0 + OBJC_IVAR____TtC10SIDFitness40OnboardedUserStretchPlanDurationStrategy_planGenerationContext, type metadata accessor for PlanGenerationContext);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OnboardedUserStretchPlanDurationStrategy(uint64_t a1)
{
  result = qword_27FF3CDF0;
  if (!qword_27FF3CDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_262A1D0CC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_262A1D198(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2629ADE10(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_262A1D198(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_262A1D2A4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_262A2A728();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_262A1D2A4(uint64_t a1, unint64_t a2)
{
  v3 = sub_262A1D2F0(a1, a2);
  sub_262A1D420(&unk_287533500);
  return v3;
}

void *sub_262A1D2F0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_262A1D50C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_262A2A728();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_262A2A468();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_262A1D50C(v10, 0);
        result = sub_262A2A6E8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_262A1D420(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_262A1D580(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_262A1D50C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CE00, &qword_262A30F40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_262A1D580(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CE00, &qword_262A30F40);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

void *sub_262A1D674(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CE40, &qword_262A30FB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CE48, &qword_262A30FC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_262A1D7A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BED8, &qword_262A2B380);
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

char *sub_262A1D8B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF18, &unk_262A2B3C0);
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

void *sub_262A1D9B8(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C040, &qword_262A30F70);
  v10 = *(type metadata accessor for PreprocessedUserHistoryWithMetadata(0) - 8);
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
  v15 = *(type metadata accessor for PreprocessedUserHistoryWithMetadata(0) - 8);
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

char *sub_262A1DBD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CE08, &qword_262A30F48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 200);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[200 * v8])
    {
      memmove(v12, v13, 200 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_262A1DD2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CE28, &unk_262A30F88);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_262A1DE30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEE0, &qword_262A2B388);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_262A1DF50(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *sub_262A1E060(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEF0, &qword_262A2B398);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEF8, &qword_262A2B3A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_262A1E1A8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_262A1E390(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CE58, &qword_262A30FD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_262A1E4D4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_262A1E61C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_262A1E708(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFE0, &qword_262A2B488);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

uint64_t sub_262A1E824(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_262A1F3B8(v2);
  }

  v3 = v2[2];
  v22[0] = (v2 + 4);
  v22[1] = v3;
  result = sub_262A2A858();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 8;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[6 * i + 5];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 3))
          {
            break;
          }

          v14 = v13[2];
          v15 = v13[4];
          v16 = v13[5];
          result = v13[6];
          v17 = v13[7];
          v18 = *(v13 - 1);
          *(v13 + 1) = *(v13 - 2);
          *(v13 + 2) = v18;
          *(v13 + 3) = *v13;
          *(v13 - 4) = v14;
          *(v13 - 3) = v11;
          *(v13 - 2) = v15;
          *(v13 - 1) = v16;
          *v13 = result;
          v13[1] = v17;
          v13 -= 6;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 6;
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEF8, &qword_262A2B3A0);
      v7 = sub_262A2A548();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    sub_262A1E998(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_262A1E998(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v98 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v99 = *v98;
    if (!*v98)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_262A1F22C(v7);
      v7 = result;
    }

    v90 = (v7 + 16);
    v91 = *(v7 + 16);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = (v7 + 16 * v91);
        v93 = *v92;
        v94 = &v90[2 * v91];
        v95 = v94[1];
        sub_262A1EF64((*a3 + 48 * *v92), (*a3 + 48 * *v94), (*a3 + 48 * v95), v99);
        if (v4)
        {
        }

        if (v95 < v93)
        {
          goto LABEL_114;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_115;
        }

        *v92 = v93;
        v92[1] = v95;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_116;
        }

        v91 = *v90 - 1;
        result = memmove(v94, v94 + 2, 16 * v96);
        *v90 = v91;
        if (v91 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v97 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 48 * v6 + 8);
      v10 = 48 * v8;
      v11 = *a3 + 48 * v8;
      v12 = *(v11 + 8);
      v13 = v8 + 2;
      v14 = (v11 + 104);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 6;
        v17 = (v9 < v12) ^ (v16 >= v15);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 48 * v6 - 48;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v29 + v10);
            v22 = (v29 + v18);
            v23 = *(v21 + 4);
            v24 = *(v21 + 5);
            v26 = *v21;
            v25 = v21[1];
            v28 = v22[1];
            v27 = v22[2];
            *v21 = *v22;
            v21[1] = v28;
            v21[2] = v27;
            *v22 = v26;
            v22[1] = v25;
            *(v22 + 4) = v23;
            *(v22 + 5) = v24;
          }

          ++v20;
          v18 -= 48;
          v10 += 48;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2629A8DAC(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v43 = *(v7 + 16);
    v42 = *(v7 + 24);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_2629A8DAC((v42 > 1), v43 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v44;
    v45 = v7 + 32;
    v46 = (v7 + 32 + 16 * v43);
    *v46 = v8;
    v46[1] = v6;
    v99 = *v98;
    if (!*v98)
    {
      goto LABEL_127;
    }

    if (v43)
    {
      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = *(v7 + 32);
          v49 = *(v7 + 40);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_57:
          if (v51)
          {
            goto LABEL_104;
          }

          v64 = (v7 + 16 * v44);
          v66 = *v64;
          v65 = v64[1];
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_106;
          }

          v70 = (v45 + 16 * v47);
          v72 = *v70;
          v71 = v70[1];
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_111;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v44 < 2)
        {
          goto LABEL_112;
        }

        v74 = (v7 + 16 * v44);
        v76 = *v74;
        v75 = v74[1];
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_72:
        if (v69)
        {
          goto LABEL_108;
        }

        v77 = (v45 + 16 * v47);
        v79 = *v77;
        v78 = v77[1];
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_110;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v47 - 1 >= v44)
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

        v85 = (v45 + 16 * (v47 - 1));
        v86 = *v85;
        v87 = (v45 + 16 * v47);
        v88 = v87[1];
        sub_262A1EF64((*a3 + 48 * *v85), (*a3 + 48 * *v87), (*a3 + 48 * v88), v99);
        if (v4)
        {
        }

        if (v88 < v86)
        {
          goto LABEL_99;
        }

        if (v47 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v85 = v86;
        v85[1] = v88;
        v89 = *(v7 + 16);
        if (v47 >= v89)
        {
          goto LABEL_101;
        }

        v44 = v89 - 1;
        result = memmove((v45 + 16 * v47), v87 + 2, 16 * (v89 - 1 - v47));
        *(v7 + 16) = v89 - 1;
        if (v89 <= 2)
        {
          goto LABEL_3;
        }
      }

      v52 = v45 + 16 * v44;
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_102;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_103;
      }

      v59 = (v7 + 16 * v44);
      v61 = *v59;
      v60 = v59[1];
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_105;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_107;
      }

      if (v63 >= v55)
      {
        v81 = (v45 + 16 * v47);
        v83 = *v81;
        v82 = v81[1];
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_113;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v97;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 48 * v6 - 48;
  v32 = v8 - v6;
LABEL_30:
  v33 = *(v30 + 48 * v6 + 8);
  v34 = v32;
  v35 = v31;
  while (1)
  {
    if (v33 >= *(v35 + 8))
    {
LABEL_29:
      ++v6;
      v31 += 48;
      --v32;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v36 = *(v35 + 48);
    v37 = *(v35 + 64);
    v38 = *(v35 + 80);
    v39 = *(v35 + 88);
    v40 = *(v35 + 16);
    *(v35 + 48) = *v35;
    *(v35 + 64) = v40;
    *(v35 + 80) = *(v35 + 32);
    *v35 = v36;
    *(v35 + 8) = v33;
    *(v35 + 16) = v37;
    *(v35 + 32) = v38;
    *(v35 + 40) = v39;
    v35 -= 48;
    if (__CFADD__(v34++, 1))
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