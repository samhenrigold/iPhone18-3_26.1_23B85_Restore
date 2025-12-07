uint64_t sub_1C714DA24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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

void sub_1C714DAA4(double **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v90 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v85 = a4;
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

      v87 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC(0, v8[2] + 1, 1, v8);
        v8 = v83;
      }

      v40 = v8[2];
      v39 = v8[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_1C6FB17EC(v39 > 1, v40 + 1, 1, v8);
        v8 = v84;
      }

      v8[2] = v41;
      v42 = v8 + 4;
      v43 = &v8[2 * v40 + 4];
      *v43 = v7;
      v43[1] = v87;
      v88 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[2 * v41 - 2];
          v46 = &v8[2 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = v8[4];
            v48 = v8[5];
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_56:
            if (v50)
            {
              goto LABEL_96;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_99;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_104;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v41 < 2)
          {
            goto LABEL_98;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_71:
          if (v65)
          {
            goto LABEL_101;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_103;
          }

          if (v72 < v64)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v44 - 1 >= v41)
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

          v76 = &v42[2 * v44 - 2];
          v77 = *v76;
          v78 = &v42[2 * v44];
          v79 = v78[1];
          sub_1C714E0F0((*a3 + 24 * *v76), (*a3 + 24 * *v78), *a3 + 24 * v79, v88);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v79 < v77)
          {
            goto LABEL_91;
          }

          v80 = v8;
          v81 = v8[2];
          if (v44 > v81)
          {
            goto LABEL_92;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_93;
          }

          v41 = v81 - 1;
          memmove(&v42[2 * v44], v78 + 2, 16 * (v81 - 1 - v44));
          v80[2] = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          v5 = 0;
          if (!v82)
          {
            goto LABEL_85;
          }
        }

        v51 = &v42[2 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_94;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_95;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_97;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_100;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_105;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v87;
      a4 = v85;
      if (v87 >= v6)
      {
        v90 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_1C714DFB8(&v90, *result, a3);
LABEL_89:
}

uint64_t sub_1C714DFB8(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
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
    sub_1C714E0F0((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
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

uint64_t sub_1C714E0F0(char *a1, double *a2, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1C7423D18(a1, (a2 - a1) / 24, a4);
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

  sub_1C7423D18(a2, (a3 - a2) / 24, a4);
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

uint64_t sub_1C714E3A4()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v7 = v0[4];
  v6 = v0[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1C6F738F4;

  return sub_1C714B4BC(v3, v4, v5, v7, v6);
}

unint64_t sub_1C714E468()
{
  result = qword_1EC217EE8;
  if (!qword_1EC217EE8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217EE0, &qword_1C756FD38);
    v4[0] = sub_1C714E4EC();
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EC217EE8);
  }

  return result;
}

unint64_t sub_1C714E4EC()
{
  result = qword_1EC217EF0;
  if (!qword_1EC217EF0)
  {
    result = swift_getWitnessTable(byte_1C756FE48, &_s9GeneratorV23DiagnosticsCuratedAssetVN, v0, v1);
    atomic_store(result, &qword_1EC217EF0);
  }

  return result;
}

uint64_t sub_1C714E5B8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19_1();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return a2;
}

unint64_t sub_1C714E610()
{
  result = qword_1EC217F00;
  if (!qword_1EC217F00)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC215BF0, &qword_1C755C2F0);
    result = swift_getWitnessTable(MEMORY[0x1E69E6508], v3, v0, v1);
    atomic_store(result, &qword_1EC217F00);
  }

  return result;
}

_BYTE *_s9GeneratorV13StagedSamplerV5StageOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C714E764()
{
  result = qword_1EC217F08;
  if (!qword_1EC217F08)
  {
    result = swift_getWitnessTable(asc_1C756FE20, &_s9GeneratorV13StagedSamplerV5StageON, v0, v1);
    atomic_store(result, &qword_1EC217F08);
  }

  return result;
}

unint64_t sub_1C714E7B8()
{
  result = qword_1EC217F18;
  if (!qword_1EC217F18)
  {
    result = swift_getWitnessTable(aU_2, &_s9GeneratorV23DiagnosticsCuratedAssetV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC217F18);
  }

  return result;
}

_BYTE *_s9GeneratorV23DiagnosticsCuratedAssetV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C714E8EC()
{
  result = qword_1EC217F20;
  if (!qword_1EC217F20)
  {
    result = swift_getWitnessTable(asc_1C756FF1C, &_s9GeneratorV23DiagnosticsCuratedAssetV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC217F20);
  }

  return result;
}

unint64_t sub_1C714E944()
{
  result = qword_1EC217F28;
  if (!qword_1EC217F28)
  {
    result = swift_getWitnessTable(aE_1, &_s9GeneratorV23DiagnosticsCuratedAssetV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC217F28);
  }

  return result;
}

unint64_t sub_1C714E99C()
{
  result = qword_1EC217F30;
  if (!qword_1EC217F30)
  {
    result = swift_getWitnessTable(asc_1C756FEB4, &_s9GeneratorV23DiagnosticsCuratedAssetV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC217F30);
  }

  return result;
}

void *OUTLINED_FUNCTION_60_8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);

  return memcpy(va, v37, 0x130uLL);
}

uint64_t OUTLINED_FUNCTION_69_11(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_70_9()
{

  return sub_1C75504DC();
}

unint64_t StoryOrchestrator.StoryOrchestratorCancellationError.descriptionWithoutUnderlying.getter()
{
  result = 0xD00000000000001BLL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C714EB7C()
{
  sub_1C714F600();

  JUMPOUT(0x1CCA5BE40);
}

uint64_t StoryOrchestrator.Error.underlyingErrors.getter()
{
  v1 = v0;
  v2 = type metadata accessor for StoryOrchestrator.Error(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C714ED44(v1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = MEMORY[0x1E69E7CC0];
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
    case 5:
      v7 = *v4;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217F38, &unk_1C7576310);
      sub_1C70D7CB8(&v4[*(v8 + 48)]);
      goto LABEL_6;
    case 3:
      v13 = *v4;
      v9 = *(v4 + 2);
      v10 = v4[24];
      sub_1C6FE0D14();
      v7 = swift_allocError();
      *v11 = v13;
      *(v11 + 16) = v9;
      *(v11 + 24) = v10;
      goto LABEL_6;
    case 4:
    case 6:
    case 7:
      v7 = *v4;
LABEL_6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216630, &unk_1C7564E40);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1C755BAB0;
      sub_1C754F89C();

      break;
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
      return v6;
    default:
      sub_1C714EDA8(v4);
      break;
  }

  return v6;
}

uint64_t sub_1C714ED44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoryOrchestrator.Error(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C714EDA8(uint64_t a1)
{
  v2 = type metadata accessor for StoryOrchestrator.Error(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C714EE34()
{
  sub_1C714F5BC(&qword_1EC217F98, protocol conformance descriptor for StoryOrchestrator.Error);

  JUMPOUT(0x1CCA5BE40);
}

uint64_t FreeformStoryGenerator.Error.rawCode.getter()
{
  v1 = *v0;
  result = 101;
  switch(*(v0 + 24))
  {
    case 1:
      result = 103;
      break;
    case 2:
      result = 104;
      break;
    case 3:
      result = 105;
      break;
    case 4:
      result = 106;
      break;
    case 5:
      result = 107;
      break;
    case 6:
      result = 108;
      break;
    case 7:
      result = 109;
      break;
    case 8:
      result = 117;
      break;
    case 9:
      result = 113;
      break;
    case 0xA:
      result = 119;
      break;
    case 0xB:
      result = 121;
      break;
    case 0xC:
      if (v0[1] | v0[2] | v1)
      {
        if (v1 == 1 && *(v0 + 1) == 0)
        {
          result = 102;
        }

        else if (v1 == 2 && *(v0 + 1) == 0)
        {
          result = 110;
        }

        else if (v1 == 3 && *(v0 + 1) == 0)
        {
          result = 111;
        }

        else if (v1 == 4 && *(v0 + 1) == 0)
        {
          result = 114;
        }

        else if (v1 == 5 && *(v0 + 1) == 0)
        {
          result = 122;
        }

        else if (v1 == 6 && *(v0 + 1) == 0)
        {
          result = 116;
        }

        else if (*(v0 + 1) == 0 && v1 == 7)
        {
          result = 120;
        }

        else
        {
          result = 123;
        }
      }

      else
      {
        result = 100;
      }

      break;
    default:
      return result;
  }

  return result;
}

void *FreeformStoryGenerator.Error.underlyingErrors.getter()
{
  v1 = *v0;
  v2 = MEMORY[0x1E69E7CC0];
  switch(*(v0 + 24))
  {
    case 0xA:
      v4 = *(v1 + 16);
      if (v4)
      {
        v11 = MEMORY[0x1E69E7CC0];
        sub_1C716E5EC(0, v4, 0);
        v2 = v11;
        v5 = (v1 + 32);
        do
        {
          v6 = *v5;
          v7 = *v5;
          sub_1C754F89C();

          v11 = v2;
          v9 = *(v2 + 16);
          v8 = *(v2 + 24);
          if (v9 >= v8 >> 1)
          {
            sub_1C716E5EC(v8 > 1, v9 + 1, 1);
            v2 = v11;
          }

          *(v2 + 16) = v9 + 1;
          sub_1C6F699F8(&v10, v2 + 40 * v9 + 32);
          ++v5;
          --v4;
        }

        while (v4);
      }

      break;
    case 0xB:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216630, &unk_1C7564E40);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1C755BAB0;
      sub_1C754F89C();
      break;
    case 0xC:
      v2 = MEMORY[0x1E69E7CC0];
      break;
    default:
      return v2;
  }

  return v2;
}

uint64_t sub_1C714F178@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1C754F8AC();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

void sub_1C714F1F0()
{
  sub_1C714F568();

  JUMPOUT(0x1CCA5BE40);
}

unint64_t sub_1C714F230()
{
  result = qword_1EC217F40;
  if (!qword_1EC217F40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryOrchestrator.StoryOrchestratorCancellationError, &type metadata for StoryOrchestrator.StoryOrchestratorCancellationError, v0, v1);
    atomic_store(result, &qword_1EC217F40);
  }

  return result;
}

unint64_t sub_1C714F288()
{
  result = qword_1EC217F48;
  if (!qword_1EC217F48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryOrchestrator.StoryOrchestratorCancellationError, &type metadata for StoryOrchestrator.StoryOrchestratorCancellationError, v0, v1);
    atomic_store(result, &qword_1EC217F48);
  }

  return result;
}

unint64_t sub_1C714F2E0()
{
  result = qword_1EC217F50;
  if (!qword_1EC217F50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryOrchestrator.StoryOrchestratorCancellationError, &type metadata for StoryOrchestrator.StoryOrchestratorCancellationError, v0, v1);
    atomic_store(result, &qword_1EC217F50);
  }

  return result;
}

unint64_t sub_1C714F338()
{
  result = qword_1EC217F58;
  if (!qword_1EC217F58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryOrchestrator.StoryOrchestratorCancellationError, &type metadata for StoryOrchestrator.StoryOrchestratorCancellationError, v0, v1);
    atomic_store(result, &qword_1EC217F58);
  }

  return result;
}

unint64_t sub_1C714F460()
{
  result = qword_1EDD09D08;
  if (!qword_1EDD09D08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryGenerator.Error, &type metadata for FreeformStoryGenerator.Error, v0, v1);
    atomic_store(result, &qword_1EDD09D08);
  }

  return result;
}

unint64_t sub_1C714F4B8()
{
  result = qword_1EC217F80;
  if (!qword_1EC217F80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryGenerator.Error, &type metadata for FreeformStoryGenerator.Error, v0, v1);
    atomic_store(result, &qword_1EC217F80);
  }

  return result;
}

unint64_t sub_1C714F510()
{
  result = qword_1EC217F88;
  if (!qword_1EC217F88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryGenerator.Error, &type metadata for FreeformStoryGenerator.Error, v0, v1);
    atomic_store(result, &qword_1EC217F88);
  }

  return result;
}

unint64_t sub_1C714F568()
{
  result = qword_1EC217F90;
  if (!qword_1EC217F90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryGenerator.Error, &type metadata for FreeformStoryGenerator.Error, v0, v1);
    atomic_store(result, &qword_1EC217F90);
  }

  return result;
}

uint64_t sub_1C714F5BC(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for StoryOrchestrator.Error(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C714F600()
{
  result = qword_1EC217FA0;
  if (!qword_1EC217FA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryOrchestrator.StoryOrchestratorCancellationError, &type metadata for StoryOrchestrator.StoryOrchestratorCancellationError, v0, v1);
    atomic_store(result, &qword_1EC217FA0);
  }

  return result;
}

uint64_t sub_1C714F658(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptSuggestion(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v23 - v8);
  v10 = *(a1 + 16);
  v25 = a2;
  v26 = v10;
  result = swift_beginAccess();
  v12 = 0;
  for (i = MEMORY[0x1E69E7CC0]; ; result = sub_1C7159368(v24, i + v15 + v22 * v16))
  {
LABEL_2:
    v14 = v12;
    if (v12 == v26)
    {

      return i;
    }

    if (v12 >= *(a1 + 16))
    {
      break;
    }

    v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v16 = *(v5 + 72);
    ++v12;
    sub_1C71592A8(a1 + v15 + v16 * v14, v9);
    v17 = (*v25 + v15 + 8);
    v18 = *(*v25 + 16) + 1;
    while (--v18)
    {
      if (*(v17 - 1) != *v9 || *v17 != v9[1])
      {
        v17 = (v17 + v16);
        if ((sub_1C7551DBC() & 1) == 0)
        {
          continue;
        }
      }

      result = sub_1C715930C(v9);
      goto LABEL_2;
    }

    sub_1C7159368(v9, v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = i;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C716D568(0, *(i + 16) + 1, 1);
      i = v27;
    }

    v22 = *(i + 16);
    v21 = *(i + 24);
    if (v22 >= v21 >> 1)
    {
      sub_1C716D568(v21 > 1, v22 + 1, 1);
      i = v27;
    }

    *(i + 16) = v22 + 1;
  }

  __break(1u);
  return result;
}

void sub_1C714F888(uint64_t a1)
{
  v2 = type metadata accessor for PromptSuggestion(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v19 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = 0;
  v9 = *(a1 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v9 == v8)
    {

      return;
    }

    if (v8 >= *(a1 + 16))
    {
      break;
    }

    v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v11 = *(v3 + 72);
    sub_1C71592A8(a1 + v10 + v11 * v8, v7);
    sub_1C7421CF8(*(v7 + 13), *(v7 + 14));
    if (v12)
    {

      sub_1C7159368(v7, v19);
      v13 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716D568(0, *(v13 + 16) + 1, 1);
        v13 = v21;
      }

      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v20 = v16 + 1;
        v18 = v16;
        sub_1C716D568(v15 > 1, v16 + 1, 1);
        v17 = v20;
        v16 = v18;
        v13 = v21;
      }

      ++v8;
      *(v13 + 16) = v17;
      v20 = v13;
      sub_1C7159368(v19, v13 + v10 + v16 * v11);
    }

    else
    {
      sub_1C715930C(v7);
      ++v8;
    }
  }

  __break(1u);
}

uint64_t sub_1C714FA8C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1C716DA70(0, v2, 0);
    v3 = v14;
    v6 = a1 + 32;
    do
    {
      v6 += 8;
      swift_beginAccess();
      v7 = *a2;
      v8 = 0;
      if (*(*a2 + 16))
      {
        v9 = sub_1C6FC2FFC();
        if (v10)
        {
          v8 = *(*(v7 + 56) + 8 * v9);
        }
      }

      swift_endAccess();
      v12 = *(v14 + 16);
      v11 = *(v14 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1C716DA70(v11 > 1, v12 + 1, 1);
      }

      *(v14 + 16) = v12 + 1;
      *(v14 + 8 * v12 + 32) = v8;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1C714FBA4(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1C716E60C(0, v2, 0);
    v4 = v35;
    result = sub_1C70D4544();
    v7 = result;
    v8 = 0;
    v9 = v1 + 64;
    v30 = v5;
    v29 = v1 + 72;
    v31 = v2;
    v32 = v1 + 64;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (*(v1 + 36) != v5)
      {
        goto LABEL_24;
      }

      v34 = v5;
      v33 = v6;
      v11 = *(*(v1 + 56) + 8 * v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C98, &unk_1C7571030);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C755BAB0;
      sub_1C721B350();
      *(inited + 32) = v13;
      *(inited + 40) = v14;
      *(inited + 48) = v11;
      result = sub_1C75504DC();
      v15 = result;
      v16 = v4;
      v36 = v4;
      v17 = v1;
      v19 = *(v16 + 16);
      v18 = *(v16 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_1C716E60C(v18 > 1, v19 + 1, 1);
        v16 = v36;
      }

      *(v16 + 16) = v19 + 1;
      *(v16 + 8 * v19 + 32) = v15;
      v20 = 1 << *(v17 + 32);
      if (v7 >= v20)
      {
        goto LABEL_25;
      }

      v9 = v32;
      v21 = *(v32 + 8 * v10);
      if ((v21 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v1 = v17;
      v4 = v16;
      if (*(v1 + 36) != v34)
      {
        goto LABEL_27;
      }

      v22 = v21 & (-2 << (v7 & 0x3F));
      if (v22)
      {
        v20 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v23 = v31;
      }

      else
      {
        v24 = v10 << 6;
        v25 = v10 + 1;
        v26 = (v29 + 8 * v10);
        v23 = v31;
        while (v25 < (v20 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_1C6F9ED50(v7, v34, v33 & 1);
            v20 = __clz(__rbit64(v27)) + v24;
            goto LABEL_19;
          }
        }

        result = sub_1C6F9ED50(v7, v34, v33 & 1);
      }

LABEL_19:
      v6 = 0;
      ++v8;
      v7 = v20;
      v5 = v30;
      if (v8 == v23)
      {
        return v4;
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

  return result;
}

BOOL sub_1C714FE5C(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(type metadata accessor for PromptSuggestion(0) - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) != 0);
  return v7 == v8;
}

BOOL sub_1C714FF30(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = (a3 + 48);
  v7 = *(a3 + 16) + 1;
  do
  {
    if (!--v7)
    {
      break;
    }

    v8 = *(v6 - 1);
    v9 = *v6;
    v12[0] = *(v6 - 2);
    v12[1] = v8;
    v12[2] = v9;
    sub_1C75504FC();
    sub_1C75504FC();
    v10 = a1(v12);

    if (v4)
    {
      break;
    }

    v6 += 3;
  }

  while ((v10 & 1) != 0);
  return v7 == 0;
}

void sub_1C714FFE8(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_1C73B45EC(0x20000000000001);
  }
}

uint64_t sub_1C7150060(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 16);
  v4 = (result + 48);
  if (v3)
  {
    while (1)
    {
      v5 = *v4;
      v6 = *(*v4 + 16);
      v7 = *a2;
      v8 = *(*a2 + 16);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        break;
      }

      sub_1C75504FC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v7;
      if (!isUniquelyReferenced_nonNull_native || (v11 = *(v7 + 24) >> 1, v11 < v9))
      {
        if (*(v7 + 16) <= v9)
        {
          v12 = v9;
        }

        else
        {
          v12 = *(v7 + 16);
        }

        sub_1C6FB3648(isUniquelyReferenced_nonNull_native, v12, 1, v7);
        v7 = v13;
        *a2 = v13;
        v11 = *(v13 + 24) >> 1;
      }

      if (*(v5 + 16))
      {
        v14 = v11 - *(v7 + 16);
        result = type metadata accessor for PromptSuggestion(0);
        if (v14 < v6)
        {
          goto LABEL_19;
        }

        swift_arrayInitWithCopy();

        if (v6)
        {
          v15 = *(v7 + 16);
          v16 = __OFADD__(v15, v6);
          v17 = v15 + v6;
          if (v16)
          {
            goto LABEL_20;
          }

          *(v7 + 16) = v17;
        }
      }

      else
      {

        if (v6)
        {
          goto LABEL_18;
        }
      }

      *a2 = v7;
      v4 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C71501D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  v7 = *(a1 + 16);
  v42 = OBJC_IVAR____TtC18PhotosIntelligence22PromptSuggestionRanker_promptRankingParameters;
  v8 = (a1 + 32);
  if (!v7)
  {
LABEL_32:
  }

  while (1)
  {
    v9 = *v8;
    if (*(v6 + 16))
    {
      v10 = sub_1C6FC2FFC();
      if (v11)
      {
        v12 = (*(v6 + 56) + 16 * v10);
        v14 = *v12;
        v13 = v12[1];
        v15 = *(a4 + v42);
        if (v15)
        {
          v16 = *(v15 + 16);
          sub_1C75504FC();
          if (v16)
          {
            v17 = sub_1C6F78124(v14, v13);
            if (v18)
            {
              sub_1C6F774EC(*(v15 + 56) + 32 * v17, &v47);
              if (swift_dynamicCast())
              {

                v19 = v46;
LABEL_23:
                swift_isUniquelyReferenced_nonNull_native();
                v47 = *a3;
                v33 = v47;
                v34 = sub_1C6FC2FFC();
                if (__OFADD__(v33[2], (v35 & 1) == 0))
                {
                  goto LABEL_35;
                }

                v36 = v34;
                v37 = v35;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152D8, &qword_1C755CBC8);
                if (sub_1C7551A2C())
                {
                  v38 = sub_1C6FC2FFC();
                  if ((v37 & 1) != (v39 & 1))
                  {
                    goto LABEL_37;
                  }

                  v36 = v38;
                }

                v27 = v47;
                if ((v37 & 1) == 0)
                {
                  v47[(v36 >> 6) + 8] |= 1 << v36;
                  *(v27[6] + 8 * v36) = v9;
                  *(v27[7] + 8 * v36) = v19;
                  v40 = v27[2];
                  v29 = __OFADD__(v40, 1);
                  v30 = v40 + 1;
                  if (v29)
                  {
                    goto LABEL_36;
                  }

LABEL_30:
                  v27[2] = v30;
                  goto LABEL_31;
                }

                *(v47[7] + 8 * v36) = v19;
                goto LABEL_31;
              }
            }
          }
        }

        else
        {
          sub_1C75504FC();
        }

        if (*(a5 + 16) && (v31 = sub_1C6F78124(v14, v13), (v32 & 1) != 0))
        {
          v19 = *(*(a5 + 56) + 8 * v31);
        }

        else
        {

          v19 = 0;
        }

        goto LABEL_23;
      }
    }

    swift_isUniquelyReferenced_nonNull_native();
    v47 = *a3;
    v20 = v47;
    v21 = sub_1C6FC2FFC();
    if (__OFADD__(v20[2], (v22 & 1) == 0))
    {
      break;
    }

    v23 = v21;
    v24 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152D8, &qword_1C755CBC8);
    if (sub_1C7551A2C())
    {
      v25 = sub_1C6FC2FFC();
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_37;
      }

      v23 = v25;
    }

    v27 = v47;
    if ((v24 & 1) == 0)
    {
      v47[(v23 >> 6) + 8] |= 1 << v23;
      *(v27[6] + 8 * v23) = v9;
      *(v27[7] + 8 * v23) = 0;
      v28 = v27[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_34;
      }

      goto LABEL_30;
    }

    *(v47[7] + 8 * v23) = 0;
LABEL_31:
    *a3 = v27;
    v6 = a2;
    ++v8;
    if (!--v7)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t (*sub_1C7150520(uint64_t (*result)(uint64_t *, uint64_t), uint64_t a2, uint64_t a3))(uint64_t *, uint64_t)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    if (!v5)
    {
      break;
    }

    v7 = *v6++;
    v8 = v7;
    result = v4(&v8, a2);
    --v5;
  }

  while (!v3);
  return result;
}

uint64_t sub_1C715057C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD0E1F8);
  __swift_project_value_buffer(v0, qword_1EDD0E1F8);
  return sub_1C754FEFC();
}

uint64_t PromptSuggestionRanker.__allocating_init()()
{
  v0 = swift_allocObject();
  PromptSuggestionRanker.init()();
  return v0;
}

uint64_t PromptSuggestionRanker.init()()
{
  v1 = v0;
  sub_1C7047818();
  *(v0 + 16) = sub_1C755146C();
  v2 = OBJC_IVAR____TtC18PhotosIntelligence22PromptSuggestionRanker_logger;
  if (qword_1EDD0E1F0 != -1)
  {
    OUTLINED_FUNCTION_6_44(&qword_1EDD0E1F0);
  }

  v3 = sub_1C754FF1C();
  v4 = __swift_project_value_buffer(v3, qword_1EDD0E1F8);
  (*(*(v3 - 8) + 16))(v1 + v2, v4, v3);
  v5 = OBJC_IVAR____TtC18PhotosIntelligence22PromptSuggestionRanker_promptRankingParameters;
  v6 = objc_opt_self();
  *(v1 + v5) = sub_1C715923C(v6);
  *(v1 + OBJC_IVAR____TtC18PhotosIntelligence22PromptSuggestionRanker_whimsicalIncludeProbability) = 0x3FB999999999999ALL;
  return v1;
}

Swift::tuple_suggestions_OpaquePointer_lastEmbeddingDistanceThreshold_Double __swiftcall PromptSuggestionRanker.rankTopPromptSuggestions(promptSuggestionCandidates:usedPromptSuggestions:fetchLimit:embeddingDistanceThreshold:)(Swift::OpaquePointer promptSuggestionCandidates, Swift::OpaquePointer usedPromptSuggestions, Swift::Int fetchLimit, Swift::Double embeddingDistanceThreshold)
{
  v263 = fetchLimit;
  rawValue = usedPromptSuggestions._rawValue;
  v264 = promptSuggestionCandidates._rawValue;
  v6 = type metadata accessor for PromptSuggestion(0);
  v276 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v252 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v18);
  v20 = (v252 - v19);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v252 - v24;
  v26 = *(v4 + 16);
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v27 = v26;
  v252[1] = PerformanceMeasure.init(name:log:)();
  v295 = MEMORY[0x1E69E7CC0];
  v28 = *(v4 + OBJC_IVAR____TtC18PhotosIntelligence22PromptSuggestionRanker_promptRankingParameters);
  v29 = &unk_1C756A000;
  isa = "QueryTokenCategoryTypeString";
  if (!v28)
  {
    v294 = 0u;
    v293 = 0u;
LABEL_6:
    sub_1C6FD7FC8(&v293, &qword_1EC219770, &unk_1C755C740);
    if (!v28)
    {
      v294 = 0u;
      v293 = 0u;
      v31 = 0.8;
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  sub_1C755068C();
  sub_1C6FE3750();

  if (!*(&v294 + 1))
  {
    goto LABEL_6;
  }

  if (swift_dynamicCast())
  {
    v31 = v289;
    goto LABEL_8;
  }

LABEL_7:
  v31 = 0.8;
LABEL_8:
  sub_1C755068C();
  sub_1C6FE3750();

  if (!*(&v294 + 1))
  {
LABEL_12:
    sub_1C6FD7FC8(&v293, &qword_1EC219770, &unk_1C755C740);
    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    v32 = v289;
    goto LABEL_14;
  }

LABEL_13:
  v32 = 0.05;
LABEL_14:
  OUTLINED_FUNCTION_19_25();
  v34 = 0;
  v35 = *(v264 + 2);
  v271 = MEMORY[0x1E69E7CC0];
  v255 = v35;
  while (v35 != v34)
  {
    OUTLINED_FUNCTION_78_8();
    v29 = (v37 & ~v36);
    isa = *(v38 + 72);
    sub_1C71592A8(&v29[v264 + isa * v34], v25);
    if (v25[16] == 1)
    {
      sub_1C7159368(v25, v283);
      v39 = v271;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v293 = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716D568(0, *(v39 + 16) + 1, 1);
        v39 = v293;
      }

      v42 = *(v39 + 16);
      v41 = *(v39 + 24);
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        v44 = OUTLINED_FUNCTION_15(v41);
        v46 = v45;
        sub_1C716D568(v44, v45, 1);
        v43 = v46;
        v35 = v255;
        v39 = v293;
      }

      v34 = (v34 + 1);
      *(v39 + 16) = v43;
      v271 = v39;
      sub_1C7159368(v283, &v29[v39 + v42 * isa]);
    }

    else
    {
      sub_1C715930C(v25);
      v34 = (v34 + 1);
    }

    OUTLINED_FUNCTION_19_25();
  }

  v260 = 0;
  v47 = v263;
  v48 = v32 + embeddingDistanceThreshold;
  if (v35 < v263)
  {
    v47 = v35;
  }

  v259 = v47;
  v291 = MEMORY[0x1E69E7CD0];
  v292 = MEMORY[0x1E69E7CD0];
  v290 = MEMORY[0x1E69E7CD0];
  v280 = OBJC_IVAR____TtC18PhotosIntelligence22PromptSuggestionRanker_logger;
  *&v33 = 136315395;
  v256 = v33;
  *(&v49 + 1) = 2;
  v266 = xmmword_1C755BAB0;
  *&v49 = 136315650;
  v254 = v49;
  *&v49 = 136380675;
  v268 = v49;
  *&v49 = 136380931;
  v262 = v49;
  *&v49 = 134218243;
  v253 = v49;
  *&v49 = 136381187;
  v265 = v49;
  v50 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_26_23();
  while (1)
  {
    OUTLINED_FUNCTION_70_10();
    v53 = v53 != v52 && v31 < v48;
    if (!v53)
    {
      break;
    }

    v48 = v48 - v32;
    v54 = OUTLINED_FUNCTION_14_31(v51);
    sub_1C75511BC();
    OUTLINED_FUNCTION_21_4();
    if (os_log_type_enabled(v54, v55))
    {
      v279 = v35;
      v56 = OUTLINED_FUNCTION_23_1();
      v57 = OUTLINED_FUNCTION_49_1();
      OUTLINED_FUNCTION_3_53(v57, &v296);
      *v56 = v256;
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
      v59 = OUTLINED_FUNCTION_95(v58);
      OUTLINED_FUNCTION_4_43(v59);
      *(v60 + 56) = MEMORY[0x1E69E63B0];
      *(v60 + 64) = MEMORY[0x1E69E6438];
      *(v60 + 32) = v48;
      v61 = OUTLINED_FUNCTION_8_19();
      v63 = sub_1C6F765A4(v61, v62, &v286);

      *(v56 + 4) = v63;
      v282 = v56;
      *(v56 + 12) = 2081;
      v64 = *(v50 + 16);
      if (v64)
      {
        v277 = v54;
        v271 = isa;
        OUTLINED_FUNCTION_52_12(MEMORY[0x1E69E7CC0]);
        sub_1C75504FC();
        v65 = &v284;
        sub_1C6F7ED9C(0, v64, 0, v66, v67, v68, v69);
        OUTLINED_FUNCTION_76_0();
        OUTLINED_FUNCTION_78_8();
        v281 = v50;
        v29 = (v50 + (v71 & ~v70));
        v283 = *(v72 + 72);
        do
        {
          OUTLINED_FUNCTION_74_7();
          sub_1C71592A8(v73, v74);
          isa = *(v54 + 104);
          v75 = *(v54 + 112);
          sub_1C75504FC();
          sub_1C715930C(v54);
          v284 = &v284;
          v54 = v286;
          v50 = v286 + 1;
          if (v286 >= v287 >> 1)
          {
            v78 = OUTLINED_FUNCTION_15(v287);
            v65 = &v284;
            sub_1C6F7ED9C(v78, v54 + 1, 1, v79, v80, v81, v82);
            OUTLINED_FUNCTION_76_0();
          }

          v286 = v50;
          v76 = &v284 + 2 * v54;
          v76[4] = isa;
          v76[5] = v75;
          OUTLINED_FUNCTION_333();
          v29 += v77;
          --v64;
        }

        while (v64);
        OUTLINED_FUNCTION_23_20();

        OUTLINED_FUNCTION_19_25();
        OUTLINED_FUNCTION_26_23();
        v54 = v277;
      }

      else
      {
        v65 = MEMORY[0x1E69E7CC0];
      }

      v83 = MEMORY[0x1CCA5D090](v65, MEMORY[0x1E69E6158]);
      v85 = v84;

      v35 = sub_1C6F765A4(v83, v85, &v286);

      v86 = v282;
      *(v282 + 14) = v35;
      OUTLINED_FUNCTION_143();
      _os_log_impl(&dword_1C6F5C000, v54, v87, "Diversity ranking for smart suggestions with threshold: %s.\n Current selected prompts:%{private}s", v86, 0x16u);
      LODWORD(v35) = v278;
      swift_arrayDestroy();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_23_3();
    }

    v88 = v260;
    isa = sub_1C714F658(isa, &v295);
    v260 = v88;
    v275 = *(isa + 16);
    if (v275)
    {
      v89 = rawValue;
      v274 = rawValue[2];
      OUTLINED_FUNCTION_79_8();
      v273 = isa + v88;
      OUTLINED_FUNCTION_5(&v292, &v293);
      OUTLINED_FUNCTION_5(&v291, &v289);
      v90 = OUTLINED_FUNCTION_5(&v290, v288);
      v92 = 0;
      v269 = v88;
      v272 = v89 + v88;
      v271 = isa;
      while (1)
      {
        if (v92 >= *(isa + 16))
        {
          __break(1u);
          goto LABEL_127;
        }

        v281 = v50;
        v93 = *(v276 + 72);
        v282 = v92;
        v283 = v93;
        sub_1C71592A8(v273 + v93 * v92, v20);
        if (v20[16])
        {
          OUTLINED_FUNCTION_29_16();
          OUTLINED_FUNCTION_52_12(0x726F6C796154);
          v285 = 0xE600000000000000;
          sub_1C6FB5E8C();
          sub_1C75504FC();
          v92 = MEMORY[0x1E69E6158];
          LODWORD(v277) = OUTLINED_FUNCTION_41_14(&v284);
          OUTLINED_FUNCTION_29_16();
          OUTLINED_FUNCTION_52_12(0x656D614E79746963);
          v285 = 0xE800000000000000;
          v279 = OUTLINED_FUNCTION_41_14(&v284);
          OUTLINED_FUNCTION_29_16();
          OUTLINED_FUNCTION_52_12(0x6D614E6563616C70);
          v285 = 0xE900000000000065;
          LODWORD(v278) = OUTLINED_FUNCTION_41_14(&v284);
        }

        else
        {
          LODWORD(v278) = 1;
          v279 = 1;
          LODWORD(v277) = 1;
        }

        v50 = v270;
        v94 = sub_1C71592A8(v20, v270);
        v95 = OUTLINED_FUNCTION_14_31(v94);
        v96 = sub_1C75511BC();
        if (OUTLINED_FUNCTION_128(v96))
        {
          v97 = OUTLINED_FUNCTION_41_0();
          v92 = OUTLINED_FUNCTION_20_1();
          v286 = v92;
          *v97 = v268;
          isa = v16;
          v29 = *(v50 + 112);
          sub_1C75504FC();
          sub_1C715930C(v50);
          OUTLINED_FUNCTION_26_23();
          v50 = sub_1C6F765A4(v98, v29, v99);
          OUTLINED_FUNCTION_9_37();

          *(v97 + 4) = v50;
          _os_log_impl(&dword_1C6F5C000, v95, v96, "Current candidate smart suggestion: %{private}s", v97, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v92);
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_37();
        }

        else
        {

          sub_1C715930C(v50);
        }

        OUTLINED_FUNCTION_22_28();
        ++v92;
        v100 = v274;
        v101 = v272;
        OUTLINED_FUNCTION_23_20();
        v282 = v92;
        if (v100)
        {
          while (1)
          {
            v102 = OUTLINED_FUNCTION_64();
            sub_1C71592A8(v102, v103);
            v104 = sub_1C715215C(v20, v16);
            if (v104 < v48)
            {
              break;
            }

            sub_1C715930C(v16);
            OUTLINED_FUNCTION_333();
            v101 += v105;
            if (!--v100)
            {
              goto LABEL_53;
            }
          }

          v121 = v104;
          OUTLINED_FUNCTION_74_7();
          sub_1C71592A8(v122, v123);
          v124 = v267;
          v125 = sub_1C71592A8(v16, v267);
          v35 = OUTLINED_FUNCTION_14_31(v125);
          v126 = sub_1C75511BC();
          if (OUTLINED_FUNCTION_128(v126))
          {
            OUTLINED_FUNCTION_20_1();
            isa = v124;
            v127 = OUTLINED_FUNCTION_62_10();
            OUTLINED_FUNCTION_3_53(v127, &v298);
            OUTLINED_FUNCTION_57_10();
            sub_1C715930C(v92);
            OUTLINED_FUNCTION_23_20();
            sub_1C6F765A4(v128, v29, v129);
            OUTLINED_FUNCTION_37_19();

            OUTLINED_FUNCTION_58_11();
            OUTLINED_FUNCTION_26_23();
            sub_1C715930C(v130);
            OUTLINED_FUNCTION_34_14();
            OUTLINED_FUNCTION_37_19();

            *(v124 + 14) = v92;
            *(v124 + 22) = 2080;
            v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
            v132 = OUTLINED_FUNCTION_95(v131);
            OUTLINED_FUNCTION_4_43(v132);
            *(v133 + 7) = MEMORY[0x1E69E63B0];
            *(v133 + 8) = MEMORY[0x1E69E6438];
            v133[4] = v121;
            v134 = OUTLINED_FUNCTION_8_19();
            v29 = OUTLINED_FUNCTION_69_12(v134, v135);

            *(v124 + 24) = v29;
            OUTLINED_FUNCTION_19_25();
            _os_log_impl(&dword_1C6F5C000, v35, v126, "Dropping candidate prompt (%{private}s). Too close to already used prompt %{private}s (embedding distance=%s)", v124, 0x20u);
            OUTLINED_FUNCTION_27_24();
            OUTLINED_FUNCTION_37();
            OUTLINED_FUNCTION_23_3();
          }

          else
          {

            sub_1C715930C(v124);
            sub_1C715930C(v92);
          }

          v154 = v16;
LABEL_88:
          sub_1C715930C(v154);
          OUTLINED_FUNCTION_22_28();
          goto LABEL_106;
        }

LABEL_53:
        if (v279)
        {
          v106 = v20[30];
          if (v106)
          {
            v107 = v20[29];
            v108 = v292;
            sub_1C75504FC();
            v109 = sub_1C7009C30(v107, v106, v108);

            if (v109)
            {
              v110 = OUTLINED_FUNCTION_83_3(v20, &v281);
              v35 = OUTLINED_FUNCTION_14_31(v110);
              v50 = sub_1C75511BC();
              if (OUTLINED_FUNCTION_128(v50))
              {
                OUTLINED_FUNCTION_23_1();
                v111 = OUTLINED_FUNCTION_40_16();
                LODWORD(v112) = OUTLINED_FUNCTION_1_57(v111, &v298).n128_u32[0];
                OUTLINED_FUNCTION_65_11(v112);
                OUTLINED_FUNCTION_26_23();
                sub_1C715930C(v113);
                OUTLINED_FUNCTION_34_14();
                OUTLINED_FUNCTION_37_19();

                OUTLINED_FUNCTION_47_13();
                sub_1C75504FC();
                v92 = sub_1C7550F9C();
                v29 = v114;

                v115 = OUTLINED_FUNCTION_18_22();
                v117 = sub_1C6F765A4(v115, v29, v116);
                OUTLINED_FUNCTION_9_37();

                *(v107 + 14) = v117;
                v118 = v50;
                v119 = v35;
                v120 = "Dropping candidate prompt (%{private}s). It shares the same city name with selected prompts (city names from selected prompts=%{private}s)";
                goto LABEL_70;
              }

              goto LABEL_73;
            }
          }
        }

        if (v278)
        {
          v136 = v20[28];
          if (v136)
          {
            v107 = v20[27];
            v137 = v291;
            sub_1C75504FC();
            v138 = sub_1C7009C30(v107, v136, v137);

            if (v138)
            {
              break;
            }
          }
        }

        if (v277)
        {
          v147 = v20[20];
          if (v147 >= 2)
          {
            v148 = v20[19];
            v149 = v290;
            sub_1C75504FC();
            sub_1C75504FC();
            v258 = v148;
            v107 = sub_1C7009C30(v148, v147, v149);

            if (v107)
            {
              OUTLINED_FUNCTION_83_3(v20, &v279);
              v150 = sub_1C75504FC();
              v35 = OUTLINED_FUNCTION_14_31(v150);
              v50 = sub_1C75511BC();

              if (os_log_type_enabled(v35, v50))
              {
                OUTLINED_FUNCTION_23_1();
                v151 = OUTLINED_FUNCTION_40_16();
                LODWORD(v152) = OUTLINED_FUNCTION_1_57(v151, &v298).n128_u32[0];
                OUTLINED_FUNCTION_65_11(v152);
                OUTLINED_FUNCTION_26_23();
                sub_1C715930C(v153);
                OUTLINED_FUNCTION_34_14();
                OUTLINED_FUNCTION_9_37();

                OUTLINED_FUNCTION_47_13();
                v92 = sub_1C6F765A4(v258, v147, &v286);

                *(v107 + 14) = v92;
                OUTLINED_FUNCTION_22_28();
                v118 = v50;
                v119 = v35;
                v120 = "Dropping candidate prompt (%{private}s). It shares the same person name with selected prompts (person names from selected prompts=%{private}s)";
LABEL_70:
                _os_log_impl(&dword_1C6F5C000, v119, v118, v120, v107, 0x16u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_23_3();
                OUTLINED_FUNCTION_37();

LABEL_102:
                OUTLINED_FUNCTION_23_20();
                goto LABEL_106;
              }

LABEL_101:
              sub_1C715930C(v107);
              goto LABEL_102;
            }
          }
        }

        v155 = *(v50 + 16);
        v156 = v50 + v269;
        sub_1C75504FC();
        v92 = 0;
        while (v155 != v92)
        {
          if (v92 >= *(v50 + 16))
          {
            __break(1u);
            goto LABEL_125;
          }

          sub_1C71592A8(v156, v29);
          v157 = sub_1C715215C(v20, v29);
          if (v157 < v48)
          {
            v175 = v157;

            OUTLINED_FUNCTION_74_7();
            sub_1C71592A8(v176, v177);
            v178 = v261;
            v179 = sub_1C71592A8(v29, v261);
            v35 = OUTLINED_FUNCTION_14_31(v179);
            v180 = sub_1C75511BC();
            if (OUTLINED_FUNCTION_128(v180))
            {
              OUTLINED_FUNCTION_20_1();
              isa = v178;
              v181 = OUTLINED_FUNCTION_62_10();
              OUTLINED_FUNCTION_3_53(v181, &v298);
              OUTLINED_FUNCTION_57_10();
              sub_1C715930C(v92);
              OUTLINED_FUNCTION_23_20();
              sub_1C6F765A4(v182, v29, v183);
              OUTLINED_FUNCTION_37_19();

              OUTLINED_FUNCTION_58_11();
              OUTLINED_FUNCTION_26_23();
              sub_1C715930C(v184);
              OUTLINED_FUNCTION_34_14();
              OUTLINED_FUNCTION_37_19();

              *(v178 + 14) = v92;
              *(v178 + 22) = 2080;
              v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
              v186 = OUTLINED_FUNCTION_95(v185);
              OUTLINED_FUNCTION_4_43(v186);
              *(v187 + 7) = MEMORY[0x1E69E63B0];
              *(v187 + 8) = MEMORY[0x1E69E6438];
              v187[4] = v175;
              v188 = OUTLINED_FUNCTION_8_19();
              v29 = OUTLINED_FUNCTION_69_12(v188, v189);

              *(v178 + 24) = v29;
              OUTLINED_FUNCTION_19_25();
              _os_log_impl(&dword_1C6F5C000, v35, v180, "Dropping candidate prompt (%{private}s). Too close to selected prompt %{private}s (embedding distance=%s)", v178, 0x20u);
              OUTLINED_FUNCTION_27_24();
              OUTLINED_FUNCTION_37();
              OUTLINED_FUNCTION_23_3();
            }

            else
            {

              sub_1C715930C(v178);
              sub_1C715930C(v92);
            }

            v154 = v29;
            goto LABEL_88;
          }

          ++v92;
          sub_1C715930C(v29);
          OUTLINED_FUNCTION_333();
          v156 += v158;
        }

        OUTLINED_FUNCTION_35_11(&v295);
        v35 = &v295;
        sub_1C6FB0C9C();
        v159 = *(v295 + 16);
        sub_1C6FB14D8(v159, v160, v161, v162, v163, v164);
        v50 = v295;
        *(v295 + 16) = v159 + 1;
        sub_1C71592A8(v20, v50 + v269 + v159 * v283);
        v295 = v50;
        swift_endAccess();
        OUTLINED_FUNCTION_22_28();
        if (v279)
        {
          v166 = v20[30];
          if (v166)
          {
            v167 = v20[29];
            OUTLINED_FUNCTION_35_11(&v292);
            sub_1C75504FC();
            v35 = &v292;
            v281 = v167;
            sub_1C70F082C(&v284, v167, v166);
            swift_endAccess();

            v168 = sub_1C75504FC();
            v155 = OUTLINED_FUNCTION_14_31(v168);
            sub_1C75511BC();
            OUTLINED_FUNCTION_21_4();
            if (os_log_type_enabled(v155, v169))
            {
              v29 = OUTLINED_FUNCTION_23_1();
              v170 = OUTLINED_FUNCTION_49_1();
              *v29 = OUTLINED_FUNCTION_1_57(v170, &v297).n128_u32[0];
              v171 = sub_1C6F765A4(v281, v166, &v286);
              v281 = v155;
              v155 = v171;

              *(v29 + 4) = v155;
              *(v29 + 6) = 2081;
              sub_1C75504FC();
              sub_1C7550F9C();
              OUTLINED_FUNCTION_66_13();
              v172 = OUTLINED_FUNCTION_53_15();
              v174 = sub_1C6F765A4(v172, v92, v173);
              OUTLINED_FUNCTION_18_22();

              *(v29 + 14) = v174;
              v35 = v281;
              _os_log_impl(&dword_1C6F5C000, v281, &v292, "Added the current city name %{private}s to selected city name list: %{private}s", v29, 0x16u);
              OUTLINED_FUNCTION_28_14();
              OUTLINED_FUNCTION_23_3();
              OUTLINED_FUNCTION_9_37();
              OUTLINED_FUNCTION_109();
            }

            else
            {
            }
          }
        }

        if (v278)
        {
          v190 = v20[28];
          if (v190)
          {
            v155 = v20[27];
            OUTLINED_FUNCTION_35_11(&v291);
            sub_1C75504FC();
            sub_1C70F082C(&v284, v155, v190);
            swift_endAccess();

            v191 = sub_1C75504FC();
            v35 = OUTLINED_FUNCTION_14_31(v191);
            v29 = sub_1C75511BC();
            if (OUTLINED_FUNCTION_128(v29))
            {
              OUTLINED_FUNCTION_23_1();
              OUTLINED_FUNCTION_48_12();
              v192 = OUTLINED_FUNCTION_49_1();
              *v50 = OUTLINED_FUNCTION_1_57(v192, &v297).n128_u32[0];
              v193 = OUTLINED_FUNCTION_53_15();
              v155 = sub_1C6F765A4(v193, v190, v194);

              *(v50 + 4) = v155;
              *(v50 + 12) = 2081;
              sub_1C75504FC();
              sub_1C7550F9C();
              OUTLINED_FUNCTION_66_13();
              v195 = OUTLINED_FUNCTION_53_15();
              v197 = sub_1C6F765A4(v195, v92, v196);
              OUTLINED_FUNCTION_18_22();

              *(v50 + 14) = v197;
              _os_log_impl(&dword_1C6F5C000, v35, v29, "Added the current place name %{private}s to selected place name list: %{private}s", v50, 0x16u);
              OUTLINED_FUNCTION_28_14();
              OUTLINED_FUNCTION_23_3();
              OUTLINED_FUNCTION_23_20();
              OUTLINED_FUNCTION_109();
            }

            else
            {
            }

            OUTLINED_FUNCTION_19_25();
          }
        }

        if (v277)
        {
          v198 = v20[20];
          if (v198 >= 2)
          {
            v155 = v20[19];
            OUTLINED_FUNCTION_35_11(&v290);
            swift_bridgeObjectRetain_n();
            sub_1C70F082C(&v284, v155, v198);
            swift_endAccess();

            v199 = sub_1C75504FC();
            v35 = OUTLINED_FUNCTION_14_31(v199);
            v29 = sub_1C75511BC();

            if (os_log_type_enabled(v35, v29))
            {
              OUTLINED_FUNCTION_23_1();
              OUTLINED_FUNCTION_48_12();
              v200 = OUTLINED_FUNCTION_49_1();
              *v50 = OUTLINED_FUNCTION_1_57(v200, &v297).n128_u32[0];
              v201 = OUTLINED_FUNCTION_53_15();
              v155 = sub_1C6F765A4(v201, v198, v202);

              *(v50 + 4) = v155;
              *(v50 + 12) = 2081;
              sub_1C75504FC();
              sub_1C7550F9C();
              OUTLINED_FUNCTION_66_13();
              v203 = OUTLINED_FUNCTION_53_15();
              v205 = sub_1C6F765A4(v203, v92, v204);
              OUTLINED_FUNCTION_18_22();

              *(v50 + 14) = v205;
              _os_log_impl(&dword_1C6F5C000, v35, v29, "Added the current person name %{private}s to selected people list: %{private}s", v50, 0x16u);
              OUTLINED_FUNCTION_28_14();
              OUTLINED_FUNCTION_23_3();
              OUTLINED_FUNCTION_23_20();
              OUTLINED_FUNCTION_109();
            }

            else
            {
            }

            OUTLINED_FUNCTION_19_25();
          }
        }

        if (*(v50 + 16) >= v263)
        {
          v225 = OUTLINED_FUNCTION_14_31(v165);
          sub_1C75511BC();
          OUTLINED_FUNCTION_21_4();
          if (os_log_type_enabled(v225, v226))
          {
            v279 = v35;
            v227 = OUTLINED_FUNCTION_23_1();
            v228 = OUTLINED_FUNCTION_20_1();
            OUTLINED_FUNCTION_3_53(v228, &v296);
            *v227 = v253;
            *(v227 + 4) = v263;
            v282 = v227;
            *(v227 + 12) = 2081;
            v29 = *(v50 + 16);
            if (v29)
            {
              v277 = v225;
              OUTLINED_FUNCTION_52_12(MEMORY[0x1E69E7CC0]);
              v229 = sub_1C75504FC();
              v230 = &v284;
              OUTLINED_FUNCTION_24_21(v229, v231, v232, v233, v234, v235, v236);
              OUTLINED_FUNCTION_76_0();
              v281 = v50;
              v50 += v269;
              do
              {
                OUTLINED_FUNCTION_83_3(v50, &v293 + 8);
                isa = v155[13].isa;
                v237 = v155[14].isa;
                sub_1C75504FC();
                sub_1C715930C(v155);
                v284 = &v284;
                v238 = v286;
                v155 = (v286 + 1);
                if (v286 >= v287 >> 1)
                {
                  v241 = OUTLINED_FUNCTION_15(v287);
                  v230 = &v284;
                  sub_1C6F7ED9C(v241, v238 + 1, 1, v242, v243, v244, v245);
                  OUTLINED_FUNCTION_76_0();
                }

                v286 = v155;
                v239 = &v284 + 2 * v238;
                v239[4] = isa;
                v239[5] = v237;
                OUTLINED_FUNCTION_333();
                v50 += v240;
                --v29;
              }

              while (v29);
              OUTLINED_FUNCTION_23_20();

              v225 = v277;
              OUTLINED_FUNCTION_26_23();
            }

            else
            {
              v230 = MEMORY[0x1E69E7CC0];
            }

            v246 = MEMORY[0x1CCA5D090](v230, MEMORY[0x1E69E6158]);
            v248 = v247;

            v35 = sub_1C6F765A4(v246, v248, &v286);

            v249 = v282;
            *(v282 + 14) = v35;
            OUTLINED_FUNCTION_143();
            _os_log_impl(&dword_1C6F5C000, v225, v250, "Selected top %ld suggestions from smart suggestions:\n%{private}s\n", v249, 0x16u);
            OUTLINED_FUNCTION_5_43(&v296);
            OUTLINED_FUNCTION_23_3();

            OUTLINED_FUNCTION_19_25();
          }

          else
          {
          }

          sub_1C715930C(v20);
          goto LABEL_107;
        }

LABEL_106:
        v90 = sub_1C715930C(v20);
        if (v92 == v275)
        {
          goto LABEL_107;
        }
      }

      v139 = OUTLINED_FUNCTION_83_3(v20, &v280);
      v35 = OUTLINED_FUNCTION_14_31(v139);
      v50 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_128(v50))
      {
        OUTLINED_FUNCTION_23_1();
        v140 = OUTLINED_FUNCTION_40_16();
        LODWORD(v141) = OUTLINED_FUNCTION_1_57(v140, &v298).n128_u32[0];
        OUTLINED_FUNCTION_65_11(v141);
        OUTLINED_FUNCTION_26_23();
        sub_1C715930C(v142);
        OUTLINED_FUNCTION_34_14();
        OUTLINED_FUNCTION_37_19();

        OUTLINED_FUNCTION_47_13();
        sub_1C75504FC();
        v92 = sub_1C7550F9C();
        v29 = v143;

        v144 = OUTLINED_FUNCTION_18_22();
        v146 = sub_1C6F765A4(v144, v29, v145);
        OUTLINED_FUNCTION_9_37();

        *(v107 + 14) = v146;
        v118 = v50;
        v119 = v35;
        v120 = "Dropping candidate prompt (%{private}s). It shares the same place name with selected prompts (place names from selected prompts=%{private}s)";
        goto LABEL_70;
      }

LABEL_73:

      goto LABEL_101;
    }

LABEL_107:
    OUTLINED_FUNCTION_70_10();
    if (v53 != v52 && v31 < v48)
    {
      v206 = v264;
      v207 = sub_1C75504FC();
      v35 = OUTLINED_FUNCTION_14_31(v207);
      v208 = sub_1C75511BC();

      if (os_log_type_enabled(v35, v208))
      {
        OUTLINED_FUNCTION_20_1();
        v209 = OUTLINED_FUNCTION_62_10();
        OUTLINED_FUNCTION_3_53(v209, &v298);
        *v206 = v254;
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
        v210 = OUTLINED_FUNCTION_95(v29);
        OUTLINED_FUNCTION_4_43(v210);
        v211 = *(v50 + 16);
        *(v212 + 56) = MEMORY[0x1E69E6530];
        *(v212 + 64) = MEMORY[0x1E69E65A8];
        v213 = OUTLINED_FUNCTION_60_9(v212, v211);
        OUTLINED_FUNCTION_69_12(v213, v214);
        OUTLINED_FUNCTION_48_12();

        *(v206 + 4) = v50;
        *(v206 + 6) = 2080;
        v215 = OUTLINED_FUNCTION_95(v29);
        OUTLINED_FUNCTION_4_43(v215);
        *(v216 + 56) = MEMORY[0x1E69E6530];
        *(v216 + 64) = MEMORY[0x1E69E65A8];
        v217 = OUTLINED_FUNCTION_60_9(v216, v263);
        v219 = OUTLINED_FUNCTION_69_12(v217, v218);

        *(v206 + 14) = v219;
        *(v206 + 11) = 2080;
        v220 = OUTLINED_FUNCTION_9_37();
        v221 = OUTLINED_FUNCTION_95(v220);
        OUTLINED_FUNCTION_4_43(v221);
        *(v222 + 56) = MEMORY[0x1E69E6530];
        *(v222 + 64) = MEMORY[0x1E69E65A8];
        v223 = OUTLINED_FUNCTION_60_9(v222, v255);
        v50 = OUTLINED_FUNCTION_69_12(v223, v224);

        *(v206 + 3) = v50;
        OUTLINED_FUNCTION_23_20();
        _os_log_impl(&dword_1C6F5C000, v35, v208, "Lowering threshold: Selected prompt pool size(N=%s) is less than fetchLimit (%s) or total candidate count (%s", v206, 0x20u);
        OUTLINED_FUNCTION_27_24();
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_23_3();
      }
    }
  }

LABEL_125:

  sub_1C75504FC();

  sub_1C6F85170();

  v90 = v50;
  v91 = v48;
LABEL_127:
  result.lastEmbeddingDistanceThreshold = v91;
  result.suggestions._rawValue = v90;
  return result;
}

double sub_1C715215C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptSuggestion(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = *(a1 + 264);
  if (v10 && (v11 = *(a2 + 264)) != 0)
  {
    static PromptSuggestionRanker.getDistance(_:_:)(v10, v11);
    v13 = v12;
    sub_1C71592A8(a1, v9);
    sub_1C71592A8(a2, v6);
    v14 = sub_1C754FEEC();
    v15 = sub_1C75511BC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35 = v17;
      *v16 = 136315907;
      *(v16 + 4) = sub_1C6F765A4(0x75706D6F63657250, 0xEB00000000646574, &v35);
      *(v16 + 12) = 2081;
      v18 = *(v9 + 13);
      v19 = *(v9 + 14);
      sub_1C75504FC();
      sub_1C715930C(v9);
      v20 = sub_1C6F765A4(v18, v19, &v35);

      *(v16 + 14) = v20;
      *(v16 + 22) = 2081;
      v21 = *(v6 + 13);
      v22 = *(v6 + 14);
      sub_1C75504FC();
      sub_1C715930C(v6);
      v23 = sub_1C6F765A4(v21, v22, &v35);

      *(v16 + 24) = v23;
      *(v16 + 32) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
      v24 = swift_allocObject();
      v25 = MEMORY[0x1E69E63B0];
      *(v24 + 16) = xmmword_1C755BAB0;
      v26 = MEMORY[0x1E69E6438];
      *(v24 + 56) = v25;
      *(v24 + 64) = v26;
      *(v24 + 32) = v13;
      v27 = sub_1C75506BC();
      v29 = sub_1C6F765A4(v27, v28, &v35);

      *(v16 + 34) = v29;
      _os_log_impl(&dword_1C6F5C000, v14, v15, "[Embedding distance] Mode:%s'%{private}s' VS '%{private}s' =%s", v16, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v17, -1, -1);
      MEMORY[0x1CCA5F8E0](v16, -1, -1);
    }

    else
    {

      sub_1C715930C(v6);
      sub_1C715930C(v9);
    }
  }

  else
  {
    v30 = sub_1C754FEEC();
    v31 = sub_1C755119C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1C6F5C000, v30, v31, "Embedding distance is not available. Setting it to infinity to not filter by embeddingDistance", v32, 2u);
      MEMORY[0x1CCA5F8E0](v32, -1, -1);
    }

    return INFINITY;
  }

  return v13;
}

uint64_t PromptSuggestionRanker.selectWhimsicalPrompt(_:using:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155A8, &unk_1C7570210);
  v6 = OUTLINED_FUNCTION_76(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - v7;
  v9 = type metadata accessor for PromptSuggestion(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_78();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  sub_1C7152824(a1, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1C6FD7FC8(v8, &qword_1EC2155A8, &unk_1C7570210);
    v17 = sub_1C754FEEC();
    v18 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v18))
    {
      v19 = OUTLINED_FUNCTION_127();
      *v19 = 0;
      _os_log_impl(&dword_1C6F5C000, v17, v18, "There are no whimsical prompts", v19, 2u);
      OUTLINED_FUNCTION_37();
    }

LABEL_11:
    v34 = 1;
    return __swift_storeEnumTagSinglePayload(a3, v34, 1, v9);
  }

  sub_1C7159368(v8, v16);
  sub_1C714FFE8(0.0, 1.0);
  v21 = v20;
  if (v20 >= 0.1)
  {

    v31 = sub_1C754FEEC();
    v32 = sub_1C75511BC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_23_1();
      *v33 = 134218240;
      *(v33 + 4) = v21;
      *(v33 + 12) = 2048;
      *(v33 + 14) = 0x3FB999999999999ALL;
      _os_log_impl(&dword_1C6F5C000, v31, v32, "Selected whimsical prompt will not be included because failed test random number < whimsicalIncludeProbability: %f < %f", v33, 0x16u);
      OUTLINED_FUNCTION_37();
    }

    sub_1C715930C(v16);
    goto LABEL_11;
  }

  sub_1C71592A8(v16, v13);
  v22 = sub_1C754FEEC();
  v23 = sub_1C75511BC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_41_0();
    v25 = OUTLINED_FUNCTION_20_1();
    v39 = v25;
    *v24 = 136315138;
    PromptSuggestion.description.getter();
    v27 = v26;
    v29 = v28;
    sub_1C715930C(v13);
    v30 = sub_1C6F765A4(v27, v29, &v39);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_1C6F5C000, v22, v23, "Selected whimsical prompt %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {

    sub_1C715930C(v13);
  }

  v35 = OUTLINED_FUNCTION_295();
  sub_1C7159368(v35, v36);
  v34 = 0;
  return __swift_storeEnumTagSinglePayload(a3, v34, 1, v9);
}

Swift::UInt64 sub_1C7152824@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    result = sub_1C7159150(*(a1 + 16));
    if (result >= v3)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    v7 = type metadata accessor for PromptSuggestion(0);
    sub_1C71592A8(a1 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(*(v7 - 8) + 72) * v6, a2);
    v8 = a2;
    v9 = 0;
    v10 = v7;
  }

  else
  {
    v10 = type metadata accessor for PromptSuggestion(0);
    v8 = a2;
    v9 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
}

uint64_t PromptSuggestionRanker.selectContextualPrompt(_:otherPromptSuggestionCandidates:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v122 = a2;
  v127 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  v7 = OUTLINED_FUNCTION_76(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_78();
  v120 = v8 - v9;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v115 - v11;
  v13 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v126 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_78();
  v119 = (v16 - v17);
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v115 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v115 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155A8, &unk_1C7570210);
  v25 = OUTLINED_FUNCTION_76(v24);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v115 - v26;
  v28 = type metadata accessor for PromptSuggestion(0);
  OUTLINED_FUNCTION_3_0();
  v118 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_78();
  v33 = (v31 - v32);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_130();
  v121 = v35;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_130();
  v124 = v37;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v115 - v39;
  v123 = a3;
  sub_1C7152824(a1, v27);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v28);
  v128 = v28;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C6FD7FC8(v27, &qword_1EC2155A8, &unk_1C7570210);
    v42 = sub_1C754FEEC();
    sub_1C75511BC();
    OUTLINED_FUNCTION_21_4();
    if (os_log_type_enabled(v42, v43))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_17();
      _os_log_impl(v44, v45, v46, v47, v48, 2u);
      OUTLINED_FUNCTION_23_3();
    }
  }

  else
  {
    sub_1C7159368(v27, v40);
    v49 = *(v28 + 108);
    v125 = v40;
    sub_1C70555F8(&v40[v49], v12, &unk_1EC219230, &unk_1C7563720);
    OUTLINED_FUNCTION_112(v12);
    if (v50)
    {
      sub_1C754DF3C();
      OUTLINED_FUNCTION_112(v12);
      v51 = v124;
      if (!v50)
      {
        sub_1C6FD7FC8(v12, &unk_1EC219230, &unk_1C7563720);
      }
    }

    else
    {
      (*(v126 + 32))(v23, v12, v13);
      v51 = v124;
    }

    sub_1C754DF3C();
    static PromptSuggestionRanker.calculateDecayProbability(creationDate:currentDate:totalDurationInDays:decayExponent:)(v23, 14.0, 3.0);
    v53 = v52;
    v54 = *(v126 + 8);
    v54(v20, v13);
    v54(v23, v13);
    v55 = OBJC_IVAR____TtC18PhotosIntelligence22PromptSuggestionRanker_logger;
    sub_1C71592A8(v125, v51);
    v117 = v55;
    v56 = sub_1C754FEEC();
    v57 = sub_1C75511BC();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = OUTLINED_FUNCTION_23_1();
      v59 = OUTLINED_FUNCTION_20_1();
      v131[0] = v59;
      *v58 = 134218242;
      *(v58 + 4) = v53;
      *(v58 + 12) = 2080;
      v60 = v51 + *(v128 + 108);
      v61 = v120;
      sub_1C70555F8(v60, v120, &unk_1EC219230, &unk_1C7563720);
      OUTLINED_FUNCTION_112(v61);
      v116 = v59;
      if (v50)
      {
        v62 = v119;
        sub_1C754DF3C();
        OUTLINED_FUNCTION_112(v61);
        if (!v50)
        {
          sub_1C6FD7FC8(v61, &unk_1EC219230, &unk_1C7563720);
        }
      }

      else
      {
        v62 = v119;
        (*(v126 + 32))(v119, v61, v13);
      }

      sub_1C70E8020();
      v63 = sub_1C7551D8C();
      v65 = v64;
      v54(v62, v13);
      sub_1C715930C(v124);
      v66 = sub_1C6F765A4(v63, v65, v131);

      *(v58 + 14) = v66;
      _os_log_impl(&dword_1C6F5C000, v56, v57, "Contextual prompt probability to include: %f for prompt that is generated on %s", v58, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v116);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {

      sub_1C715930C(v51);
    }

    sub_1C714FFE8(0.0, 1.0);
    v67 = v125;
    if (v68 >= v53)
    {
      v78 = sub_1C754FEEC();
      sub_1C75511BC();
      OUTLINED_FUNCTION_21_4();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = OUTLINED_FUNCTION_23_1();
        OUTLINED_FUNCTION_54_14(v80, 3.8521e-34);
        OUTLINED_FUNCTION_17();
        _os_log_impl(v81, v82, v83, v84, v85, 0x16u);
        OUTLINED_FUNCTION_23_3();
      }

      v86 = v67;
    }

    else
    {
      v69 = v121;
      sub_1C71592A8(v125, v121);
      v70 = sub_1C754FEEC();
      v71 = sub_1C75511BC();
      if (os_log_type_enabled(v70, v71))
      {
        v67 = OUTLINED_FUNCTION_41_0();
        v72 = OUTLINED_FUNCTION_20_1();
        v131[0] = v72;
        *v67 = 136315138;
        PromptSuggestion.description.getter();
        v74 = v73;
        v76 = v75;
        sub_1C715930C(v69);
        v77 = sub_1C6F765A4(v74, v76, v131);

        *(v67 + 4) = v77;
        _os_log_impl(&dword_1C6F5C000, v70, v71, "Selected contextual prompt %s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v72);
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_109();
      }

      else
      {

        sub_1C715930C(v69);
      }

      v90 = *(v122 + 16);
      if (v90)
      {
        v91 = v122 + ((*(v118 + 80) + 32) & ~*(v118 + 80));
        v92 = *(v118 + 72);
        v93 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_80_6();
        do
        {
          sub_1C71592A8(v91, v33);
          v94 = v33[16];
          if (v94 && (v131[0] = v33[15], v131[1] = v94, v129 = v67, v130 = v69, sub_1C6FB5E8C(), (sub_1C75515AC() & 1) == 0) || (v95 = v33[20], v95 == 1))
          {
            sub_1C715930C(v33);
          }

          else
          {
            v96 = v33[19];
            sub_1C75504FC();
            sub_1C715930C(v33);
            if (v95)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_24_0();
                sub_1C6FB1814();
                v93 = v99;
              }

              v69 = *(v93 + 16);
              v97 = *(v93 + 24);
              v67 = v69 + 1;
              if (v69 >= v97 >> 1)
              {
                OUTLINED_FUNCTION_15(v97);
                OUTLINED_FUNCTION_116_0();
                sub_1C6FB1814();
                v93 = v100;
              }

              *(v93 + 16) = v67;
              v98 = v93 + 16 * v69;
              *(v98 + 32) = v96;
              *(v98 + 40) = v95;
              OUTLINED_FUNCTION_80_6();
            }
          }

          v91 += v92;
          --v90;
        }

        while (v90);
      }

      sub_1C706D154();
      v102 = v101;
      v103 = v125;
      v104 = *(v125 + 20);
      if (v104 <= 1 || (v108 = *(v125 + 19), sub_1C75504FC(), v109 = sub_1C7009C30(v108, v104, v102), , (v109 & 1) == 0))
      {

        v105 = v127;
        v106 = v128;
        sub_1C7159368(v103, v127);
        v87 = v105;
        v89 = 0;
        v88 = v106;
        return __swift_storeEnumTagSinglePayload(v87, v89, 1, v88);
      }

      sub_1C75504FC();
      v110 = sub_1C754FEEC();
      v111 = sub_1C75511BC();

      if (os_log_type_enabled(v110, v111))
      {
        v112 = OUTLINED_FUNCTION_41_0();
        v113 = OUTLINED_FUNCTION_20_1();
        v131[0] = v113;
        *v112 = 136315138;
        v114 = sub_1C6F765A4(v108, v104, v131);

        *(v112 + 4) = v114;
        _os_log_impl(&dword_1C6F5C000, v110, v111, "Selected contextual prompt person name already exists in other suggestions %s", v112, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v113);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_37();
      }

      else
      {
      }

      v86 = v103;
    }

    sub_1C715930C(v86);
  }

  v87 = v127;
  v88 = v128;
  v89 = 1;
  return __swift_storeEnumTagSinglePayload(v87, v89, 1, v88);
}

void static PromptSuggestionRanker.calculateDecayProbability(creationDate:currentDate:totalDurationInDays:decayExponent:)(uint64_t a1, double a2, long double a3)
{
  if (a2 <= 0.1 || a3 < 0.0)
  {
    if (qword_1EDD0E1F0 != -1)
    {
      OUTLINED_FUNCTION_6_44(&qword_1EDD0E1F0);
    }

    v14 = sub_1C754FF1C();
    __swift_project_value_buffer(v14, qword_1EDD0E1F8);
    v15 = sub_1C754FEEC();
    sub_1C755119C();
    OUTLINED_FUNCTION_21_4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_54_14(v17, 3.8521e-34);
      OUTLINED_FUNCTION_17();
      _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
      OUTLINED_FUNCTION_23_3();
    }
  }

  else
  {
    sub_1C754DEAC();
    if (v5 >= 0.0)
    {
      v23 = a2 * 24.0 * 60.0 * 60.0;
      if (v23 > v5)
      {
        pow(1.0 - v5 / v23, a3);
      }
    }

    else
    {
      if (qword_1EDD0E1F0 != -1)
      {
        OUTLINED_FUNCTION_6_44(&qword_1EDD0E1F0);
      }

      v6 = sub_1C754FF1C();
      __swift_project_value_buffer(v6, qword_1EDD0E1F8);
      v7 = sub_1C754FEEC();
      sub_1C75511BC();
      OUTLINED_FUNCTION_21_4();
      if (os_log_type_enabled(v7, v8))
      {
        *OUTLINED_FUNCTION_127() = 0;
        OUTLINED_FUNCTION_17();
        _os_log_impl(v9, v10, v11, v12, v13, 2u);
        OUTLINED_FUNCTION_23_3();
      }
    }
  }
}

uint64_t PromptSuggestionRanker.dedupe(suggestions:)(uint64_t a1)
{
  v3 = type metadata accessor for PromptSuggestion(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v8 = v7;
  v25[1] = PerformanceMeasure.init(name:log:)();
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    v12 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C71592A8(v10, v6);
      v14 = *(v6 + 13);
      v13 = *(v6 + 14);
      sub_1C75504FC();
      sub_1C715930C(v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1814();
        v12 = v18;
      }

      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        OUTLINED_FUNCTION_15(v15);
        sub_1C6FB1814();
        v12 = v19;
      }

      *(v12 + 16) = v16 + 1;
      v17 = v12 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  sub_1C706D154();
  v25[3] = v20;
  v21 = sub_1C75504FC();
  sub_1C714F888(v21);
  v23 = v22;

  sub_1C6F85170();

  return v23;
}

uint64_t PromptSuggestionRanker.rankPromptInSuggestionContexts(suggestionContexts:optOutSuggestions:)(uint64_t a1, NSObject *a2)
{
  v477 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155A8, &unk_1C7570210);
  v6 = OUTLINED_FUNCTION_76(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v456 - v10;
  v474 = type metadata accessor for PromptSuggestion(0);
  OUTLINED_FUNCTION_3_0();
  v485 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78();
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](&v456 - v17);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v456 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v28 = &v456 - v27;
  v29 = *(a1 + 16);
  if (!v29)
  {
    v61 = sub_1C754FEEC();
    sub_1C75511BC();
    OUTLINED_FUNCTION_21_4();
    if (os_log_type_enabled(v61, v62))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_17();
      _os_log_impl(v63, v64, v65, v66, v67, 2u);
      OUTLINED_FUNCTION_23_3();
    }

    return MEMORY[0x1E69E7CC0];
  }

  v471 = v23;
  v486 = v29;
  v461 = v26;
  v458 = v25;
  v457 = v24;
  v30 = a1;
  v499 = MEMORY[0x1E69E7CC0];
  v500 = MEMORY[0x1E69E7CC0];
  v497 = MEMORY[0x1E69E7CC0];
  v498 = MEMORY[0x1E69E7CC0];
  v31 = a1;
  v32 = 0;
  sub_1C7150060(v31, &v497);
  v33 = OBJC_IVAR____TtC18PhotosIntelligence22PromptSuggestionRanker_logger;
  sub_1C75504FC();
  v478 = v2;
  v473 = v33;
  v34 = sub_1C754FEEC();
  isa = sub_1C75511BC();
  v36 = os_log_type_enabled(v34, isa);
  v37 = &unk_1C756A000;
  v468 = v30;
  v480 = v11;
  if (v36)
  {
    LODWORD(v487) = isa;
    v3 = OUTLINED_FUNCTION_20_1();
    v484 = OUTLINED_FUNCTION_20_1();
    *&v494 = v484;
    *v3 = 134218499;
    OUTLINED_FUNCTION_5(&v497, v489);
    isa = v497;
    *(v3 + 4) = *(v497 + 16);
    *(v3 + 12) = 2048;
    *(v3 + 14) = v486;

    *(v3 + 22) = 2081;
    v38 = *(isa + 16);
    v39 = MEMORY[0x1E69E7CC0];
    if (v38)
    {
      v482 = v3;
      v483 = v34;
      v40 = OUTLINED_FUNCTION_82_7();
      OUTLINED_FUNCTION_24_21(v40, v41, v42, v43, v44, v45, v46);
      v39 = v496;
      OUTLINED_FUNCTION_0_75();
      v479 = isa;
      isa += v47;
      v49 = *(v48 + 72);
      do
      {
        v50 = OUTLINED_FUNCTION_295();
        sub_1C71592A8(v50, v51);
        v52 = *(v28 + 13);
        v11 = *(v28 + 14);
        sub_1C75504FC();
        sub_1C715930C(v28);
        v496 = v39;
        v54 = *(v39 + 16);
        v53 = *(v39 + 24);
        if (v54 >= v53 >> 1)
        {
          v56 = OUTLINED_FUNCTION_15(v53);
          sub_1C6F7ED9C(v56, v54 + 1, 1, v57, v58, v59, v60);
          v39 = v496;
        }

        *(v39 + 16) = v54 + 1;
        v55 = v39 + 16 * v54;
        *(v55 + 32) = v52;
        *(v55 + 40) = v11;
        isa += v49;
        --v38;
      }

      while (v38);

      OUTLINED_FUNCTION_51_11();
      v32 = v488;
      v34 = v483;
      v3 = v482;
    }

    v70 = MEMORY[0x1CCA5D090](v39, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_67_9();
    v37 = sub_1C6F765A4(v70, isa, &v494);

    *(v3 + 24) = v37;
    OUTLINED_FUNCTION_143();
    _os_log_impl(v71, v34, v72, v73, v3, 0x20u);
    OUTLINED_FUNCTION_5_43(&v502);
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  v74 = OUTLINED_FUNCTION_7_36(v69);
  sub_1C75511BC();
  OUTLINED_FUNCTION_21_4();
  v76 = &byte_1C756CFEC[20];
  if (os_log_type_enabled(v74, v75))
  {
    LODWORD(v484) = v37;
    v77 = OUTLINED_FUNCTION_23_1();
    v483 = OUTLINED_FUNCTION_20_1();
    *&v494 = v483;
    *v77 = 134218243;
    OUTLINED_FUNCTION_5(&v497, v490);
    v78 = v497;
    *(v77 + 4) = *(v497 + 16);
    v487 = v77;
    *(v77 + 12) = 2081;
    v3 = *(v78 + 16);
    v79 = MEMORY[0x1E69E7CC0];
    if (v3)
    {
      v482 = v74;
      v80 = OUTLINED_FUNCTION_82_7();
      OUTLINED_FUNCTION_59_10(v80, v81, v82, v83, v84, v85, v86);
      v79 = v496;
      OUTLINED_FUNCTION_0_75();
      v479 = v78;
      v78 += v87;
      v89 = *(v88 + 72);
      do
      {
        v90 = OUTLINED_FUNCTION_295();
        sub_1C71592A8(v90, v91);
        v92 = *(v28 + 13);
        v11 = *(v28 + 14);
        sub_1C75504FC();
        sub_1C715930C(v28);
        v496 = v79;
        v94 = *(v79 + 16);
        v93 = *(v79 + 24);
        if (v94 >= v93 >> 1)
        {
          v96 = OUTLINED_FUNCTION_15(v93);
          sub_1C6F7ED9C(v96, v94 + 1, 1, v97, v98, v99, v100);
          v79 = v496;
        }

        *(v79 + 16) = v94 + 1;
        v95 = v79 + 16 * v94;
        *(v95 + 32) = v92;
        *(v95 + 40) = v11;
        v78 += v89;
        --v3;
      }

      while (v3);

      OUTLINED_FUNCTION_51_11();
      v76 = &byte_1C756CFEC[20];
      v32 = v488;
      v74 = v482;
    }

    v101 = MEMORY[0x1CCA5D090](v79, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_67_9();
    v102 = sub_1C6F765A4(v101, v78, &v494);

    isa = v487;
    *(v487 + 14) = v102;
    OUTLINED_FUNCTION_143();
    _os_log_impl(v103, v74, v104, v105, isa, 0x16u);
    OUTLINED_FUNCTION_5_43(v501);
    OUTLINED_FUNCTION_109();
  }

  OUTLINED_FUNCTION_20_28();
  v106 = v477;
  sub_1C75504FC();
  sub_1C7158B74(&v497, v106);
  if (v32)
  {
    goto LABEL_202;
  }

  v108 = v497;
  v109 = *(v497 + 16);
  if (v109 < v107)
  {
LABEL_198:
    __break(1u);
LABEL_199:
    OUTLINED_FUNCTION_15(v108);
    OUTLINED_FUNCTION_116_0();
    sub_1C6FB389C(v451);
    v481 = v452;
  }

  else
  {
    v106 = &v497;
    sub_1C7159584(v107, v109);
    v110 = swift_endAccess();
    v111 = OUTLINED_FUNCTION_7_36(v110);
    v3 = sub_1C75511BC();
    os_log_type_enabled(v111, v3);
    OUTLINED_FUNCTION_72_8();
    if (v112)
    {
      v113 = OUTLINED_FUNCTION_23_1();
      v114 = OUTLINED_FUNCTION_20_1();
      *&v494 = OUTLINED_FUNCTION_33_16(v114);
      *v113 = 134218243;
      v115 = v497;
      *(v113 + 4) = *(v497 + 16);
      *(v113 + 12) = 2081;
      v11 = *(v115 + 16);
      v116 = MEMORY[0x1E69E7CC0];
      if (v11)
      {
        LODWORD(v483) = v3;
        v484 = v113;
        v487 = v111;
        v496 = MEMORY[0x1E69E7CC0];
        sub_1C75504FC();
        sub_1C6F7ED9C(0, v11, 0, v117, v118, v119, v120);
        v116 = v496;
        OUTLINED_FUNCTION_0_75();
        v482 = v115;
        isa = v115 + v121;
        v123 = *(v122 + 72);
        do
        {
          v124 = OUTLINED_FUNCTION_295();
          sub_1C71592A8(v124, v125);
          v76 = *(v28 + 13);
          v126 = *(v28 + 14);
          sub_1C75504FC();
          sub_1C715930C(v28);
          v496 = v116;
          v128 = *(v116 + 16);
          v127 = *(v116 + 24);
          if (v128 >= v127 >> 1)
          {
            v130 = OUTLINED_FUNCTION_15(v127);
            sub_1C6F7ED9C(v130, v128 + 1, 1, v131, v132, v133, v134);
            v116 = v496;
          }

          *(v116 + 16) = v128 + 1;
          v129 = v116 + 16 * v128;
          *(v129 + 32) = v76;
          *(v129 + 40) = v126;
          isa += v123;
          --v11;
        }

        while (v11);

        v111 = v487;
        v113 = v484;
        v3 = v483;
      }

      v32 = MEMORY[0x1CCA5D090](v116, MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_67_9();
      v135 = OUTLINED_FUNCTION_64();
      v106 = sub_1C6F765A4(v135, v136, v137);

      *(v113 + 14) = v106;
      _os_log_impl(&dword_1C6F5C000, v111, v3, "Prompt pool after dropping opt-out prompts (N=%ld): %{private}s", v113, 0x16u);
      OUTLINED_FUNCTION_5_43(&v503);
      OUTLINED_FUNCTION_109();

      OUTLINED_FUNCTION_51_11();
    }

    else
    {
    }

    v138 = 0;
    v475 = v468 + 32;
    v479 = &v477[1];
    v139 = &unk_1C7570210;
    v488 = MEMORY[0x1E69E7CC0];
    v108 = v486;
    while (1)
    {
      if (v138 == v108)
      {
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
        goto LABEL_198;
      }

      v487 = v138;
      v140 = (v475 + 24 * v138);
      v141 = v140[1];
      v483 = *v140;
      v106 = v140[2];
      isa = v106[2].isa;
      v482 = v141;
      if (isa)
      {
        OUTLINED_FUNCTION_79_8();
        v11 = v106 + v32;
        sub_1C75504FC();
        sub_1C75504FC();
        v76 = 0;
        v484 = v479 + v32;
        while (1)
        {
          v108 = v106[2].isa;
          if (v76 >= v108)
          {
            __break(1u);
            goto LABEL_195;
          }

          v142 = v139;
          v143 = *(v485 + 72);
          sub_1C71592A8(v11 + v143 * v76, v21);
          if (*(v21 + 80))
          {
            break;
          }

LABEL_46:
          ++v76;
          sub_1C715930C(v21);
          v139 = v142;
          if (v76 == isa)
          {
            OUTLINED_FUNCTION_51_11();
            goto LABEL_50;
          }
        }

        v32 = v477[2].isa + 1;
        v3 = v484;
        while (--v32)
        {
          if (*(v3 - 8) != *v21 || *v3 != *(v21 + 8))
          {
            v3 += v143;
            if ((sub_1C7551DBC() & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_46;
        }

        OUTLINED_FUNCTION_51_11();
        sub_1C7159368(v146, v11);
        v145 = 0;
        v139 = v142;
      }

      else
      {
        sub_1C75504FC();
        sub_1C75504FC();
        v145 = 1;
      }

LABEL_50:
      v147 = v474;
      __swift_storeEnumTagSinglePayload(v11, v145, 1, v474);
      v148 = v481;
      v76 = &qword_1EC2155A8;
      sub_1C70555F8(v11, v481, &qword_1EC2155A8, v139);
      v3 = &unk_1C756C000;
      if (__swift_getEnumTagSinglePayload(v148, 1, v147) != 1)
      {
        break;
      }

      sub_1C6FD7FC8(v148, &qword_1EC2155A8, v139);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v153 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB389C(v153);
        OUTLINED_FUNCTION_33_16(v154);
      }

      v32 = v488[2];
      v149 = v488[3];
      isa = v32 + 1;
      v150 = v487;
      if (v32 >= v149 >> 1)
      {
        OUTLINED_FUNCTION_15(v149);
        OUTLINED_FUNCTION_116_0();
        sub_1C6FB389C(v155);
        OUTLINED_FUNCTION_33_16(v156);
      }

      v76 = v150 + 1;
      sub_1C6FD7FC8(v11, &qword_1EC2155A8, v139);
      v138 = v76;
      v151 = v488;
      v488[2] = isa;
      v152 = &v151[3 * v32];
      v152[4] = v483;
      v152[5] = v482;
      v152[6] = v106;
      v499 = v151;
      v108 = v486;
      if (v76 == v486)
      {
        v487 = v486;
        v32 = MEMORY[0x1E69E7CC0];
        v459 = MEMORY[0x1E69E7CC0];
        goto LABEL_64;
      }
    }

    v21 = v476;
    sub_1C7159368(v148, v476);
    sub_1C6FB389C(0);
    v481 = v157;
    v32 = *(v157 + 16);
    v108 = *(v157 + 24);
    isa = v32 + 1;
    if (v32 >= v108 >> 1)
    {
      goto LABEL_199;
    }
  }

  v158 = v483;
  v159 = v481;
  *(v481 + 16) = isa;
  v160 = (v159 + 24 * v32);
  v161 = v482;
  v160[4] = v158;
  v160[5] = v161;
  v160[6] = v106;
  v500 = v159;
  v162 = v472;
  sub_1C71592A8(v21, v472);
  sub_1C6FB3648(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v164 = v163;
  v32 = *(v163 + 16);
  v165 = *(v163 + 24);
  if (v32 >= v165 >> 1)
  {
    v453 = OUTLINED_FUNCTION_15(v165);
    sub_1C6FB3648(v453, v32 + 1, 1, v454);
    v164 = v455;
  }

  *(v164 + 16) = v32 + 1;
  OUTLINED_FUNCTION_0_75();
  v169 = v168;
  sub_1C7159368(v162, v168 + v166 + *(v167 + 72) * v32);
  v459 = v169;
  v498 = v169;
  v170 = v471;
  v171 = sub_1C71592A8(v21, v471);
  v172 = OUTLINED_FUNCTION_7_36(v171);
  v173 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v173))
  {
    v32 = OUTLINED_FUNCTION_41_0();
    v76 = OUTLINED_FUNCTION_20_1();
    *&v494 = v76;
    *v32 = *(v3 + 1520);
    v174 = v21;
    v175 = *(v170 + 104);
    v21 = *(v170 + 112);
    sub_1C75504FC();
    sub_1C715930C(v170);
    v176 = sub_1C6F765A4(v175, v21, &v494);

    *(v32 + 4) = v176;
    _os_log_impl(&dword_1C6F5C000, v172, v173, "Selected prompt from first suggestion: %{private}s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v76);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_23_3();

    v177 = v174;
    v3 = 0x1C756C000;
  }

  else
  {

    sub_1C715930C(v170);
    v177 = v21;
  }

  sub_1C715930C(v177);
  sub_1C6FD7FC8(v11, &qword_1EC2155A8, &unk_1C7570210);
  OUTLINED_FUNCTION_55_11();
LABEL_64:
  v106 = &byte_1C756CFEC[20];
  v467 = OBJC_IVAR____TtC18PhotosIntelligence22PromptSuggestionRanker_promptRankingParameters;
  OUTLINED_FUNCTION_5(&v499, &v496);
  LODWORD(v476) = 0;
  v472 = v468 + 48;
  v11 = 24;
  *&v178 = 67109634;
  v463 = v178;
  *&v178 = 134218243;
  v462 = v178;
  *&v178 = *(v3 + 1520);
  v456 = v178;
  while (1)
  {
    isa = *(v32 + 16);
    v471 = v499[2];
    v108 = isa + v471;
    if (__OFADD__(isa, v471))
    {
      goto LABEL_196;
    }

    v481 = v32;
    v480 = v499;
    if ((v108 >= v486) | v476 & 1)
    {
      if (*(v497 + 16))
      {
        OUTLINED_FUNCTION_20_28();
        sub_1C71568A4(&v498, &v497);
        isa = v388;
        swift_endAccess();
        v11 = sub_1C754FEEC();
        LODWORD(v3) = sub_1C75511BC();
        if (os_log_type_enabled(v11, v3))
        {
          v76 = OUTLINED_FUNCTION_23_1();
          v389 = OUTLINED_FUNCTION_20_1();
          v390 = OUTLINED_FUNCTION_33_16(v389);
          *&v494 = v390;
          *v76 = v462;
          v397 = *(isa + 16);
          *(v76 + 4) = v397;
          *(v76 + 12) = 2081;
          if (v397)
          {
            LODWORD(v486) = v3;
            v487 = v11;
            v492 = MEMORY[0x1E69E7CC0];
            OUTLINED_FUNCTION_24_21(v390, v391, v392, v393, v394, v395, v396);
            v398 = *&v492;
            OUTLINED_FUNCTION_0_75();
            v484 = isa;
            v400 = isa + v399;
            v402 = *(v401 + 72);
            do
            {
              v403 = OUTLINED_FUNCTION_295();
              sub_1C71592A8(v403, v404);
              v405 = *(v28 + 13);
              v406 = *(v28 + 14);
              sub_1C75504FC();
              sub_1C715930C(v28);
              v492 = *&v398;
              v408 = *(v398 + 16);
              v407 = *(v398 + 24);
              if (v408 >= v407 >> 1)
              {
                v410 = OUTLINED_FUNCTION_15(v407);
                sub_1C6F7ED9C(v410, v408 + 1, 1, v411, v412, v413, v414);
                v398 = *&v492;
              }

              *(v398 + 16) = v408 + 1;
              v409 = v398 + 16 * v408;
              *(v409 + 32) = v405;
              *(v409 + 40) = v406;
              v400 += v402;
              --v397;
            }

            while (v397);

            v11 = v487;
            LOBYTE(v3) = v486;
          }

          else
          {
LABEL_181:

            v398 = MEMORY[0x1E69E7CC0];
          }

          isa = MEMORY[0x1CCA5D090](v398, MEMORY[0x1E69E6158]);
          v416 = v415;

          v417 = sub_1C6F765A4(isa, v416, &v494);

          *(v76 + 14) = v417;
          _os_log_impl(&dword_1C6F5C000, v11, v3, "Ranking remaining prompts, selected %ld prompts:  %{private}s", v76, 0x16u);
          OUTLINED_FUNCTION_5_43(&v503);
          OUTLINED_FUNCTION_37();
        }

        else
        {
LABEL_178:
        }
      }

      v68 = v498;
      v418 = sub_1C75504FC();
      v419 = OUTLINED_FUNCTION_7_36(v418);
      v420 = sub_1C75511BC();
      if (os_log_type_enabled(v419, v420))
      {
        v421 = OUTLINED_FUNCTION_20_1();
        v422 = OUTLINED_FUNCTION_20_1();
        v423 = OUTLINED_FUNCTION_33_16(v422);
        *&v494 = v423;
        *v421 = 134218499;
        v430 = *(v68 + 16);
        *(v421 + 4) = v430;
        *(v421 + 12) = 2048;
        v431 = v497;
        *(v421 + 14) = *(v497 + 16);
        *(v421 + 22) = 2081;
        v432 = MEMORY[0x1E69E7CC0];
        if (v430)
        {
          v483 = v431;
          LODWORD(v484) = v420;
          v486 = v421;
          v487 = v419;
          v492 = MEMORY[0x1E69E7CC0];
          OUTLINED_FUNCTION_24_21(v423, v424, v425, v426, v427, v428, v429);
          v432 = *&v492;
          OUTLINED_FUNCTION_0_75();
          isa = v68 + v433;
          v435 = *(v434 + 72);
          do
          {
            v436 = OUTLINED_FUNCTION_295();
            sub_1C71592A8(v436, v437);
            v438 = *(v28 + 13);
            v439 = *(v28 + 14);
            sub_1C75504FC();
            sub_1C715930C(v28);
            v492 = *&v432;
            v441 = *(v432 + 16);
            v440 = *(v432 + 24);
            if (v441 >= v440 >> 1)
            {
              v443 = OUTLINED_FUNCTION_15(v440);
              sub_1C6F7ED9C(v443, v441 + 1, 1, v444, v445, v446, v447);
              v432 = *&v492;
            }

            *(v432 + 16) = v441 + 1;
            v442 = v432 + 16 * v441;
            *(v442 + 32) = v438;
            *(v442 + 40) = v439;
            isa += v435;
            --v430;
          }

          while (v430);
          v419 = v487;
          v421 = v486;
          LOBYTE(v420) = v484;
        }

        v448 = MEMORY[0x1CCA5D090](v432, MEMORY[0x1E69E6158]);
        OUTLINED_FUNCTION_67_9();
        v449 = sub_1C6F765A4(v448, isa, &v494);

        *(v421 + 24) = v449;

        _os_log_impl(&dword_1C6F5C000, v419, v420, "Finished ranking, got %ld ranked prompts, remainder %ld. Ranked prompts in order: %{private}s", v421, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v488);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      else
      {
      }

      return v68;
    }

    v179 = *(v478 + v467);
    v479 = isa;
    if (!v179)
    {
      v494 = 0u;
      v495 = 0u;
LABEL_72:
      sub_1C6FD7FC8(&v494, &qword_1EC219770, &unk_1C755C740);
      if (!v179)
      {
        v494 = 0u;
        v495 = 0u;
        v180 = 1.0;
LABEL_78:
        sub_1C6FD7FC8(&v494, &qword_1EC219770, &unk_1C755C740);
LABEL_79:
        v181 = 0.35;
        goto LABEL_80;
      }

      goto LABEL_73;
    }

    sub_1C755068C();
    sub_1C6FE3750();

    if (!*(&v495 + 1))
    {
      goto LABEL_72;
    }

    if (swift_dynamicCast())
    {
      v180 = v492;
      goto LABEL_74;
    }

LABEL_73:
    v180 = 1.0;
LABEL_74:
    sub_1C755068C();
    sub_1C6FE3750();

    if (!*(&v495 + 1))
    {
      goto LABEL_78;
    }

    if (!swift_dynamicCast())
    {
      goto LABEL_79;
    }

    v181 = v492;
LABEL_80:
    v182 = v468;
    sub_1C75504FC();
    v32 = v487;
    v183 = sub_1C70CE540(v487, v182);
    v185 = v32;
    v476 = v183;
    v186 = 0;
    v188 = v187 >> 1;
    v189 = (v475 + 24 * v32);
    v191 = v190 + 8;
    v192 = v184;
    v470 = v190 + 8;
    v483 = v184;
    while (1)
    {
      v193 = 0;
      v106 = (v472 + 24 * v186);
      v194 = (v188 - v192);
      v3 = v191 + 24 * v192;
      v195 = v486;
      v484 = v186;
      while (1)
      {
        if (v194 == v193)
        {
          OUTLINED_FUNCTION_68_12();
          OUTLINED_FUNCTION_55_11();
          OUTLINED_FUNCTION_44_13();
          goto LABEL_105;
        }

        if (v192 < v184 || v193 + v192 >= v188)
        {
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
          goto LABEL_178;
        }

        v197 = v193 + v186 + 1;
        if (__OFADD__(v193 + v186, 1))
        {
          goto LABEL_176;
        }

        if (v185 >= v195)
        {
          goto LABEL_177;
        }

        v198 = *(v3 - 8);
        v21 = *v3;
        if (*v189 != v198 || v189[1] != v21)
        {
          v76 = *(v3 + 8);
          v11 = v188;
          v488 = v193;
          v32 = v189;
          isa = v192;
          v482 = v198;
          v200 = sub_1C7551DBC();
          v192 = isa;
          v189 = v32;
          v193 = v488;
          v188 = v11;
          v184 = v483;
          v186 = v484;
          v185 = v487;
          v195 = v486;
          if ((v200 & 1) == 0)
          {
            break;
          }
        }

        v193 = (v193 + 1);
        v106 += 3;
        v3 += 24;
      }

      v469 = v76;
      v108 = v488 + v484;
      if (v488 + v484 >= v486)
      {
        goto LABEL_197;
      }

      v201 = v106[-2].isa;
      v76 = v106[-1].isa;
      v202 = v106->isa;
      *&v494 = v201;
      *(&v494 + 1) = v76;
      *&v495 = v202;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v203 = v481;
      sub_1C75504FC();
      v204 = v466;
      sub_1C7155978(&v494, v203, 1, v477, v466, v181, v180);

      v205 = v464;
      v3 = &unk_1C7570210;
      sub_1C70555F8(v204, v464, &qword_1EC2155A8, &unk_1C7570210);
      if (__swift_getEnumTagSinglePayload(v205, 1, v474) != 1)
      {
        break;
      }

      sub_1C6FD7FC8(v205, &qword_1EC2155A8, &unk_1C7570210);
      swift_beginAccess();
      OUTLINED_FUNCTION_44_13();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v213 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB389C(v213);
        v3 = v214;
      }

      v207 = *(v3 + 16);
      v206 = *(v3 + 24);
      v208 = v488;
      if (v207 >= v206 >> 1)
      {
        v215 = OUTLINED_FUNCTION_15(v206);
        sub_1C6FB389C(v215);
        v210 = isa;
        v209 = v21;
        v208 = v488;
        v3 = v216;
      }

      else
      {
        v209 = v21;
        v210 = isa;
      }

      isa = v208 + v210 + 1;
      *(v3 + 16) = v207 + 1;
      v211 = (v3 + 24 * v207);
      v211[4] = v482;
      v211[5] = v209;
      v211[6] = v469;
      v480 = v3;
      v499 = v3;
      swift_endAccess();
      v212 = OUTLINED_FUNCTION_73_8();
      sub_1C6FD7FC8(v212, &qword_1EC2155A8, &unk_1C7570210);
      v192 = isa;
      v186 = v197;
      v185 = v487;
      v184 = v483;
      v188 = v11;
      v189 = v32;
      v191 = v470;
    }

    OUTLINED_FUNCTION_74_7();
    v351 = sub_1C7159368(v349, v350);
    v76 = v482;
    *&v494 = v482;
    *(&v494 + 1) = v21;
    v352 = v469;
    *&v495 = v469;
    MEMORY[0x1EEE9AC00](v351);
    *(&v456 - 2) = &v494;
    sub_1C75504FC();
    v32 = v460;
    v353 = sub_1C70736C8();

    if (v353)
    {
      OUTLINED_FUNCTION_72_8();
      v354 = OUTLINED_FUNCTION_73_8();
      sub_1C6FD7FC8(v354, &qword_1EC2155A8, &unk_1C7570210);
      OUTLINED_FUNCTION_68_12();

      OUTLINED_FUNCTION_44_13();
      goto LABEL_167;
    }

    swift_beginAccess();
    sub_1C6FB0CF0();
    v355 = *(v500 + 16);
    sub_1C6FB152C();
    v356 = v500;
    *(v500 + 16) = v355 + 1;
    v357 = (v356 + 24 * v355);
    v357[4] = v76;
    v357[5] = v21;
    v357[6] = v352;
    v481 = v356;
    v500 = v356;
    v358 = swift_endAccess();
    MEMORY[0x1EEE9AC00](v358);
    *(&v456 - 2) = &qword_1EC2155A8;
    sub_1C7073698(sub_1C71598A8, (&v456 - 2), v459);
    OUTLINED_FUNCTION_72_8();
    OUTLINED_FUNCTION_44_13();
    if (v359)
    {
      v360 = OUTLINED_FUNCTION_73_8();
      sub_1C6FD7FC8(v360, &qword_1EC2155A8, &unk_1C7570210);
      OUTLINED_FUNCTION_68_12();
      goto LABEL_167;
    }

    sub_1C71592A8(&qword_1EC2155A8, v458);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76 = v457;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v380 = OUTLINED_FUNCTION_24_0();
      sub_1C6FB3648(v380, v381, v382, v383);
      v459 = v384;
    }

    v32 = v460;
    v362 = v459;
    v364 = *(v459 + 16);
    v363 = *(v459 + 24);
    if (v364 >= v363 >> 1)
    {
      v385 = OUTLINED_FUNCTION_15(v363);
      sub_1C6FB3648(v385, v364 + 1, 1, v386);
      v362 = v387;
    }

    *(v362 + 16) = v364 + 1;
    OUTLINED_FUNCTION_0_75();
    v368 = v367;
    v369 = sub_1C7159368(v458, v367 + v365 + *(v366 + 72) * v364);
    v459 = v368;
    v498 = v368;
    MEMORY[0x1EEE9AC00](v369);
    *(&v456 - 2) = v461;
    OUTLINED_FUNCTION_20_28();
    sub_1C7158E6C(sub_1C71598C8, (&v456 - 2));
    if (v32)
    {
      goto LABEL_201;
    }

    v371 = *(v497 + 16);
    if (v371 < v370)
    {
      break;
    }

    sub_1C7159584(v370, v371);
    swift_endAccess();
    v372 = sub_1C71592A8(v461, v76);
    v373 = OUTLINED_FUNCTION_7_36(v372);
    v374 = sub_1C75511BC();
    OUTLINED_FUNCTION_128(v374);
    OUTLINED_FUNCTION_72_8();
    if (v375)
    {
      v376 = OUTLINED_FUNCTION_41_0();
      v377 = v76;
      v76 = OUTLINED_FUNCTION_20_1();
      *&v494 = v76;
      *v376 = v456;
      v378 = *(v377 + 104);
      v3 = *(v377 + 112);
      sub_1C75504FC();
      sub_1C715930C(v377);
      v21 = sub_1C6F765A4(v378, v3, &v494);
      OUTLINED_FUNCTION_44_13();

      *(v376 + 4) = v21;
      _os_log_impl(&dword_1C6F5C000, v373, v374, "Selected prompt: %{private}s", v376, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v76);
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_68_12();
    }

    else
    {
      OUTLINED_FUNCTION_68_12();

      sub_1C715930C(v76);
    }

    v379 = OUTLINED_FUNCTION_73_8();
    sub_1C6FD7FC8(v379, &qword_1EC2155A8, &unk_1C7570210);
LABEL_167:
    v487 = v488 + v484;
    sub_1C715930C(v461);
    OUTLINED_FUNCTION_55_11();
LABEL_105:
    v11 = 24;
    if (*(v3 + 16))
    {
      OUTLINED_FUNCTION_20_28();
      swift_beginAccess();
      OUTLINED_FUNCTION_35_11(&v499);
      v218 = v478;
      v3 = sub_1C7155EDC(&v498, &v497, &v500, &v499);
      swift_endAccess();
      swift_endAccess();
      swift_endAccess();
      v219 = v218 + v473;
      v76 = sub_1C754FEEC();
      sub_1C75511BC();
      OUTLINED_FUNCTION_21_4();
      if (os_log_type_enabled(v76, v220))
      {
        LODWORD(v488) = v219;
        v221 = OUTLINED_FUNCTION_23_1();
        v222 = OUTLINED_FUNCTION_20_1();
        v484 = v222;
        *&v494 = v222;
        *v221 = v462;
        *(v221 + 4) = *(v3 + 16);
        *(v221 + 12) = 2081;
        v229 = *(v3 + 16);
        if (v229)
        {
          v482 = v221;
          v483 = v76;
          v481 = v32;
          v492 = MEMORY[0x1E69E7CC0];
          OUTLINED_FUNCTION_24_21(v222, v223, v224, v225, v226, v227, v228);
          v230 = *&v492;
          OUTLINED_FUNCTION_0_75();
          v232 = v3 + v231;
          v234 = *(v233 + 72);
          do
          {
            sub_1C71592A8(v232, v28);
            v32 = *(v28 + 13);
            v235 = *(v28 + 14);
            sub_1C75504FC();
            sub_1C715930C(v28);
            v492 = *&v230;
            v237 = *(v230 + 16);
            v236 = *(v230 + 24);
            if (v237 >= v236 >> 1)
            {
              v239 = OUTLINED_FUNCTION_15(v236);
              sub_1C6F7ED9C(v239, v237 + 1, 1, v240, v241, v242, v243);
              v230 = *&v492;
            }

            *(v230 + 16) = v237 + 1;
            v238 = v230 + 16 * v237;
            *(v238 + 32) = v32;
            *(v238 + 40) = v235;
            v232 += v234;
            --v229;
          }

          while (v229);

          OUTLINED_FUNCTION_55_11();
          v11 = 24;
          v76 = v483;
          v221 = v482;
        }

        else
        {

          v230 = MEMORY[0x1E69E7CC0];
        }

        v244 = MEMORY[0x1CCA5D090](v230, MEMORY[0x1E69E6158]);
        v21 = v245;

        v246 = sub_1C6F765A4(v244, v21, &v494);

        *(v221 + 14) = v246;
        OUTLINED_FUNCTION_143();
        _os_log_impl(&dword_1C6F5C000, v76, v247, "Ranking selected prompts from skipped suggestions, selected %ld prompts:  %{private}s", v221, 0x16u);
        OUTLINED_FUNCTION_5_43(&v502);
        OUTLINED_FUNCTION_109();
      }

      else
      {
      }
    }

    LODWORD(v476) = v479 == *(v32 + 16) && v471 == v499[2];
    v106 = OUTLINED_FUNCTION_7_36(v217);
    LODWORD(v471) = sub_1C75511BC();
    if (!OUTLINED_FUNCTION_128(v471))
    {

      continue;
    }

    v469 = v106;
    v248 = swift_slowAlloc();
    v465 = OUTLINED_FUNCTION_49_1();
    v492 = *&v465;
    *v248 = v463;
    *(v248 + 4) = v476;
    v470 = v248;
    *(v248 + 8) = 2080;
    v3 = *(v32 + 16);
    v481 = v32;
    if (v3)
    {
      v491 = MEMORY[0x1E69E7CC0];
      v249 = sub_1C75504FC();
      OUTLINED_FUNCTION_59_10(v249, v250, v251, v252, v253, v254, v255);
      v256 = v32;
      v257 = 0;
      v258 = v491;
      v482 = (v256 + 32);
      v480 = v3;
      while (v257 < *(v481 + 16))
      {
        v488 = v258;
        v259 = v482[3 * v257 + 2].isa;
        *&v494 = 0;
        *(&v494 + 1) = 0xE000000000000000;
        v260 = *(v259 + 16);
        if (v260)
        {
          OUTLINED_FUNCTION_81_8(MEMORY[0x1E69E7CC0]);
          v261 = sub_1C75504FC();
          OUTLINED_FUNCTION_24_21(v261, v262, v263, v264, v265, v266, v267);
          v268 = v493;
          OUTLINED_FUNCTION_0_75();
          v483 = v259;
          v3 = v259 + v269;
          v271 = *(v270 + 72);
          do
          {
            sub_1C71592A8(v3, v28);
            v273 = *(v28 + 13);
            v272 = *(v28 + 14);
            sub_1C75504FC();
            sub_1C715930C(v28);
            v493 = v268;
            v275 = *(v268 + 16);
            v274 = *(v268 + 24);
            if (v275 >= v274 >> 1)
            {
              v277 = OUTLINED_FUNCTION_15(v274);
              sub_1C6F7ED9C(v277, v275 + 1, 1, v278, v279, v280, v281);
              v268 = v493;
            }

            *(v268 + 16) = v275 + 1;
            v276 = v268 + 16 * v275;
            *(v276 + 32) = v273;
            *(v276 + 40) = v272;
            v3 += v271;
            --v260;
          }

          while (v260);
          v11 = 24;
          OUTLINED_FUNCTION_44_13();
          OUTLINED_FUNCTION_77_7();
        }

        else
        {
          sub_1C75504FC();
          sub_1C75504FC();
          v268 = MEMORY[0x1E69E7CC0];
        }

        v282 = MEMORY[0x1CCA5D090](v268, MEMORY[0x1E69E6158]);
        v284 = v283;

        MEMORY[0x1CCA5CD70](v282, v284);

        v285 = *(&v494 + 1);
        v76 = v494;
        v258 = v488;
        v491 = v488;
        v21 = v488[2];
        v286 = v488[3];
        if (v21 >= v286 >> 1)
        {
          OUTLINED_FUNCTION_15(v286);
          OUTLINED_FUNCTION_116_0();
          sub_1C6F7ED9C(v288, v289, v290, v291, v292, v293, v294);
          v258 = v491;
        }

        ++v257;
        v258[2] = v21 + 1;
        v287 = &v258[2 * v21];
        v287[4] = v76;
        v287[5] = v285;
        if (v257 == v3)
        {

          goto LABEL_137;
        }
      }

      __break(1u);
      goto LABEL_180;
    }

    v258 = MEMORY[0x1E69E7CC0];
LABEL_137:
    v295 = MEMORY[0x1CCA5D090](v258, MEMORY[0x1E69E6158]);
    v297 = v296;

    v298 = sub_1C6F765A4(v295, v297, &v492);

    v299 = v470;
    *(v470 + 10) = v298;
    *(v299 + 18) = 2080;
    v300 = v499;
    v301 = v499[2];
    if (v301)
    {
      v491 = MEMORY[0x1E69E7CC0];
      sub_1C75504FC();
      sub_1C6F7ED9C(0, v301, 0, v302, v303, v304, v305);
      v21 = 0;
      v3 = v491;
      v480 = v300 + 4;
      v479 = v300;
      v482 = v301;
      while (v21 < v300[2])
      {
        v488 = v3;
        v306 = v480[3 * v21 + 2];
        *&v494 = 0;
        *(&v494 + 1) = 0xE000000000000000;
        v307 = *(v306 + 16);
        if (v307)
        {
          OUTLINED_FUNCTION_81_8(MEMORY[0x1E69E7CC0]);
          v308 = sub_1C75504FC();
          OUTLINED_FUNCTION_59_10(v308, v309, v310, v311, v312, v313, v314);
          v315 = v493;
          OUTLINED_FUNCTION_0_75();
          v483 = v306;
          v317 = v306 + v316;
          v319 = *(v318 + 72);
          do
          {
            v320 = OUTLINED_FUNCTION_295();
            sub_1C71592A8(v320, v321);
            v322 = *(v28 + 13);
            v323 = *(v28 + 14);
            sub_1C75504FC();
            sub_1C715930C(v28);
            v493 = v315;
            v325 = *(v315 + 16);
            v324 = *(v315 + 24);
            if (v325 >= v324 >> 1)
            {
              v327 = OUTLINED_FUNCTION_15(v324);
              sub_1C6F7ED9C(v327, v325 + 1, 1, v328, v329, v330, v331);
              v315 = v493;
            }

            *(v315 + 16) = v325 + 1;
            v326 = v315 + 16 * v325;
            *(v326 + 32) = v322;
            *(v326 + 40) = v323;
            v317 += v319;
            --v307;
          }

          while (v307);
          v11 = 24;
          v300 = v479;
          OUTLINED_FUNCTION_77_7();
        }

        else
        {
          sub_1C75504FC();
          sub_1C75504FC();
          v315 = MEMORY[0x1E69E7CC0];
        }

        MEMORY[0x1CCA5D090](v315, MEMORY[0x1E69E6158]);
        OUTLINED_FUNCTION_67_9();
        v332 = OUTLINED_FUNCTION_64();
        MEMORY[0x1CCA5CD70](v332);

        v76 = *(&v494 + 1);
        v333 = v494;
        v3 = v488;
        v491 = v488;
        v335 = v488[2];
        v334 = v488[3];
        if (v335 >= v334 >> 1)
        {
          OUTLINED_FUNCTION_15(v334);
          OUTLINED_FUNCTION_116_0();
          sub_1C6F7ED9C(v337, v338, v339, v340, v341, v342, v343);
          v3 = v491;
        }

        ++v21;
        *(v3 + 16) = v335 + 1;
        v336 = v3 + 16 * v335;
        *(v336 + 32) = v333;
        *(v336 + 40) = v76;
        if (v21 == v482)
        {

          goto LABEL_152;
        }
      }

LABEL_180:
      __break(1u);
      goto LABEL_181;
    }

    v3 = MEMORY[0x1E69E7CC0];
LABEL_152:
    v344 = MEMORY[0x1CCA5D090](v3, MEMORY[0x1E69E6158]);
    v346 = v345;

    v347 = sub_1C6F765A4(v344, v346, &v492);

    v32 = v470;
    *(v470 + 20) = v347;
    OUTLINED_FUNCTION_143();
    v106 = v469;
    _os_log_impl(&dword_1C6F5C000, v469, v348, "Ranking pass finish, ranking changed %{BOOL}d.\nRanked suggestions  %s\nSkipped suggestions %s", v32, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_23_3();

    OUTLINED_FUNCTION_55_11();
  }

  __break(1u);
LABEL_201:
  swift_endAccess();

  __break(1u);
LABEL_202:
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1C7155978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v69 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155A8, &unk_1C7570210);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v67 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v65 - v17;
  v19 = type metadata accessor for PromptSuggestion(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v65 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v29 = *(a2 + 16);
  if (v29)
  {
    v68 = v27;
    v66 = a5;
    v30 = *(a1 + 16);
    if (a3)
    {
      v67 = &v65 - v28;
      sub_1C710D924(v30);
      v31 = v68;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v68);
      v33 = v69;
      if (EnumTagSinglePayload == 1)
      {
        sub_1C6FD7FC8(v18, &qword_1EC2155A8, &unk_1C7570210);
        return __swift_storeEnumTagSinglePayload(v66, 1, 1, v31);
      }

      else
      {
        v46 = sub_1C7159368(v18, v67);
        v47 = 0;
        v48 = a2 + 48;
        v49 = v29 + 1;
        v50 = MEMORY[0x1E69E7CC0];
LABEL_17:
        v51 = (v48 + 24 * v47);
        while (v49 != ++v47)
        {
          v53 = *v51;
          v51 += 3;
          v52 = v53;
          if (*(v53 + 16))
          {
            v54 = (*(v20 + 80) + 32) & ~*(v20 + 80);
            sub_1C71592A8(v52 + v54, v25);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v65 = v48;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1C6FB3648(0, *(v50 + 16) + 1, 1, v50);
              v50 = v58;
            }

            v57 = *(v50 + 16);
            v56 = *(v50 + 24);
            if (v57 >= v56 >> 1)
            {
              sub_1C6FB3648(v56 > 1, v57 + 1, 1, v50);
              v50 = v59;
            }

            *(v50 + 16) = v57 + 1;
            v46 = sub_1C7159368(v25, v50 + v54 + *(v20 + 72) * v57);
            v33 = v69;
            v48 = v65;
            goto LABEL_17;
          }
        }

        MEMORY[0x1EEE9AC00](v46);
        *(&v65 - 4) = v7;
        v60 = v67;
        *(&v65 - 3) = v67;
        *(&v65 - 2) = a6;
        *(&v65 - 1) = a7;
        v61 = sub_1C714FE5C(sub_1C7159AD4, (&v65 - 6), v50);

        if (v61 && (MEMORY[0x1EEE9AC00](v62), *(&v65 - 2) = v60, !sub_1C7073698(sub_1C7159C28, (&v65 - 4), v33)))
        {
          v64 = v66;
          sub_1C71592A8(v60, v66);
          v63 = 0;
        }

        else
        {
          v63 = 1;
          v64 = v66;
        }

        __swift_storeEnumTagSinglePayload(v64, v63, 1, v68);
        return sub_1C715930C(v67);
      }
    }

    else
    {
      sub_1C75504FC();
      result = sub_1C70CE620(1, v30);
      v38 = v69;
      if (v36 == v37 >> 1)
      {
LABEL_14:
        swift_unknownObjectRelease();
        v44 = 1;
        v45 = v67;
LABEL_15:
        __swift_storeEnumTagSinglePayload(v45, v44, 1, v68);
        return sub_1C7159A64(v45, v66);
      }

      else
      {
        v39 = v35;
        v40 = v36;
        v65 = result;
        v41 = v37 >> 1;
        while (v40 < v41)
        {
          v42 = sub_1C71592A8(v39 + *(v20 + 72) * v40, v22);
          MEMORY[0x1EEE9AC00](v42);
          *(&v65 - 4) = v7;
          *(&v65 - 3) = v22;
          *(&v65 - 2) = a6;
          *(&v65 - 1) = a7;
          v43 = sub_1C714FF30(sub_1C7159A40, (&v65 - 6), a2);
          if (v43)
          {
            MEMORY[0x1EEE9AC00](v43);
            *(&v65 - 2) = v22;
            if (!sub_1C7073698(sub_1C7159C28, (&v65 - 4), v38))
            {
              swift_unknownObjectRelease();
              v45 = v67;
              sub_1C7159368(v22, v67);
              v44 = 0;
              goto LABEL_15;
            }
          }

          ++v40;
          result = sub_1C715930C(v22);
          if (v41 == v40)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
      }
    }
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a5, 1, 1, v27);
  }

  return result;
}

uint64_t sub_1C7155EDC(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t **a4)
{
  v78 = type metadata accessor for PromptSuggestion(0);
  v9 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v74 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v83 = &v68 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155A8, &unk_1C7570210);
  MEMORY[0x1EEE9AC00](v13 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v73 = *a1;
  if (!*(v73 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (!*(*a2 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v17 = *a4;
  if (!(*a4)[2])
  {
    return MEMORY[0x1E69E7CC0];
  }

  v80 = &v68 - v15;
  v76 = v16;
  v72 = a4;
  v18 = *(v4 + OBJC_IVAR____TtC18PhotosIntelligence22PromptSuggestionRanker_promptRankingParameters);
  if (!v18)
  {
    v85 = 0u;
    v86 = 0u;
LABEL_10:
    sub_1C6FD7FC8(&v85, &qword_1EC219770, &unk_1C755C740);
    if (!v18)
    {
      v85 = 0u;
      v86 = 0u;
      v19 = 1.0;
LABEL_16:
      sub_1C6FD7FC8(&v85, &qword_1EC219770, &unk_1C755C740);
      if (!v18)
      {
        v85 = 0u;
        v86 = 0u;
        v21 = 0.35;
LABEL_22:
        sub_1C6FD7FC8(&v85, &qword_1EC219770, &unk_1C755C740);
        if (!v18)
        {
          v85 = 0u;
          v86 = 0u;
          v22 = 0.05;
LABEL_28:
          sub_1C6FD7FC8(&v85, &qword_1EC219770, &unk_1C755C740);
          if (!v18)
          {
            v85 = 0u;
            v86 = 0u;
            v23 = 2;
            goto LABEL_34;
          }

          goto LABEL_29;
        }

        goto LABEL_23;
      }

      goto LABEL_17;
    }

    goto LABEL_11;
  }

  sub_1C755068C();
  sub_1C6FE3750();

  if (!*(&v86 + 1))
  {
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v19 = v84;
    goto LABEL_12;
  }

LABEL_11:
  v19 = 1.0;
LABEL_12:
  sub_1C755068C();
  sub_1C6FE3750();

  if (!*(&v86 + 1))
  {
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    v21 = v84;
    goto LABEL_18;
  }

LABEL_17:
  v21 = 0.35;
LABEL_18:
  sub_1C755068C();
  sub_1C6FE3750();

  if (!*(&v86 + 1))
  {
    goto LABEL_22;
  }

  if (swift_dynamicCast())
  {
    v22 = v84;
    goto LABEL_24;
  }

LABEL_23:
  v22 = 0.05;
LABEL_24:
  sub_1C755068C();
  sub_1C6FE3750();

  if (!*(&v86 + 1))
  {
    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
    v23 = *&v84;
    goto LABEL_30;
  }

LABEL_29:
  v23 = 2;
LABEL_30:
  sub_1C755068C();
  sub_1C6FE3750();

  if (!*(&v86 + 1))
  {
LABEL_34:
    sub_1C6FD7FC8(&v85, &qword_1EC219770, &unk_1C755C740);
    goto LABEL_35;
  }

  if (swift_dynamicCast())
  {
    v24 = v84;
    goto LABEL_36;
  }

LABEL_35:
  v24 = 0.05;
LABEL_36:
  v25 = *a3;
  sub_1C75504FC();
  sub_1C744E98C(v23, v25);
  v27 = v26;
  v29 = v28;
  v71 = v4;
  if ((v28 & 1) == 0)
  {
LABEL_37:
    sub_1C739C9FC();
    v77 = v30;
    v31 = v72;
LABEL_44:
    swift_unknownObjectRelease();
    goto LABEL_45;
  }

  sub_1C7551DEC();
  swift_unknownObjectRetain_n();
  v32 = swift_dynamicCastClass();
  if (!v32)
  {
    swift_unknownObjectRelease();
    v32 = MEMORY[0x1E69E7CC0];
  }

  v33 = *(v32 + 16);

  if (__OFSUB__(v29 >> 1, v27))
  {
    goto LABEL_76;
  }

  if (v33 != (v29 >> 1) - v27)
  {
LABEL_77:
    swift_unknownObjectRelease();
    goto LABEL_37;
  }

  v34 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v31 = v72;
  v77 = v34;
  if (!v34)
  {
    v77 = MEMORY[0x1E69E7CC0];
    goto LABEL_44;
  }

LABEL_45:
  v82 = v17[2];
  if (v82)
  {
    v69 = v9;
    v70 = a2;
    v9 = 0;
    v79 = 0;
    v21 = v21 - v22;
    v19 = v19 - v24;
    v17 = &qword_1EC2155A8;
    v75 = MEMORY[0x1E69E7CC0];
    v81 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v35 = *v31;
      v36 = *(*v31 + 16);
      if (v36)
      {
        *&v85 = 0;
        MEMORY[0x1CCA5F900](&v85, 8);
        v37 = (v85 * v36) >> 64;
        if (v36 > v85 * v36)
        {
          v38 = -v36 % v36;
          if (v38 > v85 * v36)
          {
            do
            {
              *&v85 = 0;
              MEMORY[0x1CCA5F900](&v85, 8);
            }

            while (v38 > v85 * v36);
            v37 = (v85 * v36) >> 64;
          }
        }

        if (v37 >= *(v35 + 16))
        {
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

        v39 = (v35 + 24 * v37);
        v40 = v39[4];
        a2 = v39[5];
        v41 = v39[6];
        *&v85 = v40;
        *(&v85 + 1) = a2;
        *&v86 = v41;
        sub_1C75504FC();
        sub_1C75504FC();
        v42 = v17;
        v43 = v80;
        sub_1C7155978(&v85, v77, 0, MEMORY[0x1E69E7CC0], v80, v21, v19);
        v44 = v76;
        sub_1C70555F8(v43, v76, v42, &unk_1C7570210);
        if (__swift_getEnumTagSinglePayload(v44, 1, v78) == 1)
        {
          sub_1C6FD7FC8(v43, v42, &unk_1C7570210);

          sub_1C6FD7FC8(v44, v42, &unk_1C7570210);
          v17 = v42;
        }

        else
        {
          sub_1C7159368(v44, v83);
          sub_1C75504FC();
          sub_1C75504FC();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C6FB389C(0);
            v81 = isUniquelyReferenced_nonNull_native;
          }

          v17 = v42;
          v47 = *(v81 + 16);
          v46 = *(v81 + 24);
          if (v47 >= v46 >> 1)
          {
            sub_1C6FB389C(v46 > 1);
            v81 = isUniquelyReferenced_nonNull_native;
          }

          v48 = v81;
          *(v81 + 16) = v47 + 1;
          v49 = (v48 + 24 * v47);
          v49[4] = v40;
          v49[5] = a2;
          v49[6] = v41;
          MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
          v50 = v83;
          *(&v68 - 2) = v83;
          v51 = v79;
          v52 = sub_1C714FE5C(sub_1C7159A20, (&v68 - 4), v73);
          v79 = v51;
          if (v52)
          {
            sub_1C71592A8(v50, v74);
            v53 = v75;
            v54 = swift_isUniquelyReferenced_nonNull_native();
            v31 = v72;
            if ((v54 & 1) == 0)
            {
              sub_1C6FB3648(0, *(v53 + 16) + 1, 1, v53);
              v53 = v66;
            }

            v56 = *(v53 + 16);
            v55 = *(v53 + 24);
            v75 = v53;
            if (v56 >= v55 >> 1)
            {
              sub_1C6FB3648(v55 > 1, v56 + 1, 1, v75);
              v75 = v67;
            }

            v57 = v74;
            v58 = v75;
            *(v75 + 16) = v56 + 1;
            v59 = sub_1C7159368(v57, v58 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v56);
            MEMORY[0x1EEE9AC00](v59);
            *(&v68 - 2) = v83;
            v60 = v70;
            v61 = v79;
            sub_1C7158E6C(sub_1C7159C0C, (&v68 - 4));
            v63 = *(*v60 + 16);
            if (v63 < v62)
            {
              goto LABEL_74;
            }

            sub_1C7159584(v62, v63);
            sub_1C75504FC();
            sub_1C75504FC();
            sub_1C7158974(v31, v40, a2);
            v65 = *(*v31 + 16);
            if (v65 < v64)
            {
              goto LABEL_75;
            }

            v79 = v61;
            sub_1C71594A0(v64, v65);

            sub_1C6FD7FC8(v80, v42, &unk_1C7570210);
          }

          else
          {
            sub_1C6FD7FC8(v80, v42, &unk_1C7570210);

            v31 = v72;
          }

          sub_1C715930C(v83);
        }
      }

      if (++v9 == v82)
      {
        goto LABEL_72;
      }
    }
  }

  v75 = MEMORY[0x1E69E7CC0];
  v81 = MEMORY[0x1E69E7CC0];
LABEL_72:

  return v75;
}

void sub_1C71568A4(uint64_t *a1, uint64_t *a2)
{
  v86 = a1;
  v75 = type metadata accessor for PromptSuggestion(0);
  v79 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v84 = &v74 - v6;
  v87 = v2;
  v7 = *(v2 + OBJC_IVAR____TtC18PhotosIntelligence22PromptSuggestionRanker_promptRankingParameters);
  if (v7)
  {
    sub_1C755068C();
    sub_1C6FE3750();

    if (*(&v93 + 1))
    {
      if (swift_dynamicCast())
      {
        v94 = v90;
      }

      else
      {
        v94 = 0.35;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v92 = 0u;
    v93 = 0u;
  }

  sub_1C6FD7FC8(&v92, &qword_1EC219770, &unk_1C755C740);
  v94 = 0.35;
  if (!v7)
  {
    v92 = 0u;
    v93 = 0u;
    goto LABEL_12;
  }

LABEL_9:
  sub_1C755068C();
  sub_1C6FE3750();

  if (!*(&v93 + 1))
  {
LABEL_12:
    sub_1C6FD7FC8(&v92, &qword_1EC219770, &unk_1C755C740);
    if (!v7)
    {
      v92 = 0u;
      v93 = 0u;
      v8 = 0.25;
LABEL_18:
      sub_1C6FD7FC8(&v92, &qword_1EC219770, &unk_1C755C740);
      if (!v7)
      {
        v92 = 0u;
        v93 = 0u;
        v9 = 2;
LABEL_24:
        sub_1C6FD7FC8(&v92, &qword_1EC219770, &unk_1C755C740);
        if (!v7)
        {
          v92 = 0u;
          v93 = 0u;
          v10 = 0.05;
          goto LABEL_31;
        }

        goto LABEL_25;
      }

      goto LABEL_19;
    }

    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    v8 = v90;
    goto LABEL_14;
  }

LABEL_13:
  v8 = 0.25;
LABEL_14:
  sub_1C755068C();
  sub_1C6FE3750();

  if (!*(&v93 + 1))
  {
    goto LABEL_18;
  }

  if (swift_dynamicCast())
  {
    v9 = *&v90;
    goto LABEL_20;
  }

LABEL_19:
  v9 = 2;
LABEL_20:
  sub_1C755068C();
  sub_1C6FE3750();

  if (!*(&v93 + 1))
  {
    goto LABEL_24;
  }

  if (swift_dynamicCast())
  {
    v10 = v90;
    goto LABEL_26;
  }

LABEL_25:
  v10 = 0.05;
LABEL_26:
  sub_1C755068C();
  sub_1C6FE3750();

  if (*(&v93 + 1))
  {
    if (swift_dynamicCast())
    {
      v91 = v90;
    }

    else
    {
      v91 = 1.0;
    }

    goto LABEL_32;
  }

LABEL_31:
  sub_1C6FD7FC8(&v92, &qword_1EC219770, &unk_1C755C740);
  v91 = 1.0;
  if (!v7)
  {
    v92 = 0u;
    v93 = 0u;
LABEL_36:
    sub_1C6FD7FC8(&v92, &qword_1EC219770, &unk_1C755C740);
    if (!v7)
    {
      v92 = 0u;
      v93 = 0u;
      v11 = 0.8;
      goto LABEL_42;
    }

    goto LABEL_37;
  }

LABEL_32:
  sub_1C755068C();
  sub_1C6FE3750();

  if (!*(&v93 + 1))
  {
    goto LABEL_36;
  }

  if (swift_dynamicCast())
  {
    v11 = v90;
    goto LABEL_38;
  }

LABEL_37:
  v11 = 0.8;
LABEL_38:
  sub_1C755068C();
  sub_1C6FE3750();

  if (!*(&v93 + 1))
  {
LABEL_42:
    sub_1C6FD7FC8(&v92, &qword_1EC219770, &unk_1C755C740);
    goto LABEL_43;
  }

  if (swift_dynamicCast())
  {
    v12 = v90;
    goto LABEL_44;
  }

LABEL_43:
  v12 = 0.05;
LABEL_44:
  v83 = OBJC_IVAR____TtC18PhotosIntelligence22PromptSuggestionRanker_logger;
  swift_beginAccess();
  swift_beginAccess();
  v13 = 0;
  v85 = 0;
  *&v14 = 136315394;
  v80 = v14;
  v82 = xmmword_1C755BAB0;
  v77 = MEMORY[0x1E69E7CC0];
  v81 = a2;
LABEL_45:
  v15 = *v86;
  v16 = *a2;
  if (*(*v86 + 16) >= *(*a2 + 16))
  {
    return;
  }

  v17 = v94;
  if (v8 > v94)
  {
    return;
  }

  v18 = v91;
  if (v11 >= v91)
  {
    return;
  }

  v19 = sub_1C754FEEC();
  v20 = sub_1C75511BC();
  v21 = os_log_type_enabled(v19, v20);
  v88 = v13;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v89 = v23;
    *v22 = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
    v24 = swift_allocObject();
    *(v24 + 16) = v82;
    *(v24 + 56) = MEMORY[0x1E69E63B0];
    *(v24 + 64) = MEMORY[0x1E69E6438];
    *(v24 + 32) = v17;
    v25 = sub_1C75506BC();
    v27 = sub_1C6F765A4(v25, v26, &v89);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    v28 = swift_allocObject();
    *(v28 + 16) = v82;
    *(v28 + 56) = MEMORY[0x1E69E63B0];
    *(v28 + 64) = MEMORY[0x1E69E6438];
    *(v28 + 32) = v18;
    v29 = sub_1C75506BC();
    v31 = sub_1C6F765A4(v29, v30, &v89);

    *(v22 + 14) = v31;
    _os_log_impl(&dword_1C6F5C000, v19, v20, "Checking remaining prompts from all suggestions with metadataDistanceThreshold %s and embeddingDistanceThreshold %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v23, -1, -1);
    v32 = v22;
    a2 = v81;
    MEMORY[0x1CCA5F8E0](v32, -1, -1);
  }

  v33 = 0;
  v34 = *(v16 + 16);
  while (2)
  {
    for (i = v33; ; ++i)
    {
      if (v34 == i)
      {
LABEL_88:
        if (v88)
        {
          v91 = v91 - v12;
        }

        else
        {
          v94 = v94 - v10;
        }

        v13 = v88 ^ 1;
        goto LABEL_45;
      }

      if (i >= v34)
      {
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v33 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_94;
      }

      v36 = *a2;
      if (!*(*a2 + 16))
      {
        goto LABEL_88;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_95;
      }

      v37 = *(v15 + 16);
      v38 = v37 >= v9 ? v37 - v9 : 0;
      if (v37 > v9)
      {
        v40 = MEMORY[0x1E69E7CC0];
        v39 = v37 - v38;
        if (v37 != v38)
        {
          if (v39 >= 1)
          {
            v42 = v37 - v38;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217280, &unk_1C75697C0);
            v43 = *(v79 + 72);
            v44 = (*(v79 + 80) + 32) & ~*(v79 + 80);
            v78 = v42;
            v40 = swift_allocObject();
            v45 = _swift_stdlib_malloc_size(v40);
            if (!v43)
            {
              goto LABEL_98;
            }

            if (v45 - v44 == 0x8000000000000000 && v43 == -1)
            {
              goto LABEL_99;
            }

            v40[2] = v78;
            v40[3] = 2 * ((v45 - v44) / v43);
            a2 = v81;
          }

          swift_arrayInitWithCopy();
        }
      }

      else
      {
        sub_1C75504FC();
        v40 = v15;
      }

      v41 = *(v36 + 16);
      if (v41)
      {
        break;
      }
    }

    v89 = 0;
    MEMORY[0x1CCA5F900](&v89, 8, v39);
    v47 = (v89 * v41) >> 64;
    if (v41 > v89 * v41)
    {
      v48 = -v41 % v41;
      if (v48 > v89 * v41)
      {
        do
        {
          v89 = 0;
          MEMORY[0x1CCA5F900](&v89, 8);
        }

        while (v48 > v89 * v41);
        v47 = (v89 * v41) >> 64;
      }
    }

    if (v47 >= *(v36 + 16))
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v78 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v49 = *(v79 + 72);
    v50 = v84;
    v51 = sub_1C71592A8(v36 + v78 + v49 * v47, v84);
    MEMORY[0x1EEE9AC00](v51);
    *(&v74 - 4) = v87;
    *(&v74 - 3) = v50;
    *(&v74 - 2) = &v94;
    *(&v74 - 1) = &v91;
    v52 = v85;
    v53 = sub_1C714FE5C(sub_1C7159B84, (&v74 - 6), v40);

    if (!v53)
    {
      v85 = v52;
      a2 = v81;
      goto LABEL_87;
    }

    MEMORY[0x1EEE9AC00](v54);
    *(&v74 - 2) = v50;
    v55 = sub_1C7073698(sub_1C7159C28, (&v74 - 4), v15);
    v85 = v52;
    a2 = v81;
    if (v55)
    {
LABEL_87:
      sub_1C715930C(v84);
      continue;
    }

    break;
  }

  sub_1C71592A8(v50, v76);
  v56 = v77;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C6FB3648(0, *(v56 + 16) + 1, 1, v56);
    v56 = v72;
  }

  v58 = *(v56 + 16);
  v57 = *(v56 + 24);
  if (v58 >= v57 >> 1)
  {
    sub_1C6FB3648(v57 > 1, v58 + 1, 1, v56);
    v56 = v73;
  }

  *(v56 + 16) = v58 + 1;
  v77 = v56;
  v59 = v78;
  sub_1C7159368(v76, v56 + v78 + v58 * v49);
  v60 = v86;
  sub_1C6FB0C9C();
  v61 = *(*v60 + 16);
  sub_1C6FB14D8(v61, v62, v63, v64, v65, v66);
  v15 = *v60;
  *(v15 + 16) = v61 + 1;
  v67 = v84;
  v68 = sub_1C71592A8(v84, v15 + v59 + v61 * v49);
  *v60 = v15;
  MEMORY[0x1EEE9AC00](v68);
  *(&v74 - 2) = v67;
  v69 = v85;
  sub_1C7158E6C(sub_1C7159C0C, (&v74 - 4));
  v71 = *(*a2 + 16);
  if (v71 >= v70)
  {
    v85 = v69;
    sub_1C7159584(v70, v71);
    goto LABEL_87;
  }

LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
}

uint64_t sub_1C7157460(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC() ^ 1;
  }

  return v3 & 1;
}

BOOL sub_1C71574BC(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, double *a5)
{
  swift_beginAccess();
  v9 = *a4;
  swift_beginAccess();
  return sub_1C715755C(a3, a1, v9, *a5);
}

BOOL sub_1C715755C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = type metadata accessor for PromptSuggestion(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  v14 = sub_1C7157A5C(a1, a2);
  v15 = sub_1C715215C(a1, a2);
  v16 = v15 > a4 && v14 > a3;
  sub_1C71592A8(a1, v13);
  sub_1C71592A8(a2, v10);
  v17 = sub_1C754FEEC();
  v18 = sub_1C75511BC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = v42;
    *v19 = 136316418;
    v20 = *(v13 + 13);
    v21 = *(v13 + 14);
    sub_1C75504FC();
    sub_1C715930C(v13);
    v22 = sub_1C6F765A4(v20, v21, &v43);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    v23 = *(v10 + 13);
    v24 = *(v10 + 14);
    sub_1C75504FC();
    sub_1C715930C(v10);
    v25 = sub_1C6F765A4(v23, v24, &v43);

    *(v19 + 14) = v25;
    *(v19 + 22) = 2080;
    if (v16)
    {
      v26 = 1702195828;
    }

    else
    {
      v26 = 0x65736C6166;
    }

    if (v16)
    {
      v27 = 0xE400000000000000;
    }

    else
    {
      v27 = 0xE500000000000000;
    }

    v28 = sub_1C6F765A4(v26, v27, &v43);

    *(v19 + 24) = v28;
    *(v19 + 32) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
    v29 = swift_allocObject();
    v41 = xmmword_1C755BAB0;
    v30 = MEMORY[0x1E69E63B0];
    *(v29 + 16) = xmmword_1C755BAB0;
    v31 = MEMORY[0x1E69E6438];
    *(v29 + 56) = v30;
    *(v29 + 64) = v31;
    *(v29 + 32) = v14;
    v32 = sub_1C75506BC();
    v34 = sub_1C6F765A4(v32, v33, &v43);

    *(v19 + 34) = v34;
    *(v19 + 42) = 2080;
    v35 = swift_allocObject();
    *(v35 + 16) = v41;
    *(v35 + 56) = v30;
    *(v35 + 64) = v31;
    *(v35 + 32) = v15;
    v36 = sub_1C75506BC();
    v38 = sub_1C6F765A4(v36, v37, &v43);

    *(v19 + 44) = v38;
    *(v19 + 52) = 2080;
    *(v19 + 54) = sub_1C6F765A4(0x65736C6166, 0xE500000000000000, &v43);
    _os_log_impl(&dword_1C6F5C000, v17, v18, "[Prompt eligibility check] candidate:'%s' selectedPrompt:'%s', isEligibleForNextPrompt:%s metadataDistance: %s, embeddingDistance:%s, sharesTheSamePersonOrPlace:%s", v19, 0x3Eu);
    v39 = v42;
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v39, -1, -1);
    MEMORY[0x1CCA5F8E0](v19, -1, -1);
  }

  else
  {

    sub_1C715930C(v10);
    sub_1C715930C(v13);
  }

  return v16;
}

uint64_t sub_1C71578F0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C7551DBC() & 1;
  }
}

BOOL sub_1C7157948(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for PromptSuggestion(0) - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (*(v13 + 16))
  {
    sub_1C71592A8(v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = sub_1C715755C(v12, a5, a2, a3);
    sub_1C715930C(v12);
  }

  else
  {
    return 1;
  }

  return v14;
}

double sub_1C7157A5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for PromptSuggestion(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v105 = v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v104 = v101 - v9;
  if (*(a1 + 72) == *(a2 + 72))
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 1.0;
  }

  v116 = MEMORY[0x1E69E7CC8];
  v110[2] = &v116;
  v110[3] = a1;
  v102 = a1;
  v103 = a2;
  v110[4] = a2;
  sub_1C7150520(sub_1C7159B10, v110, &unk_1F46A8070);
  v109 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217FA8, &unk_1C7570270);
  inited = swift_initStackObject();
  v108 = xmmword_1C755BA90;
  *(inited + 16) = xmmword_1C755BA90;
  *(inited + 32) = 1;
  *(inited + 40) = sub_1C755068C();
  *(inited + 48) = v12;
  *(inited + 56) = 2;
  *(inited + 64) = sub_1C755068C();
  *(inited + 72) = v13;
  *(inited + 80) = 4;
  *(inited + 88) = sub_1C755068C();
  *(inited + 96) = v14;
  *(inited + 104) = 8;
  *(inited + 112) = sub_1C755068C();
  *(inited + 120) = v15;
  *(inited + 128) = 256;
  *(inited + 136) = sub_1C755068C();
  *(inited + 144) = v16;
  sub_1C7159B30();
  v17 = sub_1C75504DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C98, &unk_1C7571030);
  v18 = swift_initStackObject();
  *(v18 + 16) = v108;
  *(v18 + 32) = sub_1C755068C();
  *(v18 + 40) = v19;
  *(v18 + 48) = 0x3FC3333333333333;
  *(v18 + 56) = sub_1C755068C();
  *(v18 + 64) = v20;
  *(v18 + 72) = 0x3FC3333333333333;
  *(v18 + 80) = sub_1C755068C();
  *(v18 + 88) = v21;
  *(v18 + 96) = 0x3FB999999999999ALL;
  *(v18 + 104) = sub_1C755068C();
  *(v18 + 112) = v22;
  *(v18 + 120) = 0x3FB999999999999ALL;
  *(v18 + 128) = sub_1C755068C();
  *(v18 + 136) = v23;
  *(v18 + 144) = 0x3FD3333333333333;
  v24 = sub_1C75504DC();
  v115[0] = MEMORY[0x1E69E7CC8];

  v25 = v109;
  sub_1C71501D4(&unk_1F46A8070, v17, v115, v3, v24);
  v101[1] = v25;
  if (!*(v3 + OBJC_IVAR____TtC18PhotosIntelligence22PromptSuggestionRanker_promptRankingParameters))
  {
    v113 = 0u;
    v114 = 0u;
    goto LABEL_9;
  }

  sub_1C755068C();
  sub_1C6FE3750();

  if (!*(&v114 + 1))
  {
LABEL_9:
    sub_1C6FD7FC8(&v113, &qword_1EC219770, &unk_1C755C740);
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
LABEL_10:
    v26 = 0.3;
    goto LABEL_11;
  }

  v26 = v112;
LABEL_11:
  v112 = MEMORY[0x1E69E7CC0];
  sub_1C716DA70(0, 5, 0);
  v27 = 0;
  v28 = *&v112;
  *&v108 = OBJC_IVAR____TtC18PhotosIntelligence22PromptSuggestionRanker_logger;
  *&v29 = 136315394;
  v106 = v29;
  v107 = v3;
  do
  {
    swift_beginAccess();
    v30 = v115[0];
    if (*(v115[0] + 16) && (v31 = sub_1C6FC2FFC(), (v32 & 1) != 0) && (v33 = *(*(v30 + 56) + 8 * v31), swift_endAccess(), swift_beginAccess(), v34 = v116, *(v116 + 16)) && (v35 = sub_1C6FC2FFC(), (v36 & 1) != 0))
    {
      v37 = *(*(v34 + 56) + 8 * v35);
      swift_endAccess();
      v38 = v33 * v37;
    }

    else
    {
      swift_endAccess();
      v39 = sub_1C754FEEC();
      v40 = sub_1C755119C();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v111 = v42;
        *v41 = v106;
        v43 = *(v30 + 16);
        v109 = v30;
        if (v43 && (sub_1C6FC2FFC(), (v44 & 1) != 0))
        {
          v45 = sub_1C7550F3C();
          v47 = v46;
        }

        else
        {
          v47 = 0xE300000000000000;
          v45 = 7104878;
        }

        v48 = sub_1C6F765A4(v45, v47, &v111);

        *(v41 + 4) = v48;
        *(v41 + 12) = 2080;
        swift_beginAccess();
        if (*(v116 + 16) && (sub_1C6FC2FFC(), (v49 & 1) != 0))
        {
          swift_endAccess();
          v50 = sub_1C7550F3C();
          v52 = v51;
        }

        else
        {
          swift_endAccess();
          v52 = 0xE300000000000000;
          v50 = 7104878;
        }

        v53 = sub_1C6F765A4(v50, v52, &v111);

        *(v41 + 14) = v53;
        _os_log_impl(&dword_1C6F5C000, v39, v40, "Couldn't calculate weighted distance, weight: %s, distance: %s", v41, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v42, -1, -1);
        MEMORY[0x1CCA5F8E0](v41, -1, -1);

        v38 = 0.0;
        v30 = v109;
      }

      else
      {

        v38 = 0.0;
      }
    }

    v112 = *&v28;
    v55 = *(v28 + 16);
    v54 = *(v28 + 24);
    if (v55 >= v54 >> 1)
    {
      sub_1C716DA70(v54 > 1, v55 + 1, 1);
      v28 = *&v112;
    }

    *(v28 + 16) = v55 + 1;
    *(v28 + 8 * v55 + 32) = v38;
    v27 += 8;
  }

  while (v27 != 40);
  v109 = v30;
  v56 = v55 + 1;
  v57 = 0.0;
  v58 = 32;
  do
  {
    v57 = v57 + *(v28 + v58);
    v58 += 8;
    --v56;
  }

  while (v56);

  v59 = sub_1C714FA8C(&unk_1F46A8070, v115);
  v60 = *(v59 + 16);
  v62 = v104;
  v61 = v105;
  if (v60)
  {
    v63 = (v59 + 32);
    v64 = 0.0;
    do
    {
      v65 = *v63++;
      v64 = v64 + v65;
      --v60;
    }

    while (v60);
  }

  else
  {
    v64 = 0.0;
  }

  v66 = v10 * v26 + v57;

  sub_1C71592A8(v102, v62);
  sub_1C71592A8(v103, v61);
  v67 = sub_1C754FEEC();
  v68 = sub_1C75511BC();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    LODWORD(v106) = v68;
    v70 = v69;
    v107 = swift_slowAlloc();
    v112 = *&v107;
    *v70 = 136381955;
    v71 = *(v62 + 104);
    v72 = *(v62 + 112);
    sub_1C75504FC();
    sub_1C715930C(v62);
    v73 = sub_1C6F765A4(v71, v72, &v112);

    *(v70 + 4) = v73;
    *(v70 + 12) = 2081;
    v74 = *(v61 + 104);
    v75 = *(v61 + 112);
    sub_1C75504FC();
    sub_1C715930C(v61);
    v76 = sub_1C6F765A4(v74, v75, &v112);

    *(v70 + 14) = v76;
    *(v70 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
    v77 = swift_allocObject();
    v108 = xmmword_1C755BAB0;
    *(v77 + 16) = xmmword_1C755BAB0;
    v78 = MEMORY[0x1E69E6438];
    v79 = MEMORY[0x1E69E63B0];
    *(v77 + 56) = MEMORY[0x1E69E63B0];
    *(v77 + 64) = v78;
    v80 = v78;
    *(v77 + 32) = v66;
    v81 = sub_1C75506BC();
    v83 = sub_1C6F765A4(v81, v82, &v112);

    *(v70 + 24) = v83;
    *(v70 + 32) = 2080;
    v84 = swift_allocObject();
    *(v84 + 16) = v108;
    *(v84 + 56) = v79;
    *(v84 + 64) = v80;
    *(v84 + 32) = v10;
    v85 = sub_1C75506BC();
    v87 = sub_1C6F765A4(v85, v86, &v112);

    *(v70 + 34) = v87;
    *(v70 + 42) = 2080;
    swift_beginAccess();
    v88 = sub_1C75504FC();
    v89 = sub_1C714FBA4(v88);

    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215708, &qword_1C7570280);
    v91 = MEMORY[0x1CCA5D090](v89, v90);
    v93 = v92;

    v94 = sub_1C6F765A4(v91, v93, &v112);

    *(v70 + 44) = v94;
    *(v70 + 52) = 2080;
    v95 = swift_allocObject();
    *(v95 + 16) = v108;
    *(v95 + 56) = MEMORY[0x1E69E63B0];
    *(v95 + 64) = MEMORY[0x1E69E6438];
    *(v95 + 32) = v26 + v64;
    v96 = sub_1C75506BC();
    v98 = sub_1C6F765A4(v96, v97, &v112);

    *(v70 + 54) = v98;
    _os_log_impl(&dword_1C6F5C000, v67, v106, "[Metadata distance]'%{private}s' VS '%{private}s' =%s, action distance: %s, other category distance: %s, weightSum:%s.", v70, 0x3Eu);
    v99 = v107;
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v99, -1, -1);
    MEMORY[0x1CCA5F8E0](v70, -1, -1);
  }

  else
  {

    sub_1C715930C(v61);
    sub_1C715930C(v62);
  }

  return v66;
}

uint64_t sub_1C71584B4(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (((*a1 & ~*(a3 + 80)) == 0) != ((*a1 & ~*(a4 + 80)) != 0))
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  swift_isUniquelyReferenced_nonNull_native();
  v7 = *a2;
  result = sub_1C6FC908C(v5);
  *a2 = v7;
  return result;
}

void static PromptSuggestionRanker.getDistance(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 && v2 == *(a2 + 16))
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    do
    {
      v8 = *v3++;
      v9 = v8;
      v10 = *v4++;
      v7 = v7 + v9 * v9;
      v6 = v6 + v10 * v10;
      v5 = v5 + v9 * v10;
      --v2;
    }

    while (v2);
    v11 = v7 * v6;
    if (v11 > 0.0)
    {
      sqrt(v11);
    }
  }
}

uint64_t PromptSuggestionRanker.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence22PromptSuggestionRanker_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t PromptSuggestionRanker.__deallocating_deinit()
{
  PromptSuggestionRanker.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C71586B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = (a1 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a2 && *v7 == a3;
    if (v8 || (sub_1C7551DBC() & 1) != 0)
    {
      v9 = v5;
      goto LABEL_11;
    }

    ++v5;
    v7 += 3;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

uint64_t sub_1C715876C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = a2 + 8;
LABEL_2:
  if (v4 == v5)
  {

    return 0;
  }

  else
  {
    v7 = *(type metadata accessor for PromptSuggestion(0) - 8);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v9 = *(v7 + 72);
    v10 = (a1 + v8 + v9 * v4);
    v11 = (v6 + v8);
    v12 = *(a2 + 16) + 1;
    do
    {
      if (!--v12)
      {
        ++v4;
        goto LABEL_2;
      }

      if (*(v11 - 1) == *v10 && *v11 == v10[1])
      {
        break;
      }

      v11 = (v11 + v9);
    }

    while ((sub_1C7551DBC() & 1) == 0);

    return v4;
  }
}

uint64_t sub_1C7158890(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(type metadata accessor for PromptSuggestion(0) - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

void sub_1C7158974(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  sub_1C75504FC();
  sub_1C75504FC();
  v8 = sub_1C71586B4(v7, a2, a3);
  v10 = v8;
  if (v3 || (v9 & 1) != 0)
  {
LABEL_21:

    return;
  }

  v11 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    v12 = 24 * v8;
    v23 = a1;
    while (1)
    {
      v13 = *(v7 + 16);
      if (v11 == v13)
      {
        goto LABEL_21;
      }

      if (v11 >= v13)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        break;
      }

      v14 = v7 + v12;
      v15 = *(v7 + v12 + 56) == a2 && *(v7 + v12 + 64) == a3;
      if (!v15 && (sub_1C7551DBC() & 1) == 0)
      {
        if (v11 != v10)
        {
          if (v10 >= v13)
          {
            goto LABEL_23;
          }

          v16 = (v7 + 32 + 24 * v10);
          v24 = v16[1];
          v25 = *v16;
          v17 = v16[2];
          v18 = *(v14 + 64);
          v26 = *(v14 + 56);
          v19 = *(v7 + v12 + 72);
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C70E42D8();
            v7 = v22;
          }

          if (v10 >= *(v7 + 16))
          {
            goto LABEL_24;
          }

          v20 = (v7 + 24 * v10);
          v20[4] = v26;
          v20[5] = v18;
          v20[6] = v19;

          if (v11 >= *(v7 + 16))
          {
            goto LABEL_25;
          }

          v21 = (v7 + v12);
          v21[7] = v25;
          v21[8] = v24;
          v21[9] = v17;

          *v23 = v7;
        }

        ++v10;
      }

      ++v11;
      v12 += 24;
    }
  }

  __break(1u);
}

void sub_1C7158B74(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for PromptSuggestion(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v37 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v37 - v13);
  v15 = *a1;
  sub_1C75504FC();
  v16 = sub_1C715876C(v15, a2);
  if (v2)
  {
    goto LABEL_2;
  }

  v40 = v8;
  if (v17)
  {
    goto LABEL_2;
  }

  v37[1] = 0;
  v38 = a1;
  v18 = v16 + 1;
  if (!__OFADD__(v16, 1))
  {
    v19 = v16;
    v20 = v15;
    v42 = a2;
    v43 = a2 + 8;
    v41 = v6;
    v39 = v11;
    while (2)
    {
      v21 = *(v20 + 16);
      if (v18 != v21)
      {
        if (v18 >= v21)
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
        }

        else
        {
          v22 = v19;
          v23 = (*(v6 + 80) + 32) & ~*(v6 + 80);
          v44 = v20;
          v24 = v20 + v23;
          v25 = *(v6 + 72);
          v26 = v25 * v18;
          sub_1C71592A8(v24 + v25 * v18, v14);
          v27 = *(a2 + 16);
          v28 = (v43 + v23);
          v29 = v27 + 1;
          while (--v29)
          {
            if (*(v28 - 1) != *v14 || *v28 != v14[1])
            {
              v28 = (v28 + v25);
              if ((sub_1C7551DBC() & 1) == 0)
              {
                continue;
              }
            }

            sub_1C715930C(v14);
            v6 = v41;
            a2 = v42;
            v19 = v22;
            v20 = v44;
            goto LABEL_26;
          }

          sub_1C715930C(v14);
          v31 = v22;
          if (v22 == v18)
          {
            a2 = v42;
            v20 = v44;
            goto LABEL_25;
          }

          v32 = v39;
          if ((v31 & 0x8000000000000000) != 0)
          {
            goto LABEL_33;
          }

          v33 = *(v44 + 16);
          if (v31 >= v33)
          {
            goto LABEL_34;
          }

          v34 = v25 * v31;
          sub_1C71592A8(v24 + v34, v39);
          if (v18 >= v33)
          {
            goto LABEL_35;
          }

          sub_1C71592A8(v24 + v26, v40);
          v20 = v44;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C70E42C0();
            v20 = v36;
          }

          sub_1C7159BA8(v40, v20 + v23 + v34);
          if (v18 < *(v20 + 16))
          {
            sub_1C7159BA8(v32, v20 + v23 + v26);
            *v38 = v20;
            a2 = v42;
LABEL_25:
            v35 = __OFADD__(v31, 1);
            v19 = v31 + 1;
            v6 = v41;
            if (v35)
            {
              goto LABEL_32;
            }

LABEL_26:
            v35 = __OFADD__(v18++, 1);
            if (v35)
            {
              goto LABEL_31;
            }

            continue;
          }
        }

        __break(1u);
        goto LABEL_37;
      }

      break;
    }

LABEL_2:

    return;
  }

LABEL_37:
  __break(1u);
}

void sub_1C7158E6C(uint64_t (*a1)(unint64_t), uint64_t a2)
{
  v6 = type metadata accessor for PromptSuggestion(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  v16 = *v2;
  v17 = sub_1C7158890(a1, a2, *v2);
  if (!v3)
  {
    v41 = a2;
    v43 = v15;
    v37 = v9;
    v38 = v12;
    if ((v18 & 1) == 0)
    {
      v19 = v17;
      v44 = 0;
      v36 = v2;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
LABEL_26:
        __break(1u);
      }

      else
      {
        v21 = v16;
        v22 = v43;
        v39 = v7;
        v40 = a1;
        while (1)
        {
          v23 = *(v21 + 16);
          if (v20 == v23)
          {
            break;
          }

          if (v20 >= v23)
          {
            __break(1u);
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          v24 = v21;
          v42 = (*(v7 + 80) + 32) & ~*(v7 + 80);
          v25 = v21 + v42;
          v26 = *(v7 + 72);
          v45 = v20;
          v27 = v26 * v20;
          sub_1C71592A8(v25 + v26 * v20, v22);
          v28 = v44;
          v29 = a1(v22);
          sub_1C715930C(v22);
          v44 = v28;
          if (v28)
          {
            return;
          }

          if (v29)
          {
            v7 = v39;
            a1 = v40;
            v22 = v43;
            v21 = v24;
            v30 = v45;
          }

          else
          {
            v30 = v45;
            v22 = v43;
            if (v45 == v19)
            {
              a1 = v40;
              v21 = v24;
            }

            else
            {
              v31 = *(v24 + 16);
              if (v19 >= v31)
              {
                goto LABEL_23;
              }

              v32 = v26 * v19;
              sub_1C71592A8(v25 + v32, v38);
              if (v45 >= v31)
              {
                goto LABEL_24;
              }

              sub_1C71592A8(v25 + v27, v37);
              v21 = v24;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1C70E42C0();
                v21 = v34;
              }

              a1 = v40;
              v33 = v21 + v42;
              sub_1C7159BA8(v37, v21 + v42 + v32);
              if (v45 >= *(v21 + 16))
              {
                goto LABEL_25;
              }

              sub_1C7159BA8(v38, v33 + v27);
              v30 = v45;
              *v36 = v21;
              v22 = v43;
            }

            ++v19;
            v7 = v39;
          }

          v20 = v30 + 1;
        }
      }
    }
  }
}

Swift::UInt64 sub_1C7159150(Swift::UInt64 result)
{
  if (result)
  {
    v1 = result;
    v2 = Random.Arc4Random.next()();
    v3 = v2 * v1;
    result = (v2 * v1) >> 64;
    if (v3 < v1)
    {
      v4 = -v1 % v1;
      if (v4 > v3)
      {
        do
        {
          sub_1C73B442C();
          v6 = v5;
          sub_1C73B442C();
          v8 = v7;
          sub_1C73B442C();
          v10 = v9;
          sub_1C73B442C();
          v12 = v11;
          sub_1C73B442C();
          v14 = v13;
          sub_1C73B442C();
          v16 = v15;
          sub_1C73B442C();
          v18 = v17;
          sub_1C73B442C();
          v20 = v19 | (((v16 << 8) | (((((v6 << 16) | (v8 << 8) | v10) << 16) | (v12 << 8) | v14) << 16) | v18) << 8);
        }

        while (v4 > v20 * v1);
        return (v20 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C715923C(void *a1)
{
  v1 = [a1 promptRankingParameters];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C75504AC();

  return v3;
}

uint64_t sub_1C71592A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptSuggestion(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C715930C(uint64_t a1)
{
  v2 = type metadata accessor for PromptSuggestion(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C7159368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptSuggestion(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C71593CC(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_30_19();
  if (v5 != v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3;
  v8 = v1 - v3;
  if (__OFSUB__(v1, v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v3 - v1;
  if (__OFSUB__(0, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v9))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1C6FDCCB8(v4 - v8, 1);
  v10 = *v2;
  v11 = *v2 + 32;
  v12 = (v11 + 80 * v7);
  OUTLINED_FUNCTION_64();
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_10:
    *v2 = v10;
    return;
  }

  v13 = *(v10 + 16);
  if (__OFSUB__(v13, v1))
  {
    goto LABEL_16;
  }

  sub_1C741E45C((v11 + 80 * v1), v13 - v1, v12);
  v14 = *(v10 + 16);
  v6 = __OFADD__(v14, v9);
  v15 = v14 - v8;
  if (!v6)
  {
    *(v10 + 16) = v15;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1C71594A0(uint64_t result, uint64_t a2)
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

  sub_1C6FDCE68(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 24 * v5);
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

  result = sub_1C7423D18((v9 + 24 * a2), v11 - a2, v10);
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

void sub_1C7159584(uint64_t result, uint64_t a2)
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

  sub_1C6FDCE80(v4 - v6, 1);
  v8 = *v2;
  v9 = *(type metadata accessor for PromptSuggestion(0) - 8);
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

  sub_1C741E1A8(v10 + v11 * a2, v13 - a2, v12);
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

void sub_1C71596B4(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_30_19();
  if (v5 != v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3;
  v8 = v1 - v3;
  if (__OFSUB__(v1, v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v3 - v1;
  if (__OFSUB__(0, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v9))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1C6FDCEB0(v4 - v8, 1);
  v10 = *v2;
  v11 = *v2 + 32;
  v12 = (v11 + 144 * v7);
  OUTLINED_FUNCTION_64();
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_10:
    *v2 = v10;
    return;
  }

  v13 = *(v10 + 16);
  if (__OFSUB__(v13, v1))
  {
    goto LABEL_16;
  }

  sub_1C741E4D4((v11 + 144 * v1), v13 - v1, v12);
  v14 = *(v10 + 16);
  v6 = __OFADD__(v14, v9);
  v15 = v14 - v8;
  if (!v6)
  {
    *(v10 + 16) = v15;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_1C7159788(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_30_19();
  if (v5 != v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3;
  v8 = v1 - v3;
  if (__OFSUB__(v1, v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v3 - v1;
  if (__OFSUB__(0, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v9))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1C6FDCCA0(v4 - v8, 1);
  v10 = *v2;
  v11 = *v2 + 32;
  v12 = (v11 + 16 * v7);
  OUTLINED_FUNCTION_64();
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_10:
    *v2 = v10;
    return;
  }

  v13 = *(v10 + 16);
  if (__OFSUB__(v13, v1))
  {
    goto LABEL_16;
  }

  sub_1C6F9EE08((v11 + 16 * v1), v13 - v1, v12);
  v14 = *(v10 + 16);
  v6 = __OFADD__(v14, v9);
  v15 = v14 - v8;
  if (!v6)
  {
    *(v10 + 16) = v15;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t type metadata accessor for PromptSuggestionRanker(uint64_t a1)
{
  result = qword_1EDD0E1D8;
  if (!qword_1EDD0E1D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C715993C(uint64_t a1)
{
  result = sub_1C754FF1C();
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

uint64_t sub_1C7159A64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155A8, &unk_1C7570210);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C7159B30()
{
  result = qword_1EC217FB0;
  if (!qword_1EC217FB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestion.ContentType, &type metadata for PromptSuggestion.ContentType, v0, v1);
    atomic_store(result, &qword_1EC217FB0);
  }

  return result;
}

uint64_t sub_1C7159BA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptSuggestion(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_24_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_1C6F7ED9C(0, v7, 0, a4, a5, a6, a7);
}

double OUTLINED_FUNCTION_35_11(uint64_t a1)
{

  swift_beginAccess();
  return result;
}

uint64_t OUTLINED_FUNCTION_40_16()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_54_14(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v3;
  *(result + 12) = 2048;
  *(result + 14) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_60_9@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2;

  return sub_1C75506BC();
}

uint64_t OUTLINED_FUNCTION_62_10()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_66_13()
{
}

double OUTLINED_FUNCTION_68_12()
{

  swift_unknownObjectRelease();
  return result;
}

uint64_t OUTLINED_FUNCTION_69_12(uint64_t a1, unint64_t a2)
{

  return sub_1C6F765A4(a1, a2, (v2 - 280));
}

uint64_t OUTLINED_FUNCTION_81_8@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 232) = a1;
  *(v2 - 368) = v1;

  return sub_1C75504FC();
}

void sub_1C7159E0C(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v21 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v11 = v10 - v9;
  v12 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v12)
  {
    return;
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_1C716DF84(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v14 = v24;
    while (v13 < v12)
    {
      if (__OFADD__(v13, 1))
      {
        goto LABEL_15;
      }

      v22 = v13 + 1;
      v23 = a3 + v13;
      v15 = v11;
      a1(&v23);
      if (v4)
      {
        goto LABEL_20;
      }

      v24 = v14;
      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1C716DF84(v16 > 1, v17 + 1, 1);
        v14 = v24;
      }

      *(v14 + 16) = v17 + 1;
      v18 = v14 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v17;
      v11 = v15;
      (*(v21 + 32))(v18, v15, v19);
      if (a4 < a3)
      {
        goto LABEL_16;
      }

      ++v13;
      if ((a3 + v13 - 1) >= a4)
      {
        goto LABEL_17;
      }

      if (v22 == v12)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
LABEL_20:

  __break(1u);
}

uint64_t sub_1C715A020(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x1E69E7CC0];
  sub_1C716E48C(0, v5, 0);
  v6 = v17;
  for (i = (a3 + 40); ; i += 2)
  {
    v10 = *i;
    v15[0] = *(i - 1);
    v15[1] = v10;
    sub_1C75504FC();
    a1(&v16, v15);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v16;
    v17 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1C716E48C(v12 > 1, v13 + 1, 1);
      v6 = v17;
    }

    *(v6 + 16) = v13 + 1;
    *(v6 + 8 * v13 + 32) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_1C715A14C(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = a3;
    v33[2] = MEMORY[0x1E69E7CC0];
    sub_1C755195C();
    v7 = sub_1C719D92C();
    v9 = v8;
    v10 = 0;
    v11 = v5 + 56;
    v27 = v6;
    v28 = v4;
    v26 = v5 + 64;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v5 + 32))
    {
      v12 = v7 >> 6;
      if ((*(v11 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (*(v5 + 36) != v6)
      {
        goto LABEL_24;
      }

      v30 = v10;
      v31 = v6;
      v13 = v5;
      v14 = (*(v5 + 48) + 16 * v7);
      v15 = v14[1];
      v32[0] = *v14;
      v32[1] = v15;
      sub_1C75504FC();
      a1(v33, v32);
      if (v3)
      {
        goto LABEL_28;
      }

      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
      if (v9)
      {
        goto LABEL_29;
      }

      v16 = 1 << *(v13 + 32);
      if (v7 >= v16)
      {
        goto LABEL_25;
      }

      v17 = *(v11 + 8 * v12);
      if ((v17 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v5 = v13;
      if (*(v13 + 36) != v31)
      {
        goto LABEL_27;
      }

      v18 = v17 & (-2 << (v7 & 0x3F));
      if (v18)
      {
        v16 = __clz(__rbit64(v18)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v3 = 0;
        v19 = v30;
        v20 = v28;
      }

      else
      {
        v21 = v12 << 6;
        v22 = v12 + 1;
        v23 = (v26 + 8 * v12);
        v20 = v28;
        while (v22 < (v16 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_1C6F9ED50(v7, v31, 0);
            v3 = 0;
            v16 = __clz(__rbit64(v24)) + v21;
            goto LABEL_19;
          }
        }

        sub_1C6F9ED50(v7, v31, 0);
        v3 = 0;
LABEL_19:
        v19 = v30;
      }

      v9 = 0;
      v10 = v19 + 1;
      v7 = v16;
      v6 = v27;
      if (v10 == v20)
      {
        return;
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
LABEL_28:

    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void sub_1C715A3B8(void (*a1)(id *, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for Hastings.Asset(0);
  v19 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_14_0();
  v9 = v8 - v7;
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C75516BC())
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1C716E298(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return;
    }

    v11 = 0;
    v12 = v23;
    v18 = i;
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1CCA5DDD0](v11, a3);
      }

      else
      {
        if (v11 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v14 = *(a3 + 8 * v11 + 32);
      }

      v15 = v14;
      v22 = v14;
      a1(&v22, &v21);
      if (v4)
      {

        return;
      }

      v4 = 0;

      v23 = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1C716E298(v16 > 1, v17 + 1, 1);
        v12 = v23;
      }

      *(v12 + 16) = v17 + 1;
      sub_1C7161504(v9, v12 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v17, type metadata accessor for Hastings.Asset);
      ++v11;
      if (v13 == v18)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }
}

void sub_1C715A5EC(void (*a1)(void *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1C716D7D8(0, v5, 0);
    v8 = v17;
    for (i = (a3 + 32); ; i += 120)
    {
      memcpy(__dst, i, 0x78uLL);
      memcpy(__src, i, sizeof(__src));
      sub_1C6FCA6E4(__dst, v13);
      a1(v15, __src);
      if (v4)
      {
        break;
      }

      v4 = 0;
      memcpy(v12, __src, sizeof(v12));
      sub_1C6FDD548(v12);
      memcpy(v13, v15, sizeof(v13));
      v17 = v8;
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1C716D7D8(v10 > 1, v11 + 1, 1);
        v8 = v17;
      }

      *(v8 + 16) = v11 + 1;
      memcpy((v8 + 120 * v11 + 32), v13, 0x78uLL);
      if (!--v5)
      {
        return;
      }
    }

    memcpy(v13, __src, sizeof(v13));
    sub_1C6FDD548(v13);

    __break(1u);
  }
}

uint64_t QueryAssetsRetrievalProcessor.performMetadataQueryTokenAssetsRetrieval(with:eventRecorder:diagnosticContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[110] = v4;
  v5[109] = a4;
  v5[108] = a3;
  v5[107] = a1;
  v7 = sub_1C754F38C();
  v5[111] = v7;
  v5[112] = *(v7 - 8);
  v5[113] = swift_task_alloc();
  v5[114] = *(a2 + 8);

  return MEMORY[0x1EEE6DFA0](sub_1C715A848, 0, 0);
}

uint64_t sub_1C715A848()
{
  v100 = v0;
  v1 = *(v0 + 912);
  v2 = OUTLINED_FUNCTION_57_0();
  __swift_project_boxed_opaque_existential_1(v2, v3);
  sub_1C754F1CC();
  v4 = OUTLINED_FUNCTION_57_0();
  __swift_project_boxed_opaque_existential_1(v4, v5);
  sub_1C754F15C();
  v6 = MEMORY[0x1E69E7CC8];
  *(v0 + 848) = MEMORY[0x1E69E7CC8];
  v7 = *(v1 + 16);
  if (!v7)
  {
    v8 = v6;
    v10 = v6;
LABEL_49:
    *(v0 + 936) = v10;
    *(v0 + 928) = v8;
    *(v0 + 920) = v6;
    if (!v10[2])
    {
      v83 = *(v0 + 856);
      __swift_destroy_boxed_opaque_existential_1((v0 + 736));

      *v83 = 0;
      v83[1] = 0;
      OUTLINED_FUNCTION_1_58();
      v84 = OUTLINED_FUNCTION_57_0();
      v85(v84);

      OUTLINED_FUNCTION_9_38();

      __asm { BRAA            X1, X16 }
    }

    v51 = v10 + 8;
    v52 = v0 + 816;
    OUTLINED_FUNCTION_10();
    v55 = v54 & v53;
    v57 = (63 - v56) >> 6;
    result = swift_bridgeObjectRetain_n();
    v58 = 0;
    v59 = MEMORY[0x1E69E7CC0];
    v92 = v57;
    v94 = v10 + 8;
    v90 = v0;
    v88 = v10;
    while (1)
    {
      *(v0 + 944) = v59;
      if (!v55)
      {
        while (1)
        {
          v60 = v58 + 1;
          if (__OFADD__(v58, 1))
          {
            __break(1u);
            goto LABEL_96;
          }

          if (v60 >= v57)
          {
            break;
          }

          v55 = v51[v60];
          ++v58;
          if (v55)
          {
            v58 = v60;
            goto LABEL_56;
          }
        }

        *(v0 + 976) = 0;
        sub_1C6FDC2F0(v0 + 776);
        v80 = swift_task_alloc();
        *(v0 + 952) = v80;
        *v80 = v0;
        v80[1] = sub_1C715B26C;
        OUTLINED_FUNCTION_9_38();

        return sub_1C71074E0();
      }

LABEL_56:
      v61 = *(v10[7] + ((v58 << 9) | (8 * __clz(__rbit64(v55)))));
      if (v61 >> 62)
      {
        v62 = sub_1C75516BC();
      }

      else
      {
        v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v63 = v59 >> 62;
      if (v59 >> 62)
      {
        result = sub_1C75516BC();
      }

      else
      {
        result = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v64 = result + v62;
      if (__OFADD__(result, v62))
      {
        goto LABEL_103;
      }

      sub_1C75504FC();
      result = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v98 = v62;
      if (!result)
      {
        break;
      }

      if (v63)
      {
        goto LABEL_66;
      }

      v65 = v59 & 0xFFFFFFFFFFFFFF8;
      v66 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      if (v66 < v64)
      {
        goto LABEL_67;
      }

LABEL_68:
      v55 &= v55 - 1;
      v67 = *(v65 + 16);
      v68 = v66 - v67;
      v69 = v65 + 8 * v67;
      v96 = v65;
      if (v61 >> 62)
      {
        v72 = sub_1C75516BC();
        if (!v72)
        {
          goto LABEL_82;
        }

        v73 = v72;
        result = sub_1C75516BC();
        if (v68 < result)
        {
          goto LABEL_107;
        }

        if (v73 < 1)
        {
          goto LABEL_108;
        }

        v89 = result;
        sub_1C7099594(&qword_1EC2155C8, &qword_1EC215050, &unk_1C755EAB0, MEMORY[0x1E69E6340]);
        for (i = 0; i != v73; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215050, &unk_1C755EAB0);
          v75 = sub_1C6FDD09C(v52, i, v61);
          v77 = *v76;
          v75(v52, 0);
          *(v69 + 32 + 8 * i) = v77;
        }

        v10 = v88;
        v71 = v89;
LABEL_78:

        v0 = v90;
        v57 = v92;
        v51 = v94;
        if (v71 < v98)
        {
          goto LABEL_104;
        }

        if (v71 > 0)
        {
          v78 = *(v96 + 16);
          v31 = __OFADD__(v78, v71);
          v79 = v78 + v71;
          if (v31)
          {
            goto LABEL_105;
          }

          *(v96 + 16) = v79;
        }
      }

      else
      {
        v70 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v70)
        {
          if (v68 < v70)
          {
            goto LABEL_106;
          }

          v71 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
          swift_arrayInitWithCopy();
          goto LABEL_78;
        }

LABEL_82:

        v0 = v90;
        v57 = v92;
        v51 = v94;
        if (v98 > 0)
        {
          goto LABEL_104;
        }
      }
    }

    if (v63)
    {
LABEL_66:
      sub_1C75516BC();
    }

LABEL_67:
    result = sub_1C75518CC();
    v59 = result;
    v65 = result & 0xFFFFFFFFFFFFFF8;
    v66 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    goto LABEL_68;
  }

  v91 = (v0 + 848);
  v8 = MEMORY[0x1E69E7CC8];
  v9 = (*(v0 + 912) + 32);
  v10 = MEMORY[0x1E69E7CC8];
  v6 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v93 = v7;
    memcpy((v0 + 16), v9, 0x78uLL);
    memcpy(__dst, v9, 0x78uLL);
    sub_1C6FCA6E4(v0 + 16, v0 + 136);
    sub_1C715B7AC(__dst);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    if ((v11 & 0xC000000000000001) != 0)
    {
      v17 = sub_1C75516BC();
    }

    else
    {
      v17 = *(v11 + 16);
    }

    v95 = v16;
    if (!v17)
    {
      v18 = MEMORY[0x1E69E7CC0];
      goto LABEL_12;
    }

    if (v17 < 1)
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
      v18 = swift_allocObject();
      v19 = _swift_stdlib_malloc_size(v18);
      *(v18 + 16) = v17;
      *(v18 + 24) = (2 * ((v19 - 32) / 8)) | 1;
    }

    sub_1C75504FC();
    sub_1C70D2264(__dst, (v18 + 32), v17, v12);
    v21 = v20;
    result = sub_1C6F61E88(__dst[0]);
    if (v21 != v17)
    {
      break;
    }

LABEL_12:
    v97 = v14;
    if (v18 < 0 || (v18 & 0x4000000000000000) != 0)
    {
      v23 = sub_1C75516BC();
    }

    else
    {
      v23 = *(v18 + 16);
    }

    if (v23)
    {
      swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = v10;
      result = sub_1C6FC2A70();
      if (__OFADD__(v10[2], (v24 & 1) == 0))
      {
        goto LABEL_97;
      }

      v25 = result;
      v26 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215318, &unk_1C755CC10);
      v27 = sub_1C7551A2C();
      v10 = __dst[0];
      if (v27)
      {
        v28 = sub_1C6FC2A70();
        if ((v26 & 1) != (v29 & 1))
        {
          goto LABEL_89;
        }

        v25 = v28;
      }

      if (v26)
      {
        *(v10[7] + 8 * v25) = v18;
      }

      else
      {
        OUTLINED_FUNCTION_1_3(&v10[v25 >> 6]);
        result = memcpy((v10[6] + 120 * v25), (v0 + 16), 0x78uLL);
        *(v10[7] + 8 * v25) = v18;
        v30 = v10[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_100;
        }

        v10[2] = v32;
        sub_1C6FCA6E4(v0 + 16, v0 + 256);
      }
    }

    else
    {
    }

    v33 = v97;
    if (*(v97 + 16))
    {
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = v8;
      result = sub_1C6FC2A70();
      if (__OFADD__(v8[2], (v34 & 1) == 0))
      {
        goto LABEL_98;
      }

      v35 = result;
      v36 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217FB8, &qword_1C7570298);
      v37 = sub_1C7551A2C();
      v8 = __dst[0];
      if (v37)
      {
        v38 = sub_1C6FC2A70();
        if ((v36 & 1) != (v39 & 1))
        {
          goto LABEL_89;
        }

        v35 = v38;
        v33 = v97;
      }

      if (v36)
      {
        *(v8[7] + 8 * v35) = v33;
      }

      else
      {
        OUTLINED_FUNCTION_1_3(&v8[v35 >> 6]);
        result = OUTLINED_FUNCTION_10_37(v8[6]);
        *(v8[7] + 8 * v35) = v33;
        v40 = v8[2];
        v31 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v31)
        {
          goto LABEL_101;
        }

        v8[2] = v41;
        sub_1C6FCA6E4(v0 + 16, v0 + 376);
      }
    }

    if (*(v95 + 16))
    {
      sub_1C75504FC();
      v42 = *v91;
      swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = v42;
      result = sub_1C6FC2A70();
      if (__OFADD__(*(v42 + 16), (v43 & 1) == 0))
      {
        goto LABEL_99;
      }

      v44 = result;
      v45 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217FC0, &qword_1C75702A0);
      v46 = sub_1C7551A2C();
      v6 = __dst[0];
      if (v46)
      {
        v47 = sub_1C6FC2A70();
        if ((v45 & 1) != (v48 & 1))
        {
LABEL_89:
          OUTLINED_FUNCTION_9_38();

          return sub_1C7551E4C();
        }

        v44 = v47;
      }

      if (v45)
      {
        *(v6[7] + 8 * v44) = v95;

        sub_1C6FDD548(v0 + 16);
      }

      else
      {
        OUTLINED_FUNCTION_1_3(&v6[v44 >> 6]);
        result = OUTLINED_FUNCTION_10_37(v6[6]);
        *(v6[7] + 8 * v44) = v95;
        v49 = v6[2];
        v31 = __OFADD__(v49, 1);
        v50 = v49 + 1;
        if (v31)
        {
          goto LABEL_102;
        }

        v6[2] = v50;
      }

      *v91 = v6;
    }

    else
    {
      sub_1C6FDD548(v0 + 16);
    }

    v9 += 120;
    v7 = v93 - 1;
    if (v93 == 1)
    {
      goto LABEL_49;
    }
  }

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
  return result;
}

uint64_t sub_1C715B26C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 960) = v1;

  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_1((v4 + 776));

    v5 = sub_1C715B6C4;
  }

  else
  {
    *(v4 + 968) = a1;
    __swift_destroy_boxed_opaque_existential_1((v4 + 776));

    v5 = sub_1C715B3C0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C715B3C0()
{
  v36 = v0;
  v1 = v0[121];
  v2 = v0[117];
  v3 = v0[115];
  v4 = v0[110];
  v5 = v0[109];
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = MEMORY[0x1E69E7CC8];
  sub_1C6FDE6CC(MEMORY[0x1E69E7CC8], sub_1C7161474, v6, v1);
  v9 = v8;

  v33 = v7;
  v34 = v7;
  v10 = v3;
  v11 = sub_1C71610D4(v2, v0 + 106);
  v32 = v9;
  sub_1C7108C18(v11, v9, &v33);

  v12 = v3 + 64;
  OUTLINED_FUNCTION_10();
  v15 = v14 & v13;
  v17 = (63 - v16) >> 6;
  result = sub_1C75504FC();
  v19 = 0;
  if (v15)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      return result;
    }

    if (v20 >= v17)
    {
      break;
    }

    v15 = *(v12 + 8 * v20);
    ++v19;
    if (v15)
    {
      v19 = v20;
      do
      {
LABEL_6:
        v21 = __clz(__rbit64(v15)) | (v19 << 6);
        memcpy(v0 + 62, (*(v10 + 48) + 120 * v21), 0x78uLL);
        v22 = *(*(v10 + 56) + 8 * v21);
        type metadata accessor for QueryAssetsRetrievalProcessor(0);
        sub_1C75504FC();
        sub_1C6FCA6E4((v0 + 62), (v0 + 77));
        v23 = sub_1C754FEEC();
        v24 = sub_1C75511BC();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 134217984;
          *(v25 + 4) = *(v22 + 16);
          _os_log_impl(&dword_1C6F5C000, v23, v24, "Need to update the location query token with %ld combinations of location tokenized attributed strings", v25, 0xCu);
          OUTLINED_FUNCTION_109();
        }

        v15 &= v15 - 1;

        memcpy(__dst, v0 + 62, 0x78uLL);
        sub_1C715E2B0(__dst, v22, v32, &v33, &v34);

        result = sub_1C6FDD548((v0 + 62));
      }

      while (v15);
    }
  }

  v26 = v0[116];
  v27 = v0[107];

  sub_1C715EF50(&v33, v26);

  __swift_destroy_boxed_opaque_existential_1(v0 + 92);

  v28 = v34;
  *v27 = v33;
  v27[1] = v28;
  OUTLINED_FUNCTION_1_58();
  v29 = OUTLINED_FUNCTION_57_0();
  v30(v29);

  v31 = v0[1];

  return v31();
}

uint64_t sub_1C715B6C4()
{
  v1 = v0[113];
  v2 = v0[112];
  v3 = v0[111];
  v4 = v0[108];
  __swift_destroy_boxed_opaque_existential_1(v0 + 92);

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

void sub_1C715B7AC(const void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217FD8, &unk_1C7575C30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v373 = &v310 - v3;
  v372 = sub_1C754E2FC();
  v4 = *(v372 - 8);
  MEMORY[0x1EEE9AC00](v372);
  v371 = &v310 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v339 = sub_1C754F5FC();
  v6 = *(v339 - 8);
  MEMORY[0x1EEE9AC00](v339);
  v338 = &v310 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v359 = sub_1C754F09C();
  v8 = *(v359 - 8);
  MEMORY[0x1EEE9AC00](v359);
  v323 = &v310 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v358 = &v310 - v11;
  v351 = sub_1C754F65C();
  v12 = *(v351 - 8);
  MEMORY[0x1EEE9AC00](v351);
  v322 = &v310 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v350 = &v310 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v315 = &v310 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v320 = &v310 - v19;
  v326 = sub_1C754DF6C();
  v20 = *(v326 - 8);
  MEMORY[0x1EEE9AC00](v326);
  v314 = &v310 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v325 = &v310 - v23;
  v342 = sub_1C754DABC();
  v24 = *(v342 - 8);
  MEMORY[0x1EEE9AC00](v342);
  v327 = &v310 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v328 = &v310 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v337 = &v310 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50, &qword_1C75606A0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v316 = &v310 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v324 = &v310 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v336 = &v310 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v343 = &v310 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v345 = &v310 - v39;
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  MEMORY[0x1EEE9AC00](TokenCategoryType);
  v365 = (&v310 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v42 = *(TokenSuggestion - 8);
  MEMORY[0x1EEE9AC00](TokenSuggestion - 8);
  v356 = &v310 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a1, 0x78uLL);
  v340 = __dst[3];
  v341 = __dst[2];
  v389 = MEMORY[0x1E69E7CD0];
  v388 = MEMORY[0x1E69E7CC0];
  v45 = __dst[8];
  v46 = __dst[10];
  v354 = *(__dst[10] + 16);
  if (!v354)
  {
    return;
  }

  v47 = 0;
  v355 = __dst[10] + ((*(v42 + 80) + 32) & ~*(v42 + 80));
  v321 = 0x80000001C7596490;
  v334 = 0;
  v335 = 0x80000001C7596470;
  v369 = (v4 + 8);
  v370 = (v4 + 16);
  v332 = (v6 + 8);
  v333 = (v6 + 32);
  v330 = (v8 + 8);
  v331 = (v8 + 32);
  v362 = v12 + 16;
  v361 = (v12 + 8);
  v318 = (v24 + 32);
  v319 = __dst[8];
  if (!__dst[8])
  {
    v45 = MEMORY[0x1E69E7CC0];
  }

  v317 = v45;
  v312 = (v20 + 32);
  v313 = (v8 + 16);
  v48 = (v24 + 8);
  v311 = (v20 + 8);
  *&v44 = 136642819;
  v346 = v44;
  v375 = xmmword_1C7564A90;
  v374 = xmmword_1C7565670;
  v344 = MEMORY[0x1E69E7CC0];
  v49 = v350;
  v50 = v351;
  v364 = v12;
  v352 = __dst[10];
  v353 = v42;
  v329 = v48;
  v367 = xmmword_1C755BAB0;
  while (2)
  {
    if (v47 >= *(v46 + 16))
    {
      goto LABEL_192;
    }

    v51 = *(v42 + 72);
    v363 = v47;
    v52 = v356;
    sub_1C7161564(v355 + v51 * v47, v356);
    sub_1C7161504(v52, v365, type metadata accessor for QueryTokenCategoryType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v54 = v358;
    v55 = v359;
    switch(EnumCaseMultiPayload)
    {
      case 0:
        v56 = *v365;
        v57 = *(*v365 + 16);
        if (!v57)
        {

          sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
          sub_1C75504FC();
          v158 = sub_1C7073450();
          sub_1C70F4C68(v387, v158);

          goto LABEL_101;
        }

        *&v387[0] = MEMORY[0x1E69E7CC0];
        sub_1C755195C();
        v384 = sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
        v383 = objc_opt_self();
        v382 = v56;
        v58 = (v56 + 40);
        do
        {
          v59 = *(v58 - 1);
          v60 = *v58;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
          v61 = swift_allocObject();
          *(v61 + 16) = v367;
          *(v61 + 32) = v59;
          *(v61 + 40) = v60;
          swift_bridgeObjectRetain_n();
          v62 = sub_1C7073450();
          v63 = [v62 length];
          v64 = objc_allocWithZone(MEMORY[0x1E6978A98]);
          v65 = sub_1C7550B3C();

          v66 = [v64 initForPersonFilterWithPersonUUIDs_];

          v67 = [v383 updateQueryString:v62 withSelectedSuggestion:v66 inRange:0 additionalAttributes:{v63, 0}];

          sub_1C755192C();
          sub_1C755196C();
          sub_1C755197C();
          sub_1C755193C();
          v58 += 2;
          --v57;
        }

        while (v57);

        v68 = *&v387[0];
        goto LABEL_11;
      case 1:
        v95 = *v365;
        v96 = *(*v365 + 16);
        v97 = v344;
        v98 = *(v344 + 16);
        v99 = v98 + v96;
        if (__OFADD__(v98, v96))
        {
          goto LABEL_200;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v99 > *(v97 + 24) >> 1)
        {
          if (v98 <= v99)
          {
            v101 = v98 + v96;
          }

          else
          {
            v101 = v98;
          }

          sub_1C6FB23B8(isUniquelyReferenced_nonNull_native, v101, 1, v97);
          v97 = v102;
        }

        v103 = *(v95 + 16);
        v344 = v97;
        if (!v103)
        {

          v49 = v350;
          v50 = v351;
          v108 = v363;
          v12 = v364;
          v46 = v352;
          v42 = v353;
          if (v96)
          {
            goto LABEL_201;
          }

          goto LABEL_103;
        }

        v104 = *(v97 + 16);
        if ((*(v97 + 24) >> 1) - v104 < v96)
        {
          goto LABEL_205;
        }

        memcpy((v97 + 2 * v104 + 32), (v95 + 32), 2 * v96);

        if (!v96)
        {
          goto LABEL_101;
        }

        v105 = *(v97 + 16);
        v106 = __OFADD__(v105, v96);
        v107 = v105 + v96;
        v49 = v350;
        v50 = v351;
        v108 = v363;
        v12 = v364;
        v109 = v97;
        v46 = v352;
        v42 = v353;
        if (v106)
        {
          goto LABEL_207;
        }

        *(v109 + 16) = v107;
        goto LABEL_103;
      case 2:
        v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0, &qword_1C7563B90) + 48);
        v76 = v365;
        v77 = v345;
        sub_1C7026200(v365, v345);
        v78 = v343;
        sub_1C7026200(v76 + v75, v343);
        v79 = v336;
        sub_1C7026190(v77, v336);
        v80 = v342;
        if (__swift_getEnumTagSinglePayload(v79, 1, v342) == 1)
        {
          sub_1C6FD7FC8(v79, &qword_1EC218C50, &qword_1C75606A0);
          type metadata accessor for QueryAssetsRetrievalProcessor(0);
          v81 = sub_1C754FEEC();
          v82 = sub_1C755119C();
          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            *v83 = 0;
            _os_log_impl(&dword_1C6F5C000, v81, v82, "We require there is at least one date to retrieve assets", v83, 2u);
            MEMORY[0x1CCA5F8E0](v83, -1, -1);
          }

          sub_1C6FD7FC8(v345, &qword_1EC218C50, &qword_1C75606A0);
          v84 = v78;
LABEL_69:
          sub_1C6FD7FC8(v84, &qword_1EC218C50, &qword_1C75606A0);
          goto LABEL_101;
        }

        v119 = *v318;
        v120 = v78;
        v121 = v337;
        (*v318)(v337, v79, v80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
        inited = swift_initStackObject();
        *(inited + 16) = v367;
        v123 = v340;
        *(inited + 32) = v341;
        *(inited + 40) = v123;
        *&v387[0] = inited;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C6FD2568(v317);
        sub_1C706D154();
        v383 = v124;
        v125 = v324;
        sub_1C7026190(v120, v324);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v125, 1, v80);
        v127 = v325;
        v128 = v326;
        v129 = v327;
        v384 = (v329 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        if (EnumTagSinglePayload == 1)
        {
          v130 = sub_1C6FD7FC8(v125, &qword_1EC218C50, &qword_1C75606A0);
          v131 = v329;
        }

        else
        {
          v119(v328, v125, v80);
          v171 = v320;
          if (qword_1EC214168 != -1)
          {
            swift_once();
          }

          v172 = sub_1C754E24C();
          __swift_project_value_buffer(v172, qword_1EC21C0C8);
          sub_1C754E1EC();
          if (__swift_getEnumTagSinglePayload(v171, 1, v128) == 1)
          {
            v131 = v329;
            (*v329)(v328, v80);
            v130 = sub_1C6FD7FC8(v171, &unk_1EC219230, &unk_1C7563720);
          }

          else
          {
            v382 = *v312;
            v382(v127, v171, v128);
            v175 = v316;
            v176 = v328;
            static StoryGenerationUtilities.nextDayDateComponents(of:)();
            if (__swift_getEnumTagSinglePayload(v175, 1, v80) == 1)
            {
              v131 = v329;
              (*v329)(v176, v80);
              sub_1C6FD7FC8(v175, &qword_1EC218C50, &qword_1C75606A0);
              v130 = (*v311)(v127, v128);
              v121 = v337;
              goto LABEL_67;
            }

            v119(v129, v175, v80);
            v281 = v315;
            sub_1C754E1EC();
            if (__swift_getEnumTagSinglePayload(v281, 1, v128) != 1)
            {
              v304 = v314;
              v305 = (v382)(v314, v281, v128);
              MEMORY[0x1EEE9AC00](v305);
              *(&v310 - 2) = v127;
              *(&v310 - 1) = v304;
              v306 = v334;
              sub_1C715A14C(sub_1C716165C, (&v310 - 4), v383);
              v308 = v307;
              v334 = v306;

              sub_1C7397E58(v308);
              v182 = *v329;
              (*v329)(v327, v80);
              v182(v328, v80);
              sub_1C6FD7FC8(v345, &qword_1EC218C50, &qword_1C75606A0);
              v309 = *v311;
              (*v311)(v304, v128);
              v309(v127, v128);
              v179 = v337;
              v177 = v343;
              goto LABEL_68;
            }

            v131 = v329;
            v282 = *v329;
            (*v329)(v129, v80);
            v282(v328, v80);
            sub_1C6FD7FC8(v281, &unk_1EC219230, &unk_1C7563720);
            v130 = (*v311)(v127, v128);
          }

          v121 = v337;
        }

LABEL_67:
        MEMORY[0x1EEE9AC00](v130);
        v177 = v343;
        *(&v310 - 2) = v121;
        *(&v310 - 1) = v177;
        v178 = v334;
        sub_1C715A14C(sub_1C7161620, (&v310 - 4), v383);
        v179 = v121;
        v181 = v180;
        v334 = v178;

        sub_1C7397E58(v181);
        sub_1C6FD7FC8(v345, &qword_1EC218C50, &qword_1C75606A0);
        v182 = *v131;
        v80 = v342;
LABEL_68:
        v182(v179, v80);
        v84 = v177;
        goto LABEL_69;
      case 3:
        v85 = *v365;
        v384 = *(*v365 + 16);
        if (!v384)
        {

          type metadata accessor for QueryAssetsRetrievalProcessor(0);
          sub_1C6FCA6E4(__dst, v387);
          v142 = sub_1C754FEEC();
          v143 = sub_1C755119C();
          sub_1C6FDD548(__dst);
          if (os_log_type_enabled(v142, v143))
          {
            v144 = swift_slowAlloc();
            v145 = swift_slowAlloc();
            v386 = v145;
            *v144 = v346;
            memcpy(v385, __dst, sizeof(v385));
            v146 = sub_1C6FCA6E4(__dst, v387);
            QueryToken.description.getter(v146, v147, v148, v149, v150, v151, v152);
            v154 = v153;
            v156 = v155;
            memcpy(v387, v385, 0x78uLL);
            sub_1C6FDD548(v387);
            v157 = sub_1C6F765A4(v154, v156, &v386);

            *(v144 + 4) = v157;
            _os_log_impl(&dword_1C6F5C000, v142, v143, "Unexpectedly encountered an ungrounded PartOfDay suggestion, unable to perform PartOfDay retrieval. %{sensitive}s", v144, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v145);
            MEMORY[0x1CCA5F8E0](v145, -1, -1);
            MEMORY[0x1CCA5F8E0](v144, -1, -1);
          }

          goto LABEL_101;
        }

        v86 = 0;
        while (1)
        {
          if (v384 == v86)
          {

            goto LABEL_102;
          }

          if (v86 >= *(v85 + 16))
          {
            goto LABEL_191;
          }

          v87 = *(v12 + 16);
          v87(v49, v85 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v86, v50);
          v88 = v49;
          sub_1C754F62C();
          sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
          v89 = sub_1C7073450();
          v90 = [v89 length];
          sub_1C6F65BE8(0, &qword_1EC217FE0, 0x1E6978A98);
          v91 = sub_1C754F62C();
          v92 = sub_1C71C3FEC(v91);
          if (!v92)
          {
            break;
          }

          v93 = v92;
          ++v86;
          v94 = [objc_opt_self() updateQueryString:v89 withSelectedSuggestion:v92 inRange:0 additionalAttributes:{v90, 0}];

          sub_1C70F4C68(v387, v94);
          (*v361)(v88, v50);
          v12 = v364;
          v49 = v88;
        }

        type metadata accessor for QueryAssetsRetrievalProcessor(0);
        v160 = v322;
        v87(v322, v49, v50);
        v161 = sub_1C754FEEC();
        v162 = sub_1C755119C();
        if (os_log_type_enabled(v161, v162))
        {
          v163 = swift_slowAlloc();
          v164 = swift_slowAlloc();
          *&v387[0] = v164;
          *v163 = v346;
          v165 = sub_1C754F64C();
          v167 = v166;
          v168 = v160;
          v169 = *v361;
          (*v361)(v168, v50);
          v170 = sub_1C6F765A4(v165, v167, v387);

          *(v163 + 4) = v170;
          _os_log_impl(&dword_1C6F5C000, v161, v162, "Skip date retrieval for part of day token '%{sensitive}s', it is not supported in Spotlight in this build.", v163, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v164);
          MEMORY[0x1CCA5F8E0](v164, -1, -1);
          MEMORY[0x1CCA5F8E0](v163, -1, -1);

          v169(v88, v50);
        }

        else
        {

          v174 = *v361;
          (*v361)(v160, v50);
          v174(v88, v50);
        }

        v12 = v364;
        v49 = v88;
        goto LABEL_102;
      case 4:
        (*v331)(v358, v365, v359);
        sub_1C754F06C();
        sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
        v69 = sub_1C7073450();
        v70 = [v69 length];
        sub_1C6F65BE8(0, &qword_1EC217FE0, 0x1E6978A98);
        v71 = sub_1C754F06C();
        v72 = sub_1C71C3FF8(v71);
        if (v72)
        {
          v73 = v72;
          v74 = [objc_opt_self() updateQueryString:v69 withSelectedSuggestion:v72 inRange:0 additionalAttributes:{v70, 0}];

          sub_1C70F4C68(v387, v74);
          (*v330)(v54, v55);
        }

        else
        {

          type metadata accessor for QueryAssetsRetrievalProcessor(0);
          v132 = v323;
          (*v313)(v323, v54, v55);
          v133 = sub_1C754FEEC();
          v134 = sub_1C755119C();
          if (os_log_type_enabled(v133, v134))
          {
            v135 = swift_slowAlloc();
            v384 = swift_slowAlloc();
            *&v387[0] = v384;
            *v135 = v346;
            v383 = sub_1C754F08C();
            v137 = v136;
            v138 = *v330;
            (*v330)(v132, v55);
            v139 = v138;
            v140 = sub_1C6F765A4(v383, v137, v387);

            *(v135 + 4) = v140;
            _os_log_impl(&dword_1C6F5C000, v133, v134, "Skip date retrieval for part of week token '%{sensitive}s', it is not supported in Spotlight in this build.", v135, 0xCu);
            v141 = v384;
            __swift_destroy_boxed_opaque_existential_1(v384);
            MEMORY[0x1CCA5F8E0](v141, -1, -1);
            MEMORY[0x1CCA5F8E0](v135, -1, -1);

            v139(v54, v55);
          }

          else
          {

            v173 = *v330;
            (*v330)(v132, v55);
            v173(v54, v55);
          }
        }

        goto LABEL_101;
      case 5:
        v111 = v338;
        v110 = v339;
        (*v333)(v338, v365, v339);
        sub_1C754F5CC();
        sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
        v112 = sub_1C7073450();
        v113 = [v112 length];
        sub_1C6F65BE8(0, &qword_1EC217FE0, 0x1E6978A98);
        sub_1C754F5CC();
        v114 = sub_1C71C406C();
        v115 = [objc_opt_self() updateQueryString:v112 withSelectedSuggestion:v114 inRange:0 additionalAttributes:{v113, 0}];

        sub_1C70F4C68(v387, v115);
        v49 = v350;
        v50 = v351;
        v12 = v364;

        (*v332)(v111, v110);
        goto LABEL_102;
      case 6:
        v117 = *v365;
        v116 = v365[1];
        v118 = LOBYTE(__dst[4]);
        v360 = *v365;
        if (LOBYTE(__dst[4]) && LOBYTE(__dst[4]) == 1)
        {

          goto LABEL_72;
        }

        v159 = sub_1C7551DBC();

        if (v159)
        {
          goto LABEL_71;
        }

        if (v118 < 2)
        {
          v183 = sub_1C7551DBC();

          if (v183)
          {
            goto LABEL_71;
          }

          v236 = v340;
          v235 = v341;
          v237 = v319;
          if (v319)
          {
            v236 = v340;
            v235 = v341;
            if (*(v319 + 16))
            {
              sub_1C6FB632C();
              v235 = *(v237 + 32);
              v236 = *(v237 + 40);
            }
          }

          sub_1C75504FC();
          v238 = v360;
          v379 = *(v360 + 16);
          if (v379)
          {
            v376 = v236;

            v239 = 0;
            v378 = v238 + 32;
            v240 = MEMORY[0x1E69E7CC0];
            while (1)
            {
              if (v239 == v379)
              {

                v68 = v240;
LABEL_11:
                sub_1C7397E58(v68);
                goto LABEL_101;
              }

              if (v239 >= *(v238 + 16))
              {
                goto LABEL_193;
              }

              v384 = v239;
              v241 = (v378 + (v239 << 6));
              v243 = *v241;
              v242 = v241[1];
              v244 = v241[3];
              v387[2] = v241[2];
              v387[3] = v244;
              v387[0] = v243;
              v387[1] = v242;
              v383 = *(&v387[2] + 1);
              v245 = v244;
              v246 = v243;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
              v247 = swift_allocObject();
              *(v247 + 16) = v375;
              v248 = sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
              sub_1C75504FC();
              sub_1C70802EC(v387, v385);
              v382 = v248;
              v249 = sub_1C7073450();
              v250 = [v249 length];
              v251 = objc_allocWithZone(MEMORY[0x1E6978A98]);
              sub_1C75504FC();
              v252 = sub_1C71C8E10();
              v253 = [objc_opt_self() updateQueryString:v249 withSelectedSuggestion:v252 inRange:0 additionalAttributes:{v250, 0}];

              *(v247 + 32) = v253;
              v254 = v247;
              v255 = objc_allocWithZone(MEMORY[0x1E69BE460]);
              sub_1C75504FC();
              v256 = sub_1C71C8EB8(v246, *(&v246 + 1), 0, 0);
              v257 = swift_allocObject();
              *(v257 + 16) = v374;
              *(v257 + 32) = v256;
              v258 = v256;
              static StoryGenerationUtilities.genericEntityAttributedString(with:allowedIndexCategories:localizedText:)();
              v260 = v259;

              *(v247 + 40) = v260;
              v385[0] = v247;
              if (v245)
              {
                v261 = HIBYTE(v245) & 0xF;
                if ((v245 & 0x2000000000000000) == 0)
                {
                  v261 = v383 & 0xFFFFFFFFFFFFLL;
                }

                if (v261)
                {
                  static StoryGenerationUtilities.landmarkAttributedString(with:lookupIdentifier:)(v246, *(&v246 + 1), v383, v245);
                  MEMORY[0x1CCA5D040]();
                  if (*((v385[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v385[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_1C7550B9C();
                  }

                  sub_1C7550BEC();
                  v254 = v385[0];
                }
              }

              v262 = v254 >> 62;
              if (v254 >> 62)
              {
                v263 = sub_1C75516BC();
              }

              else
              {
                v263 = *((v254 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v264 = v240 >> 62;
              if (v240 >> 62)
              {
                v265 = sub_1C75516BC();
              }

              else
              {
                v265 = *((v240 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v266 = v263 + v265;
              if (__OFADD__(v265, v263))
              {
LABEL_194:
                __break(1u);
LABEL_195:
                __break(1u);
LABEL_196:
                __break(1u);
LABEL_197:
                __break(1u);
                goto LABEL_198;
              }

              if (swift_isUniquelyReferenced_nonNull_bridgeObject())
              {
                break;
              }

              if (v264)
              {
                goto LABEL_129;
              }

LABEL_130:
              v240 = sub_1C75518CC();
              v267 = v240 & 0xFFFFFFFFFFFFFF8;
LABEL_131:
              v269 = *(v267 + 16);
              v268 = *(v267 + 24);
              if (v262)
              {
                v270 = sub_1C75516BC();
                if (!v270)
                {
LABEL_137:

                  v238 = v360;
                  v273 = v384;
                  if (v263 > 0)
                  {
                    goto LABEL_195;
                  }

                  goto LABEL_146;
                }
              }

              else
              {
                v270 = *((v254 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v270)
                {
                  goto LABEL_137;
                }
              }

              v271 = sub_1C6FB6304();
              if (((v268 >> 1) - v269) < v271)
              {
                goto LABEL_196;
              }

              v381 = v263;
              v272 = v267 + 8 * v269 + 32;
              v383 = v240;
              v377 = v267;
              v380 = v271;
              if (v262)
              {
                if (v270 < 1)
                {
                  goto LABEL_204;
                }

                sub_1C7099594(&qword_1EC2155C8, &qword_1EC215050, &unk_1C755EAB0, MEMORY[0x1E69E6340]);
                v274 = v254;
                for (i = 0; i != v270; ++i)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215050, &unk_1C755EAB0);
                  v276 = sub_1C6FDD09C(v385, i, v274);
                  v278 = *v277;
                  v276(v385, 0);
                  *(v272 + 8 * i) = v278;
                }
              }

              else
              {
                swift_arrayInitWithCopy();
              }

              v238 = v360;
              v240 = v383;
              v273 = v384;
              if (v380 < v381)
              {
                goto LABEL_195;
              }

              if (v380 > 0)
              {
                v279 = *(v377 + 16);
                v106 = __OFADD__(v279, v380);
                v280 = v279 + v380;
                if (v106)
                {
                  goto LABEL_202;
                }

                *(v377 + 16) = v280;
              }

LABEL_146:
              v239 = v273 + 1;
              sub_1C7080348(v387);
            }

            if (!v264)
            {
              v267 = v240 & 0xFFFFFFFFFFFFFF8;
              if (v266 <= *((v240 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                goto LABEL_131;
              }

              goto LABEL_130;
            }

LABEL_129:
            sub_1C75516BC();
            goto LABEL_130;
          }

          v283 = static QueryAssetsRetrievalProcessor.generateLocationAttributedStringCombinations(with:assetUUIDs:)(v235, v236, v116);

          v284 = 0;
          v380 = v283[2];
          v381 = v283;
          v379 = v283 + 4;
          v285 = MEMORY[0x1E69E7CC0];
          while (1)
          {
            if (v284 == v380)
            {
              sub_1C7397E58(v285);
              sub_1C6FD3104(v381);
              goto LABEL_101;
            }

            if (v284 >= v381[2])
            {
              goto LABEL_197;
            }

            v286 = v379[v284];
            v287 = v286 >> 62;
            if (v286 >> 62)
            {
              v288 = sub_1C75516BC();
            }

            else
            {
              v288 = *((v286 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v289 = v285 >> 62;
            if (v285 >> 62)
            {
              v290 = sub_1C75516BC();
            }

            else
            {
              v290 = *((v285 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v291 = v288 + v290;
            if (__OFADD__(v290, v288))
            {
LABEL_198:
              __break(1u);
LABEL_199:
              __break(1u);
LABEL_200:
              __break(1u);
LABEL_201:
              __break(1u);
LABEL_202:
              __break(1u);
LABEL_203:
              __break(1u);
LABEL_204:
              __break(1u);
LABEL_205:
              __break(1u);
LABEL_206:
              __break(1u);
LABEL_207:
              __break(1u);
LABEL_208:
              __break(1u);
              return;
            }

            sub_1C75504FC();
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
            {
              break;
            }

            if (v289)
            {
              goto LABEL_165;
            }

            v292 = v285 & 0xFFFFFFFFFFFFFF8;
            if (v291 > *((v285 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_166;
            }

LABEL_167:
            v293 = *(v292 + 16);
            v294 = *(v292 + 24);
            if (v287)
            {
              v295 = sub_1C75516BC();
            }

            else
            {
              v295 = *((v286 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            ++v284;
            if (v295)
            {
              if (((v294 >> 1) - v293) < v288)
              {
                goto LABEL_203;
              }

              v383 = v285;
              v296 = v292 + 8 * v293 + 32;
              v384 = v284;
              v382 = v288;
              v378 = v292;
              if (v287)
              {
                if (v295 < 1)
                {
                  goto LABEL_208;
                }

                sub_1C7099594(&qword_1EC2155C8, &qword_1EC215050, &unk_1C755EAB0, MEMORY[0x1E69E6340]);
                for (j = 0; j != v295; ++j)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215050, &unk_1C755EAB0);
                  v298 = v286;
                  v299 = sub_1C6FDD09C(v387, j, v286);
                  v301 = *v300;
                  v299(v387, 0);
                  v286 = v298;
                  *(v296 + 8 * j) = v301;
                }
              }

              else
              {
                sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
                swift_arrayInitWithCopy();
              }

              v284 = v384;
              v285 = v383;
              if (v382 > 0)
              {
                v302 = *(v378 + 16);
                v106 = __OFADD__(v302, v382);
                v303 = v382 + v302;
                if (v106)
                {
                  goto LABEL_206;
                }

                *(v378 + 16) = v303;
              }
            }

            else
            {

              if (v288 > 0)
              {
                goto LABEL_199;
              }
            }
          }

          if (v289)
          {
LABEL_165:
            sub_1C75516BC();
          }

LABEL_166:
          v285 = sub_1C75518CC();
          v292 = v285 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_167;
        }

LABEL_71:

        v117 = v360;
LABEL_72:
        v347 = *(v117 + 16);
        if (v347)
        {
          AssetsRetrievalProcessor = type metadata accessor for QueryAssetsRetrievalProcessor(0);
          v368 = 0;
          v185 = *(AssetsRetrievalProcessor + 28);
          v366 = v388;
          v348 = v117 + 32;
          v349 = v185;
          while (1)
          {
            v186 = v368;
            sub_1C6FB632C();
            v187 = (v348 + (v186 << 6));
            v188 = *v187;
            v189 = v187[1];
            v190 = v187[3];
            v387[2] = v187[2];
            v387[3] = v190;
            v387[0] = v188;
            v387[1] = v189;
            sub_1C70802EC(v387, v385);
            v191 = sub_1C754FEEC();
            v192 = sub_1C75511BC();
            if (os_log_type_enabled(v191, v192))
            {
              v193 = v387[0];
              v194 = swift_slowAlloc();
              v195 = swift_slowAlloc();
              v385[0] = v195;
              *v194 = v346;
              sub_1C75504FC();
              v196 = sub_1C6F765A4(v193, *(&v193 + 1), v385);

              *(v194 + 4) = v196;
              _os_log_impl(&dword_1C6F5C000, v191, v192, "Retrieve assets for user disambiguation query token with grounded location: %{sensitive}s", v194, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v195);
              MEMORY[0x1CCA5F8E0](v195, -1, -1);
              MEMORY[0x1CCA5F8E0](v194, -1, -1);
            }

            v197 = 0;
            ++v368;
            v377 = *(*&v387[2] + 16);
            v376 = *&v387[2];
            v198 = (*&v387[2] + 40);
            v199 = MEMORY[0x1E69E7CC0];
            while (v377 != v197)
            {
              if (v197 >= *(v376 + 16))
              {
                __break(1u);
LABEL_188:
                __break(1u);
LABEL_189:
                __break(1u);
LABEL_190:
                __break(1u);
LABEL_191:
                __break(1u);
LABEL_192:
                __break(1u);
LABEL_193:
                __break(1u);
                goto LABEL_194;
              }

              v379 = v197;
              v200 = *(v198 - 1);
              v201 = *v198;
              v378 = v198;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
              v202 = swift_initStackObject();
              v202[1] = v375;
              v203 = v202;
              v383 = v202;
              v204 = sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
              swift_bridgeObjectRetain_n();
              v205 = sub_1C7073450();
              v384 = v199;
              v206 = [v205 length];
              v207 = objc_allocWithZone(MEMORY[0x1E6978A98]);
              sub_1C75504FC();
              v208 = sub_1C71C8E10();
              v382 = objc_opt_self();
              v209 = [v382 updateQueryString:v205 withSelectedSuggestion:v208 inRange:0 additionalAttributes:{v206, 0}];

              *(v203 + 4) = v209;
              v210 = objc_allocWithZone(MEMORY[0x1E69BE460]);
              sub_1C75504FC();
              v211 = sub_1C71C8EB8(v200, v201, 0, 0);
              v212 = swift_allocObject();
              *(v212 + 16) = v374;
              *(v212 + 32) = v211;
              sub_1C75504FC();
              v381 = v211;
              v380 = v204;
              v213 = sub_1C7073450();
              v214 = [v213 length];
              v215 = v371;
              sub_1C754E2EC();
              sub_1C754E2AC();
              v216 = v373;
              v217 = v372;
              (*v370)(v373, v215, v372);
              __swift_storeEnumTagSinglePayload(v216, 0, 1, v217);
              v218 = objc_allocWithZone(MEMORY[0x1E6978A98]);
              sub_1C75504FC();
              sub_1C75504FC();
              v219 = sub_1C71C8F50(v200, v201, v212, v216);
              v220 = [v382 updateQueryString:v213 withSelectedSuggestion:v219 inRange:0 additionalAttributes:{v214, 0}];

              v221 = v215;
              v222 = v383;
              v223 = v217;
              v199 = v384;
              (*v369)(v221, v223);

              *(v222 + 40) = v220;
              v224 = v199 >> 62;
              if (v199 >> 62)
              {
                v225 = sub_1C75516BC();
              }

              else
              {
                v225 = *((v199 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v226 = v225 + 2;
              if (__OFADD__(v225, 2))
              {
                goto LABEL_188;
              }

              if (swift_isUniquelyReferenced_nonNull_bridgeObject())
              {
                if (!v224)
                {
                  v227 = v199 & 0xFFFFFFFFFFFFFF8;
                  if (v226 <= *((v199 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    goto LABEL_89;
                  }

                  goto LABEL_88;
                }

LABEL_87:
                sub_1C75516BC();
                goto LABEL_88;
              }

              if (v224)
              {
                goto LABEL_87;
              }

LABEL_88:
              v199 = sub_1C75518CC();
              v227 = v199 & 0xFFFFFFFFFFFFFF8;
LABEL_89:
              if (((*(v227 + 24) >> 1) - *(v227 + 16)) < 2)
              {
                goto LABEL_189;
              }

              swift_arrayInitWithCopy();

              swift_setDeallocating();
              sub_1C6FDCA68();
              v228 = *(v227 + 16);
              v106 = __OFADD__(v228, 2);
              v229 = v228 + 2;
              if (v106)
              {
                goto LABEL_190;
              }

              *(v227 + 16) = v229;
              v198 = (v378 + 16);
              v197 = (v379 + 1);
            }

            sub_1C7080348(v387);
            v230 = sub_1C75504FC();
            sub_1C7397E58(v230);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C6FB3460();
              v366 = v233;
            }

            v231 = *(v366 + 16);
            if (v231 >= *(v366 + 24) >> 1)
            {
              sub_1C6FB3460();
              v366 = v234;
            }

            v232 = v366;
            *(v366 + 16) = v231 + 1;
            *(v232 + 8 * v231 + 32) = v199;
            if (v368 == v347)
            {

              v388 = v366;
              goto LABEL_101;
            }
          }
        }

LABEL_101:
        v49 = v350;
        v50 = v351;
        v12 = v364;
LABEL_102:
        v46 = v352;
        v42 = v353;
        v108 = v363;
LABEL_103:
        v47 = v108 + 1;
        if (v47 != v354)
        {
          continue;
        }

        return;
      default:
        sub_1C71615C8(v365, type metadata accessor for QueryTokenCategoryType);
        goto LABEL_102;
    }
  }
}