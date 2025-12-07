uint64_t sub_228299B6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22829BED4(0);
  v34 = v4;
  result = sub_228393340();
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

      sub_228393520();
      sub_2283920B0();
      result = sub_228393570();
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

uint64_t sub_228299E08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22829C020(0);
  result = sub_228393340();
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
      sub_228393520();
      MEMORY[0x22AAB70D0](v20);
      result = sub_228393570();
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

uint64_t sub_22829A07C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22829BF6C(0, &qword_27D826D58, sub_22829BFD0);
  v34 = v4;
  result = sub_228393340();
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

      sub_228393520();
      sub_2283920B0();
      result = sub_228393570();
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

uint64_t sub_22829A334(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Dosage(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_22829BF6C(0, &qword_27D824298, type metadata accessor for Dosage);
  v40 = v4;
  result = sub_228393340();
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
        sub_2281A9424(v28, v41);
      }

      else
      {
        sub_2282112C8(v28, v41);
      }

      sub_228393520();
      sub_2283920B0();
      result = sub_228393570();
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
      result = sub_2281A9424(v41, *(v9 + 56) + v27 * v17);
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

uint64_t sub_22829A680(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22829BC4C(0);
  result = sub_228393340();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_228392C50();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_22829A8D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22838EF60();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_22829BE38(0);
  v45 = v4;
  result = sub_228393340();
  v11 = result;
  if (*(v9 + 16))
  {
    v49 = v8;
    v41 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v42 = (v6 + 16);
    v43 = v6;
    v46 = (v6 + 32);
    v18 = result + 64;
    v44 = v9;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v22 = (v16 - 1) & v16;
LABEL_15:
      v25 = v21 | (v12 << 6);
      v48 = v22;
      v26 = *(v6 + 72);
      v27 = *(v9 + 48) + v26 * v25;
      if (v45)
      {
        (*v46)(v49, v27, v5);
      }

      else
      {
        (*v42)(v49, v27, v5);
      }

      v28 = (*(v9 + 56) + 32 * v25);
      v29 = v28[3];
      v30 = v28[2];
      v47 = v28[1];
      v31 = *v28;
      sub_228299288(&unk_280DDCE00, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
      result = sub_228391F60();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
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
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v46)(*(v11 + 48) + v26 * v19, v49, v5);
      v20 = (*(v11 + 56) + 32 * v19);
      *v20 = v31;
      v16 = v48;
      v20[1] = v47;
      v20[2] = v30;
      v20[3] = v29;
      ++*(v11 + 16);
      v6 = v43;
      v9 = v44;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_22829ACB8(char a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_2281A7870(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_22829969C(v13, a3 & 1);
      result = sub_2281A7870(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_16:
        sub_22817A958(0, &qword_27D824240, 0x277CCDA00);
        result = sub_2283934A0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_22829AFE8();
      result = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + result) = a1 & 1;
    return result;
  }

  v18[(result >> 6) + 8] |= 1 << result;
  *(v18[6] + 8 * result) = a2;
  *(v18[7] + result) = a1 & 1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18[2] = v20;

  return a2;
}

uint64_t sub_22829AE24(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2281A76E0(a2, a3);
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
      sub_22829A07C(v16, a4 & 1);
      v11 = sub_2281A76E0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_2283934A0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22829B54C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
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

unint64_t sub_22829AFA0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

id sub_22829AFE8()
{
  v1 = v0;
  sub_22829BBA8(0, &qword_27D824248, MEMORY[0x277D84460]);
  v2 = *v0;
  v3 = sub_228393330();
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
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + v17) = v19;
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

id sub_22829B154()
{
  v1 = v0;
  sub_2281A9A64(0);
  v2 = *v0;
  v3 = sub_228393330();
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

void *sub_22829B2A8()
{
  v1 = v0;
  sub_22829BED4(0);
  v2 = *v0;
  v3 = sub_228393330();
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

void *sub_22829B40C()
{
  v1 = v0;
  sub_22829C020(0);
  v2 = *v0;
  v3 = sub_228393330();
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

void *sub_22829B54C()
{
  v1 = v0;
  sub_22829BF6C(0, &qword_27D826D58, sub_22829BFD0);
  v2 = *v0;
  v3 = sub_228393330();
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

void *sub_22829B6CC()
{
  v1 = v0;
  v2 = type metadata accessor for Dosage(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22829BF6C(0, &qword_27D824298, type metadata accessor for Dosage);
  v4 = *v0;
  v5 = sub_228393330();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_2282112C8(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_2281A9424(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

  return result;
}

void *sub_22829B90C()
{
  v1 = v0;
  v36 = sub_22838EF60();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22829BE38(0);
  v3 = *v0;
  v4 = sub_228393330();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = (v3 + 64);
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, v31, 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v37 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    v34 = v3;
    v15 = v35;
    if (v13)
    {
      do
      {
        v16 = __clz(__rbit64(v13));
        v39 = (v13 - 1) & v13;
LABEL_17:
        v19 = v16 | (v9 << 6);
        v20 = v38;
        v21 = *(v38 + 72) * v19;
        v22 = v36;
        (*(v38 + 16))(v15, *(v3 + 48) + v21, v36);
        v19 *= 32;
        v23 = (*(v3 + 56) + v19);
        v24 = *v23;
        v25 = v23[1];
        v26 = v23[2];
        v27 = v23[3];
        v28 = v37;
        result = (*(v20 + 32))(*(v37 + 48) + v21, v15, v22);
        v29 = (*(v28 + 56) + v19);
        *v29 = v24;
        v29[1] = v25;
        v29[2] = v26;
        v29[3] = v27;
        v3 = v34;
        v13 = v39;
      }

      while (v39);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v37;
        goto LABEL_21;
      }

      v18 = *(v31 + v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

void sub_22829BBA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_22817A958(255, &qword_27D824240, 0x277CCDA00);
    v7 = sub_2281A89C4(&qword_27D827840, &qword_27D824240, 0x277CCDA00);
    v8 = a3(a1, v6, MEMORY[0x277D839B0], v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_22829BC4C(uint64_t a1)
{
  if (!qword_27D826D40)
  {
    sub_22817A958(255, &qword_27D824240, 0x277CCDA00);
    type metadata accessor for HKConceptAuthorizationStatus(255);
    sub_2281A89C4(&qword_27D827840, &qword_27D824240, 0x277CCDA00);
    v1 = sub_228393370();
    if (!v2)
    {
      atomic_store(v1, &qword_27D826D40);
    }
  }
}

void sub_22829BCF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_22829BD5C(uint64_t a1)
{
  if (!qword_27D826D48)
  {
    sub_228391130();
    sub_22829BCF8(255, &qword_27D824560, type metadata accessor for ScheduleDataSource.DoseItem, MEMORY[0x277D83940]);
    sub_228299288(&qword_27D8242E0, MEMORY[0x277D11768], MEMORY[0x277D11770]);
    v1 = sub_228393370();
    if (!v2)
    {
      atomic_store(v1, &qword_27D826D48);
    }
  }
}

void sub_22829BE38(uint64_t a1)
{
  if (!qword_280DDB910)
  {
    sub_22838EF60();
    sub_228299288(&unk_280DDCE00, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
    v1 = sub_228393370();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDB910);
    }
  }
}

void sub_22829BED4(uint64_t a1)
{
  if (!qword_27D826D50)
  {
    sub_22829BCF8(255, &qword_27D823EA0, MEMORY[0x277D11660], MEMORY[0x277D83940]);
    v1 = sub_228393370();
    if (!v2)
    {
      atomic_store(v1, &qword_27D826D50);
    }
  }
}

void sub_22829BF6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228393370();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22829BFD0()
{
  if (!qword_27D823EC0)
  {
    v0 = sub_228392240();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823EC0);
    }
  }
}

void sub_22829C020(uint64_t a1)
{
  if (!qword_27D826D60)
  {
    type metadata accessor for HKDrugInteractionSeverityLevel(255);
    sub_228299288(&qword_27D826D68, type metadata accessor for HKDrugInteractionSeverityLevel, &unk_228396820);
    v1 = sub_228393370();
    if (!v2)
    {
      atomic_store(v1, &qword_27D826D60);
    }
  }
}

void sub_22829C0BC(uint64_t a1)
{
  if (!qword_27D827820)
  {
    sub_22829C124(255);
    v1 = sub_228391880();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827820);
    }
  }
}

void sub_22829C124(uint64_t a1)
{
  if (!qword_27D826D70)
  {
    sub_22829BBA8(255, &qword_27D827830, MEMORY[0x277D834F8]);
    v1 = sub_228392F00();
    if (!v2)
    {
      atomic_store(v1, &qword_27D826D70);
    }
  }
}

uint64_t sub_22829C19C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  return v1;
}

uint64_t InteractionCriticalAlertDataSource.__allocating_init(listManager:healthStore:viewController:analyticsManager:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v22 = a4;
  sub_2282A21B0(0, &qword_280DDBBD8, MEMORY[0x277CBCED0]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = qword_280DDBF38;
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22818DF04(0, &qword_280DDBB38, &qword_280DDB9D0, 0x277D114F0);
  sub_228391920();
  (*(v9 + 32))(v12 + v13, v11, v8);
  *(v12 + qword_280DDBF10) = 0;
  *(v12 + qword_27D826D78) = 0;
  *(v12 + qword_280DDBF18) = 0;
  *(v12 + qword_27D826D80) = 0;
  *(v12 + qword_280DDBF28) = MEMORY[0x277D84FA0];
  *(v12 + qword_27D826D88) = a1;
  *(v12 + qword_280DDBF30) = a2;
  swift_unknownObjectWeakAssign();
  *(v12 + qword_27D826D90) = v22;

  v14 = a2;

  v15 = sub_22838F920();

  v16 = sub_22829CE10();
  v17 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_22829D99C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22829DA98;
  aBlock[3] = &block_descriptor_18;
  v18 = _Block_copy(aBlock);

  [v16 allDismissedDrugInteractionsWithCompletion_];
  _Block_release(v18);

  sub_22829DB54();
  sub_22838F910();
  sub_22838FCD0();

  v19 = sub_22838FF20();

  [v19 registerObserver_];

  return v15;
}

uint64_t InteractionCriticalAlertDataSource.init(listManager:healthStore:viewController:analyticsManager:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  sub_2282A21B0(0, &qword_280DDBBD8, MEMORY[0x277CBCED0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = aBlock - v12;
  swift_unknownObjectWeakInit();
  v14 = qword_280DDBF38;
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22818DF04(0, &qword_280DDBB38, &qword_280DDB9D0, 0x277D114F0);
  sub_228391920();
  (*(v11 + 32))(v4 + v14, v13, v10);
  *(v4 + qword_280DDBF10) = 0;
  *(v4 + qword_27D826D78) = 0;
  *(v4 + qword_280DDBF18) = 0;
  *(v4 + qword_27D826D80) = 0;
  *(v4 + qword_280DDBF28) = MEMORY[0x277D84FA0];
  *(v4 + qword_27D826D88) = a1;
  *(v4 + qword_280DDBF30) = a2;
  swift_unknownObjectWeakAssign();
  *(v4 + qword_27D826D90) = a4;

  v15 = a2;

  v16 = sub_22838F920();

  v17 = sub_22829CE10();
  v18 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_2282A2A70;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22829DA98;
  aBlock[3] = &block_descriptor_5_0;
  v19 = _Block_copy(aBlock);

  [v17 allDismissedDrugInteractionsWithCompletion_];
  _Block_release(v19);

  sub_22829DB54();
  sub_22838F910();
  sub_22838FCD0();

  v20 = sub_22838FF20();

  [v20 registerObserver_];

  return v16;
}

uint64_t sub_22829C888()
{
  MEMORY[0x22AAB7C80](v0 + qword_280DDBF20);

  v1 = qword_280DDBF38;
  sub_2282A21B0(0, &qword_280DDBBD8, MEMORY[0x277CBCED0]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

void *InteractionCriticalAlertDataSource.deinit()
{
  v1 = qword_280DDBF28;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_228393080();
    sub_228391820();
    sub_2282A2920(&qword_27D824180, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    result = sub_2283924C0();
    v5 = v21;
    v4 = v22;
    v6 = v23;
    v7 = v24;
    v8 = v25;
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);
    result = swift_bridgeObjectRetain_n();
    v7 = 0;
    v5 = v2;
  }

  if (v5 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v7;
    v13 = v8;
    v14 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
LABEL_18:
      sub_228176F04(v5);

      v17 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();
      MEMORY[0x22AAB7C80](v17 + qword_280DDBF20);

      v18 = qword_280DDBF38;
      sub_2282A21B0(0, &qword_280DDBBD8, MEMORY[0x277CBCED0]);
      (*(*(v19 - 8) + 8))(v17 + v18, v19);

      return v17;
    }

    while (1)
    {
      sub_228391810();

      v7 = v14;
      v8 = v15;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_228393100())
      {
        sub_228391820();
        swift_dynamicCast();
        v14 = v7;
        v15 = v8;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v6 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t InteractionCriticalAlertDataSource.__deallocating_deinit()
{
  InteractionCriticalAlertDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22829CD18(uint64_t a1, uint64_t a2)
{
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390040();
  v6 = [objc_opt_self() systemBackgroundColor];
  sub_228390050();
  v7 = sub_2283900C0();
  (*(v3 + 8))(v5, v2);
  return v7;
}

id sub_22829CE38(uint64_t *a1, Class *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(*a2) initWithHealthStore_];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void *sub_22829CEB4()
{
  v1 = qword_27D826D80;
  if (*(v0 + qword_27D826D80))
  {
    v2 = *(v0 + qword_27D826D80);
  }

  else
  {
    v3 = *(v0 + qword_280DDBF30);
    sub_228390890();
    v4 = v3;
    v5 = v0;
    sub_228390880();
    sub_228390830();

    sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
    sub_2283925F0();
    sub_2283907E0();
    swift_allocObject();
    v6 = sub_228390700();
    type metadata accessor for MedicationsInteractionEngine();
    swift_allocObject();
    v2 = sub_228191FE8(v4, v6);

    *(v5 + v1) = v2;
  }

  return v2;
}

uint64_t sub_22829CFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_2282A2098(0, &qword_280DDBC28, sub_22827A0FC, MEMORY[0x277CBCEA8]);
  swift_allocObject();

  sub_2283918F0();
  sub_2282A2868();
  v9 = sub_228391990();

  *a4 = v9;
  return result;
}

void sub_22829D0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = sub_22829CE24();

  sub_2282B96E4(v10);

  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  sub_22818C470(&qword_280DDB9D8, &qword_280DDB9E0, 0x277D115B8, MEMORY[0x277D85378]);
  v11 = sub_228392470();

  if (a5)
  {
    sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
    sub_22818C470(&qword_280DDB958, &qword_280DDB960, 0x277CCABB0, MEMORY[0x277D85378]);
    a5 = sub_228392470();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = sub_2282A28F0;
  *(v12 + 24) = v8;
  v14[4] = sub_2282A28FC;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_228276010;
  v14[3] = &block_descriptor_50;
  v13 = _Block_copy(v14);

  [v9 interactionResultsForMedications:v11 lifestyleFactors:a5 completion:v13];
  _Block_release(v13);
}

void sub_22829D320(uint64_t a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 1);
  }

  else if (a1)
  {
    v6 = sub_2282B9214(a1);
    a3(v6, 0);
  }

  else
  {
    v7 = sub_2282760F4(MEMORY[0x277D84F90]);
    a3(v7, 0);
  }
}

uint64_t sub_22829D3FC()
{
  sub_228241B70();
  result = sub_2283915B0();
  if (result >= 1)
  {
    return sub_228390FE0();
  }

  return result;
}

uint64_t sub_22829D44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_228241B70();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283915D0();

  if (sub_2283915B0() < 1)
  {

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    sub_228390FE0();
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_22829D598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_228391DC0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_228391DF0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v19 = v9;
    if (a2)
    {
      sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
      v15 = sub_228392790();
      v24 = sub_2282A2A50;
      v25 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v21 = 1107296256;
      v16 = &block_descriptor_62;
    }

    else
    {
      sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
      if (a1)
      {

        v15 = sub_228392790();
        v17 = swift_allocObject();
        *(v17 + 16) = v14;
        *(v17 + 24) = a1;
        v24 = sub_2282A2A1C;
        v25 = v17;
        aBlock = MEMORY[0x277D85DD0];
        v21 = 1107296256;
        v16 = &block_descriptor_59;
      }

      else
      {
        v15 = sub_228392790();
        v24 = sub_2282A2904;
        v25 = v14;
        aBlock = MEMORY[0x277D85DD0];
        v21 = 1107296256;
        v16 = &block_descriptor_53;
      }
    }

    v22 = sub_228191E9C;
    v23 = v16;
    v18 = _Block_copy(&aBlock);

    sub_228391DE0();
    aBlock = MEMORY[0x277D84F90];
    sub_2282A2920(&qword_280DDCF10, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_2282A2968(0, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_228216D44();
    sub_228393030();
    MEMORY[0x22AAB6340](0, v12, v8, v18);
    _Block_release(v18);

    (*(v6 + 8))(v8, v5);
    return (*(v10 + 8))(v12, v19);
  }

  return result;
}

uint64_t sub_22829D9A4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_228391970();
}

uint64_t sub_22829DA1C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_228391970();
}

uint64_t sub_22829DA98(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_22817A958(0, &qword_280DDB9D0, 0x277D114F0);
    v4 = sub_2283921A0();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22829DB54()
{
  sub_2282A2968(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v86 = &v59 - v1;
  sub_2282A21B0(0, &qword_280DDBBF8, MEMORY[0x277CBCEC0]);
  v3 = *(v2 - 8);
  v84 = v2;
  v85 = v3;
  MEMORY[0x28223BE20](v2);
  v82 = &v59 - v4;
  sub_22824E8E4(0);
  v59 = v5;
  v60 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228279EA8(0);
  v64 = v8;
  v65 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228279FF0(0);
  v68 = v11;
  v69 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v61 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22827A27C(0);
  v14 = v13;
  v67 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v63 = &v59 - v18;
  sub_2282A2414(0, &qword_27D826DA0, sub_22827A27C, sub_2282A1DA4);
  v20 = *(v19 - 8);
  v72 = v19;
  v73 = v20;
  MEMORY[0x28223BE20](v19);
  v62 = &v59 - v21;
  sub_2282A1DD8(0);
  v75 = v22;
  v78 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v66 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282A1FAC(0);
  v25 = *(v24 - 8);
  v76 = v24;
  v77 = v25;
  MEMORY[0x28223BE20](v24);
  v71 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282A2414(0, &qword_27D826DE0, sub_2282A1FAC, sub_2282A2484);
  v28 = *(v27 - 8);
  v79 = v27;
  v80 = v28;
  MEMORY[0x28223BE20](v27);
  v70 = &v59 - v29;
  sub_2282A24B8(0);
  v81 = v30;
  v83 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v74 = &v59 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_2283906C0();
  v32 = MEMORY[0x277D77BE8];
  sub_22824EB00(0, &qword_27D824108, MEMORY[0x277D77BE8]);
  sub_22818DF04(0, &qword_280DDBB50, &qword_280DDB9E0, 0x277D115B8);
  sub_228279FA0(&qword_27D827D00, &qword_27D824108, v32);
  sub_2283919A0();

  v33 = sub_22829CEB4()[5];

  v87 = v33;
  sub_22824EB00(0, &qword_27D825DC8, sub_2281930F4);
  sub_2282A2920(&qword_27D825DD0, sub_22824E8E4, MEMORY[0x277CBCB10]);
  sub_228279FA0(&qword_27D825DD8, &qword_27D825DC8, sub_2281930F4);
  v34 = v59;
  sub_2283919E0();

  (*(v60 + 8))(v7, v34);
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = sub_2282A2640;
  *(v36 + 24) = v35;
  sub_2283917E0();
  v37 = MEMORY[0x277CBCD88];
  sub_2282A2098(0, &qword_280DDBC70, sub_22827A0FC, MEMORY[0x277CBCD88]);
  sub_2282A1CE8();
  sub_2282A1D1C();
  v38 = v61;
  v39 = v64;
  sub_228391AF0();

  (*(v65 + 8))(v10, v39);
  sub_22818DF04(0, &qword_280DDBB68, &qword_280DDB9F0, 0x277D11550);
  sub_2282A2920(&qword_27D8265F0, sub_228279FF0, MEMORY[0x277CBCCE0]);
  v40 = v68;
  sub_2283919A0();
  (*(v69 + 8))(v38, v40);
  v41 = v63;
  sub_2283916C0();
  v42 = *(v67 + 8);
  v42(v17, v14);
  v87 = MEMORY[0x277D84F90];
  sub_2282A1DA4();
  v43 = v62;
  sub_2283919B0();
  v42(v41, v14);
  swift_beginAccess();
  sub_2282A21B0(0, &qword_280DDBBD8, MEMORY[0x277CBCED0]);
  v44 = v82;
  sub_228391930();
  swift_endAccess();
  sub_2282A1EB0();
  sub_2282A1F38();
  v45 = v66;
  v46 = v72;
  v47 = v84;
  sub_2283919E0();
  (*(v85 + 8))(v44, v47);
  (*(v73 + 8))(v43, v46);
  sub_2283917E0();
  sub_2282A2098(0, &qword_280DDBC80, sub_2282A2124, v37);
  sub_2282A22D0();
  sub_2282A2304();
  v48 = v71;
  v49 = v75;
  sub_228391AF0();
  (*(v78 + 8))(v45, v49);
  sub_2282A2484();
  v87 = 0;
  v88 = 0;
  v50 = v70;
  v51 = v76;
  sub_2283919B0();
  (*(v77 + 8))(v48, v51);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v52 = sub_228392790();
  v87 = v52;
  v53 = sub_228392730();
  v54 = v86;
  (*(*(v53 - 8) + 56))(v86, 1, 1, v53);
  sub_2282A25B8();
  sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78, MEMORY[0x277D85228]);
  v55 = v74;
  v56 = v79;
  sub_228391A70();
  sub_2281A16F0(v54);

  (*(v80 + 8))(v50, v56);
  swift_allocObject();
  swift_weakInit();
  sub_2282A2920(&qword_27D826E00, sub_2282A24B8, MEMORY[0x277CBCD60]);
  v57 = v81;
  sub_228391AC0();

  (*(v83 + 8))(v55, v57);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_22829E914(unint64_t a1, __objc2_class **a2, uint64_t a3)
{
  sub_2282A2968(0, &qword_280DDBC50, sub_22827A0FC, MEMORY[0x277CBCE78]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  sub_2282A2098(0, &qword_280DDB838, sub_22827A0FC, MEMORY[0x277CBCF38]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  sub_22827C090(0);
  v16 = v15;
  v36 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v35 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    v37 = MEMORY[0x277D84F90];
    if (a1 >> 62)
    {
      goto LABEL_18;
    }

    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v16; v19; i = v16)
    {
      v32 = a2;
      v20 = 0;
      v16 = a1 & 0xFFFFFFFFFFFFFF8;
      a2 = &off_2785F4000;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x22AAB6D80](v20, a1);
        }

        else
        {
          if (v20 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v21 = *(a1 + 8 * v20 + 32);
        }

        v22 = v21;
        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v24 = [v21 firstOntologyCoding];
        if (v24)
        {

          sub_228393210();
          sub_228393250();
          sub_228393260();
          sub_228393220();
        }

        else
        {
        }

        ++v20;
        if (v23 == v19)
        {
          v25 = v37;
          a2 = v32;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v19 = sub_2283930D0();
    }

    v25 = MEMORY[0x277D84F90];
LABEL_20:
    v27 = swift_allocObject();
    v27[2] = v33;
    v27[3] = v25;
    v27[4] = a2;
    sub_2282A2098(0, &qword_280DDBC70, sub_22827A0FC, MEMORY[0x277CBCD88]);
    sub_2282A1D1C();

    v28 = v35;
    sub_228391900();
    sub_2282A2920(&qword_280DDBC10, sub_22827C090, MEMORY[0x277CBCEB8]);
    v29 = i;
    v26 = sub_228391990();

    (*(v36 + 8))(v28, v29);
  }

  else
  {
    v37 = 0;
    sub_22827A0FC(0);
    sub_2283918C0();
    sub_2281810DC(0, &qword_280DDB860, MEMORY[0x277D84948]);
    sub_2283918A0();
    (*(v7 + 8))(v9, v6);
    sub_2282A27D4();
    v26 = sub_228391990();
    (*(v12 + 8))(v14, v11);
  }

  return v26;
}

void sub_22829EDFC(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59[1] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v59[0] = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_61:
    v4 = sub_2283930D0();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v45 = v3;
      v46 = a2;
      v5 = 0;
      v44 = 0;
      v53 = v3 & 0xFFFFFFFFFFFFFF8;
      v54 = v3 & 0xC000000000000001;
      v52 = v3 + 32;
      v47 = v4;
      while (1)
      {
        if (v54)
        {
          v6 = MEMORY[0x22AAB6D80](v5, v45);
          v7 = __OFADD__(v5++, 1);
          if (v7)
          {
            goto LABEL_59;
          }
        }

        else
        {
          if (v5 >= *(v53 + 16))
          {
            goto LABEL_60;
          }

          v6 = *(v52 + 8 * v5);
          v7 = __OFADD__(v5++, 1);
          if (v7)
          {
            goto LABEL_59;
          }
        }

        v55 = v6;
        v8 = [v6 interactions];
        sub_22817A958(0, &qword_280DDBA10, 0x277D11518);
        sub_22818C470(&qword_280DDBA08, &qword_280DDBA10, 0x277D11518, MEMORY[0x277D85378]);
        v9 = sub_228392480();

        if ((v9 & 0xC000000000000001) != 0)
        {
          a2 = MEMORY[0x277D84FA0];
          v58 = MEMORY[0x277D84FA0];
          sub_228393080();
          for (i = sub_228393100(); i; i = sub_228393100())
          {
            while (1)
            {
              v56 = i;
              swift_dynamicCast();
              v12 = [v57 severity];
              v13 = [v12 severityLevel];

              v14 = v57;
              if (v13 == 1)
              {
                break;
              }

              i = sub_228393100();
              if (!i)
              {
                goto LABEL_26;
              }
            }

            v15 = *(a2 + 16);
            if (*(a2 + 24) <= v15)
            {
              sub_2282D7554(v15 + 1);
            }

            a2 = v58;
            v3 = v14;
            v16 = sub_228392C50();
            v17 = a2 + 56;
            v18 = -1 << *(a2 + 32);
            v19 = v16 & ~v18;
            v20 = v19 >> 6;
            if (((-1 << v19) & ~*(a2 + 56 + 8 * (v19 >> 6))) != 0)
            {
              v21 = __clz(__rbit64((-1 << v19) & ~*(a2 + 56 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v22 = 0;
              v23 = (63 - v18) >> 6;
              do
              {
                if (++v20 == v23 && (v22 & 1) != 0)
                {
                  __break(1u);
                  goto LABEL_58;
                }

                v24 = v20 == v23;
                if (v20 == v23)
                {
                  v20 = 0;
                }

                v22 |= v24;
                v25 = *(v17 + 8 * v20);
              }

              while (v25 == -1);
              v21 = __clz(__rbit64(~v25)) + (v20 << 6);
            }

            *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
            *(*(a2 + 48) + 8 * v21) = v14;
            ++*(a2 + 16);
          }

LABEL_26:

          if ((a2 & 0xC000000000000001) == 0)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v26 = *(v9 + 32);
          v27 = ((1 << v26) + 63) >> 6;
          if ((v26 & 0x3Fu) <= 0xD)
          {
            goto LABEL_29;
          }

          if (swift_stdlib_isStackAllocationSafe())
          {

LABEL_29:
            v48 = &v44;
            v49 = v27;
            MEMORY[0x28223BE20](v10);
            v50 = &v44 - ((v28 + 15) & 0x3FFFFFFFFFFFFFF0);
            bzero(v50, v28);
            v51 = 0;
            a2 = 0;
            v3 = v9 + 56;
            v29 = 1 << *(v9 + 32);
            if (v29 < 64)
            {
              v30 = ~(-1 << v29);
            }

            else
            {
              v30 = -1;
            }

            v31 = v30 & *(v9 + 56);
            v32 = (v29 + 63) >> 6;
            while (v31)
            {
              v33 = __clz(__rbit64(v31));
              v31 &= v31 - 1;
LABEL_40:
              v36 = v33 | (a2 << 6);
              v37 = *(*(v9 + 48) + 8 * v36);
              v38 = [v37 severity];
              v39 = [v38 severityLevel];

              if (v39 == 1)
              {
                *&v50[(v36 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v36;
                v7 = __OFADD__(v51++, 1);
                if (v7)
                {
                  __break(1u);
                }
              }
            }

            v34 = a2;
            while (1)
            {
              a2 = v34 + 1;
              if (__OFADD__(v34, 1))
              {
                break;
              }

              if (a2 >= v32)
              {
                a2 = sub_22827AE4C(v50, v49, v51, v9);
                goto LABEL_45;
              }

              v35 = *(v3 + 8 * a2);
              ++v34;
              if (v35)
              {
                v33 = __clz(__rbit64(v35));
                v31 = (v35 - 1) & v35;
                goto LABEL_40;
              }
            }

LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

          v40 = swift_slowAlloc();

          v41 = v44;
          v42 = sub_22827A904(v40, v27, v9, sub_2282A2A74, 0);
          v44 = v41;
          if (v41)
          {

            swift_bridgeObjectRelease_n();
            MEMORY[0x22AAB7B80](v40, -1, -1);
            __break(1u);
            return;
          }

          a2 = v42;
          swift_bridgeObjectRelease_n();
          MEMORY[0x22AAB7B80](v40, -1, -1);
LABEL_45:
          v4 = v47;
          if ((a2 & 0xC000000000000001) == 0)
          {
LABEL_46:
            v3 = *(a2 + 16);
            goto LABEL_47;
          }
        }

        v3 = sub_2283930D0();
LABEL_47:

        if (v3)
        {
          v3 = v59;
          sub_228393210();
          a2 = *(v59[0] + 16);
          sub_228393250();
          sub_228393260();
          sub_228393220();
          if (v5 == v4)
          {
            goto LABEL_57;
          }
        }

        else
        {

          if (v5 == v4)
          {
LABEL_57:
            v43 = v59[0];
            a2 = v46;
            goto LABEL_63;
          }
        }
      }
    }
  }

  v43 = MEMORY[0x277D84F90];
LABEL_63:
  *a2 = v43;
}

uint64_t sub_22829F41C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2282A2968(0, &qword_280DDBC48, sub_2282A2124, MEMORY[0x277CBCE78]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - v7;
  sub_2282A2098(0, &qword_280DDB840, sub_2282A2124, MEMORY[0x277CBCF38]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = v18 - v12;
  v15 = *a1;
  v14 = a1[1];
  v18[0] = v15;
  v18[1] = v14;
  sub_2282A2124(0);

  sub_2283918C0();
  sub_2281810DC(0, &qword_280DDB860, MEMORY[0x277D84948]);
  sub_2283918A0();
  (*(v6 + 8))(v8, v5);
  sub_2282A2740();
  v16 = sub_228391990();
  result = (*(v11 + 8))(v13, v10);
  *a2 = v16;
  return result;
}

uint64_t sub_22829F660(unint64_t *a1, uint64_t a2)
{
  v47 = sub_22838F4A0();
  v3 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v45 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_22838FEF0();
  v48 = *(v46 - 8);
  v5 = MEMORY[0x28223BE20](v46);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v40 - v8;
  v11 = *a1;
  v10 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = sub_228390660();
    v15 = sub_2281BFC2C(v14);

    v16 = MEMORY[0x277D84F90];
    if (!v15)
    {
      v15 = MEMORY[0x277D84F90];
    }

    v50 = MEMORY[0x277D84F90];
    if (v11)
    {
      v43 = v3;
      v17 = v11 & 0xFFFFFFFFFFFFFF8;
      if (v11 >> 62)
      {
        v3 = sub_2283930D0();
      }

      else
      {
        v3 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v16 = v10;
      if (v3)
      {
        v44 = v15;
        *&v41 = v9;
        *&v42 = v7;
        v18 = v13;
        v7 = 0;
        v13 = 0;
        v9 = (v11 & 0xC000000000000001);
        while (1)
        {
          if (v9)
          {
            v19 = v11;
            v20 = MEMORY[0x22AAB6D80](v7, v11);
          }

          else
          {
            if (v7 >= *(v17 + 16))
            {
              goto LABEL_34;
            }

            v19 = v11;
            v20 = *(v11 + 8 * v7 + 32);
          }

          v21 = v20;
          v22 = (v7 + 1);
          if (__OFADD__(v7, 1))
          {
            break;
          }

          v49 = v20;
          sub_22829FD30(&v49, v18, v16, v44, &v50);

          ++v7;
          v11 = v19;
          if (v22 == v3)
          {
            v17 = v50;
            v13 = v18;
            v7 = v42;
            v9 = v41;
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v17 = MEMORY[0x277D84F90];
LABEL_18:

      v3 = v43;
      v16 = MEMORY[0x277D84F90];
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    if (!(v17 >> 62))
    {
      v23 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v23)
      {
LABEL_36:

        sub_22838F910();

        sub_22838FCD0();

        sub_22838FF50();
      }

LABEL_21:
      v50 = v16;
      result = sub_2281CA2AC(0, v23 & ~(v23 >> 63), 0);
      if (v23 < 0)
      {
        __break(1u);
        return result;
      }

      v24 = v9;
      v40[1] = v13;
      v25 = v50;
      if ((v17 & 0xC000000000000001) != 0)
      {
        v26 = 0;
        v43 = (v48 + 32);
        v44 = (v3 + 8);
        v42 = xmmword_228397F40;
        do
        {
          v27 = MEMORY[0x22AAB6D80](v26, v17);
          sub_2281BBE0C(0);
          v28 = swift_allocObject();
          *(v28 + 16) = v42;
          *(v28 + 56) = type metadata accessor for InteractionCriticalAlertItem();
          *(v28 + 64) = sub_2282A2920(&qword_27D825BA8, type metadata accessor for InteractionCriticalAlertItem, &protocol conformance descriptor for InteractionCriticalAlertItem);
          *(v28 + 32) = v27;
          swift_unknownObjectRetain();
          v29 = v45;
          sub_22838F490();
          sub_22838F450();
          (*v44)(v29, v47);
          sub_22838FED0();
          swift_unknownObjectRelease();
          v50 = v25;
          v31 = *(v25 + 16);
          v30 = *(v25 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_2281CA2AC((v30 > 1), v31 + 1, 1);
            v25 = v50;
          }

          ++v26;
          *(v25 + 16) = v31 + 1;
          (*(v48 + 32))(v25 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v31, v24, v46);
        }

        while (v23 != v26);
      }

      else
      {
        sub_2281BBE0C(0);
        v43 = (v3 + 8);
        v44 = v32;
        *&v42 = v48 + 32;
        v33 = 32;
        v41 = xmmword_228397F40;
        do
        {
          v34 = v7;
          v35 = *(v17 + v33);
          v36 = swift_allocObject();
          *(v36 + 16) = v41;
          *(v36 + 56) = type metadata accessor for InteractionCriticalAlertItem();
          *(v36 + 64) = sub_2282A2920(&qword_27D825BA8, type metadata accessor for InteractionCriticalAlertItem, &protocol conformance descriptor for InteractionCriticalAlertItem);
          *(v36 + 32) = v35;
          swift_retain_n();
          v37 = v45;
          sub_22838F490();
          sub_22838F450();
          (*v43)(v37, v47);
          sub_22838FED0();

          v50 = v25;
          v39 = *(v25 + 16);
          v38 = *(v25 + 24);
          if (v39 >= v38 >> 1)
          {
            sub_2281CA2AC((v38 > 1), v39 + 1, 1);
            v25 = v50;
          }

          *(v25 + 16) = v39 + 1;
          (*(v48 + 32))(v25 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v39, v34, v46);
          v33 += 8;
          --v23;
          v7 = v34;
        }

        while (v23);
      }

      goto LABEL_36;
    }

LABEL_35:
    v23 = sub_2283930D0();
    if (!v23)
    {
      goto LABEL_36;
    }

    goto LABEL_21;
  }

  return result;
}

uint64_t sub_22829FD30(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v53 = a5;
  v61 = *MEMORY[0x277D85DE8];
  v8 = [*a1 interactions];
  sub_22817A958(0, &qword_280DDBA10, 0x277D11518);
  sub_22818C470(&qword_280DDBA08, &qword_280DDBA10, 0x277D11518, MEMORY[0x277D85378]);
  v9 = sub_228392480();

  v55 = a3;
  v56 = a4;
  v54 = a2;
  if ((v9 & 0xC000000000000001) == 0)
  {
    v27 = *(v9 + 32);
    v50 = ((1 << v27) + 63) >> 6;
    if ((v27 & 0x3Fu) <= 0xD)
    {
      goto LABEL_22;
    }

    goto LABEL_39;
  }

  v11 = MEMORY[0x277D84FA0];
  v60 = MEMORY[0x277D84FA0];
  sub_228393080();
  v12 = sub_228393100();
  if (!v12)
  {
LABEL_20:

    goto LABEL_37;
  }

  while (1)
  {
    v58 = v12;
    swift_dynamicCast();
    v13 = [v59 severity];
    v14 = [v13 severityLevel];

    v15 = v59;
    if (v14 == 1)
    {
      break;
    }

LABEL_5:
    v12 = sub_228393100();
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  v16 = v11[2];
  if (v11[3] <= v16)
  {
    sub_2282D7554(v16 + 1);
  }

  v11 = v60;
  v9 = v59;
  v17 = sub_228392C50();
  v18 = v60 + 56;
  v19 = -1 << *(v60 + 32);
  v20 = v17 & ~v19;
  v21 = v20 >> 6;
  if (((-1 << v20) & ~*(v60 + 56 + 8 * (v20 >> 6))) != 0)
  {
    v22 = __clz(__rbit64((-1 << v20) & ~*(v60 + 56 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
    *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(v11[6] + 8 * v22) = v15;
    ++v11[2];
    goto LABEL_5;
  }

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
    v26 = *(v18 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_19;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_39:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_22:
    v49[1] = v49;
    MEMORY[0x28223BE20](v10);
    v51 = v49 - ((v28 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v51, v28);
    v52 = 0;
    v29 = 0;
    v30 = 1 << *(v9 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v9 + 56);
    v33 = (v30 + 63) >> 6;
    while (v32)
    {
      v34 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
LABEL_32:
      v37 = v34 | (v29 << 6);
      v38 = *(*(v9 + 48) + 8 * v37);
      v39 = [v38 severity];
      v40 = [v39 severityLevel];

      if (v40 == 1)
      {
        *&v51[(v37 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v37;
        if (__OFADD__(v52++, 1))
        {
          __break(1u);
LABEL_36:
          v11 = sub_22827AE4C(v51, v50, v52, v9);
          goto LABEL_37;
        }
      }
    }

    v35 = v29;
    while (1)
    {
      v29 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v29 >= v33)
      {
        goto LABEL_36;
      }

      v36 = *(v9 + 56 + 8 * v29);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v32 = (v36 - 1) & v36;
        goto LABEL_32;
      }
    }
  }

  v46 = swift_slowAlloc();
  v47 = v57;
  v48 = sub_22827A904(v46, v50, v9, sub_2282A2A74, 0);
  v57 = v47;
  if (v47)
  {

    result = MEMORY[0x22AAB7B80](v46, -1, -1);
    __break(1u);
  }

  else
  {
    v11 = v48;

    MEMORY[0x22AAB7B80](v46, -1, -1);
LABEL_37:
    v42 = v55;

    v43 = v56;

    v44 = v54;

    sub_2282A1AB0(v11, v44, v42, v43, v53);
  }

  return result;
}

BOOL sub_2282A0274(id *a1)
{
  v1 = [*a1 severity];
  v2 = [v1 severityLevel];

  return v2 == 1;
}

void sub_2282A02D8(id *a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5)
{
  v102 = a2;
  v103 = a5;
  v108 = a4;
  v101 = type metadata accessor for InteractionStackedMedmojiDataProvider(0);
  MEMORY[0x28223BE20](v101);
  v105 = (&v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104 = type metadata accessor for DrugInteractionVisualizationConfig(0);
  v8 = MEMORY[0x28223BE20](v104);
  v106 = (&v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v107 = (&v100 - v10);
  v11 = *a1;
  v110 = a3;
  v134 = v11;
  if (!a3)
  {
    goto LABEL_13;
  }

  v12 = v110 & 0xFFFFFFFFFFFFFF8;
  if (v110 >> 62)
  {
    v13 = sub_2283930D0();
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  v14 = 0;
  v15 = 0;
  v11 = (v110 & 0xC000000000000001);
  do
  {
    if (v11)
    {
      v16 = MEMORY[0x22AAB6D80](v14, v110);
    }

    else
    {
      if (v14 >= *(v12 + 16))
      {
        goto LABEL_47;
      }

      v16 = *(v110 + 8 * v14 + 32);
    }

    v17 = v16;
    a3 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_46;
    }

    v18 = [v16 isEqualToDrugInteractionResult_];

    v15 |= v18;
    ++v14;
  }

  while (a3 != v13);
  v11 = v134;
  if ((v15 & 1) == 0)
  {
LABEL_13:
    v124 = MEMORY[0x277D84F90];
    a3 = v108;
    if (v108 >> 62)
    {
      goto LABEL_48;
    }

    for (i = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
    {
      v20 = 0;
      v109 = a3 & 0xFFFFFFFFFFFFFF8;
      v110 = a3 & 0xC000000000000001;
      do
      {
        if (v110)
        {
          v21 = MEMORY[0x22AAB6D80](v20, a3);
        }

        else
        {
          if (v20 >= *(v109 + 16))
          {
            goto LABEL_43;
          }

          v21 = *(a3 + 8 * v20 + 32);
        }

        v22 = v21;
        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v24 = [v21 firstConceptIdentifier];
        if (v24)
        {
          v25 = v24;
          sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
          v26 = [v11 firstInteractionClass];
          v27 = [v26 ancestorIdentifier];

          v28 = sub_228392C60();
          if (v28)
          {
            sub_228393210();
            sub_228393250();
            sub_228393260();
            sub_228393220();
          }

          else
          {
          }

          v11 = v134;
          a3 = v108;
        }

        else
        {
        }

        ++v20;
      }

      while (v23 != i);
      v29 = 0;
      v100 = v124;
      v124 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v110)
        {
          v30 = MEMORY[0x22AAB6D80](v29, a3);
        }

        else
        {
          if (v29 >= *(v109 + 16))
          {
            goto LABEL_45;
          }

          v30 = *(a3 + 8 * v29 + 32);
        }

        v31 = v30;
        v32 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        v33 = [v30 firstConceptIdentifier];
        if (v33)
        {
          v34 = v33;
          sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
          v35 = [v11 secondInteractionClass];
          v36 = [v35 ancestorIdentifier];

          v37 = sub_228392C60();
          if (v37)
          {
            sub_228393210();
            sub_228393250();
            sub_228393260();
            sub_228393220();
          }

          else
          {
          }

          v11 = v134;
          a3 = v108;
        }

        else
        {
        }

        ++v29;
        if (v32 == i)
        {
          v38 = v124;
          v39 = v106;
          v40 = v100;
          goto LABEL_50;
        }
      }

LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      ;
    }

    v40 = MEMORY[0x277D84F90];
    v38 = MEMORY[0x277D84F90];
    v39 = v106;
LABEL_50:
    if ((v40 & 0x8000000000000000) != 0 || (v40 & 0x4000000000000000) != 0)
    {
      if (sub_2283930D0())
      {
LABEL_53:
        if ((v40 & 0xC000000000000001) != 0)
        {
          v41 = MEMORY[0x22AAB6D80](0, v40);
        }

        else
        {
          if (!*(v40 + 16))
          {
            __break(1u);
            goto LABEL_86;
          }

          v41 = *(v40 + 32);
        }

        v42 = v41;

        _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
        swift_storeEnumTagMultiPayload();
        v124 = v42;
        v43 = sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
        v110 = sub_228390F30();
        v45 = v44;
        v132 = v43;
        v133 = &protocol witness table for HKMedicationUserDomainConcept;
        v131[0] = v42;
        if ((v38 & 0x8000000000000000) != 0)
        {
          goto LABEL_68;
        }

LABEL_62:
        if ((v38 & 0x4000000000000000) == 0)
        {
          v54 = *(v38 + 16);
          v109 = v45;
          if (!v54)
          {
LABEL_69:

            v61 = v134;
            v63 = [v134 secondInteractionClass];
            v64 = [v63 ancestorIdentifier];

            v65 = HKDrugInteractionLifestyleFactorForHKConceptIdentifier();
            v66 = v65;
            if (!v65)
            {
              sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
              v66 = sub_228392C40();
            }

            v67 = v65;
            v56 = sub_228392F30();

            *v39 = v56;
            swift_storeEnumTagMultiPayload();
            LOBYTE(v124) = 0;
            v58 = HKDrugInteractionLifestyleFactor.localizedString(variant:)(&v124, v56);
            v60 = v68;
            type metadata accessor for HKDrugInteractionLifestyleFactor(0);
            v129 = v69;
            v130 = &protocol witness table for HKDrugInteractionLifestyleFactor;

            goto LABEL_72;
          }

          goto LABEL_64;
        }

LABEL_68:
        v62 = sub_2283930D0();
        v109 = v45;
        if (!v62)
        {
          goto LABEL_69;
        }

LABEL_64:
        if ((v38 & 0xC000000000000001) != 0)
        {
          v55 = MEMORY[0x22AAB6D80](0, v38);
          goto LABEL_67;
        }

        if (*(v38 + 16))
        {
          v55 = *(v38 + 32);
LABEL_67:
          v56 = v55;

          _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
          swift_storeEnumTagMultiPayload();
          v124 = v56;
          v57 = sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
          v58 = sub_228390F30();
          v60 = v59;
          v129 = v57;
          v130 = &protocol witness table for HKMedicationUserDomainConcept;
          v61 = v134;
LABEL_72:
          v128[0] = v56;
          v70 = [v61 severity];
          v71 = [v70 severityLevel];

          v72 = v101;
          v73 = v105;
          sub_2282A2658(v107, v105 + *(v101 + 20), type metadata accessor for DrugInteractionVisualizationConfig);
          sub_2282A2658(v39, v73 + *(v72 + 24), type metadata accessor for DrugInteractionVisualizationConfig);
          *v73 = v71;
          *&v115 = v72;
          *(&v115 + 1) = sub_2282A2920(&qword_27D825730, type metadata accessor for InteractionStackedMedmojiDataProvider, &protocol conformance descriptor for InteractionStackedMedmojiDataProvider);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v114 + 1);
          sub_2282A2658(v73, boxed_opaque_existential_1, type metadata accessor for InteractionStackedMedmojiDataProvider);
          sub_228180FB0(v131, v117);
          sub_228180FB0(v128, v120);
          *&v114[0] = v61;
          v76 = v109;
          v75 = v110;
          *&v116 = v110;
          *(&v116 + 1) = v109;
          *(&v118 + 1) = 0;
          *&v119 = v58;
          *(&v119 + 1) = v60;
          *(&v121 + 1) = 0;
          *&v122 = 0;
          v123 = 0uLL;
          *(&v122 + 1) = 0xE000000000000000;
          if (v58 == v110 && v60 == v109 || (sub_228393460() & 1) == 0)
          {
            sub_22819E748(v114, &v124);
            v80 = v61;
          }

          else
          {
            v78 = *(&v115 + 1);
            v77 = v115;
            __swift_project_boxed_opaque_existential_0(v114 + 1, v115);
            v110 = v75;
            v104 = *(v78 + 40);
            v108 = v134;
            v79 = v78;
            v61 = v134;
            v104(v125, v77, v79);
            sub_228180FB0(v120, v126);
            sub_228180FB0(v117, v127);
            v124 = v108;
            v125[5] = v58;
            v125[6] = v60;
            v126[5] = 0;
            v126[6] = v110;
            v126[7] = v76;
            v127[6] = 0;
            v127[5] = 0;
            v127[9] = 0;
            v127[7] = 0xE000000000000000;
            v127[8] = 0;
          }

          sub_22819F35C(v114);
          v81 = swift_allocObject();
          v82 = v102;
          swift_weakInit();
          sub_22819E748(&v124, v114);
          v83 = swift_allocObject();
          *(v83 + 16) = v81;
          *(v83 + 24) = v61;
          v134 = v81;
          v84 = v122;
          *(v83 + 192) = v121;
          *(v83 + 208) = v84;
          *(v83 + 224) = v123;
          v85 = v119;
          *(v83 + 128) = v118;
          *(v83 + 144) = v85;
          v86 = v120[1];
          *(v83 + 160) = v120[0];
          *(v83 + 176) = v86;
          v87 = v116;
          *(v83 + 64) = v115;
          *(v83 + 80) = v87;
          v88 = v117[1];
          *(v83 + 96) = v117[0];
          *(v83 + 112) = v88;
          v89 = v114[1];
          *(v83 + 32) = v114[0];
          *(v83 + 48) = v89;
          v90 = swift_allocObject();
          swift_weakInit();
          v91 = v61;

          v92 = sub_22829CE10();
          v93 = *(v82 + qword_27D826D90);
          v94 = swift_allocObject();
          v94[2] = v92;
          v94[3] = v91;
          v94[4] = v90;
          v94[5] = v93;
          type metadata accessor for InteractionCriticalAlertItem();
          v95 = swift_allocObject();
          v112 = &type metadata for InteractionResultDetailDataProvider;
          v113 = &protocol witness table for InteractionResultDetailDataProvider;
          *&v111 = swift_allocObject();
          sub_22819E748(&v124, v111 + 16);
          type metadata accessor for InteractionCriticalAlertCell();
          sub_2282A2920(&unk_280DDC1E0, type metadata accessor for InteractionCriticalAlertCell, &protocol conformance descriptor for InteractionCriticalAlertCell);
          v96 = v91;

          v95[7] = sub_22838FBB0();
          v95[8] = v97;
          sub_22816DFFC(&v111, (v95 + 2));
          v95[9] = sub_2282A26C0;
          v95[10] = v83;
          v95[11] = sub_2282A26CC;
          v95[12] = v94;

          v99 = v103;
          MEMORY[0x22AAB5D20](v98);
          if (*((*v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2283921E0();
          }

          sub_228392230();

          sub_22819F35C(&v124);
          sub_2282A26D8(v105, type metadata accessor for InteractionStackedMedmojiDataProvider);
          sub_2282A26D8(v106, type metadata accessor for DrugInteractionVisualizationConfig);
          sub_2282A26D8(v107, type metadata accessor for DrugInteractionVisualizationConfig);
          __swift_destroy_boxed_opaque_existential_0(v128);
          __swift_destroy_boxed_opaque_existential_0(v131);
          return;
        }

LABEL_86:
        __break(1u);
        return;
      }
    }

    else if (*(v40 + 16))
    {
      goto LABEL_53;
    }

    v46 = [v134 firstInteractionClass];
    v47 = [v46 ancestorIdentifier];

    v48 = HKDrugInteractionLifestyleFactorForHKConceptIdentifier();
    v49 = v48;
    if (!v48)
    {
      sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
      v49 = sub_228392C40();
    }

    v50 = v48;
    v51 = sub_228392F30();

    *v107 = v51;
    swift_storeEnumTagMultiPayload();
    LOBYTE(v124) = 0;
    v110 = HKDrugInteractionLifestyleFactor.localizedString(variant:)(&v124, v51);
    v45 = v52;
    type metadata accessor for HKDrugInteractionLifestyleFactor(0);
    v132 = v53;
    v133 = &protocol witness table for HKDrugInteractionLifestyleFactor;

    v131[0] = v51;
    if ((v38 & 0x8000000000000000) != 0)
    {
      goto LABEL_68;
    }

    goto LABEL_62;
  }
}

uint64_t sub_2282A0FF0(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v32 = result;
    sub_228180ED0();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_228396260;
    *(v6 + 32) = a2;
    type metadata accessor for HKDrugInteractionResultCollection();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    sub_228180FB0((a3 + 1), v36);
    v8 = a3[7];
    v31 = a3[6];
    sub_228180FB0((a3 + 8), v35);
    v9 = a3[11];
    v10 = a3[12];
    __swift_project_boxed_opaque_existential_0(a3 + 8, v9);
    v11 = *(v10 + 48);
    v12 = a2;

    v13 = v11(v9, v10);
    v14 = a3[14];
    v15 = a3[15];
    sub_228180FB0((a3 + 16), v34);
    v16 = a3[19];
    v17 = a3[20];
    __swift_project_boxed_opaque_existential_0(a3 + 16, v16);
    v18 = *(v17 + 48);

    v19 = v18(v16, v17);
    v20 = type metadata accessor for InteractionResultDetailViewController(0);
    v21 = objc_allocWithZone(v20);
    *&v21[qword_27D824388] = v7;
    sub_228180FB0(v36, &v21[qword_27D824390]);
    v22 = &v21[qword_27D824398];
    *v22 = v31;
    *(v22 + 1) = v8;
    sub_228180FB0(v35, &v21[qword_27D8243A0]);
    *&v21[qword_27D8243A8] = v13;
    v23 = &v21[qword_27D8243B0];
    *v23 = v14;
    *(v23 + 1) = v15;
    sub_228180FB0(v34, &v21[qword_27D8243B8]);
    *&v21[qword_27D8243C0] = v19;
    v33.receiver = v21;
    v33.super_class = v20;

    v24 = objc_msgSendSuper2(&v33, sel_initWithCollectionViewLayout_, 0);
    v25 = qword_280DDCF18;
    v26 = v24;
    if (v25 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    v27 = sub_228391FC0();

    [v26 setTitle_];

    v28 = [v26 navigationItem];
    [v28 setLargeTitleDisplayMode_];

    [v26 setModalPresentationStyle_];

    __swift_destroy_boxed_opaque_existential_0(v34);
    __swift_destroy_boxed_opaque_existential_0(v35);
    __swift_destroy_boxed_opaque_existential_0(v36);
    [v26 setModalPresentationStyle_];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v30 = Strong;
      [Strong showAdaptively:v26 sender:v32];
    }

    sub_228390FE0();
  }

  return result;
}

void sub_2282A13D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = sub_2282A2738;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2283282E4;
  v10[3] = &block_descriptor_30;
  v9 = _Block_copy(v10);

  [a1 markDrugInteractionAsDismissed:a2 completion:v9];
  _Block_release(v9);
}

uint64_t sub_2282A14CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = sub_22829CE10();
    v4 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_2282A2A70;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22829DA98;
    aBlock[3] = &block_descriptor_35;
    v5 = _Block_copy(aBlock);

    [v3 allDismissedDrugInteractionsWithCompletion_];
    _Block_release(v5);
  }

  return sub_228390FE0();
}

Swift::Void __swiftcall InteractionCriticalAlertDataSource.registerCells(for:)(UICollectionView *a1)
{
  type metadata accessor for InteractionCriticalAlertCell();
  sub_2282A2920(&unk_280DDC1E0, type metadata accessor for InteractionCriticalAlertCell, &protocol conformance descriptor for InteractionCriticalAlertCell);
  sub_2283926B0();
}

uint64_t type metadata accessor for InteractionCriticalAlertDataSource(uint64_t a1)
{
  result = qword_280DDBF00;
  if (!qword_280DDBF00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2282A1784()
{
  type metadata accessor for InteractionCriticalAlertCell();
  sub_2282A2920(&unk_280DDC1E0, type metadata accessor for InteractionCriticalAlertCell, &protocol conformance descriptor for InteractionCriticalAlertCell);
  return sub_2283926B0();
}

void sub_2282A17F4(uint64_t a1)
{
  sub_2282A21B0(319, &qword_280DDBBD8, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_2282A19B4@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  *a2 = v4;
  return result;
}

uint64_t sub_2282A1A34(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_228391970();
}

void sub_2282A1AB0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5)
{
  v6 = v5;
  v7 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_228393080();
    sub_22817A958(0, &qword_280DDBA10, 0x277D11518);
    sub_22818C470(&qword_280DDBA08, &qword_280DDBA10, 0x277D11518, MEMORY[0x277D85378]);
    sub_2283924C0();
    v7 = v24;
    v8 = v25;
    v9 = v26;
    v10 = v27;
    v11 = v28;
  }

  else
  {
    v12 = -1 << *(a1 + 32);
    v8 = a1 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(a1 + 56);

    v10 = 0;
  }

  if (v7 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v15 = v10;
  v16 = v11;
  v17 = v10;
  if (v11)
  {
LABEL_12:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v7 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (v19)
    {
      do
      {
        v29 = v19;
        sub_2282A02D8(&v29, a2, a3, a4, a5);

        if (v6)
        {
          break;
        }

        v10 = v17;
        v11 = v18;
        if ((v7 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_228393100())
        {
          break;
        }

        sub_22817A958(0, &qword_280DDBA10, 0x277D11518);
        swift_dynamicCast();
        v19 = v29;
        v17 = v10;
        v18 = v11;
      }

      while (v29);
    }

LABEL_19:
    sub_228176F04(v7);
  }

  else
  {
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= ((v9 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v16 = *(v8 + 8 * v17);
      ++v15;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

unint64_t sub_2282A1D1C()
{
  result = qword_280DDBC78;
  if (!qword_280DDBC78)
  {
    sub_2282A2098(255, &qword_280DDBC70, sub_22827A0FC, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDBC78);
  }

  return result;
}

void sub_2282A1DD8(uint64_t a1)
{
  if (!qword_27D826DB0)
  {
    sub_2282A2414(255, &qword_27D826DA0, sub_22827A27C, sub_2282A1DA4);
    sub_2282A21B0(255, &qword_280DDBBF8, MEMORY[0x277CBCEC0]);
    sub_2282A1EB0();
    sub_2282A1F38();
    v1 = sub_228391670();
    if (!v2)
    {
      atomic_store(v1, &qword_27D826DB0);
    }
  }
}

unint64_t sub_2282A1EB0()
{
  result = qword_27D826DB8;
  if (!qword_27D826DB8)
  {
    sub_2282A2414(255, &qword_27D826DA0, sub_22827A27C, sub_2282A1DA4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826DB8);
  }

  return result;
}

unint64_t sub_2282A1F38()
{
  result = qword_280DDBC00;
  if (!qword_280DDBC00)
  {
    sub_2282A21B0(255, &qword_280DDBBF8, MEMORY[0x277CBCEC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDBC00);
  }

  return result;
}

void sub_2282A1FAC(uint64_t a1)
{
  if (!qword_27D826DC0)
  {
    sub_2282A2098(255, &qword_280DDBC80, sub_2282A2124, MEMORY[0x277CBCD88]);
    sub_2282A2228(255, &qword_27D826DC8, sub_2282A1DD8, sub_2282A22D0);
    sub_2282A2304();
    sub_2282A238C();
    v1 = sub_228391780();
    if (!v2)
    {
      atomic_store(v1, &qword_27D826DC0);
    }
  }
}

void sub_2282A2098(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_2281810DC(255, &qword_280DDB860, MEMORY[0x277D84948]);
    v9 = a4(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2282A2124(uint64_t a1)
{
  if (!qword_280DDBB58)
  {
    sub_22827A0FC(255);
    sub_2282A21B0(255, &qword_280DDBB30, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DDBB58);
    }
  }
}

void sub_2282A21B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_22818DF04(255, &qword_280DDBB38, &qword_280DDB9D0, 0x277D114F0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2282A2228(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    sub_2281810DC(255, &qword_280DDB860, MEMORY[0x277D84948]);
    a4();
    v6 = sub_228391710();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_2282A2304()
{
  result = qword_280DDBC88;
  if (!qword_280DDBC88)
  {
    sub_2282A2098(255, &qword_280DDBC80, sub_2282A2124, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDBC88);
  }

  return result;
}

unint64_t sub_2282A238C()
{
  result = qword_27D826DD8;
  if (!qword_27D826DD8)
  {
    sub_2282A2228(255, &qword_27D826DC8, sub_2282A1DD8, sub_2282A22D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826DD8);
  }

  return result;
}

void sub_2282A2414(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_228391700();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2282A24B8(uint64_t a1)
{
  if (!qword_27D826DF0)
  {
    sub_2282A2414(255, &qword_27D826DE0, sub_2282A1FAC, sub_2282A2484);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_2282A25B8();
    sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78, MEMORY[0x277D85228]);
    v1 = sub_2283917D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D826DF0);
    }
  }
}

unint64_t sub_2282A25B8()
{
  result = qword_27D826DF8;
  if (!qword_27D826DF8)
  {
    sub_2282A2414(255, &qword_27D826DE0, sub_2282A1FAC, sub_2282A2484);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826DF8);
  }

  return result;
}

uint64_t sub_2282A2658(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2282A26D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2282A2740()
{
  result = qword_280DDB848;
  if (!qword_280DDB848)
  {
    sub_2282A2098(255, &qword_280DDB840, sub_2282A2124, MEMORY[0x277CBCF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDB848);
  }

  return result;
}

unint64_t sub_2282A27D4()
{
  result = qword_27D826E08;
  if (!qword_27D826E08)
  {
    sub_2282A2098(255, &qword_280DDB838, sub_22827A0FC, MEMORY[0x277CBCF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826E08);
  }

  return result;
}

unint64_t sub_2282A2868()
{
  result = qword_280DDBC30;
  if (!qword_280DDBC30)
  {
    sub_2282A2098(255, &qword_280DDBC28, sub_22827A0FC, MEMORY[0x277CBCEA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDBC30);
  }

  return result;
}

uint64_t sub_2282A2920(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2282A2968(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t objectdestroy_26Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t sub_2282A2B2C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for Dosage(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void *sub_2282A2C18(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v31 = a1;
  sub_2282AA2F8(0, &qword_27D826EB8, type metadata accessor for ScheduleDataSource.DoseItem, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v30 = type metadata accessor for ScheduleDataSource.DoseItem(0);
  v25 = *(v30 - 8);
  v8 = MEMORY[0x28223BE20](v30);
  v29 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v24 = &v22 - v10;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v12 = 0;
    v27 = a3 & 0xFFFFFFFFFFFFFF8;
    v28 = a3 & 0xC000000000000001;
    v13 = (v25 + 48);
    v14 = MEMORY[0x277D84F90];
    v23 = a3;
    v26 = i;
    while (1)
    {
      if (v28)
      {
        v15 = MEMORY[0x22AAB6D80](v12, a3);
      }

      else
      {
        if (v12 >= *(v27 + 16))
        {
          goto LABEL_20;
        }

        v15 = *(a3 + 8 * v12 + 32);
      }

      v16 = v15;
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v32 = v15;
      v31(&v32);
      if (v3)
      {

        return v14;
      }

      if ((*v13)(v7, 1, v30) == 1)
      {
        sub_2282ABCF8(v7, &qword_27D826EB8, type metadata accessor for ScheduleDataSource.DoseItem);
      }

      else
      {
        v18 = v24;
        sub_2282ABD68(v7, v24, type metadata accessor for ScheduleDataSource.DoseItem);
        sub_2282ABD68(v18, v29, type metadata accessor for ScheduleDataSource.DoseItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_228198AD4(0, v14[2] + 1, 1, v14);
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          v14 = sub_228198AD4((v19 > 1), v20 + 1, 1, v14);
        }

        v14[2] = v20 + 1;
        sub_2282ABD68(v29, v14 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20, type metadata accessor for ScheduleDataSource.DoseItem);
        a3 = v23;
      }

      ++v12;
      if (v17 == v26)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_2282A2F90(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_2282AA2F8(0, &qword_27D826200, type metadata accessor for Dosage, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for Dosage(0);
  v11 = MEMORY[0x28223BE20](v10);
  v31 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v29 = &v25 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(v13 + 72);
  v26 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = a3 + v26;
  v30 = (v13 + 48);
  v18 = MEMORY[0x277D84F90];
  v27 = v10;
  v28 = a2;
  while (1)
  {
    a1(v17);
    if (v3)
    {
      break;
    }

    if ((*v30)(v9, 1, v10) == 1)
    {
      sub_2282ABCF8(v9, &qword_27D826200, type metadata accessor for Dosage);
    }

    else
    {
      v19 = v29;
      sub_2282ABD68(v9, v29, type metadata accessor for Dosage);
      sub_2282ABD68(v19, v31, type metadata accessor for Dosage);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_2281984E8(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v23 = sub_2281984E8((v20 > 1), v21 + 1, 1, v18);
        v22 = v16;
        v18 = v23;
      }

      else
      {
        v22 = v16;
      }

      v18[2] = v21 + 1;
      v16 = v22;
      sub_2282ABD68(v31, v18 + v26 + v21 * v22, type metadata accessor for Dosage);
      v10 = v27;
    }

    v17 += v16;
    if (!--v15)
    {
      return v18;
    }
  }

  return v18;
}

uint64_t sub_2282A3298@<X0>(uint64_t a1@<X8>)
{
  sub_2282AB580(0);
  v4 = v3;
  result = MEMORY[0x28223BE20](v3);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *v1;
  v9 = v1[1];
  v11 = *(*v1 + 16);
  if (v9 == v11)
  {
    v12 = *(v6 + 56);

    return v12(a1, 1, 1, v4);
  }

  else
  {
    if (v9 >= v11)
    {
      __break(1u);
    }

    else
    {
      v18 = v6;
      v13 = *(type metadata accessor for WeekdaysAndDosages(0) - 8);
      v14 = v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v9;
      v1[1] = v9 + 1;
      v15 = *(v4 + 48);
      v16 = v1[2];
      *v8 = v16;
      result = sub_2282AB724(v14, v8 + v15, type metadata accessor for WeekdaysAndDosages);
      if (!__OFADD__(v16, 1))
      {
        v1[2] = v16 + 1;
        sub_2282ABD68(v8, a1, sub_2282AB580);
        return (*(v18 + 56))(a1, 0, 1, v4);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2282A3484@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2281D9300(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for WeekdaysAndDosages(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_2282ABD68(v11, a2, type metadata accessor for WeekdaysAndDosages);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

char *sub_2282A35B8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2281D938C(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3[a1 + 32];
    memmove(&v3[a1 + 32], &v3[a1 + 33], v5 - 1 - a1);
    *(v3 + 2) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_2282A363C(uint64_t *a1)
{
  v2 = *(type metadata accessor for Dosage(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22834084C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2282AA35C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_2282A36E4()
{
  v0 = sub_228391130();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v26 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v26 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v26 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v26 - v18;
  MEMORY[0x28223BE20](v17);
  v27 = &v26 - v20;
  sub_2283910C0();
  sub_2282A39F0(v16);
  v21 = *(v1 + 16);
  v21(v13, v19, v0);
  v21(v7, v19, v0);
  v21(v4, v16, v0);
  v26 = MEMORY[0x277D11768];
  sub_2282ABCB0(&qword_27D824820, MEMORY[0x277D11768], MEMORY[0x277D11788]);
  sub_228392FD0();
  v22 = v27;
  sub_228392FB0();
  v23 = *(v1 + 8);
  v23(v10, v0);
  v23(v16, v0);
  v23(v19, v0);
  sub_228393020();
  sub_2282ABCB0(&qword_280DDBD08, v26, MEMORY[0x277D11778]);
  v24 = sub_228391FB0();
  v23(v19, v0);
  v23(v22, v0);
  return v24 & 1;
}

uint64_t sub_2282A39F0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WeekdaysAndDosages(0);
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_228391130();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v25 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  sub_228391870();
  v15 = v34;
  v33 = 0;
  v31 = sub_2282ABCB0(&qword_280DDBD00, MEMORY[0x277D11768], MEMORY[0x277D11790]);
  sub_2283935F0();
  v30 = *(v6 + 16);
  v30(a1, v14, v5);
  v16 = v15;
  v17 = *(v15 + 16);
  if (v17)
  {
    v25 = v16;
    v26 = v14;
    v18 = *(v2 + 20);
    v19 = v16 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v28 = *(v32 + 72);
    v29 = v18;
    v32 = v6 + 8;
    v20 = v12;
    v21 = (v6 + 32);
    v27 = v6 + 16;
    do
    {
      sub_2282AB724(v19, v4, type metadata accessor for WeekdaysAndDosages);
      v22 = MEMORY[0x277D11768];
      sub_2282ABCB0(&qword_27D824818, MEMORY[0x277D11768], MEMORY[0x277D11780]);
      sub_228392170();
      sub_2283935F0();
      v30(v9, &v4[v29], v5);
      sub_2282ABCB0(&qword_27D824820, v22, MEMORY[0x277D11788]);
      sub_228393000();
      sub_2282AB78C(v4, type metadata accessor for WeekdaysAndDosages);
      v23 = *v32;
      (*v32)(a1, v5);
      (*v21)(a1, v20, v5);
      v19 += v28;
      --v17;
    }

    while (v17);

    v14 = v26;
  }

  else
  {

    v23 = *(v6 + 8);
  }

  return (v23)(v14, v5);
}

uint64_t sub_2282A3DAC(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_22838F4A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + qword_27D826E28) = 0;
  v12 = (v3 + qword_27D826E30);
  v31[0] = sub_228392000();
  v31[1] = v13;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283AF450);

  v14 = v31[1];
  *v12 = v31[0];
  v12[1] = v14;
  *(v3 + qword_27D826E10) = a1;
  v15 = a1;
  v29 = a2;
  v30 = v15;
  if (a2)
  {
    v16 = a2;
    v17 = sub_2282604EC();
    v19 = v18;
    v21 = v20;
    a2 = v22;
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v21 = 0;
  }

  v23 = (v4 + qword_27D826E18);
  *v23 = v17;
  v23[1] = v19;
  v23[2] = v21;
  v23[3] = a2;
  *(v4 + qword_27D826E20) = a3;
  v31[0] = 0;
  v31[1] = 0xE000000000000000;

  sub_2283931D0();

  strcpy(v31, "MutableArray<");
  HIWORD(v31[1]) = -4864;
  sub_22838F490();
  v24 = sub_22838F450();
  v26 = v25;
  (*(v9 + 8))(v11, v8);
  MEMORY[0x22AAB5C80](v24, v26);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v27 = sub_22838FF30();

  sub_2282A4028();

  return v27;
}

uint64_t sub_2282A4028()
{
  v1 = v0;
  swift_allocObject();
  swift_weakInit();
  sub_2282ABC18(0);
  sub_2282ABCB0(&qword_27D826EB0, sub_2282ABC18, MEMORY[0x277CBCE48]);

  v2 = sub_228391AC0();

  *(v1 + qword_27D826E28) = v2;
}

uint64_t sub_2282A4130(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2282A4188();
  }

  return result;
}

uint64_t sub_2282A4188()
{
  v1 = v0;
  v191 = sub_228390110();
  v190 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v189 = &v187 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_22838FEF0();
  v233 = *(v232 - 8);
  v3 = MEMORY[0x28223BE20](v232);
  v188 = &v187 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v253 = &v187 - v5;
  v223 = sub_228390460();
  v283 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v222 = &v187 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_2282AA2F8(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v221 = &v187 - v9;
  v220 = sub_22838FFC0();
  v284 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v219 = &v187 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = sub_228391590();
  v278 = *(v252 - 8);
  MEMORY[0x28223BE20](v252);
  v251 = &v187 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = sub_228390170();
  v279 = *(v250 - 8);
  v12 = MEMORY[0x28223BE20](v250);
  v249 = &v187 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v248 = &v187 - v14;
  v276 = type metadata accessor for Dosage(0);
  v193 = *(v276 - 8);
  v15 = MEMORY[0x28223BE20](v276);
  v263 = &v187 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = v16;
  MEMORY[0x28223BE20](v15);
  v281 = &v187 - v17;
  v274 = type metadata accessor for DosageItem(0);
  v18 = MEMORY[0x28223BE20](v274);
  v262 = (&v187 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v280 = &v187 - v20;
  v259 = type metadata accessor for DayPickerItem(0);
  MEMORY[0x28223BE20](v259);
  v230 = &v187 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282AA2F8(0, &qword_27D826E80, sub_2282AB580, v7);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v229 = &v187 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v228 = (&v187 - v25);
  v264 = sub_22838F4A0();
  v26 = *(v264 - 8);
  MEMORY[0x28223BE20](v264);
  v282 = &v187 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v275 = sub_22838F440();
  v272 = *(v275 - 8);
  MEMORY[0x28223BE20](v275);
  v29 = &v187 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = type metadata accessor for WeekdaysAndDosages(0);
  v224 = *(v254 - 8);
  v30 = MEMORY[0x28223BE20](v254);
  v217 = &v187 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v247 = &v187 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v273 = &v187 - v35;
  v218 = v36;
  MEMORY[0x28223BE20](v34);
  v38 = (&v187 - v37);
  v39 = sub_228391130();
  v40 = *(v39 - 8);
  v41 = MEMORY[0x28223BE20](v39);
  v215 = &v187 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v214 = &v187 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v213 = &v187 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v187 - v48;
  MEMORY[0x28223BE20](v47);
  v51 = &v187 - v50;
  v255 = sub_2283913A0();
  v277 = *(v255 - 8);
  v52 = MEMORY[0x28223BE20](v255);
  v211 = &v187 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v55 = &v187 - v54;
  sub_228391390();
  v210 = sub_22817A958(0, &qword_280DDB990, 0x277D75348);
  sub_228392BD0();
  v231 = v55;
  sub_228391370();
  sub_2282A39F0(v51);
  sub_228391070();
  sub_2282ABCB0(&qword_27D824818, MEMORY[0x277D11768], MEMORY[0x277D11780]);
  sub_228392170();
  sub_228392170();
  v56 = *(v40 + 8);
  v246 = v49;
  v56(v49, v39);
  v212 = v51;
  v216 = v39;
  v209 = v40 + 8;
  v208 = v56;
  v56(v51, v39);
  v256 = v0;
  if (v287 == v290)
  {
    v271 = v40;
    v57 = v254;
    sub_2282A8A20(v38 + *(v254 + 20));
    sub_2282AA2F8(0, &qword_27D823E30, type metadata accessor for Dosage, MEMORY[0x277D84560]);
    v58 = (*(v193 + 80) + 32) & ~*(v193 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_228397F40;
    v60 = v59 + v58;
    sub_22838F430();
    v61 = v282;
    sub_22838F490();
    v62 = v264;
    (*(v26 + 32))(v60, v61, v264);
    v63 = v276;
    (*(v272 + 32))(v60 + *(v276 + 20), v29, v275);
    *(v60 + *(v63 + 24)) = 0x3FF0000000000000;
    sub_22838F490();
    v64 = sub_22838F450();
    v66 = v65;
    v276 = v26;
    (*(v26 + 8))(v61, v62);
    *v38 = v64;
    v38[1] = v66;
    *(v38 + *(v57 + 24)) = v59;
    v67 = v273;
    sub_2282AB724(v38, v273, type metadata accessor for WeekdaysAndDosages);
    v68 = sub_228391860();
    v70 = v69;
    v71 = *v69;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v70 = v71;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v71 = sub_2281984B4(0, v71[2] + 1, 1, v71);
      *v70 = v71;
    }

    v74 = v71[2];
    v73 = v71[3];
    v40 = v271;
    if (v74 >= v73 >> 1)
    {
      v71 = sub_2281984B4((v73 > 1), v74 + 1, 1, v71);
      *v70 = v71;
    }

    v71[2] = v74 + 1;
    sub_2282ABD68(v67, v71 + ((*(v224 + 80) + 32) & ~*(v224 + 80)) + *(v224 + 72) * v74, type metadata accessor for WeekdaysAndDosages);
    v68(&v287, 0);
    sub_2282AB78C(v38, type metadata accessor for WeekdaysAndDosages);
    v1 = v256;
    v26 = v276;
  }

  sub_228391870();
  v207 = (v1 + qword_27D826E18);
  v206 = (v1 + qword_27D826E30);
  v205 = (v40 + 16);
  v245 = (v277 + 16);
  v244 = (v277 + 56);
  v291 = 0;
  v292 = 0;
  v204 = qword_27D826E10;
  v203 = 0x80000002283B11C0;
  v261 = (v26 + 16);
  v260 = (v26 + 32);
  v202 = "Could not find dosage for ID:";
  v201 = (v278 + 16);
  v200 = *MEMORY[0x277D10F90];
  v199 = (v284 + 104);
  v198 = *MEMORY[0x277D11140];
  v197 = (v283 + 104);
  v227 = (v277 + 8);
  v196 = (v278 + 8);
  v194 = v279 + 8;
  v226 = v233 + 32;
  v75 = MEMORY[0x277D84F90];
  v225 = xmmword_228397F40;
  v76 = v274;
  v77 = v230;
  v195 = v279 + 16;
  while (1)
  {
    v78 = v229;
    sub_2282A3298(v229);
    v79 = v228;
    sub_2282AB5EC(v78, v228);
    sub_2282AB580(0);
    v81 = v80;
    if ((*(*(v80 - 8) + 48))(v79, 1, v80) == 1)
    {
      break;
    }

    v243 = v75;
    v258 = *v79;
    v82 = *(v81 + 48);
    v279 = type metadata accessor for WeekdaysAndDosages;
    v83 = v247;
    sub_2282ABD68(v79 + v82, v247, type metadata accessor for WeekdaysAndDosages);
    *&v287 = 0;
    *(&v287 + 1) = 0xE000000000000000;
    sub_2283931D0();

    strcpy(&v287, "DayPickerItem-");
    HIBYTE(v287) = -18;
    MEMORY[0x22AAB5C80](*v83, *(v83 + 1));
    v283 = *(&v287 + 1);
    v284 = v287;
    v84 = *(v254 + 20);
    v85 = *v205;
    v86 = v216;
    (*v205)(v77 + *(v259 + 20), &v83[v84], v216);
    v87 = v212;
    sub_2282A39F0(v212);
    v85(v246, v87, v86);
    v88 = v77;
    v85(v214, v87, v86);
    v85(v215, &v83[v84], v86);
    sub_2282ABCB0(&qword_27D824820, MEMORY[0x277D11768], MEMORY[0x277D11788]);
    v89 = v213;
    sub_228392FD0();
    sub_228392FB0();
    v90 = v208;
    v208(v89, v86);
    v91 = v87;
    v92 = v256;
    v90(v91, v86);
    v93 = *(v259 + 28);
    v94 = v255;
    v239 = *v245;
    v239(v77 + v93, v231, v255);
    v238 = *v244;
    v238(v77 + v93, 0, 1, v94);
    v95 = swift_allocObject();
    swift_weakInit();
    v96 = v83;
    v97 = v217;
    sub_2282AB724(v83, v217, type metadata accessor for WeekdaysAndDosages);
    v98 = (*(v224 + 80) + 32) & ~*(v224 + 80);
    v99 = swift_allocObject();
    v100 = v258;
    *(v99 + 16) = v95;
    *(v99 + 24) = v100;
    v101 = v259;
    sub_2282ABD68(v97, v99 + v98, v279);
    type metadata accessor for DayPickerCollectionViewCell();
    sub_2282ABCB0(&qword_27D826E70, type metadata accessor for DayPickerCollectionViewCell, &unk_2283A511C);
    v102 = sub_22838FBB0();
    v103 = v283;
    *v88 = v284;
    v88[1] = v103;
    v104 = (v88 + *(v101 + 32));
    *v104 = sub_2282AB688;
    v104[1] = v99;
    v105 = (v88 + *(v101 + 36));
    *v105 = v102;
    v105[1] = v106;
    v107 = *(v96 + *(v254 + 24));
    v273 = *(v92 + v204);
    v108 = v207[1];
    v272 = *v207;
    v271 = v108;
    v109 = v207[3];
    v270 = v207[2];
    v283 = v109;
    v110 = swift_allocObject();
    swift_weakInit();
    v111 = swift_allocObject();
    *(v111 + 16) = v110;
    *(v111 + 24) = v100;
    v112 = v100;
    v113 = swift_allocObject();
    *(v113 + 16) = v92;
    *(v113 + 24) = v100;
    v277 = v113;
    v114 = swift_allocObject();
    swift_weakInit();
    v115 = swift_allocObject();
    *(v115 + 16) = v114;
    *(v115 + 24) = v100;
    v276 = v115;
    v116 = swift_allocObject();
    swift_weakInit();
    v117 = swift_allocObject();
    *(v117 + 16) = v116;
    *(v117 + 24) = v100;
    v275 = v117;
    v119 = *v206;
    v118 = v206[1];
    *&v287 = 0;
    *(&v287 + 1) = 0xE000000000000000;
    v242 = v110;

    v241 = v114;

    v240 = v116;

    v237 = v118;

    sub_2283931D0();

    *&v287 = 0xD000000000000011;
    *(&v287 + 1) = v203;
    v285 = v112;
    v120 = sub_228393420();
    MEMORY[0x22AAB5C80](v120);

    v236 = *(&v287 + 1);
    v234 = v287;
    v121 = *(v107 + 16);
    v257 = v111;
    v235 = v119;
    if (v121)
    {
      v285 = MEMORY[0x277D84F90];
      sub_2281C9DB4(0, v121, 0);
      v269 = type metadata accessor for DosageCollectionViewCell(0);
      v122 = v285;
      v268 = *(v193 + 80);
      v123 = (v268 + 32) & ~v268;
      v124 = v107 + v123;
      v266 = *(v193 + 72);
      v267 = v123;
      v265 = v123 + v192;
      do
      {
        v278 = v124;
        v279 = v121;
        v284 = v122;
        v125 = v281;
        sub_2282AB724(v124, v281, type metadata accessor for Dosage);
        v126 = v264;
        (*v261)(v282, v125, v264);
        v127 = v263;
        sub_2282AB724(v125, v263, type metadata accessor for Dosage);
        v128 = swift_allocObject();
        *(v128 + 16) = sub_2282A6D34;
        *(v128 + 24) = 0;
        sub_2282ABD68(v127, v128 + v267, type metadata accessor for Dosage);
        sub_2282ABCB0(&qword_27D8261F8, type metadata accessor for DosageCollectionViewCell, &protocol conformance descriptor for DosageCollectionViewCell);
        v129 = sub_22838FBB0();
        v130 = v262;
        *v262 = v129;
        v130[1] = v131;
        v130[2] = 0;
        v130[3] = 0xE000000000000000;
        v130[4] = 0;
        v130[5] = 0;
        v132 = (v130 + v76[11]);
        v133 = (v130 + v76[12]);
        v134 = (v130 + v76[13]);
        v135 = (v130 + v76[14]);
        (*v260)(v130 + v76[7], v282, v126);
        *(v130 + v76[8]) = 1;
        v136 = v273;
        *(v130 + v76[9]) = v273;
        v137 = (v130 + v76[10]);
        v138 = v272;
        v139 = v271;
        *v137 = v272;
        v137[1] = v139;
        v140 = v270;
        v141 = v283;
        v137[2] = v270;
        v137[3] = v141;
        *v132 = sub_22826779C;
        v132[1] = v128;
        v143 = v276;
        v142 = v277;
        *v133 = sub_2282AB704;
        v133[1] = v142;
        *v135 = sub_2282AB70C;
        v135[1] = v143;
        *v134 = sub_2282AB714;
        v134[1] = v275;
        v122 = v284;
        sub_2282AB724(v130, v280, type metadata accessor for DosageItem);
        v144 = v136;
        sub_228267888(v138, v139, v140, v283);

        sub_2282AB78C(v281, type metadata accessor for Dosage);
        sub_2282AB78C(v130, type metadata accessor for DosageItem);
        v285 = v122;
        v146 = *(v122 + 16);
        v145 = *(v122 + 24);
        v147 = v280;
        if (v146 >= v145 >> 1)
        {
          sub_2281C9DB4((v145 > 1), v146 + 1, 1);
          v122 = v285;
        }

        v76 = v274;
        v288 = v274;
        v289 = sub_2282ABCB0(&qword_27D826210, type metadata accessor for DosageItem, &protocol conformance descriptor for DosageItem);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v287);
        sub_2282AB724(v147, boxed_opaque_existential_1, type metadata accessor for DosageItem);
        *(v122 + 16) = v146 + 1;
        sub_22816DFFC(&v287, v122 + 40 * v146 + 32);
        sub_2282AB78C(v147, type metadata accessor for DosageItem);
        v124 = v278 + v266;
        v121 = (v279 - 1);
      }

      while (v279 != 1);
      v284 = v122;
      v111 = v257;
    }

    else
    {
      v284 = MEMORY[0x277D84F90];
    }

    v149 = v251;
    sub_228391520();
    v150 = sub_228391FC0();
    v151 = [objc_opt_self() systemImageNamed_];

    sub_228391550();
    v152 = objc_opt_self();
    v153 = [v152 systemGreenColor];
    v154 = sub_228391480();
    sub_228391470();
    v154(&v287, 0);
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_228391540();
    v155 = [v152 systemBlueColor];
    v156 = sub_228391450();
    sub_228391420();
    v156(&v287, 0);
    v157 = v211;
    sub_228391390();
    sub_228392BD0();
    sub_228391370();
    v158 = v252;
    v288 = v252;
    v289 = MEMORY[0x277D74C30];
    v159 = __swift_allocate_boxed_opaque_existential_1(&v287);
    (*v201)(v159, v149, v158);
    v160 = swift_allocObject();
    *(v160 + 16) = sub_2282AB6FC;
    *(v160 + 24) = v111;
    v161 = v219;
    *v219 = 1;
    (*v199)(v161, v200, v220);
    v162 = v221;
    v163 = v255;
    v239(v221, v157, v255);
    v238(v162, 0, 1, v163);
    v285 = v235;
    v286 = v237;

    MEMORY[0x22AAB5C80](0x656D69546464412ELL, 0xEC0000006C6C6543);
    (*v197)(v222, v198, v223);
    v164 = v248;
    sub_228390160();
    (*v227)(v157, v163);
    (*v196)(v251, v252);

    v165 = *v195;
    (*v195)(v249, v164, v250);
    v166 = v284;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v166 = sub_228198710(0, v166[2] + 1, 1, v166);
    }

    v168 = v166[2];
    v167 = v166[3];
    v76 = v274;
    if (v168 >= v167 >> 1)
    {
      v166 = sub_228198710((v167 > 1), v168 + 1, 1, v166);
    }

    v169 = *v194;
    v170 = v250;
    (*v194)(v248, v250);
    v288 = v170;
    v289 = sub_2282ABCB0(&qword_27D824520, MEMORY[0x277D11000], MEMORY[0x277D10FF8]);
    v171 = __swift_allocate_boxed_opaque_existential_1(&v287);
    v172 = v249;
    v165(v171, v249, v170);
    v166[2] = v168 + 1;
    sub_22816DFFC(&v287, &v166[5 * v168 + 4]);
    v169(v172, v170);

    sub_2282AA2F8(0, &qword_27D823918, sub_228182780, MEMORY[0x277D84560]);
    v173 = swift_allocObject();
    *(v173 + 16) = v225;
    *(v173 + 56) = v259;
    *(v173 + 64) = sub_2282ABCB0(&qword_27D826E98, type metadata accessor for DayPickerItem, &unk_2283A51BC);
    v174 = __swift_allocate_boxed_opaque_existential_1((v173 + 32));
    v77 = v230;
    sub_2282AB724(v230, v174, type metadata accessor for DayPickerItem);
    v175 = sub_228194894(v166);

    *&v287 = v173;
    sub_2281D55FC(v175);
    *&v287 = v258;
    sub_228393420();
    sub_22838FED0();
    v75 = v243;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v75 = sub_228198AA0(0, v75[2] + 1, 1, v75);
    }

    v177 = v75[2];
    v176 = v75[3];
    if (v177 >= v176 >> 1)
    {
      v75 = sub_228198AA0((v176 > 1), v177 + 1, 1, v75);
    }

    sub_2282AB78C(v77, type metadata accessor for DayPickerItem);
    v75[2] = v177 + 1;
    (*(v233 + 32))(v75 + ((*(v233 + 80) + 32) & ~*(v233 + 80)) + *(v233 + 72) * v177, v253, v232);
    sub_2282AB78C(v247, type metadata accessor for WeekdaysAndDosages);
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_2282A36E4();
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for ButtonBackgroundColorCell(0);

  sub_22838FBB0();
  v178 = v189;
  sub_228390100();

  sub_2282AA2F8(0, &qword_27D823918, sub_228182780, MEMORY[0x277D84560]);
  v179 = swift_allocObject();
  *(v179 + 16) = v225;
  v180 = v191;
  *(v179 + 56) = v191;
  *(v179 + 64) = sub_2282ABCB0(&qword_27D826E90, MEMORY[0x277D10FC0], MEMORY[0x277D10FB8]);
  v181 = __swift_allocate_boxed_opaque_existential_1((v179 + 32));
  v182 = v190;
  (*(v190 + 16))(v181, v178, v180);
  v183 = v188;
  sub_22838FED0();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v75 = sub_228198AA0(0, v75[2] + 1, 1, v75);
  }

  v185 = v75[2];
  v184 = v75[3];
  if (v185 >= v184 >> 1)
  {
    v75 = sub_228198AA0((v184 > 1), v185 + 1, 1, v75);
  }

  v75[2] = v185 + 1;
  (*(v233 + 32))(v75 + ((*(v233 + 80) + 32) & ~*(v233 + 80)) + *(v233 + 72) * v185, v183, v232);
  sub_22838FF50();

  (*(v182 + 8))(v178, v180);
  return (*v227)(v231, v255);
}

uint64_t sub_2282A65F0(char *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v51 = a4;
  v53 = a1;
  v52 = type metadata accessor for WeekdaysAndDosages(0);
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_228391130();
  v55 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v50 = &v42 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v42 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v42 - v18);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v42 - v21;
  MEMORY[0x28223BE20](v20);
  v54 = &v42 - v23;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v46 = qword_27D826E20;
    v25 = *(result + qword_27D826E20);
    sub_228391870();
    if ((a3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v25 = v56[0];
      if (*(v56[0] + 16) > a3)
      {
        v44 = (v5[80] + 32) & ~v5[80];
        v45 = a3;
        v43 = *(v5 + 9) * a3;
        sub_2282AB724(v56[0] + v44 + v43, v7, type metadata accessor for WeekdaysAndDosages);

        v26 = *(v55 + 16);
        v27 = v7 + *(v52 + 20);
        v47 = v16;
        v28 = v22;
        v29 = v54;
        v26(v54, v27, v8);
        sub_2282AB78C(v7, type metadata accessor for WeekdaysAndDosages);
        v49 = v19;
        v30 = v53;
        v26(v19, v53, v8);
        v26(v50, v30, v8);
        v48 = v28;
        v26(v11, v29, v8);
        v31 = MEMORY[0x277D11768];
        sub_2282ABCB0(&qword_27D824820, MEMORY[0x277D11768], MEMORY[0x277D11788]);
        v32 = v47;
        sub_228392FD0();
        v33 = v32;
        sub_228392FB0();
        v34 = *(v55 + 8);
        v34(v32, v8);
        sub_22828F718();
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_228397F40;
        v56[0] = 0;
        v56[1] = 0xE000000000000000;

        sub_2283931D0();

        strcpy(v56, "DayPickerItem-");
        HIBYTE(v56[1]) = -18;
        MEMORY[0x22AAB5C80](*v51, v51[1]);
        v36 = v56[1];
        *(v35 + 32) = v56[0];
        *(v35 + 40) = v36;
        v37 = sub_22838FF90();
        sub_228241B70();
        sub_2283915C0();

        v37(v56, 0);
        v16 = v34;
        v22 = v48;

        sub_2282A39F0(v33);
        sub_2282ABCB0(&qword_27D824818, v31, MEMORY[0x277D11780]);
        sub_228392170();
        sub_2282ABCB0(&qword_280DDBD00, v31, MEMORY[0x277D11790]);
        v38 = v49;
        sub_2283935F0();
        sub_228392FC0();
        (v16)(v33, v8);
        sub_228393020();
        sub_2282ABCB0(&qword_280DDBD08, v31, MEMORY[0x277D11778]);
        v39 = sub_228391FB0();
        (v16)(v33, v8);
        (v16)(v38, v8);
        if (v39 & 1) == 0 || (sub_228393020(), v40 = sub_228391FB0(), (v16)(v38, v8), (v40))
        {
          type metadata accessor for ListOfWeekdaysAndDosagesPickerDataSource(0);
          sub_22838FD00();

          (v16)(v22, v8);
          return (v16)(v54, v8);
        }

        v5 = v53;
        v25 = sub_228391860();
        v7 = v41;
        v19 = *v41;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v7 = v19;
        if (result)
        {
          goto LABEL_8;
        }

        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_13:
    result = sub_2281D9300(v19);
    v19 = result;
    *v7 = result;
LABEL_8:
    if (v19[2] <= v45)
    {
      __break(1u);
    }

    else
    {
      (*(v55 + 24))(v19 + v44 + v43 + *(v52 + 20), v5, v8);
      v25(v56, 0);
      (v16)(v22, v8);
      (v16)(v54, v8);
    }
  }

  return result;
}

uint64_t sub_2282A6D68(char *a1, unint64_t a2)
{
  v38 = a2;
  v3 = type metadata accessor for WeekdaysAndDosages(0);
  v37 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Dosage(0);
  v7 = *(v6 - 8);
  v35 = v6;
  v36 = v7;
  v8 = MEMORY[0x28223BE20](v6);
  v34 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  sub_2282AA2F8(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v33 - v13;
  v15 = sub_22838F440();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = &v33 - v20;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v33 = v21;
  v21 = v3;
  v3 = Strong;

  sub_228391870();

  if ((v38 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (*(v39[0] + 16) <= v38)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_2282AB724(v39[0] + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v38, v5, type metadata accessor for WeekdaysAndDosages);

  v3 = v21;
  v23 = *(v5 + *(v21 + 6));

  sub_2282AB78C(v5, type metadata accessor for WeekdaysAndDosages);
  v24 = *(v23 + 16);
  if (v24)
  {
    sub_2282AB724(v23 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * (v24 - 1), v11, type metadata accessor for Dosage);

    v5 = v35;
    (*(v16 + 16))(v19, &v11[*(v35 + 5)], v15);
    sub_2282AB78C(v11, type metadata accessor for Dosage);
    sub_22838F350();
    (*(v16 + 8))(v19, v15);
    (*(v16 + 56))(v14, 0, 1, v15);
    v21 = v33;
    (*(v16 + 32))(v33, v14, v15);
    goto LABEL_9;
  }

  v21 = v33;
LABEL_7:
  (*(v16 + 56))(v14, 1, 1, v15);
  sub_22838F430();
  v25 = (*(v16 + 48))(v14, 1, v15);
  v5 = v35;
  if (v25 != 1)
  {
    sub_2282ABCF8(v14, &qword_280DDCDB0, MEMORY[0x277CC9578]);
  }

LABEL_9:
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return (*(v16 + 8))(v21, v15);
  }

  a1 = v34;
  (*(v16 + 16))(&v34[*(v5 + 20)], v21, v15);
  sub_22838F490();
  *&a1[*(v5 + 24)] = 0x3FF0000000000000;
  v14 = sub_228391860();
  v11 = v26;
  v19 = *v26;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v11 = v19;
  if (isUniquelyReferenced_nonNull_native)
  {
    v28 = v38;
    if ((v38 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_20:
  v19 = sub_2281D9300(v19);
  *v11 = v19;
  v28 = v38;
  if ((v38 & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  if (v19[2] <= v28)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v35 = v14;
  v11 = v19 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v28;
  v5 = *(v3 + 24);
  v19 = *&v11[v5];
  v29 = swift_isUniquelyReferenced_nonNull_native();
  *&v11[v5] = v19;
  v14 = v21;
  if ((v29 & 1) == 0)
  {
LABEL_23:
    v19 = sub_2281984E8(0, v19[2] + 1, 1, v19);
    *&v11[v5] = v19;
  }

  v31 = v19[2];
  v30 = v19[3];
  if (v31 >= v30 >> 1)
  {
    v19 = sub_2281984E8((v30 > 1), v31 + 1, 1, v19);
    *&v11[v5] = v19;
  }

  v19[2] = v31 + 1;
  sub_2282ABD68(a1, v19 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v31, type metadata accessor for Dosage);
  (v35)(v39, 0);

  v21 = v14;
  return (*(v16 + 8))(v21, v15);
}

uint64_t sub_2282A7440(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_228391DC0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v39 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_228391DF0();
  v38 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v37 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for WeekdaysAndDosages(0);
  v13 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a3;
  sub_228391870();
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v16 = a2;
  if (*(aBlock[0] + 16) <= a4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v33 = v11;
  v34 = v9;
  v35 = v8;
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = *(v13 + 72) * a4;
  sub_2282AB724(aBlock[0] + v17 + v18, v15, type metadata accessor for WeekdaysAndDosages);

  v19 = *&v15[*(v40 + 24)];

  v20 = sub_2282AB78C(v15, type metadata accessor for WeekdaysAndDosages);
  MEMORY[0x28223BE20](v20);
  *(&v32 - 2) = a1;
  *(&v32 - 1) = v16;
  a1 = 0;
  v21 = sub_2282A2F90(sub_2282ABB50, (&v32 - 4), v19);

  aBlock[0] = v21;

  sub_2282A363C(aBlock);

  v22 = aBlock[0];
  sub_228391870();
  if (*(aBlock[0] + 16) <= a4)
  {
LABEL_10:
    __break(1u);

    __break(1u);
    return result;
  }

  sub_2282AB724(aBlock[0] + v17 + v18, v15, type metadata accessor for WeekdaysAndDosages);

  v23 = *&v15[*(v40 + 24)];

  sub_2282AB78C(v15, type metadata accessor for WeekdaysAndDosages);
  v24 = sub_2282109A4(v22, v23);

  if (v24)
  {
  }

  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v26 = sub_228392790();
  v27 = swift_allocObject();
  v27[2] = v36;
  v27[3] = a4;
  v27[4] = v22;
  aBlock[4] = sub_2282ABB6C;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228191E9C;
  aBlock[3] = &block_descriptor_19;
  v28 = _Block_copy(aBlock);

  v29 = v37;
  sub_228391DE0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2282ABCB0(&qword_280DDCF10, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_2282AA2F8(0, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_228216D44();
  v30 = v39;
  v31 = v35;
  sub_228393030();
  MEMORY[0x22AAB6340](0, v29, v30, v28);
  _Block_release(v28);

  (*(v34 + 8))(v30, v31);
  return (*(v38 + 8))(v29, v33);
}

uint64_t sub_2282A79B4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for DosageItem(0);
  if (sub_22838F470())
  {
    return sub_2282ABB90(a3, a4, &qword_27D826200, type metadata accessor for Dosage);
  }

  sub_2282AB724(a1, a4, type metadata accessor for Dosage);
  v8 = type metadata accessor for Dosage(0);
  return (*(*(v8 - 8) + 56))(a4, 0, 1, v8);
}

uint64_t sub_2282A7AA0(uint64_t a1, unint64_t a2, uint64_t a3)
{

  v5 = sub_228391860();
  v7 = v6;
  v8 = *v6;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v8;
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_2281D9300(v8);
  v8 = result;
  *v7 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v8[2] > a2)
  {
    v10 = type metadata accessor for WeekdaysAndDosages(0);
    *(v8 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)) + *(*(v10 - 8) + 72) * a2 + *(v10 + 24)) = a3;

    return v5(&v11, 0);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2282A7BC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    MEMORY[0x28223BE20](v7);
    v16[2] = a2;
    v8 = sub_228391860();
    v10 = v9;
    v11 = *v9;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v10 = v11;
    if (result)
    {
      if ((a4 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = sub_2281D9300(v11);
      v11 = result;
      *v10 = result;
      if ((a4 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (v11[2] > a4)
        {
          v12 = type metadata accessor for WeekdaysAndDosages(0);
          v13 = v11 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80)) + *(*(v12 - 8) + 72) * a4;
          v14 = *(v12 + 24);
          result = sub_2282AB820(sub_2282AB7EC, v16);
          v15 = *(*(v13 + v14) + 16);
          if (v15 >= result)
          {
            sub_2282C5A68(result, v15);
            v8(v17, 0);
          }

LABEL_11:
          __break(1u);
          return result;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_2282A7D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v55 = a6;
  v57 = a2;
  v43 = a1;
  v6 = sub_22838F6A0();
  v45 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_22838F6C0();
  v44 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for Dosage(0);
  v53 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WeekdaysAndDosages(0);
  v50 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282AA2F8(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v39 - v17;
  v19 = sub_22838F440();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v54 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = result;
    v42 = *(type metadata accessor for DosageItem(0) + 28);
    sub_2282ABB90(v57, v18, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {

      sub_2282ABCF8(v18, &qword_280DDCDB0, MEMORY[0x277CC9578]);
      return 1;
    }

    (*(v20 + 32))(v54, v18, v19);
    result = sub_228391870();
    if ((v55 & 0x8000000000000000) != 0)
    {
      goto LABEL_20;
    }

    if (*(v58 + 16) <= v55)
    {
LABEL_21:
      __break(1u);
      return result;
    }

    v39 = v23;
    v40 = v20;
    v41 = v19;
    v49 = v6;
    sub_2282AB724(v58 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v55, v15, type metadata accessor for WeekdaysAndDosages);

    v24 = *&v15[*(v13 + 24)];

    result = sub_2282AB78C(v15, type metadata accessor for WeekdaysAndDosages);
    v50 = v24;
    v48 = *(v24 + 16);
    if (!v48)
    {
LABEL_16:

      (*(v40 + 8))(v54, v41);
      return 1;
    }

    v25 = 0;
    v47 = v50 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
    v46 = *MEMORY[0x277CC9980];
    v26 = (v45 + 13);
    v27 = v45 + 1;
    v45 = (v44 + 8);
    LODWORD(v44) = *MEMORY[0x277CC99A0];
    v56 = v12;
    while (1)
    {
      if (v25 >= *(v50 + 16))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v28 = *(v53 + 72);
      v57 = v25;
      sub_2282AB724(v47 + v28 * v25, v12, type metadata accessor for Dosage);
      v29 = *(v51 + 20);
      sub_22838F680();
      v30 = *v26;
      v31 = v46;
      v32 = v49;
      (*v26)(v8, v46, v49);
      v55 = v29;
      v33 = sub_22838F6B0();
      v34 = *v27;
      (*v27)(v8, v32);
      v30(v8, v31, v32);
      v35 = sub_22838F6B0();
      v34(v8, v32);
      if (v33 != v35)
      {
        break;
      }

      v36 = v44;
      v30(v8, v44, v32);
      v55 = sub_22838F6B0();
      v34(v8, v32);
      v30(v8, v36, v32);
      v37 = sub_22838F6B0();
      v34(v8, v32);
      (*v45)(v10, v52);
      if (v55 != v37)
      {
        goto LABEL_9;
      }

      sub_22838F4A0();
      sub_2282ABCB0(&qword_27D826208, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v12 = v56;
      v38 = sub_228391FB0();
      result = sub_2282AB78C(v12, type metadata accessor for Dosage);
      if ((v38 & 1) == 0)
      {

        (*(v40 + 8))(v54, v41);
        return 0;
      }

LABEL_10:
      v25 = v57 + 1;
      if (v48 == v57 + 1)
      {
        goto LABEL_16;
      }
    }

    (*v45)(v10, v52);
LABEL_9:
    v12 = v56;
    result = sub_2282AB78C(v56, type metadata accessor for Dosage);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_2282A8584(uint64_t a1, uint64_t a2)
{
  v2 = sub_22838F4A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22838F440();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WeekdaysAndDosages(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v37 - v14);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v40 = v10;
    v17 = v15 + *(v9 + 20);
    v38 = v9;
    sub_2282A8A20(v17);
    sub_2282AA2F8(0, &qword_27D823E30, type metadata accessor for Dosage, MEMORY[0x277D84560]);
    v18 = (type metadata accessor for Dosage(0) - 8);
    v19 = *(*v18 + 80);
    v37 = v6;
    v20 = v2;
    v21 = (v19 + 32) & ~v19;
    v22 = swift_allocObject();
    v39 = v13;
    v23 = v22;
    *(v22 + 16) = xmmword_228397F40;
    v24 = v22 + v21;
    v25 = v41;
    sub_22838F430();
    sub_22838F490();
    (*(v3 + 32))(v24, v5, v20);
    (*(v7 + 32))(v24 + v18[7], v25, v37);
    *(v24 + v18[8]) = 0x3FF0000000000000;
    sub_22838F490();
    v26 = sub_22838F450();
    v28 = v27;
    (*(v3 + 8))(v5, v20);
    *v15 = v26;
    v15[1] = v28;
    *(v15 + *(v38 + 24)) = v23;
    v29 = v39;
    sub_2282AB724(v15, v39, type metadata accessor for WeekdaysAndDosages);
    v30 = sub_228391860();
    v32 = v31;
    v33 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v32 = v33;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = sub_2281984B4(0, v33[2] + 1, 1, v33);
      *v32 = v33;
    }

    v36 = v33[2];
    v35 = v33[3];
    if (v36 >= v35 >> 1)
    {
      v33 = sub_2281984B4((v35 > 1), v36 + 1, 1, v33);
      *v32 = v33;
    }

    v33[2] = v36 + 1;
    sub_2282ABD68(v29, v33 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v36, type metadata accessor for WeekdaysAndDosages);
    v30(v42, 0);
    sub_2282AB78C(v15, type metadata accessor for WeekdaysAndDosages);
  }

  return result;
}

uint64_t sub_2282A8A20@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_22838F6C0();
  v44 = *(v1 - 8);
  v45 = v1;
  MEMORY[0x28223BE20](v1);
  v43 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_228391060();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_228391130();
  v47 = *(v5 - 8);
  v6 = v47;
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v38 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v38 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v38 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v38 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v38 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v38 - v27;
  sub_2283910C0();
  sub_2282A39F0(v23);
  v29 = *(v6 + 16);
  v29(v20, v26, v5);
  v29(v14, v26, v5);
  v29(v11, v23, v5);
  sub_2282ABCB0(&qword_27D824820, MEMORY[0x277D11768], MEMORY[0x277D11788]);
  sub_228392FD0();
  sub_228392FB0();
  v30 = *(v47 + 8);
  v30(v17, v5);
  v30(v23, v5);
  v30(v26, v5);
  v31 = v43;
  sub_22838F680();
  v32 = sub_228391030();
  (*(v44 + 8))(v31, v45);
  if (*(v32 + 16))
  {
    v33 = v40;
    v34 = v41;
    v35 = v42;
    (*(v41 + 16))(v40, v32 + ((*(v34 + 80) + 32) & ~*(v34 + 80)), v42);

    v36 = v39;
    sub_228391040();
    v30(v28, v5);
    (*(v34 + 8))(v33, v35);
    v28 = v36;
  }

  else
  {
  }

  return (*(v47 + 32))(v46, v28, v5);
}

uint64_t sub_2282A8ED0()
{
  sub_228267618(*(v0 + qword_27D826E18), *(v0 + qword_27D826E18 + 8), *(v0 + qword_27D826E18 + 16), *(v0 + qword_27D826E18 + 24));
}

uint64_t sub_2282A8F4C()
{
  v0 = sub_22838FFB0();
  v1 = *(v0 + qword_27D826E10);

  sub_228267618(*(v0 + qword_27D826E18), *(v0 + qword_27D826E18 + 8), *(v0 + qword_27D826E18 + 16), *(v0 + qword_27D826E18 + 24));

  return swift_deallocClassInstance();
}

id sub_2282A9064()
{
  sub_2282AA2F8(0, &qword_280DDB950, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v32 = &v29 - v1;
  v31 = sub_228392D00();
  v2 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_228392CC0();
  v5 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_228392D80();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_228392DE0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228392DD0();
  (*(v9 + 104))(v11, *MEMORY[0x277D75028], v8);
  sub_228392CB0();
  v16 = v15;
  (*(v5 + 104))(v7, *MEMORY[0x277D74FD8], v30);
  sub_228392CD0();
  (*(v2 + 104))(v4, *MEMORY[0x277D74FF0], v31);
  sub_228392D20();
  v17 = [objc_opt_self() buttonWithType_];
  v18 = v32;
  (*(v13 + 16))(v32, v16, v12);
  (*(v13 + 56))(v18, 0, 1, v12);
  sub_228392E10();
  [v17 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  v19 = [objc_opt_self() systemBlueColor];
  [v17 setTintColor_];

  v20 = [v17 titleLabel];
  [v20 setAdjustsFontForContentSizeCategory_];

  v21 = [v17 titleLabel];
  if (v21)
  {
    v22 = v21;
    v23 = [objc_opt_self() preferredFontForTextStyle_];
    [v22 setFont_];
  }

  v24 = [v17 titleLabel];
  if (v24)
  {
    v25 = v24;
    [v24 setTextAlignment_];
  }

  v26 = [v17 titleLabel];
  if (v26)
  {
    v27 = v26;
    [v26 setNumberOfLines_];
  }

  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  (*(v13 + 8))(v16, v12);
  return v17;
}

id sub_2282A957C(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for ButtonBackgroundColorCell(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_2282A95F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ButtonBackgroundColorCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2282A9680(uint64_t a1)
{
  sub_228391130();
  if (v1 <= 0x3F)
  {
    sub_2282AA2F8(319, &qword_27D826E68, type metadata accessor for Dosage, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2282A9744()
{
  type metadata accessor for ScheduleHeaderCell();
  sub_2282ABCB0(&qword_27D825830, type metadata accessor for ScheduleHeaderCell, &unk_2283989A4);
  sub_2283926D0();
  type metadata accessor for DayPickerCollectionViewCell();
  sub_2282ABCB0(&qword_27D826E70, type metadata accessor for DayPickerCollectionViewCell, &unk_2283A511C);
  sub_2283926B0();
  type metadata accessor for DosageCollectionViewCell(0);
  sub_2282ABCB0(&qword_27D8261F8, type metadata accessor for DosageCollectionViewCell, &protocol conformance descriptor for DosageCollectionViewCell);
  sub_2283926B0();
  sub_2283904F0();
  sub_2283926B0();
  type metadata accessor for ButtonBackgroundColorCell(0);
  return sub_2283926B0();
}

uint64_t sub_2282A9884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v27 = *v5;
  v10 = sub_22838F760();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  if (sub_228392000() == a1 && v13 == a2)
  {
  }

  else
  {
    v15 = sub_228393460();

    if ((v15 & 1) == 0)
    {
      a4[3] = sub_22838FC00();
      a4[4] = sub_2282ABCB0(&qword_27D823958, MEMORY[0x277D10EC8], MEMORY[0x277D10EC0]);
      __swift_allocate_boxed_opaque_existential_1(a4);
      return sub_22838FBF0();
    }
  }

  sub_22838F750();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v26 = sub_22838F0C0();
  v18 = v17;

  v19 = sub_22838F750() != 0;
  v20 = swift_allocObject();
  swift_weakInit();
  (*(v11 + 16))(&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v10);
  v21 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  (*(v11 + 32))(v22 + v21, &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  *(v22 + ((v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
  type metadata accessor for ScheduleHeaderCell();
  sub_2282ABCB0(&qword_27D825830, type metadata accessor for ScheduleHeaderCell, &unk_2283989A4);

  v23 = sub_22838FBB0();
  v25 = v24;
  sub_22838FBB0();

  a4[3] = &type metadata for ScheduleHeaderItem;
  a4[4] = sub_228194464();
  result = swift_allocObject();
  *a4 = result;
  *(result + 16) = v26;
  *(result + 24) = v18;
  *(result + 32) = v19;
  *(result + 40) = sub_2282AA268;
  *(result + 48) = v22;
  *(result + 56) = v23;
  *(result + 64) = v25;
  return result;
}

uint64_t sub_2282A9C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29[1] = a3;
  v4 = sub_22838F760();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2283911B0();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282AA2F8(0, &qword_27D826E78, type metadata accessor for WeekdaysAndDosages, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v29 - v12;
  swift_beginAccess();
  if (!swift_weakLoadStrong() || (, , sub_228391870(), , v14 = *(v32[0] + 16), , v15 = sub_22838F750(), v15 < 0) || v15 >= v14)
  {
    sub_228391150();
    (*(v5 + 16))(v7, a2, v4);
    v19 = sub_2283911A0();
    v20 = sub_2283925C0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32[0] = v22;
      *v21 = 136446466;
      v23 = sub_228393600();
      v25 = sub_2281C96FC(v23, v24, v32);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2050;
      v26 = sub_22838F750();
      (*(v5 + 8))(v7, v4);
      *(v21 + 14) = v26;
      _os_log_impl(&dword_22816B000, v19, v20, "%{public}s Attempting to remove out of bounds section: %{public}ld ", v21, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x22AAB7B80](v22, -1, -1);
      MEMORY[0x22AAB7B80](v21, -1, -1);
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }

    return (*(v30 + 8))(v10, v31);
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      v16 = sub_22838F750();
      v17 = sub_228391860();
      sub_2282A3484(v16, v13);
      v17(v32, 0);

      v18 = 0;
    }

    else
    {
      v18 = 1;
    }

    v28 = type metadata accessor for WeekdaysAndDosages(0);
    (*(*(v28 - 8) + 56))(v13, v18, 1, v28);
    return sub_2282ABCF8(v13, &qword_27D826E78, type metadata accessor for WeekdaysAndDosages);
  }
}

char *sub_2282AA0D8()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2283901D0();
  type metadata accessor for ListOfWeekdaysAndDosagesPickerDataSource(0);
  result = sub_22838FD30();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    if (v4 == result - 1)
    {
      sub_228390040();
    }

    else
    {
      sub_228390010();
    }

    sub_2283901C0();
    v6 = sub_2283900C0();
    swift_unknownObjectRelease();
    [v6 contentInsets];
    [v6 setContentInsets_];
    (*(v1 + 8))(v3, v0);
    return v6;
  }

  return result;
}

uint64_t sub_2282AA268()
{
  v1 = *(sub_22838F760() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2282A9C44(v3, v0 + v2, v4);
}

void sub_2282AA2F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2282AA35C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_228393410();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for Dosage(0);
        v6 = sub_228392220();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Dosage(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2282AA6EC(v8, v9, a1, v4);
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
    return sub_2282AA488(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2282AA488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for Dosage(0);
  v9 = MEMORY[0x28223BE20](v8);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_2282AB724(v23, v17, type metadata accessor for Dosage);
      sub_2282AB724(v20, v13, type metadata accessor for Dosage);
      v24 = sub_22838F3A0();
      sub_2282AB78C(v13, type metadata accessor for Dosage);
      result = sub_2282AB78C(v17, type metadata accessor for Dosage);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_2282ABD68(v23, v35, type metadata accessor for Dosage);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_2282ABD68(v25, v20, type metadata accessor for Dosage);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2282AA6EC(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v9 = type metadata accessor for Dosage(0);
  v112 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v107 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v115 = &v100 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v116 = &v100 - v15;
  result = MEMORY[0x28223BE20](v14);
  v18 = &v100 - v17;
  v114 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_2283406C0(a4);
    }

    v118 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *(result + 16 * a4);
        v97 = result;
        v98 = *(result + 16 * (a4 - 1) + 40);
        sub_2282AB050(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *(result + 16 * (a4 - 1) + 32), *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_2283406C0(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v118 = v97;
        sub_228340634(a4 - 1);
        result = v118;
        a4 = *(v118 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v103 = a4;
  v117 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v108 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v112 + 72);
      v5 = *v114 + v24 * v23;
      v110 = *v114;
      v25 = v110;
      sub_2282AB724(v110 + v24 * v23, v18, type metadata accessor for Dosage);
      v26 = v25 + v24 * v22;
      v27 = v22;
      v28 = v116;
      sub_2282AB724(v26, v116, type metadata accessor for Dosage);
      LODWORD(v111) = sub_22838F3A0();
      sub_2282AB78C(v28, type metadata accessor for Dosage);
      result = sub_2282AB78C(v18, type metadata accessor for Dosage);
      v102 = v27;
      v29 = v27 + 2;
      v113 = v24;
      v30 = v110 + v24 * (v27 + 2);
      while (v19 != v29)
      {
        sub_2282AB724(v30, v18, type metadata accessor for Dosage);
        v31 = v116;
        sub_2282AB724(v5, v116, type metadata accessor for Dosage);
        v32 = sub_22838F3A0() & 1;
        sub_2282AB78C(v31, type metadata accessor for Dosage);
        result = sub_2282AB78C(v18, type metadata accessor for Dosage);
        ++v29;
        v30 += v113;
        v5 += v113;
        if ((v111 & 1) != v32)
        {
          v19 = v29 - 1;
          break;
        }
      }

      v22 = v102;
      a4 = v103;
      if (v111)
      {
        if (v19 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v19)
        {
          v101 = v6;
          v33 = v113 * (v19 - 1);
          v34 = v19;
          v35 = v19 * v113;
          v111 = v19;
          v36 = v102;
          v37 = v102;
          v38 = v102 * v113;
          do
          {
            if (v36 != --v34)
            {
              v39 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v39 + v38;
              sub_2282ABD68(v39 + v38, v107, type metadata accessor for Dosage);
              if (v38 < v33 || v5 >= v39 + v35)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v38 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_2282ABD68(v107, v39 + v33, type metadata accessor for Dosage);
            }

            ++v36;
            v33 -= v113;
            v35 -= v113;
            v38 += v113;
          }

          while (v36 < v34);
          v6 = v101;
          a4 = v103;
          v22 = v37;
          v19 = v111;
        }
      }
    }

    v40 = v114[1];
    if (v19 < v40)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_124;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if ((v22 + a4) >= v40)
        {
          v41 = v114[1];
        }

        else
        {
          v41 = v22 + a4;
        }

        if (v41 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v19 != v41)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v108;
    }

    else
    {
      result = sub_228198978(0, *(v108 + 2) + 1, 1, v108);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v42 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v42 >> 1)
    {
      result = sub_228198978((v42 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v43 = &v21[16 * a4];
    *(v43 + 4) = v22;
    *(v43 + 5) = v20;
    v44 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v46 = *(v21 + 4);
          v47 = *(v21 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_52:
          if (v49)
          {
            goto LABEL_112;
          }

          v62 = &v21[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_115;
          }

          v68 = &v21[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_119;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v72 = &v21[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_66:
        if (v67)
        {
          goto LABEL_114;
        }

        v75 = &v21[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_117;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v45 - 1;
        if (v45 - 1 >= v5)
        {
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
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v83 = v21;
        v84 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v45 + 40];
        sub_2282AB050(*v114 + *(v112 + 72) * v84, *v114 + *(v112 + 72) * *&v21[16 * v45 + 32], *v114 + *(v112 + 72) * v5, v44);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_2283406C0(v83);
        }

        if (a4 >= *(v83 + 2))
        {
          goto LABEL_109;
        }

        v85 = &v83[16 * a4];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v118 = v83;
        result = sub_228340634(v45);
        v21 = v118;
        v5 = *(v118 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v21[16 * v5 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_110;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v57 = &v21[16 * v5];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_113;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_116;
      }

      if (v61 >= v53)
      {
        v79 = &v21[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_120;
        }

        if (v48 < v82)
        {
          v45 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v114[1];
    a4 = v103;
    if (v20 >= v19)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v86 = v19;
  v87 = v22;
  v88 = *v114;
  v89 = *(v112 + 72);
  v90 = *v114 + v89 * (v19 - 1);
  v91 = -v89;
  v102 = v87;
  v92 = v87 - v19;
  v111 = v86;
  v105 = v89;
  v106 = v41;
  v5 = v88 + v86 * v89;
LABEL_85:
  v109 = v5;
  v110 = v92;
  v113 = v90;
  while (1)
  {
    sub_2282AB724(v5, v18, type metadata accessor for Dosage);
    v93 = v116;
    sub_2282AB724(v90, v116, type metadata accessor for Dosage);
    a4 = sub_22838F3A0();
    sub_2282AB78C(v93, type metadata accessor for Dosage);
    result = sub_2282AB78C(v18, type metadata accessor for Dosage);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v20 = v106;
      v90 = v113 + v105;
      v92 = v110 - 1;
      v5 = v109 + v105;
      if (++v111 != v106)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v22 = v102;
      if (v106 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v88)
    {
      break;
    }

    a4 = type metadata accessor for Dosage;
    v94 = v115;
    sub_2282ABD68(v5, v115, type metadata accessor for Dosage);
    swift_arrayInitWithTakeFrontToBack();
    sub_2282ABD68(v94, v90, type metadata accessor for Dosage);
    v90 += v91;
    v5 += v91;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_2282AB050(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = type metadata accessor for Dosage(0);
  v8 = MEMORY[0x28223BE20](v45);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v43 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_59;
          }

          v37 = v23;
          v29 = a3 + v24;
          v30 = v25 + v24;
          v31 = v43;
          sub_2282AB724(v30, v43, type metadata accessor for Dosage);
          v32 = v44;
          sub_2282AB724(v27, v44, type metadata accessor for Dosage);
          v33 = sub_22838F3A0();
          sub_2282AB78C(v32, type metadata accessor for Dosage);
          sub_2282AB78C(v31, type metadata accessor for Dosage);
          if (v33)
          {
            break;
          }

          v23 = v30;
          if (a3 < v25 || v29 >= v25)
          {
            a3 = v29;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v39;
          }

          else
          {
            v34 = a3 == v25;
            a3 = v29;
            a1 = v39;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v27 = v42;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_58;
          }
        }

        if (a3 < v41 || v29 >= v41)
        {
          a3 = v29;
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          v34 = a3 == v41;
          a3 = v29;
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_58:
    v48 = a2;
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v43;
        sub_2282AB724(a2, v43, type metadata accessor for Dosage);
        v21 = v44;
        sub_2282AB724(a4, v44, type metadata accessor for Dosage);
        v22 = sub_22838F3A0();
        sub_2282AB78C(v21, type metadata accessor for Dosage);
        sub_2282AB78C(v20, type metadata accessor for Dosage);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_59:
  sub_2283333D8(&v48, &v47, &v46);
  return 1;
}

void sub_2282AB580(uint64_t a1)
{
  if (!qword_27D826E88)
  {
    type metadata accessor for WeekdaysAndDosages(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D826E88);
    }
  }
}

uint64_t sub_2282AB5EC(uint64_t a1, uint64_t a2)
{
  sub_2282AA2F8(0, &qword_27D826E80, sub_2282AB580, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2282AB688(char *a1)
{
  v3 = *(type metadata accessor for WeekdaysAndDosages(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_2282A65F0(a1, v4, v5, v6);
}

uint64_t sub_2282AB724(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2282AB78C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2282AB820(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for Dosage(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v34 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  v16 = *v2;
  result = sub_2282A2B2C(a1, a2, *v2);
  if (!v3)
  {
    v44 = 0;
    if (v18)
    {
      return *(v16 + 16);
    }

    v39 = v15;
    v40 = a1;
    v36 = v13;
    v37 = v10;
    v35 = v2;
    v43 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = (v16 + 16);
      v20 = *(v16 + 16);
      if (v19 == v20)
      {
        return v43;
      }

      v38 = v7;
      while (v19 < v20)
      {
        v22 = v16;
        v41 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v23 = v16 + v41;
        v24 = *(v7 + 72);
        v42 = v24 * v19;
        v25 = v39;
        sub_2282AB724(v23 + v24 * v19, v39, type metadata accessor for Dosage);
        v26 = a2;
        v27 = v44;
        v28 = v40(v25);
        result = sub_2282AB78C(v25, type metadata accessor for Dosage);
        v44 = v27;
        if (v27)
        {
          return result;
        }

        if (v28)
        {
          a2 = v26;
          v7 = v38;
          v16 = v22;
        }

        else
        {
          v29 = v43;
          if (v19 == v43)
          {
            a2 = v26;
            v7 = v38;
            v16 = v22;
          }

          else
          {
            if ((v43 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v30 = *v21;
            if (v43 >= *v21)
            {
              goto LABEL_27;
            }

            v31 = v24 * v43;
            result = sub_2282AB724(v23 + v24 * v43, v36, type metadata accessor for Dosage);
            if (v19 >= v30)
            {
              goto LABEL_28;
            }

            v32 = v42;
            sub_2282AB724(v23 + v42, v37, type metadata accessor for Dosage);
            v16 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_2281D9378(v22);
            }

            a2 = v26;
            v33 = v16 + v41;
            result = sub_2282675B4(v37, v16 + v41 + v31);
            if (v19 >= *(v16 + 16))
            {
              goto LABEL_29;
            }

            result = sub_2282675B4(v36, v33 + v32);
            *v35 = v16;
            v7 = v38;
            v29 = v43;
          }

          v43 = v29 + 1;
        }

        ++v19;
        v21 = (v16 + 16);
        v20 = *(v16 + 16);
        if (v19 == v20)
        {
          return v43;
        }
      }

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

    __break(1u);
  }

  return result;
}

uint64_t sub_2282ABB90(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2282AA2F8(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_2282ABC18(uint64_t a1)
{
  if (!qword_27D826EA0)
  {
    sub_2282AA2F8(255, &qword_27D826EA8, type metadata accessor for WeekdaysAndDosages, MEMORY[0x277D83940]);
    v1 = sub_228391880();
    if (!v2)
    {
      atomic_store(v1, &qword_27D826EA0);
    }
  }
}

uint64_t sub_2282ABCB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2282ABCF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2282AA2F8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2282ABD68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2282ABDD0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_228392500();
  if (!v19)
  {
    return sub_2283921F0();
  }

  v41 = v19;
  v45 = sub_228393280();
  v32 = sub_228393290();
  sub_228393230();
  result = sub_2283924F0();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_228392530();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_228393270();
      result = sub_228392520();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_2282AC1F0()
{
  v0 = sub_2282ADBC4();

  return v0;
}

void sub_2282AC218(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t DynamicDataSource.identifier.getter()
{
  v0 = sub_2282ADBBC();

  return v0;
}

uint64_t sub_2282AC2E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 136);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_2282AC388(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 136);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_2282AC4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + *(*v3 + 152));
  swift_beginAccess();
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  return swift_unknownObjectRelease();
}

char *DynamicDataSource.__allocating_init(dataSources:determinerPublisher:defaultDataSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v10 = sub_2282ADCA8(a1, a2, a3, a4, a5);

  swift_unknownObjectRelease();
  return v10;
}

char *DynamicDataSource.init(dataSources:determinerPublisher:defaultDataSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_2282ADCA8(a1, a2, a3, a4, a5);

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_2282AC5F4@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_22838FCE0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2282AC640()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v4[2] = *(v2 + 80);
  v4[3] = *(v2 + 88);
  v4[4] = v3;
  sub_228391880();

  swift_getWitnessTable();
  v5 = sub_228391AC0();

  *(v1 + *(*v1 + 144)) = v5;
}

uint64_t sub_2282AC79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a4;
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v45 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_228392F00();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v49 = *(TupleTypeMetadata2 - 8);
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v13 = &v44 - v12;
  v53 = v9;
  v55 = *(v9 - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v48 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v44 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v44 - v19;
  v54 = &v44 - v19;
  v21 = *(v7 + 16);
  v47 = a1;
  v21(&v44 - v19, a1, a3);
  v56 = v7;
  v22 = *(v7 + 56);
  v23 = 1;
  v22(v20, 0, 1, a3);
  swift_beginAccess();
  v51 = a2;
  if (swift_weakLoadStrong())
  {
    sub_2282AC2E8(v18);

    v23 = 0;
  }

  v22(v18, v23, 1, a3);
  v50 = TupleTypeMetadata2;
  v24 = *(TupleTypeMetadata2 + 48);
  v25 = v54;
  v26 = v55;
  v27 = v18;
  v28 = *(v55 + 16);
  v29 = v53;
  v28(v13, v54, v53);
  v52 = v24;
  v28(&v13[v24], v27, v29);
  v30 = *(v56 + 48);
  if (v30(v13, 1, a3) == 1)
  {
    v31 = *(v26 + 8);
    v31(v27, v29);
    v31(v25, v29);
    v32 = v13;
    if (v30(&v13[v52], 1, a3) == 1)
    {
      return (v31)(v13, v29);
    }
  }

  else
  {
    v44 = v27;
    v34 = v48;
    v28(v48, v13, v29);
    v35 = v52;
    v32 = v13;
    v36 = v29;
    if (v30(&v13[v52], 1, a3) != 1)
    {
      v38 = v56;
      v39 = &v13[v35];
      v40 = v45;
      (*(v56 + 32))(v45, v39, a3);
      v41 = sub_228391FB0();
      v42 = *(v38 + 8);
      v42(v40, a3);
      v43 = *(v55 + 8);
      v43(v44, v36);
      v43(v54, v36);
      v42(v34, a3);
      result = (v43)(v32, v36);
      if (v41)
      {
        return result;
      }

      goto LABEL_9;
    }

    v37 = *(v55 + 8);
    v37(v44, v36);
    v37(v54, v36);
    (*(v56 + 8))(v34, a3);
  }

  (*(v49 + 8))(v32, v50);
LABEL_9:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2282AD158(v47);
  }

  return result;
}

void sub_2282ACCE0(uint64_t a1)
{
  v2 = v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v14[-v5];
  swift_beginAccess();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = sub_22838FCF0();
  swift_unknownObjectRelease();
  [v7 unregisterObserver_];

  sub_2282AC2E8(v6);
  sub_2281A92A4();
  sub_228391F50();
  (*(v4 + 8))(v6, v3);
  v8 = v15;
  if (v15)
  {
    v9 = v16;
    v10 = v17;
  }

  else
  {
    v11 = *(v2 + 48);
    v12 = *(v2 + 56);
    v8 = swift_unknownObjectRetain();
    v9 = v11;
    v10 = v12;
  }

  sub_2282AC4B4(v8, v9, v10);
  swift_beginAccess();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_22838FCF0();
  swift_unknownObjectRelease();
  [v13 registerObserver_];
}

uint64_t sub_2282ACF28(uint64_t a1)
{
  swift_beginAccess();
  swift_getObjectType();
  return sub_228390430() & 1;
}

uint64_t sub_2282ACFAC(uint64_t a1)
{
  swift_beginAccess();
  swift_getObjectType();
  return sub_228390440();
}

uint64_t sub_2282AD048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_228241B70();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283915D0();

  sub_2282AE16C(v10, a5, v11, v12);

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2282AD158(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = &v6 - v1;
  (*(v3 + 16))(&v6 - v1);
  v4 = sub_2282AC388(v2);
  return sub_2282AD218(v4);
}

uint64_t sub_2282AD218(uint64_t a1)
{
  v2 = *v1;
  sub_2282ACCE0(a1);
  type metadata accessor for DynamicDataSource(0, *(v2 + 80), *(v2 + 88), v3);
  swift_getWitnessTable();

  return sub_22838FD00();
}

id *DynamicDataSource.deinit()
{
  v1 = *v0;

  swift_unknownObjectRelease();

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 17));

  swift_unknownObjectRelease();
  return v0;
}

uint64_t DynamicDataSource.__deallocating_deinit()
{
  DynamicDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2282AD424()
{
  v0 = sub_2282ADBBC();

  return v0;
}

uint64_t sub_2282AD45C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169918](a1, WitnessTable);
}

uint64_t sub_2282AD4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169910](a1, a2, a3, WitnessTable);
}

uint64_t DynamicDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t a4@<X8>)
{
  v5 = v4;
  v28 = *v4;
  v7 = sub_2283911B0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v5 + *(v28 + 152);
  swift_beginAccess();
  v12 = *(v11 + 2);
  v29 = *v11;
  v33 = v29;
  v34 = v12;
  sub_2281A92A4();
  sub_2281810DC(0, &qword_27D826EC0, MEMORY[0x277D11060]);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_22816DFFC(&v30, v35);
    __swift_project_boxed_opaque_existential_0(v35, v35[3]);
    sub_228390270();
    return __swift_destroy_boxed_opaque_existential_0(v35);
  }

  else
  {
    *&v29 = a4;
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    sub_228181138(&v30, qword_27D826EC8, &qword_27D826EC0, MEMORY[0x277D11060]);
    sub_228391150();

    v14 = sub_2283911A0();
    v15 = sub_2283925C0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v33 = v27;
      *v16 = 136315394;
      v17 = sub_228393600();
      v19 = sub_2281C96FC(v17, v18, &v33);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      v20 = v5 + *(*v5 + 152);
      swift_beginAccess();
      v21 = *(v20 + 2);
      v30 = *v20;
      *&v31 = v21;
      swift_unknownObjectRetain();
      v22 = sub_228392020();
      v24 = sub_2281C96FC(v22, v23, &v33);

      *(v16 + 14) = v24;
      _os_log_impl(&dword_22816B000, v14, v15, "[%s]: Cannot fetch supplementary item because child data source is not SupplementaryItemDataSource: %s", v16, 0x16u);
      v25 = v27;
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v25, -1, -1);
      MEMORY[0x22AAB7B80](v16, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    v26 = v29;
    v26[3] = sub_22838FCC0();
    v26[4] = sub_2282AE4F8(&qword_27D825EF8, MEMORY[0x277D10F20], MEMORY[0x277D10F18]);
    __swift_allocate_boxed_opaque_existential_1(v26);
    return sub_22838FCB0();
  }
}

Swift::Void __swiftcall DynamicDataSource.registerCells(for:)(UICollectionView *a1)
{
  v2 = *(v1 + 56);
  v12 = *(v1 + 40);
  *&v13 = v2;
  sub_2281A92A4();
  sub_2281810DC(0, &qword_27D8243D0, MEMORY[0x277D11070]);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_0(&v17, *(&v18 + 1));
    sub_2283902B0();
    __swift_destroy_boxed_opaque_existential_0(&v17);
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    sub_228181138(&v17, &qword_27D8243D8, &qword_27D8243D0, MEMORY[0x277D11070]);
  }

  v3 = *(v1 + 64);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      while (1)
      {
        v10 = *(v3 + 56) + 24 * (__clz(__rbit64(v6)) | (v9 << 6));
        v11 = *(v10 + 16);
        v6 &= v6 - 1;
        v15 = *v10;
        v16 = v11;
        swift_unknownObjectRetain();
        if (swift_dynamicCast())
        {
          sub_22816DFFC(&v12, &v17);
          __swift_project_boxed_opaque_existential_0(&v17, *(&v18 + 1));
          sub_2283902B0();
          __swift_destroy_boxed_opaque_existential_0(&v17);
          v8 = v9;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v14 = 0;
          v12 = 0u;
          v13 = 0u;
          sub_228181138(&v12, &qword_27D8243D8, &qword_27D8243D0, MEMORY[0x277D11070]);
          v8 = v9;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v9 = v8;
      }
    }
  }

  __break(1u);
}

uint64_t sub_2282ADBF8()
{
  v1 = v0 + *(*v0 + 152);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_2282ADC50()
{
  v1 = v0 + *(*v0 + 152);
  swift_beginAccess();
  return *v1;
}

char *sub_2282ADCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v40 = a4;
  v41 = a5;
  v42 = a2;
  v43 = a3;
  v8 = *v5;
  v9 = sub_22838FDE0();
  v38 = *(v9 - 8);
  v39 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v37 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v8 + 80);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v10);
  v15 = &v36 - v14;
  sub_2282AE4AC();
  v16 = sub_228392ED0();
  v17 = objc_allocWithZone(MEMORY[0x277CCDA88]);
  v18 = sub_228391FC0();
  v19 = [v17 initWithName:v18 loggingCategory:v16];

  *(v6 + 2) = v19;
  *&v6[*(*v6 + 144)] = 0;
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_2283931D0();

  v45 = 0xD000000000000012;
  v46 = 0x80000002283B12C0;
  sub_2281A92A4();
  v44 = a1;
  v20 = sub_228391F30();

  WitnessTable = swift_getWitnessTable();
  v23 = sub_2282ABDD0(sub_2282AC5F4, 0, v20, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v22);

  v44 = v23;
  sub_228231DFC();
  sub_2282AE4F8(&qword_27D825080, sub_228231DFC, MEMORY[0x277D83958]);
  v24 = sub_228391F90();
  v26 = v25;

  MEMORY[0x22AAB5C80](v24, v26);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v27 = v46;
  *(v6 + 3) = v45;
  *(v6 + 4) = v27;
  v28 = v42;
  *(v6 + 8) = a1;
  *(v6 + 9) = v28;

  sub_228391870();
  (*(v13 + 32))(&v6[*(*v6 + 136)], v15, v12);
  if (v43)
  {
    v29 = v43;
    v31 = v40;
    v30 = v41;
  }

  else
  {
    sub_2283903A0();
    v32 = v37;
    sub_22838FDD0();
    sub_22838FD80();
    (*(v38 + 8))(v32, v39);
    v29 = sub_228390370();
    v30 = MEMORY[0x277D10F80];
    v31 = MEMORY[0x277D110F0];
  }

  *(v6 + 5) = v29;
  *(v6 + 6) = v31;
  *(v6 + 7) = v30;
  v33 = &v6[*(*v6 + 152)];
  *v33 = v29;
  v33[1] = v31;
  v33[2] = v30;
  swift_unknownObjectRetain();
  v34 = swift_unknownObjectRetain();
  sub_2282AD218(v34);
  sub_2282AC640();
  return v6;
}

uint64_t sub_2282AE16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DynamicDataSource(0, *(*v4 + 80), *(*v4 + 88), a4);
  swift_getWitnessTable();

  return sub_22838FD00();
}

uint64_t sub_2282AE220(uint64_t a1)
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

unint64_t sub_2282AE4AC()
{
  result = qword_27D826F50;
  if (!qword_27D826F50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D826F50);
  }

  return result;
}

uint64_t sub_2282AE4F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2282AE540(uint64_t a1, uint64_t a2)
{
  v4 = sub_22838F580();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v31 - v9;
  sub_22838F540();
  v11 = sub_22838F520();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v10, v4);
  v31[6] = v11;
  v31[7] = v13;
  v31[8] = a1;
  v31[9] = a2;

  sub_22838F540();
  v15 = sub_22838F510();
  v17 = v16;
  result = (v14)(v8, v4);
  v19 = 0;
  v31[10] = v15;
  v31[11] = v17;
  v20 = MEMORY[0x277D84F90];
LABEL_2:
  if (v19 <= 3)
  {
    v21 = 3;
  }

  else
  {
    v21 = v19;
  }

  v22 = v21 + 1;
  v23 = 16 * v19 + 40;
  while (1)
  {
    if (v19 == 3)
    {
      sub_22824FE6C(0, &qword_27D825070, MEMORY[0x277D83D88]);
      swift_arrayDestroy();
      v31[1] = v20;
      sub_22824FE6C(0, &qword_27D827E10, MEMORY[0x277D83940]);
      sub_2281BF13C();
      v30 = sub_228391F90();

      return v30;
    }

    if (v22 == ++v19)
    {
      break;
    }

    v24 = v23 + 16;
    v25 = *(&v31[2] + v23);
    v23 += 16;
    if (v25)
    {
      v26 = *(&v31[-1] + v24);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_228198748(0, *(v20 + 16) + 1, 1, v20);
        v20 = result;
      }

      v28 = *(v20 + 16);
      v27 = *(v20 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_228198748((v27 > 1), v28 + 1, 1, v20);
        v20 = result;
      }

      *(v20 + 16) = v28 + 1;
      v29 = v20 + 16 * v28;
      *(v29 + 32) = v26;
      *(v29 + 40) = v25;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for DDIStepViewController(uint64_t a1)
{
  result = qword_27D826F58;
  if (!qword_27D826F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2282AE914()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DDIStepViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FrequencyIntervalPickerItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FrequencyIntervalPickerItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

unint64_t FrequencyIntervalPickerItem.uniqueIdentifier.getter()
{
  type metadata accessor for FrequencyIntervalPickerItem(0);
  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  return 0xD00000000000001CLL;
}

uint64_t type metadata accessor for FrequencyIntervalPickerItem(uint64_t a1)
{
  result = qword_27D826FA8;
  if (!qword_27D826FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FrequencyIntervalPickerItem.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for FrequencyIntervalPickerItem(0) + 24));

  return v1;
}

uint64_t FrequencyIntervalPickerItem.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FrequencyIntervalPickerItem(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FrequencyIntervalPickerItem.placeholderText.getter()
{
  v1 = *(v0 + *(type metadata accessor for FrequencyIntervalPickerItem(0) + 28));

  return v1;
}

uint64_t FrequencyIntervalPickerItem.placeholderText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FrequencyIntervalPickerItem(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FrequencyIntervalPickerItem.isEditEnabled.setter(char a1)
{
  result = type metadata accessor for FrequencyIntervalPickerItem(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_2282AECD0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = (a2 + *(type metadata accessor for FrequencyIntervalPickerItem(0) + 36));
  v6 = *v5;
  v7 = v5[1];
  sub_228176FA8(v2, v3);
  result = sub_228176EC8(v6, v7);
  *v5 = v2;
  v5[1] = v4;
  return result;
}

uint64_t FrequencyIntervalPickerItem.dataProvider.getter()
{
  v1 = (v0 + *(type metadata accessor for FrequencyIntervalPickerItem(0) + 36));
  v2 = *v1;
  sub_228176FA8(*v1, v1[1]);
  return v2;
}

uint64_t FrequencyIntervalPickerItem.dataProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FrequencyIntervalPickerItem(0) + 36));
  result = sub_228176EC8(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_2282AEE10@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FrequencyIntervalPickerItem(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_22822F0D0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_228176FA8(v4, v5);
}

uint64_t sub_2282AEEA4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_22822F0A8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for FrequencyIntervalPickerItem(0) + 40));
  v8 = *v7;
  v9 = v7[1];
  sub_228176FA8(v3, v4);
  result = sub_228176EC8(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t FrequencyIntervalPickerItem.updateHandler.getter()
{
  v1 = (v0 + *(type metadata accessor for FrequencyIntervalPickerItem(0) + 40));
  v2 = *v1;
  sub_228176FA8(*v1, v1[1]);
  return v2;
}

uint64_t FrequencyIntervalPickerItem.updateHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FrequencyIntervalPickerItem(0) + 40));
  result = sub_228176EC8(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FrequencyIntervalPickerItem.init(title:dataProvider:updateHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  type metadata accessor for FrequencyIntervalCollectionViewCell();
  sub_2282B152C(&qword_27D826F78, v14, type metadata accessor for FrequencyIntervalCollectionViewCell, &protocol conformance descriptor for FrequencyIntervalCollectionViewCell);
  *a7 = sub_22838FBB0();
  a7[1] = v15;
  v16 = type metadata accessor for FrequencyIntervalPickerItem(0);
  result = sub_22838F490();
  v18 = (a7 + v16[7]);
  v19 = (a7 + v16[9]);
  v20 = (a7 + v16[10]);
  v21 = (a7 + v16[6]);
  *v21 = a1;
  v21[1] = a2;
  *v18 = 0;
  v18[1] = 0;
  *(a7 + v16[8]) = 1;
  *v19 = a3;
  v19[1] = a4;
  *v20 = a5;
  v20[1] = a6;
  return result;
}

uint64_t sub_2282AF13C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  sub_228176FA8(*v2, v2[1]);
  return v3;
}

uint64_t sub_2282AF17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = (v3 + *(a3 + 36));
  result = sub_228176EC8(*v6, v6[1]);
  *v6 = a1;
  v6[1] = v5;
  return result;
}

uint64_t (*sub_2282AF1C0(uint64_t a1, uint64_t a2))()
{
  v3 = *(a2 + 36);
  *(a1 + 24) = v3;
  v4 = (v2 + v3);
  v6 = *v4;
  v5 = v4[1];
  if (!v6)
  {
    v5 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v2;
  return sub_22822C53C;
}

uint64_t (*sub_2282AF204(uint64_t a1, uint64_t a2))()
{
  v3 = *(a2 + 40);
  *(a1 + 24) = v3;
  v4 = (v2 + v3);
  v6 = *v4;
  v5 = v4[1];
  if (!v6)
  {
    v5 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v2;
  return sub_22822F0FC;
}

unint64_t sub_2282AF248(uint64_t a1)
{
  v1 = sub_22838F450();
  MEMORY[0x22AAB5C80](v1);

  return 0xD00000000000001CLL;
}

uint64_t sub_2282AF2AC(uint64_t a1)
{
  v2 = sub_2282B152C(&qword_27D826F90, 255, type metadata accessor for FrequencyIntervalPickerItem, &protocol conformance descriptor for FrequencyIntervalPickerItem);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_2282AF32C(uint64_t a1, void **a2)
{
  sub_22817E6C8(a1, v7);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell_item;
  swift_beginAccess();
  sub_22818FD64(v7, v3 + v4);
  v5 = swift_endAccess();
  (*((*MEMORY[0x277D85000] & *v3) + 0xF0))(v5);
  return sub_2282B0F40(v7, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_2282AF3E8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_2282AF440(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  v4 = swift_endAccess();
  (*((*MEMORY[0x277D85000] & *v1) + 0xF0))(v4);
  return sub_2282B0F40(a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t (*sub_2282AF4F8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2282AF55C;
}

uint64_t sub_2282AF55C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x277D85000] & **(a1 + 24)) + 0xF0))(result);
  }

  return result;
}

id sub_2282AF5E0(uint64_t a1)
{
  sub_22817A958(0, &qword_27D8270B8, 0x277D756B8);
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  v2 = [objc_opt_self() labelColor];
  v3 = sub_228392C00();
  v4 = sub_228392000();
  v6 = v5;
  sub_2282B152C(&qword_27D826F78, v5, type metadata accessor for FrequencyIntervalCollectionViewCell, &protocol conformance descriptor for FrequencyIntervalCollectionViewCell);
  v7 = v3;
  v8 = sub_22838FBB0();
  MEMORY[0x22AAB5C80](v8);

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);

  MEMORY[0x22AAB5C80](0x614C656C7469542ELL, 0xEB000000006C6562);

  v9 = sub_228391FC0();

  [v7 setAccessibilityIdentifier_];

  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  return v7;
}

id sub_2282AF7F8(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v8 = a2(ObjectType);
    v9 = *(v2 + v3);
    *(v2 + v3) = v8;
    v5 = v8;

    v4 = 0;
  }

  v10 = v4;
  return v5;
}

id sub_2282AF864(uint64_t a1)
{
  sub_22817A958(0, &qword_27D8270B8, 0x277D756B8);
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  v2 = [objc_opt_self() systemBlueColor];
  v3 = sub_228392C00();
  v4 = sub_228392000();
  v6 = v5;
  sub_2282B152C(&qword_27D826F78, v5, type metadata accessor for FrequencyIntervalCollectionViewCell, &protocol conformance descriptor for FrequencyIntervalCollectionViewCell);
  v7 = v3;
  v8 = sub_22838FBB0();
  MEMORY[0x22AAB5C80](v8);

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);

  MEMORY[0x22AAB5C80](0x614C65756C61562ELL, 0xEB000000006C6562);

  v9 = sub_228391FC0();

  [v7 setAccessibilityIdentifier_];

  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setTextAlignment_];
  return v7;
}

id sub_2282AFA70()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___pickerView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___pickerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___pickerView);
  }

  else
  {
    v4 = sub_2282AFAD0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2282AFAD0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75840]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [objc_opt_self() systemBackgroundColor];
  [v0 setBackgroundColor_];

  v5 = sub_228392000();
  v6 = v2;

  MEMORY[0x22AAB5C80](0xD000000000000027, 0x80000002283B1470);

  v3 = sub_228391FC0();

  [v0 setAccessibilityIdentifier_];

  return v0;
}

char *sub_2282AFBEC(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___valueLabel] = 0;
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell_separatorView;
  v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v12 = objc_opt_self();
  v13 = [v12 separatorColor];
  [v11 setBackgroundColor_];

  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v10] = v11;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___pickerView] = 0;
  v28.receiver = v4;
  v28.super_class = type metadata accessor for FrequencyIntervalCollectionViewCell();
  v14 = objc_msgSendSuper2(&v28, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = [v14 contentView];
  v16 = [v12 systemBackgroundColor];
  [v15 setBackgroundColor_];

  v17 = [v14 contentView];
  v18 = sub_2282AF5C0();
  [v17 addSubview_];

  v19 = [v14 contentView];
  v20 = sub_2282AF7D8();
  [v19 addSubview_];

  v21 = v14;
  v22 = [v21 contentView];
  [v22 addSubview_];

  v23 = sub_2282AFA70();
  [v23 setDelegate_];

  v24 = OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___pickerView;
  v25 = *&v21[OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___pickerView];
  [v25 setDataSource_];

  v26 = [v21 contentView];
  [v26 addSubview_];

  sub_2282B024C();
  return v21;
}

id FrequencyIntervalCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_2282AFF3C()
{
  sub_2282B168C(0, &qword_27D826F88, type metadata accessor for FrequencyIntervalPickerItem);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17[-v2];
  v4 = type metadata accessor for FrequencyIntervalPickerItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell_item;
  swift_beginAccess();
  sub_22817E6C8(v0 + v8, &v18);
  if (!v20)
  {
    sub_2282B0F40(&v18, &qword_280DDCD50, sub_22817A700);
    (*(v5 + 56))(v3, 1, 1, v4);
    goto LABEL_9;
  }

  sub_22817A700();
  v9 = swift_dynamicCast();
  (*(v5 + 56))(v3, v9 ^ 1u, 1, v4);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
LABEL_9:
    sub_2282B0F40(v3, &qword_27D826F88, type metadata accessor for FrequencyIntervalPickerItem);
    return;
  }

  sub_2282B0F9C(v3, v7);
  v10 = sub_2282AF5C0();
  v11 = sub_228391FC0();
  [v10 setText_];

  v12 = *&v7[*(v4 + 36)];
  if (!v12)
  {
    goto LABEL_7;
  }

  v12(&v18, v7);
  if (v19)
  {
    goto LABEL_7;
  }

  v13 = v18;
  v14 = sub_2282AF7D8();
  v18 = v13;
  sub_22830F6D4(0);
  v15 = sub_228391FC0();

  [v14 setText_];

  if (!__OFSUB__(v13, 1))
  {
    v16 = sub_2282AFA70();
    [v16 selectRow:v13 - 1 inComponent:0 animated:1];

LABEL_7:
    sub_2282B1000(v7);
    return;
  }

  __break(1u);
}

void sub_2282B024C()
{
  sub_22821B3F8(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v6 = v5;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228397F00;
  *(inited + 32) = sub_2282AF5C0();
  *(inited + 40) = sub_2282AF7D8();
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell_separatorView;
  v9 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell_separatorView];
  *(inited + 48) = v9;
  v10 = v9;
  *(inited + 56) = sub_2282AFA70();
  v11 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x22AAB6D80](0, inited);
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_20;
    }

    v12 = *(inited + 32);
  }

  v13 = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];

  if (v11)
  {
    v14 = MEMORY[0x22AAB6D80](1, inited);
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_22;
    }

    v14 = *(inited + 40);
  }

  v15 = v14;
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];

  if (!v11)
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v16 = *(inited + 48);
      goto LABEL_12;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v16 = MEMORY[0x22AAB6D80](2, inited);
LABEL_12:
  v17 = v16;
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];

  if (v11)
  {
    v18 = MEMORY[0x22AAB6D80](3, inited);
    goto LABEL_16;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
  {
    v18 = *(inited + 56);
LABEL_16:
    v19 = v18;

    [v19 setTranslatesAutoresizingMaskIntoConstraints_];

    v70 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_22839BA70;
    v3 = OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___titleLabel;
    v20 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___titleLabel] topAnchor];
    v21 = [v0 contentView];
    v22 = [v21 topAnchor];

    v4 = &off_2785F4000;
    v23 = [v20 constraintEqualToAnchor:v22 constant:12.0];

    *(v6 + 32) = v23;
    inited = &off_2785F4000;
    v1 = [*&v0[v3] leadingAnchor];
    v24 = [v0 contentView];
    v2 = [v24 leadingAnchor];

    if (qword_27D823318 == -1)
    {
LABEL_17:
      v25 = *&qword_27D826F70;
      v26 = [v1 v4[118]];

      *(v6 + 40) = v26;
      v27 = OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___valueLabel;
      v28 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___valueLabel] topAnchor];
      v29 = [*&v0[v3] topAnchor];
      v30 = [v28 constraintEqualToAnchor_];

      *(v6 + 48) = v30;
      v31 = [*&v0[v27] *(inited + 704)];
      v32 = [*&v0[v3] trailingAnchor];
      v33 = [v31 constraintGreaterThanOrEqualToAnchor:v32 constant:v25];

      *(v6 + 56) = v33;
      v34 = [*&v0[v27] trailingAnchor];
      v35 = [v0 contentView];
      v36 = [v35 trailingAnchor];

      v37 = [v34 constraintEqualToAnchor:v36 constant:-v25];
      *(v6 + 64) = v37;
      v38 = [*&v0[v8] topAnchor];
      v39 = [*&v0[v3] bottomAnchor];
      v40 = [v38 constraintEqualToAnchor:v39 constant:12.0];

      *(v6 + 72) = v40;
      v41 = [*&v0[v8] topAnchor];
      v42 = [*&v0[v27] bottomAnchor];
      v43 = [v41 constraintEqualToAnchor:v42 constant:12.0];

      *(v6 + 80) = v43;
      v44 = [*&v0[v8] leadingAnchor];
      v45 = [*&v0[v3] leadingAnchor];
      v46 = [v44 constraintEqualToAnchor_];

      *(v6 + 88) = v46;
      v47 = [*&v0[v8] trailingAnchor];
      v48 = [v0 contentView];
      v49 = [v48 trailingAnchor];

      v50 = [v47 constraintEqualToAnchor_];
      *(v6 + 96) = v50;
      v51 = [*&v0[v8] heightAnchor];
      v52 = [v51 constraintEqualToConstant_];

      *(v6 + 104) = v52;
      v53 = OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___pickerView;
      v54 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___pickerView] topAnchor];
      v55 = [*&v0[v8] bottomAnchor];
      v56 = [v54 constraintEqualToAnchor:v55 constant:12.0];

      *(v6 + 112) = v56;
      v57 = [*&v0[v53] leadingAnchor];
      v58 = [v0 contentView];
      v59 = [v58 leadingAnchor];

      v60 = [v57 constraintEqualToAnchor_];
      *(v6 + 120) = v60;
      v61 = [*&v0[v53] trailingAnchor];
      v62 = [v0 &selRef_didTapDay_];
      v63 = [v62 trailingAnchor];

      v64 = [v61 constraintEqualToAnchor_];
      *(v6 + 128) = v64;
      v65 = [*&v0[v53] bottomAnchor];
      v66 = [v0 &selRef_didTapDay_];
      v67 = [v66 bottomAnchor];

      v68 = [v65 constraintEqualToAnchor:v67 constant:-12.0];
      *(v6 + 136) = v68;
      sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
      v69 = sub_228392190();

      [v70 activateConstraints_];

      return;
    }

LABEL_20:
    swift_once();
    goto LABEL_17;
  }

LABEL_23:
  __break(1u);
}

id FrequencyIntervalCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FrequencyIntervalCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int __swiftcall FrequencyIntervalCollectionViewCell.pickerView(_:numberOfRowsInComponent:)(UIPickerView *_, Swift::Int numberOfRowsInComponent)
{
  v2 = *(sub_22830F9DC() + 16);

  return v2;
}

Swift::String_optional __swiftcall FrequencyIntervalCollectionViewCell.pickerView(_:titleForRow:forComponent:)(UIPickerView *_, Swift::Int titleForRow, Swift::Int forComponent)
{
  v4 = sub_22830F9DC();
  if (titleForRow < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(v4 + 16) <= titleForRow)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  v4 = sub_22830F6D4(0);
LABEL_6:
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

uint64_t FrequencyIntervalCollectionViewCell.deselectionBehavior(in:)@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 1;
  v2 = *MEMORY[0x277D10F90];
  v3 = sub_22838FFC0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_2282B0DF4()
{
  sub_228390360();
  sub_228390350();
  qword_27D826F70 = v0;
}

void _s19HealthMedicationsUI35FrequencyIntervalCollectionViewCellC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0 + OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___valueLabel) = 0;
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell_separatorView;
  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v4 = [objc_opt_self() separatorColor];
  [v3 setBackgroundColor_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v2) = v3;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___pickerView) = 0;
  sub_228393300();
  __break(1u);
}

uint64_t sub_2282B0F40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2282B168C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2282B0F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FrequencyIntervalPickerItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2282B1000(uint64_t a1)
{
  v2 = type metadata accessor for FrequencyIntervalPickerItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2282B105C(unint64_t a1)
{
  v2 = v1;
  v4 = sub_2283911B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2282B168C(0, &qword_27D826F88, type metadata accessor for FrequencyIntervalPickerItem);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27[-v9];
  v11 = type metadata accessor for FrequencyIntervalPickerItem(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v2[v15], &v28);
  if (!v30)
  {
    sub_2282B0F40(&v28, &qword_280DDCD50, sub_22817A700);
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_8;
  }

  sub_22817A700();
  v16 = swift_dynamicCast();
  (*(v12 + 56))(v10, v16 ^ 1u, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_8:
    sub_2282B0F40(v10, &qword_27D826F88, type metadata accessor for FrequencyIntervalPickerItem);
LABEL_9:
    sub_228391150();
    v24 = sub_2283911A0();
    v25 = sub_2283925C0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22816B000, v24, v25, "Item is not a FrequencyIntervalPickerItem. Unable to update.", v26, 2u);
      MEMORY[0x22AAB7B80](v26, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }

  sub_2282B0F9C(v10, v14);
  v17 = &v14[*(v11 + 40)];
  v18 = *v17;
  if (!*v17)
  {
    sub_2282B1000(v14);
    goto LABEL_9;
  }

  v19 = *(v17 + 1);

  result = sub_22830F9DC();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a1)
  {
    v21 = *(result + 8 * a1 + 32);

    v22 = sub_2282AF7D8();
    v28 = v21;
    sub_22830F6D4(0);
    v23 = sub_228391FC0();

    [v22 setText_];

    [*&v2[OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___valueLabel] sizeToFit];
    [v2 invalidateIntrinsicContentSize];
    [v2 setNeedsLayout];
    v28 = v21;
    v29 = 0;
    v18(v14, &v28);
    sub_228176EC8(v18, v19);
    return sub_2282B1000(v14);
  }

  __break(1u);
  return result;
}

uint64_t sub_2282B152C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_2282B159C(uint64_t a1)
{
  v1 = MEMORY[0x277D837D0];
  sub_22838F4A0();
  if (v2 <= 0x3F)
  {
    sub_22821B3F8(319, &qword_27D825070, v1, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      sub_2282B168C(319, &unk_27D826FC0, sub_2281C35D8);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2282B168C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t MedicationDoseEventDataSource.__allocating_init(healthStore:forMedication:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = a1;
  *(v4 + 120) = a2;
  return v4;
}

uint64_t MedicationDoseEventDataSource.init(healthStore:forMedication:)(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return v2;
}

uint64_t sub_2282B1850(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = sub_2283911B0();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_2282B27D8(0, &qword_27D8270C0, MEMORY[0x277CCB610]);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2282B19B0, v1, 0);
}