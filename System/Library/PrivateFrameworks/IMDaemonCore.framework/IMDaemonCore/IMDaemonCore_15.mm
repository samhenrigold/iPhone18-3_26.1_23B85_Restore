uint64_t sub_22B7A316C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22B6F0AD4(&unk_27D8CDBE0, &qword_22B7FD3E0);
  result = sub_22B7DC478();
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
        sub_22B4D7F04((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_22B4DA0DC(v23, &v36);
        sub_22B4D1F68(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_22B7DC228();
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
      result = sub_22B4D7F04(v35, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_22B7A3424(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22B6F0AD4(&qword_27D8CDB58, &qword_22B7FA358);
  v33 = v4;
  result = sub_22B7DC478();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_22B4D7F04(v24, v34);
      }

      else
      {
        sub_22B4D1F68(v24, v34);
      }

      sub_22B7DC668();
      sub_22B7DB758();
      result = sub_22B7DC6B8();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_22B4D7F04(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_22B7A36DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_22B6F0AD4(&qword_27D8CF788, &unk_22B7FD3D0);
  v40 = v4;
  result = sub_22B7DC478();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
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
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_22B7A6368(v28, v41, type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata);
      }

      else
      {
        sub_22B7A6300(v28, v41, type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata);
      }

      sub_22B7DC668();
      sub_22B7DB758();
      result = sub_22B7DC6B8();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_22B7A6368(v41, *(v9 + 56) + v27 * v17, type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_22B7A3A68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_22B6F0AD4(a3, a4);
  v37 = v6;
  result = sub_22B7DC478();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
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
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_22B7DC668();
      sub_22B7DB758();
      result = sub_22B7DC6B8();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
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

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

void *sub_22B7A3D7C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v36 = a4;
  v7 = v4;
  v8 = a1(0);
  v35 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v34 = &v32 - v9;
  sub_22B6F0AD4(a2, a3);
  v10 = *v4;
  v11 = sub_22B7DC468();
  v12 = v11;
  if (*(v10 + 16))
  {
    v33 = v7;
    result = (v11 + 64);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 64 + 8 * v14)
    {
      result = memmove(result, (v10 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v37 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = *(v10 + 64);
    v20 = -1;
    if (v18 < 64)
    {
      v20 = ~(-1 << v18);
    }

    v21 = v20 & v19;
    v22 = (v18 + 63) >> 6;
    if ((v20 & v19) != 0)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
LABEL_17:
        v26 = v23 | (v16 << 6);
        v27 = *(*(v10 + 48) + 8 * v26);
        v28 = v34;
        v29 = *(v35 + 72) * v26;
        v30 = v36;
        sub_22B7A6300(*(v10 + 56) + v29, v34, v36);
        v31 = v37;
        *(*(v37 + 48) + 8 * v26) = v27;
        result = sub_22B7A6368(v28, *(v31 + 56) + v29, v30);
      }

      while (v21);
    }

    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v16 >= v22)
      {

        v7 = v33;
        v12 = v37;
        goto LABEL_21;
      }

      v25 = *(v10 + 64 + 8 * v16);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }

  return result;
}

id sub_22B7A3FBC()
{
  v1 = v0;
  sub_22B6F0AD4(&qword_27D8CDB88, &qword_22B7FA390);
  v2 = *v0;
  v3 = sub_22B7DC468();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

void *sub_22B7A411C()
{
  v1 = v0;
  sub_22B6F0AD4(&qword_27D8CDB80, &qword_22B7FA388);
  v2 = *v0;
  v3 = sub_22B7DC468();
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

void sub_22B7A428C()
{
  v1 = v0;
  sub_22B6F0AD4(&qword_27D8CF770, &qword_22B7FA3F8);
  v2 = *v0;
  v3 = sub_22B7DC468();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
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
}

id sub_22B7A43FC()
{
  v1 = v0;
  sub_22B6F0AD4(&qword_27D8CDB50, &qword_22B7FA350);
  v2 = *v0;
  v3 = sub_22B7DC468();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

void sub_22B7A456C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_22B6F0AD4(a1, a2);
  v4 = *v2;
  v5 = sub_22B7DC468();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
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
}

void sub_22B7A46E0()
{
  v1 = v0;
  sub_22B6F0AD4(&qword_27D8CDBB0, &unk_22B7FD3B0);
  v2 = *v0;
  v3 = sub_22B7DC468();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
}

void sub_22B7A4840()
{
  v1 = v0;
  sub_22B6F0AD4(&unk_27D8CF750, &unk_22B7FA378);
  v2 = *v0;
  v3 = sub_22B7DC468();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
}

void *sub_22B7A49A0()
{
  v1 = v0;
  sub_22B6F0AD4(&unk_27D8CDBE0, &qword_22B7FD3E0);
  v2 = *v0;
  v3 = sub_22B7DC468();
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
        sub_22B4DA0DC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_22B4D1F68(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_22B4D7F04(v22, (*(v4 + 56) + v17));
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

void sub_22B7A4B44()
{
  v1 = v0;
  sub_22B6F0AD4(&qword_27D8CDB58, &qword_22B7FA358);
  v2 = *v0;
  v3 = sub_22B7DC468();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_22B4D1F68(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_22B4D7F04(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_22B7A4CE8()
{
  v1 = v0;
  v2 = type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata(0);
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B6F0AD4(&qword_27D8CF788, &unk_22B7FD3D0);
  v4 = *v0;
  v5 = sub_22B7DC468();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = *(v4 + 56);
        v22 = (*(v4 + 48) + 16 * v19);
        v23 = v4;
        v24 = *v22;
        v25 = v22[1];
        v26 = v32;
        v27 = *(v33 + 72) * v19;
        sub_22B7A6300(v21 + v27, v32, type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata);
        v28 = v34;
        v29 = (*(v34 + 48) + v20);
        *v29 = v24;
        v29[1] = v25;
        v4 = v23;
        sub_22B7A6368(v26, *(v28 + 56) + v27, type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata);

        v14 = v35;
      }

      while (v35);
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

        v1 = v31;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

id sub_22B7A4F5C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_22B6F0AD4(a1, a2);
  v4 = *v2;
  v5 = sub_22B7DC468();
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

uint64_t sub_22B7A50B8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_22B7DC518() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_22B7DC518() & 1) == 0 || a1[4] != *(a2 + 32))
  {
    return 0;
  }

  v6 = a1[5];
  v7 = *(a2 + 40);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    sub_22B4D01A0(0, &qword_28141F1F0, 0x277CCA898);
    v8 = v7;
    v9 = v6;
    v10 = sub_22B7DBFD8();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (*(a1 + 48) != *(a2 + 48) || a1[7] != *(a2 + 56))
  {
    return 0;
  }

  type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata(0);

  return sub_22B7DA918();
}

id sub_22B7A51F8(uint64_t a1)
{
  result = [objc_opt_self() sharedInstance];
  v3 = result;
  if (a1 == 4)
  {
    if (result)
    {
      v4 = &selRef_chatBotRecoverableMessageRecordZoneID;
LABEL_6:
      v5 = [result *v4];

      return v5;
    }

    __break(1u);
  }

  else if (result)
  {
    v4 = &selRef_recoverableMessageRecordZoneID;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata(uint64_t a1)
{
  result = qword_27D8CF720;
  if (!qword_27D8CF720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B7A52D4(uint64_t a1)
{
  v2 = type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_22B7A5330(uint64_t a1)
{
  result = [objc_opt_self() sharedInstance];
  v3 = result;
  if (a1 == 4)
  {
    if (result)
    {
      v4 = &selRef_chatBotRecoverableMessageRecordZone;
LABEL_6:
      v5 = [result *v4];

      return v5;
    }

    __break(1u);
  }

  else if (result)
  {
    v4 = &selRef_recoverableMessageRecordZone;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_22B7A53C0(void *a1, void *a2)
{
  v5 = type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v61[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v61[-1] - v10;
  v12 = [a1 recordName];
  v13 = sub_22B7DB6A8();
  v15 = v14;

  v16 = OBJC_IVAR___IMDRecoverableMessageStore_metadataByRecordNameMap;
  swift_beginAccess();
  v24 = *(v2 + v16);
  if (*(v24 + 16))
  {
    v25 = sub_22B723648(v13, v15);
    v27 = v26;
    v15, v26, v28, v29, v30, v31, v32, v33, v60, v61[0];
    if (v27)
    {
      sub_22B7A6300(*(v24 + 56) + *(v6 + 72) * v25, v9, type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata);
      sub_22B7A6368(v9, v11, type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata);
      swift_endAccess();
      if (qword_28141F368 != -1)
      {
        swift_once();
      }

      v34 = sub_22B7DB2B8();
      sub_22B4CFA74(v34, qword_281422608);
      v35 = a2;
      v36 = sub_22B7DB298();
      v37 = sub_22B7DBC98();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138412290;
        v40 = a2;
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v38 + 4) = v41;
        *v39 = v41;
        _os_log_impl(&dword_22B4CC000, v36, v37, "Encountered error during recoverableMessage write %@, updating status to synced", v38, 0xCu);
        sub_22B4D0D64(v39, &unk_27D8CEC60, &qword_22B7F9E20);
        MEMORY[0x231898D60](v39, -1, -1);
        MEMORY[0x231898D60](v38, -1, -1);
      }

      [objc_msgSend(objc_opt_self() database)];
      swift_unknownObjectRelease();
      sub_22B7A52D4(v11);
      return;
    }
  }

  else
  {
    v15, v17, v18, v19, v20, v21, v22, v23, v60, v61[0];
  }

  swift_endAccess();
  if (qword_28141F368 != -1)
  {
    swift_once();
  }

  v42 = sub_22B7DB2B8();
  sub_22B4CFA74(v42, qword_281422608);
  v43 = a1;
  v44 = sub_22B7DB298();
  v45 = sub_22B7DBC98();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v61[0] = v47;
    *v46 = 136315138;
    v48 = [v43 recordName];
    v49 = sub_22B7DB6A8();
    v51 = v50;

    v52 = sub_22B4CFAAC(v49, v51, v61);
    v51, v53, v54, v55, v56, v57, v58, v59, v60, v61[0];
    *(v46 + 4) = v52;
    _os_log_impl(&dword_22B4CC000, v44, v45, "No record metadata for recordName: %s!", v46, 0xCu);
    sub_22B4CFB78(v47);
    MEMORY[0x231898D60](v47, -1, -1);
    MEMORY[0x231898D60](v46, -1, -1);
  }
}

id sub_22B7A580C(uint64_t a1, void *a2)
{
  if (!a2)
  {
    if (qword_28141F368 != -1)
    {
      swift_once();
    }

    v108 = sub_22B7DB2B8();
    sub_22B4CFA74(v108, qword_281422608);
    v109 = sub_22B7DB298();
    v110 = sub_22B7DBC98();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&dword_22B4CC000, v109, v110, "Recoverable Message Zone is nil in IMDRecordZoneManager", v111, 2u);
      MEMORY[0x231898D60](v111, -1, -1);
    }

    return 0;
  }

  v151 = 0x476567617373656DLL;
  v3 = a2;
  sub_22B7DC248();
  if (!*(a1 + 16) || (v4 = sub_22B4D7EC0(&v161), (v5 & 1) == 0))
  {
    sub_22B4DA138(&v161);
    goto LABEL_16;
  }

  sub_22B4D1F68(*(a1 + 56) + 32 * v4, v163);
  sub_22B4DA138(&v161);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    if (qword_28141F368 != -1)
    {
      swift_once();
    }

    v71 = sub_22B7DB2B8();
    sub_22B4CFA74(v71, qword_281422608);
    v72 = v3;

    v73 = sub_22B7DB298();
    v74 = sub_22B7DBC98();
    a1, v75, v76, v77, v78, v79, v80, v81, v142, v151;

    if (os_log_type_enabled(v73, v74))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v161 = v83;
      *v82 = 136315394;
      v84 = [v72 zoneID];
      v85 = [v84 zoneName];

      v86 = sub_22B7DB6A8();
      v88 = v87;

      v89 = sub_22B4CFAAC(v86, v88, &v161);
      v88, v90, v91, v92, v93, v94, v95, v96, v146, v156;
      *(v82 + 4) = v89;
      *(v82 + 12) = 2080;
      v97 = sub_22B7DB598();
      v99 = v98;
      v100 = sub_22B4CFAAC(v97, v98, &v161);
      v99, v101, v102, v103, v104, v105, v106, v107, v147, v157;
      *(v82 + 14) = v100;
      _os_log_impl(&dword_22B4CC000, v73, v74, "Could not create CKRecord in zone %s for tombstone dictionary %s", v82, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v83, -1, -1);
      MEMORY[0x231898D60](v82, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v152 = 0x4449554774616863;
  sub_22B7DC248();
  if (!*(a1 + 16) || (v6 = sub_22B4D7EC0(&v161), (v7 & 1) == 0))
  {
    sub_22B4DA138(&v161);
    goto LABEL_28;
  }

  sub_22B4D1F68(*(a1 + 56) + 32 * v6, v163);
  sub_22B4DA138(&v161);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    0xEB00000000444955, v8, v9, v10, v11, v12, v13, v14, v142, v152;
    goto LABEL_16;
  }

  sub_22B7DC248();
  if (!*(a1 + 16) || (v15 = sub_22B4D7EC0(&v161), (v16 & 1) == 0))
  {
    sub_22B4DA138(&v161);
    goto LABEL_30;
  }

  sub_22B4D1F68(*(a1 + 56) + 32 * v15, v163);
  sub_22B4DA138(&v161);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:
    0xE800000000000000, v17, v18, v19, v20, v21, v22, v23, v142, 0x65646E4974726170;
    goto LABEL_28;
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v25 = result;
    v26 = [result cachedSalt];

    if (v26)
    {
      v161 = 0x476567617373656DLL;
      v162 = 0xEB00000000444955;

      MEMORY[0x231895140](43, 0xE100000000000000);
      MEMORY[0x231895140](0x4449554774616863, 0xE800000000000000);
      0xE800000000000000, v34, v35, v36, v37, v38, v39, v40, v142, 0x65646E4974726170;
      MEMORY[0x231895140](43, 0xE100000000000000);
      v163[0] = 0x65646E4974726170;
      v41 = sub_22B7DC4E8();
      v43 = v42;
      MEMORY[0x231895140](v41);
      v43, v44, v45, v46, v47, v48, v49, v50, v143, v153;
      v51 = v162;
      v52 = [v3 zoneID];
      v53 = objc_opt_self();
      v54 = v52;
      v55 = sub_22B7DB678();
      v51, v56, v57, v58, v59, v60, v61, v62, v144, v154;
      v63 = [v53 recordIDUsingSalt:v26 zoneID:v54 guid:v55];

      if (v63)
      {

        return v63;
      }

      0xEB00000000444955, v64, v65, v66, v67, v68, v69, v70, v145, v155;
      if (qword_28141F368 != -1)
      {
        swift_once();
      }

      v119 = sub_22B7DB2B8();
      sub_22B4CFA74(v119, qword_281422608);

      v120 = sub_22B7DB298();
      v121 = sub_22B7DBC98();
      a1, v122, v123, v124, v125, v126, v127, v128, v149, v159;
      if (os_log_type_enabled(v120, v121))
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v161 = v130;
        *v129 = 136315138;
        v131 = sub_22B7DB598();
        v133 = v132;
        v134 = sub_22B4CFAAC(v131, v132, &v161);
        v133, v135, v136, v137, v138, v139, v140, v141, v150, v160;
        *(v129 + 4) = v134;
        _os_log_impl(&dword_22B4CC000, v120, v121, "Recently deleted: returning nil record. recordID nil for metadata: %s", v129, 0xCu);
        sub_22B4CFB78(v130);
        MEMORY[0x231898D60](v130, -1, -1);
        MEMORY[0x231898D60](v129, -1, -1);
      }

      return 0;
    }

    0xEB00000000444955, v27, v28, v29, v30, v31, v32, v33, v142, 0x65646E4974726170;
    0xE800000000000000, v112, v113, v114, v115, v116, v117, v118, v148, v158;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t _s12IMDaemonCore23RecoverableMessageStoreC15clearTombstones12forRecordIDsySaySo10CKRecordIDCG_tF_0(IMDScheduledMessageCoordinator *a1)
{
  if (qword_28141F368 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_281422608);

  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();
  a1, v5, v6, v7, v8, v9, v10, v11, v27, v29;
  if (os_log_type_enabled(v3, v4))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136315138;
    v14 = sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
    v15 = MEMORY[0x2318952A0](a1, v14);
    v17 = v16;
    v18 = sub_22B4CFAAC(v15, v16, &v29);
    v17, v19, v20, v21, v22, v23, v24, v25, v28, v29;
    *(v12 + 4) = v18;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Clearing recoverable message tombstones for recordIDs: %s", v12, 0xCu);
    sub_22B4CFB78(v13);
    MEMORY[0x231898D60](v13, -1, -1);
    MEMORY[0x231898D60](v12, -1, -1);
  }

  [objc_msgSend(objc_opt_self() synchronousDatabase)];

  return swift_unknownObjectRelease();
}

void sub_22B7A6188(uint64_t a1)
{
  sub_22B7A623C(319);
  if (v1 <= 0x3F)
  {
    sub_22B7DA968();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22B7A623C(uint64_t a1)
{
  if (!qword_27D8CF730)
  {
    sub_22B4D01A0(255, &qword_28141F1F0, 0x277CCA898);
    v1 = sub_22B7DC018();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8CF730);
    }
  }
}

uint64_t sub_22B7A62A4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22B705E98(result, a2);
  }

  return result;
}

uint64_t sub_22B7A62B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B7A6300(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B7A6368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B7A63D0()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_28141F4B0);
  sub_22B4CFA74(v0, qword_28141F4B0);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B7A6440()
{
  v1 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v25 - v5;
  sub_22B6F0AD4(&qword_27D8CD660, &unk_22B7F9760);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22B7F97B0;
  *(v7 + 56) = sub_22B4D01A0(0, &unk_28141F1B8, 0x277CC3400);
  *(v7 + 64) = sub_22B7AA56C();
  *(v7 + 32) = v0;
  v8 = v0;
  v9 = [v8 url];
  if (v9)
  {
    v10 = v9;
    sub_22B7DA7D8();

    v11 = sub_22B7DA828();
    (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
  }

  else
  {
    v11 = sub_22B7DA828();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  }

  sub_22B7AA5D4(v4, v6);
  sub_22B7DA828();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_22B4D0D64(v6, &qword_27D8CFC90, &unk_22B7FE140);
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v13 = sub_22B7DA748();
    v14 = v15;
    (*(v12 + 8))(v6, v11);
  }

  v16 = MEMORY[0x277D837D0];
  *(v7 + 96) = MEMORY[0x277D837D0];
  v17 = sub_22B704A5C();
  *(v7 + 104) = v17;
  if (v14)
  {
    v18 = v13;
  }

  else
  {
    v18 = 0x296C6C756E28;
  }

  v19 = 0xE600000000000000;
  if (v14)
  {
    v19 = v14;
  }

  *(v7 + 72) = v18;
  *(v7 + 80) = v19;
  v20 = [v8 error];
  if (!v20)
  {
    v23 = (v7 + 112);
    *(v7 + 136) = v16;
    *(v7 + 144) = v17;
    goto LABEL_16;
  }

  v25[1] = v20;
  sub_22B6F0AD4(&unk_27D8CD800, &qword_22B7FA0C0);
  v21 = sub_22B7DB6E8();
  v23 = (v7 + 112);
  *(v7 + 136) = v16;
  *(v7 + 144) = v17;
  if (!v22)
  {
LABEL_16:
    *v23 = 0x296C6C756E28;
    v22 = 0xE600000000000000;
    goto LABEL_17;
  }

  *v23 = v21;
LABEL_17:
  *(v7 + 120) = v22;
  return sub_22B7DB6B8();
}

void sub_22B7A675C()
{
  v1 = v0;
  v2 = sub_22B7DBD48();
  v18 = *(v2 - 8);
  v19 = v2;
  MEMORY[0x28223BE20](v2);
  v17 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22B7DBD38();
  MEMORY[0x28223BE20](v4);
  v5 = sub_22B7DB398();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = OBJC_IVAR___IMDSpotlightDaemonClient_indexes;
  v7 = MEMORY[0x277D84F90];
  *&v0[v6] = sub_22B71EA7C(MEMORY[0x277D84F90]);
  v8 = OBJC_IVAR___IMDSpotlightDaemonClient_interestingProtectionClasses;
  sub_22B6F0AD4(&unk_27D8CEA00, &qword_22B7F98C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B7F93B0;
  *(inited + 32) = sub_22B7DB6A8();
  *(inited + 40) = v10;
  v11 = sub_22B7179DC(inited);
  swift_setDeallocating();
  sub_22B74763C(inited + 32);
  *&v0[v8] = v11;
  v16 = OBJC_IVAR___IMDSpotlightDaemonClient_queue;
  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  sub_22B7DACD8();
  v21 = v7;
  sub_22B76CBD8(&unk_28141F220, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_22B6F0AD4(&qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B4D1110(&qword_28141F2C0, &qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B7DC138();
  (*(v18 + 104))(v17, *MEMORY[0x277D85260], v19);
  *&v0[v16] = sub_22B7DBD88();
  v12 = [objc_opt_self() sharedFeatureFlags];
  LODWORD(v8) = [v12 isSpotlightDaemonDelegateEnabled];

  if (v8)
  {
    v13 = [objc_allocWithZone(MEMORY[0x277D18EA0]) init];
    *&v1[OBJC_IVAR___IMDSpotlightDaemonClient_importer] = v13;
    v20.receiver = v1;
    v20.super_class = IMDSpotlightDaemonClient;
    v14 = objc_msgSendSuper2(&v20, sel_init);
    [*&v14[OBJC_IVAR___IMDSpotlightDaemonClient_importer] setDelegate_];
  }

  else
  {
    __break(1u);
  }
}

id sub_22B7A6B14(uint64_t a1, IMDScheduledMessageCoordinator *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___IMDSpotlightDaemonClient_indexes;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (*(v7 + 16) && (v8 = sub_22B723648(a1, a2), (v9 & 1) != 0))
  {
    v26 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();

    return v26;
  }

  else
  {
    swift_endAccess();
    v11 = objc_allocWithZone(MEMORY[0x277CC34A8]);
    v12 = sub_22B7DB678();
    v13 = sub_22B7DB678();
    v14 = [v11 initWithName:v12 bundleIdentifier:v13];

    swift_beginAccess();

    v15 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(v3 + v6);
    *(v3 + v6) = 0x8000000000000000;
    sub_22B769430(v15, a1, a2, isUniquelyReferenced_nonNull_native);
    a2, v17, v18, v19, v20, v21, v22, v23, v24, v25;
    *(v3 + v6) = v27;
    swift_endAccess();
    return v15;
  }
}

void sub_22B7A6CA4(void *a1, IMDScheduledMessageCoordinator *a2, void *a3, IMDScheduledMessageCoordinator *a4, uint64_t a5, uint64_t a6)
{
  if (qword_28141F4A8 != -1)
  {
    swift_once();
  }

  v12 = sub_22B7DB2B8();
  sub_22B4CFA74(v12, qword_28141F4B0);

  v13 = sub_22B7DB298();
  v14 = sub_22B7DBC78();
  a4, v15, v16, v17, v18, v19, v20, v21, v37, v39;
  a2, v22, v23, v24, v25, v26, v27, v28, v38, v40;
  v42 = a2;
  if (os_log_type_enabled(v13, v14))
  {
    v41 = a5;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock[0] = v30;
    *v29 = 136446722;
    *(v29 + 4) = sub_22B4CFAAC(0xD000000000000044, 0x800000022B811C80, aBlock);
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_22B4CFAAC(a1, a2, aBlock);
    *(v29 + 22) = 2082;
    *(v29 + 24) = sub_22B4CFAAC(a3, a4, aBlock);
    _os_log_impl(&dword_22B4CC000, v13, v14, "%{public}s bundleID: %{public}s protectionClass: %{public}s", v29, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v30, -1, -1);
    v31 = v29;
    a5 = v41;
    MEMORY[0x231898D60](v31, -1, -1);
  }

  if (sub_22B4D90D4(a3, a4, *(v6 + OBJC_IVAR___IMDSpotlightDaemonClient_interestingProtectionClasses)))
  {
    v32 = *(v6 + OBJC_IVAR___IMDSpotlightDaemonClient_importer);
    v33 = sub_22B7A6B14(a1, v42);
    aBlock[4] = a5;
    aBlock[5] = a6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B4D22C0;
    aBlock[3] = &unk_283F1F9F0;
    v34 = _Block_copy(aBlock);

    [v32 searchableIndex:v33 reindexAllSearchableItemsWithAcknowledgementHandler:v34];
    _Block_release(v34);
  }

  else
  {
    osloga = sub_22B7DB298();
    v35 = sub_22B7DBC78();
    if (os_log_type_enabled(osloga, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_22B4CC000, osloga, v35, "Ignoring reindex request for uninteresting protection class", v36, 2u);
      MEMORY[0x231898D60](v36, -1, -1);
    }
  }
}

void sub_22B7A70CC(IMDScheduledMessageCoordinator *a1, void *a2, IMDScheduledMessageCoordinator *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  if (qword_28141F4A8 != -1)
  {
    swift_once();
  }

  v15 = sub_22B7DB2B8();
  sub_22B4CFA74(v15, qword_28141F4B0);

  v16 = sub_22B7DB298();
  v17 = sub_22B7DBC78();
  a3, v18, v19, v20, v21, v22, v23, v24, v62, v65;
  v71 = a2;
  if (os_log_type_enabled(v16, v17))
  {
    v67 = a5;
    v25 = swift_slowAlloc();
    v70 = a7;
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136446978;
    *(v25 + 4) = sub_22B4CFAAC(0xD00000000000004ELL, 0x800000022B811C30, aBlock);
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_22B4CFAAC(a2, a3, aBlock);
    *(v25 + 22) = 2050;
    *(v25 + 24) = *a1->messageStore;
    a1, v27, v28, v29, v30, v31, v32, v33, v63, v67;
    *(v25 + 32) = 2080;
    v34 = MEMORY[0x2318952A0](a1, MEMORY[0x277D837D0]);
    v35 = a6;
    v37 = v36;
    v38 = sub_22B4CFAAC(v34, v36, aBlock);
    v39 = v37;
    a6 = v35;
    v8 = v7;
    v39, v40, v41, v42, v43, v44, v45, v46, v64, v68;
    *(v25 + 34) = v38;
    _os_log_impl(&dword_22B4CC000, v16, v17, "%{public}s bundleID: %{public}s identifiersCount: %{public}ld identifiers: %s", v25, 0x2Au);
    swift_arrayDestroy();
    v47 = v26;
    a7 = v70;
    MEMORY[0x231898D60](v47, -1, -1);
    v48 = v25;
    a5 = v69;
    MEMORY[0x231898D60](v48, -1, -1);
  }

  else
  {

    a1, v49, v50, v51, v52, v53, v54, v55, v63, v66;
  }

  if (sub_22B4D90D4(a4, a5, *(v8 + OBJC_IVAR___IMDSpotlightDaemonClient_interestingProtectionClasses)))
  {
    v56 = *(v8 + OBJC_IVAR___IMDSpotlightDaemonClient_importer);
    v57 = sub_22B7A6B14(v71, a3);
    v58 = sub_22B7DB8F8();
    aBlock[4] = a6;
    aBlock[5] = a7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B4D22C0;
    aBlock[3] = &unk_283F1F9A0;
    v59 = _Block_copy(aBlock);

    [v56 searchableIndex:v57 reindexSearchableItemsWithIdentifiers:v58 acknowledgementHandler:v59];
    _Block_release(v59);
  }

  else
  {
    osloga = sub_22B7DB298();
    v60 = sub_22B7DBC78();
    if (os_log_type_enabled(osloga, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_22B4CC000, osloga, v60, "Ignoring reindex request for uninteresting protection class", v61, 2u);
      MEMORY[0x231898D60](v61, -1, -1);
    }
  }
}

void sub_22B7A75F0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *aBlock, void (*a9)(uint64_t, IMDScheduledMessageCoordinator *, uint64_t, IMDScheduledMessageCoordinator *, uint64_t, IMDScheduledMessageCoordinator *, uint64_t, IMDScheduledMessageCoordinator *), void *a10)
{
  v11 = _Block_copy(aBlock);
  v12 = sub_22B7DB6A8();
  v14 = v13;
  v15 = sub_22B7DB6A8();
  v17 = v16;
  v18 = sub_22B7DB6A8();
  v20 = v19;
  v21 = sub_22B7DB6A8();
  v23 = v22;
  _Block_copy(v11);
  v54 = a1;
  a9(v12, v14, v15, v17, v18, v20, v21, v23);
  _Block_release(v11);
  _Block_release(v11);

  v14, v24, v25, v26, v27, v28, v29, v30, a7, v54;
  v17, v31, v32, v33, v34, v35, v36, v37, v52, v55;
  v20, v38, v39, v40, v41, v42, v43, v44, v53, v56;

  v23, v45, v46, v47, v48, v49, v50, v51, a9, a10;
}

void sub_22B7A7848(IMDScheduledMessageCoordinator *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_28141F4A8 != -1)
  {
    swift_once();
  }

  v6 = sub_22B7DB2B8();
  sub_22B4CFA74(v6, qword_28141F4B0);

  v7 = sub_22B7DB298();
  v8 = sub_22B7DBC78();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v74 = v10;
    *v9 = 136446978;
    *(v9 + 4) = sub_22B4CFAAC(0xD000000000000021, 0x800000022B811A80, &v74);
    *(v9 + 12) = 2050;
    if (a1 >> 62)
    {
      v18 = sub_22B7DC1C8();
    }

    else
    {
      v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v9 + 14) = v18;
    a1, v11, v12, v13, v14, v15, v16, v17, v63, v66;
    *(v9 + 22) = 2050;
    *(v9 + 24) = a2;
    *(v9 + 32) = 2080;
    if (a1 >> 62)
    {
      v19 = sub_22B7DC1C8();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = MEMORY[0x277D84F90];
    v71 = v10;
    if (v19)
    {
      v73 = MEMORY[0x277D84F90];
      sub_22B7AB6B4(0, v19 & ~(v19 >> 63), 0);
      if (v19 < 0)
      {
        __break(1u);
        return;
      }

      HIDWORD(v67) = v8;
      v69 = v7;
      v70 = v3;
      v27 = v73;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v28 = 0;
        do
        {
          MEMORY[0x231895C80](v28, a1);
          v29 = [swift_unknownObjectRetain() uniqueIdentifier];
          v30 = sub_22B7DB6A8();
          v32 = v31;
          swift_unknownObjectRelease_n();

          v34 = *(v73 + 16);
          v33 = *(v73 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_22B7AB6B4((v33 > 1), v34 + 1, 1);
          }

          ++v28;
          *(v73 + 16) = v34 + 1;
          v35 = v73 + 16 * v34;
          *(v35 + 32) = v30;
          *(v35 + 40) = v32;
        }

        while (v19 != v28);
      }

      else
      {
        queue = a1->queue;
        do
        {
          v37 = *queue;
          v38 = [v37 uniqueIdentifier];
          v39 = sub_22B7DB6A8();
          v41 = v40;

          v43 = *(v73 + 16);
          v42 = *(v73 + 24);
          if (v43 >= v42 >> 1)
          {
            sub_22B7AB6B4((v42 > 1), v43 + 1, 1);
          }

          *(v73 + 16) = v43 + 1;
          v44 = v73 + 16 * v43;
          *(v44 + 32) = v39;
          *(v44 + 40) = v41;
          ++queue;
          --v19;
        }

        while (v19);
      }

      v3 = v70;
      v7 = v69;
      LOBYTE(v8) = BYTE4(v67);
    }

    v45 = MEMORY[0x2318952A0](v27, MEMORY[0x277D837D0]);
    v47 = v46;
    v27, v46, v48, v49, v50, v51, v52, v53, v64, v67;
    v54 = sub_22B4CFAAC(v45, v47, &v74);
    v47, v55, v56, v57, v58, v59, v60, v61, v65, v68;
    *(v9 + 34) = v54;
    _os_log_impl(&dword_22B4CC000, v7, v8, "%{public}s itemCount: %{public}ld mask: %{public}ld itemIdentifiers: %s", v9, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v71, -1, -1);
    MEMORY[0x231898D60](v9, -1, -1);
  }

  else
  {

    a1, v20, v21, v22, v23, v24, v25, v26, v63, v66;
  }

  v62 = *(v3 + OBJC_IVAR___IMDSpotlightDaemonClient_importer);
  sub_22B4D01A0(0, &qword_28141F260, 0x277CC34B0);
  v72 = sub_22B7DB8F8();
  [v62 searchableItemsDidUpdate:v72 mask:a2];
}

void sub_22B7A7D60(uint64_t a1)
{
  v1 = [objc_opt_self() sharedInstance];
  sub_22B4D01A0(0, &qword_28141F1F0, 0x277CCA898);
  v2 = sub_22B7DB568();
  [v1 updateChatsUsingMessageGUIDsAndSummaries_];
}

void sub_22B7A7EB8(IMDScheduledMessageCoordinator *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = sub_22B7DB8F8();
  [v2 updateChatsUsingMessageGUIDsWithPriority_];

  if (qword_28141F4A8 != -1)
  {
    swift_once();
  }

  v4 = sub_22B7DB2B8();
  sub_22B4CFA74(v4, qword_28141F4B0);

  v5 = sub_22B7DB298();
  v6 = sub_22B7DBCB8();
  a1, v7, v8, v9, v10, v11, v12, v13, v28, v31;
  if (os_log_type_enabled(v5, v6))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = v15;
    *v14 = 136315138;
    v16 = MEMORY[0x2318952A0](a1, MEMORY[0x277D837D0]);
    v18 = v17;
    v19 = sub_22B4CFAAC(v16, v17, &v31);
    v18, v20, v21, v22, v23, v24, v25, v26, v29, v31;
    *(v14 + 4) = v19;
    _os_log_impl(&dword_22B4CC000, v5, v6, "Received prioirity messages %s, and relay to watch", v14, 0xCu);
    sub_22B4CFB78(v15);
    MEMORY[0x231898D60](v15, -1, -1);
    MEMORY[0x231898D60](v14, -1, -1);
  }

  v27 = [objc_opt_self() sharedInstance];
  v30 = sub_22B7DB8F8();
  [v27 relayPriorityMessageFor_];
}

uint64_t sub_22B7A8150(IMDScheduledMessageCoordinator *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v65 = a3;
  v9 = sub_22B7DB348();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22B7DB398();
  v67 = *(v13 - 8);
  v68 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28141F4A8 != -1)
  {
    swift_once();
  }

  v66 = a2;
  v16 = sub_22B7DB2B8();
  sub_22B4CFA74(v16, qword_28141F4B0);

  v17 = sub_22B7DB298();
  v18 = sub_22B7DBC78();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v64 = v10;
    aBlock[0] = v63;
    *v19 = 136446978;
    *(v19 + 4) = sub_22B4CFAAC(0xD000000000000042, 0x800000022B8119E0, aBlock);
    *(v19 + 12) = 2050;
    *(v19 + 14) = *a1->messageStore;
    a1, v20, v21, v22, v23, v24, v25, v26, v61, v62;
    *(v19 + 22) = 2080;
    v27 = MEMORY[0x2318952A0](a1, MEMORY[0x277D837D0]);
    HIDWORD(v62) = v18;
    v28 = a1;
    v29 = v15;
    v30 = v12;
    v31 = v9;
    v32 = a4;
    v34 = v33;
    v35 = v5;
    v36 = sub_22B4CFAAC(v27, v33, aBlock);
    v37 = v34;
    a4 = v32;
    v9 = v31;
    v12 = v30;
    v15 = v29;
    a1 = v28;
    v37, v38, v39, v40, v41, v42, v43, v44, v61, v62;
    *(v19 + 24) = v36;
    v5 = v35;
    *(v19 + 32) = 2048;
    v45 = v66;
    *(v19 + 34) = v66;
    _os_log_impl(&dword_22B4CC000, v17, BYTE4(v62), "%{public}s guidsCount: %{public}ld guids: %s options: %ld", v19, 0x2Au);
    v46 = v63;
    swift_arrayDestroy();
    v47 = v46;
    v10 = v64;
    MEMORY[0x231898D60](v47, -1, -1);
    MEMORY[0x231898D60](v19, -1, -1);
  }

  else
  {

    a1, v48, v49, v50, v51, v52, v53, v54, v61, v62;
    v45 = v66;
  }

  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  v55 = sub_22B7DBD58();
  v56 = swift_allocObject();
  v56[2] = a1;
  v56[3] = v45;
  v57 = v65;
  v56[4] = v5;
  v56[5] = v57;
  v56[6] = a4;
  aBlock[4] = sub_22B7A8E28;
  aBlock[5] = v56;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1F810;
  v58 = _Block_copy(aBlock);

  v59 = v5;

  sub_22B7DACD8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22B76CBD8(&qword_28141F340, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B4D1110(&qword_28141F2E0, &unk_27D8CF580, &unk_22B7FB880);
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v15, v12, v58);
  _Block_release(v58);

  (*(v10 + 8))(v12, v9);
  return (*(v67 + 8))(v15, v68);
}

void sub_22B7A862C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_opt_self() sharedInstance];
  if (v9)
  {
    v10 = v9;
    v11 = sub_22B7DB8F8();
    v12 = swift_allocObject();
    v12[2] = a3;
    v12[3] = a4;
    v12[4] = a5;
    v15[4] = sub_22B7A8E38;
    v15[5] = v12;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_22B7A8ABC;
    v15[3] = &unk_283F1F860;
    v13 = _Block_copy(v15);
    v14 = a3;

    [v10 retrieveLocalFileURLForFileTransferWithGUIDs:v11 options:a2 completion:v13];
    _Block_release(v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22B7A8780(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v32 = a7;
  v33 = a8;
  v28 = a2;
  v29 = a4;
  v30 = a10;
  v31 = a6;
  v16 = sub_22B7DB348();
  v37 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_22B7DB398();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a11 + OBJC_IVAR___IMDSpotlightDaemonClient_queue);
  v21 = swift_allocObject();
  *(v21 + 16) = a12;
  *(v21 + 24) = a13;
  *(v21 + 32) = a1;
  v22 = v29;
  *(v21 + 40) = v28;
  *(v21 + 48) = a3;
  *(v21 + 56) = v22;
  *(v21 + 64) = a5;
  v23 = v32;
  *(v21 + 72) = v31;
  *(v21 + 80) = v23;
  *(v21 + 88) = v33;
  *(v21 + 96) = a9;
  v24 = v30;
  *(v21 + 104) = v30;
  aBlock[4] = sub_22B7A8E70;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1F8B0;
  v25 = _Block_copy(aBlock);

  v26 = v24;
  sub_22B7DACD8();
  v38 = MEMORY[0x277D84F90];
  sub_22B76CBD8(&qword_28141F340, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B4D1110(&qword_28141F2E0, &unk_27D8CF580, &unk_22B7FB880);
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v20, v18, v25);
  _Block_release(v25);
  (*(v37 + 8))(v18, v16);
  (*(v34 + 8))(v20, v36);
}

void sub_22B7A8ABC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, IMDScheduledMessageCoordinator *a5, IMDScheduledMessageCoordinator *a6, void *a7, uint64_t a8, void *a9, void *a10)
{
  v58 = *(a1 + 32);
  if (a3)
  {
    v56 = sub_22B7DB6A8();
    v15 = v14;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v56 = 0;
    v15 = 0;
    if (a4)
    {
LABEL_3:
      v16 = sub_22B7DB6A8();
      v18 = v17;
      if (a5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v19 = 0;
      if (a6)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v16 = 0;
  v18 = 0;
  if (!a5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v19 = sub_22B7DB6A8();
  a5 = v20;
  if (a6)
  {
LABEL_5:
    v21 = sub_22B7DB6A8();
    a6 = v22;
    goto LABEL_10;
  }

LABEL_9:
  v21 = 0;
LABEL_10:

  v23 = a7;
  v58(a2, v56, v15, v16, v18, v19, a5, v21);

  a6, v24, v25, v26, v27, v28, v29, v30, a6, a7;
  a5, v31, v32, v33, v34, v35, v36, v37, v52, v54;
  v18, v38, v39, v40, v41, v42, v43, v44, v53, v55;

  v15, v45, v46, v47, v48, v49, v50, v51, a9, a10;
}

void sub_22B7A8CCC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = a5;
  if (a3)
  {
    v14 = sub_22B7DB678();
    if (!v12)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = 0;
  if (a5)
  {
LABEL_3:
    v12 = sub_22B7DB678();
  }

LABEL_4:
  if (a7)
  {
    a7 = sub_22B7DB678();
  }

  if (a9)
  {
    v15 = sub_22B7DB678();
    if (a10)
    {
LABEL_8:
      v16 = sub_22B7DA6E8();
      goto LABEL_13;
    }
  }

  else
  {
    v15 = 0;
    if (a10)
    {
      goto LABEL_8;
    }
  }

  v16 = 0;
LABEL_13:
  v17 = v16;
  (*(a11 + 16))(a11, a1 & 1, v14, v12, a7, v15);
}

void sub_22B7A8EC0(void *a1, IMDScheduledMessageCoordinator *a2, void *a3, IMDScheduledMessageCoordinator *a4, void *a5, IMDScheduledMessageCoordinator *a6, void *a7, IMDScheduledMessageCoordinator *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = a10;
  v81[1] = *MEMORY[0x277D85DE8];
  if (qword_28141F4A8 != -1)
  {
    swift_once();
  }

  v18 = sub_22B7DB2B8();
  sub_22B4CFA74(v18, qword_28141F4B0);

  v19 = sub_22B7DB298();
  v20 = sub_22B7DBC78();
  a8, v21, v22, v23, v24, v25, v26, v27, v69, v73;
  a6, v28, v29, v30, v31, v32, v33, v34, v70, v74;
  a4, v35, v36, v37, v38, v39, v40, v41, v71, v75;
  a2, v42, v43, v44, v45, v46, v47, v48, v72, v76;
  v77 = v20;
  v49 = os_log_type_enabled(v19, v20);
  v50 = a8;
  if (v49)
  {
    v51 = swift_slowAlloc();
    v78 = a5;
    v52 = swift_slowAlloc();
    v81[0] = v52;
    *v51 = 136447490;
    *(v51 + 4) = sub_22B4CFAAC(0xD000000000000061, 0x800000022B811BC0, v81);
    *(v51 + 12) = 2082;
    v53 = a1;
    *(v51 + 14) = sub_22B4CFAAC(a1, a2, v81);
    *(v51 + 22) = 2082;
    *(v51 + 24) = sub_22B4CFAAC(a3, a4, v81);
    *(v51 + 32) = 2080;
    *(v51 + 34) = sub_22B4CFAAC(v78, a6, v81);
    *(v51 + 42) = 2080;
    *(v51 + 44) = sub_22B4CFAAC(a7, v50, v81);
    *(v51 + 52) = 2048;
    *(v51 + 54) = a9;
    _os_log_impl(&dword_22B4CC000, v19, v77, "%{public}s bundleID: %{public}s protectionClass: %{public}s itemIdentifier: %s typeIdentifier: %s options: %ld", v51, 0x3Eu);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v52, -1, -1);
    v54 = v51;
    v17 = a10;
    MEMORY[0x231898D60](v54, -1, -1);
  }

  else
  {

    v53 = a1;
  }

  v55 = *(v17 + OBJC_IVAR___IMDSpotlightDaemonClient_importer);
  v56 = sub_22B7A6B14(v53, a2);
  v57 = sub_22B7DB678();
  v58 = sub_22B7DB678();
  v81[0] = 0;
  v59 = [v55 dataForSearchableIndex:v56 itemIdentifier:v57 typeIdentifier:v58 error:v81];

  v60 = v81[0];
  if (v59)
  {
    v61 = sub_22B7DA848();
    v63 = v62;

    sub_22B705E44(v61, v63);
    v64 = sub_22B7DA838();
    (*(a11 + 16))(a11, v64, 0);

    sub_22B705E98(v61, v63);
    sub_22B705E98(v61, v63);
  }

  else
  {
    v65 = v60;
    v66 = sub_22B7DA6F8();

    swift_willThrow();
    v67 = v66;
    v68 = sub_22B7DA6E8();
    (*(a11 + 16))(a11, 0, v68);
  }
}

uint64_t sub_22B7A92AC(void *a1, IMDScheduledMessageCoordinator *a2, void *a3, IMDScheduledMessageCoordinator *a4, void *a5, IMDScheduledMessageCoordinator *a6, void *a7, IMDScheduledMessageCoordinator *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v97 = a5;
  v98 = a7;
  v90 = a3;
  v94 = a1;
  v95 = a10;
  v102[1] = *MEMORY[0x277D85DE8];
  v15 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v88 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v86 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v91 = &v86 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v86 - v23;
  v25 = sub_22B7DA828();
  v26 = *(v25 - 1);
  MEMORY[0x28223BE20](v25);
  v92 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28141F4A8 != -1)
  {
    swift_once();
  }

  v96 = v26;
  v99 = a11;
  v101 = a9;
  v28 = sub_22B7DB2B8();
  sub_22B4CFA74(v28, qword_28141F4B0);

  v29 = sub_22B7DB298();
  v30 = sub_22B7DBC78();
  a8, v31, v32, v33, v34, v35, v36, v37, v86, v87;
  a6, v38, v39, v40, v41, v42, v43, v44, v86, v87;
  a4, v45, v46, v47, v48, v49, v50, v51, v86, v87;
  a2, v52, v53, v54, v55, v56, v57, v58, v86, v87;
  v59 = os_log_type_enabled(v29, v30);
  v100 = a8;
  v89 = v20;
  v93 = v24;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v87 = v25;
    v62 = v61;
    v102[0] = v61;
    *v60 = 136447490;
    *(v60 + 4) = sub_22B4CFAAC(0xD000000000000064, 0x800000022B811B50, v102);
    *(v60 + 12) = 2082;
    v63 = v94;
    *(v60 + 14) = sub_22B4CFAAC(v94, a2, v102);
    *(v60 + 22) = 2082;
    *(v60 + 24) = sub_22B4CFAAC(v90, a4, v102);
    *(v60 + 32) = 2080;
    *(v60 + 34) = sub_22B4CFAAC(v97, a6, v102);
    *(v60 + 42) = 2080;
    *(v60 + 44) = sub_22B4CFAAC(v98, v100, v102);
    *(v60 + 52) = 2048;
    *(v60 + 54) = v101;
    _os_log_impl(&dword_22B4CC000, v29, v30, "%{public}s bundleID: %{public}s protectionClass: %{public}s itemIdentifier: %s typeIdentifier: %s options: %ld", v60, 0x3Eu);
    swift_arrayDestroy();
    v64 = v62;
    v25 = v87;
    MEMORY[0x231898D60](v64, -1, -1);
    MEMORY[0x231898D60](v60, -1, -1);
  }

  else
  {

    v63 = v94;
  }

  v65 = *(v95 + OBJC_IVAR___IMDSpotlightDaemonClient_importer);
  v66 = sub_22B7A6B14(v63, a2);
  v67 = sub_22B7DB678();
  v68 = sub_22B7DB678();
  v102[0] = 0;
  v69 = [v65 fileURLForSearchableIndex:v66 itemIdentifier:v67 typeIdentifier:v68 options:v101 error:v102];

  v70 = v102[0];
  if (v69)
  {
    v71 = v92;
    sub_22B7DA7D8();
    v72 = v70;

    v73 = v96;
    v74 = v93;
    (*(v96 + 16))(v93, v71, v25);
    (*(v73 + 56))(v74, 0, 1, v25);
    v75 = v91;
    sub_22B7AA644(v74, v91);
    if ((*(v73 + 48))(v75, 1, v25) == 1)
    {
      v76 = 0;
    }

    else
    {
      v76 = sub_22B7DA788();
      (*(v73 + 8))(v75, v25);
    }

    (*(v99 + 16))(v99, v76, 0);

    sub_22B4D0D64(v74, &qword_27D8CFC90, &unk_22B7FE140);
    return (*(v73 + 8))(v71, v25);
  }

  else
  {
    v77 = v102[0];
    v78 = sub_22B7DA6F8();

    swift_willThrow();
    v79 = v96;
    v80 = v89;
    (*(v96 + 56))(v89, 1, 1, v25);
    v81 = v88;
    sub_22B7AA644(v80, v88);
    LODWORD(v77) = (*(v79 + 48))(v81, 1, v25);
    v82 = v78;
    if (v77 == 1)
    {
      v83 = 0;
    }

    else
    {
      v83 = sub_22B7DA788();
      (*(v79 + 8))(v81, v25);
    }

    v85 = sub_22B7DA6E8();
    (*(v99 + 16))(v99, v83, v85);

    return sub_22B4D0D64(v80, &qword_27D8CFC90, &unk_22B7FE140);
  }
}

void sub_22B7A993C(void *a1, IMDScheduledMessageCoordinator *a2, void *a3, IMDScheduledMessageCoordinator *a4, IMDScheduledMessageCoordinator *a5, void *a6, IMDScheduledMessageCoordinator *a7, uint64_t a8, uint64_t a9, void *a10)
{
  v15 = a10;
  v218[1] = *MEMORY[0x277D85DE8];
  if (qword_28141F4A8 != -1)
  {
    swift_once();
  }

  v16 = sub_22B7DB2B8();
  v17 = sub_22B4CFA74(v16, qword_28141F4B0);

  v18 = sub_22B7DB298();
  v19 = sub_22B7DBC78();
  a7, v20, v21, v22, v23, v24, v25, v26, v185, v198;
  a4, v27, v28, v29, v30, v31, v32, v33, v186, v199;
  a2, v34, v35, v36, v37, v38, v39, v40, v187, v200;
  if (os_log_type_enabled(v18, v19))
  {
    v41 = swift_slowAlloc();
    v189 = v17;
    v42 = swift_slowAlloc();
    v218[0] = v42;
    *v41 = 136447746;
    *(v41 + 4) = sub_22B4CFAAC(0xD000000000000066, 0x800000022B811AB0, v218);
    *(v41 + 12) = 2082;
    *(v41 + 14) = sub_22B4CFAAC(a1, a2, v218);
    *(v41 + 22) = 2082;
    *(v41 + 24) = sub_22B4CFAAC(a3, a4, v218);
    *(v41 + 32) = 2050;
    *(v41 + 34) = *a5->messageStore;
    a5, v43, v44, v45, v46, v47, v48, v49, v189, a10;
    *(v41 + 42) = 2080;
    v50 = MEMORY[0x2318952A0](a5, MEMORY[0x277D837D0]);
    v52 = v51;
    v53 = sub_22B4CFAAC(v50, v51, v218);
    v52, v54, v55, v56, v57, v58, v59, v60, v190, v202;
    *(v41 + 44) = v53;
    *(v41 + 52) = 2080;
    v15 = v203;
    *(v41 + 54) = sub_22B4CFAAC(a6, a7, v218);
    *(v41 + 62) = 2048;
    *(v41 + 64) = a8;
    _os_log_impl(&dword_22B4CC000, v18, v19, "%{public}s bundleID: %{public}s protectionClass: %{public}s itemIdentifiersCount: %{public}ld itemIdentifiers: %s typeIdentifier: %s options: %ld", v41, 0x48u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v42, -1, -1);
    MEMORY[0x231898D60](v41, -1, -1);

    v61 = *a5->messageStore;
    if (v61)
    {
      goto LABEL_5;
    }
  }

  else
  {

    a5, v89, v90, v91, v92, v93, v94, v95, v188, v201;
    v61 = *a5->messageStore;
    if (v61)
    {
LABEL_5:
      v62 = *(a9 + OBJC_IVAR___IMDSpotlightDaemonClient_importer);
      v63 = sub_22B7A6B14(a1, a2);
      v64 = sub_22B7DB8F8();
      v65 = sub_22B7DB678();
      v218[0] = 0;
      v66 = [v62 fileURLsForSearchableIndex:v63 itemIdentifiers:v64 typeIdentifier:v65 options:a8 error:v218];

      v67 = v218[0];
      if (v66)
      {
        sub_22B4D01A0(0, &unk_28141F1B8, 0x277CC3400);
        v68 = sub_22B7DB918();
        v69 = v67;

        v70 = sub_22B7DB298();
        v71 = sub_22B7DBC78();
        if (os_log_type_enabled(v70, v71))
        {
          v213 = v71;
          v72 = swift_slowAlloc();
          v211 = swift_slowAlloc();
          v218[0] = v211;
          *v72 = 136446978;
          *(v72 + 4) = sub_22B4CFAAC(0xD000000000000066, 0x800000022B811AB0, v218);
          *(v72 + 12) = 2050;
          if (v68 >> 62)
          {
            v80 = sub_22B7DC1C8();
          }

          else
          {
            v80 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v72 + 14) = v80;
          v68, v73, v74, v75, v76, v77, v78, v79, v191, v203;
          *(v72 + 22) = 2050;
          *(v72 + 24) = v61;
          a5, v81, v82, v83, v84, v85, v86, v87, v192, v204;
          *(v72 + 32) = 2080;
          if (v68 >> 62)
          {
            v88 = sub_22B7DC1C8();
          }

          else
          {
            v88 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          bufb = v72;
          v150 = MEMORY[0x277D84F90];
          if (v88)
          {
            v193 = v70;
            v205 = v15;
            v217 = MEMORY[0x277D84F90];
            sub_22B7AB6B4(0, v88 & ~(v88 >> 63), 0);
            if (v88 < 0)
            {
              __break(1u);
            }

            v151 = 0;
            v150 = v217;
            do
            {
              if ((v68 & 0xC000000000000001) != 0)
              {
                v152 = MEMORY[0x231895C80](v151, v68);
              }

              else
              {
                v152 = *(v68 + 8 * v151 + 32);
              }

              v153 = v152;
              v154 = sub_22B7A6440();
              v156 = v155;

              v158 = *(v217 + 16);
              v157 = *(v217 + 24);
              if (v158 >= v157 >> 1)
              {
                sub_22B7AB6B4((v157 > 1), v158 + 1, 1);
              }

              ++v151;
              *(v217 + 16) = v158 + 1;
              v159 = v217 + 16 * v158;
              *(v159 + 32) = v154;
              *(v159 + 40) = v156;
            }

            while (v88 != v151);
            v15 = v205;
          }

          v160 = MEMORY[0x2318952A0](v150, MEMORY[0x277D837D0]);
          v162 = v161;
          v150, v161, v163, v164, v165, v166, v167, v168, v193, v205;
          v169 = sub_22B4CFAAC(v160, v162, v218);
          v162, v170, v171, v172, v173, v174, v175, v176, v197, v209;
          *(bufb + 34) = v169;
          _os_log_impl(&dword_22B4CC000, v70, v213, "%{public}s got %{public}ld results for %{public}ld items: %s", bufb, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x231898D60](v211, -1, -1);
          MEMORY[0x231898D60](bufb, -1, -1);
        }

        else
        {

          v68, v127, v128, v129, v130, v131, v132, v133, v191, v203;
          a5, v134, v135, v136, v137, v138, v139, v140, v195, v207;
        }

        v177 = sub_22B7DB8F8();
        (*(v15 + 2))(v15, v177, 0);
        v68, v178, v179, v180, v181, v182, v183, v184, v196, v208;
      }

      else
      {
        v99 = v218[0];
        v100 = sub_22B7DA6F8();

        swift_willThrow();

        v101 = v100;
        v102 = sub_22B7DB298();
        v103 = sub_22B7DBC98();

        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v218[0] = v106;
          *v104 = 136446978;
          *(v104 + 4) = sub_22B4CFAAC(0xD000000000000066, 0x800000022B811AB0, v218);
          *(v104 + 12) = 2050;
          *(v104 + 14) = v61;
          a5, v107, v108, v109, v110, v111, v112, v113, v191, v203;
          *(v104 + 22) = 2112;
          v114 = v100;
          v115 = _swift_stdlib_bridgeErrorToNSError();
          *(v104 + 24) = v115;
          *v105 = v115;
          *(v104 + 32) = 2080;
          v116 = MEMORY[0x2318952A0](a5, MEMORY[0x277D837D0]);
          v118 = v117;
          v119 = sub_22B4CFAAC(v116, v117, v218);
          v118, v120, v121, v122, v123, v124, v125, v126, v194, v206;
          *(v104 + 34) = v119;
          _os_log_impl(&dword_22B4CC000, v102, v103, "%{public}s failed to retrieve file URLs for %{public}ld items: %@ - item identifiers: %s", v104, 0x2Au);
          sub_22B4D0D64(v105, &unk_27D8CEC60, &qword_22B7F9E20);
          MEMORY[0x231898D60](v105, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x231898D60](v106, -1, -1);
          MEMORY[0x231898D60](v104, -1, -1);
        }

        else
        {

          a5, v141, v142, v143, v144, v145, v146, v147, v191, v203;
        }

        v148 = v100;
        v149 = sub_22B7DA6E8();
        (*(v15 + 2))(v15, 0, v149);
      }

      return;
    }
  }

  v96 = sub_22B7DB298();
  v97 = sub_22B7DBC78();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    *v98 = 0;
    _os_log_impl(&dword_22B4CC000, v96, v97, "Bailing on request for an empty array of item identifiers", v98, 2u);
    MEMORY[0x231898D60](v98, -1, -1);
  }

  sub_22B4D01A0(0, &unk_28141F1B8, 0x277CC3400);
  bufa = sub_22B7DB8F8();
  (*(v15 + 2))(v15);
}

uint64_t sub_22B7AA288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22B7DB348();
  v18 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22B7DB398();
  v10 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  v13 = sub_22B7DBD58();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  aBlock[4] = a3;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = a4;
  v15 = _Block_copy(aBlock);

  sub_22B7DACD8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22B76CBD8(&qword_28141F340, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B4D1110(&qword_28141F2E0, &unk_27D8CF580, &unk_22B7FB880);
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v12, v9, v15);
  _Block_release(v15);

  (*(v18 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v17);
}

unint64_t sub_22B7AA56C()
{
  result = qword_28141F1B0;
  if (!qword_28141F1B0)
  {
    sub_22B4D01A0(255, &unk_28141F1B8, 0x277CC3400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141F1B0);
  }

  return result;
}

uint64_t sub_22B7AA5D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B7AA644(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B7AA6F4()
{
  sub_22B7DC2E8();
  v0 = sub_22B7DBF38();
  v2 = v1;
  0xE000000000000000, v1, v3, v4, v5, v6, v7, v8, 0, 0xE000000000000000;
  v28 = v0;
  v31 = v2;
  MEMORY[0x231895140](0x2820736B73617420, 0xE800000000000000);
  sub_22B7DBE78();
  v10 = v9;
  v11 = sub_22B7DB6D8();
  v13 = v12;
  v10, v12, v14, v15, v16, v17, v18, v19, v28, v31;
  MEMORY[0x231895140](v11, v13);
  v13, v20, v21, v22, v23, v24, v25, v26, v29, v32;
  MEMORY[0x231895140](0x29656E616C20, 0xE600000000000000);
  return v30;
}

id sub_22B7AA7C8()
{
  type metadata accessor for IMDPersistentTaskNotifier();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isPersistentTaskNotificationsEnabled];

  if (v2 && (IMIsRunningInUnitTesting() & 1) == 0 && (result = [objc_allocWithZone(MEMORY[0x277D1A9A8]) init]) != 0)
  {
    *(v0 + 112) = result;
  }

  else
  {
    *(v0 + 112) = 0;

    v0 = 0;
  }

  qword_281422740 = v0;
  return result;
}

uint64_t sub_22B7AA884(unsigned __int8 a1, void *a2, unsigned __int8 a3)
{
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      return 0xD000000000000012;
    }

    if (a3 != 4)
    {
      return 0x2064656D75736572;
    }

    sub_22B7DC2E8();
    0xE000000000000000, v7, v8, v9, v10, v11, v12, v13, v49, v52;
    v55 = 0xD000000000000018;
    v53 = a2;
    sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
    sub_22B7665AC();
    v14 = sub_22B7DB5F8();
    v16 = v15;
    MEMORY[0x231895140](v14);
    v16, v17, v18, v19, v20, v21, v22, v23, v50, v53;
    return v55;
  }

  if (!a3)
  {
    v55 = 0;
    sub_22B7DC2E8();
    v26 = "ied";
    v27 = "suspended due to throttling";
    v28 = 0xD000000000000025;
    if (a1 != 2)
    {
      v28 = 0xD00000000000002DLL;
      v27 = " higher priority work";
    }

    v29 = 0xD00000000000001BLL;
    if (a1)
    {
      v26 = "suspended by DAS";
    }

    else
    {
      v29 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      v30 = v29;
    }

    else
    {
      v30 = v28;
    }

    if (a1 <= 1u)
    {
      v31 = v26;
    }

    else
    {
      v31 = v27;
    }

    MEMORY[0x231895140](v30, v31 | 0x8000000000000000);
    (v31 | 0x8000000000000000), v32, v33, v34, v35, v36, v37, v38, v49, v52;
    MEMORY[0x231895140](0x7365636F7270202CLL, 0xEC00000020646573);
    v54 = a2;
    v39 = sub_22B7DC4E8();
    v41 = v40;
    MEMORY[0x231895140](v39);
    v41, v42, v43, v44, v45, v46, v47, v48, v51, v54;
    MEMORY[0x231895140](0x736B73617420, 0xE600000000000000);
    return v55;
  }

  v3 = 0xD00000000000001ELL;
  if (a1)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0xD000000000000010;
  if ((a1 & 1) == 0)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (a3 == 1)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

void sub_22B7AAB3C(uint64_t a1, unsigned __int8 a2, void *a3)
{
  v4 = *(v3 + 112);
  if (v4)
  {
    v7 = sub_22B7DB678();
    sub_22B7AA6F4();
    v31 = v8;
    MEMORY[0x231895140](32, 0xE100000000000000);
    v9 = sub_22B7AA884(a2, a3, 0);
    v11 = v10;
    MEMORY[0x231895140](v9);
    v11, v12, v13, v14, v15, v16, v17, v18, v27, v29;
    v19 = sub_22B7DB678();
    v31, v20, v21, v22, v23, v24, v25, v26, v28, v19;
    [v4 postNotificationWithTitle:v7 body:v30];
  }
}

void sub_22B7AAC44(uint64_t a1, char a2)
{
  v3 = *(v2 + 112);
  if (v3)
  {
    v5 = sub_22B7DB678();
    sub_22B7AA6F4();
    v28 = v6;
    MEMORY[0x231895140](32, 0xE100000000000000);
    if (a2)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v7 = 0xD00000000000001ELL;
    }

    if (a2)
    {
      v8 = "couldn't be withdrawn from DAS";
    }

    else
    {
      v8 = "submitted to DAS";
    }

    MEMORY[0x231895140](v7, v8 | 0x8000000000000000);
    (v8 | 0x8000000000000000), v9, v10, v11, v12, v13, v14, v15, v24, v26;
    v16 = sub_22B7DB678();
    v28, v17, v18, v19, v20, v21, v22, v23, v25, v16;
    [v3 postNotificationWithTitle:v5 body:v27];
  }
}

void sub_22B7AAD68(uint64_t a1, char a2)
{
  v3 = *(v2 + 112);
  if (v3)
  {
    v5 = sub_22B7DB678();
    sub_22B7AA6F4();
    v28 = v6;
    MEMORY[0x231895140](32, 0xE100000000000000);
    if (a2)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v7 = 0xD00000000000001CLL;
    }

    if (a2)
    {
      v8 = "couldn't be submitted to DAS";
    }

    else
    {
      v8 = "updated with revisions: ";
    }

    MEMORY[0x231895140](v7, v8 | 0x8000000000000000);
    (v8 | 0x8000000000000000), v9, v10, v11, v12, v13, v14, v15, v24, v26;
    v16 = sub_22B7DB678();
    v28, v17, v18, v19, v20, v21, v22, v23, v25, v16;
    [v3 postNotificationWithTitle:v5 body:v27];
  }
}

void sub_22B7AAE8C()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    v2 = sub_22B7DB678();
    sub_22B7AA6F4();
    v14 = v3;
    MEMORY[0x231895140](32, 0xE100000000000000);
    MEMORY[0x231895140](0x2064656D75736572, 0xEE00534144207962);
    v4 = sub_22B7DB678();
    v14, v5, v6, v7, v8, v9, v10, v11, v12, v4;
    [v1 postNotificationWithTitle:v2 body:v13];
  }
}

uint64_t sub_22B7AAF84()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_22B7AAFE0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v11 = v10;
  v12 = *(a2 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v72 = MEMORY[0x277D84F90];
    sub_22B7AB6B4(0, v12, 0);
    v13 = v72;
    v15 = (a2 + 40);
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v19 = *(v72 + 16);
      v18 = *(v72 + 24);

      if (v19 >= v18 >> 1)
      {
        sub_22B7AB6B4((v18 > 1), v19 + 1, 1);
      }

      *(v72 + 16) = v19 + 1;
      v20 = v72 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      v15 += 4;
      --v12;
    }

    while (v12);
  }

  v21 = *(v11 + 112);
  if (v21)
  {
    v22 = sub_22B7DB678();
    sub_22B7AA6F4();
    v73 = v23;
    MEMORY[0x231895140](32, 0xE100000000000000);
    sub_22B7DC2E8();
    0xE000000000000000, v24, v25, v26, v27, v28, v29, v30, v63, v68;
    sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
    sub_22B7665AC();
    v31 = sub_22B7DB5F8();
    v33 = v32;
    MEMORY[0x231895140](v31);
    v33, v34, v35, v36, v37, v38, v39, v40, v64, v13;
    MEMORY[0x231895140](0xD000000000000018, 0x800000022B811D70);
    0x800000022B811D70, v41, v42, v43, v44, v45, v46, v47, v65, v69;
    v48 = sub_22B7DB678();
    v73, v49, v50, v51, v52, v53, v54, v55, v66, v70;
    [v21 postNotificationWithTitle:v22 body:v48];
    v13, v56, v57, v58, v59, v60, v61, v62, v67, v71;
  }

  else
  {

    v13, a2, a3, a4, a5, a6, a7, a8, a9, a10;
  }
}

void sub_22B7AB20C()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    v2 = sub_22B7DB678();
    sub_22B7AA6F4();
    v14 = v3;
    MEMORY[0x231895140](32, 0xE100000000000000);
    MEMORY[0x231895140](0xD000000000000012, 0x800000022B811D50);
    v4 = sub_22B7DB678();
    v14, v5, v6, v7, v8, v9, v10, v11, v12, v4;
    [v1 postNotificationWithTitle:v2 body:v13];
  }
}

void FileEventFlags.description.getter()
{
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v3 = *v0;
LABEL_2:
  if (v1 <= 0x16)
  {
    v4 = 22;
  }

  else
  {
    v4 = v1;
  }

  v5 = v4 + 1;
  v6 = (&unk_283F1B690 + 24 * v1 + 32);
  while (v1 != 22)
  {
    if (v5 == ++v1)
    {
      __break(1u);
      return;
    }

    v7 = v6 + 6;
    v8 = *v6;
    v6 += 6;
    if ((v8 & ~v3) == 0)
    {
      v10 = *(v7 - 2);
      v9 = *(v7 - 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22B7AB714(0, v2[2] + 1, 1);
      }

      v12 = v2[2];
      v11 = v2[3];
      if (v12 >= v11 >> 1)
      {
        sub_22B7AB714((v11 > 1), v12 + 1, 1);
      }

      v2[2] = v12 + 1;
      v13 = &v2[3 * v12];
      *(v13 + 8) = v8;
      v13[5] = v10;
      v13[6] = v9;
      goto LABEL_2;
    }
  }

  v14 = v2[2];
  if (v14)
  {
    v30 = MEMORY[0x277D84F90];
    sub_22B7AB6B4(0, v14, 0);
    v15 = v30;
    v16 = v2 + 6;
    do
    {
      v18 = *(v16 - 1);
      v17 = *v16;
      v20 = *(v30 + 16);
      v19 = *(v30 + 24);

      if (v20 >= v19 >> 1)
      {
        sub_22B7AB6B4((v19 > 1), v20 + 1, 1);
      }

      *(v30 + 16) = v20 + 1;
      v21 = v30 + 16 * v20;
      *(v21 + 32) = v18;
      *(v21 + 40) = v17;
      v16 += 3;
      --v14;
    }

    while (v14);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
  sub_22B7665AC();
  sub_22B7DB5F8();
  v15, v22, v23, v24, v25, v26, v27, v28, v29, v15;
}

unint64_t FileEventFlags.init(rawValue:)@<X0>(unint64_t result@<X0>, _DWORD *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    *a2 = result;
    return result;
  }

  __break(1u);
  return result;
}

void *sub_22B7AB674(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22B7AC35C(a1, a2, a3, *v3, &qword_27D8CF920, &qword_22B7FD658, &qword_27D8CF928, &qword_22B7FD660);
  *v3 = result;
  return result;
}

char *sub_22B7AB6B4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22B7AB964(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22B7AB6D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22B7ABA70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22B7AB6F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22B7ABB74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22B7AB714(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22B7ABDC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_22B7AB738()
{
  result = qword_27D8CF8F0;
  if (!qword_27D8CF8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF8F0);
  }

  return result;
}

unint64_t sub_22B7AB790()
{
  result = qword_27D8CF8F8;
  if (!qword_27D8CF8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF8F8);
  }

  return result;
}

unint64_t sub_22B7AB7E8()
{
  result = qword_27D8CF900;
  if (!qword_27D8CF900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF900);
  }

  return result;
}

unint64_t sub_22B7AB840()
{
  result = qword_27D8CF908;
  if (!qword_27D8CF908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF908);
  }

  return result;
}

char *sub_22B7AB8A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22B7ABF10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22B7AB8C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22B7AC014(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22B7AB8E4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22B7AC118(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22B7AB904(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22B7AC24C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22B7AB924(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22B7AC35C(a1, a2, a3, *v3, &qword_27D8CF918, &qword_22B7FD650, &qword_27D8CF590, &unk_22B7F97C0);
  *v3 = result;
  return result;
}

char *sub_22B7AB964(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B6F0AD4(&unk_27D8CEA00, &qword_22B7F98C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_22B7ABA70(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B6F0AD4(&qword_27D8CDA58, &qword_22B7FA088);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_22B7ABB74(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B6F0AD4(&qword_27D8CDA20, &unk_22B7FA040);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_22B7ABC80(void *result, int64_t a2, char a3, void *a4)
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
    sub_22B6F0AD4(&qword_27D8CDA60, &unk_22B7FA098);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22B6F0AD4(&qword_27D8CD650, &unk_22B7F9750);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22B7ABDC8(void *result, int64_t a2, char a3, void *a4)
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
    sub_22B6F0AD4(&qword_27D8CF940, &qword_22B7FD678);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22B6F0AD4(&qword_27D8CF948, qword_22B7FD680);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22B7ABF10(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B6F0AD4(&qword_27D8CD9D8, &qword_22B7F9FF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_22B7AC014(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B6F0AD4(&qword_27D8CDA28, &unk_22B7FB420);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_22B7AC118(void *result, int64_t a2, char a3, void *a4)
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
    sub_22B6F0AD4(&qword_27D8CF910, &qword_22B7FD648);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    sub_22B6F0AD4(&qword_27D8CD7B0, &qword_22B7FBB10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22B7AC24C(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B6F0AD4(qword_27D8CFA50, &qword_22B7FBB08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_22B7AC35C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_22B6F0AD4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
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
    sub_22B6F0AD4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

unint64_t sub_22B7AC494()
{
  result = qword_27D8CF968;
  if (!qword_27D8CF968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF968);
  }

  return result;
}

unint64_t sub_22B7AC4EC()
{
  result = qword_27D8CF970;
  if (!qword_27D8CF970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF970);
  }

  return result;
}

uint64_t type metadata accessor for DaemonRequestIntentFileOutput(uint64_t a1)
{
  result = qword_27D8CFA08;
  if (!qword_27D8CFA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B7AC5D4()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8CF950);
  sub_22B4CFA74(v0, qword_27D8CF950);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B7AC640()
{
  v0 = sub_22B6F0AD4(&qword_27D8CF4C0, &unk_22B7FDB70);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_22B7DA718();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = sub_22B7DA628();
  sub_22B6F24F4(v5, qword_27D8D4940);
  sub_22B4CFA74(v5, qword_27D8D4940);
  sub_22B7DA708();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_22B7DA618();
}

unint64_t sub_22B7AC7A4()
{
  result = qword_27D8CF980;
  if (!qword_27D8CF980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF980);
  }

  return result;
}

unint64_t sub_22B7AC7FC()
{
  result = qword_27D8CF990;
  if (!qword_27D8CF990)
  {
    sub_22B6FB8C4(&qword_27D8CF998, qword_22B7FD708);
    sub_22B7B03A8(&qword_27D8CF988, type metadata accessor for DaemonRequestIntentFileOutput, &unk_22B7FD918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF990);
  }

  return result;
}

uint64_t sub_22B7AC8B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_22B7ACA40();
  *v5 = v2;
  v5[1] = sub_22B6F12E8;

  return MEMORY[0x28210B618](a1, a2, v6);
}

unint64_t sub_22B7ACA40()
{
  result = qword_27D8CF9B8;
  if (!qword_27D8CF9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF9B8);
  }

  return result;
}

uint64_t sub_22B7ACBA0(uint64_t a1)
{
  v2 = sub_22B7B03A8(&qword_27D8CF978, type metadata accessor for DaemonRequestIntentFileOutput, &unk_22B7FD7C4);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_22B7ACC64(uint64_t a1)
{
  v2 = sub_22B7B03A8(&qword_27D8CF9D0, type metadata accessor for DaemonRequestIntentFileOutput, &unk_22B7FD978);

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_22B7ACCE4()
{
  result = qword_27D8CF9F0;
  if (!qword_27D8CF9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF9F0);
  }

  return result;
}

unint64_t sub_22B7ACD3C()
{
  result = qword_27D8CF9F8;
  if (!qword_27D8CF9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF9F8);
  }

  return result;
}

unint64_t sub_22B7ACE14()
{
  result = qword_27D8CFA00;
  if (!qword_27D8CFA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CFA00);
  }

  return result;
}

uint64_t sub_22B7ACE68()
{
  v0 = sub_22B7DA718();
  sub_22B6F24F4(v0, qword_27D8D4958);
  sub_22B4CFA74(v0, qword_27D8D4958);
  return sub_22B7DA708();
}

uint64_t sub_22B7ACECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[43] = a2;
  v3[44] = a3;
  v3[42] = a1;
  v4 = sub_22B7DAFD8();
  v3[45] = v4;
  v3[46] = *(v4 - 8);
  v3[47] = swift_task_alloc();
  sub_22B6F0AD4(&qword_27D8CF530, &unk_22B7FCDB0);
  v3[48] = swift_task_alloc();
  sub_22B6F0AD4(&qword_27D8CF4C0, &unk_22B7FDB70);
  v3[49] = swift_task_alloc();
  v5 = sub_22B7DA718();
  v3[50] = v5;
  v3[51] = *(v5 - 8);
  v3[52] = swift_task_alloc();
  sub_22B6F0AD4(&qword_27D8CEB28, &qword_22B7FAF90);
  v3[53] = swift_task_alloc();
  v3[54] = type metadata accessor for DaemonRequestIntentFileOutput(0);
  v3[55] = swift_task_alloc();
  sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v3[56] = swift_task_alloc();
  v6 = sub_22B7DA4B8();
  v3[57] = v6;
  v3[58] = *(v6 - 8);
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v7 = sub_22B7DB018();
  v3[64] = v7;
  v3[65] = *(v7 - 8);
  v3[66] = swift_task_alloc();
  v8 = sub_22B7DA9A8();
  v3[67] = v8;
  v3[68] = *(v8 - 8);
  v3[69] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B7AD240, 0, 0);
}

uint64_t sub_22B7AD240()
{
  v84 = v0;
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isRockNRollEnabled];

  if (!v2)
  {
    if (qword_27D8CCD08 != -1)
    {
      swift_once();
    }

    v7 = sub_22B7DB2B8();
    sub_22B4CFA74(v7, qword_27D8CF950);
    v8 = sub_22B7DB298();
    v9 = sub_22B7DBC98();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22B4CC000, v8, v9, "perform[]: dropping intent because the feature is not enabled.", v10, 2u);
      MEMORY[0x231898D60](v10, -1, -1);
    }

    sub_22B796928();
    swift_allocError();
    *v11 = 0;
    goto LABEL_19;
  }

  v3 = [objc_opt_self() sharedDaemon];
  if ([v3 respondsToSelector_])
  {
    v4 = [v3 intentProcessor];
    swift_unknownObjectRelease();
    sub_22B7DC118();
    swift_unknownObjectRelease();
    sub_22B6F0AD4(&qword_27D8CF4F0, &unk_22B7FCD60);
    if (swift_dynamicCast())
    {
      if (*(v0 + 80))
      {
        sub_22B4DFB0C((v0 + 56), v0 + 16);
        sub_22B7DA578();
        v5 = *(v0 + 296);
        if (v5)
        {
          v6 = *(v0 + 288);
        }

        else
        {
          v19 = *(v0 + 552);
          v20 = *(v0 + 544);
          v21 = *(v0 + 536);
          sub_22B7DA998();
          v6 = sub_22B7DA978();
          v5 = v22;
          (*(v20 + 8))(v19, v21);
        }

        *(v0 + 568) = v5;
        *(v0 + 560) = v6;
        if (qword_27D8CCD08 != -1)
        {
          swift_once();
        }

        v23 = sub_22B7DB2B8();
        *(v0 + 576) = sub_22B4CFA74(v23, qword_27D8CF950);

        v24 = sub_22B7DB298();
        v25 = sub_22B7DBCB8();
        v5, v26, v27, v28, v29, v30, v31, v32, v76, v79;
        v82 = v6;
        if (os_log_type_enabled(v24, v25))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v83[0] = v34;
          *v33 = 136315138;
          *(v33 + 4) = sub_22B4CFAAC(v6, v5, v83);
          _os_log_impl(&dword_22B4CC000, v24, v25, "perform[%s]: decoding request", v33, 0xCu);
          sub_22B4CFB78(v34);
          MEMORY[0x231898D60](v34, -1, -1);
          MEMORY[0x231898D60](v33, -1, -1);
        }

        v35 = *(v0 + 504);
        v36 = v0;
        v37 = *(v0 + 464);
        v38 = *(v36 + 57);
        sub_22B7DA578();
        v39 = sub_22B7DA498();
        v41 = v40;
        v42 = *(v37 + 8);
        *(v36 + 73) = v42;
        *(v36 + 74) = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v42(v35, v38);
        sub_22B7B03A8(&qword_27D8CF4F8, MEMORY[0x277D19648], MEMORY[0x277D19640]);
        sub_22B7DACA8();
        sub_22B705E98(v39, v41);
        sub_22B7DB008();
        sub_22B4D2BCC(v36 + 12, *(v36 + 15));
        DynamicType = swift_getDynamicType();
        *(v36 + 75) = DynamicType;
        v44 = *(v36 + 16);
        *(v36 + 76) = v44;

        v45 = sub_22B7DB298();
        v46 = sub_22B7DBCB8();
        v5, v47, v48, v49, v50, v51, v52, v53, v77, v80;
        v54 = v36;
        if (os_log_type_enabled(v45, v46))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v83[0] = v56;
          *v55 = 136315394;
          *(v54 + 40) = DynamicType;
          *(v54 + 41) = v44;
          sub_22B6F0AD4(&qword_27D8CF528, &unk_22B7FDBE0);
          v57 = sub_22B7DB6C8();
          v59 = v58;
          v60 = sub_22B4CFAAC(v57, v58, v83);
          v59, v61, v62, v63, v64, v65, v66, v67, v78, v81;
          *(v55 + 4) = v60;
          *(v55 + 12) = 2080;
          *(v55 + 14) = sub_22B4CFAAC(v82, v5, v83);
          _os_log_impl(&dword_22B4CC000, v45, v46, "perform[%s][%s]: processing request", v55, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x231898D60](v56, -1, -1);
          MEMORY[0x231898D60](v55, -1, -1);
        }

        v68 = *(v54 + 56);
        sub_22B7DBA38();
        v69 = sub_22B7DBA58();
        (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
        sub_22B4D0DE8((v54 + 1), (v54 + 11));
        sub_22B4D0DE8((v54 + 6), v54 + 216);
        v70 = swift_allocObject();
        *(v70 + 16) = 0;
        *(v70 + 24) = 0;
        sub_22B4DFB0C(v54 + 11, v70 + 32);
        sub_22B4DFB0C((v54 + 216), v70 + 72);
        v71 = sub_22B7231D8(0, 0, v68, &unk_22B7FDBC8, v70);
        *(v54 + 77) = v71;
        v72 = swift_task_alloc();
        *(v54 + 78) = v72;
        v73 = sub_22B6F0AD4(&qword_27D8CE560, &unk_22B7FDBD0);
        v74 = sub_22B6F0AD4(&unk_27D8CD800, &qword_22B7FA0C0);
        *v72 = v54;
        v72[1] = sub_22B7AE2F8;
        v75 = MEMORY[0x277D84950];

        return MEMORY[0x282200430](v54 + 136, v71, v73, v74, v75);
      }

      goto LABEL_14;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
LABEL_14:
  sub_22B4D0D64(v0 + 56, &qword_27D8CF4E8, &unk_22B7FDBA0);
  if (qword_27D8CCD08 != -1)
  {
    swift_once();
  }

  v12 = sub_22B7DB2B8();
  sub_22B4CFA74(v12, qword_27D8CF950);
  v13 = sub_22B7DB298();
  v14 = sub_22B7DBC98();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22B4CC000, v13, v14, "perform[]: dropping intent because there is no object to process the request.", v15, 2u);
    MEMORY[0x231898D60](v15, -1, -1);
  }

  sub_22B796928();
  swift_allocError();
  *v16 = 1;
LABEL_19:
  swift_willThrow();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_22B7AE2F8()
{
  *(*v1 + 632) = v0;

  if (v0)
  {

    v2 = sub_22B7AF1A0;
  }

  else
  {
    v2 = sub_22B7AE414;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B7AE414()
{
  v197 = v0;
  v1 = *(v0 + 632);

  sub_22B4D2BCC((v0 + 136), *(v0 + 160));
  v2 = sub_22B7DAC88();
  if (v1)
  {
    v4 = *(v0 + 528);
    v5 = *(v0 + 520);
    v6 = *(v0 + 512);

    sub_22B796928();
    v7 = swift_allocError();
    *v8 = 2;
    swift_willThrow();
    sub_22B4CFB78((v0 + 96));
    (*(v5 + 8))(v4, v6);
    sub_22B4CFB78((v0 + 136));
    v9 = *(v0 + 568);

    v10 = v7;
    v11 = sub_22B7DB298();
    v12 = sub_22B7DBC98();
    v9, v13, v14, v15, v16, v17, v18, v19, v149, v158;

    if (os_log_type_enabled(v11, v12))
    {
      v20 = v7;
      v21 = *(v0 + 568);
      v22 = *(v0 + 560);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v196[0] = v25;
      *v23 = 136315394;
      v26 = v21;
      v7 = v20;
      *(v23 + 4) = sub_22B4CFAAC(v22, v26, v196);
      *(v23 + 12) = 2112;
      v27 = v20;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v28;
      *v24 = v28;
      _os_log_impl(&dword_22B4CC000, v11, v12, "perform[%s]: unexpected error: %@", v23, 0x16u);
      sub_22B4D0D64(v24, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v24, -1, -1);
      sub_22B4CFB78(v25);
      MEMORY[0x231898D60](v25, -1, -1);
      MEMORY[0x231898D60](v23, -1, -1);
    }

    v29 = sub_22B7DA6E8();
    v30 = [v29 domain];
    v31 = sub_22B7DB6A8();
    v33 = v32;

    v35 = sub_22B7DB6A8();
    v41 = v34;
    if (v31 == v35 && v33 == v34)
    {
      v42 = *(v0 + 568);
      v33, v34, v35, v36, v37, v38, v39, v40, v150, v159;
      v42, v43, v44, v45, v46, v47, v48, v49, v151, v160;
LABEL_11:
      v41, v50, v51, v52, v53, v54, v55, v56, v152, v161;
      swift_willThrow();

      sub_22B4CFB78((v0 + 16));

      v105 = *(v0 + 8);
      goto LABEL_15;
    }

    v90 = sub_22B7DC518();
    v41, v91, v92, v93, v94, v95, v96, v97, v150, v159;
    v33, v98, v99, v100, v101, v102, v103, v104, v155, v164;
    if (v90)
    {
      v41 = *(v0 + 568);
      goto LABEL_11;
    }

    v126 = *(v0 + 368);
    v127 = v7;
    sub_22B7DAFC8();
    sub_22B7B03A8(&qword_27D8CF500, MEMORY[0x277D19638], MEMORY[0x277D19630]);
    v128 = sub_22B7DAC98();
    v129 = (v126 + 8);
    v182 = *(v0 + 584);
    v130 = *(v0 + 568);
    v131 = *(v0 + 552);
    v132 = *(v0 + 544);
    v156 = *(v0 + 536);
    v188 = *(v0 + 496);
    v191 = *(v0 + 488);
    v180 = *(v0 + 480);
    v181 = *(v0 + 472);
    v193 = *(v0 + 464);
    v195 = v7;
    v133 = *(v0 + 456);
    v134 = *(v0 + 440);
    v166 = *(v0 + 424);
    v169 = *(v0 + 408);
    v171 = *(v0 + 392);
    v173 = *(v0 + 400);
    v175 = *(v0 + 384);
    v186 = *(v0 + 432);
    v135 = v128;
    v137 = v136;
    (*v129)(*(v0 + 376), *(v0 + 360));
    v130, v138, v139, v140, v141, v142, v143, v144, v156, v166;
    v177 = v135;
    sub_22B705E44(v135, v137);
    sub_22B7DA998();
    sub_22B7DA978();
    (*(v132 + 8))(v131, v157);
    v145 = sub_22B7DB248();
    (*(*(v145 - 8) + 56))(v167, 1, 1, v145);
    sub_22B7DA4A8();
    v146 = *(v193 + 16);
    v146(v191, v188, v133);
    *v134 = 0xD00000000000001DLL;
    v134[1] = 0x800000022B7FDAF0;
    v134[2] = 0xD00000000000001DLL;
    v134[3] = 0x800000022B7FDAF0;
    sub_22B7DA708();
    (*(v169 + 56))(v171, 1, 1, v173);
    v147 = sub_22B7DA5A8();
    (*(*(v147 - 8) + 56))(v175, 1, 1, v147);
    sub_22B7DA5B8();
    v148 = *(v186 + 28);
    sub_22B6F0AD4(&qword_27D8CF540, &unk_22B7FDBB0);
    *(v134 + v148) = sub_22B7DA528();
    v146(v180, v191, v133);
    v146(v181, v180, v133);
    sub_22B7DA508();
    v182(v180, v133);
    v182(v191, v133);
    v182(v188, v133);
    sub_22B7B03A8(&qword_27D8CF988, type metadata accessor for DaemonRequestIntentFileOutput, &unk_22B7FD918);
    sub_22B7DA4F8();

    sub_22B705E98(v177, v137);
    sub_22B4CFB78((v0 + 16));
    sub_22B7B03F0(v134);
  }

  else
  {
    v192 = v3;
    v194 = v2;
    v57 = *(v0 + 568);

    v58 = sub_22B7DB298();
    v59 = sub_22B7DBCB8();
    v57, v60, v61, v62, v63, v64, v65, v66, v149, v158;
    if (os_log_type_enabled(v58, v59))
    {
      v67 = *(v0 + 568);
      v68 = *(v0 + 560);
      v189 = *(v0 + 600);
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v196[0] = v70;
      *v69 = 136315394;
      *(v0 + 304) = v189;
      sub_22B6F0AD4(&qword_27D8CF528, &unk_22B7FDBE0);
      v71 = sub_22B7DB6C8();
      v73 = v72;
      v74 = sub_22B4CFAAC(v71, v72, v196);
      v73, v75, v76, v77, v78, v79, v80, v81, v153, v162;
      *(v69 + 4) = v74;
      *(v69 + 12) = 2080;
      v82 = sub_22B4CFAAC(v68, v67, v196);
      v67, v83, v84, v85, v86, v87, v88, v89, v154, v163;
      *(v69 + 14) = v82;
      _os_log_impl(&dword_22B4CC000, v58, v59, "perform[%s][%s] completed", v69, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v70, -1, -1);
      MEMORY[0x231898D60](v69, -1, -1);
    }

    else
    {
      v106 = *(v0 + 568);

      v106, v107, v108, v109, v110, v111, v112, v113, v153, v162;
    }

    v179 = *(v0 + 584);
    v114 = *(v0 + 552);
    v115 = *(v0 + 544);
    v165 = *(v0 + 536);
    v183 = *(v0 + 520);
    v184 = *(v0 + 512);
    v185 = *(v0 + 528);
    v187 = *(v0 + 496);
    v190 = *(v0 + 488);
    v176 = *(v0 + 480);
    v178 = *(v0 + 472);
    v117 = *(v0 + 456);
    v116 = *(v0 + 464);
    v118 = *(v0 + 440);
    v119 = *(v0 + 424);
    v168 = *(v0 + 432);
    v120 = *(v0 + 408);
    v170 = *(v0 + 392);
    v172 = *(v0 + 400);
    v174 = *(v0 + 384);
    sub_22B705E44(v194, v192);
    sub_22B7DA998();
    sub_22B7DA978();
    (*(v115 + 8))(v114, v165);
    v121 = sub_22B7DB248();
    (*(*(v121 - 8) + 56))(v119, 1, 1, v121);
    sub_22B7DA4A8();
    v122 = *(v116 + 16);
    v122(v190, v187, v117);
    *v118 = 0xD00000000000001DLL;
    v118[1] = 0x800000022B7FDAF0;
    v118[2] = 0xD00000000000001DLL;
    v118[3] = 0x800000022B7FDAF0;
    sub_22B7DA708();
    (*(v120 + 56))(v170, 1, 1, v172);
    v123 = sub_22B7DA5A8();
    (*(*(v123 - 8) + 56))(v174, 1, 1, v123);
    sub_22B7DA5B8();
    v124 = *(v168 + 28);
    sub_22B6F0AD4(&qword_27D8CF540, &unk_22B7FDBB0);
    *(v118 + v124) = sub_22B7DA528();
    v122(v176, v190, v117);
    v122(v178, v176, v117);
    sub_22B7DA508();
    v179(v176, v117);
    v179(v190, v117);
    v179(v187, v117);
    sub_22B7B03A8(&qword_27D8CF988, type metadata accessor for DaemonRequestIntentFileOutput, &unk_22B7FD918);
    sub_22B7DA4F8();
    sub_22B705E98(v194, v192);
    sub_22B4CFB78((v0 + 96));
    (*(v183 + 8))(v185, v184);
    sub_22B4CFB78((v0 + 16));
    sub_22B7B03F0(v118);
    sub_22B4CFB78((v0 + 136));
  }

  v105 = *(v0 + 8);
LABEL_15:

  return v105();
}

uint64_t sub_22B7AF1A0()
{
  v122 = v0;
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  sub_22B4CFB78(v0 + 12);
  (*(v2 + 8))(v1, v3);
  v4 = v0[79];
  v5 = v0[71];

  v6 = v4;
  v7 = sub_22B7DB298();
  v8 = sub_22B7DBC98();
  v5, v9, v10, v11, v12, v13, v14, v15, v94, v101;

  if (os_log_type_enabled(v7, v8))
  {
    v16 = v0[71];
    v17 = v0[70];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v121 = v20;
    *v18 = 136315394;
    *(v18 + 4) = sub_22B4CFAAC(v17, v16, &v121);
    *(v18 + 12) = 2112;
    v21 = v4;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v22;
    *v19 = v22;
    _os_log_impl(&dword_22B4CC000, v7, v8, "perform[%s]: unexpected error: %@", v18, 0x16u);
    sub_22B4D0D64(v19, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v19, -1, -1);
    sub_22B4CFB78(v20);
    MEMORY[0x231898D60](v20, -1, -1);
    MEMORY[0x231898D60](v18, -1, -1);
  }

  v23 = sub_22B7DA6E8();
  v24 = [v23 domain];
  v25 = sub_22B7DB6A8();
  v27 = v26;

  v28 = sub_22B7DB6A8();
  v36 = v29;
  if (v25 == v28 && v27 == v29)
  {
    v60 = v0[71];
    v27, v29, v30, v31, v32, v33, v34, v35, v95, v102;
    v60, v61, v62, v63, v64, v65, v66, v67, v98, v105;
    goto LABEL_10;
  }

  v38 = sub_22B7DC518();
  v36, v39, v40, v41, v42, v43, v44, v45, v95, v102;
  v27, v46, v47, v48, v49, v50, v51, v52, v96, v103;
  if (v38)
  {
    v36 = v0[71];
LABEL_10:
    v36, v53, v54, v55, v56, v57, v58, v59, v97, v104;
    swift_willThrow();

    sub_22B4CFB78(v0 + 2);

    v68 = v0[1];
    goto LABEL_11;
  }

  v70 = v0[46];
  v71 = v4;
  sub_22B7DAFC8();
  sub_22B7B03A8(&qword_27D8CF500, MEMORY[0x277D19638], MEMORY[0x277D19630]);
  v72 = sub_22B7DAC98();
  v73 = v4;
  v74 = (v70 + 8);
  v115 = v0[73];
  v75 = v0[71];
  v76 = v0[69];
  v77 = v0[68];
  v99 = v0[67];
  v117 = v0[62];
  v118 = v0[61];
  v113 = v0[60];
  v114 = v0[59];
  v78 = v0[57];
  v119 = v0[58];
  v79 = v0[55];
  v116 = v0[54];
  v106 = v0[53];
  v108 = v0[51];
  v109 = v0[49];
  v110 = v0[50];
  v111 = v0[48];
  v120 = v73;
  v80 = v72;
  v82 = v81;
  (*v74)(v0[47], v0[45]);
  v75, v83, v84, v85, v86, v87, v88, v89, v99, v106;
  v112 = v80;
  sub_22B705E44(v80, v82);
  sub_22B7DA998();
  sub_22B7DA978();
  (*(v77 + 8))(v76, v100);
  v90 = sub_22B7DB248();
  (*(*(v90 - 8) + 56))(v107, 1, 1, v90);
  sub_22B7DA4A8();
  v91 = *(v119 + 16);
  v91(v118, v117, v78);
  *v79 = 0xD00000000000001DLL;
  v79[1] = 0x800000022B7FDAF0;
  v79[2] = 0xD00000000000001DLL;
  v79[3] = 0x800000022B7FDAF0;
  sub_22B7DA708();
  (*(v108 + 56))(v109, 1, 1, v110);
  v92 = sub_22B7DA5A8();
  (*(*(v92 - 8) + 56))(v111, 1, 1, v92);
  sub_22B7DA5B8();
  v93 = *(v116 + 28);
  sub_22B6F0AD4(&qword_27D8CF540, &unk_22B7FDBB0);
  *(v79 + v93) = sub_22B7DA528();
  v91(v113, v118, v78);
  v91(v114, v113, v78);
  sub_22B7DA508();
  v115(v113, v78);
  v115(v118, v78);
  v115(v117, v78);
  sub_22B7B03A8(&qword_27D8CF988, type metadata accessor for DaemonRequestIntentFileOutput, &unk_22B7FD918);
  sub_22B7DA4F8();

  sub_22B705E98(v112, v82);
  sub_22B4CFB78(v0 + 2);
  sub_22B7B03F0(v79);

  v68 = v0[1];
LABEL_11:

  return v68();
}

uint64_t sub_22B7AFA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22B7AFA8C, 0, 0);
}

uint64_t sub_22B7AFA8C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = v1[3];
  v5 = v1[4];
  sub_22B4D2BCC(v1, v4);
  v6 = v2[3];
  v7 = v2[4];
  v8 = sub_22B4D2BCC(v2, v6);
  v9 = *(v5 + 8);
  v3[3] = swift_getAssociatedTypeWitness();
  v3[4] = swift_getAssociatedConformanceWitness();
  v10 = sub_22B6FC8CC(v3);
  v13 = (v9 + *v9);
  v11 = swift_task_alloc();
  v0[5] = v11;
  *v11 = v0;
  v11[1] = sub_22B7958D4;

  return (v13)(v10, v8, v6, v7, v4, v5);
}

uint64_t sub_22B7AFC84@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_22B4CFA74(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_22B7AFD2C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B6F0D94;

  return sub_22B7ACECC(a1, v5, v4);
}

uint64_t sub_22B7AFDD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22B7AFF18();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22B7AFE00(uint64_t a1)
{
  v2 = sub_22B7ACE14();

  return MEMORY[0x28210B538](a1, v2);
}

void sub_22B7AFE74(uint64_t a1)
{
  sub_22B7DA5C8();
  if (v1 <= 0x3F)
  {
    sub_22B795DD8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22B7AFF18()
{
  v0 = sub_22B6F0AD4(&qword_27D8CF4A8, &unk_22B7FCD20);
  MEMORY[0x28223BE20](v0 - 8);
  v30 = &v23 - v1;
  v29 = sub_22B7DA5F8();
  v2 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22B6F0AD4(&qword_27D8CF4B0, &unk_22B7FDB60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_22B6F0AD4(&qword_27D8CF4B8, &unk_22B7FCD30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_22B6F0AD4(&qword_27D8CF4C0, &unk_22B7FDB70);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v28 = sub_22B6F0AD4(&qword_27D8CF4C8, &unk_22B7FCD40);
  v23 = sub_22B7DA718();
  v14 = *(v23 - 8);
  v26 = *(v14 + 56);
  v27 = v14 + 56;
  v26(v13, 1, 1, v23);
  v15 = sub_22B7DA4B8();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = sub_22B7DA4E8();
  v17 = *(v16 - 8);
  v24 = *(v17 + 56);
  v25 = v17 + 56;
  v24(v7, 1, 1, v16);
  sub_22B6F0AD4(&qword_27D8CF4D0, &unk_22B7FDB80);
  sub_22B7DB248();
  *(swift_allocObject() + 16) = xmmword_22B7F93B0;
  sub_22B7DB218();
  v18 = *MEMORY[0x277CBA308];
  v19 = *(v2 + 104);
  v20 = v29;
  v19(v4, v18, v29);
  v28 = sub_22B7DA588();
  sub_22B6F0AD4(&qword_27D8CF4D8, &qword_22B7FCD50);
  v26(v13, 1, 1, v23);
  v21 = sub_22B7DB668();
  v31 = 0;
  v32 = 0;
  (*(*(v21 - 8) + 56))(v30, 1, 1, v21);
  v24(v7, 1, 1, v16);
  v19(v4, v18, v20);
  sub_22B7DA598();
  return v28;
}

uint64_t sub_22B7B03A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B7B03F0(uint64_t a1)
{
  v2 = type metadata accessor for DaemonRequestIntentFileOutput(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B7B044C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B6F0D94;

  return sub_22B7AFA68(a1, v4, v5, v1 + 32, v1 + 72);
}

unint64_t sub_22B7B0514()
{
  result = qword_27D8CFA28;
  if (!qword_27D8CFA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CFA28);
  }

  return result;
}

uint64_t sub_22B7B0570()
{
  sub_22B7DBA18();
  result = sub_22B7DBA08();
  qword_281420C78 = result;
  return result;
}

double static DaemonWorkActor.shared.getter()
{
  if (qword_281420C70 != -1)
  {
    swift_once();
  }

  return result;
}

double sub_22B7B0618()
{
  if (qword_281420C70 != -1)
  {
    swift_once();
  }

  return result;
}

id IMDInternalWorkQueue.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IMDInternalWorkQueue.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMDInternalWorkQueue();
  return objc_msgSendSuper2(&v2, sel_init);
}

id IMDInternalWorkQueue.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for IMDInternalWorkQueue();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t _s12IMDaemonCore20IMDInternalWorkQueueC07enqueueD5BlockyyyyYbcFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B7DB348();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B7DB398();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B74D6EC();
  v12 = sub_22B7DBD58();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  aBlock[4] = sub_22B717740;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1FC40;
  v14 = _Block_copy(aBlock);

  sub_22B7DACD8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22B799D14();
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B799D6C();
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v11, v7, v14);
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void sub_22B7B0AC8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22B6F0AD4(&unk_27D8CDBE0, &qword_22B7FD3E0);
    v2 = sub_22B7DC488();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_22B4D1F68(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_22B4D7F04(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_22B4D7F04(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_22B4D7F04(v31, v32);
    v16 = sub_22B7DC228();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_22B4D7F04(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_22B7B0D90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22B6F0AD4(&unk_27D8CDBE0, &qword_22B7FD3E0);
    v2 = sub_22B7DC488();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v8 << 6)));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_22B4D7F04(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_22B4D7F04(v29, v30);
    v14 = sub_22B7DC228();
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_22B4D7F04(v30, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_22B7B1048(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22B6F0AD4(&unk_27D8CDBE0, &qword_22B7FD3E0);
    v2 = sub_22B7DC488();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v8 << 6)));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_dynamicCast();
    sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_22B4D7F04(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_22B4D7F04(v29, v30);
    v14 = sub_22B7DC228();
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_22B4D7F04(v30, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_22B7B1314(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_22B6F0AD4(&qword_27D8CED00, &unk_22B7FBA10);
    v2 = sub_22B7DC488();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;
  v46 = (v2 + 8);

  v8 = 0;
  while (v6)
  {
    v22 = v8;
LABEL_13:
    v23 = __clz(__rbit64(v6)) | (v22 << 6);
    sub_22B4DA0DC(*(v1 + 48) + 40 * v23, v54);
    sub_22B4D1F68(*(v1 + 56) + 32 * v23, v55 + 8);
    v52[0] = v55[0];
    v52[1] = v55[1];
    v53 = v56;
    v51[0] = v54[0];
    v51[1] = v54[1];
    sub_22B4DA0DC(v51, v50);
    if (!swift_dynamicCast())
    {
      sub_22B7B4764(v51);

LABEL_22:

      return;
    }

    sub_22B4D1F68(v52 + 8, v50);
    sub_22B7B4764(v51);
    if ((swift_dynamicCast() & 1) == 0)
    {

      v49, v37, v38, v39, v40, v41, v42, v43, v44, v46;
      goto LABEL_22;
    }

    v6 &= v6 - 1;
    v24 = sub_22B723648(v48, v49);
    if (v25)
    {
      v9 = v1;
      v10 = 16 * v24;
      v11 = (v2[6] + 16 * v24);
      v12 = v11[1];
      *v11 = v48;
      v11[1] = v49;
      v12, v25, v26, v27, v28, v29, v30, v31, v44, v46;
      v13 = (v2[7] + v10);
      v1 = v9;
      v14 = v13[1];
      *v13 = v48;
      v13[1] = v49;
      v14, v15, v16, v17, v18, v19, v20, v21, v45, v47;
      v8 = v22;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_24;
      }

      *&v46[(v24 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v24;
      v32 = (v2[6] + 16 * v24);
      *v32 = v48;
      v32[1] = v49;
      v33 = (v2[7] + 16 * v24);
      *v33 = v48;
      v33[1] = v49;
      v34 = v2[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_25;
      }

      v2[2] = v36;
      v8 = v22;
    }
  }

  while (1)
  {
    v22 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v22 >= v7)
    {
      goto LABEL_22;
    }

    v6 = *(v3 + 8 * v22);
    ++v8;
    if (v6)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_22B7B15D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22B6F0AD4(&qword_27D8CDB58, &qword_22B7FA358);
    v2 = sub_22B7DC488();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v26 = (v2 + 8);

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v13 = __clz(__rbit64(v5)) | (v12 << 6);
    sub_22B4DA0DC(*(a1 + 48) + 40 * v13, v36);
    sub_22B4D1F68(*(a1 + 56) + 32 * v13, v37 + 8);
    v34[0] = v37[0];
    v34[1] = v37[1];
    v35 = v38;
    v33[0] = v36[0];
    v33[1] = v36[1];
    sub_22B4DA0DC(v33, v28);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_22B4D1F68(v34 + 8, v29);
    sub_22B7B4764(v33);
    v30 = v27;
    sub_22B4D7F04(v29, v31);
    v14 = v30;
    sub_22B4D7F04(v31, v32);
    sub_22B4D7F04(v32, &v30);
    v15 = sub_22B723648(v14, *(&v14 + 1));
    if (v16)
    {
      v8 = v2[6] + 16 * v15;
      v9 = *(v8 + 8);
      *v8 = v14;
      v10 = v15;
      v9, v16, v17, v18, v19, v20, v21, v22, v26, v27;
      v11 = (v2[7] + 32 * v10);
      sub_22B4CFB78(v11);
      sub_22B4D7F04(&v30, v11);
      v7 = v12;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *&v26[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
      *(v2[6] + 16 * v15) = v14;
      sub_22B4D7F04(&v30, (v2[7] + 32 * v15));
      v23 = v2[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_23;
      }

      v2[2] = v25;
      v7 = v12;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v12 = v7;
  }

  sub_22B7B4764(v33);
}

id static IMDaemonCoreBridgeDelegate.updateChat(usingSyncData:)(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 updateChatUsingSyncData_];
}

BOOL static IMDaemonCoreBridgeDelegate.supportsService(withName:)(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() sharedController];
  v3 = sub_22B7DB678();
  v4 = [v2 serviceWithName_];

  if (v4)
  {
  }

  return v4 != 0;
}

uint64_t static IMDaemonCoreBridgeDelegate.indexMessageGUIDs(_:lane:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B6F12E8;

  return sub_22B7B3B80(a1, a2);
}

uint64_t static IMDaemonCoreBridgeDelegate.indexChatGUIDs(_:lane:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B6F0D94;

  return sub_22B7B3F30(a1, a2);
}

id sub_22B7B1B68(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = objc_opt_self();
  v7 = sub_22B7DB678();
  v8 = [v6 *a4];

  return v8;
}

void static IMDaemonCoreBridgeDelegate.add(item:toParentChat:updatedLastMessageCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_opt_self();
  v7 = sub_22B7DB678();
  [v6 addItem:a1 toParentChatID:v7 updatedLastMessageCount:a4];
}

id static IMDaemonCoreBridgeDelegate.decompress(data:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_22B7DA838();
  result = [v2 _FTOptionallyDecompressData];
  if (result)
  {
    v4 = result;
    v5 = sub_22B7DA848();

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static IMDaemonCoreBridgeDelegate.updateTemporaryTransferGUIDS(forItem:)(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 updateTemporaryTransferGUIDsIfNeeded_];
}

void static IMDaemonCoreBridgeDelegate.storeAttachment(transfer:withMessageGUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_22B7DB678();
  }

  else
  {
    v4 = 0;
  }

  [objc_opt_self() storeAttachmentWithTransfer:a1 withMessageGUID:v4];
}

id static IMDaemonCoreBridgeDelegate.storeAttachment(transfer:withChatGUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_22B7DB678();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_opt_self() storeAttachmentWithTransfer:a1 withChatGUID:v4];

  return v5;
}

id static IMDaemonCoreBridgeDelegate.reloadDatabase()()
{
  v0 = objc_opt_self();

  return [v0 reloadDatabase];
}

id static IMDaemonCoreBridgeDelegate.storeAttachments(forMessage:)(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 storeAttachmentsForMessage_];
}

id static IMDaemonCoreBridgeDelegate.createMessageItem(recordRef:handle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();
  v5 = sub_22B7DB678();
  v6 = [v4 createMessageItemWithRecordRef:a1 handle:v5];

  return v6;
}

id static IMDaemonCoreBridgeDelegate.updateStamp()()
{
  v0 = objc_opt_self();

  return [v0 updateStamp];
}

id sub_22B7B1F6C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_opt_self();
  v5 = sub_22B7DB678();
  v6 = [v4 *a3];

  return v6;
}

void sub_22B7B1FEC(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = objc_opt_self();
  v7 = sub_22B7DB678();
  [v6 *a4];
}

void sub_22B7B2084(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_opt_self();
  v5 = sub_22B7DB678();
  [v4 *a3];
}

id static IMDaemonCoreBridgeDelegate.register(guid:localURL:)(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = sub_22B7DB678();
  v4 = sub_22B7DA788();
  v5 = [v2 registerGuid:v3 forLocalURL:v4];

  return v5;
}

id static IMDaemonCoreBridgeDelegate.isRecoverablyDeletedMessageGUID(_:)(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = sub_22B7DB678();
  v4 = [v2 isRecoverablyDeletedMessageGUID_];

  return v4;
}

void static IMDaemonCoreBridgeDelegate.moveMessages(forGUIDs:deleteDate:)(uint64_t a1)
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = sub_22B7DB8F8();
  v3 = sub_22B7DA8B8();
  [v1 moveMessagesWithGUIDsToRecentlyDeleted:v2 deleteDate:v3];
}

void static IMDaemonCoreBridgeDelegate.moveMessagePart(forGUID:deleteDate:partBody:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_opt_self();
  v6 = sub_22B7DB678();
  v7 = sub_22B7DA8B8();
  [v5 moveMessagePartForGUID:v6 deleteDate:v7 partBody:a4];
}

uint64_t static IMDaemonCoreBridgeDelegate.primaryAccountCountryCode()()
{
  v0 = [objc_opt_self() primaryAccountCountryCode];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_22B7DB6A8();

  return v2;
}

id sub_22B7B23F4(uint64_t a1, SEL *a2)
{
  v4 = objc_opt_self();
  sub_22B7B0AC8(a1);
  v6 = v5;
  v7 = sub_22B7DB568();
  v6, v8, v9, v10, v11, v12, v13, v14, v17, v18;
  v15 = [v4 *a2];

  return v15;
}

id static IMDaemonCoreBridgeDelegate.handleMessageUpdate(withRecord:)(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 handleMessageUpdateWithCKRecord_];
}

uint64_t static IMDaemonCoreBridgeDelegate.deviceActiveString()()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 deviceActiveString];

  v2 = sub_22B7DB6A8();
  return v2;
}

id static IMDaemonCoreBridgeDelegate.shouldReportToRTC()()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 shouldReportToRTC];

  return v1;
}

uint64_t static IMDaemonCoreBridgeDelegate.syncDatesDictionary()()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 syncState];

  v2 = [v1 analyticSyncDatesDictionary];
  if (!v2)
  {
    return 0;
  }

  v3 = sub_22B7DB588();

  sub_22B7B15D4(v3);
  v5 = v4;
  v3, v6, v7, v8, v9, v10, v11, v12, v14, v15;
  return v5;
}

uint64_t static IMDaemonCoreBridgeDelegate.syncReportDictionary()()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 syncState];

  v2 = [v1 syncReportDictionary];
  sub_22B7DB578();

  return 0;
}

uint64_t static IMDaemonCoreBridgeDelegate.syncReportDictionary(attemptCount:wasSuccessful:duration:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B766620;
  v8.n128_f64[0] = a3;

  return (sub_22B7B43F8)(a1, a2, v8);
}

void static IMDaemonCoreBridgeDelegate.setSyncDate(_:forKey:shouldOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 syncState];

  v7 = sub_22B7DA8B8();
  v8 = sub_22B7DB678();
  [v6 setAnalyticSyncDatesDictionaryObject:v7 forKey:v8 shouldOverrideIfExists:a4 & 1];
}

void static IMDaemonCoreBridgeDelegate.postSyncState(withStep:category:reportDictionary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [objc_opt_self() sharedInstance];
  v6 = sub_22B7DB678();
  v7 = sub_22B7DB068();
  sub_22B7B0AC8(a4);
  v9 = v8;
  v10 = sub_22B7DB568();
  v9, v11, v12, v13, v14, v15, v16, v17, v18, v10;
  [v5 postSyncStateToRTC:v6 category:v7 reportDictionary:v19];
}

id static IMDaemonCoreBridgeDelegate.generatePreview(transfer:)(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 generatePreviewForTransfer_];
}

id sub_22B7B2A14(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 updateChatUsingSyncData_];
}

BOOL sub_22B7B2A5C(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() sharedController];
  v3 = sub_22B7DB678();
  v4 = [v2 serviceWithName_];

  if (v4)
  {
  }

  return v4 != 0;
}

uint64_t sub_22B7B2B78(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B6F12E8;

  return sub_22B7B3B80(a1, a2);
}

uint64_t sub_22B7B2C2C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B6F12E8;

  return sub_22B7B3F30(a1, a2);
}

id sub_22B7B2CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v8 = objc_opt_self();
  v9 = sub_22B7DB678();
  v10 = [v8 *a6];

  return v10;
}

void sub_22B7B2D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_opt_self();
  v7 = sub_22B7DB678();
  [v6 addItem:a1 toParentChatID:v7 updatedLastMessageCount:a4];
}

id sub_22B7B2E08(uint64_t a1, uint64_t a2)
{
  v2 = sub_22B7DA838();
  result = [v2 _FTOptionallyDecompressData];
  if (result)
  {
    v4 = result;
    v5 = sub_22B7DA848();

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_22B7B2E7C(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 updateTemporaryTransferGUIDsIfNeeded_];
}

void sub_22B7B2ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_22B7DB678();
  }

  else
  {
    v4 = 0;
  }

  [objc_opt_self() storeAttachmentWithTransfer:a1 withMessageGUID:v4];
}

id sub_22B7B2F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_22B7DB678();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_opt_self() storeAttachmentWithTransfer:a1 withChatGUID:v4];

  return v5;
}

id sub_22B7B2FB0()
{
  v0 = objc_opt_self();

  return [v0 reloadDatabase];
}

id sub_22B7B2FE8(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 storeAttachmentsForMessage_];
}

id sub_22B7B3030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();
  v5 = sub_22B7DB678();
  v6 = [v4 createMessageItemWithRecordRef:a1 handle:v5];

  return v6;
}

id sub_22B7B30AC()
{
  v0 = objc_opt_self();

  return [v0 updateStamp];
}

id sub_22B7B30F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = objc_opt_self();
  v7 = sub_22B7DB678();
  v8 = [v6 *a5];

  return v8;
}

void sub_22B7B3170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v8 = objc_opt_self();
  v9 = sub_22B7DB678();
  [v8 *a6];
}

void sub_22B7B3208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = objc_opt_self();
  v7 = sub_22B7DB678();
  [v6 *a5];
}

id sub_22B7B3284(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = sub_22B7DB678();
  v4 = sub_22B7DA788();
  v5 = [v2 registerGuid:v3 forLocalURL:v4];

  return v5;
}

uint64_t sub_22B7B3304()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 syncState];

  v2 = [v1 analyticSyncDatesDictionary];
  if (!v2)
  {
    return 0;
  }

  v3 = sub_22B7DB588();

  sub_22B7B15D4(v3);
  v5 = v4;
  v3, v6, v7, v8, v9, v10, v11, v12, v14, v15;
  return v5;
}

void sub_22B7B33D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 syncState];

  v7 = sub_22B7DA8B8();
  v8 = sub_22B7DB678();
  [v6 setAnalyticSyncDatesDictionaryObject:v7 forKey:v8 shouldOverrideIfExists:a4 & 1];
}

uint64_t sub_22B7B34D0()
{
  v0 = [objc_opt_self() primaryAccountCountryCode];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_22B7DB6A8();

  return v2;
}

id sub_22B7B3540(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = sub_22B7DB678();
  v4 = [v2 isRecoverablyDeletedMessageGUID_];

  return v4;
}

void sub_22B7B35AC(uint64_t a1)
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = sub_22B7DB8F8();
  v3 = sub_22B7DA8B8();
  [v1 moveMessagesWithGUIDsToRecentlyDeleted:v2 deleteDate:v3];
}

void sub_22B7B3654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_opt_self();
  v6 = sub_22B7DB678();
  v7 = sub_22B7DA8B8();
  [v5 moveMessagePartForGUID:v6 deleteDate:v7 partBody:a4];
}

id sub_22B7B3718(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = objc_opt_self();
  sub_22B7B0AC8(a1);
  v8 = v7;
  v9 = sub_22B7DB568();
  v8, v10, v11, v12, v13, v14, v15, v16, v19, v20;
  v17 = [v6 *a4];

  return v17;
}

id sub_22B7B37B0(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 handleMessageUpdateWithCKRecord_];
}

uint64_t sub_22B7B37F8()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 deviceActiveString];

  v2 = sub_22B7DB6A8();
  return v2;
}

id sub_22B7B3878()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 shouldReportToRTC];

  return v1;
}

uint64_t sub_22B7B38D0()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 syncState];

  v2 = [v1 syncReportDictionary];
  sub_22B7DB578();

  return 0;
}

uint64_t sub_22B7B3988(uint64_t a1, uint64_t a2, double a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B6FAF68;
  v8.n128_f64[0] = a3;

  return (sub_22B7B43F8)(a1, a2, v8);
}

void sub_22B7B3A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [objc_opt_self() sharedInstance];
  v6 = sub_22B7DB678();
  v7 = sub_22B7DB068();
  sub_22B7B0AC8(a4);
  v9 = v8;
  v10 = sub_22B7DB568();
  v9, v11, v12, v13, v14, v15, v16, v17, v18, v10;
  [v5 postSyncStateToRTC:v6 category:v7 reportDictionary:v19];
}

id sub_22B7B3B38(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 generatePreviewForTransfer_];
}

uint64_t sub_22B7B3B80(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  sub_22B7DB058();
  v2[20] = sub_22B7DB048();
  sub_22B7DBA18();
  v4 = sub_22B7DB9C8();
  v2[21] = v4;
  v2[22] = v3;

  return MEMORY[0x2822009F8](sub_22B7B3C18, v4, v3);
}

uint64_t sub_22B7B3C18()
{
  v1 = [objc_opt_self() contextWithReason_];
  v0[23] = v1;
  sub_22B7DBDA8();
  v2 = [objc_opt_self() indexingQueryProvider];
  v0[24] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = sub_22B7DB8F8();
    v0[25] = v4;
    v0[2] = v0;
    v0[3] = sub_22B7B3E00;
    v5 = swift_continuation_init();
    v0[17] = sub_22B6F0AD4(&qword_27D8CE618, &qword_22B7FA6A0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_22B731620;
    v0[13] = &unk_283F1FCB8;
    v0[14] = v5;
    [v3 addMessageGUIDs:v4 context:v1 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22B7B3E00()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_22B7B47E0;
  }

  else
  {
    v5 = sub_22B7B47DC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_22B7B3F30(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  sub_22B7DB058();
  v2[20] = sub_22B7DB048();
  sub_22B7DBA18();
  v4 = sub_22B7DB9C8();
  v2[21] = v4;
  v2[22] = v3;

  return MEMORY[0x2822009F8](sub_22B7B3FC8, v4, v3);
}

uint64_t sub_22B7B3FC8()
{
  v1 = [objc_opt_self() contextWithReason_];
  v0[23] = v1;
  sub_22B7DBDA8();
  v2 = [objc_opt_self() indexingQueryProvider];
  v0[24] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = sub_22B7DB8F8();
    v0[25] = v4;
    v0[2] = v0;
    v0[3] = sub_22B7B41B0;
    v5 = swift_continuation_init();
    v0[17] = sub_22B6F0AD4(&qword_27D8CE618, &qword_22B7FA6A0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_22B731620;
    v0[13] = &unk_283F1FC90;
    v0[14] = v5;
    [v3 addChatGUIDs:v4 context:v1 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22B7B41B0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_22B7B4368;
  }

  else
  {
    v5 = sub_22B7B42E0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_22B7B42E0()
{
  v1 = *(v0 + 200);

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B7B4368()
{
  v1 = v0[25];
  v2 = v0[23];

  swift_willThrow();

  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t sub_22B7B43F8(uint64_t a1, char a2, double a3)
{
  *(v3 + 160) = a3;
  *(v3 + 176) = a2;
  *(v3 + 152) = a1;
  return MEMORY[0x2822009F8](sub_22B7B4420, 0, 0);
}

uint64_t sub_22B7B4420()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 syncState];
  *(v0 + 168) = v5;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_22B7B45A4;
  v6 = swift_continuation_init();
  *(v0 + 136) = sub_22B6F0AD4(&qword_27D8CFA30, &unk_22B7FDF50);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_22B77E9CC;
  *(v0 + 104) = &unk_283F1FC68;
  *(v0 + 112) = v6;
  [v5 syncReportDictionaryForAttempt:v3 withSuccess:v2 duration:v0 + 80 completion:v1];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_22B7B45A4()
{

  return MEMORY[0x2822009F8](sub_22B7B4684, 0, 0);
}

uint64_t sub_22B7B4684()
{
  v1 = v0[21];
  v2 = v0[18];
  sub_22B7DB578();

  v3 = v0[1];

  return v3(0);
}

uint64_t sub_22B7B4764(uint64_t a1)
{
  v2 = sub_22B6F0AD4(&qword_27D8CFA38, &unk_22B7FDF60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id ClientConnectionManager.__allocating_init(connectionListeners:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___IMDClientConnectionManager_connectionListeners] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ClientConnectionManager.init(connectionListeners:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___IMDClientConnectionManager_connectionListeners] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_22B7B48A4()
{
  if (qword_28141F3C8 != -1)
  {
    swift_once();
  }

  v1 = sub_22B7DB2B8();
  sub_22B4CFA74(v1, qword_281422698);
  v2 = sub_22B7DB298();
  v3 = sub_22B7DBC78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B4CC000, v2, v3, "Starting to accept incoming connections", v4, 2u);
    MEMORY[0x231898D60](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  [objc_opt_self() registerSharedProvider_];
  sub_22B7DBA18();
  *(v0 + 24) = sub_22B7DBA08();
  v7 = sub_22B7DB9C8();

  return MEMORY[0x2822009F8](sub_22B7B4A14, v7, v6);
}

uint64_t sub_22B7B4A14()
{

  v1 = [objc_opt_self() sharedController];
  v2 = [v1 allServices];

  sub_22B7B4D30();
  v3 = sub_22B7DB918();

  if (v3 >> 62)
  {
    v11 = sub_22B7DC1C8();
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_13:
    v3, v4, v5, v6, v7, v8, v9, v10, v34, v35;
    v16 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_3:
  v38 = MEMORY[0x277D84F90];
  v12 = sub_22B7AB6B4(0, v11 & ~(v11 >> 63), 0);
  if (v11 < 0)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  v36 = v0;
  v15 = 0;
  v16 = v38;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x231895C80](v15, v3);
    }

    else
    {
      v17 = *(v3 + 8 * v15 + 32);
    }

    v18 = v17;
    v19 = [v18 internalName];
    v20 = sub_22B7DB6A8();
    v22 = v21;

    v31 = *(v38 + 16);
    v30 = *(v38 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_22B7AB6B4((v30 > 1), v31 + 1, 1);
    }

    ++v15;
    *(v38 + 16) = v31 + 1;
    v32 = v38 + 16 * v31;
    *(v32 + 32) = v20;
    *(v32 + 40) = v22;
  }

  while (v11 != v15);
  v3, v23, v24, v25, v26, v27, v28, v29, v34, v36;
  v0 = v37;
LABEL_14:
  v0[4] = v16;
  v12 = sub_22B7B4C28;
  v13 = 0;
  v14 = 0;

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22B7B4C28(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = *(*(v8 + 16) + OBJC_IVAR___IMDClientConnectionManager_connectionListeners);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 40);
    do
    {
      v12 = *v11;
      ObjectType = swift_getObjectType();
      v14 = *(v12 + 24);
      swift_unknownObjectRetain();

      v14(v15, ObjectType, v12);
      (*(v12 + 40))(ObjectType, v12);
      swift_unknownObjectRelease();
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8, v18, v19;
  v16 = *(v8 + 8);

  return v16();
}

unint64_t sub_22B7B4D30()
{
  result = qword_28141F290;
  if (!qword_28141F290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28141F290);
  }

  return result;
}

void ClientConnectionManager.notifyClientsNewSetupInfoAvailable(requiredCapabilities:)(uint64_t a1)
{
  v2 = v1;
  if (qword_28141F3C8 != -1)
  {
    swift_once();
  }

  v4 = sub_22B7DB2B8();
  sub_22B4CFA74(v4, qword_281422698);
  v5 = sub_22B7DB298();
  v6 = sub_22B7DBC78();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B4CC000, v5, v6, "Notifying clients they need to re-request setup", v7, 2u);
    MEMORY[0x231898D60](v7, -1, -1);
  }

  v8 = IMGetDaemonListenerProtocol();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = v2;
  v9[4] = a1;
  v9[5] = 0;
  v10 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  aBlock[4] = sub_22B4D5CDC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D1BA8;
  aBlock[3] = &unk_283F1FD08;
  v11 = _Block_copy(aBlock);
  v12 = v2;
  v13 = [v10 initWithProtocol:v8 forwardingHandler:v11];

  _Block_release(v11);

  [swift_dynamicCastObjCProtocolUnconditional() newSetupInfoAvailable];
}

id ClientConnectionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ClientConnectionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B7B5058()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B6F0D94;

  return ClientConnectionManager.startAcceptingIncomingConnections()();
}

uint64_t ClientConnectionManager.broadcasterForListeners(supporting:)(void *a1)
{
  v3 = IMGetDaemonListenerProtocol();
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = v1;
  v4[4] = 0;
  v4[5] = 0;
  v5 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  aBlock[4] = sub_22B4D5CD8;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D1BA8;
  aBlock[3] = &unk_283F1FE98;
  v6 = _Block_copy(aBlock);
  v7 = a1;
  v8 = v1;
  [v5 initWithProtocol:v3 forwardingHandler:v6];

  _Block_release(v6);

  return swift_dynamicCastObjCProtocolUnconditional();
}

uint64_t ClientConnectionManager.broadcasterForKeyTransparencyListeners.getter()
{
  v1 = IMGetDaemonListenerProtocol();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = v0;
  *(v2 + 32) = xmmword_22B7F87F0;
  v3 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  v34 = sub_22B4D5CD8;
  v35 = v2;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_22B4D1BA8;
  v33 = &unk_283F1FEE8;
  v4 = _Block_copy(&aBlock);
  v5 = v0;
  v6 = [v3 initWithProtocol:v1 forwardingHandler:v4];

  _Block_release(v4);

  v7 = swift_dynamicCastObjCProtocolUnconditional();
  v8 = IMGetDaemonListenerProtocol();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = v5;
  *(v9 + 32) = xmmword_22B7FDF70;
  v10 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  v34 = sub_22B4D5CD8;
  v35 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_22B4D1BA8;
  v33 = &unk_283F1FF38;
  v11 = _Block_copy(&aBlock);
  v12 = v5;
  v13 = [v10 initWithProtocol:v8 forwardingHandler:v11];

  _Block_release(v11);

  v14 = swift_dynamicCastObjCProtocolUnconditional();
  sub_22B6F0AD4(qword_27D8CFA50, &qword_22B7FBB08);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22B7F93A0;
  *(v15 + 56) = swift_getObjectType();
  *(v15 + 32) = v7;
  *(v15 + 88) = swift_getObjectType();
  *(v15 + 64) = v14;
  v16 = objc_allocWithZone(MEMORY[0x277D1A9B0]);
  v17 = v6;
  v18 = v13;
  v19 = sub_22B7DB8F8();
  v15, v20, v21, v22, v23, v24, v25, v26, v28, v29;
  [v16 initWithTargets_];

  return swift_dynamicCastObjCProtocolUnconditional();
}

uint64_t ClientConnectionManager.broadcasterForChatDatabaseListeners.getter()
{
  v1 = IMGetDaemonListenerProtocol();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = v0;
  *(v2 + 32) = xmmword_22B7F87F0;
  v3 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  v34 = sub_22B4D5CD8;
  v35 = v2;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_22B4D1BA8;
  v33 = &unk_283F201B8;
  v4 = _Block_copy(&aBlock);
  v5 = v0;
  v6 = [v3 initWithProtocol:v1 forwardingHandler:v4];

  _Block_release(v4);

  v7 = swift_dynamicCastObjCProtocolUnconditional();
  v8 = IMGetDaemonListenerProtocol();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = v5;
  *(v9 + 32) = xmmword_22B7FDFC0;
  v10 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  v34 = sub_22B4D5CD8;
  v35 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_22B4D1BA8;
  v33 = &unk_283F20208;
  v11 = _Block_copy(&aBlock);
  v12 = v5;
  v13 = [v10 initWithProtocol:v8 forwardingHandler:v11];

  _Block_release(v11);

  v14 = swift_dynamicCastObjCProtocolUnconditional();
  sub_22B6F0AD4(qword_27D8CFA50, &qword_22B7FBB08);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22B7F93A0;
  *(v15 + 56) = swift_getObjectType();
  *(v15 + 32) = v7;
  *(v15 + 88) = swift_getObjectType();
  *(v15 + 64) = v14;
  v16 = objc_allocWithZone(MEMORY[0x277D1A9B0]);
  v17 = v6;
  v18 = v13;
  v19 = sub_22B7DB8F8();
  v15, v20, v21, v22, v23, v24, v25, v26, v28, v29;
  [v16 initWithTargets_];

  return swift_dynamicCastObjCProtocolUnconditional();
}

uint64_t ClientConnectionManager.broadcasterForChatCountsListeners(withAdditionalCapabilities:)(uint64_t a1)
{
  v3 = a1 | 4;
  v4 = IMGetDaemonListenerProtocol();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = v1;
  v5[4] = v3;
  v5[5] = 0;
  v6 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  v38 = sub_22B4D5CD8;
  v39 = v5;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_22B4D1BA8;
  v37 = &unk_283F20258;
  v7 = _Block_copy(&aBlock);
  v8 = v1;
  v9 = [v6 initWithProtocol:v4 forwardingHandler:v7];

  _Block_release(v7);

  v10 = swift_dynamicCastObjCProtocolUnconditional();
  v11 = a1 | 0x8000;
  v12 = IMGetDaemonListenerProtocol();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = v8;
  v13[4] = v11;
  v13[5] = 0;
  v14 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  v38 = sub_22B4D5CD8;
  v39 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_22B4D1BA8;
  v37 = &unk_283F202A8;
  v15 = _Block_copy(&aBlock);
  v16 = v8;
  v17 = [v14 initWithProtocol:v12 forwardingHandler:v15];

  _Block_release(v15);

  v18 = swift_dynamicCastObjCProtocolUnconditional();
  sub_22B6F0AD4(qword_27D8CFA50, &qword_22B7FBB08);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22B7F93A0;
  *(v19 + 56) = swift_getObjectType();
  *(v19 + 32) = v10;
  *(v19 + 88) = swift_getObjectType();
  *(v19 + 64) = v18;
  v20 = objc_allocWithZone(MEMORY[0x277D1A9B0]);
  v21 = v9;
  v22 = v17;
  v23 = sub_22B7DB8F8();
  v19, v24, v25, v26, v27, v28, v29, v30, v32, v33;
  [v20 initWithTargets_];

  return swift_dynamicCastObjCProtocolUnconditional();
}

uint64_t ClientConnectionManager.broadcasterForChatCountsListeners.getter()
{
  v1 = IMGetDaemonListenerProtocol();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = v0;
  *(v2 + 32) = xmmword_22B7F87F0;
  v3 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  v34 = sub_22B4D5CD8;
  v35 = v2;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_22B4D1BA8;
  v33 = &unk_283F202F8;
  v4 = _Block_copy(&aBlock);
  v5 = v0;
  v6 = [v3 initWithProtocol:v1 forwardingHandler:v4];

  _Block_release(v4);

  v7 = swift_dynamicCastObjCProtocolUnconditional();
  v8 = IMGetDaemonListenerProtocol();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = v5;
  *(v9 + 32) = xmmword_22B7FDFD0;
  v10 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  v34 = sub_22B4D5CD8;
  v35 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_22B4D1BA8;
  v33 = &unk_283F20348;
  v11 = _Block_copy(&aBlock);
  v12 = v5;
  v13 = [v10 initWithProtocol:v8 forwardingHandler:v11];

  _Block_release(v11);

  v14 = swift_dynamicCastObjCProtocolUnconditional();
  sub_22B6F0AD4(qword_27D8CFA50, &qword_22B7FBB08);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22B7F93A0;
  *(v15 + 56) = swift_getObjectType();
  *(v15 + 32) = v7;
  *(v15 + 88) = swift_getObjectType();
  *(v15 + 64) = v14;
  v16 = objc_allocWithZone(MEMORY[0x277D1A9B0]);
  v17 = v6;
  v18 = v13;
  v19 = sub_22B7DB8F8();
  v15, v20, v21, v22, v23, v24, v25, v26, v28, v29;
  [v16 initWithTargets_];

  return swift_dynamicCastObjCProtocolUnconditional();
}

uint64_t sub_22B7B6830(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v9 = IMGetDaemonListenerProtocol();
  v10 = swift_allocObject();
  v10[1].n128_u64[0] = a1;
  v10[1].n128_u64[1] = v5;
  v10[2] = a5;
  v11 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  aBlock[4] = a3;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D1BA8;
  aBlock[3] = a4;
  v12 = _Block_copy(aBlock);
  v13 = a1;
  v14 = v5;
  [v11 initWithProtocol:v9 forwardingHandler:v12];

  _Block_release(v12);

  return swift_dynamicCastObjCProtocolUnconditional();
}

uint64_t (*sub_22B7B6B04(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x231895C80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_22B7B6B84;
  }

  __break(1u);
  return result;
}

unint64_t sub_22B7B6B8C()
{
  result = qword_27D8CFAD0;
  if (!qword_27D8CFAD0)
  {
    sub_22B6FB8C4(&unk_27D8CDC20, &unk_22B7FA438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CFAD0);
  }

  return result;
}

void IMDMessageStore.batchOfRecordIDsToDelete(limit:)(uint64_t a1)
{
  v3 = v1;
  v5 = [v3 recordZoneID];
  if (!v5)
  {
    if (qword_28141F368 != -1)
    {
LABEL_15:
      swift_once();
    }

    v34 = sub_22B7DB2B8();
    sub_22B4CFA74(v34, qword_281422608);
    v35 = sub_22B7DB298();
    v36 = sub_22B7DBC98();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_22B4CC000, v35, v36, "No record zone initialized in IMDRecordZoneManager.", v37, 2u);
      MEMORY[0x231898D60](v37, -1, -1);
    }

    goto LABEL_13;
  }

  v6 = [v3 recordIDsAndGUIDsToDeleteWithLimit_];
  sub_22B6F0AD4(&qword_27D8CF710, qword_22B7FA230);
  v7 = sub_22B7DB918();

  v15 = *v7->messageStore;
  if (!v15)
  {
    v7, v8, v9, v10, v11, v12, v13, v14, v52, v54;
LABEL_13:
    sub_22B71E2E4(MEMORY[0x277D84F90]);
    return;
  }

  v16 = 0;
  v55 = MEMORY[0x277D84F98];
  while (1)
  {
    if (v16 >= *v7->messageStore)
    {
      __break(1u);
      goto LABEL_15;
    }

    v17 = *&v7->queue[8 * v16];
    v54 = v17;

    sub_22B7B6FA8(&v55, &v54);
    if (v2)
    {
      break;
    }

    v17, v18, v19, v20, v21, v22, v23, v24, v52, v54;
    if (v15 == ++v16)
    {
      v7, v25, v26, v27, v28, v29, v30, v31, v52, v54;
      v32 = [objc_opt_self() sharedInstance];
      v33 = [v32 syncState];

      [v33 setSyncControllerSyncState:3 withRecordType:1];
      return;
    }
  }

  v17, v38, v39, v40, v41, v42, v43, v44, v52, v54;
  v55, v45, v46, v47, v48, v49, v50, v51, v53, v54;
  __break(1u);
}

void sub_22B7B6FA8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  sub_22B7DC248();
  if (!*(v3 + 16))
  {
    goto LABEL_16;
  }

  v4 = sub_22B4D7EC0(v68);
  if ((v5 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_22B4D1F68(*(v3 + 56) + 32 * v4, v69);
  sub_22B4DA138(v68);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  sub_22B7DC248();
  if (!*(v3 + 16) || (v13 = sub_22B4D7EC0(v68), (v6 & 1) == 0))
  {
    0xE800000000000000, v6, v7, v8, v9, v10, v11, v12, v65, v66;
LABEL_16:
    sub_22B4DA138(v68);
    return;
  }

  sub_22B4D1F68(*(v3 + 56) + 32 * v13, v69);
  sub_22B4DA138(v68);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v34 = 0xE800000000000000;
LABEL_14:
    v34, v14, v15, v16, v17, v18, v19, v20, v65, v66;
    return;
  }

  v70 = 0xE400000000000000;
  sub_22B6F0AD4(&qword_27D8CFAE0, &qword_22B7FE0B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B7F93A0;
  v22 = objc_opt_self();
  v23 = [v22 sharedInstance];
  if (!v23)
  {
    __break(1u);
    goto LABEL_26;
  }

  v24 = v23;
  v25 = [v23 messageRecordZoneID];

  *(inited + 32) = v25;
  v26 = [v22 sharedInstance];
  if (!v26)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v27 = v26;
  v28 = [v26 chatBotMessageRecordZoneID];

  *(inited + 40) = v28;
  v29 = *(inited + 32);
  if (v29)
  {
    sub_22B71EEC0();
    v30 = v29;

    v31 = sub_22B7DBC48();
    v32 = v31;
    if (*(*a1 + 16) && (sub_22B7237AC(v31), (v33 & 1) != 0))
    {
    }

    else
    {
      v67 = v30;
      v35 = v70;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68[0] = *a1;
      sub_22B768B6C(1684632935, v35, v32, isUniquelyReferenced_nonNull_native, v37, v38, v39, v40, v65, v67);

      *a1 = v68[0];
    }
  }

  v41 = v28;
  inited, v42, v43, v44, v45, v46, v47, v48, v65, v66;
  if (!v41)
  {
    0xE800000000000000, v49, v50, v51, v52, v53, v54, v55, v65, v66;
    v34 = v70;
    goto LABEL_14;
  }

  sub_22B71EEC0();
  v56 = v41;
  v57 = sub_22B7DBC48();
  v58 = v57;
  if (*(*a1 + 16))
  {
    sub_22B7237AC(v57);
    if (v59)
    {

      v34 = v70;
      goto LABEL_14;
    }
  }

  v60 = swift_isUniquelyReferenced_nonNull_native();
  v68[0] = *a1;
  sub_22B768B6C(1684632935, v70, v58, v60, v61, v62, v63, v64, v65, v66);

  *a1 = v68[0];
}

uint64_t _sSo15IMDMessageStoreC12IMDaemonCoreE25recordIDsAndGUIDsToDelete9withLimitSaySDys11AnyHashableVypGGs5Int64V_tF_0(uint64_t a1, uint64_t a2)
{
  v2 = IMDMessageRecordCopyRecordIDsAndGUIDsToDeleteWithLimit();
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_22B6F0AD4(&qword_27D8CF710, qword_22B7FA230);
      sub_22B7DB908();
    }
  }

  if (qword_28141F368 != -1)
  {
    swift_once();
  }

  v4 = sub_22B7DB2B8();
  sub_22B4CFA74(v4, qword_281422608);
  v5 = sub_22B7DB298();
  v6 = sub_22B7DBC98();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B4CC000, v5, v6, "Could not retrieve messages metadatas from IMDPersistence, returning nil from DeletedMessageStore.", v7, 2u);
    MEMORY[0x231898D60](v7, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t _sSo15IMDMessageStoreC12IMDaemonCoreE15clearTombstones12forRecordIDsySaySo10CKRecordIDCG_tF_0(IMDScheduledMessageCoordinator *a1)
{
  if (qword_28141F368 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_281422608);

  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();
  a1, v5, v6, v7, v8, v9, v10, v11, v27, v29;
  if (os_log_type_enabled(v3, v4))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136315138;
    v14 = sub_22B71EEC0();
    v15 = MEMORY[0x2318952A0](a1, v14);
    v17 = v16;
    v18 = sub_22B4CFAAC(v15, v16, &v29);
    v17, v19, v20, v21, v22, v23, v24, v25, v28, v29;
    *(v12 + 4) = v18;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Clearing message tombstones for recordIDs: %s", v12, 0xCu);
    sub_22B4CFB78(v13);
    MEMORY[0x231898D60](v13, -1, -1);
    MEMORY[0x231898D60](v12, -1, -1);
  }

  return IMDMessageRecordClearDeleteTombStones();
}

uint64_t sub_22B7B7760()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_28141F4F0);
  sub_22B4CFA74(v0, qword_28141F4F0);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

id sub_22B7B77CC()
{
  result = [objc_allocWithZone(IMDKeyTransparencyController) init];
  qword_28141F0D8 = result;
  return result;
}

id sub_22B7B7800()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D73558]) initWithApplication_];
  *&v0[OBJC_IVAR___IMDKeyTransparencyController_app] = v1;
  sub_22B6F0AD4(&qword_27D8CFB00, &qword_22B7FE0D0);
  v2 = swift_allocObject();
  *(v2 + 20) = 0;
  *(v2 + 16) = 0;
  *&v0[OBJC_IVAR___IMDKeyTransparencyController_state] = v2;
  v6.receiver = v0;
  v6.super_class = IMDKeyTransparencyController;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  sub_22B7B7910();
  v4 = [objc_opt_self() defaultCenter];
  [v4 addObserver:v3 selector:sel_optInStateChanged_ name:*MEMORY[0x277D73600] object:0];

  return v3;
}

void sub_22B7B7910()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___IMDKeyTransparencyController_state];
  swift_getKeyPath();

  os_unfair_lock_lock((v2 + 20));
  sub_22B4D7CAC((v2 + 16), aBlock);
  os_unfair_lock_unlock((v2 + 20));

  v3 = LOBYTE(aBlock[0]);

  if (qword_28141F4E8 != -1)
  {
    swift_once();
  }

  v4 = sub_22B7DB2B8();
  sub_22B4CFA74(v4, qword_28141F4F0);
  v5 = sub_22B7DB298();
  v6 = sub_22B7DBC88();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67240192;
    *(v7 + 4) = v3 ^ 1;
    _os_log_impl(&dword_22B4CC000, v5, v6, "Refreshing opt-in state. initial load: %{BOOL,public}d", v7, 8u);
    MEMORY[0x231898D60](v7, -1, -1);
  }

  v8 = *&v1[OBJC_IVAR___IMDKeyTransparencyController_app];
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  aBlock[4] = sub_22B7B83B8;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B7B7F18;
  aBlock[3] = &unk_283F20798;
  v10 = _Block_copy(aBlock);
  v11 = v1;

  [v8 getOptInState:0 completionBlock:v10];
  _Block_release(v10);
}

id sub_22B7B7B64(char a1)
{
  v2 = v1;
  v4 = sub_22B7DB348();
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22B7DB398();
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v1[OBJC_IVAR___IMDKeyTransparencyController_state];

  os_unfair_lock_lock((v10 + 20));
  v11 = *(v10 + 17);
  v12 = a1 & 1;
  *(v10 + 17) = a1;
  v13 = *(v10 + 16);
  *(v10 + 16) = 1;
  os_unfair_lock_unlock((v10 + 20));

  v15 = v13 ^ 1;
  if (v11 != (a1 & 1) || ((v13 ^ 1) & 1) != 0)
  {
    if (qword_28141F4E8 != -1)
    {
      swift_once();
    }

    v16 = sub_22B7DB2B8();
    sub_22B4CFA74(v16, qword_28141F4F0);
    v17 = sub_22B7DB298();
    v18 = sub_22B7DBC78();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67174913;
      *(v19 + 4) = a1 & 1;
      *(v19 + 8) = 1026;
      *(v19 + 10) = v15 & 1;
      _os_log_impl(&dword_22B4CC000, v17, v18, "Updated KT opt in state: %{BOOL,private}d. initial load? %{BOOL,public}d", v19, 0xEu);
      MEMORY[0x231898D60](v19, -1, -1);
    }

    result = im_primary_queue();
    if (result)
    {
      v20 = result;
      v21 = swift_allocObject();
      *(v21 + 16) = v2;
      *(v21 + 24) = v12;
      aBlock[4] = sub_22B7B83AC;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22B4D22C0;
      aBlock[3] = &unk_283F20748;
      v22 = _Block_copy(aBlock);
      v23 = v2;
      sub_22B7DACD8();
      v27 = MEMORY[0x277D84F90];
      sub_22B799D14();
      sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
      sub_22B799D6C();
      sub_22B7DC138();
      MEMORY[0x2318956F0](0, v9, v6, v22);
      _Block_release(v22);

      (*(v26 + 8))(v6, v4);
      (*(v24 + 8))(v9, v25);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22B7B7F18(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  v11 = *(a1 + 32);
  if (a3)
  {
    sub_22B7DA928();
    v12 = sub_22B7DA968();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = sub_22B7DA968();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  v14 = a4;
  v11(a2, v10, a4);

  return sub_22B4D0D64(v10, &unk_27D8CF790, &qword_22B7F9578);
}

uint64_t sub_22B7B8078(uint64_t a1)
{
  v1 = sub_22B7DA678();
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v20 = sub_22B7DB6A8();
  sub_22B7DC248();
  if (!*(v2 + 16) || (v10 = sub_22B4D7EC0(v21), (v3 & 1) == 0))
  {
    v2, v3, v4, v5, v6, v7, v8, v9, v19, v20;
    sub_22B4DA138(v21);
LABEL_8:
    v22 = 0u;
    v23 = 0u;
    return sub_22B4D0D64(&v22, &unk_27D8CCDC0, &qword_22B7F9580);
  }

  sub_22B4D1F68(*(v2 + 56) + 32 * v10, &v22);
  sub_22B4DA138(v21);
  v2, v11, v12, v13, v14, v15, v16, v17, v19, v20;
  if (!*(&v23 + 1))
  {
    return sub_22B4D0D64(&v22, &unk_27D8CCDC0, &qword_22B7F9580);
  }

  result = swift_dynamicCast();
  if (result)
  {
    return sub_22B7B7B64(v21[0]);
  }

  return result;
}

id sub_22B7B826C(uint64_t a1, char a2)
{
  result = [objc_opt_self() sharedProvider];
  if (result)
  {
    v4 = [result broadcasterForKeyTransparencyListeners];
    swift_unknownObjectRelease();
    [v4 keyTransparencyOptInStateChanged_];

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t type metadata accessor for IMDKeyTransparencyController()
{
  result = qword_27D8CFAF8;
  if (!qword_27D8CFAF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8CFAF8);
  }

  return result;
}

uint64_t _s5StateVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *_s5StateVwst(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

id sub_22B7B8550()
{
  v1 = OBJC_IVAR___IMDCollaborationNoticeStore____lazy_storage___persistenceContainer;
  v2 = *(v0 + OBJC_IVAR___IMDCollaborationNoticeStore____lazy_storage___persistenceContainer);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_22B7B85C0(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_22B7BD314(v4);
  }

  sub_22B7BD394(v2);
  return v3;
}

id sub_22B7B85C0(uint64_t a1)
{
  v1 = sub_22B7DA828();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v98 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v104 = &v98 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v98 - v11;
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v15 = sub_22B7DB678();
  v16 = sub_22B7DB678();
  v105 = v14;
  v17 = [v14 URLForResource:v15 withExtension:v16];

  if (!v17)
  {
    goto LABEL_9;
  }

  sub_22B7DA7D8();

  v18 = objc_allocWithZone(MEMORY[0x277CBE450]);
  v19 = sub_22B7DA788();
  v20 = [v18 initWithContentsOfURL_];

  if (!v20)
  {
    (*(v2 + 8))(v12, v1);
LABEL_9:
    if (qword_28141F390 != -1)
    {
      swift_once();
    }

    v61 = sub_22B7DB2B8();
    sub_22B4CFA74(v61, qword_281422668);
    v62 = sub_22B7DB298();
    v63 = sub_22B7DBC98();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_22B4CC000, v62, v63, "Unable to generate objectModelURL, aborting.", v64, 2u);
      MEMORY[0x231898D60](v64, -1, -1);
    }

    return 0;
  }

  v103 = v1;
  v21 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
  v22 = v20;
  v23 = sub_22B7DB678();
  v24 = [v21 initWithName:v23 managedObjectModel:v22];

  v25 = [*MEMORY[0x277D19CD8] stringByResolvingAndStandardizingPath];
  if (!v25)
  {
    if (qword_28141F390 != -1)
    {
      swift_once();
    }

    v65 = sub_22B7DB2B8();
    sub_22B4CFA74(v65, qword_281422668);
    v66 = sub_22B7DB298();
    v67 = sub_22B7DBC98();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = v22;
      v70 = swift_slowAlloc();
      aBlock[0] = v70;
      *v68 = 136315138;
      v71 = sub_22B7DB6A8();
      v73 = v72;
      v74 = sub_22B4CFAAC(v71, v72, aBlock);
      v73, v75, v76, v77, v78, v79, v80, v81, v98, v99;
      *(v68 + 4) = v74;
      _os_log_impl(&dword_22B4CC000, v66, v67, "Unable to resolve collaboration notice directory path %s", v68, 0xCu);
      sub_22B4CFB78(v70);
      MEMORY[0x231898D60](v70, -1, -1);
      MEMORY[0x231898D60](v68, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v12, v103);
    return 0;
  }

  v102 = v22;
  v26 = v25;
  sub_22B7DB6A8();
  v28 = v27;
  IMSharedHelperEnsureDirectoryExistsAtPath();

  sub_22B7DA768();
  v28, v29, v30, v31, v32, v33, v34, v35, v98, v99;
  sub_22B7DA798();
  if (qword_28141F390 != -1)
  {
    swift_once();
  }

  v36 = sub_22B7DB2B8();
  sub_22B4CFA74(v36, qword_281422668);
  v37 = *(v2 + 16);
  v101 = v8;
  v38 = v103;
  v37(v5, v8, v103);
  v39 = v24;
  v40 = sub_22B7DB298();
  v41 = sub_22B7DBCB8();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    aBlock[0] = v100;
    *v42 = 136315394;
    sub_22B7BD3A4(&qword_27D8CEB40, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v43 = sub_22B7DC4E8();
    v44 = v38;
    v46 = v45;
    v47 = *(v2 + 8);
    HIDWORD(v98) = v41;
    v48 = v5;
    v49 = v44;
    v47(v48, v44);
    v50 = sub_22B4CFAAC(v43, v46, aBlock);
    v46, v51, v52, v53, v54, v55, v56, v57, v98, v99;
    *(v42 + 4) = v50;
    *(v42 + 12) = 2112;
    *(v42 + 14) = v39;
    v58 = v99;
    *v99 = v39;
    v59 = v39;
    _os_log_impl(&dword_22B4CC000, v40, BYTE4(v98), "Loading store at storeURL: %s with persistenceContainer:%@", v42, 0x16u);
    sub_22B4D0D64(v58, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v58, -1, -1);
    v60 = v100;
    sub_22B4CFB78(v100);
    MEMORY[0x231898D60](v60, -1, -1);
    MEMORY[0x231898D60](v42, -1, -1);
  }

  else
  {

    v47 = *(v2 + 8);
    v82 = v5;
    v49 = v38;
    v47(v82, v38);
  }

  sub_22B6F0AD4(&unk_27D8CD970, &qword_22B7FB330);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_22B7F9620;
  v84 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
  v85 = v101;
  v86 = sub_22B7DA788();
  v87 = [v84 initWithURL_];

  *(v83 + 32) = v87;
  sub_22B4D01A0(0, &qword_27D8CFB28, 0x277CBE4E0);
  v88 = sub_22B7DB8F8();
  v83, v89, v90, v91, v92, v93, v94, v95, v98, v99;
  [v39 setPersistentStoreDescriptions_];

  aBlock[4] = sub_22B7B8E84;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B7B9174;
  aBlock[3] = &unk_283F20840;
  v96 = _Block_copy(aBlock);
  [v39 loadPersistentStoresWithCompletionHandler_];
  _Block_release(v96);

  v47(v85, v49);
  v47(v104, v49);
  v47(v12, v49);
  return v39;
}

void sub_22B7B8E84(void *a1, void *a2)
{
  if (a2)
  {
    if (qword_28141F390 != -1)
    {
      swift_once();
    }

    v3 = sub_22B7DB2B8();
    sub_22B4CFA74(v3, qword_281422668);
    v4 = a2;
    oslog = sub_22B7DB298();
    v5 = sub_22B7DBC98();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v43 = v7;
      *v6 = 136315138;
      v8 = a2;
      sub_22B6F0AD4(&qword_27D8CFB30, &qword_22B7FE190);
      v9 = sub_22B7DB6C8();
      v11 = v10;
      v12 = sub_22B4CFAAC(v9, v10, &v43);
      v11, v13, v14, v15, v16, v17, v18, v19, v40, oslog;
      *(v6 + 4) = v12;
      _os_log_impl(&dword_22B4CC000, osloga, v5, "Error loading store: %s", v6, 0xCu);
      sub_22B4CFB78(v7);
      MEMORY[0x231898D60](v7, -1, -1);
      v20 = v6;
LABEL_10:
      MEMORY[0x231898D60](v20, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_28141F390 != -1)
    {
      swift_once();
    }

    v22 = sub_22B7DB2B8();
    sub_22B4CFA74(v22, qword_281422668);
    v23 = a1;
    oslog = sub_22B7DB298();
    v24 = sub_22B7DBCB8();

    if (os_log_type_enabled(oslog, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v43 = v26;
      *v25 = 136315138;
      v27 = v23;
      v28 = [v27 description];
      v29 = sub_22B7DB6A8();
      v31 = v30;

      v32 = sub_22B4CFAAC(v29, v31, &v43);
      v31, v33, v34, v35, v36, v37, v38, v39, v40, oslog;
      *(v25 + 4) = v32;
      _os_log_impl(&dword_22B4CC000, osloga, v24, "Successfully loaded store: %s", v25, 0xCu);
      sub_22B4CFB78(v26);
      MEMORY[0x231898D60](v26, -1, -1);
      v20 = v25;
      goto LABEL_10;
    }
  }
}

void sub_22B7B9174(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

void sub_22B7B9200(void *a1)
{
  v104[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22B7DA828();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22B7DA968();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v101 - v11;
  v13 = sub_22B7B8550();
  if (v13 && (v14 = v13, v15 = [v13 viewContext], v14, v15))
  {
    v101 = v3;
    type metadata accessor for PersistedCollaborationNotice();
    v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v102 = v15;
    v17 = [v16 initWithContext_];
    v18 = [a1 guidString];
    if (!v18)
    {
      sub_22B7DB6A8();
      v20 = v19;
      v18 = sub_22B7DB678();
      v20, v21, v22, v23, v24, v25, v26, v27, v101, v102;
    }

    [v17 setGuidString_];

    v28 = [a1 date];
    sub_22B7DA928();

    v29 = sub_22B7DA8B8();
    v30 = *(v7 + 8);
    v30(v12, v6);
    [v17 setDate_];

    v31 = [a1 dateViewed];
    if (v31)
    {
      v32 = v31;
      sub_22B7DA928();

      v33 = sub_22B7DA8B8();
      v30(v10, v6);
    }

    else
    {
      v33 = 0;
    }

    [v17 setDateViewed_];

    v38 = [a1 metadata];
    v39 = [v38 contentURL];

    sub_22B7DA7D8();
    sub_22B7DA748();
    v41 = v40;
    (*(v101 + 1))(v5, v2);
    v42 = sub_22B7DB678();
    v41, v43, v44, v45, v46, v47, v48, v49, v101, v102;
    [v17 setUrl_];

    v50 = [a1 senderHandle];
    v51 = v102;
    if (!v50)
    {
      sub_22B7DB6A8();
      v53 = v52;
      v50 = sub_22B7DB678();
      v53, v54, v55, v56, v57, v58, v59, v60, v101, v102;
    }

    [v17 setSenderHandle_];

    v61 = objc_opt_self();
    v62 = [a1 metadata];
    v104[0] = 0;
    v63 = [v61 archivedDataWithRootObject:v62 requiringSecureCoding:1 error:v104];

    v64 = v104[0];
    if (v63)
    {
      v65 = sub_22B7DA848();
      v67 = v66;

      v68 = sub_22B7DA838();
      sub_22B705E98(v65, v67);
    }

    else
    {
      v69 = v64;
      v70 = sub_22B7DA6F8();

      swift_willThrow();
      v68 = 0;
    }

    [v17 setMetadata_];

    v104[0] = 0;
    if ([v51 save:v104])
    {
      v71 = v17;
      v72 = qword_28141F390;
      v73 = v104[0];
      if (v72 != -1)
      {
        swift_once();
      }

      v74 = sub_22B7DB2B8();
      sub_22B4CFA74(v74, qword_281422668);
      v75 = a1;
      v76 = sub_22B7DB298();
      v77 = sub_22B7DBCB8();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *v78 = 138412290;
        *(v78 + 4) = v75;
        *v79 = v75;
        v80 = v75;
        _os_log_impl(&dword_22B4CC000, v76, v77, "Saved notice: %@", v78, 0xCu);
        sub_22B4D0D64(v79, &unk_27D8CEC60, &qword_22B7F9E20);
        MEMORY[0x231898D60](v79, -1, -1);
        MEMORY[0x231898D60](v78, -1, -1);
      }
    }

    else
    {
      v81 = v104[0];
      v82 = sub_22B7DA6F8();

      swift_willThrow();
      if (qword_28141F390 != -1)
      {
        swift_once();
      }

      v83 = sub_22B7DB2B8();
      sub_22B4CFA74(v83, qword_281422668);
      v84 = v82;
      v85 = sub_22B7DB298();
      v86 = sub_22B7DBC98();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v104[0] = v88;
        *v87 = 136315138;
        v103 = v82;
        v89 = v82;
        sub_22B6F0AD4(&unk_27D8CD800, &qword_22B7FA0C0);
        v90 = sub_22B7DB6C8();
        v92 = v91;
        v93 = sub_22B4CFAAC(v90, v91, v104);
        v92, v94, v95, v96, v97, v98, v99, v100, v101, v102;
        *(v87 + 4) = v93;
        _os_log_impl(&dword_22B4CC000, v85, v86, "Unable to save notice, error: %s", v87, 0xCu);
        sub_22B4CFB78(v88);
        MEMORY[0x231898D60](v88, -1, -1);
        MEMORY[0x231898D60](v87, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_28141F390 != -1)
    {
      swift_once();
    }

    v34 = sub_22B7DB2B8();
    sub_22B4CFA74(v34, qword_281422668);
    v102 = sub_22B7DB298();
    v35 = sub_22B7DBC98();
    if (os_log_type_enabled(v102, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_22B4CC000, v102, v35, "Unable to save notice, can't retrieve object context", v36, 2u);
      MEMORY[0x231898D60](v36, -1, -1);
    }

    v37 = v102;
  }
}

IMDScheduledMessageCoordinator *sub_22B7B9AFC(IMDScheduledMessageCoordinator *a1)
{
  v100 = sub_22B7DA828();
  v2 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v4 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *a1->messageStore;
  if (!v5)
  {
    if (qword_28141F390 != -1)
    {
      swift_once();
    }

    v28 = sub_22B7DB2B8();
    sub_22B4CFA74(v28, qword_281422668);
    v24 = sub_22B7DB298();
    v25 = sub_22B7DBCB8();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_17;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "No URLs provided, unable to retrieve any notices";
LABEL_16:
    _os_log_impl(&dword_22B4CC000, v24, v25, v27, v26, 2u);
    MEMORY[0x231898D60](v26, -1, -1);
LABEL_17:

    return 0;
  }

  v6 = sub_22B7B8550();
  if (!v6 || (v7 = v6, v8 = [v6 viewContext], v7, !v8))
  {
    if (qword_28141F390 != -1)
    {
LABEL_41:
      swift_once();
    }

    v23 = sub_22B7DB2B8();
    sub_22B4CFA74(v23, qword_281422668);
    v24 = sub_22B7DB298();
    v25 = sub_22B7DBC98();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_17;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "Unable to get notices, can't retrieve object context";
    goto LABEL_16;
  }

  v96 = v8;
  v101 = MEMORY[0x277D84F90];
  sub_22B7AB6B4(0, v5, 0);
  v9 = v101;
  v11 = *(v2 + 16);
  v10 = v2 + 16;
  v12 = *(v10 + 64);
  v94 = v5;
  v95 = a1;
  v13 = a1 + ((v12 + 32) & ~v12);
  v97 = *(v10 + 56);
  v98 = v11;
  v99 = v10;
  v14 = (v10 - 8);
  v15 = v5;
  do
  {
    v16 = v100;
    v98(v4, v13, v100);
    v17 = sub_22B7DA748();
    v19 = v18;
    (*v14)(v4, v16);
    v101 = v9;
    v21 = *(v9 + 16);
    v20 = *(v9 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_22B7AB6B4((v20 > 1), v21 + 1, 1);
      v9 = v101;
    }

    *(v9 + 16) = v21 + 1;
    v22 = v9 + 16 * v21;
    *(v22 + 32) = v17;
    *(v22 + 40) = v19;
    v13 += v97;
    --v15;
  }

  while (v15);
  v31 = sub_22B7BCD18(v9);

  type metadata accessor for PersistedCollaborationNotice();
  v32 = v96;
  v33 = sub_22B7DBEE8();
  v99 = 0;

  v101 = MEMORY[0x277D84F90];
  if (v33 >> 62)
  {
    v41 = sub_22B7DC1C8();
  }

  else
  {
    v41 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v41 != v42)
  {
    if ((v33 & 0xC000000000000001) != 0)
    {
      v43 = MEMORY[0x231895C80](v42, v33);
    }

    else
    {
      if (v42 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v43 = *(v33 + 8 * v42 + 32);
    }

    v44 = v43;
    v45 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v46 = sub_22B7BA274();

    ++v42;
    if (v46)
    {
      MEMORY[0x231895260](v47, v34);
      if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22B7DB938();
        v32 = v96;
      }

      sub_22B7DB968();
      v29 = v101;
      v42 = v45;
    }
  }

  v33, v34, v35, v36, v37, v38, v39, v40, v94, v95;
  if (qword_28141F390 != -1)
  {
    swift_once();
  }

  v48 = sub_22B7DB2B8();
  sub_22B4CFA74(v48, qword_281422668);

  v49 = v95;

  v50 = sub_22B7DB298();
  v51 = sub_22B7DBCB8();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v101 = v60;
    *v52 = 134218498;
    if (v29 >> 62)
    {
      v61 = sub_22B7DC1C8();
    }

    else
    {
      v61 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v52 + 4) = v61;
    v29, v53, v54, v55, v56, v57, v58, v59, v94, v95;
    *(v52 + 12) = 2048;
    *(v52 + 14) = v94;
    v49, v62, v63, v64, v65, v66, v67, v68, v94, v95;
    *(v52 + 22) = 2080;
    v69 = MEMORY[0x2318952A0](v49, v100);
    v71 = v70;
    v72 = sub_22B4CFAAC(v69, v70, &v101);
    v71, v73, v74, v75, v76, v77, v78, v79, v94, v95;
    *(v52 + 24) = v72;
    _os_log_impl(&dword_22B4CC000, v50, v51, "Retrieved %ld notices for urls (%ld: %s", v52, 0x20u);
    sub_22B4CFB78(v60);
    MEMORY[0x231898D60](v60, -1, -1);
    MEMORY[0x231898D60](v52, -1, -1);
  }

  else
  {

    v29, v80, v81, v82, v83, v84, v85, v86, v94, v95;
    v49, v87, v88, v89, v90, v91, v92, v93, v94, v95;
  }

  return v29;
}

id sub_22B7BA274()
{
  v1 = v0;
  v2 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v62 - v6;
  v8 = sub_22B7DA968();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v62 - v13;
  v15 = [v0 metadata];
  if (!v15)
  {
    goto LABEL_4;
  }

  v16 = v15;
  v17 = sub_22B7DA848();
  v19 = v18;

  sub_22B4D01A0(0, &qword_27D8CFB18, 0x277CCAAC8);
  sub_22B4D01A0(0, &qword_27D8CFB20, 0x277D1A940);
  v66 = v19;
  v20 = sub_22B7DBD18();
  if (!v20)
  {
    sub_22B705E98(v17, v66);
LABEL_4:
    if (qword_28141F390 != -1)
    {
      swift_once();
    }

    v21 = sub_22B7DB2B8();
    sub_22B4CFA74(v21, qword_281422668);
    v22 = v1;
    v23 = sub_22B7DB298();
    v24 = sub_22B7DBC98();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v22;
      *v26 = v22;
      v27 = v22;
      _os_log_impl(&dword_22B4CC000, v23, v24, "Unable to get metadata from PersistedCollaborationNotice, %@", v25, 0xCu);
      sub_22B4D0D64(v26, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v26, -1, -1);
      MEMORY[0x231898D60](v25, -1, -1);
    }

    return 0;
  }

  v65 = v20;
  v29 = [v1 guidString];
  if (!v29)
  {
    if (qword_28141F390 != -1)
    {
      swift_once();
    }

    v34 = sub_22B7DB2B8();
    sub_22B4CFA74(v34, qword_281422668);
    v35 = v1;
    v36 = sub_22B7DB298();
    v37 = sub_22B7DBC98();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      *(v38 + 4) = v35;
      *v39 = v35;
      v40 = v35;
      _os_log_impl(&dword_22B4CC000, v36, v37, "Unable to get guidString from PersistedCollaborationNotice, %@", v38, 0xCu);
      sub_22B4D0D64(v39, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v39, -1, -1);
      MEMORY[0x231898D60](v38, -1, -1);
    }

    sub_22B705E98(v17, v66);

    return 0;
  }

  v30 = v29;
  v31 = [v1 senderHandle];
  if (v31)
  {
    v32 = v31;
    v63 = sub_22B7DB6A8();
    v64 = v33;
  }

  else
  {
    v63 = 0;
    v64 = 0xE000000000000000;
  }

  v41 = [v1 date];
  if (v41)
  {
    v42 = v41;
    sub_22B7DA928();

    v62 = v30;
    v43 = *(v9 + 32);
    v43(v7, v12, v8);
    v44 = *(v9 + 56);
    v44(v7, 0, 1, v8);
    v43(v14, v7, v8);
    v30 = v62;
  }

  else
  {
    v44 = *(v9 + 56);
    v44(v7, 1, 1, v8);
    sub_22B7DA958();
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      sub_22B4D0D64(v7, &unk_27D8CF790, &qword_22B7F9578);
    }
  }

  v45 = [v1 dateViewed];
  if (v45)
  {
    v46 = v45;
    sub_22B7DA928();

    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  v44(v5, v47, 1, v8);
  v48 = v64;
  v49 = sub_22B7DB678();
  v48, v50, v51, v52, v53, v54, v55, v56, v62, v63;
  v57 = sub_22B7DA8B8();
  if ((*(v9 + 48))(v5, 1, v8) == 1)
  {
    v58 = 0;
  }

  else
  {
    v58 = sub_22B7DA8B8();
    (*(v9 + 8))(v5, v8);
  }

  v59 = objc_allocWithZone(MEMORY[0x277D1A938]);
  v60 = v65;
  v61 = [v59 initWithGUIDString:v30 sender:v49 metadata:v65 date:v57 dateViewed:v58];
  sub_22B705E98(v17, v66);

  (*(v9 + 8))(v14, v8);
  return v61;
}

void sub_22B7BA9E4(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, void *a9, void *a10)
{
  v12 = [a1 guidString];
  v13 = sub_22B7DB6A8();
  v15 = v14;

  sub_22B7BABDC(v13, v15, x8_0);

  v15, v16, v17, v18, v19, v20, v21, v22, a9, a10;
}

uint64_t sub_22B7BABDC@<X0>(void *a1@<X0>, IMDScheduledMessageCoordinator *a2@<X1>, uint64_t a3@<X8>)
{
  v109[1] = *MEMORY[0x277D85DE8];
  v6 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v106 - v7;
  v9 = sub_22B7B8550();
  if (v9 && (v10 = v9, v11 = [v9 viewContext], v10, v11))
  {
    v12 = sub_22B7BCF50(a1, a2);
    type metadata accessor for PersistedCollaborationNotice();
    v38 = sub_22B7DBEE8();

    if (v38 >> 62)
    {
      if (sub_22B7DC1C8())
      {
        if (sub_22B7DC1C8() >= 2)
        {
          goto LABEL_19;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v46 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v46)
      {
        if (v46 >= 2)
        {
LABEL_19:
          if (qword_28141F390 != -1)
          {
            swift_once();
          }

          v47 = sub_22B7DB2B8();
          sub_22B4CFA74(v47, qword_281422668);

          v48 = sub_22B7DB298();
          v49 = sub_22B7DBCB8();
          a2, v50, v51, v52, v53, v54, v55, v56, v106, v107;
          if (os_log_type_enabled(v48, v49))
          {
            HIDWORD(v107) = v49;
            v57 = swift_slowAlloc();
            v106 = swift_slowAlloc();
            v109[0] = v106;
            *v57 = 134218242;
            if (v38 >> 62)
            {
              v65 = sub_22B7DC1C8();
            }

            else
            {
              v65 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v57 + 4) = v65;
            v38, v58, v59, v60, v61, v62, v63, v64, v106, v107;
            *(v57 + 12) = 2080;
            *(v57 + 14) = sub_22B4CFAAC(a1, a2, v109);
            _os_log_impl(&dword_22B4CC000, v48, BYTE4(v107), "Found %ld notices for guidString: %s", v57, 0x16u);
            v74 = v106;
            sub_22B4CFB78(v106);
            MEMORY[0x231898D60](v74, -1, -1);
            MEMORY[0x231898D60](v57, -1, -1);
          }

          else
          {

            v38, v67, v68, v69, v70, v71, v72, v73, v106, v107;
          }
        }

LABEL_29:
        v75 = sub_22B7DA828();
        (*(*(v75 - 8) + 56))(v8, 1, 1, v75);

        v76 = v11;
        sub_22B7BC9D8(v38, v8, v76, a1, a2);
        v38, v77, v78, v79, v80, v81, v82, v83, v106, v107;

        a2, v84, v85, v86, v87, v88, v89, v90, v106, v107;
        v109[0] = 0;
        if ([v76 save_])
        {
          v91 = v109[0];

          return sub_22B7AA5D4(v8, a3);
        }

        else
        {
          v92 = v109[0];
          v93 = sub_22B7DA6F8();

          swift_willThrow();
          sub_22B4D0D64(v8, &qword_27D8CFC90, &unk_22B7FE140);
          if (qword_28141F390 != -1)
          {
            swift_once();
          }

          v13 = sub_22B7DB2B8();
          sub_22B4CFA74(v13, qword_281422668);
          v14 = v93;
          v15 = sub_22B7DB298();
          v16 = sub_22B7DBC98();

          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            v18 = swift_slowAlloc();
            v109[0] = v18;
            *v17 = 136315138;
            v108 = v93;
            v19 = v93;
            sub_22B6F0AD4(&unk_27D8CD800, &qword_22B7FA0C0);
            v20 = sub_22B7DB6C8();
            v22 = v21;
            v23 = sub_22B4CFAAC(v20, v21, v109);
            v22, v24, v25, v26, v27, v28, v29, v30, v106, v107;
            *(v17 + 4) = v23;
            _os_log_impl(&dword_22B4CC000, v15, v16, "Failed to delete notice, error: %s", v17, 0xCu);
            sub_22B4CFB78(v18);
            MEMORY[0x231898D60](v18, -1, -1);
            MEMORY[0x231898D60](v17, -1, -1);
          }

          else
          {
          }

          v66 = sub_22B7DA828();
          return (*(*(v66 - 8) + 56))(a3, 1, 1, v66);
        }
      }
    }

    v38, v39, v40, v41, v42, v43, v44, v45, v106, v107;
    if (qword_28141F390 != -1)
    {
      swift_once();
    }

    v94 = sub_22B7DB2B8();
    sub_22B4CFA74(v94, qword_281422668);

    v95 = sub_22B7DB298();
    v96 = sub_22B7DBCB8();
    a2, v97, v98, v99, v100, v101, v102, v103, v106, v107;
    if (os_log_type_enabled(v95, v96))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v109[0] = v105;
      *v104 = 136315138;
      *(v104 + 4) = sub_22B4CFAAC(a1, a2, v109);
      _os_log_impl(&dword_22B4CC000, v95, v96, "No notices to delete for guidString: %s", v104, 0xCu);
      sub_22B4CFB78(v105);
      MEMORY[0x231898D60](v105, -1, -1);
      MEMORY[0x231898D60](v104, -1, -1);
    }
  }

  else
  {
    if (qword_28141F390 != -1)
    {
      swift_once();
    }

    v31 = sub_22B7DB2B8();
    sub_22B4CFA74(v31, qword_281422668);
    v32 = sub_22B7DB298();
    v33 = sub_22B7DBC98();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_22B4CC000, v32, v33, "Unable to delete notice, can't retrieve object context", v34, 2u);
      MEMORY[0x231898D60](v34, -1, -1);
    }
  }

  v35 = sub_22B7DA828();
  v36 = *(*(v35 - 8) + 56);

  return v36(a3, 1, 1, v35);
}