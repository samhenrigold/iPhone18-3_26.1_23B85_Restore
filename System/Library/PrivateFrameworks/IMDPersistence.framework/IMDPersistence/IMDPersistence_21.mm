uint64_t sub_1B7CE5414(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B7C107FC(&qword_1EBA52248, &qword_1B7D0B3A0);
  result = sub_1B7CFF370();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_1B7CFF7C0();
      MEMORY[0x1B8CAE910](v20);
      result = sub_1B7CFF800();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1B7CE5694(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B7C107FC(&qword_1EBA52240, &qword_1B7D0B398);
  v34 = v4;
  result = sub_1B7CFF370();
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1B7CFF7C0();
      sub_1B7CFEB10();
      result = sub_1B7CFF800();
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
      *(*(v7 + 56) + 8 * v15) = v24;
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

uint64_t sub_1B7CE5934(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B7C107FC(&qword_1EBA521D0, &qword_1B7D0B348);
  result = sub_1B7CFF370();
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
        sub_1B7C255E0((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1B7C41078(v23, &v36);
        sub_1B7AED284(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_1B7CFF160();
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
      result = sub_1B7C255E0(v35, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_1B7CE5BEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B7C107FC(&qword_1EBA521C8, &qword_1B7D0B340);
  v37 = v4;
  result = sub_1B7CFF370();
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

      sub_1B7CFF7C0();
      sub_1B7CFEB10();
      result = sub_1B7CFF800();
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

uint64_t sub_1B7CE5EAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B7C107FC(&qword_1EBA521C0, &qword_1B7D0B338);
  v35 = v4;
  result = sub_1B7CFF370();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1B7CFF7C0();
      sub_1B7CFEB10();
      result = sub_1B7CFF800();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
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

uint64_t sub_1B7CE6164(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1B7CFE7C0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v39 - v9;
  v10 = *v2;
  sub_1B7C107FC(&qword_1EBA53A08, &qword_1B7D13F20);
  v45 = v4;
  result = sub_1B7CFF370();
  v50 = result;
  if (*(v10 + 16))
  {
    v40 = v2;
    v12 = 0;
    v13 = (v10 + 64);
    v14 = 1 << *(v10 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v10 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v10;
    v43 = v6;
    v46 = (v6 + 32);
    v18 = v50 + 64;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v48 = (v16 - 1) & v16;
LABEL_15:
      v26 = *(v10 + 48);
      v47 = *(v43 + 72);
      v27 = v47 * (v23 | (v12 << 6));
      if (v45)
      {
        v28 = *v46;
        v29 = v44;
        (*v46)(v44, v26 + v27, v5);
      }

      else
      {
        v28 = *v41;
        v29 = v44;
        (*v41)(v44, v26 + v27, v5);
      }

      v28(v49, *(v10 + 56) + v27, v5);
      v30 = v50;
      sub_1B7CEA730(&qword_1EBA52048, MEMORY[0x1E697BC90], MEMORY[0x1E697BCA0]);
      result = sub_1B7CFE9B0();
      v31 = -1 << *(v30 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = v50;
      v21 = v47 * v19;
      v22 = *v46;
      (*v46)((*(v50 + 48) + v47 * v19), v29, v5);
      result = (v22)(*(v20 + 56) + v21, v49, v5);
      ++*(v20 + 16);
      v10 = v42;
      v16 = v48;
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v25 = v13[v12];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v48 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v50;
  return result;
}

uint64_t sub_1B7CE65C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_1B7CFE7C0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  sub_1B7C107FC(a3, a4);
  v44 = v8;
  result = sub_1B7CFF370();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v40 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = (v10 + 16);
    v42 = v10;
    v45 = (v10 + 32);
    v22 = result + 64;
    v43 = v13;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v25 = (v20 - 1) & v20;
LABEL_15:
      v28 = v24 | (v16 << 6);
      v46 = v25;
      v29 = *(v10 + 72);
      v30 = *(v13 + 48) + v29 * v28;
      if (v44)
      {
        (*v45)(v47, v30, v9);
      }

      else
      {
        (*v41)(v47, v30, v9);
      }

      v31 = *(*(v13 + 56) + 8 * v28);
      sub_1B7CEA730(&qword_1EBA52048, MEMORY[0x1E697BC90], MEMORY[0x1E697BCA0]);
      result = sub_1B7CFE9B0();
      v32 = -1 << *(v15 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v22 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v22 + 8 * v34);
          if (v38 != -1)
          {
            v23 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v33) & ~*(v22 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v45)(*(v15 + 48) + v29 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v31;
      ++*(v15 + 16);
      v10 = v42;
      v13 = v43;
      v20 = v46;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v7 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v13 + 32);
    v7 = v40;
    if (v39 >= 64)
    {
      bzero(v17, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v39;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_1B7CE6984(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B7C107FC(&qword_1EBA52208, &qword_1B7D0B368);
  v34 = v4;
  result = sub_1B7CFF370();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = sub_1B7CFF7B0();
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
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
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

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B7CE6C08(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B7CFF0F0() + 1) & ~v5;
    do
    {
      v12 = *(a2 + 48);
      v13 = (v12 + 8 * v6);
      result = sub_1B7CFF7B0();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = (v12 + 8 * v3);
          if (v3 != v6 || v17 >= v13 + 1)
          {
            *v17 = *v13;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + (v3 << 6));
          v20 = (v18 + (v6 << 6));
          if (v3 != v6 || v19 >= v20 + 4)
          {
            v9 = *v20;
            v10 = v20[1];
            v11 = v20[3];
            v19[2] = v20[2];
            v19[3] = v11;
            *v19 = v9;
            v19[1] = v10;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1B7CE6D80(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B7CFF0F0() + 1) & ~v5;
    do
    {
      sub_1B7CFF7C0();

      sub_1B7CFEB10();
      v9 = sub_1B7CFF800();

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
}

void sub_1B7CE6F30(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B7CFF0F0() + 1) & ~v5;
    do
    {
      sub_1B7CFF7C0();

      sub_1B7CFEB10();
      v11 = sub_1B7CFF800();

      v12 = v11 & v7;
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
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
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
}

void sub_1B7CE70EC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B7CFF0F0() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_1B7CFEFC0();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = v18 + 24 * v3;
          v20 = (v18 + 24 * v6);
          if (v3 != v6 || v19 >= v20 + 24)
          {
            v9 = *v20;
            *(v19 + 16) = *(v20 + 2);
            *v19 = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_1B7CE7284(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B7CFF0F0() + 1) & ~v5;
    do
    {
      v11 = *(*(a2 + 48) + 8 * v6);
      sub_1B7CFF7C0();
      MEMORY[0x1B8CAE910](v11);
      result = sub_1B7CFF800();
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
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 48 * v3);
        v18 = (v16 + 48 * v6);
        if (v3 != v6 || v17 >= v18 + 3)
        {
          v9 = *v18;
          v10 = v18[2];
          v17[1] = v18[1];
          v17[2] = v10;
          *v17 = v9;
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

uint64_t sub_1B7CE7424(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B7CFF0F0() + 1) & ~v5;
    do
    {
      sub_1B7C41078(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_1B7CFF160();
      result = sub_1B7C410D4(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
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
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1B7CE75C8(int64_t a1, uint64_t a2)
{
  v38 = sub_1B7CFE7C0();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_1B7CFF0F0();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_1B7CEA730(&qword_1EBA52048, MEMORY[0x1E697BC90], MEMORY[0x1E697BCA0]);
      v22 = sub_1B7CFE9B0();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

void sub_1B7CE78E8(int64_t a1, uint64_t a2)
{
  v4 = sub_1B7CFE7C0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = sub_1B7CFF0F0();
    v13 = v11;
    v31 = (v12 + 1) & v11;
    v32 = a2 + 64;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v16 = *(v14 + 56);
    v29 = (v14 - 8);
    v30 = v15;
    do
    {
      v17 = v16 * v10;
      v18 = v13;
      v19 = v14;
      v30(v7, *(a2 + 48) + v16 * v10, v4);
      sub_1B7CEA730(&qword_1EBA52048, MEMORY[0x1E697BC90], MEMORY[0x1E697BCA0]);
      v20 = sub_1B7CFE9B0();
      (*v29)(v7, v4);
      v13 = v18;
      v21 = v20 & v18;
      if (a1 >= v31)
      {
        if (v21 >= v31 && a1 >= v21)
        {
LABEL_15:
          v24 = v16 * a1;
          if (v16 * a1 < v17 || *(a2 + 48) + v16 * a1 >= (*(a2 + 48) + v17 + v16))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v24 != v17)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v24 < v17 || *(a2 + 56) + v24 >= (*(a2 + 56) + v17 + v16))
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v14 = v19;
            v13 = v18;
          }

          else
          {
            a1 = v10;
            v25 = v24 == v17;
            v14 = v19;
            v13 = v18;
            if (!v25)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v18;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v21 >= v31 || a1 >= v21)
      {
        goto LABEL_15;
      }

      v14 = v19;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v8 = v32;
    }

    while (((*(v32 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

void *sub_1B7CE7BE8()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA52260, &qword_1B7D0B3B8);
  v2 = *v0;
  v3 = sub_1B7CFF360();
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
        result = sub_1B7CDB094(*(v2 + 56) + (v17 << 6), v23);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = (*(v4 + 56) + (v17 << 6));
        v21 = v23[2];
        v20 = v23[3];
        v22 = v23[1];
        *v19 = v23[0];
        v19[1] = v22;
        v19[2] = v21;
        v19[3] = v20;
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

void sub_1B7CE7D6C()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA53410, &qword_1B7D11578);
  v2 = *v0;
  v3 = sub_1B7CFF360();
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
}

void sub_1B7CE7EE4()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA53768, &unk_1B7D13070);
  v2 = *v0;
  v3 = sub_1B7CFF360();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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

void sub_1B7CE8054()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA521F8, &qword_1B7D0B358);
  v2 = *v0;
  v3 = sub_1B7CFF360();
  v4 = v3;
  if (*(v2 + 16))
  {
    v28 = v1;
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
        v22 = v17 << 6;
        sub_1B7CDB094(*(v2 + 56) + (v17 << 6), v29);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = (*(v4 + 56) + v22);
        v26 = v29[2];
        v25 = v29[3];
        v27 = v29[1];
        *v24 = v29[0];
        v24[1] = v27;
        v24[2] = v26;
        v24[3] = v25;
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

        v1 = v28;
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

void *sub_1B7CE8200()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA52210, &qword_1B7D0B370);
  v2 = *v0;
  v3 = sub_1B7CFF360();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

void sub_1B7CE8360()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA52180, &qword_1B7D0B300);
  v2 = *v0;
  v3 = sub_1B7CFF360();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void sub_1B7CE84C8()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA521B8, &qword_1B7D0B330);
  v2 = *v0;
  v3 = sub_1B7CFF360();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void sub_1B7CE8638()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA521A8, &qword_1B7D0B328);
  v2 = *v0;
  v3 = sub_1B7CFF360();
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
        v22 = 40 * v17;
        sub_1B7AE90A8(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1B7AE910C(v25, *(v4 + 56) + v22);
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

void sub_1B7CE87E0()
{
  v1 = v0;
  v2 = sub_1B7CFDD90();
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v38 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7C107FC(&qword_1EBA52168, &qword_1B7D0B2E8);
  v5 = *v0;
  v6 = sub_1B7CFF360();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v41 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v35 = v40 + 32;
    v36 = v40 + 16;
    v37 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v43 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v22 = v39;
        v21 = v40;
        v23 = *(v40 + 72) * v20;
        v24 = v38;
        (*(v40 + 16))(v38, *(v5 + 48) + v23, v39);
        v25 = *(v5 + 56);
        v26 = 24 * v20;
        v27 = (v25 + 24 * v20);
        v28 = v27[1];
        v42 = *v27;
        v29 = v27[2];
        v30 = v41;
        (*(v21 + 32))(*(v41 + 48) + v23, v24, v22);
        v31 = (*(v30 + 56) + v26);
        v5 = v37;
        *v31 = v42;
        v31[1] = v28;
        v31[2] = v29;

        v15 = v43;
      }

      while (v43);
    }

    v18 = v11;
    v7 = v41;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v19 = *(v34 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v43 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void *sub_1B7CE8A84()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA52238, &qword_1B7D0B390);
  v2 = *v0;
  v3 = sub_1B7CFF360();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

id sub_1B7CE8BD0()
{
  v1 = v0;
  sub_1B7C107FC(&unk_1EBA52270, &qword_1B7D0B3C8);
  v2 = *v0;
  v3 = sub_1B7CFF360();
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
        v19 = (*(v2 + 56) + 24 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = (*(v4 + 56) + 24 * v17);
        *v23 = v20;
        v23[1] = v21;
        v23[2] = v22;

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

void sub_1B7CE8D60()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA52250, &qword_1B7D0B3A8);
  v2 = *v0;
  v3 = sub_1B7CFF360();
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
        v18 = *(v2 + 56) + 48 * v17;
        v20 = *(v18 + 32);
        v19 = *(v18 + 40);
        v21 = *v18;
        v22 = *(v18 + 16);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v23 = *(v4 + 56) + 48 * v17;
        *v23 = v21;
        *(v23 + 16) = v22;
        *(v23 + 32) = v20;
        *(v23 + 40) = v19;
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

void sub_1B7CE8EE0()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA52258, &qword_1B7D0B3B0);
  v2 = *v0;
  v3 = sub_1B7CFF360();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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

void sub_1B7CE903C()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA52240, &qword_1B7D0B398);
  v2 = *v0;
  v3 = sub_1B7CFF360();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_1B7CE91A4()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA521D0, &qword_1B7D0B348);
  v2 = *v0;
  v3 = sub_1B7CFF360();
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
        sub_1B7C41078(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1B7AED284(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1B7C255E0(v22, (*(v4 + 56) + v17));
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

void sub_1B7CE9348()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA521C8, &qword_1B7D0B340);
  v2 = *v0;
  v3 = sub_1B7CFF360();
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
}

id sub_1B7CE94C0()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA521C0, &qword_1B7D0B338);
  v2 = *v0;
  v3 = sub_1B7CFF360();
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

        result = v20;
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

void sub_1B7CE9640(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1B7C107FC(a1, a2);
  v4 = *v2;
  v5 = sub_1B7CFF360();
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

char *sub_1B7CE97C8()
{
  v1 = v0;
  v34 = sub_1B7CFE7C0();
  v38 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v30 - v4;
  sub_1B7C107FC(&qword_1EBA53A08, &qword_1B7D13F20);
  v5 = *v0;
  v6 = sub_1B7CFF360();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v37 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v20 = v38;
        v21 = *(v38 + 72) * (v17 | (v11 << 6));
        v22 = *(v38 + 16);
        v24 = v34;
        v23 = v35;
        v22(v35, *(v5 + 48) + v21, v34);
        v25 = v36;
        v22(v36, *(v5 + 56) + v21, v24);
        v26 = v5;
        v27 = v37;
        v28 = *(v20 + 32);
        v28(*(v37 + 48) + v21, v23, v24);
        v29 = *(v27 + 56);
        v5 = v26;
        result = (v28)(v29 + v21, v25, v24);
        v15 = v39;
      }

      while (v39);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v37;
        goto LABEL_18;
      }

      v19 = *(v31 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1B7CE9AA4(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = sub_1B7CFE7C0();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7C107FC(a1, a2);
  v7 = *v2;
  v8 = sub_1B7CFF360();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    v19 = v9;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v23 = v20 | (v13 << 6);
        v24 = v37;
        v25 = *(v37 + 72) * v23;
        v27 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v25, v35);
        v28 = *(*(v7 + 56) + 8 * v23);
        result = (*(v24 + 32))(*(v19 + 48) + v25, v27, v26);
        *(*(v19 + 56) + 8 * v23) = v28;
        v17 = v38;
      }

      while (v38);
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v22 = *(v31 + v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v38 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }

  return result;
}

void sub_1B7CE9D28(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1B7C107FC(a1, a2);
  v4 = *v2;
  v5 = sub_1B7CFF360();
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
        v20 = (*(v4 + 56) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        v23 = (*(v6 + 56) + 16 * v19);
        *v23 = v22;
        v23[1] = v21;
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

char *sub_1B7CE9E80(uint64_t a1)
{
  v2 = *(a1 + 16);

  swift_beginAccess();
  v3 = IMDSqlStatementColumnCount((v2 + 48));
  swift_endAccess();
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      swift_beginAccess();
      v8 = *(a1 + 24);
      if (*(v8 + 16))
      {
        v9 = sub_1B7AE1160(v5);
        if (v10)
        {
          sub_1B7CDB094(*(v8 + 56) + (v9 << 6), &v60);
          v64 = v60;
          v65 = v61;
          v66 = v62;
          v67 = v63;
          goto LABEL_26;
        }
      }

      result = swift_endAccess();
      if (v5 >> 31)
      {
        goto LABEL_50;
      }

      swift_beginAccess();
      IMDSqlStatementColumnByIndex((v2 + 48), v5, &v56);
      v12 = *(&v56 + 1);
      v13 = v57;
      swift_endAccess();
      if (v12)
      {
        v14 = sub_1B7CFEB70();
        v16 = v15;
        if ((v13 & 0x80000000) != 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v14 = 0;
        v16 = 0xE000000000000000;
        if ((v13 & 0x80000000) != 0)
        {
          goto LABEL_21;
        }
      }

      swift_beginAccess();
      v17 = IMDSqlStatementColumnCount((v2 + 48));
      swift_endAccess();
      if (v13 >= v17)
      {
        goto LABEL_21;
      }

      swift_beginAccess();
      IMDSqlStatementColumnByIndex((v2 + 48), v13, &v56);
      v52 = v4;
      v18 = *(&v56 + 1);
      v19 = v56;
      v20 = v57;
      swift_endAccess();
      v58 = __PAIR128__(v18, v19);
      v4 = v52;
      v59 = v20;
      Type = IMDSqlColumnGetType(&v58);
      if ((Type - 1) > 4)
      {
        goto LABEL_21;
      }

      v51 = Type - 1;
      swift_beginAccess();
      v22 = IMDSqlStatementColumnCount((v2 + 48));
      swift_endAccess();
      if (v13 >= v22)
      {
        break;
      }

      swift_beginAccess();
      IMDSqlStatementColumnByIndex((v2 + 48), v13, v55);
      v23 = v55[0];
      v24 = v55[1];
      v25 = v55[2];
      swift_endAccess();
      *&v53 = v23;
      *(&v53 + 1) = v24;
      *&v54 = v25;
      if (IMDSqlColumnGetObject(&v53))
      {
        sub_1B7CFF0A0();
        swift_unknownObjectRelease();
      }

      else
      {
        v53 = 0u;
        v54 = 0u;
      }

      v56 = v53;
      v57 = v54;
      v4 = v52;
      if (!*(&v54 + 1))
      {
        goto LABEL_20;
      }

      sub_1B7C255E0(&v56, &v58);
      sub_1B7C255E0(&v58, &v62);
      *&v60 = v14;
      *(&v60 + 1) = v16;
      *&v61 = v13;
      v26 = v51;
LABEL_22:
      BYTE8(v61) = v26;
      swift_beginAccess();
      sub_1B7CE097C(&v60, v5);
      swift_endAccess();
      swift_beginAccess();
      v27 = *(a1 + 24);
      if (*(v27 + 16) && (v28 = sub_1B7AE1160(v5), (v29 & 1) != 0))
      {
        sub_1B7CDB094(*(v27 + 56) + (v28 << 6), &v64);
      }

      else
      {
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
      }

LABEL_26:
      result = swift_endAccess();
      if (!*(&v64 + 1))
      {
        goto LABEL_45;
      }

      v68 = v64;
      v69 = v65;
      v70 = v66;
      v71 = v67;
      if (!v6)
      {
        v30 = *(v4 + 3);
        if (((v30 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_51;
        }

        v31 = v30 & 0xFFFFFFFFFFFFFFFELL;
        v32 = v4;
        if (v31 <= 1)
        {
          v33 = 1;
        }

        else
        {
          v33 = v31;
        }

        sub_1B7C107FC(&unk_1EBA53A10, qword_1B7D13F28);
        v34 = swift_allocObject();
        v35 = j__malloc_size(v34);
        v36 = v35 - 32;
        if (v35 < 32)
        {
          v36 = v35 + 31;
        }

        v37 = v36 >> 6;
        *(v34 + 2) = v33;
        *(v34 + 3) = 2 * (v36 >> 6);
        v38 = v32;
        v39 = v34 + 32;
        v40 = *(v38 + 3) >> 1;
        if (*(v38 + 2))
        {
          v41 = v38 + 32;
          if (v34 != v38 || v39 >= &v41[64 * v40])
          {
            v42 = v38;
            memmove(v34 + 32, v41, v40 << 6);
            v38 = v42;
          }

          *(v38 + 2) = 0;
        }

        v7 = &v39[64 * v40];
        v6 = (v37 & 0x7FFFFFFFFFFFFFFFLL) - v40;

        v4 = v34;
      }

      v43 = __OFSUB__(v6--, 1);
      if (v43)
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        return result;
      }

      ++v5;
      v44 = v68;
      v45 = v69;
      v46 = v71;
      *(v7 + 2) = v70;
      *(v7 + 3) = v46;
      *v7 = v44;
      *(v7 + 1) = v45;
      v7 += 64;
      swift_beginAccess();
      v47 = IMDSqlStatementColumnCount((v2 + 48));
      swift_endAccess();
      if (v5 >= v47)
      {
        goto LABEL_44;
      }
    }

    v56 = 0u;
    v57 = 0u;
LABEL_20:
    sub_1B7AEE190(&v56, &qword_1EBA51FA8, qword_1B7D0B230);
LABEL_21:
    v62 = 0u;
    v63 = 0u;
    *&v60 = v14;
    *(&v60 + 1) = v16;
    *&v61 = v13;
    v26 = 4;
    goto LABEL_22;
  }

  v6 = 0;
LABEL_44:
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
LABEL_45:

  result = sub_1B7AEE190(&v64, &qword_1EBA52298, &unk_1B7D10570);
  v48 = *(v4 + 3);
  if (v48 >= 2)
  {
    v49 = v48 >> 1;
    v43 = __OFSUB__(v49, v6);
    v50 = v49 - v6;
    if (v43)
    {
      goto LABEL_52;
    }

    *(v4 + 2) = v50;
  }

  return v4;
}

void sub_1B7CEA39C(uint64_t a1)
{

  swift_beginAccess();
  HasRows = IMDSqlOperationHasRows(a1 + 16);
  swift_endAccess();
  v3 = MEMORY[0x1E69E7CC0];
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v4 = 0;
    v5 = (v3 + 32);
    v6 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = a1;
      *(v7 + 24) = v6;
      if (v4)
      {

        v8 = __OFSUB__(v4--, 1);
        if (v8)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v9 = *(v3 + 3);
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        sub_1B7C107FC(&qword_1EBA52060, &qword_1B7D0AFD0);
        v12 = swift_allocObject();
        v13 = j__malloc_size(v12);
        v14 = v13 - 32;
        if (v13 < 32)
        {
          v14 = v13 - 25;
        }

        v15 = v14 >> 3;
        *(v12 + 2) = v11;
        *(v12 + 3) = (2 * (v14 >> 3)) | 1;
        v16 = v12 + 32;
        v17 = *(v3 + 3) >> 1;
        v5 = &v12[8 * v17 + 32];
        v18 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;
        if (*(v3 + 2))
        {
          v19 = v3 + 32;
          if (v12 != v3 || v16 >= &v19[8 * v17])
          {
            memmove(v16, v19, 8 * v17);
          }

          *(v3 + 2) = 0;
        }

        else
        {
        }

        v3 = v12;
        v8 = __OFSUB__(v18, 1);
        v4 = v18 - 1;
        if (v8)
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          return;
        }
      }

      *v5++ = v7;
      swift_beginAccess();
      v20 = IMDSqlOperationHasRows(a1 + 16);
      swift_endAccess();
      if (!v20)
      {
        goto LABEL_23;
      }
    }
  }

  v4 = 0;
LABEL_23:

  v21 = *(v3 + 3);
  if (v21 >= 2)
  {
    v22 = v21 >> 1;
    v8 = __OFSUB__(v22, v4);
    v23 = v22 - v4;
    if (v8)
    {
      goto LABEL_29;
    }

    *(v3 + 2) = v23;
  }
}

unint64_t sub_1B7CEA5A0()
{
  result = qword_1EBA539F8;
  if (!qword_1EBA539F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA539F8);
  }

  return result;
}

uint64_t sub_1B7CEA5F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA51FA8, qword_1B7D0B230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B7CEA668()
{
  result = qword_1EBA53A00;
  if (!qword_1EBA53A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53A00);
  }

  return result;
}

uint64_t sub_1B7CEA6F8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B7CEA730(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B7CEA77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7CFF210();

  strcpy(v7, "sqlite3 error ");
  v5 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v5);

  MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
  MEMORY[0x1B8CADCA0](a2, a3);
  return v7[0];
}

unint64_t sub_1B7CEA864(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1B7CD9634(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B7CEA8D8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1B7CFF280();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t sub_1B7CEA9FC(uint64_t a1)
{
  type metadata accessor for StorageInspectorCrossCheckReport();
  v3 = swift_allocObject();
  v3[3] = 0;
  v3[4] = 0;
  v3[2] = 0;
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  if (qword_1EBA515D8 != -1)
  {
    swift_once();
    v3 = *(v1 + 24);
  }

  v4 = *(qword_1EBA5DAF0 + OBJC_IVAR____TtC14IMDPersistence29StorageInspectorReportManager_report);
  v5 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_crossCheckReport;
  swift_beginAccess();
  *&v4[v5] = v3;
  v6 = v4;

  return v1;
}

void sub_1B7CEAAEC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_45;
      }

      sub_1B7AE90A8(v4, v38);
      sub_1B7AE90A8(v38, v39);
      sub_1B7C107FC(&qword_1EBA52908, qword_1B7D10580);
      type metadata accessor for DatabaseExportRecordCounter();
      if (swift_dynamicCast())
      {
        break;
      }

      ++v3;
      sub_1B7AE9168(v38);
      v4 += 40;
      if (v2 == v3)
      {
        goto LABEL_6;
      }
    }

    sub_1B7AE910C(v38, v39);
    v6 = swift_dynamicCast();
    v5 = *&v38[0];
    if (!v6)
    {
      v5 = 0;
    }
  }

  else
  {
LABEL_6:
    v5 = 0;
  }

  v36 = v5;
  v7 = *(v1 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v1 + 32;
    while (v8 < *(v1 + 16))
    {
      sub_1B7AE90A8(v9, v38);
      sub_1B7AE90A8(v38, v39);
      sub_1B7C107FC(&qword_1EBA52908, qword_1B7D10580);
      type metadata accessor for DatabaseInspector();
      if (swift_dynamicCast())
      {

        sub_1B7AE910C(v38, v39);
        v11 = swift_dynamicCast();
        v12 = *&v38[0];
        if (!v11)
        {
          v12 = 0;
        }

        v35 = v12;
        v10 = *(v1 + 16);
        if (!v10)
        {
          goto LABEL_23;
        }

        goto LABEL_19;
      }

      ++v8;
      sub_1B7AE9168(v38);
      v9 += 40;
      if (v7 == v8)
      {
        goto LABEL_14;
      }
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_14:
  v35 = 0;
  v10 = *(v1 + 16);
  if (!v10)
  {
LABEL_23:
    v15 = v36;
    if (v36)
    {
      v16 = 0;
      v17 = v34;
LABEL_25:
      v18 = v35;
LABEL_26:
      if (!v18)
      {
        goto LABEL_40;
      }

      v19 = v0;
      v20 = *(v0 + 24);
      type metadata accessor for RecordCounterDatabaseInspectorCrossCheckReport();
      swift_allocObject();

      v21 = sub_1B7C1CB20(v15, v18);
      if (v17)
      {
LABEL_35:

        goto LABEL_40;
      }

      v22 = v21;
      swift_beginAccess();
      *(v20 + 16) = v22;

      v0 = v19;
    }

    else
    {
      v16 = 0;
      v18 = v35;
LABEL_37:
      if (!v18)
      {
        goto LABEL_41;
      }
    }

    if (v16)
    {
      v28 = *(v0 + 24);
      type metadata accessor for DatabaseInspectorAttachmentStorageInspectorCrossCheckReport();
      v29 = swift_allocObject();
      v30 = MEMORY[0x1E69E7CC0];
      *(v29 + 16) = MEMORY[0x1E69E7CC0];
      *(v29 + 24) = v30;
      v31 = *(v18 + 80);
      v32 = *(v16 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_inspectionReport);

      sub_1B7C9E06C(v31, v32);

      swift_beginAccess();
      *(v28 + 32) = v29;
LABEL_41:

      return;
    }

LABEL_40:

    goto LABEL_41;
  }

LABEL_19:
  v13 = 0;
  v14 = v1 + 32;
  while (v13 < *(v1 + 16))
  {
    sub_1B7AE90A8(v14, v38);
    sub_1B7AE90A8(v38, v37);
    sub_1B7C107FC(&qword_1EBA52908, qword_1B7D10580);
    type metadata accessor for AttachmentStorageInspector(0);
    if (swift_dynamicCast())
    {

      sub_1B7AE910C(v38, v39);
      v23 = swift_dynamicCast();
      v24 = *&v38[0];
      if (v23)
      {
        v16 = *&v38[0];
      }

      else
      {
        v16 = 0;
      }

      v17 = v34;
      v18 = v35;
      v15 = v36;
      if (!v36)
      {
        goto LABEL_37;
      }

      if (!v16)
      {
        goto LABEL_26;
      }

      v25 = v0;
      v26 = *(v0 + 24);
      type metadata accessor for RecordCounterAttachmentStorageInspectorCrossCheckReport();
      swift_allocObject();

      v27 = sub_1B7CB6044(v36, v16);
      if (!v34)
      {
        v33 = v27;
        swift_beginAccess();
        *(v26 + 24) = v33;

        v16 = v24;
        v0 = v25;
        v17 = 0;
        v15 = v36;
        goto LABEL_25;
      }

      goto LABEL_35;
    }

    ++v13;
    sub_1B7AE9168(v38);
    v14 += 40;
    if (v10 == v13)
    {
      goto LABEL_23;
    }
  }

LABEL_46:
  __break(1u);
}

uint64_t sub_1B7CEB00C()
{

  return swift_deallocClassInstance();
}

double sub_1B7CEB098@<D0>(void *a1@<X8>)
{
  v3 = *(*v1 + 24);
  a1[3] = type metadata accessor for StorageInspectorCrossCheckReport();
  a1[4] = &protocol witness table for StorageInspectorCrossCheckReport;
  *a1 = v3;

  return result;
}

void sub_1B7CEB104(uint64_t a1, void *a2, NSObject *a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_localizedDescription(a2, a2, a3, a4);
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_1B7AD5000, a3, OS_LOG_TYPE_ERROR, "Failed to get file size for item at path: %@, with error: %@", &v7, 0x16u);
}

void sub_1B7CEB1FC(uint64_t a1, void *a2, NSObject *a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = objc_msgSend_localizedDescription(a2, a2, a3, a4);
  _os_log_error_impl(&dword_1B7AD5000, a3, OS_LOG_TYPE_ERROR, "Downgraded database SQL query '%@' got error: '%@'", &v5, 0x16u);
}

void sub_1B7CEB29C(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136446466;
  v3 = "[IMDDatabase(Database) fetchCountOfRecordType:completionHandler:]";
  v4 = 2048;
  v5 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "%{public}s: Unknown record type %lld", &v2, 0x16u);
}

void sub_1B7CEB328(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_ERROR, "Failed to get total row count for table %{public}@: %@", &v3, 0x16u);
}

void sub_1B7CEB408(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Unable to select rows from Message PTask Table: %@", &v3, 0xCu);
}

void sub_1B7CEB484(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Unable to delete completed task from Message PTask Table: %@", &v3, 0xCu);
}

void sub_1B7CEB514(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v11 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v5, v6, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v7, v8, v9, v10, v11);
}

void sub_1B7CEB5C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v11 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v5, v6, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v7, v8, v9, v10, v11);
}

void sub_1B7CEB67C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v11 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v5, v6, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v7, v8, v9, v10, v11);
}

void sub_1B7CEB730(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v11 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v5, v6, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v7, v8, v9, v10, v11);
}

void sub_1B7CEB7E4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v11 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v5, v6, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v7, v8, v9, v10, v11);
}

void sub_1B7CEB898(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v11 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v5, v6, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v7, v8, v9, v10, v11);
}

void sub_1B7CEB94C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v11 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v5, v6, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v7, v8, v9, v10, v11);
}

void sub_1B7CEBA00(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v11 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v5, v6, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v7, v8, v9, v10, v11);
}

void sub_1B7CEBAB4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v11 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v5, v6, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v7, v8, v9, v10, v11);
}

void sub_1B7CEBB68(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v11 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v5, v6, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v7, v8, v9, v10, v11);
}

void sub_1B7CEBC1C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v11 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v5, v6, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v7, v8, v9, v10, v11);
}

void sub_1B7CEBCD0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v11 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v5, v6, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v7, v8, v9, v10, v11);
}

void sub_1B7CEBD84(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v11 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v5, v6, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v7, v8, v9, v10, v11);
}

void sub_1B7CEBE38(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v11 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v5, v6, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v7, v8, v9, v10, v11);
}

void sub_1B7CEBEEC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v11 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v5, v6, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v7, v8, v9, v10, v11);
}

void sub_1B7CEBFA0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v11 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v5, v6, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v7, v8, v9, v10, v11);
}

void sub_1B7CEC054(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v11 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v5, v6, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v7, v8, v9, v10, v11);
}

void sub_1B7CEC108(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v11 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v5, v6, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v7, v8, v9, v10, v11);
}

void sub_1B7CEC1BC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v11 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v5, v6, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v7, v8, v9, v10, v11);
}

void sub_1B7CEC270(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v11 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v5, v6, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v7, v8, v9, v10, v11);
}

void sub_1B7CEC324(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v11 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v5, v6, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v7, v8, v9, v10, v11);
}

void sub_1B7CEC3D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v11 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v5, v6, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v7, v8, v9, v10, v11);
}

void sub_1B7CEC48C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v11 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v5, v6, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v7, v8, v9, v10, v11);
}

void sub_1B7CEC540(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: %@", &v2, 0xCu);
}

void sub_1B7CEC5B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v11 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v5, v6, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v7, v8, v9, v10, v11);
}

void sub_1B7CEC66C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v11 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v5, v6, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v7, v8, v9, v10, v11);
}

void sub_1B7CEC720(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v11 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v5, v6, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v7, v8, v9, v10, v11);
}

void sub_1B7CEC7D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v11 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v5, v6, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v7, v8, v9, v10, v11);
}

void sub_1B7CEC888(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v11 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v5, v6, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v7, v8, v9, v10, v11);
}

void sub_1B7CEC93C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v11 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v5, v6, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v7, v8, v9, v10, v11);
}

void sub_1B7CEC9F0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v11 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v5, v6, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v7, v8, v9, v10, v11);
}

void sub_1B7CECACC(char a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = @"OFF";
  if (a1)
  {
    v2 = @"ON";
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_fault_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_FAULT, "This method should not be called %@ the notification queue because it may lead to long blocking of other requests.", &v3, 0xCu);
}

void sub_1B7CECB70(void *a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x1E69E9840];
  objc_msgSend_changeType(a1, a2, a3, a4);
  sub_1B7AE0A98();
  _os_log_debug_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_DEBUG, "Not generating notification for participantChangeItem with changeType: %lld", v5, 0xCu);
}

void sub_1B7CECBF8(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_DEBUG, "Not generating notification because chat %@ doesn't have scheduled messages in it", buf, 0xCu);
}

void sub_1B7CECC50(void *a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_chatRecord(a1, a2, a3, a4);
  sub_1B7AE0A98();
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch chat for chatRecord: %@", v6, 0xCu);
}

void sub_1B7CECCE8()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  _os_log_debug_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_DEBUG, "Not generating notification for participantChangeItem from myself: %@", v1, 0xCu);
}

void sub_1B7CECD5C()
{
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1B7CECDCC(uint64_t a1, const char *a2, NSObject *a3, uint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_identifier(*(a1 + 32), a2, a3, a4);
  sub_1B7AE0A98();
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1B7AD5000, a3, OS_LOG_TYPE_ERROR, "Error posting notification request %@. Error: %@", v7, 0x16u);
}

void sub_1B7CECE7C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_ERROR, "Error updating edited message content for notification request %@. Error: %@", &v4, 0x16u);
}

void sub_1B7CECF08()
{
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1B7CECF78()
{
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1B7CED010()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CED04C()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CED0B0()
{
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1B7CED120()
{
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1B7CED190(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_ERROR, "Could not create emoji image text attachment for attachment record", buf, 2u);
}

void sub_1B7CED1D0()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  _os_log_fault_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_FAULT, "Caught exception generating notification %@", v1, 0xCu);
}

void sub_1B7CED244()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CED280()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CED2BC()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CED2F8()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CED334()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CED370(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getSOSUtilitiesClass(void)_block_invoke", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v8, v7, @"IMDNotificationsController.m", 101, @"Unable to find class %s", "SOSUtilities");

  __break(1u);
}

void sub_1B7CED3EC(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v6, "void *SOSLibrary(void)", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v5, v9, v8, @"IMDNotificationsController.m", 100, @"%s", *a1);

  __break(1u);
}

void sub_1B7CED46C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getSMMessageClass(void)_block_invoke", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v8, v7, @"IMDNotificationsController.m", 88, @"Unable to find class %s", "SMMessage");

  __break(1u);
}

void sub_1B7CED4E8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v6, "void *SafetyMonitorLibrary(void)", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v5, v9, v8, @"IMDNotificationsController.m", 87, @"%s", *a1);

  __break(1u);
}

void sub_1B7CED568(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CED618(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CED6C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  IMDSqlOperationErrorDescription(a1, a2, a3, a4);
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

BOOL sub_1B7CED74C(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"EXPLAIN QUERY PLAN %@", a4, a1);
  *a2 = MEMORY[0x1E69E9820];
  *(a2 + 1) = 3221225472;
  *(a2 + 2) = sub_1B7B1D23C;
  *(a2 + 3) = &unk_1E7CB6FD0;
  *(a2 + 4) = v7;
  *(a2 + 5) = a3;
  return _IMDSqlOperationRunQuery(a3, v7, a4, a2);
}

void sub_1B7CED7FC(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Dumping query plan for %{public}@", &v3, 0xCu);
}

void sub_1B7CED878(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CED928(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CEDA30(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"can't have migration %d to %d fail without error!! (Begin Transaction)", a4, a1, a2);
  sub_1B7B2641C();
  sub_1B7B2640C();
  sub_1B7AE0B60();
  sub_1B7AE0AC0(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v6, v7, v8, v9, v10, v11);
}

void sub_1B7CEDAE0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"can't have migration %d to %d fail without error!! (Drop Triggers)", a4, a1, a2);
  sub_1B7B2641C();
  sub_1B7B2640C();
  sub_1B7AE0B60();
  sub_1B7AE0AC0(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v6, v7, v8, v9, v10, v11);
}

void sub_1B7CEDB90(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"can't have migration %d to %d fail without error!! (Drop unknown indexes)", a4, a1, a2);
  sub_1B7B2641C();
  sub_1B7B2640C();
  sub_1B7AE0B60();
  sub_1B7AE0AC0(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v6, v7, v8, v9, v10, v11);
}

void sub_1B7CEDC40(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"can't have migration  %d to %d fail without error!! (Actual migration)"), a4, a1, a2);
  sub_1B7B2641C();
  sub_1B7B2640C();
  sub_1B7AE0B60();
  sub_1B7AE0AC0(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v6, v7, v8, v9, v10, v11);
}

void sub_1B7CEDCF0(int a1, uint8_t *buf, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a1;
  _os_log_error_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_ERROR, "Unable to perform database migration to %d - NO MIGRATOR FOUND", buf, 8u);
}

void sub_1B7CEDD38(int a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 67109376;
  *(buf + 1) = a3;
  *(buf + 4) = 1024;
  *(buf + 10) = a1;
  _os_log_error_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_ERROR, "Database version is newer, but internal build allows this state (dbver %d, expected %d)", buf, 0xEu);
}

void sub_1B7CEDD90()
{
  sub_1B7B2DBE4(*MEMORY[0x1E69E9840]);
  sub_1B7B2DBD8();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1B7CEDE40()
{
  sub_1B7B2DBE4(*MEMORY[0x1E69E9840]);
  sub_1B7B2DBD8();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1B7CEDEF0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CEDFA8()
{
  sub_1B7B2DBE4(*MEMORY[0x1E69E9840]);
  sub_1B7B2DBD8();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1B7CEE018(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CEE0D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x30u);
}

void sub_1B7CEE1AC()
{
  sub_1B7B2DBE4(*MEMORY[0x1E69E9840]);
  sub_1B7B2DBD8();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1B7CEE244(NSObject *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = 136315906;
  v6 = "op == nil || op->connection == nil || op->database == nil";
  v7 = 2080;
  v8 = "void IMDSqlOperationWasInitialized(IMDSqlOperation *)";
  v9 = 1024;
  v10 = 67;
  v11 = 2112;
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  _os_log_error_impl(&dword_1B7AD5000, a1, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", &v5, 0x26u);
}

void sub_1B7CEE380(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  IMDSqlOperationErrorDescription(a2, a2, a3, a4);
  sub_1B7B2FE64();
  sub_1B7AE0AE0(&dword_1B7AD5000, v4, v5, "Failed to create table %@ with error %@", v6, v7, v8, v9);
}

void sub_1B7CEE400(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  IMDSqlOperationErrorDescription(a2, a2, a3, a4);
  sub_1B7B2FE64();
  sub_1B7AE0AE0(&dword_1B7AD5000, v4, v5, "Failed to drop table %@ with error %@", v6, v7, v8, v9);
}

void sub_1B7CEE480(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Failed to serialize user info for processing task: %@", &v2, 0xCu);
}

void sub_1B7CEE520(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CEE5C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CEE670(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CEE718(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CEE7C0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CEE868(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CEE910(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CEE9B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CEEA60(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CEEB08(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CEEBB0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CEEC58(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CEED00(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CEEDA8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CEEE50(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CEEF48(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CEEFF0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CEF098(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CEF140(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CEF1E8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CEF290(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"IMDSharedSqliteDatabase() should not be nil", a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CEF3C4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFStringRef IMDMessageRecordCopyGUID(CFAllocatorRef, IMDMessageRecordRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL message passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CEF43C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFStringRef IMDMessageRecordCopyGUIDUnlocked(CFAllocatorRef, IMDMessageRecordRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL message passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CEF4B4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFStringRef IMDMessageRecordCopyText(CFAllocatorRef, IMDMessageRecordRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL message passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CEF52C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "int64_t IMDMessageRecordGetItemType(IMDMessageRecordRef, Boolean)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL message passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CEF5A4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "int64_t IMDMessageRecordGetDate(IMDMessageRecordRef, Boolean)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL message passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CEF61C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "int64_t IMDMessageRecordGetScheduleType(IMDMessageRecordRef, Boolean)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL message passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CEF694(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "int64_t IMDMessageRecordGetScheduleState(IMDMessageRecordRef, Boolean)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL message passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CEF70C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = 36;
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL message passed when trying to get property: %ld", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CEF808(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "void IMDMessageRecordBulkCopy(IMDMessageRecordRef, IMDMessageRecordItemType *, int64_t *, int64_t *, CFStringRef *, int64_t *, int64_t *, int64_t *, int64_t *, CFStringRef *, CFDataRef *, CFNumberRef *, CFStringRef *, CFStringRef *, CFStringRef *, int64_t *, CFStringRef *, int64_t *, int64_t *, Boolean *, Boolean *, CFStringRef *, int64_t *, CFStringRef *, int64_t *, int64_t *, int64_t *, int64_t *, int64_t *, CFStringRef *, int64_t *, NSRange *, CFStringRef *, CFDataRef *, CFStringRef *, int64_t *, CFDataRef *, int64_t *, CFStringRef *, CFDataRef *, CFStringRef *, CFStringRef *, CFStringRef *, int64_t *, CFStringRef *, CFStringRef *, CFStringRef *, CFStringRef *, int64_t *, int64_t *, int64_t *, CFStringRef *, CFStringRef *, CFStringRef *, int64_t *, int64_t *, CFStringRef *)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL message passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CEF880(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "void _IMDMessageRecordSetHandleID(IMDMessageRecordRef, int64_t)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL message passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CEF938(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "void _IMDMessageRecordSetOtherHandleID(IMDMessageRecordRef, int64_t)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL message passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CEFA38(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "void IMDMessageRecordBulkUpdate(IMDMessageRecordRef, int64_t, CFStringRef, int64_t, int64_t, int64_t, int64_t, CFStringRef, CFDataRef, CFNumberRef, CFStringRef, CFStringRef, CFStringRef, int64_t, CFStringRef, int64_t, int64_t, int64_t, CFStringRef, int64_t, int64_t, int64_t, int64_t, int64_t, CFStringRef, int64_t, NSRange, CFStringRef, CFDataRef, CFStringRef, int64_t, CFDataRef, int64_t, CFStringRef, CFDataRef, CFStringRef, CFStringRef, CFStringRef, int64_t, CFStringRef, CFStringRef, CFStringRef, CFStringRef, int64_t, int64_t, int64_t, CFStringRef, CFStringRef, CFStringRef, int64_t, int64_t, CFStringRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL message passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CEFAB0(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_1B7AE0B74(&dword_1B7AD5000, a2, a3, "ASSERTION FAILED: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CEFB1C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "void IMDMessageRecordAnonymizedUpdate(IMDMessageRecordRef, CFStringRef, CFDataRef, CFStringRef, CFStringRef, CFStringRef, CFDataRef, CFDataRef, CFStringRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL message passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CEFB94(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "void _IMDMessageRecordBulkCopyXPCDictionary(IMDMessageRecordRef, xpc_object_t, Boolean, Boolean, Boolean)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL record passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CEFC0C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "void _IMDMessageRecordBulkCopyXPCDictionary(IMDMessageRecordRef, xpc_object_t, Boolean, Boolean, Boolean)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL dictionary passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CEFC84(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFStringRef IMDHandleRecordCopyID(CFAllocatorRef, IMDHandleRecordRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL handle passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CEFCFC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFStringRef IMDHandleRecordCopyCountry(CFAllocatorRef, IMDHandleRecordRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL handle passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CEFD74(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFStringRef IMDHandleRecordCopyUncanonicalizedID(CFAllocatorRef, IMDHandleRecordRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL handle passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CEFDEC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFStringRef IMDHandleRecordCopyPersonCentricID(CFAllocatorRef, IMDHandleRecordRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL handle passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CEFE64(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "void IMDHandleRecordBulkCopy(IMDHandleRecordRef, CFStringRef *, CFStringRef *, CFStringRef *, CFStringRef *, CFStringRef *)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL handle passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CEFEDC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "void IMDHandleRecordBulkUpdate(IMDHandleRecordRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL handle passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CEFF54(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "void _IMDHandleRecordBulkCopyXPCDictionary(IMDHandleRecordRef, xpc_object_t, Boolean)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL record passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CEFFCC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "void _IMDHandleRecordBulkCopyXPCDictionary(IMDHandleRecordRef, xpc_object_t, Boolean)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL dictionary passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF0080()
{
  sub_1B7B43CA8();
  v3 = objc_msgSend_localizedDescription(v0, v0, v1, v2);
  sub_1B7B43C98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1B7CF0120(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_localizedDescription(a1, a2, a3, a4);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_1B7CF01AC()
{
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1B7CF021C()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CF0258()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CF0294()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CF02D0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_guid(*(a1 + 32), a2, a3, a4);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1B7CF037C()
{
  sub_1B7AE0B90();
  sub_1B7AE0B00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1B7CF0400()
{
  sub_1B7B43CA8();
  v3 = objc_msgSend_fileTransferGUIDs(v0, v0, v1, v2);
  objc_msgSend_count(v3, v4, v5, v6);
  sub_1B7B43CB4();
  sub_1B7AE0AB0();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x20u);
}

void sub_1B7CF04B4(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_fileTransferGUIDs(a1, a2, a3, a4);
  sub_1B7AE0B90();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1B7CF054C()
{
  sub_1B7AE0B90();
  sub_1B7AE0B00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1B7CF05D0()
{
  sub_1B7AE0B90();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1B7CF064C()
{
  sub_1B7AE0B90();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1B7CF0748(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_guid(a1, a2, a3, a4);
  sub_1B7AE0B90();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1B7CF08E0()
{
  sub_1B7B43CA8();
  v3 = objc_msgSend_guid(v0, v0, v1, v2);
  sub_1B7B43CB4();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_1B7CF098C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_guid(a1, a2, a3, a4);
  sub_1B7AE0B90();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1B7CF0A24(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_guid(a1, a2, a3, a4);
  sub_1B7AE0B90();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1B7CF0ABC()
{
  sub_1B7AE0A98();
  sub_1B7AE0B00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1B7CF0B38(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_guid(a1, a2, a3, a4);
  sub_1B7AE0B90();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1B7CF0C50()
{
  sub_1B7AE0B90();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1B7CF0CCC(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_partNumber(a1, a2, a3, a4);
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_1B7CF0D74()
{
  sub_1B7AE0B90();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1B7CF0DF0()
{
  sub_1B7AE0B90();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1B7CF0EEC()
{
  sub_1B7B43CA8();
  v3 = objc_msgSend_localizedDescription(v0, v0, v1, v2);
  sub_1B7B43C98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1B7CF0F8C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_localizedDescription(a1, a2, a3, a4);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_1B7CF1018()
{
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1B7CF1088()
{
  sub_1B7B43CA8();
  v3 = objc_msgSend_localizedDescription(v0, v0, v1, v2);
  sub_1B7B43C98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1B7CF1128(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7B43CC8(a1, a2);
  v8 = objc_msgSend_localizedDescription(v4, v5, v6, v7);
  *v3 = 138412290;
  *v2 = v8;
  sub_1B7B43CDC(&dword_1B7AD5000, v9, v10, "Recently Deleted | Failed to remove entries from chat_message_join: %@");
}

void sub_1B7CF1184(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_localizedDescription(a1, a2, a3, a4);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_1B7CF1210(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7B43CC8(a1, a2);
  v8 = objc_msgSend_localizedDescription(v4, v5, v6, v7);
  *v3 = 138412290;
  *v2 = v8;
  sub_1B7B43CDC(&dword_1B7AD5000, v9, v10, "Recently Deleted | Failed to add chat entry to unsynced_removed_recoverable_messages: %@");
}

void sub_1B7CF126C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_localizedDescription(a2, a2, a3, a4);
  sub_1B7B43C98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1B7CF1314(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_localizedDescription(a2, a2, a3, a4);
  sub_1B7B43C98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1B7CF13BC(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_localizedDescription(a1, a2, a3, a4);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_1B7CF144C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_localizedDescription(a2, a2, a3, a4);
  sub_1B7B43C98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1B7CF14F4()
{
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1B7CF1564(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_localizedDescription(a1, a2, a3, a4);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_1B7CF15F4()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CF1630()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CF166C()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CF16A8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_localizedDescription(a1, a2, a3, a4);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_1B7CF1748(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "[NSXPCConnection(IMDPersistence) ___imdp_persistenceServiceListener]", v5);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v8, v7, v6, @"NSXPCConnection+IMDPersistence.m", 24, @"Attempt to use cleanup handlers on NSXPCConnection not managed by IMDPersistenceServiceListener");
}

void sub_1B7CF1810(_DWORD *a1, void *a2)
{
  *a1 = 136315138;
  *a2 = "Boolean __findOrCreateiMessageAttachmentsForLegacyGUID(CSDBSqliteConnection *, CFStringRef, int64_t)";
  sub_1B7B543FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1B7CF185C(_BYTE *a1, _BYTE *a2)
{
  sub_1B7B54408(a1, a2);
  sub_1B7B543FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_1B7CF1890(float *a1, _DWORD *a2)
{
  sub_1B7AE0BA4(a1, a2, 1.5047e-36);
  sub_1B7B543FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1B7CF18D0(float *a1, _DWORD *a2)
{
  sub_1B7AE0BA4(a1, a2, 1.5047e-36);
  sub_1B7B543FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1B7CF1910(_BYTE *a1, _BYTE *a2)
{
  sub_1B7B54408(a1, a2);
  sub_1B7B543FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_1B7CF1944(float *a1, _DWORD *a2)
{
  sub_1B7AE0BA4(a1, a2, 1.5047e-36);
  sub_1B7B543FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1B7CF1984(float *a1, _DWORD *a2)
{
  sub_1B7AE0BA4(a1, a2, 1.5047e-36);
  sub_1B7B543FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1B7CF19C4(float *a1, _DWORD *a2)
{
  sub_1B7AE0BA4(a1, a2, 1.5047e-36);
  sub_1B7B543FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1B7CF1A04(_BYTE *a1, _BYTE *a2)
{
  sub_1B7B54408(a1, a2);
  sub_1B7B543FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_1B7CF1A38(os_log_t log)
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 67109120;
  v1[1] = 1;
  _os_log_error_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_ERROR, "[Database] ERROR: Failed to create new message row. SQLite error: %d", v1, 8u);
}

void sub_1B7CF1AB8(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "[Database] ERROR: **** Failed ingesting legacy message with row ID: %d", v2, 8u);
}

void sub_1B7CF1B30(float *a1, _DWORD *a2)
{
  sub_1B7AE0BA4(a1, a2, 1.5047e-36);
  sub_1B7B543FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1B7CF1B70()
{
  sub_1B7AE0B10();
  sub_1B7B54418();
  sub_1B7B543FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1B7CF1BE8()
{
  sub_1B7AE0B10();
  sub_1B7B54418();
  sub_1B7B543FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1B7CF1CE4()
{
  sub_1B7AE0B10();
  sub_1B7B543FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1B7CF1D58(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_1B7CF1E14(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_1B7CF1ED0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_1B7CF1F8C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_1B7CF2048(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = IMDSqlOperationErrorDescription(a1, a2, a3, a4);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_1B7CF20D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_1B7CF2190(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_1B7CF224C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_1B7CF2308(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_1B7CF23C4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_1B7CF2480(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_1B7CF253C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_1B7CF25F8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_1B7CF26B4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"SQL operation results never read from statement", a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_1B7CF2770(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_1B7CF282C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_1B7CF28E8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_1B7CF29A4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"trying to commit transaction when we don't have one.", a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_1B7CF2A60(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_1B7CF2B1C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_1B7CF2BD8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"Trying to revert transaction when we don't have one. This may mean we have a transaction open on this same sql_connection with another IMDSqlOperation", a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_1B7CF2C94(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_1B7CF2D50(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_1B7CF2E0C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = IMDSqlOperationErrorDescription(a1, a2, a3, a4);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_1B7CF2EDC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_1B7CF2F98(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_1B7CF3054(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_1B7CF3110(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_1B7CF31CC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_1B7CF3288(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_1B7CF3344(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFStringRef IMDChatRecordCopyGUID(CFAllocatorRef, IMDChatRecordRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL chat passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF33BC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFStringRef IMDChatRecordCopyChatIdentifier(CFAllocatorRef, IMDChatRecordRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL chat passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF3434(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFStringRef IMDChatRecordCopyGUIDUnlocked(CFAllocatorRef, IMDChatRecordRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL chat passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF34AC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFStringRef IMDChatRecordCopyDisplayName(CFAllocatorRef, IMDChatRecordRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL chat passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF3524(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_ERROR, "Error fetch identifiers for chat records with guid %@ : %@", &v4, 0x16u);
}

void sub_1B7CF35B8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "void _IMDChatRecordBulkCopy(IMDChatRecordRef, int64_t *, int64_t *, CFStringRef *, CFDataRef *, CFStringRef *, CFStringRef *, CFStringRef *, CFStringRef *, CFStringRef *, CFStringRef *, CFStringRef *, CFStringRef *, int64_t *, int64_t *, int64_t *, CFStringRef *, CFStringRef *, int64_t *, CFStringRef *, int64_t *, CFStringRef *, CFStringRef *, int64_t *, int64_t *, int64_t *, int64_t *, int64_t *)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL chat passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF3630(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "void _IMDChatRecordSetGUID(IMDChatRecordRef, CFStringRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "%s can only be called from the server process", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF36A8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "void _IMDChatRecordSetGUID(IMDChatRecordRef, CFStringRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL chat passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF3720(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "void IMDChatRecordSetIsArchived(IMDChatRecordRef, int64_t)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL chat passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF3798(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "void IMDChatRecordSetIsBlackholed(IMDChatRecordRef, int64_t)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL chat passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF3810(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "void IMDChatRecordSetIsRecovered(IMDChatRecordRef, int64_t)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL chat passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF3888(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "void IMDChatRecordSetIsDeletingIncomingMessages(IMDChatRecordRef, int64_t)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL chat passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF3900(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  *v10 = 136315906;
  *&v10[4] = "chat";
  *&v10[12] = 2080;
  *&v10[14] = "void IMDChatRecordRemoveMessage(IMDChatRecordRef, IMDMessageRecordRef)";
  *&v10[22] = 1024;
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, *v10, *&v10[8], *&v10[16]);
}

void sub_1B7CF39B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  *v10 = 136315906;
  *&v10[4] = "message";
  *&v10[12] = 2080;
  *&v10[14] = "void IMDChatRecordRemoveMessage(IMDChatRecordRef, IMDMessageRecordRef)";
  *&v10[22] = 1024;
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, *v10, *&v10[8], *&v10[16]);
}

void sub_1B7CF3A70(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "void IMDChatRecordBulkUpdate(IMDChatRecordRef, int64_t, int64_t, CFStringRef, CFDataRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, int64_t, int64_t, int64_t, CFStringRef, CFStringRef, int64_t, CFStringRef, int64_t, CFStringRef, CFStringRef, int64_t, int64_t, int64_t, int64_t, int64_t)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL chat passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF3AE8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "void IMDChatRecordAnonymizedUpdate(IMDChatRecordRef, CFDataRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL chat passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF3B60(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "void _IMDChatRecordBulkCopyXPCDictionary(IMDChatRecordRef, xpc_object_t, Boolean, Boolean, Boolean, Boolean)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL record passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF3BD8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "void _IMDChatRecordBulkCopyXPCDictionary(IMDChatRecordRef, xpc_object_t, Boolean, Boolean, Boolean, Boolean)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL dictionary passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF3C50(void *a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 138412290;
  v6 = objc_msgSend_localizedDescription(a1, a2, a3, a4);
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Sqlite3 Error: %@", &v5, 0xCu);
}

void sub_1B7CF3CDC(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "error saving wallpaper to contact: %@", &v2, 0xCu);
}

void sub_1B7CF3D54(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "failed to get a contact with handle %@ to save wallpaper", &v2, 0xCu);
}

void sub_1B7CF3DCC(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Not setting syndication identifier because attachment index was not found in attributed body. attachmentGUID: %@", &v2, 0xCu);
}

void sub_1B7CF3E44(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  v4 = "+[IMDAttachmentSyndicationUtilities _attachmentGUIDIsSyndicatable:syndicationIdentifier:attachmentUTI:attributedBody:encodedSyndicationRanges:isCMM:verbose:]";
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_ERROR, "%s Could not derive message part range from attachment GUID %@ (syndicationIdentifier %@)", &v3, 0x20u);
}

void sub_1B7CF3EF0(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_DEBUG, "File already exists at path %@", &v2, 0xCu);
}

void sub_1B7CF3FAC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "Boolean IMDAttachmentRecordIsSticker(IMDAttachmentRecordRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF4024(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFStringRef IMDAttachmentRecordCopyGUID(CFAllocatorRef, IMDAttachmentRecordRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF409C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "int64_t IMDAttachmentRecordGetCreatedDate(IMDAttachmentRecordRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF4114(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "int64_t IMDAttachmentRecordGetStartDate(IMDAttachmentRecordRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF418C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "Boolean IMDAttachmentRecordGetIsOutgoing(IMDAttachmentRecordRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF4204(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFStringRef IMDAttachmentRecordCopyFilename(CFAllocatorRef, IMDAttachmentRecordRef, BOOL)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF427C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFStringRef IMDAttachmentRecordCopyTransferName(CFAllocatorRef, IMDAttachmentRecordRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF42F4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFStringRef IMDAttachmentRecordCopyUTIType(CFAllocatorRef, IMDAttachmentRecordRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF436C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFDictionaryRef IMDAttachmentRecordCopyAttributionInfo(CFAllocatorRef, IMDAttachmentRecordRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF43E4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFDictionaryRef IMDAttachmentRecordCopyUserInfo(CFAllocatorRef, IMDAttachmentRecordRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF445C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFStringRef IMDAttachmentRecordCopyMIMEType(CFAllocatorRef, IMDAttachmentRecordRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF44D4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "int64_t IMDAttachmentRecordGetTransferState(IMDAttachmentRecordRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF454C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "int64_t IMDAttachmentRecordGetTotalBytes(IMDAttachmentRecordRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF45C4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "int64_t IMDAttachmentRecordGetCommSafetySensitive(IMDAttachmentRecordRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF463C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFStringRef IMDAttachmentRecordCopyEmojiImageContentIdentifier(CFAllocatorRef, IMDAttachmentRecordRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF46B4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFStringRef IMDAttachmentRecordCopyEmojiImageShortDescription(CFAllocatorRef, IMDAttachmentRecordRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF472C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "void _IMDAttachmentRecordBulkCopy(IMDAttachmentRecordRef, CFStringRef *, int64_t *, int64_t *, CFStringRef *, CFStringRef *, CFStringRef *, CFStringRef *, int64_t *, Boolean *, int64_t *, CFDictionaryRef *, Boolean *, CFDictionaryRef *, CFDictionaryRef *, Boolean *, int64_t *, CFDataRef *, CFStringRef *, CFStringRef *, int64_t *, CFStringRef *, CFStringRef *)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF47A4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "void IMDAttachmentRecordBulkUpdate(IMDAttachmentRecordRef, CFStringRef, int64_t, int64_t, CFStringRef, CFStringRef, CFStringRef, CFStringRef, int64_t, Boolean, int64_t, CFDictionaryRef, Boolean, CFDictionaryRef, CFDictionaryRef, Boolean, int64_t, CFDataRef, CFStringRef, CFStringRef, int64_t, CFStringRef, CFStringRef, int64_t)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF481C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "void IMDAttachmentRecordAnonymizedUpdate(IMDAttachmentRecordRef, CFStringRef, CFStringRef, CFDictionaryRef, CFDictionaryRef, CFDictionaryRef)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF4894(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "void _IMDAttachmentRecordBulkCopyXPCDictionary(IMDAttachmentRecordRef, xpc_object_t, Boolean)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF490C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "void _IMDAttachmentRecordBulkCopyXPCDictionary(IMDAttachmentRecordRef, xpc_object_t, Boolean)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL dictionary passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF4984(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFStringRef _IMDAttachmentCopyDescription(_IMDAttachmentRecord *)";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF49FC(uint64_t a1, void *a2, NSObject *a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_localizedDescription(a2, a2, a3, a4);
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_1B7AD5000, a3, OS_LOG_TYPE_ERROR, "CloudSync.message | Failed to update ck_sync_state for recordIDs: %@ with error: %@", &v7, 0x16u);
}

void sub_1B7CF4AB0(void *a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_localizedDescription(a1, a2, a3, a4);
  v6 = 138412290;
  v7 = v5;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "CloudSync.message | Query returned an error: %@", &v6, 0xCu);
}

void sub_1B7CF4B48(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "CloudSync.message | Update status Query success for: %@", &v2, 0xCu);
}

void sub_1B7CF4BC0()
{
  sub_1B7AE0A98();
  sub_1B7AE0B00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1B7CF4CFC()
{
  sub_1B7AE0B90();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1B7CF4D78()
{
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1B7CF4DE8()
{
  sub_1B7AE0A98();
  sub_1B7AE0B00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1B7CF4E64()
{
  sub_1B7AE0B90();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1B7CF4F60()
{
  sub_1B7AE0A98();
  sub_1B7AE0B00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1B7CF4FDC()
{
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1B7CF510C()
{
  sub_1B7AE0A98();
  sub_1B7AE0B00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1B7CF5188()
{
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1B7CF523C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CF52EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CF539C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CF544C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"Sqlite database path is nil", a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CF54FC(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315906;
  *(buf + 4) = "_MessagesRecordStore";
  *(buf + 6) = 2080;
  *(buf + 14) = "CSDBThreadedRecordStoreRef IMDSharedThreadedRecordStore(void)";
  *(buf + 11) = 1024;
  *(buf + 6) = 169;
  *(buf + 14) = 2112;
  *(buf + 30) = a1;
  _os_log_error_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", buf, 0x26u);
}

void sub_1B7CF557C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"CSDBCreateThreadedRecordStore failed", a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CF562C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CF56DC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CF578C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"recordStore is nil, will not initialize", a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CF583C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CF58EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CF59D0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CF5A80(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CF5B64(uint64_t a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_ERROR, "Creating triggers for %p after db init failed: %@", buf, 0x16u);
}

void sub_1B7CF5BBC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CF5C6C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CF5D1C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_schemaVersion(IMDLegacyRecordBridge, a2, a3, a4);
  sub_1B7B6C044();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x18u);
}

void sub_1B7CF5DC4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_schemaVersion(IMDLegacyRecordBridge, a2, a3, a4);
  sub_1B7B6C044();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x18u);
}

void sub_1B7CF5E6C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CF5F1C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CF5FCC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_schemaVersion(IMDLegacyRecordBridge, a2, a3, a4);
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_1B7CF6104(uint64_t a1, id *a2, uint64_t a3, uint64_t a4)
{
  if (*a2)
  {
    objc_msgSend_localizedDescription(*a2, a2, a3, a4);
  }

  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_1B7CF61AC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], a2, a3, a4);
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1B7CF6248(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CF62F8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CF63A8(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Database Reindexing the DB failed with SQLite result: %d", v2, 8u);
}

void sub_1B7CF6420(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Database Vacuuming failed with SQLite result: %d", v2, 8u);
}

void sub_1B7CF64CC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CF657C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CF6624(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CF66CC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CF6774(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CF681C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CF68C4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CF696C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CF6A14(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CF6ABC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CF6B64(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CF6C0C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CF6CB4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CF6D5C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CF6E04(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CF6EAC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CF6F90(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CF7038(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CF70E0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  v10 = 136315906;
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v4, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6, v7, v8, v9, v10);
}

void sub_1B7CF7188(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_ERROR, "__syncXPCIMDMessageStoreSendXPCMessage failed to copy the xpc_connection_t!", buf, 2u);
}

void sub_1B7CF71C8(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_ERROR, "__syncXPCIMDMessageStoreSendXPCMessage failed several consecutive times - sleeping for 1+ the launchd throttle time.", buf, 2u);
}

void sub_1B7CF7240(char a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218240;
  v4 = a2;
  v5 = 1024;
  v6 = a1 & 1;
  _os_log_debug_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_DEBUG, "Finished legacy command %lli async %{BOOL}d", &v3, 0x12u);
}

void sub_1B7CF733C(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = 134218240;
  v5 = v2;
  v6 = 1024;
  v7 = v3;
  _os_log_debug_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_DEBUG, "Finished legacy command %lli async %{BOOL}d", &v4, 0x12u);
}

void sub_1B7CF73C8(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "FAFetchFamilyCircleRequest failed %@", &v2, 0xCu);
}

void sub_1B7CF7440(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getFAFetchFamilyCircleRequestClass(void)_block_invoke", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v8, v7, @"IMDFamilyInviteNotificationContext.m", 23, @"Unable to find class %s", "FAFetchFamilyCircleRequest");

  __break(1u);
}

void sub_1B7CF74BC(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v6, "void *FamilyCircleLibrary(void)", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v5, v9, v8, @"IMDFamilyInviteNotificationContext.m", 22, @"%s", *a1);

  __break(1u);
}

void sub_1B7CF753C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_localizedDescription(a1, a2, a3, a4);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_1B7CF75CC(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_localizedDescription(a1, a2, a3, a4);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_1B7CF765C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_localizedDescription(a1, a2, a3, a4);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_1B7CF76EC(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_localizedDescription(a1, a2, a3, a4);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_1B7CF777C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_localizedDescription(a2, a2, a3, a4);
  sub_1B7AE0B28();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1B7CF781C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_localizedDescription(a2, a2, a3, a4);
  sub_1B7AE0B28();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1B7CF78BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_localizedDescription(a2, a2, a3, a4);
  sub_1B7AE0B28();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1B7CF795C(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = objc_msgSend_localizedDescription(a2, a2, a3, a4);
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_1B7AD5000, a4, OS_LOG_TYPE_ERROR, "Recently Deleted | Failed to add chat entry to unsynced_removed_recoverable_messages: %@", a1, 0xCu);
}

void sub_1B7CF79D4(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_localizedDescription(a1, a2, a3, a4);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_1B7CF7A64(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_localizedDescription(a1, a2, a3, a4);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_1B7CF7AF4()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  _os_log_error_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_ERROR, "Recently Deleted | Cannot recover: Could not find attributed body for messageGUID: %@, rebuilding from scratch", v1, 0xCu);
}

void sub_1B7CF7B68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_localizedDescription(a2, a2, a3, a4);
  sub_1B7B2FE64();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1B7CF7C04(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_localizedDescription(a1, a2, a3, a4);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_1B7CF7C90(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_localizedDescription(a1, a2, a3, a4);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_1B7CF7D1C(uint8_t *buf, uint64_t a2, void *a3, os_log_t log)
{
  v4 = *(*a2 + 40);
  *buf = 138412290;
  *a3 = v4;
  _os_log_error_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_ERROR, "Recently Deleted | attributedBodyPart is nil for message guid %@", buf, 0xCu);
}

void sub_1B7CF7D70(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_localizedDescription(a2, a2, a3, a4);
  sub_1B7B2FE64();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1B7CF7E0C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_localizedDescription(a1, a2, a3, a4);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

uint64_t sub_1B7CF7EAC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      LOBYTE(a1) = 1;
    }

    else
    {
      objc_opt_class();
      LOBYTE(a1) = objc_opt_isKindOfClass();
    }
  }

  return a1 & 1;
}

id sub_1B7CF7F3C(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sub_1B7AE0B40();
    v6 = v4;
    sub_1B7AE0BD0();
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, v9, v10, 16);
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v6);
          }

          v17 = sub_1B7B8195C(a1, *(v28 + 8 * i));
          if (v17)
          {
            objc_msgSend_addObject_(v2, v15, v17, v16);
          }
        }

        sub_1B7AE0BD0();
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v18, v19, v20, 16);
      }

      while (v12);
    }

    v21 = MEMORY[0x1E696AEC0];
    v24 = objc_msgSend_componentsJoinedByString_(v2, v22, @", ", v23);
    a1 = objc_msgSend_stringWithFormat_(v21, v25, @"( %@)", v26, v24);
  }

  return a1;
}

__CFString *sub_1B7CF80BC(__CFString *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = sub_1B7AE0B40();
    v10 = objc_msgSend_subpredicates(v4, v7, v8, v9, v6);
    sub_1B7AE0BD0();
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, v13, v14, 16);
    if (v15)
    {
      v16 = v15;
      v17 = *v38;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(v10);
          }

          v19 = sub_1B7B81744(a1, *(v37 + 8 * i));
          objc_msgSend_addObject_(v2, v20, v19, v21);
        }

        sub_1B7AE0BD0();
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v22, v23, v24, 16);
      }

      while (v16);
    }

    v25 = MEMORY[0x1E696AEC0];
    v29 = objc_msgSend_compoundPredicateType(v4, v26, v27, v28);
    v30 = sub_1B7B818FC(a1, v29);
    v33 = objc_msgSend_componentsJoinedByString_(v2, v31, v30, v32);
    a1 = objc_msgSend_stringWithFormat_(v25, v34, @"( %@)", v35, v33);
  }

  return a1;
}

uint64_t sub_1B7CF825C(uint64_t a1, void *a2)
{
  if (!sub_1B7CF7EAC(a1, a2))
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v4, @"Invalid predicate, unsupported constant %@", v5, a2);
    v11 = objc_msgSend_exceptionWithName_reason_userInfo_(v8, v10, 0, v9, 0);
    v12 = v11;

    objc_exception_throw(v11);
  }

  v6 = *(a1 + 32);

  return objc_msgSend_addObject_(v6, v4, a2, v5);
}

void sub_1B7CF82FC(uint64_t a1, const char *a2, NSObject *a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_count(*(a1 + 32), a2, a3, a4);
  v7 = 134218242;
  v8 = v6;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1B7AD5000, a3, OS_LOG_TYPE_ERROR, "Failed to donate %llu interactions: %@", &v7, 0x16u);
}

void sub_1B7CF83C4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Error donating intent interaction = %@", &v2, 0xCu);
}

void sub_1B7CF848C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v6, "void *NewsURLResolutionLibrary(void)", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v5, v9, v8, @"IMDCoreSpotlightIndexingManager+SharedWithYou.m", 46, @"%s", *a1);

  __break(1u);
}

void sub_1B7CF8598(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getNRURLResolutionManagerClass(void)_block_invoke", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v8, v7, @"IMDCoreSpotlightIndexingManager+SharedWithYou.m", 47, @"Unable to find class %s", "NRURLResolutionManager");

  __break(1u);
}

void sub_1B7CF8614(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getSLCollaborationHandshakeControllerClass(void)_block_invoke", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v8, v7, @"IMDCoreSpotlightIndexingManager+SharedWithYou.m", 50, @"Unable to find class %s", "SLCollaborationHandshakeController");

  __break(1u);
}

void sub_1B7CF8690(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v6, "void *SocialLayerLibrary(void)", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v5, v9, v8, @"IMDCoreSpotlightIndexingManager+SharedWithYou.m", 49, @"%s", *a1);

  __break(1u);
}

void sub_1B7CF8808(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "No CKBundleIDs found for URL with messageGUID: %@", &v2, 0xCu);
}

void sub_1B7CF8880(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 138412546;
  v3 = 0;
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Unable to archive collaboration Metadata %@, error %@", &v2, 0x16u);
}

void sub_1B7CF89C4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getLPLinkMetadataSharedWithYouTransformerClass(void)_block_invoke", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v8, v7, @"IMDSharedWithYouMetadataManager.m", 45, @"Unable to find class %s", "LPLinkMetadataSharedWithYouTransformer");

  __break(1u);
}

void sub_1B7CF8A40(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v6, "void *LinkPresentationLibrary(void)", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v5, v9, v8, @"IMDSharedWithYouMetadataManager.m", 44, @"%s", *a1);

  __break(1u);
}

void sub_1B7CF8AD4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_DEBUG, "Skipping donation of message %@ to SmartReplies due to age", &v2, 0xCu);
}

void sub_1B7CF8B4C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getSROSmartRepliesMessageClass(void)_block_invoke", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v8, v7, @"IMDSmartRepliesMessageDonationJob.m", 25, @"Unable to find class %s", "SROSmartRepliesMessage");

  __break(1u);
}

void sub_1B7CF8BC8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v6, "void *SmartRepliesLibrary(void)", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v5, v9, v8, @"IMDSmartRepliesMessageDonationJob.m", 22, @"%s", *a1);

  __break(1u);
}

void sub_1B7CF8C48(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getSROSmartRepliesSuggestionRequestClass(void)_block_invoke", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v8, v7, @"IMDSmartRepliesMessageDonationJob.m", 24, @"Unable to find class %s", "SROSmartRepliesSuggestionRequest");

  __break(1u);
}

void sub_1B7CF8CC4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getSROSmartRepliesManagerClass(void)_block_invoke", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v8, v7, @"IMDSmartRepliesMessageDonationJob.m", 23, @"Unable to find class %s", "SROSmartRepliesManager");

  __break(1u);
}

void sub_1B7CF8DA4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch client state: %@", &v2, 0xCu);
}

void sub_1B7CF8E30(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "[IMDCoreSpotlightIndexingManager init]", v5);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v8, v7, v6, @"IMDCoreSpotlightIndexingManager.m", 48, @"IMDCoreSpotlightIndexingManager called when spotlight refactor is disabled!");
}

void sub_1B7CF8EBC(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Failed to check if we should sanitize indexes, suspending reindexing: %@", &v2, 0xCu);
}

void sub_1B7CF8F34(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_FAULT, "Failed to fetch client state: %@", &v2, 0xCu);
}

void sub_1B7CF906C()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CF90A8()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CF90F8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "[IMDLegacyCoreSpotlightManager init]", v5);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v8, v7, v6, @"IMDLegacyCoreSpotlight.m", 1158, @"IMDLegacyCoreSpotlightManager called when spotlight refactor is enabled!");
}

void sub_1B7CF91C0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IMDLegacyCoreSpotlightManager setMessageGUIDUnderScrutiny:]";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "Invalid guid passed in. Skipping %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF9238(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IMDLegacyCoreSpotlightManager clearMessageGUIDFromScrutiny:]";
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "Invalid guid passed in. Skipping %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF93A8(void *a1, char *a2, NSObject *a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v10 = 134349826;
  v11 = objc_msgSend_count(a1, a2, a3, a4);
  v12 = 2050;
  v13 = objc_msgSend_count(a2, v7, v8, v9);
  v14 = 2112;
  v15 = a1;
  v16 = 2112;
  v17 = a2;
  _os_log_error_impl(&dword_1B7AD5000, a3, OS_LOG_TYPE_ERROR, "Not attempting to index malformed message/chat pair. message dict has %{public}lld entries, chat dict has %{public}lld entries. %@ %@", &v10, 0x2Au);
}

void sub_1B7CF9484()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CF9550(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  sub_1B7AE0B74(&dword_1B7AD5000, a2, a3, "Failed URL resolution with error %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1B7CF9638(_BYTE *a1, _BYTE *a2)
{
  sub_1B7B54408(a1, a2);
  sub_1B7B543FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_1B7CF966C(_BYTE *a1, _BYTE *a2)
{
  sub_1B7B54408(a1, a2);
  sub_1B7B543FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_1B7CF96A0(_BYTE *a1, _BYTE *a2)
{
  sub_1B7B54408(a1, a2);
  sub_1B7B543FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_1B7CF96D4(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = objc_msgSend_description(a2, a2, a3, a4);
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_1B7AD5000, a4, OS_LOG_TYPE_ERROR, "Failed to unarchive Collaboration Metadata: %@. Not indexing this item.", a1, 0xCu);
}

void sub_1B7CF974C(void *a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_description(a1, a2, a3, a4);
  sub_1B7AE0A98();
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Failed to obtain local proof of inclusion: %@", v6, 0xCu);
}

void sub_1B7CF9940()
{
  sub_1B7AE0A98();
  sub_1B7BA8AD8();
  sub_1B7B543FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1B7CF9A20()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7BA8AD8();
  _os_log_fault_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_FAULT, "Failed to serialize client state with error %@ client state %@", v1, 0x16u);
}

void sub_1B7CF9AC4()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  _os_log_fault_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_FAULT, "Failed to fetch client state: %@", v1, 0xCu);
}

void sub_1B7CF9C08(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getSROSmartRepliesManagerClass(void)_block_invoke", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v8, v7, @"IMDLegacyCoreSpotlight.m", 111, @"Unable to find class %s", "SROSmartRepliesManager");

  __break(1u);
}

void sub_1B7CF9C84(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v6, "void *SmartRepliesLibrary(void)", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v5, v9, v8, @"IMDLegacyCoreSpotlight.m", 110, @"%s", *a1);

  __break(1u);
}

void sub_1B7CF9D04(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getSROSmartRepliesMessageClass(void)_block_invoke", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v8, v7, @"IMDLegacyCoreSpotlight.m", 113, @"Unable to find class %s", "SROSmartRepliesMessage");

  __break(1u);
}

void sub_1B7CF9D80(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getSROSmartRepliesSuggestionRequestClass(void)_block_invoke", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v8, v7, @"IMDLegacyCoreSpotlight.m", 112, @"Unable to find class %s", "SROSmartRepliesSuggestionRequest");

  __break(1u);
}

void sub_1B7CF9DFC()
{
  sub_1B7BA8AD8();
  sub_1B7B543FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1B7CF9E98(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Failed to start accessing security scoped resource for %@", &v2, 0xCu);
}

void sub_1B7CF9F10(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Failed setting need reindexing with error %@", &v2, 0xCu);
}

void sub_1B7CF9F88()
{
  sub_1B7BAFD78();
  sub_1B7BAFD84(v0, v1, v2, v3);
  sub_1B7AE0BDC();
  sub_1B7AE0AE0(&dword_1B7AD5000, v4, v5, "Failed to delete %lu messages from Spotlight: %@", v6, v7, v8, v9);
}

void sub_1B7CF9FFC()
{
  sub_1B7BAFD78();
  sub_1B7BAFD84(v0, v1, v2, v3);
  sub_1B7AE0BDC();
  sub_1B7AE0AE0(&dword_1B7AD5000, v4, v5, "Failed to delete %lu transfers from Spotlight: %@", v6, v7, v8, v9);
}

void sub_1B7CFA070(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_ERROR, "Failed to delete chat %@ from Spotlight: %@", &v4, 0x16u);
}

void sub_1B7CFA0FC()
{
  sub_1B7BAFD78();
  sub_1B7BAFD84(v0, v1, v2, v3);
  sub_1B7AE0BDC();
  sub_1B7AE0AE0(&dword_1B7AD5000, v4, v5, "Failed adding %lu chats from CoreSpotlight with error %@", v6, v7, v8, v9);
}

void sub_1B7CFA170()
{
  sub_1B7BAFD78();
  sub_1B7BAFD84(v0, v1, v2, v3);
  sub_1B7AE0BDC();
  sub_1B7AE0AE0(&dword_1B7AD5000, v4, v5, "Failed adding %ld message GUIDs to Spotlight with error %@", v6, v7, v8, v9);
}

void sub_1B7CFA1E4()
{
  sub_1B7BAFD78();
  sub_1B7BAFD84(v0, v1, v2, v3);
  sub_1B7AE0BDC();
  sub_1B7AE0AE0(&dword_1B7AD5000, v4, v5, "Finished re-indexing %lu messages with error %@", v6, v7, v8, v9);
}

void sub_1B7CFA38C(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_1B7AD5000, a1, OS_LOG_TYPE_INFO, "IMDCoreSpotlightMessageBodyIndexer - Poison pill abort detected, crashing!", v2, 2u);
  }
}

void sub_1B7CFA4A0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v6, "void *DataDetectorsCoreLibrary(void)", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v5, v9, v8, @"IMDCoreSpotlightIndexHelpers.m", 76, @"%s", *a1);

  __break(1u);
}

void sub_1B7CFA534(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_clientState(a2, a2, a3, a4);
  LODWORD(v13) = 138412546;
  *(&v13 + 4) = a1;
  sub_1B7AE0B54();
  *v14 = v6;
  sub_1B7AE0AE0(&dword_1B7AD5000, v7, v8, "Failed to fetch client state with error %@ client state %@", v9, v10, v11, v12, v13, DWORD2(v13), *&v14[2]);
}

void sub_1B7CFA5D4(id *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_context(*a1, a2, a3, a4);
  v9 = objc_msgSend_oldestFullReindexMessageGUID(v5, v6, v7, v8);
  LODWORD(v16) = 138412546;
  *(&v16 + 4) = v9;
  sub_1B7AE0B54();
  *v17 = a2;
  sub_1B7AE0AE0(&dword_1B7AD5000, v10, v11, "Found no row ID for GUID %@ error %@", v12, v13, v14, v15, v16, DWORD2(v16), *&v17[2]);
}

void sub_1B7CFA684(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_clientState(a2, a2, a3, a4);
  LODWORD(v13) = 138412546;
  *(&v13 + 4) = a1;
  sub_1B7AE0B54();
  *v14 = v6;
  sub_1B7AE0AE0(&dword_1B7AD5000, v7, v8, "Failed to serialize client state with error %@ client state %@", v9, v10, v11, v12, v13, DWORD2(v13), *&v14[2]);
}

void sub_1B7CFA728(uint64_t a1, const char *a2, NSObject *a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = (a1 + 32);
  v7 = objc_msgSend_transactionID(*(a1 + 32), a2, a3, a4);
  v11 = objc_msgSend_index(*v6, v8, v9, v10);
  v14 = 138412802;
  v15 = v7;
  sub_1B7AE0B54();
  v16 = a2;
  v17 = v12;
  v18 = v13;
  _os_log_error_impl(&dword_1B7AD5000, a3, OS_LOG_TYPE_ERROR, "IMDCoreSpotlightIndexSearchableItems: indexing transaction %@ failed with error %@. Using Index %@", &v14, 0x20u);
}

void sub_1B7CFA8CC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getLPiTunesMediaSongMetadataClass(void)_block_invoke", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v8, v7, @"IMDCoreSpotlightRichLinkIndexer.m", 38, @"Unable to find class %s", "LPiTunesMediaSongMetadata");

  __break(1u);
}

void sub_1B7CFA948(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v6, "void *LinkPresentationLibrary(void)", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v5, v9, v8, @"IMDCoreSpotlightRichLinkIndexer.m", 36, @"%s", *a1);

  __break(1u);
}

void sub_1B7CFA9C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getLPiTunesMediaAlbumMetadataClass(void)_block_invoke", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v8, v7, @"IMDCoreSpotlightRichLinkIndexer.m", 39, @"Unable to find class %s", "LPiTunesMediaAlbumMetadata");

  __break(1u);
}

void sub_1B7CFAA44(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getLPiTunesMediaArtistMetadataClass(void)_block_invoke", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v8, v7, @"IMDCoreSpotlightRichLinkIndexer.m", 40, @"Unable to find class %s", "LPiTunesMediaArtistMetadata");

  __break(1u);
}

void sub_1B7CFAAC0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getLPiTunesMediaMusicVideoMetadataClass(void)_block_invoke", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v8, v7, @"IMDCoreSpotlightRichLinkIndexer.m", 41, @"Unable to find class %s", "LPiTunesMediaMusicVideoMetadata");

  __break(1u);
}

void sub_1B7CFAB3C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getLPiTunesMediaPodcastEpisodeMetadataClass(void)_block_invoke", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v8, v7, @"IMDCoreSpotlightRichLinkIndexer.m", 42, @"Unable to find class %s", "LPiTunesMediaPodcastEpisodeMetadata");

  __break(1u);
}

void sub_1B7CFABB8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getLPiTunesMediaPodcastMetadataClass(void)_block_invoke", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v8, v7, @"IMDCoreSpotlightRichLinkIndexer.m", 43, @"Unable to find class %s", "LPiTunesMediaPodcastMetadata");

  __break(1u);
}

void sub_1B7CFAC34(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getLPiTunesMediaTVEpisodeMetadataClass(void)_block_invoke", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v8, v7, @"IMDCoreSpotlightRichLinkIndexer.m", 44, @"Unable to find class %s", "LPiTunesMediaTVEpisodeMetadata");

  __break(1u);
}

void sub_1B7CFACB0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getLPiTunesMediaTVSeasonMetadataClass(void)_block_invoke", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v8, v7, @"IMDCoreSpotlightRichLinkIndexer.m", 45, @"Unable to find class %s", "LPiTunesMediaTVSeasonMetadata");

  __break(1u);
}

void sub_1B7CFAD2C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getLPiTunesMediaPlaylistMetadataClass(void)_block_invoke", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v8, v7, @"IMDCoreSpotlightRichLinkIndexer.m", 46, @"Unable to find class %s", "LPiTunesMediaPlaylistMetadata");

  __break(1u);
}

void sub_1B7CFADA8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getLPiTunesMediaMovieMetadataClass(void)_block_invoke", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v8, v7, @"IMDCoreSpotlightRichLinkIndexer.m", 47, @"Unable to find class %s", "LPiTunesMediaMovieMetadata");

  __break(1u);
}

void sub_1B7CFAE24(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getLPiTunesMediaMovieBundleMetadataClass(void)_block_invoke", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v8, v7, @"IMDCoreSpotlightRichLinkIndexer.m", 48, @"Unable to find class %s", "LPiTunesMediaMovieBundleMetadata");

  __break(1u);
}

void sub_1B7CFAEA0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getLPiTunesMediaRadioMetadataClass(void)_block_invoke", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v8, v7, @"IMDCoreSpotlightRichLinkIndexer.m", 52, @"Unable to find class %s", "LPiTunesMediaRadioMetadata");

  __break(1u);
}

void sub_1B7CFAF1C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getLPAppleTVMetadataClass(void)_block_invoke", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v8, v7, @"IMDCoreSpotlightRichLinkIndexer.m", 49, @"Unable to find class %s", "LPAppleTVMetadata");

  __break(1u);
}

void sub_1B7CFAF98(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getLPAppleNewsMetadataClass(void)_block_invoke", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v8, v7, @"IMDCoreSpotlightRichLinkIndexer.m", 50, @"Unable to find class %s", "LPAppleNewsMetadata");

  __break(1u);
}

void sub_1B7CFB014(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getLPMapMetadataClass(void)_block_invoke", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v8, v7, @"IMDCoreSpotlightRichLinkIndexer.m", 37, @"Unable to find class %s", "LPMapMetadata");

  __break(1u);
}

void sub_1B7CFB090(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getLPLinkMetadataPresentationTransformerClass(void)_block_invoke", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v8, v7, @"IMDCoreSpotlightRichLinkIndexer.m", 51, @"Unable to find class %s", "LPLinkMetadataPresentationTransformer");

  __break(1u);
}

void sub_1B7CFB10C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_messageGUIDs(*(a1 + 32), a2, a3, a4);
  objc_msgSend_count(v4, v5, v6, v7);
  sub_1B7AE0BDC();
  sub_1B7AE0AE0(&dword_1B7AD5000, v8, v9, "Error during selective reindexing of %ld messages: %@", v10, v11, v12, v13);
}

void sub_1B7CFB1A4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_chatGUIDs(*(a1 + 32), a2, a3, a4);
  objc_msgSend_count(v4, v5, v6, v7);
  sub_1B7AE0BDC();
  sub_1B7AE0AE0(&dword_1B7AD5000, v8, v9, "Error during selective reindexing of %ld chats: %@", v10, v11, v12, v13);
}

void sub_1B7CFB270()
{
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1B7CFB2E0()
{
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1B7CFB384()
{
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1B7CFB3F4()
{
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1B7CFB514(os_log_t log)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = 136446466;
  v2 = "[IMDSpotlightQueryProvider _validateSpotlightClientStateWithLastError:attempts:completion:]";
  v3 = 1024;
  v4 = 5;
  _os_log_fault_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_FAULT, "%{public}s Failed to inspect client state %d times - giving up", &v1, 0x12u);
}

void sub_1B7CFB5BC(void *a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_componentsJoinedByString_(a1, a2, @",", a4);
  v6 = 138412290;
  v7 = v5;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Timed out indexing messages! Unfinished jobs: %@", &v6, 0xCu);
}

void sub_1B7CFB6F4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 24);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_DEBUG, "Indexing is currently throttled: %{BOOL}d", v3, 8u);
}

void sub_1B7CFB774(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 40) + 8) + 24);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_DEBUG, "Indexing is currently throttled: %{BOOL}d", v3, 8u);
}

void sub_1B7CFB7F8(os_log_t log, double a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a2;
  _os_log_debug_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_DEBUG, "Scheduling next throttle timer for %f seconds from now", &v2, 0xCu);
}

void sub_1B7CFB888(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "+[IMDIndexingController sharedController]", v5);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v8, v7, v6, @"IMDIndexingController.m", 96, @"IMDIndexingController can only be accessed directly from IMDPersistenceAgent. Please use IMDIndexingController.queryProvider or IMDIndexingController.synchronousQueryProvider for process-agnostic access.");
}

void sub_1B7CFB914(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "+[IMDIndexingController sharedController]", v5);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v8, v7, v6, @"IMDIndexingController.m", 97, @"IMDIndexingController called when spotlight refactor is disabled!");
}

void sub_1B7CFB9DC(uint64_t a1, const char *a2, NSObject *a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_count(*(a1 + 32), a2, a3, a4);
  v7 = 134218242;
  v8 = v6;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1B7AD5000, a3, OS_LOG_TYPE_ERROR, "Failed to index %ld messages with error %@", &v7, 0x16u);
}

void sub_1B7CFBA7C(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "!!! Failed to prepare for reindexing with error %@ - still scheduling reindexing tasks", &v2, 0xCu);
}

void sub_1B7CFBB38(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CFBBE8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CFBC98(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CFBD48(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_schemaVersion(IMDLegacyRecordBridge, a2, a3, a4);
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_1B7CFBDE4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 80);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Migration failed, made it to version: %d", v3, 8u);
}

void sub_1B7CFBE60(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CFBF10()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CFBF4C()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CFBF88(uint64_t a1, _DWORD *a2)
{
  *a2 = 136315906;
  sub_1B7BE9224(a2, "results");
  sub_1B7BE9214(v2, "CFArrayRef IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesUpToGUIDOrLimitWithOptionalThreadIdentifier(CFArrayRef, CFArrayRef, CFStringRef, CFStringRef, Boolean, Boolean, int64_t)");
  sub_1B7BE91E8(v3, v4, 1252);
  sub_1B7BE91FC(&dword_1B7AD5000, v5, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6);
}

void sub_1B7CFBFE4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CFC094(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"history query:", a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CFC144(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"history query: rowID should be > 0", a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CFC1F4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CFC2A4()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CFC2E0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CFC390(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"Paged history query with numberOfMessagesBefore: %lld numberOfMessagesAfter: %lld", a4, *(a1 + 40), *(a1 + 48));
  v6 = 136315906;
  v7 = "firstLoadResults";
  v8 = 2080;
  v9 = "CFArrayRef IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifier(CFArrayRef, CFArrayRef, CFStringRef, int64_t, int64_t, CFStringRef, Boolean *, Boolean *)_block_invoke_2";
  v10 = 1024;
  sub_1B7AE0B60();
  sub_1B7BE91FC(&dword_1B7AD5000, a2, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", &v6);
}

void sub_1B7CFC45C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"Paged history query: rowID should be > 0", a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CFC50C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CFC5BC(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"Paged history query with numberOfMessagesAfter: %lld for second load", a4, *(a1 + 40));
  v6 = 136315906;
  v7 = "secondLoadResults";
  v8 = 2080;
  v9 = "CFArrayRef IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifier(CFArrayRef, CFArrayRef, CFStringRef, int64_t, int64_t, CFStringRef, Boolean *, Boolean *)_block_invoke_2";
  v10 = 1024;
  sub_1B7AE0B60();
  sub_1B7BE91FC(&dword_1B7AD5000, a2, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", &v6);
}

void sub_1B7CFC688(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"Paged history query: rowID should be > 0 for second load", a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CFC738(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CFC7E8()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CFC824()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CFC860(uint64_t a1, _DWORD *a2)
{
  *a2 = 136315906;
  sub_1B7BE9224(a2, "query");
  sub_1B7BE9214(v2, "IMDMessageRecordRef IMDMessageRecordCopyMessageMatchingBodyStringWithHandleSkippingServicesSkippingGUIDs(CFStringRef, CFStringRef, CFArrayRef, CFArrayRef, NSTimeInterval)");
  sub_1B7BE91E8(v3, v4, 2139);
  sub_1B7BE91FC(&dword_1B7AD5000, v5, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6);
}

void sub_1B7CFC8BC(uint64_t a1, _DWORD *a2)
{
  *a2 = 136315906;
  sub_1B7BE9224(a2, "query");
  sub_1B7BE9214(v2, "IMDMessageRecordRef IMDMessageRecordCopyMessageMatchingBodyStringWithHandleMatchingServiceMatchingSOSSkippingGUID(CFStringRef, CFStringRef, CFStringRef, BOOL, CFStringRef, NSTimeInterval)");
  sub_1B7BE91E8(v3, v4, 2189);
  sub_1B7BE91FC(&dword_1B7AD5000, v5, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6);
}

void sub_1B7CFC918()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CFC954()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CFC990()
{
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1B7CFCA00()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CFCA3C()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CFCAF0(id *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_localizedDescription(*a1, a2, a3, a4);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1B7CFCB74()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CFCBB0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CFCC74(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CFCD24(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7BFDC7C();
  sub_1B7BFDC6C();
  sub_1B7BFDC58();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x30u);
}

void sub_1B7CFCDE0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7BFDC7C();
  sub_1B7BFDC6C();
  sub_1B7BFDC58();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x30u);
}

void sub_1B7CFCE9C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CFCF4C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7BFDC7C();
  sub_1B7BFDC6C();
  sub_1B7BFDC58();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x30u);
}

void sub_1B7CFD008(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CFD0B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CFD168(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CFD218(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CFD2C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CFD378(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7BFDC7C();
  sub_1B7BFDC6C();
  sub_1B7BFDC58();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x30u);
}

void sub_1B7CFD434(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7BFDC7C();
  sub_1B7BFDC6C();
  sub_1B7BFDC58();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x30u);
}

void sub_1B7CFD4F0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CFD5A0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728, a4);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1B7CFD650(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "CustomFunctionBeforeDeleteChatDeleteChatBackground: %@", &v2, 0xCu);
}

void sub_1B7CFD6C8()
{
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1B7CFD738()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  _os_log_debug_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_DEBUG, "Getting attachment record for attachment guid %@", v1, 0xCu);
}

void sub_1B7CFD7AC()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CFD7E8()
{
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}