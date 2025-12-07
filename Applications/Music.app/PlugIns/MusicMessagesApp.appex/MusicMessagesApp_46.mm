void sub_100465788(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004CB8(&qword_1006493F8, &qword_1005388E8);
  v55 = v4;
  v6 = sub_1004DED9C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v50 = v2;
    v51 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v52 = v12;
    v53 = v6;
    v54 = v5;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v59 = (v11 - 1) & v11;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(v5 + 48) + 56 * v19;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(v21 + 24);
      v26 = *(v21 + 32);
      v58 = *(v21 + 40);
      v57 = *(v21 + 48);
      v27 = *(v20 + 8 * v19);
      if ((v55 & 1) == 0)
      {
      }

      sub_1004DF26C();
      if (v22 == 0.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v22;
      }

      sub_1004DF2AC(*&v28);
      if (v23 == 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v23;
      }

      sub_1004DF2AC(*&v29);
      v56 = v24;
      sub_1004DD55C();
      v60 = v26;
      v30 = *(v26 + 16);
      sub_1004DF27C(v30);
      if (v30)
      {
        v31 = (v26 + 80);
        do
        {
          v32 = *(v31 - 6);
          v33 = *(v31 - 5);
          v34 = *(v31 - 2);
          v35 = *(v31 - 1);
          v37 = *v31;
          v31 += 7;
          v36 = *&v37;
          if (v32 == 0.0)
          {
            v32 = 0.0;
          }

          sub_1004DF2AC(*&v32);
          if (v33 == 0.0)
          {
            v38 = 0.0;
          }

          else
          {
            v38 = v33;
          }

          sub_1004DF2AC(*&v38);

          sub_1004DD55C();
          sub_1004DF27C(v34);
          sub_1004DF27C(v35);
          sub_1004DF27C(v36);

          --v30;
        }

        while (v30);
      }

      if (v57)
      {
        sub_1004DF27C(0);
        v7 = v53;
        v39 = v58;
      }

      else
      {
        sub_1004DF27C(1uLL);
        v39 = v58;
        if ((v58 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v40 = v58;
        }

        else
        {
          v40 = 0;
        }

        sub_1004DF2AC(v40);
        v7 = v53;
      }

      v41 = sub_1004DF2BC();
      v42 = -1 << *(v7 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v5 = v54;
      if (((-1 << v43) & ~*(v13 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        v11 = v59;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v13 + 8 * v44);
          if (v48 != -1)
          {
            v14 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_7;
          }
        }

LABEL_55:
        __break(1u);
        return;
      }

      v14 = __clz(__rbit64((-1 << v43) & ~*(v13 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
      v11 = v59;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v7 + 48) + 56 * v14;
      *v15 = v22;
      *(v15 + 8) = v23;
      *(v15 + 16) = v56;
      *(v15 + 24) = v25;
      *(v15 + 32) = v60;
      *(v15 + 40) = v39;
      *(v15 + 48) = v57;
      *(*(v7 + 56) + 8 * v14) = v27;
      ++*(v7 + 16);
      v12 = v52;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_55;
      }

      if (v8 >= v12)
      {
        break;
      }

      v18 = v51[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v59 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v55 & 1) == 0)
    {

      v3 = v50;
      goto LABEL_53;
    }

    v49 = 1 << *(v5 + 32);
    v3 = v50;
    if (v49 >= 64)
    {
      bzero(v51, ((v49 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v51 = -1 << v49;
    }

    *(v5 + 16) = 0;
  }

LABEL_53:
  *v3 = v7;
}

void sub_100465BB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004CB8(&qword_100649408, &qword_1005388F8);
  v6 = sub_1004DED9C();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      v32 = v22[1];
      v33 = *v22;
      if ((v4 & 1) == 0)
      {
      }

      sub_1004DF26C();
      sub_1004DF27C(v21);
      v23 = sub_1004DF2BC();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 32 * v15);
      *v16 = v33;
      v16[1] = v32;
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_100465E4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004CB8(&qword_100649400, &qword_1005388F0);
  v31 = v4;
  v6 = sub_1004DED9C();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_1004DF26C();
      sub_1004DF27C(v20);
      v22 = sub_1004DF2BC();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
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
        return;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
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
}

void sub_1004660E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004CB8(&qword_1006493B8, &qword_100538898);
  v35 = v4;
  v6 = sub_1004DED9C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_100006F5C(v22, v36);
      }

      else
      {
        sub_10000904C(v22, v36);
        v23 = v21;
      }

      sub_1004DD43C();
      sub_1004DF26C();
      sub_1004DD55C();
      v24 = sub_1004DF2BC();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      sub_100006F5C(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_34:
  *v3 = v7;
}

void sub_1004663B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100028F80(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for Lyrics.Transliteration(0);
      sub_1004700A4(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for Lyrics.Transliteration);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_100466FDC();
    goto LABEL_7;
  }

  sub_1004649A0(v15, a4 & 1);
  v21 = sub_100028F80(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_1004DF16C();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_100466CD0(v12, a2, a3, a1, v18, type metadata accessor for Lyrics.Transliteration, type metadata accessor for Lyrics.Transliteration);
}

void sub_100466548(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100028F80(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for Lyrics.Translation(0);
      sub_1004700A4(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for Lyrics.Translation);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_100467234();
    goto LABEL_7;
  }

  sub_100464D18(v15, a4 & 1);
  v21 = sub_100028F80(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_1004DF16C();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_100466CD0(v12, a2, a3, a1, v18, type metadata accessor for Lyrics.Translation, type metadata accessor for Lyrics.Translation);
}

void sub_1004666DC(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100028F80(a2, a3);
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
      sub_100465090(v16, a4 & 1);
      v11 = sub_100028F80(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1004DF16C();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_10046748C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    sub_100381528(a1, v22);
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  v24 = v21[7] + 40 * v11;
  v25 = *a1;
  v26 = a1[1];
  *(v24 + 32) = *(a1 + 4);
  *v24 = v25;
  *(v24 + 16) = v26;
  v27 = v21[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v28;
}

unint64_t sub_10046686C(uint64_t a1, double *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1004643E4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100465360(v14, a3 & 1);
      result = sub_1004643E4(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_15:
        result = sub_1004DF16C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_100467640();
      result = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
    return result;
  }

  v21 = *a2;
  v28 = *(a2 + 1);
  v20 = v28;
  v27 = *(a2 + 4);
  v19[(result >> 6) + 8] |= 1 << result;
  v22 = v19[6] + 56 * result;
  v23 = *(a2 + 2);
  *(v22 + 16) = v20;
  *(v22 + 32) = v23;
  *(v22 + 48) = *(a2 + 48);
  *v22 = v21;
  *(v19[7] + 8 * result) = a1;
  v24 = v19[2];
  v13 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19[2] = v25;
  sub_100036140(&v28, v26);
  return sub_1000108DC(&v27, v26, &qword_1006493E0, &unk_1005388D0);
}

void sub_1004669E8(uint64_t a1, double *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1004643E4(a2);
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
      sub_100465788(v14, a3 & 1);
      v9 = sub_1004643E4(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_1004DF16C();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1004677D0();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v21 = *a2;
    v28 = *(a2 + 1);
    v20 = v28;
    v27 = *(a2 + 4);
    v19[(v9 >> 6) + 8] |= 1 << v9;
    v22 = v19[6] + 56 * v9;
    v23 = *(a2 + 2);
    *(v22 + 16) = v20;
    *(v22 + 32) = v23;
    *(v22 + 48) = *(a2 + 48);
    *v22 = v21;
    *(v19[7] + 8 * v9) = a1;
    v24 = v19[2];
    v13 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v13)
    {
      v19[2] = v25;
      sub_100036140(&v28, v26);
      sub_1000108DC(&v27, v26, &qword_1006493E0, &unk_1005388D0);
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

_OWORD *sub_100466B90(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100028E14(a2);
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
      sub_100467C3C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1004660E4(v13, a3 & 1);
    v8 = sub_100028E14(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      _s3__C3KeyVMa_1(0);
      result = sub_1004DF16C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_100008D24(v19);

    return sub_100006F5C(a1, v19);
  }

  else
  {
    sub_10005B4F0(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_100466CD0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_10046E230(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

unint64_t sub_100466D7C(unint64_t result, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a2;
  v7 = (a3[7] + 32 * result);
  *v7 = a4;
  v7[1] = a5;
  v7[2] = a6;
  v7[3] = a7;
  v8 = a3[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v10;
  }

  return result;
}

unint64_t sub_100466DC8(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void sub_100466E0C()
{
  v1 = v0;
  sub_100004CB8(&qword_100649488, &qword_100538978);
  v2 = *v0;
  v3 = sub_1004DED8C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 88;
      v21 = *(v2 + 56) + v16;
      v22 = *(v21 + 32);
      v23 = *(v21 + 48);
      v24 = *(v21 + 64);
      v38 = *(v21 + 80);
      v36 = v23;
      v37 = v24;
      v25 = *(v21 + 16);
      v33 = *v21;
      v34 = v25;
      v35 = v22;
      v26 = (*(v4 + 48) + v17);
      *v26 = v20;
      v26[1] = v19;
      v27 = *(v4 + 56) + v16;
      v28 = v34;
      *v27 = v33;
      *(v27 + 16) = v28;
      v29 = v35;
      v30 = v36;
      v31 = v37;
      *(v27 + 80) = v38;
      *(v27 + 48) = v30;
      *(v27 + 64) = v31;
      *(v27 + 32) = v29;

      sub_10046F9B4(&v33, v32);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void sub_100466FDC()
{
  v1 = v0;
  v30 = *(type metadata accessor for Lyrics.Transliteration(0) - 8);
  __chkstk_darwin();
  v29 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100649490, &qword_100538980);
  v3 = *v0;
  v4 = sub_1004DED8C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v28 = v1;
    v6 = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v7 + 8 * v8)
    {
      memmove(v6, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = *(v3 + 64);
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
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = 16 * v19;
        v21 = (*(v3 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v29;
        v25 = *(v30 + 72) * v19;
        sub_10046DD7C(*(v3 + 56) + v25, v29, type metadata accessor for Lyrics.Transliteration);
        v26 = v31;
        v27 = (*(v31 + 48) + v20);
        *v27 = v22;
        v27[1] = v23;
        sub_10046E230(v24, *(v26 + 56) + v25, type metadata accessor for Lyrics.Transliteration);
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v28;
        v5 = v31;
        goto LABEL_18;
      }

      v18 = *(v7 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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
}

void sub_100467234()
{
  v1 = v0;
  v30 = *(type metadata accessor for Lyrics.Translation(0) - 8);
  __chkstk_darwin();
  v29 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100649478, &qword_100538968);
  v3 = *v0;
  v4 = sub_1004DED8C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v28 = v1;
    v6 = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v7 + 8 * v8)
    {
      memmove(v6, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = *(v3 + 64);
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
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = 16 * v19;
        v21 = (*(v3 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v29;
        v25 = *(v30 + 72) * v19;
        sub_10046DD7C(*(v3 + 56) + v25, v29, type metadata accessor for Lyrics.Translation);
        v26 = v31;
        v27 = (*(v31 + 48) + v20);
        *v27 = v22;
        v27[1] = v23;
        sub_10046E230(v24, *(v26 + 56) + v25, type metadata accessor for Lyrics.Translation);
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v28;
        v5 = v31;
        goto LABEL_18;
      }

      v18 = *(v7 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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
}

void sub_10046748C()
{
  v1 = v0;
  sub_100004CB8(&qword_100649440, &qword_100538930);
  v2 = *v0;
  v3 = sub_1004DED8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        sub_100010678(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
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

void sub_100467640()
{
  v1 = v0;
  sub_100004CB8(&qword_1006493C8, &qword_1005388B8);
  v2 = *v0;
  v3 = sub_1004DED8C();
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
        v18 = v17 << 6;
        v17 *= 8;
        v19 = v18 - v17;
        v20 = *(v2 + 48) + v19;
        v22 = *(v20 + 16);
        v21 = *(v20 + 24);
        v24 = *(v20 + 32);
        v23 = *(v20 + 40);
        v25 = *(v20 + 48);
        v26 = *(*(v2 + 56) + v17);
        v27 = *(v4 + 48) + v19;
        *v27 = *v20;
        *(v27 + 16) = v22;
        *(v27 + 24) = v21;
        *(v27 + 32) = v24;
        *(v27 + 40) = v23;
        *(v27 + 48) = v25;
        *(*(v4 + 56) + v17) = v26;
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

void sub_1004677D0()
{
  v1 = v0;
  sub_100004CB8(&qword_1006493F8, &qword_1005388E8);
  v2 = *v0;
  v3 = sub_1004DED8C();
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
        v18 = v17 << 6;
        v17 *= 8;
        v19 = v18 - v17;
        v20 = *(v2 + 48) + v19;
        v22 = *(v20 + 16);
        v21 = *(v20 + 24);
        v24 = *(v20 + 32);
        v23 = *(v20 + 40);
        v25 = *(v20 + 48);
        v26 = *(*(v2 + 56) + v17);
        v27 = *(v4 + 48) + v19;
        *v27 = *v20;
        *(v27 + 16) = v22;
        *(v27 + 24) = v21;
        *(v27 + 32) = v24;
        *(v27 + 40) = v23;
        *(v27 + 48) = v25;
        *(*(v4 + 56) + v17) = v26;
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

void sub_100467970()
{
  v1 = v0;
  sub_100004CB8(&qword_100649408, &qword_1005388F8);
  v2 = *v0;
  v3 = sub_1004DED8C();
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
        v18 = (*(v2 + 56) + 32 * v17);
        v19 = *v18;
        v20 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 32 * v17);
        *v21 = v19;
        v21[1] = v20;
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

void sub_100467AD8()
{
  v1 = v0;
  sub_100004CB8(&qword_100649400, &qword_1005388F0);
  v2 = *v0;
  v3 = sub_1004DED8C();
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

void sub_100467C3C()
{
  v1 = v0;
  sub_100004CB8(&qword_1006493B8, &qword_100538898);
  v2 = *v0;
  v3 = sub_1004DED8C();
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
        sub_10000904C(*(v2 + 56) + 32 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_100006F5C(v20, (*(v4 + 56) + 32 * v17));
        v19 = v18;
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

Swift::Int sub_100467DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_1004DF26C();
  sub_1004DD55C();
  result = sub_1004DF2BC();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1004D93FC();
    result = sub_1004D942C();
    if ((v11 & 1) == 0)
    {
      v12 = (a3 + 16 * result);
      if (*v12 != a1 || v12[1] != a2)
      {
        while (1)
        {
          v14 = result;
          if (sub_1004DF08C())
          {
            break;
          }

          sub_1004D944C();
          result = sub_1004D942C();
          if ((v15 & 1) == 0)
          {
            v16 = (a3 + 16 * result);
            if (*v16 != a1 || v16[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v14;
      }
    }
  }

  return result;
}

Swift::Int sub_100467F0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  sub_1004DF26C();
  v38 = a1;
  Lyrics.Word.hash(into:)(v39);
  result = sub_1004DF2BC();
  v9 = 1 << *a4;
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    goto LABEL_40;
  }

  v12 = v11 & result;
  v13 = sub_1004D93FC();
  *&v41 = a4;
  *(&v41 + 1) = a5;
  *&v42 = v12;
  *(&v42 + 1) = v13;
  *&v43 = v14;
  *(&v43 + 1) = v15;
  v44 = 0;
  v16 = sub_1004D942C();
  if (v17)
  {
    return v16;
  }

  v18 = *v38;
  while (1)
  {
    v20 = a2 + 56 * v16;
    if (*v20 != v18 || *(v20 + 8) != *(v38 + 8))
    {
      goto LABEL_6;
    }

    result = *(v20 + 16);
    v21 = *(v20 + 32);
    v22 = *(v20 + 40);
    v36 = *(v20 + 48);
    if (result != *(v38 + 16) || *(v20 + 24) != *(v38 + 24))
    {
      result = sub_1004DF08C();
      if ((result & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v24 = *(v38 + 32);
    v25 = *(v21 + 16);
    if (v25 != *(v24 + 16))
    {
      goto LABEL_6;
    }

    if (v25 && v21 != v24)
    {
      break;
    }

LABEL_20:
    if (v36)
    {
      if (*(v38 + 48))
      {
        return v16;
      }
    }

    else if ((*(v38 + 48) & 1) == 0 && v22 == *(v38 + 40))
    {
      return v16;
    }

LABEL_6:
    sub_1004D944C();
    v39[0] = v41;
    v39[1] = v42;
    v39[2] = v43;
    v40 = v44;
    v16 = sub_1004D942C();
    if (v19)
    {
      return v16;
    }
  }

  v27 = (v21 + 80);
  v28 = v24 + 40;
  while (v25)
  {
    if (*(v27 - 6) != *(v28 - 8) || *(v27 - 5) != *v28)
    {
      goto LABEL_6;
    }

    result = *(v27 - 4);
    v30 = *(v27 - 2);
    v31 = *(v27 - 1);
    v32 = *v27;
    v34 = *(v28 + 24);
    v33 = *(v28 + 32);
    v35 = *(v28 + 40);
    if (result != *(v28 + 8) || *(v27 - 3) != *(v28 + 16))
    {
      result = sub_1004DF08C();
      if ((result & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    if (v30 != v34 || v31 != v33 || *&v32 != v35)
    {
      goto LABEL_6;
    }

    v27 += 7;
    v28 += 56;
    if (!--v25)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

Swift::Int sub_100468168(Swift::UInt a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  sub_1004DF26C();
  sub_1004DF27C(a1);
  result = sub_1004DF2BC();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1004D93FC();
    result = sub_1004D942C();
    if ((v9 & 1) == 0 && *(a2 + 8 * result) != a1)
    {
      do
      {
        sub_1004D944C();
        result = sub_1004D942C();
      }

      while ((v10 & 1) == 0 && *(a2 + 8 * result) != a1);
    }
  }

  return result;
}

void sub_10046827C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v9 = v3[1];
  v7 = v3 + 1;
  v8 = v9;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100463968(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v13 = *(v8 + 16);
  v12 = *(v8 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_100463968((v12 > 1), v13 + 1, 1);
    v8 = *v7;
  }

  *(v8 + 16) = v13 + 1;
  v14 = v8 + 16 * v13;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v4[1] = v8;
  if (*v4)
  {
    swift_beginAccess();
    if (sub_1004D945C() > v13)
    {
      isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
      v16 = *v4;
      if ((isUniquelyReferenced_native & 1) == 0)
      {
        if (!v16)
        {
LABEL_16:
          __break(1u);
          return;
        }

        v17 = sub_1004D947C();

        *v4 = v17;
        v16 = v17;
      }

      if (v16)
      {
        sub_1004D941C();
        return;
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v13 < 0xF)
  {
    return;
  }

  sub_10048A030(v11);
}

void sub_1004683F4(uint64_t a1, uint64_t a2)
{

  sub_1004DEB9C();
  sub_1004DEBDC();
  sub_1004DEBEC();
  sub_1004DEBAC();
  v3 = *(v2[1] + 16);
  if (*v2)
  {
    swift_beginAccess();
    if (sub_1004D945C() >= v3)
    {
      isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
      v5 = *v2;
      if ((isUniquelyReferenced_native & 1) == 0)
      {
        if (!v5)
        {
LABEL_12:
          __break(1u);
          return;
        }

        v6 = sub_1004D947C();

        *v2 = v6;
        v5 = v6;
      }

      if (v5)
      {
        sub_1004D941C();
        return;
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  else if (v3 < 0x10)
  {
    return;
  }

  sub_10048A048();
}

void sub_10046852C(__n128 *a1, uint64_t a2)
{
  v3 = v2;
  v20 = a1[1];
  v19 = a1[2].n128_u64[0];
  v7 = v2[1];
  v5 = v2 + 1;
  v6 = v7;
  sub_100036140(&v20, v18);
  sub_1000108DC(&v19, v18, &qword_1006493E0, &unk_1005388D0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100463988(0, *(v6 + 16) + 1, 1);
    v6 = *v5;
  }

  v10 = *(v6 + 16);
  v9 = *(v6 + 24);
  if (v10 >= v9 >> 1)
  {
    sub_100463988((v9 > 1), v10 + 1, 1);
    v6 = *v5;
  }

  *(v6 + 16) = v10 + 1;
  v11 = v6 + 56 * v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  *(v11 + 80) = a1[3].n128_u8[0];
  *(v11 + 48) = v13;
  *(v11 + 64) = v14;
  *(v11 + 32) = v12;
  v3[1] = v6;
  if (*v3)
  {
    swift_beginAccess();
    if (sub_1004D945C() > v10)
    {
      isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
      v16 = *v3;
      if ((isUniquelyReferenced_native & 1) == 0)
      {
        if (!v16)
        {
LABEL_16:
          __break(1u);
          return;
        }

        v17 = sub_1004D947C();

        *v3 = v17;
        v16 = v17;
      }

      if (v16)
      {
        sub_1004D941C();
        return;
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v10 < 0xF)
  {
    return;
  }

  sub_10048A0EC(v12);
}

void sub_100468750(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_10048A820(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
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

void *sub_1004688BC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_100468750(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_10046894C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1004DF27C(v3);
  if (v3)
  {
    v4 = (a2 + 80);
    do
    {
      v5 = *(v4 - 6);
      v6 = *(v4 - 5);
      v7 = *(v4 - 2);
      v8 = *(v4 - 1);
      v10 = *v4;
      v4 += 7;
      v9 = *&v10;
      if (v5 == 0.0)
      {
        v5 = 0.0;
      }

      sub_1004DF2AC(*&v5);
      if (v6 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v6;
      }

      sub_1004DF2AC(*&v11);

      sub_1004DD55C();
      sub_1004DF27C(v7);
      sub_1004DF27C(v8);
      sub_1004DF27C(v9);

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_100468A18(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v11 = &type metadata for Lyrics.SongwritersLine;
  v12 = &protocol witness table for Lyrics.SongwritersLine;
  v6 = swift_allocObject();
  *&v10 = v6;
  v7 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a2 + 32);
  v8 = *a3;
  *(v8 + 16) = a1 + 1;
  return sub_100035850(&v10, v8 + 40 * a1 + 32);
}

unint64_t sub_100468AD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_100649550, &unk_100538A48);
    v3 = sub_1004DEDBC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100028F80(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_100468BEC(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_1006494C8, &qword_1005389B0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100004CB8(&qword_100649478, &qword_100538968);
    v7 = sub_1004DEDBC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000108DC(v9, v5, &qword_1006494C8, &qword_1005389B0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100028F80(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Lyrics.Translation(0);
      result = sub_10046E230(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Lyrics.Translation);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_100468DD4(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_1006494C0, &qword_1005389A8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100004CB8(&qword_100649490, &qword_100538980);
    v7 = sub_1004DEDBC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000108DC(v9, v5, &qword_1006494C0, &qword_1005389A8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100028F80(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Lyrics.Transliteration(0);
      result = sub_10046E230(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Lyrics.Transliteration);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_100468FBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_100004CB8(&qword_100649488, &qword_100538978);
  v3 = sub_1004DEDBC();

  v4 = *(a1 + 112);
  v31 = *(a1 + 96);
  v32 = v4;
  v33 = *(a1 + 128);
  v5 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v5;
  v6 = *(a1 + 80);
  v29 = *(a1 + 64);
  v30 = v6;
  v8 = *(&v27 + 1);
  v7 = v27;
  sub_1000108DC(&v27, v26, &qword_1006494A0, &unk_100538990);
  result = sub_100028F80(v7, v8);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 136);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v7;
    v12[1] = v8;
    v13 = v3[7] + 88 * result;
    v14 = v29;
    *v13 = v28;
    *(v13 + 16) = v14;
    v15 = v30;
    v16 = v31;
    v17 = v32;
    *(v13 + 80) = v33;
    *(v13 + 48) = v16;
    *(v13 + 64) = v17;
    *(v13 + 32) = v15;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v3[2] = v20;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v21 = (v11 + 104);
    v22 = v11[5];
    v31 = v11[4];
    v32 = v22;
    v33 = *(v11 + 12);
    v23 = v11[1];
    v27 = *v11;
    v28 = v23;
    v24 = v11[3];
    v29 = v11[2];
    v30 = v24;
    v8 = *(&v27 + 1);
    v7 = v27;
    sub_1000108DC(&v27, v26, &qword_1006494A0, &unk_100538990);
    result = sub_100028F80(v7, v8);
    v11 = v21;
    if (v25)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10046917C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_100649440, &qword_100538930);
    v3 = sub_1004DEDBC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000108DC(v4, &v16, &qword_100649448, &qword_100538938);
      v5 = v16;
      v6 = v17;
      result = sub_100028F80(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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

unint64_t sub_1004692B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_1006493B8, &qword_100538898);
    v3 = sub_1004DEDBC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000108DC(v4, &v11, &qword_1006493C0, &unk_1005388A0);
      v5 = v11;
      result = sub_100028E14(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100006F5C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1004693DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_1006493C8, &qword_1005388B8);
    v3 = sub_1004DEDBC();

    for (i = (a1 + 88); ; i += 8)
    {
      v6 = *(i - 5);
      v5 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v9 = *(i - 8);
      v10 = *i;
      v18 = *(i - 7);
      *&v19 = v6;
      *(&v19 + 1) = v5;
      *&v20 = v8;
      *(&v20 + 1) = v7;
      v21 = v9;

      result = sub_1004643E4(&v18);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 56 * result;
      v14 = v19;
      *v13 = v18;
      *(v13 + 16) = v14;
      *(v13 + 32) = v20;
      *(v13 + 48) = v21;
      *(v3[7] + 8 * result) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t sub_100469514(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_1006493F8, &qword_1005388E8);
    v3 = sub_1004DEDBC();

    for (i = (a1 + 88); ; i += 8)
    {
      v6 = *(i - 5);
      v5 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v9 = *(i - 8);
      v10 = *i;
      v18 = *(i - 7);
      *&v19 = v6;
      *(&v19 + 1) = v5;
      *&v20 = v8;
      *(&v20 + 1) = v7;
      v21 = v9;

      result = sub_1004643E4(&v18);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 56 * result;
      v14 = v19;
      *v13 = v18;
      *(v13 + 16) = v14;
      *(v13 + 32) = v20;
      *(v13 + 48) = v21;
      *(v3[7] + 8 * result) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t sub_100469654(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_100004CB8(&qword_100649400, &qword_1005388F0);
  v3 = sub_1004DEDBC();
  v13 = *(a1 + 32);
  result = sub_10041CB40(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = sub_10041CB40(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_100469778(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_100004CB8(&qword_100649408, &qword_1005388F8);
  v3 = sub_1004DEDBC();
  v4 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  v5 = sub_10041CB40(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = v5;
  result = v4;
  v9 = (a1 + 80);
  while (1)
  {
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = result;
    v10 = (v3[7] + 32 * v7);
    *v10 = v17;
    v10[1] = v18;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = (v9 + 40);
    v15 = *(v9 - 1);
    v17 = *v9;
    v18 = v9[1];

    v7 = sub_10041CB40(v15);
    v9 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s7LyricsX0A0C4WordV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    if (v4 || (sub_1004DF08C()) && (sub_100455DA4(*(a1 + 32), *(a2 + 32)))
    {
      if (*(a1 + 48))
      {
        if (*(a2 + 48))
        {
          return 1;
        }
      }

      else if ((*(a2 + 48) & 1) == 0 && *(a1 + 40) == *(a2 + 40))
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL _s7LyricsX0A0C8SyllableV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && (*(a1 + 16) == *(a2 + 16) ? (v2 = *(a1 + 24) == *(a2 + 24)) : (v2 = 0), (v2 || (v3 = a1, v4 = a2, v5 = sub_1004DF08C(), a2 = v4, v6 = v5, a1 = v3, (v6 & 1) != 0)) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40)))
  {
    return *(a1 + 48) == *(a2 + 48);
  }

  else
  {
    return 0;
  }
}

uint64_t _s7LyricsX0A0C8TextLineV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && (v4 = type metadata accessor for Lyrics.TextLine(0), *(a1 + v4[10]) == *(a2 + v4[10])) && *(a1 + v4[11]) == *(a2 + v4[11]))
  {
    v5 = v4;
    v6 = (*(a1 + v4[16]))();
    v8 = v7;
    if (v6 == (*(a2 + v5[16]))() && v8 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_1004DF08C();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_100469B28(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result + 56 * v1;
  v4 = *(v2 + 8);
  v3 = *(v2 + 16);
  v5 = __OFADD__(v4, v3);
  v6 = v4 + v3;
  if (v5)
  {
    goto LABEL_7;
  }

  result = *(result + 64);
  if (__OFSUB__(v6, result))
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t sub_100469BE8(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100469C20()
{

  return swift_deallocObject();
}

uint64_t sub_100469C58(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004D83DC();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100648D90, &unk_100537EB0);
  __chkstk_darwin();
  v8 = &v17 - v7;
  if (!a2)
  {
    goto LABEL_4;
  }

  sub_1004D839C();
  sub_1004D83AC();
  (*(v4 + 8))(v6, v3);
  v9 = sub_1004D82FC();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10001074C(v8, &qword_100648D90, &unk_100537EB0);
LABEL_4:
    v11 = 1;
    return v11 & 1;
  }

  v12 = sub_1004D82DC();
  v14 = v13;
  (*(v10 + 8))(v8, v9);
  if (qword_100648BA8 != -1)
  {
    swift_once();
  }

  v15 = sub_1001206A4(v12, v14, qword_100674258);

  v11 = v15 ^ 1;
  return v11 & 1;
}

Swift::Int sub_100469E90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_100649458, &qword_100538948);
    v3 = sub_1004DEA8C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_1004DF26C();
      sub_1004DF27C(0);
      if (v10 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v10;
      }

      sub_1004DF2AC(*&v11);
      result = sub_1004DF2BC();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

_UNKNOWN **sub_100469FE4(uint64_t a1, uint64_t a2)
{
  v24[1] = a1;
  sub_100004CB8(&qword_100648D90, &unk_100537EB0);
  __chkstk_darwin();
  v4 = v24 - v3;
  v5 = sub_1004D83DC();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004D82FC();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = v24 - v13;
  __chkstk_darwin();
  if (!a2)
  {
    return &off_1005FDF50;
  }

  v16 = v24 - v15;

  sub_1004D839C();
  sub_1004D83AC();
  (*(v6 + 8))(v8, v5);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_10001074C(v4, &qword_100648D90, &unk_100537EB0);
    return &off_1005FDF50;
  }

  v18 = v16;
  (*(v10 + 32))(v16, v4, v9);
  (*(v10 + 16))(v14, v16, v9);
  sub_1004D82EC();
  sub_10046E4C0(&qword_100649540, &type metadata accessor for Locale.LanguageCode, &protocol conformance descriptor for Locale.LanguageCode);
  v19 = sub_1004DD35C();
  v20 = *(v10 + 8);
  v20(v12, v9);
  if (v19 & 1) != 0 || (sub_1004D82EC(), v21 = sub_1004DD35C(), v20(v12, v9), (v21) || (sub_1004D82EC(), v22 = sub_1004DD35C(), v20(v12, v9), (v22))
  {
    v20(v14, v9);
  }

  else
  {
    sub_1004D82EC();
    v23 = sub_1004DD35C();
    v20(v12, v9);
    v20(v14, v9);
    if ((v23 & 1) == 0)
    {
      v20(v18, v9);
      return &off_1005FDF28;
    }
  }

  v20(v18, v9);
  return &off_1005FDF00;
}

uint64_t sub_10046A430()
{

  return swift_deallocObject();
}

void sub_10046A468(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1004DED5C())
    {
LABEL_3:
      sub_100004CB8(&qword_100649460, &qword_100538950);
      v3 = sub_1004DEA8C();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1004DED5C();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_1004DEB2C();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1004DE5EC(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_100006F10(0, &qword_100648E58, MSVLyricsAgent_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_1004DE5FC();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = sub_1004DE5EC(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100006F10(0, &qword_100648E58, MSVLyricsAgent_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_1004DE5FC();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

char *sub_10046A758(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, char a6, char a7)
{
  v7 = a5;
  v8 = a4;
  v9 = a2;
  v140 = a1;
  v141 = _swiftEmptyArrayStorage;
  if ((a7 & 1) == 0)
  {
    v131 = _swiftEmptyArrayStorage;
    v86 = qword_100648BB8;

    if (v86 != -1)
    {
      goto LABEL_87;
    }

    goto LABEL_62;
  }

  v10 = a3;
  v11 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v11 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    v13 = 0;
    v100 = _swiftEmptyArrayStorage;
LABEL_80:

    return v100;
  }

  v105._countAndFlagsBits = a4;
  v105._object = a5;
  v104 = 4 * v11;

  v12 = 0;
  v117 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 1;
  v8 = 15;
  v7 = _swiftEmptyArrayStorage;
  v125 = _swiftEmptyArrayStorage;
  v100 = _swiftEmptyArrayStorage;
  while (1)
  {
    v121 = v13;
    v114 = sub_1004DD59C();
    v16 = (v15 & 1) != 0 ? v8 : v117;
    v17 = (v15 & 1) != 0 ? v8 : v12;
    v18 = sub_1004DD59C();
    if (v16 >> 14 > v18 >> 14)
    {
      break;
    }

    v19 = v18;

    v20 = _NSRange.init(range:in:)(v16, v19, v9, v10);
    if (v14 < v17 >> 14)
    {
      goto LABEL_84;
    }

    v106 = v16 >> 14;
    v115 = v14;
    v129 = v16;
    v22 = v20;
    v23 = v21;

    v119 = v17;
    v111 = _NSRange.init(range:in:)(v17, v8, v9, v10);
    v118 = v24;
    __chkstk_darwin();
    v108 = v22;
    v102 = v23;
    v25 = sub_100004CB8(&qword_1006494E0, &qword_1005389C0);
    Array.extractFirst(where:)(v25, &v134);
    v10 = a3;
    v26 = v134;
    sub_1004DD6BC();
    v27 = sub_1004DD2CC();

    if ((v27 & 1) == 0)
    {
      if (v26)
      {
LABEL_22:
        v9 = a2;
        if (v121)
        {
          v109 = v26;
          v34 = v26;
          sub_1004DD6EC();
          v35 = sub_1004DD53C();
          v37 = v36;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v125 = sub_100462890(0, v125[2] + 1, 1, v125);
          }

          v39 = v125[2];
          v38 = v125[3];
          v9 = a2;
          if (v39 >= v38 >> 1)
          {
            v125 = sub_100462890((v38 > 1), v39 + 1, 1, v125);
          }

          v113 = 0;
          v125[2] = v39 + 1;
          v40 = &v125[5 * v39];
          v40[4] = v121;
          v40[5] = v35;
          v40[6] = v37;
          v40[7] = v111;
          v40[8] = v118;
          v112 = v8;
          v31 = v129;
          v117 = v129;
          v26 = v109;
          v13 = v109;
          v10 = a3;
        }

        else
        {
          v41 = v26;
          v113 = 0;
          v112 = v8;
          v31 = v129;
          v117 = v129;
          v13 = v26;
        }
      }

      else
      {
        v113 = 0;
        v112 = v17;
        v31 = v129;
        v117 = v129;
        v9 = a2;
        v13 = v121;
      }

LABEL_31:
      v32 = v115;
      goto LABEL_32;
    }

    if (v26)
    {
      goto LABEL_22;
    }

    v9 = a2;
    if (!v121)
    {
      v113 = 0;
      v13 = 0;
      v112 = v17;
      v31 = v129;
      v117 = v129;
      goto LABEL_31;
    }

    v28 = v121;
    [v28 characterRange];
    v29._countAndFlagsBits = a2;
    v29._object = a3;
    v30 = _NSRange.convert(from:to:preserveLength:)(v105, v29, 0);
    v31 = v129;
    v32 = v115;
    if (v33)
    {

      v113 = 0;
      v112 = v119;
      v117 = v129;
LABEL_60:
      v13 = v121;
      goto LABEL_32;
    }

    v75 = _NSRange.contains(_:)(v30);

    if (!v75)
    {
      v113 = 0;
      v112 = v119;
      v117 = v129;
      v9 = a2;
      goto LABEL_60;
    }

    v76 = v28;
    v9 = a2;
    sub_1004DD6EC();
    v123 = sub_1004DD53C();
    v99 = v77;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v125 = sub_100462890(0, v125[2] + 1, 1, v125);
    }

    v79 = v125[2];
    v78 = v125[3];
    if (v79 >= v78 >> 1)
    {
      v125 = sub_100462890((v78 > 1), v79 + 1, 1, v125);
    }

    v125[2] = v79 + 1;
    v80 = &v125[5 * v79];
    v80[4] = v76;
    v80[5] = v123;
    v80[6] = v99;
    v80[7] = v111;
    v80[8] = v118;
    sub_1004DD6EC();
    v124 = sub_1004DD53C();
    v82 = v81;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100462748(0, v7[2] + 1, 1, v7);
    }

    v84 = v7[2];
    v83 = v7[3];
    if (v84 >= v83 >> 1)
    {
      v7 = sub_100462748((v83 > 1), v84 + 1, 1, v7);
    }

    v7[2] = v84 + 1;
    v85 = &v7[5 * v84];
    v85[4] = v124;
    v85[5] = v82;
    v85[6] = v125;
    v85[7] = v108;
    v85[8] = v102;

    v112 = 0;
    v117 = 0;
    v13 = 0;
    v113 = 1;
    v125 = _swiftEmptyArrayStorage;
    v10 = a3;
    v31 = v129;
LABEL_32:
    if (v32 == sub_1004DD5AC() >> 14 && v13)
    {
      if (v32 < v106)
      {
        goto LABEL_86;
      }

      v110 = v26;
      v42 = v7;

      v122 = v13;
      v43 = v13;
      v107 = _NSRange.init(range:in:)(v31, v8, v9, v10);
      v103 = v44;

      v45 = _NSRange.init(range:in:)(v119, v8, v9, v10);
      v47 = v46;
      v116 = v43;
      sub_1004DD59C();
      sub_1004DD6EC();
      v48 = sub_1004DD53C();
      v50 = v49;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v125 = sub_100462890(0, v125[2] + 1, 1, v125);
      }

      v52 = v125[2];
      v51 = v125[3];
      if (v52 >= v51 >> 1)
      {
        v125 = sub_100462890((v51 > 1), v52 + 1, 1, v125);
      }

      v125[2] = v52 + 1;
      v53 = &v125[5 * v52];
      v53[4] = v116;
      v53[5] = v48;
      v53[6] = v50;
      v53[7] = v45;
      v53[8] = v47;
      sub_1004DD59C();
      sub_1004DD6EC();
      v9 = v54;
      v55 = sub_1004DD53C();
      v57 = v56;

      v7 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_100462748(0, v42[2] + 1, 1, v42);
      }

      v59 = v7[2];
      v58 = v7[3];
      v130 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        v7 = sub_100462748((v58 > 1), v130, 1, v7);
      }

      v7[2] = v130;
      v60 = &v7[5 * v59];
      v60[4] = v55;
      v60[5] = v57;
      v60[6] = v125;
      v60[7] = v107;
      v60[8] = v103;
      v139 = _swiftEmptyArrayStorage;
      sub_100463988(0, v130, 0);
      v61 = 0;
      v62 = v139;
      v8 = (v7 + 7);
      v63 = a6;
      while (v61 < v7[2])
      {
        v9 = v7;
        v65 = *(v8 - 16);
        v64 = *v8;
        v131 = *(v8 - 24);
        v132 = v65;
        v133 = v64;
        sub_10046155C(&v131, v63 & 1, &v134);
        v66 = v134;
        v67 = v135;
        v68 = v136;
        v69 = v137;
        v70 = v138;
        v139 = v62;
        v72 = v62[2];
        v71 = v62[3];
        v73 = v62;
        if (v72 >= v71 >> 1)
        {
          v126 = v136;
          v120 = v134;
          sub_100463988((v71 > 1), v72 + 1, 1);
          v66 = v120;
          v68 = v126;
          v63 = a6;
          v73 = v139;
        }

        v73[2] = v72 + 1;
        v74 = &v73[7 * v72];
        *(v74 + 2) = v66;
        ++v61;
        v74[6] = v67;
        *(v74 + 7) = v68;
        v74[9] = v69;
        *(v74 + 80) = v70;
        v8 += 40;
        v7 = v9;
        v62 = v73;
        if (v130 == v61)
        {

          v125 = _swiftEmptyArrayStorage;
          v100 = v62;
          v10 = a3;
          v9 = a2;
          v13 = v122;
          goto LABEL_7;
        }
      }

      __break(1u);
      break;
    }

LABEL_7:
    v8 = v114;
    v14 = v114 >> 14;
    v15 = v113;
    v12 = v112;
    if (v114 >> 14 == v104)
    {

      goto LABEL_80;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  swift_once();
LABEL_62:
  __chkstk_darwin();
  UnfairLock.locked<A>(_:)(sub_1004701AC);
  v87 = v131;
  v88 = v131[2];
  if (v88)
  {
    v89 = 0;
    v90 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v90 = v9 & 0xFFFFFFFFFFFFLL;
    }

    v91 = 7;
    if (((a3 >> 60) & ((v9 & 0x800000000000000) == 0)) != 0)
    {
      v91 = 11;
    }

    v9 = 4 * v90;
    v92 = v91 | (v90 << 16);
    v93 = v131 + 6;
    do
    {
      v95 = v89 + 1;
      v96 = *(v93 - 1);
      if (v89 >= v88 - 1)
      {
        if (v9 == v96 >> 14)
        {
          v94 = *(v93 - 1);
        }

        else
        {
          v94 = v92;
        }
      }

      else
      {
        if (v95 >= v87[2])
        {
          goto LABEL_85;
        }

        if ((*v93 ^ v96) >= 0x4000)
        {
          v94 = *v93;
        }

        else
        {
          v94 = *(v93 - 1);
        }
      }

      sub_100460B98(*(v93 - 2), v94, a2, a3, &v140, v8, v7, &v141);
      v93 += 2;
      v89 = v95;
    }

    while (v88 != v95);
  }

  swift_beginAccess();
  v97 = v141;

  return v97;
}

char *sub_10046B44C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 words];
  if (v6)
  {
    v7 = v6;
    sub_100006F10(0, &qword_1006494D8, MSVLyricsWord_ptr);
    sub_1004DD87C();

    v8 = sub_100004CB8(&qword_1006494E0, &qword_1005389C0);
    v9 = sub_100042B08(&qword_100649528, &qword_1006494E0, &qword_1005389C0, &protocol conformance descriptor for [A]);
    v10 = Sequence.exclude(_:)(sub_100461B80, 0, v8, v9);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for Lyrics(0);
  v11 = sub_100469C58(a2, a3);
  v12 = sub_100469FE4(a2, a3);
  v13 = [a1 primaryVocalText];
  v14 = [v13 string];

  v15 = sub_1004DD43C();
  v17 = v16;

  v18 = [a1 lyricsText];
  v19 = [v18 string];

  v20 = sub_1004DD43C();
  v22 = v21;

  [a1 endTime];
  [a1 startTime];
  v23 = v12[2];
  v24 = (v12 + 4);
  do
  {
    v25 = v23;
    if (v23-- == 0)
    {
      break;
    }

    v27 = *v24++;
  }

  while (v27 != 2);
  v28 = v25 != 0;

  v29 = sub_10046A758(v10, v15, v17, v20, v22, v28, v11 & 1);

  return v29;
}

BOOL sub_10046B6C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004D83DC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = sub_1004DD3FC();
  v8 = [v6 dominantLanguageForString:v7];

  if (!v8)
  {
    return 0;
  }

  sub_1004DD43C();
  sub_1004D839C();
  v9 = sub_1004D83BC();

  (*(v3 + 8))(v5, v2);
  return v9 == 2;
}

void sub_10046B800(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = [a1 subwords];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  sub_100006F10(0, &qword_1006494D8, MSVLyricsWord_ptr);
  v11 = sub_1004DD87C();

  if (v11 >> 62)
  {
    if (sub_1004DED5C())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

LABEL_10:
    [a1 startTime];
    v4 = v15;
    goto LABEL_11;
  }

LABEL_4:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = sub_1004DEB2C();
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v12 = *(v11 + 32);
  }

  v13 = v12;

  [v13 startTime];
  v4 = v14;

LABEL_11:
  v16 = [a1 subwords];
  if (!v16)
  {
LABEL_22:
    [a1 endTime];
    v25 = v26;
    goto LABEL_23;
  }

  v17 = v16;
  sub_100006F10(0, &qword_1006494D8, MSVLyricsWord_ptr);
  v18 = sub_1004DD87C();

  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  v19 = sub_1004DED5C();
  if (!v19)
  {
LABEL_21:

    goto LABEL_22;
  }

LABEL_14:
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
    goto LABEL_29;
  }

  if ((v18 & 0xC000000000000001) != 0)
  {
LABEL_30:
    v22 = sub_1004DEB2C();
    goto LABEL_19;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v21 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_32:
    __break(1u);
    return;
  }

  v22 = *(v18 + 8 * v21 + 32);
LABEL_19:
  v23 = v22;

  [v23 endTime];
  v25 = v24;

LABEL_23:
  v27 = sub_100469C58(a2, a3);

  v28 = a1;
  v29 = [v28 lyricsText];
  v30 = [v29 string];

  v31 = sub_1004DD43C();
  v33 = v32;

  v34 = [v28 characterRange];
  v60 = v35;
  v61 = v34;
  v36 = [v28 lyricsText];

  v37 = [v36 string];
  v38 = sub_1004DD43C();
  v40 = v39;

  v41 = sub_10046B6C4(v38, v40);

  v42 = [v28 subwords];
  if (v42)
  {
    v43 = v42;
    type metadata accessor for Lyrics(0);
    sub_100006F10(0, &qword_1006494D8, MSVLyricsWord_ptr);
    v44 = sub_1004DD87C();

    v45 = [v28 lyricsText];
    v46 = a4;
    v47 = v41;
    v48 = v33;
    v49 = v31;
    v50 = [v45 string];

    v59 = sub_1004DD43C();
    v52 = v51;

    v53 = [v28 lyricsText];
    v54 = [v53 string];

    v55 = sub_1004DD43C();
    v57 = v56;

    v31 = v49;
    v33 = v48;
    v41 = v47;
    a4 = v46;
    v58 = sub_10046A758(v44, v59, v52, v55, v57, 0, v27 & 1);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v58 = _swiftEmptyArrayStorage;
  }

  *a4 = v4;
  *(a4 + 8) = v25;
  *(a4 + 16) = v31;
  *(a4 + 24) = v33;
  *(a4 + 32) = v61;
  *(a4 + 40) = v60;
  *(a4 + 48) = v41;
  *(a4 + 56) = v58;
}

void *sub_10046BC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BOOL4 a6, uint64_t a7, uint64_t a8)
{
  v171 = a7;
  v172 = a8;
  v160 = a6;
  v189 = a5;
  v163 = a3;
  v164 = a4;
  v162 = a2;
  v9 = type metadata accessor for Lyrics.TextLine(0);
  v169 = *(v9 - 8);
  v170 = v9;
  __chkstk_darwin();
  v187 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v186 = (&v153 - v11);
  v190 = sub_1004D83DC();
  v12 = *(v190 - 8);
  __chkstk_darwin();
  v159 = &v153 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v155 = &v153 - v14;
  sub_100004CB8(&qword_100648D90, &unk_100537EB0);
  __chkstk_darwin();
  v154 = &v153 - v15;
  sub_100004CB8(&qword_100648D88, &qword_100537EA8);
  __chkstk_darwin();
  v173 = &v153 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v153 - v17;
  __chkstk_darwin();
  v196 = &v153 - v19;
  *&v202[0] = a1;
  KeyPath = swift_getKeyPath();
  v21 = sub_100004CB8(&qword_100649530, &qword_100538A38);
  v22 = sub_100042B08(&qword_100649538, &qword_100649530, &qword_100538A38, &protocol conformance descriptor for [A]);
  v23 = Sequence.sorted<A>(by:comparator:)(KeyPath, sub_10045E71C, 0, v21, v22, &protocol witness table for Double);

  if (v23 >> 62)
  {
    goto LABEL_109;
  }

  v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v25 = v190;
  v26 = v196;
  if (v24)
  {
    v166 = v24;
    v167 = objc_opt_self();
    v168 = v23 & 0xC000000000000001;
    v174 = v23;
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v23 = v174;
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v27 = 0;
    v192 = (v12 + 56);
    v158 = "$_staticText";
    v175 = 0;
    v176 = (v12 + 48);
    v153 = (v12 + 16);
    v161 = (v12 + 8);
    v156 = v23 & 0xFFFFFFFFFFFFFF8;
    v157 = (v12 + 32);
    v165 = v160;
    v28 = &selRef_isSharedListeningSession;
    v198 = _swiftEmptyArrayStorage;
    v188 = v18;
    while (1)
    {
      if (v168)
      {
        v29 = sub_1004DEB2C();
        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_103;
        }
      }

      else
      {
        if (v27 >= *(v156 + 16))
        {
          goto LABEL_106;
        }

        v29 = *(v23 + 8 * v27 + 32);
        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
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
          v24 = sub_1004DED5C();
          goto LABEL_3;
        }
      }

      v183 = v30;
      v199 = v29;
      v31 = [v199 agent];
      if (!v31)
      {
        goto LABEL_19;
      }

      v32 = v31;
      swift_beginAccess();
      v33 = v32;
      sub_10047260C(v200, v33);
      swift_endAccess();

      v34 = [v33 v28[440]];
      if (!v34)
      {

        goto LABEL_19;
      }

      v35 = v34;
      v36 = sub_1004DD43C();
      v38 = v37;

      v39 = v36;
      if (v36 == 0x6E6F73726570 && v38 == 0xE600000000000000 || (sub_1004DF08C() & 1) != 0)
      {
        v40 = [v33 identifier];
        if (v40)
        {
          v41 = v40;
          v197 = sub_1004DD43C();
          v43 = v42;
        }

        else
        {
          v197 = 0;
          v43 = 0;
        }

        v45 = *(v163 + 16);
        if (v45)
        {
          v46 = v27;
          v47 = [v45 identifier];
          if (v47)
          {
            v48 = v47;
            v49 = sub_1004DD43C();
            v51 = v50;
          }

          else
          {
            v49 = 0;
            v51 = 0;
          }

          v27 = v46;
          v28 = &selRef_isSharedListeningSession;
          if (v43)
          {
LABEL_29:
            if (!v51)
            {

              v18 = v188;
              goto LABEL_44;
            }

            if (v197 == v49 && v43 == v51)
            {

              v18 = v188;
            }

            else
            {
              v52 = sub_1004DF08C();

              v18 = v188;
              if ((v52 & 1) == 0)
              {
                goto LABEL_43;
              }
            }

            goto LABEL_35;
          }
        }

        else
        {
          v49 = 0;
          v51 = 0;
          if (v43)
          {
            goto LABEL_29;
          }
        }

        v18 = v188;
        if (v51)
        {

LABEL_43:

LABEL_44:
          v54 = v164;
          v55 = *(v163 + 16);
          v26 = v196;
          v25 = v190;
          if (v55)
          {
            *(v164 + 16) = (*(v164 + 16) & 1) == 0;
          }

          *(v163 + 16) = v32;
          v56 = v54;

          v44 = *(v56 + 16);
          goto LABEL_47;
        }
      }

LABEL_35:
      if (v39 == 0x70756F7267 && v38 == 0xE500000000000000)
      {

        v182 = 0;
        v26 = v196;
        v25 = v190;
        goto LABEL_48;
      }

      v53 = sub_1004DF08C();
      v26 = v196;
      if (v53)
      {

        v182 = 0;
        v25 = v190;
        goto LABEL_48;
      }

      if (v39 == 0x726568746FLL && v38 == 0xE500000000000000)
      {

        v182 = 1;
        v25 = v190;
        goto LABEL_48;
      }

      v123 = sub_1004DF08C();

      v25 = v190;
      if (v123)
      {
        v44 = 1;
        goto LABEL_47;
      }

LABEL_19:
      v44 = *(v164 + 16);
LABEL_47:
      v182 = v44;
LABEL_48:
      v57 = [v199 translationKey];
      if (v57)
      {
        v58 = v57;
        v59 = sub_1004DD43C();
        v180 = v60;
        v181 = v59;
      }

      else
      {
        v180 = 0;
        v181 = 0;
      }

      v184 = v27;
      v61 = [v189 v28[440]];
      v62 = &selRef_primaryVocalText;
      if (v61 != 2)
      {
        v62 = &selRef_lyricsText;
      }

      v63 = v199;
      v64 = [v199 *v62];
      v65 = [v64 string];

      v193 = sub_1004DD43C();
      v194 = v66;

      v67 = [v63 words];
      if (v67)
      {
        v68 = v67;
        sub_100006F10(0, &qword_1006494D8, MSVLyricsWord_ptr);
        v69 = sub_1004DD87C();

        *&v201[0] = v69;
        v70 = sub_100004CB8(&qword_1006494E0, &qword_1005389C0);
        v71 = sub_100042B08(&qword_100649528, &qword_1006494E0, &qword_1005389C0, &protocol conformance descriptor for [A]);
        v72 = v70;
        v73 = v175;
        v74 = Sequence.exclude(_:)(sub_100461B80, 0, v72, v71);
        v175 = v73;
      }

      else
      {
        v74 = _swiftEmptyArrayStorage;
      }

      v75 = swift_allocObject();
      v197 = v75;
      *(v75 + 16) = _swiftEmptyArrayStorage;
      v76 = (v75 + 16);
      v77 = swift_allocObject();
      v77[1] = 0u;
      v78 = v77 + 1;
      v77[2] = 0u;
      v77[3] = 0u;
      v195 = v77;
      v77[4] = 0u;
      v191 = *v192;
      v191(v26, 1, 1, v25);
      v23 = sub_1004DD3FC();
      v79 = [v167 dominantLanguageForString:v23];

      if (v79)
      {
        sub_1004DD43C();
        sub_1004D839C();

LABEL_60:
        v191(v18, 0, 1, v25);
        sub_1000107AC(v18, v26, &qword_100648D88, &qword_100537EA8);
        goto LABEL_61;
      }

      v80 = [v189 language];
      if (v80)
      {
        v81 = v80;
        v23 = sub_1004DD43C();

        sub_1004D839C();
        v26 = v196;
        goto LABEL_60;
      }

LABEL_61:
      if ([v189 v28[440]] == 2)
      {
        v82 = [objc_opt_self() standardUserDefaults];
        v23 = sub_1004DD3FC();
        v83 = [v82 BOOLForKey:v23];

        if ((v83 & 1) == 0)
        {
          v84 = v196;
          if ((*v176)(v196, 1, v25))
          {
            v85 = 0;
            v86 = 0;
          }

          else
          {
            v87 = v155;
            (*v153)(v155, v84, v25);
            v88 = v154;
            sub_1004D83AC();
            v89 = v87;
            v90 = v88;
            (*v161)(v89, v25);
            v91 = sub_1004D82FC();
            v92 = *(v91 - 8);
            if ((*(v92 + 48))(v90, 1, v91) == 1)
            {
              sub_10001074C(v90, &qword_100648D90, &unk_100537EB0);
              v85 = 0;
              v86 = 0;
            }

            else
            {
              v93 = v90;
              v94 = sub_1004D82DC();
              v86 = v95;
              v96 = v93;
              v18 = v188;
              (*(v92 + 8))(v96, v91);
              v85 = v94;
            }

            v25 = v190;
          }

          v97 = v199;
          v23 = sub_10046B44C(v199, v85, v86);

          swift_beginAccess();
          *v76 = v23;

          v98 = [v97 backgroundVocals];
          if (v98)
          {
            v99 = v98;
            v100 = [v189 language];
            if (v100)
            {
              v101 = v100;
              v102 = sub_1004DD43C();
              v23 = v103;
            }

            else
            {

              v102 = 0;
              v23 = 0;
            }

            sub_10046B800(v99, v102, v23, v202);
            v185 = v202[0];
            v177 = v202[3];
            v178 = v202[2];
            v179 = v202[1];
          }

          else
          {
            v185 = 0u;
            v178 = 0u;
            v179 = 0u;
            v177 = 0u;
          }

          swift_beginAccess();
          v104 = v78[1];
          v201[0] = *v78;
          v201[1] = v104;
          v105 = v78[3];
          v201[2] = v78[2];
          v201[3] = v105;
          v106 = v195;
          v107 = v179;
          v195[1] = v185;
          v106[2] = v107;
          v108 = v177;
          v106[3] = v178;
          v106[4] = v108;
          sub_10001074C(v201, &qword_100648D80, &qword_100537EA0);
        }
      }

      v109 = v173;
      sub_1000108DC(v196, v173, &qword_100648D88, &qword_100537EA8);
      if ((*v176)(v109, 1, v25) == 1)
      {
        sub_10001074C(v109, &qword_100648D88, &qword_100537EA8);
        v110 = v160;
      }

      else
      {
        v111 = v159;
        (*v157)(v159, v109, v25);
        v112 = sub_1004D83BC();
        (*v161)(v111, v25);
        v110 = v112 == 2;
      }

      v113 = v199;
      *&v185 = [v199 lineIndex];
      [v113 startTime];
      v115 = v114;
      [v113 endTime];
      v117 = v116;
      if (v74 >> 62)
      {
        v12 = sub_1004DED5C();
        if (!v12)
        {
LABEL_93:
          v122 = v199;
          [v199 startTime];
          v120 = v124;
          goto LABEL_94;
        }
      }

      else
      {
        v12 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v12)
        {
          goto LABEL_93;
        }
      }

      if ((v74 & 0xC000000000000001) != 0)
      {
        v118 = sub_1004DEB2C();
      }

      else
      {
        if (!*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_105;
        }

        v118 = *(v74 + 32);
      }

      v23 = v118;
      [v118 startTime];
      v120 = v119;

      v121 = v12 - 1;
      if (__OFSUB__(v12, 1))
      {
        goto LABEL_104;
      }

      if ((v74 & 0xC000000000000001) != 0)
      {
        v122 = sub_1004DEB2C();
      }

      else
      {
        if ((v121 & 0x8000000000000000) != 0)
        {
          goto LABEL_107;
        }

        if (v121 >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_108;
        }

        v122 = *(v74 + 8 * v121 + 32);
      }

LABEL_94:

      [v122 endTime];
      v126 = v125;

      LODWORD(v177) = v198[2] == 0;
      sub_1000108DC(v196, v18, &qword_100648D88, &qword_100537EA8);
      v127 = swift_allocObject();
      *&v179 = v127;
      v128 = v172;
      *(v127 + 16) = v172;
      *(v127 + 24) = v165;
      v129 = swift_allocObject();
      *&v178 = v129;
      *(v129 + 16) = v128;
      *(v129 + 24) = v110;
      v130 = swift_allocObject();
      v132 = v180;
      v131 = v181;
      *(v130 + 2) = v128;
      *(v130 + 3) = v131;
      v134 = v193;
      v133 = v194;
      *(v130 + 4) = v132;
      *(v130 + 5) = v134;
      *(v130 + 6) = v133;
      v135 = swift_allocObject();
      *(v135 + 2) = v128;
      *(v135 + 3) = v131;
      v136 = v197;
      *(v135 + 4) = v132;
      *(v135 + 5) = v136;
      v137 = swift_allocObject();
      v137[2] = v128;
      v137[3] = v131;
      v138 = v195;
      v137[4] = v132;
      v137[5] = v138;
      v139 = v170;
      v194 = v170[7];
      v140 = v186;
      v191(v186 + v194, 1, 1, v190);
      v140[2] = v185;
      *v140 = v115;
      v140[1] = v117;
      *(v140 + v139[10]) = v120;
      *(v140 + v139[11]) = v126;
      *(v140 + v139[12]) = v177;
      swift_bridgeObjectRetain_n();
      swift_retain_n();

      sub_1000107AC(v188, v140 + v194, &qword_100648D88, &qword_100537EA8);
      v141 = (v140 + v139[13]);
      *v141 = v131;
      v141[1] = v132;
      *(v140 + v139[8]) = v182;
      *(v140 + v139[9]) = v171;
      v142 = (v140 + v139[14]);
      v143 = v179;
      *v142 = sub_1004702E0;
      v142[1] = v143;
      v144 = (v140 + v139[15]);
      v145 = v178;
      *v144 = sub_10047040C;
      v144[1] = v145;
      v146 = (v140 + v139[16]);
      *v146 = sub_100470348;
      v146[1] = v130;
      v147 = (v140 + v139[17]);
      *v147 = sub_10047035C;
      v147[1] = v135;
      v148 = (v140 + v139[18]);
      *v148 = sub_1004703B0;
      v148[1] = v137;
      sub_10046DD7C(v140, v187, type metadata accessor for Lyrics.TextLine);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v198 = sub_100462D20(0, v198[2] + 1, 1, v198, &qword_100649470, &qword_100538960, type metadata accessor for Lyrics.TextLine);
      }

      v23 = v174;
      v149 = v184;
      v28 = &selRef_isSharedListeningSession;
      v12 = v198[2];
      v150 = v198[3];
      v25 = v190;
      v18 = v188;
      v26 = v196;
      if (v12 >= v150 >> 1)
      {
        v198 = sub_100462D20((v150 > 1), v12 + 1, 1, v198, &qword_100649470, &qword_100538960, type metadata accessor for Lyrics.TextLine);
      }

      v151 = v198;
      v198[2] = v12 + 1;
      sub_10046E230(v187, v151 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v12, type metadata accessor for Lyrics.TextLine);
      sub_10046DDE4(v186, type metadata accessor for Lyrics.TextLine);
      sub_10001074C(v26, &qword_100648D88, &qword_100537EA8);

      v27 = v149 + 1;
      if (v183 == v166)
      {
        goto LABEL_102;
      }
    }
  }

  v198 = _swiftEmptyArrayStorage;
LABEL_102:

  return v198;
}

uint64_t sub_10046D058()
{

  return swift_deallocObject();
}

uint64_t sub_10046D098()
{

  return swift_deallocObject();
}

void *sub_10046D0F8(uint64_t a1, void (*a2)(_OWORD *__return_ptr, id, uint64_t, uint64_t), uint64_t a3, void *a4)
{
  sub_100004CB8(&qword_100649488, &qword_100538978);
  result = sub_1004DED8C();
  v6 = 0;
  v35 = result;
  v36 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v34 = result + 8;
  if (v12)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = *(v36 + 56);
      v19 = (*(v36 + 48) + 16 * v17);
      v20 = v19[1];
      v42 = *v19;
      v21 = *(v18 + 8 * v17);

      v22 = v21;
      v23 = [a4 language];
      v24 = sub_1004DD43C();
      v26 = v25;

      a2(v40, v22, v24, v26);

      result = v35;
      *(v34 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v27 = (v35[6] + 16 * v17);
      *v27 = v42;
      v27[1] = v20;
      v28 = v35[7] + 88 * v17;
      v29 = v40[1];
      *v28 = v40[0];
      *(v28 + 16) = v29;
      *(v28 + 80) = v41;
      v30 = v40[4];
      *(v28 + 48) = v40[3];
      *(v28 + 64) = v30;
      *(v28 + 32) = v40[2];
      v31 = v35[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        break;
      }

      v35[2] = v33;
      v12 = v39;
      if (!v39)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return result;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v39 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10046D308(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  v95 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_1004DE9BC() > 1)
    {
      v93 = v2;
      v90 = 0;
      v3 = &_swiftEmptySetSingleton;
      v103 = &_swiftEmptySetSingleton;

      sub_1004DE98C();
      v4 = sub_1004DE9EC();
      if (v4)
      {
        v5 = v4;
        sub_100006F10(0, &qword_100648E58, MSVLyricsAgent_ptr);
        v6 = v5;
        v7 = 0x6E6F73726570;
        do
        {
          v97 = v6;
          swift_dynamicCast();
          v8 = [v98 type];
          if (!v8)
          {
LABEL_5:

            goto LABEL_6;
          }

          v9 = v8;
          v10 = sub_1004DD43C();
          v12 = v11;

          if (v10 == 0x6E6F73726570 && v12 == 0xE600000000000000)
          {
          }

          else
          {
            v14 = sub_1004DF08C();

            if ((v14 & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v15 = v98;
          v16 = *(v3 + 16);
          if (*(v3 + 24) <= v16)
          {
            sub_100473608(v16 + 1);
          }

          v3 = v103;
          v17 = sub_1004DE5EC(v103[5]);
          v18 = (v103 + 7);
          v19 = -1 << *(v103 + 32);
          v20 = v17 & ~v19;
          v21 = v20 >> 6;
          if (((-1 << v20) & ~v103[(v20 >> 6) + 7]) != 0)
          {
            v22 = __clz(__rbit64((-1 << v20) & ~v103[(v20 >> 6) + 7])) | v20 & 0x7FFFFFFFFFFFFFC0;
            goto LABEL_27;
          }

          v23 = 0;
          v24 = (63 - v19) >> 6;
          do
          {
            if (++v21 == v24 && (v23 & 1) != 0)
            {
              __break(1u);
LABEL_127:
              __break(1u);
              goto LABEL_128;
            }

            v25 = v21 == v24;
            if (v21 == v24)
            {
              v21 = 0;
            }

            v23 |= v25;
            v26 = *&v18[8 * v21];
          }

          while (v26 == -1);
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
LABEL_27:
          *&v18[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
          *(*(v3 + 48) + 8 * v22) = v15;
          ++*(v3 + 16);
LABEL_6:
          v6 = sub_1004DE9EC();
        }

        while (v6);
      }

      v38 = v95;
      if ((v3 & 0xC000000000000001) == 0)
      {
        goto LABEL_56;
      }

LABEL_35:
      v91 = sub_1004DE9BC();
      goto LABEL_57;
    }

    return 0;
  }

  if (*(a1 + 16) <= 1uLL)
  {
    return 0;
  }

  v93 = 0;
  v90 = 0;
  v27 = *(a1 + 32);
  v28 = v27 & 0x3F;
  v91 = ((1 << v27) + 63) >> 6;
  v15 = 8 * v91;

  v29 = v28 > 0xD;
  v7 = a1;
  if (v29)
  {
    goto LABEL_130;
  }

LABEL_30:
  v89 = &v89;
  __chkstk_darwin();
  v92 = &v89 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v92, v15);
  v94 = 0;
  v30 = 0;
  v32 = *(v7 + 56);
  v7 += 56;
  v31 = v32;
  v33 = 1 << *(v7 - 24);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v31;
  v36 = (v33 + 63) >> 6;
  do
  {
    do
    {
      while (1)
      {
        if (!v35)
        {
          v40 = v30;
          while (1)
          {
            v30 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              goto LABEL_129;
            }

            if (v30 >= v36)
            {
              goto LABEL_55;
            }

            v41 = *(v7 + 8 * v30);
            ++v40;
            if (v41)
            {
              v39 = __clz(__rbit64(v41));
              v35 = (v41 - 1) & v41;
              goto LABEL_44;
            }
          }
        }

        v39 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
LABEL_44:
        v42 = v39 | (v30 << 6);
        v15 = *(*(v95 + 48) + 8 * v42);
        v43 = [v15 type];
        if (v43)
        {
          break;
        }
      }

      v44 = v43;
      v45 = sub_1004DD43C();
      v47 = v46;

      if (v45 == 0x6E6F73726570 && v47 == 0xE600000000000000)
      {

        break;
      }

      v49 = sub_1004DF08C();
    }

    while ((v49 & 1) == 0);
    *&v92[(v42 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v42;
  }

  while (!__OFADD__(v94++, 1));
  __break(1u);
LABEL_55:
  v38 = v95;
  v3 = sub_10048A820(v92, v91, v94, v95);
  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_35;
  }

LABEL_56:
  while (2)
  {
    v91 = *(v3 + 16);
LABEL_57:

    if (v93)
    {
      swift_unknownObjectRetain();
      sub_1004DE98C();
      sub_100006F10(0, &qword_100648E58, MSVLyricsAgent_ptr);
      sub_100470144();
      sub_1004DDC7C();
      v38 = v98;
      v94 = v99;
      v15 = v100;
      v7 = v101;
      v51 = v102;
    }

    else
    {
      v52 = -1 << *(v38 + 32);
      v53 = *(v38 + 56);
      v94 = v38 + 56;
      v15 = ~v52;
      v54 = -v52;
      if (v54 < 64)
      {
        v55 = ~(-1 << v54);
      }

      else
      {
        v55 = -1;
      }

      v51 = v55 & v53;

      v7 = 0;
    }

    v92 = v15;
    v56 = (v15 + 64) >> 6;
    while (1)
    {
      while (1)
      {
        if (v38 < 0)
        {
          v60 = sub_1004DE9EC();
          if (!v60 || (v97 = v60, sub_100006F10(0, &qword_100648E58, MSVLyricsAgent_ptr), swift_dynamicCast(), (v59 = v103) == 0))
          {
LABEL_81:
            sub_100010458(v38);
            LODWORD(v92) = 1;
            goto LABEL_82;
          }
        }

        else
        {
          v57 = v7;
          for (i = v51; !i; ++v57)
          {
            v7 = v57 + 1;
            if (__OFADD__(v57, 1))
            {
              goto LABEL_127;
            }

            if (v7 >= v56)
            {
              goto LABEL_81;
            }

            i = *(v94 + 8 * v7);
          }

          v51 = (i - 1) & i;
          v59 = *(*(v38 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(i)))));
          if (!v59)
          {
            goto LABEL_81;
          }
        }

        v61 = [v59 type];
        if (v61)
        {
          break;
        }
      }

      v62 = v61;
      v63 = v38;
      v15 = sub_1004DD43C();
      v65 = v64;

      if (v15 == 0x70756F7267 && v65 == 0xE500000000000000)
      {
        break;
      }

      v15 = sub_1004DF08C();

      v38 = v63;
      if (v15)
      {
        goto LABEL_118;
      }
    }

    v38 = v63;
LABEL_118:
    sub_100010458(v38);
    LODWORD(v92) = 0;
LABEL_82:
    v67 = v95;
    if (v93)
    {
      swift_unknownObjectRetain();
      sub_1004DE98C();
      sub_100006F10(0, &qword_100648E58, MSVLyricsAgent_ptr);
      sub_100470144();
      sub_1004DDC7C();
      v67 = v103;
      v94 = v104;
      v7 = v105;
      v68 = v106;
      v69 = v107;
    }

    else
    {
      v70 = -1 << *(v95 + 32);
      v71 = *(v95 + 56);
      v94 = v95 + 56;
      v7 = ~v70;
      v72 = -v70;
      if (v72 < 64)
      {
        v73 = ~(-1 << v72);
      }

      else
      {
        v73 = -1;
      }

      v69 = v73 & v71;

      v68 = 0;
    }

    v95 = v7;
    v74 = (v7 + 64) >> 6;
LABEL_90:
    if (v67 < 0)
    {
      v78 = sub_1004DE9EC();
      if (!v78 || (v96 = v78, sub_100006F10(0, &qword_100648E58, MSVLyricsAgent_ptr), swift_dynamicCast(), (v77 = v97) == 0))
      {
LABEL_106:
        sub_100010458(v67);
        if (v91 == 2)
        {
          v85 = 1;
        }

        else
        {
          v85 = 2;
        }

        if (v91 == 1)
        {
          v85 = 0;
        }

        if (v91 >= 3)
        {
          v86 = 2;
        }

        else
        {
          v86 = 0x10000u >> (8 * v91);
        }

        if (v92)
        {
          return v85;
        }

        else
        {
          return v86;
        }
      }
    }

    else
    {
      v75 = v68;
      v76 = v69;
      if (!v69)
      {
        while (1)
        {
          v68 = v75 + 1;
          if (__OFADD__(v75, 1))
          {
            break;
          }

          if (v68 >= v74)
          {
            goto LABEL_106;
          }

          v76 = *(v94 + 8 * v68);
          ++v75;
          if (v76)
          {
            goto LABEL_95;
          }
        }

LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
        {
          v87 = swift_slowAlloc();
          v88 = v90;
          v3 = sub_1004688BC(v87, v91, v7, sub_1004617E4);
          v90 = v88;

          v38 = v7;
          if ((v3 & 0xC000000000000001) == 0)
          {
            continue;
          }

          goto LABEL_35;
        }

        goto LABEL_30;
      }

LABEL_95:
      v69 = (v76 - 1) & v76;
      v77 = *(*(v67 + 48) + ((v68 << 9) | (8 * __clz(__rbit64(v76)))));
      if (!v77)
      {
        goto LABEL_106;
      }
    }

    break;
  }

  v79 = [v77 type];
  if (!v79)
  {

    goto LABEL_90;
  }

  v80 = v79;
  v7 = v67;
  v81 = sub_1004DD43C();
  v83 = v82;

  if (v81 != 0x726568746FLL || v83 != 0xE500000000000000)
  {
    v15 = sub_1004DF08C();

    v67 = v7;
    if (v15)
    {
      goto LABEL_120;
    }

    goto LABEL_90;
  }

  v67 = v7;
LABEL_120:
  sub_100010458(v67);
  if (v92)
  {
    if (v91 >= 3)
    {
      return 2;
    }

    else
    {
      return 0x10200u >> (8 * v91);
    }
  }

  else if (v91 == 2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_10046DD7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10046DDE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10046DE44()
{

  return swift_deallocObject();
}

_BYTE **sub_10046DF88(_BYTE **result)
{
  v2 = *result;
  *v2 = *(v1 + 16);
  *result = v2 + 1;
  return result;
}

uint64_t sub_10046DFC8()
{

  return swift_deallocObject();
}

void sub_10046E010(unint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v6 = (*(v3 + 16))(a1, a2);
  v8 = sub_1004633D0(v6, v7, a3);

  v9 = *a1;
  *v9 = v8;
  *a1 = v9 + 1;
}

uint64_t sub_10046E06C(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v4 = a1[4];
    v3 = a1[5];

    sub_100004CB8(&qword_1006494A8, &unk_10053A180);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100511DA0;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 32) = v4;
    *(v5 + 40) = v3;

    sub_1004DEA0C();

    v6 = v1 - 1;
    if (v1 != 1)
    {
      v7 = a1 + 7;
      do
      {
        v9 = *(v7 - 1);
        v8 = *v7;

        v12._countAndFlagsBits = 8236;
        v12._object = 0xE200000000000000;
        sub_1004DD5FC(v12);
        sub_100004CB8(&qword_1006494A8, &unk_10053A180);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_100511DA0;
        *(v10 + 56) = &type metadata for String;
        *(v10 + 32) = v9;
        *(v10 + 40) = v8;

        sub_1004DEA0C();

        v7 += 2;
        --v6;
      }

      while (v6);
    }
  }

  v13._countAndFlagsBits = 93;
  v13._object = 0xE100000000000000;
  sub_1004DD5FC(v13);
  return 91;
}

uint64_t sub_10046E230(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10046E2C8()
{
  result = qword_100648E28;
  if (!qword_100648E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100648E28);
  }

  return result;
}

unint64_t sub_10046E31C()
{
  result = qword_100648E38;
  if (!qword_100648E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100648E38);
  }

  return result;
}

unint64_t sub_10046E374()
{
  result = qword_100648E60;
  if (!qword_100648E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100648E60);
  }

  return result;
}

unint64_t sub_10046E3CC()
{
  result = qword_100648E68;
  if (!qword_100648E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100648E68);
  }

  return result;
}

unint64_t sub_10046E424()
{
  result = qword_100648E70;
  if (!qword_100648E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100648E70);
  }

  return result;
}

uint64_t sub_10046E4C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10046E50C()
{
  result = qword_100648E80;
  if (!qword_100648E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100648E80);
  }

  return result;
}

unint64_t sub_10046E564()
{
  result = qword_100648E88;
  if (!qword_100648E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100648E88);
  }

  return result;
}

unint64_t sub_10046E5BC()
{
  result = qword_100648E90;
  if (!qword_100648E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100648E90);
  }

  return result;
}

unint64_t sub_10046E614()
{
  result = qword_100648E98;
  if (!qword_100648E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100648E98);
  }

  return result;
}

unint64_t sub_10046E66C()
{
  result = qword_100648EA0;
  if (!qword_100648EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100648EA0);
  }

  return result;
}

unint64_t sub_10046E6C4()
{
  result = qword_100648EA8;
  if (!qword_100648EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100648EA8);
  }

  return result;
}

unint64_t sub_10046E760()
{
  result = qword_100648EC0;
  if (!qword_100648EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100648EC0);
  }

  return result;
}

void sub_10046E7BC(uint64_t a1)
{
  sub_10046E970(319, &qword_100648F00, &type metadata accessor for Locale.Language);
  if (v1 <= 0x3F)
  {
    sub_10046E970(319, &unk_10064AA50, type metadata accessor for Lyrics.Translation);
    if (v2 <= 0x3F)
    {
      sub_10046E970(319, &unk_100648F08, type metadata accessor for Lyrics.Transliteration);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10046E970(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004DE7CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 sub_10046E9C4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10046E9E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_10046EA28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Lyrics.Word.Emphasis(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

__n128 sub_10046EAAC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10046EAC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10046EB10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10046EB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004CB8(&qword_100648D88, &qword_100537EA8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10046EC60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100004CB8(&qword_100648D88, &qword_100537EA8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void sub_10046ED28(uint64_t a1)
{
  sub_10046E970(319, &qword_100648F00, &type metadata accessor for Locale.Language);
  if (v1 <= 0x3F)
  {
    sub_10046EE80(319, &qword_100649160, &type metadata for Lyrics.Capability, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_10046EE80(319, &unk_100649168, &type metadata for String, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_10046EED0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10046EE80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_10046EED0()
{
  result = qword_10064A9D0;
  if (!qword_10064A9D0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10064A9D0);
  }

  return result;
}

__n128 sub_10046EF20(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10046EF34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10046EF7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10046EFDC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10046EFF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10046F034(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_10046F08C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10046F0A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10046F0E8(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void sub_10046F19C(uint64_t a1)
{
  sub_1004D83DC();
  if (v1 <= 0x3F)
  {
    sub_10046F23C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10046F23C()
{
  if (!qword_100649238)
  {
    v0 = sub_1004DD25C();
    if (!v1)
    {
      atomic_store(v0, &qword_100649238);
    }
  }
}

uint64_t sub_10046F2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1004D83DC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10046F370(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1004D83DC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10046F434(uint64_t a1)
{
  sub_10046EE80(319, &unk_100649168, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1004D83DC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10046F508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004D83DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10046F5DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1004D83DC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10046F698(uint64_t a1)
{
  sub_1004D83DC();
  if (v1 <= 0x3F)
  {
    sub_10046F23C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10046F790(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10046F7A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10046F7CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_10046F814(uint64_t result, int a2, int a3)
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

Swift::Int sub_10046F878(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_1006493A8, &qword_100538888);
    v3 = sub_1004DEA8C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_1004DF26C();
      sub_1004DF27C(v10);
      result = sub_1004DF2BC();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10046F9EC()
{
  v1 = type metadata accessor for Lyrics.TextLine(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v1 + 28);
  v4 = sub_1004D83DC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_10046FBF4()
{
  v1 = *(type metadata accessor for Lyrics.Transliteration(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1004D83DC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_10046FD54()
{

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

void sub_10046FDD8(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1004DED5C())
    {
LABEL_3:
      sub_100004CB8(&qword_100649430, &qword_100538920);
      v3 = sub_1004DEA8C();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1004DED5C();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_1004DEB2C();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1004DE5EC(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for SyncedLyricsLineView(0);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_1004DE5FC();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = sub_1004DE5EC(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for SyncedLyricsLineView(0);
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_1004DE5FC();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_1004700A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_10047010C()
{

  return swift_deallocObject();
}

unint64_t sub_100470144()
{
  result = qword_1006494B8;
  if (!qword_1006494B8)
  {
    sub_100006F10(255, &qword_100648E58, MSVLyricsAgent_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006494B8);
  }

  return result;
}

id sub_10047021C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 startTime];
  *a2 = v4;
  return result;
}

uint64_t sub_100470264()
{
  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1004702A8()
{

  return swift_deallocObject();
}

uint64_t sub_100470300()
{

  return swift_deallocObject();
}

uint64_t sub_100470368()
{

  return swift_deallocObject();
}

uint64_t *LyricsOptionsManager.shared.unsafeMutableAddressor()
{
  if (qword_100648BC8 != -1)
  {
    swift_once();
  }

  return &static LyricsOptionsManager.shared;
}

Swift::Int sub_100470530()
{
  v1 = *v0;
  sub_1004DF26C();
  sub_1004DF27C(qword_100538C10[v1]);
  return sub_1004DF2BC();
}

Swift::Int sub_1004705B8()
{
  v1 = *v0;
  sub_1004DF26C();
  sub_1004DF27C(qword_100538C10[v1]);
  return sub_1004DF2BC();
}

uint64_t sub_100470604@<X0>(Swift::Int *a1@<X0>, LyricsX::LyricsOptionsManager::Option_optional *a2@<X8>)
{
  result = _s7LyricsX0A14OptionsManagerC6OptionO8rawValueAESgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

uint64_t LyricsOptionsManager.Observer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_1004706A0()
{
  type metadata accessor for LyricsOptionsManager();
  v0 = swift_allocObject();
  result = sub_100470F10(v0);
  static LyricsOptionsManager.shared = v0;
  return result;
}

double static LyricsOptionsManager.shared.getter()
{
  if (qword_100648BC8 != -1)
  {
    swift_once();
  }

  return result;
}

double sub_100470738()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = [v2 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1004DD21C();

      sub_1004DEA4C();
      if (*(v5 + 16) && (v6 = v0, v7 = sub_100028F3C(v22), (v8 & 1) != 0))
      {
        sub_10000904C(*(v5 + 56) + 32 * v7, &v23);
        sub_1000105EC(v22);

        sub_100004CB8(&qword_100649560, &qword_100538AB8);
        if (swift_dynamicCast())
        {
          if (!sub_100460214(6, *(v0 + 40)))
          {
            if (MEMORY[0xD000000000000025])
            {
              v9 = sub_100028F80(0xD00000000000001CLL, 0x80000001004FAEE0);
              if (v10)
              {
                sub_100010678(MEMORY[0xD00000000000004D] + 40 * v9, v22);
                if (swift_dynamicCast())
                {
                  v22[0] = *(v0 + 40);
                  if (v23)
                  {

                    sub_100472854(&v23, 0);
                  }

                  else
                  {

                    sub_1004752C8(0);
                  }

                  v11 = *(v0 + 40);
                  *(v0 + 40) = v22[0];
                  sub_100470CAC(v11);
                }
              }
            }
          }

          if (!sub_100460214(7, *(v0 + 40)))
          {
            if (MEMORY[0xD000000000000025])
            {
              v12 = sub_100028F80(0xD000000000000020, 0x80000001004FAF00);
              if (v13)
              {
                sub_100010678(MEMORY[0xD00000000000004D] + 40 * v12, v22);
                if (swift_dynamicCast())
                {
                  v22[0] = *(v0 + 40);
                  if (v23)
                  {

                    sub_100472854(&v23, 1);
                  }

                  else
                  {

                    sub_1004752C8(1);
                  }

                  v14 = *(v0 + 40);
                  *(v0 + 40) = v22[0];
                  sub_100470CAC(v14);
                }
              }
            }
          }

          if (sub_100460214(8, *(v0 + 40)))
          {
            goto LABEL_35;
          }

          if (!MEMORY[0xD000000000000025])
          {
            goto LABEL_35;
          }

          v15 = sub_100028F80(0xD000000000000018, 0x80000001004FAF30);
          if ((v16 & 1) == 0)
          {
            goto LABEL_35;
          }

          sub_100010678(MEMORY[0xD00000000000004D] + 40 * v15, v22);

          if (swift_dynamicCast())
          {
            v18 = v23;
            v17 = v24;
            if (v23 == 0x73636972796CLL && v24 == 0xE600000000000000)
            {

              v19 = v6;
LABEL_33:
              v22[0] = *(v19 + 40);

              sub_1004752C8(3);
LABEL_34:
              v20 = *(v19 + 40);
              *(v19 + 40) = v22[0];
              sub_100470CAC(v20);
LABEL_35:

              return result;
            }

            v19 = v6;
            if (sub_1004DF08C())
            {

              goto LABEL_33;
            }

            if (v18 == 0x74696C736E617274 && v17 == 0xEF6E6F6974617265)
            {

LABEL_40:
              v22[0] = *(v19 + 40);

              sub_100472854(&v23, 3);
              goto LABEL_34;
            }

            v21 = sub_1004DF08C();

            if (v21)
            {
              goto LABEL_40;
            }
          }
        }
      }

      else
      {

        sub_1000105EC(v22);
      }
    }
  }

  return result;
}

void LyricsOptionsManager.bag.setter(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  v4 = a1;

  sub_100470738();
}

double (*LyricsOptionsManager.bag.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100470C78;
}

double sub_100470C78(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_100470738();
  }

  return result;
}

void sub_100470CAC(uint64_t a1)
{
  if ((sub_1004722C4(*(v1 + 40), a1) & 1) == 0)
  {
    v2 = *(v1 + 40);
    v5 = *(v2 + 56);
    v4 = v2 + 56;
    v3 = v5;
    v6 = 1 << *(*(v1 + 40) + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & v3;
    v9 = (v6 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v10 = 0;
    v11 = _swiftEmptyArrayStorage;
    if (v8)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        sub_100004CB8(&qword_100649518, &qword_100538AC0);
        sub_10047651C();
        sub_1004DD30C();

        v19 = [objc_opt_self() standardUserDefaults];
        v20 = sub_1004DD3FC();

        v21 = sub_1004DD3FC();
        [v19 setObject:v20 forKey:v21];

        return;
      }

      v8 = *(v4 + 8 * v12);
      ++v10;
      if (v8)
      {
        v10 = v12;
        do
        {
LABEL_9:
          v13 = sub_1004DEFFC();
          v15 = v14;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_1004629D8(0, *(v11 + 2) + 1, 1, v11);
          }

          v17 = *(v11 + 2);
          v16 = *(v11 + 3);
          if (v17 >= v16 >> 1)
          {
            v11 = sub_1004629D8((v16 > 1), v17 + 1, 1, v11);
          }

          v8 &= v8 - 1;
          *(v11 + 2) = v17 + 1;
          v18 = &v11[16 * v17];
          *(v18 + 4) = v13;
          *(v18 + 5) = v15;
        }

        while (v8);
      }
    }

    __break(1u);
  }
}

void *sub_100470F10(uint64_t a1)
{
  v2 = v1;
  v1[2] = 0;
  v3 = type metadata accessor for LyricsOptionsManager.Observer();
  v1[3] = WeakArray.init(_:)(_swiftEmptyArrayStorage, v3);
  v1[4] = 0;
  v1[5] = &_swiftEmptySetSingleton;
  sub_100006F10(0, &qword_100649780, NSUserDefaults_ptr);
  strcpy(v8, "lyricsOptions");
  v8[7] = -4864;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = sub_10046E2C8();

  v6 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v8, 0, 0, sub_1004765B8, v4, &type metadata for String, v5);

  v2[4] = v6;

  sub_10047118C();
  return v2;
}

double sub_10047105C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + 40);

    sub_10047118C();
    swift_beginAccess();
    v6 = *(v4 + 24);
    v7 = type metadata accessor for LyricsOptionsManager.Observer();

    v10 = static MPMediaLibraryFilteringOptions.none.getter();
    while (v10 != WeakArray.endIndex.getter(v6, v7, v8, v9))
    {
      v12 = WeakArray.subscript.getter(v10, v6, v7, v11);
      v10 = WeakArray.index(after:)(v10);
      if (v12)
      {
        v13 = *(v12 + 16);

        v13(v5);
      }
    }
  }

  return result;
}

void sub_10047118C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1004DD3FC();
  v2 = [v0 stringForKey:v1];

  if (v2)
  {
    v3 = sub_1004DD43C();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  v45 = v3;
  v46 = v5;
  sub_10046E2C8();
  v6 = sub_1004DE82C();

  v7 = *(v6 + 16);
  if (!v7)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_100:

    v42 = sub_10048F960(v9);

    v43 = *(v44 + 40);
    *(v44 + 40) = v42;
    sub_100470CAC(v43);

    return;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (v8 < *(v6 + 16))
  {
    v10 = (v6 + 32 + 16 * v8);
    v11 = *v10;
    v12 = v10[1];
    ++v8;
    v13 = HIBYTE(v12) & 0xF;
    v14 = v11 & 0xFFFFFFFFFFFFLL;
    if ((v12 & 0x2000000000000000) != 0)
    {
      v15 = HIBYTE(v12) & 0xF;
    }

    else
    {
      v15 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15)
    {
      goto LABEL_7;
    }

    if ((v12 & 0x1000000000000000) == 0)
    {
      if ((v12 & 0x2000000000000000) != 0)
      {
        v45 = v11;
        v46 = v12 & 0xFFFFFFFFFFFFFFLL;
        if (v11 == 43)
        {
          if (!v13)
          {
            goto LABEL_102;
          }

          if (--v13)
          {
            v18 = 0;
            v28 = &v45 + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                break;
              }

              v30 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                break;
              }

              ++v28;
              if (!--v13)
              {
                goto LABEL_70;
              }
            }
          }
        }

        else if (v11 == 45)
        {
          if (!v13)
          {
            goto LABEL_104;
          }

          if (--v13)
          {
            v18 = 0;
            v22 = &v45 + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                break;
              }

              v24 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = v24 - v23;
              if (__OFSUB__(v24, v23))
              {
                break;
              }

              ++v22;
              if (!--v13)
              {
                goto LABEL_70;
              }
            }
          }
        }

        else if (v13)
        {
          v18 = 0;
          v33 = &v45;
          while (1)
          {
            v34 = *v33 - 48;
            if (v34 > 9)
            {
              break;
            }

            v35 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v35 + v34;
            if (__OFADD__(v35, v34))
            {
              break;
            }

            v33 = (v33 + 1);
            if (!--v13)
            {
              goto LABEL_70;
            }
          }
        }
      }

      else
      {
        if ((v11 & 0x1000000000000000) != 0)
        {
          v16 = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v16 = sub_1004DEB6C();
        }

        v17 = *v16;
        if (v17 == 43)
        {
          if (v14 < 1)
          {
            goto LABEL_105;
          }

          v13 = v14 - 1;
          if (v14 != 1)
          {
            v18 = 0;
            if (!v16)
            {
              goto LABEL_61;
            }

            v25 = v16 + 1;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                break;
              }

              v27 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = v27 + v26;
              if (__OFADD__(v27, v26))
              {
                break;
              }

              ++v25;
              if (!--v13)
              {
                goto LABEL_70;
              }
            }
          }
        }

        else if (v17 == 45)
        {
          if (v14 < 1)
          {
            goto LABEL_103;
          }

          v13 = v14 - 1;
          if (v14 != 1)
          {
            v18 = 0;
            if (v16)
            {
              v19 = v16 + 1;
              while (1)
              {
                v20 = *v19 - 48;
                if (v20 > 9)
                {
                  goto LABEL_69;
                }

                v21 = 10 * v18;
                if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                {
                  goto LABEL_69;
                }

                v18 = v21 - v20;
                if (__OFSUB__(v21, v20))
                {
                  goto LABEL_69;
                }

                ++v19;
                if (!--v13)
                {
                  goto LABEL_70;
                }
              }
            }

LABEL_61:
            LOBYTE(v13) = 0;
LABEL_70:
            if (v13)
            {
              goto LABEL_7;
            }

            goto LABEL_71;
          }
        }

        else
        {
          if (!v14)
          {
            goto LABEL_69;
          }

          v18 = 0;
          if (!v16)
          {
            goto LABEL_61;
          }

          while (1)
          {
            v31 = *v16 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v32 + v31;
            if (__OFADD__(v32, v31))
            {
              break;
            }

            ++v16;
            if (!--v14)
            {
              goto LABEL_61;
            }
          }
        }
      }

LABEL_69:
      v18 = 0;
      LOBYTE(v13) = 1;
      goto LABEL_70;
    }

    sub_100475C8C(v11, v12, 10);
    v18 = v39;
    v41 = v40;

    if (v41)
    {
      goto LABEL_7;
    }

LABEL_71:
    if (v18 > 4)
    {
      if (v18 <= 6)
      {
        if (v18 == 5)
        {
          v36 = 5;
        }

        else
        {
          v36 = 6;
        }

        goto LABEL_92;
      }

      switch(v18)
      {
        case 7:
          v36 = 7;
          goto LABEL_92;
        case 8:
          v36 = 8;
          goto LABEL_92;
        case 1000:
          v36 = 9;
LABEL_92:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_100462AE4(0, *(v9 + 2) + 1, 1, v9);
          }

          v38 = *(v9 + 2);
          v37 = *(v9 + 3);
          if (v38 >= v37 >> 1)
          {
            v9 = sub_100462AE4((v37 > 1), v38 + 1, 1, v9);
          }

          *(v9 + 2) = v38 + 1;
          v9[v38 + 32] = v36;
          break;
      }
    }

    else
    {
      if (v18 > 1)
      {
        if (v18 == 2)
        {
          v36 = 2;
        }

        else if (v18 == 3)
        {
          v36 = 3;
        }

        else
        {
          v36 = 4;
        }

        goto LABEL_92;
      }

      if (!v18)
      {
        v36 = 0;
        goto LABEL_92;
      }

      if (v18 == 1)
      {
        v36 = 1;
        goto LABEL_92;
      }
    }

LABEL_7:
    if (v8 == v7)
    {
      goto LABEL_100;
    }
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
}

uint64_t LyricsOptionsManager.addObserver(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LyricsOptionsManager.Observer();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();

  v5 = sub_100004CB8(&qword_100649558, &qword_100538AB0);
  WeakArray.append(_:)(v4, v5);
  swift_endAccess();
  return v4;
}

Swift::Void __swiftcall LyricsOptionsManager.insert(_:)(LyricsX::LyricsOptionsManager::Option a1)
{
  v2 = a1;
  if (a1 - 2 >= 8)
  {
    v7 = *(v1 + 40);
    if (a1)
    {

      v4 = 7;
    }

    else
    {

      v4 = 6;
    }

    sub_100472854(&v8, v4);
    v5 = *(v1 + 40);
    *(v1 + 40) = v7;
    sub_100470CAC(v5);
  }

  v6 = *(v1 + 40);

  sub_100472854(&v8, v2);
  v3 = *(v1 + 40);
  *(v1 + 40) = v6;
  sub_100470CAC(v3);
}

Swift::Void __swiftcall LyricsOptionsManager.remove(_:)(LyricsX::LyricsOptionsManager::Option a1)
{
  if (a1 - 2 >= 8)
  {
    v7 = *(v1 + 40);
    if (a1)
    {

      v4 = 7;
    }

    else
    {

      v4 = 6;
    }

    sub_100472854(&v6, v4);
    v5 = *(v1 + 40);
    *(v1 + 40) = v7;
    sub_100470CAC(v5);
  }

  v7 = *(v1 + 40);

  sub_1004752C8(a1);
  v3 = *(v1 + 40);
  *(v1 + 40) = v7;
  sub_100470CAC(v3);
}

Swift::Bool __swiftcall LyricsOptionsManager.contains(_:)(LyricsX::LyricsOptionsManager::Option a1)
{
  if (a1 >= LyricsX_LyricsOptionsManager_Option_debugMode)
  {
    v2 = a1;
    has_internal_content = os_variant_has_internal_content();
    a1 = v2;
    if (!has_internal_content)
    {
      return 0;
    }
  }

  v4 = *(v1 + 40);

  return sub_100460214(a1, v4);
}

uint64_t LyricsOptionsManager.isDefaultScriptSupported(for:)(uint64_t a1)
{
  sub_100004CB8(&qword_100648DC0, &qword_100537EE0);
  __chkstk_darwin();
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v47 - v5;
  sub_100004CB8(&qword_100648D90, &unk_100537EB0);
  __chkstk_darwin();
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v47 - v9;
  v11 = sub_1004D83DC();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = *(v1 + 16);
  if (!v15)
  {
    return 1;
  }

  v16 = [v15 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
  if (!v16)
  {
    return 1;
  }

  v56 = v4;
  v57 = a1;
  v17 = v16;
  v18 = sub_1004DD21C();

  v58 = 0xD000000000000015;
  v59 = 0x80000001004FAE10;
  sub_1004DEA4C();
  if (*(v18 + 16) && (v19 = sub_100028F3C(&v60), (v20 & 1) != 0))
  {
    sub_10000904C(*(v18 + 56) + 32 * v19, v62);
    sub_1000105EC(&v60);

    sub_100004CB8(&qword_100649560, &qword_100538AB8);
    if (swift_dynamicCast())
    {
      v21 = v58;
      if (!*(v58 + 16) || (v22 = sub_100028F80(0xD000000000000021, 0x80000001004FAE30), (v23 & 1) == 0))
      {
LABEL_42:

        return 1;
      }

      sub_100010678(*(v21 + 56) + 40 * v22, &v60);

      sub_100004CB8(&qword_100649518, &qword_100538AC0);
      if (swift_dynamicCast())
      {
        result = v62[0];
        v49 = *(v62[0] + 16);
        if (v49)
        {
          v25 = 0;
          v47 = (v12 + 8);
          v26 = v62[0] + 40;
          v48 = v62[0];
          while (1)
          {
            v27 = *(result + 16);
            v54 = v25;
            if (v25 >= v27)
            {
              __break(1u);
              return result;
            }

            v53 = v26;

            sub_1004D839C();
            sub_1004D83AC();
            v28 = sub_1004D82FC();
            v29 = *(v28 - 8);
            v55 = *(v29 + 48);
            v30 = v55(v10, 1, v28);
            v50 = v29;
            if (v30 == 1)
            {
              sub_10001074C(v10, &qword_100648D90, &unk_100537EB0);
              v52 = 0;
              v31 = 0;
            }

            else
            {
              v32 = sub_1004D82DC();
              v31 = v33;
              (*(v29 + 8))(v10, v28);
              v52 = v32;
              if (v32 == 26746 && v31 == 0xE200000000000000 || (sub_1004DF08C() & 1) != 0)
              {
                v51 = v31;
                sub_1004D83CC();
                v34 = sub_1004D836C();
                v35 = *(v34 - 8);
                if ((*(v35 + 48))(v6, 1, v34) == 1)
                {
                  sub_10001074C(v6, &qword_100648DC0, &qword_100537EE0);
                  v31 = v51;
                }

                else
                {

                  v37 = sub_1004D835C();
                  v51 = v38;
                  v52 = v37;
                  (*(v35 + 8))(v6, v34);
                  v60 = 2975866;
                  v61 = 0xE300000000000000;
                  v63._countAndFlagsBits = v52;
                  v63._object = v51;
                  sub_1004DD5FC(v63);

                  v31 = v61;
                  v52 = v60;
                }
              }
            }

            sub_1004D83AC();
            if (v55(v8, 1, v28) == 1)
            {
              break;
            }

            v39 = sub_1004D82DC();
            v36 = v40;
            (*(v50 + 8))(v8, v28);
            if (v39 == 26746 && v36 == 0xE200000000000000 || (sub_1004DF08C() & 1) != 0)
            {
              v55 = v39;
              v51 = v31;
              v41 = v56;
              sub_1004D83CC();
              v42 = sub_1004D836C();
              v43 = *(v42 - 8);
              if ((*(v43 + 48))(v41, 1, v42) == 1)
              {
                sub_10001074C(v41, &qword_100648DC0, &qword_100537EE0);
                v31 = v51;
                v39 = v55;
              }

              else
              {

                v55 = sub_1004D835C();
                v45 = v44;
                (*(v43 + 8))(v41, v42);
                v60 = 2975866;
                v61 = 0xE300000000000000;
                v64._countAndFlagsBits = v55;
                v64._object = v45;
                sub_1004DD5FC(v64);

                v39 = v60;
                v36 = v61;
                v31 = v51;
              }
            }

            if (!v31)
            {
              goto LABEL_40;
            }

            if (!v36)
            {
LABEL_15:

              (*v47)(v14, v11);
              goto LABEL_16;
            }

            if (v52 == v39 && v31 == v36)
            {

              (*v47)(v14, v11);
LABEL_44:

              return 0;
            }

            v46 = sub_1004DF08C();

            (*v47)(v14, v11);
            if (v46)
            {
              goto LABEL_44;
            }

LABEL_16:
            v25 = v54 + 1;
            v26 = v53 + 16;
            result = v48;
            if (v49 == v54 + 1)
            {
              goto LABEL_42;
            }
          }

          sub_10001074C(v8, &qword_100648D90, &unk_100537EB0);
          if (v31)
          {
            goto LABEL_15;
          }

          v36 = 0;
LABEL_40:
          (*v47)(v14, v11);
          if (!v36)
          {
            goto LABEL_44;
          }

          goto LABEL_16;
        }

        goto LABEL_42;
      }
    }
  }

  else
  {

    sub_1000105EC(&v60);
  }

  return 1;
}

uint64_t LyricsOptionsManager.deinit()
{

  return v0;
}

uint64_t LyricsOptionsManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_1004722C4(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_1004DF26C();
    v14 = qword_100538C10[v13];
    sub_1004DF27C(v14);
    result = sub_1004DF2BC();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (qword_100538C10[*(*(a2 + 48) + v16)] != v14)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void *sub_100472448(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100004CB8(&qword_1006494B0, &qword_1005389A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1004724BC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1004DF26C();
  sub_1004DD55C();
  v8 = sub_1004DF2BC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1004DF08C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100473D90(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10047260C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1004DE9DC();

    if (v9)
    {

      sub_100006F10(0, &qword_100648E58, MSVLyricsAgent_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1004DE9BC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_100472D98(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_100473AC8(v20 + 1, &qword_100649460, &qword_100538950);
    }

    v18 = v8;
    sub_10002B9DC(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100006F10(0, &qword_100648E58, MSVLyricsAgent_ptr);
  v11 = sub_1004DE5EC(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100473F10(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1004DE5FC();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_100472854(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1004DF26C();
  v6 = qword_100538C10[a2];
  sub_1004DF27C(v6);
  v7 = sub_1004DF2BC();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (qword_100538C10[*(*(v5 + 48) + v9)] != v6)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v9);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1004740B0(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10047296C(Swift::UInt *a1, Swift::UInt a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1004DE9DC();

    if (v8)
    {

      _s14descr1005CEB49C4WordCMa();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_1004DE9BC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_100472FA8(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_100473878(v17 + 1);
    }

    sub_100473CEC(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_1004DF26C();
  sub_1004DF27C(a2);
  v10 = sub_1004DF2BC();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_100474218(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (*(*(v6 + 48) + 8 * v12) != a2)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_100472B70(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1004DE9DC();

    if (v9)
    {

      type metadata accessor for SyncedLyricsLineView(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1004DE9BC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1004731A8(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_100473AC8(v20 + 1, &qword_100649430, &qword_100538920);
    }

    v18 = v8;
    sub_10002B9DC(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for SyncedLyricsLineView(0);
  v11 = sub_1004DE5EC(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100474374(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1004DE5FC();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

Swift::Int sub_100472D98(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100004CB8(&qword_100649460, &qword_100538950);
    v2 = sub_1004DEA7C();
    v15 = v2;
    sub_1004DE98C();
    if (sub_1004DE9EC())
    {
      sub_100006F10(0, &qword_100648E58, MSVLyricsAgent_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100473AC8(v9 + 1, &qword_100649460, &qword_100538950);
        }

        v2 = v15;
        result = sub_1004DE5EC(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1004DE9EC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100472FA8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100004CB8(&qword_100649770, &unk_100538BE0);
    v2 = sub_1004DEA7C();
    v15 = v2;
    sub_1004DE98C();
    if (sub_1004DE9EC())
    {
      _s14descr1005CEB49C4WordCMa();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100473878(v9 + 1);
        }

        v2 = v15;
        sub_1004DF26C();
        sub_1004DF27C(v14);
        result = sub_1004DF2BC();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1004DE9EC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1004731A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100004CB8(&qword_100649430, &qword_100538920);
    v2 = sub_1004DEA7C();
    v15 = v2;
    sub_1004DE98C();
    if (sub_1004DE9EC())
    {
      type metadata accessor for SyncedLyricsLineView(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100473AC8(v9 + 1, &qword_100649430, &qword_100538920);
        }

        v2 = v15;
        result = sub_1004DE5EC(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1004DE9EC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void sub_1004733A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004CB8(&qword_100649788, &unk_100538C00);
  v4 = sub_1004DEA6C();
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
      sub_1004DF26C();
      sub_1004DD55C();
      v21 = sub_1004DF2BC();
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

void sub_10047361C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004CB8(&qword_100649778, &unk_100538BF0);
  v4 = sub_1004DEA6C();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1004DF26C();
      sub_1004DF27C(qword_100538C10[v17]);
      v18 = sub_1004DF2BC();
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
      *(*(v5 + 48) + v13) = v17;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100473878(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004CB8(&qword_100649770, &unk_100538BE0);
  v4 = sub_1004DEA6C();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1004DF26C();
      sub_1004DF27C(v17);
      v18 = sub_1004DF2BC();
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
      *(*(v5 + 48) + 8 * v13) = v17;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100473AC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_100004CB8(a2, a3);
  v6 = sub_1004DEA6C();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = sub_1004DE5EC(*(v7 + 40));
      v21 = -1 << *(v7 + 32);
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

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

unint64_t sub_100473CEC(Swift::UInt a1, uint64_t a2)
{
  sub_1004DF26C();
  sub_1004DF27C(a1);
  sub_1004DF2BC();
  result = sub_1004DE96C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_100473D90(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1004733A8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_100474504();
      goto LABEL_16;
    }

    sub_100474A30(v8 + 1);
  }

  v10 = *v4;
  sub_1004DF26C();
  sub_1004DD55C();
  v11 = sub_1004DF2BC();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1004DF08C() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
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
LABEL_19:
  sub_1004DF15C();
  __break(1u);
}

void sub_100473F10(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100473AC8(v6 + 1, &qword_100649460, &qword_100538950);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1004748F0(&qword_100649460, &qword_100538950);
      goto LABEL_12;
    }

    sub_1004750BC(v6 + 1, &qword_100649460, &qword_100538950);
  }

  v8 = *v3;
  v9 = sub_1004DE5EC(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100006F10(0, &qword_100648E58, MSVLyricsAgent_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1004DE5FC();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1004DF15C();
  __break(1u);
}

void sub_1004740B0(uint64_t result, unint64_t a2, char a3)
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
    sub_10047361C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_100474660();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100474C68(v5 + 1);
  }

  v8 = *v3;
  sub_1004DF26C();
  v9 = qword_100538C10[v4];
  sub_1004DF27C(v9);
  v10 = sub_1004DF2BC();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    while (qword_100538C10[*(*(v8 + 48) + a2)] != v9)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1004DF15C();
  __break(1u);
}

void sub_100474218(Swift::UInt result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100473878(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1004747A0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100474E94(v5 + 1);
  }

  v8 = *v3;
  sub_1004DF26C();
  sub_1004DF27C(result);
  v9 = sub_1004DF2BC();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    _s14descr1005CEB49C4WordCMa();
    a2 = v12;
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
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1004DF15C();
  __break(1u);
}

void sub_100474374(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100473AC8(v6 + 1, &qword_100649430, &qword_100538920);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1004748F0(&qword_100649430, &qword_100538920);
      goto LABEL_12;
    }

    sub_1004750BC(v6 + 1, &qword_100649430, &qword_100538920);
  }

  v8 = *v3;
  v9 = sub_1004DE5EC(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for SyncedLyricsLineView(0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1004DE5FC();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1004DF15C();
  __break(1u);
}

void sub_100474504()
{
  v1 = v0;
  sub_100004CB8(&qword_100649788, &unk_100538C00);
  v2 = *v0;
  v3 = sub_1004DEA5C();
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