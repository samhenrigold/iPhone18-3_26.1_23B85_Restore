void sub_20B6FE6A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764540, &unk_20C155FC0);
  v4 = sub_20C13DC24();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_20C13E164();
      sub_20C136804();
      v21 = sub_20C13E1B4();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
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
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_20B6FE900(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764390, &qword_20C155EA0);
  v4 = sub_20C13DC24();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      v18 = MEMORY[0x20F2F58B0](*(v5 + 40), v17, 4);
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_20B6FEB28(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20C137A24();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643A8, &qword_20C155EA8);
  v6 = sub_20C13DC24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_20B718614(&qword_27C764398, 255, MEMORY[0x277D53920], MEMORY[0x277D53928]);
      v21 = sub_20C13C7B4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_20B6FEE88(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20C137594();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764458, &qword_20C155F20);
  v6 = sub_20C13DC24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_20B718614(&qword_27C763F10, 255, MEMORY[0x277D534C8], MEMORY[0x277D534D0]);
      v21 = sub_20C13C7B4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

unint64_t sub_20B6FF1E8(uint64_t a1, uint64_t a2)
{
  sub_20C13D5E4();
  result = sub_20C13DAC4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_20B6FF26C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20C138034();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20B718614(&unk_27C764140, 255, MEMORY[0x277D53BA0], MEMORY[0x277D53BA8]);
  v33 = a2;
  v11 = sub_20C13C7B4();
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
      sub_20B718614(&qword_27C763F00, 255, MEMORY[0x277D53BA0], MEMORY[0x277D53BB0]);
      v21 = sub_20C13C894();
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
    sub_20B705ED8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20B6FF554(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20C133524();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20B718614(&qword_27C763F08, 255, MEMORY[0x277D4FF88], MEMORY[0x277D4FF90]);
  v33 = a2;
  v11 = sub_20C13C7B4();
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
      sub_20B718614(&qword_27C764160, 255, MEMORY[0x277D4FF88], MEMORY[0x277D4FF98]);
      v21 = sub_20C13C894();
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
    sub_20B7061A8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20B6FF83C(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  sub_20C13E164();
  sub_20C13CA64();

  v5 = sub_20C13E1B4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v23 = v4 + 56;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v22 = ~v6;
    v8 = 0xE700000000000000;
    v24 = v4;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 <= 1)
      {
        if (*(*(v4 + 48) + v7))
        {
          v10 = 0xD00000000000001ALL;
        }

        else
        {
          v10 = 0x6E6769736564;
        }

        if (*(*(v4 + 48) + v7))
        {
          v11 = 0x800000020C191770;
        }

        else
        {
          v11 = 0xE600000000000000;
        }
      }

      else if (v9 == 2)
      {
        v10 = 0x63696C6F626D7973;
        v11 = 0xEE00737469617254;
      }

      else
      {
        if (v9 == 3)
        {
          v10 = 0x746E6169726176;
        }

        else
        {
          v10 = 0x746867696577;
        }

        if (v9 == 3)
        {
          v11 = 0xE700000000000000;
        }

        else
        {
          v11 = 0xE600000000000000;
        }
      }

      if (v3 == 3)
      {
        v12 = 0x746E6169726176;
      }

      else
      {
        v12 = 0x746867696577;
      }

      if (v3 != 3)
      {
        v8 = 0xE600000000000000;
      }

      if (v3 == 2)
      {
        v12 = 0x63696C6F626D7973;
        v8 = 0xEE00737469617254;
      }

      v13 = v3 ? 0xD00000000000001ALL : 0x6E6769736564;
      v14 = v3 ? 0x800000020C191770 : 0xE600000000000000;
      v15 = v3 <= 1u ? v13 : v12;
      v16 = v3 <= 1u ? v14 : v8;
      if (v10 == v15 && v11 == v16)
      {
        break;
      }

      v17 = sub_20C13DFF4();

      if (v17)
      {
        goto LABEL_43;
      }

      v7 = (v7 + 1) & v22;
      v4 = v24;
      v8 = 0xE700000000000000;
      if (((*(v23 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_41;
      }
    }

LABEL_43:
    result = 0;
    v3 = *(*(v24 + 48) + v7);
  }

  else
  {
LABEL_41:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v20;
    sub_20B706478(v3, v7, isUniquelyReferenced_nonNull_native);
    *v20 = v25;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_20B6FFBAC(_BYTE *a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(uint64_t, unint64_t, uint64_t))
{
  v6 = v4;
  v8 = *v4;
  sub_20C13E164();
  a3(a2);
  sub_20C13CA64();

  v9 = sub_20C13E1B4();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = a3(*(*(v8 + 48) + v11));
      v15 = v14;
      if (v13 == a3(a2) && v15 == v16)
      {
        break;
      }

      v18 = sub_20C13DFF4();

      if (v18)
      {
        goto LABEL_11;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    LOBYTE(a2) = *(*(v8 + 48) + v11);
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v6;
    a4(a2, v11, isUniquelyReferenced_nonNull_native);
    *v6 = v23;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_20B6FFD50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = sub_20C135C84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_20C13E164();
  sub_20C135C74();
  v10 = sub_20C13E1B4();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_20B71B848(*(v9 + 48) + v14 * v12, v8, MEMORY[0x277D52060]);
      v15 = MEMORY[0x20F2ED3D0](v8, a2);
      sub_20B71C508(v8, MEMORY[0x277D52060]);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_20B71C508(a2, MEMORY[0x277D52060]);
    sub_20B71B848(*(v9 + 48) + v14 * v12, v19, MEMORY[0x277D52060]);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20B71B848(a2, v8, MEMORY[0x277D52060]);
    v20 = *v3;
    sub_20B706C64(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20;
    sub_20B71C4A0(a2, v17, MEMORY[0x277D52060]);
    return 1;
  }
}

uint64_t sub_20B6FFF90(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_20C13E164();
  sub_20B964064(a2);
  sub_20C13CA64();

  v5 = sub_20C13E1B4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_49:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v18;
    sub_20B706EA8(a2, v7, isUniquelyReferenced_nonNull_native);
    *v18 = v20;
    result = 1;
    goto LABEL_52;
  }

  v8 = ~v6;
  while (2)
  {
    v9 = 0xED000073676E6952;
    v10 = 0x7974697669746361;
    switch(*(*(v4 + 48) + v7))
    {
      case 1:
        v9 = 0xE700000000000000;
        v10 = 0x7261426E727562;
        break;
      case 2:
        v9 = 0xE700000000000000;
        v11 = 0x636E65646163;
        goto LABEL_17;
      case 3:
        v9 = 0xE800000000000000;
        v10 = 0x65636E6174736964;
        break;
      case 4:
        v9 = 0xE600000000000000;
        v10 = 0x796772656E65;
        break;
      case 5:
        v10 = 0x7461527472616568;
        v9 = 0xE900000000000065;
        break;
      case 6:
        v9 = 0xE900000000000074;
        v10 = 0x6867696C68676968;
        break;
      case 7:
        v9 = 0xE900000000000079;
        v10 = 0x7469736E65746E69;
        break;
      case 8:
        v9 = 0xE700000000000000;
        v11 = 0x6E696C636E69;
LABEL_17:
        v10 = v11 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
        break;
      case 9:
        v9 = 0xE300000000000000;
        v10 = 7172210;
        break;
      case 0xA:
        v9 = 0xE900000000000072;
        v10 = 0x6F74617261706573;
        break;
      case 0xB:
        v10 = 7172211;
        v9 = 0xE300000000000000;
        break;
      case 0xC:
        v9 = 0xE800000000000000;
        v10 = 0x73736572676F7270;
        break;
      case 0xD:
        v9 = 0xE500000000000000;
        v10 = 0x72656D6974;
        break;
      default:
        break;
    }

    v12 = 0x7974697669746361;
    v13 = 0xED000073676E6952;
    switch(a2)
    {
      case 1:
        v13 = 0xE700000000000000;
        if (v10 == 0x7261426E727562)
        {
          goto LABEL_42;
        }

        goto LABEL_43;
      case 2:
        v13 = 0xE700000000000000;
        v14 = 0x636E65646163;
        goto LABEL_47;
      case 3:
        v13 = 0xE800000000000000;
        if (v10 != 0x65636E6174736964)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 4:
        v13 = 0xE600000000000000;
        if (v10 != 0x796772656E65)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 5:
        v13 = 0xE900000000000065;
        if (v10 != 0x7461527472616568)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 6:
        v13 = 0xE900000000000074;
        if (v10 != 0x6867696C68676968)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 7:
        v13 = 0xE900000000000079;
        if (v10 != 0x7469736E65746E69)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 8:
        v13 = 0xE700000000000000;
        v14 = 0x6E696C636E69;
LABEL_47:
        if (v10 != (v14 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 9:
        v13 = 0xE300000000000000;
        if (v10 != 7172210)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 10:
        v13 = 0xE900000000000072;
        v12 = 0x6F74617261706573;
        goto LABEL_41;
      case 11:
        v13 = 0xE300000000000000;
        if (v10 != 7172211)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 12:
        v13 = 0xE800000000000000;
        if (v10 != 0x73736572676F7270)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 13:
        v13 = 0xE500000000000000;
        if (v10 != 0x72656D6974)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      default:
LABEL_41:
        if (v10 != v12)
        {
          goto LABEL_43;
        }

LABEL_42:
        if (v9 != v13)
        {
LABEL_43:
          v15 = sub_20C13DFF4();

          if (v15)
          {
            goto LABEL_51;
          }

          v7 = (v7 + 1) & v8;
          if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            goto LABEL_49;
          }

          continue;
        }

LABEL_51:
        result = 0;
        LOBYTE(a2) = *(*(v4 + 48) + v7);
LABEL_52:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_20B700440(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for ButtonAction.ActionType(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_20C13E164();
  sub_20BDA4D9C(v20);
  v10 = sub_20C13E1B4();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_20B71B848(*(v9 + 48) + v14 * v12, v8, type metadata accessor for ButtonAction.ActionType);
      v15 = sub_20BDA80E4(v8, a2);
      sub_20B71C508(v8, type metadata accessor for ButtonAction.ActionType);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_20B71C508(a2, type metadata accessor for ButtonAction.ActionType);
    sub_20B71B848(*(v9 + 48) + v14 * v12, v19, type metadata accessor for ButtonAction.ActionType);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20B71B848(a2, v8, type metadata accessor for ButtonAction.ActionType);
    *&v20[0] = *v3;
    sub_20B7073AC(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = *&v20[0];
    sub_20B71C4A0(a2, v17, type metadata accessor for ButtonAction.ActionType);
    return 1;
  }
}

uint64_t sub_20B700680(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_20C13E164();
  v7 = sub_20C137F94();
  MEMORY[0x20F2F58E0](v7);
  v8 = sub_20C13E1B4();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = sub_20C137F94();
      if (v12 == sub_20C137F94())
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(a2) = *(*(v6 + 48) + v10);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_20B7075F0(a2, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_20B70079C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20C135C54();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20B718614(&qword_27C762F50, 255, MEMORY[0x277D51FE0], MEMORY[0x277D51FE8]);
  v33 = a2;
  v11 = sub_20C13C7B4();
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
      sub_20B718614(&qword_27C7640F0, 255, MEMORY[0x277D51FE0], MEMORY[0x277D51FF8]);
      v21 = sub_20C13C894();
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
    sub_20B70776C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20B700A84(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20C136594();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20B718614(&unk_27C764490, 255, MEMORY[0x277D52AB0], MEMORY[0x277D52AB8]);
  v33 = a2;
  v11 = sub_20C13C7B4();
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
      sub_20B718614(&qword_27C763F28, 255, MEMORY[0x277D52AB0], MEMORY[0x277D52AC0]);
      v21 = sub_20C13C894();
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
    sub_20B707A3C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20B700D6C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20C1365F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20B718614(&qword_27C762F60, 255, MEMORY[0x277D52AF8], MEMORY[0x277D52B00]);
  v33 = a2;
  v11 = sub_20C13C7B4();
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
      sub_20B718614(&qword_27C764300, 255, MEMORY[0x277D52AF8], MEMORY[0x277D52B08]);
      v21 = sub_20C13C894();
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
    sub_20B707D0C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20B701054(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v56 = sub_20C134E04();
  v4 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_20C1333E4();
  v6 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763F18, &unk_20C155F30);
  MEMORY[0x28223BE20](v61);
  v9 = &v42 - v8;
  v63 = type metadata accessor for WorkoutPlanPreference(0);
  v10 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v54 = &v42 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  MEMORY[0x28223BE20](v18);
  v43 = &v42 - v19;
  v44 = v2;
  v20 = *v2;
  sub_20C13E164();
  v62 = a2;
  sub_20BBC6470(v64);
  v21 = sub_20C13E1B4();
  v22 = v20 + 56;
  v23 = -1 << *(v20 + 32);
  v24 = v21 & ~v23;
  if (((*(v20 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
  {
LABEL_14:
    v37 = v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v62;
    v40 = v43;
    sub_20B71B848(v62, v43, type metadata accessor for WorkoutPlanPreference);
    v64[0] = *v37;
    sub_20B707FDC(v40, v24, isUniquelyReferenced_nonNull_native);
    *v37 = v64[0];
    sub_20B71C4A0(v39, v45, type metadata accessor for WorkoutPlanPreference);
    return 1;
  }

  v59 = ~v23;
  v60 = *(v10 + 72);
  v47 = (v6 + 32);
  v52 = (v6 + 8);
  v25 = (v4 + 8);
  v46 = (v4 + 32);
  v57 = v12;
  v53 = v20;
  v51 = v20 + 56;
  while (1)
  {
    v26 = *(v20 + 48);
    v58 = v60 * v24;
    sub_20B71B848(v26 + v60 * v24, v17, type metadata accessor for WorkoutPlanPreference);
    v27 = *(v61 + 48);
    sub_20B71B848(v17, v9, type metadata accessor for WorkoutPlanPreference);
    sub_20B71B848(v62, &v9[v27], type metadata accessor for WorkoutPlanPreference);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_20B71B848(v9, v12, type metadata accessor for WorkoutPlanPreference);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = v49;
      v29 = v56;
      (*v46)(v49, &v9[v27], v56);
      v30 = MEMORY[0x20F2EC550](v57, v28);
      v31 = *v25;
      v12 = v57;
      (*v25)(v28, v29);
      sub_20B71C508(v17, type metadata accessor for WorkoutPlanPreference);
      v31(v12, v29);
      if (v30)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    sub_20B71C508(v17, type metadata accessor for WorkoutPlanPreference);
    (*v25)(v12, v56);
LABEL_4:
    sub_20B520158(v9, &qword_27C763F18, &unk_20C155F30);
LABEL_5:
    v24 = (v24 + 1) & v59;
    if (((*(v22 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v32 = v54;
  sub_20B71B848(v9, v54, type metadata accessor for WorkoutPlanPreference);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20B71C508(v17, type metadata accessor for WorkoutPlanPreference);
    (*v52)(v32, v55);
    goto LABEL_4;
  }

  v33 = v48;
  v34 = v55;
  (*v47)(v48, &v9[v27], v55);
  v50 = sub_20C1333C4();
  v35 = *v52;
  v36 = v33;
  v12 = v57;
  (*v52)(v36, v34);
  sub_20B71C508(v17, type metadata accessor for WorkoutPlanPreference);
  v35(v32, v34);
  if ((v50 & 1) == 0)
  {
LABEL_12:
    sub_20B71C508(v9, type metadata accessor for WorkoutPlanPreference);
    v20 = v53;
    v22 = v51;
    goto LABEL_5;
  }

LABEL_15:
  sub_20B71C508(v9, type metadata accessor for WorkoutPlanPreference);
  sub_20B71C508(v62, type metadata accessor for WorkoutPlanPreference);
  sub_20B71B848(*(v53 + 48) + v58, v45, type metadata accessor for WorkoutPlanPreference);
  return 0;
}

uint64_t sub_20B701764(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20C137454();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20B718614(&qword_27C7640D0, 255, MEMORY[0x277D53428], MEMORY[0x277D53430]);
  v33 = a2;
  v11 = sub_20C13C7B4();
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
      sub_20B718614(&qword_27C7640D8, 255, MEMORY[0x277D53428], MEMORY[0x277D53438]);
      v21 = sub_20C13C894();
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
    sub_20B708674(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20B701A4C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20C137294();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20B718614(&qword_27C7640B8, 255, MEMORY[0x277D53250], MEMORY[0x277D53258]);
  v33 = a2;
  v11 = sub_20C13C7B4();
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
      sub_20B718614(&qword_27C7640C0, 255, MEMORY[0x277D53250], MEMORY[0x277D53260]);
      v21 = sub_20C13C894();
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
    sub_20B708944(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20B701D34(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20C136FE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20B718614(&qword_27C764868, 255, MEMORY[0x277D53070], MEMORY[0x277D53078]);
  v33 = a2;
  v11 = sub_20C13C7B4();
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
      sub_20B718614(&qword_27C764870, 255, MEMORY[0x277D53070], MEMORY[0x277D53080]);
      v21 = sub_20C13C894();
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
    sub_20B708C14(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20B70201C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *v4;
  v18 = a4 & 1;
  sub_20C13E164();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F00, &unk_20C152DE0);
  sub_20B654574();
  sub_20C133BE4();
  v8 = sub_20C13E1B4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    sub_20B654378();
    sub_20B652F70();
    while ((sub_20C133BF4() & 1) == 0)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_20B583F4C(a2, a3, a4 & 1);
    v14 = *(v7 + 48) + 24 * v10;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    *a1 = *v14;
    *(a1 + 8) = v16;
    *(a1 + 16) = v17;
    sub_20B6A6418(v15, v16, v17);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v19;
    sub_20B6A6418(a2, a3, v18);
    sub_20B708EE4(a2, a3, v18, v10, isUniquelyReferenced_nonNull_native);
    *v19 = v22;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v18;
    return 1;
  }
}

uint64_t sub_20B70221C(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  sub_20C13E164();
  v7 = a2 & 1;
  MEMORY[0x20F2F58E0](v7);
  v8 = sub_20C13E1B4();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v6 + 48);
      if (*(v12 + v10) == v7)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v7) = *(v12 + v10);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_20B7090F8(v7, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_20B70231C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v9 = *v4;
  sub_20C13E164();
  v26 = a2;
  if (v5 < 0)
  {
    MEMORY[0x20F2F58E0](1);
    sub_20C137934();
  }

  else
  {
    MEMORY[0x20F2F58E0](0);
    MEMORY[0x20F2F58E0](a2);
  }

  v10 = sub_20C13E1B4();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    v14 = a2;
LABEL_16:
    v23 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v25;
    sub_20B6D8730(v23, a3, v5);
    sub_20B7093F0(v23, a3, v5, v12, isUniquelyReferenced_nonNull_native);
    *v25 = v27;
    *a1 = v23;
    *(a1 + 8) = a3;
    *(a1 + 16) = v5;
    return 1;
  }

  v13 = ~v11;
  v14 = v26;
  while (1)
  {
    v15 = *(v9 + 48) + 24 * v12;
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (v18 < 0)
    {
      break;
    }

    if ((v5 & 0x80) == 0 && v17 == v14)
    {
      goto LABEL_14;
    }

LABEL_7:
    v12 = (v12 + 1) & v13;
    if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if ((v5 & 0x80) == 0)
  {
    goto LABEL_7;
  }

  v19 = sub_20B6D8740(*v15, *(v15 + 8), v18 & 0x7F);
  v20 = MEMORY[0x20F2EF090](v17, v16, v18 & 0x7F, v26, a3, v5 & 0x7F, v19);
  sub_20B6D8758(v17, v16, v18);
  v14 = v26;
  if ((v20 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_20B6D8758(v26, a3, v5);
  v21 = *(v9 + 48) + 24 * v12;
  v14 = *v21;
  v16 = *(v21 + 8);
  LOBYTE(v18) = *(v21 + 16);
LABEL_14:
  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18;
  sub_20B6D8730(v14, v16, v18);
  return 0;
}

uint64_t sub_20B702538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v8 = *v4;
  sub_20C13E164();
  v27 = a3;
  sub_20C137934();
  v9 = sub_20C13E1B4();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = *(v8 + 48) + 24 * v11;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = sub_20B6D8740(*v13, v15, *(v13 + 16));
      v18 = MEMORY[0x20F2EF090](v14, v15, v16, a2, v27, v5, v17);
      sub_20B6D8768(v14, v15, v16);
      if (v18)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_20B6D8768(a2, v27, v5);
    v21 = *(v8 + 48) + 24 * v11;
    v22 = *v21;
    v23 = *(v21 + 8);
    *a1 = *v21;
    *(a1 + 8) = v23;
    v24 = *(v21 + 16);
    *(a1 + 16) = v24;
    sub_20B6D8740(v22, v23, v24);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v25;
    sub_20B6D8740(a2, v27, v5);
    sub_20B70961C(a2, v27, v5, v11, isUniquelyReferenced_nonNull_native);
    *v25 = v28;
    *a1 = a2;
    *(a1 + 8) = v27;
    *(a1 + 16) = v5;
    return 1;
  }
}

uint64_t sub_20B702708(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20C133B74();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20B718614(&qword_27C764420, 255, MEMORY[0x277D502D0], MEMORY[0x277D502D8]);
  v33 = a2;
  v11 = sub_20C13C7B4();
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
      sub_20B718614(&qword_27C764428, 255, MEMORY[0x277D502D0], MEMORY[0x277D502E0]);
      v21 = sub_20C13C894();
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
    sub_20B709800(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20B7029F0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20B718614(&qword_27C764180, 255, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  v33 = a2;
  v11 = sub_20C13C7B4();
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
      sub_20B718614(&qword_27C762F98, 255, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B18]);
      v21 = sub_20C13C894();
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
    sub_20B709AD0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20B702CD8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20C137BA4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20B718614(&unk_27C767650, 255, MEMORY[0x277D53A28], MEMORY[0x277D53A30]);
  v33 = a2;
  v11 = sub_20C13C7B4();
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
      sub_20B718614(&qword_27C764560, 255, MEMORY[0x277D53A28], MEMORY[0x277D53A38]);
      v21 = sub_20C13C894();
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
    sub_20B709DA0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20B702FC0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20C132FD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20B718614(&unk_27C7646C0, 255, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  v33 = a2;
  v11 = sub_20C13C7B4();
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
      sub_20B718614(&qword_27C762F90, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
      v21 = sub_20C13C894();
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
    sub_20B70A070(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20B7032A8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20C139684();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20B718614(&qword_27C7646A8, 255, MEMORY[0x277D54458], MEMORY[0x277D54460]);
  v33 = a2;
  v11 = sub_20C13C7B4();
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
      sub_20B718614(&qword_27C7646B0, 255, MEMORY[0x277D54458], MEMORY[0x277D54468]);
      v21 = sub_20C13C894();
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
    sub_20B70A340(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20B703590(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_20C13E154();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_20B70A610(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_20B703670(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20C132164();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20B718614(&qword_27C764808, 255, MEMORY[0x277CE9BE0], MEMORY[0x277CE9BE8]);
  v33 = a2;
  v11 = sub_20C13C7B4();
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
      sub_20B718614(&qword_27C764810, 255, MEMORY[0x277CE9BE0], MEMORY[0x277CE9BF0]);
      v21 = sub_20C13C894();
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
    sub_20B70A730(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20B703958(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20C135174();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20B718614(&unk_27C764640, 255, MEMORY[0x277D515D0], MEMORY[0x277D515D8]);
  v33 = a2;
  v11 = sub_20C13C7B4();
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
      sub_20B718614(&qword_27C763F30, 255, MEMORY[0x277D515D0], MEMORY[0x277D515E0]);
      v21 = sub_20C13C894();
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
    sub_20B70AA00(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20B703C40(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  sub_20C13E164();
  sub_20C13CA64();
  v10 = sub_20C13E1B4();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = *(v9 + 48) + 24 * v12;
      v15 = *(v14 + 8) == a3 && *(v14 + 16) == a4;
      if (v15 || (sub_20C13DFF4() & 1) != 0)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v19 = *(v9 + 48) + 24 * v12;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    *a1 = *v19;
    a1[1] = v21;
    a1[2] = v22;
    v23 = v20;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;
    v17 = a2;

    sub_20B70ACD0(v17, a3, a4, v12, isUniquelyReferenced_nonNull_native);
    *v4 = v24;
    *a1 = v17;
    a1[1] = a3;
    a1[2] = a4;
    return 1;
  }
}

uint64_t sub_20B703DEC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20C133314();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20B718614(&qword_27C764068, 255, MEMORY[0x277D4FC78], MEMORY[0x277D4FC80]);
  v33 = a2;
  v11 = sub_20C13C7B4();
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
      sub_20B718614(&qword_27C764070, 255, MEMORY[0x277D4FC78], MEMORY[0x277D4FC88]);
      v21 = sub_20C13C894();
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
    sub_20B70AE68(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20B7040D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_20C13E164();
  sub_20C1332D4();
  v7 = sub_20C13E1B4();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(v6 + 48) + 40 * v9;
      v12 = *(v11 + 32);
      v13 = *(v11 + 16);
      v26[0] = *v11;
      v26[1] = v13;
      v27 = v12;
      sub_20B718710(v26, v25);
      v14 = MEMORY[0x20F2EAA30](v26, a2);
      sub_20B71877C(v26);
      if (v14)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_20B71877C(a2);
    v18 = *(v6 + 48) + 40 * v9;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
    v23 = *(v18 + 32);
    *a1 = *v18;
    *(a1 + 8) = v20;
    *(a1 + 16) = v21;
    *(a1 + 24) = v22;
    *(a1 + 32) = v23;
    sub_20B7187D0(v19, v20, v21, v22, v23);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    sub_20B718710(a2, v25);
    sub_20B70B138(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
    v16 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v16;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_20B70425C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20C137474();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20B718614(&qword_27C763FE8, 255, MEMORY[0x277D53450], MEMORY[0x277D53458]);
  v33 = a2;
  v11 = sub_20C13C7B4();
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
      sub_20B718614(&qword_27C763FF0, 255, MEMORY[0x277D53450], MEMORY[0x277D53460]);
      v21 = sub_20C13C894();
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
    sub_20B70B2D8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20B704544(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20C138204();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20B718614(&qword_27C763318, 255, MEMORY[0x277D53C88], MEMORY[0x277D53C90]);
  v33 = a2;
  v11 = sub_20C13C7B4();
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
      sub_20B718614(&qword_27C7643E0, 255, MEMORY[0x277D53C88], MEMORY[0x277D53C98]);
      v21 = sub_20C13C894();
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
    sub_20B70B5A8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20B70482C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20C132EE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20B718614(&qword_27C7675A0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_20C13C7B4();
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
      sub_20B718614(&qword_27C7641A0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_20C13C894();
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
    sub_20B70B878(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20B704B30(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v11 = *v5;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](a2);
  v12 = sub_20C13E1B4();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    sub_20B70BB48(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_20B704C50(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  v5 = sub_20BD03998(*(*v2 + 40), a2);
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v32 = ~v6;
    v8 = 0xEA00000000006E75;
    v9 = 0x57656E696C636E69;
    while (1)
    {
      v10 = *(*(v4 + 48) + v7);
      if (v10 > 3)
      {
        if (*(*(v4 + 48) + v7) > 5u)
        {
          if (v10 == 6)
          {
            v16 = 0xE300000000000000;
            v15 = 7172210;
          }

          else
          {
            v15 = 7172211;
            v16 = 0xE300000000000000;
          }
        }

        else
        {
          if (v10 == 4)
          {
            v15 = 0x7363697274656DLL;
          }

          else
          {
            v15 = 0xD000000000000013;
          }

          if (v10 == 4)
          {
            v16 = 0xE700000000000000;
          }

          else
          {
            v16 = 0x800000020C191AD0;
          }
        }
      }

      else
      {
        if (v10 == 2)
        {
          v11 = v9;
        }

        else
        {
          v11 = 0x7469736E65746E69;
        }

        if (v10 == 2)
        {
          v12 = 0xEB000000006B6C61;
        }

        else
        {
          v12 = 0xE900000000000079;
        }

        if (*(*(v4 + 48) + v7))
        {
          v13 = 0x52656E696C636E69;
        }

        else
        {
          v13 = 0x7261426E727562;
        }

        if (*(*(v4 + 48) + v7))
        {
          v14 = 0xEA00000000006E75;
        }

        else
        {
          v14 = 0xE700000000000000;
        }

        if (*(*(v4 + 48) + v7) <= 1u)
        {
          v15 = v13;
        }

        else
        {
          v15 = v11;
        }

        if (*(*(v4 + 48) + v7) <= 1u)
        {
          v16 = v14;
        }

        else
        {
          v16 = v12;
        }
      }

      v17 = 7172210;
      if (v3 != 6)
      {
        v17 = 7172211;
      }

      v18 = 0xE300000000000000;
      v19 = 0xD000000000000013;
      if (v3 == 4)
      {
        v19 = 0x7363697274656DLL;
      }

      v20 = 0x800000020C191AD0;
      if (v3 == 4)
      {
        v20 = 0xE700000000000000;
      }

      if (v3 <= 5u)
      {
        v17 = v19;
        v18 = v20;
      }

      if (v3 == 2)
      {
        v21 = v9;
      }

      else
      {
        v21 = 0x7469736E65746E69;
      }

      if (v3 == 2)
      {
        v22 = 0xEB000000006B6C61;
      }

      else
      {
        v22 = 0xE900000000000079;
      }

      if (v3)
      {
        v23 = 0x52656E696C636E69;
      }

      else
      {
        v23 = 0x7261426E727562;
      }

      if (!v3)
      {
        v8 = 0xE700000000000000;
      }

      if (v3 <= 1u)
      {
        v21 = v23;
        v22 = v8;
      }

      v24 = v3 <= 3u ? v21 : v17;
      v25 = v3 <= 3u ? v22 : v18;
      if (v15 == v24 && v16 == v25)
      {
        break;
      }

      v26 = v9;
      v27 = sub_20C13DFF4();

      if (v27)
      {
        goto LABEL_65;
      }

      v7 = (v7 + 1) & v32;
      v8 = 0xEA00000000006E75;
      v9 = v26;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_63;
      }
    }

LABEL_65:
    result = 0;
    v3 = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_63:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v30;
    sub_20B70BCB8(v3, v7, isUniquelyReferenced_nonNull_native);
    *v30 = v33;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_20B704F3C(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_20C13DB44();

    if (v17)
    {

      sub_20B51C88C(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_20C13DB34();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_20B705CD8(v15, result + 1, a5, a6, a3, a4);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_20B6FE120(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_20B6FF1E8(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_20B51C88C(0, a3, a4);
    v19 = sub_20C13D5E4();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_20C13D5F4();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_20B709260(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_20B7051B0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20C137374();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20B718614(&qword_27C764570, 255, MEMORY[0x277D53288], MEMORY[0x277D53290]);
  v33 = a2;
  v11 = sub_20C13C7B4();
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
      sub_20B718614(&qword_27C764578, 255, MEMORY[0x277D53288], MEMORY[0x277D53298]);
      v21 = sub_20C13C894();
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
    sub_20B70C008(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20B705498(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  sub_20C13E164();
  sub_20C136804();
  v9 = sub_20C13E1B4();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {

      v13 = sub_20C1367F4();

      if (v13)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v16 = (*(v8 + 48) + 16 * v11);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;

    sub_20B70C2D8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v4 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_20B7055FC(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x20F2F58B0](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_20B70C46C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_20B7056E4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20C137A24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20B718614(&qword_27C764398, 255, MEMORY[0x277D53920], MEMORY[0x277D53928]);
  v33 = a2;
  v11 = sub_20C13C7B4();
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
      sub_20B718614(&qword_27C7643A0, 255, MEMORY[0x277D53920], MEMORY[0x277D53930]);
      v21 = sub_20C13C894();
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
    sub_20B70C590(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20B7059CC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20C137594();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20B718614(&qword_27C763F10, 255, MEMORY[0x277D534C8], MEMORY[0x277D534D0]);
  v33 = a2;
  v11 = sub_20C13C7B4();
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
      sub_20B718614(&qword_27C764450, 255, MEMORY[0x277D534C8], MEMORY[0x277D534D8]);
      v21 = sub_20C13C894();
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
    sub_20B70C860(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20B705CD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_20C13DC34();
    v23 = v10;
    sub_20C13DAE4();
    if (sub_20C13DB64())
    {
      sub_20B51C88C(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_20B6FE120(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_20C13D5E4();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_20C13DB64());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_20B705ED8(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_20C138034();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20B6F7078(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20B70E184(MEMORY[0x277D53BA0], &qword_27C764138, &qword_20C155CA0);
      goto LABEL_12;
    }

    sub_20B70E3BC(v11 + 1);
  }

  v13 = *v3;
  sub_20B718614(&unk_27C764140, 255, MEMORY[0x277D53BA0], MEMORY[0x277D53BA8]);
  v14 = sub_20C13C7B4();
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
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_20B718614(&qword_27C763F00, 255, MEMORY[0x277D53BA0], MEMORY[0x277D53BB0]);
      v22 = sub_20C13C894();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20C13E044();
  __break(1u);
  return result;
}

uint64_t sub_20B7061A8(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_20C133524();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20B6F73D8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20B70E184(MEMORY[0x277D4FF88], &unk_27C764150, &qword_20C155CA8);
      goto LABEL_12;
    }

    sub_20B70E6DC(v11 + 1);
  }

  v13 = *v3;
  sub_20B718614(&qword_27C763F08, 255, MEMORY[0x277D4FF88], MEMORY[0x277D4FF90]);
  v14 = sub_20C13C7B4();
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
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_20B718614(&qword_27C764160, 255, MEMORY[0x277D4FF88], MEMORY[0x277D4FF98]);
      v22 = sub_20C13C894();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20C13E044();
  __break(1u);
  return result;
}

void sub_20B706478(unsigned __int8 a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_46;
  }

  if (a3)
  {
    sub_20B6F7738(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_20B70D4F4(&unk_27C7642D0, &unk_20C155E10);
      goto LABEL_46;
    }

    sub_20B70E9FC(v5 + 1);
  }

  v7 = 0x6E6769736564;
  v8 = *v3;
  sub_20C13E164();
  sub_20C13CA64();

  v9 = sub_20C13E1B4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  v32 = v8 + 56;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v31 = ~v10;
    v11 = 0x746E6169726176;
    v12 = 0x746867696577;
    v13 = v8;
    do
    {
      v14 = *(*(v8 + 48) + a2);
      if (v14 <= 1)
      {
        v15 = *(*(v8 + 48) + a2) ? 0xD00000000000001ALL : v7;
        v16 = *(*(v8 + 48) + a2) ? 0x800000020C191770 : 0xE600000000000000;
      }

      else if (v14 == 2)
      {
        v15 = 0x63696C6F626D7973;
        v16 = 0xEE00737469617254;
      }

      else
      {
        v15 = v14 == 3 ? v11 : v12;
        v16 = v14 == 3 ? 0xE700000000000000 : 0xE600000000000000;
      }

      v17 = v11;
      v18 = v12;
      if (a1 == 3)
      {
        v19 = 0xE700000000000000;
      }

      else
      {
        v11 = v12;
        v19 = 0xE600000000000000;
      }

      if (a1 == 2)
      {
        v11 = 0x63696C6F626D7973;
        v19 = 0xEE00737469617254;
      }

      v20 = v7;
      v21 = a1 ? 0xD00000000000001ALL : v7;
      v22 = a1 ? 0x800000020C191770 : 0xE600000000000000;
      v23 = a1 <= 1u ? v21 : v11;
      v24 = a1 <= 1u ? v22 : v19;
      if (v15 == v23 && v16 == v24)
      {
        goto LABEL_49;
      }

      v25 = sub_20C13DFF4();

      if (v25)
      {
        goto LABEL_50;
      }

      a2 = (a2 + 1) & v31;
      v7 = v20;
      v11 = v17;
      v8 = v13;
      v12 = v18;
    }

    while (((*(v32 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_46:
  v26 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v26 + 48) + a2) = a1;
  v27 = *(v26 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v26 + 16) = v29;
    return;
  }

  __break(1u);
LABEL_49:

LABEL_50:
  sub_20C13E044();
  __break(1u);
}

void sub_20B706804(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = a1;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_20B6F7CA0(v7 + 1, &qword_27C7644D8, &unk_20C155F70, MEMORY[0x277D50DF8]);
  }

  else
  {
    if (v8 > v7)
    {
      sub_20B70D4F4(&qword_27C7644D8, &unk_20C155F70);
      goto LABEL_16;
    }

    sub_20B70EEF8(v7 + 1, &qword_27C7644D8, &unk_20C155F70, MEMORY[0x277D50DF8]);
  }

  v9 = *v3;
  sub_20C13E164();
  sub_20C134B94();
  sub_20C13CA64();

  v10 = sub_20C13E1B4();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = sub_20C134B94();
      v15 = v14;
      if (v13 == sub_20C134B94() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_20C13DFF4();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  sub_20C13E044();
  __break(1u);
}

void sub_20B706A34(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = a1;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_20B6F7CA0(v7 + 1, &qword_27C764130, &qword_20C155C88, MEMORY[0x277D50568]);
  }

  else
  {
    if (v8 > v7)
    {
      sub_20B70D4F4(&qword_27C764130, &qword_20C155C88);
      goto LABEL_16;
    }

    sub_20B70EEF8(v7 + 1, &qword_27C764130, &qword_20C155C88, MEMORY[0x277D50568]);
  }

  v9 = *v3;
  sub_20C13E164();
  sub_20C134124();
  sub_20C13CA64();

  v10 = sub_20C13E1B4();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = sub_20C134124();
      v15 = v14;
      if (v13 == sub_20C134124() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_20C13DFF4();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  sub_20C13E044();
  __break(1u);
}

uint64_t sub_20B706C64(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_20C135C84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_20B6F7F10(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_20B70CD04();
      goto LABEL_12;
    }

    v26 = v10;
    sub_20B70F138(v13 + 1);
  }

  v15 = *v4;
  sub_20C13E164();
  sub_20C135C74();
  v16 = sub_20C13E1B4();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_20B71B848(*(v15 + 48) + v19 * a2, v12, MEMORY[0x277D52060]);
      v20 = MEMORY[0x20F2ED3D0](v12, a1);
      sub_20B71C508(v12, MEMORY[0x277D52060]);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_20B71C4A0(a1, *(v21 + 48) + *(v9 + 72) * a2, MEMORY[0x277D52060]);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20C13E044();
  __break(1u);
  return result;
}

void sub_20B706EA8(uint64_t a1, unint64_t a2, char a3)
{
  v5 = a1;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_20B6F8218(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_20B70D4F4(&unk_27C764440, &qword_20C155F18);
        goto LABEL_56;
      }

      sub_20B70F410(v6 + 1);
    }

    v8 = *v3;
    sub_20C13E164();
    sub_20B964064(v5);
    sub_20C13CA64();

    v9 = sub_20C13E1B4();
    v10 = -1 << *(v8 + 32);
    a2 = v9 & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      while (2)
      {
        v12 = 0xED000073676E6952;
        v13 = 0x7974697669746361;
        switch(*(*(v8 + 48) + a2))
        {
          case 1:
            v12 = 0xE700000000000000;
            v13 = 0x7261426E727562;
            break;
          case 2:
            v12 = 0xE700000000000000;
            v14 = 0x636E65646163;
            goto LABEL_24;
          case 3:
            v12 = 0xE800000000000000;
            v13 = 0x65636E6174736964;
            break;
          case 4:
            v12 = 0xE600000000000000;
            v13 = 0x796772656E65;
            break;
          case 5:
            v13 = 0x7461527472616568;
            v12 = 0xE900000000000065;
            break;
          case 6:
            v12 = 0xE900000000000074;
            v13 = 0x6867696C68676968;
            break;
          case 7:
            v12 = 0xE900000000000079;
            v13 = 0x7469736E65746E69;
            break;
          case 8:
            v12 = 0xE700000000000000;
            v14 = 0x6E696C636E69;
LABEL_24:
            v13 = v14 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
            break;
          case 9:
            v12 = 0xE300000000000000;
            v13 = 7172210;
            break;
          case 0xA:
            v12 = 0xE900000000000072;
            v13 = 0x6F74617261706573;
            break;
          case 0xB:
            v13 = 7172211;
            v12 = 0xE300000000000000;
            break;
          case 0xC:
            v12 = 0xE800000000000000;
            v13 = 0x73736572676F7270;
            break;
          case 0xD:
            v12 = 0xE500000000000000;
            v13 = 0x72656D6974;
            break;
          default:
            break;
        }

        v15 = 0x7974697669746361;
        v16 = 0xED000073676E6952;
        switch(v5)
        {
          case 1:
            v16 = 0xE700000000000000;
            if (v13 == 0x7261426E727562)
            {
              goto LABEL_49;
            }

            goto LABEL_50;
          case 2:
            v16 = 0xE700000000000000;
            v17 = 0x636E65646163;
            goto LABEL_54;
          case 3:
            v16 = 0xE800000000000000;
            if (v13 != 0x65636E6174736964)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 4:
            v16 = 0xE600000000000000;
            if (v13 != 0x796772656E65)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 5:
            v16 = 0xE900000000000065;
            if (v13 != 0x7461527472616568)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 6:
            v16 = 0xE900000000000074;
            if (v13 != 0x6867696C68676968)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 7:
            v16 = 0xE900000000000079;
            if (v13 != 0x7469736E65746E69)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 8:
            v16 = 0xE700000000000000;
            v17 = 0x6E696C636E69;
LABEL_54:
            if (v13 != (v17 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 9:
            v16 = 0xE300000000000000;
            if (v13 != 7172210)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 10:
            v16 = 0xE900000000000072;
            v15 = 0x6F74617261706573;
            goto LABEL_48;
          case 11:
            v16 = 0xE300000000000000;
            if (v13 != 7172211)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 12:
            v16 = 0xE800000000000000;
            if (v13 != 0x73736572676F7270)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 13:
            v16 = 0xE500000000000000;
            if (v13 != 0x72656D6974)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          default:
LABEL_48:
            if (v13 != v15)
            {
              goto LABEL_50;
            }

LABEL_49:
            if (v12 == v16)
            {
              goto LABEL_59;
            }

LABEL_50:
            v18 = sub_20C13DFF4();

            if (v18)
            {
              goto LABEL_60;
            }

            a2 = (a2 + 1) & v11;
            if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_56:
  v19 = *v23;
  *(*v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = v5;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_59:

LABEL_60:
    sub_20C13E044();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v22;
  }
}

uint64_t sub_20B7073AC(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ButtonAction.ActionType(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v27[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_20B6F85F0(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_20B70CF24();
      goto LABEL_12;
    }

    v26 = v10;
    sub_20B70F7B8(v13 + 1);
  }

  v15 = *v4;
  sub_20C13E164();
  sub_20BDA4D9C(v27);
  v16 = sub_20C13E1B4();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_20B71B848(*(v15 + 48) + v19 * a2, v12, type metadata accessor for ButtonAction.ActionType);
      v20 = sub_20BDA80E4(v12, a1);
      sub_20B71C508(v12, type metadata accessor for ButtonAction.ActionType);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_20B71C4A0(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for ButtonAction.ActionType);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20C13E044();
  __break(1u);
  return result;
}

void sub_20B7075F0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20B6F88F8(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_20B70D4F4(&qword_27C7642C0, &unk_20C155E00);
      goto LABEL_12;
    }

    sub_20B70FA90(v7 + 1);
  }

  v9 = *v3;
  sub_20C13E164();
  v10 = sub_20C137F94();
  MEMORY[0x20F2F58E0](v10);
  v11 = sub_20C13E1B4();
  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = sub_20C137F94();
      if (v14 == sub_20C137F94())
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + a2) = v6;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20C13E044();
  __break(1u);
}

uint64_t sub_20B70776C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_20C135C54();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20B6F8B4C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20B70E184(MEMORY[0x277D51FE0], &qword_27C7640F8, &qword_20C155C58);
      goto LABEL_12;
    }

    sub_20B70FCB4(v11 + 1);
  }

  v13 = *v3;
  sub_20B718614(&qword_27C762F50, 255, MEMORY[0x277D51FE0], MEMORY[0x277D51FE8]);
  v14 = sub_20C13C7B4();
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
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_20B718614(&qword_27C7640F0, 255, MEMORY[0x277D51FE0], MEMORY[0x277D51FF8]);
      v22 = sub_20C13C894();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20C13E044();
  __break(1u);
  return result;
}

uint64_t sub_20B707A3C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_20C136594();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20B6F8EAC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20B70E184(MEMORY[0x277D52AB0], &unk_27C7644A0, &qword_20C155F48);
      goto LABEL_12;
    }

    sub_20B70FFD4(v11 + 1);
  }

  v13 = *v3;
  sub_20B718614(&unk_27C764490, 255, MEMORY[0x277D52AB0], MEMORY[0x277D52AB8]);
  v14 = sub_20C13C7B4();
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
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_20B718614(&qword_27C763F28, 255, MEMORY[0x277D52AB0], MEMORY[0x277D52AC0]);
      v22 = sub_20C13C894();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20C13E044();
  __break(1u);
  return result;
}

uint64_t sub_20B707D0C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_20C1365F4();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20B6F920C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20B70E184(MEMORY[0x277D52AF8], &qword_27C764308, &unk_20C155E30);
      goto LABEL_12;
    }

    sub_20B7102F4(v11 + 1);
  }

  v13 = *v3;
  sub_20B718614(&qword_27C762F60, 255, MEMORY[0x277D52AF8], MEMORY[0x277D52B00]);
  v14 = sub_20C13C7B4();
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
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_20B718614(&qword_27C764300, 255, MEMORY[0x277D52AF8], MEMORY[0x277D52B08]);
      v22 = sub_20C13C894();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20C13E044();
  __break(1u);
  return result;
}

uint64_t sub_20B707FDC(uint64_t a1, unint64_t a2, char a3)
{
  v60 = a1;
  v53 = sub_20C134E04();
  v6 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_20C1333E4();
  v8 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763F18, &unk_20C155F30);
  MEMORY[0x28223BE20](v59);
  v11 = &v44 - v10;
  v61 = type metadata accessor for WorkoutPlanPreference(0);
  v12 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v54 = &v44 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  v20 = *(*v3 + 16);
  v21 = *(*v3 + 24);
  v45 = v3;
  v44 = v12;
  if (v21 <= v20 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_20B6F956C(v20 + 1);
    }

    else
    {
      if (v21 > v20)
      {
        sub_20B70D16C();
        goto LABEL_21;
      }

      sub_20B710614(v20 + 1);
    }

    v22 = *v3;
    sub_20C13E164();
    sub_20BBC6470(v62);
    v23 = sub_20C13E1B4();
    v57 = v22 + 56;
    v58 = v22;
    v24 = -1 << *(v22 + 32);
    a2 = v23 & ~v24;
    v25 = *(v22 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2;
    v26 = v54;
    if (v25)
    {
      v56 = ~v24;
      v55 = *(v12 + 72);
      v47 = (v8 + 32);
      v50 = (v6 + 8);
      v51 = (v8 + 8);
      v46 = (v6 + 32);
      do
      {
        sub_20B71B848(*(v58 + 48) + v55 * a2, v19, type metadata accessor for WorkoutPlanPreference);
        v27 = *(v59 + 48);
        sub_20B71B848(v19, v11, type metadata accessor for WorkoutPlanPreference);
        sub_20B71B848(v60, &v11[v27], type metadata accessor for WorkoutPlanPreference);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_20B71B848(v11, v14, type metadata accessor for WorkoutPlanPreference);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v28 = v49;
            v29 = v53;
            (*v46)(v49, &v11[v27], v53);
            v30 = MEMORY[0x20F2EC550](v14, v28);
            v31 = *v50;
            v32 = v28;
            v33 = v54;
            (*v50)(v32, v29);
            sub_20B71C508(v19, type metadata accessor for WorkoutPlanPreference);
            v31(v14, v29);
            if (v30)
            {
              goto LABEL_24;
            }

            v26 = v33;
LABEL_19:
            sub_20B71C508(v11, type metadata accessor for WorkoutPlanPreference);
            goto LABEL_12;
          }

          sub_20B71C508(v19, type metadata accessor for WorkoutPlanPreference);
          (*v50)(v14, v53);
        }

        else
        {
          sub_20B71B848(v11, v26, type metadata accessor for WorkoutPlanPreference);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v34 = v48;
            v35 = v52;
            (*v47)(v48, &v11[v27], v52);
            v36 = sub_20C1333C4();
            v37 = *v51;
            v38 = v34;
            v26 = v54;
            (*v51)(v38, v35);
            sub_20B71C508(v19, type metadata accessor for WorkoutPlanPreference);
            v37(v26, v35);
            if (v36)
            {
              goto LABEL_24;
            }

            goto LABEL_19;
          }

          sub_20B71C508(v19, type metadata accessor for WorkoutPlanPreference);
          (*v51)(v26, v52);
        }

        sub_20B520158(v11, &qword_27C763F18, &unk_20C155F30);
LABEL_12:
        a2 = (a2 + 1) & v56;
      }

      while (((*(v57 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_21:
  v39 = *v45;
  *(*v45 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_20B71C4A0(v60, *(v39 + 48) + *(v44 + 72) * a2, type metadata accessor for WorkoutPlanPreference);
  v41 = *(v39 + 16);
  v42 = __OFADD__(v41, 1);
  v43 = v41 + 1;
  if (v42)
  {
    __break(1u);
LABEL_24:
    sub_20B71C508(v11, type metadata accessor for WorkoutPlanPreference);
    result = sub_20C13E044();
    __break(1u);
  }

  else
  {
    *(v39 + 16) = v43;
  }

  return result;
}

uint64_t sub_20B708674(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_20C137454();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20B6F9B24(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20B70E184(MEMORY[0x277D53428], &unk_27C7640E0, &qword_20C155C50);
      goto LABEL_12;
    }

    sub_20B710B98(v11 + 1);
  }

  v13 = *v3;
  sub_20B718614(&qword_27C7640D0, 255, MEMORY[0x277D53428], MEMORY[0x277D53430]);
  v14 = sub_20C13C7B4();
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
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_20B718614(&qword_27C7640D8, 255, MEMORY[0x277D53428], MEMORY[0x277D53438]);
      v22 = sub_20C13C894();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20C13E044();
  __break(1u);
  return result;
}

uint64_t sub_20B708944(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_20C137294();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20B6F9E84(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20B70E184(MEMORY[0x277D53250], &qword_27C7640C8, &qword_20C155C48);
      goto LABEL_12;
    }

    sub_20B710EB8(v11 + 1);
  }

  v13 = *v3;
  sub_20B718614(&qword_27C7640B8, 255, MEMORY[0x277D53250], MEMORY[0x277D53258]);
  v14 = sub_20C13C7B4();
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
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_20B718614(&qword_27C7640C0, 255, MEMORY[0x277D53250], MEMORY[0x277D53260]);
      v22 = sub_20C13C894();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20C13E044();
  __break(1u);
  return result;
}

uint64_t sub_20B708C14(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_20C136FE4();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20B6FA1E4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20B70E184(MEMORY[0x277D53070], &qword_27C764878, &unk_20C156200);
      goto LABEL_12;
    }

    sub_20B7111D8(v11 + 1);
  }

  v13 = *v3;
  sub_20B718614(&qword_27C764868, 255, MEMORY[0x277D53070], MEMORY[0x277D53078]);
  v14 = sub_20C13C7B4();
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
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_20B718614(&qword_27C764870, 255, MEMORY[0x277D53070], MEMORY[0x277D53080]);
      v22 = sub_20C13C894();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20C13E044();
  __break(1u);
  return result;
}

void sub_20B708EE4(uint64_t result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v8 = *(*v5 + 16);
  v9 = *(*v5 + 24);
  if (v9 > v8 && (a5 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a5)
  {
    sub_20B6FA544(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_20B70D378();
      goto LABEL_12;
    }

    sub_20B7114F8(v8 + 1);
  }

  v10 = *v5;
  sub_20C13E164();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F00, &unk_20C152DE0);
  sub_20B654574();
  sub_20C133BE4();
  v11 = sub_20C13E1B4();
  v12 = -1 << *(v10 + 32);
  a4 = v11 & ~v12;
  if ((*(v10 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v13 = ~v12;
    sub_20B654378();
    sub_20B652F70();
    while ((sub_20C133BF4() & 1) == 0)
    {
      a4 = (a4 + 1) & v13;
      if (((*(v10 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v19;
  *(*v19 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v15 = *(v14 + 48) + 24 * a4;
  *v15 = result;
  *(v15 + 8) = a2;
  *(v15 + 16) = a3 & 1;
  v16 = *(v14 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v14 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20C13E044();
  __break(1u);
}

void sub_20B7090F8(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20B6FA7F0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_20B70D4F4(&qword_27C7647F0, &qword_20C1561B0);
      a2 = v7;
      goto LABEL_12;
    }

    sub_20B711784(v5 + 1);
  }

  v8 = *v3;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v4 & 1);
  v9 = sub_20C13E1B4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != (v4 & 1))
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4 & 1;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20C13E044();
  __break(1u);
}

void sub_20B709260(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_20B6FE120(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_20B70DD80(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_20B714CAC(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_20C13D5E4();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_20B51C88C(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_20C13D5F4();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20C13E044();
  __break(1u);
}

void sub_20B7093F0(uint64_t result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a5)
  {
    sub_20B6FAA40(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_20B70D64C(&qword_27C764710, &qword_20C1560F8, sub_20B6D8730);
      goto LABEL_21;
    }

    sub_20B7119A4(v9 + 1);
  }

  v11 = *v5;
  sub_20C13E164();
  if (a3 < 0)
  {
    MEMORY[0x20F2F58E0](1);
    sub_20C137934();
  }

  else
  {
    MEMORY[0x20F2F58E0](0);
    MEMORY[0x20F2F58E0](result);
  }

  v12 = sub_20C13E1B4();
  v13 = -1 << *(v11 + 32);
  a4 = v12 & ~v13;
  if ((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v14 = ~v13;
    do
    {
      v15 = *(v11 + 48) + 24 * a4;
      v16 = *v15;
      v17 = *(v15 + 16);
      if (v17 < 0)
      {
        if (a3 < 0)
        {
          v18 = *(v15 + 8);
          v19 = sub_20B6D8740(*v15, v18, v17 & 0x7F);
          v20 = MEMORY[0x20F2EF090](v16, v18, v17 & 0x7F, result, a2, a3 & 0x7F, v19);
          sub_20B6D8758(v16, v18, v17);
          if (v20)
          {
LABEL_20:
            sub_20C13E044();
            __break(1u);
            break;
          }
        }
      }

      else if ((a3 & 0x80) == 0 && v16 == result)
      {
        goto LABEL_20;
      }

      a4 = (a4 + 1) & v14;
    }

    while (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_21:
  v21 = *v26;
  *(*v26 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v22 = *(v21 + 48) + 24 * a4;
  *v22 = result;
  *(v22 + 8) = a2;
  *(v22 + 16) = a3;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }
}

void sub_20B70961C(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, char a5)
{
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a5)
  {
    sub_20B6FACE0(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_20B70D64C(&qword_27C764708, &qword_20C1560F0, sub_20B6D8740);
      goto LABEL_12;
    }

    sub_20B711C24(v9 + 1);
  }

  v11 = *v5;
  sub_20C13E164();
  sub_20C137934();
  v12 = sub_20C13E1B4();
  v13 = -1 << *(v11 + 32);
  a4 = v12 & ~v13;
  if ((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v14 = ~v13;
    do
    {
      v15 = *(v11 + 48) + 24 * a4;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      v19 = sub_20B6D8740(*v15, v17, *(v15 + 16));
      v20 = MEMORY[0x20F2EF090](v16, v17, v18, a1, a2, a3, v19);
      sub_20B6D8768(v16, v17, v18);
      if (v20)
      {
        goto LABEL_15;
      }

      a4 = (a4 + 1) & v14;
    }

    while (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_12:
  v21 = *v26;
  *(*v26 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v22 = *(v21 + 48) + 24 * a4;
  *v22 = a1;
  *(v22 + 8) = a2;
  *(v22 + 16) = a3;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20C13E044();
  __break(1u);
}

uint64_t sub_20B709800(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_20C133B74();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20B6FAF58(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20B70E184(MEMORY[0x277D502D0], &qword_27C764430, &qword_20C155F10);
      goto LABEL_12;
    }

    sub_20B711E7C(v11 + 1);
  }

  v13 = *v3;
  sub_20B718614(&qword_27C764420, 255, MEMORY[0x277D502D0], MEMORY[0x277D502D8]);
  v14 = sub_20C13C7B4();
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
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_20B718614(&qword_27C764428, 255, MEMORY[0x277D502D0], MEMORY[0x277D502E0]);
      v22 = sub_20C13C894();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20C13E044();
  __break(1u);
  return result;
}

uint64_t sub_20B709AD0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20B6FB2B8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20B70E184(MEMORY[0x277CC9AF8], &unk_27C764190, &qword_20C155CD8);
      goto LABEL_12;
    }

    sub_20B71219C(v11 + 1);
  }

  v13 = *v3;
  sub_20B718614(&qword_27C764180, 255, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  v14 = sub_20C13C7B4();
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
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_20B718614(&qword_27C762F98, 255, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B18]);
      v22 = sub_20C13C894();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20C13E044();
  __break(1u);
  return result;
}

uint64_t sub_20B709DA0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_20C137BA4();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20B6FB618(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20B70E184(MEMORY[0x277D53A28], &qword_27C764568, &qword_20C155FD8);
      goto LABEL_12;
    }

    sub_20B7124BC(v11 + 1);
  }

  v13 = *v3;
  sub_20B718614(&unk_27C767650, 255, MEMORY[0x277D53A28], MEMORY[0x277D53A30]);
  v14 = sub_20C13C7B4();
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
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_20B718614(&qword_27C764560, 255, MEMORY[0x277D53A28], MEMORY[0x277D53A38]);
      v22 = sub_20C13C894();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20C13E044();
  __break(1u);
  return result;
}

uint64_t sub_20B70A070(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_20C132FD4();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20B6FB978(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20B70E184(MEMORY[0x277CC9788], &qword_27C7646D0, &unk_20C1560C0);
      goto LABEL_12;
    }

    sub_20B7127DC(v11 + 1);
  }

  v13 = *v3;
  sub_20B718614(&unk_27C7646C0, 255, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  v14 = sub_20C13C7B4();
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
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_20B718614(&qword_27C762F90, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
      v22 = sub_20C13C894();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20C13E044();
  __break(1u);
  return result;
}

uint64_t sub_20B70A340(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_20C139684();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20B6FBCD8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20B70E184(MEMORY[0x277D54458], &qword_27C7646B8, &qword_20C1560B8);
      goto LABEL_12;
    }

    sub_20B712AFC(v11 + 1);
  }

  v13 = *v3;
  sub_20B718614(&qword_27C7646A8, 255, MEMORY[0x277D54458], MEMORY[0x277D54460]);
  v14 = sub_20C13C7B4();
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
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_20B718614(&qword_27C7646B0, 255, MEMORY[0x277D54458], MEMORY[0x277D54468]);
      v22 = sub_20C13C894();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20C13E044();
  __break(1u);
  return result;
}

void sub_20B70A610(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20B6FC038(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_20B70D7D4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_20B712E1C(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_20C13E154();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20C13E044();
  __break(1u);
}

uint64_t sub_20B70A730(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_20C132164();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20B6FC25C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20B70E184(MEMORY[0x277CE9BE0], &qword_27C764818, &qword_20C1561C8);
      goto LABEL_12;
    }

    sub_20B71300C(v11 + 1);
  }

  v13 = *v3;
  sub_20B718614(&qword_27C764808, 255, MEMORY[0x277CE9BE0], MEMORY[0x277CE9BE8]);
  v14 = sub_20C13C7B4();
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
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_20B718614(&qword_27C764810, 255, MEMORY[0x277CE9BE0], MEMORY[0x277CE9BF0]);
      v22 = sub_20C13C894();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20C13E044();
  __break(1u);
  return result;
}

uint64_t sub_20B70AA00(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_20C135174();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20B6FC5BC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20B70E184(MEMORY[0x277D515D0], &unk_27C764650, &qword_20C156078);
      goto LABEL_12;
    }

    sub_20B71332C(v11 + 1);
  }

  v13 = *v3;
  sub_20B718614(&unk_27C764640, 255, MEMORY[0x277D515D0], MEMORY[0x277D515D8]);
  v14 = sub_20C13C7B4();
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
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_20B718614(&qword_27C763F30, 255, MEMORY[0x277D515D0], MEMORY[0x277D515E0]);
      v22 = sub_20C13C894();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20C13E044();
  __break(1u);
  return result;
}

void sub_20B70ACD0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 > v10 && (a5 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a5)
  {
    sub_20B6FC91C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_20B70D93C();
      goto LABEL_16;
    }

    sub_20B71364C(v10 + 1);
  }

  v12 = *v5;
  sub_20C13E164();
  sub_20C13CA64();
  v13 = sub_20C13E1B4();
  v14 = -1 << *(v12 + 32);
  a4 = v13 & ~v14;
  if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v15 = ~v14;
    do
    {
      v16 = *(v12 + 48) + 24 * a4;
      v17 = *(v16 + 8) == a2 && *(v16 + 16) == a3;
      if (v17 || (sub_20C13DFF4() & 1) != 0)
      {
        goto LABEL_19;
      }

      a4 = (a4 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_16:
  v18 = *v5;
  *(*v5 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v19 = (*(v18 + 48) + 24 * a4);
  *v19 = result;
  v19[1] = a2;
  v19[2] = a3;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_19:
  sub_20C13E044();
  __break(1u);
}

uint64_t sub_20B70AE68(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_20C133314();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20B6FCB90(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20B70E184(MEMORY[0x277D4FC78], &qword_27C764078, &qword_20C155C08);
      goto LABEL_12;
    }

    sub_20B7138A0(v11 + 1);
  }

  v13 = *v3;
  sub_20B718614(&qword_27C764068, 255, MEMORY[0x277D4FC78], MEMORY[0x277D4FC80]);
  v14 = sub_20C13C7B4();
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
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_20B718614(&qword_27C764070, 255, MEMORY[0x277D4FC78], MEMORY[0x277D4FC88]);
      v22 = sub_20C13C894();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20C13E044();
  __break(1u);
  return result;
}

void sub_20B70B138(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20B6FCEF0(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_20B70DAAC();
      goto LABEL_12;
    }

    sub_20B713BC0(v7 + 1);
  }

  v9 = *v3;
  sub_20C13E164();
  sub_20C1332D4();
  v10 = sub_20C13E1B4();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(v9 + 48) + 40 * a2;
      v14 = *(v13 + 32);
      v15 = *(v13 + 16);
      v24[0] = *v13;
      v24[1] = v15;
      v25 = v14;
      sub_20B718710(v24, v23);
      v16 = MEMORY[0x20F2EAA30](v24, result);
      sub_20B71877C(v24);
      if (v16)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v17 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v18 = *(v17 + 48) + 40 * a2;
  v19 = *(result + 16);
  *v18 = *result;
  *(v18 + 16) = v19;
  *(v18 + 32) = *(result + 32);
  v20 = *(v17 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v17 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20C13E044();
  __break(1u);
}

uint64_t sub_20B70B2D8(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_20C137474();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20B6FD164(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20B70E184(MEMORY[0x277D53450], &qword_27C763FF8, &unk_20C155BC0);
      goto LABEL_12;
    }

    sub_20B713E10(v11 + 1);
  }

  v13 = *v3;
  sub_20B718614(&qword_27C763FE8, 255, MEMORY[0x277D53450], MEMORY[0x277D53458]);
  v14 = sub_20C13C7B4();
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
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_20B718614(&qword_27C763FF0, 255, MEMORY[0x277D53450], MEMORY[0x277D53460]);
      v22 = sub_20C13C894();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20C13E044();
  __break(1u);
  return result;
}

uint64_t sub_20B70B5A8(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_20C138204();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20B6FD4C4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20B70E184(MEMORY[0x277D53C88], &qword_27C7643E8, &unk_20C155ED8);
      goto LABEL_12;
    }

    sub_20B714130(v11 + 1);
  }

  v13 = *v3;
  sub_20B718614(&qword_27C763318, 255, MEMORY[0x277D53C88], MEMORY[0x277D53C90]);
  v14 = sub_20C13C7B4();
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
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_20B718614(&qword_27C7643E0, 255, MEMORY[0x277D53C88], MEMORY[0x277D53C98]);
      v22 = sub_20C13C894();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20C13E044();
  __break(1u);
  return result;
}

uint64_t sub_20B70B878(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_20C132EE4();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20B6FD824(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20B70E184(MEMORY[0x277CC95F0], &qword_27C7641A8, &unk_20C155CE0);
      goto LABEL_12;
    }

    sub_20B714450(v11 + 1);
  }

  v13 = *v3;
  sub_20B718614(&qword_27C7675A0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v14 = sub_20C13C7B4();
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
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_20B718614(&qword_27C7641A0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v22 = sub_20C13C894();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20C13E044();
  __break(1u);
  return result;
}

void sub_20B70BB48(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20B6FDB84(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      sub_20B70D4F4(a4, a5);
      a2 = v10;
      goto LABEL_12;
    }

    sub_20B714770(v8 + 1, a4, a5);
  }

  v11 = *v6;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v7);
  v12 = sub_20C13E1B4();
  v13 = -1 << *(v11 + 32);
  a2 = v12 & ~v13;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    while (*(*(v11 + 48) + a2) != v7)
    {
      a2 = (a2 + 1) & v14;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v15 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + a2) = v7;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20C13E044();
  __break(1u);
}

void sub_20B70BCB8(unsigned __int8 a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_69;
  }

  if (a3)
  {
    sub_20B6FDDCC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_20B70D4F4(&qword_27C7645A0, &qword_20C155FF0);
      goto LABEL_69;
    }

    sub_20B714988(v5 + 1);
  }

  v7 = *v3;
  v8 = sub_20BD03998(*(*v3 + 40), a1);
  v36 = v7;
  v37 = v7 + 56;
  v9 = -1 << *(v7 + 32);
  a2 = v8 & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v35 = ~v9;
    v10 = 0xEB000000006B6C61;
    v11 = 0xEA00000000006E75;
    do
    {
      v12 = *(*(v36 + 48) + a2);
      if (v12 > 3)
      {
        if (*(*(v36 + 48) + a2) > 5u)
        {
          if (v12 == 6)
          {
            v17 = 0xE300000000000000;
            v16 = 7172210;
          }

          else
          {
            v16 = 7172211;
            v17 = 0xE300000000000000;
          }
        }

        else
        {
          v16 = v12 == 4 ? 0x7363697274656DLL : 0xD000000000000013;
          v17 = v12 == 4 ? 0xE700000000000000 : 0x800000020C191AD0;
        }
      }

      else
      {
        if (v12 == 2)
        {
          v13 = 0x57656E696C636E69;
        }

        else
        {
          v13 = 0x7469736E65746E69;
        }

        if (v12 == 2)
        {
          v14 = v10;
        }

        else
        {
          v14 = 0xE900000000000079;
        }

        if (*(*(v36 + 48) + a2))
        {
          v15 = 0x52656E696C636E69;
        }

        else
        {
          v15 = 0x7261426E727562;
        }

        if (!*(*(v36 + 48) + a2))
        {
          v11 = 0xE700000000000000;
        }

        v16 = *(*(v36 + 48) + a2) <= 1u ? v15 : v13;
        v17 = *(*(v36 + 48) + a2) <= 1u ? v11 : v14;
      }

      v18 = 7172210;
      if (a1 != 6)
      {
        v18 = 7172211;
      }

      v19 = 0xE300000000000000;
      v20 = 0xD000000000000013;
      if (a1 == 4)
      {
        v20 = 0x7363697274656DLL;
      }

      v21 = 0x800000020C191AD0;
      if (a1 == 4)
      {
        v21 = 0xE700000000000000;
      }

      if (a1 <= 5u)
      {
        v18 = v20;
        v19 = v21;
      }

      if (a1 == 2)
      {
        v22 = 0x57656E696C636E69;
      }

      else
      {
        v22 = 0x7469736E65746E69;
      }

      v23 = v10;
      if (a1 == 2)
      {
        v24 = v10;
      }

      else
      {
        v24 = 0xE900000000000079;
      }

      if (a1)
      {
        v25 = 0x52656E696C636E69;
      }

      else
      {
        v25 = 0x7261426E727562;
      }

      v26 = 0xEA00000000006E75;
      if (!a1)
      {
        v26 = 0xE700000000000000;
      }

      if (a1 <= 1u)
      {
        v22 = v25;
        v24 = v26;
      }

      v27 = a1 <= 3u ? v22 : v18;
      v28 = a1 <= 3u ? v24 : v19;
      if (v16 == v27 && v17 == v28)
      {
        goto LABEL_72;
      }

      v29 = sub_20C13DFF4();

      if (v29)
      {
        goto LABEL_73;
      }

      a2 = (a2 + 1) & v35;
      v10 = v23;
      v11 = 0xEA00000000006E75;
    }

    while (((*(v37 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_69:
  v30 = *v34;
  *(*v34 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v30 + 48) + a2) = a1;
  v31 = *(v30 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (!v32)
  {
    *(v30 + 16) = v33;
    return;
  }

  __break(1u);
LABEL_72:

LABEL_73:
  sub_20C13E044();
  __break(1u);
}

uint64_t sub_20B70C008(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_20C137374();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20B6FE340(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20B70E184(MEMORY[0x277D53288], &qword_27C764580, &qword_20C155FE0);
      goto LABEL_12;
    }

    sub_20B714EB8(v11 + 1);
  }

  v13 = *v3;
  sub_20B718614(&qword_27C764570, 255, MEMORY[0x277D53288], MEMORY[0x277D53290]);
  v14 = sub_20C13C7B4();
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
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_20B718614(&qword_27C764578, 255, MEMORY[0x277D53288], MEMORY[0x277D53298]);
      v22 = sub_20C13C894();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20C13E044();
  __break(1u);
  return result;
}

void sub_20B70C2D8(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a4)
  {
    sub_20B6FE6A0(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_20B70DEC0();
      goto LABEL_12;
    }

    sub_20B7151D8(v9 + 1);
  }

  v11 = *v4;
  sub_20C13E164();
  sub_20C136804();
  v12 = sub_20C13E1B4();
  v13 = -1 << *(v11 + 32);
  a3 = v12 & ~v13;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v14 = ~v13;
    do
    {

      v15 = sub_20C1367F4();

      if (v15)
      {
        goto LABEL_15;
      }

      a3 = (a3 + 1) & v14;
    }

    while (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_12:
  v16 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = a1;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20C13E044();
  __break(1u);
}

void sub_20B70C46C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20B6FE900(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_20B70E01C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_20B715410(v5 + 1);
  }

  v8 = *v3;
  v9 = MEMORY[0x20F2F58B0](*(*v3 + 40), v4, 4);
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 4 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20C13E044();
  __break(1u);
}

uint64_t sub_20B70C590(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_20C137A24();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20B6FEB28(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20B70E184(MEMORY[0x277D53920], &qword_27C7643A8, &qword_20C155EA8);
      goto LABEL_12;
    }

    sub_20B715604(v11 + 1);
  }

  v13 = *v3;
  sub_20B718614(&qword_27C764398, 255, MEMORY[0x277D53920], MEMORY[0x277D53928]);
  v14 = sub_20C13C7B4();
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
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_20B718614(&qword_27C7643A0, 255, MEMORY[0x277D53920], MEMORY[0x277D53930]);
      v22 = sub_20C13C894();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20C13E044();
  __break(1u);
  return result;
}

uint64_t sub_20B70C860(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_20C137594();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20B6FEE88(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20B70E184(MEMORY[0x277D534C8], &qword_27C764458, &qword_20C155F20);
      goto LABEL_12;
    }

    sub_20B715924(v11 + 1);
  }

  v13 = *v3;
  sub_20B718614(&qword_27C763F10, 255, MEMORY[0x277D534C8], MEMORY[0x277D534D0]);
  v14 = sub_20C13C7B4();
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
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_20B718614(&qword_27C764450, 255, MEMORY[0x277D534C8], MEMORY[0x277D534D8]);
      v22 = sub_20C13C894();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20C13E044();
  __break(1u);
  return result;
}

void sub_20B70CBA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764100, &unk_20C155C60);
  v2 = *v0;
  v3 = sub_20C13DC14();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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
}

void sub_20B70CD04()
{
  v1 = v0;
  v2 = sub_20C135C84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7642E0, &qword_20C155E20);
  v6 = *v0;
  v7 = sub_20C13DC14();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_20B71B848(*(v6 + 48) + v21, v5, MEMORY[0x277D52060]);
        sub_20B71C4A0(v5, *(v8 + 48) + v21, MEMORY[0x277D52060]);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }
}

void sub_20B70CF24()
{
  v1 = v0;
  v2 = type metadata accessor for ButtonAction.ActionType(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764298, &qword_20C155DD8);
  v6 = *v0;
  v7 = sub_20C13DC14();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_20B71B848(*(v6 + 48) + v21, v5, type metadata accessor for ButtonAction.ActionType);
        sub_20B71C4A0(v5, *(v8 + 48) + v21, type metadata accessor for ButtonAction.ActionType);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }
}

void sub_20B70D16C()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutPlanPreference(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764460, &qword_20C155F28);
  v6 = *v0;
  v7 = sub_20C13DC14();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_20B71B848(*(v6 + 48) + v21, v5, type metadata accessor for WorkoutPlanPreference);
        sub_20B71C4A0(v5, *(v8 + 48) + v21, type metadata accessor for WorkoutPlanPreference);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }
}

void sub_20B70D378()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764858, &qword_20C1561F0);
  v2 = *v0;
  v3 = sub_20C13DC14();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v4 + 48) + v17;
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        sub_20B6A6418(v19, v20, v21);
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
}

void sub_20B70D4F4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_20C13DC14();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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
}

void sub_20B70D64C(uint64_t *a1, uint64_t *a2, void (*a3)(void))
{
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *v3;
  v7 = sub_20C13DC14();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v6 + 56 + 8 * v10)
    {
      memmove(v9, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = 24 * (v18 | (v12 << 6));
        v22 = *(v6 + 48) + v21;
        v23 = *(v22 + 8);
        v24 = *(v8 + 48) + v21;
        v25 = *(v22 + 16);
        *v24 = *v22;
        *(v24 + 8) = v23;
        *(v24 + 16) = v25;
        a3();
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }
}

void sub_20B70D7D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764688, &unk_20C181470);
  v2 = *v0;
  v3 = sub_20C13DC14();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_20B70D93C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764638, &qword_20C156070);
  v2 = *v0;
  v3 = sub_20C13DC14();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v20;
        v22[2] = v21;
        v23 = v19;
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
}

void sub_20B70DAAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764018, &qword_20C155BD8);
  v2 = *v0;
  v3 = sub_20C13DC14();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(v4 + 48) + v17;
        *v24 = *v18;
        *(v24 + 8) = v20;
        *(v24 + 16) = v21;
        *(v24 + 24) = v22;
        *(v24 + 32) = v23;
        sub_20B7187D0(v19, v20, v21, v22, v23);
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
}

void sub_20B70DC1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7647B0, &unk_20C156170);
  v2 = *v0;
  v3 = sub_20C13DC14();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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
}

void sub_20B70DD80(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_20C13DC14();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
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
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        v21 = v20;
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

      v18 = *(v4 + 56 + 8 * v10);
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
}

void sub_20B70DEC0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764540, &unk_20C155FC0);
  v2 = *v0;
  v3 = sub_20C13DC14();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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
}

void sub_20B70E01C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764390, &qword_20C155EA0);
  v2 = *v0;
  v3 = sub_20C13DC14();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_20B70E184(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_20C13DC14();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    v14 = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || v14 >= v11 + 56 + 8 * v15)
    {
      memmove(v14, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    v29 = v8 + 16;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
      (*(v8 + 32))(*(v13 + 48) + v25, v10, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }
}

void sub_20B70E3BC(uint64_t a1)
{
  v2 = v1;
  v34 = sub_20C138034();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764138, &qword_20C155CA0);
  v7 = sub_20C13DC24();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
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
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_20B718614(&unk_27C764140, 255, MEMORY[0x277D53BA0], MEMORY[0x277D53BA8]);
      v21 = sub_20C13C7B4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
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

        v2 = v29;
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
}

void sub_20B70E6DC(uint64_t a1)
{
  v2 = v1;
  v34 = sub_20C133524();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764150, &qword_20C155CA8);
  v7 = sub_20C13DC24();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
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
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_20B718614(&qword_27C763F08, 255, MEMORY[0x277D4FF88], MEMORY[0x277D4FF90]);
      v21 = sub_20C13C7B4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
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

        v2 = v29;
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
}

void sub_20B70E9FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642D0, &unk_20C155E10);
  v4 = sub_20C13DC24();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_20C13E164();
      sub_20C13CA64();

      v12 = sub_20C13E1B4();
      v13 = -1 << *(v5 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v19 = *(v3 + 56 + 8 * v6);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }
}

void sub_20B70ECC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764100, &unk_20C155C60);
  v4 = sub_20C13DC24();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_20C13E164();

      sub_20C13CA64();
      v20 = sub_20C13E1B4();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
}

void sub_20B70EEF8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v5 = v4;
  v6 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = sub_20C13DC24();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v7 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v6 + 48) + (v16 | (v9 << 6)));
      sub_20C13E164();
      a4(v19);
      sub_20C13CA64();

      v20 = sub_20C13E1B4();
      v21 = -1 << *(v8 + 32);
      v22 = v20 & ~v21;
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + v15) = v19;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v5 = v4;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v5 = v8;
  }
}

void sub_20B70F138(uint64_t a1)
{
  v2 = v1;
  v3 = sub_20C135C84();
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7642E0, &qword_20C155E20);
  v7 = sub_20C13DC24();
  v8 = v7;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v7 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v30 + 72);
      sub_20B71B848(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5, MEMORY[0x277D52060]);
      sub_20C13E164();
      sub_20C135C74();
      v20 = sub_20C13E1B4();
      v21 = -1 << *(v8 + 32);
      v22 = v20 & ~v21;
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      sub_20B71C4A0(v5, *(v8 + 48) + v15 * v19, MEMORY[0x277D52060]);
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v2 = v8;
  }
}

void sub_20B70F410(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764440, &qword_20C155F18);
  v4 = sub_20C13DC24();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_20C13E164();
      sub_20C13CA64();

      v12 = sub_20C13E1B4();
      v13 = -1 << *(v5 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v19 = *(v3 + 56 + 8 * v6);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }
}

void sub_20B70F7B8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for ButtonAction.ActionType(0);
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764298, &qword_20C155DD8);
  v7 = sub_20C13DC24();
  v8 = v7;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v7 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v30 + 72);
      sub_20B71B848(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5, type metadata accessor for ButtonAction.ActionType);
      sub_20C13E164();
      sub_20BDA4D9C(v31);
      v20 = sub_20C13E1B4();
      v21 = -1 << *(v8 + 32);
      v22 = v20 & ~v21;
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      sub_20B71C4A0(v5, *(v8 + 48) + v15 * v19, type metadata accessor for ButtonAction.ActionType);
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v2 = v8;
  }
}

void sub_20B70FA90(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7642C0, &unk_20C155E00);
  v4 = sub_20C13DC24();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_20C13E164();
      v17 = sub_20C137F94();
      MEMORY[0x20F2F58E0](v17);
      v18 = sub_20C13E1B4();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
}

void sub_20B70FCB4(uint64_t a1)
{
  v2 = v1;
  v34 = sub_20C135C54();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7640F8, &qword_20C155C58);
  v7 = sub_20C13DC24();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
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
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_20B718614(&qword_27C762F50, 255, MEMORY[0x277D51FE0], MEMORY[0x277D51FE8]);
      v21 = sub_20C13C7B4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
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

        v2 = v29;
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
}