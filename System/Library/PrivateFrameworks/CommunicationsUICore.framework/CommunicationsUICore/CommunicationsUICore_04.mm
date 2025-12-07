uint64_t sub_1C2F57C18(uint64_t a1, uint64_t *a2)
{
  v4 = *v2;
  sub_1C2F76F9C();
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v30 = a2;
  v9 = *(a2 + 32);
  sub_1C2F7673C();
  v33 = v8;
  v34 = v7;
  sub_1C2F7673C();
  v32 = v9;
  MEMORY[0x1C6929580](v9);
  v10 = sub_1C2F76FDC();
  v11 = -1 << *(v4 + 32);
  v12 = v10 & ~v11;
  if ((*(v4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v4 + 48);
    do
    {
      v15 = v14 + 40 * v12;
      v17 = *(v15 + 16);
      v16 = *(v15 + 24);
      v18 = *(v15 + 32);
      v19 = *v15 == v5 && *(v15 + 8) == v6;
      if (v19 || (sub_1C2F76EFC() & 1) != 0)
      {
        if (v17 == v34 && v16 == v33)
        {
          if (v32 == v18)
          {
            goto LABEL_16;
          }
        }

        else if ((sub_1C2F76EFC() & 1) != 0 && ((v32 ^ v18) & 1) == 0)
        {
LABEL_16:
          sub_1C2F5C39C(v30);
          v21 = *(v4 + 48) + 40 * v12;
          v23 = *v21;
          v22 = *(v21 + 8);
          v24 = *(v21 + 16);
          v25 = *(v21 + 24);
          LOBYTE(v21) = *(v21 + 32);
          *a1 = v23;
          *(a1 + 8) = v22;
          *(a1 + 16) = v24;
          *(a1 + 24) = v25;
          *(a1 + 32) = v21;

          return 0;
        }
      }

      v12 = (v12 + 1) & v13;
    }

    while (((*(v4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v29;
  sub_1C2F1CF38(v30, v36);
  sub_1C2F580D4(v30, v12, isUniquelyReferenced_nonNull_native);
  *v29 = v35;
  v28 = *(v30 + 16);
  *a1 = *v30;
  *(a1 + 16) = v28;
  *(a1 + 32) = *(v30 + 32);
  return 1;
}

uint64_t sub_1C2F57E2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076DF8, &unk_1C2F7CDA0);
  result = sub_1C2F76C3C();
  v5 = result;
  if (*(v3 + 16))
  {
    v32 = v1;
    v33 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v34 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v23 = *(v18 + 32);
      sub_1C2F76F9C();
      sub_1C2F7673C();
      sub_1C2F7673C();
      MEMORY[0x1C6929580](v23);
      result = sub_1C2F76FDC();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      *(v14 + 24) = v22;
      *(v14 + 32) = v23;
      ++*(v5 + 16);
      v3 = v33;
      v10 = v34;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v7, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C2F580D4(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v31 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_24;
  }

  if (a3)
  {
    sub_1C2F57E2C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1C2F582E4();
      goto LABEL_24;
    }

    sub_1C2F5845C(v6 + 1);
  }

  v8 = *v3;
  sub_1C2F76F9C();
  v9 = *v5;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  v12 = *(v5 + 24);
  v13 = *(v5 + 32);
  sub_1C2F7673C();
  v33 = v11;
  sub_1C2F7673C();
  v32 = v13;
  MEMORY[0x1C6929580](v13);
  result = sub_1C2F76FDC();
  v14 = v8 + 56;
  v15 = -1 << *(v8 + 32);
  a2 = result & ~v15;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v17 = *(v8 + 48);
    do
    {
      v18 = v17 + 40 * a2;
      result = *v18;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      v21 = *(v18 + 32);
      v22 = *v18 == v9 && *(v18 + 8) == v10;
      if (v22 || (result = sub_1C2F76EFC(), (result & 1) != 0))
      {
        if (v19 == v33 && v20 == v12)
        {
          if (v32 == v21)
          {
            goto LABEL_23;
          }
        }

        else
        {
          result = sub_1C2F76EFC();
          if ((result & 1) != 0 && ((v32 ^ v21) & 1) == 0)
          {
LABEL_23:
            result = sub_1C2F76F1C();
            __break(1u);
            break;
          }
        }
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_24:
  v24 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v25 = *(v24 + 48) + 40 * a2;
  v26 = *(v31 + 16);
  *v25 = *v31;
  *(v25 + 16) = v26;
  *(v25 + 32) = *(v31 + 32);
  v27 = *(v24 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v29;
  }

  return result;
}

void *sub_1C2F582E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076DF8, &unk_1C2F7CDA0);
  v2 = *v0;
  v3 = sub_1C2F76C2C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        LOBYTE(v18) = *(v18 + 32);
        v23 = *(v4 + 48) + v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v18;
      }

      while (v12);
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C2F5845C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076DF8, &unk_1C2F7CDA0);
  result = sub_1C2F76C3C();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v1;
    v32 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v33 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      v23 = *(v18 + 32);
      sub_1C2F76F9C();

      sub_1C2F7673C();
      sub_1C2F7673C();
      MEMORY[0x1C6929580](v23);
      result = sub_1C2F76FDC();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v22;
      *(v14 + 24) = v21;
      *(v14 + 32) = v23;
      ++*(v5 + 16);
      v3 = v32;
      v10 = v33;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v31;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v33 = (v17 - 1) & v17;
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
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1C2F586E8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C2F5993C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1C2F58754(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1C2F58754(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C2F76ECC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1C2F7681C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1C2F58A60(v7, v8, a1, v4);
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
    return sub_1C2F5884C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C2F5884C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v22 = *a4;
    v4 = *a4 + 40 * a3 - 40;
    v5 = result - a3;
LABEL_5:
    v20 = v4;
    v21 = a3;
    v6 = (v22 + 40 * a3);
    v8 = v6[2];
    v7 = v6[3];
    v9 = v6[4];
    v19 = v5;
    while (1)
    {
      v10 = *(v4 + 16);
      v11 = *(v4 + 24);
      v12 = *(v4 + 32);
      v23 = v5;
      if (!v8 && *(v9 + 16))
      {
      }

      if (!v10)
      {
        if (*(v12 + 16))
        {
        }
      }

      sub_1C2EF66C8();
      swift_bridgeObjectRetain_n();
      v13 = v7;

      swift_bridgeObjectRetain_n();
      v14 = v11;

      v15 = sub_1C2F76B0C();

      if (v15 != -1)
      {
LABEL_4:
        a3 = v21 + 1;
        v4 = v20 + 40;
        v5 = v19 - 1;
        if (v21 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v22)
      {
        break;
      }

      v16 = *(v4 + 40);
      v17 = *(v4 + 16);
      *(v4 + 40) = *v4;
      v8 = *(v4 + 56);
      v7 = *(v4 + 64);
      v9 = *(v4 + 72);
      *(v4 + 56) = v17;
      *(v4 + 72) = *(v4 + 32);
      *v4 = v16;
      *(v4 + 16) = v8;
      *(v4 + 24) = v7;
      *(v4 + 32) = v9;
      v4 -= 40;
      v5 = v23 + 1;
      if (v23 == -1)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1C2F58A60(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = v5;
  v8 = a3;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_110:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_150;
    }

    v4 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_144;
    }

    v113 = v4;
LABEL_113:
    v114 = v7;
    v149 = v113;
    v115 = *(v113 + 2);
    if (v115 >= 2)
    {
      do
      {
        v116 = *v8;
        if (!*v8)
        {
          goto LABEL_148;
        }

        v4 = v115 - 1;
        v7 = *&v113[16 * v115];
        v117 = v113;
        v8 = *&v113[16 * v115 + 24];
        sub_1C2F593E8((v116 + 40 * v7), (v116 + 40 * *&v113[16 * v115 + 16]), v116 + 40 * v8, v6);
        if (v114)
        {
          break;
        }

        if (v8 < v7)
        {
          goto LABEL_137;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v117 = sub_1C2F59928(v117);
        }

        if (v115 - 2 >= *(v117 + 2))
        {
          goto LABEL_138;
        }

        v118 = &v117[16 * v115];
        *v118 = v7;
        *(v118 + 1) = v8;
        v149 = v117;
        sub_1C2F5989C(v4);
        v113 = v149;
        v115 = *(v149 + 2);
        v8 = a3;
      }

      while (v115 > 1);
    }

LABEL_121:

    return;
  }

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = v10;
    if (v10 + 1 >= v9)
    {
      v9 = v10 + 1;
    }

    else
    {
      v125 = v11;
      v13 = *v8;
      v14 = *v8 + 40 * (v10 + 1);
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      v17 = *(v14 + 32);
      v145 = *v14;
      v146 = v15;
      v147 = v16;
      v148 = v17;
      v18 = (v13 + 40 * v10);
      v6 = *(v18 + 2);
      v19 = *(v18 + 3);
      v20 = v7;
      v21 = *(v18 + 4);
      v141 = *v18;
      v142 = v6;
      v143 = v19;
      v144 = v21;
      v22 = v19;

      v23 = v16;

      v130 = sub_1C2F57300(&v145, &v141);
      if (v20)
      {
        v119 = v143;

        v120 = v147;

        return;
      }

      v24 = v143;

      v4 = v146;
      v25 = v147;

      v26 = v12 + 2;
      v122 = v12;
      v132 = 40 * v12;
      v134 = v9;
      v27 = (v13 + 40 * v12 + 112);
      while (v9 != v26)
      {
        v31 = *(v27 - 2);
        v32 = *v27;
        v33 = *(v27 - 8);
        v6 = *(v27 - 7);
        v34 = *(v27 - 5);
        v138 = *(v27 - 1);
        v140 = *(v27 - 6);
        if (v31)
        {
          v35 = *(v27 - 3);
        }

        else if (*(v32 + 16))
        {
          v35 = *(v32 + 48);
        }

        else
        {
          v35 = 0;
          v31 = 0xE000000000000000;
        }

        *&v145 = v35;
        *(&v145 + 1) = v31;
        if (v6)
        {
          v4 = v34;
          v28 = v6;
        }

        else if (*(v34 + 16))
        {
          v33 = *(v34 + 48);
          v4 = v34;
        }

        else
        {
          v4 = v34;
          v33 = 0;
          v28 = 0xE000000000000000;
        }

        *&v141 = v33;
        *(&v141 + 1) = v28;
        sub_1C2EF66C8();
        swift_bridgeObjectRetain_n();
        v137 = v138;

        swift_bridgeObjectRetain_n();
        v29 = v140;

        v30 = sub_1C2F76B0C();

        ++v26;
        v27 += 5;
        v9 = v134;
        if (((v130 ^ (v30 != -1)) & 1) == 0)
        {
          v9 = v26 - 1;
          break;
        }
      }

      v7 = 0;
      v11 = v125;
      v8 = a3;
      v12 = v122;
      if (v130)
      {
        if (v9 < v122)
        {
          goto LABEL_143;
        }

        if (v122 < v9)
        {
          v36 = 40 * v9 - 40;
          v37 = v9;
          v38 = v122;
          do
          {
            if (v38 != --v37)
            {
              v39 = *a3;
              if (!*a3)
              {
                goto LABEL_147;
              }

              v40 = v39 + v132;
              v41 = *(v39 + v132 + 32);
              v42 = v39 + v36;
              v43 = *v40;
              v44 = *(v40 + 16);
              v45 = *(v42 + 32);
              v46 = *(v42 + 16);
              *v40 = *v42;
              *(v40 + 16) = v46;
              *(v40 + 32) = v45;
              *v42 = v43;
              *(v42 + 16) = v44;
              *(v42 + 32) = v41;
            }

            ++v38;
            v36 -= 40;
            v132 += 40;
          }

          while (v38 < v37);
        }
      }
    }

    v47 = *(v8 + 8);
    if (v9 < v47)
    {
      if (__OFSUB__(v9, v12))
      {
        goto LABEL_140;
      }

      if (v9 - v12 < a4)
      {
        if (__OFADD__(v12, a4))
        {
          goto LABEL_141;
        }

        if (v12 + a4 >= v47)
        {
          v48 = *(v8 + 8);
        }

        else
        {
          v48 = v12 + a4;
        }

        if (v48 < v12)
        {
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          v113 = sub_1C2F59928(v4);
          goto LABEL_113;
        }

        if (v9 != v48)
        {
          break;
        }
      }
    }

    v10 = v9;
    if (v9 < v12)
    {
      goto LABEL_139;
    }

LABEL_39:
    v49 = v11;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v11 = v49;
    }

    else
    {
      v11 = sub_1C2F1C78C(0, *(v49 + 2) + 1, 1, v49);
    }

    v4 = *(v11 + 2);
    v50 = *(v11 + 3);
    v51 = v4 + 1;
    if (v4 >= v50 >> 1)
    {
      v11 = sub_1C2F1C78C((v50 > 1), v4 + 1, 1, v11);
    }

    *(v11 + 2) = v51;
    v52 = &v11[16 * v4];
    *(v52 + 4) = v12;
    *(v52 + 5) = v10;
    v53 = *a1;
    if (!*a1)
    {
      goto LABEL_149;
    }

    if (v4)
    {
      while (1)
      {
        v54 = v51 - 1;
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v55 = *(v11 + 4);
          v56 = *(v11 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_58:
          if (v58)
          {
            goto LABEL_128;
          }

          v71 = &v11[16 * v51];
          v73 = *v71;
          v72 = *(v71 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_131;
          }

          v77 = &v11[16 * v54 + 32];
          v79 = *v77;
          v78 = *(v77 + 1);
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_134;
          }

          if (__OFADD__(v75, v80))
          {
            goto LABEL_135;
          }

          if (v75 + v80 >= v57)
          {
            if (v57 < v80)
            {
              v54 = v51 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v81 = &v11[16 * v51];
        v83 = *v81;
        v82 = *(v81 + 1);
        v65 = __OFSUB__(v82, v83);
        v75 = v82 - v83;
        v76 = v65;
LABEL_72:
        if (v76)
        {
          goto LABEL_130;
        }

        v84 = &v11[16 * v54];
        v86 = *(v84 + 4);
        v85 = *(v84 + 5);
        v65 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v65)
        {
          goto LABEL_133;
        }

        if (v87 < v75)
        {
          goto LABEL_3;
        }

LABEL_79:
        v4 = v54 - 1;
        if (v54 - 1 >= v51)
        {
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
LABEL_136:
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
          goto LABEL_142;
        }

        if (!*v8)
        {
          goto LABEL_146;
        }

        v92 = v11;
        v93 = *&v11[16 * v4 + 32];
        v6 = *&v11[16 * v54 + 40];
        sub_1C2F593E8((*v8 + 40 * v93), (*v8 + 40 * *&v11[16 * v54 + 32]), *v8 + 40 * v6, v53);
        if (v7)
        {
          goto LABEL_121;
        }

        if (v6 < v93)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_1C2F59928(v92);
        }

        if (v4 >= *(v92 + 2))
        {
          goto LABEL_125;
        }

        v94 = &v92[16 * v4];
        *(v94 + 4) = v93;
        *(v94 + 5) = v6;
        v149 = v92;
        sub_1C2F5989C(v54);
        v11 = v149;
        v51 = *(v149 + 2);
        if (v51 <= 1)
        {
          goto LABEL_3;
        }
      }

      v59 = &v11[16 * v51 + 32];
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_126;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_127;
      }

      v66 = &v11[16 * v51];
      v68 = *v66;
      v67 = *(v66 + 1);
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_129;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_132;
      }

      if (v70 >= v62)
      {
        v88 = &v11[16 * v54 + 32];
        v90 = *v88;
        v89 = *(v88 + 1);
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_136;
        }

        if (v57 < v91)
        {
          v54 = v51 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v9 = *(v8 + 8);
    if (v10 >= v9)
    {
      goto LABEL_110;
    }
  }

  v124 = v7;
  v126 = v11;
  v136 = *v8;
  v95 = *v8 + 40 * v9 - 40;
  v123 = v12;
  v96 = v12 - v9;
  v129 = v48;
LABEL_90:
  v133 = v95;
  v135 = v9;
  v97 = (v136 + 40 * v9);
  v99 = v97[2];
  v98 = v97[3];
  v100 = v97[4];
  v131 = v96;
  v101 = v96;
  while (1)
  {
    v139 = v101;
    v102 = *(v95 + 8);
    v103 = *(v95 + 16);
    v104 = *(v95 + 24);
    v105 = *(v95 + 32);
    if (v99)
    {
      v106 = *(v95 + 48);
      v107 = v99;
    }

    else if (*(v100 + 16))
    {
      v106 = *(v100 + 48);
    }

    else
    {
      v106 = 0;
      v107 = 0xE000000000000000;
    }

    *&v145 = v106;
    *(&v145 + 1) = v107;
    if (v103)
    {
      v4 = v105;
      v108 = v103;
    }

    else if (*(v105 + 16))
    {
      v102 = *(v105 + 48);
      v4 = v105;
    }

    else
    {
      v4 = v105;
      v102 = 0;
      v108 = 0xE000000000000000;
    }

    *&v141 = v102;
    *(&v141 + 1) = v108;
    sub_1C2EF66C8();
    swift_bridgeObjectRetain_n();
    v109 = v98;

    swift_bridgeObjectRetain_n();
    v6 = v104;

    v110 = sub_1C2F76B0C();

    if (v110 != -1)
    {
LABEL_89:
      v9 = v135 + 1;
      v95 = v133 + 40;
      v10 = v129;
      v96 = v131 - 1;
      if (v135 + 1 != v129)
      {
        goto LABEL_90;
      }

      v7 = v124;
      v11 = v126;
      v8 = a3;
      v12 = v123;
      if (v129 < v123)
      {
        goto LABEL_139;
      }

      goto LABEL_39;
    }

    if (!v136)
    {
      break;
    }

    v111 = *(v95 + 40);
    v112 = *(v95 + 16);
    *(v95 + 40) = *v95;
    v99 = *(v95 + 56);
    v98 = *(v95 + 64);
    v100 = *(v95 + 72);
    *(v95 + 56) = v112;
    *(v95 + 72) = *(v95 + 32);
    *v95 = v111;
    *(v95 + 16) = v99;
    *(v95 + 24) = v98;
    *(v95 + 32) = v100;
    v95 -= 40;
    v101 = v139 + 1;
    if (v139 == -1)
    {
      goto LABEL_89;
    }
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
}

uint64_t sub_1C2F593E8(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 40;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 40;
  if (v9 >= v11)
  {
    if (a4 != __dst || &__dst[40 * v11] <= a4)
    {
      memmove(a4, __dst, 40 * v11);
    }

    v12 = &v4[40 * v11];
    if (v10 >= 40 && v6 > v7)
    {
      v45 = v4;
LABEL_28:
      v24 = v5 - 40;
      v47 = v6;
      do
      {
        v41 = v12;
        v43 = v24;
        v25 = *(v12 - 2);
        v26 = *(v6 - 3);
        v28 = *(v6 - 2);
        v27 = *(v6 - 1);
        if (!*(v12 - 3) && *(*(v12 - 1) + 16))
        {
        }

        if (!v26 && *(v27 + 16))
        {
        }

        sub_1C2EF66C8();
        swift_bridgeObjectRetain_n();
        v29 = v25;

        swift_bridgeObjectRetain_n();
        v30 = v28;

        v31 = sub_1C2F76B0C();

        if (v31 == -1)
        {
          v35 = v47 - 40;
          v5 = v43;
          v4 = v45;
          v12 = v41;
          if ((v43 + 40) != v47)
          {
            v36 = *v35;
            v37 = *(v47 - 24);
            *(v43 + 32) = *(v47 - 1);
            *v43 = v36;
            *(v43 + 16) = v37;
          }

          if (v41 <= v45 || (v6 = v47 - 40, v35 <= v7))
          {
            v6 = v47 - 40;
            goto LABEL_46;
          }

          goto LABEL_28;
        }

        v32 = v41 - 40;
        v4 = v45;
        v6 = v47;
        if ((v43 + 40) != v41)
        {
          v33 = *v32;
          v34 = *(v41 - 24);
          *(v43 + 32) = *(v41 - 1);
          *v43 = v33;
          *(v43 + 16) = v34;
        }

        v24 = v43 - 40;
        v12 = v41 - 40;
      }

      while (v32 > v45);
      v12 = v41 - 40;
    }
  }

  else
  {
    if (a4 != __src || &__src[40 * v9] <= a4)
    {
      memmove(a4, __src, 40 * v9);
    }

    v12 = &v4[40 * v9];
    if (v8 >= 40 && v6 < v5)
    {
      v40 = &v4[40 * v9];
      v42 = v5;
      while (1)
      {
        v13 = *(v6 + 3);
        v14 = *(v4 + 2);
        v16 = *(v4 + 3);
        v15 = *(v4 + 4);
        if (!*(v6 + 2) && *(*(v6 + 4) + 16))
        {
        }

        v44 = v4;
        v46 = v6;
        if (!v14 && *(v15 + 16))
        {
        }

        sub_1C2EF66C8();
        swift_bridgeObjectRetain_n();
        v17 = v13;

        swift_bridgeObjectRetain_n();
        v18 = v16;

        v19 = sub_1C2F76B0C();

        if (v19 != -1)
        {
          break;
        }

        v20 = v46;
        v6 = v46 + 40;
        v12 = v40;
        v21 = v42;
        if (v7 != v46)
        {
          goto LABEL_16;
        }

LABEL_17:
        v7 += 40;
        if (v4 >= v12 || v6 >= v21)
        {
          goto LABEL_44;
        }
      }

      v20 = v4;
      v4 += 40;
      v6 = v46;
      v12 = v40;
      v21 = v42;
      if (v7 == v44)
      {
        goto LABEL_17;
      }

LABEL_16:
      v22 = *v20;
      v23 = *(v20 + 1);
      *(v7 + 4) = *(v20 + 4);
      *v7 = v22;
      *(v7 + 1) = v23;
      goto LABEL_17;
    }

LABEL_44:
    v6 = v7;
  }

LABEL_46:
  v38 = (v12 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[40 * v38])
  {
    memmove(v6, v4, 40 * v38);
  }

  return 1;
}

uint64_t sub_1C2F5989C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C2F59928(v3);
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

id sub_1C2F59950(void *a1, void *a2, void *a3)
{
  v41[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076AF8, &qword_1C2F7D770);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1C2F7CD30;
    *(v6 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
    v7 = [objc_opt_self() descriptorForRequiredKeys];
    v8 = *MEMORY[0x1E695C258];
    *(v6 + 40) = v7;
    *(v6 + 48) = v8;
    v9 = *MEMORY[0x1E695C240];
    v10 = *MEMORY[0x1E695C2F0];
    *(v6 + 56) = *MEMORY[0x1E695C240];
    *(v6 + 64) = v10;
    v11 = *MEMORY[0x1E695C230];
    v12 = *MEMORY[0x1E695C208];
    *(v6 + 72) = *MEMORY[0x1E695C230];
    *(v6 + 80) = v12;
    v13 = *MEMORY[0x1E695C330];
    *(v6 + 88) = *MEMORY[0x1E695C330];
    v14 = v8;
    v15 = v9;
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    v20 = sub_1C2F766AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076B00, &unk_1C2F7B958);
    v21 = sub_1C2F767DC();

    v40[0] = 0;
    v22 = [a3 unifiedContactWithIdentifier:v20 keysToFetch:v21 error:v40];

    v23 = v40[0];
    if (v22)
    {
      return v22;
    }

    v25 = v23;
    v26 = sub_1C2F75A2C();

    swift_willThrow();
    if (qword_1EDEBC5B8 != -1)
    {
      swift_once();
    }

    v27 = sub_1C2F761FC();
    __swift_project_value_buffer(v27, qword_1EDEBDA78);

    v28 = v26;
    v29 = sub_1C2F761DC();
    v30 = sub_1C2F769EC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v41[0] = v32;
      *v31 = 136315394;
      v40[0] = a1;
      v40[1] = a2;

      v33 = sub_1C2F7670C();
      v35 = sub_1C2EFAB28(v33, v34, v41);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v40[0] = v26;
      v36 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076DF0, &unk_1C2F7A4C0);
      v37 = sub_1C2F7670C();
      v39 = sub_1C2EFAB28(v37, v38, v41);

      *(v31 + 14) = v39;
      _os_log_impl(&dword_1C2EF2000, v29, v30, "Failed to fetch unified contact with identifier: %s error: %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6929E80](v32, -1, -1);
      MEMORY[0x1C6929E80](v31, -1, -1);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1C2F59D10()
{
  v1 = sub_1C2F7612C();
  v0[24] = v1;
  v0[25] = *(v1 - 8);
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  v2 = sub_1C2F7605C();
  v0[28] = v2;
  v0[29] = *(v2 - 8);
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C2F59E40, 0, 0);
}

uint64_t sub_1C2F59E40()
{
  sub_1C2F760BC();
  v0[32] = sub_1C2F7608C();
  if (qword_1EDEBC5B8 != -1)
  {
    swift_once();
  }

  v1 = sub_1C2F761FC();
  v0[33] = __swift_project_value_buffer(v1, qword_1EDEBDA78);
  v2 = sub_1C2F761DC();
  v3 = sub_1C2F769EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C2EF2000, v2, v3, "Querying into CommTrust Blocklist for handles...", v4, 2u);
    MEMORY[0x1C6929E80](v4, -1, -1);
  }

  v0[34] = sub_1C2F7609C();
  v5 = sub_1C2F761DC();
  v6 = sub_1C2F769EC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C2EF2000, v5, v6, "Querying into CommTrust Blocklist for contacts...", v7, 2u);
    MEMORY[0x1C6929E80](v7, -1, -1);
  }

  v8 = swift_task_alloc();
  v0[35] = v8;
  *v8 = v0;
  v8[1] = sub_1C2F5A158;

  return MEMORY[0x1EEDF6260]();
}

uint64_t sub_1C2F5A158(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v5 = sub_1C2F5AD1C;
  }

  else
  {
    *(v4 + 296) = a1;
    v5 = sub_1C2F5A280;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C2F5A280()
{
  v123 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = [objc_opt_self() tu_acceptedContactStoreConfiguration];
  v96 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

  v114 = MEMORY[0x1E69E7CD0];
  if (v2 >> 62)
  {
    result = sub_1C2F76BBC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_25:
    v106 = v1;
    v38 = MEMORY[0x1E69E7CC0];
    goto LABEL_26;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (result < 1)
  {
LABEL_62:
    __break(1u);
    return result;
  }

  v5 = 0;
  v109 = v2 & 0xC000000000000001;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = &selRef_objectForKey_;
  v107 = MEMORY[0x1E69E7CC0];
  v112 = result;
  v94 = v2;
  do
  {
    if (v109)
    {
      v9 = MEMORY[0x1C6929250](v5, v2);
    }

    else
    {
      v9 = *(v2 + 8 * v5 + 32);
    }

    v10 = v9;
    v11 = [v9 v7[21]];
    v12 = sub_1C2F766CC();
    v14 = v13;

    *(v0 + 128) = v12;
    *(v0 + 136) = v14;
    v15 = swift_task_alloc();
    *(v15 + 16) = v0 + 128;
    LOBYTE(v12) = sub_1C2F569A8(sub_1C2F5C2FC, v15, v6);

    if (v12)
    {

      v8 = v112;
    }

    else
    {
      v16 = [v10 v7[21]];
      v17 = sub_1C2F766CC();
      v19 = v18;

      v20 = sub_1C2F59950(v17, v19, v96);

      if (v20)
      {
        v105 = v1;
        v21 = v20;
        SettingsPersonEntry.init(contact:)(v21, &v120);
        v97 = v121;
        v98 = v120;
        v22 = v122;
        v23 = *(&v121 + 1);

        v24 = v107;
        v102 = v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1C2F1C890(0, *(v107 + 2) + 1, 1, v107);
        }

        v26 = *(v24 + 2);
        v25 = *(v24 + 3);
        v27 = v24;
        v100 = v23;
        if (v26 >= v25 >> 1)
        {
          v27 = sub_1C2F1C890((v25 > 1), v26 + 1, 1, v24);
        }

        *(v27 + 2) = v26 + 1;
        v107 = v27;
        v28 = &v27[40 * v26];
        *(v28 + 2) = v98;
        *(v28 + 3) = v97;
        *(v28 + 8) = v22;

        v30 = sub_1C2F1CCD8(v29);

        sub_1C2F571F0(v30);
        v31 = [v10 identifier];
        v32 = sub_1C2F766CC();
        v34 = v33;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1C2F1C2F0(0, *(v6 + 2) + 1, 1, v6);
        }

        v36 = *(v6 + 2);
        v35 = *(v6 + 3);
        if (v36 >= v35 >> 1)
        {
          v6 = sub_1C2F1C2F0((v35 > 1), v36 + 1, 1, v6);
        }

        *(v6 + 2) = v36 + 1;
        v37 = &v6[16 * v36];
        *(v37 + 4) = v32;
        *(v37 + 5) = v34;
        v1 = v105;
        v2 = v94;
      }

      else
      {
      }

      v8 = v112;
      v7 = &selRef_objectForKey_;
    }

    ++v5;
  }

  while (v8 != v5);
  v106 = v1;
  v38 = v107;
LABEL_26:
  v39 = *(v0 + 272);
  v40 = *(v0 + 232);
  v41 = *(v0 + 200);

  v42 = v39 + 56;
  v93 = v39;
  v43 = -1;
  v44 = -1 << *(v39 + 32);
  if (-v44 < 64)
  {
    v43 = ~(-1 << -v44);
  }

  v45 = v43 & *(v39 + 56);
  v46 = (63 - v44) >> 6;
  v113 = *MEMORY[0x1E696ED80];
  v110 = (v41 + 8);
  v111 = (v41 + 104);
  v92 = v40;
  v88 = MEMORY[0x1E69E7CC0];
  v89 = (v40 + 8);
  v108 = v38;
  v90 = v46;
  v91 = v39 + 56;
  v47 = 0;
  if (v45)
  {
    while (1)
    {
      while (1)
      {
        v48 = v47;
LABEL_33:
        v50 = *(v0 + 240);
        v49 = *(v0 + 248);
        v52 = *(v0 + 216);
        v51 = *(v0 + 224);
        v53 = *(v0 + 208);
        v54 = *(v0 + 192);
        (*(v92 + 16))(v49, *(v93 + 48) + *(v92 + 72) * (__clz(__rbit64(v45)) | (v48 << 6)), v51);
        (*(v92 + 32))(v50, v49, v51);
        v55 = sub_1C2F7604C();
        v101 = v56;
        v103 = v55;
        sub_1C2F7603C();
        v99 = *v111;
        (*v111)(v53, v113, v54);
        sub_1C2F5C354(&unk_1EDEBC5C0, MEMORY[0x1E696EDA8], MEMORY[0x1E696EDB8]);
        sub_1C2F767BC();
        sub_1C2F767BC();
        v57 = *v110;
        (*v110)(v53, v54);
        v57(v52, v54);
        v58 = *(v0 + 144);
        v59 = *(v0 + 152);
        v60 = sub_1C2F7604C();
        v62 = v61;
        if (v58 == v59 && (v63 = sub_1C2F766AC(), v64 = PNCopyBestGuessCountryCodeForNumber(), v63, v64))
        {
          v65 = sub_1C2F766AC();
          v66 = CFPhoneNumberCreate();

          if (v66)
          {
            String = CFPhoneNumberCreateString();
            if (String)
            {
              v68 = String;
              v95 = sub_1C2F766CC();
              v70 = v69;

              v62 = v70;
            }

            else
            {
              v95 = v60;
            }
          }

          else
          {
            v95 = v60;
          }
        }

        else
        {
          v95 = v60;
        }

        v45 &= v45 - 1;
        v72 = *(v0 + 208);
        v71 = *(v0 + 216);
        v73 = *(v0 + 192);
        sub_1C2F7603C();
        v99(v72, v113, v73);
        sub_1C2F767BC();
        sub_1C2F767BC();
        v57(v72, v73);
        v57(v71, v73);
        v74 = *(v0 + 160) != *(v0 + 168);
        *(v0 + 88) = v103;
        *(v0 + 96) = v101;
        *(v0 + 104) = v95;
        *(v0 + 112) = v62;
        *(v0 + 120) = v74;
        if ((sub_1C2F56B4C((v0 + 88), v114) & 1) == 0)
        {
          break;
        }

        (*v89)(*(v0 + 240), *(v0 + 224));
        result = sub_1C2F5C39C(v0 + 88);
        v47 = v48;
        v38 = v108;
        v46 = v90;
        v42 = v91;
        if (!v45)
        {
          goto LABEL_30;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076580, &qword_1C2F79BE0);
      v75 = swift_allocObject();
      v76 = *(v0 + 88);
      *(v75 + 16) = xmmword_1C2F78B90;
      *(v75 + 32) = v76;
      *(v75 + 48) = *(v0 + 104);
      *(v75 + 64) = *(v0 + 120);
      sub_1C2F76FEC();
      MEMORY[0x1C6929580](0);
      v77 = *(v75 + 16);

      if (v77)
      {
        break;
      }

LABEL_48:

      *(v0 + 48) = v117;
      *(v0 + 64) = v118;
      *(v0 + 80) = v119;
      *(v0 + 16) = v115;
      *(v0 + 32) = v116;
      v81 = sub_1C2F76FCC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = sub_1C2F1C890(0, *(v88 + 2) + 1, 1, v88);
      }

      v38 = v108;
      v83 = *(v88 + 2);
      v82 = *(v88 + 3);
      if (v83 >= v82 >> 1)
      {
        v88 = sub_1C2F1C890((v82 > 1), v83 + 1, 1, v88);
      }

      result = (*v89)(*(v0 + 240), *(v0 + 224));
      *(v88 + 2) = v83 + 1;
      v84 = &v88[40 * v83];
      *(v84 + 4) = v81;
      *(v84 + 5) = 0;
      *(v84 + 6) = 0;
      *(v84 + 7) = 0;
      *(v84 + 8) = v75;
      v46 = v90;
      v42 = v91;
      v47 = v48;
      if (!v45)
      {
        goto LABEL_30;
      }
    }

    v78 = 0;
    v79 = (v75 + 64);
    while (v78 < *(v75 + 16))
    {
      ++v78;
      v104 = *v79;
      sub_1C2F76F9C();

      sub_1C2F7673C();
      sub_1C2F7673C();
      MEMORY[0x1C6929580](v104);
      v80 = sub_1C2F76FDC();
      MEMORY[0x1C6929580](v80);

      v79 += 40;
      if (v77 == v78)
      {
        goto LABEL_48;
      }
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  while (1)
  {
LABEL_30:
    v48 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
      goto LABEL_61;
    }

    if (v48 >= v46)
    {
      break;
    }

    v45 = *(v42 + 8 * v48);
    ++v47;
    if (v45)
    {
      goto LABEL_33;
    }
  }

  *&v120 = v38;

  sub_1C2F586E8(&v120);
  if (v106)
  {
  }

  else
  {
    v85 = v120;
    *&v120 = v88;

    sub_1C2F586E8(&v120);

    v86 = v120;

    v87 = *(v0 + 8);

    return v87(v85, v86);
  }
}

void sub_1C2F5AD1C()
{
  v132 = v0;
  v1 = *(v0 + 288);
  v2 = v1;
  v3 = sub_1C2F761DC();
  v4 = sub_1C2F769DC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 288);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v129 = v7;
    *v6 = 136315138;
    *(v0 + 176) = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076DF0, &unk_1C2F7A4C0);
    v9 = sub_1C2F7670C();
    v11 = sub_1C2EFAB28(v9, v10, &v129);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1C2EF2000, v3, v4, "Failed to fetch blocklist contacts %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1C6929E80](v7, -1, -1);
    MEMORY[0x1C6929E80](v6, -1, -1);
  }

  else
  {
    v5 = *(v0 + 288);
  }

  v12 = [objc_opt_self() tu_acceptedContactStoreConfiguration];
  v107 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

  v123 = MEMORY[0x1E69E7CD0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_63;
  }

  for (i = *((MEMORY[0x1E69E7CC0] & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C2F76BBC())
  {
    v14 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      if (i < 1)
      {
        __break(1u);
        return;
      }

      v15 = 0;
      v16 = 0;
      v117 = MEMORY[0x1E69E7CC0] >> 62;
      v17 = &selRef_objectForKey_;
      v122 = MEMORY[0x1E69E7CC0];
      v115 = MEMORY[0x1E69E7CC0];
      v105 = i;
      do
      {
        if (v117)
        {
          v18 = MEMORY[0x1C6929250](v16, v14);
        }

        else
        {
          v18 = *&v14[8 * v16 + 32];
        }

        v19 = v18;
        v20 = [v18 v17[21]];
        v21 = sub_1C2F766CC();
        v23 = v22;

        *(v0 + 128) = v21;
        *(v0 + 136) = v23;
        v24 = swift_task_alloc();
        *(v24 + 16) = v0 + 128;
        LOBYTE(v21) = sub_1C2F569A8(sub_1C2F5C2FC, v24, v122);

        if (v21)
        {
        }

        else
        {
          v25 = [v19 v17[21]];
          v26 = sub_1C2F766CC();
          v28 = v27;

          v29 = sub_1C2F59950(v26, v28, v107);

          if (v29)
          {
            v30 = v29;
            SettingsPersonEntry.init(contact:)(v30, &v129);
            v108 = v130;
            v111 = v129;
            v31 = v131;
            v32 = *(&v130 + 1);

            v33 = v115;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v33 = sub_1C2F1C890(0, *(v115 + 2) + 1, 1, v115);
            }

            v35 = *(v33 + 2);
            v34 = *(v33 + 3);
            v36 = v33;
            v120 = v15;
            v113 = v32;
            if (v35 >= v34 >> 1)
            {
              v36 = sub_1C2F1C890((v34 > 1), v35 + 1, 1, v33);
            }

            *(v36 + 2) = v35 + 1;
            v115 = v36;
            v37 = &v36[40 * v35];
            *(v37 + 2) = v111;
            *(v37 + 3) = v108;
            *(v37 + 8) = v31;

            v39 = sub_1C2F1CCD8(v38);

            sub_1C2F571F0(v39);
            v40 = [v19 identifier];
            v41 = sub_1C2F766CC();
            v43 = v42;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v122 = sub_1C2F1C2F0(0, *(v122 + 2) + 1, 1, v122);
            }

            v45 = *(v122 + 2);
            v44 = *(v122 + 3);
            if (v45 >= v44 >> 1)
            {
              v122 = sub_1C2F1C2F0((v44 > 1), v45 + 1, 1, v122);
            }

            *(v122 + 2) = v45 + 1;
            v46 = &v122[16 * v45];
            *(v46 + 4) = v41;
            *(v46 + 5) = v43;
            v15 = v120;
            i = v105;
            v14 = MEMORY[0x1E69E7CC0];
          }

          else
          {
          }

          v17 = &selRef_objectForKey_;
        }

        ++v16;
      }

      while (i != v16);
      v14 = v115;
    }

    else
    {
      v15 = 0;
    }

    v47 = *(v0 + 272);
    v48 = *(v0 + 232);
    v49 = *(v0 + 200);
    v98 = MEMORY[0x1E69E7CC0];

    v50 = v47 + 56;
    v103 = v47;
    v51 = -1;
    v52 = -1 << *(v47 + 32);
    if (-v52 < 64)
    {
      v51 = ~(-1 << -v52);
    }

    v53 = v51 & *(v47 + 56);
    v54 = (63 - v52) >> 6;
    v119 = *MEMORY[0x1E696ED80];
    v118 = (v49 + 104);
    v114 = (v49 + 8);
    v102 = v48;
    v99 = (v48 + 8);
    v97 = xmmword_1C2F78B90;
    v116 = v14;
    v100 = v54;
    v101 = v47 + 56;
    v55 = 0;
    if (!v53)
    {
      break;
    }

    while (1)
    {
      while (1)
      {
        v121 = v15;
        v56 = v55;
LABEL_37:
        v58 = *(v0 + 240);
        v57 = *(v0 + 248);
        v60 = *(v0 + 216);
        v59 = *(v0 + 224);
        v61 = *(v0 + 208);
        v62 = *(v0 + 192);
        (*(v102 + 16))(v57, *(v103 + 48) + *(v102 + 72) * (__clz(__rbit64(v53)) | (v56 << 6)), v59);
        (*(v102 + 32))(v58, v57, v59);
        v112 = sub_1C2F7604C();
        v109 = v63;
        sub_1C2F7603C();
        v106 = *v118;
        (*v118)(v61, v119, v62);
        sub_1C2F5C354(&unk_1EDEBC5C0, MEMORY[0x1E696EDA8], MEMORY[0x1E696EDB8]);
        sub_1C2F767BC();
        sub_1C2F767BC();
        v64 = *v114;
        (*v114)(v61, v62);
        v64(v60, v62);
        v65 = *(v0 + 144);
        v66 = *(v0 + 152);
        v67 = sub_1C2F7604C();
        v69 = v68;
        if (v65 == v66 && (v70 = sub_1C2F766AC(), v71 = PNCopyBestGuessCountryCodeForNumber(), v70, v71))
        {
          v72 = sub_1C2F766AC();
          v73 = CFPhoneNumberCreate();

          if (v73)
          {
            String = CFPhoneNumberCreateString();
            if (String)
            {
              v75 = String;
              v104 = sub_1C2F766CC();
              v77 = v76;

              v69 = v77;
            }

            else
            {
              v104 = v67;
            }
          }

          else
          {
            v104 = v67;
          }
        }

        else
        {
          v104 = v67;
        }

        v53 &= v53 - 1;
        v79 = *(v0 + 208);
        v78 = *(v0 + 216);
        v80 = *(v0 + 192);
        sub_1C2F7603C();
        v106(v79, v119, v80);
        sub_1C2F767BC();
        sub_1C2F767BC();
        v64(v79, v80);
        v64(v78, v80);
        v81 = *(v0 + 160) != *(v0 + 168);
        *(v0 + 88) = v112;
        *(v0 + 96) = v109;
        *(v0 + 104) = v104;
        *(v0 + 112) = v69;
        *(v0 + 120) = v81;
        if ((sub_1C2F56B4C((v0 + 88), v123) & 1) == 0)
        {
          break;
        }

        (*v99)(*(v0 + 240), *(v0 + 224));
        sub_1C2F5C39C(v0 + 88);
        v55 = v56;
        v14 = v116;
        v15 = v121;
        v54 = v100;
        v50 = v101;
        if (!v53)
        {
          goto LABEL_33;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076580, &qword_1C2F79BE0);
      v82 = swift_allocObject();
      v83 = *(v0 + 88);
      *(v82 + 16) = xmmword_1C2F78B90;
      *(v82 + 32) = v83;
      *(v82 + 48) = *(v0 + 104);
      *(v82 + 64) = *(v0 + 120);
      sub_1C2F76FEC();
      MEMORY[0x1C6929580](0);
      v84 = *(v82 + 16);

      if (v84)
      {
        break;
      }

LABEL_52:

      *(v0 + 48) = v126;
      *(v0 + 64) = v127;
      *(v0 + 80) = v128;
      *(v0 + 16) = v124;
      *(v0 + 32) = v125;
      v90 = sub_1C2F76FCC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v98 = sub_1C2F1C890(0, *(v98 + 2) + 1, 1, v98);
      }

      v14 = v116;
      v15 = v121;
      v92 = *(v98 + 2);
      v91 = *(v98 + 3);
      if (v92 >= v91 >> 1)
      {
        v98 = sub_1C2F1C890((v91 > 1), v92 + 1, 1, v98);
      }

      (*v99)(*(v0 + 240), *(v0 + 224));
      *(v98 + 2) = v92 + 1;
      v93 = &v98[40 * v92];
      *(v93 + 4) = v90;
      *(v93 + 5) = 0;
      *(v93 + 6) = 0;
      *(v93 + 7) = 0;
      *(v93 + 8) = v82;
      v54 = v100;
      v50 = v101;
      v55 = v56;
      if (!v53)
      {
        goto LABEL_33;
      }
    }

    v85 = 0;
    v86 = (v82 + 64);
    v110 = v82;
    while (v85 < *(v82 + 16))
    {
      ++v85;
      v87 = *v86;
      sub_1C2F76F9C();

      sub_1C2F7673C();
      sub_1C2F7673C();
      v88 = v87;
      v82 = v110;
      MEMORY[0x1C6929580](v88);
      v89 = sub_1C2F76FDC();
      MEMORY[0x1C6929580](v89);

      v86 += 40;
      if (v84 == v85)
      {
        goto LABEL_52;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    ;
  }

  while (1)
  {
LABEL_33:
    v56 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    if (v56 >= v54)
    {
      break;
    }

    v53 = *(v50 + 8 * v56);
    ++v55;
    if (v53)
    {
      v121 = v15;
      goto LABEL_37;
    }
  }

  *&v129 = v14;

  sub_1C2F586E8(&v129);
  v94 = v129;
  *&v129 = v98;

  sub_1C2F586E8(&v129);

  v95 = v129;

  v96 = *(v0 + 8);

  v96(v94, v95);
}

uint64_t sub_1C2F5B8E0(__int128 *a1)
{
  v66 = sub_1C2F7612C();
  v69 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1C2F7616C();
  v68 = *(v71 - 8);
  v3 = MEMORY[0x1EEE9AC00](v71);
  v63 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v70 = v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v58 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v58 - v13;
  v15 = *a1;
  v72 = a1[1];
  v61 = v15;
  v16 = *(a1 + 4);
  if (qword_1EDEBC5B8 != -1)
  {
    swift_once();
  }

  v17 = sub_1C2F761FC();
  __swift_project_value_buffer(v17, qword_1EDEBDA78);
  v18 = *(&v72 + 1);
  v19 = *(&v72 + 1);

  v20 = sub_1C2F761DC();
  v21 = sub_1C2F769EC();

  v22 = v21;
  v23 = os_log_type_enabled(v20, v21);
  v62 = v19;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v67 = v9;
    v25 = v24;
    v26 = swift_slowAlloc();
    v75 = v16;
    v76[0] = v26;
    *v25 = 136315138;
    v74 = v72;
    v73 = v61;

    v27 = v19;
    v28 = v16;

    v29 = sub_1C2F7670C();
    v31 = sub_1C2EFAB28(v29, v30, v76);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_1C2EF2000, v20, v22, "deleteBlocklistEntry %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1C6929E80](v26, -1, -1);
    v32 = v25;
    v9 = v67;
    MEMORY[0x1C6929E80](v32, -1, -1);
  }

  else
  {
    v28 = v16;
  }

  sub_1C2F760BC();
  v33 = sub_1C2F7608C();
  v34 = v70;
  v35 = v71;
  if (v18)
  {
    v36 = v33;
    v37 = sub_1C2F768AC();
    (*(*(v37 - 8) + 56))(v14, 1, 1, v37);
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v39 = v62;
    v38[4] = v36;
    v38[5] = v39;
    v40 = v39;
    sub_1C2F574B0(0, 0, v14, &unk_1C2F7CD98, v38);
  }

  else
  {
    v41 = *(v28 + 16);
    if (v41)
    {
      v62 = v33;
      v67 = v9;
      *&v61 = *(v69 + 104);
      v69 += 104;
      v60 = *MEMORY[0x1E696ED80];
      v59 = *MEMORY[0x1E696ED90];
      v58[2] = v68 + 16;
      v58[1] = v68 + 32;
      v58[0] = v68 + 8;
      v42 = (v28 + 64);
      do
      {
        *&v72 = v41;
        if (*v42)
        {
          v43 = v59;
        }

        else
        {
          v43 = v60;
        }

        (v61)(v65, v43, v66);

        sub_1C2F7613C();
        v44 = sub_1C2F768AC();
        v45 = *(v44 - 8);
        (*(v45 + 56))(v12, 1, 1, v44);
        v46 = v68;
        v47 = v12;
        v48 = v63;
        (*(v68 + 16))(v63, v34, v35);
        v49 = (*(v46 + 80) + 40) & ~*(v46 + 80);
        v50 = swift_allocObject();
        *(v50 + 2) = 0;
        *(v50 + 3) = 0;
        *(v50 + 4) = v62;
        v51 = v48;
        v12 = v47;
        (*(v46 + 32))(&v50[v49], v51, v35);
        v52 = v67;
        sub_1C2F5C164(v47, v67);
        LODWORD(v49) = (*(v45 + 48))(v52, 1, v44);

        if (v49 == 1)
        {
          sub_1C2F5C1D4(v52);
        }

        else
        {
          sub_1C2F7689C();
          (*(v45 + 8))(v52, v44);
        }

        v53 = *(v50 + 2);
        swift_unknownObjectRetain();

        if (v53)
        {
          swift_getObjectType();
          v54 = sub_1C2F7684C();
          v56 = v55;
          swift_unknownObjectRelease();
        }

        else
        {
          v54 = 0;
          v56 = 0;
        }

        sub_1C2F5C1D4(v47);
        if (v56 | v54)
        {
          v76[1] = 0;
          v76[2] = 0;
          v76[3] = v54;
          v76[4] = v56;
        }

        swift_task_create();

        v34 = v70;
        v35 = v71;
        (*v58[0])(v70, v71);
        v42 += 40;
        v41 = v72 - 1;
      }

      while (v72 != 1);
    }
  }
}

uint64_t sub_1C2F5C06C(uint64_t a1)
{
  v4 = *(sub_1C2F7616C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C2F06348;

  return sub_1C2F5771C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1C2F5C164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2F5C1D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2F5C23C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C2F0AC48;

  return sub_1C2F57410(a1, v4, v5, v7, v6);
}

uint64_t sub_1C2F5C2FC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C2F76EFC() & 1;
  }
}

uint64_t sub_1C2F5C354(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *AudioCallPunchOutMoreMenuViewModel.__allocating_init(call:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = 0;
  return result;
}

void *AudioCallPunchOutMoreMenuViewModel.init(call:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v3[5] = 0;
  return v3;
}

uint64_t AudioCallPunchOutMoreMenuViewModel.createMenuItem()()
{
  v1 = v0;
  v50 = 0;
  v2 = sub_1C2F75AEC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v46 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v46 - v13);
  v15 = sub_1C2F5CA7C();
  v49 = v16;
  sub_1C2F5CDF8(v14);
  v17 = *(v0 + 32);
  v48 = *(v0 + 24);
  v46 = v17;
  v51 = v14;
  sub_1C2F4F4BC(v14, v12);
  sub_1C2F75ADC();
  type metadata accessor for FTMenuItem(0);
  v18 = swift_allocObject();
  v19 = (v18 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
  *v19 = 0;
  v19[1] = 0;
  v20 = v18 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  v21 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  v22 = type metadata accessor for FTMenuItem.IconType(0);
  (*(*(v22 - 8) + 56))(v18 + v21, 1, 1, v22);
  *(v18 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
  v23 = (v18 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v23 = 0;
  v23[1] = 0;
  *(v18 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
  *(v18 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
  v24 = (v18 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v18 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  v25[1] = 0;
  v25[2] = 0;
  *v25 = 0;
  sub_1C2F75DDC();
  v52 = v3;
  v53 = v2;
  v26 = *(v3 + 16);
  v47 = v5;
  v26(v18 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, v5, v2);
  v27 = (v18 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  v28 = v49;
  *v27 = v15;
  v27[1] = v28;
  sub_1C2F4F468(*v20, *(v20 + 8), *(v20 + 16), *(v20 + 24));
  *v20 = 0u;
  *(v20 + 16) = 0u;
  v49 = v12;
  sub_1C2F4F4BC(v12, v9);
  sub_1C2F4F548(v18 + v21);
  v29 = v18 + v21;
  v30 = v46;
  sub_1C2F4F72C(v9, v29);
  *(v18 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 1;
  *(v18 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = 0;
  *(v18 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = 1;
  *(v18 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = 0;
  v31 = (v18 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
  *v31 = v48;
  v31[1] = v30;
  v32 = (v18 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
  *v32 = nullsub_1;
  v32[1] = 0;
  v33 = (v18 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  swift_beginAccess();
  if (v33[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v46 - 3) = 0;
    *(&v46 - 2) = 0;
    *(&v46 - 4) = v18;
    v55 = v18;
    sub_1C2F5D17C();

    sub_1C2F75D9C();
  }

  else
  {
    *v33 = 0;
    v33[1] = 0;
  }

  v35 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  if (*(v18 + v35))
  {
    v36 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v36);
    *(&v46 - 2) = v18;
    *(&v46 - 1) = 0;
    v54 = v18;
    sub_1C2F5D17C();
    sub_1C2F75D9C();
  }

  (*(v52 + 8))(v47, v53);
  sub_1C2F4F548(v49);
  sub_1C2F4F548(v51);
  *(v1 + 40) = v18;

  v37 = *(v1 + 16);
  if (v37)
  {
    v38 = v37;
    v39 = [v38 provider];
    v40 = [v39 isSystemProvider];

    if ((v40 & 1) == 0)
    {
    }
  }

  if (qword_1EDEBC5B8 != -1)
  {
    swift_once();
  }

  v41 = sub_1C2F761FC();
  __swift_project_value_buffer(v41, qword_1EDEBDA78);
  v42 = sub_1C2F761DC();
  v43 = sub_1C2F769EC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_1C2EF2000, v42, v43, "Not creating punchout more menu item as call is system provider", v44, 2u);
    MEMORY[0x1C6929E80](v44, -1, -1);
  }

  return 0;
}

uint64_t sub_1C2F5CA7C()
{
  v1 = sub_1C2F75C8C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1C2F7669C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23[-v7];
  v9 = *(v0 + 16);
  if (v9)
  {
    v10 = v9;
    sub_1C2F7663C();
    (*(v3 + 16))(v6, v8, v2);
    type metadata accessor for StringDummy();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    sub_1C2F75BFC();
    sub_1C2F766EC();
    (*(v3 + 8))(v8, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076E30, &qword_1C2F7CE88);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C2F78B90;
    v14 = [v10 provider];
    v15 = [v14 localizedName];

    v16 = sub_1C2F766CC();
    v18 = v17;

    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_1C2F5D2EC();
    *(v13 + 32) = v16;
    *(v13 + 40) = v18;
    v19 = sub_1C2F766DC();
  }

  else
  {
    sub_1C2F7663C();
    (*(v3 + 16))(v6, v8, v2);
    type metadata accessor for StringDummy();
    v20 = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass_];
    sub_1C2F75BFC();
    v19 = sub_1C2F766EC();
    (*(v3 + 8))(v8, v2);
  }

  return v19;
}

id sub_1C2F5CDF8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = objc_allocWithZone(MEMORY[0x1E695DEE0]);
  v5 = v3;
  v6 = [v4 init];
  v7 = [v5 provider];
  result = [v7 identifier];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = result;

  v10 = [v6 objectForKey_];
  if (!v10)
  {
    v17 = [v5 provider];
    v18 = [v17 iconTemplateImageData];

    if (v18)
    {
      v19 = sub_1C2F75A7C();
      v21 = v20;

      v22 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      sub_1C2F5D244(v19, v21);
      v23 = sub_1C2F75A6C();
      v24 = [v22 initWithData_];

      sub_1C2F5D298(v19, v21);
      if (v24)
      {
        v25 = [v5 provider];
        result = [v25 identifier];
        if (result)
        {
          v26 = result;

          [v6 setObject:v24 forKey:v26];
          v27 = [v24 imageWithRenderingMode_];
          v28 = sub_1C2F7644C();

          sub_1C2F5D298(v19, v21);
          *a1 = v28;
          goto LABEL_5;
        }

LABEL_17:
        __break(1u);
        return result;
      }

      sub_1C2F5D298(v19, v21);
    }

    else
    {
    }

LABEL_12:
    v29 = type metadata accessor for FTMenuItem.IconType(0);
    v13 = *(*(v29 - 8) + 56);
    v16 = v29;
    v14 = a1;
    v15 = 1;
    goto LABEL_13;
  }

  v11 = sub_1C2F7644C();

  *a1 = v11;
LABEL_5:
  v12 = type metadata accessor for FTMenuItem.IconType(0);
  swift_storeEnumTagMultiPayload();
  v13 = *(*(v12 - 8) + 56);
  v14 = a1;
  v15 = 0;
  v16 = v12;
LABEL_13:

  return v13(v14, v15, 1, v16);
}

uint64_t AudioCallPunchOutMoreMenuViewModel.deinit()
{

  return v0;
}

uint64_t AudioCallPunchOutMoreMenuViewModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1C2F5D17C()
{
  result = qword_1EDEBD520;
  if (!qword_1EDEBD520)
  {
    type metadata accessor for FTMenuItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBD520);
  }

  return result;
}

uint64_t sub_1C2F5D244(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1C2F5D298(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_1C2F5D2EC()
{
  result = qword_1EC076E38;
  if (!qword_1EC076E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076E38);
  }

  return result;
}

uint64_t AudioCallSplitCallMoreMenuViewModel.__allocating_init(callCenter:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  v4 = *(a1 + 16);

  v5 = [v4 conferenceParticipantCalls];
  sub_1C2EF5A14(0, &qword_1EC0760C0, 0x1E69D8A40);
  v6 = sub_1C2F767EC();

  *(v2 + 24) = v6;
  return v2;
}

uint64_t AudioCallSplitCallMoreMenuViewModel.init(callCenter:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = a1;
  *(v1 + 24) = v2;
  v3 = *(a1 + 16);

  v4 = [v3 conferenceParticipantCalls];
  sub_1C2EF5A14(0, &qword_1EC0760C0, 0x1E69D8A40);
  v5 = sub_1C2F767EC();

  *(v1 + 24) = v5;

  return v1;
}

void *AudioCallSplitCallMoreMenuViewModel.createMenuItem()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076E40, &qword_1C2F7CE90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v33 - v3;
  v40 = type metadata accessor for FTMenuContextMenuView.ContextMenuItem(0);
  v36 = *(v40 - 8);
  v5 = MEMORY[0x1EEE9AC00](v40);
  v39 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v33 - v7;
  v8 = *(v0 + 24);
  if (v8 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C2F76BBC())
  {
    v10 = i <= 2;
    v11 = i <= 2 ? 0x61432074696C7053 : 0xD000000000000010;
    v12 = v10 ? 0xEA00000000006C6CLL : 0x80000001C2F80010;
    v33 = _s20CommunicationsUICore10FTMenuItemC13splitCallsRow5titleACSS_tFZ_0(v11, v12);

    v13 = *(v1 + 24);
    v14 = v13 >> 62 ? sub_1C2F76BBC() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v14)
    {
      break;
    }

    v15 = 0;
    v37 = v13 & 0xFFFFFFFFFFFFFF8;
    v38 = v13 & 0xC000000000000001;
    v16 = (v36 + 48);
    v17 = MEMORY[0x1E69E7CC0];
    v34 = v1;
    while (1)
    {
      if (v38)
      {
        v18 = MEMORY[0x1C6929250](v15, v13);
      }

      else
      {
        if (v15 >= *(v37 + 16))
        {
          goto LABEL_36;
        }

        v18 = *(v13 + 8 * v15 + 32);
      }

      v19 = v18;
      v20 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v41 = v18;
      sub_1C2F5D9DC(&v41, v1, v4);

      if ((*v16)(v4, 1, v40) == 1)
      {
        sub_1C2F0A8D8(v4, &qword_1EC076E40, &qword_1C2F7CE90);
      }

      else
      {
        v21 = v35;
        sub_1C2F5E594(v4, v35);
        sub_1C2F5E594(v21, v39);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1C2F1C9B0(0, v17[2] + 1, 1, v17);
        }

        v23 = v17[2];
        v22 = v17[3];
        if (v23 >= v22 >> 1)
        {
          v17 = sub_1C2F1C9B0((v22 > 1), v23 + 1, 1, v17);
        }

        v17[2] = v23 + 1;
        sub_1C2F5E594(v39, v17 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v23);
        v1 = v34;
      }

      ++v15;
      if (v20 == v14)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_27:

  if (v17[2])
  {
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = v17;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v27 = v33;
    *(&v33 - 4) = v33;
    *(&v33 - 3) = 1;
    *(&v33 - 2) = sub_1C2F5E64C;
    *(&v33 - 1) = v25;
    v41 = v27;
    sub_1C2F5D17C();

    sub_1C2F75D9C();
  }

  else
  {

    if (qword_1EDEBC5B8 != -1)
    {
      swift_once();
    }

    v28 = sub_1C2F761FC();
    __swift_project_value_buffer(v28, qword_1EDEBDA78);
    v29 = sub_1C2F761DC();
    v30 = sub_1C2F769EC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1C2EF2000, v29, v30, "No need to show this split call row as no one's carrier supports ungrouping", v31, 2u);
      MEMORY[0x1C6929E80](v31, -1, -1);
    }

    return 0;
  }

  return v27;
}

uint64_t sub_1C2F5D9DC@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1C2F75AEC();
  v75 = *(v7 - 8);
  v76 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v67 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v67 - v16;
  v18 = *a1;
  v19 = [*a1 model];
  v20 = [v19 supportsUngrouping];

  if (v20 && ((v21 = [*(*(a2 + 16) + 16) currentCallGroups], sub_1C2EF5A14(0, &qword_1EC076970, 0x1E69D8A70), v22 = sub_1C2F767EC(), v21, v22 >> 62) ? (v23 = sub_1C2F76BBC()) : (v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v23 == 1))
  {
    v72 = a3;
    v73 = v3;
    v24 = [v18 displayFirstName];
    if (!v24)
    {
      v24 = [v18 displayName];
    }

    v25 = v24;
    v26 = sub_1C2F766CC();
    v68 = v27;
    v69 = v26;

    v28 = type metadata accessor for FTMenuItem.IconType(0);
    v67 = *(*(v28 - 8) + 56);
    v67(v17, 1, 1, v28);
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = v18;
    v71 = v17;
    sub_1C2F4F4BC(v17, v15);
    v70 = v29;

    v31 = v18;
    v32 = v15;
    v33 = v74;
    sub_1C2F75ADC();
    type metadata accessor for FTMenuItem(0);
    v34 = swift_allocObject();
    v35 = (v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
    *v35 = 0;
    v35[1] = 0;
    v36 = v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
    *v36 = 0u;
    *(v36 + 16) = 0u;
    v37 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
    v67((v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon), 1, 1, v28);
    *(v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
    v38 = (v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
    *v38 = 0;
    v38[1] = 0;
    *(v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
    *(v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
    v39 = (v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
    *v39 = 0;
    v39[1] = 0;
    v40 = (v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
    v40[1] = 0;
    v40[2] = 0;
    *v40 = 0;
    sub_1C2F75DDC();
    (*(v75 + 16))(v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, v33, v76);
    v41 = (v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
    v42 = v68;
    *v41 = v69;
    v41[1] = v42;
    sub_1C2F4F468(*v36, *(v36 + 8), *(v36 + 16), *(v36 + 24));
    *v36 = 0u;
    *(v36 + 16) = 0u;
    v69 = v32;
    sub_1C2F4F4BC(v32, v12);
    sub_1C2F0A8D8(v34 + v37, &qword_1EC076C80, &qword_1C2F7CDB0);
    sub_1C2F4F72C(v12, v34 + v37);
    *(v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 1;
    *(v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = 0;
    *(v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = 1;
    *(v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = 0;
    v43 = (v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
    *v43 = sub_1C2F5E6F8;
    v43[1] = v30;
    v44 = (v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
    *v44 = nullsub_1;
    v44[1] = 0;
    v45 = (v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
    swift_beginAccess();
    if (v45[1])
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v67 - 3) = 0;
      *(&v67 - 2) = 0;
      *(&v67 - 4) = v34;
      v77 = v34;
      sub_1C2F5D17C();

      sub_1C2F75D9C();
    }

    else
    {
      *v45 = 0;
      v45[1] = 0;
    }

    v62 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
    swift_beginAccess();
    v64 = v71;
    v63 = v72;
    if (*(v34 + v62))
    {
      v65 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v65);
      *(&v67 - 2) = v34;
      *(&v67 - 1) = 0;
      v78[4] = v34;
      sub_1C2F5D17C();
      sub_1C2F75D9C();
    }

    (*(v75 + 8))(v74, v76);
    sub_1C2F0A8D8(v69, &qword_1EC076C80, &qword_1C2F7CDB0);
    sub_1C2F0A8D8(v64, &qword_1EC076C80, &qword_1C2F7CDB0);

    sub_1C2F75ADC();
    v66 = type metadata accessor for FTMenuContextMenuView.ContextMenuItem(0);
    *(v63 + *(v66 + 20)) = v34;
    *(v63 + *(v66 + 24)) = MEMORY[0x1E69E7CC0];
    return (*(*(v66 - 8) + 56))(v63, 0, 1, v66);
  }

  else
  {
    if (qword_1EDEBC5B8 != -1)
    {
      swift_once();
    }

    v47 = sub_1C2F761FC();
    __swift_project_value_buffer(v47, qword_1EDEBDA78);
    v48 = v18;
    v49 = sub_1C2F761DC();
    v50 = sub_1C2F769EC();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = a3;
      v53 = swift_slowAlloc();
      v78[0] = v53;
      *v51 = 136315138;
      v54 = [v48 displayName];
      v55 = sub_1C2F766CC();
      v57 = v56;

      v58 = sub_1C2EFAB28(v55, v57, v78);

      *(v51 + 4) = v58;
      _os_log_impl(&dword_1C2EF2000, v49, v50, "Carrier does not support this call %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      v59 = v53;
      a3 = v52;
      MEMORY[0x1C6929E80](v59, -1, -1);
      MEMORY[0x1C6929E80](v51, -1, -1);
    }

    v60 = type metadata accessor for FTMenuContextMenuView.ContextMenuItem(0);
    return (*(*(v60 - 8) + 56))(a3, 1, 1, v60);
  }
}

uint64_t sub_1C2F5E2BC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (qword_1EDEBC5B8 != -1)
    {
      swift_once();
    }

    v5 = sub_1C2F761FC();
    __swift_project_value_buffer(v5, qword_1EDEBDA78);
    v6 = a2;
    v7 = sub_1C2F761DC();
    v8 = sub_1C2F769EC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      sub_1C2EF5A14(0, &qword_1EC0760C0, 0x1E69D8A40);
      v11 = v6;
      v12 = sub_1C2F7670C();
      v14 = sub_1C2EFAB28(v12, v13, &v15);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_1C2EF2000, v7, v8, "Taking call private %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1C6929E80](v10, -1, -1);
      MEMORY[0x1C6929E80](v9, -1, -1);
    }

    [*(*(v4 + 16) + 16) ungroupCall_];
  }

  return result;
}

uint64_t sub_1C2F5E484(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1C2F5E6A4();

    sub_1C2F764AC();
    return 0xD000000000000013;
  }

  return result;
}

uint64_t AudioCallSplitCallMoreMenuViewModel.deinit()
{

  return v0;
}

uint64_t sub_1C2F5E594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTMenuContextMenuView.ContextMenuItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2F5E5F8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{

  return a1(v1, 32, 7);
}

unint64_t sub_1C2F5E6A4()
{
  result = qword_1EC076E48;
  if (!qword_1EC076E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076E48);
  }

  return result;
}

void sub_1C2F5E700()
{
  type metadata accessor for ContactStoreProvider();
  v0 = swift_allocObject();
  *(v0 + 24) = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 tu_assumedIdentity];

  *(v0 + 16) = v2;
  qword_1EC076E50 = v0;
}

uint64_t ContactStoreProvider.__allocating_init(defaultAssumedIdentity:)(id a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  if (!a1)
  {
    v3 = [objc_opt_self() mainBundle];
    a1 = [v3 tu_assumedIdentity];
  }

  *(v2 + 16) = a1;
  return v2;
}

uint64_t static ContactStoreProvider.shared.getter()
{
  if (qword_1EC075CA0 != -1)
  {
    swift_once();
  }
}

uint64_t ContactStoreProvider.init(defaultAssumedIdentity:)(id a1)
{
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  if (!a1)
  {
    v3 = [objc_opt_self() mainBundle];
    a1 = [v3 tu_assumedIdentity];
  }

  *(v1 + 16) = a1;
  return v1;
}

id ContactStoreProvider.contactStore(for:)(uint64_t a1)
{
  if (a1)
  {
    v3 = a1;
LABEL_5:
    v4 = *(v1 + 24);
    swift_unknownObjectRetain_n();
    v5 = v4;
    tcc_identity_get_identifier();
    sub_1C2F7676C();
    v6 = sub_1C2F766AC();

    v7 = [v5 objectForKey_];
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    swift_unknownObjectRetain_n();
    goto LABEL_5;
  }

  v11 = *(v1 + 24);
  sub_1C2F5EB80();
  v5 = v11;
  v6 = sub_1C2F76ABC();
  v7 = [v5 objectForKey_];
  v3 = 0;
LABEL_6:

  if (!v7)
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E695CE28]) init];
    [v8 setAssumedIdentity_];
    [v8 setIncludeAcceptedIntroductions_];
    v7 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
    if (a1)
    {
      swift_unknownObjectRetain();
      tcc_identity_get_identifier();
      sub_1C2F7676C();
      v9 = *(v1 + 24);
      v10 = sub_1C2F766AC();

      [v9 setObject:v7 forKey:v10];
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = *(v1 + 24);
      sub_1C2F5EB80();
      v9 = v12;
      v10 = sub_1C2F76ABC();
      [v9 setObject:v7 forKey:v10];
    }
  }

  swift_unknownObjectRelease();
  return v7;
}

unint64_t sub_1C2F5EB80()
{
  result = qword_1EC076E58;
  if (!qword_1EC076E58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC076E58);
  }

  return result;
}

uint64_t ContactStoreProvider.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ContactStoreProvider.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t AudioCallConferenceParticipantMoreMenuViewModel.__allocating_init(call:callCenter:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t AudioCallConferenceParticipantMoreMenuViewModel.init(call:callCenter:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t AudioCallConferenceParticipantMoreMenuViewModel.createMenuItem()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (&v16 - v2);
  v4 = *(v0 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [v5 displayFirstName];
  if (!v6)
  {
    v6 = [v5 displayName];
  }

  v7 = v6;
  v8 = sub_1C2F766CC();
  v10 = v9;

  sub_1C2F5EE60(v5, v3);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v5;
  v13 = v5;

  v14 = _s20CommunicationsUICore10FTMenuItemC24conferenceParticipantRow5title8iconType13endCallActionACSS_AC04IconJ0OSgyyctFZ_0(v8, v10, v3, sub_1C2F5F0CC, v12);

  sub_1C2F4F548(v3);

  return v14;
}

uint64_t sub_1C2F5EE60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = [a1 remoteParticipantHandles];
  sub_1C2F5F1B0();
  sub_1C2F2FA98();
  v4 = sub_1C2F7697C();

  v5 = sub_1C2F2DEE8(v4);

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076E20, &qword_1C2F79BB0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1C2F78B90;
    v7 = [v5 value];
    v8 = sub_1C2F766CC();
    v10 = v9;

    *(v6 + 32) = v8;
    *(v6 + 40) = v10;
    v11 = sub_1C2F767DC();

    v12 = [objc_opt_self() contactWithDisplayName:0 handleStrings:v11];

    *a2 = v12;
    v13 = type metadata accessor for FTMenuItem.IconType(0);
    swift_storeEnumTagMultiPayload();
    v14 = *(*(v13 - 8) + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for FTMenuItem.IconType(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

void sub_1C2F5F034(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 24);

    v5 = *(v4 + 16);

    [v5 disconnectCall_];
  }
}

uint64_t AudioCallConferenceParticipantMoreMenuViewModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1C2F5F1B0()
{
  result = qword_1EC076000;
  if (!qword_1EC076000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC076000);
  }

  return result;
}

uint64_t CallRecordingAvailability.hashValue.getter()
{
  v1 = *v0;
  sub_1C2F76F9C();
  MEMORY[0x1C6929580](v1);
  return sub_1C2F76FDC();
}

uint64_t sub_1C2F5F284()
{
  type metadata accessor for CallRecordingAvailabilityManager();
  result = swift_allocObject();
  qword_1EC076E60 = result;
  return result;
}

uint64_t static CallRecordingAvailabilityManager.shared.getter()
{
  if (qword_1EC075CA8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static CallRecordingAvailabilityManager.shared.setter(uint64_t a1)
{
  if (qword_1EC075CA8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EC076E60 = a1;
}

uint64_t (*static CallRecordingAvailabilityManager.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EC075CA8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C2F5F430@<X0>(void *a1@<X8>)
{
  if (qword_1EC075CA8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EC076E60;
}

uint64_t sub_1C2F5F4B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EC075CA8;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EC076E60 = v1;
}

unint64_t sub_1C2F5F538@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1C2F75FFC();
  result = TUTranscriptionAvailabilityForUseCase();
  if ((v2 & 1) == 0)
  {
    if (result < 3)
    {
      v4 = 0x10100u >> (8 * result);
      goto LABEL_7;
    }

LABEL_6:
    LOBYTE(v4) = 3;
    goto LABEL_7;
  }

  if (result - 1 >= 2)
  {
    goto LABEL_6;
  }

  LOBYTE(v4) = 2;
LABEL_7:
  *a1 = v4;
  return result;
}

unint64_t sub_1C2F5F5C8()
{
  result = qword_1EC076E68;
  if (!qword_1EC076E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076E68);
  }

  return result;
}

uint64_t ContactsService.__allocating_init(contactStore:keys:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t ContactsService.init(contactStore:keys:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

CNContact_optional __swiftcall ContactsService.findContact(predicate:)(NSPredicate *predicate)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076B00, &unk_1C2F7B958);
  v4 = sub_1C2F767DC();
  v15[0] = 0;
  v5 = [v3 unifiedContactsMatchingPredicate:predicate keysToFetch:v4 error:v15];

  v6 = v15[0];
  if (!v5)
  {
    v13 = v15[0];
    v14 = sub_1C2F75A2C();

    swift_willThrow();
LABEL_11:
    v12 = 0;
    goto LABEL_15;
  }

  sub_1C2F208DC();
  v7 = sub_1C2F767EC();
  v8 = v6;

  if (v7 >> 62)
  {
    if (sub_1C2F76BBC())
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

    goto LABEL_11;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1C6929250](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v9 = *(v7 + 32);
  }

  v10 = v9;

  v12 = v10;
LABEL_15:
  result.value.super.isa = v12;
  result.is_nil = v11;
  return result;
}

uint64_t ContactsService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C2F5FA00()
{
  result = sub_1C2F766CC();
  qword_1EC07B920 = result;
  *algn_1EC07B928 = v1;
  return result;
}

uint64_t sub_1C2F5FA30(uint64_t a1)
{
  v2 = sub_1C2F67450();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F5FA6C(uint64_t a1)
{
  v2 = sub_1C2F67450();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2F5FAA8()
{
  if (qword_1EC075CB0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC07B920;

  return v0;
}

uint64_t sub_1C2F5FB10()
{
  sub_1C2F75E4C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C2F5FBA0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076F90, &unk_1C2F7D420);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2F67450();
  sub_1C2F7702C();
  return (*(v3 + 8))(v5, v2);
}

id sub_1C2F5FCB4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_1EDEBC648 != -1)
  {
    swift_once();
  }

  v3 = sub_1C2F761FC();
  __swift_project_value_buffer(v3, qword_1EDEBC650);
  v4 = sub_1C2F761DC();
  v5 = sub_1C2F769EC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C2EF2000, v4, v5, "deinit session", v6, 2u);
    MEMORY[0x1C6929E80](v6, -1, -1);
  }

  v7 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_session;
  if (*&v1[OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_session])
  {

    sub_1C2F0B620();
  }

  if (*&v1[OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_sessionObserverTask])
  {

    sub_1C2F7692C();
  }

  *&v1[v7] = 0;

  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

void sub_1C2F5FF34(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_lock);
  os_unfair_lock_lock(v4 + 4);
  sub_1C2F68754();
  os_unfair_lock_unlock(v4 + 4);
  if (*(v2 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_needsToReportRemoteStarted) == 1)
  {
    *(v2 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_needsToReportRemoteStarted) = 0;
    ObjectType = swift_getObjectType();
    (*(a2 + 8))(ObjectType, a2);
  }
}

uint64_t sub_1C2F5FFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for WeakDelegate();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = a3;
  swift_unknownObjectWeakAssign();
  v6 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_observers;
  v7 = swift_beginAccess();
  MEMORY[0x1C6928DA0](v7);
  if (*((*(a1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C2F7680C();
  }

  sub_1C2F7682C();
  return swift_endAccess();
}

uint64_t sub_1C2F600EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_observers;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v7 = sub_1C2F66BC8((a1 + v6), a2);
  if (!v3)
  {
    v8 = v7;
    swift_unknownObjectRelease();
    v9 = *(a1 + v6);
    if (v9 >> 62)
    {
      v10 = sub_1C2F76BBC();
      if (v10 >= v8)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10 >= v8)
      {
LABEL_4:
        sub_1C2F66FE4(v8, v10);
        return swift_endAccess();
      }
    }

    __break(1u);
  }

  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1C2F601DC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  if (qword_1EDEBC648 != -1)
  {
    swift_once();
  }

  v5 = sub_1C2F761FC();
  __swift_project_value_buffer(v5, qword_1EDEBC650);
  v6 = sub_1C2F761DC();
  v7 = sub_1C2F769EC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1C2EF2000, v6, v7, "start observeTranslationActivity", v8, 2u);
    MEMORY[0x1C6929E80](v8, -1, -1);
  }

  v9 = sub_1C2F768AC();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C2F7688C();

  v11 = sub_1C2F7687C();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;

  result = sub_1C2F06978(0, 0, v4, &unk_1C2F7D3C8, v12);
  v15 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_sessionObserverTask);
  *(v1 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_sessionObserverTask) = result;
  if (v15)
  {

    sub_1C2F7692C();
  }

  return result;
}

uint64_t sub_1C2F60438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_1C2F75AEC();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076F18, &qword_1C2F7D3D0);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076F20, &unk_1C2F7D3D8);
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = sub_1C2F7688C();
  v4[19] = sub_1C2F7687C();
  v9 = sub_1C2F7684C();
  v4[20] = v9;
  v4[21] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C2F60600, v9, v8);
}

uint64_t sub_1C2F60600()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  sub_1C2F671D8();
  sub_1C2F75FAC();
  sub_1C2F75F6C();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v0[22] = sub_1C2F7687C();
  v4 = sub_1C2EF7414(&unk_1EC076F30, &qword_1EC076F20, &unk_1C2F7D3D8, MEMORY[0x1E696B2E8]);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_1C2F6075C;
  v6 = v0[15];

  return MEMORY[0x1EEE6D8C8](v0 + 5, v6, v4);
}

uint64_t sub_1C2F6075C()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 176);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1C2F7684C();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1C2F6113C;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1C2F7684C();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1C2F608F4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1C2F608F4()
{

  v0[25] = v0[5];
  v1 = v0[20];
  v2 = v0[21];

  return MEMORY[0x1EEE6DFA0](sub_1C2F60960, v1, v2);
}

uint64_t sub_1C2F60960()
{
  v53 = v0;
  v1 = v0[25];
  if (!v1)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
    goto LABEL_7;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);

    goto LABEL_7;
  }

  v3 = Strong;
  if ((sub_1C2F7694C() & 1) == 0)
  {
    v6 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_session;
    if (*&v3[OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_session])
    {
      if (qword_1EDEBC648 != -1)
      {
        swift_once();
      }

      v7 = sub_1C2F761FC();
      __swift_project_value_buffer(v7, qword_1EDEBC650);

      v8 = sub_1C2F761DC();
      v9 = sub_1C2F769DC();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v52[0] = v11;
        *v10 = 136315138;
        v0[7] = v1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076300, &qword_1C2F791B0);
        sub_1C2EF7414(&qword_1EC076F40, &qword_1EC076300, &qword_1C2F791B0, MEMORY[0x1E696B310]);
        v12 = sub_1C2F76EEC();
        v14 = sub_1C2EFAB28(v12, v13, v52);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_1C2EF2000, v8, v9, "Gets interaction session for group session: %s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v11);
        MEMORY[0x1C6929E80](v11, -1, -1);
        MEMORY[0x1C6929E80](v10, -1, -1);
      }

      sub_1C2F75F0C();
    }

    else
    {
      if (qword_1EDEBC648 != -1)
      {
        swift_once();
      }

      v15 = sub_1C2F761FC();
      __swift_project_value_buffer(v15, qword_1EDEBC650);

      v16 = sub_1C2F761DC();
      v17 = sub_1C2F769EC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = v0[10];
        v19 = v0[11];
        v20 = v0[9];
        buf = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v52[0] = v51;
        *buf = 136315138;
        v50 = v17;
        sub_1C2F75EFC();
        sub_1C2F670DC(&unk_1EDEBD700, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v21 = v20;
        v22 = sub_1C2F76EEC();
        v24 = v23;
        (*(v18 + 8))(v19, v21);
        v25 = sub_1C2EFAB28(v22, v24, v52);

        *(buf + 4) = v25;
        _os_log_impl(&dword_1C2EF2000, v16, v50, "Creating translation interaction sesion for group session: %s", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v51);
        MEMORY[0x1C6929E80](v51, -1, -1);
        MEMORY[0x1C6929E80](buf, -1, -1);
      }

      v26 = [objc_opt_self() sharedInstance];
      if (!v26)
      {
        __break(1u);
        return MEMORY[0x1EEE6D8C8](v26, v27, v28);
      }

      v29 = v26;
      type metadata accessor for TranslationInteractionSession();
      swift_allocObject();

      v30 = v3;
      *&v3[v6] = sub_1C2F0AEE4(v1, v30, v29);

      v31 = *&v3[v6];
      if (v31)
      {
        v32 = v0[24];
        v33 = *(v31 + 72);
        v34 = swift_task_alloc();
        v34[2] = v31;
        v34[3] = v30;
        v34[4] = &off_1F42B5318;
        v35 = swift_task_alloc();
        *(v35 + 16) = sub_1C2F6722C;
        *(v35 + 24) = v34;
        v36 = v30;

        os_unfair_lock_lock(v33 + 4);
        sub_1C2F68754();
        os_unfair_lock_unlock(v33 + 4);

        if (v32)
        {
          return result;
        }
      }

      sub_1C2F611C8(v1);
      v37 = sub_1C2F75EDC();
      v38 = sub_1C2F761DC();
      v39 = sub_1C2F769EC();
      v40 = os_log_type_enabled(v38, v39);
      if (v37)
      {
        if (v40)
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_1C2EF2000, v38, v39, "Join translation session, since translation has started locally.", v41, 2u);
          MEMORY[0x1C6929E80](v41, -1, -1);
        }
      }

      else
      {
        if (v40)
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_1C2EF2000, v38, v39, "Notify remote has started translation.", v42, 2u);
          MEMORY[0x1C6929E80](v42, -1, -1);
        }

        sub_1C2F61684();
        v43 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_needsToJoinGroupSession;
        if (v30[OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_needsToJoinGroupSession] != 1)
        {
          goto LABEL_35;
        }

        v44 = sub_1C2F761DC();
        v45 = sub_1C2F769EC();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_1C2EF2000, v44, v45, "Joining session for telephony call.", v46, 2u);
          MEMORY[0x1C6929E80](v46, -1, -1);
        }

        v30[v43] = 0;
      }

      sub_1C2F75F1C();
    }

LABEL_35:

    v0[22] = sub_1C2F7687C();
    v47 = sub_1C2EF7414(&unk_1EC076F30, &qword_1EC076F20, &unk_1C2F7D3D8, MEMORY[0x1E696B2E8]);
    v48 = swift_task_alloc();
    v0[23] = v48;
    *v48 = v0;
    v48[1] = sub_1C2F6075C;
    v27 = v0[15];
    v26 = v0 + 5;
    v28 = v47;

    return MEMORY[0x1EEE6D8C8](v26, v27, v28);
  }

  (*(v0[16] + 8))(v0[17], v0[15]);

LABEL_7:

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C2F6113C()
{
  *(v0 + 48) = *(v0 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076DF0, &unk_1C2F7A4C0);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t sub_1C2F611C8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076F48, &qword_1C2F7D3E8);
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v24 - v4;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076F50, &unk_1C2F7D3F0);
  v5 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v7 = &v24 - v6;
  v8 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_sessionCancellables;
  swift_beginAccess();
  *(v1 + v8) = MEMORY[0x1E69E7CC0];

  v9 = sub_1C2F75EDC();
  if (qword_1EDEBC648 != -1)
  {
    swift_once();
  }

  v10 = sub_1C2F761FC();
  __swift_project_value_buffer(v10, qword_1EDEBC650);
  v11 = sub_1C2F761DC();
  v12 = sub_1C2F769CC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v9 & 1;
    _os_log_impl(&dword_1C2EF2000, v11, v12, "Observing translation session. created locally: %{BOOL}d", v13, 8u);
    MEMORY[0x1C6929E80](v13, -1, -1);
  }

  sub_1C2F75F5C();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = v9 & 1;
  *(v15 + 24) = v9 & 1;
  *(v15 + 32) = a1;
  v17 = MEMORY[0x1E695C068];
  sub_1C2EF7414(&qword_1EC076F58, &qword_1EC076F50, &unk_1C2F7D3F0, MEMORY[0x1E695C068]);

  v18 = v24;
  sub_1C2F7631C();

  (*(v5 + 8))(v7, v18);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076F60, &unk_1C2F78BE0);
  sub_1C2EF7414(&unk_1EDEBC530, &unk_1EC076F60, &unk_1C2F78BE0, MEMORY[0x1E69E6348]);
  sub_1C2F7621C();
  swift_endAccess();

  v19 = v25;
  sub_1C2F75EEC();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = a1;
  *(v21 + 32) = v16;
  sub_1C2EF7414(&qword_1EC076F70, &qword_1EC076F48, &qword_1C2F7D3E8, v17);

  v22 = v27;
  sub_1C2F7631C();

  (*(v26 + 8))(v19, v22);
  swift_beginAccess();
  sub_1C2F7621C();
  swift_endAccess();
}

uint64_t sub_1C2F61684()
{
  v1 = v0;
  v2 = sub_1C2F764EC();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1C2F7651C();
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEBC648 != -1)
  {
LABEL_23:
    swift_once();
  }

  v5 = sub_1C2F761FC();
  __swift_project_value_buffer(v5, qword_1EDEBC650);
  v6 = sub_1C2F761DC();
  v7 = sub_1C2F769EC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1C2EF2000, v6, v7, "remoteStartsTranslation", v8, 2u);
    MEMORY[0x1C6929E80](v8, -1, -1);
  }

  v27 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_lock);
  os_unfair_lock_lock(v27 + 4);
  v9 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_observers;
  swift_beginAccess();
  v10 = *(v1 + v9);
  if (v10 >> 62)
  {
    v11 = sub_1C2F76BBC();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  while (v11 != v12)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1C6929250](v12, v10);
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v13 = *(v10 + 8 * v12 + 32);

      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v16 = *(v13 + 24);

    ++v12;
    if (Strong)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_1C2F1C074(0, v1[2] + 1, 1, v1);
      }

      v18 = v1[2];
      v17 = v1[3];
      if (v18 >= v17 >> 1)
      {
        v1 = sub_1C2F1C074((v17 > 1), v18 + 1, 1, v1);
      }

      v1[2] = v18 + 1;
      v19 = &v1[2 * v18];
      v19[4] = Strong;
      v19[5] = v16;
      v12 = v14;
    }
  }

  os_unfair_lock_unlock(v27 + 4);
  sub_1C2EF5A14(0, &qword_1EDEBC510, 0x1E69E9610);
  v20 = sub_1C2F76A2C();
  v21 = swift_allocObject();
  v21[2] = v1;
  v21[3] = sub_1C2F65598;
  v21[4] = 0;
  aBlock[4] = sub_1C2F0CAA8;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C2F40688;
  aBlock[3] = &block_descriptor_9;
  v22 = _Block_copy(aBlock);

  v23 = v28;
  sub_1C2F764FC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C2F670DC(&qword_1EC076700, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076060, &unk_1C2F79000);
  sub_1C2EF7414(&qword_1EC076710, &unk_1EC076060, &unk_1C2F79000, MEMORY[0x1E69E6328]);
  v24 = v30;
  v25 = v33;
  sub_1C2F76B3C();
  MEMORY[0x1C6929010](0, v23, v24, v22);
  _Block_release(v22);

  (*(v32 + 8))(v24, v25);
  return (*(v29 + 8))(v23, v31);
}

void sub_1C2F61BB8()
{
  v1 = v0;
  if (qword_1EDEBC648 != -1)
  {
    swift_once();
  }

  v2 = sub_1C2F761FC();
  __swift_project_value_buffer(v2, qword_1EDEBC650);
  v3 = sub_1C2F761DC();
  v4 = sub_1C2F769EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C2EF2000, v3, v4, "stop observeTranslationActivity", v5, 2u);
    MEMORY[0x1C6929E80](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_sessionObserverTask);
  *(v1 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_sessionObserverTask) = 0;
  if (v6)
  {
    sub_1C2F7692C();
  }
}

void sub_1C2F61CF0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_currentStartSessionTask;
  if (*&v0[OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_currentStartSessionTask])
  {
    if (qword_1EDEBC648 != -1)
    {
      swift_once();
    }

    v6 = sub_1C2F761FC();
    __swift_project_value_buffer(v6, qword_1EDEBC650);
    v20 = sub_1C2F761DC();
    v7 = sub_1C2F769DC();
    if (os_log_type_enabled(v20, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C2EF2000, v20, v7, "translation session has already started.", v8, 2u);
      MEMORY[0x1C6929E80](v8, -1, -1);
    }

    v9 = v20;
  }

  else
  {
    if (qword_1EDEBC648 != -1)
    {
      swift_once();
    }

    v10 = sub_1C2F761FC();
    __swift_project_value_buffer(v10, qword_1EDEBC650);
    v11 = sub_1C2F761DC();
    v12 = sub_1C2F769EC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1C2EF2000, v11, v12, "startTranslationSession", v13, 2u);
      MEMORY[0x1C6929E80](v13, -1, -1);
    }

    v14 = sub_1C2F768AC();
    (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v1;
    v16 = v1;
    v17 = sub_1C2F06978(0, 0, v4, &unk_1C2F7D418, v15);
    v18 = *&v1[v5];
    *&v1[v5] = v17;
    if (v18)
    {

      sub_1C2F7692C();
    }
  }
}

uint64_t sub_1C2F61FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  v6 = sub_1C2F671D8();
  *v5 = v4;
  v5[1] = sub_1C2F62084;

  return MEMORY[0x1EEDC7540](&type metadata for TranslationInteractionActivity, v6);
}

uint64_t sub_1C2F62084()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1C2F622DC;
  }

  else
  {
    v2 = sub_1C2F62198;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C2F62198()
{
  if (sub_1C2F7694C())
  {
    if (qword_1EDEBC648 != -1)
    {
      swift_once();
    }

    v1 = sub_1C2F761FC();
    __swift_project_value_buffer(v1, qword_1EDEBC650);
    v2 = sub_1C2F761DC();
    v3 = sub_1C2F769DC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1C2EF2000, v2, v3, "Translation session cancelled.", v4, 2u);
      MEMORY[0x1C6929E80](v4, -1, -1);
    }

    v5 = *(v0 + 16);

    if (*(v5 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_session))
    {

      sub_1C2F0B620();
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1C2F622DC()
{
  if (qword_1EDEBC648 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1C2F761FC();
  __swift_project_value_buffer(v2, qword_1EDEBC650);
  v3 = v1;
  v4 = sub_1C2F761DC();
  v5 = sub_1C2F769EC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1C2EF2000, v4, v5, "Failed to begin with error: %@", v8, 0xCu);
    sub_1C2F0A8D8(v9, &unk_1EC076070, &qword_1C2F7A190);
    MEMORY[0x1C6929E80](v9, -1, -1);
    MEMORY[0x1C6929E80](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

void sub_1C2F62480()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_currentStartSessionTask;
  if (*(v0 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_currentStartSessionTask) || *(v0 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_session))
  {
    if (qword_1EDEBC648 != -1)
    {
      swift_once();
    }

    v3 = sub_1C2F761FC();
    __swift_project_value_buffer(v3, qword_1EDEBC650);
    v4 = sub_1C2F761DC();
    v5 = sub_1C2F769EC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C2EF2000, v4, v5, "stopTranslationSession", v6, 2u);
      MEMORY[0x1C6929E80](v6, -1, -1);
    }

    if (*(v1 + v2))
    {

      sub_1C2F7692C();
    }

    if (*(v1 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_session))
    {

      sub_1C2F0B620();
    }

    sub_1C2F6271C();
    v7 = *(v1 + v2);
    *(v1 + v2) = 0;
    if (v7)
    {
      sub_1C2F7692C();
    }
  }

  else
  {
    if (qword_1EDEBC648 != -1)
    {
      swift_once();
    }

    v8 = sub_1C2F761FC();
    __swift_project_value_buffer(v8, qword_1EDEBC650);
    oslog = sub_1C2F761DC();
    v9 = sub_1C2F769DC();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C2EF2000, oslog, v9, "translation session has already stopped.", v10, 2u);
      MEMORY[0x1C6929E80](v10, -1, -1);
    }
  }
}

uint64_t sub_1C2F6271C()
{
  v1 = v0;
  if (qword_1EDEBC648 != -1)
  {
    swift_once();
  }

  v2 = sub_1C2F761FC();
  __swift_project_value_buffer(v2, qword_1EDEBC650);
  v3 = sub_1C2F761DC();
  v4 = sub_1C2F769EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C2EF2000, v3, v4, "resetSession", v5, 2u);
    MEMORY[0x1C6929E80](v5, -1, -1);
  }

  *(v1 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_session) = 0;

  v6 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_sessionCancellables;
  swift_beginAccess();
  *(v1 + v6) = MEMORY[0x1E69E7CC0];
}

void sub_1C2F62844()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076F78, &unk_1C2F7D400);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - v6;
  if (*(v0 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_session))
  {

    sub_1C2F75F4C();
    (*(v2 + 104))(v5, *MEMORY[0x1E696B2C8], v1);
    sub_1C2F671D8();
    v8 = sub_1C2F75F2C();
    v9 = *(v2 + 8);
    v9(v5, v1);
    v9(v7, v1);
    if (v8)
    {
      if (qword_1EDEBC648 != -1)
      {
        swift_once();
      }

      v10 = sub_1C2F761FC();
      __swift_project_value_buffer(v10, qword_1EDEBC650);
      v11 = sub_1C2F761DC();
      v12 = sub_1C2F769DC();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1C2EF2000, v11, v12, "Leaving group session.", v13, 2u);
        MEMORY[0x1C6929E80](v13, -1, -1);
      }

      sub_1C2F75F3C();
    }

    else
    {
      if (qword_1EDEBC648 != -1)
      {
        swift_once();
      }

      v14 = sub_1C2F761FC();
      __swift_project_value_buffer(v14, qword_1EDEBC650);
      v15 = sub_1C2F761DC();
      v16 = sub_1C2F769DC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1C2EF2000, v15, v16, "Group session is not in joined state. Won't be able to leave.", v17, 2u);
        MEMORY[0x1C6929E80](v17, -1, -1);
      }
    }
  }
}

void sub_1C2F62B44(int *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076EF0, &qword_1C2F7D3A8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_1C2F75FCC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_session);
  if (v10)
  {
    v11 = *a1;
    v12 = *(a1 + 4);
    v13 = *(a1 + 5);
    v14 = *(a1 + 1);
    v25 = *(a1 + 2);
    v26 = v14;
    v15 = *(a1 + 3);
    v23 = *(a1 + 4);
    v24 = v15;

    v16 = sub_1C2F75ECC();

    v17 = sub_1C2F666A8(v16, v10);

    if (*(v17 + 16) == 1)
    {
      sub_1C2F2E030(v17, v5);
      if ((*(v7 + 48))(v5, 1, v6) != 1)
      {

        (*(v7 + 32))(v9, v5, v6);
        LODWORD(v27) = v11;
        BYTE4(v27) = v12;
        BYTE5(v27) = v13;
        *(&v27 + 1) = v26;
        v28 = v25;
        v29 = v24;
        v30 = v23;
        sub_1C2F0BEC8(&v27, v9);

        (*(v7 + 8))(v9, v6);
        return;
      }

      sub_1C2F0A8D8(v5, &unk_1EC076EF0, &qword_1C2F7D3A8);
    }

    if (qword_1EDEBC648 != -1)
    {
      swift_once();
    }

    v18 = sub_1C2F761FC();
    __swift_project_value_buffer(v18, qword_1EDEBC650);

    v19 = sub_1C2F761DC();
    v20 = sub_1C2F769EC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      v22 = *(v17 + 16);

      *(v21 + 4) = v22;

      _os_log_impl(&dword_1C2EF2000, v19, v20, "sendTranscriptsToRemote, remoteParticipants.count: %ld", v21, 0xCu);
      MEMORY[0x1C6929E80](v21, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1C2F62E84()
{
  v1 = sub_1C2F75AEC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076F78, &unk_1C2F7D400);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v102 - v10;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_1EDEBC648 != -1)
    {
      swift_once();
    }

    v23 = sub_1C2F761FC();
    __swift_project_value_buffer(v23, qword_1EDEBC650);
    v112 = sub_1C2F761DC();
    v24 = sub_1C2F769EC();
    if (os_log_type_enabled(v112, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1C2EF2000, v112, v24, "invalid tuCall, return", v25, 2u);
      MEMORY[0x1C6929E80](v25, -1, -1);
    }

    goto LABEL_50;
  }

  v111 = v2;
  v112 = Strong;
  v13 = [Strong provider];
  v14 = [v13 isFaceTimeProvider];

  if (v14)
  {
    if ([*(v0 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_featureFlags) sendTranscriptToRemoteForFaceTimeAudioEnabled])
    {
      if (*(v0 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_session))
      {

        sub_1C2F75F4C();
        (*(v6 + 104))(v9, *MEMORY[0x1E696B2D0], v5);
        sub_1C2F671D8();
        v15 = sub_1C2F75F2C();
        v16 = *(v6 + 8);
        v16(v9, v5);
        v16(v11, v5);
        if (v15)
        {

          v17 = sub_1C2F75EDC();

          if ((v17 & 1) == 0)
          {
            if (qword_1EDEBC648 != -1)
            {
              swift_once();
            }

            v45 = sub_1C2F761FC();
            __swift_project_value_buffer(v45, qword_1EDEBC650);
            v46 = sub_1C2F761DC();
            v47 = sub_1C2F769EC();
            if (os_log_type_enabled(v46, v47))
            {
              v48 = swift_slowAlloc();
              *v48 = 0;
              _os_log_impl(&dword_1C2EF2000, v46, v47, "startGettingRemoteTranslationTranscripts", v48, 2u);
              MEMORY[0x1C6929E80](v48, -1, -1);
            }

            sub_1C2F75F1C();

            goto LABEL_58;
          }

          if (qword_1EDEBC648 != -1)
          {
            swift_once();
          }

          v18 = sub_1C2F761FC();
          __swift_project_value_buffer(v18, qword_1EDEBC650);
          v19 = sub_1C2F761DC();
          v20 = sub_1C2F769DC();
          if (!os_log_type_enabled(v19, v20))
          {
LABEL_43:

LABEL_58:
            return;
          }

          v21 = swift_slowAlloc();
          *v21 = 0;
          v22 = "Request to get remote transcripts, but translation starts locally.";
        }

        else
        {
          if (qword_1EDEBC648 != -1)
          {
            swift_once();
          }

          v42 = sub_1C2F761FC();
          __swift_project_value_buffer(v42, qword_1EDEBC650);
          v19 = sub_1C2F761DC();
          v20 = sub_1C2F769EC();
          if (!os_log_type_enabled(v19, v20))
          {
            goto LABEL_43;
          }

          v21 = swift_slowAlloc();
          *v21 = 0;
          v22 = "group session is not in waiting state, return";
        }

        _os_log_impl(&dword_1C2EF2000, v19, v20, v22, v21, 2u);
        MEMORY[0x1C6929E80](v21, -1, -1);
        goto LABEL_43;
      }

      if (qword_1EDEBC648 != -1)
      {
        swift_once();
      }

      v41 = sub_1C2F761FC();
      __swift_project_value_buffer(v41, qword_1EDEBC650);
      v36 = sub_1C2F761DC();
      v37 = sub_1C2F769EC();
      if (!os_log_type_enabled(v36, v37))
      {
        goto LABEL_49;
      }

      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = "invalid session, return";
      goto LABEL_48;
    }

LABEL_27:
    if (qword_1EDEBC648 == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_106;
  }

  v26 = [v112 provider];
  v27 = [v26 isTelephonyProvider];

  if (!v27)
  {
    if (qword_1EDEBC648 != -1)
    {
      swift_once();
    }

    v40 = sub_1C2F761FC();
    __swift_project_value_buffer(v40, qword_1EDEBC650);
    v36 = sub_1C2F761DC();
    v37 = sub_1C2F769EC();
    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_49;
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = "tuCallProvider is not FaceTimeProvider or TelephonyProvider";
    goto LABEL_48;
  }

  if (![*(v0 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_featureFlags) sendTranscriptToRemoteForCallEnabled])
  {
    goto LABEL_27;
  }

  if (![v112 isSharePlayCapable])
  {
    if (qword_1EDEBC648 != -1)
    {
      swift_once();
    }

    v43 = sub_1C2F761FC();
    __swift_project_value_buffer(v43, qword_1EDEBC650);
    v36 = sub_1C2F761DC();
    v37 = sub_1C2F769EC();
    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_49;
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = "not able to start getting remote translation transcripts, return";
    goto LABEL_48;
  }

  v28 = swift_unknownObjectWeakLoadStrong();
  v109 = v0;
  if (!v28)
  {
    v28 = [*(*(v0 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_callCenter) + 16) activeConversationForCall_];
    if (!v28)
    {
      if (qword_1EDEBC648 != -1)
      {
        swift_once();
      }

      v83 = sub_1C2F761FC();
      __swift_project_value_buffer(v83, qword_1EDEBC650);
      v84 = sub_1C2F761DC();
      v85 = sub_1C2F769CC();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&dword_1C2EF2000, v84, v85, "Not able to find conversation. Return.", v86, 2u);
        MEMORY[0x1C6929E80](v86, -1, -1);
      }

LABEL_98:
      *(v109 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_needsToJoinGroupSession) = 1;
      return;
    }
  }

  v29 = v28;
  if ([v28 state] == 3)
  {
    if (*(v0 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_session))
    {
      v30 = qword_1EDEBC648;

      if (v30 != -1)
      {
        swift_once();
      }

      v31 = sub_1C2F761FC();
      __swift_project_value_buffer(v31, qword_1EDEBC650);
      v32 = sub_1C2F761DC();
      v33 = sub_1C2F769EC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_1C2EF2000, v32, v33, "Joining group session for telephony.", v34, 2u);
        MEMORY[0x1C6929E80](v34, -1, -1);
      }

      sub_1C2F75F1C();
    }

    else
    {
      *(v0 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_needsToJoinGroupSession) = 1;
      if (qword_1EDEBC648 != -1)
      {
        swift_once();
      }

      v56 = sub_1C2F761FC();
      __swift_project_value_buffer(v56, qword_1EDEBC650);
      v57 = sub_1C2F761DC();
      v58 = sub_1C2F769EC();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_1C2EF2000, v57, v58, "Waiting for group session to form", v59, 2u);
        MEMORY[0x1C6929E80](v59, -1, -1);
      }
    }

    goto LABEL_50;
  }

  v104 = v29;
  v49 = [v29 systemActivitySessions];
  v50 = sub_1C2EF5A14(0, &qword_1EDEBC4F0, 0x1E69D8B58);
  sub_1C2F67280();
  v51 = sub_1C2F7697C();

  v103 = v51;
  v105 = v50;
  if ((v51 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1C2F76B7C();
    sub_1C2F769AC();
    v51 = v115;
    v52 = v116;
    v53 = v117;
    v54 = v118;
    v55 = v119;
  }

  else
  {
    v60 = -1 << *(v51 + 32);
    v52 = v51 + 56;
    v53 = ~v60;
    v61 = -v60;
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    else
    {
      v62 = -1;
    }

    v55 = v62 & *(v51 + 56);

    v54 = 0;
  }

  v102 = v53;
  v63 = (v53 + 64) >> 6;
  v108 = v51;
  if (v51 < 0)
  {
    goto LABEL_76;
  }

LABEL_71:
  v64 = v54;
  v65 = v55;
  v66 = v54;
  if (v55)
  {
LABEL_75:
    v110 = (v65 - 1) & v65;
    v67 = *(*(v51 + 48) + ((v66 << 9) | (8 * __clz(__rbit64(v65)))));
    while (v67)
    {
      v106 = v54;
      v107 = v55;
      v69 = v67;
      v70 = [v67 activity];
      v71 = [v70 activityIdentifier];

      v72 = sub_1C2F766CC();
      v74 = v73;

      if (qword_1EC075CB0 != -1)
      {
        swift_once();
      }

      if (v72 == qword_1EC07B920 && v74 == *algn_1EC07B928)
      {

LABEL_100:
        sub_1C2F0AAB8(v108);

        *(v0 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_needsToJoinGroupSession) = 1;
        v87 = objc_allocWithZone(MEMORY[0x1E69D8C10]);
        v88 = v104;
        v89 = [v87 initWithConversation:v104 originatingUIType:62];
        v90 = [v69 activity];
        [v89 setActivity_];

        v91 = [v88 provider];
        [v89 setProvider_];

        v92 = [v112 uniqueProxyIdentifierUUID];
        sub_1C2F75ACC();

        v93 = sub_1C2F75AAC();
        (*(v111 + 8))(v4, v1);
        [v89 setUUID_];

        if (qword_1EDEBC648 != -1)
        {
          swift_once();
        }

        v94 = sub_1C2F761FC();
        __swift_project_value_buffer(v94, qword_1EDEBC650);
        v95 = v69;
        v96 = sub_1C2F761DC();
        v97 = sub_1C2F769EC();

        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          *v98 = 138412290;
          v100 = [v95 activity];
          *(v98 + 4) = v100;
          *v99 = v100;
          _os_log_impl(&dword_1C2EF2000, v96, v97, "joinConversation with joinRequest %@", v98, 0xCu);
          sub_1C2F0A8D8(v99, &unk_1EC076070, &qword_1C2F7A190);
          MEMORY[0x1C6929E80](v99, -1, -1);
          MEMORY[0x1C6929E80](v98, -1, -1);
        }

        v101 = [*(*(v109 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_callCenter) + 16) conversationManager];
        [v101 joinConversationWithRequest_];

        goto LABEL_58;
      }

      v76 = sub_1C2F76EFC();

      if (v76)
      {
        goto LABEL_100;
      }

      v54 = v66;
      v55 = v110;
      v51 = v108;
      if ((v108 & 0x8000000000000000) == 0)
      {
        goto LABEL_71;
      }

LABEL_76:
      v68 = sub_1C2F76BDC();
      if (!v68)
      {
        break;
      }

      v113 = v68;
      swift_dynamicCast();
      v67 = v114;
      v66 = v54;
      v110 = v55;
      v0 = v109;
    }

LABEL_88:
    sub_1C2F0AAB8(v51);

    if (qword_1EDEBC648 != -1)
    {
      swift_once();
    }

    v77 = sub_1C2F761FC();
    __swift_project_value_buffer(v77, qword_1EDEBC650);
    v78 = sub_1C2F761DC();
    v79 = sub_1C2F769DC();
    v80 = os_log_type_enabled(v78, v79);
    v81 = v104;
    if (v80)
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_1C2EF2000, v78, v79, "Not able to join conversation. Missing translation session.", v82, 2u);
      MEMORY[0x1C6929E80](v82, -1, -1);
    }

    goto LABEL_98;
  }

  while (1)
  {
    v66 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      break;
    }

    if (v66 >= v63)
    {
      goto LABEL_88;
    }

    v65 = *(v52 + 8 * v66);
    ++v64;
    if (v65)
    {
      goto LABEL_75;
    }
  }

  __break(1u);
LABEL_106:
  swift_once();
LABEL_28:
  v35 = sub_1C2F761FC();
  __swift_project_value_buffer(v35, qword_1EDEBC650);
  v36 = sub_1C2F761DC();
  v37 = sub_1C2F769DC();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = "sendTranscriptToRemoteForCallEnabled is not enabled, not joining the conversation";
LABEL_48:
    _os_log_impl(&dword_1C2EF2000, v36, v37, v39, v38, 2u);
    MEMORY[0x1C6929E80](v38, -1, -1);
  }

LABEL_49:

LABEL_50:
  v44 = v112;
}

void sub_1C2F63FA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  LODWORD(v5) = a3;
  v45 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076F78, &unk_1C2F7D400);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v38 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v43 = v10;
    if (qword_1EDEBC648 != -1)
    {
      swift_once();
    }

    v18 = sub_1C2F761FC();
    v19 = __swift_project_value_buffer(v18, qword_1EDEBC650);
    v44 = *(v7 + 16);
    v44(v15, v45, v6);
    v42 = v19;
    v20 = sub_1C2F761DC();
    v21 = sub_1C2F769EC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v40 = v17;
      v23 = v22;
      v24 = swift_slowAlloc();
      v41 = a4;
      v25 = v24;
      v46 = v24;
      *v23 = 136315138;
      v44(v13, v15, v6);
      v26 = sub_1C2F7670C();
      v39 = v5;
      v5 = v27;
      v38 = v7;
      v28 = *(v7 + 8);
      v28(v15, v6);
      v29 = sub_1C2EFAB28(v26, v5, &v46);
      LOBYTE(v5) = v39;

      *(v23 + 4) = v29;
      _os_log_impl(&dword_1C2EF2000, v20, v21, "Session state changed to %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1C6929E80](v25, -1, -1);
      v30 = v23;
      v17 = v40;
      MEMORY[0x1C6929E80](v30, -1, -1);

      v31 = v38;
    }

    else
    {

      v31 = v7;
      v28 = *(v7 + 8);
      v28(v15, v6);
    }

    v32 = v43;
    v44(v43, v45, v6);
    v33 = (*(v31 + 88))(v32, v6);
    if (v33 == *MEMORY[0x1E696B2C0])
    {
      v28(v32, v6);
      sub_1C2F6271C();
    }

    else if (v33 == *MEMORY[0x1E696B2D0])
    {
      if ((v5 & 1) == 0)
      {
        sub_1C2F61684();
        v34 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_needsToJoinGroupSession;
        if (*(v17 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_needsToJoinGroupSession) == 1)
        {
          v35 = sub_1C2F761DC();
          v36 = sub_1C2F769EC();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            *v37 = 0;
            _os_log_impl(&dword_1C2EF2000, v35, v36, "Joining group session upon session state change.", v37, 2u);
            MEMORY[0x1C6929E80](v37, -1, -1);
          }

          *(v17 + v34) = 0;
          sub_1C2F75F1C();
        }
      }
    }

    else
    {

      v28(v32, v6);
    }
  }
}

void sub_1C2F643EC(char **a1, uint64_t a2, uint64_t a3, int a4)
{
  v81 = a4;
  v85 = sub_1C2F75FCC();
  v89 = *(v85 - 8);
  v6 = MEMORY[0x1EEE9AC00](v85);
  v87 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v86 = &v79 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076F78, &unk_1C2F7D400);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v79 - v14;
  v16 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v88 = a3;
    sub_1C2F75F4C();
    (*(v10 + 104))(v13, *MEMORY[0x1E696B2C8], v9);
    sub_1C2F671D8();
    v19 = sub_1C2F75F2C();
    v20 = *(v10 + 8);
    v20(v13, v9);
    v20(v15, v9);
    if (v19)
    {
      if (qword_1EDEBC648 != -1)
      {
LABEL_40:
        swift_once();
      }

      v21 = sub_1C2F761FC();
      v22 = __swift_project_value_buffer(v21, qword_1EDEBC650);

      v23 = v88;

      v24 = sub_1C2F761DC();
      v25 = sub_1C2F769EC();

      v26 = os_log_type_enabled(v24, v25);
      v79 = v22;
      v80 = v18;
      if (v26)
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v91 = v28;
        *v27 = 134218242;
        *(v27 + 4) = *(v16 + 2);

        *(v27 + 12) = 2080;
        v90 = v23;
        v18 = &qword_1C2F791B0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076300, &qword_1C2F791B0);
        sub_1C2EF7414(&qword_1EC076F40, &qword_1EC076300, &qword_1C2F791B0, MEMORY[0x1E696B310]);
        v29 = sub_1C2F76EEC();
        v31 = sub_1C2EFAB28(v29, v30, &v91);

        *(v27 + 14) = v31;
        _os_log_impl(&dword_1C2EF2000, v24, v25, "Participants changed to %ld for session %s", v27, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        MEMORY[0x1C6929E80](v28, -1, -1);
        MEMORY[0x1C6929E80](v27, -1, -1);
      }

      else
      {
      }

      v36 = v16 + 56;
      v37 = 1 << v16[32];
      v38 = -1;
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      v39 = v38 & *(v16 + 7);
      v40 = (v37 + 63) >> 6;
      v82 = (v89 + 8);
      v83 = v89 + 16;
      v84 = v16;

      v41 = 0;
      v42 = v85;
      v43 = v87;
      while (v39)
      {
        v44 = v41;
        v45 = v84;
LABEL_22:
        v46 = __clz(__rbit64(v39));
        v39 &= v39 - 1;
        v47 = v89;
        v16 = v86;
        (*(v89 + 16))(v86, *(v45 + 6) + *(v89 + 72) * (v46 | (v44 << 6)), v42);
        sub_1C2F75EBC();
        sub_1C2F670DC(&unk_1EC076F80, MEMORY[0x1E696B330], MEMORY[0x1E696B340]);
        v48 = sub_1C2F7662C();
        v49 = *(v47 + 8);
        v18 = v82;
        v49(v43, v42);
        v49(v16, v42);
        if ((v48 & 1) == 0)
        {

          v50 = v88;

          v51 = sub_1C2F761DC();
          v52 = sub_1C2F769EC();

          v53 = os_log_type_enabled(v51, v52);
          if (v81)
          {
            v54 = v80;
            if (v53)
            {
              v55 = swift_slowAlloc();
              v56 = swift_slowAlloc();
              v90 = v50;
              v91 = v56;
              *v55 = 136315138;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076300, &qword_1C2F791B0);
              sub_1C2EF7414(&qword_1EC076F40, &qword_1EC076300, &qword_1C2F791B0, MEMORY[0x1E696B310]);
              v57 = sub_1C2F76EEC();
              v59 = sub_1C2EFAB28(v57, v58, &v91);

              *(v55 + 4) = v59;
              _os_log_impl(&dword_1C2EF2000, v51, v52, "remote joins the groupSession for translation %s. Translation starts locally.", v55, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v56);
              MEMORY[0x1C6929E80](v56, -1, -1);
              MEMORY[0x1C6929E80](v55, -1, -1);
            }
          }

          else
          {
            v54 = v80;
            if (v53)
            {
              v74 = swift_slowAlloc();
              v75 = swift_slowAlloc();
              v90 = v50;
              v91 = v75;
              *v74 = 136315138;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076300, &qword_1C2F791B0);
              sub_1C2EF7414(&qword_1EC076F40, &qword_1EC076300, &qword_1C2F791B0, MEMORY[0x1E696B310]);
              v76 = sub_1C2F76EEC();
              v78 = sub_1C2EFAB28(v76, v77, &v91);

              *(v74 + 4) = v78;
              _os_log_impl(&dword_1C2EF2000, v51, v52, "remote joins the groupSession for translation %s", v74, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v75);
              MEMORY[0x1C6929E80](v75, -1, -1);
              MEMORY[0x1C6929E80](v74, -1, -1);
            }

            sub_1C2F61684();
          }

LABEL_34:

          return;
        }
      }

      v45 = v84;
      while (1)
      {
        v44 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          __break(1u);
          goto LABEL_40;
        }

        if (v44 >= v40)
        {
          break;
        }

        v39 = *&v36[8 * v44];
        ++v41;
        if (v39)
        {
          v41 = v44;
          goto LABEL_22;
        }
      }

      if ((v81 & 1) == 0)
      {
        v65 = v88;

        v66 = sub_1C2F761DC();
        v67 = sub_1C2F769EC();

        v68 = os_log_type_enabled(v66, v67);
        v54 = v80;
        if (v68)
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v90 = v65;
          v91 = v70;
          *v69 = 136315138;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076300, &qword_1C2F791B0);
          sub_1C2EF7414(&qword_1EC076F40, &qword_1EC076300, &qword_1C2F791B0, MEMORY[0x1E696B310]);
          v71 = sub_1C2F76EEC();
          v73 = sub_1C2EFAB28(v71, v72, &v91);

          *(v69 + 4) = v73;
          _os_log_impl(&dword_1C2EF2000, v66, v67, "remote leaves the groupSession for translation %s", v69, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v70);
          MEMORY[0x1C6929E80](v70, -1, -1);
          MEMORY[0x1C6929E80](v69, -1, -1);
        }

        sub_1C2F64E00();
        goto LABEL_34;
      }

      v60 = sub_1C2F761DC();
      v61 = sub_1C2F769EC();
      v62 = os_log_type_enabled(v60, v61);
      v63 = v80;
      if (v62)
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_1C2EF2000, v60, v61, "remote leaves the groupSession for translation starts locally.", v64, 2u);
        MEMORY[0x1C6929E80](v64, -1, -1);
      }
    }

    else
    {
      if (qword_1EDEBC648 != -1)
      {
        swift_once();
      }

      v32 = sub_1C2F761FC();
      __swift_project_value_buffer(v32, qword_1EDEBC650);
      v33 = sub_1C2F761DC();
      v34 = sub_1C2F769EC();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1C2EF2000, v33, v34, "Skip participants update because we have not joined.", v35, 2u);
        MEMORY[0x1C6929E80](v35, -1, -1);
      }
    }
  }
}

uint64_t sub_1C2F64E00()
{
  v1 = v0;
  v2 = sub_1C2F764EC();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1C2F7651C();
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEBC648 != -1)
  {
LABEL_23:
    swift_once();
  }

  v5 = sub_1C2F761FC();
  __swift_project_value_buffer(v5, qword_1EDEBC650);
  v6 = sub_1C2F761DC();
  v7 = sub_1C2F769EC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1C2EF2000, v6, v7, "controller: remoteEndsTranslation", v8, 2u);
    MEMORY[0x1C6929E80](v8, -1, -1);
  }

  v27 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_lock);
  os_unfair_lock_lock(v27 + 4);
  v9 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_observers;
  swift_beginAccess();
  v10 = *(v1 + v9);
  if (v10 >> 62)
  {
    v11 = sub_1C2F76BBC();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  while (v11 != v12)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1C6929250](v12, v10);
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v13 = *(v10 + 8 * v12 + 32);

      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v16 = *(v13 + 24);

    ++v12;
    if (Strong)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_1C2F1C074(0, v1[2] + 1, 1, v1);
      }

      v18 = v1[2];
      v17 = v1[3];
      if (v18 >= v17 >> 1)
      {
        v1 = sub_1C2F1C074((v17 > 1), v18 + 1, 1, v1);
      }

      v1[2] = v18 + 1;
      v19 = &v1[2 * v18];
      v19[4] = Strong;
      v19[5] = v16;
      v12 = v14;
    }
  }

  os_unfair_lock_unlock(v27 + 4);
  sub_1C2EF5A14(0, &qword_1EDEBC510, 0x1E69E9610);
  v20 = sub_1C2F76A2C();
  v21 = swift_allocObject();
  v21[2] = v1;
  v21[3] = sub_1C2F655D8;
  v21[4] = 0;
  aBlock[4] = sub_1C2F6876C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C2F40688;
  aBlock[3] = &block_descriptor_32;
  v22 = _Block_copy(aBlock);

  v23 = v28;
  sub_1C2F764FC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C2F670DC(&qword_1EC076700, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076060, &unk_1C2F79000);
  sub_1C2EF7414(&qword_1EC076710, &unk_1EC076060, &unk_1C2F79000, MEMORY[0x1E69E6328]);
  v24 = v30;
  v25 = v33;
  sub_1C2F76B3C();
  MEMORY[0x1C6929010](0, v23, v24, v22);
  _Block_release(v22);

  (*(v32 + 8))(v24, v25);
  return (*(v29 + 8))(v23, v31);
}

void sub_1C2F654A8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_1C2F0A860();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1C2F65618(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1C2F764EC();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1C2F7651C();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  v50 = *a1;
  v51 = v7;
  v52 = *(a1 + 4);
  if (qword_1EDEBC648 != -1)
  {
LABEL_23:
    swift_once();
  }

  v8 = sub_1C2F761FC();
  __swift_project_value_buffer(v8, qword_1EDEBC650);
  sub_1C2F09740(&v50, &aBlock);
  v9 = sub_1C2F761DC();
  v10 = sub_1C2F769EC();
  sub_1C2F0AA10(&v50);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v49[0] = v12;
    *v11 = 136315138;
    aBlock = v50;
    v46 = v51;
    v47 = v52;
    v13 = CallTranslationTranscript.description.getter();
    v15 = sub_1C2EFAB28(v13, v14, v49);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1C2EF2000, v9, v10, "passRemoteMessage %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1C6929E80](v12, -1, -1);
    MEMORY[0x1C6929E80](v11, -1, -1);
  }

  v16 = swift_allocObject();
  v17 = v51;
  *(v16 + 16) = v50;
  *(v16 + 32) = v17;
  v38 = v16;
  *(v16 + 48) = v52;
  v18 = *(v2 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_lock);
  sub_1C2F09740(&v50, &aBlock);
  v37 = v18;
  os_unfair_lock_lock(v18 + 4);
  v19 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_observers;
  swift_beginAccess();
  v20 = *(v2 + v19);
  if (v20 >> 62)
  {
    v2 = sub_1C2F76BBC();
  }

  else
  {
    v2 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  while (v2 != v21)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x1C6929250](v21, v20);
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v21 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v23 = *(v20 + 8 * v21 + 32);

      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v26 = *(v23 + 24);

    ++v21;
    if (Strong)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1C2F1C074(0, v22[2] + 1, 1, v22);
      }

      v28 = v22[2];
      v27 = v22[3];
      if (v28 >= v27 >> 1)
      {
        v22 = sub_1C2F1C074((v27 > 1), v28 + 1, 1, v22);
      }

      v22[2] = v28 + 1;
      v29 = &v22[2 * v28];
      v29[4] = Strong;
      v29[5] = v26;
      v21 = v24;
    }
  }

  os_unfair_lock_unlock(v37 + 4);
  sub_1C2EF5A14(0, &qword_1EDEBC510, 0x1E69E9610);
  v30 = sub_1C2F76A2C();
  v31 = swift_allocObject();
  v31[2] = v22;
  v31[3] = sub_1C2F6739C;
  v31[4] = v38;
  v47 = sub_1C2F6876C;
  v48 = v31;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v46 = sub_1C2F40688;
  *(&v46 + 1) = &block_descriptor_47;
  v32 = _Block_copy(&aBlock);

  v33 = v39;
  sub_1C2F764FC();
  *&aBlock = MEMORY[0x1E69E7CC0];
  sub_1C2F670DC(&qword_1EC076700, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076060, &unk_1C2F79000);
  sub_1C2EF7414(&qword_1EC076710, &unk_1EC076060, &unk_1C2F79000, MEMORY[0x1E69E6328]);
  v34 = v41;
  v35 = v44;
  sub_1C2F76B3C();
  MEMORY[0x1C6929010](0, v33, v34, v32);
  _Block_release(v32);

  (*(v43 + 8))(v34, v35);
  return (*(v40 + 8))(v33, v42);
}

uint64_t sub_1C2F65C44(uint64_t a1)
{
  v1 = *(a1 + 4);
  v2 = *(a1 + 5);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  LODWORD(v6) = *a1;
  BYTE4(v6) = v1;
  BYTE5(v6) = v2;
  *(&v6 + 1) = v3;
  v7 = v4;
  v8 = *(a1 + 24);
  return sub_1C2F65618(&v6);
}

uint64_t sub_1C2F65C90()
{
  v0 = sub_1C2F761FC();
  __swift_allocate_value_buffer(v0, qword_1EDEBC650);
  __swift_project_value_buffer(v0, qword_1EDEBC650);
  return sub_1C2F761EC();
}

unint64_t sub_1C2F65D48()
{
  result = qword_1EC076EE0;
  if (!qword_1EC076EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076EE0);
  }

  return result;
}

unint64_t sub_1C2F65DA0()
{
  result = qword_1EC076EE8;
  if (!qword_1EC076EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076EE8);
  }

  return result;
}

uint64_t sub_1C2F65E14(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1C2F76BBC();
LABEL_9:
  result = sub_1C2F76C8C();
  *v2 = result;
  return result;
}

unint64_t *sub_1C2F65EB4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_1C2F662DC(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1C2F65F50(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1C2F75FCC();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076F00, &unk_1C2F7D3B0);
  result = sub_1C2F76C4C();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1C2F670DC(&unk_1EC076F08, MEMORY[0x1E696B330], MEMORY[0x1E696B338]);
    result = sub_1C2F7660C();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1C2F66278(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1C2F76BBC();
  }

  return sub_1C2F76C8C();
}

uint64_t sub_1C2F662DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a2;
  v51 = a4;
  v36 = a1;
  v50 = sub_1C2F75AEC();
  v5 = *(v50 - 8);
  v6 = MEMORY[0x1EEE9AC00](v50);
  v49 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v35 - v8;
  v47 = sub_1C2F75FCC();
  v9 = MEMORY[0x1EEE9AC00](v47);
  v45 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v44 = &v35 - v13;
  v14 = 0;
  v52 = a3;
  v15 = *(a3 + 56);
  v39 = a3 + 56;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v37 = 0;
  v38 = (v16 + 63) >> 6;
  v46 = v12;
  v42 = v12 + 8;
  v43 = v12 + 16;
  v41 = (v5 + 8);
  v19 = v44;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v55 = (v18 - 1) & v18;
LABEL_11:
    v23 = v20 | (v14 << 6);
    v24 = *(v52 + 48);
    v26 = v46;
    v25 = v47;
    v27 = *(v46 + 72);
    v40 = v23;
    (*(v46 + 16))(v19, v24 + v27 * v23, v47);
    v28 = v48;
    sub_1C2F75FBC();
    v29 = v45;
    sub_1C2F75EBC();
    v30 = v49;
    sub_1C2F75FBC();
    v54 = *(v26 + 8);
    v54(v29, v25);
    sub_1C2F670DC(&unk_1EDEBD710, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v31 = v50;
    v53 = sub_1C2F7662C();
    v32 = *v41;
    (*v41)(v30, v31);
    v32(v28, v31);
    result = (v54)(v19, v25);
    v18 = v55;
    if ((v53 & 1) == 0)
    {
      *(v36 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
      if (__OFADD__(v37++, 1))
      {
        __break(1u);
LABEL_15:
        v34 = v52;

        return sub_1C2F65F50(v36, v35, v37, v34);
      }
    }
  }

  v21 = v14;
  while (1)
  {
    v14 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v14 >= v38)
    {
      goto LABEL_15;
    }

    v22 = *(v39 + 8 * v14);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v55 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2F666A8(void (*a1)(char *, size_t), uint64_t a2)
{
  v3 = v2;
  v60 = *MEMORY[0x1E69E9840];
  v53 = sub_1C2F75AEC();
  v6 = *(v53 - 8);
  v7 = MEMORY[0x1EEE9AC00](v53);
  v52 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v51 = v37 - v9;
  v50 = sub_1C2F75FCC();
  v10 = *(v50 - 8);
  v11 = MEMORY[0x1EEE9AC00](v50);
  v49 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v48 = v37 - v13;
  v14 = *(a1 + 32);
  v15 = v14 & 0x3F;
  v16 = ((1 << v14) + 63) >> 6;
  v17 = 8 * v16;
  v55 = a2;

  if (v15 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v38 = v16;
    v39 = v3;
    v37[1] = v37;
    MEMORY[0x1EEE9AC00](v18);
    v40 = v37 - ((v17 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v40, v17);
    v16 = 0;
    v54 = a1;
    v20 = *(a1 + 7);
    a1 = (a1 + 56);
    v19 = v20;
    v43 = a1;
    v21 = 1 << *(a1 - 24);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v19;
    v41 = 0;
    v42 = (v21 + 63) >> 6;
    v56 = v10;
    v46 = v10 + 8;
    v47 = v10 + 16;
    v45 = (v6 + 8);
    while (v23)
    {
      v59 = (v23 - 1) & v23;
      v24 = __clz(__rbit64(v23)) | (v16 << 6);
      v25 = v56;
LABEL_12:
      v28 = *(v54 + 6);
      v29 = *(v25 + 72);
      v44 = v24;
      v6 = v48;
      v10 = v50;
      (*(v25 + 16))(v48, v28 + v29 * v24, v50);
      v3 = v51;
      sub_1C2F75FBC();
      v30 = v49;
      sub_1C2F75EBC();
      v31 = v52;
      sub_1C2F75FBC();
      v58 = *(v25 + 8);
      v58(v30, v10);
      sub_1C2F670DC(&unk_1EDEBD710, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v17 = v53;
      v57 = sub_1C2F7662C();
      a1 = *v45;
      (*v45)(v31, v17);
      a1(v3, v17);
      v58(v6, v10);
      v23 = v59;
      if ((v57 & 1) == 0)
      {
        *&v40[(v44 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v44;
        if (__OFADD__(v41++, 1))
        {
          __break(1u);
LABEL_16:
          v33 = sub_1C2F65F50(v40, v38, v41, v54);

          return v33;
        }
      }
    }

    v26 = v16;
    v25 = v56;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v16 >= v42)
      {
        goto LABEL_16;
      }

      v27 = *(v43 + v16);
      ++v26;
      if (v27)
      {
        v59 = (v27 - 1) & v27;
        v24 = __clz(__rbit64(v27)) | (v16 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v35 = swift_slowAlloc();
  v36 = v55;

  v33 = sub_1C2F65EB4(v35, v16, a1, v36);

  MEMORY[0x1C6929E80](v35, -1, -1);

  return v33;
}

unint64_t sub_1C2F66BC8(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1 >> 62;
  v5 = (*a1 & 0xFFFFFFFFFFFFFF8);
  if (v4)
  {
    goto LABEL_66;
  }

  v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      if (v4)
      {
        return sub_1C2F76BBC();
      }

      return v5[2];
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C6929250](v7, v3);
    }

    else
    {
      if (v7 >= v5[2])
      {
        goto LABEL_59;
      }
    }

    if (!swift_unknownObjectWeakLoadStrong())
    {
      break;
    }

    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      result = swift_unknownObjectRelease();
      if (Strong == a2)
      {
        goto LABEL_18;
      }
    }

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_60;
    }
  }

LABEL_18:
  v11 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    v5 = a1;
    while (1)
    {
      if (v3 >> 62)
      {
        if (v11 == sub_1C2F76BBC())
        {
          return v7;
        }
      }

      else if (v11 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return v7;
      }

      v4 = v3 & 0xC000000000000001;
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C6929250](v11, v3);
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          v6 = sub_1C2F76BBC();
          goto LABEL_3;
        }

        if (v11 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        v12 = swift_unknownObjectWeakLoadStrong();

        if (!v12 || (swift_unknownObjectRelease(), v12 != a2))
        {
          if (v7 != v11)
          {
            if (v4)
            {
              v13 = MEMORY[0x1C6929250](v7, v3);
              v14 = MEMORY[0x1C6929250](v11, v3);
            }

            else
            {
              if ((v7 & 0x8000000000000000) != 0)
              {
                goto LABEL_63;
              }

              v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v7 >= v15)
              {
                goto LABEL_64;
              }

              if (v11 >= v15)
              {
                goto LABEL_65;
              }

              v13 = *(v3 + 32 + 8 * v7);
              v14 = *(v3 + 32 + 8 * v11);
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
            {
              v3 = sub_1C2F66278(v3);
              v16 = (v3 >> 62) & 1;
            }

            else
            {
              LODWORD(v16) = 0;
            }

            v4 = v3 & 0xFFFFFFFFFFFFFF8;
            *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v14;

            if ((v3 & 0x8000000000000000) != 0 || v16)
            {
              v3 = sub_1C2F66278(v3);
              v4 = v3 & 0xFFFFFFFFFFFFFF8;
              if ((v11 & 0x8000000000000000) != 0)
              {
LABEL_54:
                __break(1u);
                return sub_1C2F76BBC();
              }
            }

            else if ((v11 & 0x8000000000000000) != 0)
            {
              goto LABEL_54;
            }

            if (v11 >= *(v4 + 16))
            {
              goto LABEL_62;
            }

            *(v4 + 8 * v11 + 32) = v13;

            *a1 = v3;
          }

          v8 = __OFADD__(v7++, 1);
          if (v8)
          {
            goto LABEL_61;
          }
        }
      }

      else
      {
      }

      v8 = __OFADD__(v11++, 1);
      if (v8)
      {
        goto LABEL_58;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2F66EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for WeakDelegate();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1C2F76BBC();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1C2F76BBC();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C2F66FE4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1C2F76BBC();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_1C2F76BBC();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_1C2F65E14(result, 1);

  return sub_1C2F66EE4(v5, v3, 0);
}

uint64_t sub_1C2F670DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C2F67124(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2F0AC48;

  return sub_1C2F60438(a1, v4, v5, v6);
}

unint64_t sub_1C2F671D8()
{
  result = qword_1EC076F28;
  if (!qword_1EC076F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076F28);
  }

  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C2F67280()
{
  result = qword_1EDEBC4E0;
  if (!qword_1EDEBC4E0)
  {
    sub_1C2EF5A14(255, &qword_1EDEBC4F0, 0x1E69D8B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBC4E0);
  }

  return result;
}

uint64_t sub_1C2F672E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2F06348;

  return sub_1C2F61FDC(a1, v4, v5, v6);
}

uint64_t sub_1C2F6739C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 32);
  v7[0] = *(v2 + 16);
  v7[1] = v5;
  v8 = *(v2 + 48);
  return (*(a2 + 24))(v7, ObjectType, a2);
}

uint64_t objectdestroy_10Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

unint64_t sub_1C2F67450()
{
  result = qword_1EC076F98;
  if (!qword_1EC076F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076F98);
  }

  return result;
}

void sub_1C2F674A4(char *a1)
{
  v144 = sub_1C2F75AEC();
  v3 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v5 = &v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076080, &unk_1C2F79010);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v137 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076088, &qword_1C2F7D430);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v137 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v137 - v16;
  v18 = *&v1[OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_call];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_1EDEBC648 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_80;
  }

  v142 = v3;
  v143 = a1;
  v139 = v18;
  v140 = v5;
  v141 = v1;
  v145 = Strong;
  v20 = [Strong provider];
  v18 = &selRef_objectForKey_;
  v21 = [v20 isFaceTimeProvider];

  if ((v21 & 1) != 0 || (v22 = -[NSObject provider](v145, sel_provider), v23 = [v22 isTelephonyProvider], v22, v23))
  {
    v24 = [v145 provider];
    v25 = [v24 isFaceTimeProvider];

    if (!v25)
    {
LABEL_30:
      if (qword_1EDEBC648 != -1)
      {
        swift_once();
      }

      v72 = sub_1C2F761FC();
      v73 = __swift_project_value_buffer(v72, qword_1EDEBC650);
      v74 = v143;
      v75 = sub_1C2F761DC();
      v76 = sub_1C2F769EC();

      v77 = os_log_type_enabled(v75, v76);
      v139 = v73;
      if (v77)
      {
        v78 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v148[0] = v18;
        *v78 = 136315138;
        v79 = [v74 systemActivitySessions];
        sub_1C2EF5A14(0, &qword_1EDEBC4F0, 0x1E69D8B58);
        sub_1C2F67280();
        sub_1C2F7697C();

        v80 = sub_1C2F7698C();
        v82 = v81;

        v83 = sub_1C2EFAB28(v80, v82, v148);

        *(v78 + 4) = v83;
        _os_log_impl(&dword_1C2EF2000, v75, v76, "received systemActivitySessionsChangedFor %s", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x1C6929E80](v18, -1, -1);
        MEMORY[0x1C6929E80](v78, -1, -1);
      }

      v138 = v74;
      v84 = [v74 systemActivitySessions];
      v1 = sub_1C2EF5A14(0, &qword_1EDEBC4F0, 0x1E69D8B58);
      v85 = sub_1C2F67280();
      v86 = sub_1C2F7697C();

      v142 = v86;
      v143 = v1;
      v137 = v85;
      if ((v86 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_1C2F76B7C();
        sub_1C2F769AC();
        v86 = v148[0];
        v87 = v148[1];
        v88 = v148[2];
        v89 = v148[3];
        v90 = v148[4];
      }

      else
      {
        v91 = -1 << *(v86 + 32);
        v87 = v86 + 56;
        v88 = ~v91;
        v92 = -v91;
        if (v92 < 64)
        {
          v93 = ~(-1 << v92);
        }

        else
        {
          v93 = -1;
        }

        v90 = v93 & *(v86 + 56);

        v89 = 0;
      }

      v140 = v88;
      v94 = (v88 + 64) >> 6;
      v144 = v89;
      if (v86 < 0)
      {
        goto LABEL_47;
      }

LABEL_41:
      v95 = v89;
      v96 = v90;
      if (!v90)
      {
        while (1)
        {
          v89 = v95 + 1;
          if (__OFADD__(v95, 1))
          {
            break;
          }

          if (v89 >= v94)
          {
            goto LABEL_58;
          }

          v96 = *(v87 + 8 * v89);
          ++v95;
          if (v96)
          {
            goto LABEL_45;
          }
        }

        __break(1u);
LABEL_80:
        swift_once();
LABEL_8:
        v32 = sub_1C2F761FC();
        __swift_project_value_buffer(v32, qword_1EDEBC650);
        v33 = v1;
        v145 = sub_1C2F761DC();
        v34 = sub_1C2F769DC();

        if (os_log_type_enabled(v145, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v148[0] = v36;
          *v35 = 136315138;
          v37 = v18[3];
          v38 = v18[4];

          v39 = sub_1C2EFAB28(v37, v38, v148);

          *(v35 + 4) = v39;
          _os_log_impl(&dword_1C2EF2000, v145, v34, "ignore activity updates. not able to find current call. %s.", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v36);
          MEMORY[0x1C6929E80](v36, -1, -1);
          MEMORY[0x1C6929E80](v35, -1, -1);
LABEL_70:

          return;
        }

        goto LABEL_15;
      }

LABEL_45:
      v97 = (v96 - 1) & v96;
      v98 = *(*(v86 + 48) + ((v89 << 9) | (8 * __clz(__rbit64(v96)))));
      if (v98)
      {
        while (1)
        {
          v100 = [v98 activity];
          v18 = [v100 activityIdentifier];

          v101 = sub_1C2F766CC();
          v1 = v102;

          if (qword_1EC075CB0 != -1)
          {
            swift_once();
          }

          if (v101 == qword_1EC07B920 && v1 == *algn_1EC07B928)
          {
            break;
          }

          v104 = sub_1C2F76EFC();

          if (v104)
          {
            goto LABEL_72;
          }

          v90 = v97;
          v144 = v89;
          if ((v86 & 0x8000000000000000) == 0)
          {
            goto LABEL_41;
          }

LABEL_47:
          v99 = sub_1C2F76BDC();
          if (v99)
          {
            v146 = v99;
            swift_dynamicCast();
            v98 = v147;
            v97 = v90;
            if (v147)
            {
              continue;
            }
          }

          goto LABEL_58;
        }

LABEL_72:
        sub_1C2F0AAB8(v86);

        v118 = *&v141[OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_activitySession];
        *&v141[OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_activitySession] = v98;
        v119 = v98;

        v120 = v138;
        swift_unknownObjectWeakAssign();
        v121 = v119;
        v122 = sub_1C2F761DC();
        v123 = sub_1C2F769EC();

        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          v125 = swift_slowAlloc();
          *v124 = 138412290;
          *(v124 + 4) = v121;
          *v125 = v98;
          v126 = v121;
          _os_log_impl(&dword_1C2EF2000, v122, v123, "setting activitySession to %@", v124, 0xCu);
          sub_1C2F0A8D8(v125, &unk_1EC076070, &qword_1C2F7A190);
          MEMORY[0x1C6929E80](v125, -1, -1);
          MEMORY[0x1C6929E80](v124, -1, -1);
        }

        if ([v121 isLocallyInitiated])
        {
          v127 = v120;
          v128 = sub_1C2F761DC();
          v129 = sub_1C2F769EC();

          if (os_log_type_enabled(v128, v129))
          {
            v130 = swift_slowAlloc();
            v131 = swift_slowAlloc();
            v147 = v131;
            *v130 = 136315138;
            v132 = [v127 systemActivitySessions];
            sub_1C2F7697C();

            v133 = sub_1C2F7698C();
            v135 = v134;

            v136 = sub_1C2EFAB28(v133, v135, &v147);

            *(v130 + 4) = v136;
            _os_log_impl(&dword_1C2EF2000, v128, v129, "locally created systemActivitySessionsChangedFor %s", v130, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v131);
            MEMORY[0x1C6929E80](v131, -1, -1);
            MEMORY[0x1C6929E80](v130, -1, -1);
          }
        }

        else
        {
          sub_1C2F61684();
        }

        goto LABEL_70;
      }

LABEL_58:
      sub_1C2F0AAB8(v86);

      v105 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_activitySession;
      v106 = v141;
      v107 = *&v141[OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_activitySession];
      if (v107)
      {
        v108 = v107;
        if (([v108 isLocallyInitiated] & 1) == 0)
        {
          v109 = sub_1C2F761DC();
          v110 = sub_1C2F769EC();
          if (os_log_type_enabled(v109, v110))
          {
            v111 = swift_slowAlloc();
            *v111 = 0;
            _os_log_impl(&dword_1C2EF2000, v109, v110, "remote ends translation from callback", v111, 2u);
            MEMORY[0x1C6929E80](v111, -1, -1);
          }

          sub_1C2F64E00();
        }

        v112 = sub_1C2F761DC();
        v113 = sub_1C2F769EC();
        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          *v114 = 0;
          _os_log_impl(&dword_1C2EF2000, v112, v113, "Clear activitySession", v114, 2u);
          MEMORY[0x1C6929E80](v114, -1, -1);
        }

        v115 = *&v106[v105];
        *&v106[v105] = 0;

        return;
      }

      v51 = sub_1C2F761DC();
      v116 = sub_1C2F769EC();
      if (!os_log_type_enabled(v51, v116))
      {
LABEL_69:

        goto LABEL_70;
      }

      v117 = swift_slowAlloc();
      *v117 = 0;
      _os_log_impl(&dword_1C2EF2000, v51, v116, "No activitySession", v117, 2u);
      v67 = v117;
LABEL_68:
      MEMORY[0x1C6929E80](v67, -1, -1);
      goto LABEL_69;
    }

    v26 = [v145 callGroupUUID];
    if (v26)
    {
      v27 = v26;
      sub_1C2F75ACC();

      v28 = v142;
      v29 = *(v142 + 56);
      v30 = v17;
      v31 = 0;
    }

    else
    {
      v28 = v142;
      v29 = *(v142 + 56);
      v30 = v17;
      v31 = 1;
    }

    v45 = v144;
    v29(v30, v31, 1, v144);
    v46 = [v143 groupUUID];
    sub_1C2F75ACC();

    v29(v15, 0, 1, v45);
    v47 = *(v6 + 48);
    sub_1C2F68614(v17, v8);
    sub_1C2F68614(v15, &v8[v47]);
    v18 = *(v28 + 48);
    if ((v18)(v8, 1, v45) == 1)
    {
      sub_1C2F0A8D8(v15, &unk_1EC076088, &qword_1C2F7D430);
      sub_1C2F0A8D8(v17, &unk_1EC076088, &qword_1C2F7D430);
      if ((v18)(&v8[v47], 1, v144) == 1)
      {
        sub_1C2F0A8D8(v8, &unk_1EC076088, &qword_1C2F7D430);
        goto LABEL_30;
      }
    }

    else
    {
      sub_1C2F68614(v8, v12);
      if ((v18)(&v8[v47], 1, v45) != 1)
      {
        v68 = v142;
        v69 = &v8[v47];
        v70 = v140;
        (*(v142 + 32))(v140, v69, v45);
        sub_1C2F670DC(&unk_1EDEBD710, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v71 = sub_1C2F7662C();
        v18 = *(v68 + 8);
        (v18)(v70, v45);
        sub_1C2F0A8D8(v15, &unk_1EC076088, &qword_1C2F7D430);
        sub_1C2F0A8D8(v17, &unk_1EC076088, &qword_1C2F7D430);
        (v18)(v12, v45);
        sub_1C2F0A8D8(v8, &unk_1EC076088, &qword_1C2F7D430);
        if (v71)
        {
          goto LABEL_30;
        }

LABEL_25:
        if (qword_1EDEBC648 != -1)
        {
          swift_once();
        }

        v48 = sub_1C2F761FC();
        __swift_project_value_buffer(v48, qword_1EDEBC650);
        v49 = v141;
        v50 = v143;
        v51 = sub_1C2F761DC();
        v52 = sub_1C2F769CC();

        v53 = os_log_type_enabled(v51, v52);
        v54 = v142;
        if (!v53)
        {
          goto LABEL_69;
        }

        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v148[0] = v56;
        *v55 = 136315394;
        v57 = *(v139 + 24);
        v58 = *(v139 + 32);

        v59 = sub_1C2EFAB28(v57, v58, v148);

        *(v55 + 4) = v59;
        *(v55 + 12) = 2080;
        v60 = [v50 groupUUID];
        v61 = v140;
        sub_1C2F75ACC();

        sub_1C2F670DC(&unk_1EDEBD700, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v62 = v144;
        v63 = sub_1C2F76EEC();
        v65 = v64;
        (*(v54 + 8))(v61, v62);
        v66 = sub_1C2EFAB28(v63, v65, v148);

        *(v55 + 14) = v66;
        _os_log_impl(&dword_1C2EF2000, v51, v52, "ignore activity updates. conversation group uuid didn't match to current call. %s. group uuid: %s", v55, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C6929E80](v56, -1, -1);
        v67 = v55;
        goto LABEL_68;
      }

      sub_1C2F0A8D8(v15, &unk_1EC076088, &qword_1C2F7D430);
      sub_1C2F0A8D8(v17, &unk_1EC076088, &qword_1C2F7D430);
      (*(v142 + 8))(v12, v144);
    }

    sub_1C2F0A8D8(v8, &qword_1EC076080, &unk_1C2F79010);
    goto LABEL_25;
  }

  if (qword_1EDEBC648 != -1)
  {
    swift_once();
  }

  v40 = sub_1C2F761FC();
  __swift_project_value_buffer(v40, qword_1EDEBC650);
  v41 = sub_1C2F761DC();
  v42 = sub_1C2F769CC();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_1C2EF2000, v41, v42, "Not handling unexpected providers.", v43, 2u);
    MEMORY[0x1C6929E80](v43, -1, -1);
  }

LABEL_15:
  v44 = v145;
}

uint64_t sub_1C2F68614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076088, &qword_1C2F7D430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C2F68698()
{
  result = qword_1EC076FA0;
  if (!qword_1EC076FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076FA0);
  }

  return result;
}

unint64_t sub_1C2F686F0()
{
  result = qword_1EC076FA8;
  if (!qword_1EC076FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076FA8);
  }

  return result;
}

id sub_1C2F68770()
{
  result = [objc_allocWithZone(type metadata accessor for FTMenuItemRegistry()) init];
  qword_1EDEBCC58 = result;
  return result;
}

id FTMenuItemRegistry.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t FTMenuItemRegistry.register(with:punchOutProvider:callRecording:deskView:routes:liveCaptions:liveTranslation:screenShare:sharePlay:splitCalls:conferenceParticipants:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  if (qword_1EDEBC5F8 != -1)
  {
    swift_once();
  }

  v19 = sub_1C2F761FC();
  __swift_project_value_buffer(v19, qword_1EDEBC600);

  v20 = sub_1C2F761DC();
  v21 = sub_1C2F769EC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v42 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_1C2EFAB28(a1, a2, &v42);
    _os_log_impl(&dword_1C2EF2000, v20, v21, "Register custom item providers for %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1C6929E80](v23, -1, -1);
    MEMORY[0x1C6929E80](v22, -1, -1);
  }

  v24 = OBJC_IVAR___CCFTMenuItemRegistry_menuItemProviders;
  swift_beginAccess();
  v25 = *(v13 + v24);
  if (*(v25 + 16) && (v26 = sub_1C2EFAEC0(a1, a2), (v27 & 1) != 0))
  {
    v28 = *(*(v25 + 56) + 8 * v26);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    type metadata accessor for FTMenuItemProviderContainer();
    v28 = swift_allocObject();
    *(v28 + 16) = 0u;
    *(v28 + 32) = 0u;
    *(v28 + 48) = 0u;
    *(v28 + 64) = 0u;
    *(v28 + 80) = 0u;
    *(v28 + 96) = 0u;
    *(v28 + 112) = 0u;
    *(v28 + 128) = 0u;
    *(v28 + 144) = 0u;
    *(v28 + 160) = 0u;
    *(v28 + 176) = 0u;
    *(v28 + 192) = 0u;
    *(v28 + 208) = 0u;
    *(v28 + 224) = 0u;
    *(v28 + 240) = 0u;
    *(v28 + 256) = 0u;
    *(v28 + 272) = 0u;
    *(v28 + 288) = 0u;
    *(v28 + 304) = 0u;
    *(v28 + 320) = 0u;
    *(v28 + 336) = 0u;
    *(v28 + 352) = 0u;
    *(v28 + 368) = 0u;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v41[0] = *(v13 + v24);
    *(v13 + v24) = 0x8000000000000000;
    sub_1C2EFB014(v28, a1, a2, isUniquelyReferenced_nonNull_native, &qword_1EC076FC8, &qword_1C2F7D600);

    *(v13 + v24) = *&v41[0];
    swift_endAccess();
  }

  sub_1C2EFB1B4(a3, &v42);
  if (v43)
  {
    sub_1C2EF6918(&v42, v41);
    sub_1C2EF6918(v41, v40);
    swift_beginAccess();
    sub_1C2EFB224(v40, v28 + 16);
    swift_endAccess();
  }

  sub_1C2EFB1B4(a4, &v42);
  if (v43)
  {
    sub_1C2EF6918(&v42, v41);
    sub_1C2EF6918(v41, v40);
    swift_beginAccess();
    sub_1C2EFB224(v40, v28 + 56);
    swift_endAccess();
  }

  sub_1C2EFB1B4(a5, &v42);
  if (v43)
  {
    sub_1C2EF6918(&v42, v41);
    sub_1C2EF6918(v41, v40);
    swift_beginAccess();
    sub_1C2EFB224(v40, v28 + 96);
    swift_endAccess();
  }

  sub_1C2EFB1B4(a6, &v42);
  if (v43)
  {
    sub_1C2EF6918(&v42, v41);
    sub_1C2EF6918(v41, v40);
    swift_beginAccess();
    sub_1C2EFB224(v40, v28 + 136);
    swift_endAccess();
  }

  sub_1C2EFB1B4(a7, &v42);
  if (v43)
  {
    sub_1C2EF6918(&v42, v41);
    sub_1C2EF6918(v41, v40);
    swift_beginAccess();
    sub_1C2EFB224(v40, v28 + 176);
    swift_endAccess();
  }

  sub_1C2EFB1B4(a8, &v42);
  if (v43)
  {
    sub_1C2EF6918(&v42, v41);
    sub_1C2EF6918(v41, v40);
    swift_beginAccess();
    sub_1C2EFB224(v40, v28 + 216);
    swift_endAccess();
  }

  sub_1C2EFB1B4(a9, &v42);
  if (v43)
  {
    sub_1C2EF6918(&v42, v41);
    sub_1C2EF6918(v41, v40);
    swift_beginAccess();
    sub_1C2EFB224(v40, v28 + 256);
    swift_endAccess();
  }

  sub_1C2EFB1B4(a10, &v42);
  if (v43)
  {
    sub_1C2EF6918(&v42, v41);
    sub_1C2EF6918(v41, v40);
    swift_beginAccess();
    sub_1C2EFB224(v40, v28 + 296);
    swift_endAccess();
  }

  v36 = a1;
  sub_1C2EFB1B4(a11, &v42);
  if (v43)
  {
    sub_1C2EF6918(&v42, v41);
    sub_1C2EF6918(v41, v40);
    swift_beginAccess();
    sub_1C2EFB224(v40, v28 + 336);
    swift_endAccess();
  }

  if (a12)
  {
    swift_beginAccess();
    *(v28 + 376) = a12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076FC0, &qword_1C2F7D4F8);
  v30 = swift_allocObject();
  sub_1C2EFB1B4(a3, v30 + 32);
  sub_1C2EFB1B4(a4, v30 + 72);
  sub_1C2EFB1B4(a5, v30 + 112);
  sub_1C2EFB1B4(a6, v30 + 152);
  sub_1C2EFB1B4(a7, v30 + 192);
  sub_1C2EFB1B4(a8, v30 + 232);
  sub_1C2EFB1B4(a9, v30 + 272);
  sub_1C2EFB1B4(a10, v30 + 312);
  sub_1C2EFB1B4(a11, v30 + 352);
  sub_1C2EFB1B4(v30 + 32, &v42);
  if (v43 || (sub_1C2EFB668(&v42), sub_1C2EFB1B4(v30 + 72, &v42), v43) || (sub_1C2EFB668(&v42), sub_1C2EFB1B4(v30 + 112, &v42), v43) || (sub_1C2EFB668(&v42), sub_1C2EFB1B4(v30 + 152, &v42), v43) || (sub_1C2EFB668(&v42), sub_1C2EFB1B4(v30 + 192, &v42), v43) || (sub_1C2EFB668(&v42), sub_1C2EFB1B4(v30 + 232, &v42), v43) || (sub_1C2EFB668(&v42), sub_1C2EFB1B4(v30 + 272, &v42), v43) || (sub_1C2EFB668(&v42), sub_1C2EFB1B4(v30 + 312, &v42), v43) || (sub_1C2EFB668(&v42), sub_1C2EFB1B4(v30 + 352, &v42), v43))
  {
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076FB8, &qword_1C2F7D4F0);
    swift_arrayDestroy();
    swift_deallocClassInstance();

    return sub_1C2EFB668(&v42);
  }

  else
  {
    sub_1C2EFB668(&v42);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076FB8, &qword_1C2F7D4F0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (!a12)
    {

      v32 = sub_1C2F761DC();
      v33 = sub_1C2F769EC();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *&v42 = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_1C2EFAB28(v36, a2, &v42);
        _os_log_impl(&dword_1C2EF2000, v32, v33, "No custom item providers registered for %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        MEMORY[0x1C6929E80](v35, -1, -1);
        MEMORY[0x1C6929E80](v34, -1, -1);
      }
    }
  }
}

id FTMenuItemRegistry.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___CCFTMenuItemRegistry_menuItemProviders] = MEMORY[0x1E69E7CC8];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id FTMenuItemRegistry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FTMenuItemProviderContainer.deinit()
{
  sub_1C2EFB668(v0 + 16);
  sub_1C2EFB668(v0 + 56);
  sub_1C2EFB668(v0 + 96);
  sub_1C2EFB668(v0 + 136);
  sub_1C2EFB668(v0 + 176);
  sub_1C2EFB668(v0 + 216);
  sub_1C2EFB668(v0 + 256);
  sub_1C2EFB668(v0 + 296);
  sub_1C2EFB668(v0 + 336);

  return v0;
}

double sub_1C2F6949C()
{
  result = 0.0;
  v0[22] = 0u;
  v0[23] = 0u;
  v0[20] = 0u;
  v0[21] = 0u;
  v0[18] = 0u;
  v0[19] = 0u;
  v0[16] = 0u;
  v0[17] = 0u;
  v0[14] = 0u;
  v0[15] = 0u;
  v0[12] = 0u;
  v0[13] = 0u;
  v0[10] = 0u;
  v0[11] = 0u;
  v0[8] = 0u;
  v0[9] = 0u;
  v0[6] = 0u;
  v0[7] = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t sub_1C2F694D8()
{
  v0 = sub_1C2F761FC();
  __swift_allocate_value_buffer(v0, qword_1EDEBC600);
  __swift_project_value_buffer(v0, qword_1EDEBC600);
  return sub_1C2F761EC();
}

uint64_t sub_1C2F69550(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076758, &qword_1C2F7A260);
  v37 = v4;
  result = sub_1C2F76D7C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1C2F76F9C();
      sub_1C2F7673C();
      result = sub_1C2F76FDC();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C2F69810(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076768, &unk_1C2F7A270);
  v36 = v4;
  result = sub_1C2F76D7C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(v5 + 56) + 40 * v20;
      v23 = *v22;
      v39 = *(v22 + 5);
      v40 = *(v22 + 4);
      v24 = *(v22 + 16);
      v25 = *(v22 + 32);
      v37 = *(v22 + 24);
      v38 = *(v22 + 8);
      if ((v36 & 1) == 0)
      {
      }

      result = MEMORY[0x1C6929560](*(v7 + 40), v21, 4);
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = *(v7 + 56) + 40 * v15;
      *v16 = v23;
      *(v16 + 4) = v40;
      *(v16 + 5) = v39;
      *(v16 + 8) = v38;
      *(v16 + 16) = v24;
      *(v16 + 24) = v37;
      *(v16 + 32) = v25;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C2F69ADC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076760, &qword_1C2F7A268);
  result = sub_1C2F76D7C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v4;
    v34 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = (*(v5 + 56) + 2 * v20);
      v23 = v22[1];
      v24 = *v22;
      result = MEMORY[0x1C6929560](*(v7 + 40), v21, 4);
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = (*(v7 + 56) + 2 * v15);
      *v16 = v24;
      v16[1] = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v33)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1C2F69D58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_1C2F76D7C();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_1C2F76F9C();
      sub_1C2F7673C();
      result = sub_1C2F76FDC();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_1C2F69FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1C2EFAEC0(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1C2F69550(v18, a5 & 1);
      v13 = sub_1C2EFAEC0(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1C2F76F2C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1C2F6A480();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

unint64_t sub_1C2F6A180(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1C2F3D888(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1C2F69810(v14, a3 & 1);
      result = sub_1C2F3D888(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1C2F76F2C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1C2F6A5F8();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 4 * result) = a2;
    v21 = v19[7] + 40 * result;
    v22 = *a1;
    v23 = a1[1];
    *(v21 + 32) = *(a1 + 4);
    *v21 = v22;
    *(v21 + 16) = v23;
    v24 = v19[2];
    v13 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v13)
    {
      v19[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 40 * result;

  return sub_1C2F6A790(a1, v20);
}

uint64_t sub_1C2F6A2E0(__int16 a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1C2F3D888(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_1C2F6A7EC();
      result = v17;
      goto LABEL_8;
    }

    sub_1C2F69ADC(v14, a3 & 1);
    result = sub_1C2F3D888(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_1C2F76F2C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 2 * result);
    *v20 = a1 & 1;
    v20[1] = HIBYTE(a1) & 1;
  }

  else
  {

    return sub_1C2F6A42C(result, a2, a1 & 0x101, v19);
  }

  return result;
}

unint64_t sub_1C2F6A42C(unint64_t result, int a2, __int16 a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  v4 = (a4[7] + 2 * result);
  *v4 = a3 & 1;
  v4[1] = HIBYTE(a3) & 1;
  v5 = a4[2];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v7;
  }

  return result;
}

void *sub_1C2F6A480()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076758, &qword_1C2F7A260);
  v2 = *v0;
  v3 = sub_1C2F76D6C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
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
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C2F6A5F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076768, &unk_1C2F7A270);
  v2 = *v0;
  v3 = sub_1C2F76D6C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 4 * v17;
        v19 = *(*(v2 + 48) + 4 * v17);
        v17 *= 40;
        v20 = *(v2 + 56) + v17;
        v21 = *v20;
        v22 = *(v20 + 4);
        v23 = *(v20 + 5);
        v24 = *(v20 + 8);
        v25 = *(v20 + 16);
        v27 = *(v20 + 24);
        v26 = *(v20 + 32);
        *(*(v4 + 48) + v18) = v19;
        v28 = *(v4 + 56) + v17;
        *v28 = v21;
        *(v28 + 4) = v22;
        *(v28 + 5) = v23;
        *(v28 + 8) = v24;
        *(v28 + 16) = v25;
        *(v28 + 24) = v27;
        *(v28 + 32) = v26;
      }

      while (v12);
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
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C2F6A7EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076760, &qword_1C2F7A268);
  v2 = *v0;
  v3 = sub_1C2F76D6C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; v19[1] = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = (*(v2 + 56) + 2 * v14);
      v18 = *v17;
      LOBYTE(v17) = v17[1];
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
      v19 = (*(v4 + 56) + 2 * v14);
      *v19 = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C2F6A94C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1C2F76D6C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_1C2F6AAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v4[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076FE0, &unk_1C2F7D690);
  v4[23] = swift_task_alloc();
  v5 = sub_1C2F75E3C();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v6 = sub_1C2F75C8C();
  v4[28] = v6;
  v4[29] = *(v6 - 8);
  v4[30] = swift_task_alloc();
  v7 = sub_1C2F75B3C();
  v4[31] = v7;
  v4[32] = *(v7 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076028, &unk_1C2F78FE0);
  v4[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076A90, &qword_1C2F78FF0);
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076030, qword_1C2F7C380);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v8 = sub_1C2F75C6C();
  v4[41] = v8;
  v4[42] = *(v8 - 8);
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  sub_1C2F7688C();
  v4[45] = sub_1C2F7687C();
  v10 = sub_1C2F7684C();
  v4[46] = v10;
  v4[47] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1C2F6ADDC, v10, v9);
}

uint64_t sub_1C2F6ADDC(uint64_t a1)
{
  v2 = v1[44];
  v3 = v1[41];
  v4 = v1[42];
  v5 = v1[37];
  v6 = v1[28];
  v7 = v1[29];
  v8 = v1[20];
  sub_1C2F75C7C();
  sub_1C2F75C0C();
  v9 = *(v4 + 8);
  v9(v2, v3);
  sub_1C2EF6A3C(v8, v5, &unk_1EC076A90, &qword_1C2F78FF0);
  v10 = *(v7 + 48);
  v1[48] = v10;
  v1[49] = (v7 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v10(v5, 1, v6) == 1)
  {
    v11 = v1[39];
    v12 = v1[31];
    v13 = v1[32];
    sub_1C2F0A8D8(v1[37], &unk_1EC076A90, &qword_1C2F78FF0);
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  else
  {
    v14 = v1[43];
    v15 = v1[41];
    v16 = v1[37];
    v17 = v1[28];
    v18 = v1[29];
    sub_1C2F75C7C();
    (*(v18 + 8))(v16, v17);
    sub_1C2F75C0C();
    v9(v14, v15);
  }

  v19 = v1[39];
  v20 = v1[35];
  v21 = v1[31];
  v22 = v1[32];
  v23 = *(v1[34] + 48);
  sub_1C2EF6A3C(v1[40], v20, &unk_1EC076030, qword_1C2F7C380);
  sub_1C2EF6A3C(v19, v20 + v23, &unk_1EC076030, qword_1C2F7C380);
  v24 = *(v22 + 48);
  if (v24(v20, 1, v21) == 1)
  {
    v25 = v1[40];
    v26 = v1[31];
    sub_1C2F0A8D8(v1[39], &unk_1EC076030, qword_1C2F7C380);
    sub_1C2F0A8D8(v25, &unk_1EC076030, qword_1C2F7C380);
    if (v24(v20 + v23, 1, v26) == 1)
    {
      sub_1C2F0A8D8(v1[35], &unk_1EC076030, qword_1C2F7C380);
LABEL_14:
      v41 = v1[24];
      v42 = v1[25];
      v43 = v1[18];

      (*(v42 + 104))(v43, *MEMORY[0x1E6982BC8], v41);

      v44 = v1[1];

      return v44();
    }

    goto LABEL_9;
  }

  v27 = v1[31];
  sub_1C2EF6A3C(v1[35], v1[38], &unk_1EC076030, qword_1C2F7C380);
  v28 = v24(v20 + v23, 1, v27);
  v30 = v1[39];
  v29 = v1[40];
  v31 = v1[38];
  if (v28 == 1)
  {
    v32 = v1[31];
    v33 = v1[32];
    sub_1C2F0A8D8(v1[39], &unk_1EC076030, qword_1C2F7C380);
    sub_1C2F0A8D8(v29, &unk_1EC076030, qword_1C2F7C380);
    (*(v33 + 8))(v31, v32);
LABEL_9:
    sub_1C2F0A8D8(v1[35], &qword_1EC076028, &unk_1C2F78FE0);
    goto LABEL_10;
  }

  v45 = v1[35];
  v37 = v1[32];
  v36 = v1[33];
  v38 = v1[31];
  (*(v37 + 32))(v36, v20 + v23, v38);
  sub_1C2F6C798(&unk_1EC076050, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
  v39 = sub_1C2F7662C();
  v40 = *(v37 + 8);
  v40(v36, v38);
  sub_1C2F0A8D8(v30, &unk_1EC076030, qword_1C2F7C380);
  sub_1C2F0A8D8(v29, &unk_1EC076030, qword_1C2F7C380);
  v40(v31, v38);
  sub_1C2F0A8D8(v45, &unk_1EC076030, qword_1C2F7C380);
  if (v39)
  {
    goto LABEL_14;
  }

LABEL_10:
  v34 = swift_task_alloc();
  v1[50] = v34;
  *v34 = v1;
  v34[1] = sub_1C2F6B314;

  return LanguageSelectionViewModel.prepare()();
}

uint64_t sub_1C2F6B314()
{
  v1 = *v0;

  v2 = *(v1 + 376);
  v3 = *(v1 + 368);

  return MEMORY[0x1EEE6DFA0](sub_1C2F6B434, v3, v2);
}

uint64_t sub_1C2F6B434()
{
  v1 = v0[21];

  swift_getKeyPath();
  v0[14] = v1;
  sub_1C2F6C798(&qword_1EDEBCB18, type metadata accessor for LanguageSelectionViewModel, &protocol conformance descriptor for LanguageSelectionViewModel);
  sub_1C2F75DAC();

  v2 = *(v1 + 16);
  v76 = v0;
  v0[2] = sub_1C2F75B0C();
  v0[3] = v3;
  v4 = v0 + 2;
  v4[2] = 45;
  v4[3] = 0xE100000000000000;
  v4[4] = 95;
  v4[5] = 0xE100000000000000;
  sub_1C2EF66C8();

  v75 = v4;
  v5 = sub_1C2F76AFC();
  v7 = v6;

  if (v2 >> 62)
  {
    goto LABEL_64;
  }

  v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_65:
    v15 = v76;
    v71 = v76[24];
    v72 = v76[25];
    v73 = v76[18];

    (*(v72 + 104))(v73, *MEMORY[0x1E6982BC8], v71);

    goto LABEL_66;
  }

LABEL_3:
  v9 = 0;
  while ((v2 & 0xC000000000000001) == 0)
  {
    if (v9 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      v8 = sub_1C2F76BBC();
      if (!v8)
      {
        goto LABEL_65;
      }

      goto LABEL_3;
    }

    v10 = *(v2 + 8 * v9 + 32);

    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_16;
    }

LABEL_7:
    if (sub_1C2F75B0C() == v5 && v12 == v7)
    {
      goto LABEL_17;
    }

    v14 = sub_1C2F76EFC();

    if (v14)
    {
      goto LABEL_18;
    }

    ++v9;
    if (v11 == v8)
    {
      goto LABEL_65;
    }
  }

  v10 = MEMORY[0x1C6929250](v9, v2);
  v11 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
LABEL_17:

LABEL_18:
  v15 = v76;
  v16 = v76[48];
  v17 = v76[36];
  v18 = v76[28];
  v19 = v76[20];

  sub_1C2EF6A3C(v19, v17, &unk_1EC076A90, &qword_1C2F78FF0);
  v20 = v16(v17, 1, v18);
  v21 = v76[36];
  if (v20 == 1)
  {

    sub_1C2F0A8D8(v21, &unk_1EC076A90, &qword_1C2F78FF0);
LABEL_34:
    v34 = v15[25];
    swift_getKeyPath();
    v15[15] = v10;
    sub_1C2F6C798(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
    sub_1C2F75DAC();

    v35 = *(v10 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__state);

    if (v35 > 1)
    {
      if (v35 == 2)
      {
        v36 = MEMORY[0x1E6982BD0];
        goto LABEL_55;
      }
    }

    else if (v35 <= 1)
    {
      v36 = MEMORY[0x1E6982BD8];
LABEL_55:
      (*(v34 + 104))(v15[18], *v36, v15[24]);
      goto LABEL_66;
    }

    v36 = MEMORY[0x1E6982BC8];
    goto LABEL_55;
  }

  (*(v76[29] + 32))(v76[30], v76[36], v76[28]);
  v76[8] = sub_1C2F75B0C();
  v76[9] = v22;
  v76[10] = 45;
  v76[11] = 0xE100000000000000;
  v76[12] = 95;
  v76[13] = 0xE100000000000000;
  v7 = sub_1C2F76AFC();
  v24 = v23;

  v5 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x1C6929250](v5, v2);
      v27 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v26 = *(v2 + 8 * v5 + 32);

      v27 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_63;
      }
    }

    if (sub_1C2F75B0C() == v7 && v28 == v24)
    {
      break;
    }

    v30 = sub_1C2F76EFC();

    if (v30)
    {
      goto LABEL_40;
    }

    ++v5;
    if (v27 == v8)
    {
      v15 = v76;
      v32 = v76[29];
      v31 = v76[30];
      v33 = v76[28];

      (*(v32 + 8))(v31, v33);
      goto LABEL_34;
    }
  }

LABEL_40:

  swift_getKeyPath();
  v75[14] = v10;
  sub_1C2F6C798(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
  sub_1C2F75DAC();

  v37 = *(v10 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__state);
  if (v37 > 3)
  {
    v38 = MEMORY[0x1E6982BC8];
  }

  else
  {
    v38 = qword_1E819FD98[v37];
  }

  v40 = v76[29];
  v39 = v76[30];
  v41 = v76[28];
  v77 = *(v76[25] + 104);
  v77(v76[27], *v38, v76[24]);
  swift_getKeyPath();
  v76[17] = v26;
  sub_1C2F75DAC();

  (*(v40 + 8))(v39, v41);
  v42 = *(v26 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__state);

  v43 = MEMORY[0x1E6982BC8];
  v44 = MEMORY[0x1E6982BC8];
  if (v42 <= 3)
  {
    v44 = qword_1E819FD98[v42];
  }

  v15 = v76;
  v46 = v76[26];
  v45 = v76[27];
  v47 = v76[24];
  v48 = v76[25];
  v50 = v76[22];
  v49 = v76[23];
  v77(v46, *v44, v47);
  v51 = *(v50 + 48);
  v52 = *(v48 + 32);
  v52(v49, v45, v47);
  v52(v49 + v51, v46, v47);
  v53 = *(v48 + 88);
  v54 = v53(v49 + v51, v47);
  v55 = v54;
  v56 = *MEMORY[0x1E6982BD0];
  if (v54 != *MEMORY[0x1E6982BD0])
  {
    if (v54 != *v43)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if (v53(v76[23], v76[24]) == v54)
  {
    v57 = v76[24];
    v58 = v76[25];
    v77(v76[18], v55, v57);
    (*(v58 + 8))(v49 + v51, v57);
    goto LABEL_66;
  }

LABEL_50:
  v66 = v53(v76[23], v76[24]);
  if (v66 != v56)
  {
    v55 = v66;
    if (v66 == *MEMORY[0x1E6982BD8])
    {
      v69 = v53(v49 + v51, v76[24]);
      if (v69 != v56 && v69 != v55)
      {
        goto LABEL_61;
      }

LABEL_52:
      v67 = v76[24];
      v68 = v76[18];
      (*(v76[25] + 8))(v76[23], v67);
      v63 = v68;
      v64 = v55;
      v65 = v67;
LABEL_53:
      v77(v63, v64, v65);
      goto LABEL_66;
    }

    if (v66 != *v43)
    {
      goto LABEL_61;
    }

LABEL_49:
    v59 = v76[24];
    v60 = v76[23];
    v61 = v76[18];
    v62 = *(v76[25] + 8);
    v62(v49 + v51, v59);
    v62(v60, v59);
    v63 = v61;
    v64 = v55;
    v65 = v59;
    goto LABEL_53;
  }

  v55 = v53(v49 + v51, v76[24]);
  if (v55 == *MEMORY[0x1E6982BD8])
  {
    goto LABEL_52;
  }

LABEL_61:
  v70 = v76[23];
  v77(v76[18], *v43, v76[24]);
  sub_1C2F0A8D8(v70, &qword_1EC076FE0, &unk_1C2F7D690);
LABEL_66:

  v74 = v15[1];

  return v74();
}