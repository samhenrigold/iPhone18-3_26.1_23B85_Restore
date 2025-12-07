void sub_1AE03A354(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v38 = (&v33 - v11);
  v40 = a4;
  v14 = *(a4 + 64);
  v13 = a4 + 64;
  v12 = v14;
  v15 = -1 << *(v13 - 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v12;
  if (!a2)
  {
LABEL_18:
    v24 = 0;
LABEL_25:
    *a1 = v40;
    a1[1] = v13;
    a1[2] = ~v15;
    a1[3] = v24;
    a1[4] = v17;
    return;
  }

  if (!a3)
  {
    v24 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(v13 - 32);
    v35 = a1;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    v36 = a3;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v18;
      v25 = v23 | (v18 << 6);
      v26 = v40;
      v27 = *(v40 + 48);
      v28 = type metadata accessor for Replica(0);
      sub_1ADDDE408(v27 + *(*(v28 - 8) + 72) * v25, v9, type metadata accessor for Replica);
      v29 = *(v26 + 56);
      v30 = sub_1AE23C12C();
      (*(*(v30 - 8) + 16))(&v9[*(v39 + 48)], v29 + *(*(v30 - 8) + 72) * v25, v30);
      a1 = v38;
      sub_1ADDD2198(v9, v38, &qword_1EB5BA2A0, &unk_1AE242200);
      sub_1ADDD2198(a1, a2, &qword_1EB5BA2A0, &unk_1AE242200);
      if (v20 == v36)
      {
        goto LABEL_23;
      }

      a2 += *(v37 + 72);
      v31 = __OFADD__(v20++, 1);
      v18 = v24;
      if (v31)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v13 + 8 * v22);
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v32 = v18 + 1;
    }

    else
    {
      v32 = v19;
    }

    v24 = v32 - 1;
LABEL_23:
    v15 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
}

void *sub_1AE03A62C(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 10) | (16 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        sub_1ADDD86D8(v18, *(&v18 + 1));
        goto LABEL_24;
      }

      ++v11;
      sub_1ADDD86D8(v18, *(&v18 + 1));
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

void *sub_1AE03A790(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 10) | (16 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        sub_1ADDD86D8(v18, *(&v18 + 1));
        goto LABEL_24;
      }

      ++v11;
      sub_1ADDD86D8(v18, *(&v18 + 1));
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

void *sub_1AE03A8F4(void *result, _WORD *a2, uint64_t a3, uint64_t a4)
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
      *a2 = *(*(a4 + 48) + ((v9 << 7) | (2 * v14)));
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

void *sub_1AE03A9F4(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
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

void sub_1AE03AAF0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Replica(0);
  v31 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = a4 + 8;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & a4[8];
  if (!a2)
  {
LABEL_18:
    v18 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v14;
    a1[2] = ~v15;
    a1[3] = v18;
    a1[4] = v17;
    return;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    v18 = 0;
    v28 = v15;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      a1 = a4;
      v24 = a4[6];
      v25 = *(v31 + 72);
      sub_1ADDDE408(v24 + v25 * (v23 | (v18 << 6)), v10, type metadata accessor for Replica);
      sub_1ADDD8010(v10, v13);
      sub_1ADDD8010(v13, a2);
      if (v20 == v30)
      {
        a4 = a1;
        a1 = v29;
        goto LABEL_23;
      }

      a2 += v25;
      v26 = __OFADD__(v20++, 1);
      a4 = a1;
      if (v26)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = v14[v22];
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v27 = v18 + 1;
    }

    else
    {
      v27 = v19;
    }

    v18 = v27 - 1;
    a1 = v29;
LABEL_23:
    v15 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_1AE03AD2C(uint64_t a1)
{
  v2 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v30[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1ADDDE408(a1, v4, type metadata accessor for PartiallyOrderedReferenceMap);
  sub_1AE23C1FC();
  sub_1ADDE5058(v4, type metadata accessor for PartiallyOrderedReferenceMap);
  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  for (i = (MEMORY[0x1E69E7CC0] + 32); ; i += 4)
  {
    v8 = v40;
    if (v40 < DWORD1(v40))
    {
      v9 = *(&v39 + 1);
      LODWORD(v40) = v40 + 1;
      goto LABEL_5;
    }

    v9 = sub_1AE23C20C();
    if (!v9)
    {
      break;
    }

LABEL_5:
    v10 = (v9 + *(v9 + 24) + (~v8 << 6));
    v11 = v10[5];
    v13 = v10[2];
    v12 = v10[3];
    v33 = v10[4];
    v34 = v11;
    v31 = v13;
    v32 = v12;
    if (v5)
    {
      sub_1ADDCEE40(&v31, v30, &qword_1EB5BA9E8, &qword_1AE251DE0);
      v14 = v6;
      v15 = __OFSUB__(v5--, 1);
      if (v15)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v16 = v6[3];
      if (((v16 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_30;
      }

      v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
      if (v17 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCD38, &qword_1AE251E18);
      v14 = swift_allocObject();
      v19 = _swift_stdlib_malloc_size(v14);
      v20 = v19 - 32;
      if (v19 < 32)
      {
        v20 = v19 + 31;
      }

      v21 = v20 >> 6;
      v14[2] = v18;
      v14[3] = 2 * v21;
      v22 = v6[3] >> 1;
      i = &v14[8 * v22 + 4];
      v23 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v22;
      if (v6[2])
      {
        if (v14 >= v6 && v14 + 4 < &v6[8 * v22 + 4] && v14 == v6)
        {
          sub_1ADDCEE40(&v31, v30, &qword_1EB5BA9E8, &qword_1AE251DE0);
        }

        else
        {
          sub_1ADDCEE40(&v31, v30, &qword_1EB5BA9E8, &qword_1AE251DE0);
          memmove(v14 + 4, v6 + 4, v22 << 6);
        }

        v6[2] = 0;
      }

      else
      {
        sub_1ADDCEE40(&v31, v30, &qword_1EB5BA9E8, &qword_1AE251DE0);
      }

      v15 = __OFSUB__(v23, 1);
      v5 = v23 - 1;
      if (v15)
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    v24 = v31;
    v25 = v32;
    v26 = v34;
    i[2] = v33;
    i[3] = v26;
    *i = v24;
    i[1] = v25;
    v6 = v14;
  }

  v37 = v45;
  v38[0] = v46[0];
  *(v38 + 11) = *(v46 + 11);
  v33 = v41;
  v34 = v42;
  v35 = v43;
  v36 = v44;
  v31 = v39;
  v32 = v40;
  sub_1ADDFD834(&v31);
  v27 = v6[3];
  if (v27 < 2)
  {
    return;
  }

  v28 = v27 >> 1;
  v15 = __OFSUB__(v28, v5);
  v29 = v28 - v5;
  if (!v15)
  {
    v6[2] = v29;
    return;
  }

LABEL_31:
  __break(1u);
}

void sub_1AE03B038(__int128 *a1)
{
  v231 = sub_1AE23C12C();
  v2 = *(v231 - 8);
  MEMORY[0x1EEE9AC00](v231);
  v197 = &v188 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v196 = &v188 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v204 = &v188 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v216 = &v188 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v215 = &v188 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v227 = &v188 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v219 = &v188 - v15;
  v16 = type metadata accessor for Replica(0);
  v218 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v205 = &v188 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v226 = &v188 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v217 = &v188 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v200 = &v188 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v199 = &v188 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v223 = &v188 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v222 = &v188 - v29;
  v30 = *(a1 + 26);
  v31 = *(a1 + 200);
  v32 = *(a1 + 3);
  v33 = *(a1 + 4);
  v34 = *(a1 + 24);
  v211 = *(a1 + 23);
  v224 = v30;
  v225 = v34;
  v35 = *a1;
  v207 = *(a1 + 1);
  v208 = v35;
  v206 = *(a1 + 2);
  v36 = a1[11];
  v264[8] = a1[10];
  v264[9] = v36;
  v265 = a1[12];
  v266 = v30;
  v37 = a1[7];
  v264[4] = a1[6];
  v264[5] = v37;
  v38 = a1[9];
  v264[6] = a1[8];
  v264[7] = v38;
  v39 = a1[3];
  v264[0] = a1[2];
  v264[1] = v39;
  v40 = a1[5];
  v264[2] = a1[4];
  v264[3] = v40;
  v41 = a1[1];
  v42 = &v262;
  v262 = *a1;
  v263 = v41;
  sub_1ADECD86C(a1, &v254);
  v201 = 0;
  v228 = v2 + 16;
  v229 = v2;
  v230 = (v2 + 32);
  v221 = (v2 + 8);
  v209 = MEMORY[0x1E69E7CC0];
  v210 = v32;
  v193 = (MEMORY[0x1E69E7CC0] + 32);
  v214 = v32 + 56;
LABEL_2:
  v212 = v31;
  LODWORD(v213) = v31;
  v43 = v33;
LABEL_3:
  for (i = (v214 + 40 * v43); ; i += 5)
  {
    v252[6] = *(&v264[6] + 8);
    v253[0] = *(&v264[7] + 8);
    *(v253 + 11) = *(&v264[8] + 3);
    v252[2] = *(&v264[2] + 8);
    v252[3] = *(&v264[3] + 8);
    v252[5] = *(&v264[5] + 8);
    v252[4] = *(&v264[4] + 8);
    v252[0] = *(v264 + 8);
    v252[1] = *(&v264[1] + 8);
    if (get_enum_tag_for_layout_string_9Coherence14Proto_DocumentVs5Error_pIeglzo_Sg_0(v252) == 1)
    {
      goto LABEL_7;
    }

    v45 = DWORD2(v264[1]);
    if (DWORD2(v264[1]) < HIDWORD(v264[1]))
    {
      v46 = *&v264[1];
      ++DWORD2(v264[1]);
LABEL_65:
      v130 = v46 + *(v46 + 24) + 16 * ~v45;
      v131 = *(v130 + 32);
      v132 = *(v130 + 40);
      v31 = v212;
      v213 = v131;
      if (v212)
      {
        sub_1ADDD86D8(v131, v132);
        v144 = v213;
        goto LABEL_78;
      }

      v133 = v224 + 1;
      if (__OFADD__(v224, 1))
      {
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

      ++v224;
      v266 = v133;
      v134 = v131;
      sub_1ADDD86D8(v131, v132);
      v220 = v132;
      sub_1ADDDF7A8(v134, v132, v208, &v254);
      v135 = *&v255[0];
      if (!*&v255[0])
      {
        goto LABEL_125;
      }

      v136 = *(&v255[1] + 1);
      v137 = *&v255[1];
      v138 = *(&v255[0] + 1);
      v139 = *(&v254 + 1);
      v140 = v254;

      sub_1ADDDC21C(v140, v139, v135, v138, v137, v136);
      sub_1ADF637A8(v138, v225);
      if (v141)
      {

        v32 = v210;
      }

      else
      {
        sub_1ADF637A8(v135, v211);
        v143 = v142;

        if ((v143 & 1) == 0)
        {
          sub_1ADDCC35C(v134, v220);
          v31 = 0;
          v32 = v210;
          goto LABEL_2;
        }

        v32 = v210;
      }

      v31 = v212;
      v144 = v213;
      v132 = v220;
LABEL_78:
      sub_1ADDDF7A8(v144, v132, v208, &v254);
      v155 = *&v255[0];
      if (*&v255[0])
      {
        v156 = v254;
        v157 = *(&v255[1] + 1);
        v158 = *(v255 + 8);
        v159 = v209;
        if (v201)
        {
          v160 = v213;
          v161 = v201 - 1;
          if (!__OFSUB__(v201, 1))
          {
LABEL_95:
            v201 = v161;
            v209 = v159;
            v175 = v193;
            *v193 = v160;
            v175[1] = v156;
            *(v175 + 4) = v155;
            *(v175 + 40) = v158;
            *(v175 + 7) = v157;
            v193 = (v175 + 4);
            goto LABEL_2;
          }

LABEL_123:
          __break(1u);
        }

        else
        {
          v202 = *(v255 + 8);
          v203 = v254;
          v220 = *(&v255[1] + 1);
          v162 = *(v209 + 3);
          if (((v162 >> 1) + 0x4000000000000000) >= 0)
          {
            v163 = v162 & 0xFFFFFFFFFFFFFFFELL;
            if (v163 <= 1)
            {
              v164 = 1;
            }

            else
            {
              v164 = v163;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCD38, &qword_1AE251E18);
            v165 = swift_allocObject();
            v166 = _swift_stdlib_malloc_size(v165);
            v167 = v166 - 32;
            if (v166 < 32)
            {
              v167 = v166 + 31;
            }

            v168 = v167 >> 6;
            *(v165 + 2) = v164;
            *(v165 + 3) = 2 * (v167 >> 6);
            v169 = v165 + 32;
            v170 = *(v159 + 3) >> 1;
            v171 = v159;
            if (*(v159 + 2))
            {
              v172 = v159 + 32;
              if (v165 != v159 || v169 >= &v172[64 * v170])
              {
                memmove(v165 + 32, v172, v170 << 6);
                v171 = v209;
              }

              *(v171 + 2) = 0;
            }

            v193 = &v169[64 * v170];

            v173 = (v168 & 0x7FFFFFFFFFFFFFFFLL) - v170;
            v159 = v165;
            v31 = v212;
            v160 = v213;
            v157 = v220;
            v158 = v202;
            v156 = v203;
            v174 = __OFSUB__(v173, 1);
            v161 = v173 - 1;
            if (!v174)
            {
              goto LABEL_95;
            }

            goto LABEL_123;
          }
        }

        __break(1u);
LABEL_125:
        __break(1u);
      }

      __break(1u);
      return;
    }

    v46 = sub_1AE23C20C();
    if (v46)
    {
      goto LABEL_65;
    }

LABEL_7:
    sub_1ADECD850(v248);
    v250[6] = *(&v264[6] + 8);
    v251[0] = *(&v264[7] + 8);
    *(v251 + 11) = *(&v264[8] + 3);
    v250[2] = *(&v264[2] + 8);
    v250[3] = *(&v264[3] + 8);
    v250[4] = *(&v264[4] + 8);
    v250[5] = *(&v264[5] + 8);
    v250[0] = *(v264 + 8);
    v250[1] = *(&v264[1] + 8);
    sub_1ADDCEDE0(v250, &qword_1EB5BCD30, &unk_1AE251E08);
    *(&v264[5] + 8) = v248[5];
    *(&v264[6] + 8) = v248[6];
    *(&v264[7] + 8) = v249[0];
    *(&v264[8] + 3) = *(v249 + 11);
    *(&v264[1] + 8) = v248[1];
    *(&v264[2] + 8) = v248[2];
    *(&v264[3] + 8) = v248[3];
    *(&v264[4] + 8) = v248[4];
    *(v264 + 8) = v248[0];
    v47 = *(v32 + 16);
    if (v33 == v47)
    {
      goto LABEL_107;
    }

    if (v33 >= v47)
    {
      break;
    }

    v49 = *(i - 3);
    v48 = *(i - 2);
    v50 = *(i - 1);
    v51 = *i;
    v43 = v33 + 1;
    *&v264[0] = v33 + 1;
    if (v49)
    {
      v52 = v224 + 1;
      if (__OFADD__(v224, 1))
      {
        goto LABEL_119;
      }

      ++v224;
      v266 = v52;
      v220 = v48;
      *&v202 = v51;
      if ((v213 & 1) == 0)
      {
        v211 = *(&v264[9] + 1);
        v145 = v50;
        v146 = v265;
        v147 = v49;
        sub_1ADE42C78(v49, v48);
        v198 = v145;
        v148 = v211;

        v195 = v147;
        v149 = v147;
        v150 = v220;
        sub_1ADE42C78(v149, v220);

        v225 = v146;
        v151 = sub_1ADF63DF4(v150, v146);
        v152 = v151;
        if (v151 & 0x100) != 0 && (v151)
        {

          v153 = v195;
          v154 = v220;
          sub_1ADE42CB8(v195, v220);
          LODWORD(v213) = 1;
          goto LABEL_104;
        }

        v176 = v195;
        LODWORD(v213) = sub_1ADF63DF4(v195, v148);

        sub_1ADE42CB8(v176, v220);
        if (v152)
        {
          v177 = v152 | v213;
          goto LABEL_102;
        }

        v177 = v213;
        if ((v152 & 0x100) != 0)
        {
          if ((v213 & 1) == 0)
          {
            goto LABEL_122;
          }

          v178 = 1;
        }

        else
        {
          if ((v213 & 1) == 0)
          {
            goto LABEL_122;
          }

LABEL_102:
          v178 = (v177 >> 8) & 1;
        }

        LODWORD(v213) = v178;
        v154 = v220;
        v153 = v195;
LABEL_104:
        ++v33;
        sub_1AE23C1FC();
        sub_1ADE42CB8(v153, v154);

        v246 = v238;
        v247[0] = v239[0];
        *(v247 + 11) = *(v239 + 11);
        v242 = v234;
        v243 = v235;
        v244 = v236;
        v245 = v237;
        v240 = v232;
        v241 = v233;
        Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v240);
        v259 = *(&v264[6] + 8);
        v260[0] = *(&v264[7] + 8);
        *(v260 + 11) = *(&v264[8] + 3);
        v255[1] = *(&v264[2] + 8);
        v256 = *(&v264[3] + 8);
        v258 = *(&v264[5] + 8);
        v257 = *(&v264[4] + 8);
        v255[0] = *(&v264[1] + 8);
        v254 = *(v264 + 8);
        sub_1ADDCEDE0(&v254, &qword_1EB5BCD30, &unk_1AE251E08);
        *(&v264[5] + 8) = v245;
        *(&v264[6] + 8) = v246;
        *(&v264[7] + 8) = v247[0];
        *(&v264[8] + 3) = *(v247 + 11);
        *(&v264[1] + 8) = v241;
        *(&v264[2] + 8) = v242;
        *(&v264[3] + 8) = v243;
        *(&v264[4] + 8) = v244;
        *(v264 + 8) = v240;
        v31 = v213 ^ 1;
        BYTE8(v265) = v213 ^ 1;
        goto LABEL_2;
      }

      if (*(v225 + 16) < *(v48 + 16))
      {
        v53 = v48;
        v54 = v49;
        sub_1ADE42C78(v49, v48);

        goto LABEL_41;
      }

      v194 = v33 + 1;
      v55 = *(v48 + 64);
      *&v213 = v48 + 64;
      v56 = v48;
      v57 = v49;
      v58 = v50;
      v59 = 1 << *(v48 + 32);
      if (v59 < 64)
      {
        v60 = ~(-1 << v59);
      }

      else
      {
        v60 = -1;
      }

      v61 = v60 & v55;
      sub_1ADE42C78(v49, v48);
      v198 = v58;

      v195 = v57;
      sub_1ADE42C78(v57, v56);
      *&v203 = (v59 + 63) >> 6;

      v62 = 0;
      while (2)
      {
        if (v61)
        {
          v63 = v62;
          goto LABEL_29;
        }

        if (v203 <= v62 + 1)
        {
          v64 = v62 + 1;
        }

        else
        {
          v64 = v203;
        }

        v65 = v64 - 1;
        v66 = v222;
        v67 = v223;
        do
        {
          v63 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            __break(1u);
LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

          if (v63 >= v203)
          {
            v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
            (*(*(v95 - 8) + 56))(v67, 1, 1, v95);
            v61 = 0;
            v62 = v65;
            goto LABEL_30;
          }

          v61 = *(v213 + 8 * v63);
          ++v62;
        }

        while (!v61);
        v62 = v63;
LABEL_29:
        v68 = __clz(__rbit64(v61));
        v61 &= v61 - 1;
        v69 = v68 | (v63 << 6);
        v70 = v220;
        v71 = v217;
        sub_1ADDDE408(*(v220 + 48) + *(v218 + 72) * v69, v217, type metadata accessor for Replica);
        v72 = v229;
        v73 = v219;
        v74 = v231;
        (*(v229 + 16))(v219, *(v70 + 56) + *(v229 + 72) * v69, v231);
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
        v76 = *(v75 + 48);
        v77 = v71;
        v78 = v223;
        sub_1ADDD8010(v77, v223);
        v79 = v74;
        v67 = v78;
        (*(v72 + 32))(v78 + v76, v73, v79);
        (*(*(v75 - 8) + 56))(v78, 0, 1, v75);
        v66 = v222;
LABEL_30:
        sub_1ADDD2198(v67, v66, &qword_1EB5BA458, &qword_1AE251E00);
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
        v81 = *(v80 - 8);
        v82 = *(v81 + 48);
        if (v82(v66, 1, v80) == 1)
        {
          v53 = v220;

          if (*(v211 + 16) >= *(v195 + 16))
          {
            *&v203 = v80;
            v96 = *(v195 + 64);
            v190 = v195 + 64;
            v97 = 1 << *(v195 + 32);
            if (v97 < 64)
            {
              v98 = ~(-1 << v97);
            }

            else
            {
              v98 = -1;
            }

            v99 = v98 & v96;
            v189 = (v97 + 63) >> 6;
            v191 = (v81 + 56);
            v192 = v82;

            v100 = 0;
            while (1)
            {
              if (v99)
              {
                v101 = v100;
LABEL_56:
                v108 = __clz(__rbit64(v99));
                v99 &= v99 - 1;
                v109 = v108 | (v101 << 6);
                v110 = v195;
                v111 = v217;
                sub_1ADDDE408(*(v195 + 48) + *(v218 + 72) * v109, v217, type metadata accessor for Replica);
                v112 = v229;
                v113 = *(v110 + 56) + *(v229 + 72) * v109;
                v114 = v219;
                v115 = v231;
                (*(v229 + 16))(v219, v113, v231);
                v116 = v203;
                *&v213 = *(v203 + 48);
                v117 = v111;
                v105 = v200;
                sub_1ADDD8010(v117, v200);
                v118 = *(v112 + 32);
                v107 = v116;
                v118(v105 + v213, v114, v115);
                v119 = 0;
                v104 = v205;
                v106 = v199;
              }

              else
              {
                if (v189 <= v100 + 1)
                {
                  v102 = v100 + 1;
                }

                else
                {
                  v102 = v189;
                }

                v103 = v102 - 1;
                v104 = v205;
                v106 = v199;
                v105 = v200;
                v107 = v203;
                while (1)
                {
                  v101 = v100 + 1;
                  if (__OFADD__(v100, 1))
                  {
                    goto LABEL_117;
                  }

                  if (v101 >= v189)
                  {
                    break;
                  }

                  v99 = *(v190 + 8 * v101);
                  ++v100;
                  if (v99)
                  {
                    v100 = v101;
                    goto LABEL_56;
                  }
                }

                v99 = 0;
                v119 = 1;
                v100 = v103;
              }

              (*v191)(v105, v119, 1, v107);
              sub_1ADDD2198(v105, v106, &qword_1EB5BA458, &qword_1AE251E00);
              if (v192(v106, 1, v107) == 1)
              {
                goto LABEL_106;
              }

              v120 = *v230;
              (*v230)(v204, v106 + *(v107 + 48), v231);
              sub_1ADDD8010(v106, v104);
              v121 = v211;
              if (!*(v211 + 16))
              {
                break;
              }

              v122 = sub_1ADDD8A6C(v104);
              v104 = v205;
              if ((v123 & 1) == 0)
              {
                break;
              }

              v124 = v197;
              v125 = v231;
              (*(v229 + 16))(v197, *(v121 + 56) + *(v229 + 72) * v122, v231);
              sub_1ADDE5058(v104, type metadata accessor for Replica);
              v126 = v196;
              v120(v196, v124, v125);
              v127 = v204;
              v128 = sub_1AE23C0BC();
              v129 = *(v229 + 8);
              v129(v126, v125);
              v129(v127, v125);
              v43 = v194;
              if ((v128 & 1) == 0)
              {
                v54 = v195;

                v53 = v220;
                sub_1ADE42CB8(v54, v220);
                v32 = v210;
                goto LABEL_41;
              }
            }

            v54 = v195;

            v53 = v220;
            sub_1ADE42CB8(v54, v220);
            sub_1ADDE5058(v104, type metadata accessor for Replica);
            (*v221)(v204, v231);
          }

          else
          {
            v54 = v195;
            sub_1ADE42CB8(v195, v53);
          }

          goto LABEL_37;
        }

        v83 = *v230;
        (*v230)(v227, v66 + *(v80 + 48), v231);
        v84 = v226;
        sub_1ADDD8010(v66, v226);
        v85 = v225;
        if (*(v225 + 16))
        {
          v86 = sub_1ADDD8A6C(v84);
          v84 = v226;
          if (v87)
          {
            v88 = v229;
            v89 = v216;
            v90 = v231;
            (*(v229 + 16))(v216, *(v85 + 56) + *(v229 + 72) * v86, v231);
            sub_1ADDE5058(v84, type metadata accessor for Replica);
            v91 = v215;
            v83(v215, v89, v90);
            v92 = v227;
            v93 = sub_1AE23C0BC();
            v94 = *(v88 + 8);
            v94(v91, v90);
            v94(v92, v90);
            if ((v93 & 1) == 0)
            {
              v53 = v220;

              v54 = v195;
              sub_1ADE42CB8(v195, v53);
              v32 = v210;
              goto LABEL_40;
            }

            continue;
          }
        }

        break;
      }

      v53 = v220;

      v54 = v195;
      sub_1ADE42CB8(v195, v53);
      sub_1ADDE5058(v84, type metadata accessor for Replica);
      (*v221)(v227, v231);
LABEL_37:
      v32 = v210;
LABEL_40:
      v43 = v194;
LABEL_41:
      sub_1AE23C1FC();
      sub_1ADE42CB8(v54, v53);

      v246 = v238;
      v247[0] = v239[0];
      *(v247 + 11) = *(v239 + 11);
      v242 = v234;
      v243 = v235;
      v244 = v236;
      v245 = v237;
      v240 = v232;
      v241 = v233;
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v240);
      v259 = *(&v264[6] + 8);
      v260[0] = *(&v264[7] + 8);
      *(v260 + 11) = *(&v264[8] + 3);
      v255[1] = *(&v264[2] + 8);
      v256 = *(&v264[3] + 8);
      v258 = *(&v264[5] + 8);
      v257 = *(&v264[4] + 8);
      v255[0] = *(&v264[1] + 8);
      v254 = *(v264 + 8);
      sub_1ADDCEDE0(&v254, &qword_1EB5BCD30, &unk_1AE251E08);
      *(&v264[5] + 8) = v245;
      *(&v264[6] + 8) = v246;
      *(&v264[7] + 8) = v247[0];
      *(&v264[8] + 3) = *(v247 + 11);
      *(&v264[1] + 8) = v241;
      *(&v264[2] + 8) = v242;
      *(&v264[3] + 8) = v243;
      *(&v264[4] + 8) = v244;
      LODWORD(v213) = 1;
      v33 = v43;
      *(v264 + 8) = v240;
      goto LABEL_3;
    }

    sub_1AE23C1FC();
    v246 = v238;
    v247[0] = v239[0];
    *(v247 + 11) = *(v239 + 11);
    v242 = v234;
    v243 = v235;
    v244 = v236;
    v245 = v237;
    v240 = v232;
    v241 = v233;
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v240);
    v259 = *(&v264[6] + 8);
    v260[0] = *(&v264[7] + 8);
    *(v260 + 11) = *(&v264[8] + 3);
    v255[1] = *(&v264[2] + 8);
    v256 = *(&v264[3] + 8);
    v258 = *(&v264[5] + 8);
    v257 = *(&v264[4] + 8);
    v255[0] = *(&v264[1] + 8);
    v254 = *(v264 + 8);
    sub_1ADDCEDE0(&v254, &qword_1EB5BCD30, &unk_1AE251E08);
    *(&v264[5] + 8) = v245;
    *(&v264[6] + 8) = v246;
    *(&v264[7] + 8) = v247[0];
    *(&v264[8] + 3) = *(v247 + 11);
    *(&v264[1] + 8) = v241;
    *(&v264[2] + 8) = v242;
    *(&v264[3] + 8) = v243;
    *(&v264[4] + 8) = v244;
    ++v33;
    *(v264 + 8) = v240;
  }

  __break(1u);
LABEL_106:
  v179 = v195;
  v180 = v220;
  sub_1ADE42CB8(v195, v220);

  sub_1ADE42CB8(v179, v180);
  while (1)
  {
LABEL_107:
    v42 = v224;
    if (v224 >= 101)
    {
      if (qword_1EB5B94F8 != -1)
      {
LABEL_120:
        swift_once();
      }

      v181 = sub_1AE23C78C();
      __swift_project_value_buffer(v181, qword_1EB5D74A8);
      v182 = sub_1AE23C76C();
      v183 = sub_1AE23D61C();
      if (os_log_type_enabled(v182, v183))
      {
        v184 = swift_slowAlloc();
        *v184 = 134217984;
        *(v184 + 4) = v42;
        _os_log_impl(&dword_1ADDCA000, v182, v183, "Excessive since comparisons: %ld", v184, 0xCu);
        MEMORY[0x1B26FDA50](v184, -1, -1);
      }
    }

    v260[3] = v264[8];
    v260[4] = v264[9];
    v260[5] = v265;
    v261 = v266;
    v259 = v264[4];
    v260[0] = v264[5];
    v260[1] = v264[6];
    v260[2] = v264[7];
    v255[1] = v264[0];
    v256 = v264[1];
    v257 = v264[2];
    v258 = v264[3];
    v254 = v262;
    v255[0] = v263;
    sub_1ADECD8C8(&v254);
    v185 = *(v209 + 3);
    if (v185 < 2)
    {
      break;
    }

    v186 = v185 >> 1;
    v174 = __OFSUB__(v186, v201);
    v187 = v186 - v201;
    if (!v174)
    {
      *(v209 + 2) = v187;
      return;
    }

    __break(1u);
LABEL_122:
    sub_1ADE42CB8(v195, v220);
  }
}

void sub_1AE03C634(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A8, &unk_1AE251E20);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v9 = 0;
    v10 = v8 - 32;
    if (v8 < 32)
    {
      v10 = v8 - 17;
    }

    v11 = v10 >> 4;
    *(v7 + 2) = v6;
    *(v7 + 3) = 2 * v11;
    v36 = v3;
    v12 = v3 + 32;
    v13 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v6;
    v14 = v7 + 48;
    while (1)
    {
      if (v5 == v9)
      {
        __break(1u);
        goto LABEL_43;
      }

      v15 = *(a2 + 32 + 8 * v9);
      *(v14 - 2) = *(v12 + 8 * v9);
      *(v14 - 1) = v15;
      if (v6 - 1 == v9)
      {
        break;
      }

      ++v9;
      v14 += 16;
      if (v4 == v9)
      {
        __break(1u);
        break;
      }
    }

    v3 = v36;
    if (v4 > v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
    v16 = *(MEMORY[0x1E69E7CC0] + 24);

    v14 = v7 + 32;
    v13 = v16 >> 1;
    if (v4 > v5)
    {
LABEL_15:
      v17 = v3 + 32;
      v37 = v17;
      v38 = a2 + 32;
      while (v6 < v4)
      {
        v18 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_44;
        }

        if (v5 == v6)
        {
          goto LABEL_38;
        }

        if (v6 >= v5)
        {
          goto LABEL_45;
        }

        v19 = *(v17 + 8 * v6);
        v20 = *(v38 + 8 * v6);
        if (v13)
        {

          v21 = __OFSUB__(v13--, 1);
          if (v21)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v22 = *(v7 + 3);
          if (((v22 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_47;
          }

          v23 = v22 & 0xFFFFFFFFFFFFFFFELL;
          if (v23 <= 1)
          {
            v24 = 1;
          }

          else
          {
            v24 = v23;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A8, &unk_1AE251E20);
          v25 = swift_allocObject();
          v26 = _swift_stdlib_malloc_size(v25);
          v27 = v26 - 32;
          if (v26 < 32)
          {
            v27 = v26 - 17;
          }

          v28 = v27 >> 4;
          *(v25 + 2) = v24;
          *(v25 + 3) = 2 * (v27 >> 4);
          v29 = v25 + 32;
          v30 = *(v7 + 3) >> 1;
          v14 = &v25[16 * v30 + 32];
          v31 = (v28 & 0x7FFFFFFFFFFFFFFFLL) - v30;
          if (*(v7 + 2))
          {
            v32 = v7 + 32;
            if (v25 != v7 || v29 >= &v32[16 * v30])
            {
              memmove(v29, v32, 16 * v30);
            }

            *(v7 + 2) = 0;
          }

          else
          {
          }

          v7 = v25;
          v17 = v37;
          v21 = __OFSUB__(v31, 1);
          v13 = v31 - 1;
          if (v21)
          {
            goto LABEL_46;
          }
        }

        *v14 = v19;
        *(v14 + 1) = v20;
        v14 += 16;
        ++v6;
        if (v18 == v4)
        {
          goto LABEL_38;
        }
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }
  }

LABEL_38:
  v33 = *(v7 + 3);
  if (v33 < 2)
  {
    return;
  }

  v34 = v33 >> 1;
  v21 = __OFSUB__(v34, v13);
  v35 = v34 - v13;
  if (v21)
  {
LABEL_48:
    __break(1u);
    return;
  }

  *(v7 + 2) = v35;
}

void sub_1AE03C8CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v4 = v2 - a2;
  if (v2 != a2)
  {
    if (v2 > a2)
    {
      if (a2 < 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (!v2)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v5 = 0;
      v6 = (a2 + a1 + 32);
      v7 = (MEMORY[0x1E69E7CC0] + 32);
      while (1)
      {
        v9 = *v6++;
        v8 = v9;
        if (!v5)
        {
          v10 = v3[3];
          if (((v10 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_28;
          }

          v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
          if (v11 <= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = v11;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA108, &qword_1AE241920);
          v13 = swift_allocObject();
          v14 = 2 * _swift_stdlib_malloc_size(v13) - 64;
          v13[2] = v12;
          v13[3] = v14;
          v15 = (v13 + 4);
          v16 = v3[3] >> 1;
          if (v3[2])
          {
            if (v13 != v3 || v15 >= v3 + v16 + 32)
            {
              memmove(v13 + 4, v3 + 4, v16);
            }

            v3[2] = 0;
          }

          v7 = (v15 + v16);
          v5 = (v14 >> 1) - v16;

          v3 = v13;
        }

        v18 = __OFSUB__(v5--, 1);
        if (v18)
        {
          break;
        }

        *v7++ = v8;
        if (!--v4)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v5 = 0;
LABEL_23:
  v19 = v3[3];
  if (v19 >= 2)
  {
    v20 = v19 >> 1;
    v18 = __OFSUB__(v20, v5);
    v21 = v20 - v5;
    if (!v18)
    {
      v3[2] = v21;
      return;
    }

LABEL_32:
    __break(1u);
  }
}

void sub_1AE03CA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t), void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = BYTE1(a6);
  if (BYTE1(a6) != 255)
  {
    a7(a1, a2, a3);

    a8(a4, a5, a6, v8);
  }
}

double sub_1AE03CAFC(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 122) = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1AE03CB58(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *v2;
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
  return sub_1ADDD86D8(v4, v3);
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1AE03CBB0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_1AE03CBF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AE03CC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BCD48;
  if (!qword_1EB5BCD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BCD48);
  }

  return result;
}

uint64_t CRVoid.merge(_:)@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB5B9908 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = byte_1EB5D750A;
  *a1 = word_1EB5D7508;
  *(a1 + 2) = v1;
  return result;
}

uint64_t sub_1AE03CF20@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB5B9908 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = byte_1EB5D750A;
  *a1 = word_1EB5D7508;
  *(a1 + 2) = v1;
  return result;
}

unint64_t sub_1AE03CFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AE03CFF4(a1, a2, a3);
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1AE03CFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BCD50[0];
  if (!qword_1EB5BCD50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5BCD50);
  }

  return result;
}

uint64_t dispatch thunk of ReferenceDifferencer.observableDifference<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 8))(a1, a2, a3, a4);
}

{
  return (*(a5 + 16))(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ReferenceVisitor.visit<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 16))(a1, a2, a3, a4);
}

{
  return (*(a5 + 24))(a1, a2, a3, a4);
}

uint64_t sub_1AE03D11C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  if (*(a3 + 16))
  {
    sub_1AE23E31C();
    sub_1AE23BECC();
    v6 = sub_1AE23E34C();
    v7 = a3 + 56;
    v8 = -1 << *(a3 + 32);
    v9 = v6 & ~v8;
    if ((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      v10 = ~v8;
      if (a1)
      {
        v11 = 0;
      }

      else
      {
        v11 = a2 == 0xC000000000000000;
      }

      v12 = !v11;
      v42 = v12;
      v13 = a2 >> 62;
      v14 = __OFSUB__(HIDWORD(a1), a1);
      v39 = v14;
      v37 = a2;
      v38 = HIDWORD(a1) - a1;
      v40 = v10;
      v41 = BYTE6(a2);
      v36 = a1;
      while (1)
      {
        v15 = (*(a3 + 48) + 16 * v9);
        v17 = *v15;
        v16 = v15[1];
        v18 = v16 >> 62;
        if (v16 >> 62 == 3)
        {
          break;
        }

        if (v18 > 1)
        {
          if (v18 != 2)
          {
            goto LABEL_37;
          }

          v24 = *(v17 + 16);
          v23 = *(v17 + 24);
          v25 = __OFSUB__(v23, v24);
          v22 = v23 - v24;
          if (v25)
          {
            goto LABEL_67;
          }

          if (v13 <= 1)
          {
            goto LABEL_34;
          }
        }

        else if (v18)
        {
          LODWORD(v22) = HIDWORD(v17) - v17;
          if (__OFSUB__(HIDWORD(v17), v17))
          {
            goto LABEL_68;
          }

          v22 = v22;
          if (v13 <= 1)
          {
LABEL_34:
            v26 = v41;
            if (v13)
            {
              v26 = v38;
              if (v39)
              {
                goto LABEL_66;
              }
            }

            goto LABEL_40;
          }
        }

        else
        {
          v22 = BYTE6(v16);
          if (v13 <= 1)
          {
            goto LABEL_34;
          }
        }

LABEL_38:
        if (v13 != 2)
        {
          if (!v22)
          {
            return 1;
          }

          goto LABEL_14;
        }

        v28 = *(a1 + 16);
        v27 = *(a1 + 24);
        v25 = __OFSUB__(v27, v28);
        v26 = v27 - v28;
        if (v25)
        {
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
        }

LABEL_40:
        if (v22 == v26)
        {
          if (v22 < 1)
          {
            return 1;
          }

          if (v18 <= 1)
          {
            if (!v18)
            {
              *v44 = v17;
              *&v44[8] = v16;
              v44[10] = BYTE2(v16);
              v44[11] = BYTE3(v16);
              v44[12] = BYTE4(v16);
              v44[13] = BYTE5(v16);
              sub_1ADDD86D8(v17, v16);
              sub_1ADDD8820(v44, a1, a2, v43);
              sub_1ADDCC35C(v17, v16);
              if (v43[0])
              {
                return 1;
              }

LABEL_61:
              v10 = v40;
              goto LABEL_14;
            }

            if (v17 >> 32 < v17)
            {
              goto LABEL_69;
            }

            sub_1ADDD86D8(v17, v16);
            v31 = sub_1AE23BB7C();
            if (v31)
            {
              v33 = sub_1AE23BBAC();
              if (__OFSUB__(v17, v33))
              {
                goto LABEL_72;
              }

              v31 += v17 - v33;
            }

LABEL_59:
            sub_1AE23BB9C();
            v34 = v31;
            a1 = v36;
            a2 = v37;
            sub_1ADDD8820(v34, v36, v37, v44);
            sub_1ADDCC35C(v17, v16);
            if (v44[0])
            {
              return 1;
            }

            v7 = a3 + 56;
            goto LABEL_61;
          }

          if (v18 == 2)
          {
            v30 = *(v17 + 16);
            v29 = *(v17 + 24);
            sub_1ADDD86D8(v17, v16);
            v31 = sub_1AE23BB7C();
            if (v31)
            {
              v32 = sub_1AE23BBAC();
              if (__OFSUB__(v30, v32))
              {
                goto LABEL_71;
              }

              v31 += v30 - v32;
            }

            if (__OFSUB__(v29, v30))
            {
              goto LABEL_70;
            }

            goto LABEL_59;
          }

          *&v44[6] = 0;
          *v44 = 0;
          sub_1ADDD86D8(v17, v16);
          sub_1ADDD8820(v44, a1, a2, v43);
          sub_1ADDCC35C(v17, v16);
          if (v43[0])
          {
            return 1;
          }
        }

LABEL_14:
        v9 = (v9 + 1) & v10;
        if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          return 0;
        }
      }

      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || v13 < 3;
      if (((v21 | v42) & 1) == 0)
      {
        return 1;
      }

LABEL_37:
      v22 = 0;
      if (v13 <= 1)
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    }
  }

  return 0;
}

double sub_1AE03D540(uint64_t a1)
{
  v3 = v1;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  sub_1ADDD86D8(v5, v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  v22 = v8;
  v9 = sub_1ADDDE7CC(v5, v6);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v10;
  if (v8[3] < v14)
  {
    sub_1ADF6AF70(v14, isUniquelyReferenced_nonNull_native);
    v9 = sub_1ADDDE7CC(v5, v6);
    if ((v2 & 1) == (v15 & 1))
    {
      goto LABEL_6;
    }

    v9 = sub_1AE23E27C();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  *v3 = v8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_7:
  v3 = v9;
  sub_1ADF6E6B0(v9, v5, v6, a1, 0, v8);
  sub_1ADDD86D8(v5, v6);

  v9 = v3;
LABEL_8:
  while (1)
  {
    v16 = v8[7] + 16 * v9;
    v18 = *(v16 + 8);
    v17 = (v16 + 8);
    v19 = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      break;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    v21 = v9;
    sub_1ADF703A0();
    v9 = v21;
    v8 = v22;
    *v3 = v22;
    if ((v2 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *v17 = v19;
  sub_1ADDCC35C(v5, v6);

  return result;
}

uint64_t sub_1AE03D6C8(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CD0];
  *(result + 24) = a1;
  return result;
}

double sub_1AE03D704(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TypedReference(0, a2, a3, a4);
  v7 = type metadata accessor for Ref(0, a2, a3, v6);
  WitnessTable = swift_getWitnessTable();
  Reference.identity.getter(v7, WitnessTable);
  v12 = v13;
  sub_1ADF97074(&v12);
  v10 = v9;
  swift_beginAccess();
  sub_1ADEC0BB0(&v13, v10);
  swift_endAccess();

  return result;
}

double sub_1AE03D880(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = *a1;
  v9 = a1[1];
  v17 = v4[3];
  v16.n128_u64[0] = v8;
  v16.n128_u64[1] = v9;
  v10 = *(*(v7 + 88) + 16);
  v11 = *(v10 + 64);
  swift_unknownObjectRetain();
  sub_1ADDD86D8(v8, v9);
  LOBYTE(v7) = v11(&v16, *(v7 + 80), v10);
  sub_1ADDCC35C(v16.n128_i64[0], v16.n128_u64[1]);
  swift_unknownObjectRelease();
  if ((v7 & 1) == 0)
  {
    type metadata accessor for TypedReference(0, a2, a3, v12);
    v16.n128_u64[0] = v8;
    v16.n128_u64[1] = v9;
    sub_1ADF97074(&v16);
    v15 = v14;
    swift_beginAccess();
    sub_1ADDD86D8(v8, v9);
    sub_1ADEC0BB0(&v17, v15);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1AE03D9C0()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1AE03DA3C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  sub_1AE03D540(v1);
  return swift_endAccess();
}

void sub_1AE03DA90(uint64_t *a1)
{
  if (*(v1 + 24))
  {
    v2 = 1;
  }

  else
  {
    v4 = *a1;
    v3 = a1[1];
    v5 = *(v1 + 16);

    sub_1ADDD86D8(v4, v3);
    v2 = sub_1AE03D11C(v4, v3, v5);

    sub_1ADDCC35C(v4, v3);
  }

  *(v1 + 24) = v2 & 1;
}

uint64_t sub_1AE03DB18()
{

  return swift_deallocClassInstance();
}

void sub_1AE03DB98(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  sub_1ADDD86D8(v1, v2);
  sub_1ADDE0110(v3, v1, v2);
  swift_endAccess();
  sub_1ADDCC35C(v3[0], v3[1]);
}

uint64_t sub_1AE03DC7C()
{

  return swift_deallocClassInstance();
}

void sub_1AE03DCF4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v55 = a4;
  v53 = a5;
  v10 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v52 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  v51 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v49 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v49 - v25;
  v27 = *(a1 + 16);
  v54 = v28;
  if (v27 >> 60 || (v27 & 0xF000000000000007) == 0xF000000000000007)
  {
    type metadata accessor for Proto_Register._StorageClass();
    inited = swift_initStaticObject();
  }

  else
  {
    inited = *(v27 + 16);
  }

  v30 = swift_beginAccess();
  if (*(inited + 32))
  {
    sub_1ADE42E40(v30, v31, v32);
    swift_allocError();
    *v33 = 0xD000000000000021;
    *(v33 + 8) = 0x80000001AE2626E0;
    *(v33 + 16) = 0;
    swift_willThrow();

LABEL_9:

    return;
  }

  v50 = v17;
  v35 = *(inited + 16);
  v34 = *(inited + 24);

  sub_1ADE058D4(v35, v34, a2, v14);
  if (v6)
  {

    goto LABEL_9;
  }

  v36 = v14;
  v37 = v50;
  sub_1ADE172E4(v36, v50);
  v38 = swift_beginAccess();
  if (*(inited + 48))
  {
    type metadata accessor for CRDecoder();
    swift_allocObject();

    v42 = sub_1ADDE77B4(v41, a2);

    v43 = v55;
    v44 = v42;
    v45 = v54;
    (*(*(*(v55 + 16) + 8) + 8))(v44, v54);

    v47 = *(v51 + 32);
    v47(v26, v23, v45);
    v47(v20, v26, v45);
    v48 = v52;
    sub_1ADE172E4(v50, v52);
    sub_1AE03EDB4(v20, v48, v45, v43, v53);
  }

  else
  {
    sub_1ADE42E40(v38, v39, v40);
    swift_allocError();
    *v46 = 0xD000000000000016;
    *(v46 + 8) = 0x80000001AE262710;
    *(v46 + 16) = 0;
    swift_willThrow();

    sub_1ADE173B8(v37);
  }
}

uint64_t *sub_1AE03E130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 104) >= 2u)
  {
    v27 = v4;
    v25 = type metadata accessor for Proto_CRDT._StorageClass();
    inited = swift_initStaticObject();
    type metadata accessor for Proto_Register._StorageClass();
    v10 = swift_initStaticObject();
    v11 = sub_1ADDF66A8(v3);
    v12 = *(v3 + *(type metadata accessor for FinalizedTimestamp(0) + 20));
    v26 = inited;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      swift_allocObject();
      v10 = sub_1ADDE8D20(v10);
    }

    v13 = swift_beginAccess();
    v5 = &v25;
    *(v10 + 16) = v11;
    *(v10 + 24) = v12;
    *(v10 + 32) = 0;
    MEMORY[0x1EEE9AC00](v13);
    v22[1] = *(a2 + 16);
    v23 = v3;
    v24 = a1;
    v14 = v27;
    v15 = sub_1ADE6B9FC(sub_1AE0451D4, v22);
    if (v14)
    {
    }

    else
    {
      v16 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        swift_allocObject();
        v10 = sub_1ADDE8D20(v10);
      }

      v5 = v26;
      swift_beginAccess();
      *(v10 + 48) = v16;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = swift_allocObject();
        v18 = v5[2];
        *(v17 + 16) = v18;
        sub_1ADE5215C(v18);

        v5 = v17;
      }

      v19 = swift_allocObject();
      *(v19 + 16) = v10;
      v20 = v5[2];
      v5[2] = v19;
      sub_1ADE52174(v20);
    }
  }

  else
  {
    v5 = 0x80000001AE2611D0;
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v6 = 0xD00000000000003ALL;
    *(v6 + 8) = 0x80000001AE2611D0;
    *(v6 + 16) = 3;
    swift_willThrow();
  }

  return v5;
}

uint64_t CRDTRegister.value.setter(uint64_t a1, uint64_t a2)
{
  sub_1AE043E64(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*CRDTRegister.value.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = type metadata accessor for FinalizedTimestamp(0);
  a1[1] = v3;
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(v4);
  }

  a1[2] = v5;
  return sub_1AE03E4E8;
}

void sub_1AE03E4E8(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = a1[2];
  }

  else
  {
    if (qword_1ED96AC50 != -1)
    {
      v9 = a1;
      swift_once();
      a1 = v9;
    }

    v3 = a1[1];
    v2 = a1[2];
    v4 = *a1;
    sub_1ADDD0F70();
    sub_1AE23BFBC();
    v5 = *(v3 + 20);
    v6 = *(v4 + v5);
    v7 = __OFADD__(v6, 1);
    v8 = v6 + 1;
    if (v7)
    {
      __break(1u);
      return;
    }

    *&v2[v5] = v8;
    sub_1ADFAF2E4(v2, v4);
  }

  free(v2);
}

uint64_t sub_1AE03E648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - v7;
  (*(v9 + 16))(&v13 - v7, v6);
  v11 = type metadata accessor for CRDTRegister(0, v4, v5, v10);
  return CRDTRegister.wrappedValue.setter(v8, v11);
}

uint64_t sub_1AE03E778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  type metadata accessor for CRDTRegister(0, v5, *(a3 + a4 - 8), a4);
  v6 = CRDTRegister.wrappedValue.modify(v9);
  (*(*(v5 - 8) + 24))(v7, a1, v5);
  return (v6)(v9, 0);
}

void (*CRDTRegister.wrappedValue.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = CRDTRegister.crdt.modify();
  return sub_1ADDDD89C;
}

uint64_t sub_1AE03E908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CRDTRegister(0, *(a3 + a4 - 16), *(a3 + a4 - 8), a4);
  v6 = CRDTRegister.projectedValue.modify();
  (*(*(v5 - 8) + 24))(v7, a1, v5);
  return (v6)(&v9, 0);
}

uint64_t CRDTRegister.projectedValue.setter(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 - 8);
  (*(v7 + 8))(v2);
  v5 = *(v7 + 32);

  return v5(v2, a1, a2);
}

uint64_t CRDTRegister.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, a2, v9);
  CRDTRegister.init(_:)(v11, a2, a3, a4);
  return (*(v8 + 8))(a1, a2);
}

uint64_t CRDTRegister.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_1ED966C80 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FinalizedTimestamp(0);
  v9 = __swift_project_value_buffer(v8, qword_1EB5D74D0);
  sub_1ADED0548(v9, a4);
  v11 = type metadata accessor for CRDTRegister(0, a2, a3, v10);
  v12 = *(*(a2 - 8) + 32);
  v13 = a4 + *(v11 + 36);

  return v12(v13, a1, a2);
}

uint64_t CRDTRegister.init(defaultState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED966C80 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for FinalizedTimestamp(0);
  v11 = __swift_project_value_buffer(v10, qword_1EB5D74D0);
  sub_1ADED0548(v11, a3);
  (*(*(*(a2 + 16) + 8) + 40))(a1);
  if (v3)
  {
    return sub_1ADE173B8(a3);
  }

  v14 = type metadata accessor for CRDTRegister(0, a1, a2, v12);
  return (*(v7 + 32))(a3 + *(v14 + 36), v9, a1);
}

uint64_t sub_1AE03EDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1ADE172E4(a2, a5);
  v10 = type metadata accessor for CRDTRegister(0, a3, a4, v9);
  v11 = *(*(a3 - 8) + 32);
  v12 = a5 + *(v10 + 36);

  return v11(v12, a1, a3);
}

uint64_t CRDTRegister.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for FinalizedTimestamp(0);
  v12 = *(result + 20);
  v13 = *(v3 + v12);
  v14 = *(a1 + v12);
  if (v13 == v14)
  {
    if ((sub_1ADF5EB00(v3) & 1) == 0)
    {
      result = sub_1AE23BF8C();
      if (result)
      {
        (*(v8 + 16))(v10, a1 + *(a2 + 36), v7);
        (*(*(*(a2 + 24) + 8) + 8))(v10, v7);
        return (*(v8 + 8))(v10, v7);
      }

      goto LABEL_9;
    }

LABEL_6:
    v15 = *(a2 - 8);
    (*(v15 + 8))(v3, a2);
    result = (*(v15 + 16))(v3, a1, a2);
    if (qword_1EB5B9910 != -1)
    {
      result = swift_once();
    }

    v16 = &word_1EB5D750B;
    goto LABEL_12;
  }

  if (v13 < v14)
  {
    goto LABEL_6;
  }

LABEL_9:
  if (qword_1EB5B9908 != -1)
  {
    result = swift_once();
  }

  v16 = &word_1EB5D7508;
LABEL_12:
  v17 = *v16;
  v18 = *(v16 + 2);
  *a3 = v17;
  *(a3 + 2) = v18;
  return result;
}

uint64_t CRDTRegister.newRefs(from:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v14 = *(v13 + 24);
  v15 = *(v14 + 16);
  if (((*(v15 + 80))(v5, v15, v10) & 1) == 0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v16 = *(type metadata accessor for FinalizedTimestamp(0) + 20);
  v17 = *(a1 + v16);
  v18 = *(v2 + v16);
  if (v17 != v18)
  {
    if (v17 >= v18)
    {
      return MEMORY[0x1E69E7CD0];
    }

LABEL_7:
    (*(v6 + 16))(v12, v2 + *(a2 + 36), v5);
    v20 = sub_1ADECE30C(v5, v15);
    (*(v6 + 8))(v12, v5);
    return v20;
  }

  if (sub_1ADF5EB00(a1))
  {
    goto LABEL_7;
  }

  if (sub_1AE23BF8C())
  {
    v19 = *(v6 + 16);
    v19(v12, v2 + *(a2 + 36), v5);
    v19(v8, a1 + *(a2 + 36), v5);
    v20 = (*(v14 + 64))(v8, v5, v14);
    v21 = *(v6 + 8);
    v21(v8, v5);
    v21(v12, v5);
    return v20;
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t CRDTRegister.visitReferences(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v2 + *(v10 + 36), v5, v7);
  (*(*(*(a2 + 24) + 16) + 48))(a1, v5);
  return (*(v6 + 8))(v9, v5);
}

Swift::Bool __swiftcall CRDTRegister.needToFinalizeTimestamps()()
{
  v2 = v0;
  v3 = *(v0 + 16);
  v4 = *(v3 - 8);
  v5 = (MEMORY[0x1EEE9AC00])();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1 + *(v8 + 36), v3, v5);
  LOBYTE(v2) = (*(*(*(v2 + 24) + 16) + 56))(v3);
  (*(v4 + 8))(v7, v3);
  return v2 & 1;
}

uint64_t CRDTRegister.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  (*(v8 + 16))(v10, v3 + *(v15 + 36), v7, v12);
  v16 = *(a2 + 24);
  (*(*(v16 + 16) + 24))(a1, v7);
  (*(v8 + 8))(v10, v7);
  return CRDTRegister.init(_:)(v14, v7, v16, a3);
}

uint64_t CRDTRegister.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v7 = v5;

  CRDTRegister.copy(renamingReferences:)(&v7, a2, a3);
}

uint64_t CRDTRegister.description.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_1AE23DA2C();

  strcpy(v9, "CRDTRegister[");
  HIWORD(v9[1]) = -4864;
  (*(v4 + 16))(v6, v1 + *(a1 + 36), v3);
  v7 = sub_1AE23CD6C();
  MEMORY[0x1B26FB670](v7);

  MEMORY[0x1B26FB670](93, 0xE100000000000000);
  return v9[0];
}

uint64_t CRDTRegister.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v71 = a3;
  v6 = *(a2 + 16);
  v70 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v69 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v68 = v61 - v9;
  v11 = *(v10 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1AE23D7CC();
  v66 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v61 - v14;
  v67 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v61 - v17;
  v20 = *(type metadata accessor for FinalizedTimestamp(0) + 20);
  v21 = *(v3 + v20);
  v22 = *(a1 + v20);
  if (v21 == v22)
  {
    if ((sub_1ADF5EB00(v3) & 1) == 0)
    {
      if (sub_1AE23BF8C())
      {
        v61[0] = v13;
        v23 = *(a2 + 36);
        v64 = v3;
        v65 = a1;
        v24 = v70 + 16;
        v25 = *(v70 + 2);
        v62 = v25;
        v26 = v3 + v23;
        v27 = v68;
        v25(v68, v26, v6);
        v28 = v25;
        v29 = v65 + *(a2 + 36);
        v30 = v69;
        v61[1] = v24;
        v28(v69, v29, v6);
        v31 = *(v11 + 72);
        v63 = v11;
        v31(v30, v6, v11);
        v32 = *(v70 + 1);
        v32(v30, v6);
        v70 = v32;
        v32(v27, v6);
        v33 = v67;
        if ((*(v67 + 48))(v15, 1, AssociatedTypeWitness) == 1)
        {
          (*(v66 + 8))(v15, v61[0]);
          v34 = v68;
          v35 = v62;
          v62(v68, v64 + *(a2 + 36), v6);
          v36 = v65;
          v37 = v69;
          v35(v69, v65 + *(a2 + 36), v6);
          v38 = v63;
          LOBYTE(v35) = (*(v63 + 88))(v37, v6, v63);
          v39 = v70;
          v70(v37, v6);
          v39(v34, v6);
          if ((v35 & 1) == 0)
          {
            v60 = type metadata accessor for CRDTRegister.MutatingAction(0, v6, v38, v40);
            v44 = *(*(v60 - 8) + 56);
            v45 = v71;
            v59 = 1;
            return v44(v45, v59, 1, v60);
          }

          v41 = v71;
          v62(v71, v36 + *(a2 + 36), v6);
          v43 = type metadata accessor for CRDTRegister.MutatingAction(0, v6, v38, v42);
          swift_storeEnumTagMultiPayload();
          v44 = *(*(v43 - 8) + 56);
          v45 = v41;
        }

        else
        {
          v55 = *(v33 + 32);
          v55(v18, v15, AssociatedTypeWitness);
          v56 = *(swift_getTupleTypeMetadata2() + 48);
          v57 = v71;
          sub_1ADED0548(v64, v71);
          v55((v57 + v56), v18, AssociatedTypeWitness);
          v43 = type metadata accessor for CRDTRegister.MutatingAction(0, v6, v63, v58);
          swift_storeEnumTagMultiPayload();
          v44 = *(*(v43 - 8) + 56);
          v45 = v57;
        }

        v59 = 0;
        v60 = v43;
        return v44(v45, v59, 1, v60);
      }

      goto LABEL_9;
    }
  }

  else if (v21 >= v22)
  {
LABEL_9:
    v51 = v71;
    (*(v70 + 2))(v71, a1 + *(a2 + 36), v6);
    v53 = type metadata accessor for CRDTRegister.MutatingAction(0, v6, v11, v52);
    swift_storeEnumTagMultiPayload();
    v47 = *(*(v53 - 8) + 56);
    v49 = v51;
    v50 = 0;
    v48 = v53;
    goto LABEL_10;
  }

  v46 = type metadata accessor for CRDTRegister.MutatingAction(0, v6, v11, v19);
  v47 = *(*(v46 - 8) + 56);
  v48 = v46;
  v49 = v71;
  v50 = 1;
LABEL_10:

  return v47(v49, v50, 1, v48);
}

uint64_t CRDTRegister.apply(_:)(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  v46 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1AE23D7CC();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v37 - v6;
  v45 = AssociatedTypeWitness;
  v44 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v37 - v8;
  v42 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v3;
  v15 = type metadata accessor for CRDTRegister.MutatingAction(255, v2, v3, v14);
  v16 = sub_1AE23D7CC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v37 - v18;
  v20 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v37 - v26;
  (*(v17 + 16))(v19, v48, v16, v25);
  if ((*(v20 + 48))(v19, 1, v15) == 1)
  {
    return (*(v17 + 8))(v19, v16);
  }

  (*(v20 + 32))(v27, v19, v15);
  (*(v20 + 16))(v23, v27, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = v42;
    v30 = v45;
    v31 = *(swift_getTupleTypeMetadata2() + 48);
    v32 = v41;
    sub_1ADE172E4(v23, v41);
    v33 = v44;
    v34 = &v23[v31];
    v35 = v43;
    (*(v44 + 32))(v43, v34, v30);
    if (*(v47 + *(v29 + 20)) == *(v32 + *(v29 + 20)) && (sub_1AE23BF8C() & 1) != 0)
    {
      v36 = v37;
      (*(v33 + 16))(v37, v35, v30);
      (*(v33 + 56))(v36, 0, 1, v30);
      (*(v40 + 80))(v36, v2);
      (*(v38 + 8))(v36, v39);
    }

    (*(v33 + 8))(v35, v30);
    sub_1ADE173B8(v32);
  }

  else
  {
    (*(v10 + 32))(v13, v23, v2);
    sub_1AE043E64(v13, v46);
    (*(v10 + 8))(v13, v2);
  }

  return (*(v20 + 8))(v27, v15);
}

uint64_t CRDTRegister.hasDelta(from:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  v12 = *(type metadata accessor for FinalizedTimestamp(0) + 20);
  v13 = *(a1 + v12);
  v14 = *(v2 + v12);
  if (v13 == v14)
  {
    if (sub_1ADF5EB00(a1))
    {
      v15 = 1;
    }

    else if (sub_1AE23BF8C())
    {
      v17 = *(v6 + 16);
      v17(v11, v2 + *(a2 + 36), v5);
      v17(v8, a1 + *(a2 + 36), v5);
      v15 = (*(*(a2 + 24) + 88))(v8, v5);
      v18 = *(v6 + 8);
      v18(v8, v5);
      v18(v11, v5);
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = v13 < v14;
  }

  return v15 & 1;
}

uint64_t CRDTRegister.delta(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a1;
  v8 = *(a3 + 16);
  v56 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v52 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v46 - v11;
  v13 = *(v12 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1AE23D7CC();
  v49 = *(v15 - 8);
  v50 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v54 = &v46 - v16;
  v51 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v48 = &v46 - v18;
  v20 = type metadata accessor for CRDTRegister.Partial.PartialCases(0, v8, v13, v19);
  v57 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v46 - v21;
  v23 = type metadata accessor for FinalizedTimestamp(0);
  v25 = v4;
  v26 = *(v23 + 20);
  v27 = *(a2 + v26);
  v28 = *(v4 + v26);
  if (v27 != v28)
  {
    if (v27 >= v28)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v29 = sub_1ADF5EB00(a2);
  v25 = v4;
  if (v29)
  {
LABEL_7:
    (*(*(a3 - 8) + 16))(v22, v25, a3);
    swift_storeEnumTagMultiPayload();
    (*(v57 + 32))(a4, v22, v20);
    goto LABEL_8;
  }

  if ((sub_1AE23BF8C() & 1) == 0)
  {
LABEL_9:
    v40 = type metadata accessor for CRDTRegister.Partial(0, v8, v13, v24);
    v41 = 1;
    return (*(*(v40 - 8) + 56))(a4, v41, 1);
  }

  v46 = v4;
  v47 = a4;
  v30 = v4 + *(a3 + 36);
  v31 = *(v56 + 16);
  v31(v55, v30, v8);
  v32 = a2 + *(a3 + 36);
  v33 = v52;
  v31(v52, v32, v8);
  v34 = v55;
  (*(v13 + 96))(v53, v33, v8, v13);
  v35 = *(v56 + 8);
  v35(v33, v8);
  v36 = v34;
  v37 = v54;
  v35(v36, v8);
  v38 = v51;
  if ((*(v51 + 48))(v37, 1, AssociatedTypeWitness) == 1)
  {
    (*(v49 + 8))(v37, v50);
    a4 = v47;
    goto LABEL_9;
  }

  v43 = *(v38 + 32);
  v44 = v48;
  v43(v48, v37, AssociatedTypeWitness);
  v45 = *(swift_getTupleTypeMetadata2() + 48);
  sub_1ADED0548(v46, v22);
  v43(&v22[v45], v44, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  a4 = v47;
  (*(v57 + 32))(v47, v22, v20);
LABEL_8:
  v40 = type metadata accessor for CRDTRegister.Partial(0, v8, v13, v39);
  v41 = 0;
  return (*(*(v40 - 8) + 56))(a4, v41, 1);
}

uint64_t CRDTRegister.canMerge(delta:)(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v3 = *(a2 + 16);
  v33 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v31 - v8;
  v10 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRDTRegister.Partial.PartialCases(0, v3, v6, v13);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  (*(v15 + 16))(&v31 - v17, v36, v14, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *(swift_getTupleTypeMetadata2() + 48);
    sub_1ADE172E4(v18, v12);
    v20 = v34;
    (*(v34 + 32))(v9, &v18[v19], AssociatedTypeWitness);
    v21 = *(v10 + 20);
    v22 = v35;
    v23 = *(v35 + v21);
    v24 = *&v12[v21];
    if (v23 == v24)
    {
      if (sub_1AE23BF8C())
      {
        v25 = *(a2 + 36);
        v26 = v33;
        v27 = v22 + v25;
        v28 = v32;
        (*(v33 + 16))(v32, v27, v3);
        v29 = (*(v6 + 104))(v9, v3, v6);
        (*(v26 + 8))(v28, v3);
      }

      else
      {
        v29 = sub_1ADF5EB00(v12);
      }
    }

    else
    {
      v29 = v24 < v23;
    }

    (*(v20 + 8))(v9, AssociatedTypeWitness);
    sub_1ADE173B8(v12);
  }

  else
  {
    (*(v15 + 8))(v18, v14);
    v29 = 1;
  }

  return v29 & 1;
}

BOOL CRDTRegister.merge(delta:)(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v29 - v6;
  v8 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v3;
  v16 = type metadata accessor for CRDTRegister.Partial.PartialCases(0, v3, v4, v15);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - v18;
  (*(v20 + 16))(&v29 - v18, v32, v16, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *(swift_getTupleTypeMetadata2() + 48);
    sub_1ADE172E4(v19, v10);
    v22 = v31;
    (*(v31 + 32))(v7, &v19[v21], AssociatedTypeWitness);
    v23 = *(v8 + 20);
    v24 = *(v33 + v23);
    v25 = *&v10[v23];
    if (v24 == v25)
    {
      if (sub_1AE23BF8C())
      {
        v26 = (*(v4 + 112))(v7, v30, v4);
      }

      else
      {
        v26 = sub_1ADF5EB00(v10);
      }

      v27 = v26;
    }

    else
    {
      v27 = v25 < v24;
    }

    (*(v22 + 8))(v7, AssociatedTypeWitness);
    sub_1ADE173B8(v10);
  }

  else
  {
    (*(v11 + 32))(v14, v19, a2);
    CRDTRegister.merge(_:)(v14, a2, v34);
    (*(v11 + 8))(v14, a2);
    return 1;
  }

  return v27;
}

uint64_t CRDTRegister.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v55 = a2;
  v8 = *(a3 + 16);
  v57 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v54 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v50 - v11;
  v13 = *(*(v12 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1AE23D7CC();
  v52 = *(v15 - 8);
  v53 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v50 - v20;
  v24 = *(type metadata accessor for FinalizedTimestamp(0) + 20);
  v25 = *(v4 + v24);
  v26 = *(a1 + v24);
  if (v25 == v26)
  {
    if ((sub_1ADF5EB00(v4) & 1) == 0)
    {
      if (sub_1AE23BF8C())
      {
        v51 = a4;
        v27 = v4 + *(a3 + 36);
        v28 = *(v57 + 16);
        v28(v56, v27, v8);
        v29 = a1 + *(a3 + 36);
        v30 = v54;
        v28(v54, v29, v8);
        v31 = v56;
        (*(v13 + 40))(v30, v55, v8, v13);
        v32 = *(v57 + 8);
        v32(v30, v8);
        v32(v31, v8);
        if ((*(v18 + 48))(v17, 1, AssociatedTypeWitness) == 1)
        {
          (*(v52 + 8))(v17, v53);
          v35 = type metadata accessor for WrappedObservableDifference(0, AssociatedTypeWitness, v33, v34);
          return (*(*(v35 - 8) + 56))(v51, 1, 1, v35);
        }

        else
        {
          v45 = *(v18 + 32);
          v45(v21, v17, AssociatedTypeWitness);
          v46 = v51;
          v45(v51, v21, AssociatedTypeWitness);
          (*(v18 + 56))(v46, 0, 1, AssociatedTypeWitness);
          v49 = type metadata accessor for WrappedObservableDifference(0, AssociatedTypeWitness, v47, v48);
          return (*(*(v49 - 8) + 56))(v46, 0, 1, v49);
        }
      }

      goto LABEL_8;
    }
  }

  else if (v25 >= v26)
  {
LABEL_8:
    (*(v18 + 56))(a4, 1, 1, AssociatedTypeWitness);
    v44 = type metadata accessor for WrappedObservableDifference(0, AssociatedTypeWitness, v42, v43);
    v38 = *(*(v44 - 8) + 56);
    v39 = v44;
    v40 = a4;
    v41 = 0;
    goto LABEL_9;
  }

  v37 = type metadata accessor for WrappedObservableDifference(0, AssociatedTypeWitness, v22, v23);
  v38 = *(*(v37 - 8) + 56);
  v39 = v37;
  v40 = a4;
  v41 = 1;
LABEL_9:

  return v38(v40, v41, 1, v39);
}

void CRDTRegister.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    sub_1ADE64C4C(a2, a3, a4);
    swift_setDeallocating();
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v9 = 0xD000000000000014;
    *(v9 + 8) = 0x80000001AE25FB50;
    *(v9 + 16) = 0;
    swift_willThrow();
  }
}

double CRDTRegister.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADDFCC74(a1, a2, a3);
  if (!v4)
  {
    v8 = *(a2 + 16);
    v7 = *(a2 + 24);

    sub_1ADE6BB44(v3, v8, v7, v9);
  }

  return result;
}

uint64_t CRDTRegister.isDefaultState.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED966C80 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for FinalizedTimestamp(0);
  if (*(v1 + *(v7 + 20)) == *(__swift_project_value_buffer(v7, qword_1EB5D74D0) + *(v7 + 20)) && (sub_1AE23BF8C() & 1) != 0)
  {
    (*(v4 + 16))(v6, v1 + *(a1 + 36), v3);
    v8 = (*(*(*(*(a1 + 24) + 16) + 8) + 48))(v3);
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t static CRDTRegister.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  v14 = type metadata accessor for FinalizedTimestamp(0);
  if (*(a1 + *(v14 + 20)) == *(a2 + *(v14 + 20)) && (sub_1AE23BF8C() & 1) != 0)
  {
    v16 = type metadata accessor for CRDTRegister(0, a3, a4, v15);
    v17 = *(v16 + 36);
    v18 = *(v16 + 16);
    v19 = *(*(v18 - 8) + 16);
    v23[1] = a4;
    v19(v13, a1 + v17, v18);
    v19(v10, a2 + *(v16 + 36), v18);
    v20 = sub_1AE23CCBC();
    v21 = *(v8 + 8);
    v21(v10, a3);
    v21(v13, a3);
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_1AE041C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRDTRegister(0, v11, v12, v12);
  (*(*(*(v13 + 16) - 8) + 16))(v10, a1 + *(v13 + 36));
  (*(*(*(a4 + 16) + 8) + 16))(a2, a3);
  return (*(v8 + 8))(v10, a3);
}

uint64_t CRDTRegister<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_1AE23E3BC();
  (*(v6 + 16))(v8, v3 + *(a2 + 36), v5);
  __swift_mutable_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_1AE23E06C();
  (*(v6 + 8))(v8, v5);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t CRDTRegister.Partial.merge(delta:)(uint64_t a1, uint64_t a2)
{
  v101 = a1;
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  v88 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v100 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v94 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v97 = &v86 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v93 = &v86 - v9;
  v10 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v10);
  v92 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v95 = &v86 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v86 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v91 = &v86 - v17;
  v19 = type metadata accessor for CRDTRegister(0, v3, v2, v18);
  v98 = *(v19 - 8);
  v99 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v90 = &v86 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v86 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v86 - v28;
  v86 = v3;
  v87 = v2;
  v31 = type metadata accessor for CRDTRegister.Partial.PartialCases(255, v3, v2, v30);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v33.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v35 = &v86 - v34;
  v37 = &v86 + *(v36 + 56) - v34;
  v96 = *(v31 - 8);
  v38 = *(v96 + 16);
  v38(&v86 - v34, v102, v31, v33);
  (v38)(v37, v101, v31);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v81 = v98;
      v80 = v99;
      v82 = *(v98 + 32);
      v82(v29, v35, v99);
      v82(v26, v37, v80);
      CRDTRegister.merge(_:)(v26, v80, v103);
      (*(v81 + 8))(v26, v80);
      v83 = v102;
      (*(v96 + 8))(v102, v31);
      v82(v83, v29, v80);
      goto LABEL_17;
    }

    v57 = v10;
    v58 = AssociatedTypeWitness;
    v59 = *(swift_getTupleTypeMetadata2() + 48);
    v60 = v98;
    v61 = v90;
    v101 = *(v98 + 32);
    (v101)(v90, v35, v99);
    v62 = v91;
    sub_1ADE172E4(v37, v91);
    v63 = v100;
    v64 = &v37[v59];
    v65 = v93;
    (*(v100 + 32))(v93, v64, v58);
    v66 = *(v57 + 20);
    v67 = *(v62 + v66);
    v68 = *&v61[v66];
    if (v67 == v68)
    {
      if ((sub_1ADF5EB00(v62) & 1) == 0)
      {
        if (sub_1AE23BF8C())
        {
          v69 = v99;
          v70 = v62;
          v71 = (*(v87 + 112))(v65, v86);
          (*(v63 + 8))(v65, v58);
          sub_1ADE173B8(v70);
          if ((v71 & 1) == 0)
          {
            (*(v60 + 8))(v61, v69);
            goto LABEL_26;
          }

          v72 = v102;
          (*(v96 + 8))(v102, v31);
          (v101)(v72, v61, v69);
LABEL_17:
          swift_storeEnumTagMultiPayload();
          v56 = 1;
          return v56 & 1;
        }

LABEL_25:
        (*(v63 + 8))(v65, v58);
        sub_1ADE173B8(v62);
        (*(v60 + 8))(v61, v99);
        goto LABEL_26;
      }
    }

    else if (v67 >= v68)
    {
      goto LABEL_25;
    }

    (*(v63 + 8))(v65, v58);
    sub_1ADE173B8(v62);
    (*(v60 + 8))(v61, v99);
    v56 = 1;
    return v56 & 1;
  }

  v39 = swift_getTupleTypeMetadata2();
  v40 = *(v39 + 48);
  v41 = v10;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v73 = v89;
    sub_1ADE172E4(v35, v89);
    v75 = v98;
    v74 = v99;
    (*(v98 + 32))(v21, v37, v99);
    v76 = *(v41 + 20);
    v77 = *(v73 + v76);
    v78 = *&v21[v76];
    v79 = v100;
    if (v77 == v78)
    {
      if ((sub_1ADF5EB00(v73) & 1) == 0)
      {
        v56 = sub_1ADF5EB00(v21);
LABEL_27:
        (*(v75 + 8))(v21, v74);
        sub_1ADE173B8(v73);
        (*(v79 + 8))(&v35[v40], AssociatedTypeWitness);
        return v56 & 1;
      }
    }

    else if (v77 >= v78)
    {
      v56 = v78 < v77;
      goto LABEL_27;
    }

    (*(v75 + 8))(v21, v74);
    sub_1ADE173B8(v73);
    (*(*(v88 - 8) + 24))(v102, v101);
    (*(v79 + 8))(&v35[v40], AssociatedTypeWitness);
    v56 = 1;
    return v56 & 1;
  }

  v101 = v39;
  v42 = v95;
  sub_1ADE172E4(v35, v95);
  v43 = v92;
  sub_1ADE172E4(v37, v92);
  v44 = *(v100 + 32);
  v45 = &v35[v40];
  v46 = v41;
  v47 = v97;
  v44(v97, v45, AssociatedTypeWitness);
  v48 = &v37[v40];
  v49 = v42;
  v50 = v94;
  v44(v94, v48, AssociatedTypeWitness);
  if (*(v49 + *(v46 + 20)) != *(v43 + *(v46 + 20)) || (sub_1AE23BF8C() & 1) == 0)
  {
    v84 = *(v100 + 8);
    v84(v50, AssociatedTypeWitness);
    v84(v47, AssociatedTypeWitness);
    sub_1ADE173B8(v43);
LABEL_19:
    sub_1ADE173B8(v49);
LABEL_26:
    v56 = 0;
    return v56 & 1;
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v52 = (*(AssociatedConformanceWitness + 16))(v50, AssociatedTypeWitness, AssociatedConformanceWitness);
  v53 = *(v100 + 8);
  v53(v50, AssociatedTypeWitness);
  sub_1ADE173B8(v43);
  if ((v52 & 1) == 0)
  {
    v53(v97, AssociatedTypeWitness);
    goto LABEL_19;
  }

  v54 = v102;
  (*(v96 + 8))(v102, v31);
  v55 = *(v101 + 48);
  sub_1ADE172E4(v49, v54);
  v44((v54 + v55), v97, AssociatedTypeWitness);
  v56 = 1;
  swift_storeEnumTagMultiPayload();
  return v56 & 1;
}

uint64_t CRDTRegister.Partial.canMerge(delta:)(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v2 = *(a2 + 16);
  v69 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v68 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v81 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v76 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v68 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v68 - v11;
  v12 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v68 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v68 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v73 = &v68 - v20;
  v22 = type metadata accessor for CRDTRegister(0, v2, v5, v21);
  v79 = *(v22 - 8);
  v80 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v71 = v2;
  v72 = &v68 - v26;
  v70 = v5;
  v28 = type metadata accessor for CRDTRegister.Partial.PartialCases(255, v2, v5, v27);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v30.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v32 = &v68 - v31;
  v34 = &v68 + *(v33 + 56) - v31;
  v35 = *(v28 - 8);
  v36 = *(v35 + 16);
  v36(&v68 - v31, v82, v28, v30);
  (v36)(v34, v83, v28);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v35 + 8))(v34, v28);
      (*(v79 + 8))(v32, v80);
      v47 = 1;
      return v47 & 1;
    }

    v49 = v12;
    v50 = *(swift_getTupleTypeMetadata2() + 48);
    v51 = v79;
    v52 = v72;
    v53 = v32;
    v54 = v80;
    (*(v79 + 32))(v72, v53, v80);
    v55 = v73;
    sub_1ADE172E4(v34, v73);
    v56 = v81;
    v57 = v78;
    (*(v81 + 32))(v78, &v34[v50], AssociatedTypeWitness);
    v58 = *(v49 + 20);
    v59 = *(v55 + v58);
    v60 = *&v52[v58];
    if (v59 == v60)
    {
      if ((sub_1ADF5EB00(v55) & 1) == 0)
      {
        if (sub_1AE23BF8C())
        {
          v61 = v68;
          (*(*(*(v54 + 16) - 8) + 16))(v68, &v52[*(v54 + 36)]);
          v62 = v71;
          v47 = (*(v70 + 104))(v57, v71);
          (*(v69 + 8))(v61, v62);
          (*(v56 + 8))(v57, AssociatedTypeWitness);
          sub_1ADE173B8(v55);
          (*(v51 + 8))(v52, v54);
          return v47 & 1;
        }

        goto LABEL_19;
      }
    }

    else if (v59 >= v60)
    {
LABEL_19:
      (*(v56 + 8))(v57, AssociatedTypeWitness);
      sub_1ADE173B8(v55);
      (*(v51 + 8))(v52, v54);
      goto LABEL_20;
    }

    (*(v56 + 8))(v57, AssociatedTypeWitness);
    sub_1ADE173B8(v55);
    (*(v51 + 8))(v52, v54);
    v47 = 1;
    return v47 & 1;
  }

  v37 = *(swift_getTupleTypeMetadata2() + 48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = v75;
    sub_1ADE172E4(v32, v75);
    v39 = v74;
    sub_1ADE172E4(v34, v74);
    v40 = v81;
    v41 = *(v81 + 32);
    v42 = &v32[v37];
    v43 = v77;
    v41(v77, v42, AssociatedTypeWitness);
    v44 = &v34[v37];
    v45 = v76;
    v41(v76, v44, AssociatedTypeWitness);
    if (*(v38 + *(v12 + 20)) == *(v39 + *(v12 + 20)) && (sub_1AE23BF8C() & 1) != 0)
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v47 = (*(AssociatedConformanceWitness + 24))(v45, AssociatedTypeWitness, AssociatedConformanceWitness);
      v48 = *(v40 + 8);
      v48(v45, AssociatedTypeWitness);
      v48(v43, AssociatedTypeWitness);
      sub_1ADE173B8(v39);
      sub_1ADE173B8(v38);
      return v47 & 1;
    }

    v66 = *(v40 + 8);
    v66(v45, AssociatedTypeWitness);
    v66(v43, AssociatedTypeWitness);
    sub_1ADE173B8(v39);
    sub_1ADE173B8(v38);
LABEL_20:
    v47 = 0;
    return v47 & 1;
  }

  sub_1ADE172E4(v32, v18);
  v64 = v79;
  v63 = v80;
  (*(v79 + 32))(v24, v34, v80);
  v65 = v81;
  if (*&v24[*(v12 + 20)] == *&v18[*(v12 + 20)])
  {
    v47 = sub_1AE23BF8C() ^ 1;
  }

  else
  {
    v47 = 1;
  }

  (*(v64 + 8))(v24, v63);
  sub_1ADE173B8(v18);
  (*(v65 + 8))(&v32[v37], AssociatedTypeWitness);
  return v47 & 1;
}

uint64_t CRDTRegister.Partial.visitReferences(_:)(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v22 - v6;
  v9 = type metadata accessor for CRDTRegister(0, v3, v2, v8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  v14 = type metadata accessor for CRDTRegister.Partial.PartialCases(0, v3, v2, v13);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - v16;
  (*(v18 + 16))(&v22 - v16, v22, v14, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for FinalizedTimestamp(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(v5 + 32))(v7, &v17[*(TupleTypeMetadata2 + 48)], AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 32))(v23, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v5 + 8))(v7, AssociatedTypeWitness);
    return sub_1ADE173B8(v17);
  }

  else
  {
    (*(v10 + 32))(v12, v17, v9);
    CRDTRegister.visitReferences(_:)(v23, v9);
    return (*(v10 + 8))(v12, v9);
  }
}

void CRDTRegister.Partial.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v44 = v39 - v13;
  v15 = type metadata accessor for CRDTRegister.Partial.PartialCases(0, a2, a3, v14);
  MEMORY[0x1EEE9AC00](v15);
  v21 = v39 - v20;
  if (!*(a1 + 64))
  {
    sub_1ADE42E40(v16, v17, v18);
    swift_allocError();
    *v26 = 0xD000000000000014;
    *(v26 + 8) = 0x80000001AE25FB50;
    *(v26 + 16) = 0;
    swift_willThrow();
LABEL_21:

    return;
  }

  v39[1] = v8;
  v40 = v19;
  v42 = v12;
  v43 = v10;
  v41 = v16;
  type metadata accessor for CRDecoder.CRDTContainer();
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  *(inited + 24) = 0;
  *(inited + 32) = 1;

  sub_1ADDE78C8();
  v24 = *(v23 + 16);
  if (v24 >> 60 || (v24 & 0xF000000000000007) == 0xF000000000000007)
  {
    type metadata accessor for Proto_Register._StorageClass();
    v25 = swift_initStaticObject();
  }

  else
  {
    v25 = *(v24 + 16);
  }

  swift_beginAccess();
  if (*(v25 + 56))
  {
    swift_beginAccess();
    if (*(v25 + 32))
    {
      __break(1u);
    }

    else
    {
      v40 = a4;
      type metadata accessor for CRDecoder();
      swift_allocObject();

      sub_1ADDE77B4(v27, a1);

      v28 = *(swift_getAssociatedConformanceWitness() + 8);
      v29 = *(v28 + 8);

      v31 = v45;
      v29(v30, AssociatedTypeWitness, v28);
      if (v31)
      {

LABEL_20:

        goto LABEL_21;
      }

      if (*(v25 + 32))
      {
        v33 = 0;
      }

      else
      {
        v33 = *(v25 + 16);
      }

      if (*(v25 + 32))
      {
        v34 = 0;
      }

      else
      {
        v34 = *(v25 + 24);
      }

      v35 = v43;
      sub_1ADE058D4(v33, v34, a1, v43);

      v37 = *(swift_getTupleTypeMetadata2() + 48);
      v38 = v40;
      sub_1ADE172E4(v35, v40);
      (*(v42 + 32))(v38 + v37, v44, AssociatedTypeWitness);
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v32 = v45;
    CRDTRegister.init(from:)(a1, a2, a3, v21);
    if (v32)
    {
      goto LABEL_20;
    }

    v36 = v41;
    swift_storeEnumTagMultiPayload();
    (*(v40 + 32))(a4, v21, v36);
  }
}

uint64_t CRDTRegister.Partial.encode(to:)(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v45 - v5;
  v48 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v48);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRDTRegister(0, v3, v2, v9);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - v12;
  v47 = v2;
  v15 = type metadata accessor for CRDTRegister.Partial.PartialCases(0, v3, v2, v14);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v45 - v17;
  (*(v19 + 16))(&v45 - v17, v50, v15, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = v48;
    v21 = *(swift_getTupleTypeMetadata2() + 48);
    sub_1ADE172E4(v18, v8);
    v22 = v49;
    v23 = (*(v49 + 32))(v6, &v18[v21], AssociatedTypeWitness);
    v24 = v52;
    v25 = v51;
    v28 = sub_1ADDFCC74(v23, v26, v27);
    if (v25)
    {
      sub_1ADE173B8(v8);
      return (*(v22 + 8))(v6, AssociatedTypeWitness);
    }

    else
    {
      v46 = AssociatedTypeWitness;
      v51 = v6;
      v32 = v28;
      type metadata accessor for Proto_Register._StorageClass();
      inited = swift_initStaticObject();
      v45 = v32;

      v34 = sub_1ADDF66A8(v8);
      v35 = *(v20 + 20);
      v50 = v8;
      v36 = *&v8[v35];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        swift_allocObject();
        inited = sub_1ADDE8D20(inited);
      }

      v37 = swift_beginAccess();
      *(inited + 16) = v34;
      *(inited + 24) = v36;
      *(inited + 32) = 0;
      MEMORY[0x1EEE9AC00](v37);
      v38 = v47;
      *(&v45 - 4) = v3;
      *(&v45 - 3) = v38;
      v39 = v51;
      *(&v45 - 2) = v51;
      *(&v45 - 1) = v24;
      v40 = sub_1ADE6B9FC(sub_1AE044050, (&v45 - 6));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v49;
      v43 = v46;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        swift_allocObject();
        inited = sub_1ADDE8D20(inited);
      }

      swift_beginAccess();
      *(inited + 56) = v40;

      swift_beginAccess();

      sub_1AE1B783C(v44);
      swift_endAccess();

      sub_1ADE173B8(v50);

      return (*(v42 + 8))(v39, v43);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v18, v10);
    v31 = CRDTRegister.encode(to:)(v52, v10, v30);
    return (*(v11 + 8))(v13, v10, v31);
  }
}

uint64_t sub_1AE043D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  v5 = *(swift_getAssociatedConformanceWitness() + 8);
  v6 = *(v5 + 16);
  v7 = swift_checkMetadataState();
  return v6(a2, v7, v5);
}

uint64_t sub_1AE043E64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FinalizedTimestamp(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(*(a2 + 16) - 8) + 24))(v3 + *(a2 + 36), a1, v7);
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  result = sub_1AE23BFBC();
  v11 = *(v6 + 20);
  v12 = *(v3 + v11);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *&v9[v11] = v14;
    return sub_1ADFAF2E4(v9, v3);
  }

  return result;
}

uint64_t sub_1AE04407C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1AE044128(uint64_t a1)
{
  result = type metadata accessor for FinalizedTimestamp(319);
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE0441B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1AE23BFEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1AE0443FC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1AE23BFEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  if (v12 <= v10)
  {
    v14 = *(v9 + 84);
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = ((*(*(v8 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = ((v15 + v13) & ~v13) + *(v11 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_49:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_49;
            }
          }

          goto LABEL_46;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_49;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_49;
      }
    }

LABEL_46:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v10 >= v12)
  {
    if (v10 >= a2)
    {
      v25 = *(v9 + 56);

      v25(a1, a2);
    }

    else if (v15)
    {
      v24 = ~v10 + a2;
      bzero(a1, v15);
      *a1 = v24;
    }
  }

  else
  {
    v23 = *(v11 + 56);

    v23(&a1[v15 + v13] & ~v13, a2, v12);
  }
}

uint64_t sub_1AE0446F8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for FinalizedTimestamp(255);
    swift_getAssociatedTypeWitness();
    result = swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE0447B8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = (*(*(sub_1AE23BFEC() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = ((v6 + *(v7 + 80) + 8) & ~*(v7 + 80)) + *(v7 + 64);
  if (v8 <= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if ((v9 + 1) <= 3)
  {
    v14 = ((a2 + ~(-1 << v11) - 254) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      v16 = *(a1 + v9);
      if (v16 >= 2)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return (v10 | v15) + 255;
}

void sub_1AE04499C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = (*(*(sub_1AE23BFEC() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = ((v8 + *(v9 + 80) + 8) & ~*(v9 + 80)) + *(v9 + 64);
  if (v10 <= v7)
  {
    v10 = v7;
  }

  v11 = v10 + 1;
  if (a3 < 0xFF)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 + ~(-1 << (8 * v11)) - 254) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (a2 > 0xFE)
  {
    v13 = a2 - 255;
    if (v11 >= 4)
    {
      bzero(a1, v10 + 1);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v14 = (v13 >> (8 * v11)) + 1;
    if (v10 != -1)
    {
      v17 = v13 & ~(-1 << (8 * v11));
      bzero(a1, v11);
      if (v11 != 3)
      {
        if (v11 == 2)
        {
          *a1 = v17;
          if (v12 > 1)
          {
LABEL_39:
            if (v12 == 2)
            {
              *&a1[v11] = v14;
            }

            else
            {
              *&a1[v11] = v14;
            }

            return;
          }
        }

        else
        {
          *a1 = v13;
          if (v12 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v12)
        {
          a1[v11] = v14;
        }

        return;
      }

      *a1 = v17;
      a1[2] = BYTE2(v17);
    }

    if (v12 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v10] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v12 == 2)
  {
    *&a1[v11] = 0;
    goto LABEL_24;
  }

  *&a1[v11] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1AE044C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CRDTRegister.Partial.PartialCases(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AE044C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CRDTRegister(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    type metadata accessor for FinalizedTimestamp(255);
    swift_getAssociatedTypeWitness();
    result = swift_getTupleTypeMetadata2();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE044D34(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = ((*(*(sub_1AE23BFEC() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = ((v6 + *(*(*(a3 + 16) - 8) + 80)) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = ((v6 + *(v8 + 80)) & ~*(v8 + 80)) + *(v8 + 64);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v11 = v10 + 1;
  v12 = 8 * (v10 + 1);
  if ((v10 + 1) <= 3)
  {
    v15 = ((a2 + ~(-1 << v12) - 254) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v15 < 2)
    {
LABEL_26:
      v17 = *(a1 + v10);
      if (v17 >= 2)
      {
        return (v17 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_26;
  }

LABEL_15:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return (v11 | v16) + 255;
}

void sub_1AE044F48(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = ((*(*(sub_1AE23BFEC() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = ((v8 + *(*(*(a4 + 16) - 8) + 80)) & ~*(*(*(a4 + 16) - 8) + 80)) + *(*(*(a4 + 16) - 8) + 64);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = ((v8 + *(v10 + 80)) & ~*(v10 + 80)) + *(v10 + 64);
  if (v11 <= v9)
  {
    v11 = v9;
  }

  v12 = v11 + 1;
  if (a3 < 0xFF)
  {
    v13 = 0;
  }

  else if (v12 <= 3)
  {
    v16 = ((a3 + ~(-1 << (8 * v12)) - 254) >> (8 * v12)) + 1;
    if (HIWORD(v16))
    {
      v13 = 4;
    }

    else
    {
      if (v16 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v16 >= 2)
      {
        v13 = v17;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  if (a2 > 0xFE)
  {
    v14 = a2 - 255;
    if (v12 >= 4)
    {
      bzero(a1, v11 + 1);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v15 = (v14 >> (8 * v12)) + 1;
    if (v11 != -1)
    {
      v18 = v14 & ~(-1 << (8 * v12));
      bzero(a1, v12);
      if (v12 != 3)
      {
        if (v12 == 2)
        {
          *a1 = v18;
          if (v13 > 1)
          {
LABEL_39:
            if (v13 == 2)
            {
              *&a1[v12] = v15;
            }

            else
            {
              *&a1[v12] = v15;
            }

            return;
          }
        }

        else
        {
          *a1 = v14;
          if (v13 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v13)
        {
          a1[v12] = v15;
        }

        return;
      }

      *a1 = v18;
      a1[2] = BYTE2(v18);
    }

    if (v13 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v13 <= 1)
  {
    if (v13)
    {
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v11] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v13 == 2)
  {
    *&a1[v12] = 0;
    goto LABEL_24;
  }

  *&a1[v12] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_1AE04520C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v73 = a7;
  v74 = a6;
  v72 = a5;
  v84 = a2;
  v11 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v70 = &v57 - v12;
  v76 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v69 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v87 = &v57 - v20;
  v21 = a3;
  v75 = sub_1AE23D7CC();
  v58 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v71 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v83 = &v57 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v86 = &v57 - v26;
  v27 = *(a1 + 16);
  if ((~v27 & 0xF000000000000007) != 0 && ((v27 >> 59) & 0x1E | (v27 >> 2) & 1) == 0xA)
  {
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  v29 = *(v28 + 16);

  v88 = MEMORY[0x1B26FB2D0](v29 >> 1, a3, a4, v74);
  v81 = *(v16 + 56);
  v82 = v16 + 56;
  v81(v86, 1, 1, a3);
  v30 = *(a1 + 16);
  v85 = v7;
  if ((~v30 & 0xF000000000000007) != 0 && ((v30 >> 59) & 0x1E | (v30 >> 2) & 1) == 0xA)
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  v32 = v75;
  v80 = *(v31 + 16);
  if (v80)
  {
    v33 = v21;
    v65 = v15;
    v66 = a4;
    v57 = a1;
    v34 = 0;
    v77 = (v16 + 48);
    v78 = (v58 + 16);
    v64 = (v16 + 32);
    v63 = (v16 + 16);
    v62 = (v76 + 16);
    v61 = (v76 + 56);
    v60 = (v76 + 8);
    v67 = (v16 + 8);
    v35 = (v58 + 8);
    v59 = (v58 + 32);
    v36 = v87;
    v37 = v84;
    v79 = v31;
    v68 = (v58 + 8);
    while (v34 < *(v31 + 16))
    {
      v38 = *(v31 + 8 * v34 + 32);
      type metadata accessor for CRDecoder();
      swift_allocObject();
      swift_retain_n();

      v87 = sub_1ADE0262C(v38, v37);

      v39 = v83;
      (*v78)(v83, v86, v32);
      if ((*v77)(v39, 1, v33) == 1)
      {
        v40 = *v35;
        (*v35)(v39, v32);
        v41 = v35;
        v42 = v71;
        v43 = v85;
        (*(*(*(v72 + 8) + 8) + 8))(v87, v33);
        v85 = v43;
        if (v43)
        {

          v40(v86, v32);
          goto LABEL_21;
        }

        v44 = v33;
        v45 = v86;
        v40(v86, v32);

        v81(v42, 0, 1, v44);
        v46 = v45;
        v33 = v44;
        (*v59)(v46, v42, v32);
        v37 = v84;
        v35 = v41;
      }

      else
      {
        v76 = v38;
        (*v64)(v36, v39, v33);
        v47 = *(*(v73 + 8) + 8);
        v48 = *(v47 + 8);

        v50 = v36;
        v51 = v65;
        v52 = v66;
        v53 = v85;
        v48(v49, v66, v47);
        v85 = v53;
        if (v53)
        {

          (*v67)(v50, v33);
          (*v68)(v86, v75);
LABEL_21:

          return;
        }

        v54 = v50;
        (*v63)(v69, v50, v33);
        v55 = v70;
        (*v62)(v70, v51, v52);
        (*v61)(v55, 0, 1, v52);
        sub_1AE23CB1C();
        sub_1AE23CB8C();

        (*v60)(v51, v52);
        (*v67)(v50, v33);
        v35 = v68;
        v56 = v86;
        v32 = v75;
        (*v68)(v86, v75);
        v81(v56, 1, 1, v33);
        v37 = v84;
        v36 = v54;
      }

      ++v34;
      v31 = v79;
      if (v80 == v34)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    (*(v58 + 8))(v86, v32);
  }
}

uint64_t sub_1AE045A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for Proto_Value._StorageClass();
  inited = swift_initStaticObject();
  sub_1AE23CB1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCCC8, &qword_1AE251C00);
  swift_getWitnessTable();
  sub_1AE0488DC();
  v8 = sub_1AE23CF3C();
  if (!v16)
  {
    v9 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = swift_allocObject();
      v11 = *(inited + 16);
      *(v10 + 16) = v11;
      sub_1ADE51B2C(v11);

      inited = v10;
    }

    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    v13 = v12 | 0x5000000000000000;
    v14 = *(inited + 16);
    *(inited + 16) = v13;
    sub_1ADE51B48(v14);
  }

  return inited;
}

void Dictionary<>.observableDifference(from:with:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v118 = a2;
  v123 = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v100 = sub_1AE23D7CC();
  v135 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v99 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v117 = &v87 - v16;
  v133 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v98 = &v87 - v18;
  v89 = sub_1AE23D7CC();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v20 = &v87 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v22 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v97 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v120 = &v87 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v136 = &v87 - v27;
  v102 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v131 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v107 = &v87 - v31;
  v101 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v106 = &v87 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v34 - 8);
  v132 = &v87 - v35;
  v36 = sub_1AE23CA7C();
  v121 = a1;
  if (v36 != sub_1AE23CA7C())
  {
    return;
  }

  v137 = sub_1AE23C9CC();
  v130 = a7;
  v114 = v20;
  v119 = a4;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v37 = sub_1AE23DC1C();
    v122 = 0;
    v38 = 0;
    v39 = 0;
    v40 = v37 | 0x8000000000000000;
  }

  else
  {
    v41 = -1 << *(a3 + 32);
    v38 = ~v41;
    v42 = *(a3 + 64);
    v122 = a3 + 64;
    v43 = -v41;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    else
    {
      v44 = -1;
    }

    v39 = v44 & v42;
    v40 = a3;
  }

  v134 = (v101 + 32);
  v45 = (v102 + 32);
  v115 = (v22 + 56);
  v87 = v38;
  v46 = (v38 + 64) >> 6;
  v96 = v101 + 16;
  v95 = v102 + 16;
  v113 = (v22 + 48);
  v128 = (v22 + 16);
  v109 = (v102 + 48);
  v110 = (v102 + 8);
  v111 = (v101 + 8);
  v104 = v123 + 40;
  v103 = (v133 + 48);
  v94 = (v133 + 32);
  v93 = (v133 + 16);
  v92 = (v133 + 56);
  v91 = (v133 + 8);
  v108 = (v22 + 8);
  v90 = (v135 + 8);

  v47 = 0;
  v124 = AssociatedTypeWitness;
  v116 = v40;
  v129 = v45;
  v105 = v46;
  v48 = v39;
  v112 = TupleTypeMetadata2;
  while (1)
  {
    v49 = v132;
    v126 = v47;
    v127 = v48;
    if ((v40 & 0x8000000000000000) == 0)
    {
      break;
    }

    v65 = sub_1AE23DC3C();
    v52 = v119;
    if (!v65)
    {
      (*v115)(v49, 1, 1, TupleTypeMetadata2);
LABEL_30:
      sub_1ADDDCE74(v116);
      if (MEMORY[0x1B26FB370]())
      {
      }

      return;
    }

    v66 = v106;
    sub_1AE23DFEC();
    swift_unknownObjectRelease();
    v67 = v107;
    sub_1AE23DFEC();
    swift_unknownObjectRelease();
    v68 = *(TupleTypeMetadata2 + 48);
    (*v134)(v49, v66, v52);
    (*v45)(&v49[v68], v67, a5);
    (*v115)(v49, 0, 1, TupleTypeMetadata2);
    v54 = v126;
    v135 = v127;
LABEL_24:
    v69 = v114;
    if ((*v113)(v49, 1, TupleTypeMetadata2) == 1)
    {
      goto LABEL_30;
    }

    v133 = v54;
    v70 = *(TupleTypeMetadata2 + 48);
    v71 = v136;
    (*v134)(v136, v49, v52);
    v72 = v52;
    v73 = *v45;
    (*v45)(&v71[v70], &v49[v70], a5);
    v74 = v120;
    v125 = *v128;
    v125(v120, v71, TupleTypeMetadata2);
    v75 = v69;
    v76 = a5;
    v77 = *(TupleTypeMetadata2 + 48);
    sub_1AE23CB7C();
    if ((*v109)(v75, 1, a5) == 1)
    {
      (*v108)(v71, v112);
      sub_1ADDDCE74(v116);

      (*(v88 + 8))(v75, v89);
      (*v110)(&v74[v77], a5);
      (*v111)(v74, v72);
      return;
    }

    v78 = v131;
    v73(v131, v75, v76);
    v79 = *v110;
    (*v110)(&v74[v77], v76);
    (*v111)(v74, v72);
    v80 = v117;
    (*(v123 + 40))(v78, v118, v76);
    v81 = v80;
    v82 = v80;
    v83 = v124;
    if ((*v103)(v82, 1, v124) == 1)
    {
      v79(v78, v76);
      TupleTypeMetadata2 = v112;
      (*v108)(v71, v112);
      (*v90)(v81, v100);
    }

    else
    {
      v84 = v98;
      (*v94)(v98, v81, v83);
      v85 = v97;
      TupleTypeMetadata2 = v112;
      v125(v97, v136, v112);
      v127 = *(TupleTypeMetadata2 + 48);
      v86 = v99;
      (*v93)(v99, v84, v83);
      (*v92)(v86, 0, 1, v83);
      sub_1AE23CB1C();
      sub_1AE23CB8C();
      (*v91)(v84, v83);
      v79(v131, v76);
      (*v108)(v136, TupleTypeMetadata2);
      v79(&v85[v127], v76);
    }

    v47 = v133;
    v48 = v135;
    a5 = v76;
    v40 = v116;
    v45 = v129;
    v46 = v105;
  }

  v50 = v48;
  v51 = v47;
  v52 = v119;
  if (v48)
  {
LABEL_20:
    v135 = (v50 - 1) & v50;
    v56 = __clz(__rbit64(v50)) | (v51 << 6);
    v57 = a5;
    v58 = v101;
    v59 = v106;
    (*(v101 + 16))(v106, *(v40 + 48) + *(v101 + 72) * v56, v119);
    v60 = *(v40 + 56);
    v61 = v102;
    v62 = v107;
    (*(v102 + 16))(v107, v60 + *(v102 + 72) * v56, v57);
    v63 = *(TupleTypeMetadata2 + 48);
    v64 = *(v58 + 32);
    a5 = v57;
    v49 = v132;
    v64(v132, v59, v52);
    v45 = v129;
    (*(v61 + 32))(&v49[v63], v62, a5);
    (*v115)(v49, 0, 1, TupleTypeMetadata2);
    v54 = v51;
    goto LABEL_24;
  }

  if (v46 <= v47 + 1)
  {
    v53 = v47 + 1;
  }

  else
  {
    v53 = v46;
  }

  v54 = v53 - 1;
  v55 = v47;
  while (1)
  {
    v51 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      break;
    }

    if (v51 >= v46)
    {
      (*v115)(v132, 1, 1, TupleTypeMetadata2);
      v135 = 0;
      goto LABEL_24;
    }

    v50 = *(v122 + 8 * v51);
    ++v55;
    if (v50)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

void Dictionary<>.visitReferences(_:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v67 = a7;
  v68 = a5;
  v86 = a4;
  v65 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v85 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v66 = v63 - v12;
  v64 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v71 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v63 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v76 = sub_1AE23D7CC();
  v20 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v75 = v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v63 - v23;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v25 = sub_1AE23DC1C();
    v26 = 0;
    v27 = 0;
    v78 = v25 | 0x8000000000000000;
    v79 = 0;
  }

  else
  {
    v28 = -1 << *(a2 + 32);
    v26 = ~v28;
    v29 = *(a2 + 64);
    v78 = a2;
    v79 = a2 + 64;
    v30 = -v28;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v27 = v31 & v29;
  }

  v83 = (v64 + 32);
  v82 = (v65 + 32);
  v73 = TupleTypeMetadata2 - 8;
  v63[1] = v26;
  v32 = (v26 + 64) >> 6;
  v63[3] = v64 + 16;
  v63[2] = v65 + 16;
  v72 = (v20 + 32);
  v69 = (v65 + 8);
  v70 = (v64 + 8);

  v33 = 0;
  v34 = v71;
  v77 = v18;
  v74 = v24;
  v35 = v79;
  v36 = v27;
  while (1)
  {
    v80 = v33;
    v81 = v36;
    if ((v78 & 0x8000000000000000) == 0)
    {
      break;
    }

    v47 = sub_1AE23DC3C();
    v39 = v86;
    if (v47)
    {
      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      v46 = v66;
      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      v38 = v80;
      v84 = v81;
      goto LABEL_21;
    }

    v50 = 1;
    v41 = v80;
    v84 = v81;
    v34 = v71;
    v49 = v75;
LABEL_22:
    v51 = *(TupleTypeMetadata2 - 8);
    (*(v51 + 56))(v49, v50, 1, TupleTypeMetadata2);
    v52 = v74;
    (*v72)();
    if ((*(v51 + 48))(v52, 1, TupleTypeMetadata2) == 1)
    {
      sub_1ADDDCE74(v78);
      return;
    }

    v53 = *(TupleTypeMetadata2 + 48);
    (*v83)(v34, v52, a3);
    (*v82)(v85, &v52[v53], v39);
    v54 = a3;
    v56 = a1[3];
    v55 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v56);
    if ((*(v55 + 8))(v56, v55))
    {
      v62 = v78;
LABEL_31:
      sub_1ADDDCE74(v62);
      (*v69)(v85, v86);
      (*v70)(v34, v54);
      return;
    }

    (*(*(v68 + 8) + 48))(a1, v54);
    v57 = a1[3];
    v58 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v57);
    v59 = (*(v58 + 8))(v57, v58);
    v35 = v79;
    if (v59)
    {
      v62 = v78;
      goto LABEL_31;
    }

    v60 = v85;
    v61 = v86;
    (*(*(v67 + 8) + 48))(a1, v86);
    (*v69)(v60, v61);
    (*v70)(v34, v54);
    v33 = v41;
    v36 = v84;
    a3 = v54;
    v18 = v77;
  }

  v37 = v36;
  v38 = v33;
  v39 = v86;
  if (v36)
  {
LABEL_18:
    v84 = (v37 - 1) & v37;
    v43 = __clz(__rbit64(v37)) | (v38 << 6);
    v44 = v78;
    (*(v64 + 16))(v18, *(v78 + 48) + *(v64 + 72) * v43, a3);
    v45 = *(v44 + 56) + *(v65 + 72) * v43;
    v46 = v66;
    (*(v65 + 16))(v66, v45, v39);
LABEL_21:
    v48 = *(TupleTypeMetadata2 + 48);
    v49 = v75;
    (*v83)(v75, v18, a3);
    (*v82)(&v49[v48], v46, v39);
    v50 = 0;
    v41 = v38;
    v34 = v71;
    goto LABEL_22;
  }

  if (v32 <= v33 + 1)
  {
    v40 = v33 + 1;
  }

  else
  {
    v40 = v32;
  }

  v41 = v40 - 1;
  v42 = v33;
  while (1)
  {
    v38 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v38 >= v32)
    {
      v84 = 0;
      v50 = 1;
      v49 = v75;
      goto LABEL_22;
    }

    v37 = *(v35 + 8 * v38);
    ++v42;
    if (v37)
    {
      v18 = v77;
      goto LABEL_18;
    }
  }

  __break(1u);
}

void Dictionary<>.copy(renamingReferences:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v74 = a5;
  v75 = a7;
  v73 = a1;
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v72 = &v62 - v11;
  v64 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v71 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v92 = &v62 - v15;
  v63 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v70 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v69 = &v62 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v91 = &v62 - v21;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v78 = sub_1AE23D7CC();
  v23 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v83 = &v62 - v26;
  v94 = sub_1AE23C9CC();
  sub_1AE23CA7C();
  v89 = a4;
  v90 = a3;
  v68 = sub_1AE23CB1C();
  sub_1AE23CA3C();
  if ((a2 & 0xC000000000000001) != 0)
  {
    v27 = sub_1AE23DC1C();
    v28 = 0;
    v29 = 0;
    v81 = v27 | 0x8000000000000000;
    v82 = 0;
  }

  else
  {
    v30 = -1 << *(a2 + 32);
    v28 = ~v30;
    v31 = *(a2 + 64);
    v81 = a2;
    v82 = a2 + 64;
    v32 = -v30;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v29 = v33 & v31;
  }

  v87 = (v63 + 32);
  v86 = (v64 + 32);
  v80 = TupleTypeMetadata2;
  v77 = TupleTypeMetadata2 - 8;
  v62 = v28;
  v93 = (v28 + 64) >> 6;
  v84 = (v64 + 16);
  v85 = (v63 + 16);
  v76 = (v23 + 32);
  v67 = (v64 + 56);
  v66 = (v64 + 8);
  v65 = (v63 + 8);

  v34 = 0;
  v36 = v81;
  v35 = v82;
  if ((v81 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  v37 = v29;
  v38 = v34;
  v40 = v79;
  v39 = v80;
  if (v29)
  {
LABEL_16:
    v88 = (v37 - 1) & v37;
    v45 = __clz(__rbit64(v37)) | (v38 << 6);
    v46 = v36;
    (*(v63 + 16))(v91, *(v36 + 48) + *(v63 + 72) * v45, v90);
    (*(v64 + 16))(v92, *(v46 + 56) + *(v64 + 72) * v45, v89);
LABEL_19:
    v48 = *(v39 + 48);
    (*v87)(v40, v91, v90);
    (*v86)(&v40[v48], v92, v89);
    v49 = 0;
    v42 = v38;
    goto LABEL_20;
  }

  if (v93 <= v34 + 1)
  {
    v41 = v34 + 1;
  }

  else
  {
    v41 = v93;
  }

  v42 = v41 - 1;
  v43 = v34;
  v44 = v83;
  while (1)
  {
    v38 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
      return;
    }

    if (v38 >= v93)
    {
      break;
    }

    v37 = *(v35 + 8 * v38);
    ++v43;
    if (v37)
    {
      goto LABEL_16;
    }
  }

  v88 = 0;
  v49 = 1;
  while (1)
  {
    v50 = *(v39 - 8);
    (*(v50 + 56))(v40, v49, 1, v39);
    (*v76)(v44, v40, v78);
    if ((*(v50 + 48))(v44, 1, v39) == 1)
    {
      break;
    }

    v51 = *(v39 + 48);
    v53 = v90;
    v52 = v91;
    (*v87)(v91, v44, v90);
    v54 = v92;
    v55 = v89;
    (*v86)(v92, &v44[v51], v89);
    v56 = v69;
    v57 = v73;
    (*(*(v74 + 8) + 24))(v73, v53);
    v58 = v71;
    (*(*(v75 + 8) + 24))(v57, v55);
    (*v85)(v70, v56, v53);
    v59 = v72;
    (*v84)(v72, v58, v55);
    (*v67)(v59, 0, 1, v55);
    sub_1AE23CB8C();
    v60 = *v66;
    (*v66)(v58, v55);
    v61 = *v65;
    (*v65)(v56, v53);
    v60(v54, v55);
    v61(v52, v53);
    v34 = v42;
    v29 = v88;
    v36 = v81;
    v35 = v82;
    if ((v81 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    v47 = sub_1AE23DC3C();
    v40 = v79;
    v39 = v80;
    if (v47)
    {
      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      v38 = v34;
      v88 = v29;
      goto LABEL_19;
    }

    v49 = 1;
    v42 = v34;
    v88 = v29;
LABEL_20:
    v44 = v83;
  }

  sub_1ADDDCE74(v81);
}

uint64_t Dictionary<>.copy(renamingReferences:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v13 = a1;
  }

  else
  {
    v13 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v17 = v13;

  Dictionary<>.copy(renamingReferences:)(&v17, a2, a3, a4, a5, a6, a7);
  v15 = v14;

  return v15;
}

uint64_t Dictionary<>.needToFinalizeTimestamps()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1AE23CB1C();
  swift_getWitnessTable();
  return sub_1AE23CF4C() & 1;
}

uint64_t sub_1AE047A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((*(*(a4 + 8) + 56))(a2))
  {
    return 1;
  }

  swift_getTupleTypeMetadata2();
  return (*(*(a6 + 8) + 56))(a3) & 1;
}

uint64_t Dictionary<>.finalizeTimestamps(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v75 = a1;
  v9 = a2[3];
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v74 = v60 - v11;
  v63 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2[2];
  v62 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v73 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v60 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v79 = sub_1AE23D7CC();
  v86 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v81 = v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v77 = a4;
  v78 = v60 - v23;
  v24 = *v4;
  v25 = a2[4];
  v76 = a3;
  result = Dictionary<>.needToFinalizeTimestamps()(v24, v15, v9, a3, v25, a4);
  if ((result & 1) == 0)
  {
    return result;
  }

  v87 = sub_1AE23C9CC();
  sub_1AE23CA7C();
  result = sub_1AE23CA3C();
  v27 = v24;
  v61 = v5;
  v68 = a2;
  if ((v24 & 0xC000000000000001) != 0)
  {
    result = sub_1AE23DC1C();
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v27 = result | 0x8000000000000000;
  }

  else
  {
    v31 = -1 << *(v24 + 32);
    v28 = v24 + 64;
    v29 = ~v31;
    v32 = -v31;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v30 = v33 & *(v24 + 64);
  }

  v34 = v81;
  v35 = 0;
  v36 = (v62 + 32);
  v85 = (v63 + 32);
  v71 = TupleTypeMetadata2 - 8;
  v60[1] = v29;
  v37 = (v29 + 64) >> 6;
  v83 = (v62 + 16);
  v82 = (v63 + 16);
  v70 = (v86 + 32);
  v66 = (v63 + 56);
  v65 = (v63 + 8);
  v64 = (v62 + 8);
  v72 = v27;
  for (i = v37; ; v37 = i)
  {
    v69 = v30;
    v80 = v35;
    if ((v27 & 0x8000000000000000) == 0)
    {
      break;
    }

    v51 = sub_1AE23DC3C();
    v40 = TupleTypeMetadata2;
    if (v51)
    {
      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      v39 = v80;
      v34 = v81;
      v86 = v30;
      goto LABEL_21;
    }

    v53 = 1;
    v59 = v30;
    v42 = v80;
    v34 = v81;
    v86 = v59;
LABEL_22:
    v54 = *(v40 - 8);
    (*(v54 + 56))(v34, v53, 1, v40);
    v55 = v78;
    (*v70)();
    if ((*(v54 + 48))(v55, 1, v40) == 1)
    {
      result = sub_1ADDDCE74(v72);
      *v61 = v87;
      return result;
    }

    v56 = *(v40 + 48);
    (*v36)(v20, v55, v15);
    (*v85)(v14, &v55[v56], v9);
    v57 = v75;
    (*(*(v76 + 8) + 64))(v75, v15);
    (*(*(v77 + 8) + 64))(v57, v9);
    (*v83)(v73, v20, v15);
    v58 = v74;
    (*v82)(v74, v14, v9);
    (*v66)(v58, 0, 1, v9);
    v34 = v81;
    sub_1AE23CB8C();
    (*v65)(v14, v9);
    result = (*v64)(v20, v15);
    v35 = v42;
    v30 = v86;
    v27 = v72;
  }

  v38 = v30;
  v39 = v35;
  v40 = TupleTypeMetadata2;
  if (v30)
  {
LABEL_18:
    v86 = (v38 - 1) & v38;
    v44 = __clz(__rbit64(v38)) | (v39 << 6);
    v45 = v34;
    v46 = v36;
    v47 = v14;
    v48 = v28;
    v49 = v27;
    (*(v62 + 16))(v20, *(v27 + 48) + *(v62 + 72) * v44, v15);
    v50 = *(v49 + 56);
    v28 = v48;
    v14 = v47;
    v36 = v46;
    v34 = v45;
    v40 = TupleTypeMetadata2;
    (*(v63 + 16))(v14, v50 + *(v63 + 72) * v44, v9);
LABEL_21:
    v52 = *(v40 + 48);
    (*v36)(v34, v20, v15);
    (*v85)(&v34[v52], v14, v9);
    v53 = 0;
    v42 = v39;
    goto LABEL_22;
  }

  if (v37 <= v35 + 1)
  {
    v41 = v35 + 1;
  }

  else
  {
    v41 = v37;
  }

  v42 = v41 - 1;
  v43 = v35;
  while (1)
  {
    v39 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v39 >= v37)
    {
      v86 = 0;
      v53 = 1;
      goto LABEL_22;
    }

    v38 = *(v28 + 8 * v39);
    ++v43;
    if (v38)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t static Dictionary<>.canContainAssets.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(*(a3 + 8) + 72))())
  {
    return 1;
  }

  else
  {
    return (*(*(a5 + 8) + 72))(a2) & 1;
  }
}

uint64_t static Dictionary<>.canContainReferences.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(*(a5 + 8) + 80))(a2))
  {
    return 1;
  }

  else
  {
    return (*(*(a3 + 8) + 80))(a1) & 1;
  }
}

uint64_t sub_1AE0483AC@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Dictionary<>.copy(renamingReferences:)(a1, *v4, a2[2], a2[3], *(a3 - 8), a2[4], *(a3 - 16));
  *a4 = result;
  return result;
}

unint64_t sub_1AE048480@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  result = Dictionary<>.init(from:)(a1, a2[2], a2[3], *(a3 - 8), a2[4], *(a3 - 16));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

unint64_t Dictionary<>.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    *(swift_initStackObject() + 16) = a1;
    sub_1ADE660B0(a2, a3, a4, a5, a6);
    v13 = v12;
  }

  else
  {
    v13 = 0x80000001AE25FB70;
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v14 = 0xD000000000000017;
    *(v14 + 8) = 0x80000001AE25FB70;
    *(v14 + 16) = 0;
    swift_willThrow();
  }

  return v13;
}

double Dictionary<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1ADE71C08(a1, a2, a3);
  if (!v7)
  {

    sub_1ADE6DCDC(a2, a3, a4, a5, a6, a7);
  }

  return result;
}

void sub_1AE048688(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v19 = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA290, &qword_1AE241D78);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AE241900;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  v18[7] = a6;
  v18[8] = a7;
  v18[9] = a1;
  v18[10] = a2;
  v17 = sub_1ADE6B938(sub_1AE048940);
  if (v8)
  {
    *(v16 + 16) = 0;
  }

  else
  {
    v18[1] = v18;
    *(v16 + 32) = v17;
    MEMORY[0x1EEE9AC00](v17);
    *(v16 + 40) = sub_1ADE6B938(sub_1AE048988);
    *v19 = v16;
  }
}

uint64_t sub_1AE048818(uint64_t a1, uint64_t a2, __int128 *a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AE048868(uint64_t a1, uint64_t a2, __int128 *a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AE0488DC()
{
  result = qword_1EB5BCF58;
  if (!qword_1EB5BCF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BCCC8, &qword_1AE251C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BCF58);
  }

  return result;
}

uint64_t sub_1AE048988()
{
  v1 = v0[3];
  v2 = v0[6];
  v3 = v0[8];
  swift_getTupleTypeMetadata2();
  return (*(*(*(v2 + 8) + 8) + 16))(v3, v1);
}

void sub_1AE048A4C(void *a1, uint64_t a2)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCF60, &unk_1AE252450);
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v23 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE048F10(v7, v8, v9);
  v25 = v6;
  sub_1AE23E3CC();
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 64);
  v13 = (v10 + 63) >> 6;

  v17 = 0;
  if (v12)
  {
    while (1)
    {
      v18 = v17;
LABEL_8:
      v19 = __clz(__rbit64(v12)) | (v18 << 6);
      v20 = (*(a2 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      v29 = *(*(a2 + 56) + 8 * v19);
      v27 = v21;
      v28 = v22;
      sub_1AE048F64(v14, v15, v16);

      sub_1AE23DD5C();
      if (v2)
      {
        break;
      }

      v12 &= v12 - 1;

      v17 = v18;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    (*(v24 + 8))(v25, v26);

LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v13)
      {
        (*(v24 + 8))(v25, v26);
        goto LABEL_12;
      }

      v12 = *(a2 + 64 + 8 * v18);
      ++v17;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t CRStruct_0.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCF60, &unk_1AE252450);
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v8 = &v27 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE048F10(v9, v10, v11);
  v29 = v8;
  sub_1AE23E3CC();
  result = (*(*(a3 + 8) + 24))(a2);
  v15 = result;
  v16 = 0;
  v17 = result + 64;
  v18 = 1 << *(result + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(result + 64);
  v21 = (v18 + 63) >> 6;
  if (v20)
  {
    while (1)
    {
      v22 = v16;
LABEL_8:
      v23 = __clz(__rbit64(v20)) | (v22 << 6);
      v24 = (*(v15 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v33 = *(*(v15 + 56) + 8 * v23);
      v31 = v25;
      v32 = v26;
      sub_1AE048F64(result, v13, v14);

      sub_1AE23DD5C();
      if (v3)
      {
        break;
      }

      v20 &= v20 - 1;

      v16 = v22;
      if (!v20)
      {
        goto LABEL_5;
      }
    }

    (*(v28 + 8))(v29, v30);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v22 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v22 >= v21)
      {

        return (*(v28 + 8))(v29, v30);
      }

      v20 = *(v17 + 8 * v22);
      ++v16;
      if (v20)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1AE048F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BCF68;
  if (!qword_1EB5BCF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BCF68);
  }

  return result;
}

unint64_t sub_1AE048F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BCF70[0];
  if (!qword_1EB5BCF70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5BCF70);
  }

  return result;
}

uint64_t CRStruct_0.newRefs(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  v5 = *(v4 + 24);
  v6 = v5(a2, v4);
  v7 = v5(a2, v4);
  sub_1AE2200E4(v7, v6);
  v9 = v8;

  return v9;
}

uint64_t CRStruct_0.hasDelta(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  v5 = *(v4 + 24);
  v6 = v5(a2, v4);
  v7 = v5(a2, v4);
  sub_1AE21FE14(v7, v6);
  v9 = v8;

  return v9 & 1;
}

void *sub_1AE049114@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AE156B60(*v2, a1);
  *a2 = result;
  return result;
}

uint64_t CRStruct_0.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a2 - 8) + 16))(a4, v4, a2);
  v8 = *(a3 + 8);
  v9 = (*(v8 + 24))(a2, v8);
  v10 = sub_1AE156B60(v9, a1);

  return (*(v8 + 32))(v10, a2, v8);
}

uint64_t sub_1AE049230@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v8 = v5;

  v6 = sub_1AE156B60(v4, &v8);

  *a2 = v6;
  return result;
}

uint64_t CRStruct_0.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!a1)
  {
    a1 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v13 = a1;
  (*(*(a2 - 8) + 16))(a4, v4, a2);
  v8 = *(a3 + 8);
  v9 = *(v8 + 24);

  v10 = v9(a2, v8);
  v11 = sub_1AE156B60(v10, &v13);

  return (*(v8 + 32))(v11, a2, v8);
}

uint64_t CRStruct_0.observableDifference(from:with:)@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 56);

  return v4(a2, 1, 1, AssociatedTypeWitness);
}

uint64_t CRStruct_0.visitReferences(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*(a3 + 8) + 24))(a2);
  sub_1ADDDC764(a1, v4);
}

void *sub_1AE0494B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AE21F75C(*a1, &v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 2) = v4;
  return result;
}

uint64_t CRStruct_0.merge(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 8);
  v6 = (*(v5 + 24))(a1, v5);
  v7 = (*(v5 + 40))(v9, a1, v5);
  sub_1AE21F75C(v6, &v10);

  v7(v9, 0);
  LOWORD(v6) = v10;
  LOBYTE(v7) = v11;
  result = (*(v5 + 64))(a1, v5);
  *a3 = v6;
  *(a3 + 2) = v7;
  return result;
}

uint64_t sub_1AE04965C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1AE21FE14(*a2, *a1);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    sub_1AE21FE14(v2, v3);
    v5 = v6 ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_1AE0496AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t x1_0@<X1>, uint64_t a4@<X2>)
{
  result = sub_1AE1570D4(a1, x1_0, a4);
  if (!v5)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1AE0496D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;

    sub_1ADDE78C8();
    v7 = *(v6 + 16);
    if ((~v7 & 0xF000000000000007) != 0 && (v7 & 0xF000000000000000) == 0x3000000000000000)
    {
      v13 = (v7 & 0xFFFFFFFFFFFFFFFLL);
      v9 = v13[2];
      v10 = v13[3];
      v11 = v13[4];
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
      v10 = MEMORY[0x1E69E7CC0];
      v11 = MEMORY[0x1E69E7CC0];
    }

    sub_1AE207790(v9, v10, v11, a1);
    v3 = v14;
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v12 = 0xD000000000000014;
    *(v12 + 8) = 0x80000001AE25FB50;
    *(v12 + 16) = 0;
    swift_willThrow();
  }

  return v3;
}

void CRStruct_0.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v10 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;

    sub_1ADDE78C8();
    sub_1AE049F44(v16, a1, a2, a4, v14);

    if (!v4)
    {
      (*(v9 + 32))(a3, v14, a2);
    }
  }

  else
  {
    sub_1ADE42E40(v10, v11, v12);
    swift_allocError();
    *v17 = 0xD000000000000014;
    *(v17 + 8) = 0x80000001AE25FB50;
    *(v17 + 16) = 0;
    swift_willThrow();
  }
}

double sub_1AE0499EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ADDFCC74(a1, a2, a3);
  if (!v3)
  {
    v8 = v6;
    type metadata accessor for CREncoder.CRDTKeyedContainer();
    inited = swift_initStackObject();
    *(inited + 16) = v8;
    *(inited + 24) = a1;
    swift_beginAccess();
    swift_retain_n();

    sub_1ADDFCE90(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
    swift_endAccess();

    sub_1AE04A4B8(inited, a2);
    swift_setDeallocating();
  }

  return result;
}

uint64_t CRStruct_0.minEncodingVersion.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = (*(*(a2 + 8) + 24))(a1);
  sub_1AE21FFB0(v4, a3);
}

uint64_t sub_1AE049B5C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1AE049B8C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1AE049BA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AE23DD9C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1AE049BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AE048F10(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1AE049C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AE048F10(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void CRStruct_Base.init(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 48))(a2, a3);
}

Swift::Void __swiftcall CRStruct_Base.merge(additionalFields:)(Swift::OpaquePointer additionalFields)
{
  v3 = (*(v1 + 40))(v4);
  sub_1AE21F75C(additionalFields._rawValue, v5);
  v3(v4, 0);
}

Coherence::MergeResult __swiftcall CRStruct_Base.merge(additionalFields:)(Swift::OpaquePointer additionalFields)
{
  v4 = v2;
  v5 = (*(v1 + 40))(v7);
  sub_1AE21F75C(additionalFields._rawValue, v4);
  return v5(v7, 0);
}

Swift::Bool __swiftcall CRStruct_Base.additionalFieldsHasDelta(from:)(Swift::OpaquePointer from)
{
  v3 = (*(v1 + 24))();
  sub_1AE21FE14(from._rawValue, v3);
  LOBYTE(from._rawValue) = v4;

  return from._rawValue & 1;
}

void *CRStruct_Base.copyAdditionalFields(renamingReferences:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 24))(a2, a3);
  v5 = sub_1AE156B60(v4, a1);

  return v5;
}

void *CRStruct_Base.copyAdditionalFields(renamingReferences:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v8 = v5;

  v6 = CRStruct_Base.copyAdditionalFields(renamingReferences:)(&v8, a2, a3);

  return v6;
}

uint64_t CRStruct_Base.additionalFieldsMinEncodingVersion.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = (*(a2 + 24))(a1);
  sub_1AE21FFB0(v4, a3);
}

double sub_1AE049F44@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 16);
  if ((~v8 & 0xF000000000000007) != 0 && (v8 & 0xF000000000000000) == 0x3000000000000000)
  {
    v13 = (v8 & 0xFFFFFFFFFFFFFFFLL);
    v10 = v13[2];
    v11 = v13[3];
    v12 = v13[4];
    v14 = a5;

    a5 = v14;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7CC0];
    v12 = MEMORY[0x1E69E7CC0];
  }

  sub_1AE04A01C(v10, v11, v12, a2, a3, a4, a5);

  return result;
}

void sub_1AE04A01C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v57 = a4;
  v11 = *(a6 + 8);
  v12 = *(v11 + 48);
  v54 = a7;
  v12(a5, v11);
  v13 = *(v11 + 16);
  v55 = a5;
  v56 = v13(a5, v11);
  v14 = *(a1 + 16);

  if (v14)
  {
    v15 = 0;
    v52 = a2 + 32;
    v53 = a1 + 32;
    v51 = v11;
    v49 = v11 + 40;
    v46 = v14 - 1;
    v16 = MEMORY[0x1E69E7CC8];
    v47 = a3;
    v50 = v14;
LABEL_3:
    v48 = v16;
    while (v15 < *(a1 + 16))
    {
      if (v15 >= *(a2 + 16))
      {
        goto LABEL_25;
      }

      v17 = *(v53 + 8 * v15);
      v18 = *(v52 + 8 * v15);
      type metadata accessor for CRDecoder();
      swift_allocObject();

      v19 = v57;

      v20 = sub_1ADDE77B4(v18, v19);

      v22 = *(v20 + 32);
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = v17 >= v23;
      }

      else
      {
        v24 = 1;
      }

      if (v24)
      {

        v40 = swift_bridgeObjectRelease_n();
        sub_1ADE42E40(v40, v41, v42);
        v43 = swift_allocError();
        *v44 = 0xD000000000000015;
        *(v44 + 8) = 0x80000001AE25FCF0;
        *(v44 + 16) = 0;
        v59 = v43;
        swift_willThrow();

LABEL_20:
        (*(*(v55 - 8) + 8))(v54);
        return;
      }

      v25 = v22 + 16 * v17;
      v26 = *(v25 + 32);
      v27 = *(v25 + 40);
      v61[0] = v26;
      v61[1] = v27;
      MEMORY[0x1EEE9AC00](v21);
      v45[2] = v61;

      v28 = v59;
      if (sub_1ADDE8768(sub_1AE162B7C, v45, v56))
      {
        v59 = v28;
        v37 = v48;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61[0] = v37;
        sub_1ADDE88A8(v20, v26, v27, isUniquelyReferenced_nonNull_native);

        v16 = v61[0];
        if (v46 == v15++)
        {
          goto LABEL_21;
        }

        goto LABEL_3;
      }

      AnyCRDT.init(from:)(v29, &v62);
      v59 = v28;
      if (v28)
      {

        swift_bridgeObjectRelease_n();
        goto LABEL_20;
      }

      ++v15;
      v30 = a2;
      v31 = a1;
      v32 = v62;
      v58 = (*(v51 + 40))(v61, v55);
      v34 = v33;
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v60 = *v34;
      *v34 = 0x8000000000000000;
      v36 = v32;
      a1 = v31;
      a2 = v30;
      sub_1ADEBF524(v36, v26, v27, v35);

      *v34 = v60;

      v58(v61, 0);

      if (v50 == v15)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_21:

    swift_bridgeObjectRelease_n();
    if (v59)
    {
      (*(*(v55 - 8) + 8))(v54);
    }
  }
}

void sub_1AE04A4B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;
  v39 = a2;

  v11 = 0;
  v36 = v9;
  v37 = v5;
  v38 = a1;
  while (v8)
  {
LABEL_10:
    v16 = __clz(__rbit64(v8)) | (v11 << 6);
    v17 = (*(v39 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    v43 = *(*(v39 + 56) + 8 * v16);
    MEMORY[0x1EEE9AC00](v10);
    v35[2] = &v43;
    v35[3] = a1;

    sub_1ADE6B9FC(sub_1AE162BA0, v35);
    if (v3)
    {

      return;
    }

    v20 = *(a1 + 16);
    v40 = sub_1ADE66494(v19, v18);

    swift_beginAccess();
    v21 = *(*(v20 + 24) + 16);
    v22 = (~v21 & 0xF000000000000007) != 0 && (v21 & 0xF000000000000000) == 0x3000000000000000;
    v23 = MEMORY[0x1E69E7CC0];
    v24 = MEMORY[0x1E69E7CC0];
    v25 = MEMORY[0x1E69E7CC0];
    if (v22)
    {
      v26 = (v21 & 0xFFFFFFFFFFFFFFFLL);
      v24 = v26[2];
      v25 = v26[3];
      v23 = v26[4];
    }

    v42 = v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = 0;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_1ADDF69D0(0, *(v24 + 2) + 1, 1, v24);
    }

    v29 = *(v24 + 2);
    v28 = *(v24 + 3);
    if (v29 >= v28 >> 1)
    {
      v24 = sub_1ADDF69D0((v28 > 1), v29 + 1, 1, v24);
    }

    *(v24 + 2) = v29 + 1;
    *&v24[8 * v29 + 32] = v40;

    MEMORY[0x1B26FB860](v30);
    if (*(v42 + 16) >= *(v42 + 24) >> 1)
    {
      sub_1AE23D03C();
    }

    sub_1AE23D09C();
    v31 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = *(v20 + 24);
      type metadata accessor for Proto_CRDT._StorageClass();
      v33 = swift_allocObject();
      *(v33 + 16) = 0xF000000000000007;
      v34 = *(v32 + 16);
      *(v33 + 16) = v34;
      *(v20 + 24) = v33;
      sub_1ADE5215C(v34);
    }

    v8 &= v8 - 1;
    v12 = *(v20 + 24);
    v13 = swift_allocObject();
    *(v13 + 16) = v24;
    *(v13 + 24) = v31;
    *(v13 + 32) = v23;
    v14 = *(v12 + 16);
    *(v12 + 16) = v13 | 0x3000000000000000;
    swift_endAccess();
    sub_1ADE52174(v14);

    v3 = v41;
    v5 = v37;
    a1 = v38;
    v9 = v36;
  }

  while (1)
  {
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v15 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v15);
    ++v11;
    if (v8)
    {
      v11 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void CRStruct_0.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v41 = a1;
  v6 = *(a3 + 8);
  (*(v6 + 56))(a2, v6);
  v7 = (*(v6 + 24))(a2, v6);
  v8 = 0;
  v10 = v7 + 64;
  v9 = *(v7 + 64);
  v42 = v7;
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v9;
  v14 = (v11 + 63) >> 6;
  v39 = v14;
  v40 = v7 + 64;
  while (v13)
  {
    v18 = v41;
LABEL_12:
    v20 = __clz(__rbit64(v13)) | (v8 << 6);
    v21 = (*(v42 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    v46 = *(*(v42 + 56) + 8 * v20);
    MEMORY[0x1EEE9AC00](v7);
    v38[2] = &v46;
    v38[3] = v18;

    sub_1ADE6B9FC(sub_1AE157230, v38);
    v44 = v4;
    if (v4)
    {

      return;
    }

    v24 = *(v18 + 16);
    v43 = sub_1ADE66494(v23, v22);

    swift_beginAccess();
    v25 = *(*(v24 + 24) + 16);
    v26 = (~v25 & 0xF000000000000007) != 0 && (v25 & 0xF000000000000000) == 0x3000000000000000;
    v27 = MEMORY[0x1E69E7CC0];
    v28 = MEMORY[0x1E69E7CC0];
    v29 = MEMORY[0x1E69E7CC0];
    if (v26)
    {
      v30 = (v25 & 0xFFFFFFFFFFFFFFFLL);
      v28 = v30[2];
      v29 = v30[3];
      v27 = v30[4];
    }

    v45 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1ADDF69D0(0, *(v28 + 2) + 1, 1, v28);
    }

    v32 = *(v28 + 2);
    v31 = *(v28 + 3);
    if (v32 >= v31 >> 1)
    {
      v28 = sub_1ADDF69D0((v31 > 1), v32 + 1, 1, v28);
    }

    *(v28 + 2) = v32 + 1;
    *&v28[8 * v32 + 32] = v43;

    MEMORY[0x1B26FB860](v33);
    if (*(v45 + 16) >= *(v45 + 24) >> 1)
    {
      sub_1AE23D03C();
    }

    sub_1AE23D09C();
    v34 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = *(v24 + 24);
      type metadata accessor for Proto_CRDT._StorageClass();
      v36 = swift_allocObject();
      *(v36 + 16) = 0xF000000000000007;
      v37 = *(v35 + 16);
      *(v36 + 16) = v37;
      *(v24 + 24) = v36;
      sub_1ADE5215C(v37);
    }

    v13 &= v13 - 1;
    v15 = *(v24 + 24);
    v16 = swift_allocObject();
    *(v16 + 16) = v28;
    *(v16 + 24) = v34;
    *(v16 + 32) = v27;
    v17 = *(v15 + 16);
    *(v15 + 16) = v16 | 0x3000000000000000;
    swift_endAccess();
    sub_1ADE52174(v17);

    v4 = v44;
    v14 = v39;
    v10 = v40;
  }

  v18 = v41;
  while (1)
  {
    v19 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v19 >= v14)
    {

      return;
    }

    v13 = *(v10 + 8 * v19);
    ++v8;
    if (v13)
    {
      v8 = v19;
      goto LABEL_12;
    }
  }

  __break(1u);
}

double sub_1AE04ABE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, uint64_t, uint64_t)@<X4>, uint64_t (*a6)(void *, __n128)@<X5>, void *a7@<X8>)
{
  v8 = a5;
  v12 = *(a1 + 16);
  if ((~v12 & 0xF000000000000007) != 0 && (v12 & 0xF000000000000000) == 0x3000000000000000)
  {
    v17 = (v12 & 0xFFFFFFFFFFFFFFFLL);
    v14 = v17[2];
    v15 = v17[3];
    v16 = v17[4];
    v20 = a7;

    v8 = a5;
    a7 = v20;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v16 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADDE7FC8(v14, v15, v16, a2, a3, a4, v8, a6, a7);

  return result;
}

uint64_t CRStruct_2.encodeFields(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30[7] = a1;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  v26 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v24 = v23 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v23 - v12;
  (*(v6 + 48))(v30, a2, v6, v11);
  v14 = v30[0];
  v15 = v30[1];
  v23[0] = v30[3];
  v27 = v30[5];
  v28 = v30[4];

  v23[1] = v4;
  swift_getAtKeyPath();

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = v15;
  v18 = v29;
  sub_1ADDFD59C(v13, v14, v17, v9, *(*(AssociatedConformanceWitness + 16) + 8));
  if (v18)
  {

    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    (*(v10 + 8))(v13, v9);

    v20 = v24;
    swift_getAtKeyPath();

    v21 = v26;
    v22 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v20, v23[0], v28, v21, *(*(v22 + 16) + 8));

    return (*(v25 + 8))(v20, v21);
  }
}

uint64_t CRStruct_3.encodeFields(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42[11] = a1;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v28 = &v26 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v26 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v37 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  (*(v6 + 64))(v42, a2, v6, v11);
  v14 = v42[0];
  v15 = v42[1];
  v16 = v42[2];
  v31 = v42[3];
  v36 = v42[4];
  v38 = v42[5];
  v27 = v42[6];
  v40 = v42[7];
  v17 = v42[8];

  v35 = v4;
  swift_getAtKeyPath();
  v41 = v16;

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = v39;
  sub_1ADDFD59C(v13, v14, v15, v10, *(*(AssociatedConformanceWitness + 16) + 8));
  if (v19)
  {

    v20 = v37;
  }

  else
  {
    v26 = v17;
    v39 = v15;
    (*(v37 + 8))(v13, v10);

    v22 = v32;
    swift_getAtKeyPath();

    v23 = v34;
    v24 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v22, v31, v36, v23, *(*(v24 + 16) + 8));
    (*(v33 + 8))(v22, v23);

    v13 = v28;
    swift_getAtKeyPath();

    v10 = AssociatedTypeWitness;
    v25 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v13, v27, v40, v10, *(*(v25 + 16) + 8));

    v20 = v29;
  }

  return (*(v20 + 8))(v13, v10);
}

uint64_t CRStruct_4.encodeFields(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v42 = &v41 - v5;
  v65 = swift_getAssociatedTypeWitness();
  v46 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v45 = &v41 - v6;
  v7 = swift_getAssociatedTypeWitness();
  v48 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v41 - v8;
  v58 = swift_getAssociatedTypeWitness();
  v62 = *(v58 - 8);
  v9 = MEMORY[0x1EEE9AC00](v58);
  v60 = &v41 - v10;
  (*(v4 + 80))(&TupleTypeMetadata2, a2, v4, v9);
  v61 = TupleTypeMetadata2;
  v11 = v71;
  v59 = v72;
  v69 = v74;
  v68 = v75;
  v12 = v77;
  v13 = v78;
  v14 = v80;
  v15 = v81;
  v82[0] = TupleTypeMetadata2;
  v82[1] = v71;
  v82[2] = v72;
  v82[3] = v73;
  v47 = v73;
  v82[4] = v74;
  v82[5] = v75;
  v44 = v76;
  v82[6] = v76;
  v82[7] = v77;
  v82[8] = v78;
  v82[9] = v79;
  v41 = v79;
  v82[10] = v80;
  v82[11] = v81;
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v49 = v7;
  sub_1AE23DB8C();
  v71 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v72 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v73 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v17 = *(TupleTypeMetadata - 8);
  v18 = *(v17 + 16);
  v66 = TupleTypeMetadata;
  v51 = v17 + 16;
  v50 = v18;
  (v18)(&TupleTypeMetadata2, v82);

  v55 = v15;

  v56 = v14;
  v19 = v60;

  v53 = v13;
  v20 = v58;

  v54 = v12;
  v21 = a2;

  swift_getAtKeyPath();

  v52 = v4;
  v22 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
  v23 = v61;
  v61 = v11;
  v24 = v63;
  sub_1ADDFD59C(v19, v23, v11, v20, v22);
  if (v24)
  {
    (*(v17 + 8))(v82, v66);
    v25 = *(v62 + 8);
    v26 = v19;
  }

  else
  {
    v63 = v17;
    (*(v62 + 8))(v19, v20);
    v27 = v66;
    v50(&TupleTypeMetadata2, v82, v66);
    v28 = v69;

    v29 = v57;
    swift_getAtKeyPath();

    v30 = v49;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v29, v47, v28, v30, *(*(AssociatedConformanceWitness + 16) + 8));
    (*(v48 + 8))(v57, v30);
    v50(&TupleTypeMetadata2, v82, v27);
    v32 = v21;
    v33 = v54;

    v34 = v45;
    swift_getAtKeyPath();

    v62 = v32;
    v35 = v65;
    v36 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v34, v44, v33, v35, *(*(v36 + 16) + 8));
    (*(v46 + 8))(v34, v35);
    v50(&TupleTypeMetadata2, v82, v66);
    v38 = v56;

    v39 = v42;
    swift_getAtKeyPath();

    v20 = AssociatedTypeWitness;
    v40 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v39, v41, v38, v20, *(*(v40 + 16) + 8));
    (*(v63 + 8))(v82, v66);
    v25 = *(v43 + 8);
    v26 = v39;
  }

  return v25(v26, v20);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CRStruct_5.decode(fields:)(Swift::OpaquePointer fields)
{
  v3 = v1;
  rawValue = fields._rawValue;
  v4 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v65[1] = v65 - v5;
  v79 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v79);
  v65[2] = v65 - v6;
  v80 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v80);
  v65[3] = v65 - v7;
  v8 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v8);
  v67 = v65 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v70 = v65 - v12;
  v13 = *(v4 + 96);
  v77 = v4;
  v13(&TupleTypeMetadata2, v3, v4, v11);
  v87 = v96;
  v81 = v98;
  v90 = v99;
  v14 = v101;
  v15 = v102;
  v16 = v104;
  v109[17] = v105;
  v17 = v107;
  v18 = v108;
  v74 = TupleTypeMetadata2;
  v109[0] = TupleTypeMetadata2;
  v109[1] = v95;
  v91 = v95;
  v109[2] = v96;
  v109[3] = v97;
  v73 = v97;
  v109[4] = v98;
  v109[5] = v99;
  v72 = v100;
  v109[6] = v100;
  v109[7] = v101;
  v109[8] = v102;
  v109[9] = v103;
  v71 = v103;
  v109[10] = v104;
  v109[11] = v105;
  v68 = v106;
  v109[12] = v106;
  v109[13] = v107;
  v109[14] = v108;
  v69 = v10;
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v66 = v8;
  sub_1AE23DB8C();
  v95 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v96 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v97 = swift_getTupleTypeMetadata2();
  v76 = v3;
  sub_1AE23DB8C();
  v19 = v16;
  v20 = rawValue;
  v98 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v75 = *(TupleTypeMetadata - 8);
  v22 = *(v75 + 16);
  v86 = TupleTypeMetadata;
  v83 = v75 + 16;
  v92 = v22;
  (v22)(&TupleTypeMetadata2, v109);

  v93 = v18;

  v89 = v17;

  v23 = v15;

  v24 = v81;

  v25 = v20[2];
  v84 = v14;
  v85 = v19;
  if (v25)
  {
    sub_1ADDD7A10(v74, v91);
    v27 = v26;

    if (v27)
    {
      v92(&TupleTypeMetadata2, v109, v86);

      v65[0] = v15;

      v28 = v69;
      v29 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v30 = *(v29 + 8);

      v32 = v88;
      v30(v31, v28, v29);
      v88 = v32;
      if (v32)
      {
LABEL_32:

        (*(v75 + 8))(v109, v86);
        return;
      }

      swift_setAtWritableKeyPath();

      v20 = rawValue;
      v24 = v81;
      v14 = v84;
      v23 = v65[0];
    }

    else
    {
      v14 = v84;
    }

    v33 = v86;
    v19 = v85;
  }

  else
  {

    v33 = v86;
  }

  v34 = v33;
  (v92)(&TupleTypeMetadata2, v109);

  v35 = v23;

  if (v20[2])
  {
    sub_1ADDD7A10(v73, v24);
    v37 = v36;

    if (v37)
    {
      v92(&TupleTypeMetadata2, v109, v34);

      v38 = v84;

      v39 = v66;
      v40 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v41 = *(v40 + 8);

      v43 = v88;
      v41(v42, v39, v40);
      v88 = v43;
      if (v43)
      {
        goto LABEL_32;
      }

      swift_setAtWritableKeyPath();

      v20 = rawValue;
      v14 = v38;
      v34 = v86;
      v19 = v85;
    }

    else
    {
      v14 = v84;
      v19 = v85;
    }
  }

  else
  {
  }

  v92(&TupleTypeMetadata2, v109, v34);

  if (v20[2])
  {
    sub_1ADDD7A10(v72, v14);
    v45 = v44;

    if (v45)
    {
      v65[0] = v35;
      v92(&TupleTypeMetadata2, v109, v86);

      v46 = v80;
      v47 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v48 = *(v47 + 8);

      v50 = v88;
      v48(v49, v46, v47);
      v88 = v50;
      if (v50)
      {
        goto LABEL_32;
      }

      swift_setAtWritableKeyPath();

      v20 = rawValue;
      v34 = v86;
      v19 = v85;
    }

    else
    {
      v19 = v85;
      v34 = v86;
    }
  }

  else
  {
  }

  v92(&TupleTypeMetadata2, v109, v34);

  if (v20[2])
  {
    sub_1ADDD7A10(v71, v19);
    v52 = v51;

    if (v52)
    {
      v92(&TupleTypeMetadata2, v109, v34);

      v53 = v79;
      v54 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v55 = *(v54 + 8);

      v57 = v88;
      v55(v56, v53, v54);
      v88 = v57;
      if (v57)
      {
        goto LABEL_32;
      }

      swift_setAtWritableKeyPath();

      v20 = rawValue;
      v34 = v86;
    }
  }

  else
  {
  }

  v92(&TupleTypeMetadata2, v109, v34);

  if (v20[2])
  {
    sub_1ADDD7A10(v68, v89);
    v59 = v58;

    if (v59)
    {
      v92(&TupleTypeMetadata2, v109, v34);

      v60 = AssociatedTypeWitness;
      v61 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v62 = *(v61 + 8);

      v64 = v88;
      v62(v63, v60, v61);
      v88 = v64;
      if (v64)
      {
        goto LABEL_32;
      }

      swift_setAtWritableKeyPath();
      (*(v75 + 8))(v109, v34);
    }

    else
    {
      (*(v75 + 8))(v109, v34);
    }
  }

  else
  {
    (*(v75 + 8))(v109, v34);
  }
}

uint64_t CRStruct_5.encodeFields(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v47 = &v45 - v5;
  v74 = swift_getAssociatedTypeWitness();
  v51 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v50 = &v45 - v6;
  v75 = swift_getAssociatedTypeWitness();
  v54 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v53 = &v45 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v55 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v45 - v9;
  v67 = swift_getAssociatedTypeWitness();
  v70 = *(v67 - 8);
  v10 = MEMORY[0x1EEE9AC00](v67);
  v68 = &v45 - v11;
  (*(v4 + 96))(&TupleTypeMetadata2, a2, v4, v10);
  v69 = TupleTypeMetadata2;
  v97 = v82;
  v12 = v83;
  v80 = v85;
  v76 = v86;
  v79 = v88;
  v78 = v89;
  v13 = v91;
  v14 = v92;
  v16 = v94;
  v15 = v95;
  v96[0] = TupleTypeMetadata2;
  v96[1] = v82;
  v96[2] = v83;
  v96[3] = v84;
  v56 = v84;
  v96[4] = v85;
  v96[5] = v86;
  v52 = v87;
  v96[6] = v87;
  v96[7] = v88;
  v96[8] = v89;
  v96[9] = v90;
  v49 = v90;
  v96[10] = v91;
  v96[11] = v92;
  v46 = v93;
  v96[12] = v93;
  v96[13] = v94;
  v96[14] = v95;
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v66 = v8;
  sub_1AE23DB8C();
  v82 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v83 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v84 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v85 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v18 = *(TupleTypeMetadata - 8);
  v19 = *(v18 + 16);
  v77 = TupleTypeMetadata;
  v59 = v18 + 16;
  v58 = v19;
  (v19)(&TupleTypeMetadata2, v96);
  v20 = v97;

  v63 = v15;

  v57 = v16;

  v60 = v14;
  v21 = v68;

  v61 = v13;

  swift_getAtKeyPath();
  v62 = v12;
  v22 = v67;

  v64 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = v72;
  sub_1ADDFD59C(v21, v69, v20, v22, *(*(AssociatedConformanceWitness + 16) + 8));
  if (v24)
  {
    (*(v18 + 8))(v96, v77);
    v25 = *(v70 + 8);
    v26 = v21;
  }

  else
  {
    v28 = v21;
    v29 = v55;
    v72 = v18;
    (*(v70 + 8))(v28, v22);
    v58(&TupleTypeMetadata2, v96, v77);
    v30 = v80;

    v31 = v65;
    swift_getAtKeyPath();

    v32 = v66;
    v33 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v31, v56, v30, v32, *(*(v33 + 16) + 8));
    (*(v29 + 8))(v65, v66);
    v58(&TupleTypeMetadata2, v96, v77);
    v34 = v79;

    v35 = v53;
    swift_getAtKeyPath();

    v36 = v75;
    v37 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v35, v52, v34, v36, *(*(v37 + 16) + 8));
    (*(v54 + 8))(v35, v36);
    v58(&TupleTypeMetadata2, v96, v77);
    v38 = v61;

    v39 = v50;
    swift_getAtKeyPath();

    v40 = v74;
    v41 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v39, v49, v38, v40, *(*(v41 + 16) + 8));
    (*(v51 + 8))(v39, v40);
    v58(&TupleTypeMetadata2, v96, v77);
    v42 = v57;

    v43 = v47;
    swift_getAtKeyPath();

    v22 = AssociatedTypeWitness;
    v44 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v43, v46, v42, v22, *(*(v44 + 16) + 8));
    (*(v72 + 8))(v96, v77);
    v25 = *(v48 + 8);
    v26 = v43;
  }

  return v25(v26, v22);
}

uint64_t CRStruct_6.encodeFields(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v50 = &v49 - v5;
  v81 = swift_getAssociatedTypeWitness();
  v54 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v53 = &v49 - v6;
  v82 = swift_getAssociatedTypeWitness();
  v57 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v56 = &v49 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v60 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v49 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v62 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v49 - v11;
  v73 = swift_getAssociatedTypeWitness();
  v77 = *(v73 - 8);
  v12 = MEMORY[0x1EEE9AC00](v73);
  v76 = &v49 - v13;
  (*(v4 + 112))(&TupleTypeMetadata2, a2, v4, v12);
  v75 = TupleTypeMetadata2;
  v110 = v92;
  v89 = v95;
  v90 = v93;
  v87 = v98;
  v88 = v96;
  v74 = v101;
  v85 = v102;
  v86 = v99;
  v84 = v104;
  v14 = v105;
  v15 = v107;
  v16 = v108;
  v109[0] = TupleTypeMetadata2;
  v109[1] = v92;
  v109[2] = v93;
  v109[3] = v94;
  v63 = v94;
  v109[4] = v95;
  v109[5] = v96;
  v58 = v97;
  v109[6] = v97;
  v109[7] = v98;
  v109[8] = v99;
  v109[9] = v100;
  v55 = v100;
  v109[10] = v101;
  v109[11] = v102;
  v52 = v103;
  v109[12] = v103;
  v109[13] = v104;
  v109[14] = v105;
  v109[15] = v106;
  v49 = v106;
  v109[16] = v107;
  v109[17] = v108;
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v64 = v10;
  sub_1AE23DB8C();
  v92 = swift_getTupleTypeMetadata2();
  v61 = v8;
  sub_1AE23DB8C();
  v93 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v94 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v95 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v96 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v18 = *(TupleTypeMetadata - 8);
  v19 = *(v18 + 16);
  v83 = TupleTypeMetadata;
  v67 = v19;
  v68 = v18 + 16;
  (v19)(&TupleTypeMetadata2, v109);
  v20 = v110;

  v70 = v16;

  v71 = v15;
  v21 = v73;

  v69 = v14;

  v22 = v74;

  v23 = v76;
  swift_getAtKeyPath();

  v65 = v4;
  v66 = a2;
  v24 = v23;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = v79;
  sub_1ADDFD59C(v23, v75, v20, v21, *(*(AssociatedConformanceWitness + 16) + 8));
  if (v26)
  {
    (*(v18 + 8))(v109, v83);
    return (*(v77 + 8))(v23, v21);
  }

  else
  {
    v28 = v62;
    v79 = v18;
    (*(v77 + 8))(v24, v21);
    v67(&TupleTypeMetadata2, v109, v83);
    v29 = v89;

    v30 = v72;
    swift_getAtKeyPath();

    v31 = v64;
    v32 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v30, v63, v29, v31, *(*(v32 + 16) + 8));
    (*(v28 + 8))(v72, v31);
    v67(&TupleTypeMetadata2, v109, v83);
    v33 = v87;

    v34 = v59;
    swift_getAtKeyPath();

    v35 = v61;
    v36 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v34, v58, v33, v35, *(*(v36 + 16) + 8));
    (*(v60 + 8))(v34, v35);
    v67(&TupleTypeMetadata2, v109, v83);
    v37 = v22;

    v38 = v56;
    swift_getAtKeyPath();

    v39 = v82;
    v40 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v38, v55, v37, v39, *(*(v40 + 16) + 8));
    (*(v57 + 8))(v38, v39);
    v67(&TupleTypeMetadata2, v109, v83);
    v41 = v84;

    v42 = v53;
    swift_getAtKeyPath();

    v43 = v81;
    v44 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v42, v52, v41, v43, *(*(v44 + 16) + 8));
    (*(v54 + 8))(v42, v43);
    v67(&TupleTypeMetadata2, v109, v83);
    v45 = v71;

    v46 = v50;
    swift_getAtKeyPath();

    v47 = AssociatedTypeWitness;
    v48 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v46, v49, v45, v47, *(*(v48 + 16) + 8));
    (*(v79 + 8))(v109, v83);
    return (*(v51 + 8))(v46, v47);
  }
}

uint64_t CRStruct_7.encodeFields(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v56 = &v54 - v5;
  v87 = swift_getAssociatedTypeWitness();
  v60 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v59 = &v54 - v6;
  v88 = swift_getAssociatedTypeWitness();
  v63 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v62 = &v54 - v7;
  v89 = swift_getAssociatedTypeWitness();
  v66 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v65 = &v54 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v69 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v54 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v71 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v54 - v12;
  v81 = swift_getAssociatedTypeWitness();
  v83 = *(v81 - 8);
  v13 = MEMORY[0x1EEE9AC00](v81);
  v15 = &v54 - v14;
  (*(v4 + 128))(&TupleTypeMetadata2, a2, v4, v13);
  v82 = TupleTypeMetadata2;
  v91 = v104;
  v101 = v107;
  v102 = v105;
  v99 = v110;
  v100 = v108;
  v97 = v113;
  v98 = v111;
  v95 = v116;
  v96 = v114;
  v93 = v119;
  v94 = v117;
  v92 = v120;
  v16 = v122;
  v17 = v123;
  v124[0] = TupleTypeMetadata2;
  v124[1] = v104;
  v124[2] = v105;
  v124[3] = v106;
  v72 = v106;
  v124[4] = v107;
  v124[5] = v108;
  v68 = v109;
  v124[6] = v109;
  v124[7] = v110;
  v124[8] = v111;
  v124[9] = v112;
  v64 = v112;
  v124[10] = v113;
  v124[11] = v114;
  v61 = v115;
  v124[12] = v115;
  v124[13] = v116;
  v124[14] = v117;
  v124[15] = v118;
  v58 = v118;
  v124[16] = v119;
  v124[17] = v120;
  v55 = v121;
  v124[18] = v121;
  v124[19] = v122;
  v124[20] = v123;
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v80 = v11;
  sub_1AE23DB8C();
  v104 = swift_getTupleTypeMetadata2();
  v70 = v9;
  sub_1AE23DB8C();
  v105 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v106 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v107 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v108 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v109 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v19 = *(TupleTypeMetadata - 8);
  v20 = *(v19 + 16);
  v90 = TupleTypeMetadata;
  v76 = v20;
  v77 = v19 + 16;
  (v20)(&TupleTypeMetadata2, v124);
  v21 = v91;

  v78 = v17;
  v22 = v81;

  v73 = v16;

  swift_getAtKeyPath();

  v74 = v4;
  v75 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = v85;
  sub_1ADDFD59C(v15, v82, v21, v22, *(*(AssociatedConformanceWitness + 16) + 8));
  if (v24)
  {
    (*(v19 + 8))(v124, v90);
    return (*(v83 + 8))(v15, v22);
  }

  else
  {
    v26 = v71;
    v85 = v19;
    (*(v83 + 8))(v15, v22);
    v27 = v90;
    v76(&TupleTypeMetadata2, v124, v90);
    v28 = v101;

    v29 = v79;
    swift_getAtKeyPath();

    v30 = v80;
    v31 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v29, v72, v28, v30, *(*(v31 + 16) + 8));
    (*(v26 + 8))(v79, v80);
    v76(&TupleTypeMetadata2, v124, v27);
    v32 = v99;

    v33 = v67;
    swift_getAtKeyPath();

    v34 = v70;
    v35 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v33, v68, v32, v34, *(*(v35 + 16) + 8));
    (*(v69 + 8))(v33, v34);
    v76(&TupleTypeMetadata2, v124, v90);
    v36 = v97;

    v37 = v65;
    swift_getAtKeyPath();
    v38 = v37;

    v39 = v89;
    v40 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v38, v64, v36, v39, *(*(v40 + 16) + 8));
    (*(v66 + 8))(v38, v39);
    v76(&TupleTypeMetadata2, v124, v90);
    v41 = v95;

    v42 = v62;
    swift_getAtKeyPath();

    v43 = v88;
    v44 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v42, v61, v41, v43, *(*(v44 + 16) + 8));
    (*(v63 + 8))(v42, v43);
    v76(&TupleTypeMetadata2, v124, v90);
    v45 = v93;

    v46 = v59;
    swift_getAtKeyPath();

    v47 = v87;
    v48 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v46, v58, v45, v47, *(*(v48 + 16) + 8));
    (*(v60 + 8))(v46, v47);
    v49 = v90;
    v76(&TupleTypeMetadata2, v124, v90);
    v50 = v73;

    v51 = v56;
    swift_getAtKeyPath();

    v52 = AssociatedTypeWitness;
    v53 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v51, v55, v50, v52, *(*(v53 + 16) + 8));
    (*(v85 + 8))(v124, v49);
    return (*(v57 + 8))(v51, v52);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CRStruct_8.decode(fields:)(Swift::OpaquePointer fields)
{
  v3 = v1;
  rawValue = fields._rawValue;
  v4 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v88[1] = v88 - v5;
  v106 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v106);
  v88[2] = v88 - v6;
  v107 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v107);
  v88[3] = v88 - v7;
  v108 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v108);
  v88[4] = v88 - v8;
  v109 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v109);
  v90 = v88 - v9;
  v10 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v10);
  v93 = v88 - v11;
  v12 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v12);
  v96 = v88 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v99 = v88 - v16;
  v17 = *(v4 + 144);
  v111 = v4;
  v17(&TupleTypeMetadata2, v3, v4, v15);
  v131 = v134;
  v120 = v137;
  v121 = v142;
  v114 = v136;
  v115 = v143;
  v116 = v139;
  v117 = v145;
  v123 = v146;
  v124 = v148;
  v130 = v149;
  v125 = v133;
  v126 = v151;
  v128 = v140;
  v129 = v152;
  v18 = v154;
  v19 = v155;
  v102 = v135;
  v103 = TupleTypeMetadata2;
  v156[0] = TupleTypeMetadata2;
  v156[1] = v133;
  v156[2] = v134;
  v156[3] = v135;
  v156[4] = v136;
  v156[5] = v137;
  v100 = v141;
  v101 = v138;
  v156[6] = v138;
  v156[7] = v139;
  v156[8] = v140;
  v156[9] = v141;
  v156[10] = v142;
  v156[11] = v143;
  v97 = v144;
  v98 = v14;
  v156[12] = v144;
  v156[13] = v145;
  v156[14] = v146;
  v94 = v147;
  v156[15] = v147;
  v156[16] = v148;
  v156[17] = v149;
  v91 = v150;
  v156[18] = v150;
  v156[19] = v151;
  v156[20] = v152;
  v89 = v153;
  v156[21] = v153;
  v156[22] = v154;
  v156[23] = v155;
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v95 = v12;
  sub_1AE23DB8C();
  v133 = swift_getTupleTypeMetadata2();
  v92 = v10;
  sub_1AE23DB8C();
  v134 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v135 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v136 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v137 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v138 = swift_getTupleTypeMetadata2();
  v110 = v3;
  sub_1AE23DB8C();
  v139 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v104 = *(TupleTypeMetadata - 8);
  v21 = *(v104 + 16);
  v127 = TupleTypeMetadata;
  v113 = v104 + 16;
  v122 = v21;
  (v21)(&TupleTypeMetadata2, v156);

  v112 = v18;

  v22 = rawValue[2];
  v118 = v19;
  if (v22)
  {
    sub_1ADDD7A10(v103, v125);
    v24 = v23;

    if (v24)
    {
      v25 = v122;
      v122(&TupleTypeMetadata2, v156, v127);

      v26 = v98;
      v27 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v28 = *(v27 + 8);

      v30 = v119;
      v28(v29, v26, v27);
      v119 = v30;
      if (v30)
      {
        v31 = v127;
LABEL_49:

        (*(v104 + 8))(v156, v31);
        return;
      }

      swift_setAtWritableKeyPath();

      v25(&TupleTypeMetadata2, v156, v127);
    }

    else
    {
      v122(&TupleTypeMetadata2, v156, v127);
    }
  }

  else
  {

    v122(&TupleTypeMetadata2, v156, v127);
  }

  v32 = v116;

  if (rawValue[2])
  {
    v33 = sub_1ADDD7A10(v102, v114);
    v35 = v34;

    if (v35)
    {
      v103 = *(rawValue[7] + 8 * v33);
      v122(&TupleTypeMetadata2, v156, v127);

      v36 = v32;

      v37 = v95;
      v38 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v39 = *(v38 + 8);

      v41 = v119;
      v39(v40, v37, v38);
      v119 = v41;
      if (v41)
      {
        v31 = v127;
        goto LABEL_49;
      }

      swift_setAtWritableKeyPath();

      v43 = v121;
      v42 = v117;
      v32 = v36;
      v122(&TupleTypeMetadata2, v156, v127);
    }

    else
    {
      v42 = v117;
      v43 = v121;
      v122(&TupleTypeMetadata2, v156, v127);
    }
  }

  else
  {

    v42 = v117;
    v43 = v121;
    v122(&TupleTypeMetadata2, v156, v127);
  }

  if (rawValue[2])
  {
    sub_1ADDD7A10(v101, v32);
    v45 = v44;

    if ((v45 & 1) == 0)
    {
      v43 = v121;
      v122(&TupleTypeMetadata2, v156, v127);
      goto LABEL_23;
    }

    v122(&TupleTypeMetadata2, v156, v127);

    v43 = v121;

    v46 = v92;
    v47 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
    v48 = *(v47 + 8);

    v50 = v119;
    v48(v49, v46, v47);
    v119 = v50;
    if (v50)
    {
      goto LABEL_48;
    }

    swift_setAtWritableKeyPath();

    v42 = v117;
  }

  else
  {
  }

  v122(&TupleTypeMetadata2, v156, v127);
LABEL_23:

  if (rawValue[2])
  {
    sub_1ADDD7A10(v100, v43);
    v52 = v51;

    if ((v52 & 1) == 0)
    {
      v42 = v117;
      v122(&TupleTypeMetadata2, v156, v127);
      goto LABEL_31;
    }

    v122(&TupleTypeMetadata2, v156, v127);

    v53 = v109;
    v54 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
    v55 = *(v54 + 8);

    v57 = v119;
    v55(v56, v53, v54);
    v119 = v57;
    if (v57)
    {
      v31 = v127;
      goto LABEL_49;
    }

    swift_setAtWritableKeyPath();

    v42 = v117;
  }

  else
  {
  }

  v122(&TupleTypeMetadata2, v156, v127);
LABEL_31:

  if (rawValue[2])
  {
    sub_1ADDD7A10(v97, v42);
    v59 = v58;

    if (v59)
    {
      v122(&TupleTypeMetadata2, v156, v127);

      v60 = v108;
      v61 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v62 = *(v61 + 8);

      v64 = v119;
      v62(v63, v60, v61);
      v119 = v64;
      if (v64)
      {
        goto LABEL_48;
      }

      swift_setAtWritableKeyPath();
    }
  }

  else
  {
  }

  v122(&TupleTypeMetadata2, v156, v127);

  if (rawValue[2])
  {
    sub_1ADDD7A10(v94, v124);
    v66 = v65;

    if (v66)
    {
      v122(&TupleTypeMetadata2, v156, v127);

      v67 = v107;
      v68 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v69 = *(v68 + 8);

      v71 = v119;
      v69(v70, v67, v68);
      v119 = v71;
      if (v71)
      {
        v31 = v127;
        goto LABEL_49;
      }

      swift_setAtWritableKeyPath();
    }
  }

  else
  {
  }

  v122(&TupleTypeMetadata2, v156, v127);

  if (rawValue[2])
  {
    sub_1ADDD7A10(v91, v126);
    v73 = v72;

    if (v73)
    {
      v122(&TupleTypeMetadata2, v156, v127);

      v74 = v106;
      v75 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v76 = *(v75 + 8);

      v78 = v119;
      v76(v77, v74, v75);
      v119 = v78;
      if (v78)
      {
LABEL_48:
        v31 = v127;
        goto LABEL_49;
      }

      swift_setAtWritableKeyPath();

      v79 = v122;
    }

    else
    {
      v79 = v122;
    }
  }

  else
  {

    v79 = v122;
  }

  v80 = v127;
  v79(&TupleTypeMetadata2, v156, v127);

  if (rawValue[2])
  {
    sub_1ADDD7A10(v89, v112);
    v82 = v81;

    if (v82)
    {
      v31 = v127;
      v122(&TupleTypeMetadata2, v156, v127);

      v83 = AssociatedTypeWitness;
      v84 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v85 = *(v84 + 8);

      v87 = v119;
      v85(v86, v83, v84);
      v119 = v87;
      if (v87)
      {
        goto LABEL_49;
      }

      swift_setAtWritableKeyPath();
      (*(v104 + 8))(v156, v31);
    }

    else
    {
      (*(v104 + 8))(v156, v127);
    }
  }

  else
  {
    (*(v104 + 8))(v156, v80);
  }
}

uint64_t CRStruct_8.encodeFields(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v95 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v60 = &v58 - v5;
  v92 = swift_getAssociatedTypeWitness();
  v64 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v63 = &v58 - v6;
  v93 = swift_getAssociatedTypeWitness();
  v67 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v66 = &v58 - v7;
  v94 = swift_getAssociatedTypeWitness();
  v70 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v69 = &v58 - v8;
  v96 = swift_getAssociatedTypeWitness();
  v73 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v72 = &v58 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v77 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v58 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v78 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v85 = &v58 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v89 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v88 = &v58 - v16;
  v98 = v4;
  (*(v4 + 144))(&TupleTypeMetadata2, a2, v4, v15);
  v87 = TupleTypeMetadata2;
  v111 = v117;
  v112 = v115;
  v99 = v114;
  v100 = v118;
  v109 = v121;
  v110 = v120;
  v107 = v124;
  v108 = v123;
  v105 = v127;
  v106 = v126;
  v103 = v130;
  v104 = v129;
  v101 = v133;
  v102 = v132;
  v137[0] = TupleTypeMetadata2;
  v137[1] = v114;
  v137[2] = v115;
  v79 = v116;
  v137[3] = v116;
  v137[4] = v117;
  v137[5] = v118;
  v75 = v119;
  v137[6] = v119;
  v137[7] = v120;
  v137[8] = v121;
  v71 = v122;
  v137[9] = v122;
  v137[10] = v123;
  v137[11] = v124;
  v68 = v125;
  v137[12] = v125;
  v137[13] = v126;
  v137[14] = v127;
  v65 = v128;
  v137[15] = v128;
  v137[16] = v129;
  v137[17] = v130;
  v62 = v131;
  v137[18] = v131;
  v137[19] = v132;
  v137[20] = v133;
  v59 = v134;
  v137[21] = v134;
  v137[22] = v135;
  v17 = v135;
  v137[23] = v136;
  v18 = v136;
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v86 = v12;
  sub_1AE23DB8C();
  v114 = swift_getTupleTypeMetadata2();
  v76 = v10;
  sub_1AE23DB8C();
  v115 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v116 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v117 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v118 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v119 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v120 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v20 = *(TupleTypeMetadata - 8);
  v21 = *(v20 + 16);
  v97 = TupleTypeMetadata;
  v81 = v21;
  v82 = v20 + 16;
  (v21)(&TupleTypeMetadata2, v137);
  v22 = v99;

  v83 = v18;

  v84 = v17;

  v23 = v88;
  swift_getAtKeyPath();

  v80 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = v90;
  sub_1ADDFD59C(v23, v87, v22, v14, *(*(AssociatedConformanceWitness + 16) + 8));
  if (v25)
  {
    (*(v20 + 8))(v137, v97);
    v26 = v89;
  }

  else
  {
    v28 = v23;
    v29 = v78;
    v90 = v20;
    (*(v89 + 8))(v28, v14);
    v30 = v97;
    v81(&TupleTypeMetadata2, v137, v97);
    v31 = v111;

    v32 = v85;
    swift_getAtKeyPath();

    v33 = v86;
    v34 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v32, v79, v31, v33, *(*(v34 + 16) + 8));
    (*(v29 + 8))(v85, v86);
    v81(&TupleTypeMetadata2, v137, v30);
    v35 = v110;

    v36 = v74;
    swift_getAtKeyPath();

    v37 = v76;
    v38 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v36, v75, v35, v37, *(*(v38 + 16) + 8));
    (*(v77 + 8))(v36, v37);
    v81(&TupleTypeMetadata2, v137, v97);
    v39 = v108;

    v40 = v72;
    swift_getAtKeyPath();

    v41 = v96;
    v42 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v40, v71, v39, v41, *(*(v42 + 16) + 8));
    (*(v73 + 8))(v40, v41);
    v81(&TupleTypeMetadata2, v137, v97);
    v43 = v106;

    v44 = v69;
    swift_getAtKeyPath();

    v45 = v94;
    v46 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v44, v68, v43, v45, *(*(v46 + 16) + 8));
    (*(v70 + 8))(v44, v45);
    v81(&TupleTypeMetadata2, v137, v97);
    v47 = v104;

    v48 = v66;
    swift_getAtKeyPath();

    v49 = v93;
    v50 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v48, v65, v47, v49, *(*(v50 + 16) + 8));
    (*(v67 + 8))(v48, v49);
    v81(&TupleTypeMetadata2, v137, v97);
    v51 = v102;

    v52 = v63;
    swift_getAtKeyPath();

    v53 = v92;
    v54 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v52, v62, v51, v53, *(*(v54 + 16) + 8));
    (*(v64 + 8))(v52, v53);
    v55 = v97;
    v81(&TupleTypeMetadata2, v137, v97);
    v56 = v84;

    v23 = v60;
    swift_getAtKeyPath();

    v14 = AssociatedTypeWitness;
    v57 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v23, v59, v56, v14, *(*(v57 + 16) + 8));
    (*(v90 + 8))(v137, v55);
    v26 = v61;
  }

  return (*(v26 + 8))(v23, v14);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CRStruct_9.decode(fields:)(Swift::OpaquePointer fields)
{
  v3 = v1;
  rawValue = fields._rawValue;
  v4 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v96[0] = v96 - v5;
  v113 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v113);
  v96[1] = v96 - v6;
  v114 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v114);
  v96[2] = v96 - v7;
  v115 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v115);
  v96[3] = v96 - v8;
  v116 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v116);
  v98 = v96 - v9;
  v117 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v117);
  v100 = v96 - v10;
  v118 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v118);
  v102 = v96 - v11;
  v119 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v119);
  v104 = v96 - v12;
  v120 = swift_getAssociatedTypeWitness();
  v13 = MEMORY[0x1EEE9AC00](v120);
  v106 = v96 - v14;
  v15 = *(v4 + 160);
  v122 = v4;
  v15(&TupleTypeMetadata2, v3, v4, v13);
  v16 = v149;
  v134 = v153;
  v143 = v155;
  v144 = v152;
  v129 = v156;
  v131 = v158;
  v17 = v159;
  v138 = v162;
  v139 = v161;
  v137 = v164;
  v125 = v165;
  v18 = v167;
  v141 = v170;
  v142 = v168;
  v132 = v146;
  v133 = v171;
  v110 = TupleTypeMetadata2;
  v172[0] = TupleTypeMetadata2;
  v172[1] = v146;
  v172[2] = v147;
  v19 = v147;
  v108 = v151;
  v109 = v148;
  v172[3] = v148;
  v172[4] = v149;
  v172[5] = v150;
  v20 = v150;
  v172[6] = v151;
  v172[7] = v152;
  v172[8] = v153;
  v107 = v154;
  v172[9] = v154;
  v172[10] = v155;
  v172[11] = v156;
  v105 = v157;
  v172[12] = v157;
  v172[13] = v158;
  v172[14] = v159;
  v103 = v160;
  v172[15] = v160;
  v172[16] = v161;
  v172[17] = v162;
  v101 = v163;
  v172[18] = v163;
  v172[19] = v164;
  v172[20] = v165;
  v99 = v166;
  v172[21] = v166;
  v172[22] = v167;
  v172[23] = v168;
  v97 = v169;
  v172[24] = v169;
  v172[25] = v170;
  v172[26] = v171;
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v146 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v147 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v148 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v149 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v150 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v151 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v152 = swift_getTupleTypeMetadata2();
  v121 = v3;
  sub_1AE23DB8C();
  v153 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v111 = *(TupleTypeMetadata - 8);
  v22 = *(v111 + 16);
  v140 = TupleTypeMetadata;
  v135 = v22;
  v136 = v111 + 16;
  (v22)(&TupleTypeMetadata2, v172);
  v128 = v19;

  v127 = v18;

  v23 = rawValue[2];
  v130 = v16;
  v126 = v20;
  v124 = v17;
  if (!v23)
  {

    goto LABEL_6;
  }

  sub_1ADDD7A10(v110, v132);
  v25 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_6:
    v135(&TupleTypeMetadata2, v172, v140);
    goto LABEL_7;
  }

  v135(&TupleTypeMetadata2, v172, v140);

  v26 = v120;
  v27 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
  v28 = *(v27 + 8);

  v30 = v123;
  v28(v29, v26, v27);
  if (v30)
  {
    goto LABEL_60;
  }

  v123 = 0;
  swift_setAtWritableKeyPath();

  v135(&TupleTypeMetadata2, v172, v140);
LABEL_7:

  if (rawValue[2])
  {
    sub_1ADDD7A10(v109, v130);
    v32 = v31;

    if (v32)
    {
      v135(&TupleTypeMetadata2, v172, v140);

      v33 = v119;
      v34 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v35 = *(v34 + 8);

      v37 = v123;
      v35(v36, v33, v34);
      if (v37)
      {
        goto LABEL_60;
      }

      v123 = 0;
      swift_setAtWritableKeyPath();

      v135(&TupleTypeMetadata2, v172, v140);
    }

    else
    {
      v135(&TupleTypeMetadata2, v172, v140);
    }
  }

  else
  {

    v135(&TupleTypeMetadata2, v172, v140);
  }

  if (rawValue[2])
  {
    sub_1ADDD7A10(v108, v144);
    v39 = v38;

    if (v39)
    {
      v135(&TupleTypeMetadata2, v172, v140);

      v40 = v118;
      v41 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v42 = *(v41 + 8);

      v44 = v123;
      v42(v43, v40, v41);
      if (v44)
      {
        goto LABEL_60;
      }

      v123 = 0;
      swift_setAtWritableKeyPath();

      v135(&TupleTypeMetadata2, v172, v140);
    }

    else
    {
      v135(&TupleTypeMetadata2, v172, v140);
    }
  }

  else
  {

    v135(&TupleTypeMetadata2, v172, v140);
  }

  if (rawValue[2])
  {
    sub_1ADDD7A10(v107, v143);
    v46 = v45;

    if (v46)
    {
      v135(&TupleTypeMetadata2, v172, v140);

      v47 = v117;
      v48 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v49 = *(v48 + 8);

      v51 = v123;
      v49(v50, v47, v48);
      if (v51)
      {
        v52 = v111;
LABEL_61:

        (*(v52 + 8))(v172, v140);
        return;
      }

      v123 = 0;
      swift_setAtWritableKeyPath();

      v135(&TupleTypeMetadata2, v172, v140);
    }

    else
    {
      v135(&TupleTypeMetadata2, v172, v140);
    }
  }

  else
  {

    v135(&TupleTypeMetadata2, v172, v140);
  }

  if (rawValue[2])
  {
    v53 = sub_1ADDD7A10(v105, v131);
    v55 = v54;

    if (v55)
    {
      v120 = *(rawValue[7] + 8 * v53);
      v135(&TupleTypeMetadata2, v172, v140);

      v56 = v116;
      v57 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v58 = *(v57 + 8);

      v60 = v123;
      v58(v59, v56, v57);
      if (v60)
      {
        goto LABEL_60;
      }

      v123 = 0;
      swift_setAtWritableKeyPath();

      v135(&TupleTypeMetadata2, v172, v140);
    }

    else
    {
      v135(&TupleTypeMetadata2, v172, v140);
    }
  }

  else
  {

    v135(&TupleTypeMetadata2, v172, v140);
  }

  v61 = v127;

  if (rawValue[2])
  {
    v62 = sub_1ADDD7A10(v103, v139);
    v64 = v63;

    if (v64)
    {
      v120 = *(rawValue[7] + 8 * v62);
      v135(&TupleTypeMetadata2, v172, v140);

      v65 = v115;
      v66 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v67 = *(v66 + 8);

      v69 = v123;
      v67(v68, v65, v66);
      if (v69)
      {
        goto LABEL_60;
      }

      v123 = 0;
      swift_setAtWritableKeyPath();

      v61 = v127;
      v135(&TupleTypeMetadata2, v172, v140);
    }

    else
    {
      v61 = v127;
      v135(&TupleTypeMetadata2, v172, v140);
    }
  }

  else
  {

    v135(&TupleTypeMetadata2, v172, v140);
  }

  if (rawValue[2])
  {
    sub_1ADDD7A10(v101, v137);
    v71 = v70;

    if (v71)
    {
      v135(&TupleTypeMetadata2, v172, v140);

      v72 = v127;

      v73 = v114;
      v74 = v72;
      v75 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v76 = *(v75 + 8);

      v78 = v123;
      v76(v77, v73, v75);
      if (v78)
      {
        goto LABEL_60;
      }

      v123 = 0;
      swift_setAtWritableKeyPath();

      v61 = v74;
      v135(&TupleTypeMetadata2, v172, v140);
    }

    else
    {
      v61 = v127;
      v135(&TupleTypeMetadata2, v172, v140);
    }
  }

  else
  {

    v135(&TupleTypeMetadata2, v172, v140);
  }

  if (!rawValue[2])
  {

    v86 = v135;
LABEL_56:
    v87 = v140;
    v86(&TupleTypeMetadata2, v172, v140);
    goto LABEL_57;
  }

  sub_1ADDD7A10(v99, v61);
  v80 = v79;

  if ((v80 & 1) == 0)
  {
    v86 = v135;
    goto LABEL_56;
  }

  v135(&TupleTypeMetadata2, v172, v140);

  v81 = v113;
  v82 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
  v83 = *(v82 + 8);

  v85 = v123;
  v83(v84, v81, v82);
  if (v85)
  {
    goto LABEL_60;
  }

  v123 = 0;
  swift_setAtWritableKeyPath();

  v87 = v140;
  v135(&TupleTypeMetadata2, v172, v140);
LABEL_57:

  if (rawValue[2])
  {
    sub_1ADDD7A10(v97, v141);
    v89 = v88;

    if (v89)
    {
      v90 = v140;
      v135(&TupleTypeMetadata2, v172, v140);

      v91 = AssociatedTypeWitness;
      v92 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v93 = *(v92 + 8);

      v95 = v123;
      v93(v94, v91, v92);
      if (v95)
      {
LABEL_60:
        v52 = v111;
        goto LABEL_61;
      }

      swift_setAtWritableKeyPath();
      (*(v111 + 8))(v172, v90);
    }

    else
    {
      (*(v111 + 8))(v172, v140);
    }
  }

  else
  {
    (*(v111 + 8))(v172, v87);
  }
}