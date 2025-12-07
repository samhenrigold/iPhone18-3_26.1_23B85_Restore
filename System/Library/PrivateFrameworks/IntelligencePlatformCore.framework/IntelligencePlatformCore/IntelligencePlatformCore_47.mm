void sub_1C484B018(uint64_t *a1, uint64_t *a2)
{
  sub_1C456902C(a1, a2);
  sub_1C44493A8();
  sub_1C44263EC();
  if (v6)
  {
    v7 = sub_1C44323C4();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      sub_1C445FC08(v7, v8);
    }

    sub_1C4404F28();
    for (; v5; v19 = v18)
    {
      sub_1C43FEA58();
LABEL_15:
      sub_1C4851B5C();
      v18 = *(v17 + 8 * v16);
      *(v2[6] + 8 * v16) = v18;
    }

    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        goto LABEL_17;
      }

      sub_1C4851B68();
      if (v13)
      {
        sub_1C43FCF1C();
        v5 = v15 & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v2;
  }
}

void sub_1C484B0D0(uint64_t *a1, uint64_t *a2)
{
  sub_1C456902C(a1, a2);
  sub_1C44493A8();
  sub_1C44263EC();
  if (v5)
  {
    v6 = sub_1C44323C4();
    if (v9)
    {
      v10 = v6 >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      sub_1C445FC08(v6, v7);
    }

    v2[2] = *(v3 + 16);
    sub_1C44410A0();
    sub_1C442A6E8();
    if (v13)
    {
      do
      {
        sub_1C447537C();
LABEL_15:
        *(v2[6] + 8 * v15) = *(*(v3 + 48) + 8 * v15);
      }

      while (v14);
    }

    v16 = v11;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v12)
      {
        goto LABEL_17;
      }

      ++v16;
      if (*(v4 + 8 * v17))
      {
        sub_1C4851AD4();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v2;
  }
}

void *sub_1C484B188()
{
  v1 = v0;
  sub_1C456902C(&qword_1EC0BDE38, &qword_1C4F32280);
  v2 = *v0;
  v3 = sub_1C4F021C8();
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

  return result;
}

void sub_1C484B2C8()
{
  sub_1C43FBD3C();
  v4 = v3;
  sub_1C456902C(v5, v6);
  sub_1C440AC0C();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4851AEC();
  v8 = *v0;
  v9 = sub_1C4F021C8();
  if (*(v8 + 16))
  {
    sub_1C4409CEC();
    sub_1C449F42C();
    if (v13)
    {
      v14 = v10 >= v12;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      memmove(v10, v4, 8 * v11);
    }

    v15 = 0;
    *(v9 + 16) = *(v8 + 16);
    sub_1C447CBD8();
    sub_1C4410394();
    sub_1C44E76D0();
    while (v2)
    {
      sub_1C43FFB74();
LABEL_15:
      v19 = sub_1C4466CFC();
      v20(v19);
      v21 = sub_1C44AB258();
      v22(v21);
    }

    v16 = v15;
    while (1)
    {
      v15 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v15 >= v1)
      {
        goto LABEL_17;
      }

      ++v16;
      if (*(v4 + v15))
      {
        sub_1C43FCF1C();
        v2 = v18 & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    sub_1C44AE8C8();
    sub_1C43FE9F0();
  }
}

uint64_t sub_1C484B430(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1C4EFF8A8();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1C456902C(&qword_1EC0BDDF0, &qword_1C4F32238);
  v7 = sub_1C4F021D8();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1C4403D94(&qword_1EDDFE808, MEMORY[0x1E69A99E8], MEMORY[0x1E69A99F8]);
        result = sub_1C4F00FD8();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1C484B748(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1C456902C(&qword_1EC0BDE00, &qword_1C4F32248);
  result = sub_1C4F021D8();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 48 * (v12 | (v6 << 6)));
        v17 = *v15;
        v16 = v15[1];
        *(v32 + 9) = *(v15 + 25);
        v31 = v17;
        v32[0] = v16;
        sub_1C4F02AF8();
        sub_1C45A2358(&v31, v29);
        sub_1C45D5EBC(v30);
        result = sub_1C4F02B68();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 48 * v21);
        v27 = v31;
        v28 = v32[0];
        *(v26 + 25) = *(v32 + 9);
        *v26 = v27;
        v26[1] = v28;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1C484B9A4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1C4EFDAF8();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1C456902C(&qword_1EC0BDE88, &qword_1C4F322D0);
  v7 = sub_1C4F021D8();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1C4403D94(&qword_1EDDEFFA8, MEMORY[0x1E69A94B0], MEMORY[0x1E69A94B8]);
        result = sub_1C4F00FD8();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1C484BCBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1C456902C(&qword_1EC0BDE58, &qword_1C4F322A0);
  result = sub_1C4F021D8();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_1C4F02AF8();
        sub_1C4F01298();

        result = sub_1C4F02B68();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

void sub_1C484C074(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t __src, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_1C43FE6B0();
  a29 = v33;
  a30 = v34;
  sub_1C445E838();
  sub_1C456902C(&qword_1EC0BDE08, &qword_1C4F32250);
  sub_1C442FC54();
  sub_1C4F021D8();
  sub_1C4440FB4();
  if (v35)
  {
    v36 = 0;
    sub_1C43FEC90();
    v39 = v38 & v37;
    v41 = (v40 + 63) >> 6;
    if ((v38 & v37) != 0)
    {
      while (1)
      {
        sub_1C4410218();
LABEL_9:
        v46 = *(v31 + 48) + 16 * (v42 | (v36 << 6));
        v47 = *v46;
        v48 = *(v46 + 8);
        sub_1C4F02AF8();
        switch(v48)
        {
          case 1:
            MEMORY[0x1C69417F0](12);
            sub_1C440CC68();
            switch(v47)
            {
              case 1:
                goto LABEL_17;
              case 2:
                goto LABEL_22;
              case 3:
                goto LABEL_23;
              case 4:
                goto LABEL_19;
              case 5:
                goto LABEL_25;
              case 6:
                goto LABEL_26;
              case 7:
                goto LABEL_24;
              case 8:
                goto LABEL_28;
              case 9:
                goto LABEL_21;
              case 10:
                goto LABEL_27;
              case 11:
                goto LABEL_18;
              case 12:
                goto LABEL_20;
              default:
                goto LABEL_29;
            }

            goto LABEL_29;
          case 2:
            v50 = 13;
            goto LABEL_15;
          case 3:
            v50 = 14;
LABEL_15:
            MEMORY[0x1C69417F0](v50);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C4851148(&__src, v47);
            break;
          case 4:
            switch(v47)
            {
              case 1:
                v49 = 1;
                break;
              case 2:
                v49 = 2;
                break;
              case 3:
                v49 = 3;
                break;
              case 4:
                v49 = 4;
                break;
              case 5:
                v49 = 5;
                break;
              case 6:
                v49 = 6;
                break;
              case 7:
                v49 = 7;
                break;
              case 8:
                v49 = 8;
                break;
              case 9:
                v49 = 9;
                break;
              case 10:
                v49 = 10;
                break;
              default:
                v49 = 0;
                break;
            }

            MEMORY[0x1C69417F0](v49);
            break;
          default:
            MEMORY[0x1C69417F0](11);
            sub_1C440CC68();
            switch(v47)
            {
              case 1:
LABEL_17:
                sub_1C4426BAC();
                break;
              case 2:
LABEL_22:
                sub_1C44160DC();
                sub_1C4408B0C();
                break;
              case 3:
LABEL_23:
                sub_1C44040F0();
                sub_1C444172C();
                break;
              case 4:
LABEL_19:
                sub_1C44754A8();
                sub_1C4426BAC();
                break;
              case 5:
LABEL_25:
                sub_1C44995B0();
                break;
              case 6:
LABEL_26:
                sub_1C441B3E4();
                break;
              case 7:
LABEL_24:
                sub_1C440E008();
                break;
              case 8:
LABEL_28:
                sub_1C44160DC();
                sub_1C4423BB4();
                break;
              case 9:
LABEL_21:
                sub_1C4430660();
                break;
              case 10:
LABEL_27:
                sub_1C44C0464();
                break;
              case 11:
LABEL_18:
                sub_1C4422AFC();
                sub_1C446BC58();
                break;
              case 12:
LABEL_20:
                sub_1C44145CC();
                break;
              default:
                break;
            }

LABEL_29:
            sub_1C4F01298();

            break;
        }

        sub_1C4F02B68();
        sub_1C44A1C14();
        if (v51)
        {
          break;
        }

        sub_1C43FFC04();
LABEL_51:
        sub_1C44064EC();
        sub_1C4488944();
        *v55 = v47;
        *(v55 + 8) = v48;
        sub_1C443322C();
        if (!v39)
        {
          goto LABEL_4;
        }
      }

      sub_1C43FFBF0();
      while (1)
      {
        sub_1C4410160();
        if (v51)
        {
          if (v53)
          {
            break;
          }
        }

        if (v52 == v54)
        {
          v52 = 0;
        }

        if (*(v32 + 56 + 8 * v52) != -1)
        {
          sub_1C43FCF98();
          goto LABEL_51;
        }
      }
    }

    else
    {
LABEL_4:
      v43 = v36;
      while (1)
      {
        v36 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          break;
        }

        if (v36 >= v41)
        {
          goto LABEL_53;
        }

        ++v43;
        if (*(v31 + 56 + 8 * v36))
        {
          sub_1C43FCF1C();
          v39 = v45 & v44;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_53:

    *v30 = v32;
    sub_1C440A528();
  }
}

uint64_t sub_1C484C438(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1C4EFEEF8();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1C456902C(&qword_1EC0BDE78, &qword_1C4F322C0);
  v7 = sub_1C4F021D8();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1C4403D94(&qword_1EDDFCCB8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9758]);
        result = sub_1C4F00FD8();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1C484C750(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1C456902C(&qword_1EC0BDE50, &unk_1C4F4B340);
  result = sub_1C4F021D8();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_1C4F02AF8();
        sub_1C4F01298();

        result = sub_1C4F02B68();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1C484CA78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1C456902C(&qword_1EC0BDDF8, &qword_1C4F32240);
  result = sub_1C4F021D8();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 4 * (v12 | (v6 << 6)));
        result = MEMORY[0x1C69417C0](*(v5 + 40), v15, 4);
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 4 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {
          goto LABEL_23;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1C484CC68(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for LiveGlobalKnowledgeTriple(0);
  v27 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1C456902C(&qword_1EC0BDFA0, &qword_1C4F32398);
  result = sub_1C4F021D8();
  v8 = result;
  if (*(v6 + 16))
  {
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
    v24 = v1;
    v25 = result + 56;
    v26 = v6;
    if (v13)
    {
      do
      {
        v29 = (v13 - 1) & v13;
LABEL_12:
        v28 = *(v27 + 72);
        sub_1C4851984();
        sub_1C4F02AF8();
        sub_1C4EFF0C8();
        sub_1C4403D94(&qword_1EDDFE820, MEMORY[0x1E69A9810], MEMORY[0x1E69A9820]);
        sub_1C4F00FE8();
        sub_1C4EFEEF8();
        sub_1C4403D94(&qword_1EDDFCCB8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9758]);
        sub_1C4F00FE8();
        sub_1C4EFF8A8();
        sub_1C4403D94(&qword_1EDDFE808, MEMORY[0x1E69A99E8], MEMORY[0x1E69A99F8]);
        sub_1C4F00FE8();
        sub_1C4F00FE8();
        sub_1C4F01298();
        MEMORY[0x1C6941830](*&v5[v3[9]]);
        MEMORY[0x1C6941830](*&v5[v3[10]]);
        v17 = *&v5[v3[11]];
        MEMORY[0x1C69417F0](*(v17 + 16));
        v18 = *(v17 + 16);
        if (v18)
        {
          v19 = (v17 + 32);
          do
          {
            v20 = *v19++;
            MEMORY[0x1C69417F0](v20);
            --v18;
          }

          while (v18);
        }

        sub_1C4F02B68();
        v21 = v25;
        v22 = sub_1C4F02108();
        *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        result = sub_1C4471FB4();
        ++*(v8 + 16);
        v13 = v29;
      }

      while (v29);
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v24;
        goto LABEL_19;
      }

      v16 = *(v10 + 8 * v9);
      ++v15;
      if (v16)
      {
        v29 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_19:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1C484D068(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1C4EF9F68();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1C456902C(&qword_1EC0BDFB0, &qword_1C4F323A8);
  v7 = sub_1C4F021D8();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1C4403D94(&unk_1EDDFA3E8, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
        result = sub_1C4F00FD8();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1C484D380(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Source(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = *v1;
  sub_1C456902C(&qword_1EC0BDE10, &qword_1C4F32258);
  result = sub_1C4F021D8();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v10 &= v10 - 1;
LABEL_12:
        sub_1C4851984();
        sub_1C4F02AF8();
        sub_1C4F01298();
        result = sub_1C4F02B68();
        v15 = -1 << *(v6 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v12 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        result = sub_1C4471FB4();
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v12 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v7;
      while (1)
      {
        v7 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v4 + 56 + 8 * v7);
        ++v13;
        if (v14)
        {
          v10 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1C484D654(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1C456902C(&qword_1EC0BDFA8, &qword_1C4F323A0);
  result = sub_1C4F021D8();
  v5 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
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
    v34 = v11;
    v35 = result;
    v36 = v3;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v37 = (v10 - 1) & v10;
LABEL_12:
        v16 = *(v3 + 48) + 56 * (v13 | (v6 << 6));
        v17 = *v16;
        v18 = *(v16 + 48);
        v19 = *(v16 + 32);
        v40 = *(v16 + 16);
        v41 = v19;
        v42 = v18;
        v39 = v17;
        sub_1C4F02AF8();
        v20 = v42;
        sub_1C461B90C(&v39, v38);
        sub_1C4F01298();
        sub_1C4F01298();
        sub_1C4F01298();
        MEMORY[0x1C69417F0](v20);
        sub_1C4F02B38();
        result = sub_1C4F02B68();
        v5 = v35;
        v21 = -1 << *(v35 + 32);
        v22 = result & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
        v3 = v36;
        v10 = v37;
LABEL_21:
        *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v29 = *(v35 + 48) + 56 * v24;
        v30 = v39;
        v31 = v40;
        v32 = v41;
        *(v29 + 48) = v42;
        *(v29 + 16) = v31;
        *(v29 + 32) = v32;
        *v29 = v30;
        ++*(v35 + 16);
        v11 = v34;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
      v3 = v36;
      v10 = v37;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v33;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v37 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1C484D93C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1C4EF9CD8();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1C456902C(&qword_1EC0BDE80, &qword_1C4F322C8);
  v7 = sub_1C4F021D8();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1C4403D94(&qword_1EC0B90D0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
        result = sub_1C4F00FD8();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1C484DC54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1C456902C(&qword_1EC0BDE30, &qword_1C4F32278);
  result = sub_1C4F021D8();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = (*(v3 + 48) + 24 * (v13 | (v6 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[2];
        sub_1C4F02AF8();
        MEMORY[0x1C69417F0](v17);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F01298();
        result = sub_1C4F02B68();
        v20 = -1 << *(v5 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v5 + 48) + 24 * v23);
        *v28 = v17;
        v28[1] = v18;
        v28[2] = v19;
        ++*(v5 + 16);
        v3 = v29;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1C484DEA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1C456902C(&qword_1EC0BDE28, &qword_1C4F32270);
  result = sub_1C4F021D8();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_1C4F02AF8();
        sub_1C4F01298();

        result = sub_1C4F02B68();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1C484E1F8(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1C4EFDAB8();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1C456902C(&qword_1EC0BDFB8, &qword_1C4F323B0);
  v7 = sub_1C4F021D8();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1C4403D94(&qword_1EDDEFFD0, MEMORY[0x1E69A9478], MEMORY[0x1E69A9488]);
        result = sub_1C4F00FD8();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1C484E510(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1C4EFEFB8();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1C456902C(&qword_1EC0BDE68, &qword_1C4F322B0);
  v7 = sub_1C4F021D8();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1C4403D94(&qword_1EDDEFF90, MEMORY[0x1E69A97D0], MEMORY[0x1E69A97D8]);
        result = sub_1C4F00FD8();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1C484E828(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1C4F002A8();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1C456902C(&qword_1EC0BDF40, &unk_1C4F32358);
  v7 = sub_1C4F021D8();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1C4403D94(&qword_1EC0BDF30, MEMORY[0x1E69A9DE8], MEMORY[0x1E69A9DF0]);
        result = sub_1C4F00FD8();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

void sub_1C484EB40(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for OntologyTriple(0) - 8;
  MEMORY[0x1EEE9AC00](v3);
  v4 = *v1;
  sub_1C456902C(&qword_1EC0BDE90, &unk_1C4F322D8);
  v5 = sub_1C4F021D8();
  if (*(v4 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v4 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v4 + 56);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v9 &= v9 - 1;
LABEL_11:
      sub_1C4851984();
      sub_1C4843D58();
    }

    v11 = v6;
    while (1)
    {
      v6 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_13;
      }

      v12 = *(v4 + 56 + 8 * v6);
      ++v11;
      if (v12)
      {
        v9 = (v12 - 1) & v12;
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
}

uint64_t sub_1C484ED0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1C456902C(&qword_1EC0BDEF8, &unk_1C4F32340);
  result = sub_1C4F021D8();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + ((v12 | (v6 << 6)) << 6));
        v17 = *v15;
        v16 = v15[1];
        v18 = v15[3];
        v34 = v15[2];
        v35 = v18;
        v32 = v17;
        v33 = v16;
        sub_1C4F02AF8();
        if (*(&v34 + 1))
        {
          sub_1C4851520(&v32, v31);
          sub_1C4F01298();
        }

        else
        {
          sub_1C4851520(&v32, v31);
        }

        sub_1C4F01298();
        result = sub_1C4F02B68();
        v19 = -1 << *(v5 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
        *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = (*(v5 + 48) + (v22 << 6));
        v28 = v32;
        v29 = v33;
        v30 = v35;
        v27[2] = v34;
        v27[3] = v30;
        *v27 = v28;
        v27[1] = v29;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
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
        v26 = *(v11 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_28;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1C484EFC4(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for EventTriple(0);
  v24 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1C456902C(&qword_1EC0BDEE8, &qword_1C4F32330);
  result = sub_1C4F021D8();
  v8 = result;
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
    v21 = v2;
    v22 = result + 56;
    v23 = result;
    if (v12)
    {
      do
      {
        v26 = (v12 - 1) & v12;
LABEL_12:
        v25 = *(v24 + 72);
        sub_1C4851984();
        sub_1C4F02AF8();
        sub_1C4EFF0C8();
        sub_1C4403D94(&qword_1EDDFE820, MEMORY[0x1E69A9810], MEMORY[0x1E69A9820]);
        sub_1C4F00FE8();
        sub_1C4EFEEF8();
        sub_1C4403D94(&qword_1EDDFCCB8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9758]);
        sub_1C4F00FE8();
        sub_1C4EFF8A8();
        sub_1C4403D94(&qword_1EDDFE808, MEMORY[0x1E69A99E8], MEMORY[0x1E69A99F8]);
        sub_1C4F00FE8();
        sub_1C4F00FE8();
        sub_1C4F01298();
        MEMORY[0x1C6941830](*&v5[v3[9]]);
        v16 = *&v5[v3[10]];
        if (v16 == 0.0)
        {
          v16 = 0.0;
        }

        MEMORY[0x1C6941830](*&v16);
        sub_1C4F01298();
        v17 = *&v5[v3[12]];
        if (v17 == 0.0)
        {
          v17 = 0.0;
        }

        MEMORY[0x1C6941830](*&v17);
        sub_1C4F02B68();
        v18 = v22;
        v8 = v23;
        v19 = sub_1C4F02108();
        *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        result = sub_1C4471FB4();
        ++*(v8 + 16);
        v12 = v26;
      }

      while (v26);
    }

    v14 = v9;
    while (1)
    {
      v9 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v21;
        goto LABEL_20;
      }

      v15 = *(v6 + 56 + 8 * v9);
      ++v14;
      if (v15)
      {
        v26 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_20:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1C484F3D4(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for GraphTriple(0);
  v24 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1C456902C(&qword_1EC0BDEF0, &qword_1C4F32338);
  result = sub_1C4F021D8();
  v8 = result;
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
    v21 = v2;
    v22 = result + 56;
    v23 = result;
    if (v12)
    {
      do
      {
        v26 = (v12 - 1) & v12;
LABEL_12:
        v25 = *(v24 + 72);
        sub_1C4851984();
        sub_1C4F02AF8();
        sub_1C4EFF0C8();
        sub_1C4403D94(&qword_1EDDFE820, MEMORY[0x1E69A9810], MEMORY[0x1E69A9820]);
        sub_1C4F00FE8();
        sub_1C4EFEEF8();
        sub_1C4403D94(&qword_1EDDFCCB8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9758]);
        sub_1C4F00FE8();
        sub_1C4EFF8A8();
        sub_1C4403D94(&qword_1EDDFE808, MEMORY[0x1E69A99E8], MEMORY[0x1E69A99F8]);
        sub_1C4F00FE8();
        sub_1C4F00FE8();
        sub_1C4F01298();
        MEMORY[0x1C6941830](*&v5[v3[9]]);
        v16 = *&v5[v3[10]];
        if (v16 == 0.0)
        {
          v16 = 0.0;
        }

        MEMORY[0x1C6941830](*&v16);
        sub_1C4F01298();
        v17 = *&v5[v3[12]];
        if (v17 == 0.0)
        {
          v17 = 0.0;
        }

        MEMORY[0x1C6941830](*&v17);
        sub_1C4F02B68();
        v18 = v22;
        v8 = v23;
        v19 = sub_1C4F02108();
        *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        result = sub_1C4471FB4();
        ++*(v8 + 16);
        v12 = v26;
      }

      while (v26);
    }

    v14 = v9;
    while (1)
    {
      v9 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v21;
        goto LABEL_20;
      }

      v15 = *(v6 + 56 + 8 * v9);
      ++v14;
      if (v15)
      {
        v26 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_20:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1C484F7E4(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for ConstructionEventTriple(0);
  v24 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1C456902C(&qword_1EC0BDED8, &qword_1C4F32320);
  result = sub_1C4F021D8();
  v8 = result;
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
    v21 = v2;
    v22 = result + 56;
    v23 = result;
    if (v12)
    {
      do
      {
        v26 = (v12 - 1) & v12;
LABEL_12:
        v25 = *(v24 + 72);
        sub_1C4851984();
        sub_1C4F02AF8();
        sub_1C4EFF0C8();
        sub_1C4403D94(&qword_1EDDFE820, MEMORY[0x1E69A9810], MEMORY[0x1E69A9820]);
        sub_1C4F00FE8();
        sub_1C4EFEEF8();
        sub_1C4403D94(&qword_1EDDFCCB8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9758]);
        sub_1C4F00FE8();
        sub_1C4EFF8A8();
        sub_1C4403D94(&qword_1EDDFE808, MEMORY[0x1E69A99E8], MEMORY[0x1E69A99F8]);
        sub_1C4F00FE8();
        sub_1C4F00FE8();
        sub_1C4F01298();
        MEMORY[0x1C6941830](*&v5[v3[9]]);
        v16 = *&v5[v3[10]];
        if (v16 == 0.0)
        {
          v16 = 0.0;
        }

        MEMORY[0x1C6941830](*&v16);
        sub_1C4F01298();
        v17 = *&v5[v3[12]];
        if (v17 == 0.0)
        {
          v17 = 0.0;
        }

        MEMORY[0x1C6941830](*&v17);
        sub_1C4F02B68();
        v18 = v22;
        v8 = v23;
        v19 = sub_1C4F02108();
        *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        result = sub_1C4471FB4();
        ++*(v8 + 16);
        v12 = v26;
      }

      while (v26);
    }

    v14 = v9;
    while (1)
    {
      v9 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v21;
        goto LABEL_20;
      }

      v15 = *(v6 + 56 + 8 * v9);
      ++v14;
      if (v15)
      {
        v26 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_20:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1C484FBF4(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for ConstructionGraphTriple(0);
  v24 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1C456902C(&qword_1EC0BDEE0, &qword_1C4F32328);
  result = sub_1C4F021D8();
  v8 = result;
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
    v21 = v2;
    v22 = result + 56;
    v23 = result;
    if (v12)
    {
      do
      {
        v26 = (v12 - 1) & v12;
LABEL_12:
        v25 = *(v24 + 72);
        sub_1C4851984();
        sub_1C4F02AF8();
        sub_1C4EFF0C8();
        sub_1C4403D94(&qword_1EDDFE820, MEMORY[0x1E69A9810], MEMORY[0x1E69A9820]);
        sub_1C4F00FE8();
        sub_1C4EFEEF8();
        sub_1C4403D94(&qword_1EDDFCCB8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9758]);
        sub_1C4F00FE8();
        sub_1C4EFF8A8();
        sub_1C4403D94(&qword_1EDDFE808, MEMORY[0x1E69A99E8], MEMORY[0x1E69A99F8]);
        sub_1C4F00FE8();
        sub_1C4F00FE8();
        sub_1C4F01298();
        MEMORY[0x1C6941830](*&v5[v3[9]]);
        v16 = *&v5[v3[10]];
        if (v16 == 0.0)
        {
          v16 = 0.0;
        }

        MEMORY[0x1C6941830](*&v16);
        sub_1C4F01298();
        v17 = *&v5[v3[12]];
        if (v17 == 0.0)
        {
          v17 = 0.0;
        }

        MEMORY[0x1C6941830](*&v17);
        sub_1C4F02B68();
        v18 = v22;
        v8 = v23;
        v19 = sub_1C4F02108();
        *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        result = sub_1C4471FB4();
        ++*(v8 + 16);
        v12 = v26;
      }

      while (v26);
    }

    v14 = v9;
    while (1)
    {
      v9 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v21;
        goto LABEL_20;
      }

      v15 = *(v6 + 56 + 8 * v9);
      ++v14;
      if (v15)
      {
        v26 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_20:
    *v2 = v8;
  }

  return result;
}

void sub_1C4850004()
{
  sub_1C44158A0();
  sub_1C445E838();
  v5 = sub_1C447E474(v3, v4);
  sub_1C456902C(v5, v6);
  sub_1C442FC54();
  sub_1C4F021D8();
  sub_1C4440FB4();
  if (v7)
  {
    v30 = v0;
    v8 = 0;
    sub_1C44410A0();
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & v9;
    v13 = (v10 + 63) >> 6;
    v14 = v2 + 56;
    if ((v11 & v9) != 0)
    {
      while (1)
      {
        sub_1C43FCFAC();
LABEL_12:
        v20 = *(*(v1 + 48) + 8 * (v15 | (v8 << 6)));
        sub_1C4F01ED8();
        sub_1C44562B8();
        if (((-1 << v22) & ~*(v14 + 8 * v21)) == 0)
        {
          break;
        }

        sub_1C43FFC04();
LABEL_22:
        sub_1C44064EC();
        *(v14 + v27) |= v28;
        *(*(v2 + 48) + 8 * v29) = v20;
        sub_1C443322C();
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      sub_1C43FFBF0();
      while (1)
      {
        sub_1C4410160();
        if (v26)
        {
          if (v24)
          {
            break;
          }
        }

        if (v23 == v25)
        {
          v23 = 0;
        }

        if (*(v14 + 8 * v23) != -1)
        {
          sub_1C43FCF98();
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v8;
      while (1)
      {
        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v8 >= v13)
        {

          v0 = v30;
          goto LABEL_26;
        }

        sub_1C444C014();
        if (v17)
        {
          sub_1C43FCF1C();
          v12 = v19 & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_26:
    *v0 = v2;
    sub_1C4410198();
  }
}

void sub_1C4850178()
{
  sub_1C43FBD3C();
  sub_1C445E838();
  v7 = sub_1C447E474(v5, v6);
  sub_1C456902C(v7, v8);
  sub_1C442FC54();
  v10 = v9;
  sub_1C4F021D8();
  sub_1C44263EC();
  if (v11)
  {
    v12 = 0;
    sub_1C44410A0();
    sub_1C44AE034();
    v13 = v10 + 56;
    if (v2)
    {
      while (1)
      {
        sub_1C43FEA58();
LABEL_9:
        v18 = *(*(v1 + 48) + 8 * (v14 | (v12 << 6)));
        sub_1C4F02AE8();
        sub_1C44562B8();
        if (((v3 << v20) & ~*(v13 + 8 * v19)) == 0)
        {
          break;
        }

        sub_1C43FFC04();
LABEL_19:
        sub_1C44064EC();
        *(v13 + v25) |= v26;
        *(*(v10 + 48) + 8 * v27) = v18;
        sub_1C4475840();
        if (!v2)
        {
          goto LABEL_4;
        }
      }

      sub_1C43FFBF0();
      while (1)
      {
        sub_1C4410160();
        if (v24)
        {
          if (v22)
          {
            break;
          }
        }

        if (v21 == v23)
        {
          v21 = 0;
        }

        if (*(v13 + 8 * v21) != -1)
        {
          sub_1C43FCF98();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v15 = v12;
      while (1)
      {
        v12 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v12 >= v4)
        {
          goto LABEL_21;
        }

        ++v15;
        if (*(v1 + 56 + 8 * v12))
        {
          sub_1C43FCF1C();
          v2 = v17 & v16;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    *v0 = v10;
    sub_1C43FE9F0();
  }
}

uint64_t sub_1C48502BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1C456902C(&qword_1EC0BDE38, &qword_1C4F32280);
  result = sub_1C4F021D8();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        sub_1C4F02AF8();
        MEMORY[0x1C69417F0](v15);
        result = sub_1C4F02B68();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1C48504D8(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1C456902C(&qword_1EC0B8A30, &unk_1C4F0DE50);
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - v4;
  v6 = *v1;
  sub_1C456902C(&qword_1EC0BDEC0, &qword_1C4F32308);
  v7 = sub_1C4F021D8();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1C48514DC(&qword_1EC0B9150, &qword_1EC0B8A30, &unk_1C4F0DE50, MEMORY[0x1E699C760]);
        result = sub_1C4F00FD8();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1C48507F4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1C456902C(&qword_1EC0B8A20, &unk_1C4F0DE40);
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - v4;
  v6 = *v1;
  sub_1C456902C(&qword_1EC0BDEA0, &qword_1C4F322E8);
  v7 = sub_1C4F021D8();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1C48514DC(&qword_1EC0B9140, &qword_1EC0B8A20, &unk_1C4F0DE40, MEMORY[0x1E699C760]);
        result = sub_1C4F00FD8();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1C4850B10(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1C456902C(&qword_1EC0B8A28, &qword_1C4F322F0);
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - v4;
  v6 = *v1;
  sub_1C456902C(&qword_1EC0BDEB0, &unk_1C4F322F8);
  v7 = sub_1C4F021D8();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1C48514DC(&qword_1EC0B9148, &qword_1EC0B8A28, &qword_1C4F322F0, MEMORY[0x1E699C760]);
        result = sub_1C4F00FD8();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1C4850E2C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1C456902C(&qword_1EC0B8A38, &qword_1C4F32310);
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - v4;
  v6 = *v1;
  sub_1C456902C(&qword_1EC0BDED0, &qword_1C4F32318);
  v7 = sub_1C4F021D8();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1C48514DC(&qword_1EC0B9158, &qword_1EC0B8A38, &qword_1C4F32310, MEMORY[0x1E699C760]);
        result = sub_1C4F00FD8();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1C4851148(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C4F02B68();
  sub_1C44410A0();
  sub_1C440DD98();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = 0;
  v10 = 0;
  if (v5)
  {
    while (1)
    {
LABEL_6:
      sub_1C43FCFAC();
      v13 = *(*(a2 + 48) + (v12 | (v10 << 6)));
      sub_1C4F02AF8();
      sub_1C440CC68();
      switch(v13)
      {
        case 1:
          sub_1C4426BAC();
          break;
        case 2:
          sub_1C44160DC();
          sub_1C4408B0C();
          break;
        case 3:
          sub_1C444172C();
          break;
        case 4:
          sub_1C44754A8();
          sub_1C4426BAC();
          break;
        case 5:
          sub_1C44995B0();
          break;
        case 6:
          sub_1C441B3E4();
          break;
        case 7:
          sub_1C440E008();
          break;
        case 8:
          sub_1C44160DC();
          sub_1C4423BB4();
          break;
        case 9:
          sub_1C4430660();
          break;
        case 10:
          sub_1C44C0464();
          break;
        case 11:
          sub_1C4422AFC();
          sub_1C446BC58();
          break;
        case 12:
          sub_1C44145CC();
          break;
        default:
          break;
      }

      sub_1C4F01298();

      v9 ^= sub_1C4F02B68();
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1C69417F0](0);
    }

    ++v10;
    if (*(a2 + 56 + 8 * v11))
    {
      v10 = v11;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4851370(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C4F02B68();
  sub_1C44410A0();
  sub_1C440DD98();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = 0;
  v10 = 0;
  if (v5)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1C69417F0](v9);
    }

    v5 = *(a2 + 56 + 8 * v11);
    ++v10;
    if (v5)
    {
      v10 = v11;
      do
      {
LABEL_7:
        v5 &= v5 - 1;
        sub_1C4F02AF8();
        sub_1C4F01298();

        result = sub_1C4F02B68();
        v9 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C48514DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = sub_1C447E474(0, a2);
    sub_1C4572308(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C48515D0()
{
  result = qword_1EC0BDF00;
  if (!qword_1EC0BDF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDF00);
  }

  return result;
}

unint64_t sub_1C4851624()
{
  result = qword_1EC0BDF08;
  if (!qword_1EC0BDF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDF08);
  }

  return result;
}

unint64_t sub_1C4851678()
{
  result = qword_1EC0BDF10;
  if (!qword_1EC0BDF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDF10);
  }

  return result;
}

unint64_t sub_1C48516CC()
{
  result = qword_1EC0BDF18;
  if (!qword_1EC0BDF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDF18);
  }

  return result;
}

unint64_t sub_1C4851720()
{
  result = qword_1EDDFF910;
  if (!qword_1EDDFF910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF910);
  }

  return result;
}

uint64_t sub_1C48517A4(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_1C447E474(0, a2);
    sub_1C4572308(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4851854()
{
  result = qword_1EDDFCEF0;
  if (!qword_1EDDFCEF0)
  {
    sub_1C4572308(qword_1EC0C0740, &qword_1C4F0D000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCEF0);
  }

  return result;
}

unint64_t sub_1C48518D0()
{
  result = qword_1EC0BDF90;
  if (!qword_1EC0BDF90)
  {
    sub_1C4572308(&unk_1EC0C2EB0, &qword_1C4F32390);
    sub_1C4403D94(&qword_1EC0BDF98, type metadata accessor for ExtractedMatch, &protocol conformance descriptor for ExtractedMatch);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDF90);
  }

  return result;
}

uint64_t sub_1C4851984()
{
  v2 = sub_1C43FECE0();
  v3(v2);
  sub_1C43FBCE0();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1C48519DC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4851AEC()
{

  return sub_1C456902C(v1, v0);
}

__n128 *sub_1C4851BAC(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(v2 - 144) = 0;
  *(v2 - 136) = 0xE000000000000000;
  return result;
}

void *sub_1C4851BE8(uint64_t a1, ...)
{

  return sub_1C4F02AF8();
}

uint64_t sub_1C4851C08(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C4F02938();
}

uint64_t sub_1C4851C20(uint64_t a1, uint64_t a2)
{

  return sub_1C4F021D8();
}

uint64_t sub_1C4851C38(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C4F02938();
}

uint64_t sub_1C4851C50()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1C4851C68()
{
  sub_1C456902C(&qword_1EC0BDFC0, &unk_1C4F32430);
  swift_allocObject();
  result = sub_1C4CE5108();
  qword_1EDE2E048 = result;
  return result;
}

unint64_t sub_1C4851CB4()
{
  sub_1C4F02248();

  v0 = sub_1C4EF98E8();
  MEMORY[0x1C6940010](v0);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0xD000000000000011;
}

char *sub_1C4851D4C(uint64_t a1)
{
  v19[1] = *v1;
  v3 = sub_1C4EF98F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - v8;
  sub_1C4419840();
  sub_1C4EF9888();
  v10 = OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_url;
  (*(v4 + 32))(&v1[OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_url], v9, v3);
  v19[0] = OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_config;
  sub_1C44098F0(a1, &v1[OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_config]);
  type metadata accessor for Configuration(0);
  if (qword_1EDDFEC70 != -1)
  {
    swift_once();
  }

  sub_1C4406FD4();
  v12 = 2 * (v11 == 0);
  if (qword_1EDDFEC60 != -1)
  {
    swift_once();
  }

  sub_1C4406FD4();
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = v12 | 4;
  }

  sub_1C44F920C();
  v15 = static NSUserDefaults.graphDatabaseLoggingEnabled.getter() & 1;
  (*(v4 + 16))(v6, &v1[v10], v3);
  type metadata accessor for ErrorHandlingDatabasePool(0);
  swift_allocObject();
  v16 = v19[3];
  v17 = sub_1C44F999C(v6, v14 | v15);
  if (v16)
  {
    sub_1C4467948(a1);
    (*(v4 + 8))(&v1[v10], v3);
    sub_1C4467948(&v1[v19[0]]);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *&v1[OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool] = v17;
    sub_1C4827040();
    sub_1C4467948(a1);
  }

  return v1;
}

uint64_t sub_1C4852084()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_url;
  v2 = sub_1C4EF98F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_config);
  return v0;
}

uint64_t sub_1C4852104()
{
  sub_1C4852084();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GraphDatabase(uint64_t a1)
{
  result = qword_1EDDFF4E8;
  if (!qword_1EDDFF4E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C48521D4()
{
  if (qword_1EDDFF500 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C4852274()
{
  sub_1C456902C(&qword_1EC0BE028, &unk_1C4F32560);
  v0 = sub_1C4F01198();
  MEMORY[0x1C6940010](v0);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_1C4852370(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  a1(0);
  sub_1C456902C(a2, a3);
  v5 = sub_1C4F01198();
  MEMORY[0x1C6940010](v5);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_1C485241C()
{
  v15 = v0;
  v1 = *(v0 + 16);
  type metadata accessor for KeyValueStore(0);
  if (!sub_1C49A4CB8(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore14GraphDiffPhase_stores))
  {

LABEL_4:
    v2 = *(v0 + 16);
    type metadata accessor for PhaseStores(0);
    sub_1C4853160(sub_1C48545F0, v2, sub_1C4859B10);
    sub_1C4853160(sub_1C48545F8, v2, sub_1C4859AF0);
    goto LABEL_5;
  }

  v5 = sub_1C4493790();

  if (v5 == 2)
  {
    goto LABEL_4;
  }

  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v6 = sub_1C4F00978();
  sub_1C442B738(v6, qword_1EDE2DE10);

  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    v11 = sub_1C4852370(type metadata accessor for GraphDiffPhase, &qword_1EC0BDFC8, &qword_1C4F324F0);
    v13 = sub_1C441D828(v11, v12, &v14);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1C43F8000, v7, v8, "%s - Skip GraphDiffPhase due to graph rebuild", v9, 0xCu);
    sub_1C440962C(v10);
    MEMORY[0x1C6942830](v10, -1, -1);
    MEMORY[0x1C6942830](v9, -1, -1);
  }

LABEL_5:
  v3 = *(v0 + 8);

  return v3();
}

void sub_1C48526E8()
{
  sub_1C456902C(&qword_1EC0BD3C0, &unk_1C4F2DB90);
  v0 = MEMORY[0x1E69E6328];
  sub_1C4401CBC(&qword_1EDDDBC48, &qword_1EC0BD3C0, &unk_1C4F2DB90, MEMORY[0x1E69E6328]);
  sub_1C4859B90(&qword_1EDDE2668, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple);
  v1 = sub_1C4F014A8();
  sub_1C456902C(&qword_1EC0BD400, &qword_1C4F2DBE0);
  sub_1C4401CBC(&qword_1EDDDBCD8, &qword_1EC0BD400, &qword_1C4F2DBE0, v0);
  sub_1C4859B90(&qword_1EDDFE218, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  v2 = sub_1C4F014A8();
  sub_1C4EF9AE8();
  v3 = 0;
  v5 = v4;
  v6 = 1 << *(v1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v1 + 64);
  v9 = (v6 + 63) >> 6;
  if (v8)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v1 + 64 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      do
      {
LABEL_8:
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v12 = (v3 << 9) | (8 * v11);
        v13 = *(*(v1 + 56) + v12);
        if (*(v2 + 16) && (v14 = *(*(v1 + 48) + v12), v15 = sub_1C457B350(v14), (v16 & 1) != 0) && (v17 = *(*(v2 + 56) + 8 * v15), *(v17 + 16) == *(v13 + 16)))
        {
          sub_1C457B350(v14);
          if (v20)
          {
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            swift_isUniquelyReferenced_nonNull_native();
            sub_1C456902C(&qword_1EC0BE000, &unk_1C4F54130);
            sub_1C4F02458();
            sub_1C4F02478();
          }

          else
          {
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          }

          v21 = sub_1C4853838(v17, v13);

          v19 = v21;
        }

        else
        {
          v18 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v19 = sub_1C4853520(v18, v5);
        }

        sub_1C49D45E8(v19);
        sub_1C49D45E8(v13);
      }

      while (v8);
    }
  }

  if (!*(v2 + 16))
  {
LABEL_42:

    return;
  }

  v22 = 1 << *(v2 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v2 + 64);
  v25 = (v22 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v26 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  while (v24)
  {
LABEL_27:
    v29 = *(*(v2 + 56) + ((v26 << 9) | (8 * __clz(__rbit64(v24)))));
    v30 = *(v29 + 16);
    v31 = *(v27 + 16);
    v32 = v31 + v30;
    if (__OFADD__(v31, v30))
    {
      goto LABEL_45;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v32 > *(v27 + 24) >> 1)
    {
      if (v31 <= v32)
      {
        v34 = v31 + v30;
      }

      else
      {
        v34 = v31;
      }

      sub_1C44F1730(isUniquelyReferenced_nonNull_native, v34, 1, v27);
      v27 = v35;
    }

    v24 &= v24 - 1;
    if (*(v29 + 16))
    {
      v36 = (*(v27 + 24) >> 1) - *(v27 + 16);
      type metadata accessor for GraphTriple(0);
      if (v36 < v30)
      {
        goto LABEL_46;
      }

      swift_arrayInitWithCopy();

      if (v30)
      {
        v37 = *(v27 + 16);
        v38 = __OFADD__(v37, v30);
        v39 = v37 + v30;
        if (v38)
        {
          goto LABEL_47;
        }

        *(v27 + 16) = v39;
      }
    }

    else
    {

      if (v30)
      {
        __break(1u);
LABEL_41:

        goto LABEL_42;
      }
    }
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v25)
    {
      goto LABEL_41;
    }

    v24 = *(v2 + 64 + 8 * v28);
    ++v26;
    if (v24)
    {
      v26 = v28;
      goto LABEL_27;
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
}

void sub_1C4852C24()
{
  sub_1C456902C(&qword_1EC0BDFF0, &unk_1C4F32510);
  v0 = MEMORY[0x1E69E6328];
  sub_1C4401CBC(&qword_1EDDDBC50, &qword_1EC0BDFF0, &unk_1C4F32510, MEMORY[0x1E69E6328]);
  sub_1C4859B90(&unk_1EDDE2780, type metadata accessor for ConstructionEventTriple, &protocol conformance descriptor for ConstructionEventTriple);
  v1 = sub_1C4F014A8();
  sub_1C456902C(&qword_1EC0BD3F8, &unk_1C4F5B800);
  sub_1C4401CBC(&qword_1EDDF06C8, &qword_1EC0BD3F8, &unk_1C4F5B800, v0);
  sub_1C4859B90(&qword_1EDDFE2F0, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
  v2 = sub_1C4F014A8();
  sub_1C4EF9AE8();
  v3 = 0;
  v5 = v4;
  v6 = 1 << *(v1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v1 + 64);
  v9 = (v6 + 63) >> 6;
  if (v8)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v1 + 64 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      do
      {
LABEL_8:
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v12 = (v3 << 9) | (8 * v11);
        v13 = *(*(v1 + 56) + v12);
        if (*(v2 + 16) && (v14 = *(*(v1 + 48) + v12), v15 = sub_1C457B350(v14), (v16 & 1) != 0) && (v17 = *(*(v2 + 56) + 8 * v15), *(v17 + 16) == *(v13 + 16)))
        {
          sub_1C457B350(v14);
          if (v20)
          {
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            swift_isUniquelyReferenced_nonNull_native();
            sub_1C456902C(&qword_1EC0BDFF8, &unk_1C4F32520);
            sub_1C4F02458();
            sub_1C4F02478();
          }

          else
          {
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          }

          v21 = sub_1C4853DEC(v17, v13);

          v19 = v21;
        }

        else
        {
          v18 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v19 = sub_1C4853208(v18, v5);
        }

        sub_1C49D4640(v19);
        sub_1C49D4640(v13);
      }

      while (v8);
    }
  }

  if (!*(v2 + 16))
  {
LABEL_42:

    return;
  }

  v22 = 1 << *(v2 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v2 + 64);
  v25 = (v22 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v26 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  while (v24)
  {
LABEL_27:
    v29 = *(*(v2 + 56) + ((v26 << 9) | (8 * __clz(__rbit64(v24)))));
    v30 = *(v29 + 16);
    v31 = *(v27 + 16);
    v32 = v31 + v30;
    if (__OFADD__(v31, v30))
    {
      goto LABEL_45;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v32 > *(v27 + 24) >> 1)
    {
      if (v31 <= v32)
      {
        v34 = v31 + v30;
      }

      else
      {
        v34 = v31;
      }

      sub_1C458BAC8(isUniquelyReferenced_nonNull_native, v34, 1, v27);
      v27 = v35;
    }

    v24 &= v24 - 1;
    if (*(v29 + 16))
    {
      v36 = (*(v27 + 24) >> 1) - *(v27 + 16);
      type metadata accessor for EventTriple(0);
      if (v36 < v30)
      {
        goto LABEL_46;
      }

      swift_arrayInitWithCopy();

      if (v30)
      {
        v37 = *(v27 + 16);
        v38 = __OFADD__(v37, v30);
        v39 = v37 + v30;
        if (v38)
        {
          goto LABEL_47;
        }

        *(v27 + 16) = v39;
      }
    }

    else
    {

      if (v30)
      {
        __break(1u);
LABEL_41:

        goto LABEL_42;
      }
    }
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v25)
    {
      goto LABEL_41;
    }

    v24 = *(v2 + 64 + 8 * v28);
    ++v26;
    if (v24)
    {
      v26 = v28;
      goto LABEL_27;
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
}

uint64_t sub_1C4853160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v5;

  sub_1C446C37C(a3, v7);
}

uint64_t sub_1C4853208(uint64_t a1, double a2)
{
  v4 = type metadata accessor for ConstructionEventTriple(0);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_1C459E630();
    v12 = v36;
    v35 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v13 = a1 + v35;
    v34 = *(v5 + 72);
    do
    {
      sub_1C4859B30(v13, v7, type metadata accessor for ConstructionEventTriple);
      v14 = sub_1C4EFF0C8();
      (*(*(v14 - 8) + 16))(v10, v7, v14);
      v15 = v4[5];
      v16 = sub_1C4EFEEF8();
      v17 = *(*(v16 - 8) + 16);
      v17(&v10[v15], &v7[v15], v16);
      v18 = v4[6];
      v19 = sub_1C4EFF8A8();
      (*(*(v19 - 8) + 16))(&v10[v18], &v7[v18], v19);
      v17(&v10[v4[7]], &v7[v4[7]], v16);
      v20 = v4[8];
      v21 = *&v7[v4[9]];
      v23 = *&v7[v20];
      v22 = *&v7[v20 + 8];
      v24 = *&v7[v4[10]];
      v25 = &v7[v4[11]];
      v26 = *v25;
      v27 = *(v25 + 1);
      v28 = &v10[v20];
      *v28 = v23;
      *(v28 + 1) = v22;
      *&v10[v4[9]] = v21;
      *&v10[v4[10]] = v24;
      v29 = &v10[v4[11]];
      *v29 = v26;
      *(v29 + 1) = v27;
      *&v10[v4[12]] = a2;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4859BD8(v7, type metadata accessor for ConstructionEventTriple);
      v36 = v12;
      v30 = *(v12 + 16);
      if (v30 >= *(v12 + 24) >> 1)
      {
        sub_1C459E630();
        v12 = v36;
      }

      *(v12 + 16) = v30 + 1;
      v31 = v34;
      sub_1C448AD18(v10, v12 + v35 + v30 * v34, type metadata accessor for ConstructionEventTriple);
      v13 += v31;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_1C4853520(uint64_t a1, double a2)
{
  v4 = type metadata accessor for ConstructionGraphTriple(0);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_1C459DC78();
    v12 = v36;
    v35 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v13 = a1 + v35;
    v34 = *(v5 + 72);
    do
    {
      sub_1C4859B30(v13, v7, type metadata accessor for ConstructionGraphTriple);
      v14 = sub_1C4EFF0C8();
      (*(*(v14 - 8) + 16))(v10, v7, v14);
      v15 = v4[5];
      v16 = sub_1C4EFEEF8();
      v17 = *(*(v16 - 8) + 16);
      v17(&v10[v15], &v7[v15], v16);
      v18 = v4[6];
      v19 = sub_1C4EFF8A8();
      (*(*(v19 - 8) + 16))(&v10[v18], &v7[v18], v19);
      v17(&v10[v4[7]], &v7[v4[7]], v16);
      v20 = v4[8];
      v21 = *&v7[v4[9]];
      v23 = *&v7[v20];
      v22 = *&v7[v20 + 8];
      v24 = *&v7[v4[10]];
      v25 = &v7[v4[11]];
      v26 = *v25;
      v27 = *(v25 + 1);
      v28 = &v10[v20];
      *v28 = v23;
      *(v28 + 1) = v22;
      *&v10[v4[9]] = v21;
      *&v10[v4[10]] = v24;
      v29 = &v10[v4[11]];
      *v29 = v26;
      *(v29 + 1) = v27;
      *&v10[v4[12]] = a2;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4859BD8(v7, type metadata accessor for ConstructionGraphTriple);
      v36 = v12;
      v30 = *(v12 + 16);
      if (v30 >= *(v12 + 24) >> 1)
      {
        sub_1C459DC78();
        v12 = v36;
      }

      *(v12 + 16) = v30 + 1;
      v31 = v34;
      sub_1C448AD18(v10, v12 + v35 + v30 * v34, type metadata accessor for ConstructionGraphTriple);
      v13 += v31;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_1C4853838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GraphTriple(0);
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for ConstructionGraphTriple(0);
  v58 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v56 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v56 - v12;
  v14 = *(a2 + 16);
  v61 = a1;
  v15 = *(a1 + 16);
  v63 = v14;
  if (v14 == v15)
  {
    v56 = v11;
    v16 = 0;
    v17 = MEMORY[0x1E69E7CC0];
    v57 = a2;
    v18 = v62;
    while (v63 != v16)
    {
      v66 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v19 = *(v58 + 72);
      v64 = type metadata accessor for ConstructionGraphTriple;
      v65 = v19;
      sub_1C4859B30(a2 + v66 + v19 * v16, v13, type metadata accessor for ConstructionGraphTriple);
      v20 = v61 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
      v21 = *(v59 + 72);
      v68 = v16;
      sub_1C4859B30(v20 + v21 * v16, v6, type metadata accessor for GraphTriple);
      v22 = sub_1C4EFF0C8();
      (*(*(v22 - 8) + 16))(v9, v13, v22);
      v23 = v18[5];
      v24 = sub_1C4EFEEF8();
      v25 = *(v24 - 8);
      v67 = v17;
      v26 = *(v25 + 16);
      v26(&v9[v23], &v13[v23], v24);
      v27 = v60;
      v28 = *(v60 + 24);
      v29 = v18[6];
      v30 = sub_1C4EFF8A8();
      (*(*(v30 - 8) + 16))(&v9[v29], &v6[v28], v30);
      v26(&v9[v18[7]], &v13[v18[7]], v24);
      v17 = v67;
      v31 = v18[8];
      v32 = *&v13[v31];
      v33 = *&v13[v31 + 8];
      v34 = *&v13[v18[9]];
      v35 = *&v13[v18[10]];
      v36 = &v13[v18[11]];
      v37 = *v36;
      v38 = *(v36 + 1);
      v39 = *&v6[*(v27 + 48)];
      v40 = &v9[v31];
      *v40 = v32;
      *(v40 + 1) = v33;
      *&v9[v18[9]] = v34;
      *&v9[v18[10]] = v35;
      v41 = &v9[v18[11]];
      *v41 = v37;
      *(v41 + 1) = v38;
      *&v9[v18[12]] = v39;
      v42 = v56;
      sub_1C4859B30(v9, v56, v64);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C44EE8C8(0, *(v17 + 16) + 1, 1, v17);
        v17 = v45;
      }

      v44 = *(v17 + 16);
      v43 = *(v17 + 24);
      a2 = v57;
      if (v44 >= v43 >> 1)
      {
        sub_1C44EE8C8(v43 > 1, v44 + 1, 1, v17);
        v17 = v46;
      }

      sub_1C4859BD8(v9, type metadata accessor for ConstructionGraphTriple);
      sub_1C4859BD8(v6, type metadata accessor for GraphTriple);
      sub_1C4859BD8(v13, type metadata accessor for ConstructionGraphTriple);
      *(v17 + 16) = v44 + 1;
      sub_1C448AD18(v42, v17 + v66 + v44 * v65, type metadata accessor for ConstructionGraphTriple);
      v16 = v68 + 1;
    }

    return v17;
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v47 = sub_1C4F00978();
    sub_1C442B738(v47, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v48 = sub_1C4F00968();
    v49 = sub_1C4F01CD8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v69 = v51;
      *v50 = 136315138;
      v52 = MEMORY[0x1C6940380](a2, v62);
      v54 = sub_1C441D828(v52, v53, &v69);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_1C43F8000, v48, v49, "%s: revertTimestamp error", v50, 0xCu);
      sub_1C440962C(v51);
      MEMORY[0x1C6942830](v51, -1, -1);
      MEMORY[0x1C6942830](v50, -1, -1);
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return a2;
}

uint64_t sub_1C4853DEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventTriple(0);
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for ConstructionEventTriple(0);
  v58 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v56 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v56 - v12;
  v14 = *(a2 + 16);
  v61 = a1;
  v15 = *(a1 + 16);
  v63 = v14;
  if (v14 == v15)
  {
    v56 = v11;
    v16 = 0;
    v17 = MEMORY[0x1E69E7CC0];
    v57 = a2;
    v18 = v62;
    while (v63 != v16)
    {
      v66 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v19 = *(v58 + 72);
      v64 = type metadata accessor for ConstructionEventTriple;
      v65 = v19;
      sub_1C4859B30(a2 + v66 + v19 * v16, v13, type metadata accessor for ConstructionEventTriple);
      v20 = v61 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
      v21 = *(v59 + 72);
      v68 = v16;
      sub_1C4859B30(v20 + v21 * v16, v6, type metadata accessor for EventTriple);
      v22 = sub_1C4EFF0C8();
      (*(*(v22 - 8) + 16))(v9, v13, v22);
      v23 = v18[5];
      v24 = sub_1C4EFEEF8();
      v25 = *(v24 - 8);
      v67 = v17;
      v26 = *(v25 + 16);
      v26(&v9[v23], &v13[v23], v24);
      v27 = v60;
      v28 = *(v60 + 24);
      v29 = v18[6];
      v30 = sub_1C4EFF8A8();
      (*(*(v30 - 8) + 16))(&v9[v29], &v6[v28], v30);
      v26(&v9[v18[7]], &v13[v18[7]], v24);
      v17 = v67;
      v31 = v18[8];
      v32 = *&v13[v31];
      v33 = *&v13[v31 + 8];
      v34 = *&v13[v18[9]];
      v35 = *&v13[v18[10]];
      v36 = &v13[v18[11]];
      v37 = *v36;
      v38 = *(v36 + 1);
      v39 = *&v6[*(v27 + 48)];
      v40 = &v9[v31];
      *v40 = v32;
      *(v40 + 1) = v33;
      *&v9[v18[9]] = v34;
      *&v9[v18[10]] = v35;
      v41 = &v9[v18[11]];
      *v41 = v37;
      *(v41 + 1) = v38;
      *&v9[v18[12]] = v39;
      v42 = v56;
      sub_1C4859B30(v9, v56, v64);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458DA98(0, *(v17 + 16) + 1, 1, v17);
        v17 = v45;
      }

      v44 = *(v17 + 16);
      v43 = *(v17 + 24);
      a2 = v57;
      if (v44 >= v43 >> 1)
      {
        sub_1C458DA98(v43 > 1, v44 + 1, 1, v17);
        v17 = v46;
      }

      sub_1C4859BD8(v9, type metadata accessor for ConstructionEventTriple);
      sub_1C4859BD8(v6, type metadata accessor for EventTriple);
      sub_1C4859BD8(v13, type metadata accessor for ConstructionEventTriple);
      *(v17 + 16) = v44 + 1;
      sub_1C448AD18(v42, v17 + v66 + v44 * v65, type metadata accessor for ConstructionEventTriple);
      v16 = v68 + 1;
    }

    return v17;
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v47 = sub_1C4F00978();
    sub_1C442B738(v47, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v48 = sub_1C4F00968();
    v49 = sub_1C4F01CD8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v69 = v51;
      *v50 = 136315138;
      v52 = MEMORY[0x1C6940380](a2, v62);
      v54 = sub_1C441D828(v52, v53, &v69);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_1C43F8000, v48, v49, "%s: revertTimestamp error", v50, 0xCu);
      sub_1C440962C(v51);
      MEMORY[0x1C6942830](v51, -1, -1);
      MEMORY[0x1C6942830](v50, -1, -1);
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return a2;
}

uint64_t sub_1C48543A0()
{

  sub_1C4859BD8(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14GraphDiffPhase_stores, type metadata accessor for PhaseStores);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4854428(uint64_t a1)
{
  result = type metadata accessor for PhaseStores(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C48544CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return sub_1C48523FC();
}

uint64_t sub_1C4854598(uint64_t a1)
{
  result = sub_1C4859B90(qword_1EDDE9D50, type metadata accessor for GraphDiffPhase, &unk_1C4F32498);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4854600(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v69 = a4;
  v70 = a2;
  v71 = a3;
  v84 = a1;
  v83 = type metadata accessor for ExpiredConstructionEventTriple(0);
  MEMORY[0x1EEE9AC00](v83);
  v86 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ConstructionEventTriple(0);
  v76 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v77 = &v66 - v8;
  v81 = type metadata accessor for EventTriple(0);
  v79 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v85 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v66 - v11;
  v12 = sub_1C456902C(&qword_1EC0BDFD0, &qword_1C4F324F8);
  v13 = *(v12 - 8);
  v73 = v12;
  v74 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v66 - v14;
  v15 = sub_1C456902C(&qword_1EC0BDFD8, &unk_1C4F32500);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v66 - v17;
  sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
  v19 = swift_allocObject();
  v72 = xmmword_1C4F0D130;
  *(v19 + 16) = xmmword_1C4F0D130;
  *(v19 + 56) = &type metadata for FusedTripleColumn;
  v20 = sub_1C4811294();
  *(v19 + 64) = v20;
  *(v19 + 32) = 0;
  sub_1C4859B90(&qword_1EDDE2778, type metadata accessor for ConstructionEventTriple, &protocol conformance descriptor for ConstructionEventTriple);
  sub_1C4EFAE08();

  sub_1C4401CBC(&unk_1EDDF00C0, &qword_1EC0BDFD8, &unk_1C4F32500, MEMORY[0x1E699FF60]);
  sub_1C4859B90(&qword_1EDDE2768, type metadata accessor for ConstructionEventTriple, &protocol conformance descriptor for ConstructionEventTriple);
  v21 = v82;
  sub_1C4EFAFD8();
  if (v21)
  {
    return (*(v16 + 8))(v18, v15);
  }

  v23 = v80;
  v82 = v5;
  (*(v16 + 8))(v18, v15);
  v24 = sub_1C4EFB088();

  v25 = swift_allocObject();
  *(v25 + 16) = v72;
  *(v25 + 56) = &type metadata for FusedTripleColumn;
  *(v25 + 64) = v20;
  *(v25 + 32) = 0;
  sub_1C4859B90(&qword_1EDDFE2E8, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
  sub_1C4EFAE08();

  sub_1C4401CBC(&unk_1EDDFF9D0, &qword_1EC0BDFD0, &qword_1C4F324F8, MEMORY[0x1E699FF60]);
  sub_1C4859B90(&qword_1EDDFC2C8, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
  v26 = v73;
  sub_1C4EFAFD8();
  (*(v74 + 8))(v23, v26);
  v27 = sub_1C4EFB088();
  v68 = v24;

  v28 = v85;
  v29 = v86;
  v31 = v77;
  v30 = v78;
  v32 = v76;
  for (i = v27; ; v27 = i)
  {
    result = sub_1C4855DB8(v68, v27, v70, v71);
    v80 = v34;
    v35 = v79;
    if (!result)
    {
      break;
    }

    *&v72 = result;
    v36 = 0;
    v37 = v80;
    v38 = *(v80 + 2);
    v73 = v33;
    v74 = v38;
    while (v74 != v36)
    {
      if (v36 >= *(v37 + 2))
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        return result;
      }

      v39 = v75;
      sub_1C4859B30(&v37[((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v36], v75, type metadata accessor for EventTriple);
      sub_1C4859B30(v39, v28, type metadata accessor for EventTriple);
      v40 = sub_1C4EFF0C8();
      (*(*(v40 - 8) + 16))(v29, v28, v40);
      v41 = v81;
      v42 = *(v81 + 20);
      v43 = v83[5];
      v44 = sub_1C4EFEEF8();
      v45 = *(*(v44 - 8) + 16);
      v45(&v86[v43], &v85[v42], v44);
      v46 = v41[6];
      v47 = v83[6];
      v48 = sub_1C4EFF8A8();
      (*(*(v48 - 8) + 16))(&v86[v47], &v85[v46], v48);
      v45(&v86[v83[7]], &v85[v41[7]], v44);
      v49 = &v85[v41[8]];
      v51 = *v49;
      v50 = *(v49 + 1);
      v52 = *&v85[v41[9]];
      v53 = v41[10];
      v54 = v41[11];
      v28 = v85;
      v55 = *&v85[v53];
      v57 = *&v85[v54];
      v56 = *&v85[v54 + 8];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v58 = &v86[v83[8]];
      *v58 = v51;
      *(v58 + 1) = v50;
      v59 = v83;
      *&v86[v83[9]] = v52;
      *&v86[v59[10]] = v55;
      v60 = &v86[v59[11]];
      *v60 = v57;
      *(v60 + 1) = v56;
      *&v86[v59[12]] = v61;
      sub_1C4859B90(&qword_1EC0BDFE0, type metadata accessor for ExpiredConstructionEventTriple, &protocol conformance descriptor for ExpiredConstructionEventTriple);
      v29 = v86;
      sub_1C4EFB6C8();
      ++v36;
      sub_1C4859BD8(v29, type metadata accessor for ExpiredConstructionEventTriple);
      sub_1C4859BD8(v28, type metadata accessor for EventTriple);
      result = sub_1C4859BD8(v39, type metadata accessor for EventTriple);
      v31 = v77;
      v30 = v78;
      v32 = v76;
      v35 = v79;
      v37 = v80;
    }

    v62 = 0;
    result = v73;
    v63 = *(v73 + 16);
    while (v63 != v62)
    {
      if (v62 >= *(result + 16))
      {
        goto LABEL_20;
      }

      sub_1C4859B30(result + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v62, v31, type metadata accessor for ConstructionEventTriple);
      sub_1C4859B90(&qword_1EDDE2758, type metadata accessor for ConstructionEventTriple, &protocol conformance descriptor for ConstructionEventTriple);
      sub_1C4EFBA58();
      ++v62;
      sub_1C4859BD8(v31, type metadata accessor for ConstructionEventTriple);
      result = v73;
    }

    v64 = 0;
    v65 = *(v72 + 16);
    while (v65 != v64)
    {
      if (v64 >= *(v72 + 16))
      {
        goto LABEL_21;
      }

      sub_1C4859B30(v72 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v64, v30, type metadata accessor for ConstructionEventTriple);
      sub_1C4859B90(&qword_1EDDE2760, type metadata accessor for ConstructionEventTriple, &protocol conformance descriptor for ConstructionEventTriple);
      sub_1C4EFB6A8();
      ++v64;
      sub_1C4859BD8(v30, type metadata accessor for ConstructionEventTriple);
      result = v73;
    }
  }
}

uint64_t sub_1C48551DC(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v69 = a4;
  v70 = a2;
  v71 = a3;
  v84 = a1;
  v83 = type metadata accessor for ExpiredConstructionGraphTriple(0);
  MEMORY[0x1EEE9AC00](v83);
  v86 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ConstructionGraphTriple(0);
  v76 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v77 = &v66 - v8;
  v81 = type metadata accessor for GraphTriple(0);
  v79 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v85 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v66 - v11;
  v12 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v13 = *(v12 - 8);
  v73 = v12;
  v74 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v66 - v14;
  v15 = sub_1C456902C(&qword_1EC0BA580, &unk_1C4F32530);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v66 - v17;
  sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
  v19 = swift_allocObject();
  v72 = xmmword_1C4F0D130;
  *(v19 + 16) = xmmword_1C4F0D130;
  *(v19 + 56) = &type metadata for FusedTripleColumn;
  v20 = sub_1C4811294();
  *(v19 + 64) = v20;
  *(v19 + 32) = 0;
  sub_1C4859B90(&unk_1EDDF3848, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple);
  sub_1C4EFAE08();

  sub_1C4401CBC(&qword_1EDDF00B0, &qword_1EC0BA580, &unk_1C4F32530, MEMORY[0x1E699FF60]);
  sub_1C4859B90(&qword_1EDDE2660, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple);
  v21 = v82;
  sub_1C4EFAFD8();
  if (v21)
  {
    return (*(v16 + 8))(v18, v15);
  }

  v23 = v80;
  v82 = v5;
  (*(v16 + 8))(v18, v15);
  v24 = sub_1C4EFB088();

  v25 = swift_allocObject();
  *(v25 + 16) = v72;
  *(v25 + 56) = &type metadata for FusedTripleColumn;
  *(v25 + 64) = v20;
  *(v25 + 32) = 0;
  sub_1C4859B90(&qword_1EDDFE210, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  sub_1C4EFAE08();

  sub_1C4401CBC(&qword_1EDDFE870, &unk_1EC0C0800, &qword_1C4F0F948, MEMORY[0x1E699FF60]);
  sub_1C4859B90(&qword_1EDDFE208, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  v26 = v73;
  sub_1C4EFAFD8();
  (*(v74 + 8))(v23, v26);
  v27 = sub_1C4EFB088();
  v68 = v24;

  v28 = v85;
  v29 = v86;
  v31 = v77;
  v30 = v78;
  v32 = v76;
  for (i = v27; ; v27 = i)
  {
    result = sub_1C4856BB0(v68, v27, v70, v71);
    v80 = v34;
    v35 = v79;
    if (!result)
    {
      break;
    }

    *&v72 = result;
    v36 = 0;
    v37 = v80;
    v38 = *(v80 + 2);
    v73 = v33;
    v74 = v38;
    while (v74 != v36)
    {
      if (v36 >= *(v37 + 2))
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        return result;
      }

      v39 = v75;
      sub_1C4859B30(&v37[((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v36], v75, type metadata accessor for GraphTriple);
      sub_1C4859B30(v39, v28, type metadata accessor for GraphTriple);
      v40 = sub_1C4EFF0C8();
      (*(*(v40 - 8) + 16))(v29, v28, v40);
      v41 = v81;
      v42 = *(v81 + 20);
      v43 = v83[5];
      v44 = sub_1C4EFEEF8();
      v45 = *(*(v44 - 8) + 16);
      v45(&v86[v43], &v85[v42], v44);
      v46 = v41[6];
      v47 = v83[6];
      v48 = sub_1C4EFF8A8();
      (*(*(v48 - 8) + 16))(&v86[v47], &v85[v46], v48);
      v45(&v86[v83[7]], &v85[v41[7]], v44);
      v49 = &v85[v41[8]];
      v51 = *v49;
      v50 = *(v49 + 1);
      v52 = *&v85[v41[9]];
      v53 = v41[10];
      v54 = v41[11];
      v28 = v85;
      v55 = *&v85[v53];
      v57 = *&v85[v54];
      v56 = *&v85[v54 + 8];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v58 = &v86[v83[8]];
      *v58 = v51;
      *(v58 + 1) = v50;
      v59 = v83;
      *&v86[v83[9]] = v52;
      *&v86[v59[10]] = v55;
      v60 = &v86[v59[11]];
      *v60 = v57;
      *(v60 + 1) = v56;
      *&v86[v59[12]] = v61;
      sub_1C4859B90(&qword_1EDDDF240, type metadata accessor for ExpiredConstructionGraphTriple, &protocol conformance descriptor for ExpiredConstructionGraphTriple);
      v29 = v86;
      sub_1C4EFB6C8();
      ++v36;
      sub_1C4859BD8(v29, type metadata accessor for ExpiredConstructionGraphTriple);
      sub_1C4859BD8(v28, type metadata accessor for GraphTriple);
      result = sub_1C4859BD8(v39, type metadata accessor for GraphTriple);
      v31 = v77;
      v30 = v78;
      v32 = v76;
      v35 = v79;
      v37 = v80;
    }

    v62 = 0;
    result = v73;
    v63 = *(v73 + 16);
    while (v63 != v62)
    {
      if (v62 >= *(result + 16))
      {
        goto LABEL_20;
      }

      sub_1C4859B30(result + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v62, v31, type metadata accessor for ConstructionGraphTriple);
      sub_1C4859B90(&qword_1EDDE2650, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple);
      sub_1C4EFBA58();
      ++v62;
      sub_1C4859BD8(v31, type metadata accessor for ConstructionGraphTriple);
      result = v73;
    }

    v64 = 0;
    v65 = *(v72 + 16);
    while (v65 != v64)
    {
      if (v64 >= *(v72 + 16))
      {
        goto LABEL_21;
      }

      sub_1C4859B30(v72 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v64, v30, type metadata accessor for ConstructionGraphTriple);
      sub_1C4859B90(&qword_1EDDE2658, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple);
      sub_1C4EFB6A8();
      ++v64;
      sub_1C4859BD8(v30, type metadata accessor for ConstructionGraphTriple);
      result = v73;
    }
  }
}

uint64_t (*sub_1C4855DB8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4))(void)
{
  v91 = a4;
  v89 = a3;
  v111 = a2;
  v5 = type metadata accessor for EventTriple(0);
  v6 = *(v5 - 8);
  v101 = v5;
  v102 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v90 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v108 = &v89 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v106 = &v89 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v95 = &v89 - v13;
  v14 = sub_1C4EFF0C8();
  v99 = *(v14 - 8);
  v100 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v104 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v107 = &v89 - v17;
  v18 = type metadata accessor for ConstructionEventTriple(0);
  v105 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v94 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v109 = &v89 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v89 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v98 = &v89 - v26;
  v27 = sub_1C456902C(&unk_1EC0BC8E0, &qword_1C4F29AC0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v93 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v92 = &v89 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v89 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v97 = &v89 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v89 - v37;
  v39 = sub_1C456902C(&qword_1EC0BDFE8, &qword_1C4F54070);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v96 = &v89 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v89 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v89 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v89 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v89 - v51;
  v112 = a1;
  sub_1C4EFF4E8();
  sub_1C4EFF4E8();
  v53 = v101;
  v103 = v52;
  v54 = v52;
  v55 = v38;
  v56 = v18;
  if (sub_1C44157D4(v54, 1, v18) == 1 && sub_1C44157D4(v55, 1, v53) == 1)
  {
    sub_1C4420C3C(v55, &unk_1EC0BC8E0, &qword_1C4F29AC0);
    sub_1C4420C3C(v103, &qword_1EC0BDFE8, &qword_1C4F54070);
    return 0;
  }

  sub_1C445FFF0(v103, v49, &qword_1EC0BDFE8, &qword_1C4F54070);
  v57 = sub_1C44157D4(v49, 1, v18);
  v58 = v110;
  if (v57 == 1)
  {
    sub_1C4420C3C(v49, &qword_1EC0BDFE8, &qword_1C4F54070);
  }

  else
  {
    v59 = v49;
    v60 = v98;
    sub_1C448AD18(v59, v98, type metadata accessor for ConstructionEventTriple);
    if (sub_1C44157D4(v55, 1, v53) == 1)
    {
      v111 = v55;
      (*(v99 + 16))(v107, v60, v100);
      v61 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        sub_1C4EFF4E8();
        if (sub_1C44157D4(v46, 1, v56) == 1)
        {
          break;
        }

        sub_1C448AD18(v46, v24, type metadata accessor for ConstructionEventTriple);
        if ((sub_1C4EFF088() & 1) == 0)
        {
          sub_1C4859BD8(v24, type metadata accessor for ConstructionEventTriple);
          goto LABEL_38;
        }

        sub_1C4859B30(v24, v109, type metadata accessor for ConstructionEventTriple);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458DA98(0, *(v61 + 16) + 1, 1, v61);
          v61 = v64;
        }

        v63 = *(v61 + 16);
        v62 = *(v61 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_1C458DA98(v62 > 1, v63 + 1, 1, v61);
          v61 = v65;
        }

        *(v61 + 16) = v63 + 1;
        sub_1C448AD18(v109, v61 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v63, type metadata accessor for ConstructionEventTriple);
        sub_1C4EFF4D8();
        if (v58)
        {
          v53 = type metadata accessor for ConstructionEventTriple;
          sub_1C4859BD8(v24, type metadata accessor for ConstructionEventTriple);
          (*(v99 + 8))(v107, v100);
          sub_1C4859BD8(v98, type metadata accessor for ConstructionEventTriple);

          v66 = v103;
          v55 = v111;
          goto LABEL_44;
        }

        sub_1C4420C3C(v43, &qword_1EC0BDFE8, &qword_1C4F54070);
        sub_1C4859BD8(v24, type metadata accessor for ConstructionEventTriple);
      }

      sub_1C4420C3C(v46, &qword_1EC0BDFE8, &qword_1C4F54070);
LABEL_38:
      sub_1C4EF9AE8();
      v53 = sub_1C4853208(v61, v87);
      (*(v99 + 8))(v107, v100);
      sub_1C4859BD8(v98, type metadata accessor for ConstructionEventTriple);
      sub_1C4420C3C(v111, &unk_1EC0BC8E0, &qword_1C4F29AC0);
      sub_1C4420C3C(v103, &qword_1EC0BDFE8, &qword_1C4F54070);
      return v53;
    }

    sub_1C4859BD8(v60, type metadata accessor for ConstructionEventTriple);
  }

  v66 = v103;
  v67 = sub_1C44157D4(v103, 1, v56);
  v68 = v106;
  v69 = v97;
  if (v67 != 1)
  {
LABEL_20:
    v70 = v96;
    sub_1C445FFF0(v66, v96, &qword_1EC0BDFE8, &qword_1C4F54070);
    if (sub_1C44157D4(v70, 1, v56) == 1)
    {
      sub_1C4420C3C(v55, &unk_1EC0BC8E0, &qword_1C4F29AC0);
      v71 = &qword_1EC0BDFE8;
      v72 = &qword_1C4F54070;
      v73 = v66;
    }

    else
    {
      v74 = v94;
      sub_1C448AD18(v70, v94, type metadata accessor for ConstructionEventTriple);
      v70 = v93;
      sub_1C445FFF0(v55, v93, &unk_1EC0BC8E0, &qword_1C4F29AC0);
      if (sub_1C44157D4(v70, 1, v53) != 1)
      {
        v84 = v70;
        v85 = v90;
        sub_1C448AD18(v84, v90, type metadata accessor for EventTriple);
        sub_1C48579A8(v112, v74, v111, v85, v89, v91);
        if (v58)
        {
          sub_1C4859BD8(v85, type metadata accessor for EventTriple);
          sub_1C4859BD8(v74, type metadata accessor for ConstructionEventTriple);
          goto LABEL_44;
        }

        v53 = v86;
        sub_1C4859BD8(v85, type metadata accessor for EventTriple);
        sub_1C4859BD8(v74, type metadata accessor for ConstructionEventTriple);
        sub_1C4420C3C(v55, &unk_1EC0BC8E0, &qword_1C4F29AC0);
        sub_1C4420C3C(v66, &qword_1EC0BDFE8, &qword_1C4F54070);
        return v53;
      }

      sub_1C4859BD8(v74, type metadata accessor for ConstructionEventTriple);
      v71 = &unk_1EC0BC8E0;
      v72 = &qword_1C4F29AC0;
      sub_1C4420C3C(v55, &unk_1EC0BC8E0, &qword_1C4F29AC0);
      v73 = v66;
    }

    sub_1C4420C3C(v73, &qword_1EC0BDFE8, &qword_1C4F54070);
    sub_1C4420C3C(v70, v71, v72);
    return 0;
  }

  sub_1C445FFF0(v55, v97, &unk_1EC0BC8E0, &qword_1C4F29AC0);
  if (sub_1C44157D4(v69, 1, v53) == 1)
  {
    sub_1C4420C3C(v69, &unk_1EC0BC8E0, &qword_1C4F29AC0);
    goto LABEL_20;
  }

  v75 = v53;
  v76 = v95;
  sub_1C448AD18(v69, v95, type metadata accessor for EventTriple);
  (*(v99 + 16))(v104, v76, v100);
  v77 = MEMORY[0x1E69E7CC0];
  v78 = v92;
  while (1)
  {
    sub_1C4EFF4E8();
    if (sub_1C44157D4(v33, 1, v75) == 1)
    {
      sub_1C4420C3C(v33, &unk_1EC0BC8E0, &qword_1C4F29AC0);
LABEL_42:
      (*(v99 + 8))(v104, v100);
      sub_1C4859BD8(v95, type metadata accessor for EventTriple);
      sub_1C4420C3C(v55, &unk_1EC0BC8E0, &qword_1C4F29AC0);
      sub_1C4420C3C(v66, &qword_1EC0BDFE8, &qword_1C4F54070);
      return MEMORY[0x1E69E7CC0];
    }

    sub_1C448AD18(v33, v68, type metadata accessor for EventTriple);
    if ((sub_1C4EFF088() & 1) == 0)
    {
      sub_1C4859BD8(v68, type metadata accessor for EventTriple);
      goto LABEL_42;
    }

    sub_1C4859B30(v68, v108, type metadata accessor for EventTriple);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C458BAC8(0, *(v77 + 16) + 1, 1, v77);
      v77 = v82;
    }

    v80 = *(v77 + 16);
    v79 = *(v77 + 24);
    if (v80 >= v79 >> 1)
    {
      sub_1C458BAC8(v79 > 1, v80 + 1, 1, v77);
      v77 = v83;
    }

    *(v77 + 16) = v80 + 1;
    sub_1C448AD18(v108, v77 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v80, type metadata accessor for EventTriple);
    v81 = v110;
    sub_1C4EFF4D8();
    v110 = v81;
    if (v81)
    {
      break;
    }

    sub_1C4420C3C(v78, &unk_1EC0BC8E0, &qword_1C4F29AC0);
    v68 = v106;
    sub_1C4859BD8(v106, type metadata accessor for EventTriple);
  }

  v53 = type metadata accessor for EventTriple;
  sub_1C4859BD8(v106, type metadata accessor for EventTriple);
  (*(v99 + 8))(v104, v100);
  sub_1C4859BD8(v95, type metadata accessor for EventTriple);

LABEL_44:
  sub_1C4420C3C(v55, &unk_1EC0BC8E0, &qword_1C4F29AC0);
  sub_1C4420C3C(v66, &qword_1EC0BDFE8, &qword_1C4F54070);
  return v53;
}

uint64_t sub_1C4856BB0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v91 = a4;
  v89 = a3;
  v111 = a2;
  v5 = type metadata accessor for GraphTriple(0);
  v6 = *(v5 - 8);
  v101 = v5;
  v102 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v90 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v108 = &v89 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v106 = &v89 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v95 = &v89 - v13;
  v14 = sub_1C4EFF0C8();
  v99 = *(v14 - 8);
  v100 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v104 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v107 = &v89 - v17;
  v18 = type metadata accessor for ConstructionGraphTriple(0);
  v105 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v94 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v109 = &v89 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v89 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v98 = &v89 - v26;
  v27 = sub_1C456902C(&unk_1EC0BC900, byte_1C4F142D0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v93 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v92 = &v89 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v89 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v97 = &v89 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v89 - v37;
  v39 = sub_1C456902C(&unk_1EC0BCAE0, byte_1C4F142A0);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v96 = &v89 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v89 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v89 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v89 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v89 - v51;
  v112 = a1;
  sub_1C4EFF4E8();
  sub_1C4EFF4E8();
  v53 = v101;
  v103 = v52;
  v54 = v52;
  v55 = v38;
  v56 = v18;
  if (sub_1C44157D4(v54, 1, v18) == 1 && sub_1C44157D4(v55, 1, v53) == 1)
  {
    sub_1C4420C3C(v55, &unk_1EC0BC900, byte_1C4F142D0);
    sub_1C4420C3C(v103, &unk_1EC0BCAE0, byte_1C4F142A0);
    return 0;
  }

  sub_1C445FFF0(v103, v49, &unk_1EC0BCAE0, byte_1C4F142A0);
  v57 = sub_1C44157D4(v49, 1, v18);
  v58 = v110;
  if (v57 == 1)
  {
    sub_1C4420C3C(v49, &unk_1EC0BCAE0, byte_1C4F142A0);
  }

  else
  {
    v59 = v49;
    v60 = v98;
    sub_1C448AD18(v59, v98, type metadata accessor for ConstructionGraphTriple);
    if (sub_1C44157D4(v55, 1, v53) == 1)
    {
      v111 = v55;
      (*(v99 + 16))(v107, v60, v100);
      v61 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        sub_1C4EFF4E8();
        if (sub_1C44157D4(v46, 1, v56) == 1)
        {
          break;
        }

        sub_1C448AD18(v46, v24, type metadata accessor for ConstructionGraphTriple);
        if ((sub_1C4EFF088() & 1) == 0)
        {
          sub_1C4859BD8(v24, type metadata accessor for ConstructionGraphTriple);
          goto LABEL_38;
        }

        sub_1C4859B30(v24, v109, type metadata accessor for ConstructionGraphTriple);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C44EE8C8(0, *(v61 + 16) + 1, 1, v61);
          v61 = v64;
        }

        v63 = *(v61 + 16);
        v62 = *(v61 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_1C44EE8C8(v62 > 1, v63 + 1, 1, v61);
          v61 = v65;
        }

        *(v61 + 16) = v63 + 1;
        sub_1C448AD18(v109, v61 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v63, type metadata accessor for ConstructionGraphTriple);
        sub_1C4EFF4D8();
        if (v58)
        {
          v53 = type metadata accessor for ConstructionGraphTriple;
          sub_1C4859BD8(v24, type metadata accessor for ConstructionGraphTriple);
          (*(v99 + 8))(v107, v100);
          sub_1C4859BD8(v98, type metadata accessor for ConstructionGraphTriple);

          v66 = v103;
          v55 = v111;
          goto LABEL_44;
        }

        sub_1C4420C3C(v43, &unk_1EC0BCAE0, byte_1C4F142A0);
        sub_1C4859BD8(v24, type metadata accessor for ConstructionGraphTriple);
      }

      sub_1C4420C3C(v46, &unk_1EC0BCAE0, byte_1C4F142A0);
LABEL_38:
      sub_1C4EF9AE8();
      v53 = sub_1C4853520(v61, v87);
      (*(v99 + 8))(v107, v100);
      sub_1C4859BD8(v98, type metadata accessor for ConstructionGraphTriple);
      sub_1C4420C3C(v111, &unk_1EC0BC900, byte_1C4F142D0);
      sub_1C4420C3C(v103, &unk_1EC0BCAE0, byte_1C4F142A0);
      return v53;
    }

    sub_1C4859BD8(v60, type metadata accessor for ConstructionGraphTriple);
  }

  v66 = v103;
  v67 = sub_1C44157D4(v103, 1, v56);
  v68 = v106;
  v69 = v97;
  if (v67 != 1)
  {
LABEL_20:
    v70 = v96;
    sub_1C445FFF0(v66, v96, &unk_1EC0BCAE0, byte_1C4F142A0);
    if (sub_1C44157D4(v70, 1, v56) == 1)
    {
      sub_1C4420C3C(v55, &unk_1EC0BC900, byte_1C4F142D0);
      v71 = &unk_1EC0BCAE0;
      v72 = byte_1C4F142A0;
      v73 = v66;
    }

    else
    {
      v74 = v94;
      sub_1C448AD18(v70, v94, type metadata accessor for ConstructionGraphTriple);
      v70 = v93;
      sub_1C445FFF0(v55, v93, &unk_1EC0BC900, byte_1C4F142D0);
      if (sub_1C44157D4(v70, 1, v53) != 1)
      {
        v84 = v70;
        v85 = v90;
        sub_1C448AD18(v84, v90, type metadata accessor for GraphTriple);
        sub_1C4858A4C(v112, v74, v111, v85, v89, v91);
        if (v58)
        {
          sub_1C4859BD8(v85, type metadata accessor for GraphTriple);
          sub_1C4859BD8(v74, type metadata accessor for ConstructionGraphTriple);
          goto LABEL_44;
        }

        v53 = v86;
        sub_1C4859BD8(v85, type metadata accessor for GraphTriple);
        sub_1C4859BD8(v74, type metadata accessor for ConstructionGraphTriple);
        sub_1C4420C3C(v55, &unk_1EC0BC900, byte_1C4F142D0);
        sub_1C4420C3C(v66, &unk_1EC0BCAE0, byte_1C4F142A0);
        return v53;
      }

      sub_1C4859BD8(v74, type metadata accessor for ConstructionGraphTriple);
      v71 = &unk_1EC0BC900;
      v72 = byte_1C4F142D0;
      sub_1C4420C3C(v55, &unk_1EC0BC900, byte_1C4F142D0);
      v73 = v66;
    }

    sub_1C4420C3C(v73, &unk_1EC0BCAE0, byte_1C4F142A0);
    sub_1C4420C3C(v70, v71, v72);
    return 0;
  }

  sub_1C445FFF0(v55, v97, &unk_1EC0BC900, byte_1C4F142D0);
  if (sub_1C44157D4(v69, 1, v53) == 1)
  {
    sub_1C4420C3C(v69, &unk_1EC0BC900, byte_1C4F142D0);
    goto LABEL_20;
  }

  v75 = v53;
  v76 = v95;
  sub_1C448AD18(v69, v95, type metadata accessor for GraphTriple);
  (*(v99 + 16))(v104, v76, v100);
  v77 = MEMORY[0x1E69E7CC0];
  v78 = v92;
  while (1)
  {
    sub_1C4EFF4E8();
    if (sub_1C44157D4(v33, 1, v75) == 1)
    {
      sub_1C4420C3C(v33, &unk_1EC0BC900, byte_1C4F142D0);
LABEL_42:
      (*(v99 + 8))(v104, v100);
      sub_1C4859BD8(v95, type metadata accessor for GraphTriple);
      sub_1C4420C3C(v55, &unk_1EC0BC900, byte_1C4F142D0);
      sub_1C4420C3C(v66, &unk_1EC0BCAE0, byte_1C4F142A0);
      return MEMORY[0x1E69E7CC0];
    }

    sub_1C448AD18(v33, v68, type metadata accessor for GraphTriple);
    if ((sub_1C4EFF088() & 1) == 0)
    {
      sub_1C4859BD8(v68, type metadata accessor for GraphTriple);
      goto LABEL_42;
    }

    sub_1C4859B30(v68, v108, type metadata accessor for GraphTriple);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C44F1730(0, *(v77 + 16) + 1, 1, v77);
      v77 = v82;
    }

    v80 = *(v77 + 16);
    v79 = *(v77 + 24);
    if (v80 >= v79 >> 1)
    {
      sub_1C44F1730(v79 > 1, v80 + 1, 1, v77);
      v77 = v83;
    }

    *(v77 + 16) = v80 + 1;
    sub_1C448AD18(v108, v77 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v80, type metadata accessor for GraphTriple);
    v81 = v110;
    sub_1C4EFF4D8();
    v110 = v81;
    if (v81)
    {
      break;
    }

    sub_1C4420C3C(v78, &unk_1EC0BC900, byte_1C4F142D0);
    v68 = v106;
    sub_1C4859BD8(v106, type metadata accessor for GraphTriple);
  }

  v53 = type metadata accessor for GraphTriple;
  sub_1C4859BD8(v106, type metadata accessor for GraphTriple);
  (*(v99 + 8))(v104, v100);
  sub_1C4859BD8(v95, type metadata accessor for GraphTriple);

LABEL_44:
  sub_1C4420C3C(v55, &unk_1EC0BC900, byte_1C4F142D0);
  sub_1C4420C3C(v66, &unk_1EC0BCAE0, byte_1C4F142A0);
  return v53;
}

void sub_1C48579A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v126 = a6;
  v127 = a5;
  v147 = a4;
  v148 = a3;
  v146 = a2;
  v153 = a1;
  v6 = sub_1C456902C(&unk_1EC0BC8E0, &qword_1C4F29AC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v132 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v133 = &v126 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v128 = &v126 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v136 = &v126 - v13;
  v14 = type metadata accessor for EventTriple(0);
  v139 = *(v14 - 8);
  v140 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v137 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v138 = &v126 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v142 = &v126 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v144 = &v126 - v21;
  v22 = sub_1C456902C(&qword_1EC0BDFE8, &qword_1C4F54070);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v134 = &v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v135 = &v126 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v129 = &v126 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v126 - v29;
  v31 = type metadata accessor for ConstructionEventTriple(0);
  v151 = *(v31 - 8);
  v152 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v141 = &v126 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v143 = &v126 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v126 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v126 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v149 = &v126 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v126 - v44;
  v46 = sub_1C4EFF0C8();
  v47 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v126 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v50);
  v53 = &v126 - v52;
  v130 = v47;
  v54 = *(v47 + 16);
  v54(&v126 - v52, v146, v46, v51);
  v145 = v54;
  v146 = v47 + 16;
  (v54)(v49, v147, v46);
  v55 = sub_1C4EFF078();
  v147 = v46;
  v131 = v49;
  if (v55)
  {
    v142 = v53;
    v56 = MEMORY[0x1E69E7CC0];
    v57 = v129;
    while (1)
    {
      sub_1C4EFF4E8();
      if (sub_1C44157D4(v30, 1, v152) == 1)
      {
        sub_1C4420C3C(v30, &qword_1EC0BDFE8, &qword_1C4F54070);
        goto LABEL_32;
      }

      sub_1C448AD18(v30, v45, type metadata accessor for ConstructionEventTriple);
      if ((sub_1C4EFF088() & 1) == 0)
      {
        break;
      }

      sub_1C4859B30(v45, v149, type metadata accessor for ConstructionEventTriple);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458DA98(0, *(v56 + 16) + 1, 1, v56);
        v56 = v61;
      }

      v59 = *(v56 + 16);
      v58 = *(v56 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_1C458DA98(v58 > 1, v59 + 1, 1, v56);
        v56 = v62;
      }

      *(v56 + 16) = v59 + 1;
      sub_1C448AD18(v149, v56 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v59, type metadata accessor for ConstructionEventTriple);
      v60 = v150;
      sub_1C4EFF4D8();
      v150 = v60;
      if (v60)
      {
        sub_1C4859BD8(v45, type metadata accessor for ConstructionEventTriple);
        v107 = *(v130 + 8);
        v107(v131, v46);
        v107(v142, v46);
        goto LABEL_61;
      }

      sub_1C4420C3C(v57, &qword_1EC0BDFE8, &qword_1C4F54070);
      sub_1C4859BD8(v45, type metadata accessor for ConstructionEventTriple);
    }

    sub_1C4859BD8(v45, type metadata accessor for ConstructionEventTriple);
LABEL_32:
    sub_1C4EF9AE8();
    v86 = *(v56 + 16);
    if (v86)
    {
      v87 = v85;
      v154 = MEMORY[0x1E69E7CC0];
      sub_1C459E630();
      v88 = 0;
      v89 = v154;
      v144 = (*(v151 + 80) + 32) & ~*(v151 + 80);
      v143 = v56 + v144;
      v148 = v56;
      v149 = v86;
      while (v88 < *(v56 + 16))
      {
        v153 = *(v151 + 72);
        sub_1C4859B30(v143 + v153 * v88, v37, type metadata accessor for ConstructionEventTriple);
        v145(v40, v37, v46);
        v90 = v152;
        v91 = v152[5];
        v92 = sub_1C4EFEEF8();
        v93 = *(*(v92 - 8) + 16);
        v93(&v40[v91], &v37[v91], v92);
        v94 = v90[6];
        v95 = sub_1C4EFF8A8();
        (*(*(v95 - 8) + 16))(&v40[v94], &v37[v94], v95);
        v93(&v40[v90[7]], &v37[v90[7]], v92);
        v96 = v90[8];
        v97 = *&v37[v90[9]];
        v99 = *&v37[v96];
        v98 = *&v37[v96 + 8];
        v100 = *&v37[v90[10]];
        v101 = &v37[v90[11]];
        v102 = *v101;
        v103 = *(v101 + 1);
        v104 = &v40[v96];
        *v104 = v99;
        *(v104 + 1) = v98;
        *&v40[v90[9]] = v97;
        *&v40[v90[10]] = v100;
        v105 = &v40[v90[11]];
        *v105 = v102;
        *(v105 + 1) = v103;
        *&v40[v90[12]] = v87;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4859BD8(v37, type metadata accessor for ConstructionEventTriple);
        v154 = v89;
        v106 = *(v89 + 16);
        if (v106 >= *(v89 + 24) >> 1)
        {
          sub_1C459E630();
          v89 = v154;
        }

        ++v88;
        *(v89 + 16) = v106 + 1;
        sub_1C448AD18(v40, v89 + v144 + v106 * v153, type metadata accessor for ConstructionEventTriple);
        v56 = v148;
        v46 = v147;
        if (v149 == v88)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_40:
      v63 = v142;
LABEL_59:
      v121 = *(v130 + 8);
      v122 = v147;
      v121(v131, v147);
      v121(v63, v122);
    }
  }

  else
  {
    sub_1C4859B90(&unk_1EDDFA1B0, MEMORY[0x1E69A9810], MEMORY[0x1E69A9828]);
    v63 = v53;
    if ((sub_1C4F01068() & 1) == 0)
    {
      v74 = MEMORY[0x1E69E7CC0];
      v75 = v150;
      v76 = v131;
      v77 = v133;
      while (1)
      {
        v78 = v135;
        sub_1C4EFF4E8();
        if (sub_1C44157D4(v78, 1, v152) == 1)
        {
          break;
        }

        v79 = v143;
        sub_1C448AD18(v78, v143, type metadata accessor for ConstructionEventTriple);
        if ((sub_1C4EFF088() & 1) == 0)
        {
          sub_1C4859BD8(v79, type metadata accessor for ConstructionEventTriple);
          goto LABEL_45;
        }

        sub_1C4859B30(v79, v141, type metadata accessor for ConstructionEventTriple);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458DA98(0, *(v74 + 16) + 1, 1, v74);
          v74 = v83;
        }

        v81 = *(v74 + 16);
        v80 = *(v74 + 24);
        if (v81 >= v80 >> 1)
        {
          sub_1C458DA98(v80 > 1, v81 + 1, 1, v74);
          v74 = v84;
        }

        *(v74 + 16) = v81 + 1;
        sub_1C448AD18(v141, v74 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v81, type metadata accessor for ConstructionEventTriple);
        v82 = v134;
        sub_1C4EFF4D8();
        if (v75)
        {
          sub_1C4859BD8(v143, type metadata accessor for ConstructionEventTriple);
          v118 = v76;
          v119 = *(v130 + 8);
          v120 = v147;
          v119(v118, v147);
          v119(v63, v120);
          goto LABEL_61;
        }

        sub_1C4420C3C(v82, &qword_1EC0BDFE8, &qword_1C4F54070);
        sub_1C4859BD8(v143, type metadata accessor for ConstructionEventTriple);
      }

      sub_1C4420C3C(v78, &qword_1EC0BDFE8, &qword_1C4F54070);
LABEL_45:
      v108 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        sub_1C4EFF4E8();
        if (sub_1C44157D4(v77, 1, v140) == 1)
        {
          break;
        }

        v109 = v138;
        sub_1C448AD18(v77, v138, type metadata accessor for EventTriple);
        if ((sub_1C4EFF088() & 1) == 0)
        {
          sub_1C4859BD8(v109, type metadata accessor for EventTriple);
          goto LABEL_58;
        }

        sub_1C4859B30(v109, v137, type metadata accessor for EventTriple);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458BAC8(0, *(v108 + 16) + 1, 1, v108);
          v108 = v113;
        }

        v111 = *(v108 + 16);
        v110 = *(v108 + 24);
        if (v111 >= v110 >> 1)
        {
          sub_1C458BAC8(v110 > 1, v111 + 1, 1, v108);
          v108 = v114;
        }

        *(v108 + 16) = v111 + 1;
        sub_1C448AD18(v137, v108 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v111, type metadata accessor for EventTriple);
        v112 = v132;
        sub_1C4EFF4D8();
        if (v75)
        {
          sub_1C4859BD8(v138, type metadata accessor for EventTriple);
          v123 = v76;
          v124 = *(v130 + 8);
          v125 = v147;
          v124(v123, v147);
          v124(v63, v125);

          goto LABEL_61;
        }

        sub_1C4420C3C(v112, &unk_1EC0BC8E0, &qword_1C4F29AC0);
        sub_1C4859BD8(v138, type metadata accessor for EventTriple);
        v77 = v133;
      }

      sub_1C4420C3C(v77, &unk_1EC0BC8E0, &qword_1C4F29AC0);
LABEL_58:
      v127(v74, v108);

      goto LABEL_59;
    }

    v64 = MEMORY[0x1E69E7CC0];
    v65 = v150;
    v66 = v131;
    v67 = v128;
    while (1)
    {
      v68 = v136;
      sub_1C4EFF4E8();
      if (sub_1C44157D4(v68, 1, v140) == 1)
      {
        sub_1C4420C3C(v68, &unk_1EC0BC8E0, &qword_1C4F29AC0);
        goto LABEL_59;
      }

      v69 = v144;
      sub_1C448AD18(v68, v144, type metadata accessor for EventTriple);
      if ((sub_1C4EFF088() & 1) == 0)
      {
        sub_1C4859BD8(v69, type metadata accessor for EventTriple);
        goto LABEL_59;
      }

      sub_1C4859B30(v69, v142, type metadata accessor for EventTriple);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458BAC8(0, *(v64 + 16) + 1, 1, v64);
        v64 = v72;
      }

      v71 = *(v64 + 16);
      v70 = *(v64 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_1C458BAC8(v70 > 1, v71 + 1, 1, v64);
        v64 = v73;
      }

      *(v64 + 16) = v71 + 1;
      sub_1C448AD18(v142, v64 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v71, type metadata accessor for EventTriple);
      sub_1C4EFF4D8();
      if (v65)
      {
        break;
      }

      sub_1C4420C3C(v67, &unk_1EC0BC8E0, &qword_1C4F29AC0);
      sub_1C4859BD8(v144, type metadata accessor for EventTriple);
    }

    sub_1C4859BD8(v144, type metadata accessor for EventTriple);
    v115 = v66;
    v116 = *(v130 + 8);
    v117 = v147;
    v116(v115, v147);
    v116(v63, v117);
LABEL_61:
  }
}

void sub_1C4858A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v126 = a6;
  v127 = a5;
  v147 = a4;
  v148 = a3;
  v146 = a2;
  v153 = a1;
  v6 = sub_1C456902C(&unk_1EC0BC900, byte_1C4F142D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v132 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v133 = &v126 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v128 = &v126 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v136 = &v126 - v13;
  v14 = type metadata accessor for GraphTriple(0);
  v139 = *(v14 - 8);
  v140 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v137 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v138 = &v126 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v142 = &v126 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v144 = &v126 - v21;
  v22 = sub_1C456902C(&unk_1EC0BCAE0, byte_1C4F142A0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v134 = &v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v135 = &v126 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v129 = &v126 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v126 - v29;
  v31 = type metadata accessor for ConstructionGraphTriple(0);
  v151 = *(v31 - 8);
  v152 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v141 = &v126 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v143 = &v126 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v126 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v126 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v149 = &v126 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v126 - v44;
  v46 = sub_1C4EFF0C8();
  v47 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v126 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v50);
  v53 = &v126 - v52;
  v130 = v47;
  v54 = *(v47 + 16);
  v54(&v126 - v52, v146, v46, v51);
  v145 = v54;
  v146 = v47 + 16;
  (v54)(v49, v147, v46);
  v55 = sub_1C4EFF078();
  v147 = v46;
  v131 = v49;
  if (v55)
  {
    v142 = v53;
    v56 = MEMORY[0x1E69E7CC0];
    v57 = v129;
    while (1)
    {
      sub_1C4EFF4E8();
      if (sub_1C44157D4(v30, 1, v152) == 1)
      {
        sub_1C4420C3C(v30, &unk_1EC0BCAE0, byte_1C4F142A0);
        goto LABEL_32;
      }

      sub_1C448AD18(v30, v45, type metadata accessor for ConstructionGraphTriple);
      if ((sub_1C4EFF088() & 1) == 0)
      {
        break;
      }

      sub_1C4859B30(v45, v149, type metadata accessor for ConstructionGraphTriple);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C44EE8C8(0, *(v56 + 16) + 1, 1, v56);
        v56 = v61;
      }

      v59 = *(v56 + 16);
      v58 = *(v56 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_1C44EE8C8(v58 > 1, v59 + 1, 1, v56);
        v56 = v62;
      }

      *(v56 + 16) = v59 + 1;
      sub_1C448AD18(v149, v56 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v59, type metadata accessor for ConstructionGraphTriple);
      v60 = v150;
      sub_1C4EFF4D8();
      v150 = v60;
      if (v60)
      {
        sub_1C4859BD8(v45, type metadata accessor for ConstructionGraphTriple);
        v107 = *(v130 + 8);
        v107(v131, v46);
        v107(v142, v46);
        goto LABEL_61;
      }

      sub_1C4420C3C(v57, &unk_1EC0BCAE0, byte_1C4F142A0);
      sub_1C4859BD8(v45, type metadata accessor for ConstructionGraphTriple);
    }

    sub_1C4859BD8(v45, type metadata accessor for ConstructionGraphTriple);
LABEL_32:
    sub_1C4EF9AE8();
    v86 = *(v56 + 16);
    if (v86)
    {
      v87 = v85;
      v154 = MEMORY[0x1E69E7CC0];
      sub_1C459DC78();
      v88 = 0;
      v89 = v154;
      v144 = (*(v151 + 80) + 32) & ~*(v151 + 80);
      v143 = v56 + v144;
      v148 = v56;
      v149 = v86;
      while (v88 < *(v56 + 16))
      {
        v153 = *(v151 + 72);
        sub_1C4859B30(v143 + v153 * v88, v37, type metadata accessor for ConstructionGraphTriple);
        v145(v40, v37, v46);
        v90 = v152;
        v91 = v152[5];
        v92 = sub_1C4EFEEF8();
        v93 = *(*(v92 - 8) + 16);
        v93(&v40[v91], &v37[v91], v92);
        v94 = v90[6];
        v95 = sub_1C4EFF8A8();
        (*(*(v95 - 8) + 16))(&v40[v94], &v37[v94], v95);
        v93(&v40[v90[7]], &v37[v90[7]], v92);
        v96 = v90[8];
        v97 = *&v37[v90[9]];
        v99 = *&v37[v96];
        v98 = *&v37[v96 + 8];
        v100 = *&v37[v90[10]];
        v101 = &v37[v90[11]];
        v102 = *v101;
        v103 = *(v101 + 1);
        v104 = &v40[v96];
        *v104 = v99;
        *(v104 + 1) = v98;
        *&v40[v90[9]] = v97;
        *&v40[v90[10]] = v100;
        v105 = &v40[v90[11]];
        *v105 = v102;
        *(v105 + 1) = v103;
        *&v40[v90[12]] = v87;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4859BD8(v37, type metadata accessor for ConstructionGraphTriple);
        v154 = v89;
        v106 = *(v89 + 16);
        if (v106 >= *(v89 + 24) >> 1)
        {
          sub_1C459DC78();
          v89 = v154;
        }

        ++v88;
        *(v89 + 16) = v106 + 1;
        sub_1C448AD18(v40, v89 + v144 + v106 * v153, type metadata accessor for ConstructionGraphTriple);
        v56 = v148;
        v46 = v147;
        if (v149 == v88)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_40:
      v63 = v142;
LABEL_59:
      v121 = *(v130 + 8);
      v122 = v147;
      v121(v131, v147);
      v121(v63, v122);
    }
  }

  else
  {
    sub_1C4859B90(&unk_1EDDFA1B0, MEMORY[0x1E69A9810], MEMORY[0x1E69A9828]);
    v63 = v53;
    if ((sub_1C4F01068() & 1) == 0)
    {
      v74 = MEMORY[0x1E69E7CC0];
      v75 = v150;
      v76 = v131;
      v77 = v133;
      while (1)
      {
        v78 = v135;
        sub_1C4EFF4E8();
        if (sub_1C44157D4(v78, 1, v152) == 1)
        {
          break;
        }

        v79 = v143;
        sub_1C448AD18(v78, v143, type metadata accessor for ConstructionGraphTriple);
        if ((sub_1C4EFF088() & 1) == 0)
        {
          sub_1C4859BD8(v79, type metadata accessor for ConstructionGraphTriple);
          goto LABEL_45;
        }

        sub_1C4859B30(v79, v141, type metadata accessor for ConstructionGraphTriple);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C44EE8C8(0, *(v74 + 16) + 1, 1, v74);
          v74 = v83;
        }

        v81 = *(v74 + 16);
        v80 = *(v74 + 24);
        if (v81 >= v80 >> 1)
        {
          sub_1C44EE8C8(v80 > 1, v81 + 1, 1, v74);
          v74 = v84;
        }

        *(v74 + 16) = v81 + 1;
        sub_1C448AD18(v141, v74 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v81, type metadata accessor for ConstructionGraphTriple);
        v82 = v134;
        sub_1C4EFF4D8();
        if (v75)
        {
          sub_1C4859BD8(v143, type metadata accessor for ConstructionGraphTriple);
          v118 = v76;
          v119 = *(v130 + 8);
          v120 = v147;
          v119(v118, v147);
          v119(v63, v120);
          goto LABEL_61;
        }

        sub_1C4420C3C(v82, &unk_1EC0BCAE0, byte_1C4F142A0);
        sub_1C4859BD8(v143, type metadata accessor for ConstructionGraphTriple);
      }

      sub_1C4420C3C(v78, &unk_1EC0BCAE0, byte_1C4F142A0);
LABEL_45:
      v108 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        sub_1C4EFF4E8();
        if (sub_1C44157D4(v77, 1, v140) == 1)
        {
          break;
        }

        v109 = v138;
        sub_1C448AD18(v77, v138, type metadata accessor for GraphTriple);
        if ((sub_1C4EFF088() & 1) == 0)
        {
          sub_1C4859BD8(v109, type metadata accessor for GraphTriple);
          goto LABEL_58;
        }

        sub_1C4859B30(v109, v137, type metadata accessor for GraphTriple);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C44F1730(0, *(v108 + 16) + 1, 1, v108);
          v108 = v113;
        }

        v111 = *(v108 + 16);
        v110 = *(v108 + 24);
        if (v111 >= v110 >> 1)
        {
          sub_1C44F1730(v110 > 1, v111 + 1, 1, v108);
          v108 = v114;
        }

        *(v108 + 16) = v111 + 1;
        sub_1C448AD18(v137, v108 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v111, type metadata accessor for GraphTriple);
        v112 = v132;
        sub_1C4EFF4D8();
        if (v75)
        {
          sub_1C4859BD8(v138, type metadata accessor for GraphTriple);
          v123 = v76;
          v124 = *(v130 + 8);
          v125 = v147;
          v124(v123, v147);
          v124(v63, v125);

          goto LABEL_61;
        }

        sub_1C4420C3C(v112, &unk_1EC0BC900, byte_1C4F142D0);
        sub_1C4859BD8(v138, type metadata accessor for GraphTriple);
        v77 = v133;
      }

      sub_1C4420C3C(v77, &unk_1EC0BC900, byte_1C4F142D0);
LABEL_58:
      v127(v74, v108);

      goto LABEL_59;
    }

    v64 = MEMORY[0x1E69E7CC0];
    v65 = v150;
    v66 = v131;
    v67 = v128;
    while (1)
    {
      v68 = v136;
      sub_1C4EFF4E8();
      if (sub_1C44157D4(v68, 1, v140) == 1)
      {
        sub_1C4420C3C(v68, &unk_1EC0BC900, byte_1C4F142D0);
        goto LABEL_59;
      }

      v69 = v144;
      sub_1C448AD18(v68, v144, type metadata accessor for GraphTriple);
      if ((sub_1C4EFF088() & 1) == 0)
      {
        sub_1C4859BD8(v69, type metadata accessor for GraphTriple);
        goto LABEL_59;
      }

      sub_1C4859B30(v69, v142, type metadata accessor for GraphTriple);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C44F1730(0, *(v64 + 16) + 1, 1, v64);
        v64 = v72;
      }

      v71 = *(v64 + 16);
      v70 = *(v64 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_1C44F1730(v70 > 1, v71 + 1, 1, v64);
        v64 = v73;
      }

      *(v64 + 16) = v71 + 1;
      sub_1C448AD18(v142, v64 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v71, type metadata accessor for GraphTriple);
      sub_1C4EFF4D8();
      if (v65)
      {
        break;
      }

      sub_1C4420C3C(v67, &unk_1EC0BC900, byte_1C4F142D0);
      sub_1C4859BD8(v144, type metadata accessor for GraphTriple);
    }

    sub_1C4859BD8(v144, type metadata accessor for GraphTriple);
    v115 = v66;
    v116 = *(v130 + 8);
    v117 = v147;
    v116(v115, v147);
    v116(v63, v117);
LABEL_61:
  }
}

uint64_t sub_1C4859B30(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4859B90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4859BD8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4859C48()
{
  sub_1C4413284();

  v2 = sub_1C4485F10();
  v3 = type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple(v2);
  sub_1C456902C(&qword_1EC0BE458, &qword_1C4F371C8);
  sub_1C4F01198();
  sub_1C441C2C0();

  sub_1C44883E4();
  sub_1C4EFF0C8();
  sub_1C4419854();
  sub_1C4490F60(v4, v5, MEMORY[0x1E69A9840]);
  sub_1C4F02858();
  sub_1C441C2C0();

  sub_1C44A17C4();
  sub_1C4EFEEF8();
  sub_1C442CB58();
  v8 = sub_1C4490F60(v6, v7, MEMORY[0x1E69A9780]);
  sub_1C4475BE4(v8);
  sub_1C441B9C0();

  sub_1C44584C0();
  sub_1C4EFF8A8();
  sub_1C4406FE8();
  sub_1C4490F60(v9, v10, MEMORY[0x1E69A9A18]);
  sub_1C4F02858();
  sub_1C441B9C0();

  sub_1C440EFB4();
  v11 = sub_1C4F02858();
  MEMORY[0x1C6940010](v11);

  v12 = sub_1C44562C4();
  MEMORY[0x1C6940010](v12, 0xE500000000000000);
  v13 = sub_1C441F870(*(v3 + 36));
  MEMORY[0x1C6940010](v13);
  sub_1C440EFB4();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = sub_1C44562C4();
  MEMORY[0x1C6940010](v14, v1);

  sub_1C446BC6C();
  sub_1C44506EC();
  sub_1C44578F0(v15, v16, &type metadata for SourceSet, v17, v18, v19, v20, v21, *(v0 + *(v3 + 40)), v28, v30);
  sub_1C44506EC();
  sub_1C4423700(v22, v23);
  sub_1C44584C0();
  sub_1C4867FB4();

  sub_1C4451304();
  sub_1C4867FF8();
  MEMORY[0x1C6940010](v27, v29);

  sub_1C4424CC4();
  sub_1C4423700(v24, v25);
  sub_1C4867FF8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v31);

  return v1;
}

uint64_t sub_1C4859F28(uint64_t (*a1)(uint64_t), uint64_t *a2, uint64_t *a3)
{
  sub_1C4413284();

  v8 = sub_1C4485F10();
  v9 = a1(v8);
  sub_1C456902C(a2, a3);
  sub_1C4F01198();
  sub_1C441C2C0();

  sub_1C44883E4();
  sub_1C4EFF0C8();
  sub_1C4419854();
  sub_1C4490F60(v10, v11, MEMORY[0x1E69A9840]);
  sub_1C4F02858();
  sub_1C441C2C0();

  sub_1C44A17C4();
  sub_1C4EFEEF8();
  sub_1C442CB58();
  v14 = sub_1C4490F60(v12, v13, MEMORY[0x1E69A9780]);
  sub_1C4475BE4(v14);
  sub_1C441B9C0();

  sub_1C44584C0();
  sub_1C4EFF8A8();
  sub_1C4406FE8();
  sub_1C4490F60(v15, v16, MEMORY[0x1E69A9A18]);
  sub_1C4F02858();
  sub_1C441B9C0();

  sub_1C440EFB4();
  v17 = sub_1C4F02858();
  MEMORY[0x1C6940010](v17);

  v18 = sub_1C44562C4();
  MEMORY[0x1C6940010](v18, 0xE500000000000000);
  v19 = sub_1C441F870(*(v9 + 32));
  MEMORY[0x1C6940010](v19);
  sub_1C440EFB4();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v20 = sub_1C44562C4();
  MEMORY[0x1C6940010](v20, v4);

  sub_1C446BC6C();
  sub_1C44506EC();
  sub_1C44578F0(v21, v22, &type metadata for SourceSet, v23, v24, v25, v26, v27, *(v3 + *(v9 + 36)), v34, v36);
  sub_1C44506EC();
  sub_1C4423700(v28, v29);
  sub_1C44584C0();
  sub_1C4867FB4();

  sub_1C4451304();
  sub_1C4867FF8();
  MEMORY[0x1C6940010](v33, v35);

  sub_1C4424CC4();
  sub_1C4423700(v30, v31);
  sub_1C4867FF8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v37);

  return v4;
}

uint64_t sub_1C485A20C()
{
  sub_1C4F02248();

  v1 = type metadata accessor for EventTriple(0);
  sub_1C456902C(&qword_1EC0BE3C0, &qword_1C4F36908);
  v2 = sub_1C4F01198();
  MEMORY[0x1C6940010](v2);

  MEMORY[0x1C6940010](658141984, 0xE400000000000000);
  sub_1C4EFF0C8();
  sub_1C4490F60(&qword_1EDDFE810, MEMORY[0x1E69A9810], MEMORY[0x1E69A9840]);
  v3 = sub_1C4F02858();
  MEMORY[0x1C6940010](v3);

  MEMORY[0x1C6940010](0x273A702027, 0xE500000000000000);
  sub_1C4EFEEF8();
  sub_1C4490F60(&qword_1EC0BA1F0, MEMORY[0x1E69A9748], MEMORY[0x1E69A9780]);
  v4 = sub_1C4F02858();
  MEMORY[0x1C6940010](v4);

  MEMORY[0x1C6940010](0x273A69722027, 0xE600000000000000);
  sub_1C4EFF8A8();
  sub_1C4490F60(&qword_1EC0BDAB8, MEMORY[0x1E69A99E8], MEMORY[0x1E69A9A18]);
  v5 = sub_1C4F02858();
  MEMORY[0x1C6940010](v5);

  MEMORY[0x1C6940010](8231, 0xE200000000000000);
  v6 = sub_1C4F02858();
  MEMORY[0x1C6940010](v6);

  MEMORY[0x1C6940010](0x273A6F2027, 0xE500000000000000);
  MEMORY[0x1C6940010](*(v0 + *(v1 + 32)), *(v0 + *(v1 + 32) + 8));
  MEMORY[0x1C6940010](8231, 0xE200000000000000);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](658141298, 0xE400000000000000);

  sub_1C4F02248();
  MEMORY[0x1C6940010](0x273A637273, 0xE500000000000000);
  sub_1C4F02438();
  MEMORY[0x1C6940010](0x273A632027, 0xE500000000000000);
  sub_1C4F01A28();
  MEMORY[0x1C6940010](0x273A64732027, 0xE600000000000000);
  v7 = (v0 + *(v1 + 44));
  v8 = *v7;
  v9 = v7[1];
  sub_1C4F02248();

  MEMORY[0x1C6940010](v8, v9);
  MEMORY[0x1C6940010](15911, 0xE200000000000000);
  MEMORY[0x1C6940010](0xD000000000000015, 0x80000001C4F9C290);

  MEMORY[0x1C6940010](0x27203A73742027, 0xE700000000000000);
  sub_1C4F01A28();
  MEMORY[0x1C6940010](15911, 0xE200000000000000);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](0, 0xE000000000000000);

  return 60;
}

uint64_t EntityTriple.init(subject:predicate:relationshipId:relationshipPredicate:object:source:sourceId:timestamp:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, char *a12)
{
  v31 = *a12;
  sub_1C4EFF0C8();
  sub_1C43FBCE0();
  (*(v19 + 32))(a9, a1);
  v20 = type metadata accessor for EntityTriple(0);
  v21 = v20[5];
  v22 = sub_1C4EFEEF8();
  sub_1C43FBCE0();
  v24 = *(v23 + 32);
  v24(a9 + v21, a2, v22);
  v25 = v20[6];
  sub_1C4EFF8A8();
  sub_1C43FBCE0();
  (*(v26 + 32))(a9 + v25, a3);
  v24(a9 + v20[7], a4, v22);
  v27 = (a9 + v20[8]);
  *v27 = a5;
  v27[1] = a6;
  result = sub_1C448B210(a7, a9 + v20[9]);
  v29 = (a9 + v20[10]);
  *v29 = a8;
  v29[1] = a11;
  *(a9 + v20[11]) = a10;
  *(a9 + v20[12]) = v31;
  return result;
}

uint64_t GraphTriple.sources.getter()
{
  v0 = sub_1C44059B8();
  v1 = type metadata accessor for GraphTriple(v0);
  return sub_1C441C2A4(v1);
}

uint64_t sub_1C485A978(uint64_t a1)
{
  v2 = sub_1C44F0EF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C485A9B4(uint64_t a1)
{
  v2 = sub_1C44F0EF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void GraphTriple.encode(to:)()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  sub_1C456902C(&qword_1EC0BE030, &qword_1C4F32570);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FE61C();
  sub_1C43FD870();
  v2 = sub_1C44F0EF8();
  sub_1C440F61C(&type metadata for GraphTriple.CodingKeys, v3, v2);
  sub_1C445BD88();
  sub_1C4419854();
  sub_1C4490F60(v4, v5, MEMORY[0x1E69A9818]);
  sub_1C443F630();
  sub_1C43FEF68();
  sub_1C4F027E8();
  if (!v0)
  {
    type metadata accessor for GraphTriple(0);
    sub_1C4404F64();
    sub_1C442235C(v6);
    sub_1C4EFEEF8();
    sub_1C442CB58();
    sub_1C4490F60(v7, v8, MEMORY[0x1E69A9750]);
    sub_1C441AED4();
    sub_1C44032B0();
    sub_1C4F027E8();
    sub_1C4416104();
    sub_1C4406FE8();
    sub_1C4490F60(v9, v10, MEMORY[0x1E69A99F0]);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4413248();
    sub_1C440E36C();
    sub_1C4425118();
    sub_1C4405C88();
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4408B20(v11);
    sub_1C44350A0();
    v12 = sub_1C44586F8();
    sub_1C441CA4C(v12, v13, v14, &type metadata for SourceDuplicates);
    sub_1C44C1238();
    sub_1C440F740(v15);
  }

  v16 = sub_1C440231C();
  v17(v16);
  sub_1C44103B4();
  sub_1C43FBC80();
}

unint64_t sub_1C485AC04()
{
  result = qword_1EDDF5330;
  if (!qword_1EDDF5330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF5330);
  }

  return result;
}

uint64_t sub_1C485AD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4490F60(&qword_1EDDEBBC8, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C485AEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDEBBB8, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t EventTriple.sources.getter()
{
  v0 = sub_1C44059B8();
  v1 = type metadata accessor for EventTriple(v0);
  return sub_1C441C2A4(v1);
}

uint64_t sub_1C485B06C()
{
  v2 = sub_1C44059B8();
  v4 = (v1 + *(v3(v2) + 44));
  v5 = v4[1];
  *v0 = *v4;
  v0[1] = v5;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C485B10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t (*a12)(void))
{
  v18 = *a7;
  v19 = a8[1];
  v31 = *a8;
  sub_1C4EFF0C8();
  sub_1C43FBCE0();
  (*(v20 + 32))(a9, a1);
  v21 = a12(0);
  v22 = v21[5];
  v23 = sub_1C4EFEEF8();
  sub_1C43FBCE0();
  v25 = *(v24 + 32);
  v25(a9 + v22, a2, v23);
  v26 = v21[6];
  sub_1C4EFF8A8();
  sub_1C43FBCE0();
  (*(v27 + 32))(a9 + v26, a3);
  result = (v25)(a9 + v21[7], a4, v23);
  v29 = (a9 + v21[8]);
  *v29 = a5;
  v29[1] = a6;
  *(a9 + v21[9]) = v18;
  *(a9 + v21[10]) = a10;
  v30 = (a9 + v21[11]);
  *v30 = v31;
  v30[1] = v19;
  *(a9 + v21[12]) = a11;
  return result;
}

BOOL sub_1C485B2AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_1C4404078();
  if ((sub_1C4EFF088() & 1) == 0)
  {
    return 0;
  }

  v6 = a3(0);
  v7 = sub_1C441DD4C(v6[5]);
  if ((sub_1C44DBB50(v7, v8) & 1) == 0)
  {
    return 0;
  }

  sub_1C441DD4C(v6[6]);
  if ((sub_1C4EFF878() & 1) == 0)
  {
    return 0;
  }

  v9 = sub_1C441DD4C(v6[7]);
  if ((sub_1C44DBB50(v9, v10) & 1) == 0)
  {
    return 0;
  }

  sub_1C4495D00();
  v13 = v13 && v11 == v12;
  if (!v13 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  if (*(v4 + v6[9]) != *(v3 + v6[9]))
  {
    return 0;
  }

  sub_1C443E358(v6[10]);
  if (!v13)
  {
    return 0;
  }

  sub_1C4495D00();
  v16 = v13 && v14 == v15;
  if (!v16 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  sub_1C443E358(v6[12]);
  return v13;
}

uint64_t sub_1C485B3A4(uint64_t a1)
{
  v2 = sub_1C4863384();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C485B3E0(uint64_t a1)
{
  v2 = sub_1C4863384();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EventTriple.encode(to:)()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  sub_1C456902C(&qword_1EC0BE040, &qword_1C4F32580);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FE61C();
  sub_1C43FD870();
  v2 = sub_1C4863384();
  sub_1C440F61C(&type metadata for EventTriple.CodingKeys, v3, v2);
  sub_1C445BD88();
  sub_1C4419854();
  sub_1C4490F60(v4, v5, MEMORY[0x1E69A9818]);
  sub_1C443F630();
  sub_1C43FEF68();
  sub_1C4F027E8();
  if (!v0)
  {
    type metadata accessor for EventTriple(0);
    sub_1C4404F64();
    sub_1C442235C(v6);
    sub_1C4EFEEF8();
    sub_1C442CB58();
    sub_1C4490F60(v7, v8, MEMORY[0x1E69A9750]);
    sub_1C441AED4();
    sub_1C44032B0();
    sub_1C4F027E8();
    sub_1C4416104();
    sub_1C4406FE8();
    sub_1C4490F60(v9, v10, MEMORY[0x1E69A99F0]);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4413248();
    sub_1C440E36C();
    sub_1C4425118();
    sub_1C4405C88();
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4408B20(v11);
    sub_1C44350A0();
    v12 = sub_1C44586F8();
    sub_1C441CA4C(v12, v13, v14, &type metadata for SourceDuplicates);
    sub_1C44C1238();
    sub_1C440F740(v15);
  }

  v16 = sub_1C440231C();
  v17(v16);
  sub_1C44103B4();
  sub_1C43FBC80();
}

uint64_t sub_1C485B660(uint64_t (*a1)(_BYTE *))
{
  sub_1C441EC18(a1);
  a1(v3);
  return sub_1C4F02B68();
}

uint64_t sub_1C485B798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1C4F02AF8();
  a4(v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C485B7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDFF930, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C485B898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4490F60(&qword_1EDDEBC20, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C485BA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDEBC10, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t ExpiredGraphTriple.sources.getter()
{
  v0 = sub_1C44059B8();
  v1 = type metadata accessor for ExpiredGraphTriple(v0);
  return sub_1C441C2A4(v1);
}

uint64_t sub_1C485BBE8(uint64_t a1)
{
  v2 = sub_1C48633D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C485BC24(uint64_t a1)
{
  v2 = sub_1C48633D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ExpiredGraphTriple.encode(to:)()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  sub_1C456902C(&qword_1EC0BE050, &qword_1C4F32590);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FE61C();
  sub_1C43FD870();
  v2 = sub_1C48633D8();
  sub_1C440F61C(&type metadata for ExpiredGraphTriple.CodingKeys, v3, v2);
  sub_1C445BD88();
  sub_1C4419854();
  sub_1C4490F60(v4, v5, MEMORY[0x1E69A9818]);
  sub_1C443F630();
  sub_1C43FEF68();
  sub_1C4F027E8();
  if (!v0)
  {
    type metadata accessor for ExpiredGraphTriple(0);
    sub_1C4404F64();
    sub_1C442235C(v6);
    sub_1C4EFEEF8();
    sub_1C442CB58();
    sub_1C4490F60(v7, v8, MEMORY[0x1E69A9750]);
    sub_1C441AED4();
    sub_1C44032B0();
    sub_1C4F027E8();
    sub_1C4416104();
    sub_1C4406FE8();
    sub_1C4490F60(v9, v10, MEMORY[0x1E69A99F0]);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4413248();
    sub_1C440E36C();
    sub_1C4425118();
    sub_1C4405C88();
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4408B20(v11);
    sub_1C44350A0();
    v12 = sub_1C44586F8();
    sub_1C441CA4C(v12, v13, v14, &type metadata for SourceDuplicates);
    sub_1C44C1238();
    sub_1C440F740(v15);
  }

  v16 = sub_1C440231C();
  v17(v16);
  sub_1C44103B4();
  sub_1C43FBC80();
}

uint64_t sub_1C485BF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EC0BE3B8, type metadata accessor for ExpiredGraphTriple, &protocol conformance descriptor for ExpiredGraphTriple);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C485C074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4490F60(&qword_1EDDF4F28, type metadata accessor for ExpiredGraphTriple, &protocol conformance descriptor for ExpiredGraphTriple);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C485C20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDF4F10, type metadata accessor for ExpiredGraphTriple, &protocol conformance descriptor for ExpiredGraphTriple);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t ExpiredEventTriple.sources.getter()
{
  v0 = sub_1C44059B8();
  v1 = type metadata accessor for ExpiredEventTriple(v0);
  return sub_1C441C2A4(v1);
}

uint64_t sub_1C485C3F4(uint64_t a1)
{
  v2 = sub_1C486344C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C485C430(uint64_t a1)
{
  v2 = sub_1C486344C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ExpiredEventTriple.encode(to:)()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  sub_1C456902C(&qword_1EC0BE060, &qword_1C4F325A0);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FE61C();
  sub_1C43FD870();
  v2 = sub_1C486344C();
  sub_1C440F61C(&type metadata for ExpiredEventTriple.CodingKeys, v3, v2);
  sub_1C445BD88();
  sub_1C4419854();
  sub_1C4490F60(v4, v5, MEMORY[0x1E69A9818]);
  sub_1C443F630();
  sub_1C43FEF68();
  sub_1C4F027E8();
  if (!v0)
  {
    type metadata accessor for ExpiredEventTriple(0);
    sub_1C4404F64();
    sub_1C442235C(v6);
    sub_1C4EFEEF8();
    sub_1C442CB58();
    sub_1C4490F60(v7, v8, MEMORY[0x1E69A9750]);
    sub_1C441AED4();
    sub_1C44032B0();
    sub_1C4F027E8();
    sub_1C4416104();
    sub_1C4406FE8();
    sub_1C4490F60(v9, v10, MEMORY[0x1E69A99F0]);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4413248();
    sub_1C440E36C();
    sub_1C4425118();
    sub_1C4405C88();
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4408B20(v11);
    sub_1C44350A0();
    v12 = sub_1C44586F8();
    sub_1C441CA4C(v12, v13, v14, &type metadata for SourceDuplicates);
    sub_1C44C1238();
    sub_1C440F740(v15);
  }

  v16 = sub_1C440231C();
  v17(v16);
  sub_1C44103B4();
  sub_1C43FBC80();
}

uint64_t sub_1C485C778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDFB338, type metadata accessor for ExpiredEventTriple, &protocol conformance descriptor for ExpiredEventTriple);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C485C880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4490F60(&qword_1EDDE5BF8, type metadata accessor for ExpiredEventTriple, &protocol conformance descriptor for ExpiredEventTriple);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C485CA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDE5BE8, type metadata accessor for ExpiredEventTriple, &protocol conformance descriptor for ExpiredEventTriple);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t ConstructionGraphTriple.sources.getter()
{
  v0 = sub_1C44059B8();
  v1 = type metadata accessor for ConstructionGraphTriple(v0);
  return sub_1C441C2A4(v1);
}

uint64_t sub_1C485CC18(uint64_t a1)
{
  v2 = sub_1C44F0158();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C485CC54(uint64_t a1)
{
  v2 = sub_1C44F0158();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ConstructionGraphTriple.encode(to:)()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  sub_1C456902C(&qword_1EC0BE070, &qword_1C4F325B0);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FE61C();
  sub_1C43FD870();
  v2 = sub_1C44F0158();
  sub_1C440F61C(&type metadata for ConstructionGraphTriple.CodingKeys, v3, v2);
  sub_1C445BD88();
  sub_1C4419854();
  sub_1C4490F60(v4, v5, MEMORY[0x1E69A9818]);
  sub_1C443F630();
  sub_1C43FEF68();
  sub_1C4F027E8();
  if (!v0)
  {
    type metadata accessor for ConstructionGraphTriple(0);
    sub_1C4404F64();
    sub_1C442235C(v6);
    sub_1C4EFEEF8();
    sub_1C442CB58();
    sub_1C4490F60(v7, v8, MEMORY[0x1E69A9750]);
    sub_1C441AED4();
    sub_1C44032B0();
    sub_1C4F027E8();
    sub_1C4416104();
    sub_1C4406FE8();
    sub_1C4490F60(v9, v10, MEMORY[0x1E69A99F0]);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4413248();
    sub_1C440E36C();
    sub_1C4425118();
    sub_1C4405C88();
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4408B20(v11);
    sub_1C44350A0();
    v12 = sub_1C44586F8();
    sub_1C441CA4C(v12, v13, v14, &type metadata for SourceDuplicates);
    sub_1C44C1238();
    sub_1C440F740(v15);
  }

  v16 = sub_1C440231C();
  v17(v16);
  sub_1C44103B4();
  sub_1C43FBC80();
}

uint64_t sub_1C485CFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4490F60(&qword_1EDDE2658, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C485D128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDE2648, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t ConstructionEventTriple.sources.getter()
{
  v0 = sub_1C44059B8();
  v1 = type metadata accessor for ConstructionEventTriple(v0);
  return sub_1C441C2A4(v1);
}

uint64_t sub_1C485D320(uint64_t a1)
{
  v2 = sub_1C48634C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C485D35C(uint64_t a1)
{
  v2 = sub_1C48634C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ConstructionEventTriple.encode(to:)()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  sub_1C456902C(&qword_1EC0BE080, &qword_1C4F325C0);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FE61C();
  sub_1C43FD870();
  v2 = sub_1C48634C0();
  sub_1C440F61C(&type metadata for ConstructionEventTriple.CodingKeys, v3, v2);
  sub_1C445BD88();
  sub_1C4419854();
  sub_1C4490F60(v4, v5, MEMORY[0x1E69A9818]);
  sub_1C443F630();
  sub_1C43FEF68();
  sub_1C4F027E8();
  if (!v0)
  {
    type metadata accessor for ConstructionEventTriple(0);
    sub_1C4404F64();
    sub_1C442235C(v6);
    sub_1C4EFEEF8();
    sub_1C442CB58();
    sub_1C4490F60(v7, v8, MEMORY[0x1E69A9750]);
    sub_1C441AED4();
    sub_1C44032B0();
    sub_1C4F027E8();
    sub_1C4416104();
    sub_1C4406FE8();
    sub_1C4490F60(v9, v10, MEMORY[0x1E69A99F0]);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4413248();
    sub_1C440E36C();
    sub_1C4425118();
    sub_1C4405C88();
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4408B20(v11);
    sub_1C44350A0();
    v12 = sub_1C44586F8();
    sub_1C441CA4C(v12, v13, v14, &type metadata for SourceDuplicates);
    sub_1C44C1238();
    sub_1C440F740(v15);
  }

  v16 = sub_1C440231C();
  v17(v16);
  sub_1C44103B4();
  sub_1C43FBC80();
}

uint64_t sub_1C485D718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDE2738, type metadata accessor for ConstructionEventTriple, &protocol conformance descriptor for ConstructionEventTriple);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C485D7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4490F60(&qword_1EDDE2760, type metadata accessor for ConstructionEventTriple, &protocol conformance descriptor for ConstructionEventTriple);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C485D948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDE2750, type metadata accessor for ConstructionEventTriple, &protocol conformance descriptor for ConstructionEventTriple);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t ExpiredConstructionGraphTriple.sources.getter()
{
  v0 = sub_1C44059B8();
  v1 = type metadata accessor for ExpiredConstructionGraphTriple(v0);
  return sub_1C441C2A4(v1);
}

uint64_t sub_1C485DB30(uint64_t a1)
{
  v2 = sub_1C4863534();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C485DB6C(uint64_t a1)
{
  v2 = sub_1C4863534();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ExpiredConstructionGraphTriple.encode(to:)()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  sub_1C456902C(&qword_1EC0BE090, &qword_1C4F325D0);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FE61C();
  sub_1C43FD870();
  v2 = sub_1C4863534();
  sub_1C440F61C(&type metadata for ExpiredConstructionGraphTriple.CodingKeys, v3, v2);
  sub_1C445BD88();
  sub_1C4419854();
  sub_1C4490F60(v4, v5, MEMORY[0x1E69A9818]);
  sub_1C443F630();
  sub_1C43FEF68();
  sub_1C4F027E8();
  if (!v0)
  {
    type metadata accessor for ExpiredConstructionGraphTriple(0);
    sub_1C4404F64();
    sub_1C442235C(v6);
    sub_1C4EFEEF8();
    sub_1C442CB58();
    sub_1C4490F60(v7, v8, MEMORY[0x1E69A9750]);
    sub_1C441AED4();
    sub_1C44032B0();
    sub_1C4F027E8();
    sub_1C4416104();
    sub_1C4406FE8();
    sub_1C4490F60(v9, v10, MEMORY[0x1E69A99F0]);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4413248();
    sub_1C440E36C();
    sub_1C4425118();
    sub_1C4405C88();
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4408B20(v11);
    sub_1C44350A0();
    v12 = sub_1C44586F8();
    sub_1C441CA4C(v12, v13, v14, &type metadata for SourceDuplicates);
    sub_1C44C1238();
    sub_1C440F740(v15);
  }

  v16 = sub_1C440231C();
  v17(v16);
  sub_1C44103B4();
  sub_1C43FBC80();
}

uint64_t sub_1C485DEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDDF228, type metadata accessor for ExpiredConstructionGraphTriple, &protocol conformance descriptor for ExpiredConstructionGraphTriple);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C485DFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4490F60(&qword_1EDDDF240, type metadata accessor for ExpiredConstructionGraphTriple, &protocol conformance descriptor for ExpiredConstructionGraphTriple);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C485E154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDDF230, type metadata accessor for ExpiredConstructionGraphTriple, &protocol conformance descriptor for ExpiredConstructionGraphTriple);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t ExpiredConstructionEventTriple.sources.getter()
{
  v0 = sub_1C44059B8();
  v1 = type metadata accessor for ExpiredConstructionEventTriple(v0);
  return sub_1C441C2A4(v1);
}

uint64_t sub_1C485E33C()
{
  sub_1C4404078();
  v3 = sub_1C447CDB8();
  v5 = v5 && v4 == 0xE700000000000000;
  if (v5 || (sub_1C43FEC00(v3, 0xE700000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = sub_1C444C280();
    v8 = v5 && v0 == v2;
    if (v8 || (sub_1C43FEC00(v7, 0xE900000000000065) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = sub_1C440C564();
      v11 = v1 == v9 && v0 == v10;
      if (v11 || (sub_1C43FEC00(v9, v10) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v12 = v1 == 0xD000000000000015 && 0x80000001C4F86600 == v0;
        if (v12 || (sub_1C43FEC00(0xD000000000000015, 0x80000001C4F86600) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v13 = sub_1C445ABD4();
          v14 = v5 && v0 == 0xE600000000000000;
          if (v14 || (sub_1C43FEC00(v13, 0xE600000000000000) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v15 = v1 == 0x73656372756F73 && v0 == 0xE700000000000000;
            if (v15 || (sub_1C43FEC00(0x73656372756F73, 0xE700000000000000) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v16 = v1 == 0x6E656469666E6F63 && v0 == 0xEA00000000006563;
              if (v16 || (sub_1C43FEC00(0x6E656469666E6F63, 0xEA00000000006563) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v17 = v1 == 0xD000000000000010 && 0x80000001C4F86630 == v0;
                if (v17 || (sub_1C43FEC00(0xD000000000000010, 0x80000001C4F86630) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v18 = sub_1C44BBE04();
                  if (v5 && v0 == v19)
                  {

                    return 8;
                  }

                  else
                  {
                    sub_1C43FEC00(v18, v19);
                    sub_1C440F210();
                    if (v1)
                    {
                      return 8;
                    }

                    else
                    {
                      return 9;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C485E544(uint64_t a1)
{
  v2 = sub_1C48635A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C485E580(uint64_t a1)
{
  v2 = sub_1C48635A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ExpiredConstructionEventTriple.encode(to:)()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  sub_1C456902C(&qword_1EC0BE0A0, &qword_1C4F325E0);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FE61C();
  sub_1C43FD870();
  v2 = sub_1C48635A8();
  sub_1C440F61C(&type metadata for ExpiredConstructionEventTriple.CodingKeys, v3, v2);
  sub_1C445BD88();
  sub_1C4419854();
  sub_1C4490F60(v4, v5, MEMORY[0x1E69A9818]);
  sub_1C443F630();
  sub_1C43FEF68();
  sub_1C4F027E8();
  if (!v0)
  {
    type metadata accessor for ExpiredConstructionEventTriple(0);
    sub_1C4404F64();
    sub_1C442235C(v6);
    sub_1C4EFEEF8();
    sub_1C442CB58();
    sub_1C4490F60(v7, v8, MEMORY[0x1E69A9750]);
    sub_1C441AED4();
    sub_1C44032B0();
    sub_1C4F027E8();
    sub_1C4416104();
    sub_1C4406FE8();
    sub_1C4490F60(v9, v10, MEMORY[0x1E69A99F0]);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4413248();
    sub_1C440E36C();
    sub_1C4425118();
    sub_1C4405C88();
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4408B20(v11);
    sub_1C44350A0();
    v12 = sub_1C44586F8();
    sub_1C441CA4C(v12, v13, v14, &type metadata for SourceDuplicates);
    sub_1C44C1238();
    sub_1C440F740(v15);
  }

  v16 = sub_1C440231C();
  v17(v16);
  sub_1C44103B4();
  sub_1C43FBC80();
}

uint64_t sub_1C485E7E8(uint64_t a1, uint64_t (*a2)(void))
{
  sub_1C4403FC0();
  sub_1C4EFF0C8();
  sub_1C4419854();
  sub_1C4490F60(v4, v5, MEMORY[0x1E69A9820]);
  sub_1C4404BCC();
  sub_1C4F00FE8();
  v6 = a2(0);
  sub_1C4EFEEF8();
  sub_1C442CB58();
  sub_1C4490F60(v7, v8, MEMORY[0x1E69A9758]);
  sub_1C4404BCC();
  sub_1C4F00FE8();
  sub_1C4EFF8A8();
  sub_1C4406FE8();
  v11 = sub_1C4490F60(v9, v10, MEMORY[0x1E69A99F8]);
  sub_1C44AB174(v11);
  sub_1C4404BCC();
  sub_1C4F00FE8();
  sub_1C4461CC0();
  MEMORY[0x1C6941830](*(v2 + v6[9]));
  v12 = *(v2 + v6[10]);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x1C6941830](*&v12);
  sub_1C4461CC0();
  v13 = *(v2 + v6[12]);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  return MEMORY[0x1C6941830](*&v13);
}

uint64_t sub_1C485EA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EC0BE388, type metadata accessor for ExpiredConstructionEventTriple, &protocol conformance descriptor for ExpiredConstructionEventTriple);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C485EB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4490F60(&qword_1EC0BDFE0, type metadata accessor for ExpiredConstructionEventTriple, &protocol conformance descriptor for ExpiredConstructionEventTriple);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C485ECE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EC0BE378, type metadata accessor for ExpiredConstructionEventTriple, &protocol conformance descriptor for ExpiredConstructionEventTriple);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t EntityTriple.pipelineType.getter()
{
  v2 = sub_1C44059B8();
  result = type metadata accessor for EntityTriple(v2);
  *v0 = *(v1 + *(result + 48));
  return result;
}

uint64_t sub_1C485EE54(uint64_t a1)
{
  v2 = sub_1C44C17FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C485EE90(uint64_t a1)
{
  v2 = sub_1C44C17FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C485EF10()
{
  v1 = v0;
  v2 = type metadata accessor for Source(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_1C4F02248();

  v21 = 60;
  v22 = 0xE100000000000000;
  v5 = type metadata accessor for TranslatedEntityTriple(0);
  v20[1] = v5;
  sub_1C456902C(&qword_1EC0BE368, &qword_1C4F368C8);
  v6 = sub_1C4F01198();
  MEMORY[0x1C6940010](v6);

  MEMORY[0x1C6940010](658141984, 0xE400000000000000);
  sub_1C4EFF0C8();
  sub_1C4490F60(&qword_1EDDFE810, MEMORY[0x1E69A9810], MEMORY[0x1E69A9840]);
  v7 = sub_1C4F02858();
  MEMORY[0x1C6940010](v7);

  MEMORY[0x1C6940010](0x273A702027, 0xE500000000000000);
  sub_1C4EFEEF8();
  sub_1C4490F60(&qword_1EC0BA1F0, MEMORY[0x1E69A9748], MEMORY[0x1E69A9780]);
  v8 = sub_1C4F02858();
  MEMORY[0x1C6940010](v8);

  MEMORY[0x1C6940010](39, 0xE100000000000000);
  v10 = v21;
  v9 = v22;
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_1C4F02248();

  v21 = 0x273A697220;
  v22 = 0xE500000000000000;
  sub_1C4EFF8A8();
  sub_1C4490F60(&qword_1EC0BDAB8, MEMORY[0x1E69A99E8], MEMORY[0x1E69A9A18]);
  v11 = sub_1C4F02858();
  MEMORY[0x1C6940010](v11);

  MEMORY[0x1C6940010](0x273A70722027, 0xE600000000000000);
  v12 = sub_1C4F02858();
  MEMORY[0x1C6940010](v12);

  MEMORY[0x1C6940010](39, 0xE100000000000000);
  v13 = v21;
  v14 = v22;
  v21 = v10;
  v22 = v9;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v13, v14);

  v16 = v21;
  v15 = v22;
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](658140960, 0xE400000000000000);
  MEMORY[0x1C6940010](*(v1 + v5[8]), *(v1 + v5[8] + 8));
  MEMORY[0x1C6940010](0x273A6372732027, 0xE700000000000000);
  sub_1C449EEE8();
  MEMORY[0x1C6940010](*v4, v4[1]);
  sub_1C449F22C();
  MEMORY[0x1C6940010](0x64695F6372732027, 0xEA0000000000273ALL);
  MEMORY[0x1C6940010](*(v1 + v5[10]), *(v1 + v5[10] + 8));
  MEMORY[0x1C6940010](0x273A74702027, 0xE600000000000000);
  sub_1C448D934(*(v0 + v5[12]));
  MEMORY[0x1C6940010](15911, 0xE200000000000000);
  v17 = v21;
  v18 = v22;
  v21 = v16;
  v22 = v15;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v17, v18);

  return v21;
}

uint64_t sub_1C485F324()
{
  v1 = v0;
  v2 = type metadata accessor for Source(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_1C4F02248();

  v21 = 60;
  v22 = 0xE100000000000000;
  v5 = type metadata accessor for EntityTriple(0);
  v20[1] = v5;
  sub_1C456902C(&qword_1EC0BE370, &qword_1C4F368D0);
  v6 = sub_1C4F01198();
  MEMORY[0x1C6940010](v6);

  MEMORY[0x1C6940010](658141984, 0xE400000000000000);
  sub_1C4EFF0C8();
  sub_1C4490F60(&qword_1EDDFE810, MEMORY[0x1E69A9810], MEMORY[0x1E69A9840]);
  v7 = sub_1C4F02858();
  MEMORY[0x1C6940010](v7);

  MEMORY[0x1C6940010](0x273A702027, 0xE500000000000000);
  sub_1C4EFEEF8();
  sub_1C4490F60(&qword_1EC0BA1F0, MEMORY[0x1E69A9748], MEMORY[0x1E69A9780]);
  v8 = sub_1C4F02858();
  MEMORY[0x1C6940010](v8);

  MEMORY[0x1C6940010](39, 0xE100000000000000);
  v10 = v21;
  v9 = v22;
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_1C4F02248();

  v21 = 0x273A697220;
  v22 = 0xE500000000000000;
  sub_1C4EFF8A8();
  sub_1C4490F60(&qword_1EC0BDAB8, MEMORY[0x1E69A99E8], MEMORY[0x1E69A9A18]);
  v11 = sub_1C4F02858();
  MEMORY[0x1C6940010](v11);

  MEMORY[0x1C6940010](0x273A70722027, 0xE600000000000000);
  v12 = sub_1C4F02858();
  MEMORY[0x1C6940010](v12);

  MEMORY[0x1C6940010](39, 0xE100000000000000);
  v13 = v21;
  v14 = v22;
  v21 = v10;
  v22 = v9;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v13, v14);

  v16 = v21;
  v15 = v22;
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](658140960, 0xE400000000000000);
  MEMORY[0x1C6940010](*(v1 + v5[8]), *(v1 + v5[8] + 8));
  MEMORY[0x1C6940010](0x273A6372732027, 0xE700000000000000);
  sub_1C449EEE8();
  MEMORY[0x1C6940010](*v4, v4[1]);
  sub_1C449F22C();
  MEMORY[0x1C6940010](0x64695F6372732027, 0xEA0000000000273ALL);
  MEMORY[0x1C6940010](*(v1 + v5[10]), *(v1 + v5[10] + 8));
  MEMORY[0x1C6940010](0x273A74702027, 0xE600000000000000);
  sub_1C448D934(*(v0 + v5[12]));
  MEMORY[0x1C6940010](15911, 0xE200000000000000);
  v17 = v21;
  v18 = v22;
  v21 = v16;
  v22 = v15;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v17, v18);

  return v21;
}

uint64_t sub_1C485F770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4490F60(&qword_1EDDF8D98, type metadata accessor for EntityTriple, &protocol conformance descriptor for EntityTriple);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C485F90C()
{
  v0 = sub_1C44059B8();
  v1(v0);
  return sub_1C449EEE8();
}

uint64_t sub_1C485F974(void (*a1)(void))
{
  a1(0);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t TranslatedEntityTriple.pipelineType.getter()
{
  v2 = sub_1C44059B8();
  result = type metadata accessor for TranslatedEntityTriple(v2);
  *v0 = *(v1 + *(result + 48));
  return result;
}

uint64_t sub_1C485FA4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if ((sub_1C4EFF088() & 1) == 0)
  {
    return 0;
  }

  v6 = a3(0);
  if ((sub_1C44DBB50(a1 + v6[5], a2 + v6[5]) & 1) == 0 || (sub_1C4EFF878() & 1) == 0 || (sub_1C44DBB50(a1 + v6[7], a2 + v6[7]) & 1) == 0)
  {
    return 0;
  }

  sub_1C4495D00();
  v9 = v9 && v7 == v8;
  if (!v9 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  sub_1C4495D00();
  v12 = v9 && v10 == v11;
  if (!v12 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  sub_1C4495D00();
  v15 = v9 && v13 == v14;
  if (!v15 && (sub_1C4F02938() & 1) == 0 || *(a1 + v6[11]) != *(a2 + v6[11]))
  {
    return 0;
  }

  return sub_1C4684BDC();
}

uint64_t sub_1C485FB8C()
{
  sub_1C4404078();
  v3 = sub_1C447CDB8();
  v5 = v5 && v4 == 0xE700000000000000;
  if (v5 || (sub_1C43FEC00(v3, 0xE700000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = sub_1C444C280();
    v8 = v5 && v0 == v2;
    if (v8 || (sub_1C43FEC00(v7, 0xE900000000000065) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = sub_1C440C564();
      v11 = v1 == v9 && v0 == v10;
      if (v11 || (sub_1C43FEC00(v9, v10) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v12 = v1 == 0xD000000000000015 && 0x80000001C4F86600 == v0;
        if (v12 || (sub_1C43FEC00(0xD000000000000015, 0x80000001C4F86600) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v13 = sub_1C445ABD4();
          v14 = v5 && v0 == 0xE600000000000000;
          if (v14 || (sub_1C43FEC00(v13, 0xE600000000000000) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v15 = sub_1C4414234();
            v16 = v5 && v0 == 0xE600000000000000;
            if (v16 || (sub_1C43FEC00(v15, 0xE600000000000000) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v17 = v1 == 0x6449656372756F73 && v0 == 0xE800000000000000;
              if (v17 || (sub_1C43FEC00(0x6449656372756F73, 0xE800000000000000) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v18 = sub_1C44BBE04();
                v20 = v5 && v0 == v19;
                if (v20 || (sub_1C43FEC00(v18, v19) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v21 = sub_1C445A978();
                  if (v1 == v21 && v0 == v22)
                  {

                    return 8;
                  }

                  else
                  {
                    sub_1C43FEC00(v21, v22);
                    sub_1C440F210();
                    if (v1)
                    {
                      return 8;
                    }

                    else
                    {
                      return 9;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C485FD64(uint64_t a1)
{
  v2 = sub_1C44E7310();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C485FDA0(uint64_t a1)
{
  v2 = sub_1C44E7310();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C485FDF4(uint64_t a1, uint64_t (*a2)(void))
{
  sub_1C4403FC0();
  sub_1C4EFF0C8();
  sub_1C4419854();
  sub_1C4490F60(v4, v5, MEMORY[0x1E69A9820]);
  sub_1C4404BCC();
  sub_1C4F00FE8();
  v6 = a2(0);
  sub_1C4EFEEF8();
  sub_1C442CB58();
  sub_1C4490F60(v7, v8, MEMORY[0x1E69A9758]);
  sub_1C4404BCC();
  sub_1C4F00FE8();
  sub_1C4EFF8A8();
  sub_1C4406FE8();
  v11 = sub_1C4490F60(v9, v10, MEMORY[0x1E69A99F8]);
  sub_1C44AB174(v11);
  sub_1C4404BCC();
  sub_1C4F00FE8();
  sub_1C4461CC0();
  sub_1C4461CC0();
  sub_1C4461CC0();
  v12 = *(v2 + *(v6 + 44));
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x1C6941830](*&v12);

  return sub_1C468B630();
}

uint64_t sub_1C485FFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4490F60(&qword_1EDDF3A30, type metadata accessor for TranslatedEntityTriple, &protocol conformance descriptor for TranslatedEntityTriple);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C48601C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E696B636F6C62 && a2 == 0xEB0000000079654BLL;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6449797469746E65 && a2 == 0xE900000000000073;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x656E696C65706970 && a2 == 0xEC00000065707954)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C4F02938();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1C4860384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C48601C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C48603AC(uint64_t a1)
{
  v2 = sub_1C44D190C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C48603E8(uint64_t a1)
{
  v2 = sub_1C44D190C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EntityBlock.encode(to:)()
{
  sub_1C4413F18();
  sub_1C44043C4();
  sub_1C456902C(&qword_1EC0BE0D8, &qword_1C4F32610);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FE61C();
  sub_1C43FD870();
  v2 = sub_1C44D190C();
  sub_1C440F61C(&type metadata for EntityBlock.CodingKeys, v3, v2);
  sub_1C43FBF44();
  sub_1C4F02798();
  if (!v0)
  {
    type metadata accessor for EntityBlock(0);
    sub_1C4405BEC();
    sub_1C4EFD548();
    sub_1C44004E0();
    sub_1C4490F60(v4, v5, MEMORY[0x1E69A92D0]);
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4401670();
    sub_1C43FBF44();
    sub_1C4F02798();
    sub_1C4495238();
    sub_1C442FDD8();
    sub_1C4F027B8();
    sub_1C44C1190();
    sub_1C43FBF44();
    sub_1C4F027E8();
  }

  v6 = sub_1C43FF120();
  v7(v6);
  sub_1C44102DC();
}

uint64_t sub_1C4860608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4490F60(&qword_1EC0BE258, type metadata accessor for EntityBlock, &protocol conformance descriptor for EntityBlock);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C486078C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EC0BE360, type metadata accessor for EntityBlock, &protocol conformance descriptor for EntityBlock);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1C48608AC(uint64_t a1)
{
  v2 = sub_1C4491148();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C48608E8(uint64_t a1)
{
  v2 = sub_1C4491148();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ConstructionPhaseStatus.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_1C43FE96C();
  sub_1C44D4524(v14);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FD2D8();
  v37 = v16;
  sub_1C456902C(&qword_1EC0BE0F0, &qword_1C4F32628);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1C4402274();
  v19 = type metadata accessor for ConstructionPhaseStatus(v18);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  v23 = v22 - v21;
  sub_1C4417F50(v12, v12[3]);
  sub_1C4491148();
  sub_1C44BBC60();
  sub_1C4F02BC8();
  if (v13)
  {
    sub_1C440962C(v12);
  }

  else
  {
    sub_1C441FBB8();
    sub_1C4490F60(v24, v25, &protocol conformance descriptor for Source);
    sub_1C43FE6CC();
    sub_1C4460830(v26, v27, v28, v29, v30);
    sub_1C448B210(v37, v23);
    v31 = sub_1C48635FC();
    sub_1C4424718(&type metadata for ConstructionStatus, v32, v33, v34, v31);
    v35 = sub_1C442AC0C();
    v36(v35);
    *(v23 + *(v19 + 20)) = a12;
    sub_1C449EEE8();
    sub_1C440962C(v12);
    sub_1C449F22C();
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4860B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDE25D8, type metadata accessor for ConstructionPhaseStatus, &protocol conformance descriptor for ConstructionPhaseStatus);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C4860C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4490F60(&qword_1EDDE25F0, type metadata accessor for ConstructionPhaseStatus, &protocol conformance descriptor for ConstructionPhaseStatus);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4860DB0()
{
  sub_1C4404078();
  v2 = sub_1C4414234();
  v4 = v4 && v3 == 0xE600000000000000;
  if (v4 || (sub_1C43FEC00(v2, 0xE600000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x737574617473 && v0 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    sub_1C43FEC00(0x737574617473, 0xE600000000000000);
    sub_1C440F210();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4860E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4860E94(uint64_t a1)
{
  v2 = sub_1C4863650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4860ED0(uint64_t a1)
{
  v2 = sub_1C4863650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PhaseStatus.encode(to:)()
{
  sub_1C4413F18();
  sub_1C440EDD4();
  sub_1C456902C(&qword_1EC0BE0F8, &qword_1C4F32630);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FE61C();
  sub_1C43FD870();
  v2 = sub_1C4863650();
  sub_1C440F61C(&type metadata for PhaseStatus.CodingKeys, v3, v2);
  v4 = sub_1C441D6E4();
  type metadata accessor for Source(v4);
  sub_1C441FBB8();
  sub_1C4490F60(v5, v6, &protocol conformance descriptor for Source);
  sub_1C43FE6CC();
  sub_1C43FC428();
  sub_1C4F027E8();
  if (!v0)
  {
    v7 = type metadata accessor for PhaseStatus(0);
    sub_1C4441740(v7);
    sub_1C440D3E4();
    sub_1C4F027E8();
  }

  v8 = sub_1C43FF120();
  v9(v8);
  sub_1C441C2B4();
  sub_1C44102DC();
}

void PhaseStatus.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_1C43FE96C();
  sub_1C44D4524(v14);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FD2D8();
  v37 = v16;
  sub_1C456902C(&qword_1EC0BE108, &qword_1C4F32638);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1C4402274();
  v19 = type metadata accessor for PhaseStatus(v18);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  v23 = v22 - v21;
  sub_1C4417F50(v12, v12[3]);
  sub_1C4863650();
  sub_1C44BBC60();
  sub_1C4F02BC8();
  if (v13)
  {
    sub_1C440962C(v12);
  }

  else
  {
    sub_1C441FBB8();
    sub_1C4490F60(v24, v25, &protocol conformance descriptor for Source);
    sub_1C43FE6CC();
    sub_1C4460830(v26, v27, v28, v29, v30);
    sub_1C448B210(v37, v23);
    v31 = sub_1C48635FC();
    sub_1C4424718(&type metadata for ConstructionStatus, v32, v33, v34, v31);
    v35 = sub_1C442AC0C();
    v36(v35);
    *(v23 + *(v19 + 20)) = a12;
    sub_1C449EEE8();
    sub_1C440962C(v12);
    sub_1C449F22C();
  }

  sub_1C43FBC80();
}

unint64_t sub_1C4861288(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F025D8();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C4861304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EC0BE358, type metadata accessor for PhaseStatus, &protocol conformance descriptor for PhaseStatus);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C4861398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4490F60(&qword_1EC0BE278, type metadata accessor for PhaseStatus, &protocol conformance descriptor for PhaseStatus);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C486151C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EC0BE350, type metadata accessor for PhaseStatus, &protocol conformance descriptor for PhaseStatus);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

unint64_t sub_1C48615E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4861288(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C4861614(uint64_t a1)
{
  v2 = sub_1C4492FAC();

  return MEMORY[0x1EEE09A90](a1, v2);
}

uint64_t sub_1C4861660(uint64_t a1)
{
  v2 = sub_1C4492FAC();

  return MEMORY[0x1EEE09A88](a1, v2);
}

uint64_t sub_1C48616F4(uint64_t a1)
{
  v2 = sub_1C450B0DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4861730(uint64_t a1)
{
  v2 = sub_1C450B0DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4861770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4490F60(&qword_1EDDF7A80, type metadata accessor for ProgressTokens, &protocol conformance descriptor for ProgressTokens);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4861924()
{
  sub_1C4404078();
  v2 = sub_1C44553A4();
  v4 = v1 == v2 && v0 == v3;
  if (v4 || (sub_1C43FEC00(v2, v3) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = v1 == 0x6D614E6567617473 && v0 == 0xE900000000000065;
    if (v6 || (sub_1C43FEC00(0x6D614E6567617473, 0xE900000000000065) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = sub_1C4414234();
      v8 = v4 && v0 == 0xE600000000000000;
      if (v8 || (sub_1C43FEC00(v7, 0xE600000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = v1 == 0x6E656B6F74 && v0 == 0xE500000000000000;
        if (v9 || (sub_1C43FEC00(0x6E656B6F74, 0xE500000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v10 = sub_1C44493C4();
          v12 = v1 == v10 && v0 == v11;
          if (v12 || (sub_1C43FEC00(v10, v11) & 1) != 0)
          {

            return 4;
          }

          else if (v1 == 0x6574656C706D6F63 && v0 == 0xE800000000000000)
          {

            return 5;
          }

          else
          {
            sub_1C43FEC00(0x6574656C706D6F63, 0xE800000000000000);
            sub_1C440F210();
            if (v1)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C4861A84(uint64_t a1)
{
  v2 = sub_1C4495034();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4861AC0(uint64_t a1)
{
  v2 = sub_1C4495034();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4861B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4490F60(&qword_1EDDE10E8, type metadata accessor for ConstructionProgressTokens, &protocol conformance descriptor for ConstructionProgressTokens);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4861C84()
{
  v0 = sub_1C4EFF0C8();
  sub_1C44F9918(v0, qword_1EDE2DC60);
  v1 = sub_1C43FBC98();
  sub_1C442B738(v1, v2);
  return sub_1C4EFF098();
}

uint64_t sub_1C4861D70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656372756F73 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6449746567726174 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7349746567726174 && a2 == 0xEF64496870617247;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x656E696C65706970 && a2 == 0xEC00000065707954)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C4F02938();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C4861F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4861D70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4861FA0(uint64_t a1)
{
  v2 = sub_1C44D77B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4861FDC(uint64_t a1)
{
  v2 = sub_1C44D77B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4862018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4490F60(&qword_1EDDFA0E0, type metadata accessor for EntityPair, &unk_1C4F370FC);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C48621E4()
{
  sub_1C4404078();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {
    v4 = v1[2] == v0[2] && v1[3] == v0[3];
    if (v4 || (sub_1C4F02938() & 1) != 0)
    {

      JUMPOUT(0x1C6938740);
    }
  }

  return 0;
}

uint64_t sub_1C4862270(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E69646465626D65 && a2 == 0xED00006570795467;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7955819 && a2 == 0xE300000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E69646465626D65 && a2 == 0xE900000000000067)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C4862390(char a1)
{
  result = 0x6E69646465626D65;
  if (a1 == 1)
  {
    return 7955819;
  }

  return result;
}

void sub_1C48623E4()
{
  sub_1C4413F18();
  sub_1C44043C4();
  sub_1C456902C(&qword_1EC0BE438, &qword_1C4F371B0);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FE61C();
  sub_1C43FD870();
  v3 = sub_1C48673B4();
  sub_1C440F61C(&type metadata for EntityEmbedding.CodingKeys, v4, v3);
  v5 = *v1;
  v6 = *(v1 + 8);
  LOBYTE(v12) = 0;
  sub_1C441FBD0(v5, v6);
  if (!v0)
  {
    v7 = *(v1 + 16);
    v8 = *(v1 + 24);
    LOBYTE(v12) = 1;
    sub_1C441FBD0(v7, v8);
    v12 = *(v1 + 32);
    v13 = v12;
    v11[23] = 2;
    sub_1C446E59C(&v13, v11);
    sub_1C446E5F8();
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4434000(v12, *(&v12 + 1));
  }

  v9 = sub_1C43FF120();
  v10(v9);
  sub_1C44102DC();
}