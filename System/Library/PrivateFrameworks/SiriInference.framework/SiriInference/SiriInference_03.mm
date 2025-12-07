uint64_t sub_1DD3CD140(uint64_t a1, uint64_t a2)
{
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  (*(*(matched - 8) + 16))(a2, a1, matched);
  return a2;
}

uint64_t sub_1DD3CD1A4(uint64_t a1)
{
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  (*(*(matched - 8) + 8))(a1, matched);
  return a1;
}

uint64_t sub_1DD3CD200(uint64_t a1, uint64_t a2)
{
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  (*(*(matched - 8) + 32))(a2, a1, matched);
  return a2;
}

uint64_t sub_1DD3CD264(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD3CD2CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_1DD3CD33C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DD640CA8();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD68, &qword_1DD6440E8);
        v6 = sub_1DD640158();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1DD3CD520(v7, v8, a1, v4);
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
    return sub_1DD3CD440(0, v2, 1, a1);
  }

  return result;
}

char *sub_1DD3CD440(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 88 * a3;
    v8 = &result[-a3];
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        if (*(v10 - 1) >= v10[10])
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v10, sizeof(__dst));
        memcpy(v10, v10 - 11, 0x58uLL);
        result = memcpy(v10 - 11, __dst, 0x58uLL);
        v10 -= 11;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 88;
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

void sub_1DD3CD520(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v80 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *(*a3 + 88 * v6 + 80);
        v10 = 88 * v8;
        v11 = *a3 + 88 * v8;
        v12 = *(v11 + 80);
        v13 = (v11 + 256);
        v14 = v8 + 2;
        v15 = v9;
        while (1)
        {
          v16 = v14;
          if (++v6 >= v5)
          {
            break;
          }

          v17 = *v13;
          v13 += 11;
          v18 = (v12 < v9) ^ (v15 >= v17);
          ++v14;
          v15 = v17;
          if ((v18 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v6 = v5;
LABEL_9:
        if (v12 < v9)
        {
          if (v6 < v8)
          {
            goto LABEL_110;
          }

          if (v8 < v6)
          {
            if (v5 >= v16)
            {
              v5 = v16;
            }

            v19 = 88 * v5 - 88;
            v20 = v6;
            v21 = v8;
            do
            {
              if (v21 != --v20)
              {
                v22 = *a3;
                if (!*a3)
                {
                  goto LABEL_115;
                }

                memcpy(__dst, (v22 + v10), sizeof(__dst));
                memmove((v22 + v10), (v22 + v19), 0x58uLL);
                memcpy((v22 + v19), __dst, 0x58uLL);
              }

              ++v21;
              v19 -= 88;
              v10 += 88;
            }

            while (v21 < v20);
            v5 = a3[1];
          }
        }
      }

      if (v6 < v5)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_109;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_111;
          }

          if (v8 + a4 >= v5)
          {
            v23 = v5;
          }

          else
          {
            v23 = v8 + a4;
          }

          if (v23 < v8)
          {
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
            return;
          }

          if (v6 != v23)
          {
            v76 = v7;
            v24 = *a3;
            v25 = *a3 + 88 * v6;
            v26 = v8 - v6;
            do
            {
              v27 = v26;
              v28 = v25;
              do
              {
                if (*(v28 - 1) >= v28[10])
                {
                  break;
                }

                if (!v24)
                {
                  goto LABEL_113;
                }

                memcpy(__dst, v28, sizeof(__dst));
                memcpy(v28, v28 - 11, 0x58uLL);
                memcpy(v28 - 11, __dst, 0x58uLL);
                v28 -= 11;
              }

              while (!__CFADD__(v27++, 1));
              ++v6;
              v25 += 88;
              --v26;
            }

            while (v6 != v23);
            v6 = v23;
            v7 = v76;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_108;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3BEB7C();
        v7 = v72;
      }

      v30 = v7[2];
      v31 = v30 + 1;
      if (v30 >= v7[3] >> 1)
      {
        sub_1DD3BEB7C();
        v7 = v73;
      }

      v7[2] = v31;
      v32 = v7 + 4;
      v33 = &v7[2 * v30 + 4];
      *v33 = v8;
      v33[1] = v6;
      v77 = *a1;
      if (!*a1)
      {
        goto LABEL_116;
      }

      if (v30)
      {
        while (1)
        {
          v34 = v31 - 1;
          v35 = &v32[2 * v31 - 2];
          v36 = &v7[2 * v31];
          if (v31 >= 4)
          {
            break;
          }

          if (v31 == 3)
          {
            v37 = v7[4];
            v38 = v7[5];
            v47 = __OFSUB__(v38, v37);
            v39 = v38 - v37;
            v40 = v47;
LABEL_57:
            if (v40)
            {
              goto LABEL_98;
            }

            v52 = *v36;
            v51 = v36[1];
            v53 = __OFSUB__(v51, v52);
            v54 = v51 - v52;
            v55 = v53;
            if (v53)
            {
              goto LABEL_101;
            }

            v56 = v35[1];
            v57 = v56 - *v35;
            if (__OFSUB__(v56, *v35))
            {
              goto LABEL_104;
            }

            if (__OFADD__(v54, v57))
            {
              goto LABEL_106;
            }

            if (v54 + v57 >= v39)
            {
              if (v39 < v57)
              {
                v34 = v31 - 2;
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          }

          if (v31 < 2)
          {
            goto LABEL_100;
          }

          v59 = *v36;
          v58 = v36[1];
          v47 = __OFSUB__(v58, v59);
          v54 = v58 - v59;
          v55 = v47;
LABEL_72:
          if (v55)
          {
            goto LABEL_103;
          }

          v61 = *v35;
          v60 = v35[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_105;
          }

          if (v62 < v54)
          {
            goto LABEL_86;
          }

LABEL_79:
          if (v34 - 1 >= v31)
          {
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
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
            goto LABEL_112;
          }

          if (!*a3)
          {
            goto LABEL_114;
          }

          v66 = v7;
          v67 = &v32[2 * v34 - 2];
          v68 = *v67;
          v69 = &v32[2 * v34];
          v70 = v69[1];
          sub_1DD3CDB70((*a3 + 88 * *v67), (*a3 + 88 * *v69), (*a3 + 88 * v70), v77);
          if (v4)
          {
            goto LABEL_91;
          }

          if (v70 < v68)
          {
            goto LABEL_93;
          }

          v71 = v66[2];
          if (v34 > v71)
          {
            goto LABEL_94;
          }

          *v67 = v68;
          v67[1] = v70;
          if (v34 >= v71)
          {
            goto LABEL_95;
          }

          v31 = v71 - 1;
          memmove(&v32[2 * v34], v69 + 2, 16 * (v71 - 1 - v34));
          v7 = v66;
          v66[2] = v71 - 1;
          if (v71 <= 2)
          {
            goto LABEL_86;
          }
        }

        v41 = &v32[2 * v31];
        v42 = *(v41 - 8);
        v43 = *(v41 - 7);
        v47 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        if (v47)
        {
          goto LABEL_96;
        }

        v46 = *(v41 - 6);
        v45 = *(v41 - 5);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        v40 = v47;
        if (v47)
        {
          goto LABEL_97;
        }

        v48 = v36[1];
        v49 = v48 - *v36;
        if (__OFSUB__(v48, *v36))
        {
          goto LABEL_99;
        }

        v47 = __OFADD__(v39, v49);
        v50 = v39 + v49;
        if (v47)
        {
          goto LABEL_102;
        }

        if (v50 >= v44)
        {
          v64 = *v35;
          v63 = v35[1];
          v47 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v47)
          {
            goto LABEL_107;
          }

          if (v39 < v65)
          {
            v34 = v31 - 2;
          }

          goto LABEL_79;
        }

        goto LABEL_57;
      }

LABEL_86:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v80 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_117;
  }

  sub_1DD3CDA38(&v80, *a1, a3);
LABEL_91:
}

uint64_t sub_1DD3CDA38(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DD4EC2B8();
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
    sub_1DD3CDB70((*a3 + 88 * *v4), (*a3 + 88 * *v9), (*a3 + 88 * v10), a2);
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

uint64_t sub_1DD3CDB70(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 88;
  v9 = (a3 - a2) / 88;
  if (v8 < v9)
  {
    sub_1DD3C1C2C(a1, (a2 - a1) / 88, a4);
    v10 = &v4[88 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(v4 + 10) >= *(v6 + 10))
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 88;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 88;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 88;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    memmove(v7, v12, 0x58uLL);
    goto LABEL_13;
  }

  sub_1DD3C1C2C(a2, (a3 - a2) / 88, a4);
  v10 = &v4[88 * v9];
LABEL_15:
  for (v5 -= 88; v10 > v4 && v6 > v7; v5 -= 88)
  {
    if (*(v6 - 1) < *(v10 - 1))
    {
      v15 = v6 - 88;
      v13 = v5 + 88 == v6;
      v6 -= 88;
      if (!v13)
      {
        memmove(v5, v15, 0x58uLL);
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 88)
    {
      memmove(v5, v10 - 88, 0x58uLL);
    }

    v10 -= 88;
  }

LABEL_28:
  v16 = (v10 - v4) / 88;
  if (v6 != v4 || v6 >= &v4[88 * v16])
  {
    memmove(v6, v4, 88 * v16);
  }

  return 1;
}

uint64_t sub_1DD3CDD14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DD3CDD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = type metadata accessor for ContactResolver.SignalSet(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = type metadata accessor for Contact(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v42 - v16;
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  OUTLINED_FUNCTION_0();
  v49 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2();
  v22 = v21 - v20;
  v23 = *v2;
  v24 = *(v2 + 1);
  v25 = *(v2 + 2);
  v26 = *(a1 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  if (v26)
  {
    v43 = v23;
    v44 = v25;
    v45 = v24;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1DD42B564(0, v26, 0);
    v27 = v53;
    v28 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v47 = *(v14 + 72);
    v48 = v4;
    while (1)
    {
      v29 = v51;
      sub_1DD3C68F8(v28, v51);
      sub_1DD3CE214(v29, v12, type metadata accessor for Contact);
      v30 = v29 + *(v50 + 36);
      sub_1DD3CE214(v30, v8, type metadata accessor for ContactResolver.SignalSet);
      if (*(v30 + 361) != 1)
      {
        break;
      }

      v31 = *(v30 + 368) * -0.001 + 1.01;
      v32 = v30 + v4[33];
      if (*(v32 + 9) & 1) != 0 && (*(v32 + 8))
      {
        goto LABEL_9;
      }

LABEL_10:
      if (*(v30 + v4[44]) == 1)
      {
        goto LABEL_13;
      }

LABEL_14:
      if (*(v30 + v4[36]) == 1)
      {
        goto LABEL_15;
      }

LABEL_16:
      sub_1DD3CE274();
      v34 = MEMORY[0x1E69E7CC0];
      v35 = sub_1DD63FC88();
      sub_1DD3C6968(v51);
      v36 = v12;
      sub_1DD3CE2C8(v12, v22, type metadata accessor for Contact);
      v37 = v8;
      sub_1DD3CE2C8(v8, v22 + matched[5], type metadata accessor for ContactResolver.SignalSet);
      v38 = v22 + matched[6];
      *v38 = 0;
      *(v38 + 8) = 0;
      *(v38 + 16) = v34;
      *(v22 + matched[7]) = v35;
      *(v22 + matched[8]) = v31;
      *(v22 + matched[9]) = 1;
      v53 = v27;
      v40 = *(v27 + 16);
      v39 = *(v27 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1DD42B564(v39 > 1, v40 + 1, 1);
        v27 = v53;
      }

      *(v27 + 16) = v40 + 1;
      sub_1DD3CE2C8(v22, v27 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v40, type metadata accessor for ContactMatchRuntimeData);
      v28 += v47;
      --v26;
      v8 = v37;
      v12 = v36;
      v4 = v48;
      if (!v26)
      {
        v25 = v44;
        v24 = v45;
        LOBYTE(v23) = v43;
        goto LABEL_23;
      }
    }

    v33 = v30 + v4[33];
    if (*(v33 + 9) != 1)
    {
      v31 = 0.0;
      if ((*(v30 + v4[44]) & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_13:
      v31 = v31 + 0.5;
      goto LABEL_14;
    }

    v31 = 0.0;
    if ((*(v33 + 8) & 1) == 0)
    {
      if ((*(v30 + v4[44]) & 1) == 0)
      {
LABEL_21:
        if ((*(v30 + v4[36]) & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_15:
        v31 = v31 + 1.0;
        goto LABEL_16;
      }

      goto LABEL_13;
    }

LABEL_9:
    v31 = v31 + 1.0;
    goto LABEL_10;
  }

LABEL_23:
  v52 = v23;
  sub_1DD426AF4(v27, &v52, v24, v25, v46);
}

uint64_t sub_1DD3CE214(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1DD3CE274()
{
  result = qword_1EE165290;
  if (!qword_1EE165290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165290);
  }

  return result;
}

uint64_t sub_1DD3CE2C8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DD3CE328()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6444F0;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  type metadata accessor for DateTime();
  swift_allocObject();
  OUTLINED_FUNCTION_1_12();
  *(inited + 56) = OUTLINED_FUNCTION_0_18(9, v1, v2, v3, v4, v5, v6, v7);
  *(inited + 64) = xmmword_1DD643620;
  *(inited + 80) = 0;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_1_12();
  *(inited + 88) = OUTLINED_FUNCTION_0_18(10, v8, v9, v10, v11, v12, v13, v14);
  *(inited + 96) = xmmword_1DD643660;
  *(inited + 112) = 0;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_1_12();
  *(inited + 120) = OUTLINED_FUNCTION_0_18(10, v15, v16, v17, v18, v19, v20, v21);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

void sub_1DD3CE424(void *a1)
{
  sub_1DD3D00A4(a1);
  [a1 handlingStatus];
  sub_1DD3CE4D0(a1);
  if (v1)
  {
  }
}

void sub_1DD3CE4D0(void *a1)
{
  v2 = MEMORY[0x1E12B3350]();
  sub_1DD3CF890(a1, &v3, &v4);
  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1DD3CE548(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v82 = a7;
  v92 = a6;
  v80 = a5;
  v81 = a4;
  v88 = a1;
  v9 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v84 = &v79 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v79 = &v79 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v89 = &v79 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v79 - v25;
  v27 = swift_allocObject();
  v87 = v27;
  *(v27 + 16) = MEMORY[0x1E69E7CC0];
  v28 = v27 + 16;
  v94 = a2;
  v95 = v11;
  v30 = *(v11 + 16);
  v29 = v11 + 16;
  v30(v26, a2, v9);
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v9);
  v91 = a3;
  v93 = v30;
  v30(v23, a3, v9);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v9);
  v31 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v32 = sub_1DD5982F0(v26, v23, 0, 0, 0);
  v86 = v28;
  v83 = v32;
  if (v88)
  {
    v90 = v88;
  }

  else
  {
    v33 = v32;
    v34 = [BiomeLibrary() App];
    swift_unknownObjectRelease();
    v35 = [v34 Intent];
    swift_unknownObjectRelease();
    v90 = [v35 publisherWithOptions_];
  }

  v36 = v93;
  v93(v89, v94, v9);
  v37 = v29;
  v38 = v79;
  v36(v79, v91, v9);
  v39 = v95;
  v40 = *(v95 + 80);
  v41 = (v40 + 32) & ~v40;
  v42 = (v13 + v40 + v41) & ~v40;
  v43 = v42 + v13;
  v44 = swift_allocObject();
  v45 = v80;
  v80 = v37;
  v46 = v92;
  *(v44 + 16) = v45;
  *(v44 + 24) = v46;
  v47 = *(v39 + 32);
  v47(v44 + v41, v89, v9);
  v47(v44 + v42, v38, v9);
  *(v44 + v43) = v81;
  v48 = v87;
  *(v44 + (v43 & 0xFFFFFFFFFFFFFFF8) + 8) = v87;
  v100 = sub_1DD3CFEF0;
  v101 = v44;
  aBlock = MEMORY[0x1E69E9820];
  v97 = 1107296256;
  v98 = sub_1DD3CF7E8;
  v99 = &block_descriptor_1;
  v49 = _Block_copy(&aBlock);

  v50 = v88;

  v51 = v90;
  v52 = [v90 filterWithIsIncluded_];
  _Block_release(v49);
  v100 = nullsub_1;
  v101 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v97 = 1107296256;
  v98 = sub_1DD59B528;
  v99 = &block_descriptor_6;
  v53 = _Block_copy(&aBlock);
  v54 = swift_allocObject();
  v55 = v82;
  *(v54 + 16) = v48;
  *(v54 + 24) = v55;
  v100 = sub_1DD3CFFBC;
  v101 = v54;
  aBlock = MEMORY[0x1E69E9820];
  v97 = 1107296256;
  v98 = sub_1DD3CF7E8;
  v99 = &block_descriptor_12;
  v56 = _Block_copy(&aBlock);

  v57 = [v52 sinkWithCompletion:v53 shouldContinue:v56];
  _Block_release(v56);
  _Block_release(v53);

  if (qword_1EE166258 != -1)
  {
    swift_once();
  }

  v58 = sub_1DD63F9F8();
  __swift_project_value_buffer(v58, qword_1EE16F0A8);
  v59 = v84;
  v60 = v93;
  v93(v84, v94, v9);
  v61 = v85;
  v60(v85, v91, v9);

  v62 = sub_1DD63F9D8();
  v63 = sub_1DD640368();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    aBlock = v94;
    *v64 = 134218498;
    swift_beginAccess();
    *(v64 + 4) = *(*(v48 + 16) + 16);

    *(v64 + 12) = 2080;
    sub_1DD3D016C(&qword_1EE1663F8, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v65 = sub_1DD640CB8();
    v90 = v51;
    v67 = v66;
    v68 = *(v95 + 8);
    v68(v59, v9);
    v69 = sub_1DD39565C(v65, v67, &aBlock);

    *(v64 + 14) = v69;
    *(v64 + 22) = 2080;
    v70 = v85;
    v71 = sub_1DD640CB8();
    v73 = v72;
    v68(v70, v9);
    v48 = v87;
    v74 = sub_1DD39565C(v71, v73, &aBlock);

    *(v64 + 24) = v74;
    _os_log_impl(&dword_1DD38D000, v62, v63, "Biome: Fetched %ld interaction events with Date between %s and %s", v64, 0x20u);
    v75 = v94;
    swift_arrayDestroy();
    MEMORY[0x1E12B3DA0](v75, -1, -1);
    MEMORY[0x1E12B3DA0](v64, -1, -1);
  }

  else
  {

    v76 = *(v95 + 8);
    v76(v61, v9);
    v76(v59, v9);
  }

  swift_beginAccess();
  v77 = *(v48 + 16);

  return v77;
}

uint64_t sub_1DD3CEE10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v80 = sub_1DD63D078();
  v12 = *(v80 - 8);
  *&v13 = MEMORY[0x1EEE9AC00](v80).n128_u64[0];
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 eventBody];
  if (!v16)
  {
    if (qword_1EE166258 != -1)
    {
      swift_once();
    }

    v24 = sub_1DD63F9F8();
    __swift_project_value_buffer(v24, qword_1EE16F0A8);
    v25 = sub_1DD63F9D8();
    v26 = sub_1DD640368();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1DD38D000, v25, v26, "Skipping BMStoreEvent that lacks a BMAppIntent eventBody", v27, 2u);
      MEMORY[0x1E12B3DA0](v27, -1, -1);
    }

    return 0;
  }

  v17 = v16;
  v79 = v12;
  v18 = [v16 absoluteTimestamp];
  if (!v18)
  {
    if (qword_1EE166258 != -1)
    {
      swift_once();
    }

    v28 = sub_1DD63F9F8();
    __swift_project_value_buffer(v28, qword_1EE16F0A8);
    v29 = sub_1DD63F9D8();
    v30 = sub_1DD640368();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1DD38D000, v29, v30, "Skipping BMStoreEvent that lacks a BMAppIntent absoluteTimestamp", v31, 2u);
      MEMORY[0x1E12B3DA0](v31, -1, -1);
    }

    return 0;
  }

  v19 = v18;
  sub_1DD63D048();

  if (!a3)
  {
    goto LABEL_27;
  }

  v20 = sub_1DD3D00A4(v17);
  if (!v21)
  {

    goto LABEL_22;
  }

  if (v20 == a2 && v21 == a3)
  {

    goto LABEL_27;
  }

  v23 = sub_1DD640CD8();

  if ((v23 & 1) == 0)
  {
LABEL_22:
    if (qword_1EE166258 != -1)
    {
      swift_once();
    }

    v32 = sub_1DD63F9F8();
    __swift_project_value_buffer(v32, qword_1EE16F0A8);
    v33 = v17;
    v34 = sub_1DD63F9D8();
    v35 = sub_1DD640368();

    if (!os_log_type_enabled(v34, v35))
    {

LABEL_46:
      (*(v79 + 8))(v15, v80);
      return 0;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v82 = v37;
    *v36 = 136315138;
    v81[0] = sub_1DD3D00A4(v33);
    v81[1] = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDF0, &unk_1DD644950);
    v39 = sub_1DD63FE38();
    v41 = sub_1DD39565C(v39, v40, &v82);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_1DD38D000, v34, v35, "Skipping BMAppIntent. event intentClass=%s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E12B3DA0](v37, -1, -1);
    MEMORY[0x1E12B3DA0](v36, -1, -1);

LABEL_45:
    goto LABEL_46;
  }

LABEL_27:
  sub_1DD63CF48();
  v43 = v42;
  sub_1DD63CF48();
  v45 = v44;
  sub_1DD63CF48();
  if (v45 < v43 || v46 < v45)
  {
    v48 = v46;
    if (qword_1EE166258 != -1)
    {
      swift_once();
    }

    v49 = sub_1DD63F9F8();
    __swift_project_value_buffer(v49, qword_1EE16F0A8);
    v50 = sub_1DD63F9D8();
    v51 = sub_1DD640368();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 134218496;
      *(v52 + 4) = v45;
      *(v52 + 12) = 2048;
      *(v52 + 14) = v43;
      *(v52 + 22) = 2048;
      *(v52 + 24) = v48;
      _os_log_impl(&dword_1DD38D000, v50, v51, "Skipping BMAppIntent, out of date range. %f not in [%f, %f]", v52, 0x20u);
      MEMORY[0x1E12B3DA0](v52, -1, -1);
      v53 = v17;
    }

    else
    {
      v53 = v50;
      v50 = v17;
    }

    v59 = v79;

    (*(v59 + 8))(v15, v80);
    return 0;
  }

  v54 = v17;
  sub_1DD3CE424(v54);
  v60 = v55;
  v61 = v56;
  v62 = v57;
  v63 = v58;
  v64 = v54;
  if (a6 != 2 && [v54 donatedBySiri]!= (a6 & 1))
  {
    if (qword_1EE166258 != -1)
    {
      swift_once();
    }

    v65 = sub_1DD63F9F8();
    __swift_project_value_buffer(v65, qword_1EE16F0A8);

    v66 = v63;
    v34 = sub_1DD63F9D8();
    v67 = sub_1DD640368();

    if (!os_log_type_enabled(v34, v67))
    {

      goto LABEL_46;
    }

    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v81[0] = v69;
    *v68 = 136315138;
    LOBYTE(v82) = [v66 _donatedBySiri];
    v70 = sub_1DD63FE38();
    v72 = sub_1DD39565C(v70, v71, v81);

    *(v68 + 4) = v72;
    _os_log_impl(&dword_1DD38D000, v34, v67, "Skipping BMAppIntent. event isDonatedBySiri=%s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v69);
    MEMORY[0x1E12B3DA0](v69, -1, -1);
    MEMORY[0x1E12B3DA0](v68, -1, -1);

    goto LABEL_45;
  }

  swift_beginAccess();

  v74 = v63;
  sub_1DD3BDF64();
  v75 = *(*(a7 + 16) + 16);
  sub_1DD3BE128(v75);
  v76 = *(a7 + 16);
  *(v76 + 16) = v75 + 1;
  v77 = (v76 + 32 * v75);
  v77[4] = v60;
  v77[5] = v61;
  v77[6] = v62;
  v77[7] = v74;
  *(a7 + 16) = v76;
  swift_endAccess();

  (*(v79 + 8))(v15, v80);
  return 1;
}

uint64_t sub_1DD3CF7E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

void sub_1DD3CF890(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1DD3D0108(a1);
  if (v8 >> 60 == 15)
  {
    if (qword_1EE166258 != -1)
    {
      swift_once();
    }

    v9 = sub_1DD63F9F8();
    __swift_project_value_buffer(v9, qword_1EE16F0A8);
    v10 = a1;
    v11 = sub_1DD63F9D8();
    v12 = sub_1DD640378();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = v10;
      v15 = v10;
      _os_log_impl(&dword_1DD38D000, v11, v12, "Biome: BMIntentEvent serialized INInteraction is invalid. event=%@", v13, 0xCu);
      sub_1DD3CBE0C(v14);
      MEMORY[0x1E12B3DA0](v14, -1, -1);
      MEMORY[0x1E12B3DA0](v13, -1, -1);
    }

    type metadata accessor for InferenceError();
    swift_allocObject();
    v16 = sub_1DD4DE96C(2, 0, 0xE000000000000000, 0xD00000000000006BLL, 0x80000001DD66A620, 0xD000000000000027, 0x80000001DD66A690, 93, MEMORY[0x1E69E7CC0], 1);
    sub_1DD3D016C(&qword_1EE1663F0, type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
    v17 = swift_allocError();
    *v18 = v16;
    swift_willThrow();
    goto LABEL_9;
  }

  v19 = v7;
  v20 = v8;
  v21 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
  sub_1DD3D01B4(v19, v20);
  v22 = sub_1DD3CFFC4(v19, v20);
  v17 = v3;
  if (v3)
  {
LABEL_8:
    sub_1DD3AD77C(v19, v20);
LABEL_9:
    *a2 = v17;
    return;
  }

  v23 = v22;
  sub_1DD3D020C();
  sub_1DD63FDD8();
  v24 = sub_1DD640528();

  if (!v24)
  {
    if (qword_1EE166258 != -1)
    {
      swift_once();
    }

    v36 = sub_1DD63F9F8();
    __swift_project_value_buffer(v36, qword_1EE16F0A8);
    v37 = a1;
    v38 = sub_1DD63F9D8();
    v39 = sub_1DD640378();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      *(v40 + 4) = v37;
      *v41 = v37;
      v42 = v37;
      _os_log_impl(&dword_1DD38D000, v38, v39, "Biome: BMIntentEvent serialized INInteraction is invalid. event=%@", v40, 0xCu);
      sub_1DD3CBE0C(v41);
      MEMORY[0x1E12B3DA0](v41, -1, -1);
      MEMORY[0x1E12B3DA0](v40, -1, -1);
    }

    type metadata accessor for InferenceError();
    swift_allocObject();
    v43 = sub_1DD4DE96C(2, 0, 0xE000000000000000, 0xD00000000000006BLL, 0x80000001DD66A620, 0xD000000000000027, 0x80000001DD66A690, 100, MEMORY[0x1E69E7CC0], 1);
    sub_1DD3D016C(&qword_1EE1663F0, type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
    v17 = swift_allocError();
    *v44 = v43;
    swift_willThrow();

    goto LABEL_8;
  }

  if (qword_1EE166258 != -1)
  {
    swift_once();
  }

  v25 = sub_1DD63F9F8();
  __swift_project_value_buffer(v25, qword_1EE16F0A8);
  v26 = v24;
  v27 = sub_1DD63F9D8();
  v28 = sub_1DD640368();

  if (os_log_type_enabled(v27, v28))
  {
    v47 = v23;
    v29 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v49 = v46;
    *v29 = 136315138;
    v48 = v26;
    v30 = [v26 intent];
    v31 = [v30 _className];

    v32 = sub_1DD63FDD8();
    log = v27;
    v34 = v33;

    v35 = sub_1DD39565C(v32, v34, &v49);

    *(v29 + 4) = v35;
    v26 = v48;
    _os_log_impl(&dword_1DD38D000, log, v28, "Got interaction from extractInteraction: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x1E12B3DA0](v46, -1, -1);
    MEMORY[0x1E12B3DA0](v29, -1, -1);
    sub_1DD3AD77C(v19, v20);
  }

  else
  {
    sub_1DD3AD77C(v19, v20);
  }

  *a3 = v26;
}

uint64_t sub_1DD3CFEF0(void *a1)
{
  v3 = *(sub_1DD63D078() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = v7 + v6;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + (v8 & 0xFFFFFFFFFFFFFFF8) + 8);
  v12 = *(v1 + v8);

  return sub_1DD3CEE10(a1, v9, v10, v1 + v5, v1 + v7, v12, v11);
}

double block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_1DD3CFFC4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1DD63CF08();
  v11[0] = 0;
  v7 = [v3 initForReadingFromData:v6 error:v11];

  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    v9 = v11[0];
    sub_1DD63CD98();

    swift_willThrow();
  }

  sub_1DD3AD790(a1, a2);
  return v7;
}

uint64_t sub_1DD3D00A4(void *a1)
{
  v1 = [a1 intentClass];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD63FDD8();

  return v3;
}

uint64_t sub_1DD3D0108(void *a1)
{
  v1 = [a1 interaction];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD63CF28();

  return v3;
}

uint64_t sub_1DD3D016C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1DD3D01B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

unint64_t sub_1DD3D020C()
{
  result = qword_1EE166248;
  if (!qword_1EE166248)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE166248);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD3D025C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DD3D029C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1DD3D0314(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1DD3D0354(uint64_t result, int a2, int a3)
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

uint64_t sub_1DD3D03A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1DD3D03E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DD3D0448()
{
  result = qword_1ECCDC008;
  if (!qword_1ECCDC008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC008);
  }

  return result;
}

uint64_t sub_1DD3D049C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1;
    v45 = MEMORY[0x1E69E7CC0];
    sub_1DD42B3E4(0, v3, 0);
    v5 = v45;
    result = sub_1DD55B198();
    v8 = result;
    v10 = v9;
    v11 = 0;
    v44 = v4 + 56;
    v37 = v4 + 64;
    v39 = v4;
    v40 = a2;
    v38 = v3;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v8 < 1 << *(v4 + 32))
      {
        v12 = v8 >> 6;
        if ((*(v44 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
        {
          goto LABEL_37;
        }

        if (*(v4 + 36) != v7)
        {
          goto LABEL_38;
        }

        v43 = v7;
        v41 = v11;
        v13 = (*(v4 + 48) + 16 * v8);
        v15 = *v13;
        v14 = v13[1];
        v16 = *(a2 + 16);

        v42 = v10;
        if (v16)
        {
          result = sub_1DD3978DC();
          if (v17)
          {
            v18 = *(*(a2 + 56) + 8 * result) * 1000.0;
            v19 = round(v18);
            v20 = v19 >= 9.22337204e18 || v19 <= -9.22337204e18;
            v21 = llround(v18);
            if (v20)
            {
              v22 = 0;
            }

            else
            {
              v22 = v21;
            }
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          v22 = 0;
        }

        v23 = v43;
        v25 = *(v5 + 16);
        v24 = *(v5 + 24);
        if (v25 >= v24 >> 1)
        {
          result = sub_1DD42B3E4(v24 > 1, v25 + 1, 1);
          v23 = v43;
        }

        *(v5 + 16) = v25 + 1;
        v26 = (v5 + 24 * v25);
        v26[4] = v15;
        v26[5] = v14;
        v26[6] = v22;
        if (v42)
        {
          goto LABEL_42;
        }

        v4 = v39;
        a2 = v40;
        v27 = 1 << *(v39 + 32);
        if (v8 >= v27)
        {
          goto LABEL_39;
        }

        v28 = *(v44 + 8 * v12);
        if ((v28 & (1 << v8)) == 0)
        {
          goto LABEL_40;
        }

        if (*(v39 + 36) != v23)
        {
          goto LABEL_41;
        }

        v29 = v28 & (-2 << (v8 & 0x3F));
        if (v29)
        {
          v27 = __clz(__rbit64(v29)) | v8 & 0x7FFFFFFFFFFFFFC0;
          v30 = v38;
        }

        else
        {
          v31 = v5;
          v32 = v12 << 6;
          v33 = v12 + 1;
          v30 = v38;
          v34 = (v37 + 8 * v12);
          while (v33 < (v27 + 63) >> 6)
          {
            v36 = *v34++;
            v35 = v36;
            v32 += 64;
            ++v33;
            if (v36)
            {
              result = sub_1DD3AA558(v8, v23, 0);
              v27 = __clz(__rbit64(v35)) + v32;
              goto LABEL_29;
            }
          }

          result = sub_1DD3AA558(v8, v23, 0);
LABEL_29:
          v5 = v31;
        }

        v11 = v41 + 1;
        if (v41 + 1 == v30)
        {

          return v5;
        }

        v10 = 0;
        v7 = *(v39 + 36);
        v8 = v27;
        if (v27 < 0)
        {
          break;
        }
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
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void sub_1DD3D079C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 == a4 && a2 == a5;
  if (v5 || (sub_1DD640CD8() & 1) != 0)
  {

    sub_1DD3C3778();
  }
}

void sub_1DD3D0808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DD63FD28();

  sub_1DD416068();
}

uint64_t sub_1DD3D0848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DD640E28();
  sub_1DD63FD28();
  sub_1DD416068();
  return sub_1DD640E78();
}

uint64_t sub_1DD3D08C8(uint64_t a1)
{
  sub_1DD640E28();
  sub_1DD63FD28();
  sub_1DD416068();
  return sub_1DD640E78();
}

double sub_1DD3D0944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 1.0;
  if (a3 != a1 || a4 != a2)
  {
    v6 = sub_1DD640CD8();
    result = 0.0;
    if (v6)
    {
      return 1.0;
    }
  }

  return result;
}

void sub_1DD3D099C(void *a1@<X8>)
{
  nullsub_1();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DD3D09CC()
{
  type metadata accessor for StopwordsRemover();
  swift_allocObject();
  result = sub_1DD5E1988(300, 0);
  qword_1ECCDC000 = result;
  return result;
}

uint64_t sub_1DD3D0A14(uint64_t a1, uint64_t a2)
{
  if (qword_1ECCDB030 != -1)
  {
    OUTLINED_FUNCTION_0_19(&qword_1ECCDB030);
  }

  v4 = sub_1DD5E19F0(a1, a2);

  return sub_1DD41859C(v4);
}

uint64_t sub_1DD3D0A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ECCDB030 != -1)
  {
    OUTLINED_FUNCTION_0_19(&qword_1ECCDB030);
  }

  v6 = sub_1DD5E19F0(a1, a2);
  v7 = sub_1DD41859C(v6);

  sub_1DD3D1D74(v7, a3);
}

uint64_t sub_1DD3D0B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1DD3D0A14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD3D0B94(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v19 = a2;
  v3 = sub_1DD63D078();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  v2[8](v8);
  (*(v4 + 16))(v6, v10, v3);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = (v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v4 + 32))(v13 + v11, v6, v3);
  memcpy((v13 + v12), v2, 0x58uLL);
  v14 = (v13 + ((v12 + 95) & 0xFFFFFFFFFFFFFFF8));
  v15 = v19;
  *v14 = v18;
  v14[1] = v15;
  sub_1DD3D23E0(v2, v20);

  sub_1DD63D9C8();

  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_1DD3D0D70(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  v7 = sub_1DD63D4F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a2;
  v19 = a3;

  sub_1DD3EBE9C();
  sub_1DD3D10B4(v11);
  v13 = v12;

  v14 = *(a3 + 16);

  v15 = sub_1DD3D049C(v14, v13);

  *v10 = sub_1DD3B80F8(v15);
  (*(v8 + 104))(v10, *MEMORY[0x1E69D2B60], v7);
  a4(v10);
  return (*(v8 + 8))(v10, v7);
}

id sub_1DD3D0F08(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DD63D078();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v18 - v11;
  v13 = *a1;
  result = [v13 absoluteTimestamp];
  if (result)
  {
    v15 = result;
    sub_1DD63D048();

    (*(v6 + 32))(v12, v8, v5);
    if ([v13 playbackState] == 1)
    {
      sub_1DD63CF88();
      v17 = v16;
      (*(v6 + 8))(v12, v5);
      return (v17 < *(a3 + 40));
    }

    else
    {
      (*(v6 + 8))(v12, v5);
      return 0;
    }
  }

  return result;
}

void sub_1DD3D10B4(uint64_t a1)
{
  v2 = sub_1DD3CC020();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v48 = a1 & 0xFFFFFFFFFFFFFF8;
  v43 = a1;
  v52 = a1 + 32;
  v50 = xmmword_1DD6444F0;
  v45 = MEMORY[0x1E69E7CC0];
  v47 = v2;
  v46 = a1 & 0xC000000000000001;
LABEL_2:
  v5 = v48;
  while (1)
  {
    if (v3 == v2)
    {
      v33 = *(v44 + 48);
      v32 = *(v44 + 56);
      v34 = sub_1DD63FE58();
      v36 = v35;
      v37 = *(v32 + 8);
      v53[3] = v33;
      v53[4] = v32;
      __swift_allocate_boxed_opaque_existential_1(v53);
      v37(v34, v36, v33, v32);
      v38 = sub_1DD41865C();
      MEMORY[0x1EEE9AC00](v38);
      v42[2] = v53;
      sub_1DD5E7DC8(sub_1DD3D2438, v42, v38);
      v40 = v39;

      v41 = sub_1DD3D15FC(v40);
      sub_1DD3D184C(v41);

      __swift_destroy_boxed_opaque_existential_1(v53);
      return;
    }

    if (v4)
    {
      v6 = MEMORY[0x1E12B2C10](v3, v43);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_35;
      }

      v6 = *(v52 + 8 * v3);
    }

    v7 = v6;
    if (__OFADD__(v3++, 1))
    {
      break;
    }

    v9 = sub_1DD4EF3B8(v6);
    if (v10)
    {
      v11 = v10;
      v49 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC018, &unk_1DD644810);
      inited = swift_initStackObject();
      *(inited + 16) = v50;
      *(inited + 32) = sub_1DD3CA460(v7, &selRef_title);
      *(inited + 40) = v13;
      *(inited + 48) = sub_1DD3CA460(v7, &selRef_artist);
      *(inited + 56) = v14;
      v15 = 0;
      *(inited + 64) = sub_1DD3CA460(v7, &selRef_album);
      *(inited + 72) = v16;
      v17 = MEMORY[0x1E69E7CC0];
LABEL_10:
      v18 = (inited + 40 + 16 * v15);
      while (v15 != 3)
      {
        if (v15 > 2)
        {
          __break(1u);
          goto LABEL_34;
        }

        v19 = *v18;
        if (*v18)
        {
          v20 = HIBYTE(v19) & 0xF;
          if ((v19 & 0x2000000000000000) == 0)
          {
            v20 = *(v18 - 1) & 0xFFFFFFFFFFFFLL;
          }

          if (v20)
          {
            v51 = sub_1DD63FE58();
            v22 = v21;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1DD3BE2A4();
              v17 = v25;
            }

            v23 = *(v17 + 16);
            if (v23 >= *(v17 + 24) >> 1)
            {
              sub_1DD3BE2A4();
              v17 = v26;
            }

            ++v15;
            *(v17 + 16) = v23 + 1;
            v24 = v17 + 16 * v23;
            *(v24 + 32) = v51;
            *(v24 + 40) = v22;
            v2 = v47;
            v4 = v46;
            v5 = v48;
            goto LABEL_10;
          }
        }

        v18 += 2;
        ++v15;
      }

      swift_setDeallocating();
      sub_1DD46CB38();
      if (!*(v17 + 16))
      {

        continue;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3BF2A0();
        v45 = v30;
      }

      v27 = *(v45 + 16);
      if (v27 >= *(v45 + 24) >> 1)
      {
        sub_1DD3BF2A0();
        v45 = v31;
      }

      v28 = v45;
      *(v45 + 16) = v27 + 1;
      v29 = (v28 + 24 * v27);
      v29[4] = v49;
      v29[5] = v11;
      v29[6] = v17;
      goto LABEL_2;
    }
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1DD3D14D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v12[2] = a2;
  v7 = sub_1DD6046CC(sub_1DD3D2454, v12, v6);
  v8 = sub_1DD4B7EC0(v7);
  v10 = v9;

  if (v10)
  {
    v5 = 0;
    v4 = 0;
    v8 = 0;
  }

  else
  {
  }

  *a3 = v5;
  a3[1] = v4;
  a3[2] = v8;
  return result;
}

void sub_1DD3D1580(uint64_t *a1@<X0>, void *a2@<X1>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  *a3 = (*(v7 + 16))(v4, v5, v6, v7);
}

uint64_t sub_1DD3D184C(uint64_t a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E69E7CC8];
  v43 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v42 = v7;
  while (1)
  {
    v11 = v9;
    if (!v6)
    {
      break;
    }

LABEL_9:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v9 << 6);
    v14 = (*(v1 + 48) + 16 * v13);
    v15 = v14[1];
    v41 = *v14;
    v16 = *(*(v1 + 56) + 8 * v13);
    v17 = *(v16 + 16);
    if (v17)
    {
      v39 = v1;
      v40 = v2;

      sub_1DD42B644(0, v17, 0);
      v19 = *(v10 + 16);
      v20 = (v16 + 48);
      do
      {
        v21 = *v20;
        v22 = *(v10 + 24);
        v18 = v19 + 1;
        if (v19 >= v22 >> 1)
        {
          sub_1DD42B644(v22 > 1, v19 + 1, 1);
        }

        *(v10 + 16) = v18;
        *(v10 + 8 * v19 + 32) = v21;
        v20 += 3;
        ++v19;
        --v17;
      }

      while (v17);
      v1 = v39;
      v7 = v42;
LABEL_18:
      v23 = *(v10 + 32);
      v24 = v18 - 1;
      if (v18 != 1)
      {
        v25 = (v10 + 40);
        do
        {
          v26 = *v25++;
          v27 = v26;
          if (v23 < v26)
          {
            v23 = v27;
          }

          --v24;
        }

        while (v24);
      }

      if (*(v40 + 24) <= *(v40 + 16))
      {
        sub_1DD4E6438();
      }

      v2 = v43;
      sub_1DD640E28();
      sub_1DD63FD28();
      result = sub_1DD640E78();
      v28 = v43 + 64;
      v29 = -1 << *(v43 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v43 + 64 + 8 * (v30 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v29) >> 6;
        v10 = MEMORY[0x1E69E7CC0];
        v33 = v15;
        while (++v31 != v35 || (v34 & 1) == 0)
        {
          v36 = v31 == v35;
          if (v31 == v35)
          {
            v31 = 0;
          }

          v34 |= v36;
          v37 = *(v28 + 8 * v31);
          if (v37 != -1)
          {
            v32 = __clz(__rbit64(~v37)) + (v31 << 6);
            goto LABEL_34;
          }
        }

        goto LABEL_37;
      }

      v32 = __clz(__rbit64((-1 << v30) & ~*(v43 + 64 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
      v10 = MEMORY[0x1E69E7CC0];
      v33 = v15;
LABEL_34:
      *(v28 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      v38 = (*(v43 + 48) + 16 * v32);
      *v38 = v41;
      v38[1] = v33;
      *(*(v43 + 56) + 8 * v32) = v23;
      ++*(v43 + 16);
    }

    else
    {
      v18 = *(v10 + 16);

      v7 = v42;
      if (v18)
      {
        v40 = v2;
        goto LABEL_18;
      }
    }
  }

  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v9);
    ++v11;
    if (v6)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1DD3D1C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DD3D22E0();

  return MEMORY[0x1EEE40138](a1, a2, a3, a4, v8);
}

uint64_t sub_1DD3D1C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DD3D22E0();

  return MEMORY[0x1EEE40118](a1, a2, a3, a4, v8);
}

unint64_t *sub_1DD3D1CE4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1DD3D1F3C(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t *sub_1DD3D1D74(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v8 = (v13 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1DD57634C(0, v6, v8);
    sub_1DD3D1F3C(v8, v6, a2, a1);
    v10 = v9;
  }

  else
  {
    v12 = swift_slowAlloc();

    v10 = sub_1DD3D1CE4(v12, v6, a2, a1);

    MEMORY[0x1E12B3DA0](v12, -1, -1);
  }

  return v10;
}

void sub_1DD3D1F3C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v28 = 0;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(a3 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = a4 + 56;
LABEL_28:
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v51 = (v31 - 1) & v31;
LABEL_35:
      v49 = v34 | (v28 << 6);
      v37 = (*(v5 + 48) + 16 * v49);
      v39 = *v37;
      v38 = v37[1];
      sub_1DD640E28();

      sub_1DD63FD28();
      v40 = sub_1DD640E78();
      v41 = ~(-1 << *(v4 + 32));
      do
      {
        v42 = v40 & v41;
        if (((*(v33 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
        {

          v4 = a4;
          v31 = v51;
          goto LABEL_28;
        }

        v43 = (*(a4 + 48) + 16 * v42);
        if (*v43 == v39 && v43[1] == v38)
        {
          break;
        }

        v45 = sub_1DD640CD8();
        v40 = v42 + 1;
      }

      while ((v45 & 1) == 0);

      *(result + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v27 = __OFADD__(v53++, 1);
      v4 = a4;
      v31 = v51;
      if (v27)
      {
        goto LABEL_50;
      }
    }

    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v32)
      {
LABEL_46:

        sub_1DD515BB8(result, a2, v53, v5);
        return;
      }

      v36 = *(v5 + 56 + 8 * v28);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v51 = (v36 - 1) & v36;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v46 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v48 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v50 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      sub_1DD640E28();

      sub_1DD63FD28();
      v18 = sub_1DD640E78();
      v19 = v5;
      v20 = ~(-1 << *(v5 + 32));
      do
      {
        v21 = v18 & v20;
        v22 = (v18 & v20) >> 6;
        v23 = 1 << (v18 & v20);
        if ((v23 & *(v11 + 8 * v22)) == 0)
        {

          v5 = v19;
          v4 = a4;
          v10 = v48;
          v9 = v50;
          goto LABEL_6;
        }

        v24 = (*(v19 + 48) + 16 * v21);
        if (*v24 == v17 && v24[1] == v16)
        {
          break;
        }

        v26 = sub_1DD640CD8();
        v18 = v21 + 1;
      }

      while ((v26 & 1) == 0);

      v9 = v50;
      result[v22] |= v23;
      v27 = __OFADD__(v53++, 1);
      v5 = v19;
      v4 = a4;
      v10 = v48;
      if (v27)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v46 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v50 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

unint64_t sub_1DD3D22E0()
{
  result = qword_1ECCDC010;
  if (!qword_1ECCDC010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC010);
  }

  return result;
}

uint64_t sub_1DD3D2334(uint64_t *a1)
{
  v3 = *(sub_1DD63D078() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + ((v5 + 95) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DD3D0D70(a1, v1 + v4, v1 + v5, v6);
}

unint64_t sub_1DD3D2488()
{
  result = qword_1ECCDC020;
  if (!qword_1ECCDC020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC020);
  }

  return result;
}

uint64_t sub_1DD3D24DC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1DD4EC918();
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1DD3D3290(v6);
  return sub_1DD640968();
}

id sub_1DD3D2598()
{
  ObjectType = swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR____TtC13SiriInference20BiomeSiriUIProcessor_siriUIEvent);
  v3 = objc_allocWithZone(ObjectType);
  return BiomeSiriUIProcessor.init(siriUIEvent:)(v2);
}

uint64_t sub_1DD3D25D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v65 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v65 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCDC038, &qword_1DD644960);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v65 - v7;
  v9 = sub_1DD63D078();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v65 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v65 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v65 - v18;
  sub_1DD63CFE8();
  sub_1DD63D068();
  v20 = *MEMORY[0x1E69CF928];
  v21 = sub_1DD63F598();
  (*(*(v21 - 8) + 104))(v8, v20, v21);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v21);
  v69 = v10;
  v22 = *(v10 + 16);
  v71 = v19;
  v22(v5, v19, v9);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v9);
  v70 = v16;
  v23 = v16;
  v24 = v9;
  v22(v2, v23, v9);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v9);
  sub_1DD63F4A8();
  sub_1DD3D40D8(v2, &qword_1ECCDEBC0, &qword_1DD6445A0);
  sub_1DD3D40D8(v5, &qword_1ECCDEBC0, &qword_1DD6445A0);
  sub_1DD3D40D8(v8, qword_1ECCDC038, &qword_1DD644960);

  v72 = sub_1DD4D3D50(v25);
  sub_1DD3D24DC(&v72);

  v26 = v72;
  if (sub_1DD3CC020())
  {
    sub_1DD408BFC();
    if ((v26 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E12B2C10](0, v26);
    }

    else
    {
    }

    sub_1DD63C7A8();
    swift_allocObject();
    sub_1DD63C798();
    sub_1DD63F558();
    v27 = sub_1DD63F518();
    v29 = v28;
    sub_1DD3D412C(&qword_1EE160358, MEMORY[0x1E69CF908], MEMORY[0x1E69CF910]);
    sub_1DD63C788();
    sub_1DD3AD790(v27, v29);

    if (qword_1EE166258 != -1)
    {
      swift_once();
    }

    v49 = v24;
    v50 = sub_1DD63F9F8();
    __swift_project_value_buffer(v50, qword_1EE16F0A8);

    v51 = sub_1DD63F9D8();
    v52 = sub_1DD640358();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v72 = v54;
      *v53 = 136315138;
      v55 = sub_1DD63F548();
      v57 = sub_1DD39565C(v55, v56, &v72);

      *(v53 + 4) = v57;
      _os_log_impl(&dword_1DD38D000, v51, v52, "The intentEvent Type is: %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x1E12B3DA0](v54, -1, -1);
      MEMORY[0x1E12B3DA0](v53, -1, -1);
    }

    v58 = v70;
    if (sub_1DD63F548() == 0xD000000000000011 && 0x80000001DD66A780 == v59)
    {
      v61 = 1;
    }

    else
    {
      v61 = sub_1DD640CD8();
    }

    v63 = *(v69 + 8);
    v63(v58, v49);
    v63(v71, v49);
  }

  else
  {

    v30 = v70;
    if (qword_1EE166258 != -1)
    {
      swift_once();
    }

    v31 = sub_1DD63F9F8();
    __swift_project_value_buffer(v31, qword_1EE16F0A8);
    v32 = v66;
    v33 = v71;
    v22(v66, v71, v24);
    v34 = v67;
    v22(v67, v30, v24);
    v35 = sub_1DD63F9D8();
    v36 = sub_1DD640358();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v72 = v68;
      *v37 = 136315394;
      sub_1DD3D412C(&qword_1EE1663F8, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v38 = sub_1DD640CB8();
      v39 = v32;
      v41 = v40;
      v42 = *(v69 + 8);
      v42(v39, v24);
      v43 = sub_1DD39565C(v38, v41, &v72);

      *(v37 + 4) = v43;
      *(v37 + 12) = 2080;
      v44 = sub_1DD640CB8();
      v46 = v45;
      v42(v34, v24);
      v47 = sub_1DD39565C(v44, v46, &v72);

      *(v37 + 14) = v47;
      _os_log_impl(&dword_1DD38D000, v35, v36, "Fail to fetch intentStart event between %s and %s", v37, 0x16u);
      v48 = v68;
      swift_arrayDestroy();
      MEMORY[0x1E12B3DA0](v48, -1, -1);
      MEMORY[0x1E12B3DA0](v37, -1, -1);

      v42(v70, v24);
      v42(v71, v24);
    }

    else
    {

      v62 = *(v69 + 8);
      v62(v34, v24);
      v62(v32, v24);
      v62(v30, v24);
      v62(v33, v24);
    }

    v61 = 0;
  }

  return v61 & 1;
}

id BiomeSiriUIProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BiomeSiriUIProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DD3D3110(uint64_t a1)
{
  result = sub_1DD63F4C8();
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

uint64_t sub_1DD3D31E4(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DD3B5438;

  return sub_1DD5BACC8();
}

void sub_1DD3D3290(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1DD640CA8();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1DD4D32E0(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1DD3D355C(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1DD3D3370(0, v3, 1, a1);
  }
}

void sub_1DD3D3370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v30 = sub_1DD63D078();
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v25 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v31 = *a4;
    v14 = v31 + 8 * a3 - 8;
    v15 = a1 - a3;
    while (2)
    {
      v27 = v14;
      v28 = a3;
      v26 = v15;
      v16 = v14;
      do
      {

        sub_1DD63F508();
        v17 = v29;
        sub_1DD63F508();
        v18 = sub_1DD63CFB8();
        v19 = *v13;
        v20 = v17;
        v21 = v30;
        (*v13)(v20, v30);
        v19(v12, v21);

        if ((v18 & 1) == 0)
        {
          break;
        }

        if (!v31)
        {
          __break(1u);
          return;
        }

        v22 = *v16;
        *v16 = v16[1];
        v16[1] = v22;
        --v16;
      }

      while (!__CFADD__(v15++, 1));
      a3 = v28 + 1;
      v14 = v27 + 8;
      v15 = v26 - 1;
      if (v28 + 1 != v25)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1DD3D355C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v108 = a1;
  v120 = sub_1DD63D078();
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v118 = &v106 - v9;
  v113 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v120 = *v108;
    if (!v120)
    {
      goto LABEL_135;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v97 = v115;
LABEL_94:
      v98 = v12;
      v99 = (v12 + 16);
      for (i = *(v12 + 2); ; *v99 = i)
      {
        if (i < 2)
        {

          v115 = v97;
          return;
        }

        if (!*v113)
        {
          goto LABEL_132;
        }

        v101 = &v98[16 * i];
        v102 = *v101;
        v103 = &v99[2 * i];
        v104 = *(v103 + 1);
        sub_1DD3D3D60((*v113 + 8 * *v101), (*v113 + 8 * *v103), (*v113 + 8 * v104), v120);
        if (v97)
        {
          break;
        }

        if (v104 < v102)
        {
          goto LABEL_120;
        }

        if (i - 2 >= *v99)
        {
          goto LABEL_121;
        }

        *v101 = v102;
        *(v101 + 1) = v104;
        v105 = *v99 - i;
        if (*v99 < i)
        {
          goto LABEL_122;
        }

        i = *v99 - 1;
        sub_1DD4EC4E4(v103 + 16, v105, v103);
      }

      v115 = v97;
LABEL_104:

      return;
    }

LABEL_129:
    v97 = v115;
    v12 = sub_1DD4EC2B8();
    goto LABEL_94;
  }

  v106 = a4;
  v11 = 0;
  v117 = (v8 + 8);
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v13 = v11++;
    v109 = v13;
    if (v11 < v10)
    {
      v107 = v12;
      v14 = *v113 + 8 * v13;
      v110 = 8 * v13;
      v15 = v14 + 16;

      v16 = v118;
      sub_1DD63F508();
      v17 = v119;
      sub_1DD63F508();
      LODWORD(v112) = sub_1DD63CFB8();
      v18 = *v117;
      v19 = v17;
      v20 = v120;
      (*v117)(v19, v120);
      v111 = v18;
      (v18)(v16, v20);

      v21 = (v109 + 2);
      while (1)
      {
        v22 = v21;
        v23 = v11 + 1;
        if (v23 >= v10)
        {
          break;
        }

        v116 = v21;

        v24 = v23;
        v25 = v10;
        v26 = v118;
        sub_1DD63F508();
        v27 = v119;
        sub_1DD63F508();
        LOBYTE(v114) = sub_1DD63CFB8() & 1;
        LODWORD(v114) = v114;
        v28 = v27;
        v29 = v120;
        v30 = v111;
        (v111)(v28, v120);
        v31 = v26;
        v10 = v25;
        v11 = v24;
        v30(v31, v29);

        v22 = v116;
        v15 += 8;
        v21 = v116 + 1;
        if ((v112 & 1) != v114)
        {
          goto LABEL_9;
        }
      }

      v11 = v10;
LABEL_9:
      if (v112)
      {
        v13 = v109;
        if (v11 < v109)
        {
          goto LABEL_126;
        }

        if (v109 >= v11)
        {
          v12 = v107;
        }

        else
        {
          if (v10 >= v22)
          {
            v32 = v22;
          }

          else
          {
            v32 = v10;
          }

          v33 = 8 * v32 - 8;
          v34 = v11;
          v35 = v109;
          v12 = v107;
          v36 = v110;
          do
          {
            if (v35 != --v34)
            {
              v37 = *v113;
              if (!*v113)
              {
                goto LABEL_133;
              }

              v38 = *(v37 + v36);
              *(v37 + v36) = *(v37 + v33);
              *(v37 + v33) = v38;
            }

            ++v35;
            v33 -= 8;
            v36 += 8;
          }

          while (v35 < v34);
        }
      }

      else
      {
        v12 = v107;
        v13 = v109;
      }
    }

    v39 = v113[1];
    if (v11 < v39)
    {
      if (__OFSUB__(v11, v13))
      {
        goto LABEL_125;
      }

      if (v11 - v13 < v106)
      {
        break;
      }
    }

LABEL_39:
    if (v11 < v13)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD3BEB7C();
      v12 = v95;
    }

    v51 = *(v12 + 2);
    v52 = v51 + 1;
    if (v51 >= *(v12 + 3) >> 1)
    {
      sub_1DD3BEB7C();
      v12 = v96;
    }

    *(v12 + 2) = v52;
    v53 = v12 + 32;
    v54 = &v12[16 * v51 + 32];
    *v54 = v109;
    *(v54 + 1) = v11;
    v116 = *v108;
    if (!v116)
    {
      goto LABEL_134;
    }

    if (v51)
    {
      while (1)
      {
        v55 = v52 - 1;
        v56 = &v53[16 * v52 - 16];
        v57 = &v12[16 * v52];
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v58 = *(v12 + 4);
          v59 = *(v12 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_59:
          if (v61)
          {
            goto LABEL_111;
          }

          v73 = *v57;
          v72 = *(v57 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_114;
          }

          v77 = *(v56 + 1);
          v78 = v77 - *v56;
          if (__OFSUB__(v77, *v56))
          {
            goto LABEL_117;
          }

          if (__OFADD__(v75, v78))
          {
            goto LABEL_119;
          }

          if (v75 + v78 >= v60)
          {
            if (v60 < v78)
            {
              v55 = v52 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v52 < 2)
        {
          goto LABEL_113;
        }

        v80 = *v57;
        v79 = *(v57 + 1);
        v68 = __OFSUB__(v79, v80);
        v75 = v79 - v80;
        v76 = v68;
LABEL_74:
        if (v76)
        {
          goto LABEL_116;
        }

        v82 = *v56;
        v81 = *(v56 + 1);
        v68 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v83 < v75)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v55 - 1 >= v52)
        {
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
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v113)
        {
          goto LABEL_131;
        }

        v87 = &v53[16 * v55 - 16];
        v88 = *v87;
        v89 = &v53[16 * v55];
        v90 = *(v89 + 1);
        v91 = v115;
        sub_1DD3D3D60((*v113 + 8 * *v87), (*v113 + 8 * *v89), (*v113 + 8 * v90), v116);
        v115 = v91;
        if (v91)
        {
          goto LABEL_104;
        }

        if (v90 < v88)
        {
          goto LABEL_106;
        }

        v92 = v12;
        v93 = *(v12 + 2);
        if (v55 > v93)
        {
          goto LABEL_107;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        if (v55 >= v93)
        {
          goto LABEL_108;
        }

        v52 = v93 - 1;
        sub_1DD4EC4E4(v89 + 16, v93 - 1 - v55, &v53[16 * v55]);
        *(v92 + 2) = v93 - 1;
        v94 = v93 > 2;
        v12 = v92;
        if (!v94)
        {
          goto LABEL_88;
        }
      }

      v62 = &v53[16 * v52];
      v63 = *(v62 - 8);
      v64 = *(v62 - 7);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_109;
      }

      v67 = *(v62 - 6);
      v66 = *(v62 - 5);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_110;
      }

      v69 = *(v57 + 1);
      v70 = v69 - *v57;
      if (__OFSUB__(v69, *v57))
      {
        goto LABEL_112;
      }

      v68 = __OFADD__(v60, v70);
      v71 = v60 + v70;
      if (v68)
      {
        goto LABEL_115;
      }

      if (v71 >= v65)
      {
        v85 = *v56;
        v84 = *(v56 + 1);
        v68 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v68)
        {
          goto LABEL_123;
        }

        if (v60 < v86)
        {
          v55 = v52 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v10 = v113[1];
    if (v11 >= v10)
    {
      goto LABEL_91;
    }
  }

  v40 = v13 + v106;
  if (__OFADD__(v13, v106))
  {
    goto LABEL_127;
  }

  if (v40 >= v39)
  {
    v40 = v113[1];
  }

  if (v40 < v13)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  if (v11 == v40)
  {
    goto LABEL_39;
  }

  v107 = v12;
  v116 = *v113;
  v41 = &v116[8 * v11 - 8];
  v42 = (v13 - v11);
  v110 = v40;
LABEL_32:
  v114 = v11;
  v111 = v42;
  v112 = v41;
  while (1)
  {

    v43 = v118;
    sub_1DD63F508();
    v44 = v119;
    sub_1DD63F508();
    v45 = sub_1DD63CFB8();
    v46 = *v117;
    v47 = v44;
    v48 = v120;
    (*v117)(v47, v120);
    v46(v43, v48);

    if ((v45 & 1) == 0)
    {
LABEL_37:
      v11 = v114 + 1;
      v41 = v112 + 8;
      v42 = v111 - 1;
      if (v114 + 1 == v110)
      {
        v11 = v110;
        v12 = v107;
        v13 = v109;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v116)
    {
      break;
    }

    v49 = *v41;
    *v41 = *(v41 + 1);
    *(v41 + 1) = v49;
    v41 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_37;
    }
  }

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
}

uint64_t sub_1DD3D3D60(char *a1, char *a2, char *a3, char *a4)
{
  v44 = sub_1DD63D078();
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v36 - v10;
  v11 = (a2 - a1) / 8;
  v41 = (v12 + 8);
  v13 = (a3 - a2) / 8;
  if (v11 < v13)
  {
    sub_1DD3C2520(a1, (a2 - a1) / 8, a4);
    v14 = &a4[8 * v11];
    v39 = v14;
    for (i = a3; ; a3 = i)
    {
      if (a4 >= v14 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_28;
      }

      v45 = a1;

      v16 = v42;
      sub_1DD63F508();
      v17 = v43;
      sub_1DD63F508();
      v18 = sub_1DD63CFB8();
      v19 = *v41;
      v20 = v17;
      v21 = v44;
      (*v41)(v20, v44);
      v19(v16, v21);

      if ((v18 & 1) == 0)
      {
        break;
      }

      v22 = a2;
      v23 = v45;
      v24 = v45 == a2;
      a2 += 8;
      if (!v24)
      {
        goto LABEL_12;
      }

LABEL_13:
      a1 = v23 + 8;
      v14 = v39;
    }

    v22 = a4;
    v23 = v45;
    v24 = v45 == a4;
    a4 += 8;
    if (v24)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v23 = *v22;
    goto LABEL_13;
  }

  sub_1DD3C2520(a2, (a3 - a2) / 8, a4);
  v14 = &a4[8 * v13];
  v45 = a1;
  v37 = a4;
LABEL_15:
  a3 -= 8;
  v38 = a2 - 8;
  v39 = a2;
  while (v14 > a4 && a2 > a1)
  {
    v26 = v14;
    v14 -= 8;

    v27 = v42;
    sub_1DD63F508();
    v28 = v43;
    sub_1DD63F508();
    LODWORD(i) = sub_1DD63CFB8();
    v29 = *v41;
    v30 = v28;
    v31 = v44;
    (*v41)(v30, v44);
    v29(v27, v31);

    if (i)
    {
      v32 = v38;
      a4 = v37;
      a1 = v45;
      v14 = v26;
      a2 = v38;
      if (a3 + 8 != v39)
      {
        *a3 = *v38;
        a2 = v32;
      }

      goto LABEL_15;
    }

    if (v26 != a3 + 8)
    {
      *a3 = *v14;
    }

    a3 -= 8;
    a4 = v37;
    a2 = v39;
    a1 = v45;
  }

LABEL_28:
  v33 = (v14 - a4) / 8;
  if (a2 != a4 || a2 >= &a4[8 * v33])
  {
    memmove(a2, a4, 8 * v33);
  }

  return 1;
}

uint64_t sub_1DD3D40D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DD3D412C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1DD3D4184(const void *a1, int64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (a2 < 1)
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF30, &qword_1DD644228);
    v4 = swift_allocObject();
    v5 = _swift_stdlib_malloc_size(v4);
    v4[2] = a2;
    v4[3] = 2 * v5 - 64;
  }

  memcpy(v4 + 4, a1, a2);
  return v4;
}

uint64_t sub_1DD3D422C(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_1DD3D42C0(uint64_t a1)
{
  v1 = swift_allocObject();
  sub_1DD3D4300();
  return v1;
}

uint64_t sub_1DD3D4300()
{
  OUTLINED_FUNCTION_0_21();
  (*(*(*(v2 + 80) - 8) + 32))(v0 + *(v1 + 88));
  return v0;
}

uint64_t sub_1DD3D436C()
{
  OUTLINED_FUNCTION_0_21();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v1 + 88));
  return v0;
}

uint64_t sub_1DD3D43D4()
{
  sub_1DD3D436C();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD3D4444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = *(v6 + 16);
  v13(&v18 - v11, v14 + *(*v14 + 88), v5, v10);
  (v13)(v8, a2 + *(*a2 + 88), v5);
  v15 = sub_1DD63FD98();
  v16 = *(v6 + 8);
  v16(v8, v5);
  v16(v12, v5);
  return v15 & 1;
}

uint64_t sub_1DD3D45CC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_21();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_1_14();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  (*(v6 + 16))(&v13 - v9, v2 + *(v11 + 88), v4, v8);
  sub_1DD63FCF8();
  return (*(v6 + 8))(v10, v4);
}

uint64_t sub_1DD3D46D4(uint64_t a1)
{
  sub_1DD640E28();
  sub_1DD3D45CC(v3, a1);
  return sub_1DD640E78();
}

uint64_t sub_1DD3D476C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  sub_1DD640E28();
  sub_1DD3D45CC(v5, v3);
  return sub_1DD640E78();
}

uint64_t sub_1DD3D47B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_21();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_1_14();
  v7 = v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - v10;
  (*(v7 + 16))(v14 - v10, v3 + *(v12 + 88), v5, v9);
  sub_1DD63FCD8();
  return (*(v7 + 8))(v11, v5);
}

uint64_t sub_1DD3D48D4(void *a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1DD3C2388(v6, v9);
  sub_1DD640238();
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v2)
  {
    return sub_1DD3D42C0(v5);
  }

  return result;
}

uint64_t sub_1DD3D49A0@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = sub_1DD3D48D4(a1, *(a2 - 8));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1DD3D49F8(uint64_t a1)
{
  OUTLINED_FUNCTION_0_21();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_1_14();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  (*(v5 + 16))(&v13 - v8, v1 + *(v10 + 88), v3, v7);
  v11 = sub_1DD640CB8();
  (*(v5 + 8))(v9, v3);
  return v11;
}

uint64_t sub_1DD3D4B78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6444F0;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  type metadata accessor for DateTime();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_0_22();
  *(inited + 56) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v1, v2, v3, v4, 10, 0, 0, v5);
  *(inited + 64) = xmmword_1DD643620;
  *(inited + 80) = 0;
  OUTLINED_FUNCTION_1_15();
  v6 = OUTLINED_FUNCTION_0_22();
  *(inited + 88) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v6, v7, v8, v9, 11, 0, 0, v10);
  *(inited + 96) = xmmword_1DD643660;
  *(inited + 112) = 0;
  OUTLINED_FUNCTION_1_15();
  v11 = OUTLINED_FUNCTION_0_22();
  *(inited + 120) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v11, v12, v13, v14, 11, 59, 59, v15);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t sub_1DD3D4C84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F80;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  type metadata accessor for DateTime();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_0_23();
  *(inited + 56) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v1, v2, v3, v4, 1, v5, 0, v6);
  *(inited + 64) = xmmword_1DD643620;
  *(inited + 80) = 0;
  swift_allocObject();
  v7 = OUTLINED_FUNCTION_0_23();
  *(inited + 88) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v7, v8, v9, v10, 2, v11, 0, v12);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t BusinessLandmark.init(name:prefix:suffix:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a3;
  v6 = *a4;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = v5;
  *(a5 + 17) = v6;
  return result;
}

SiriInference::BusinessLandmark::Prefix_optional __swiftcall BusinessLandmark.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t BusinessLandmark.Prefix.rawValue.getter()
{
  result = 0x656874206F74;
  switch(*v0)
  {
    case 1:
      result = 29793;
      break;
    case 2:
      result = 0x7373656E69737562;
      break;
    case 3:
      result = 28265;
      break;
    case 4:
      result = 0x65687420726F66;
      break;
    case 5:
      result = 31074;
      break;
    case 6:
      result = 26223;
      break;
    case 7:
      result = 7499622;
      break;
    case 8:
      result = 1918985582;
      break;
    case 9:
      result = 28532;
      break;
    case 0xA:
      result = 0x656874207461;
      break;
    case 0xB:
      result = 0x656874206E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD3D4EF0@<X0>(uint64_t *a1@<X8>)
{
  result = BusinessLandmark.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t BusinessLandmark.Suffix.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DD640AA8();

  *a3 = v4 != 0;
  return result;
}

uint64_t BusinessLandmark.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static BusinessLandmark.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v6 && (sub_1DD640CD8() & 1) == 0)
  {
    goto LABEL_10;
  }

  if (v2 != 12)
  {
    if (v4 != 12)
    {
      v8 = sub_1DD3B04F8(v2, v4);
      if (v3 & 1 | ((v8 & 1) == 0))
      {
        v7 = v8 & v5;
        return v7 & 1;
      }

LABEL_13:
      v7 = v5 ^ 1;
      return v7 & 1;
    }

LABEL_10:
    v7 = 0;
    return v7 & 1;
  }

  if (!((v4 != 12) | v3 & 1))
  {
    goto LABEL_13;
  }

  v7 = (v4 == 12) & v5;
  return v7 & 1;
}

uint64_t sub_1DD3D521C(uint64_t a1)
{
  v2 = sub_1DD3D5690();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD3D5258(uint64_t a1)
{
  v2 = sub_1DD3D5690();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BusinessLandmark.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC0C0, &qword_1DD644B30);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = *(v1 + 16);
  v17 = *(v1 + 17);
  v18 = v9;
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_1DD3D5690();
  sub_1DD640EF8();
  v23 = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v14 = v17;
    v22 = v18;
    v21 = 1;
    sub_1DD3D56E4();
    sub_1DD640C08();
    v20 = v14;
    v19 = 2;
    sub_1DD3D5738();
    sub_1DD640C08();
  }

  return (*(v5 + 8))(v8, v13);
}

uint64_t BusinessLandmark.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC0E0, &qword_1DD644B38);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD3D5690();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15[2] = 0;
  v6 = sub_1DD640B28();
  v8 = v7;
  v15[0] = 1;
  sub_1DD3D578C();
  OUTLINED_FUNCTION_3_4(&type metadata for BusinessLandmark.Prefix, v15);
  v13 = v15[1];
  v14[0] = 2;
  sub_1DD3D57E0();
  OUTLINED_FUNCTION_3_4(&type metadata for BusinessLandmark.Suffix, v14);
  v10 = OUTLINED_FUNCTION_0_0();
  v11(v10);
  v12 = v14[1];
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v13;
  *(a2 + 17) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD3D5690()
{
  result = qword_1ECCDC0C8;
  if (!qword_1ECCDC0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC0C8);
  }

  return result;
}

unint64_t sub_1DD3D56E4()
{
  result = qword_1ECCDC0D0;
  if (!qword_1ECCDC0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC0D0);
  }

  return result;
}

unint64_t sub_1DD3D5738()
{
  result = qword_1ECCDC0D8;
  if (!qword_1ECCDC0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC0D8);
  }

  return result;
}

unint64_t sub_1DD3D578C()
{
  result = qword_1ECCDC0E8;
  if (!qword_1ECCDC0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC0E8);
  }

  return result;
}

unint64_t sub_1DD3D57E0()
{
  result = qword_1ECCDC0F0;
  if (!qword_1ECCDC0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC0F0);
  }

  return result;
}

unint64_t sub_1DD3D5838()
{
  result = qword_1ECCDC0F8;
  if (!qword_1ECCDC0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC0F8);
  }

  return result;
}

unint64_t sub_1DD3D5890()
{
  result = qword_1ECCDC100;
  if (!qword_1ECCDC100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC100);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BusinessLandmark.Prefix(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BusinessLandmark.Suffix(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for BusinessLandmark.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD3D5B50()
{
  result = qword_1ECCDC108;
  if (!qword_1ECCDC108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC108);
  }

  return result;
}

unint64_t sub_1DD3D5BA8()
{
  result = qword_1ECCDC110;
  if (!qword_1ECCDC110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC110);
  }

  return result;
}

unint64_t sub_1DD3D5C00()
{
  result = qword_1ECCDC118;
  if (!qword_1ECCDC118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC118);
  }

  return result;
}

unint64_t sub_1DD3D5C54()
{
  result = qword_1ECCDC120;
  if (!qword_1ECCDC120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC120);
  }

  return result;
}

unint64_t sub_1DD3D5CA8()
{
  result = qword_1ECCDC128;
  if (!qword_1ECCDC128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC128);
  }

  return result;
}

void sub_1DD3D5CFC()
{
  OUTLINED_FUNCTION_18_4();
  v63 = v2;
  v64 = v0;
  v62 = v3;
  v67 = v4;
  v68 = v5;
  v7 = v6;
  sub_1DD63CBB8();
  OUTLINED_FUNCTION_0();
  v60 = v9;
  v61 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v59 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC130, &unk_1DD645260);
  OUTLINED_FUNCTION_3(v12);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16_5();
  v14 = sub_1DD63D2B8();
  OUTLINED_FUNCTION_0();
  v65 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_4();
  v19 = (v17 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v66 = &v59 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  OUTLINED_FUNCTION_3(v22);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - v24;
  v26 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_17_7();
  sub_1DD3CDD14(v7, v25, &qword_1ECCDEBC0, &qword_1DD6445A0);
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    v30 = &qword_1ECCDEBC0;
    v31 = &qword_1DD6445A0;
    v32 = v25;
LABEL_5:
    sub_1DD3ADFD0(v32, v30, v31);
    v34 = OUTLINED_FUNCTION_15_7();
LABEL_6:
    OUTLINED_FUNCTION_19_6(v34, v35);
    goto LABEL_12;
  }

  v33 = *(v28 + 32);
  v33(v1, v25, v26);
  sub_1DD3CDD14(v67, v0, &qword_1ECCDC130, &unk_1DD645260);
  if (__swift_getEnumTagSinglePayload(v0, 1, v14) == 1)
  {
    (*(v28 + 8))(v1, v26);
    v30 = &qword_1ECCDC130;
    v31 = &unk_1DD645260;
    v32 = v0;
    goto LABEL_5;
  }

  v36 = v1;
  v67 = v28;
  v38 = v65;
  v37 = v66;
  (*(v65 + 32))(v66, v0, v14);
  (*(v38 + 16))(v19, v37, v14);
  v39 = (*(v38 + 88))(v19, v14);
  if (v39 == *MEMORY[0x1E6969A68])
  {
    v19 = v1;
    sub_1DD3D633C();
LABEL_11:
    v40 = OUTLINED_FUNCTION_13_7();
    v41(v40);
    (*(v67 + 8))(v19, v26);
    goto LABEL_12;
  }

  if (v39 == *MEMORY[0x1E6969A78])
  {
    OUTLINED_FUNCTION_2_12();
    sub_1DD3D65D0();
    goto LABEL_11;
  }

  if (v39 == *MEMORY[0x1E6969A48])
  {
    goto LABEL_14;
  }

  if (v39 == *MEMORY[0x1E6969A58])
  {
    OUTLINED_FUNCTION_2_12();
    sub_1DD3D6840();
    goto LABEL_11;
  }

  if (v39 == *MEMORY[0x1E6969A88])
  {
    OUTLINED_FUNCTION_2_12();
    sub_1DD3D6A98();
    goto LABEL_11;
  }

  if (v39 == *MEMORY[0x1E6969A98])
  {
    v45 = OUTLINED_FUNCTION_13_7();
    v46(v45);
    v47 = v68;
    v33(v68, v1, v26);
    v34 = v47;
    goto LABEL_15;
  }

  if (v39 == *MEMORY[0x1E6969AB0])
  {
LABEL_14:
    v42 = v68;
    sub_1DD63D1B8();
    v43 = OUTLINED_FUNCTION_13_7();
    v44(v43);
    (*(v67 + 8))(v1, v26);
    v34 = v42;
LABEL_15:
    v35 = 0;
    goto LABEL_6;
  }

  v48 = *MEMORY[0x1E6969A10];
  if (v39 == *MEMORY[0x1E6969A20] || v39 == v48)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
    v50 = *(v38 + 72);
    v51 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1DD643F80;
    v53 = v52 + v51;
    v54 = *(v38 + 104);
    v54(v53, v48, v14);
    v54(v53 + v50, *MEMORY[0x1E6969A38], v14);
    sub_1DD56BDEC();
    v55 = v59;
    sub_1DD63D1F8();

    sub_1DD63D248();
    (*(v60 + 8))(v55, v61);
    (*(v38 + 8))(v66, v14);
    (*(v67 + 8))(v36, v26);
  }

  else
  {
    v56 = *(v38 + 8);
    v56(v37, v14);
    (*(v67 + 8))(v1, v26);
    v57 = OUTLINED_FUNCTION_15_7();
    OUTLINED_FUNCTION_19_6(v57, v58);
    v56(v19, v14);
  }

LABEL_12:
  OUTLINED_FUNCTION_17();
}

void sub_1DD3D633C()
{
  OUTLINED_FUNCTION_18_4();
  v15 = v1;
  v2 = sub_1DD63CBB8();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_17_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
  v6 = sub_1DD63D2B8();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  v10 = *(v9 + 72);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DD644F40;
  v13 = v12 + v11;
  v14 = *(v8 + 104);
  v14(v13, *MEMORY[0x1E6969A68], v6);
  v14(v13 + v10, *MEMORY[0x1E6969A78], v6);
  v14(v13 + 2 * v10, *MEMORY[0x1E6969A48], v6);
  v14(v13 + 3 * v10, *MEMORY[0x1E6969A58], v6);
  v14(v13 + 4 * v10, *MEMORY[0x1E6969A88], v6);
  v14(v13 + 5 * v10, *MEMORY[0x1E6969A98], v6);
  sub_1DD56BDEC();
  sub_1DD63D1F8();

  OUTLINED_FUNCTION_7_8();
  sub_1DD63CA38();
  sub_1DD63CAC8();
  if ((v15 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_8();
    sub_1DD63CAA8();
  }

  OUTLINED_FUNCTION_5_11();
  sub_1DD63CA88();
  OUTLINED_FUNCTION_5_11();
  sub_1DD63CAF8();
  OUTLINED_FUNCTION_5_11();
  sub_1DD63CB18();
  sub_1DD63D248();
  (*(v4 + 8))(v0, v2);
  OUTLINED_FUNCTION_17();
}

void sub_1DD3D65D0()
{
  OUTLINED_FUNCTION_18_4();
  v19 = v2;
  v3 = sub_1DD63CBB8();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_17_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
  v7 = sub_1DD63D2B8();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v11 = *(v10 + 72);
  v12 = OUTLINED_FUNCTION_4_11();
  *(v12 + 16) = xmmword_1DD644F40;
  v13 = v12 + v1;
  v14 = *(v9 + 104);
  (v14)(v13, *MEMORY[0x1E6969A68], v7);
  (v14)(v13 + v11, *MEMORY[0x1E6969A78], v7);
  (v14)(v13 + 2 * v11, *MEMORY[0x1E6969A48], v7);
  v15 = OUTLINED_FUNCTION_10_11(3 * v11);
  v14(v15);
  (v14)(v13 + 4 * v11, *MEMORY[0x1E6969A88], v7);
  v16 = OUTLINED_FUNCTION_10_11(5 * v11);
  v14(v16);
  sub_1DD56BDEC();
  sub_1DD63D1F8();

  OUTLINED_FUNCTION_7_8();
  sub_1DD63CA38();
  v17 = sub_1DD63CAB8();
  if (v18)
  {
    goto LABEL_4;
  }

  if (!__OFADD__(v17, v19))
  {
    OUTLINED_FUNCTION_7_8();
    sub_1DD63CAC8();
LABEL_4:
    OUTLINED_FUNCTION_5_11();
    sub_1DD63CA88();
    OUTLINED_FUNCTION_5_11();
    sub_1DD63CAF8();
    OUTLINED_FUNCTION_5_11();
    sub_1DD63CB18();
    sub_1DD63D248();
    (*(v5 + 8))(v0, v3);
    OUTLINED_FUNCTION_17();
    return;
  }

  __break(1u);
}

void sub_1DD3D6840()
{
  OUTLINED_FUNCTION_18_4();
  v3 = OUTLINED_FUNCTION_18_8(v1, v2);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
  v10 = sub_1DD63D2B8();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  v14 = *(v13 + 72);
  v15 = OUTLINED_FUNCTION_4_11();
  *(v15 + 16) = xmmword_1DD644F40;
  v16 = v15 + v0;
  v17 = *(v12 + 104);
  (v17)(v16, *MEMORY[0x1E6969A68], v10);
  (v17)(v16 + v14, *MEMORY[0x1E6969A78], v10);
  (v17)(v16 + 2 * v14, *MEMORY[0x1E6969A48], v10);
  v18 = OUTLINED_FUNCTION_10_11(3 * v14);
  v17(v18);
  (v17)(v16 + 4 * v14, *MEMORY[0x1E6969A88], v10);
  v19 = OUTLINED_FUNCTION_10_11(5 * v14);
  v17(v19);
  sub_1DD56BDEC();
  sub_1DD63D1F8();

  OUTLINED_FUNCTION_5_11();
  sub_1DD63CAF8();
  OUTLINED_FUNCTION_5_11();
  sub_1DD63CB18();
  v20 = sub_1DD63CA78();
  if (v21)
  {
    goto LABEL_4;
  }

  if (!__OFADD__(v20, v22))
  {
    sub_1DD63CA88();
LABEL_4:
    sub_1DD63D248();
    (*(v5 + 8))(v9, v3);
    OUTLINED_FUNCTION_17();
    return;
  }

  __break(1u);
}

void sub_1DD3D6A98()
{
  OUTLINED_FUNCTION_18_4();
  v4 = OUTLINED_FUNCTION_18_8(v2, v3);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_17_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
  v8 = sub_1DD63D2B8();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = *(v11 + 72);
  v13 = OUTLINED_FUNCTION_4_11();
  *(v13 + 16) = xmmword_1DD644F40;
  v14 = v13 + v1;
  v15 = *(v10 + 104);
  (v15)(v14, *MEMORY[0x1E6969A68], v8);
  (v15)(v14 + v12, *MEMORY[0x1E6969A78], v8);
  (v15)(v14 + 2 * v12, *MEMORY[0x1E6969A48], v8);
  v16 = OUTLINED_FUNCTION_10_11(3 * v12);
  v15(v16);
  (v15)(v14 + 4 * v12, *MEMORY[0x1E6969A88], v8);
  v17 = OUTLINED_FUNCTION_10_11(5 * v12);
  v15(v17);
  sub_1DD56BDEC();
  sub_1DD63D1F8();

  v18 = sub_1DD63CAE8();
  if (v19)
  {
    goto LABEL_4;
  }

  if (!__OFADD__(v18, v20))
  {
    OUTLINED_FUNCTION_7_8();
    sub_1DD63CAF8();
LABEL_4:
    OUTLINED_FUNCTION_5_11();
    sub_1DD63CB18();
    sub_1DD63D248();
    (*(v6 + 8))(v0, v4);
    OUTLINED_FUNCTION_17();
    return;
  }

  __break(1u);
}

void sub_1DD3D6CE4()
{
  OUTLINED_FUNCTION_18_4();
  v52 = v1;
  v53 = v0;
  v51 = v2;
  v3 = sub_1DD63D2B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v47 = v6 - v5;
  v49 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v46 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v45 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v12 = OUTLINED_FUNCTION_3(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_4();
  v48 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  v18 = sub_1DD63CBB8();
  OUTLINED_FUNCTION_0();
  v50 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
  v21 = *(v4 + 72);
  v22 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1DD643F80;
  v24 = v23 + v22;
  v25 = *MEMORY[0x1E6969A10];
  v44 = v4;
  v26 = *(v4 + 104);
  v26(v24, v25, v3);
  v27 = v24 + v21;
  v28 = v17;
  v29 = v52;
  v26(v27, *MEMORY[0x1E6969A38], v3);
  sub_1DD56BDEC();
  sub_1DD63D1F8();

  sub_1DD63D248();
  if (!v29)
  {
    v35 = OUTLINED_FUNCTION_12_9();
    v36(v35, v18);
    goto LABEL_5;
  }

  v53 = v18;
  v30 = v17;
  v31 = v48;
  sub_1DD3CDD14(v30, v48, &qword_1ECCDEBC0, &qword_1DD6445A0);
  v32 = v49;
  if (__swift_getEnumTagSinglePayload(v31, 1, v49) == 1)
  {
    v33 = OUTLINED_FUNCTION_12_9();
    v34(v33, v53);
    sub_1DD3ADFD0(v31, &qword_1ECCDEBC0, &qword_1DD6445A0);
LABEL_5:
    sub_1DD3D7DA0(v28, v51);
LABEL_8:
    OUTLINED_FUNCTION_17();
    return;
  }

  v43 = v28;
  v37 = v46;
  v38 = v45;
  (*(v46 + 32))();
  v39 = v47;
  v26(v47, *MEMORY[0x1E6969A48], v3);
  if ((v29 * 7) >> 64 == (7 * v29) >> 63)
  {
    sub_1DD63D268();
    (*(v44 + 8))(v39, v3);
    (*(v37 + 8))(v38, v32);
    sub_1DD3ADFD0(v43, &qword_1ECCDEBC0, &qword_1DD6445A0);
    v40 = OUTLINED_FUNCTION_12_9();
    v41(v40, v53);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1DD3D7620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18_4();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  OUTLINED_FUNCTION_3(v28);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  v32 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_1_4();
  v38 = v36 - v37;
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = &a9 - v41;
  v23(v25, 1, v40);
  if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
  {
    sub_1DD3ADFD0(v31, &qword_1ECCDEBC0, &qword_1DD6445A0);
    v43 = 1;
  }

  else
  {
    (*(v34 + 32))(v42, v31, v32);
    (*(v34 + 16))(v38, v42, v32);
    sub_1DD63CF68();
    (*(v34 + 8))(v42, v32);
    v43 = 0;
  }

  __swift_storeEnumTagSinglePayload(v27, v43, 1, v32);
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD3D77EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a2;
  v20 = a3;
  v21 = a1;
  v3 = sub_1DD63CBB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
  v7 = sub_1DD63D2B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DD644F40;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v12, *MEMORY[0x1E6969A68], v7);
  v13(v12 + v9, *MEMORY[0x1E6969A78], v7);
  v13(v12 + 2 * v9, *MEMORY[0x1E6969A48], v7);
  v13(v12 + 3 * v9, *MEMORY[0x1E6969A58], v7);
  v13(v12 + 4 * v9, *MEMORY[0x1E6969A88], v7);
  v13(v12 + 5 * v9, *MEMORY[0x1E6969A98], v7);
  sub_1DD56BDEC();
  sub_1DD63D1F8();

  sub_1DD63CA38();
  sub_1DD63CAC8();
  v14 = sub_1DD63CA98();
  if (v15)
  {
    goto LABEL_4;
  }

  v16 = __OFADD__(v14, v19);
  result = v14 + v19;
  if (!v16)
  {
    sub_1DD63CAA8();
LABEL_4:
    sub_1DD63CA88();
    sub_1DD63CAF8();
    sub_1DD63CB18();
    sub_1DD63D248();
    return (*(v4 + 8))(v6, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD3D7AD0(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v19 = a1;
  v2 = sub_1DD63CBB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
  v6 = sub_1DD63D2B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DD644F40;
  v11 = v10 + v9;
  v12 = *(v7 + 104);
  v12(v11, *MEMORY[0x1E6969A68], v6);
  v12(v11 + v8, *MEMORY[0x1E6969A78], v6);
  v12(v11 + 2 * v8, *MEMORY[0x1E6969A48], v6);
  v12(v11 + 3 * v8, *MEMORY[0x1E6969A58], v6);
  v12(v11 + 4 * v8, *MEMORY[0x1E6969A88], v6);
  v12(v11 + 5 * v8, *MEMORY[0x1E6969A98], v6);
  sub_1DD56BDEC();
  sub_1DD63D1F8();

  v13 = sub_1DD63CA28();
  if (v14)
  {
    goto LABEL_4;
  }

  v15 = __OFADD__(v13, v18);
  result = v13 + v18;
  if (!v15)
  {
    sub_1DD63CA38();
LABEL_4:
    sub_1DD63CA88();
    sub_1DD63CAF8();
    sub_1DD63CB18();
    sub_1DD63D248();
    return (*(v3 + 8))(v5, v2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD3D7DA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_19_6(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

void *sub_1DD3D7E54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC150, &qword_1DD644F60);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC158, &qword_1DD644F68) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DD644F50;
  v4 = v3 + v2;
  v5 = v0[14];
  v6 = *MEMORY[0x1E6969A50];
  v7 = sub_1DD63D2B8();
  v8 = *(*(v7 - 8) + 104);
  v8(v4, v6, v7);
  *(v4 + v5) = swift_getKeyPath();
  v9 = v0[14];
  v8(v4 + v1, *MEMORY[0x1E6969A68], v7);
  *(v4 + v1 + v9) = swift_getKeyPath();
  v10 = v0[14];
  v8(v4 + 2 * v1, *MEMORY[0x1E6969A78], v7);
  *(v4 + 2 * v1 + v10) = swift_getKeyPath();
  v11 = v0[14];
  v8(v4 + 3 * v1, *MEMORY[0x1E6969A48], v7);
  *(v4 + 3 * v1 + v11) = swift_getKeyPath();
  v12 = v0[14];
  v8(v4 + 4 * v1, *MEMORY[0x1E6969A58], v7);
  *(v4 + 4 * v1 + v12) = swift_getKeyPath();
  v13 = v0[14];
  v8(v4 + 5 * v1, *MEMORY[0x1E6969A88], v7);
  *(v4 + 5 * v1 + v13) = swift_getKeyPath();
  v14 = v0[14];
  v8(v4 + 6 * v1, *MEMORY[0x1E6969A98], v7);
  *(v4 + 6 * v1 + v14) = swift_getKeyPath();
  v15 = v0[14];
  v8(v4 + 7 * v1, *MEMORY[0x1E6969AB0], v7);
  *(v4 + 7 * v1 + v15) = swift_getKeyPath();
  v16 = v0[14];
  v8(v4 + 8 * v1, *MEMORY[0x1E6969A30], v7);
  *(v4 + 8 * v1 + v16) = swift_getKeyPath();
  v17 = v0[14];
  v8(v4 + 9 * v1, *MEMORY[0x1E6969AA8], v7);
  *(v4 + 9 * v1 + v17) = swift_getKeyPath();
  v18 = v0[14];
  v8(v4 + 10 * v1, *MEMORY[0x1E6969A20], v7);
  *(v4 + 10 * v1 + v18) = swift_getKeyPath();
  v19 = v0[14];
  v8(v4 + 11 * v1, *MEMORY[0x1E6969A10], v7);
  *(v4 + 11 * v1 + v19) = swift_getKeyPath();
  v20 = v0[14];
  v8(v4 + 12 * v1, *MEMORY[0x1E6969A38], v7);
  *(v4 + 12 * v1 + v20) = swift_getKeyPath();
  v21 = v4 + 13 * v1;
  v22 = v0[14];
  v8(v21, *MEMORY[0x1E6969A00], v7);
  *(v21 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC160, &qword_1DD645210);
  sub_1DD3D8B30();
  result = sub_1DD63FC88();
  off_1ECCDC138 = result;
  return result;
}

void sub_1DD3D856C(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v6 = sub_1DD63D2B8();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v42 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC140, &unk_1DD655030);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v42 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC148, &qword_1DD645290);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v42 - v20;
  sub_1DD63CBB8();
  OUTLINED_FUNCTION_0();
  v42 = v23;
  v43 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v54 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD63D1E8();
  v25 = sub_1DD63D2D8();
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v25);
  v26 = sub_1DD63D328();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v26);
  v48 = a4;
  v46 = v21;
  v44 = v18;
  sub_1DD63CB68(v21, v18, 0, 1, 0, 1, 0, 1, 0, 1, 0);
  v27 = a1 + 56;
  v28 = 1 << *(a1 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(a1 + 56);
  v31 = (v28 + 63) >> 6;
  v51 = v8 + 32;
  v52 = v8 + 16;
  v50 = v8 + 88;
  v49 = *MEMORY[0x1E6969AB8];
  v45 = *MEMORY[0x1E6969AC0];
  v47 = (v8 + 8);
  v55 = a1;

  v32 = 0;
  while (v30)
  {
    v33 = v32;
LABEL_9:
    v34 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v35 = *(v8 + 16);
    v36 = v53;
    v35(v53, *(v55 + 48) + *(v8 + 72) * (v34 | (v33 << 6)), v6);
    (*(v8 + 32))(v13, v36, v6);
    v37 = v13;
    v38 = v56;
    v35(v56, v37, v6);
    v39 = (*(v8 + 88))(v38, v6);
    if (v39 == v49)
    {
      sub_1DD63CB78();
      sub_1DD63CB88();
      (*v47)(v37, v6);
      v32 = v33;
      v13 = v37;
    }

    else
    {
      v13 = v37;
      if (v39 == v45)
      {
        sub_1DD63CB98();
        sub_1DD63CBA8();
        (*v47)(v37, v6);
        v32 = v33;
      }

      else
      {
        if (qword_1ECCDB038 != -1)
        {
          swift_once();
        }

        if (!*(off_1ECCDC138 + 2))
        {
          goto LABEL_20;
        }

        sub_1DD3FE7FC();
        if ((v40 & 1) == 0)
        {
          goto LABEL_21;
        }

        swift_getAtKeyPath();
        v57 = v59;
        v58 = v60;
        swift_setAtWritableKeyPath();

        v41 = *v47;
        (*v47)(v37, v6);
        v41(v56, v6);
        v32 = v33;
      }
    }
  }

  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v33 >= v31)
    {

      (*(v42 + 8))(v54, v43);
      return;
    }

    v30 = *(v27 + 8 * v33);
    ++v32;
    if (v30)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

unint64_t sub_1DD3D8B30()
{
  result = qword_1EE1637E0;
  if (!qword_1EE1637E0)
  {
    sub_1DD63D2B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1637E0);
  }

  return result;
}

void sub_1DD3D8BA8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v670 = a5;
  v612 = a4;
  v615 = a2;
  v669[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC168, &unk_1DD64FFB0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v583 - v10);
  v12 = sub_1DD63D228();
  v13 = OUTLINED_FUNCTION_0_25(v12, &v691);
  v693 = v14;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v15);
  v16 = sub_1DD63D1D8();
  v17 = OUTLINED_FUNCTION_0_25(v16, &v689);
  v691 = v18;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v19);
  v20 = sub_1DD63D218();
  v21 = OUTLINED_FUNCTION_0_25(v20, v719);
  v611 = v22;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_25(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC130, &unk_1DD645260);
  v26 = OUTLINED_FUNCTION_3(v25);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v583 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_25(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v34 = OUTLINED_FUNCTION_3(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_16_3();
  v44 = OUTLINED_FUNCTION_14_2(v43);
  v45 = _s19ConvergenceStrategyOMa(v44);
  v46 = OUTLINED_FUNCTION_3(v45);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_25(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC170, &qword_1DD645270);
  v57 = OUTLINED_FUNCTION_3(v56);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_14_2(v60);
  v61 = sub_1DD63D2D8();
  v62 = OUTLINED_FUNCTION_0_25(v61, v713);
  v587 = v63;
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_14_2(v67);
  v68 = sub_1DD63D2B8();
  v69 = OUTLINED_FUNCTION_0_25(v68, &v692);
  v648 = v70;
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_14_2(v74);
  v75 = sub_1DD63C868();
  v76 = OUTLINED_FUNCTION_0_25(v75, &v721);
  v591 = v77;
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v81);
  v83 = v583 - v82;
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_14_2(v87);
  v88 = sub_1DD63D078();
  v89 = OUTLINED_FUNCTION_0_25(v88, &v722);
  v687 = v90;
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_14_2(v99);
  v100 = sub_1DD63CBB8();
  v101 = OUTLINED_FUNCTION_0_25(v100, &v680);
  v637 = v102;
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_25(v109);
  v721 = MEMORY[0x1E69E7CD0];
  v584 = a6;
  v110 = *a6;
  v595 = type metadata accessor for RecurringDateInterval(0);
  v699 = MEMORY[0x1E12B2430](v110);
  v112 = v111;
  v592 = v110;
  v698 = sub_1DD3CC020();
  if (qword_1ECCDB0C0 != -1)
  {
    goto LABEL_222;
  }

  while (1)
  {
    v113 = sub_1DD63F9F8();
    v114 = __swift_project_value_buffer(v113, qword_1ECD0DDC0);

    v646 = v114;
    v115 = sub_1DD63F9D8();
    v116 = sub_1DD640368();

    LODWORD(v697) = v116;
    v117 = v115;
    v118 = os_log_type_enabled(v115, v116);
    v688 = a3;
    v671 = v83;
    v677 = v11;
    v654 = v28;
    if (v118)
    {
      v119 = OUTLINED_FUNCTION_62();
      v11 = swift_slowAlloc();
      v718 = v11;
      *v119 = 136315650;
      v120 = sub_1DD48E004();
      sub_1DD39565C(v120, v121, &v718);
      OUTLINED_FUNCTION_88_0();
      *(v119 + 4) = v28;
      a3 = v688;
      *(v119 + 12) = 2048;
      *(v119 + 14) = v698;
      *(v119 + 22) = 2080;
      v122 = sub_1DD39565C(v699, v112, &v718);

      *(v119 + 24) = v122;
      _os_log_impl(&dword_1DD38D000, v117, v697, "CalendarComponentConstraintSolver: going to solve constraint %s, inputs %ld: %s", v119, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {
    }

    OUTLINED_FUNCTION_26_5();
    OUTLINED_FUNCTION_85();
    v28 = v638;
    if (*(a1 + 16) == 12)
    {
      v124 = OUTLINED_FUNCTION_70(v123);
      v125 = sub_1DD640368();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        *v126 = 0;
        _os_log_impl(&dword_1DD38D000, v124, v125, "CalendarComponentConstraintSolver: received constraint with grain .now, returning early since there is nothing to do", v126, 2u);
        OUTLINED_FUNCTION_0_1();
      }

      return;
    }

    OUTLINED_FUNCTION_66_0();
    v127 = sub_1DD3CC020();
    v129 = a1;
    v700 = a1;
    v594 = v127;
    if (!v127)
    {
      break;
    }

    v696 = (v687 + 16);
    v661 = (v691 + 13);
    v660 = (v693 + 104);
    v659 = (v693 + 8);
    v658 = (v691 + 1);
    v673 = (v687 + 32);
    v691 = (v687 + 8);
    v597 = v687 + 40;
    a1 = &v682 + 4;
    v657[1] = *MEMORY[0x1E69698C0];
    v657[0] = *MEMORY[0x1E69699C8];
    v607 = *MEMORY[0x1E69699A0];
    *&v128 = 136315138;
    v616 = v128;
    v608 = xmmword_1DD643F80;
    v624 = xmmword_1DD644F40;
    v606 = *MEMORY[0x1E6969998];
    v642 = *MEMORY[0x1E6969A68];
    v641 = *MEMORY[0x1E6969A78];
    v640 = *MEMORY[0x1E6969A48];
    v630 = *MEMORY[0x1E6969A58];
    v627 = *MEMORY[0x1E6969A88];
    v626 = *MEMORY[0x1E6969A98];
    v588 = *MEMORY[0x1E6969AB0];
    v130 = 0;
    v586 = *MEMORY[0x1E6969A20];
    v585 = *MEMORY[0x1E6969A10];
    v583[1] = *MEMORY[0x1E6969A38];
    v593 = v592 & 0xC000000000000001;
    v590 = v592 & 0xFFFFFFFFFFFFFF8;
    v589 = v592 + 32;
    v644 = v637 + 16;
    v699 = v591 + 8;
    v652 = v648 + 16;
    v651 = (v648 + 8);
    v681 = (v587 + 16);
    v684 = (v587 + 8);
    v665 = v611 + 32;
    v666 = (v611 + 8);
    v655 = (v637 + 8);
    v669[1] = v591 + 32;
    v605 = (v611 + 104);
    v676 = v611 + 16;
    v633[0] = v648 + 32;
    v632 = v648 + 88;
    v625 = (v648 + 104);
    v687 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_calendar;
    v83 = v591 + 16;
    v675 = v591 + 16;
    while (1)
    {
      if (v593)
      {
        a1 = v130;
        v686 = MEMORY[0x1E12B2C10](v130, v592);
      }

      else
      {
        if (v130 >= *(v590 + 16))
        {
          goto LABEL_221;
        }

        v686 = *(v589 + 8 * v130);
      }

      v131 = __OFADD__(v130, 1);
      v132 = v130 + 1;
      if (v131)
      {
        goto LABEL_214;
      }

      v596 = v132;
      sub_1DD48ECD4();
      a3 = v133;
      v639 = *(v133 + 16);
      if (v639)
      {
        break;
      }

LABEL_177:
      v130 = v596;
      a3 = v688;
      if (v596 == v594)
      {
        goto LABEL_178;
      }
    }

    v685 = OBJC_IVAR____TtC13SiriInference21RecurringDateInterval_interval;
    a1 = v129[49];
    HIDWORD(v635) = v129[50];
    v634[1] = v133 + ((*(v637 + 80) + 32) & ~*(v637 + 80));
    OUTLINED_FUNCTION_83();
    swift_beginAccess();
    v28 = 0;
    v636 = a3;
    v647 = a1;
    while (v28 < *(a3 + 16))
    {
      OUTLINED_FUNCTION_82();
      v682 = v134;
      v134();
      v653[0] = v28;
      if (a1)
      {
        if (a1 == 1)
        {
          v135 = 6581861;
        }

        else
        {
          v135 = 0x746573746F6ELL;
        }

        OUTLINED_FUNCTION_17_8(v135);
        OUTLINED_FUNCTION_72_0();
        if ((v83 & 1) == 0)
        {
          OUTLINED_FUNCTION_81();
          if (!v136)
          {
            goto LABEL_30;
          }

          OUTLINED_FUNCTION_81();
          v138 = *(v137 + 49);
          if (v138)
          {
            if (v138 == 1)
            {
              v139 = 6581861;
            }

            else
            {
              v139 = 0x746573746F6ELL;
            }

            OUTLINED_FUNCTION_17_8(v139);
            OUTLINED_FUNCTION_72_0();
            if ((v83 & 1) == 0)
            {
LABEL_30:
              OUTLINED_FUNCTION_4_12();
              OUTLINED_FUNCTION_38_1();
              *(v140 - 256) = v141;
              v141();
              sub_1DD63C828();
              v142 = OUTLINED_FUNCTION_36_1();
              v697 = v143;
              v144 = v143(v142, v83);
              v145 = OUTLINED_FUNCTION_70(v144);
              v146 = sub_1DD640368();
              if (!os_log_type_enabled(v145, v146))
              {
                goto LABEL_40;
              }

              v147 = OUTLINED_FUNCTION_54();
              v148 = OUTLINED_FUNCTION_62();
              *v147 = OUTLINED_FUNCTION_33_1(v148).n128_u32[0];
              OUTLINED_FUNCTION_49_0(v149, v711);
              OUTLINED_FUNCTION_5_12();
              v151 = sub_1DD3DDA14(&qword_1EE1663F8, v150, MEMORY[0x1E6969570]);
              v152 = OUTLINED_FUNCTION_45_0(v151);
              sub_1DD39565C(v152, v153, &v715);
              OUTLINED_FUNCTION_88_0();
              *(v147 + 4) = v28;
              v154 = v146;
              v155 = v145;
              v156 = "CalendarComponentConstraintSolver: constraint is bound=start and previousConstraint has bound=end, setting referenceDate to end of interval: %s";
LABEL_39:
              _os_log_impl(&dword_1DD38D000, v155, v154, v156, v147, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v148);
              OUTLINED_FUNCTION_0_1();
              OUTLINED_FUNCTION_0_1();
              goto LABEL_40;
            }
          }

          else
          {
          }

          OUTLINED_FUNCTION_4_12();
          OUTLINED_FUNCTION_38_1();
          *(v170 - 256) = v171;
          v171();
          sub_1DD63C848();
          v172 = OUTLINED_FUNCTION_36_1();
          v697 = v173;
          v174 = v173(v172, v83);
          v145 = OUTLINED_FUNCTION_70(v174);
          v175 = sub_1DD640368();
          if (!os_log_type_enabled(v145, v175))
          {
            goto LABEL_40;
          }

          v147 = OUTLINED_FUNCTION_54();
          v148 = OUTLINED_FUNCTION_62();
          *v147 = OUTLINED_FUNCTION_33_1(v148).n128_u32[0];
          OUTLINED_FUNCTION_49_0(v176, v710);
          OUTLINED_FUNCTION_5_12();
          v178 = sub_1DD3DDA14(&qword_1EE1663F8, v177, MEMORY[0x1E6969570]);
          v179 = OUTLINED_FUNCTION_45_0(v178);
          sub_1DD39565C(v179, v180, &v715);
          OUTLINED_FUNCTION_88_0();
          *(v147 + 4) = v28;
          v154 = v175;
          v155 = v145;
          v156 = "CalendarComponentConstraintSolver: constraint is bound=end but previousConstraint was bound=start, setting referenceDate to start of interval: %s";
          goto LABEL_39;
        }
      }

      else
      {
      }

      OUTLINED_FUNCTION_4_12();
      v157 = v707;
      v698 = v158;
      (v158)(v11);
      sub_1DD63C848();
      v159 = OUTLINED_FUNCTION_36_1();
      v697 = v160;
      v161 = v160(v159, v157);
      v145 = OUTLINED_FUNCTION_70(v161);
      v162 = sub_1DD640368();
      if (os_log_type_enabled(v145, v162))
      {
        v163 = OUTLINED_FUNCTION_54();
        v164 = OUTLINED_FUNCTION_62();
        *v163 = OUTLINED_FUNCTION_33_1(v164).n128_u32[0];
        OUTLINED_FUNCTION_49_0(v165, v709);
        OUTLINED_FUNCTION_5_12();
        v167 = sub_1DD3DDA14(&qword_1EE1663F8, v166, MEMORY[0x1E6969570]);
        v168 = OUTLINED_FUNCTION_45_0(v167);
        sub_1DD39565C(v168, v169, &v715);
        OUTLINED_FUNCTION_88_0();
        *(v163 + 4) = v28;
        _os_log_impl(&dword_1DD38D000, v145, v162, "CalendarComponentConstraintSolver: constraint is bound=start, setting referenceDate to start of interval: %s", v163, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v164);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

LABEL_40:

      v181 = sub_1DD48E73C();
      v182 = *(v181 + 16);
      v680 = sub_1DD3DDA14(&qword_1EE1637E0, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      v183 = MEMORY[0x1E12B2590](v182, v664);
      v715 = v183;
      v184 = *(v181 + 16);
      if (v184)
      {
        v185 = (*(v648 + 80) + 32) & ~*(v648 + 80);
        v683 = v181;
        v186 = v181 + v185;
        v693 = *(v648 + 72);
        v187 = *(v648 + 16);
        v188 = v617;
        v189 = v618;
        v190 = v664;
        v191 = v651;
        do
        {
          v187(v188, v186, v190);
          sub_1DD56D194();
          (*v191)(v189, v190);
          v186 += v693;
          --v184;
        }

        while (v184);

        v192 = v715;
      }

      else
      {
        v192 = v183;
      }

      v193 = v638;
      v194 = v695;
      v693 = *v681;
      v195 = (v693)(v638, v688 + v687, v695);
      v196 = v690;
      OUTLINED_FUNCTION_49_0(v195, v716);
      v197 = v653[1];
      sub_1DD63D1F8();
      v198 = *v684;
      (*v684)(v193, v194);
      v199 = v696;
      v683 = v198;
      if (HIDWORD(v635) != 1)
      {
        OUTLINED_FUNCTION_63();
        v112 = v693;
        (v693)(v193);
        sub_1DD3DCFE4(v674, v193, v196, v700, v612);
        v198(v193, v194);
        v221 = sub_1DD483BE4(v192);
        v222 = sub_1DD483BE4(v192);
        sub_1DD475668(v221, v222);
        v224 = v223;

        if (v224)
        {
          v225 = v112;

          v227 = OUTLINED_FUNCTION_70(v226);
          v228 = sub_1DD640368();

          if (os_log_type_enabled(v227, v228))
          {
            v229 = OUTLINED_FUNCTION_54();
            v230 = OUTLINED_FUNCTION_62();
            *v229 = OUTLINED_FUNCTION_33_1(v230).n128_u32[0];
            v231 = sub_1DD640278();
            v233 = v232;

            v234 = sub_1DD39565C(v231, v233, &v715);
            v225 = v693;

            *(v229 + 4) = v234;
            _os_log_impl(&dword_1DD38D000, v227, v228, "CalendarComponentConstraintSolver: values are same for calendar components: %s", v229, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v230);
            OUTLINED_FUNCTION_0_1();
            OUTLINED_FUNCTION_0_1();
          }

          else
          {
          }

          v235 = v688;
          v236 = v704;
          v237 = v690;
          v238 = v696;
          OUTLINED_FUNCTION_4_12();
          v239 = OUTLINED_FUNCTION_22_3(&v635);
          v240(v239);
          OUTLINED_FUNCTION_82();
          v682();
          v241 = *v238;
          (*v238)(v621, v237, v708);
          v225(v622, v235 + v687, v695);
          if (v647 == 1)
          {

            v242 = 3;
          }

          else
          {
            sub_1DD640CD8();
            OUTLINED_FUNCTION_72_0();
            if (v237)
            {
              v242 = 3;
            }

            else
            {
              v242 = 2;
            }
          }

          __swift_storeEnumTagSinglePayload(v620, v242, 3, v236);
          v292 = v236;
          v293 = *(v700 + 52);
          sub_1DD48FBC0(v614);
          OUTLINED_FUNCTION_39_1();
          sub_1DD3DD8F4(v294, v295);
          switch(__swift_getEnumTagSinglePayload(v236, 3, v236))
          {
            case 1u:
              OUTLINED_FUNCTION_76();
              sub_1DD63D258();
              break;
            case 2u:
              v306 = OUTLINED_FUNCTION_32_5(&v624 + 8);
              (v241)(v306);
              OUTLINED_FUNCTION_87();
              OUTLINED_FUNCTION_68();
              OUTLINED_FUNCTION_76();
              sub_1DD3D5CFC();
              sub_1DD390754(v236, &qword_1ECCDEBC0, &qword_1DD6445A0);
              break;
            case 3u:
              v307 = OUTLINED_FUNCTION_32_5(&v637);
              (v241)(v307);
              OUTLINED_FUNCTION_87();
              break;
            default:
              OUTLINED_FUNCTION_16_0();
              v236 = v662;
              v296(v662, v603, v704);
              OUTLINED_FUNCTION_16_0();
              OUTLINED_FUNCTION_79_0();
              OUTLINED_FUNCTION_55_0();
              v298 = *(v297 - 256);
              v299();
              OUTLINED_FUNCTION_12_10();
              OUTLINED_FUNCTION_54_0();
              v300();
              OUTLINED_FUNCTION_76();
              sub_1DD63D298();
              OUTLINED_FUNCTION_16_0();
              v301 = OUTLINED_FUNCTION_73();
              v302(v301);
              OUTLINED_FUNCTION_16_0();
              v303(v292, v298);
              v304 = OUTLINED_FUNCTION_10_12();
              v305(v304, v704);
              break;
          }

          v308 = v602;
          if (v293 && (v236 = v604, OUTLINED_FUNCTION_56_1(), __swift_storeEnumTagSinglePayload(v310, v311, v312, *(v309 - 256)), v313 = sub_1DD48C3AC(v620, v236), sub_1DD3DD958(v236), (v313 & 1) == 0))
          {
            v292 = v610;
            OUTLINED_FUNCTION_37_3();
            OUTLINED_FUNCTION_68();
            OUTLINED_FUNCTION_76();
            sub_1DD3D5CFC();
            sub_1DD390754(v292, &qword_1ECCDEBC0, &qword_1DD6445A0);
            sub_1DD390754(v236, &qword_1ECCDC130, &unk_1DD645260);
          }

          else
          {
            sub_1DD390754(v614, &qword_1ECCDC130, &unk_1DD645260);
            sub_1DD3D7DA0(v610, v308);
          }

          OUTLINED_FUNCTION_34_3(v308, 1, &v722);
          v112 = v695;
          if (v439)
          {
            sub_1DD3DD958(v620);
            OUTLINED_FUNCTION_8_5();
            v314();
            OUTLINED_FUNCTION_16_0();
            v315 = OUTLINED_FUNCTION_60_1();
            v316(v315);
            OUTLINED_FUNCTION_16_0();
            OUTLINED_FUNCTION_47_0();
            v317();
            OUTLINED_FUNCTION_39_1();
            OUTLINED_FUNCTION_7_9();
            v318();
            sub_1DD390754(v308, &qword_1ECCDEBC0, &qword_1DD6445A0);
            OUTLINED_FUNCTION_50_1(v629);
            OUTLINED_FUNCTION_65_0();
            __swift_storeEnumTagSinglePayload(v319, v320, v321, v236);
          }

          else
          {
            OUTLINED_FUNCTION_16_0();
            v322 = v598;
            v323 = OUTLINED_FUNCTION_73();
            v324 = v708;
            v325(v323);
            OUTLINED_FUNCTION_61_0();
            OUTLINED_FUNCTION_64_0();
            OUTLINED_FUNCTION_37_3();
            sub_1DD4852E4(v326, v327, v700, v328, v329);
            v330 = *v691;
            (*v691)(v322, v324);
            sub_1DD3DD958(v620);
            OUTLINED_FUNCTION_8_5();
            v331();
            v332 = OUTLINED_FUNCTION_62_0(&v650);
            v330(v332);
            OUTLINED_FUNCTION_16_0();
            OUTLINED_FUNCTION_47_0();
            v333();
            OUTLINED_FUNCTION_86_0();
            OUTLINED_FUNCTION_7_9();
            v334();
          }

          OUTLINED_FUNCTION_34_3(v292, 1, &v721);
          v335 = v601;
          if (v439)
          {
            sub_1DD390754(v292, &qword_1ECCDC170, &qword_1DD645270);
          }

          else
          {
            v336 = OUTLINED_FUNCTION_10_12();
            v337(v336, v292, v707);
            v338 = v599;
            if (v647)
            {
              if (v647 == 1)
              {
                v339 = 6581861;
              }

              else
              {
                v339 = 0x746573746F6ELL;
              }

              OUTLINED_FUNCTION_17_8(v339);
              OUTLINED_FUNCTION_72_0();
              if ((v292 & 1) == 0)
              {
                OUTLINED_FUNCTION_81();
                if (!v340)
                {
                  goto LABEL_98;
                }

                OUTLINED_FUNCTION_81();
                v342 = *(v341 + 49);
                if (v342)
                {
                  if (v342 == 1)
                  {
                    v343 = 6581861;
                  }

                  else
                  {
                    v343 = 0x746573746F6ELL;
                  }

                  OUTLINED_FUNCTION_17_8(v343);
                  OUTLINED_FUNCTION_72_0();
                  if ((v292 & 1) == 0)
                  {
LABEL_98:
                    v344 = v335;
                    sub_1DD63C828();
                    goto LABEL_101;
                  }
                }

                else
                {
                }
              }
            }

            else
            {
            }

            v344 = v335;
            sub_1DD63C848();
LABEL_101:
            OUTLINED_FUNCTION_43_1(&v712);
            swift_beginAccess();
            OUTLINED_FUNCTION_16_0();
            v345(v344, v338, v708);
            OUTLINED_FUNCTION_38_1();
            (*(v346 - 256))();
            sub_1DD56D300();
            OUTLINED_FUNCTION_58_1();
            v348 = *(v347 - 256);
            v348();
            v349 = OUTLINED_FUNCTION_52();
            (v348)(v349);
            OUTLINED_FUNCTION_26_5();
          }
        }

        else
        {

          OUTLINED_FUNCTION_26_5();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC178, &qword_1DD645278);
        v350 = v611;
        v351 = *(v611 + 72);
        v352 = (*(v611 + 80) + 32) & ~*(v611 + 80);
        v353 = swift_allocObject();
        *(v353 + 16) = v608;
        v354 = v353 + v352;
        v355 = *(v350 + 104);
        v356 = v704;
        v357 = v605;
        v355(v354, v607, v704);
        v680 = v351;
        v679 = v354;
        v355(v354 + v351, v606, v356);
        sub_1DD408C00();
        v631 = v353;
        sub_1DD408C00();
        v358 = 0;
        v359 = 0;
        v678 = *(v700 + 52);
        v360 = v694;
        v205 = v675;
        v361 = v690;
        while (2)
        {
          v362 = v358;
          v363 = v679 + v359 * v680;
          OUTLINED_FUNCTION_4_12();
          v364 = OUTLINED_FUNCTION_22_3(&v717);
          v365(v364);
          v11 = *v696;
          (*v696)(v706, v361, v708);
          OUTLINED_FUNCTION_83();
          (v693)(v705, v367 + v366, v112);
          OUTLINED_FUNCTION_16_0();
          v368 = OUTLINED_FUNCTION_79_0();
          v369 = v704;
          v370(v368, v363, v704);
          __swift_storeEnumTagSinglePayload(v357, 0, 3, v369);
          v371 = v700;
          sub_1DD48FBC0(v360);
          OUTLINED_FUNCTION_84();
          sub_1DD3DD8F4(v372, v373);
          switch(__swift_getEnumTagSinglePayload(v371, 3, v369))
          {
            case 1u:
              OUTLINED_FUNCTION_53_0();
              OUTLINED_FUNCTION_29_1();
              sub_1DD63D258();
              goto LABEL_109;
            case 2u:
              OUTLINED_FUNCTION_43_1(&v697);
              OUTLINED_FUNCTION_6_12();
              v11();
              OUTLINED_FUNCTION_41_0(v371);
              OUTLINED_FUNCTION_84();
              v357 = &qword_1ECCDEBC0;
              sub_1DD3DD9B4(v385, v386, &qword_1ECCDEBC0, &qword_1DD6445A0);
              v387 = OUTLINED_FUNCTION_67_0();
              if (__swift_getEnumTagSinglePayload(v387, v388, v369) == 1)
              {
                sub_1DD390754(v371, &qword_1ECCDEBC0, &qword_1DD6445A0);
                OUTLINED_FUNCTION_42_0();
LABEL_112:
                OUTLINED_FUNCTION_65_0();
                __swift_storeEnumTagSinglePayload(v398, v399, v400, v708);
                OUTLINED_FUNCTION_27_3();
LABEL_113:
                v401 = &qword_1ECCDEBC0;
                goto LABEL_122;
              }

              LODWORD(v682) = v362;
              v389 = v371;
              v371 = *v673;
              v369 = v656;
              (*v673)(v656, v389, v708);
              v390 = v360;
              v205 = v654;
              v357 = &qword_1ECCDC130;
              v360 = &unk_1DD645260;
              sub_1DD3DD9B4(v390, v654, &qword_1ECCDC130, &unk_1DD645260);
              OUTLINED_FUNCTION_30_4();
              EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v391, v392, v393);
              v11 = v689;
              if (EnumTagSinglePayload == 1)
              {
                v395 = OUTLINED_FUNCTION_3_16();
                v397(v395, *(v396 - 256));
                sub_1DD390754(v205, &qword_1ECCDC130, &unk_1DD645260);
                OUTLINED_FUNCTION_40_1();
                OUTLINED_FUNCTION_31_3();
                OUTLINED_FUNCTION_26_5();
                v362 = v682;
                goto LABEL_112;
              }

              OUTLINED_FUNCTION_16_0();
              v360 = v649;
              v402(v649, v205, v362);
              OUTLINED_FUNCTION_16_0();
              v403 = OUTLINED_FUNCTION_79_0();
              v404(v403, v360, v362);
              OUTLINED_FUNCTION_16_0();
              v406 = v405(&qword_1ECCDC130, v362);
              v407 = v642;
              if (v406 == v642)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
                v112 = v648;
                v408 = (*(v648 + 80) + 32) & ~*(v648 + 80);
                v409 = OUTLINED_FUNCTION_51_1();
                *(v409 + 16) = v624;
                v410 = *(v112 + 104);
                v411 = v407;
                v369 = v625;
                (v410)(v409 + v408, v411, v362);
                OUTLINED_FUNCTION_21_1();
                v410();
                v412 = OUTLINED_FUNCTION_19_7();
                (v410)(v412);
                OUTLINED_FUNCTION_78();
                OUTLINED_FUNCTION_21_1();
                v410();
                OUTLINED_FUNCTION_21_1();
                v410();
                v413 = OUTLINED_FUNCTION_13_8();
                (v410)(v413);
                sub_1DD56BDEC();
                v11 = v414;
                v205 = v613;
                OUTLINED_FUNCTION_15_8();
                v357 = *(v415 - 256);
                sub_1DD63D1F8();
                OUTLINED_FUNCTION_42_0();

                sub_1DD63CA38();
                sub_1DD63CAC8();
                OUTLINED_FUNCTION_5_11();
                sub_1DD63CA88();
                OUTLINED_FUNCTION_5_11();
                sub_1DD63CAF8();
                OUTLINED_FUNCTION_5_11();
                sub_1DD63CB18();
                OUTLINED_FUNCTION_53_0();
                v371 = v357;
                sub_1DD63D248();
                OUTLINED_FUNCTION_16_0();
                OUTLINED_FUNCTION_47_0();
                v416();
                (*(v112 + 8))(v360, v362);
                v417 = OUTLINED_FUNCTION_3_16();
                v419(v417, *(v418 - 256));
                OUTLINED_FUNCTION_20_3();
                OUTLINED_FUNCTION_31_3();
LABEL_116:
                OUTLINED_FUNCTION_26_5();
LABEL_121:
                v362 = v682;
                goto LABEL_122;
              }

              v360 = v641;
              if (v406 == v641)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
                OUTLINED_FUNCTION_9_6();
                v420 = OUTLINED_FUNCTION_51_1();
                OUTLINED_FUNCTION_11_9(v420, v653);
                OUTLINED_FUNCTION_30_4();
                v369 = v625;
                qword_1DD6445A0(v421);
                qword_1DD6445A0(v11 + v205);
                v422 = OUTLINED_FUNCTION_19_7();
                qword_1DD6445A0(v422);
                OUTLINED_FUNCTION_78();
                OUTLINED_FUNCTION_21_1();
                qword_1DD6445A0(v423);
                OUTLINED_FUNCTION_21_1();
                qword_1DD6445A0(v424);
                v425 = OUTLINED_FUNCTION_13_8();
                qword_1DD6445A0(v425);
                sub_1DD56BDEC();
                v11 = v426;
                OUTLINED_FUNCTION_64_0();
                OUTLINED_FUNCTION_15_8();
                sub_1DD63D1F8();

                OUTLINED_FUNCTION_44_0();
                sub_1DD63CA38();
                sub_1DD63CAB8();
                OUTLINED_FUNCTION_26_5();
                if ((v427 & 1) == 0)
                {
                  OUTLINED_FUNCTION_44_0();
                  sub_1DD63CAC8();
                }

                OUTLINED_FUNCTION_5_11();
                v371 = &qword_1ECCDC130;
                sub_1DD63CA88();
                OUTLINED_FUNCTION_5_11();
                sub_1DD63CAF8();
                OUTLINED_FUNCTION_5_11();
                sub_1DD63CB18();
                OUTLINED_FUNCTION_53_0();
                OUTLINED_FUNCTION_29_1();
                sub_1DD63D248();
                OUTLINED_FUNCTION_16_0();
                OUTLINED_FUNCTION_47_0();
                v428();
                OUTLINED_FUNCTION_16_0();
                v429(v649, v362);
                v430 = OUTLINED_FUNCTION_3_16();
                v432(v430, *(v431 - 256));
                OUTLINED_FUNCTION_20_3();
                OUTLINED_FUNCTION_42_0();
                OUTLINED_FUNCTION_31_3();
                goto LABEL_121;
              }

              OUTLINED_FUNCTION_74();
              v360 = v694;
              v205 = v675;
              v112 = v695;
              v362 = v682;
              if (v439)
              {
                goto LABEL_150;
              }

              v369 = v630;
              if (v466 == v630)
              {
                v112 = v675;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
                OUTLINED_FUNCTION_9_6();
                v473 = OUTLINED_FUNCTION_51_1();
                OUTLINED_FUNCTION_11_9(v473, v653);
                OUTLINED_FUNCTION_30_4();
                v357 = v625;
                qword_1DD6445A0(v474);
                OUTLINED_FUNCTION_21_1();
                qword_1DD6445A0(v475);
                v476 = OUTLINED_FUNCTION_19_7();
                qword_1DD6445A0(v476);
                v477 = OUTLINED_FUNCTION_78();
                qword_1DD6445A0(v477);
                OUTLINED_FUNCTION_21_1();
                qword_1DD6445A0(v478);
                v479 = OUTLINED_FUNCTION_13_8();
                qword_1DD6445A0(v479);
                sub_1DD56BDEC();
                v11 = v480;
                OUTLINED_FUNCTION_64_0();
                OUTLINED_FUNCTION_15_8();
                sub_1DD63D1F8();

                OUTLINED_FUNCTION_5_11();
                v371 = v357;
                sub_1DD63CAF8();
                OUTLINED_FUNCTION_5_11();
                sub_1DD63CB18();
                sub_1DD63CA78();
                if ((v481 & 1) == 0)
                {
                  OUTLINED_FUNCTION_44_0();
                  sub_1DD63CA88();
                }
              }

              else
              {
                v369 = v627;
                if (v466 != v627)
                {
                  OUTLINED_FUNCTION_74();
                  if (v439)
                  {
                    OUTLINED_FUNCTION_16_0();
                    v357 = v495;
                    v496(v649, v664);
                    v11 = v702;
                    v369 = v708;
                    (v371)(v702, v656, v708);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_74();
                    if (!v497)
                    {
                      OUTLINED_FUNCTION_74();
                      v369 = v585;
                      if (v439 || v498 == v585)
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
                        OUTLINED_FUNCTION_9_6();
                        v500 = swift_allocObject();
                        v501 = OUTLINED_FUNCTION_11_9(v500, v634);
                        v502 = v664;
                        v369 = v625;
                        qword_1DD6445A0(v501);
                        v112 = v694;
                        qword_1DD6445A0(v11 + v205);
                        sub_1DD56BDEC();
                        v11 = v503;
                        OUTLINED_FUNCTION_15_8();
                        v371 = *(v504 - 256);
                        sub_1DD63D1F8();
                        OUTLINED_FUNCTION_42_0();

                        OUTLINED_FUNCTION_53_0();
                        sub_1DD63D248();
                        OUTLINED_FUNCTION_16_0();
                        OUTLINED_FUNCTION_47_0();
                        v505();
                        v506 = v502;
                        v360 = v112;
                        v205 = v675;
                        off_1ECCDC138(v649, v506);
                        v507 = OUTLINED_FUNCTION_3_16();
                        v509(v507, *(v508 - 256));
                      }

                      else
                      {
                        v112 = v205;
                        v371 = *v651;
                        OUTLINED_FUNCTION_39_1();
                        (v371)();
                        OUTLINED_FUNCTION_16_0();
                        v357 = v708;
                        v510(v656, v708);
                        OUTLINED_FUNCTION_65_0();
                        __swift_storeEnumTagSinglePayload(v511, v512, v513, v357);
                        (v371)(v634[0], v369);
                      }

                      OUTLINED_FUNCTION_27_3();
                      OUTLINED_FUNCTION_26_5();
                      goto LABEL_113;
                    }

LABEL_150:
                    v11 = v702;
                    OUTLINED_FUNCTION_29_1();
                    v357 = v467;
                    sub_1DD63D1B8();
                    OUTLINED_FUNCTION_16_0();
                    v468(v649, v664);
                    v469 = OUTLINED_FUNCTION_3_16();
                    v369 = *(v470 - 256);
                    v471(v469, v369);
                  }

                  OUTLINED_FUNCTION_42_0();
                  OUTLINED_FUNCTION_41_0(v472);
                  OUTLINED_FUNCTION_27_3();
LABEL_122:
                  sub_1DD390754(v668, v401, &qword_1DD6445A0);
LABEL_123:
                  if (v678)
                  {
                    OUTLINED_FUNCTION_50_1(&v707);
                    OUTLINED_FUNCTION_56_1();
                    v369 = *(v433 - 256);
                    __swift_storeEnumTagSinglePayload(v434, v435, v436, v369);
                    v371 = *(v669[0] + 48);
                    v437 = v677;
                    sub_1DD3DD8F4(v703, v677);
                    sub_1DD3DD8F4(v357, v437 + v371);
                    switch(__swift_getEnumTagSinglePayload(v437, 3, v369))
                    {
                      case 1u:
                        OUTLINED_FUNCTION_71();
                        v439 = OUTLINED_FUNCTION_24_1() == 1;
                        goto LABEL_131;
                      case 2u:
                        OUTLINED_FUNCTION_71();
                        v439 = OUTLINED_FUNCTION_24_1() == 2;
                        goto LABEL_131;
                      case 3u:
                        OUTLINED_FUNCTION_71();
                        v439 = OUTLINED_FUNCTION_24_1() == 3;
LABEL_131:
                        v371 = v701[0];
                        if (!v439)
                        {
                          goto LABEL_135;
                        }

                        sub_1DD390754(v360, &qword_1ECCDC130, &unk_1DD645260);
                        sub_1DD3DD958(v437);
                        break;
                      default:
                        v437 = v677;
                        sub_1DD3DD8F4(v677, v11);
                        v357 = v704;
                        if (__swift_getEnumTagSinglePayload(v437 + v371, 3, v704))
                        {
                          OUTLINED_FUNCTION_71();
                          OUTLINED_FUNCTION_16_0();
                          v438(v11, v357);
                          OUTLINED_FUNCTION_27_3();
LABEL_135:
                          sub_1DD390754(v437, &qword_1ECCDC168, &unk_1DD64FFB0);
                          goto LABEL_136;
                        }

                        OUTLINED_FUNCTION_16_0();
                        v11 = v623;
                        v465(v623, v437 + v371, v357);
                        v371 = sub_1DD63D208();
                        v369 = v666;
                        v360 = *v666;
                        (*v666)(v11, v357);
                        OUTLINED_FUNCTION_71();
                        (v360)(v689, v357);
                        if ((v371 & 1) == 0)
                        {
                          sub_1DD3DD958(v437);
                          OUTLINED_FUNCTION_20_3();
                          OUTLINED_FUNCTION_31_3();
                          OUTLINED_FUNCTION_26_5();
LABEL_136:
                          v11 = v702;
                          OUTLINED_FUNCTION_68();
                          OUTLINED_FUNCTION_29_1();
                          sub_1DD3D5CFC();
                          OUTLINED_FUNCTION_27_3();
                          sub_1DD390754(v11, &qword_1ECCDEBC0, &qword_1DD6445A0);
                          sub_1DD390754(v360, &qword_1ECCDC130, &unk_1DD645260);
                          goto LABEL_137;
                        }

                        OUTLINED_FUNCTION_40_1();
                        sub_1DD390754(v360, &qword_1ECCDC130, &unk_1DD645260);
                        sub_1DD3DD958(v437);
                        OUTLINED_FUNCTION_27_3();
                        OUTLINED_FUNCTION_31_3();
                        OUTLINED_FUNCTION_26_5();
                        break;
                    }
                  }

                  else
                  {
                    sub_1DD390754(v360, &qword_1ECCDC130, &unk_1DD645260);
                  }

                  sub_1DD3D7DA0(v702, v371);
LABEL_137:
                  v440 = OUTLINED_FUNCTION_67_0();
                  OUTLINED_FUNCTION_34_3(v440, v441, &v722);
                  if (v439)
                  {
                    sub_1DD3DD958(v703);
                    OUTLINED_FUNCTION_8_5();
                    v442();
                    v443 = OUTLINED_FUNCTION_60_1();
                    v682 = v444;
                    (v444)(v443);
                    OUTLINED_FUNCTION_39_1();
                    OUTLINED_FUNCTION_7_9();
                    v445();
                    sub_1DD390754(v371, &qword_1ECCDEBC0, &qword_1DD6445A0);
                    OUTLINED_FUNCTION_43_1(&v706);
                    OUTLINED_FUNCTION_65_0();
                    __swift_storeEnumTagSinglePayload(v446, v447, v448, v369);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_16_0();
                    v449 = OUTLINED_FUNCTION_48_0();
                    v450(v449);
                    OUTLINED_FUNCTION_61_0();
                    OUTLINED_FUNCTION_64_0();
                    OUTLINED_FUNCTION_37_3();
                    v11 = v362;
                    sub_1DD4852E4(v451, v452, v700, v453, v454);
                    v371 = v357;
                    v357 = v691;
                    v455 = *v691;
                    (*v691)(v205, v360);
                    sub_1DD3DD958(v703);
                    OUTLINED_FUNCTION_8_5();
                    v456();
                    OUTLINED_FUNCTION_62_0(&v720);
                    OUTLINED_FUNCTION_40_1();
                    OUTLINED_FUNCTION_31_3();
                    v682 = v455;
                    v455();
                    OUTLINED_FUNCTION_86_0();
                    OUTLINED_FUNCTION_7_9();
                    v457();
                  }

                  v458 = OUTLINED_FUNCTION_67_0();
                  OUTLINED_FUNCTION_34_3(v458, v459, &v721);
                  if (v439)
                  {
                    sub_1DD390754(v371, &qword_1ECCDC170, &qword_1DD645270);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_16_0();
                    v460 = v667;
                    v357 = v707;
                    v461(v667, v371, v707);
                    v698(v671, v460, v357);
                    v112 = v205;
                    sub_1DD56D300();
                    OUTLINED_FUNCTION_40_1();
                    OUTLINED_FUNCTION_58_1();
                    v463 = *(v462 - 256);
                    v463();
                    v464 = OUTLINED_FUNCTION_52();
                    (v463)(v464);
                    v205 = v112;
                  }

                  v361 = v690;
                  OUTLINED_FUNCTION_26_5();
                  v358 = 1;
                  v359 = 1;
                  if (v362)
                  {
                    OUTLINED_FUNCTION_43_1(v657);
                    swift_setDeallocating();
                    sub_1DD46CB60();
                    v83 = v655;
                    v514 = *v655;
                    v515 = OUTLINED_FUNCTION_23_3();
                    v514(v515);
                    v516 = OUTLINED_FUNCTION_57_1();
                    v514(v516);
                    OUTLINED_FUNCTION_85();
                    a3 = v636;
                    v274 = v653[0];
LABEL_171:
                    v278 = v700;
                    goto LABEL_172;
                  }

                  continue;
                }

                v112 = v675;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
                OUTLINED_FUNCTION_9_6();
                v482 = OUTLINED_FUNCTION_51_1();
                OUTLINED_FUNCTION_11_9(v482, v653);
                OUTLINED_FUNCTION_30_4();
                v357 = v625;
                qword_1DD6445A0(v483);
                OUTLINED_FUNCTION_21_1();
                qword_1DD6445A0(v484);
                v485 = OUTLINED_FUNCTION_19_7();
                qword_1DD6445A0(v485);
                OUTLINED_FUNCTION_78();
                OUTLINED_FUNCTION_21_1();
                qword_1DD6445A0(v486);
                qword_1DD6445A0(v11 + 4 * v205);
                v487 = OUTLINED_FUNCTION_13_8();
                qword_1DD6445A0(v487);
                sub_1DD56BDEC();
                v11 = v488;
                OUTLINED_FUNCTION_64_0();
                OUTLINED_FUNCTION_15_8();
                sub_1DD63D1F8();

                sub_1DD63CAE8();
                if ((v489 & 1) == 0)
                {
                  OUTLINED_FUNCTION_44_0();
                  sub_1DD63CAF8();
                }

                OUTLINED_FUNCTION_5_11();
                v371 = v357;
                sub_1DD63CB18();
              }

              OUTLINED_FUNCTION_53_0();
              OUTLINED_FUNCTION_29_1();
              sub_1DD63D248();
              OUTLINED_FUNCTION_16_0();
              OUTLINED_FUNCTION_47_0();
              v490();
              OUTLINED_FUNCTION_16_0();
              v491(v649, v362);
              v492 = OUTLINED_FUNCTION_3_16();
              v494(v492, *(v493 - 256));
              OUTLINED_FUNCTION_20_3();
              OUTLINED_FUNCTION_42_0();
              v205 = v112;
              goto LABEL_116;
            case 3u:
              OUTLINED_FUNCTION_43_1(&v718);
              OUTLINED_FUNCTION_6_12();
              v11();
              OUTLINED_FUNCTION_41_0(v371);
              goto LABEL_109;
            default:
              OUTLINED_FUNCTION_16_0();
              v374 = v662;
              v375(v662, v692, v704);
              OUTLINED_FUNCTION_16_0();
              OUTLINED_FUNCTION_55_0();
              v357 = *(v376 - 256);
              v377();
              OUTLINED_FUNCTION_12_10();
              OUTLINED_FUNCTION_54_0();
              v378();
              OUTLINED_FUNCTION_53_0();
              OUTLINED_FUNCTION_29_1();
              sub_1DD63D298();
              OUTLINED_FUNCTION_16_0();
              v379 = OUTLINED_FUNCTION_73();
              v360 = v694;
              v380(v379);
              v381 = OUTLINED_FUNCTION_10_12();
              v369 = v695;
              v382(v381, v357);
              OUTLINED_FUNCTION_16_0();
              v383 = v374;
              v112 = v369;
              v384(v383, v704);
LABEL_109:
              OUTLINED_FUNCTION_27_3();
              OUTLINED_FUNCTION_42_0();
              goto LABEL_123;
          }
        }
      }

      OUTLINED_FUNCTION_4_12();
      v200 = OUTLINED_FUNCTION_22_3(&v660);
      v201(v200);
      v202 = *v199;
      v203 = OUTLINED_FUNCTION_62_0(&v672);
      (v202)(v203);
      OUTLINED_FUNCTION_63();
      (v693)(v650);
      v204 = OUTLINED_FUNCTION_50_1(v669);
      v205 = v704;
      __swift_storeEnumTagSinglePayload(v204, 1, 3, v704);
      v206 = *(v700 + 52);
      v207 = v700;
      sub_1DD48FBC0(v643);
      OUTLINED_FUNCTION_84();
      sub_1DD3DD8F4(v208, v209);
      switch(__swift_getEnumTagSinglePayload(v207, 3, v205))
      {
        case 1u:
          OUTLINED_FUNCTION_75();
          sub_1DD63D258();
          break;
        case 2u:
          OUTLINED_FUNCTION_50_1(&v624 + 8);
          OUTLINED_FUNCTION_6_12();
          v202();
          OUTLINED_FUNCTION_41_0(v198);
          OUTLINED_FUNCTION_68();
          OUTLINED_FUNCTION_75();
          sub_1DD3D5CFC();
          sub_1DD390754(v198, &qword_1ECCDEBC0, &qword_1DD6445A0);
          break;
        case 3u:
          OUTLINED_FUNCTION_43_1(&v661);
          OUTLINED_FUNCTION_6_12();
          v202();
          OUTLINED_FUNCTION_41_0(v207);
          break;
        default:
          OUTLINED_FUNCTION_16_0();
          v210 = OUTLINED_FUNCTION_79_0();
          v197 = v704;
          v211(v210, v619, v704);
          OUTLINED_FUNCTION_16_0();
          v212 = v663;
          OUTLINED_FUNCTION_55_0();
          v214 = *(v213 - 256);
          v215();
          OUTLINED_FUNCTION_12_10();
          OUTLINED_FUNCTION_54_0();
          v216();
          OUTLINED_FUNCTION_75();
          sub_1DD63D298();
          OUTLINED_FUNCTION_16_0();
          v217 = OUTLINED_FUNCTION_73();
          v218(v217);
          OUTLINED_FUNCTION_16_0();
          v219(v212, v214);
          OUTLINED_FUNCTION_16_0();
          v220(v198, v197);
          break;
      }

      v83 = v628;
      OUTLINED_FUNCTION_31_3();
      if (v206 && (OUTLINED_FUNCTION_50_1(v633), OUTLINED_FUNCTION_56_1(), __swift_storeEnumTagSinglePayload(v244, v245, v246, *(v243 - 256)), v207 = sub_1DD48C3AC(v645, v83), v247 = v83, v83 = v628, sub_1DD3DD958(v247), (v207 & 1) == 0))
      {
        v250 = v609;
        v205 = v633[2];
        v251 = v643;
        OUTLINED_FUNCTION_68();
        OUTLINED_FUNCTION_75();
        sub_1DD3D5CFC();
        v207 = v250;
        OUTLINED_FUNCTION_31_3();
        sub_1DD390754(v252, &qword_1ECCDEBC0, &qword_1DD6445A0);
        v253 = v251;
        v83 = v628;
        sub_1DD390754(v253, &qword_1ECCDC130, &unk_1DD645260);
      }

      else
      {
        sub_1DD390754(v643, &qword_1ECCDC130, &unk_1DD645260);
        OUTLINED_FUNCTION_84();
        sub_1DD3D7DA0(v248, v249);
      }

      v254 = OUTLINED_FUNCTION_67_0();
      OUTLINED_FUNCTION_34_3(v254, v255, &v722);
      v256 = v695;
      if (v439)
      {
        sub_1DD3DD958(v645);
        v11 = v256;
        OUTLINED_FUNCTION_8_5();
        v257();
        v258 = OUTLINED_FUNCTION_60_1();
        v682 = v259;
        (v259)(v258);
        OUTLINED_FUNCTION_39_1();
        OUTLINED_FUNCTION_7_9();
        v260();
        sub_1DD390754(v207, &qword_1ECCDEBC0, &qword_1DD6445A0);
        OUTLINED_FUNCTION_65_0();
        __swift_storeEnumTagSinglePayload(v261, v262, v263, v197);
      }

      else
      {
        OUTLINED_FUNCTION_16_0();
        v264 = OUTLINED_FUNCTION_48_0();
        v265(v264);
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_37_3();
        sub_1DD4852E4(v266, v267, v700, v268, v269);
        v270 = *v691;
        (*v691)(v205, v206);
        sub_1DD3DD958(v645);
        v11 = v256;
        OUTLINED_FUNCTION_8_5();
        v271();
        OUTLINED_FUNCTION_62_0(&v672);
        OUTLINED_FUNCTION_31_3();
        v682 = v270;
        v270();
        OUTLINED_FUNCTION_86_0();
        OUTLINED_FUNCTION_7_9();
        v272();
      }

      v273 = v205;
      OUTLINED_FUNCTION_34_3(v83, 1, &v721);
      a3 = v636;
      v274 = v653[0];
      if (!v439)
      {
        OUTLINED_FUNCTION_16_0();
        v279 = v600;
        v280 = OUTLINED_FUNCTION_52();
        v281 = v707;
        v282(v280);
        v283 = OUTLINED_FUNCTION_50_1(v701);
        v698(v283, v279, v281);
        v284 = v672;
        v285 = v695;
        sub_1DD56D300();
        OUTLINED_FUNCTION_58_1();
        v287 = *(v286 - 256);
        v287();
        v288 = v281;
        v205 = v273;
        v112 = v285;
        v11 = v284;
        (v287)(v279, v288);
        v83 = v655;
        v289 = *v655;
        v290 = OUTLINED_FUNCTION_23_3();
        v289(v290);
        v291 = OUTLINED_FUNCTION_57_1();
        v289(v291);
        goto LABEL_171;
      }

      v275 = *v655;
      v276 = OUTLINED_FUNCTION_23_3();
      v275(v276);
      v277 = OUTLINED_FUNCTION_57_1();
      v275(v277);
      sub_1DD390754(v83, &qword_1ECCDC170, &qword_1DD645270);
      v112 = v11;
      v278 = v700;
      OUTLINED_FUNCTION_85();
LABEL_172:
      v28 = v274 + 1;
      v517 = OUTLINED_FUNCTION_43_1(&v712);
      (v682)(v517, v708);
      a1 = v647;
      if (v28 == v639)
      {
        v83 = v205;
        v129 = v278;

        v28 = v638;
        goto LABEL_177;
      }
    }

    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
LABEL_220:
    __break(1u);
LABEL_221:
    __break(1u);
LABEL_222:
    swift_once();
  }

LABEL_178:
  v518 = v721;
  v439 = v129[54] == 1;
  v697 = v721;
  if (v439)
  {
    v519 = *(v721 + 16);
    if (!v519)
    {
      OUTLINED_FUNCTION_66_0();

      v537 = MEMORY[0x1E69E7CC0];
      goto LABEL_208;
    }

    v112 = v721;
    v715 = MEMORY[0x1E69E7CC0];

    sub_1DD640988();
    a3 = sub_1DD55B198();
    v83 = 0;
    v708 = (v112 + 56);
    v522 = v591;
    v702 = (v591 + 16);
    v701[1] = v591 + 8;
    v699 = v520;
    v698 = (v112 + 64);
    v28 = 1;
    v701[0] = v519;
    while (1)
    {
      if (a3 < 0 || a3 >= 1 << *(v112 + 32))
      {
        goto LABEL_215;
      }

      a1 = a3 >> 6;
      if ((*(v708 + (a3 >> 6)) & (1 << a3)) == 0)
      {
        goto LABEL_216;
      }

      if (*(v112 + 36) != v520)
      {
        goto LABEL_217;
      }

      v705 = 1 << a3;
      v704 = v520;
      v703 = v83;
      v523 = v522;
      v524 = *(v112 + 48) + *(v522 + 72) * a3;
      v525 = *(v522 + 16);
      v83 = v112;
      v112 = v707;
      LODWORD(v706) = v521;
      v525(v11, v524, v707);
      v526 = v671;
      v525(v671, v11, v112);
      swift_allocObject();
      sub_1DD57F5F8(v526, 0);
      (*(v523 + 8))(v11, v112);
      sub_1DD640958();
      sub_1DD640998();
      sub_1DD6409A8();
      sub_1DD640968();
      if (v706)
      {
        break;
      }

      v28 = 1;
      v527 = 1 << *(v83 + 32);
      if (a3 >= v527)
      {
        goto LABEL_218;
      }

      v528 = *(v708 + a1);
      if ((v528 & v705) == 0)
      {
        goto LABEL_219;
      }

      v112 = v83;
      if (*(v83 + 36) != v704)
      {
        goto LABEL_220;
      }

      v529 = v528 & (-2 << (a3 & 0x3F));
      if (v529)
      {
        v527 = __clz(__rbit64(v529)) | a3 & 0x7FFFFFFFFFFFFFC0;
        OUTLINED_FUNCTION_85();
        v530 = v701[0];
        v531 = v703;
      }

      else
      {
        v532 = a1 << 6;
        v533 = a1 + 1;
        v534 = (v698 + 8 * a1);
        v11 = v672;
        v530 = v701[0];
        v531 = v703;
        while (v533 < (v527 + 63) >> 6)
        {
          v536 = *v534++;
          v535 = v536;
          v532 += 64;
          ++v533;
          if (v536)
          {
            sub_1DD3AA558(a3, v704, 0);
            v527 = __clz(__rbit64(v535)) + v532;
            goto LABEL_197;
          }
        }

        sub_1DD3AA558(a3, v704, 0);
LABEL_197:
        v522 = v591;
      }

      v521 = 0;
      v83 = v531 + 1;
      a3 = v527;
      v520 = v699;
      a1 = MEMORY[0x1E69E7CA0];
      if (v83 == v530)
      {
        OUTLINED_FUNCTION_66_0();

        v537 = v715;
        goto LABEL_208;
      }
    }

    __break(1u);
  }

  else
  {
    v538 = a3;
    v539 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_calendar;
    swift_beginAccess();
    v540 = v587;
    v708 = *(v587 + 16);
    v708(v28, a3 + v539, v112);

    sub_1DD48E1B8(v541);

    v542 = *(v540 + 8);
    v587 = v540 + 8;
    v706 = v542;
    (v542)(v28, v112);
    v543 = v612;

    v545 = OUTLINED_FUNCTION_70(v544);
    v546 = sub_1DD640368();

    if (os_log_type_enabled(v545, v546))
    {
      v112 = OUTLINED_FUNCTION_62();
      v705 = swift_slowAlloc();
      v714 = v705;
      *v112 = 134218498;
      *(v112 + 4) = *(v518 + 16);
      *(v112 + 12) = 2080;
      sub_1DD3DDA14(&qword_1ECCDC180, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);

      OUTLINED_FUNCTION_86_0();
      v548 = sub_1DD640278();
      v550 = v549;

      v551 = sub_1DD39565C(v548, v550, &v714);

      *(v112 + 14) = v551;
      *(v112 + 22) = 2080;
      v543 = v612;
      type metadata accessor for DateTimeConstraint();
      sub_1DD3DDA14(&qword_1ECCDC188, type metadata accessor for DateTimeConstraint, &unk_1DD650364);
      v552 = sub_1DD640278();
      v554 = sub_1DD39565C(v552, v553, &v714);

      *(v112 + 24) = v554;
      v538 = v688;
      _os_log_impl(&dword_1DD38D000, v545, v546, "CalendarComponentConstraintSolver: before filtering, suggestions are %ld %s, filtering by %s", v112, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_26_5();
      OUTLINED_FUNCTION_0_1();
    }

    v555 = *(v700 + 49);
    v556 = v638;
    v708(v638, v538 + v539, v112);

    v557 = sub_1DD5A83BC(v543, v555, v556, v518);

    (v706)(v556, v112);
    v558 = sub_1DD593F94(v557);
    v559 = v558[2];
    if (v559)
    {
      v714 = MEMORY[0x1E69E7CC0];
      sub_1DD640988();
      v708 = *(v591 + 16);
      v560 = (*(v591 + 80) + 32) & ~*(v591 + 80);
      v704 = v558;
      v561 = v558 + v560;
      v706 = *(v591 + 72);
      v705 = v591 + 8;
      v562 = v671;
      v563 = v672;
      do
      {
        v564 = v707;
        v565 = v708;
        v708(v563, v561, v707);
        v566 = OUTLINED_FUNCTION_52();
        v565(v566);
        swift_allocObject();
        sub_1DD57F5F8(v562, 0);
        OUTLINED_FUNCTION_16_0();
        v567(v563, v564);
        sub_1DD640958();
        sub_1DD640998();
        v568 = v595;
        sub_1DD6409A8();
        sub_1DD640968();
        v561 = &v706[v561];
        --v559;
      }

      while (v559);
      OUTLINED_FUNCTION_66_0();

      v537 = v714;
      goto LABEL_209;
    }

    OUTLINED_FUNCTION_66_0();

    v537 = MEMORY[0x1E69E7CC0];
LABEL_208:
    v568 = v595;
LABEL_209:
    *v584 = v537;
    v569 = MEMORY[0x1E12B2430](v537, v568);
    v570 = sub_1DD3CC020();

    v572 = OUTLINED_FUNCTION_70(v571);
    v573 = sub_1DD640368();

    if (os_log_type_enabled(v572, v573))
    {
      v574 = OUTLINED_FUNCTION_62();
      v708 = v569;
      v575 = v574;
      v714 = swift_slowAlloc();
      *v575 = 136315650;
      v576 = sub_1DD48E004();
      v578 = sub_1DD39565C(v576, v577, &v714);

      *(v575 + 4) = v578;
      *(v575 + 12) = 2048;
      *(v575 + 14) = v570;
      *(v575 + 22) = 2080;
      v579 = OUTLINED_FUNCTION_62_0(&v722);
      v582 = sub_1DD39565C(v579, v580, v581);

      *(v575 + 24) = v582;
      _os_log_impl(&dword_1DD38D000, v572, v573, "CalendarComponentConstraintSolver: solved constraint %s, inputs %ld: %s", v575, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {
    }
  }
}

void sub_1DD3DCFE4(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v92 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC140, &unk_1DD655030);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v77 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC148, &qword_1DD645290);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v77 - v13;
  v15 = sub_1DD63D078();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v91 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DD63D2B8();
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  if (*(a4 + 16) != 5 || *(a4 + 50))
  {
    return;
  }

  v78 = &v77 - v21;
  v79 = v23;
  v80 = v22;
  v81 = v20;
  v82 = a2;
  v86 = a1;
  v87 = v14;
  v84 = v15;
  v85 = v11;
  v83 = v16;
  v90 = a4;
  if ((a5 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1DD640778();
    type metadata accessor for DateTimeConstraint();
    sub_1DD3DDA14(&qword_1ECCDC188, type metadata accessor for DateTimeConstraint, &unk_1DD650364);
    sub_1DD6402A8();
    v24 = v94[1];
    v25 = v94[2];
    v26 = v94[3];
    v27 = v94[4];
    v28 = v94[5];
  }

  else
  {
    v29 = -1 << *(a5 + 32);
    v25 = a5 + 56;
    v26 = ~v29;
    v30 = -v29;
    v31 = v30 < 64 ? ~(-1 << v30) : -1;
    v28 = v31 & *(a5 + 56);

    v27 = 0;
    v24 = a5;
  }

  v88 = v26;
  v89 = v24;
  v32 = (v26 + 64) >> 6;
  while (1)
  {
    while (1)
    {
      v33 = v28;
      if (v24 < 0)
      {
        v36 = sub_1DD6407F8();
        if (!v36 || (v93 = v36, type metadata accessor for DateTimeConstraint(), swift_dynamicCast(), (v26 = v94[0]) == 0))
        {
LABEL_42:
          sub_1DD3AA5A4(v24);
          return;
        }
      }

      else
      {
        v34 = v27;
        v35 = v28;
        if (!v28)
        {
          while (1)
          {
            v27 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
              break;
            }

            if (v27 >= v32)
            {
              goto LABEL_42;
            }

            v35 = *(v25 + 8 * v27);
            ++v34;
            if (v35)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
          goto LABEL_58;
        }

LABEL_15:
        v28 = (v35 - 1) & v35;
        v26 = *(*(v24 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v35)))));

        if (!v26)
        {
          goto LABEL_42;
        }
      }

      if (*(v26 + 16) == 9)
      {
        break;
      }
    }

    if (*(v26 + 49))
    {
      if (*(v26 + 49) == 1)
      {
        a4 = 0xE300000000000000;
        v37 = 6581861;
      }

      else
      {
        a4 = 0xE600000000000000;
        v37 = 0x746573746F6ELL;
      }
    }

    else
    {
      a4 = 0xE500000000000000;
      v37 = 0x7472617473;
    }

    v38 = BYTE1(v90[6].isa);
    v39 = 0x746573746F6ELL;
    if (v38 == 1)
    {
      v39 = 6581861;
    }

    v40 = 0xE300000000000000;
    if (v38 != 1)
    {
      v40 = 0xE600000000000000;
    }

    v41 = BYTE1(v90[6].isa) ? v39 : 0x7472617473;
    v42 = BYTE1(v90[6].isa) ? v40 : 0xE500000000000000;
    if (v37 == v41 && a4 == v42)
    {
      break;
    }

    a2 = sub_1DD640CD8();

    v24 = v89;
    if (a2)
    {
      goto LABEL_45;
    }
  }

  v24 = v89;
LABEL_45:
  sub_1DD3AA5A4(v24);
  v45 = v80;
  v44 = v81;
  v46 = *(v80 + 104);
  v47 = v78;
  v46(v78, *MEMORY[0x1E6969A48], v81);
  v48 = v79;
  v46(v79, *MEMORY[0x1E6969A78], v44);
  v49 = sub_1DD63D278();
  v51 = v50;
  v53 = v52;
  v54 = *(v45 + 8);
  v54(v48, v44);
  v54(v47, v44);
  v25 = v85;
  v55 = v86;
  v27 = v87;
  a2 = v83;
  a4 = v84;
  v56 = v90;
  if (v53)
  {
    return;
  }

  v57 = sub_1DD43C008(v49, v51);
  if (v58)
  {
    return;
  }

  v24 = v57;
  v59 = *&v56[3].isa;
  if (LOBYTE(v56[6].isa) == 2)
  {
    goto LABEL_53;
  }

  if (LOBYTE(v56[6].isa))
  {
    return;
  }

  if ((~*&v59 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_61;
  }

  if (v59 <= -9.22337204e18)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v59 < 9.22337204e18)
  {
    *&v59 = v59;
LABEL_53:
    if (v57 >= *&v59)
    {
      return;
    }

    v60 = sub_1DD63CBB8();
    (*(*(v60 - 8) + 8))(v55, v60);
    if (qword_1ECCDB0C0 == -1)
    {
LABEL_55:
      v61 = sub_1DD63F9F8();
      __swift_project_value_buffer(v61, qword_1ECD0DDC0);
      v33 = v91;
      (*(a2 + 16))(v91, v92, a4);
      v26 = sub_1DD63F9D8();
      v62 = sub_1DD640368();
      if (os_log_type_enabled(v26, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v90 = v26;
        v65 = v33;
        v66 = a4;
        v92 = v64;
        v94[0] = v64;
        *v63 = 136315650;
        sub_1DD3DDA14(&qword_1EE1663F8, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
        v67 = sub_1DD640CB8();
        LODWORD(v89) = v62;
        v68 = v67;
        v70 = v69;
        (*(a2 + 8))(v65, v66);
        v71 = sub_1DD39565C(v68, v70, v94);

        *(v63 + 4) = v71;
        *(v63 + 12) = 2048;
        *(v63 + 14) = v59;
        *(v63 + 22) = 2048;
        *(v63 + 24) = v24;
        v72 = v90;
        _os_log_impl(&dword_1DD38D000, v90, v89, "CalendarComponentConstraintSolver: modified %s and constraint value of %ld to be on day %ld due to original exceeding number of days in month", v63, 0x20u);
        v73 = v92;
        __swift_destroy_boxed_opaque_existential_1(v92);
        MEMORY[0x1E12B3DA0](v73, -1, -1);
        v74 = v63;
        v27 = v87;
        MEMORY[0x1E12B3DA0](v74, -1, -1);

LABEL_59:
        v75 = sub_1DD63D2D8();
        __swift_storeEnumTagSinglePayload(v27, 1, 1, v75);
        v76 = sub_1DD63D328();
        __swift_storeEnumTagSinglePayload(v25, 1, 1, v76);
        sub_1DD63CB68(v27, v25, 0, 1, 0, 1, 0, 1, v24, 0, 0);
        return;
      }

LABEL_58:

      (*(a2 + 8))(v33, a4);
      goto LABEL_59;
    }

LABEL_62:
    swift_once();
    goto LABEL_55;
  }

  __break(1u);
}

uint64_t sub_1DD3DD8F4(uint64_t a1, uint64_t a2)
{
  v4 = _s19ConvergenceStrategyOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD3DD958(uint64_t a1)
{
  v2 = _s19ConvergenceStrategyOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD3DD9B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_7();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD3DDA14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_24_1()
{
  v3 = *(v1 - 576) + v0;
  v4 = *(v1 - 352);

  return __swift_getEnumTagSinglePayload(v3, 3, v4);
}

uint64_t OUTLINED_FUNCTION_41_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_45_0(uint64_t a1)
{

  return sub_1DD640CB8();
}

uint64_t OUTLINED_FUNCTION_49_0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_51_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_70(uint64_t a1)
{

  return sub_1DD63F9D8();
}

uint64_t OUTLINED_FUNCTION_71()
{
  v2 = *(v0 - 584);

  return sub_1DD3DD958(v2);
}

uint64_t OUTLINED_FUNCTION_72_0()
{
}

uint64_t OUTLINED_FUNCTION_87()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_88_0()
{
}

unint64_t DateTime.Date.CalendarEra.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 7;
  if (result < 7)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1DD3DDECC()
{
  result = qword_1ECCDC190;
  if (!qword_1ECCDC190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC190);
  }

  return result;
}

uint64_t sub_1DD3DDF40@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.Date.CalendarEra.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t _s11CalendarEraOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s11CalendarEraOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD3DE17C()
{
  result = qword_1ECCDC198;
  if (!qword_1ECCDC198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC198);
  }

  return result;
}

uint64_t sub_1DD3DE1D0@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1DD63DFB8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x1E69D1830])
  {
    *a1 = 0;
    return result;
  }

  if (result == *MEMORY[0x1E69D1818])
  {
    v10 = 1;
  }

  else if (result == *MEMORY[0x1E69D1808])
  {
    v10 = 3;
  }

  else if (result == *MEMORY[0x1E69D17F8])
  {
    v10 = 4;
  }

  else if (result == *MEMORY[0x1E69D1800])
  {
    v10 = 5;
  }

  else if (result == *MEMORY[0x1E69D17E8])
  {
    v10 = 7;
  }

  else if (result == *MEMORY[0x1E69D1820])
  {
    v10 = 6;
  }

  else if (result == *MEMORY[0x1E69D1840])
  {
    v10 = 2;
  }

  else if (result == *MEMORY[0x1E69D1838])
  {
    v10 = 8;
  }

  else if (result == *MEMORY[0x1E69D1810])
  {
    v10 = 9;
  }

  else if (result == *MEMORY[0x1E69D1828])
  {
    v10 = 11;
  }

  else
  {
    if (result != *MEMORY[0x1E69D17F0])
    {
      *a1 = 12;
      return (*(v5 + 8))(v8, v4);
    }

    v10 = 10;
  }

  *a1 = v10;
  return result;
}

uint64_t sub_1DD3DE430@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1DD63D188();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD63D1A8();
  v8 = sub_1DD63D2D8();
  (*(*(v8 - 8) + 8))(a1, v8);
  result = (*(v5 + 88))(v7, v4);
  if (result == *MEMORY[0x1E6969868])
  {
    goto LABEL_2;
  }

  if (result == *MEMORY[0x1E6969850])
  {
    v10 = 0;
    goto LABEL_9;
  }

  if (result == *MEMORY[0x1E6969820])
  {
    v10 = 1;
    goto LABEL_9;
  }

  if (result == *MEMORY[0x1E6969800])
  {
    v10 = 3;
    goto LABEL_9;
  }

  if (result == *MEMORY[0x1E6969830])
  {
LABEL_2:
    v10 = 2;
  }

  else if (result == *MEMORY[0x1E6969808])
  {
    v10 = 5;
  }

  else if (result == *MEMORY[0x1E6969828])
  {
    v10 = 6;
  }

  else if (result == *MEMORY[0x1E6969860])
  {
    v10 = 8;
  }

  else if (result == *MEMORY[0x1E6969848])
  {
    v10 = 11;
  }

  else if (result == *MEMORY[0x1E69697B8])
  {
    v10 = 10;
  }

  else if (result == *MEMORY[0x1E69697C0])
  {
    v10 = 7;
  }

  else
  {
    result = (*(v5 + 8))(v7, v4);
    v10 = 12;
  }

LABEL_9:
  *a2 = v10;
  return result;
}

unint64_t DateTime.Date.CalendarSystem.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 12;
  if (result < 0xC)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1DD3DE6A8()
{
  result = qword_1ECCDC1A0;
  if (!qword_1ECCDC1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC1A0);
  }

  return result;
}

uint64_t sub_1DD3DE704@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.Date.CalendarSystem.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s14CalendarSystemOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD3DE8B8()
{
  result = qword_1ECCDC1A8;
  if (!qword_1ECCDC1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC1A8);
  }

  return result;
}

uint64_t sub_1DD3DE90C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_1DD42A2D4(0, v7, 0, a4, a5, a6, a7);
    v8 = v34;
    v11 = (a1 + 40);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v14 = HIBYTE(*v11) & 0xF;
      if ((*v11 & 0x2000000000000000) == 0)
      {
        v14 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        v15 = *a2;
        v16 = *(*a2 + 16);

        if (v16 && (v17 = sub_1DD3978DC(), (v18 & 1) != 0))
        {
          v19 = (*(v15 + 56) + 16 * v17);
          v13 = *v19;
          v20 = v19[1];

          v12 = v20;
        }

        else
        {
          sub_1DD5E13F8();
          v26 = v25;
          v28 = v27;

          swift_isUniquelyReferenced_nonNull_native();
          v33 = *a2;
          sub_1DD3FFBC0();
          *a2 = v33;

          v13 = v26;
          v12 = v28;
        }
      }

      else
      {
      }

      v30 = *(v34 + 16);
      v29 = *(v34 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1DD42A2D4(v29 > 1, v30 + 1, 1, v21, v22, v23, v24);
      }

      *(v34 + 16) = v30 + 1;
      v31 = v34 + 16 * v30;
      *(v31 + 32) = v13;
      *(v31 + 40) = v12;
      v11 += 2;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_1DD3DEAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a3;
  v7 = type metadata accessor for StitchedContactResolverRequest(0);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1DD42B728(0, v10, 0);
    v11 = v29;
    v12 = type metadata accessor for RunTimeDataRecord(0);
    v13 = a1 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80));
    v23 = *(*(v12 - 8) + 72);
    v24 = a2;
    do
    {
      v14 = *(v13 + *(v12 + 24));

      v15 = sub_1DD3DEFF8(v14, a2, v27);
      v28 = v4;
      sub_1DD3E7B48();
      v16 = *(v12 + 28);
      v17 = v26;
      v18 = *(v26 + 20);
      v19 = sub_1DD63D078();
      (*(*(v19 - 8) + 16))(&v9[v18], v13 + v16, v19);
      *&v9[*(v17 + 24)] = v15;
      v29 = v11;
      v21 = *(v11 + 16);
      v20 = *(v11 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1DD42B728(v20 > 1, v21 + 1, 1);
        v11 = v29;
      }

      *(v11 + 16) = v21 + 1;
      sub_1DD3E63AC();
      a2 = v24;
      v13 += v23;
      --v10;
      v4 = v28;
    }

    while (v10);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v11;
}

uint64_t sub_1DD3DED4C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v35 = type metadata accessor for StitchedContactResolverRequest(0);
  v6 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v36 = a2;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1DD42B728(0, v9, 0);
    v10 = v39;
    v34 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v11 = a1 + v34;
    v33 = *(v6 + 72);
    do
    {
      v37 = v10;
      sub_1DD3E7B48();
      v12 = *(v8 + 1);
      v13 = *(v8 + 2);
      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        v15 = *v36;
        if (!*(*v36 + 16) || (v16 = sub_1DD3978DC(), (v17 & 1) == 0))
        {
          sub_1DD5E13F8();
          v22 = v21;
          v32 = v3;
          v24 = v23;

          v20 = v36;
          swift_isUniquelyReferenced_nonNull_native();
          v38 = *v20;
          sub_1DD3FFBC0();
          *v20 = v38;

          v12 = v22;
          v13 = v24;
          v3 = v32;
          goto LABEL_11;
        }

        v18 = (*(v15 + 56) + 16 * v16);
        v12 = *v18;
        v19 = v18[1];

        v13 = v19;
      }

      v20 = v36;
LABEL_11:
      *(v8 + 1) = v12;
      *(v8 + 2) = v13;
      v25 = *(v35 + 24);
      v26 = sub_1DD3DF5E4(*&v8[v25], v20);

      *&v8[v25] = v26;
      v10 = v37;
      v39 = v37;
      v28 = *(v37 + 16);
      v27 = *(v37 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1DD42B728(v27 > 1, v28 + 1, 1);
        v10 = v39;
      }

      *(v10 + 16) = v28 + 1;
      v29 = v33;
      sub_1DD3E63AC();
      v11 += v29;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_1DD3DEFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a3;
  v7 = type metadata accessor for StitchedContactResolverRecommendation(0) - 8;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1DD42B884(0, v10, 0);
    v11 = v20;
    v12 = *(type metadata accessor for ContactResolverRunTimeData(0) - 8);
    v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v18 = *(v12 + 72);
    while (1)
    {
      v14 = a2;
      sub_1DD3E4118(v13, a2, v19, v9);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v20 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1DD42B884(v15 > 1, v16 + 1, 1);
        v11 = v20;
      }

      *(v11 + 16) = v16 + 1;
      sub_1DD3E63AC();
      v13 += v18;
      --v10;
      a2 = v14;
      if (!v10)
      {

        return v11;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1DD3DF224(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v42 = MEMORY[0x1E69E7CC0];
    sub_1DD42B7A0(0, v2, 0);
    v3 = v42;
    v5 = (a1 + 32);
    v37 = *MEMORY[0x1E69964B0];
    while (1)
    {
      memcpy(__dst, v5, 0x50uLL);
      v6 = __dst[1];
      v7 = HIBYTE(__dst[1]) & 0xFLL;
      if ((__dst[1] & 0x2000000000000000) == 0)
      {
        v7 = __dst[0] & 0xFFFFFFFFFFFFLL;
      }

      if (!v7)
      {
        break;
      }

      v8 = *a2;
      if (*(*a2 + 16))
      {
        sub_1DD3E6404(__dst, v40);
        v9 = sub_1DD3978DC();
        if (v10)
        {
          v11 = (*(v8 + 56) + 16 * v9);
          v6 = v11[1];
          v39 = *v11;
LABEL_10:

          goto LABEL_13;
        }
      }

      else
      {
        sub_1DD3E6404(__dst, v40);
      }

      sub_1DD5E13F8();
      v13 = v12;
      v15 = v14;

      swift_isUniquelyReferenced_nonNull_native();
      v40[0] = *a2;
      sub_1DD3FFBC0();
      *a2 = v40[0];
      v39 = v13;
      v6 = v15;
LABEL_13:
      v17 = __dst[2];
      v16 = __dst[3];
      if (!__dst[3])
      {
        goto LABEL_25;
      }

      v18 = HIBYTE(__dst[3]) & 0xFLL;
      if ((__dst[3] & 0x2000000000000000) == 0)
      {
        v18 = __dst[2] & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {
        v19 = *a2;
        if (*(*a2 + 16) && (v20 = sub_1DD3978DC(), (v21 & 1) != 0))
        {
          v22 = (*(v19 + 56) + 16 * v20);
          v17 = *v22;
          v23 = v22[1];

          if (!v23)
          {
            goto LABEL_25;
          }
        }

        else
        {
          sub_1DD5E13F8();
          v25 = v24;
          v23 = v26;

          swift_isUniquelyReferenced_nonNull_native();
          v40[0] = *a2;
          sub_1DD3FFBC0();
          *a2 = v40[0];
          v17 = v25;
          if (!v23)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {

        v23 = v16;
        if (!v16)
        {
LABEL_25:
          sub_1DD3E6460(__dst);
          v30 = 0;
          goto LABEL_28;
        }
      }

      v40[0] = v17;
      v40[1] = v23;
      sub_1DD3B7F10();
      if (sub_1DD6406D8())
      {
        v27 = sub_1DD63FDA8();
        v28 = (*(v37 + 16))(v37, v27);

        v17 = sub_1DD63FDD8();
        v30 = v29;
      }

      else
      {
        sub_1DD39638C(0, qword_1EE165CF0, 0x1E695CF50);

        v31 = sub_1DD40B8E0();
        v17 = sub_1DD415480(v31);
        v30 = v32;

        if (!v30)
        {
          sub_1DD3E6460(__dst);
          v17 = 0;
          v30 = 0xE000000000000000;
          goto LABEL_28;
        }
      }

      sub_1DD3E6460(__dst);
LABEL_28:
      v42 = v3;
      v34 = *(v3 + 16);
      v33 = *(v3 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1DD42B7A0(v33 > 1, v34 + 1, 1);
        v3 = v42;
      }

      *(v3 + 16) = v34 + 1;
      v35 = v3 + 80 * v34;
      *(v35 + 32) = v39;
      *(v35 + 40) = v6;
      *(v35 + 48) = v17;
      *(v35 + 56) = v30;
      *(v35 + 64) = xmmword_1DD642F70;
      *(v35 + 80) = 0u;
      *(v35 + 96) = 0u;
      v5 += 80;
      if (!--v2)
      {
        return v3;
      }
    }

    v39 = __dst[0];
    sub_1DD3E6404(__dst, v40);
    goto LABEL_10;
  }

  return v3;
}

uint64_t sub_1DD3DF5E4(uint64_t a1, uint64_t *a2)
{
  v94 = a2;
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v82 = *(matched - 8);
  MEMORY[0x1EEE9AC00](matched - 8);
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v89 = (&v78 - v7);
  v88 = type metadata accessor for ContactResolverRunTimeData(0);
  MEMORY[0x1EEE9AC00](v88);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for StitchedContactResolverRecommendation(0);
  v10 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v96 = MEMORY[0x1E69E7CC0];
    sub_1DD42B884(0, v13, 0);
    v15 = 0;
    v93 = v96;
    v85 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v86 = v13;
    v16 = a1 + v85;
    v17 = *(v10 + 72);
    v91 = v12;
    v81 = v9;
    v83 = v17;
    v84 = v16;
    while (1)
    {
      v92 = v15;
      sub_1DD3E7B48();
      sub_1DD3E7B48();
      v18 = *(v9 + 37);
      v19 = *(v18 + 16);
      if (v19)
      {
        v95 = v14;
        sub_1DD42B564(0, v19, 0);
        v20 = v95;
        v21 = (*(v82 + 80) + 32) & ~*(v82 + 80);
        v90 = v18;
        v22 = v18 + v21;
        v23 = *(v82 + 72);
        do
        {
          sub_1DD5E0E10(v22, v94, v5);
          v95 = v20;
          v25 = *(v20 + 16);
          v24 = *(v20 + 24);
          if (v25 >= v24 >> 1)
          {
            sub_1DD42B564(v24 > 1, v25 + 1, 1);
            v20 = v95;
          }

          *(v20 + 16) = v25 + 1;
          sub_1DD3E63AC();
          v22 += v23;
          --v19;
        }

        while (v19);

        v9 = v81;
        v12 = v91;
      }

      else
      {

        v20 = v14;
      }

      *(v9 + 37) = v20;
      sub_1DD5E11D4(&v9[*(v88 + 40)], v89);
      sub_1DD3E6284();
      sub_1DD3E62DC(v9, v12);
      v31 = &v12[*(v87 + 20)];
      v33 = *v31;
      v32 = *(v31 + 1);
      v34 = *(v31 + 2);
      LODWORD(v35) = v31[24];
      if (v31[24])
      {
        if (v35 == 1)
        {
          v80 = sub_1DD3DE90C(v33, v94, v26, v27, v28, v29, v30);
          if (v34)
          {
            v46 = v32 & 0xFFFFFFFFFFFFLL;
            if ((v34 & 0x2000000000000000) != 0)
            {
              v46 = HIBYTE(v34) & 0xF;
            }

            if (v46)
            {
              v47 = *v94;
              if (!*(*v94 + 16) || (v48 = sub_1DD3978DC(), (v49 & 1) == 0))
              {
                sub_1DD5E13F8();
                v78 = v67;
                v79 = v66;

                LODWORD(v90) = 1;
                v35 = v94;
                swift_isUniquelyReferenced_nonNull_native();
                v95 = *v35;
                sub_1DD3FFBC0();
                *v35 = v95;
                LOBYTE(v35) = v90;
                v68 = v33;
                v69 = v32;
                v70 = v34;
                v71 = 1;
                goto LABEL_42;
              }

              v50 = (*(v47 + 56) + 16 * v48);
              v41 = v50[1];
              v90 = *v50;

              v42 = v33;
              v43 = v32;
              v44 = v34;
              v45 = 1;
LABEL_27:
              sub_1DD3E6340(v42, v43, v44, v45);
              v34 = v41;
              v32 = v90;
LABEL_48:
              v62 = v92;
              v61 = v93;
              v33 = v80;
              goto LABEL_49;
            }

            v63 = v33;
            v64 = v32;
            v65 = v34;
          }

          else
          {
            v63 = v33;
            v64 = v32;
            v65 = 0;
          }

          v74 = 1;
LABEL_47:
          sub_1DD3E6340(v63, v64, v65, v74);
          goto LABEL_48;
        }

        if (v35 == 2)
        {
          v80 = sub_1DD3DE90C(v33, v94, v26, v27, v28, v29, v30);
          if (v34)
          {
            v36 = v32 & 0xFFFFFFFFFFFFLL;
            if ((v34 & 0x2000000000000000) != 0)
            {
              v36 = HIBYTE(v34) & 0xF;
            }

            if (v36)
            {
              v37 = *v94;
              if (*(*v94 + 16))
              {
                v38 = sub_1DD3978DC();
                if (v39)
                {
                  v40 = (*(v37 + 56) + 16 * v38);
                  v41 = v40[1];
                  v90 = *v40;

                  v42 = v33;
                  v43 = v32;
                  v44 = v34;
                  v45 = 2;
                  goto LABEL_27;
                }
              }

              sub_1DD5E13F8();
              v78 = v73;
              v79 = v72;

              LODWORD(v90) = 2;
              v35 = v94;
              swift_isUniquelyReferenced_nonNull_native();
              v95 = *v35;
              sub_1DD3FFBC0();
              *v35 = v95;
              LOBYTE(v35) = v90;
              v68 = v33;
              v69 = v32;
              v70 = v34;
              v71 = 2;
LABEL_42:
              sub_1DD3E6340(v68, v69, v70, v71);
              v34 = v78;
              v32 = v79;
              goto LABEL_48;
            }

            v63 = v33;
            v64 = v32;
            v65 = v34;
          }

          else
          {
            v63 = v33;
            v64 = v32;
            v65 = 0;
          }

          v74 = 2;
          goto LABEL_47;
        }
      }

      else
      {
        v51 = HIBYTE(v32) & 0xF;
        if ((v32 & 0x2000000000000000) == 0)
        {
          v51 = v33 & 0xFFFFFFFFFFFFLL;
        }

        if (v51)
        {
          LODWORD(v90) = v31[24];
          v52 = *v94;
          if (*(*v94 + 16) && (v53 = sub_1DD3978DC(), (v54 & 1) != 0))
          {
            v55 = (*(v52 + 56) + 16 * v53);
            v57 = *v55;
            v56 = v55[1];

            sub_1DD3E6340(v33, v32, v34, 0);
            v33 = v57;
            v32 = v56;
          }

          else
          {
            sub_1DD5E13F8();
            v79 = v59;
            v80 = v58;

            v60 = v94;
            swift_isUniquelyReferenced_nonNull_native();
            v95 = *v60;
            sub_1DD3FFBC0();
            *v60 = v95;
            sub_1DD3E6340(v33, v32, v34, 0);
            v32 = v79;
            v33 = v80;
          }

          LOBYTE(v35) = v90;
        }

        v34 = v34;
      }

      v62 = v92;
      v61 = v93;
LABEL_49:
      *v31 = v33;
      *(v31 + 1) = v32;
      *(v31 + 2) = v34;
      v31[24] = v35;
      v96 = v61;
      v76 = *(v61 + 16);
      v75 = *(v61 + 24);
      if (v76 >= v75 >> 1)
      {
        sub_1DD42B884(v75 > 1, v76 + 1, 1);
        v62 = v92;
        v61 = v96;
      }

      v15 = v62 + 1;
      *(v61 + 16) = v76 + 1;
      v93 = v61;
      v12 = v91;
      sub_1DD3E63AC();
      v14 = MEMORY[0x1E69E7CC0];
      if (v15 == v86)
      {
        return v93;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DD3DFD58@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X8>)
{
  v12 = a1;
  v4 = type metadata accessor for StitchableInteraction(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_1DD3C4EB4();
  if (__swift_getEnumTagSinglePayload(v9, 1, v4) == 1)
  {
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }

  sub_1DD3E63AC();
  v12(v6);
  result = sub_1DD3E7BA0(v6, type metadata accessor for StitchableInteraction);
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD3DFF10@<X0>(void *a1@<X1>, char *a2@<X8>)
{
  v4 = type metadata accessor for StitchableInteraction(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - v8;
  sub_1DD3C4EB4();
  if (__swift_getEnumTagSinglePayload(v9, 1, v4) == 1)
  {
    v10 = a2;
    v11 = 1;
  }

  else
  {
    sub_1DD3E63AC();
    v25 = sub_1DD3DF224(*&v6[v4[9]], a1);
    v13 = *v6;
    v12 = *(v6 + 1);
    v14 = *(v6 + 2);
    v15 = *(v6 + 3);

    v16 = sub_1DD5E0D30(v14, v15);
    v18 = v17;
    v19 = v4[6];
    v20 = sub_1DD63D078();
    (*(*(v20 - 8) + 16))(&a2[v19], &v6[v19], v20);
    sub_1DD55D704(*&v6[v4[7]]);
    v21 = v6[v4[8]];
    *a2 = v13;
    *(a2 + 1) = v12;
    *(a2 + 2) = v16;
    *(a2 + 3) = v18;
    *&a2[v4[7]] = v22;
    a2[v4[8]] = v21;
    *&a2[v4[9]] = v25;
    sub_1DD3E7BA0(v6, type metadata accessor for StitchableInteraction);
    v10 = a2;
    v11 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v4);
}

uint64_t sub_1DD3E0144(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1DD4EC918();
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1DD3E64B4(v6);
  return sub_1DD640968();
}

void sub_1DD3E01C0(void *a1, void *a2)
{
  v285 = a2;
  v282 = a1;
  v267 = type metadata accessor for StitchedContactData(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  v268 = v4;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16_3();
  v271 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  v8 = OUTLINED_FUNCTION_3(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  v266 = v9;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_0();
  v273 = v11;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_16_3();
  v270 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v15 = OUTLINED_FUNCTION_3(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_1();
  v279 = v16;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_16_3();
  v278 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCDC038, &qword_1DD644960);
  v20 = OUTLINED_FUNCTION_3(v19);
  MEMORY[0x1EEE9AC00](v20);
  v277 = &v261 - v21;
  v22 = OUTLINED_FUNCTION_6_2();
  v284 = type metadata accessor for CancellableStitcher(v22);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_1();
  v269 = v24;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_18_0();
  v263 = v26;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_18_0();
  v265 = v28;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_18_0();
  v264 = v30;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_18_0();
  v272 = v32;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_18_0();
  v276 = v34;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_16_3();
  v275 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B8, &unk_1DD65DD40);
  v38 = OUTLINED_FUNCTION_3(v37);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v261 - v39;
  v280 = type metadata accessor for RunTimeDataRecord(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_2();
  v283 = v43 - v42;
  v44 = OUTLINED_FUNCTION_6_2();
  v45 = type metadata accessor for Signpost(v44);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_2();
  v49 = v48 - v47;
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v50 = qword_1EE16F0C0;
  v51 = v49 + *(v45 + 20);
  *v51 = "Stitching.CancellableStitcher";
  *(v51 + 8) = 29;
  *(v51 + 16) = 2;
  v52 = v50;
  v286 = v49;
  v53 = v52;
  sub_1DD63F9B8();
  *(v286 + *(v45 + 24)) = v53;
  v54 = v53;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1DD643F90;
  v56 = sub_1DD6408F8();
  v58 = v57;
  *(v55 + 56) = MEMORY[0x1E69E6158];
  *(v55 + 64) = sub_1DD392BD8();
  *(v55 + 32) = v56;
  *(v55 + 40) = v58;
  v281 = v54;
  sub_1DD63F998();

  v59 = v282;
  v60 = v282[2];
  sub_1DD43C034(v60);
  if (__swift_getEnumTagSinglePayload(v40, 1, v280) == 1)
  {
    sub_1DD390754(v40, &qword_1ECCDC1B8, &unk_1DD65DD40);
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v61 = sub_1DD63F9F8();
    __swift_project_value_buffer(v61, qword_1EE16F068);
    OUTLINED_FUNCTION_1_18();
    v62 = v276;
    sub_1DD3E7B48();
    v63 = sub_1DD63F9D8();
    v64 = sub_1DD640368();
    v65 = OUTLINED_FUNCTION_9_0(v64);
    v66 = v285;
    if (v65)
    {
      OUTLINED_FUNCTION_18_1();
      swift_slowAlloc();
      OUTLINED_FUNCTION_14_10();
      v67 = swift_slowAlloc();
      v287[0] = v67;
      OUTLINED_FUNCTION_38_2(4.8149e-34);
      OUTLINED_FUNCTION_0_26();
      v69 = sub_1DD3E7BA0(v2, v68);
      OUTLINED_FUNCTION_57_0(v69, v70, v287);
      OUTLINED_FUNCTION_40_2();
      v59 = v62;

      unk_1EE165004 = &qword_1DD643000;
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_33_2(v71, v72, v73, v74);
      _os_log_impl(v75, v76, v77, v78, v79, v80);
      __swift_destroy_boxed_opaque_existential_1(v67);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      v81 = OUTLINED_FUNCTION_8_6();
      MEMORY[0x1E12B3DA0](v81);
    }

    else
    {

      OUTLINED_FUNCTION_0_26();
      sub_1DD3E7BA0(v62, v101);
    }

    v102 = v284;
    sub_1DD3E6100();
    v103 = swift_allocError();
    *v104 = 0;
    v105 = v103;
    swift_willThrow();
    goto LABEL_27;
  }

  sub_1DD3E63AC();
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v82 = sub_1DD63F9F8();
  v83 = __swift_project_value_buffer(v82, qword_1EE16F068);
  OUTLINED_FUNCTION_1_18();
  v84 = v275;
  sub_1DD3E7B48();
  v280 = v83;
  v85 = sub_1DD63F9D8();
  v86 = sub_1DD640368();
  v87 = OUTLINED_FUNCTION_9_0(v86);
  v262 = v60;
  if (v87)
  {
    OUTLINED_FUNCTION_18_1();
    v88 = swift_slowAlloc();
    OUTLINED_FUNCTION_17_0();
    v89 = swift_slowAlloc();
    v287[0] = v89;
    *v88 = 136315138;
    v90 = v59;
    v91 = *v84;
    v92 = v84[1];

    OUTLINED_FUNCTION_0_26();
    sub_1DD3E7BA0(v84, v93);
    v94 = v91;
    v59 = v90;
    v95 = sub_1DD39565C(v94, v92, v287);

    *(v88 + 4) = v95;
    OUTLINED_FUNCTION_51_2();
    _os_log_impl(v96, v97, v98, v99, v88, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v89);
    v100 = OUTLINED_FUNCTION_8_6();
    MEMORY[0x1E12B3DA0](v100);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  else
  {

    OUTLINED_FUNCTION_0_26();
    sub_1DD3E7BA0(v84, v106);
  }

  v107 = *v59;
  v108 = v59[1];
  v109 = sub_1DD63F598();
  v110 = v277;
  __swift_storeEnumTagSinglePayload(v277, 1, 1, v109);
  v111 = sub_1DD63D078();
  v112 = v59;
  __swift_storeEnumTagSinglePayload(v278, 1, 1, v111);
  __swift_storeEnumTagSinglePayload(v279, 1, 1, v111);
  v275 = v107;
  v276 = v108;
  v113 = sub_1DD63F4A8();
  OUTLINED_FUNCTION_50_2();
  sub_1DD390754(v114, v115, v116);
  OUTLINED_FUNCTION_50_2();
  sub_1DD390754(v117, v118, v119);
  sub_1DD390754(v110, qword_1ECCDC038, &qword_1DD644960);
  sub_1DD43C104(v113);
  if (v120)
  {
    v121 = v120;
    v122 = sub_1DD6395C4();
    v123 = v283;
    if (v122)
    {
      OUTLINED_FUNCTION_2_13();
      sub_1DD3E7BA0(v123, v124);

      sub_1DD6404C8();
      OUTLINED_FUNCTION_9_7();
      sub_1DD63F9A8();
      goto LABEL_18;
    }

    v141 = v270;
    v142 = sub_1DD5D5B60(v283, v121, v59[3], v270);
    MEMORY[0x1EEE9AC00](v142);
    v143 = v273;
    v105 = v274;
    sub_1DD3DFD58(sub_1DD3E6154, v273);
    v144 = v271;
    sub_1DD3E1AC0(v262, v143, v271);
    v103 = v105;
    if (!v105)
    {
      v279 = v121;

      v125 = v285;
      if (sub_1DD6395C4())
      {

        sub_1DD3E7BA0(v144, type metadata accessor for StitchedContactData);
        sub_1DD390754(v273, &qword_1ECCDC1B0, &unk_1DD6454F0);
        OUTLINED_FUNCTION_2_13();
        sub_1DD3E7BA0(v283, v157);
        sub_1DD390754(v141, &qword_1ECCDC1B0, &unk_1DD6454F0);
        sub_1DD6404C8();
        OUTLINED_FUNCTION_9_7();
        sub_1DD63F9A8();
        goto LABEL_19;
      }

      v289[0] = MEMORY[0x1E69E7CC8];
      v173 = v268;
      sub_1DD3E7B48();
      v174 = sub_1DD5E0D30(*v144, v144[1]);
      v175 = v144;
      v177 = v176;

      *v173 = v174;
      v173[1] = v177;
      sub_1DD3DFF10(v289, v266);
      sub_1DD3E6284();
      v178 = sub_1DD3DED4C(v175[4], v289);

      v173[4] = v178;

      v180 = 0;
      v179 = sub_1DD6326B0();
      v183 = v182;
      v184 = v179;

      v185 = sub_1DD63F9D8();
      v186 = sub_1DD640368();

      if (os_log_type_enabled(v185, v186))
      {
        OUTLINED_FUNCTION_18_1();
        v187 = swift_slowAlloc();
        OUTLINED_FUNCTION_17_0();
        v188 = swift_slowAlloc();
        v274 = 0;
        v189 = v59;
        v190 = v188;
        v287[0] = v188;
        *v187 = 136315138;
        v191 = sub_1DD39565C(v184, v183, v287);

        *(v187 + 4) = v191;
        OUTLINED_FUNCTION_51_2();
        _os_log_impl(v192, v193, v194, v195, v187, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v190);
        v59 = v189;
        v180 = v274;
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        v196 = v284;
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      else
      {

        v196 = v284;
      }

      v278 = *(v196 + 36);
      v287[0] = *(v59 + v278);

      v197 = sub_1DD58BEDC();
      v198 = v180;
      if (v180)
      {

        OUTLINED_FUNCTION_1_18();
        v199 = v265;
        sub_1DD3E7B48();
        v200 = v180;
        v201 = sub_1DD63F9D8();
        v202 = sub_1DD640368();

        if (os_log_type_enabled(v201, v202))
        {
          v203 = OUTLINED_FUNCTION_43_2();
          v287[0] = swift_slowAlloc();
          *v203 = 136315394;
          v204 = v59;
          v205 = *v199;
          v206 = v199[1];

          OUTLINED_FUNCTION_0_26();
          sub_1DD3E7BA0(v199, v207);
          v208 = sub_1DD39565C(v205, v206, v287);

          *(v203 + 4) = v208;
          *(v203 + 12) = 2080;
          v288 = v198;
          v209 = v198;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
          v210 = sub_1DD63FE38();
          v212 = sub_1DD39565C(v210, v211, v287);
          v59 = v204;

          *(v203 + 14) = v212;
          OUTLINED_FUNCTION_51_2();
          _os_log_impl(v213, v214, v215, v216, v203, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0]();
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0]();
        }

        else
        {

          OUTLINED_FUNCTION_0_26();
          sub_1DD3E7BA0(v199, v229);
        }

        v230 = 0;
        v219 = 0;
        v221 = 0;
        v231 = v268;
      }

      else
      {
        v217 = v197;

        v277 = sub_1DD43C11C(v217);
        v219 = v218;
        v221 = v220;

        OUTLINED_FUNCTION_1_18();
        v222 = v264;
        sub_1DD3E7B48();
        v223 = sub_1DD63F9D8();
        v224 = sub_1DD640368();
        if (OUTLINED_FUNCTION_9_0(v224))
        {
          OUTLINED_FUNCTION_18_1();
          v225 = swift_slowAlloc();
          OUTLINED_FUNCTION_17_0();
          v274 = swift_slowAlloc();
          v287[0] = v274;
          *v225 = 136315138;
          v226 = v222[1];
          v272 = *v222;

          OUTLINED_FUNCTION_0_26();
          sub_1DD3E7BA0(v222, v227);
          v228 = sub_1DD39565C(v272, v226, v287);

          *(v225 + 4) = v228;
          _os_log_impl(&dword_1DD38D000, v223, v224, "Fetch siriTasksEvaluationData for taskId=%s", v225, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v274);
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0]();
          v59 = v282;
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0]();
        }

        else
        {

          OUTLINED_FUNCTION_0_26();
          sub_1DD3E7BA0(v222, v232);
        }

        v231 = v268;

        v230 = v277;
      }

      sub_1DD456000(v231, v230, v219, v221);

      v233 = sub_1DD4589E4();
      v287[3] = &type metadata for ContactFeatures;
      v287[4] = sub_1DD3E6184();
      LOBYTE(v287[0]) = 1;
      v234 = v230;
      v235 = sub_1DD63DA48();
      __swift_destroy_boxed_opaque_existential_1(v287);
      sub_1DD457B80(v231, (v59 + *(v284 + 32)), v233, v234, v219, v221, v235 & 1);
      sub_1DD467EC0(v231);
      sub_1DD468D30(v231);
      v287[0] = *(v59 + v278);
      v236 = v287[0];

      v237 = v275;
      sub_1DD58E684();
      v287[0] = v236;
      sub_1DD58E7D8();

      if (v219)
      {

        v287[0] = *(v59 + v278);

        sub_1DD58C468();
      }

      v238 = type metadata accessor for StitchableInteraction(0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v270, 1, v238);
      v240 = *(v268 + *(v267 + 36));
      v241 = 0x746E6573657250;
      if (EnumTagSinglePayload == 1)
      {
        v242 = 0x676E697373694DLL;
      }

      else
      {
        v242 = 0x746E6573657250;
      }

      v287[0] = v242;
      v287[1] = 0xE700000000000000;
      if (!v240)
      {
        v241 = 0x676E697373694DLL;
      }

      v287[2] = v241;
      v287[3] = 0xE700000000000000;
      v287[4] = 0x73736563637553;
      v287[5] = 0xE700000000000000;
      v287[6] = 0xD00000000000001DLL;
      v287[7] = 0x80000001DD66A7C0;
      v287[8] = 0;
      v287[9] = 0;
      LOBYTE(v287[10]) = 1;
      memcpy(__dst, v287, sizeof(__dst));
      sub_1DD5CDE44();
      sub_1DD3E61D8(v287);
      OUTLINED_FUNCTION_1_18();
      sub_1DD3E7B48();
      v243 = sub_1DD63F9D8();
      v244 = sub_1DD640368();
      if (OUTLINED_FUNCTION_29_2(v244))
      {
        OUTLINED_FUNCTION_18_1();
        swift_slowAlloc();
        OUTLINED_FUNCTION_14_10();
        v245 = swift_slowAlloc();
        v288 = v245;
        *v236 = 136315138;
        v246 = v263;
        v247 = *v263;

        OUTLINED_FUNCTION_0_26();
        v249 = sub_1DD3E7BA0(v246, v248);
        OUTLINED_FUNCTION_57_0(v249, v250, &v288);
        OUTLINED_FUNCTION_40_2();

        *(v236 + 4) = v247;
        OUTLINED_FUNCTION_33_2(&dword_1DD38D000, v243, v237, "stitching and logging completed for task. taskId=%s");
        _os_log_impl(v251, v252, v253, v254, v255, v256);
        __swift_destroy_boxed_opaque_existential_1(v245);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        v257 = OUTLINED_FUNCTION_8_6();
        MEMORY[0x1E12B3DA0](v257);
      }

      else
      {

        OUTLINED_FUNCTION_0_26();
        sub_1DD3E7BA0(v263, v258);
      }

      OUTLINED_FUNCTION_4_13();
      sub_1DD3E7BA0(v271, v259);
      sub_1DD390754(v273, &qword_1ECCDC1B0, &unk_1DD6454F0);
      OUTLINED_FUNCTION_2_13();
      sub_1DD3E7BA0(v283, v260);
      OUTLINED_FUNCTION_56_2();
      sub_1DD390754(v270, &qword_1ECCDC1B0, &unk_1DD6454F0);
      sub_1DD6404C8();
      OUTLINED_FUNCTION_9_7();
      sub_1DD63F9A8();
LABEL_18:
      v125 = v285;
LABEL_19:
      OUTLINED_FUNCTION_21_2();

      return;
    }

    OUTLINED_FUNCTION_50_2();
    sub_1DD390754(v145, v146, v147);
    OUTLINED_FUNCTION_2_13();
    sub_1DD3E7BA0(v283, v148);
    OUTLINED_FUNCTION_50_2();
    sub_1DD390754(v149, v150, v151);
    v66 = v285;
  }

  else
  {

    OUTLINED_FUNCTION_1_18();
    v126 = v272;
    sub_1DD3E7B48();
    v127 = sub_1DD63F9D8();
    v128 = sub_1DD640368();
    v129 = OUTLINED_FUNCTION_29_2(v128);
    v66 = v285;
    if (v129)
    {
      OUTLINED_FUNCTION_18_1();
      swift_slowAlloc();
      OUTLINED_FUNCTION_14_10();
      v130 = swift_slowAlloc();
      v287[0] = v130;
      OUTLINED_FUNCTION_38_2(4.8149e-34);
      OUTLINED_FUNCTION_0_26();
      v132 = sub_1DD3E7BA0(v2, v131);
      OUTLINED_FUNCTION_57_0(v132, v133, v287);
      OUTLINED_FUNCTION_40_2();
      v59 = v126;

      *(&qword_1DD6445A0 + 4) = v112;
      OUTLINED_FUNCTION_33_2(&dword_1DD38D000, v127, v113, "no intent events for task. taskId=%s");
      _os_log_impl(v134, v135, v136, v137, v138, v139);
      __swift_destroy_boxed_opaque_existential_1(v130);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      v140 = OUTLINED_FUNCTION_8_6();
      MEMORY[0x1E12B3DA0](v140);
    }

    else
    {

      OUTLINED_FUNCTION_0_26();
      sub_1DD3E7BA0(v126, v152);
    }

    v153 = v283;
    sub_1DD3E6100();
    v103 = swift_allocError();
    *v154 = 1;
    v105 = v103;
    swift_willThrow();
    OUTLINED_FUNCTION_2_13();
    sub_1DD3E7BA0(v153, v155);
  }

  v102 = v284;
LABEL_27:
  v156 = *(v59 + *(v102 + 36));
  v287[0] = v156;

  OUTLINED_FUNCTION_53_1();
  sub_1DD58E684();
  if (v105)
  {

    sub_1DD6404C8();
    OUTLINED_FUNCTION_9_7();
  }

  else
  {
    v287[0] = v156;
    OUTLINED_FUNCTION_53_1();
    sub_1DD58E7D8();

    v289[1] = 0x676E697373694DLL;
    v289[2] = 0xE700000000000000;
    v289[3] = 0x676E697373694DLL;
    v289[4] = 0xE700000000000000;
    v289[5] = 0x73736563637553;
    v289[6] = 0xE700000000000000;
    v289[7] = 0xD00000000000001DLL;
    v289[8] = 0x80000001DD66A7C0;
    v289[9] = 0;
    v289[10] = 0;
    v290 = 0;
    sub_1DD5CDE44();
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v158 = sub_1DD63F9F8();
    __swift_project_value_buffer(v158, qword_1EE16F068);
    OUTLINED_FUNCTION_1_18();
    v159 = v269;
    sub_1DD3E7B48();
    v160 = v103;
    v161 = sub_1DD63F9D8();
    v162 = sub_1DD640378();

    if (os_log_type_enabled(v161, v162))
    {
      OUTLINED_FUNCTION_43_2();
      v289[0] = OUTLINED_FUNCTION_42_1();
      MEMORY[0] = 136315394;
      v163 = v159;
      v164 = *v159;

      OUTLINED_FUNCTION_0_26();
      v166 = sub_1DD3E7BA0(v163, v165);
      OUTLINED_FUNCTION_57_0(v166, v167, v289);
      OUTLINED_FUNCTION_40_2();

      MEMORY[4] = v164;
      MEMORY[0xC] = 2080;
      v288 = v103;
      v168 = v103;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
      v169 = sub_1DD63FE38();
      v171 = sub_1DD39565C(v169, v170, v289);

      MEMORY[0xE] = v171;
      _os_log_impl(&dword_1DD38D000, v161, v162, "error running cancellable stitcher. taskId=%s error=%s", 0, 0x16u);
      OUTLINED_FUNCTION_41_1();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      v172 = OUTLINED_FUNCTION_8_6();
      MEMORY[0x1E12B3DA0](v172);
    }

    else
    {

      OUTLINED_FUNCTION_0_26();
      sub_1DD3E7BA0(v159, v181);
    }

    swift_willThrow();
    sub_1DD6404C8();
  }

  sub_1DD63F9A8();
  OUTLINED_FUNCTION_21_2();
}