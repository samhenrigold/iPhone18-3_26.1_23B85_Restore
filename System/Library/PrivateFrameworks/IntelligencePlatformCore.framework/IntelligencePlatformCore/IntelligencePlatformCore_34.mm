uint64_t sub_1C46F7C68()
{

  return v0;
}

uint64_t sub_1C46F7CD0()
{
  sub_1C46F7C68();

  return swift_deallocClassInstance();
}

unint64_t sub_1C46F7D38()
{
  result = qword_1EDDE1AE0[0];
  if (!qword_1EDDE1AE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDE1AE0);
  }

  return result;
}

uint64_t sub_1C46F7D8C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C6370, &qword_1C4F0E1A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityRelevanceExplainer.FeatureStatistics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C46F7EDC()
{
  result = qword_1EC0BB928[0];
  if (!qword_1EC0BB928[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC0BB928);
  }

  return result;
}

unint64_t sub_1C46F7F34()
{
  result = qword_1EDDE1AD0;
  if (!qword_1EDDE1AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE1AD0);
  }

  return result;
}

unint64_t sub_1C46F7F8C()
{
  result = qword_1EDDE1AD8;
  if (!qword_1EDDE1AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE1AD8);
  }

  return result;
}

unint64_t sub_1C46F7FE0()
{
  result = qword_1EDDE1AC8;
  if (!qword_1EDDE1AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE1AC8);
  }

  return result;
}

uint64_t sub_1C46F8034(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C4F02828();
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
        sub_1C456902C(&qword_1EC0B9460, &qword_1C4F0EFF0);
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C46F81B8(v7, v8, a1, v4);
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
    return sub_1C46F8138(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C46F8138(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3 + 16);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*(v9 - 1) >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        v11 = *(v9 + 1);
        *v9 = *(v9 - 3);
        v9[2] = *(v9 - 1);
        *(v9 - 2) = v11;
        *(v9 - 1) = v7;
        *(v9 - 3) = v10;
        v9 -= 3;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
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

void sub_1C46F81B8(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v89 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v84 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9 + 16);
        v11 = *a3 + 24 * v7;
        v12 = 24 * v7;
        v13 = *(v11 + 16);
        v14 = (v11 + 64);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 3;
          v19 = (v13 < v10) ^ (v16 >= v18);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 24 * v6 - 8;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = (v23 + v20);
                v26 = *v24;
                v27 = v24[1];
                v28 = v24[2];
                v29 = *v25;
                *v24 = *(v25 - 1);
                v24[2] = v29;
                *(v25 - 2) = v26;
                *(v25 - 1) = v27;
                *v25 = v28;
              }

              ++v22;
              v20 -= 24;
              v12 += 24;
            }

            while (v22 < v21);
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
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 24 * v9;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 24 * v9 + 16);
              v34 = v32;
              v35 = v31;
              do
              {
                if (*(v35 - 1) >= v33)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *v35;
                v37 = *(v35 + 1);
                *v35 = *(v35 - 3);
                v35[2] = *(v35 - 1);
                *(v35 - 2) = v37;
                *(v35 - 1) = v33;
                *(v35 - 3) = v36;
                v35 -= 3;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 24;
              --v32;
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

      v86 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458A358();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1C458A358();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v7;
      v42[1] = v86;
      v87 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_56:
            if (v49)
            {
              goto LABEL_96;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_99;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_104;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v40 < 2)
          {
            goto LABEL_98;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_71:
          if (v64)
          {
            goto LABEL_101;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_103;
          }

          if (v71 < v63)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v43 - 1 >= v40)
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

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1C46F8804((*a3 + 24 * *v75), (*a3 + 24 * *v77), *a3 + 24 * v78, v87);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v78 < v76)
          {
            goto LABEL_91;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_92;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_93;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          v5 = 0;
          if (!v81)
          {
            goto LABEL_85;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_94;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_95;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_97;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_100;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_105;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v86;
      a4 = v84;
      if (v86 >= v6)
      {
        v89 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1C46F86CC(&v89, *a1, a3);
LABEL_89:
}

uint64_t sub_1C46F86CC(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C46194F4();
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
    sub_1C46F8804((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
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

uint64_t sub_1C46F8804(char *a1, double *a2, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1C45A3238(a1, (a2 - a1) / 24, a4);
    v10 = &v4[3 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v4[2] >= v6[2])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 3;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 3;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 2) = v12[2];
    *v7 = v14;
    goto LABEL_13;
  }

  sub_1C45A3238(a2, (a3 - a2) / 24, a4);
  v10 = &v4[3 * v9];
LABEL_15:
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v6 - 1) < *(v10 - 1))
    {
      v17 = v6 - 3;
      v13 = v5 + 24 == v6;
      v6 -= 3;
      if (!v13)
      {
        v18 = *v17;
        *(v5 + 16) = v17[2];
        *v5 = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v16 = *(v10 - 3);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v16;
    }

    v10 -= 3;
  }

LABEL_28:
  v19 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[3 * v19])
  {
    memmove(v6, v4, 24 * v19);
  }

  return 1;
}

void sub_1C46F89AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v1, 0);
    v3 = v35;
    v6 = sub_1C4702074(a1);
    v7 = 0;
    v8 = a1 + 64;
    v28 = v1;
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v6 < 1 << *(a1 + 32))
      {
        v9 = v6 >> 6;
        if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v4)
        {
          goto LABEL_24;
        }

        v29 = v5;
        v30 = v7;
        v31 = v4;
        v10 = (*(a1 + 48) + 48 * v6);
        v11 = *(v10 + 25);
        v12 = v10[1];
        v33 = *v10;
        v34[0] = v12;
        *(v34 + 9) = v11;
        sub_1C45A2358(&v33, v32);
        v13 = sub_1C45D2400();
        v15 = v14;
        sub_1C45EC75C(&v33);
        v35 = v3;
        v17 = *(v3 + 16);
        v16 = *(v3 + 24);
        v18 = v3;
        if (v17 >= v16 >> 1)
        {
          sub_1C44CD9C0(v16 > 1, v17 + 1, 1);
          v18 = v35;
        }

        *(v18 + 16) = v17 + 1;
        v19 = v18 + 16 * v17;
        *(v19 + 32) = v13;
        *(v19 + 40) = v15;
        v20 = 1 << *(a1 + 32);
        if (v6 >= v20)
        {
          goto LABEL_25;
        }

        v8 = a1 + 64;
        v21 = *(a1 + 64 + 8 * v9);
        if ((v21 & (1 << v6)) == 0)
        {
          goto LABEL_26;
        }

        v3 = v18;
        if (*(a1 + 36) != v31)
        {
          goto LABEL_27;
        }

        v22 = v21 & (-2 << (v6 & 0x3F));
        if (v22)
        {
          v20 = __clz(__rbit64(v22)) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v23 = v9 << 6;
          v24 = v9 + 1;
          v25 = (a1 + 72 + 8 * v9);
          while (v24 < (v20 + 63) >> 6)
          {
            v27 = *v25++;
            v26 = v27;
            v23 += 64;
            ++v24;
            if (v27)
            {
              sub_1C440951C(v6, v31, v29 & 1);
              v20 = __clz(__rbit64(v26)) + v23;
              goto LABEL_18;
            }
          }

          sub_1C440951C(v6, v31, v29 & 1);
        }

LABEL_18:
        v7 = v30 + 1;
        if (v30 + 1 == v28)
        {
          return;
        }

        v5 = 0;
        v4 = *(a1 + 36);
        v6 = v20;
        if (v20 < 0)
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

uint64_t sub_1C46F8C18(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v45 = MEMORY[0x1E69E7CC0];
  sub_1C459DF88(0, v1, 0);
  v2 = v45;
  result = sub_1C4703354();
  v7 = 0;
  v8 = v3 + 64;
  v32 = v5;
  v33 = v1;
  v31 = v3 + 72;
  v34 = v3 + 64;
  v35 = v3;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v3 + 32))
  {
    if ((*(v8 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (*(v3 + 36) != v5)
    {
      goto LABEL_23;
    }

    v39 = 1 << result;
    v40 = result >> 6;
    v37 = v7;
    v38 = v5;
    v36 = v6;
    v9 = *(v3 + 56);
    v10 = *(v3 + 48) + 48 * result;
    v12 = *v10;
    v11 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    v15 = *(v10 + 32);
    v16 = *(v10 + 40);
    v17 = (v9 + 24 * result);
    v41 = v17[1];
    v42 = *v17;
    v18 = v17[2];
    v43 = result;
    sub_1C45D7F78(v12, v11, v13, v14, v15, v16);
    swift_bridgeObjectRetain_n();
    sub_1C45D7F78(v12, v11, v13, v14, v15, v16);
    sub_1C45A23B4(v12, v11, v13, v14, v15, v16);

    sub_1C45D7F78(v12, v11, v13, v14, v15, v16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C45A23B4(v12, v11, v13, v14, v15, v16);

    v20 = *(v45 + 16);
    v19 = *(v45 + 24);
    v21 = v20 + 1;
    if (v20 >= v19 >> 1)
    {
      sub_1C459DF88((v19 > 1), v20 + 1, 1);
      v21 = v20 + 1;
    }

    *(v45 + 16) = v21;
    v22 = v45 + 72 * v20;
    *(v22 + 32) = v12;
    *(v22 + 40) = v11;
    *(v22 + 48) = v13;
    *(v22 + 56) = v14;
    *(v22 + 64) = v15;
    *(v22 + 72) = v16;
    *(v22 + 73) = *v44;
    *(v22 + 76) = *&v44[3];
    *(v22 + 80) = v42;
    *(v22 + 88) = v41;
    *(v22 + 96) = v18;
    v3 = v35;
    v23 = 1 << *(v35 + 32);
    result = v43;
    if (v43 >= v23)
    {
      goto LABEL_24;
    }

    v8 = v34;
    v24 = *(v34 + 8 * v40);
    if ((v24 & v39) == 0)
    {
      goto LABEL_25;
    }

    if (*(v35 + 36) != v38)
    {
      goto LABEL_26;
    }

    v25 = v24 & (-2 << (v43 & 0x3F));
    if (v25)
    {
      v23 = __clz(__rbit64(v25)) | v43 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = v40 << 6;
      v27 = v40 + 1;
      v28 = (v31 + 8 * v40);
      while (v27 < (v23 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          sub_1C440951C(v43, v38, v36 & 1);
          v23 = __clz(__rbit64(v29)) + v26;
          goto LABEL_19;
        }
      }

      sub_1C440951C(v43, v38, v36 & 1);
    }

LABEL_19:
    v6 = 0;
    v7 = v37 + 1;
    result = v23;
    v5 = v32;
    if (v37 + 1 == v33)
    {
      return v2;
    }
  }

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
  return result;
}

uint64_t sub_1C46F8F50(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v38 = MEMORY[0x1E69E7CC0];
  sub_1C459DF88(0, v1, 0);
  v2 = v38;
  result = sub_1C486C288();
  v7 = result;
  v8 = 0;
  v9 = v3 + 56;
  v28 = v3 + 64;
  v29 = v1;
  v30 = v3 + 56;
  v31 = v3;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_25;
      }

      v36 = v6;
      v32 = v8;
      v33 = v5;
      v11 = *(v3 + 48) + 48 * v7;
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = *(v11 + 32);
      v35 = *(v11 + 24);
      v34 = *(v11 + 40);
      result = sub_1C45D7F78(*v11, v13, v14, v35, v15, v34);
      v17 = *(v38 + 16);
      v16 = *(v38 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        result = sub_1C459DF88((v16 > 1), v17 + 1, 1);
        v18 = v17 + 1;
      }

      *(v38 + 16) = v18;
      v19 = v38 + 72 * v17;
      *(v19 + 32) = v12;
      *(v19 + 40) = v13;
      *(v19 + 48) = v14;
      *(v19 + 56) = v35;
      *(v19 + 64) = v15;
      *(v19 + 72) = v34;
      *(v19 + 73) = *v37;
      *(v19 + 76) = *&v37[3];
      *(v19 + 88) = 0;
      *(v19 + 96) = 0;
      *(v19 + 80) = 0;
      if (v36)
      {
        goto LABEL_29;
      }

      v9 = v30;
      v3 = v31;
      v20 = 1 << *(v31 + 32);
      if (v7 >= v20)
      {
        goto LABEL_26;
      }

      v21 = *(v30 + 8 * v10);
      if ((v21 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v31 + 36) != v33)
      {
        goto LABEL_28;
      }

      v22 = v21 & (-2 << (v7 & 0x3F));
      if (v22)
      {
        v20 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v10 << 6;
        v24 = v10 + 1;
        v25 = (v28 + 8 * v10);
        while (v24 < (v20 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_1C440951C(v7, v33, 0);
            v20 = __clz(__rbit64(v26)) + v23;
            goto LABEL_19;
          }
        }

        result = sub_1C440951C(v7, v33, 0);
      }

LABEL_19:
      v8 = v32 + 1;
      if (v32 + 1 == v29)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v31 + 36);
      v7 = v20;
      if (v20 < 0)
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
  return result;
}

uint64_t sub_1C46F91E0@<X0>(void *a1@<X8>)
{
  sub_1C456902C(&qword_1EC0BA418, &qword_1C4F22330);
  sub_1C43FFC58();
  MEMORY[0x1EEE9AC00](v3);
  swift_allocBox();
  v4 = sub_1C4426AD0();
  v5(v4);
  v6 = sub_1C4401CBC(&qword_1EDDFA180, &qword_1EC0BA418, &qword_1C4F22330, MEMORY[0x1E69A9B60]);
  result = sub_1C44305D8(v6);
  *a1 = &unk_1C4F22340;
  a1[1] = v1;
  return result;
}

uint64_t sub_1C46F92F4@<X0>(void *a1@<X8>)
{
  sub_1C456902C(&qword_1EC0BB4D0, &unk_1C4F20380);
  sub_1C43FFC58();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C456902C(&qword_1EC0BBAA0, &qword_1C4F22250);
  swift_allocBox();
  v4 = sub_1C4426AD0();
  v5(v4);
  v6 = sub_1C4401CBC(&qword_1EDDDB810, &qword_1EC0BB4D0, &unk_1C4F20380, MEMORY[0x1E69E8898]);
  result = sub_1C44305D8(v6);
  *a1 = &unk_1C4F22260;
  a1[1] = v1;
  return result;
}

uint64_t sub_1C46F943C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = 0;
  *a4 = a3;
  a4[1] = v7;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C46F9498@<X0>(void *a1@<X8>)
{
  sub_1C43FBDBC();
  v2 = swift_allocObject();
  result = sub_1C4F02428();
  *(v2 + 16) = result;
  *a1 = &unk_1C4F22320;
  a1[1] = v2;
  return result;
}

uint64_t sub_1C46F94F4(uint64_t a1)
{
  *(v1 + 48) = sub_1C456902C(&qword_1EC0BA418, &qword_1C4F22330);
  *(v1 + 56) = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C46F957C, 0, 0);
}

uint64_t sub_1C46F957C()
{
  sub_1C43FBCD4();
  sub_1C440BC50(*(v0 + 56));
  sub_1C4401CBC(&qword_1EDDEFF48, &qword_1EC0BA418, &qword_1C4F22330, MEMORY[0x1E69A9B58]);
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 64) = v1;
  *v1 = v2;
  v3 = sub_1C4433C7C(v1);

  return MEMORY[0x1EEE6D8C8](v3);
}

uint64_t sub_1C46F9640()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    swift_endAccess();
    sub_1C43FBCF0();

    return v10();
  }
}

uint64_t sub_1C46F9760()
{
  sub_1C43FBCD4();
  swift_endAccess();
  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C46F97BC(uint64_t a1)
{
  *(v1 + 48) = sub_1C456902C(&qword_1EC0BBAA0, &qword_1C4F22250);
  *(v1 + 56) = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C46F9844, 0, 0);
}

uint64_t sub_1C46F9844()
{
  sub_1C43FBCD4();
  sub_1C440BC50(*(v0 + 56));
  sub_1C4401CBC(&qword_1EDDDB818, &qword_1EC0BBAA0, &qword_1C4F22250, MEMORY[0x1E69E8890]);
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 64) = v1;
  *v1 = v2;
  v3 = sub_1C4433C7C(v1);

  return MEMORY[0x1EEE6D8C8](v3);
}

uint64_t sub_1C46F9908()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    swift_endAccess();
    sub_1C43FBCF0();

    return v10();
  }
}

uint64_t sub_1C46F9A28(uint64_t a1, uint64_t a2)
{
  *(v2 + 184) = a1;
  *(v2 + 192) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C46F9A48, 0, 0);
}

void sub_1C46F9A48()
{
  sub_1C43FCF70();
  v1 = v0[24];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v2 + 16);
  if (v3 == v4)
  {
    v5 = v0[23];
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    *v5 = 0u;
    *(v5 + 16) = 0u;
    *(v5 + 64) = 1;
  }

  else
  {
    if (v3 >= v4)
    {
      __break(1u);
      return;
    }

    v6 = v0[23];
    v7 = v2 + 72 * v3;
    memcpy(v0 + 2, (v7 + 32), 0x48uLL);
    memcpy(v6, (v7 + 32), 0x48uLL);
    *(v1 + 24) = v3 + 1;
    sub_1C45E8ABC((v0 + 2), (v0 + 11));
  }

  sub_1C43FC1B0();

  v8();
}

uint64_t sub_1C46F9B4C()
{
  sub_1C43FBCD4();
  sub_1C440BC50(*(v0 + 40) + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1C46F9BF8;

  return sub_1C46F9D70();
}

uint64_t sub_1C46F9BF8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = v1;
  sub_1C44001F0();
  *v3 = v2;
  v4 = *v0;
  sub_1C43FBDAC();
  *v5 = v4;

  swift_endAccess();
  v6 = sub_1C43FD5F0();

  return v7(v6);
}

uint64_t sub_1C46F9CFC()
{
  sub_1C43FBCD4();
  sub_1C440BC50(*(v0 + 48) + 16);
  sub_1C4F02568();
  swift_endAccess();
  v1 = sub_1C43FD5F0();

  return v2(v1);
}

uint64_t sub_1C46F9D90()
{
  sub_1C43FCF70();
  v1 = *(v0 + 16);
  v2 = *v1;
  if (*v1 >> 62)
  {
    v3 = sub_1C4F02128();
    v1 = *(v0 + 16);
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v1[1];
  if (v4 != v3)
  {
    sub_1C4431590(v1[1], (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = sub_1C43FBC98();
      result = MEMORY[0x1C6940F90](v7);
    }

    else
    {
    }

    if (__OFADD__(v4, 1))
    {
      __break(1u);
      return result;
    }

    v1[1] = v4 + 1;
  }

  sub_1C43FBCF0();

  return v6();
}

uint64_t sub_1C46F9E6C(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1[1];
  v19 = *a1;
  v20[0] = v10;
  *(v20 + 9) = *(a1 + 25);
  v11 = a2[1];
  v17 = *a2;
  v18[0] = v11;
  *(v18 + 9) = *(a2 + 25);
  sub_1C45D5A9C(&v19, &v17, a3, a4, a5, a6, a7, a8, v17, *(&v17 + 1), v11, *(&v18[0] + 1));
  if ((v12 & 1) != 0 && *(a1 + 6) == *(a2 + 6))
  {
    v13 = *(a1 + 8);
    v14 = *(a2 + 8);
    if (v13)
    {
      if (v14)
      {
        v15 = *(a1 + 7) == *(a2 + 7) && v13 == v14;
        if (v15 || (sub_1C4F02938() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v14)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1C46F9F18(uint64_t a1)
{
  sub_1C45D5EBC(a1);
  MEMORY[0x1C69417F0](*(v1 + 48));
  if (!*(v1 + 64))
  {
    return sub_1C4F02B18();
  }

  sub_1C4F02B18();

  return sub_1C4F01298();
}

uint64_t sub_1C46F9FC4()
{
  sub_1C4F02AF8();
  v1 = v0[1];
  v4 = *v0;
  v5[0] = v1;
  *(v5 + 9) = *(v0 + 25);
  sub_1C45D5EBC(v3);
  MEMORY[0x1C69417F0](*(v0 + 6));
  if (*(v0 + 8))
  {
    sub_1C4F02B18();
    sub_1C4F01298();
  }

  else
  {
    sub_1C4F02B18();
  }

  return sub_1C4F02B68();
}

uint64_t sub_1C46FA070()
{
  sub_1C4F02AF8();
  sub_1C46F9F18(v1);
  return sub_1C4F02B68();
}

uint64_t sub_1C46FA0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C46FA0D4, 0, 0);
}

uint64_t sub_1C46FA0D4()
{
  sub_1C43FCF70();
  sub_1C470231C(*(v0 + 128), v0 + 16);
  if (*(v0 + 56))
  {
    v2 = *(v0 + 16);
    v1 = *(v0 + 24);
    *(v0 + 136) = v2;
    *(v0 + 144) = v1;
    v3 = *(v0 + 32);
    *(v0 + 152) = v3;
    v4 = swift_task_alloc();
    *(v0 + 160) = v4;
    *v4 = v0;
    v4[1] = sub_1C46FA1FC;
    v5 = sub_1C440F4D4(*(v0 + 104));

    return sub_1C46FA748(v5, v2, v1, v3, v6);
  }

  else
  {
    sub_1C443FA18((v0 + 16), v0 + 64);
    sub_1C441AE7C();
    sub_1C46FA3E8(v8, v9, v10, v11);
    sub_1C440962C((v0 + 64));
    v12 = sub_1C43FD5F0();

    return v13(v12);
  }
}

uint64_t sub_1C46FA1FC()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v5 + 168) = v0;

  if (!v0)
  {
    *(v5 + 176) = v3;
  }

  sub_1C440C470();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C46FA304()
{
  sub_1C43FBCD4();

  sub_1C43FBCF0();

  return v0();
}

uint64_t sub_1C46FA378()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C46FA3E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v29 = a3;
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = swift_allocObject();
  v28 = v12;
  *(v12 + 16) = MEMORY[0x1E69E7CC8];
  v13 = (v12 + 16);
  v30 = objc_autoreleasePoolPush();
  v14 = a2[3];
  v15 = a2[4];
  sub_1C4409678(a2, v14);
  v16 = sub_1C4EF9CD8();
  v17 = *(*(v16 - 8) + 16);
  v17(v11, a1, v16);
  sub_1C440BAA8(v11, 0, 1, v16);
  v18 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v17(v8, a1 + *(v18 + 36), v16);
  sub_1C440BAA8(v8, 0, 1, v16);
  v19 = (*(v15 + 24))(v11, v8, v27, v14, v15);
  sub_1C4420C3C(v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C4420C3C(v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v35 = sub_1C46FAC98;
  v36 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_1C44405F8;
  v34 = &unk_1F43E9568;
  v20 = _Block_copy(&aBlock);
  v21 = swift_allocObject();
  v22 = v29;
  *(v21 + 16) = v28;
  *(v21 + 24) = v22;
  v35 = sub_1C47023E4;
  v36 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_1C45DFE08;
  v34 = &unk_1F43E95B8;
  v23 = _Block_copy(&aBlock);

  v24 = [v19 sinkWithCompletion:v20 receiveInput:v23];
  _Block_release(v23);
  _Block_release(v20);

  objc_autoreleasePoolPop(v30);
  swift_beginAccess();
  v25 = *v13;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return v25;
}

uint64_t sub_1C46FA748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C46FA770, 0, 0);
}

uint64_t sub_1C46FA770()
{
  *(v0 + 32) = MEMORY[0x1E69E7CC8];
  sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C441AE7C();
  sub_1C494DA84(v1, v2, v3, v4, v5);
  v12();

  v6 = *(v0 + 16);
  *(v0 + 96) = v6;
  v11 = (v6 + *v6);
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 112) = v7;
  *v7 = v8;
  v9 = sub_1C44332E4(v7);

  return v11(v9);
}

uint64_t sub_1C46FA8FC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;
  *(v4 + 120) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1C46FAA18()
{
  sub_1C43FEAEC();
  v1 = v0[16];
  if (v1)
  {
    v2 = v0[15];
    v3 = v0[11];
    v4 = objc_autoreleasePoolPush();
    sub_1C46FAFC0(v1, v0 + 4, v3);
    if (v2)
    {

      objc_autoreleasePoolPop(v4);
    }

    else
    {
      objc_autoreleasePoolPop(v4);

      v9 = (v0[12] + *v0[12]);
      swift_task_alloc();
      sub_1C43FBE70();
      v0[14] = v6;
      *v6 = v7;
      v8 = sub_1C44332E4(v6);

      v9(v8);
    }
  }

  else
  {

    sub_1C43FBCF0();

    v5();
  }
}

uint64_t sub_1C46FABA8()
{
  sub_1C43FBCD4();
  *(v0 + 48) = *(v0 + 120);
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  swift_willThrowTypedImpl();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C46FAC34()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

void sub_1C46FAC98(void *a1)
{
  v1 = [a1 error];
  if (v1)
  {
    v2 = v1;
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v3 = sub_1C4F00978();
    sub_1C442B738(v3, qword_1EDE2DDE0);
    v4 = v2;
    oslog = sub_1C4F00968();
    v5 = sub_1C4F01CD8();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = v4;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_1C43F8000, oslog, v5, "BehaviorHistoryUtility: Behavior event publisher failed with error: %@", v6, 0xCu);
      sub_1C4420C3C(v7, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v7, -1, -1);
      MEMORY[0x1C6942830](v6, -1, -1);
      v4 = oslog;
      oslog = v8;
    }
  }
}

void sub_1C46FAE30(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[2];
  v21 = a1[1];
  v22[0] = v5;
  *(v22 + 9) = *(a1 + 41);
  swift_beginAccess();
  v6 = sub_1C465C6B0(&v21, *(a2 + 16));
  if (v8 == 1)
  {
    swift_endAccess();
    swift_beginAccess();
    if (*(*(a2 + 16) + 16) > a3)
    {
      return;
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1C4661D94(1, 0, 0, &v21, isUniquelyReferenced_nonNull_native, v10, v11, v12, *(a2 + 16), v19[0], v19[1], v19[2], v19[3], v20[0], v20[1], v20[2], v21, *(&v21 + 1), *&v22[0], *(&v22[0] + 1), *&v22[1], *(&v22[1] + 1), v23, v24, v25, v26);
    *(a2 + 16) = v18;
  }

  else
  {
    v13 = v6;
    v14 = v7;
    v15 = v8;
    swift_endAccess();
    sub_1C47023EC(v13, v14, v15);
    swift_beginAccess();
    v17 = sub_1C4B5A990(v19, &v21);
    if (v16[2] == 1)
    {
      (v17)(v19, 0);
    }

    else
    {
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return;
      }

      *v16 = v13 + 1;
      (v17)(v19, 0);
    }
  }

  swift_endAccess();
}

uint64_t (*sub_1C46FAFC0(uint64_t a1, uint64_t *a2, uint64_t a3))()
{
  v3 = a3;
  v30 = a2;
  v4 = *(a1 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityIdentifier + 8);
  v28[0] = *(a1 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityIdentifier);
  v28[1] = v4;
  memset(&v28[2], 0, 24);
  v29 = 17;
  v5 = *(a1 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_attributes);
  v6 = *(v5 + 16);
  if (!v6)
  {
    v7 = 0;
    v10 = 0;
LABEL_38:
    v15 = v30;
    goto LABEL_39;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = (v5 + 48);
  do
  {
    v12 = *(v11 - 2);
    if (*v11 == 3)
    {

      v7 = 0x6C61436F69647561;
      v8 = 0xE90000000000006CLL;
      switch(v12)
      {
        case 0uLL:
          break;
        case 1uLL:
          v8 = 0xE500000000000000;
          v7 = 0x6C69616D65;
          break;
        case 2uLL:
          v7 = 7564659;
          v8 = 0xE300000000000000;
          break;
        case 3uLL:
          v8 = 0xE300000000000000;
          v7 = 7564653;
          break;
        case 4uLL:
          v7 = 0x4D746E6174736E69;
          v8 = 0xEE00656761737365;
          break;
        case 5uLL:
          v7 = 0xD000000000000010;
          v8 = 0x80000001C4F89C70;
          break;
        case 6uLL:
          v8 = 0xE700000000000000;
          v7 = 0x706F7244726961;
          break;
        case 8uLL:
          v8 = 0xE400000000000000;
          v7 = 1885958006;
          break;
        case 9uLL:
          v7 = 0x69616D6563696F76;
          break;
        case 0xAuLL:
          v8 = 0xE800000000000000;
          v7 = 0x656D695465636166;
          break;
        case 0xBuLL:
          v7 = 0x656D695465636166;
          v14 = 1768191297;
          goto LABEL_27;
        case 0xCuLL:
          v7 = 0x6C61436F65646976;
          break;
        case 0xDuLL:
          v8 = 0xEA00000000007465;
          v7 = 0x6568536572616873;
          break;
        case 0xEuLL:
          v8 = 0xE900000000000079;
          v7 = 0x74696D69786F7270;
          break;
        case 0xFuLL:
          v8 = 0xE800000000000000;
          v7 = 0x6761546F746F6870;
          break;
        case 0x10uLL:
          v8 = 0xE500000000000000;
          v7 = 0x656E6F6870;
          break;
        case 0x11uLL:
          v7 = 0x656D695465636166;
          v14 = 1701079382;
LABEL_27:
          v8 = v14 | 0xED00006F00000000;
          break;
        case 0x12uLL:
          v8 = 0xE900000000000074;
          v7 = 0x6867696C68676968;
          break;
        case 0x13uLL:
          v8 = 0xE900000000000079;
          v7 = 0x616C506572616873;
          break;
        default:
          v8 = 0xE700000000000000;
          v7 = 0x6E776F6E6B6E75;
          break;
      }
    }

    else if (!*v11)
    {
      v13 = *(v11 - 1);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v9 = v12;
      v10 = v13;
    }

    v11 += 24;
    --v6;
  }

  while (v6);
  if (!v8)
  {
    if (v10)
    {
      v7 = v9;
    }

    else
    {
      v7 = 0;
    }

    v3 = a3;
    goto LABEL_38;
  }

  v3 = a3;
  v15 = v30;
  if (v10)
  {
    v27[0] = v7;
    v27[1] = v8;
    MEMORY[0x1C6940010](95, 0xE100000000000000);
    MEMORY[0x1C6940010](v9, v10);
  }

  v10 = v8;
LABEL_39:
  v16 = sub_1C465C6B0(v28, *v15);
  if (v18 == 1)
  {
    if (*(*v15 + 16) <= v3)
    {
      v25 = sub_1C4B5A990(v27, v28);
      if (v24[2] != 1)
      {
        *v24 = 1;
        v24[1] = v7;
        v24[2] = v10;
      }

      return (v25)(v27, 0);
    }

    else
    {
    }
  }

  else
  {
    v20 = v16;
    v21 = v17;
    v22 = v18;

    sub_1C47023EC(v20, v21, v22);
    result = sub_1C4B5A990(v27, v28);
    if (v23[2] == 1)
    {
      return (result)(v27, 0);
    }

    else if (__OFADD__(v20, 1))
    {
      __break(1u);
    }

    else
    {
      *v23 = v20 + 1;
      return (result)(v27, 0);
    }
  }

  return result;
}

uint64_t sub_1C46FB458()
{
  sub_1C43FBCD4();
  v1[30] = v2;
  v1[31] = v0;
  v3 = sub_1C456902C(&qword_1EC0BBA58, &unk_1C4F221D0);
  v1[32] = v3;
  sub_1C43FCF7C(v3);
  v1[33] = v4;
  v1[34] = swift_task_alloc();
  v5 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C43FCF7C(v5);
  v1[35] = v6;
  v1[36] = *(v7 + 64);
  v1[37] = swift_task_alloc();
  v8 = sub_1C456902C(&qword_1EC0BBA60, &qword_1C4F221E0);
  v1[38] = v8;
  sub_1C43FCF7C(v8);
  v1[39] = v9;
  v1[40] = sub_1C43FE604();
  v1[41] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C46FB5DC()
{
  v1 = v0[37];
  v2 = v0[35];
  v3 = v0[31];
  v4 = *(v3 + 120);
  sub_1C4460108(v0[30], v1, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v5 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  sub_1C44CDA30(v1, v6 + v5, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v0[29] = v4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C456902C(&qword_1EC0BBA68, &qword_1C4F221F8);
  sub_1C456902C(&qword_1EC0BBA70, &qword_1C4F22200);
  sub_1C4401CBC(&qword_1EC0BBA78, &qword_1EC0BBA68, &qword_1C4F221F8, &unk_1C4F0F4E0);
  sub_1C4401CBC(&qword_1EC0BBA80, &qword_1EC0BBA70, &qword_1C4F22200, &protocol conformance descriptor for AnyAsyncSequence<A>);
  sub_1C4F02958();
  v7 = sub_1C4414A08();
  v8(v7);
  sub_1C4401CBC(&qword_1EC0BBA88, &qword_1EC0BBA60, &qword_1C4F221E0, MEMORY[0x1E69E8908]);
  sub_1C4F019A8();
  v0[42] = MEMORY[0x1E69E7CC0];
  sub_1C440428C(&qword_1EC0BBA90, &qword_1EC0BBA58, &unk_1C4F221D0);
  swift_task_alloc();
  sub_1C43FBE70();
  v0[43] = v9;
  *v9 = v10;
  v11 = sub_1C441707C(v9);

  return MEMORY[0x1EEE6D8C8](v11);
}

uint64_t sub_1C46FB858()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  v3[44] = v0;

  if (v0)
  {
    (*(v3[33] + 8))(v3[34], v3[32]);
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C46FB974()
{
  sub_1C43FEAEC();
  if (v0[10] == 1)
  {
    v1 = v0[41];
    v2 = v0[38];
    v3 = v0[39];
    (*(v0[33] + 8))(v0[34], v0[32]);
    memcpy(v0 + 11, v0 + 2, 0x48uLL);
    sub_1C4420C3C((v0 + 11), &qword_1EC0BBA98, &qword_1C4F22208);
    (*(v3 + 8))(v1, v2);

    sub_1C43FBCF0();
    v5 = v0[42];

    return v4(v5);
  }

  else
  {
    memcpy(v0 + 20, v0 + 2, 0x48uLL);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = v0[42];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C458B120();
      v8 = v13;
    }

    v9 = *(v8 + 16);
    if (v9 >= *(v8 + 24) >> 1)
    {
      sub_1C458B120();
      v8 = v14;
    }

    *(v8 + 16) = v9 + 1;
    memcpy((v8 + 72 * v9 + 32), v0 + 20, 0x48uLL);
    v0[42] = v8;
    sub_1C440428C(&qword_1EC0BBA90, &qword_1EC0BBA58, &unk_1C4F221D0);
    swift_task_alloc();
    sub_1C43FBE70();
    v0[43] = v10;
    *v10 = v11;
    v12 = sub_1C441707C(v10);

    return MEMORY[0x1EEE6D8C8](v12);
  }
}

uint64_t sub_1C46FBB78()
{
  sub_1C43FCF70();
  (*(v0[39] + 8))(v0[41], v0[38]);

  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C46FBC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[32] = a3;
  v4[33] = a4;
  v4[30] = a1;
  v4[31] = a2;
  v5 = sub_1C4EF9CD8();
  v4[34] = v5;
  v4[35] = *(v5 - 8);
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v6 = sub_1C4EFDAB8();
  v4[38] = v6;
  v4[39] = *(v6 - 8);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C46FBD68, 0, 0);
}

uint64_t sub_1C46FBD68()
{
  sub_1C43FEAEC();
  v1 = v0[39];
  (*(v1 + 104))(v0[43], *MEMORY[0x1E69A9450], v0[38]);
  sub_1C4419458();
  sub_1C47024B4(v2, v3, MEMORY[0x1E69A9490]);
  v4 = sub_1C4F010B8();
  v0[44] = *(v1 + 8);
  v0[45] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5 = sub_1C43FBC98();
  v6(v5);
  if (v4)
  {
    sub_1C43FBDBC();
    v7 = swift_allocObject();
    v8 = v0[30];
    *(v7 + 16) = MEMORY[0x1E69E7CC0];
    *v8 = sub_1C4703350;
    v8[1] = v7;

    sub_1C43FC1B0();

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    v0[46] = v11;
    *v11 = v0;
    v11[1] = sub_1C46FBF4C;
    v12 = sub_1C440F4D4(v0[33]);

    return sub_1C46FA0B0(v12, 50, v13);
  }
}

uint64_t sub_1C46FBF4C()
{
  sub_1C43FEAEC();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 376) = v5;
  *(v3 + 384) = v0;

  if (v0)
  {

    sub_1C43FBDA0();

    return v6();
  }

  else
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

void sub_1C46FC0B8()
{
  v1 = 0;
  v2 = 0;
  v3 = v0 + 20;
  v4 = v0[47];
  v5 = -1;
  v6 = -1 << *(v4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v4 + 64);
LABEL_4:
  if (v7)
  {
    v8 = v1;
    goto LABEL_10;
  }

  while (1)
  {
    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v8 >= ((63 - v6) >> 6))
    {
      goto LABEL_13;
    }

    v7 = *(v4 + 64 + 8 * v8);
    ++v1;
    if (v7)
    {
      v1 = v8;
LABEL_10:
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v10 = *(*(v4 + 56) + 24 * (v9 | (v8 << 6)));
      v11 = __OFADD__(v2, v10);
      v2 += v10;
      if (!v11)
      {
        goto LABEL_4;
      }

      __break(1u);
LABEL_13:
      v95 = v0 + 25;
      if (qword_1EDDFA668 == -1)
      {
LABEL_14:
        v12 = sub_1C4F00978();
        sub_1C442B738(v12, qword_1EDE2DDE0);
        v13 = sub_1C4414A08();
        v94 = v14;
        v14(v13);

        v15 = sub_1C4F00968();
        v16 = sub_1C4F01CF8();

        v17 = os_log_type_enabled(v15, v16);
        v18 = v0[44];
        if (v17)
        {
          v19 = v0[32];
          v20 = sub_1C43FFD34();
          v96[0] = sub_1C43FC11C();
          *v20 = 134218498;
          *(v20 + 4) = v2;
          *(v20 + 12) = 2080;
          sub_1C470231C(v19 + 72, (v0 + 14));
          v21 = sub_1C4F01198();
          v23 = sub_1C441D828(v21, v22, v96);

          *(v20 + 14) = v23;
          *(v20 + 22) = 2080;
          sub_1C4419458();
          sub_1C47024B4(v24, v25, MEMORY[0x1E69A94A8]);
          v26 = sub_1C4F02858();
          v28 = v27;
          v29 = sub_1C4409A28();
          v18(v29);
          v30 = sub_1C441D828(v26, v28, v96);

          *(v20 + 24) = v30;
          _os_log_impl(&dword_1C43F8000, v15, v16, "EntityRelevanceEvaluationSampleProvider: found %ld positive samples for %s and %s", v20, 0x20u);
          sub_1C440CBC8(v31, v32, MEMORY[0x1E69E7CA0] + 8);
          sub_1C4411B3C();
          v3 = v0 + 20;
          sub_1C43FBE2C();
        }

        else
        {

          v33 = sub_1C4409A28();
          v18(v33);
        }

        sub_1C4701FFC(0.0, 1.0);
        if (v2 >= 1)
        {
          v35 = v0[48];
          v36 = v0[37];
          v37 = v0[34];
          v38 = v0[35];
          v39 = v0[33];
          v3 = v95;
          sub_1C442E860(v0[32] + 32, v95);
          sub_1C4409678(v95, v0[28]);
          (*(v38 + 16))(v36, v39, v37);
          v40 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C46F89AC(v40);

          sub_1C4499940();
          sub_1C45E1418();
          if (v35)
          {
            v42 = v0 + 37;
            goto LABEL_26;
          }

          v44 = v41;
          (*(v0[35] + 8))(v0[37], v0[34]);

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C440962C(v95);
          v45 = sub_1C440A9B8();
          v94(v45);

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v46 = sub_1C4F00968();
          v47 = sub_1C4F01CF8();

          v48 = os_log_type_enabled(v46, v47);
          v49 = v0[44];
          if (v48)
          {
            v50 = v0[32];
            v51 = sub_1C43FFD34();
            v96[0] = sub_1C43FC11C();
            *v51 = 134218498;
            v52 = *(v44 + 16);

            *(v51 + 4) = v52;

            *(v51 + 12) = 2080;
            sub_1C470231C(v50 + 72, (v0 + 8));
            v53 = sub_1C4F01198();
            v55 = sub_1C441D828(v53, v54, v96);

            *(v51 + 14) = v55;
            *(v51 + 22) = 2080;
            sub_1C4419458();
            sub_1C47024B4(v56, v57, MEMORY[0x1E69A94A8]);
            sub_1C4F02858();
            v58 = sub_1C4414A08();
            v49(v58);
            v59 = sub_1C4404DC8();
            v62 = sub_1C441D828(v59, v60, v61);

            *(v51 + 24) = v62;
            v63 = "EntityRelevanceEvaluationSampleProvider: totalPositiveSamples > 0. found %ld negative samples for %s and %s";
            goto LABEL_29;
          }

LABEL_30:
          swift_bridgeObjectRelease_n();

          v86 = sub_1C4414A08();
          v49(v86);
          goto LABEL_31;
        }

        v43 = v0[48];
        if (v34 > 0.3)
        {
          v44 = MEMORY[0x1E69E7CD0];
          goto LABEL_31;
        }

        v65 = v0[35];
        v64 = v0[36];
        v67 = v0[33];
        v66 = v0[34];
        sub_1C442E860(v0[32] + 32, v3);
        sub_1C4409678(v3, v0[23]);
        (*(v65 + 16))(v64, v67, v66);
        v68 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C46F89AC(v68);

        sub_1C4499940();
        sub_1C45E1418();
        if (v43)
        {
          v42 = v0 + 36;
LABEL_26:
          (*(v0[35] + 8))(*v42, v0[34]);

          sub_1C440962C(v3);

          sub_1C43FBDA0();
        }

        else
        {
          v44 = v69;
          (*(v0[35] + 8))(v0[36], v0[34]);

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C440962C(v3);
          v70 = sub_1C440A9B8();
          v94(v70);

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v46 = sub_1C4F00968();
          v47 = sub_1C4F01CF8();

          v71 = os_log_type_enabled(v46, v47);
          v49 = v0[44];
          if (!v71)
          {
            goto LABEL_30;
          }

          v72 = v0[32];
          v51 = sub_1C43FFD34();
          v96[0] = sub_1C43FC11C();
          *v51 = 134218498;
          v73 = *(v44 + 16);

          *(v51 + 4) = v73;

          *(v51 + 12) = 2080;
          sub_1C470231C(v72 + 72, (v0 + 2));
          v74 = sub_1C4F01198();
          v76 = sub_1C441D828(v74, v75, v96);

          *(v51 + 14) = v76;
          *(v51 + 22) = 2080;
          sub_1C4419458();
          sub_1C47024B4(v77, v78, MEMORY[0x1E69A94A8]);
          sub_1C4F02858();
          v79 = sub_1C4414A08();
          v49(v79);
          v80 = sub_1C4404DC8();
          v83 = sub_1C441D828(v80, v81, v82);

          *(v51 + 24) = v83;
          v63 = "EntityRelevanceEvaluationSampleProvider: totalPositiveSamples == 0. found %ld negative samples for %s and %s";
LABEL_29:
          _os_log_impl(&dword_1C43F8000, v46, v47, v63, v51, 0x20u);
          sub_1C440CBC8(v84, v85, MEMORY[0x1E69E7CA0] + 8);
          sub_1C4411B3C();
          sub_1C43FBE2C();

LABEL_31:
          v87 = sub_1C46F8C18(v0[47]);

          v88 = sub_1C46F8F50(v44);

          v96[0] = v87;
          sub_1C49D4418(v88);
          v89 = v96[0];
          sub_1C43FBDBC();
          v90 = swift_allocObject();
          v91 = v0[30];
          *(v90 + 16) = v89;
          *v91 = sub_1C4702314;
          v91[1] = v90;

          sub_1C43FC1B0();
        }

        sub_1C4416034();

        __asm { BRAA            X1, X16 }
      }

LABEL_36:
      sub_1C4406728(&qword_1EDDFA668);
      goto LABEL_14;
    }
  }

  __break(1u);
  goto LABEL_36;
}

uint64_t sub_1C46FC9B4()
{
  sub_1C440962C((v0 + 32));
  sub_1C4702674(v0 + 72);

  return v0;
}

uint64_t sub_1C46FC9E4()
{
  sub_1C46FC9B4();

  return swift_deallocClassInstance();
}

uint64_t sub_1C46FCA3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4703368;

  return sub_1C46FB458();
}

uint64_t sub_1C46FCAD4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1C43FFE30(sub_1C46FCAF0);
}

uint64_t sub_1C46FCAF0()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1C46FCB8C;
  sub_1C440F4D4(*(v0 + 16));

  return sub_1C46FCC78();
}

uint64_t sub_1C46FCB8C()
{
  sub_1C43FBCD4();
  v3 = v2;
  sub_1C43FBDE4();
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;

  sub_1C43FBCF0();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1C46FCC78()
{
  sub_1C43FBCD4();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v5 = sub_1C4EF9CD8();
  v1[12] = v5;
  sub_1C43FCF7C(v5);
  v1[13] = v6;
  v1[14] = sub_1C43FE604();
  v1[15] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C46FCD30()
{
  sub_1C4404D98();
  v1 = v0[10];
  v2 = v0[11];
  sub_1C4409678(v2 + 3, v2[6]);
  sub_1C4607D48(v1, v0 + 2);
  v3 = v2[8];
  v0[16] = v3;
  if (!v3)
  {
    v7 = v0[14];
    v8 = v0[5];
    v9 = v0[7];
    sub_1C4409678(v0 + 2, v8);
    sub_1C4EF9BE8();
    (*(v9 + 8))(v7, v8, v9);
    (*(v0[13] + 8))(v0[14], v0[12]);
    v10 = v0[10];
    v11 = objc_autoreleasePoolPush();
    v12 = sub_1C43FE990();
    sub_1C46FD25C(v12, v13, v14, v10);
    objc_autoreleasePoolPop(v11);
    sub_1C440962C(v0 + 2);

    sub_1C43FD5F0();
    sub_1C4402234();

    __asm { BRAA            X2, X16 }
  }

  sub_1C4EF9BE8();
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_1C46FCF60;
  sub_1C440F4D4(v0[15]);
  sub_1C4402234();

  return sub_1C46DE19C();
}

uint64_t sub_1C46FCF60()
{
  sub_1C43FCF70();
  v2 = *v1;
  sub_1C44001F0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 144) = v0;

  (*(v2[13] + 8))(v2[15], v2[12]);
  sub_1C440C470();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1C46FD0B4()
{
  sub_1C4404D98();

  v1 = v0[18];
  v2 = v0[10];
  v3 = objc_autoreleasePoolPush();
  v4 = sub_1C43FE990();
  sub_1C46FD25C(v4, v5, v6, v2);
  if (v1)
  {
    objc_autoreleasePoolPop(v3);
    sub_1C440962C(v0 + 2);

    sub_1C4402234();

    __asm { BRAA            X0, X16 }
  }

  objc_autoreleasePoolPop(v3);
  sub_1C440962C(v0 + 2);

  sub_1C4402234();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C46FD1DC()
{
  sub_1C43FCF70();

  sub_1C440962C((v0 + 16));

  sub_1C43FBDA0();

  return v1();
}

void sub_1C46FD25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a1;
  v36 = a4;
  v37 = a3;
  v35 = sub_1C4EF9CD8();
  v5 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 56);
  v11 = (v8 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = 0;
  v41 = MEMORY[0x1E69E7CC0];
  while (v10)
  {
LABEL_9:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = (*(a2 + 48) + ((v12 << 10) | (16 * v14)));
    v17 = *v15;
    v16 = v15[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C45FE940(v17, v16);
    if (v19 != -1)
    {
      v20 = v18;
      v21 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458B398();
        v41 = v26;
      }

      v22 = *(v41 + 16);
      v23 = v22 + 1;
      if (v22 >= *(v41 + 24) >> 1)
      {
        v33 = *(v41 + 16);
        v34 = v22 + 1;
        sub_1C458B398();
        v22 = v33;
        v23 = v34;
        v41 = v27;
      }

      v24 = v41;
      *(v41 + 16) = v23;
      v25 = v24 + 16 * v22;
      *(v25 + 32) = v20;
      *(v25 + 40) = v21;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      (*(v5 + 16))(v7, v36, v35);
      v39 = 0;
      v40 = 256;
      type metadata accessor for BehaviorContext(0);
      swift_allocObject();
      sub_1C45D689C();
      MEMORY[0x1EEE9AC00](v28);
      v29 = v38;
      v30 = v41;
      *(&v32 - 4) = v37;
      *(&v32 - 3) = v30;
      *(&v32 - 2) = v31;
      sub_1C45DA434(sub_1C4702490, (&v32 - 6), v29);

      return;
    }

    v10 = *(a2 + 56 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1C46FD530@<X0>(void *__src@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(&v56 + 1) = a6;
  memcpy(__dst, __src, 0x48uLL);
  sub_1C4409678(a2, a2[3]);
  v67 = __dst[0];
  v68 = __dst[1];
  v69 = *&__dst[2];
  LOBYTE(v70) = BYTE8(__dst[2]);
  v9 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v10 = sub_1C45979EC(v9);
  v11 = sub_1C4601874(&v67, v10, a4);

  v12 = 0;
  v13 = *(a3 + 16);
  v14 = a3 + 40;
  v72 = MEMORY[0x1E69E7CC8];
  v58 = a3 + 40;
LABEL_2:
  v15 = (v14 + 16 * v12);
  while (v13 != v12)
  {
    if (v12 >= v13)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_24;
    }

    if (v11)
    {
      v17 = *(v15 - 1);
      v18 = *v15;
      sub_1C45A24AC(v17, *v15);
      sub_1C45FE65C(v17, v18);
      v19 = sub_1C4F01108();

      v20 = [v11 featureValueForName_];

      if (v20)
      {
        sub_1C45FE65C(v17, v18);
        v22 = v21;
        v24 = v23;
        v55 = v20;
        v25 = v72;
        DWORD1(v56) = swift_isUniquelyReferenced_nonNull_native();
        *(&v61[0] + 1) = v25;
        v53 = v22;
        v54 = v24;
        v26 = sub_1C445FAA8(v22, v24);
        if (!__OFADD__(*(v25 + 16), (v27 & 1) == 0))
        {
          v28 = v26;
          LODWORD(v72) = v27;
          sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
          if (sub_1C4F02458())
          {
            v29 = v54;
            v30 = sub_1C445FAA8(v53, v54);
            if ((v72 & 1) == (v31 & 1))
            {
              v28 = v30;
              v14 = v58;
              if ((v72 & 1) == 0)
              {
                goto LABEL_14;
              }

LABEL_17:

              v72 = *(&v61[0] + 1);
              v37 = *(*(&v61[0] + 1) + 56);
              v38 = *(v37 + 8 * v28);
              *(v37 + 8 * v28) = v55;

              sub_1C45A24C0(v17, v18);
LABEL_18:
              v12 = v16;
              goto LABEL_2;
            }

            goto LABEL_27;
          }

          v14 = v58;
          v29 = v54;
          if (v72)
          {
            goto LABEL_17;
          }

LABEL_14:
          v32 = *(&v61[0] + 1);
          *(*(&v61[0] + 1) + 8 * (v28 >> 6) + 64) |= 1 << v28;
          v33 = (v32[6] + 16 * v28);
          *v33 = v53;
          v33[1] = v29;
          *(v32[7] + 8 * v28) = v55;
          sub_1C45A24C0(v17, v18);

          v34 = v32[2];
          v35 = __OFADD__(v34, 1);
          v36 = v34 + 1;
          if (!v35)
          {
            v72 = v32;
            v32[2] = v36;
            goto LABEL_18;
          }

LABEL_26:
          __break(1u);
LABEL_27:
          result = sub_1C4F029F8();
          __break(1u);
          return result;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      sub_1C45A24C0(v17, v18);
    }

    v15 += 16;
    ++v12;
  }

  sub_1C45E8ABC(__dst, v61 + 8);
  sub_1C465D378(v72, v39, v40, v41, v42, v43, v44, v45, v52, v53, v54, v55, v56, v58, a5, v61[0], v61[1], v62, v63, v64, v65, v66, v67, *(&v67 + 1), v68, *(&v68 + 1), v69, v70, *&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1));
  v47 = v46;

  v48 = objc_allocWithZone(MEMORY[0x1E695FE48]);
  v49 = sub_1C4701E88(v47);
  if (*&v61[0])
  {
    sub_1C45E8B18(__dst);
    result = swift_unknownObjectRelease();
    *v60 = *&v61[0];
  }

  else
  {
    v51 = v49;
    swift_unknownObjectRelease();
    result = memcpy(v57, __dst, 0x48uLL);
    v57[9] = v51;
  }

  return result;
}

uint64_t sub_1C46FD8B8()
{

  sub_1C440962C((v0 + 24));

  return v0;
}

uint64_t sub_1C46FD8E8()
{
  sub_1C46FD8B8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C46FD940(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1C46FDA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  (*(v10 + 32))(a5, a1);
  *(a5 + *(type metadata accessor for TrainingVector(0, a4, v11, v12) + 28)) = a2;
  sub_1C441B884();
  v15 = *(v14 + 32);

  return v15(a5 + v13, a3, a4);
}

uint64_t sub_1C46FDB20(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C46FDBC8;

  return sub_1C46FCAD4(a1, a2);
}

uint64_t sub_1C46FDBC8()
{
  sub_1C43FBCD4();
  v3 = v2;
  sub_1C43FBDE4();
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;

  sub_1C43FBCF0();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1C46FDCB4()
{
  sub_1C44601FC();
  v0 = swift_allocObject();
  sub_1C46FDD18();
  return v0;
}

uint64_t sub_1C46FDD18()
{
  sub_1C44601FC();
  sub_1C441B884();
  (*(v5 + 32))(v1 + v6);
  sub_1C43FC20C();
  sub_1C441B884();
  (*(v7 + 32))(v1 + v8, v4);
  sub_1C43FC20C();
  sub_1C441B884();
  (*(v9 + 32))(v1 + v10, v3);
  sub_1C43FC20C();
  v12 = (v1 + *(v11 + 152));
  *v12 = v2;
  v12[1] = v0;
  return v1;
}

uint64_t sub_1C46FDE5C()
{
  sub_1C4404D98();
  v3 = v2;
  v1[14] = v4;
  v1[15] = v0;
  v1[12] = v5;
  v1[13] = v6;
  v1[10] = v7;
  v1[11] = v2;
  v8 = *v0;
  v1[16] = *v0;
  v9 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v1[17] = v9;
  sub_1C43FBD18(v9);
  v1[18] = swift_task_alloc();
  v10 = *(v8 + 120);
  v11 = *(v8 + 96);
  sub_1C4404280();
  v15 = (v12 + *v12);
  v13 = swift_task_alloc();
  v1[19] = v13;
  *v13 = v1;
  v13[1] = sub_1C46FE024;

  return v15(v3, v11, v10);
}

uint64_t sub_1C46FE024()
{
  sub_1C43FCF70();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 160) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    sub_1C440C470();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1C46FE15C()
{
  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406728(&qword_1EDDFA668);
  }

  v1 = v0[18];
  v2 = v0[11];
  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDE2DDE0);
  sub_1C4460108(v2, v1, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CF8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[18];
  if (v6)
  {
    v8 = v0[15];
    v9 = sub_1C43FFD34();
    sub_1C43FC11C();
    *v9 = 134218498;
    swift_getAssociatedTypeWitness();
    *(v9 + 4) = sub_1C4F01758();

    *(v9 + 12) = 2080;
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    sub_1C4EF9CD8();
    sub_1C4F02438();
    sub_1C442BA70();
    sub_1C4F02438();
    sub_1C4420C3C(v7, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v10 = sub_1C4414A08();
    v13 = sub_1C441D828(v10, v11, v12);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2080;
    v14 = (v8 + *(*v8 + 152));
    if (v14[1])
    {
      v15 = *v14;
    }

    else
    {
      v15 = 7104878;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v16 = sub_1C4409A28();
    sub_1C441D828(v16, v17, v18);
    sub_1C43FE670();
    *(v9 + 24) = v15;
    _os_log_impl(&dword_1C43F8000, v4, v5, "CombinedFeatureAndGroundTruthProvider: produced %ld for %s and name: %s", v9, 0x20u);
    sub_1C440CBC8(v19, v20, MEMORY[0x1E69E7CA0] + 8);
    sub_1C4411B3C();
    sub_1C43FBE2C();
  }

  else
  {

    sub_1C4420C3C(v7, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  }

  sub_1C43FC20C();
  v0[21] = *(v21 + 104);
  v0[22] = *(v21 + 80);
  sub_1C4404280();
  v25 = (v22 + *v22);
  v23 = swift_task_alloc();
  v0[23] = v23;
  *v23 = v0;
  v23[1] = sub_1C46FE51C;
  sub_1C440F4D4(v0[20]);
  sub_1C441AE7C();

  return v25();
}

uint64_t sub_1C46FE51C()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v5 + 192) = v0;

  if (!v0)
  {

    *(v5 + 200) = v3;
  }

  sub_1C440C470();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C46FE62C()
{
  v1 = *(v0 + 192);
  *(v0 + 32) = *(v0 + 200);
  v2 = *(v0 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IdentifiableFeatureVector(255, AssociatedTypeWitness, v4, v5);
  sub_1C4F017A8();
  sub_1C441F840();
  swift_getWitnessTable();
  v24 = *(v0 + 112);
  v6 = sub_1C43FE990();
  MEMORY[0x1C6940210](v6);

  *(v0 + 48) = *(v0 + 40);
  v7 = swift_task_alloc();
  *(v7 + 16) = v24;
  *(v7 + 32) = v2;
  v8 = sub_1C4F02268();
  v9 = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for TrainingVector(0, v9, v10, v11);
  v13 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  *(v0 + 64) = swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1C4D4F664(sub_1C4702638, v7, v8, v12, v13, WitnessTable, MEMORY[0x1E69E7288], v0 + 56);
  if (v1)
  {

    sub_1C43FBDA0();

    return v16();
  }

  else
  {
    v18 = v15;
    v19 = *(v0 + 96);

    sub_1C4EFC048();
    *(v0 + 72) = v18;
    sub_1C4F017A8();
    sub_1C441F840();
    swift_getWitnessTable();
    v20 = sub_1C4EFC068();
    *(v0 + 208) = v20;
    v25 = (v19 + *v19);
    swift_task_alloc();
    sub_1C43FBE70();
    *(v0 + 216) = v21;
    *v21 = v22;
    v21[1] = sub_1C46FE974;
    v23 = *(v0 + 80);

    return v25(v23, v20);
  }
}

uint64_t sub_1C46FE974()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 224) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    sub_1C43FC1B0();

    return v10();
  }
}

uint64_t sub_1C46FEA9C()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C46FEB00()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C46FEB64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v31 = a4;
  v32 = a3;
  v30 = a5;
  v28 = *a2;
  v6 = sub_1C4EF9CD8();
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v28 + 112);
  v9 = *(v28 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  v17 = v32;
  v18 = v33;
  result = (*(v8 + 24))(a1, v32, v9, v8, v14);
  if (v18)
  {
    *v31 = v18;
  }

  else
  {
    v20 = v29;
    (*(v27 + 16))(v29, v17, v6);
    v21 = swift_getAssociatedTypeWitness();
    v24 = *(a1 + *(type metadata accessor for IdentifiableFeatureVector(0, v21, v22, v23) + 28));
    (*(v26 + 32))(v12, v16, AssociatedTypeWitness);
    sub_1C46FDA58(v20, v24, v12, AssociatedTypeWitness, v30);
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1C46FEE3C()
{
  sub_1C441B884();
  (*(v1 + 8))(v0 + v2);
  sub_1C43FC20C();
  sub_1C441B884();
  (*(v3 + 8))(v0 + v4);
  sub_1C43FC20C();
  sub_1C441B884();
  (*(v5 + 8))(v0 + v6);
  sub_1C43FC20C();

  return v0;
}

uint64_t sub_1C46FEF64()
{
  sub_1C46FEE3C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C46FEFD4(uint64_t a1)
{
  result = type metadata accessor for BehaviorDigestTaskIdentifier(319);
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C46FF07C()
{
  sub_1C43FFB44();
  sub_1C4EFDAB8();
  sub_1C4419458();
  sub_1C47024B4(v2, v3, MEMORY[0x1E69A9498]);
  sub_1C4F01578();
  sub_1C4F01578();
  if (v18 == v17)
  {
    v4 = type metadata accessor for EntityRelevanceInteractionGroundTruth(0);
    v5 = v4[5];
    v6 = *(v1 + v5);
    v7 = *(v1 + v5 + 8);
    v8 = (v0 + v5);
    v9 = v6 == *v8 && v7 == v8[1];
    if (v9 || (sub_1C4F02938()) && *(v1 + v4[6]) == *(v0 + v4[6]))
    {
      v10 = v4[7];
      v11 = (v1 + v10);
      v12 = *(v1 + v10 + 8);
      v13 = (v0 + v10);
      v14 = v13[1];
      if (v12)
      {
        if (v14)
        {
          v15 = *v11 == *v13 && v12 == v14;
          if (v15 || (sub_1C4F02938() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v14)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C46FF1B4()
{
  v1 = *(*v0 + *(**v0 + 152));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C46FF200()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442E8C4;

  return sub_1C46FDE5C();
}

uint64_t sub_1C46FF2D0()
{
  sub_1C43FFB44();
  v0 = swift_allocObject();
  sub_1C46FF31C();
  return v0;
}

uint64_t sub_1C46FF31C()
{
  sub_1C43FFB44();
  v3 = qword_1EC151C28;
  v4 = sub_1C456902C(&qword_1EC0B9CA8, &qword_1C4F22290);
  sub_1C440BAA8(v1 + v3, 2, 2, v4);
  *(v1 + qword_1EC151C30) = MEMORY[0x1E69E7CC0];
  v5 = (v1 + qword_1EC0BB9B0);
  v6 = v2[1];
  *v5 = *v2;
  v5[1] = v6;
  v7 = v2[3];
  v5[2] = v2[2];
  v5[3] = v7;
  *(v1 + qword_1EC0BB9B8) = v0;
  return v1;
}

uint64_t sub_1C46FF3B4()
{
  sub_1C43FCF70();
  v1[6] = v2;
  v1[7] = v0;
  v3 = *v0;
  v1[8] = *v0;
  v4 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  v1[9] = v4;
  sub_1C43FBD18(v4);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v5 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v1[12] = v5;
  sub_1C43FBD18(v5);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v6 = *(v3 + 80);
  v1[15] = v6;
  v7 = *(v6 - 8);
  v1[16] = v7;
  v1[17] = *(v7 + 64);
  v1[18] = sub_1C43FE604();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v8 = sub_1C4EF9CD8();
  v1[21] = v8;
  sub_1C43FCF7C(v8);
  v1[22] = v9;
  v1[23] = sub_1C43FE604();
  v1[24] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C46FF5A4()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[6];
  v4 = v0[7];
  v5 = *(v0[12] + 36);
  v6 = qword_1EC151C30;
  sub_1C4588DCC();
  v7 = *(*(v4 + v6) + 16);
  sub_1C45899BC();
  v8 = *(v4 + v6);
  *(v8 + 16) = v7 + 1;
  v9 = *(v1 + 16);
  v1 += 16;
  v10 = v8 + ((*(v1 + 64) + 32) & ~*(v1 + 64)) + *(v1 + 56) * v7;
  v0[25] = v9;
  v0[26] = v1 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v10, v3 + v5, v2);
  *(v4 + v6) = v8;
  sub_1C4EF9B78();
  sub_1C4EF9BE8();
  sub_1C4EF9BE8();
  v0[27] = *(v4 + qword_1EC0BB9B8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = sub_1C4F01688();
  v0[4] = v11;
  if (v11 == sub_1C4F01758())
  {
    v12 = v0[22];
    sub_1C443F5BC();

    v13 = *(v12 + 8);
    v14 = sub_1C4404BCC();
    v13(v14);
    v15 = sub_1C440A9B8();
    v13(v15);

    sub_1C43FC1B0();

    return v16();
  }

  v17 = sub_1C4F01738();
  sub_1C4F016B8();
  if (v17)
  {
    v18 = sub_1C4404E3C();
    v4(v18);
  }

  else
  {
    v74 = v0[17];
    result = sub_1C4F02298();
    if (v74 != 8)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    v75 = sub_1C4415950(result);
    v4(v75);
    swift_unknownObjectRelease();
  }

  v19 = v0[16];
  sub_1C4F01788();
  v20 = v19 + 32;
  v21 = sub_1C440C480();
  v22(v21);
  sub_1C4F01968();
  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406728(&qword_1EDDFA668);
  }

  v24 = sub_1C443F184();
  sub_1C442B738(v24, qword_1EDE2DDE0);
  v25 = sub_1C43FE990();
  sub_1C4460108(v25, v26, v27, v28);
  v29 = sub_1C440C480();
  v4(v29);
  v30 = sub_1C4F00968();
  v31 = sub_1C4F01CF8();
  if (os_log_type_enabled(v30, v31))
  {
    sub_1C4469144();
    v81 = v32;
    v33 = v0[14];
    v78 = v0[12];
    v79 = v0[8];
    v34 = swift_slowAlloc();
    sub_1C43FC11C();
    *v34 = 136315394;
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    sub_1C4405AD4(v33);
    sub_1C442BA70();
    sub_1C4405AD4(v33 + *(v78 + 36));
    v35 = v0[2];
    sub_1C4420C3C(v33, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v36 = sub_1C4409A28();
    sub_1C441D828(v36, v37, v38);
    sub_1C43FE670();
    *(v34 + 4) = v35;
    *(v34 + 12) = 2080;
    v39 = (*(*(v79 + 88) + 16))(v81);
    if (v40)
    {
      v41 = v39;
    }

    else
    {
      v41 = 7104878;
    }

    if (v40)
    {
      v2 = v40;
    }

    else
    {
      v2 = 0xE300000000000000;
    }

    v42 = *(v20 + 8);
    v43 = sub_1C4404DC8();
    v42(v43);
    v44 = sub_1C4409A28();
    sub_1C441D828(v44, v45, v46);
    sub_1C43FE670();
    *(v34 + 14) = v41;
    sub_1C447F944(&dword_1C43F8000, v47, v48, "EntityRelevanceHistoricalFeatureStoreDigestTask: Producing training set for %s for %s");
    sub_1C440CBC8(v49, v50, MEMORY[0x1E69E7CA0] + 8);
    sub_1C4411B3C();
    sub_1C43FBE2C();
  }

  else
  {
    v51 = v0[16];
    v52 = v0[14];

    v42 = *(v51 + 8);
    v53 = sub_1C4402120();
    v42(v53);
    sub_1C4420C3C(v52, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  }

  v0[28] = v42;
  v54 = v0[21];
  sub_1C441C964();
  sub_1C47024B4(v55, v56, MEMORY[0x1E6969548]);
  sub_1C4402120();
  result = sub_1C4F01088();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  sub_1C44222C4();
  v77 = v57;
  v58 = v0[10];
  v59 = v0[9];
  v82 = v0[8];
  v83 = v60;
  v80 = v0[6];
  v42(v0[11]);
  v61 = sub_1C445063C();
  v42(v61);
  v62 = sub_1C4402E08();
  sub_1C4460108(v62, v63, v64, v65);
  v76 = *(v59 + 48);
  v66 = *(v54 + 32);
  v66(v77, v58, v54);
  sub_1C4423670();
  v2(v58 + v76, v54);
  v67 = sub_1C4402E08();
  sub_1C44CDA30(v67, v68, &qword_1EC0B84B0, qword_1C4F0CDE0);
  v69 = sub_1C44340C4();
  (v66)(v69);
  v70 = sub_1C43FBC98();
  (v2)(v70);
  v71 = swift_task_alloc();
  v0[31] = v71;
  *(v71 + 16) = v80;
  *(v71 + 24) = v83;
  sub_1C4435874(v71, v82);
  sub_1C4404280();
  v84 = (v72 + *v72);
  v73 = swift_task_alloc();
  v0[32] = v73;
  *v73 = v0;
  sub_1C4410B5C(v73);
  sub_1C43FEEE0();

  return v84();
}

uint64_t sub_1C46FFD10()
{
  sub_1C43FCF70();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 264) = v0;

  sub_1C4420C3C(*(v2 + 104), &qword_1EC0B84B8, &unk_1C4F0D4F0);
  if (v0)
  {
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C46FFE7C()
{
  (*(v0 + 224))(*(v0 + 152), *(v0 + 120));
  v2 = *(v0 + 32);
  v3 = *(v0 + 264);
  if (v2 == sub_1C4F01758())
  {
    v4 = *(v0 + 184);
    v5 = *(v0 + 192);
    v6 = *(v0 + 168);
    v7 = *(v0 + 176);
    sub_1C443F5BC();

    v8 = *(v7 + 8);
    v8(v4, v6);
    v8(v5, v6);

    sub_1C43FC1B0();
    goto LABEL_7;
  }

  v9 = sub_1C4F01738();
  sub_1C4F016B8();
  if (v9)
  {
    v10 = sub_1C4404E3C();
    v1(v10);
  }

  else
  {
    v75 = *(v0 + 136);
    result = sub_1C4F02298();
    if (v75 != 8)
    {
      goto LABEL_28;
    }

    v76 = sub_1C4415950(result);
    v1(v76);
    swift_unknownObjectRelease();
  }

  v12 = *(v0 + 152);
  v11 = *(v0 + 160);
  v13 = *(v0 + 120);
  v14 = *(v0 + 128);
  sub_1C4F01788();
  v16 = *(v14 + 32);
  v15 = (v14 + 32);
  v16(v12, v11, v13);
  sub_1C4F01968();
  if (v3)
  {
    sub_1C441B368();
    v17 = *(v13 + 8);
    v18 = sub_1C4404BCC();
    v17(v18);
    v19 = sub_1C440A9B8();
    v17(v19);
    sub_1C4408940();
    v20(v13 + 8);

    sub_1C43FBDA0();
LABEL_7:
    sub_1C4416034();

    __asm { BRAA            X1, X16 }
  }

  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406728(&qword_1EDDFA668);
  }

  v23 = sub_1C443F184();
  sub_1C442B738(v23, qword_1EDE2DDE0);
  v24 = sub_1C43FE990();
  sub_1C4460108(v24, v25, v26, v27);
  v28 = sub_1C440C480();
  v1(v28);
  v29 = sub_1C4F00968();
  v30 = sub_1C4F01CF8();
  if (os_log_type_enabled(v29, v30))
  {
    sub_1C4469144();
    v82 = v31;
    v32 = *(v0 + 112);
    v79 = *(v0 + 96);
    v80 = *(v0 + 64);
    v33 = swift_slowAlloc();
    sub_1C43FC11C();
    *v33 = 136315394;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    sub_1C4405AD4(v32);
    sub_1C442BA70();
    sub_1C4405AD4(v32 + *(v79 + 36));
    v34 = *(v0 + 16);
    sub_1C4420C3C(v32, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v35 = sub_1C4409A28();
    sub_1C441D828(v35, v36, v37);
    sub_1C43FE670();
    *(v33 + 4) = v34;
    *(v33 + 12) = 2080;
    v38 = (*(*(v80 + 88) + 16))(v82);
    if (v39)
    {
      v40 = v38;
    }

    else
    {
      v40 = 7104878;
    }

    if (v39)
    {
      v15 = v39;
    }

    else
    {
      v15 = 0xE300000000000000;
    }

    v41 = *(v13 + 8);
    v42 = sub_1C4404DC8();
    v41(v42);
    v43 = sub_1C4409A28();
    sub_1C441D828(v43, v44, v45);
    sub_1C43FE670();
    *(v33 + 14) = v40;
    sub_1C447F944(&dword_1C43F8000, v46, v47, "EntityRelevanceHistoricalFeatureStoreDigestTask: Producing training set for %s for %s");
    sub_1C440CBC8(v48, v49, MEMORY[0x1E69E7CA0] + 8);
    sub_1C4411B3C();
    sub_1C43FBE2C();
  }

  else
  {
    v50 = *(v0 + 128);
    v51 = *(v0 + 112);

    v41 = *(v50 + 8);
    v52 = sub_1C4402120();
    v41(v52);
    sub_1C4420C3C(v51, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  }

  *(v0 + 224) = v41;
  v53 = *(v0 + 168);
  sub_1C441C964();
  sub_1C47024B4(v54, v55, MEMORY[0x1E6969548]);
  sub_1C4402120();
  result = sub_1C4F01088();
  if (result)
  {
    sub_1C44222C4();
    v78 = v57;
    v58 = *(v0 + 80);
    v59 = *(v0 + 72);
    v83 = *(v0 + 64);
    v84 = v60;
    v81 = *(v0 + 48);
    v41(*(v0 + 88));
    v61 = sub_1C445063C();
    v41(v61);
    v62 = sub_1C4402E08();
    sub_1C4460108(v62, v63, v64, v65);
    v77 = *(v59 + 48);
    v66 = *(v53 + 32);
    v66(v78, v58, v53);
    sub_1C4423670();
    v15(v58 + v77, v53);
    v67 = sub_1C4402E08();
    sub_1C44CDA30(v67, v68, &qword_1EC0B84B0, qword_1C4F0CDE0);
    v69 = sub_1C44340C4();
    (v66)(v69);
    v70 = sub_1C43FBC98();
    (v15)(v70);
    v71 = swift_task_alloc();
    *(v0 + 248) = v71;
    *(v71 + 16) = v81;
    *(v71 + 24) = v84;
    sub_1C4435874(v71, v83);
    sub_1C4404280();
    v72 = swift_task_alloc();
    *(v0 + 256) = v72;
    *v72 = v0;
    sub_1C4410B5C(v72);
    sub_1C43FEEE0();
    sub_1C4416034();

    __asm { BRAA            X0, X16 }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1C4700510()
{
  v2 = v0[29];
  (v2)(v0[23], v0[21]);
  v3 = sub_1C4402120();
  v2(v3);
  sub_1C4408940();
  v4(v1);

  sub_1C43FBDA0();

  return v5();
}

uint64_t sub_1C4700614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v6 = *a5;
  v5[16] = *a5;
  v7 = *(v6 + 80);
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v5[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C470074C, 0, 0);
}

uint64_t sub_1C470074C()
{
  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406728(&qword_1EDDFA668);
  }

  v1 = *(v0 + 168);
  v2 = *(v0 + 104);
  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDE2DDE0);
  sub_1C4460108(v2, v1, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v4 = sub_1C4404BCC();
  v5(v4);
  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CF8();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 168);
  if (v8)
  {
    v10 = *(v0 + 136);
    v42 = *(v0 + 152);
    v43 = *(v0 + 144);
    v11 = *(v0 + 128);
    v12 = swift_slowAlloc();
    sub_1C43FC11C();
    *v12 = 136315394;
    *(v0 + 80) = 0;
    *(v0 + 88) = 0xE000000000000000;
    sub_1C4EF9CD8();
    sub_1C4F02438();
    v41 = v7;
    sub_1C442BA70();
    sub_1C4F02438();
    sub_1C4420C3C(v9, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v13 = sub_1C4414A08();
    v16 = sub_1C441D828(v13, v14, v15);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = *(v11 + 88);
    v18 = *(v17 + 16);
    v18(v10, v17);
    (*(v43 + 8))(v42, v10);
    v19 = sub_1C4414A08();
    v22 = sub_1C441D828(v19, v20, v21);

    *(v12 + 14) = v22;
    _os_log_impl(&dword_1C43F8000, v6, v41, "EntityRelevanceHistoricalFeatureStoreDigestTask: inserting feature vectors for %s for %s", v12, 0x16u);
    sub_1C440CBC8(v23, v24, MEMORY[0x1E69E7CA0] + 8);
    sub_1C4411B3C();
    sub_1C43FBE2C();
  }

  else
  {
    v26 = *(v0 + 144);
    v25 = *(v0 + 152);
    v28 = *(v0 + 128);
    v27 = *(v0 + 136);

    (*(v26 + 8))(v25, v27);
    sub_1C4420C3C(v9, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v17 = *(v28 + 88);
    v18 = *(v17 + 16);
  }

  v29 = *(v0 + 136);
  v30 = *(v0 + 96);
  v31 = (*(v0 + 120) + qword_1EC0BB9B0);
  v32 = v31[3];
  v34 = *v31;
  v33 = v31[1];
  *(v0 + 48) = v31[2];
  *(v0 + 64) = v32;
  *(v0 + 16) = v34;
  *(v0 + 32) = v33;
  v35 = (v18)(v29, v17);
  v37 = v36;
  v38 = swift_task_alloc();
  v38[2] = v30;
  v38[3] = v0 + 16;
  v38[4] = v35;
  v38[5] = v37;
  sub_1C446C37C(sub_1C47025A4, v38);

  sub_1C43FC1B0();

  return v39();
}

uint64_t sub_1C4700AFC()
{
  sub_1C47025C4(v0 + qword_1EC151C28);

  return v0;
}

uint64_t sub_1C4700BA4()
{
  sub_1C4700AFC();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4700C14(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 72))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 64);
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

uint64_t sub_1C4700C68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t sub_1C4700CE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C4700D24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C4700D70(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t type metadata accessor for EntityRelevanceInteractionGroundTruth(uint64_t a1)
{
  result = qword_1EC0BBA40;
  if (!qword_1EC0BBA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C4700E1C(uint64_t a1)
{
  sub_1C4EFDAB8();
  if (v1 <= 0x3F)
  {
    sub_1C4700EB8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C4700EB8()
{
  if (!qword_1EDDFEAB0)
  {
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDFEAB0);
    }
  }
}

unint64_t sub_1C4700F0C()
{
  result = qword_1EC0BBA50;
  if (!qword_1EC0BBA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BBA50);
  }

  return result;
}

uint64_t sub_1C4700F60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442F080;

  return sub_1C46FF3B4();
}

uint64_t sub_1C4700FF4()
{
  sub_1C43FEAEC();
  sub_1C43FFB44();
  v0 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C43FBD18(v0);
  v1 = swift_task_alloc();
  v2 = sub_1C43FCF54(v1);
  *v2 = v3;
  v2[1] = sub_1C442F080;
  v4 = sub_1C44345AC();

  return sub_1C46FBC18(v4, v5, v6, v7);
}

void sub_1C47010D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v137 = a5;
  v127 = a4;
  v139 = a3;
  v142 = a2;
  v131 = a1;
  v144 = sub_1C4EFB768();
  v7 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144 - 8);
  v130 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v149 = &v126 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v151 = &v126 - v12;
  v13 = sub_1C456902C(&qword_1EC0BBAA8, &unk_1C4F22280);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v126 - v14;
  v140 = sub_1C456902C(&qword_1EC0BB888, &qword_1C4F21730);
  MEMORY[0x1EEE9AC00](v140);
  v152 = &v126 - v16;
  v141 = sub_1C4401CBC(&qword_1EC0BB860, &qword_1EC0BB850, &qword_1C4F21700, MEMORY[0x1E69A00F0]);
  v138 = "er";
  v136 = "ons, queryName, metadata, ";
  v135 = 0x80000001C4F855E0;
  v134 = 0x80000001C4F930C0;
  v133 = 0x80000001C4F930E0;
  v132 = xmmword_1C4F0F830;
  v128 = v15;
  v129 = (v7 + 8);
  while (1)
  {
    sub_1C456902C(&qword_1EC0BB850, &qword_1C4F21700);
    sub_1C4EFBD68();
    if (v6)
    {
      return;
    }

    v17 = v140;
    if (sub_1C44157D4(v15, 1, v140) == 1)
    {
      v123 = &qword_1EC0BBAA8;
      v124 = &unk_1C4F22280;
      v125 = v15;
LABEL_69:
      sub_1C4420C3C(v125, v123, v124);
      return;
    }

    v18 = v152;
    sub_1C44CDA30(v15, v152, &qword_1EC0BB888, &qword_1C4F21730);
    v19 = *(v17 + 32);
    v155 = *(v18 + *(v17 + 28));
    v20 = v18 + v19;
    v21 = type metadata accessor for EntityRelevanceInteractionGroundTruth(0);
    v22 = v21[6];
    v23 = (v20 + v21[5]);
    v24 = v23[1];
    v146 = *v23;
    v153 = *(v20 + v22);
    v25 = (v20 + v21[7]);
    v26 = v25[1];
    v143 = *v25;
    v164 = 0;
    v165 = 0xE000000000000000;
    v148 = v26;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v147 = v24;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F02248();
    MEMORY[0x1C6940010](0x4920545245534E49, 0xEC000000204F544ELL);
    v27 = v139;
    MEMORY[0x1C6940010](*v139, v139[1]);
    MEMORY[0x1C6940010](0xD00000000000006ALL, v138 | 0x8000000000000000);
    v28 = v27[5];
    v29 = *(v28 + 16);
    v150 = 0;
    v160 = v28;
    if (v29)
    {
      v145 = v20;
      v163 = MEMORY[0x1E69E7CC0];
      sub_1C44CD9C0(0, v29, 0);
      v30 = v163;
      v33 = sub_1C486C288();
      v34 = v30;
      v35 = 0;
      v36 = v28 + 56;
      v154 = v28 + 64;
      v156 = v28 + 56;
      v157 = v29;
      if ((v33 & 0x8000000000000000) == 0)
      {
        while (v33 < 1 << *(v28 + 32))
        {
          v37 = v33 >> 6;
          if ((*(v36 + 8 * (v33 >> 6)) & (1 << v33)) == 0)
          {
            goto LABEL_72;
          }

          if (*(v28 + 36) != v31)
          {
            goto LABEL_73;
          }

          LODWORD(v159) = v32;
          v158 = v31;
          v38 = (*(v28 + 48) + 16 * v33);
          v39 = *v38;
          v40 = v38[1];
          v161 = 34;
          v162 = 0xE100000000000000;
          v41 = v34;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          MEMORY[0x1C6940010](v39, v40);
          MEMORY[0x1C6940010](34, 0xE100000000000000);

          v34 = v41;
          v42 = v161;
          v43 = v162;
          v163 = v41;
          v44 = *(v41 + 16);
          v45 = *(v34 + 24);
          if (v44 >= v45 >> 1)
          {
            sub_1C44CD9C0(v45 > 1, v44 + 1, 1);
            v34 = v163;
          }

          *(v34 + 16) = v44 + 1;
          v46 = v34 + 16 * v44;
          *(v46 + 32) = v42;
          *(v46 + 40) = v43;
          if (v159)
          {
            goto LABEL_83;
          }

          v28 = v160;
          v47 = 1 << *(v160 + 32);
          v36 = v156;
          v48 = v157;
          if (v33 >= v47)
          {
            goto LABEL_74;
          }

          v49 = *(v156 + 8 * v37);
          if ((v49 & (1 << v33)) == 0)
          {
            goto LABEL_75;
          }

          if (*(v160 + 36) != v158)
          {
            goto LABEL_76;
          }

          v50 = v49 & (-2 << (v33 & 0x3F));
          if (v50)
          {
            v47 = __clz(__rbit64(v50)) | v33 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v51 = v37 << 6;
            v52 = v37 + 1;
            v53 = (v154 + 8 * v37);
            while (v52 < (v47 + 63) >> 6)
            {
              v55 = *v53++;
              v54 = v55;
              v51 += 64;
              ++v52;
              if (v55)
              {
                v56 = v34;
                sub_1C440951C(v33, v158, 0);
                v34 = v56;
                v47 = __clz(__rbit64(v54)) + v51;
                goto LABEL_22;
              }
            }

            v57 = v34;
            sub_1C440951C(v33, v158, 0);
            v34 = v57;
          }

LABEL_22:
          if (++v35 == v48)
          {
            goto LABEL_27;
          }

          v32 = 0;
          v31 = *(v28 + 36);
          v33 = v47;
          if (v47 < 0)
          {
            break;
          }
        }
      }

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
      goto LABEL_77;
    }

    v34 = MEMORY[0x1E69E7CC0];
LABEL_27:
    v161 = v34;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C4401CBC(&qword_1EDDFCED0, &unk_1EC0B9620, &unk_1C4F0E870, MEMORY[0x1E69E6310]);
    v58 = sub_1C4F01048();
    v60 = v59;

    MEMORY[0x1C6940010](v58, v60);

    MEMORY[0x1C6940010](0xD000000000000079, v136 | 0x8000000000000000);
    v61 = *(v28 + 16);
    if (v61)
    {
      v62 = sub_1C4F01728();
      v63 = v62;
      *(v62 + 16) = v61;
      v64 = 32;
      do
      {
        v65 = (v62 + v64);
        *v65 = 63;
        v65[1] = 0xE100000000000000;
        v64 += 16;
        --v61;
      }

      while (v61);
    }

    else
    {
      v63 = MEMORY[0x1E69E7CC0];
    }

    LODWORD(v159) = v153 > 0;
    v161 = v63;
    v66 = sub_1C4F01048();
    v68 = v67;

    MEMORY[0x1C6940010](v66, v68);

    MEMORY[0x1C6940010](41, 0xE100000000000000);
    v145 = v164;
    v156 = v165;
    sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
    v69 = swift_allocObject();
    *(v69 + 16) = v132;
    *(v69 + 32) = 0x7954797469746E65;
    *(v69 + 40) = 0xEA00000000006570;
    v70 = sub_1C4EFDAA8();
    v71 = MEMORY[0x1E69E6530];
    *(v69 + 72) = MEMORY[0x1E69E6530];
    v72 = MEMORY[0x1E69A0180];
    *(v69 + 48) = v70;
    *(v69 + 80) = v72;
    *(v69 + 88) = 0xD000000000000010;
    *(v69 + 96) = v135;
    v73 = MEMORY[0x1E69E6158];
    *(v69 + 128) = MEMORY[0x1E69E6158];
    v74 = MEMORY[0x1E69A0138];
    v75 = v147;
    *(v69 + 104) = v146;
    *(v69 + 112) = v75;
    *(v69 + 136) = v74;
    *(v69 + 144) = 0xD000000000000011;
    *(v69 + 152) = v134;
    sub_1C4EF9AD8();
    *(v69 + 184) = MEMORY[0x1E69E63B0];
    v76 = MEMORY[0x1E69A0168];
    *(v69 + 160) = v77;
    *(v69 + 192) = v76;
    *(v69 + 200) = 0x6176656C65527369;
    *(v69 + 208) = 0xEA0000000000746ELL;
    *(v69 + 240) = MEMORY[0x1E69E6370];
    v78 = MEMORY[0x1E69A0150];
    *(v69 + 216) = v159;
    *(v69 + 248) = v78;
    *(v69 + 256) = 0xD000000000000014;
    v79 = v133;
    *(v69 + 296) = v71;
    *(v69 + 304) = v72;
    v80 = v153;
    *(v69 + 264) = v79;
    *(v69 + 272) = v80;
    *(v69 + 312) = 0x6D614E7972657571;
    *(v69 + 320) = 0xE900000000000065;
    if (v137)
    {
      v81 = v127;
      v82 = v137;
      v83 = v73;
      v84 = v74;
    }

    else
    {
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      *(v69 + 344) = 0;
    }

    v6 = v150;
    v85 = v144;
    *(v69 + 328) = v81;
    *(v69 + 336) = v82;
    *(v69 + 352) = v83;
    *(v69 + 360) = v84;
    *(v69 + 368) = 0x617461646174656DLL;
    *(v69 + 376) = 0xE800000000000000;
    v86 = v148;
    if (v148)
    {
      v87 = v73;
      v88 = v143;
    }

    else
    {
      v88 = 0;
      v87 = 0;
      v74 = 0;
      *(v69 + 400) = 0;
    }

    *(v69 + 384) = v88;
    *(v69 + 392) = v86;
    *(v69 + 408) = v87;
    *(v69 + 416) = v74;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFB738();
    v89 = v160;
    v90 = *(v160 + 16);
    if (v90)
    {
      break;
    }

    v91 = MEMORY[0x1E69E7CC0];
LABEL_65:
    v164 = v91;
    sub_1C456902C(qword_1EC0BBAB0, &unk_1C4F4FAA0);
    sub_1C4401CBC(&qword_1EDDDBD50, qword_1EC0BBAB0, &unk_1C4F4FAA0, MEMORY[0x1E69E6328]);
    v118 = v130;
    sub_1C4EFB7A8();
    v119 = v149;
    sub_1C4EFB748();
    v120 = *v129;
    (*v129)(v118, v85);
    v121 = v119;
    v122 = v151;
    v120(v121, v85);
    sub_1C4EFBFF8();
    if (v6)
    {

      v120(v122, v85);
      v123 = &qword_1EC0BB888;
      v124 = &qword_1C4F21730;
      v125 = v152;
      goto LABEL_69;
    }

    v120(v122, v85);
    sub_1C4420C3C(v152, &qword_1EC0BB888, &qword_1C4F21730);
    v15 = v128;
  }

  v164 = MEMORY[0x1E69E7CC0];
  sub_1C459DFC8();
  v91 = v164;
  v94 = sub_1C486C288();
  v95 = 0;
  v159 = v89 + 56;
  v153 = v89 + 64;
  v154 = v90;
  v96 = v89;
  if ((v94 & 0x8000000000000000) == 0)
  {
    while (v94 < 1 << *(v96 + 32))
    {
      v97 = v94 >> 6;
      if ((*(v159 + 8 * (v94 >> 6)) & (1 << v94)) == 0)
      {
        goto LABEL_78;
      }

      if (*(v96 + 36) != v92)
      {
        goto LABEL_79;
      }

      LODWORD(v157) = v93;
      v158 = v92;
      v98 = v91;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v99 = sub_1C4F01108();
      v100 = [v155 featureValueForName_];

      if (v100)
      {
        [v100 doubleValue];
        v102 = v101;

        v103 = MEMORY[0x1E69E63B0];
        v104 = MEMORY[0x1E69A0168];
      }

      else
      {

        v103 = 0;
        v104 = 0;
        v102 = 0;
      }

      v91 = v98;
      v164 = v98;
      v105 = *(v98 + 16);
      v106 = v158;
      v107 = v157;
      if (v105 >= *(v91 + 24) >> 1)
      {
        sub_1C459DFC8();
        v107 = v157;
        v106 = v158;
        v91 = v164;
      }

      *(v91 + 16) = v105 + 1;
      v108 = (v91 + 40 * v105);
      v108[4] = v102;
      v108[5] = 0;
      v108[6] = 0;
      v108[7] = v103;
      v108[8] = v104;
      if (v107)
      {
        goto LABEL_84;
      }

      v96 = v160;
      v109 = 1 << *(v160 + 32);
      v110 = v154;
      if (v94 >= v109)
      {
        goto LABEL_80;
      }

      v111 = *(v159 + 8 * v97);
      if ((v111 & (1 << v94)) == 0)
      {
        goto LABEL_81;
      }

      if (*(v160 + 36) != v106)
      {
        goto LABEL_82;
      }

      v112 = v111 & (-2 << (v94 & 0x3F));
      if (v112)
      {
        v109 = __clz(__rbit64(v112)) | v94 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v158 = v91;
        v113 = v97 << 6;
        v114 = v97 + 1;
        v115 = (v153 + 8 * v97);
        while (v114 < (v109 + 63) >> 6)
        {
          v117 = *v115++;
          v116 = v117;
          v113 += 64;
          ++v114;
          if (v117)
          {
            sub_1C440951C(v94, v106, 0);
            v109 = __clz(__rbit64(v116)) + v113;
            goto LABEL_59;
          }
        }

        sub_1C440951C(v94, v106, 0);
LABEL_59:
        v91 = v158;
      }

      if (++v95 == v110)
      {
        v6 = v150;
        v85 = v144;
        goto LABEL_65;
      }

      v93 = 0;
      v92 = *(v96 + 36);
      v94 = v109;
      if (v109 < 0)
      {
        break;
      }
    }
  }

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
}

id sub_1C4701E88(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1C4F00EC8();

  v7[0] = 0;
  v3 = [v1 initWithDictionary:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_1C4EF97A8();

    swift_willThrow();
  }

  return v3;
}

unint64_t sub_1C4701F70(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1C6942850](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1C6942850](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C4701FFC(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_1C4701F70(0x20000000000001uLL);
  }
}

uint64_t sub_1C47020B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1C470214C;

  return sub_1C46F94F4(a2);
}

uint64_t sub_1C470214C()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_1C4702244(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1C4703358;

  return sub_1C46F97BC(a2);
}

uint64_t sub_1C4702354()
{
  sub_1C43FBCD4();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = sub_1C43FCF54(v3);
  *v4 = v5;
  v4[1] = sub_1C442F080;

  return sub_1C46F9A28(v2, v0);
}

uint64_t sub_1C47023EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1C4702400()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C4400200(v1);

  return v4(v3);
}

uint64_t sub_1C47024B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C47024FC()
{
  sub_1C43FEAEC();
  sub_1C43FFB44();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_1C43FCF54(v3);
  *v4 = v5;
  v4[1] = sub_1C442F080;
  v6 = sub_1C44345AC();

  return sub_1C4700614(v6, v7, v8, v1, v2);
}

uint64_t sub_1C47025C4(uint64_t a1)
{
  v2 = type metadata accessor for BehaviorDigestTaskIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C47026A4(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    result = sub_1C4702C80();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4702744(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  v7 = *(*(v6 - 8) + 84);
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v7 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = *(*(v6 - 8) + 84);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(*(v6 - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(v9 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v16 = ((v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14) + v15;
  v17 = 8 * v16;
  if (v16 > 3)
  {
    goto LABEL_10;
  }

  v20 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
  if (HIWORD(v20))
  {
    v18 = *(a1 + v16);
    if (v18)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v20 <= 0xFF)
    {
      if (v20 < 2)
      {
        goto LABEL_28;
      }

LABEL_10:
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_28;
      }

LABEL_18:
      v21 = (v18 - 1) << v17;
      if (v16 > 3)
      {
        v21 = 0;
      }

      if (v16)
      {
        if (v16 <= 3)
        {
          v22 = v16;
        }

        else
        {
          v22 = 4;
        }

        switch(v22)
        {
          case 2:
            v23 = *a1;
            break;
          case 3:
            v23 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v23 = *a1;
            break;
          default:
            v23 = *a1;
            break;
        }
      }

      else
      {
        v23 = 0;
      }

      return v12 + (v23 | v21) + 1;
    }

    v18 = *(a1 + v16);
    if (*(a1 + v16))
    {
      goto LABEL_18;
    }
  }

LABEL_28:
  if (v7 == v12)
  {
    v24 = a1;
    v10 = *(*(v6 - 8) + 84);
    v8 = v6;
LABEL_35:

    return sub_1C44157D4(v24, v10, v8);
  }

  v25 = ((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((v11 & 0x80000000) != 0)
  {
    v24 = ((v25 + v14 + 8) & ~v14);
    goto LABEL_35;
  }

  v26 = *v25;
  if (v26 >= 0xFFFFFFFF)
  {
    LODWORD(v26) = -1;
  }

  return (v26 + 1);
}

void sub_1C470299C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1C4EF9CD8();
  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  v11 = *(*(v8 - 8) + 84);
  v12 = *(v10 + 84);
  if (v11 <= v12)
  {
    v13 = *(v10 + 84);
  }

  else
  {
    v13 = *(*(v8 - 8) + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(*(v8 - 8) + 64);
  v16 = *(v10 + 80);
  v17 = ((v16 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16) + *(v10 + 64);
  v18 = 8 * v17;
  if (a3 <= v14)
  {
    v19 = 0;
  }

  else if (v17 <= 3)
  {
    v22 = ((a3 - v14 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v14 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v17] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 2:
        *&a1[v17] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 3:
LABEL_51:
        __break(1u);
        return;
      case 4:
        *&a1[v17] = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (!a2)
        {
          return;
        }

LABEL_30:
        if (v11 == v14)
        {
          v25 = a1;
          v26 = a2;
          v12 = v11;
          v9 = v8;
        }

        else
        {
          v27 = (&a1[v15 + 7] & 0xFFFFFFFFFFFFFFF8);
          if ((v13 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v28 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v28 = (a2 - 1);
            }

            *v27 = v28;
            return;
          }

          v25 = ((v27 + v16 + 8) & ~v16);
          v26 = a2;
        }

        sub_1C440BAA8(v25, v26, v12, v9);
        break;
    }
  }

  else
  {
    v20 = ~v14 + a2;
    if (v17 < 4)
    {
      v21 = (v20 >> v18) + 1;
      if (v17)
      {
        v24 = v20 & ~(-1 << v18);
        bzero(a1, v17);
        if (v17 == 3)
        {
          *a1 = v24;
          a1[2] = BYTE2(v24);
        }

        else if (v17 == 2)
        {
          *a1 = v24;
        }

        else
        {
          *a1 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        a1[v17] = v21;
        break;
      case 2:
        *&a1[v17] = v21;
        break;
      case 3:
        goto LABEL_51;
      case 4:
        *&a1[v17] = v21;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C4702C80()
{
  result = qword_1EC0BBB38[0];
  if (!qword_1EC0BBB38[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EC0BBB38);
  }

  return result;
}

unint64_t sub_1C4702CDC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1C4702C80();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4702D64(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1C44157D4(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C4702EA0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1C440BAA8(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C470306C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1C4703358;

  return sub_1C46F9B2C(a2);
}

uint64_t sub_1C4703104()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C4400200(v1);

  return v4(v3);
}

uint64_t sub_1C4703194(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1C4703358;

  return sub_1C46F9CDC(a2);
}

uint64_t sub_1C470322C()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C4400200(v1);

  return v4(v3);
}

uint64_t sub_1C47032BC()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C4400200(v1);

  return v4(v3);
}

uint64_t sub_1C470336C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v31 = a5;
  sub_1C456902C(&qword_1EC0BBBF8, &qword_1C4F5C950);
  v7 = *(type metadata accessor for ViewDatabaseArtifact.Property(0) - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C4F0F830;
  v11 = (v10 + v9);
  sub_1C4EFBE08();
  *v11 = 0x7954797469746E65;
  v11[1] = 0xEA00000000006570;
  v12 = (v11 + v8);
  sub_1C4EFBDD8();
  *v12 = 0xD000000000000010;
  v12[1] = 0x80000001C4F855E0;
  v13 = (v11 + 2 * v8);
  sub_1C4EFBDC8();
  *v13 = 0xD000000000000011;
  v13[1] = 0x80000001C4F930C0;
  v14 = (v11 + 3 * v8);
  sub_1C4EFBDF8();
  *v14 = 0x6176656C65527369;
  v14[1] = 0xEA0000000000746ELL;
  v15 = (v11 + 4 * v8);
  sub_1C4EFBE08();
  *v15 = 0xD000000000000014;
  v15[1] = 0x80000001C4F930E0;
  v16 = (v11 + 5 * v8);
  sub_1C4EFBDD8();
  *v16 = 0x6D614E7972657571;
  v16[1] = 0xE900000000000065;
  v17 = (v11 + 6 * v8);
  sub_1C4EFBDD8();
  *v17 = 0x617461646174656DLL;
  v17[1] = 0xE800000000000000;
  v23 = a2;
  v24 = a3;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](0x657275746165665FLL, 0xED000073656D614ELL);
  if (*(a4 + 16))
  {

    *a6 = a2;
    a6[1] = a3;
    a6[2] = a2;
    a6[3] = a3;
    a6[4] = a1;
    a6[5] = a4;
    a6[6] = v31;
    a6[7] = v10;
  }

  else
  {
    sub_1C4707FB8();
    swift_allocError();
    swift_willThrow();

    v23 = a2;
    v24 = a3;
    v25 = a2;
    v26 = a3;
    v27 = a1;
    v28 = a4;
    v29 = v31;
    v30 = v10;
    return sub_1C46EEFDC(&v23);
  }

  return result;
}

uint64_t sub_1C4703650()
{
  v1 = *(v0 + 48);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  for (i = 0; v4; result = sub_1C4707ED4(v14))
  {
    v8 = i;
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = sub_1C4707E5C(*(v1 + 56) + 224 * (v9 | (v8 << 6)), v14);
    MEMORY[0x1EEE9AC00](v10);
    v13 = v14;

    sub_1C446C37C(sub_1C4707EB8, v12);
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      MEMORY[0x1EEE9AC00](v11);
      v13 = v0;
      return sub_1C446C37C(sub_1C4707F28, v12);
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++i;
    if (v4)
    {
      i = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C47037F4(uint64_t a1, const char **a2)
{
  v4 = sub_1C4EFB768();
  v5 = *(v4 - 8);
  v51 = v4;
  v52 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v46 - v8;
  v54 = sub_1C4EFB078();
  v57 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C4EFB0B8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  v18 = *a2;
  sub_1C4EFB058();
  v58 = a2;
  v53 = v18;
  v55 = a1;
  v19 = v61;
  sub_1C4EFBFC8();
  if (v19)
  {
    return (*(v12 + 8))(v17, v11);
  }

  v61 = v14;
  v47 = v9;
  v49 = a2;
  v21 = *(v12 + 8);
  v22 = v11;
  (v21)(v17, v11);
  sub_1C456902C(&unk_1EC0BCA90, &unk_1C4F111C0);
  v23 = swift_allocObject();
  v48 = xmmword_1C4F0D130;
  *(v23 + 16) = xmmword_1C4F0D130;
  sub_1C4EFB058();
  *&v59[0] = v23;
  sub_1C4707F60();
  sub_1C456902C(&unk_1EC0BCAA0, &unk_1C4F22520);
  sub_1C4401CBC(&qword_1EDDFA5C0, &unk_1EC0BCAA0, &unk_1C4F22520, MEMORY[0x1E69E6328]);
  v24 = v54;
  sub_1C4F020C8();
  v60 = 0;
  memset(v59, 0, sizeof(v59));
  sub_1C4EFBFB8();
  v53 = v21;
  v25 = v22;
  sub_1C4420C3C(v59, &qword_1EC0C5040, &qword_1C4F0F950);
  (*(v57 + 1))(v56, v24);
  v26 = v49;
  v27 = v49[2];
  v28 = v49[3];
  v29 = v61;
  sub_1C4EFB058();
  sub_1C4EFBFC8();
  (v53)(v29, v25);
  strcpy(v59, "DELETE FROM ");
  BYTE13(v59[0]) = 0;
  HIWORD(v59[0]) = -5120;
  MEMORY[0x1C6940010](v27, v28);
  v30 = v47;
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  v54 = v27;
  v61 = 0;
  v31 = v52 + 8;
  v56 = *(v52 + 8);
  (v56)(v30, v51);

  v32 = v26[5];
  v33 = v32 + 56;
  v34 = 1 << v32[32];
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v32 + 7);
  v37 = (v34 + 63) >> 6;
  v53 = " where entityType in (";
  v57 = v32;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v38 = 0;
  v52 = v31;
  if (v36)
  {
    while (1)
    {
      v39 = v38;
LABEL_10:
      v40 = (*(v57 + 6) + ((v39 << 10) | (16 * __clz(__rbit64(v36)))));
      v41 = *v40;
      v42 = v40[1];
      *&v59[0] = 0;
      *(&v59[0] + 1) = 0xE000000000000000;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F02248();

      strcpy(v59, "INSERT INTO ");
      BYTE13(v59[0]) = 0;
      HIWORD(v59[0]) = -5120;
      MEMORY[0x1C6940010](v54, v28);
      MEMORY[0x1C6940010](0xD000000000000016, v53 | 0x8000000000000000);
      sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
      v43 = swift_allocObject();
      *(v43 + 16) = v48;
      *(v43 + 32) = 1701667182;
      *(v43 + 40) = 0xE400000000000000;
      *(v43 + 72) = MEMORY[0x1E69E6158];
      *(v43 + 80) = MEMORY[0x1E69A0138];
      *(v43 + 48) = v41;
      *(v43 + 56) = v42;
      v44 = v50;
      sub_1C4EFB738();
      v45 = v61;
      sub_1C4EFBFF8();
      if (v45)
      {
        break;
      }

      v61 = 0;
      v36 &= v36 - 1;
      (v56)(v44, v51);

      v38 = v39;
      if (!v36)
      {
        goto LABEL_7;
      }
    }

    (v56)(v44, v51);
  }

  else
  {
LABEL_7:
    while (1)
    {
      v39 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v39 >= v37)
      {
      }

      v36 = *&v33[8 * v39];
      ++v38;
      if (v36)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C4703F48(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v3 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v42 = &v40 - v4;
  v5 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v40 - v6;
  v43 = type metadata accessor for ViewDatabaseArtifact.Property(0);
  MEMORY[0x1EEE9AC00](v43);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a2;
  v11 = *(a2 + 56);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    do
    {
      sub_1C47080D8(v13, v10, type metadata accessor for ViewDatabaseArtifact.Property);
      v16 = *v10;
      v15 = *(v10 + 1);
      v17 = *v10 == 0x6D614E7972657571 && v15 == 0xE900000000000065;
      if (v17 || (sub_1C4F02938() & 1) != 0 || (v16 == 0x617461646174656DLL ? (v18 = v15 == 0xE800000000000000) : (v18 = 0), v18 || (sub_1C4F02938() & 1) != 0))
      {
        v19 = *(v43 + 20);
        v20 = sub_1C4EFBE38();
        (*(*(v20 - 8) + 16))(v7, &v10[v19], v20);
        sub_1C440BAA8(v7, 0, 1, v20);
        sub_1C4EFB498();

        v21 = v7;
        v22 = &qword_1EC0B9BB8;
        v23 = &unk_1C4F1DC60;
      }

      else
      {
        v24 = *(v43 + 20);
        v25 = sub_1C4EFBE38();
        (*(*(v25 - 8) + 16))(v7, &v10[v24], v25);
        sub_1C440BAA8(v7, 0, 1, v25);
        sub_1C4EFB498();
        sub_1C4420C3C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
        v26 = sub_1C4EFBF38();
        v27 = v42;
        sub_1C440BAA8(v42, 1, 1, v26);
        sub_1C4EFB538();

        v21 = v27;
        v22 = &unk_1EC0BCAB0;
        v23 = &unk_1C4F111A0;
      }

      sub_1C4420C3C(v21, v22, v23);
      sub_1C443CD20(v10, type metadata accessor for ViewDatabaseArtifact.Property);
      v13 += v14;
      --v12;
    }

    while (v12);
  }

  v28 = *(v41 + 40);
  v31 = *(v28 + 56);
  v30 = v28 + 56;
  v29 = v31;
  v32 = 1 << *(*(v41 + 40) + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v29;
  v35 = (v32 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v37 = 0;
  if (v34)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v38 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v38 >= v35)
    {
    }

    v34 = *(v30 + 8 * v38);
    ++v37;
    if (v34)
    {
      v37 = v38;
      do
      {
LABEL_25:
        v34 &= v34 - 1;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EFBDE8();
        v39 = sub_1C4EFBE38();
        sub_1C440BAA8(v7, 0, 1, v39);
        sub_1C4EFB498();

        result = sub_1C4420C3C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
      }

      while (v34);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4704438()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  sub_1C4EFBDD8();
  v6 = sub_1C4EFBE38();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();
  sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = sub_1C4EFBF38();
  sub_1C440BAA8(v2, 1, 1, v7);
  sub_1C4EFB538();

  return sub_1C4420C3C(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C47045B0@<X0>(void *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  sub_1C4F02248();

  *&v15[0] = 0xD000000000000016;
  *(&v15[0] + 1) = 0x80000001C4F94850;
  MEMORY[0x1C6940010](*a2, a2[1]);
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_1C4EFB758();
  sub_1C4EFB998();
  if (v3)
  {

    (*(v8 + 8))(v12, v6);
    return sub_1C4420C3C(v15, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  else
  {

    (*(v8 + 8))(v12, v6);
    result = sub_1C4420C3C(v15, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (v18)
    {
      v14 = 0;
    }

    else
    {
      v14 = v17;
    }

    *a3 = v14;
  }

  return result;
}

void sub_1C4704784()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v36 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v35 = v11 - v10;
  sub_1C4EFB768();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  sub_1C4F02248();

  strcpy(v37, "SELECT * FROM ");
  HIBYTE(v37[1]) = -18;
  MEMORY[0x1C6940010](*v4, v4[1]);
  MEMORY[0x1C6940010](0xD000000000000016, 0x80000001C4F94870);
  v13 = *(v2 + 16);
  sub_1C4A728F8(63, 0xE100000000000000, v13);
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4401CBC(&qword_1EDDFCED0, &unk_1EC0B9620, &unk_1C4F0E870, MEMORY[0x1E69E6310]);
  v14 = sub_1C4F01048();
  v16 = v15;

  MEMORY[0x1C6940010](v14, v16);

  MEMORY[0x1C6940010](41, 0xE100000000000000);
  if (v13)
  {
    v32 = v6;
    v37[0] = MEMORY[0x1E69E7CC0];
    sub_1C459CF48(0, v13, 0);
    v17 = v37[0];
    v19 = *(v8 + 16);
    v18 = v8 + 16;
    v20 = v2 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v33 = *(v18 + 56);
    v34 = v19;
    v21 = (v18 - 8);
    do
    {
      v22 = v18;
      v34(v35, v20, v36);
      v23 = sub_1C4EFDAA8();
      (*v21)(v35, v36);
      v37[0] = v17;
      v25 = *(v17 + 16);
      v24 = *(v17 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1C459CF48(v24 > 1, v25 + 1, 1);
        v17 = v37[0];
      }

      *(v17 + 16) = v25 + 1;
      *(v17 + 8 * v25 + 32) = v23;
      v20 += v33;
      --v13;
      v18 = v22;
    }

    while (v13);
    v6 = v32;
  }

  sub_1C4EFBC58();
  sub_1C456902C(&qword_1EC0B8EB8, &unk_1C4F0E920);
  sub_1C4401CBC(&qword_1EDDDBBE0, &qword_1EC0B8EB8, &unk_1C4F0E920, MEMORY[0x1E69E6328]);
  sub_1C4EFB798();
  memset(v37, 0, 40);
  v26 = sub_1C4EFBC18();
  if (v0)
  {

    sub_1C4420C3C(v37, &unk_1EC0BC770, &qword_1C4F10DC0);
    v27 = sub_1C43FEF08();
    v28(v27);
  }

  else
  {
    v29 = v26;

    sub_1C4420C3C(v37, &unk_1EC0BC770, &qword_1C4F10DC0);
    v30 = sub_1C43FEF08();
    v31(v30);
    *v6 = v29;
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4704BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C4704BE0, 0, 0);
}

uint64_t sub_1C4704BE0()
{
  v1 = *(v0 + 56);
  sub_1C456902C(&qword_1EC0BBC18, &qword_1C4F22548);
  v2 = swift_task_alloc();
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;

  *(v0 + 64) = sub_1C4EFF788();

  v4 = *(v0 + 40);
  sub_1C456902C(&qword_1EC0BB850, &qword_1C4F21700);
  swift_allocObject();
  sub_1C4401CBC(&qword_1EC0BBC20, &qword_1EC0BBC18, &qword_1C4F22548, MEMORY[0x1E69A99C0]);

  v5 = sub_1C4EFC058();
  *(v0 + 72) = v5;
  v9 = (v4 + *v4);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1C4704E24;
  v7 = *(v0 + 16);

  return v9(v7, v5);
}

uint64_t sub_1C4704E24()
{
  sub_1C43FBCD4();
  v5 = *v1;
  sub_1C43FBDAC();
  *v2 = v5;
  *(v5 + 88) = v0;

  if (v0)
  {
    v3 = sub_1C4704F90;
  }

  else
  {

    v3 = sub_1C4704F34;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C4704F34()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4704F90()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4704FF4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v63 = a4;
  v59 = a3;
  v64 = a1;
  v56 = sub_1C4EFDAB8();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C456902C(&qword_1EC0BBC08, &qword_1C4F22530);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v61 = &v50 - v7;
  v62 = type metadata accessor for EntityRelevanceHistoricalFeatureDatabaseTable.EntityTypeQuery(0);
  MEMORY[0x1EEE9AC00](v62);
  v58 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v50 - v10;
  v11 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v50 - v13;
  v60 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  v75 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v53 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v50 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v50 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v50 - v22;
  v52 = a2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  v24 = sub_1C4EFBD38();
  v73 = v24;
  v74 = MEMORY[0x1E69A0050];
  sub_1C4422F90(v72);
  sub_1C4EFBD48();
  sub_1C4EF9AD8();
  *(&v70 + 1) = MEMORY[0x1E69E63B0];
  v71 = MEMORY[0x1E69A0160];
  *&v69 = v25;
  v26 = sub_1C4EFB298();
  v67 = v26;
  v68 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v66);
  sub_1C4EFBB48();
  sub_1C440962C(&v69);
  sub_1C440962C(v72);
  sub_1C4EFBCD8();
  (*(v12 + 8))(v14, v11);
  sub_1C440962C(v66);
  v27 = v24;
  v73 = v24;
  v74 = MEMORY[0x1E69A0050];
  sub_1C4422F90(v72);
  sub_1C4EFBD48();
  sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C4EF9AD8();
  *(&v70 + 1) = MEMORY[0x1E69E63B0];
  v71 = MEMORY[0x1E69A0160];
  v28 = v60;
  *&v69 = v29;
  v59 = v26;
  v67 = v26;
  v68 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v66);
  sub_1C4EFB818();
  sub_1C440962C(&v69);
  sub_1C440962C(v72);
  v30 = sub_1C4401CBC(&qword_1EC0B9AD0, &qword_1EC0B9AC8, &unk_1C4F10E00, MEMORY[0x1E699FF70]);
  sub_1C4EFB438();
  v31 = v61;
  v32 = *(v75 + 8);
  v32(v20, v28);
  sub_1C440962C(v66);
  sub_1C470804C(v63, v31);
  if (sub_1C44157D4(v31, 1, v62) == 1)
  {
    sub_1C4420C3C(v31, &qword_1EC0BBC08, &qword_1C4F22530);
  }

  else
  {
    v63 = v30;
    v33 = v57;
    sub_1C4708138(v31, v57, type metadata accessor for EntityRelevanceHistoricalFeatureDatabaseTable.EntityTypeQuery);
    v26 = v58;
    sub_1C47080D8(v33, v58, type metadata accessor for EntityRelevanceHistoricalFeatureDatabaseTable.EntityTypeQuery);
    v34 = sub_1C456902C(&qword_1EC0BBC10, &qword_1C4F22538);
    if (sub_1C44157D4(v26, 1, v34) == 1)
    {
      v73 = v27;
      v74 = MEMORY[0x1E69A0050];
      sub_1C4422F90(v72);
      sub_1C4EFBD48();
      v71 = 0;
      v69 = 0u;
      v70 = 0u;
      v67 = v59;
      v68 = MEMORY[0x1E699FE60];
      sub_1C4422F90(v66);
      sub_1C4EFBB28();
      sub_1C4420C3C(&v69, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C440962C(v72);
      sub_1C4EFB438();
      sub_1C443CD20(v33, type metadata accessor for EntityRelevanceHistoricalFeatureDatabaseTable.EntityTypeQuery);
      v32(v23, v28);
      sub_1C440962C(v66);
      (*(v75 + 32))(v23, v20, v28);
    }

    else
    {
      v35 = (v58 + *(v34 + 48));
      v36 = *v35;
      v37 = v35[1];
      (*(v55 + 32))(v54);
      v73 = v27;
      v38 = MEMORY[0x1E69A0050];
      v74 = MEMORY[0x1E69A0050];
      sub_1C4422F90(v72);
      sub_1C4EFBD48();
      v39 = sub_1C4EFDAA8();
      *(&v70 + 1) = MEMORY[0x1E69E6530];
      v71 = MEMORY[0x1E69A0178];
      *&v69 = v39;
      v67 = v59;
      v68 = MEMORY[0x1E699FE60];
      sub_1C4422F90(v66);
      sub_1C4EFBB28();
      sub_1C4420C3C(&v69, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C440962C(v72);
      sub_1C4EFB438();
      sub_1C440962C(v66);
      v73 = v27;
      v74 = v38;
      sub_1C4422F90(v72);
      sub_1C4EFBD48();
      if (v37)
      {
        v40 = MEMORY[0x1E69A0130];
        v41 = MEMORY[0x1E69E6158];
      }

      else
      {
        v36 = 0;
        v41 = 0;
        v40 = 0;
        *&v70 = 0;
      }

      v42 = v57;
      *&v69 = v36;
      *(&v69 + 1) = v37;
      *(&v70 + 1) = v41;
      v71 = v40;
      v67 = v59;
      v68 = MEMORY[0x1E699FE60];
      sub_1C4422F90(v66);
      sub_1C4EFBB28();
      sub_1C4420C3C(&v69, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C440962C(v72);
      v26 = v51;
      v43 = v53;
      sub_1C4EFB438();
      v32(v43, v28);
      (*(v55 + 8))(v54, v56);
      sub_1C443CD20(v42, type metadata accessor for EntityRelevanceHistoricalFeatureDatabaseTable.EntityTypeQuery);
      v32(v23, v28);
      sub_1C440962C(v66);
      (*(v75 + 32))(v23, v26, v28);
    }
  }

  sub_1C4401CBC(&qword_1EDDFE850, &qword_1EC0B9AC8, &unk_1C4F10E00, MEMORY[0x1E699FF60]);
  v44 = v65;
  sub_1C4EFB028();
  if (!v44)
  {
    v45 = swift_allocObject();
    v46 = v52;
    v47 = v52[1];
    v45[1] = *v52;
    v45[2] = v47;
    v48 = *(v46 + 48);
    v45[3] = *(v46 + 32);
    v45[4] = v48;
    sub_1C46F4E90(v46, v66);
    sub_1C4EFC078();
    sub_1C456902C(&qword_1EC0BB888, &qword_1C4F21730);
    v26 = sub_1C4EFBD78();
  }

  v32(v23, v28);
  return v26;
}

uint64_t sub_1C4705AC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v117 = a3;
  v110 = type metadata accessor for EntityRelevanceInteractionGroundTruth(0);
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1C4EF9CD8();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v7 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0B9AA0, &unk_1C4F10DA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v112 = &v106 - v9;
  v10 = sub_1C4EFDAB8();
  v113 = *(v10 - 8);
  v114 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v107 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v115 = &v106 - v13;
  v14 = *a1;
  v15 = *(a2 + 40);
  v16 = v15 + 56;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 56);
  v20 = (v17 + 63) >> 6;
  v122 = v15;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v21 = 0;
  v22 = MEMORY[0x1E69E7CC8];
  v118 = v20;
  v119 = v16;
  v120 = v14;
  v121 = v7;
  if (v19)
  {
    while (1)
    {
LABEL_8:
      v24 = (v122[6] + ((v21 << 10) | (16 * __clz(__rbit64(v19)))));
      v25 = *v24;
      v26 = v24[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v27 = COERCE_DOUBLE(sub_1C493CC98());
      if (v28)
      {
        v27 = NAN;
      }

      v29 = v27 == INFINITY ? 0.0 : v27;
      v30 = [objc_opt_self() featureValueWithDouble_];
      v125 = sub_1C4577DBC();
      *&v124 = v30;
      sub_1C44482AC(&v124, v123);
      swift_isUniquelyReferenced_nonNull_native();
      v126 = v22;
      v31 = sub_1C445FAA8(v25, v26);
      if (__OFADD__(v22[2], (v32 & 1) == 0))
      {
        break;
      }

      v33 = v31;
      v34 = v32;
      sub_1C456902C(&unk_1EC0C47F0, &unk_1C4F22550);
      if (sub_1C4F02458())
      {
        v35 = sub_1C445FAA8(v25, v26);
        if ((v34 & 1) != (v36 & 1))
        {
          sub_1C4F029F8();
          __break(1u);
          result = swift_unexpectedError();
          __break(1u);
          return result;
        }

        v33 = v35;
      }

      v22 = v126;
      if (v34)
      {
        v37 = (v126[7] + 32 * v33);
        sub_1C440962C(v37);
        sub_1C44482AC(v123, v37);
      }

      else
      {
        v126[(v33 >> 6) + 8] |= 1 << v33;
        v38 = (v22[6] + 16 * v33);
        *v38 = v25;
        v38[1] = v26;
        sub_1C44482AC(v123, (v22[7] + 32 * v33));
        v39 = v22[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_39;
        }

        v22[2] = v41;
      }

      v19 &= v19 - 1;
      v20 = v118;
      v16 = v119;
      if (!v19)
      {
        goto LABEL_4;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
    goto LABEL_25;
  }

  while (1)
  {
LABEL_4:
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v23 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v23);
    ++v21;
    if (v19)
    {
      v21 = v23;
      goto LABEL_8;
    }
  }

  v42 = objc_allocWithZone(MEMORY[0x1E695FE48]);
  v43 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v44 = v116;
  v45 = sub_1C4701E88(v43);
  v21 = v44;
  if (v44)
  {

    if (qword_1EDDFA668 != -1)
    {
      goto LABEL_40;
    }

LABEL_25:
    v52 = sub_1C4F00978();
    sub_1C442B738(v52, qword_1EDE2DDE0);
    v53 = v21;
    v54 = sub_1C4F00968();
    v55 = sub_1C4F01CD8();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138412290;
      v58 = v21;
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v56 + 4) = v59;
      *v57 = v59;
      _os_log_impl(&dword_1C43F8000, v54, v55, "EntityRelevanceHistoricalFeatureDatabaseTable: Unable to deserialize feature vector from row: %@", v56, 0xCu);
      sub_1C4420C3C(v57, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v57, -1, -1);
      MEMORY[0x1C6942830](v56, -1, -1);
    }

    else
    {
    }

    v78 = v117;
    v79 = sub_1C456902C(&qword_1EC0BB888, &qword_1C4F21730);
    return sub_1C440BAA8(v78, 1, 1, v79);
  }

  v60 = v45;
  sub_1C493DF34(0x7954797469746E65, 0xEA00000000006570, v46, v47, v48, v49, v50, v51, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117);
  v62 = v61;
  v122 = v60;
  sub_1C493DD18();
  v118 = v63;
  v119 = v64;

  v65 = v112;
  sub_1C4EFDA98();
  v66 = v114;
  v67 = sub_1C44157D4(v65, 1, v114);
  v68 = v113;
  if (v67 == 1)
  {

    sub_1C4420C3C(v65, &qword_1EC0B9AA0, &unk_1C4F10DA0);
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v69 = sub_1C4F00978();
    sub_1C442B738(v69, qword_1EDE2DDE0);
    v70 = sub_1C4F00968();
    v71 = sub_1C4F01CD8();
    v72 = os_log_type_enabled(v70, v71);
    v73 = v122;
    if (v72)
    {
      v74 = swift_slowAlloc();
      *v74 = 134217984;
      *(v74 + 4) = v62;
      _os_log_impl(&dword_1C43F8000, v70, v71, "EntityRelevanceHistoricalFeatureDatabaseTable: Unexpected BehaviorType value stored in database: %ld", v74, 0xCu);
      MEMORY[0x1C6942830](v74, -1, -1);
    }

    v75 = sub_1C456902C(&qword_1EC0BB888, &qword_1C4F21730);
    v76 = v117;
    v77 = 1;
  }

  else
  {
    v116 = *(v113 + 32);
    v116(v115, v65, v66);
    sub_1C493E370(0xD000000000000011, 0x80000001C4F930C0, v81, v82, v83, v84, v85, v86, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117);
    sub_1C4EF9AC8();
    v87 = v107;
    (*(v68 + 16))(v107, v115, v66);
    sub_1C493DF34(0xD000000000000014, 0x80000001C4F930E0, v88, v89, v90, v91, v92, v93, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117);
    v95 = v94;
    v96 = sub_1C493CA4C();
    v98 = v97;
    (*(v68 + 8))(v115, v66);
    v99 = v111;
    v116(v111, v87, v66);
    v100 = v110;
    v101 = (v99 + *(v110 + 20));
    v102 = v119;
    *v101 = v118;
    v101[1] = v102;
    *(v99 + *(v100 + 24)) = v95;
    v103 = (v99 + *(v100 + 28));
    *v103 = v96;
    v103[1] = v98;
    v104 = v117;
    (*(v108 + 32))(v117, v121, v109);
    v105 = sub_1C456902C(&qword_1EC0BB888, &qword_1C4F21730);
    *(v104 + *(v105 + 28)) = v122;
    sub_1C4708138(v99, v104 + *(v105 + 32), type metadata accessor for EntityRelevanceInteractionGroundTruth);
    v76 = v104;
    v77 = 0;
    v75 = v105;
  }

  return sub_1C440BAA8(v76, v77, 1, v75);
}

uint64_t sub_1C47064D0(uint64_t a1, void *a2)
{
  v3 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  MEMORY[0x1C6940010](*a2, a2[1]);
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  (*(v5 + 8))(v9, v3);
}

void sub_1C47065F4()
{
  sub_1C43FE96C();
  v1 = v0;
  v41 = v2;
  v36[1] = v3;
  v4 = sub_1C4EFBD38();
  sub_1C43FCDF8();
  v40 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v10 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  sub_1C43FCDF8();
  v12 = v11;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v36 - v14;
  v16 = sub_1C456902C(&qword_1EC0BBC28, &qword_1C4F22560);
  sub_1C43FCDF8();
  v39 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v38 = v36 - v22;
  v23 = *v1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  v24 = sub_1C456902C(&unk_1EC0C2E00, &unk_1C4F2DBD0);
  v25 = sub_1C44331AC(v24);
  v37 = xmmword_1C4F0D130;
  *(v25 + 16) = xmmword_1C4F0D130;
  v26 = MEMORY[0x1E69A0038];
  *(v25 + 56) = v4;
  *(v25 + 64) = v26;
  sub_1C4422F90((v25 + 32));
  sub_1C4413054();
  MEMORY[0x1C693A9D0](v25, MEMORY[0x1E69E63B0], v10, MEMORY[0x1E69E63B0]);

  (*(v12 + 8))(v15, v10);
  v27 = sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
  v28 = sub_1C44331AC(v27);
  *(v28 + 16) = v37;
  sub_1C4EFBD48();
  v29 = sub_1C4EFADA8();
  v30 = MEMORY[0x1E699FDA8];
  *(v28 + 56) = v29;
  *(v28 + 64) = v30;
  sub_1C4422F90((v28 + 32));
  sub_1C4EFB918();
  (*(v40 + 8))(v9, v4);
  sub_1C441F858();
  sub_1C4401CBC(v31, &qword_1EC0BBC28, &qword_1C4F22560, v32);
  v33 = v38;
  sub_1C4EFB2F8();

  v34 = *(v39 + 8);
  v34(v20, v16);
  sub_1C440021C(&qword_1EC0BBC38);
  sub_1C440E150();
  v34(v33, v16);
  if (!v23)
  {
    if ((v42 & 1) == 0)
    {
      sub_1C4EF9AC8();
    }

    v35 = sub_1C4EF9CD8();
    sub_1C440D320(v35);
  }

  sub_1C43FBC80();
}

void sub_1C47069B8()
{
  sub_1C43FE96C();
  v1 = v0;
  v33 = v2;
  v30[1] = v3;
  v4 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  sub_1C43FCDF8();
  v6 = v5;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v30 - v8;
  v10 = sub_1C456902C(&qword_1EC0BBC28, &qword_1C4F22560);
  sub_1C43FCDF8();
  v32 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v30 - v16;
  v18 = *v1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  v19 = sub_1C456902C(&unk_1EC0C2E00, &unk_1C4F2DBD0);
  v20 = sub_1C44331AC(v19);
  v31 = xmmword_1C4F0D130;
  *(v20 + 16) = xmmword_1C4F0D130;
  v21 = sub_1C4EFBD38();
  v22 = MEMORY[0x1E69A0038];
  *(v20 + 56) = v21;
  *(v20 + 64) = v22;
  sub_1C4422F90((v20 + 32));
  sub_1C4413054();
  MEMORY[0x1C693A9D0](v20, MEMORY[0x1E69E63B0], v4, MEMORY[0x1E69E63B0]);

  (*(v6 + 8))(v9, v4);
  v23 = sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
  v24 = sub_1C44331AC(v23);
  *(v24 + 16) = v31;
  v25 = MEMORY[0x1E69A0048];
  *(v24 + 56) = v21;
  *(v24 + 64) = v25;
  sub_1C4422F90((v24 + 32));
  sub_1C4413054();
  sub_1C441F858();
  sub_1C4401CBC(v26, &qword_1EC0BBC28, &qword_1C4F22560, v27);
  sub_1C4EFB2F8();

  v28 = *(v32 + 8);
  v28(v14, v10);
  sub_1C440021C(&qword_1EC0BBC38);
  sub_1C440E150();
  v28(v17, v10);
  if (!v18)
  {
    if ((v34 & 1) == 0)
    {
      sub_1C4EF9AC8();
    }

    v29 = sub_1C4EF9CD8();
    sub_1C440D320(v29);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4706CD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E656C626174 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7365727574616566 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000018 && 0x80000001C4F948C0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

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

uint64_t sub_1C4706DF0(char a1)
{
  if (!a1)
  {
    return 0x6D614E656C626174;
  }

  if (a1 == 1)
  {
    return 0x7365727574616566;
  }

  return 0xD000000000000018;
}

void sub_1C4706E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  v33[1] = v22;
  v33[2] = v21;
  v24 = v23;
  v25 = sub_1C456902C(&qword_1EC0BBBE8, &unk_1C4F22510);
  sub_1C43FCDF8();
  v27 = v26;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v33 - v29;
  sub_1C4409678(v24, v24[3]);
  sub_1C4707C70();
  sub_1C4F02BF8();
  sub_1C4F02798();
  if (!v20)
  {
    v34 = 1;
    sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
    v31 = sub_1C4707D18(&qword_1EDDF05C8, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    sub_1C43FD604(v31);
    v34 = 2;
    sub_1C456902C(&qword_1EC0BBBE0, &qword_1C4F22508);
    v32 = sub_1C4707D84(&qword_1EC0BBBF0, sub_1C4707E08, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1C43FD604(v32);
  }

  (*(v27 + 8))(v30, v25);
  sub_1C43FBC80();
}

void sub_1C4707048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  v22 = v21;
  sub_1C456902C(&qword_1EC0BBBD8, &unk_1C4F224F8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C4409678(v22, v22[3]);
  sub_1C4707C70();
  sub_1C4F02BC8();
  if (!v20)
  {
    sub_1C4F02678();
    sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
    sub_1C4707D18(&qword_1EDDFCE90, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
    sub_1C4411BB8();
    sub_1C4F026C8();
    sub_1C456902C(&qword_1EC0BBBE0, &qword_1C4F22508);
    sub_1C4707D84(&qword_1EDDF06F8, sub_1C4707CC4, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1C4411BB8();
    sub_1C4F026C8();
    v24 = sub_1C440A9F8();
    v25(v24);
  }

  sub_1C440962C(v22);
  sub_1C43FBC80();
}

uint64_t sub_1C470731C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4706CD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4707344(uint64_t a1)
{
  v2 = sub_1C4707C70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4707380(uint64_t a1)
{
  v2 = sub_1C4707C70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

char *sub_1C470740C(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  *(v4 + 1) = *a1;
  *(v4 + 2) = v6;
  v7 = a1[3];
  *(v4 + 3) = a1[2];
  *(v4 + 4) = v7;
  v8 = &v4[OBJC_IVAR____TtC24IntelligencePlatformCore44HistoricalFeatureDatabaseTrainingSetProvider_name];
  *v8 = a2;
  *(v8 + 1) = a3;
  v9 = OBJC_IVAR____TtC24IntelligencePlatformCore44HistoricalFeatureDatabaseTrainingSetProvider_entityType;
  sub_1C4EFDAB8();
  sub_1C43FBCE0();
  (*(v10 + 32))(&v4[v9], a4);
  return v4;
}

uint64_t sub_1C4707494()
{
  sub_1C43FBCD4();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v1[10] = v5;
  v1[11] = v6;
  sub_1C456902C(&qword_1EC0BBC08, &qword_1C4F22530);
  v1[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4707534, 0, 0);
}

uint64_t sub_1C4707534()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v2 + 4);
  v5 = *(v2 + 1);
  v4 = *(v2 + 2);
  *(v0 + 48) = *(v2 + 3);
  *(v0 + 64) = v3;
  *(v0 + 16) = v5;
  *(v0 + 32) = v4;
  v6 = sub_1C456902C(&qword_1EC0BBC10, &qword_1C4F22538);
  v7 = (v1 + *(v6 + 48));
  v8 = OBJC_IVAR____TtC24IntelligencePlatformCore44HistoricalFeatureDatabaseTrainingSetProvider_entityType;
  sub_1C4EFDAB8();
  sub_1C43FBCE0();
  (*(v9 + 16))(v1, &v2[v8]);
  v10 = *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore44HistoricalFeatureDatabaseTrainingSetProvider_name];
  v11 = *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore44HistoricalFeatureDatabaseTrainingSetProvider_name + 8];
  *v7 = v10;
  v7[1] = v11;
  sub_1C440BAA8(v1, 0, 1, v6);
  v12 = type metadata accessor for EntityRelevanceHistoricalFeatureDatabaseTable.EntityTypeQuery(0);
  sub_1C440BAA8(v1, 0, 1, v12);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = swift_task_alloc();
  *(v0 + 136) = v13;
  *v13 = v0;
  v13[1] = sub_1C47076A4;
  v14 = *(v0 + 128);
  v15 = *(v0 + 96);
  v16 = *(v0 + 104);
  v17 = *(v0 + 80);
  v18 = *(v0 + 88);

  return sub_1C4704BB8(v17, v18, v14, v15, v16);
}

uint64_t sub_1C47076A4()
{
  v2 = *(*v1 + 128);
  v6 = *v1;
  sub_1C43FBDAC();
  *v3 = v6;
  *(v6 + 144) = v0;

  sub_1C4420C3C(v2, &qword_1EC0BBC08, &qword_1C4F22530);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C470780C, 0, 0);
  }

  else
  {

    sub_1C43FBDA0();

    return v4();
  }
}

uint64_t sub_1C470780C()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4707868()
{

  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore44HistoricalFeatureDatabaseTrainingSetProvider_entityType;
  sub_1C4EFDAB8();
  sub_1C43FBCE0();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_1C4707920()
{
  sub_1C4707868();

  return swift_deallocClassInstance();
}

uint64_t sub_1C47079A0(uint64_t a1)
{
  result = sub_1C4EFDAB8();
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

uint64_t sub_1C4707A64()
{
  v1 = *(*v0 + OBJC_IVAR____TtC24IntelligencePlatformCore44HistoricalFeatureDatabaseTrainingSetProvider_name);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4707AA4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4707B70;

  return sub_1C4707494();
}

uint64_t sub_1C4707B70()
{
  sub_1C43FBCD4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  sub_1C43FBDA0();

  return v3();
}

unint64_t sub_1C4707C70()
{
  result = qword_1EDDFA6C0;
  if (!qword_1EDDFA6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA6C0);
  }

  return result;
}

unint64_t sub_1C4707CC4()
{
  result = qword_1EDDFED58;
  if (!qword_1EDDFED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFED58);
  }

  return result;
}

uint64_t sub_1C4707D18(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0B9178, &qword_1C4F11B50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4707D84(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0BBBE0, &qword_1C4F22508);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4707E08()
{
  result = qword_1EDDDC378;
  if (!qword_1EDDDC378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDC378);
  }

  return result;
}

unint64_t sub_1C4707F60()
{
  result = qword_1EDDFCD40;
  if (!qword_1EDDFCD40)
  {
    sub_1C4EFB078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCD40);
  }

  return result;
}

unint64_t sub_1C4707FB8()
{
  result = qword_1EC0BBC00;
  if (!qword_1EC0BBC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BBC00);
  }

  return result;
}

uint64_t sub_1C470804C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BBC08, &qword_1C4F22530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C47080D8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4708138(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C47081C0(uint64_t a1)
{
  sub_1C4708218(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1C4708218(uint64_t a1)
{
  if (!qword_1EC0BBC50)
  {
    sub_1C4EFDAB8();
    sub_1C4572308(&qword_1EC0C2BD0, &qword_1C4F0FF50);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC0BBC50);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for EntityRelevanceHistoricalFeatureDatabaseTable.SchemaError(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for EntityRelevanceHistoricalFeatureDatabaseTable.Config.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4708424()
{
  result = qword_1EC0BBC58;
  if (!qword_1EC0BBC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BBC58);
  }

  return result;
}

unint64_t sub_1C470847C()
{
  result = qword_1EC0BBC60;
  if (!qword_1EC0BBC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BBC60);
  }

  return result;
}

unint64_t sub_1C47084D4()
{
  result = qword_1EDDFA6B0;
  if (!qword_1EDDFA6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA6B0);
  }

  return result;
}

unint64_t sub_1C470852C()
{
  result = qword_1EDDFA6B8;
  if (!qword_1EDDFA6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA6B8);
  }

  return result;
}

uint64_t sub_1C4708580(uint64_t a1)
{
  sub_1C4EFDE88();
  sub_1C43FCDF8();
  v109 = v3;
  v110 = v2;
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBFDC();
  v108 = v4;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBF38();
  v107 = v6;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBF38();
  v106 = v8;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBF38();
  v113 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  v112 = v12;
  v98 = type metadata accessor for GraphTriple(0);
  sub_1C43FCDF8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBFDC();
  v117 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v97 - v18;
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v118 = v20;
  v119 = v21;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBFDC();
  v116 = v22;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FD230();
  v99 = v24;
  sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v97 - v26;
  v28 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBCC4();
  v34 = v33 - v32;
  v35 = sub_1C4EFDE98();
  sub_1C43FCDF8();
  v37 = v36;
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBCC4();
  v41 = v40 - v39;
  sub_1C4EFD538();
  sub_1C4EFDCC8();
  (*(v30 + 8))(v34, v28);
  v42 = v119;
  sub_1C4EFF8F8();
  sub_1C43FCF64();
  v101 = v43;
  sub_1C440BAA8(v44, v45, v46, v43);
  v47 = sub_1C498DB80();
  v105 = v27;
  sub_1C4423A0C(v27, &qword_1EC0BAA00, &unk_1C4F17400);
  v48 = *(v37 + 8);
  v102 = v41;
  v103 = v37 + 8;
  v104 = v35;
  v100 = v48;
  v48(v41, v35);
  v49 = *(v47 + 16);
  v115 = v14;
  v111 = a1;
  if (v49)
  {
    v120 = MEMORY[0x1E69E7CC0];
    sub_1C459D178();
    v50 = v120;
    v51 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v97[1] = v47;
    v52 = v47 + v51;
    v114 = *(v14 + 72);
    v53 = (v42 + 16);
    v54 = v118;
    v55 = v99;
    do
    {
      sub_1C4709E74(v52, v19);
      (*v53)(v55, v19, v54);
      sub_1C4709ED8(v19);
      v120 = v50;
      v56 = *(v50 + 16);
      if (v56 >= *(v50 + 24) >> 1)
      {
        sub_1C459D178();
        v54 = v118;
        v50 = v120;
      }

      *(v50 + 16) = v56 + 1;
      sub_1C43FBF6C();
      (*(v58 + 32))(v50 + v57 + *(v58 + 72) * v56, v55, v54);
      v52 += v114;
      --v49;
    }

    while (v49);

    v14 = v115;
  }

  else
  {
  }

  sub_1C45972E0();
  v114 = v59;
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v60 = sub_1C4EFEEF8();
  sub_1C43FCF7C(v60);
  *(swift_allocObject() + 16) = xmmword_1C4F0D130;
  sub_1C4EFE778();
  sub_1C4D504A4();
  v99 = v61;
  v63 = v109;
  v62 = v110;
  v64 = *(v109 + 104);
  sub_1C4413074();
  v64();
  sub_1C4413074();
  v64();
  v65 = v106;
  sub_1C4413074();
  v64();
  v66 = v107;
  sub_1C4413074();
  v64();
  v67 = v108;
  sub_1C4413074();
  v64();
  v68 = v102;
  v69 = v112;
  sub_1C4EFDCD8();

  v70 = *(v63 + 8);
  v70(v67, v62);
  v70(v66, v62);
  v70(v65, v62);
  v70(v113, v62);
  v70(v69, v62);
  v71 = v105;
  sub_1C43FCF64();
  sub_1C440BAA8(v72, v73, v74, v101);
  v75 = sub_1C498DB80();
  sub_1C4423A0C(v71, &qword_1EC0BAA00, &unk_1C4F17400);
  v100(v68, v104);
  v76 = sub_1C4F00F28();
  v114 = *(v75 + 16);
  if (v114)
  {
    v77 = 0;
    v113 = (v117 + *(v98 + 32));
    v112 = v75 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v78 = (v119 + 16);
    v110 = v119 + 40;
    v111 = v119 + 32;
    while (v77 < *(v75 + 16))
    {
      v79 = v117;
      sub_1C4709E74(v112 + *(v14 + 72) * v77, v117);
      v80 = *v113;
      v81 = v113[1];
      (*v78)(v116, v79, v118);
      swift_isUniquelyReferenced_nonNull_native();
      v120 = v76;
      v82 = sub_1C445FAA8(v80, v81);
      if (__OFADD__(*(v76 + 16), (v83 & 1) == 0))
      {
        goto LABEL_23;
      }

      v84 = v82;
      v85 = v83;
      sub_1C456902C(&qword_1EC0B8D78, &qword_1C4F0E308);
      if (sub_1C4F02458())
      {
        v86 = sub_1C445FAA8(v80, v81);
        v14 = v115;
        if ((v85 & 1) != (v87 & 1))
        {
          goto LABEL_25;
        }

        v84 = v86;
      }

      else
      {
        v14 = v115;
      }

      v76 = v120;
      if (v85)
      {
        v88 = sub_1C4403070();
        (*(v89 + 40))(v88, v116);
      }

      else
      {
        *(v120 + 8 * (v84 >> 6) + 64) |= 1 << v84;
        v90 = (*(v76 + 48) + 16 * v84);
        *v90 = v80;
        v90[1] = v81;
        v91 = sub_1C4403070();
        (*(v92 + 32))(v91, v116);
        v93 = *(v76 + 16);
        v94 = __OFADD__(v93, 1);
        v95 = v93 + 1;
        if (v94)
        {
          goto LABEL_24;
        }

        *(v76 + 16) = v95;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      ++v77;
      sub_1C4709ED8(v117);
      if (v114 == v77)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    result = sub_1C4F029F8();
    __break(1u);
  }

  else
  {
LABEL_21:

    return v76;
  }

  return result;
}

uint64_t sub_1C4708EDC(uint64_t a1)
{
  v149 = a1;
  v145 = sub_1C456902C(&qword_1EC0B88B8, &qword_1C4F0DCB8);
  sub_1C43FCDF8();
  v133[1] = v1;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  v146 = (v133 - v3);
  sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v144 = v133 - v5;
  v143 = sub_1C4EFDE88();
  sub_1C43FCDF8();
  *&v142 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  v141 = v8;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBF38();
  v140 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF38();
  v139 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  v148 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FD230();
  v138 = v16;
  v17 = type metadata accessor for GraphTriple(0);
  v18 = sub_1C43FCF7C(v17);
  v151 = v19;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v153 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v133 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FD230();
  v134 = v29;
  sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v133 - v31;
  v33 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBCC4();
  v39 = v38 - v37;
  v40 = sub_1C4EFDE98();
  sub_1C43FCDF8();
  v42 = v41;
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBCC4();
  v46 = v45 - v44;
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C4EFDCC8();
  (*(v35 + 8))(v39, v33);
  sub_1C4EFF8F8();
  sub_1C43FCF64();
  sub_1C440BAA8(v47, v48, v49, v50);
  v51 = sub_1C498DB80();
  sub_1C4423A0C(v32, &qword_1EC0BAA00, &unk_1C4F17400);
  v52 = *(v42 + 8);
  v147 = v46;
  v137 = v40;
  v136 = v42 + 8;
  v135 = v52;
  v52(v46, v40);
  v53 = *(v51 + 16);
  v54 = MEMORY[0x1E69E7CC0];
  v152 = v24;
  v150 = v27;
  if (v53)
  {
    v155[0] = MEMORY[0x1E69E7CC0];
    sub_1C459D178();
    v55 = v155[0];
    sub_1C43FBF6C();
    v133[0] = v51;
    v57 = v51 + v56;
    v151 = *(v58 + 72);
    v59 = (v24 + 16);
    v60 = v153;
    v61 = v134;
    do
    {
      sub_1C4709E74(v57, v22);
      (*v59)(v61, v22, v60);
      sub_1C4709ED8(v22);
      v155[0] = v55;
      v62 = *(v55 + 16);
      if (v62 >= *(v55 + 24) >> 1)
      {
        sub_1C459D178();
        v60 = v153;
        v55 = v155[0];
      }

      *(v55 + 16) = v62 + 1;
      sub_1C43FBF6C();
      (*(v64 + 32))(v55 + v63 + *(v64 + 72) * v62, v61, v60);
      v57 += v151;
      --v53;
    }

    while (v53);

    v54 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v55 = MEMORY[0x1E69E7CC0];
  }

  v156 = v54;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C45972E0();
  v151 = v65;
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v66 = sub_1C4EFEEF8();
  sub_1C43FCF7C(v66);
  *(swift_allocObject() + 16) = xmmword_1C4F0D130;
  sub_1C4EFE558();
  sub_1C4D504A4();
  v134 = v67;
  v68 = v142;
  v69 = *(v142 + 104);
  v70 = v138;
  v71 = v143;
  (v69)(v138, *MEMORY[0x1E69A95C0], v143);
  sub_1C440AA08();
  v69(v72, v73);
  v74 = v139;
  sub_1C440AA08();
  v69(v75, v76);
  v77 = v140;
  sub_1C440AA08();
  v69(v78, v79);
  v80 = v141;
  sub_1C440AA08();
  v69(v81, v82);
  v131 = v80;
  v132 = v134;
  v83 = v148;
  sub_1C4EFDCD8();

  v84 = *(v68 + 8);
  v84(v80, v71);
  v84(v77, v71);
  v84(v74, v71);
  v84(v83, v71);
  v84(v70, v71);
  sub_1C4EFD678();
  v85 = v144;
  sub_1C43FCF64();
  v90 = sub_1C440BAA8(v86, v87, v88, v89);
  MEMORY[0x1EEE9AC00](v90);
  v131 = &v156;
  v91 = v147;
  sub_1C48687D0(v147, v85, sub_1C470A310, &v133[-4]);
  sub_1C4423A0C(v85, &unk_1EC0C07E0, &unk_1C4F168F0);
  v135(v91, v137);
  if (qword_1EDDFA668 != -1)
  {
    swift_once();
  }

  v92 = sub_1C4F00978();
  v93 = sub_1C442B738(v92, qword_1EDE2DDE0);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v147 = v93;
  v94 = sub_1C4F00968();
  v95 = sub_1C4F01CB8();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    *v96 = 134218240;
    swift_beginAccess();
    *(v96 + 4) = v156[2];
    *(v96 + 12) = 2048;
    v97 = *(v55 + 16);

    *(v96 + 14) = v97;

    _os_log_impl(&dword_1C43F8000, v94, v95, "Create map from LOI ID to MDID, found %ld for %ld places.", v96, 0x16u);
    sub_1C43FBE2C();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v98 = v152;
  v99 = v145;
  swift_beginAccess();
  v100 = v156;
  v101 = v156[2];
  v102 = v153;
  v103 = v150;
  if (v101)
  {
    v145 = *(v99 + 48);
    sub_1C43FBF6C();
    v105 = v100 + v104;
    v107 = *(v106 + 72);
    v143 = v98 + 2;
    v144 = v107;
    v108 = v98 + 1;
    v141 = v100;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    *&v109 = 136315394;
    v142 = v109;
    do
    {
      v151 = v101;
      v110 = v146;
      sub_1C470A318(v105, v146);
      v111 = v110[1];
      v148 = *v110;
      v112 = v145;
      (v143->isa)(v103, v110 + v145, v102);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v113 = sub_1C4F00968();
      v114 = v153;
      v115 = v113;
      v116 = sub_1C4F01CB8();

      isa = v108->isa;
      (v108->isa)(v110 + v112, v114);
      LODWORD(v149) = v116;
      v152 = v115;
      if (os_log_type_enabled(v115, v116))
      {
        v118 = swift_slowAlloc();
        v154[0] = swift_slowAlloc();
        *v118 = v142;
        v119 = sub_1C441D828(v148, v111, v154);

        *(v118 + 4) = v119;
        *(v118 + 12) = 2080;
        sub_1C470A388();
        v120 = sub_1C4F02858();
        v122 = v121;
        isa(v150, v153);
        v123 = sub_1C441D828(v120, v122, v154);

        *(v118 + 14) = v123;
        v124 = v152;
        v102 = v153;
        _os_log_impl(&dword_1C43F8000, v152, v149, "LOI_UUID:MDID -> %s : %s", v118, 0x16u);
        swift_arrayDestroy();
        sub_1C43FBE2C();
        v103 = v150;
        sub_1C43FBE2C();
      }

      else
      {

        isa(v103, v114);
        v102 = v114;
      }

      v105 += v144;
      v101 = v151 - 1;
    }

    while (v151 != 1);
    v100 = v141;
  }

  v125 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v126 = sub_1C4709DDC(v125);
  if (*(v126 + 16) >= v100[2])
  {
    goto LABEL_25;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v127 = sub_1C4F00968();
  v128 = sub_1C4F01CE8();
  if (!os_log_type_enabled(v127, v128))
  {

LABEL_25:

    return v126;
  }

  v129 = swift_slowAlloc();
  *v129 = 134218240;
  *(v129 + 4) = v100[2];
  *(v129 + 12) = 2048;
  *(v129 + 14) = *(v126 + 16);

  _os_log_impl(&dword_1C43F8000, v127, v128, "Possible duplicate LOI IDs detected: %ld -> %ld", v129, 0x16u);
  sub_1C43FBE2C();

  return v126;
}

uint64_t sub_1C4709BD0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C456902C(&qword_1EC0B88B8, &qword_1C4F0DCB8);
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - v5;
  v7 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v10 = (a1 + *(type metadata accessor for GraphTriple(0) + 32));
  v12 = *v10;
  v11 = v10[1];
  sub_1C4EF9CE8();
  v13 = sub_1C4EF9D38();
  v14 = sub_1C44157D4(v9, 1, v13);
  sub_1C4423A0C(v9, &qword_1EC0B9DC8, &unk_1C4F124A0);
  if (v14 != 1)
  {
    v15 = *(v4 + 48);
    *v6 = v12;
    *(v6 + 1) = v11;
    v16 = sub_1C4EFF0C8();
    (*(*(v16 - 8) + 16))(&v6[v15], a1, v16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C458918C();
    v17 = *(*a2 + 16);
    sub_1C4589D3C();
    v18 = *a2;
    *(v18 + 16) = v17 + 1;
    sub_1C470A3E0(v6, v18 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v17);
  }

  return 1;
}

uint64_t sub_1C4709DDC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C456902C(&qword_1EC0BAAF0, &qword_1C4F16BF8);
    v3 = sub_1C4F02558();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1C4709F34(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_1C4709E74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GraphTriple(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4709ED8(uint64_t a1)
{
  v2 = type metadata accessor for GraphTriple(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4709F34(uint64_t a1, char a2, void *a3)
{
  v50 = a3;
  v5 = sub_1C4EFF0C8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v49 = v39 - v9;
  v10 = sub_1C456902C(&qword_1EC0B88B8, &qword_1C4F0DCB8);
  MEMORY[0x1EEE9AC00](v10);
  v47 = (v39 - v13);
  v46 = *(a1 + 16);
  if (!v46)
  {
  }

  v14 = 0;
  v45 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v15 = *(v11 + 48);
  v43 = v6;
  v44 = v15;
  v48 = (v6 + 32);
  v39[2] = v6 + 8;
  v39[3] = v6 + 16;
  v39[1] = v6 + 40;
  v41 = v12;
  v42 = a1;
  while (v14 < *(a1 + 16))
  {
    v16 = v47;
    sub_1C470A318(v45 + *(v12 + 72) * v14, v47);
    v18 = *v16;
    v17 = v16[1];
    v19 = *v48;
    v20 = v16 + v44;
    v21 = v5;
    (*v48)(v49, v20, v5);
    v22 = *v50;
    v24 = sub_1C445FAA8(v18, v17);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_18;
    }

    v27 = v23;
    if (v22[3] >= v25 + v26)
    {
      if ((a2 & 1) == 0)
      {
        sub_1C456902C(&qword_1EC0B8D78, &qword_1C4F0E308);
        sub_1C4F02468();
      }
    }

    else
    {
      sub_1C467A010();
      v28 = sub_1C445FAA8(v18, v17);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_20;
      }

      v24 = v28;
    }

    v30 = *v50;
    if (v27)
    {
      v31 = v43;
      v32 = v40;
      v33 = v49;
      v5 = v21;
      (*(v43 + 16))(v40, v49, v21);
      (*(v31 + 8))(v33, v21);

      (*(v31 + 40))(v30[7] + *(v31 + 72) * v24, v32, v21);
    }

    else
    {
      v30[(v24 >> 6) + 8] |= 1 << v24;
      v34 = (v30[6] + 16 * v24);
      *v34 = v18;
      v34[1] = v17;
      v5 = v21;
      v19((v30[7] + *(v43 + 72) * v24), v49, v21);
      v35 = v30[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_19;
      }

      v30[2] = v37;
    }

    ++v14;
    a2 = 1;
    v12 = v41;
    a1 = v42;
    if (v46 == v14)
    {
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C470A318(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B88B8, &qword_1C4F0DCB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C470A388()
{
  result = qword_1EDDFE810;
  if (!qword_1EDDFE810)
  {
    sub_1C4EFF0C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE810);
  }

  return result;
}

uint64_t sub_1C470A3E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B88B8, &qword_1C4F0DCB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1C470A450(uint64_t a1)
{
  v81 = *v1;
  v4 = sub_1C4EF98F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C43FBCC4();
  v68 = v6 - v5;
  v72 = sub_1C4EFCD88();
  sub_1C43FCDF8();
  v70 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v69 = v10 - v9;
  v11 = sub_1C456902C(&qword_1EC0BBC78, &unk_1C4F228F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v76 = &v62 - v12;
  sub_1C4EFCD98();
  sub_1C43FCDF8();
  v74 = v14;
  v75 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v73 = &v62 - v17;
  sub_1C4EFF968();
  sub_1C43FCDF8();
  v78 = v19;
  v79 = v18;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v23 = sub_1C4EFDED8();
  sub_1C43FCDF8();
  v77 = v24;
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBCC4();
  v28 = (v27 - v26);
  v29 = sub_1C4F00008();
  sub_1C43FCDF8();
  v80 = v30;
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBCC4();
  v1[4] = 2;
  v82 = v1;
  v1[2] = a1;
  sub_1C4EFEF48();
  swift_allocObject();
  v32 = a1;

  v33 = sub_1C4EFEF38();
  if (!v2)
  {
    v34 = v33;
    v65 = v22;
    v66 = v29;
    v63 = v23;
    v64 = v28;
    v67 = v32;
    sub_1C4EFFFF8();
    sub_1C4EFFF88();
    sub_1C470CF20(&qword_1EDDEFE90, MEMORY[0x1E69A9C38], MEMORY[0x1E69A9C30]);
    v37 = sub_1C4EFEF18();
    v38 = sub_1C442C8AC();
    v39(v38);
    v35 = v82;
    v82[3] = v37;
    sub_1C4EFDF58();
    v40 = v63;
    v41 = v64;
    *v64 = sub_1C494A1D8;
    v41[1] = 0;
    (*(v77 + 104))(v41, *MEMORY[0x1E69A95E0], v40);
    sub_1C456902C(qword_1EC0BBC80, &qword_1C4F3BE70);
    v42 = *MEMORY[0x1E69A9A40];
    v43 = sub_1C4EFF958();
    v44 = v65;
    (*(*(v43 - 8) + 104))(v65, v42, v43);
    sub_1C4EFF928();
    (*(v78 + 104))(v44, *MEMORY[0x1E69A9A28], v79);
    v45 = sub_1C4EFDEE8();
    v46 = v76;
    sub_1C4EFDEB8();
    v47 = v75;
    if (sub_1C44157D4(v46, 1, v75) == 1)
    {
      sub_1C4423A0C(v46, &qword_1EC0BBC78, &unk_1C4F228F0);
    }

    else
    {
      v81 = v45;
      v49 = v73;
      v48 = v74;
      (*(v74 + 32))(v73, v46, v47);
      v50 = v71;
      (*(v48 + 16))(v71, v49, v47);
      if ((*(v48 + 88))(v50, v47) == *MEMORY[0x1E69A9198])
      {
        v80 = v34;
        (*(v48 + 96))(v50, v47);
        v51 = v70;
        v52 = v50;
        v53 = v69;
        (*(v70 + 32))(v69, v52, v72);
        type metadata accessor for EntityRelevanceExplainer();
        v54 = v68;
        sub_1C4EFCD38();
        v60 = sub_1C46F741C(v54, 1.0);

        v61 = v73;

        (*(v51 + 8))(v53, v72);
        (*(v74 + 8))(v61, v47);
LABEL_15:
        v35[5] = v60;
        return v35;
      }

      v55 = *(v48 + 8);
      v55(v49, v47);
      v55(v50, v47);
    }

    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v56 = sub_1C4F00978();
    sub_1C442B738(v56, qword_1EDE2DDE0);
    v57 = sub_1C4F00968();
    v58 = sub_1C4F01CB8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_1C43F8000, v57, v58, "[InferenceCore] Running without explainer", v59, 2u);
      MEMORY[0x1C6942830](v59, -1, -1);
    }

    v60 = 0;
    goto LABEL_15;
  }

  v35 = v82;

  swift_deallocPartialClassInstance();
  return v35;
}

uint64_t sub_1C470AD58(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v24 - v9;
  v11 = sub_1C4EFF0C8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v24 - v16;
  switch(a1)
  {
    case 1:
      sub_1C470CDF4();
      swift_allocError();
      *v22 = xmmword_1C4F14630;
      *(v22 + 16) = 2;
      swift_willThrow();
      break;
    case 2:
      if (!a4)
      {
        goto LABEL_14;
      }

      if (!*(a4 + 16))
      {
        goto LABEL_14;
      }

      v18 = sub_1C445FAA8(a2, a3);
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }

      (*(v12 + 16))(v14, *(a4 + 56) + *(v12 + 72) * v18, v11);
      a2 = sub_1C4EFF068();
      (*(v12 + 8))(v14, v11);
      break;
    case 3:
      v24[2] = a2;
      v24[3] = a3;
      v24[0] = 44;
      v24[1] = 0xE100000000000000;
      sub_1C4415EA8();
      if (sub_1C4F02048())
      {
        goto LABEL_14;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFF0D8();
      if (sub_1C44157D4(v10, 1, v11) == 1)
      {
        sub_1C4423A0C(v10, &unk_1EC0BA0E0, &qword_1C4F105A0);
        goto LABEL_14;
      }

      a2 = sub_1C4EFF068();
      (*(v12 + 8))(v10, v11);
      break;
    case 4:
    case 5:
    case 6:
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      break;
    default:
      if (a4 && *(a4 + 16) && (v20 = sub_1C445FAA8(a2, a3), (v21 & 1) != 0))
      {
        (*(v12 + 16))(v17, *(a4 + 56) + *(v12 + 72) * v20, v11);
        a2 = sub_1C4EFF068();
        (*(v12 + 8))(v17, v11);
      }

      else
      {
LABEL_14:
        a2 = 0;
      }

      break;
  }

  return a2;
}

uint64_t sub_1C470B08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, double *a8@<X8>)
{
  v64 = a6;
  v65 = a7;
  v72 = a8;
  v73 = a4;
  v67 = a3;
  v71 = a2;
  v59 = a1;
  v10 = sub_1C4F01188();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v69 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1C4EFFF78();
  v63 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v62 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C4EFFCD8();
  v61 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1C4EFFF58();
  v15 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1C456902C(&qword_1EC0BB868, &unk_1C4F22980);
  v70 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v19 = &v57 - v18;
  sub_1C470CF20(&qword_1EDDEFEB8, MEMORY[0x1E69A9B80], MEMORY[0x1E69A9B78]);
  v20 = sub_1C4EFD568();
  v68 = v8;
  swift_unknownObjectRetain();
  sub_1C4EFFF48();
  v21 = v76;
  sub_1C4EFFDD8();
  if (v21)
  {
    return (*(v15 + 8))(v17, v75);
  }

  v57 = a5;
  v76 = 0;
  (*(v15 + 8))(v17, v75);
  v23 = v73;
  swift_bridgeObjectRetain_n();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v24 = v60;
  v25 = v67;
  sub_1C4EFFCC8();
  v75 = v20;
  sub_1C4EFD558();
  (*(v61 + 8))(v24, v13);
  v26 = v62;
  sub_1C4EFEF58();
  sub_1C4EFFF68();
  v28 = v27;
  (*(v63 + 8))(v26, v66);
  v29 = *(v68 + 40);
  v58 = v19;
  if (v29)
  {
    sub_1C46F7648(v57, 3, 10);
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v32 = objc_autoreleasePoolPush();
  sub_1C4EF93D8();
  swift_allocObject();
  sub_1C4EF93C8();
  v69 = v31;
  v77[0] = v31;
  sub_1C456902C(&qword_1EC0BBC68, qword_1C4F22790);
  sub_1C470CC68();
  v33 = v76;
  v34 = sub_1C4EF93B8();
  if (v33)
  {

    v36 = 0;
    v37 = 0;
  }

  else
  {
    v38 = v34;
    v39 = v35;

    sub_1C4F01178();
    v40 = sub_1C4F01158();
    v37 = v41;
    v42 = v38;
    v36 = v40;
    sub_1C4434000(v42, v39);
  }

  v43 = v71;
  v76 = 0;
  objc_autoreleasePoolPop(v32);
  if (qword_1EDDFA668 != -1)
  {
    swift_once();
  }

  v44 = sub_1C4F00978();
  sub_1C442B738(v44, qword_1EDE2DDE0);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v45 = sub_1C4F00968();
  v46 = sub_1C4F01CF8();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = v36;
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v77[0] = v49;
    *v48 = 136315650;
    *(v48 + 4) = sub_1C441D828(v59, v43, v77);
    *(v48 + 12) = 2048;
    *(v48 + 14) = v28;
    *(v48 + 22) = 2080;
    if (v37)
    {
      v50 = v47;
    }

    else
    {
      v50 = 1701736302;
    }

    v51 = v25;
    if (v37)
    {
      v52 = v37;
    }

    else
    {
      v52 = 0xE400000000000000;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v53 = sub_1C441D828(v50, v52, v77);
    v25 = v51;

    *(v48 + 24) = v53;
    _os_log_impl(&dword_1C43F8000, v45, v46, "[InferenceCore] Inference for %s: score = %f, explanation: %s", v48, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v49, -1, -1);
    v54 = v48;
    v36 = v47;
    v23 = v73;
    MEMORY[0x1C6942830](v54, -1, -1);
  }

  result = (*(v70 + 8))(v58, v74);
  v55 = v72;
  v56 = v75;
  *v72 = v25;
  *(v55 + 1) = v23;
  *(v55 + 2) = v28;
  *(v55 + 3) = v36;
  *(v55 + 4) = v37;
  *(v55 + 5) = v56;
  return result;
}

void sub_1C470B7CC(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v9 = v8;
  v12 = a4[2];
  v13 = a4[3];
  v64 = a4[4];
  v14 = *(v7 + 16);
  v69 = a1;
  v61 = a6;
  v62 = a3;
  v58 = a2;
  v59 = a7;
  v57 = v12;
  if (a1 == 2)
  {
    v15 = sub_1C4708EDC(v14);
    goto LABEL_5;
  }

  if (!a1)
  {
    v15 = sub_1C4708580(v14);
LABEL_5:
    v67 = v15;
    goto LABEL_7;
  }

  v67 = 0;
LABEL_7:
  MEMORY[0x1EEE9AC00](v64);
  v60 = a5;
  v55[2] = a5;

  v63 = v13;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v16 = sub_1C49A529C(sub_1C470CB14, v55);

  v17 = v16;
  v18 = 0;
  v71 = *(v16 + 16);
  v65 = MEMORY[0x1E69E7CC0];
  v19 = v16 + 40;
  *&v20 = 136315138;
  v66 = v20;
  v21 = v67;
  v56 = v19;
LABEL_8:
  for (i = (v19 + 16 * v18); ; i += 2)
  {
    if (v71 == v18)
    {

      v48 = swift_allocObject();
      v50 = v60;
      v49 = v61;
      v48[2] = v70;
      v48[3] = v50;
      v51 = v57;
      v48[4] = v49;
      v48[5] = v51;
      v52 = v64;
      v48[6] = v63;
      v48[7] = v52;
      v53 = v59;
      v54 = v62;
      v48[8] = v58;
      v48[9] = v54;
      *v53 = v65;
      v53[1] = sub_1C470CB30;
      v53[2] = v48;
      v53[3] = sub_1C470CBDC;
      v53[4] = 0;
      v53[5] = sub_1C470CC14;
      v53[6] = 0;

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      return;
    }

    if (v18 >= *(v17 + 16))
    {
      break;
    }

    v23 = v18;
    v25 = *(i - 1);
    v24 = *i;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v26 = sub_1C470AD58(v69, v25, v24, v21);
    if (v9)
    {

      return;
    }

    v28 = v27;
    if (v27)
    {
      v38 = v26;
      v39 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458D334(0, *(v65 + 16) + 1, 1, v65);
        v65 = v46;
      }

      v41 = *(v65 + 16);
      v40 = *(v65 + 24);
      v42 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        v68 = v41 + 1;
        sub_1C458D334(v40 > 1, v41 + 1, 1, v65);
        v42 = v68;
        v43 = v23;
        v65 = v47;
      }

      else
      {
        v43 = v23;
      }

      v18 = v43 + 1;
      v44 = v65;
      *(v65 + 16) = v42;
      v45 = (v44 + 32 * v41);
      v45[4] = v25;
      v45[5] = v24;
      v45[6] = v38;
      v45[7] = v28;
      v17 = v39;
      v19 = v56;
      goto LABEL_8;
    }

    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v29 = sub_1C4F00978();
    sub_1C442B738(v29, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v30 = sub_1C4F00968();
    v31 = sub_1C4F01CD8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v68 = 0;
      v33 = v32;
      v34 = v17;
      v35 = swift_slowAlloc();
      v72 = v35;
      *v33 = v66;
      *(v33 + 4) = sub_1C441D828(v25, v24, &v72);
      _os_log_impl(&dword_1C43F8000, v30, v31, "Dropping identifier since it cannot be resolved to mdid: %s", v33, 0xCu);
      sub_1C440962C(v35);
      v36 = v35;
      v17 = v34;
      MEMORY[0x1C6942830](v36, -1, -1);
      v37 = v33;
      v21 = v67;
      v9 = v68;
      MEMORY[0x1C6942830](v37, -1, -1);
    }

    else
    {
    }

    v18 = v23 + 1;
  }

  __break(1u);
}

double sub_1C470BC30@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v11 = *a1;
  v12 = a1[1];
  v14 = a1[2];
  v13 = a1[3];
  v37 = a4;
  v38 = a5;
  *&v39 = a6;
  v15 = sub_1C470C1D4(v11, v12, a2, a3, &v37);
  v16 = sub_1C4F01108();
  v36 = v15;
  v17 = [v15 featureValueForName_];

  v18 = v17;
  if (v17)
  {
    [v17 doubleValue];
  }

  else
  {
    v19 = 0.0;
  }

  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_15;
  }

  if (v19 >= 2)
  {
    sub_1C470B08C(v11, v12, v14, v13, v36, a7, a9, &v37);
    v32 = v37;
    v33 = v38;
    swift_unknownObjectRelease();

    *a8 = v32;
    *(a8 + 8) = v33;
    result = *&v39;
    v35 = v40;
    *(a8 + 16) = v39;
    *(a8 + 32) = v35;
    return result;
  }

  if (!v17)
  {
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v20 = sub_1C4F00978();
    sub_1C442B738(v20, qword_1EDE2DDE0);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CD8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1C441D828(v11, v12, &v37);
      _os_log_impl(&dword_1C43F8000, v21, v22, "[InferenceCore] feature 'totalCount' not found for %s", v23, 0xCu);
      sub_1C440962C(v24);
      MEMORY[0x1C6942830](v24, -1, -1);
      v25 = v23;
      v18 = 0;
      MEMORY[0x1C6942830](v25, -1, -1);
    }
  }

  if (qword_1EDDFA668 != -1)
  {
    goto LABEL_23;
  }

LABEL_15:
  v26 = sub_1C4F00978();
  sub_1C442B738(v26, qword_1EDE2DDE0);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v27 = sub_1C4F00968();
  v28 = sub_1C4F01CB8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = v18;
    v31 = swift_slowAlloc();
    v37 = v31;
    *v29 = 136315138;
    *(v29 + 4) = sub_1C441D828(v11, v12, &v37);
    _os_log_impl(&dword_1C43F8000, v27, v28, "[InferenceCore] Skipping %s because total count is below threshold", v29, 0xCu);
    sub_1C440962C(v31);
    MEMORY[0x1C6942830](v31, -1, -1);
    MEMORY[0x1C6942830](v29, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  result = 0.0;
  *(a8 + 16) = 0u;
  *(a8 + 32) = 0u;
  *a8 = 0u;
  return result;
}

uint64_t sub_1C470C1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v89 = a4;
  v92 = a1;
  v5 = *a5;
  v6 = a5[2];
  v7 = *(a3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v86 = a5[1];
    v87 = v5;
    v88 = v6;
    __dst[0] = MEMORY[0x1E69E7CC0];
    v90 = a2;
    sub_1C459E008(0, v7, 0);
    v10 = v90;
    v8 = __dst[0];
    v11 = (a3 + 40);
    v91 = xmmword_1C4F0D130;
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      v14 = swift_allocObject();
      *(v14 + 16) = v91;
      *(v14 + 32) = v92;
      *(v14 + 40) = v10;
      __dst[0] = v8;
      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      a1 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v16 >= v15 >> 1)
      {
        a1 = sub_1C459E008((v15 > 1), v16 + 1, 1);
        v10 = v90;
        v8 = __dst[0];
      }

      *(v8 + 16) = v16 + 1;
      v17 = v8 + 40 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v13;
      *(v17 + 48) = 0;
      *(v17 + 56) = v14;
      *(v17 + 64) = 0;
      v11 += 2;
      --v7;
    }

    while (v7);
  }

  MEMORY[0x1EEE9AC00](a1);
  v80[16] = 0;
  v81 = v8;
  v82 = v18;
  v83 = v20;
  v84 = v19;
  v85 = 0;
  v21 = sub_1C49A5498(sub_1C470CD1C, v80);

  v22 = 0;
  *&v91 = *(v21 + 16);
  v23 = MEMORY[0x1E69E7CC8];
  v24 = 32;
  v90 = 32;
LABEL_7:
  v25 = v24 + 80 * v22;
  v92 = v23;
  while (v91 != v22)
  {
    if (v22 >= *(v21 + 16))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    memcpy(__dst, (v21 + v25), 0x49uLL);
    sub_1C470CD44(__dst, &v93);
    v26 = objc_autoreleasePoolPush();
    sub_1C4461BB8(0, &qword_1EDDFCE70, 0x1E696ACD0);
    sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
    v27 = v95;
    v28 = sub_1C4F01D38();
    if (v27)
    {

      objc_autoreleasePoolPop(v26);
      sub_1C470CDA0(__dst);
    }

    v29 = v28;
    v95 = 0;
    v31 = __dst[2];
    v30 = __dst[3];
    objc_autoreleasePoolPop(v26);
    if (v29)
    {
      v34 = v92;
      LODWORD(v88) = swift_isUniquelyReferenced_nonNull_native();
      v93 = v34;
      v35 = sub_1C445FAA8(v31, v30);
      if (!__OFADD__(*(v34 + 16), (v36 & 1) == 0))
      {
        v37 = v35;
        v38 = v36;
        sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
        if (sub_1C4F02458())
        {
          v39 = sub_1C445FAA8(v31, v30);
          v41 = v38;
          v42 = v38 & 1;
          v24 = v90;
          if (v42 == (v40 & 1))
          {
            v37 = v39;
            goto LABEL_20;
          }

LABEL_55:
          result = sub_1C4F029F8();
          __break(1u);
          return result;
        }

        v41 = v38;
        v24 = v90;
LABEL_20:
        v23 = v93;
        if (v41)
        {
          v44 = v93[7];
          v45 = *(v44 + 8 * v37);
          *(v44 + 8 * v37) = v29;

          sub_1C470CDA0(__dst);
          goto LABEL_24;
        }

        v93[(v37 >> 6) + 8] |= 1 << v37;
        v46 = (v23[6] + 16 * v37);
        *v46 = v31;
        v46[1] = v30;
        *(v23[7] + 8 * v37) = v29;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C470CDA0(__dst);
        v47 = v23[2];
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (!v48)
        {
          v23[2] = v49;
          goto LABEL_24;
        }

LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v23 = v92;
    v32 = sub_1C445FAA8(v31, v30);
    if (v33)
    {
      v43 = v32;
      swift_isUniquelyReferenced_nonNull_native();
      v93 = v23;
      sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
      sub_1C4F02458();
      v23 = v93;

      sub_1C4F02478();
      sub_1C470CDA0(__dst);
      v24 = v90;
LABEL_24:
      ++v22;
      goto LABEL_7;
    }

    sub_1C470CDA0(__dst);
    v25 += 80;
    ++v22;
  }

  if (v89)
  {
    v50 = 0;
    v51 = *(v89 + 16);
    v52 = v89 + 40;
    v53 = MEMORY[0x1E69E7CC8];
    *&v91 = v89 + 40;
LABEL_27:
    v54 = (v52 + 16 * v50);
    for (i = v50; v51 != i; ++i)
    {
      if (i >= v51)
      {
        goto LABEL_49;
      }

      v50 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_50;
      }

      v57 = *(v54 - 1);
      v56 = *v54;
      v58 = objc_opt_self();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v59 = [v58 featureValueWithDouble_];
      if (v59)
      {
        v62 = v59;
        LODWORD(v90) = swift_isUniquelyReferenced_nonNull_native();
        __dst[0] = v53;
        v63 = sub_1C445FAA8(v57, v56);
        if (__OFADD__(v53[2], (v64 & 1) == 0))
        {
          goto LABEL_52;
        }

        v65 = v63;
        v66 = v64;
        sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
        if (sub_1C4F02458())
        {
          v67 = sub_1C445FAA8(v57, v56);
          if ((v66 & 1) != (v68 & 1))
          {
            goto LABEL_55;
          }

          v65 = v67;
        }

        v53 = __dst[0];
        if (v66)
        {
          v69 = *(__dst[0] + 56);
          v70 = *(v69 + 8 * v65);
          *(v69 + 8 * v65) = v62;
        }

        else
        {
          *(__dst[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
          v72 = (v53[6] + 16 * v65);
          *v72 = v57;
          v72[1] = v56;
          *(v53[7] + 8 * v65) = v62;
          v73 = v53[2];
          v48 = __OFADD__(v73, 1);
          v74 = v73 + 1;
          if (v48)
          {
            goto LABEL_54;
          }

          v53[2] = v74;
        }

        goto LABEL_43;
      }

      v60 = sub_1C445FAA8(v57, v56);
      if (v61)
      {
        v71 = v60;
        swift_isUniquelyReferenced_nonNull_native();
        __dst[0] = v53;
        sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
        sub_1C4F02458();
        v53 = __dst[0];

        sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
        sub_1C4F02478();

LABEL_43:
        v52 = v91;
        goto LABEL_27;
      }

      v54 += 2;
    }

    v76 = v92;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    __dst[0] = v76;
    v78 = v95;
    sub_1C46C63CC(v53, sub_1C46C3C50, 0, isUniquelyReferenced_nonNull_native, __dst);
    v95 = v78;
    v23 = __dst[0];
  }

  sub_1C4461BB8(0, &qword_1EDDDB8B0, 0x1E695FE48);
  result = sub_1C470C9F4(v23);
  if (!result)
  {
    sub_1C470CDF4();
    swift_allocError();
    *v79 = xmmword_1C4F14630;
    *(v79 + 16) = 4;
    return swift_willThrow();
  }

  return result;
}

id sub_1C470C9F4(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  v2 = sub_1C4F00EC8();

  v3 = [v1 initWithFeatureValueDictionary_];

  return v3;
}