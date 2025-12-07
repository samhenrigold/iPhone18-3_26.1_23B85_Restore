void sub_1ABE79224(void *a1@<X8>)
{
  sub_1ABE7806C();
  if (!v1)
  {
    memcpy(a1, __src, 0x68uLL);
  }
}

uint64_t sub_1ABE7928C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE786A0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABE792B8(uint64_t a1)
{
  v2 = sub_1ABE7BD30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE792F4(uint64_t a1)
{
  v2 = sub_1ABE7BD30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1ABE79330(void *a1@<X8>)
{
  sub_1ABE78854();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1ABE7937C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE78960(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABE793A8(uint64_t a1)
{
  v2 = sub_1ABE7D4D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE793E4(uint64_t a1)
{
  v2 = sub_1ABE7D4D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1ABE79420(void *a1@<X8>)
{
  sub_1ABE78B34();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1ABE7946C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE78C78(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABE79498(uint64_t a1)
{
  v2 = sub_1ABE7DAA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE794D4(uint64_t a1)
{
  v2 = sub_1ABE7DAA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1ABE79510(void *a1@<X8>)
{
  sub_1ABE78E18();
  if (!v1)
  {
    *a1 = v3;
  }
}

unint64_t sub_1ABE79558()
{
  result = qword_1EB4DB4B0;
  if (!qword_1EB4DB4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB4B0);
  }

  return result;
}

unint64_t sub_1ABE795AC()
{
  result = qword_1EB4DB4B8;
  if (!qword_1EB4DB4B8)
  {
    sub_1ABAE2850(&unk_1EB4DAFF0, &unk_1ABF6BFC0);
    sub_1ABE79630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB4B8);
  }

  return result;
}

unint64_t sub_1ABE79630()
{
  result = qword_1EB4DB4C0;
  if (!qword_1EB4DB4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB4C0);
  }

  return result;
}

uint64_t sub_1ABE79684(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1ABF24FE4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1ABAD219C(&qword_1EB4D10D0, &unk_1ABF6F240);
        v6 = sub_1ABF24164();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1ABE79864(v7, v8, a1, v4);
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
    return sub_1ABE79788(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1ABE79788(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_1ABF25054();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *(v12 + 32);
        v15 = *(v12 + 16);
        result = *(v12 + 24);
        *(v12 + 24) = *v12;
        *(v12 + 40) = v15;
        *v12 = result;
        *(v12 + 8) = v14;
        v10 = v14;
        v12 -= 24;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1ABE79864(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v96 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_1ABF25054();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ sub_1ABF25054()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = v24 + v21;
              v27 = *v25;
              v28 = *(v25 + 1);
              v29 = *(v26 - 24);
              v25[2] = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v30 = a3[1];
      if (v7 < v30)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v30)
          {
            v31 = a3[1];
          }

          else
          {
            v31 = v9 + a4;
          }

          if (v31 < v9)
          {
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
            return;
          }

          if (v7 != v31)
          {
            v32 = *a3;
            v33 = *a3 + 24 * v7 - 24;
            v93 = v9;
            v34 = v9 - v7;
            do
            {
              v35 = (v32 + 24 * v7);
              v36 = *v35;
              v37 = v35[1];
              v38 = v34;
              v39 = v33;
              do
              {
                v40 = v36 == *v39 && v37 == *(v39 + 8);
                if (v40 || (sub_1ABF25054() & 1) == 0)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_125;
                }

                v41 = *(v39 + 32);
                v42 = *(v39 + 16);
                v36 = *(v39 + 24);
                *(v39 + 24) = *v39;
                *(v39 + 40) = v42;
                *v39 = v36;
                *(v39 + 8) = v41;
                v37 = v41;
                v39 -= 24;
              }

              while (!__CFADD__(v38++, 1));
              ++v7;
              v33 += 24;
              --v34;
            }

            while (v7 != v31);
            v7 = v31;
            v9 = v93;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABAD8820();
        v8 = v88;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_1ABAD8820();
        v8 = v89;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v7;
      v94 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v44)
      {
        v92 = v8 + 4;
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_70:
            if (v54)
            {
              goto LABEL_110;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_113;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_118;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v45 < 2)
          {
            goto LABEL_112;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_85:
          if (v69)
          {
            goto LABEL_115;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_117;
          }

          if (v76 < v68)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v48 - 1 >= v45)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = v48;
          v83 = &v46[2 * v48];
          v84 = v83[1];
          sub_1ABE79EEC((*a3 + 24 * *v80), (*a3 + 24 * *v83), *a3 + 24 * v84, v94);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v84 < v81)
          {
            goto LABEL_105;
          }

          v85 = v8;
          v86 = v8[2];
          if (v82 > v86)
          {
            goto LABEL_106;
          }

          *v80 = v81;
          v80[1] = v84;
          if (v82 >= v86)
          {
            goto LABEL_107;
          }

          v45 = v86 - 1;
          memmove(v83, v83 + 2, 16 * (v86 - 1 - v82));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v8 = v85;
          v5 = 0;
          v46 = v92;
          if (!v87)
          {
            goto LABEL_99;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_108;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_109;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_111;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_114;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_119;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v96 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_1ABE79DB4(&v96, *a1, a3);
LABEL_103:
}

uint64_t sub_1ABE79DB4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1ABE7A0B4();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1ABE79EEC((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1ABE79EEC(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1ABADD3A8(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1ABF25054() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 24;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 24;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 24;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_17;
  }

  sub_1ABADD3A8(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_19:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v17 = *(v10 - 3) == *(v6 - 3) && *(v10 - 2) == *(v6 - 2);
    if (!v17 && (sub_1ABF25054() & 1) != 0)
    {
      v12 = v5 + 24 == v6;
      v6 -= 24;
      if (!v12)
      {
        v19 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v19;
        v6 = v15;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 24))
    {
      v18 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v18;
    }

    v10 -= 24;
  }

LABEL_36:
  v20 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v20])
  {
    memmove(v6, v4, 24 * v20);
  }

  return 1;
}

char *sub_1ABE7A0CC(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1ABE7A0F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D10C8, &unk_1ABF33250);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_1ABE7A35C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = -1 << *(a1 + 32);
  if (-v3 < 64)
  {
    v4 = ~(-1 << -v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);

  v6 = 0;
  v7 = 0;
  v56 = 0;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v53 = (MEMORY[0x1E69E7CC0] + 32);
  while (1)
  {
    while (v6)
    {
      v10 = *(v6 + 16);
      if (v7 == v10)
      {
        break;
      }

      if (v7 >= v10)
      {
        goto LABEL_40;
      }

      v14 = memcpy(__dst, (v6 + 88 * v7 + 32), sizeof(__dst));
      if (v56)
      {
        v22 = sub_1ABAA04D8(v14, v15, v16, v17, v18, v19, v20, v21, v50, v51, v52, v53, v56, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, __dst[0]);
        sub_1ABB242A4(v22, v23);
        v24 = v9;
      }

      else
      {
        sub_1ABAA206C();
        if (v25)
        {
          goto LABEL_42;
        }

        sub_1ABAB1238();
        if (v25 ^ v28 | v27)
        {
          v26 = 1;
        }

        v58 = v26;
        sub_1ABAD219C(&qword_1EB4D10A0, &qword_1ABF33228);
        v24 = swift_allocObject();
        v29 = j__malloc_size(v24);
        v37 = (v29 - 32) / 88;
        v24[2] = v58;
        v24[3] = 2 * v37;
        v38 = v9[3];
        v55 = &v24[11 * (v38 >> 1) + 4];
        v59 = (v37 & 0x7FFFFFFFFFFFFFFFLL) - (v38 >> 1);
        if (v9[2])
        {
          v39 = v24 < v9 || v24 + 4 >= &v9[11 * (v38 >> 1) + 4];
          if (!v39 && v24 == v9)
          {
            v45 = sub_1ABAA04D8(v29, v30, v31, v32, v33, v34, v35, v36, v50, v51, v52, v55, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, __dst[0]);
            sub_1ABB242A4(v45, v46);
          }

          else
          {
            v40 = sub_1ABAA04D8(v29, v30, v31, v32, v33, v34, v35, v36, v50, (v9 + 4), (v24 + 4), v55, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, __dst[0]);
            v50 = v41;
            sub_1ABB242A4(v40, v42);
            memmove(v52, v51, 88 * v50);
          }

          v9[2] = 0;
        }

        else
        {
          v43 = sub_1ABAA04D8(v29, v30, v31, v32, v33, v34, v35, v36, v50, v51, v52, v55, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, __dst[0]);
          sub_1ABB242A4(v43, v44);
        }
      }

      v28 = __OFSUB__(v57, 1);
      v56 = v57 - 1;
      if (v28)
      {
        goto LABEL_41;
      }

      ++v7;
      memcpy(v54, __dst, 0x58uLL);
      v53 = v54 + 88;
      v9 = v24;
    }

    if (!v5)
    {
      break;
    }

    v11 = v8;
LABEL_13:
    v12 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v13 = *(*(a1 + 56) + ((v11 << 9) | (8 * v12)));

    v7 = 0;
    v6 = v13;
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v11 >= ((63 - v3) >> 6))
    {
      break;
    }

    v5 = *(v2 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_13;
    }
  }

  sub_1ABAB4C48(a1);

  v47 = v9[3];
  if (v47 < 2)
  {
    return;
  }

  v48 = v47 >> 1;
  v28 = __OFSUB__(v48, v56);
  v49 = v48 - v56;
  if (!v28)
  {
    v9[2] = v49;
    return;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_1ABE7A61C()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v74 = sub_1ABF23334();
  sub_1ABA7BB64();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  v73 = v6 - v5;
  v84 = sub_1ABF23314();
  sub_1ABA7BB64();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  v71 = v11 - v10;
  v77 = sub_1ABAD219C(&qword_1EB4D3878, &unk_1ABF3DF08);
  sub_1ABA7BB64();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v70 = (&v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v63 - v17;
  v19 = type metadata accessor for VisualUnderstandingServiceBackendV1.EntitySequenceV1(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  sub_1ABA7BC58();
  v22 = v21 - v20;
  v78 = v13;
  v64 = *(v13 + 80);
  v23 = MEMORY[0x1E69E7CC0];
  sub_1ABAA036C((v64 + 32) & ~v64);
  v25 = &v23[v24];
  sub_1ABE7D7B0(v1, v22, type metadata accessor for VisualUnderstandingServiceBackendV1.EntitySequenceV1);
  v26 = sub_1ABF233D4();
  v28 = v27;
  v29 = sub_1ABA8CD18();
  sub_1ABE7D80C(v29, v30);
  v31 = 0;
  v76 = *(v26 + 16);
  v68 = v8 + 16;
  v67 = (v3 + 8);
  v72 = v8;
  v66 = v8 + 8;
  v75 = v28;
  v69 = v18;
  v65 = v26;
  while (1)
  {
    if (v76 == v28)
    {

      v60 = *(v23 + 3);
      if (v60 >= 2)
      {
        v61 = v60 >> 1;
        v48 = __OFSUB__(v61, v31);
        v62 = v61 - v31;
        if (v48)
        {
          goto LABEL_39;
        }

        *(v23 + 2) = v62;
      }

      sub_1ABA7BC1C();
      return;
    }

    if ((v75 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v28 >= *(v26 + 16))
    {
      goto LABEL_34;
    }

    v79 = v25;
    v80 = v28;
    v83 = v23;
    v33 = v71;
    v32 = v72;
    (*(v72 + 16))(v71, v26 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28, v84);
    v82 = sub_1ABF232F4();
    sub_1ABF232F4();
    v34 = v73;
    sub_1ABF24454();
    sub_1ABEC9148();
    (*v67)(v34, v74);
    v81 = v85;
    v36 = v86;
    v35 = v87;
    v37 = v88;
    v38 = sub_1ABF232E4();
    type metadata accessor for VisualUnderstandingService.ObservationSequence();
    v39 = swift_allocObject();
    v39[5] = &type metadata for VisualUnderstandingServiceBackendV1.ObservationSequenceV1.Iterator;
    v39[6] = sub_1ABB66238();
    v39[2] = v38;
    v39[3] = 0;
    v40 = *(v77 + 80);
    v41 = v70;
    *v70 = v82;
    *(v41 + 8) = v81;
    *(v41 + 24) = v36;
    *(v41 + 32) = v35;
    v42 = v69;
    *(v41 + 40) = v37;
    sub_1ABF23304();
    (*(v32 + 8))(v33, v84);
    *(v41 + v40) = v39;
    sub_1ABB65814(v41, v42);
    if (v31)
    {
      v43 = v83;
      v26 = v65;
      v44 = v79;
    }

    else
    {
      v45 = v83;
      sub_1ABAA206C();
      if (v46)
      {
        goto LABEL_36;
      }

      sub_1ABAB1238();
      if (v46 ^ v48 | v54)
      {
        v49 = 1;
      }

      else
      {
        v49 = v47;
      }

      sub_1ABAD219C(&qword_1EB4DB670, &unk_1ABF6F330);
      v50 = *(v78 + 72);
      v51 = v63;
      v43 = swift_allocObject();
      v52 = j__malloc_size(v43);
      if (!v50)
      {
        goto LABEL_37;
      }

      v53 = v52 - v51;
      v54 = v52 - v51 == 0x8000000000000000 && v50 == -1;
      if (v54)
      {
        goto LABEL_38;
      }

      v55 = v53 / v50;
      *(v43 + 2) = v49;
      *(v43 + 3) = 2 * (v53 / v50);
      v56 = &v43[v51];
      v57 = *(v45 + 3);
      v58 = (v57 >> 1) * v50;
      v26 = v65;
      if (*(v45 + 2))
      {
        if (v43 < v45 || v56 >= &v45[v51 + v58])
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v43 != v45)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        *(v45 + 2) = 0;
      }

      v44 = &v56[v58];
      v31 = (v55 & 0x7FFFFFFFFFFFFFFFLL) - (v57 >> 1);
    }

    v48 = __OFSUB__(v31--, 1);
    if (v48)
    {
      goto LABEL_35;
    }

    sub_1ABB65814(v42, v44);
    v25 = v44 + *(v78 + 72);
    v28 = v80 + 1;
    v23 = v43;
  }

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
LABEL_39:
  __break(1u);
}

void sub_1ABE7AB84(uint64_t a1)
{
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  for (i = (MEMORY[0x1E69E7CC0] + 32); ; i += 2)
  {
    sub_1ABA7C32C(a1 + 16, v21);
    sub_1ABA94E50(a1 + 16, *(a1 + 40));
    sub_1ABAA015C();
    sub_1ABF24864();
    swift_endAccess();
    if (v22)
    {
      break;
    }

    v5 = v21[3];
    v6 = v21[4];
    if (!v2)
    {
      sub_1ABAA206C();
      if (v7)
      {
        goto LABEL_24;
      }

      sub_1ABAB1238();
      if (v7 ^ v10 | v9)
      {
        v11 = 1;
      }

      else
      {
        v11 = v8;
      }

      sub_1ABAD219C(&qword_1EB4D11D8, &qword_1ABF33360);
      v12 = swift_allocObject();
      v13 = (j__malloc_size(v12) - 32) / 16;
      v12[2] = v11;
      v12[3] = 2 * v13;
      v14 = (v12 + 4);
      v15 = v3[3];
      v16 = v15 >> 1;
      if (v3[2])
      {
        if (v12 != v3 || v14 >= &v3[2 * v16 + 4])
        {
          memmove(v12 + 4, v3 + 4, 16 * v16);
        }

        v3[2] = 0;
      }

      i = (v14 + 16 * v16);
      v2 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - (v15 >> 1);

      v3 = v12;
    }

    v10 = __OFSUB__(v2--, 1);
    if (v10)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    *i = v5;
    i[1] = v6;
  }

  v18 = v3[3];
  if (v18 < 2)
  {
    return;
  }

  v19 = v18 >> 1;
  v10 = __OFSUB__(v19, v2);
  v20 = v19 - v2;
  if (!v10)
  {
    v3[2] = v20;
    return;
  }

LABEL_25:
  __break(1u);
}

void sub_1ABE7AD14()
{
  sub_1ABA7E2A8();
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  for (i = (MEMORY[0x1E69E7CC0] + 32); ; ++i)
  {
    v0 = sub_1ABEC4C94(v0, v1);
    if (v1)
    {
      v17 = v3[3];
      if (v17 >= 2)
      {
        v18 = v17 >> 1;
        v9 = __OFSUB__(v18, v2);
        v19 = v18 - v2;
        if (v9)
        {
          goto LABEL_25;
        }

        v3[2] = v19;
      }

      sub_1ABA7BC1C();
      return;
    }

    v5 = v0;
    if (!v2)
    {
      sub_1ABAA206C();
      if (v6)
      {
        goto LABEL_24;
      }

      sub_1ABAB1238();
      if (v6 ^ v9 | v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = v7;
      }

      sub_1ABAD219C(&qword_1EB4D1378, &qword_1ABF33500);
      v11 = swift_allocObject();
      v12 = (j__malloc_size(v11) - 32) / 8;
      v11[2] = v10;
      v11[3] = 2 * v12;
      v13 = (v11 + 4);
      v14 = v3[3];
      v15 = v14 >> 1;
      if (v3[2])
      {
        if (v11 != v3 || v13 >= &v3[v15 + 4])
        {
          memmove(v11 + 4, v3 + 4, 8 * v15);
        }

        v3[2] = 0;
      }

      i = (v13 + 8 * v15);
      v2 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - (v14 >> 1);

      v3 = v11;
    }

    v9 = __OFSUB__(v2--, 1);
    if (v9)
    {
      break;
    }

    *i = v5;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1ABE7AE44()
{
  sub_1ABA7E2A8();
  v4 = v3;
  sub_1ABAD219C(&qword_1EB4D3870, &qword_1ABF3DF00);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v24 = sub_1ABAD219C(&qword_1EB4D3878, &unk_1ABF3DF08);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7ED98();
  sub_1ABAB5B48();
  v9 = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0] + v0;
  while (1)
  {
    sub_1ABA7C32C(v4 + 32, &v25);
    v11 = *(v4 + 64);
    sub_1ABA94E50(v4 + 32, *(v4 + 56));
    sub_1ABA90800();
    sub_1ABF24864();
    swift_endAccess();
    if (sub_1ABA7E1E0(v7, 1, v24) == 1)
    {
      sub_1ABAB480C(v7, &qword_1EB4D3870, &qword_1ABF3DF00);
      v20 = v9[3];
      if (v20 >= 2)
      {
        v21 = v20 >> 1;
        v19 = __OFSUB__(v21, v1);
        v22 = v21 - v1;
        if (v19)
        {
          goto LABEL_31;
        }

        v9[2] = v22;
      }

      sub_1ABA7BC1C();
      return;
    }

    sub_1ABB65814(v7, v2);
    if (!v1)
    {
      sub_1ABAA206C();
      if (v12)
      {
        goto LABEL_28;
      }

      sub_1ABAB1238();
      v13 = sub_1ABAD219C(&qword_1EB4DB670, &unk_1ABF6F330);
      v14 = sub_1ABAB2BE0(v13);
      v15 = j__malloc_size(v14);
      if (!v11)
      {
        goto LABEL_29;
      }

      if (v15 - v0 == 0x8000000000000000 && v11 == -1)
      {
        goto LABEL_30;
      }

      sub_1ABAB5DEC(v15 - v0);
      if (v17)
      {
        if (v14 < v9 || v10 >= v9 + v0 + v11)
        {
          sub_1ABA8B97C();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v14 != v9)
        {
          sub_1ABA8B97C();
          swift_arrayInitWithTakeBackToFront();
        }

        v9[2] = 0;
      }

      sub_1ABA8B164();
    }

    v19 = __OFSUB__(v1--, 1);
    if (v19)
    {
      break;
    }

    sub_1ABB65814(v2, v10);
    sub_1ABA8C630();
  }

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

void sub_1ABE7B094()
{
  sub_1ABA7E2A8();
  v3 = v2;
  sub_1ABAD219C(&qword_1EB4D3868, &qword_1ABF3DEF8);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - v5;
  v26 = type metadata accessor for VisualUnderstandingService.MappingChange(0);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7BC58();
  v10 = v9 - v8;
  sub_1ABAB5B48();
  v11 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0] + v0;
  while (1)
  {
    sub_1ABA7C32C(v3 + 32, &v27);
    v13 = *(v3 + 64);
    sub_1ABA94E50(v3 + 32, *(v3 + 56));
    sub_1ABA90800();
    sub_1ABF24864();
    swift_endAccess();
    if (sub_1ABA7E1E0(v6, 1, v26) == 1)
    {
      sub_1ABAB480C(v6, &qword_1EB4D3868, &qword_1ABF3DEF8);
      v22 = v11[3];
      if (v22 >= 2)
      {
        v23 = v22 >> 1;
        v21 = __OFSUB__(v23, v1);
        v24 = v23 - v1;
        if (v21)
        {
          goto LABEL_31;
        }

        v11[2] = v24;
      }

      sub_1ABA7BC1C();
      return;
    }

    sub_1ABE7C724(v6, v10);
    if (!v1)
    {
      sub_1ABAA206C();
      if (v14)
      {
        goto LABEL_28;
      }

      sub_1ABAB1238();
      v15 = sub_1ABAD219C(&qword_1EB4DB668, &unk_1ABF6F320);
      v16 = sub_1ABAB2BE0(v15);
      v17 = j__malloc_size(v16);
      if (!v13)
      {
        goto LABEL_29;
      }

      if (v17 - v0 == 0x8000000000000000 && v13 == -1)
      {
        goto LABEL_30;
      }

      sub_1ABAB5DEC(v17 - v0);
      if (v19)
      {
        if (v16 < v11 || v12 >= v11 + v0 + v13)
        {
          sub_1ABA8B97C();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v16 != v11)
        {
          sub_1ABA8B97C();
          swift_arrayInitWithTakeBackToFront();
        }

        v11[2] = 0;
      }

      sub_1ABA8B164();
    }

    v21 = __OFSUB__(v1--, 1);
    if (v21)
    {
      break;
    }

    sub_1ABE7C724(v10, v12);
    sub_1ABA8C630();
  }

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

void sub_1ABE7B2E0()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v2 = type metadata accessor for AnswerRenderIterator(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BC58();
  v6 = v5 - v4;
  sub_1ABE7D7B0(v1, v5 - v4, type metadata accessor for AnswerRenderIterator);
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = v2[6];
  v10 = (MEMORY[0x1E69E7CC0] + 32);
  sub_1ABAA036C(32);
  v32 = v2;
  while (1)
  {
    v11 = *(*(v6 + v9) + 16);
    if (!v11)
    {
LABEL_32:
      sub_1ABE7D80C(v6, type metadata accessor for AnswerRenderIterator);
      v29 = v8[3];
      if (v29 >= 2)
      {
        v30 = v29 >> 1;
        v21 = __OFSUB__(v30, v7);
        v31 = v30 - v7;
        if (v21)
        {
          goto LABEL_40;
        }

        v8[2] = v31;
      }

      sub_1ABA7BC1C();
      return;
    }

    v12 = v6 + v2[8];
    if (*(v12 + 8))
    {
      v13 = 0;
      *v12 = 0;
      *(v12 + 8) = 0;
LABEL_11:
      sub_1ABE44B9C();
      goto LABEL_12;
    }

    v14 = *v12;
    if (*v12 >= v11 - 1)
    {
      goto LABEL_32;
    }

    *(v12 + 8) = 0;
    v13 = v14 + 1;
    *v12 = v14 + 1;
    if (v14 == -1)
    {
      v13 = 0;
      goto LABEL_11;
    }

    v15 = *(v6 + v2[7]);
    if (v15 == -1 || v15 && !(v13 % v15))
    {
      goto LABEL_11;
    }

LABEL_12:
    if (v13 < 0)
    {
      break;
    }

    v16 = *(v6 + v9);
    if (v13 >= *(v16 + 16))
    {
      goto LABEL_37;
    }

    memcpy(v33, (v16 + 112 * v13 + 32), sizeof(v33));
    if (v7)
    {
      sub_1ABA8AFC4();
      v17 = v8;
    }

    else
    {
      sub_1ABAA206C();
      if (v18)
      {
        goto LABEL_39;
      }

      sub_1ABAB1238();
      if (v18 ^ v21 | v20)
      {
        v22 = 1;
      }

      else
      {
        v22 = v19;
      }

      sub_1ABAD219C(&qword_1EB4D17D0, &qword_1ABF33960);
      v17 = swift_allocObject();
      v23 = (j__malloc_size(v17) - 32) / 112;
      v17[2] = v22;
      v17[3] = 2 * v23;
      v24 = v8[3] >> 1;
      v10 = &v17[14 * v24 + 4];
      v7 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - v24;
      if (v8[2])
      {
        v25 = v17 < v8 || v17 + 4 >= &v8[14 * v24 + 4];
        if (!v25 && v17 == v8)
        {
          sub_1ABA8AFC4();
        }

        else
        {
          sub_1ABA8AFC4();
          v26 = sub_1ABA90800();
          memmove(v26, v27, v28);
        }

        v8[2] = 0;

        v2 = v32;
      }

      else
      {
        sub_1ABA8AFC4();
      }
    }

    v21 = __OFSUB__(v7--, 1);
    if (v21)
    {
      goto LABEL_38;
    }

    memcpy(v10, v33, 0x70uLL);
    v10 += 112;
    v8 = v17;
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
}

void sub_1ABE7B598(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1 + 32;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = (MEMORY[0x1E69E7CC0] + 32);
  while (1)
  {
    while (v3)
    {
      v9 = *(v3 + 16);
      if (v2 == v9)
      {
        break;
      }

      if (v2 >= v9)
      {
        goto LABEL_31;
      }

      v12 = (v3 + 40 * v2);
      v13 = v12[5];
      v14 = v12[7];
      v29 = v12[6];
      v30 = v12[4];
      v28 = v12[8];
      if (v4)
      {

        v15 = v7;
      }

      else
      {
        sub_1ABAA206C();
        if (v16)
        {
          goto LABEL_34;
        }

        sub_1ABAB1238();
        if (v16 ^ v19 | v18)
        {
          v20 = 1;
        }

        else
        {
          v20 = v17;
        }

        sub_1ABAD219C(&qword_1EB4D19C8, &qword_1ABF33B58);
        v15 = swift_allocObject();
        v21 = (j__malloc_size(v15) - 32) / 40;
        v15[2] = v20;
        v15[3] = 2 * v21;
        v22 = v15 + 4;
        v23 = v7[3] >> 1;
        v8 = &v15[5 * v23 + 4];
        v4 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;
        if (v7[2])
        {
          if (v15 != v7 || v22 >= &v7[5 * v23 + 4])
          {
            memmove(v22, v7 + 4, 40 * v23);
          }

          v7[2] = 0;
        }

        else
        {
        }
      }

      v19 = __OFSUB__(v4--, 1);
      if (v19)
      {
        goto LABEL_32;
      }

      ++v2;
      *v8 = v30;
      v8[1] = v13;
      v8[2] = v29;
      v8[3] = v14;
      v8[4] = v28;
      v8 += 5;
      v7 = v15;
    }

    v10 = *(a1 + 16);
    if (v5 == v10)
    {
      break;
    }

    if (v5 >= v10)
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v11 = *(v6 + 8 * v5);

    v2 = 0;
    v3 = v11;
    ++v5;
  }

  v25 = v7[3];
  if (v25 < 2)
  {
    return;
  }

  v26 = v25 >> 1;
  v19 = __OFSUB__(v26, v4);
  v27 = v26 - v4;
  if (!v19)
  {
    v7[2] = v27;
    return;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_1ABE7B7A4()
{
  result = qword_1EB4DB4C8;
  if (!qword_1EB4DB4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB4C8);
  }

  return result;
}

unint64_t sub_1ABE7B7FC()
{
  result = qword_1EB4DB4D0;
  if (!qword_1EB4DB4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB4D0);
  }

  return result;
}

unint64_t sub_1ABE7B854()
{
  result = qword_1ED86DB18;
  if (!qword_1ED86DB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86DB18);
  }

  return result;
}

uint64_t sub_1ABE7B99C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1ABE7B9DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for KnosisInternalFact.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1ABE7BB1C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1ABE7BB5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1ABE7BBD4()
{
  result = qword_1EB4DB4E8;
  if (!qword_1EB4DB4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB4E8);
  }

  return result;
}

unint64_t sub_1ABE7BC2C()
{
  result = qword_1EB4DB4F0;
  if (!qword_1EB4DB4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB4F0);
  }

  return result;
}

unint64_t sub_1ABE7BC84()
{
  result = qword_1EB4DB4F8;
  if (!qword_1EB4DB4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB4F8);
  }

  return result;
}

unint64_t sub_1ABE7BCDC()
{
  result = qword_1EB4DB500;
  if (!qword_1EB4DB500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB500);
  }

  return result;
}

unint64_t sub_1ABE7BD30()
{
  result = qword_1ED86BA30;
  if (!qword_1ED86BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86BA30);
  }

  return result;
}

unint64_t sub_1ABE7BD84()
{
  result = qword_1ED86B9E8;
  if (!qword_1ED86B9E8)
  {
    sub_1ABAE2850(&qword_1EB4DB510, &unk_1ABF6F230);
    sub_1ABE7BE40(&unk_1ED86B9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B9E8);
  }

  return result;
}

unint64_t sub_1ABE7BE40(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    v4 = v3;
    sub_1ABAE2850(&qword_1EB4D8070, &qword_1ABF58E28);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1ABE7BEB4()
{
  result = qword_1ED86DF38;
  if (!qword_1ED86DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86DF38);
  }

  return result;
}

unint64_t sub_1ABE7BF08()
{
  result = qword_1EB4DB520;
  if (!qword_1EB4DB520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB520);
  }

  return result;
}

unint64_t sub_1ABE7BF5C()
{
  result = qword_1EB4DB530;
  if (!qword_1EB4DB530)
  {
    sub_1ABAE2850(&qword_1EB4DB528, &unk_1ABF6F258);
    sub_1ABE7C628(&unk_1EB4DB538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB530);
  }

  return result;
}

unint64_t sub_1ABE7C018()
{
  result = qword_1EB4DB548;
  if (!qword_1EB4DB548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB548);
  }

  return result;
}

unint64_t sub_1ABE7C06C()
{
  result = qword_1EB4DB558;
  if (!qword_1EB4DB558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB558);
  }

  return result;
}

unint64_t sub_1ABE7C0C0()
{
  result = qword_1EB4DB560;
  if (!qword_1EB4DB560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB560);
  }

  return result;
}

unint64_t sub_1ABE7C114()
{
  result = qword_1EB4DB590;
  if (!qword_1EB4DB590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB590);
  }

  return result;
}

unint64_t sub_1ABE7C168()
{
  result = qword_1EB4DB598;
  if (!qword_1EB4DB598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB598);
  }

  return result;
}

unint64_t sub_1ABE7C1BC()
{
  result = qword_1EB4DB5A0;
  if (!qword_1EB4DB5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB5A0);
  }

  return result;
}

unint64_t sub_1ABE7C210()
{
  result = qword_1EB4DB5A8;
  if (!qword_1EB4DB5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB5A8);
  }

  return result;
}

unint64_t sub_1ABE7C264()
{
  result = qword_1EB4DB5B0;
  if (!qword_1EB4DB5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB5B0);
  }

  return result;
}

unint64_t sub_1ABE7C2B8()
{
  result = qword_1ED86DF50;
  if (!qword_1ED86DF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86DF50);
  }

  return result;
}

unint64_t sub_1ABE7C30C()
{
  result = qword_1ED86D288;
  if (!qword_1ED86D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D288);
  }

  return result;
}

unint64_t sub_1ABE7C360()
{
  result = qword_1EB4DB5F0;
  if (!qword_1EB4DB5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB5F0);
  }

  return result;
}

unint64_t sub_1ABE7C3B4()
{
  result = qword_1ED86BB80;
  if (!qword_1ED86BB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86BB80);
  }

  return result;
}

unint64_t sub_1ABE7C408()
{
  result = qword_1EB4DB610;
  if (!qword_1EB4DB610)
  {
    sub_1ABAE2850(&qword_1EB4DB510, &unk_1ABF6F230);
    sub_1ABE7BE40(&unk_1EB4DB618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB610);
  }

  return result;
}

unint64_t sub_1ABE7C4C4()
{
  result = qword_1EB4DB620;
  if (!qword_1EB4DB620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB620);
  }

  return result;
}

unint64_t sub_1ABE7C518()
{
  result = qword_1EB4DB638;
  if (!qword_1EB4DB638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB638);
  }

  return result;
}

unint64_t sub_1ABE7C56C()
{
  result = qword_1EB4DB648;
  if (!qword_1EB4DB648)
  {
    sub_1ABAE2850(&qword_1EB4DB528, &unk_1ABF6F258);
    sub_1ABE7C628(&unk_1EB4DB650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB648);
  }

  return result;
}

unint64_t sub_1ABE7C628(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    v3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1ABE7C668()
{
  result = qword_1EB4DB658;
  if (!qword_1EB4DB658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB658);
  }

  return result;
}

unint64_t sub_1ABE7C6BC(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D2068, &qword_1ABF41380);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1ABE7C724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualUnderstandingService.MappingChange(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ABE7C788()
{
  result = qword_1EB4DB678;
  if (!qword_1EB4DB678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB678);
  }

  return result;
}

unint64_t sub_1ABE7C7DC()
{
  result = qword_1EB4DB680;
  if (!qword_1EB4DB680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB680);
  }

  return result;
}

_BYTE *sub_1ABE7C84C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result = sub_1ABA89DD0(result, v6);
        break;
      case 2:
        result = sub_1ABA89F18(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1ABA89A74(result, v6);
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
          result = sub_1ABA8BE70(result, a2 + 8);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABE7C918(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result = sub_1ABA89DD0(result, v6);
        break;
      case 2:
        result = sub_1ABA89F18(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1ABA89A74(result, v6);
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
          result = sub_1ABA8BE70(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABE7CA24(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1ABA89DD0(result, v6);
        break;
      case 2:
        result = sub_1ABA89F18(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1ABA89A74(result, v6);
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
          result = sub_1ABA8BE70(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QueryNode.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABE7CBEC()
{
  result = qword_1EB4DB688;
  if (!qword_1EB4DB688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB688);
  }

  return result;
}

unint64_t sub_1ABE7CC44()
{
  result = qword_1EB4DB690;
  if (!qword_1EB4DB690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB690);
  }

  return result;
}

unint64_t sub_1ABE7CC9C()
{
  result = qword_1EB4DB698;
  if (!qword_1EB4DB698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB698);
  }

  return result;
}

unint64_t sub_1ABE7CCF4()
{
  result = qword_1EB4DB6A0;
  if (!qword_1EB4DB6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB6A0);
  }

  return result;
}

unint64_t sub_1ABE7CD4C()
{
  result = qword_1EB4DB6A8;
  if (!qword_1EB4DB6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB6A8);
  }

  return result;
}

unint64_t sub_1ABE7CDA4()
{
  result = qword_1EB4DB6B0;
  if (!qword_1EB4DB6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB6B0);
  }

  return result;
}

unint64_t sub_1ABE7CDFC()
{
  result = qword_1ED86BB70;
  if (!qword_1ED86BB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86BB70);
  }

  return result;
}

unint64_t sub_1ABE7CE54()
{
  result = qword_1ED86BB78;
  if (!qword_1ED86BB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86BB78);
  }

  return result;
}

unint64_t sub_1ABE7CEAC()
{
  result = qword_1ED86DF40;
  if (!qword_1ED86DF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86DF40);
  }

  return result;
}

unint64_t sub_1ABE7CF04()
{
  result = qword_1ED86DF48;
  if (!qword_1ED86DF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86DF48);
  }

  return result;
}

unint64_t sub_1ABE7CF5C()
{
  result = qword_1EB4DB6B8;
  if (!qword_1EB4DB6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB6B8);
  }

  return result;
}

unint64_t sub_1ABE7CFB4()
{
  result = qword_1EB4DB6C0;
  if (!qword_1EB4DB6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB6C0);
  }

  return result;
}

unint64_t sub_1ABE7D00C()
{
  result = qword_1EB4DB6C8;
  if (!qword_1EB4DB6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB6C8);
  }

  return result;
}

unint64_t sub_1ABE7D064()
{
  result = qword_1EB4DB6D0;
  if (!qword_1EB4DB6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB6D0);
  }

  return result;
}

unint64_t sub_1ABE7D0BC()
{
  result = qword_1EB4DB6D8;
  if (!qword_1EB4DB6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB6D8);
  }

  return result;
}

unint64_t sub_1ABE7D114()
{
  result = qword_1EB4DB6E0;
  if (!qword_1EB4DB6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB6E0);
  }

  return result;
}

unint64_t sub_1ABE7D16C()
{
  result = qword_1EB4DB6E8;
  if (!qword_1EB4DB6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB6E8);
  }

  return result;
}

unint64_t sub_1ABE7D1C4()
{
  result = qword_1EB4DB6F0;
  if (!qword_1EB4DB6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB6F0);
  }

  return result;
}

unint64_t sub_1ABE7D21C()
{
  result = qword_1EB4DB6F8;
  if (!qword_1EB4DB6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB6F8);
  }

  return result;
}

unint64_t sub_1ABE7D274()
{
  result = qword_1EB4DB700;
  if (!qword_1EB4DB700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB700);
  }

  return result;
}

unint64_t sub_1ABE7D2CC()
{
  result = qword_1EB4DB708;
  if (!qword_1EB4DB708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB708);
  }

  return result;
}

unint64_t sub_1ABE7D324()
{
  result = qword_1EB4DB710;
  if (!qword_1EB4DB710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB710);
  }

  return result;
}

unint64_t sub_1ABE7D37C()
{
  result = qword_1EB4DB718;
  if (!qword_1EB4DB718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB718);
  }

  return result;
}

unint64_t sub_1ABE7D3D4()
{
  result = qword_1EB4DB720;
  if (!qword_1EB4DB720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB720);
  }

  return result;
}

unint64_t sub_1ABE7D42C()
{
  result = qword_1ED86BA20;
  if (!qword_1ED86BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86BA20);
  }

  return result;
}

unint64_t sub_1ABE7D484()
{
  result = qword_1ED86BA28;
  if (!qword_1ED86BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86BA28);
  }

  return result;
}

unint64_t sub_1ABE7D4D8()
{
  result = qword_1EB4DB730;
  if (!qword_1EB4DB730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB730);
  }

  return result;
}

unint64_t sub_1ABE7D52C()
{
  result = qword_1EB4DB748;
  if (!qword_1EB4DB748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB748);
  }

  return result;
}

unint64_t sub_1ABE7D580(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    v4 = v3;
    sub_1ABAE2850(&qword_1EB4DB738, &qword_1ABF6FD28);
    v4();
    result = sub_1ABA9FEF4();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1ABE7D5F0()
{
  result = qword_1EB4DB760;
  if (!qword_1EB4DB760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB760);
  }

  return result;
}

unint64_t sub_1ABE7D644()
{
  result = qword_1ED86D6F0[0];
  if (!qword_1ED86D6F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED86D6F0);
  }

  return result;
}

unint64_t sub_1ABE7D698(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    v4 = v3;
    sub_1ABAE2850(&qword_1EB4DB770, &unk_1ABF6FD40);
    v4();
    result = sub_1ABA9FEF4();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1ABE7D708()
{
  result = qword_1ED86BB68;
  if (!qword_1ED86BB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86BB68);
  }

  return result;
}

unint64_t sub_1ABE7D75C()
{
  result = qword_1EB4DB788;
  if (!qword_1EB4DB788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB788);
  }

  return result;
}

uint64_t sub_1ABE7D7B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1ABA7BBB0();
  v4 = sub_1ABA7D000();
  v5(v4);
  return a2;
}

uint64_t sub_1ABE7D80C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1ABA7BBB0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1ABE7D894()
{
  result = qword_1EB4DB790;
  if (!qword_1EB4DB790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB790);
  }

  return result;
}

unint64_t sub_1ABE7D8EC()
{
  result = qword_1EB4DB798;
  if (!qword_1EB4DB798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB798);
  }

  return result;
}

unint64_t sub_1ABE7D944()
{
  result = qword_1ED86D6E0;
  if (!qword_1ED86D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D6E0);
  }

  return result;
}

unint64_t sub_1ABE7D99C()
{
  result = qword_1ED86D6E8;
  if (!qword_1ED86D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D6E8);
  }

  return result;
}

unint64_t sub_1ABE7D9F4()
{
  result = qword_1EB4DB7A0;
  if (!qword_1EB4DB7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB7A0);
  }

  return result;
}

unint64_t sub_1ABE7DA4C()
{
  result = qword_1EB4DB7A8;
  if (!qword_1EB4DB7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB7A8);
  }

  return result;
}

unint64_t sub_1ABE7DAA0()
{
  result = qword_1EB4DB7B8;
  if (!qword_1EB4DB7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB7B8);
  }

  return result;
}

_BYTE *sub_1ABE7DAF4(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABE7DBA4()
{
  result = qword_1EB4DB7C8;
  if (!qword_1EB4DB7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB7C8);
  }

  return result;
}

unint64_t sub_1ABE7DBFC()
{
  result = qword_1EB4DB7D0;
  if (!qword_1EB4DB7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB7D0);
  }

  return result;
}

unint64_t sub_1ABE7DC54()
{
  result = qword_1EB4DB7D8;
  if (!qword_1EB4DB7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB7D8);
  }

  return result;
}

uint64_t sub_1ABE7DCE8()
{
}

uint64_t sub_1ABE7DD04()
{
}

uint64_t sub_1ABE7DD4C(uint64_t a1)
{

  result = sub_1ABB800DC(1, a1);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 32);
    v7 = (v5 >> 1) - v4;
    if (v5 >> 1 == v4)
    {
      return swift_unknownObjectRelease();
    }

    if ((v5 >> 1) > v4)
    {
      v8 = (v3 + 8 * v4);
      do
      {
        v9 = *v8++;
        v6 = v6 - v9;
        --v7;
      }

      while (v7);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

__n128 Subentity.id.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t Subentity.entityClass.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

unint64_t sub_1ABE7DE54(uint64_t a1)
{
  result = sub_1ABE7DE7C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABE7DE7C()
{
  result = qword_1EB4CE7A8;
  if (!qword_1EB4CE7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE7A8);
  }

  return result;
}

unint64_t sub_1ABE7DEE4(uint64_t a1)
{
  result = sub_1ABE7DF0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABE7DF0C()
{
  result = qword_1EB4CE7B0;
  if (!qword_1EB4CE7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE7B0);
  }

  return result;
}

uint64_t sub_1ABE7DF60(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1ABE7DFA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *SubentityIdentifier.init(parentId:relationshipId:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if (*result)
  {
    v3 = *a2;
    if (*a2)
    {
      *a3 = *result;
      a3[1] = v3;
      return result;
    }

    sub_1ABB6DB64();
    swift_allocError();
  }

  else
  {
    sub_1ABB6DA08();
    swift_allocError();
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 512;
  }

  return swift_willThrow();
}

uint64_t sub_1ABE7E0E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449746E65726170 && a2 == 0xE800000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6974616C6572 && a2 == 0xEE00644970696873)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABE7E1B4(char a1)
{
  if (a1)
  {
    return 0x6E6F6974616C6572;
  }

  else
  {
    return 0x6449746E65726170;
  }
}

uint64_t sub_1ABE7E200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE7E0E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE7E228(uint64_t a1)
{
  v2 = sub_1ABE7E408();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE7E264(uint64_t a1)
{
  v2 = sub_1ABE7E408();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SubentityIdentifier.encode(to:)(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4DB7E0, &qword_1ABF70210);
  sub_1ABA7BB64();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v10 = *v1;
  v12 = v1[1];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE7E408();
  sub_1ABF252E4();
  v14 = v10;
  v13 = 0;
  sub_1ABAE8BC8();
  sub_1ABA7E078();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_1ABC3C8F0();
    sub_1ABA7E078();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1ABE7E408()
{
  result = qword_1EB4DB7E8;
  if (!qword_1EB4DB7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB7E8);
  }

  return result;
}

uint64_t SubentityIdentifier.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1AC5AA8D0](*v0);
  return MEMORY[0x1AC5AA8D0](v1);
}

uint64_t SubentityIdentifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1ABF25234();
  MEMORY[0x1AC5AA8D0](v1);
  MEMORY[0x1AC5AA8D0](v2);
  return sub_1ABF25294();
}

uint64_t SubentityIdentifier.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4DB7F0, &qword_1ABF70218);
  sub_1ABA7BB64();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE7E408();
  sub_1ABF252C4();
  if (!v2)
  {
    v23 = 0;
    v11 = sub_1ABAE8B74();
    sub_1ABA8FBE8(&type metadata for EntityIdentifier, v12, v13, v14, v11);
    v15 = v24;
    v23 = 1;
    v16 = sub_1ABC3CD80();
    sub_1ABA8FBE8(&type metadata for RelationshipIdentifier, v17, v18, v19, v16);
    (*(v7 + 8))(v10, v5);
    v20 = v24;
    *a2 = v15;
    a2[1] = v20;
  }

  return sub_1ABA84B54(a1);
}

uint64_t sub_1ABE7E694(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1ABF25234();
  MEMORY[0x1AC5AA8D0](v2);
  MEMORY[0x1AC5AA8D0](v3);
  return sub_1ABF25294();
}

unint64_t sub_1ABE7E6F0()
{
  result = qword_1EB4DB7F8;
  if (!qword_1EB4DB7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB7F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SubentityIdentifier.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABE7E868()
{
  result = qword_1EB4DB800;
  if (!qword_1EB4DB800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB800);
  }

  return result;
}

unint64_t sub_1ABE7E8C0()
{
  result = qword_1EB4DB808;
  if (!qword_1EB4DB808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB808);
  }

  return result;
}

unint64_t sub_1ABE7E918()
{
  result = qword_1EB4DB810;
  if (!qword_1EB4DB810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB810);
  }

  return result;
}

uint64_t Subfact.Object.asString.getter()
{
  if (v0[2])
  {
    return 0;
  }

  v1 = *v0;

  return v1;
}

void Subfact.Object.asEntityIdentifier.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2 == 1)
  {
    v3 = *v1;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  *(a1 + 8) = v2 ^ 1;
}

uint64_t sub_1ABE7E9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
}

void *sub_1ABE7E9FC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t Subfact.predicate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t Subfact.object.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1ABD5A830(v2, v3, v4);
}

uint64_t sub_1ABE7EAA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1ABE7EAE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1ABE7EB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char a13)
{
  sub_1ABA97BA0();
  sub_1ABA93A50();
  sub_1ABA7E09C(&qword_1EB4DB948, &qword_1EB4DB950, &qword_1ABF70798);
  sub_1ABAA015C();
  if (sub_1ABF22654())
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 256;
  }

  else
  {
    v15 = sub_1ABA8FC10(&qword_1EB4DB958, &qword_1EB4DB950, &qword_1ABF70798);
    sub_1ABAA55A0(v15);
    sub_1ABA7AE6C();
    sub_1ABA90478();
    sub_1ABAA2E4C();

    if (!v13)
    {
      if (a13)
      {
        sub_1ABA7EC08();
        v17 = v16;
        sub_1ABF22664();
        *v14 = a9;
        *(v14 + 8) = a10;
        *(v14 + 16) = a11;
        *(v14 + 24) = v17;
        *(v14 + 25) = 1;
      }

      else
      {
        *v14 = a9;
        *(v14 + 8) = a10;
        *(v14 + 16) = a11;
        *(v14 + 24) = a12 & 1;
        *(v14 + 25) = 0;
      }
    }
  }

  sub_1ABA7E708();
}

uint64_t sub_1ABE7EC84()
{
  sub_1ABA93A50();
  sub_1ABAB47C4(&qword_1EB4DB910, &qword_1EB4DB918, &qword_1ABF70780, MEMORY[0x1E699FF10]);
  sub_1ABAA015C();
  result = sub_1ABF22654();
  if (result)
  {
    *v1 = 0;
    *(v1 + 8) = 1;
  }

  else
  {
    v3 = sub_1ABAB47C4(&unk_1EB4DB920, &qword_1EB4DB918, &qword_1ABF70780, MEMORY[0x1E699FF18]);
    sub_1ABAA55A0(v3);
    sub_1ABA7AE6C();
    sub_1ABA90478();
    sub_1ABAA2E4C();

    if (!v0)
    {
      if (v5)
      {
        sub_1ABA7EC08();
        result = sub_1ABF22664();
        *v1 = v4;
        *(v1 + 8) = 1;
      }

      else
      {
        *v1 = v4;
        *(v1 + 8) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1ABE7EDC8()
{
  if (sub_1ABF22654())
  {
    return 0;
  }

  sub_1ABF22434();
  sub_1ABF22BB4();

  sub_1ABF22EF4();
  sub_1ABAA2E4C();

  if (!v0)
  {
    result = v2;
    if (!v2)
    {
      sub_1ABF22664();
      return 0;
    }
  }

  return result;
}

void sub_1ABE7EED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_1ABA97BA0();
  sub_1ABA93A50();
  sub_1ABA7E09C(&unk_1EB4CF720, &unk_1EB4DB938, &qword_1ABF70790);
  sub_1ABAA015C();
  if (sub_1ABF22654())
  {
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
  }

  else
  {
    v14 = sub_1ABA8FC10(&qword_1EB4CF730, &unk_1EB4DB938, &qword_1ABF70790);
    sub_1ABAA55A0(v14);
    sub_1ABA7AE6C();
    sub_1ABA90478();
    sub_1ABAA2E4C();

    if (v12)
    {
      goto LABEL_8;
    }

    if ((a12 & 1) == 0)
    {
      sub_1ABAA2734();
      *(v13 + 24) = 0;
      goto LABEL_8;
    }

    sub_1ABA7EC08();
    sub_1ABF22664();
    sub_1ABAA2734();
  }

  *(v13 + 24) = 1;
LABEL_8:
  sub_1ABA7E708();
}

uint64_t sub_1ABE7EFDC@<X0>(char *a1@<X8>)
{
  sub_1ABAB47C4(&qword_1EB4DB8B0, &qword_1EB4DB8B8, &qword_1ABF70768, MEMORY[0x1E699FDF0]);
  result = sub_1ABF22654();
  if (result)
  {
    *(a1 + 5) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
  }

  else
  {
    sub_1ABAB47C4(&qword_1EB4DB8C0, &qword_1EB4DB8B8, &qword_1ABF70768, MEMORY[0x1E699FDE8]);
    sub_1ABF22434();

    sub_1ABF22EF4();
    if (v1)
    {
    }

    else
    {

      v9 = __src[0];
      memcpy(__dst, &__src[1] + 8, sizeof(__dst));
      if (*&__src[1])
      {
        v4 = __src;
        v5 = a1;
        v6 = 112;
      }

      else
      {
        memcpy(v7, __src, sizeof(v7));
        sub_1ABAB480C(v7, &qword_1EB4DB100, &qword_1ABF70760);
        sub_1ABF22664();
        *a1 = v9;
        *(a1 + 2) = 0;
        v5 = a1 + 24;
        v4 = __dst;
        v6 = 88;
      }

      return memcpy(v5, v4, v6);
    }
  }

  return result;
}

void sub_1ABE7F1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_1ABA97BA0();
  sub_1ABA93A50();
  sub_1ABA7E09C(&unk_1EB4CF738, &qword_1EB4DB930, &qword_1ABF70788);
  sub_1ABAA015C();
  if (sub_1ABF22654())
  {
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
  }

  else
  {
    v14 = sub_1ABA8FC10(&qword_1EB4CF748, &qword_1EB4DB930, &qword_1ABF70788);
    sub_1ABAA55A0(v14);
    sub_1ABA7AE6C();
    sub_1ABA90478();
    sub_1ABAA2E4C();

    if (v12)
    {
      goto LABEL_8;
    }

    if ((a12 & 1) == 0)
    {
      sub_1ABAA2734();
      *(v13 + 24) = 0;
      goto LABEL_8;
    }

    sub_1ABA7EC08();
    sub_1ABF22664();
    sub_1ABAA2734();
  }

  *(v13 + 24) = 1;
LABEL_8:
  sub_1ABA7E708();
}

uint64_t sub_1ABE7F2F4@<X0>(void *a1@<X8>)
{
  sub_1ABA7E09C(&qword_1EB4DB8F0, &qword_1EB4DB8F8, &unk_1ABF70770);
  result = sub_1ABF22654();
  if (result)
  {
    a1[14] = 0;
    *(a1 + 5) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
  }

  else
  {
    sub_1ABA8FC10(&unk_1EB4DB900, &qword_1EB4DB8F8, &unk_1ABF70770);
    sub_1ABF22434();

    sub_1ABF22EF4();
    if (v1)
    {
    }

    else
    {

      v9 = *__src;
      memcpy(__dst, &__src[24], sizeof(__dst));
      if (*&__src[16])
      {
        v4 = __src;
        v5 = a1;
        v6 = 120;
      }

      else
      {
        memcpy(v7, __src, sizeof(v7));
        sub_1ABAB480C(v7, &qword_1EB4DB410, &qword_1ABF6E388);
        sub_1ABF22664();
        *a1 = v9;
        a1[2] = 0;
        v5 = a1 + 3;
        v4 = __dst;
        v6 = 96;
      }

      return memcpy(v5, v4, v6);
    }
  }

  return result;
}

uint64_t sub_1ABE7F504(uint64_t a1)
{
  *(v1 + 24) = 0u;
  v3 = (v1 + 24);
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 16) = a1;

  sub_1ABE7EFDC(__src);

  if (v2)
  {
  }

  else
  {
    swift_beginAccess();
    memcpy(__dst, v3, sizeof(__dst));
    memcpy(v3, __src, 0x70uLL);
    sub_1ABAB480C(__dst, &qword_1EB4DB100, &qword_1ABF70760);
  }

  return v1;
}

void *sub_1ABE7F5E4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  memcpy(__dst, (v1 + 24), sizeof(__dst));
  sub_1ABB3E5B4(__dst, v5, &qword_1EB4DB100, &qword_1ABF70760);
  sub_1ABE7EFDC(__src);
  if (v2)
  {
    return sub_1ABAB480C(__dst, &qword_1EB4DB100, &qword_1ABF70760);
  }

  memcpy(v5, (v1 + 24), sizeof(v5));
  memcpy((v1 + 24), __src, 0x70uLL);
  sub_1ABAB480C(v5, &qword_1EB4DB100, &qword_1ABF70760);
  return memcpy(a1, __dst, 0x70uLL);
}

void *SubgraphView.__allocating_init(accessAssertion:database:tableName:batchSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  return result;
}

void *SubgraphView.init(accessAssertion:database:tableName:batchSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return v6;
}

uint64_t SubgraphView.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t SubgraphView.__deallocating_deinit()
{
  SubgraphView.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABE7F868(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(void *, uint64_t (*)(), __n128), uint64_t a5)
{
  result = a2(a1);
  if (!v5)
  {
    v9 = result;
    sub_1ABAD219C(&unk_1EB4DB8A0, &qword_1ABF500A8);
    swift_allocObject();
    v10 = sub_1ABE7F504(v9);
    v17[22] = a5;
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    v12 = (v11 + 16);
    *(v11 + 24) = 1;
    swift_beginAccess();
    v13 = swift_beginAccess();
    v14 = *(v10 + 24);
    if (*(v10 + 40))
    {
LABEL_3:
      if (*(v11 + 24))
      {
        *(v11 + 16) = v14;
        *(v11 + 24) = 0;
      }

      else
      {
        v14 = *v12;
      }

      v17[0] = v14;
      v15 = MEMORY[0x1EEE9AC00](v13);
      v13 = a4(v17, sub_1ABE83854, v15);
      if (v13)
      {
        while (*(v10 + 40))
        {
          v14 = *(v10 + 24);
          if ((*(v11 + 24) & 1) != 0 || v14 != *v12)
          {
            *(v11 + 16) = v14;
            *(v11 + 24) = 0;
            goto LABEL_3;
          }

          sub_1ABE7F5E4(v17);
          memcpy(v16, v17, sizeof(v16));
          v13 = sub_1ABAB480C(v16, &qword_1EB4DB100, &qword_1ABF70760);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1ABE7FA9C(uint64_t (*a1)(_OWORD *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  swift_beginAccess();
  do
  {
    result = memcpy(__dst, (a3 + 24), sizeof(__dst));
    if (!*&__dst[1])
    {
      break;
    }

    if (*(a4 + 24))
    {
      break;
    }

    if (*&__dst[0] != *(a4 + 16))
    {
      break;
    }

    __src[0] = __dst[0];
    *&__src[1] = *&__dst[1];
    memcpy(&__src[1] + 8, (a3 + 48), 0x58uLL);
    memcpy(v13, (a3 + 24), sizeof(v13));
    sub_1ABB345D8(v13, v11);
    v10 = a1(__src);
    result = sub_1ABAB480C(__dst, &qword_1EB4DB100, &qword_1ABF70760);
    if (v5)
    {
      break;
    }

    sub_1ABE7F5E4(__src);
    v5 = 0;
    memcpy(v11, __src, sizeof(v11));
    result = sub_1ABAB480C(v11, &qword_1EB4DB100, &qword_1ABF70760);
  }

  while ((v10 & 1) != 0);
  return result;
}

uint64_t sub_1ABE7FCC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t *), uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t (*)(uint64_t a1, uint64_t a2), uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a6;
  v28 = a5;
  v32 = a4;
  v26 = a2;
  v12 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v25 - v17;
  (*(v12 + 16))(v14, v26, a7, v16);
  sub_1ABF23F04();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    sub_1ABF24864();
    if (v31)
    {
      break;
    }

    v19 = v30;
    v20 = a3(a1, &v30);
    if (v8)
    {
      break;
    }

    v21 = v20;
    sub_1ABAD219C(&unk_1EB4DB8A0, &qword_1ABF500A8);
    swift_initStackObject();
    v22 = sub_1ABE7F504(v21);
    swift_beginAccess();
    if (*(v22 + 40))
    {
      v30 = v19;
      v23 = v28(&v30, sub_1ABC712A0, v22);

      if ((v23 & 1) == 0)
      {
        return (*(v27 + 8))(v18, AssociatedTypeWitness);
      }
    }

    else
    {
    }
  }

  return (*(v27 + 8))(v18, AssociatedTypeWitness);
}

uint64_t sub_1ABE7FFDC()
{
  sub_1ABA7C84C();
  do
  {
    result = sub_1ABE7F5E4(__src);
    if (v0)
    {
      break;
    }

    result = memcpy(__dst, __src, sizeof(__dst));
    if (!__dst[2])
    {
      break;
    }

    v4 = __src[0];
    v5 = __dst[2];
    memcpy(v6, &__src[1] + 8, sizeof(v6));
    v3 = v1(&v4);
    result = sub_1ABAB480C(__dst, &qword_1EB4DB100, &qword_1ABF70760);
  }

  while ((v3 & 1) != 0);
  return result;
}

uint64_t sub_1ABE800C0(uint64_t a1, void (*a2)(uint64_t (*)(), void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = 1;
  v10 = v9 + 16;
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = a4;
  v11[4] = a5;

  a2(sub_1ABE83E28, v11);
  if (!v5)
  {
    swift_beginAccess();
    v10 = *(v9 + 16);
  }

  return v10 & 1;
}

uint64_t sub_1ABE801D0(void *__src, uint64_t a2, uint64_t (*a3)(_BYTE *))
{
  memcpy(v8, __src, sizeof(v8));
  v6 = a3(v8);
  if (!v3)
  {
    swift_beginAccess();
    *(a2 + 16) = v6 & 1;
  }

  return v6 & 1;
}

uint64_t sub_1ABE8025C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v18 - v7;
  v9 = sub_1ABF22424();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABB3E5B4(a1, v8, &qword_1EB4DB820, &qword_1ABF500A0);
  if (sub_1ABA7E1E0(v8, 1, v9) == 1)
  {
    sub_1ABAB480C(v8, &qword_1EB4DB820, &qword_1ABF500A0);
    return (*(v10 + 16))(a3, a2, v9);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v14 = MEMORY[0x1E699FE60];
    v19[3] = v9;
    v19[4] = MEMORY[0x1E699FE60];
    v15 = sub_1ABA93DC0(v19);
    v16 = *(v10 + 16);
    v16(v15, v12, v9);
    v18[3] = v9;
    v18[4] = v14;
    v17 = sub_1ABA93DC0(v18);
    v16(v17, a2, v9);
    sub_1ABF22AC4();
    (*(v10 + 8))(v12, v9);
    sub_1ABA84B54(v18);
    return sub_1ABA84B54(v19);
  }
}

uint64_t sub_1ABE80484@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23[1] = a1;
  v24 = a3;
  v26 = a4;
  v4 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v23 - v5;
  v7 = sub_1ABF22424();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1ABAD219C(&qword_1EB4DB870, &qword_1ABF70738);
  v11 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v13 = v23 - v12;
  v14 = sub_1ABAD219C(&unk_1EB4DB860, &unk_1ABF70728);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v23 - v16;

  sub_1ABF22D04();
  sub_1ABB3E5B4(v24, v6, &qword_1EB4DB820, &qword_1ABF500A0);
  if (sub_1ABA7E1E0(v6, 1, v7) == 1)
  {
    sub_1ABAB480C(v6, &qword_1EB4DB820, &qword_1ABF500A0);
    sub_1ABF22C54();
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v27[3] = v7;
    v27[4] = MEMORY[0x1E699FE60];
    v18 = sub_1ABA93DC0(v27);
    (*(v8 + 16))(v18, v10, v7);
    sub_1ABF22CA4();
    (*(v8 + 8))(v10, v7);
    sub_1ABA84B54(v27);
  }

  sub_1ABAD219C(&qword_1EB4D12D0, &unk_1ABF347E0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1ABF34060;
  *(v19 + 56) = &type metadata for ExtendedTripleColumn;
  v20 = sub_1ABC3D460();
  *(v19 + 64) = v20;
  *(v19 + 32) = 0;
  *(v19 + 96) = &type metadata for ExtendedTripleColumn;
  *(v19 + 104) = v20;
  *(v19 + 72) = 2;
  sub_1ABAB47C4(&qword_1EB4DB8D8, &qword_1EB4DB870, &qword_1ABF70738, MEMORY[0x1E699FF68]);
  v21 = v25;
  sub_1ABF22494();

  (*(v11 + 8))(v13, v21);
  return (*(v15 + 8))(v17, v14);
}

void sub_1ABE80870()
{
  sub_1ABA7BCA8();
  v24 = v1;
  v25 = v2;
  v4 = v3;
  v6 = v5;
  v23 = *v0;
  v7 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  v8 = sub_1ABA7BBD0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v22 - v13;
  v15 = *v6;
  v17 = v0[5];
  v16 = v0[6];
  sub_1ABB3E5B4(v4, &v22 - v13, &qword_1EB4DB820, &qword_1ABF500A0);
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = v16;
  sub_1ABE8372C(v14, v20 + v18);
  *(v20 + v19) = v15;
  v21 = v24;
  *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
  v26[2] = v21;
  v26[3] = v25;

  sub_1ABE7F7CC(sub_1ABE83E08, v26, sub_1ABE83D28, v20);

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABE80A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a4;
  v20 = a2;
  v21 = a3;
  v22 = a1;
  v6 = sub_1ABF22424();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_1ABAD219C(&qword_1EB4DB870, &qword_1ABF70738);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  v24[3] = &type metadata for ExtendedTripleColumn;
  v24[4] = sub_1ABC3D2C0();
  LOBYTE(v24[0]) = 0;
  v23[3] = &type metadata for EntityIdentifier;
  v23[4] = sub_1ABB3E45C();
  v23[0] = a5;
  sub_1ABF22AD4();
  sub_1ABAB480C(v23, &unk_1EB4D3C40, &unk_1ABF3FCC0);
  sub_1ABA84B54(v24);
  sub_1ABE8025C(v19, v9, v12);
  (*(v7 + 8))(v9, v6);
  sub_1ABA7B9B4(v12, 0, 1, v6);
  sub_1ABE80484(v20, v12, v16);
  sub_1ABAB480C(v12, &qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABAB47C4(&qword_1EB4DB8C8, &qword_1EB4DB870, &qword_1ABF70738, MEMORY[0x1E699FF60]);
  sub_1ABE83AF4();
  v17 = sub_1ABF22224();
  (*(v14 + 8))(v16, v13);
  return v17;
}

uint64_t SubgraphView.enumerateTriples(for:block:)()
{
  sub_1ABA7C84C();
  v1 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7AB80(v1);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7E358();
  v3 = sub_1ABF22424();
  sub_1ABA82980(v3);
  sub_1ABE80870();
  return sub_1ABAB480C(v0, &qword_1EB4DB820, &qword_1ABF500A0);
}

uint64_t sub_1ABE80DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a4;
  v33 = a6;
  v35 = a2;
  v36 = *v6;
  v37 = a3;
  v9 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  v10 = sub_1ABA7BBD0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v6[6];
  v34 = v6[5];
  (*(v23 + 16))(&v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a5, v20);

  sub_1ABAD219C(&unk_1EB4DB8E0, &unk_1ABF50A20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v24 = v39;
  if (*(v39 + 16) >> 4 > 0x752uLL)
  {

LABEL_5:
    sub_1ABB3E5B4(v35, v15, &qword_1EB4DB820, &qword_1ABF500A0);
    v29 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v34;
    *(v30 + 24) = v22;
    sub_1ABE8372C(v15, v30 + v29);
    v31 = v37;
    *(v30 + ((v14 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v36;
    sub_1ABE7FC08(a1, v31, v38, sub_1ABE83C2C, v30, a5, v33);
  }

  sub_1ABB3E5B4(v35, v18, &qword_1EB4DB820, &qword_1ABF500A0);
  v25 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v26 = (v14 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = v34;
  *(v27 + 24) = v22;
  sub_1ABE8372C(v18, v27 + v25);
  *(v27 + v26) = v24;
  v28 = v37;
  *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v36;
  sub_1ABE7F7CC(v28, v38, sub_1ABE83CD4, v27);
}

uint64_t sub_1ABE810E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a1;
  v21 = a4;
  v22 = a6;
  v23 = a2;
  v24 = a3;
  v7 = sub_1ABF22424();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v20 = sub_1ABAD219C(&qword_1EB4DB870, &qword_1ABF70738);
  v14 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v16 = &v20 - v15;
  v26[6] = a5;
  v26[3] = &type metadata for ExtendedTripleColumn;
  v26[4] = sub_1ABC3D2C0();
  LOBYTE(v26[0]) = 0;
  sub_1ABAD219C(&unk_1EB4DB8E0, &unk_1ABF50A20);
  sub_1ABAB47C4(&qword_1EB4CF810, &unk_1EB4DB8E0, &unk_1ABF50A20, MEMORY[0x1E69E6508]);
  sub_1ABB3E45C();
  sub_1ABF23EE4();
  sub_1ABA84B54(v26);
  sub_1ABE8025C(v21, v10, v13);
  (*(v8 + 8))(v10, v7);
  sub_1ABA7B9B4(v13, 0, 1, v7);
  sub_1ABE80484(v23, v13, v16);
  sub_1ABAB480C(v13, &qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABAB47C4(&qword_1EB4DB8C8, &qword_1EB4DB870, &qword_1ABF70738, MEMORY[0x1E699FF60]);
  sub_1ABE83AF4();
  v17 = v20;
  v18 = sub_1ABF22224();
  (*(v14 + 8))(v16, v17);
  return v18;
}

void sub_1ABE813F0()
{
  sub_1ABA7BCA8();
  v25 = v2;
  v26 = v1;
  v27 = v4;
  v28 = v3;
  v6 = v5;
  v7 = sub_1ABF22424();
  sub_1ABA7BB64();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7AB80(v13);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = sub_1ABAD219C(&qword_1EB4DB870, &qword_1ABF70738);
  sub_1ABA7BB64();
  v19 = v18;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA7E338();
  v21 = *v6;
  v30[3] = &type metadata for ExtendedTripleColumn;
  v30[4] = sub_1ABC3D2C0();
  LOBYTE(v30[0]) = 0;
  v29[3] = &type metadata for EntityIdentifier;
  v29[4] = sub_1ABB3E45C();
  v29[0] = v21;
  sub_1ABF22AD4();
  sub_1ABAB480C(v29, &unk_1EB4D3C40, &unk_1ABF3FCC0);
  sub_1ABA84B54(v30);
  sub_1ABE8025C(v25, v12, v16);
  (*(v9 + 8))(v12, v7);
  sub_1ABA8C6E0();
  sub_1ABA7B9B4(v22, v23, v24, v7);
  sub_1ABE80484(v26, v16, v0);
  sub_1ABAB480C(v16, &qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABAB47C4(&qword_1EB4DB8C8, &qword_1EB4DB870, &qword_1ABF70738, MEMORY[0x1E699FF60]);
  sub_1ABE83AF4();
  sub_1ABF22224();
  (*(v19 + 8))(v0, v17);
  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

uint64_t SubgraphView.enumerateTriples<A>(for:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7AB80(v11);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7E358();
  v13 = sub_1ABF22424();
  sub_1ABA82980(v13);
  sub_1ABE80DBC(a1, v5, a2, a3, a4, a5);
  return sub_1ABAB480C(v5, &qword_1EB4DB820, &qword_1ABF500A0);
}

void sub_1ABE81764()
{
  sub_1ABA7BCA8();
  v18 = v2;
  v19 = v3;
  v5 = v4;
  v17 = *v0;
  v6 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  v7 = sub_1ABA7BBD0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7E338();
  v13 = v0[5];
  v12 = v0[6];
  sub_1ABB3E5B4(v5, v1, &qword_1EB4DB820, &qword_1ABF500A0);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v12;
  sub_1ABE8372C(v1, v16 + v14);
  *(v16 + v15) = v17;

  sub_1ABE7F7CC(v18, v19, sub_1ABE8379C, v16);

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABE818D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1ABAD219C(&qword_1EB4DB870, &qword_1ABF70738);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  sub_1ABE80484(a2, a4, &v12 - v8);
  sub_1ABAB47C4(&qword_1EB4DB8C8, &qword_1EB4DB870, &qword_1ABF70738, MEMORY[0x1E699FF60]);
  sub_1ABE83AF4();
  v10 = sub_1ABF22224();
  (*(v7 + 8))(v9, v6);
  return v10;
}

uint64_t SubgraphView.enumerateTriples(block:)()
{
  v1 = sub_1ABAA015C();
  v3 = sub_1ABAD219C(v1, v2);
  sub_1ABA7AB80(v3);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA8176C();
  v5 = sub_1ABF22424();
  sub_1ABA96B68(v5);
  sub_1ABE81764();
  return sub_1ABAB480C(v0, &qword_1EB4DB820, &qword_1ABF500A0);
}

uint64_t sub_1ABE81B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[3] = a3;
  v6[2] = a2;
  return SubgraphView.enumerateTriples<A>(for:block:)(a1, sub_1ABE8409C, v6, a4, a5);
}

void sub_1ABE81BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  sub_1ABAA368C();
  v14 = v13;
  v15 = sub_1ABAD219C(&unk_1EB4DB860, &unk_1ABF70728);
  sub_1ABA7BB64();
  v17 = v16;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v22 - v19;
  v21 = *v12;

  sub_1ABF22D04();
  swift_getObjectType();
  v22[4] = v20;
  v23 = v10;
  v24 = v21;
  v25 = v14;
  sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
  sub_1ABF22464();
  if (!v11)
  {
    sub_1ABE8AC38();
  }

  (*(v17 + 8))(v20, v15);
  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABE81D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v37 = a1;
  v32 = a3;
  v33 = a5;
  v34 = a2;
  v31 = a6;
  v7 = sub_1ABF22424();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1ABAD219C(&qword_1EB4DB870, &qword_1ABF70738);
  v12 = *(v11 - 8);
  v35 = v11;
  v36 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v15 = sub_1ABAD219C(&unk_1EB4D59C0, &unk_1ABF70750);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - v20;
  v41 = &type metadata for ExtendedTripleColumn;
  v42 = sub_1ABC3D2C0();
  LOBYTE(v40[0]) = 4;
  v43 = a4;
  v22 = EntityIdentifier.stringValue.getter();
  v39[3] = MEMORY[0x1E69E6158];
  v39[4] = MEMORY[0x1E69A0130];
  v39[0] = v22;
  v39[1] = v23;
  sub_1ABF22AD4();
  sub_1ABAB480C(v39, &unk_1EB4D3C40, &unk_1ABF3FCC0);
  sub_1ABA84B54(v40);
  v41 = v7;
  v42 = MEMORY[0x1E699FE60];
  v24 = sub_1ABA93DC0(v40);
  sub_1ABE8025C(v32, v10, v24);
  (*(v8 + 8))(v10, v7);
  sub_1ABAD219C(&unk_1EB4DB860, &unk_1ABF70728);
  sub_1ABF22CA4();
  sub_1ABA84B54(v40);
  sub_1ABAD219C(&qword_1EB4DB3F0, &unk_1ABF4C7B0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1ABF34740;
  *(v25 + 56) = &type metadata for ExtendedTripleColumn;
  *(v25 + 64) = sub_1ABC3D4B8();
  *(v25 + 32) = 0;
  v26 = v35;
  sub_1ABF22904();

  (*(v36 + 8))(v14, v26);
  sub_1ABF22914();
  v27 = *(v16 + 8);
  v27(v18, v15);
  sub_1ABAB47C4(&qword_1EB4DB890, &unk_1EB4D59C0, &unk_1ABF70750, MEMORY[0x1E699FF60]);
  sub_1ABAA98EC();
  v28 = v38;
  v29 = sub_1ABF22274();
  result = (v27)(v21, v15);
  if (!v28)
  {
    *v31 = v29;
  }

  return result;
}

void sub_1ABE821C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v37 = v11;
  sub_1ABAA368C();
  v14 = v13;
  v15 = sub_1ABAD219C(&unk_1EB4DB860, &unk_1ABF70728);
  sub_1ABA7BB64();
  v17 = v16;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  v21 = *v12;

  sub_1ABF22D04();
  swift_getObjectType();
  v38 = v20;
  v39 = v10;
  v40 = v21;
  v41 = v14;
  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  v22 = v37;
  sub_1ABF22464();
  if (v22)
  {
    (*(v17 + 8))(v20, v15);
LABEL_15:
    sub_1ABA7AC0C();
    sub_1ABA7BC90();
  }

  else
  {
    v36 = 0;
    v23 = 0;
    v24 = *(a10 + 16);
    v37 = MEMORY[0x1E69E7CC0];
    v25 = v20;
LABEL_4:
    for (i = (a10 + 40 + 16 * v23); ; i += 2)
    {
      if (v24 == v23)
      {

        sub_1ABE8AC38();
        (*(v17 + 8))(v25, v15);
        goto LABEL_15;
      }

      if (v23 >= *(a10 + 16))
      {
        break;
      }

      v28 = *(i - 1);
      v27 = *i;

      EntityIdentifier.init(_:)(v28, v27, &v42);
      if ((v43 & 1) == 0)
      {
        v35 = v42;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABAD89C8(0, *(v37 + 16) + 1, 1, v37);
          v37 = v32;
        }

        v30 = *(v37 + 16);
        v29 = *(v37 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1ABAD89C8(v29 > 1, v30 + 1, 1, v37);
          v37 = v33;
        }

        ++v23;
        v31 = v37;
        *(v37 + 16) = v30 + 1;
        *(v31 + 8 * v30 + 32) = v35;
        goto LABEL_4;
      }

      ++v23;
    }

    __break(1u);
  }
}

uint64_t sub_1ABE82460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v31 = a5;
  v30 = a3;
  v33 = a2;
  v36 = a1;
  v27 = a6;
  v7 = sub_1ABF22424();
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1ABAD219C(&qword_1EB4DB870, &qword_1ABF70738);
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v11 = &v26 - v10;
  v12 = sub_1ABAD219C(&unk_1EB4DB878, &unk_1ABF70740);
  v32 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v29 = &v26 - v16;
  v44 = &type metadata for ExtendedTripleColumn;
  v45 = sub_1ABC3D2C0();
  LOBYTE(v43[0]) = 0;
  v41 = &type metadata for EntityIdentifier;
  v42 = sub_1ABB3E45C();
  v40[0] = a4;
  v47 = v7;
  v48 = MEMORY[0x1E699FE60];
  v17 = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v46);
  sub_1ABF22AD4();
  sub_1ABAB480C(v40, &unk_1EB4D3C40, &unk_1ABF3FCC0);
  sub_1ABA84B54(v43);
  v49 = 4;
  v41 = MEMORY[0x1E69E6158];
  v42 = MEMORY[0x1E69A0130];
  v40[0] = 624583789;
  v40[1] = 0xE400000000000000;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v44 = v7;
  v45 = v17;
  sub_1ABA93DC0(v43);
  sub_1ABF22984();
  sub_1ABAB480C(v38, &unk_1EB4D3C40, &unk_1ABF3FCC0);
  sub_1ABA84B54(v40);
  sub_1ABF22AC4();
  sub_1ABA84B54(v43);
  sub_1ABA84B54(v46);
  v47 = v7;
  v48 = MEMORY[0x1E699FE60];
  v18 = sub_1ABA93DC0(v46);
  sub_1ABE8025C(v30, v9, v18);
  (*(v28 + 8))(v9, v7);
  sub_1ABAD219C(&unk_1EB4DB860, &unk_1ABF70728);
  sub_1ABF22CA4();
  sub_1ABA84B54(v46);
  sub_1ABAD219C(&qword_1EB4DB3F0, &unk_1ABF4C7B0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1ABF34740;
  *(v19 + 56) = &type metadata for ExtendedTripleColumn;
  *(v19 + 64) = sub_1ABC3D4B8();
  *(v19 + 32) = 4;
  v20 = v34;
  sub_1ABF22904();

  (*(v35 + 8))(v11, v20);
  v21 = v29;
  sub_1ABF22914();
  v22 = *(v32 + 8);
  v22(v14, v12);
  sub_1ABAB47C4(&qword_1EB4DB888, &unk_1EB4DB878, &unk_1ABF70740, MEMORY[0x1E699FF60]);
  v23 = v37;
  v24 = sub_1ABF22254();
  result = (v22)(v21, v12);
  if (!v23)
  {
    *v27 = v24;
  }

  return result;
}

uint64_t sub_1ABE829B8(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t *))
{
  v5 = sub_1ABAA015C();
  v7 = sub_1ABAD219C(v5, v6);
  sub_1ABA7AB80(v7);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8176C();
  v9 = *a1;
  v10 = sub_1ABF22424();
  sub_1ABA96B68(v10);
  v13 = v9;
  v11 = a2(v2, &v13);
  sub_1ABAB480C(v2, &qword_1EB4DB820, &qword_1ABF500A0);
  return v11;
}

uint64_t SubgraphView.filteredView(with:)()
{
  sub_1ABF22424();
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v1);
  v3 = sub_1ABA8C458(v2, v9);
  v4(v3);
  type metadata accessor for SubgraphFilteredView(0);
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v6 = sub_1ABA976B8(v5, OBJC_IVAR____TtC20IntelligencePlatform20SubgraphFilteredView_filter);
  v7(v6);

  return v5;
}

uint64_t type metadata accessor for SubgraphFilteredView(uint64_t a1)
{
  result = qword_1EB4DB850;
  if (!qword_1EB4DB850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SubgraphView.filteredContext(with:)()
{
  sub_1ABF22424();
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v1);
  v3 = sub_1ABA8C458(v2, v9);
  v4(v3);
  type metadata accessor for SubgraphFilteredView(0);
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v6 = sub_1ABA976B8(v5, OBJC_IVAR____TtC20IntelligencePlatform20SubgraphFilteredView_filter);
  v7(v6);
  sub_1ABAD219C(&unk_1EB4DB828, &qword_1ABF705A8);
  swift_allocObject();

  return sub_1ABAE6998();
}

uint64_t SubgraphFilteredView.filter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20IntelligencePlatform20SubgraphFilteredView_filter;
  sub_1ABF22424();
  sub_1ABA7BBB0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t SubgraphFilteredView.deinit()
{

  v1 = OBJC_IVAR____TtC20IntelligencePlatform20SubgraphFilteredView_filter;
  sub_1ABF22424();
  sub_1ABA7BBB0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t SubgraphFilteredView.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC20IntelligencePlatform20SubgraphFilteredView_filter;
  sub_1ABF22424();
  sub_1ABA7BBB0();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

void SubgraphFilteredView.enumerateTriples(for:block:)()
{
  sub_1ABA7BCA8();
  v2 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7AB80(v2);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7E358();
  v4 = OBJC_IVAR____TtC20IntelligencePlatform20SubgraphFilteredView_filter;
  v5 = sub_1ABF22424();
  sub_1ABA7BBB0();
  (*(v6 + 16))(v1, v0 + v4, v5);
  sub_1ABA8C6E0();
  sub_1ABA7B9B4(v7, v8, v9, v5);
  sub_1ABE80870();
  sub_1ABAB480C(v1, &qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void SubgraphFilteredView.enumerateTriples<A>(for:block:)()
{
  sub_1ABA7BCA8();
  v19 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7AB80(v11);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7E338();
  v13 = OBJC_IVAR____TtC20IntelligencePlatform20SubgraphFilteredView_filter;
  v14 = sub_1ABF22424();
  sub_1ABA7BBB0();
  (*(v15 + 16))(v1, v0 + v13, v14);
  sub_1ABA8C6E0();
  sub_1ABA7B9B4(v16, v17, v18, v14);
  sub_1ABE80DBC(v10, v1, v8, v6, v4, v19);
  sub_1ABAB480C(v1, &qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7BC90();
}

void SubgraphFilteredView.enumerateTriples(block:)()
{
  sub_1ABA7BCA8();
  v2 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7AB80(v2);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA8176C();
  v4 = OBJC_IVAR____TtC20IntelligencePlatform20SubgraphFilteredView_filter;
  v5 = sub_1ABF22424();
  sub_1ABA7BBB0();
  (*(v6 + 16))(v1, v0 + v4, v5);
  sub_1ABA8C6E0();
  sub_1ABA7B9B4(v7, v8, v9, v5);
  sub_1ABE81764();
  sub_1ABAB480C(v1, &qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void sub_1ABE8328C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v28 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7AB80(v28);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA8176C();
  v30 = *v27;
  v31 = OBJC_IVAR____TtC20IntelligencePlatform20SubgraphFilteredView_filter;
  v32 = sub_1ABF22424();
  sub_1ABA7BBB0();
  (*(v33 + 16))(v21, v20 + v31, v32);
  sub_1ABA8C6E0();
  sub_1ABA7B9B4(v34, v35, v36, v32);
  a10 = v30;
  v25(v21, &a10);
  sub_1ABAB480C(v21, &qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7BC90();
}

uint64_t sub_1ABE833A0(uint64_t a1, uint64_t a2)
{
  result = sub_1ABE8352C(&qword_1EB4CF620, a2, type metadata accessor for SubgraphView, &protocol conformance descriptor for SubgraphView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABE8341C(uint64_t a1, uint64_t a2)
{
  result = sub_1ABE8352C(&qword_1EB4CF628, a2, type metadata accessor for SubgraphView, &protocol conformance descriptor for SubgraphView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABE83474(uint64_t a1)
{
  result = sub_1ABE8352C(&qword_1EB4DB838, 255, type metadata accessor for SubgraphFilteredView, &protocol conformance descriptor for SubgraphFilteredView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABE834D0(uint64_t a1)
{
  result = sub_1ABE8352C(&unk_1EB4DB840, 255, type metadata accessor for SubgraphFilteredView, &protocol conformance descriptor for SubgraphFilteredView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABE8352C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1ABE835E0(uint64_t a1)
{
  result = sub_1ABF22424();
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

uint64_t sub_1ABE8372C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABE8379C(uint64_t a1)
{
  v3 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7BBD0(v3);
  sub_1ABAA4BE4();
  return sub_1ABE818D8(a1, *(v1 + 16), *(v1 + 24), v1 + v4);
}

uint64_t sub_1ABE839C8(uint64_t a1, void *a2)
{
  result = sub_1ABF22674();
  if (!v2)
  {
    return v4;
  }

  return result;
}

unint64_t sub_1ABE83AF4()
{
  result = qword_1EB4DB8D0;
  if (!qword_1EB4DB8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB8D0);
  }

  return result;
}

uint64_t sub_1ABE83B48()
{
  v2 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7BBD0(v2);
  v4 = *(v3 + 80);

  v5 = sub_1ABF22424();
  if (!sub_1ABA84420(v5))
  {
    sub_1ABA8AD50();
    (*(v6 + 8))(v1 + ((v4 + 32) & ~v4), v0);
  }

  sub_1ABAA3AC0();

  return MEMORY[0x1EEE6BDD0](v1, v7 + 8, v4 | 7);
}

void sub_1ABE83C2C()
{
  v0 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7BBD0(v0);
  sub_1ABAA4BE4();
  sub_1ABE813F0();
}

uint64_t sub_1ABE83D54(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, uint64_t, void, void))
{
  v5 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7BBD0(v5);
  sub_1ABAA4BE4();
  return a2(a1, *(v2 + 16), *(v2 + 24), v2 + v7, *(v2 + v6), *(v2 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1ABE84038@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1ABE839C8(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1ABE840E4()
{
  if (qword_1EB4CE690 != -1)
  {
    sub_1ABA8FC34(&qword_1EB4CE690);
  }

  swift_beginAccess();
  v0 = byte_1EB4CE698;
  v1 = qword_1EB4CE6A0;
  v2 = unk_1EB4CE6A8;
  v3 = qword_1EB4CE6B0;

  v4 = v3;
  v5 = objc_autoreleasePoolPush();
  v6 = sub_1ABA84CB8(v0, v1, v2, v4);
  objc_autoreleasePoolPop(v5);

  return v6 & 1;
}

void static SystemPreferencesImpl.updatePersonalizationDataCollectionAllowed(_:)(char a1)
{
  if (qword_1EB4CE690 != -1)
  {
    sub_1ABA8FC34(&qword_1EB4CE690);
  }

  swift_beginAccess();
  v2 = objc_autoreleasePoolPush();
  sub_1ABBC29E8(&byte_1EB4CE698, a1 & 1);
  objc_autoreleasePoolPop(v2);
  swift_endAccess();
  v3 = [objc_opt_self() defaultCenter];
  [v3 postNotificationName:@"com.apple.intelligenceplatform.personalizationDataCollectionAllowed.changed" object:0];
}

id SystemPreferencesImpl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SystemPreferencesImpl.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SystemPreferencesImpl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1ABE84388()
{
  v0 = [objc_opt_self() isInternalDevice];
  sub_1ABA84BAC();
  result = static NSUserDefaults.makeIntelligencePlatformUserDefaults()();
  byte_1EB4CE698 = v0;
  qword_1EB4CE6A0 = 0xD000000000000024;
  unk_1EB4CE6A8 = 0x80000001ABF94950;
  qword_1EB4CE6B0 = result;
  return result;
}

uint64_t sub_1ABE84428()
{
  *&__src[0] = 1954047348;
  *(&__src[0] + 1) = 0xE400000000000000;
  *&__src[1] = &unk_1F208E788;
  *(&__src[1] + 1) = 115;
  *&__src[2] = 0xE100000000000000;
  BYTE8(__src[2]) = 0;
  *&__src[3] = 0xD0000000000000A0;
  *(&__src[3] + 1) = 0x80000001ABF94A10;
  *&__src[4] = 0;
  *(&__src[4] + 1) = 0xE000000000000000;
  memset(&__src[5], 0, 32);
  memset(v4, 0, sizeof(v4));
  memcpy((v0 + 16), __src, 0x70uLL);

  sub_1ABB51320(__src, &v2);
  sub_1ABAE4AA8(v4);

  sub_1ABB5137C(__src);
  return v0;
}

void sub_1ABE844F4(uint64_t a1@<X1>, char *a2@<X8>)
{
  v2 = *(a1 + 64);
  if (((1 << v2) & 0x1DE) != 0)
  {
    goto LABEL_2;
  }

  if (!*(a1 + 64))
  {
    v2 = 6;
LABEL_2:
    *a2 = v2;
    return;
  }

  sub_1ABAF2860();
  swift_allocError();
  *v3 = 0xD000000000000038;
  *(v3 + 8) = 0x80000001ABF949D0;
  *(v3 + 16) = 2;
  swift_willThrow();
}

uint64_t sub_1ABE84590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (((1 << *(a6 + 64)) & 0x1CA) == 0)
  {
    goto LABEL_31;
  }

  sub_1ABA8FC54(a6 + 32);
  if (*(a6 + 32))
  {
    v11 = sub_1ABAE305C();
    swift_endAccess();
    if (v11)
    {
      swift_beginAccess();
      if (*(*(v11 + 16) + 16))
      {

LABEL_6:
        v13 = sub_1ABE8AE5C(v12);

        goto LABEL_9;
      }

      if (!*(v11 + 32))
      {
        v12 = MEMORY[0x1E69E7CC0];
        goto LABEL_6;
      }
    }
  }

  else
  {
    swift_endAccess();
  }

  v13 = 0;
LABEL_9:
  sub_1ABA8FC54(a6 + 32);
  if (*(a6 + 32))
  {
    v14 = sub_1ABAE305C();
    if (!v14)
    {
      swift_endAccess();
      goto LABEL_19;
    }

    swift_endAccess();
    swift_beginAccess();
    v15 = *(v14 + 16);

    if (*(v15 + 16))
    {
      v14 = sub_1ABE8AE5C(v15);
      goto LABEL_19;
    }
  }

  else
  {
    swift_endAccess();
  }

  v14 = 0;
LABEL_19:
  sub_1ABA8FC54(a6 + 32);
  if (*(a6 + 32) && (v16 = sub_1ABAE305C()) != 0)
  {
    v17 = v16;
    swift_endAccess();
    swift_beginAccess();
    v18 = *(v17 + 16);

    if (*(v18 + 16))
    {
      v19 = sub_1ABE8AE5C(v18);
      sub_1ABA8FC54(a6 + 72);
      v20 = sub_1ABA94FF4(0x65707954737466, 0xE700000000000000);
      if (v21)
      {
        v22 = v20;
        v23 = v21;
        swift_endAccess();
        v24._countAndFlagsBits = v22;
        v24._object = v23;
        TriplesQuery.FullTextSearchType.init(rawValue:)(v24);
        v25 = v51;
        if (v51 == 6)
        {

          sub_1ABAF2860();
          swift_allocError();
          *v26 = 0xD000000000000027;
          *(v26 + 8) = 0x80000001ABF949A0;
          *(v26 + 16) = 1;
          swift_willThrow();
LABEL_42:

          return v31 & 1;
        }
      }

      else
      {
        swift_endAccess();
        v25 = 3;
      }

      v33 = 96;
      if (v13 | v14)
      {
        sub_1ABAD219C(&qword_1EB4D10F8, &qword_1ABF33280);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1ABF34060;
        *(v34 + 32) = 0;
        *(v34 + 40) = v13;
        *(v34 + 48) = 0;
        *(v34 + 56) = v14;
        *(v34 + 120) = 0;
        *(v34 + 64) = 0u;
        *(v34 + 80) = 0u;
        *(v34 + 96) = 0u;
        *(v34 + 136) = 32;
        *(v34 + 144) = v19;
        *(v34 + 152) = v25;
        *(v34 + 232) = 0;
        *(v34 + 248) = 96;

        v19 = 0;
        v33 = 0;
        v25 = v34;
      }

      v35 = a2 + *(type metadata accessor for QueryContext(0) + 32);
      v36 = *(v35 + 88);
      v37 = *(v35 + 104);
      if (v36 >> 1 != 0xFFFFFFFF || (*(v35 + 104) & 0x1E) != 0)
      {
        v44 = *(v35 + 96);
        memcpy(__dst, v35, sizeof(__dst));
        v48 = v36;
        v49 = v44;
        v50 = v37;
        __src[0] = v19;
        __src[1] = v25;
        __src[11] = 0;
        LOBYTE(__src[13]) = v33;
        v45[111] = 1;
        sub_1ABE3A1C8();
        if (v7)
        {
          memcpy(v45, __src, 0x69uLL);
          sub_1ABAE4B6C(v45);
          goto LABEL_42;
        }

        memcpy(v45, __src, 0x69uLL);
        sub_1ABAE4B6C(v45);

        v19 = v51;
        v42 = v52;
        v38 = v53;
        v39 = v54;
        v40 = v55;
        v41 = v56;
        v43 = v57;
        v33 = v58;
      }

      else
      {

        *&v42 = v25;
        v43 = 0uLL;
      }

      *a1 = v19;
      *(a1 + 8) = v42;
      *(a1 + 24) = v38;
      *(a1 + 40) = v39;
      *(a1 + 56) = v40;
      *(a1 + 72) = v41;
      *(a1 + 88) = v43;
      v31 = 1;
      *(a1 + 104) = v33;
      return v31 & 1;
    }
  }

  else
  {
    swift_endAccess();
  }

  if (qword_1ED86E458 != -1)
  {
    swift_once();
  }

  v27 = sub_1ABF237F4();
  sub_1ABA7AA24(v27, qword_1ED86E460);
  v28 = sub_1ABF237D4();
  v29 = sub_1ABF24664();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1ABA78000, v28, v29, "Text operator is given no object parameter.", v30, 2u);
    MEMORY[0x1AC5AB8B0](v30, -1, -1);
  }

LABEL_31:
  v31 = 0;
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 88) = xmmword_1ABF34940;
  *(a1 + 104) = 0;
  return v31 & 1;
}

uint64_t sub_1ABE84AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ResultGraph();
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = sub_1ABF239C4();
  *(v4 + 24) = v5;
  v7 = 0;
  sub_1ABE489A8(a3, &v7);
}

uint64_t sub_1ABE84BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1ABF21944();
  sub_1ABA7BB64();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_autoreleasePoolPush();
  v16[0] = a1;
  v16[1] = a2;
  sub_1ABF21924();
  sub_1ABAE28EC();
  v13 = sub_1ABF24874();
  (*(v8 + 8))(v11, v6);
  v16[0] = v13;
  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  sub_1ABAAA5C0();
  v14 = sub_1ABF23B54();

  objc_autoreleasePoolPop(v12);
  return v14;
}

void sub_1ABE84CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = objc_autoreleasePoolPush();
  sub_1ABAE28EC();
  v4 = sub_1ABF24884();
  v5 = 0;
  v6 = *(v4 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  for (i = v6; ; v6 = i)
  {
LABEL_2:
    if (v5 == v6)
    {

      sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
      sub_1ABAAA5C0();
      sub_1ABF23B54();

      objc_autoreleasePoolPop(v20);
      return;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    v8 = (v4 + 32 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    ++v5;
    if (*(a1 + 16))
    {
      sub_1ABF25234();

      sub_1ABF23D34();
      v11 = sub_1ABF25294();
      v12 = ~(-1 << *(a1 + 32));
      while (1)
      {
        v13 = v11 & v12;
        if (((*(a1 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
        {
          break;
        }

        v14 = (*(a1 + 48) + 16 * v13);
        if (*v14 != v10 || v14[1] != v9)
        {
          v16 = sub_1ABF25054();
          v11 = v13 + 1;
          if ((v16 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_2;
      }
    }

    else
    {
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABADDBD4(0, *(v7 + 16) + 1, 1);
    }

    v18 = *(v7 + 16);
    v17 = *(v7 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1ABADDBD4(v17 > 1, v18 + 1, 1);
    }

    *(v7 + 16) = v18 + 1;
    v19 = v7 + 16 * v18;
    *(v19 + 32) = v10;
    *(v19 + 40) = v9;
  }

  __break(1u);
}

void sub_1ABE84F48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABF21944();
  sub_1ABA7BB64();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_autoreleasePoolPush();
  v23[0] = a1;
  v23[1] = a2;
  sub_1ABF21934();
  sub_1ABAE28EC();
  v11 = sub_1ABF24874();
  (*(v6 + 8))(v9, v4);
  objc_autoreleasePoolPop(v10);
  v12 = 0;
  v13 = *(v11 + 16);
  v14 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v15 = (v11 + 40 + 16 * v12);
  while (1)
  {
    if (v13 == v12)
    {

      v23[0] = v14;
      sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
      sub_1ABAAA5C0();
      sub_1ABF23B54();

      return;
    }

    if (v12 >= *(v11 + 16))
    {
      break;
    }

    ++v12;
    v17 = *(v15 - 1);
    v16 = *v15;
    v15 += 2;
    v18 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v18 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23[0] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1ABADDBD4(0, *(v14 + 16) + 1, 1);
        v14 = v23[0];
      }

      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1ABADDBD4(v20 > 1, v21 + 1, 1);
        v14 = v23[0];
      }

      *(v14 + 16) = v21 + 1;
      v22 = v14 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v16;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t sub_1ABE85170(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v9 = a2;
  HIBYTE(v7[1]) = -18;
  v5 = 32;
  v6 = 0xE100000000000000;
  sub_1ABAE28EC();
  v8 = sub_1ABA8FC70(v7, &v5);
  v9 = v2;
  strcpy(v7, "(\n|\r|\t|");
  v7[1] = 0xE900000000000029;
  v5 = 0;
  v6 = 0xE000000000000000;
  v3 = sub_1ABA8FC70(v7, &v5);

  return v3;
}

uint64_t sub_1ABE85250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1ABAD219C(&qword_1EB4D3EC8, &unk_1ABF41180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v22 = &v21 - v5;
  v6 = sub_1ABAD219C(&qword_1EB4DB968, &qword_1ABF707E8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v23 = &v21 - v7;
  v24 = a2;
  v8 = *(a1 + 48);
  v9 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v9;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v8;
  v10 = *(v8 + 16);
  sub_1ABE865B8(a1, v25);
  v11 = (v8 + 32);
  while (2)
  {
    if (v10)
    {
      switch(*v11)
      {
        case 7:

          break;
        default:
          v12 = sub_1ABF25054();

          ++v11;
          --v10;
          if ((v12 & 1) == 0)
          {
            continue;
          }

          break;
      }

      sub_1ABE86614(a1);
      v13 = sub_1ABF21F54();
      sub_1ABA7B9B4(v22, 1, 1, v13);
      v14 = v23;
      MorphunTokenizer.init(locale:overrideConfigOptions:)();
      v15 = v24;
      v16 = type metadata accessor for MorphunTokenizer(0);
      sub_1ABA7B9B4(v14, 0, 1, v16);
      v17 = type metadata accessor for TextPreprocessor(0);
      return sub_1ABE86668(v14, v15 + *(v17 + 20));
    }

    else
    {
      sub_1ABE86614(a1);
      v19 = *(type metadata accessor for TextPreprocessor(0) + 20);
      v20 = type metadata accessor for MorphunTokenizer(0);
      return sub_1ABA7B9B4(v24 + v19, 1, 1, v20);
    }
  }
}

uint64_t sub_1ABE85574(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *(v2 + 48);
  v8 = *(v7 + 16);

  for (i = 0; ; ++i)
  {
    if (v8 == i)
    {
      v17 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v17 = a1 & 0xFFFFFFFFFFFFLL;
      }

      if (!v17)
      {

        v20 = sub_1ABB32C5C();
        sub_1ABA7BD00(&type metadata for EntityResolutionError, v20);
        *v21 = 0xD000000000000018;
        *(v21 + 8) = 0x80000001ABF94B70;
LABEL_21:
        *(v21 + 16) = 2;
        swift_willThrow();
        return sub_1ABA7D0F8();
      }

      v27[0] = a1;
      v27[1] = a2;
      sub_1ABAE28EC();
      v18 = *(sub_1ABF24884() + 16);

      if (*(v4 + 24) == 1)
      {
        if (v18 <= 0x40)
        {
LABEL_11:
          sub_1ABA7D0F8();
          v19 = sub_1ABF23D44();
          if (*(v4 + 8) == 1)
          {
            if (v19 <= 1024)
            {
              return sub_1ABA7D0F8();
            }
          }

          else if (*v4 >= v19)
          {
            return sub_1ABA7D0F8();
          }

          sub_1ABF24AB4();

          strcpy(v27, "Query size: ");
          BYTE5(v27[1]) = 0;
          HIWORD(v27[1]) = -5120;
          sub_1ABA7D0F8();
          sub_1ABF23D44();

          v23 = sub_1ABF24FF4();
          MEMORY[0x1AC5A9410](v23);

          sub_1ABA7FA2C();
          goto LABEL_20;
        }
      }

      else if (*(v4 + 16) >= v18)
      {
        goto LABEL_11;
      }

      v27[0] = 0;
      v27[1] = 0xE000000000000000;
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF94B50);
      v22 = sub_1ABF24FF4();
      MEMORY[0x1AC5A9410](v22);

      sub_1ABA7FA2C();
LABEL_20:
      sub_1ABAD219C(&qword_1EB4D4C68, &unk_1ABF478A0);
      v24 = sub_1ABF23C74();
      MEMORY[0x1AC5A9410](v24);

      MEMORY[0x1AC5A9410](0x6874676E656C20, 0xE700000000000000);
      v25 = v27[1];
      v26 = sub_1ABB32C5C();
      sub_1ABA7BD00(&type metadata for EntityResolutionError, v26);
      *v21 = v27[0];
      *(v21 + 8) = v25;
      goto LABEL_21;
    }

    if (i >= *(v7 + 16))
    {
      break;
    }

    LOBYTE(v27[0]) = *(v7 + 32 + i);
    v11 = sub_1ABA7D0F8();
    v14 = sub_1ABE85BD0(v11, v12, v13);
    if (v3)
    {

      return sub_1ABA7D0F8();
    }

    a1 = v14;
    v16 = v15;

    a2 = v16;
  }

  __break(1u);
  return result;
}

unint64_t sub_1ABE858D0()
{
  if (qword_1ED871EA0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED871EA8;
  v1 = sub_1ABF23BD4();
  v2 = sub_1ABA7D0EC();
  sub_1ABE863A8(v2, v3, v1, v0);
  v5 = v4;

  if (v5)
  {

    return sub_1ABE86184();
  }

  else
  {
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD000000000000037, 0x80000001ABF94AC0);
    v7 = sub_1ABA7D0EC();
    MEMORY[0x1AC5A9410](v7);

    v8 = sub_1ABB32C5C();
    sub_1ABA7BD00(&type metadata for EntityResolutionError, v8);
    *v9 = 0;
    *(v9 + 8) = 0xE000000000000000;
    *(v9 + 16) = 6;
    return swift_willThrow();
  }
}

void sub_1ABE85A28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1ABF23BD4();
  v5 = [a3 encodeAsIDsFrom_];

  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v6 = sub_1ABF240D4();

  v7 = sub_1ABAAB7C8(v6);
  if (v7)
  {
    v8 = v7;
    v16 = MEMORY[0x1E69E7CC0];
    sub_1ABADDE7C(0, v7 & ~(v7 >> 63), 0);
    if ((v8 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = sub_1ABA7D0EC();
          v11 = MEMORY[0x1AC5AA170](v10);
        }

        else
        {
          v11 = *(v6 + 8 * v9 + 32);
        }

        v12 = v11;
        v13 = [v11 integerValue];

        if (v13 < 0xFFFFFFFF80000000)
        {
          break;
        }

        if (v13 > 0x7FFFFFFF)
        {
          goto LABEL_15;
        }

        v15 = *(v16 + 16);
        v14 = *(v16 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1ABADDE7C((v14 > 1), v15 + 1, 1);
        }

        ++v9;
        *(v16 + 16) = v15 + 1;
        *(v16 + 4 * v15 + 32) = v13;
        if (v8 == v9)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

uint64_t sub_1ABE85BD0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = sub_1ABAD219C(&qword_1EB4DB968, &qword_1ABF707E8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v53 - v8;
  v10 = type metadata accessor for MorphunTokenizer(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1ABF21944();
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(*a3)
  {
    case 1:
      v30 = sub_1ABF23C84();
      goto LABEL_14;
    case 2:

      return a1;
    case 3:
      v30 = sub_1ABE85170(a1, a2);
      goto LABEL_14;
    case 4:
      v55 = a1;
      v56 = a2;
      sub_1ABAE28EC();
      v30 = sub_1ABF24894();
      goto LABEL_14;
    case 5:
      v55 = 0x203E534F423CLL;
      v56 = 0xE600000000000000;
      MEMORY[0x1AC5A9410](a1, a2, v15);
      MEMORY[0x1AC5A9410](0x3E534F453C20, 0xE600000000000000);
      return v55;
    case 6:
      sub_1ABE84F48(a1, a2);
LABEL_14:
      a1 = v30;
      break;
    case 7:
      v31 = type metadata accessor for TextPreprocessor(0);
      sub_1ABE8647C(v3 + *(v31 + 20), v9);
      if (sub_1ABA7E1E0(v9, 1, v10) == 1)
      {
        sub_1ABE864EC(v9);
        sub_1ABB32C5C();
        swift_allocError();
        *v32 = 0xD000000000000039;
        *(v32 + 8) = 0x80000001ABF94B90;
        *(v32 + 16) = 7;
        swift_willThrow();
      }

      else
      {
        sub_1ABE86554(v9, v12);
        v34 = objc_autoreleasePoolPush();
        v35 = objc_autoreleasePoolPush();
        v36 = v58;
        v37 = sub_1ABF22F34();
        if (v36)
        {
          objc_autoreleasePoolPop(v35);
        }

        else
        {
          MEMORY[0x1EEE9AC00](v37);
          *(&v53 - 2) = v12;
          sub_1ABAAA034(sub_1ABAAA358, (&v53 - 4), v45, v46, v47, v48, v49, v50, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
          v52 = v51;

          objc_autoreleasePoolPop(v35);
          v55 = v52;
          sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
          sub_1ABAAA5C0();
          a1 = sub_1ABF23B54();
        }

        objc_autoreleasePoolPop(v34);
        sub_1ABBA294C(v12);
      }

      break;
    default:
      v54 = v14;
      v18 = sub_1ABE84B98(a1, a2);
      v20 = v19;
      if (qword_1ED86BA08 != -1)
      {
        swift_once();
      }

      sub_1ABE84CFC(qword_1ED87C3E0, v18, v20);

      v21 = v58;
      sub_1ABBE6A60();
      sub_1ABBE6748(0, 0xE000000000000000, v22, v23);
      v25 = v24;
      v27 = v26;

      v28 = objc_allocWithZone(MEMORY[0x1E696AB60]);
      v29 = sub_1ABE862F4(32);
      if (v21)
      {
      }

      else
      {
        v38 = v29;
        if (v29)
        {
          v39 = sub_1ABF23BD4();
          v40 = MEMORY[0x1AC5A94A0](v25, v27);
          v41 = sub_1ABF23BD4();
          v42 = [v38 stringByReplacingMatchesInString:v39 options:0 range:0 withTemplate:{v40, v41}];

          v25 = sub_1ABF23C04();
          v44 = v43;

          v27 = v44;
        }
      }

      v55 = v25;
      v56 = v27;
      sub_1ABF21914();
      sub_1ABAE28EC();
      a1 = sub_1ABF248A4();
      (*(v54 + 8))(v17, v13);

      break;
  }

  return a1;
}

unint64_t sub_1ABE86184()
{
  sub_1ABAFF390(0, &qword_1EB4DB960, 0x1E69CA938);

  v0 = sub_1ABA7D0EC();
  v2 = sub_1ABE86280(v0, v1);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    sub_1ABF24AB4();

    v4 = sub_1ABA7D0EC();
    MEMORY[0x1AC5A9410](v4);

    v3 = 0x80000001ABF94B00;
    v5 = sub_1ABB32C5C();
    sub_1ABA7BD00(&type metadata for EntityResolutionError, v5);
    *v6 = 0xD000000000000024;
    *(v6 + 8) = 0x80000001ABF94B00;
    *(v6 + 16) = 6;
    swift_willThrow();
  }

  return v3;
}

id sub_1ABE86280(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1ABF23BD4();

  v4 = [v2 initWithModelPath_];

  return v4;
}

id sub_1ABE862F4(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v2 = [v1 initWithTypes:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1ABE863A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1ABF23BD4();
  v7 = [a4 pathForResource:v6 ofType:a3];

  if (!v7)
  {
    return 0;
  }

  v8 = sub_1ABF23C04();

  return v8;
}

uint64_t type metadata accessor for TextPreprocessor(uint64_t a1)
{
  result = qword_1ED86D778;
  if (!qword_1ED86D778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1ABE8647C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4DB968, &qword_1ABF707E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABE864EC(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4DB968, &qword_1ABF707E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABE86554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MorphunTokenizer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABE86668(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4DB968, &qword_1ABF707E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1ABE86700(uint64_t a1)
{
  sub_1ABE8677C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1ABE8677C(uint64_t a1)
{
  if (!qword_1ED86D788[0])
  {
    type metadata accessor for MorphunTokenizer(255);
    v1 = sub_1ABF247E4();
    if (!v2)
    {
      atomic_store(v1, qword_1ED86D788);
    }
  }
}

uint64_t TransportationActivityEventType.init(modeOfTransportationEntityClass:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_69;
  }

  v5 = *(result + 16);
  v6 = *(result + 24);
  v7 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x5E8), *(_Records_GDEntityClass_records + 0x5F0), *(_Records_GDEntityClass_records + 0x5F8), &v87);
  v15 = sub_1ABA7BB78(v7, v8, v9, v10, v11, v12, v13, v14, v80, v87, v88, v89);
  v16 = v16 && v2 == v6;
  if (v16)
  {
    v17 = 0;
LABEL_9:

    goto LABEL_10;
  }

  sub_1ABA83534(v15);
  sub_1ABA946E0();

  if (v3)
  {
    v17 = 0;
LABEL_10:

LABEL_11:
    *a2 = v17;
    return result;
  }

  if (!_Records_GDEntityClass_records)
  {
LABEL_69:
    __break(1u);
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v18 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x5D0), *(_Records_GDEntityClass_records + 0x5D8), *(_Records_GDEntityClass_records + 0x5E0), &v87);
  v26 = sub_1ABA7BB78(v18, v19, v20, v21, v22, v23, v24, v25, v81, v87, v88, v89);
  if (v16 && v2 == v6)
  {
    v17 = 1;
    goto LABEL_9;
  }

  sub_1ABA83534(v26);
  sub_1ABA946E0();

  if (v3)
  {
    v17 = 1;
    goto LABEL_10;
  }

  if (!_Records_GDEntityClass_records)
  {
    goto LABEL_70;
  }

  v28 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x600), *(_Records_GDEntityClass_records + 0x608), *(_Records_GDEntityClass_records + 0x610), &v87);
  v36 = sub_1ABA7BB78(v28, v29, v30, v31, v32, v33, v34, v35, v82, v87, v88, v89);
  if (v16 && v2 == v6)
  {
    v17 = 2;
    goto LABEL_9;
  }

  sub_1ABA83534(v36);
  sub_1ABA946E0();

  if (v3)
  {
    v17 = 2;
    goto LABEL_10;
  }

  if (!_Records_GDEntityClass_records)
  {
    goto LABEL_71;
  }

  v38 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x648), *(_Records_GDEntityClass_records + 0x650), *(_Records_GDEntityClass_records + 0x658), &v87);
  v46 = sub_1ABA7BB78(v38, v39, v40, v41, v42, v43, v44, v45, v83, v87, v88, v89);
  if (v16 && v2 == v6)
  {
    v17 = 3;
    goto LABEL_9;
  }

  sub_1ABA83534(v46);
  sub_1ABA946E0();

  if (v3)
  {
    v17 = 3;
    goto LABEL_10;
  }

  if (!_Records_GDEntityClass_records)
  {
    goto LABEL_72;
  }

  v48 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x618), *(_Records_GDEntityClass_records + 0x620), *(_Records_GDEntityClass_records + 0x628), &v87);
  v56 = sub_1ABA7BB78(v48, v49, v50, v51, v52, v53, v54, v55, v84, v87, v88, v89);
  if (v16 && v2 == v6)
  {
    v17 = 4;
    goto LABEL_9;
  }

  sub_1ABA83534(v56);
  sub_1ABA946E0();

  if (v3)
  {
    v17 = 4;
    goto LABEL_10;
  }

  if (!_Records_GDEntityClass_records)
  {
    goto LABEL_73;
  }

  v58 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x630), *(_Records_GDEntityClass_records + 0x638), *(_Records_GDEntityClass_records + 0x640), &v87);
  v66 = sub_1ABA7BB78(v58, v59, v60, v61, v62, v63, v64, v65, v85, v87, v88, v89);
  if (v16 && v2 == v6)
  {
    v17 = 5;
    goto LABEL_9;
  }

  sub_1ABA83534(v66);
  sub_1ABA946E0();

  if (v3)
  {
    v17 = 5;
    goto LABEL_10;
  }

  if (!_Records_GDEntityClass_records)
  {
    goto LABEL_74;
  }

  v68 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x678), *(_Records_GDEntityClass_records + 0x680), *(_Records_GDEntityClass_records + 0x688), &v87);
  v76 = sub_1ABA7BB78(v68, v69, v70, v71, v72, v73, v74, v75, v86, v87, v88, v89);
  if (v16 && v2 == v6)
  {
    v17 = 6;
    goto LABEL_9;
  }

  sub_1ABA83534(v76);
  sub_1ABA946E0();

  if (v3)
  {
    v17 = 6;
    goto LABEL_10;
  }

  if (_Records_GDEntityClass_records)
  {
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x660), *(_Records_GDEntityClass_records + 0x668), *(_Records_GDEntityClass_records + 0x670), &v87);
    v17 = 7;
    if (v89 != v5 || v90 != v6)
    {
      v79 = sub_1ABA83534(v89);

      if (v79)
      {
        v17 = 7;
      }

      else
      {
        v17 = 8;
      }

      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_75:
  __break(1u);
  return result;
}

void TransportationActivityEventType.modeOfTransportationEntityClass.getter(uint64_t a1@<X8>)
{
  switch(*v1)
  {
    case 1:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_24;
      }

      v3 = *(_Records_GDEntityClass_records + 0x5D8);
      v4 = *(_Records_GDEntityClass_records + 0x5E0);
      v5 = *(_Records_GDEntityClass_records + 0x5D0);
      goto LABEL_18;
    case 2:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_20;
      }

      v3 = *(_Records_GDEntityClass_records + 0x608);
      v4 = *(_Records_GDEntityClass_records + 0x610);
      v5 = *(_Records_GDEntityClass_records + 0x600);
      goto LABEL_18;
    case 3:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_21;
      }

      v3 = *(_Records_GDEntityClass_records + 0x650);
      v4 = *(_Records_GDEntityClass_records + 0x658);
      v5 = *(_Records_GDEntityClass_records + 0x648);
      goto LABEL_18;
    case 4:
      if (_Records_GDEntityClass_records)
      {
        v3 = *(_Records_GDEntityClass_records + 0x620);
        v4 = *(_Records_GDEntityClass_records + 0x628);
        v5 = *(_Records_GDEntityClass_records + 0x618);
LABEL_18:
        sub_1ABA8882C(v5, v3, v4, v10);
        v6 = v10[1];
        v7 = v10[2];
        v8 = v10[3];
        v9 = v11;
        *a1 = v10[0];
        *(a1 + 8) = v6;
        *(a1 + 16) = v7;
        *(a1 + 24) = v8;
        *(a1 + 32) = v9;
      }

      else
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
      }

      return;
    case 5:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_25;
      }

      v3 = *(_Records_GDEntityClass_records + 0x638);
      v4 = *(_Records_GDEntityClass_records + 0x640);
      v5 = *(_Records_GDEntityClass_records + 0x630);
      goto LABEL_18;
    case 6:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_26;
      }

      v3 = *(_Records_GDEntityClass_records + 0x680);
      v4 = *(_Records_GDEntityClass_records + 0x688);
      v5 = *(_Records_GDEntityClass_records + 0x678);
      goto LABEL_18;
    case 7:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_22;
      }

      v3 = *(_Records_GDEntityClass_records + 0x668);
      v4 = *(_Records_GDEntityClass_records + 0x670);
      v5 = *(_Records_GDEntityClass_records + 0x660);
      goto LABEL_18;
    default:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_23;
      }

      v3 = *(_Records_GDEntityClass_records + 0x5F0);
      v4 = *(_Records_GDEntityClass_records + 0x5F8);
      v5 = *(_Records_GDEntityClass_records + 0x5E8);
      goto LABEL_18;
  }
}

uint64_t sub_1ABE86D34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746F6F466E6FLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C6369686576 && a2 == 0xE700000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x69626F6D6F747561 && a2 == 0xEA0000000000656CLL;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1885956211 && a2 == 0xE400000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656E616C70 && a2 == 0xE500000000000000;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656C6379636962 && a2 == 0xE700000000000000;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x69746F6D6F636F6CLL && a2 == 0xEF6E696172546576;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 7566690 && a2 == 0xE300000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1ABF25054();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1ABE86FB4(char a1)
{
  result = 0x746F6F466E6FLL;
  switch(a1)
  {
    case 1:
      v3 = 1768449398;
      goto LABEL_8;
    case 2:
      result = 0x69626F6D6F747561;
      break;
    case 3:
      result = 1885956211;
      break;
    case 4:
      result = 0x656E616C70;
      break;
    case 5:
      v3 = 2036558178;
LABEL_8:
      result = v3 | 0x656C6300000000;
      break;
    case 6:
      result = 0x69746F6D6F636F6CLL;
      break;
    case 7:
      result = 7566690;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABE87088(uint64_t a1)
{
  v2 = sub_1ABE87D24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE870C4(uint64_t a1)
{
  v2 = sub_1ABE87D24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE87100(uint64_t a1)
{
  v2 = sub_1ABE87C28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE8713C(uint64_t a1)
{
  v2 = sub_1ABE87C28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE87178(uint64_t a1)
{
  v2 = sub_1ABE87B80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE871B4(uint64_t a1)
{
  v2 = sub_1ABE87B80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE871F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE86D34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE87220(uint64_t a1)
{
  v2 = sub_1ABE87B2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE8725C(uint64_t a1)
{
  v2 = sub_1ABE87B2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE87298(uint64_t a1)
{
  v2 = sub_1ABE87BD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE872D4(uint64_t a1)
{
  v2 = sub_1ABE87BD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE87310(uint64_t a1)
{
  v2 = sub_1ABE87DCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE8734C(uint64_t a1)
{
  v2 = sub_1ABE87DCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE87388(uint64_t a1)
{
  v2 = sub_1ABE87C7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE873C4(uint64_t a1)
{
  v2 = sub_1ABE87C7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE87400(uint64_t a1)
{
  v2 = sub_1ABE87CD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE8743C(uint64_t a1)
{
  v2 = sub_1ABE87CD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE87478(uint64_t a1)
{
  v2 = sub_1ABE87D78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE874B4(uint64_t a1)
{
  v2 = sub_1ABE87D78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TransportationActivityEventType.encode(to:)(void *a1)
{
  v2 = v1;
  sub_1ABAD219C(&qword_1EB4DB970, &qword_1ABF70810);
  sub_1ABA7BB64();
  v66 = v5;
  v67 = v4;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7FBE0();
  v65 = v7;
  sub_1ABAD219C(&qword_1EB4DB978, &qword_1ABF70818);
  sub_1ABA7BB64();
  v63 = v9;
  v64 = v8;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7FBE0();
  v62 = v11;
  sub_1ABAD219C(&qword_1EB4DB980, &qword_1ABF70820);
  sub_1ABA7BB64();
  v60 = v13;
  v61 = v12;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7FBE0();
  v59 = v15;
  sub_1ABAD219C(&qword_1EB4DB988, &qword_1ABF70828);
  sub_1ABA7BB64();
  v57 = v17;
  v58 = v16;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7FBE0();
  v56 = v19;
  sub_1ABAD219C(&qword_1EB4DB990, &qword_1ABF70830);
  sub_1ABA7BB64();
  v54 = v21;
  v55 = v20;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA7FBE0();
  v53 = v23;
  sub_1ABAD219C(&qword_1EB4DB998, &qword_1ABF70838);
  sub_1ABA7BB64();
  v51 = v25;
  v52 = v24;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA7FBE0();
  v50 = v27;
  v49 = sub_1ABAD219C(&qword_1EB4DB9A0, &qword_1ABF70840);
  sub_1ABA7BB64();
  v48 = v28;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v47 - v30;
  v32 = sub_1ABAD219C(&qword_1EB4DB9A8, &qword_1ABF70848);
  sub_1ABA7BB64();
  v47 = v33;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v47 - v35;
  v68 = sub_1ABAD219C(&qword_1EB4DB9B0, &qword_1ABF70850);
  sub_1ABA7BB64();
  v38 = v37;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v47 - v40;
  v42 = *v2;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE87B2C();
  sub_1ABF252E4();
  switch(v42)
  {
    case 1:
      v70 = 1;
      sub_1ABE87D78();
      sub_1ABA7C860(&type metadata for TransportationActivityEventType.VehicleCodingKeys, &v70);
      (*(v48 + 8))(v31, v49);
      return (*(v38 + 8))(v41, v38);
    case 2:
      v71 = 2;
      sub_1ABE87D24();
      v43 = v50;
      sub_1ABA7E0C0(&type metadata for TransportationActivityEventType.AutomobileCodingKeys, &v71);
      v45 = v51;
      v44 = v52;
      goto LABEL_10;
    case 3:
      v72 = 3;
      sub_1ABE87CD0();
      v43 = v53;
      sub_1ABA7E0C0(&type metadata for TransportationActivityEventType.ShipCodingKeys, &v72);
      v45 = v54;
      v44 = v55;
      goto LABEL_10;
    case 4:
      v73 = 4;
      sub_1ABE87C7C();
      v43 = v56;
      sub_1ABA7E0C0(&type metadata for TransportationActivityEventType.PlaneCodingKeys, &v73);
      v45 = v57;
      v44 = v58;
      goto LABEL_10;
    case 5:
      v74 = 5;
      sub_1ABE87C28();
      v43 = v59;
      sub_1ABA7E0C0(&type metadata for TransportationActivityEventType.BicycleCodingKeys, &v74);
      v45 = v60;
      v44 = v61;
      goto LABEL_10;
    case 6:
      v75 = 6;
      sub_1ABE87BD4();
      v43 = v62;
      sub_1ABA7E0C0(&type metadata for TransportationActivityEventType.LocomotiveTrainCodingKeys, &v75);
      v45 = v63;
      v44 = v64;
      goto LABEL_10;
    case 7:
      v76 = 7;
      sub_1ABE87B80();
      v43 = v65;
      sub_1ABA7E0C0(&type metadata for TransportationActivityEventType.BusCodingKeys, &v76);
      v45 = v66;
      v44 = v67;
LABEL_10:
      (*(v45 + 8))(v43, v44);
      break;
    default:
      v69 = 0;
      sub_1ABE87DCC();
      sub_1ABA7C860(&type metadata for TransportationActivityEventType.OnFootCodingKeys, &v69);
      (*(v47 + 8))(v36, v32);
      break;
  }

  return (*(v38 + 8))(v41, v38);
}

unint64_t sub_1ABE87B2C()
{
  result = qword_1EB4DB9B8;
  if (!qword_1EB4DB9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB9B8);
  }

  return result;
}

unint64_t sub_1ABE87B80()
{
  result = qword_1EB4DB9C0;
  if (!qword_1EB4DB9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB9C0);
  }

  return result;
}

unint64_t sub_1ABE87BD4()
{
  result = qword_1EB4DB9C8;
  if (!qword_1EB4DB9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB9C8);
  }

  return result;
}

unint64_t sub_1ABE87C28()
{
  result = qword_1EB4DB9D0;
  if (!qword_1EB4DB9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB9D0);
  }

  return result;
}

unint64_t sub_1ABE87C7C()
{
  result = qword_1EB4DB9D8;
  if (!qword_1EB4DB9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB9D8);
  }

  return result;
}

unint64_t sub_1ABE87CD0()
{
  result = qword_1EB4DB9E0;
  if (!qword_1EB4DB9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB9E0);
  }

  return result;
}

unint64_t sub_1ABE87D24()
{
  result = qword_1EB4DB9E8;
  if (!qword_1EB4DB9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB9E8);
  }

  return result;
}

unint64_t sub_1ABE87D78()
{
  result = qword_1EB4DB9F0;
  if (!qword_1EB4DB9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB9F0);
  }

  return result;
}

unint64_t sub_1ABE87DCC()
{
  result = qword_1EB4DB9F8;
  if (!qword_1EB4DB9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB9F8);
  }

  return result;
}

uint64_t TransportationActivityEventType.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t TransportationActivityEventType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v85 = a2;
  sub_1ABAD219C(&qword_1EB4DBA00, &qword_1ABF70858);
  sub_1ABA7BB64();
  v80 = v4;
  v81 = v3;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7FBE0();
  v88 = v6;
  sub_1ABAD219C(&qword_1EB4DBA08, &qword_1ABF70860);
  sub_1ABA7BB64();
  v78 = v8;
  v79 = v7;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7FBE0();
  v84 = v10;
  sub_1ABAD219C(&qword_1EB4DBA10, &qword_1ABF70868);
  sub_1ABA7BB64();
  v76 = v12;
  v77 = v11;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7FBE0();
  v87 = v14;
  sub_1ABAD219C(&qword_1EB4DBA18, &qword_1ABF70870);
  sub_1ABA7BB64();
  v74 = v15;
  v75 = v16;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7FBE0();
  v83 = v18;
  v70 = sub_1ABAD219C(&qword_1EB4DBA20, &qword_1ABF70878);
  sub_1ABA7BB64();
  v73 = v19;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA7FBE0();
  v82 = v21;
  sub_1ABAD219C(&qword_1EB4DBA28, &qword_1ABF70880);
  sub_1ABA7BB64();
  v71 = v23;
  v72 = v22;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA7FBE0();
  v86 = v25;
  v69 = sub_1ABAD219C(&qword_1EB4DBA30, &qword_1ABF70888);
  sub_1ABA7BB64();
  v68 = v26;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v62 - v28;
  v30 = sub_1ABAD219C(&qword_1EB4DBA38, &qword_1ABF70890);
  sub_1ABA7BB64();
  v67 = v31;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v62 - v33;
  sub_1ABAD219C(&qword_1EB4DBA40, &unk_1ABF70898);
  sub_1ABA7BB64();
  v36 = v35;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  v38 = a1[3];
  v89 = a1;
  sub_1ABA93E20(a1, v38);
  sub_1ABE87B2C();
  v39 = v90;
  sub_1ABF252C4();
  if (v39)
  {
    goto LABEL_8;
  }

  v65 = v34;
  v64 = v30;
  v66 = v29;
  v40 = v86;
  v90 = v36;
  sub_1ABF24EA4();
  result = sub_1ABAD4EA4();
  if (v43 == v44 >> 1)
  {
LABEL_7:
    v53 = sub_1ABF24B44();
    swift_allocError();
    v55 = v54;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v55 = &type metadata for TransportationActivityEventType;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x1E69E6AF8], v53);
    swift_willThrow();
    swift_unknownObjectRelease();
    v56 = sub_1ABA81D30();
    v57(v56);
LABEL_8:
    v58 = v89;
    return sub_1ABA84B54(v58);
  }

  v62 = 0;
  if (v43 < (v44 >> 1))
  {
    v63 = *(v42 + v43);
    sub_1ABAD4E90();
    v46 = v45;
    v48 = v47;
    swift_unknownObjectRelease();
    if (v46 == v48 >> 1)
    {
      v49 = v85;
      switch(v63)
      {
        case 1:
          v92 = 1;
          sub_1ABE87D78();
          sub_1ABA7FA50(&type metadata for TransportationActivityEventType.VehicleCodingKeys, &v92);
          swift_unknownObjectRelease();
          v50 = sub_1ABA90498();
          v52 = &v100;
          goto LABEL_15;
        case 2:
          v93 = 2;
          sub_1ABE87D24();
          sub_1ABA7EC1C(&type metadata for TransportationActivityEventType.AutomobileCodingKeys, &v93);
          swift_unknownObjectRelease();
          (*(v71 + 8))(v40, v72);
          goto LABEL_20;
        case 3:
          v94 = 3;
          sub_1ABE87CD0();
          sub_1ABA7FA50(&type metadata for TransportationActivityEventType.ShipCodingKeys, &v94);
          swift_unknownObjectRelease();
          v50 = sub_1ABA90498();
          v59 = v70;
          break;
        case 4:
          v95 = 4;
          sub_1ABE87C7C();
          sub_1ABA7FA50(&type metadata for TransportationActivityEventType.PlaneCodingKeys, &v95);
          swift_unknownObjectRelease();
          goto LABEL_18;
        case 5:
          v96 = 5;
          sub_1ABE87C28();
          sub_1ABA7EC1C(&type metadata for TransportationActivityEventType.BicycleCodingKeys, &v96);
          swift_unknownObjectRelease();
          goto LABEL_18;
        case 6:
          v97 = 6;
          sub_1ABE87BD4();
          sub_1ABA7FA50(&type metadata for TransportationActivityEventType.LocomotiveTrainCodingKeys, &v97);
          swift_unknownObjectRelease();
          goto LABEL_18;
        case 7:
          v98 = 7;
          sub_1ABE87B80();
          sub_1ABA7FA50(&type metadata for TransportationActivityEventType.BusCodingKeys, &v98);
          swift_unknownObjectRelease();
LABEL_18:
          v50 = sub_1ABA90498();
          break;
        default:
          v91 = 0;
          sub_1ABE87DCC();
          sub_1ABA7FA50(&type metadata for TransportationActivityEventType.OnFootCodingKeys, &v91);
          swift_unknownObjectRelease();
          v50 = sub_1ABA90498();
          v52 = &v99;
LABEL_15:
          v59 = *(v52 - 32);
          break;
      }

      v51(v50, v59);
LABEL_20:
      v60 = sub_1ABA81D30();
      v61(v60);
      v58 = v89;
      *v49 = v63;
      return sub_1ABA84B54(v58);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unint64_t sub_1ABE88770()
{
  result = qword_1EB4DBA48;
  if (!qword_1EB4DBA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBA48);
  }

  return result;
}

_BYTE *sub_1ABE887D4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABE88934()
{
  result = qword_1EB4DBA50;
  if (!qword_1EB4DBA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBA50);
  }

  return result;
}

unint64_t sub_1ABE8898C()
{
  result = qword_1EB4DBA58;
  if (!qword_1EB4DBA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBA58);
  }

  return result;
}

unint64_t sub_1ABE889E4()
{
  result = qword_1EB4DBA60;
  if (!qword_1EB4DBA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBA60);
  }

  return result;
}

unint64_t sub_1ABE88A3C()
{
  result = qword_1EB4DBA68;
  if (!qword_1EB4DBA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBA68);
  }

  return result;
}

unint64_t sub_1ABE88A94()
{
  result = qword_1EB4DBA70;
  if (!qword_1EB4DBA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBA70);
  }

  return result;
}

unint64_t sub_1ABE88AEC()
{
  result = qword_1EB4DBA78;
  if (!qword_1EB4DBA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBA78);
  }

  return result;
}

unint64_t sub_1ABE88B44()
{
  result = qword_1EB4DBA80;
  if (!qword_1EB4DBA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBA80);
  }

  return result;
}

unint64_t sub_1ABE88B9C()
{
  result = qword_1EB4DBA88;
  if (!qword_1EB4DBA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBA88);
  }

  return result;
}

unint64_t sub_1ABE88BF4()
{
  result = qword_1EB4DBA90;
  if (!qword_1EB4DBA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBA90);
  }

  return result;
}

unint64_t sub_1ABE88C4C()
{
  result = qword_1EB4DBA98;
  if (!qword_1EB4DBA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBA98);
  }

  return result;
}

unint64_t sub_1ABE88CA4()
{
  result = qword_1EB4DBAA0;
  if (!qword_1EB4DBAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBAA0);
  }

  return result;
}

unint64_t sub_1ABE88CFC()
{
  result = qword_1EB4DBAA8;
  if (!qword_1EB4DBAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBAA8);
  }

  return result;
}

unint64_t sub_1ABE88D54()
{
  result = qword_1EB4DBAB0;
  if (!qword_1EB4DBAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBAB0);
  }

  return result;
}

unint64_t sub_1ABE88DAC()
{
  result = qword_1EB4DBAB8;
  if (!qword_1EB4DBAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBAB8);
  }

  return result;
}

unint64_t sub_1ABE88E04()
{
  result = qword_1EB4DBAC0;
  if (!qword_1EB4DBAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBAC0);
  }

  return result;
}

unint64_t sub_1ABE88E5C()
{
  result = qword_1EB4DBAC8;
  if (!qword_1EB4DBAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBAC8);
  }

  return result;
}

unint64_t sub_1ABE88EB4()
{
  result = qword_1EB4DBAD0;
  if (!qword_1EB4DBAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBAD0);
  }

  return result;
}

unint64_t sub_1ABE88F0C()
{
  result = qword_1EB4DBAD8;
  if (!qword_1EB4DBAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBAD8);
  }

  return result;
}

unint64_t sub_1ABE88F64()
{
  result = qword_1EB4DBAE0;
  if (!qword_1EB4DBAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBAE0);
  }

  return result;
}

uint64_t TrialAssetManager.__allocating_init(refreshPolicy:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() clientWithIdentifier_];
  sub_1ABA8FE90();
  swift_allocObject();
  return sub_1ABE8D260(v2, v1);
}

uint64_t TrialAssetManager.asset(for:in:assetType:downloadOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5, _WORD *a6)
{
  *(v7 + 32) = a3;
  *(v7 + 40) = v6;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v11 = type metadata accessor for TrialAssetManager.AssetLocalAvailabilityInfo(0);
  sub_1ABA7AB80(v11);
  *(v7 + 48) = sub_1ABA96BDC();
  *(v7 + 56) = swift_task_alloc();
  *(v7 + 64) = swift_task_alloc();
  *(v7 + 72) = swift_task_alloc();
  *(v7 + 109) = *a4;
  *(v7 + 110) = *a5;
  *(v7 + 104) = *a6;
  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABE892CC()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  v4 = *v1;
  sub_1ABA7BBC0();
  *v5 = v4;
  *(v6 + 96) = v0;

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABE893C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = v8;
  v9 = *(v8 + 96);
  TrialAssetManager.locallyAvailableAsset(for:in:assetType:)(*(v8 + 24), *(v8 + 32), &v29, v30, a5, a6, a7, a8, v27, *v28, *&v28[4], *(v8 + 109), *(v8 + 110), *&v30[1], v31, v32, v33, v34, v35, v36, v8, v38, v39);
  if (v9)
  {
    sub_1ABA8FC98();
LABEL_5:
    sub_1ABE8F604(v10, v11);

    sub_1ABA7BBE0();
    goto LABEL_6;
  }

  v12 = *(v8 + 80);
  v13 = *(v8 + 48);
  sub_1ABA7E0E4();
  sub_1ABE8F5A8(v14, v13, v15);
  v16 = sub_1ABA7E1E0(v13, 1, v12);
  v17 = *(v8 + 72);
  v18 = *(v8 + 48);
  v19 = *(v8 + 56);
  if (v16 == 1)
  {
    v20 = *(v8 + 109);
    v22 = *(v8 + 24);
    v21 = *(v8 + 32);
    sub_1ABE8F604(*(v8 + 48), type metadata accessor for TrialAssetManager.AssetLocalAvailabilityInfo);
    sub_1ABE8E6F4();
    sub_1ABA7D104();
    swift_allocError();
    *v23 = v22;
    *(v23 + 8) = v21;
    *(v23 + 16) = v20 | 0x80;
    swift_willThrow();

    sub_1ABE8F604(v19, type metadata accessor for TrialAssetManager.AssetLocalAvailabilityInfo);
    v10 = v17;
    v11 = type metadata accessor for TrialAssetManager.AssetLocalAvailabilityInfo;
    goto LABEL_5;
  }

  v26 = *(v8 + 16);
  sub_1ABE8F604(*(v8 + 56), type metadata accessor for TrialAssetManager.AssetLocalAvailabilityInfo);
  sub_1ABE8F604(v17, type metadata accessor for TrialAssetManager.AssetLocalAvailabilityInfo);
  sub_1ABE8E748(v18, v26);

  sub_1ABA7BBE0();
LABEL_6:

  return v24();
}

uint64_t sub_1ABE895B0()
{
  sub_1ABA8FC98();
  sub_1ABE8F604(v0, v1);

  sub_1ABA7BBE0();

  return v2();
}

void TrialAssetManager.locallyAvailableAsset(for:in:assetType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  a22 = v25;
  a23 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v91 = v35;
  v36 = sub_1ABAD219C(&qword_1EB4D1E40, &qword_1ABF349F0);
  sub_1ABA7AB80(v36);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  v88 = &v81 - v38;
  sub_1ABF21C24();
  sub_1ABA7BB64();
  v84 = v40;
  v85 = v39;
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v81 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABF21CF4();
  sub_1ABA7BB64();
  v86 = v44;
  v87 = v43;
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v81 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *v30;
  v48 = *v28;
  LOBYTE(v92[0]) = *v30;
  *&v89 = v23;
  v49 = sub_1ABE8D664(v34, v32, v92);
  if (!v49)
  {
    sub_1ABE8E6F4();
    sub_1ABA7D104();
    swift_allocError();
    *v59 = v34;
    *(v59 + 8) = v32;
    *(v59 + 16) = v47;
    swift_willThrow();

LABEL_24:
    sub_1ABA7BC90();
    return;
  }

  v50 = v49;
  v83 = v24;
  if (v48)
  {
    v51 = [v49 directoryValue];
    if (v51)
    {
      v82 = sub_1ABE8F458(v51);
      *&v90 = v52;
      v53 = [v50 directoryValue];
      if (v53)
      {
        v54 = v53;
        v55 = [v53 requiresDownload];

        if (!v55)
        {
          goto LABEL_6;
        }

LABEL_14:

        v65 = type metadata accessor for TrialAssetManager.Asset(0);
        sub_1ABA7B9B4(v91, 1, 1, v65);
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v60 = [v49 fileValue];
  if (!v60)
  {
    goto LABEL_26;
  }

  v82 = sub_1ABE8F458(v60);
  *&v90 = v61;
  v62 = [v50 fileValue];
  if (v62)
  {
    v63 = v62;
    v64 = [v62 requiresDownload];

    if ((v64 & 1) == 0)
    {
LABEL_6:
      if (v90)
      {
        v56 = [v50 metadata];
        if (!v56 || (v57 = v56, *&v92[0] = 0, sub_1ABF23964(), v57, (v58 = *&v92[0]) == 0))
        {
          if (qword_1ED871B38 != -1)
          {
            sub_1ABA7DE3C();
            swift_once();
          }

          v66 = sub_1ABF237F4();
          sub_1ABA7AA24(v66, qword_1ED871B40);
          v67 = sub_1ABF237D4();
          v68 = sub_1ABF24664();
          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            *v69 = 0;
            _os_log_impl(&dword_1ABA78000, v67, v68, "level.metadata is not [String: String]", v69, 2u);
            MEMORY[0x1AC5AB8B0](v69, -1, -1);
          }

          v58 = sub_1ABF239C4();
        }

        v70 = MEMORY[0x1E6968F58];
        if (!v48)
        {
          v70 = MEMORY[0x1E6968F68];
        }

        (*(v84 + 104))(v42, *v70, v85);
        v71 = v87;
        v72 = sub_1ABAA2078();
        sub_1ABA7B9B4(v72, v73, 1, v71);
        sub_1ABF21CD4();
        a13 = v47;
        TrialAssetManager.experimentIdentifiers(for:)(&a13, v92);

        v74 = v93;
        v75 = *(v86 + 32);
        v89 = v92[1];
        v90 = v92[0];
        v76 = v91;
        v75(v91, v46, v71);
        v77 = type metadata accessor for TrialAssetManager.Asset(0);
        *(v76 + *(v77 + 20)) = v58;
        v78 = v76 + *(v77 + 24);
        v79 = v89;
        *v78 = v90;
        *(v78 + 16) = v79;
        *(v78 + 32) = v74;
        sub_1ABA7B9B4(v76, 0, 1, v77);
      }

      else
      {
        sub_1ABE8E6F4();
        sub_1ABA7D104();
        swift_allocError();
        *v80 = v34;
        *(v80 + 8) = v32;
        *(v80 + 16) = v47 | 0x40;
        swift_willThrow();
      }

      goto LABEL_24;
    }

    goto LABEL_14;
  }

LABEL_28:
  __break(1u);
}

uint64_t TrialAssetManager.assets(for:in:downloadOptions:)(uint64_t a1, _BYTE *a2, _WORD *a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v7 = sub_1ABAD219C(&qword_1EB4DBB00, &qword_1ABF34A00);
  *(v4 + 32) = v7;
  *(v4 + 40) = *(v7 - 8);
  *(v4 + 48) = sub_1ABA96BDC();
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  v8 = type metadata accessor for TrialAssetManager.Asset(0);
  *(v4 + 112) = v8;
  sub_1ABA7AB80(v8);
  *(v4 + 120) = sub_1ABA96BDC();
  *(v4 + 128) = swift_task_alloc();
  v9 = type metadata accessor for TrialAssetManager.AssetLocalAvailabilityInfo(0);
  sub_1ABA7AB80(v9);
  *(v4 + 136) = sub_1ABA96BDC();
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 221) = *a2;
  *(v4 + 216) = *a3;
  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

void sub_1ABE89D00()
{
  v124 = v0;
  v1 = v0;
  v112 = *(v0 + 40);
  v2 = *(v0 + 16);
  v120 = sub_1ABF239C4();
  v107 = sub_1ABF239C4();
  v3 = v2 + 64;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v7 = (63 - v5) >> 6;
  v116 = v2;

  v8 = 0;
  v118 = v0;
  v114 = v7;
  v110 = v3;
  while (1)
  {
    *(v1 + 168) = v107;
    *(v1 + 176) = v120;
    *(v1 + 184) = v120;
    if (!v6)
    {
      break;
    }

LABEL_9:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(v116 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(v116 + 56) + v11);
    HIBYTE(v122) = *(v1 + 221);
    LOBYTE(v123) = v15;

    TrialAssetManager.locallyAvailableAsset(for:in:assetType:)(v13, v14, &v122 + 7, &v123, v16, v17, v18, v19, v102, v104, SWORD2(v104), SBYTE6(v104), SHIBYTE(v104), v105, v107, v110, v112, v114, v116, v118, v120, v122, v123);
    v106 = v13;
    v20 = *(v1 + 152);
    v21 = *(v1 + 112);
    sub_1ABA7E0E4();
    sub_1ABE8F5A8(v22, v20, v23);
    v24 = sub_1ABAA2078();
    if (sub_1ABA7E1E0(v24, v25, v21) == 1)
    {
      v64 = v115;
      v65 = v108;
      swift_isUniquelyReferenced_nonNull_native();
      v123 = v108;
      v72 = sub_1ABA94FC8(v13, v14, v66, v67, v68, v69, v70, v71, v103, v14, v13, v108, v111, v113, v115, v117, v119, v121);
      if (__OFADD__(*(v65 + 16), (v73 & 1) == 0))
      {
        goto LABEL_42;
      }

      v74 = v72;
      v75 = v73;
      sub_1ABAD219C(&qword_1EB4DBB10, &qword_1ABF710C0);
      if (sub_1ABF24C64())
      {
        v82 = sub_1ABA94FC8(v105, v104, v76, v77, v78, v79, v80, v81, v102, v104, v105, v109, v110, v112, v114, v116, v118, v120);
        if ((v75 & 1) != (v83 & 1))
        {
LABEL_36:
          sub_1ABAB5E0C();

          sub_1ABF25104();
          return;
        }

        v74 = v82;
        v7 = v64;
      }

      else
      {
        v7 = v64;
      }

      v1 = v118;
      v61 = *(v118 + 160);
      if (v75)
      {

        v107 = v123;
        *(v123[7] + v74) = v15;
        goto LABEL_19;
      }

      v84 = v123;
      sub_1ABA7E6B4(&v123[v74 >> 6]);
      v85 = (v84[6] + 16 * v74);
      *v85 = v105;
      v85[1] = v86;
      *(v84[7] + v74) = v15;
      sub_1ABA8FC98();
      sub_1ABE8F604(v61, v87);
      v88 = v84[2];
      v40 = __OFADD__(v88, 1);
      v89 = v88 + 1;
      if (v40)
      {
        goto LABEL_43;
      }

      v107 = v84;
      v84[2] = v89;
    }

    else
    {
      v27 = *(v1 + 96);
      v26 = *(v1 + 104);
      sub_1ABE8E748(*(v1 + 152), *(v1 + 128));
      v28 = sub_1ABA81D44();
      sub_1ABE8F5A8(v28, v26, v29);
      swift_storeEnumTagMultiPayload();
      sub_1ABE8F4C8(v26, v27);
      swift_isUniquelyReferenced_nonNull_native();
      v123 = v121;
      v30 = v14;
      v31 = v106;
      sub_1ABA94FC8(v106, v14, v32, v33, v34, v35, v36, v37, v103, v14, v106, v108, v111, v113, v115, v117, v119, v121);
      sub_1ABAA5B0C();
      if (v40)
      {
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        return;
      }

      v41 = v38;
      v42 = v39;
      sub_1ABAD219C(&qword_1EB4DBB08, &qword_1ABF710B8);
      v43 = sub_1ABF24C64();
      v120 = v123;
      if (v43)
      {
        v50 = sub_1ABA94FC8(v31, v14, v44, v45, v46, v47, v48, v49, v102, v104, v105, v107, v110, v112, v114, v116, v118, v123);
        if ((v42 & 1) != (v51 & 1))
        {
          goto LABEL_36;
        }

        v41 = v50;
      }

      v1 = v118;
      v7 = v114;
      if (v42)
      {
        sub_1ABA976CC();
        sub_1ABE8F538(v54, v52 + v53 * v41);
      }

      else
      {
        sub_1ABA7E6B4(v120 + 8 * (v41 >> 6));
        v55 = (*(v120 + 48) + 16 * v41);
        *v55 = v105;
        v55[1] = v30;
        sub_1ABA976CC();
        sub_1ABE8F4C8(v58, v56 + v57 * v41);
        v59 = *(v120 + 16);
        v40 = __OFADD__(v59, 1);
        v60 = v59 + 1;
        if (v40)
        {
          goto LABEL_41;
        }

        *(v120 + 16) = v60;
      }

      v61 = *(v118 + 160);
      sub_1ABA904A4();
      sub_1ABE8F604(v62, v63);
LABEL_19:
      sub_1ABE8F604(v61, type metadata accessor for TrialAssetManager.AssetLocalAvailabilityInfo);
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      __break(1u);
      __break(1u);
      goto LABEL_40;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  if (!*(v107 + 16))
  {

    sub_1ABA82A20();
    sub_1ABAB5E0C();

    __asm { BRAA            X2, X16 }
  }

  v90 = *(v1 + 216);
  v91 = *(v1 + 221);

  v93 = sub_1ABE8AFAC(v92);
  *(v1 + 220) = v91;
  *(v1 + 192) = v93;
  *(v1 + 218) = v90;
  v94 = swift_task_alloc();
  *(v1 + 200) = v94;
  *v94 = v1;
  v94[1] = sub_1ABE8A460;
  sub_1ABAA2E64();
  sub_1ABAB5E0C();

  TrialAssetManager.downloadOnDemandAssets(for:in:downloadOptions:)(v95, v96, v97);
}

uint64_t sub_1ABE8A460()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D4E0();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  *(v3 + 208) = v0;

  if (v0)
  {
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

void sub_1ABE8A580()
{
  v118 = v0;
  v1 = 0;
  v2 = *(v0 + 176);
  v3 = *(v0 + 168);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v105 = v5;
  v107 = *(v0 + 168);
  v7 = -1;
  v8 = -1 << *(v107 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  LODWORD(v101) = *(v0 + 221) | 0xFFFFFF80;
  v11 = *(v0 + 208);
  v12 = *(v0 + 184);
  v103 = v10;
  if ((v7 & v4) != 0)
  {
LABEL_8:
    while (1)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v15 = v14 | (v1 << 6);
      v16 = (*(v107 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      LOBYTE(v15) = *(*(v107 + 56) + v15);
      HIBYTE(v112) = *(v0 + 221);
      LOBYTE(v113) = v15;

      TrialAssetManager.locallyAvailableAsset(for:in:assetType:)(v17, v18, &v112 + 7, &v113, v19, v20, v21, v22, v99, v101, SWORD2(v101), SBYTE6(v101), SHIBYTE(v101), v103, v105, v107, v17, v112, v113, v114, v115, v116, v117);
      if (v11)
      {
        break;
      }

      v24 = *(v0 + 136);
      v25 = *(v0 + 112);
      sub_1ABA7E0E4();
      sub_1ABE8F5A8(v26, v24, v27);
      v28 = sub_1ABAA2078();
      if (sub_1ABA7E1E0(v28, v29, v25) == 1)
      {
        v30 = *(v0 + 144);
        sub_1ABE8F604(*(v0 + 136), type metadata accessor for TrialAssetManager.AssetLocalAvailabilityInfo);
        sub_1ABE8E6F4();
        sub_1ABA7D104();
        v23 = swift_allocError();
        *v31 = v109;
        *(v31 + 8) = v18;
        *(v31 + 16) = v102;
        swift_willThrow();

        sub_1ABE8F604(v30, type metadata accessor for TrialAssetManager.AssetLocalAvailabilityInfo);
        goto LABEL_12;
      }

      v64 = *(v0 + 80);
      v63 = *(v0 + 88);
      sub_1ABE8E748(*(v0 + 136), *(v0 + 120));
      v65 = sub_1ABA81D44();
      sub_1ABE8F5A8(v65, v63, v66);
      swift_storeEnumTagMultiPayload();
      sub_1ABE8F4C8(v63, v64);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1ABAA3AD0(isUniquelyReferenced_nonNull_native, v68, v69, v70, v71, v72, v73, v74, v100, v102, v104, v106, v108, v109, v112, v2, v114, v115);
      sub_1ABAA5B0C();
      if (v61)
      {
        goto LABEL_40;
      }

      v77 = v75;
      v78 = v76;
      sub_1ABAD219C(&qword_1EB4DBB08, &qword_1ABF710B8);
      v79 = sub_1ABF24C64();
      v2 = v113;
      if (v79)
      {
        v87 = sub_1ABAA3AD0(v79, v80, v81, v82, v83, v84, v85, v86, v99, v101, v103, v105, v107, v111, v112, v113, v114, v115);
        if ((v78 & 1) != (v88 & 1))
        {
LABEL_34:

          sub_1ABF25104();
          return;
        }

        v77 = v87;
      }

      v89 = *(v0 + 80);
      v90 = *(v0 + 40);
      if (v78)
      {
        sub_1ABE8F538(v89, v2[7] + *(v90 + 72) * v77);
      }

      else
      {
        v2[(v77 >> 6) + 8] |= 1 << v77;
        v91 = (v2[6] + 16 * v77);
        *v91 = v111;
        v91[1] = v18;
        sub_1ABE8F4C8(v89, v2[7] + *(v90 + 72) * v77);
        v92 = v2[2];
        v61 = __OFADD__(v92, 1);
        v93 = v92 + 1;
        if (v61)
        {
          goto LABEL_41;
        }

        v2[2] = v93;
      }

      v94 = *(v0 + 144);
      sub_1ABA904A4();
      sub_1ABE8F604(v95, v96);
      sub_1ABA8FC98();
      sub_1ABE8F604(v94, v97);
LABEL_29:
      v11 = 0;
      v12 = v2;
      v10 = v103;
      v5 = v105;
      if (!v9)
      {
        goto LABEL_4;
      }
    }

    v23 = v11;
LABEL_12:
    v32 = *(v0 + 48);
    v33 = *(v0 + 56);
    *v33 = v23;
    swift_storeEnumTagMultiPayload();
    sub_1ABE8F4C8(v33, v32);
    v34 = v23;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v43 = sub_1ABAA3AD0(v35, v36, v37, v38, v39, v40, v41, v42, v100, v102, v104, v106, v108, v109, v112, v2, v114, v115);
    if (__OFADD__(v2[2], (v44 & 1) == 0))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return;
    }

    v45 = v43;
    v46 = v44;
    sub_1ABAD219C(&qword_1EB4DBB08, &qword_1ABF710B8);
    if (sub_1ABF24C64())
    {
      v53 = sub_1ABA94FC8(v110, v18, v47, v48, v49, v50, v51, v52, v99, v101, v103, v105, v107, v110, v112, v113, v114, v115);
      if ((v46 & 1) != (v54 & 1))
      {
        goto LABEL_34;
      }

      v45 = v53;
    }

    if (v46)
    {

      v2 = v113;
      v55 = sub_1ABA95998();
      sub_1ABE8F538(v55, v56);
    }

    else
    {
      v2 = v113;
      sub_1ABA7E6B4(&v113[v45 >> 6]);
      v57 = (v2[6] + 16 * v45);
      *v57 = v110;
      v57[1] = v18;
      v58 = sub_1ABA95998();
      sub_1ABE8F4C8(v58, v59);

      v60 = v2[2];
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        goto LABEL_39;
      }

      v2[2] = v62;
    }

    goto LABEL_29;
  }

  while (1)
  {
LABEL_4:
    v13 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v5 + 8 * v13);
    ++v1;
    if (v9)
    {
      v1 = v13;
      goto LABEL_8;
    }
  }

  sub_1ABA82A20();

  v98(v12);
}

uint64_t sub_1ABE8AAC8()
{

  sub_1ABA7BBE0();

  return v0();
}

IntelligencePlatform::TrialNamespace_optional __swiftcall TrialNamespace.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1ABE8AC38()
{
  sub_1ABA8E0FC();
  v2 = sub_1ABB668FC();
  v7 = MEMORY[0x1AC5A9A10](v1, &type metadata for EntityIdentifier, v2);
  v3 = *(v0 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_1ABB180F8(&v6, *(v0 + v4));
      v4 += 8;
      --v3;
    }

    while (v3);

    return v7;
  }

  else
  {
    sub_1ABA7D1BC();
  }

  return v1;
}

void sub_1ABE8ACC8()
{
  sub_1ABA8E0FC();
  v5 = sub_1ABAE4254();
  MEMORY[0x1AC5A9A10](v1, &type metadata for EntityPredicate, v5);
  sub_1ABAA2740();
  while (1)
  {
    if (v3 == v2)
    {

      return;
    }

    sub_1ABAA2428();
    if (v6)
    {
      break;
    }

    v7 = *(v0 + v4 + 16);
    v9[0] = *(v0 + v4);
    v9[1] = v7;
    v10 = *(v0 + v4 + 32);
    ++v2;
    sub_1ABAFF1DC(v9, &v8);
    sub_1ABB181BC(&v8, v9);

    v4 += 40;
  }

  __break(1u);
}

void sub_1ABE8AD8C()
{
  sub_1ABA8E0FC();
  v2 = sub_1ABE90534();
  v3 = 0;
  v9 = MEMORY[0x1AC5A9A10](v1, &type metadata for KnosisFact, v2);
  v4 = *(v0 + 16);
  for (i = 32; ; i += 144)
  {
    if (v4 == v3)
    {

      return;
    }

    sub_1ABAA2428();
    if (v6)
    {
      break;
    }

    memcpy(__dst, (v0 + i), sizeof(__dst));
    ++v3;
    sub_1ABAE42A8(__dst, v8);
    sub_1ABB182BC();
    memcpy(v8, __src, sizeof(v8));
    sub_1ABAE4304(v8);
  }

  __break(1u);
}

uint64_t sub_1ABE8AE5C(uint64_t a1)
{
  result = MEMORY[0x1AC5A9A10](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1ABB1840C(v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABE8AFAC(uint64_t a1)
{
  result = MEMORY[0x1AC5A9A10](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1ABB1840C(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1ABE8B0FC()
{
  sub_1ABA8E0FC();
  v5 = sub_1ABBD8A8C();
  MEMORY[0x1AC5A9A10](v1, &type metadata for EntityClass, v5);
  sub_1ABAA2740();
  while (1)
  {
    if (v3 == v2)
    {

      return;
    }

    sub_1ABAA2428();
    if (v6)
    {
      break;
    }

    v7 = *(v0 + v4 + 16);
    v9[0] = *(v0 + v4);
    v9[1] = v7;
    v10 = *(v0 + v4 + 32);
    ++v2;
    sub_1ABAFF06C(v9, &v8);
    sub_1ABB18C34(&v8, v9);

    v4 += 40;
  }

  __break(1u);
}

void sub_1ABE8B1C0()
{
  sub_1ABA8E0FC();
  v2 = sub_1ABB5D228();
  v3 = 0;
  v9 = MEMORY[0x1AC5A9A10](v1, &type metadata for ViewService.DefaultResolverInteractionsView.CandidateID, v2);
  v4 = *(v0 + 16);
  for (i = 32; ; i += 72)
  {
    if (v4 == v3)
    {

      return;
    }

    sub_1ABAA2428();
    if (v6)
    {
      break;
    }

    memcpy(__dst, (v0 + i), 0x41uLL);
    ++v3;
    sub_1ABB24348(__dst, v8);
    sub_1ABB19000(v7, __dst);
    memcpy(v8, v7, 0x41uLL);
    sub_1ABB243A4(v8);
  }

  __break(1u);
}

uint64_t sub_1ABE8B290(uint64_t a1)
{
  v2 = sub_1ABB5D228();
  result = MEMORY[0x1AC5A9A10](0, &type metadata for ViewService.DefaultResolverInteractionsView.CandidateID, v2);
  v4 = 0;
  v12 = result;
  while (1)
  {
    v8 = *(a1 + 16);
    if (v4 == v8)
    {

      return v12;
    }

    if (v4 >= v8)
    {
      break;
    }

    v9 = *(a1 + 32 + 8 * v4);

    ++v4;
    if (v9)
    {
      v5 = 0;
      for (i = (v9 + 32); ; i += 72)
      {
        v7 = *(v9 + 16);
        if (v5 == v7)
        {
          break;
        }

        if (v5 >= v7)
        {
          __break(1u);
          goto LABEL_12;
        }

        memcpy(__dst, i, 0x41uLL);
        ++v5;
        sub_1ABB24348(__dst, v11);
        sub_1ABB19000(v10, __dst);
        memcpy(v11, v10, 0x41uLL);
        result = sub_1ABB243A4(v11);
      }
    }
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1ABE8B3B8(uint64_t a1)
{
  result = MEMORY[0x1AC5A9A10](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 56) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1ABB1840C(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABE8B508(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  v13 = MEMORY[0x1AC5A9A10](v7, a3, v8);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = 32;
    do
    {
      a4(&v12, *(a1 + v10++));
      --v9;
    }

    while (v9);

    return v13;
  }

  else
  {
    sub_1ABA7D1BC();
  }

  return a3;
}

uint64_t sub_1ABE8B698(uint64_t a1)
{
  v7 = MEMORY[0x1AC5A9A10](*(a1 + 16), MEMORY[0x1E69E7360], MEMORY[0x1E69E7370]);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_1ABB19AF4(&v6, *(a1 + v4));
      v4 += 8;
      --v3;
    }

    while (v3);

    return v7;
  }

  else
  {
    sub_1ABA7D1BC();
  }

  return v1;
}

id sub_1ABE8B74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1ABF23BD4();
  v6 = sub_1ABF23BD4();
  v7 = [v4 levelForFactor:v5 withNamespaceName:v6];

  return v7;
}

uint64_t sub_1ABE8B7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = *v7;
  v8[8] = a7;
  v8[9] = v9;
  return MEMORY[0x1EEE6DFA0](sub_1ABE8B7F4, 0, 0);
}

void sub_1ABE8B7F4()
{
  sub_1ABA7BBF8();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1ABE8B8B0;

  JUMPOUT(0x1ABE8B9A4);
}

uint64_t sub_1ABE8B8B0()
{
  sub_1ABA7BBF8();
  v3 = v2;
  sub_1ABA7BC10();
  v4 = *v1;
  sub_1ABA7BBC0();
  *v5 = v4;

  sub_1ABA82A20();
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

uint64_t sub_1ABE8B9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v12 = v9;
  v13 = v9 + 10;
  v14 = sub_1ABF240C4();
  v12[18] = v14;
  v15 = sub_1ABF23BD4();
  v12[19] = v15;
  if (a8)
  {
    v12[14] = a8;
    v12[15] = v20;
    v12[10] = MEMORY[0x1E69E9820];
    v12[11] = 1107296256;
    v12[12] = sub_1ABE8BD20;
    v12[13] = &unk_1F20A04A8;
    a8 = _Block_copy(v13);
  }

  v12[20] = a8;
  v12[2] = v12;
  v12[7] = v12 + 21;
  v12[3] = sub_1ABE8BB9C;
  v16 = swift_continuation_init();
  v12[17] = sub_1ABAD219C(&unk_1EB4DBBC8, &qword_1ABF71B88);
  v12[10] = MEMORY[0x1E69E9820];
  v12[11] = 1107296256;
  v12[12] = sub_1ABE8BD74;
  v12[13] = &unk_1F20A0480;
  v12[14] = v16;
  [v8 downloadLevelsForFactors:v14 withNamespace:v15 queue:a6 options:a7 progress:a8 completion:v13];

  return MEMORY[0x1EEE6DEC8](v12 + 2);
}

uint64_t sub_1ABE8BB9C()
{
  sub_1ABA7D4E0();
  *v3 = v1;
  v4 = *v0;
  *v3 = *v0;
  v5 = *(v2 + 160);
  v6 = *(v2 + 152);
  v7 = *(v2 + 144);
  if (*(v2 + 48))
  {
    swift_willThrow();
    _Block_release(v5);

    v8 = *(v4 + 8);
    v9 = 0;
  }

  else
  {
    v10 = *(v1 + 168);
    _Block_release(*(v2 + 160));

    v8 = *(v4 + 8);
    v9 = v10;
  }

  return v8(v9);
}