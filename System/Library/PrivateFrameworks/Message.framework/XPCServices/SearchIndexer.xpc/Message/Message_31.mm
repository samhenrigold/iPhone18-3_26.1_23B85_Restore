void *sub_1002057C8()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D3638, &unk_1004DD4E0);
  v2 = *v0;
  v3 = sub_1004A6684();
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

  return result;
}

void sub_100205908()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D3FC0, &qword_1004DF4B0);
  v2 = *v0;
  v3 = sub_1004A6684();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        LOBYTE(v18) = *(v18 + 24);
        v22 = *(v4 + 48) + v17;
        *v22 = v20;
        *(v22 + 8) = v19;
        *(v22 + 16) = v21;
        *(v22 + 24) = v18;
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

void *sub_100205A74()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D4E10, &qword_1004E5E20);
  v2 = *v0;
  v3 = sub_1004A6684();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

  return result;
}

void *sub_100205BB4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10000C9C0(a1, a2);
  v4 = *v2;
  v5 = sub_1004A6684();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
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

  return result;
}

void *sub_100205CE4()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D4E18, &qword_1004E5E28);
  v2 = *v0;
  v3 = sub_1004A6684();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
LABEL_11:
      v11 &= v11 - 1;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100205DF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005D4DE8, &qword_1004E5E00);
  result = sub_1004A6694();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v3 + 56);
    for (i = (v7 + 63) >> 6; v9; result = sub_100202DE8(v15, v16, v17, v5))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      v14 = (*(v3 + 48) + 24 * (v11 | (v6 << 6)));
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      sub_1001978DC(*v14, v16, v17);
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= i)
      {
        goto LABEL_13;
      }

      v13 = *(v3 + 56 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_100205F48(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005D4E08, &qword_1004E5E18);
  result = sub_1004A6694();
  v5 = result;
  if (!*(v3 + 16))
  {

LABEL_44:
    *v2 = v5;
    return result;
  }

  v36 = v2;
  v6 = 0;
  v37 = v3 + 56;
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
  v38 = (v7 + 63) >> 6;
  v10 = result + 56;
  v39 = v3;
  v40 = result;
  while (v9)
  {
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_15:
    v17 = (*(v3 + 48) + 80 * (v14 | (v6 << 6)));
    v19 = *v17;
    v18 = v17[1];
    v21 = v17[2];
    v20 = v17[3];
    v41 = v17[4];
    v42 = v17[5];
    v22 = v17[7];
    v43 = v17[6];
    v23 = v17[9];
    v46 = v17[8];
    sub_1004A6E94();
    v44 = v19;
    v45 = v23;
    if ((v22 & 0x1000000000000000) == 0)
    {
      sub_1004A6EB4(0);

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v24 = v21;
      v26 = v41;
      v25 = v42;
      goto LABEL_33;
    }

    sub_1004A6EB4(1uLL);
    v27 = (v23 >> 59) & 6 | ((v22 & 0x2000000000000000) != 0);
    if (v27 <= 2)
    {
      v24 = v21;
      v26 = v41;
      if (!v27)
      {
        sub_1004A6EB4(0);
        v48 = v44;
        v49 = v18;
        v50 = v24;
        v51 = v20;
        v52 = v41;
        v25 = v42;
LABEL_30:
        v53 = v25;
        v54 = v43;
        v55 = v22 & 0xEFFFFFFFFFFFFFFFLL;
        v56 = v46;
        v57 = v45;
        sub_1001915E8(&v48, v47);
        sub_1004A4424();
        sub_1004A4424();
        goto LABEL_33;
      }

      v25 = v42;
      if (v27 == 1)
      {
        sub_1004A6EB4(1uLL);
        v48 = v44;
        v49 = v18;
        v50 = v24;
        v51 = v20;
        v52 = v41;
        v53 = v42;
        v54 = v43;
        v55 = v22 & 0xEFFFFFFFFFFFFFFFLL;
        v56 = v46;
        v57 = v45;
        sub_1001915E8(&v48, v47);
        sub_1004A4424();
        sub_1004A4424();
        sub_1004A4424();
        sub_1004A4424();
      }

      else
      {
        sub_1004A6EB4(2uLL);
        v48 = v44;
        v49 = v18;
        v50 = v24;
        v51 = v20;
        v52 = v41;
        v53 = v42;
        v54 = v43;
        v55 = v22 & 0xEFFFFFFFFFFFFFFFLL;
        v56 = v46;
        v57 = v45;
        sub_1001915E8(&v48, v47);
      }

      sub_1004A4424();
    }

    else
    {
      v24 = v21;
      v26 = v41;
      if (v27 > 4)
      {
        v25 = v42;
        if (v27 == 5)
        {
          v28 = 5;
        }

        else
        {
          v28 = 6;
        }
      }

      else
      {
        v25 = v42;
        if (v27 != 3)
        {
          sub_1004A6EB4(4uLL);
          v48 = v44;
          v49 = v18;
          v50 = v24;
          v51 = v20;
          v52 = v41;
          goto LABEL_30;
        }

        v28 = 3;
      }

      sub_1004A6EB4(v28);
      v48 = v44;
      v49 = v18;
      v50 = v24;
      v51 = v20;
      v52 = v41;
      v53 = v25;
      v54 = v43;
      v55 = v22 & 0xEFFFFFFFFFFFFFFFLL;
      v56 = v46;
      v57 = v45;
      sub_1001915E8(&v48, v47);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

LABEL_33:
    result = sub_1004A6F14();
    v5 = v40;
    v29 = -1 << *(v40 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v10 + 8 * (v30 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v29) >> 6;
      v12 = v44;
      while (++v31 != v33 || (v32 & 1) == 0)
      {
        v34 = v31 == v33;
        if (v31 == v33)
        {
          v31 = 0;
        }

        v32 |= v34;
        v35 = *(v10 + 8 * v31);
        if (v35 != -1)
        {
          v11 = __clz(__rbit64(~v35)) + (v31 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_46;
    }

    v11 = __clz(__rbit64((-1 << v30) & ~*(v10 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    v12 = v44;
LABEL_7:
    *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
    v13 = (*(v40 + 48) + 80 * v11);
    *v13 = v12;
    v13[1] = v18;
    v13[2] = v24;
    v13[3] = v20;
    v13[4] = v26;
    v13[5] = v25;
    v13[6] = v43;
    v13[7] = v22;
    v13[8] = v46;
    v13[9] = v45;
    ++*(v40 + 16);
    v3 = v39;
  }

  v15 = v6;
  while (1)
  {
    v6 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v6 >= v38)
    {

      v2 = v36;
      goto LABEL_44;
    }

    v16 = *(v37 + 8 * v6);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v9 = (v16 - 1) & v16;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_100206430(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005D3638, &unk_1004DD4E0);
  result = sub_1004A6694();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      sub_1004A6E94();
      sub_1004A6EE4(v16);
      result = sub_1004A6F14();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v16;
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

  return result;
}

uint64_t sub_100206650(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005D3FC0, &qword_1004DF4B0);
  result = sub_1004A6694();
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
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 32 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      sub_1004A6E94();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v33 = v22;
      if (v22 == 1)
      {
        v23 = v21;
        sub_1004A6EC4(0);
      }

      else
      {
        sub_1004A6EC4(1u);
        v23 = v21;
        sub_1004A6EF4(v21 >> 14);
      }

      result = sub_1004A6F14();
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

        goto LABEL_31;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 32 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v23;
      *(v14 + 24) = v33;
      ++*(v5 + 16);
      v3 = v32;
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
        goto LABEL_29;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1002068E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005D4E10, &qword_1004E5E20);
  result = sub_1004A6694();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1004A6E94();
      sub_1004A6EB4(v16);
      result = sub_1004A6F14();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
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

  return result;
}

uint64_t sub_100206B04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_10000C9C0(a2, a3);
  result = sub_1004A6694();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + (v15 | (v8 << 6)));
      sub_1004A6E94();
      sub_1004A6EB4(v18);
      result = sub_1004A6F14();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

uint64_t sub_100206D1C(uint64_t a1)
{
  v2 = *v1;
  sub_10000C9C0(&qword_1005D4E18, &qword_1004E5E28);
  result = sub_1004A6694();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
LABEL_13:
      sub_1004A6E94();
      sub_1004A6EB4(0);
      result = sub_1004A6F14();
      v13 = -1 << *(v4 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v10 + 8 * (v14 >> 6))) == 0)
      {
        v16 = 0;
        v17 = (63 - v13) >> 6;
        while (++v15 != v17 || (v16 & 1) == 0)
        {
          v18 = v15 == v17;
          if (v15 == v17)
          {
            v15 = 0;
          }

          v16 |= v18;
          v19 = *(v10 + 8 * v15);
          if (v19 != -1)
          {
            v11 = __clz(__rbit64(~v19)) + (v15 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_24;
      }

      v11 = __clz(__rbit64((-1 << v14) & ~*(v10 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v8 &= v8 - 1;
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      ++*(v4 + 16);
    }

    while (1)
    {
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        goto LABEL_22;
      }

      v8 = *(v2 + 56 + 8 * v12);
      ++v5;
      if (v8)
      {
        v5 = v12;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_22:

    *v1 = v4;
  }

  return result;
}

uint64_t _s15IMAP2Connection07CommandB0C12RecentErrorsV5ErrorV4KindO21__derived_enum_equalsySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v3 = sub_1004A5214();
  v65 = *(v3 - 8);
  v66 = v3;
  __chkstk_darwin(v3);
  v63 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v62 = &v62 - v6;
  v7 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  __chkstk_darwin(v7);
  v64 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v62 - v10;
  __chkstk_darwin(v12);
  v14 = (&v62 - v13);
  __chkstk_darwin(v15);
  v17 = (&v62 - v16);
  __chkstk_darwin(v18);
  v20 = (&v62 - v19);
  __chkstk_darwin(v21);
  v23 = (&v62 - v22);
  v24 = sub_10000C9C0(&qword_1005D4E00, &qword_1004E5E10);
  __chkstk_darwin(v24 - 8);
  v26 = &v62 - v25;
  v28 = (&v62 + *(v27 + 56) - v25);
  sub_1002076F0(a1, &v62 - v25, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  sub_1002076F0(v67, v28, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1002076F0(v26, v20, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        v34 = *v20;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v35 = v20[1];
          v36 = *v28;
          v33 = static ResponseText.__derived_struct_equals(_:_:)(v34, v35);
          sub_10001114C(v36);

          sub_10001114C(v34);
          goto LABEL_10;
        }

        sub_10001114C(v34);

        goto LABEL_35;
      }

      sub_1002076F0(v26, v17, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      v46 = *v17;
      v45 = v17[1];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_32;
      }

      v47 = v28[1];
      if (v45)
      {
        if (v47)
        {
          if (v46 == *v28 && v45 == v47)
          {

            goto LABEL_29;
          }

          v49 = sub_1004A6D34();

          if (v49)
          {
LABEL_29:
            sub_100207758(v26, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
            v33 = 1;
            return v33 & 1;
          }

LABEL_56:
          sub_100207758(v26, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
          goto LABEL_36;
        }
      }

      else if (!v47)
      {
        goto LABEL_29;
      }

      goto LABEL_56;
    }

    sub_1002076F0(v26, v23, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    v43 = *v23;
    v42 = v23[1];
    v44 = v23[2];
    if (swift_getEnumCaseMultiPayload())
    {
      sub_100191E44(v43, v42, v44);
      goto LABEL_35;
    }

    v55 = *v28;
    v56 = v28[1];
    v57 = v28[2];
    if (v44 > 1)
    {
      if (v44 == 2)
      {
        if (v57 == 2)
        {
          goto LABEL_29;
        }

        goto LABEL_55;
      }

      if (v44 == 3)
      {
        if (v57 == 3)
        {
          goto LABEL_29;
        }

        goto LABEL_55;
      }
    }

    else
    {
      if (!v44)
      {
        if (!v57)
        {
          goto LABEL_29;
        }

        goto LABEL_55;
      }

      if (v44 == 1)
      {
        if (v57 == 1)
        {
          goto LABEL_29;
        }

        goto LABEL_55;
      }
    }

    if (v57 >= 4)
    {
      v58 = *v28;
      v59 = v28[1];
      v60 = v57;
      v61 = static ResponseText.__derived_struct_equals(_:_:)(v43, v42);
      sub_100191E44(v58, v59, v60);
      sub_100191E44(v43, v42, v44);
      if (v61)
      {
        goto LABEL_29;
      }

      goto LABEL_56;
    }

    sub_100191E44(v55, v56, v57);
    v55 = v43;
    v56 = v42;
    v57 = v44;
LABEL_55:
    sub_100191E44(v55, v56, v57);
    goto LABEL_56;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v37 = v64;
      sub_1002076F0(v26, v64, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v39 = v65;
        v38 = v66;
        v40 = v63;
        (*(v65 + 32))(v63, v28, v66);
        v33 = sub_1004A5204();
        v41 = *(v39 + 8);
        v41(v40, v38);
        v41(v37, v38);
        goto LABEL_27;
      }

      (*(v65 + 8))(v37, v66);
      goto LABEL_35;
    }

    if (swift_getEnumCaseMultiPayload() == 6)
    {
      goto LABEL_29;
    }

LABEL_35:
    sub_100025F40(v26, &qword_1005D4E00, &qword_1004E5E10);
LABEL_36:
    v33 = 0;
    return v33 & 1;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_1002076F0(v26, v11, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v51 = v65;
      v50 = v66;
      v52 = v62;
      (*(v65 + 32))(v62, v28, v66);
      v33 = sub_1004A5204();
      v53 = *(v51 + 8);
      v53(v52, v50);
      v53(v11, v50);
      goto LABEL_27;
    }

    (*(v65 + 8))(v11, v66);
    goto LABEL_35;
  }

  sub_1002076F0(v26, v14, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  v30 = *v14;
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_10001114C(v30);
LABEL_32:

    goto LABEL_35;
  }

  v31 = v14[1];
  v32 = *v28;
  v33 = static ResponseText.__derived_struct_equals(_:_:)(v30, v31);
  sub_10001114C(v32);

  sub_10001114C(v30);
LABEL_10:

LABEL_27:
  sub_100207758(v26, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  return v33 & 1;
}

uint64_t sub_100207668(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002076F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100207758(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002077B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100207828(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL _s15IMAP2Connection07CommandB0C12RecentErrorsV10StatisticsV23__derived_struct_equalsySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1004A5214();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v14 = sub_10000C9C0(&qword_1005D4DF0, &qword_1004E5E08);
  __chkstk_darwin(v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v34 - v19;
  if (__PAIR64__(a1[1], *a1) != __PAIR64__(a2[1], *a2) || a1[2] != a2[2] || a1[3] != a2[3] || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2) || *(a1 + 3) != *(a2 + 3))
  {
    return 0;
  }

  v21 = *(a1 + 6);
  v22 = *(a2 + 6);
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    v39 = v18;
    v23 = *(a1 + 4);
    v36 = *(a1 + 5);
    v37 = v23;
    v24 = *(a2 + 5);
    v38 = *(a2 + 4);
    v34 = v21;
    v35 = v24;
    sub_1000110B0(v38);

    LODWORD(v37) = static ResponseText.__derived_struct_equals(_:_:)(v37, v36);
    sub_10001114C(v38);

    if ((v37 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v39 = v18;
    if (v22)
    {
      return 0;
    }
  }

  v36 = type metadata accessor for CommandConnection.RecentErrors.Statistics(0);
  v38 = *(v36 + 48);
  v25 = *(v39 + 48);
  sub_1002077B8(&a1[v38], v20);
  v37 = v25;
  sub_1002077B8(&a2[v38], &v20[v25]);
  v26 = *(v5 + 48);
  v38 = v5 + 48;
  if (v26(v20, 1, v4) == 1)
  {
    if (v26(&v20[v37], 1, v4) == 1)
    {
      v35 = v26;
      sub_100025F40(v20, &unk_1005D54F0, &unk_1004E8DA0);
      goto LABEL_19;
    }

LABEL_17:
    v27 = v20;
LABEL_25:
    sub_100025F40(v27, &qword_1005D4DF0, &qword_1004E5E08);
    return 0;
  }

  sub_1002077B8(v20, v13);
  v35 = v26;
  if (v26(&v20[v37], 1, v4) == 1)
  {
    (*(v5 + 8))(v13, v4);
    goto LABEL_17;
  }

  (*(v5 + 32))(v7, &v20[v37], v4);
  sub_1002083A8();
  LODWORD(v34) = sub_1004A5724();
  v37 = *(v5 + 8);
  (v37)(v7, v4);
  (v37)(v13, v4);
  sub_100025F40(v20, &unk_1005D54F0, &unk_1004E8DA0);
  if ((v34 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v28 = *(v36 + 52);
  v29 = *(v39 + 48);
  sub_1002077B8(&a1[v28], v16);
  sub_1002077B8(&a2[v28], &v16[v29]);
  v30 = v35;
  if (v35(v16, 1, v4) != 1)
  {
    sub_1002077B8(v16, v10);
    if (v30(&v16[v29], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
      goto LABEL_24;
    }

    (*(v5 + 32))(v7, &v16[v29], v4);
    sub_1002083A8();
    v32 = sub_1004A5724();
    v33 = *(v5 + 8);
    v33(v7, v4);
    v33(v10, v4);
    sub_100025F40(v16, &unk_1005D54F0, &unk_1004E8DA0);
    return (v32 & 1) != 0;
  }

  if (v30(&v16[v29], 1, v4) != 1)
  {
LABEL_24:
    v27 = v16;
    goto LABEL_25;
  }

  sub_100025F40(v16, &unk_1005D54F0, &unk_1004E8DA0);
  return 1;
}

unint64_t sub_100207E4C()
{
  result = qword_1005D4BE8;
  if (!qword_1005D4BE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CommandConnection.BackOffBehavior, &type metadata for CommandConnection.BackOffBehavior, v0, v1);
    atomic_store(result, &qword_1005D4BE8);
  }

  return result;
}

uint64_t sub_100207EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100207F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_100207FCC(uint64_t a1)
{
  result = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100208048(uint64_t a1)
{
  sub_1000576D4(319, &qword_1005D3AA0, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_1004A5214();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1002080F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 48);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1002081D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 48) = a2;
  }

  else
  {
    v7 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100208280(uint64_t a1)
{
  sub_1000576D4(319, &qword_1005D4D90, &type metadata for ResponseText);
  if (v1 <= 0x3F)
  {
    sub_100208340(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100208340(uint64_t a1)
{
  if (!qword_1005D4D98)
  {
    sub_1004A5214();
    v1 = sub_1004A6374();
    if (!v2)
    {
      atomic_store(v1, &qword_1005D4D98);
    }
  }
}

unint64_t sub_1002083A8()
{
  result = qword_1005D4DF8;
  if (!qword_1005D4DF8)
  {
    v3 = sub_1004A5214();
    result = swift_getWitnessTable(&protocol conformance descriptor for NWError, v3, v0, v1);
    atomic_store(result, &qword_1005D4DF8);
  }

  return result;
}

uint64_t sub_100208400(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100208448(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002084B4(uint64_t a1, uint64_t a2)
{
  v5 = _s6LoggerVMa(0);
  __chkstk_darwin(v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100208B84(a1, v13, type metadata accessor for UntaggedResponse);
  if (swift_getEnumCaseMultiPayload() != 22)
  {
    v18 = type metadata accessor for UntaggedResponse;
    v19 = v13;
    return sub_100208BEC(v19, v18);
  }

  v15 = *v13;
  v14 = *(v13 + 1);
  v16 = *(v13 + 2);
  if (v13[24])
  {
    if (v13[24] == 1)
    {
      *(v2 + 80) = v15;
      *(v2 + 88) = 0;

      *(v2 + 96) = v14;
      *(v2 + 104) = v16;
      return result;
    }

    sub_100208B84(a2, v10, _s6LoggerVMa);
    sub_100208B84(a2, v7, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v24 = sub_1004A4A54();
    v25 = sub_1004A6014();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = v39;
      *v26 = 68158467;
      *(v26 + 4) = 2;
      *(v26 + 8) = 256;
      v27 = *(v5 + 20);
      v38 = v24;
      v28 = v7[v27];
      sub_100208BEC(v7, _s6LoggerVMa);
      *(v26 + 10) = v28;
      *(v26 + 11) = 2082;
      v29 = *&v10[*(v5 + 20) + 4];
      sub_100208BEC(v10, _s6LoggerVMa);
      v30 = ConnectionID.debugDescription.getter(v29);
      v32 = sub_10015BA6C(v30, v31, &v40);

      *(v26 + 13) = v32;
      *(v26 + 21) = 2085;
      v33 = String.init(_:)(v15, v14, v16 & 0xFFFFFFFFFFFFFFLL);
      v35 = sub_10015BA6C(v33, v34, &v40);

      *(v26 + 23) = v35;
      v36 = v38;
      _os_log_impl(&_mh_execute_header, v38, v25, "[%.*hhx-%{public}s] Ignoring invalid XAPPLEPUSHSERVICE response: %{sensitive}s", v26, 0x1Fu);
      swift_arrayDestroy();

      return sub_100208C4C(v15, v14, v16, 2u);
    }

    sub_100208BEC(v7, _s6LoggerVMa);
    sub_100208C4C(v15, v14, v16, 2u);
    sub_100208C4C(v15, v14, v16, 2u);

    v19 = v10;
    v18 = _s6LoggerVMa;
    return sub_100208BEC(v19, v18);
  }

  v20 = *(v2 + 72);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_1001EBD7C(0, *(v20 + 2) + 1, 1, v20);
  }

  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  if (v22 >= v21 >> 1)
  {
    v20 = sub_1001EBD7C((v21 > 1), v22 + 1, 1, v20);
  }

  *(v20 + 2) = v22 + 1;
  v23 = &v20[16 * v22];
  *(v23 + 4) = v15;
  *(v23 + 10) = v14;
  result = sub_100208C4C(v15, v14, v16, 0);
  *(v2 + 72) = v20;
  return result;
}

double sub_1002088F4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v9[0] = *(v1 + 8);
  v9[1] = v3;
  v4 = *(v1 + 56);
  v10 = *(v1 + 40);
  v11 = v4;
  v12 = v9[0];
  v13 = v3;
  v14 = v10;
  v15 = v4;
  sub_100208C78(v9, &v8);
  v5 = v13;
  *a1 = v12;
  *(a1 + 16) = v5;
  result = *&v14;
  v7 = v15;
  *(a1 + 32) = v14;
  *(a1 + 48) = v7;
  *(a1 + 64) = 4;
  return result;
}

void sub_100208964(char a1@<W3>, uint64_t a2@<X8>)
{
  if (a1 || (*(v2 + 88) & 1) != 0)
  {
    goto LABEL_7;
  }

  v4 = *(v2 + 80);
  if (v4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v4 <= 0x7FFFFFFF)
  {
    v5 = *(v2 + 104);
    if (v5)
    {
      v6 = *(v2 + 72);
      v7 = *(v2 + 96);
      LODWORD(v13) = *(v2 + 80);
      *(&v13 + 1) = v7;
      *&v14 = v5;
      *(&v14 + 1) = v6;
      sub_100208B78(&v13);
      v33 = v21;
      v34 = v22;
      v35 = v23;
      v36 = v24;
      v29 = v17;
      v30 = v18;
      v31 = v19;
      v32 = v20;
      v25 = v13;
      v26 = v14;
      v27 = v15;
      v28 = v16;
      UInt32.init(_:)(&v25);
      v45 = v33;
      v46 = v34;
      v47 = v35;
      v48 = v36;
      v41 = v29;
      v42 = v30;
      v43 = v31;
      v44 = v32;
      v37 = v25;
      v38 = v26;
      v39 = v27;
      v40 = v28;

LABEL_8:
      v8 = v46;
      *(a2 + 128) = v45;
      *(a2 + 144) = v8;
      *(a2 + 160) = v47;
      *(a2 + 176) = v48;
      v9 = v42;
      *(a2 + 64) = v41;
      *(a2 + 80) = v9;
      v10 = v44;
      *(a2 + 96) = v43;
      *(a2 + 112) = v10;
      v11 = v38;
      *a2 = v37;
      *(a2 + 16) = v11;
      v12 = v40;
      *(a2 + 32) = v39;
      *(a2 + 48) = v12;
      return;
    }

LABEL_7:
    *&v14 = 0;
    v13 = 8uLL;
    BYTE8(v14) = -64;
    sub_100197E60(&v13);
    v33 = v21;
    v34 = v22;
    v35 = v23;
    v36 = v24;
    v29 = v17;
    v30 = v18;
    v31 = v19;
    v32 = v20;
    v25 = v13;
    v26 = v14;
    v27 = v15;
    v28 = v16;
    UInt32.init(_:)(&v25);
    v45 = v33;
    v46 = v34;
    v47 = v35;
    v48 = v36;
    v41 = v29;
    v42 = v30;
    v43 = v31;
    v44 = v32;
    v37 = v25;
    v38 = v26;
    v39 = v27;
    v40 = v28;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_100208B84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100208BEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100208C4C(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 == 2)
  {
  }

  if (a4 <= 1u)
  {
  }

  return v4;
}

uint64_t sub_100208CD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100208D1C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100208D6C(uint64_t a1)
{
  v3 = sub_1001FBAA0();
  v4 = sub_1001FBFB0();
  v5 = sub_100197A14();
  v6 = static MonotonicTime.now()();
  v7 = *v1;
  v8 = *(v1 + 16);
  sub_10020924C(v3, v5, *v1);

  if (v2)
  {
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001EBFD0(0, *(v7 + 16) + 1, 1, v7);
    v7 = result;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  v12 = v8;
  if (v11 >= v10 >> 1)
  {
    result = sub_1001EBFD0((v10 > 1), v11 + 1, 1, v7);
    v12 = v8;
    v7 = result;
    v15 = v5;
    v14 = v4;
    v13 = v6;
  }

  else
  {
    v13 = v6;
    v14 = v4;
    v15 = v5;
  }

  *(v7 + 16) = v11 + 1;
  v16 = v7 + 40 * v11;
  *(v16 + 32) = a1;
  *(v16 + 40) = v14;
  *(v16 + 48) = v15;
  *(v16 + 56) = 0;
  *(v16 + 64) = v13;
  *v1 = v7;
  if ((v12 & 1) == 0)
  {
    *(v1 + 8) = 0;
    *(v1 + 16) = 1;
  }

  return result;
}

uint64_t sub_100208EDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = a1 + 32;
  while (1)
  {
    v4 = (v3 + 40 * v2);
    v5 = v4[1];
    if (*(v5 + 16))
    {
      v6 = *v4;
      sub_1004A6E94();
      sub_1004A6EB4(7uLL);
      v7 = sub_1004A6F14();
      v8 = -1 << *(v5 + 32);
      v9 = v7 & ~v8;
      if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
      {
        break;
      }
    }

LABEL_3:
    if (++v2 == v1)
    {
      return 0;
    }
  }

  v10 = ~v8;
  while (*(*(v5 + 48) + v9) != 7)
  {
    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return v6;
}

uint64_t sub_100208FE0(unint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 16);
  if (!v3)
  {
    return 2;
  }

  v4 = 0;
  v5 = a1;
  v6 = HIDWORD(a1);
  v7 = (*v2 + 36);
  result = 2;
  while (*(v7 - 4) != v5 || *v7 != v6)
  {
    v7 += 10;
    if (v3 == ++v4)
    {
      return result;
    }
  }

  sub_1001EA59C(v4, v14);
  if (v15)
  {
    if (v15 == 1)
    {
      sub_10020921C(v14);
      return 0;
    }

    else
    {
      sub_10020921C(v14);
      return 1;
    }
  }

  else
  {
    v11 = (*v2 + 56);
    v12 = *(*v2 + 16) + 1;
    while (--v12)
    {
      v13 = *v11;
      v11 += 40;
      if (!v13)
      {
        sub_10020921C(v14);
        return v14[0];
      }
    }

    sub_10020921C(v14);
    *(v2 + 8) = a2;
    *(v2 + 16) = 0;
    return v14[0];
  }
}

void sub_1002090DC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v3 = a1 + 16;
  v4 = v5;
  v6 = (v3 + 40 * v5);
  while (v4)
  {
    --v4;
    v7 = *v6;
    v6 -= 40;
    if (v7 == 2)
    {
      __chkstk_darwin(v3);
      v11 = v8;
      sub_1002091FC(&v11, v12);
      v9 = v12[0];
      v10 = v12[1];
      v4 = v13;
      goto LABEL_6;
    }
  }

  v9 = 0uLL;
  v10 = 0uLL;
LABEL_6:
  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 32) = v4;
}

void sub_10020919C(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*a2 + 16))
  {
    v4 = *a2 + 40 * v3;
    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    v7 = *(v4 + 56);
    v8 = *(v4 + 64);
    *a3 = *(v4 + 32);
    *(a3 + 8) = v5;
    *(a3 + 16) = v6;
    *(a3 + 24) = v7;
    *(a3 + 32) = v8;

    return;
  }

  __break(1u);
}

uint64_t sub_10020924C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3 > 9)
  {
    goto LABEL_7;
  }

  v4 = 0;
  v5 = a3 + 32;
  v6 = (a3 + 48);
  v7 = v3 + 1;
  while (--v7)
  {
    v8 = *v6;
    v6 += 5;
    v9 = __OFADD__(v4, v8);
    v4 += v8;
    if (v9)
    {
      __break(1u);
LABEL_7:
      sub_100209830();
      goto LABEL_81;
    }
  }

  if (v4)
  {
    v9 = __OFADD__(v4, a2);
    v10 = v4 + a2;
    if (v9)
    {
LABEL_84:
      __break(1u);
      return result;
    }

    if (v10 > 16)
    {
      sub_1002098D8();
      goto LABEL_81;
    }
  }

  if (v3)
  {
    v11 = 0;
    v12 = result + 56;
    v58 = result;
    v56 = a3 + 32;
    do
    {
      v57 = v11;
      v13 = *(v5 + 40 * v11 + 8);
      if (*(v13 + 16))
      {
        sub_1004A6E94();
        sub_1004A6EB4(7uLL);
        v14 = sub_1004A6F14();
        v15 = -1 << *(v13 + 32);
        v16 = v14 & ~v15;
        if ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          v17 = ~v15;
          result = v58;
          while (*(*(v13 + 48) + v16) != 7)
          {
            v16 = (v16 + 1) & v17;
            if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
              goto LABEL_20;
            }
          }

LABEL_80:
          sub_100209884();
LABEL_81:
          swift_allocError();
          return swift_willThrow();
        }

        result = v58;
        if (*(v58 + 16))
        {
LABEL_23:
          v18 = 0;
          v19 = 1 << *(result + 32);
          if (v19 < 64)
          {
            v20 = ~(-1 << v19);
          }

          else
          {
            v20 = -1;
          }

          v21 = v20 & *(result + 56);
          v22 = (v19 + 63) >> 6;
          v23 = v13 + 56;
LABEL_27:
          while (v21)
          {
LABEL_32:
            v25 = __clz(__rbit64(v21));
            v21 &= v21 - 1;
            v26 = *(*(result + 48) + (v25 | (v18 << 6)));
            v27 = *(v13 + 16);
            if (v26 > 2)
            {
              if (v26 == 3)
              {
                if (v27)
                {
                  sub_1004A6E94();
                  sub_1004A6EB4(4uLL);
                  v40 = sub_1004A6F14();
                  v41 = -1 << *(v13 + 32);
                  v42 = v40 & ~v41;
                  result = v58;
                  if ((*(v23 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
                  {
                    v43 = ~v41;
                    while (*(*(v13 + 48) + v42) != 4)
                    {
                      v42 = (v42 + 1) & v43;
                      if (((*(v23 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
                      {
                        goto LABEL_27;
                      }
                    }

                    goto LABEL_80;
                  }
                }
              }

              else if (v26 == 4)
              {
                if (v27)
                {
                  sub_1004A6E94();
                  sub_1004A6EB4(5uLL);
                  v32 = sub_1004A6F14();
                  v33 = -1 << *(v13 + 32);
                  v34 = v32 & ~v33;
                  result = v58;
                  if ((*(v23 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
                  {
                    v35 = ~v33;
                    while (*(*(v13 + 48) + v34) != 5)
                    {
                      v34 = (v34 + 1) & v35;
                      if (((*(v23 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
                      {
                        goto LABEL_27;
                      }
                    }

                    goto LABEL_80;
                  }
                }
              }

              else if (v27)
              {
                sub_1004A6E94();
                sub_1004A6EB4(6uLL);
                v48 = sub_1004A6F14();
                v49 = -1 << *(v13 + 32);
                v50 = v48 & ~v49;
                result = v58;
                if ((*(v23 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
                {
                  v51 = ~v49;
                  while (*(*(v13 + 48) + v50) != 6)
                  {
                    v50 = (v50 + 1) & v51;
                    if (((*(v23 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
                    {
                      goto LABEL_27;
                    }
                  }

                  goto LABEL_80;
                }
              }
            }

            else if (v26)
            {
              if (v26 == 1)
              {
                if (v27)
                {
                  sub_1004A6E94();
                  sub_1004A6EB4(2uLL);
                  v28 = sub_1004A6F14();
                  v29 = -1 << *(v13 + 32);
                  v30 = v28 & ~v29;
                  result = v58;
                  if ((*(v23 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
                  {
                    v31 = ~v29;
                    while (*(*(v13 + 48) + v30) != 2)
                    {
                      v30 = (v30 + 1) & v31;
                      if (((*(v23 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
                      {
                        goto LABEL_27;
                      }
                    }

                    goto LABEL_80;
                  }
                }
              }

              else if (v27)
              {
                sub_1004A6E94();
                sub_1004A6EB4(3uLL);
                v44 = sub_1004A6F14();
                v45 = -1 << *(v13 + 32);
                v46 = v44 & ~v45;
                result = v58;
                if ((*(v23 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
                {
                  v47 = ~v45;
                  while (*(*(v13 + 48) + v46) != 3)
                  {
                    v46 = (v46 + 1) & v47;
                    if (((*(v23 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
                    {
                      goto LABEL_27;
                    }
                  }

                  goto LABEL_80;
                }
              }
            }

            else if (v27)
            {
              sub_1004A6E94();
              sub_1004A6EB4(0);
              v36 = sub_1004A6F14();
              v37 = -1 << *(v13 + 32);
              v38 = v36 & ~v37;
              if ((*(v23 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
              {
                v39 = ~v37;
                result = v58;
                while (*(*(v13 + 48) + v38))
                {
                  v38 = (v38 + 1) & v39;
                  if (((*(v23 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
                  {
                    goto LABEL_74;
                  }
                }

                goto LABEL_80;
              }

              result = v58;
LABEL_74:
              if (*(v13 + 16))
              {
                sub_1004A6E94();
                sub_1004A6EB4(1uLL);
                v52 = sub_1004A6F14();
                v53 = -1 << *(v13 + 32);
                v54 = v52 & ~v53;
                result = v58;
                if ((*(v23 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
                {
                  v55 = ~v53;
                  while (*(*(v13 + 48) + v54) != 1)
                  {
                    v54 = (v54 + 1) & v55;
                    if (((*(v23 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
                    {
                      goto LABEL_27;
                    }
                  }

                  goto LABEL_80;
                }
              }
            }
          }

          while (1)
          {
            v24 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              break;
            }

            if (v24 >= v22)
            {
              goto LABEL_14;
            }

            v21 = *(v12 + 8 * v24);
            ++v18;
            if (v21)
            {
              v18 = v24;
              goto LABEL_32;
            }
          }

          __break(1u);
          goto LABEL_84;
        }
      }

      else
      {
LABEL_20:
        if (*(result + 16))
        {
          goto LABEL_23;
        }
      }

LABEL_14:
      v5 = v56;
      v11 = v57 + 1;
    }

    while (v57 + 1 != v3);
  }

  return result;
}

unint64_t sub_100209830()
{
  result = qword_1005D4E20;
  if (!qword_1005D4E20)
  {
    result = swift_getWitnessTable(byte_1004E5FD0, &type metadata for RunningCommands.TooManyCommandsRunning, v0, v1);
    atomic_store(result, &qword_1005D4E20);
  }

  return result;
}

unint64_t sub_100209884()
{
  result = qword_1005D4E28;
  if (!qword_1005D4E28)
  {
    result = swift_getWitnessTable(aA_12, &type metadata for RunningCommands.NeedToWaitOnRequirements, v0, v1);
    atomic_store(result, &qword_1005D4E28);
  }

  return result;
}

unint64_t sub_1002098D8()
{
  result = qword_1005D4E30;
  if (!qword_1005D4E30)
  {
    result = swift_getWitnessTable(byte_1004E5F50, &type metadata for RunningCommands.TooManyBodyDataRequestsRunning, v0, v1);
    atomic_store(result, &qword_1005D4E30);
  }

  return result;
}

uint64_t sub_10020995C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1002099A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100209A10()
{
  result = qword_1005D4E38;
  if (!qword_1005D4E38)
  {
    result = swift_getWitnessTable(byte_1004E6058, &type metadata for RunningCommands.Command.Kind, v0, v1);
    atomic_store(result, &qword_1005D4E38);
  }

  return result;
}

void sub_100209A64(unint64_t a1)
{
  v3 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v3);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 >> 60 == 3)
  {
    v6 = swift_projectBox();
    sub_100124EFC(v6, v5);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 14)
    {
      if (EnumCaseMultiPayload == 15)
      {
        *(v1 + 24) = *v5;
      }

      else if (EnumCaseMultiPayload != 16)
      {
LABEL_8:
        sub_100124F60(v5);
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 13)
        {
          v8 = *v5;

          *(v1 + 16) = v8;
          return;
        }

        goto LABEL_8;
      }

      v9 = *v5;
      if ((~*v5 & 0xF000000000000007) == 0)
      {
        goto LABEL_10;
      }

      v10 = (v9 >> 59) & 0x1E | (v9 >> 2) & 1;
      if (v10 > 3)
      {
        if (v10 == 4)
        {
          v16 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          sub_10001114C(v9);

          *(v1 + 56) = v16;
          *(v1 + 60) = 0;
        }

        else
        {
          if (v10 != 5)
          {
            goto LABEL_20;
          }

          v12 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          sub_10001114C(v9);

          *(v1 + 32) = v12;
          *(v1 + 36) = 0;
        }
      }

      else
      {
        if (v10 != 2)
        {
          if (v10 == 3)
          {
            v11 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            sub_10001114C(v9);

            *(v1 + 48) = v11;
            *(v1 + 52) = 0;
            return;
          }

LABEL_20:
          sub_10001114C(v9);
LABEL_10:

          return;
        }

        v13 = *v5;

        v15 = sub_1000CE5E4(v14);

        sub_10001114C(v13);

        *(v1 + 40) = v15;
      }
    }
  }
}

__n128 SelectedMailbox.init(name:isReadOnly:flags:messageCount:firstUnseenMessage:permanentFlags:nextUID:uidValidity:modificationSequenceValue:)@<Q0>(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10, char a11, uint64_t a12, __int16 a13)
{
  v16[84] = BYTE4(a6) & 1;
  v16[80] = BYTE4(a8) & 1;
  v16[76] = a11 & 1;
  v16[75] = HIBYTE(a13) & 1;
  *&v17 = a1;
  DWORD2(v17) = a2;
  v18.n128_u64[0] = a4;
  v18.n128_u64[1] = a5;
  LODWORD(v19) = a6;
  BYTE4(v19) = BYTE4(a6) & 1;
  *(&v19 + 1) = a7;
  *v20 = a8;
  v20[4] = BYTE4(a8) & 1;
  *&v20[8] = a10;
  v20[12] = a11 & 1;
  *&v20[16] = a12;
  *&v20[24] = a13 & 0x1FF;
  v20[26] = a3;
  v21 = a1;
  v22 = a2;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = BYTE4(a6) & 1;
  v27 = a7;
  v28 = a8;
  v29 = BYTE4(a8) & 1;
  v30 = a10;
  v31 = a11 & 1;
  v32 = a12;
  v33 = a13 & 0x1FF;
  v34 = a3;
  sub_1000CB914(&v17, v16);
  sub_1000CB970(&v21);
  v14 = *v20;
  *(a9 + 32) = v19;
  *(a9 + 48) = v14;
  *(a9 + 59) = *&v20[11];
  result = v18;
  *a9 = v17;
  *(a9 + 16) = result;
  return result;
}

uint64_t MailboxOfInterest.uidValidity.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = BYTE4(result) & 1;
  return result;
}

uint64_t ContentType.attributes.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t SelectedMailbox.nextUID.setter(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 52) = BYTE4(result) & 1;
  return result;
}

uint64_t SelectedMailbox.uidValidity.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 60) = BYTE4(result) & 1;
  return result;
}

uint64_t SelectedMailbox.modificationSequenceValue.setter(uint64_t result, __int16 a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2;
  *(v2 + 73) = HIBYTE(a2) & 1;
  return result;
}

double sub_100209EFC@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;

  return result;
}

uint64_t sub_100209F10(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 11) = *(a1 + 59);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 11) = *(a2 + 59);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return _s15IMAP2Connection15SelectedMailboxV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9) & 1;
}

BOOL static SelectedMailbox.ModificationSequence.__derived_enum_equals(_:_:)(_BOOL8 result, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  if (((a3 | result) & 0x8000000000000000) == 0)
  {
    return a3 == result;
  }

  __break(1u);
  return result;
}

uint64_t sub_100209FA0(uint64_t *a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  result = v3 & v4;
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    v6 = *a1;
    if ((*a2 | v6) < 0)
    {
      __break(1u);
    }

    else
    {
      return *a2 == v6;
    }
  }

  return result;
}

uint64_t _s15IMAP2Connection15SelectedMailboxV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t result, uint64_t *a2)
{
  if ((*(result + 8) | (*(result + 8) << 32)) != (*(a2 + 2) | (*(a2 + 2) << 32)))
  {
    goto LABEL_40;
  }

  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    goto LABEL_40;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_11:
    v8 = result;
    result = sub_100083750(*(result + 16), a2[2]);
    if ((result & 1) == 0 || *(v8 + 24) != a2[3])
    {
      goto LABEL_40;
    }

    v4 = v8;
    v6 = a2;
    v10 = *(a2 + 36);
    if (*(v8 + 36))
    {
      if (!*(a2 + 36))
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (*(a2 + 8) != *(v8 + 32))
      {
        v10 = 1;
      }

      if (v10)
      {
        goto LABEL_40;
      }
    }

    v11 = *(v8 + 40);
    v12 = a2[5];
    if (v11)
    {
      if (!v12)
      {
        goto LABEL_40;
      }

      v13 = sub_1001B067C(v11, v12);

      v4 = v8;
      v6 = a2;
      if ((v13 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (v12)
    {
      goto LABEL_40;
    }

    v14 = *(v6 + 52);
    if (*(v4 + 52))
    {
      if (!*(v6 + 52))
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (*(v6 + 12) != *(v4 + 48))
      {
        v14 = 1;
      }

      if (v14)
      {
        goto LABEL_40;
      }
    }

    v15 = *(v6 + 60);
    if (*(v4 + 60))
    {
      if (!*(v6 + 60))
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (*(v4 + 56) != *(v6 + 14))
      {
        v15 = 1;
      }

      if (v15)
      {
        goto LABEL_40;
      }
    }

    v16 = *(v6 + 73);
    if (*(v4 + 73))
    {
LABEL_37:
      if (v16)
      {
        goto LABEL_38;
      }

LABEL_40:
      v17 = 0;
      return v17 & 1;
    }

    if (*(v6 + 73))
    {
      goto LABEL_40;
    }
  }

  else
  {
    v6 = (v2 + 32);
    v7 = (v3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
      {
        goto LABEL_40;
      }

      v6 = (v6 + 1);
      ++v7;
      if (!--v4)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  v16 = *(v6 + 72);
  if (*(v4 + 72))
  {
    goto LABEL_37;
  }

  if (v6[9])
  {
    goto LABEL_40;
  }

  v18 = *(v4 + 64);
  v19 = v6[8];
  if (((v19 | v18) & 0x8000000000000000) == 0)
  {
    if (v19 != v18)
    {
      goto LABEL_40;
    }

LABEL_38:
    v17 = *(v4 + 74) ^ *(v6 + 74) ^ 1;
    return v17 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10020A1B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 75))
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

uint64_t sub_10020A200(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 74) = 0;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 75) = 1;
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

    *(result + 75) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StartTLS(unsigned __int16 *a1, unsigned int a2)
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
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

double sub_10020A330@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 5;
  return result;
}

double sub_10020A364@<D0>(char a1@<W3>, uint64_t a2@<X8>)
{
  if (a1 || *(v2 + 1) == 1)
  {
    *&v11 = 0;
    v10 = 5uLL;
    BYTE8(v11) = -64;
    sub_100197E60(&v10);
  }

  else
  {
    sub_10020A498(&v10);
  }

  v30 = v18;
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  UInt32.init(_:)(&v22);
  v42 = v30;
  v43 = v31;
  v44 = v32;
  v45 = v33;
  v38 = v26;
  v39 = v27;
  v40 = v28;
  v41 = v29;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v37 = v25;
  v4 = v31;
  *(a2 + 128) = v30;
  *(a2 + 144) = v4;
  *(a2 + 160) = v44;
  *(a2 + 176) = v45;
  v5 = v39;
  *(a2 + 64) = v38;
  *(a2 + 80) = v5;
  v6 = v41;
  *(a2 + 96) = v40;
  *(a2 + 112) = v6;
  v7 = v35;
  *a2 = v34;
  *(a2 + 16) = v7;
  result = *&v36;
  v9 = v37;
  *(a2 + 32) = v36;
  *(a2 + 48) = v9;
  return result;
}

double sub_10020A498(uint64_t a1)
{
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 176) = 7;
  return result;
}

void sub_10020A4C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100091A08(0, v1, 0);
    v3 = a1 + 56;
    v4 = sub_1004A6554();
    v5 = 0;
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(a1 + 36);
      v8 = (*(a1 + 48) + 32 * v4);
      v9 = v8[1];
      v22 = *v8;
      v10 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];

      if (v10 >= v11 >> 1)
      {
        sub_100091A08((v11 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v12 = &_swiftEmptyArrayStorage[2 * v10];
      v12[4] = v22;
      v12[5] = v9;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 56;
      v13 = *(a1 + 56 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 64 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_100020944(v4, v21, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_100020944(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

double sub_10020A6E8@<D0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v3 = type metadata accessor for UnauthenticatedState(0);
  __chkstk_darwin(v3);
  v75 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UnauthenticatedStateWithTasks(0);
  __chkstk_darwin(v5);
  v76 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004A4E34();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v74 - v12;
  v14 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v14);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10020EBA0(v2, v16, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v8 + 32))(v13, v16, v7);
      (*(v8 + 16))(v10, v13, v7);
      v21 = sub_1004A5804();
      v22 = v37;
      (*(v8 + 8))(v13, v7);

      v23 = 0;
      v24 = 0;
LABEL_10:
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v18 = v76;
      sub_10020EB3C(v16, v76);
      v19 = v75;
      sub_10020EBA0(v18 + *(v5 + 24), v75, type metadata accessor for UnauthenticatedState);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v23 = 0xD000000000000015;
          sub_10020EC08(v19, type metadata accessor for UnauthenticatedState);
          v73 = "requestingCredentials";
          goto LABEL_38;
        case 2u:
          sub_10020EC08(v18, type metadata accessor for UnauthenticatedStateWithTasks);

          sub_10020EC08(v19, type metadata accessor for UnauthenticatedState);
          v21 = 0;
          v22 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v36 = 2;
          v24 = 0xEE00676E69746163;
          v23 = 0x69746E6568747561;
          goto LABEL_23;
        case 3u:
          sub_10020EC08(v19, type metadata accessor for UnauthenticatedState);
          v24 = 0x80000001004AC190;
          sub_10020EC08(v18, type metadata accessor for UnauthenticatedStateWithTasks);

          v21 = 0;
          v22 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v23 = 0xD000000000000011;
          goto LABEL_22;
        case 4u:
          sub_10020EC08(v19, type metadata accessor for UnauthenticatedState);
          sub_10020EC08(v18, type metadata accessor for UnauthenticatedStateWithTasks);

          v21 = 0;
          v22 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v36 = 2;
          v24 = 0xEF796C6E4F444955;
          v23 = 0x676E696C62616E65;
          goto LABEL_23;
        case 5u:
          v23 = 0xD000000000000015;
          sub_10020EC08(v19, type metadata accessor for UnauthenticatedState);
          v73 = "requestingCompression";
LABEL_38:
          v24 = (v73 - 32) | 0x8000000000000000;
          sub_10020EC08(v18, type metadata accessor for UnauthenticatedStateWithTasks);

          v21 = 0;
          v22 = 0;
          goto LABEL_10;
        case 6u:
          sub_10020EC08(v19, type metadata accessor for UnauthenticatedState);
          v24 = 0x80000001004AC1B0;
          sub_10020EC08(v18, type metadata accessor for UnauthenticatedStateWithTasks);

          v21 = 0;
          v22 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v23 = 0xD000000000000013;
          goto LABEL_22;
        case 7u:
          sub_10020EC08(v19, type metadata accessor for UnauthenticatedState);
          v24 = 0x80000001004AC170;
          sub_10020EC08(v18, type metadata accessor for UnauthenticatedStateWithTasks);

          v21 = 0;
          v22 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v23 = 0xD00000000000001ELL;
          goto LABEL_22;
        case 8u:
          sub_10020EC08(v19, type metadata accessor for UnauthenticatedState);
          v24 = 0x80000001004AC150;
          sub_10020EC08(v18, type metadata accessor for UnauthenticatedStateWithTasks);

          v21 = 0;
          v22 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v23 = 0xD000000000000012;
          goto LABEL_22;
        case 9u:
          sub_10020EC08(v19, type metadata accessor for UnauthenticatedState);
          sub_10020EC08(v18, type metadata accessor for UnauthenticatedStateWithTasks);

          v21 = 0;
          v22 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v36 = 2;
          v24 = 0xE400000000000000;
          v23 = 1701736292;
          goto LABEL_23;
        case 0xAu:
          sub_10020EC08(v19, type metadata accessor for UnauthenticatedState);
          sub_10020EC08(v18, type metadata accessor for UnauthenticatedStateWithTasks);

          v21 = 0;
          v22 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v36 = 2;
          v24 = 0xE600000000000000;
          v23 = 0x64656C696166;
          goto LABEL_23;
        case 0xBu:
          sub_10020EC08(v18, type metadata accessor for UnauthenticatedStateWithTasks);

          v21 = 0;
          v22 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v36 = 2;
          v24 = 0xEA0000000000676ELL;
          v23 = 0x697463656E6E6F63;
          goto LABEL_23;
        case 0xCu:
          v20 = "gettingPreAuthCapabilities";
          goto LABEL_30;
        case 0xDu:
          sub_10020EC08(v18, type metadata accessor for UnauthenticatedStateWithTasks);

          v21 = 0;
          v22 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v36 = 2;
          v24 = 0xEB00000000534C54;
          v23 = 0x676E697472617473;
          goto LABEL_23;
        case 0xEu:
          sub_10020EC08(v18, type metadata accessor for UnauthenticatedStateWithTasks);

          v21 = 0;
          v22 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v36 = 2;
          v24 = 0xED0000534C54726FLL;
          v23 = 0x46676E6974696177;
          goto LABEL_23;
        case 0xFu:
          v24 = 0x80000001004AC1F0;
          sub_10020EC08(v18, type metadata accessor for UnauthenticatedStateWithTasks);

          v21 = 0;
          v22 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v23 = 0xD00000000000001BLL;
          goto LABEL_22;
        default:
          sub_10020EC08(v19, type metadata accessor for UnauthenticatedState);
          v20 = "checkingIfPreAuthIsAllowed";
LABEL_30:
          v24 = (v20 - 32) | 0x8000000000000000;
          sub_10020EC08(v18, type metadata accessor for UnauthenticatedStateWithTasks);

          v21 = 0;
          v22 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v23 = 0xD00000000000001ALL;
          break;
      }

      goto LABEL_22;
    }

    memcpy(v100, v16, sizeof(v100));

    sub_10020A4C0(v38);
    v40 = v39;

    v99 = v40;

    sub_10020BFFC(&v99);

    *&v101 = v99;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_100031CDC();
    v41 = sub_1004A5614();
    v43 = v42;

    v109 = *&v100[136];
    v110 = *&v100[152];
    v111 = *&v100[168];
    v105 = *&v100[72];
    v106 = *&v100[88];
    v107 = *&v100[104];
    v108 = *&v100[120];
    v101 = *&v100[8];
    v102 = *&v100[24];
    v103 = *&v100[40];
    v104 = *&v100[56];
    v44 = ServerID.logDescription.getter(*&v100[40]);
    v75 = v45;
    v97[2] = *&v100[320];
    v97[3] = *&v100[336];
    v98 = *&v100[352];
    v95 = *&v100[256];
    v96 = *&v100[272];
    v97[0] = *&v100[288];
    v97[1] = *&v100[304];
    v91 = *&v100[192];
    v92 = *&v100[208];
    v93 = *&v100[224];
    v94 = *&v100[240];
    v46 = sub_1001ACFC0(&v91);
    v47 = sub_1001AD074(&v91);
    if (v46)
    {
      if (v46 != 1)
      {
        v62 = *(v47 + 8);

        v64 = sub_100145348(v63, v62);
        v66 = v65;
        sub_1001ACFCC(v100);
        v53 = 0;
        v54 = 0;
        v50 = 0;
        v52 = 0;
LABEL_21:
        v76 = v66;
        v89[0] = v41;
        v89[1] = v43;
        v67 = v75;
        v89[2] = v44;
        v89[3] = v75;
        v89[4] = v53;
        v89[5] = v54;
        v89[6] = v50;
        v89[7] = v52;
        v89[8] = v64;
        v89[9] = v66;
        memset(v90, 0, sizeof(v90));
        v33 = v64;
        v32 = v52;
        v31 = v50;
        v30 = v54;
        v29 = v53;
        sub_10020EAD4(v89, &v78);
        sub_100025F40(v90, &qword_1005D4E98, &qword_1004E64E8);
        *&v78 = v41;
        *(&v78 + 1) = v43;
        *&v79 = v44;
        *(&v79 + 1) = v67;
        *&v80 = v29;
        *(&v80 + 1) = v30;
        *&v81 = v31;
        *(&v81 + 1) = v32;
        *&v82 = v33;
        *(&v82 + 1) = v76;
        sub_10020EB0C(&v78);
        v34 = v76;
        v28 = v67;
        v27 = v44;
        v26 = v43;
        v25 = v41;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
LABEL_22:
        v36 = 2;
LABEL_23:
        v35 = 2;
        goto LABEL_24;
      }

      v48 = *(v47 + 8);

      v50 = sub_100145348(v49, v48);
      v52 = v51;
      sub_1001ACFCC(v100);
      v53 = 0;
      v54 = 0;
    }

    else
    {
      v52 = *v47;
      if (*v47)
      {
        v56 = *(v47 + 24);
        v76 = *(v47 + 32);
        v57 = *(v47 + 16);
        v58 = *(v47 + 8);
        v86 = *&v100[320];
        v87 = *&v100[336];
        v88 = *&v100[352];
        v82 = *&v100[256];
        v83 = *&v100[272];
        v84 = *&v100[288];
        v85 = *&v100[304];
        v78 = *&v100[192];
        v79 = *&v100[208];
        v80 = *&v100[224];
        v81 = *&v100[240];
        v59 = sub_1001AD074(&v78);
        sub_1001ADA78(*v59, v59[1], v59[2], v59[3], v59[4]);
        v60 = sub_100145348(v52, v58);
        v54 = v61;
        sub_10010E7C0(v57, v56, v76);
        sub_1001ACFCC(v100);
        v53 = v60;
        v50 = 0;
        v52 = 0;
      }

      else
      {
        sub_1001ACFCC(v100);
        v53 = 0;
        v54 = 0;
        v50 = 0;
      }
    }

    v64 = 0;
    v66 = 0;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_10020EC08(v16, type metadata accessor for ConnectionState);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 2;
    v36 = 1;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 1;
    v36 = 2;
LABEL_24:
    v55 = 2;
    goto LABEL_25;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v55 = 1;
  v36 = 2;
  v35 = 2;
LABEL_25:
  *&v91 = v21;
  *(&v91 + 1) = v22;
  *&v92 = v23;
  *(&v92 + 1) = v24;
  *&v93 = v25;
  *(&v93 + 1) = v26;
  *&v94 = v27;
  *(&v94 + 1) = v28;
  *&v95 = v29;
  *(&v95 + 1) = v30;
  *&v96 = v31;
  *(&v96 + 1) = v32;
  *&v97[0] = v33;
  *(&v97[0] + 1) = v34;
  LOBYTE(v97[1]) = v36;
  BYTE1(v97[1]) = v35;
  BYTE2(v97[1]) = v55;
  *v100 = v21;
  *&v100[8] = v22;
  *&v100[16] = v23;
  *&v100[24] = v24;
  *&v100[32] = v25;
  *&v100[40] = v26;
  *&v100[48] = v27;
  *&v100[56] = v28;
  *&v100[64] = v29;
  *&v100[72] = v30;
  *&v100[80] = v31;
  *&v100[88] = v32;
  *&v100[96] = v33;
  *&v100[104] = v34;
  v100[112] = v36;
  v100[113] = v35;
  v100[114] = v55;
  sub_10020C614(&v91, &v78);
  sub_1001AD1C0(v100);
  v68 = v96;
  v69 = v77;
  *(v77 + 64) = v95;
  *(v69 + 80) = v68;
  *(v69 + 96) = v97[0];
  *(v69 + 111) = *(v97 + 15);
  v70 = v92;
  *v69 = v91;
  *(v69 + 16) = v70;
  result = *&v93;
  v72 = v94;
  *(v69 + 32) = v93;
  *(v69 + 48) = v72;
  return result;
}

uint64_t sub_10020B6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a1;
  v65 = a2;
  v63 = sub_1004A4C04();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v59 = &v56 - v5;
  __chkstk_darwin(v6);
  v60 = &v56 - v7;
  v8 = sub_10000C9C0(&qword_1005D4EC8, &qword_1004E6500);
  __chkstk_darwin(v8 - 8);
  v10 = &v56 - v9;
  v11 = sub_1004A51E4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v57 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v58 = &v56 - v15;
  v16 = sub_1004A5214();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000C9C0(&qword_1005D3CD0, &qword_1004DDA58);
  __chkstk_darwin(v20 - 8);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v56 - v24;
  v26 = *(v2 + OBJC_IVAR____TtC15IMAP2Connection10Connection_createdAt);
  result = static MonotonicTime.now()();
  v28 = __OFSUB__(v26, result);
  v29 = v26 - result;
  if (v26 < result)
  {
    if (__OFSUB__(result, v26))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v28 = __OFSUB__(0, result - v26);
    v29 = v26 - result;
    if (!v28)
    {
LABEL_7:
      v30 = v29 / 1000000000.0;
      if (COERCE__INT64(fabs(v30)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v30 > -9.22337204e18)
      {
        if (v30 < 9.22337204e18)
        {
          if (!__OFSUB__(0, v30))
          {
            v64 = -v30;
            v82 = 1;
            v31 = v66;
            if (!v66)
            {
              v36 = sub_1004A4E34();
              (*(*(v36 - 8) + 56))(v25, 1, 1, v36);
              sub_100025F40(v25, &qword_1005D3CD0, &qword_1004DDA58);
              (*(v12 + 56))(v10, 1, 1, v11);
              sub_100025F40(v10, &qword_1005D4EC8, &qword_1004E6500);
              v37 = 0;
              v38 = 0;
              v39 = 0;
              v40 = 0;
              v41 = 0;
              v42 = 0;
              v43 = 0;
              v44 = v65;
LABEL_23:
              v82 = v31 == 0;
              *&v68 = v64;
              *(&v68 + 1) = v39;
              *&v69 = v40;
              *(&v69 + 1) = v38;
              *&v70 = v37;
              *(&v70 + 1) = v41;
              *&v71 = v42;
              *(&v71 + 1) = v43;
              v72 = v31 == 0;
              v73 = v64;
              v74 = v39;
              v75 = v40;
              v76 = v38;
              v77 = v37;
              v78 = v41;
              v79 = v42;
              v80 = v43;
              v81 = v31 == 0;
              sub_10020C64C(&v68, v67);
              result = sub_10020C6D8(&v73);
              v54 = v71;
              *(v44 + 32) = v70;
              *(v44 + 48) = v54;
              *(v44 + 64) = v72;
              v55 = v69;
              *v44 = v68;
              *(v44 + 16) = v55;
              return result;
            }

            sub_1004A4E54();
            v32 = sub_1004A4E34();
            v33 = *(v32 - 8);
            (*(v33 + 56))(v25, 0, 1, v32);
            sub_10020EA64(v25, v22);
            v34 = (*(v33 + 88))(v22, v32);
            if (v34 == enum case for NWConnection.State.waiting(_:))
            {
              (*(v33 + 96))(v22, v32);
              (*(v17 + 32))(v19, v22, v16);
              v73 = 0;
              v74 = 0xE000000000000000;
              v35._countAndFlagsBits = 0x20676E6974696177;
              v35._object = 0xE900000000000028;
            }

            else
            {
              if (v34 != enum case for NWConnection.State.failed(_:))
              {
                if (v34 != enum case for NWConnection.State.setup(_:))
                {
                  v44 = v65;
                  v45 = v61;
                  if (v34 == enum case for NWConnection.State.preparing(_:))
                  {
                    v56 = 0xE900000000000067;
                    v39 = 0x6E69726170657270;
                  }

                  else if (v34 == enum case for NWConnection.State.ready(_:))
                  {
                    v56 = 0xE500000000000000;
                    v39 = 0x7964616572;
                  }

                  else if (v34 == enum case for NWConnection.State.cancelled(_:))
                  {
                    v56 = 0xE900000000000064;
                    v39 = 0x656C6C65636E6163;
                  }

                  else
                  {
                    (*(v33 + 8))(v22, v32);
                    v39 = 0;
                    v56 = 0;
                  }

LABEL_19:
                  sub_1004A4CB4();
                  if ((*(v12 + 48))(v10, 1, v11) == 1)
                  {
                    sub_100025F40(v10, &qword_1005D4EC8, &qword_1004E6500);
                    v37 = 0;
                    v38 = 0;
                  }

                  else
                  {
                    v46 = v58;
                    (*(v12 + 32))(v58, v10, v11);
                    (*(v12 + 16))(v57, v46, v11);
                    v38 = sub_1004A5804();
                    v37 = v47;
                    (*(v12 + 8))(v46, v11);
                  }

                  v48 = v59;
                  v31 = v66;
                  sub_1004A4E84();
                  v49 = v62;
                  v50 = v60;
                  v51 = v48;
                  v52 = v63;
                  (*(v62 + 32))(v60, v51, v63);
                  (*(v49 + 16))(v45, v50, v52);
                  v41 = sub_1004A5804();
                  v42 = v53;
                  (*(v49 + 8))(v50, v52);
                  v43 = sub_1004A4CA4();
                  v40 = v56;
                  goto LABEL_23;
                }

                v56 = 0xE500000000000000;
                v39 = 0x7075746573;
LABEL_18:
                v44 = v65;
                v45 = v61;
                goto LABEL_19;
              }

              (*(v33 + 96))(v22, v32);
              (*(v17 + 32))(v19, v22, v16);
              v73 = 0;
              v74 = 0xE000000000000000;
              v35._countAndFlagsBits = 0x282064656C696166;
              v35._object = 0xE800000000000000;
            }

            sub_1004A5994(v35);
            sub_1004A6934();
            v83._countAndFlagsBits = 41;
            v83._object = 0xE100000000000000;
            sub_1004A5994(v83);
            v39 = v73;
            v56 = v74;
            (*(v17 + 8))(v19, v16);
            goto LABEL_18;
          }

          goto LABEL_36;
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      __break(1u);
      goto LABEL_35;
    }

    __break(1u);
  }

  if (!v28)
  {
    goto LABEL_7;
  }

LABEL_38:
  __break(1u);
  return result;
}

Swift::Int sub_10020BFFC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001EDFFC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10020DE88(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_10020C068()
{
  v1 = 25705;
  v2 = 0x6574617473;
  if (*v0 != 2)
  {
    v2 = 0x69796C7265646E75;
  }

  if (*v0)
  {
    v1 = 0x43676E696E6E7572;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10020C0E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10020E854(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10020C10C(uint64_t a1)
{
  v2 = sub_10020C4E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10020C148(uint64_t a1)
{
  v2 = sub_10020C4E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CommandConnection.CapturedValue.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005D4E40, &qword_1004E61A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - v7;
  sub_10002587C(a1, a1[3]);
  sub_10020C4E8();
  sub_1004A6FA4();
  LOBYTE(v31) = 0;
  sub_1004A6C44();
  if (!v2)
  {
    *&v31 = *(v3 + 16);
    LOBYTE(v28[0]) = 1;
    sub_10000C9C0(&qword_1005D4E50, &qword_1004E61A8);
    sub_10020C53C();
    sub_1004A6C74();
    v9 = *(v3 + 104);
    v42[4] = *(v3 + 88);
    v42[5] = v9;
    v43[0] = *(v3 + 120);
    *(v43 + 15) = *(v3 + 135);
    v10 = *(v3 + 40);
    v42[0] = *(v3 + 24);
    v42[1] = v10;
    v11 = *(v3 + 72);
    v42[2] = *(v3 + 56);
    v42[3] = v11;
    v12 = *(v3 + 104);
    v35 = *(v3 + 88);
    v36 = v12;
    v37[0] = *(v3 + 120);
    *(v37 + 15) = *(v3 + 135);
    v13 = *(v3 + 40);
    v31 = *(v3 + 24);
    v32 = v13;
    v14 = *(v3 + 72);
    v33 = *(v3 + 56);
    v34 = v14;
    v30 = 2;
    sub_10020C614(v42, v28);
    sub_1001AD16C();
    sub_1004A6C74();
    v28[4] = v35;
    v28[5] = v36;
    *v29 = v37[0];
    *&v29[15] = *(v37 + 15);
    v28[0] = v31;
    v28[1] = v32;
    v28[2] = v33;
    v28[3] = v34;
    sub_1001AD1C0(v28);
    v15 = *(v3 + 160);
    v16 = *(v3 + 192);
    v39 = *(v3 + 176);
    v40 = v16;
    v17 = *(v3 + 160);
    v38[0] = *(v3 + 144);
    v38[1] = v17;
    v18 = *(v3 + 192);
    v25 = v39;
    v26 = v18;
    v41 = *(v3 + 208);
    v27 = *(v3 + 208);
    v23 = v38[0];
    v24 = v15;
    v22 = 3;
    sub_10020C64C(v38, v20);
    sub_10020C684();
    sub_1004A6C74();
    v20[2] = v25;
    v20[3] = v26;
    v21 = v27;
    v20[0] = v23;
    v20[1] = v24;
    sub_10020C6D8(v20);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10020C4E8()
{
  result = qword_1005D4E48;
  if (!qword_1005D4E48)
  {
    result = swift_getWitnessTable(a1_6, &_s13CapturedValueV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D4E48);
  }

  return result;
}

unint64_t sub_10020C53C()
{
  result = qword_1005D4E58;
  if (!qword_1005D4E58)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10000DEFC(&qword_1005D4E50, &qword_1004E61A8);
    v4[0] = sub_10020C5C0();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_1005D4E58);
  }

  return result;
}

unint64_t sub_10020C5C0()
{
  result = qword_1005D4E60;
  if (!qword_1005D4E60)
  {
    result = swift_getWitnessTable(aA_13, &_s13CapturedValueVN, v0, v1);
    atomic_store(result, &qword_1005D4E60);
  }

  return result;
}

unint64_t sub_10020C684()
{
  result = qword_1005D4E68;
  if (!qword_1005D4E68)
  {
    result = swift_getWitnessTable(aI_11, &_s13CapturedValueVN_1, v0, v1);
    atomic_store(result, &qword_1005D4E68);
  }

  return result;
}

__n128 CommandConnection.capturedValue.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = ConnectionID.debugDescription.getter(*(v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id));
  v9 = v8;
  swift_beginAccess();

  v11 = sub_10020C930(v10);

  v12 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_10020EBA0(v2 + v12, v6, type metadata accessor for ConnectionState);
  sub_10020A6E8(v23);
  sub_10020EC08(v6, type metadata accessor for ConnectionState);
  sub_10020B6C0(*(*(v2 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection), v20);
  *&v22[21] = v20[1];
  *&v22[37] = v20[2];
  *&v22[53] = v20[3];
  v22[69] = v21;
  *&v22[5] = v20[0];
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11;
  v13 = v23[2];
  *(a1 + 72) = v23[3];
  *(a1 + 56) = v13;
  v14 = v23[0];
  *(a1 + 40) = v23[1];
  *(a1 + 24) = v14;
  *(a1 + 135) = *&v24[15];
  *(a1 + 120) = *v24;
  v15 = v23[4];
  *(a1 + 104) = v23[5];
  *(a1 + 88) = v15;
  *(a1 + 139) = *v22;
  result = *&v22[16];
  v17 = *&v22[32];
  v18 = *&v22[48];
  *(a1 + 201) = *&v22[62];
  *(a1 + 187) = v18;
  *(a1 + 171) = v17;
  *(a1 + 155) = result;
  return result;
}

void *sub_10020C930(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v24 = _swiftEmptyArrayStorage;
    sub_1001D608C(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 64);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 8);
      v8 = *v4;
      v18[0] = *(v4 - 4);
      v18[1] = v5;
      v18[2] = v6;
      v19 = v7;
      v20 = v8;
      sub_10020D094(v18, v21);
      v9 = v21[0];
      v10 = v21[1];
      v11 = v22;
      v12 = v23;
      v24 = v2;
      v14 = v2[2];
      v13 = v2[3];
      if (v14 >= v13 >> 1)
      {
        v17 = v22;
        sub_1001D608C((v13 > 1), v14 + 1, 1);
        v11 = v17;
        v2 = v24;
      }

      v2[2] = v14 + 1;
      v15 = &v2[5 * v14];
      v15[4] = v9;
      v15[5] = v10;
      *(v15 + 3) = v11;
      v15[8] = v12;
      v4 += 5;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_10020CA4C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10020CA64(uint64_t a1, uint64_t a2)
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

uint64_t sub_10020CAA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 209))
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

uint64_t sub_10020CAF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 209) = 1;
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

    *(result + 209) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10020CB78(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10020CB9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
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

uint64_t sub_10020CBF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 sub_10020CC90(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 111) = *(a2 + 111);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10020CCBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 115))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_10020CD18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 114) = 0;
    *(result + 112) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 115) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 115) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_10020CDA4()
{
  result = qword_1005D4E70;
  if (!qword_1005D4E70)
  {
    result = swift_getWitnessTable("y\t\n", &_s13CapturedValueV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D4E70);
  }

  return result;
}

uint64_t sub_10020CDF8(void *a1)
{
  v3 = sub_10000C9C0(&qword_1005D4EA8, &qword_1004E64F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10002587C(a1, a1[3]);
  sub_10020E9BC();
  sub_1004A6FA4();
  v8[15] = 0;
  sub_1004A6C44();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1004A6BE4();
  v8[13] = 2;
  sub_1004A6C64();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10020CF98()
{
  v1 = 1684957547;
  if (*v0 != 1)
  {
    v1 = 6645601;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6775156;
  }
}

uint64_t sub_10020CFDC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10020F064(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10020D004(uint64_t a1)
{
  v2 = sub_10020E9BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10020D040(uint64_t a1)
{
  v2 = sub_10020E9BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10020D094@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = qword_1004E69A8[v3];
  v5 = qword_1004E69C0[v3];
  v6 = *(a1 + 4);
  sub_1004A6934();
  result = static MonotonicTime.now()();
  v8 = __OFSUB__(v6, result);
  v9 = v6 - result;
  if (v6 < result)
  {
    if (__OFSUB__(result, v6))
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v8 = __OFSUB__(0, result - v6);
    v9 = v6 - result;
    if (!v8)
    {
LABEL_7:
      v10 = v9 / 1000000000.0;
      if (COERCE__INT64(fabs(v10)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v10 > -9.22337204e18)
      {
        if (v10 < 9.22337204e18)
        {
          if (!__OFSUB__(0, v10))
          {
            *a2 = 0;
            a2[1] = 0xE000000000000000;
            a2[2] = v4;
            a2[3] = v5;
            a2[4] = -v10;
            return result;
          }

          goto LABEL_15;
        }

LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      __break(1u);
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10020D1D8(void *a1)
{
  v3 = sub_10000C9C0(&qword_1005D4F18, &qword_1004E6898);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10002587C(a1, a1[3]);
  sub_10020F568();
  sub_1004A6FA4();
  v8[15] = 0;
  sub_1004A6C44();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1004A6BE4();
  v8[13] = 2;
  sub_1004A6BE4();
  v8[12] = 3;
  sub_1004A6BE4();
  v8[11] = 4;
  sub_1004A6BE4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10020D3B8(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005D4E88, &qword_1004E64E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_10002587C(a1, a1[3]);
  sub_10020DD70();
  sub_1004A6FA4();
  LOBYTE(v19) = 0;
  sub_1004A6BE4();
  if (!v2)
  {
    LOBYTE(v19) = 1;
    sub_1004A6BE4();
    v10 = v3[4];
    v11 = v3[2];
    v25 = v3[3];
    v26 = v10;
    v12 = v3[4];
    v13 = v3[6];
    v27 = v3[5];
    v28 = v13;
    v14 = v3[2];
    v21 = v12;
    v22 = v27;
    v23 = v3[6];
    v24 = v14;
    v19 = v11;
    v20 = v25;
    v18 = 2;
    sub_10020DDC4(&v24, v17);
    sub_10020DE34();
    sub_1004A6C14();
    v17[2] = v21;
    v17[3] = v22;
    v17[4] = v23;
    v17[0] = v19;
    v17[1] = v20;
    sub_100025F40(v17, &qword_1005D4E98, &qword_1004E64E8);
    v16 = 3;
    sub_1004A6BF4();
    v16 = 4;
    sub_1004A6BF4();
    v16 = 5;
    sub_1004A6BF4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10020D690()
{
  v1 = *v0;
  v2 = 0x696C696261706163;
  v3 = 0x614D64656C696166;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x64657463656C6573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4449726576726573;
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

uint64_t sub_10020D750@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10020F17C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10020D778(uint64_t a1)
{
  v2 = sub_10020F568();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10020D7B4(uint64_t a1)
{
  v2 = sub_10020F568();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10020D808()
{
  v1 = *v0;
  v2 = 0x697463656E6E6F63;
  v3 = 0xD000000000000014;
  v4 = 0x64656C696166;
  if (v1 != 4)
  {
    v4 = 0x656C6C65636E6163;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E65687475616E75;
  if (v1 != 1)
  {
    v5 = 0x69746E6568747561;
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

uint64_t sub_10020D8E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10020F348(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10020D90C(uint64_t a1)
{
  v2 = sub_10020DD70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10020D948(uint64_t a1)
{
  v2 = sub_10020DD70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10020D99C(void *a1)
{
  v3 = sub_10000C9C0(&qword_1005D4EB8, &qword_1004E64F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10002587C(a1, a1[3]);
  sub_10020EA10();
  sub_1004A6FA4();
  v8[15] = 0;
  sub_1004A6C64();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1004A6BE4();
  v8[13] = 2;
  sub_1004A6BE4();
  v8[12] = 3;
  sub_1004A6BE4();
  v8[11] = 4;
  sub_1004A6C34();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10020DB80()
{
  v1 = *v0;
  v2 = 6645601;
  v3 = 1752457584;
  v4 = 0x746E696F70646E65;
  if (v1 != 3)
  {
    v4 = 30574;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6574617473;
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

uint64_t sub_10020DBFC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10020F5BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10020DC30(uint64_t a1)
{
  v2 = sub_10020EA10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10020DC6C(uint64_t a1)
{
  v2 = sub_10020EA10();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10020DCC4()
{
  result = qword_1005D4E78;
  if (!qword_1005D4E78)
  {
    result = swift_getWitnessTable("I\n\n", &_s13CapturedValueV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D4E78);
  }

  return result;
}

unint64_t sub_10020DD1C()
{
  result = qword_1005D4E80;
  if (!qword_1005D4E80)
  {
    result = swift_getWitnessTable(byte_1004E6388, &_s13CapturedValueV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D4E80);
  }

  return result;
}

unint64_t sub_10020DD70()
{
  result = qword_1005D4E90;
  if (!qword_1005D4E90)
  {
    result = swift_getWitnessTable(aQ_9, &_s13CapturedValueV10CodingKeysON_2, v0, v1);
    atomic_store(result, &qword_1005D4E90);
  }

  return result;
}

uint64_t sub_10020DDC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D4E98, &qword_1004E64E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10020DE34()
{
  result = qword_1005D4EA0;
  if (!qword_1005D4EA0)
  {
    result = swift_getWitnessTable(aA_14, &_s13CapturedValueV13AuthenticatedVN, v0, v1);
    atomic_store(result, &qword_1005D4EA0);
  }

  return result;
}

Swift::Int sub_10020DE88(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1004A6CC4(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_1004A5C64();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10020E050(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_10020DF80(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10020DF80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1004A6D34(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10020E050(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_100141810(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_10020E62C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1004A6D34();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1004A6D34();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100085288(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_100085288((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_10020E62C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100141810(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_100141784(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1004A6D34(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_10020E62C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1004A6D34() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1004A6D34() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_10020E854(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x43676E696E6E7572 && a2 == 0xEF73646E616D6D6FLL || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69796C7265646E75 && a2 == 0xEA0000000000676ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_10020E9BC()
{
  result = qword_1005D4EB0;
  if (!qword_1005D4EB0)
  {
    result = swift_getWitnessTable(byte_1004E67D0, &_s13CapturedValueV10CodingKeysON_1, v0, v1);
    atomic_store(result, &qword_1005D4EB0);
  }

  return result;
}

unint64_t sub_10020EA10()
{
  result = qword_1005D4EC0;
  if (!qword_1005D4EC0)
  {
    result = swift_getWitnessTable(byte_1004E6780, &_s13CapturedValueV10CodingKeysON_0, v0, v1);
    atomic_store(result, &qword_1005D4EC0);
  }

  return result;
}

uint64_t sub_10020EA64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D3CD0, &qword_1004DDA58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10020EB3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnauthenticatedStateWithTasks(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10020EBA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10020EC08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10020ECA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_10020ECE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10020ED50()
{
  result = qword_1005D4ED0;
  if (!qword_1005D4ED0)
  {
    result = swift_getWitnessTable(byte_1004E65E8, &_s13CapturedValueV10CodingKeysON_2, v0, v1);
    atomic_store(result, &qword_1005D4ED0);
  }

  return result;
}

unint64_t sub_10020EDA8()
{
  result = qword_1005D4ED8;
  if (!qword_1005D4ED8)
  {
    result = swift_getWitnessTable(byte_1004E66A0, &_s13CapturedValueV10CodingKeysON_1, v0, v1);
    atomic_store(result, &qword_1005D4ED8);
  }

  return result;
}

unint64_t sub_10020EE00()
{
  result = qword_1005D4EE0;
  if (!qword_1005D4EE0)
  {
    result = swift_getWitnessTable(byte_1004E6758, &_s13CapturedValueV10CodingKeysON_0, v0, v1);
    atomic_store(result, &qword_1005D4EE0);
  }

  return result;
}

unint64_t sub_10020EE58()
{
  result = qword_1005D4EE8;
  if (!qword_1005D4EE8)
  {
    result = swift_getWitnessTable(byte_1004E66C8, &_s13CapturedValueV10CodingKeysON_0, v0, v1);
    atomic_store(result, &qword_1005D4EE8);
  }

  return result;
}

unint64_t sub_10020EEB0()
{
  result = qword_1005D4EF0;
  if (!qword_1005D4EF0)
  {
    result = swift_getWitnessTable(byte_1004E66F0, &_s13CapturedValueV10CodingKeysON_0, v0, v1);
    atomic_store(result, &qword_1005D4EF0);
  }

  return result;
}

unint64_t sub_10020EF08()
{
  result = qword_1005D4EF8;
  if (!qword_1005D4EF8)
  {
    result = swift_getWitnessTable(byte_1004E6610, &_s13CapturedValueV10CodingKeysON_1, v0, v1);
    atomic_store(result, &qword_1005D4EF8);
  }

  return result;
}

unint64_t sub_10020EF60()
{
  result = qword_1005D4F00;
  if (!qword_1005D4F00)
  {
    result = swift_getWitnessTable(aI_13, &_s13CapturedValueV10CodingKeysON_1, v0, v1);
    atomic_store(result, &qword_1005D4F00);
  }

  return result;
}

unint64_t sub_10020EFB8()
{
  result = qword_1005D4F08;
  if (!qword_1005D4F08)
  {
    result = swift_getWitnessTable("Q\b\n", &_s13CapturedValueV10CodingKeysON_2, v0, v1);
    atomic_store(result, &qword_1005D4F08);
  }

  return result;
}

unint64_t sub_10020F010()
{
  result = qword_1005D4F10;
  if (!qword_1005D4F10)
  {
    result = swift_getWitnessTable("!\r\n", &_s13CapturedValueV10CodingKeysON_2, v0, v1);
    atomic_store(result, &qword_1005D4F10);
  }

  return result;
}

uint64_t sub_10020F064(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6775156 && a2 == 0xE300000000000000;
  if (v3 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6645601 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1004A6D34();

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

uint64_t sub_10020F17C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696C696261706163 && a2 == 0xEC00000073656974;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449726576726573 && a2 == 0xE800000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614D64656C696166 && a2 == 0xED0000786F626C69 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004AC270 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xEF786F626C69614DLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10020F348(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697463656E6E6F63 && a2 == 0xEA0000000000676ELL;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65687475616E75 && a2 == 0xEF64657461636974 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746E6568747561 && a2 == 0xED00006465746163 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004AB580 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064)
  {

    return 5;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_10020F568()
{
  result = qword_1005D4F20;
  if (!qword_1005D4F20)
  {
    result = swift_getWitnessTable(aA_15, &_s13CapturedValueV13AuthenticatedV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D4F20);
  }

  return result;
}

uint64_t sub_10020F5BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6645601 && a2 == 0xE300000000000000;
  if (v3 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1752457584 && a2 == 0xE400000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xE800000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 30574 && a2 == 0xE200000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_10020F774()
{
  result = qword_1005D4F28;
  if (!qword_1005D4F28)
  {
    result = swift_getWitnessTable(a9_7, &_s13CapturedValueV13AuthenticatedV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D4F28);
  }

  return result;
}

unint64_t sub_10020F7CC()
{
  result = qword_1005D4F30;
  if (!qword_1005D4F30)
  {
    result = swift_getWitnessTable(asc_1004E68A0, &_s13CapturedValueV13AuthenticatedV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D4F30);
  }

  return result;
}

unint64_t sub_10020F824()
{
  result = qword_1005D4F38;
  if (!qword_1005D4F38)
  {
    result = swift_getWitnessTable(byte_1004E68C8, &_s13CapturedValueV13AuthenticatedV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D4F38);
  }

  return result;
}

uint64_t sub_10020F894()
{
  v1 = *v0;
  v2 = *(v0 + 64);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      return 0x454C42414E45;
    }

    else if (v2 == 4)
    {
      return 0xD000000000000011;
    }

    else
    {
      v5 = *(v0 + 48);
      v4 = *(v0 + 56);
      v6 = *(v0 + 32);
      v7 = *(v0 + 40);
      v9 = *(v0 + 16);
      v8 = *(v0 + 24);
      if (v1._object | v1._countAndFlagsBits | v4 | v5 | v7 | v6 | v8 | v9)
      {
        if (v4 | v1._object | v5 | v7 | v6 | v8 | v9)
        {
          v10 = 0;
        }

        else
        {
          v10 = v1._countAndFlagsBits == 1;
        }

        if (v10)
        {
          return 0x534C545452415453;
        }

        else
        {
          return 0x53534552504D4F43;
        }
      }

      else
      {
        return 0x494C494241504143;
      }
    }
  }

  else if (*(v0 + 64))
  {
    if (v2 == 1)
    {
      sub_1004A5994(v1);
      return 0x2048545541;
    }

    else
    {
      return 17481;
    }
  }

  else
  {
    return 0x4E49474F4CLL;
  }
}

uint64_t sub_10020F9E8(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v10 = a2[4].i8[0];
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_10020FCF0(v7, v9) & 1;
}

unint64_t sub_10020FA48()
{
  result = qword_1005D4F40;
  if (!qword_1005D4F40)
  {
    result = swift_getWitnessTable(aI_14, &type metadata for TaskID, v0, v1);
    atomic_store(result, &qword_1005D4F40);
  }

  return result;
}

uint64_t sub_10020FA9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!v5)
        {
          return 0;
        }

        v6 = *(v3 - 1) == *(v4 - 1) && *v3 == v5;
        if (!v6 && (sub_1004A6D34() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v5)
      {
        return 0;
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10020FB40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1004A6D34() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

BOOL sub_10020FBD0(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = HIDWORD(a2);
  if (HIDWORD(a2) - a2 != HIDWORD(a5) - a5)
  {
    return 0;
  }

  v7 = HIDWORD(a3);
  v8 = HIDWORD(a6);
  if (a3 == a6 && WORD2(a3) == WORD2(a6) && BYTE6(a3) == BYTE6(a6) && a1 == a4)
  {
    return 1;
  }

  v10 = a2;
  v12 = BYTE6(a3);
  v14 = a5;
  v15 = BYTE6(a6);
  swift_beginAccess();
  v16 = *(a1 + 24);
  swift_beginAccess();
  return memcmp((v16 + (v12 | (v7 << 8)) + v10), (*(a4 + 24) + (v15 | (v8 << 8)) + v14), v6 - v10) == 0;
}

uint64_t sub_10020FCF0(uint64_t a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  if (v8 > 2)
  {
    if (v8 != 3)
    {
      v17 = *(a1 + 40);
      v16 = *(a1 + 48);
      v18 = *(a1 + 56);
      if (v8 == 4)
      {
        v32[0] = v3;
        v32[1] = v4;
        v32[2] = v5;
        v32[3] = v6;
        v32[4] = v7;
        v32[5] = v17;
        v32[6] = v16;
        v32[7] = v18;
        if (a2[4].i8[0] == 4)
        {
          v19 = a2[1];
          v31[0] = *a2;
          v31[1] = v19;
          v20 = a2[3];
          v31[2] = a2[2];
          v31[3] = v20;
          v21 = static PushRegistrationInfo.__derived_struct_equals(_:_:)(v32, v31);
          return v21 & 1;
        }

        goto LABEL_47;
      }

      v27 = v5 | v4;
      v28 = v7 | v17 | v16;
      if (!(v27 | v3 | v6 | v28 | v18))
      {
        if (a2[4].i8[0] == 5)
        {
          v29 = vorrq_s8(vorrq_s8(*a2, a2[2]), vorrq_s8(a2[1], a2[3]));
          if (!*&vorr_s8(*v29.i8, *&vextq_s8(v29, v29, 8uLL)))
          {
            goto LABEL_45;
          }
        }

        goto LABEL_47;
      }

      if (v3 != 1 || v27 | v6 | v28 | v18)
      {
        if (a2[4].i8[0] != 5 || a2->i64[0] != 2)
        {
          goto LABEL_47;
        }
      }

      else if (a2[4].i8[0] != 5 || a2->i64[0] != 1)
      {
        goto LABEL_47;
      }

      v30 = vorrq_s8(a2[2], a2[3]);
      if (*&vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL)) | a2[1].i64[1] | a2[1].i64[0] | a2->i64[1])
      {
LABEL_47:
        v21 = 0;
        return v21 & 1;
      }

LABEL_45:
      v21 = 1;
      return v21 & 1;
    }

    if (a2[4].i8[0] != 3)
    {
      goto LABEL_47;
    }

    v25 = a2->i64[0];

    return sub_1001CE84C(v3, v25);
  }

  else
  {
    if (*(a1 + 64))
    {
      if (v8 != 1)
      {
        if (a2[4].i8[0] == 2)
        {
          v26 = a2[1].i64[0];
          if (sub_10020FB40(v4, a2->i64[1]) & 1) != 0 && (sub_10020FA9C(v5, v26))
          {
            goto LABEL_45;
          }
        }

        goto LABEL_47;
      }

      if (a2[4].i8[0] != 1)
      {
        goto LABEL_47;
      }

      v9 = a2[1].i64[0];
      v10 = a2[1].i64[1];
      v11 = a2[2].u8[6];
      v12 = a2[2].u16[2];
      v13 = a2[2].u32[0];
      if ((v3 != a2->i64[0] || v4 != a2->i64[1]) && (sub_1004A6D34() & 1) == 0)
      {
        goto LABEL_47;
      }

      if (v5)
      {
        if (v9)
        {

          v15 = sub_10020FBD0(v14, v6, v7 & 0xFFFFFFFFFFFFFFLL, v9, v10, (v13 | ((v12 | (v11 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL);

          if (v15)
          {
            goto LABEL_45;
          }
        }

        goto LABEL_47;
      }

      if (v9)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    if (a2[4].i8[0])
    {
      goto LABEL_47;
    }

    v22 = a2[1].i64[0];
    v23 = a2[1].i64[1];
    if ((v3 != a2->i64[0] || v4 != a2->i64[1]) && (sub_1004A6D34() & 1) == 0)
    {
      goto LABEL_47;
    }

    if (v5 == v22 && v6 == v23)
    {
      goto LABEL_45;
    }

    return sub_1004A6D34();
  }
}

uint64_t sub_100210008(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 65))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 64);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100210050(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002100A8(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 64) = a2;
  return result;
}

unint64_t sub_1002100F8()
{
  result = qword_1005D4F48;
  if (!qword_1005D4F48)
  {
    result = swift_getWitnessTable(byte_1004E6BA4, &type metadata for TaskID.ID, v0, v1);
    atomic_store(result, &qword_1005D4F48);
  }

  return result;
}

void *Timer.__allocating_init(queue:)(uint64_t a1)
{
  result = swift_allocObject();
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = a1;
  return result;
}

void *Timer.init(queue:)(uint64_t a1)
{
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = 0;
  v1[5] = a1;
  return v1;
}

uint64_t Timer.deinit()
{
  if (*(v0 + 16))
  {

    sub_1004A53D4();
  }

  if (*(v0 + 24))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1004A6104();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return v0;
}

uint64_t Timer.__deallocating_deinit()
{
  if (*(v0 + 16))
  {

    sub_1004A53D4();
  }

  if (*(v0 + 24))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1004A6104();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t Timer.cancelPreviousAndAsync(after:closure:)(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a3;
  v4 = sub_1004A5234();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1004A53B4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v17 - v13;
  sub_1004A5394();
  sub_1004A53A4();
  v15 = *(v9 + 8);
  v15(v11, v8);
  *v7 = 100;
  (*(v5 + 104))(v7, enum case for DispatchTimeInterval.milliseconds(_:), v4);
  Timer.cancelPreviousAndAsync(at:leeway:closure:)(v14, v7, a2, v17);
  (*(v5 + 8))(v7, v4);
  return (v15)(v14, v8);
}

uint64_t Timer.cancelPreviousAndAsync(at:leeway:closure:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v32 = a3;
  v33 = a4;
  v39 = a1;
  v40 = a2;
  v6 = sub_1004A5234();
  v38 = *(v6 - 8);
  __chkstk_darwin(v6);
  v37 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004A60A4();
  v35 = *(v8 - 8);
  v36 = v8;
  __chkstk_darwin(v8);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004A5244();
  __chkstk_darwin(v10);
  v11 = sub_1004A5274();
  __chkstk_darwin(v11 - 8);
  v12 = sub_1004A53F4();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v5[5];
  *v16 = v17;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12, v14);
  v18 = v17;
  v19 = sub_1004A5404();
  result = (*(v13 + 8))(v16, v12);
  if (v19)
  {
    Timer.cancel()();
    v21 = v5[4];
    sub_1004A5264();
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = v21;
    v24 = v33;
    v23[4] = v32;
    v23[5] = v24;
    aBlock[4] = sub_100210D58;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10019C778;
    aBlock[3] = &unk_1005A8D00;
    _Block_copy(aBlock);
    v41 = _swiftEmptyArrayStorage;
    sub_100210DC8(&qword_1005D4F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

    v32 = v18;
    sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
    v33 = v6;
    sub_1000CBB00(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
    sub_1004A6544();
    sub_1004A53E4();
    swift_allocObject();
    v25 = sub_1004A53C4();

    sub_100210D7C();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100210DC8(&unk_1005D4F70, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
    sub_10000C9C0(&qword_1005D5510, &qword_1004E8DB0);
    sub_1000CBB00(&qword_1005D4F80, &qword_1005D5510, &qword_1004E8DB0);
    v26 = v34;
    v27 = v36;
    sub_1004A6544();
    v28 = sub_1004A60B4();
    (*(v35 + 8))(v26, v27);
    swift_getObjectType();
    sub_1004A60D4();
    v30 = v37;
    v29 = v38;
    v31 = v33;
    (*(v38 + 104))(v37, enum case for DispatchTimeInterval.never(_:), v33);
    sub_1004A6254();
    (*(v29 + 8))(v30, v31);
    sub_1004A6114();
    v5[2] = v25;

    v5[3] = v28;
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100210A94(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 32);

    if (v6 == a2)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        *(Strong + 16) = 0;
      }

      return a3(Strong);
    }
  }

  return result;
}

Swift::Void __swiftcall Timer.cancel()()
{
  v1 = v0;
  v2 = sub_1004A53F4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v1[5];
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1004A5404();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (v1[2])
    {

      sub_1004A53D4();

      v9 = 1;
    }

    else
    {
      v9 = v1[3] != 0;
    }

    v1[2] = 0;

    if (v1[3])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1004A6104();
      swift_unknownObjectRelease();
    }

    v1[3] = 0;
    swift_unknownObjectRelease();
    if (v9)
    {
      ++v1[4];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100210CE0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100210D18()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100210D64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100210D7C()
{
  result = qword_1005D5500;
  if (!qword_1005D5500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005D5500);
  }

  return result;
}

uint64_t sub_100210DC8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100210E34()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v2);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_100210F9C(v1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_100211000(v4);
      return 7;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100211000(v4);
      return 1;
    }

    else
    {
      memcpy(v14, v4, 0x162uLL);
      v7 = *(v4 + 21);
      v15[8] = *(v4 + 20);
      v15[9] = v7;
      v16 = *(v4 + 176);
      v8 = *(v4 + 17);
      v15[4] = *(v4 + 16);
      v15[5] = v8;
      v9 = *(v4 + 19);
      v15[6] = *(v4 + 18);
      v15[7] = v9;
      v10 = *(v4 + 13);
      v15[0] = *(v4 + 12);
      v15[1] = v10;
      v11 = *(v4 + 15);
      v15[2] = *(v4 + 14);
      v15[3] = v11;
      v12 = sub_1001ACFC0(v15);
      sub_1001AD074(v15);
      sub_1001ACFCC(v14);
      return (v12 + 2);
    }
  }

  else
  {
    sub_100211000(v4);
    return 0;
  }
}

uint64_t sub_100210F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100211000(uint64_t a1)
{
  v2 = type metadata accessor for ConnectionState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10021105C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  sub_1002110F8(a1, a2, sub_100214414, v8);
}

uint64_t sub_1002110F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1004A5244();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1004A5274();
  v14 = *(v21 - 8);
  __chkstk_darwin(v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005D2D60 != -1)
  {
    swift_once();
  }

  v20[1] = qword_1005D30F0;
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a4;
  aBlock[4] = sub_10021446C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005A8DF0;
  v18 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_1004A5254();
  v22 = _swiftEmptyArrayStorage;
  sub_100214AF8(&qword_1005D4F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_1000CBB00(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
  sub_1004A6544();
  sub_1004A6084();
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v21);
}

uint64_t sub_100211418(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6(a2, a3, sub_10021438C, v8);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_1002114E4(int a1, sec_protocol_metadata_t metadata, NSObject *a3, uint64_t a4, uint64_t a5)
{
  negotiated_tls_protocol_version = sec_protocol_metadata_get_negotiated_tls_protocol_version(metadata);
  negotiated_tls_ciphersuite = sec_protocol_metadata_get_negotiated_tls_ciphersuite(metadata);
  if (sec_protocol_metadata_get_server_name(metadata))
  {
    v11 = sub_1004A59B4();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = sec_trust_copy_ref(a3);
  sub_1002115AC(negotiated_tls_protocol_version | (negotiated_tls_ciphersuite << 16), v11, v13, v14, a4, a5);
}

uint64_t sub_1002115AC(unsigned int a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v34 = a5;
  v37 = a2;
  v11 = _s6LoggerVMa(0);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  __chkstk_darwin(v11 - 8);
  v36 = &v30[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1004A53F4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v30[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1005D2D60 != -1)
  {
    swift_once();
  }

  v17 = qword_1005D30F0;
  *v16 = qword_1005D30F0;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v18 = v17;
  LOBYTE(v17) = sub_1004A5404();
  result = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v31 = HIWORD(a1);
    v20 = swift_allocObject();
    v20[2] = v6;
    v20[3] = a4;
    v20[4] = v34;
    v20[5] = a6;
    v33 = qword_1005DDFB8;
    v21 = *v6;
    v32 = a6;
    v22 = *(v21 + 136);
    v34 = qword_1005DDFA8;
    v23 = *(v6 + qword_1005DDFC0);
    v24 = v36;
    sub_1002143A4(v6 + qword_1005DDFB8, v36, _s6LoggerVMa);
    v25 = a4;
    v26 = (*(v35 + 80) + 64) & ~*(v35 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1002144C4;
    *(v27 + 24) = v20;
    *(v27 + 32) = v23;
    *(v27 + 40) = a1;
    *(v27 + 42) = v31;
    *(v27 + 48) = v37;
    *(v27 + 56) = a3;
    sub_1001993A4(v24, v27 + v26);
    v28 = *(v6 + v22);

    v29 = v25;

    sub_10021280C(v23, v6 + v34, v29, v6 + v33, sub_1002145D0, v27, v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002118F4(void *a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v9 = sub_1004A53F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1005D2D60 != -1)
  {
    swift_once();
  }

  v13 = qword_1005D30F0;
  *v12 = qword_1005D30F0;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = sub_1004A5404();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = sub_100199788(*(v4 + qword_1005DDFB0), *(v4 + qword_1005DDFB0 + 8), v4 + qword_1005DDFB8);
        if (v16)
        {
          sub_100211B9C(a1, v16, v23, a3, a4);
          return swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      if (*(v4 + qword_1005DDFC0) == 2)
      {
        v17 = sub_100199788(*(v4 + qword_1005DDFB0), *(v4 + qword_1005DDFB0 + 8), v4 + qword_1005DDFB8);
        if (v17)
        {
          v18 = *(v17 + 16);
          v19 = objc_allocWithZone(NSNumber);
          v20 = v18;
          v21 = [v19 initWithBool:1];
          v22 = sub_1004A5734();
          [v20 setAccountProperty:v21 forKey:v22];
          swift_unknownObjectRelease();
        }
      }

      v16 = 1;
    }

    return a3(v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100211B9C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v99 = a5;
  v98 = a4;
  v95 = a3;
  v96 = a1;
  v97 = _s6LoggerVMa(0);
  v93 = *(v97 - 8);
  v6 = *(v93 + 64);
  __chkstk_darwin(v97);
  v94 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v90 = &v90 - v8;
  __chkstk_darwin(v9);
  v91 = (&v90 - v10);
  __chkstk_darwin(v11);
  v13 = &v90 - v12;
  __chkstk_darwin(v14);
  v92 = &v90 - v15;
  __chkstk_darwin(v16);
  v18 = &v90 - v17;
  __chkstk_darwin(v19);
  v21 = &v90 - v20;
  __chkstk_darwin(v22);
  v101 = &v90 - v23;
  v24 = sub_1004A53F4();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = (&v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1005D2D60 != -1)
  {
    swift_once();
  }

  v28 = qword_1005D30F0;
  *v27 = qword_1005D30F0;
  (*(v25 + 104))(v27, enum case for DispatchPredicate.onQueue(_:), v24);
  v29 = v28;
  LOBYTE(v28) = sub_1004A5404();
  (*(v25 + 8))(v27, v24);
  if (v28)
  {
    v30 = v101;
    sub_1002143A4(v100 + qword_1005DDFB8, v101, _s6LoggerVMa);
    v31 = a2;
    v32 = *(a2 + 16);
    v33 = sub_1001994A0();

    if (v33)
    {
      sub_1002143A4(v30, v21, _s6LoggerVMa);
      sub_1002143A4(v30, v18, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v34 = sub_1004A4A54();
      v35 = sub_1004A6014();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v102[0] = v100;
        *v36 = 68158210;
        *(v36 + 4) = 2;
        *(v36 + 8) = 256;
        v37 = v97;
        v38 = v18[*(v97 + 20)];
        sub_100214A98(v18, _s6LoggerVMa);
        *(v36 + 10) = v38;
        *(v36 + 11) = 2082;
        v39 = *&v21[*(v37 + 20) + 4];
        sub_100214A98(v21, _s6LoggerVMa);
        v40 = ConnectionID.debugDescription.getter(v39);
        v42 = sub_10015BA6C(v40, v41, v102);

        *(v36 + 13) = v42;
        _os_log_impl(&_mh_execute_header, v34, v35, "[%.*hhx-%{public}s] Another certificate has already been trusted. Failing on certificate change.", v36, 0x15u);
        sub_1000197E0(v100);

LABEL_13:

LABEL_19:
        v98(0);
        sub_100214A98(v30, _s6LoggerVMa);
        return;
      }

      sub_100214A98(v18, _s6LoggerVMa);

      v57 = v21;
      goto LABEL_18;
    }

    v43 = *(a2 + 16);
    v44 = sub_100199598();

    if ((v44 & 1) == 0)
    {
      v58 = v91;
      sub_1002143A4(v30, v91, _s6LoggerVMa);
      v59 = v90;
      sub_1002143A4(v30, v90, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v34 = sub_1004A4A54();
      v60 = sub_1004A6014();
      if (os_log_type_enabled(v34, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v102[0] = v62;
        *v61 = 68158210;
        *(v61 + 4) = 2;
        *(v61 + 8) = 256;
        v63 = v97;
        v64 = *(v59 + *(v97 + 20));
        sub_100214A98(v59, _s6LoggerVMa);
        *(v61 + 10) = v64;
        *(v61 + 11) = 2082;
        v65 = *(v58 + *(v63 + 20) + 4);
        sub_100214A98(v58, _s6LoggerVMa);
        v66 = ConnectionID.debugDescription.getter(v65);
        v68 = sub_10015BA6C(v66, v67, v102);

        *(v61 + 13) = v68;
        _os_log_impl(&_mh_execute_header, v34, v60, "[%.*hhx-%{public}s] User (previously) denied untrusted certificate(s).", v61, 0x15u);
        sub_1000197E0(v62);

        goto LABEL_13;
      }

      sub_100214A98(v59, _s6LoggerVMa);

      v57 = v58;
LABEL_18:
      sub_100214A98(v57, _s6LoggerVMa);
      goto LABEL_19;
    }

    v45 = v92;
    sub_1002143A4(v30, v92, _s6LoggerVMa);
    sub_1002143A4(v30, v13, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    swift_unknownObjectRetain_n();
    v46 = sub_1004A4A54();
    v47 = sub_1004A6034();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = v45;
      v49 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v102[0] = v91;
      *v49 = 68158466;
      *(v49 + 4) = 2;
      *(v49 + 8) = 256;
      v50 = v97;
      v51 = v13[*(v97 + 20)];
      LODWORD(v90) = v47;
      sub_100214A98(v13, _s6LoggerVMa);
      *(v49 + 10) = v51;
      *(v49 + 11) = 2082;
      v52 = *(v48 + *(v50 + 20) + 4);
      sub_100214A98(v48, _s6LoggerVMa);
      v53 = ConnectionID.debugDescription.getter(v52);
      v55 = sub_10015BA6C(v53, v54, v102);

      *(v49 + 13) = v55;
      *(v49 + 21) = 1024;
      v56 = *(v31 + 16);
      LOBYTE(v55) = sub_100199598();
      swift_unknownObjectRelease();

      *(v49 + 23) = v55 & 1;
      swift_unknownObjectRelease();
      _os_log_impl(&_mh_execute_header, v46, v90, "[%.*hhx-%{public}s] [Prompt] Prompting user about untrusted certificate(s) (allowTrust: %{BOOL}d).", v49, 0x1Bu);
      sub_1000197E0(v91);
    }

    else
    {
      swift_unknownObjectRelease();
      sub_100214A98(v13, _s6LoggerVMa);

      swift_unknownObjectRelease();
      sub_100214A98(v45, _s6LoggerVMa);
    }

    v92 = sub_1001B6CEC();
    v97 = v69;
    v70 = *(v31 + 16);
    v71 = sub_100199598();

    v72 = v94;
    sub_1002143A4(v101, v94, _s6LoggerVMa);
    v73 = (*(v93 + 80) + 16) & ~*(v93 + 80);
    v74 = (v6 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
    v75 = swift_allocObject();
    sub_1001993A4(v72, v75 + v73);
    v76 = (v75 + v74);
    v77 = v95;
    *v76 = v31;
    v76[1] = v77;
    v78 = (v75 + ((v74 + 23) & 0xFFFFFFFFFFFFFFF8));
    v79 = v99;
    *v78 = v98;
    v78[1] = v79;
    sub_10000C9C0(&qword_1005D51A8, &qword_1004E6C40);
    if (v71)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004CEAA0;
      strcpy(v102, "showContinue");
      BYTE5(v102[1]) = 0;
      HIWORD(v102[1]) = -5120;
      swift_unknownObjectRetain();

      sub_1004A6674();
      v81 = [objc_allocWithZone(NSNumber) initWithBool:0];
      *(inited + 96) = sub_10019A8E4(0, &qword_1005D51B0, NSNumber_ptr);
      *(inited + 72) = v81;
      v82 = sub_100213AA4(inited);
      swift_setDeallocating();
      sub_100025F40(inited + 32, &qword_1005D51B8, &qword_1004F7780);
    }

    else
    {
      v83 = swift_initStackObject();
      *(v83 + 16) = xmmword_1004D01D0;
      strcpy(v102, "showContinue");
      BYTE5(v102[1]) = 0;
      HIWORD(v102[1]) = -5120;
      swift_unknownObjectRetain();

      sub_1004A6674();
      v84 = [objc_allocWithZone(NSNumber) initWithBool:0];
      v85 = sub_10019A8E4(0, &qword_1005D51B0, NSNumber_ptr);
      *(v83 + 96) = v85;
      *(v83 + 72) = v84;
      v102[0] = 0xD000000000000015;
      v102[1] = 0x80000001004AC3D0;
      sub_1004A6674();
      v86 = [objc_allocWithZone(NSNumber) initWithBool:0];
      *(v83 + 168) = v85;
      *(v83 + 144) = v86;
      v82 = sub_100213AA4(v83);
      swift_setDeallocating();
      sub_10000C9C0(&qword_1005D51B8, &qword_1004F7780);
      swift_arrayDestroy();
    }

    v87 = swift_allocObject();
    *(v87 + 16) = sub_100214C3C;
    *(v87 + 24) = v75;
    v88 = v96;
    v89 = v96;

    CertUITrustManager.showPrompt(hostname:service:trust:options:_:)(v92, v97, 0xD000000000000016, 0x80000001004AC3B0, v88, v82, sub_100214CEC, v87);

    sub_100214A98(v101, _s6LoggerVMa);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10021280C(unsigned __int8 a1, uint64_t a2, __SecTrust *a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v60 = a2;
  v61 = a7;
  v69 = a5;
  v70 = a6;
  v68 = a3;
  v8 = a1;
  v9 = sub_1004A5244();
  v66 = *(v9 - 8);
  v67 = v9;
  __chkstk_darwin(v9);
  v64 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1004A5274();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = _s6LoggerVMa(0);
  v13 = *(v58 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v58);
  v59 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v62 = &v57 - v16;
  __chkstk_darwin(v17);
  v19 = &v57 - v18;
  v20 = sub_1004A4C04();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8 >= 2)
  {
    v62 = v12;
    if (qword_1005D2D60 != -1)
    {
      swift_once();
    }

    v59 = qword_1005D30F0;
    (*(v21 + 16))(&v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v60, v20);
    sub_1002143A4(a4, v19, _s6LoggerVMa);
    v46 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v47 = (v22 + *(v13 + 80) + v46) & ~*(v13 + 80);
    v48 = swift_allocObject();
    v49 = v68;
    *(v48 + 16) = v61;
    *(v48 + 24) = v49;
    (*(v21 + 32))(v48 + v46, v23, v20);
    sub_1001993A4(v19, v48 + v47);
    v50 = (v48 + ((v14 + v47 + 7) & 0xFFFFFFFFFFFFFFF8));
    v51 = v70;
    *v50 = v69;
    v50[1] = v51;
    v76 = sub_1002147D0;
    v77 = v48;
    aBlock = _NSConcreteStackBlock;
    v73 = 1107296256;
    v74 = sub_10019C778;
    v75 = &unk_1005A8E90;
    v52 = _Block_copy(&aBlock);

    v53 = v49;

    v54 = v62;
    sub_1004A5254();
    v71 = _swiftEmptyArrayStorage;
    sub_100214AF8(&qword_1005D4F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
    sub_1000CBB00(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
    v55 = v64;
    v56 = v67;
    sub_1004A6544();
    sub_1004A6084();
    _Block_release(v52);
    (*(v66 + 8))(v55, v56);
    (*(v63 + 8))(v54, v65);
  }

  else
  {
    if (qword_1005D2D60 != -1)
    {
      swift_once();
    }

    v24 = qword_1005D30F0;
    sub_1002143A4(a4, v19, _s6LoggerVMa);
    v25 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v26 = swift_allocObject();
    v27 = v69;
    v28 = a4;
    v29 = v70;
    *(v26 + 16) = v69;
    *(v26 + 24) = v29;
    sub_1001993A4(v19, v26 + v25);
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1002149A4;
    *(v30 + 24) = v26;
    v76 = sub_100214A60;
    v77 = v30;
    aBlock = _NSConcreteStackBlock;
    v73 = 1107296256;
    v74 = sub_100213038;
    v75 = &unk_1005A8F08;
    v31 = _Block_copy(&aBlock);

    LODWORD(v24) = SecTrustEvaluateAsyncWithError(v68, v24, v31);
    _Block_release(v31);

    v33 = v62;
    if (v24)
    {
      sub_1002143A4(v28, v62, _s6LoggerVMa);
      v34 = v59;
      sub_1002143A4(v28, v59, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v35 = sub_1004A4A54();
      v36 = sub_1004A6014();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        aBlock = v38;
        *v37 = 68158210;
        *(v37 + 4) = 2;
        *(v37 + 8) = 256;
        v39 = v58;
        v40 = v34;
        v41 = *(v34 + *(v58 + 20));
        sub_100214A98(v40, _s6LoggerVMa);
        *(v37 + 10) = v41;
        *(v37 + 11) = 2082;
        v42 = *(v33 + *(v39 + 20) + 4);
        sub_100214A98(v33, _s6LoggerVMa);
        v43 = ConnectionID.debugDescription.getter(v42);
        v45 = sub_10015BA6C(v43, v44, &aBlock);

        *(v37 + 13) = v45;
        _os_log_impl(&_mh_execute_header, v35, v36, "[%.*hhx-%{public}s] SecTrustEvaluateAsyncWithError() failed.", v37, 0x15u);
        sub_1000197E0(v38);
      }

      else
      {
        sub_100214A98(v34, _s6LoggerVMa);

        sub_100214A98(v33, _s6LoggerVMa);
      }

      return v27(5);
    }
  }

  return result;
}

void sub_100213038(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(v9, a3, a4);
}

uint64_t sub_1002130CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(unint64_t), uint64_t a6)
{
  v45[1] = a6;
  v46 = a5;
  v45[0] = _s6LoggerVMa(0);
  __chkstk_darwin(v45[0]);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v45 - v11;
  __chkstk_darwin(v13);
  v15 = v45 - v14;
  __chkstk_darwin(v16);
  v18 = v45 - v17;
  v19 = a2;
  v20 = sub_1001B6CEC();
  v22 = CertUITrustManager.rawTrustResult(forSSLTrust:hostname:service:)(a2, v20, v21, 0xD000000000000016, 0x80000001004AC3B0);

  if (v22 != 1)
  {
    sub_1002143A4(a4, v12, _s6LoggerVMa);
    sub_1002143A4(a4, v9, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v34 = sub_1004A4A54();
    v35 = sub_1004A6034();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v47 = v37;
      *v36 = 68158466;
      *(v36 + 4) = 2;
      *(v36 + 8) = 256;
      v38 = v45[0];
      v39 = v9[*(v45[0] + 20)];
      sub_100214A98(v9, _s6LoggerVMa);
      *(v36 + 10) = v39;
      *(v36 + 11) = 2082;
      v40 = *&v12[*(v38 + 20) + 4];
      sub_100214A98(v12, _s6LoggerVMa);
      v41 = ConnectionID.debugDescription.getter(v40);
      v43 = sub_10015BA6C(v41, v42, &v47);

      *(v36 + 13) = v43;
      *(v36 + 21) = 1024;
      *(v36 + 23) = v22;
      _os_log_impl(&_mh_execute_header, v34, v35, "[%.*hhx-%{public}s] Got %u from CertUI.", v36, 0x1Bu);
      sub_1000197E0(v37);

      if (v22 >= 8)
      {
LABEL_7:
        v33 = 5;
        return v46(v33);
      }
    }

    else
    {
      sub_100214A98(v9, _s6LoggerVMa);

      sub_100214A98(v12, _s6LoggerVMa);
      if (v22 >= 8)
      {
        goto LABEL_7;
      }
    }

    v33 = 0x504030201050505uLL >> (8 * v22);
    return v46(v33);
  }

  sub_1002143A4(a4, v18, _s6LoggerVMa);
  sub_1002143A4(a4, v15, _s6LoggerVMa);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v23 = sub_1004A4A54();
  v24 = sub_1004A5FF4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v47 = v26;
    *v25 = 68158466;
    *(v25 + 4) = 2;
    *(v25 + 8) = 256;
    v27 = v45[0];
    v28 = v15[*(v45[0] + 20)];
    sub_100214A98(v15, _s6LoggerVMa);
    *(v25 + 10) = v28;
    *(v25 + 11) = 2082;
    v29 = *&v18[*(v27 + 20) + 4];
    sub_100214A98(v18, _s6LoggerVMa);
    v30 = ConnectionID.debugDescription.getter(v29);
    v32 = sub_10015BA6C(v30, v31, &v47);

    *(v25 + 13) = v32;
    *(v25 + 21) = 1024;
    *(v25 + 23) = 1;
    _os_log_impl(&_mh_execute_header, v23, v24, "[%.*hhx-%{public}s] Got %u from CertUI.", v25, 0x1Bu);
    sub_1000197E0(v26);
  }

  else
  {
    sub_100214A98(v15, _s6LoggerVMa);

    sub_100214A98(v18, _s6LoggerVMa);
  }

  v33 = 0;
  return v46(v33);
}

uint64_t sub_1002135C0(uint64_t a1)
{
  sub_1004A4FB4();
  swift_allocObject();
  v2 = sub_1004A4FA4();
  v3 = sub_1004A4F94();
  sec_protocol_options_add_tls_application_protocol(v3, "imap");
  swift_unknownObjectRelease();
  v4 = sub_1004A4F94();
  v7[4] = sub_10021440C;
  v7[5] = a1;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100211418;
  v7[3] = &unk_1005A8D78;
  v5 = _Block_copy(v7);

  if (qword_1005D2D60 != -1)
  {
    swift_once();
  }

  sec_protocol_options_set_verify_block(v4, v5, qword_1005D30F0);
  _Block_release(v5);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_100213738()
{
  v7 = sub_1004A6074();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1004A6064();
  __chkstk_darwin(v3);
  v4 = sub_1004A5274();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_10019A8E4(0, &qword_1005D3248, OS_dispatch_queue_ptr);
  sub_1004A5254();
  v8 = _swiftEmptyArrayStorage;
  sub_100214AF8(&qword_1005D50B0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000C9C0(&qword_1005D3250, &qword_1004F5CA0);
  sub_1000CBB00(&qword_1005D50C0, &qword_1005D3250, &qword_1004F5CA0);
  sub_1004A6544();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = sub_1004A6094();
  qword_1005D50A0 = result;
  return result;
}

unint64_t sub_100213998(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004A6644(*(v2 + 40));

  return sub_1002139DC(a1, v4);
}

unint64_t sub_1002139DC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100214D64(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1004A6654();
      sub_100214DC0(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100213AA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&unk_1005D51C0, &qword_1004E6C48);
    v3 = sub_1004A6A74();
    v4 = a1 + 32;

    while (1)
    {
      sub_100214CF4(v4, v13);
      result = sub_100213998(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10019A8D4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_100213BC0(char a1, void *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = _s6LoggerVMa(0);
  __chkstk_darwin(v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v16 = &v34 - v14;
  if (a1)
  {
    v17 = 0;
LABEL_7:
    (a3)(v17, v15);
    return;
  }

  if (!a2)
  {
    v17 = 1;
    goto LABEL_7;
  }

  v18 = v13;
  sub_1002143A4(a5, &v34 - v14, _s6LoggerVMa);
  sub_1002143A4(a5, v11, _s6LoggerVMa);
  v19 = a2;
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v20 = v19;
  v21 = sub_1004A4A54();
  v22 = sub_1004A6014();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v35 = v22;
    v24 = v23;
    v34 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v24 = 68158466;
    *(v24 + 4) = 2;
    *(v24 + 8) = 256;
    v25 = v11[*(v18 + 20)];
    sub_100214A98(v11, _s6LoggerVMa);
    *(v24 + 10) = v25;
    *(v24 + 11) = 2082;
    v26 = *&v16[*(v18 + 20) + 4];
    sub_100214A98(v16, _s6LoggerVMa);
    v27 = ConnectionID.debugDescription.getter(v26);
    v29 = sub_10015BA6C(v27, v28, &v37);

    *(v24 + 13) = v29;
    *(v24 + 21) = 2112;
    type metadata accessor for CFError(0);
    sub_100214AF8(&qword_1005D5198, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
    swift_allocError();
    *v30 = v20;
    v31 = v20;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 23) = v32;
    v33 = v34;
    *v34 = v32;
    _os_log_impl(&_mh_execute_header, v21, v35, "[%.*hhx-%{public}s] SecTrustEvaluateAsyncWithError() completed with error: %@", v24, 0x1Fu);
    sub_100025F40(v33, &qword_1005D51A0, &qword_1004D0940);

    sub_1000197E0(v36);
  }

  else
  {
    sub_100214A98(v11, _s6LoggerVMa);

    sub_100214A98(v16, _s6LoggerVMa);
  }

  a3(1);
}

uint64_t sub_100213F20(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_1004A4C04();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s6LoggerVMa(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ConnectionConfiguration(0);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002143A4(a1, v16, type metadata accessor for ConnectionConfiguration);
  sub_1002143A4(a3, v12, _s6LoggerVMa);
  (*(v7 + 16))(v9, v16, v6);
  v17 = &v16[*(v14 + 44)];
  v19 = *v17;
  v18 = *(v17 + 1);
  v20 = qword_1005D2D68;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_1005D30F8;

  sub_100214A98(v16, type metadata accessor for ConnectionConfiguration);
  sub_10000C9C0(&qword_1005D50C8, qword_1004E6C28);
  v22 = swift_allocObject();
  (*(v7 + 32))(v22 + qword_1005DDFA8, v9, v6);
  v23 = (v22 + qword_1005DDFB0);
  *v23 = v19;
  v23[1] = v18;
  *(v22 + qword_1005DDFC0) = a2;
  *(v22 + *(*v22 + 136)) = v21;
  sub_1001993A4(v12, v22 + qword_1005DDFB8);
  v24 = sub_1002135C0(v22);

  return v24;
}

uint64_t sub_1002141F8()
{
  sub_1004A4FB4();
  swift_allocObject();
  v0 = sub_1004A4FA4();
  v1 = sub_1004A4F94();
  sec_protocol_options_add_tls_application_protocol(v1, "imap");
  swift_unknownObjectRelease();
  v2 = sub_1004A4F94();
  sec_protocol_options_set_min_tls_protocol_version(v2, tls_protocol_version_TLSv10);
  swift_unknownObjectRelease();
  v3 = sub_1004A4F94();
  v6[4] = sub_10021370C;
  v6[5] = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100211418;
  v6[3] = &unk_1005A8D28;
  v4 = _Block_copy(v6);
  if (qword_1005D2DB8 != -1)
  {
    swift_once();
  }

  sec_protocol_options_set_verify_block(v3, v4, qword_1005D50A0);
  _Block_release(v4);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_10021433C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100214354()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002143A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10021441C()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10021447C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002144F4()
{
  v1 = *(_s6LoggerVMa(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_1004A4A74();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1002145D0(uint64_t a1)
{
  v3 = *(_s6LoggerVMa(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 32);
  v10 = v1 + ((*(v3 + 80) + 64) & ~*(v3 + 80));

  return sub_100198974(a1, v4, v5, v9, v6, v7, v8, v10);
}

uint64_t sub_100214650()
{
  v1 = sub_1004A4C04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(_s6LoggerVMa(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v3 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v11 = sub_1004A4A74();
  (*(*(v11 - 8) + 8))(v0 + v8, v11);

  return _swift_deallocObject(v0, v10 + 16, v9 | 7);
}

uint64_t sub_1002147D0()
{
  v1 = *(sub_1004A4C04() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(_s6LoggerVMa(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);

  return sub_1002130CC(v9, v10, v0 + v2, v0 + v5, v7, v8);
}

uint64_t sub_1002148D0()
{
  v1 = *(_s6LoggerVMa(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_1004A4A74();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_1002149A4(uint64_t a1, char a2, void *a3)
{
  v6 = *(_s6LoggerVMa(0) - 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  sub_100213BC0(a2, a3, v7, v8, v9);
}

uint64_t sub_100214A28()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100214A60(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_100214A98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100214AF8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100214B40()
{
  v1 = *(_s6LoggerVMa(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1004A4A74();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_100214C3C(char a1)
{
  v3 = *(_s6LoggerVMa(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);

  return sub_10019835C(a1, v1 + v4, v8, v9, v10, v11);
}

uint64_t sub_100214CF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D51B8, &qword_1004F7780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for UnauthenticatedState(uint64_t a1)
{
  result = qword_1005D5240;
  if (!qword_1005D5240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100214E88(uint64_t a1)
{
  sub_1001922D4(319);
  if (v1 <= 0x3F)
  {
    sub_100214F50();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Authenticator(319);
      if (v3 <= 0x3F)
      {
        sub_100214FA0(319);
        if (v4 <= 0x3F)
        {
          sub_100215014(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100214F50()
{
  if (!qword_1005D5250)
  {
    v0 = sub_1004A5CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D5250);
    }
  }
}

void sub_100214FA0(uint64_t a1)
{
  if (!qword_1005D5258)
  {
    sub_10000DEFC(&unk_1005D2FB0, &qword_1004DC9D8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005D5258);
    }
  }
}

void sub_100215014(uint64_t a1)
{
  if (!qword_1005D5260)
  {
    sub_10000DEFC(&unk_1005D2FB0, &qword_1004DC9D8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1005D5260);
    }
  }
}

uint64_t sub_100215090(uint64_t a1)
{
  v1 = *(a1 + 24) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1002150AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 25))
  {
    return (*a1 + 61);
  }

  v3 = (*(a1 + 24) & 0x3C | (*(a1 + 24) >> 6)) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1002150FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 61;
    if (a3 >= 0x3D)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_100215168(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 24) = *(result + 24) & 3 | (a2 << 6);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 3;
    *(result + 24) = -64;
  }

  return result;
}

uint64_t sub_1002151A8(uint64_t a1)
{
  v2 = sub_1004A6554();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_10021DB74(v2, *(a1 + 36), 0, a1);

  return v4;
}

void *sub_100215244(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v5 = *(v2 + 3) >> 1, v5 < v3))
  {
    v2 = sub_10015BF20(isUniquelyReferenced_nonNull_native, v3, 1, v2);
    v5 = *(v2 + 3) >> 1;
  }

  v6 = *(v2 + 2);
  v7 = v5 - v6;
  if (v5 == v6)
  {
    v9 = 0;
    goto LABEL_17;
  }

  if (v7 < 1)
  {
    __break(1u);
LABEL_21:
    v15 = *(v2 + 2);
    sub_1004A6AA4();
    if ((v26 & 1) == 0)
    {
      v16 = v25;
LABEL_24:
      v17 = *(v2 + 3);
      v18 = v17 >> 1;
      if ((v17 >> 1) < v15 + 1)
      {
        v20 = v2;
        v21 = v16;
        v22 = sub_10015BF20((v17 > 1), v15 + 1, 1, v20);
        v16 = v21;
        v2 = v22;
        v18 = *(v22 + 3) >> 1;
      }

      if (v15 <= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v15;
      }

      do
      {
        if (v19 == v15)
        {
          *(v2 + 2) = v19;
          v15 = v19;
          goto LABEL_24;
        }

        v2[v15++ + 32] = v16;
        sub_1004A6AA4();
        v16 = v23;
      }

      while ((v24 & 1) == 0);

      *(v2 + 2) = v15;
      goto LABEL_19;
    }

LABEL_18:

LABEL_19:
    *v1 = v2;
    return result;
  }

  result = sub_1004A6AA4();
  if (v28)
  {
    v9 = 0;
LABEL_12:
    if (!v9)
    {
LABEL_17:
      if (v9 != v7)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v9 = 0;
    v10 = v27;
    v11 = ~v6 + v5;
    while (1)
    {
      v2[v6 + 32 + v9] = v10;
      if (v11 == v9)
      {
        break;
      }

      result = sub_1004A6AA4();
      v10 = v27;
      ++v9;
      if (v28)
      {
        goto LABEL_12;
      }
    }

    v9 = v7;
  }

  v12 = *(v2 + 2);
  v13 = __OFADD__(v12, v9);
  v14 = v12 + v9;
  if (!v13)
  {
    *(v2 + 2) = v14;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

char *sub_100215418(char *result, char *a2)
{
  v5 = a2 - result;
  if (result)
  {
    v6 = a2 - result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *v2;
  v8 = *(*v2 + 2);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v4 = a2;
  v3 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v10 = *(v7 + 3) >> 1, v10 < v9))
  {
    if (v8 <= v9)
    {
      v11 = v8 + v6;
    }

    else
    {
      v11 = v8;
    }

    result = sub_10015BF20(result, v11, 1, v7);
    v7 = result;
    v10 = *(result + 3) >> 1;
  }

  v12 = *(v7 + 2);
  v13 = v10 - v12;
  v14 = 0;
  if (v3 && v4 && v4 > v3 && v10 != v12)
  {
    if (v5 >= v13)
    {
      v14 = v10 - v12;
    }

    else
    {
      v14 = v5;
    }

    if (v14 < 0)
    {
      __break(1u);
      return result;
    }

    result = memmove(&v7[v12 + 32], v3, v14);
    v3 += v14;
  }

  if (v14 < v6)
  {
    goto LABEL_34;
  }

  if (!v14)
  {
    goto LABEL_24;
  }

  v15 = *(v7 + 2);
  v16 = __OFADD__(v15, v14);
  v17 = v15 + v14;
  if (!v16)
  {
    *(v7 + 2) = v17;
LABEL_24:
    if (v14 != v13 || v3 == 0 || v3 == v4)
    {
      goto LABEL_32;
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  v20 = *(v7 + 2);
  v23 = *v3;
  v21 = v3 + 1;
  v22 = v23;
  while (1)
  {
    v24 = *(v7 + 3);
    v25 = v24 >> 1;
    if ((v24 >> 1) < v20 + 1)
    {
      break;
    }

    if (v20 < v25)
    {
      goto LABEL_40;
    }

LABEL_37:
    *(v7 + 2) = v20;
  }

  result = sub_10015BF20((v24 > 1), v20 + 1, 1, v7);
  v7 = result;
  v25 = *(result + 3) >> 1;
  if (v20 >= v25)
  {
    goto LABEL_37;
  }

LABEL_40:
  v26 = v20 + 32;
  while (1)
  {
    v7[v26] = v22;
    if (v21 == v4)
    {
      break;
    }

    v27 = *v21++;
    v22 = v27;
    if (++v26 - v25 == 32)
    {
      v20 = v25;
      goto LABEL_37;
    }
  }

  *(v7 + 2) = v26 - 31;
LABEL_32:
  *v2 = v7;
  return result;
}

uint64_t sub_1002155C8(unint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005D4018, &qword_1004DFEA0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  sub_10000DF44(&qword_1005D4B40, &qword_1005D4018, &qword_1004DFEA0, &protocol conformance descriptor for HashedAuthenticationCode<A>);
  result = sub_1004A5AE4();
  v9 = *v1;
  v10 = *(*v1 + 2);
  v11 = v10 + result;
  if (__OFADD__(v10, result))
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v14 = *(v9 + 3) >> 1, v14 < v11))
    {
      if (v10 <= v11)
      {
        v15 = v11;
      }

      else
      {
        v15 = v10;
      }

      v9 = sub_10015BF20(isUniquelyReferenced_nonNull_native, v15, 1, v9);
      v14 = *(v9 + 3) >> 1;
    }

    v16 = v14 - *(v9 + 2);
    (*(v5 + 16))(v7, a1, v4);
    v17 = sub_1004A5AD4();
    result = (*(v5 + 8))(a1, v4);
    if (v17 >= v12)
    {
      if (v17 >= 1)
      {
        v18 = *(v9 + 2);
        v19 = __OFADD__(v18, v17);
        v20 = v18 + v17;
        if (v19)
        {
          __break(1u);
LABEL_20:
          v22 = v20;
          goto LABEL_21;
        }

        *(v9 + 2) = v20;
      }

      result = v27;
      if (v17 != v16)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_16:
  v21 = *(result + 16);
  if (v28 == v21)
  {
LABEL_13:

    *v2 = v9;
    return result;
  }

  if (v28 >= v21)
  {
    goto LABEL_33;
  }

  v22 = *(v9 + 2);
  v17 = result + 32;
  LOBYTE(v4) = *(result + 32 + v28);
  a1 = v28 + 1;
  while (1)
  {
    v23 = *(v9 + 3);
    v20 = v23 >> 1;
    if ((v23 >> 1) < v22 + 1)
    {
      break;
    }

    if (v22 < v20)
    {
      goto LABEL_24;
    }

LABEL_21:
    *(v9 + 2) = v22;
  }

  v26 = result;
  v9 = sub_10015BF20((v23 > 1), v22 + 1, 1, v9);
  result = v26;
  v20 = *(v9 + 3) >> 1;
  if (v22 >= v20)
  {
    goto LABEL_21;
  }

LABEL_24:
  v24 = v22 + 32;
  while (1)
  {
    v9[v24] = v4;
    v25 = *(result + 16);
    if (a1 == v25)
    {
      *(v9 + 2) = v24 - 31;
      goto LABEL_13;
    }

    if (a1 >= v25)
    {
      break;
    }

    LOBYTE(v4) = *(v17 + a1++);
    if (++v24 - v20 == 32)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

char *sub_1002158A0@<X0>(char *result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *v3;
  v6 = *(*v3 + 2);
  v7 = v6 + a2;
  if (__OFADD__(v6, a2))
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || (v9 = *(v5 + 3) >> 1, v9 < v7))
    {
      if (v6 <= v7)
      {
        v10 = v7;
      }

      else
      {
        v10 = v6;
      }

      result = sub_10015BF20(result, v10, 1, v5);
      v5 = result;
      v9 = *(result + 3) >> 1;
    }

    v11 = *(v5 + 2);
    v12 = v9 - v11;
    if (!a2 || v9 == v11)
    {
      a3 = &v4[a2];
      if (!v4)
      {
        a3 = 0;
      }

      if (a2 <= 0)
      {
        v13 = 0;
LABEL_22:
        if (v13 != v12 || v4 == 0 || v4 == a3)
        {
          goto LABEL_30;
        }

        goto LABEL_33;
      }
    }

    else
    {
      if (a2 >= v12)
      {
        v13 = v9 - v11;
      }

      else
      {
        v13 = a2;
      }

      result = memcpy(&v5[v11 + 32], v4, v13);
      if (v12 >= a2)
      {
        a3 = &v4[a2];
        if (v13 >= 1)
        {
          v14 = *(v5 + 2);
          v15 = __OFADD__(v14, v13);
          v16 = v14 + v13;
          if (v15)
          {
            __break(1u);
            return result;
          }

          *(v5 + 2) = v16;
        }

        v4 += v13;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
LABEL_33:
  v19 = *(v5 + 2);
  v22 = *v4;
  v20 = v4 + 1;
  v21 = v22;
  while (1)
  {
    v23 = *(v5 + 3);
    v24 = v23 >> 1;
    if ((v23 >> 1) < v19 + 1)
    {
      break;
    }

    if (v19 < v24)
    {
      goto LABEL_37;
    }

LABEL_34:
    *(v5 + 2) = v19;
  }

  v27 = v5;
  v28 = a3;
  result = sub_10015BF20((v23 > 1), v19 + 1, 1, v27);
  a3 = v28;
  v5 = result;
  v24 = *(result + 3) >> 1;
  if (v19 >= v24)
  {
    goto LABEL_34;
  }

LABEL_37:
  v25 = v19 + 32;
  while (1)
  {
    v5[v25] = v21;
    if (v20 == a3)
    {
      break;
    }

    v26 = *v20++;
    v21 = v26;
    if (++v25 - v24 == 32)
    {
      v19 = v24;
      goto LABEL_34;
    }
  }

  *(v5 + 2) = v25 - 31;
LABEL_30:
  *v3 = v5;
  return result;
}

uint64_t sub_100215A50(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1001EBC34(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_100215B7C(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1001EC0F0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}