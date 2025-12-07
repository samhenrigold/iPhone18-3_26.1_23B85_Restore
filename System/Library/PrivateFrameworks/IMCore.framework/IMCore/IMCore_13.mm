uint64_t sub_1A848B538(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A83EA2FC(&qword_1EB2E6648, &qword_1A8500910);
  v38 = v4;
  result = sub_1A84E656C();
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(v5 + 56) + 144 * v23;
      if (v38)
      {
        v39 = *(v25 + 8);
        v42 = *(v25 + 24);
        v40 = *(v25 + 40);
        v41 = *v25;
        v43 = *(v25 + 48);
        v44 = *(v25 + 64);
        v45 = *(v25 + 56);
        v47 = *(v25 + 72);
        v46 = *(v25 + 88);
        v48 = *(v25 + 96);
        v26 = *(v25 + 120);
        v51 = *(v25 + 112);
        v52 = *(v25 + 128);
        v49 = *(v25 + 80);
        v50 = *(v25 + 136);
      }

      else
      {
        *v54 = *v25;
        v27 = *(v25 + 64);
        v29 = *(v25 + 16);
        v28 = *(v25 + 32);
        v55 = *(v25 + 48);
        v56 = v27;
        *&v54[16] = v29;
        *&v54[32] = v28;
        v30 = *(v25 + 128);
        v32 = *(v25 + 80);
        v31 = *(v25 + 96);
        v59 = *(v25 + 112);
        v60 = v30;
        v57 = v32;
        v58 = v31;
        v51 = v59;
        v52 = v30;
        v26 = BYTE8(v59);
        v48 = v31;
        v49 = v32;
        v50 = *(&v30 + 1);
        v47 = BYTE8(v56);
        v45 = *(&v55 + 1);
        v46 = *(&v32 + 1);
        v43 = v55;
        v44 = v56;
        v42 = *&v54[24];
        v40 = *&v54[40];
        v41 = *v54;
        v39 = *&v54[8];
        sub_1A8400E7C(v54, v53);
      }

      sub_1A84E684C();
      sub_1A84E5E5C();

      result = sub_1A84E687C();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v15) >> 6;
        while (++v17 != v34 || (v33 & 1) == 0)
        {
          v35 = v17 == v34;
          if (v17 == v34)
          {
            v17 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v17);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v17 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      v54[0] = v26;
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v24;
      v19 = *(v7 + 56) + 144 * v18;
      *v19 = v41;
      *(v19 + 8) = v39;
      *(v19 + 24) = v42;
      *(v19 + 40) = v40;
      *(v19 + 48) = v43;
      *(v19 + 56) = v45;
      *(v19 + 64) = v44;
      *(v19 + 72) = v47;
      *(v19 + 80) = v49;
      *(v19 + 88) = v46;
      *(v19 + 96) = v48;
      *(v19 + 112) = v51;
      *(v19 + 120) = v26;
      *(v19 + 128) = v52;
      *(v19 + 136) = v50;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (v38)
    {
      v37 = 1 << *(v5 + 32);
      if (v37 >= 64)
      {
        bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v37;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1A848BA0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A83EA2FC(&qword_1EB2E66B8, &qword_1A8500968);
  v33 = v4;
  result = sub_1A84E656C();
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
        sub_1A8243DDC(v24, v34);
      }

      else
      {
        sub_1A8244F40(v24, v34);
      }

      sub_1A84E684C();
      sub_1A84E5E5C();
      result = sub_1A84E687C();
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
      result = sub_1A8243DDC(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_1A848BCC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A83EA2FC(&unk_1EB2E6620, &qword_1A8509AD0);
  result = sub_1A84E656C();
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
        sub_1A8243DDC((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1A824B334(v23, &v36);
        sub_1A8244F40(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_1A84E63FC();
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
      result = sub_1A8243DDC(v35, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_1A848BF7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A83EA2FC(&qword_1EB2E6668, &qword_1A8500930);
  v37 = v4;
  result = sub_1A84E656C();
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

      sub_1A84E684C();
      sub_1A84E5E5C();
      result = sub_1A84E687C();
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

uint64_t sub_1A848C23C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A83EA2FC(&qword_1EB2E65F0, &qword_1A8500898);
  v36 = v4;
  result = sub_1A84E656C();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 24 * v20);
      v22 = *v21;
      v23 = v21[1];
      v37 = v21[2];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1A84E684C();
      sub_1A84E5E5C();
      MEMORY[0x1AC56B350](v37);
      result = sub_1A84E687C();
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
      v16 = (*(v7 + 48) + 24 * v15);
      *v16 = v22;
      v16[1] = v23;
      v16[2] = v37;
      *(*(v7 + 56) + 8 * v15) = v24;
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

uint64_t sub_1A848C508(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A83EA2FC(&qword_1EB2E65D0, &qword_1A8500878);
  result = sub_1A84E656C();
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

      result = sub_1A84E630C();
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

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A848C778(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1A83EA2FC(a3, a4);
  v37 = v6;
  result = sub_1A84E656C();
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

      sub_1A84E684C();
      sub_1A84E5E5C();
      result = sub_1A84E687C();
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

uint64_t sub_1A848CA28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1A83EA2FC(a3, a4);
  v36 = v6;
  result = sub_1A84E656C();
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

      sub_1A84E684C();
      sub_1A84E5E5C();
      result = sub_1A84E687C();
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

unint64_t sub_1A848CCC8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A84E63DC() + 1) & ~v5;
    while (1)
    {
      sub_1A84E684C();

      sub_1A84E5E5C();
      v9 = sub_1A84E687C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for ImportExport.Message(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1A848CEB4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A84E63DC() + 1) & ~v5;
    do
    {
      sub_1A84E684C();

      sub_1A84E5E5C();
      v10 = sub_1A84E687C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1A848D064(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A84E63DC() + 1) & ~v5;
    do
    {
      sub_1A84E684C();

      sub_1A84E5E5C();
      v9 = sub_1A84E687C();

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
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
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

  return result;
}

uint64_t sub_1A848D214(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A84E63DC() + 1) & ~v5;
    do
    {
      sub_1A84E684C();

      sub_1A84E5E5C();
      v9 = sub_1A84E687C();

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

  return result;
}

void sub_1A848D3C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1A824B390(a2, a3);
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
      sub_1A848E5E4();
      goto LABEL_7;
    }

    sub_1A848A588(v15, a4 & 1);
    v21 = sub_1A824B390(a2, a3);
    if ((v16 & 1) == (v22 & 1))
    {
      v12 = v21;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_1A84E67EC();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for ImportExport.Message(0) - 8) + 72) * v12;

    sub_1A84672B8(a1, v20);
    return;
  }

LABEL_13:
  sub_1A848E3FC(v12, a2, a3, a1, v18);
}

_OWORD *sub_1A848D528(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1A8489E10(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1A848E97C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1A848AB64(v13, a3 & 1);
    v8 = sub_1A8489E10(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_1A84E67EC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_1A8244788(v19);

    return sub_1A8243DDC(a1, v19);
  }

  else
  {
    sub_1A848E494(v8, a2, a1, v18);

    return a2;
  }
}

unint64_t sub_1A848D6A4(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v12 = *v5;
  result = sub_1A8489DCC(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_8:
    v23 = *v8;
    if (v19)
    {
      *(v23[7] + 8 * result) = a1;

      return MEMORY[0x1EEE66BB8](result);
    }

    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + result) = a2;
    *(v23[7] + 8 * result) = a1;
    v24 = v23[2];
    v17 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v17)
    {
      v23[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    v21 = result;
    sub_1A848EB24(a4, a5);
    result = v21;
    goto LABEL_8;
  }

  sub_1A848AE48(v18, a3 & 1, a4, a5);
  result = sub_1A8489DCC(a2);
  if ((v19 & 1) == (v22 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  result = sub_1A84E67EC();
  __break(1u);
  return MEMORY[0x1EEE66BB8](result);
}

unint64_t sub_1A848D810(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1A8489DCC(a2);
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
      sub_1A848B1B8(v14, a3 & 1);
      result = sub_1A8489DCC(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1A84E67EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1A848EC70();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

unint64_t sub_1A848D95C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1A8489DCC(a2);
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
      sub_1A848B538(v14, a3 & 1);
      result = sub_1A8489DCC(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1A84E67EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1A848EDCC();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    v21 = (v19[7] + 144 * result);
    *v21 = *a1;
    v22 = a1[1];
    v23 = a1[2];
    v24 = a1[4];
    v21[3] = a1[3];
    v21[4] = v24;
    v21[1] = v22;
    v21[2] = v23;
    v25 = a1[5];
    v26 = a1[6];
    v27 = a1[8];
    v21[7] = a1[7];
    v21[8] = v27;
    v21[5] = v25;
    v21[6] = v26;
    v28 = v19[2];
    v13 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v13)
    {
      v19[2] = v29;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 144 * result;

  return sub_1A8490504(a1, v20);
}

void sub_1A848DAD4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A824B390(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1A848EF90();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1A848BA0C(v16, a4 & 1);
    v11 = sub_1A824B390(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1A84E67EC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_1A8244788(v22);

    sub_1A8243DDC(a1, v22);
  }

  else
  {
    sub_1A848E4FC(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_1A848DC24(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1A8250C0C(a2);
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
      sub_1A848F134();
      goto LABEL_7;
    }

    sub_1A848BCC4(v13, a3 & 1);
    v19 = sub_1A8250C0C(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A824B334(a2, v21);
      return sub_1A848E568(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_1A84E67EC();
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
  sub_1A8244788(v17);

  return sub_1A8243DDC(a1, v17);
}

void sub_1A848DD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1A824B390(a3, a4);
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
      sub_1A848BF7C(v18, a5 & 1);
      v13 = sub_1A824B390(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_1A84E67EC();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_1A848F2D8();
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

void sub_1A848DEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1A8489F0C(a2, a3, a4);
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
      sub_1A848C23C(v18, a5 & 1);
      v13 = sub_1A8489F0C(a2, a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        v13 = sub_1A84E67EC();
        __break(1u);
_objc_release_x1:
        MEMORY[0x1EEE66BB8](v13);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_1A848F450();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;

    goto _objc_release_x1;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v24 = (v23[6] + 24 * v13);
  *v24 = a2;
  v24[1] = a3;
  v24[2] = a4;
  *(v23[7] + 8 * v13) = a1;
  v25 = v23[2];
  v17 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v26;
}

void sub_1A848E098(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1A824B390(a2, a3);
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
      sub_1A848C778(v20, a4 & 1, a5, a6);
      v15 = sub_1A824B390(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        v15 = sub_1A84E67EC();
        __break(1u);
_objc_release_x1:
        MEMORY[0x1EEE66BB8](v15);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_1A848F740(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    goto _objc_release_x1;
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

void sub_1A848E25C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A824B390(a2, a3);
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
      sub_1A848CA28(v16, a4 & 1, &qword_1EB2E65C8, &qword_1A8500870);
      v11 = sub_1A824B390(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1A84E67EC();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1A848F8B0(&qword_1EB2E65C8, &qword_1A8500870);
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_1A848E3FC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for ImportExport.Message(0);
  result = sub_1A8462480(a4, v9 + *(*(v10 - 8) + 72) * a1);
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

_OWORD *sub_1A848E494(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1A8243DDC(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_1A848E4FC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1A8243DDC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_1A848E568(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1A8243DDC(a3, (a4[7] + 32 * a1));
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

void sub_1A848E5E4()
{
  v1 = v0;
  v2 = type metadata accessor for ImportExport.Message(0);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A83EA2FC(&qword_1EB2E8590, &qword_1A8508BF8);
  v4 = *v0;
  v5 = sub_1A84E655C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
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
        sub_1A8490458(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_1A8462480(v25, *(v27 + 56) + v26);
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
}

void sub_1A848E814()
{
  v1 = v0;
  sub_1A83EA2FC(&qword_1EB2E6630, &qword_1A85008F8);
  v2 = *v0;
  v3 = sub_1A84E655C();
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

id sub_1A848E97C()
{
  v1 = v0;
  sub_1A83EA2FC(&qword_1EB2E6610, &qword_1A85008D8);
  v2 = *v0;
  v3 = sub_1A84E655C();
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
        sub_1A8244F40(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1A8243DDC(v19, (*(v4 + 56) + 32 * v17));
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

id sub_1A848EB24(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1A83EA2FC(a1, a2);
  v4 = *v2;
  v5 = sub_1A84E655C();
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        *(*(v6 + 56) + 8 * v19) = v20;
        result = v20;
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

void sub_1A848EC70()
{
  v1 = v0;
  sub_1A83EA2FC(&qword_1EB2E6640, &qword_1A8500908);
  v2 = *v0;
  v3 = sub_1A84E655C();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
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

void *sub_1A848EDCC()
{
  v1 = v0;
  sub_1A83EA2FC(&qword_1EB2E6648, &qword_1A8500910);
  v2 = *v0;
  v3 = sub_1A84E655C();
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
        v18 = *(*(v2 + 48) + v17);
        v19 = (*(v2 + 56) + 144 * v17);
        v21 = v19[1];
        v20 = v19[2];
        v22 = v19[4];
        v37 = v19[3];
        v38 = v22;
        v23 = v19[8];
        v25 = v19[5];
        v24 = v19[6];
        v41 = v19[7];
        v42 = v23;
        v39 = v25;
        v40 = v24;
        v34 = *v19;
        v35 = v21;
        v36 = v20;
        *(*(v4 + 48) + v17) = v18;
        v26 = (*(v4 + 56) + 144 * v17);
        *v26 = v34;
        v27 = v35;
        v28 = v36;
        v29 = v38;
        v26[3] = v37;
        v26[4] = v29;
        v26[1] = v27;
        v26[2] = v28;
        v30 = v39;
        v31 = v40;
        v32 = v42;
        v26[7] = v41;
        v26[8] = v32;
        v26[5] = v30;
        v26[6] = v31;
        result = sub_1A8400E7C(&v34, &v33);
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

void sub_1A848EF90()
{
  v1 = v0;
  sub_1A83EA2FC(&qword_1EB2E66B8, &qword_1A8500968);
  v2 = *v0;
  v3 = sub_1A84E655C();
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
        sub_1A8244F40(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1A8243DDC(v25, (*(v4 + 56) + v22));
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

void *sub_1A848F134()
{
  v1 = v0;
  sub_1A83EA2FC(&unk_1EB2E6620, &qword_1A8509AD0);
  v2 = *v0;
  v3 = sub_1A84E655C();
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
        sub_1A824B334(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1A8244F40(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1A8243DDC(v22, (*(v4 + 56) + v17));
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

void sub_1A848F2D8()
{
  v1 = v0;
  sub_1A83EA2FC(&qword_1EB2E6668, &qword_1A8500930);
  v2 = *v0;
  v3 = sub_1A84E655C();
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

id sub_1A848F450()
{
  v1 = v0;
  sub_1A83EA2FC(&qword_1EB2E65F0, &qword_1A8500898);
  v2 = *v0;
  v3 = sub_1A84E655C();
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
        v18 = (*(v2 + 48) + 24 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 24 * v17);
        *v23 = v20;
        v23[1] = v19;
        v23[2] = v21;
        *(*(v4 + 56) + 8 * v17) = v22;

        result = v22;
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

void sub_1A848F5C8()
{
  v1 = v0;
  sub_1A83EA2FC(&qword_1EB2E65D0, &qword_1A8500878);
  v2 = *v0;
  v3 = sub_1A84E655C();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

id sub_1A848F740(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1A83EA2FC(a1, a2);
  v4 = *v2;
  v5 = sub_1A84E655C();
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

void sub_1A848F8B0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1A83EA2FC(a1, a2);
  v4 = *v2;
  v5 = sub_1A84E655C();
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

uint64_t sub_1A848FA10(uint64_t a1)
{
  v2 = sub_1A84E692C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1A83EA2FC(&qword_1EB2E8598, &qword_1A8508C00);
    v9 = sub_1A84E644C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1A84904BC(&qword_1EB2E85A0, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1C8]);
      v16 = sub_1A84E5D5C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1A84904BC(&qword_1EB2E85A8, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1D0]);
          v23 = sub_1A84E5D7C();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1A848FD30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A83EA2FC(&unk_1EB2E8EB0, &qword_1A850B5B0);
    v3 = sub_1A84E644C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1A84E684C();

      sub_1A84E5E5C();
      result = sub_1A84E687C();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1A84E67AC();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void sub_1A848FEEC(void *a1)
{
  v2 = [a1 ktData];
  if (v2)
  {
    v3 = v2;
    sub_1A8244B68(0, &qword_1EB2E4730, 0x1E69A52B8);
    v4 = sub_1A84E5D3C();

    v5 = [objc_opt_self() sharedController];
    sub_1A84A58E0(v4);

    v6 = sub_1A84E5D2C();

    [v5 setKTVerifierResultsFromIDSInfoResultsDictionary_];
  }

  v7 = [a1 selfKTData];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() sharedController];
    sub_1A83EA2FC(&qword_1EB2E8580, &qword_1A8508BE8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A85013E0;
    v11 = [v8 uri];
    v12 = sub_1A84E5DBC();
    v14 = v13;

    *(inited + 32) = v12;
    *(inited + 40) = v14;
    *(inited + 72) = sub_1A8244B68(0, &qword_1EB2E4730, 0x1E69A52B8);
    *(inited + 48) = v8;
    v15 = v8;
    sub_1A8242810(inited);
    swift_setDeallocating();
    sub_1A824B2D4(inited + 32, &unk_1EB2E66C0, &unk_1A8500970);
    v16 = sub_1A84E5D2C();

    [v9 setKTVerifierResultsFromIDSInfoResultsDictionary_];
  }
}

void sub_1A8490160(char **a1)
{
  v3 = *(sub_1A84E56DC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1A8487B2C(a1, v5, v1 + v4, v6);
}

uint64_t sub_1A8490204(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A84E5DBC();
  if (!a2)
  {

    sub_1A84E5DBC();

    sub_1A84E5DBC();

    sub_1A84E5DBC();

    sub_1A84E5DBC();

    return 0;
  }

  if (v4 == a1 && v5 == a2)
  {

    return 1;
  }

  v7 = sub_1A84E67AC();

  if (v7)
  {
    return 1;
  }

  if (sub_1A84E5DBC() == a1 && v8 == a2)
  {

    return 2;
  }

  v10 = sub_1A84E67AC();

  if (v10)
  {
    return 2;
  }

  if (sub_1A84E5DBC() == a1 && v12 == a2)
  {

    return 3;
  }

  v14 = sub_1A84E67AC();

  if (v14)
  {
    return 3;
  }

  if (sub_1A84E5DBC() == a1 && v15 == a2)
  {

    return 4;
  }

  v16 = sub_1A84E67AC();

  if (v16)
  {
    return 4;
  }

  if (sub_1A84E5DBC() == a1 && v17 == a2)
  {

    return 5;
  }

  v18 = sub_1A84E67AC();

  if ((v18 & 1) == 0)
  {
    return 0;
  }

  return 5;
}

uint64_t sub_1A8490458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.Message(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A84904BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A8490568@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v288 = a3;
  v282 = a4;
  v7 = sub_1A84E5C9C();
  v277 = *(v7 - 8);
  v278 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v279 = &v248 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v292 = type metadata accessor for ImportExport.MessagePart(0);
  v315 = *(v292 - 8);
  v9 = MEMORY[0x1EEE9AC00](v292);
  v370 = &v248 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v322 = &v248 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v321 = &v248 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v294 = &v248 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v291 = &v248 - v17;
  v18 = sub_1A84E5B9C();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v295 = &v248 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = sub_1A84E577C();
  v318 = *(v319 - 8);
  MEMORY[0x1EEE9AC00](v319);
  v317 = &v248 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v323 = sub_1A84E56DC();
  v324 = *(v323 - 8);
  v21 = MEMORY[0x1EEE9AC00](v323);
  v320 = &v248 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v316 = &v248 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v312 = &v248 - v25;
  v26 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v314 = &v248 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v313 = &v248 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v248 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v283 = &v248 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v248 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v248 - v39;
  v41 = [a1 guid];
  v293 = sub_1A84E5DBC();
  v296 = v42;

  v43 = a2[2];
  v280 = a2[1];
  v284 = v43;

  v44 = [a1 isFromMe];
  v286 = a1;
  if (v44)
  {
    v45 = v4;
    v281 = v38;
    v46 = *(a2 + 11);
    v47 = *(a2 + 13);
    v358 = *(a2 + 12);
    v359 = v47;
    v48 = *(a2 + 7);
    v49 = *(a2 + 9);
    v354 = *(a2 + 8);
    v355 = v49;
    v50 = *(a2 + 9);
    v51 = *(a2 + 11);
    v356 = *(a2 + 10);
    v357 = v51;
    v52 = *(a2 + 7);
    v352 = *(a2 + 6);
    v353 = v52;
    v366 = v46;
    v367 = v358;
    v53 = *(a2 + 14);
    v368 = *(a2 + 13);
    v369 = v53;
    v362 = v48;
    v363 = v354;
    v364 = v50;
    v365 = v356;
    v360 = v53;
    v361 = v352;
    sub_1A8400E7C(&v352, &v343);
  }

  else
  {
    v56 = a2;
    v57 = [a1 handleRecord];
    sub_1A8477A9C(v57, a1, &v352);
    if (v4)
    {

      return sub_1A849268C(v56, type metadata accessor for ImportExport.Conversation);
    }

    v349 = v358;
    v350 = v359;
    v351 = v360;
    v345 = v354;
    v346 = v355;
    v347 = v356;
    v348 = v357;
    v343 = v352;
    v344 = v353;
    sub_1A84780C8(v56, &v361);
    a2 = v56;
    v45 = 0;
    v281 = v38;
    v340 = v349;
    v341 = v350;
    v342 = v351;
    v336 = v345;
    v337 = v346;
    v338 = v347;
    v339 = v348;
    v334 = v343;
    v335 = v344;
    sub_1A8400ED8(&v334);
  }

  v358 = v367;
  v359 = v368;
  v360 = v369;
  v354 = v363;
  v355 = v364;
  v356 = v365;
  v357 = v366;
  v352 = v361;
  v353 = v362;
  v54 = v286;
  sub_1A84781D4(v286, &v343);
  if (v45)
  {
    sub_1A849268C(a2, type metadata accessor for ImportExport.Conversation);
    sub_1A8400ED8(&v352);
  }

  v290 = 0;
  v340 = v349;
  v341 = v350;
  v342 = v351;
  v336 = v345;
  v337 = v346;
  v338 = v347;
  v339 = v348;
  v334 = v343;
  v335 = v344;
  IMDMessageRecord.messageState.getter(&v333);
  v310 = v333;
  v58 = [v54 subject];
  if (v58)
  {
    v59 = v58;
    v258 = sub_1A84E5DBC();
    v265 = v60;
  }

  else
  {
    v258 = 0;
    v265 = 0;
  }

  v61 = v323;
  v62 = v286;
  if ([v286 rawDate])
  {
    v63 = [v62 date];
    sub_1A84E569C();

    v64 = 0;
  }

  else
  {
    v64 = 1;
  }

  v65 = *(v324 + 56);
  v66 = 1;
  v276 = v40;
  v65(v40, v64, 1, v61);
  v67 = [v62 rawDateDelivered];
  v266 = a2;
  if (v67)
  {
    v68 = [v62 dateDelivered];
    v69 = v281;
    sub_1A84E569C();

    v66 = 0;
  }

  else
  {
    v69 = v281;
  }

  v70 = 1;
  v281 = v69;
  v65(v69, v66, 1, v61);
  if ([v62 rawDateRead])
  {
    v71 = [v62 dateRead];
    v72 = v283;
    sub_1A84E569C();

    v70 = 0;
  }

  else
  {
    v72 = v283;
  }

  v65(v72, v70, 1, v61);
  v73 = [v62 country];
  if (v73)
  {
    v74 = v73;
    v257 = sub_1A84E5DBC();
    v264 = v75;
  }

  else
  {
    v257 = 0;
    v264 = 0xE000000000000000;
  }

  v76 = v294;
  v77 = [v62 serviceName];
  sub_1A84E5DBC();
  v79 = v78;

  LOBYTE(v325[0]) = 0;
  v80 = v286;
  ImportExport.ServiceType.init(for:default:)(v79, v325, &v332);
  v269 = v332;
  v81 = [v80 destinationCallerID];
  if (v81)
  {
    v82 = v81;
    v254 = sub_1A84E5DBC();
    v262 = v83;
  }

  else
  {
    v254 = 0;
    v262 = 0;
  }

  v84 = v276;
  v85 = [v80 fallbackHash];
  if (v85)
  {
    v86 = v85;
    v256 = sub_1A84E5DBC();
    v263 = v87;
  }

  else
  {
    v256 = 0;
    v263 = 0;
  }

  v255 = sub_1A84923BC();
  v261 = v88;
  v89 = [v80 messageSummaryInfo];
  if (v89)
  {
    v90 = v89;
    v260 = sub_1A84E5D3C();
  }

  else
  {
    v260 = 0;
  }

  v253 = [v80 rowID];
  sub_1A8243D74(v84, v33, &qword_1EB2E6F48, &unk_1A8501F00);
  v91 = v324;
  v92 = *(v324 + 48);
  v93 = v61;
  v94 = v92(v33, 1, v61);
  v311 = v92;
  if (v94 != 1)
  {
    (*(v91 + 32))(v312, v33, v61);
    v309 = objc_opt_self();
    v96 = sub_1A84E565C();
    if (qword_1EB2E5990 != -1)
    {
      goto LABEL_119;
    }

    goto LABEL_35;
  }

  sub_1A824B2D4(v33, &qword_1EB2E6F48, &unk_1A8501F00);
  v272 = 0;
  v275 = 0;
  for (i = v281; ; i = v281)
  {
    v104 = v313;
    sub_1A8243D74(i, v313, &qword_1EB2E6F48, &unk_1A8501F00);
    if (v92(v104, 1, v61) == 1)
    {
      sub_1A824B2D4(v104, &qword_1EB2E6F48, &unk_1A8501F00);
      v271 = 0;
      v274 = 0;
      v105 = v283;
    }

    else
    {
      (*(v91 + 32))(v316, v104, v61);
      v313 = objc_opt_self();
      v106 = sub_1A84E565C();
      v105 = v283;
      if (qword_1EB2E5990 != -1)
      {
        swift_once();
      }

      v107 = v319;
      v108 = sub_1A824431C(v319, qword_1EB2E7FC8);
      swift_beginAccess();
      v109 = v318;
      v110 = v317;
      (*(v318 + 16))(v317, v108, v107);
      v111 = sub_1A84E576C();
      (*(v109 + 8))(v110, v107);
      v112 = [v313 stringFromDate:v106 timeZone:v111 formatOptions:1907];

      v271 = sub_1A84E5DBC();
      v274 = v113;

      v91 = v324;
      v61 = v323;
      (*(v324 + 8))(v316, v323);
    }

    v114 = v320;
    v115 = v105;
    v116 = v314;
    sub_1A8243D74(v115, v314, &qword_1EB2E6F48, &unk_1A8501F00);
    if (v311(v116, 1, v61) == 1)
    {
      sub_1A824B2D4(v116, &qword_1EB2E6F48, &unk_1A8501F00);
      v270 = 0;
      v273 = 0;
    }

    else
    {
      (*(v91 + 32))(v114, v116, v61);
      v316 = objc_opt_self();
      v117 = v91;
      v118 = sub_1A84E565C();
      if (qword_1EB2E5990 != -1)
      {
        swift_once();
      }

      v119 = v319;
      v120 = sub_1A824431C(v319, qword_1EB2E7FC8);
      swift_beginAccess();
      v121 = v318;
      v122 = v317;
      (*(v318 + 16))(v317, v120, v119);
      v123 = sub_1A84E576C();
      (*(v121 + 8))(v122, v119);
      v124 = [v316 stringFromDate:v118 timeZone:v123 formatOptions:1907];

      v270 = sub_1A84E5DBC();
      v273 = v125;

      (*(v117 + 8))(v320, v323);
    }

    v252 = type metadata accessor for ImportExport.Message(0);
    v126 = *(v252 + 80);
    *&v325[0] = 0;
    sub_1A84E5B8C();
    v127 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
    v259 = v126;
    v289 = v127;
    sub_1A84E594C();
    if (!v274)
    {
      v130 = v275;
      v129 = v310;
      v131 = v273;
      if (!v275)
      {
        goto LABEL_56;
      }

LABEL_52:
      v132 = HIBYTE(v130) & 0xF;
      if ((v130 & 0x2000000000000000) == 0)
      {
        v132 = v272 & 0xFFFFFFFFFFFFLL;
      }

      if (v132)
      {
        v129 |= 8uLL;
      }

      goto LABEL_56;
    }

    v128 = HIBYTE(v274) & 0xF;
    if ((v274 & 0x2000000000000000) == 0)
    {
      v128 = v271 & 0xFFFFFFFFFFFFLL;
    }

    v129 = v310;
    if (v128)
    {
      v129 = v310 | 4;
    }

    v130 = v275;
    v131 = v273;
    if (v275)
    {
      goto LABEL_52;
    }

LABEL_56:
    if (v131)
    {
      v133 = HIBYTE(v131) & 0xF;
      if ((v131 & 0x2000000000000000) == 0)
      {
        v133 = v270 & 0xFFFFFFFFFFFFLL;
      }

      if (v133)
      {
        v129 |= 0x10uLL;
      }
    }

    if ((~v129 & 0x8002) != 0)
    {
      v134 = v129 | 0x8002;
    }

    else
    {
      v134 = v129;
    }

    v135 = v288;
    sub_1A8423270(v288, v325);
    v136 = *&v325[0];
    if ((*&v325[0] & ~v134) == 0)
    {
      v136 = 0;
    }

    v250 = v136;
    v251 = v134;
    v137 = *(v135 + 16);
    v138 = MEMORY[0x1E69E7CC0];
    if (v137)
    {
      *&v325[0] = MEMORY[0x1E69E7CC0];
      sub_1A83EF534(0, v137, 0);
      v138 = *&v325[0];
      v139 = v135 + ((*(v315 + 80) + 32) & ~*(v315 + 80));
      v324 = *(v315 + 72);
      v140 = v292;
      do
      {
        v141 = v370;
        sub_1A8492628(v139, v370);
        v142 = (v141 + *(v140 + 76));
        v143 = *v142;
        v144 = v142[1];

        sub_1A849268C(v141, type metadata accessor for ImportExport.MessagePart);
        *&v325[0] = v138;
        v146 = *(v138 + 16);
        v145 = *(v138 + 24);
        if (v146 >= v145 >> 1)
        {
          sub_1A83EF534((v145 > 1), v146 + 1, 1);
          v140 = v292;
          v138 = *&v325[0];
        }

        *(v138 + 16) = v146 + 1;
        v147 = v138 + 16 * v146;
        *(v147 + 32) = v143;
        *(v147 + 40) = v144;
        v139 += v324;
        --v137;
      }

      while (v137);
      v76 = v294;
    }

    *&v325[0] = v138;
    sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
    sub_1A8407D84();
    v267 = sub_1A84E5D6C();
    v268 = v148;

    v149 = *(v288 + 16);
    if (!v149)
    {
      break;
    }

    v150 = 0;
    v93 = 0;
    v287 = (*(v315 + 80) + 32) & ~*(v315 + 80);
    v151 = MEMORY[0x1E69E7CC0];
    v323 = *(v315 + 72);
    v249 = (v288 + v287);
    v152 = v288 + v287;
    v285 = v149;
    v153 = v149;
    do
    {
      v297 = v152;
      v298 = v153;
      sub_1A8492628(v152, v76);
      v154 = *(v76 + 48);
      v320 = v151;
      if (v154)
      {
        v370 = *(v76 + 40);
        v155 = v292;
        v324 = v154;
      }

      else
      {
        v155 = v292;
        v324 = sub_1A84E5E7C();
        v370 = v93;
      }

      v156 = *(v76 + 56);
      if (v156 < 0)
      {
        v156 = v150;
      }

      v311 = v156;
      v157 = *(v76 + 8);
      v308 = *v76;
      v158 = (v76 + v155[19]);
      v159 = v158[1];
      v310 = *v158;
      v299 = v159;
      v306 = *(v76 + 16);
      v314 = *(v76 + 96);
      v160 = *(v76 + 168);
      v161 = *(v76 + 120);
      v162 = *(v76 + 136);
      v330 = *(v76 + 152);
      v331 = v160;
      v328 = v161;
      v329 = v162;
      v327 = *(v76 + 104);
      v163 = v155[13];
      v164 = (v76 + v155[12]);
      v165 = v164[1];
      v317 = *v164;
      v166 = *(v76 + v163 + 8);
      v319 = *(v76 + v163);
      v318 = v166;
      v167 = v155[15];
      v168 = (v76 + v155[14]);
      v169 = v168[1];
      v315 = *v168;
      v303 = v165;
      v304 = v169;
      v170 = *(v76 + v167 + 8);
      v316 = *(v76 + v167);
      v307 = v170;
      v171 = *(v76 + 80);
      v300 = *(v76 + 64);
      v301 = v171;

      sub_1A8243D74(&v327, v325, &qword_1EB2E6F58, &qword_1A8501388);

      v172 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
      sub_1A84E595C();
      v305 = *&v325[0];
      v173 = v155[17];
      LODWORD(v309) = *(v76 + v155[16]);
      LODWORD(v313) = *(v76 + v173);
      LODWORD(v312) = *(v76 + v155[18]);
      v302 = *(v76 + v155[20]);
      v174 = v321;
      sub_1A8243D74(v76 + v155[11], v321 + v155[11], &qword_1EB2E6F50, &unk_1A8502920);
      *(v174 + 96) = 0u;
      *(v174 + 112) = 0u;
      *(v174 + 128) = 0u;
      *(v174 + 144) = 0u;
      *(v174 + 160) = 0u;
      *(v174 + 176) = 0;
      *(v174 + 64) = 0u;
      *(v174 + 80) = 0u;
      v175 = v155[21];
      *&v325[0] = 0;

      sub_1A84E5B8C();
      sub_1A84E594C();
      *(v174 + 16) = v306;
      *v174 = v308;
      *(v174 + 8) = v157;
      v176 = v311;
      v177 = v324;
      *(v174 + 40) = v370;
      *(v174 + 48) = v177;
      v178 = (v174 + v155[19]);
      v179 = v299;
      *v178 = v310;
      v178[1] = v179;

      v180 = v301;
      *(v174 + 64) = v300;
      *(v174 + 80) = v180;
      *(v174 + 96) = v314;
      v181 = *(v174 + 120);
      v182 = *(v174 + 152);
      v325[2] = *(v174 + 136);
      v325[3] = v182;
      v325[4] = *(v174 + 168);
      v325[0] = *(v174 + 104);
      v325[1] = v181;
      sub_1A824B2D4(v325, &qword_1EB2E6F58, &qword_1A8501388);
      v183 = v327;
      *(v174 + 120) = v328;
      v184 = v330;
      *(v174 + 136) = v329;
      *(v174 + 152) = v184;
      *(v174 + 168) = v331;
      *(v174 + 104) = v183;
      v185 = (v174 + v155[12]);
      v186 = v303;
      *v185 = v317;
      v185[1] = v186;
      v187 = (v174 + v155[13]);
      v188 = v319;
      v189 = v318;
      *v187 = v319;
      v187[1] = v189;
      v190 = (v174 + v155[14]);
      v191 = v304;
      *v190 = v315;
      v190[1] = v191;
      v192 = (v174 + v155[15]);
      v193 = v307;
      *v192 = v316;
      v192[1] = v193;
      sub_1A83F5918(v188, v189);
      (*(*(v172 - 8) + 8))(v174 + v175, v172);
      v326 = v305;
      sub_1A84E5B8C();
      sub_1A84E594C();
      *(v174 + v155[16]) = v309;
      *(v174 + v155[17]) = v313;
      *(v174 + v155[18]) = v312;
      *(v174 + v155[20]) = v302;
      v194 = v296;
      *(v174 + 24) = v293;
      *(v174 + 32) = v194;
      v195 = v176;
      *(v174 + 56) = v176;
      sub_1A8492628(v174, v322);

      v151 = v320;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v96 = v370;
      v197 = v324;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v151 = sub_1A83EF140(0, *(v151 + 2) + 1, 1, v151);
      }

      v93 = *(v151 + 2);
      v198 = *(v151 + 3);
      v199 = v291;
      v76 = v294;
      if (v93 >= v198 >> 1)
      {
        v151 = sub_1A83EF140((v198 > 1), v93 + 1, 1, v151);
      }

      *(v151 + 2) = v93 + 1;
      sub_1A84926EC(v322, &v151[v287 + v93 * v323]);
      sub_1A849268C(v321, type metadata accessor for ImportExport.MessagePart);
      v150 = v195 + 1;
      if (__OFADD__(v195, 1))
      {
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      v200 = &v96[v197];
      if (__OFADD__(v96, v197))
      {
        goto LABEL_116;
      }

      v93 = (v200 + 1);
      v96 = v298;
      if (__OFADD__(v200, 1))
      {
        goto LABEL_117;
      }

      sub_1A849268C(v76, type metadata accessor for ImportExport.MessagePart);
      v152 = v297 + v323;
      v153 = v96 - 1;
    }

    while (v153);
    v201 = 0;
    *&v327 = -1;
    v93 = v282;
    v202 = v269;
    v76 = v267;
    v203 = v268;
    v96 = v249;
    while (v201 < *(v288 + 16))
    {
      sub_1A8492628(v96, v199);
      v204 = v290;
      sub_1A842343C(v199, &v327, v76, v203);
      v290 = v204;
      if (v204)
      {
        sub_1A849268C(v199, type metadata accessor for ImportExport.MessagePart);

        sub_1A8400ED8(&v334);
        sub_1A8400ED8(&v352);

        sub_1A84E5C8C();
        v233 = v290;
        v234 = v290;
        v235 = sub_1A84E5C7C();
        v236 = sub_1A84E619C();

        if (os_log_type_enabled(v235, v236))
        {
          v237 = swift_slowAlloc();
          v238 = swift_slowAlloc();
          *v237 = 138412290;
          v239 = v233;
          v240 = _swift_stdlib_bridgeErrorToNSError();
          *(v237 + 4) = v240;
          *v238 = v240;
          _os_log_impl(&dword_1A823F000, v235, v236, "Failed to create a message with Error: %@", v237, 0xCu);
          sub_1A824B2D4(v238, &unk_1EB2E9070, &unk_1A8501A90);
          MEMORY[0x1AC56D3F0](v238, -1, -1);
          v241 = v237;
          v93 = v282;
          MEMORY[0x1AC56D3F0](v241, -1, -1);
        }

        (*(v277 + 8))(v279, v278);
        swift_willThrow();

        sub_1A849268C(v266, type metadata accessor for ImportExport.Conversation);
        sub_1A824B2D4(v283, &qword_1EB2E6F48, &unk_1A8501F00);
        sub_1A824B2D4(v281, &qword_1EB2E6F48, &unk_1A8501F00);
        sub_1A824B2D4(v276, &qword_1EB2E6F48, &unk_1A8501F00);
        v242 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
        return (*(*(v242 - 8) + 8))(v93 + v259, v242);
      }

      ++v201;
      sub_1A849268C(v199, type metadata accessor for ImportExport.MessagePart);
      v96 += v323;
      if (v285 == v201)
      {
        v205 = v266;
        goto LABEL_95;
      }
    }

LABEL_118:
    __break(1u);
LABEL_119:
    swift_once();
LABEL_35:
    v97 = v319;
    v98 = sub_1A824431C(v319, qword_1EB2E7FC8);
    swift_beginAccess();
    v99 = v318;
    v100 = v317;
    (*(v318 + 16))(v317, v98, v97);
    v101 = sub_1A84E576C();
    (*(v99 + 8))(v100, v97);
    v102 = [v309 stringFromDate:v96 timeZone:v101 formatOptions:1907];

    v272 = sub_1A84E5DBC();
    v275 = v103;

    v91 = v324;
    (*(v324 + 8))(v312, v93);
    v61 = v93;
    v92 = v311;
  }

  v151 = MEMORY[0x1E69E7CC0];
  v93 = v282;
  v205 = v266;
  v76 = v267;
  v202 = v269;
  v203 = v268;
LABEL_95:
  v206 = v250 | v251;

  v207 = v296;
  *v93 = v293;
  *(v93 + 8) = v207;
  *(v93 + 112) = v76;
  *(v93 + 120) = v203;
  v208 = v252;
  *(v93 + 16) = v253;
  v209 = v284;
  *(v93 + 32) = v280;
  *(v93 + 40) = v209;
  v210 = (v93 + v208[23]);
  v211 = v355;
  v210[2] = v354;
  v210[3] = v211;
  v212 = v360;
  v210[7] = v359;
  v210[8] = v212;
  v213 = v358;
  v210[5] = v357;
  v210[6] = v213;
  v210[4] = v356;
  v214 = v353;
  *v210 = v352;
  v210[1] = v214;
  v215 = (v93 + v208[24]);
  v216 = v341;
  v215[6] = v340;
  v215[7] = v216;
  v215[8] = v342;
  v217 = v337;
  v215[2] = v336;
  v215[3] = v217;
  v218 = v339;
  v215[4] = v338;
  v215[5] = v218;
  v219 = v335;
  *v215 = v334;
  v215[1] = v219;
  v220 = v262;
  *(v93 + 80) = v254;
  *(v93 + 88) = v220;
  v221 = v265;
  *(v93 + 96) = v258;
  *(v93 + 104) = v221;
  v222 = v275;
  *(v93 + 128) = v272;
  *(v93 + 136) = v222;
  v223 = v274;
  *(v93 + 144) = v271;
  *(v93 + 152) = v223;
  v224 = v273;
  *(v93 + 160) = v270;
  *(v93 + 168) = v224;
  v225 = v264;
  *(v93 + 176) = v257;
  *(v93 + 184) = v225;
  *(v93 + 208) = v202;
  *(v93 + 216) = v151;
  sub_1A8400E7C(&v352, v325);
  sub_1A8400E7C(&v334, v325);
  v226 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  (*(*(v226 - 8) + 8))(v93 + v259, v226);
  *&v325[0] = v260;
  sub_1A84E5B8C();
  sub_1A84E594C();
  v227 = (v93 + v208[21]);
  v228 = v263;
  *v227 = v256;
  v227[1] = v228;
  v229 = (v93 + v208[22]);
  v230 = v261;
  *v229 = v255;
  v229[1] = v230;
  *(v93 + 24) = v206;

  if (v202 > 3)
  {
    if (v202 > 5)
    {
      if (v202 == 6)
      {
        v231 = 0xE300000000000000;
        v232 = 5456722;
      }

      else
      {
        v231 = 0xEC000000534D5365;
        v232 = 0x74696C6C65746153;
      }
    }

    else if (v202 == 4)
    {
      v232 = 5459283;
      v231 = 0xE300000000000000;
    }

    else
    {
      v231 = 0xE800000000000000;
      v232 = 0x656D695465636146;
    }
  }

  else if (v202 > 1)
  {
    if (v202 == 2)
    {
      v231 = 0xE800000000000000;
    }

    else
    {
      v231 = 0xEC0000006574694CLL;
    }

    v232 = 0x6567617373654D69;
  }

  else if (v202)
  {
    v231 = 0xE300000000000000;
    v232 = 7958113;
  }

  else
  {
    v231 = 0xE700000000000000;
    v232 = 0x6E776F6E6B6E75;
  }

  sub_1A849268C(v205, type metadata accessor for ImportExport.Conversation);
  sub_1A824B2D4(v283, &qword_1EB2E6F48, &unk_1A8501F00);
  sub_1A824B2D4(v281, &qword_1EB2E6F48, &unk_1A8501F00);
  sub_1A824B2D4(v276, &qword_1EB2E6F48, &unk_1A8501F00);
  v243 = v282;
  v282[24] = v232;
  v243[25] = v231;
  v244 = *(&v354 + 1);
  v245 = v355;

  sub_1A8400ED8(&v352);
  v243[6] = v244;
  v243[7] = v245;
  v246 = *(&v336 + 1);
  v247 = v337;

  result = sub_1A8400ED8(&v334);
  v243[8] = v246;
  v243[9] = v247;
  return result;
}

unint64_t IMDMessageRecord.messageState.getter@<X0>(void *a1@<X8>)
{
  sub_1A84924EC([v1 flags], &v4);
  if ([v1 rawDate] && (v4 & 8) == 0)
  {
    v4 |= 8uLL;
  }

  if ([v1 isReply] && (v4 & 0x40) == 0)
  {
    v4 |= 0x40uLL;
  }

  result = [v1 isAssociatedMessage];
  if (result)
  {
    result = [v1 associatedMessageType];
    if ((result & 0xFFFFFFFFFFFFFFF8) == 0x7D0 || (result & 0xFFFFFFFFFFFFFFF8) == 0xBB8 || (result = [v1 associatedMessageType], result == 4000) || (result = objc_msgSend(v1, sel_associatedMessageType), (result & 0xFFFFFFFFFFFFFFFELL) == 0x3E8))
    {
      if ((v4 & 0x80) == 0)
      {
        v4 |= 0x80uLL;
      }
    }
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1A84923BC()
{
  v1 = [v0 serviceName];
  v2 = sub_1A84E5DBC();
  v4 = v3;

  if (v2 == sub_1A84E5DBC() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_1A84E67AC();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  if ([v0 isFromMe])
  {
    v8 = [v0 guid];
  }

  else
  {
    v8 = [v0 fallbackHash];
    if (!v8)
    {
      return 0;
    }
  }

  v9 = sub_1A84E5DBC();

  return v9;
}

uint64_t sub_1A84924EC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (qword_1EB2E59B8 != -1)
  {
LABEL_20:
    v14 = result;
    v15 = a2;
    swift_once();
    result = v14;
    a2 = v15;
  }

  v2 = 0;
  v3 = 0;
  v4 = 1 << *(qword_1EB2FF338 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(qword_1EB2FF338 + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_10:
      v9 = (v8 << 9) | (8 * __clz(__rbit64(v6)));
      v10 = *(*(qword_1EB2FF338 + 48) + v9);
      v6 &= v6 - 1;
      v11 = *(*(qword_1EB2FF338 + 56) + v9) & ~result;
      if ((v10 & ~v3) != 0 && v11 == 0)
      {
        v13 = v10;
      }

      else
      {
        v13 = 0;
      }

      v3 |= v13;
      if (!v6)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(qword_1EB2FF338 + 64 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_10;
    }
  }

  *a2 = v3;
  return result;
}

unint64_t sub_1A8492600()
{
  result = sub_1A83EC490(&unk_1F1B70B28);
  qword_1EB2FF338 = result;
  return result;
}

uint64_t sub_1A8492628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.MessagePart(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A849268C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A84926EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.MessagePart(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8492750(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1EB2E59B8 != -1)
  {
LABEL_15:
    swift_once();
  }

  result = 0;
  v3 = 0;
  v4 = 1 << *(qword_1EB2FF338 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(qword_1EB2FF338 + 64);
  v7 = (v4 + 63) >> 6;
  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_5:
    while (1)
    {
      v8 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v9 = v8 | (v3 << 6);
      if ((*(*(qword_1EB2FF338 + 48) + 8 * v9) & ~v1) == 0)
      {
        break;
      }

      if (!v6)
      {
        goto LABEL_7;
      }
    }

    result |= *(*(qword_1EB2FF338 + 56) + 8 * v9);
  }

  while (v6);
  while (1)
  {
LABEL_7:
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    if (v10 >= v7)
    {
      return result;
    }

    v6 = *(qword_1EB2FF338 + 64 + 8 * v10);
    ++v3;
    if (v6)
    {
      v3 = v10;
      goto LABEL_5;
    }
  }
}

uint64_t sub_1A8492848@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v230 = a2;
  v238 = *MEMORY[0x1E69E9840];
  v3 = sub_1A83EA2FC(&qword_1EB2E7340, &qword_1A8501EF8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v179 = v171 - v4;
  v181 = sub_1A84E5C5C();
  v182 = *(v181 - 8);
  v5 = MEMORY[0x1EEE9AC00](v181);
  v178 = v171 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v180 = v171 - v7;
  v8 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v183 = v171 - v9;
  v186 = sub_1A84E5C9C();
  v185 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v187 = v171 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A84E558C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v184 = v171 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v188 = v171 - v15;
  v194 = sub_1A84E531C();
  v193 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v192 = v171 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A84E5B9C();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v232 = v171 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A83EA2FC(&qword_1EB2E7348, &qword_1A8504400);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v231 = v171 - v20;
  v218 = sub_1A84E577C();
  v233 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v217 = v171 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_1A84E56DC();
  v219 = *(v220 - 1);
  v22 = MEMORY[0x1EEE9AC00](v220);
  v177 = v171 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v171 - v24;
  v26 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v191 = v171 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = v171 - v29;
  v31 = [a1 guid];
  v214 = sub_1A84E5DBC();
  v213 = v32;

  v33 = [a1 path];
  v34 = sub_1A84E5DBC();
  v36 = v35;

  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = v34 & 0xFFFFFFFFFFFFLL;
  }

  v226 = v11;
  if (v37)
  {
    v38 = [a1 path];
    sub_1A84E5DBC();

    sub_1A84E5E2C();

    sub_1A84E54FC();

    (*(v12 + 56))(v30, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v30, 1, 1, v11);
  }

  v39 = v12;
  v40 = v30;
  v41 = [a1 transferName];
  v189 = sub_1A84E5DBC();
  v190 = v42;

  v43 = [a1 messageRecord];
  v44 = [v43 guid];

  v212 = sub_1A84E5DBC();
  v211 = v45;

  v46 = [a1 utiString];
  v223 = sub_1A84E5DBC();
  v222 = v47;

  v48 = [a1 mimeType];
  if (v48)
  {
    v49 = v48;
    v216 = sub_1A84E5DBC();
    v224 = v50;
  }

  else
  {
    v216 = 0;
    v224 = 0;
  }

  v225 = v39;
  v51 = [a1 createdDate];
  sub_1A84E569C();

  v52 = objc_opt_self();
  v53 = sub_1A84E565C();
  if (qword_1EB2E5990 != -1)
  {
    swift_once();
  }

  v54 = v218;
  v55 = sub_1A824431C(v218, qword_1EB2E7FC8);
  swift_beginAccess();
  v56 = v233;
  v57 = *(v233 + 16);
  v58 = v217;
  v175 = v55;
  v174 = v233 + 16;
  v173 = v57;
  v57(v217, v55, v54);
  v62 = sub_1A84E576C();
  v59 = *(v56 + 8);
  v233 = v56 + 8;
  v171[0] = v59;
  v59(v58, v54);
  v60 = [v52 stringFromDate:v53 timeZone:v62 formatOptions:1907];

  v228 = sub_1A84E5DBC();
  v234 = v61;

  v172 = v219[1];
  v171[1] = v219 + 1;
  v172(v25, v220);
  v229 = [a1 totalBytes];
  LODWORD(v62) = [a1 isOutgoing];
  v210 = [a1 isSticker];
  v209 = [a1 isCommSafetySensitive];
  v63 = [a1 emojiImageContentIdentifier];
  v208 = sub_1A84E5DBC();
  v207 = v64;

  v65 = [a1 emojiImageShortDescription];
  v205 = sub_1A84E5DBC();
  v204 = v66;

  v206 = [a1 isAdaptiveImageGlyph];
  v67 = [a1 transferUserInfo];
  if (v67)
  {
    v68 = v67;
    v69 = sub_1A84E5D3C();

    sub_1A84A5368(v69);
    v203 = v70;
  }

  else
  {
    v203 = 0;
  }

  v71 = [a1 stickerUserInfo];
  if (v71)
  {
    v72 = v71;
    v73 = sub_1A84E5D3C();

    sub_1A84A5368(v73);
    v202 = v74;
  }

  else
  {
    v202 = 0;
  }

  v75 = [a1 attributionInfo];
  v176 = v52;
  if (v75)
  {
    v76 = v75;
    v77 = sub_1A84E5D3C();

    sub_1A84A5368(v77);
    v201 = v78;
  }

  else
  {
    v201 = 0;
  }

  v79 = type metadata accessor for ImportExport.AttachmentDownloadError(0);
  (*(*(v79 - 8) + 56))(v231, 1, 1, v79);
  sub_1A8494214(&v236);
  v200 = v236;
  v80 = [a1 rowID];
  v81 = type metadata accessor for ImportExport.Attachment(0);
  v82 = v230;
  v83 = v230 + v81[24];
  v237[0] = 0;
  sub_1A84E5B8C();
  v84 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v198 = v83;
  sub_1A84E594C();
  v85 = v82 + v81[25];
  v237[0] = 0;
  sub_1A84E5B8C();
  v195 = v85;
  sub_1A84E594C();
  v197 = v81;
  v86 = v82 + v81[26];
  v237[0] = 0;
  sub_1A84E5B8C();
  v196 = v86;
  v199 = v84;
  sub_1A84E594C();
  v237[0] = v189;
  v237[1] = v190;
  v87 = v192;
  sub_1A84E530C();
  sub_1A840D3B0();
  v88 = sub_1A84E636C();
  v90 = v89;
  (*(v193 + 8))(v87, v194);

  v91 = v191;
  sub_1A8243D74(v40, v191, &qword_1EB2E7068, &unk_1A8501EB0);
  v92 = v225;
  v93 = v226;
  v94 = (*(v225 + 48))(v91, 1, v226);
  v215 = a1;
  v227 = v40;
  if (v94 == 1)
  {
    sub_1A824B2D4(v91, &qword_1EB2E7068, &unk_1A8501EB0);
    v95 = v222;
LABEL_22:
    v96 = v212;
    goto LABEL_65;
  }

  v194 = v80;
  v97 = v188;
  (*(v92 + 32))(v188, v91, v93);
  v98 = HIBYTE(v234) & 0xF;
  if (v229 && v224)
  {
    v99 = v228 & 0xFFFFFFFFFFFFLL;
    if ((v234 & 0x2000000000000000) != 0)
    {
      v99 = HIBYTE(v234) & 0xF;
    }

    if (v99)
    {
      v100 = HIBYTE(v222) & 0xF;
      if ((v222 & 0x2000000000000000) == 0)
      {
        v100 = v223 & 0xFFFFFFFFFFFFLL;
      }

      if (v100)
      {
        (*(v92 + 8))(v97, v93);
        v40 = v227;
        v95 = v222;
LABEL_64:
        v96 = v212;
        v80 = v194;
        goto LABEL_65;
      }
    }
  }

  LODWORD(v193) = v62;
  v101 = [objc_opt_self() defaultManager];
  sub_1A84E555C();
  v102 = sub_1A84E5D8C();

  v237[0] = 0;
  v103 = [v101 attributesOfItemAtPath:v102 error:v237];

  v104 = v237[0];
  if (v103)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_1A844F1D0();
    v105 = sub_1A84E5D3C();
    v106 = v104;

    v107 = HIBYTE(v90) & 0xF;
    if ((v90 & 0x2000000000000000) == 0)
    {
      v107 = v88 & 0xFFFFFFFFFFFFLL;
    }

    if (v107)
    {
      v62 = v188;
      if (!*(v105 + 16))
      {
        goto LABEL_54;
      }
    }

    else
    {

      v62 = v188;
      v88 = sub_1A84E550C();
      v90 = v126;
      if (!*(v105 + 16))
      {
        goto LABEL_54;
      }
    }

    v127 = sub_1A8490560();
    if (v128)
    {
      sub_1A8244F40(*(v105 + 56) + 32 * v127, v237);
      if (swift_dynamicCast())
      {
        sub_1A84E5C4C();
        v129 = v179;
        sub_1A84E5C2C();
        v130 = v182;
        v131 = v181;
        if ((*(v182 + 48))(v129, 1, v181) == 1)
        {
          sub_1A824B2D4(v129, &qword_1EB2E7340, &qword_1A8501EF8);
          v62 = v188;
        }

        else
        {
          (*(v130 + 32))(v180, v129, v131);
          v133 = HIBYTE(v222) & 0xF;
          if ((v222 & 0x2000000000000000) == 0)
          {
            v133 = v223 & 0xFFFFFFFFFFFFLL;
          }

          if (!v133)
          {
            v223 = sub_1A84E5C1C();
            v135 = v134;

            v222 = v135;
            v131 = v181;
          }

          v62 = v188;
          if (!v224)
          {
            v136 = sub_1A84E5C3C();
            v131 = v181;
            v216 = v136;
            v224 = v137;
          }

          (*(v182 + 8))(v180, v131);
        }
      }
    }

LABEL_54:
    if (!v229)
    {
      if (*(v105 + 16) && (v138 = sub_1A8490560(), (v139 & 1) != 0) && (sub_1A8244F40(*(v105 + 56) + 32 * v138, v237), swift_dynamicCast()))
      {
        v229 = v235;
      }

      else
      {
        v229 = 0;
      }
    }

    v140 = v228 & 0xFFFFFFFFFFFFLL;
    if ((v234 & 0x2000000000000000) != 0)
    {
      v140 = v98;
    }

    if (v140)
    {
      (*(v225 + 8))(v62, v226);

      v40 = v227;
      v95 = v222;
      LOBYTE(v62) = v193;
      goto LABEL_64;
    }

    v40 = v227;
    v80 = v194;
    if (*(v105 + 16) && (v155 = sub_1A8490560(), (v156 & 1) != 0))
    {
      sub_1A8244F40(*(v105 + 56) + 32 * v155, v237);

      v157 = v183;
      v158 = v220;
      v159 = swift_dynamicCast();
      v160 = v219;
      (v219[7])(v157, v159 ^ 1u, 1, v158);
      if ((v160[6])(v157, 1, v158) != 1)
      {
        (v160[4])(v177, v157, v158);
        v161 = sub_1A84E565C();
        v162 = v90;
        v163 = v217;
        v164 = v218;
        v173(v217, v175, v218);
        v165 = sub_1A84E576C();
        v166 = v163;
        v90 = v162;
        (v171[0])(v166, v164);
        v167 = v62;
        v168 = [v176 stringFromDate:v161 timeZone:v165 formatOptions:1907];

        v228 = sub_1A84E5DBC();
        v170 = v169;

        v172(v177, v220);
        (*(v225 + 8))(v167, v226);
        v234 = v170;
        goto LABEL_72;
      }

      (*(v225 + 8))(v62, v226);
    }

    else
    {

      (*(v225 + 8))(v62, v226);
      v157 = v183;
      (v219[7])(v183, 1, 1, v220);
    }

    sub_1A824B2D4(v157, &qword_1EB2E6F48, &unk_1A8501F00);
LABEL_72:
    v95 = v222;
    LOBYTE(v62) = v193;
    goto LABEL_22;
  }

  v233 = v88;
  v108 = v237[0];
  v109 = sub_1A84E548C();

  v220 = v109;
  swift_willThrow();
  v221 = 0;
  v110 = v187;
  sub_1A84E5C8C();
  v111 = v225;
  v112 = v226;
  v113 = v184;
  (*(v225 + 16))(v184, v97, v226);
  v114 = sub_1A84E5C7C();
  v115 = sub_1A84E619C();
  if (os_log_type_enabled(v114, v115))
  {
    v116 = v113;
    v117 = swift_slowAlloc();
    v219 = swift_slowAlloc();
    v237[0] = v219;
    *v117 = 136315138;
    v118 = v90;
    v119 = sub_1A84E555C();
    v121 = v120;
    v122 = *(v111 + 8);
    v122(v116, v112);
    v123 = v119;
    v90 = v118;
    v124 = sub_1A82446BC(v123, v121, v237);

    *(v117 + 4) = v124;
    _os_log_impl(&dword_1A823F000, v114, v115, "Failed to get file attributes for file ath path: %s", v117, 0xCu);
    v125 = v219;
    sub_1A8244788(v219);
    MEMORY[0x1AC56D3F0](v125, -1, -1);
    MEMORY[0x1AC56D3F0](v117, -1, -1);

    (*(v185 + 8))(v187, v186);
    v122(v188, v226);
  }

  else
  {

    v132 = *(v111 + 8);
    v132(v113, v112);
    (*(v185 + 8))(v110, v186);
    v132(v97, v112);
  }

  v40 = v227;
  v96 = v212;
  v95 = v222;
  LOBYTE(v62) = v193;
  v80 = v194;
  v88 = v233;
LABEL_65:
  v141 = v230;
  v142 = v213;
  *v230 = v214;
  v141[1] = v142;
  v141[2] = v80;
  v141[3] = v96;
  v141[4] = v211;
  v141[5] = v88;
  v141[6] = v90;
  v143 = v197;
  v144 = (v141 + v197[14]);
  v145 = v234;
  *v144 = v228;
  v144[1] = v145;
  *(v141 + v143[15]) = v229;
  v141[7] = v223;
  v141[8] = v95;
  v146 = v224;
  v141[9] = v216;
  v141[10] = v146;
  sub_1A8243D74(v40, v141 + v143[10], &qword_1EB2E7068, &unk_1A8501EB0);
  *(v141 + v143[11]) = 0;
  *(v141 + v143[12]) = 0;
  *(v141 + v143[13]) = 0;
  *(v141 + v143[18]) = v62;
  *(v141 + v143[16]) = v210;
  *(v141 + v143[17]) = v209;
  v147 = (v141 + v143[19]);
  v148 = v207;
  *v147 = v208;
  v147[1] = v148;
  v149 = (v141 + v143[20]);
  v150 = v204;
  *v149 = v205;
  v149[1] = v150;
  v151 = v231;
  sub_1A8243D74(v231, v141 + v143[21], &qword_1EB2E7348, &qword_1A8504400);
  *(v141 + v143[22]) = v206;
  v152 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  v153 = *(*(v152 - 8) + 8);
  v153(v198, v152);
  v237[0] = v203;
  sub_1A84E5B8C();
  sub_1A84E594C();
  v153(v195, v152);
  v237[0] = v202;
  sub_1A84E5B8C();
  sub_1A84E594C();
  v153(v196, v152);
  v237[0] = v201;
  sub_1A84E5B8C();
  sub_1A84E594C();

  sub_1A824B2D4(v151, &qword_1EB2E7348, &qword_1A8504400);
  result = sub_1A824B2D4(v227, &qword_1EB2E7068, &unk_1A8501EB0);
  *(v141 + v143[23]) = v200;
  return result;
}

uint64_t sub_1A8494214@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A84E5C9C();
  v49 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v47 - v10;
  v12 = [v2 path];
  v13 = sub_1A84E5DBC();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = [v2 path];
    sub_1A84E5DBC();

    sub_1A84E5E2C();

    sub_1A84E54FC();

    v18 = sub_1A84E558C();
    (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
  }

  else
  {
    v18 = sub_1A84E558C();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  }

  v53 = 0;
  sub_1A84E558C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v11, 1, v18) == 1)
  {
    goto LABEL_9;
  }

  sub_1A8243D74(v11, v9, &qword_1EB2E7068, &unk_1A8501EB0);
  result = (v20)(v9, 1, v18);
  if (result != 1)
  {
    v22 = sub_1A84E54CC();
    (*(v19 + 8))(v9, v18);
    if (v22)
    {
LABEL_19:
      swift_beginAccess();
      *a1 = v53;
      return sub_1A824B2D4(v11, &qword_1EB2E7068, &unk_1A8501EB0);
    }

LABEL_9:
    if ([v2 cloudSyncState] == 1)
    {
      v23 = 0;
    }

    else
    {
      v23 = 4;
      v53 = 4;
    }

    if ([v2 transferState] != 5)
    {
      v23 |= 2uLL;
      v53 = v23;
    }

    v48 = v4;
    if (v20(v11, 1, v18) == 1)
    {
      v53 = v23 | 0x20;
    }

    strcpy(v52, "ImportExport.");
    HIWORD(v52[1]) = -4864;
    sub_1A8494838();
    v24 = sub_1A84E69AC();
    MEMORY[0x1AC56A990](v24);

    v25 = v50;
    sub_1A84E5C8C();
    v26 = v2;
    v27 = sub_1A84E5C7C();
    v28 = sub_1A84E618C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v47 = a1;
      v31 = v30;
      v52[0] = v30;
      *v29 = 136315906;
      v32 = [v26 guid];
      v33 = sub_1A84E5DBC();
      v35 = v34;

      v36 = sub_1A82446BC(v33, v35, v52);

      *(v29 + 4) = v36;
      *(v29 + 12) = 2080;
      swift_beginAccess();
      v51 = v53;
      ImportExport.Attachment.MissingFileReasons.description.getter();
      v39 = sub_1A82446BC(v37, v38, v52);

      *(v29 + 14) = v39;
      *(v29 + 22) = 2080;
      v40 = sub_1A84E62FC();
      v42 = sub_1A82446BC(v40, v41, v52);

      *(v29 + 24) = v42;
      *(v29 + 32) = 2080;
      [v26 transferState];
      v43 = sub_1A84E628C();
      v45 = sub_1A82446BC(v43, v44, v52);

      *(v29 + 34) = v45;
      _os_log_impl(&dword_1A823F000, v27, v28, "Missing file for attachment %s: %s. [ck_sync_state: %s, file_transfer_state: %s", v29, 0x2Au);
      swift_arrayDestroy();
      v46 = v31;
      a1 = v47;
      MEMORY[0x1AC56D3F0](v46, -1, -1);
      MEMORY[0x1AC56D3F0](v29, -1, -1);

      (*(v49 + 8))(v50, v48);
    }

    else
    {

      (*(v49 + 8))(v25, v48);
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

unint64_t sub_1A8494838()
{
  result = qword_1EB2E85B0;
  if (!qword_1EB2E85B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2E85B0);
  }

  return result;
}

uint64_t sub_1A8494884@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v100 = a1;
  v107 = *MEMORY[0x1E69E9840];
  v9 = sub_1A84E5C9C();
  v97 = *(v9 - 8);
  v98 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v99 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v96 = &v87 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v95 = &v87 - v14;
  v15 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v87 - v19;
  v21 = sub_1A84E558C();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v94 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v93 = &v87 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v101 = &v87 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v87 - v29;
  v102 = type metadata accessor for ImportExport.Attachment(0);
  sub_1A84580FC(v5 + *(v102 + 40), v20);
  if ((*(v22 + 48))(v20, 1, v21) != 1)
  {
    (*(v22 + 32))(v30, v20, v21);
    if ((ImportExport.Attachment.existsOnDisk.getter() & 1) == 0)
    {
      (*(v22 + 8))(v30, v21);
      goto LABEL_8;
    }

    v91 = a4;
    v92 = v30;
    if (sub_1A84E555C() == 0xD000000000000014 && 0x80000001A85332F0 == v31)
    {

LABEL_11:
      (*(v22 + 8))(v92, v21);
      v32 = 1;
      a4 = v91;
      return (*(*(v102 - 8) + 56))(a4, v32, 1);
    }

    v34 = sub_1A84E67AC();

    if (v34)
    {
      goto LABEL_11;
    }

    if (a3)
    {
      v35 = a3;
    }

    else
    {
      v105 = 0;
      v106 = 0xE000000000000000;
      sub_1A84E646C();

      v105 = 0x656D686361747441;
      v106 = 0xEB000000002D746ELL;
      v104 = *(v5 + 16);
      v36 = sub_1A84E676C();
      MEMORY[0x1AC56A990](v36);

      MEMORY[0x1AC56A990](46, 0xE100000000000000);
      v37 = sub_1A84E54BC();
      MEMORY[0x1AC56A990](v37);

      a2 = v105;
      v35 = v106;
    }

    sub_1A84E552C();
    LOBYTE(v105) = 0;
    v90 = objc_opt_self();
    v38 = [v90 defaultManager];
    sub_1A84E555C();
    v39 = sub_1A84E5D8C();

    v40 = [v38 fileExistsAtPath:v39 isDirectory:&v105];

    if ((v40 & 1) == 0)
    {
      v41 = [v90 defaultManager];
      v42 = sub_1A84E551C();
      v43 = sub_1A84E551C();
      v105 = 0;
      LODWORD(v90) = [v41 copyItemAtURL:v42 toURL:v43 error:&v105];

      if (!v90)
      {
        v48 = v105;

        v49 = sub_1A84E548C();

        v100 = v49;
        swift_willThrow();
LABEL_22:
        v103 = 0;
        v89 = "taskDeadlineSeconds";
        v90 = "GHIJKLMNOPQRSTUVWXYZ0123456789";
        v50 = v95;
        sub_1A84E5C8C();
        v51 = v93;
        v88 = *(v22 + 16);
        v88(v93, v92, v21);
        v52 = sub_1A84E5C7C();
        v53 = sub_1A84E619C();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v105 = v87;
          *v54 = 136315138;
          v55 = sub_1A84E555C();
          v57 = v56;
          v93 = *(v22 + 8);
          (v93)(v51, v21);
          v58 = sub_1A82446BC(v55, v57, &v105);

          *(v54 + 4) = v58;
          _os_log_impl(&dword_1A823F000, v52, v53, "Failed to copy attachment from: %s", v54, 0xCu);
          v59 = v87;
          sub_1A8244788(v87);
          MEMORY[0x1AC56D3F0](v59, -1, -1);
          MEMORY[0x1AC56D3F0](v54, -1, -1);

          v60 = *(v97 + 8);
          v61 = v95;
        }

        else
        {

          v93 = *(v22 + 8);
          (v93)(v51, v21);
          v60 = *(v97 + 8);
          v61 = v50;
        }

        v62 = v98;
        v60(v61, v98);
        v63 = v96;
        v64 = v94;
        sub_1A84E5C8C();
        v88(v64, v101, v21);
        v65 = sub_1A84E5C7C();
        v66 = sub_1A84E619C();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = v64;
          v68 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v95 = v60;
          v69 = v105;
          *v68 = 136315138;
          v70 = sub_1A84E555C();
          v72 = v71;
          (v93)(v67, v21);
          v73 = sub_1A82446BC(v70, v72, &v105);

          *(v68 + 4) = v73;
          _os_log_impl(&dword_1A823F000, v65, v66, "                            to: %s", v68, 0xCu);
          sub_1A8244788(v69);
          v74 = v69;
          v60 = v95;
          v62 = v98;
          MEMORY[0x1AC56D3F0](v74, -1, -1);
          MEMORY[0x1AC56D3F0](v68, -1, -1);

          v75 = v96;
        }

        else
        {

          (v93)(v64, v21);
          v75 = v63;
        }

        v60(v75, v62);
        a4 = v91;
        sub_1A84E5C8C();
        v76 = v100;
        v77 = v100;
        v78 = sub_1A84E5C7C();
        v79 = sub_1A84E619C();

        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          *v80 = 138412290;
          v82 = v100;
          v83 = _swift_stdlib_bridgeErrorToNSError();
          *(v80 + 4) = v83;
          *v81 = v83;
          _os_log_impl(&dword_1A823F000, v78, v79, "                         error: %@", v80, 0xCu);
          sub_1A824B2D4(v81, &unk_1EB2E9070, &unk_1A8501A90);
          v84 = v81;
          a4 = v91;
          MEMORY[0x1AC56D3F0](v84, -1, -1);
          v85 = v80;
          v76 = v100;
          MEMORY[0x1AC56D3F0](v85, -1, -1);
        }

        v60(v99, v62);
        v86 = v93;
        (v93)(v101, v21);
        v86(v92, v21);
        goto LABEL_8;
      }

      v44 = v105;
    }

    v105 = sub_1A84E550C();
    v106 = v45;
    MEMORY[0x1AC56A990](47, 0xE100000000000000);
    MEMORY[0x1AC56A990](a2, v35);

    URL.init(relativeFilePath:)(v105, v106, v18);
    v105 = 0;
    a4 = v91;
    v46 = v103;
    ImportExport.Attachment.update(filePath:isRelativeFilePath:wasDownloaded:missingFileReasons:)(v18, 1, 0, &v105, v91);
    if (!v46)
    {
      sub_1A824B2D4(v18, &qword_1EB2E7068, &unk_1A8501EB0);
      v47 = *(v22 + 8);
      v47(v101, v21);
      v47(v92, v21);
      v32 = 0;
      return (*(*(v102 - 8) + 56))(a4, v32, 1);
    }

    sub_1A824B2D4(v18, &qword_1EB2E7068, &unk_1A8501EB0);
    v100 = v46;
    goto LABEL_22;
  }

  sub_1A824B2D4(v20, &qword_1EB2E7068, &unk_1A8501EB0);
LABEL_8:
  v32 = 1;
  return (*(*(v102 - 8) + 56))(a4, v32, 1);
}

uint64_t sub_1A84953E4(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result == 5)
  {
    return 0;
  }

  v4 = a2 + a3;
  if (__CFADD__(a2, a3))
  {
    __break(1u);
  }

  else
  {
    sub_1A8474400();
    v5 = sub_1A84E620C();
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = 7104878;
    }

    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    sub_1A84E646C();
    sub_1A840D3B0();
    v9 = sub_1A84E635C();
    v11 = v10;

    MEMORY[0x1AC56A990](v9, v11);

    MEMORY[0x1AC56A990](0xD000000000000014, 0x80000001A8533310);
    MEMORY[0x1AC56A990](v7, v8);

    MEMORY[0x1AC56A990](10272, 0xE200000000000000);
    v12 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v12);

    MEMORY[0x1AC56A990](543584032, 0xE400000000000000);
    v13 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v13);

    result = MEMORY[0x1AC56A990](8236, 0xE200000000000000);
    if (v4 >= a3)
    {
      v14 = sub_1A84E676C();
      MEMORY[0x1AC56A990](v14);

      MEMORY[0x1AC56A990](0x696E69616D657220, 0xEB0000000029676ELL);
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A84956CC(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a3;
  v7 = sub_1A83EA2FC(&qword_1EB2E85C8, &qword_1A8508D10);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  sub_1A82471E0(a1, a1[3]);
  sub_1A8495CF4();
  sub_1A84E68AC();
  v16 = a2;
  v15 = 0;
  sub_1A8474E38();
  sub_1A84E66BC();
  if (v4)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v14 = 1;
  sub_1A84E671C();
  v13 = 2;
  sub_1A84E671C();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1A8495890()
{
  v1 = 0x656C626174697277;
  if (*v0 != 1)
  {
    v1 = 0x6E657474697277;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x707954746E756F63;
  }
}

uint64_t sub_1A84958F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A84959EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A8495918(uint64_t a1)
{
  v2 = sub_1A8495CF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8495954(uint64_t a1)
{
  v2 = sub_1A8495CF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8495990@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1A8495B0C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1A84959EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954746E756F63 && a2 == 0xE900000000000065;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C626174697277 && a2 == 0xE800000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E657474697277 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A8495B0C(void *a1)
{
  v2 = sub_1A83EA2FC(&qword_1EB2E85B8, &qword_1A8508D08);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8[-v4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A8495CF4();
  sub_1A84E689C();
  v8[14] = 0;
  sub_1A8474DE4();
  sub_1A84E65FC();
  v6 = v8[15];
  v8[13] = 1;
  sub_1A84E665C();
  v8[12] = 2;
  sub_1A84E665C();
  (*(v3 + 8))(v5, v2);
  sub_1A8244788(a1);
  return v6;
}

unint64_t sub_1A8495CF4()
{
  result = qword_1EB2E85C0;
  if (!qword_1EB2E85C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E85C0);
  }

  return result;
}

unint64_t sub_1A8495D5C()
{
  result = qword_1EB2E85D0;
  if (!qword_1EB2E85D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E85D0);
  }

  return result;
}

unint64_t sub_1A8495DB4()
{
  result = qword_1EB2E85D8;
  if (!qword_1EB2E85D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E85D8);
  }

  return result;
}

unint64_t sub_1A8495E0C()
{
  result = qword_1EB2E85E0;
  if (!qword_1EB2E85E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E85E0);
  }

  return result;
}

uint64_t sub_1A8495E80(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t *a7, uint64_t (*a8)(void))
{
  v13 = (a5)(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v19 - v14;
  sub_1A8496E14(a1, &v19 - v14, a6);
  v16 = *a2;
  v17 = *a7;
  swift_beginAccess();
  sub_1A8497A38(v15, v16 + v17, a8);
  return swift_endAccess();
}

uint64_t sub_1A8495F70@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  return sub_1A8496E14(v3 + v6, a3, a2);
}

uint64_t sub_1A8495FCC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 360) = a4;
  *(v5 + 136) = a3;
  *(v5 + 144) = v4;
  *(v5 + 120) = a1;
  *(v5 + 128) = a2;
  type metadata accessor for ImportExport.Message(0);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  v6 = type metadata accessor for ImportExport.Attachment(0);
  *(v5 + 184) = v6;
  *(v5 + 192) = *(v6 - 8);
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();
  sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  *(v5 + 240) = swift_task_alloc();
  *(v5 + 248) = type metadata accessor for ImportExport.ExportOptions(0);
  *(v5 + 256) = swift_task_alloc();
  v7 = sub_1A84E558C();
  *(v5 + 264) = v7;
  *(v5 + 272) = *(v7 - 8);
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A84961E4, 0, 0);
}

uint64_t sub_1A84961E4()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 248);
  v4 = *(v0 + 256);
  v6 = *(v0 + 240);
  v7 = *(v0 + 360);
  v8 = *(v0 + 136);
  v9 = *(v0 + 128);
  v10 = *(*(v0 + 144) + 16);
  *(v0 + 296) = v10;
  v11 = *(v10 + 16) + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_exportOptions;
  v12 = *(v11 + 16);
  sub_1A8496E14(v11, v4, type metadata accessor for ImportExport.ExportOptions);
  v13 = *(v3 + 32);
  v13(v1, v4 + *(v5 + 28), v2);
  sub_1A8243D74(v9, v6, &qword_1EB2E7068, &unk_1A8501EB0);
  if ((*(v3 + 48))(v6, 1, v2) == 1)
  {
    sub_1A8496E7C(*(v0 + 240));
  }

  else
  {
    v14 = *(v0 + 280);
    v15 = *(v0 + 288);
    v16 = *(v0 + 264);
    v17 = *(v0 + 240);
    (*(*(v0 + 272) + 8))(v15, v16);
    v13(v14, v17, v16);
    v13(v15, v14, v16);
  }

  if (v7)
  {
    v8 = v12;
  }

  v18 = *(v0 + 232);
  v19 = *(v0 + 144);
  v20 = OBJC_IVAR____TtCO6IMCore12ImportExport20AttachmentDownloader_attachment;
  *(v0 + 304) = OBJC_IVAR____TtCO6IMCore12ImportExport20AttachmentDownloader_attachment;
  swift_beginAccess();
  sub_1A8496E14(v19 + v20, v18, type metadata accessor for ImportExport.Attachment);
  v21 = OBJC_IVAR____TtCO6IMCore12ImportExport20AttachmentDownloader_message;
  *(v0 + 312) = OBJC_IVAR____TtCO6IMCore12ImportExport20AttachmentDownloader_message;
  v22 = (v19 + v21);
  swift_beginAccess();
  v23 = v22[8];
  v24 = v22[9];
  *(v0 + 320) = v24;
  v25 = *v22;
  v26 = v22[1];
  *(v0 + 328) = v26;

  v27 = swift_task_alloc();
  *(v0 + 336) = v27;
  *v27 = v0;
  v27[1] = sub_1A8496470;
  v28 = *(v0 + 288);

  return sub_1A842EFE0(v28, v23, v24, v25, v26, v8);
}

uint64_t sub_1A8496470(uint64_t a1)
{
  v4 = *v2;
  v4[43] = v1;

  v5 = v4[29];
  if (v1)
  {
    sub_1A8496EE4(v5, type metadata accessor for ImportExport.Attachment);

    v6 = sub_1A8496C74;
  }

  else
  {
    v4[44] = a1;
    sub_1A8496EE4(v5, type metadata accessor for ImportExport.Attachment);

    v6 = sub_1A8496630;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1A8496630()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[28];
  v4 = v0[22];
  v5 = v0[18];
  sub_1A8496E14(v0[44] + OBJC_IVAR____TtCO6IMCore12ImportExport27AttachmentDownloadingResult_attachment, v3, type metadata accessor for ImportExport.Attachment);

  swift_beginAccess();
  sub_1A8497A38(v3, v5 + v2, type metadata accessor for ImportExport.Attachment);
  swift_endAccess();
  sub_1A8496E14(v5 + v1, v4, type metadata accessor for ImportExport.Message);
  v6 = ImportExport.Message.allAttachments.getter();
  sub_1A8496EE4(v4, type metadata accessor for ImportExport.Message);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = v7[2];
  if (v8)
  {
    v9 = v0[24];
    v10 = v0[18] + v0[38];
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v12 = v7 + v11;
    v13 = *(v9 + 72);
    v44 = v0[27];
    v14 = MEMORY[0x1E69E7CC0];
    do
    {
      v18 = v0[38];
      v19 = v0[27];
      v20 = v0[18];
      sub_1A8496E14(v12, v19, type metadata accessor for ImportExport.Attachment);
      v21 = *v19 == *(v20 + v18) && *(v44 + 8) == *(v10 + 8);
      if (v21 || (sub_1A84E67AC() & 1) != 0)
      {
        sub_1A8496E14(v0[27], v0[26], type metadata accessor for ImportExport.Attachment);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1A83EF118(0, v14[2] + 1, 1, v14);
        }

        v23 = v14[2];
        v22 = v14[3];
        v24 = v23 + 1;
        if (v23 >= v22 >> 1)
        {
          v14 = sub_1A83EF118((v22 > 1), v23 + 1, 1, v14);
        }

        v15 = v0 + 26;
      }

      else
      {
        sub_1A8496E14(v0[27], v0[25], type metadata accessor for ImportExport.Attachment);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1A83EF118(0, v14[2] + 1, 1, v14);
        }

        v23 = v14[2];
        v25 = v14[3];
        v24 = v23 + 1;
        if (v23 >= v25 >> 1)
        {
          v14 = sub_1A83EF118((v25 > 1), v23 + 1, 1, v14);
        }

        v15 = v0 + 25;
      }

      v16 = *v15;
      v17 = v0[27];
      v14[2] = v24;
      sub_1A8497B40(v16, v14 + v11 + v23 * v13, type metadata accessor for ImportExport.Attachment);
      sub_1A8496EE4(v17, type metadata accessor for ImportExport.Attachment);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v26 = v0[43];
  v27 = v0[21];
  sub_1A8496E14(v0[18] + v0[39], v0[20], type metadata accessor for ImportExport.Message);
  ImportExport.Message.update(attachments:)(v14, v27);
  if (v26)
  {
    v28 = v0[36];
    v30 = v0[33];
    v29 = v0[34];
    v31 = v0[20];

    sub_1A8496EE4(v31, type metadata accessor for ImportExport.Message);
    (*(v29 + 8))(v28, v30);
  }

  else
  {
    v33 = v0[39];
    v34 = v0[34];
    v42 = v0[33];
    v35 = v0[28];
    v43 = v0[23];
    v45 = v0[36];
    v36 = v0[21];
    v37 = v0[18];
    v38 = v0[19];
    v39 = v37 + v0[38];
    v41 = v0[15];
    sub_1A8496EE4(v0[20], type metadata accessor for ImportExport.Message);

    swift_beginAccess();
    sub_1A8497A38(v36, v37 + v33, type metadata accessor for ImportExport.Message);
    swift_endAccess();
    sub_1A8496E14(v39, v35, type metadata accessor for ImportExport.Attachment);
    sub_1A8496E14(v37 + v33, v38, type metadata accessor for ImportExport.Message);
    sub_1A84B0824(v35, v38);
    sub_1A8496EE4(v38, type metadata accessor for ImportExport.Message);
    sub_1A8496EE4(v35, type metadata accessor for ImportExport.Attachment);
    (*(v34 + 8))(v45, v42);
    sub_1A8243D74(v39 + *(v43 + 84), v41, &qword_1EB2E7348, &qword_1A8504400);
  }

  v32 = v0[1];

  return v32();
}

uint64_t sub_1A8496C74()
{
  v1 = v0[43];
  v2 = v0[15];
  (*(v0[34] + 8))(v0[36], v0[33]);
  v0[14] = v1;
  sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
  v3 = type metadata accessor for ImportExport.AttachmentDownloadError(0);
  v4 = swift_dynamicCast();
  (*(*(v3 - 8) + 56))(v2, v4 ^ 1u, 1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A8496E14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A8496E7C(uint64_t a1)
{
  v2 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A8496EE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A8496F44()
{
  v1 = 0x6567617373656DLL;
  if (*v0 != 1)
  {
    v1 = 0x656D686361747461;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000023;
  }
}

uint64_t sub_1A8496FA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A8498050(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A8496FD0(uint64_t a1)
{
  v2 = sub_1A8497AA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A849700C(uint64_t a1)
{
  v2 = sub_1A8497AA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.AttachmentDownloader.deinit()
{

  sub_1A8496EE4(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20AttachmentDownloader_message, type metadata accessor for ImportExport.Message);
  sub_1A8496EE4(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20AttachmentDownloader_attachment, type metadata accessor for ImportExport.Attachment);
  return v0;
}

uint64_t ImportExport.AttachmentDownloader.__deallocating_deinit()
{

  sub_1A8496EE4(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20AttachmentDownloader_message, type metadata accessor for ImportExport.Message);
  sub_1A8496EE4(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20AttachmentDownloader_attachment, type metadata accessor for ImportExport.Attachment);

  return swift_deallocClassInstance();
}

uint64_t sub_1A8497154(void *a1)
{
  v2 = v1;
  v17 = type metadata accessor for ImportExport.Attachment(0);
  MEMORY[0x1EEE9AC00](v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ImportExport.Message(0);
  MEMORY[0x1EEE9AC00](v18);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A83EA2FC(&qword_1EB2E85E8, &qword_1A8508E40);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  sub_1A82471E0(a1, a1[3]);
  sub_1A8497AA0();
  sub_1A84E68AC();
  v21 = *(v2 + 16);
  v20 = 0;
  type metadata accessor for ImportExport.AttachmentDownloadIterator();
  sub_1A8497BA8(&qword_1EB2E85F8, type metadata accessor for ImportExport.AttachmentDownloadIterator, &protocol conformance descriptor for ImportExport.AttachmentDownloadIterator);
  v12 = v19;
  sub_1A84E672C();
  if (!v12)
  {
    v13 = OBJC_IVAR____TtCO6IMCore12ImportExport20AttachmentDownloader_message;
    swift_beginAccess();
    sub_1A8496E14(v2 + v13, v7, type metadata accessor for ImportExport.Message);
    v20 = 1;
    sub_1A8497BA8(&qword_1EB2E7800, type metadata accessor for ImportExport.Message, &protocol conformance descriptor for ImportExport.Message);
    sub_1A84E672C();
    sub_1A8496EE4(v7, type metadata accessor for ImportExport.Message);
    v14 = OBJC_IVAR____TtCO6IMCore12ImportExport20AttachmentDownloader_attachment;
    swift_beginAccess();
    sub_1A8496E14(v2 + v14, v5, type metadata accessor for ImportExport.Attachment);
    v22 = 2;
    sub_1A8497BA8(&qword_1EB2E73A0, type metadata accessor for ImportExport.Attachment, &protocol conformance descriptor for ImportExport.Attachment);
    sub_1A84E672C();
    sub_1A8496EE4(v5, type metadata accessor for ImportExport.Attachment);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t ImportExport.AttachmentDownloader.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ImportExport.AttachmentDownloader.init(from:)(a1);
  return v2;
}

uint64_t ImportExport.AttachmentDownloader.init(from:)(void *a1)
{
  v2 = type metadata accessor for ImportExport.Attachment(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ImportExport.Message(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A83EA2FC(&qword_1EB2E8600, &qword_1A8508E48);
  v8 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v10 = &v18 - v9;
  v11 = a1[3];
  v22 = a1;
  sub_1A82471E0(a1, v11);
  sub_1A8497AA0();
  v12 = v20;
  sub_1A84E689C();
  if (v12)
  {
    v13 = v21;
    type metadata accessor for ImportExport.AttachmentDownloader(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v7;
    v20 = v8;
    v18 = v2;
    v15 = v4;
    type metadata accessor for ImportExport.AttachmentDownloadIterator();
    v25 = 0;
    sub_1A8497BA8(&qword_1EB2E8608, type metadata accessor for ImportExport.AttachmentDownloadIterator, &protocol conformance descriptor for ImportExport.AttachmentDownloadIterator);
    v16 = v19;
    sub_1A84E666C();
    v13 = v21;
    *(v21 + 16) = v26;
    v24 = 1;
    sub_1A8497BA8(&qword_1EB2E7198, type metadata accessor for ImportExport.Message, &protocol conformance descriptor for ImportExport.Message);
    sub_1A84E666C();
    sub_1A8497B40(v14, v13 + OBJC_IVAR____TtCO6IMCore12ImportExport20AttachmentDownloader_message, type metadata accessor for ImportExport.Message);
    v23 = 2;
    sub_1A8497BA8(&qword_1EB2E7398, type metadata accessor for ImportExport.Attachment, &protocol conformance descriptor for ImportExport.Attachment);
    sub_1A84E666C();
    (*(v20 + 8))(v10, v16);
    sub_1A8497B40(v15, v13 + OBJC_IVAR____TtCO6IMCore12ImportExport20AttachmentDownloader_attachment, type metadata accessor for ImportExport.Attachment);
  }

  sub_1A8244788(v22);
  return v13;
}

uint64_t sub_1A84979B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ImportExport.AttachmentDownloader(0);
  v5 = swift_allocObject();
  result = ImportExport.AttachmentDownloader.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1A8497A38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A8497AA0()
{
  result = qword_1EB2E85F0;
  if (!qword_1EB2E85F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E85F0);
  }

  return result;
}

uint64_t type metadata accessor for ImportExport.AttachmentDownloader(uint64_t a1)
{
  result = qword_1EB2E8610;
  if (!qword_1EB2E8610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A8497B40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A8497BA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A8497BF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  swift_beginAccess();
  return sub_1A8496E14(v6 + v7, a4, a3);
}

uint64_t sub_1A8497C58(uint64_t a1)
{
  result = type metadata accessor for ImportExport.Message(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ImportExport.Attachment(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of ImportExport.AttachmentDownloader.download(into:withTimeout:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v12 = (*(*v4 + 160) + **(*v4 + 160));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1A82505F4;

  return v12(a1, a2, a3, a4 & 1);
}

unint64_t sub_1A8497F4C()
{
  result = qword_1EB2E8620;
  if (!qword_1EB2E8620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8620);
  }

  return result;
}

unint64_t sub_1A8497FA4()
{
  result = qword_1EB2E8628;
  if (!qword_1EB2E8628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8628);
  }

  return result;
}

unint64_t sub_1A8497FFC()
{
  result = qword_1EB2E8630;
  if (!qword_1EB2E8630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8630);
  }

  return result;
}

uint64_t sub_1A8498050(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000023 && 0x80000001A8533370 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEA0000000000746ELL)
  {

    return 2;
  }

  else
  {
    v5 = sub_1A84E67AC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t ImportExport.ConversationExporter.__allocating_init(withConversation:exportOptions:exportStatistics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ImportExport.ConversationExporter.init(withConversation:exportOptions:exportStatistics:)(a1, a2, a3);
  return v6;
}

uint64_t sub_1A849824C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportStatistics;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1A84982FC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E7CF8, &qword_1A8509020);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1A8243D74(a1, &v10 - v5, &qword_1EB2E7CF8, &qword_1A8509020);
  v7 = *a2;
  v8 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_currentBatch;
  swift_beginAccess();
  sub_1A849D1DC(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_1A84983D4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_currentBatch;
  swift_beginAccess();
  return sub_1A8243D74(v1 + v3, a1, &qword_1EB2E7CF8, &qword_1A8509020);
}

BOOL sub_1A849843C()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E7CF8, &qword_1A8509020);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_currentBatch;
  swift_beginAccess();
  sub_1A8243D74(v0 + v4, v3, &qword_1EB2E7CF8, &qword_1A8509020);
  v5 = type metadata accessor for ImportExport.MessageBatch(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1A824B2D4(v3, &qword_1EB2E7CF8, &qword_1A8509020);
  return v6;
}

uint64_t sub_1A849854C()
{
  v1 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_nextBatchStartingRowID;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A8498590(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_nextBatchStartingRowID;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A8498640()
{
  v1 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_batchCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ImportExport.ConversationExporter.init(withConversation:exportOptions:exportStatistics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_currentBatch;
  v9 = type metadata accessor for ImportExport.MessageBatch(0);
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  *(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_standaloneMode) = 0;
  *(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_batchCount) = 0;
  sub_1A849D2AC(a1, v3 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_conversation, type metadata accessor for ImportExport.Conversation);
  sub_1A849D2AC(a2, v3 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportOptions, type metadata accessor for ImportExport.ExportOptions);
  if (a3)
  {
    sub_1A849D24C(a2, type metadata accessor for ImportExport.ExportOptions);
    *(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportStatistics) = a3;
    v10 = a3;
  }

  else
  {
    *(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_standaloneMode) = 1;
    type metadata accessor for ImportExport.ExportStatistics();
    swift_allocObject();
    v10 = ImportExport.ExportStatistics.init()();
    sub_1A849D24C(a2, type metadata accessor for ImportExport.ExportOptions);
    *(v4 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportStatistics) = v10;
  }

  *(v4 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_nextBatchStartingRowID) = -1;
  result = swift_beginAccess();
  v12 = *(v10 + 72);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v10 + 72) = v14;

    v15 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportStatistics;
    swift_beginAccess();
    v16 = *(v4 + v15);
    v17 = *(*(a1 + 240) + 16);
    result = swift_beginAccess();
    v18 = *(v16 + 96);
    v13 = __OFADD__(v18, v17);
    v19 = v18 + v17;
    if (!v13)
    {
      *(v16 + 96) = v19;
      sub_1A849D24C(a1, type metadata accessor for ImportExport.Conversation);
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A84988C0(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  sub_1A83EA2FC(&qword_1EB2E7CF8, &qword_1A8509020);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v3 = type metadata accessor for ImportExport.MessageBatch(0);
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A84989DC, 0, 0);
}

uint64_t sub_1A84989DC()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[21];
  v5 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_currentBatch;
  v0[29] = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_currentBatch;
  swift_beginAccess();
  sub_1A8243D74(v4 + v5, v3, &qword_1EB2E7CF8, &qword_1A8509020);
  v6 = *(v2 + 48);
  v0[30] = v6;
  v0[31] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v3, 1, v1) == 1)
  {
    sub_1A824B2D4(v0[24], &qword_1EB2E7CF8, &qword_1A8509020);
  }

  else
  {
    sub_1A849D3B4(v0[24], v0[28], type metadata accessor for ImportExport.MessageBatch);

    sub_1A842A03C(v7);
    sub_1A849D24C(v0[28], type metadata accessor for ImportExport.MessageBatch);
  }

  v8 = v0[21];
  v9 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_nextBatchStartingRowID;
  swift_beginAccess();
  v10 = swift_task_alloc();
  v0[32] = v10;
  *v10 = v0;
  v10[1] = sub_1A8498C0C;
  v11 = v0[23];

  return sub_1A84991C4(v11, v8 + v9);
}

uint64_t sub_1A8498C0C()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1A8498FB0;
  }

  else
  {
    swift_endAccess();
    v2 = sub_1A8498D28;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A8498D28()
{
  v1 = v0[30];
  v2 = v0[29];
  v3 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  swift_beginAccess();
  sub_1A849D1DC(v4, v6 + v2);
  swift_endAccess();
  sub_1A8243D74(v6 + v2, v5, &qword_1EB2E7CF8, &qword_1A8509020);
  if (v1(v5, 1, v3) == 1)
  {
    sub_1A824B2D4(v0[22], &qword_1EB2E7CF8, &qword_1A8509020);
LABEL_11:
    sub_1A8499054();
    v25 = 1;
    goto LABEL_12;
  }

  v7 = v0[27];
  v8 = v0[25];
  sub_1A849D3B4(v0[22], v7, type metadata accessor for ImportExport.MessageBatch);
  if (!*(*(v7 + *(v8 + 20)) + 16))
  {
    sub_1A849D24C(v0[27], type metadata accessor for ImportExport.MessageBatch);
    goto LABEL_11;
  }

  v9 = v0[21];
  v10 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_batchCount;
  result = swift_beginAccess();
  v12 = *(v9 + v10);
  if (!v12)
  {
    v13 = v0[21];
    v14 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportStatistics;
    swift_beginAccess();
    v15 = *(v13 + v14);
    result = swift_beginAccess();
    v16 = *(v15 + 112);
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v19 = v0[21];
    *(v15 + 112) = v18;
    v20 = *(*(v19 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_conversation + 240) + 16);
    v21 = *(v15 + 136);
    v17 = __OFADD__(v21, v20);
    v22 = v21 + v20;
    if (v17)
    {
LABEL_17:
      __break(1u);
      return result;
    }

    *(v15 + 136) = v22;
  }

  if (__OFADD__(v12, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v0[27];
  v24 = v0[20];
  *(v9 + v10) = v12 + 1;
  sub_1A849D3B4(v23, v24, type metadata accessor for ImportExport.MessageBatch);
  v25 = 0;
LABEL_12:
  (*(v0[26] + 56))(v0[20], v25, 1, v0[25]);

  v26 = v0[1];

  return v26();
}

uint64_t sub_1A8498FB0()
{
  swift_endAccess();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A8499054()
{
  v1 = v0;
  v2 = sub_1A83EA2FC(&qword_1EB2E7CF8, &qword_1A8509020);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  if (*(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_standaloneMode) == 1)
  {
    swift_beginAccess();
    swift_beginAccess();

    ImportExport.Timer.stop()();
  }

  v5 = type metadata accessor for ImportExport.MessageBatch(0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_currentBatch;
  swift_beginAccess();
  sub_1A849D1DC(v4, v1 + v6);
  swift_endAccess();
  v7 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_nextBatchStartingRowID;
  result = swift_beginAccess();
  *(v1 + v7) = -1;
  return result;
}

uint64_t sub_1A84991C4(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  v4 = type metadata accessor for ImportExport.MessageBatch(0);
  v3[31] = v4;
  v3[32] = *(v4 - 8);
  v3[33] = swift_task_alloc();
  type metadata accessor for ImportExport.Conversation(0);
  v3[34] = swift_task_alloc();
  v5 = type metadata accessor for ImportExport.MessageAttachmentPair(0);
  v3[35] = v5;
  v3[36] = *(v5 - 8);
  v3[37] = swift_task_alloc();
  v3[38] = type metadata accessor for ImportExport.ExportOptions(0);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v6 = sub_1A84E558C();
  v3[43] = v6;
  v3[44] = *(v6 - 8);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v3[47] = swift_task_alloc();
  v7 = type metadata accessor for ImportExport.Attachment(0);
  v3[48] = v7;
  v3[49] = *(v7 - 8);
  v3[50] = swift_task_alloc();
  v8 = type metadata accessor for ImportExport.MessagePart(0);
  v3[51] = v8;
  v3[52] = *(v8 - 8);
  v3[53] = swift_task_alloc();
  sub_1A83EA2FC(&qword_1EB2E7FA8, &qword_1A8506D10);
  v3[54] = swift_task_alloc();
  v9 = type metadata accessor for ImportExport.Message(0);
  v3[55] = v9;
  v3[56] = *(v9 - 8);
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v10 = sub_1A84E5C9C();
  v3[60] = v10;
  v3[61] = *(v10 - 8);
  v3[62] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A84995F0, 0, 0);
}

void sub_1A84995F0()
{
  v104 = v0;
  v1 = v0[29];
  v2 = v0[30];
  v3 = v2 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_conversation;
  v4 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportOptions;
  v0[63] = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_conversation;
  v0[64] = v4;
  v5 = sub_1A847A408(v1, *(v2 + v4 + 8));
  v0[65] = v5;
  if (!v5)
  {
LABEL_105:
    (*(v0[32] + 56))(v0[28], 1, 1, v0[31]);
LABEL_106:

    v6 = v0[1];
LABEL_107:

    v6();
    return;
  }

  v7 = v5 >> 62;
  if (v5 >> 62)
  {
LABEL_103:
    v99 = v5;
    v100 = sub_1A84E654C();
    v5 = v99;
    v0[66] = v100;
    if (v100)
    {
      goto LABEL_4;
    }

    goto LABEL_104;
  }

  v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[66] = v8;
  if (!v8)
  {
LABEL_104:

    goto LABEL_105;
  }

LABEL_4:
  v9 = *v0[29];
  v10 = v5;
  sub_1A84E5C8C();
  v11 = v10;

  v12 = sub_1A84E5C7C();
  v13 = sub_1A84E618C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v102 = v15;
    *v14 = 134218498;
    if (v7)
    {
      v16 = sub_1A84E654C();
    }

    else
    {
      v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = v0[61];
    v20 = v0[62];
    v21 = v0[60];
    *(v14 + 4) = v16;

    *(v14 + 12) = 2048;
    *(v14 + 14) = v9;
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_1A82446BC(*(v3 + 8), *(v3 + 16), &v102);
    _os_log_impl(&dword_1A823F000, v12, v13, "fetched %ld records starting at rowID %lld in conversation: %s", v14, 0x20u);
    sub_1A8244788(v15);
    MEMORY[0x1AC56D3F0](v15, -1, -1);
    MEMORY[0x1AC56D3F0](v14, -1, -1);

    (*(v19 + 8))(v20, v21);
  }

  else
  {
    v17 = v0[61];
    v3 = v0[62];
    v18 = v0[60];

    (*(v17 + 8))(v3, v18);
  }

  v0[67] = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportStatistics;
  v5 = swift_beginAccess();
  v22 = 0;
  v7 = 1;
  v23 = &selRef_isGroupTypingMessage;
  while (1)
  {
    v24 = MEMORY[0x1E69E7CC0];
    v0[69] = MEMORY[0x1E69E7CC0];
    v0[68] = v24;
    v25 = v0[65];
    if ((v25 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC56AF80](v22);
    }

    else
    {
      if (v22 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_98;
      }

      v5 = *(v25 + 8 * v22 + 32);
    }

    v3 = v5;
    v0[70] = v5;
    v0[71] = v22 + 1;
    if (__OFADD__(v22, 1))
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
      goto LABEL_103;
    }

    v26 = *(v0[30] + v0[67]);
    v5 = swift_beginAccess();
    v27 = *(v26 + 80);
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_93;
    }

    *(v26 + 80) = v29;
    if (![v3 v23[160]])
    {
      break;
    }

    v30 = *(v0[30] + v0[67]);

    v31 = [v3 v23[160]];
    if (v31 <= 3)
    {
      if (v31 > 1)
      {
        if (v31 == 2)
        {
          v32 = 0xD000000000000010;
          v33 = 0x80000001A8533430;
        }

        else
        {
          v32 = 0x74634170756F7267;
          v33 = 0xEB000000006E6F69;
        }
      }

      else if (v31)
      {
        if (v31 != 1)
        {
LABEL_39:
          v33 = 0xE700000000000000;
          v32 = 0x6E776F6E6B6E75;
          goto LABEL_40;
        }

        v32 = 0xD000000000000011;
        v33 = 0x80000001A8533450;
      }

      else
      {
        v33 = 0xE700000000000000;
        v32 = 0x6567617373656DLL;
      }
    }

    else if (v31 <= 5)
    {
      if (v31 == 4)
      {
        v32 = 0xD000000000000019;
        v33 = 0x80000001A8533410;
      }

      else
      {
        v32 = 0x416567617373656DLL;
        v33 = 0xED00006E6F697463;
      }
    }

    else
    {
      switch(v31)
      {
        case 6:
          v32 = 0x7265766E6F437574;
          v33 = 0xEE006E6F69746173;
          break;
        case 7:
          v32 = 0xD000000000000017;
          v33 = 0x80000001A85333F0;
          break;
        case 8:
          v32 = 0xD000000000000018;
          v33 = 0x80000001A85333D0;
          break;
        default:
          goto LABEL_39;
      }
    }

LABEL_40:
    swift_beginAccess();
    v34 = *(v30 + 152);
    if (!*(v34 + 16) || (v35 = sub_1A824B390(v32, v33), (v36 & 1) == 0))
    {
      swift_endAccess();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = *(v30 + 152);
      v0[26] = v48;
      *(v30 + 152) = 0x8000000000000000;
      v5 = sub_1A824B390(v32, v33);
      v50 = *(v48 + 16);
      v51 = (v49 & 1) == 0;
      v28 = __OFADD__(v50, v51);
      v52 = v50 + v51;
      if (v28)
      {
        goto LABEL_94;
      }

      v53 = v49;
      if (*(v48 + 24) >= v52)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_52:
          v55 = v0[26];
          if (v53)
          {
            *(v55[7] + 8 * v5) = 1;
          }

          else
          {
            v55[(v5 >> 6) + 8] |= 1 << v5;
            v56 = (v55[6] + 16 * v5);
            *v56 = v32;
            v56[1] = v33;
            v7 = 1;
            *(v55[7] + 8 * v5) = 1;
            v57 = v55[2];
            v28 = __OFADD__(v57, 1);
            v58 = v57 + 1;
            if (v28)
            {
              goto LABEL_99;
            }

            v55[2] = v58;
          }

          goto LABEL_12;
        }

        v59 = v5;
        sub_1A848E814();
        v5 = v59;
      }

      else
      {
        sub_1A848A8C4(v52, isUniquelyReferenced_nonNull_native);
        v5 = sub_1A824B390(v32, v33);
        if ((v53 & 1) != (v54 & 1))
        {
LABEL_78:

          sub_1A84E67EC();
          return;
        }
      }

      v23 = &selRef_isGroupTypingMessage;
      goto LABEL_52;
    }

    v37 = *(*(v34 + 56) + 8 * v35);
    v5 = swift_endAccess();
    v38 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      goto LABEL_100;
    }

    swift_beginAccess();
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v40 = *(v30 + 152);
    v0[27] = v40;
    *(v30 + 152) = 0x8000000000000000;
    v5 = sub_1A824B390(v32, v33);
    v42 = *(v40 + 16);
    v43 = (v41 & 1) == 0;
    v28 = __OFADD__(v42, v43);
    v44 = v42 + v43;
    if (v28)
    {
      goto LABEL_101;
    }

    v45 = v41;
    if (*(v40 + 24) < v44)
    {
      sub_1A848A8C4(v44, v39);
      v5 = sub_1A824B390(v32, v33);
      if ((v45 & 1) != (v46 & 1))
      {
        goto LABEL_78;
      }

LABEL_56:
      v55 = v0[27];
      if ((v45 & 1) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_57;
    }

    if (v39)
    {
      goto LABEL_56;
    }

    v60 = v5;
    sub_1A848E814();
    v5 = v60;
    v55 = v0[27];
    if ((v45 & 1) == 0)
    {
LABEL_60:
      v55[(v5 >> 6) + 8] |= 1 << v5;
      v61 = (v55[6] + 16 * v5);
      *v61 = v32;
      v61[1] = v33;
      *(v55[7] + 8 * v5) = v38;
      v62 = v55[2];
      v28 = __OFADD__(v62, 1);
      v63 = v62 + 1;
      if (v28)
      {
        goto LABEL_102;
      }

      v55[2] = v63;

      goto LABEL_62;
    }

LABEL_57:
    *(v55[7] + 8 * v5) = v38;
LABEL_62:
    v23 = &selRef_isGroupTypingMessage;
LABEL_12:
    *(v30 + 152) = v55;
    swift_endAccess();

    v22 = v0[71];
    if (v22 == v0[66])
    {

      v7 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
        v77 = v0[67];
        v78 = v0[39];
        v79 = v0[30];
        sub_1A849D2AC(v79 + v0[64], v78, type metadata accessor for ImportExport.ExportOptions);
        v80 = *(v79 + v77);
        type metadata accessor for ImportExport.DownloadableAttachmentBatch(0);
        v81 = swift_allocObject();
        sub_1A849D2AC(v78, v81 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_exportOptions, type metadata accessor for ImportExport.ExportOptions);
        *(v81 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_messageAttachmentPairs) = v7;
        *(v81 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_exportStatistics) = v80;
        type metadata accessor for ImportExport.AttachmentDownloadBatchProgress();
        swift_allocObject();

        v82 = sub_1A84B39AC(0, 0, 0);
        sub_1A849D24C(v78, type metadata accessor for ImportExport.ExportOptions);
        v101 = v81;
        *(v81 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_progress) = v82;
      }

      else
      {

        v101 = 0;
      }

      v5 = sub_1A849D2AC(v0[30] + v0[63], v0[34], type metadata accessor for ImportExport.Conversation);
      v83 = *(v7 + 16);
      if (!v83)
      {
LABEL_90:
        v90 = v0[33];
        v91 = v0[31];
        v92 = v0[32];
        v93 = v0[28];
        sub_1A849D3B4(v0[34], v90, type metadata accessor for ImportExport.Conversation);
        *(v90 + *(v91 + 20)) = v7;
        *(v90 + *(v91 + 24)) = v101;
        sub_1A849D3B4(v90, v93, type metadata accessor for ImportExport.MessageBatch);
        (*(v92 + 56))(v93, 0, 1, v91);
        goto LABEL_106;
      }

      v3 = 0;
      v84 = v0[57];
      v85 = v0[34];
      while (v3 < *(v7 + 16))
      {
        sub_1A849D2AC(v7 + ((*(v0[56] + 80) + 32) & ~*(v0[56] + 80)) + *(v0[56] + 72) * v3, v0[57], type metadata accessor for ImportExport.Message);
        v86 = *(v84 + 32);
        v87 = *(v84 + 40);
        v88 = *(v85 + 8);
        v89 = *(v85 + 16);
        if ((v86 != v88 || v87 != v89) && (sub_1A84E67AC() & 1) == 0)
        {
          v94 = v0[57];
          v95 = v0[34];

          v102 = 0;
          v103 = 0xE000000000000000;
          sub_1A84E646C();
          MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A852FF50);
          MEMORY[0x1AC56A990](v86, v87);
          MEMORY[0x1AC56A990](0xD000000000000023, 0x80000001A852FF70);
          MEMORY[0x1AC56A990](v88, v89);
          v97 = v102;
          v96 = v103;
          sub_1A8407E40();
          swift_allocError();
          *v98 = v97;
          v98[1] = v96;
          swift_willThrow();

          sub_1A849D24C(v95, type metadata accessor for ImportExport.Conversation);
          sub_1A849D24C(v94, type metadata accessor for ImportExport.Message);

          v6 = v0[1];
          goto LABEL_107;
        }

        ++v3;
        v5 = sub_1A849D24C(v0[57], type metadata accessor for ImportExport.Message);
        if (v83 == v3)
        {
          goto LABEL_90;
        }
      }

      goto LABEL_97;
    }
  }

  v64 = [v3 attachmentRecords];
  sub_1A8244B68(0, &qword_1EB2E85B0, 0x1E69A5D98);
  v65 = sub_1A84E5FFC();

  if (v65 >> 62)
  {
    v7 = sub_1A84E654C();
    if (!v7)
    {
      goto LABEL_73;
    }

LABEL_65:
    if (v7 < 1)
    {
      __break(1u);
      return;
    }

    v66 = 0;
    while (1)
    {
      v67 = (v65 & 0xC000000000000001) != 0 ? MEMORY[0x1AC56AF80](v66, v65) : *(v65 + 8 * v66 + 32);
      v68 = v67;
      v69 = *(v0[30] + v0[67]);
      v5 = swift_beginAccess();
      v70 = *(v69 + 88);
      v28 = __OFADD__(v70, 1);
      v71 = v70 + 1;
      if (v28)
      {
        goto LABEL_95;
      }

      *(v69 + 88) = v71;

      v72 = [v68 totalBytes];

      v73 = *(v69 + 104);
      v28 = __OFADD__(v73, v72);
      v74 = &v72[v73];
      if (v28)
      {
        goto LABEL_96;
      }

      ++v66;
      *(v69 + 104) = v74;

      if (v7 == v66)
      {
        goto LABEL_73;
      }
    }
  }

  v7 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    goto LABEL_65;
  }

LABEL_73:

  v75 = swift_task_alloc();
  v0[72] = v75;
  *v75 = v0;
  v75[1] = sub_1A849A524;
  v76 = v0[54];

  sub_1A849BDE4(v76, v3);
}

uint64_t sub_1A849A524()
{
  *(*v1 + 584) = v0;

  if (v0)
  {

    v2 = sub_1A849BC98;
  }

  else
  {
    v2 = sub_1A849A658;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1A849A658()
{
  v2 = *(v0 + 432);
  if ((*(*(v0 + 448) + 48))(v2, 1, *(v0 + 440)) != 1)
  {
    v6 = *(v0 + 464);
    v5 = *(v0 + 472);
    sub_1A849D3B4(v2, v5, type metadata accessor for ImportExport.Message);
    sub_1A849D2AC(v5, v6, type metadata accessor for ImportExport.Message);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 544);
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_4;
    }

    goto LABEL_143;
  }

  sub_1A824B2D4(v2, &qword_1EB2E7FA8, &qword_1A8506D10);
  v3 = *(v0 + 552);
  v4 = *(v0 + 544);
LABEL_38:
  v85 = *(v0 + 568);
  v180 = v4;
  if (v85 == *(v0 + 528))
  {
    goto LABEL_39;
  }

  v91 = &selRef_isGroupTypingMessage;
  v178 = v3;
  do
  {
    *(v0 + 552) = v3;
    *(v0 + 544) = v4;
    v92 = *(v0 + 520);
    if ((v92 & 0xC000000000000001) != 0)
    {
      v93 = MEMORY[0x1AC56AF80](v85);
    }

    else
    {
      if (v85 >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_138;
      }

      v93 = *(v92 + 8 * v85 + 32);
    }

    v10 = v93;
    *(v0 + 560) = v93;
    *(v0 + 568) = v85 + 1;
    if (__OFADD__(v85, 1))
    {
      goto LABEL_131;
    }

    v94 = *(*(v0 + 240) + *(v0 + 536));
    swift_beginAccess();
    v95 = *(v94 + 80);
    v16 = __OFADD__(v95, 1);
    v96 = v95 + 1;
    if (v16)
    {
      goto LABEL_132;
    }

    *(v94 + 80) = v96;
    if (![v10 v91[160]])
    {
      v148 = [v10 attachmentRecords];
      sub_1A8244B68(0, &qword_1EB2E85B0, 0x1E69A5D98);
      v14 = sub_1A84E5FFC();

      if (!(v14 >> 62))
      {
        v149 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v149)
        {
          goto LABEL_116;
        }

        goto LABEL_108;
      }

      while (1)
      {
        v149 = sub_1A84E654C();
        if (!v149)
        {
LABEL_116:

          v158 = swift_task_alloc();
          *(v0 + 576) = v158;
          *v158 = v0;
          v158[1] = sub_1A849A524;
          v159 = *(v0 + 432);

          sub_1A849BDE4(v159, v10);
          return;
        }

LABEL_108:
        if (v149 < 1)
        {
          __break(1u);
          return;
        }

        v150 = 0;
        while (1)
        {
          v151 = (v14 & 0xC000000000000001) != 0 ? MEMORY[0x1AC56AF80](v150, v14) : *(v14 + 8 * v150 + 32);
          v152 = v151;
          v1 = *(*(v0 + 240) + *(v0 + 536));
          swift_beginAccess();
          v153 = v1[11];
          v16 = __OFADD__(v153, 1);
          v154 = v153 + 1;
          if (v16)
          {
            break;
          }

          v1[11] = v154;

          v155 = [v152 totalBytes];

          v156 = v1[13];
          v16 = __OFADD__(v156, v155);
          v157 = &v155[v156];
          if (v16)
          {
            goto LABEL_137;
          }

          ++v150;
          v1[13] = v157;

          if (v149 == v150)
          {
            goto LABEL_116;
          }
        }

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
LABEL_142:
        __break(1u);
LABEL_143:
        v1 = sub_1A83EF168(0, v1[2] + 1, 1, v1);
LABEL_4:
        v9 = v1[2];
        v8 = v1[3];
        if (v9 >= v8 >> 1)
        {
          v1 = sub_1A83EF168((v8 > 1), v9 + 1, 1, v1);
        }

        v10 = *(v0 + 536);
        v11 = *(v0 + 464);
        v12 = *(v0 + 448);
        v13 = *(v0 + 240);
        v1[2] = v9 + 1;
        sub_1A849D3B4(v11, v1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v9, type metadata accessor for ImportExport.Message);
        v14 = *&v10[v13];
        swift_beginAccess();
        v15 = *(v14 + 120);
        v16 = __OFADD__(v15, 1);
        v17 = v15 + 1;
        if (!v16)
        {
          break;
        }

        __break(1u);
      }

      v179 = v1;
      v18 = *(v0 + 472);
      *(v14 + 120) = v17;
      v1 = *(v18 + 216);
      v176 = v1[2];
      if (v176)
      {
        v19 = 0;
        v20 = *(*(v0 + 416) + 80);
        v21 = v1 + ((v20 + 32) & ~v20);
        v174 = *(*(v0 + 408) + 44);
        v175 = *(v0 + 424);
        v165 = *(v0 + 584);
        v177 = *(v0 + 552);
        v169 = v21;
        v170 = *(v18 + 216);
        while (1)
        {
          if (v19 >= v1[2])
          {
            goto LABEL_130;
          }

          v22 = *(v0 + 424);
          v23 = *(v0 + 384);
          v24 = *(v0 + 392);
          v25 = *(v0 + 376);
          sub_1A849D2AC(&v21[*(*(v0 + 416) + 72) * v19], v22, type metadata accessor for ImportExport.MessagePart);
          sub_1A8243D74(v175 + v174, v25, &qword_1EB2E6F50, &unk_1A8502920);
          sub_1A849D24C(v22, type metadata accessor for ImportExport.MessagePart);
          if ((*(v24 + 48))(v25, 1, v23) == 1)
          {
            sub_1A824B2D4(*(v0 + 376), &qword_1EB2E6F50, &unk_1A8502920);
          }

          else
          {
            v26 = *(v0 + 536);
            v27 = *(v0 + 240);
            sub_1A849D3B4(*(v0 + 376), *(v0 + 400), type metadata accessor for ImportExport.Attachment);
            v28 = *(v27 + v26);
            swift_beginAccess();
            v29 = *(v28 + 128);
            v16 = __OFADD__(v29, 1);
            v30 = v29 + 1;
            if (v16)
            {
              goto LABEL_134;
            }

            v31 = *(v0 + 400);
            v32 = *(v0 + 384);
            *(v28 + 128) = v30;
            v33 = *(v31 + *(v32 + 60));
            v34 = *(v28 + 144);
            v16 = __OFADD__(v34, v33);
            v35 = v34 + v33;
            if (v16)
            {
              goto LABEL_135;
            }

            v36 = *(v0 + 400);
            v37 = *(v0 + 384);
            v38 = *(v0 + 344);
            v39 = *(v0 + 352);
            v40 = *(v0 + 336);
            *(v28 + 144) = v35;
            v41 = *(v37 + 40);
            v171 = v36;
            sub_1A8243D74(v36 + v41, v40, &qword_1EB2E7068, &unk_1A8501EB0);
            v42 = *(v39 + 48);
            if (v42(v40, 1, v38) == 1)
            {
              sub_1A824B2D4(*(v0 + 336), &qword_1EB2E7068, &unk_1A8501EB0);
LABEL_19:
              v48 = *(v0 + 472);
              v49 = *(v0 + 344);
              v51 = *(v0 + 320);
              v50 = *(v0 + 328);
              v52 = *(v0 + 304);
              sub_1A849D2AC(*(v0 + 240) + *(v0 + 512), v51, type metadata accessor for ImportExport.ExportOptions);
              v173 = *(v52 + 28);
              v167 = v48[9];
              v168 = v48[8];
              v53 = *v48;
              v54 = v48[1];
              v166 = v53;
              sub_1A8243D74(v171 + v41, v50, &qword_1EB2E7068, &unk_1A8501EB0);
              if (v42(v50, 1, v49) == 1)
              {
                sub_1A824B2D4(*(v0 + 328), &qword_1EB2E7068, &unk_1A8501EB0);
LABEL_22:
                if (qword_1EB2E5960 != -1)
                {
                  swift_once();
                }

                if (byte_1EB2FF250)
                {
                  v62 = *(v0 + 400);
                  v64 = *v62;
                  v63 = v62[1];
                  v65 = sub_1A84E5D8C();
                  v66 = IMDAttachmentRecordCopyAttachmentForGUID();

                  if (!v66)
                  {

                    sub_1A8412484();
                    swift_allocError();
                    *v160 = v64;
                    *(v160 + 8) = v63;
                    *(v160 + 16) = 0;
                    swift_willThrow();

LABEL_124:
                    v161 = *(v0 + 472);
                    v162 = *(v0 + 400);
                    v163 = *(v0 + 344);
                    v164 = *(v0 + 352);

                    sub_1A849D24C(v162, type metadata accessor for ImportExport.Attachment);

                    (*(v164 + 8))(v51 + v173, v163);
                    sub_1A849D24C(v161, type metadata accessor for ImportExport.Message);

                    goto LABEL_125;
                  }

                  v67 = [objc_allocWithZone(MEMORY[0x1E69A5D98]) initWithRecordRef_];

                  v68 = sub_1A842FDD4();
                  if (v165)
                  {

                    goto LABEL_124;
                  }

                  v70 = v68;
                  v71 = v69;
                  v72 = *(v0 + 352);
                  sub_1A8244B68(0, &qword_1EB2E78D0, 0x1E69A8078);

                  v73 = v67;
                  v74 = sub_1A846D468(v73, v168, v167, v166, v54, v70, v71);
                  LOBYTE(v71) = [v74 isDownloadExpired];

                  v61 = *(v72 + 8);
                  if ((v71 & 1) == 0)
                  {
                    v76 = *(v0 + 472);
                    v77 = *(v0 + 400);
                    v78 = *(v0 + 296);
                    v79 = *(v0 + 280);
                    v61(v51 + v173, *(v0 + 344));
                    sub_1A849D2AC(v76, v78, type metadata accessor for ImportExport.Message);
                    sub_1A849D2AC(v77, v78 + *(v79 + 20), type metadata accessor for ImportExport.Attachment);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v177 = sub_1A83EEBC4(0, v177[2] + 1, 1, v177);
                    }

                    v21 = v169;
                    v1 = v170;
                    v81 = v177[2];
                    v80 = v177[3];
                    if (v81 >= v80 >> 1)
                    {
                      v177 = sub_1A83EEBC4((v80 > 1), v81 + 1, 1, v177);
                    }

                    v83 = *(v0 + 288);
                    v82 = *(v0 + 296);
                    sub_1A849D24C(*(v0 + 400), type metadata accessor for ImportExport.Attachment);
                    v177[2] = v81 + 1;
                    sub_1A849D3B4(v82, v177 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v81, type metadata accessor for ImportExport.MessageAttachmentPair);
                    v165 = 0;
                    goto LABEL_10;
                  }

                  v165 = 0;
                }

                else
                {
                  v61 = *(*(v0 + 352) + 8);
                }
              }

              else
              {
                v56 = *(v0 + 352);
                v55 = *(v0 + 360);
                v57 = *(v0 + 344);
                (*(v56 + 32))(v55, *(v0 + 328), v57);
                v58 = [objc_opt_self() defaultManager];
                sub_1A84E555C();
                v59 = sub_1A84E5D8C();

                v60 = [v58 fileExistsAtPath_];

                v61 = *(v56 + 8);
                v61(v55, v57);
                if (!v60)
                {
                  goto LABEL_22;
                }
              }

              v75 = *(v0 + 400);
              v61(v51 + v173, *(v0 + 344));
              sub_1A849D24C(v75, type metadata accessor for ImportExport.Attachment);
              v21 = v169;
              v1 = v170;
              goto LABEL_10;
            }

            v43 = *(v0 + 368);
            v44 = *(v0 + 352);
            v172 = *(v0 + 344);
            (*(v44 + 32))(v43, *(v0 + 336));
            v45 = [objc_opt_self() defaultManager];
            sub_1A84E555C();
            v46 = sub_1A84E5D8C();

            v47 = [v45 fileExistsAtPath_];

            (*(v44 + 8))(v43, v172);
            if ((v47 & 1) == 0)
            {
              goto LABEL_19;
            }

            sub_1A849D24C(*(v0 + 400), type metadata accessor for ImportExport.Attachment);
            v21 = v169;
            v1 = v170;
          }

LABEL_10:
          if (v176 == ++v19)
          {
            goto LABEL_37;
          }
        }
      }

      v177 = *(v0 + 552);
LABEL_37:
      v84 = *(v0 + 472);

      sub_1A849D24C(v84, type metadata accessor for ImportExport.Message);
      v3 = v177;
      v4 = v179;
      goto LABEL_38;
    }

    v97 = *(*(v0 + 240) + *(v0 + 536));

    v98 = [v10 v91[160]];
    if (v98 <= 3)
    {
      if (v98 > 1)
      {
        if (v98 == 2)
        {
          v99 = 0xD000000000000010;
          v1 = 0x80000001A8533430;
        }

        else
        {
          v99 = 0x74634170756F7267;
          v1 = 0xEB000000006E6F69;
        }
      }

      else if (v98)
      {
        if (v98 != 1)
        {
LABEL_70:
          v1 = 0xE700000000000000;
          v99 = 0x6E776F6E6B6E75;
          goto LABEL_71;
        }

        v99 = 0xD000000000000011;
        v1 = 0x80000001A8533450;
      }

      else
      {
        v1 = 0xE700000000000000;
        v99 = 0x6567617373656DLL;
      }
    }

    else if (v98 <= 5)
    {
      if (v98 == 4)
      {
        v99 = 0xD000000000000019;
        v1 = 0x80000001A8533410;
      }

      else
      {
        v99 = 0x416567617373656DLL;
        v1 = 0xED00006E6F697463;
      }
    }

    else
    {
      switch(v98)
      {
        case 6:
          v99 = 0x7265766E6F437574;
          v1 = 0xEE006E6F69746173;
          break;
        case 7:
          v99 = 0xD000000000000017;
          v1 = 0x80000001A85333F0;
          break;
        case 8:
          v99 = 0xD000000000000018;
          v1 = 0x80000001A85333D0;
          break;
        default:
          goto LABEL_70;
      }
    }

LABEL_71:
    swift_beginAccess();
    v100 = *(v97 + 152);
    if (*(v100 + 16))
    {
      v101 = sub_1A824B390(v99, v1);
      if (v102)
      {
        v103 = *(*(v100 + 56) + 8 * v101);
        swift_endAccess();
        v104 = v103 + 1;
        if (__OFADD__(v103, 1))
        {
          goto LABEL_140;
        }

        swift_beginAccess();
        v105 = swift_isUniquelyReferenced_nonNull_native();
        v106 = *(v97 + 152);
        *(v0 + 216) = v106;
        *(v97 + 152) = 0x8000000000000000;
        v107 = sub_1A824B390(v99, v1);
        v109 = *(v106 + 16);
        v110 = (v108 & 1) == 0;
        v16 = __OFADD__(v109, v110);
        v111 = v109 + v110;
        if (v16)
        {
          goto LABEL_141;
        }

        v112 = v108;
        if (*(v106 + 24) >= v111)
        {
          if ((v105 & 1) == 0)
          {
            v128 = v107;
            sub_1A848E814();
            v107 = v128;
            v123 = *(v0 + 216);
            if (v112)
            {
LABEL_88:
              *(v123[7] + 8 * v107) = v104;
              goto LABEL_43;
            }

            goto LABEL_92;
          }
        }

        else
        {
          sub_1A848A8C4(v111, v105);
          v107 = sub_1A824B390(v99, v1);
          if ((v112 & 1) != (v113 & 1))
          {
            goto LABEL_119;
          }
        }

        v123 = *(v0 + 216);
        if (v112)
        {
          goto LABEL_88;
        }

LABEL_92:
        v123[(v107 >> 6) + 8] |= 1 << v107;
        v129 = (v123[6] + 16 * v107);
        *v129 = v99;
        v129[1] = v1;
        *(v123[7] + 8 * v107) = v104;
        v130 = v123[2];
        v16 = __OFADD__(v130, 1);
        v126 = v130 + 1;
        if (v16)
        {
          goto LABEL_142;
        }

        goto LABEL_93;
      }
    }

    swift_endAccess();
    swift_beginAccess();
    v114 = swift_isUniquelyReferenced_nonNull_native();
    v115 = *(v97 + 152);
    *(v0 + 208) = v115;
    *(v97 + 152) = 0x8000000000000000;
    v116 = sub_1A824B390(v99, v1);
    v118 = *(v115 + 16);
    v119 = (v117 & 1) == 0;
    v16 = __OFADD__(v118, v119);
    v120 = v118 + v119;
    if (v16)
    {
      goto LABEL_133;
    }

    v121 = v117;
    if (*(v115 + 24) >= v120)
    {
      if ((v114 & 1) == 0)
      {
        v127 = v116;
        sub_1A848E814();
        v116 = v127;
        v123 = *(v0 + 208);
        if (v121)
        {
LABEL_42:
          *(v123[7] + 8 * v116) = 1;
          goto LABEL_43;
        }

        goto LABEL_84;
      }
    }

    else
    {
      sub_1A848A8C4(v120, v114);
      v116 = sub_1A824B390(v99, v1);
      if ((v121 & 1) != (v122 & 1))
      {
LABEL_119:

        sub_1A84E67EC();
        return;
      }
    }

    v123 = *(v0 + 208);
    if (v121)
    {
      goto LABEL_42;
    }

LABEL_84:
    v123[(v116 >> 6) + 8] |= 1 << v116;
    v124 = (v123[6] + 16 * v116);
    *v124 = v99;
    v124[1] = v1;
    *(v123[7] + 8 * v116) = 1;
    v125 = v123[2];
    v16 = __OFADD__(v125, 1);
    v126 = v125 + 1;
    if (v16)
    {
      goto LABEL_139;
    }

LABEL_93:
    v123[2] = v126;

LABEL_43:
    *(v97 + 152) = v123;
    swift_endAccess();

    v85 = *(v0 + 568);
    v3 = v178;
    v4 = v180;
    v91 = &selRef_isGroupTypingMessage;
  }

  while (v85 != *(v0 + 528));
LABEL_39:

  if (v3[2])
  {
    v86 = *(v0 + 536);
    v87 = *(v0 + 312);
    v88 = *(v0 + 240);
    sub_1A849D2AC(v88 + *(v0 + 512), v87, type metadata accessor for ImportExport.ExportOptions);
    v89 = *(v88 + v86);
    type metadata accessor for ImportExport.DownloadableAttachmentBatch(0);
    v1 = swift_allocObject();
    sub_1A849D2AC(v87, v1 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_exportOptions, type metadata accessor for ImportExport.ExportOptions);
    *(v1 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_messageAttachmentPairs) = v3;
    *(v1 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_exportStatistics) = v89;
    type metadata accessor for ImportExport.AttachmentDownloadBatchProgress();
    swift_allocObject();

    v90 = sub_1A84B39AC(0, 0, 0);
    sub_1A849D24C(v87, type metadata accessor for ImportExport.ExportOptions);
    *(v1 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_progress) = v90;
  }

  else
  {

    v1 = 0;
  }

  sub_1A849D2AC(*(v0 + 240) + *(v0 + 504), *(v0 + 272), type metadata accessor for ImportExport.Conversation);
  v131 = v4[2];
  if (!v131)
  {
LABEL_105:
    v143 = *(v0 + 264);
    v144 = *(v0 + 248);
    v145 = *(v0 + 256);
    v146 = *(v0 + 224);
    sub_1A849D3B4(*(v0 + 272), v143, type metadata accessor for ImportExport.Conversation);
    *(v143 + *(v144 + 20)) = v4;
    *(v143 + *(v144 + 24)) = v1;
    sub_1A849D3B4(v143, v146, type metadata accessor for ImportExport.MessageBatch);
    (*(v145 + 56))(v146, 0, 1, v144);

    v147 = *(v0 + 8);
    goto LABEL_126;
  }

  v132 = 0;
  v133 = *(v0 + 456);
  v134 = *(v0 + 272);
  while (1)
  {
    if (v132 >= v4[2])
    {
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
      goto LABEL_136;
    }

    sub_1A849D2AC(v4 + ((*(*(v0 + 448) + 80) + 32) & ~*(*(v0 + 448) + 80)) + *(*(v0 + 448) + 72) * v132, *(v0 + 456), type metadata accessor for ImportExport.Message);
    v135 = *(v133 + 32);
    v136 = *(v133 + 40);
    v137 = *(v134 + 8);
    v138 = *(v134 + 16);
    v139 = v135 == v137 && v136 == v138;
    if (!v139 && (sub_1A84E67AC() & 1) == 0)
    {
      break;
    }

    ++v132;
    sub_1A849D24C(*(v0 + 456), type metadata accessor for ImportExport.Message);
    v4 = v180;
    if (v131 == v132)
    {
      goto LABEL_105;
    }
  }

  v140 = *(v0 + 456);
  v141 = *(v0 + 272);

  sub_1A84E646C();
  MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A852FF50);
  MEMORY[0x1AC56A990](v135, v136);
  MEMORY[0x1AC56A990](0xD000000000000023, 0x80000001A852FF70);
  MEMORY[0x1AC56A990](v137, v138);
  sub_1A8407E40();
  swift_allocError();
  *v142 = 0;
  v142[1] = 0xE000000000000000;
  swift_willThrow();

  sub_1A849D24C(v141, type metadata accessor for ImportExport.Conversation);
  sub_1A849D24C(v140, type metadata accessor for ImportExport.Message);
LABEL_125:

  v147 = *(v0 + 8);
LABEL_126:

  v147();
}

uint64_t sub_1A849BC98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A849BDE4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  type metadata accessor for ImportExport.Conversation(0);
  v3[7] = swift_task_alloc();
  v4 = type metadata accessor for ImportExport.Message(0);
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A849BED4, 0, 0);
}

uint64_t sub_1A849BED4()
{
  v13 = v0;
  v1 = v0[5];
  v2 = objc_autoreleasePoolPush();
  sub_1A84D5350(v1, v0 + 2, v12);
  objc_autoreleasePoolPop(v2);
  v4 = v12[0];
  if (*(v12[0] + 16) || (v10 = v0[5], , v11 = objc_autoreleasePoolPush(), sub_1A84D6384(v10, v0 + 3, v12), objc_autoreleasePoolPop(v11), v4 = v12[0], *(v12[0] + 16)))
  {
    v5 = v0[10];
    v6 = v0[7];
    v7 = v0[5];
    sub_1A849D2AC(v0[6] + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_conversation, v6, type metadata accessor for ImportExport.Conversation);
    sub_1A8490568(v7, v6, v4, v5);
    if (ImportExport.Message.allAttachments.getter())
    {
    }

    sub_1A849D3B4(v0[10], v0[4], type metadata accessor for ImportExport.Message);
    v8 = 0;
  }

  else
  {

    v8 = 1;
  }

  (*(v0[9] + 56))(v0[4], v8, 1, v0[8]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1A849C0B4()
{
  v1 = *v0;
  v2 = 0x61737265766E6F63;
  v3 = 0x6F6C61646E617473;
  if (v1 != 5)
  {
    v3 = 0x756F436863746162;
  }

  v4 = 0x42746E6572727563;
  if (v1 != 3)
  {
    v4 = 0xD000000000000016;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x704F74726F707865;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A849C1C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A849DB98(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A849C1F0(uint64_t a1)
{
  v2 = sub_1A849D314();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A849C22C(uint64_t a1)
{
  v2 = sub_1A849D314();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ConversationExporter.deinit()
{
  sub_1A849D24C(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_conversation, type metadata accessor for ImportExport.Conversation);
  sub_1A849D24C(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportOptions, type metadata accessor for ImportExport.ExportOptions);

  sub_1A824B2D4(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_currentBatch, &qword_1EB2E7CF8, &qword_1A8509020);
  return v0;
}

uint64_t ImportExport.ConversationExporter.__deallocating_deinit()
{
  sub_1A849D24C(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_conversation, type metadata accessor for ImportExport.Conversation);
  sub_1A849D24C(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportOptions, type metadata accessor for ImportExport.ExportOptions);

  sub_1A824B2D4(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_currentBatch, &qword_1EB2E7CF8, &qword_1A8509020);

  return swift_deallocClassInstance();
}

uint64_t sub_1A849C3C4(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E7CF8, &qword_1A8509020);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15[-v6];
  v8 = sub_1A83EA2FC(&qword_1EB2E8640, &qword_1A8509048);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15[-v10];
  sub_1A82471E0(a1, a1[3]);
  sub_1A849D314();
  sub_1A84E68AC();
  v18 = 0;
  type metadata accessor for ImportExport.Conversation(0);
  sub_1A849D41C(&qword_1EB2E71B0, type metadata accessor for ImportExport.Conversation, &protocol conformance descriptor for ImportExport.Conversation);
  sub_1A84E672C();
  if (!v2)
  {
    v18 = 1;
    type metadata accessor for ImportExport.ExportOptions(0);
    sub_1A849D41C(&qword_1EB2E7D10, type metadata accessor for ImportExport.ExportOptions, &protocol conformance descriptor for ImportExport.ExportOptions);
    sub_1A84E672C();
    v12 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportStatistics;
    swift_beginAccess();
    v17 = *(v3 + v12);
    v16 = 2;
    type metadata accessor for ImportExport.ExportStatistics();
    sub_1A849D41C(&qword_1EB2E7DE0, type metadata accessor for ImportExport.ExportStatistics, &protocol conformance descriptor for ImportExport.ExportStatistics);
    sub_1A84E672C();
    v13 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_currentBatch;
    swift_beginAccess();
    sub_1A8243D74(v3 + v13, v7, &qword_1EB2E7CF8, &qword_1A8509020);
    v16 = 3;
    type metadata accessor for ImportExport.MessageBatch(0);
    sub_1A849D41C(&qword_1EB2E8650, type metadata accessor for ImportExport.MessageBatch, &protocol conformance descriptor for ImportExport.MessageBatch);
    sub_1A84E66BC();
    sub_1A824B2D4(v7, &qword_1EB2E7CF8, &qword_1A8509020);
    swift_beginAccess();
    v15[0] = 4;
    sub_1A84E673C();
    v15[0] = 5;
    sub_1A84E66DC();
    swift_beginAccess();
    v19 = 6;
    sub_1A84E670C();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t ImportExport.ConversationExporter.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ImportExport.ConversationExporter.init(from:)(a1);
  return v2;
}

uint64_t ImportExport.ConversationExporter.init(from:)(void *a1)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E7CF8, &qword_1A8509020);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v32 = &v25 - v4;
  v31 = type metadata accessor for ImportExport.ExportOptions(0);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ImportExport.Conversation(0);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1A83EA2FC(&qword_1EB2E8658, qword_1A8509050);
  v29 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v8 = &v25 - v7;
  v9 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_currentBatch;
  v10 = type metadata accessor for ImportExport.MessageBatch(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_standaloneMode;
  *(v1 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_standaloneMode) = 0;
  v12 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_batchCount;
  v38 = v1;
  v39 = a1;
  *(v1 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_batchCount) = 0;
  sub_1A82471E0(a1, a1[3]);
  sub_1A849D314();
  v35 = v8;
  v13 = v37;
  sub_1A84E689C();
  if (v13)
  {
    v14 = v38;
    sub_1A824B2D4(v38 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_currentBatch, &qword_1EB2E7CF8, &qword_1A8509020);
    type metadata accessor for ImportExport.ConversationExporter(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = v30;
    v37 = v10;
    v27 = v11;
    v28 = v9;
    v26 = v12;
    v16 = v32;
    v17 = v29;
    LOBYTE(v40) = 0;
    sub_1A849D41C(&qword_1EB2E71C8, type metadata accessor for ImportExport.Conversation, &protocol conformance descriptor for ImportExport.Conversation);
    v18 = v34;
    sub_1A84E666C();
    v19 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_conversation;
    v14 = v38;
    sub_1A849D3B4(v36, v38 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_conversation, type metadata accessor for ImportExport.Conversation);
    LOBYTE(v40) = 1;
    sub_1A849D41C(&qword_1EB2E7D40, type metadata accessor for ImportExport.ExportOptions, &protocol conformance descriptor for ImportExport.ExportOptions);
    sub_1A84E666C();
    v36 = v19;
    sub_1A849D3B4(v15, v14 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportOptions, type metadata accessor for ImportExport.ExportOptions);
    type metadata accessor for ImportExport.ExportStatistics();
    v41 = 2;
    sub_1A849D41C(&qword_1EB2E7DF0, type metadata accessor for ImportExport.ExportStatistics, &protocol conformance descriptor for ImportExport.ExportStatistics);
    sub_1A84E666C();
    *(v14 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportStatistics) = v40;
    LOBYTE(v40) = 3;
    sub_1A849D41C(&qword_1EB2E7E88, type metadata accessor for ImportExport.MessageBatch, &protocol conformance descriptor for ImportExport.MessageBatch);
    sub_1A84E65FC();
    v21 = v28;
    swift_beginAccess();
    sub_1A849D1DC(v16, v14 + v21);
    swift_endAccess();
    LOBYTE(v40) = 4;
    *(v14 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_nextBatchStartingRowID) = sub_1A84E667C();
    LOBYTE(v40) = 5;
    v22 = v35;
    *(v14 + v27) = sub_1A84E661C() & 1;
    LOBYTE(v40) = 6;
    v23 = sub_1A84E664C();
    (*(v17 + 8))(v22, v18);
    v24 = v26;
    swift_beginAccess();
    *(v14 + v24) = v23;
  }

  sub_1A8244788(v39);
  return v14;
}

uint64_t sub_1A849CF8C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A82505F4;

  return sub_1A84988C0(a1);
}

uint64_t sub_1A849D028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = v4;
  v5[5] = a4;
  v5[3] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1A84E605C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[6] = v6;
  v5[7] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A849D0C0, v6, v8);
}

uint64_t sub_1A849D0C0()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1A84065F4;
  v2 = *(v0 + 24);

  return sub_1A84988C0(v2);
}

uint64_t sub_1A849D15C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ImportExport.ConversationExporter(0);
  v5 = swift_allocObject();
  result = ImportExport.ConversationExporter.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1A849D1DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E7CF8, &qword_1A8509020);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A849D24C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A849D2AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A849D314()
{
  result = qword_1EB2E8648;
  if (!qword_1EB2E8648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8648);
  }

  return result;
}

uint64_t type metadata accessor for ImportExport.ConversationExporter(uint64_t a1)
{
  result = qword_1EB2E8660;
  if (!qword_1EB2E8660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A849D3B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A849D41C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A849D464@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t sub_1A849D4B8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

void sub_1A849D510(uint64_t a1)
{
  type metadata accessor for ImportExport.Conversation(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ImportExport.ExportOptions(319);
    if (v2 <= 0x3F)
    {
      sub_1A849DA28(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of ImportExport.ConversationExporter.next()(uint64_t a1)
{
  v6 = (*(*v1 + 272) + **(*v1 + 272));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A824FBE0;

  return v6(a1);
}

uint64_t dispatch thunk of ImportExport.ConversationExporter.fetchExportableMessageBatch(startingAtRowIDGreaterThan:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 280) + **(*v2 + 280));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A82505F4;

  return v8(a1, a2);
}

void sub_1A849DA28(uint64_t a1)
{
  if (!qword_1EB2E8670)
  {
    type metadata accessor for ImportExport.MessageBatch(255);
    v1 = sub_1A84E633C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB2E8670);
    }
  }
}

unint64_t sub_1A849DA94()
{
  result = qword_1EB2E8678;
  if (!qword_1EB2E8678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8678);
  }

  return result;
}

unint64_t sub_1A849DAEC()
{
  result = qword_1EB2E8680;
  if (!qword_1EB2E8680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8680);
  }

  return result;
}

unint64_t sub_1A849DB44()
{
  result = qword_1EB2E8688;
  if (!qword_1EB2E8688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8688);
  }

  return result;
}

uint64_t sub_1A849DB98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61737265766E6F63 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x704F74726F707865 && a2 == 0xED0000736E6F6974 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8531D60 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x42746E6572727563 && a2 == 0xEC00000068637461 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A85334B0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F6C61646E617473 && a2 == 0xEE0065646F4D656ELL || (sub_1A84E67AC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x756F436863746162 && a2 == 0xEA0000000000746ELL)
  {

    return 6;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void *ImportExport.ArchiveImportIterator.__allocating_init(withArchiveImporter:)(uint64_t a1)
{
  result = swift_allocObject();
  result[5] = 0;
  result[6] = 0;
  result[4] = 0;
  v3 = MEMORY[0x1E69E7CC0];
  result[2] = a1;
  result[3] = v3;
  return result;
}

void *ImportExport.ArchiveImportIterator.init(withArchiveImporter:)(uint64_t a1)
{
  v1[4] = 0;
  v1[5] = 0;
  v1[6] = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v1[2] = a1;
  v1[3] = v2;
  return v1;
}

uint64_t sub_1A849DE74(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for ImportExport.ImportedMessageBatch(0);
  v2[8] = swift_task_alloc();
  sub_1A83EA2FC(&qword_1EB2E7CF8, &qword_1A8509020);
  v2[9] = swift_task_alloc();
  v3 = type metadata accessor for ImportExport.MessageBatch(0);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_1A84E558C();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  sub_1A83EA2FC(&qword_1EB2E8690, &unk_1A85092A0);
  v2[16] = swift_task_alloc();
  v5 = sub_1A83EA2FC(&qword_1EB2E7E00, &qword_1A8506380);
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A849E0A4, 0, 0);
}

uint64_t sub_1A849E0A4()
{
  v1 = v0[6];
  sub_1A849F2A4();
  v2 = *(v1 + 32);
  v0[21] = v2;
  if (!v2)
  {
    return sub_1A84E653C();
  }

  v3 = v0[6];
  v4 = *(v3 + 48);

  if (v4)
  {
    v5 = *(v3 + 40);
    v0[24] = v5;
    if (v5)
    {

      v6 = swift_task_alloc();
      v0[25] = v6;
      *v6 = v0;
      v6[1] = sub_1A849E828;
      v7 = v0[9];

      return sub_1A840416C(v7);
    }

    else
    {
      sub_1A849F584();
      v11 = v0[5];
      v12 = type metadata accessor for ImportExport.ArchiveImporterBatch(0);
      (*(*(v12 - 8) + 56))(v11, 1, 1, v12);

      v13 = v0[1];

      return v13();
    }
  }

  else
  {
    v9 = swift_task_alloc();
    v0[22] = v9;
    *v9 = v0;
    v9[1] = sub_1A849E3B0;
    v10 = v0[16];

    return sub_1A8459D78(v10);
  }
}

uint64_t sub_1A849E3B0()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1A849F02C;
  }

  else
  {
    v2 = sub_1A849E4C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A849E4C4()
{
  v1 = v0[17];
  v2 = v0[16];
  if ((*(v0[18] + 48))(v2, 1, v1) == 1)
  {
    v3 = v0[23];
    sub_1A824B2D4(v2, &qword_1EB2E8690, &unk_1A85092A0);
LABEL_7:
    sub_1A849F584();
    if (!v3)
    {
      v18 = v0[5];
      v19 = type metadata accessor for ImportExport.ArchiveImporterBatch(0);
      (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    }

    v17 = v0[1];

    return v17();
  }

  v5 = v0[19];
  v4 = v0[20];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[13];
  v9 = v0[6];
  sub_1A849F80C(v2, v4);
  sub_1A8243D74(v4, v5, &qword_1EB2E7E00, &qword_1A8506380);
  v10 = *(v1 + 48);
  *(v9 + 48) = *v5;

  (*(v7 + 8))(&v5[v10], v8);
  v11 = *v4;
  (*(v7 + 16))(v6, &v4[*(v1 + 48)], v8);
  type metadata accessor for ImportExport.ArchivedConversation.Iterator(0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = v11;
  (*(v7 + 32))(v12 + OBJC_IVAR____TtCCO6IMCore12ImportExport20ArchivedConversation8Iterator_archivedConversationFileURL, v6, v8);
  *(v9 + 40) = v12;

  sub_1A824B2D4(v4, &qword_1EB2E7E00, &qword_1A8506380);
  v3 = v0[23];
  v13 = *(v0[6] + 40);
  v0[24] = v13;
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = swift_task_alloc();
  v0[25] = v14;
  *v14 = v0;
  v14[1] = sub_1A849E828;
  v15 = v0[9];

  return sub_1A840416C(v15);
}

uint64_t sub_1A849E828()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1A849F0EC;
  }

  else
  {
    v2 = sub_1A849E93C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A849E93C()
{
  v1 = v0[9];
  v2 = (*(v0[11] + 48))(v1, 1, v0[10]);
  v3 = v0[6];
  if (v2 == 1)
  {

    sub_1A824B2D4(v1, &qword_1EB2E7CF8, &qword_1A8509020);
    v3[6] = 0;

    v3[5] = 0;

    v4 = v0[6];
    if (*(v4 + 48))
    {
      v5 = v0[26];
      v6 = *(v4 + 40);
      v0[24] = v6;
      if (v6)
      {

        v7 = swift_task_alloc();
        v0[25] = v7;
        *v7 = v0;
        v7[1] = sub_1A849E828;
        v8 = v0[9];

        return sub_1A840416C(v8);
      }

      else
      {
        sub_1A849F584();
        if (!v5)
        {
          v16 = v0[5];
          v17 = type metadata accessor for ImportExport.ArchiveImporterBatch(0);
          (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
        }

        v15 = v0[1];

        return v15();
      }
    }

    else
    {
      v13 = swift_task_alloc();
      v0[22] = v13;
      *v13 = v0;
      v13[1] = sub_1A849E3B0;
      v14 = v0[16];

      return sub_1A8459D78(v14);
    }
  }

  else
  {
    sub_1A84A1300(v1, v0[12], type metadata accessor for ImportExport.MessageBatch);
    v0[27] = *(v3[2] + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_importer);

    v10 = swift_task_alloc();
    v0[28] = v10;
    *v10 = v0;
    v10[1] = sub_1A849ECF0;
    v11 = v0[12];
    v12 = v0[8];

    return ImportExport.Importer.import(messageBatch:)(v12, v11);
  }
}

uint64_t sub_1A849ECF0()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1A849F1B8;
  }

  else
  {
    v2 = sub_1A849EE20;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A849EE20()
{
  v17 = v0[12];
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[5];
  v5 = objc_autoreleasePoolPush();
  v6 = sub_1A84A0514(v3);
  swift_beginAccess();

  sub_1A83EE550(v7);
  swift_endAccess();
  sub_1A84A1298(v3, v4, type metadata accessor for ImportExport.Conversation);
  v8 = *(v3 + *(v1 + 20));
  v9 = v3 + *(v2 + 20);
  v10 = *(v9 + 32);
  v11 = type metadata accessor for ImportExport.ArchiveImporterBatch(0);
  v12 = *v9;
  v13 = *(v9 + 16);
  *(v4 + v11[5]) = v8;
  *(v4 + v11[6]) = v6;
  v14 = v4 + v11[7];
  *v14 = v12;
  *(v14 + 16) = v13;
  *(v14 + 32) = v10;
  (*(*(v11 - 1) + 56))(v4, 0, 1, v11);

  objc_autoreleasePoolPop(v5);

  sub_1A84A1238(v3, type metadata accessor for ImportExport.ImportedMessageBatch);
  sub_1A84A1238(v17, type metadata accessor for ImportExport.MessageBatch);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1A849F02C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A849F0EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A849F1B8()
{
  v1 = *(v0 + 96);

  sub_1A84A1238(v1, type metadata accessor for ImportExport.MessageBatch);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A849F2A4()
{
  v2 = sub_1A84E5C9C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImportExport.ArchiveManifest(0);
  result = MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v0[4])
  {
    v20 = v1;
    v10 = v0[2] + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_archiveManifest;
    swift_beginAccess();
    sub_1A84A1298(v10, v9, type metadata accessor for ImportExport.ArchiveManifest);
    type metadata accessor for ImportExport.ArchiveManifest.ArchiveManifestIterator(0);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    sub_1A84A1300(v9, v11 + OBJC_IVAR____TtCVO6IMCore12ImportExport15ArchiveManifest23ArchiveManifestIterator_archiveManifest, type metadata accessor for ImportExport.ArchiveManifest);
    *(v11 + 16) = 0;
    v0[4] = v11;
    v0[5] = 0;

    v0[6] = 0;

    v12 = *(v10 + *(v6 + 24));
    swift_beginAccess();
    v13 = *(v12 + 144);
    v14 = *(v12 + 128);
    v18[0] = *(v12 + 112);
    v18[1] = v14;
    v19 = v13;

    ImportExport.Importer.begin(withExpectedCounts:)(v18);

    sub_1A84E5C8C();
    v15 = sub_1A84E5C7C();
    v16 = sub_1A84E617C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1A823F000, v15, v16, "Started importing archive...", v17, 2u);
      MEMORY[0x1AC56D3F0](v17, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_1A849F584()
{
  v1 = v0;
  v2 = sub_1A84E5C9C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[2];
  v16 = OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_importer;
  v7 = *(v6 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_importer);
  swift_beginAccess();
  v8 = *(v7 + 16);
  swift_beginAccess();
  v9 = v1[3];
  type metadata accessor for ImportExport.ArchiveImporterStatistics();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  v11 = OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_archiveImporterStatistics;
  swift_beginAccess();
  *(v6 + v11) = v10;

  sub_1A84E5C8C();
  v12 = sub_1A84E5C7C();
  v13 = sub_1A84E617C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1A823F000, v12, v13, "Finished importing archive...", v14, 2u);
    MEMORY[0x1AC56D3F0](v14, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v1[4] = 0;

  v1[5] = 0;

  v1[6] = 0;

  v1[3] = MEMORY[0x1E69E7CC0];

  ImportExport.Importer.finish()();
}

uint64_t sub_1A849F80C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E7E00, &qword_1A8506380);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A849F87C()
{
  v1 = *v0;
  v2 = 0x4965766968637261;
  v3 = 0xD000000000000017;
  v4 = 0xD000000000000014;
  if (v1 == 3)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A849F934@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A84A107C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A849F95C(uint64_t a1)
{
  v2 = sub_1A84A0C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A849F998(uint64_t a1)
{
  v2 = sub_1A84A0C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}