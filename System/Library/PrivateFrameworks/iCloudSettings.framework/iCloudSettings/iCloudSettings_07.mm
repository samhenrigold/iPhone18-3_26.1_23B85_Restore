uint64_t sub_275905B1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A107C0, qword_2759C7420);
  v34 = v4;
  result = sub_2759BAA18();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_2759BABD8();
      sub_2759BA328();
      result = sub_2759BAC08();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_275905DBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10BF0, &unk_2759C8170);
  result = sub_2759BAA18();
  v7 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 56) + (v16 | (v8 << 6)));
      sub_2759BABD8();
      sub_2759BA328();
      result = sub_2759BAC08();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 56) + v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if ((v28 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v27 = 1 << *(v5 + 32);
    v3 = v2;
    if (v27 >= 64)
    {
      bzero((v5 + 64), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

void sub_275906044(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3F0, &qword_2759C39B0);
  v36 = v4;
  v6 = sub_2759BAA18();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v37 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v36 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      sub_2759BA298();
      sub_2759BABD8();
      sub_2759BA328();
      v25 = sub_2759BAC08();

      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        v37 = (v18 - 1) & v18;
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
}

uint64_t sub_275906308(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3D8, &qword_2759C4BE0);
  result = sub_2759BAA18();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_2758A2ECC((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_2758A3324(v23, &v36);
        sub_275864C94(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_2759BA858();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_2758A2ECC(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
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

uint64_t sub_2759065C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_27586F8A0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_275904F98(v16, a4 & 1);
      v11 = sub_27586F8A0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_2759BAB38();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_275907100();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void sub_275906750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_27586F8A0(a3, a4);
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
      sub_275905240(v18, a5 & 1);
      v13 = sub_27586F8A0(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_2759BAB38();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_275907270();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

uint64_t sub_2759068D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_27586F8A0(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_2759073E8();
      goto LABEL_7;
    }

    sub_275905500(v15, a4 & 1);
    v26 = sub_27586F8A0(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_2759BAB38();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_2759B8AF8();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_275906FD4(v12, a2, a3, a1, v18);
}

uint64_t sub_275906A6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_27586F8A0(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_275905880(v20, a4 & 1, a5, a6);
      v15 = sub_27586F8A0(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_2759BAB38();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v23 = v15;
      sub_275907668(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

unint64_t sub_275906C08(char a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  result = sub_2758A33AC();
  v9 = *(v6 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v8;
  v14 = *(v6 + 24);
  if (v14 >= v12 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v14 >= v12 && (a2 & 1) == 0)
  {
    v15 = result;
    sub_27590792C();
    result = v15;
    goto LABEL_8;
  }

  sub_275905DBC(v12, a2 & 1);
  result = sub_2758A33AC();
  if ((v13 & 1) == (v16 & 1))
  {
LABEL_8:
    v17 = *v3;
    if (v13)
    {
      *(*(v17 + 56) + result) = a1 & 1;
      return result;
    }

    *(v17 + 8 * (result >> 6) + 64) |= 1 << result;
    *(*(v17 + 56) + result) = a1 & 1;
    v18 = *(v17 + 16);
    v11 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (!v11)
    {
      *(v17 + 16) = v19;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_2759BAB38();
  __break(1u);
  return result;
}

id sub_275906D20(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2758A342C();
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_275906044(v13, a3 & 1);
      v8 = sub_2758A342C();
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for AIDAServiceType(0);
        sub_2759BAB38();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v16 = v8;
      sub_275907A6C();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return a2;
}

_OWORD *sub_275906E88(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2758A24F8(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_275907BCC();
      goto LABEL_7;
    }

    sub_275906308(v13, a3 & 1);
    v19 = sub_2758A24F8(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2758A3324(a2, v21);
      return sub_275907084(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_2759BAB38();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_2758A2ECC(a1, v17);
}

uint64_t sub_275906FD4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_2759B8AF8();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

_OWORD *sub_275907084(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_2758A2ECC(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_275907100()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10BD8, &qword_2759C8150);
  v2 = *v0;
  v3 = sub_2759BAA08();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
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

void *sub_275907270()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3E8, &qword_2759C39A8);
  v2 = *v0;
  v3 = sub_2759BAA08();
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

char *sub_2759073E8()
{
  v1 = v0;
  v35 = sub_2759B8AF8();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3C8, &qword_2759C3990);
  v3 = *v0;
  v4 = sub_2759BAA08();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_275907668(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2759BAA08();
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

        result = v22;
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

void *sub_2759077C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A107C0, qword_2759C7420);
  v2 = *v0;
  v3 = sub_2759BAA08();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_27590792C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10BF0, &unk_2759C8170);
  v2 = *v0;
  v3 = sub_2759BAA08();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = *(*(v2 + 56) + v14))
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

id sub_275907A6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3F0, &qword_2759C39B0);
  v2 = *v0;
  v3 = sub_2759BAA08();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void *sub_275907BCC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3D8, &qword_2759C4BE0);
  v2 = *v0;
  v3 = sub_2759BAA08();
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
        v18 = 40 * v17;
        sub_2758A3324(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_275864C94(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_2758A2ECC(v22, (*(v4 + 56) + v17));
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

iCloudSettings::ManageStorageDeepLinkAppIdentifier_optional __swiftcall ManageStorageDeepLinkAppIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2759BAA48();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_275907E74(char *a1, char *a2)
{
  if (*&aPhotos_1[8 * *a1] == *&aPhotos_1[8 * *a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2759BAAC8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

unint64_t sub_275907EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10BF8;
  if (!qword_280A10BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10BF8);
  }

  return result;
}

uint64_t sub_275907F34()
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

double sub_275907F90(uint64_t a1)
{
  sub_2759BA328();

  return result;
}

uint64_t sub_275907FD0(uint64_t a1)
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

id sub_275908060(void *a1, double a2, double a3)
{
  [v3 size];
  v8 = a2 / v7;
  [v3 size];
  if (a3 / v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = a3 / v9;
  }

  [v3 size];
  v12 = v11 * v10;
  [v3 size];
  v14 = v10 * v13;
  sub_275908294();
  v15 = [swift_getObjCClassFromMetadata() preferredFormat];
  v16 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v15 format:{a2, a3}];
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = v3;
  *(v17 + 48) = v12;
  *(v17 + 56) = v14;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_2759083E8;
  *(v18 + 24) = v17;
  v25[4] = sub_2759083FC;
  v25[5] = v18;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 1107296256;
  v25[2] = sub_27599B03C;
  v25[3] = &block_descriptor_6;
  v19 = _Block_copy(v25);
  v20 = a1;
  v21 = v3;

  v22 = [v16 imageWithActions_];

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v22;
  }

  __break(1u);
  return result;
}

unint64_t sub_275908294()
{
  result = qword_280A10C00;
  if (!qword_280A10C00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A10C00);
  }

  return result;
}

id sub_2759082E0(void *a1, CGColor *a2, void *a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  v14 = [a1 CGContext];
  CGContextSetFillColorWithColor(v14, a2);

  v15 = [a1 CGContext];
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = a4;
  v19.size.height = a5;
  CGContextAddEllipseInRect(v15, v19);

  v16 = [a1 CGContext];
  CGContextDrawPath(v16, kCGPathFill);

  return [a3 drawInRect_];
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_275908454@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2759087FC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2759084A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C08, &unk_2759C82B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C2110;
  *(inited + 32) = 0x656D6F6374756FLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_2759BA5A8();
  *(inited + 56) = 0x79546E6F69746361;
  *(inited + 64) = 0xEA00000000006570;
  *(inited + 72) = sub_2759BA258();
  v1 = sub_2758A2798(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C10, &qword_2759D0850);
  swift_arrayDestroy();
  return v1;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2759085BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_275908604(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for iCloudHomeViewModelPerformActionEvent.Outcome(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for iCloudHomeViewModelPerformActionEvent.Outcome(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2759087A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10C18;
  if (!qword_280A10C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10C18);
  }

  return result;
}

unint64_t sub_2759087FC(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_27590880C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_275908BAC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_275908854()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C08, &unk_2759C82B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C2110;
  *(inited + 32) = 0x46676E696C6C6163;
  *(inited + 40) = 0xEF6E6F6974636E75;
  *(inited + 48) = sub_2759BA258();
  *(inited + 56) = 0x656D6F6374756FLL;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = sub_2759BA5A8();
  v1 = sub_2758A2798(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C10, &qword_2759D0850);
  swift_arrayDestroy();
  return v1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_27590896C(uint64_t a1, int a2)
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

uint64_t sub_2759089B4(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ManageStorageAnimationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ManageStorageAnimationType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_275908B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10C20;
  if (!qword_280A10C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10C20);
  }

  return result;
}

unint64_t sub_275908BAC(unint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  return result;
}

unint64_t *sub_275908BBC@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_275908BD4(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C08, &unk_2759C82B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C17A0;
  *(inited + 32) = 0x656D6F6374756FLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_2759BA5A8();
  v5 = sub_2758A2798(inited);
  swift_setDeallocating();
  sub_275908CFC(inited + 32);
  if (a3)
  {
    v6 = sub_2759BA258();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_275906A58(v6, 0x6B6E694C70656564, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  return v5;
}

uint64_t sub_275908CFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C10, &qword_2759D0850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275908D64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_275908DC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_275908E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10C28;
  if (!qword_280A10C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10C28);
  }

  return result;
}

unint64_t sub_275908E8C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_275909658(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_275908ED4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C08, &unk_2759C82B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C2110;
  *(inited + 32) = 0x6E6F69746361;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = sub_2759BA5A8();
  *(inited + 56) = 0x6449656C646E7562;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = sub_2759BA258();
  v1 = sub_2758A2798(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C10, &qword_2759D0850);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_275908FC8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000002759E11A0 == a2 || (sub_2759BAAC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61446574656C6564 && a2 == 0xEA00000000006174 || (sub_2759BAAC8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6544317472656C61 && a2 == 0xEC0000006574656CLL || (sub_2759BAAC8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6143317472656C61 && a2 == 0xEC0000006C65636ELL || (sub_2759BAAC8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6544327472656C61 && a2 == 0xEC0000006574656CLL || (sub_2759BAAC8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6143327472656C61 && a2 == 0xEC0000006C65636ELL || (sub_2759BAAC8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C65447465656873 && a2 == 0xEB00000000657465 || (sub_2759BAAC8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E61437465656873 && a2 == 0xEB000000006C6563 || (sub_2759BAAC8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6565447465656873 && a2 == 0xED00006B6E696C70 || (sub_2759BAAC8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000002759E11C0 == a2 || (sub_2759BAAC8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656C65446F646E75 && a2 == 0xEA00000000006574 || (sub_2759BAAC8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6946776569766572 && a2 == 0xEB0000000073656CLL || (sub_2759BAAC8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x61446574656C6564 && a2 == 0xEF74656568536174)
  {

    return 12;
  }

  else
  {
    v5 = sub_2759BAAC8();

    if (v5)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_275909418(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_275909460(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ManageStorageDrilldownActionEvent.Action(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ManageStorageDrilldownActionEvent.Action(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_275909604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10C30;
  if (!qword_280A10C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10C30);
  }

  return result;
}

unint64_t sub_275909658(unint64_t result)
{
  if (result >= 0xE)
  {
    return 14;
  }

  return result;
}

unint64_t sub_275909668@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_275909974(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_275909694(void *a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C08, &unk_2759C82B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C17A0;
  *(inited + 32) = 0x656D6F6374756FLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_2759BA5A8();
  v7 = sub_2758A2798(inited);
  swift_setDeallocating();
  sub_275908CFC(inited + 32);
  if ((a4 & 1) == 0)
  {
    v8 = sub_2759BA5A8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_275906A58(v8, 0x6E756F43656C6966, 0xE900000000000074, isUniquelyReferenced_nonNull_native);
  }

  if (a1)
  {
    swift_getErrorValue();
    v10 = a1;
    sub_2759AC7BC(v14);
    v11 = sub_2759BA258();

    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_275906A58(v11, 0x726F727245796E61, 0xE800000000000000, v12);
  }

  return v7;
}

uint64_t sub_275909848(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2759098A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_275909920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10C38;
  if (!qword_280A10C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10C38);
  }

  return result;
}

unint64_t sub_275909974(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

void *sub_275909984@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_2759099A4(void *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C08, &unk_2759C82B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C17A0;
  *(inited + 32) = 0x656D6F6374756FLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_2759BA5A8();
  v4 = sub_2758A2798(inited);
  swift_setDeallocating();
  sub_275908CFC(inited + 32);
  if (a1)
  {
    swift_getErrorValue();
    v5 = a1;
    sub_2759AC7BC(v9);
    v6 = sub_2759BA258();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_275906A58(v6, 0x726F727245796E61, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  return v4;
}

uint64_t sub_275909B00(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_275909B5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_275909BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10C40;
  if (!qword_280A10C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10C40);
  }

  return result;
}

unint64_t sub_275909C44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C08, &unk_2759C82B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C17A0;
  *(inited + 32) = 0x656D6F6374756FLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_2759BA5A8();
  v1 = sub_2758A2798(inited);
  swift_setDeallocating();
  sub_275908CFC(inited + 32);
  return v1;
}

unint64_t sub_275909D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10C48;
  if (!qword_280A10C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10C48);
  }

  return result;
}

unint64_t sub_275909DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10C50;
  if (!qword_280A10C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10C50);
  }

  return result;
}

uint64_t sub_275909E2C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2759B9CB8();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC0, &qword_2759C7C78) + 36));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F1A8, &qword_2759C8C00) + 28);
  v5 = *MEMORY[0x277CE1050];
  v6 = sub_2759B9D18();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  *v3 = swift_getKeyPath();
  *a1 = v2;
  v7 = sub_2759B98F8();
  KeyPath = swift_getKeyPath();
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC8, &qword_2759C7CE0) + 36));
  *v9 = KeyPath;
  v9[1] = v7;
  LODWORD(v7) = sub_2759B9678();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C58, &unk_2759C8C70);
  *(a1 + *(result + 36)) = v7;
  return result;
}

unint64_t sub_275909F70()
{
  result = qword_280A10C60;
  if (!qword_280A10C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10C58, &unk_2759C8C70);
    sub_27590A028();
    sub_27589B02C(&qword_280A0F638, &qword_280A0F640, &unk_2759C7240, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10C60);
  }

  return result;
}

unint64_t sub_27590A028()
{
  result = qword_280A10C68;
  if (!qword_280A10C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10AC8, &qword_2759C7CE0);
    sub_27590A0E0();
    sub_27589B02C(&qword_280A0F1E0, &qword_280A0F1E8, &unk_2759C3620, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10C68);
  }

  return result;
}

unint64_t sub_27590A0E0()
{
  result = qword_280A10C70;
  if (!qword_280A10C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10AC0, &qword_2759C7C78);
    sub_27589B02C(&qword_280A0F200, &qword_280A0F1A8, &qword_2759C8C00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10C70);
  }

  return result;
}

uint64_t sub_27590A1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_27586FBC8(a3, v23 - v10, &unk_280A0E510, &qword_2759C33C0);
  v12 = sub_2759BA518();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_27586BF04(v11, &unk_280A0E510, &qword_2759C33C0);
  }

  else
  {
    sub_2759BA508();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2759BA468();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a2;
      v19 = sub_2759BA308() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_27586BF04(a3, &unk_280A0E510, &qword_2759C33C0);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_27586BF04(a3, &unk_280A0E510, &qword_2759C33C0);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

void sub_27590A460(NSObject *a1, char a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v98 - v13;
  v100 = *a3;
  v15 = *a4;
  swift_getKeyPath();
  v101 = v6;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v24 = sub_2759B89A8();
    __swift_project_value_buffer(v24, qword_2815ADE70);
    v25 = a1;
    v26 = sub_2759B8988();
    v27 = sub_2759BA648();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138543362;
      *(v28 + 4) = v25;
      *v29 = v25;
      v30 = v25;
      _os_log_impl(&dword_275819000, v26, v27, "Can not perform action [%{public}@] without a presenting UINavigationController.", v28, 0xCu);
      sub_27586BF04(v29, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v29, -1, -1);
      MEMORY[0x277C85860](v28, -1, -1);
    }

    v21 = v25;
    v22 = v21;
    v23 = 0;
    goto LABEL_48;
  }

  swift_getKeyPath();
  v101 = v6;
  sub_2759B8638();

  if (*&v6[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__loadingiCloudHomeSubview])
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v17 = sub_2759B89A8();
    __swift_project_value_buffer(v17, qword_2815ADE70);
    v18 = sub_2759B8988();
    v19 = sub_2759BA668();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_275819000, v18, v19, "Already loading another subview. Bailing.", v20, 2u);
      MEMORY[0x277C85860](v20, -1, -1);
    }

    v21 = a1;
    v22 = v21;
    v23 = 1;
    goto LABEL_48;
  }

  v32 = *(&a1->isa + OBJC_IVAR____TtC14iCloudSettings6Action_type);
  v31 = *(&a1[1].isa + OBJC_IVAR____TtC14iCloudSettings6Action_type);

  v33._countAndFlagsBits = v32;
  v33._object = v31;
  iCloudSettingsActionType.init(rawValue:)(v33);
  if (v101 <= 3u)
  {
    if (v101 > 1u)
    {
      if (v101 == 2)
      {
        sub_275911124();
        if (a2)
        {
          v35 = 6;
        }

        else
        {
          v35 = 8;
        }

        v36 = 0xEE007070416D7569;
        v34 = 0x6D657250776F6873;
      }

      else
      {
        sub_275911618();
        if (a2)
        {
          v35 = 6;
        }

        else
        {
          v35 = 8;
        }

        v36 = 0x80000002759DCC50;
        v34 = 0xD000000000000015;
      }
    }

    else if (v101)
    {
      sub_275910ECC();
      if (a2)
      {
        v35 = 6;
      }

      else
      {
        v35 = 8;
      }

      v36 = 0xEF6C69616D45794DLL;
      v34 = 0x65646948776F6873;
    }

    else
    {
      v34 = 0xD000000000000010;
      sub_2759107E8(a5);
      if (a2)
      {
        v35 = 6;
      }

      else
      {
        v35 = 8;
      }

      v36 = 0x80000002759DCC20;
    }

LABEL_46:

    sub_2759BA4D8();
    v60 = sub_2759BA518();
    (*(*(v60 - 8) + 56))(v14, 0, 1, v60);
    v61 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v62 = swift_allocObject();
    *(v62 + 16) = 0;
    *(v62 + 24) = 0;
    *(v62 + 32) = v61;
    *(v62 + 40) = v35;
    *(v62 + 48) = 0;
    *(v62 + 56) = 10;
    *(v62 + 57) = v100;
    *(v62 + 64) = 1;
    *(v62 + 72) = 0;
    *(v62 + 80) = v34;
    *(v62 + 88) = v36;
    *(v62 + 96) = 7;

    sub_27591E640(v35, 0, 0xAu);
    sub_275931D20(0, 0, v14, &unk_2759C5AB8, v62);

    sub_27589F7F0(v35, 0, 0xAu);

LABEL_47:
    sub_27586BF04(v14, &unk_280A0E510, &qword_2759C33C0);
    v21 = a1;
    v22 = v21;
    v23 = 3;
LABEL_48:
    sub_275951A74(v21, v23, sub_27594A594);
LABEL_49:

    return;
  }

  if (v101 <= 5u)
  {
    if (v101 != 4)
    {
      if (qword_280A0E338 != -1)
      {
        swift_once();
      }

      v54 = sub_2759B89A8();
      __swift_project_value_buffer(v54, qword_280A238A0);
      v55 = a1;
      v56 = sub_2759B8988();
      v57 = sub_2759BA648();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v101 = v59;
        *v58 = 136315138;
        *(v58 + 4) = sub_2758937B8(v32, v31, &v101);
        _os_log_impl(&dword_275819000, v56, v57, "iCloudSettingsActionType %s is not yet supported in iCloudHomeViewModel", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v59);
        MEMORY[0x277C85860](v59, -1, -1);
        MEMORY[0x277C85860](v58, -1, -1);
      }

      v21 = v55;
      v22 = v21;
      v23 = 2;
      goto LABEL_48;
    }

    sub_2759BA4E8();
    v37 = sub_2759BA518();
    v38 = *(v37 - 8);
    v99 = v32;
    v39 = *(v38 + 56);
    v39(v14, 0, 1, v37);
    sub_2759BA4C8();
    v40 = a1;
    v41 = v6;
    v42 = sub_2759BA4B8();
    v43 = swift_allocObject();
    v44 = MEMORY[0x277D85700];
    *(v43 + 16) = v42;
    *(v43 + 24) = v44;
    *(v43 + 32) = v41;
    *(v43 + 40) = v40;
    *(v43 + 48) = a2 & 1;
    sub_27587D460(0, 0, v14, &unk_2759CF520, v43);

    sub_2759BA4D8();
    v39(v14, 0, 1, v37);
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    *(v46 + 24) = 0;
    v47 = v99;
    *(v46 + 32) = v45;
    *(v46 + 40) = v47;
    *(v46 + 48) = v31;
    *(v46 + 56) = v100;

    sub_275931D20(0, 0, v14, &unk_2759C8F90, v46);

    goto LABEL_47;
  }

  if (v101 == 6)
  {
    v48 = sub_2759BA518();
    (*(*(v48 - 8) + 56))(v14, 1, 1, v48);
    sub_2759BA4C8();
    v49 = a1;
    v50 = v6;
    v51 = sub_2759BA4B8();
    v52 = swift_allocObject();
    v53 = MEMORY[0x277D85700];
    v52[2] = v51;
    v52[3] = v53;
    v52[4] = v50;
    v52[5] = v49;
    sub_27587D460(0, 0, v14, &unk_2759C8F88, v52);

    if (a2)
    {
      v35 = 6;
    }

    else
    {
      v35 = 8;
    }

    v36 = 0xEB00000000776569;
    v34 = 0x566265576E65706FLL;
    goto LABEL_46;
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v63 = sub_2759B89A8();
  __swift_project_value_buffer(v63, qword_2815ADE70);
  v64 = sub_2759B8988();
  v65 = sub_2759BA668();
  v66 = os_log_type_enabled(v64, v65);
  v99 = v32;
  if (v66)
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_275819000, v64, v65, "No valid iCloudSettings actions found, checking for icqActions.", v67, 2u);
    MEMORY[0x277C85860](v67, -1, -1);
  }

  v68 = sub_2759BA258();
  v69 = _ICQActionForString();

  if (v69 > 118)
  {
    if ((v69 - 120) < 2)
    {
      sub_27591343C(a1);
      v70 = 1;
      v71 = 4;
      goto LABEL_80;
    }

    if (v69 == 119)
    {
      sub_275912990();
      goto LABEL_79;
    }

    if (v69 == 127)
    {
      goto LABEL_63;
    }
  }

  else
  {
    if (v69 > 110)
    {
      if (v69 == 111)
      {
        sub_275912078(*(&a1->isa + OBJC_IVAR____TtC14iCloudSettings6Action_actionParameters), 0);
        goto LABEL_79;
      }

      if (v69 == 115)
      {
        if (v15 == 7 || (sub_27599AD98(v15, 1u) & 1) == 0)
        {
          v80 = sub_2759B8988();
          v81 = sub_2759BA648();
          if (os_log_type_enabled(v80, v81))
          {
            v82 = swift_slowAlloc();
            *v82 = 0;
            _os_log_impl(&dword_275819000, v80, v81, "LiftUI only supported for family usage.", v82, 2u);
            MEMORY[0x277C85860](v82, -1, -1);
          }
        }

        else
        {
          LOBYTE(v101) = v100;
          sub_275912CB0(a1, &v101);
        }

        goto LABEL_79;
      }

      if (v69 != 118)
      {
        goto LABEL_74;
      }

LABEL_63:
      sub_2759139B4(a1);
LABEL_79:
      v70 = 1;
      v71 = 4;
      goto LABEL_80;
    }

    if (v69 == 6)
    {
      sub_27591B0D8(a1);
      goto LABEL_79;
    }

    if (v69 == 110)
    {
      sub_275912524(a1);
      goto LABEL_79;
    }
  }

LABEL_74:
  v72 = a1;
  v73 = sub_2759B8988();
  v74 = sub_2759BA648();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v98 = v73;
    v77 = v76;
    *v75 = 138412290;
    *(v75 + 4) = v72;
    *v76 = v72;
    v78 = v72;
    v79 = v98;
    _os_log_impl(&dword_275819000, v98, v74, "Failed to handle action: %@", v75, 0xCu);
    sub_27586BF04(v77, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v77, -1, -1);
    MEMORY[0x277C85860](v75, -1, -1);
  }

  else
  {
  }

  v70 = 0;
  v71 = 5;
LABEL_80:
  v22 = a1;
  v83 = sub_2759BA258();
  v84 = _ICQActionForString();

  if ((v84 - 114) <= 0xD && ((1 << (v84 - 114)) & 0x20F1) != 0)
  {
    sub_2759BA4D8();
    v85 = sub_2759BA518();
    (*(*(v85 - 8) + 56))(v14, 0, 1, v85);
    v86 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v87 = swift_allocObject();
    *(v87 + 16) = 0;
    *(v87 + 24) = 0;
    v88 = v99;
    *(v87 + 32) = v86;
    *(v87 + 40) = v88;
    *(v87 + 48) = v31;
    *(v87 + 56) = v100;

    sub_275931D20(0, 0, v14, &unk_2759C8F78, v87);

LABEL_83:
    sub_27586BF04(v14, &unk_280A0E510, &qword_2759C33C0);
LABEL_84:
    sub_275951A74(v22, v71, sub_27594A594);

    goto LABEL_49;
  }

  if ((v70 & 1) == 0)
  {
    goto LABEL_84;
  }

  v89 = _ICQStringForAction();
  if (v89)
  {
    v90 = v89;
    if (a2)
    {
      v91 = 6;
    }

    else
    {
      v91 = 8;
    }

    v92 = sub_2759BA298();
    v94 = v93;

    sub_2759BA4D8();
    v95 = sub_2759BA518();
    (*(*(v95 - 8) + 56))(v14, 0, 1, v95);
    v96 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v97 = swift_allocObject();
    *(v97 + 16) = 0;
    *(v97 + 24) = 0;
    *(v97 + 32) = v96;
    *(v97 + 40) = v91;
    *(v97 + 48) = 0;
    *(v97 + 56) = 10;
    *(v97 + 57) = v100;
    *(v97 + 64) = 1;
    *(v97 + 72) = 0;
    *(v97 + 80) = v92;
    *(v97 + 88) = v94;
    *(v97 + 96) = 8;

    sub_27591E640(v91, 0, 0xAu);
    sub_275931D20(0, 0, v14, &unk_2759C5AA0, v97);

    sub_27589F7F0(v91, 0, 0xAu);

    goto LABEL_83;
  }

  __break(1u);
}

uint64_t sub_27590B4BC@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_27590B570(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_275878260(v1);
}

uint64_t sub_27590B5A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v4 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__appendSettingsNavigationPath;
  swift_beginAccess();
  return sub_27586FBC8(v3 + v4, a2, &qword_280A0EFB0, &qword_2759C3128);
}

uint64_t sub_27590B678(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EFB0, &qword_2759C3128);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_27586FBC8(a1, &v6 - v3, &qword_280A0EFB0, &qword_2759C3128);
  return sub_2758788FC(v4);
}

void sub_27590B738(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_275879710(v1);
}

id sub_27590B77C@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v7 = *(v6 + *a3);
  *a4 = v7;

  return v7;
}

void sub_27590B840(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_27587A2C4(v1);
}

uint64_t sub_27590B870@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v4 = *(v3 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__delayedDeeplinkURLString + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__delayedDeeplinkURLString);
  a2[1] = v4;
}

double sub_27590B928(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_27587C744(v1, v2);
}

void sub_27590B968()
{
  v1 = v0;
  swift_getKeyPath();
  v56 = v0;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v5 = (v0 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__delayedDeeplinkURLString);
  v6 = *(v0 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__delayedDeeplinkURLString + 8);
  if (v6)
  {
    v7 = *v5;
    v56 = *v5;
    v57 = v6;
    v58[0] = 0xD000000000000013;
    v58[1] = 0x80000002759E1640;
    sub_27589F2D4(v2, v3, v4);

    if (sub_2759BA7F8())
    {

      swift_getKeyPath();
      v56 = v0;
      sub_2759B8638();

      v8 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
      swift_beginAccess();
      v9 = *(v1 + v8);
      if (v9)
      {
        v10 = *(v9 + OBJC_IVAR___ICSHomeDataModel_manageSubscriptionsAction);
        if (v10)
        {
          LOBYTE(v58[0]) = 7;
          v55 = 7;
          v11 = v10;
          v12 = v11;
          v13 = v58;
          v14 = &v55;
LABEL_16:
          sub_27590A460(v11, 1, v13, v14, 0);

          goto LABEL_57;
        }
      }

      sub_275912990();
LABEL_57:
      if (v5[1])
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v58[0] = v1;
        sub_2759B8628();
      }

      else
      {
        *v5 = 0;
        v5[1] = 0;
      }

      return;
    }

    v56 = v7;
    v57 = v6;
    v58[0] = 0x5F454741524F5453;
    v58[1] = 0xEF45444152475055;
    if (sub_2759BA7F8() & 1) != 0 || (v56 = v7, v57 = v6, strcpy(v58, "DEVICE_OFFERS"), HIWORD(v58[1]) = -4864, (sub_2759BA7F8()))
    {
      swift_getKeyPath();
      v56 = v0;
      sub_2759B8638();

      v19 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
      swift_beginAccess();
      v20 = *(v1 + v19);
      if (v20)
      {
        v21 = *(v20 + OBJC_IVAR___ICSHomeDataModel_upsellCard);
        if (v21)
        {
          v22 = v21;

          v12 = *&v22[OBJC_IVAR____TtC14iCloudSettings10UpsellCard_action];

          LOBYTE(v58[0]) = 7;
          v55 = 7;
          v13 = v58;
          v14 = &v55;
          v11 = v12;
          goto LABEL_16;
        }
      }

      LOBYTE(v58[0]) = 0;
      v23 = sub_275886718(v58);
      if (v23)
      {
        v24 = *&v23[OBJC_IVAR____TtC14iCloudSettings7Feature_action];
        v25 = v23;
        v26 = v24;

        if (v24)
        {

          LOBYTE(v58[0]) = 7;
          v55 = 7;
          sub_27590A460(v26, 1, v58, &v55, 0);

          goto LABEL_57;
        }
      }

      if (qword_2815ADD30 != -1)
      {
        swift_once();
      }

      v27 = sub_2759B89A8();
      __swift_project_value_buffer(v27, qword_2815ADE70);

      v28 = sub_2759B8988();
      v29 = sub_2759BA648();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v58[0] = v31;
        *v30 = 136315138;
        v32 = sub_2758937B8(v7, v6, v58);

        *(v30 + 4) = v32;
        v33 = "No upsell or manage plan action exist. Unable to handle url: %s";
LABEL_25:
        _os_log_impl(&dword_275819000, v28, v29, v33, v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x277C85860](v31, -1, -1);
        MEMORY[0x277C85860](v30, -1, -1);
LABEL_56:

        goto LABEL_57;
      }
    }

    else
    {
      v56 = v7;
      v57 = v6;
      strcpy(v58, "OPEN_STORAGE");
      BYTE5(v58[1]) = 0;
      HIWORD(v58[1]) = -5120;
      if (sub_2759BA7F8() & 1) != 0 || (v56 = v7, v57 = v6, strcpy(v58, "MANAGE_STORAGE"), HIBYTE(v58[1]) = -18, (sub_2759BA7F8()) || (v56 = v7, v57 = v6, v58[0] = 0xD000000000000012, v58[1] = 0x80000002759E1660, (sub_2759BA7F8()))
      {
        v34.value._countAndFlagsBits = v7;
        v34.value._object = v6;
        iCloudHomeViewModel.showManageStorageView(deeplinkPath:)(v34);

        goto LABEL_57;
      }

      v56 = v7;
      v57 = v6;
      v58[0] = 0xD000000000000010;
      v58[1] = 0x80000002759E1320;
      if (sub_2759BA7F8())
      {

        v35 = type metadata accessor for Action();
        v36 = objc_allocWithZone(v35);
        *&v36[OBJC_IVAR____TtC14iCloudSettings6Action__rawJsonObject] = sub_2758A2A88(MEMORY[0x277D84F90]);
        v37 = &v36[OBJC_IVAR____TtC14iCloudSettings6Action_type];
        *v37 = 0xD000000000000010;
        v37[1] = 0x80000002759DCC20;
        v38 = &v36[OBJC_IVAR____TtC14iCloudSettings6Action_title];
        *v38 = 0;
        v38[1] = 0;
        v39 = &v36[OBJC_IVAR____TtC14iCloudSettings6Action_urlString];
        *v39 = 0;
        v39[1] = 0;
        *&v36[OBJC_IVAR____TtC14iCloudSettings6Action_actionParameters] = 0;
        *&v36[OBJC_IVAR____TtC14iCloudSettings6Action_buyParameters] = 0;
        *&v36[OBJC_IVAR____TtC14iCloudSettings6Action_actionConfirmation] = 0;
        v36[OBJC_IVAR____TtC14iCloudSettings6Action_isDefault] = 0;
        v36[OBJC_IVAR____TtC14iCloudSettings6Action_isDestructive] = 0;
        v54.receiver = v36;
        v54.super_class = v35;
        v11 = objc_msgSendSuper2(&v54, sel_init);
        v12 = v11;
        LOBYTE(v56) = 7;
        LOBYTE(v58[0]) = 7;
        v13 = &v56;
        v14 = v58;
        goto LABEL_16;
      }

      v56 = v7;
      v57 = v6;
      strcpy(v58, "FAMILY_SHARING");
      HIBYTE(v58[1]) = -18;
      if (sub_2759BA7F8())
      {

        v6 = swift_getKeyPath();
        v56 = v0;
        sub_2759B8638();

        v40 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
        swift_beginAccess();
        v41 = *(v1 + v40);
        if (v41)
        {
          v42 = *(v41 + OBJC_IVAR___ICSHomeDataModel_icloudPlusCard);
          if (v42)
          {
            v43 = *(v42 + OBJC_IVAR____TtC14iCloudSettings14iCloudPlusCard_features);
            if (v43 >> 62)
            {
              v44 = sub_2759BA9E8();
            }

            else
            {
              v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v44)
            {
              v7 = 0;
              while (1)
              {
                if ((v43 & 0xC000000000000001) != 0)
                {
                  v45 = MEMORY[0x277C846A0](v7, v43);
                }

                else
                {
                  if (v7 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_65;
                  }

                  v45 = *(v43 + 8 * v7 + 32);
                }

                v46 = v45;
                v6 = (v7 + 1);
                if (__OFADD__(v7, 1))
                {
                  __break(1u);
LABEL_65:
                  __break(1u);
                  goto LABEL_66;
                }

                v47 = *&v45[OBJC_IVAR____TtC14iCloudSettings7Feature_featureId + 8];
                if (v47)
                {
                  v48 = *&v45[OBJC_IVAR____TtC14iCloudSettings7Feature_featureId] == 0x535F594C494D4146 && v47 == 0xEE00474E49524148;
                  if (v48 || (sub_2759BAAC8() & 1) != 0)
                  {
                    break;
                  }
                }

                ++v7;
                if (v6 == v44)
                {
                  goto LABEL_60;
                }
              }

              v52 = *&v46[OBJC_IVAR____TtC14iCloudSettings7Feature_action];
              if (v52)
              {
                LOBYTE(v58[0]) = 7;
                v55 = 1;
                v53 = v52;
                sub_27590A460(v53, 1, v58, &v55, 0);
              }

              else
              {
              }
            }

            else
            {
LABEL_60:
            }
          }
        }

        goto LABEL_57;
      }

      if (qword_2815ADD30 != -1)
      {
LABEL_66:
        swift_once();
      }

      v49 = sub_2759B89A8();
      __swift_project_value_buffer(v49, qword_2815ADE70);

      v28 = sub_2759B8988();
      v29 = sub_2759BA648();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v56 = v31;
        *v30 = 136315138;
        v50 = sub_2758937B8(v7, v6, &v56);

        *(v30 + 4) = v50;
        v33 = "Failed to handle deeplink w/ urlString: %s";
        goto LABEL_25;
      }
    }

    goto LABEL_56;
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v15 = sub_2759B89A8();
  __swift_project_value_buffer(v15, qword_2815ADE70);
  v16 = sub_2759B8988();
  v17 = sub_2759BA668();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_275819000, v16, v17, "No delayed deeplink url exist.", v18, 2u);
    MEMORY[0x277C85860](v18, -1, -1);
  }
}

double sub_27590C4A0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v45 = a4;
  v46 = a5;
  v43 = a3;
  v44 = a1;
  v42[3] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EFB0, &qword_2759C3128);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v42 - v8;
  v10 = sub_2759B87B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v49 = v5;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v14 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__appendSettingsNavigationPath;
  swift_beginAccess();
  sub_27586FBC8(v6 + v14, v9, &qword_280A0EFB0, &qword_2759C3128);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_27586BF04(v9, &qword_280A0EFB0, &qword_2759C3128);
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v15 = sub_2759B89A8();
    __swift_project_value_buffer(v15, qword_2815ADE70);
    v16 = sub_2759B8988();
    v17 = sub_2759BA648();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_275819000, v16, v17, "Push View Controller called, no Append Action Set.", v18, 2u);
      MEMORY[0x277C85860](v18, -1, -1);
    }

    v19 = v45;
    v20 = v46;
    v21 = 0;
LABEL_7:
    sub_2759524E8(v19, v20, v21, sub_27594A594);
    return result;
  }

  (*(v11 + 32))(v13, v9, v10);
  v48 = &unk_2884A6950;
  v23 = 1;
  v24 = v44;
  v25 = swift_dynamicCastObjCProtocolConditional();
  v26 = v13;
  if (v25)
  {
    v27 = v25;
    v47 = 0;
    v28 = v24;
    v29 = sub_2759B8DF8();
    MEMORY[0x28223BE20](v29);
    v30 = v43;
    *&v42[-8] = v27;
    *&v42[-6] = v30;
    *&v42[-4] = v26;
    sub_2759B90C8();

    v31 = v46;
  }

  else
  {
    objc_opt_self();
    v32 = swift_dynamicCastObjCClass();
    swift_getKeyPath();
    if (v32)
    {
      v47 = v6;
      v33 = v24;
      sub_2759B8638();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        if (qword_2815ADD30 != -1)
        {
          swift_once();
        }

        v38 = sub_2759B89A8();
        __swift_project_value_buffer(v38, qword_2815ADE70);
        v39 = sub_2759B8988();
        v40 = sub_2759BA658();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_275819000, v39, v40, "No presenting controller when pushing view controller with AMSUIController type.", v41, 2u);
          MEMORY[0x277C85860](v41, -1, -1);
        }

        (*(v11 + 8))(v26, v10);
        v19 = v45;
        v20 = v46;
        v21 = 3;
        goto LABEL_7;
      }

      v35 = Strong;
      [Strong showController:v32 animate:1];

      v31 = v46;

      v23 = 2;
    }

    else
    {
      v47 = v6;
      sub_2759B8638();

      v36 = swift_unknownObjectWeakLoadStrong();
      if (v36)
      {
        v37 = v36;
        [v36 showController:v24 animate:1];

        v31 = v46;

        v23 = 4;
      }

      else
      {
        v31 = v46;

        v23 = 5;
      }
    }
  }

  (*(v11 + 8))(v26, v10);
  sub_2759524E8(v45, v31, v23, sub_27594A594);

  return result;
}

Swift::Void __swiftcall iCloudHomeViewModel.handleDeeplink(resourceDictionary:)(Swift::OpaquePointer resourceDictionary)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v113 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v113 - v8;
  v10 = sub_27591C39C(resourceDictionary._rawValue);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v14 = sub_2759B89A8();
    __swift_project_value_buffer(v14, qword_2815ADE70);

    v15 = sub_2759B8988();
    v16 = sub_2759BA668();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v120 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_2758937B8(v12, v13, &v120);
      _os_log_impl(&dword_275819000, v15, v16, "AMS URL found, launching AMS flow. %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x277C85860](v18, -1, -1);
      MEMORY[0x277C85860](v17, -1, -1);
    }

    swift_getKeyPath();
    v120 = v2;
    sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
    sub_2759B8638();

    v19 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
    swift_beginAccess();
    if (*&v2[v19])
    {
      sub_27590E0CC(v12, v13);
    }

    else
    {
      sub_27587C898(v12, v13);
    }

    return;
  }

  v118 = 1752457584;
  v119 = 0xE400000000000000;
  sub_2759BA878();
  if (!*(resourceDictionary._rawValue + 2) || (v20 = sub_2758A24F8(&v120), (v21 & 1) == 0))
  {
    sub_275864C40(&v120);
    goto LABEL_18;
  }

  sub_275864C94(*(resourceDictionary._rawValue + 7) + 32 * v20, v122);
  sub_275864C40(&v120);
  v22 = swift_dynamicCast();
  if ((v22 & 1) == 0)
  {
LABEL_18:
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v32 = sub_2759B89A8();
    __swift_project_value_buffer(v32, qword_2815ADE70);
    v33 = sub_2759B8988();
    v34 = sub_2759BA648();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_23;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_275819000, v33, v34, "No valid path found to handle. Bailing.", v35, 2u);
    goto LABEL_22;
  }

  v26 = v118;
  v25 = v119;
  v120 = v118;
  v121 = v119;
  v122[0] = 0xD000000000000013;
  v122[1] = 0x80000002759E0F10;
  v27 = sub_27589F2D4(v22, v23, v24);
  if (sub_2759BA7F8())
  {
    v120 = v26;
    v121 = v25;
    v122[0] = 0xD00000000000001ALL;
    v122[1] = 0x80000002759E1360;
    if (sub_2759BA7F8() & 1) != 0 || (v120 = v26, v121 = v25, v122[0] = 0xD00000000000001FLL, v122[1] = 0x80000002759E1380, (sub_2759BA7F8()))
    {
      v28 = MEMORY[0x277CB8960];
LABEL_15:
      v29 = *v28;
      sub_2759B84F8();
      v30 = sub_2759B8508();
      v31 = *(v30 - 8);
      if ((*(v31 + 48))(v9, 1, v30) == 1)
      {
        sub_27586BF04(v9, &unk_280A0EB10, &qword_2759C0740);
      }

      else
      {
        v26 = sub_2759B84A8();
        v46 = v45;
        (*(v31 + 8))(v9, v30);

        v25 = v46;
      }

      v47 = sub_2759BA518();
      (*(*(v47 - 8) + 56))(v6, 1, 1, v47);
      sub_2759BA4C8();
      v48 = v2;
      v49 = v29;
      v50 = sub_2759BA4B8();
      v51 = swift_allocObject();
      v52 = MEMORY[0x277D85700];
      v51[2] = v50;
      v51[3] = v52;
      v51[4] = v48;
      v51[5] = v49;
      v51[6] = v26;
      v51[7] = v25;
      sub_27587D460(0, 0, v6, &unk_2759C8D10, v51);

      return;
    }

    v120 = v26;
    v121 = v25;
    v122[0] = 0xD00000000000001CLL;
    v122[1] = 0x80000002759E13A0;
    if (sub_2759BA7F8())
    {
      v28 = MEMORY[0x277CB8A58];
      goto LABEL_15;
    }

    v120 = v26;
    v121 = v25;
    v122[0] = 0xD000000000000018;
    v122[1] = 0x80000002759E13C0;
    if (sub_2759BA7F8())
    {
      v28 = MEMORY[0x277CB89C8];
      goto LABEL_15;
    }

    v120 = v26;
    v121 = v25;
    v122[0] = 0xD000000000000020;
    v122[1] = 0x80000002759E13E0;
    if (sub_2759BA7F8())
    {
      v28 = MEMORY[0x277CB89C0];
      goto LABEL_15;
    }

    v120 = v26;
    v121 = v25;
    v122[0] = 0xD000000000000019;
    v122[1] = 0x80000002759E1410;
    if (sub_2759BA7F8())
    {
      v28 = MEMORY[0x277CB89F8];
      goto LABEL_15;
    }

    v120 = v26;
    v121 = v25;
    v122[0] = 0xD00000000000001CLL;
    v122[1] = 0x80000002759E1430;
    if (sub_2759BA7F8())
    {
      v28 = MEMORY[0x277CB89D8];
      goto LABEL_15;
    }

    v120 = v26;
    v121 = v25;
    v122[0] = 0xD00000000000001ALL;
    v122[1] = 0x80000002759E1450;
    if (sub_2759BA7F8())
    {

      [v1 showBackupViewWithResourceDictionary_];
      return;
    }

    v90 = *&v1[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_accountManager];
    v91 = [v90 accounts];
    if (v91)
    {
      v92 = v91;
      type metadata accessor for AIDAServiceType(0);
      sub_275861AF8(0, &unk_280A103F0, 0x277CB8F30);
      sub_27591EFC0(&qword_280A0E500, type metadata accessor for AIDAServiceType, &unk_2759C06F0);
      v93 = sub_2759BA1D8();

      if (*(v93 + 16))
      {
        v94 = sub_2758A342C();
        if (v95)
        {
          v96 = *(*(v93 + 56) + 8 * v94);

LABEL_79:
          if (qword_2815ADD30 != -1)
          {
            swift_once();
          }

          v99 = sub_2759B89A8();
          __swift_project_value_buffer(v99, qword_2815ADE70);
          v100 = sub_2759B8988();
          v101 = sub_2759BA668();
          if (os_log_type_enabled(v100, v101))
          {
            v102 = swift_slowAlloc();
            *v102 = 0;
            _os_log_impl(&dword_275819000, v100, v101, "Pushing show all view.", v102, 2u);
            MEMORY[0x277C85860](v102, -1, -1);
          }

          v103 = objc_opt_self();
          v104 = objc_allocWithZone(type metadata accessor for ManageStorageAppsListViewModel(0));
          v105 = v96;
          v106 = v2;
          v107 = sub_2758A5B3C(v105, v106, 0);
          v108 = [v103 makeAppListViewControllerWithAccountManager:v90 homeViewModel:v106 manageStorageAppsListViewModel:v107];

          v109 = v108;
          sub_27590C4A0(v109, 1, resourceDictionary._rawValue, 0xD000000000000023, 0x80000002759E1470);

          return;
        }
      }

      v97 = [objc_opt_self() defaultStore];
      if (v97)
      {
        v98 = v97;

        v96 = [v98 aa_primaryAppleAccount];

        if (v96)
        {
          goto LABEL_79;
        }

        if (qword_2815ADD30 != -1)
        {
          swift_once();
        }

        v110 = sub_2759B89A8();
        __swift_project_value_buffer(v110, qword_2815ADE70);
        v33 = sub_2759B8988();
        v111 = sub_2759BA648();
        if (!os_log_type_enabled(v33, v111))
        {
LABEL_23:

          return;
        }

        v35 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v120 = v112;
        *v35 = 136315138;
        *(v35 + 4) = sub_2758937B8(0xD000000000000023, 0x80000002759E1470, &v120);
        _os_log_impl(&dword_275819000, v33, v111, "Unable to find account, bailing %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v112);
        MEMORY[0x277C85860](v112, -1, -1);
LABEL_22:
        MEMORY[0x277C85860](v35, -1, -1);
        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v113 = v27;
  v36 = v26;
  v37 = v25;
  v38 = sub_2759BA258();
  v39 = [v38 lastPathComponent];

  v40 = sub_2759BA298();
  v42 = v41;

  if (v40 == 0x50554B434142 && v42 == 0xE600000000000000)
  {

LABEL_30:

    v44 = sub_2759BA1C8();
    [v2 showBackupViewWithResourceDictionary_];

    return;
  }

  v43 = sub_2759BAAC8();

  if (v43)
  {
    goto LABEL_30;
  }

  v120 = v36;
  v121 = v37;
  strcpy(v122, "LOCAL_BACKUP");
  BYTE5(v122[1]) = 0;
  HIWORD(v122[1]) = -5120;
  if (sub_2759BA7F8())
  {
    goto LABEL_30;
  }

  v120 = v36;
  v121 = v37;
  v122[0] = 0xD000000000000015;
  v122[1] = 0x80000002759E12E0;
  if (sub_2759BA7F8())
  {
    goto LABEL_30;
  }

  v120 = v36;
  v121 = v37;
  v122[0] = 0xD000000000000019;
  v122[1] = 0x80000002759E1300;
  if (sub_2759BA7F8())
  {

    v53 = sub_2759BA518();
    (*(*(v53 - 8) + 56))(v6, 1, 1, v53);
    sub_2759BA4C8();
    v54 = v2;
    v55 = sub_2759BA4B8();
    v56 = swift_allocObject();
    v57 = MEMORY[0x277D85700];
    v56[2] = v55;
    v56[3] = v57;
    v56[4] = v54;
    sub_27590A1B4(0, 0, v6, &unk_2759C8D00, v56, MEMORY[0x277D84F78] + 8);

    return;
  }

  v120 = v36;
  v121 = v37;
  v122[0] = 0xD000000000000010;
  v122[1] = 0x80000002759E1320;
  if (sub_2759BA7F8())
  {
    v58 = type metadata accessor for Action();
    v59 = objc_allocWithZone(v58);
    *&v59[OBJC_IVAR____TtC14iCloudSettings6Action__rawJsonObject] = sub_2758A2A88(MEMORY[0x277D84F90]);
    v60 = &v59[OBJC_IVAR____TtC14iCloudSettings6Action_type];
    *v60 = 0xD000000000000010;
    v60[1] = 0x80000002759DCC20;
    v61 = &v59[OBJC_IVAR____TtC14iCloudSettings6Action_title];
    *v61 = 0;
    v61[1] = 0;
    v62 = &v59[OBJC_IVAR____TtC14iCloudSettings6Action_urlString];
    *v62 = 0;
    v62[1] = 0;
    *&v59[OBJC_IVAR____TtC14iCloudSettings6Action_actionParameters] = 0;
    *&v59[OBJC_IVAR____TtC14iCloudSettings6Action_buyParameters] = 0;
    *&v59[OBJC_IVAR____TtC14iCloudSettings6Action_actionConfirmation] = 0;
    v59[OBJC_IVAR____TtC14iCloudSettings6Action_isDefault] = 0;
    v59[OBJC_IVAR____TtC14iCloudSettings6Action_isDestructive] = 0;
    v114.receiver = v59;
    v114.super_class = v58;
    v63 = objc_msgSendSuper2(&v114, sel_init);
LABEL_50:
    v69 = v63;
    goto LABEL_51;
  }

  v120 = v36;
  v121 = v37;
  strcpy(v122, "HIDE_MY_EMAIL");
  HIWORD(v122[1]) = -4864;
  if (sub_2759BA7F8() & 1) != 0 || (v120 = v36, v121 = v37, v122[0] = 0xD000000000000014, v122[1] = 0x80000002759E1340, (sub_2759BA7F8()))
  {
    v64 = type metadata accessor for Action();
    v65 = objc_allocWithZone(v64);
    *&v65[OBJC_IVAR____TtC14iCloudSettings6Action__rawJsonObject] = sub_2758A2A88(MEMORY[0x277D84F90]);
    v66 = &v65[OBJC_IVAR____TtC14iCloudSettings6Action_type];
    *v66 = 0x65646948776F6873;
    v66[1] = 0xEF6C69616D45794DLL;
    v67 = &v65[OBJC_IVAR____TtC14iCloudSettings6Action_title];
    *v67 = 0;
    v67[1] = 0;
    v68 = &v65[OBJC_IVAR____TtC14iCloudSettings6Action_urlString];
    *v68 = 0;
    v68[1] = 0;
    *&v65[OBJC_IVAR____TtC14iCloudSettings6Action_actionParameters] = 0;
    *&v65[OBJC_IVAR____TtC14iCloudSettings6Action_buyParameters] = 0;
    *&v65[OBJC_IVAR____TtC14iCloudSettings6Action_actionConfirmation] = 0;
    v65[OBJC_IVAR____TtC14iCloudSettings6Action_isDefault] = 0;
    v65[OBJC_IVAR____TtC14iCloudSettings6Action_isDestructive] = 0;
    v115.receiver = v65;
    v115.super_class = v64;
    v63 = objc_msgSendSuper2(&v115, sel_init);
    goto LABEL_50;
  }

  v120 = v36;
  v121 = v37;
  v122[0] = 0xD000000000000013;
  v122[1] = 0x80000002759DCD20;
  if (sub_2759BA7F8())
  {
    v85 = type metadata accessor for Action();
    v86 = objc_allocWithZone(v85);
    *&v86[OBJC_IVAR____TtC14iCloudSettings6Action__rawJsonObject] = sub_2758A2A88(MEMORY[0x277D84F90]);
    v87 = &v86[OBJC_IVAR____TtC14iCloudSettings6Action_type];
    *v87 = 0xD000000000000015;
    v87[1] = 0x80000002759DCC50;
    v88 = &v86[OBJC_IVAR____TtC14iCloudSettings6Action_title];
    *v88 = 0;
    v88[1] = 0;
    v89 = &v86[OBJC_IVAR____TtC14iCloudSettings6Action_urlString];
    *v89 = 0;
    v89[1] = 0;
    *&v86[OBJC_IVAR____TtC14iCloudSettings6Action_actionParameters] = 0;
    *&v86[OBJC_IVAR____TtC14iCloudSettings6Action_buyParameters] = 0;
    *&v86[OBJC_IVAR____TtC14iCloudSettings6Action_actionConfirmation] = 0;
    v86[OBJC_IVAR____TtC14iCloudSettings6Action_isDefault] = 0;
    v86[OBJC_IVAR____TtC14iCloudSettings6Action_isDestructive] = 0;
    v116.receiver = v86;
    v116.super_class = v85;
    v63 = objc_msgSendSuper2(&v116, sel_init);
    goto LABEL_50;
  }

  sub_27587C744(v36, v37);
  v69 = 0;
LABEL_51:
  v120 = v36;
  v121 = v37;
  strcpy(v122, "premiumApp");
  BYTE3(v122[1]) = 0;
  HIDWORD(v122[1]) = -369098752;
  v70 = sub_2759BA7F8();

  if (v70)
  {
    v71 = type metadata accessor for Action();
    v72 = objc_allocWithZone(v71);
    *&v72[OBJC_IVAR____TtC14iCloudSettings6Action__rawJsonObject] = sub_2758A2A88(MEMORY[0x277D84F90]);
    v73 = &v72[OBJC_IVAR____TtC14iCloudSettings6Action_type];
    strcpy(&v72[OBJC_IVAR____TtC14iCloudSettings6Action_type], "showPremiumApp");
    v73[15] = -18;
    v74 = &v72[OBJC_IVAR____TtC14iCloudSettings6Action_title];
    *v74 = 0;
    *(v74 + 1) = 0;
    v75 = &v72[OBJC_IVAR____TtC14iCloudSettings6Action_urlString];
    *v75 = 0;
    *(v75 + 1) = 0;
    *&v72[OBJC_IVAR____TtC14iCloudSettings6Action_actionParameters] = 0;
    *&v72[OBJC_IVAR____TtC14iCloudSettings6Action_buyParameters] = 0;
    *&v72[OBJC_IVAR____TtC14iCloudSettings6Action_actionConfirmation] = 0;
    v72[OBJC_IVAR____TtC14iCloudSettings6Action_isDefault] = 0;
    v72[OBJC_IVAR____TtC14iCloudSettings6Action_isDestructive] = 0;
    v117.receiver = v72;
    v117.super_class = v71;
    v76 = objc_msgSendSuper2(&v117, sel_init);

    v77 = &v2[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__delayedDeeplinkURLString];
    if (*&v2[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__delayedDeeplinkURLString + 8])
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v113 - 3) = 0;
      *(&v113 - 2) = 0;
      *(&v113 - 4) = v2;
      v120 = v2;
      sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
      sub_2759B8628();
    }

    else
    {
      *v77 = 0;
      *(v77 + 1) = 0;
    }

    goto LABEL_61;
  }

  if (v69)
  {
    v76 = v69;
LABEL_61:
    v79 = v76;
    LOBYTE(v120) = 7;
    LOBYTE(v122[0]) = 7;
    sub_27590A460(v79, 1, &v120, v122, resourceDictionary._rawValue);

    goto LABEL_62;
  }

  v79 = 0;
LABEL_62:
  swift_getKeyPath();
  v120 = v2;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  if (*&v2[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__delayedDeeplinkURLString + 8])
  {
    swift_getKeyPath();
    v120 = v2;
    sub_2759B8638();

    v80 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
    swift_beginAccess();
    if (*&v2[v80])
    {
      if (qword_2815ADD30 != -1)
      {
        swift_once();
      }

      v81 = sub_2759B89A8();
      __swift_project_value_buffer(v81, qword_2815ADE70);
      v82 = sub_2759B8988();
      v83 = sub_2759BA668();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&dword_275819000, v82, v83, "The data model exists, proceeding to handle delayed deeplink now.", v84, 2u);
        MEMORY[0x277C85860](v84, -1, -1);
      }

      sub_27590B968();
    }
  }
}

void sub_27590E0CC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v3 - 8);
  v67 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v60 - v6;
  v8 = sub_2759B8508();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v66 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v68 = (&v60 - v12);
  if (qword_2815ADD40 != -1)
  {
    swift_once();
  }

  v13 = qword_2815ADE88;
  v14 = OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_unfairLock;
  os_unfair_lock_lock(*(qword_2815ADE88 + OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_unfairLock));
  v15 = *(v13 + OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_preLaunchActionHasExecuted);
  os_unfair_lock_unlock(*(v13 + v14));
  if (v15 == 1)
  {
    sub_2759B84F8();
    v16 = v9;
    v17 = v8;
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_27586BF04(v7, &unk_280A0EB10, &qword_2759C0740);
      if (qword_280A0E358 != -1)
      {
        swift_once();
      }

      v18 = sub_2759B89A8();
      __swift_project_value_buffer(v18, qword_280A238E8);
      v19 = sub_2759B8988();
      v20 = sub_2759BA648();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v69 = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_2758937B8(0xD00000000000001DLL, 0x80000002759E15D0, &v69);
        _os_log_impl(&dword_275819000, v19, v20, "Unable to find deeplinkURL %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v22);
        MEMORY[0x277C85860](v22, -1, -1);
        MEMORY[0x277C85860](v21, -1, -1);
      }
    }

    else
    {
      v27 = *(v9 + 32);
      v27(v68, v7, v8);
      v28 = v2;
      v29 = sub_27587C10C();
      if (v29)
      {
        v30 = v29;
        v64 = v27;
        v65 = v16 + 32;
        v31 = sub_2759BA258();
        v32 = sub_2759BA258();
        v33 = objc_opt_self();
        v63 = [v33 bagForProfile:v31 profileVersion:v32];

        swift_getKeyPath();
        v69 = v28;
        v62 = sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
        sub_2759B8638();

        v34 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__commerceFlowManager;
        if (!*&v28[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__commerceFlowManager])
        {
          v61 = v30;
          v35 = sub_2759BA258();
          v36 = sub_2759BA258();
          v37 = [v33 bagForProfile:v35 profileVersion:v36];

          v38 = objc_allocWithZone(type metadata accessor for CommerceFlowManager());
          v39 = v61;
          v40 = sub_2758F1AA8(v61, v37);

          sub_275879900(v40);
          swift_getKeyPath();
          v69 = v28;
          sub_2759B8638();

          v41 = *&v28[v34];
          if (v41)
          {
            *(v41 + OBJC_IVAR____TtC14iCloudSettings19CommerceFlowManager_flowCompletionDelegate + 8) = &off_2884834E0;
            swift_unknownObjectWeakAssign();
          }
        }

        v42 = sub_2759BA518();
        v43 = v67;
        (*(*(v42 - 8) + 56))(v67, 1, 1, v42);
        v44 = v66;
        v45 = v68;
        (*(v16 + 16))(v66, v68, v17);
        sub_2759BA4C8();
        v46 = v30;
        v47 = v17;
        v48 = v28;
        v49 = sub_2759BA4B8();
        v50 = v16;
        v51 = (*(v16 + 80) + 40) & ~*(v16 + 80);
        v52 = swift_allocObject();
        v53 = MEMORY[0x277D85700];
        *(v52 + 2) = v49;
        *(v52 + 3) = v53;
        *(v52 + 4) = v48;
        v64(&v52[v51], v44, v47);
        sub_27587D460(0, 0, v43, &unk_2759C8E70, v52);

        (*(v50 + 8))(v45, v47);
      }

      else
      {
        if (qword_280A0E358 != -1)
        {
          swift_once();
        }

        v54 = sub_2759B89A8();
        __swift_project_value_buffer(v54, qword_280A238E8);
        v55 = sub_2759B8988();
        v56 = sub_2759BA648();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = v8;
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v69 = v59;
          *v58 = 136315138;
          *(v58 + 4) = sub_2758937B8(0xD00000000000001DLL, 0x80000002759E15D0, &v69);
          _os_log_impl(&dword_275819000, v55, v56, "Unable to find account, bailing %s", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v59);
          MEMORY[0x277C85860](v59, -1, -1);
          MEMORY[0x277C85860](v58, -1, -1);

          (*(v16 + 8))(v68, v57);
        }

        else
        {

          (*(v16 + 8))(v68, v8);
        }
      }
    }
  }

  else
  {
    if (qword_280A0E358 != -1)
    {
      swift_once();
    }

    v23 = sub_2759B89A8();
    __swift_project_value_buffer(v23, qword_280A238E8);
    v68 = sub_2759B8988();
    v24 = sub_2759BA648();
    if (os_log_type_enabled(v68, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_275819000, v68, v24, "NDM should take priority aborting AMS Deeplink.", v25, 2u);
      MEMORY[0x277C85860](v25, -1, -1);
    }

    v26 = v68;
  }
}

uint64_t sub_27590E9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  sub_2759BA4C8();
  v4[23] = sub_2759BA4B8();
  v6 = sub_2759BA468();
  v4[24] = v6;
  v4[25] = v5;

  return MEMORY[0x2822009F8](sub_27590EA40, v6, v5);
}

uint64_t sub_27590EA40()
{
  v40 = v0;
  v1 = v0[22];
  swift_getKeyPath();
  v0[10] = v1;
  v0[26] = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel___observationRegistrar;
  v0[27] = sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v0[28] = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__navigationController;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[29] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_27587C10C();
    v0[30] = v4;
    if (v4)
    {
      v5 = v4;
      v6 = v0[22];
      swift_getKeyPath();
      v0[10] = v6;
      sub_2759B8638();

      v7 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataclassValidationController;
      if (!*(v6 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataclassValidationController))
      {
        sub_27587A118([objc_allocWithZone(ICSDataclassValidationController) initWithAccount:v5 presentingViewController:v3]);
      }

      v8 = v0[22];
      swift_getKeyPath();
      v0[10] = v8;
      sub_2759B8638();

      v9 = *(v6 + v7);
      v0[31] = v9;
      if (v9)
      {
        v10 = v0[19];
        v0[2] = v0;
        v0[7] = v0 + 18;
        v0[3] = sub_27590F03C;
        v11 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10D50, &qword_2759C8DA8);
        v0[10] = MEMORY[0x277D85DD0];
        v0[11] = 1107296256;
        v0[12] = sub_27590F81C;
        v0[13] = &block_descriptor_7;
        v0[14] = v11;
        [v9 validateAccessForDataclass:v10 completion:v0 + 10];

        return MEMORY[0x282200938](v0 + 2);
      }

      if (qword_2815ADD30 != -1)
      {
        swift_once();
      }

      v31 = sub_2759B89A8();
      __swift_project_value_buffer(v31, qword_2815ADE70);
      v15 = sub_2759B8988();
      v32 = sub_2759BA648();
      v33 = os_log_type_enabled(v15, v32);
      v35 = v0[29];
      v34 = v0[30];
      if (!v33)
      {

        goto LABEL_23;
      }

      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_275819000, v15, v32, "Dataclass validation failed. Can't push the dataclass drill down view.", v36, 2u);
      MEMORY[0x277C85860](v36, -1, -1);
    }

    else
    {

      if (qword_2815ADD30 != -1)
      {
        swift_once();
      }

      v22 = v0[19];
      v23 = sub_2759B89A8();
      __swift_project_value_buffer(v23, qword_2815ADE70);
      v24 = v22;
      v15 = sub_2759B8988();
      v25 = sub_2759BA648();

      if (os_log_type_enabled(v15, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v39 = v27;
        *v26 = 136315138;
        v28 = sub_2759BA298();
        v30 = sub_2758937B8(v28, v29, &v39);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_275819000, v15, v25, "No iCloud account found. Failed to handle action for dataclass [%s].", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v27);
        MEMORY[0x277C85860](v27, -1, -1);
        MEMORY[0x277C85860](v26, -1, -1);
      }
    }
  }

  else
  {

    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v12 = v0[19];
    v13 = sub_2759B89A8();
    __swift_project_value_buffer(v13, qword_2815ADE70);
    v14 = v12;
    v15 = sub_2759B8988();
    v16 = sub_2759BA648();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v39 = v18;
      *v17 = 136315138;
      v19 = sub_2759BA298();
      v21 = sub_2758937B8(v19, v20, &v39);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_275819000, v15, v16, "Can not show view for dataclass [%s] w/o a presenter.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x277C85860](v18, -1, -1);
      MEMORY[0x277C85860](v17, -1, -1);
    }
  }

LABEL_23:
  v37 = v0[1];

  return v37();
}

uint64_t sub_27590F03C()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return MEMORY[0x2822009F8](sub_27590F144, v2, v1);
}

void *sub_27590F144()
{
  v60 = v0;
  v1 = *(v0 + 144);

  if ((v1 & 1) == 0)
  {

    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v12 = sub_2759B89A8();
    __swift_project_value_buffer(v12, qword_2815ADE70);
    v7 = sub_2759B8988();
    v13 = sub_2759BA648();
    v14 = os_log_type_enabled(v7, v13);
    v16 = *(v0 + 232);
    v15 = *(v0 + 240);
    if (v14)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_275819000, v7, v13, "Dataclass validation failed. Can't push the dataclass drill down view.", v17, 2u);
      MEMORY[0x277C85860](v17, -1, -1);
    }

    else
    {

      v7 = v15;
    }

    goto LABEL_42;
  }

  if (qword_2815ADD30 != -1)
  {
LABEL_48:
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_2815ADE70);
  v3 = sub_2759B8988();
  v4 = sub_2759BA668();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_275819000, v3, v4, "Dataclass validation succeeded.", v5, 2u);
    MEMORY[0x277C85860](v5, -1, -1);
  }

  v6 = *(v0 + 152);

  if (sub_27591D730(v6))
  {
    v7 = *(v0 + 232);
    v8 = *(v0 + 240);
    v10 = *(v0 + 160);
    v9 = *(v0 + 168);
    v11 = *(v0 + 152);

    sub_27590F878(v11, v10, v9);

LABEL_42:
    v58 = *(v0 + 8);

    return v58();
  }

  v18 = *(v0 + 152);
  v19 = sub_2759B8988();
  v20 = sub_2759BA668();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v59 = v22;
    *v21 = 136315138;
    v23 = sub_2759BA298();
    v25 = sub_2758937B8(v23, v24, &v59);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_275819000, v19, v20, "App is not installed for dataclass: %s. Launching flow to present app download sheet.", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x277C85860](v22, -1, -1);
    MEMORY[0x277C85860](v21, -1, -1);
  }

  v26 = *(v0 + 176);
  swift_getKeyPath();
  *(v0 + 80) = v26;
  sub_2759B8638();

  v27 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v28 = *(v26 + v27);
  if (!v28)
  {
LABEL_38:
    v49 = *(v0 + 152);

    v50 = v49;
    v51 = sub_2759B8988();
    v52 = sub_2759BA648();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v59 = v54;
      *v53 = 136315138;
      v55 = sub_2759BA298();
      v57 = sub_2758937B8(v55, v56, &v59);

      *(v53 + 4) = v57;
      _os_log_impl(&dword_275819000, v51, v52, "No iTunes item ID found for dataclass: %s. Still proceeding to show drill down as a fallback.", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x277C85860](v54, -1, -1);
      MEMORY[0x277C85860](v53, -1, -1);
    }

    v7 = *(v0 + 232);
    v33 = *(v0 + 240);
    sub_27590F878(*(v0 + 152), *(v0 + 160), *(v0 + 168));
LABEL_41:

    goto LABEL_42;
  }

  v29 = *(*(v28 + OBJC_IVAR___ICSHomeDataModel_icloudAppsCard) + OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_apps);
  if (v29 >> 62)
  {
    v30 = sub_2759BA9E8();
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v30)
  {
LABEL_31:

    goto LABEL_38;
  }

  v31 = 0;
  while (1)
  {
    if ((v29 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x277C846A0](v31, v29);
    }

    else
    {
      if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v32 = *(v29 + 8 * v31 + 32);
    }

    v33 = v32;
    v34 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v35 = *&v32[OBJC_IVAR____TtC14iCloudSettings9iCloudApp_dataclass];
    v36 = *&v32[OBJC_IVAR____TtC14iCloudSettings9iCloudApp_dataclass + 8];
    if (v35 == sub_2759BA298() && v36 == v37)
    {
      break;
    }

    v39 = sub_2759BAAC8();

    if (v39)
    {
      goto LABEL_33;
    }

    ++v31;
    if (v34 == v30)
    {
      goto LABEL_31;
    }
  }

LABEL_33:

  v40 = *&v33[OBJC_IVAR____TtC14iCloudSettings9iCloudApp_iTunesItemId + 8];
  if (!v40)
  {

    goto LABEL_38;
  }

  v41 = *&v33[OBJC_IVAR____TtC14iCloudSettings9iCloudApp_iTunesItemId];

  v42 = sub_27587A858();
  if (!v42)
  {
    v7 = *(v0 + 240);

    goto LABEL_41;
  }

  v7 = v42;
  v43 = *(v0 + 176);
  swift_getKeyPath();
  *(v0 + 144) = v43;
  sub_2759B8638();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = result;
    v47 = *(v0 + 232);
    v46 = *(v0 + 240);

    v48 = [v45 topMostViewController];

    sub_275956A84(v41, v40, v48);

    goto LABEL_42;
  }

  __break(1u);
  return result;
}

uint64_t sub_27590F81C(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x282200948](v3);
}

void sub_27590F878(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_2815ADE70);
  v7 = a1;
  v8 = sub_2759B8988();
  v9 = sub_2759BA668();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v71 = v11;
    *v10 = 136315138;
    v12 = sub_2759BA298();
    v14 = sub_2758937B8(v12, v13, &v71);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_275819000, v8, v9, "Showing view for dataclass: %s.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x277C85860](v11, -1, -1);
    MEMORY[0x277C85860](v10, -1, -1);
  }

  v15 = sub_2759BA298();
  v17 = v16;
  if (v15 == sub_2759BA298() && v17 == v18)
  {
    goto LABEL_12;
  }

  v20 = sub_2759BAAC8();

  if (v20)
  {
LABEL_13:

    sub_27591023C();
    return;
  }

  v21 = sub_2759BA298();
  v23 = v22;
  if (v21 == sub_2759BA298() && v23 == v24)
  {
LABEL_12:

    goto LABEL_13;
  }

  v25 = sub_2759BAAC8();

  if (v25)
  {
    goto LABEL_13;
  }

  v26 = *MEMORY[0x277CB8A58];
  v27 = sub_2759BA298();
  v29 = v28;
  if (v27 == sub_2759BA298() && v29 == v30)
  {

LABEL_21:
    v32 = [objc_opt_self() buildViewControllerWithAccountManager:*(v3 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_accountManager) dataclass:v26];
    osloga = v32;
    v33 = 0xD000000000000015;
    v34 = 0x80000002759E1500;
LABEL_22:
    sub_27590C4A0(v32, 1, 0, v33, v34);
LABEL_23:

    return;
  }

  v31 = sub_2759BAAC8();

  if (v31)
  {
    goto LABEL_21;
  }

  v35 = *MEMORY[0x277CB89C0];
  v36 = sub_2759BA298();
  v38 = v37;
  if (v36 == sub_2759BA298() && v38 == v39)
  {

LABEL_30:
    v32 = [objc_opt_self() buildViewControllerWithAccountManager:*(v3 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_accountManager) dataclass:v35];
    osloga = v32;
    v34 = 0x80000002759E14E0;
    v33 = 0xD000000000000012;
    goto LABEL_22;
  }

  v40 = sub_2759BAAC8();

  if (v40)
  {
    goto LABEL_30;
  }

  v41 = *MEMORY[0x277CB89F8];
  v42 = sub_2759BA298();
  v44 = v43;
  if (v42 == sub_2759BA298() && v44 == v45)
  {

LABEL_35:
    v32 = [objc_opt_self() buildViewControllerWithAccountManager:*(v3 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_accountManager) dataclass:v41];
    osloga = v32;
    v33 = 0x65746F4E776F6873;
    v34 = 0xEF29287765695673;
    goto LABEL_22;
  }

  v46 = sub_2759BAAC8();

  if (v46)
  {
    goto LABEL_35;
  }

  v47 = sub_2759BA298();
  v49 = v48;
  if (v47 != sub_2759BA298() || v49 != v50)
  {
    v51 = sub_2759BAAC8();

    if (v51)
    {
      goto LABEL_40;
    }

    v52 = sub_2759BA298();
    v54 = v53;
    if (v52 == sub_2759BA298() && v54 == v55)
    {
    }

    else
    {
      v56 = sub_2759BAAC8();

      if ((v56 & 1) == 0)
      {
        v62 = v7;
        osloga = sub_2759B8988();
        v63 = sub_2759BA648();

        if (os_log_type_enabled(osloga, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v71 = v65;
          *v64 = 136315138;
          v66 = sub_2759BA298();
          v68 = sub_2758937B8(v66, v67, &v71);

          *(v64 + 4) = v68;
          _os_log_impl(&dword_275819000, osloga, v63, "Action for dataclass (%s) not supported.", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v65);
          MEMORY[0x277C85860](v65, -1, -1);
          MEMORY[0x277C85860](v64, -1, -1);

          return;
        }

        goto LABEL_23;
      }
    }

    sub_275910450();
    sub_27591058C();
    swift_getKeyPath();
    v71 = v3;
    sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
    sub_2759B8638();

    v57 = *(v3 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__mailSettingsProvider);
    if (v57)
    {
      v58 = v57;
      v59 = a2;
      sub_2759B8898();
      v60 = 0;
    }

    else
    {
      swift_getKeyPath();
      v71 = v3;
      sub_2759B8638();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        v60 = 2;
        v59 = a2;
        goto LABEL_52;
      }

      v58 = Strong;
      v60 = 1;
      v59 = a2;
    }

LABEL_52:

    sub_27595287C(v60, v59, a3, sub_27594A594);

    return;
  }

LABEL_40:

  sub_2759100E8();
}

void sub_2759100E8()
{
  v1 = v0;
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_2815ADE70);
  v3 = sub_2759B8988();
  v4 = sub_2759BA668();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    MEMORY[0x277C85860](v5, -1, -1);
  }

  v6 = [objc_opt_self() messagesCloudSettingsViewControllerWithAccountManager_];
  sub_27590C4A0(v6, 1, 0, 0xD000000000000012, 0x80000002759E1540);
}

void sub_27591023C()
{
  v0 = objc_opt_self();
  v1 = sub_2759BA258();
  v2 = sub_2759BA258();

  v3 = sub_2759BA258();
  v4 = NSClassFromString(v3);

  if (v4 && (swift_getObjCClassMetadata(), sub_275861AF8(0, &qword_280A0EF20, 0x277D75D28), swift_dynamicCastMetatype()))
  {
    oslog = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_27590C4A0(oslog, 1, 0, 0xD000000000000010, 0x80000002759E1520);
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v5 = sub_2759B89A8();
    __swift_project_value_buffer(v5, qword_2815ADE70);
    oslog = sub_2759B8988();
    v6 = sub_2759BA648();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      MEMORY[0x277C85860](v7, -1, -1);
    }
  }
}

void sub_275910450()
{
  swift_getKeyPath();
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  if (!*(v0 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__customEmailPresenter))
  {
    swift_getKeyPath();
    sub_2759B8638();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_275879710([objc_allocWithZone(ICSCustomEmailPresenter) initWithAccountManager:*(v0 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_accountManager) presenter:Strong]);
    }
  }
}

void sub_27591058C()
{
  v1 = v0;
  swift_getKeyPath();
  v13 = v0;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  if (!*(v0 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__mailSettingsProvider))
  {
    swift_getKeyPath();
    v13 = v0;
    sub_2759B8638();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_accountManager);
      objc_allocWithZone(sub_2759B88B8());
      v5 = v4;
      v6 = v3;
      v7 = sub_2759B88A8();
      sub_27587A2C4(v7);
    }

    else
    {
      if (qword_2815ADD30 != -1)
      {
        swift_once();
      }

      v8 = sub_2759B89A8();
      __swift_project_value_buffer(v8, qword_2815ADE70);
      v9 = sub_2759B8988();
      v10 = sub_2759BA648();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v13 = v12;
        *v11 = 136315138;
        *(v11 + 4) = sub_2758937B8(0xD000000000000017, 0x80000002759E1560, &v13);
        _os_log_impl(&dword_275819000, v9, v10, "%s missing presentingController, mail buttons may not work as expected", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x277C85860](v12, -1, -1);
        MEMORY[0x277C85860](v11, -1, -1);
      }
    }
  }
}

void sub_2759107E8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v40 - v5;
  if ([objc_opt_self() isCloudPrivateRelayAllowed])
  {
    swift_getKeyPath();
    v41[0] = v1;
    sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
    sub_2759B8638();

    v7 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
    swift_beginAccess();
    v8 = *(v1 + v7);
    if (v8)
    {
      if (*(*(v8 + OBJC_IVAR___ICSHomeDataModel_headerCard) + OBJC_IVAR____TtC14iCloudSettings10HeaderCard_isiCloudPlusSubscriber))
      {
LABEL_4:
        if (qword_2815ADD30 != -1)
        {
          swift_once();
        }

        v9 = sub_2759B89A8();
        __swift_project_value_buffer(v9, qword_2815ADE70);
        v10 = sub_2759B8988();
        v11 = sub_2759BA668();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&dword_275819000, v10, v11, "Showing private relay settings.", v12, 2u);
          MEMORY[0x277C85860](v12, -1, -1);
        }

        v13 = sub_2759BA518();
        (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
        sub_2759BA4C8();

        v14 = v2;
        v15 = sub_2759BA4B8();
        v16 = swift_allocObject();
        v17 = MEMORY[0x277D85700];
        v16[2] = v15;
        v16[3] = v17;
        v16[4] = v14;
        v16[5] = a1;
        sub_27587D460(0, 0, v6, &unk_2759C8FB0, v16);

        return;
      }
    }

    else if ([objc_opt_self() isCloudSubscriber])
    {
      goto LABEL_4;
    }

    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v22 = sub_2759B89A8();
    __swift_project_value_buffer(v22, qword_2815ADE70);
    v23 = sub_2759B8988();
    v24 = sub_2759BA668();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_275819000, v23, v24, "User is not a subscriber. showPrivateRelayView will show freshmint instead.", v25, 2u);
      MEMORY[0x277C85860](v25, -1, -1);
    }

    swift_getKeyPath();
    v41[0] = v2;
    sub_2759B8638();

    v26 = *&v2[v7];
    if (v26)
    {
      v27 = *(v26 + OBJC_IVAR___ICSHomeDataModel_upsellCard);
      if (v27)
      {
        v28 = *(v27 + OBJC_IVAR____TtC14iCloudSettings10UpsellCard_action);
        v29 = sub_2759BA518();
        (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
        sub_2759BA4C8();
        v30 = v28;
        v31 = v2;
        v32 = sub_2759BA4B8();
        v33 = swift_allocObject();
        v34 = MEMORY[0x277D85700];
        v33[2] = v32;
        v33[3] = v34;
        v33[4] = v31;
        v33[5] = v30;
        sub_27587D460(0, 0, v6, &unk_2759C8FA0, v33);

        return;
      }
    }

    if (a1)
    {
      v40[1] = 1752457584;
      v40[2] = 0xE400000000000000;
      sub_2759BA878();
      if (*(a1 + 16))
      {
        v35 = sub_2758A24F8(v41);
        if (v36)
        {
          sub_275864C94(*(a1 + 56) + 32 * v35, &v42);
          sub_275864C40(v41);
          if (*(&v43 + 1))
          {
            if (swift_dynamicCast())
            {
              sub_27587C744(v41[0], v41[1]);
              return;
            }

            goto LABEL_33;
          }

LABEL_32:
          sub_27586BF04(&v42, &qword_280A0ED70, &qword_2759C6C60);
LABEL_33:
          v37 = sub_2759B8988();
          v38 = sub_2759BA648();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            MEMORY[0x277C85860](v39, -1, -1);
          }

          return;
        }
      }

      sub_275864C40(v41);
    }

    v42 = 0u;
    v43 = 0u;
    goto LABEL_32;
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v18 = sub_2759B89A8();
  __swift_project_value_buffer(v18, qword_2815ADE70);
  v40[0] = sub_2759B8988();
  v19 = sub_2759BA648();
  if (os_log_type_enabled(v40[0], v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_275819000, v40[0], v19, "Private Relay is restricted by profile. Skipping showPrivateRelayView action.", v20, 2u);
    MEMORY[0x277C85860](v20, -1, -1);
  }

  v21 = v40[0];
}

void sub_275910ECC()
{
  v1 = v0;
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_2815ADE70);
  v3 = sub_2759B8988();
  v4 = sub_2759BA668();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_275819000, v3, v4, "Showing HME view.", v5, 2u);
    MEMORY[0x277C85860](v5, -1, -1);
  }

  sub_275879564([objc_allocWithZone(ICSHMEPresenter) initWithAccountManager_]);
  swift_getKeyPath();
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v6 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__hmePresenter;
  v7 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__hmePresenter);
  if (v7)
  {
    [v7 setDelegate_];
  }

  swift_getKeyPath();
  sub_2759B8638();

  v8 = *(v1 + v6);
  if (v8)
  {
    swift_getKeyPath();
    v9 = v8;
    sub_2759B8638();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      [v9 showHMEWithPresenter_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_275911124()
{
  v1 = v0;
  swift_getKeyPath();
  aBlock[0] = v0;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v2 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (!v3)
  {
    goto LABEL_27;
  }

  v4 = *(v3 + OBJC_IVAR___ICSHomeDataModel_icloudPlusCard);
  if (!v4)
  {
    goto LABEL_27;
  }

  v5 = *(v4 + OBJC_IVAR____TtC14iCloudSettings14iCloudPlusCard_features);
  if (v5 >> 62)
  {
    v6 = sub_2759BA9E8();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = v1;

  if (!v6)
  {
LABEL_20:

LABEL_27:
    if (qword_2815ADD30 != -1)
    {
LABEL_37:
      swift_once();
    }

    v21 = sub_2759B89A8();
    __swift_project_value_buffer(v21, qword_2815ADE70);
    v22 = sub_2759B8988();
    v23 = sub_2759BA668();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_275819000, v22, v23, "Do not have enough info to show premiumApp view.", v24, 2u);
      MEMORY[0x277C85860](v24, -1, -1);
    }

    return;
  }

  v7 = 0;
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x277C846A0](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v11 = *&v8[OBJC_IVAR____TtC14iCloudSettings7Feature_featureId + 8];
    if (v11)
    {
      v12 = *&v8[OBJC_IVAR____TtC14iCloudSettings7Feature_featureId] == 0x5F4D55494D455250 && v11 == 0xEB00000000505041;
      if (v12 || (sub_2759BAAC8() & 1) != 0)
      {
        break;
      }
    }

    ++v7;
    if (v10 == v6)
    {
      goto LABEL_20;
    }
  }

  if (!*&v9[OBJC_IVAR____TtC14iCloudSettings7Feature_bundleIdentifier + 8] || (v13 = *&v9[OBJC_IVAR____TtC14iCloudSettings7Feature_iTunesItemId + 8]) == 0)
  {

    goto LABEL_27;
  }

  v14 = *&v9[OBJC_IVAR____TtC14iCloudSettings7Feature_iTunesItemId];

  if (sub_2758814A8())
  {
    v15 = [objc_allocWithZone(MEMORY[0x277CC1F00]) init];
    v16 = [objc_opt_self() defaultWorkspace];
    if (v16)
    {
      v17 = v16;

      v18 = sub_2759BA258();

      aBlock[4] = sub_275918310;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_275956A0C;
      aBlock[3] = &block_descriptor_176;
      v19 = _Block_copy(aBlock);
      v20 = v15;
      [v17 openApplicationWithBundleIdentifier:v18 usingConfiguration:v20 completionHandler:v19];

      _Block_release(v19);
      return;
    }

    __break(1u);
  }

  else
  {
    v25 = sub_27587A858();
    if (!v25)
    {

      return;
    }

    v26 = v25;
    swift_getKeyPath();
    aBlock[0] = v30;
    sub_2759B8638();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v28 = Strong;

      v29 = [v28 topMostViewController];

      sub_275956A84(v14, v13, v29);

      return;
    }
  }

  __break(1u);
}

id sub_275911618()
{
  v1 = v0;
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_2815ADE70);
  v3 = sub_2759B8988();
  v4 = sub_2759BA668();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_275819000, v3, v4, "Showing Custom Email Domain view.", v5, 2u);
    MEMORY[0x277C85860](v5, -1, -1);
  }

  sub_275910450();
  swift_getKeyPath();
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  return [*(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__customEmailPresenter) showCustomEmailDomainView];
}

uint64_t sub_275911788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_2759BA4C8();
  v5[3] = sub_2759BA4B8();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_27588B550;

  return sub_275911844(a5);
}

uint64_t sub_275911844(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v2[14] = swift_task_alloc();
  v3 = sub_2759B8508();
  v2[15] = v3;
  v4 = *(v3 - 8);
  v2[16] = v4;
  v2[17] = *(v4 + 64);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  sub_2759BA4C8();
  v2[20] = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275911984, v6, v5);
}

uint64_t sub_275911984()
{
  v56 = v0;
  v1 = v0[12];

  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings6Action_urlString);
  v2 = *(v1 + OBJC_IVAR____TtC14iCloudSettings6Action_urlString + 8);
  if (!v2)
  {
    goto LABEL_4;
  }

  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[14];
  sub_2759B84F8();
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    sub_27586BF04(v0[14], &unk_280A0EB10, &qword_2759C0740);
LABEL_4:
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v7 = v0[12];
    v8 = sub_2759B89A8();
    __swift_project_value_buffer(v8, qword_2815ADE70);
    v9 = v7;
    v10 = sub_2759B8988();
    v11 = sub_2759BA648();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v55 = v13;
      *v12 = 136315138;
      if (v2)
      {
        v14 = v2;
      }

      else
      {
        v3 = 7104878;
        v14 = 0xE300000000000000;
      }

      v15 = sub_2758937B8(v3, v14, &v55);

      *(v12 + 4) = v15;
      _os_log_impl(&dword_275819000, v10, v11, "Tried to create %s but could not create URL instance.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x277C85860](v13, -1, -1);
      MEMORY[0x277C85860](v12, -1, -1);
    }

    goto LABEL_31;
  }

  v16 = v0[13];
  v54 = *(v0[16] + 32);
  v54(v0[19], v0[14], v0[15]);
  v17 = [objc_allocWithZone(MEMORY[0x277CDB708]) init];
  [v17 setBarCollapsingEnabled_];
  v18 = objc_allocWithZone(MEMORY[0x277CDB700]);
  v19 = v17;
  v20 = sub_2759B84B8();
  v21 = [v18 initWithURL:v20 configuration:v19];

  sub_275879F28(v21);
  swift_getKeyPath();
  v0[8] = v16;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v22 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__safariWebViewController;
  v23 = *(v16 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__safariWebViewController);
  if (v23)
  {
    [v23 setDelegate_];
  }

  v24 = objc_opt_self();
  v25 = [v24 currentDevice];
  v26 = [v25 userInterfaceIdiom];

  if (v26 == 1 || (v27 = [v24 currentDevice], v28 = objc_msgSend(v27, sel_userInterfaceIdiom), v27, v28 == 6))
  {
    v29 = v0[13];
    swift_getKeyPath();
    v0[11] = v29;
    sub_2759B8638();

    v30 = *(v16 + v22);
    if (!v30)
    {
      goto LABEL_21;
    }

    v31 = 2;
  }

  else
  {
    v32 = v0[13];
    swift_getKeyPath();
    v0[9] = v32;
    sub_2759B8638();

    v30 = *(v16 + v22);
    if (!v30)
    {
      goto LABEL_21;
    }

    v31 = 7;
  }

  [v30 setModalPresentationStyle_];
LABEL_21:
  v33 = v0[13];
  swift_getKeyPath();
  v0[10] = v33;
  sub_2759B8638();

  v34 = *(v16 + v22);
  if (v34)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v36 = Strong;
      v37 = v0[18];
      v38 = v0[16];
      v39 = v0[15];
      (*(v38 + 16))(v37, v0[19], v39);
      v40 = (*(v38 + 80) + 16) & ~*(v38 + 80);
      v41 = swift_allocObject();
      v54(v41 + v40, v37, v39);
      v0[6] = sub_27591EAE8;
      v0[7] = v41;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_27586249C;
      v0[5] = &block_descriptor_187;
      v42 = _Block_copy(v0 + 2);
      v43 = v34;

      [v36 presentViewController:v43 animated:1 completion:v42];
      _Block_release(v42);
    }

    (*(v0[16] + 8))(v0[19], v0[15]);
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v44 = sub_2759B89A8();
    __swift_project_value_buffer(v44, qword_2815ADE70);
    v45 = sub_2759B8988();
    v46 = sub_2759BA648();
    v47 = os_log_type_enabled(v45, v46);
    v48 = v0[19];
    v49 = v0[15];
    v50 = v0[16];
    if (v47)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_275819000, v45, v46, "Unable to instantiate Safari Web View controller with provided URL. Bailing.", v51, 2u);
      MEMORY[0x277C85860](v51, -1, -1);
    }

    else
    {
    }

    (*(v50 + 8))(v48, v49);
  }

LABEL_31:

  v52 = v0[1];

  return v52();
}

uint64_t sub_275912078(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v29 - v7;
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v9 = sub_2759B89A8();
  __swift_project_value_buffer(v9, qword_2815ADE70);
  v10 = sub_2759B8988();
  v11 = sub_2759BA668();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_275819000, v10, v11, "Launching family sharing flow.", v12, 2u);
    MEMORY[0x277C85860](v12, -1, -1);
  }

  [v3 didStartLoadingWithView_];
  v13 = MEMORY[0x277D837D0];
  if (!a1)
  {
    v40 = MEMORY[0x277D837D0];
    *&v39 = 0x6974634172657355;
    *(&v39 + 1) = 0xEA00000000006E6FLL;
    v38 = MEMORY[0x277D839B0];
    LOBYTE(v37) = 1;
    v36 = MEMORY[0x277D837D0];
    *&v35 = 0x6E6F74747562;
    *(&v35 + 1) = 0xE600000000000000;
    goto LABEL_22;
  }

  if (*(a1 + 16) && (v14 = sub_27586F8A0(0x6F74736575716572, 0xE900000000000072), (v15 & 1) != 0))
  {
    sub_275864C94(*(a1 + 56) + 32 * v14, &v37);
    sub_2758A2ECC(&v37, &v39);
    if (!*(a1 + 16))
    {
      goto LABEL_14;
    }
  }

  else
  {
    v40 = v13;
    *&v39 = 0x6974634172657355;
    *(&v39 + 1) = 0xEA00000000006E6FLL;
    if (!*(a1 + 16))
    {
      goto LABEL_14;
    }
  }

  v16 = sub_27586F8A0(0x707369447473756DLL, 0xEB0000000079616CLL);
  if (v17)
  {
    sub_275864C94(*(a1 + 56) + 32 * v16, &v35);
    sub_2758A2ECC(&v35, &v37);
    if (!*(a1 + 16))
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_14:
  v38 = MEMORY[0x277D839B0];
  LOBYTE(v37) = 1;
  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

LABEL_15:
  v18 = sub_27586F8A0(0x457972756372656DLL, 0xEC0000007972746ELL);
  if (v19)
  {
    sub_275864C94(*(a1 + 56) + 32 * v18, v33);
    sub_2758A2ECC(v33, &v35);
    if (!*(a1 + 16))
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_18:
  v36 = v13;
  *&v35 = 0x6E6F74747562;
  *(&v35 + 1) = 0xE600000000000000;
  if (!*(a1 + 16))
  {
LABEL_22:
    v34 = v13;
    strcpy(v33, "sendInvitation");
    v33[15] = -18;
    goto LABEL_23;
  }

LABEL_19:
  v20 = sub_27586F8A0(1701869940, 0xE400000000000000);
  if ((v21 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_275864C94(*(a1 + 56) + 32 * v20, v32);
  sub_2758A2ECC(v32, v33);
LABEL_23:
  v22 = sub_2759BA518();
  (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
  sub_275864C94(&v39, v32);
  sub_275864C94(&v37, v31);
  sub_275864C94(&v35, v30);
  sub_275864C94(v33, v29);
  sub_2759BA4C8();
  v23 = a2;
  v24 = v3;
  v25 = sub_2759BA4B8();
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  *(v26 + 16) = v25;
  *(v26 + 24) = v27;
  sub_2758A2ECC(v32, (v26 + 32));
  sub_2758A2ECC(v31, (v26 + 64));
  sub_2758A2ECC(v30, (v26 + 96));
  sub_2758A2ECC(v29, (v26 + 128));
  *(v26 + 160) = v24;
  *(v26 + 168) = a2;
  sub_27587D460(0, 0, v8, &unk_2759C8EC0, v26);

  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_destroy_boxed_opaque_existential_1(&v35);
  __swift_destroy_boxed_opaque_existential_1(&v37);
  return __swift_destroy_boxed_opaque_existential_1(&v39);
}

void sub_275912524(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_2759B8508();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v11 = sub_2759B89A8();
  __swift_project_value_buffer(v11, qword_2815ADE70);
  v12 = sub_2759B8988();
  v13 = sub_2759BA668();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_275819000, v12, v13, "Launching family usage with RemoteUI", v14, 2u);
    MEMORY[0x277C85860](v14, -1, -1);
  }

  if (!*&a1[OBJC_IVAR____TtC14iCloudSettings6Action_urlString + 8])
  {
    goto LABEL_8;
  }

  sub_2759B84F8();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_27586BF04(v6, &unk_280A0EB10, &qword_2759C0740);
LABEL_8:
    v15 = a1;
    v16 = sub_2759B8988();
    v17 = sub_2759BA648();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&dword_275819000, v16, v17, "Invalid URL string for family usage: %@", v18, 0xCu);
      sub_27586BF04(v19, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v19, -1, -1);
      MEMORY[0x277C85860](v18, -1, -1);
    }

    return;
  }

  (*(v8 + 32))(v10, v6, v7);
  swift_getKeyPath();
  v28 = v1;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  v22 = sub_27587C10C();
  v23 = [objc_allocWithZone(MEMORY[0x277D7F4B8]) initWithNavigationController:Strong initialAction:0 account:v22];

  sub_275878F94(v23);
  swift_getKeyPath();
  v28 = v2;
  sub_2759B8638();

  v24 = *(v2 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__legacyRUIController);
  if (v24)
  {
    v25 = v24;
    v26 = sub_2759B84B8();
    [v25 loadURL:v26 postBody:0 additionalHeaders:0];
  }

  (*(v8 + 8))(v10, v7);
}

void sub_275912990()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  swift_getKeyPath();
  v21 = v0;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v7 = sub_2759B89A8();
    __swift_project_value_buffer(v7, qword_2815ADE70);
    v8 = sub_2759B8988();
    v9 = sub_2759BA668();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_275819000, v8, v9, "Launching legacy purchase flow.", v10, 2u);
      MEMORY[0x277C85860](v10, -1, -1);
    }

    v11 = sub_2759BA518();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    sub_2759BA4C8();
    v12 = v1;
    v13 = v6;
    v14 = sub_2759BA4B8();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v12;
    v15[5] = v13;
    sub_27587D460(0, 0, v4, &unk_2759C8F20, v15);
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v17 = sub_2759B89A8();
    __swift_project_value_buffer(v17, qword_2815ADE70);
    v13 = sub_2759B8988();
    v18 = sub_2759BA648();
    if (os_log_type_enabled(v13, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_275819000, v13, v18, "Presenter unavailable, unable to launch legacy manage plan flow.", v19, 2u);
      MEMORY[0x277C85860](v19, -1, -1);
    }
  }
}

void sub_275912CB0(NSObject *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v65 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v5 - 8);
  v62 = &v53 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v53 - v8;
  v64 = sub_2759B8508();
  v10 = *(v64 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v64);
  v13 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v63 = &v53 - v14;
  v61 = *a2;
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v15 = sub_2759B89A8();
  __swift_project_value_buffer(v15, qword_2815ADE70);
  v16 = sub_2759B8988();
  v17 = sub_2759BA668();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_275819000, v16, v17, "Launching family usage flow with LiftUI.", v18, 2u);
    MEMORY[0x277C85860](v18, -1, -1);
  }

  [v3 didStartLoadingWithView_];
  v19 = sub_27587C10C();
  if (v19)
  {
    v20 = v19;
    v21 = *(&v65->isa + OBJC_IVAR____TtC14iCloudSettings6Action_urlString);
    v22 = *(&v65[1].isa + OBJC_IVAR____TtC14iCloudSettings6Action_urlString);
    if (!v22)
    {
LABEL_9:
      if (qword_280A0E338 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v15, qword_280A238A0);
      v26 = v65;
      v27 = sub_2759B8988();
      v28 = sub_2759BA648();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v66 = v30;
        *v29 = 136315138;
        if (v22)
        {
          v31 = v22;
        }

        else
        {
          v21 = 7104878;
          v31 = 0xE300000000000000;
        }

        v32 = sub_2758937B8(v21, v31, &v66);

        *(v29 + 4) = v32;
        _os_log_impl(&dword_275819000, v27, v28, "unable to launch family usage liftui, unable to generate url: %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x277C85860](v30, -1, -1);
        MEMORY[0x277C85860](v29, -1, -1);
      }

      return;
    }

    sub_2759B84F8();
    v23 = v10;
    v24 = *(v10 + 48);
    v25 = v64;
    if (v24(v9, 1, v64) == 1)
    {
      sub_27586BF04(v9, &unk_280A0EB10, &qword_2759C0740);
      goto LABEL_9;
    }

    v58 = *(v23 + 32);
    v59 = v23 + 32;
    v58(v63, v9, v25);
    v60 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_pushingLoadingTask;
    if (*&v3[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_pushingLoadingTask])
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EEF0, &qword_2759CF390);
      sub_2759BA538();
    }

    v36 = v62;
    sub_2759BA4E8();
    v55 = sub_2759BA518();
    v37 = *(v55 - 8);
    v54 = *(v37 + 56);
    v56 = v37 + 56;
    v54(v36, 0, 1, v55);
    (*(v23 + 16))(v13, v63, v25);
    sub_2759BA4C8();
    v57 = v23;
    v38 = v20;
    v39 = v3;
    v65 = v65;
    v40 = sub_2759BA4B8();
    v41 = (*(v23 + 80) + 48) & ~*(v23 + 80);
    v42 = (v11 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    v44 = MEMORY[0x277D85700];
    v43[2] = v40;
    v43[3] = v44;
    v45 = v44;
    v43[4] = v38;
    v43[5] = v39;
    v46 = v43 + v41;
    v47 = v64;
    v58(v46, v13, v64);
    v48 = v43 + v42;
    *v48 = v65;
    v48[8] = v61;
    v49 = sub_27590A1B4(0, 0, v36, &unk_2759C90C0, v43, MEMORY[0x277D84F78] + 8);
    *&v3[v60] = v49;

    v54(v36, 1, 1, v55);
    v50 = v39;
    v51 = sub_2759BA4B8();
    v52 = swift_allocObject();
    v52[2] = v51;
    v52[3] = v45;
    v52[4] = v50;
    sub_27587D460(0, 0, v36, &unk_2759C90D0, v52);

    (*(v57 + 8))(v63, v47);
  }

  else
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v15, qword_280A238A0);
    v65 = sub_2759B8988();
    v33 = sub_2759BA648();
    if (os_log_type_enabled(v65, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_275819000, v65, v33, "Unable to launch family usage liftui, missing account", v34, 2u);
      MEMORY[0x277C85860](v34, -1, -1);
    }

    v35 = v65;
  }
}

void sub_27591343C(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = sub_2759B8508();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*&a1[OBJC_IVAR____TtC14iCloudSettings6Action_urlString + 8])
  {
    goto LABEL_4;
  }

  sub_2759B84F8();
  v14 = *(v11 + 48);
  if (v14(v9, 1, v10) == 1)
  {
    sub_27586BF04(v9, &unk_280A0EB10, &qword_2759C0740);
LABEL_4:
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v15 = sub_2759B89A8();
    __swift_project_value_buffer(v15, qword_2815ADE70);
    v16 = a1;
    v17 = sub_2759B8988();
    v18 = sub_2759BA648();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&dword_275819000, v17, v18, "No valid url found to perform action: %@", v19, 0xCu);
      sub_27586BF04(v20, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v20, -1, -1);
      MEMORY[0x277C85860](v19, -1, -1);
    }

    return;
  }

  (*(v11 + 32))(v13, v9, v10);
  (*(v11 + 16))(v7, v13, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  v22 = sub_2759BA258();
  if (v14(v7, 1, v10) == 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = sub_2759B84B8();
    (*(v11 + 8))(v7, v10);
  }

  v32 = [objc_allocWithZone(MEMORY[0x277D7F370]) initWithActionString:v22 url:v23];

  v24 = [objc_allocWithZone(MEMORY[0x277D7F388]) init];
  v25 = sub_2759B84B8();
  [v24 _updateRequestedServerUIURLWithURL_];

  sub_275878C38([objc_allocWithZone(MEMORY[0x277D7F4E0]) initWithOffer_]);
  swift_getKeyPath();
  v33 = v2;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v26 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__upgradeFlowManager;
  v27 = *(v2 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__upgradeFlowManager);
  if (v27)
  {
    [v27 setDelegate_];
  }

  swift_getKeyPath();
  v33 = v2;
  sub_2759B8638();

  v28 = *(v2 + v26);
  if (v28)
  {
    swift_getKeyPath();
    v33 = v2;
    v29 = v28;
    sub_2759B8638();

    Strong = swift_unknownObjectWeakLoadStrong();
    v31 = v32;
    [v29 beginRemoteUpgradeFlowWithICQLink:v32 presenter:Strong];

    v24 = Strong;
  }

  else
  {
    v29 = v32;
  }

  (*(v11 + 8))(v13, v10);
}

void sub_2759139B4(void *a1)
{
  v2 = v1;
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v4 = sub_2759B89A8();
  __swift_project_value_buffer(v4, qword_2815ADE70);
  v5 = a1;
  v6 = sub_2759B8988();
  v7 = sub_2759BA668();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_275819000, v6, v7, "Launching direct/upgrade to Oslo w/ buyParam: %@", v8, 0xCu);
    sub_27586BF04(v9, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v9, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  v11 = *&v5[OBJC_IVAR____TtC14iCloudSettings6Action_title + 8];
  v12 = *&v5[OBJC_IVAR____TtC14iCloudSettings6Action_actionParameters];
  if (v12)
  {
    v13 = sub_2758C14DC(v12);
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_10:
    v14 = 0;
    if (v13)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v13 = 0;
  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_7:
  v14 = sub_2759BA258();
  if (v13)
  {
LABEL_8:
    v15 = sub_2759BA1C8();

    goto LABEL_12;
  }

LABEL_11:
  v15 = 0;
LABEL_12:
  v16 = [objc_allocWithZone(MEMORY[0x277D7F370]) initWithText:v14 action:127 parameters:v15];

  sub_275878C38([objc_allocWithZone(MEMORY[0x277D7F4E0]) init]);
  swift_getKeyPath();
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v17 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__upgradeFlowManager;
  v18 = *(v2 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__upgradeFlowManager);
  if (v18)
  {
    [v18 setDelegate_];
  }

  swift_getKeyPath();
  sub_2759B8638();

  v19 = *(v2 + v17);
  if (v19)
  {
    swift_getKeyPath();
    v20 = v19;
    sub_2759B8638();

    Strong = swift_unknownObjectWeakLoadStrong();
    [v20 beginRemoteUpgradeFlowWithICQLink:v16 presenter:Strong];
  }
}

void sub_275913D20()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_accountManager];
  v3 = [v2 accounts];
  if (!v3)
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = v3;
  type metadata accessor for AIDAServiceType(0);
  sub_275861AF8(0, &unk_280A103F0, 0x277CB8F30);
  sub_27591EFC0(&qword_280A0E500, type metadata accessor for AIDAServiceType, &unk_2759C06F0);
  v5 = sub_2759BA1D8();

  if (*(v5 + 16))
  {
    v6 = sub_2758A342C();
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);

      goto LABEL_7;
    }
  }

  v9 = [objc_opt_self() defaultStore];
  if (!v9)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v10 = v9;

  v8 = [v10 aa_primaryAppleAccount];

  if (!v8)
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v21 = sub_2759B89A8();
    __swift_project_value_buffer(v21, qword_2815ADE70);
    v25 = sub_2759B8988();
    v22 = sub_2759BA648();
    if (os_log_type_enabled(v25, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_2758937B8(0xD000000000000019, 0x80000002759E1580, &v26);
      _os_log_impl(&dword_275819000, v25, v22, "Unable to find account, bailing %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x277C85860](v24, -1, -1);
      MEMORY[0x277C85860](v23, -1, -1);
    }

    goto LABEL_12;
  }

LABEL_7:
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v11 = sub_2759B89A8();
  __swift_project_value_buffer(v11, qword_2815ADE70);
  v12 = sub_2759B8988();
  v13 = sub_2759BA668();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_275819000, v12, v13, "Pushing Show All view.", v14, 2u);
    MEMORY[0x277C85860](v14, -1, -1);
  }

  v15 = objc_opt_self();
  v16 = objc_allocWithZone(type metadata accessor for ManageStorageAppsListViewModel(0));
  v17 = v8;
  v18 = v1;
  v19 = sub_2758A5B3C(v17, v18, 0);
  v20 = [v15 makeAppListViewControllerWithAccountManager:v2 homeViewModel:v18 manageStorageAppsListViewModel:v19];

  v25 = v20;
  sub_27590C4A0(v25, 1, 0, 0xD000000000000019, 0x80000002759E1580);

LABEL_12:
}

void sub_275914114(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_27587C10C();
  if (v5)
  {
    v6 = v5;
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v7 = sub_2759B89A8();
    __swift_project_value_buffer(v7, qword_2815ADE70);
    v8 = sub_2759B8988();
    v9 = sub_2759BA668();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_275819000, v8, v9, "Showing iCloud backup view.", v10, 2u);
      MEMORY[0x277C85860](v10, -1, -1);
    }

    v11 = [objc_opt_self() buildBackupViewControllerWithAccount_];
    sub_27590C4A0(v11, 1, a1, 0xD000000000000023, 0x80000002759E15A0);
    sub_2759BA4D8();
    v12 = sub_2759BA518();
    (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = v13;
    *(v14 + 40) = xmmword_2759C7B30;
    *(v14 + 56) = 6666;
    *(v14 + 58) = 1;
    *(v14 + 64) = 0;
    *(v14 + 72) = 1;
    *(v14 + 80) = 0;
    *(v14 + 88) = 0;
    *(v14 + 96) = -1;
    sub_275931D20(0, 0, v4, &unk_2759C4530, v14);

    sub_27586BF04(v4, &unk_280A0E510, &qword_2759C33C0);
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v15 = sub_2759B89A8();
    __swift_project_value_buffer(v15, qword_2815ADE70);
    v20 = sub_2759B8988();
    v16 = sub_2759BA648();
    if (os_log_type_enabled(v20, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_275819000, v20, v16, "No iCloud account found. Failed to iCloud backup view.", v17, 2u);
      MEMORY[0x277C85860](v17, -1, -1);
    }

    v18 = v20;
  }
}

uint64_t sub_275914538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[53] = a8;
  v8[54] = v13;
  v8[51] = a6;
  v8[52] = a7;
  v8[49] = a4;
  v8[50] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v8[55] = swift_task_alloc();
  v8[56] = sub_2759BA4C8();
  v8[57] = sub_2759BA4B8();
  v10 = sub_2759BA468();
  v8[58] = v10;
  v8[59] = v9;

  return MEMORY[0x2822009F8](sub_27591461C, v10, v9);
}

uint64_t sub_27591461C()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);
  v5 = *(v0 + 392);
  v6 = [objc_allocWithZone(MEMORY[0x277D083B0]) initWithEventType_];
  *(v0 + 480) = v6;
  v7 = sub_2759BA258();
  [v6 setClientName_];

  v8 = sub_2759BA258();
  [v6 setClientBundleID_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A10DB0, &qword_2759C8EC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C8C80;
  *(inited + 32) = 0x6F74736575716572;
  *(inited + 40) = 0xE900000000000072;
  sub_275864C94(v5, inited + 48);
  *(inited + 80) = 0x707369447473756DLL;
  *(inited + 88) = 0xEB0000000079616CLL;
  sub_275864C94(v4, inited + 96);
  strcpy((inited + 128), "mercuryEntry");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  sub_275864C94(v3, inited + 144);
  *(inited + 176) = 1701869940;
  *(inited + 184) = 0xE400000000000000;
  sub_275864C94(v1, inited + 192);
  sub_2758A2A88(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F408, qword_2759CC3C0);
  swift_arrayDestroy();
  v10 = sub_2759BA1C8();

  [v6 setAdditionalParameters_];

  swift_getKeyPath();
  *(v0 + 368) = v2;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  v12 = [objc_allocWithZone(MEMORY[0x277D083B8]) initWithPresenter_];

  sub_275879374(v12);
  swift_getKeyPath();
  *(v0 + 384) = v2;
  sub_2759B8638();

  v13 = *(v2 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__familyCircleStateController);
  *(v0 + 488) = v13;
  if (v13)
  {
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 376;
    *(v0 + 24) = sub_275914C9C;
    v14 = swift_continuation_init();
    *(v0 + 360) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A10DC0, &qword_2759C8EF8);
    *(v0 + 304) = MEMORY[0x277D85DD0];
    *(v0 + 312) = 1107296256;
    *(v0 + 320) = sub_27587045C;
    *(v0 + 328) = &block_descriptor_87;
    *(v0 + 336) = v14;
    [v13 performWithContext:v6 completion:v0 + 304];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {

    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v15 = sub_2759B89A8();
    __swift_project_value_buffer(v15, qword_2815ADE70);
    v16 = sub_2759B8988();
    v17 = sub_2759BA668();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_275819000, v16, v17, "Family sharing flow completed successfully. Reloading iCloudHome view.", v18, 2u);
      MEMORY[0x277C85860](v18, -1, -1);
    }

    v19 = *(v0 + 440);
    v21 = *(v0 + 424);
    v20 = *(v0 + 432);

    sub_2759BA4E8();
    v22 = sub_2759BA518();
    v23 = *(*(v22 - 8) + 56);
    v23(v19, 0, 1, v22);
    v24 = v21;
    v25 = sub_2759BA4B8();
    v26 = swift_allocObject();
    v27 = MEMORY[0x277D85700];
    *(v26 + 16) = v25;
    *(v26 + 24) = v27;
    *(v26 + 32) = v24;
    *(v26 + 40) = 0;
    sub_27587D460(0, 0, v19, &unk_2759C8F00, v26);

    if (v20)
    {
      v29 = *(v0 + 432);
      v28 = *(v0 + 440);
      sub_2759BA4E8();
      v23(v28, 0, 1, v22);
      v30 = swift_allocObject();
      *(v30 + 16) = 0;
      *(v30 + 24) = 0;
      *(v30 + 32) = v29;
      *(v30 + 40) = 256;
      v31 = v29;
      sub_27587D460(0, 0, v28, &unk_2759C3A58, v30);
    }

    v32 = *(v0 + 480);
    [*(v0 + 424) didStopLoadingWithView_];

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_275914C9C()
{
  v1 = *(*v0 + 472);
  v2 = *(*v0 + 464);

  return MEMORY[0x2822009F8](sub_275914DA4, v2, v1);
}

uint64_t sub_275914DA4()
{
  v1 = *(v0 + 488);

  v2 = *(v0 + 376);

  v3 = [v2 error];
  if (v3)
  {

    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v4 = sub_2759B89A8();
    __swift_project_value_buffer(v4, qword_2815ADE70);
    v5 = v2;
    v6 = sub_2759B8988();
    v7 = sub_2759BA648();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = [v5 error];
      if (v10)
      {
        v10 = _swift_stdlib_bridgeErrorToNSError();
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      *(v8 + 4) = v10;
      *v9 = v11;
      _os_log_impl(&dword_275819000, v6, v7, "Family sharing flow failed w/ error: %@", v8, 0xCu);
      sub_27586BF04(v9, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v9, -1, -1);
      MEMORY[0x277C85860](v8, -1, -1);
    }

    v26 = *(v0 + 440);
    v27 = *(v0 + 424);
    v28 = *(v0 + 432);

    sub_2759BA4E8();
    v19 = sub_2759BA518();
    v20 = *(*(v19 - 8) + 56);
    v20(v26, 0, 1, v19);
    v29 = v27;
    v30 = sub_2759BA4B8();
    v31 = swift_allocObject();
    v32 = MEMORY[0x277D85700];
    *(v31 + 16) = v30;
    *(v31 + 24) = v32;
    *(v31 + 32) = v29;
    *(v31 + 40) = 0;
    sub_27587D460(0, 0, v26, &unk_2759C8F08, v31);

    if (v28)
    {
      v25 = &unk_2759C8F10;
      goto LABEL_17;
    }
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v12 = sub_2759B89A8();
    __swift_project_value_buffer(v12, qword_2815ADE70);
    v13 = sub_2759B8988();
    v14 = sub_2759BA668();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_275819000, v13, v14, "Family sharing flow completed successfully. Reloading iCloudHome view.", v15, 2u);
      MEMORY[0x277C85860](v15, -1, -1);
    }

    v16 = *(v0 + 440);
    v18 = *(v0 + 424);
    v17 = *(v0 + 432);

    sub_2759BA4E8();
    v19 = sub_2759BA518();
    v20 = *(*(v19 - 8) + 56);
    v20(v16, 0, 1, v19);
    v21 = v18;
    v22 = sub_2759BA4B8();
    v23 = swift_allocObject();
    v24 = MEMORY[0x277D85700];
    *(v23 + 16) = v22;
    *(v23 + 24) = v24;
    *(v23 + 32) = v21;
    *(v23 + 40) = 0;
    sub_27587D460(0, 0, v16, &unk_2759C8F00, v23);

    if (v17)
    {
      v25 = &unk_2759C3A58;
LABEL_17:
      v34 = *(v0 + 432);
      v33 = *(v0 + 440);
      sub_2759BA4E8();
      v20(v33, 0, 1, v19);
      v35 = swift_allocObject();
      *(v35 + 16) = 0;
      *(v35 + 24) = 0;
      *(v35 + 32) = v34;
      *(v35 + 40) = 256;
      v36 = v34;
      sub_27587D460(0, 0, v33, v25, v35);
    }
  }

  v37 = *(v0 + 480);
  [*(v0 + 424) didStopLoadingWithView_];

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_275915280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_2759BA4C8();
  v5[10] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275915318, v7, v6);
}

uint64_t sub_275915318()
{
  v1 = v0[8];

  [v1 didStartLoadingWithView_];
  swift_getKeyPath();
  v0[2] = v1;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v2 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__legacyManagePlanController;
  if (!*&v1[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__legacyManagePlanController])
  {
    sub_275879184([objc_allocWithZone(MEMORY[0x277D7F4D8]) init]);
  }

  v3 = v0[8];
  swift_getKeyPath();
  v0[2] = v3;
  sub_2759B8638();

  v4 = *&v1[v2];
  if (v4)
  {
    v5 = v0[9];
    v6 = *MEMORY[0x277D3FD40];
    v0[6] = sub_275915538;
    v0[7] = 0;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_275956A0C;
    v0[5] = &block_descriptor_118;
    v7 = _Block_copy(v0 + 2);
    v8 = v4;
    [v8 beginFlowWithPresenter:v5 action:v6 completion:v7];
    _Block_release(v7);
  }

  [v0[8] didStopLoadingWithView_];
  v9 = v0[1];

  return v9();
}

void sub_275915538(char a1, void *a2)
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v4 = sub_2759B89A8();
  __swift_project_value_buffer(v4, qword_2815ADE70);
  v5 = a2;
  oslog = sub_2759B8988();
  v6 = sub_2759BA668();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 67109378;
    *(v7 + 4) = a1 & 1;
    *(v7 + 8) = 2112;
    if (a2)
    {
      v9 = a2;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      v11 = v10;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    *(v7 + 10) = v10;
    *v8 = v11;
    _os_log_impl(&dword_275819000, oslog, v6, "Legacy purchase completed with success %{BOOL}d error %@", v7, 0x12u);
    sub_27586BF04(v8, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v8, -1, -1);
    MEMORY[0x277C85860](v7, -1, -1);
  }
}

uint64_t sub_2759156C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 480) = a8;
  *(v8 + 248) = a6;
  *(v8 + 256) = a7;
  *(v8 + 232) = a4;
  *(v8 + 240) = a5;
  v9 = sub_2759B8A28();
  *(v8 + 264) = v9;
  *(v8 + 272) = *(v9 - 8);
  *(v8 + 280) = swift_task_alloc();
  v10 = sub_2759B8248();
  *(v8 + 288) = v10;
  *(v8 + 296) = *(v10 - 8);
  *(v8 + 304) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  *(v8 + 312) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = sub_2759BA4C8();
  *(v8 + 336) = sub_2759BA4B8();
  v12 = sub_2759BA468();
  *(v8 + 344) = v12;
  *(v8 + 352) = v11;

  return MEMORY[0x2822009F8](sub_275915890, v12, v11);
}

uint64_t sub_275915890()
{
  v1 = v0[40];
  v3 = v0[29];
  v2 = v0[30];
  v4 = objc_allocWithZone(type metadata accessor for ManageStorageAppsListViewModel(0));
  v5 = v3;
  v6 = v2;
  v7 = sub_2758A5B3C(v5, v6, 0);
  v0[45] = v7;
  swift_getKeyPath();
  v0[27] = v6;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v9 = sub_2759BA518();
  v0[46] = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v0[47] = v11;
  v0[48] = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v1, 1, 1, v9);
  v12 = v7;
  v13 = sub_2759BA4B8();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v12;
  sub_27587D460(0, 0, v1, &unk_2759C90D8, v14);

  swift_getKeyPath();
  v0[28] = v6;
  sub_2759B8638();

  v16 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  v17 = swift_task_alloc();
  v0[49] = v17;
  *v17 = v0;
  v17[1] = sub_275915B4C;

  return ManageStorageAppsListViewModel.fetchAppsList(fetchHomeViewModel:loadImages:)(0, 0);
}

uint64_t sub_275915B4C()
{
  v1 = *v0;

  v2 = *(v1 + 352);
  v3 = *(v1 + 344);

  return MEMORY[0x2822009F8](sub_275915C6C, v3, v2);
}

uint64_t sub_275915C6C()
{
  v66 = v0;
  sub_2759BA558();
  *(v0 + 400) = 0;
  v15 = *(v0 + 360);
  v16 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
  swift_beginAccess();
  v17 = *(v15 + v16);
  v63 = v0;
  if (v17 >> 62)
  {
    v18 = sub_2759BA9E8();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v18)
  {
    v19 = 0;
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x277C846A0](v19, v17);
        v21 = (v19 + 1);
        if (__OFADD__(v19, 1))
        {
LABEL_22:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          swift_once();
          v1 = qword_280A10F08;
          v2 = sub_2759B89A8();
          __swift_project_value_buffer(v2, qword_280A238A0);
          v3 = v19;
          v4 = v1;
          v5 = sub_2759B8988();
          v6 = sub_2759BA668();

          if (os_log_type_enabled(v5, v6))
          {
            v7 = qword_280A10F08;
            v8 = swift_slowAlloc();
            v9 = swift_slowAlloc();
            v10 = swift_slowAlloc();
            v65 = v10;
            *v8 = 138412546;
            v11 = v19;
            v12 = _swift_stdlib_bridgeErrorToNSError();
            *(v8 + 4) = v12;
            *v9 = v12;
            *(v8 + 12) = 2080;
            if (*(v7 + OBJC_IVAR____TtC14iCloudSettings6Action_urlString + 8))
            {
              v13 = *(v7 + OBJC_IVAR____TtC14iCloudSettings6Action_urlString);
              v14 = *(v7 + OBJC_IVAR____TtC14iCloudSettings6Action_urlString + 8);
            }

            else
            {
              v14 = 0xE300000000000000;
              v13 = 7104878;
            }

            v49 = sub_2758937B8(v13, v14, &v65);

            *(v8 + 14) = v49;
            _os_log_impl(&dword_275819000, v5, v6, "showFamilyUsageLiftUI: error while loading liftui: %@ url: %s", v8, 0x16u);
            sub_27586BF04(v9, &unk_280A0FDE0, &unk_2759C2650);
            MEMORY[0x277C85860](v9, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v10);
            MEMORY[0x277C85860](v10, -1, -1);
            MEMORY[0x277C85860](v8, -1, -1);
          }

          v50 = OBJC_IVAR____TtC14iCloudSettings23DynamicUIFlowController_dynamicUI;
          v51 = qword_280A10F78;
          v52 = qword_280A10F48;
          v53 = unk_280A10FE8;
          v54 = qword_280A10EF8;
          sub_2759BA4E8();
          v50(v52, 0, 1, v51);
          v55 = v54;
          v56 = sub_2759BA4B8();
          v57 = swift_allocObject();
          v58 = MEMORY[0x277D85700];
          v57[2] = v56;
          v57[3] = v58;
          v57[4] = v55;
          sub_27587D460(0, 0, v52, &unk_2759C90E8, v57);

          sub_2759BA4D8();
          v50(v52, 0, 1, v51);
          v59 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v60 = swift_allocObject();
          *(v60 + 16) = 0;
          *(v60 + 24) = 0;
          *(v60 + 32) = v59;
          *(v60 + 40) = xmmword_2759C43F0;
          *(v60 + 56) = 10;
          *(v60 + 57) = v53;
          *(v60 + 58) = 0;
          *(v60 + 64) = 2;
          *(v60 + 72) = 0;
          *(v60 + 80) = xmmword_2759C8C90;
          *(v60 + 96) = 10;
          sub_275931D20(0, 0, v52, &unk_2759C90F0, v60);

          sub_27586BF04(v52, &unk_280A0E510, &qword_2759C33C0);

          v61 = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__isLoading;

          return v61();
        }

        v20 = *(v17 + 8 * v19 + 32);
        v21 = (v19 + 1);
        if (__OFADD__(v19, 1))
        {
          goto LABEL_22;
        }
      }

      v22 = (*&v20[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category);
      v23 = *v22;
      v24 = v22[1];
      if (v24 - 2 >= 3 && v24 != 0)
      {
        v64 = v20;
        if (v24 == 1)
        {

          sub_27585A8EC(v23, 1uLL);
          sub_27585A8EC(0, 1uLL);
          v62 = v0;
          goto LABEL_24;
        }

        v20 = v64;
      }

      sub_27585A8EC(v23, v24);
      sub_27585A8EC(0, 1uLL);
      ++v19;
    }

    while (v21 != v18);
  }

  v26 = sub_2758A2A88(MEMORY[0x277D84F90]);
  v27 = objc_allocWithZone(type metadata accessor for ManageStorageApp());
  v28 = ManageStorageApp.init(_:)(v26);
  v29 = *&v28[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category];
  v30 = *&v28[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category + 8];
  *&v28[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category] = xmmword_2759C8CA0;
  v31 = v28;
  sub_27585A8EC(v29, v30);
  v62 = v0;
  *(v0 + 80) = &type metadata for DefaultApplicationRecordProvider;
  *(v0 + 88) = &off_28847F8A0;
  v32 = type metadata accessor for DefaultIconLoader();
  v33 = objc_allocWithZone(v32);
  __swift_mutable_project_boxed_opaque_existential_1((v62 + 7), v62[10]);
  *(v0 + 120) = &type metadata for DefaultApplicationRecordProvider;
  *(v0 + 128) = &off_28847F8A0;
  sub_27586E058(v0 + 96, v33 + OBJC_IVAR___ICSDefaultIconLoader_applicationRecordProvider);
  *(v0 + 200) = v33;
  *(v0 + 208) = v32;
  v34 = objc_msgSendSuper2((v0 + 200), sel_init);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  *(v0 + 40) = v32;
  *(v0 + 48) = &off_28847F800;
  *(v0 + 16) = v34;
  v35 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v32);
  v36 = *(v32 - 1);
  v37 = swift_task_alloc();
  (*(v36 + 16))(v37, v35, v32);
  v38 = *v37;
  *(v0 + 160) = v32;
  *(v0 + 168) = &off_28847F800;
  *(v0 + 136) = v38;
  v39 = objc_allocWithZone(type metadata accessor for ManageStorageAppViewModel(0));
  v40 = *(v0 + 160);
  v41 = __swift_mutable_project_boxed_opaque_existential_1((v62 + 17), v62[20]);
  v42 = *(v40 - 8);
  v43 = swift_task_alloc();
  (*(v42 + 16))(v43, v41, v40);
  v64 = sub_2758ACAE4(v31, -1, *v43, v39);

  __swift_destroy_boxed_opaque_existential_1((v63 + 136));

  __swift_destroy_boxed_opaque_existential_1((v63 + 16));

LABEL_24:
  v62[51] = v64;
  v44 = v62[39];
  v45 = sub_2759B8508();
  (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
  v64;
  v46 = swift_task_alloc();
  v62[52] = v46;
  *v46 = v62;
  v46[1] = sub_2759164CC;
  v47 = v62[39];

  return sub_275921A1C(v47);
}

uint64_t sub_2759164CC()
{
  v1 = *v0;
  v2 = *(*v0 + 408);
  v3 = *(*v0 + 312);

  sub_27586BF04(v3, &unk_280A0EB10, &qword_2759C0740);
  v4 = *(v1 + 352);
  v5 = *(v1 + 344);

  return MEMORY[0x2822009F8](sub_275916638, v5, v4);
}

uint64_t sub_275916638()
{
  v1 = v0[29];
  v2 = sub_2759B8698();
  v0[53] = v2;
  objc_allocWithZone(v2);
  v3 = v1;
  v0[54] = sub_2759B8688();

  return MEMORY[0x2822009F8](sub_2759166BC, 0, 0);
}

uint64_t sub_2759166BC()
{
  v1 = v0[50];
  v2 = sub_27591EFC0(&qword_280A0FED0, MEMORY[0x277D7F240], MEMORY[0x277D7F450]);
  sub_2759B8A08();
  if (v1)
  {
    v0[59] = v1;
    v3 = v0[43];
    v4 = v0[44];

    return MEMORY[0x2822009F8](sub_275916F70, v3, v4);
  }

  else
  {
    v6 = v0[34];
    v5 = v0[35];
    v7 = v0[33];
    (*(v6 + 104))(v5, *MEMORY[0x277D23198], v7);
    v8 = sub_27596AD54();
    (*(v6 + 8))(v5, v7, v8);
    v9 = swift_task_alloc();
    v0[55] = v9;
    *v9 = v0;
    v9[1] = sub_27591686C;
    v10 = v0[53];
    v11 = v0[38];

    return MEMORY[0x282182070](v11, v10, v2);
  }
}

uint64_t sub_27591686C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[56] = a1;
  v4[57] = a2;
  v4[58] = v2;

  if (v2)
  {
    v5 = sub_275916EF4;
  }

  else
  {
    v5 = sub_275916984;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_275916984()
{
  (*(v0[37] + 8))(v0[38], v0[36]);
  v1 = v0[43];
  v2 = v0[44];

  return MEMORY[0x2822009F8](sub_2759169F8, v1, v2);
}

uint64_t sub_2759169F8()
{
  v48 = v0;
  v1 = *(v0 + 464);

  sub_2759BA558();
  v3 = *(v0 + 448);
  v2 = *(v0 + 456);
  v4 = *(v0 + 432);
  v5 = *(v0 + 408);
  if (v1)
  {
    v6 = *(v0 + 360);

    sub_27585A900(v3, v2);
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 256);
    v8 = sub_2759B89A8();
    __swift_project_value_buffer(v8, qword_280A238A0);
    v9 = v1;
    v10 = v7;
    v11 = sub_2759B8988();
    v12 = sub_2759BA668();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 256);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v47 = v16;
      *v14 = 138412546;
      v17 = v1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v18;
      *v15 = v18;
      *(v14 + 12) = 2080;
      if (*(v13 + OBJC_IVAR____TtC14iCloudSettings6Action_urlString + 8))
      {
        v19 = *(v13 + OBJC_IVAR____TtC14iCloudSettings6Action_urlString);
        v20 = *(v13 + OBJC_IVAR____TtC14iCloudSettings6Action_urlString + 8);
      }

      else
      {
        v20 = 0xE300000000000000;
        v19 = 7104878;
      }

      v32 = sub_2758937B8(v19, v20, &v47);

      *(v14 + 14) = v32;
      _os_log_impl(&dword_275819000, v11, v12, "showFamilyUsageLiftUI: error while loading liftui: %@ url: %s", v14, 0x16u);
      sub_27586BF04(v15, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x277C85860](v16, -1, -1);
      MEMORY[0x277C85860](v14, -1, -1);
    }

    v33 = *(v0 + 376);
    v34 = *(v0 + 368);
    v35 = *(v0 + 320);
    v36 = *(v0 + 480);
    v37 = *(v0 + 240);
    sub_2759BA4E8();
    v33(v35, 0, 1, v34);
    v38 = v37;
    v39 = sub_2759BA4B8();
    v40 = swift_allocObject();
    v41 = MEMORY[0x277D85700];
    v40[2] = v39;
    v40[3] = v41;
    v40[4] = v38;
    sub_27587D460(0, 0, v35, &unk_2759C90E8, v40);

    sub_2759BA4D8();
    v33(v35, 0, 1, v34);
    v42 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v43 + 24) = 0;
    *(v43 + 32) = v42;
    *(v43 + 40) = xmmword_2759C43F0;
    *(v43 + 56) = 10;
    *(v43 + 57) = v36;
    *(v43 + 58) = 0;
    *(v43 + 64) = 2;
    *(v43 + 72) = 0;
    *(v43 + 80) = xmmword_2759C8C90;
    *(v43 + 96) = 10;
    sub_275931D20(0, 0, v35, &unk_2759C90F0, v43);

    sub_27586BF04(v35, &unk_280A0E510, &qword_2759C33C0);
  }

  else
  {
    v21 = *(v0 + 376);
    v22 = *(v0 + 360);
    v23 = *(v0 + 368);
    v46 = *(v0 + 432);
    v24 = *(v0 + 320);
    v25 = *(v0 + 240);
    sub_2759BA4E8();
    v21(v24, 0, 1, v23);
    v26 = v25;
    v27 = v22;
    v28 = v5;
    sub_2758755BC(v3, v2);
    v29 = sub_2759BA4B8();
    v30 = swift_allocObject();
    v31 = MEMORY[0x277D85700];
    v30[2] = v29;
    v30[3] = v31;
    v30[4] = v26;
    v30[5] = v3;
    v30[6] = v2;
    v30[7] = v28;
    v30[8] = v27;
    sub_27587D460(0, 0, v24, &unk_2759C9100, v30);

    sub_27585A900(v3, v2);
  }

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_275916EF4()
{
  (*(v0[37] + 8))(v0[38], v0[36]);
  v0[59] = v0[58];
  v1 = v0[43];
  v2 = v0[44];

  return MEMORY[0x2822009F8](sub_275916F70, v1, v2);
}

uint64_t sub_275916F70()
{
  v34 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 408);
  v3 = *(v0 + 360);

  v4 = *(v0 + 472);
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 256);
  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_280A238A0);
  v7 = v4;
  v8 = v5;
  v9 = sub_2759B8988();
  v10 = sub_2759BA668();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 256);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v12 = 138412546;
    v15 = v4;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v16;
    *v13 = v16;
    *(v12 + 12) = 2080;
    if (*(v11 + OBJC_IVAR____TtC14iCloudSettings6Action_urlString + 8))
    {
      v17 = *(v11 + OBJC_IVAR____TtC14iCloudSettings6Action_urlString);
      v18 = *(v11 + OBJC_IVAR____TtC14iCloudSettings6Action_urlString + 8);
    }

    else
    {
      v18 = 0xE300000000000000;
      v17 = 7104878;
    }

    v19 = sub_2758937B8(v17, v18, &v33);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_275819000, v9, v10, "showFamilyUsageLiftUI: error while loading liftui: %@ url: %s", v12, 0x16u);
    sub_27586BF04(v13, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x277C85860](v14, -1, -1);
    MEMORY[0x277C85860](v12, -1, -1);
  }

  v20 = *(v0 + 376);
  v21 = *(v0 + 368);
  v22 = *(v0 + 320);
  v23 = *(v0 + 480);
  v24 = *(v0 + 240);
  sub_2759BA4E8();
  v20(v22, 0, 1, v21);
  v25 = v24;
  v26 = sub_2759BA4B8();
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  v27[2] = v26;
  v27[3] = v28;
  v27[4] = v25;
  sub_27587D460(0, 0, v22, &unk_2759C90E8, v27);

  sub_2759BA4D8();
  v20(v22, 0, 1, v21);
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v29;
  *(v30 + 40) = xmmword_2759C43F0;
  *(v30 + 56) = 10;
  *(v30 + 57) = v23;
  *(v30 + 58) = 0;
  *(v30 + 64) = 2;
  *(v30 + 72) = 0;
  *(v30 + 80) = xmmword_2759C8C90;
  *(v30 + 96) = 10;
  sub_275931D20(0, 0, v22, &unk_2759C90F0, v30);

  sub_27586BF04(v22, &unk_280A0E510, &qword_2759C33C0);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_275917370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[41] = a7;
  v8[42] = a8;
  v8[39] = a5;
  v8[40] = a6;
  v8[38] = a4;
  v8[43] = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10DE0, &unk_2759CF4C0);
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();
  v8[46] = type metadata accessor for ManageStorageLiftUIDrilldownView(0);
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  sub_2759BA4C8();
  v8[49] = sub_2759BA4B8();
  v10 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27591749C, v10, v9);
}

uint64_t sub_27591749C()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);
  v27 = *(v0 + 336);
  v3 = *(v0 + 320);
  v4 = *(v0 + 312);
  v25 = *(v0 + 328);
  v26 = *(v0 + 304);

  sub_2759B8C08();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  swift_allocObject();
  v5 = sub_2759B8BF8();
  *(v0 + 248) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E7F0, &unk_2759C1230);
  sub_2759B9D58();
  v6 = *(v0 + 120);
  v7 = *(v1 + 36);
  *(v2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  swift_storeEnumTagMultiPayload();
  *(v0 + 136) = v4;
  *(v0 + 144) = v3;
  sub_2758755BC(v4, v3);
  sub_2759B9D58();
  v8 = *(v0 + 112);
  *v2 = *(v0 + 96);
  *(v2 + 16) = v8;
  *(v0 + 256) = v25;
  type metadata accessor for ManageStorageAppViewModel(0);
  v9 = v25;
  sub_2759B9D58();
  v10 = *(v0 + 160);
  *(v2 + 24) = *(v0 + 152);
  *(v2 + 32) = v10;
  *(v0 + 264) = v26;
  v11 = v26;
  sub_2759B9D58();

  *(v2 + 40) = *(v0 + 168);
  *(v0 + 272) = v27;
  v12 = v27;
  sub_2759B9D58();
  v13 = *(v0 + 192);
  *(v2 + 56) = *(v0 + 184);
  *(v2 + 64) = v13;
  *(v0 + 280) = v5;

  sub_2759B9D58();
  v15 = *(v0 + 200);
  v14 = *(v0 + 208);
  *(v2 + 72) = v15;
  *(v2 + 80) = v14;
  *(v0 + 216) = v15;
  *(v0 + 224) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE98, &unk_2759C59F0);
  sub_2759B9D68();
  sub_27586FBC8(v0 + 16, v0 + 56, &qword_280A0FEA0, &qword_2759CF500);
  v16 = *(v0 + 80);
  v17 = *(v0 + 360);
  if (v16)
  {
    __swift_project_boxed_opaque_existential_1((v0 + 56), v16);

    sub_2759B8B08();
    v18 = sub_2759B8AF8();
    (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  else
  {

    sub_27586BF04(v0 + 56, &qword_280A0FEA0, &qword_2759CF500);
    v18 = sub_2759B8AF8();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  }

  v19 = *(v0 + 384);
  v20 = *(v0 + 352);
  v24 = *(v0 + 376);
  v21 = *(v0 + 304);
  sub_2759B8C28();

  *(v0 + 232) = v15;
  *(v0 + 240) = v14;
  sub_2759B9D68();

  sub_2758F649C();
  sub_2759BA208();

  sub_2759B8AF8();
  (*(*(v18 - 8) + 56))(v20, 0, 1, v18);
  sub_2759B8C28();

  sub_27586BF04(v0 + 16, &qword_280A0FEA0, &qword_2759CF500);
  sub_2758D5EC4(v24, v19);
  sub_27591C050(v19, sub_27591EF34);
  sub_27591EED8(v19);
  [v21 didStopLoadingWithView_];

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_27591797C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_2759BA4C8();
  *(v4 + 24) = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275917A14, v6, v5);
}

uint64_t sub_275917A14()
{
  v1 = *(v0 + 16);

  [v1 didStopLoadingWithView_];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_275917A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_2759BA4C8();
  v4[3] = sub_2759BA4B8();
  v6 = sub_2759BA468();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_275917B20, v6, v5);
}

uint64_t sub_275917B20()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_pushingLoadingTask;
  v0[6] = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_pushingLoadingTask;
  v3 = *(v1 + v2);
  v0[7] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[8] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EEF0, &qword_2759CF390);
    *v4 = v0;
    v4[1] = sub_275917C5C;
    v6 = MEMORY[0x277D84950];
    v7 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200430](v5, v3, v7, v5, v6);
  }

  else
  {

    *(v0[2] + v0[6]) = 0;

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_275917C5C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_275917E0C;
  }

  else
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_275917D8C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_275917D8C()
{

  *(v0[2] + v0[6]) = 0;

  v1 = v0[1];

  return v1();
}

uint64_t sub_275917E0C()
{

  *(v0[2] + v0[6]) = 0;

  v1 = v0[1];

  return v1();
}

uint64_t sub_275917E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2759BA4C8();
  v5[4] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275917F18, v7, v6);
}

uint64_t sub_275917F18()
{
  v6 = v0;
  v1 = *(v0 + 24);

  v4 = 7;
  v5 = 7;
  sub_27590A460(v1, 1, &v4, &v5, 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_275917FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  sub_2759BA4C8();
  v5[13] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275918040, v7, v6);
}

uint64_t sub_275918040()
{
  v1 = v0[11];

  swift_getKeyPath();
  v0[7] = v1;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v2 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__privateRelayViewModel;
  swift_beginAccess();
  sub_27586E058(v1 + v2, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A10DD0, &qword_2759C8FE0);
  sub_275861AF8(0, qword_280A0F010, 0x277D7F4A8);
  if (swift_dynamicCast())
  {
    v3 = v0[10];
    v4 = v0[11];
    sub_275879D38([objc_allocWithZone(MEMORY[0x277D7F4A0]) initWithViewModel:v3 accountManager:*(v4 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_accountManager)]);
    swift_getKeyPath();
    v0[2] = v4;
    sub_2759B8638();

    v5 = *(v4 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__privateRelayViewController);
    if (v5)
    {
      v6 = v0[12];
      v7 = v5;
      sub_27590C4A0(v7, 1, v6, 0xD000000000000018, 0x80000002759E1680);
    }
  }

  else
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v8 = sub_2759B89A8();
    __swift_project_value_buffer(v8, qword_280A238A0);
    v3 = sub_2759B8988();
    v9 = sub_2759BA648();
    if (os_log_type_enabled(v3, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_275819000, v3, v9, "Unable to show ICQ private relay view without ICQ version of the view model.", v10, 2u);
      MEMORY[0x277C85860](v10, -1, -1);
    }
  }

  v11 = v0[1];

  return v11();
}

void sub_275918310(char a1, void *a2)
{
  if (a1)
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v2 = sub_2759B89A8();
    __swift_project_value_buffer(v2, qword_2815ADE70);
    oslog = sub_2759B8988();
    v3 = sub_2759BA668();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_275819000, oslog, v3, "Successfully launched premiumApp.", v4, 2u);
LABEL_13:
      MEMORY[0x277C85860](v4, -1, -1);
    }
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v6 = sub_2759B89A8();
    __swift_project_value_buffer(v6, qword_2815ADE70);
    v7 = a2;
    oslog = sub_2759B8988();
    v8 = sub_2759BA648();

    if (os_log_type_enabled(oslog, v8))
    {
      v4 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v4 = 138412290;
      if (a2)
      {
        v10 = a2;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        v12 = v11;
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }

      *(v4 + 4) = v11;
      *v9 = v12;
      _os_log_impl(&dword_275819000, oslog, v8, "Failed to launch premiumApp with error: %@", v4, 0xCu);
      sub_27586BF04(v9, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v9, -1, -1);
      goto LABEL_13;
    }
  }
}

uint64_t sub_275918520(void *a1, uint64_t a2, uint64_t a3)
{
  v26[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v26 - v6;
  v8 = sub_2759B8508();
  v26[0] = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2759B8768();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v26 - v16;
  v18 = a1;
  sub_2759B8738();
  if (a2)
  {
    *&v27[0] = 1752457584;
    *(&v27[0] + 1) = 0xE400000000000000;

    sub_2759BA878();
    if (*(a2 + 16) && (v19 = sub_2758A24F8(v28), (v20 & 1) != 0))
    {
      sub_275864C94(*(a2 + 56) + 32 * v19, &v29);
      sub_275864C40(v28);
      if (swift_dynamicCast())
      {
        sub_2759B84F8();

        v21 = v26[0];
        if ((*(v26[0] + 48))(v7, 1, v8) == 1)
        {
          sub_27586BF04(v7, &unk_280A0EB10, &qword_2759C0740);
        }

        else
        {
          (*(v21 + 32))(v10, v7, v8);
          *&v29 = 1752457584;
          *(&v29 + 1) = 0xE400000000000000;
          sub_2759BA878();
          v23 = sub_2759B84A8();
          v30 = MEMORY[0x277D837D0];
          *&v29 = v23;
          *(&v29 + 1) = v24;
          sub_2758A2ECC(&v29, v27);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v31 = a2;
          sub_275906E88(v27, v28, isUniquelyReferenced_nonNull_native);
          sub_275864C40(v28);
          (*(v21 + 8))(v10, v8);
        }
      }
    }

    else
    {
      sub_275864C40(v28);
    }

    sub_2759B8728();
    (*(v12 + 8))(v17, v11);
    (*(v12 + 32))(v17, v15, v11);
  }

  sub_27591EFC0(&unk_280A10030, MEMORY[0x277D40250], MEMORY[0x277D40258]);
  sub_2759B87A8();
  return (*(v12 + 8))(v17, v11);
}

uint64_t sub_275918944(uint64_t a1)
{
  v2 = sub_2759B8788();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = a1;
  type metadata accessor for ManageStorageLiftUIDrilldownView(0);
  sub_27591EFC0(&qword_280A10D98, type metadata accessor for ManageStorageLiftUIDrilldownView, &unk_2759CF830);
  sub_2759B8778();
  sub_27591EFC0(&unk_280A10D60, MEMORY[0x277D40260], MEMORY[0x277D40268]);
  sub_2759B87A8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_275918AC8(uint64_t a1)
{
  v2 = sub_2759B8788();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A12840, &qword_2759C8E78);
  sub_27591E3D8();
  sub_2759B8778();
  sub_27591EFC0(&unk_280A10D60, MEMORY[0x277D40260], MEMORY[0x277D40268]);
  sub_2759B87A8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_275918C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v4[3] = swift_task_alloc();
  v4[4] = sub_2759BA4C8();
  v4[5] = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275918D08, v6, v5);
}

uint64_t sub_275918D08()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_2759BA4E8();
  v3 = sub_2759BA518();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = v2;
  v5 = sub_2759BA4B8();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  *(v6 + 32) = v4;
  *(v6 + 40) = 0;
  sub_27587D460(0, 0, v1, &unk_2759C8E38, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_275918F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 208) = a6;
  *(v6 + 144) = a4;
  *(v6 + 152) = sub_2759BA4C8();
  *(v6 + 160) = sub_2759BA4B8();
  v8 = swift_task_alloc();
  *(v6 + 168) = v8;
  *v8 = v6;
  v8[1] = sub_275918FC4;

  return sub_27586AE94(a5);
}

uint64_t sub_275918FC4()
{
  v1 = *v0;

  v3 = sub_2759BA468();
  *(v1 + 176) = v3;
  *(v1 + 184) = v2;

  return MEMORY[0x2822009F8](sub_275919108, v3, v2);
}

uint64_t sub_275919108()
{
  v1 = *(v0 + 144);
  swift_getKeyPath();
  *(v0 + 136) = v1;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v2 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__manageSubsPresenter);
  *(v0 + 192) = v2;
  if (!v2)
  {

    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v10 = sub_2759B89A8();
    __swift_project_value_buffer(v10, qword_2815ADE70);
    v11 = sub_2759B8988();
    v12 = sub_2759BA648();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_275819000, v11, v12, "Manage subs presenter is unavailable. Bailing!", v13, 2u);
      MEMORY[0x277C85860](v13, -1, -1);
    }

    v14 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  v3 = *(v0 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A10DA0, &qword_2759C8EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C17A0;
  *(v0 + 120) = 0x656372756F73;
  *(v0 + 128) = 0xE600000000000000;
  v5 = v2;
  v6 = MEMORY[0x277D837D0];
  sub_2759BA878();
  v7 = 0x74536567616E616DLL;
  if (v3)
  {
    v7 = 0x6F4864756F6C4369;
  }

  v8 = 0xED0000656761726FLL;
  *(inited + 96) = v6;
  if (v3)
  {
    v8 = 0xEA0000000000656DLL;
  }

  *(inited + 72) = v7;
  *(inited + 80) = v8;
  sub_2758A31E8(inited);
  swift_setDeallocating();
  sub_27586BF04(inited + 32, &qword_280A0F3E0, &qword_2759C39A0);
  v9 = sub_2759BA1C8();

  [v5 setClientOptions_];

  return MEMORY[0x2822009F8](sub_275919428, 0, 0);
}

uint64_t sub_275919428(uint64_t a1)
{
  *(v1 + 200) = sub_2759BA4B8();
  v3 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2759194B4, v3, v2);
}

uint64_t sub_2759194B4()
{
  v1 = v0[24];

  v2.n128_f64[0] = sub_27590C4A0(v1, 1, 0, 0xD000000000000027, 0x80000002759E15F0);
  v3 = v0[22];
  v4 = v0[23];

  return MEMORY[0x2822009F8](sub_275919544, v3, v4, v2);
}

uint64_t sub_275919544()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2759195AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_2759BA4C8();
  v7[3] = sub_2759BA4B8();
  v11 = swift_task_alloc();
  v7[4] = v11;
  *v11 = v7;
  v11[1] = sub_2758CA09C;

  return sub_27590E9A4(a5, a6, a7);
}

Swift::Void __swiftcall iCloudHomeViewModel.showManageStorageView(deeplinkPath:)(Swift::String_optional deeplinkPath)
{
  object = deeplinkPath.value._object;
  countAndFlagsBits = deeplinkPath.value._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v49 - v5;
  v7 = sub_27587C10C();
  if (v7)
  {
    v8 = v7;
    v9 = objc_allocWithZone(type metadata accessor for ManageStorageAppsListViewModel(0));
    v10 = v1;
    v11 = v8;
    v12 = sub_2758A5B3C(v11, v10, 0);
    swift_getKeyPath();
    v51[0] = v10;
    sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
    sub_2759B8638();

    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();
    v14 = sub_2759BA518();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    sub_2759BA4C8();
    v15 = v12;
    v16 = sub_2759BA4B8();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v15;
    sub_27587D460(0, 0, v6, &unk_2759C58F0, v17);

    swift_getKeyPath();
    v51[0] = v10;
    sub_2759B8638();

    v19 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();

    v20 = v15;
    v21 = sub_275981D38(v20);
    v23 = v22;
    LOBYTE(v19) = v24;
    v26 = v25;

    sub_27591B960(v21, v23, v19 & 1, v26);

    if (!object)
    {
LABEL_20:

      return;
    }

    v51[0] = countAndFlagsBits;
    v51[1] = object;
    v30 = sub_27589F2D4(v27, v28, v29);
    v31 = MEMORY[0x277C845A0](47, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v30);
    v32 = *(v31 + 16);
    if (!v32)
    {
LABEL_19:

      goto LABEL_20;
    }

    v33 = (v31 + 32 * v32);
    v34 = *v33;
    v35 = v33[1];
    v36 = v33[2];
    v37 = v33[3];

    v38 = MEMORY[0x277C840B0](v34, v35, v36, v37);
    v40 = v39;

    v41 = sub_2759BAA48();

    if (v41)
    {
      if (v41 == 2)
      {
        v42 = "AccountSettingsController";
        v38 = 0xD00000000000001ALL;
      }

      else
      {
        if (v41 != 1)
        {
LABEL_18:
          v48._countAndFlagsBits = v38;
          v48._object = v40;
          ManageStorageAppsListViewModel.showApp(bundleId:)(v48);
          goto LABEL_19;
        }

        v42 = "ings25ManageStorageConfirmation";
        v38 = 0xD000000000000016;
      }
    }

    else
    {
      v42 = "signpostController";
      v38 = 0xD000000000000019;
    }

    v40 = (v42 | 0x8000000000000000);
    goto LABEL_18;
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v43 = sub_2759B89A8();
  __swift_project_value_buffer(v43, qword_2815ADE70);
  v50 = sub_2759B8988();
  v44 = sub_2759BA648();
  if (os_log_type_enabled(v50, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v51[0] = v46;
    *v45 = 136315138;
    *(v45 + 4) = sub_2758937B8(0xD000000000000024, 0x80000002759E14A0, v51);
    _os_log_impl(&dword_275819000, v50, v44, "Unable to find account, bailing %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x277C85860](v46, -1, -1);
    MEMORY[0x277C85860](v45, -1, -1);
  }

  else
  {
    v47 = v50;
  }
}

void sub_275919BC4(uint64_t a1)
{
  v2 = sub_2759B8508();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_2815ADE70);
  (*(v3 + 16))(v5, a1, v2);
  v7 = sub_2759B8988();
  v8 = sub_2759BA668();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = sub_2759B8488();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_2758937B8(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_275819000, v7, v8, "Presented Safari Web View Controller with url: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x277C85860](v10, -1, -1);
    MEMORY[0x277C85860](v9, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_275919E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[6] = sub_2759BA4C8();
  v5[7] = sub_2759BA4B8();
  v7 = sub_2759BA468();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x2822009F8](sub_275919F14, v7, v6);
}

uint64_t sub_275919F14()
{
  v1 = v0[4];
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel___observationRegistrar;
  v0[2] = v1;
  v0[10] = v2;
  v0[11] = sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v3 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__commerceFlowManager;
  v0[12] = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__commerceFlowManager;
  v4 = *(v1 + v3);
  v0[13] = v4;
  if (v4)
  {
    v4;
    v5 = swift_task_alloc();
    v0[14] = v5;
    *v5 = v0;
    v5[1] = sub_27591A144;
    v6 = v0[5];

    return sub_2758F11A4(v6);
  }

  else
  {

    if (qword_280A0E358 != -1)
    {
      swift_once();
    }

    v8 = sub_2759B89A8();
    __swift_project_value_buffer(v8, qword_280A238E8);
    v9 = sub_2759B8988();
    v10 = sub_2759BA648();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_275819000, v9, v10, "Unable to get presenter type for AMS. Bailing.", v11, 2u);
      MEMORY[0x277C85860](v11, -1, -1);
    }

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_27591A144(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 104);
  *(v4 + 120) = a1;
  *(v4 + 152) = a2;

  v6 = *(v3 + 72);
  v7 = *(v3 + 64);

  return MEMORY[0x2822009F8](sub_27591A290, v7, v6);
}

uint64_t sub_27591A290()
{
  if (*(v0 + 152))
  {

    if (qword_280A0E358 != -1)
    {
      swift_once();
    }

    v1 = sub_2759B89A8();
    __swift_project_value_buffer(v1, qword_280A238E8);
    v2 = sub_2759B8988();
    v3 = sub_2759BA648();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_275819000, v2, v3, "Unable to get presenter type for AMS. Bailing.", v4, 2u);
      MEMORY[0x277C85860](v4, -1, -1);
    }

    v5 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  v6 = *(v0 + 96);
  v7 = *(v0 + 32);
  swift_getKeyPath();
  *(v0 + 24) = v7;
  sub_2759B8638();

  v8 = *(v7 + v6);
  *(v0 + 128) = v8;
  if (v8)
  {
    v8;
    v9 = swift_task_alloc();
    *(v0 + 136) = v9;
    *v9 = v0;
    v9[1] = sub_27591A4CC;
    v10 = *(v0 + 40);

    return sub_2758F0DF8(v10);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_27591A5E0, 0, 0);
  }
}

uint64_t sub_27591A4CC()
{
  v1 = *(*v0 + 128);

  return MEMORY[0x2822009F8](sub_27591A5E0, 0, 0);
}

uint64_t sub_27591A5E0(uint64_t a1)
{
  *(v1 + 144) = sub_2759BA4B8();
  v3 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27591A66C, v3, v2);
}

uint64_t sub_27591A66C()
{
  v1 = v0[15];
  v3 = v0[4];
  v2 = v0[5];

  sub_27591A780(v3, v2, v1);
  v4 = v0[8];
  v5 = v0[9];

  return MEMORY[0x2822009F8](sub_27591A720, v4, v5);
}

uint64_t sub_27591A720()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_27591A780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  v15[0] = a1;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v6 = *(a1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__commerceFlowManager);
  if (v6 && (v7 = v6, v8 = sub_2758F1618(a2, a3), v7, v8))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v15[4] = sub_27591A9CC;
      v15[5] = 0;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 1107296256;
      v15[2] = sub_27586249C;
      v15[3] = &block_descriptor_70;
      v11 = _Block_copy(v15);
      [v10 presentViewController:v8 animated:1 completion:v11];

      _Block_release(v11);
      v8 = v10;
    }
  }

  else
  {
    if (qword_280A0E358 != -1)
    {
      swift_once();
    }

    v12 = sub_2759B89A8();
    __swift_project_value_buffer(v12, qword_280A238E8);
    v8 = sub_2759B8988();
    v13 = sub_2759BA648();
    if (os_log_type_enabled(v8, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_275819000, v8, v13, "Unable to create a flow controller for AMS. Bailing.", v14, 2u);
      MEMORY[0x277C85860](v14, -1, -1);
    }
  }
}

void sub_27591A9F8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  if (qword_280A0E358 != -1)
  {
    swift_once();
  }

  v7 = sub_2759B89A8();
  __swift_project_value_buffer(v7, qword_280A238E8);
  v8 = a1;
  v9 = sub_2759B8988();
  v10 = sub_2759BA648();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    if (a1)
    {
      v13 = a1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      v15 = v14;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    *(v11 + 4) = v14;
    *v12 = v15;
    _os_log_impl(&dword_275819000, v9, v10, "Flow completed with error %@", v11, 0xCu);
    sub_27586BF04(v12, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v12, -1, -1);
    MEMORY[0x277C85860](v11, -1, -1);
  }

  if (!a1)
  {
    sub_2759BA4E8();
    v16 = sub_2759BA518();
    (*(*(v16 - 8) + 56))(v6, 0, 1, v16);
    sub_2759BA4C8();
    v17 = v2;
    v18 = sub_2759BA4B8();
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    *(v19 + 16) = v18;
    *(v19 + 24) = v20;
    *(v19 + 32) = v17;
    *(v19 + 40) = 0;
    sub_27587D460(0, 0, v6, &unk_2759C1E80, v19);
  }
}

uint64_t sub_27591AC74(uint64_t *a1)
{
  v2 = sub_2759B8788();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *a1;
  v9 = &v10;
  v10 = v6;
  sub_2759B8778();
  sub_27591EFC0(&unk_280A10D60, MEMORY[0x277D40260], MEMORY[0x277D40268]);
  sub_2759B87A8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_27591ADC8(uint64_t a1)
{
  v2 = sub_2759B8788();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v15[0] = *a1;
  v15[1] = v7;
  v16 = v8;
  v17 = v9;
  v14 = v15;
  sub_27591E140(v4, v10, v11);
  sub_2759B8778();
  sub_27591EFC0(&unk_280A10D60, MEMORY[0x277D40260], MEMORY[0x277D40268]);
  sub_2759B87A8();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_27591AF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;

  v6 = v3;
}

uint64_t sub_27591AF80(void *a1)
{
  v2 = sub_2759B8788();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = a1[1];
  v13[0] = *a1;
  v13[1] = v7;
  v12 = v13;
  sub_27591E0C8(v4, v8, v9);
  sub_2759B8778();
  sub_27591EFC0(&unk_280A10D60, MEMORY[0x277D40260], MEMORY[0x277D40268]);
  sub_2759B87A8();
  return (*(v3 + 8))(v6, v2);
}

void sub_27591B0D8(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v33 - v3;
  v5 = sub_2759B8508();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  if (!*&a1[OBJC_IVAR____TtC14iCloudSettings6Action_urlString + 8])
  {
    goto LABEL_4;
  }

  sub_2759B84F8();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_27586BF04(v4, &unk_280A0EB10, &qword_2759C0740);
LABEL_4:
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v12 = sub_2759B89A8();
    __swift_project_value_buffer(v12, qword_2815ADE70);
    v13 = a1;
    v14 = sub_2759B8988();
    v15 = sub_2759BA648();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_275819000, v14, v15, "No action url found. Unable to handle action: %@", v16, 0xCu);
      sub_27586BF04(v17, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v17, -1, -1);
      MEMORY[0x277C85860](v16, -1, -1);
    }

    return;
  }

  (*(v6 + 32))(v11, v4, v5);
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v19 = sub_2759B89A8();
  __swift_project_value_buffer(v19, qword_2815ADE70);
  (*(v6 + 16))(v9, v11, v5);
  v20 = sub_2759B8988();
  v21 = sub_2759BA668();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v22 = 136315138;
    sub_27591EFC0(&qword_280A10300, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v23 = sub_2759BAA98();
    v25 = v24;
    v26 = *(v6 + 8);
    v26(v9, v5);
    v27 = sub_2758937B8(v23, v25, &v34);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_275819000, v20, v21, "Launching web url: %s", v22, 0xCu);
    v28 = v33;
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x277C85860](v28, -1, -1);
    MEMORY[0x277C85860](v22, -1, -1);
  }

  else
  {

    v26 = *(v6 + 8);
    v26(v9, v5);
  }

  v29 = [objc_opt_self() defaultWorkspace];
  if (v29)
  {
    v30 = v29;
    v31 = sub_2759B84B8();
    sub_2758A2A88(MEMORY[0x277D84F90]);
    v32 = sub_2759BA1C8();

    [v30 openSensitiveURL:v31 withOptions:v32];

    v26(v11, v5);
  }

  else
  {
    __break(1u);
  }
}