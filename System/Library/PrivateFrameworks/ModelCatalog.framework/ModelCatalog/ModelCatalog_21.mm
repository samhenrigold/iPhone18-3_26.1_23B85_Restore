uint64_t sub_18E3F2774(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_18E2706EC(&qword_1EABE9078, &qword_18E4E2620);
  result = sub_18E44EFCC();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_29:
    v34 = v5;

    *v2 = v34;
    return result;
  }

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
  v35 = v1;
  v36 = (v8 + 63) >> 6;
  v11 = result + 56;
  v37 = v3;
  v38 = result;
  if (!v10)
  {
LABEL_7:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v36)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      v33 = v5;
      sub_18E3F1C90(0, (v32 + 63) >> 6, v7);
      v5 = v33;
    }

    else
    {
      *v7 = -1 << v32;
    }

    v2 = v35;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v10));
    v39 = (v10 - 1) & v10;
LABEL_12:
    v15 = *(v3 + 48) + 56 * (v12 | (v6 << 6));
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    v20 = *(v15 + 32);
    v21 = *(v15 + 40);
    v22 = *(v15 + 48);
    sub_18E44F48C();
    sub_18E44EB4C();
    sub_18E44EB4C();
    sub_18E44EB4C();
    sub_18E44F4AC();
    if (v22 != 15)
    {
      sub_18E44EB4C();
    }

    result = sub_18E44F4CC();
    v5 = v38;
    v23 = -1 << *(v38 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v11 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = *(v38 + 48) + 56 * v26;
    *v31 = v16;
    *(v31 + 8) = v17;
    *(v31 + 16) = v18;
    *(v31 + 24) = v19;
    *(v31 + 32) = v20;
    *(v31 + 40) = v21;
    *(v31 + 48) = v22;
    ++*(v38 + 16);
    v3 = v37;
    v10 = v39;
    if (!v39)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v11 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_18E3F2C50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_18E2706EC(&qword_1EABE9060, &unk_18E4E2608);
  result = sub_18E44EFCC();
  v5 = result;
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
    v12 = result + 56;
    if (!v10)
    {
      goto LABEL_6;
    }

    do
    {
LABEL_10:
      sub_18E44F48C();
      sub_18E44EB4C();
      result = sub_18E44F4CC();
      v14 = -1 << *(v5 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) == 0)
      {
        v18 = 0;
        v19 = (63 - v14) >> 6;
        while (++v16 != v19 || (v18 & 1) == 0)
        {
          v20 = v16 == v19;
          if (v16 == v19)
          {
            v16 = 0;
          }

          v18 |= v20;
          v21 = *(v12 + 8 * v16);
          if (v21 != -1)
          {
            v17 = __clz(__rbit64(~v21)) + (v16 << 6);
            goto LABEL_19;
          }
        }

LABEL_27:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
      v10 &= v10 - 1;
      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      ++*(v5 + 16);
    }

    while (v10);
    while (1)
    {
LABEL_6:
      v13 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v13 >= v11)
      {
        break;
      }

      v10 = v7[v13];
      ++v6;
      if (v10)
      {
        v6 = v13;
        goto LABEL_10;
      }
    }

    v22 = 1 << *(v3 + 32);
    if (v22 >= 64)
    {
      sub_18E3F1C90(0, (v22 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v22;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_18E3F2E80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_18E2706EC(&qword_1EABE9058, &qword_18E4E2600);
  result = sub_18E44EFCC();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_18E3F1C90(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_18E44F48C();
    sub_18E1C6DAC(v16);
    sub_18E44EB4C();

    result = sub_18E44F4CC();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_18E3F30E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_18E1E6AB4();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_18E1CA234();
  if (!(!v51 & v42) || (v39 & 1) == 0)
  {
    if (v39)
    {
      sub_18E3F1CF4(v40 + 1);
    }

    else
    {
      if (v41 > v40)
      {
        sub_18E3F4178();
        goto LABEL_24;
      }

      sub_18E3F4BF8(v40 + 1);
    }

    v43 = *v30;
    sub_18E44F48C();
    sub_18E44EB4C();
    if (v34 != 2)
    {
      sub_18E44F4AC();
    }

    sub_18E44F4AC();
    sub_18E44F4CC();
    v44 = v43 + 56;
    sub_18E1C5B14();
    v32 = v46 & ~v45;
    if ((*(v43 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
    {
      v47 = ~v45;
      v48 = *(v43 + 48);
      do
      {
        v49 = v48 + 24 * v32;
        v50 = *(v49 + 16);
        v51 = *v49 == v38 && *(v49 + 8) == v36;
        if (v51 || (sub_18E44F3CC() & 1) != 0)
        {
          if (v50 == 2)
          {
            if (v34 == 2)
            {
              goto LABEL_27;
            }
          }

          else if (v34 != 2 && ((v50 ^ v34) & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        v32 = (v32 + 1) & v47;
      }

      while (((*(v44 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0);
    }
  }

LABEL_24:
  sub_18E1E3A70();
  sub_18E1C8610();
  v53 = v52 + 24 * v32;
  *v53 = v38;
  *(v53 + 8) = v36;
  *(v53 + 16) = v34;
  sub_18E1CEA30();
  if (v56)
  {
    __break(1u);
LABEL_27:
    sub_18E44F40C();
    __break(1u);
  }

  else
  {
    *(v54 + 16) = v55;
    sub_18E1E28A4();
  }
}

void sub_18E3F32A0(__int128 *a1, uint64_t a2)
{
  v5 = a1[1];
  v39 = *a1;
  v40 = v5;
  v41[0] = a1[2];
  *(v41 + 10) = *(a1 + 42);
  sub_18E1CA234();
  if (!(!v10 & v9) || (v6 & 1) == 0)
  {
    if (v6)
    {
      v11 = sub_18E2287EC(v7);
      sub_18E3F1F8C(v11);
      goto LABEL_11;
    }

    if (v8 <= v7)
    {
      v18 = sub_18E2287EC(v7);
      sub_18E3F4E68(v18);
LABEL_11:
      v19 = *v2;
      v20 = a1[1];
      v36 = *a1;
      v37 = v20;
      v38[0] = a1[2];
      *(v38 + 10) = *(a1 + 42);
      sub_18E44F48C();
      ExecutionContext.hash(into:)();
      sub_18E44F4CC();
      sub_18E1C5B14();
      v23 = ~v22;
      while (1)
      {
        a2 = v21 & v23;
        if (((*(v19 + 56 + (((v21 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v23)) & 1) == 0)
        {
          goto LABEL_8;
        }

        v24 = (*(v19 + 48) + (a2 << 6));
        v25 = *(v24 + 42);
        v26 = v24[2];
        v27 = *v24;
        v37 = v24[1];
        v38[0] = v26;
        v36 = v27;
        *(v38 + 10) = v25;
        v28 = v24[1];
        v31 = *v24;
        v32 = v28;
        v33[0] = v24[2];
        *(v33 + 10) = *(v24 + 42);
        sub_18E27418C(&v36, v34);
        v30 = static ExecutionContext.== infix(_:_:)(&v31, &v39, v29);
        v34[0] = v31;
        v34[1] = v32;
        v35[0] = v33[0];
        *(v35 + 10) = *(v33 + 10);
        sub_18E2741E8(v34);
        if (v30)
        {
          goto LABEL_16;
        }

        v21 = a2 + 1;
      }
    }

    sub_18E3F42DC();
  }

LABEL_8:
  sub_18E1E3A70();
  sub_18E1C8610();
  v13 = (v12 + (a2 << 6));
  v14 = v40;
  *v13 = v39;
  v13[1] = v14;
  v13[2] = v41[0];
  *(v13 + 42) = *(v41 + 10);
  sub_18E1CEA30();
  if (v17)
  {
    __break(1u);
LABEL_16:
    sub_18E44F40C();
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v16;
  }
}

void sub_18E3F346C(__int128 *a1, unint64_t a2)
{
  sub_18E1CA234();
  v43 = v8;
  if (!(!v23 & v9) || (v5 & 1) == 0)
  {
    if (v5)
    {
      sub_18E3F2328(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_18E3F445C();
        goto LABEL_56;
      }

      sub_18E3F51A4(v6 + 1);
    }

    v10 = *v2;
    v11 = a1[1];
    v49 = *a1;
    v50 = v11;
    v51 = *(a1 + 32);
    sub_18E44F48C();
    RawAvailableUseCases.RawAvailableUseCase.hash(into:)(v48);
    sub_18E44F4CC();
    sub_18E1C5B14();
    a2 = v13 & ~v12;
    if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v46 = ~v12;
      v41 = *(a1 + 32);
      v47 = *a1;
      v44 = *(a1 + 2);
      v45 = *(a1 + 1);
      v42 = *(a1 + 3);
      do
      {
        v14 = *(v10 + 48) + 40 * a2;
        v16 = *(v14 + 8);
        v15 = *(v14 + 16);
        v17 = *(v14 + 24);
        v18 = *(v14 + 32);
        v19 = sub_18E1C6DAC(*v14);
        v21 = v20;
        v23 = v19 == sub_18E1C6DAC(v47) && v21 == v22;
        if (v23)
        {
        }

        else
        {
          v24 = sub_18E44F3CC();

          if ((v24 & 1) == 0)
          {
            goto LABEL_49;
          }
        }

        sub_18E26D86C(v16, v45);
        if ((v25 & 1) == 0)
        {
          goto LABEL_49;
        }

        if (v15)
        {
          if (!v44)
          {
            goto LABEL_49;
          }

          v26 = *(v15 + 16);
          if (v26 != *(v44 + 16))
          {
            goto LABEL_49;
          }

          if (v26)
          {
            v27 = v15 == v44;
          }

          else
          {
            v27 = 1;
          }

          if (!v27)
          {
            v28 = (v15 + 40);
            v29 = (v44 + 40);
            while (v26)
            {
              v30 = *(v28 - 1) == *(v29 - 1) && *v28 == *v29;
              if (!v30 && (sub_18E44F3CC() & 1) == 0)
              {
                goto LABEL_49;
              }

              v28 += 2;
              v29 += 2;
              if (!--v26)
              {
                goto LABEL_36;
              }
            }

            __break(1u);
            __break(1u);
            goto LABEL_59;
          }
        }

        else if (v44)
        {
          goto LABEL_49;
        }

LABEL_36:
        if (v17)
        {
          if (!v42)
          {
            goto LABEL_49;
          }

          v31 = *(v17 + 16);
          if (v31 != *(v42 + 16))
          {
            goto LABEL_49;
          }

          if (v31 && v17 != v42)
          {
            v32 = (v17 + 40);
            v33 = (v42 + 40);
            while (1)
            {
              v34 = *(v32 - 1) == *(v33 - 1) && *v32 == *v33;
              if (!v34 && (sub_18E44F3CC() & 1) == 0)
              {
                break;
              }

              v32 += 2;
              v33 += 2;
              if (!--v31)
              {
                goto LABEL_48;
              }
            }

LABEL_49:

            goto LABEL_50;
          }

LABEL_48:
        }

        else
        {

          if (v42)
          {
            goto LABEL_50;
          }
        }

        if (((v18 ^ v41) & 1) == 0)
        {
          goto LABEL_60;
        }

LABEL_50:
        a2 = (a2 + 1) & v46;
      }

      while (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_56:
  sub_18E1E3A70();
  sub_18E1C8610();
  v36 = v35 + 40 * a2;
  v37 = *(v43 + 16);
  *v36 = *v43;
  *(v36 + 16) = v37;
  *(v36 + 32) = *(v43 + 32);
  sub_18E1CEA30();
  if (v40)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    sub_18E44F40C();
    __break(1u);
  }

  else
  {
    *(v38 + 16) = v39;
  }
}

void sub_18E3F3840(uint64_t *a1, unint64_t a2)
{
  sub_18E1CA234();
  v48 = v8;
  if (!(!v27 & v9) || (v5 & 1) == 0)
  {
    if (v5)
    {
      sub_18E3F2774(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_18E3F45E8();
        goto LABEL_75;
      }

      sub_18E3F55CC(v6 + 1);
    }

    v52 = *v2;
    sub_18E44F48C();
    v10 = *a1;
    v11 = a1[1];
    v12 = a1[2];
    v13 = a1[3];
    v14 = a1[4];
    v15 = a1[5];
    v16 = *(a1 + 48);
    sub_18E44EB4C();
    v53 = v13;
    sub_18E44EB4C();
    v50 = v14;
    sub_18E44EB4C();
    sub_18E44F4AC();
    if (v16 != 15)
    {
      RequestResourcesKey.rawValue.getter();
      sub_18E44EB4C();
    }

    sub_18E44F4CC();
    sub_18E1C5B14();
    a2 = v18 & ~v17;
    if ((*(v52 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v49 = v16;
      v51 = ~v17;
      sub_18E1CA5A4();
      v46 = v19;
      v47 = v20;
      do
      {
        v21 = *(v52 + 48) + 56 * a2;
        v22 = *(v21 + 16);
        v23 = *(v21 + 24);
        v24 = *(v21 + 32);
        v25 = *(v21 + 40);
        v26 = *(v21 + 48);
        v27 = *v21 == v10 && *(v21 + 8) == v11;
        if (v27 || (sub_18E44F3CC() & 1) != 0)
        {
          v28 = v22 == v12 && v23 == v53;
          if (v28 || (sub_18E44F3CC() & 1) != 0)
          {
            v29 = v24 == v50 && v25 == v15;
            if (v29 || (sub_18E44F3CC() & 1) != 0)
            {
              if (v26 == 15)
              {
                if (v49 == 15)
                {
                  goto LABEL_79;
                }
              }

              else
              {
                v30 = v49;
                v31 = 0xEF31765F65677261;
                switch(v26)
                {
                  case 1:
                    break;
                  case 2:
                    sub_18E23466C();
                    goto LABEL_49;
                  case 3:
                    sub_18E23466C();
                    goto LABEL_40;
                  case 4:
                    sub_18E23466C();
                    goto LABEL_47;
                  case 5:
                    sub_18E23466C();
                    goto LABEL_43;
                  case 6:
                    v31 = 0xED00007974656661;
                    break;
                  case 7:
                    sub_18E1C54AC();
                    v31 = 0xEF31765F65677261;
                    break;
                  case 8:
                    sub_18E1C54AC();
LABEL_49:
                    v31 = 0xEF32765F65677261;
                    break;
                  case 9:
                    sub_18E1C54AC();
LABEL_40:
                    v31 = 0xEF33765F65677261;
                    break;
                  case 10:
                    sub_18E1C54AC();
LABEL_47:
                    v31 = 0xEF34765F65677261;
                    break;
                  case 11:
                    sub_18E1C54AC();
LABEL_43:
                    v31 = 0xEF35765F65677261;
                    break;
                  case 12:
                    v31 = v47;
                    break;
                  case 13:
                    sub_18E1E6940();
                    v31 = 0x800000018E45B3C0;
                    break;
                  case 14:
                    sub_18E1E6940();
                    v31 = 0x800000018E45B3E0;
                    break;
                  default:
                    v31 = v46;
                    break;
                }

                v34 = v30;
                sub_18E1C9064();
                v35 = v26 | 0xEF31765F00000000;
                switch(v34)
                {
                  case 0:
                    v33 = 0xD000000000000016;
                    v35 = v46;
                    break;
                  case 1:
                    break;
                  case 2:
                    sub_18E1C9064();
                    goto LABEL_68;
                  case 3:
                    sub_18E1C9064();
                    goto LABEL_59;
                  case 4:
                    sub_18E1C9064();
                    goto LABEL_66;
                  case 5:
                    sub_18E1C9064();
                    goto LABEL_62;
                  case 6:
                    v33 = 0x735F6D6C65646F63;
                    v35 = 0xED00007974656661;
                    break;
                  case 7:
                    sub_18E1C8BD8();
                    v35 = v35 | 0xEF31765F00000000;
                    break;
                  case 8:
                    sub_18E1C8BD8();
LABEL_68:
                    v35 = v35 | 0xEF32765F00000000;
                    break;
                  case 9:
                    sub_18E1C8BD8();
LABEL_59:
                    v35 = v35 | 0xEF33765F00000000;
                    break;
                  case 10:
                    sub_18E1C8BD8();
LABEL_66:
                    v35 = v35 | 0xEF34765F00000000;
                    break;
                  case 11:
                    sub_18E1C8BD8();
LABEL_62:
                    v35 = v35 | 0xEF35765F00000000;
                    break;
                  case 12:
                    v33 = 0xD000000000000016;
                    v35 = v47;
                    break;
                  case 13:
                    sub_18E1E6940();
                    v33 = v37 - 1;
                    v35 = 0x800000018E45B3C0;
                    break;
                  case 14:
                    sub_18E1E6940();
                    v33 = v36 - 2;
                    v35 = 0x800000018E45B3E0;
                    break;
                  default:
                    goto LABEL_74;
                }

                if (v32 == v33 && v31 == v35)
                {
                  goto LABEL_78;
                }

                v39 = sub_18E44F3CC();

                if (v39)
                {
                  goto LABEL_79;
                }
              }
            }
          }
        }

LABEL_74:
        a2 = (a2 + 1) & v51;
      }

      while (((*(v52 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_75:
  sub_18E1E3A70();
  sub_18E1C8610();
  v41 = v40 + 56 * a2;
  v42 = *(v48 + 16);
  *v41 = *v48;
  *(v41 + 16) = v42;
  *(v41 + 32) = *(v48 + 32);
  *(v41 + 48) = *(v48 + 48);
  sub_18E1CEA30();
  if (v45)
  {
    __break(1u);
LABEL_78:

LABEL_79:
    sub_18E44F40C();
    __break(1u);
  }

  else
  {
    *(v43 + 16) = v44;
  }
}

void sub_18E3F3DB4(char a1)
{
  LOBYTE(v2) = a1;
  sub_18E1CA234();
  if (!(!v7 & v6) || (v3 & 1) == 0)
  {
    if (v3)
    {
      v8 = sub_18E2287EC(v4);
      sub_18E3F2C50(v8);
      goto LABEL_9;
    }

    if (v5 <= v4)
    {
      v9 = sub_18E2287EC(v4);
      sub_18E3F5A9C(v9);
LABEL_9:
      v10 = *v1;
      v11 = sub_18E44F48C();
      sub_18E1CEB2C(v11);
      sub_18E44F4CC();
      sub_18E1C5B14();
      v2 = v12 & ~v13;
      if ((*(v10 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2))
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    sub_18E3F4778();
  }

LABEL_10:
  sub_18E1E3A70();
  *(v15 + 56) |= v14 << v2;
  sub_18E1CEA30();
  if (!v18)
  {
    *(v16 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_13:
  sub_18E44F40C();
  __break(1u);
}

void sub_18E3F3EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_18E1E6AB4();
  v32 = v31;
  v34 = v33;
  sub_18E1CA234();
  if (!(!v51 & v38) || (v35 & 1) == 0)
  {
    if (v35)
    {
      sub_18E3F2E80(v36 + 1);
      goto LABEL_11;
    }

    if (v37 <= v36)
    {
      sub_18E3F5C9C(v36 + 1);
LABEL_11:
      v43 = *v30;
      sub_18E44F48C();
      sub_18E1C6DAC(v34);
      sub_18E44EB4C();

      sub_18E44F4CC();
      sub_18E1C5B14();
      v46 = ~v45;
      while (1)
      {
        v32 = v44 & v46;
        if (((*(v43 + 56 + (((v44 & v46) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v44 & v46)) & 1) == 0)
        {
          goto LABEL_8;
        }

        v47 = sub_18E1C6DAC(*(*(v43 + 48) + v32));
        v49 = v48;
        v51 = v47 == sub_18E1C6DAC(v34) && v49 == v50;
        if (v51)
        {
          goto LABEL_20;
        }

        sub_18E1CBE3C();
        v52 = sub_18E44F3CC();

        if (v52)
        {
          goto LABEL_21;
        }

        v44 = v32 + 1;
      }
    }

    sub_18E3F4884();
  }

LABEL_8:
  sub_18E1E3A70();
  sub_18E1C8610();
  *(v39 + v32) = v34;
  sub_18E1CEA30();
  if (v42)
  {
    __break(1u);
LABEL_20:

LABEL_21:
    sub_18E44F40C();
    __break(1u);
  }

  else
  {
    *(v40 + 16) = v41;
    sub_18E1E28A4();
  }
}

void sub_18E3F4028()
{
  v1 = v0;
  sub_18E2706EC(&qword_1EABE8FE8, &unk_18E4E1A30);
  v2 = *v0;
  v3 = sub_18E44EFBC();
  if (v2[2])
  {
    sub_18E1CF974();
    v6 = (v5 + 63) >> 6;
    if (v3 != v2 || v4 >= &v2[v6 + 7])
    {
      memmove(v4, v2 + 7, 8 * v6);
    }

    v8 = 0;
    *(v3 + 16) = v2[2];
    sub_18E1CF974();
    v10 = v2[7];
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
        v18 = (v2[6] + 16 * v17);
        v19 = v18[1];
        v20 = (*(v3 + 48) + 16 * v17);
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

      v16 = v2[v8 + 7];
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

    *v1 = v3;
  }
}

void *sub_18E3F4178()
{
  v1 = v0;
  sub_18E2706EC(&qword_1EABE8FE0, &qword_18E4E1A28);
  v2 = *v0;
  v3 = sub_18E44EFBC();
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
        v17 = 3 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 8 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        LOBYTE(v18) = *(v18 + 16);
        v21 = *(v4 + 48) + 8 * v17;
        *v21 = v20;
        *(v21 + 8) = v19;
        *(v21 + 16) = v18;
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

void *sub_18E3F42DC()
{
  v1 = v0;
  sub_18E2706EC(&qword_1EABE8FD8, &qword_18E4E1A20);
  v2 = *v0;
  v3 = sub_18E44EFBC();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + (v17 << 6));
        v20 = v18[1];
        v19 = v18[2];
        v21 = *v18;
        *&v24[10] = *(v18 + 42);
        v23[1] = v20;
        *v24 = v19;
        v23[0] = v21;
        memmove((*(v4 + 48) + (v17 << 6)), v18, 0x3AuLL);
        result = sub_18E27418C(v23, &v22);
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

void *sub_18E3F445C()
{
  v1 = v0;
  sub_18E2706EC(&qword_1EABE90A8, &qword_18E4E2678);
  v2 = *v0;
  v3 = sub_18E44EFBC();
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
        v17 = 5 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 8 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        LOBYTE(v18) = *(v18 + 32);
        v23 = *(v4 + 48) + 8 * v17;
        *v23 = v19;
        *(v23 + 8) = v20;
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

void *sub_18E3F45E8()
{
  v1 = v0;
  sub_18E2706EC(&qword_1EABE9078, &qword_18E4E2620);
  v2 = *v0;
  v3 = sub_18E44EFBC();
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
        v17 = 56 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(v18 + 40);
        LOBYTE(v18) = *(v18 + 48);
        v25 = *(v4 + 48) + v17;
        *v25 = v20;
        *(v25 + 8) = v19;
        *(v25 + 16) = v21;
        *(v25 + 24) = v22;
        *(v25 + 32) = v23;
        *(v25 + 40) = v24;
        *(v25 + 48) = v18;
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

void *sub_18E3F4778()
{
  v1 = v0;
  sub_18E2706EC(&qword_1EABE9060, &unk_18E4E2608);
  v2 = *v0;
  v3 = sub_18E44EFBC();
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
    if (v11)
    {
      goto LABEL_15;
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
        do
        {
LABEL_15:
          v11 &= v11 - 1;
        }

        while (v11);
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

void *sub_18E3F4884()
{
  v1 = v0;
  sub_18E2706EC(&qword_1EABE9058, &qword_18E4E2600);
  v2 = *v0;
  v3 = sub_18E44EFBC();
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

uint64_t sub_18E3F49C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_18E2706EC(&qword_1EABE8FE8, &unk_18E4E1A30);
  result = sub_18E44EFCC();
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
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_18E44F48C();

        sub_18E44EB4C();
        result = sub_18E44F4CC();
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
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
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

uint64_t sub_18E3F4BF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_18E2706EC(&qword_1EABE8FE0, &qword_18E4E1A28);
  result = sub_18E44EFCC();
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
        v16 = *(v3 + 48) + 24 * (v13 | (v6 << 6));
        v17 = *v16;
        v18 = *(v16 + 8);
        v19 = *(v16 + 16);
        sub_18E44F48C();

        sub_18E44EB4C();
        if (v19 != 2)
        {
          sub_18E44F4AC();
        }

        sub_18E44F4AC();
        result = sub_18E44F4CC();
        v20 = -1 << *(v5 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = *(v5 + 48) + 24 * v23;
        *v28 = v17;
        *(v28 + 8) = v18;
        *(v28 + 16) = v19;
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
          goto LABEL_23;
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
          goto LABEL_27;
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

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_18E3F4E68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_18E2706EC(&qword_1EABE8FD8, &qword_18E4E1A20);
  result = sub_18E44EFCC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = *(v3 + 56);
    v40 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & v7;
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    v41 = v3;
    if ((v9 & v7) != 0)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = (*(v3 + 48) + ((v13 | (v6 << 6)) << 6));
        v17 = *v16;
        v18 = *(v16 + 42);
        v19 = v16[2];
        v51 = v16[1];
        *v52 = v19;
        *&v52[10] = v18;
        v50 = v17;
        sub_18E44F48C();
        v20 = v51;
        sub_18E27418C(&v50, v48);
        sub_18E44EB4C();
        if (v20 != 2)
        {
          sub_18E44F4AC();
        }

        sub_18E44F4AC();
        v21 = *&v52[8];
        if (*&v52[8])
        {
          v22 = v52[24];
          v23 = *&v52[16];
          v42 = v10;
          v24 = v11;
          v25 = v5;
          v26 = *(&v51 + 1);
          v27 = *v52;
          v43 = __PAIR128__(*v52, *(&v51 + 1));
          v44 = *&v52[8];
          v45 = v52[24];
          sub_18E44F4AC();
          v46[0] = v26;
          v46[1] = v27;
          v5 = v25;
          v11 = v24;
          v46[2] = v21;
          v46[3] = v23;
          v3 = v41;
          v10 = v42;
          v47 = v22;
          sub_18E327BB0(v46, v48);
          CostProfile.hash(into:)();
          v48[0] = v43;
          v48[1] = v44;
          v49 = v45;
          sub_18E292124(v48);
        }

        else
        {
          sub_18E44F4AC();
        }

        MEMORY[0x193ACCC20](v52[25]);
        result = sub_18E44F4CC();
        v28 = -1 << *(v5 + 32);
        v29 = result & ~v28;
        v30 = v29 >> 6;
        if (((-1 << v29) & ~*(v12 + 8 * (v29 >> 6))) == 0)
        {
          break;
        }

        v31 = __clz(__rbit64((-1 << v29) & ~*(v12 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v12 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        v36 = (*(v5 + 48) + (v31 << 6));
        v37 = v50;
        v38 = v51;
        v39 = *v52;
        *(v36 + 42) = *&v52[10];
        v36[1] = v38;
        v36[2] = v39;
        *v36 = v37;
        ++*(v5 + 16);
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v32 = 0;
      v33 = (63 - v28) >> 6;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v12 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_26;
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
          goto LABEL_30;
        }

        v15 = *(v40 + 8 * v6);
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

LABEL_30:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_18E3F51A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_18E2706EC(&qword_1EABE90A8, &qword_18E4E2678);
  result = sub_18E44EFCC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v36 = v3 + 56;
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
    v37 = v10;
    v38 = v3;
    v39 = result + 56;
    v40 = result;
    if (v9)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v9));
        v42 = (v9 - 1) & v9;
LABEL_12:
        v14 = *(v3 + 48) + 40 * (v11 | (v6 << 6));
        v15 = *v14;
        v17 = *(v14 + 8);
        v16 = *(v14 + 16);
        v18 = *(v14 + 24);
        v43 = *(v14 + 32);
        sub_18E44F48C();
        v41 = v15;
        sub_18E1C6DAC(v15);
        v44 = v18;

        v45 = v16;

        sub_18E44EB4C();

        v19 = v17 + 64;
        v20 = 1 << *(v17 + 32);
        if (v20 < 64)
        {
          v21 = ~(-1 << v20);
        }

        else
        {
          v21 = -1;
        }

        v22 = v21 & *(v17 + 64);
        v23 = (v20 + 63) >> 6;
        v46 = v17;

        v24 = 0;
        v25 = 0;
        if (v22)
        {
          goto LABEL_21;
        }

        while (1)
        {
          v26 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            __break(1u);
            goto LABEL_42;
          }

          if (v26 >= v23)
          {
            break;
          }

          v22 = *(v19 + 8 * v26);
          ++v25;
          if (v22)
          {
            v25 = v26;
            do
            {
LABEL_21:
              v22 &= v22 - 1;
              memcpy(__dst, __src, sizeof(__dst));

              sub_18E44EB4C();

              sub_18E44EB4C();

              result = sub_18E44F4CC();
              v24 ^= result;
            }

            while (v22);
            continue;
          }
        }

        MEMORY[0x193ACCC20](v24);
        sub_18E44F4AC();
        if (v45)
        {
          sub_18E2917A4();
        }

        v3 = v38;
        sub_18E44F4AC();
        if (v44)
        {
          sub_18E2917A4();
        }

        sub_18E44F4AC();
        result = sub_18E44F4CC();
        v5 = v40;
        v27 = -1 << *(v40 + 32);
        v28 = result & ~v27;
        v29 = v28 >> 6;
        if (((-1 << v28) & ~*(v39 + 8 * (v28 >> 6))) == 0)
        {
          break;
        }

        v30 = __clz(__rbit64((-1 << v28) & ~*(v39 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_36:
        *(v39 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
        v35 = *(v40 + 48) + 40 * v30;
        *v35 = v41;
        *(v35 + 8) = v46;
        *(v35 + 16) = v45;
        *(v35 + 24) = v44;
        *(v35 + 32) = v43;
        ++*(v40 + 16);
        v10 = v37;
        v9 = v42;
        if (!v42)
        {
          goto LABEL_7;
        }
      }

      v31 = 0;
      v32 = (63 - v27) >> 6;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v39 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_36;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v6;
      while (1)
      {
        v6 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          goto LABEL_40;
        }

        v13 = *(v36 + 8 * v6);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v42 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

LABEL_42:
      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_40:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_18E3F55CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_18E2706EC(&qword_1EABE9078, &qword_18E4E2620);
  result = sub_18E44EFCC();
  v5 = result;
  if (*(v3 + 16))
  {
    v33 = v1;
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
    v34 = (v8 + 63) >> 6;
    v11 = result + 56;
    v35 = v3;
    v36 = result;
    if (v10)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v10));
        v37 = (v10 - 1) & v10;
LABEL_12:
        v15 = *(v3 + 48) + 56 * (v12 | (v6 << 6));
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        v19 = *(v15 + 24);
        v21 = *(v15 + 32);
        v20 = *(v15 + 40);
        v22 = *(v15 + 48);
        sub_18E44F48C();

        sub_18E44EB4C();
        sub_18E44EB4C();
        sub_18E44EB4C();
        sub_18E44F4AC();
        if (v22 != 15)
        {
          sub_18E44EB4C();
        }

        result = sub_18E44F4CC();
        v5 = v36;
        v23 = -1 << *(v36 + 32);
        v24 = result & ~v23;
        v25 = v24 >> 6;
        if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
        {
          break;
        }

        v26 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v11 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        v31 = *(v36 + 48) + 56 * v26;
        *v31 = v16;
        *(v31 + 8) = v17;
        v10 = v37;
        *(v31 + 16) = v18;
        *(v31 + 24) = v19;
        *(v31 + 32) = v21;
        *(v31 + 40) = v20;
        *(v31 + 48) = v22;
        ++*(v36 + 16);
        v3 = v35;
        if (!v37)
        {
          goto LABEL_7;
        }
      }

      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v11 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_23;
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

        if (v6 >= v34)
        {
          v32 = v5;

          v2 = v33;
          goto LABEL_27;
        }

        v14 = *(v7 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v37 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v32 = result;

LABEL_27:
    *v2 = v32;
  }

  return result;
}

uint64_t sub_18E3F5A9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_18E2706EC(&qword_1EABE9060, &unk_18E4E2608);
  result = sub_18E44EFCC();
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
    if (!v9)
    {
      goto LABEL_6;
    }

    do
    {
LABEL_10:
      sub_18E44F48C();
      sub_18E44EB4C();
      result = sub_18E44F4CC();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) == 0)
      {
        v17 = 0;
        v18 = (63 - v13) >> 6;
        while (++v15 != v18 || (v17 & 1) == 0)
        {
          v19 = v15 == v18;
          if (v15 == v18)
          {
            v15 = 0;
          }

          v17 |= v19;
          v20 = *(v11 + 8 * v15);
          if (v20 != -1)
          {
            v16 = __clz(__rbit64(~v20)) + (v15 << 6);
            goto LABEL_19;
          }
        }

        goto LABEL_25;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
      v9 &= v9 - 1;
      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      ++*(v5 + 16);
    }

    while (v9);
LABEL_6:
    while (1)
    {
      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        v2 = v1;
        goto LABEL_23;
      }

      v9 = *(v3 + 56 + 8 * v12);
      ++v6;
      if (v9)
      {
        v6 = v12;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {

LABEL_23:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_18E3F5C9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_18E2706EC(&qword_1EABE9058, &qword_18E4E2600);
  result = sub_18E44EFCC();
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
        sub_18E44F48C();
        sub_18E1C6DAC(v15);
        sub_18E44EB4C();

        result = sub_18E44F4CC();
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

void sub_18E3F5ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_18E1E6AB4();
  v34 = v33;
  if (!v32)
  {
LABEL_5:

    goto LABEL_6;
  }

  v35 = v32;
  if (*(v33 + 16) == v32)
  {
LABEL_6:
    sub_18E1E28A4();
    return;
  }

  v36 = v31;
  v37 = v30;
  sub_18E2706EC(&qword_1EABE8FE8, &unk_18E4E1A30);
  sub_18E1CDA2C();
  v38 = sub_18E44EFDC();
  v39 = v38;
  if (v36 < 1)
  {
    v40 = 0;
  }

  else
  {
    v40 = *v37;
  }

  v41 = 0;
  v42 = v38 + 56;
  v60 = v34;
  while (v40)
  {
    v43 = __clz(__rbit64(v40));
    v40 &= v40 - 1;
LABEL_16:
    v46 = (*(v34 + 48) + 16 * (v43 | (v41 << 6)));
    v47 = *v46;
    v48 = v46[1];
    sub_18E44F48C();

    sub_18E44EB4C();
    v49 = sub_18E44F4CC();
    v50 = -1 << *(v39 + 32);
    v51 = v49 & ~v50;
    v52 = v51 >> 6;
    if (((-1 << v51) & ~*(v42 + 8 * (v51 >> 6))) == 0)
    {
      v54 = 0;
      v55 = (63 - v50) >> 6;
      while (++v52 != v55 || (v54 & 1) == 0)
      {
        v56 = v52 == v55;
        if (v52 == v55)
        {
          v52 = 0;
        }

        v54 |= v56;
        v57 = *(v42 + 8 * v52);
        if (v57 != -1)
        {
          v53 = __clz(__rbit64(~v57)) + (v52 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_29;
    }

    v53 = __clz(__rbit64((-1 << v51) & ~*(v42 + 8 * (v51 >> 6)))) | v51 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v42 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
    v58 = (*(v39 + 48) + 16 * v53);
    *v58 = v47;
    v58[1] = v48;
    ++*(v39 + 16);
    if (__OFSUB__(v35--, 1))
    {
      goto LABEL_30;
    }

    v34 = v60;
    if (!v35)
    {
      goto LABEL_5;
    }
  }

  v44 = v41;
  while (1)
  {
    v41 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v41 >= v36)
    {
      goto LABEL_5;
    }

    v45 = v37[v41];
    ++v44;
    if (v45)
    {
      v43 = __clz(__rbit64(v45));
      v40 = (v45 - 1) & v45;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_18E3F60D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_18E2706EC(&qword_1EABE9060, &unk_18E4E2608);
  result = sub_18E44EFDC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
LABEL_15:
    sub_18E44F48C();
    sub_18E44EB4C();
    result = sub_18E44F4CC();
    v14 = -1 << *(v9 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v14) >> 6;
      while (++v16 != v19 || (v18 & 1) == 0)
      {
        v20 = v16 == v19;
        if (v16 == v19)
        {
          v16 = 0;
        }

        v18 |= v20;
        v21 = *(v12 + 8 * v16);
        if (v21 != -1)
        {
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
          goto LABEL_24;
        }
      }

      goto LABEL_28;
    }

    v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_29;
    }

    v10 &= v10 - 1;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v10 = a1[v13];
    ++v11;
    if (v10)
    {
      v11 = v13;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_18E3F62B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_18E2706EC(&qword_1EABE9058, &qword_18E4E2600);
  result = sub_18E44EFDC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_18E44F48C();
    sub_18E1C6DAC(v16);
    sub_18E44EB4C();

    result = sub_18E44F4CC();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void *sub_18E3F64D4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);

    return v10;
  }

  return result;
}

uint64_t sub_18E3F656C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_18E3F65E4(int64_t a1, char a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    sub_18E3F0384(isUniquelyReferenced_nonNull_native, v7, a2 & 1, v5, &qword_1EABE0DF8, &qword_18E49D1A0, sub_18E26DF84);
    *v2 = v8;
  }
}

uint64_t sub_18E3F6670(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v28 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_15:
    v29 = 0;
    v17 = 0;
    v18 = 1 << *(a3 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(a3 + 56);
    v21 = (v18 + 63) >> 6;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_26:
      v25 = v22 | (v17 << 6);
      sub_18E44F48C();
      sub_18E44EB4C();
      result = sub_18E44F4CC();
      v26 = result & ~(-1 << *(v4 + 32));
      if ((*(v4 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
      {
        *(v28 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v16 = __OFADD__(v29++, 1);
        if (v16)
        {
          __break(1u);
          goto LABEL_30;
        }
      }
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
        goto LABEL_30;
      }

      v24 = *(a3 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_26;
      }
    }
  }

  else
  {
    v29 = 0;
    v6 = 0;
    v4 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
LABEL_11:
      v9 &= v9 - 1;
      sub_18E44F48C();
      sub_18E44EB4C();
      result = sub_18E44F4CC();
      v12 = result & ~(-1 << *(a3 + 32));
      v13 = v12 >> 6;
      v14 = *(a3 + 56 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if ((v15 & v14) != 0)
      {
        v28[v13] |= v15;
        v16 = __OFADD__(v29++, 1);
        if (v16)
        {
          __break(1u);
          goto LABEL_15;
        }
      }
    }

    while (1)
    {
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
LABEL_30:

        return sub_18E3F60D4(v28, a2, v29, a3);
      }

      v9 = *(v4 + 8 * v11);
      ++v6;
      if (v9)
      {
        v6 = v11;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_18E3F68E8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_26:
    v53 = 0;
    v27 = 0;
    v28 = v5 + 56;
    v29 = 1 << *(v5 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(v5 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = v4 + 56;
    v49 = v32;
LABEL_30:
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v55 = (v31 - 1) & v31;
LABEL_37:
      v51 = v34 | (v27 << 6);
      v37 = *(*(v5 + 48) + v51);
      sub_18E44F48C();
      sub_18E1C6DAC(v37);
      sub_18E44EB4C();

      result = sub_18E44F4CC();
      v38 = ~(-1 << *(v4 + 32));
      while (1)
      {
        v39 = result & v38;
        if (((*(v33 + (((result & v38) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v38)) & 1) == 0)
        {
          v31 = v55;
          v5 = a3;
          v4 = a4;
          v32 = v49;
          goto LABEL_30;
        }

        v40 = sub_18E1C6DAC(*(*(a4 + 48) + v39));
        v42 = v41;
        if (v40 == sub_18E1C6DAC(v37) && v42 == v43)
        {
          break;
        }

        v45 = sub_18E44F3CC();

        result = v39 + 1;
        if (v45)
        {
          goto LABEL_47;
        }
      }

LABEL_47:
      *(v52 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      v31 = v55;
      v26 = __OFADD__(v53++, 1);
      v5 = a3;
      v4 = a4;
      v32 = v49;
      if (v26)
      {
        __break(1u);
        goto LABEL_50;
      }
    }

    v35 = v27;
    while (1)
    {
      v27 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v27 >= v32)
      {
        goto LABEL_50;
      }

      v36 = *(v28 + 8 * v27);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v55 = (v36 - 1) & v36;
        goto LABEL_37;
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v53 = 0;
    v54 = a3 + 56;
    v47 = v11;
    v48 = a4 + 56;
LABEL_6:
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v50 = (v10 - 1) & v10;
LABEL_13:
      v15 = *(*(v4 + 48) + (v12 | (v6 << 6)));
      sub_18E44F48C();
      sub_18E1C6DAC(v15);
      sub_18E44EB4C();

      result = sub_18E44F4CC();
      v16 = ~(-1 << *(v5 + 32));
      while (1)
      {
        v17 = result & v16;
        v18 = (result & v16) >> 6;
        v19 = 1 << (result & v16);
        if ((v19 & *(v54 + 8 * v18)) == 0)
        {
          v5 = a3;
          v4 = a4;
          v11 = v47;
          v7 = v48;
          v10 = v50;
          goto LABEL_6;
        }

        v20 = sub_18E1C6DAC(*(*(a3 + 48) + v17));
        v22 = v21;
        if (v20 == sub_18E1C6DAC(v15) && v22 == v23)
        {
          break;
        }

        v25 = sub_18E44F3CC();

        result = v17 + 1;
        if (v25)
        {
          goto LABEL_23;
        }
      }

LABEL_23:
      v10 = v50;
      v52[v18] |= v19;
      v26 = __OFADD__(v53++, 1);
      v5 = a3;
      v4 = a4;
      v11 = v47;
      v7 = v48;
      if (v26)
      {
        __break(1u);
        goto LABEL_26;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
LABEL_50:

        return sub_18E3F62B8(v52, a2, v53, v5);
      }

      v14 = *(v7 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v50 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18E3F6D08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18E3F6D50(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_18E3F6D6C()
{
  result = qword_1EABE9050;
  if (!qword_1EABE9050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE9050);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResourceReadinessStatus(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t dispatch thunk of CatalogIndex.resources(with:)()
{
  return (*(*v0 + 272))();
}

{
  return (*(*v0 + 280))();
}

_BYTE *sub_18E3F70CC(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_18E3F7178()
{
  result = qword_1EABE9068;
  if (!qword_1EABE9068)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EABE9068);
  }

  return result;
}

uint64_t DownloadStatus.hashValue.getter()
{
  v1 = *v0;
  sub_18E44F48C();
  MEMORY[0x193ACCC20](v1);
  return sub_18E44F4CC();
}

uint64_t AssetSetSubscription.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AssetSetSubscription.expiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AssetSetSubscription(0) + 28);

  return sub_18E3F73B4(v3, a1);
}

uint64_t type metadata accessor for AssetSetSubscription(uint64_t a1)
{
  result = qword_1EABDFA40;
  if (!qword_1EABDFA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18E3F73B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E2706EC(&qword_1EABE90D0, &qword_18E4E26C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AssetSetSubscription.init(name:assetSets:usageAliases:expiration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v7 = a6 + *(type metadata accessor for AssetSetSubscription(0) + 28);

  return sub_18E3F7474(a5, v7);
}

uint64_t sub_18E3F7474(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E2706EC(&qword_1EABE90D0, &qword_18E4E26C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL static AssetSetSubscription.== infix(_:_:)(void *a1, void *a2)
{
  v4 = sub_18E44E65C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18E2706EC(&qword_1EABE90D0, &qword_18E4E26C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_18E2706EC(&qword_1EABE90D8, &qword_18E4E26C8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = *a1 == *a2 && a1[1] == a2[1];
  if (!v14 && (sub_18E44F3CC() & 1) == 0)
  {
    return 0;
  }

  sub_18E26D9F0();
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  sub_18E26D86C(a1[3], a2[3]);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v17 = *(type metadata accessor for AssetSetSubscription(0) + 28);
  v18 = *(v11 + 48);
  sub_18E3F73B4(a1 + v17, v13);
  sub_18E3F73B4(a2 + v17, &v13[v18]);
  sub_18E1C6AC8(v13);
  if (v14)
  {
    sub_18E1C6AC8(&v13[v18]);
    if (v14)
    {
      sub_18E275468(v13, &qword_1EABE90D0, &qword_18E4E26C0);
      return 1;
    }

    goto LABEL_16;
  }

  sub_18E3F73B4(v13, v10);
  sub_18E1C6AC8(&v13[v18]);
  if (v19)
  {
    (*(v5 + 8))(v10, v4);
LABEL_16:
    sub_18E275468(v13, &qword_1EABE90D8, &qword_18E4E26C8);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v18], v4);
  sub_18E3F77B8();
  v21 = sub_18E44EA1C();
  v22 = *(v5 + 8);
  v22(v7, v4);
  v22(v10, v4);
  sub_18E275468(v13, &qword_1EABE90D0, &qword_18E4E26C0);
  return (v21 & 1) != 0;
}

unint64_t sub_18E3F77B8()
{
  result = qword_1EABE90E0;
  if (!qword_1EABE90E0)
  {
    sub_18E44E65C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE90E0);
  }

  return result;
}

unint64_t sub_18E3F7854()
{
  result = qword_1EABE90E8;
  if (!qword_1EABE90E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE90E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DownloadStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

void sub_18E3F79B0(uint64_t a1)
{
  sub_18E3F7A5C(319);
  if (v1 <= 0x3F)
  {
    sub_18E266314();
    if (v2 <= 0x3F)
    {
      sub_18E3F7AD0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_18E3F7A5C(uint64_t a1)
{
  if (!qword_1EABDF760)
  {
    sub_18E2707F8(&unk_1EABE1150, &qword_18E49CE38);
    v1 = sub_18E44E9DC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EABDF760);
    }
  }
}

void sub_18E3F7AD0(uint64_t a1)
{
  if (!qword_1EABE0048)
  {
    sub_18E44E65C();
    v1 = sub_18E44EEFC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EABE0048);
    }
  }
}

uint64_t sub_18E3F7B28(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF9 && *(a1 + 25))
    {
      v2 = *a1 + 248;
    }

    else
    {
      v3 = *(a1 + 24);
      v4 = v3 >= 8;
      v2 = v3 - 8;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E3F7B64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 7;
    }
  }

  return result;
}

uint64_t dispatch thunk of SubscriptionManagerProviding.downloadStatus(subscribers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_18E3F7F24;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SubscriptionManagerProviding.updateAssets(subscribers:detailedProgress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_18E3F7E30;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_18E3F7E30()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t GuardrailResultInfo.useCaseIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void GuardrailResultInfo.instanceType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t GuardrailResultInfo.userRequestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GuardrailResultInfo(0) + 28);
  v4 = sub_18E44E6AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for GuardrailResultInfo(uint64_t a1)
{
  result = qword_1EABE04C8;
  if (!qword_1EABE04C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GuardrailResultInfo.init(markedUnsafe:useCaseIdentifier:instanceType:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = *(a4 + 8);
  type metadata accessor for GuardrailResultInfo(0);
  result = sub_18E44E69C();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = v9;
  *(a5 + 32) = v10;
  return result;
}

uint64_t GuardrailResultInfo.init(markedUnsafe:useCaseIdentifier:instanceType:userRequestID:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a4;
  v9 = *(a4 + 8);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = v8;
  *(a6 + 32) = v9;
  v10 = *(type metadata accessor for GuardrailResultInfo(0) + 28);
  v11 = sub_18E44E6AC();
  v12 = *(*(v11 - 8) + 32);

  return v12(a6 + v10, a5, v11);
}

uint64_t sub_18E3F8164(uint64_t a1)
{
  result = sub_18E44E6AC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t AvailableUseCases.AvailableUseCase.language.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AvailableUseCases.AvailableUseCase(0) + 20);

  return sub_18E29205C(v3, a1);
}

uint64_t type metadata accessor for AvailableUseCases.AvailableUseCase(uint64_t a1)
{
  result = qword_1EABDFB10;
  if (!qword_1EABDFB10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AvailableUseCases.AvailableUseCase.presentAssets.getter()
{
  type metadata accessor for AvailableUseCases.AvailableUseCase(0);
}

uint64_t AvailableUseCases.AvailableUseCase.missingAssets.getter()
{
  type metadata accessor for AvailableUseCases.AvailableUseCase(0);
}

uint64_t static AvailableUseCases.AvailableUseCase.== infix(_:_:)(char *a1, char *a2)
{
  v4 = *a2;
  v5 = sub_18E1C6DAC(*a1);
  v7 = v6;
  if (v5 == sub_18E1C6DAC(v4) && v7 == v8)
  {
  }

  else
  {
    v10 = sub_18E44F3CC();

    if ((v10 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v11 = type metadata accessor for AvailableUseCases.AvailableUseCase(0);
  if ((sub_18E2AE620(&a1[v11[5]], &a2[v11[5]]) & 1) == 0)
  {
    goto LABEL_19;
  }

  v12 = v11[6];
  v13 = *&a1[v12];
  v14 = *&a2[v12];
  if (v13)
  {
    if (!v14 || (sub_18E290008(v13, v14) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v14)
  {
    goto LABEL_19;
  }

  v15 = v11[7];
  v16 = *&a1[v15];
  v17 = *&a2[v15];
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_17;
    }

LABEL_19:
    v18 = 0;
    return v18 & 1;
  }

  if (!v17 || (sub_18E290008(v16, v17) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  v18 = a1[v11[8]] ^ a2[v11[8]] ^ 1;
  return v18 & 1;
}

void sub_18E3F84AC(uint64_t a1)
{
  sub_18E2AE9A4(319);
  if (v1 <= 0x3F)
  {
    sub_18E3F8550(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18E3F8550(uint64_t a1)
{
  if (!qword_1EABDF6D8)
  {
    sub_18E2707F8(&unk_1EABE1160, &qword_18E49DDA0);
    v1 = sub_18E44EEFC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EABDF6D8);
    }
  }
}

uint64_t LocalCatalogClient.__allocating_init(resources:resourceBundles:statusBlock:informationBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  LocalCatalogClient.init(resources:resourceBundles:statusBlock:informationBlock:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

void *LocalCatalogClient.init(resources:resourceBundles:statusBlock:informationBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  type metadata accessor for CatalogIndex(0);
  CatalogIndex.__allocating_init(resources:resourceBundles:)();
  v6[2] = v12;
  v6[3] = a3;
  v6[4] = a4;
  v6[5] = a5;
  v6[6] = a6;
  type metadata accessor for UseCaseAvailabilityInfo();
  sub_18E2871E8();

  v6[7] = sub_18E44E9AC();
  v13 = objc_allocWithZone(type metadata accessor for SiriResourceAvailabilityInfo());
  v14 = SiriResourceAvailabilityInfo.init(enoughStorage:diskSpaceRequired:)(1, 0);

  v7[8] = v14;
  return v7;
}

uint64_t sub_18E3F8858(unsigned __int8 *a1, void *a2)
{
  v3 = v2;
  v5 = *a1;
  swift_beginAccess();
  v6 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 56);
  sub_18E26FE48(v6, v5, isUniquelyReferenced_nonNull_native);
  *(v3 + 56) = v9;
  return swift_endAccess();
}

uint64_t sub_18E3F88E0(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](sub_18E3F8900, 0, 0);
}

void sub_18E3F8900()
{
  v1 = *(v0 + 40);
  v2 = type metadata accessor for UseCaseAvailabilityInfo();
  sub_18E2871E8();
  v39 = v2;
  v3 = sub_18E44E9AC();
  v4 = *(v1 + 16);
  v38 = v0;
  if (!v4)
  {
LABEL_24:
    v37 = *(v38 + 8);

    v37(v3);
    return;
  }

  v5 = (*(v0 + 40) + 32);
  v6 = *(v0 + 48);
  swift_beginAccess();
  while (1)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *(v6 + 56);
    if (*(v9 + 16))
    {

      v10 = sub_18E26DBE8(v7);
      if (v11)
      {
        v12 = *(*(v9 + 56) + 8 * v10);

        v13 = v12;
        swift_isUniquelyReferenced_nonNull_native();
        sub_18E1C78D8();
        sub_18E1C8064();
        if (v16)
        {
          goto LABEL_32;
        }

        v17 = v14;
        v18 = v15;
        v19 = sub_18E2706EC(&qword_1EABE0E78, &qword_18E49D220);
        v3 = v40;
        if (sub_18E1C51B4(v19))
        {
          v20 = sub_18E26DBE8(v7);
          if ((v18 & 1) != (v21 & 1))
          {
            goto LABEL_27;
          }

          v17 = v20;
        }

        if ((v18 & 1) == 0)
        {
          sub_18E1C83A8();

          v36 = *(v40 + 16);
          v16 = __OFADD__(v36, 1);
          v35 = v36 + 1;
          if (v16)
          {
            goto LABEL_33;
          }

          goto LABEL_22;
        }

        v22 = *(v40 + 56);
        v23 = *(v22 + 8 * v17);
        *(v22 + 8 * v17) = v13;

        goto LABEL_23;
      }
    }

    objc_allocWithZone(v39);
    v24 = UseCaseAvailabilityInfo.init(resourcesReady:enoughStorage:diskSpaceRequired:)();
    swift_isUniquelyReferenced_nonNull_native();
    sub_18E1C78D8();
    sub_18E1C8064();
    if (v16)
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      return;
    }

    v27 = v25;
    v28 = v26;
    v29 = sub_18E2706EC(&qword_1EABE0E78, &qword_18E49D220);
    v3 = v40;
    if (sub_18E1C51B4(v29))
    {
      break;
    }

LABEL_16:
    if ((v28 & 1) == 0)
    {
      sub_18E1C83A8();
      v34 = *(v40 + 16);
      v16 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v16)
      {
        goto LABEL_31;
      }

LABEL_22:
      *(v3 + 16) = v35;
      goto LABEL_23;
    }

    v32 = *(v40 + 56);
    v33 = *(v32 + 8 * v27);
    *(v32 + 8 * v27) = v24;

LABEL_23:
    if (!--v4)
    {
      goto LABEL_24;
    }
  }

  v30 = sub_18E26DBE8(v7);
  if ((v28 & 1) == (v31 & 1))
  {
    v27 = v30;
    goto LABEL_16;
  }

LABEL_27:

  sub_18E44F41C();
}

void sub_18E3F8BC0(void *a1)
{
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
  v2 = a1;
}

uint64_t LocalCatalogClient.deinit()
{

  return v0;
}

uint64_t LocalCatalogClient.__deallocating_deinit()
{
  LocalCatalogClient.deinit();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_18E3F8D78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18E3F8E10;

  return sub_18E3F88E0(a1);
}

uint64_t sub_18E3F8E10(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_18E3F8F34()
{
  result = qword_1EABE05F0;
  if (!qword_1EABE05F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EABE05F0);
  }

  return result;
}

uint64_t dispatch thunk of LocalCatalogClient.useCaseResourceAvailability(by:)(uint64_t a1)
{
  sub_18E1C6A30();
  v6 = (*(v3 + 272) + **(v3 + 272));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_18E3F9360;

  return v6(a1);
}

uint64_t sub_18E3F9360(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

id UseCaseIdentifierWrapper.__allocating_init(useCaseIdentifier:)(_BYTE *a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC12ModelCatalog24UseCaseIdentifierWrapper_useCaseIdentifier] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id UseCaseIdentifierWrapper.init(useCaseIdentifier:)(_BYTE *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC12ModelCatalog24UseCaseIdentifierWrapper_useCaseIdentifier] = *a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t static UseCaseIdentifierWrapper.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EABE90F0 = a1;
  return result;
}

uint64_t sub_18E3F96B4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EABE90F0;
  return result;
}

uint64_t sub_18E3F9700(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EABE90F0 = v1;
  return result;
}

Swift::Void __swiftcall UseCaseIdentifierWrapper.encode(with:)(NSCoder with)
{
  sub_18E44E27C();
  swift_allocObject();
  sub_18E44E26C();
  sub_18E233620();
  v2 = sub_18E44E25C();
  v4 = v3;

  sub_18E25BD94();
  sub_18E2523A0(v2, v4);
  v5 = sub_18E25BDDC(v2, v4);
  v6 = sub_18E44EA8C();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  sub_18E1FDFE0(v2, v4);
}

id UseCaseIdentifierWrapper.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_18E25BD94();
  v3 = sub_18E44EEBC();
  if (v3)
  {
    v4 = v3;
    sub_18E44E24C();
    swift_allocObject();
    sub_18E44E23C();
    v5 = MEMORY[0x193ACBD40](v4);
    v7 = v6;
    sub_18E200894();
    sub_18E44E22C();
    sub_18E1FDFE0(v5, v7);

    v9 = objc_allocWithZone(ObjectType);
    v9[OBJC_IVAR____TtC12ModelCatalog24UseCaseIdentifierWrapper_useCaseIdentifier] = v14;
    v13.receiver = v9;
    v13.super_class = ObjectType;
    v10 = objc_msgSendSuper2(&v13, sel_init);

    v11 = swift_getObjectType();
    sub_18E1C6D24(v11);
  }

  else
  {

    v8 = swift_getObjectType();
    sub_18E1C6D24(v8);
    return 0;
  }

  return v10;
}

void *UseCaseIdentifierWrapper.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR____TtC12ModelCatalog24UseCaseIdentifierWrapper_useCaseIdentifier);
  v5 = objc_allocWithZone(ObjectType);
  v5[OBJC_IVAR____TtC12ModelCatalog24UseCaseIdentifierWrapper_useCaseIdentifier] = v4;
  v7.receiver = v5;
  v7.super_class = ObjectType;
  result = objc_msgSendSuper2(&v7, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

unint64_t UseCaseIdentifierWrapper.description.getter()
{
  sub_18E44EFFC();

  v1 = sub_18E1C6DAC(*(v0 + OBJC_IVAR____TtC12ModelCatalog24UseCaseIdentifierWrapper_useCaseIdentifier));
  MEMORY[0x193ACC300](v1);

  MEMORY[0x193ACC300](32032, 0xE200000000000000);
  return 0xD000000000000015;
}

uint64_t UseCaseIdentifierWrapper.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12ModelCatalog24UseCaseIdentifierWrapper_useCaseIdentifier);
  sub_18E44F48C();
  sub_18E1C6DAC(v1);
  sub_18E44EB4C();

  return sub_18E44F4CC();
}

id UseCaseIdentifierWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UseCaseIdentifierWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double serverConfigurationFor(serverBundleConfigID:variant:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_18E1C77B0();
  v7 = a1 == 0xD000000000000040 && v6 == a2;
  if (v7 || (sub_18E1C51D4(0xD000000000000040, v6) & 1) != 0)
  {
    v8 = sub_18E1C6D44();
    static Catalog.Resource.LLM.ServerConfiguration.AccessibilityMagnifier(variant:)(v8);
  }

  else
  {
    sub_18E1C77B0();
    v11 = a1 == 0xD000000000000039 && v10 == a2;
    if (v11 || (sub_18E1C51D4(0xD000000000000039, v10) & 1) != 0)
    {
      v12 = sub_18E1C6D44();
      static Catalog.Resource.LLM.ServerConfiguration.AnswerSynthesisServer(variant:)(v12);
    }

    else
    {
      sub_18E1C77B0();
      v15 = a1 == 0xD000000000000033 && v14 == a2;
      if (v15 || (sub_18E1C8078(v13, v14) & 1) != 0)
      {
        v16 = sub_18E1C6D44();
        static Catalog.Resource.LLM.ServerConfiguration.InstructServerAutograder(variant:)(v16);
      }

      else
      {
        sub_18E1C77B0();
        v18 = a1 == 0xD00000000000002DLL && v17 == a2;
        if (v18 || (sub_18E1C51D4(0xD00000000000002DLL, v17) & 1) != 0)
        {
          v19 = sub_18E1C6D44();
          static Catalog.Resource.LLM.ServerConfiguration.InstructServerBase(variant:)(v19);
        }

        else
        {
          sub_18E1C77B0();
          v21 = a1 == 0xD00000000000003ALL && v20 == a2;
          if (v21 || (sub_18E1C51D4(0xD00000000000003ALL, v20) & 1) != 0)
          {
            v22 = sub_18E1C6D44();
            static Catalog.Resource.LLM.ServerConfiguration.ServerBulletsTransform(variant:)(v22);
          }

          else
          {
            sub_18E1C77B0();
            v24 = a1 == 0xD000000000000035 && v23 == a2;
            if (v24 || (sub_18E1C51D4(0xD000000000000035, v23) & 1) != 0)
            {
              v25 = sub_18E1C6D44();
              static Catalog.Resource.LLM.ServerConfiguration.ServerConciseTone(variant:)(v25);
            }

            else
            {
              sub_18E1C77B0();
              v27 = a1 == 0xD00000000000003BLL && v26 == a2;
              if (v27 || (sub_18E1C51D4(0xD00000000000003BLL, v26) & 1) != 0)
              {
                v28 = sub_18E1C6D44();
                static Catalog.Resource.LLM.ServerConfiguration.ServerDescribeYourEdit(variant:)(v28);
              }

              else
              {
                sub_18E1C77B0();
                v30 = a1 == 0xD00000000000003ELL && v29 == a2;
                if (v30 || (sub_18E1C51D4(0xD00000000000003ELL, v29) & 1) != 0)
                {
                  v31 = sub_18E1C6D44();
                  static Catalog.Resource.LLM.ServerConfiguration.ServerFitnessWorkoutVoice(variant:)(v31);
                }

                else
                {
                  sub_18E1C77B0();
                  sub_18E1C54C8();
                  v33 = v7 && v32 == a2;
                  if (v33 || (sub_18E1C51D4(v206, v32) & 1) != 0)
                  {
                    v34 = sub_18E1C6D44();
                    static Catalog.Resource.LLM.ServerConfiguration.ServerFriendlyTone(variant:)(v34);
                  }

                  else
                  {
                    sub_18E1C77B0();
                    v36 = a1 == 0xD000000000000041 && v35 == a2;
                    if (v36 || (sub_18E1C51D4(0xD000000000000041, v35) & 1) != 0)
                    {
                      v37 = sub_18E1C6D44();
                      static Catalog.Resource.LLM.ServerConfiguration.JournalFollowUpPrompts(variant:)(v37);
                    }

                    else
                    {
                      sub_18E1C83D8();
                      v39 = v7 && v38 == a2;
                      if (v39 || (sub_18E1C51D4(0xD000000000000036, v38) & 1) != 0)
                      {
                        v40 = sub_18E1C6D44();
                        static Catalog.Resource.LLM.ServerConfiguration.LWPlannerV1(variant:)(v40);
                      }

                      else
                      {
                        sub_18E1C83D8();
                        v42 = v7 && v41 == a2;
                        if (v42 || (sub_18E1C51D4(0xD000000000000036, v41) & 1) != 0)
                        {
                          v43 = sub_18E1C6D44();
                          static Catalog.Resource.LLM.ServerConfiguration.ServerMagicRewrite(variant:)(v43);
                        }

                        else
                        {
                          sub_18E1C77B0();
                          v45 = a1 == 0xD000000000000043 && v44 == a2;
                          if (v45 || (sub_18E1C51D4(0xD000000000000043, v44) & 1) != 0)
                          {
                            v46 = sub_18E1C6D44();
                            static Catalog.Resource.LLM.ServerConfiguration.ServerMailReplyLongFormBasic(variant:)(v46);
                          }

                          else
                          {
                            sub_18E1C77B0();
                            v48 = a1 == 0xD000000000000045 && v47 == a2;
                            if (v48 || (sub_18E1C51D4(0xD000000000000045, v47) & 1) != 0)
                            {
                              v49 = sub_18E1C6D44();
                              static Catalog.Resource.LLM.ServerConfiguration.ServerMailReplyLongFormRewrite(variant:)(v49);
                            }

                            else
                            {
                              sub_18E1C83D8();
                              v51 = v7 && v50 == a2;
                              if (v51 || (sub_18E1C51D4(0xD000000000000036, v50) & 1) != 0)
                              {
                                v52 = sub_18E1C6D44();
                                static Catalog.Resource.LLM.ServerConfiguration.ServerMailReplyQA(variant:)(v52);
                              }

                              else
                              {
                                sub_18E1C77B0();
                                v54 = a1 == 0xD00000000000003ELL && v53 == a2;
                                if (v54 || (sub_18E1C51D4(0xD00000000000003ELL, v53) & 1) != 0)
                                {
                                  v55 = sub_18E1C6D44();
                                  static Catalog.Resource.LLM.ServerConfiguration.MessagesUserRequest(variant:)(v55);
                                }

                                else
                                {
                                  sub_18E1C77B0();
                                  v57 = a1 == 0xD000000000000031 && v56 == a2;
                                  if (v57 || (sub_18E1C51D4(0xD000000000000031, v56) & 1) != 0)
                                  {
                                    v58 = sub_18E1C6D44();
                                    static Catalog.Resource.LLM.ServerConfiguration.MMGuardSafetyGuardrailServer(variant:)(v58);
                                  }

                                  else
                                  {
                                    sub_18E1C77B0();
                                    v60 = a1 == 0xD00000000000003FLL && v59 == a2;
                                    if (v60 || (sub_18E1C51D4(0xD00000000000003FLL, v59) & 1) != 0)
                                    {
                                      v61 = sub_18E1C6D44();
                                      static Catalog.Resource.LLM.ServerConfiguration.OpenEndedInteraction(variant:)(v61);
                                    }

                                    else
                                    {
                                      sub_18E1C77B0();
                                      v63 = a1 == 0xD00000000000003ELL && v62 == a2;
                                      if (v63 || (sub_18E1C51D4(0xD00000000000003ELL, v62) & 1) != 0)
                                      {
                                        v64 = sub_18E1C6D44();
                                        static Catalog.Resource.LLM.ServerConfiguration.OpenEndedReflection(variant:)(v64);
                                      }

                                      else
                                      {
                                        sub_18E1C77B0();
                                        v66 = a1 == 0xD00000000000003ALL && v65 == a2;
                                        if (v66 || (sub_18E1C51D4(0xD00000000000003ALL, v65) & 1) != 0)
                                        {
                                          v67 = sub_18E1C6D44();
                                          static Catalog.Resource.LLM.ServerConfiguration.OpenEndedSchema(variant:)(v67);
                                        }

                                        else
                                        {
                                          sub_18E1C77B0();
                                          v69 = a1 == 0xD000000000000038 && v68 == a2;
                                          if (v69 || (sub_18E1C51D4(0xD000000000000038, v68) & 1) != 0)
                                          {
                                            v70 = sub_18E1C6D44();
                                            static Catalog.Resource.LLM.ServerConfiguration.OpenEndedTone(variant:)(v70);
                                          }

                                          else
                                          {
                                            sub_18E1C77B0();
                                            v72 = a1 == 0xD00000000000003DLL && v71 == a2;
                                            if (v72 || (sub_18E1C51D4(0xD00000000000003DLL, v71) & 1) != 0)
                                            {
                                              v73 = sub_18E1C6D44();
                                              static Catalog.Resource.LLM.ServerConfiguration.OpenEndedToneBase(variant:)(v73);
                                            }

                                            else
                                            {
                                              sub_18E1C77B0();
                                              v75 = a1 == 0xD000000000000047 && v74 == a2;
                                              if (v75 || (sub_18E1C51D4(0xD000000000000047, v74) & 1) != 0)
                                              {
                                                v76 = sub_18E1C6D44();
                                                static Catalog.Resource.LLM.ServerConfiguration.OpenEndedToneQueryResponse(variant:)(v76);
                                              }

                                              else
                                              {
                                                sub_18E1C77B0();
                                                v78 = a1 == 0xD00000000000004ALL && v77 == a2;
                                                if (v78 || (sub_18E1C51D4(0xD00000000000004ALL, v77) & 1) != 0)
                                                {
                                                  v79 = sub_18E1C6D44();
                                                  static Catalog.Resource.LLM.ServerConfiguration.OpenEndedToneQueryResponseV2(variant:)(v79);
                                                }

                                                else
                                                {
                                                  sub_18E1C77B0();
                                                  v81 = a1 == 0xD000000000000041 && v80 == a2;
                                                  if (v81 || (sub_18E1C51D4(0xD000000000000041, v80) & 1) != 0)
                                                  {
                                                    v82 = sub_18E1C6D44();
                                                    static Catalog.Resource.LLM.ServerConfiguration.ServerPersonalizedSmartReply(variant:)(v82);
                                                  }

                                                  else
                                                  {
                                                    sub_18E1C83D8();
                                                    v84 = v7 && v83 == a2;
                                                    if (v84 || (sub_18E1C51D4(0xD000000000000036, v83) & 1) != 0)
                                                    {
                                                      v85 = sub_18E1C6D44();
                                                      static Catalog.Resource.LLM.ServerConfiguration.PhotosCommon(variant:)(v85);
                                                    }

                                                    else
                                                    {
                                                      sub_18E1C77B0();
                                                      v87 = a1 == 0xD000000000000047 && v86 == a2;
                                                      if (v87 || (sub_18E1C51D4(0xD000000000000047, v86) & 1) != 0)
                                                      {
                                                        v88 = sub_18E1C6D44();
                                                        static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationAssetCuration(variant:)(v88);
                                                      }

                                                      else
                                                      {
                                                        sub_18E1C77B0();
                                                        v90 = a1 == 0xD00000000000004ALL && v89 == a2;
                                                        if (v90 || (sub_18E1C51D4(0xD00000000000004ALL, v89) & 1) != 0)
                                                        {
                                                          v91 = sub_18E1C6D44();
                                                          static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationAssetCurationV2(variant:)(v91);
                                                        }

                                                        else
                                                        {
                                                          sub_18E1C77B0();
                                                          v93 = a1 == 0xD000000000000046 && v92 == a2;
                                                          if (v93 || (sub_18E1C51D4(0xD000000000000046, v92) & 1) != 0)
                                                          {
                                                            v94 = sub_18E1C6D44();
                                                            static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationGlobalTraits(variant:)(v94);
                                                          }

                                                          else
                                                          {
                                                            sub_18E1C77B0();
                                                            sub_18E1C54C8();
                                                            v96 = v7 && v95 == a2;
                                                            if (v96 || (sub_18E1C51D4(v206, v95) & 1) != 0)
                                                            {
                                                              v97 = sub_18E1C6D44();
                                                              static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationGlobalTraitsV2(variant:)(v97);
                                                            }

                                                            else
                                                            {
                                                              sub_18E1C83D8();
                                                              v99 = v7 && v98 == a2;
                                                              if (v99 || (sub_18E1C51D4(0xD000000000000049, v98) & 1) != 0)
                                                              {
                                                                v100 = sub_18E1C6D44();
                                                                static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationGlobalTraitsV3(variant:)(v100);
                                                              }

                                                              else
                                                              {
                                                                sub_18E1C77B0();
                                                                v102 = a1 == 0xD00000000000004CLL && v101 == a2;
                                                                if (v102 || (sub_18E1C51D4(0xD00000000000004CLL, v101) & 1) != 0)
                                                                {
                                                                  v103 = sub_18E1C6D44();
                                                                  static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationQueryUnderstanding(variant:)(v103);
                                                                }

                                                                else
                                                                {
                                                                  sub_18E1C77B0();
                                                                  sub_18E1C54C8();
                                                                  v105 = v7 && v104 == a2;
                                                                  if (v105 || (sub_18E1C51D4(v206, v104) & 1) != 0)
                                                                  {
                                                                    v106 = sub_18E1C6D44();
                                                                    static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationQueryUnderstandingV2(variant:)(v106);
                                                                  }

                                                                  else
                                                                  {
                                                                    sub_18E1C83D8();
                                                                    v108 = v7 && v107 == a2;
                                                                    if (v108 || (sub_18E1C51D4(0xD00000000000004FLL, v107) & 1) != 0)
                                                                    {
                                                                      v109 = sub_18E1C6D44();
                                                                      static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationQueryUnderstandingV3(variant:)(v109);
                                                                    }

                                                                    else
                                                                    {
                                                                      sub_18E1C77B0();
                                                                      sub_18E1C54C8();
                                                                      v111 = v7 && v110 == a2;
                                                                      if (v111 || (sub_18E1C51D4(v206, v110) & 1) != 0)
                                                                      {
                                                                        v112 = sub_18E1C6D44();
                                                                        static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationStoryteller(variant:)(v112);
                                                                      }

                                                                      else
                                                                      {
                                                                        sub_18E1C77B0();
                                                                        v114 = a1 == 0xD000000000000047 && v113 == a2;
                                                                        if (v114 || (sub_18E1C51D4(0xD000000000000047, v113) & 1) != 0)
                                                                        {
                                                                          v115 = sub_18E1C6D44();
                                                                          static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationStorytellerV2(variant:)(v115);
                                                                        }

                                                                        else
                                                                        {
                                                                          sub_18E1C77B0();
                                                                          v117 = a1 == 0xD000000000000030 && v116 == a2;
                                                                          if (v117 || (sub_18E1C51D4(0xD000000000000030, v116) & 1) != 0)
                                                                          {
                                                                            v118 = sub_18E1C6D44();
                                                                            static Catalog.Resource.LLM.ServerConfiguration.Planner(variant:)(v118);
                                                                          }

                                                                          else
                                                                          {
                                                                            sub_18E1C77B0();
                                                                            v121 = a1 == 0xD000000000000033 && v120 == a2;
                                                                            if (v121 || (sub_18E1C8078(v119, v120) & 1) != 0)
                                                                            {
                                                                              v122 = sub_18E1C6D44();
                                                                              static Catalog.Resource.LLM.ServerConfiguration.PlannerV2(variant:)(v122);
                                                                            }

                                                                            else
                                                                            {
                                                                              sub_18E1C77B0();
                                                                              v125 = a1 == 0xD000000000000033 && v124 == a2;
                                                                              if (v125 || (sub_18E1C8078(v123, v124) & 1) != 0)
                                                                              {
                                                                                v126 = sub_18E1C6D44();
                                                                                static Catalog.Resource.LLM.ServerConfiguration.PlannerV3(variant:)(v126);
                                                                              }

                                                                              else
                                                                              {
                                                                                sub_18E1C77B0();
                                                                                v129 = a1 == 0xD000000000000033 && v128 == a2;
                                                                                if (v129 || (sub_18E1C8078(v127, v128) & 1) != 0)
                                                                                {
                                                                                  v130 = sub_18E1C6D44();
                                                                                  static Catalog.Resource.LLM.ServerConfiguration.PlannerV7(variant:)(v130);
                                                                                }

                                                                                else
                                                                                {
                                                                                  sub_18E1C77B0();
                                                                                  v133 = a1 == 0xD000000000000033 && v132 == a2;
                                                                                  if (v133 || (sub_18E1C8078(v131, v132) & 1) != 0)
                                                                                  {
                                                                                    v134 = sub_18E1C6D44();
                                                                                    static Catalog.Resource.LLM.ServerConfiguration.PlannerV8(variant:)(v134);
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    sub_18E1C77B0();
                                                                                    v137 = a1 == 0xD000000000000033 && v136 == a2;
                                                                                    if (v137 || (sub_18E1C8078(v135, v136) & 1) != 0)
                                                                                    {
                                                                                      v138 = sub_18E1C6D44();
                                                                                      static Catalog.Resource.LLM.ServerConfiguration.PlannerV9(variant:)(v138);
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      sub_18E1C77B0();
                                                                                      v140 = a1 == 0xD000000000000039 && v139 == a2;
                                                                                      if (v140 || (sub_18E1C51D4(0xD000000000000039, v139) & 1) != 0)
                                                                                      {
                                                                                        v141 = sub_18E1C6D44();
                                                                                        static Catalog.Resource.LLM.ServerConfiguration.ServerPQAVerification(variant:)(v141);
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        sub_18E1C77B0();
                                                                                        v143 = a1 == 0xD00000000000003ALL && v142 == a2;
                                                                                        if (v143 || (sub_18E1C51D4(0xD00000000000003ALL, v142) & 1) != 0)
                                                                                        {
                                                                                          v144 = sub_18E1C6D44();
                                                                                          static Catalog.Resource.LLM.ServerConfiguration.ServerProfessionalTone(variant:)(v144);
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          sub_18E1C77B0();
                                                                                          v146 = a1 == 0xD00000000000003CLL && v145 == a2;
                                                                                          if (v146 || (sub_18E1C51D4(0xD00000000000003CLL, v145) & 1) != 0)
                                                                                          {
                                                                                            v147 = sub_18E1C6D44();
                                                                                            static Catalog.Resource.LLM.ServerConfiguration.ServerProofreadingReview(variant:)(v147);
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            sub_18E1C77B0();
                                                                                            v149 = a1 == 0xD000000000000048 && v148 == a2;
                                                                                            if (v149 || (sub_18E1C51D4(0xD000000000000048, v148) & 1) != 0)
                                                                                            {
                                                                                              v150 = sub_18E1C6D44();
                                                                                              static Catalog.Resource.LLM.ServerConfiguration.RemindersAutoCategorizeList(variant:)(v150);
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              sub_18E1C77B0();
                                                                                              v152 = a1 == 0xD00000000000003CLL && v151 == a2;
                                                                                              if (v152 || (sub_18E1C51D4(0xD00000000000003CLL, v151) & 1) != 0)
                                                                                              {
                                                                                                v153 = sub_18E1C6D44();
                                                                                                static Catalog.Resource.LLM.ServerConfiguration.ResponseGeneration(variant:)(v153);
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                sub_18E1C77B0();
                                                                                                sub_18E1C5E1C();
                                                                                                v155 = v7 && v154 == a2;
                                                                                                if (v155 || (sub_18E1C51D4(0xD00000000000003FLL, v154) & 1) != 0)
                                                                                                {
                                                                                                  v156 = sub_18E1C6D44();
                                                                                                  static Catalog.Resource.LLM.ServerConfiguration.ResponseGenerationV2(variant:)(v156);
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  sub_18E1C77B0();
                                                                                                  sub_18E1C5E1C();
                                                                                                  v158 = v7 && v157 == a2;
                                                                                                  if (v158 || (sub_18E1C51D4(0xD00000000000003FLL, v157) & 1) != 0)
                                                                                                  {
                                                                                                    v159 = sub_18E1C6D44();
                                                                                                    static Catalog.Resource.LLM.ServerConfiguration.ResponseGenerationV3(variant:)(v159);
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    sub_18E1C77B0();
                                                                                                    sub_18E1C5E1C();
                                                                                                    v161 = v7 && v160 == a2;
                                                                                                    if (v161 || (sub_18E1C51D4(0xD00000000000003FLL, v160) & 1) != 0)
                                                                                                    {
                                                                                                      v162 = sub_18E1C6D44();
                                                                                                      static Catalog.Resource.LLM.ServerConfiguration.ResponseGenerationV7(variant:)(v162);
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      sub_18E1C77B0();
                                                                                                      sub_18E1C5E1C();
                                                                                                      v164 = v7 && v163 == a2;
                                                                                                      if (v164 || (sub_18E1C51D4(0xD00000000000003FLL, v163) & 1) != 0)
                                                                                                      {
                                                                                                        v165 = sub_18E1C6D44();
                                                                                                        static Catalog.Resource.LLM.ServerConfiguration.ResponseGenerationV8(variant:)(v165);
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        sub_18E1C77B0();
                                                                                                        v167 = a1 == 0xD000000000000043 && v166 == a2;
                                                                                                        if (v167 || (sub_18E1C51D4(0xD000000000000043, v166) & 1) != 0)
                                                                                                        {
                                                                                                          v168 = sub_18E1C6D44();
                                                                                                          static Catalog.Resource.LLM.ServerConfiguration.SearchQueryUnderstandingServer(variant:)(v168);
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          sub_18E1C77B0();
                                                                                                          v170 = a1 == 0xD000000000000041 && v169 == a2;
                                                                                                          if (v170 || (sub_18E1C51D4(0xD000000000000041, v169) & 1) != 0)
                                                                                                          {
                                                                                                            v171 = sub_18E1C6D44();
                                                                                                            static Catalog.Resource.LLM.ServerConfiguration.ShortcutsAskAFMAction(variant:)(v171);
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            sub_18E1C83D8();
                                                                                                            v173 = v7 && v172 == a2;
                                                                                                            if (v173 || (sub_18E1C51D4(0xD000000000000044, v172) & 1) != 0)
                                                                                                            {
                                                                                                              v174 = sub_18E1C6D44();
                                                                                                              static Catalog.Resource.LLM.ServerConfiguration.ShortcutsAskAFMActionV2(variant:)(v174);
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              sub_18E1C77B0();
                                                                                                              v176 = a1 == 0xD00000000000003ELL && v175 == a2;
                                                                                                              if (v176 || (sub_18E1C51D4(0xD00000000000003ELL, v175) & 1) != 0)
                                                                                                              {
                                                                                                                v177 = sub_18E1C6D44();
                                                                                                                static Catalog.Resource.LLM.ServerConfiguration.ServerStructuredExtraction(variant:)(v177);
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                sub_18E1C77B0();
                                                                                                                v179 = a1 == 0xD000000000000037 && v178 == a2;
                                                                                                                if (v179 || (sub_18E1C51D4(0xD000000000000037, v178) & 1) != 0)
                                                                                                                {
                                                                                                                  v180 = sub_18E1C6D44();
                                                                                                                  static Catalog.Resource.LLM.ServerConfiguration.STXMultimodal(variant:)(v180);
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  sub_18E1C77B0();
                                                                                                                  v182 = a1 == 0xD000000000000042 && v181 == a2;
                                                                                                                  if (v182 || (sub_18E1C51D4(0xD000000000000042, v181) & 1) != 0)
                                                                                                                  {
                                                                                                                    v183 = sub_18E1C6D44();
                                                                                                                    static Catalog.Resource.LLM.ServerConfiguration.SuperAutofillMultimodal(variant:)(v183);
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    sub_18E1C77B0();
                                                                                                                    v185 = a1 == 0xD000000000000039 && v184 == a2;
                                                                                                                    if (v185 || (sub_18E1C51D4(0xD000000000000039, v184) & 1) != 0)
                                                                                                                    {
                                                                                                                      v186 = sub_18E1C6D44();
                                                                                                                      static Catalog.Resource.LLM.ServerConfiguration.ServerTablesTransform(variant:)(v186);
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      sub_18E1C77B0();
                                                                                                                      v188 = a1 == 0xD00000000000003CLL && v187 == a2;
                                                                                                                      if (v188 || (sub_18E1C51D4(0xD00000000000003CLL, v187) & 1) != 0)
                                                                                                                      {
                                                                                                                        v189 = sub_18E1C6D44();
                                                                                                                        static Catalog.Resource.LLM.ServerConfiguration.ServerTakeawaysTransform(variant:)(v189);
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        sub_18E1C77B0();
                                                                                                                        v191 = a1 == 0xD000000000000038 && v190 == a2;
                                                                                                                        if (v191 || (sub_18E1C51D4(0xD000000000000038, v190) & 1) != 0)
                                                                                                                        {
                                                                                                                          v192 = sub_18E1C6D44();
                                                                                                                          static Catalog.Resource.LLM.ServerConfiguration.SummarizationTextSummarizer(variant:)(v192);
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          sub_18E1C77B0();
                                                                                                                          v194 = a1 == 0xD00000000000003CLL && v193 == a2;
                                                                                                                          if (v194 || (sub_18E1C51D4(0xD00000000000003CLL, v193) & 1) != 0)
                                                                                                                          {
                                                                                                                            v195 = sub_18E1C6D44();
                                                                                                                            static Catalog.Resource.LLM.ServerConfiguration.VisualIntelligence(variant:)(v195);
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            sub_18E1C77B0();
                                                                                                                            v197 = a1 == 0xD000000000000038 && v196 == a2;
                                                                                                                            if (v197 || (sub_18E1C51D4(0xD000000000000038, v196) & 1) != 0)
                                                                                                                            {
                                                                                                                              v198 = sub_18E1C6D44();
                                                                                                                              static Catalog.Resource.LLM.ServerConfiguration.FinancialInsights(variant:)(v198);
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              sub_18E1C77B0();
                                                                                                                              v201 = a1 == 0xD000000000000033 && v200 == a2;
                                                                                                                              if (v201 || (sub_18E1C8078(v199, v200) & 1) != 0)
                                                                                                                              {
                                                                                                                                v202 = sub_18E1C6D44();
                                                                                                                                static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationBase(variant:)(v202);
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                sub_18E1C77B0();
                                                                                                                                v204 = a1 == 0xD00000000000003DLL && v203 == a2;
                                                                                                                                if (v204 || (sub_18E1C51D4(0xD00000000000003DLL, v203) & 1) != 0)
                                                                                                                                {
                                                                                                                                  v205 = sub_18E1C6D44();
                                                                                                                                  static Catalog.Resource.LLM.ServerConfiguration.SummarizationTextSummarizerAjaxBase(variant:)(v205);
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  *(a3 + 32) = 0;
                                                                                                                                  result = 0.0;
                                                                                                                                  *a3 = 0u;
                                                                                                                                  *(a3 + 16) = 0u;
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
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

double sub_18E3FAAFC@<D0>(_OWORD *a1@<X8>)
{
  sub_18E44E24C();
  swift_allocObject();
  sub_18E44E23C();
  sub_18E3FB460();
  sub_18E44E22C();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

id DebugInformationWrapper.__allocating_init(info:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  sub_18E44E27C();
  swift_allocObject();
  sub_18E44E26C();
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v16 = v5;
  sub_18E3FADFC();
  v6 = sub_18E44E25C();
  v8 = v7;

  sub_18E30A338(v2);

  v9 = objc_allocWithZone(v1);
  v10 = &v9[OBJC_IVAR____TtC12ModelCatalog23DebugInformationWrapper_data];
  *v10 = v6;
  v10[1] = v8;
  v12.receiver = v9;
  v12.super_class = v1;
  return objc_msgSendSuper2(&v12, sel_init);
}

unint64_t sub_18E3FADFC()
{
  result = qword_1EABDFB88;
  if (!qword_1EABDFB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFB88);
  }

  return result;
}

uint64_t static DebugInformationWrapper.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EABE9100 = a1;
  return result;
}

uint64_t sub_18E3FAF6C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EABE9100;
  return result;
}

uint64_t sub_18E3FAFB8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EABE9100 = v1;
  return result;
}

Swift::Void __swiftcall DebugInformationWrapper.encode(with:)(NSCoder with)
{
  sub_18E25BD94();
  v3 = v1 + OBJC_IVAR____TtC12ModelCatalog23DebugInformationWrapper_data;
  v4 = *(v1 + OBJC_IVAR____TtC12ModelCatalog23DebugInformationWrapper_data);
  v5 = *(v3 + 8);
  sub_18E2523A0(v4, v5);
  v6 = sub_18E25BDDC(v4, v5);
  v7 = sub_18E44EA8C();
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
}

id DebugInformationWrapper.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_18E25BD94();
  v3 = sub_18E44EEBC();
  if (v3)
  {
    v4 = v3;
    v5 = sub_18E305458(v4);
    v7 = v6;
    v8 = objc_allocWithZone(ObjectType);
    v9 = &v8[OBJC_IVAR____TtC12ModelCatalog23DebugInformationWrapper_data];
    *v9 = v5;
    v9[1] = v7;
    v14.receiver = v8;
    v14.super_class = ObjectType;
    v10 = objc_msgSendSuper2(&v14, sel_init);

    v11 = swift_getObjectType();
    sub_18E1C6D58(v11);
  }

  else
  {

    v12 = swift_getObjectType();
    sub_18E1C6D58(v12);
    return 0;
  }

  return v10;
}

void *DebugInformationWrapper.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = v1 + OBJC_IVAR____TtC12ModelCatalog23DebugInformationWrapper_data;
  v5 = *(v1 + OBJC_IVAR____TtC12ModelCatalog23DebugInformationWrapper_data);
  v6 = *(v4 + 8);
  v7 = objc_allocWithZone(ObjectType);
  v8 = &v7[OBJC_IVAR____TtC12ModelCatalog23DebugInformationWrapper_data];
  *v8 = v5;
  v8[1] = v6;
  sub_18E2523A0(v5, v6);
  v10.receiver = v7;
  v10.super_class = ObjectType;
  result = objc_msgSendSuper2(&v10, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

id DebugInformationWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DebugInformationWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_18E3FB460()
{
  result = qword_1EABDFB78;
  if (!qword_1EABDFB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFB78);
  }

  return result;
}

uint64_t GenerativePlaygroundFFKey.hashValue.getter()
{
  sub_18E44F48C();
  MEMORY[0x193ACCC20](0);
  return sub_18E44F4CC();
}

void *sub_18E3FB5A8()
{
  result = sub_18E44E9AC();
  off_1EABE0C80 = result;
  return result;
}

uint64_t featureFlagsKeys.getter()
{
  if (qword_1EABE0C78 != -1)
  {
    swift_once();
  }
}

unint64_t sub_18E3FB648()
{
  result = qword_1EABE9130;
  if (!qword_1EABE9130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE9130);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GenerativePlaygroundFFKey(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t CatalogClientProtocol.queryResource(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CatalogIndex(0);
  if (qword_1ED6A8360 != -1)
  {
    swift_once();
  }

  result = static CatalogIndex.resolveResourceQueryURI(uri:variantResolverMappings:)();
  if (!v3)
  {
    (*(a3 + 8))(result);
  }

  return result;
}

void CatalogClientProtocol.queryResource(with:)()
{
  sub_18E1C570C();
  sub_18E44E54C();
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v1);
  sub_18E1C58B4();
  ResourceQuery.toURI()();
  if (!v0)
  {
    v2 = sub_18E1D61F8();
    v3(v2);
    v4 = sub_18E1C8D64();
    v5(v4);
  }
}

uint64_t sub_18E3FB910()
{
  sub_18E1C52F0();
  v0 = swift_task_alloc();
  v1 = sub_18E1C2960(v0);
  *v1 = v2;
  v3 = sub_18E1C69A4(v1);

  return CatalogClientProtocol.availableUseCases(useCaseIdentifiers:includeAssetsInformation:)(v3);
}

uint64_t sub_18E3FB9C0()
{
  sub_18E1C52F0();
  v0 = swift_task_alloc();
  v1 = sub_18E1C5EA8(v0);
  *v1 = v2;
  sub_18E1C5950(v1);

  return CatalogClientProtocol.generativeExperiencesEssentialResourcesReady()();
}

uint64_t sub_18E3FBA70()
{
  sub_18E1C52F0();
  v0 = swift_task_alloc();
  v1 = sub_18E1C5EA8(v0);
  *v1 = v2;
  sub_18E1C5950(v1);

  return CatalogClientProtocol.generativeExperiencesEssentialResourcesReady()();
}

uint64_t sub_18E3FBAF0()
{
  sub_18E1C52F0();
  v0 = swift_task_alloc();
  v1 = sub_18E1C5EA8(v0);
  *v1 = v2;
  sub_18E1C5950(v1);

  return CatalogClientProtocol.acquireCoherenceToken(identifiers:)();
}

uint64_t sub_18E3FBB80()
{
  sub_18E1C52F0();
  sub_18E3FBC3C();
  v1 = sub_18E44E9AC();
  v2 = type metadata accessor for AcquireCoherenceTokenResponse();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC12ModelCatalog29AcquireCoherenceTokenResponse_tokens] = v1;
  v0[1].receiver = v3;
  v0[1].super_class = v2;
  objc_msgSendSuper2(v0 + 1, sel_init);
  sub_18E1C6500();

  return v4();
}

unint64_t sub_18E3FBC3C()
{
  result = qword_1ED6A80D0;
  if (!qword_1ED6A80D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED6A80D0);
  }

  return result;
}

uint64_t sub_18E3FBC80()
{
  sub_18E1C52F0();
  v0 = swift_task_alloc();
  v1 = sub_18E1C2960(v0);
  *v1 = v2;
  v3 = sub_18E1C69A4(v1);

  return CatalogClientProtocol.supportedLanguagesAndRegions(resourceBundleQuery:)(v3);
}

uint64_t sub_18E3FBD18()
{
  v0 = swift_task_alloc();
  v1 = sub_18E1C2960(v0);
  *v1 = v2;
  sub_18E1C8F08(v1);

  return CatalogClientProtocol.availableUseCases()();
}

uint64_t CatalogClientProtocol.availableUseCases()()
{
  sub_18E1CF270();
  sub_18E1CAF5C();
  sub_18E1C809C(v0, v1, v2);
  sub_18E1C5E28();
  v3 = swift_task_alloc();
  v4 = sub_18E1C2960(v3);
  *v4 = v5;
  v4[1] = sub_18E3FD860;
  sub_18E1C2A80();

  return v11(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_18E3FBEC0()
{
  sub_18E1C52F0();
  v0 = swift_task_alloc();
  v1 = sub_18E1C2960(v0);
  *v1 = v2;
  v3 = sub_18E1C69A4(v1);

  return CatalogClientProtocol.availableUseCases(useCaseIdentifiers:includeAssetsInformation:)(v3);
}

uint64_t sub_18E3FBF48()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v1 = *v0;
  sub_18E1C52E0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t CatalogClientProtocol.requestDownloadForSettings()()
{
  sub_18E2706EC(&qword_1EABE1028, &unk_18E4E2B80);
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - v1, *MEMORY[0x1E69E8650]);
  return sub_18E44ED8C();
}

uint64_t CatalogClientProtocol.requestDownloadForUseCases(useCases:)()
{
  sub_18E2706EC(&qword_1EABE1030, &qword_18E49DB18);
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - v1, *MEMORY[0x1E69E8650]);
  return sub_18E44ED8C();
}

uint64_t sub_18E3FC274()
{
  sub_18E1C52F0();
  v0 = swift_task_alloc();
  v1 = sub_18E1C5EA8(v0);
  *v1 = v2;
  sub_18E1C5950(v1);

  return CatalogClientProtocol.donateSafetyFailure(useCaseIdentifier:userIdentifier:)();
}

uint64_t sub_18E3FC2F8()
{
  sub_18E1C52F0();
  v0 = swift_task_alloc();
  v1 = sub_18E1C5EA8(v0);
  *v1 = v2;
  sub_18E1C5950(v1);

  return CatalogClientProtocol.donateSafetyFailure(safetyFailure:)();
}

uint64_t sub_18E3FC37C()
{
  sub_18E1C52F0();
  v0 = swift_task_alloc();
  v1 = sub_18E1C5EA8(v0);
  *v1 = v2;
  sub_18E1C5950(v1);

  return CatalogClientProtocol.donateSafetyFailure(safetyFailure:)();
}

uint64_t sub_18E3FC3FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18E2891D0;

  return CatalogClientProtocol.generativeExperiencesEssentialResourcesReady()();
}

uint64_t sub_18E3FC488()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18E2891D0;

  return CatalogClientProtocol.generativeExperiencesEssentialResourcesReady()();
}

uint64_t sub_18E3FC514()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18E2891D4;

  return CatalogClientProtocol.useCaseResourceAvailability(by:)();
}

uint64_t sub_18E3FC5B0()
{
  sub_18E1C52F0();
  type metadata accessor for UseCaseAvailabilityInfo();
  sub_18E2871E8();
  sub_18E44E9AC();
  sub_18E1C6500();

  return v0();
}

uint64_t sub_18E3FC688()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18E2891D4;

  return CatalogClientProtocol.acquireCoherenceToken(identifiers:)();
}

uint64_t sub_18E3FC714(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18E3FD860;

  return CatalogClientProtocol.supportedLanguagesAndRegions(resourceBundleQuery:)(a1);
}

uint64_t sub_18E3FC7AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18E3FD860;

  return CatalogClientProtocol.availableUseCases()();
}

uint64_t sub_18E3FC85C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18E3FD860;

  return CatalogClientProtocol.availableUseCases(useCaseIdentifiers:includeAssetsInformation:)(a1);
}

uint64_t sub_18E3FC918()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18E3FD860;

  return CatalogClientProtocol.donateSafetyFailure(safetyFailure:)();
}

uint64_t sub_18E3FC9A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18E3FD860;

  return CatalogClientProtocol.donateSafetyFailure(safetyFailure:)();
}

uint64_t dispatch thunk of CatalogClientProtocol.queryResource(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 40))(a1, a2);
}

{
  return (*(a3 + 56))(a1, a2);
}

uint64_t dispatch thunk of CatalogClientProtocol.generativeExperiencesEssentialResourcesReady()()
{
  sub_18E1CAF5C();
  sub_18E1CA244(v0, v1);
  sub_18E1C64A0();
  v2 = swift_task_alloc();
  v3 = sub_18E1C5EA8(v2);
  *v3 = v4;
  v5 = sub_18E1C8624(v3);

  return v6(v5);
}

uint64_t dispatch thunk of CatalogClientProtocol.enoughStorageForGenerativeExperiencesEssentialResources()()
{
  sub_18E1CAF5C();
  sub_18E1CA244(v0, v1);
  sub_18E1C64A0();
  v2 = swift_task_alloc();
  v3 = sub_18E1C5EA8(v2);
  *v3 = v4;
  v5 = sub_18E1C8624(v3);

  return v6(v5);
}

uint64_t dispatch thunk of CatalogClientProtocol.useCaseResourceAvailability(by:)()
{
  sub_18E1CF270();
  sub_18E1CAF5C();
  sub_18E1C809C(v0, v1, v2);
  sub_18E1C5E28();
  v3 = swift_task_alloc();
  v4 = sub_18E1C5EA8(v3);
  *v4 = v5;
  sub_18E1C51F0(v4);
  sub_18E1C2A80();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t dispatch thunk of CatalogClientProtocol.acquireCoherenceToken(identifiers:)()
{
  sub_18E1CF270();
  sub_18E1CAF5C();
  sub_18E1C809C(v0, v1, v2);
  sub_18E1C5E28();
  v3 = swift_task_alloc();
  v4 = sub_18E1C5EA8(v3);
  *v4 = v5;
  sub_18E1C51F0(v4);
  sub_18E1C2A80();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t dispatch thunk of CatalogClientProtocol.supportedLanguagesAndRegions(resourceBundleQuery:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_18E1C64A0();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = sub_18E1C2960(v9);
  *v10 = v11;
  v10[1] = sub_18E3FD860;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CatalogClientProtocol.availableUseCases()()
{
  sub_18E1CF270();
  sub_18E1CAF5C();
  sub_18E1C809C(v0, v1, v2);
  sub_18E1C5E28();
  v3 = swift_task_alloc();
  v4 = sub_18E1C2960(v3);
  *v4 = v5;
  sub_18E1C8F08(v4);
  sub_18E1C2A80();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t dispatch thunk of CatalogClientProtocol.availableUseCases(useCaseIdentifiers:includeAssetsInformation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_18E1C5E28();
  v15 = (v10 + *v10);
  v11 = swift_task_alloc();
  v12 = sub_18E1C2960(v11);
  *v12 = v13;
  v12[1] = sub_18E3FBF48;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of CatalogClientProtocol.regulatoryDomains()()
{
  sub_18E1CAF5C();
  sub_18E1CA244(v0, v1);
  sub_18E1C64A0();
  v2 = swift_task_alloc();
  v3 = sub_18E1C5EA8(v2);
  *v3 = v4;
  v5 = sub_18E1C8624(v3);

  return v6(v5);
}

uint64_t dispatch thunk of CatalogClientProtocol.donateSafetyFailure(useCaseIdentifier:userIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_18E1C64A0();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = sub_18E1C5EA8(v9);
  *v10 = v11;
  sub_18E1C5950(v10);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CatalogClientProtocol.donateSafetyFailure(safetyFailure:)()
{
  sub_18E1CF270();
  sub_18E1CAF5C();
  sub_18E1C809C(v0, v1, v2);
  sub_18E1C5E28();
  v3 = swift_task_alloc();
  v4 = sub_18E1C5EA8(v3);
  *v4 = v5;
  sub_18E1C51F0(v4);
  sub_18E1C2A80();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t dispatch thunk of CatalogClientProtocol.donateGenerativeGuardrailResult(guardrailResultInfo:)()
{
  sub_18E1CF270();
  sub_18E1CAF5C();
  sub_18E1C809C(v0, v1, v2);
  sub_18E1C5E28();
  v3 = swift_task_alloc();
  v4 = sub_18E1C5EA8(v3);
  *v4 = v5;
  sub_18E1C51F0(v4);
  sub_18E1C2A80();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t static Obfuscation.readObfuscatedData(fileURL:fallback:)(uint64_t a1, char a2)
{
  v3 = v2;
  sub_18E44E54C();
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C4EDC();
  sub_18E44E4BC();
  v6 = [objc_opt_self() defaultManager];
  sub_18E44E4DC();
  v7 = sub_18E44EA8C();

  v8 = [v6 fileExistsAtPath_];

  if (!v8)
  {
    if (a2)
    {
      v11 = sub_18E44E58C();
      if (!v2)
      {
        v3 = v11;
        v12 = sub_18E1C80B0();
        v13(v12);
        return v3;
      }
    }

    else
    {
      v3 = sub_18E44E4DC();
      v15 = v14;
      sub_18E3FDB10();
      swift_allocError();
      *v16 = v3;
      *(v16 + 8) = v15;
      *(v16 + 16) = 1;
      swift_willThrow();
    }

LABEL_8:
    v17 = sub_18E1C80B0();
    v18(v17);
    return v3;
  }

  v9 = sub_18E44E58C();
  if (v2)
  {
    goto LABEL_8;
  }

  v3 = sub_18E252178(v9, v10);
  v20 = sub_18E1C80B0();
  v21(v20);
  v22 = sub_18E1C6004();
  sub_18E1FDFE0(v22, v23);
  return v3;
}

unint64_t sub_18E3FDB10()
{
  result = qword_1ED6A7C98;
  if (!qword_1ED6A7C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7C98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Obfuscation(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_18E3FDC10()
{
  result = qword_1EABE9140;
  if (!qword_1EABE9140)
  {
    sub_18E44E91C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE9140);
  }

  return result;
}

uint64_t AssetLock.init(resources:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v69 = a2;
  type metadata accessor for RunningBoardAssertedAssetSets();
  sub_18E1CD8AC();
  swift_allocObject();
  v5 = sub_18E424EF8();
  sub_18E425CA4(a1);
  v7 = v6;

  v8 = 0;
  v75 = *(v7 + 16);
  v9 = (v7 + 48);
  v73 = 136315394;
  v71 = v7;
  v72 = v5;
  while (1)
  {
    if (v75 == v8)
    {

      *v69 = v5;
      return result;
    }

    if (v8 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_16;
    }

    v79 = v8;
    v3 = *(v9 - 2);
    v2 = *(v9 - 1);
    v76 = v9;
    v10 = *v9;
    v11 = objc_opt_self();

    v12 = [v11 sharedManager];
    sub_18E1E3678();
    v13 = sub_18E44EA8C();
    v14 = sub_18E44E97C();
    v15 = [v12 retrieveAssetSet:v13 usages:v14];

    if (!v15)
    {
      break;
    }

    v16 = qword_1ED6A8AB0;
    v17 = v15;
    if (v16 != -1)
    {
      sub_18E1C6D78();
      swift_once();
    }

    v18 = sub_18E44E83C();
    sub_18E1CE8B4(v18, qword_1ED6A9870);

    v19 = sub_18E44E80C();
    v20 = sub_18E44EE2C();

    if (os_log_type_enabled(v19, v20))
    {
      sub_18E1C9700();
      v21 = swift_slowAlloc();
      sub_18E1CA638();
      v74 = swift_slowAlloc();
      sub_18E1D4A78(v74, v22, v23, v24, v25, v26, v27, v28, v69, v70, v71, v72, v73);
      v29 = sub_18E1E3678();
      v32 = sub_18E1C9624(v29, v30, v31);

      *(v21 + 4) = v32;
      *(v21 + 12) = 2080;

      v33 = sub_18E44E99C();
      v34 = v17;
      v35 = v3;
      v37 = v36;

      v38 = sub_18E1C9624(v33, v37, &v77);
      v3 = v35;
      v17 = v34;

      *(v21 + 14) = v38;
      v5 = v72;
      _os_log_impl(&dword_18E1C1000, v19, v20, "Successfully retrieved asset set: %s, with usages: %s", v21, 0x16u);
      swift_arrayDestroy();
      v7 = v71;
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    v39 = sub_18E1E3678();
    sub_18E425730(v39, v40, v10, v17);

    v9 = v76 + 3;
    v8 = v79 + 1;
  }

  if (qword_1ED6A8AB0 == -1)
  {
    goto LABEL_12;
  }

LABEL_16:
  sub_18E1C6D78();
  swift_once();
LABEL_12:
  v42 = sub_18E44E83C();
  sub_18E1CE8B4(v42, qword_1ED6A9870);

  v43 = sub_18E44E80C();
  v44 = sub_18E44EE0C();

  if (os_log_type_enabled(v43, v44))
  {
    sub_18E1C9700();
    v45 = swift_slowAlloc();
    sub_18E1CA638();
    v46 = swift_slowAlloc();
    sub_18E1D4A78(v46, v47, v48, v49, v50, v51, v52, v53, v69, v70, v71, v72, v73);
    v54 = sub_18E1E3678();
    v57 = sub_18E1C9624(v54, v55, v56);
    v79 = v3;
    v58 = v57;

    *(v45 + 4) = v58;
    *(v45 + 12) = 2080;

    v59 = sub_18E44E99C();
    v61 = v60;

    v62 = sub_18E1C9624(v59, v61, &v77);

    *(v45 + 14) = v62;
    v3 = v79;
    _os_log_impl(&dword_18E1C1000, v43, v44, "Failed to retrieve asset set: %s, with usages: %s", v45, 0x16u);
    swift_arrayDestroy();
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
  }

  v77 = v3;
  v78 = v2;

  v63 = sub_18E1E890C();
  MEMORY[0x193ACC300](v63, 0xEA0000000000203ALL);
  v64 = sub_18E44E99C();
  MEMORY[0x193ACC300](v64);

  v65 = v77;
  v66 = v78;
  sub_18E3FDB10();
  sub_18E1D0098();
  v67 = swift_allocError();
  *v68 = v65;
  v68[1] = v66;
  sub_18E1E3830(v67, v68);
  swift_willThrow();
}

void sub_18E3FE1D0()
{
  sub_18E1C575C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_18E2706EC(&qword_1EABE1060, &qword_18E4E3890);
  sub_18E1C5B08(v8);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  v12 = sub_18E1D43C0();
  sub_18E202008(v12, v13, &qword_1EABE1060, &qword_18E4E3890);
  v14 = sub_18E44ED4C();
  v15 = sub_18E1CAF28(v11, 1, v14);

  if (v15 == 1)
  {
    sub_18E1E8EEC(v11, &qword_1EABE1060, &qword_18E4E3890);
  }

  else
  {
    sub_18E44ED3C();
    sub_18E1C82B8();
    (*(v16 + 8))(v11, v14);
  }

  v17 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_18E44ECFC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v21 = sub_18E44EB1C() + 32;
      sub_18E1CD8AC();
      v22 = swift_allocObject();
      *(v22 + 16) = v3;
      *(v22 + 24) = v1;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v23 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v25[1] = 7;
      v25[2] = v23;
      v25[3] = v21;
      sub_18E221F10();
      swift_task_create();

      sub_18E1E8EEC(v5, &qword_1EABE1060, &qword_18E4E3890);

      goto LABEL_14;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_18E1E8EEC(v5, &qword_1EABE1060, &qword_18E4E3890);
  sub_18E1CD8AC();
  v24 = swift_allocObject();
  *(v24 + 16) = v3;
  *(v24 + 24) = v1;
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  sub_18E221F10();
  swift_task_create();
LABEL_14:
  sub_18E1C5544();
}

void AssetContents.metadataURL.getter()
{
  sub_18E1C575C();
  v1 = v0;
  v3 = v2;
  v4 = sub_18E44E46C();
  sub_18E1C4EAC();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C4EDC();
  v10 = v9 - v8;
  v11 = sub_18E44E54C();
  sub_18E1C4EAC();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_18E1C4EDC();
  v17 = v16 - v15;
  (*(v1 + 8))(v3, v1);
  sub_18E1D4DD8();
  (*(v6 + 104))(v10, *MEMORY[0x1E6968F70], v4);
  sub_18E24D39C();
  sub_18E44E52C();
  (*(v6 + 8))(v10, v4);
  (*(v13 + 8))(v17, v11);
  sub_18E1C5544();
}

void *sub_18E3FE658()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

void *AssetBackedResource.fetchAsset()(uint64_t a1, uint64_t a2)
{
  sub_18E2706EC(&qword_1EABE0E38, &qword_18E49D1E0);
  sub_18E1CADEC();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18E49D9B0;
  v6 = *(a2 + 8);
  *(v5 + 32) = (*(v6 + 24))(a1, v6);
  *(v5 + 40) = v7;
  type metadata accessor for CoherentAssetLock();
  sub_18E1CADEC();
  swift_allocObject();
  result = sub_18E1FD9F4(v5, 0);
  if (!v2)
  {
    if ((*(v6 + 64))(a1, v6))
    {
      v9 = sub_18E1D7EB4();
      v10(v9);
    }

    else
    {
      sub_18E204B54();
      v11 = sub_18E1D7EB4();
      v12(v11);
      sub_18E1D04C8();
    }
  }

  return result;
}

uint64_t sub_18E3FE8DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a1;
  v57 = a2;
  v3 = type metadata accessor for AppleDeviceTrackingAssetContents(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45 - v8;
  v49 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v45 - v9;
  v11 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_18E44E46C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18E44E54C();
  v53 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v45 - v22;
  v23 = *(v2 + 40);
  v50 = *(v2 + 32);
  v51 = v23;
  v24 = *(v2 + 56);
  v25 = memcpy(__dst, v2, sizeof(__dst));
  if (v24)
  {
    v27 = *(v2 + 200);
    v26 = *(v2 + 208);
    v28 = *MEMORY[0x1E6968F58];
    v47 = v15;
    v29 = *(v15 + 104);
    v48 = v14;
    v46 = v29;
    v29(v17, v28, v14);
    v49 = v18;
    sub_18E201DC8(v13, 1, 1, v18);
    sub_18E44E51C();
    v30 = v27 == 0x636972656E6567 && v26 == 0xE700000000000000;
    if (v30 || (sub_18E44F3CC() & 1) != 0)
    {
      v31 = v51;

      v32 = v53;
      v33 = v50;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v31 = v39;
      v32 = v53;
    }

    v59 = v33;
    v60 = v31;
    v40 = v48;
    v46(v17, *MEMORY[0x1E6968F70], v48);
    sub_18E24D39C();
    v38 = v52;
    sub_18E44E53C();
    (*(v47 + 8))(v17, v40);

    v34 = v49;
    (*(v32 + 8))(v21, v49);
    v51 = sub_18E44E9AC();
    v35 = v58;
  }

  else
  {
    v34 = v18;
    MEMORY[0x1EEE9AC00](v25);
    *(&v45 - 2) = __dst;
    v35 = v58;
    v36 = v62;
    result = sub_18E4257EC(sub_18E43F158);
    if (v36)
    {
      return result;
    }

    v51 = *&v10[*(v49 + 48)];
    v32 = v53;
    v38 = v52;
    (*(v53 + 32))();
  }

  v41 = v54;
  (*(v32 + 16))(v54, v38, v34);
  v42 = v38;
  v43 = v55;
  sub_18E249148(v41, v55, type metadata accessor for AppleDeviceTrackingAssetContents);
  v44 = v56;
  sub_18E249148(v43, v56, type metadata accessor for AppleDeviceTrackingAssetContents);

  sub_18E434048(0, 0, 1, v44, v51, v35, 0, v57);
  sub_18E2491F8(v43, type metadata accessor for AppleDeviceTrackingAssetContents);
  sub_18E2491F8(v41, type metadata accessor for AppleDeviceTrackingAssetContents);
  return (*(v32 + 8))(v42, v34);
}

uint64_t sub_18E3FEF3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a1;
  v57 = a2;
  v3 = type metadata accessor for DiffusionAdapterAssetContents(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45 - v8;
  v49 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v45 - v9;
  v11 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_18E44E46C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18E44E54C();
  v53 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v45 - v22;
  v23 = *(v2 + 40);
  v50 = *(v2 + 32);
  v51 = v23;
  v24 = *(v2 + 56);
  v25 = memcpy(__dst, v2, sizeof(__dst));
  if (v24)
  {
    v27 = *(v2 + 200);
    v26 = *(v2 + 208);
    v28 = *MEMORY[0x1E6968F58];
    v47 = v15;
    v29 = *(v15 + 104);
    v48 = v14;
    v46 = v29;
    v29(v17, v28, v14);
    v49 = v18;
    sub_18E201DC8(v13, 1, 1, v18);
    sub_18E44E51C();
    v30 = v27 == 0x636972656E6567 && v26 == 0xE700000000000000;
    if (v30 || (sub_18E44F3CC() & 1) != 0)
    {
      v31 = v51;

      v32 = v53;
      v33 = v50;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v31 = v39;
      v32 = v53;
    }

    v59 = v33;
    v60 = v31;
    v40 = v48;
    v46(v17, *MEMORY[0x1E6968F70], v48);
    sub_18E24D39C();
    v38 = v52;
    sub_18E44E53C();
    (*(v47 + 8))(v17, v40);

    v34 = v49;
    (*(v32 + 8))(v21, v49);
    v51 = sub_18E44E9AC();
    v35 = v58;
  }

  else
  {
    v34 = v18;
    MEMORY[0x1EEE9AC00](v25);
    *(&v45 - 2) = __dst;
    v35 = v58;
    v36 = v62;
    result = sub_18E4257EC(sub_18E43EFE8);
    if (v36)
    {
      return result;
    }

    v51 = *&v10[*(v49 + 48)];
    v32 = v53;
    v38 = v52;
    (*(v53 + 32))();
  }

  v41 = v54;
  (*(v32 + 16))(v54, v38, v34);
  v42 = v38;
  v43 = v55;
  sub_18E249148(v41, v55, type metadata accessor for DiffusionAdapterAssetContents);
  v44 = v56;
  sub_18E249148(v43, v56, type metadata accessor for DiffusionAdapterAssetContents);

  sub_18E432E78(0, 0, 1, v44, v51, v35, 0, v57);
  sub_18E2491F8(v43, type metadata accessor for DiffusionAdapterAssetContents);
  sub_18E2491F8(v41, type metadata accessor for DiffusionAdapterAssetContents);
  return (*(v32 + 8))(v42, v34);
}

uint64_t sub_18E3FF59C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a1;
  v57 = a2;
  v3 = type metadata accessor for DiffusionModelAssetContents(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45 - v8;
  v49 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v45 - v9;
  v11 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_18E44E46C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18E44E54C();
  v53 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v45 - v22;
  v23 = *(v2 + 40);
  v50 = *(v2 + 32);
  v51 = v23;
  v24 = *(v2 + 56);
  v25 = memcpy(__dst, v2, sizeof(__dst));
  if (v24)
  {
    v27 = *(v2 + 200);
    v26 = *(v2 + 208);
    v28 = *MEMORY[0x1E6968F58];
    v47 = v15;
    v29 = *(v15 + 104);
    v48 = v14;
    v46 = v29;
    v29(v17, v28, v14);
    v49 = v18;
    sub_18E201DC8(v13, 1, 1, v18);
    sub_18E44E51C();
    v30 = v27 == 0x636972656E6567 && v26 == 0xE700000000000000;
    if (v30 || (sub_18E44F3CC() & 1) != 0)
    {
      v31 = v51;

      v32 = v53;
      v33 = v50;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v31 = v39;
      v32 = v53;
    }

    v59 = v33;
    v60 = v31;
    v40 = v48;
    v46(v17, *MEMORY[0x1E6968F70], v48);
    sub_18E24D39C();
    v38 = v52;
    sub_18E44E53C();
    (*(v47 + 8))(v17, v40);

    v34 = v49;
    (*(v32 + 8))(v21, v49);
    v51 = sub_18E44E9AC();
    v35 = v58;
  }

  else
  {
    v34 = v18;
    MEMORY[0x1EEE9AC00](v25);
    *(&v45 - 2) = __dst;
    v35 = v58;
    v36 = v62;
    result = sub_18E4257EC(sub_18E43EF1C);
    if (v36)
    {
      return result;
    }

    v51 = *&v10[*(v49 + 48)];
    v32 = v53;
    v38 = v52;
    (*(v53 + 32))();
  }

  v41 = v54;
  (*(v32 + 16))(v54, v38, v34);
  v42 = v38;
  v43 = v55;
  sub_18E249148(v41, v55, type metadata accessor for DiffusionModelAssetContents);
  v44 = v56;
  sub_18E249148(v43, v56, type metadata accessor for DiffusionModelAssetContents);

  sub_18E42FD7C(0, 0, 1, v44, v51, v35, 0, v57);
  sub_18E2491F8(v43, type metadata accessor for DiffusionModelAssetContents);
  sub_18E2491F8(v41, type metadata accessor for DiffusionModelAssetContents);
  return (*(v32 + 8))(v42, v34);
}

uint64_t sub_18E3FFBFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a1;
  v57 = a2;
  v3 = type metadata accessor for DisabledUseCaseListAssetContents(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45 - v8;
  v49 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v45 - v9;
  v11 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_18E44E46C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18E44E54C();
  v53 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v45 - v22;
  v23 = *(v2 + 40);
  v50 = *(v2 + 32);
  v51 = v23;
  v24 = *(v2 + 56);
  v25 = memcpy(__dst, v2, sizeof(__dst));
  if (v24)
  {
    v27 = *(v2 + 200);
    v26 = *(v2 + 208);
    v28 = *MEMORY[0x1E6968F58];
    v47 = v15;
    v29 = *(v15 + 104);
    v48 = v14;
    v46 = v29;
    v29(v17, v28, v14);
    v49 = v18;
    sub_18E201DC8(v13, 1, 1, v18);
    sub_18E44E51C();
    v30 = v27 == 0x636972656E6567 && v26 == 0xE700000000000000;
    if (v30 || (sub_18E44F3CC() & 1) != 0)
    {
      v31 = v51;

      v32 = v53;
      v33 = v50;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v31 = v39;
      v32 = v53;
    }

    v59 = v33;
    v60 = v31;
    v40 = v48;
    v46(v17, *MEMORY[0x1E6968F70], v48);
    sub_18E24D39C();
    v38 = v52;
    sub_18E44E53C();
    (*(v47 + 8))(v17, v40);

    v34 = v49;
    (*(v32 + 8))(v21, v49);
    v51 = sub_18E44E9AC();
    v35 = v58;
  }

  else
  {
    v34 = v18;
    MEMORY[0x1EEE9AC00](v25);
    *(&v45 - 2) = __dst;
    v35 = v58;
    v36 = v62;
    result = sub_18E4257EC(sub_18E43EE50);
    if (v36)
    {
      return result;
    }

    v51 = *&v10[*(v49 + 48)];
    v32 = v53;
    v38 = v52;
    (*(v53 + 32))();
  }

  v41 = v54;
  (*(v32 + 16))(v54, v38, v34);
  v42 = v38;
  v43 = v55;
  sub_18E249148(v41, v55, type metadata accessor for DisabledUseCaseListAssetContents);
  v44 = v56;
  sub_18E249148(v43, v56, type metadata accessor for DisabledUseCaseListAssetContents);

  sub_18E4344BC(0, 0, 1, v44, v51, v35, 0, v57);
  sub_18E2491F8(v43, type metadata accessor for DisabledUseCaseListAssetContents);
  sub_18E2491F8(v41, type metadata accessor for DisabledUseCaseListAssetContents);
  return (*(v32 + 8))(v42, v34);
}

uint64_t sub_18E40025C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a1;
  v57 = a2;
  v3 = type metadata accessor for EmbeddingDenyListAssetContents(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45 - v8;
  v49 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v45 - v9;
  v11 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_18E44E46C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18E44E54C();
  v53 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v45 - v22;
  v23 = *(v2 + 40);
  v50 = *(v2 + 32);
  v51 = v23;
  v24 = *(v2 + 56);
  v25 = memcpy(__dst, v2, sizeof(__dst));
  if (v24)
  {
    v27 = *(v2 + 200);
    v26 = *(v2 + 208);
    v28 = *MEMORY[0x1E6968F58];
    v47 = v15;
    v29 = *(v15 + 104);
    v48 = v14;
    v46 = v29;
    v29(v17, v28, v14);
    v49 = v18;
    sub_18E201DC8(v13, 1, 1, v18);
    sub_18E44E51C();
    v30 = v27 == 0x636972656E6567 && v26 == 0xE700000000000000;
    if (v30 || (sub_18E44F3CC() & 1) != 0)
    {
      v31 = v51;

      v32 = v53;
      v33 = v50;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v31 = v39;
      v32 = v53;
    }

    v59 = v33;
    v60 = v31;
    v40 = v48;
    v46(v17, *MEMORY[0x1E6968F70], v48);
    sub_18E24D39C();
    v38 = v52;
    sub_18E44E53C();
    (*(v47 + 8))(v17, v40);

    v34 = v49;
    (*(v32 + 8))(v21, v49);
    v51 = sub_18E44E9AC();
    v35 = v58;
  }

  else
  {
    v34 = v18;
    MEMORY[0x1EEE9AC00](v25);
    *(&v45 - 2) = __dst;
    v35 = v58;
    v36 = v62;
    result = sub_18E4257EC(sub_18E43ED84);
    if (v36)
    {
      return result;
    }

    v51 = *&v10[*(v49 + 48)];
    v32 = v53;
    v38 = v52;
    (*(v53 + 32))();
  }

  v41 = v54;
  (*(v32 + 16))(v54, v38, v34);
  v42 = v38;
  v43 = v55;
  sub_18E249148(v41, v55, type metadata accessor for EmbeddingDenyListAssetContents);
  v44 = v56;
  sub_18E249148(v43, v56, type metadata accessor for EmbeddingDenyListAssetContents);

  sub_18E4332EC(0, 0, 1, v44, v51, v35, 0, v57);
  sub_18E2491F8(v43, type metadata accessor for EmbeddingDenyListAssetContents);
  sub_18E2491F8(v41, type metadata accessor for EmbeddingDenyListAssetContents);
  return (*(v32 + 8))(v42, v34);
}

uint64_t sub_18E4008BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a1;
  v57 = a2;
  v3 = type metadata accessor for EmbeddingPreprocessorAssetContents(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45 - v8;
  v49 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v45 - v9;
  v11 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_18E44E46C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18E44E54C();
  v53 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v45 - v22;
  v23 = *(v2 + 40);
  v50 = *(v2 + 32);
  v51 = v23;
  v24 = *(v2 + 56);
  v25 = memcpy(__dst, v2, sizeof(__dst));
  if (v24)
  {
    v27 = *(v2 + 200);
    v26 = *(v2 + 208);
    v28 = *MEMORY[0x1E6968F58];
    v47 = v15;
    v29 = *(v15 + 104);
    v48 = v14;
    v46 = v29;
    v29(v17, v28, v14);
    v49 = v18;
    sub_18E201DC8(v13, 1, 1, v18);
    sub_18E44E51C();
    v30 = v27 == 0x636972656E6567 && v26 == 0xE700000000000000;
    if (v30 || (sub_18E44F3CC() & 1) != 0)
    {
      v31 = v51;

      v32 = v53;
      v33 = v50;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v31 = v39;
      v32 = v53;
    }

    v59 = v33;
    v60 = v31;
    v40 = v48;
    v46(v17, *MEMORY[0x1E6968F70], v48);
    sub_18E24D39C();
    v38 = v52;
    sub_18E44E53C();
    (*(v47 + 8))(v17, v40);

    v34 = v49;
    (*(v32 + 8))(v21, v49);
    v51 = sub_18E44E9AC();
    v35 = v58;
  }

  else
  {
    v34 = v18;
    MEMORY[0x1EEE9AC00](v25);
    *(&v45 - 2) = __dst;
    v35 = v58;
    v36 = v62;
    result = sub_18E4257EC(sub_18E43ED68);
    if (v36)
    {
      return result;
    }

    v51 = *&v10[*(v49 + 48)];
    v32 = v53;
    v38 = v52;
    (*(v53 + 32))();
  }

  v41 = v54;
  (*(v32 + 16))(v54, v38, v34);
  v42 = v38;
  v43 = v55;
  sub_18E249148(v41, v55, type metadata accessor for EmbeddingPreprocessorAssetContents);
  v44 = v56;
  sub_18E249148(v43, v56, type metadata accessor for EmbeddingPreprocessorAssetContents);

  sub_18E43568C(0, 0, 1, v44, v51, v35, 0, v57);
  sub_18E2491F8(v43, type metadata accessor for EmbeddingPreprocessorAssetContents);
  sub_18E2491F8(v41, type metadata accessor for EmbeddingPreprocessorAssetContents);
  return (*(v32 + 8))(v42, v34);
}

uint64_t sub_18E400F1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a1;
  v57 = a2;
  v3 = type metadata accessor for HandwritingSynthesizerAssetContents(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45 - v8;
  v49 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v45 - v9;
  v11 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_18E44E46C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18E44E54C();
  v53 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v45 - v22;
  v23 = *(v2 + 40);
  v50 = *(v2 + 32);
  v51 = v23;
  v24 = *(v2 + 56);
  v25 = memcpy(__dst, v2, sizeof(__dst));
  if (v24)
  {
    v27 = *(v2 + 200);
    v26 = *(v2 + 208);
    v28 = *MEMORY[0x1E6968F58];
    v47 = v15;
    v29 = *(v15 + 104);
    v48 = v14;
    v46 = v29;
    v29(v17, v28, v14);
    v49 = v18;
    sub_18E201DC8(v13, 1, 1, v18);
    sub_18E44E51C();
    v30 = v27 == 0x636972656E6567 && v26 == 0xE700000000000000;
    if (v30 || (sub_18E44F3CC() & 1) != 0)
    {
      v31 = v51;

      v32 = v53;
      v33 = v50;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v31 = v39;
      v32 = v53;
    }

    v59 = v33;
    v60 = v31;
    v40 = v48;
    v46(v17, *MEMORY[0x1E6968F70], v48);
    sub_18E24D39C();
    v38 = v52;
    sub_18E44E53C();
    (*(v47 + 8))(v17, v40);

    v34 = v49;
    (*(v32 + 8))(v21, v49);
    v51 = sub_18E44E9AC();
    v35 = v58;
  }

  else
  {
    v34 = v18;
    MEMORY[0x1EEE9AC00](v25);
    *(&v45 - 2) = __dst;
    v35 = v58;
    v36 = v62;
    result = sub_18E4257EC(sub_18E43EC9C);
    if (v36)
    {
      return result;
    }

    v51 = *&v10[*(v49 + 48)];
    v32 = v53;
    v38 = v52;
    (*(v53 + 32))();
  }

  v41 = v54;
  (*(v32 + 16))(v54, v38, v34);
  v42 = v38;
  v43 = v55;
  sub_18E249148(v41, v55, type metadata accessor for HandwritingSynthesizerAssetContents);
  v44 = v56;
  sub_18E249148(v43, v56, type metadata accessor for HandwritingSynthesizerAssetContents);

  sub_18E435F74(0, 0, 1, v44, v51, v35, 0, v57);
  sub_18E2491F8(v43, type metadata accessor for HandwritingSynthesizerAssetContents);
  sub_18E2491F8(v41, type metadata accessor for HandwritingSynthesizerAssetContents);
  return (*(v32 + 8))(v42, v34);
}

uint64_t sub_18E40157C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a1;
  v57 = a2;
  v3 = type metadata accessor for ImageCuratedPromptsAssetContents(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45 - v8;
  v49 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v45 - v9;
  v11 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_18E44E46C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18E44E54C();
  v53 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v45 - v22;
  v23 = *(v2 + 40);
  v50 = *(v2 + 32);
  v51 = v23;
  v24 = *(v2 + 56);
  v25 = memcpy(__dst, v2, sizeof(__dst));
  if (v24)
  {
    v27 = *(v2 + 200);
    v26 = *(v2 + 208);
    v28 = *MEMORY[0x1E6968F58];
    v47 = v15;
    v29 = *(v15 + 104);
    v48 = v14;
    v46 = v29;
    v29(v17, v28, v14);
    v49 = v18;
    sub_18E201DC8(v13, 1, 1, v18);
    sub_18E44E51C();
    v30 = v27 == 0x636972656E6567 && v26 == 0xE700000000000000;
    if (v30 || (sub_18E44F3CC() & 1) != 0)
    {
      v31 = v51;

      v32 = v53;
      v33 = v50;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v31 = v39;
      v32 = v53;
    }

    v59 = v33;
    v60 = v31;
    v40 = v48;
    v46(v17, *MEMORY[0x1E6968F70], v48);
    sub_18E24D39C();
    v38 = v52;
    sub_18E44E53C();
    (*(v47 + 8))(v17, v40);

    v34 = v49;
    (*(v32 + 8))(v21, v49);
    v51 = sub_18E44E9AC();
    v35 = v58;
  }

  else
  {
    v34 = v18;
    MEMORY[0x1EEE9AC00](v25);
    *(&v45 - 2) = __dst;
    v35 = v58;
    v36 = v62;
    result = sub_18E4257EC(sub_18E43EBD0);
    if (v36)
    {
      return result;
    }

    v51 = *&v10[*(v49 + 48)];
    v32 = v53;
    v38 = v52;
    (*(v53 + 32))();
  }

  v41 = v54;
  (*(v32 + 16))(v54, v38, v34);
  v42 = v38;
  v43 = v55;
  sub_18E249148(v41, v55, type metadata accessor for ImageCuratedPromptsAssetContents);
  v44 = v56;
  sub_18E249148(v43, v56, type metadata accessor for ImageCuratedPromptsAssetContents);

  sub_18E434930(0, 0, 1, v44, v51, v35, 0, v57);
  sub_18E2491F8(v43, type metadata accessor for ImageCuratedPromptsAssetContents);
  sub_18E2491F8(v41, type metadata accessor for ImageCuratedPromptsAssetContents);
  return (*(v32 + 8))(v42, v34);
}

uint64_t sub_18E401BDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a1;
  v57 = a2;
  v3 = type metadata accessor for ImageFilterAssetContents(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45 - v8;
  v49 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v45 - v9;
  v11 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_18E44E46C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18E44E54C();
  v53 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v45 - v22;
  v23 = *(v2 + 40);
  v50 = *(v2 + 32);
  v51 = v23;
  v24 = *(v2 + 56);
  v25 = memcpy(__dst, v2, sizeof(__dst));
  if (v24)
  {
    v27 = *(v2 + 200);
    v26 = *(v2 + 208);
    v28 = *MEMORY[0x1E6968F58];
    v47 = v15;
    v29 = *(v15 + 104);
    v48 = v14;
    v46 = v29;
    v29(v17, v28, v14);
    v49 = v18;
    sub_18E201DC8(v13, 1, 1, v18);
    sub_18E44E51C();
    v30 = v27 == 0x636972656E6567 && v26 == 0xE700000000000000;
    if (v30 || (sub_18E44F3CC() & 1) != 0)
    {
      v31 = v51;

      v32 = v53;
      v33 = v50;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v31 = v39;
      v32 = v53;
    }

    v59 = v33;
    v60 = v31;
    v40 = v48;
    v46(v17, *MEMORY[0x1E6968F70], v48);
    sub_18E24D39C();
    v38 = v52;
    sub_18E44E53C();
    (*(v47 + 8))(v17, v40);

    v34 = v49;
    (*(v32 + 8))(v21, v49);
    v51 = sub_18E44E9AC();
    v35 = v58;
  }

  else
  {
    v34 = v18;
    MEMORY[0x1EEE9AC00](v25);
    *(&v45 - 2) = __dst;
    v35 = v58;
    v36 = v62;
    result = sub_18E4257EC(sub_18E43EB04);
    if (v36)
    {
      return result;
    }

    v51 = *&v10[*(v49 + 48)];
    v32 = v53;
    v38 = v52;
    (*(v53 + 32))();
  }

  v41 = v54;
  (*(v32 + 16))(v54, v38, v34);
  v42 = v38;
  v43 = v55;
  sub_18E249148(v41, v55, type metadata accessor for ImageFilterAssetContents);
  v44 = v56;
  sub_18E249148(v43, v56, type metadata accessor for ImageFilterAssetContents);

  sub_18E4313C0(0, 0, 1, v44, v51, v35, 0, v57);
  sub_18E2491F8(v43, type metadata accessor for ImageFilterAssetContents);
  sub_18E2491F8(v41, type metadata accessor for ImageFilterAssetContents);
  return (*(v32 + 8))(v42, v34);
}

uint64_t sub_18E40223C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a1;
  v57 = a2;
  v3 = type metadata accessor for ImageMagicCleanUpAssetContents(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45 - v8;
  v49 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v45 - v9;
  v11 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_18E44E46C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18E44E54C();
  v53 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v45 - v22;
  v23 = *(v2 + 40);
  v50 = *(v2 + 32);
  v51 = v23;
  v24 = *(v2 + 56);
  v25 = memcpy(__dst, v2, sizeof(__dst));
  if (v24)
  {
    v27 = *(v2 + 200);
    v26 = *(v2 + 208);
    v28 = *MEMORY[0x1E6968F58];
    v47 = v15;
    v29 = *(v15 + 104);
    v48 = v14;
    v46 = v29;
    v29(v17, v28, v14);
    v49 = v18;
    sub_18E201DC8(v13, 1, 1, v18);
    sub_18E44E51C();
    v30 = v27 == 0x636972656E6567 && v26 == 0xE700000000000000;
    if (v30 || (sub_18E44F3CC() & 1) != 0)
    {
      v31 = v51;

      v32 = v53;
      v33 = v50;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v31 = v39;
      v32 = v53;
    }

    v59 = v33;
    v60 = v31;
    v40 = v48;
    v46(v17, *MEMORY[0x1E6968F70], v48);
    sub_18E24D39C();
    v38 = v52;
    sub_18E44E53C();
    (*(v47 + 8))(v17, v40);

    v34 = v49;
    (*(v32 + 8))(v21, v49);
    v51 = sub_18E44E9AC();
    v35 = v58;
  }

  else
  {
    v34 = v18;
    MEMORY[0x1EEE9AC00](v25);
    *(&v45 - 2) = __dst;
    v35 = v58;
    v36 = v62;
    result = sub_18E4257EC(sub_18E43EA38);
    if (v36)
    {
      return result;
    }

    v51 = *&v10[*(v49 + 48)];
    v32 = v53;
    v38 = v52;
    (*(v53 + 32))();
  }

  v41 = v54;
  (*(v32 + 16))(v54, v38, v34);
  v42 = v38;
  v43 = v55;
  sub_18E249148(v41, v55, type metadata accessor for ImageMagicCleanUpAssetContents);
  v44 = v56;
  sub_18E249148(v43, v56, type metadata accessor for ImageMagicCleanUpAssetContents);

  sub_18E433760(0, 0, 1, v44, v51, v35, 0, v57);
  sub_18E2491F8(v43, type metadata accessor for ImageMagicCleanUpAssetContents);
  sub_18E2491F8(v41, type metadata accessor for ImageMagicCleanUpAssetContents);
  return (*(v32 + 8))(v42, v34);
}

uint64_t sub_18E40289C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a1;
  v57 = a2;
  v3 = type metadata accessor for ImageScalerAssetContents(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45 - v8;
  v49 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v45 - v9;
  v11 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_18E44E46C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18E44E54C();
  v53 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v45 - v22;
  v23 = *(v2 + 40);
  v50 = *(v2 + 32);
  v51 = v23;
  v24 = *(v2 + 56);
  v25 = memcpy(__dst, v2, sizeof(__dst));
  if (v24)
  {
    v27 = *(v2 + 200);
    v26 = *(v2 + 208);
    v28 = *MEMORY[0x1E6968F58];
    v47 = v15;
    v29 = *(v15 + 104);
    v48 = v14;
    v46 = v29;
    v29(v17, v28, v14);
    v49 = v18;
    sub_18E201DC8(v13, 1, 1, v18);
    sub_18E44E51C();
    v30 = v27 == 0x636972656E6567 && v26 == 0xE700000000000000;
    if (v30 || (sub_18E44F3CC() & 1) != 0)
    {
      v31 = v51;

      v32 = v53;
      v33 = v50;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v31 = v39;
      v32 = v53;
    }

    v59 = v33;
    v60 = v31;
    v40 = v48;
    v46(v17, *MEMORY[0x1E6968F70], v48);
    sub_18E24D39C();
    v38 = v52;
    sub_18E44E53C();
    (*(v47 + 8))(v17, v40);

    v34 = v49;
    (*(v32 + 8))(v21, v49);
    v51 = sub_18E44E9AC();
    v35 = v58;
  }

  else
  {
    v34 = v18;
    MEMORY[0x1EEE9AC00](v25);
    *(&v45 - 2) = __dst;
    v35 = v58;
    v36 = v62;
    result = sub_18E4257EC(sub_18E43E96C);
    if (v36)
    {
      return result;
    }

    v51 = *&v10[*(v49 + 48)];
    v32 = v53;
    v38 = v52;
    (*(v53 + 32))();
  }

  v41 = v54;
  (*(v32 + 16))(v54, v38, v34);
  v42 = v38;
  v43 = v55;
  sub_18E249148(v41, v55, type metadata accessor for ImageScalerAssetContents);
  v44 = v56;
  sub_18E249148(v43, v56, type metadata accessor for ImageScalerAssetContents);

  sub_18E431834(0, 0, 1, v44, v51, v35, 0, v57);
  sub_18E2491F8(v43, type metadata accessor for ImageScalerAssetContents);
  sub_18E2491F8(v41, type metadata accessor for ImageScalerAssetContents);
  return (*(v32 + 8))(v42, v34);
}

uint64_t sub_18E402EFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a1;
  v57 = a2;
  v3 = type metadata accessor for ImageSpatialPhotosReliveAssetContents(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45 - v8;
  v49 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v45 - v9;
  v11 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_18E44E46C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18E44E54C();
  v53 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v45 - v22;
  v23 = *(v2 + 40);
  v50 = *(v2 + 32);
  v51 = v23;
  v24 = *(v2 + 56);
  v25 = memcpy(__dst, v2, sizeof(__dst));
  if (v24)
  {
    v27 = *(v2 + 200);
    v26 = *(v2 + 208);
    v28 = *MEMORY[0x1E6968F58];
    v47 = v15;
    v29 = *(v15 + 104);
    v48 = v14;
    v46 = v29;
    v29(v17, v28, v14);
    v49 = v18;
    sub_18E201DC8(v13, 1, 1, v18);
    sub_18E44E51C();
    v30 = v27 == 0x636972656E6567 && v26 == 0xE700000000000000;
    if (v30 || (sub_18E44F3CC() & 1) != 0)
    {
      v31 = v51;

      v32 = v53;
      v33 = v50;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v31 = v39;
      v32 = v53;
    }

    v59 = v33;
    v60 = v31;
    v40 = v48;
    v46(v17, *MEMORY[0x1E6968F70], v48);
    sub_18E24D39C();
    v38 = v52;
    sub_18E44E53C();
    (*(v47 + 8))(v17, v40);

    v34 = v49;
    (*(v32 + 8))(v21, v49);
    v51 = sub_18E44E9AC();
    v35 = v58;
  }

  else
  {
    v34 = v18;
    MEMORY[0x1EEE9AC00](v25);
    *(&v45 - 2) = __dst;
    v35 = v58;
    v36 = v62;
    result = sub_18E4257EC(sub_18E43E8A0);
    if (v36)
    {
      return result;
    }

    v51 = *&v10[*(v49 + 48)];
    v32 = v53;
    v38 = v52;
    (*(v53 + 32))();
  }

  v41 = v54;
  (*(v32 + 16))(v54, v38, v34);
  v42 = v38;
  v43 = v55;
  sub_18E249148(v41, v55, type metadata accessor for ImageSpatialPhotosReliveAssetContents);
  v44 = v56;
  sub_18E249148(v43, v56, type metadata accessor for ImageSpatialPhotosReliveAssetContents);

  sub_18E4363E8(0, 0, 1, v44, v51, v35, 0, v57);
  sub_18E2491F8(v43, type metadata accessor for ImageSpatialPhotosReliveAssetContents);
  sub_18E2491F8(v41, type metadata accessor for ImageSpatialPhotosReliveAssetContents);
  return (*(v32 + 8))(v42, v34);
}

uint64_t sub_18E40355C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a1;
  v57 = a2;
  v3 = type metadata accessor for ImageTokenizerAssetContents(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45 - v8;
  v49 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v45 - v9;
  v11 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_18E44E46C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18E44E54C();
  v53 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v45 - v22;
  v23 = *(v2 + 40);
  v50 = *(v2 + 32);
  v51 = v23;
  v24 = *(v2 + 56);
  v25 = memcpy(__dst, v2, sizeof(__dst));
  if (v24)
  {
    v27 = *(v2 + 200);
    v26 = *(v2 + 208);
    v28 = *MEMORY[0x1E6968F58];
    v47 = v15;
    v29 = *(v15 + 104);
    v48 = v14;
    v46 = v29;
    v29(v17, v28, v14);
    v49 = v18;
    sub_18E201DC8(v13, 1, 1, v18);
    sub_18E44E51C();
    v30 = v27 == 0x636972656E6567 && v26 == 0xE700000000000000;
    if (v30 || (sub_18E44F3CC() & 1) != 0)
    {
      v31 = v51;

      v32 = v53;
      v33 = v50;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v31 = v39;
      v32 = v53;
    }

    v59 = v33;
    v60 = v31;
    v40 = v48;
    v46(v17, *MEMORY[0x1E6968F70], v48);
    sub_18E24D39C();
    v38 = v52;
    sub_18E44E53C();
    (*(v47 + 8))(v17, v40);

    v34 = v49;
    (*(v32 + 8))(v21, v49);
    v51 = sub_18E44E9AC();
    v35 = v58;
  }

  else
  {
    v34 = v18;
    MEMORY[0x1EEE9AC00](v25);
    *(&v45 - 2) = __dst;
    v35 = v58;
    v36 = v62;
    result = sub_18E4257EC(sub_18E43E7D4);
    if (v36)
    {
      return result;
    }

    v51 = *&v10[*(v49 + 48)];
    v32 = v53;
    v38 = v52;
    (*(v53 + 32))();
  }

  v41 = v54;
  (*(v32 + 16))(v54, v38, v34);
  v42 = v38;
  v43 = v55;
  sub_18E249148(v41, v55, type metadata accessor for ImageTokenizerAssetContents);
  v44 = v56;
  sub_18E249148(v43, v56, type metadata accessor for ImageTokenizerAssetContents);

  sub_18E43211C(0, 0, 1, v44, v51, v35, 0, v57);
  sub_18E2491F8(v43, type metadata accessor for ImageTokenizerAssetContents);
  sub_18E2491F8(v41, type metadata accessor for ImageTokenizerAssetContents);
  return (*(v32 + 8))(v42, v34);
}

uint64_t sub_18E403BBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a1;
  v57 = a2;
  v3 = type metadata accessor for LLMAdapterAssetContents(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45 - v8;
  v49 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v45 - v9;
  v11 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_18E44E46C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18E44E54C();
  v53 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v45 - v22;
  v23 = *(v2 + 40);
  v50 = *(v2 + 32);
  v51 = v23;
  v24 = *(v2 + 56);
  v25 = memcpy(__dst, v2, sizeof(__dst));
  if (v24)
  {
    v27 = *(v2 + 200);
    v26 = *(v2 + 208);
    v28 = *MEMORY[0x1E6968F58];
    v47 = v15;
    v29 = *(v15 + 104);
    v48 = v14;
    v46 = v29;
    v29(v17, v28, v14);
    v49 = v18;
    sub_18E201DC8(v13, 1, 1, v18);
    sub_18E44E51C();
    v30 = v27 == 0x636972656E6567 && v26 == 0xE700000000000000;
    if (v30 || (sub_18E44F3CC() & 1) != 0)
    {
      v31 = v51;

      v32 = v53;
      v33 = v50;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v31 = v39;
      v32 = v53;
    }

    v59 = v33;
    v60 = v31;
    v40 = v48;
    v46(v17, *MEMORY[0x1E6968F70], v48);
    sub_18E24D39C();
    v38 = v52;
    sub_18E44E53C();
    (*(v47 + 8))(v17, v40);

    v34 = v49;
    (*(v32 + 8))(v21, v49);
    v51 = sub_18E44E9AC();
    v35 = v58;
  }

  else
  {
    v34 = v18;
    MEMORY[0x1EEE9AC00](v25);
    *(&v45 - 2) = __dst;
    v35 = v58;
    v36 = v62;
    result = sub_18E4257EC(sub_18E43E708);
    if (v36)
    {
      return result;
    }

    v51 = *&v10[*(v49 + 48)];
    v32 = v53;
    v38 = v52;
    (*(v53 + 32))();
  }

  v41 = v54;
  (*(v32 + 16))(v54, v38, v34);
  v42 = v38;
  v43 = v55;
  sub_18E249148(v41, v55, type metadata accessor for LLMAdapterAssetContents);
  v44 = v56;
  sub_18E249148(v43, v56, type metadata accessor for LLMAdapterAssetContents);

  sub_18E430F4C(0, 0, 1, v44, v51, v35, 0, v57);
  sub_18E2491F8(v43, type metadata accessor for LLMAdapterAssetContents);
  sub_18E2491F8(v41, type metadata accessor for LLMAdapterAssetContents);
  return (*(v32 + 8))(v42, v34);
}

uint64_t sub_18E40421C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a1;
  v57 = a2;
  v3 = type metadata accessor for LLMAdapterMetadataOverrideAssetContents(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45 - v8;
  v49 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v45 - v9;
  v11 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_18E44E46C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18E44E54C();
  v53 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v45 - v22;
  v23 = *(v2 + 40);
  v50 = *(v2 + 32);
  v51 = v23;
  v24 = *(v2 + 56);
  v25 = memcpy(__dst, v2, sizeof(__dst));
  if (v24)
  {
    v27 = *(v2 + 200);
    v26 = *(v2 + 208);
    v28 = *MEMORY[0x1E6968F58];
    v47 = v15;
    v29 = *(v15 + 104);
    v48 = v14;
    v46 = v29;
    v29(v17, v28, v14);
    v49 = v18;
    sub_18E201DC8(v13, 1, 1, v18);
    sub_18E44E51C();
    v30 = v27 == 0x636972656E6567 && v26 == 0xE700000000000000;
    if (v30 || (sub_18E44F3CC() & 1) != 0)
    {
      v31 = v51;

      v32 = v53;
      v33 = v50;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v31 = v39;
      v32 = v53;
    }

    v59 = v33;
    v60 = v31;
    v40 = v48;
    v46(v17, *MEMORY[0x1E6968F70], v48);
    sub_18E24D39C();
    v38 = v52;
    sub_18E44E53C();
    (*(v47 + 8))(v17, v40);

    v34 = v49;
    (*(v32 + 8))(v21, v49);
    v51 = sub_18E44E9AC();
    v35 = v58;
  }

  else
  {
    v34 = v18;
    MEMORY[0x1EEE9AC00](v25);
    *(&v45 - 2) = __dst;
    v35 = v58;
    v36 = v62;
    result = sub_18E4257EC(sub_18E43E63C);
    if (v36)
    {
      return result;
    }

    v51 = *&v10[*(v49 + 48)];
    v32 = v53;
    v38 = v52;
    (*(v53 + 32))();
  }

  v41 = v54;
  (*(v32 + 16))(v54, v38, v34);
  v42 = v38;
  v43 = v55;
  sub_18E249148(v41, v55, type metadata accessor for LLMAdapterMetadataOverrideAssetContents);
  v44 = v56;
  sub_18E249148(v43, v56, type metadata accessor for LLMAdapterMetadataOverrideAssetContents);

  sub_18E43685C(0, 0, 1, v44, v51, v35, 0, v57);
  sub_18E2491F8(v43, type metadata accessor for LLMAdapterMetadataOverrideAssetContents);
  sub_18E2491F8(v41, type metadata accessor for LLMAdapterMetadataOverrideAssetContents);
  return (*(v32 + 8))(v42, v34);
}

uint64_t sub_18E40487C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a1;
  v57 = a2;
  v3 = type metadata accessor for LLMDraftModelAssetContents(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45 - v8;
  v49 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v45 - v9;
  v11 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_18E44E46C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18E44E54C();
  v53 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v45 - v22;
  v23 = *(v2 + 40);
  v50 = *(v2 + 32);
  v51 = v23;
  v24 = *(v2 + 56);
  v25 = memcpy(__dst, v2, sizeof(__dst));
  if (v24)
  {
    v27 = *(v2 + 200);
    v26 = *(v2 + 208);
    v28 = *MEMORY[0x1E6968F58];
    v47 = v15;
    v29 = *(v15 + 104);
    v48 = v14;
    v46 = v29;
    v29(v17, v28, v14);
    v49 = v18;
    sub_18E201DC8(v13, 1, 1, v18);
    sub_18E44E51C();
    v30 = v27 == 0x636972656E6567 && v26 == 0xE700000000000000;
    if (v30 || (sub_18E44F3CC() & 1) != 0)
    {
      v31 = v51;

      v32 = v53;
      v33 = v50;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v31 = v39;
      v32 = v53;
    }

    v59 = v33;
    v60 = v31;
    v40 = v48;
    v46(v17, *MEMORY[0x1E6968F70], v48);
    sub_18E24D39C();
    v38 = v52;
    sub_18E44E53C();
    (*(v47 + 8))(v17, v40);

    v34 = v49;
    (*(v32 + 8))(v21, v49);
    v51 = sub_18E44E9AC();
    v35 = v58;
  }

  else
  {
    v34 = v18;
    MEMORY[0x1EEE9AC00](v25);
    *(&v45 - 2) = __dst;
    v35 = v58;
    v36 = v62;
    result = sub_18E4257EC(sub_18E43E570);
    if (v36)
    {
      return result;
    }

    v51 = *&v10[*(v49 + 48)];
    v32 = v53;
    v38 = v52;
    (*(v53 + 32))();
  }

  v41 = v54;
  (*(v32 + 16))(v54, v38, v34);
  v42 = v38;
  v43 = v55;
  sub_18E249148(v41, v55, type metadata accessor for LLMDraftModelAssetContents);
  v44 = v56;
  sub_18E249148(v43, v56, type metadata accessor for LLMDraftModelAssetContents);

  sub_18E42F908(0, 0, 1, v44, v51, v35, 0, v57);
  sub_18E2491F8(v43, type metadata accessor for LLMDraftModelAssetContents);
  sub_18E2491F8(v41, type metadata accessor for LLMDraftModelAssetContents);
  return (*(v32 + 8))(v42, v34);
}

uint64_t sub_18E404EDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a1;
  v57 = a2;
  v3 = type metadata accessor for LLMModelAssetContents(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45 - v8;
  v49 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v45 - v9;
  v11 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_18E44E46C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18E44E54C();
  v53 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v45 - v22;
  v23 = *(v2 + 40);
  v50 = *(v2 + 32);
  v51 = v23;
  v24 = *(v2 + 56);
  v25 = memcpy(__dst, v2, sizeof(__dst));
  if (v24)
  {
    v27 = *(v2 + 200);
    v26 = *(v2 + 208);
    v28 = *MEMORY[0x1E6968F58];
    v47 = v15;
    v29 = *(v15 + 104);
    v48 = v14;
    v46 = v29;
    v29(v17, v28, v14);
    v49 = v18;
    sub_18E201DC8(v13, 1, 1, v18);
    sub_18E44E51C();
    v30 = v27 == 0x636972656E6567 && v26 == 0xE700000000000000;
    if (v30 || (sub_18E44F3CC() & 1) != 0)
    {
      v31 = v51;

      v32 = v53;
      v33 = v50;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v31 = v39;
      v32 = v53;
    }

    v59 = v33;
    v60 = v31;
    v40 = v48;
    v46(v17, *MEMORY[0x1E6968F70], v48);
    sub_18E24D39C();
    v38 = v52;
    sub_18E44E53C();
    (*(v47 + 8))(v17, v40);

    v34 = v49;
    (*(v32 + 8))(v21, v49);
    v51 = sub_18E44E9AC();
    v35 = v58;
  }

  else
  {
    v34 = v18;
    MEMORY[0x1EEE9AC00](v25);
    *(&v45 - 2) = __dst;
    v35 = v58;
    v36 = v62;
    result = sub_18E4257EC(sub_18E43E4A4);
    if (v36)
    {
      return result;
    }

    v51 = *&v10[*(v49 + 48)];
    v32 = v53;
    v38 = v52;
    (*(v53 + 32))();
  }

  v41 = v54;
  (*(v32 + 16))(v54, v38, v34);
  v42 = v38;
  v43 = v55;
  sub_18E249148(v41, v55, type metadata accessor for LLMModelAssetContents);
  v44 = v56;
  sub_18E249148(v43, v56, type metadata accessor for LLMModelAssetContents);

  sub_18E430664(0, 0, 1, v44, v51, v35, 0, v57);
  sub_18E2491F8(v43, type metadata accessor for LLMModelAssetContents);
  sub_18E2491F8(v41, type metadata accessor for LLMModelAssetContents);
  return (*(v32 + 8))(v42, v34);
}

uint64_t sub_18E40553C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a1;
  v57 = a2;
  v3 = type metadata accessor for ServerConfigurationAssetContents(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45 - v8;
  v49 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v45 - v9;
  v11 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_18E44E46C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18E44E54C();
  v53 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v45 - v22;
  v23 = *(v2 + 40);
  v50 = *(v2 + 32);
  v51 = v23;
  v24 = *(v2 + 56);
  v25 = memcpy(__dst, v2, sizeof(__dst));
  if (v24)
  {
    v27 = *(v2 + 200);
    v26 = *(v2 + 208);
    v28 = *MEMORY[0x1E6968F58];
    v47 = v15;
    v29 = *(v15 + 104);
    v48 = v14;
    v46 = v29;
    v29(v17, v28, v14);
    v49 = v18;
    sub_18E201DC8(v13, 1, 1, v18);
    sub_18E44E51C();
    v30 = v27 == 0x636972656E6567 && v26 == 0xE700000000000000;
    if (v30 || (sub_18E44F3CC() & 1) != 0)
    {
      v31 = v51;

      v32 = v53;
      v33 = v50;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v31 = v39;
      v32 = v53;
    }

    v59 = v33;
    v60 = v31;
    v40 = v48;
    v46(v17, *MEMORY[0x1E6968F70], v48);
    sub_18E24D39C();
    v38 = v52;
    sub_18E44E53C();
    (*(v47 + 8))(v17, v40);

    v34 = v49;
    (*(v32 + 8))(v21, v49);
    v51 = sub_18E44E9AC();
    v35 = v58;
  }

  else
  {
    v34 = v18;
    MEMORY[0x1EEE9AC00](v25);
    *(&v45 - 2) = __dst;
    v35 = v58;
    v36 = v62;
    result = sub_18E4257EC(sub_18E43E3D8);
    if (v36)
    {
      return result;
    }

    v51 = *&v10[*(v49 + 48)];
    v32 = v53;
    v38 = v52;
    (*(v53 + 32))();
  }

  v41 = v54;
  (*(v32 + 16))(v54, v38, v34);
  v42 = v38;
  v43 = v55;
  sub_18E249148(v41, v55, type metadata accessor for ServerConfigurationAssetContents);
  v44 = v56;
  sub_18E249148(v43, v56, type metadata accessor for ServerConfigurationAssetContents);

  sub_18E434DA4(0, 0, 1, v44, v51, v35, 0, v57);
  sub_18E2491F8(v43, type metadata accessor for ServerConfigurationAssetContents);
  sub_18E2491F8(v41, type metadata accessor for ServerConfigurationAssetContents);
  return (*(v32 + 8))(v42, v34);
}

uint64_t sub_18E405B9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a1;
  v57 = a2;
  v3 = type metadata accessor for ModelConfigurationReplacementAssetContents(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45 - v8;
  v49 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v45 - v9;
  v11 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_18E44E46C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18E44E54C();
  v53 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v45 - v22;
  v23 = *(v2 + 40);
  v50 = *(v2 + 32);
  v51 = v23;
  v24 = *(v2 + 56);
  v25 = memcpy(__dst, v2, sizeof(__dst));
  if (v24)
  {
    v27 = *(v2 + 200);
    v26 = *(v2 + 208);
    v28 = *MEMORY[0x1E6968F58];
    v47 = v15;
    v29 = *(v15 + 104);
    v48 = v14;
    v46 = v29;
    v29(v17, v28, v14);
    v49 = v18;
    sub_18E201DC8(v13, 1, 1, v18);
    sub_18E44E51C();
    v30 = v27 == 0x636972656E6567 && v26 == 0xE700000000000000;
    if (v30 || (sub_18E44F3CC() & 1) != 0)
    {
      v31 = v51;

      v32 = v53;
      v33 = v50;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v31 = v39;
      v32 = v53;
    }

    v59 = v33;
    v60 = v31;
    v40 = v48;
    v46(v17, *MEMORY[0x1E6968F70], v48);
    sub_18E24D39C();
    v38 = v52;
    sub_18E44E53C();
    (*(v47 + 8))(v17, v40);

    v34 = v49;
    (*(v32 + 8))(v21, v49);
    v51 = sub_18E44E9AC();
    v35 = v58;
  }

  else
  {
    v34 = v18;
    MEMORY[0x1EEE9AC00](v25);
    *(&v45 - 2) = __dst;
    v35 = v58;
    v36 = v62;
    result = sub_18E4257EC(sub_18E43E30C);
    if (v36)
    {
      return result;
    }

    v51 = *&v10[*(v49 + 48)];
    v32 = v53;
    v38 = v52;
    (*(v53 + 32))();
  }

  v41 = v54;
  (*(v32 + 16))(v54, v38, v34);
  v42 = v38;
  v43 = v55;
  sub_18E249148(v41, v55, type metadata accessor for ModelConfigurationReplacementAssetContents);
  v44 = v56;
  sub_18E249148(v43, v56, type metadata accessor for ModelConfigurationReplacementAssetContents);

  sub_18E42F494(0, 0, 1, v44, v51, v35, 0, v57);
  sub_18E2491F8(v43, type metadata accessor for ModelConfigurationReplacementAssetContents);
  sub_18E2491F8(v41, type metadata accessor for ModelConfigurationReplacementAssetContents);
  return (*(v32 + 8))(v42, v34);
}

uint64_t sub_18E4061FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a1;
  v57 = a2;
  v3 = type metadata accessor for MotionAdapterAssetContents(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45 - v8;
  v49 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v45 - v9;
  v11 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_18E44E46C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18E44E54C();
  v53 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v45 - v22;
  v23 = *(v2 + 40);
  v50 = *(v2 + 32);
  v51 = v23;
  v24 = *(v2 + 56);
  v25 = memcpy(__dst, v2, sizeof(__dst));
  if (v24)
  {
    v27 = *(v2 + 200);
    v26 = *(v2 + 208);
    v28 = *MEMORY[0x1E6968F58];
    v47 = v15;
    v29 = *(v15 + 104);
    v48 = v14;
    v46 = v29;
    v29(v17, v28, v14);
    v49 = v18;
    sub_18E201DC8(v13, 1, 1, v18);
    sub_18E44E51C();
    v30 = v27 == 0x636972656E6567 && v26 == 0xE700000000000000;
    if (v30 || (sub_18E44F3CC() & 1) != 0)
    {
      v31 = v51;

      v32 = v53;
      v33 = v50;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v31 = v39;
      v32 = v53;
    }

    v59 = v33;
    v60 = v31;
    v40 = v48;
    v46(v17, *MEMORY[0x1E6968F70], v48);
    sub_18E24D39C();
    v38 = v52;
    sub_18E44E53C();
    (*(v47 + 8))(v17, v40);

    v34 = v49;
    (*(v32 + 8))(v21, v49);
    v51 = sub_18E44E9AC();
    v35 = v58;
  }

  else
  {
    v34 = v18;
    MEMORY[0x1EEE9AC00](v25);
    *(&v45 - 2) = __dst;
    v35 = v58;
    v36 = v62;
    result = sub_18E4257EC(sub_18E43E240);
    if (v36)
    {
      return result;
    }

    v51 = *&v10[*(v49 + 48)];
    v32 = v53;
    v38 = v52;
    (*(v53 + 32))();
  }

  v41 = v54;
  (*(v32 + 16))(v54, v38, v34);
  v42 = v38;
  v43 = v55;
  sub_18E249148(v41, v55, type metadata accessor for MotionAdapterAssetContents);
  v44 = v56;
  sub_18E249148(v43, v56, type metadata accessor for MotionAdapterAssetContents);

  sub_18E431CA8(0, 0, 1, v44, v51, v35, 0, v57);
  sub_18E2491F8(v43, type metadata accessor for MotionAdapterAssetContents);
  sub_18E2491F8(v41, type metadata accessor for MotionAdapterAssetContents);
  return (*(v32 + 8))(v42, v34);
}

uint64_t sub_18E40685C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a1;
  v57 = a2;
  v3 = type metadata accessor for MotionAssetContents(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45 - v8;
  v49 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v45 - v9;
  v11 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_18E44E46C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18E44E54C();
  v53 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v45 - v22;
  v23 = *(v2 + 40);
  v50 = *(v2 + 32);
  v51 = v23;
  v24 = *(v2 + 56);
  v25 = memcpy(__dst, v2, sizeof(__dst));
  if (v24)
  {
    v27 = *(v2 + 200);
    v26 = *(v2 + 208);
    v28 = *MEMORY[0x1E6968F58];
    v47 = v15;
    v29 = *(v15 + 104);
    v48 = v14;
    v46 = v29;
    v29(v17, v28, v14);
    v49 = v18;
    sub_18E201DC8(v13, 1, 1, v18);
    sub_18E44E51C();
    v30 = v27 == 0x636972656E6567 && v26 == 0xE700000000000000;
    if (v30 || (sub_18E44F3CC() & 1) != 0)
    {
      v31 = v51;

      v32 = v53;
      v33 = v50;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v31 = v39;
      v32 = v53;
    }

    v59 = v33;
    v60 = v31;
    v40 = v48;
    v46(v17, *MEMORY[0x1E6968F70], v48);
    sub_18E24D39C();
    v38 = v52;
    sub_18E44E53C();
    (*(v47 + 8))(v17, v40);

    v34 = v49;
    (*(v32 + 8))(v21, v49);
    v51 = sub_18E44E9AC();
    v35 = v58;
  }

  else
  {
    v34 = v18;
    MEMORY[0x1EEE9AC00](v25);
    *(&v45 - 2) = __dst;
    v35 = v58;
    v36 = v62;
    result = sub_18E4257EC(sub_18E43E174);
    if (v36)
    {
      return result;
    }

    v51 = *&v10[*(v49 + 48)];
    v32 = v53;
    v38 = v52;
    (*(v53 + 32))();
  }

  v41 = v54;
  (*(v32 + 16))(v54, v38, v34);
  v42 = v38;
  v43 = v55;
  sub_18E249148(v41, v55, type metadata accessor for MotionAssetContents);
  v44 = v56;
  sub_18E249148(v43, v56, type metadata accessor for MotionAssetContents);

  sub_18E4301F0(0, 0, 1, v44, v51, v35, 0, v57);
  sub_18E2491F8(v43, type metadata accessor for MotionAssetContents);
  sub_18E2491F8(v41, type metadata accessor for MotionAssetContents);
  return (*(v32 + 8))(v42, v34);
}

uint64_t sub_18E406EBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a1;
  v57 = a2;
  v3 = type metadata accessor for PromptAllowListAssetContents(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45 - v8;
  v49 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v45 - v9;
  v11 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_18E44E46C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18E44E54C();
  v53 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v45 - v22;
  v23 = *(v2 + 40);
  v50 = *(v2 + 32);
  v51 = v23;
  v24 = *(v2 + 56);
  v25 = memcpy(__dst, v2, sizeof(__dst));
  if (v24)
  {
    v27 = *(v2 + 200);
    v26 = *(v2 + 208);
    v28 = *MEMORY[0x1E6968F58];
    v47 = v15;
    v29 = *(v15 + 104);
    v48 = v14;
    v46 = v29;
    v29(v17, v28, v14);
    v49 = v18;
    sub_18E201DC8(v13, 1, 1, v18);
    sub_18E44E51C();
    v30 = v27 == 0x636972656E6567 && v26 == 0xE700000000000000;
    if (v30 || (sub_18E44F3CC() & 1) != 0)
    {
      v31 = v51;

      v32 = v53;
      v33 = v50;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v31 = v39;
      v32 = v53;
    }

    v59 = v33;
    v60 = v31;
    v40 = v48;
    v46(v17, *MEMORY[0x1E6968F70], v48);
    sub_18E24D39C();
    v38 = v52;
    sub_18E44E53C();
    (*(v47 + 8))(v17, v40);

    v34 = v49;
    (*(v32 + 8))(v21, v49);
    v51 = sub_18E44E9AC();
    v35 = v58;
  }

  else
  {
    v34 = v18;
    MEMORY[0x1EEE9AC00](v25);
    *(&v45 - 2) = __dst;
    v35 = v58;
    v36 = v62;
    result = sub_18E4257EC(sub_18E43E0A8);
    if (v36)
    {
      return result;
    }

    v51 = *&v10[*(v49 + 48)];
    v32 = v53;
    v38 = v52;
    (*(v53 + 32))();
  }

  v41 = v54;
  (*(v32 + 16))(v54, v38, v34);
  v42 = v38;
  v43 = v55;
  sub_18E249148(v41, v55, type metadata accessor for PromptAllowListAssetContents);
  v44 = v56;
  sub_18E249148(v43, v56, type metadata accessor for PromptAllowListAssetContents);

  sub_18E432590(0, 0, 1, v44, v51, v35, 0, v57);
  sub_18E2491F8(v43, type metadata accessor for PromptAllowListAssetContents);
  sub_18E2491F8(v41, type metadata accessor for PromptAllowListAssetContents);
  return (*(v32 + 8))(v42, v34);
}

uint64_t sub_18E40751C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a1;
  v57 = a2;
  v3 = type metadata accessor for SecureAnalyticsAssetContents(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45 - v8;
  v49 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v45 - v9;
  v11 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_18E44E46C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18E44E54C();
  v53 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v45 - v22;
  v23 = *(v2 + 40);
  v50 = *(v2 + 32);
  v51 = v23;
  v24 = *(v2 + 56);
  v25 = memcpy(__dst, v2, sizeof(__dst));
  if (v24)
  {
    v27 = *(v2 + 200);
    v26 = *(v2 + 208);
    v28 = *MEMORY[0x1E6968F58];
    v47 = v15;
    v29 = *(v15 + 104);
    v48 = v14;
    v46 = v29;
    v29(v17, v28, v14);
    v49 = v18;
    sub_18E201DC8(v13, 1, 1, v18);
    sub_18E44E51C();
    v30 = v27 == 0x636972656E6567 && v26 == 0xE700000000000000;
    if (v30 || (sub_18E44F3CC() & 1) != 0)
    {
      v31 = v51;

      v32 = v53;
      v33 = v50;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v31 = v39;
      v32 = v53;
    }

    v59 = v33;
    v60 = v31;
    v40 = v48;
    v46(v17, *MEMORY[0x1E6968F70], v48);
    sub_18E24D39C();
    v38 = v52;
    sub_18E44E53C();
    (*(v47 + 8))(v17, v40);

    v34 = v49;
    (*(v32 + 8))(v21, v49);
    v51 = sub_18E44E9AC();
    v35 = v58;
  }

  else
  {
    v34 = v18;
    MEMORY[0x1EEE9AC00](v25);
    *(&v45 - 2) = __dst;
    v35 = v58;
    v36 = v62;
    result = sub_18E4257EC(sub_18E43DFDC);
    if (v36)
    {
      return result;
    }

    v51 = *&v10[*(v49 + 48)];
    v32 = v53;
    v38 = v52;
    (*(v53 + 32))();
  }

  v41 = v54;
  (*(v32 + 16))(v54, v38, v34);
  v42 = v38;
  v43 = v55;
  sub_18E249148(v41, v55, type metadata accessor for SecureAnalyticsAssetContents);
  v44 = v56;
  sub_18E249148(v43, v56, type metadata accessor for SecureAnalyticsAssetContents);

  sub_18E432A04(0, 0, 1, v44, v51, v35, 0, v57);
  sub_18E2491F8(v43, type metadata accessor for SecureAnalyticsAssetContents);
  sub_18E2491F8(v41, type metadata accessor for SecureAnalyticsAssetContents);
  return (*(v32 + 8))(v42, v34);
}

uint64_t sub_18E407B7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a1;
  v57 = a2;
  v3 = type metadata accessor for TokenInputDenyListAssetContents(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45 - v8;
  v49 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v45 - v9;
  v11 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_18E44E46C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18E44E54C();
  v53 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v45 - v22;
  v23 = *(v2 + 40);
  v50 = *(v2 + 32);
  v51 = v23;
  v24 = *(v2 + 56);
  v25 = memcpy(__dst, v2, sizeof(__dst));
  if (v24)
  {
    v27 = *(v2 + 200);
    v26 = *(v2 + 208);
    v28 = *MEMORY[0x1E6968F58];
    v47 = v15;
    v29 = *(v15 + 104);
    v48 = v14;
    v46 = v29;
    v29(v17, v28, v14);
    v49 = v18;
    sub_18E201DC8(v13, 1, 1, v18);
    sub_18E44E51C();
    v30 = v27 == 0x636972656E6567 && v26 == 0xE700000000000000;
    if (v30 || (sub_18E44F3CC() & 1) != 0)
    {
      v31 = v51;

      v32 = v53;
      v33 = v50;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v31 = v39;
      v32 = v53;
    }

    v59 = v33;
    v60 = v31;
    v40 = v48;
    v46(v17, *MEMORY[0x1E6968F70], v48);
    sub_18E24D39C();
    v38 = v52;
    sub_18E44E53C();
    (*(v47 + 8))(v17, v40);

    v34 = v49;
    (*(v32 + 8))(v21, v49);
    v51 = sub_18E44E9AC();
    v35 = v58;
  }

  else
  {
    v34 = v18;
    MEMORY[0x1EEE9AC00](v25);
    *(&v45 - 2) = __dst;
    v35 = v58;
    v36 = v62;
    result = sub_18E4257EC(sub_18E43DF10);
    if (v36)
    {
      return result;
    }

    v51 = *&v10[*(v49 + 48)];
    v32 = v53;
    v38 = v52;
    (*(v53 + 32))();
  }

  v41 = v54;
  (*(v32 + 16))(v54, v38, v34);
  v42 = v38;
  v43 = v55;
  sub_18E249148(v41, v55, type metadata accessor for TokenInputDenyListAssetContents);
  v44 = v56;
  sub_18E249148(v43, v56, type metadata accessor for TokenInputDenyListAssetContents);

  sub_18E433BD4(0, 0, 1, v44, v51, v35, 0, v57);
  sub_18E2491F8(v43, type metadata accessor for TokenInputDenyListAssetContents);
  sub_18E2491F8(v41, type metadata accessor for TokenInputDenyListAssetContents);
  return (*(v32 + 8))(v42, v34);
}

uint64_t sub_18E4081DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a1;
  v57 = a2;
  v3 = type metadata accessor for TokenOutputDenyListAssetContents(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45 - v8;
  v49 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v45 - v9;
  v11 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_18E44E46C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18E44E54C();
  v53 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v45 - v22;
  v23 = *(v2 + 40);
  v50 = *(v2 + 32);
  v51 = v23;
  v24 = *(v2 + 56);
  v25 = memcpy(__dst, v2, sizeof(__dst));
  if (v24)
  {
    v27 = *(v2 + 200);
    v26 = *(v2 + 208);
    v28 = *MEMORY[0x1E6968F58];
    v47 = v15;
    v29 = *(v15 + 104);
    v48 = v14;
    v46 = v29;
    v29(v17, v28, v14);
    v49 = v18;
    sub_18E201DC8(v13, 1, 1, v18);
    sub_18E44E51C();
    v30 = v27 == 0x636972656E6567 && v26 == 0xE700000000000000;
    if (v30 || (sub_18E44F3CC() & 1) != 0)
    {
      v31 = v51;

      v32 = v53;
      v33 = v50;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v31 = v39;
      v32 = v53;
    }

    v59 = v33;
    v60 = v31;
    v40 = v48;
    v46(v17, *MEMORY[0x1E6968F70], v48);
    sub_18E24D39C();
    v38 = v52;
    sub_18E44E53C();
    (*(v47 + 8))(v17, v40);

    v34 = v49;
    (*(v32 + 8))(v21, v49);
    v51 = sub_18E44E9AC();
    v35 = v58;
  }

  else
  {
    v34 = v18;
    MEMORY[0x1EEE9AC00](v25);
    *(&v45 - 2) = __dst;
    v35 = v58;
    v36 = v62;
    result = sub_18E4257EC(sub_18E43DEA0);
    if (v36)
    {
      return result;
    }

    v51 = *&v10[*(v49 + 48)];
    v32 = v53;
    v38 = v52;
    (*(v53 + 32))();
  }

  v41 = v54;
  (*(v32 + 16))(v54, v38, v34);
  v42 = v38;
  v43 = v55;
  sub_18E249148(v41, v55, type metadata accessor for TokenOutputDenyListAssetContents);
  v44 = v56;
  sub_18E249148(v43, v56, type metadata accessor for TokenOutputDenyListAssetContents);

  sub_18E435218(0, 0, 1, v44, v51, v35, 0, v57);
  sub_18E2491F8(v43, type metadata accessor for TokenOutputDenyListAssetContents);
  sub_18E2491F8(v41, type metadata accessor for TokenOutputDenyListAssetContents);
  return (*(v32 + 8))(v42, v34);
}

uint64_t sub_18E40883C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a1;
  v57 = a2;
  v3 = type metadata accessor for TokenOutputRetainListAssetContents(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45 - v8;
  v49 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v45 - v9;
  v11 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_18E44E46C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18E44E54C();
  v53 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v45 - v22;
  v23 = *(v2 + 40);
  v50 = *(v2 + 32);
  v51 = v23;
  v24 = *(v2 + 56);
  v25 = memcpy(__dst, v2, sizeof(__dst));
  if (v24)
  {
    v27 = *(v2 + 200);
    v26 = *(v2 + 208);
    v28 = *MEMORY[0x1E6968F58];
    v47 = v15;
    v29 = *(v15 + 104);
    v48 = v14;
    v46 = v29;
    v29(v17, v28, v14);
    v49 = v18;
    sub_18E201DC8(v13, 1, 1, v18);
    sub_18E44E51C();
    v30 = v27 == 0x636972656E6567 && v26 == 0xE700000000000000;
    if (v30 || (sub_18E44F3CC() & 1) != 0)
    {
      v31 = v51;

      v32 = v53;
      v33 = v50;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v31 = v39;
      v32 = v53;
    }

    v59 = v33;
    v60 = v31;
    v40 = v48;
    v46(v17, *MEMORY[0x1E6968F70], v48);
    sub_18E24D39C();
    v38 = v52;
    sub_18E44E53C();
    (*(v47 + 8))(v17, v40);

    v34 = v49;
    (*(v32 + 8))(v21, v49);
    v51 = sub_18E44E9AC();
    v35 = v58;
  }

  else
  {
    v34 = v18;
    MEMORY[0x1EEE9AC00](v25);
    *(&v45 - 2) = __dst;
    v35 = v58;
    v36 = v62;
    result = sub_18E4257EC(sub_18E43DE30);
    if (v36)
    {
      return result;
    }

    v51 = *&v10[*(v49 + 48)];
    v32 = v53;
    v38 = v52;
    (*(v53 + 32))();
  }

  v41 = v54;
  (*(v32 + 16))(v54, v38, v34);
  v42 = v38;
  v43 = v55;
  sub_18E249148(v41, v55, type metadata accessor for TokenOutputRetainListAssetContents);
  v44 = v56;
  sub_18E249148(v43, v56, type metadata accessor for TokenOutputRetainListAssetContents);

  sub_18E435B00(0, 0, 1, v44, v51, v35, 0, v57);
  sub_18E2491F8(v43, type metadata accessor for TokenOutputRetainListAssetContents);
  sub_18E2491F8(v41, type metadata accessor for TokenOutputRetainListAssetContents);
  return (*(v32 + 8))(v42, v34);
}

uint64_t sub_18E408E9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a1;
  v57 = a2;
  v3 = type metadata accessor for TokenizerAssetContents(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45 - v8;
  v49 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v45 - v9;
  v11 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_18E44E46C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18E44E54C();
  v53 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v45 - v22;
  v23 = *(v2 + 40);
  v50 = *(v2 + 32);
  v51 = v23;
  v24 = *(v2 + 56);
  v25 = memcpy(__dst, v2, sizeof(__dst));
  if (v24)
  {
    v27 = *(v2 + 200);
    v26 = *(v2 + 208);
    v28 = *MEMORY[0x1E6968F58];
    v47 = v15;
    v29 = *(v15 + 104);
    v48 = v14;
    v46 = v29;
    v29(v17, v28, v14);
    v49 = v18;
    sub_18E201DC8(v13, 1, 1, v18);
    sub_18E44E51C();
    v30 = v27 == 0x636972656E6567 && v26 == 0xE700000000000000;
    if (v30 || (sub_18E44F3CC() & 1) != 0)
    {
      v31 = v51;

      v32 = v53;
      v33 = v50;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v31 = v39;
      v32 = v53;
    }

    v59 = v33;
    v60 = v31;
    v40 = v48;
    v46(v17, *MEMORY[0x1E6968F70], v48);
    sub_18E24D39C();
    v38 = v52;
    sub_18E44E53C();
    (*(v47 + 8))(v17, v40);

    v34 = v49;
    (*(v32 + 8))(v21, v49);
    v51 = sub_18E44E9AC();
    v35 = v58;
  }

  else
  {
    v34 = v18;
    MEMORY[0x1EEE9AC00](v25);
    *(&v45 - 2) = __dst;
    v35 = v58;
    v36 = v62;
    result = sub_18E4257EC(sub_18E43DD64);
    if (v36)
    {
      return result;
    }

    v51 = *&v10[*(v49 + 48)];
    v32 = v53;
    v38 = v52;
    (*(v53 + 32))();
  }

  v41 = v54;
  (*(v32 + 16))(v54, v38, v34);
  v42 = v38;
  v43 = v55;
  sub_18E249148(v41, v55, type metadata accessor for TokenizerAssetContents);
  v44 = v56;
  sub_18E249148(v43, v56, type metadata accessor for TokenizerAssetContents);

  sub_18E430AD8(0, 0, 1, v44, v51, v35, 0, v57);
  sub_18E2491F8(v43, type metadata accessor for TokenizerAssetContents);
  sub_18E2491F8(v41, type metadata accessor for TokenizerAssetContents);
  return (*(v32 + 8))(v42, v34);
}

void AssetBackedResource<>.fetchLockedAsset(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1C62A0();
  a19 = v22;
  a20 = v23;
  v98 = v21;
  v88 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v95 = v31;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_18E1C5838();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v91 = AssociatedTypeWitness;
  swift_getAssociatedTypeWitness();
  sub_18E1C4EAC();
  v92 = v34;
  v93 = v33;
  MEMORY[0x1EEE9AC00](v33);
  sub_18E1C64E0();
  v89 = v35;
  MEMORY[0x1EEE9AC00](v36);
  sub_18E1D84B0();
  v90 = v37;
  v83 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  sub_18E1C4EEC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v38);
  sub_18E1CAF50();
  v85 = v39;
  v40 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v40);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v41);
  sub_18E1CAF50();
  v84 = v42;
  sub_18E44E46C();
  sub_18E1C4EAC();
  v86 = v44;
  v87 = v43;
  MEMORY[0x1EEE9AC00](v43);
  sub_18E1C4EDC();
  sub_18E1C561C();
  v99 = sub_18E44E54C();
  sub_18E1C4EAC();
  v97 = v45;
  v47 = MEMORY[0x1EEE9AC00](v46);
  v49 = &v82 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v82 - v50;
  v52 = *v30;
  v53 = v26;
  v54 = *(v26 + 8);
  v55 = *(v54 + 64);
  v96 = v20;
  v56 = v28;
  v57 = v55(v28, v54);
  if (v57)
  {
    v88 = v52;
    v83 = v28;
    v58 = *MEMORY[0x1E6968F58];
    v59 = v86;
    v60 = v87;
    v85 = *(v86 + 104);
    (v85)(AssociatedTypeWitness, v58, v87);
    sub_18E201DC8(v84, 1, 1, v99);
    sub_18E44E51C();
    v100 = (*(v54 + 24))(v83, v54);
    v101 = v61;
    (v85)(AssociatedTypeWitness, *MEMORY[0x1E6968F70], v60);
    sub_18E24D39C();
    sub_18E44E53C();
    (*(v59 + 8))(AssociatedTypeWitness, v60);

    v62 = v97;
    v63 = v99;
    (*(v97 + 8))(v49, v99);
    v96 = sub_18E44E9AC();
    v64 = v63;
LABEL_5:
    (*(v62 + 16))(v49, v51, v64);
    v72 = v93;
    v71 = AssociatedConformanceWitness;
    v73 = swift_getAssociatedConformanceWitness();
    v74 = v90;
    v75 = v49;
    v76 = v51;
    v77 = v62;
    (*(v73 + 24))(v75, v72, v73);
    v78 = swift_checkMetadataState();
    v100 = 0;
    v101 = 0;
    v102 = 1;
    v79 = v92;
    v80 = v89;
    (*(v92 + 16))(v89, v74, v72);
    a10 = v88;
    v81 = *(v71 + 112);

    v81(&v100, v80, v96, &a10, v78, v71);
    (*(v79 + 8))(v74, v72);
    (*(v77 + 8))(v76, v99);
    goto LABEL_6;
  }

  v65 = v97;
  v64 = v99;
  MEMORY[0x1EEE9AC00](v57);
  *(&v82 - 4) = v56;
  *(&v82 - 3) = v53;
  v66 = v96;
  *(&v82 - 2) = v88;
  *(&v82 - 1) = v66;
  v67 = v85;
  v68 = v98;
  sub_18E4257EC(sub_18E43A13C);
  if (!v68)
  {
    v98 = 0;
    v88 = v52;
    v96 = *&v67[*(v83 + 48)];
    v62 = v65;
    v69 = sub_18E1DD3B4();
    v70(v69);
    goto LABEL_5;
  }

LABEL_6:
  sub_18E1C6650();
}

void sub_18E409E70(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v116 = a2;
  v118 = a3;
  v7 = type metadata accessor for ModelConfigurationReplacementAssetContents(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v114 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v109 - v12;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v109 - v14;
  v16 = sub_18E44E46C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18E44E54C();
  v124 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v109 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v127 = &v109 - v28;
  v122 = *(v5 + 32);
  v29 = *(v5 + 40);
  v30 = *(v5 + 56);
  v123 = v4;
  v121 = v29;
  v119 = v26;
  v117 = v31;
  v113 = a1;
  if (v30)
  {
    v32 = *MEMORY[0x1E6968F58];
    v112 = v17;
    v33 = *(v17 + 104);
    v33(v19, v32, v16);
    sub_18E201DC8(v15, 1, 1, v20);
    sub_18E44E51C();
    v34 = *(v5 + 200);
    v35 = *(v5 + 208);
    v110 = v5;
    v36 = v34 == 0x636972656E6567 && v35 == 0xE700000000000000;
    if (v36 || (sub_18E44F3CC() & 1) != 0)
    {
      v37 = v121;

      v38 = v122;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v37 = v54;
    }

    v125 = v38;
    v126 = v37;
    v33(v19, *MEMORY[0x1E6968F70], v16);
    sub_18E24D39C();
    v55 = v127;
    sub_18E44E53C();
    (*(v112 + 8))(v19, v16);
    v56 = v55;

    v57 = v124;
    v58 = v119;
    v112 = *(v124 + 8);
    (v112)(v25, v119);
    v111 = sub_18E44E9AC();
    v59 = *(v57 + 16);
    v5 = v110;
  }

  else
  {
    v109 = v27;
    v39 = *(v5 + 120);
    v40 = *(v5 + 128);
    v41 = *(a1 + 16);
    v112 = *(v5 + 96);
    if (v112)
    {

      v42 = v39;
      v43 = v40;
    }

    else
    {
      v42 = v39;
      v39 = 0xD000000000000016;
      v43 = 0x800000018E462F20;
    }

    v44 = v40;

    v45 = sub_18E248038(v39, v43, v41);

    if (!v45)
    {
      v127 = v40;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v46 = 0xD000000000000016;
      v47 = sub_18E44E83C();
      sub_18E1C95EC(v47, qword_1ED6A9870);
      sub_18E43E25C(v5, &v125);
      sub_18E43E25C(v5, &v125);
      v48 = sub_18E44E80C();
      v49 = sub_18E44EE0C();
      v50 = v42;
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v125 = v52;
        *v51 = 136315394;
        v111 = v50;
        if (v112)
        {

          v53 = v127;

          v46 = v50;
        }

        else
        {
          v53 = 0x800000018E462F20;
        }

        sub_18E2CF438(v5);

        v99 = sub_18E1C9624(v46, v53, &v125);

        *(v51 + 4) = v99;
        *(v51 + 12) = 2080;
        v100 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v100 || (sub_18E44F3CC() & 1) != 0)
        {
          v101 = v121;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v122 = v102;
          v101 = v103;
        }

        v50 = v111;
        sub_18E2CF438(v5);
        v104 = sub_18E1C9624(v122, v101, &v125);

        *(v51 + 14) = v104;
        _os_log_impl(&dword_18E1C1000, v48, v49, "Failed to find token for asset set: %s for %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v52, -1, -1);
        MEMORY[0x193ACD400](v51, -1, -1);
      }

      else
      {

        sub_18E2CF438(v5);
        sub_18E2CF438(v5);
      }

      v125 = 0;
      v126 = 0xE000000000000000;
      sub_18E44EFFC();

      v105 = v127;
      if (v112)
      {
      }

      else
      {
        v105 = 0x800000018E462F20;
        v50 = 0xD000000000000016;
      }

      v125 = v50;
      v126 = v105;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v106 = v125;
      v107 = v126;
      sub_18E3FDB10();
      swift_allocError();
      *v108 = v106;
      *(v108 + 8) = v107;
      *(v108 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v112)
    {
    }

    else
    {
      v42 = 0xD000000000000016;
      v44 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v66 = v45;

    v67 = sub_18E4263E4();
    v68 = v66;
    v69 = v123;
    v70 = sub_18E424758(v42, v44, v67, v45);
    if (v69)
    {

      return;
    }

    v71 = *(v70 + 16);
    v72 = v109;
    sub_18E24852C();
    v74 = v73;

    v123 = 0;
    v110 = *(v124 + 16);
    v97 = v127;
    v58 = v119;
    v110(v127, v72, v119);
    v98 = [v74 metadata];
    v111 = sub_18E44E98C();

    v56 = v97;

    v112 = *(v124 + 8);
    (v112)(v72, v58);
    v59 = v110;
  }

  v60 = v113;
  v61 = v120;
  v110 = v59;
  v59(v120, v56, v58);
  v62 = v114;
  sub_18E249148(v61, v114, type metadata accessor for ModelConfigurationReplacementAssetContents);
  v63 = v115;
  sub_18E249148(v62, v115, type metadata accessor for ModelConfigurationReplacementAssetContents);

  v64 = v116;
  sub_18E42F494(0, 0, 1, v63, v111, v60 | 0x8000000000000000, v116 & 1, v118);
  sub_18E2491F8(v62, type metadata accessor for ModelConfigurationReplacementAssetContents);
  if (v64)
  {
    v65 = v123;
    sub_18E204B54();
    if (v65)
    {
      sub_18E1E8EEC(v118, &qword_1EABE1C10, &qword_18E4E3960);
      sub_18E2491F8(v61, type metadata accessor for ModelConfigurationReplacementAssetContents);
      (v112)(v127, v58);
      return;
    }

    v123 = 0;
  }

  v75 = v127;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v76 = sub_18E44E83C();
  sub_18E1C95EC(v76, qword_1ED6A9870);
  v77 = v117;
  v110(v117, v75, v58);
  sub_18E43E25C(v5, &v125);
  v78 = sub_18E44E80C();
  v79 = v58;
  v80 = sub_18E44EE2C();
  if (os_log_type_enabled(v78, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v125 = v82;
    *v81 = 136315394;
    v83 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v83 || (sub_18E44F3CC() & 1) != 0)
    {
      v84 = v121;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v122 = v86;
      v84 = v87;
    }

    sub_18E2CF438(v5);
    v88 = sub_18E1C9624(v122, v84, &v125);

    *(v81 + 4) = v88;
    *(v81 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v89 = v117;
    v90 = v119;
    v91 = sub_18E44F39C();
    v93 = v92;
    v94 = v89;
    v95 = v112;
    (v112)(v94, v90);
    v96 = sub_18E1C9624(v91, v93, &v125);

    *(v81 + 14) = v96;
    _os_log_impl(&dword_18E1C1000, v78, v80, "fetchLockedAsset for %s successfully returning asset from URL: %s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v82, -1, -1);
    MEMORY[0x193ACD400](v81, -1, -1);

    sub_18E2491F8(v120, type metadata accessor for ModelConfigurationReplacementAssetContents);
    v95(v127, v90);
  }

  else
  {
    sub_18E2CF438(v5);

    v85 = v112;
    (v112)(v77, v79);
    sub_18E2491F8(v61, type metadata accessor for ModelConfigurationReplacementAssetContents);
    v85(v75, v79);
  }
}

void sub_18E40ADC8(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v116 = a2;
  v118 = a3;
  v7 = type metadata accessor for LLMDraftModelAssetContents(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v114 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v109 - v12;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v109 - v14;
  v16 = sub_18E44E46C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18E44E54C();
  v124 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v109 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v127 = &v109 - v28;
  v122 = *(v5 + 32);
  v29 = *(v5 + 40);
  v30 = *(v5 + 56);
  v123 = v4;
  v121 = v29;
  v119 = v26;
  v117 = v31;
  v113 = a1;
  if (v30)
  {
    v32 = *MEMORY[0x1E6968F58];
    v112 = v17;
    v33 = *(v17 + 104);
    v33(v19, v32, v16);
    sub_18E201DC8(v15, 1, 1, v20);
    sub_18E44E51C();
    v34 = *(v5 + 200);
    v35 = *(v5 + 208);
    v110 = v5;
    v36 = v34 == 0x636972656E6567 && v35 == 0xE700000000000000;
    if (v36 || (sub_18E44F3CC() & 1) != 0)
    {
      v37 = v121;

      v38 = v122;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v37 = v54;
    }

    v125 = v38;
    v126 = v37;
    v33(v19, *MEMORY[0x1E6968F70], v16);
    sub_18E24D39C();
    v55 = v127;
    sub_18E44E53C();
    (*(v112 + 8))(v19, v16);
    v56 = v55;

    v57 = v124;
    v58 = v119;
    v112 = *(v124 + 8);
    (v112)(v25, v119);
    v111 = sub_18E44E9AC();
    v59 = *(v57 + 16);
    v5 = v110;
  }

  else
  {
    v109 = v27;
    v39 = *(v5 + 120);
    v40 = *(v5 + 128);
    v41 = *(a1 + 16);
    v112 = *(v5 + 96);
    if (v112)
    {

      v42 = v39;
      v43 = v40;
    }

    else
    {
      v42 = v39;
      v39 = 0xD000000000000016;
      v43 = 0x800000018E462F20;
    }

    v44 = v40;

    v45 = sub_18E248038(v39, v43, v41);

    if (!v45)
    {
      v127 = v40;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v46 = 0xD000000000000016;
      v47 = sub_18E44E83C();
      sub_18E1C95EC(v47, qword_1ED6A9870);
      sub_18E43E4C0(v5, &v125);
      sub_18E43E4C0(v5, &v125);
      v48 = sub_18E44E80C();
      v49 = sub_18E44EE0C();
      v50 = v42;
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v125 = v52;
        *v51 = 136315394;
        v111 = v50;
        if (v112)
        {

          v53 = v127;

          v46 = v50;
        }

        else
        {
          v53 = 0x800000018E462F20;
        }

        sub_18E2CF5A0(v5);

        v99 = sub_18E1C9624(v46, v53, &v125);

        *(v51 + 4) = v99;
        *(v51 + 12) = 2080;
        v100 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v100 || (sub_18E44F3CC() & 1) != 0)
        {
          v101 = v121;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v122 = v102;
          v101 = v103;
        }

        v50 = v111;
        sub_18E2CF5A0(v5);
        v104 = sub_18E1C9624(v122, v101, &v125);

        *(v51 + 14) = v104;
        _os_log_impl(&dword_18E1C1000, v48, v49, "Failed to find token for asset set: %s for %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v52, -1, -1);
        MEMORY[0x193ACD400](v51, -1, -1);
      }

      else
      {

        sub_18E2CF5A0(v5);
        sub_18E2CF5A0(v5);
      }

      v125 = 0;
      v126 = 0xE000000000000000;
      sub_18E44EFFC();

      v105 = v127;
      if (v112)
      {
      }

      else
      {
        v105 = 0x800000018E462F20;
        v50 = 0xD000000000000016;
      }

      v125 = v50;
      v126 = v105;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v106 = v125;
      v107 = v126;
      sub_18E3FDB10();
      swift_allocError();
      *v108 = v106;
      *(v108 + 8) = v107;
      *(v108 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v112)
    {
    }

    else
    {
      v42 = 0xD000000000000016;
      v44 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v66 = v45;

    v67 = sub_18E426744();
    v68 = v66;
    v69 = v123;
    v70 = sub_18E424758(v42, v44, v67, v45);
    if (v69)
    {

      return;
    }

    v71 = *(v70 + 16);
    v72 = v109;
    sub_18E24852C();
    v74 = v73;

    v123 = 0;
    v110 = *(v124 + 16);
    v97 = v127;
    v58 = v119;
    v110(v127, v72, v119);
    v98 = [v74 metadata];
    v111 = sub_18E44E98C();

    v56 = v97;

    v112 = *(v124 + 8);
    (v112)(v72, v58);
    v59 = v110;
  }

  v60 = v113;
  v61 = v120;
  v110 = v59;
  v59(v120, v56, v58);
  v62 = v114;
  sub_18E249148(v61, v114, type metadata accessor for LLMDraftModelAssetContents);
  v63 = v115;
  sub_18E249148(v62, v115, type metadata accessor for LLMDraftModelAssetContents);

  v64 = v116;
  sub_18E42F908(0, 0, 1, v63, v111, v60 | 0x8000000000000000, v116 & 1, v118);
  sub_18E2491F8(v62, type metadata accessor for LLMDraftModelAssetContents);
  if (v64)
  {
    v65 = v123;
    sub_18E204B54();
    if (v65)
    {
      sub_18E1E8EEC(v118, &qword_1EABE1B78, &qword_18E4E3990);
      sub_18E2491F8(v61, type metadata accessor for LLMDraftModelAssetContents);
      (v112)(v127, v58);
      return;
    }

    v123 = 0;
  }

  v75 = v127;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v76 = sub_18E44E83C();
  sub_18E1C95EC(v76, qword_1ED6A9870);
  v77 = v117;
  v110(v117, v75, v58);
  sub_18E43E4C0(v5, &v125);
  v78 = sub_18E44E80C();
  v79 = v58;
  v80 = sub_18E44EE2C();
  if (os_log_type_enabled(v78, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v125 = v82;
    *v81 = 136315394;
    v83 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v83 || (sub_18E44F3CC() & 1) != 0)
    {
      v84 = v121;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v122 = v86;
      v84 = v87;
    }

    sub_18E2CF5A0(v5);
    v88 = sub_18E1C9624(v122, v84, &v125);

    *(v81 + 4) = v88;
    *(v81 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v89 = v117;
    v90 = v119;
    v91 = sub_18E44F39C();
    v93 = v92;
    v94 = v89;
    v95 = v112;
    (v112)(v94, v90);
    v96 = sub_18E1C9624(v91, v93, &v125);

    *(v81 + 14) = v96;
    _os_log_impl(&dword_18E1C1000, v78, v80, "fetchLockedAsset for %s successfully returning asset from URL: %s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v82, -1, -1);
    MEMORY[0x193ACD400](v81, -1, -1);

    sub_18E2491F8(v120, type metadata accessor for LLMDraftModelAssetContents);
    v95(v127, v90);
  }

  else
  {
    sub_18E2CF5A0(v5);

    v85 = v112;
    (v112)(v77, v79);
    sub_18E2491F8(v61, type metadata accessor for LLMDraftModelAssetContents);
    v85(v75, v79);
  }
}

void sub_18E40BD20(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v116 = a2;
  v118 = a3;
  v7 = type metadata accessor for DiffusionModelAssetContents(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v114 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v109 - v12;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v109 - v14;
  v16 = sub_18E44E46C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18E44E54C();
  v124 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v109 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v127 = &v109 - v28;
  v122 = *(v5 + 32);
  v29 = *(v5 + 40);
  v30 = *(v5 + 56);
  v123 = v4;
  v121 = v29;
  v119 = v26;
  v117 = v31;
  v113 = a1;
  if (v30)
  {
    v32 = *MEMORY[0x1E6968F58];
    v112 = v17;
    v33 = *(v17 + 104);
    v33(v19, v32, v16);
    sub_18E201DC8(v15, 1, 1, v20);
    sub_18E44E51C();
    v34 = *(v5 + 200);
    v35 = *(v5 + 208);
    v110 = v5;
    v36 = v34 == 0x636972656E6567 && v35 == 0xE700000000000000;
    if (v36 || (sub_18E44F3CC() & 1) != 0)
    {
      v37 = v121;

      v38 = v122;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v37 = v54;
    }

    v125 = v38;
    v126 = v37;
    v33(v19, *MEMORY[0x1E6968F70], v16);
    sub_18E24D39C();
    v55 = v127;
    sub_18E44E53C();
    (*(v112 + 8))(v19, v16);
    v56 = v55;

    v57 = v124;
    v58 = v119;
    v112 = *(v124 + 8);
    (v112)(v25, v119);
    v111 = sub_18E44E9AC();
    v59 = *(v57 + 16);
    v5 = v110;
  }

  else
  {
    v109 = v27;
    v39 = *(v5 + 120);
    v40 = *(v5 + 128);
    v41 = *(a1 + 16);
    v112 = *(v5 + 96);
    if (v112)
    {

      v42 = v39;
      v43 = v40;
    }

    else
    {
      v42 = v39;
      v39 = 0xD000000000000016;
      v43 = 0x800000018E462F20;
    }

    v44 = v40;

    v45 = sub_18E248038(v39, v43, v41);

    if (!v45)
    {
      v127 = v40;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v46 = 0xD000000000000016;
      v47 = sub_18E44E83C();
      sub_18E1C95EC(v47, qword_1ED6A9870);
      sub_18E43EE6C(v5, &v125);
      sub_18E43EE6C(v5, &v125);
      v48 = sub_18E44E80C();
      v49 = sub_18E44EE0C();
      v50 = v42;
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v125 = v52;
        *v51 = 136315394;
        v111 = v50;
        if (v112)
        {

          v53 = v127;

          v46 = v50;
        }

        else
        {
          v53 = 0x800000018E462F20;
        }

        sub_18E2CFB70(v5);

        v99 = sub_18E1C9624(v46, v53, &v125);

        *(v51 + 4) = v99;
        *(v51 + 12) = 2080;
        v100 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v100 || (sub_18E44F3CC() & 1) != 0)
        {
          v101 = v121;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v122 = v102;
          v101 = v103;
        }

        v50 = v111;
        sub_18E2CFB70(v5);
        v104 = sub_18E1C9624(v122, v101, &v125);

        *(v51 + 14) = v104;
        _os_log_impl(&dword_18E1C1000, v48, v49, "Failed to find token for asset set: %s for %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v52, -1, -1);
        MEMORY[0x193ACD400](v51, -1, -1);
      }

      else
      {

        sub_18E2CFB70(v5);
        sub_18E2CFB70(v5);
      }

      v125 = 0;
      v126 = 0xE000000000000000;
      sub_18E44EFFC();

      v105 = v127;
      if (v112)
      {
      }

      else
      {
        v105 = 0x800000018E462F20;
        v50 = 0xD000000000000016;
      }

      v125 = v50;
      v126 = v105;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v106 = v125;
      v107 = v126;
      sub_18E3FDB10();
      swift_allocError();
      *v108 = v106;
      *(v108 + 8) = v107;
      *(v108 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v112)
    {
    }

    else
    {
      v42 = 0xD000000000000016;
      v44 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v66 = v45;

    v67 = sub_18E426AA4();
    v68 = v66;
    v69 = v123;
    v70 = sub_18E424758(v42, v44, v67, v45);
    if (v69)
    {

      return;
    }

    v71 = *(v70 + 16);
    v72 = v109;
    sub_18E24852C();
    v74 = v73;

    v123 = 0;
    v110 = *(v124 + 16);
    v97 = v127;
    v58 = v119;
    v110(v127, v72, v119);
    v98 = [v74 metadata];
    v111 = sub_18E44E98C();

    v56 = v97;

    v112 = *(v124 + 8);
    (v112)(v72, v58);
    v59 = v110;
  }

  v60 = v113;
  v61 = v120;
  v110 = v59;
  v59(v120, v56, v58);
  v62 = v114;
  sub_18E249148(v61, v114, type metadata accessor for DiffusionModelAssetContents);
  v63 = v115;
  sub_18E249148(v62, v115, type metadata accessor for DiffusionModelAssetContents);

  v64 = v116;
  sub_18E42FD7C(0, 0, 1, v63, v111, v60 | 0x8000000000000000, v116 & 1, v118);
  sub_18E2491F8(v62, type metadata accessor for DiffusionModelAssetContents);
  if (v64)
  {
    v65 = v123;
    sub_18E204B54();
    if (v65)
    {
      sub_18E1E8EEC(v118, &qword_1EABE18D0, &qword_18E4E3A60);
      sub_18E2491F8(v61, type metadata accessor for DiffusionModelAssetContents);
      (v112)(v127, v58);
      return;
    }

    v123 = 0;
  }

  v75 = v127;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v76 = sub_18E44E83C();
  sub_18E1C95EC(v76, qword_1ED6A9870);
  v77 = v117;
  v110(v117, v75, v58);
  sub_18E43EE6C(v5, &v125);
  v78 = sub_18E44E80C();
  v79 = v58;
  v80 = sub_18E44EE2C();
  if (os_log_type_enabled(v78, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v125 = v82;
    *v81 = 136315394;
    v83 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v83 || (sub_18E44F3CC() & 1) != 0)
    {
      v84 = v121;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v122 = v86;
      v84 = v87;
    }

    sub_18E2CFB70(v5);
    v88 = sub_18E1C9624(v122, v84, &v125);

    *(v81 + 4) = v88;
    *(v81 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v89 = v117;
    v90 = v119;
    v91 = sub_18E44F39C();
    v93 = v92;
    v94 = v89;
    v95 = v112;
    (v112)(v94, v90);
    v96 = sub_18E1C9624(v91, v93, &v125);

    *(v81 + 14) = v96;
    _os_log_impl(&dword_18E1C1000, v78, v80, "fetchLockedAsset for %s successfully returning asset from URL: %s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v82, -1, -1);
    MEMORY[0x193ACD400](v81, -1, -1);

    sub_18E2491F8(v120, type metadata accessor for DiffusionModelAssetContents);
    v95(v127, v90);
  }

  else
  {
    sub_18E2CFB70(v5);

    v85 = v112;
    (v112)(v77, v79);
    sub_18E2491F8(v61, type metadata accessor for DiffusionModelAssetContents);
    v85(v75, v79);
  }
}

void sub_18E40CC78(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v116 = a2;
  v118 = a3;
  v7 = type metadata accessor for MotionAssetContents(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v114 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v109 - v12;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v109 - v14;
  v16 = sub_18E44E46C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18E44E54C();
  v124 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v109 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v127 = &v109 - v28;
  v122 = *(v5 + 32);
  v29 = *(v5 + 40);
  v30 = *(v5 + 56);
  v123 = v4;
  v121 = v29;
  v119 = v26;
  v117 = v31;
  v113 = a1;
  if (v30)
  {
    v32 = *MEMORY[0x1E6968F58];
    v112 = v17;
    v33 = *(v17 + 104);
    v33(v19, v32, v16);
    sub_18E201DC8(v15, 1, 1, v20);
    sub_18E44E51C();
    v34 = *(v5 + 200);
    v35 = *(v5 + 208);
    v110 = v5;
    v36 = v34 == 0x636972656E6567 && v35 == 0xE700000000000000;
    if (v36 || (sub_18E44F3CC() & 1) != 0)
    {
      v37 = v121;

      v38 = v122;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v37 = v54;
    }

    v125 = v38;
    v126 = v37;
    v33(v19, *MEMORY[0x1E6968F70], v16);
    sub_18E24D39C();
    v55 = v127;
    sub_18E44E53C();
    (*(v112 + 8))(v19, v16);
    v56 = v55;

    v57 = v124;
    v58 = v119;
    v112 = *(v124 + 8);
    (v112)(v25, v119);
    v111 = sub_18E44E9AC();
    v59 = *(v57 + 16);
    v5 = v110;
  }

  else
  {
    v109 = v27;
    v39 = *(v5 + 120);
    v40 = *(v5 + 128);
    v41 = *(a1 + 16);
    v112 = *(v5 + 96);
    if (v112)
    {

      v42 = v39;
      v43 = v40;
    }

    else
    {
      v42 = v39;
      v39 = 0xD000000000000016;
      v43 = 0x800000018E462F20;
    }

    v44 = v40;

    v45 = sub_18E248038(v39, v43, v41);

    if (!v45)
    {
      v127 = v40;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v46 = 0xD000000000000016;
      v47 = sub_18E44E83C();
      sub_18E1C95EC(v47, qword_1ED6A9870);
      sub_18E43E0C4(v5, &v125);
      sub_18E43E0C4(v5, &v125);
      v48 = sub_18E44E80C();
      v49 = sub_18E44EE0C();
      v50 = v42;
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v125 = v52;
        *v51 = 136315394;
        v111 = v50;
        if (v112)
        {

          v53 = v127;

          v46 = v50;
        }

        else
        {
          v53 = 0x800000018E462F20;
        }

        sub_18E2CF378(v5);

        v99 = sub_18E1C9624(v46, v53, &v125);

        *(v51 + 4) = v99;
        *(v51 + 12) = 2080;
        v100 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v100 || (sub_18E44F3CC() & 1) != 0)
        {
          v101 = v121;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v122 = v102;
          v101 = v103;
        }

        v50 = v111;
        sub_18E2CF378(v5);
        v104 = sub_18E1C9624(v122, v101, &v125);

        *(v51 + 14) = v104;
        _os_log_impl(&dword_18E1C1000, v48, v49, "Failed to find token for asset set: %s for %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v52, -1, -1);
        MEMORY[0x193ACD400](v51, -1, -1);
      }

      else
      {

        sub_18E2CF378(v5);
        sub_18E2CF378(v5);
      }

      v125 = 0;
      v126 = 0xE000000000000000;
      sub_18E44EFFC();

      v105 = v127;
      if (v112)
      {
      }

      else
      {
        v105 = 0x800000018E462F20;
        v50 = 0xD000000000000016;
      }

      v125 = v50;
      v126 = v105;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v106 = v125;
      v107 = v126;
      sub_18E3FDB10();
      swift_allocError();
      *v108 = v106;
      *(v108 + 8) = v107;
      *(v108 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v112)
    {
    }

    else
    {
      v42 = 0xD000000000000016;
      v44 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v66 = v45;

    v67 = sub_18E426E04();
    v68 = v66;
    v69 = v123;
    v70 = sub_18E424758(v42, v44, v67, v45);
    if (v69)
    {

      return;
    }

    v71 = *(v70 + 16);
    v72 = v109;
    sub_18E24852C();
    v74 = v73;

    v123 = 0;
    v110 = *(v124 + 16);
    v97 = v127;
    v58 = v119;
    v110(v127, v72, v119);
    v98 = [v74 metadata];
    v111 = sub_18E44E98C();

    v56 = v97;

    v112 = *(v124 + 8);
    (v112)(v72, v58);
    v59 = v110;
  }

  v60 = v113;
  v61 = v120;
  v110 = v59;
  v59(v120, v56, v58);
  v62 = v114;
  sub_18E249148(v61, v114, type metadata accessor for MotionAssetContents);
  v63 = v115;
  sub_18E249148(v62, v115, type metadata accessor for MotionAssetContents);

  v64 = v116;
  sub_18E4301F0(0, 0, 1, v63, v111, v60 | 0x8000000000000000, v116 & 1, v118);
  sub_18E2491F8(v62, type metadata accessor for MotionAssetContents);
  if (v64)
  {
    v65 = v123;
    sub_18E204B54();
    if (v65)
    {
      sub_18E1E8EEC(v118, &qword_1EABE1C50, &qword_18E4E3940);
      sub_18E2491F8(v61, type metadata accessor for MotionAssetContents);
      (v112)(v127, v58);
      return;
    }

    v123 = 0;
  }

  v75 = v127;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v76 = sub_18E44E83C();
  sub_18E1C95EC(v76, qword_1ED6A9870);
  v77 = v117;
  v110(v117, v75, v58);
  sub_18E43E0C4(v5, &v125);
  v78 = sub_18E44E80C();
  v79 = v58;
  v80 = sub_18E44EE2C();
  if (os_log_type_enabled(v78, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v125 = v82;
    *v81 = 136315394;
    v83 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v83 || (sub_18E44F3CC() & 1) != 0)
    {
      v84 = v121;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v122 = v86;
      v84 = v87;
    }

    sub_18E2CF378(v5);
    v88 = sub_18E1C9624(v122, v84, &v125);

    *(v81 + 4) = v88;
    *(v81 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v89 = v117;
    v90 = v119;
    v91 = sub_18E44F39C();
    v93 = v92;
    v94 = v89;
    v95 = v112;
    (v112)(v94, v90);
    v96 = sub_18E1C9624(v91, v93, &v125);

    *(v81 + 14) = v96;
    _os_log_impl(&dword_18E1C1000, v78, v80, "fetchLockedAsset for %s successfully returning asset from URL: %s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v82, -1, -1);
    MEMORY[0x193ACD400](v81, -1, -1);

    sub_18E2491F8(v120, type metadata accessor for MotionAssetContents);
    v95(v127, v90);
  }

  else
  {
    sub_18E2CF378(v5);

    v85 = v112;
    (v112)(v77, v79);
    sub_18E2491F8(v61, type metadata accessor for MotionAssetContents);
    v85(v75, v79);
  }
}

void sub_18E40DBD0(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v116 = a2;
  v118 = a3;
  v7 = type metadata accessor for LLMAdapterAssetContents(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v114 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v109 - v12;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v109 - v14;
  v16 = sub_18E44E46C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18E44E54C();
  v124 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v109 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v127 = &v109 - v28;
  v122 = *(v5 + 32);
  v29 = *(v5 + 40);
  v30 = *(v5 + 56);
  v123 = v4;
  v121 = v29;
  v119 = v26;
  v117 = v31;
  v113 = a1;
  if (v30)
  {
    v32 = *MEMORY[0x1E6968F58];
    v112 = v17;
    v33 = *(v17 + 104);
    v33(v19, v32, v16);
    sub_18E201DC8(v15, 1, 1, v20);
    sub_18E44E51C();
    v34 = *(v5 + 200);
    v35 = *(v5 + 208);
    v110 = v5;
    v36 = v34 == 0x636972656E6567 && v35 == 0xE700000000000000;
    if (v36 || (sub_18E44F3CC() & 1) != 0)
    {
      v37 = v121;

      v38 = v122;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v37 = v54;
    }

    v125 = v38;
    v126 = v37;
    v33(v19, *MEMORY[0x1E6968F70], v16);
    sub_18E24D39C();
    v55 = v127;
    sub_18E44E53C();
    (*(v112 + 8))(v19, v16);
    v56 = v55;

    v57 = v124;
    v58 = v119;
    v112 = *(v124 + 8);
    (v112)(v25, v119);
    v111 = sub_18E44E9AC();
    v59 = *(v57 + 16);
    v5 = v110;
  }

  else
  {
    v109 = v27;
    v39 = *(v5 + 120);
    v40 = *(v5 + 128);
    v41 = *(a1 + 16);
    v112 = *(v5 + 96);
    if (v112)
    {

      v42 = v39;
      v43 = v40;
    }

    else
    {
      v42 = v39;
      v39 = 0xD000000000000016;
      v43 = 0x800000018E462F20;
    }

    v44 = v40;

    v45 = sub_18E248038(v39, v43, v41);

    if (!v45)
    {
      v127 = v40;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v46 = 0xD000000000000016;
      v47 = sub_18E44E83C();
      sub_18E1C95EC(v47, qword_1ED6A9870);
      sub_18E43E658(v5, &v125);
      sub_18E43E658(v5, &v125);
      v48 = sub_18E44E80C();
      v49 = sub_18E44EE0C();
      v50 = v42;
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v125 = v52;
        *v51 = 136315394;
        v111 = v50;
        if (v112)
        {

          v53 = v127;

          v46 = v50;
        }

        else
        {
          v53 = 0x800000018E462F20;
        }

        sub_18E2CF6D8(v5);

        v99 = sub_18E1C9624(v46, v53, &v125);

        *(v51 + 4) = v99;
        *(v51 + 12) = 2080;
        v100 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v100 || (sub_18E44F3CC() & 1) != 0)
        {
          v101 = v121;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v122 = v102;
          v101 = v103;
        }

        v50 = v111;
        sub_18E2CF6D8(v5);
        v104 = sub_18E1C9624(v122, v101, &v125);

        *(v51 + 14) = v104;
        _os_log_impl(&dword_18E1C1000, v48, v49, "Failed to find token for asset set: %s for %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v52, -1, -1);
        MEMORY[0x193ACD400](v51, -1, -1);
      }

      else
      {

        sub_18E2CF6D8(v5);
        sub_18E2CF6D8(v5);
      }

      v125 = 0;
      v126 = 0xE000000000000000;
      sub_18E44EFFC();

      v105 = v127;
      if (v112)
      {
      }

      else
      {
        v105 = 0x800000018E462F20;
        v50 = 0xD000000000000016;
      }

      v125 = v50;
      v126 = v105;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v106 = v125;
      v107 = v126;
      sub_18E3FDB10();
      swift_allocError();
      *v108 = v106;
      *(v108 + 8) = v107;
      *(v108 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v112)
    {
    }

    else
    {
      v42 = 0xD000000000000016;
      v44 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v66 = v45;

    v67 = sub_18E427164();
    v68 = v66;
    v69 = v123;
    v70 = sub_18E424758(v42, v44, v67, v45);
    if (v69)
    {

      return;
    }

    v71 = *(v70 + 16);
    v72 = v109;
    sub_18E24852C();
    v74 = v73;

    v123 = 0;
    v110 = *(v124 + 16);
    v97 = v127;
    v58 = v119;
    v110(v127, v72, v119);
    v98 = [v74 metadata];
    v111 = sub_18E44E98C();

    v56 = v97;

    v112 = *(v124 + 8);
    (v112)(v72, v58);
    v59 = v110;
  }

  v60 = v113;
  v61 = v120;
  v110 = v59;
  v59(v120, v56, v58);
  v62 = v114;
  sub_18E249148(v61, v114, type metadata accessor for LLMAdapterAssetContents);
  v63 = v115;
  sub_18E249148(v62, v115, type metadata accessor for LLMAdapterAssetContents);

  v64 = v116;
  sub_18E430F4C(0, 0, 1, v63, v111, v60 | 0x8000000000000000, v116 & 1, v118);
  sub_18E2491F8(v62, type metadata accessor for LLMAdapterAssetContents);
  if (v64)
  {
    v65 = v123;
    sub_18E204B54();
    if (v65)
    {
      sub_18E1E8EEC(v118, &qword_1EABE1AC0, &qword_18E4A24B0);
      sub_18E2491F8(v61, type metadata accessor for LLMAdapterAssetContents);
      (v112)(v127, v58);
      return;
    }

    v123 = 0;
  }

  v75 = v127;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v76 = sub_18E44E83C();
  sub_18E1C95EC(v76, qword_1ED6A9870);
  v77 = v117;
  v110(v117, v75, v58);
  sub_18E43E658(v5, &v125);
  v78 = sub_18E44E80C();
  v79 = v58;
  v80 = sub_18E44EE2C();
  if (os_log_type_enabled(v78, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v125 = v82;
    *v81 = 136315394;
    v83 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v83 || (sub_18E44F3CC() & 1) != 0)
    {
      v84 = v121;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v122 = v86;
      v84 = v87;
    }

    sub_18E2CF6D8(v5);
    v88 = sub_18E1C9624(v122, v84, &v125);

    *(v81 + 4) = v88;
    *(v81 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v89 = v117;
    v90 = v119;
    v91 = sub_18E44F39C();
    v93 = v92;
    v94 = v89;
    v95 = v112;
    (v112)(v94, v90);
    v96 = sub_18E1C9624(v91, v93, &v125);

    *(v81 + 14) = v96;
    _os_log_impl(&dword_18E1C1000, v78, v80, "fetchLockedAsset for %s successfully returning asset from URL: %s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v82, -1, -1);
    MEMORY[0x193ACD400](v81, -1, -1);

    sub_18E2491F8(v120, type metadata accessor for LLMAdapterAssetContents);
    v95(v127, v90);
  }

  else
  {
    sub_18E2CF6D8(v5);

    v85 = v112;
    (v112)(v77, v79);
    sub_18E2491F8(v61, type metadata accessor for LLMAdapterAssetContents);
    v85(v75, v79);
  }
}

void sub_18E40EB28(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v116 = a2;
  v118 = a3;
  v7 = type metadata accessor for ImageFilterAssetContents(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v114 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v109 - v12;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v109 - v14;
  v16 = sub_18E44E46C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18E44E54C();
  v124 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v109 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v127 = &v109 - v28;
  v122 = *(v5 + 32);
  v29 = *(v5 + 40);
  v30 = *(v5 + 56);
  v123 = v4;
  v121 = v29;
  v119 = v26;
  v117 = v31;
  v113 = a1;
  if (v30)
  {
    v32 = *MEMORY[0x1E6968F58];
    v112 = v17;
    v33 = *(v17 + 104);
    v33(v19, v32, v16);
    sub_18E201DC8(v15, 1, 1, v20);
    sub_18E44E51C();
    v34 = *(v5 + 200);
    v35 = *(v5 + 208);
    v110 = v5;
    v36 = v34 == 0x636972656E6567 && v35 == 0xE700000000000000;
    if (v36 || (sub_18E44F3CC() & 1) != 0)
    {
      v37 = v121;

      v38 = v122;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v37 = v54;
    }

    v125 = v38;
    v126 = v37;
    v33(v19, *MEMORY[0x1E6968F70], v16);
    sub_18E24D39C();
    v55 = v127;
    sub_18E44E53C();
    (*(v112 + 8))(v19, v16);
    v56 = v55;

    v57 = v124;
    v58 = v119;
    v112 = *(v124 + 8);
    (v112)(v25, v119);
    v111 = sub_18E44E9AC();
    v59 = *(v57 + 16);
    v5 = v110;
  }

  else
  {
    v109 = v27;
    v39 = *(v5 + 120);
    v40 = *(v5 + 128);
    v41 = *(a1 + 16);
    v112 = *(v5 + 96);
    if (v112)
    {

      v42 = v39;
      v43 = v40;
    }

    else
    {
      v42 = v39;
      v39 = 0xD000000000000016;
      v43 = 0x800000018E462F20;
    }

    v44 = v40;

    v45 = sub_18E248038(v39, v43, v41);

    if (!v45)
    {
      v127 = v40;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v46 = 0xD000000000000016;
      v47 = sub_18E44E83C();
      sub_18E1C95EC(v47, qword_1ED6A9870);
      sub_18E43EA54(v5, &v125);
      sub_18E43EA54(v5, &v125);
      v48 = sub_18E44E80C();
      v49 = sub_18E44EE0C();
      v50 = v42;
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v125 = v52;
        *v51 = 136315394;
        v111 = v50;
        if (v112)
        {

          v53 = v127;

          v46 = v50;
        }

        else
        {
          v53 = 0x800000018E462F20;
        }

        sub_18E2CF930(v5);

        v99 = sub_18E1C9624(v46, v53, &v125);

        *(v51 + 4) = v99;
        *(v51 + 12) = 2080;
        v100 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v100 || (sub_18E44F3CC() & 1) != 0)
        {
          v101 = v121;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v122 = v102;
          v101 = v103;
        }

        v50 = v111;
        sub_18E2CF930(v5);
        v104 = sub_18E1C9624(v122, v101, &v125);

        *(v51 + 14) = v104;
        _os_log_impl(&dword_18E1C1000, v48, v49, "Failed to find token for asset set: %s for %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v52, -1, -1);
        MEMORY[0x193ACD400](v51, -1, -1);
      }

      else
      {

        sub_18E2CF930(v5);
        sub_18E2CF930(v5);
      }

      v125 = 0;
      v126 = 0xE000000000000000;
      sub_18E44EFFC();

      v105 = v127;
      if (v112)
      {
      }

      else
      {
        v105 = 0x800000018E462F20;
        v50 = 0xD000000000000016;
      }

      v125 = v50;
      v126 = v105;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v106 = v125;
      v107 = v126;
      sub_18E3FDB10();
      swift_allocError();
      *v108 = v106;
      *(v108 + 8) = v107;
      *(v108 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v112)
    {
    }

    else
    {
      v42 = 0xD000000000000016;
      v44 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v66 = v45;

    v67 = sub_18E4274C4();
    v68 = v66;
    v69 = v123;
    v70 = sub_18E424758(v42, v44, v67, v45);
    if (v69)
    {

      return;
    }

    v71 = *(v70 + 16);
    v72 = v109;
    sub_18E24852C();
    v74 = v73;

    v123 = 0;
    v110 = *(v124 + 16);
    v97 = v127;
    v58 = v119;
    v110(v127, v72, v119);
    v98 = [v74 metadata];
    v111 = sub_18E44E98C();

    v56 = v97;

    v112 = *(v124 + 8);
    (v112)(v72, v58);
    v59 = v110;
  }

  v60 = v113;
  v61 = v120;
  v110 = v59;
  v59(v120, v56, v58);
  v62 = v114;
  sub_18E249148(v61, v114, type metadata accessor for ImageFilterAssetContents);
  v63 = v115;
  sub_18E249148(v62, v115, type metadata accessor for ImageFilterAssetContents);

  v64 = v116;
  sub_18E4313C0(0, 0, 1, v63, v111, v60 | 0x8000000000000000, v116 & 1, v118);
  sub_18E2491F8(v62, type metadata accessor for ImageFilterAssetContents);
  if (v64)
  {
    v65 = v123;
    sub_18E204B54();
    if (v65)
    {
      sub_18E1E8EEC(v118, &qword_1EABE1A28, &qword_18E4A1160);
      sub_18E2491F8(v61, type metadata accessor for ImageFilterAssetContents);
      (v112)(v127, v58);
      return;
    }

    v123 = 0;
  }

  v75 = v127;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v76 = sub_18E44E83C();
  sub_18E1C95EC(v76, qword_1ED6A9870);
  v77 = v117;
  v110(v117, v75, v58);
  sub_18E43EA54(v5, &v125);
  v78 = sub_18E44E80C();
  v79 = v58;
  v80 = sub_18E44EE2C();
  if (os_log_type_enabled(v78, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v125 = v82;
    *v81 = 136315394;
    v83 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v83 || (sub_18E44F3CC() & 1) != 0)
    {
      v84 = v121;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v122 = v86;
      v84 = v87;
    }

    sub_18E2CF930(v5);
    v88 = sub_18E1C9624(v122, v84, &v125);

    *(v81 + 4) = v88;
    *(v81 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v89 = v117;
    v90 = v119;
    v91 = sub_18E44F39C();
    v93 = v92;
    v94 = v89;
    v95 = v112;
    (v112)(v94, v90);
    v96 = sub_18E1C9624(v91, v93, &v125);

    *(v81 + 14) = v96;
    _os_log_impl(&dword_18E1C1000, v78, v80, "fetchLockedAsset for %s successfully returning asset from URL: %s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v82, -1, -1);
    MEMORY[0x193ACD400](v81, -1, -1);

    sub_18E2491F8(v120, type metadata accessor for ImageFilterAssetContents);
    v95(v127, v90);
  }

  else
  {
    sub_18E2CF930(v5);

    v85 = v112;
    (v112)(v77, v79);
    sub_18E2491F8(v61, type metadata accessor for ImageFilterAssetContents);
    v85(v75, v79);
  }
}

void sub_18E40FA80(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v116 = a2;
  v118 = a3;
  v7 = type metadata accessor for ImageScalerAssetContents(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v114 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v109 - v12;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v109 - v14;
  v16 = sub_18E44E46C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18E44E54C();
  v124 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v109 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v127 = &v109 - v28;
  v122 = *(v5 + 32);
  v29 = *(v5 + 40);
  v30 = *(v5 + 56);
  v123 = v4;
  v121 = v29;
  v119 = v26;
  v117 = v31;
  v113 = a1;
  if (v30)
  {
    v32 = *MEMORY[0x1E6968F58];
    v112 = v17;
    v33 = *(v17 + 104);
    v33(v19, v32, v16);
    sub_18E201DC8(v15, 1, 1, v20);
    sub_18E44E51C();
    v34 = *(v5 + 200);
    v35 = *(v5 + 208);
    v110 = v5;
    v36 = v34 == 0x636972656E6567 && v35 == 0xE700000000000000;
    if (v36 || (sub_18E44F3CC() & 1) != 0)
    {
      v37 = v121;

      v38 = v122;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v37 = v54;
    }

    v125 = v38;
    v126 = v37;
    v33(v19, *MEMORY[0x1E6968F70], v16);
    sub_18E24D39C();
    v55 = v127;
    sub_18E44E53C();
    (*(v112 + 8))(v19, v16);
    v56 = v55;

    v57 = v124;
    v58 = v119;
    v112 = *(v124 + 8);
    (v112)(v25, v119);
    v111 = sub_18E44E9AC();
    v59 = *(v57 + 16);
    v5 = v110;
  }

  else
  {
    v109 = v27;
    v39 = *(v5 + 120);
    v40 = *(v5 + 128);
    v41 = *(a1 + 16);
    v112 = *(v5 + 96);
    if (v112)
    {

      v42 = v39;
      v43 = v40;
    }

    else
    {
      v42 = v39;
      v39 = 0xD000000000000016;
      v43 = 0x800000018E462F20;
    }

    v44 = v40;

    v45 = sub_18E248038(v39, v43, v41);

    if (!v45)
    {
      v127 = v40;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v46 = 0xD000000000000016;
      v47 = sub_18E44E83C();
      sub_18E1C95EC(v47, qword_1ED6A9870);
      sub_18E43E8BC(v5, &v125);
      sub_18E43E8BC(v5, &v125);
      v48 = sub_18E44E80C();
      v49 = sub_18E44EE0C();
      v50 = v42;
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v125 = v52;
        *v51 = 136315394;
        v111 = v50;
        if (v112)
        {

          v53 = v127;

          v46 = v50;
        }

        else
        {
          v53 = 0x800000018E462F20;
        }

        sub_18E2CF870(v5);

        v99 = sub_18E1C9624(v46, v53, &v125);

        *(v51 + 4) = v99;
        *(v51 + 12) = 2080;
        v100 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v100 || (sub_18E44F3CC() & 1) != 0)
        {
          v101 = v121;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v122 = v102;
          v101 = v103;
        }

        v50 = v111;
        sub_18E2CF870(v5);
        v104 = sub_18E1C9624(v122, v101, &v125);

        *(v51 + 14) = v104;
        _os_log_impl(&dword_18E1C1000, v48, v49, "Failed to find token for asset set: %s for %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v52, -1, -1);
        MEMORY[0x193ACD400](v51, -1, -1);
      }

      else
      {

        sub_18E2CF870(v5);
        sub_18E2CF870(v5);
      }

      v125 = 0;
      v126 = 0xE000000000000000;
      sub_18E44EFFC();

      v105 = v127;
      if (v112)
      {
      }

      else
      {
        v105 = 0x800000018E462F20;
        v50 = 0xD000000000000016;
      }

      v125 = v50;
      v126 = v105;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v106 = v125;
      v107 = v126;
      sub_18E3FDB10();
      swift_allocError();
      *v108 = v106;
      *(v108 + 8) = v107;
      *(v108 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v112)
    {
    }

    else
    {
      v42 = 0xD000000000000016;
      v44 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v66 = v45;

    v67 = sub_18E427824();
    v68 = v66;
    v69 = v123;
    v70 = sub_18E424758(v42, v44, v67, v45);
    if (v69)
    {

      return;
    }

    v71 = *(v70 + 16);
    v72 = v109;
    sub_18E24852C();
    v74 = v73;

    v123 = 0;
    v110 = *(v124 + 16);
    v97 = v127;
    v58 = v119;
    v110(v127, v72, v119);
    v98 = [v74 metadata];
    v111 = sub_18E44E98C();

    v56 = v97;

    v112 = *(v124 + 8);
    (v112)(v72, v58);
    v59 = v110;
  }

  v60 = v113;
  v61 = v120;
  v110 = v59;
  v59(v120, v56, v58);
  v62 = v114;
  sub_18E249148(v61, v114, type metadata accessor for ImageScalerAssetContents);
  v63 = v115;
  sub_18E249148(v62, v115, type metadata accessor for ImageScalerAssetContents);

  v64 = v116;
  sub_18E431834(0, 0, 1, v63, v111, v60 | 0x8000000000000000, v116 & 1, v118);
  sub_18E2491F8(v62, type metadata accessor for ImageScalerAssetContents);
  if (v64)
  {
    v65 = v123;
    sub_18E204B54();
    if (v65)
    {
      sub_18E1E8EEC(v118, &qword_1EABE1A98, &qword_18E4A17F0);
      sub_18E2491F8(v61, type metadata accessor for ImageScalerAssetContents);
      (v112)(v127, v58);
      return;
    }

    v123 = 0;
  }

  v75 = v127;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v76 = sub_18E44E83C();
  sub_18E1C95EC(v76, qword_1ED6A9870);
  v77 = v117;
  v110(v117, v75, v58);
  sub_18E43E8BC(v5, &v125);
  v78 = sub_18E44E80C();
  v79 = v58;
  v80 = sub_18E44EE2C();
  if (os_log_type_enabled(v78, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v125 = v82;
    *v81 = 136315394;
    v83 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v83 || (sub_18E44F3CC() & 1) != 0)
    {
      v84 = v121;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v122 = v86;
      v84 = v87;
    }

    sub_18E2CF870(v5);
    v88 = sub_18E1C9624(v122, v84, &v125);

    *(v81 + 4) = v88;
    *(v81 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v89 = v117;
    v90 = v119;
    v91 = sub_18E44F39C();
    v93 = v92;
    v94 = v89;
    v95 = v112;
    (v112)(v94, v90);
    v96 = sub_18E1C9624(v91, v93, &v125);

    *(v81 + 14) = v96;
    _os_log_impl(&dword_18E1C1000, v78, v80, "fetchLockedAsset for %s successfully returning asset from URL: %s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v82, -1, -1);
    MEMORY[0x193ACD400](v81, -1, -1);

    sub_18E2491F8(v120, type metadata accessor for ImageScalerAssetContents);
    v95(v127, v90);
  }

  else
  {
    sub_18E2CF870(v5);

    v85 = v112;
    (v112)(v77, v79);
    sub_18E2491F8(v61, type metadata accessor for ImageScalerAssetContents);
    v85(v75, v79);
  }
}

void sub_18E4109D8(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v116 = a2;
  v118 = a3;
  v7 = type metadata accessor for MotionAdapterAssetContents(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v114 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v109 - v12;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v109 - v14;
  v16 = sub_18E44E46C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18E44E54C();
  v124 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v109 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v127 = &v109 - v28;
  v122 = *(v5 + 32);
  v29 = *(v5 + 40);
  v30 = *(v5 + 56);
  v123 = v4;
  v121 = v29;
  v119 = v26;
  v117 = v31;
  v113 = a1;
  if (v30)
  {
    v32 = *MEMORY[0x1E6968F58];
    v112 = v17;
    v33 = *(v17 + 104);
    v33(v19, v32, v16);
    sub_18E201DC8(v15, 1, 1, v20);
    sub_18E44E51C();
    v34 = *(v5 + 200);
    v35 = *(v5 + 208);
    v110 = v5;
    v36 = v34 == 0x636972656E6567 && v35 == 0xE700000000000000;
    if (v36 || (sub_18E44F3CC() & 1) != 0)
    {
      v37 = v121;

      v38 = v122;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v37 = v54;
    }

    v125 = v38;
    v126 = v37;
    v33(v19, *MEMORY[0x1E6968F70], v16);
    sub_18E24D39C();
    v55 = v127;
    sub_18E44E53C();
    (*(v112 + 8))(v19, v16);
    v56 = v55;

    v57 = v124;
    v58 = v119;
    v112 = *(v124 + 8);
    (v112)(v25, v119);
    v111 = sub_18E44E9AC();
    v59 = *(v57 + 16);
    v5 = v110;
  }

  else
  {
    v109 = v27;
    v39 = *(v5 + 120);
    v40 = *(v5 + 128);
    v41 = *(a1 + 16);
    v112 = *(v5 + 96);
    if (v112)
    {

      v42 = v39;
      v43 = v40;
    }

    else
    {
      v42 = v39;
      v39 = 0xD000000000000016;
      v43 = 0x800000018E462F20;
    }

    v44 = v40;

    v45 = sub_18E248038(v39, v43, v41);

    if (!v45)
    {
      v127 = v40;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v46 = 0xD000000000000016;
      v47 = sub_18E44E83C();
      sub_18E1C95EC(v47, qword_1ED6A9870);
      sub_18E43E190(v5, &v125);
      sub_18E43E190(v5, &v125);
      v48 = sub_18E44E80C();
      v49 = sub_18E44EE0C();
      v50 = v42;
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v125 = v52;
        *v51 = 136315394;
        v111 = v50;
        if (v112)
        {

          v53 = v127;

          v46 = v50;
        }

        else
        {
          v53 = 0x800000018E462F20;
        }

        sub_18E2CF3D8(v5);

        v99 = sub_18E1C9624(v46, v53, &v125);

        *(v51 + 4) = v99;
        *(v51 + 12) = 2080;
        v100 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v100 || (sub_18E44F3CC() & 1) != 0)
        {
          v101 = v121;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v122 = v102;
          v101 = v103;
        }

        v50 = v111;
        sub_18E2CF3D8(v5);
        v104 = sub_18E1C9624(v122, v101, &v125);

        *(v51 + 14) = v104;
        _os_log_impl(&dword_18E1C1000, v48, v49, "Failed to find token for asset set: %s for %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v52, -1, -1);
        MEMORY[0x193ACD400](v51, -1, -1);
      }

      else
      {

        sub_18E2CF3D8(v5);
        sub_18E2CF3D8(v5);
      }

      v125 = 0;
      v126 = 0xE000000000000000;
      sub_18E44EFFC();

      v105 = v127;
      if (v112)
      {
      }

      else
      {
        v105 = 0x800000018E462F20;
        v50 = 0xD000000000000016;
      }

      v125 = v50;
      v126 = v105;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v106 = v125;
      v107 = v126;
      sub_18E3FDB10();
      swift_allocError();
      *v108 = v106;
      *(v108 + 8) = v107;
      *(v108 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v112)
    {
    }

    else
    {
      v42 = 0xD000000000000016;
      v44 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v66 = v45;

    v67 = sub_18E427B84();
    v68 = v66;
    v69 = v123;
    v70 = sub_18E424758(v42, v44, v67, v45);
    if (v69)
    {

      return;
    }

    v71 = *(v70 + 16);
    v72 = v109;
    sub_18E24852C();
    v74 = v73;

    v123 = 0;
    v110 = *(v124 + 16);
    v97 = v127;
    v58 = v119;
    v110(v127, v72, v119);
    v98 = [v74 metadata];
    v111 = sub_18E44E98C();

    v56 = v97;

    v112 = *(v124 + 8);
    (v112)(v72, v58);
    v59 = v110;
  }

  v60 = v113;
  v61 = v120;
  v110 = v59;
  v59(v120, v56, v58);
  v62 = v114;
  sub_18E249148(v61, v114, type metadata accessor for MotionAdapterAssetContents);
  v63 = v115;
  sub_18E249148(v62, v115, type metadata accessor for MotionAdapterAssetContents);

  v64 = v116;
  sub_18E431CA8(0, 0, 1, v63, v111, v60 | 0x8000000000000000, v116 & 1, v118);
  sub_18E2491F8(v62, type metadata accessor for MotionAdapterAssetContents);
  if (v64)
  {
    v65 = v123;
    sub_18E204B54();
    if (v65)
    {
      sub_18E1E8EEC(v118, &qword_1EABE1C30, &qword_18E4E3950);
      sub_18E2491F8(v61, type metadata accessor for MotionAdapterAssetContents);
      (v112)(v127, v58);
      return;
    }

    v123 = 0;
  }

  v75 = v127;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v76 = sub_18E44E83C();
  sub_18E1C95EC(v76, qword_1ED6A9870);
  v77 = v117;
  v110(v117, v75, v58);
  sub_18E43E190(v5, &v125);
  v78 = sub_18E44E80C();
  v79 = v58;
  v80 = sub_18E44EE2C();
  if (os_log_type_enabled(v78, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v125 = v82;
    *v81 = 136315394;
    v83 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v83 || (sub_18E44F3CC() & 1) != 0)
    {
      v84 = v121;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v122 = v86;
      v84 = v87;
    }

    sub_18E2CF3D8(v5);
    v88 = sub_18E1C9624(v122, v84, &v125);

    *(v81 + 4) = v88;
    *(v81 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v89 = v117;
    v90 = v119;
    v91 = sub_18E44F39C();
    v93 = v92;
    v94 = v89;
    v95 = v112;
    (v112)(v94, v90);
    v96 = sub_18E1C9624(v91, v93, &v125);

    *(v81 + 14) = v96;
    _os_log_impl(&dword_18E1C1000, v78, v80, "fetchLockedAsset for %s successfully returning asset from URL: %s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v82, -1, -1);
    MEMORY[0x193ACD400](v81, -1, -1);

    sub_18E2491F8(v120, type metadata accessor for MotionAdapterAssetContents);
    v95(v127, v90);
  }

  else
  {
    sub_18E2CF3D8(v5);

    v85 = v112;
    (v112)(v77, v79);
    sub_18E2491F8(v61, type metadata accessor for MotionAdapterAssetContents);
    v85(v75, v79);
  }
}

void sub_18E411930(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v116 = a2;
  v118 = a3;
  v7 = type metadata accessor for ImageTokenizerAssetContents(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v114 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v109 - v12;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v109 - v14;
  v16 = sub_18E44E46C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18E44E54C();
  v124 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v109 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v127 = &v109 - v28;
  v122 = *(v5 + 32);
  v29 = *(v5 + 40);
  v30 = *(v5 + 56);
  v123 = v4;
  v121 = v29;
  v119 = v26;
  v117 = v31;
  v113 = a1;
  if (v30)
  {
    v32 = *MEMORY[0x1E6968F58];
    v112 = v17;
    v33 = *(v17 + 104);
    v33(v19, v32, v16);
    sub_18E201DC8(v15, 1, 1, v20);
    sub_18E44E51C();
    v34 = *(v5 + 200);
    v35 = *(v5 + 208);
    v110 = v5;
    v36 = v34 == 0x636972656E6567 && v35 == 0xE700000000000000;
    if (v36 || (sub_18E44F3CC() & 1) != 0)
    {
      v37 = v121;

      v38 = v122;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v37 = v54;
    }

    v125 = v38;
    v126 = v37;
    v33(v19, *MEMORY[0x1E6968F70], v16);
    sub_18E24D39C();
    v55 = v127;
    sub_18E44E53C();
    (*(v112 + 8))(v19, v16);
    v56 = v55;

    v57 = v124;
    v58 = v119;
    v112 = *(v124 + 8);
    (v112)(v25, v119);
    v111 = sub_18E44E9AC();
    v59 = *(v57 + 16);
    v5 = v110;
  }

  else
  {
    v109 = v27;
    v39 = *(v5 + 120);
    v40 = *(v5 + 128);
    v41 = *(a1 + 16);
    v112 = *(v5 + 96);
    if (v112)
    {

      v42 = v39;
      v43 = v40;
    }

    else
    {
      v42 = v39;
      v39 = 0xD000000000000016;
      v43 = 0x800000018E462F20;
    }

    v44 = v40;

    v45 = sub_18E248038(v39, v43, v41);

    if (!v45)
    {
      v127 = v40;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v46 = 0xD000000000000016;
      v47 = sub_18E44E83C();
      sub_18E1C95EC(v47, qword_1ED6A9870);
      sub_18E43E724(v5, &v125);
      sub_18E43E724(v5, &v125);
      v48 = sub_18E44E80C();
      v49 = sub_18E44EE0C();
      v50 = v42;
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v125 = v52;
        *v51 = 136315394;
        v111 = v50;
        if (v112)
        {

          v53 = v127;

          v46 = v50;
        }

        else
        {
          v53 = 0x800000018E462F20;
        }

        sub_18E2CF7B0(v5);

        v99 = sub_18E1C9624(v46, v53, &v125);

        *(v51 + 4) = v99;
        *(v51 + 12) = 2080;
        v100 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v100 || (sub_18E44F3CC() & 1) != 0)
        {
          v101 = v121;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v122 = v102;
          v101 = v103;
        }

        v50 = v111;
        sub_18E2CF7B0(v5);
        v104 = sub_18E1C9624(v122, v101, &v125);

        *(v51 + 14) = v104;
        _os_log_impl(&dword_18E1C1000, v48, v49, "Failed to find token for asset set: %s for %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v52, -1, -1);
        MEMORY[0x193ACD400](v51, -1, -1);
      }

      else
      {

        sub_18E2CF7B0(v5);
        sub_18E2CF7B0(v5);
      }

      v125 = 0;
      v126 = 0xE000000000000000;
      sub_18E44EFFC();

      v105 = v127;
      if (v112)
      {
      }

      else
      {
        v105 = 0x800000018E462F20;
        v50 = 0xD000000000000016;
      }

      v125 = v50;
      v126 = v105;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v106 = v125;
      v107 = v126;
      sub_18E3FDB10();
      swift_allocError();
      *v108 = v106;
      *(v108 + 8) = v107;
      *(v108 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v112)
    {
    }

    else
    {
      v42 = 0xD000000000000016;
      v44 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v66 = v45;

    v67 = sub_18E427EE4();
    v68 = v66;
    v69 = v123;
    v70 = sub_18E424758(v42, v44, v67, v45);
    if (v69)
    {

      return;
    }

    v71 = *(v70 + 16);
    v72 = v109;
    sub_18E24852C();
    v74 = v73;

    v123 = 0;
    v110 = *(v124 + 16);
    v97 = v127;
    v58 = v119;
    v110(v127, v72, v119);
    v98 = [v74 metadata];
    v111 = sub_18E44E98C();

    v56 = v97;

    v112 = *(v124 + 8);
    (v112)(v72, v58);
    v59 = v110;
  }

  v60 = v113;
  v61 = v120;
  v110 = v59;
  v59(v120, v56, v58);
  v62 = v114;
  sub_18E249148(v61, v114, type metadata accessor for ImageTokenizerAssetContents);
  v63 = v115;
  sub_18E249148(v62, v115, type metadata accessor for ImageTokenizerAssetContents);

  v64 = v116;
  sub_18E43211C(0, 0, 1, v63, v111, v60 | 0x8000000000000000, v116 & 1, v118);
  sub_18E2491F8(v62, type metadata accessor for ImageTokenizerAssetContents);
  if (v64)
  {
    v65 = v123;
    sub_18E204B54();
    if (v65)
    {
      sub_18E1E8EEC(v118, &qword_1EABE1AA8, &qword_18E4A1ED0);
      sub_18E2491F8(v61, type metadata accessor for ImageTokenizerAssetContents);
      (v112)(v127, v58);
      return;
    }

    v123 = 0;
  }

  v75 = v127;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v76 = sub_18E44E83C();
  sub_18E1C95EC(v76, qword_1ED6A9870);
  v77 = v117;
  v110(v117, v75, v58);
  sub_18E43E724(v5, &v125);
  v78 = sub_18E44E80C();
  v79 = v58;
  v80 = sub_18E44EE2C();
  if (os_log_type_enabled(v78, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v125 = v82;
    *v81 = 136315394;
    v83 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v83 || (sub_18E44F3CC() & 1) != 0)
    {
      v84 = v121;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v122 = v86;
      v84 = v87;
    }

    sub_18E2CF7B0(v5);
    v88 = sub_18E1C9624(v122, v84, &v125);

    *(v81 + 4) = v88;
    *(v81 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v89 = v117;
    v90 = v119;
    v91 = sub_18E44F39C();
    v93 = v92;
    v94 = v89;
    v95 = v112;
    (v112)(v94, v90);
    v96 = sub_18E1C9624(v91, v93, &v125);

    *(v81 + 14) = v96;
    _os_log_impl(&dword_18E1C1000, v78, v80, "fetchLockedAsset for %s successfully returning asset from URL: %s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v82, -1, -1);
    MEMORY[0x193ACD400](v81, -1, -1);

    sub_18E2491F8(v120, type metadata accessor for ImageTokenizerAssetContents);
    v95(v127, v90);
  }

  else
  {
    sub_18E2CF7B0(v5);

    v85 = v112;
    (v112)(v77, v79);
    sub_18E2491F8(v61, type metadata accessor for ImageTokenizerAssetContents);
    v85(v75, v79);
  }
}

void sub_18E412888(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v116 = a2;
  v118 = a3;
  v7 = type metadata accessor for PromptAllowListAssetContents(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v114 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v109 - v12;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v109 - v14;
  v16 = sub_18E44E46C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18E44E54C();
  v124 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v109 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v127 = &v109 - v28;
  v122 = *(v5 + 32);
  v29 = *(v5 + 40);
  v30 = *(v5 + 56);
  v123 = v4;
  v121 = v29;
  v119 = v26;
  v117 = v31;
  v113 = a1;
  if (v30)
  {
    v32 = *MEMORY[0x1E6968F58];
    v112 = v17;
    v33 = *(v17 + 104);
    v33(v19, v32, v16);
    sub_18E201DC8(v15, 1, 1, v20);
    sub_18E44E51C();
    v34 = *(v5 + 200);
    v35 = *(v5 + 208);
    v110 = v5;
    v36 = v34 == 0x636972656E6567 && v35 == 0xE700000000000000;
    if (v36 || (sub_18E44F3CC() & 1) != 0)
    {
      v37 = v121;

      v38 = v122;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v37 = v54;
    }

    v125 = v38;
    v126 = v37;
    v33(v19, *MEMORY[0x1E6968F70], v16);
    sub_18E24D39C();
    v55 = v127;
    sub_18E44E53C();
    (*(v112 + 8))(v19, v16);
    v56 = v55;

    v57 = v124;
    v58 = v119;
    v112 = *(v124 + 8);
    (v112)(v25, v119);
    v111 = sub_18E44E9AC();
    v59 = *(v57 + 16);
    v5 = v110;
  }

  else
  {
    v109 = v27;
    v39 = *(v5 + 120);
    v40 = *(v5 + 128);
    v41 = *(a1 + 16);
    v112 = *(v5 + 96);
    if (v112)
    {

      v42 = v39;
      v43 = v40;
    }

    else
    {
      v42 = v39;
      v39 = 0xD000000000000016;
      v43 = 0x800000018E462F20;
    }

    v44 = v40;

    v45 = sub_18E248038(v39, v43, v41);

    if (!v45)
    {
      v127 = v40;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v46 = 0xD000000000000016;
      v47 = sub_18E44E83C();
      sub_18E1C95EC(v47, qword_1ED6A9870);
      sub_18E43DFF8(v5, &v125);
      sub_18E43DFF8(v5, &v125);
      v48 = sub_18E44E80C();
      v49 = sub_18E44EE0C();
      v50 = v42;
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v125 = v52;
        *v51 = 136315394;
        v111 = v50;
        if (v112)
        {

          v53 = v127;

          v46 = v50;
        }

        else
        {
          v53 = 0x800000018E462F20;
        }

        sub_18E2CF318(v5);

        v99 = sub_18E1C9624(v46, v53, &v125);

        *(v51 + 4) = v99;
        *(v51 + 12) = 2080;
        v100 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v100 || (sub_18E44F3CC() & 1) != 0)
        {
          v101 = v121;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v122 = v102;
          v101 = v103;
        }

        v50 = v111;
        sub_18E2CF318(v5);
        v104 = sub_18E1C9624(v122, v101, &v125);

        *(v51 + 14) = v104;
        _os_log_impl(&dword_18E1C1000, v48, v49, "Failed to find token for asset set: %s for %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v52, -1, -1);
        MEMORY[0x193ACD400](v51, -1, -1);
      }

      else
      {

        sub_18E2CF318(v5);
        sub_18E2CF318(v5);
      }

      v125 = 0;
      v126 = 0xE000000000000000;
      sub_18E44EFFC();

      v105 = v127;
      if (v112)
      {
      }

      else
      {
        v105 = 0x800000018E462F20;
        v50 = 0xD000000000000016;
      }

      v125 = v50;
      v126 = v105;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v106 = v125;
      v107 = v126;
      sub_18E3FDB10();
      swift_allocError();
      *v108 = v106;
      *(v108 + 8) = v107;
      *(v108 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v112)
    {
    }

    else
    {
      v42 = 0xD000000000000016;
      v44 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v66 = v45;

    v67 = sub_18E428244();
    v68 = v66;
    v69 = v123;
    v70 = sub_18E424758(v42, v44, v67, v45);
    if (v69)
    {

      return;
    }

    v71 = *(v70 + 16);
    v72 = v109;
    sub_18E24852C();
    v74 = v73;

    v123 = 0;
    v110 = *(v124 + 16);
    v97 = v127;
    v58 = v119;
    v110(v127, v72, v119);
    v98 = [v74 metadata];
    v111 = sub_18E44E98C();

    v56 = v97;

    v112 = *(v124 + 8);
    (v112)(v72, v58);
    v59 = v110;
  }

  v60 = v113;
  v61 = v120;
  v110 = v59;
  v59(v120, v56, v58);
  v62 = v114;
  sub_18E249148(v61, v114, type metadata accessor for PromptAllowListAssetContents);
  v63 = v115;
  sub_18E249148(v62, v115, type metadata accessor for PromptAllowListAssetContents);

  v64 = v116;
  sub_18E432590(0, 0, 1, v63, v111, v60 | 0x8000000000000000, v116 & 1, v118);
  sub_18E2491F8(v62, type metadata accessor for PromptAllowListAssetContents);
  if (v64)
  {
    v65 = v123;
    sub_18E204B54();
    if (v65)
    {
      sub_18E1E8EEC(v118, &qword_1EABE1CA8, &qword_18E4E3930);
      sub_18E2491F8(v61, type metadata accessor for PromptAllowListAssetContents);
      (v112)(v127, v58);
      return;
    }

    v123 = 0;
  }

  v75 = v127;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v76 = sub_18E44E83C();
  sub_18E1C95EC(v76, qword_1ED6A9870);
  v77 = v117;
  v110(v117, v75, v58);
  sub_18E43DFF8(v5, &v125);
  v78 = sub_18E44E80C();
  v79 = v58;
  v80 = sub_18E44EE2C();
  if (os_log_type_enabled(v78, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v125 = v82;
    *v81 = 136315394;
    v83 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v83 || (sub_18E44F3CC() & 1) != 0)
    {
      v84 = v121;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v122 = v86;
      v84 = v87;
    }

    sub_18E2CF318(v5);
    v88 = sub_18E1C9624(v122, v84, &v125);

    *(v81 + 4) = v88;
    *(v81 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v89 = v117;
    v90 = v119;
    v91 = sub_18E44F39C();
    v93 = v92;
    v94 = v89;
    v95 = v112;
    (v112)(v94, v90);
    v96 = sub_18E1C9624(v91, v93, &v125);

    *(v81 + 14) = v96;
    _os_log_impl(&dword_18E1C1000, v78, v80, "fetchLockedAsset for %s successfully returning asset from URL: %s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v82, -1, -1);
    MEMORY[0x193ACD400](v81, -1, -1);

    sub_18E2491F8(v120, type metadata accessor for PromptAllowListAssetContents);
    v95(v127, v90);
  }

  else
  {
    sub_18E2CF318(v5);

    v85 = v112;
    (v112)(v77, v79);
    sub_18E2491F8(v61, type metadata accessor for PromptAllowListAssetContents);
    v85(v75, v79);
  }
}

void sub_18E4137E0(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v116 = a2;
  v118 = a3;
  v7 = type metadata accessor for SecureAnalyticsAssetContents(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v114 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v109 - v12;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v109 - v14;
  v16 = sub_18E44E46C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18E44E54C();
  v124 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v109 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v127 = &v109 - v28;
  v122 = *(v5 + 32);
  v29 = *(v5 + 40);
  v30 = *(v5 + 56);
  v123 = v4;
  v121 = v29;
  v119 = v26;
  v117 = v31;
  v113 = a1;
  if (v30)
  {
    v32 = *MEMORY[0x1E6968F58];
    v112 = v17;
    v33 = *(v17 + 104);
    v33(v19, v32, v16);
    sub_18E201DC8(v15, 1, 1, v20);
    sub_18E44E51C();
    v34 = *(v5 + 200);
    v35 = *(v5 + 208);
    v110 = v5;
    v36 = v34 == 0x636972656E6567 && v35 == 0xE700000000000000;
    if (v36 || (sub_18E44F3CC() & 1) != 0)
    {
      v37 = v121;

      v38 = v122;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v37 = v54;
    }

    v125 = v38;
    v126 = v37;
    v33(v19, *MEMORY[0x1E6968F70], v16);
    sub_18E24D39C();
    v55 = v127;
    sub_18E44E53C();
    (*(v112 + 8))(v19, v16);
    v56 = v55;

    v57 = v124;
    v58 = v119;
    v112 = *(v124 + 8);
    (v112)(v25, v119);
    v111 = sub_18E44E9AC();
    v59 = *(v57 + 16);
    v5 = v110;
  }

  else
  {
    v109 = v27;
    v39 = *(v5 + 120);
    v40 = *(v5 + 128);
    v41 = *(a1 + 16);
    v112 = *(v5 + 96);
    if (v112)
    {

      v42 = v39;
      v43 = v40;
    }

    else
    {
      v42 = v39;
      v39 = 0xD000000000000016;
      v43 = 0x800000018E462F20;
    }

    v44 = v40;

    v45 = sub_18E248038(v39, v43, v41);

    if (!v45)
    {
      v127 = v40;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v46 = 0xD000000000000016;
      v47 = sub_18E44E83C();
      sub_18E1C95EC(v47, qword_1ED6A9870);
      sub_18E43DF2C(v5, &v125);
      sub_18E43DF2C(v5, &v125);
      v48 = sub_18E44E80C();
      v49 = sub_18E44EE0C();
      v50 = v42;
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v125 = v52;
        *v51 = 136315394;
        v111 = v50;
        if (v112)
        {

          v53 = v127;

          v46 = v50;
        }

        else
        {
          v53 = 0x800000018E462F20;
        }

        sub_18E2CF2B8(v5);

        v99 = sub_18E1C9624(v46, v53, &v125);

        *(v51 + 4) = v99;
        *(v51 + 12) = 2080;
        v100 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v100 || (sub_18E44F3CC() & 1) != 0)
        {
          v101 = v121;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v122 = v102;
          v101 = v103;
        }

        v50 = v111;
        sub_18E2CF2B8(v5);
        v104 = sub_18E1C9624(v122, v101, &v125);

        *(v51 + 14) = v104;
        _os_log_impl(&dword_18E1C1000, v48, v49, "Failed to find token for asset set: %s for %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v52, -1, -1);
        MEMORY[0x193ACD400](v51, -1, -1);
      }

      else
      {

        sub_18E2CF2B8(v5);
        sub_18E2CF2B8(v5);
      }

      v125 = 0;
      v126 = 0xE000000000000000;
      sub_18E44EFFC();

      v105 = v127;
      if (v112)
      {
      }

      else
      {
        v105 = 0x800000018E462F20;
        v50 = 0xD000000000000016;
      }

      v125 = v50;
      v126 = v105;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v106 = v125;
      v107 = v126;
      sub_18E3FDB10();
      swift_allocError();
      *v108 = v106;
      *(v108 + 8) = v107;
      *(v108 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v112)
    {
    }

    else
    {
      v42 = 0xD000000000000016;
      v44 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v66 = v45;

    v67 = sub_18E4285A4();
    v68 = v66;
    v69 = v123;
    v70 = sub_18E424758(v42, v44, v67, v45);
    if (v69)
    {

      return;
    }

    v71 = *(v70 + 16);
    v72 = v109;
    sub_18E24852C();
    v74 = v73;

    v123 = 0;
    v110 = *(v124 + 16);
    v97 = v127;
    v58 = v119;
    v110(v127, v72, v119);
    v98 = [v74 metadata];
    v111 = sub_18E44E98C();

    v56 = v97;

    v112 = *(v124 + 8);
    (v112)(v72, v58);
    v59 = v110;
  }

  v60 = v113;
  v61 = v120;
  v110 = v59;
  v59(v120, v56, v58);
  v62 = v114;
  sub_18E249148(v61, v114, type metadata accessor for SecureAnalyticsAssetContents);
  v63 = v115;
  sub_18E249148(v62, v115, type metadata accessor for SecureAnalyticsAssetContents);

  v64 = v116;
  sub_18E432A04(0, 0, 1, v63, v111, v60 | 0x8000000000000000, v116 & 1, v118);
  sub_18E2491F8(v62, type metadata accessor for SecureAnalyticsAssetContents);
  if (v64)
  {
    v65 = v123;
    sub_18E204B54();
    if (v65)
    {
      sub_18E1E8EEC(v118, &qword_1EABE1CC8, &qword_18E4E3920);
      sub_18E2491F8(v61, type metadata accessor for SecureAnalyticsAssetContents);
      (v112)(v127, v58);
      return;
    }

    v123 = 0;
  }

  v75 = v127;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v76 = sub_18E44E83C();
  sub_18E1C95EC(v76, qword_1ED6A9870);
  v77 = v117;
  v110(v117, v75, v58);
  sub_18E43DF2C(v5, &v125);
  v78 = sub_18E44E80C();
  v79 = v58;
  v80 = sub_18E44EE2C();
  if (os_log_type_enabled(v78, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v125 = v82;
    *v81 = 136315394;
    v83 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v83 || (sub_18E44F3CC() & 1) != 0)
    {
      v84 = v121;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v122 = v86;
      v84 = v87;
    }

    sub_18E2CF2B8(v5);
    v88 = sub_18E1C9624(v122, v84, &v125);

    *(v81 + 4) = v88;
    *(v81 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v89 = v117;
    v90 = v119;
    v91 = sub_18E44F39C();
    v93 = v92;
    v94 = v89;
    v95 = v112;
    (v112)(v94, v90);
    v96 = sub_18E1C9624(v91, v93, &v125);

    *(v81 + 14) = v96;
    _os_log_impl(&dword_18E1C1000, v78, v80, "fetchLockedAsset for %s successfully returning asset from URL: %s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v82, -1, -1);
    MEMORY[0x193ACD400](v81, -1, -1);

    sub_18E2491F8(v120, type metadata accessor for SecureAnalyticsAssetContents);
    v95(v127, v90);
  }

  else
  {
    sub_18E2CF2B8(v5);

    v85 = v112;
    (v112)(v77, v79);
    sub_18E2491F8(v61, type metadata accessor for SecureAnalyticsAssetContents);
    v85(v75, v79);
  }
}

void sub_18E414738(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v116 = a2;
  v118 = a3;
  v7 = type metadata accessor for DiffusionAdapterAssetContents(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v114 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v109 - v12;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v109 - v14;
  v16 = sub_18E44E46C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18E44E54C();
  v124 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v109 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v127 = &v109 - v28;
  v122 = *(v5 + 32);
  v29 = *(v5 + 40);
  v30 = *(v5 + 56);
  v123 = v4;
  v121 = v29;
  v119 = v26;
  v117 = v31;
  v113 = a1;
  if (v30)
  {
    v32 = *MEMORY[0x1E6968F58];
    v112 = v17;
    v33 = *(v17 + 104);
    v33(v19, v32, v16);
    sub_18E201DC8(v15, 1, 1, v20);
    sub_18E44E51C();
    v34 = *(v5 + 200);
    v35 = *(v5 + 208);
    v110 = v5;
    v36 = v34 == 0x636972656E6567 && v35 == 0xE700000000000000;
    if (v36 || (sub_18E44F3CC() & 1) != 0)
    {
      v37 = v121;

      v38 = v122;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v37 = v54;
    }

    v125 = v38;
    v126 = v37;
    v33(v19, *MEMORY[0x1E6968F70], v16);
    sub_18E24D39C();
    v55 = v127;
    sub_18E44E53C();
    (*(v112 + 8))(v19, v16);
    v56 = v55;

    v57 = v124;
    v58 = v119;
    v112 = *(v124 + 8);
    (v112)(v25, v119);
    v111 = sub_18E44E9AC();
    v59 = *(v57 + 16);
    v5 = v110;
  }

  else
  {
    v109 = v27;
    v39 = *(v5 + 120);
    v40 = *(v5 + 128);
    v41 = *(a1 + 16);
    v112 = *(v5 + 96);
    if (v112)
    {

      v42 = v39;
      v43 = v40;
    }

    else
    {
      v42 = v39;
      v39 = 0xD000000000000016;
      v43 = 0x800000018E462F20;
    }

    v44 = v40;

    v45 = sub_18E248038(v39, v43, v41);

    if (!v45)
    {
      v127 = v40;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v46 = 0xD000000000000016;
      v47 = sub_18E44E83C();
      sub_18E1C95EC(v47, qword_1ED6A9870);
      sub_18E43EF38(v5, &v125);
      sub_18E43EF38(v5, &v125);
      v48 = sub_18E44E80C();
      v49 = sub_18E44EE0C();
      v50 = v42;
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v125 = v52;
        *v51 = 136315394;
        v111 = v50;
        if (v112)
        {

          v53 = v127;

          v46 = v50;
        }

        else
        {
          v53 = 0x800000018E462F20;
        }

        sub_18E2CFBD0(v5);

        v99 = sub_18E1C9624(v46, v53, &v125);

        *(v51 + 4) = v99;
        *(v51 + 12) = 2080;
        v100 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v100 || (sub_18E44F3CC() & 1) != 0)
        {
          v101 = v121;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v122 = v102;
          v101 = v103;
        }

        v50 = v111;
        sub_18E2CFBD0(v5);
        v104 = sub_18E1C9624(v122, v101, &v125);

        *(v51 + 14) = v104;
        _os_log_impl(&dword_18E1C1000, v48, v49, "Failed to find token for asset set: %s for %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v52, -1, -1);
        MEMORY[0x193ACD400](v51, -1, -1);
      }

      else
      {

        sub_18E2CFBD0(v5);
        sub_18E2CFBD0(v5);
      }

      v125 = 0;
      v126 = 0xE000000000000000;
      sub_18E44EFFC();

      v105 = v127;
      if (v112)
      {
      }

      else
      {
        v105 = 0x800000018E462F20;
        v50 = 0xD000000000000016;
      }

      v125 = v50;
      v126 = v105;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v106 = v125;
      v107 = v126;
      sub_18E3FDB10();
      swift_allocError();
      *v108 = v106;
      *(v108 + 8) = v107;
      *(v108 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v112)
    {
    }

    else
    {
      v42 = 0xD000000000000016;
      v44 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v66 = v45;

    v67 = sub_18E428904();
    v68 = v66;
    v69 = v123;
    v70 = sub_18E424758(v42, v44, v67, v45);
    if (v69)
    {

      return;
    }

    v71 = *(v70 + 16);
    v72 = v109;
    sub_18E24852C();
    v74 = v73;

    v123 = 0;
    v110 = *(v124 + 16);
    v97 = v127;
    v58 = v119;
    v110(v127, v72, v119);
    v98 = [v74 metadata];
    v111 = sub_18E44E98C();

    v56 = v97;

    v112 = *(v124 + 8);
    (v112)(v72, v58);
    v59 = v110;
  }

  v60 = v113;
  v61 = v120;
  v110 = v59;
  v59(v120, v56, v58);
  v62 = v114;
  sub_18E249148(v61, v114, type metadata accessor for DiffusionAdapterAssetContents);
  v63 = v115;
  sub_18E249148(v62, v115, type metadata accessor for DiffusionAdapterAssetContents);

  v64 = v116;
  sub_18E432E78(0, 0, 1, v63, v111, v60 | 0x8000000000000000, v116 & 1, v118);
  sub_18E2491F8(v62, type metadata accessor for DiffusionAdapterAssetContents);
  if (v64)
  {
    v65 = v123;
    sub_18E204B54();
    if (v65)
    {
      sub_18E1E8EEC(v118, &qword_1EABE18B8, &qword_18E4E3A70);
      sub_18E2491F8(v61, type metadata accessor for DiffusionAdapterAssetContents);
      (v112)(v127, v58);
      return;
    }

    v123 = 0;
  }

  v75 = v127;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v76 = sub_18E44E83C();
  sub_18E1C95EC(v76, qword_1ED6A9870);
  v77 = v117;
  v110(v117, v75, v58);
  sub_18E43EF38(v5, &v125);
  v78 = sub_18E44E80C();
  v79 = v58;
  v80 = sub_18E44EE2C();
  if (os_log_type_enabled(v78, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v125 = v82;
    *v81 = 136315394;
    v83 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v83 || (sub_18E44F3CC() & 1) != 0)
    {
      v84 = v121;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v122 = v86;
      v84 = v87;
    }

    sub_18E2CFBD0(v5);
    v88 = sub_18E1C9624(v122, v84, &v125);

    *(v81 + 4) = v88;
    *(v81 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v89 = v117;
    v90 = v119;
    v91 = sub_18E44F39C();
    v93 = v92;
    v94 = v89;
    v95 = v112;
    (v112)(v94, v90);
    v96 = sub_18E1C9624(v91, v93, &v125);

    *(v81 + 14) = v96;
    _os_log_impl(&dword_18E1C1000, v78, v80, "fetchLockedAsset for %s successfully returning asset from URL: %s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v82, -1, -1);
    MEMORY[0x193ACD400](v81, -1, -1);

    sub_18E2491F8(v120, type metadata accessor for DiffusionAdapterAssetContents);
    v95(v127, v90);
  }

  else
  {
    sub_18E2CFBD0(v5);

    v85 = v112;
    (v112)(v77, v79);
    sub_18E2491F8(v61, type metadata accessor for DiffusionAdapterAssetContents);
    v85(v75, v79);
  }
}

void sub_18E415690(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v116 = a2;
  v118 = a3;
  v7 = type metadata accessor for ImageMagicCleanUpAssetContents(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v114 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v109 - v12;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v109 - v14;
  v16 = sub_18E44E46C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18E44E54C();
  v124 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v109 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v127 = &v109 - v28;
  v122 = *(v5 + 32);
  v29 = *(v5 + 40);
  v30 = *(v5 + 56);
  v123 = v4;
  v121 = v29;
  v119 = v26;
  v117 = v31;
  v113 = a1;
  if (v30)
  {
    v32 = *MEMORY[0x1E6968F58];
    v112 = v17;
    v33 = *(v17 + 104);
    v33(v19, v32, v16);
    sub_18E201DC8(v15, 1, 1, v20);
    sub_18E44E51C();
    v34 = *(v5 + 200);
    v35 = *(v5 + 208);
    v110 = v5;
    v36 = v34 == 0x636972656E6567 && v35 == 0xE700000000000000;
    if (v36 || (sub_18E44F3CC() & 1) != 0)
    {
      v37 = v121;

      v38 = v122;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v37 = v54;
    }

    v125 = v38;
    v126 = v37;
    v33(v19, *MEMORY[0x1E6968F70], v16);
    sub_18E24D39C();
    v55 = v127;
    sub_18E44E53C();
    (*(v112 + 8))(v19, v16);
    v56 = v55;

    v57 = v124;
    v58 = v119;
    v112 = *(v124 + 8);
    (v112)(v25, v119);
    v111 = sub_18E44E9AC();
    v59 = *(v57 + 16);
    v5 = v110;
  }

  else
  {
    v109 = v27;
    v39 = *(v5 + 120);
    v40 = *(v5 + 128);
    v41 = *(a1 + 16);
    v112 = *(v5 + 96);
    if (v112)
    {

      v42 = v39;
      v43 = v40;
    }

    else
    {
      v42 = v39;
      v39 = 0xD000000000000016;
      v43 = 0x800000018E462F20;
    }

    v44 = v40;

    v45 = sub_18E248038(v39, v43, v41);

    if (!v45)
    {
      v127 = v40;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v46 = 0xD000000000000016;
      v47 = sub_18E44E83C();
      sub_18E1C95EC(v47, qword_1ED6A9870);
      sub_18E43E988(v5, &v125);
      sub_18E43E988(v5, &v125);
      v48 = sub_18E44E80C();
      v49 = sub_18E44EE0C();
      v50 = v42;
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v125 = v52;
        *v51 = 136315394;
        v111 = v50;
        if (v112)
        {

          v53 = v127;

          v46 = v50;
        }

        else
        {
          v53 = 0x800000018E462F20;
        }

        sub_18E2CF8D0(v5);

        v99 = sub_18E1C9624(v46, v53, &v125);

        *(v51 + 4) = v99;
        *(v51 + 12) = 2080;
        v100 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v100 || (sub_18E44F3CC() & 1) != 0)
        {
          v101 = v121;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v122 = v102;
          v101 = v103;
        }

        v50 = v111;
        sub_18E2CF8D0(v5);
        v104 = sub_18E1C9624(v122, v101, &v125);

        *(v51 + 14) = v104;
        _os_log_impl(&dword_18E1C1000, v48, v49, "Failed to find token for asset set: %s for %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v52, -1, -1);
        MEMORY[0x193ACD400](v51, -1, -1);
      }

      else
      {

        sub_18E2CF8D0(v5);
        sub_18E2CF8D0(v5);
      }

      v125 = 0;
      v126 = 0xE000000000000000;
      sub_18E44EFFC();

      v105 = v127;
      if (v112)
      {
      }

      else
      {
        v105 = 0x800000018E462F20;
        v50 = 0xD000000000000016;
      }

      v125 = v50;
      v126 = v105;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v106 = v125;
      v107 = v126;
      sub_18E3FDB10();
      swift_allocError();
      *v108 = v106;
      *(v108 + 8) = v107;
      *(v108 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v112)
    {
    }

    else
    {
      v42 = 0xD000000000000016;
      v44 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v66 = v45;

    v67 = sub_18E428C64();
    v68 = v66;
    v69 = v123;
    v70 = sub_18E424758(v42, v44, v67, v45);
    if (v69)
    {

      return;
    }

    v71 = *(v70 + 16);
    v72 = v109;
    sub_18E24852C();
    v74 = v73;

    v123 = 0;
    v110 = *(v124 + 16);
    v97 = v127;
    v58 = v119;
    v110(v127, v72, v119);
    v98 = [v74 metadata];
    v111 = sub_18E44E98C();

    v56 = v97;

    v112 = *(v124 + 8);
    (v112)(v72, v58);
    v59 = v110;
  }

  v60 = v113;
  v61 = v120;
  v110 = v59;
  v59(v120, v56, v58);
  v62 = v114;
  sub_18E249148(v61, v114, type metadata accessor for ImageMagicCleanUpAssetContents);
  v63 = v115;
  sub_18E249148(v62, v115, type metadata accessor for ImageMagicCleanUpAssetContents);

  v64 = v116;
  sub_18E433760(0, 0, 1, v63, v111, v60 | 0x8000000000000000, v116 & 1, v118);
  sub_18E2491F8(v62, type metadata accessor for ImageMagicCleanUpAssetContents);
  if (v64)
  {
    v65 = v123;
    sub_18E204B54();
    if (v65)
    {
      sub_18E1E8EEC(v118, &qword_1EABE1A60, &qword_18E4E39F0);
      sub_18E2491F8(v61, type metadata accessor for ImageMagicCleanUpAssetContents);
      (v112)(v127, v58);
      return;
    }

    v123 = 0;
  }

  v75 = v127;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v76 = sub_18E44E83C();
  sub_18E1C95EC(v76, qword_1ED6A9870);
  v77 = v117;
  v110(v117, v75, v58);
  sub_18E43E988(v5, &v125);
  v78 = sub_18E44E80C();
  v79 = v58;
  v80 = sub_18E44EE2C();
  if (os_log_type_enabled(v78, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v125 = v82;
    *v81 = 136315394;
    v83 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v83 || (sub_18E44F3CC() & 1) != 0)
    {
      v84 = v121;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v122 = v86;
      v84 = v87;
    }

    sub_18E2CF8D0(v5);
    v88 = sub_18E1C9624(v122, v84, &v125);

    *(v81 + 4) = v88;
    *(v81 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v89 = v117;
    v90 = v119;
    v91 = sub_18E44F39C();
    v93 = v92;
    v94 = v89;
    v95 = v112;
    (v112)(v94, v90);
    v96 = sub_18E1C9624(v91, v93, &v125);

    *(v81 + 14) = v96;
    _os_log_impl(&dword_18E1C1000, v78, v80, "fetchLockedAsset for %s successfully returning asset from URL: %s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v82, -1, -1);
    MEMORY[0x193ACD400](v81, -1, -1);

    sub_18E2491F8(v120, type metadata accessor for ImageMagicCleanUpAssetContents);
    v95(v127, v90);
  }

  else
  {
    sub_18E2CF8D0(v5);

    v85 = v112;
    (v112)(v77, v79);
    sub_18E2491F8(v61, type metadata accessor for ImageMagicCleanUpAssetContents);
    v85(v75, v79);
  }
}

void sub_18E4165E8(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v116 = a2;
  v118 = a3;
  v7 = type metadata accessor for TokenInputDenyListAssetContents(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v114 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v109 - v12;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v109 - v14;
  v16 = sub_18E44E46C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18E44E54C();
  v124 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v109 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v127 = &v109 - v28;
  v122 = *(v5 + 32);
  v29 = *(v5 + 40);
  v30 = *(v5 + 56);
  v123 = v4;
  v121 = v29;
  v119 = v26;
  v117 = v31;
  v113 = a1;
  if (v30)
  {
    v32 = *MEMORY[0x1E6968F58];
    v112 = v17;
    v33 = *(v17 + 104);
    v33(v19, v32, v16);
    sub_18E201DC8(v15, 1, 1, v20);
    sub_18E44E51C();
    v34 = *(v5 + 200);
    v35 = *(v5 + 208);
    v110 = v5;
    v36 = v34 == 0x636972656E6567 && v35 == 0xE700000000000000;
    if (v36 || (sub_18E44F3CC() & 1) != 0)
    {
      v37 = v121;

      v38 = v122;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v37 = v54;
    }

    v125 = v38;
    v126 = v37;
    v33(v19, *MEMORY[0x1E6968F70], v16);
    sub_18E24D39C();
    v55 = v127;
    sub_18E44E53C();
    (*(v112 + 8))(v19, v16);
    v56 = v55;

    v57 = v124;
    v58 = v119;
    v112 = *(v124 + 8);
    (v112)(v25, v119);
    v111 = sub_18E44E9AC();
    v59 = *(v57 + 16);
    v5 = v110;
  }

  else
  {
    v109 = v27;
    v39 = *(v5 + 120);
    v40 = *(v5 + 128);
    v41 = *(a1 + 16);
    v112 = *(v5 + 96);
    if (v112)
    {

      v42 = v39;
      v43 = v40;
    }

    else
    {
      v42 = v39;
      v39 = 0xD000000000000016;
      v43 = 0x800000018E462F20;
    }

    v44 = v40;

    v45 = sub_18E248038(v39, v43, v41);

    if (!v45)
    {
      v127 = v40;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v46 = 0xD000000000000016;
      v47 = sub_18E44E83C();
      sub_18E1C95EC(v47, qword_1ED6A9870);
      sub_18E2070B8(v5, &v125);
      sub_18E2070B8(v5, &v125);
      v48 = sub_18E44E80C();
      v49 = sub_18E44EE0C();
      v50 = v42;
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v125 = v52;
        *v51 = 136315394;
        v111 = v50;
        if (v112)
        {

          v53 = v127;

          v46 = v50;
        }

        else
        {
          v53 = 0x800000018E462F20;
        }

        sub_18E24B30C(v5);

        v99 = sub_18E1C9624(v46, v53, &v125);

        *(v51 + 4) = v99;
        *(v51 + 12) = 2080;
        v100 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v100 || (sub_18E44F3CC() & 1) != 0)
        {
          v101 = v121;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v122 = v102;
          v101 = v103;
        }

        v50 = v111;
        sub_18E24B30C(v5);
        v104 = sub_18E1C9624(v122, v101, &v125);

        *(v51 + 14) = v104;
        _os_log_impl(&dword_18E1C1000, v48, v49, "Failed to find token for asset set: %s for %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v52, -1, -1);
        MEMORY[0x193ACD400](v51, -1, -1);
      }

      else
      {

        sub_18E24B30C(v5);
        sub_18E24B30C(v5);
      }

      v125 = 0;
      v126 = 0xE000000000000000;
      sub_18E44EFFC();

      v105 = v127;
      if (v112)
      {
      }

      else
      {
        v105 = 0x800000018E462F20;
        v50 = 0xD000000000000016;
      }

      v125 = v50;
      v126 = v105;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v106 = v125;
      v107 = v126;
      sub_18E3FDB10();
      swift_allocError();
      *v108 = v106;
      *(v108 + 8) = v107;
      *(v108 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v112)
    {
    }

    else
    {
      v42 = 0xD000000000000016;
      v44 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v66 = v45;

    v67 = sub_18E428FC4();
    v68 = v66;
    v69 = v123;
    v70 = sub_18E424758(v42, v44, v67, v45);
    if (v69)
    {

      return;
    }

    v71 = *(v70 + 16);
    v72 = v109;
    sub_18E24852C();
    v74 = v73;

    v123 = 0;
    v110 = *(v124 + 16);
    v97 = v127;
    v58 = v119;
    v110(v127, v72, v119);
    v98 = [v74 metadata];
    v111 = sub_18E44E98C();

    v56 = v97;

    v112 = *(v124 + 8);
    (v112)(v72, v58);
    v59 = v110;
  }

  v60 = v113;
  v61 = v120;
  v110 = v59;
  v59(v120, v56, v58);
  v62 = v114;
  sub_18E249148(v61, v114, type metadata accessor for TokenInputDenyListAssetContents);
  v63 = v115;
  sub_18E249148(v62, v115, type metadata accessor for TokenInputDenyListAssetContents);

  v64 = v116;
  sub_18E433BD4(0, 0, 1, v63, v111, v60 | 0x8000000000000000, v116 & 1, v118);
  sub_18E2491F8(v62, type metadata accessor for TokenInputDenyListAssetContents);
  if (v64)
  {
    v65 = v123;
    sub_18E204B54();
    if (v65)
    {
      sub_18E1E8EEC(v118, &qword_1EABE1D08, &qword_18E4E3910);
      sub_18E2491F8(v61, type metadata accessor for TokenInputDenyListAssetContents);
      (v112)(v127, v58);
      return;
    }

    v123 = 0;
  }

  v75 = v127;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v76 = sub_18E44E83C();
  sub_18E1C95EC(v76, qword_1ED6A9870);
  v77 = v117;
  v110(v117, v75, v58);
  sub_18E2070B8(v5, &v125);
  v78 = sub_18E44E80C();
  v79 = v58;
  v80 = sub_18E44EE2C();
  if (os_log_type_enabled(v78, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v125 = v82;
    *v81 = 136315394;
    v83 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v83 || (sub_18E44F3CC() & 1) != 0)
    {
      v84 = v121;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v122 = v86;
      v84 = v87;
    }

    sub_18E24B30C(v5);
    v88 = sub_18E1C9624(v122, v84, &v125);

    *(v81 + 4) = v88;
    *(v81 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v89 = v117;
    v90 = v119;
    v91 = sub_18E44F39C();
    v93 = v92;
    v94 = v89;
    v95 = v112;
    (v112)(v94, v90);
    v96 = sub_18E1C9624(v91, v93, &v125);

    *(v81 + 14) = v96;
    _os_log_impl(&dword_18E1C1000, v78, v80, "fetchLockedAsset for %s successfully returning asset from URL: %s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v82, -1, -1);
    MEMORY[0x193ACD400](v81, -1, -1);

    sub_18E2491F8(v120, type metadata accessor for TokenInputDenyListAssetContents);
    v95(v127, v90);
  }

  else
  {
    sub_18E24B30C(v5);

    v85 = v112;
    (v112)(v77, v79);
    sub_18E2491F8(v61, type metadata accessor for TokenInputDenyListAssetContents);
    v85(v75, v79);
  }
}

void sub_18E417540(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v116 = a2;
  v118 = a3;
  v7 = type metadata accessor for AppleDeviceTrackingAssetContents(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v114 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v109 - v12;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v109 - v14;
  v16 = sub_18E44E46C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18E44E54C();
  v124 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v109 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v127 = &v109 - v28;
  v122 = *(v5 + 32);
  v29 = *(v5 + 40);
  v30 = *(v5 + 56);
  v123 = v4;
  v121 = v29;
  v119 = v26;
  v117 = v31;
  v113 = a1;
  if (v30)
  {
    v32 = *MEMORY[0x1E6968F58];
    v112 = v17;
    v33 = *(v17 + 104);
    v33(v19, v32, v16);
    sub_18E201DC8(v15, 1, 1, v20);
    sub_18E44E51C();
    v34 = *(v5 + 200);
    v35 = *(v5 + 208);
    v110 = v5;
    v36 = v34 == 0x636972656E6567 && v35 == 0xE700000000000000;
    if (v36 || (sub_18E44F3CC() & 1) != 0)
    {
      v37 = v121;

      v38 = v122;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v37 = v54;
    }

    v125 = v38;
    v126 = v37;
    v33(v19, *MEMORY[0x1E6968F70], v16);
    sub_18E24D39C();
    v55 = v127;
    sub_18E44E53C();
    (*(v112 + 8))(v19, v16);
    v56 = v55;

    v57 = v124;
    v58 = v119;
    v112 = *(v124 + 8);
    (v112)(v25, v119);
    v111 = sub_18E44E9AC();
    v59 = *(v57 + 16);
    v5 = v110;
  }

  else
  {
    v109 = v27;
    v39 = *(v5 + 120);
    v40 = *(v5 + 128);
    v41 = *(a1 + 16);
    v112 = *(v5 + 96);
    if (v112)
    {

      v42 = v39;
      v43 = v40;
    }

    else
    {
      v42 = v39;
      v39 = 0xD000000000000016;
      v43 = 0x800000018E462F20;
    }

    v44 = v40;

    v45 = sub_18E248038(v39, v43, v41);

    if (!v45)
    {
      v127 = v40;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v46 = 0xD000000000000016;
      v47 = sub_18E44E83C();
      sub_18E1C95EC(v47, qword_1ED6A9870);
      sub_18E43F004(v5, &v125);
      sub_18E43F004(v5, &v125);
      v48 = sub_18E44E80C();
      v49 = sub_18E44EE0C();
      v50 = v42;
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v125 = v52;
        *v51 = 136315394;
        v111 = v50;
        if (v112)
        {

          v53 = v127;

          v46 = v50;
        }

        else
        {
          v53 = 0x800000018E462F20;
        }

        sub_18E2CFC30(v5);

        v99 = sub_18E1C9624(v46, v53, &v125);

        *(v51 + 4) = v99;
        *(v51 + 12) = 2080;
        v100 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v100 || (sub_18E44F3CC() & 1) != 0)
        {
          v101 = v121;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v122 = v102;
          v101 = v103;
        }

        v50 = v111;
        sub_18E2CFC30(v5);
        v104 = sub_18E1C9624(v122, v101, &v125);

        *(v51 + 14) = v104;
        _os_log_impl(&dword_18E1C1000, v48, v49, "Failed to find token for asset set: %s for %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v52, -1, -1);
        MEMORY[0x193ACD400](v51, -1, -1);
      }

      else
      {

        sub_18E2CFC30(v5);
        sub_18E2CFC30(v5);
      }

      v125 = 0;
      v126 = 0xE000000000000000;
      sub_18E44EFFC();

      v105 = v127;
      if (v112)
      {
      }

      else
      {
        v105 = 0x800000018E462F20;
        v50 = 0xD000000000000016;
      }

      v125 = v50;
      v126 = v105;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v106 = v125;
      v107 = v126;
      sub_18E3FDB10();
      swift_allocError();
      *v108 = v106;
      *(v108 + 8) = v107;
      *(v108 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v112)
    {
    }

    else
    {
      v42 = 0xD000000000000016;
      v44 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v66 = v45;

    v67 = sub_18E429324();
    v68 = v66;
    v69 = v123;
    v70 = sub_18E424758(v42, v44, v67, v45);
    if (v69)
    {

      return;
    }

    v71 = *(v70 + 16);
    v72 = v109;
    sub_18E24852C();
    v74 = v73;

    v123 = 0;
    v110 = *(v124 + 16);
    v97 = v127;
    v58 = v119;
    v110(v127, v72, v119);
    v98 = [v74 metadata];
    v111 = sub_18E44E98C();

    v56 = v97;

    v112 = *(v124 + 8);
    (v112)(v72, v58);
    v59 = v110;
  }

  v60 = v113;
  v61 = v120;
  v110 = v59;
  v59(v120, v56, v58);
  v62 = v114;
  sub_18E249148(v61, v114, type metadata accessor for AppleDeviceTrackingAssetContents);
  v63 = v115;
  sub_18E249148(v62, v115, type metadata accessor for AppleDeviceTrackingAssetContents);

  v64 = v116;
  sub_18E434048(0, 0, 1, v63, v111, v60 | 0x8000000000000000, v116 & 1, v118);
  sub_18E2491F8(v62, type metadata accessor for AppleDeviceTrackingAssetContents);
  if (v64)
  {
    v65 = v123;
    sub_18E204B54();
    if (v65)
    {
      sub_18E1E8EEC(v118, &qword_1EABE1878, &qword_18E4E3A80);
      sub_18E2491F8(v61, type metadata accessor for AppleDeviceTrackingAssetContents);
      (v112)(v127, v58);
      return;
    }

    v123 = 0;
  }

  v75 = v127;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v76 = sub_18E44E83C();
  sub_18E1C95EC(v76, qword_1ED6A9870);
  v77 = v117;
  v110(v117, v75, v58);
  sub_18E43F004(v5, &v125);
  v78 = sub_18E44E80C();
  v79 = v58;
  v80 = sub_18E44EE2C();
  if (os_log_type_enabled(v78, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v125 = v82;
    *v81 = 136315394;
    v83 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v83 || (sub_18E44F3CC() & 1) != 0)
    {
      v84 = v121;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v122 = v86;
      v84 = v87;
    }

    sub_18E2CFC30(v5);
    v88 = sub_18E1C9624(v122, v84, &v125);

    *(v81 + 4) = v88;
    *(v81 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v89 = v117;
    v90 = v119;
    v91 = sub_18E44F39C();
    v93 = v92;
    v94 = v89;
    v95 = v112;
    (v112)(v94, v90);
    v96 = sub_18E1C9624(v91, v93, &v125);

    *(v81 + 14) = v96;
    _os_log_impl(&dword_18E1C1000, v78, v80, "fetchLockedAsset for %s successfully returning asset from URL: %s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v82, -1, -1);
    MEMORY[0x193ACD400](v81, -1, -1);

    sub_18E2491F8(v120, type metadata accessor for AppleDeviceTrackingAssetContents);
    v95(v127, v90);
  }

  else
  {
    sub_18E2CFC30(v5);

    v85 = v112;
    (v112)(v77, v79);
    sub_18E2491F8(v61, type metadata accessor for AppleDeviceTrackingAssetContents);
    v85(v75, v79);
  }
}

void sub_18E418498(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v116 = a2;
  v118 = a3;
  v7 = type metadata accessor for DisabledUseCaseListAssetContents(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v114 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v109 - v12;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v109 - v14;
  v16 = sub_18E44E46C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18E44E54C();
  v124 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v109 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v127 = &v109 - v28;
  v122 = *(v5 + 32);
  v29 = *(v5 + 40);
  v30 = *(v5 + 56);
  v123 = v4;
  v121 = v29;
  v119 = v26;
  v117 = v31;
  v113 = a1;
  if (v30)
  {
    v32 = *MEMORY[0x1E6968F58];
    v112 = v17;
    v33 = *(v17 + 104);
    v33(v19, v32, v16);
    sub_18E201DC8(v15, 1, 1, v20);
    sub_18E44E51C();
    v34 = *(v5 + 200);
    v35 = *(v5 + 208);
    v110 = v5;
    v36 = v34 == 0x636972656E6567 && v35 == 0xE700000000000000;
    if (v36 || (sub_18E44F3CC() & 1) != 0)
    {
      v37 = v121;

      v38 = v122;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v37 = v54;
    }

    v125 = v38;
    v126 = v37;
    v33(v19, *MEMORY[0x1E6968F70], v16);
    sub_18E24D39C();
    v55 = v127;
    sub_18E44E53C();
    (*(v112 + 8))(v19, v16);
    v56 = v55;

    v57 = v124;
    v58 = v119;
    v112 = *(v124 + 8);
    (v112)(v25, v119);
    v111 = sub_18E44E9AC();
    v59 = *(v57 + 16);
    v5 = v110;
  }

  else
  {
    v109 = v27;
    v39 = *(v5 + 120);
    v40 = *(v5 + 128);
    v41 = *(a1 + 16);
    v112 = *(v5 + 96);
    if (v112)
    {

      v42 = v39;
      v43 = v40;
    }

    else
    {
      v42 = v39;
      v39 = 0xD000000000000016;
      v43 = 0x800000018E462F20;
    }

    v44 = v40;

    v45 = sub_18E248038(v39, v43, v41);

    if (!v45)
    {
      v127 = v40;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v46 = 0xD000000000000016;
      v47 = sub_18E44E83C();
      sub_18E1C95EC(v47, qword_1ED6A9870);
      sub_18E43EDA0(v5, &v125);
      sub_18E43EDA0(v5, &v125);
      v48 = sub_18E44E80C();
      v49 = sub_18E44EE0C();
      v50 = v42;
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v125 = v52;
        *v51 = 136315394;
        v111 = v50;
        if (v112)
        {

          v53 = v127;

          v46 = v50;
        }

        else
        {
          v53 = 0x800000018E462F20;
        }

        sub_18E2CFB10(v5);

        v99 = sub_18E1C9624(v46, v53, &v125);

        *(v51 + 4) = v99;
        *(v51 + 12) = 2080;
        v100 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v100 || (sub_18E44F3CC() & 1) != 0)
        {
          v101 = v121;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v122 = v102;
          v101 = v103;
        }

        v50 = v111;
        sub_18E2CFB10(v5);
        v104 = sub_18E1C9624(v122, v101, &v125);

        *(v51 + 14) = v104;
        _os_log_impl(&dword_18E1C1000, v48, v49, "Failed to find token for asset set: %s for %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v52, -1, -1);
        MEMORY[0x193ACD400](v51, -1, -1);
      }

      else
      {

        sub_18E2CFB10(v5);
        sub_18E2CFB10(v5);
      }

      v125 = 0;
      v126 = 0xE000000000000000;
      sub_18E44EFFC();

      v105 = v127;
      if (v112)
      {
      }

      else
      {
        v105 = 0x800000018E462F20;
        v50 = 0xD000000000000016;
      }

      v125 = v50;
      v126 = v105;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v106 = v125;
      v107 = v126;
      sub_18E3FDB10();
      swift_allocError();
      *v108 = v106;
      *(v108 + 8) = v107;
      *(v108 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v112)
    {
    }

    else
    {
      v42 = 0xD000000000000016;
      v44 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v66 = v45;

    v67 = sub_18E429684();
    v68 = v66;
    v69 = v123;
    v70 = sub_18E424758(v42, v44, v67, v45);
    if (v69)
    {

      return;
    }

    v71 = *(v70 + 16);
    v72 = v109;
    sub_18E24852C();
    v74 = v73;

    v123 = 0;
    v110 = *(v124 + 16);
    v97 = v127;
    v58 = v119;
    v110(v127, v72, v119);
    v98 = [v74 metadata];
    v111 = sub_18E44E98C();

    v56 = v97;

    v112 = *(v124 + 8);
    (v112)(v72, v58);
    v59 = v110;
  }

  v60 = v113;
  v61 = v120;
  v110 = v59;
  v59(v120, v56, v58);
  v62 = v114;
  sub_18E249148(v61, v114, type metadata accessor for DisabledUseCaseListAssetContents);
  v63 = v115;
  sub_18E249148(v62, v115, type metadata accessor for DisabledUseCaseListAssetContents);

  v64 = v116;
  sub_18E4344BC(0, 0, 1, v63, v111, v60 | 0x8000000000000000, v116 & 1, v118);
  sub_18E2491F8(v62, type metadata accessor for DisabledUseCaseListAssetContents);
  if (v64)
  {
    v65 = v123;
    sub_18E204B54();
    if (v65)
    {
      sub_18E1E8EEC(v118, &qword_1EABE1908, &qword_18E4E3A50);
      sub_18E2491F8(v61, type metadata accessor for DisabledUseCaseListAssetContents);
      (v112)(v127, v58);
      return;
    }

    v123 = 0;
  }

  v75 = v127;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v76 = sub_18E44E83C();
  sub_18E1C95EC(v76, qword_1ED6A9870);
  v77 = v117;
  v110(v117, v75, v58);
  sub_18E43EDA0(v5, &v125);
  v78 = sub_18E44E80C();
  v79 = v58;
  v80 = sub_18E44EE2C();
  if (os_log_type_enabled(v78, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v125 = v82;
    *v81 = 136315394;
    v83 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v83 || (sub_18E44F3CC() & 1) != 0)
    {
      v84 = v121;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v122 = v86;
      v84 = v87;
    }

    sub_18E2CFB10(v5);
    v88 = sub_18E1C9624(v122, v84, &v125);

    *(v81 + 4) = v88;
    *(v81 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v89 = v117;
    v90 = v119;
    v91 = sub_18E44F39C();
    v93 = v92;
    v94 = v89;
    v95 = v112;
    (v112)(v94, v90);
    v96 = sub_18E1C9624(v91, v93, &v125);

    *(v81 + 14) = v96;
    _os_log_impl(&dword_18E1C1000, v78, v80, "fetchLockedAsset for %s successfully returning asset from URL: %s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v82, -1, -1);
    MEMORY[0x193ACD400](v81, -1, -1);

    sub_18E2491F8(v120, type metadata accessor for DisabledUseCaseListAssetContents);
    v95(v127, v90);
  }

  else
  {
    sub_18E2CFB10(v5);

    v85 = v112;
    (v112)(v77, v79);
    sub_18E2491F8(v61, type metadata accessor for DisabledUseCaseListAssetContents);
    v85(v75, v79);
  }
}

void sub_18E4193F0(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v116 = a2;
  v118 = a3;
  v7 = type metadata accessor for ImageCuratedPromptsAssetContents(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v114 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v109 - v12;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v109 - v14;
  v16 = sub_18E44E46C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18E44E54C();
  v124 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v109 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v127 = &v109 - v28;
  v122 = *(v5 + 32);
  v29 = *(v5 + 40);
  v30 = *(v5 + 56);
  v123 = v4;
  v121 = v29;
  v119 = v26;
  v117 = v31;
  v113 = a1;
  if (v30)
  {
    v32 = *MEMORY[0x1E6968F58];
    v112 = v17;
    v33 = *(v17 + 104);
    v33(v19, v32, v16);
    sub_18E201DC8(v15, 1, 1, v20);
    sub_18E44E51C();
    v34 = *(v5 + 200);
    v35 = *(v5 + 208);
    v110 = v5;
    v36 = v34 == 0x636972656E6567 && v35 == 0xE700000000000000;
    if (v36 || (sub_18E44F3CC() & 1) != 0)
    {
      v37 = v121;

      v38 = v122;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v37 = v54;
    }

    v125 = v38;
    v126 = v37;
    v33(v19, *MEMORY[0x1E6968F70], v16);
    sub_18E24D39C();
    v55 = v127;
    sub_18E44E53C();
    (*(v112 + 8))(v19, v16);
    v56 = v55;

    v57 = v124;
    v58 = v119;
    v112 = *(v124 + 8);
    (v112)(v25, v119);
    v111 = sub_18E44E9AC();
    v59 = *(v57 + 16);
    v5 = v110;
  }

  else
  {
    v109 = v27;
    v39 = *(v5 + 120);
    v40 = *(v5 + 128);
    v41 = *(a1 + 16);
    v112 = *(v5 + 96);
    if (v112)
    {

      v42 = v39;
      v43 = v40;
    }

    else
    {
      v42 = v39;
      v39 = 0xD000000000000016;
      v43 = 0x800000018E462F20;
    }

    v44 = v40;

    v45 = sub_18E248038(v39, v43, v41);

    if (!v45)
    {
      v127 = v40;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v46 = 0xD000000000000016;
      v47 = sub_18E44E83C();
      sub_18E1C95EC(v47, qword_1ED6A9870);
      sub_18E43EB20(v5, &v125);
      sub_18E43EB20(v5, &v125);
      v48 = sub_18E44E80C();
      v49 = sub_18E44EE0C();
      v50 = v42;
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v125 = v52;
        *v51 = 136315394;
        v111 = v50;
        if (v112)
        {

          v53 = v127;

          v46 = v50;
        }

        else
        {
          v53 = 0x800000018E462F20;
        }

        sub_18E2CF990(v5);

        v99 = sub_18E1C9624(v46, v53, &v125);

        *(v51 + 4) = v99;
        *(v51 + 12) = 2080;
        v100 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v100 || (sub_18E44F3CC() & 1) != 0)
        {
          v101 = v121;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v122 = v102;
          v101 = v103;
        }

        v50 = v111;
        sub_18E2CF990(v5);
        v104 = sub_18E1C9624(v122, v101, &v125);

        *(v51 + 14) = v104;
        _os_log_impl(&dword_18E1C1000, v48, v49, "Failed to find token for asset set: %s for %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v52, -1, -1);
        MEMORY[0x193ACD400](v51, -1, -1);
      }

      else
      {

        sub_18E2CF990(v5);
        sub_18E2CF990(v5);
      }

      v125 = 0;
      v126 = 0xE000000000000000;
      sub_18E44EFFC();

      v105 = v127;
      if (v112)
      {
      }

      else
      {
        v105 = 0x800000018E462F20;
        v50 = 0xD000000000000016;
      }

      v125 = v50;
      v126 = v105;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v106 = v125;
      v107 = v126;
      sub_18E3FDB10();
      swift_allocError();
      *v108 = v106;
      *(v108 + 8) = v107;
      *(v108 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v112)
    {
    }

    else
    {
      v42 = 0xD000000000000016;
      v44 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v66 = v45;

    v67 = sub_18E4299E4();
    v68 = v66;
    v69 = v123;
    v70 = sub_18E424758(v42, v44, v67, v45);
    if (v69)
    {

      return;
    }

    v71 = *(v70 + 16);
    v72 = v109;
    sub_18E24852C();
    v74 = v73;

    v123 = 0;
    v110 = *(v124 + 16);
    v97 = v127;
    v58 = v119;
    v110(v127, v72, v119);
    v98 = [v74 metadata];
    v111 = sub_18E44E98C();

    v56 = v97;

    v112 = *(v124 + 8);
    (v112)(v72, v58);
    v59 = v110;
  }

  v60 = v113;
  v61 = v120;
  v110 = v59;
  v59(v120, v56, v58);
  v62 = v114;
  sub_18E249148(v61, v114, type metadata accessor for ImageCuratedPromptsAssetContents);
  v63 = v115;
  sub_18E249148(v62, v115, type metadata accessor for ImageCuratedPromptsAssetContents);

  v64 = v116;
  sub_18E434930(0, 0, 1, v63, v111, v60 | 0x8000000000000000, v116 & 1, v118);
  sub_18E2491F8(v62, type metadata accessor for ImageCuratedPromptsAssetContents);
  if (v64)
  {
    v65 = v123;
    sub_18E204B54();
    if (v65)
    {
      sub_18E1E8EEC(v118, &qword_1EABE19F0, &qword_18E4E3A10);
      sub_18E2491F8(v61, type metadata accessor for ImageCuratedPromptsAssetContents);
      (v112)(v127, v58);
      return;
    }

    v123 = 0;
  }

  v75 = v127;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v76 = sub_18E44E83C();
  sub_18E1C95EC(v76, qword_1ED6A9870);
  v77 = v117;
  v110(v117, v75, v58);
  sub_18E43EB20(v5, &v125);
  v78 = sub_18E44E80C();
  v79 = v58;
  v80 = sub_18E44EE2C();
  if (os_log_type_enabled(v78, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v125 = v82;
    *v81 = 136315394;
    v83 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v83 || (sub_18E44F3CC() & 1) != 0)
    {
      v84 = v121;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v122 = v86;
      v84 = v87;
    }

    sub_18E2CF990(v5);
    v88 = sub_18E1C9624(v122, v84, &v125);

    *(v81 + 4) = v88;
    *(v81 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v89 = v117;
    v90 = v119;
    v91 = sub_18E44F39C();
    v93 = v92;
    v94 = v89;
    v95 = v112;
    (v112)(v94, v90);
    v96 = sub_18E1C9624(v91, v93, &v125);

    *(v81 + 14) = v96;
    _os_log_impl(&dword_18E1C1000, v78, v80, "fetchLockedAsset for %s successfully returning asset from URL: %s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v82, -1, -1);
    MEMORY[0x193ACD400](v81, -1, -1);

    sub_18E2491F8(v120, type metadata accessor for ImageCuratedPromptsAssetContents);
    v95(v127, v90);
  }

  else
  {
    sub_18E2CF990(v5);

    v85 = v112;
    (v112)(v77, v79);
    sub_18E2491F8(v61, type metadata accessor for ImageCuratedPromptsAssetContents);
    v85(v75, v79);
  }
}

void sub_18E41A348(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v116 = a2;
  v118 = a3;
  v7 = type metadata accessor for ServerConfigurationAssetContents(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v114 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v109 - v12;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v109 - v14;
  v16 = sub_18E44E46C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18E44E54C();
  v124 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v109 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v127 = &v109 - v28;
  v122 = *(v5 + 32);
  v29 = *(v5 + 40);
  v30 = *(v5 + 56);
  v123 = v4;
  v121 = v29;
  v119 = v26;
  v117 = v31;
  v113 = a1;
  if (v30)
  {
    v32 = *MEMORY[0x1E6968F58];
    v112 = v17;
    v33 = *(v17 + 104);
    v33(v19, v32, v16);
    sub_18E201DC8(v15, 1, 1, v20);
    sub_18E44E51C();
    v34 = *(v5 + 200);
    v35 = *(v5 + 208);
    v110 = v5;
    v36 = v34 == 0x636972656E6567 && v35 == 0xE700000000000000;
    if (v36 || (sub_18E44F3CC() & 1) != 0)
    {
      v37 = v121;

      v38 = v122;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v37 = v54;
    }

    v125 = v38;
    v126 = v37;
    v33(v19, *MEMORY[0x1E6968F70], v16);
    sub_18E24D39C();
    v55 = v127;
    sub_18E44E53C();
    (*(v112 + 8))(v19, v16);
    v56 = v55;

    v57 = v124;
    v58 = v119;
    v112 = *(v124 + 8);
    (v112)(v25, v119);
    v111 = sub_18E44E9AC();
    v59 = *(v57 + 16);
    v5 = v110;
  }

  else
  {
    v109 = v27;
    v39 = *(v5 + 120);
    v40 = *(v5 + 128);
    v41 = *(a1 + 16);
    v112 = *(v5 + 96);
    if (v112)
    {

      v42 = v39;
      v43 = v40;
    }

    else
    {
      v42 = v39;
      v39 = 0xD000000000000016;
      v43 = 0x800000018E462F20;
    }

    v44 = v40;

    v45 = sub_18E248038(v39, v43, v41);

    if (!v45)
    {
      v127 = v40;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v46 = 0xD000000000000016;
      v47 = sub_18E44E83C();
      sub_18E1C95EC(v47, qword_1ED6A9870);
      sub_18E43E328(v5, &v125);
      sub_18E43E328(v5, &v125);
      v48 = sub_18E44E80C();
      v49 = sub_18E44EE0C();
      v50 = v42;
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v125 = v52;
        *v51 = 136315394;
        v111 = v50;
        if (v112)
        {

          v53 = v127;

          v46 = v50;
        }

        else
        {
          v53 = 0x800000018E462F20;
        }

        sub_18E2CF498(v5);

        v99 = sub_18E1C9624(v46, v53, &v125);

        *(v51 + 4) = v99;
        *(v51 + 12) = 2080;
        v100 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v100 || (sub_18E44F3CC() & 1) != 0)
        {
          v101 = v121;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v122 = v102;
          v101 = v103;
        }

        v50 = v111;
        sub_18E2CF498(v5);
        v104 = sub_18E1C9624(v122, v101, &v125);

        *(v51 + 14) = v104;
        _os_log_impl(&dword_18E1C1000, v48, v49, "Failed to find token for asset set: %s for %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v52, -1, -1);
        MEMORY[0x193ACD400](v51, -1, -1);
      }

      else
      {

        sub_18E2CF498(v5);
        sub_18E2CF498(v5);
      }

      v125 = 0;
      v126 = 0xE000000000000000;
      sub_18E44EFFC();

      v105 = v127;
      if (v112)
      {
      }

      else
      {
        v105 = 0x800000018E462F20;
        v50 = 0xD000000000000016;
      }

      v125 = v50;
      v126 = v105;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v106 = v125;
      v107 = v126;
      sub_18E3FDB10();
      swift_allocError();
      *v108 = v106;
      *(v108 + 8) = v107;
      *(v108 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v112)
    {
    }

    else
    {
      v42 = 0xD000000000000016;
      v44 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v66 = v45;

    v67 = sub_18E429D44();
    v68 = v66;
    v69 = v123;
    v70 = sub_18E424758(v42, v44, v67, v45);
    if (v69)
    {

      return;
    }

    v71 = *(v70 + 16);
    v72 = v109;
    sub_18E24852C();
    v74 = v73;

    v123 = 0;
    v110 = *(v124 + 16);
    v97 = v127;
    v58 = v119;
    v110(v127, v72, v119);
    v98 = [v74 metadata];
    v111 = sub_18E44E98C();

    v56 = v97;

    v112 = *(v124 + 8);
    (v112)(v72, v58);
    v59 = v110;
  }

  v60 = v113;
  v61 = v120;
  v110 = v59;
  v59(v120, v56, v58);
  v62 = v114;
  sub_18E249148(v61, v114, type metadata accessor for ServerConfigurationAssetContents);
  v63 = v115;
  sub_18E249148(v62, v115, type metadata accessor for ServerConfigurationAssetContents);

  v64 = v116;
  sub_18E434DA4(0, 0, 1, v63, v111, v60 | 0x8000000000000000, v116 & 1, v118);
  sub_18E2491F8(v62, type metadata accessor for ServerConfigurationAssetContents);
  if (v64)
  {
    v65 = v123;
    sub_18E204B54();
    if (v65)
    {
      sub_18E1E8EEC(v118, &qword_1EABE1BD0, &qword_18E4E3970);
      sub_18E2491F8(v61, type metadata accessor for ServerConfigurationAssetContents);
      (v112)(v127, v58);
      return;
    }

    v123 = 0;
  }

  v75 = v127;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v76 = sub_18E44E83C();
  sub_18E1C95EC(v76, qword_1ED6A9870);
  v77 = v117;
  v110(v117, v75, v58);
  sub_18E43E328(v5, &v125);
  v78 = sub_18E44E80C();
  v79 = v58;
  v80 = sub_18E44EE2C();
  if (os_log_type_enabled(v78, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v125 = v82;
    *v81 = 136315394;
    v83 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v83 || (sub_18E44F3CC() & 1) != 0)
    {
      v84 = v121;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v122 = v86;
      v84 = v87;
    }

    sub_18E2CF498(v5);
    v88 = sub_18E1C9624(v122, v84, &v125);

    *(v81 + 4) = v88;
    *(v81 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v89 = v117;
    v90 = v119;
    v91 = sub_18E44F39C();
    v93 = v92;
    v94 = v89;
    v95 = v112;
    (v112)(v94, v90);
    v96 = sub_18E1C9624(v91, v93, &v125);

    *(v81 + 14) = v96;
    _os_log_impl(&dword_18E1C1000, v78, v80, "fetchLockedAsset for %s successfully returning asset from URL: %s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v82, -1, -1);
    MEMORY[0x193ACD400](v81, -1, -1);

    sub_18E2491F8(v120, type metadata accessor for ServerConfigurationAssetContents);
    v95(v127, v90);
  }

  else
  {
    sub_18E2CF498(v5);

    v85 = v112;
    (v112)(v77, v79);
    sub_18E2491F8(v61, type metadata accessor for ServerConfigurationAssetContents);
    v85(v75, v79);
  }
}

void sub_18E41B2A0(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v116 = a2;
  v118 = a3;
  v7 = type metadata accessor for TokenOutputDenyListAssetContents(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v114 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v109 - v12;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v109 - v14;
  v16 = sub_18E44E46C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18E44E54C();
  v124 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v109 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v127 = &v109 - v28;
  v122 = *(v5 + 32);
  v29 = *(v5 + 40);
  v30 = *(v5 + 56);
  v123 = v4;
  v121 = v29;
  v119 = v26;
  v117 = v31;
  v113 = a1;
  if (v30)
  {
    v32 = *MEMORY[0x1E6968F58];
    v112 = v17;
    v33 = *(v17 + 104);
    v33(v19, v32, v16);
    sub_18E201DC8(v15, 1, 1, v20);
    sub_18E44E51C();
    v34 = *(v5 + 200);
    v35 = *(v5 + 208);
    v110 = v5;
    v36 = v34 == 0x636972656E6567 && v35 == 0xE700000000000000;
    if (v36 || (sub_18E44F3CC() & 1) != 0)
    {
      v37 = v121;

      v38 = v122;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v37 = v54;
    }

    v125 = v38;
    v126 = v37;
    v33(v19, *MEMORY[0x1E6968F70], v16);
    sub_18E24D39C();
    v55 = v127;
    sub_18E44E53C();
    (*(v112 + 8))(v19, v16);
    v56 = v55;

    v57 = v124;
    v58 = v119;
    v112 = *(v124 + 8);
    (v112)(v25, v119);
    v111 = sub_18E44E9AC();
    v59 = *(v57 + 16);
    v5 = v110;
  }

  else
  {
    v109 = v27;
    v39 = *(v5 + 120);
    v40 = *(v5 + 128);
    v41 = *(a1 + 16);
    v112 = *(v5 + 96);
    if (v112)
    {

      v42 = v39;
      v43 = v40;
    }

    else
    {
      v42 = v39;
      v39 = 0xD000000000000016;
      v43 = 0x800000018E462F20;
    }

    v44 = v40;

    v45 = sub_18E248038(v39, v43, v41);

    if (!v45)
    {
      v127 = v40;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v46 = 0xD000000000000016;
      v47 = sub_18E44E83C();
      sub_18E1C95EC(v47, qword_1ED6A9870);
      sub_18E299690(v5, &v125);
      sub_18E299690(v5, &v125);
      v48 = sub_18E44E80C();
      v49 = sub_18E44EE0C();
      v50 = v42;
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v125 = v52;
        *v51 = 136315394;
        v111 = v50;
        if (v112)
        {

          v53 = v127;

          v46 = v50;
        }

        else
        {
          v53 = 0x800000018E462F20;
        }

        sub_18E24FF48(v5);

        v99 = sub_18E1C9624(v46, v53, &v125);

        *(v51 + 4) = v99;
        *(v51 + 12) = 2080;
        v100 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v100 || (sub_18E44F3CC() & 1) != 0)
        {
          v101 = v121;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v122 = v102;
          v101 = v103;
        }

        v50 = v111;
        sub_18E24FF48(v5);
        v104 = sub_18E1C9624(v122, v101, &v125);

        *(v51 + 14) = v104;
        _os_log_impl(&dword_18E1C1000, v48, v49, "Failed to find token for asset set: %s for %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v52, -1, -1);
        MEMORY[0x193ACD400](v51, -1, -1);
      }

      else
      {

        sub_18E24FF48(v5);
        sub_18E24FF48(v5);
      }

      v125 = 0;
      v126 = 0xE000000000000000;
      sub_18E44EFFC();

      v105 = v127;
      if (v112)
      {
      }

      else
      {
        v105 = 0x800000018E462F20;
        v50 = 0xD000000000000016;
      }

      v125 = v50;
      v126 = v105;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v106 = v125;
      v107 = v126;
      sub_18E3FDB10();
      swift_allocError();
      *v108 = v106;
      *(v108 + 8) = v107;
      *(v108 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v112)
    {
    }

    else
    {
      v42 = 0xD000000000000016;
      v44 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v66 = v45;

    v67 = sub_18E42A0A4();
    v68 = v66;
    v69 = v123;
    v70 = sub_18E424758(v42, v44, v67, v45);
    if (v69)
    {

      return;
    }

    v71 = *(v70 + 16);
    v72 = v109;
    sub_18E24852C();
    v74 = v73;

    v123 = 0;
    v110 = *(v124 + 16);
    v97 = v127;
    v58 = v119;
    v110(v127, v72, v119);
    v98 = [v74 metadata];
    v111 = sub_18E44E98C();

    v56 = v97;

    v112 = *(v124 + 8);
    (v112)(v72, v58);
    v59 = v110;
  }

  v60 = v113;
  v61 = v120;
  v110 = v59;
  v59(v120, v56, v58);
  v62 = v114;
  sub_18E249148(v61, v114, type metadata accessor for TokenOutputDenyListAssetContents);
  v63 = v115;
  sub_18E249148(v62, v115, type metadata accessor for TokenOutputDenyListAssetContents);

  v64 = v116;
  sub_18E435218(0, 0, 1, v63, v111, v60 | 0x8000000000000000, v116 & 1, v118);
  sub_18E2491F8(v62, type metadata accessor for TokenOutputDenyListAssetContents);
  if (v64)
  {
    v65 = v123;
    sub_18E204B54();
    if (v65)
    {
      sub_18E1E8EEC(v118, &qword_1EABE1D48, &qword_18E4E3900);
      sub_18E2491F8(v61, type metadata accessor for TokenOutputDenyListAssetContents);
      (v112)(v127, v58);
      return;
    }

    v123 = 0;
  }

  v75 = v127;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v76 = sub_18E44E83C();
  sub_18E1C95EC(v76, qword_1ED6A9870);
  v77 = v117;
  v110(v117, v75, v58);
  sub_18E299690(v5, &v125);
  v78 = sub_18E44E80C();
  v79 = v58;
  v80 = sub_18E44EE2C();
  if (os_log_type_enabled(v78, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v125 = v82;
    *v81 = 136315394;
    v83 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v83 || (sub_18E44F3CC() & 1) != 0)
    {
      v84 = v121;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v122 = v86;
      v84 = v87;
    }

    sub_18E24FF48(v5);
    v88 = sub_18E1C9624(v122, v84, &v125);

    *(v81 + 4) = v88;
    *(v81 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v89 = v117;
    v90 = v119;
    v91 = sub_18E44F39C();
    v93 = v92;
    v94 = v89;
    v95 = v112;
    (v112)(v94, v90);
    v96 = sub_18E1C9624(v91, v93, &v125);

    *(v81 + 14) = v96;
    _os_log_impl(&dword_18E1C1000, v78, v80, "fetchLockedAsset for %s successfully returning asset from URL: %s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v82, -1, -1);
    MEMORY[0x193ACD400](v81, -1, -1);

    sub_18E2491F8(v120, type metadata accessor for TokenOutputDenyListAssetContents);
    v95(v127, v90);
  }

  else
  {
    sub_18E24FF48(v5);

    v85 = v112;
    (v112)(v77, v79);
    sub_18E2491F8(v61, type metadata accessor for TokenOutputDenyListAssetContents);
    v85(v75, v79);
  }
}

void sub_18E41C1F8(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v116 = a2;
  v118 = a3;
  v7 = type metadata accessor for EmbeddingPreprocessorAssetContents(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v114 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v109 - v12;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v109 - v14;
  v16 = sub_18E44E46C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18E44E54C();
  v124 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v109 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v127 = &v109 - v28;
  v122 = *(v5 + 32);
  v29 = *(v5 + 40);
  v30 = *(v5 + 56);
  v123 = v4;
  v121 = v29;
  v119 = v26;
  v117 = v31;
  v113 = a1;
  if (v30)
  {
    v32 = *MEMORY[0x1E6968F58];
    v112 = v17;
    v33 = *(v17 + 104);
    v33(v19, v32, v16);
    sub_18E201DC8(v15, 1, 1, v20);
    sub_18E44E51C();
    v34 = *(v5 + 200);
    v35 = *(v5 + 208);
    v110 = v5;
    v36 = v34 == 0x636972656E6567 && v35 == 0xE700000000000000;
    if (v36 || (sub_18E44F3CC() & 1) != 0)
    {
      v37 = v121;

      v38 = v122;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v37 = v54;
    }

    v125 = v38;
    v126 = v37;
    v33(v19, *MEMORY[0x1E6968F70], v16);
    sub_18E24D39C();
    v55 = v127;
    sub_18E44E53C();
    (*(v112 + 8))(v19, v16);
    v56 = v55;

    v57 = v124;
    v58 = v119;
    v112 = *(v124 + 8);
    (v112)(v25, v119);
    v111 = sub_18E44E9AC();
    v59 = *(v57 + 16);
    v5 = v110;
  }

  else
  {
    v109 = v27;
    v39 = *(v5 + 120);
    v40 = *(v5 + 128);
    v41 = *(a1 + 16);
    v112 = *(v5 + 96);
    if (v112)
    {

      v42 = v39;
      v43 = v40;
    }

    else
    {
      v42 = v39;
      v39 = 0xD000000000000016;
      v43 = 0x800000018E462F20;
    }

    v44 = v40;

    v45 = sub_18E248038(v39, v43, v41);

    if (!v45)
    {
      v127 = v40;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v46 = 0xD000000000000016;
      v47 = sub_18E44E83C();
      sub_18E1C95EC(v47, qword_1ED6A9870);
      sub_18E43ECB8(v5, &v125);
      sub_18E43ECB8(v5, &v125);
      v48 = sub_18E44E80C();
      v49 = sub_18E44EE0C();
      v50 = v42;
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v125 = v52;
        *v51 = 136315394;
        v111 = v50;
        if (v112)
        {

          v53 = v127;

          v46 = v50;
        }

        else
        {
          v53 = 0x800000018E462F20;
        }

        sub_18E2CFA50(v5);

        v99 = sub_18E1C9624(v46, v53, &v125);

        *(v51 + 4) = v99;
        *(v51 + 12) = 2080;
        v100 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v100 || (sub_18E44F3CC() & 1) != 0)
        {
          v101 = v121;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v122 = v102;
          v101 = v103;
        }

        v50 = v111;
        sub_18E2CFA50(v5);
        v104 = sub_18E1C9624(v122, v101, &v125);

        *(v51 + 14) = v104;
        _os_log_impl(&dword_18E1C1000, v48, v49, "Failed to find token for asset set: %s for %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v52, -1, -1);
        MEMORY[0x193ACD400](v51, -1, -1);
      }

      else
      {

        sub_18E2CFA50(v5);
        sub_18E2CFA50(v5);
      }

      v125 = 0;
      v126 = 0xE000000000000000;
      sub_18E44EFFC();

      v105 = v127;
      if (v112)
      {
      }

      else
      {
        v105 = 0x800000018E462F20;
        v50 = 0xD000000000000016;
      }

      v125 = v50;
      v126 = v105;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v106 = v125;
      v107 = v126;
      sub_18E3FDB10();
      swift_allocError();
      *v108 = v106;
      *(v108 + 8) = v107;
      *(v108 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v112)
    {
    }

    else
    {
      v42 = 0xD000000000000016;
      v44 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v66 = v45;

    v67 = sub_18E42A404();
    v68 = v66;
    v69 = v123;
    v70 = sub_18E424758(v42, v44, v67, v45);
    if (v69)
    {

      return;
    }

    v71 = *(v70 + 16);
    v72 = v109;
    sub_18E24852C();
    v74 = v73;

    v123 = 0;
    v110 = *(v124 + 16);
    v97 = v127;
    v58 = v119;
    v110(v127, v72, v119);
    v98 = [v74 metadata];
    v111 = sub_18E44E98C();

    v56 = v97;

    v112 = *(v124 + 8);
    (v112)(v72, v58);
    v59 = v110;
  }

  v60 = v113;
  v61 = v120;
  v110 = v59;
  v59(v120, v56, v58);
  v62 = v114;
  sub_18E249148(v61, v114, type metadata accessor for EmbeddingPreprocessorAssetContents);
  v63 = v115;
  sub_18E249148(v62, v115, type metadata accessor for EmbeddingPreprocessorAssetContents);

  v64 = v116;
  sub_18E43568C(0, 0, 1, v63, v111, v60 | 0x8000000000000000, v116 & 1, v118);
  sub_18E2491F8(v62, type metadata accessor for EmbeddingPreprocessorAssetContents);
  if (v64)
  {
    v65 = v123;
    sub_18E204B54();
    if (v65)
    {
      sub_18E1E8EEC(v118, &qword_1EABE1978, &qword_18E4E3A30);
      sub_18E2491F8(v61, type metadata accessor for EmbeddingPreprocessorAssetContents);
      (v112)(v127, v58);
      return;
    }

    v123 = 0;
  }

  v75 = v127;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v76 = sub_18E44E83C();
  sub_18E1C95EC(v76, qword_1ED6A9870);
  v77 = v117;
  v110(v117, v75, v58);
  sub_18E43ECB8(v5, &v125);
  v78 = sub_18E44E80C();
  v79 = v58;
  v80 = sub_18E44EE2C();
  if (os_log_type_enabled(v78, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v125 = v82;
    *v81 = 136315394;
    v83 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v83 || (sub_18E44F3CC() & 1) != 0)
    {
      v84 = v121;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v122 = v86;
      v84 = v87;
    }

    sub_18E2CFA50(v5);
    v88 = sub_18E1C9624(v122, v84, &v125);

    *(v81 + 4) = v88;
    *(v81 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v89 = v117;
    v90 = v119;
    v91 = sub_18E44F39C();
    v93 = v92;
    v94 = v89;
    v95 = v112;
    (v112)(v94, v90);
    v96 = sub_18E1C9624(v91, v93, &v125);

    *(v81 + 14) = v96;
    _os_log_impl(&dword_18E1C1000, v78, v80, "fetchLockedAsset for %s successfully returning asset from URL: %s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v82, -1, -1);
    MEMORY[0x193ACD400](v81, -1, -1);

    sub_18E2491F8(v120, type metadata accessor for EmbeddingPreprocessorAssetContents);
    v95(v127, v90);
  }

  else
  {
    sub_18E2CFA50(v5);

    v85 = v112;
    (v112)(v77, v79);
    sub_18E2491F8(v61, type metadata accessor for EmbeddingPreprocessorAssetContents);
    v85(v75, v79);
  }
}

void sub_18E41D150(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v116 = a2;
  v118 = a3;
  v7 = type metadata accessor for TokenOutputRetainListAssetContents(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v114 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v109 - v12;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v109 - v14;
  v16 = sub_18E44E46C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18E44E54C();
  v124 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v109 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v127 = &v109 - v28;
  v122 = *(v5 + 32);
  v29 = *(v5 + 40);
  v30 = *(v5 + 56);
  v123 = v4;
  v121 = v29;
  v119 = v26;
  v117 = v31;
  v113 = a1;
  if (v30)
  {
    v32 = *MEMORY[0x1E6968F58];
    v112 = v17;
    v33 = *(v17 + 104);
    v33(v19, v32, v16);
    sub_18E201DC8(v15, 1, 1, v20);
    sub_18E44E51C();
    v34 = *(v5 + 200);
    v35 = *(v5 + 208);
    v110 = v5;
    v36 = v34 == 0x636972656E6567 && v35 == 0xE700000000000000;
    if (v36 || (sub_18E44F3CC() & 1) != 0)
    {
      v37 = v121;

      v38 = v122;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v37 = v54;
    }

    v125 = v38;
    v126 = v37;
    v33(v19, *MEMORY[0x1E6968F70], v16);
    sub_18E24D39C();
    v55 = v127;
    sub_18E44E53C();
    (*(v112 + 8))(v19, v16);
    v56 = v55;

    v57 = v124;
    v58 = v119;
    v112 = *(v124 + 8);
    (v112)(v25, v119);
    v111 = sub_18E44E9AC();
    v59 = *(v57 + 16);
    v5 = v110;
  }

  else
  {
    v109 = v27;
    v39 = *(v5 + 120);
    v40 = *(v5 + 128);
    v41 = *(a1 + 16);
    v112 = *(v5 + 96);
    if (v112)
    {

      v42 = v39;
      v43 = v40;
    }

    else
    {
      v42 = v39;
      v39 = 0xD000000000000016;
      v43 = 0x800000018E462F20;
    }

    v44 = v40;

    v45 = sub_18E248038(v39, v43, v41);

    if (!v45)
    {
      v127 = v40;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v46 = 0xD000000000000016;
      v47 = sub_18E44E83C();
      sub_18E1C95EC(v47, qword_1ED6A9870);
      sub_18E43DD80(v5, &v125);
      sub_18E43DD80(v5, &v125);
      v48 = sub_18E44E80C();
      v49 = sub_18E44EE0C();
      v50 = v42;
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v125 = v52;
        *v51 = 136315394;
        v111 = v50;
        if (v112)
        {

          v53 = v127;

          v46 = v50;
        }

        else
        {
          v53 = 0x800000018E462F20;
        }

        sub_18E2CF1F8(v5);

        v99 = sub_18E1C9624(v46, v53, &v125);

        *(v51 + 4) = v99;
        *(v51 + 12) = 2080;
        v100 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v100 || (sub_18E44F3CC() & 1) != 0)
        {
          v101 = v121;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v122 = v102;
          v101 = v103;
        }

        v50 = v111;
        sub_18E2CF1F8(v5);
        v104 = sub_18E1C9624(v122, v101, &v125);

        *(v51 + 14) = v104;
        _os_log_impl(&dword_18E1C1000, v48, v49, "Failed to find token for asset set: %s for %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v52, -1, -1);
        MEMORY[0x193ACD400](v51, -1, -1);
      }

      else
      {

        sub_18E2CF1F8(v5);
        sub_18E2CF1F8(v5);
      }

      v125 = 0;
      v126 = 0xE000000000000000;
      sub_18E44EFFC();

      v105 = v127;
      if (v112)
      {
      }

      else
      {
        v105 = 0x800000018E462F20;
        v50 = 0xD000000000000016;
      }

      v125 = v50;
      v126 = v105;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v106 = v125;
      v107 = v126;
      sub_18E3FDB10();
      swift_allocError();
      *v108 = v106;
      *(v108 + 8) = v107;
      *(v108 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v112)
    {
    }

    else
    {
      v42 = 0xD000000000000016;
      v44 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v66 = v45;

    v67 = sub_18E42A764();
    v68 = v66;
    v69 = v123;
    v70 = sub_18E424758(v42, v44, v67, v45);
    if (v69)
    {

      return;
    }

    v71 = *(v70 + 16);
    v72 = v109;
    sub_18E24852C();
    v74 = v73;

    v123 = 0;
    v110 = *(v124 + 16);
    v97 = v127;
    v58 = v119;
    v110(v127, v72, v119);
    v98 = [v74 metadata];
    v111 = sub_18E44E98C();

    v56 = v97;

    v112 = *(v124 + 8);
    (v112)(v72, v58);
    v59 = v110;
  }

  v60 = v113;
  v61 = v120;
  v110 = v59;
  v59(v120, v56, v58);
  v62 = v114;
  sub_18E249148(v61, v114, type metadata accessor for TokenOutputRetainListAssetContents);
  v63 = v115;
  sub_18E249148(v62, v115, type metadata accessor for TokenOutputRetainListAssetContents);

  v64 = v116;
  sub_18E435B00(0, 0, 1, v63, v111, v60 | 0x8000000000000000, v116 & 1, v118);
  sub_18E2491F8(v62, type metadata accessor for TokenOutputRetainListAssetContents);
  if (v64)
  {
    v65 = v123;
    sub_18E204B54();
    if (v65)
    {
      sub_18E1E8EEC(v118, &qword_1EABE1D90, &qword_18E4E38F0);
      sub_18E2491F8(v61, type metadata accessor for TokenOutputRetainListAssetContents);
      (v112)(v127, v58);
      return;
    }

    v123 = 0;
  }

  v75 = v127;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v76 = sub_18E44E83C();
  sub_18E1C95EC(v76, qword_1ED6A9870);
  v77 = v117;
  v110(v117, v75, v58);
  sub_18E43DD80(v5, &v125);
  v78 = sub_18E44E80C();
  v79 = v58;
  v80 = sub_18E44EE2C();
  if (os_log_type_enabled(v78, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v125 = v82;
    *v81 = 136315394;
    v83 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v83 || (sub_18E44F3CC() & 1) != 0)
    {
      v84 = v121;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v122 = v86;
      v84 = v87;
    }

    sub_18E2CF1F8(v5);
    v88 = sub_18E1C9624(v122, v84, &v125);

    *(v81 + 4) = v88;
    *(v81 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v89 = v117;
    v90 = v119;
    v91 = sub_18E44F39C();
    v93 = v92;
    v94 = v89;
    v95 = v112;
    (v112)(v94, v90);
    v96 = sub_18E1C9624(v91, v93, &v125);

    *(v81 + 14) = v96;
    _os_log_impl(&dword_18E1C1000, v78, v80, "fetchLockedAsset for %s successfully returning asset from URL: %s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v82, -1, -1);
    MEMORY[0x193ACD400](v81, -1, -1);

    sub_18E2491F8(v120, type metadata accessor for TokenOutputRetainListAssetContents);
    v95(v127, v90);
  }

  else
  {
    sub_18E2CF1F8(v5);

    v85 = v112;
    (v112)(v77, v79);
    sub_18E2491F8(v61, type metadata accessor for TokenOutputRetainListAssetContents);
    v85(v75, v79);
  }
}

void sub_18E41E0A8(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v116 = a2;
  v118 = a3;
  v7 = type metadata accessor for HandwritingSynthesizerAssetContents(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v114 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v109 - v12;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v109 - v14;
  v16 = sub_18E44E46C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18E44E54C();
  v124 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v109 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v127 = &v109 - v28;
  v122 = *(v5 + 32);
  v29 = *(v5 + 40);
  v30 = *(v5 + 56);
  v123 = v4;
  v121 = v29;
  v119 = v26;
  v117 = v31;
  v113 = a1;
  if (v30)
  {
    v32 = *MEMORY[0x1E6968F58];
    v112 = v17;
    v33 = *(v17 + 104);
    v33(v19, v32, v16);
    sub_18E201DC8(v15, 1, 1, v20);
    sub_18E44E51C();
    v34 = *(v5 + 200);
    v35 = *(v5 + 208);
    v110 = v5;
    v36 = v34 == 0x636972656E6567 && v35 == 0xE700000000000000;
    if (v36 || (sub_18E44F3CC() & 1) != 0)
    {
      v37 = v121;

      v38 = v122;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v37 = v54;
    }

    v125 = v38;
    v126 = v37;
    v33(v19, *MEMORY[0x1E6968F70], v16);
    sub_18E24D39C();
    v55 = v127;
    sub_18E44E53C();
    (*(v112 + 8))(v19, v16);
    v56 = v55;

    v57 = v124;
    v58 = v119;
    v112 = *(v124 + 8);
    (v112)(v25, v119);
    v111 = sub_18E44E9AC();
    v59 = *(v57 + 16);
    v5 = v110;
  }

  else
  {
    v109 = v27;
    v39 = *(v5 + 120);
    v40 = *(v5 + 128);
    v41 = *(a1 + 16);
    v112 = *(v5 + 96);
    if (v112)
    {

      v42 = v39;
      v43 = v40;
    }

    else
    {
      v42 = v39;
      v39 = 0xD000000000000016;
      v43 = 0x800000018E462F20;
    }

    v44 = v40;

    v45 = sub_18E248038(v39, v43, v41);

    if (!v45)
    {
      v127 = v40;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v46 = 0xD000000000000016;
      v47 = sub_18E44E83C();
      sub_18E1C95EC(v47, qword_1ED6A9870);
      sub_18E43EBEC(v5, &v125);
      sub_18E43EBEC(v5, &v125);
      v48 = sub_18E44E80C();
      v49 = sub_18E44EE0C();
      v50 = v42;
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v125 = v52;
        *v51 = 136315394;
        v111 = v50;
        if (v112)
        {

          v53 = v127;

          v46 = v50;
        }

        else
        {
          v53 = 0x800000018E462F20;
        }

        sub_18E2CF9F0(v5);

        v99 = sub_18E1C9624(v46, v53, &v125);

        *(v51 + 4) = v99;
        *(v51 + 12) = 2080;
        v100 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v100 || (sub_18E44F3CC() & 1) != 0)
        {
          v101 = v121;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v122 = v102;
          v101 = v103;
        }

        v50 = v111;
        sub_18E2CF9F0(v5);
        v104 = sub_18E1C9624(v122, v101, &v125);

        *(v51 + 14) = v104;
        _os_log_impl(&dword_18E1C1000, v48, v49, "Failed to find token for asset set: %s for %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v52, -1, -1);
        MEMORY[0x193ACD400](v51, -1, -1);
      }

      else
      {

        sub_18E2CF9F0(v5);
        sub_18E2CF9F0(v5);
      }

      v125 = 0;
      v126 = 0xE000000000000000;
      sub_18E44EFFC();

      v105 = v127;
      if (v112)
      {
      }

      else
      {
        v105 = 0x800000018E462F20;
        v50 = 0xD000000000000016;
      }

      v125 = v50;
      v126 = v105;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v106 = v125;
      v107 = v126;
      sub_18E3FDB10();
      swift_allocError();
      *v108 = v106;
      *(v108 + 8) = v107;
      *(v108 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v112)
    {
    }

    else
    {
      v42 = 0xD000000000000016;
      v44 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v66 = v45;

    v67 = sub_18E42AAC4();
    v68 = v66;
    v69 = v123;
    v70 = sub_18E424758(v42, v44, v67, v45);
    if (v69)
    {

      return;
    }

    v71 = *(v70 + 16);
    v72 = v109;
    sub_18E24852C();
    v74 = v73;

    v123 = 0;
    v110 = *(v124 + 16);
    v97 = v127;
    v58 = v119;
    v110(v127, v72, v119);
    v98 = [v74 metadata];
    v111 = sub_18E44E98C();

    v56 = v97;

    v112 = *(v124 + 8);
    (v112)(v72, v58);
    v59 = v110;
  }

  v60 = v113;
  v61 = v120;
  v110 = v59;
  v59(v120, v56, v58);
  v62 = v114;
  sub_18E249148(v61, v114, type metadata accessor for HandwritingSynthesizerAssetContents);
  v63 = v115;
  sub_18E249148(v62, v115, type metadata accessor for HandwritingSynthesizerAssetContents);

  v64 = v116;
  sub_18E435F74(0, 0, 1, v63, v111, v60 | 0x8000000000000000, v116 & 1, v118);
  sub_18E2491F8(v62, type metadata accessor for HandwritingSynthesizerAssetContents);
  if (v64)
  {
    v65 = v123;
    sub_18E204B54();
    if (v65)
    {
      sub_18E1E8EEC(v118, &qword_1EABE19B0, &qword_18E4A0AD0);
      sub_18E2491F8(v61, type metadata accessor for HandwritingSynthesizerAssetContents);
      (v112)(v127, v58);
      return;
    }

    v123 = 0;
  }

  v75 = v127;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v76 = sub_18E44E83C();
  sub_18E1C95EC(v76, qword_1ED6A9870);
  v77 = v117;
  v110(v117, v75, v58);
  sub_18E43EBEC(v5, &v125);
  v78 = sub_18E44E80C();
  v79 = v58;
  v80 = sub_18E44EE2C();
  if (os_log_type_enabled(v78, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v125 = v82;
    *v81 = 136315394;
    v83 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v83 || (sub_18E44F3CC() & 1) != 0)
    {
      v84 = v121;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v122 = v86;
      v84 = v87;
    }

    sub_18E2CF9F0(v5);
    v88 = sub_18E1C9624(v122, v84, &v125);

    *(v81 + 4) = v88;
    *(v81 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v89 = v117;
    v90 = v119;
    v91 = sub_18E44F39C();
    v93 = v92;
    v94 = v89;
    v95 = v112;
    (v112)(v94, v90);
    v96 = sub_18E1C9624(v91, v93, &v125);

    *(v81 + 14) = v96;
    _os_log_impl(&dword_18E1C1000, v78, v80, "fetchLockedAsset for %s successfully returning asset from URL: %s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v82, -1, -1);
    MEMORY[0x193ACD400](v81, -1, -1);

    sub_18E2491F8(v120, type metadata accessor for HandwritingSynthesizerAssetContents);
    v95(v127, v90);
  }

  else
  {
    sub_18E2CF9F0(v5);

    v85 = v112;
    (v112)(v77, v79);
    sub_18E2491F8(v61, type metadata accessor for HandwritingSynthesizerAssetContents);
    v85(v75, v79);
  }
}

void sub_18E41F000(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v116 = a2;
  v118 = a3;
  v7 = type metadata accessor for ImageSpatialPhotosReliveAssetContents(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v114 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v109 - v12;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v109 - v14;
  v16 = sub_18E44E46C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18E44E54C();
  v124 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v109 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v127 = &v109 - v28;
  v122 = *(v5 + 32);
  v29 = *(v5 + 40);
  v30 = *(v5 + 56);
  v123 = v4;
  v121 = v29;
  v119 = v26;
  v117 = v31;
  v113 = a1;
  if (v30)
  {
    v32 = *MEMORY[0x1E6968F58];
    v112 = v17;
    v33 = *(v17 + 104);
    v33(v19, v32, v16);
    sub_18E201DC8(v15, 1, 1, v20);
    sub_18E44E51C();
    v34 = *(v5 + 200);
    v35 = *(v5 + 208);
    v110 = v5;
    v36 = v34 == 0x636972656E6567 && v35 == 0xE700000000000000;
    if (v36 || (sub_18E44F3CC() & 1) != 0)
    {
      v37 = v121;

      v38 = v122;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v37 = v54;
    }

    v125 = v38;
    v126 = v37;
    v33(v19, *MEMORY[0x1E6968F70], v16);
    sub_18E24D39C();
    v55 = v127;
    sub_18E44E53C();
    (*(v112 + 8))(v19, v16);
    v56 = v55;

    v57 = v124;
    v58 = v119;
    v112 = *(v124 + 8);
    (v112)(v25, v119);
    v111 = sub_18E44E9AC();
    v59 = *(v57 + 16);
    v5 = v110;
  }

  else
  {
    v109 = v27;
    v39 = *(v5 + 120);
    v40 = *(v5 + 128);
    v41 = *(a1 + 16);
    v112 = *(v5 + 96);
    if (v112)
    {

      v42 = v39;
      v43 = v40;
    }

    else
    {
      v42 = v39;
      v39 = 0xD000000000000016;
      v43 = 0x800000018E462F20;
    }

    v44 = v40;

    v45 = sub_18E248038(v39, v43, v41);

    if (!v45)
    {
      v127 = v40;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v46 = 0xD000000000000016;
      v47 = sub_18E44E83C();
      sub_18E1C95EC(v47, qword_1ED6A9870);
      sub_18E43E7F0(v5, &v125);
      sub_18E43E7F0(v5, &v125);
      v48 = sub_18E44E80C();
      v49 = sub_18E44EE0C();
      v50 = v42;
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v125 = v52;
        *v51 = 136315394;
        v111 = v50;
        if (v112)
        {

          v53 = v127;

          v46 = v50;
        }

        else
        {
          v53 = 0x800000018E462F20;
        }

        sub_18E2CF810(v5);

        v99 = sub_18E1C9624(v46, v53, &v125);

        *(v51 + 4) = v99;
        *(v51 + 12) = 2080;
        v100 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v100 || (sub_18E44F3CC() & 1) != 0)
        {
          v101 = v121;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v122 = v102;
          v101 = v103;
        }

        v50 = v111;
        sub_18E2CF810(v5);
        v104 = sub_18E1C9624(v122, v101, &v125);

        *(v51 + 14) = v104;
        _os_log_impl(&dword_18E1C1000, v48, v49, "Failed to find token for asset set: %s for %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v52, -1, -1);
        MEMORY[0x193ACD400](v51, -1, -1);
      }

      else
      {

        sub_18E2CF810(v5);
        sub_18E2CF810(v5);
      }

      v125 = 0;
      v126 = 0xE000000000000000;
      sub_18E44EFFC();

      v105 = v127;
      if (v112)
      {
      }

      else
      {
        v105 = 0x800000018E462F20;
        v50 = 0xD000000000000016;
      }

      v125 = v50;
      v126 = v105;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v106 = v125;
      v107 = v126;
      sub_18E3FDB10();
      swift_allocError();
      *v108 = v106;
      *(v108 + 8) = v107;
      *(v108 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v112)
    {
    }

    else
    {
      v42 = 0xD000000000000016;
      v44 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v66 = v45;

    v67 = sub_18E42AE24();
    v68 = v66;
    v69 = v123;
    v70 = sub_18E424758(v42, v44, v67, v45);
    if (v69)
    {

      return;
    }

    v71 = *(v70 + 16);
    v72 = v109;
    sub_18E24852C();
    v74 = v73;

    v123 = 0;
    v110 = *(v124 + 16);
    v97 = v127;
    v58 = v119;
    v110(v127, v72, v119);
    v98 = [v74 metadata];
    v111 = sub_18E44E98C();

    v56 = v97;

    v112 = *(v124 + 8);
    (v112)(v72, v58);
    v59 = v110;
  }

  v60 = v113;
  v61 = v120;
  v110 = v59;
  v59(v120, v56, v58);
  v62 = v114;
  sub_18E249148(v61, v114, type metadata accessor for ImageSpatialPhotosReliveAssetContents);
  v63 = v115;
  sub_18E249148(v62, v115, type metadata accessor for ImageSpatialPhotosReliveAssetContents);

  v64 = v116;
  sub_18E4363E8(0, 0, 1, v63, v111, v60 | 0x8000000000000000, v116 & 1, v118);
  sub_18E2491F8(v62, type metadata accessor for ImageSpatialPhotosReliveAssetContents);
  if (v64)
  {
    v65 = v123;
    sub_18E204B54();
    if (v65)
    {
      sub_18E1E8EEC(v118, &qword_1EABE1AA0, &qword_18E4A1B50);
      sub_18E2491F8(v61, type metadata accessor for ImageSpatialPhotosReliveAssetContents);
      (v112)(v127, v58);
      return;
    }

    v123 = 0;
  }

  v75 = v127;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v76 = sub_18E44E83C();
  sub_18E1C95EC(v76, qword_1ED6A9870);
  v77 = v117;
  v110(v117, v75, v58);
  sub_18E43E7F0(v5, &v125);
  v78 = sub_18E44E80C();
  v79 = v58;
  v80 = sub_18E44EE2C();
  if (os_log_type_enabled(v78, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v125 = v82;
    *v81 = 136315394;
    v83 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v83 || (sub_18E44F3CC() & 1) != 0)
    {
      v84 = v121;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v122 = v86;
      v84 = v87;
    }

    sub_18E2CF810(v5);
    v88 = sub_18E1C9624(v122, v84, &v125);

    *(v81 + 4) = v88;
    *(v81 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v89 = v117;
    v90 = v119;
    v91 = sub_18E44F39C();
    v93 = v92;
    v94 = v89;
    v95 = v112;
    (v112)(v94, v90);
    v96 = sub_18E1C9624(v91, v93, &v125);

    *(v81 + 14) = v96;
    _os_log_impl(&dword_18E1C1000, v78, v80, "fetchLockedAsset for %s successfully returning asset from URL: %s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v82, -1, -1);
    MEMORY[0x193ACD400](v81, -1, -1);

    sub_18E2491F8(v120, type metadata accessor for ImageSpatialPhotosReliveAssetContents);
    v95(v127, v90);
  }

  else
  {
    sub_18E2CF810(v5);

    v85 = v112;
    (v112)(v77, v79);
    sub_18E2491F8(v61, type metadata accessor for ImageSpatialPhotosReliveAssetContents);
    v85(v75, v79);
  }
}

void sub_18E41FF58(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v116 = a2;
  v118 = a3;
  v7 = type metadata accessor for LLMAdapterMetadataOverrideAssetContents(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v114 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v109 - v12;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v109 - v14;
  v16 = sub_18E44E46C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18E44E54C();
  v124 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v109 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v127 = &v109 - v28;
  v122 = *(v5 + 32);
  v29 = *(v5 + 40);
  v30 = *(v5 + 56);
  v123 = v4;
  v121 = v29;
  v119 = v26;
  v117 = v31;
  v113 = a1;
  if (v30)
  {
    v32 = *MEMORY[0x1E6968F58];
    v112 = v17;
    v33 = *(v17 + 104);
    v33(v19, v32, v16);
    sub_18E201DC8(v15, 1, 1, v20);
    sub_18E44E51C();
    v34 = *(v5 + 200);
    v35 = *(v5 + 208);
    v110 = v5;
    v36 = v34 == 0x636972656E6567 && v35 == 0xE700000000000000;
    if (v36 || (sub_18E44F3CC() & 1) != 0)
    {
      v37 = v121;

      v38 = v122;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v37 = v54;
    }

    v125 = v38;
    v126 = v37;
    v33(v19, *MEMORY[0x1E6968F70], v16);
    sub_18E24D39C();
    v55 = v127;
    sub_18E44E53C();
    (*(v112 + 8))(v19, v16);
    v56 = v55;

    v57 = v124;
    v58 = v119;
    v112 = *(v124 + 8);
    (v112)(v25, v119);
    v111 = sub_18E44E9AC();
    v59 = *(v57 + 16);
    v5 = v110;
  }

  else
  {
    v109 = v27;
    v39 = *(v5 + 120);
    v40 = *(v5 + 128);
    v41 = *(a1 + 16);
    v112 = *(v5 + 96);
    if (v112)
    {

      v42 = v39;
      v43 = v40;
    }

    else
    {
      v42 = v39;
      v39 = 0xD000000000000016;
      v43 = 0x800000018E462F20;
    }

    v44 = v40;

    v45 = sub_18E248038(v39, v43, v41);

    if (!v45)
    {
      v127 = v40;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v46 = 0xD000000000000016;
      v47 = sub_18E44E83C();
      sub_18E1C95EC(v47, qword_1ED6A9870);
      sub_18E43E58C(v5, &v125);
      sub_18E43E58C(v5, &v125);
      v48 = sub_18E44E80C();
      v49 = sub_18E44EE0C();
      v50 = v42;
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v125 = v52;
        *v51 = 136315394;
        v111 = v50;
        if (v112)
        {

          v53 = v127;

          v46 = v50;
        }

        else
        {
          v53 = 0x800000018E462F20;
        }

        sub_18E2CF678(v5);

        v99 = sub_18E1C9624(v46, v53, &v125);

        *(v51 + 4) = v99;
        *(v51 + 12) = 2080;
        v100 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v100 || (sub_18E44F3CC() & 1) != 0)
        {
          v101 = v121;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v122 = v102;
          v101 = v103;
        }

        v50 = v111;
        sub_18E2CF678(v5);
        v104 = sub_18E1C9624(v122, v101, &v125);

        *(v51 + 14) = v104;
        _os_log_impl(&dword_18E1C1000, v48, v49, "Failed to find token for asset set: %s for %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v52, -1, -1);
        MEMORY[0x193ACD400](v51, -1, -1);
      }

      else
      {

        sub_18E2CF678(v5);
        sub_18E2CF678(v5);
      }

      v125 = 0;
      v126 = 0xE000000000000000;
      sub_18E44EFFC();

      v105 = v127;
      if (v112)
      {
      }

      else
      {
        v105 = 0x800000018E462F20;
        v50 = 0xD000000000000016;
      }

      v125 = v50;
      v126 = v105;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v106 = v125;
      v107 = v126;
      sub_18E3FDB10();
      swift_allocError();
      *v108 = v106;
      *(v108 + 8) = v107;
      *(v108 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v112)
    {
    }

    else
    {
      v42 = 0xD000000000000016;
      v44 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v66 = v45;

    v67 = sub_18E42B184();
    v68 = v66;
    v69 = v123;
    v70 = sub_18E424758(v42, v44, v67, v45);
    if (v69)
    {

      return;
    }

    v71 = *(v70 + 16);
    v72 = v109;
    sub_18E24852C();
    v74 = v73;

    v123 = 0;
    v110 = *(v124 + 16);
    v97 = v127;
    v58 = v119;
    v110(v127, v72, v119);
    v98 = [v74 metadata];
    v111 = sub_18E44E98C();

    v56 = v97;

    v112 = *(v124 + 8);
    (v112)(v72, v58);
    v59 = v110;
  }

  v60 = v113;
  v61 = v120;
  v110 = v59;
  v59(v120, v56, v58);
  v62 = v114;
  sub_18E249148(v61, v114, type metadata accessor for LLMAdapterMetadataOverrideAssetContents);
  v63 = v115;
  sub_18E249148(v62, v115, type metadata accessor for LLMAdapterMetadataOverrideAssetContents);

  v64 = v116;
  sub_18E43685C(0, 0, 1, v63, v111, v60 | 0x8000000000000000, v116 & 1, v118);
  sub_18E2491F8(v62, type metadata accessor for LLMAdapterMetadataOverrideAssetContents);
  if (v64)
  {
    v65 = v123;
    sub_18E204B54();
    if (v65)
    {
      sub_18E1E8EEC(v118, &qword_1EABE1B50, &qword_18E4E39A0);
      sub_18E2491F8(v61, type metadata accessor for LLMAdapterMetadataOverrideAssetContents);
      (v112)(v127, v58);
      return;
    }

    v123 = 0;
  }

  v75 = v127;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v76 = sub_18E44E83C();
  sub_18E1C95EC(v76, qword_1ED6A9870);
  v77 = v117;
  v110(v117, v75, v58);
  sub_18E43E58C(v5, &v125);
  v78 = sub_18E44E80C();
  v79 = v58;
  v80 = sub_18E44EE2C();
  if (os_log_type_enabled(v78, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v125 = v82;
    *v81 = 136315394;
    v83 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v83 || (sub_18E44F3CC() & 1) != 0)
    {
      v84 = v121;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v122 = v86;
      v84 = v87;
    }

    sub_18E2CF678(v5);
    v88 = sub_18E1C9624(v122, v84, &v125);

    *(v81 + 4) = v88;
    *(v81 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v89 = v117;
    v90 = v119;
    v91 = sub_18E44F39C();
    v93 = v92;
    v94 = v89;
    v95 = v112;
    (v112)(v94, v90);
    v96 = sub_18E1C9624(v91, v93, &v125);

    *(v81 + 14) = v96;
    _os_log_impl(&dword_18E1C1000, v78, v80, "fetchLockedAsset for %s successfully returning asset from URL: %s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v82, -1, -1);
    MEMORY[0x193ACD400](v81, -1, -1);

    sub_18E2491F8(v120, type metadata accessor for LLMAdapterMetadataOverrideAssetContents);
    v95(v127, v90);
  }

  else
  {
    sub_18E2CF678(v5);

    v85 = v112;
    (v112)(v77, v79);
    sub_18E2491F8(v61, type metadata accessor for LLMAdapterMetadataOverrideAssetContents);
    v85(v75, v79);
  }
}

void AssetBackedResource<>.fetchLockedAsset(with:options:)()
{
  sub_18E1C62A0();
  v191 = v1;
  v162 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v178 = v9;
  v175 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v176 = swift_getAssociatedTypeWitness();
  sub_18E1C4EAC();
  v180 = v11;
  MEMORY[0x1EEE9AC00](v12);
  sub_18E1C64E0();
  v172 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_18E1D84B0();
  v179 = v15;
  sub_18E1C5780();
  v177 = v16;
  MEMORY[0x1EEE9AC00](v17);
  sub_18E1C64E0();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v18);
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v162 - v20;
  v22 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v22);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v23);
  sub_18E1CAF50();
  sub_18E1E68C4(v24);
  v170 = sub_18E44E46C();
  sub_18E1C4EAC();
  v169 = v25;
  MEMORY[0x1EEE9AC00](v26);
  sub_18E1C4EDC();
  v29 = v28 - v27;
  v183 = sub_18E44E54C();
  sub_18E1C4EAC();
  v181 = v30;
  MEMORY[0x1EEE9AC00](v31);
  sub_18E1C64E0();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v32);
  sub_18E1C7ED4();
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v162 - v35;
  MEMORY[0x1EEE9AC00](v34);
  sub_18E1D84B0();
  v182 = v37;
  HIDWORD(v171) = *v8;
  v38 = *(v4 + 8);
  v39 = v6;
  v40 = (*(v38 + 64))(v6, v38);
  v165 = v38;
  if (v40)
  {
    v164 = "enoughStorage";
    v41 = *MEMORY[0x1E6968F58];
    v42 = v169;
    v163 = *(v169 + 13);
    v43 = v170;
    v163(v29, v41, v170);
    sub_18E201DC8(v168, 1, 1, v183);
    sub_18E44E51C();
    v44 = *(v38 + 24);
    v168 = v0;
    v164 = v6;
    v186 = v44(v6, v38);
    v187 = v45;
    v163(v29, *MEMORY[0x1E6968F70], v43);
    sub_18E24D39C();
    v46 = v182;
    v47 = v36;
    sub_18E44E53C();
    (*(v42 + 8))(v29, v43);

    v48 = v181;
    v49 = v183;
    v170 = *(v181 + 8);
    v170(v36, v183);
    v50 = sub_18E44E9AC();
    v51 = *(v48 + 16);
  }

  else
  {
    v170 = v21;
    v169 = v36;
    v63 = *(v178 + 16);
    v64 = v4;
    v65 = *(v4 + 64);
    v66 = v39;
    v67 = sub_18E1D03F8();
    v65(v67);

    v68 = sub_18E1E2000();
    v70 = sub_18E248038(v68, v69, v63);

    if (!v70)
    {
      v183 = v65;
      v168 = v0;
      if (qword_1ED6A8AB0 != -1)
      {
        sub_18E1C6D78();
        swift_once();
      }

      v117 = sub_18E44E83C();
      sub_18E1CE8B4(v117, qword_1ED6A9870);
      v118 = v177;
      v119 = *(v177 + 16);
      sub_18E1EA5AC();
      (v119)(v120);
      v121 = v164;
      sub_18E1EA5AC();
      (v119)(v122);
      v123 = sub_18E44E80C();
      v124 = sub_18E44EE0C();
      if (os_log_type_enabled(v123, v124))
      {
        sub_18E1C9700();
        swift_slowAlloc();
        sub_18E1E2DDC();
        v182 = swift_slowAlloc();
        v184 = v182;
        *v119 = 136315394;
        LODWORD(v181) = v124;
        v125 = sub_18E1CD5EC();
        v183(v125);
        v180 = v123;
        v126 = *(v118 + 8);
        v127 = sub_18E1D5F00();
        v126(v127);
        v128 = v121;
        v129 = v189;
        v130 = v190;

        v131 = sub_18E1C9624(v129, v130, &v184);

        *(v119 + 4) = v131;
        sub_18E224E7C();
        sub_18E1FED54();
        v133 = v132(v39);
        v135 = v134;
        (v126)(v128, v39);
        v136 = sub_18E1C9624(v133, v135, &v184);

        *(v119 + 14) = v136;
        v137 = v180;
        sub_18E1D5C68();
        _os_log_impl(v138, v139, v140, v141, v142, v143);
        swift_arrayDestroy();
        sub_18E1C6164();
        MEMORY[0x193ACD400](v144);
        v145 = v183;
        sub_18E1C6164();
        MEMORY[0x193ACD400](v146);
      }

      else
      {

        v149 = *(v118 + 8);
        v150 = sub_18E1E2E14();
        v149(v150);
        v151 = sub_18E1D5F00();
        v149(v151);
        v145 = v183;
      }

      v186 = 0;
      v187 = 0xE000000000000000;
      sub_18E44EFFC();
      v152 = sub_18E1CD5EC();
      v145(v152);
      v153 = v189;
      v154 = v190;

      v184 = v153;
      v185 = v154;
      sub_18E1C77B0();
      v155 = sub_18E1E682C();
      MEMORY[0x193ACC300](v155);
      v156 = v184;
      v157 = v185;
      sub_18E3FDB10();
      sub_18E1D0098();
      v158 = swift_allocError();
      *v159 = v156;
      v159[1] = v157;
      sub_18E1E3830(v158, v159);
      swift_willThrow();
      goto LABEL_22;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v71 = v70;
    v72 = sub_18E1CD5EC();
    v73(v72);
    v74 = v189;
    v75 = v190;

    v76 = sub_18E1CD5EC();
    v78 = AssetBackedResource.usages.getter(v76, v77);
    v79 = v71;
    v80 = sub_18E424758(v74, v75, v78, v70);
    if (v1)
    {

      goto LABEL_22;
    }

    v81 = *(v80 + 16);
    v82 = v163;
    AssetBackedResource<>.determineAssetDetails(assetSet:)(v163, v81, v66, v64, v162, v83, v84, v85, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, AssociatedTypeWitness);
    v87 = v86;

    v168 = v0;
    v191 = 0;
    v164 = v66;
    v160 = v182;
    v51 = *(v181 + 16);
    v49 = v183;
    (v51)(v182, v82, v183);
    v161 = [v87 metadata];
    v50 = sub_18E44E98C();

    v46 = v160;
    v170 = *(v181 + 8);
    v170(v163, v49);
    v47 = v169;
  }

  v169 = v51;
  (v51)(v47, v46, v49);
  v52 = AssociatedConformanceWitness;
  v53 = v176;
  v54 = swift_getAssociatedConformanceWitness();
  v55 = v179;
  (*(v54 + 24))(v47, v53, v54);
  v56 = swift_checkMetadataState();
  v186 = 0;
  v187 = 0;
  v188 = 1;
  v57 = v172;
  (v180[2].isa)(v172, v55, v53);
  v58 = *(v52 + 128);
  v59 = v178;

  v60 = v57;
  LODWORD(v57) = HIDWORD(v171);
  v58(&v186, v60, v50, v59, HIDWORD(v171), v56, v52);
  v61 = v177;
  if (v57)
  {
    sub_18E204B54();
    sub_18E1E31F4();
    if (v191)
    {
      sub_18E1C82B8();
      (*(v62 + 8))(v175, v56);
      (v180[1].isa)(v179, v53);
      v170(v182, v49);
      goto LABEL_22;
    }
  }

  else
  {
    sub_18E1E31F4();
  }

  v88 = v167;
  v89 = v166;
  if (qword_1ED6A8AB0 != -1)
  {
    sub_18E1C6D78();
    swift_once();
  }

  v90 = sub_18E44E83C();
  sub_18E1CE8B4(v90, qword_1ED6A9870);
  (*(v61 + 16))(v88, v168, v58);
  v91 = v182;
  (v169)(v89, v182, v49);
  v92 = v89;
  v93 = sub_18E44E80C();
  v94 = sub_18E44EE2C();
  if (os_log_type_enabled(v93, v94))
  {
    sub_18E1C9700();
    swift_slowAlloc();
    sub_18E1E2DDC();
    v178 = swift_slowAlloc();
    v186 = v178;
    *v88 = 136315394;
    sub_18E1FED54();
    v95(v58);
    sub_18E221954();
    v96 = sub_18E208090();
    v97(v96);
    v98 = sub_18E1DD5A0();
    v101 = sub_18E1C9624(v98, v99, v100);

    *(v88 + 4) = v101;
    sub_18E224E7C();
    sub_18E21D198();
    sub_18E43ADE8(v102, v103, MEMORY[0x1E6968FE0]);
    v104 = v183;
    sub_18E44F39C();
    v105 = v170;
    v170(v92, v104);
    v106 = sub_18E1C5BFC();
    v109 = sub_18E1C9624(v106, v107, v108);

    *(v88 + 14) = v109;
    sub_18E1D5C68();
    _os_log_impl(v110, v111, v112, v113, v114, v115);
    swift_arrayDestroy();
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
    v116 = sub_18E1D6214();
    MEMORY[0x193ACD400](v116);

    (v180[1].isa)(v179, v176);
    v105(v182, v104);
  }

  else
  {

    v147 = v183;
    v148 = v170;
    v170(v92, v183);
    (*(v61 + 8))(v88, v58);
    (v180[1].isa)(v179, v53);
    v148(v91, v147);
  }

LABEL_22:
  sub_18E1C6650();
}

void AssetBackedResource<>.subscription.getter()
{
  sub_18E1C575C();
  v2 = v1;
  v4 = *(v3 + 24);
  v4(v17);
  sub_18E202008(v18, v15, &qword_1EABE2FB8, &qword_18E4B0C70);
  sub_18E1FE044(v17);
  if (v18[1])
  {
    v0 = v18[3];
    v10 = v18[2];

    sub_18E1E8EEC(v18, &qword_1EABE2FB8, &qword_18E4B0C70);
  }

  else
  {
    sub_18E1D4480();
    v10 = 0x6E2D726F2D6C6C61;
  }

  v5 = sub_18E1CF9A0();
  v4(v5);
  sub_18E202008(v16, v12, &qword_1EABE2FB8, &qword_18E4B0C70);
  sub_18E1FE044(v15);
  if (v16[1])
  {
    v7 = v16[4];
    v6 = v16[5];

    sub_18E1E8EEC(v16, &qword_1EABE2FB8, &qword_18E4B0C70);
  }

  else
  {
    v6 = 0x800000018E462F20;
    v7 = 0xD000000000000016;
  }

  v8 = sub_18E1CF9A0();
  v4(v8);
  sub_18E202008(v13, v11, &qword_1EABE2FB8, &qword_18E4B0C70);
  sub_18E1FE044(v12);
  if (v13[1])
  {
    v9 = v14;
    sub_18E1E8EEC(v13, &qword_1EABE2FB8, &qword_18E4B0C70);
  }

  else
  {
    v9 = 15;
  }

  sub_18E1D63B4();
  *(v2 + 16) = v10;
  *(v2 + 24) = v0;
  *(v2 + 32) = v7;
  *(v2 + 40) = v6;
  *(v2 + 48) = v9;
  sub_18E1C5544();
}

void *sub_18E421EB0()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

void *sub_18E421FA4()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

void *sub_18E422098()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

void *sub_18E42218C()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

void *sub_18E422248()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

void *sub_18E42233C()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

void *sub_18E422430()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

void *sub_18E422524()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

void *sub_18E422618()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

void *sub_18E42270C()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

void *sub_18E422800()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

void *sub_18E4228F4()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

void *sub_18E4229E8()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

void *sub_18E422ADC()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

void *sub_18E422BD0()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

void *sub_18E422D6C()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

void *sub_18E422E60()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

void *sub_18E422F54()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

void *sub_18E423048()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

void *sub_18E42313C()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

void *sub_18E423230()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

void *sub_18E423324()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

void *sub_18E423418()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

void *sub_18E42350C()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

void AssetSubscription.status()(_BYTE *a1@<X8>)
{
  v5 = [objc_opt_self() sharedManager];
  if (sub_18E44EB5C())
  {
    sub_18E1CFFC0();
    v2 = sub_18E44EA8C();
    v3 = sub_18E44EA8C();
    v4 = [v5 downloadStatusForSubscriber:v2 subscriptionName:v3];

    UAFSubscriptionDownloadStatus.assetSubscriptionStatus()(v4, a1);
  }

  else
  {

    *a1 = 6;
  }
}

void static AssetSubscription.== infix(_:_:)()
{
  sub_18E1C575C();
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = *(v1 + 48);
  v12 = *v0 == *v1 && *(v0 + 8) == *(v1 + 8);
  if (v12 || (sub_18E44F3CC() & 1) != 0)
  {
    v13 = v2 == v7 && v4 == v8;
    if (v13 || (sub_18E1DD5A0(), (sub_18E44F3CC() & 1) != 0))
    {
      v14 = v3 == v9 && v5 == v10;
      if (v14 || (sub_18E44F3CC()) && v6 != 15 && v11 != 15)
      {
        sub_18E1E3F98(v6, v11);
      }
    }
  }

  sub_18E1C5544();
}

void UAFSubscriptionDownloadStatus.assetSubscriptionStatus()(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1 >= 8)
  {
    if (qword_1ED6A94F8 != -1)
    {
      sub_18E1C5C20(&qword_1ED6A94F8);
    }

    v5 = sub_18E44E83C();
    sub_18E1C95EC(v5, qword_1ED6A98C0);
    v6 = sub_18E44E80C();
    v7 = sub_18E44EE1C();
    if (os_log_type_enabled(v6, v7))
    {
      sub_18E1E2FE8();
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = a1;
      _os_log_impl(&dword_18E1C1000, v6, v7, "SubscriptionManagerProvider: Download status type of: %lu has not been accounted for", v8, 0xCu);
      v9 = sub_18E1D6214();
      MEMORY[0x193ACD400](v9);
    }

    LOBYTE(v4) = 4;
  }

  else
  {
    v4 = 0x807030502010004uLL >> (8 * a1);
  }

  *a2 = v4;
}

uint64_t CatalogErrors.AssetErrors.errorDescription.getter()
{
  v1 = sub_18E44E72C();
  v2 = sub_18E1C5B08(v1);
  MEMORY[0x1EEE9AC00](v2);
  sub_18E1C4EDC();
  v3 = sub_18E44EA7C();
  v4 = sub_18E1C5B08(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1C4EDC();
  v5 = sub_18E44EA5C();
  v6 = sub_18E1C5B08(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C4EDC();
  if (*(v0 + 16))
  {
    sub_18E44EA4C();
    sub_18E1C77B0();
  }

  else
  {
    sub_18E44EA4C();
  }

  sub_18E44EA3C();
  sub_18E44EA2C();
  sub_18E44EA3C();
  sub_18E44EA6C();
  sub_18E44E71C();
  sub_18E1CEA7C();
  return sub_18E44EAEC();
}

uint64_t sub_18E423B38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x800000018E4782D0 == a2;
  if (v4 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000018E4782F0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_18E44F3CC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_18E423C0C(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_18E423C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E423B38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E423C74(uint64_t a1)
{
  v2 = sub_18E43A180();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E423CB0(uint64_t a1)
{
  v2 = sub_18E43A180();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E423CEC(uint64_t a1)
{
  v2 = sub_18E43A1D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E423D28(uint64_t a1)
{
  v2 = sub_18E43A1D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E423D64(uint64_t a1)
{
  v2 = sub_18E43A228();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E423DA0(uint64_t a1)
{
  v2 = sub_18E43A228();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CatalogErrors.AssetErrors.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_18E1C62A0();
  v53 = v24;
  v27 = v26;
  sub_18E2706EC(&qword_1EABE9150, &qword_18E4E2D08);
  sub_18E1C4EAC();
  v49 = v29;
  v50 = v28;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v30);
  sub_18E1CAF50();
  v48 = v31;
  sub_18E2706EC(&qword_1EABE9158, &qword_18E4E2D10);
  sub_18E1C4EAC();
  v46 = v33;
  v47 = v32;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v34);
  sub_18E1FF2DC();
  v35 = sub_18E2706EC(&qword_1EABE9160, &qword_18E4E2D18);
  sub_18E1C4EAC();
  v37 = v36;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v46 - v39;
  v41 = *v23;
  v51 = v23[1];
  v52 = v41;
  v42 = *(v23 + 16);
  sub_18E1E15F4(v27, v27[3]);
  sub_18E43A180();
  sub_18E44F4EC();
  if (v42)
  {
    sub_18E43A1D4();
    v43 = v48;
    sub_18E44F2AC();
    v44 = v50;
    sub_18E44F31C();
    (*(v49 + 8))(v43, v44);
  }

  else
  {
    sub_18E43A228();
    sub_18E44F2AC();
    v45 = v47;
    sub_18E44F31C();
    (*(v46 + 8))(v25, v45);
  }

  (*(v37 + 8))(v40, v35);
  sub_18E1C6650();
}

void CatalogErrors.AssetErrors.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_18E1C62A0();
  a22 = v24;
  a23 = v25;
  v76 = v26;
  v77 = v23;
  v28 = v27;
  sub_18E2706EC(&qword_1EABE9180, &qword_18E4E2D20);
  sub_18E1C4EAC();
  v73 = v29;
  v74 = v30;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v31);
  sub_18E1C561C();
  v32 = sub_18E2706EC(&qword_1EABE9188, &qword_18E4E2D28);
  sub_18E1C4EAC();
  v72 = v33;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v34);
  v36 = v70 - v35;
  v37 = sub_18E2706EC(&qword_1EABE9190, &unk_18E4E2D30);
  sub_18E1C4EAC();
  v75 = v38;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v39);
  v41 = v70 - v40;
  sub_18E1E15F4(v28, v28[3]);
  sub_18E43A180();
  v42 = v77;
  sub_18E44F4DC();
  if (v42)
  {
    goto LABEL_9;
  }

  v70[2] = v32;
  v71 = v36;
  v77 = v28;
  v43 = v76;
  v44 = sub_18E44F28C();
  sub_18E1FF648(v44, 0);
  if (v46 == v47 >> 1)
  {
LABEL_7:
    sub_18E44F04C();
    sub_18E1D0098();
    swift_allocError();
    v57 = v56;
    sub_18E2706EC(&qword_1EABE0F08, &qword_18E49D2B0);
    *v57 = &type metadata for CatalogErrors.AssetErrors;
    sub_18E44F1BC();
    sub_18E44F03C();
    sub_18E1C82B8();
    (*(v58 + 104))(v57);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v75 + 8))(v41, v37);
    v28 = v77;
LABEL_9:
    sub_18E1C9934(v28);
LABEL_10:
    sub_18E1C6650();
    return;
  }

  v70[1] = 0;
  if (v46 < (v47 >> 1))
  {
    v48 = *(v45 + v46);
    v49 = sub_18E200384(v46 + 1);
    v51 = v50;
    v53 = v52;
    swift_unknownObjectRelease();
    if (v51 == v53 >> 1)
    {
      v54 = v48;
      if (v48)
      {
        LODWORD(v72) = v48;
        a13 = 1;
        sub_18E43A1D4();
        sub_18E1E399C(&_s11AssetErrorsO27FailedToFindAssetCodingKeysON, &a13);
        v55 = v43;
        v71 = v49;
        v60 = sub_18E44F22C();
        v62 = v61;
        swift_unknownObjectRelease();
        v63 = sub_18E1E1ACC();
        v64(v63);
        v54 = v72;
      }

      else
      {
        a12 = 0;
        sub_18E43A228();
        sub_18E1E399C(&_s11AssetErrorsO34FailedToRetrieveAssetSetCodingKeysON, &a12);
        v55 = v43;
        v59 = sub_18E44F22C();
        v62 = v65;
        v74 = v59;
        swift_unknownObjectRelease();
        v66 = sub_18E1D03F8();
        v67(v66);
        v60 = v74;
      }

      v68 = sub_18E1CF9A0();
      v69(v68);
      *v55 = v60;
      *(v55 + 8) = v62;
      *(v55 + 16) = v54;
      sub_18E1C9934(v77);
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  __break(1u);
}

void sub_18E424590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 == a4 && a2 == a5;
  if (v5 || (sub_18E44F3CC() & 1) != 0)
  {
    v6 = sub_18E208090();

    sub_18E26D86C(v6, v7);
  }
}

uint64_t sub_18E4245F8(uint64_t a1, uint64_t a2)
{
  sub_18E44EB4C();
  v2 = sub_18E208090();

  return sub_18E2704B4(v2, v3);
}

uint64_t sub_18E424634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18E1CFCDC(a1);
  sub_18E44EB4C();
  sub_18E2704B4(v5, a3);
  return sub_18E44F4CC();
}

uint64_t sub_18E4246E4(uint64_t a1)
{
  v2 = *v1;
  sub_18E44F48C();
  sub_18E4245F8(v4, v2);
  return sub_18E44F4CC();
}

uint64_t sub_18E424758(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_18E1D121C(0, &qword_1ED6A7DB8, 0x1E69C7548);
  v6 = sub_18E32F228(0xD000000000000020, 0x800000018E478310);
  v7 = [objc_opt_self() sharedManager];
  v8 = sub_18E44EA8C();
  v9 = sub_18E43ACF8(v8, a3, a4, v7);

  if (v9)
  {

    sub_18E1C77B0();
    v11 = sub_18E32F228(0xD00000000000001CLL, v10);
    type metadata accessor for RunningBoardAssertedAssetSet();
    sub_18E1CD8AC();
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    *(v12 + 24) = v11;
    [v6 invalidate];
  }

  else
  {
    if (qword_1ED6A8AB0 != -1)
    {
      sub_18E1C6D78();
      swift_once();
    }

    v13 = sub_18E44E83C();
    sub_18E1CE8B4(v13, qword_1ED6A9870);
    v14 = a4;

    v15 = sub_18E44E80C();
    v16 = sub_18E44EE0C();

    if (os_log_type_enabled(v15, v16))
    {
      sub_18E1CA69C();
      v17 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      sub_18E1CA638();
      swift_slowAlloc();
      *v17 = 136315650;
      v18 = sub_18E1C5838();
      *(v17 + 4) = sub_18E1C9624(v18, v19, v20);
      *(v17 + 12) = 2080;
      sub_18E44E99C();

      v21 = sub_18E1C5838();
      v24 = sub_18E1C9624(v21, v22, v23);

      *(v17 + 14) = v24;
      *(v17 + 22) = 2112;
      *(v17 + 24) = v14;
      *v33 = a4;
      v25 = v14;
      _os_log_impl(&dword_18E1C1000, v15, v16, "Failed to initialize asset set %s with usages %s and token: %@", v17, 0x20u);
      sub_18E1E8EEC(v33, &unk_1EABE9120, &qword_18E4E3A90);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E212078();
      swift_arrayDestroy();
      v26 = sub_18E1D6214();
      MEMORY[0x193ACD400](v26);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {
    }

    sub_18E44EFFC();

    v27 = sub_18E1C5838();
    MEMORY[0x193ACC300](v27);

    v28 = sub_18E1C8D78();
    MEMORY[0x193ACC300](v28, v29 | 0xEF74657320740000);
    v12 = 0xEF203A6B636F4C65;
    sub_18E3FDB10();
    sub_18E1D0098();
    v30 = swift_allocError();
    *v31 = 0x636E657265686F43;
    v31[1] = 0xEF203A6B636F4C65;
    sub_18E1E3830(v30, v31);
    swift_willThrow();
    [v6 invalidate];
  }

  return v12;
}

uint64_t sub_18E424B24()
{
  v1 = sub_18E2706EC(&qword_1EABE1060, &qword_18E4E3890);
  sub_18E1C5B08(v1);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - v3;
  v5 = sub_18E44ED4C();
  sub_18E201DC8(v4, 1, 1, v5);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  sub_18E1CADEC();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v8[5] = v7;
  v9 = v7;
  v10 = v6;
  sub_18E3FE1D0();

  return v0;
}

uint64_t sub_18E424C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_18E424C3C, 0, 0);
}

uint64_t sub_18E424C3C()
{
  sub_18E1C52F0();
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_18E424CF8;
  sub_18E1C8F20();

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_18E424CF8()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v1 = *v0;
  sub_18E1C52E0();
  *v2 = v1;

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18E424DFC()
{
  sub_18E1C52F0();
  [*(v0 + 24) invalidate];
  sub_18E1D008C();

  return v1();
}

void sub_18E424E5C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_18E424EC8()
{
  sub_18E424B24();
  sub_18E1CD8AC();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_18E424EF8()
{
  v1 = v0;
  v13[1] = *MEMORY[0x1E69E9840];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v2 = [objc_opt_self() currentProcess];
  v3 = [v2 isManaged];

  if (v3)
  {
    sub_18E1D121C(0, &qword_1ED6A7DA8, 0x1E69C7560);
    v4 = sub_18E25F75C(0xD000000000000010, 0x800000018E468660, 0xD000000000000019);
    v5 = [objc_opt_self() currentProcess];
    sub_18E2706EC(&qword_1EABE3AE0, &qword_18E4B7460);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18E4B7440;
    *(v6 + 32) = v4;
    objc_allocWithZone(MEMORY[0x1E69C7548]);
    v7 = v4;
    v8 = sub_18E25F898(0xD00000000000001DLL, 0x800000018E4E3140, v5, v6);
    v13[0] = 0;
    if ([v8 acquireWithError_])
    {
      v9 = v13[0];
    }

    else
    {
      v10 = v13[0];
      v11 = sub_18E44E44C();

      swift_willThrow();
    }
  }

  else
  {
    v8 = 0;
  }

  *(v1 + 24) = v8;
  return v1;
}

uint64_t sub_18E425104()
{
  v1 = sub_18E2706EC(&qword_1EABE1060, &qword_18E4E3890);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_18E44ED4C();
  sub_18E201DC8(v3, 1, 1, v4);
  swift_beginAccess();
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;
  v7[5] = v6;
  v8 = v6;

  sub_18E3FE1D0();

  return v0;
}

uint64_t sub_18E425224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_18E425244, 0, 0);
}

uint64_t sub_18E425244()
{
  sub_18E1C6170();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v0 + 32) = v2;
  if (v2)
  {
    *(v0 + 40) = 0;
    v3 = *(v1 + 56);
    *(v0 + 48) = v3;
    v4 = swift_task_alloc();
    *(v0 + 56) = v4;
    *(v4 + 16) = v3;
    v5 = v3;
    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    sub_18E221CC4(v6);
    sub_18E1C8F20();

    return MEMORY[0x1EEE6DDE0]();
  }

  else
  {
    [*(v0 + 24) invalidate];
    sub_18E1D008C();

    return v7();
  }
}

uint64_t sub_18E425350()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v1 = *v0;
  sub_18E1C52E0();
  *v2 = v1;

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18E425454()
{
  sub_18E1C6170();
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);

  if (v1 + 1 == v2)
  {
    [*(v0 + 24) invalidate];
    sub_18E1D008C();

    return v3();
  }

  else
  {
    v5 = *(v0 + 40) + 1;
    *(v0 + 40) = v5;
    v6 = *(*(v0 + 16) + 32 * v5 + 56);
    *(v0 + 48) = v6;
    v7 = swift_task_alloc();
    *(v0 + 56) = v7;
    *(v7 + 16) = v6;
    v8 = v6;
    v9 = swift_task_alloc();
    *(v0 + 64) = v9;
    *v9 = v0;
    sub_18E221CC4(v9);
    sub_18E1C8F20();

    return MEMORY[0x1EEE6DDE0]();
  }
}

void sub_18E425578()
{
  sub_18E1C575C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_18E2706EC(&qword_1EABE9210, &qword_18E4E38C0);
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_18E1D4B44();
  v8(v7);
  v9 = swift_allocObject();
  sub_18E1EA5AC();
  v10();
  v12[4] = v3;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_18E424E5C;
  v12[3] = v1;
  v11 = _Block_copy(v12);

  [v5 invalidateWithQueue:0 completion:v11];
  _Block_release(v11);
  sub_18E1C5544();
}

uint64_t sub_18E425700()
{
  v0 = sub_18E425104();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_18E425730(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  swift_beginAccess();

  v10 = a4;
  sub_18E286938();
  v11 = *(*(v5 + 16) + 16);
  sub_18E286980(v11);
  v12 = *(v5 + 16);
  *(v12 + 16) = v11 + 1;
  v13 = (v12 + 32 * v11);
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = v10;
  *(v5 + 16) = v12;
  return swift_endAccess();
}

uint64_t sub_18E4257EC(void (*a1)(uint64_t))
{
  swift_beginAccess();

  a1(v2);
}

uint64_t sub_18E425874()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v11 = MEMORY[0x1E69E7CC0];

    sub_18E26F1E0(0, v2, 0);
    v3 = (v1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v11 + 16);
      v6 = *(v11 + 24);

      if (v7 >= v6 >> 1)
      {
        sub_18E26F1E0(v6 > 1, v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v8 = v11 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
  sub_18E1CDB50();
  v9 = sub_18E44EA0C();

  return v9;
}

void AssetLock.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1C62A0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  type metadata accessor for CatalogClient();
  swift_allocObject();
  v25 = CatalogClient.init()();
  sub_18E2761D4(v25, v26, v27, v28, v29, v30, v31, v32, v50, v51, v52, v53, v54, *(&v54 + 1), v55, *(&v55 + 1), v56, v57, v58[0], v58[1]);
  v34 = v33;

  if (!v20)
  {
    v35 = *(v34 + 16);
    if (v35)
    {
      v36 = MEMORY[0x1E69E7CC0];
      v37 = v34 + 32;
      while (1)
      {
        sub_18E1E4398(v37, v61);
        sub_18E1C551C(v61, v58);
        v38 = sub_18E1E2E14();
        sub_18E2706EC(v38, v39);
        v40 = sub_18E1E2000();
        sub_18E2706EC(v40, v41);
        if (swift_dynamicCast())
        {
          if (*(&v55 + 1))
          {
            sub_18E1C551C(&v54, v58);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            a10 = v36;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_18E211EDC();
              v36 = v48;
              a10 = v48;
            }

            v43 = *(v36 + 16);
            if (v43 >= *(v36 + 24) >> 1)
            {
              sub_18E211EDC();
              v36 = v49;
              a10 = v49;
            }

            v45 = v59;
            v44 = v60;
            sub_18E274828(v58, v59);
            sub_18E1C5780();
            MEMORY[0x1EEE9AC00](v46);
            sub_18E1C4EDC();
            sub_18E1C561C();
            (*(v47 + 16))(&qword_18E49D250);
            sub_18E1DF2A8(v43, &qword_18E49D250, &a10, v45, v44);
            sub_18E1C9934(v58);
            goto LABEL_13;
          }
        }

        else
        {
          v56 = 0;
          v54 = 0u;
          v55 = 0u;
        }

        sub_18E1E8EEC(&v54, &qword_1EABE1018, &unk_18E4AAB70);
LABEL_13:
        v37 += 40;
        if (!--v35)
        {

          goto LABEL_16;
        }
      }
    }

    v36 = MEMORY[0x1E69E7CC0];
LABEL_16:
    AssetLock.init(resources:)(v36, v61);
    *v24 = *&v61[0];
  }

  sub_18E1C6650();
}

void sub_18E425CA4(uint64_t a1)
{
  sub_18E2706EC(&qword_1EABE1090, &qword_18E4E3AA0);
  v2 = MEMORY[0x1E69E7CC0];
  v40 = sub_18E44E9AC();
  v3 = (a1 + 32);
  v4 = *(a1 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    sub_18E425F9C(&v40, v3);
    v3 = v5;
  }

  v6 = v40;
  v35 = v40 + 64;
  sub_18E1C7734();
  v9 = v8 & v7;
  v34 = (v10 + 63) >> 6;

  v11 = 0;
  v12 = v2;
  v36 = v6;
  do
  {
    while (1)
    {
      if (!v9)
      {
        while (1)
        {
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v13 >= v34)
          {
            goto LABEL_31;
          }

          v9 = *(v35 + 8 * v13);
          ++v11;
          if (v9)
          {
            v11 = v13;
            goto LABEL_10;
          }
        }

        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }

LABEL_10:
      v14 = __clz(__rbit64(v9)) | (v11 << 6);
      v15 = *(*(v6 + 56) + 8 * v14);
      v16 = *(v15 + 16);
      if (v16)
      {
        v37 = v9;
        v38 = v12;
        v17 = (*(v6 + 48) + 16 * v14);
        v18 = v17[1];
        v39 = *v17;
        v40 = v2;

        sub_18E26F358(0, v16, 0);
        v19 = v40;
        v20 = 32;
        do
        {
          v21 = *(v15 + v20);
          v40 = v19;
          v22 = *(v19 + 16);
          v23 = *(v19 + 24);

          if (v22 >= v23 >> 1)
          {
            sub_18E26F358((v23 > 1), v22 + 1, 1);
            v19 = v40;
          }

          *(v19 + 16) = v22 + 1;
          v24 = (v19 + 24 * v22);
          v24[4] = v39;
          v24[5] = v18;
          v24[6] = v21;
          v20 += 8;
          --v16;
        }

        while (v16);

        v2 = MEMORY[0x1E69E7CC0];
        v6 = v36;
        v9 = v37;
        v12 = v38;
      }

      else
      {
        v19 = v2;
      }

      v25 = *(v19 + 16);
      v26 = *(v12 + 16);
      v27 = v26 + v25;
      if (__OFADD__(v26, v25))
      {
        goto LABEL_33;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v27 > *(v12 + 24) >> 1)
      {
        if (v26 <= v27)
        {
          v29 = v26 + v25;
        }

        else
        {
          v29 = v26;
        }

        sub_18E3EFB70(isUniquelyReferenced_nonNull_native, v29, 1, v12);
        v12 = v30;
      }

      v9 &= v9 - 1;
      if (!*(v19 + 16))
      {
        break;
      }

      if ((*(v12 + 24) >> 1) - *(v12 + 16) < v25)
      {
        goto LABEL_34;
      }

      swift_arrayInitWithCopy();

      if (v25)
      {
        v31 = *(v12 + 16);
        v32 = __OFADD__(v31, v25);
        v33 = v31 + v25;
        if (v32)
        {
          goto LABEL_35;
        }

        *(v12 + 16) = v33;
      }
    }
  }

  while (!v25);
  __break(1u);
LABEL_31:
}

uint64_t sub_18E425F9C(uint64_t *a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  sub_18E1E15F4(a2, v4);
  v6 = v4;
  v7 = a1;
  (*(v5 + 64))(v45, v6, v5);
  v8 = v45[4];
  v9 = v45[5];

  v10 = a2[3];
  v11 = a2[4];
  sub_18E1E15F4(a2, v10);
  v12 = AssetBackedResource.usages.getter(v10, v11);
  v13 = *v7;
  if (sub_18E21654C(v8, v9, *v7))
  {
  }

  else
  {
    swift_isUniquelyReferenced_nonNull_native();
    v45[0] = *v7;
    sub_18E27005C();
    v13 = v45[0];
    *v7 = v45[0];
  }

  v44 = v7;
  v45[8] = v9;
  v14 = sub_18E21654C(v8, v9, v13);
  if (!v14)
  {
    goto LABEL_37;
  }

  v15 = v14;
  isUniquelyReferenced_nonNull_native = 0;
  v17 = *(v14 + 16);
  for (i = -32; ; i -= 8)
  {
    if (v17 == isUniquelyReferenced_nonNull_native)
    {

      i = v44;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45[0] = *v44;
      v20 = v45[0];
      v21 = sub_18E1CBD4C();
      if (!__OFADD__(*(v20 + 16), (v22 & 1) == 0))
      {
        v23 = v21;
        v24 = v22;
        sub_18E2706EC(&qword_1EABE0E88, &unk_18E49D230);
        if (sub_18E44F0EC())
        {
          v25 = sub_18E1CBD4C();
          if ((v24 & 1) != (v26 & 1))
          {
            goto LABEL_38;
          }

          isUniquelyReferenced_nonNull_native = v25;
        }

        else
        {
          isUniquelyReferenced_nonNull_native = v23;
        }

        if (v24)
        {
          v35 = *(*(v45[0] + 56) + 8 * isUniquelyReferenced_nonNull_native);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_21:
            v36 = *(v35 + 16);
            if (v36 >= *(v35 + 24) >> 1)
            {
              sub_18E3EFEC8();
              v35 = v41;
            }

            *(v35 + 16) = v36 + 1;
            *(v35 + 8 * v36 + 32) = v12;

            v37 = v45[0];
            *(*(v45[0] + 56) + 8 * isUniquelyReferenced_nonNull_native) = v35;

            *i = v37;
            return result;
          }

LABEL_32:
          sub_18E3EFEC8();
          v35 = v40;
          goto LABEL_21;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (isUniquelyReferenced_nonNull_native >= *(v15 + 16))
    {
      __break(1u);
      goto LABEL_30;
    }

    v45[0] = *(v15 + 8 * isUniquelyReferenced_nonNull_native + 32);

    v19 = sub_18E42B860(v45, v12);

    if (v19)
    {
      break;
    }

    ++isUniquelyReferenced_nonNull_native;
  }

  swift_isUniquelyReferenced_nonNull_native();
  v45[0] = *v44;
  v27 = v45[0];
  v43 = sub_18E1CBD4C();
  v29 = *(v27 + 16);
  v30 = (v28 & 1) == 0;
  v31 = v29 + v30;
  if (__OFADD__(v29, v30))
  {
    __break(1u);
  }

  else
  {
    v32 = v28;
    sub_18E2706EC(&qword_1EABE0E88, &unk_18E49D230);
    if (sub_18E44F0EC())
    {
      v33 = sub_18E1CBD4C();
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_38;
      }

      v8 = v33;
    }

    else
    {
      v8 = v43;
    }

    if (v32)
    {
      v31 = v45[0];
      v39 = *(*(v45[0] + 56) + 8 * v8);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_27;
      }

      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_35:
  sub_18E43A2F0();
  v39 = v42;
LABEL_27:
  if (isUniquelyReferenced_nonNull_native < *(v39 + 16))
  {
    sub_18E43A27C(v12, sub_18E286F84, 0, (v39 - i));

    *(*(v31 + 56) + 8 * v8) = v39;

    *v44 = v31;
    return result;
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_18E44F41C();
  __break(1u);
  return result;
}

uint64_t sub_18E4263E4()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedModelConfigurationReplacementBase;
    v17[4] = sub_18E43E2B8();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedModelConfigurationReplacementBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43E25C(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E426744()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedLLMDraftModelBase;
    v17[4] = sub_18E43E51C();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedLLMDraftModelBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43E4C0(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E426AA4()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedDiffusionModelBase;
    v17[4] = sub_18E43EEC8();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedDiffusionModelBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43EE6C(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E426E04()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedMotionBase;
    v17[4] = sub_18E43E120();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedMotionBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43E0C4(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E427164()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedLLMAdapterBase;
    v17[4] = sub_18E43E6B4();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedLLMAdapterBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43E658(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E4274C4()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedImageFilterBase;
    v17[4] = sub_18E43EAB0();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedImageFilterBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43EA54(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E427824()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedImageScalerBase;
    v17[4] = sub_18E43E918();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedImageScalerBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43E8BC(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E427B84()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedMotionAdapterBase;
    v17[4] = sub_18E43E1EC();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedMotionAdapterBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43E190(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E427EE4()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedImageTokenizerBase;
    v17[4] = sub_18E43E780();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedImageTokenizerBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43E724(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E428244()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedPromptAllowListBase;
    v17[4] = sub_18E43E054();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedPromptAllowListBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43DFF8(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E4285A4()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedSecureAnalyticsBase;
    v17[4] = sub_18E43DF88();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedSecureAnalyticsBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43DF2C(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E428904()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedDiffusionAdapterBase;
    v17[4] = sub_18E43EF94();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedDiffusionAdapterBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43EF38(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E428C64()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedImageMagicCleanUpBase;
    v17[4] = sub_18E43E9E4();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedImageMagicCleanUpBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43E988(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E428FC4()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedTokenInputDenyListBase;
    v17[4] = sub_18E43DEBC();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedTokenInputDenyListBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E2070B8(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E429324()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedAppleDeviceTrackingBase;
    v17[4] = sub_18E43F060();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedAppleDeviceTrackingBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43F004(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E429684()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedDisabledUseCaseListBase;
    v17[4] = sub_18E43EDFC();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedDisabledUseCaseListBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43EDA0(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E4299E4()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedImageCuratedPromptsBase;
    v17[4] = sub_18E43EB7C();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedImageCuratedPromptsBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43EB20(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E429D44()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedServerConfigurationBase;
    v17[4] = sub_18E43E384();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedServerConfigurationBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43E328(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E42A0A4()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedTokenOutputDenyListBase;
    v17[4] = sub_18E43DE4C();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedTokenOutputDenyListBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E299690(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E42A404()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedEmbeddingPreprocessorBase;
    v17[4] = sub_18E43ED14();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedEmbeddingPreprocessorBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43ECB8(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E42A764()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedTokenOutputRetainListBase;
    v17[4] = sub_18E43DDDC();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedTokenOutputRetainListBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43DD80(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E42AAC4()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedHandwritingSynthesizerBase;
    v17[4] = sub_18E43EC48();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedHandwritingSynthesizerBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43EBEC(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E42AE24()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedImageSpatialPhotosReliveBase;
    v17[4] = sub_18E43E84C();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedImageSpatialPhotosReliveBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43E7F0(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E42B184()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedLLMAdapterMetadataOverrideBase;
    v17[4] = sub_18E43E5E8();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedLLMAdapterMetadataOverrideBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43E58C(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t AssetBackedResource.usages.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(v4 + 104);
  v5(a1, v4);
  sub_18E1D0274();
  sub_18E2483E8();
  sub_18E235348();

  if ((v2 & 1) == 0)
  {
    v10 = sub_18E1CA330();
    v24 = (v5)(v10);
    v26 = v11;

    v12 = sub_18E1CE96C();
    MEMORY[0x193ACC300](v12);

    v13 = sub_18E1CA330();
    v14(v13);

    v15 = sub_18E1E2E14();
    MEMORY[0x193ACC300](v15);

    v17 = v24;
    v16 = v26;
    v18 = AssetBackedResource.hostingAssetName.getter(a1);
    if (v19)
    {
      v25 = v18;
      v27 = v19;

      v20 = sub_18E1CF3BC();
      MEMORY[0x193ACC300](v20, 0xE800000000000000);

      if (qword_1ED6A94A8 != -1)
      {
        sub_18E1C8394();
        swift_once();
      }

      if (byte_1ED6A98A0 == 1)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v17;
        *(inited + 40) = v16;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v25;
        *(inited + 72) = v27;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_18E49D9B0;
      *(v23 + 32) = v25;
      *(v23 + 40) = v27;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_18E49D9B0;
      *(v23 + 32) = v24;
      *(v23 + 40) = v26;
    }

    *(v23 + 48) = 0x44454C42414E45;
    *(v23 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v6 = *(v4 + 112);
  v7 = sub_18E1CA330();
  if (v6(v7) != 0x636972656E6567 || v8 != 0xE700000000000000)
  {
    sub_18E1D0380();
    sub_18E44F3CC();
    sub_18E235348();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E42B860(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
    v10 = v6;
LABEL_10:
    v6 = (v10 - 1) & v10;
    if (*(v2 + 16))
    {
      v12 = (*(a2 + 56) + 16 * (__clz(__rbit64(v10)) | (v9 << 6)));
      v13 = v12[1];
      v21 = *v12;

      v14 = sub_18E1CBD4C();
      v16 = v15;

      if ((v16 & 1) == 0 || ((v17 = (*(v2 + 56) + 16 * v14), *v17 == v21) ? (v18 = v17[1] == v13) : (v18 = 0), v18))
      {
      }

      else
      {
        v19 = sub_18E44F3CC();

        if ((v19 & 1) == 0)
        {
          v20 = 0;
LABEL_20:

          return v20;
        }
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {
      v20 = 1;
      goto LABEL_20;
    }

    v10 = *(v3 + 8 * v11);
    ++v9;
    if (v10)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E42BA0C()
{
  v1 = v0[19];
  type metadata accessor for RunningBoardAssertedAssetSets();
  sub_18E1CD8AC();
  v2 = swift_allocObject();
  v0[20] = sub_18E424EF8();
  sub_18E425CA4(v1);
  v0[21] = v3;
  v4 = *(v3 + 16);
  v0[22] = v4;
  if (v4)
  {
    v5 = objc_opt_self();
    v0[23] = v5;
    v0[24] = 0;
    if (*(v0[21] + 16))
    {
      v6 = v5;
      sub_18E22341C();
      sub_18E1CC534(v7);

      v8 = sub_18E243104([v6 sharedManager]);
      sub_18E200EE0(v8);
      v0[30] = sub_18E44E97C();
      v0[2] = v0;
      sub_18E1CBE80();
      v9 = sub_18E2706EC(&qword_1EABE9320, &qword_18E4E3A98);
      sub_18E1C54E0(v9);
      v0[11] = 1107296256;
      sub_18E23467C(&unk_1F018AAF8);
      sub_18E1CD7E8(v10, sel_retrieveAssetSet_usages_queue_completion_);
      v5 = v2;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEC8](v5);
  }

  else
  {

    sub_18E1C6500();
    v12 = v0[20];

    return v11(v12);
  }
}

uint64_t sub_18E42BBD4()
{
  sub_18E1C52F0();
  v1 = *v0;
  sub_18E1C52E0();
  *v2 = v1;
  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18E42BCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_18E1D4964();
  a21 = v23;
  a22 = v24;
  sub_18E223A90();
  a20 = v22;
  v25 = *(v22 + 144);
  v27 = *(v22 + 232);
  v26 = *(v22 + 240);

  if (v25)
  {
    v28 = qword_1ED6A8AB0;
    v29 = v25;
    if (v28 != -1)
    {
      sub_18E1C6D78();
      swift_once();
    }

    v30 = *(v22 + 216);
    v31 = sub_18E44E83C();
    sub_18E1C95EC(v31, qword_1ED6A9870);

    v32 = sub_18E44E80C();
    sub_18E44EE2C();

    if (sub_18E1CF7C4())
    {
      sub_18E1C9700();
      swift_slowAlloc();
      sub_18E1E2DDC();
      a9 = swift_slowAlloc();
      *v30 = 136315394;

      v33 = sub_18E1D03F8();
      v36 = sub_18E1C9624(v33, v34, v35);

      *(v30 + 4) = v36;
      sub_18E224E7C();

      sub_18E44E99C();
      sub_18E1E3B5C();

      v37 = sub_18E1E2000();
      v40 = sub_18E1C9624(v37, v38, v39);

      *(v30 + 14) = v40;
      sub_18E1CC474();
      _os_log_impl(v41, v42, v43, v44, v45, 0x16u);
      sub_18E221F10();
      swift_arrayDestroy();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      v46 = sub_18E1D6214();
      MEMORY[0x193ACD400](v46);
    }

    v47 = *(v22 + 176);
    v48 = *(v22 + 192) + 1;
    sub_18E1E1758();
    sub_18E425730(v49, v50, v51, v52);

    if (v48 == v47)
    {

      sub_18E1C6500();
      sub_18E1CEA3C();

      return v56(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      v90 = *(v22 + 192) + 1;
      *(v22 + 192) = v90;
      if (v90 >= *(*(v22 + 168) + 16))
      {
        __break(1u);
      }

      else
      {
        sub_18E22341C();
        v91 = *(v22 + 184);
        sub_18E1CC534((v93 + 24 * v92));

        v94 = sub_18E243104([v91 sharedManager]);
        sub_18E200EE0(v94);
        *(v22 + 240) = sub_18E44E97C();
        *(v22 + 16) = v22;
        sub_18E1CBE80();
        v95 = sub_18E2706EC(&qword_1EABE9320, &qword_18E4E3A98);
        sub_18E1C54E0(v95);
        *(v22 + 88) = 1107296256;
        sub_18E23467C(&unk_1F018AAF8);
        sub_18E1CD7E8(v96, sel_retrieveAssetSet_usages_queue_completion_);
        sub_18E1CEA3C();
      }

      return MEMORY[0x1EEE6DEC8](v53);
    }
  }

  else
  {

    if (qword_1ED6A8AB0 != -1)
    {
      sub_18E1C6D78();
      swift_once();
    }

    v63 = sub_18E44E83C();
    sub_18E1C95EC(v63, qword_1ED6A9870);
    sub_18E1D4560();

    v64 = sub_18E44E80C();
    v65 = sub_18E44EE0C();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = *(v22 + 208);
      v67 = *(v22 + 200);
      sub_18E1C9700();
      v68 = swift_slowAlloc();
      sub_18E1CA638();
      a9 = swift_slowAlloc();
      *v68 = 136315394;

      v69 = sub_18E1C9624(v67, v66, &a9);

      *(v68 + 4) = v69;
      *(v68 + 12) = 2080;

      sub_18E44E99C();
      sub_18E221954();

      v70 = sub_18E1DD5A0();
      v73 = sub_18E1C9624(v70, v71, v72);

      *(v68 + 14) = v73;
      _os_log_impl(&dword_18E1C1000, v64, v65, "Failed to retrieve asset set: %s, with usages: %s", v68, 0x16u);
      sub_18E212078();
      swift_arrayDestroy();
      v74 = sub_18E1D6214();
      MEMORY[0x193ACD400](v74);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    v75 = *(v22 + 208);
    a9 = *(v22 + 200);
    a10 = v75;

    v76 = sub_18E1E890C();
    MEMORY[0x193ACC300](v76, 0xEA0000000000203ALL);
    v77 = sub_18E44E99C();
    MEMORY[0x193ACC300](v77);

    v78 = a9;
    v79 = a10;
    sub_18E3FDB10();
    sub_18E1D0098();
    v80 = swift_allocError();
    *v81 = v78;
    v81[1] = v79;
    sub_18E1E3830(v80, v81);
    swift_willThrow();

    sub_18E1D008C();
    sub_18E1CEA3C();

    return v83(v82, v83, v84, v85, v86, v87, v88, v89, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_18E42C220(uint64_t a1, void *a2)
{
  v3 = *sub_18E1E15F4((a1 + 32), *(a1 + 56));
  v4 = a2;
  return sub_18E3FE48C(v3, a2);
}

uint64_t sub_18E42C594()
{
  sub_18E1C6170();
  v3 = v2;
  sub_18E1C64F4();
  v5 = v4;
  sub_18E211354();
  *v6 = v5;
  v7 = *v1;
  sub_18E1C52E0();
  *v8 = v7;
  *(v5 + 200) = v0;

  if (!v0)
  {

    *(v5 + 208) = v3;
  }

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18E42C6B8()
{
  sub_18E1C52F0();

  sub_18E1D008C();

  return v0();
}

uint64_t static AssetLock.lockResources(_:)()
{
  sub_18E1C52F0();
  v2 = v1;
  *(v0 + 16) = v3;
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  sub_18E1C5950(v4);

  return sub_18E42B9EC(v2);
}

uint64_t sub_18E42C7A4()
{
  sub_18E1C6170();
  v3 = v2;
  sub_18E1C64F4();
  v5 = v4;
  sub_18E211354();
  *v6 = v5;
  v7 = *v1;
  sub_18E1C52E0();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    sub_18E1CEA7C();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_18E42C8E4@<X0>(uint64_t *a1@<X8>)
{
  result = AssetLock.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__int128 *sub_18E42C90C()
{
  if (qword_1ED6A8358 != -1)
  {
    sub_18E1C5AE8(&qword_1ED6A8358);
  }

  return &xmmword_1ED6A7B48;
}

uint64_t static CoherentAssetLock.sharedCoherenceTokenProvider.getter()
{
  if (qword_1ED6A8358 != -1)
  {
    sub_18E1C5AE8(&qword_1ED6A8358);
  }

  swift_beginAccess();
  v0 = sub_18E208090();
  return sub_18E202008(v0, v1, v2, v3);
}

uint64_t static CoherentAssetLock.sharedCoherenceTokenProvider.setter(uint64_t a1)
{
  if (qword_1ED6A8358 != -1)
  {
    sub_18E1C5AE8(&qword_1ED6A8358);
  }

  swift_beginAccess();
  v2 = sub_18E1C5BFC();
  sub_18E43AD78(v2, v3);
  swift_endAccess();
  return sub_18E1E8EEC(a1, &qword_1EABE9198, &qword_18E4E2D58);
}

uint64_t (*static CoherentAssetLock.sharedCoherenceTokenProvider.modify())()
{
  if (qword_1ED6A8358 != -1)
  {
    sub_18E1C5AE8(&qword_1ED6A8358);
  }

  sub_18E208090();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_18E42CAC8@<X0>(uint64_t a1@<X8>)
{
  sub_18E42C90C();
  swift_beginAccess();
  return sub_18E202008(&xmmword_1ED6A7B48, a1, &qword_1EABE9198, &qword_18E4E2D58);
}

uint64_t sub_18E42CB2C(uint64_t a1)
{
  sub_18E42C90C();
  swift_beginAccess();
  sub_18E43AD78(a1, &xmmword_1ED6A7B48);
  return swift_endAccess();
}

uint64_t sub_18E42CB88()
{
  sub_18E1CAF5C();
  v3 = v2;
  v4 = *v1;
  sub_18E1C52E0();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 160) = v0;

  if (v0)
  {
  }

  else
  {
    *(v4 + 168) = v3;
  }

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_18E42CCCC()
{
  v1 = v0[17];
  *(v1 + 16) = v0[21];
  sub_18E1C9934(v0 + 2);
  if (*(*(v1 + 16) + 16))
  {
  }

  else
  {
    if (qword_1ED6A94F8 != -1)
    {
      sub_18E1C5C20(&qword_1ED6A94F8);
    }

    v2 = sub_18E44E83C();
    sub_18E1C95EC(v2, qword_1ED6A98C0);
    sub_18E1C5D78();

    v3 = sub_18E44E80C();
    sub_18E44EE2C();

    v4 = sub_18E1CF7C4();
    v5 = v0[15];
    if (v4)
    {
      sub_18E1E2FE8();
      v6 = swift_slowAlloc();
      sub_18E1CA69C();
      v20 = swift_slowAlloc();
      *v6 = 136315138;
      MEMORY[0x193ACC430](v5, MEMORY[0x1E69E6158]);
      sub_18E1E3B5C();

      v7 = sub_18E1E2000();
      v10 = sub_18E1C9624(v7, v8, v9);

      *(v6 + 4) = v10;
      sub_18E1CC474();
      _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
      sub_18E1C9934(v20);
      v16 = sub_18E1CFC40();
      MEMORY[0x193ACD400](v16);
      v17 = sub_18E1D6214();
      MEMORY[0x193ACD400](v17);
    }

    else
    {
    }
  }

  sub_18E1C6500();
  sub_18E1D0058();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_18E42CE80()
{
  sub_18E1C6170();
  v2 = *v1;
  sub_18E1C52E0();
  *v3 = v2;
  v4 = *v1;
  sub_18E211354();
  *v5 = v4;
  *(v2 + 208) = v6;
  *(v2 + 216) = v0;

  if (v0)
  {
  }

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_18E42CFB8()
{
  v1 = v0[26];
  v2 = *&v1[OBJC_IVAR____TtC12ModelCatalog29AcquireCoherenceTokenResponse_tokens];
  if (v2)
  {
    v3 = v0[17];

    *(v3 + 16) = v2;
    if (*(v2 + 16))
    {
    }

    else
    {
      if (qword_1ED6A94F8 != -1)
      {
        sub_18E1C5C20(&qword_1ED6A94F8);
      }

      v9 = sub_18E44E83C();
      sub_18E1C95EC(v9, qword_1ED6A98C0);
      sub_18E1C5D78();

      v10 = sub_18E44E80C();
      sub_18E44EE2C();

      v11 = sub_18E1CF7C4();
      v12 = v0[15];
      if (v11)
      {
        sub_18E1E2FE8();
        v13 = swift_slowAlloc();
        sub_18E1CA69C();
        v27 = swift_slowAlloc();
        *v13 = 136315138;
        MEMORY[0x193ACC430](v12, MEMORY[0x1E69E6158]);
        sub_18E1E3B5C();

        v14 = sub_18E1E2000();
        v17 = sub_18E1C9624(v14, v15, v16);

        *(v13 + 4) = v17;
        sub_18E1CC474();
        _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
        sub_18E1C9934(v27);
        v23 = sub_18E1CFC40();
        MEMORY[0x193ACD400](v23);
        v24 = sub_18E1D6214();
        MEMORY[0x193ACD400](v24);
      }

      else
      {
      }
    }

    sub_18E1C6500();
    sub_18E1D0058();

    __asm { BRAA            X2, X16 }
  }

  sub_18E3FDB10();
  sub_18E1D0098();
  v4 = swift_allocError();
  *v5 = 0xD000000000000028;
  v5[1] = 0x800000018E478340;
  sub_18E1C69B4(v4, v5);
  swift_willThrow();

  v6 = v0[17];

  type metadata accessor for CoherentAssetLock();
  swift_deallocPartialClassInstance();
  sub_18E1D008C();
  sub_18E1D0058();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_18E42D24C()
{
  sub_18E1C52F0();

  sub_18E1C9934((v0 + 16));
  v1 = *(v0 + 136);

  v2 = type metadata accessor for CoherentAssetLock();
  sub_18E223F28(v2);
  sub_18E1D008C();

  return v3();
}

uint64_t sub_18E42D2CC()
{
  sub_18E1C52F0();

  v1 = *(v0 + 136);

  v2 = type metadata accessor for CoherentAssetLock();
  sub_18E223F28(v2);
  sub_18E1D008C();

  return v3();
}

uint64_t static CoherentAssetLock.createUnlockedAssetLock(resources:client:)()
{
  sub_18E1C6170();
  type metadata accessor for CoherentAssetLock();
  sub_18E1CADEC();
  swift_allocObject();

  v0 = swift_task_alloc();
  v1 = sub_18E1C5EA8(v0);
  *v1 = v2;
  sub_18E1C5950(v1);
  v3 = sub_18E1C5BFC();

  return sub_18E25D518(v3, v4);
}

uint64_t CoherentAssetLock.__allocating_init(coherenceTokens:)()
{
  sub_18E1CADEC();
  swift_allocObject();
  v1 = sub_18E1C5D78();
  CoherentAssetLock.init(coherenceTokens:)(v1);
  return v0;
}

void *CoherentAssetLock.init(coherenceTokens:)(uint64_t a1)
{
  sub_18E2706EC(&qword_1EABE91A0, qword_18E4E2D78);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v1[4] = 0;
  v1[5] = 0;
  v1[2] = a1;
  v1[3] = v3;
  return v1;
}

void *static CoherentAssetLock.createUnlockedAssetLock(resources:)()
{
  type metadata accessor for CoherentAssetLock();
  sub_18E1CADEC();
  swift_allocObject();

  return sub_18E1FD9F4(v0, 0);
}

void sub_18E42D4DC(void (*a1)(void))
{
  sub_18E204B54();
  if (!v1)
  {
    a1();
    sub_18E1D04C8();
  }
}

uint64_t sub_18E42D540(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_18E1C62C4();
}

uint64_t sub_18E42D558()
{
  sub_18E1C6170();
  sub_18E204B54();
  v3 = (*(v0 + 16) + **(v0 + 16));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_18E42D68C;

  return v3();
}

uint64_t sub_18E42D68C()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  sub_18E211354();
  *v3 = v2;
  v4 = *v1;
  sub_18E1C52E0();
  *v5 = v4;
  *(v6 + 48) = v0;

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18E42D788()
{
  sub_18E1C52F0();
  sub_18E1D04C8();
  sub_18E1D008C();

  return v0();
}

uint64_t sub_18E42D7E4()
{
  sub_18E1C52F0();
  sub_18E1D04C8();
  sub_18E1D008C();

  return v0();
}

void sub_18E42D840(void (*a1)(void))
{
  sub_18E204B54();
  if (!v1)
  {
    a1();
    sub_18E1D04C8();
  }
}

uint64_t sub_18E42D8AC()
{
  sub_18E1C52F0();
  sub_18E1D04C8();
  sub_18E1D008C();

  return v0();
}

uint64_t sub_18E42D91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_18E1D4964();
  a21 = v27;
  a22 = v28;
  sub_18E223A90();
  a20 = v24;
  v55 = v24;
  v29 = *(*(v24 + 16) + 16);
  v30 = -1;
  v31 = -1 << *(v29 + 32);
  if (-v31 < 64)
  {
    v30 = ~(-1 << -v31);
  }

  v32 = v30 & *(v29 + 64);
  v33 = (63 - v31) >> 6;

  v34 = 0;
  if (v32)
  {
    while (1)
    {
      v35 = v34;
LABEL_8:
      v36 = __clz(__rbit64(v32)) | (v35 << 6);
      v37 = (*(v29 + 48) + 16 * v36);
      v26 = *v37;
      v25 = v37[1];
      v38 = *(*(v29 + 56) + 8 * v36);
      objc_opt_self();
      sub_18E1D4560();

      v23 = v38;
      v22 = [v22 sharedManager];
      v39 = [v22 isLatestConsistencyToken_];

      if ((v39 & 1) == 0)
      {
        break;
      }

      v32 &= v32 - 1;
      v34 = v35;
      if (!v32)
      {
        goto LABEL_5;
      }
    }

    if (qword_1ED6A94F8 == -1)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v35 >= v33)
      {

        goto LABEL_12;
      }

      v32 = *(v29 + 64 + 8 * v35);
      ++v34;
      if (v32)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  sub_18E1C5C20(&qword_1ED6A94F8);
LABEL_16:
  v49 = sub_18E44E83C();
  sub_18E1C95EC(v49, qword_1ED6A98C0);
  sub_18E1D4560();

  v50 = sub_18E44E80C();
  v51 = sub_18E44EE2C();

  if (os_log_type_enabled(v50, v51))
  {
    sub_18E1E2FE8();
    v52 = swift_slowAlloc();
    sub_18E1CA69C();
    v53 = swift_slowAlloc();
    a11 = v53;
    *v52 = 136315138;
    v54 = sub_18E1C9624(v26, v25, &a11);

    *(v52 + 4) = v54;
    _os_log_impl(&dword_18E1C1000, v50, v51, "updateAvailable: %s has a newer version available, returning true", v52, 0xCu);
    sub_18E1C9934(v53);
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
  }

  else
  {
  }

LABEL_12:
  sub_18E1C6500();
  sub_18E1CEA3C();

  return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, v55, a11, a12, a13, a14);
}

void sub_18E42DBA8(void **a1)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v3 = sub_18E44E6AC();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v7 = sub_18E44E83C();
  sub_18E1C95EC(v7, qword_1ED6A9870);
  v8 = v6;
  v9 = sub_18E44E80C();
  v10 = sub_18E44EE2C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    v33[1] = v1;
    v36[0] = v33[0];
    *v11 = 136315138;
    v12 = [v8 uuid];
    sub_18E44E68C();

    sub_18E43ADE8(&unk_1ED6A8270, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v13 = v35;
    v14 = sub_18E44F39C();
    v16 = v15;
    (*(v34 + 8))(v5, v13);
    v17 = sub_18E1C9624(v14, v16, v36);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_18E1C1000, v9, v10, "attempting to unlock %s", v11, 0xCu);
    v18 = v33[0];
    sub_18E1C9934(v33[0]);
    MEMORY[0x193ACD400](v18, -1, -1);
    MEMORY[0x193ACD400](v11, -1, -1);
  }

  v36[0] = 0;
  if ([v8 unlock_])
  {
    v19 = v36[0];
  }

  else
  {
    v20 = v36[0];
    v21 = sub_18E44E44C();

    swift_willThrow();
    v22 = v8;
    v23 = sub_18E44E80C();
    v24 = sub_18E44EE0C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v36[0] = v26;
      *v25 = 136315138;
      v27 = [v22 uuid];
      sub_18E44E68C();

      sub_18E43ADE8(&unk_1ED6A8270, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v28 = v35;
      v29 = sub_18E44F39C();
      v31 = v30;
      (*(v34 + 8))(v5, v28);
      v32 = sub_18E1C9624(v29, v31, v36);

      *(v25 + 4) = v32;
      _os_log_impl(&dword_18E1C1000, v23, v24, "recovery unlock of %s failed", v25, 0xCu);
      sub_18E1C9934(v26);
      MEMORY[0x193ACD400](v26, -1, -1);
      MEMORY[0x193ACD400](v25, -1, -1);
    }
  }
}

uint64_t sub_18E42E028()
{
  v1 = *(v0 + 16);
  sub_18E1C7734();
  v4 = v3 & v2;
  v6 = (v5 + 63) >> 6;

  v8 = 0;
  while (v4)
  {
    v9 = v8;
LABEL_8:
    v10 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    result = [*(*(v1 + 56) + ((v9 << 9) | (8 * v10))) locked];
    if ((result & 1) == 0)
    {
      v11 = 0;
LABEL_11:

      return v11;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      v11 = 1;
      goto LABEL_11;
    }

    v4 = *(v1 + 64 + 8 * v9);
    ++v8;
    if (v4)
    {
      v8 = v9;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E42E0F8()
{
  sub_18E1C52F0();
  v1[18] = v0;
  v2 = sub_18E44E6AC();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18E42E1B0()
{
  sub_18E1E15DC();
  v43 = v0;
  v2 = *(*(v0 + 144) + 16);
  *(v0 + 176) = v2;
  if (!*(v2 + 16))
  {
    if (qword_1ED6A94F8 != -1)
    {
      sub_18E1C5C20(&qword_1ED6A94F8);
    }

    v3 = sub_18E44E83C();
    sub_18E1C95EC(v3, qword_1ED6A98C0);
    v4 = sub_18E44E80C();
    v5 = sub_18E44EE2C();
    if (os_log_type_enabled(v4, v5))
    {
      *swift_slowAlloc() = 0;
      sub_18E1CC474();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      v11 = sub_18E1D6214();
      MEMORY[0x193ACD400](v11);
    }
  }

  if (qword_1ED6A94F8 != -1)
  {
    sub_18E1C5C20(&qword_1ED6A94F8);
  }

  v12 = sub_18E44E83C();
  *(v0 + 184) = v12;
  sub_18E1C95EC(v12, qword_1ED6A98C0);
  sub_18E1D4560();

  v13 = sub_18E44E80C();
  sub_18E44EE2C();

  if (sub_18E1CF7C4())
  {
    sub_18E1E2FE8();
    v14 = swift_slowAlloc();
    sub_18E1CA69C();
    v15 = swift_slowAlloc();
    v42 = v15;
    *v14 = 136315138;
    sub_18E1D121C(0, &qword_1ED6A80D0, 0x1E69DEEE0);
    v16 = sub_18E44E99C();
    v1 = sub_18E1C9624(v16, v17, &v42);

    *(v14 + 4) = v1;
    sub_18E1CC474();
    _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
    sub_18E1C9934(v15);
    sub_18E1C6164();
    MEMORY[0x193ACD400](v23);
    v24 = sub_18E1D6214();
    MEMORY[0x193ACD400](v24);
  }

  v25 = *(v2 + 32);
  *(v0 + 248) = v25;
  v26 = -1;
  v27 = -1 << v25;
  if (-(-1 << v25) < 64)
  {
    v26 = ~(-1 << -v27);
  }

  v28 = v26 & *(v2 + 64);

  if (!v28)
  {
    v29 = 0;
    do
    {
      if (((63 - v27) >> 6) - 1 == v29)
      {

        sub_18E1D008C();
        sub_18E1CF618();

        __asm { BRAA            X1, X16 }
      }

      v28 = *(*(v0 + 176) + 8 * v29++ + 72);
    }

    while (!v28);
  }

  sub_18E22341C();
  *(v0 + 192) = v28;
  *(v0 + 200) = v30;
  sub_18E1CAEE8(v31, v30);
  v32 = objc_opt_self();

  v33 = v1;
  sub_18E200EE0([v32 sharedManager]);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_18E42E550;
  swift_continuation_init();
  v34 = sub_18E2706EC(&qword_1EABE91A8, &qword_18E4E2DA0);
  sub_18E1C54E0(v34);
  *(v0 + 88) = 1107296256;
  sub_18E1E2C14(&unk_1F0189E28);
  sub_18E1E1758();
  [v35 v36];
  sub_18E1CF618();

  return MEMORY[0x1EEE6DEC8](v37);
}

uint64_t sub_18E42E550()
{
  sub_18E1C52F0();
  sub_18E211354();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 240) = v4;
  if (!v4)
  {
  }

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18E42E65C()
{
  sub_18E1E15DC();
  v2 = *(v0 + 232);

  v4 = *(v0 + 200);
  if (((*(v0 + 192) - 1) & *(v0 + 192)) != 0)
  {
LABEL_5:
    sub_18E22341C();
    *(v0 + 192) = v7;
    *(v0 + 200) = v6;
    sub_18E1CAEE8(v8, v6);
    v9 = objc_opt_self();

    v10 = v1;
    sub_18E200EE0([v9 sharedManager]);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_18E42E550;
    swift_continuation_init();
    v11 = sub_18E2706EC(&qword_1EABE91A8, &qword_18E4E2DA0);
    sub_18E1C54E0(v11);
    *(v0 + 88) = 1107296256;
    sub_18E1E2C14(&unk_1F0189E28);
    sub_18E1E1758();
    [v12 v13];
    sub_18E1CF618();
  }

  else
  {
    while (1)
    {
      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v3 = *(v0 + 176);
      if (v5 >= (((1 << *(v0 + 248)) + 63) >> 6))
      {

        sub_18E1D008C();
        sub_18E1CF618();

        __asm { BRAA            X1, X16 }
      }

      ++v4;
      if (*(v3 + 8 * v5 + 64))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_18E42E82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_18E1D4964();
  a21 = v23;
  a22 = v24;
  sub_18E223A90();
  a20 = v22;
  v25 = v22[29];
  swift_willThrow();

  if (qword_1ED6A8AB0 != -1)
  {
    sub_18E1C6D78();
    swift_once();
  }

  v27 = v22[27];
  v26 = v22[28];
  sub_18E1C95EC(v22[23], qword_1ED6A9870);
  sub_18E1D4560();

  v28 = v26;
  v29 = sub_18E44E80C();
  v30 = sub_18E44EE0C();

  if (os_log_type_enabled(v29, v30))
  {
    v32 = v22[27];
    v31 = v22[28];
    v33 = v22[26];
    v35 = v22[20];
    v34 = v22[21];
    a9 = v22[19];
    sub_18E1C9700();
    swift_slowAlloc();
    sub_18E1E2DDC();
    a10 = swift_slowAlloc();
    *v27 = 136315394;
    v36 = sub_18E1C9624(v33, v32, &a10);

    *(v27 + 4) = v36;
    sub_18E224E7C();
    v37 = [v31 uuid];
    sub_18E44E68C();

    sub_18E43ADE8(&unk_1ED6A8270, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    sub_18E44F39C();
    sub_18E1E3B5C();
    (*(v35 + 8))(v34, a9);
    v38 = sub_18E1E2000();
    v41 = sub_18E1C9624(v38, v39, v40);

    *(v27 + 14) = v41;
    sub_18E1D5C68();
    _os_log_impl(v42, v43, v44, v45, v46, v47);
    sub_18E221F10();
    swift_arrayDestroy();
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
    v48 = sub_18E1D6214();
    MEMORY[0x193ACD400](v48);
  }

  else
  {
  }

  v49 = v22[28];
  swift_willThrow();

  sub_18E1D008C();
  sub_18E1CEA3C();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_18E42EA8C(uint64_t a1, void *a2)
{
  v3 = sub_18E1E15F4((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_18E42EAFC(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume(v7);
  }
}

uint64_t sub_18E42EAFC(uint64_t a1, uint64_t a2)
{
  sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t sub_18E42EB6C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CoherentAssetLock();
  result = sub_18E44F01C();
  *a2 = result;
  return result;
}

void CatalogAssetProtocol.displayVersion.getter()
{
  sub_18E1C575C();
  v2 = v1;
  v4 = v3;
  v33 = v5;
  v38 = *MEMORY[0x1E69E9840];
  v6 = sub_18E44E54C();
  sub_18E1C4EAC();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_18E1C4EDC();
  sub_18E1C561C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1FF2DC();
  (*(v2 + 80))(v4, v2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v13 = sub_18E1D03F8();
  v14(v13);
  sub_18E44E58C();
  (*(v8 + 8))(v0, v6);
  v15 = objc_opt_self();
  sub_18E1D43C0();
  v16 = sub_18E44E60C();
  *&v36 = 0;
  v17 = [v15 JSONObjectWithData:v16 options:0 error:&v36];

  if (v17)
  {
    v18 = v36;
    sub_18E44EF2C();
    swift_unknownObjectRelease();
    v19 = sub_18E2706EC(&unk_1EABE9010, &qword_18E4B0160);
    if (sub_18E1D5F88(v19, v20, v21, v19))
    {
      sub_18E26C3FC(v34, &v36);
      v22 = sub_18E1D43C0();
      sub_18E1FDFE0(v22, v23);

      if (v37)
      {
        if (sub_18E1D5F88(v24, v25, v26, MEMORY[0x1E69E6158]))
        {
          *v33 = v34;
          v33[1] = v35;
          goto LABEL_3;
        }
      }

      else
      {
        sub_18E1E8EEC(&v36, &qword_1EABE3B70, &qword_18E4AAB80);
      }
    }

    else
    {
      v31 = sub_18E1D43C0();
      sub_18E1FDFE0(v31, v32);
    }
  }

  else
  {
    v27 = v36;
    v28 = sub_18E44E44C();

    swift_willThrow();
    v29 = sub_18E1D43C0();
    sub_18E1FDFE0(v29, v30);
  }

  *v33 = 0;
  v33[1] = 0;
LABEL_3:
  sub_18E1C5544();
}

__n128 CatalogAsset.specificationVersion.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 24);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

uint64_t sub_18E42EFD8(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void CatalogAsset.init(specificationVersion:metadata:contents:mobileAssetMetadata:assetLock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_18E1C575C();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v37 = v27;
  sub_18E1C5780();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  sub_18E1C4EDC();
  sub_18E1FF2DC();
  v32 = sub_18E1C9074(v31, *(v31 + 2));
  v35(v32, v33, v34);
  CatalogAsset.init(specificationVersion:contents:mobileAssetMetadata:assetLock:)();
  (*(v29 + 8))(v26, v22);
  sub_18E1C82B8();
  (*(v36 + 8))(v37, v24);
  sub_18E1C5544();
}

void CatalogAsset.init(specificationVersion:contents:mobileAssetMetadata:assetLock:)()
{
  sub_18E1C575C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_18E1C5780();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C4EDC();
  (*(v9 + 16))(v12 - v11);
  sub_18E1EA5AC();
  sub_18E436CD0(v13, v14, v15, v16, 0, v7, v5, v3, v17, v1);
  v18 = sub_18E208090();
  v19(v18);
  sub_18E1C5544();
}

void CatalogAsset.init(specificationVersion:contents:mobileAssetMetadata:coherentAssetLock:shouldUnlockOnDeinit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_18E1C575C();
  v41 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_18E1C5780();
  MEMORY[0x1EEE9AC00](v35);
  sub_18E1C4EDC();
  sub_18E1FF2DC();
  v37 = sub_18E1C9074(v36, *(v36 + 2));
  v38(v37);
  v42 = v30 | 0x8000000000000000;
  sub_18E436CD0(&v43, v21, v32, &v42, v28, v26, v24, v41, v34, a21);
  v39 = sub_18E208090();
  v40(v39);
  sub_18E1C5544();
}

unsigned __int8 *sub_18E42F494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1C10, &qword_18E4E3960);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for ModelConfigurationReplacementAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9278, &qword_18E4E3968);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = sub_18E44EAAC();
  v17 = v16;

  v18 = sub_18E2491A4(v15, v17, a5);
  v20 = v19;

  if (!v20)
  {
    goto LABEL_71;
  }

  v22 = HIBYTE(v20) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_71:
    v45 = 0;
    goto LABEL_72;
  }

  if ((v20 & 0x1000000000000000) == 0)
  {
    if ((v20 & 0x2000000000000000) != 0)
    {
      v52[0] = v18;
      v52[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v22)
        {
          if (--v22)
          {
            v26 = 0;
            v36 = v52 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              v38 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                break;
              }

              ++v36;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v18 != 45)
      {
        if (v22)
        {
          v26 = 0;
          v41 = v52;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v22)
      {
        if (--v22)
        {
          v26 = 0;
          v30 = v52 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v25 = *result;
      if (v25 == 43)
      {
        if (v23 >= 1)
        {
          v22 = v23 - 1;
          if (v23 != 1)
          {
            v26 = 0;
            if (result)
            {
              v33 = result + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  goto LABEL_65;
                }

                v35 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_65;
                }

                v26 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  goto LABEL_65;
                }

                ++v33;
                if (!--v22)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v25 != 45)
      {
        if (v23)
        {
          v26 = 0;
          if (result)
          {
            while (1)
            {
              v39 = *result - 48;
              if (v39 > 9)
              {
                goto LABEL_65;
              }

              v40 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v23)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v26 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_66;
      }

      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v26 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_65;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_65;
              }

              ++v27;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v22) = 0;
LABEL_66:
          v53 = v22;
          v44 = v22;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v26 = sub_18E43A304(v18, v20, 10);
  v44 = v51;
LABEL_67:

  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v26;
  }

LABEL_72:
  a8[2] = v45;
  v46 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v48 = v47;

  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0x6E776F6E6B6E753CLL;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for ModelConfigurationReplacementAssetContents);
  *a8 = v49;
  a8[1] = v50;
  return result;
}

unsigned __int8 *sub_18E42F908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1B78, &qword_18E4E3990);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for LLMDraftModelAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9290, &qword_18E4E3998);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = sub_18E44EAAC();
  v17 = v16;

  v18 = sub_18E2491A4(v15, v17, a5);
  v20 = v19;

  if (!v20)
  {
    goto LABEL_71;
  }

  v22 = HIBYTE(v20) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_71:
    v45 = 0;
    goto LABEL_72;
  }

  if ((v20 & 0x1000000000000000) == 0)
  {
    if ((v20 & 0x2000000000000000) != 0)
    {
      v52[0] = v18;
      v52[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v22)
        {
          if (--v22)
          {
            v26 = 0;
            v36 = v52 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              v38 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                break;
              }

              ++v36;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v18 != 45)
      {
        if (v22)
        {
          v26 = 0;
          v41 = v52;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v22)
      {
        if (--v22)
        {
          v26 = 0;
          v30 = v52 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v25 = *result;
      if (v25 == 43)
      {
        if (v23 >= 1)
        {
          v22 = v23 - 1;
          if (v23 != 1)
          {
            v26 = 0;
            if (result)
            {
              v33 = result + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  goto LABEL_65;
                }

                v35 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_65;
                }

                v26 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  goto LABEL_65;
                }

                ++v33;
                if (!--v22)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v25 != 45)
      {
        if (v23)
        {
          v26 = 0;
          if (result)
          {
            while (1)
            {
              v39 = *result - 48;
              if (v39 > 9)
              {
                goto LABEL_65;
              }

              v40 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v23)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v26 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_66;
      }

      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v26 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_65;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_65;
              }

              ++v27;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v22) = 0;
LABEL_66:
          v53 = v22;
          v44 = v22;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v26 = sub_18E43A304(v18, v20, 10);
  v44 = v51;
LABEL_67:

  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v26;
  }

LABEL_72:
  a8[2] = v45;
  v46 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v48 = v47;

  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0x6E776F6E6B6E753CLL;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for LLMDraftModelAssetContents);
  *a8 = v49;
  a8[1] = v50;
  return result;
}

unsigned __int8 *sub_18E42FD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE18D0, &qword_18E4E3A60);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for DiffusionModelAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9300, &qword_18E4E3A68);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = sub_18E44EAAC();
  v17 = v16;

  v18 = sub_18E2491A4(v15, v17, a5);
  v20 = v19;

  if (!v20)
  {
    goto LABEL_71;
  }

  v22 = HIBYTE(v20) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_71:
    v45 = 0;
    goto LABEL_72;
  }

  if ((v20 & 0x1000000000000000) == 0)
  {
    if ((v20 & 0x2000000000000000) != 0)
    {
      v52[0] = v18;
      v52[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v22)
        {
          if (--v22)
          {
            v26 = 0;
            v36 = v52 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              v38 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                break;
              }

              ++v36;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v18 != 45)
      {
        if (v22)
        {
          v26 = 0;
          v41 = v52;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v22)
      {
        if (--v22)
        {
          v26 = 0;
          v30 = v52 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v25 = *result;
      if (v25 == 43)
      {
        if (v23 >= 1)
        {
          v22 = v23 - 1;
          if (v23 != 1)
          {
            v26 = 0;
            if (result)
            {
              v33 = result + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  goto LABEL_65;
                }

                v35 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_65;
                }

                v26 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  goto LABEL_65;
                }

                ++v33;
                if (!--v22)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v25 != 45)
      {
        if (v23)
        {
          v26 = 0;
          if (result)
          {
            while (1)
            {
              v39 = *result - 48;
              if (v39 > 9)
              {
                goto LABEL_65;
              }

              v40 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v23)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v26 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_66;
      }

      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v26 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_65;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_65;
              }

              ++v27;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v22) = 0;
LABEL_66:
          v53 = v22;
          v44 = v22;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v26 = sub_18E43A304(v18, v20, 10);
  v44 = v51;
LABEL_67:

  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v26;
  }

LABEL_72:
  a8[2] = v45;
  v46 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v48 = v47;

  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0x6E776F6E6B6E753CLL;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for DiffusionModelAssetContents);
  *a8 = v49;
  a8[1] = v50;
  return result;
}

unsigned __int8 *sub_18E4301F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1C50, &qword_18E4E3940);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for MotionAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9258, &qword_18E4E3948);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = sub_18E44EAAC();
  v17 = v16;

  v18 = sub_18E2491A4(v15, v17, a5);
  v20 = v19;

  if (!v20)
  {
    goto LABEL_71;
  }

  v22 = HIBYTE(v20) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_71:
    v45 = 0;
    goto LABEL_72;
  }

  if ((v20 & 0x1000000000000000) == 0)
  {
    if ((v20 & 0x2000000000000000) != 0)
    {
      v52[0] = v18;
      v52[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v22)
        {
          if (--v22)
          {
            v26 = 0;
            v36 = v52 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              v38 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                break;
              }

              ++v36;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v18 != 45)
      {
        if (v22)
        {
          v26 = 0;
          v41 = v52;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v22)
      {
        if (--v22)
        {
          v26 = 0;
          v30 = v52 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v25 = *result;
      if (v25 == 43)
      {
        if (v23 >= 1)
        {
          v22 = v23 - 1;
          if (v23 != 1)
          {
            v26 = 0;
            if (result)
            {
              v33 = result + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  goto LABEL_65;
                }

                v35 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_65;
                }

                v26 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  goto LABEL_65;
                }

                ++v33;
                if (!--v22)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v25 != 45)
      {
        if (v23)
        {
          v26 = 0;
          if (result)
          {
            while (1)
            {
              v39 = *result - 48;
              if (v39 > 9)
              {
                goto LABEL_65;
              }

              v40 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v23)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v26 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_66;
      }

      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v26 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_65;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_65;
              }

              ++v27;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v22) = 0;
LABEL_66:
          v53 = v22;
          v44 = v22;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v26 = sub_18E43A304(v18, v20, 10);
  v44 = v51;
LABEL_67:

  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v26;
  }

LABEL_72:
  a8[2] = v45;
  v46 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v48 = v47;

  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0x6E776F6E6B6E753CLL;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for MotionAssetContents);
  *a8 = v49;
  a8[1] = v50;
  return result;
}

unsigned __int8 *sub_18E430664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1B98, &qword_18E4E3980);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for LLMModelAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9288, &qword_18E4E3988);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = sub_18E44EAAC();
  v17 = v16;

  v18 = sub_18E2491A4(v15, v17, a5);
  v20 = v19;

  if (!v20)
  {
    goto LABEL_71;
  }

  v22 = HIBYTE(v20) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_71:
    v45 = 0;
    goto LABEL_72;
  }

  if ((v20 & 0x1000000000000000) == 0)
  {
    if ((v20 & 0x2000000000000000) != 0)
    {
      v52[0] = v18;
      v52[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v22)
        {
          if (--v22)
          {
            v26 = 0;
            v36 = v52 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              v38 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                break;
              }

              ++v36;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v18 != 45)
      {
        if (v22)
        {
          v26 = 0;
          v41 = v52;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v22)
      {
        if (--v22)
        {
          v26 = 0;
          v30 = v52 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v25 = *result;
      if (v25 == 43)
      {
        if (v23 >= 1)
        {
          v22 = v23 - 1;
          if (v23 != 1)
          {
            v26 = 0;
            if (result)
            {
              v33 = result + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  goto LABEL_65;
                }

                v35 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_65;
                }

                v26 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  goto LABEL_65;
                }

                ++v33;
                if (!--v22)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v25 != 45)
      {
        if (v23)
        {
          v26 = 0;
          if (result)
          {
            while (1)
            {
              v39 = *result - 48;
              if (v39 > 9)
              {
                goto LABEL_65;
              }

              v40 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v23)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v26 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_66;
      }

      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v26 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_65;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_65;
              }

              ++v27;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v22) = 0;
LABEL_66:
          v53 = v22;
          v44 = v22;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v26 = sub_18E43A304(v18, v20, 10);
  v44 = v51;
LABEL_67:

  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v26;
  }

LABEL_72:
  a8[2] = v45;
  v46 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v48 = v47;

  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0x6E776F6E6B6E753CLL;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for LLMModelAssetContents);
  *a8 = v49;
  a8[1] = v50;
  return result;
}

unsigned __int8 *sub_18E430AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1D98, &qword_18E4A5768);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for TokenizerAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9218, &unk_18E4E38E0);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = sub_18E44EAAC();
  v17 = v16;

  v18 = sub_18E2491A4(v15, v17, a5);
  v20 = v19;

  if (!v20)
  {
    goto LABEL_71;
  }

  v22 = HIBYTE(v20) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_71:
    v45 = 0;
    goto LABEL_72;
  }

  if ((v20 & 0x1000000000000000) == 0)
  {
    if ((v20 & 0x2000000000000000) != 0)
    {
      v52[0] = v18;
      v52[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v22)
        {
          if (--v22)
          {
            v26 = 0;
            v36 = v52 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              v38 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                break;
              }

              ++v36;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v18 != 45)
      {
        if (v22)
        {
          v26 = 0;
          v41 = v52;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v22)
      {
        if (--v22)
        {
          v26 = 0;
          v30 = v52 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v25 = *result;
      if (v25 == 43)
      {
        if (v23 >= 1)
        {
          v22 = v23 - 1;
          if (v23 != 1)
          {
            v26 = 0;
            if (result)
            {
              v33 = result + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  goto LABEL_65;
                }

                v35 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_65;
                }

                v26 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  goto LABEL_65;
                }

                ++v33;
                if (!--v22)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v25 != 45)
      {
        if (v23)
        {
          v26 = 0;
          if (result)
          {
            while (1)
            {
              v39 = *result - 48;
              if (v39 > 9)
              {
                goto LABEL_65;
              }

              v40 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v23)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v26 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_66;
      }

      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v26 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_65;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_65;
              }

              ++v27;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v22) = 0;
LABEL_66:
          v53 = v22;
          v44 = v22;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v26 = sub_18E43A304(v18, v20, 10);
  v44 = v51;
LABEL_67:

  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v26;
  }

LABEL_72:
  a8[2] = v45;
  v46 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v48 = v47;

  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0x6E776F6E6B6E753CLL;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for TokenizerAssetContents);
  *a8 = v49;
  a8[1] = v50;
  return result;
}

unsigned __int8 *sub_18E430F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1AC0, &qword_18E4A24B0);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for LLMAdapterAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE92A8, &unk_18E4E39B8);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = sub_18E44EAAC();
  v17 = v16;

  v18 = sub_18E2491A4(v15, v17, a5);
  v20 = v19;

  if (!v20)
  {
    goto LABEL_71;
  }

  v22 = HIBYTE(v20) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_71:
    v45 = 0;
    goto LABEL_72;
  }

  if ((v20 & 0x1000000000000000) == 0)
  {
    if ((v20 & 0x2000000000000000) != 0)
    {
      v52[0] = v18;
      v52[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v22)
        {
          if (--v22)
          {
            v26 = 0;
            v36 = v52 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              v38 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                break;
              }

              ++v36;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v18 != 45)
      {
        if (v22)
        {
          v26 = 0;
          v41 = v52;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v22)
      {
        if (--v22)
        {
          v26 = 0;
          v30 = v52 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v25 = *result;
      if (v25 == 43)
      {
        if (v23 >= 1)
        {
          v22 = v23 - 1;
          if (v23 != 1)
          {
            v26 = 0;
            if (result)
            {
              v33 = result + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  goto LABEL_65;
                }

                v35 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_65;
                }

                v26 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  goto LABEL_65;
                }

                ++v33;
                if (!--v22)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v25 != 45)
      {
        if (v23)
        {
          v26 = 0;
          if (result)
          {
            while (1)
            {
              v39 = *result - 48;
              if (v39 > 9)
              {
                goto LABEL_65;
              }

              v40 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v23)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v26 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_66;
      }

      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v26 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_65;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_65;
              }

              ++v27;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v22) = 0;
LABEL_66:
          v53 = v22;
          v44 = v22;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v26 = sub_18E43A304(v18, v20, 10);
  v44 = v51;
LABEL_67:

  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v26;
  }

LABEL_72:
  a8[2] = v45;
  v46 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v48 = v47;

  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0x6E776F6E6B6E753CLL;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for LLMAdapterAssetContents);
  *a8 = v49;
  a8[1] = v50;
  return result;
}

unsigned __int8 *sub_18E4313C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1A28, &qword_18E4A1160);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for ImageFilterAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE92D0, &qword_18E4E3A08);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = sub_18E44EAAC();
  v17 = v16;

  v18 = sub_18E2491A4(v15, v17, a5);
  v20 = v19;

  if (!v20)
  {
    goto LABEL_71;
  }

  v22 = HIBYTE(v20) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_71:
    v45 = 0;
    goto LABEL_72;
  }

  if ((v20 & 0x1000000000000000) == 0)
  {
    if ((v20 & 0x2000000000000000) != 0)
    {
      v52[0] = v18;
      v52[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v22)
        {
          if (--v22)
          {
            v26 = 0;
            v36 = v52 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              v38 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                break;
              }

              ++v36;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v18 != 45)
      {
        if (v22)
        {
          v26 = 0;
          v41 = v52;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v22)
      {
        if (--v22)
        {
          v26 = 0;
          v30 = v52 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v25 = *result;
      if (v25 == 43)
      {
        if (v23 >= 1)
        {
          v22 = v23 - 1;
          if (v23 != 1)
          {
            v26 = 0;
            if (result)
            {
              v33 = result + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  goto LABEL_65;
                }

                v35 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_65;
                }

                v26 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  goto LABEL_65;
                }

                ++v33;
                if (!--v22)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v25 != 45)
      {
        if (v23)
        {
          v26 = 0;
          if (result)
          {
            while (1)
            {
              v39 = *result - 48;
              if (v39 > 9)
              {
                goto LABEL_65;
              }

              v40 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v23)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v26 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_66;
      }

      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v26 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_65;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_65;
              }

              ++v27;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v22) = 0;
LABEL_66:
          v53 = v22;
          v44 = v22;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v26 = sub_18E43A304(v18, v20, 10);
  v44 = v51;
LABEL_67:

  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v26;
  }

LABEL_72:
  a8[2] = v45;
  v46 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v48 = v47;

  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0x6E776F6E6B6E753CLL;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for ImageFilterAssetContents);
  *a8 = v49;
  a8[1] = v50;
  return result;
}

unsigned __int8 *sub_18E431834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1A98, &qword_18E4A17F0);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for ImageScalerAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE92C0, &qword_18E4E39E8);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = sub_18E44EAAC();
  v17 = v16;

  v18 = sub_18E2491A4(v15, v17, a5);
  v20 = v19;

  if (!v20)
  {
    goto LABEL_71;
  }

  v22 = HIBYTE(v20) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_71:
    v45 = 0;
    goto LABEL_72;
  }

  if ((v20 & 0x1000000000000000) == 0)
  {
    if ((v20 & 0x2000000000000000) != 0)
    {
      v52[0] = v18;
      v52[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v22)
        {
          if (--v22)
          {
            v26 = 0;
            v36 = v52 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              v38 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                break;
              }

              ++v36;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v18 != 45)
      {
        if (v22)
        {
          v26 = 0;
          v41 = v52;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v22)
      {
        if (--v22)
        {
          v26 = 0;
          v30 = v52 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v25 = *result;
      if (v25 == 43)
      {
        if (v23 >= 1)
        {
          v22 = v23 - 1;
          if (v23 != 1)
          {
            v26 = 0;
            if (result)
            {
              v33 = result + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  goto LABEL_65;
                }

                v35 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_65;
                }

                v26 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  goto LABEL_65;
                }

                ++v33;
                if (!--v22)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v25 != 45)
      {
        if (v23)
        {
          v26 = 0;
          if (result)
          {
            while (1)
            {
              v39 = *result - 48;
              if (v39 > 9)
              {
                goto LABEL_65;
              }

              v40 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v23)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v26 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_66;
      }

      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v26 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_65;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_65;
              }

              ++v27;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v22) = 0;
LABEL_66:
          v53 = v22;
          v44 = v22;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v26 = sub_18E43A304(v18, v20, 10);
  v44 = v51;
LABEL_67:

  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v26;
  }

LABEL_72:
  a8[2] = v45;
  v46 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v48 = v47;

  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0x6E776F6E6B6E753CLL;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for ImageScalerAssetContents);
  *a8 = v49;
  a8[1] = v50;
  return result;
}

unsigned __int8 *sub_18E431CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1C30, &qword_18E4E3950);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for MotionAdapterAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9268, &qword_18E4E3958);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = sub_18E44EAAC();
  v17 = v16;

  v18 = sub_18E2491A4(v15, v17, a5);
  v20 = v19;

  if (!v20)
  {
    goto LABEL_71;
  }

  v22 = HIBYTE(v20) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_71:
    v45 = 0;
    goto LABEL_72;
  }

  if ((v20 & 0x1000000000000000) == 0)
  {
    if ((v20 & 0x2000000000000000) != 0)
    {
      v52[0] = v18;
      v52[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v22)
        {
          if (--v22)
          {
            v26 = 0;
            v36 = v52 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              v38 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                break;
              }

              ++v36;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v18 != 45)
      {
        if (v22)
        {
          v26 = 0;
          v41 = v52;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v22)
      {
        if (--v22)
        {
          v26 = 0;
          v30 = v52 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v25 = *result;
      if (v25 == 43)
      {
        if (v23 >= 1)
        {
          v22 = v23 - 1;
          if (v23 != 1)
          {
            v26 = 0;
            if (result)
            {
              v33 = result + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  goto LABEL_65;
                }

                v35 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_65;
                }

                v26 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  goto LABEL_65;
                }

                ++v33;
                if (!--v22)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v25 != 45)
      {
        if (v23)
        {
          v26 = 0;
          if (result)
          {
            while (1)
            {
              v39 = *result - 48;
              if (v39 > 9)
              {
                goto LABEL_65;
              }

              v40 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v23)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v26 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_66;
      }

      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v26 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_65;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_65;
              }

              ++v27;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v22) = 0;
LABEL_66:
          v53 = v22;
          v44 = v22;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v26 = sub_18E43A304(v18, v20, 10);
  v44 = v51;
LABEL_67:

  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v26;
  }

LABEL_72:
  a8[2] = v45;
  v46 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v48 = v47;

  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0x6E776F6E6B6E753CLL;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for MotionAdapterAssetContents);
  *a8 = v49;
  a8[1] = v50;
  return result;
}

unsigned __int8 *sub_18E43211C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1AA8, &qword_18E4A1ED0);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for ImageTokenizerAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE92B0, &unk_18E4E39C8);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = sub_18E44EAAC();
  v17 = v16;

  v18 = sub_18E2491A4(v15, v17, a5);
  v20 = v19;

  if (!v20)
  {
    goto LABEL_71;
  }

  v22 = HIBYTE(v20) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_71:
    v45 = 0;
    goto LABEL_72;
  }

  if ((v20 & 0x1000000000000000) == 0)
  {
    if ((v20 & 0x2000000000000000) != 0)
    {
      v52[0] = v18;
      v52[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v22)
        {
          if (--v22)
          {
            v26 = 0;
            v36 = v52 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              v38 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                break;
              }

              ++v36;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v18 != 45)
      {
        if (v22)
        {
          v26 = 0;
          v41 = v52;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v22)
      {
        if (--v22)
        {
          v26 = 0;
          v30 = v52 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v25 = *result;
      if (v25 == 43)
      {
        if (v23 >= 1)
        {
          v22 = v23 - 1;
          if (v23 != 1)
          {
            v26 = 0;
            if (result)
            {
              v33 = result + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  goto LABEL_65;
                }

                v35 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_65;
                }

                v26 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  goto LABEL_65;
                }

                ++v33;
                if (!--v22)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v25 != 45)
      {
        if (v23)
        {
          v26 = 0;
          if (result)
          {
            while (1)
            {
              v39 = *result - 48;
              if (v39 > 9)
              {
                goto LABEL_65;
              }

              v40 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v23)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v26 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_66;
      }

      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v26 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_65;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_65;
              }

              ++v27;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v22) = 0;
LABEL_66:
          v53 = v22;
          v44 = v22;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v26 = sub_18E43A304(v18, v20, 10);
  v44 = v51;
LABEL_67:

  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v26;
  }

LABEL_72:
  a8[2] = v45;
  v46 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v48 = v47;

  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0x6E776F6E6B6E753CLL;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for ImageTokenizerAssetContents);
  *a8 = v49;
  a8[1] = v50;
  return result;
}

unsigned __int8 *sub_18E432590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1CA8, &qword_18E4E3930);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for PromptAllowListAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9248, &qword_18E4E3938);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = sub_18E44EAAC();
  v17 = v16;

  v18 = sub_18E2491A4(v15, v17, a5);
  v20 = v19;

  if (!v20)
  {
    goto LABEL_71;
  }

  v22 = HIBYTE(v20) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_71:
    v45 = 0;
    goto LABEL_72;
  }

  if ((v20 & 0x1000000000000000) == 0)
  {
    if ((v20 & 0x2000000000000000) != 0)
    {
      v52[0] = v18;
      v52[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v22)
        {
          if (--v22)
          {
            v26 = 0;
            v36 = v52 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              v38 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                break;
              }

              ++v36;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v18 != 45)
      {
        if (v22)
        {
          v26 = 0;
          v41 = v52;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v22)
      {
        if (--v22)
        {
          v26 = 0;
          v30 = v52 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v25 = *result;
      if (v25 == 43)
      {
        if (v23 >= 1)
        {
          v22 = v23 - 1;
          if (v23 != 1)
          {
            v26 = 0;
            if (result)
            {
              v33 = result + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  goto LABEL_65;
                }

                v35 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_65;
                }

                v26 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  goto LABEL_65;
                }

                ++v33;
                if (!--v22)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v25 != 45)
      {
        if (v23)
        {
          v26 = 0;
          if (result)
          {
            while (1)
            {
              v39 = *result - 48;
              if (v39 > 9)
              {
                goto LABEL_65;
              }

              v40 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v23)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v26 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_66;
      }

      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v26 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_65;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_65;
              }

              ++v27;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v22) = 0;
LABEL_66:
          v53 = v22;
          v44 = v22;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v26 = sub_18E43A304(v18, v20, 10);
  v44 = v51;
LABEL_67:

  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v26;
  }

LABEL_72:
  a8[2] = v45;
  v46 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v48 = v47;

  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0x6E776F6E6B6E753CLL;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for PromptAllowListAssetContents);
  *a8 = v49;
  a8[1] = v50;
  return result;
}

unsigned __int8 *sub_18E432A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1CC8, &qword_18E4E3920);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for SecureAnalyticsAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9238, &qword_18E4E3928);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = sub_18E44EAAC();
  v17 = v16;

  v18 = sub_18E2491A4(v15, v17, a5);
  v20 = v19;

  if (!v20)
  {
    goto LABEL_71;
  }

  v22 = HIBYTE(v20) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_71:
    v45 = 0;
    goto LABEL_72;
  }

  if ((v20 & 0x1000000000000000) == 0)
  {
    if ((v20 & 0x2000000000000000) != 0)
    {
      v52[0] = v18;
      v52[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v22)
        {
          if (--v22)
          {
            v26 = 0;
            v36 = v52 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              v38 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                break;
              }

              ++v36;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v18 != 45)
      {
        if (v22)
        {
          v26 = 0;
          v41 = v52;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v22)
      {
        if (--v22)
        {
          v26 = 0;
          v30 = v52 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v25 = *result;
      if (v25 == 43)
      {
        if (v23 >= 1)
        {
          v22 = v23 - 1;
          if (v23 != 1)
          {
            v26 = 0;
            if (result)
            {
              v33 = result + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  goto LABEL_65;
                }

                v35 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_65;
                }

                v26 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  goto LABEL_65;
                }

                ++v33;
                if (!--v22)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v25 != 45)
      {
        if (v23)
        {
          v26 = 0;
          if (result)
          {
            while (1)
            {
              v39 = *result - 48;
              if (v39 > 9)
              {
                goto LABEL_65;
              }

              v40 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v23)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v26 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_66;
      }

      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v26 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_65;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_65;
              }

              ++v27;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v22) = 0;
LABEL_66:
          v53 = v22;
          v44 = v22;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v26 = sub_18E43A304(v18, v20, 10);
  v44 = v51;
LABEL_67:

  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v26;
  }

LABEL_72:
  a8[2] = v45;
  v46 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v48 = v47;

  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0x6E776F6E6B6E753CLL;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for SecureAnalyticsAssetContents);
  *a8 = v49;
  a8[1] = v50;
  return result;
}

unsigned __int8 *sub_18E432E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE18B8, &qword_18E4E3A70);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for DiffusionAdapterAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9308, &qword_18E4E3A78);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = sub_18E44EAAC();
  v17 = v16;

  v18 = sub_18E2491A4(v15, v17, a5);
  v20 = v19;

  if (!v20)
  {
    goto LABEL_71;
  }

  v22 = HIBYTE(v20) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_71:
    v45 = 0;
    goto LABEL_72;
  }

  if ((v20 & 0x1000000000000000) == 0)
  {
    if ((v20 & 0x2000000000000000) != 0)
    {
      v52[0] = v18;
      v52[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v22)
        {
          if (--v22)
          {
            v26 = 0;
            v36 = v52 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              v38 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                break;
              }

              ++v36;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v18 != 45)
      {
        if (v22)
        {
          v26 = 0;
          v41 = v52;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v22)
      {
        if (--v22)
        {
          v26 = 0;
          v30 = v52 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v25 = *result;
      if (v25 == 43)
      {
        if (v23 >= 1)
        {
          v22 = v23 - 1;
          if (v23 != 1)
          {
            v26 = 0;
            if (result)
            {
              v33 = result + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  goto LABEL_65;
                }

                v35 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_65;
                }

                v26 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  goto LABEL_65;
                }

                ++v33;
                if (!--v22)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v25 != 45)
      {
        if (v23)
        {
          v26 = 0;
          if (result)
          {
            while (1)
            {
              v39 = *result - 48;
              if (v39 > 9)
              {
                goto LABEL_65;
              }

              v40 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v23)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v26 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_66;
      }

      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v26 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_65;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_65;
              }

              ++v27;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v22) = 0;
LABEL_66:
          v53 = v22;
          v44 = v22;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v26 = sub_18E43A304(v18, v20, 10);
  v44 = v51;
LABEL_67:

  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v26;
  }

LABEL_72:
  a8[2] = v45;
  v46 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v48 = v47;

  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0x6E776F6E6B6E753CLL;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for DiffusionAdapterAssetContents);
  *a8 = v49;
  a8[1] = v50;
  return result;
}

unsigned __int8 *sub_18E4332EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1948, &qword_18E4E3A40);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for EmbeddingDenyListAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE92F0, &qword_18E4E3A48);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = sub_18E44EAAC();
  v17 = v16;

  v18 = sub_18E2491A4(v15, v17, a5);
  v20 = v19;

  if (!v20)
  {
    goto LABEL_71;
  }

  v22 = HIBYTE(v20) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_71:
    v45 = 0;
    goto LABEL_72;
  }

  if ((v20 & 0x1000000000000000) == 0)
  {
    if ((v20 & 0x2000000000000000) != 0)
    {
      v52[0] = v18;
      v52[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v22)
        {
          if (--v22)
          {
            v26 = 0;
            v36 = v52 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              v38 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                break;
              }

              ++v36;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v18 != 45)
      {
        if (v22)
        {
          v26 = 0;
          v41 = v52;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v22)
      {
        if (--v22)
        {
          v26 = 0;
          v30 = v52 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v25 = *result;
      if (v25 == 43)
      {
        if (v23 >= 1)
        {
          v22 = v23 - 1;
          if (v23 != 1)
          {
            v26 = 0;
            if (result)
            {
              v33 = result + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  goto LABEL_65;
                }

                v35 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_65;
                }

                v26 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  goto LABEL_65;
                }

                ++v33;
                if (!--v22)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v25 != 45)
      {
        if (v23)
        {
          v26 = 0;
          if (result)
          {
            while (1)
            {
              v39 = *result - 48;
              if (v39 > 9)
              {
                goto LABEL_65;
              }

              v40 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v23)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v26 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_66;
      }

      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v26 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_65;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_65;
              }

              ++v27;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v22) = 0;
LABEL_66:
          v53 = v22;
          v44 = v22;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v26 = sub_18E43A304(v18, v20, 10);
  v44 = v51;
LABEL_67:

  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v26;
  }

LABEL_72:
  a8[2] = v45;
  v46 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v48 = v47;

  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0x6E776F6E6B6E753CLL;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for EmbeddingDenyListAssetContents);
  *a8 = v49;
  a8[1] = v50;
  return result;
}

unsigned __int8 *sub_18E433760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1A60, &qword_18E4E39F0);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for ImageMagicCleanUpAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE92C8, &unk_18E4E39F8);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = sub_18E44EAAC();
  v17 = v16;

  v18 = sub_18E2491A4(v15, v17, a5);
  v20 = v19;

  if (!v20)
  {
    goto LABEL_71;
  }

  v22 = HIBYTE(v20) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_71:
    v45 = 0;
    goto LABEL_72;
  }

  if ((v20 & 0x1000000000000000) == 0)
  {
    if ((v20 & 0x2000000000000000) != 0)
    {
      v52[0] = v18;
      v52[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v22)
        {
          if (--v22)
          {
            v26 = 0;
            v36 = v52 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              v38 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                break;
              }

              ++v36;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v18 != 45)
      {
        if (v22)
        {
          v26 = 0;
          v41 = v52;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v22)
      {
        if (--v22)
        {
          v26 = 0;
          v30 = v52 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v25 = *result;
      if (v25 == 43)
      {
        if (v23 >= 1)
        {
          v22 = v23 - 1;
          if (v23 != 1)
          {
            v26 = 0;
            if (result)
            {
              v33 = result + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  goto LABEL_65;
                }

                v35 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_65;
                }

                v26 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  goto LABEL_65;
                }

                ++v33;
                if (!--v22)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v25 != 45)
      {
        if (v23)
        {
          v26 = 0;
          if (result)
          {
            while (1)
            {
              v39 = *result - 48;
              if (v39 > 9)
              {
                goto LABEL_65;
              }

              v40 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v23)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v26 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_66;
      }

      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v26 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_65;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_65;
              }

              ++v27;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v22) = 0;
LABEL_66:
          v53 = v22;
          v44 = v22;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v26 = sub_18E43A304(v18, v20, 10);
  v44 = v51;
LABEL_67:

  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v26;
  }

LABEL_72:
  a8[2] = v45;
  v46 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v48 = v47;

  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0x6E776F6E6B6E753CLL;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for ImageMagicCleanUpAssetContents);
  *a8 = v49;
  a8[1] = v50;
  return result;
}

unsigned __int8 *sub_18E433BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1D08, &qword_18E4E3910);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for TokenInputDenyListAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9230, &qword_18E4E3918);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = sub_18E44EAAC();
  v17 = v16;

  v18 = sub_18E2491A4(v15, v17, a5);
  v20 = v19;

  if (!v20)
  {
    goto LABEL_71;
  }

  v22 = HIBYTE(v20) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_71:
    v45 = 0;
    goto LABEL_72;
  }

  if ((v20 & 0x1000000000000000) == 0)
  {
    if ((v20 & 0x2000000000000000) != 0)
    {
      v52[0] = v18;
      v52[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v22)
        {
          if (--v22)
          {
            v26 = 0;
            v36 = v52 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              v38 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                break;
              }

              ++v36;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v18 != 45)
      {
        if (v22)
        {
          v26 = 0;
          v41 = v52;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v22)
      {
        if (--v22)
        {
          v26 = 0;
          v30 = v52 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v25 = *result;
      if (v25 == 43)
      {
        if (v23 >= 1)
        {
          v22 = v23 - 1;
          if (v23 != 1)
          {
            v26 = 0;
            if (result)
            {
              v33 = result + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  goto LABEL_65;
                }

                v35 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_65;
                }

                v26 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  goto LABEL_65;
                }

                ++v33;
                if (!--v22)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v25 != 45)
      {
        if (v23)
        {
          v26 = 0;
          if (result)
          {
            while (1)
            {
              v39 = *result - 48;
              if (v39 > 9)
              {
                goto LABEL_65;
              }

              v40 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v23)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v26 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_66;
      }

      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v26 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_65;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_65;
              }

              ++v27;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v22) = 0;
LABEL_66:
          v53 = v22;
          v44 = v22;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v26 = sub_18E43A304(v18, v20, 10);
  v44 = v51;
LABEL_67:

  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v26;
  }

LABEL_72:
  a8[2] = v45;
  v46 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v48 = v47;

  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0x6E776F6E6B6E753CLL;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for TokenInputDenyListAssetContents);
  *a8 = v49;
  a8[1] = v50;
  return result;
}

unsigned __int8 *sub_18E434048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1878, &qword_18E4E3A80);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for AppleDeviceTrackingAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9310, &qword_18E4E3A88);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = sub_18E44EAAC();
  v17 = v16;

  v18 = sub_18E2491A4(v15, v17, a5);
  v20 = v19;

  if (!v20)
  {
    goto LABEL_71;
  }

  v22 = HIBYTE(v20) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_71:
    v45 = 0;
    goto LABEL_72;
  }

  if ((v20 & 0x1000000000000000) == 0)
  {
    if ((v20 & 0x2000000000000000) != 0)
    {
      v52[0] = v18;
      v52[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v22)
        {
          if (--v22)
          {
            v26 = 0;
            v36 = v52 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              v38 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                break;
              }

              ++v36;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v18 != 45)
      {
        if (v22)
        {
          v26 = 0;
          v41 = v52;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v22)
      {
        if (--v22)
        {
          v26 = 0;
          v30 = v52 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v25 = *result;
      if (v25 == 43)
      {
        if (v23 >= 1)
        {
          v22 = v23 - 1;
          if (v23 != 1)
          {
            v26 = 0;
            if (result)
            {
              v33 = result + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  goto LABEL_65;
                }

                v35 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_65;
                }

                v26 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  goto LABEL_65;
                }

                ++v33;
                if (!--v22)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v25 != 45)
      {
        if (v23)
        {
          v26 = 0;
          if (result)
          {
            while (1)
            {
              v39 = *result - 48;
              if (v39 > 9)
              {
                goto LABEL_65;
              }

              v40 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v23)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v26 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_66;
      }

      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v26 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_65;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_65;
              }

              ++v27;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v22) = 0;
LABEL_66:
          v53 = v22;
          v44 = v22;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v26 = sub_18E43A304(v18, v20, 10);
  v44 = v51;
LABEL_67:

  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v26;
  }

LABEL_72:
  a8[2] = v45;
  v46 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v48 = v47;

  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0x6E776F6E6B6E753CLL;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for AppleDeviceTrackingAssetContents);
  *a8 = v49;
  a8[1] = v50;
  return result;
}

unsigned __int8 *sub_18E4344BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1908, &qword_18E4E3A50);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for DisabledUseCaseListAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE92F8, &qword_18E4E3A58);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = sub_18E44EAAC();
  v17 = v16;

  v18 = sub_18E2491A4(v15, v17, a5);
  v20 = v19;

  if (!v20)
  {
    goto LABEL_71;
  }

  v22 = HIBYTE(v20) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_71:
    v45 = 0;
    goto LABEL_72;
  }

  if ((v20 & 0x1000000000000000) == 0)
  {
    if ((v20 & 0x2000000000000000) != 0)
    {
      v52[0] = v18;
      v52[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v22)
        {
          if (--v22)
          {
            v26 = 0;
            v36 = v52 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              v38 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                break;
              }

              ++v36;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v18 != 45)
      {
        if (v22)
        {
          v26 = 0;
          v41 = v52;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v22)
      {
        if (--v22)
        {
          v26 = 0;
          v30 = v52 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v25 = *result;
      if (v25 == 43)
      {
        if (v23 >= 1)
        {
          v22 = v23 - 1;
          if (v23 != 1)
          {
            v26 = 0;
            if (result)
            {
              v33 = result + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  goto LABEL_65;
                }

                v35 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_65;
                }

                v26 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  goto LABEL_65;
                }

                ++v33;
                if (!--v22)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v25 != 45)
      {
        if (v23)
        {
          v26 = 0;
          if (result)
          {
            while (1)
            {
              v39 = *result - 48;
              if (v39 > 9)
              {
                goto LABEL_65;
              }

              v40 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v23)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v26 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_66;
      }

      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v26 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_65;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_65;
              }

              ++v27;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v22) = 0;
LABEL_66:
          v53 = v22;
          v44 = v22;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v26 = sub_18E43A304(v18, v20, 10);
  v44 = v51;
LABEL_67:

  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v26;
  }

LABEL_72:
  a8[2] = v45;
  v46 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v48 = v47;

  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0x6E776F6E6B6E753CLL;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for DisabledUseCaseListAssetContents);
  *a8 = v49;
  a8[1] = v50;
  return result;
}

unsigned __int8 *sub_18E434930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE19F0, &qword_18E4E3A10);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for ImageCuratedPromptsAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE92D8, &unk_18E4E3A18);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = sub_18E44EAAC();
  v17 = v16;

  v18 = sub_18E2491A4(v15, v17, a5);
  v20 = v19;

  if (!v20)
  {
    goto LABEL_71;
  }

  v22 = HIBYTE(v20) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_71:
    v45 = 0;
    goto LABEL_72;
  }

  if ((v20 & 0x1000000000000000) == 0)
  {
    if ((v20 & 0x2000000000000000) != 0)
    {
      v52[0] = v18;
      v52[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v22)
        {
          if (--v22)
          {
            v26 = 0;
            v36 = v52 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              v38 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                break;
              }

              ++v36;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v18 != 45)
      {
        if (v22)
        {
          v26 = 0;
          v41 = v52;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v22)
      {
        if (--v22)
        {
          v26 = 0;
          v30 = v52 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v25 = *result;
      if (v25 == 43)
      {
        if (v23 >= 1)
        {
          v22 = v23 - 1;
          if (v23 != 1)
          {
            v26 = 0;
            if (result)
            {
              v33 = result + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  goto LABEL_65;
                }

                v35 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_65;
                }

                v26 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  goto LABEL_65;
                }

                ++v33;
                if (!--v22)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v25 != 45)
      {
        if (v23)
        {
          v26 = 0;
          if (result)
          {
            while (1)
            {
              v39 = *result - 48;
              if (v39 > 9)
              {
                goto LABEL_65;
              }

              v40 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v23)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v26 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_66;
      }

      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v26 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_65;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_65;
              }

              ++v27;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v22) = 0;
LABEL_66:
          v53 = v22;
          v44 = v22;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v26 = sub_18E43A304(v18, v20, 10);
  v44 = v51;
LABEL_67:

  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v26;
  }

LABEL_72:
  a8[2] = v45;
  v46 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v48 = v47;

  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0x6E776F6E6B6E753CLL;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for ImageCuratedPromptsAssetContents);
  *a8 = v49;
  a8[1] = v50;
  return result;
}

unsigned __int8 *sub_18E434DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1BD0, &qword_18E4E3970);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for ServerConfigurationAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9280, &qword_18E4E3978);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = sub_18E44EAAC();
  v17 = v16;

  v18 = sub_18E2491A4(v15, v17, a5);
  v20 = v19;

  if (!v20)
  {
    goto LABEL_71;
  }

  v22 = HIBYTE(v20) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_71:
    v45 = 0;
    goto LABEL_72;
  }

  if ((v20 & 0x1000000000000000) == 0)
  {
    if ((v20 & 0x2000000000000000) != 0)
    {
      v52[0] = v18;
      v52[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v22)
        {
          if (--v22)
          {
            v26 = 0;
            v36 = v52 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              v38 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                break;
              }

              ++v36;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v18 != 45)
      {
        if (v22)
        {
          v26 = 0;
          v41 = v52;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v22)
      {
        if (--v22)
        {
          v26 = 0;
          v30 = v52 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v25 = *result;
      if (v25 == 43)
      {
        if (v23 >= 1)
        {
          v22 = v23 - 1;
          if (v23 != 1)
          {
            v26 = 0;
            if (result)
            {
              v33 = result + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  goto LABEL_65;
                }

                v35 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_65;
                }

                v26 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  goto LABEL_65;
                }

                ++v33;
                if (!--v22)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v25 != 45)
      {
        if (v23)
        {
          v26 = 0;
          if (result)
          {
            while (1)
            {
              v39 = *result - 48;
              if (v39 > 9)
              {
                goto LABEL_65;
              }

              v40 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v23)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v26 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_66;
      }

      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v26 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_65;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_65;
              }

              ++v27;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v22) = 0;
LABEL_66:
          v53 = v22;
          v44 = v22;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v26 = sub_18E43A304(v18, v20, 10);
  v44 = v51;
LABEL_67:

  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v26;
  }

LABEL_72:
  a8[2] = v45;
  v46 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v48 = v47;

  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0x6E776F6E6B6E753CLL;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for ServerConfigurationAssetContents);
  *a8 = v49;
  a8[1] = v50;
  return result;
}

unsigned __int8 *sub_18E435218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1D48, &qword_18E4E3900);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for TokenOutputDenyListAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9228, &qword_18E4E3908);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = sub_18E44EAAC();
  v17 = v16;

  v18 = sub_18E2491A4(v15, v17, a5);
  v20 = v19;

  if (!v20)
  {
    goto LABEL_71;
  }

  v22 = HIBYTE(v20) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_71:
    v45 = 0;
    goto LABEL_72;
  }

  if ((v20 & 0x1000000000000000) == 0)
  {
    if ((v20 & 0x2000000000000000) != 0)
    {
      v52[0] = v18;
      v52[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v22)
        {
          if (--v22)
          {
            v26 = 0;
            v36 = v52 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              v38 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                break;
              }

              ++v36;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v18 != 45)
      {
        if (v22)
        {
          v26 = 0;
          v41 = v52;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v22)
      {
        if (--v22)
        {
          v26 = 0;
          v30 = v52 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v25 = *result;
      if (v25 == 43)
      {
        if (v23 >= 1)
        {
          v22 = v23 - 1;
          if (v23 != 1)
          {
            v26 = 0;
            if (result)
            {
              v33 = result + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  goto LABEL_65;
                }

                v35 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_65;
                }

                v26 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  goto LABEL_65;
                }

                ++v33;
                if (!--v22)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v25 != 45)
      {
        if (v23)
        {
          v26 = 0;
          if (result)
          {
            while (1)
            {
              v39 = *result - 48;
              if (v39 > 9)
              {
                goto LABEL_65;
              }

              v40 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v23)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v26 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_66;
      }

      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v26 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_65;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_65;
              }

              ++v27;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v22) = 0;
LABEL_66:
          v53 = v22;
          v44 = v22;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v26 = sub_18E43A304(v18, v20, 10);
  v44 = v51;
LABEL_67:

  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v26;
  }

LABEL_72:
  a8[2] = v45;
  v46 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v48 = v47;

  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0x6E776F6E6B6E753CLL;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for TokenOutputDenyListAssetContents);
  *a8 = v49;
  a8[1] = v50;
  return result;
}

unsigned __int8 *sub_18E43568C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1978, &qword_18E4E3A30);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for EmbeddingPreprocessorAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE92E8, &qword_18E4E3A38);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = sub_18E44EAAC();
  v17 = v16;

  v18 = sub_18E2491A4(v15, v17, a5);
  v20 = v19;

  if (!v20)
  {
    goto LABEL_71;
  }

  v22 = HIBYTE(v20) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_71:
    v45 = 0;
    goto LABEL_72;
  }

  if ((v20 & 0x1000000000000000) == 0)
  {
    if ((v20 & 0x2000000000000000) != 0)
    {
      v52[0] = v18;
      v52[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v22)
        {
          if (--v22)
          {
            v26 = 0;
            v36 = v52 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              v38 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                break;
              }

              ++v36;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v18 != 45)
      {
        if (v22)
        {
          v26 = 0;
          v41 = v52;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v22)
      {
        if (--v22)
        {
          v26 = 0;
          v30 = v52 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v25 = *result;
      if (v25 == 43)
      {
        if (v23 >= 1)
        {
          v22 = v23 - 1;
          if (v23 != 1)
          {
            v26 = 0;
            if (result)
            {
              v33 = result + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  goto LABEL_65;
                }

                v35 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_65;
                }

                v26 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  goto LABEL_65;
                }

                ++v33;
                if (!--v22)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v25 != 45)
      {
        if (v23)
        {
          v26 = 0;
          if (result)
          {
            while (1)
            {
              v39 = *result - 48;
              if (v39 > 9)
              {
                goto LABEL_65;
              }

              v40 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v23)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v26 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_66;
      }

      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v26 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_65;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_65;
              }

              ++v27;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v22) = 0;
LABEL_66:
          v53 = v22;
          v44 = v22;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v26 = sub_18E43A304(v18, v20, 10);
  v44 = v51;
LABEL_67:

  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v26;
  }

LABEL_72:
  a8[2] = v45;
  v46 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v48 = v47;

  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0x6E776F6E6B6E753CLL;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for EmbeddingPreprocessorAssetContents);
  *a8 = v49;
  a8[1] = v50;
  return result;
}

unsigned __int8 *sub_18E435B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1D90, &qword_18E4E38F0);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for TokenOutputRetainListAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9220, &qword_18E4E38F8);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = sub_18E44EAAC();
  v17 = v16;

  v18 = sub_18E2491A4(v15, v17, a5);
  v20 = v19;

  if (!v20)
  {
    goto LABEL_71;
  }

  v22 = HIBYTE(v20) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_71:
    v45 = 0;
    goto LABEL_72;
  }

  if ((v20 & 0x1000000000000000) == 0)
  {
    if ((v20 & 0x2000000000000000) != 0)
    {
      v52[0] = v18;
      v52[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v22)
        {
          if (--v22)
          {
            v26 = 0;
            v36 = v52 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              v38 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                break;
              }

              ++v36;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v18 != 45)
      {
        if (v22)
        {
          v26 = 0;
          v41 = v52;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v22)
      {
        if (--v22)
        {
          v26 = 0;
          v30 = v52 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v25 = *result;
      if (v25 == 43)
      {
        if (v23 >= 1)
        {
          v22 = v23 - 1;
          if (v23 != 1)
          {
            v26 = 0;
            if (result)
            {
              v33 = result + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  goto LABEL_65;
                }

                v35 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_65;
                }

                v26 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  goto LABEL_65;
                }

                ++v33;
                if (!--v22)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v25 != 45)
      {
        if (v23)
        {
          v26 = 0;
          if (result)
          {
            while (1)
            {
              v39 = *result - 48;
              if (v39 > 9)
              {
                goto LABEL_65;
              }

              v40 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v23)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v26 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_66;
      }

      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v26 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_65;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_65;
              }

              ++v27;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v22) = 0;
LABEL_66:
          v53 = v22;
          v44 = v22;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v26 = sub_18E43A304(v18, v20, 10);
  v44 = v51;
LABEL_67:

  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v26;
  }

LABEL_72:
  a8[2] = v45;
  v46 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v48 = v47;

  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0x6E776F6E6B6E753CLL;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for TokenOutputRetainListAssetContents);
  *a8 = v49;
  a8[1] = v50;
  return result;
}

unsigned __int8 *sub_18E435F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE19B0, &qword_18E4A0AD0);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for HandwritingSynthesizerAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE92E0, &qword_18E4E3A28);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = sub_18E44EAAC();
  v17 = v16;

  v18 = sub_18E2491A4(v15, v17, a5);
  v20 = v19;

  if (!v20)
  {
    goto LABEL_71;
  }

  v22 = HIBYTE(v20) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_71:
    v45 = 0;
    goto LABEL_72;
  }

  if ((v20 & 0x1000000000000000) == 0)
  {
    if ((v20 & 0x2000000000000000) != 0)
    {
      v52[0] = v18;
      v52[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v22)
        {
          if (--v22)
          {
            v26 = 0;
            v36 = v52 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              v38 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                break;
              }

              ++v36;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v18 != 45)
      {
        if (v22)
        {
          v26 = 0;
          v41 = v52;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v22)
      {
        if (--v22)
        {
          v26 = 0;
          v30 = v52 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v25 = *result;
      if (v25 == 43)
      {
        if (v23 >= 1)
        {
          v22 = v23 - 1;
          if (v23 != 1)
          {
            v26 = 0;
            if (result)
            {
              v33 = result + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  goto LABEL_65;
                }

                v35 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_65;
                }

                v26 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  goto LABEL_65;
                }

                ++v33;
                if (!--v22)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v25 != 45)
      {
        if (v23)
        {
          v26 = 0;
          if (result)
          {
            while (1)
            {
              v39 = *result - 48;
              if (v39 > 9)
              {
                goto LABEL_65;
              }

              v40 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v23)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v26 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_66;
      }

      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v26 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_65;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_65;
              }

              ++v27;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v22) = 0;
LABEL_66:
          v53 = v22;
          v44 = v22;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v26 = sub_18E43A304(v18, v20, 10);
  v44 = v51;
LABEL_67:

  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v26;
  }

LABEL_72:
  a8[2] = v45;
  v46 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v48 = v47;

  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0x6E776F6E6B6E753CLL;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for HandwritingSynthesizerAssetContents);
  *a8 = v49;
  a8[1] = v50;
  return result;
}

unsigned __int8 *sub_18E4363E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1AA0, &qword_18E4A1B50);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for ImageSpatialPhotosReliveAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE92B8, &unk_18E4E39D8);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = sub_18E44EAAC();
  v17 = v16;

  v18 = sub_18E2491A4(v15, v17, a5);
  v20 = v19;

  if (!v20)
  {
    goto LABEL_71;
  }

  v22 = HIBYTE(v20) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_71:
    v45 = 0;
    goto LABEL_72;
  }

  if ((v20 & 0x1000000000000000) == 0)
  {
    if ((v20 & 0x2000000000000000) != 0)
    {
      v52[0] = v18;
      v52[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v22)
        {
          if (--v22)
          {
            v26 = 0;
            v36 = v52 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              v38 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                break;
              }

              ++v36;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v18 != 45)
      {
        if (v22)
        {
          v26 = 0;
          v41 = v52;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v22)
      {
        if (--v22)
        {
          v26 = 0;
          v30 = v52 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v25 = *result;
      if (v25 == 43)
      {
        if (v23 >= 1)
        {
          v22 = v23 - 1;
          if (v23 != 1)
          {
            v26 = 0;
            if (result)
            {
              v33 = result + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  goto LABEL_65;
                }

                v35 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_65;
                }

                v26 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  goto LABEL_65;
                }

                ++v33;
                if (!--v22)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v25 != 45)
      {
        if (v23)
        {
          v26 = 0;
          if (result)
          {
            while (1)
            {
              v39 = *result - 48;
              if (v39 > 9)
              {
                goto LABEL_65;
              }

              v40 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v23)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v26 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_66;
      }

      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v26 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_65;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_65;
              }

              ++v27;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v22) = 0;
LABEL_66:
          v53 = v22;
          v44 = v22;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v26 = sub_18E43A304(v18, v20, 10);
  v44 = v51;
LABEL_67:

  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v26;
  }

LABEL_72:
  a8[2] = v45;
  v46 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v48 = v47;

  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0x6E776F6E6B6E753CLL;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for ImageSpatialPhotosReliveAssetContents);
  *a8 = v49;
  a8[1] = v50;
  return result;
}

unsigned __int8 *sub_18E43685C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1B50, &qword_18E4E39A0);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for LLMAdapterMetadataOverrideAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9298, &unk_18E4E39A8);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = sub_18E44EAAC();
  v17 = v16;

  v18 = sub_18E2491A4(v15, v17, a5);
  v20 = v19;

  if (!v20)
  {
    goto LABEL_71;
  }

  v22 = HIBYTE(v20) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_71:
    v45 = 0;
    goto LABEL_72;
  }

  if ((v20 & 0x1000000000000000) == 0)
  {
    if ((v20 & 0x2000000000000000) != 0)
    {
      v52[0] = v18;
      v52[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v22)
        {
          if (--v22)
          {
            v26 = 0;
            v36 = v52 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              v38 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                break;
              }

              ++v36;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v18 != 45)
      {
        if (v22)
        {
          v26 = 0;
          v41 = v52;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v22)
      {
        if (--v22)
        {
          v26 = 0;
          v30 = v52 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v22)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v25 = *result;
      if (v25 == 43)
      {
        if (v23 >= 1)
        {
          v22 = v23 - 1;
          if (v23 != 1)
          {
            v26 = 0;
            if (result)
            {
              v33 = result + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  goto LABEL_65;
                }

                v35 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_65;
                }

                v26 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  goto LABEL_65;
                }

                ++v33;
                if (!--v22)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v25 != 45)
      {
        if (v23)
        {
          v26 = 0;
          if (result)
          {
            while (1)
            {
              v39 = *result - 48;
              if (v39 > 9)
              {
                goto LABEL_65;
              }

              v40 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v23)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v26 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_66;
      }

      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v26 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_65;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_65;
              }

              ++v27;
              if (!--v22)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v22) = 0;
LABEL_66:
          v53 = v22;
          v44 = v22;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v26 = sub_18E43A304(v18, v20, 10);
  v44 = v51;
LABEL_67:

  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v26;
  }

LABEL_72:
  a8[2] = v45;
  v46 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v48 = v47;

  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0x6E776F6E6B6E753CLL;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for LLMAdapterMetadataOverrideAssetContents);
  *a8 = v49;
  a8[1] = v50;
  return result;
}

unsigned __int8 *sub_18E436CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v17 = *(a1 + 16);
  v18 = *a4;
  *(a9 + 24) = *a1;
  *(a9 + 40) = v17;
  v59 = a6;
  v60 = a7;
  v61 = a8;
  v62 = a10;
  v19 = type metadata accessor for CatalogAsset(0, &v59);
  v57 = *(a7 - 8);
  v58 = a2;
  (*(v57 + 16))(a9 + v19[15], a2, a7);
  v20 = 0;
  *(a9 + v19[17]) = a3;
  *(a9 + v19[18]) = v18;
  if (v18 < 0 && (a5 & 1) != 0)
  {
    v59 = a6;
    v60 = a7;
    v61 = a8;
    v62 = a10;
    type metadata accessor for CatalogAsset.CoherentLockAssertion(0, &v59);
    v20 = sub_18E42EFD8(v18 & 0x7FFFFFFFFFFFFFFFLL);
  }

  *(a9 + v19[16]) = v20;
  v21 = sub_18E44EAAC();
  v23 = v22;

  v24 = sub_18E2491A4(v21, v23, a3);
  v26 = v25;

  if (!v26)
  {
    goto LABEL_67;
  }

  v28 = HIBYTE(v26) & 0xF;
  v29 = v24 & 0xFFFFFFFFFFFFLL;
  if ((v26 & 0x2000000000000000) != 0)
  {
    v30 = HIBYTE(v26) & 0xF;
  }

  else
  {
    v30 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v30)
  {

    goto LABEL_67;
  }

  if ((v26 & 0x1000000000000000) != 0)
  {
    v32 = sub_18E43A304(v24, v26, 10);
    v56 = v55;

    if ((v56 & 1) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  if ((v26 & 0x2000000000000000) != 0)
  {
    v59 = v24;
    v60 = v26 & 0xFFFFFFFFFFFFFFLL;
    if (v24 == 43)
    {
      if (v28)
      {
        if (--v28)
        {
          v32 = 0;
          v42 = &v59 + 1;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v32;
            if ((v32 * 10) >> 64 != (10 * v32) >> 63)
            {
              break;
            }

            v32 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v28)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

LABEL_79:
      __break(1u);
      return result;
    }

    if (v24 != 45)
    {
      if (v28)
      {
        v32 = 0;
        v47 = &v59;
        while (1)
        {
          v48 = *v47 - 48;
          if (v48 > 9)
          {
            break;
          }

          v49 = 10 * v32;
          if ((v32 * 10) >> 64 != (10 * v32) >> 63)
          {
            break;
          }

          v32 = v49 + v48;
          if (__OFADD__(v49, v48))
          {
            break;
          }

          v47 = (v47 + 1);
          if (!--v28)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    if (v28)
    {
      if (--v28)
      {
        v32 = 0;
        v36 = &v59 + 1;
        while (1)
        {
          v37 = *v36 - 48;
          if (v37 > 9)
          {
            break;
          }

          v38 = 10 * v32;
          if ((v32 * 10) >> 64 != (10 * v32) >> 63)
          {
            break;
          }

          v32 = v38 - v37;
          if (__OFSUB__(v38, v37))
          {
            break;
          }

          ++v36;
          if (!--v28)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    goto LABEL_77;
  }

  if ((v24 & 0x1000000000000000) != 0)
  {
    result = ((v26 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_18E44F07C();
  }

  v31 = *result;
  if (v31 == 43)
  {
    if (v29 >= 1)
    {
      v28 = v29 - 1;
      if (v29 != 1)
      {
        v32 = 0;
        if (result)
        {
          v39 = result + 1;
          while (1)
          {
            v40 = *v39 - 48;
            if (v40 > 9)
            {
              goto LABEL_65;
            }

            v41 = 10 * v32;
            if ((v32 * 10) >> 64 != (10 * v32) >> 63)
            {
              goto LABEL_65;
            }

            v32 = v41 + v40;
            if (__OFADD__(v41, v40))
            {
              goto LABEL_65;
            }

            ++v39;
            if (!--v28)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_57;
      }

      goto LABEL_65;
    }

    goto LABEL_78;
  }

  if (v31 == 45)
  {
    if (v29 >= 1)
    {
      v28 = v29 - 1;
      if (v29 != 1)
      {
        v32 = 0;
        if (result)
        {
          v33 = result + 1;
          while (1)
          {
            v34 = *v33 - 48;
            if (v34 > 9)
            {
              goto LABEL_65;
            }

            v35 = 10 * v32;
            if ((v32 * 10) >> 64 != (10 * v32) >> 63)
            {
              goto LABEL_65;
            }

            v32 = v35 - v34;
            if (__OFSUB__(v35, v34))
            {
              goto LABEL_65;
            }

            ++v33;
            if (!--v28)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_57:
        LOBYTE(v28) = 0;
        goto LABEL_66;
      }

      goto LABEL_65;
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v29)
  {
    v32 = 0;
    if (result)
    {
      while (1)
      {
        v45 = *result - 48;
        if (v45 > 9)
        {
          goto LABEL_65;
        }

        v46 = 10 * v32;
        if ((v32 * 10) >> 64 != (10 * v32) >> 63)
        {
          goto LABEL_65;
        }

        v32 = v46 + v45;
        if (__OFADD__(v46, v45))
        {
          goto LABEL_65;
        }

        ++result;
        if (!--v29)
        {
          goto LABEL_57;
        }
      }
    }

    goto LABEL_57;
  }

LABEL_65:
  v32 = 0;
  LOBYTE(v28) = 1;
LABEL_66:
  v50 = v28;

  if (v50)
  {
LABEL_67:
    v32 = 0;
  }

LABEL_68:
  *(a9 + 16) = v32;
  v51 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a3);
  v53 = v52;

  if (v53)
  {
    v54 = v53;
  }

  else
  {
    v51 = 0x6E776F6E6B6E753CLL;
    v54 = 0xE90000000000003ELL;
  }

  result = (*(v57 + 8))(v58, a7);
  *a9 = v51;
  *(a9 + 8) = v54;
  return result;
}

void CatalogAsset.description.getter()
{
  sub_18E1C575C();
  v1 = v0;
  v3 = v2;
  sub_18E44E54C();
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1C4EDC();
  v5 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
  [v5 setCountStyle_];
  v6 = [v5 stringFromByteCount_];
  sub_18E44EAAC();
  sub_18E221954();

  sub_18E44EFFC();

  MEMORY[0x193ACC300](*v1, v1[1]);
  MEMORY[0x193ACC300](0x203A657A6973202CLL, 0xE800000000000000);
  v7 = sub_18E1DD5A0();
  MEMORY[0x193ACC300](v7);

  MEMORY[0x193ACC300](0x697461636F6C202CLL, 0xEC000000203A6E6FLL);
  (*(*(v3 + 40) + 8))(*(v3 + 24));
  sub_18E21D198();
  sub_18E43ADE8(v8, v9, MEMORY[0x1E6968FE0]);
  v10 = sub_18E44F39C();
  MEMORY[0x193ACC300](v10);

  v11 = sub_18E1D8004();
  v12(v11);

  sub_18E1C5544();
}

uint64_t AssetSubscriptionStatusPendingReason.hashValue.getter(uint64_t a1)
{
  v2 = *v1;
  sub_18E1CFCDC(a1);
  MEMORY[0x193ACCC20](v2);
  return sub_18E44F4CC();
}

void AssetSubscription.statusForAvailability()(_BYTE *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = [objc_opt_self() sharedManager];
  sub_18E1CFFC0();
  if (sub_18E44EB5C())
  {
    sub_18E2706EC(&qword_1EABE1080, &qword_18E49DCC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18E49D9B0;
    *(inited + 32) = v4;
    *(inited + 40) = v3;
    *(inited + 48) = MEMORY[0x1E69E7CC0];

    sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
    sub_18E1CFFC0();
    sub_18E44E9AC();
    v7 = sub_18E44E97C();

    v8 = [v5 downloadStatusForSubscribers_];

    UAFSubscriptionDownloadStatus.assetSubscriptionStatus()(v8, a1);
  }

  else
  {

    *a1 = 6;
  }
}

uint64_t AssetSubscription.status()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  *(v2 + 168) = *(v1 + 1);
  *(v2 + 184) = v1[3];
  return sub_18E1C62C4();
}

uint64_t sub_18E437724()
{
  sub_18E1E15DC();
  if (sub_18E44EB5C())
  {
    *(v0 + 192) = [objc_opt_self() sharedManager];
    sub_18E1D4B44();
    *(v0 + 200) = sub_18E44EA8C();
    *(v0 + 208) = sub_18E44EA8C();
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_18E4378C8;
    v1 = swift_continuation_init();
    v2 = sub_18E2706EC(&qword_1EABE12D0, &qword_18E49ECF0);
    v3 = sub_18E1C54E0(v2);
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_18E29A260;
    *(v0 + 104) = &unk_1F0189E50;
    *(v0 + 112) = v1;
    sub_18E1CD7E8(v3, sel_downloadStatusForSubscriber_subscriptionName_queue_completion_);

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    **(v0 + 152) = 6;
    sub_18E1D008C();

    return v4();
  }
}

uint64_t sub_18E4378C8()
{
  sub_18E1C52F0();
  v1 = *v0;
  sub_18E1C52E0();
  *v2 = v1;
  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18E437998()
{
  sub_18E1C6170();
  v1 = *(v0 + 200);
  v2 = *(v0 + 192);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);

  UAFSubscriptionDownloadStatus.assetSubscriptionStatus()(v3, v4);
  sub_18E1D008C();

  return v5();
}

void AssetSubscription.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 48);
  sub_18E44EB4C();
  sub_18E44EB4C();
  sub_18E44EB4C();
  if (v2 == 15)
  {
    sub_18E44F4AC();
    sub_18E2234F8();
  }

  else
  {
    sub_18E44F4AC();
    RequestResourcesKey.rawValue.getter();
    sub_18E1D0274();
    sub_18E44EB4C();
    sub_18E2234F8();
  }
}

uint64_t AssetSubscription.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 48);
  sub_18E1CFCDC(a1);
  sub_18E44EB4C();
  sub_18E44EB4C();
  sub_18E44EB4C();
  sub_18E44F4AC();
  if (v2 != 15)
  {
    RequestResourcesKey.rawValue.getter();
    sub_18E44EB4C();
  }

  return sub_18E44F4CC();
}

uint64_t sub_18E437BC4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *&v7[72] = *v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  sub_18E44F48C();
  AssetSubscription.hash(into:)(v7);
  return sub_18E44F4CC();
}

void AssetSubscription.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_18E44EFFC();
  MEMORY[0x193ACC300](0xD00000000000001ELL, 0x800000018E478140);
  v3 = sub_18E1CFFC0();
  MEMORY[0x193ACC300](v3);
  MEMORY[0x193ACC300](0x6553746573736120, 0xEE003A656D614E74);
  v4 = sub_18E1CD5EC();
  MEMORY[0x193ACC300](v4);
  sub_18E1C77B0();
  MEMORY[0x193ACC300](0xD000000000000012);
  MEMORY[0x193ACC300](v1, v2);
  MEMORY[0x193ACC300](62, 0xE100000000000000);
  sub_18E2234F8();
}

uint64_t AssetBackedResource.fetchLockedAsset(with:)()
{
  sub_18E1D4300();
  sub_18E3FDB10();
  sub_18E1D0098();
  v1 = swift_allocError();
  *v2 = 0xD000000000000036;
  v2[1] = v0;
  sub_18E1C69B4(v1, v2);
  return swift_willThrow();
}

{
  sub_18E1D4300();
  sub_18E3FDB10();
  sub_18E1D0098();
  v1 = swift_allocError();
  *v2 = 0xD000000000000036;
  v2[1] = v0;
  sub_18E1C69B4(v1, v2);
  return swift_willThrow();
}

uint64_t AssetBackedResource.fetchLockedAsset(with:options:)()
{
  sub_18E1D4300();
  sub_18E3FDB10();
  sub_18E1D0098();
  v1 = swift_allocError();
  *v2 = 0xD000000000000036;
  v2[1] = v0;
  sub_18E1C69B4(v1, v2);
  return swift_willThrow();
}

uint64_t AssetBackedResource.hostingAssetName.getter(uint64_t a1)
{
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v1);
  sub_18E1C4EDC();
  (*(v4 + 16))(v3 - v2);
  sub_18E2706EC(&qword_1EABE34E8, &qword_18E4B1000);
  if (swift_dynamicCast())
  {
    sub_18E1C551C(v10, v12);
    v5 = v13;
    v6 = v14;
    sub_18E1E15F4(v12, v13);
    (*(v6 + 24))(v9, v5, v6);
    v7 = v9[19];

    sub_18E1FE044(v9);
    sub_18E1C9934(v12);
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_18E1E8EEC(v10, &qword_1EABE91B0, &qword_18E4E2DB0);
    return 0;
  }

  return v7;
}

uint64_t sub_18E43801C()
{
  v1 = v0;
  v2 = *(v0 + 32);
  swift_bridgeObjectRetain_n();
  sub_18E1E682C();
  v3 = sub_18E2483E8();

  if ((v3 & 1) == 0)
  {
    v4 = sub_18E1CE96C();
    MEMORY[0x193ACC300](v4);
    MEMORY[0x193ACC300](*(v1 + 200), *(v1 + 208));
  }

  return v2;
}

Swift::String __swiftcall AssetBackedResource.uafAssetName()()
{
  v2 = *(*(v0 + 8) + 104);
  v2();
  sub_18E1D0274();
  sub_18E1C77B0();
  sub_18E1E682C();
  sub_18E2483E8();
  sub_18E235348();

  v3 = sub_18E1D8004();
  (v2)(v3);
  if ((v1 & 1) == 0)
  {
    v4 = sub_18E1CE96C();
    MEMORY[0x193ACC300](v4);
    v5 = sub_18E1D8004();
    v7 = v6(v5);
    MEMORY[0x193ACC300](v7);
  }

  sub_18E2234F8();
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

void AssetBackedResource.subscription.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "model-catalog");
  *(a1 + 14) = -4864;
  strcpy((a1 + 16), "all-or-nothing");
  *(a1 + 31) = -18;
  *(a1 + 32) = 0xD000000000000016;
  *(a1 + 40) = 0x800000018E462F20;
  *(a1 + 48) = 15;
}

void AssetBackedResource<>.determineAssetDetails(assetSet:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1C62A0();
  a19 = v21;
  a20 = v22;
  v144 = v23;
  v25 = v24;
  v27 = v26;
  v151 = v28;
  v29 = sub_18E44E46C();
  sub_18E1C4EAC();
  v142 = v30;
  MEMORY[0x1EEE9AC00](v31);
  sub_18E1C4EDC();
  v140 = v33 - v32;
  v143 = sub_18E44E54C();
  sub_18E1C4EAC();
  v141 = v34;
  MEMORY[0x1EEE9AC00](v35);
  sub_18E1C4EDC();
  v139 = v37 - v36;
  sub_18E1C5780();
  v145 = v38;
  MEMORY[0x1EEE9AC00](v39);
  sub_18E1C64E0();
  v147 = v40;
  MEMORY[0x1EEE9AC00](v41);
  sub_18E1D84B0();
  v136 = v42;
  v43 = sub_18E1D4B44();
  v44(v43);
  v45 = v159[19];
  v46 = v159[20];

  sub_18E1FE044(v159);
  v146 = v46 != 0;
  v149 = v20;
  if (v46)
  {
    if (qword_1ED6A94A8 != -1)
    {
      sub_18E1C8394();
      swift_once();
    }

    if (byte_1ED6A98A0 == 1)
    {
      v134 = v25;
      v132 = *(v25 + 8);
      v155 = (*(v132 + 104))(v27);
      v156 = v47;
      v48 = sub_18E1CE96C();
      MEMORY[0x193ACC300](v48);
      v49 = sub_18E1D4B44();
      v51 = v50(v49);
      MEMORY[0x193ACC300](v51);

      v135 = v155;
      v154 = v156;
      v52 = sub_18E44EA8C();
      v53 = [v151 assetNamed_];

      if (v53)
      {
        v137 = v29;
        v133 = v27;
        v54 = [v53 metadata];
        v55 = sub_18E44E98C();

        v56 = sub_18E44EAAC();
        v58 = sub_18E2491A4(v56, v57, v55);
        v60 = v59;

        v61 = sub_18E44EAAC();
        if (v60)
        {
          if (v58 == v61 && v60 == v62)
          {

            v27 = v133;
            v29 = v137;
            goto LABEL_40;
          }

          v64 = sub_18E44F3CC();

          v27 = v133;
          v29 = v137;
          if (v64)
          {

LABEL_40:
            if (qword_1ED6A8AB0 != -1)
            {
              sub_18E1C6D78();
              swift_once();
            }

            v122 = sub_18E44E83C();
            sub_18E1CE8B4(v122, qword_1ED6A9870);
            (*(v145 + 16))(v136, v149, v27);
            v123 = v27;
            v124 = sub_18E44E80C();
            v125 = sub_18E44EE2C();
            if (os_log_type_enabled(v124, v125))
            {
              sub_18E1E2FE8();
              v148 = swift_slowAlloc();
              sub_18E1CA69C();
              v153 = swift_slowAlloc();
              v155 = v153;
              *v148 = 136315138;
              v126 = (*(v132 + 24))(v123);
              v127 = v123;
              v129 = v128;
              v130 = v127;
              (*(v145 + 8))(v136, v127);
              v131 = sub_18E1C9624(v126, v129, &v155);

              *(v148 + 4) = v131;
              _os_log_impl(&dword_18E1C1000, v124, v125, "Using asset from asset root for resource %s", v148, 0xCu);
              sub_18E1C9934(v153);
              sub_18E1C6164();
              MEMORY[0x193ACD400]();
              sub_18E1C6164();
              MEMORY[0x193ACD400]();

              v27 = v130;
            }

            else
            {

              (*(v145 + 8))(v136, v123);
              v27 = v123;
            }

            v25 = v134;
            v82 = v53;
            v146 = 0;
            v73 = v135;
            goto LABEL_23;
          }
        }

        else
        {

          v27 = v133;
          v29 = v137;
        }
      }

      v155 = v45;
      v156 = v46;

      v79 = sub_18E1CF3BC();
      MEMORY[0x193ACC300](v79, 0xE800000000000000);

      v73 = v45;
      v154 = v46;
      v80 = sub_18E44EA8C();
      v74 = [v151 assetNamed_];

      v25 = v134;
    }

    else
    {
      v155 = v45;
      v156 = v46;

      v72 = sub_18E1CF3BC();
      MEMORY[0x193ACC300](v72, 0xE800000000000000);

      v73 = v45;
      v154 = v46;
      v53 = sub_18E44EA8C();
      v74 = [v151 assetNamed_];
    }

    v78 = v147;
  }

  else
  {
    v138 = v29;
    v65 = v25;
    v66 = *(*(v25 + 8) + 104);
    v67 = sub_18E1D4B44();
    v66(v67);
    sub_18E1D0274();
    sub_18E1C77B0();
    sub_18E1E682C();
    v68 = sub_18E2483E8();

    if (v68)
    {
      v69 = sub_18E1D4B44();
      countAndFlagsBits = (v66)(v69);
    }

    else
    {
      sub_18E1E2000();
      v75 = AssetBackedResource.uafAssetName()();
      object = v75._object;
      countAndFlagsBits = v75._countAndFlagsBits;
    }

    v76 = countAndFlagsBits;
    v77 = object;
    v25 = v65;
    v78 = v147;

    v73 = v76;
    v53 = sub_18E44EA8C();
    v154 = v77;

    v74 = [v151 assetNamed_];
    v29 = v138;
  }

  v81 = v74;
  if (v81)
  {
    v82 = v81;
LABEL_23:
    v83 = [v82 location];
    if (v83)
    {
      v84 = v83;

      sub_18E44E4CC();

      if (v146)
      {
        v155 = (*(*(v25 + 8) + 104))(v27);
        v156 = v85;
        (*(v142 + 104))(v140, *MEMORY[0x1E6968F70], v29);
        sub_18E24D39C();
        sub_18E44E52C();

        (*(v142 + 8))(v140, v29);

        (*(v141 + 8))(v144, v143);
        (*(v141 + 32))(v144, v139, v143);
      }

      else
      {
      }
    }

    else
    {
      if (qword_1ED6A8AB0 != -1)
      {
        sub_18E1C6D78();
        swift_once();
      }

      v98 = sub_18E44E83C();
      sub_18E1CE8B4(v98, qword_1ED6A9870);
      v99 = v154;

      v100 = v82;
      v101 = sub_18E44E80C();
      v102 = sub_18E44EE0C();

      v103 = v73;
      if (os_log_type_enabled(v101, v102))
      {
        sub_18E1C9700();
        v152 = v102;
        v104 = swift_slowAlloc();
        sub_18E1CA638();
        v155 = swift_slowAlloc();
        *v104 = 136315394;
        *(v104 + 4) = sub_18E1C9624(v73, v154, &v155);
        *(v104 + 12) = 2080;
        v105 = [v100 metadata];
        sub_18E44E98C();

        v99 = v154;
        sub_18E44E99C();
        sub_18E221954();

        v106 = sub_18E1DD5A0();
        v109 = sub_18E1C9624(v106, v107, v108);

        *(v104 + 14) = v109;
        v103 = v73;
        _os_log_impl(&dword_18E1C1000, v101, v152, "Asset %s does not have a location. Metadata: %s", v104, 0x16u);
        sub_18E212078();
        swift_arrayDestroy();
        v110 = sub_18E1D6214();
        MEMORY[0x193ACD400](v110);
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
      }

      v155 = 0;
      v156 = 0xE000000000000000;
      sub_18E44EFFC();

      v155 = v103;
      v156 = v99;
      v111 = sub_18E1CF71C();
      MEMORY[0x193ACC300](v111);
      v112 = v155;
      v113 = v156;
      sub_18E3FDB10();
      sub_18E1D0098();
      v114 = swift_allocError();
      *v115 = v112;
      v115[1] = v113;
      sub_18E1C69B4(v114, v115);
      swift_willThrow();
    }

    goto LABEL_38;
  }

  if (qword_1ED6A8AB0 != -1)
  {
    sub_18E1C6D78();
    swift_once();
  }

  v86 = sub_18E44E83C();
  sub_18E1CE8B4(v86, qword_1ED6A9870);
  v87 = sub_18E1E2E14();
  v88(v87);

  v89 = sub_18E44E80C();
  v90 = sub_18E44EE2C();

  if (os_log_type_enabled(v89, v90))
  {
    sub_18E1C9700();
    v150 = v90;
    v91 = v78;
    v92 = v25;
    v93 = swift_slowAlloc();
    sub_18E1CA638();
    a10 = swift_slowAlloc();
    *v93 = 136315394;
    *(v93 + 4) = sub_18E1C9624(v73, v154, &a10);
    *(v93 + 12) = 2080;
    (*(v92 + 64))(&v155, v27, v92);
    (*(v145 + 8))(v91, v27);
    v94 = v157;
    v95 = v158;

    v96 = sub_18E1C9624(v94, v95, &a10);

    *(v93 + 14) = v96;
    _os_log_impl(&dword_18E1C1000, v89, v150, "Failed to find asset named %s in asset set %s", v93, 0x16u);
    swift_arrayDestroy();
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
    v97 = sub_18E1CFC40();
    MEMORY[0x193ACD400](v97);
  }

  else
  {

    (*(v145 + 8))(v78, v27);
  }

  v155 = v73;
  v156 = v154;
  v116 = sub_18E1C8D78();
  MEMORY[0x193ACC300](v116, v117 & 0xFFFF0000FFFFLL | 0xEB00000000740000);
  v118 = v155;
  v119 = v156;
  sub_18E3FDB10();
  sub_18E1D0098();
  v120 = swift_allocError();
  *v121 = v118;
  v121[1] = v119;
  sub_18E1C69B4(v120, v121);
  swift_willThrow();
LABEL_38:
  sub_18E1C6650();
}

void sub_18E438E90()
{
  sub_18E1C62A0();
  v69 = v1;
  v71 = v2;
  v4 = v3;
  v76 = v0;
  v6 = v5;
  v8 = v7;
  v74 = v9;
  v73 = sub_18E44E54C();
  sub_18E1C4EAC();
  v72 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1C4EDC();
  sub_18E1E68C4(v13 - v12);
  v66 = *(v6 + 32);
  v67 = *(v6 + 40);
  v14 = *(v6 + 120);
  v15 = *(v6 + 128);
  v70 = *(v6 + 96);
  v68 = v15;
  if (v70)
  {

    v80 = v14;
  }

  else
  {
    v80 = 0xD000000000000016;
    v15 = 0x800000018E462F20;
  }

  v17 = v4(v16);
  v18 = 0;
  v83 = *(v8 + 16);
  v82 = v8 + 32;
  v84 = v17 + 64;
  v79 = v6;
  v19 = v80;
  v78 = v15;
  v87 = v17;
  do
  {
LABEL_5:
    if (v18 == v83)
    {
      if (qword_1ED6A8AB0 != -1)
      {
        sub_18E1C6D78();
        swift_once();
      }

      v44 = sub_18E44E83C();
      sub_18E1CE8B4(v44, qword_1ED6A9870);

      v71(v6, &v85);
      v22 = sub_18E44E80C();
      LOBYTE(v29) = sub_18E44EE2C();

      if (os_log_type_enabled(v22, v29))
      {
        sub_18E1CA69C();
        v6 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *v6 = 136315650;
        v45 = sub_18E1C9624(v19, v15, &v85);

        *(v6 + 4) = v45;
        *(v6 + 12) = 2080;
        v46 = sub_18E44E99C();
        v48 = v47;

        v49 = sub_18E1C9624(v46, v48, &v85);

        *(v6 + 14) = v49;
        *(v6 + 22) = 2080;
        v30 = v79;
        v50 = *(v79 + 200) == 0x636972656E6567 && *(v79 + 208) == 0xE700000000000000;
        if (v50 || (sub_18E1D0380(), (sub_18E44F3CC() & 1) != 0))
        {
          v51 = v67;

          v52 = v66;
        }

        else
        {
LABEL_47:
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v52 = v53;
          v51 = v54;
        }

        v69(v30);
        v55 = sub_18E1C9624(v52, v51, &v85);

        *(v6 + 24) = v55;
        _os_log_impl(&dword_18E1C1000, v22, v29, "Failed to find asset set: %s with usages: %s for %s", v6, 0x20u);
        swift_arrayDestroy();
        v56 = sub_18E1CFC40();
        MEMORY[0x193ACD400](v56);
        v57 = sub_18E1D6214();
        MEMORY[0x193ACD400](v57);
      }

      else
      {

        v69(v6);
      }

      v85 = 0;
      v86 = 0xE000000000000000;
      v58 = &v85;
      sub_18E44EFFC();
      if (v70)
      {

        v58 = v68;

        v59 = v14;
      }

      else
      {
        v59 = 0xD000000000000016;
        sub_18E1D4300();
      }

      sub_18E1D62B8();
      v85 = v59;
      v86 = v58;
      v60 = sub_18E1C8D78();
      MEMORY[0x193ACC300](v60, v61 | 0xEF74657320740000);
      v62 = v85;
      v63 = v86;
      sub_18E3FDB10();
      sub_18E1D0098();
      v64 = swift_allocError();
      *v65 = v62;
      v65[1] = v63;
      sub_18E1E3830(v64, v65);
      swift_willThrow();
      goto LABEL_35;
    }

    v20 = (v82 + 32 * v18);
    v22 = v20[2];
    v21 = v20[3];
    ++v18;
    if (*v20 == v19 && v20[1] == v15)
    {
      break;
    }

    v24 = v18;
    v25 = sub_18E44F3CC();
    v18 = v24;
  }

  while ((v25 & 1) == 0);
  v75 = v18;
  v26 = 1 << *(v17 + 32);
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & *(v17 + 64);
  v29 = (v26 + 63) >> 6;

  v81 = v21;

  v30 = 0;
  while (v28)
  {
LABEL_20:
    if (!v22[2].isa)
    {
      goto LABEL_29;
    }

    v32 = (*(v17 + 56) + 16 * (__clz(__rbit64(v28)) | (v30 << 6)));
    v33 = *v32;
    v6 = v32[1];

    sub_18E1D8004();
    v34 = sub_18E1CBD4C();
    v36 = v35;

    if ((v36 & 1) == 0)
    {

      v17 = v87;

      goto LABEL_31;
    }

    v28 &= v28 - 1;
    v37 = (v22[7].isa + 16 * v34);
    if (*v37 == v33 && v37[1] == v6)
    {

      v17 = v87;
    }

    else
    {
      v39 = sub_18E44F3CC();

      v17 = v87;
      if ((v39 & 1) == 0)
      {
LABEL_29:

LABEL_31:
        v6 = v79;
        v15 = v78;
        v19 = v80;
        v18 = v75;
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_47;
    }

    if (v31 >= v29)
    {
      break;
    }

    v28 = *(v84 + 8 * v31);
    ++v30;
    if (v28)
    {
      v30 = v31;
      goto LABEL_20;
    }
  }

  sub_18E24852C();
  if (v76)
  {
  }

  else
  {
    v41 = v40;
    v88 = *(sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00) + 48);
    (*(v72 + 16))(v74, v77, v73);
    v42 = [v41 metadata];
    v43 = sub_18E44E98C();

    (*(v72 + 8))(v77, v73);
    *(v74 + v88) = v43;
  }

LABEL_35:
  sub_18E1C6650();
}

void sub_18E439730(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v85 = a5;
  v83 = a6;
  v79 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v78 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_18E44E54C();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v87 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a4 + 64);
  v77 = a4 + 64;
  v76 = v12;
  v12(v99, a3, a4);
  v13 = v100;
  v14 = v101;

  v88 = a3;
  v89 = a2;
  v15 = AssetBackedResource.usages.getter(a3, a4);
  v16 = 0;
  v17 = *(a1 + 16);
  v94 = a1 + 32;
  v95 = v17;
  v96 = v15 + 64;
  v18 = 1;
  v90 = v14;
  v91 = a4;
  v102 = v15;
  v80 = v13;
  do
  {
LABEL_2:
    if (v16 == v95)
    {
      v20 = v88;
      v18 = v78;
      if (qword_1ED6A8AB0 != -1)
      {
LABEL_38:
        swift_once();
      }

      v50 = sub_18E44E83C();
      sub_18E1C95EC(v50, qword_1ED6A9870);
      v51 = v79;
      (*(v79 + 16))(v18, v89, v20);

      v52 = sub_18E44E80C();
      v53 = sub_18E44EE2C();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        LODWORD(v95) = v53;
        v55 = v13;
        v56 = v54;
        v96 = swift_slowAlloc();
        v99[0] = v96;
        *v56 = 136315650;
        v57 = sub_18E1C9624(v55, v14, v99);
        v58 = v51;
        v59 = v57;

        *(v56 + 4) = v59;
        *(v56 + 12) = 2080;
        v60 = sub_18E44E99C();
        v62 = v61;

        v63 = sub_18E1C9624(v60, v62, v99);

        *(v56 + 14) = v63;
        *(v56 + 22) = 2080;
        v64 = (*(*(a4 + 8) + 24))(v20);
        v66 = v65;
        (*(v58 + 8))(v18, v20);
        v67 = sub_18E1C9624(v64, v66, v99);

        *(v56 + 24) = v67;
        _os_log_impl(&dword_18E1C1000, v52, v95, "Failed to find asset set: %s with usages: %s for %s", v56, 0x20u);
        v68 = v96;
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v68, -1, -1);
        MEMORY[0x193ACD400](v56, -1, -1);
      }

      else
      {

        (*(v51 + 8))(v18, v20);
      }

      v69 = v76;
      v99[0] = 0;
      v99[1] = 0xE000000000000000;
      sub_18E44EFFC();
      v69(v99, v20, a4);
      v70 = v100;
      v71 = v101;

      v97 = v70;
      v98 = v71;
      MEMORY[0x193ACC300](0x7361206F6E202D20, 0xEF74657320746573);
      v72 = v97;
      v73 = v98;
      sub_18E3FDB10();
      swift_allocError();
      *v74 = v72;
      *(v74 + 8) = v73;
      *(v74 + 16) = 0;
      swift_willThrow();
      return;
    }

    v19 = (v94 + 32 * v16);
    v20 = v19[1];
    v22 = v19[2];
    v21 = v19[3];
    ++v16;
    if (*v19 == v13 && v20 == v14)
    {
      break;
    }

    v24 = v16;
    v25 = sub_18E44F3CC();
    v16 = v24;
  }

  while ((v25 & 1) == 0);
  v84 = v16;
  v26 = 1 << *(v15 + 32);
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v14 = v27 & *(v15 + 64);
  v13 = (v26 + 63) >> 6;
  v93 = v20;

  v92 = v21;

  v28 = 0;
  while (v14)
  {
LABEL_17:
    if (!*(v22 + 16))
    {
      goto LABEL_26;
    }

    v30 = __clz(__rbit64(v14)) | (v28 << 6);
    v31 = (*(v15 + 56) + 16 * v30);
    v18 = *v31;
    v32 = v31[1];
    a4 = *(*(v15 + 48) + 16 * v30 + 8);

    v33 = sub_18E1CBD4C();
    v20 = v34;

    if ((v20 & 1) == 0)
    {

      v15 = v102;

      goto LABEL_28;
    }

    v14 &= v14 - 1;
    v35 = (*(v22 + 56) + 16 * v33);
    if (*v35 == v18 && v35[1] == v32)
    {

      v15 = v102;
    }

    else
    {
      v18 = sub_18E44F3CC();

      v15 = v102;
      if ((v18 & 1) == 0)
      {
LABEL_26:

LABEL_28:
        v14 = v90;
        a4 = v91;
        v13 = v80;
        v16 = v84;
        v18 = 1;
        goto LABEL_2;
      }
    }
  }

  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v29 >= v13)
    {
      break;
    }

    v14 = *(v96 + 8 * v29);
    ++v28;
    if (v14)
    {
      v28 = v29;
      goto LABEL_17;
    }
  }

  v37 = v92;

  v38 = v87;
  v39 = v86;
  AssetBackedResource<>.determineAssetDetails(assetSet:)(v87, v37, v88, v91, v85, v40, v41, v42, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86);
  v44 = v43;

  if (v39)
  {
  }

  else
  {
    v102 = *(sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00) + 48);
    v45 = v81;
    v46 = v83;
    v47 = v82;
    (*(v81 + 16))(v83, v38, v82);
    v48 = [v44 metadata];
    v49 = sub_18E44E98C();

    (*(v45 + 8))(v38, v47);
    *(v46 + v102) = v49;
  }
}

uint64_t sub_18E439F60(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_18E43A058;

  return v6(a1);
}

uint64_t sub_18E43A058()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v1 = *v0;
  sub_18E1C52E0();
  *v2 = v1;

  sub_18E1D008C();

  return v3();
}

unint64_t sub_18E43A180()
{
  result = qword_1EABE9168;
  if (!qword_1EABE9168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE9168);
  }

  return result;
}

unint64_t sub_18E43A1D4()
{
  result = qword_1EABE9170;
  if (!qword_1EABE9170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE9170);
  }

  return result;
}

unint64_t sub_18E43A228()
{
  result = qword_1EABE9178;
  if (!qword_1EABE9178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE9178);
  }

  return result;
}

uint64_t sub_18E43A27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_18E286CC8(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

unsigned __int8 *sub_18E43A304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_18E44EC2C();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_18E43A88C(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_18E44F07C();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_18E43A88C(uint64_t a1, unint64_t a2)
{
  v2 = sub_18E43A8F8(sub_18E43A8F4, 0, a1, a2);
  v6 = sub_18E43A92C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_18E43A92C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_18E44EF0C();
    if (!v9 || (v10 = v9, v11 = sub_18E249874(v9, 0), v12 = sub_18E43AA8C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_18E44EB3C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_18E44EB3C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_18E44F07C();
LABEL_4:

  return sub_18E44EB3C();
}

unint64_t sub_18E43AA8C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_18E43AC9C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_18E44EBDC();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_18E44F07C();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_18E43AC9C(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_18E44EBBC();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_18E43AC9C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_18E44EBEC();
    sub_18E2287F8(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x193ACC350](15, a1 >> 16);
    sub_18E2287F8(v3);
    return v4 | 8;
  }
}

id sub_18E43ACF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_18E44E97C();
  v8 = [a4 retrieveAssetSet:a1 usages:v7 consistencyToken:a3];

  return v8;
}

uint64_t sub_18E43AD78(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E2706EC(&qword_1EABE9198, &qword_18E4E2D58);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E43ADE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_18E43AE4C()
{
  result = qword_1EABE91B8;
  if (!qword_1EABE91B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE91B8);
  }

  return result;
}

unint64_t sub_18E43AEA4()
{
  result = qword_1EABE0530;
  if (!qword_1EABE0530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0530);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AssetLock(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithCopy for AssetLock(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithTake for AssetLock(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t dispatch thunk of CoherentAssetLock.withLock(closure:)()
{
  sub_18E1C6A30();
  return (*(v0 + 184))();
}

{
  sub_18E1CAF5C();
  sub_18E1C6A30();
  v6 = (*(v0 + 192) + **(v0 + 192));
  v1 = swift_task_alloc();
  v2 = sub_18E1C5EA8(v1);
  *v2 = v3;
  sub_18E1C5950(v2);
  v4 = sub_18E1D8004();

  return v6(v4);
}

uint64_t dispatch thunk of CoherentAssetLock.updateAvailable()()
{
  sub_18E1C6170();
  sub_18E1C6A30();
  v5 = (*(v0 + 216) + **(v0 + 216));
  v1 = swift_task_alloc();
  v2 = sub_18E1C5EA8(v1);
  *v2 = v3;
  sub_18E1C5950(v2);

  return v5();
}

uint64_t sub_18E43B290()
{
  sub_18E1C52F0();
  v2 = v1;
  sub_18E1C64F4();
  v3 = *v0;
  sub_18E1C52E0();
  *v4 = v3;

  sub_18E1C6500();

  return v5(v2);
}

uint64_t dispatch thunk of CoherentAssetLock.markAssetsExpired()()
{
  sub_18E1C6170();
  sub_18E1C6A30();
  v5 = (*(v0 + 248) + **(v0 + 248));
  v1 = swift_task_alloc();
  v2 = sub_18E1C5EA8(v1);
  *v2 = v3;
  sub_18E1C5950(v2);

  return v5();
}

uint64_t dispatch thunk of CoherentAssetLock.CoherenceTokenProvider.acquireCoherenceToken(identifiers:)()
{
  sub_18E1CAF5C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_18E2218CC(v0);
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v8 = sub_18E1C5EA8(v7);
  *v8 = v9;
  sub_18E1C5950(v8);

  return v11(v5, v3, v1);
}

uint64_t sub_18E43B674(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return sub_18E1CAF28((((((result + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 24) & ~v7, v6, v4);
    }

    else
    {
      v17 = *(result + 8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((((((*(*(v4 - 8) + 64) + ((v7 + 48) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_18E43B7DC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v18 = (((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 24) & ~v10;

            sub_18E201DC8(v18, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

_BYTE *storeEnumTagSinglePayload for AssetSubscriptionStatusPendingReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for AssetSubscriptionStatus(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 4)
    {
      v7 = v6 - 3;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 6)
    {
      return (v7 - 5);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 8;
    if (a2 + 8 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 8);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetSubscriptionStatus(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 8;
  if (a3 + 8 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xF8)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF7)
  {
    v7 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18E43BC3C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_18E43BC50(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

__n128 sub_18E43BC70(uint64_t a1, uint64_t a2)
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

uint64_t sub_18E43BC8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E43BCCC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for FetchAssetOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FetchAssetOptions(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18E43BEF0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 8))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_18E43BF44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

_BYTE *_s11AssetErrorsO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_18E43C0C4(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_18E43C174()
{
  result = qword_1EABE91C0;
  if (!qword_1EABE91C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE91C0);
  }

  return result;
}

unint64_t sub_18E43C1CC()
{
  result = qword_1EABE91C8;
  if (!qword_1EABE91C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE91C8);
  }

  return result;
}

unint64_t sub_18E43C224()
{
  result = qword_1EABE91D0;
  if (!qword_1EABE91D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE91D0);
  }

  return result;
}

unint64_t sub_18E43C27C()
{
  result = qword_1EABE91D8;
  if (!qword_1EABE91D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE91D8);
  }

  return result;
}

unint64_t sub_18E43C2D4()
{
  result = qword_1EABE91E0;
  if (!qword_1EABE91E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE91E0);
  }

  return result;
}

unint64_t sub_18E43C32C()
{
  result = qword_1EABE91E8;
  if (!qword_1EABE91E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE91E8);
  }

  return result;
}

unint64_t sub_18E43C384()
{
  result = qword_1EABE91F0;
  if (!qword_1EABE91F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE91F0);
  }

  return result;
}

unint64_t sub_18E43C3DC()
{
  result = qword_1EABE91F8;
  if (!qword_1EABE91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE91F8);
  }

  return result;
}

unint64_t sub_18E43C434()
{
  result = qword_1EABE9200;
  if (!qword_1EABE9200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE9200);
  }

  return result;
}

unint64_t sub_18E43C48C()
{
  result = qword_1EABE9208;
  if (!qword_1EABE9208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE9208);
  }

  return result;
}

uint64_t sub_18E43C4E0()
{
  sub_18E1CAF5C();
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v5 = sub_18E1C2960(v4);
  *v5 = v6;
  v5[1] = sub_18E25E61C;
  v7 = sub_18E220534();

  return sub_18E425224(v7, v8, v1, v3, v2);
}

uint64_t sub_18E43C58C()
{
  sub_18E1C6170();
  v0 = swift_task_alloc();
  v1 = sub_18E1C2960(v0);
  *v1 = v2;
  v1[1] = sub_18E25E61C;
  v3 = sub_18E220534();

  return v4(v3);
}

uint64_t sub_18E43C688()
{
  sub_18E1CAF5C();
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v5 = sub_18E1C2960(v4);
  *v5 = v6;
  v5[1] = sub_18E25E674;
  v7 = sub_18E220534();

  return sub_18E424C1C(v7, v8, v1, v3, v2);
}

uint64_t sub_18E43C774()
{
  sub_18E2706EC(&qword_1EABE9210, &qword_18E4E38C0);
  sub_18E1C4EEC();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_18E43C800(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = sub_18E2706EC(&qword_1EABE9210, &qword_18E4E38C0);
  sub_18E1C5B08(v4);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a2(a1, v6);
}

unint64_t sub_18E43C93C()
{
  result = qword_1EABE0A18;
  if (!qword_1EABE0A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0A18);
  }

  return result;
}

unint64_t sub_18E43DDDC()
{
  result = qword_1EABDF840;
  if (!qword_1EABDF840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF840);
  }

  return result;
}

unint64_t sub_18E43DE4C()
{
  result = qword_1EABE0B18;
  if (!qword_1EABE0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0B18);
  }

  return result;
}

unint64_t sub_18E43DEBC()
{
  result = qword_1EABE0B38;
  if (!qword_1EABE0B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0B38);
  }

  return result;
}

unint64_t sub_18E43DF88()
{
  result = qword_1EABE9240;
  if (!qword_1EABE9240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE9240);
  }

  return result;
}

unint64_t sub_18E43E054()
{
  result = qword_1EABE9250;
  if (!qword_1EABE9250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE9250);
  }

  return result;
}

unint64_t sub_18E43E120()
{
  result = qword_1EABE9260;
  if (!qword_1EABE9260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE9260);
  }

  return result;
}

unint64_t sub_18E43E1EC()
{
  result = qword_1EABE9270;
  if (!qword_1EABE9270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE9270);
  }

  return result;
}

unint64_t sub_18E43E2B8()
{
  result = qword_1ED6A7B08;
  if (!qword_1ED6A7B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7B08);
  }

  return result;
}

unint64_t sub_18E43E384()
{
  result = qword_1EABE0B20;
  if (!qword_1EABE0B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0B20);
  }

  return result;
}

unint64_t sub_18E43E450()
{
  result = qword_1ED6A7B38;
  if (!qword_1ED6A7B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7B38);
  }

  return result;
}

unint64_t sub_18E43E51C()
{
  result = qword_1EABE0AE0;
  if (!qword_1EABE0AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0AE0);
  }

  return result;
}

unint64_t sub_18E43E5E8()
{
  result = qword_1EABE92A0;
  if (!qword_1EABE92A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE92A0);
  }

  return result;
}

unint64_t sub_18E43E6B4()
{
  result = qword_1ED6A7D90;
  if (!qword_1ED6A7D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7D90);
  }

  return result;
}

unint64_t sub_18E43E780()
{
  result = qword_1EABE0710;
  if (!qword_1EABE0710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0710);
  }

  return result;
}

unint64_t sub_18E43E84C()
{
  result = qword_1EABDF7F0;
  if (!qword_1EABDF7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF7F0);
  }

  return result;
}

unint64_t sub_18E43E918()
{
  result = qword_1EABDF938;
  if (!qword_1EABDF938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF938);
  }

  return result;
}

unint64_t sub_18E43E9E4()
{
  result = qword_1EABDF900;
  if (!qword_1EABDF900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF900);
  }

  return result;
}

unint64_t sub_18E43EAB0()
{
  result = qword_1EABDF940;
  if (!qword_1EABDF940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF940);
  }

  return result;
}

unint64_t sub_18E43EB7C()
{
  result = qword_1EABE0198;
  if (!qword_1EABE0198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0198);
  }

  return result;
}

unint64_t sub_18E43EC48()
{
  result = qword_1EABDF838;
  if (!qword_1EABDF838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF838);
  }

  return result;
}

unint64_t sub_18E43ED14()
{
  result = qword_1EABDF848;
  if (!qword_1EABDF848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF848);
  }

  return result;
}

unint64_t sub_18E43EDFC()
{
  result = qword_1EABE0B28;
  if (!qword_1EABE0B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0B28);
  }

  return result;
}

unint64_t sub_18E43EEC8()
{
  result = qword_1EABE0AD8;
  if (!qword_1EABE0AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0AD8);
  }

  return result;
}

unint64_t sub_18E43EF94()
{
  result = qword_1EABE09F0;
  if (!qword_1EABE09F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE09F0);
  }

  return result;
}

unint64_t sub_18E43F060()
{
  result = qword_1EABE9318;
  if (!qword_1EABE9318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE9318);
  }

  return result;
}

uint64_t sub_18E43F0B4()
{

  if (*(v0 + 112))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 232, 7);
}

uint64_t sub_18E43F1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_18E44EEFC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - v10;
  v12 = SecTaskCreateFromSelf(0);
  if (v12)
  {
    v13 = v12;
    v14 = sub_18E44EA8C();
    v15 = SecTaskCopyValueForEntitlement(v13, v14, 0);

    if (v15)
    {
      v48 = v15;
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {

        swift_unknownObjectRelease();
        sub_18E1C5068();
        sub_18E201DC8(v16, v17, v18, v19);
        (*(*(a3 - 8) + 32))(a4, v11, a3);
      }

      else
      {
        sub_18E1C5068();
        sub_18E201DC8(v35, v36, v37, v38);
        (*(v9 + 8))(v11, v8);
        if (qword_1ED6A94A8 != -1)
        {
          sub_18E1C842C(&qword_1ED6A94A8);
        }

        sub_18E1C8054();
        if (v20)
        {
          if (qword_1ED6A8AB0 != -1)
          {
            sub_18E1C5568(&qword_1ED6A8AB0);
          }

          v39 = sub_18E44E83C();
          sub_18E1C95EC(v39, qword_1ED6A9870);
          v40 = sub_18E44E80C();
          v41 = sub_18E44EE0C();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            _os_log_impl(&dword_18E1C1000, v40, v41, "Process.valueForEntitlement could not cast value to expected output type", v42, 2u);
            sub_18E1C5008();
          }
        }

        swift_unknownObjectRelease();
      }

      sub_18E1C5068();
      return sub_18E201DC8(v43, v44, v45, v46);
    }

    if (qword_1ED6A94A8 != -1)
    {
      sub_18E1C842C(&qword_1ED6A94A8);
    }

    sub_18E1C8054();
    if (v20)
    {
      if (qword_1ED6A8AB0 != -1)
      {
        sub_18E1C5568(&qword_1ED6A8AB0);
      }

      v25 = sub_18E44E83C();
      sub_18E1C95EC(v25, qword_1ED6A9870);

      v26 = sub_18E44E80C();
      v27 = sub_18E44EE0C();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v48 = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_18E1C9624(a1, a2, &v48);
        _os_log_impl(&dword_18E1C1000, v26, v27, "Process.valueForEntitlement did not find value for entitlement: %s", v28, 0xCu);
        sub_18E1C9934(v29);
        sub_18E1C5008();
        sub_18E1C5008();
      }
    }
  }

  else
  {
    if (qword_1ED6A94A8 != -1)
    {
      sub_18E1C842C(&qword_1ED6A94A8);
    }

    sub_18E1C8054();
    if (v20)
    {
      if (qword_1ED6A8AB0 != -1)
      {
        sub_18E1C5568(&qword_1ED6A8AB0);
      }

      v21 = sub_18E44E83C();
      sub_18E1C95EC(v21, qword_1ED6A9870);
      v22 = sub_18E44E80C();
      v23 = sub_18E44EE0C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_18E1C1000, v22, v23, "Process.valueForEntitlement could not create security task", v24, 2u);
        sub_18E1C5008();
      }
    }
  }

  sub_18E1C5068();

  return sub_18E201DC8(v30, v31, v32, v33);
}

uint64_t CATALOG_SERVICE_ALL_ACCEPTED_ENTITLEMENT_NAMES.getter()
{
  if (qword_1EABE0AE8 != -1)
  {
    swift_once();
  }
}

uint64_t *sub_18E43F738()
{
  if (qword_1ED6A9428 != -1)
  {
    sub_18E1C844C(&qword_1ED6A9428);
  }

  return &qword_1ED6A8DB8;
}

void static CatalogService.interface.setter(uint64_t a1)
{
  if (qword_1ED6A9428 != -1)
  {
    sub_18E1C844C(&qword_1ED6A9428);
  }

  sub_18E1D61E0(&qword_1ED6A8DB8, v3);
  v2 = qword_1ED6A8DB8;
  qword_1ED6A8DB8 = a1;
}

uint64_t static CatalogService.interface.modify()
{
  if (qword_1ED6A9428 != -1)
  {
    sub_18E1C844C(&qword_1ED6A9428);
  }

  sub_18E1C29FC();
  return sub_18E1C864C();
}

id sub_18E43F844@<X0>(void *a1@<X8>)
{
  sub_18E43F738();
  swift_beginAccess();
  v2 = qword_1ED6A8DB8;
  *a1 = qword_1ED6A8DB8;

  return v2;
}

void sub_18E43F8A4(id *a1)
{
  v1 = *a1;
  sub_18E43F738();
  swift_beginAccess();
  v2 = qword_1ED6A8DB8;
  qword_1ED6A8DB8 = v1;
}

uint64_t sub_18E43F968(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_18E1D61E0(a3, v9);
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_18E43FA04@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
}

uint64_t sub_18E43FA60(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = *a1;
  v8 = a1[1];
  sub_18E1D61E0(a5, v11);
  *a5 = v9;
  *a6 = v8;
}

uint64_t sub_18E43FAC8()
{
  result = sub_18E207C7C(&unk_1F0127F70);
  qword_1EABE05A0 = result;
  return result;
}

uint64_t *sub_18E43FAF0()
{
  if (qword_1EABE0598 != -1)
  {
    sub_18E1C5220(&qword_1EABE0598);
  }

  return &qword_1EABE05A0;
}

uint64_t static CatalogService.otherAcceptedEntitlementNames.modify()
{
  if (qword_1EABE0598 != -1)
  {
    sub_18E1C5220(&qword_1EABE0598);
  }

  sub_18E1C29FC();
  return sub_18E1C864C();
}

uint64_t sub_18E43FBB8@<X0>(void *a1@<X8>)
{
  sub_18E43FAF0();
  swift_beginAccess();
  *a1 = qword_1EABE05A0;
}

_UNKNOWN **sub_18E43FC0C()
{
  if (qword_1ED6A9040 != -1)
  {
    sub_18E1C791C(&qword_1ED6A9040);
  }

  return &off_1ED6A8DD0;
}

uint64_t static CatalogService.requestSelectorClasses.modify()
{
  if (qword_1ED6A9040 != -1)
  {
    sub_18E1C791C(&qword_1ED6A9040);
  }

  sub_18E1C29FC();
  return sub_18E1C864C();
}

_UNKNOWN **sub_18E43FCD4()
{
  if (qword_1ED6A8DC8 != -1)
  {
    sub_18E1C8C1C(&qword_1ED6A8DC8);
  }

  return &off_1ED6A8DC0;
}

uint64_t sub_18E43FD38(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  sub_18E1D61E0(a3, v7);
  *a3 = a1;
}

uint64_t static CatalogService.responseSelectorClasses.modify()
{
  if (qword_1ED6A8DC8 != -1)
  {
    sub_18E1C8C1C(&qword_1ED6A8DC8);
  }

  sub_18E1C29FC();
  return sub_18E1C864C();
}

uint64_t sub_18E43FDFC@<X0>(uint64_t (*a1)(void)@<X3>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = a1();
  sub_18E1C5A2C(v5);
  *a3 = *a2;
}

uint64_t sub_18E43FE40(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), void *a6)
{
  v8 = *a1;

  a5(v9);
  sub_18E1D61E0(a6, v11);
  *a6 = v8;
}

uint64_t sub_18E43FEA0()
{
  if (qword_1ED6A9020 != -1)
  {
    sub_18E1C6D8C(&qword_1ED6A9020);
  }

  v0 = sub_18E44E83C();

  return sub_18E1C95EC(v0, qword_1ED6A9028);
}

uint64_t static CatalogService.logger.setter(uint64_t a1)
{
  if (qword_1ED6A9020 != -1)
  {
    sub_18E1C6D8C(&qword_1ED6A9020);
  }

  v2 = sub_18E44E83C();
  v3 = sub_18E1C95EC(v2, qword_1ED6A9028);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t static CatalogService.logger.modify(uint64_t a1)
{
  if (qword_1ED6A9020 != -1)
  {
    sub_18E1C6D8C(&qword_1ED6A9020);
  }

  v1 = sub_18E44E83C();
  sub_18E1C95EC(v1, qword_1ED6A9028);
  swift_beginAccess();
  return sub_18E1C864C();
}

uint64_t sub_18E440058@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18E43FEA0();
  swift_beginAccess();
  v3 = sub_18E44E83C();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_18E4400D4(uint64_t a1)
{
  v2 = sub_18E43FEA0();
  swift_beginAccess();
  v3 = sub_18E44E83C();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

_BYTE *storeEnumTagSinglePayload for CatalogService(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void ResourceBundleIdentifier<>.serverConfiguration()(uint64_t a1@<X8>)
{
  v3 = sub_18E44E2BC();
  sub_18E1C4EAC();
  v49 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18E2706EC(&qword_1EABE0DB0, &unk_18E4E24B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v41 - v9;
  v11 = sub_18E44E38C();
  sub_18E1C4EAC();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v17 = v1[1];
  sub_18E44E35C();
  if (sub_18E1CAF28(v10, 1, v11) == 1)
  {
    sub_18E275468(v10, &qword_1EABE0DB0, &unk_18E4E24B0);
    if (qword_1ED6A8AB0 != -1)
    {
      sub_18E1C5568(&qword_1ED6A8AB0);
    }

    v19 = sub_18E44E83C();
    sub_18E1C95EC(v19, qword_1ED6A9870);

    v20 = sub_18E44E80C();
    v21 = sub_18E44EE0C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v50 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_18E1C9624(v18, v17, &v50);
      _os_log_impl(&dword_18E1C1000, v20, v21, "serverConfiguration(): not a valid url: %s", v22, 0xCu);
      sub_18E1C9934(v23);
      sub_18E1C5008();
      sub_18E1C5008();
    }

    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v47 = v11;
  v48 = 0x636972656E6567;
  v46 = v13;
  (*(v13 + 32))(v16, v10, v11);
  v24 = sub_18E44E33C();
  v26 = v25;
  v27 = sub_18E44E2EC();
  if (!v27)
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  v28 = *(v27 + 16);
  if (v28)
  {
    v42 = v24;
    v43 = v26;
    v44 = v16;
    v45 = a1;
    sub_18E1C846C();
    v29 = v49 + 16;
    v49 = *(v49 + 16);
    v30 = *(v29 + 64);
    v41[1] = v31;
    v32 = v31 + ((v30 + 32) & ~v30);
    v33 = *(v29 + 56);
    v34 = (v29 - 8);
    while (1)
    {
      (v49)(v7, v32, v3);
      if (sub_18E44E29C() == 0x5672657470616461 && v35 == v16)
      {
        break;
      }

      v16 = sub_18E44F3CC();

      if (v16)
      {
        goto LABEL_18;
      }

      (*v34)(v7, v3);
LABEL_20:
      sub_18E1C846C();
      v32 += v33;
      if (!--v28)
      {

        v16 = v44;
        v39 = v45;
        v24 = v42;
        v26 = v43;
        goto LABEL_23;
      }
    }

LABEL_18:
    v37 = sub_18E44E2AC();
    v16 = v38;
    (*v34)(v7, v3);
    if (v16)
    {

      v48 = v37;
    }

    goto LABEL_20;
  }

  v39 = a1;
LABEL_23:
  v40 = serverConfigurationFor(serverBundleConfigID:variant:)(v24, v26, v39);
  (*(v46 + 8))(v16, v47, v40);
}

uint64_t XPCServiceClientConnection.__allocating_init(delegate:)()
{
  sub_18E1CD8B8();
  sub_18E1E1AE0();
  v0 = swift_allocObject();
  sub_18E1D8004();
  XPCServiceClientConnection.init(delegate:)();
  return v0;
}

void sub_18E440810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1CFB3C();
  a19 = v27;
  a20 = v28;
  v32 = sub_18E1CD5F8(v29, v30, v31);
  v33 = sub_18E1C5E70(v32, &a14);
  MEMORY[0x1EEE9AC00](v33);
  sub_18E1CA254();
  MEMORY[0x1EEE9AC00](v34);
  sub_18E234640();
  MEMORY[0x1EEE9AC00](v35);
  sub_18E1CD80C();
  MEMORY[0x1EEE9AC00](v36);
  sub_18E1C5738();
  MEMORY[0x1EEE9AC00](v37);
  sub_18E2219B0();
  sub_18E212AA0();
  if (v21)
  {
    goto LABEL_2;
  }

  sub_18E1C6260();
  if (!v38)
  {
    v81 = sub_18E2885F0();
    v82 = sub_18E1C8558(&type metadata for XPCServiceError, v81);
    sub_18E1CBDCC(v82, v83);
LABEL_2:
    os_unfair_lock_unlock((v23 + 24));
    sub_18E1E6770();
    goto LABEL_3;
  }

  sub_18E223B94(v38);
  os_unfair_lock_unlock((v23 + 24));
  sub_18E223DB8();
  sub_18E1CC560();
  v39.n128_u64[0] = 136315138;
  sub_18E1E23AC(v39);
  v40.n128_u64[0] = 136315650;
  sub_18E1E334C(v40);
  sub_18E1E3684();
  while (1)
  {
    if (v41 == -1)
    {
      __break(1u);
      goto LABEL_48;
    }

    sub_18E1D02F4();
    v42 = &qword_1F018ABF0;
    sub_18E1CC494();
    v43 = swift_allocObject();
    v44 = sub_18E1E2DEC(v43);
    v165 = sub_18E44D310;
    v166 = v44;
    sub_18E1C8480();
    sub_18E1C80EC();
    v163 = v45;
    v164 = &unk_1F018B678;
    _Block_copy(&v161);
    sub_18E1CF544();

    v46 = sub_18E1E32D8(&v162);
    v48 = [v46 v47];
    v49 = sub_18E1CF9C4();
    _Block_release(v49);
    sub_18E1CC494();
    v50 = swift_allocObject();
    sub_18E223EA4(v50);
    sub_18E1CC494();
    v51 = swift_allocObject();
    sub_18E1D1A18(v51);
    sub_18E1CD8AC();
    v52 = swift_allocObject();
    sub_18E223B08(v52);
    sub_18E1CD8AC();
    v53 = swift_allocObject();
    *(v53 + 16) = sub_18E44D248;
    *(v53 + 24) = v23;
    v54 = qword_1ED6A8B58;
    sub_18E1E3C40();
    swift_unknownObjectRetain();

    sub_18E2214E8();

    if (v54 != -1)
    {
      sub_18E1C593C();
      swift_once();
    }

    v55 = sub_18E221A54();
    sub_18E1CE8B4(v55, qword_1ED6A9888);
    sub_18E233C70();
    v56 = sub_18E44E80C();
    sub_18E44EE2C();
    sub_18E20933C();
    sub_18E221E1C();
    sub_18E1E8CD8();
    if (v57)
    {
      sub_18E1C5F74();
      sub_18E1CA69C();
      v58 = swift_slowAlloc();
      v59 = sub_18E1CA340(v58);
      sub_18E200E1C(v59);
      sub_18E1E2FD0(&dword_18E1C1000, v56, v60, "requesting resource information for: %s");
      sub_18E221850();
      v25 = v22;
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1E6C6C();
    }

    else
    {

      v42 = v160;
    }

    sub_18E1D45C8();
    v61 = sub_18E44EA8C();
    v165 = sub_18E1E0F7C;
    v166 = v53;
    sub_18E1C8480();
    sub_18E1E15E8();
    v163 = sub_18E1E0EE0;
    v164 = &unk_1F018B718;
    _Block_copy(&v161);
    sub_18E1CC324();

    v62 = sub_18E1CD984();
    sub_18E232F2C(v62, v63);
    _Block_release(v24);

    sub_18E1E6580();
    v20 = *v42;
    if (!v20)
    {
      break;
    }

    sub_18E220B64();
    v64 = v20;
    sub_18E223A9C();
    sub_18E1E3B68();
    sub_18E280314(v65, v66);
    sub_18E1E3C94();
    if ((v61 & 1) == 0)
    {
      if (qword_1ED6A9020 == -1)
      {
LABEL_27:
        sub_18E1CF740(v67, qword_1ED6A9028);
        sub_18E1D4CFC();
        swift_beginAccess();
        sub_18E1C2AA0();
        sub_18E1D5EF4();
        v101();
        v102 = v20;
        v103 = sub_18E44E80C();
        sub_18E44EE0C();
        sub_18E232CE0();
        if (sub_18E1E1A10())
        {
          sub_18E1CA69C();
          swift_slowAlloc();
          sub_18E20809C();
          swift_slowAlloc();
          v104 = sub_18E1CADF8();
          sub_18E1CFFE8(v104);
          sub_18E21D1B0();
          sub_18E1D4CFC();
          swift_beginAccess();
          sub_18E22413C();
          v105 = sub_18E1D84BC();
          sub_18E1C9624(v105, &qword_1EABE9328, v106);
          sub_18E1C97B8();
          sub_18E1E1520();
          v107 = v20;
          v108 = _swift_stdlib_bridgeErrorToNSError();
          sub_18E1C5240(v108);
          sub_18E1C8D90();
          _os_log_impl(v109, v110, v111, v112, v113, 0x20u);
          sub_18E32F548(v26);
          sub_18E221CE4();
          sub_18E1E2C2C();
          sub_18E1C6164();
          MEMORY[0x193ACD400]();

          sub_18E1C5904();
          v114 = sub_18E1C69C4();
          v115(v114);
        }

        else
        {

          sub_18E1C5904();
          sub_18E1E1028();
          v116();
        }

        sub_18E1E383C();
        sub_18E1E2660();
        swift_willThrow();

        sub_18E1CD984();
        swift_unknownObjectRelease_n();
LABEL_38:

        sub_18E1CEB50();

        goto LABEL_3;
      }

LABEL_48:
      sub_18E1C6A1C();
      v67 = swift_once();
      goto LABEL_27;
    }

    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      swift_once();
    }

    v68 = sub_18E1C9090();
    sub_18E1C95AC(v68, qword_1ED6A9028);
    sub_18E1CFC50();
    sub_18E1D42A4();
    v69();
    v70 = v20;
    v71 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E232CE0();
    if (sub_18E1E1A10())
    {
      sub_18E1CA69C();
      v23 = swift_slowAlloc();
      sub_18E20809C();
      v72 = swift_slowAlloc();
      sub_18E1CA69C();
      v73 = swift_slowAlloc();
      sub_18E240E98(v73);
      sub_18E21D1B0();
      v22 = &qword_1EABE9328;
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E1E316C();
      v74 = sub_18E24707C();
      sub_18E1C9624(v74, v25, v75);
      sub_18E44D3C4();
      *(v23 + 4) = &qword_1EABE9328;
      sub_18E1E6838();
      v76 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v76;
      *v72 = v76;
      sub_18E1C793C();
      sub_18E24095C(&dword_18E1C1000, v71, v53, "%s sync: connection error during call: %@, num connection attempts: %lu");
      sub_18E32F548(v72);
      sub_18E1E6C6C();
      sub_18E1E1D6C();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      swift_unknownObjectRelease();
      v77 = sub_18E1C6838();
      v78(v77);
      sub_18E20067C();

      sub_18E1CF994();

      sub_18E1E26D0();
    }

    else
    {

      sub_18E1DD3C0(&a13);
      swift_unknownObjectRelease();
      v79 = sub_18E1C6838();
      v80(v79);
      sub_18E20067C();

      sub_18E1CF994();
    }

    swift_unknownObjectRelease();
    sub_18E1E3760();
  }

  sub_18E223428();
  sub_18E1D4CFC();
  swift_beginAccess();
  v84 = v24[2];
  if (v84)
  {
    v85 = v84;
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      v85 = swift_once();
    }

    sub_18E1CB0FC(v85, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E1CFC50();
    v86 = sub_18E1D6224();
    v87(v86);
    v88 = v84;
    v89 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E232CE0();
    if (sub_18E1E1A10())
    {
      sub_18E1CA69C();
      swift_slowAlloc();
      sub_18E20809C();
      swift_slowAlloc();
      v90 = sub_18E1CADF8();
      sub_18E1E18E4(v90);
      sub_18E21D1B0();
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E22413C();
      v91 = sub_18E1E3D6C();
      sub_18E1C9624(v91, &qword_1EABE9328, v92);
      sub_18E1C97B8();
      sub_18E1E3098();
      v93 = _swift_stdlib_bridgeErrorToNSError();
      sub_18E1C5240(v93);
      sub_18E1C8D90();
      _os_log_impl(v94, v95, v96, v97, v98, 0x20u);
      sub_18E32F548(v26);
      sub_18E221CE4();
      sub_18E1E2C2C();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E1C5904();
      v99 = sub_18E1C69C4();
      v100(v99);
      sub_18E1E383C();
    }

    else
    {

      v137 = sub_18E1C8C3C();
      v138(v137);
      sub_18E1D8054();
    }

    swift_willThrow();

    sub_18E1CD984();
    swift_unknownObjectRelease_n();
    goto LABEL_38;
  }

  sub_18E1D4CFC();
  v117 = swift_beginAccess();
  v118 = *(v25 + 16);
  if (v118)
  {
    v119 = v118;
    sub_18E1D49FC();
    if (!v121)
    {
      sub_18E1C6A1C();
      v120 = swift_once();
    }

    sub_18E1CB0FC(v120, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E1CFC50();
    v122 = sub_18E1D6224();
    v123(v122);
    v124 = sub_18E44E80C();
    v125 = sub_18E44EDFC();
    if (sub_18E1E115C(v125))
    {
      sub_18E1C9700();
      swift_slowAlloc();
      sub_18E1CA69C();
      v126 = swift_slowAlloc();
      sub_18E1E2408(v126);
      sub_18E224444(4.8151e-34);
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E223510();
      v127 = sub_18E1D5C74();
      sub_18E1C9624(v127, &qword_1EABE9328, v128);
      sub_18E1D5FEC();
      sub_18E1C884C();
      sub_18E1C8D90();
      _os_log_impl(v129, v130, v131, v132, v133, 0x16u);
      sub_18E1E1D6C();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E1CEB50();
      swift_unknownObjectRelease();
      sub_18E1C5904();
      v135 = sub_18E1C69C4();
      v136(v135);
      sub_18E1E6770();
      sub_18E20067C();

      sub_18E1CF994();
    }

    else
    {

      sub_18E1CEB50();
      sub_18E25E204(&a13);
      swift_unknownObjectRelease();
      v152 = sub_18E1C8C3C();
      v153(v152);
      sub_18E1E6770();
      sub_18E20067C();
    }

    swift_unknownObjectRelease();
    sub_18E240AB4();
  }

  else
  {
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      v117 = swift_once();
    }

    sub_18E1C8658(v117, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E1CFC50();
    v140 = sub_18E212088();
    v141(v140);
    v142 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E1E3E30();
    if (os_log_type_enabled(v142, v143))
    {
      sub_18E1C9700();
      swift_slowAlloc();
      sub_18E1CA69C();
      v144 = swift_slowAlloc();
      sub_18E221F1C(v144);
      sub_18E243124(4.8151e-34);
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E22413C();
      v145 = sub_18E1D5C74();
      sub_18E1C9624(v145, &qword_1EABE9328, v146);
      sub_18E1C97B8();
      sub_18E1C8F4C();
      sub_18E1D4494(&dword_18E1C1000, v147, v148, "%s sync: throwing neither result or error returned, num connection attempts:%lu");
      sub_18E1CF2EC();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      v149 = sub_18E1C614C();
      v150(v149);
      sub_18E1D62D8();
    }

    else
    {

      v154 = sub_18E1C614C();
      v155(v154);
      sub_18E1E84AC();
    }

    v156 = sub_18E2885F0();
    v157 = sub_18E1C8558(&type metadata for XPCServiceError, v156);
    sub_18E1E1254(v157, v158);

    sub_18E1CD984();
    swift_unknownObjectRelease_n();

    sub_18E1CEB50();
  }

LABEL_3:
  sub_18E2245CC();
  sub_18E1E6AEC();
}

void sub_18E441758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, ...)
{
  va_start(va2, a8);
  va_start(va1, a8);
  va_start(va, a8);
  v171 = va_arg(va1, void);
  v173 = va_arg(va1, void);
  v174 = va_arg(va1, void);
  va_copy(va2, va1);
  v175 = va_arg(va2, void);
  v177 = va_arg(va2, void);
  v178 = va_arg(va2, void);
  v179 = va_arg(va2, void);
  v180 = va_arg(va2, void);
  v181 = va_arg(va2, void);
  v182 = va_arg(va2, void);
  v183 = va_arg(va2, void);
  v184 = va_arg(va2, void);
  v185 = va_arg(va2, void *);
  v186 = va_arg(va2, NSObject *);
  v187 = va_arg(va2, SEL *);
  sub_18E1CFB3C();
  v183 = v14;
  v184 = v15;
  v153 = v16;
  v158 = v17;
  v160 = v18;
  v20 = v19;
  v21 = sub_18E44E83C();
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v22);
  sub_18E1C86C0();
  sub_18E1CD80C();
  MEMORY[0x1EEE9AC00](v23);
  sub_18E234640();
  MEMORY[0x1EEE9AC00](v24);
  sub_18E220544();
  MEMORY[0x1EEE9AC00](v25);
  sub_18E1CA6A8();
  MEMORY[0x1EEE9AC00](v26);
  sub_18E1E3EE0();
  sub_18E1CEB5C((v10 + 16));
  if (v9)
  {
    goto LABEL_2;
  }

  sub_18E1CFA38();
  v159 = v8;
  v157 = v20;
  v152 = v13;
  v150 = v12;
  v151 = v11;
  v163 = v21;
  v27 = *(v10 + 16);
  if (!v27)
  {
    v65 = sub_18E2885F0();
    sub_18E1C8558(&type metadata for XPCServiceError, v65);
    *v66 = 0;
    swift_willThrow();
LABEL_2:
    os_unfair_lock_unlock((v10 + 24));

    goto LABEL_3;
  }

  v156 = v187;
  v155 = v186;
  v154 = v185;
  sub_18E216810(v27, v165);
  sub_18E1E2078();
  isa = v160;
  v29 = v158;
  sub_18E2168E4();
  while (1)
  {
    sub_18E1E3B68();
    sub_18E1E9CA8();
    v162 = v30 + 1;
    if (v30 == -1)
    {
      __break(1u);
      goto LABEL_47;
    }

    sub_18E1D02F4();
    sub_18E1CC494();
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    v169 = v11;
    v170 = v31;
    sub_18E1C8480();
    sub_18E1C80EC();
    v167 = v32;
    v168 = v20;
    _Block_copy(v166);
    sub_18E1CF544();

    v33 = sub_18E1E32D8(v165);
    v35 = [v33 v34];
    v36 = sub_18E1E187C();
    _Block_release(v36);
    sub_18E1CC494();
    v11 = swift_allocObject();
    v11[2] = 0;
    sub_18E1CC494();
    v37 = swift_allocObject();
    sub_18E223C24(v37);
    sub_18E1CD8AC();
    v38 = swift_allocObject();
    *(v38 + 16) = &qword_1F018ABF0;
    *(v38 + 24) = v11;
    sub_18E1CD8AC();
    v39 = swift_allocObject();
    *(v39 + 16) = v29;
    *(v39 + 24) = v38;
    v40 = qword_1ED6A8B58;
    swift_unknownObjectRetain();

    if (v40 != -1)
    {
      swift_once();
    }

    v41 = sub_18E221A54();
    sub_18E1CE8B4(v41, qword_1ED6A9888);
    v42 = isa;
    v43 = sub_18E44E80C();
    v44 = sub_18E44EE2C();

    v161 = v11;
    if (sub_18E221E1C())
    {
      v45 = sub_18E1C5F74();
      sub_18E20809C();
      v46 = v12;
      v47 = swift_slowAlloc();
      *v45 = 138412290;
      *(v45 + 4) = v42;
      *v47 = v160;
      v48 = v42;
      sub_18E1E2FD0(&dword_18E1C1000, v43, v44, v153);
      sub_18E32F548(v47);
      v12 = v46;
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      v11 = v161;
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    v169 = v154;
    v170 = v39;
    sub_18E1C8480();
    sub_18E1E8920();
    v167 = v49;
    v168 = v155;
    _Block_copy(v166);
    sub_18E1CF544();

    [v12 *v156];
    _Block_release(v43);

    sub_18E25E204(va);
    sub_18E1D4CFC();
    swift_beginAccess();
    isa = v43->isa;
    if (!v43->isa)
    {
      break;
    }

    v50 = isa;
    v51 = isa;
    sub_18E280314(isa, v162);
    sub_18E1E63E8();
    v29 = v163;
    if ((v157 & 1) == 0)
    {
      if (qword_1ED6A9020 == -1)
      {
LABEL_26:
        sub_18E1CE8B4(v29, qword_1ED6A9028);
        sub_18E1D4CFC();
        swift_beginAccess();
        sub_18E1E8A2C();
        sub_18E2244C4();
        v88();
        v89 = isa;
        v90 = sub_18E44E80C();
        sub_18E44EE0C();

        if (sub_18E1E1A10())
        {
          sub_18E1CA69C();
          swift_slowAlloc();
          sub_18E20809C();
          v91 = swift_slowAlloc();
          sub_18E1CA69C();
          v164[4] = swift_slowAlloc();
          sub_18E1CDA38(v164);
          sub_18E1D4CFC();
          swift_beginAccess();
          v92 = off_1EABE9330;

          v93 = sub_18E1D84BC();
          sub_18E1C9624(v93, v92, v94);

          sub_18E1E1520();
          v95 = isa;
          v96 = _swift_stdlib_bridgeErrorToNSError();
          sub_18E1C64CC(v96);
          sub_18E44D370();
          sub_18E1C8D90();
          _os_log_impl(v97, v98, v99, v100, v101, 0x20u);
          sub_18E32F548(v91);
          sub_18E1C6164();
          MEMORY[0x193ACD400]();
          v102 = sub_18E1DD3C0(va1);
          sub_18E1C9934(v102);
          v103 = sub_18E1C86D0();
          MEMORY[0x193ACD400](v103);
          sub_18E1C6164();
          MEMORY[0x193ACD400]();

          sub_18E1C5BD8();
          v104 = sub_18E1C69C4();
        }

        else
        {

          sub_18E1C5BD8();
          v104 = v152;
          v105 = v29;
        }

        v106(v104, v105);
        swift_willThrow();
        sub_18E220158();

        sub_18E2417C4();
LABEL_37:

        sub_18E1E28C0();

        goto LABEL_3;
      }

LABEL_47:
      sub_18E1C6A1C();
      swift_once();
      goto LABEL_26;
    }

    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    sub_18E1C95AC(v163, qword_1ED6A9028);
    sub_18E1E8A2C();
    sub_18E2244C4();
    v52();
    v53 = isa;
    v20 = sub_18E44E80C();
    v54 = sub_18E44EE0C();

    if (sub_18E1E1A10())
    {
      sub_18E1CA69C();
      v55 = swift_slowAlloc();
      sub_18E20809C();
      v56 = swift_slowAlloc();
      sub_18E1CA69C();
      v12 = swift_slowAlloc();
      v166[0] = v12;
      sub_18E1D7ED0(v164);
      sub_18E1D4CFC();
      swift_beginAccess();
      v11 = off_1EABE9330;

      v57 = sub_18E24707C();
      v59 = sub_18E1C9624(v57, v11, v58);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2112;
      v60 = isa;
      v61 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 14) = v61;
      *v56 = v61;
      *(v55 + 22) = 2048;
      sub_18E44D370();
      sub_18E24095C(&dword_18E1C1000, v20, v54, "%s sync: connection error during call: %@, num connection attempts: %lu");
      sub_18E32F548(v56);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E221850();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      swift_unknownObjectRelease();
      sub_18E1C5BD8();
      v62 = sub_18E1C69C4();
      v63(v62);
      sub_18E1CF994();

      sub_18E1D002C();

      sub_18E20067C();
    }

    else
    {

      swift_unknownObjectRelease();
      sub_18E1C5BD8();
      v64(v159, v163);
      sub_18E1CF994();
    }

    swift_unknownObjectRelease();
    v29 = v158;
    sub_18E2168E4();
    sub_18E1E3760();
    isa = v160;
  }

  sub_18E1D4CFC();
  swift_beginAccess();
  v67 = v11[2];
  if (v67)
  {
    v68 = v67;
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      swift_once();
    }

    v69 = sub_18E1C95EC(v163, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E1E8A2C();
    v70(v151, v69, v163);
    v71 = v67;
    v72 = sub_18E44E80C();
    sub_18E44EE0C();

    if (sub_18E1E1A10())
    {
      sub_18E1CA69C();
      swift_slowAlloc();
      sub_18E20809C();
      v73 = swift_slowAlloc();
      sub_18E1CA69C();
      v164[0] = swift_slowAlloc();
      sub_18E1D03DC(v164);
      sub_18E1D4CFC();
      swift_beginAccess();
      v74 = off_1EABE9330;

      v75 = sub_18E1E3D6C();
      sub_18E1C9624(v75, v74, v76);

      sub_18E1E1520();
      v77 = v67;
      v78 = _swift_stdlib_bridgeErrorToNSError();
      sub_18E1C64CC(v78);
      sub_18E44D370();
      sub_18E1C8D90();
      _os_log_impl(v79, v80, v81, v82, v83, 0x20u);
      sub_18E32F548(v73);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      v84 = sub_18E1DD3C0(va1);
      sub_18E1C9934(v84);
      v85 = sub_18E1C86D0();
      MEMORY[0x193ACD400](v85);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E1C5BD8();
      v87 = v151;
    }

    else
    {

      v87 = sub_18E1C2AA0();
    }

    v86(v87, v163);
    swift_willThrow();
    sub_18E220158();

    sub_18E2417C4();
    sub_18E1D002C();
    goto LABEL_37;
  }

  sub_18E1D4CFC();
  v107 = swift_beginAccess();
  if (off_1F018AC00)
  {
    v108 = qword_1ED6A9020;
    v109 = off_1F018AC00;
    if (v108 != -1)
    {
      sub_18E1C6A1C();
      v109 = swift_once();
    }

    sub_18E1C8658(v109, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    v110 = sub_18E1C2AA0();
    v111(v110, v108, v163);
    v112 = sub_18E44E80C();
    v113 = sub_18E44EDFC();
    if (sub_18E1E115C(v113))
    {
      sub_18E1C9700();
      v114 = swift_slowAlloc();
      sub_18E1CA69C();
      v164[3] = swift_slowAlloc();
      sub_18E224444(4.8151e-34);
      sub_18E1D4CFC();
      swift_beginAccess();
      v115 = off_1EABE9330;

      v116 = sub_18E1D5C74();
      v118 = sub_18E1C9624(v116, v115, v117);

      *(v114 + 4) = v118;
      *(v114 + 12) = 2048;
      *(v114 + 14) = v162;
      sub_18E1C8D90();
      _os_log_impl(v119, v120, v121, v122, v123, 0x16u);
      v124 = sub_18E1DD3C0(va1);
      sub_18E1C9934(v124);
      v125 = sub_18E1C86D0();
      MEMORY[0x193ACD400](v125);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E1E28C0();
      swift_unknownObjectRelease();
      sub_18E1C5BD8();
      v127 = sub_18E1C69C4();
      v128(v127);
      sub_18E220158();
      sub_18E1CF994();

      sub_18E20067C();
    }

    else
    {

      sub_18E1E28C0();
      swift_unknownObjectRelease();
      v144 = sub_18E1C2AA0();
      v145(v144, v163);
      sub_18E220158();
      sub_18E1CF994();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      v107 = swift_once();
    }

    sub_18E1C6604(v107, qword_1ED6A9028);
    sub_18E1E8A2C();
    v130(v150, v42, v163);
    v131 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E1E3E30();
    if (os_log_type_enabled(v131, v132))
    {
      sub_18E1C9700();
      v133 = swift_slowAlloc();
      sub_18E1CA69C();
      v134 = swift_slowAlloc();
      sub_18E221F1C(v134);
      *v133 = 136315394;
      sub_18E1D4CFC();
      swift_beginAccess();
      v135 = off_1EABE9330;

      v136 = sub_18E1D5C74();
      v138 = sub_18E1C9624(v136, v135, v137);

      *(v133 + 4) = v138;
      *(v133 + 12) = 2048;
      *(v133 + 14) = v162;
      sub_18E1DD2E8(&dword_18E1C1000, v139, v140, "%s sync: throwing neither result or error returned, num connection attempts:%lu");
      sub_18E1CF2EC();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E1C5BD8();
      v142 = v150;
    }

    else
    {

      v142 = sub_18E1CC484();
    }

    v141(v142, v163);
    v146 = sub_18E2885F0();
    v147 = sub_18E1C8558(&type metadata for XPCServiceError, v146);
    sub_18E224E88(v147, v148);
    sub_18E220158();
    sub_18E1CF994();

    sub_18E2417C4();

    sub_18E1E28C0();
  }

LABEL_3:
  sub_18E1E6AEC();
}

void sub_18E44278C(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const char *a13, void *a14, NSObject *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const char *a21, void *a22, NSObject *a23, ...)
{
  sub_18E1CFB3C();
  a19 = v27;
  a20 = v28;
  v165 = v29;
  v164 = v30;
  v163 = v31;
  v32 = sub_18E44E83C();
  v33 = sub_18E1C5E70(v32, &a14);
  MEMORY[0x1EEE9AC00](v33);
  sub_18E1CA254();
  MEMORY[0x1EEE9AC00](v34);
  sub_18E234640();
  MEMORY[0x1EEE9AC00](v35);
  sub_18E1CD80C();
  MEMORY[0x1EEE9AC00](v36);
  sub_18E1C5738();
  MEMORY[0x1EEE9AC00](v37);
  sub_18E2219B0();
  sub_18E212AA0();
  v38 = v24;
  if (v24)
  {
    goto LABEL_2;
  }

  sub_18E1CFA38();
  sub_18E223F48();
  v39 = *(v25 + 16);
  if (!v39)
  {
    v84 = sub_18E2885F0();
    v85 = sub_18E1C8558(&type metadata for XPCServiceError, v84);
    sub_18E1CBDCC(v85, v86);
LABEL_2:
    os_unfair_lock_unlock((v25 + 24));
    sub_18E1E6770();
    goto LABEL_3;
  }

  v161 = a23;
  v160 = a22;
  v159 = a21;
  sub_18E216810(v39, v167);
  sub_18E223DB8();
  v40 = v165;
  sub_18E2168E4();
  sub_18E1E3B68();
  v41 = v164;
  sub_18E220A1C();
  while (1)
  {
    if (v42 == -1)
    {
      __break(1u);
      goto LABEL_48;
    }

    sub_18E1D02F4();
    v43 = &qword_1F018ABF0;
    sub_18E1CC494();
    v44 = swift_allocObject();
    v45 = sub_18E1E2DEC(v44);
    v172 = v41;
    v173 = v45;
    sub_18E1C8480();
    sub_18E1C80EC();
    v170 = v46;
    v171 = v38;
    _Block_copy(v169);
    sub_18E1CF544();

    v47 = sub_18E1E32D8(v167);
    v49 = [v47 v48];
    v50 = sub_18E1CF9C4();
    _Block_release(v50);
    sub_18E1CC494();
    v51 = swift_allocObject();
    sub_18E223EA4(v51);
    sub_18E1CC494();
    v52 = swift_allocObject();
    sub_18E1D1A18(v52);
    sub_18E1CD8AC();
    v53 = swift_allocObject();
    sub_18E223B08(v53);
    sub_18E1CD8AC();
    v54 = swift_allocObject();
    *(v54 + 16) = v40;
    *(v54 + 24) = v25;
    v55 = qword_1ED6A8B58;
    sub_18E1E3C40();
    swift_unknownObjectRetain();

    sub_18E2214E8();

    if (v55 != -1)
    {
      swift_once();
    }

    v56 = sub_18E221A54();
    sub_18E1CE8B4(v56, qword_1ED6A9888);
    sub_18E233C70();
    v57 = sub_18E44E80C();
    sub_18E44EE2C();
    sub_18E20933C();
    sub_18E221E1C();
    sub_18E1E8CD8();
    if (v58)
    {
      v59 = sub_18E1C5F74();
      sub_18E1CA69C();
      v169[0] = swift_slowAlloc();
      *v59 = 136315138;
      v60 = sub_18E1DD3C0(&v168);
      v62 = sub_18E1C9624(v60, v40, v61);
      sub_18E200E1C(v62);
      sub_18E1E2FD0(&dword_18E1C1000, v57, v63, v159);
      sub_18E221850();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E220A1C();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {

      v43 = v163;
    }

    sub_18E1D45C8();
    v64 = sub_18E44EA8C();
    v172 = v160;
    v173 = v54;
    sub_18E1C8480();
    sub_18E1E8920();
    v170 = v65;
    v171 = v161;
    _Block_copy(v169);
    sub_18E1CC324();

    v66 = sub_18E1CD984();
    sub_18E232F2C(v66, v67);
    _Block_release(v41);

    sub_18E1E6580();
    v23 = *v43;
    if (!v23)
    {
      break;
    }

    sub_18E220B64();
    v68 = v23;
    v69 = sub_18E223A9C();
    sub_18E280314(v69, v70);
    sub_18E1E3C94();
    if ((v162 & 1) == 0)
    {
      if (qword_1ED6A9020 == -1)
      {
LABEL_27:
        sub_18E1CF740(v71, qword_1ED6A9028);
        sub_18E1D4CFC();
        swift_beginAccess();
        sub_18E1C2AA0();
        sub_18E1D5EF4();
        v104();
        v105 = v23;
        v106 = sub_18E44E80C();
        sub_18E44EE0C();
        sub_18E232CE0();
        if (sub_18E1E1A10())
        {
          sub_18E1CA69C();
          swift_slowAlloc();
          sub_18E20809C();
          swift_slowAlloc();
          v107 = sub_18E1CADF8();
          sub_18E1CFFE8(v107);
          sub_18E1CDA38(v166);
          sub_18E1D4CFC();
          swift_beginAccess();
          sub_18E22413C();
          v108 = sub_18E1D84BC();
          sub_18E1C9624(v108, &qword_1EABE9328, v109);
          sub_18E1C97B8();
          sub_18E1E1520();
          v110 = v23;
          v111 = _swift_stdlib_bridgeErrorToNSError();
          sub_18E1C5240(v111);
          sub_18E1C8D90();
          _os_log_impl(v112, v113, v114, v115, v116, 0x20u);
          sub_18E32F548(v40);
          sub_18E221CE4();
          sub_18E1E2C2C();
          sub_18E1C6164();
          MEMORY[0x193ACD400]();

          sub_18E1D4CEC();
          v117 = sub_18E1C69C4();
          v118(v117);
        }

        else
        {

          sub_18E1C2AA0();
          sub_18E1E1028();
          v119();
        }

        sub_18E1E383C();
        sub_18E1E2660();
        swift_willThrow();

        sub_18E1CD984();
        swift_unknownObjectRelease_n();
LABEL_38:

        sub_18E224ED8();
        goto LABEL_3;
      }

LABEL_48:
      sub_18E1C6A1C();
      v71 = swift_once();
      goto LABEL_27;
    }

    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v72 = sub_18E1C9090();
    sub_18E1C95AC(v72, qword_1ED6A9028);
    sub_18E1C89B8();
    sub_18E1D42A4();
    v73();
    v74 = v23;
    v38 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E232CE0();
    if (sub_18E1E1A10())
    {
      sub_18E1CA69C();
      v25 = swift_slowAlloc();
      sub_18E20809C();
      v75 = swift_slowAlloc();
      sub_18E1CA69C();
      v76 = swift_slowAlloc();
      sub_18E240E98(v76);
      sub_18E1D7ED0(v166);
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E1E316C();
      v77 = sub_18E24707C();
      sub_18E1C9624(v77, v26, v78);
      sub_18E44D3C4();
      *(v25 + 4) = &qword_1EABE9328;
      sub_18E1E6838();
      v79 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v79;
      *v75 = v79;
      sub_18E1C793C();
      sub_18E24095C(&dword_18E1C1000, v38, v54, "%s sync: connection error during call: %@, num connection attempts: %lu");
      sub_18E32F548(v75);
      sub_18E220A1C();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1E1D6C();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      swift_unknownObjectRelease();
      v80 = sub_18E1C6838();
      v81(v80);
      sub_18E20067C();

      sub_18E1CF994();

      sub_18E1E26D0();
    }

    else
    {

      sub_18E1DD3C0(&a13);
      swift_unknownObjectRelease();
      v82 = sub_18E1C6838();
      v83(v82);
      sub_18E20067C();

      sub_18E1CF994();
    }

    swift_unknownObjectRelease();
    v40 = v165;
    sub_18E2168E4();
    v41 = v164;
    sub_18E1E3760();
    sub_18E1E3B68();
  }

  sub_18E223428();
  sub_18E1D4CFC();
  swift_beginAccess();
  v87 = v41[2];
  if (v87)
  {
    v88 = v87;
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      v88 = swift_once();
    }

    sub_18E1CB0FC(v88, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E1E8A2C();
    v89 = sub_18E1D6224();
    v90(v89);
    v91 = v87;
    v92 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E232CE0();
    if (sub_18E1E1A10())
    {
      sub_18E1CA69C();
      swift_slowAlloc();
      sub_18E20809C();
      swift_slowAlloc();
      v93 = sub_18E1CADF8();
      sub_18E1E18E4(v93);
      sub_18E1D03DC(v166);
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E22413C();
      v94 = sub_18E1E3D6C();
      sub_18E1C9624(v94, &qword_1EABE9328, v95);
      sub_18E1C97B8();
      sub_18E1E3098();
      v96 = _swift_stdlib_bridgeErrorToNSError();
      sub_18E1C5240(v96);
      sub_18E1C8D90();
      _os_log_impl(v97, v98, v99, v100, v101, 0x20u);
      sub_18E32F548(v40);
      sub_18E221CE4();
      sub_18E1E2C2C();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E1D4CEC();
      v102 = sub_18E1C69C4();
      v103(v102);
      sub_18E1E383C();
    }

    else
    {

      v139 = sub_18E1C8C3C();
      v140(v139);
      sub_18E1D8054();
    }

    swift_willThrow();

    sub_18E1CD984();
    swift_unknownObjectRelease_n();
    goto LABEL_38;
  }

  sub_18E1D4CFC();
  v120 = swift_beginAccess();
  v121 = *(v26 + 16);
  if (v121)
  {
    v122 = v121;
    sub_18E1D49FC();
    if (!v124)
    {
      sub_18E1C6A1C();
      v123 = swift_once();
    }

    sub_18E1CB0FC(v123, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E1E8A2C();
    v125 = sub_18E1D6224();
    v126(v125);
    v127 = sub_18E44E80C();
    v128 = sub_18E44EDFC();
    if (sub_18E1E115C(v128))
    {
      sub_18E1C9700();
      swift_slowAlloc();
      sub_18E1CA69C();
      v129 = swift_slowAlloc();
      sub_18E1E2408(v129);
      sub_18E224444(4.8151e-34);
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E223510();
      v130 = sub_18E1D5C74();
      sub_18E1C9624(v130, &qword_1EABE9328, v131);
      sub_18E1D5FEC();
      sub_18E1C884C();
      sub_18E1C8D90();
      _os_log_impl(v132, v133, v134, v135, v136, 0x16u);
      sub_18E1E1D6C();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E224ED8();
      swift_unknownObjectRelease();
      sub_18E1D4CEC();
      v137 = sub_18E1C69C4();
      v138(v137);
      sub_18E1E6770();
      sub_18E20067C();

      sub_18E1CF994();
    }

    else
    {

      sub_18E224ED8();
      sub_18E25E204(&a13);
      swift_unknownObjectRelease();
      v152 = sub_18E1C8C3C();
      v153(v152);
      sub_18E1E6770();
      sub_18E20067C();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      v120 = swift_once();
    }

    sub_18E1C8658(v120, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E1E8A2C();
    v141 = sub_18E212088();
    v142(v141);
    v143 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E1E3E30();
    if (os_log_type_enabled(v143, v144))
    {
      sub_18E1C9700();
      swift_slowAlloc();
      sub_18E1CA69C();
      v145 = swift_slowAlloc();
      sub_18E221F1C(v145);
      sub_18E243124(4.8151e-34);
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E22413C();
      v146 = sub_18E1D5C74();
      sub_18E1C9624(v146, &qword_1EABE9328, v147);
      sub_18E1C97B8();
      sub_18E1C8F4C();
      sub_18E1D4494(&dword_18E1C1000, v148, v149, "%s sync: throwing neither result or error returned, num connection attempts:%lu");
      sub_18E1CF2EC();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      v150 = sub_18E1C614C();
      v151(v150);
      sub_18E1D62D8();
    }

    else
    {

      v154 = sub_18E1C614C();
      v155(v154);
      sub_18E1E84AC();
    }

    v156 = sub_18E2885F0();
    v157 = sub_18E1C8558(&type metadata for XPCServiceError, v156);
    sub_18E1E1254(v157, v158);

    sub_18E1CD984();
    swift_unknownObjectRelease_n();

    sub_18E224ED8();
  }

LABEL_3:
  sub_18E2245CC();
  sub_18E1E6AEC();
}

void sub_18E443480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1CFB3C();
  a19 = v25;
  a20 = v26;
  isa = v27;
  v29 = sub_18E44E83C();
  v30 = sub_18E1C5E70(v29, &a13);
  v150 = v31;
  MEMORY[0x1EEE9AC00](v30);
  sub_18E1C86C0();
  sub_18E1CD80C();
  MEMORY[0x1EEE9AC00](v32);
  sub_18E1C5738();
  MEMORY[0x1EEE9AC00](v33);
  sub_18E220544();
  MEMORY[0x1EEE9AC00](v34);
  sub_18E1CA6A8();
  MEMORY[0x1EEE9AC00](v35);
  sub_18E1CF7DC();
  sub_18E216B74();
  v36 = v20;
  if (v20)
  {
    goto LABEL_2;
  }

  v146 = isa;
  v37 = *(v21 + 16);
  if (!v37)
  {
    v60 = sub_18E2885F0();
    v61 = sub_18E1C8558(&type metadata for XPCServiceError, v60);
    sub_18E1CBDCC(v61, v62);
LABEL_2:
    os_unfair_lock_unlock((v21 + 24));
    goto LABEL_3;
  }

  v143 = v23;
  v147 = v37;
  os_unfair_lock_unlock((v21 + 24));
  sub_18E1E2078();
  v145 = v39;
  v144 = (v150 + 8);
  while (1)
  {
    v151 = v38 + 1;
    if (v38 == -1)
    {
      __break(1u);
      goto LABEL_39;
    }

    v148 = v38;
    sub_18E1CC494();
    v40 = swift_allocObject();
    v41 = sub_18E1CFF44(v40);
    v156 = sub_18E44D310;
    v157 = v41;
    v152 = MEMORY[0x1E69E9820];
    v153 = 1107296256;
    v154 = sub_18E448558;
    v155 = &unk_1F018B5D8;
    _Block_copy(&v152);
    sub_18E223FB8();

    v42 = [v147 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(isa);
    sub_18E1CC494();
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    sub_18E1CC494();
    v44 = swift_allocObject();
    sub_18E223C24(v44);
    sub_18E1CD8AC();
    v45 = swift_allocObject();
    *(v45 + 16) = v24;
    *(v45 + 24) = v43;
    sub_18E1CD8AC();
    v46 = swift_allocObject();
    *(v46 + 16) = sub_18E44D248;
    *(v46 + 24) = v45;
    v156 = sub_18E1E0F74;
    v157 = v46;
    v152 = MEMORY[0x1E69E9820];
    v153 = 1107296256;
    v154 = sub_18E2891B0;
    v155 = &unk_1F018B650;
    v47 = _Block_copy(&v152);
    swift_unknownObjectRetain();

    [v42 enableTestResourcesWith_];
    _Block_release(v47);

    sub_18E1D4CFC();
    swift_beginAccess();
    isa = v36->isa;
    if (!v36->isa)
    {
      break;
    }

    v48 = isa;
    v49 = isa;
    sub_18E280314(isa, v151);
    sub_18E1E63E8();
    if ((v146 & 1) == 0)
    {
      if (qword_1ED6A9020 == -1)
      {
LABEL_23:
        v88 = sub_18E25E204(&a13);
        sub_18E1C95EC(v88, v89);
        sub_18E1D4CFC();
        swift_beginAccess();
        sub_18E1E8A2C();
        sub_18E1E19C0();
        v90();
        v91 = isa;
        v92 = sub_18E44E80C();
        v93 = sub_18E44EE0C();

        if (os_log_type_enabled(v92, v93))
        {
          sub_18E1CA69C();
          v94 = swift_slowAlloc();
          sub_18E20809C();
          v95 = swift_slowAlloc();
          sub_18E1CA69C();
          swift_slowAlloc();
          LODWORD(v96) = sub_18E1D5E20().n128_u32[0];
          sub_18E1E2E5C(v96);
          sub_18E1D4CFC();
          swift_beginAccess();
          v97 = off_1EABE9330;

          v98 = sub_18E1D84BC();
          sub_18E1C9624(v98, v97, v99);

          sub_18E239C9C();
          v100 = _swift_stdlib_bridgeErrorToNSError();
          *(v94 + 14) = v100;
          *v95 = v100;
          *(v94 + 22) = 2048;
          sub_18E1E65F8();
          *(v94 + 24) = v101;
          sub_18E1E3200();
          _os_log_impl(v102, v103, v104, v105, v106, 0x20u);
          sub_18E32F548(v95);
          sub_18E1C6164();
          MEMORY[0x193ACD400]();
          sub_18E1E1D6C();
          sub_18E1C6164();
          MEMORY[0x193ACD400]();
        }

        v107 = sub_18E1C89B8();
        v108(v107);
        swift_willThrow();
        sub_18E1D002C();

        sub_18E1E237C();
        swift_unknownObjectRelease_n();

        sub_18E2452C0();

        goto LABEL_3;
      }

LABEL_39:
      sub_18E1C6A1C();
      swift_once();
      goto LABEL_23;
    }

    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      swift_once();
    }

    sub_18E1C95AC(v149, qword_1ED6A9028);
    sub_18E1E8A2C();
    sub_18E1D5EF4();
    v50();
    v51 = isa;
    v36 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E1E3CD0();
    if (sub_18E2217FC())
    {
      sub_18E1CA69C();
      v52 = swift_slowAlloc();
      sub_18E20809C();
      v53 = swift_slowAlloc();
      sub_18E1CA69C();
      v152 = swift_slowAlloc();
      *v52 = sub_18E1D5E20().n128_u32[0];
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E44D398();
      v54 = sub_18E24707C();
      sub_18E1C9624(v54, v145, v55);
      sub_18E1D0444();

      sub_18E1E34C4();
      v56 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 14) = v56;
      sub_18E1D0074(v56);
      *(v52 + 22) = v57;
      sub_18E1E65F8();
      *(v52 + 24) = v58;
      sub_18E243EFC(&dword_18E1C1000, v36, v24, "%s sync: connection error during call: %@, num connection attempts: %lu");
      sub_18E32F548(v53);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1CFCC0();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E25E204(&v153);
      swift_unknownObjectRelease();

      (*v144)(v22);
    }

    else
    {

      swift_unknownObjectRelease();
      sub_18E21D0EC();
      v59();
    }

    sub_18E1D002C();

    sub_18E1E29C4();

    sub_18E1CF994();

    swift_unknownObjectRelease();
    v38 = v148 + 1;
  }

  sub_18E1D4CFC();
  swift_beginAccess();
  v63 = *(v43 + 16);
  if (v63)
  {
    v64 = v63;
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      swift_once();
    }

    sub_18E1CFA38();
    sub_18E1CBEB4(0, v65);
    sub_18E1E8A2C();
    v66(v143, v36, 0);
    v67 = v63;
    v68 = sub_18E44E80C();
    v69 = sub_18E44EE0C();

    if (os_log_type_enabled(v68, v69))
    {
      sub_18E1CA69C();
      v70 = swift_slowAlloc();
      sub_18E20809C();
      v71 = swift_slowAlloc();
      sub_18E1CA69C();
      swift_slowAlloc();
      LODWORD(v72) = sub_18E1D5E20().n128_u32[0];
      sub_18E1E8ADC(v72);
      sub_18E1D4CFC();
      swift_beginAccess();
      v73 = off_1EABE9330;

      v74 = sub_18E1E3D6C();
      v76 = sub_18E1C9624(v74, v73, v75);

      *(v70 + 4) = v76;
      *(v70 + 12) = 2112;
      v77 = v63;
      v78 = _swift_stdlib_bridgeErrorToNSError();
      *(v70 + 14) = v78;
      *v71 = v78;
      *(v70 + 22) = 2048;
      sub_18E1E65F8();
      *(v70 + 24) = v79;
      sub_18E1D5FA8();
      _os_log_impl(v80, v81, v82, v83, v84, 0x20u);
      sub_18E32F548(v71);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1E1D6C();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    v85 = sub_18E1C89B8();
    v86(v85);
    swift_willThrow();

    sub_18E1E237C();
    swift_unknownObjectRelease_n();

    sub_18E2452C0();
  }

  else
  {
    sub_18E1D4CFC();
    v110 = swift_beginAccess();
    v111 = *(v24 + 16);
    if (v111)
    {
      v112 = v111;
      sub_18E1D49FC();
      if (!v113)
      {
        sub_18E1C6A1C();
        swift_once();
      }

      sub_18E1CFA38();
      sub_18E1CA644(0, v114);
      sub_18E1E8A2C();
      v115 = sub_18E1E6718();
      v116(v115);
      v117 = sub_18E44E80C();
      sub_18E44EDFC();
      sub_18E1E3E30();
      if (os_log_type_enabled(v117, v118))
      {
        sub_18E1C9700();
        v119 = swift_slowAlloc();
        sub_18E1CA69C();
        v120 = swift_slowAlloc();
        sub_18E221F1C(v120);
        *v119 = 136315394;
        sub_18E1D4CFC();
        swift_beginAccess();
        sub_18E44D398();
        v121 = sub_18E1D5C74();
        sub_18E1C9624(v121, v145, v122);
        sub_18E1D0444();

        sub_18E1E39BC();
        sub_18E1E65F8();
        *(v119 + 14) = v123;
        sub_18E1DD2E8(&dword_18E1C1000, v124, v125, "%s sync: method returned non-nil result, num connection attempts:%lu");
        sub_18E1CF2EC();
        sub_18E1C6164();
        MEMORY[0x193ACD400]();

        sub_18E2452C0();
        sub_18E25E204(&v153);
        swift_unknownObjectRelease();
        sub_18E21D0EC();
        v127();
        sub_18E1D002C();

        sub_18E1E29C4();
      }

      else
      {

        sub_18E2452C0();
        sub_18E25E204(&v153);
        swift_unknownObjectRelease();
        sub_18E21D0EC();
        v138();
        sub_18E1D002C();
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1ED6A9020 != -1)
      {
        sub_18E1C6A1C();
        v110 = swift_once();
      }

      sub_18E1C6604(v110, qword_1ED6A9028);
      sub_18E1E8A2C();
      sub_18E1E19C0();
      v128();
      v129 = sub_18E44E80C();
      v130 = sub_18E44EE0C();
      if (sub_18E207A34(v130))
      {
        sub_18E1C9700();
        swift_slowAlloc();
        sub_18E1CA69C();
        v131 = swift_slowAlloc();
        sub_18E2200C8(v131);
        sub_18E243124(4.8151e-34);
        sub_18E1D4CFC();
        swift_beginAccess();
        v132 = off_1EABE9330;

        v133 = sub_18E1D5C74();
        sub_18E1C9624(v133, v132, v134);
        sub_18E1E6B80();

        sub_18E1E1764();
        sub_18E220934(&a14);
        sub_18E1EA5B8(&dword_18E1C1000, v135, v130, "%s sync: throwing neither result or error returned, num connection attempts:%lu");
        sub_18E1CFCC0();
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
      }

      sub_18E21D0EC();
      v136();
      v139 = sub_18E2885F0();
      v140 = sub_18E1C8558(&type metadata for XPCServiceError, v139);
      sub_18E1E1254(v140, v141);
      sub_18E1D002C();

      sub_18E1E237C();
      swift_unknownObjectRelease_n();

      sub_18E2452C0();
    }
  }

LABEL_3:
  sub_18E2245CC();
  sub_18E1E6AEC();
}

void sub_18E444394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1CFB3C();
  a19 = v25;
  a20 = v26;
  v34 = sub_18E1FED68(v27, v28, v29, v30, v31, v32, v33);
  v35 = sub_18E1C5E70(v34, &a14);
  MEMORY[0x1EEE9AC00](v35);
  sub_18E1C86C0();
  sub_18E1CD80C();
  MEMORY[0x1EEE9AC00](v36);
  sub_18E1C5738();
  MEMORY[0x1EEE9AC00](v37);
  sub_18E220544();
  MEMORY[0x1EEE9AC00](v38);
  sub_18E1CA6A8();
  MEMORY[0x1EEE9AC00](v39);
  sub_18E1CF7DC();
  sub_18E216B74();
  LOBYTE(v40) = v20;
  if (v20)
  {
    goto LABEL_2;
  }

  sub_18E1CF630();
  if (!v41)
  {
    v72 = sub_18E2885F0();
    v73 = sub_18E1C8558(&type metadata for XPCServiceError, v72);
    sub_18E1CBDCC(v73, v74);
LABEL_2:
    os_unfair_lock_unlock(v23 + 6);
    goto LABEL_3;
  }

  v42 = sub_18E1CF834(v41);
  sub_18E223B94(v42);
  os_unfair_lock_unlock(v23 + 6);
  v43 = 0;
  sub_18E235354();
  sub_18E1E10B8(v44);
  v45.n128_u64[0] = 136315650;
  sub_18E1E334C(v45);
  sub_18E1D43CC();
  sub_18E44D3B0();
  while (1)
  {
    if (v43 == -1)
    {
      __break(1u);
      goto LABEL_42;
    }

    sub_18E1CC494();
    v46 = swift_allocObject();
    v47 = sub_18E1CFF44(v46);
    v160[4] = v22;
    v160[5] = v47;
    sub_18E1C8480();
    sub_18E1C80EC();
    v160[2] = v48;
    v160[3] = v21;
    _Block_copy(v160);
    sub_18E223FB8();

    v49 = sub_18E1E237C();
    v22 = [v49 v50];
    _Block_release(v21);
    sub_18E1CC494();
    v51 = swift_allocObject();
    sub_18E223C24(v51);
    sub_18E1CC494();
    v52 = swift_allocObject();
    sub_18E1D1A18(v52);
    sub_18E1CD8AC();
    v21 = swift_allocObject();
    v21[2] = &qword_1F018ABF0;
    v21[3] = v24;
    swift_unknownObjectRetain();

    sub_18E2452C0();
    v53();

    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E44D380();
    if (!v21)
    {
      break;
    }

    v54 = v21;
    v55 = v21;
    sub_18E1E3B68();
    sub_18E280314(v56, v57);
    sub_18E1E63E8();
    if ((v40 & 1) == 0)
    {
      sub_18E1D029C();
      if (!v98)
      {
LABEL_42:
        sub_18E1C6A1C();
        v97 = swift_once();
      }

      sub_18E1C8658(v97, qword_1ED6A9028);
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E1C5904();
      v99 = sub_18E1E8838();
      v100(v99);
      v101 = v21;
      v102 = sub_18E44E80C();
      v103 = sub_18E44EE0C();

      if (os_log_type_enabled(v102, v103))
      {
        sub_18E1CA69C();
        v104 = swift_slowAlloc();
        sub_18E20809C();
        v105 = swift_slowAlloc();
        sub_18E223724(v105);
        sub_18E1CA69C();
        v106 = swift_slowAlloc();
        sub_18E223C94(v106);
        LODWORD(v107) = sub_18E1E2F8C().n128_u32[0];
        sub_18E1E2E5C(v107);
        sub_18E223F48();
        sub_18E1D4CFC();
        swift_beginAccess();
        sub_18E228810();
        v108 = sub_18E1D84BC();
        sub_18E1C9624(v108, v22, v109);
        sub_18E1CEA58();
        sub_18E239C9C();
        v110 = _swift_stdlib_bridgeErrorToNSError();
        *(v104 + 14) = v110;
        sub_18E1FF324(v110, &a10);
        *(v104 + 22) = v111;
        sub_18E232E60();
        *(v104 + 24) = v112;
        sub_18E1E3200();
        _os_log_impl(v113, v114, v115, v116, v117, 0x20u);
        sub_18E32F548(v23);
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
        sub_18E1CF2EC();
        sub_18E1C6164();
        MEMORY[0x193ACD400]();

        v118 = sub_18E1CF4CC();
      }

      else
      {

        v118 = sub_18E1E3A7C();
      }

      v119(v118);
      swift_willThrow();
      sub_18E1CF42C();
      sub_18E2352D0();
      swift_unknownObjectRelease_n();

      sub_18E1CF238();

      sub_18E1CEB50();

      goto LABEL_3;
    }

    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    sub_18E207B14();
    sub_18E1C95AC(v43, qword_1ED6A9028);
    sub_18E1C5904();
    v24 = v157;
    sub_18E2244C4();
    v58();
    v59 = v21;
    v40 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E1E3CD0();
    if (sub_18E2217FC())
    {
      sub_18E1CA69C();
      swift_slowAlloc();
      sub_18E1E7BA8();
      v61 = v60;
      sub_18E20809C();
      v62 = swift_slowAlloc();
      sub_18E1CA69C();
      v22 = swift_slowAlloc();
      v160[0] = v22;
      *v61 = sub_18E1E2F8C().n128_u32[0];
      sub_18E223F48();
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E44D398();
      v63 = sub_18E24707C();
      sub_18E1C9624(v63, v43, v64);
      sub_18E224020();
      sub_18E1D0444();

      sub_18E1E34C4();
      v65 = _swift_stdlib_bridgeErrorToNSError();
      *(v61 + 14) = v65;
      sub_18E1D0074(v65);
      *(v61 + 22) = v66;
      sub_18E232E60();
      *(v61 + 24) = v67;
      sub_18E243EFC(&dword_18E1C1000, v40, v157, "%s sync: connection error during call: %@, num connection attempts: %lu");
      sub_18E32F548(v62);
      v23 = v156;
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1CFCC0();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E25E204(&a12);
      swift_unknownObjectRelease();

      v68 = sub_18E240534();
      v69(v68);
      sub_18E1CF42C();
      sub_18E1D002C();

      sub_18E1CF238();
    }

    else
    {

      sub_18E25E204(&a12);
      swift_unknownObjectRelease();
      v70 = sub_18E1CF4CC();
      v71(v70);

      sub_18E1D002C();
    }

    swift_unknownObjectRelease();
    sub_18E223428();
    ++v43;
    sub_18E1D43CC();
  }

  sub_18E224020();
  sub_18E1D4CFC();
  swift_beginAccess();
  v75 = *(v24 + 16);
  if (v75)
  {
    sub_18E1E7BA8();
    v76 = v75;
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      swift_once();
    }

    sub_18E1CBEB4(v158, qword_1ED6A9028);
    sub_18E1C5904();
    v77 = sub_18E1E6718();
    v78(v77);
    v79 = v75;
    v80 = sub_18E44E80C();
    v81 = sub_18E44EE0C();

    if (os_log_type_enabled(v80, v81))
    {
      sub_18E1CA69C();
      v82 = swift_slowAlloc();
      sub_18E20809C();
      swift_slowAlloc();
      sub_18E1CA69C();
      v83 = swift_slowAlloc();
      sub_18E223C94(v83);
      LODWORD(v84) = sub_18E1E2F8C().n128_u32[0];
      sub_18E1E8ADC(v84);
      sub_18E223F48();
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E228810();
      v85 = sub_18E1E3D6C();
      sub_18E1C9624(v85, v22, v86);
      sub_18E1CEA58();
      sub_18E1E22D0();
      v87 = _swift_stdlib_bridgeErrorToNSError();
      *(v82 + 14) = v87;
      sub_18E1FF324(v87, &a9);
      *(v82 + 22) = v88;
      sub_18E232E60();
      *(v82 + 24) = v89;
      sub_18E1E1F74();
      sub_18E1D5FA8();
      _os_log_impl(v90, v91, v92, v93, v94, 0x20u);
      sub_18E32F548(v23);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1CF2EC();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    v95 = sub_18E1D63DC();
    v96(v95);
    swift_willThrow();
    sub_18E1CF42C();
    sub_18E2352D0();
    swift_unknownObjectRelease_n();

    sub_18E1CF238();

    sub_18E1CEB50();
  }

  else
  {
    sub_18E1D4CFC();
    v121 = swift_beginAccess();
    if (off_1F018AC00)
    {
      v122 = off_1F018AC00;
      sub_18E1D49FC();
      if (!v98)
      {
        sub_18E1C6A1C();
        swift_once();
      }

      sub_18E1CA644(v158, qword_1ED6A9028);
      sub_18E1C5904();
      v123 = sub_18E1E6718();
      v124(v123);
      v125 = sub_18E44E80C();
      sub_18E44EDFC();
      sub_18E1E3E30();
      if (os_log_type_enabled(v125, v126))
      {
        sub_18E1C9700();
        v127 = swift_slowAlloc();
        sub_18E1CA69C();
        v128 = swift_slowAlloc();
        sub_18E221F1C(v128);
        sub_18E1E2ABC(4.8151e-34);
        sub_18E1D4CFC();
        swift_beginAccess();
        sub_18E44D398();
        v129 = sub_18E1D5C74();
        sub_18E1C9624(v129, v43, v130);
        sub_18E1D0444();

        sub_18E1E39BC();
        *(v127 + 14) = v24;
        sub_18E1DD2E8(&dword_18E1C1000, v131, v132, "%s sync: method returned non-nil result, num connection attempts:%lu");
        sub_18E1CF2EC();
        sub_18E1C6164();
        MEMORY[0x193ACD400]();

        sub_18E1CEB50();
        sub_18E25E204(&a12);
        swift_unknownObjectRelease();
        sub_18E1E8A2C();
        v134 = sub_18E1C69C4();
        v135(v134);
        sub_18E1CF42C();
        sub_18E1D002C();
      }

      else
      {

        sub_18E1CEB50();
        sub_18E25E204(&a12);
        swift_unknownObjectRelease();
        v149 = sub_18E1D63DC();
        v150(v149);
        sub_18E1CF42C();
      }

      swift_unknownObjectRelease();
      sub_18E240AB4();
    }

    else
    {
      if (qword_1ED6A9020 != -1)
      {
        sub_18E1C6A1C();
        v121 = swift_once();
      }

      sub_18E1C8658(v121, qword_1ED6A9028);
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E1C5904();
      sub_18E1E19C0();
      v137();
      v138 = sub_18E44E80C();
      v139 = sub_18E44EE0C();
      if (sub_18E207A34(v139))
      {
        sub_18E1C9700();
        swift_slowAlloc();
        sub_18E1CA69C();
        v140 = swift_slowAlloc();
        sub_18E2200C8(v140);
        sub_18E243124(4.8151e-34);
        sub_18E223F48();
        sub_18E1D4CFC();
        swift_beginAccess();
        sub_18E1CFDD4();
        v141 = sub_18E1D5C74();
        sub_18E1C9624(v141, v23, v142);
        sub_18E1E7BA8();
        sub_18E1E6B80();

        sub_18E1E1764();
        sub_18E220934(&v159);
        sub_18E1E1F74();
        sub_18E1EA5B8(v143, v144, v145, v146);
        sub_18E1CFCC0();
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
        sub_18E1C6164();
        MEMORY[0x193ACD400]();

        sub_18E1D025C();
        v147();
      }

      else
      {

        sub_18E1D025C();
        v151();
      }

      v152 = sub_18E2885F0();
      v153 = sub_18E1C8558(&type metadata for XPCServiceError, v152);
      sub_18E1E1254(v153, v154);
      sub_18E1CF42C();
      sub_18E2352D0();
      swift_unknownObjectRelease_n();

      sub_18E1CEB50();
    }
  }

LABEL_3:
  sub_18E2245CC();
  sub_18E1E6AEC();
}

void sub_18E444F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1CFB3C();
  a19 = v24;
  a20 = v25;
  v26 = v20;
  v28 = v27;
  v30 = v29;
  v31 = sub_18E44E83C();
  v32 = sub_18E1C5E70(v31, &a14);
  v34 = v33;
  MEMORY[0x1EEE9AC00](v32);
  sub_18E1C86C0();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v35);
  sub_18E1E6498();
  MEMORY[0x1EEE9AC00](v36);
  sub_18E220544();
  MEMORY[0x1EEE9AC00](v37);
  sub_18E1CA6A8();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v157 - v39;
  v41 = *(v30 + 16);
  os_unfair_lock_lock(v41 + 6);
  sub_18E1CEB5C(&v41[4]._os_unfair_lock_opaque);
  if (v20)
  {
    goto LABEL_2;
  }

  v162 = v40;
  v166 = v30;
  v157[3] = v23;
  v42 = *&v41[4]._os_unfair_lock_opaque;
  if (!v42)
  {
    v79 = sub_18E2885F0();
    sub_18E1C8558(&type metadata for XPCServiceError, v79);
    *v80 = 0;
    swift_willThrow();
LABEL_2:
    os_unfair_lock_unlock(v41 + 6);
    goto LABEL_3;
  }

  v157[2] = v22;
  v157[0] = v21;
  v157[1] = 0;
  sub_18E216810(v42, &a9);
  sub_18E1E2078();
  v163 = v44;
  v165 = v34 + 16;
  v45 = (v34 + 8);
  *&v46 = 136315650;
  v159 = v46;
  v158 = (v34 + 8);
  v164 = v28;
  while (1)
  {
    v47 = v43 + 1;
    if (v43 == -1)
    {
      __break(1u);
LABEL_41:
      sub_18E1C6A1C();
      v60 = swift_once();
LABEL_22:
      sub_18E1C8658(v60, qword_1ED6A9028);
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E1E8A2C();
      v105 = sub_18E1E8838();
      v106(v105);
      v107 = v26;
      v108 = sub_18E44E80C();
      v109 = sub_18E44EE0C();

      if (os_log_type_enabled(v108, v109))
      {
        sub_18E1CA69C();
        v110 = swift_slowAlloc();
        sub_18E20809C();
        v166 = swift_slowAlloc();
        sub_18E1CA69C();
        v111 = swift_slowAlloc();
        v173 = sub_18E223724(v111);
        LODWORD(v112) = sub_18E1D5E20().n128_u32[0];
        sub_18E1E2E5C(v112);
        v161 = v47;
        sub_18E1D4CFC();
        swift_beginAccess();
        sub_18E228810();
        v113 = sub_18E1D84BC();
        sub_18E1C9624(v113, v41, v114);
        sub_18E1CEA58();
        sub_18E239C9C();
        v115 = _swift_stdlib_bridgeErrorToNSError();
        *(v110 + 14) = v115;
        sub_18E1FF324(v115, &v177);
        *(v110 + 22) = v116;
        sub_18E1CEB50();
        *(v110 + 24) = v117;
        sub_18E1E3200();
        _os_log_impl(v118, v119, v120, v121, v122, 0x20u);
        sub_18E32F548(v45);
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
        sub_18E1CF2EC();
        sub_18E1C6164();
        MEMORY[0x193ACD400]();

        v123 = sub_18E1CF4CC();
      }

      else
      {

        v123 = sub_18E1E3A7C();
      }

      v124(v123);
      swift_willThrow();

      sub_18E2352D0();
      swift_unknownObjectRelease_n();
      sub_18E1CD984();

      sub_18E1E29C4();
LABEL_26:

      sub_18E1E85B4();
      goto LABEL_3;
    }

    v167 = v43;
    sub_18E1CC494();
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    v175[4] = sub_18E44D310;
    v176 = v48;
    sub_18E1C8480();
    sub_18E1C80EC();
    v175[2] = v49;
    v175[3] = &unk_1F018B380;
    v50 = _Block_copy(v175);

    v51 = sub_18E20067C();
    v41 = [v51 v52];
    _Block_release(v50);
    sub_18E1CC494();
    v53 = swift_allocObject();
    *(v53 + 16) = 0;
    sub_18E1CC494();
    v54 = swift_allocObject();
    sub_18E1D1A18(v54);
    sub_18E1CD8AC();
    v55 = swift_allocObject();
    *(v55 + 16) = v40;
    *(v55 + 24) = v53;
    swift_unknownObjectRetain();
    v169 = v40;
    v56 = v164;

    v170 = v53;

    sub_18E27C978(v41, sub_18E44D248, v55, v56);

    sub_18E1D4CFC();
    swift_beginAccess();
    v26 = *(v48 + 16);
    v168 = v48;
    if (!v26)
    {
      break;
    }

    v57 = v26;
    v58 = v26;
    v59 = sub_18E280314(v26, v47);

    if (!v59)
    {
      if (qword_1ED6A9020 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_41;
    }

    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      swift_once();
    }

    v61 = sub_18E25E204(&a14);
    sub_18E1C95EC(v61, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E1E8A2C();
    v62 = sub_18E1E8838();
    v63(v62);
    v64 = v26;
    v65 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E1E3CD0();
    if (sub_18E2217FC())
    {
      sub_18E1CA69C();
      v66 = swift_slowAlloc();
      sub_18E20809C();
      v67 = swift_slowAlloc();
      sub_18E1CA69C();
      v68 = swift_slowAlloc();
      sub_18E240598(v68, &v174);
      *v66 = sub_18E1D5E20().n128_u32[0];
      v161 = v47;
      sub_18E1D4CFC();
      swift_beginAccess();
      v69 = off_1EABE9330;
      v160 = v41;

      v70 = sub_18E24707C();
      sub_18E1C9624(v70, v69, v71);
      sub_18E1D0444();
      v41 = v171;

      *(v66 + 4) = &qword_1EABE9328;
      *(v66 + 12) = 2112;
      v72 = v26;
      v73 = _swift_stdlib_bridgeErrorToNSError();
      *(v66 + 14) = v73;
      sub_18E1D0074(v73);
      *(v66 + 22) = v74;
      sub_18E1CEB50();
      *(v66 + 24) = v75;
      _os_log_impl(&dword_18E1C1000, v65, v48, "%s sync: connection error during call: %@, num connection attempts: %lu", v66, 0x20u);
      sub_18E32F548(v67);
      v45 = v158;
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1E9CA8();
      sub_18E1E2C2C();
      v76 = sub_18E1C86D0();
      MEMORY[0x193ACD400](v76);

      sub_18E1DD3C0(v175);
      swift_unknownObjectRelease();

      (*v45)(v40, v41);
    }

    else
    {

      swift_unknownObjectRelease();
      v77 = sub_18E1E3A7C();
      v78(v77);
    }

    sub_18E1D002C();

    sub_18E1CD984();

    sub_18E1E29C4();

    swift_unknownObjectRelease();
    v43 = v167 + 1;
  }

  v81 = v170;
  sub_18E1D4CFC();
  swift_beginAccess();
  v82 = *(v81 + 16);
  if (v82)
  {
    v83 = v82;
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      swift_once();
    }

    sub_18E1CBEB4(v171, qword_1ED6A9028);
    sub_18E1E8A2C();
    v84 = sub_18E1E6718();
    v85(v84);
    v86 = v82;
    v87 = sub_18E44E80C();
    v88 = sub_18E44EE0C();

    if (os_log_type_enabled(v87, v88))
    {
      sub_18E1CA69C();
      v89 = swift_slowAlloc();
      LODWORD(v166) = v88;
      v90 = v89;
      sub_18E20809C();
      v165 = swift_slowAlloc();
      sub_18E1CA69C();
      v91 = swift_slowAlloc();
      v172 = sub_18E223724(v91);
      LODWORD(v92) = sub_18E1D5E20().n128_u32[0];
      sub_18E1E8ADC(v92);
      v161 = v47;
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E228810();
      v93 = sub_18E1E3D6C();
      sub_18E1C9624(v93, v41, v94);
      sub_18E1CEA58();
      sub_18E1E22D0();
      v95 = _swift_stdlib_bridgeErrorToNSError();
      *(v90 + 14) = v95;
      sub_18E1FF324(v95, &v176);
      *(v90 + 22) = v96;
      sub_18E1CEB50();
      *(v90 + 24) = v97;
      sub_18E1E1F74();
      sub_18E1D5FA8();
      _os_log_impl(v98, v99, v100, v101, v102, 0x20u);
      sub_18E32F548(v45);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1CF2EC();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    v103 = sub_18E1D63DC();
    v104(v103);
    swift_willThrow();

    sub_18E2352D0();
    swift_unknownObjectRelease_n();
    sub_18E1CD984();

    sub_18E1E29C4();

    sub_18E1E85B4();
    goto LABEL_3;
  }

  v125 = v169;
  sub_18E1D4CFC();
  swift_beginAccess();
  v126 = *(v125 + 2);
  if (!v126)
  {
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      swift_once();
    }

    v140 = v171;
    v141 = sub_18E1C95EC(v171, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E1E8A2C();
    v142(v157[4], v141, v140);
    v143 = sub_18E44E80C();
    v144 = sub_18E44EE0C();
    if (sub_18E207A34(v144))
    {
      sub_18E1C9700();
      v145 = swift_slowAlloc();
      sub_18E1CA69C();
      v146 = swift_slowAlloc();
      v160 = v41;
      sub_18E2200C8(v146);
      sub_18E243124(4.8151e-34);
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E1CFDD4();
      v147 = sub_18E1D5C74();
      sub_18E1C9624(v147, v45, v148);
      sub_18E1E6B80();

      sub_18E1E1764();
      *(v145 + 14) = v47;
      sub_18E1EA5B8(&dword_18E1C1000, v149, v144, "%s sync: throwing neither result or error returned, num connection attempts:%lu");
      sub_18E1CFCC0();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    v150 = sub_18E1CF4CC();
    v151(v150);
    v154 = sub_18E2885F0();
    v155 = sub_18E1C8558(&type metadata for XPCServiceError, v154);
    sub_18E224E88(v155, v156);

    sub_18E2352D0();
    swift_unknownObjectRelease_n();
    sub_18E1CD984();

    goto LABEL_26;
  }

  v160 = v41;
  v127 = v126;
  sub_18E1D49FC();
  if (!v129)
  {
    sub_18E1C6A1C();
    v128 = swift_once();
  }

  sub_18E1CB0FC(v128, qword_1ED6A9028);
  sub_18E1D4CFC();
  swift_beginAccess();
  sub_18E1E8A2C();
  sub_18E1D42A4();
  v130();
  v131 = sub_18E44E80C();
  sub_18E44EDFC();
  sub_18E1E3E30();
  if (os_log_type_enabled(v131, v132))
  {
    sub_18E1C9700();
    v133 = swift_slowAlloc();
    sub_18E1CA69C();
    v134 = swift_slowAlloc();
    sub_18E221F1C(v134);
    sub_18E1E2ABC(4.8151e-34);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E44D398();
    v135 = sub_18E1D5C74();
    sub_18E1C9624(v135, v56, v136);
    sub_18E1D0444();

    sub_18E1E39BC();
    *(v133 + 14) = v48;
    sub_18E1DD2E8(&dword_18E1C1000, v137, v138, "%s sync: method returned non-nil result, num connection attempts:%lu");
    sub_18E1CF2EC();
    sub_18E1C6164();
    MEMORY[0x193ACD400]();

    sub_18E1E85B4();
    sub_18E25E204(v175);
    swift_unknownObjectRelease();
    sub_18E1C5BD8();
    sub_18E1E1028();
    v139();
    sub_18E1D002C();

    sub_18E1CD984();

    sub_18E1E29C4();
  }

  else
  {

    sub_18E1E85B4();
    sub_18E25E204(v175);
    swift_unknownObjectRelease();
    v152 = sub_18E1E3A7C();
    v153(v152);

    sub_18E1CD984();
  }

  swift_unknownObjectRelease();
LABEL_3:
  sub_18E1E19E4();
  sub_18E1E6AEC();
}

void XPCServiceClientConnection.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1CFB3C();
  a19 = v24;
  a20 = v25;
  v201 = v22;
  v27 = v26;
  v191 = v28;
  v190 = v29;
  v31 = v30;
  v32 = sub_18E44EEFC();
  v33 = sub_18E1C5E70(v32, &a13);
  v180 = v34;
  MEMORY[0x1EEE9AC00](v33);
  v179 = &v171 - v35;
  sub_18E1E3AE4();
  v177 = v36;
  MEMORY[0x1EEE9AC00](v37);
  sub_18E1C4EDC();
  v178 = v39 - v38;
  v40 = sub_18E44E83C();
  v41 = sub_18E1C5E70(v40, &v206);
  v199 = v42;
  MEMORY[0x1EEE9AC00](v41);
  sub_18E1C86C0();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v43);
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v44);
  sub_18E1C5738();
  MEMORY[0x1EEE9AC00](v45);
  sub_18E1E6498();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v171 - v47;
  v49 = *(v21 + 16);
  v193 = v27;
  v202[2] = v27;
  v203 = v21;
  sub_18E1E9E14();
  v51 = *(v50 + 80);
  sub_18E1E9E14();
  v53 = *(v52 + 88);
  v55 = type metadata accessor for XPCServiceClientConnection.State(0, v51, v53, v54);
  v56 = sub_18E1D121C(0, &qword_1EABE93B8, 0x1E696B0B8);
  v57 = v201;
  sub_18E224B04(sub_18E44D31C, v202, v49, v55, v56);
  if (!v57)
  {
    v185 = v21;
    v175 = v48;
    v173 = v23;
    v174 = v20;
    v171 = 0;
    v200 = v51;
    v189 = v207[0];
    sub_18E235354();
    v187 = v58;
    v186 = v53 + 64;
    v59 = (v199 + 8);
    v188 = v53;
    v184 = v53 + 24;
    *&v60 = 136315650;
    v183 = v60;
    sub_18E220A1C();
    v182 = v59;
    v172 = v31;
    while (1)
    {
      v201 = v61 + 1;
      if (v61 == -1)
      {
        __break(1u);
        return;
      }

      v195 = v61;
      sub_18E1CC494();
      v62 = swift_allocObject();
      *(v62 + 16) = 0;
      v63 = (v62 + 16);
      v208[1] = sub_18E44D310;
      v208[2] = v62;
      v207[0] = MEMORY[0x1E69E9820];
      v207[1] = 1107296256;
      sub_18E1C80EC();
      v207[2] = v64;
      v208[0] = &unk_1F018AC08;
      v65 = _Block_copy(v207);
      v199 = v62;

      v66 = sub_18E1CF994();
      v68 = [v66 v67];
      _Block_release(v65);
      sub_18E1CC494();
      v69 = swift_allocObject();
      sub_18E1D1A18(v69);
      sub_18E1CD984();
      v70 = swift_allocBox();
      sub_18E207B14();
      sub_18E201DC8(v71, v72, v73, v31);
      v74 = swift_allocObject();
      v74[2] = v200;
      v74[3] = v31;
      v31 = v188;
      v74[4] = v188;
      v74[5] = v70;
      v74[6] = v53;
      swift_unknownObjectRetain();
      v198 = v70;

      v196 = v68;
      sub_18E1E15E8();
      v75();

      sub_18E1D4CFC();
      swift_beginAccess();
      v76 = *v63;
      v197 = v53;
      if (!v76)
      {
        break;
      }

      v77 = v76;
      v78 = v76;
      v79 = sub_18E447AD4(v76, v201);

      if (!v79)
      {
        v118 = v175;
        v119 = sub_18E1DD5F8();
        v120(v119);
        v121 = v76;
        v122 = sub_18E44E80C();
        v123 = sub_18E44EE0C();

        if (os_log_type_enabled(v122, v123))
        {
          sub_18E1CA69C();
          v124 = swift_slowAlloc();
          sub_18E20809C();
          v194 = swift_slowAlloc();
          sub_18E1CA69C();
          v125 = swift_slowAlloc();
          sub_18E240598(v125, &a16);
          sub_18E2208D8();
          v126 = sub_18E1DD5F8();
          v128 = v127(v126);
          v130 = v129;
          v131 = sub_18E1C9624(v128, v129, v207);

          *(v124 + 4) = v131;
          *(v124 + 12) = 2112;
          v132 = v76;
          v133 = _swift_stdlib_bridgeErrorToNSError();
          sub_18E1CFE74(v133);
          _os_log_impl(&dword_18E1C1000, v122, v123, "%s sync: connection error during call: %@ reached max num connection attempts: %lu", v124, 0x20u);
          sub_18E32F548(v130);
          v134 = sub_18E1C86D0();
          MEMORY[0x193ACD400](v134);
          v135 = sub_18E1DD3C0(&a16);
          sub_18E1C9934(v135);
          v136 = sub_18E1C86D0();
          MEMORY[0x193ACD400](v136);
          sub_18E1C6164();
          MEMORY[0x193ACD400]();

          (*v59)(v175, v48);
        }

        else
        {

          (*v59)(v118, v48);
        }

LABEL_16:
        swift_willThrow();

        swift_unknownObjectRelease_n();
        sub_18E234A08();

        sub_18E1E83C0();
        goto LABEL_26;
      }

      v80 = v194;
      v81 = sub_18E1DD5F8();
      v82(v81);
      v83 = v76;
      v84 = sub_18E44E80C();
      v53 = sub_18E44EE0C();

      if (os_log_type_enabled(v84, v53))
      {
        sub_18E1CA69C();
        v85 = swift_slowAlloc();
        sub_18E20809C();
        v86 = swift_slowAlloc();
        sub_18E1CA69C();
        v87 = swift_slowAlloc();
        sub_18E240598(v87, v208);
        *v85 = v183;
        v88 = sub_18E1DD5F8();
        v90 = v89(v88);
        v31 = v48;
        v92 = sub_18E1E1C90(v90, v91);

        *(v85 + 4) = v92;
        v48 = v31;
        *(v85 + 12) = 2112;
        v93 = v76;
        v94 = _swift_stdlib_bridgeErrorToNSError();
        *(v85 + 14) = v94;
        *v86 = v94;
        *(v85 + 22) = 2048;
        *(v85 + 24) = v201;
        _os_log_impl(&dword_18E1C1000, v84, v53, "%s sync: connection error during call: %@, num connection attempts: %lu", v85, 0x20u);
        sub_18E32F548(v86);
        v59 = v182;
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
        v95 = sub_18E1DD3C0(v208);
        sub_18E1C9934(v95);
        v96 = sub_18E1C86D0();
        MEMORY[0x193ACD400](v96);
        v97 = v194;
        sub_18E1C6164();
        MEMORY[0x193ACD400]();

        sub_18E1DD3C0(&a17);
        swift_unknownObjectRelease();

        (*v59)(v97, v31);
      }

      else
      {

        sub_18E1DD3C0(&a17);
        swift_unknownObjectRelease();
        (*v59)(v80, v48);
      }

      sub_18E234A08();

      swift_unknownObjectRelease();
      v61 = v195 + 1;
    }

    sub_18E1D4CFC();
    swift_beginAccess();
    v98 = *(v53 + 16);
    v99 = v174;
    if (v98)
    {
      v100 = *(v31 + 64);
      v101 = v98;
      v102 = v173;
      v100(v200, v31);
      v103 = v98;
      v104 = sub_18E44E80C();
      v105 = sub_18E44EE0C();

      if (os_log_type_enabled(v104, v105))
      {
        sub_18E1CA69C();
        v106 = swift_slowAlloc();
        sub_18E20809C();
        v194 = swift_slowAlloc();
        sub_18E1CA69C();
        v195 = swift_slowAlloc();
        v205[0] = v195;
        sub_18E2208D8();
        sub_18E200EEC();
        v108 = v107();
        v109 = v105;
        v111 = v110;
        v112 = sub_18E1C9624(v108, v110, v205);

        *(v106 + 4) = v112;
        *(v106 + 12) = 2112;
        v113 = v98;
        v114 = _swift_stdlib_bridgeErrorToNSError();
        sub_18E1CFE74(v114);
        _os_log_impl(&dword_18E1C1000, v104, v109, "%s sync: method error during call: %@, num connection attempts:%lu", v106, 0x20u);
        sub_18E32F548(v111);
        v115 = sub_18E1C86D0();
        MEMORY[0x193ACD400](v115);
        v116 = sub_18E1DD3C0(&a16);
        sub_18E1C9934(v116);
        v117 = sub_18E1C86D0();
        MEMORY[0x193ACD400](v117);
        sub_18E1C6164();
        MEMORY[0x193ACD400]();

        (*v59)(v173, v48);
      }

      else
      {

        (*v59)(v102, v48);
      }

      goto LABEL_16;
    }

    sub_18E1D4CFC();
    swift_beginAccess();
    v137 = v180;
    v138 = v179;
    v139 = v192;
    (*(v180 + 16))();
    v140 = v193;
    if (sub_18E1CAF28(v138, 1, v193) == 1)
    {
      (*(v137 + 8))(v138, v139);
      v141 = v176;
      v142 = sub_18E1DD5F8();
      v143(v142);
      v144 = sub_18E44E80C();
      v145 = sub_18E44EE0C();
      if (os_log_type_enabled(v144, v145))
      {
        sub_18E1C9700();
        v146 = swift_slowAlloc();
        sub_18E1CA69C();
        v204 = swift_slowAlloc();
        *v146 = 136315394;
        sub_18E200EEC();
        v148 = v147();
        sub_18E1C9624(v148, v149, &v204);
        sub_18E1E187C();

        *(v146 + 4) = v141;
        sub_18E2209DC();
        sub_18E221C04(&dword_18E1C1000, v150, v151, "%s sync: throwing neither result or error returned, num connection attempts:%lu");
        sub_18E1CFCC0();
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
        v152 = sub_18E1C86D0();
        MEMORY[0x193ACD400](v152);
      }

      (*v59)(v141, v48);
      v168 = sub_18E2885F0();
      v169 = sub_18E1C8558(&type metadata for XPCServiceError, v168);
      sub_18E224E88(v169, v170);

      sub_18E1CFA94();
      swift_unknownObjectRelease_n();

      sub_18E1E83C0();
    }

    else
    {
      v154 = v177 + 32;
      v153 = *(v177 + 32);
      v155 = v178;
      v153(v178, v138, v140);
      v156 = sub_18E1DD5F8();
      v157(v156);
      v158 = v99;
      v159 = sub_18E44E80C();
      v160 = sub_18E44EDFC();
      if (os_log_type_enabled(v159, v160))
      {
        sub_18E1C9700();
        v161 = swift_slowAlloc();
        sub_18E1CA69C();
        v204 = swift_slowAlloc();
        *v161 = 136315394;
        sub_18E200EEC();
        v163 = v162();
        sub_18E1C9624(v163, v164, &v204);
        sub_18E1E187C();

        *(v161 + 4) = v154;
        sub_18E2209DC();
        sub_18E221C04(&dword_18E1C1000, v165, v166, "%s sync: method returned non-nil result, num connection attempts:%lu");
        sub_18E1CFCC0();
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
        v167 = sub_18E1C86D0();
        MEMORY[0x193ACD400](v167);

        sub_18E1DD3C0(&a17);
        swift_unknownObjectRelease();
        sub_18E1E83C0();
        (*v59)(v174, v181);
        v155 = v178;
      }

      else
      {

        sub_18E1DD3C0(&a17);
        swift_unknownObjectRelease();
        sub_18E1E83C0();
        (*v59)(v158, v181);
      }

      swift_unknownObjectRelease();
      v153(v172, v155, v193);
    }
  }

LABEL_26:
  sub_18E1E19E4();
  sub_18E1E6AEC();
}

{
  sub_18E1CFB3C();
  a19 = v23;
  a20 = v24;
  v137 = v22;
  v25 = v21;
  v27 = v26;
  v131 = v28;
  v132 = v29;
  v116 = v30;
  v31 = *v21;
  v133 = sub_18E44E83C();
  sub_18E1C4EAC();
  v136 = v32;
  MEMORY[0x1EEE9AC00](v33);
  sub_18E1C86C0();
  v36 = v34 - v35;
  MEMORY[0x1EEE9AC00](v37);
  sub_18E1C5738();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v115 - v39;
  sub_18E1E3AE4();
  v118 = v41;
  MEMORY[0x1EEE9AC00](v42);
  sub_18E1C4EDC();
  v117 = (v44 - v43);
  v45 = v25[2];
  v138[2] = v27;
  v138[3] = v25;
  v46 = *(v31 + 80);
  v47 = *(v31 + 88);
  v49 = type metadata accessor for XPCServiceClientConnection.State(0, v46, v47, v48);
  v50 = sub_18E1D121C(0, &qword_1EABE93B8, 0x1E696B0B8);
  v51 = v137;
  sub_18E224B04(sub_18E44C378, v138, v45, v49, v50);
  if (!v51)
  {
    v128 = v46;
    v115[0] = 0;
    v115[1] = v20;
    sub_18E243B34();
    v130 = v139[0];
    sub_18E235354();
    v126 = v52;
    v129 = (v136 + 8);
    sub_18E1E3684();
    v125 = v40 + 8;
    v121 = v47 + 24;
    *&v54 = 136315650;
    v119 = v54;
    v55 = v117;
    v124 = v47;
    v120 = v27;
    v123 = v25;
    v127 = v56;
    while (1)
    {
      v137 = v53 + 1;
      if (v53 == -1)
      {
        __break(1u);
        return;
      }

      v135 = v53;
      sub_18E1CC494();
      v57 = swift_allocObject();
      *(v57 + 16) = 0;
      v139[4] = sub_18E44C394;
      v139[5] = v57;
      v139[0] = MEMORY[0x1E69E9820];
      v139[1] = 1107296256;
      sub_18E1C80EC();
      v139[2] = v58;
      v139[3] = &unk_1F018AC58;
      _Block_copy(v139);
      sub_18E1CF544();

      v59 = [v130 synchronousRemoteObjectProxyWithErrorHandler_];
      _Block_release(v139);
      v60 = swift_unknownObjectRetain();
      v131(v60);
      sub_18E1D4CFC();
      swift_beginAccess();
      v61 = *(v57 + 16);
      v136 = v59;
      if (!v61)
      {
        break;
      }

      v62 = v61;
      v63 = v61;
      v64 = sub_18E447AD4(v61, v137);

      v65 = *v127;
      v134 = v57;
      if (!v64)
      {
        v100 = v128;
        v65(v128, v47);
        v101 = v61;
        v102 = sub_18E44E80C();
        v103 = sub_18E44EE0C();

        LODWORD(v135) = v103;
        if (sub_18E221E1C())
        {
          sub_18E1CA69C();
          v104 = swift_slowAlloc();
          sub_18E20809C();
          v27 = swift_slowAlloc();
          sub_18E1CA69C();
          v105 = swift_slowAlloc();
          v139[0] = v105;
          *v104 = v119;
          v106 = *(v47 + 24);
          v132 = v102;
          v107 = v106(v100, v47);
          sub_18E1E1C90(v107, v108);
          sub_18E1CF9C4();

          *(v104 + 4) = v103;
          *(v104 + 12) = 2112;
          v109 = v61;
          v110 = _swift_stdlib_bridgeErrorToNSError();
          *(v104 + 14) = v110;
          *v27 = v110;
          *(v104 + 22) = 2048;
          *(v104 + 24) = v137;
          v55 = v132;
          _os_log_impl(&dword_18E1C1000, v132, v135, "%s sync: connection error during call: %@ reached max num connection attempts: %lu", v104, 0x20u);
          sub_18E32F548(v27);
          sub_18E1E38FC();
          sub_18E1C9934(v105);
          sub_18E1C6164();
          MEMORY[0x193ACD400]();
          sub_18E1C6164();
          MEMORY[0x193ACD400]();

          sub_18E1E8A2C();
          v111 = sub_18E1D8224();
        }

        else
        {

          sub_18E1E8A2C();
          v111 = v115[2];
          v112 = v133;
        }

        v113(v111, v112);
        swift_willThrow();

        swift_unknownObjectRelease();
        sub_18E1E8A2C();
        v114(v55, v27);

        swift_unknownObjectRelease();
        goto LABEL_18;
      }

      v66 = sub_18E2370E8();
      v67(v66, v47);
      v68 = v61;
      v69 = sub_18E44E80C();
      v70 = sub_18E44EE0C();

      if (os_log_type_enabled(v69, v70))
      {
        sub_18E1CA69C();
        v27 = swift_slowAlloc();
        sub_18E20809C();
        v71 = swift_slowAlloc();
        sub_18E223724(v71);
        sub_18E1CA69C();
        v72 = swift_slowAlloc();
        sub_18E240598(v72, &a11);
        *v27 = v119;
        v73 = sub_18E2370E8();
        v75 = v74(v73, v47);
        v77 = v55;
        v78 = sub_18E1E1C90(v75, v76);

        *(v27 + 4) = v78;
        v55 = v77;
        v79 = v129;
        *(v27 + 12) = 2112;
        v80 = v61;
        v81 = _swift_stdlib_bridgeErrorToNSError();
        *(v27 + 14) = v81;
        v82 = v122;
        *v122 = v81;
        *(v27 + 22) = 2048;
        *(v27 + 24) = v137;
        sub_18E243EFC(&dword_18E1C1000, v69, v70, "%s sync: connection error during call: %@, num connection attempts: %lu");
        sub_18E32F548(v82);
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
        v83 = sub_18E25E204(&a11);
        sub_18E1C9934(v83);
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
        sub_18E1E38FC();

        sub_18E201AE4();
        (*v79)(v36, v133);
      }

      else
      {

        sub_18E201AE4();
        sub_18E1E8A2C();
        v84(v36, v133);
      }

      sub_18E1E8A2C();
      v85(v55, v27);

      swift_unknownObjectRelease();
      v53 = v135 + 1;
      v47 = v124;
    }

    v86 = sub_18E2370E8();
    v87(v86, v47);
    v88 = sub_18E44E80C();
    v89 = sub_18E44EDFC();
    if (os_log_type_enabled(v88, v89))
    {
      sub_18E1C9700();
      v90 = swift_slowAlloc();
      sub_18E1CA69C();
      v91 = swift_slowAlloc();
      sub_18E240E98(v91);
      *v90 = 136315394;
      LODWORD(v135) = v89;
      v92 = sub_18E2370E8();
      v94 = v93(v92, v47);
      v55 = v57;
      v96 = sub_18E1E1C90(v94, v95);

      *(v90 + 4) = v96;
      *(v90 + 12) = 2048;
      *(v90 + 14) = v137;
      _os_log_impl(&dword_18E1C1000, v88, v135, "%s sync: method returned result, num connection attempts: %lu", v90, 0x16u);
      sub_18E1E1D6C();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E201AE4();
      sub_18E1E8A2C();
      v97 = sub_18E1D8224();
    }

    else
    {

      sub_18E201AE4();
      v97 = sub_18E1C2AA0();
      v98 = v133;
    }

    v99(v97, v98);
    swift_unknownObjectRelease();
    (*(v118 + 32))(v116, v55, v27);
  }

LABEL_18:
  sub_18E1E6AEC();
}

uint64_t XPCServiceClientConnection.callAsync<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = *v4;
  return sub_18E1CFD98(sub_18E446A6C);
}

uint64_t sub_18E446A6C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v6 = type metadata accessor for XPCServiceClientConnection.State(0, *(v1 + 80), *(v1 + 88), v5);
  sub_18E1D121C(0, &qword_1EABE93B8, 0x1E696B0B8);
  sub_18E1D0498();
  sub_18E224B04(v7, v8, v9, v6, v10);

  v0[9] = v0[2];
  v11 = swift_task_alloc();
  v0[10] = v11;
  sub_18E23339C(v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
  swift_task_alloc();
  sub_18E2016A8();
  v0[11] = v21;
  *v21 = v22;
  v21[1] = sub_18E446C38;
  v23 = v0[3];

  return MEMORY[0x1EEE6DE38](v23);
}

uint64_t sub_18E446C38()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v3 = v2;
  v4 = *v1;
  sub_18E1C52E0();
  *v5 = v4;
  *(v3 + 96) = v0;

  if (v0)
  {
    v6 = sub_18E446DA0;
  }

  else
  {

    v6 = sub_18E446D44;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_18E446D44()
{
  sub_18E1C52F0();

  sub_18E1D008C();

  return v1();
}

uint64_t sub_18E446DA0()
{
  sub_18E1C52F0();

  sub_18E1D008C();

  return v1();
}

void *XPCServiceClientConnection.init(delegate:)()
{
  sub_18E1CD8B8();
  v1[3] = 2;
  v1[5] = 0;
  swift_unknownObjectWeakInit();
  sub_18E1E9E14();
  sub_18E1E9E14();
  v3 = *(v2 + 88);
  v8 = 0;
  v6 = type metadata accessor for XPCServiceClientConnection.State(0, v4, v3, v5);
  v1[2] = sub_18E446EAC(&v8, v6);
  v1[5] = v0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_18E446EAC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, a2);
  v7 = sub_18E44C21C(v6, a2);
  (*(v4 + 8))(a1, a2);
  return v7;
}

void sub_18E446F94()
{
  sub_18E1CFB3C();
  v52 = v3;
  v4 = *v0;
  v5 = sub_18E44E83C();
  sub_18E1C4EAC();
  v51 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1CA254();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = v0[5];
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(ObjectType, v11);
    if (!v1 && !v52->isa)
    {
      v13 = *(v4 + 80);
      v14 = *(v4 + 88);
      v15 = *(v14 + 64);
      v50 = v14;
      v46 = v15;
      v47 = v14 + 64;
      (v15)(v13);
      v16 = sub_18E44E80C();
      LODWORD(v48) = sub_18E44EE2C();
      v17 = os_log_type_enabled(v16, v48);
      v49 = v13;
      if (v17)
      {
        v18 = sub_18E1C5F74();
        v44 = v18;
        sub_18E1CA69C();
        v45 = swift_slowAlloc();
        v53 = v45;
        *v18 = 136315138;
        v19 = (*(v50 + 24))(v13);
        sub_18E1C9624(v19, v20, &v53);
        sub_18E1CF9C4();

        v21 = v44;
        *(v44 + 1) = v13;
        _os_log_impl(&dword_18E1C1000, v16, v48, "%s: establishing connection.", v21, 0xCu);
        sub_18E1E1D6C();
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
      }

      v48 = *(v51 + 8);
      v48(v10, v5);
      sub_18E1D121C(0, &qword_1EABE93B8, 0x1E696B0B8);
      v23 = v50 + 24;
      v22 = *(v50 + 24);
      v24 = v22();
      v26 = sub_18E44755C(v24, v25, 0);
      v52->isa = v26;
      if (!v26)
      {
        v46();
        v37 = sub_18E44E80C();
        v38 = sub_18E44EE0C();
        v52 = v37;
        if (os_log_type_enabled(v37, v38))
        {
          v39 = sub_18E1C5F74();
          sub_18E1CA69C();
          v47 = swift_slowAlloc();
          v53 = v47;
          *v39 = 136315138;
          v40 = v22();
          sub_18E1C9624(v40, v41, &v53);
          sub_18E1E187C();

          *(v39 + 4) = v23;
          v42 = v52;
          _os_log_impl(&dword_18E1C1000, v52, v38, "%s: did not create connection.", v39, 0xCu);
          sub_18E1E1D6C();
          sub_18E1C6164();
          MEMORY[0x193ACD400]();
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        v48(v2, v5);
        goto LABEL_9;
      }

      v27 = v26;
      v28 = v49;
      v29 = v50;
      v30 = static XPCService.xpcInterface()();
      [(objc_class *)v27 setRemoteObjectInterface:v30];

      sub_18E1CC494();
      v31 = swift_allocObject();
      swift_weakInit();
      sub_18E1E3428();
      v32 = swift_allocObject();
      v32[2] = v28;
      v32[3] = v29;
      v32[4] = v31;
      v57 = sub_18E44CF54;
      v58 = v32;
      v53 = MEMORY[0x1E69E9820];
      v54 = 1107296256;
      v55 = sub_18E203E04;
      v56 = &unk_1F018B218;
      v33 = _Block_copy(&v53);

      [(objc_class *)v27 setInterruptionHandler:v33];
      _Block_release(v33);
      sub_18E1CC494();
      v34 = swift_allocObject();
      swift_weakInit();
      sub_18E1E3428();
      v35 = swift_allocObject();
      v35[2] = v28;
      v35[3] = v29;
      v35[4] = v34;
      v57 = sub_18E44CF88;
      v58 = v35;
      v53 = MEMORY[0x1E69E9820];
      v54 = 1107296256;
      v55 = sub_18E203E04;
      v56 = &unk_1F018B268;
      v36 = _Block_copy(&v53);

      [(objc_class *)v27 setInvalidationHandler:v36];
      _Block_release(v36);
      [(objc_class *)v27 resume];
    }

    swift_unknownObjectRelease();
LABEL_9:
    sub_18E1E6AEC();
    return;
  }

  sub_18E44F14C();
  __break(1u);
}

id sub_18E44755C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_18E44EA8C();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

uint64_t sub_18E4475D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18E44E83C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 64))(a2, a3);
  v10 = sub_18E44E80C();
  v11 = sub_18E44EE0C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20[0] = v6;
    v13 = v12;
    v14 = swift_slowAlloc();
    v20[1] = v3;
    v15 = v14;
    v21 = v14;
    *v13 = 136315138;
    v16 = (*(a3 + 24))(a2, a3);
    v18 = sub_18E1C9624(v16, v17, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_18E1C1000, v10, v11, "%s: Connection to XPC Server interrupted.", v13, 0xCu);
    sub_18E1C9934(v15);
    MEMORY[0x193ACD400](v15, -1, -1);
    MEMORY[0x193ACD400](v13, -1, -1);

    return (*(v7 + 8))(v9, v20[0]);
  }

  else
  {

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_18E4477E0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_18E1D4CFC();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(result + 16);
    MEMORY[0x1EEE9AC00](result);
    v11[2] = a2;
    v11[3] = a3;
    v10 = type metadata accessor for XPCServiceClientConnection.State(0, a2, a3, v9);

    sub_18E224B04(a4, v11, v8, v10, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

uint64_t sub_18E4478CC(id *a1, uint64_t a2, uint64_t a3)
{
  v24 = sub_18E44E83C();
  v7 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  (*(a3 + 64))(a2, a3);
  v10 = sub_18E44E80C();
  v11 = sub_18E44EE2C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = a1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v23 = v3;
    v15 = v14;
    v25 = v14;
    *v13 = 136315138;
    v16 = (*(a3 + 24))(a2, a3);
    v18 = sub_18E1C9624(v16, v17, &v25);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_18E1C1000, v10, v11, "%s: Connection to XPC Server invalidated.", v13, 0xCu);
    sub_18E1C9934(v15);
    MEMORY[0x193ACD400](v15, -1, -1);
    v19 = v13;
    a1 = v22;
    MEMORY[0x193ACD400](v19, -1, -1);
  }

  result = (*(v7 + 8))(v9, v24);
  *a1 = 0;
  return result;
}

BOOL sub_18E447AD4(void *a1, unint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
  sub_18E1D121C(0, &qword_1EABE08A0, 0x1E696ABC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = [v14 domain];
  v5 = sub_18E44EAAC();
  v7 = v6;

  if (v5 == sub_18E44EAAC() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_18E44F3CC();

    if ((v10 & 1) == 0)
    {

      return 0;
    }
  }

  v11 = [v14 code];

  return v11 == 4097 && a2 < 2;
}

void sub_18E448558(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_18E4485C0(void *a1, uint64_t a2)
{
  sub_18E1D61E0(a2 + 16, v6);
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

void sub_18E44860C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_18E2332CC(a1, a2, a3, a4, a5, a6);
  *(v7 + 16) = v9;

  sub_18E1D61E0(v6 + 16, &v12);
  v10 = *(v6 + 16);
  *(v6 + 16) = v8;
  v11 = v8;
}

void sub_18E448680(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_18E44EEFC();
  v10 = swift_projectBox();
  swift_beginAccess();
  (*(*(v9 - 8) + 24))(v10, a1, v9);
  swift_beginAccess();
  v11 = *(a4 + 16);
  *(a4 + 16) = a2;
  v12 = a2;
}

void sub_18E448760(void **a1@<X0>, void *a2@<X8>)
{
  sub_18E446F94();
  if (!v2)
  {
    v5 = *a1;
    if (*a1)
    {
      *a2 = v5;
      v6 = v5;
    }

    else
    {
      v7 = sub_18E2885F0();
      sub_18E1C8558(&type metadata for XPCServiceError, v7);
      *v8 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_18E4487D8(uint64_t a1, void *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t (*)(), char *), uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  sub_18E448870(v12, a2, a3, a1, a4, a5, a6);
}

uint64_t sub_18E448870(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t (*)(), char *), uint64_t a6, uint64_t a7)
{
  v59 = a2;
  v60 = a5;
  v12 = *a3;
  sub_18E2707F8(&qword_1EABE1048, &unk_18E49ED80);
  v13 = sub_18E44ED2C();
  sub_18E1C4EAC();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v48 - v19;
  result = sub_18E1D61E0(a1 + 16, v62);
  v22 = *(a1 + 16);
  v23 = __CFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v24;
    v49 = a6;
    v25 = *(v15 + 16);
    v51 = v15 + 16;
    v57 = v25;
    v58 = v17;
    v25(v20, a4, v13);
    v56 = a4;
    v26 = *(v15 + 80);
    v27 = v13;
    v28 = ((v26 + 64) & ~v26);
    v29 = &v28[v17 + 7];
    v30 = a1;
    v50 = a1;
    v31 = v29 & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    v33 = a7;
    v55 = a7;
    v34 = v32;
    v35 = *(v12 + 80);
    *(v32 + 16) = v35;
    *(v32 + 24) = v33;
    v53 = *(v12 + 88);
    v54 = v35;
    *(v32 + 32) = v53;
    *(v32 + 40) = a3;
    v48[1] = a3;
    v36 = v59;
    *(v32 + 48) = v30;
    *(v32 + 56) = v36;
    v52 = *(v15 + 32);
    v37 = v20;
    v52(&v28[v32], v20, v27);
    v38 = (v34 + v31);
    v39 = v49;
    *v38 = v60;
    v38[1] = v39;
    aBlock[4] = sub_18E44D010;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18E448558;
    aBlock[3] = &unk_1F018B2B8;
    v40 = _Block_copy(aBlock);
    sub_18E234A08();

    v41 = v50;

    v42 = v36;
    sub_18E1E187C();

    v43 = [v28 remoteObjectProxyWithErrorHandler_];
    _Block_release(v40);
    v57(v37, v56, v27);
    v44 = swift_allocObject();
    v45 = v55;
    *(v44 + 2) = v54;
    *(v44 + 3) = v45;
    v46 = v52;
    *(v44 + 4) = v53;
    *(v44 + 5) = v41;
    v46(&v44[(v26 + 48) & ~v26], v37, v27);

    v47 = swift_unknownObjectRetain();
    v60(v47, sub_18E44D0EC, v44);

    sub_18E2352D0();
    return swift_unknownObjectRelease_n();
  }

  return result;
}

uint64_t sub_18E448BD8(void *a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t (*)(), char *), void *a7, uint64_t a8)
{
  v60 = a8;
  v56 = a6;
  v57 = a7;
  v55 = a4;
  v12 = *a2;
  v13 = sub_18E44E83C();
  v58 = *(v13 - 8);
  v59 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v52 - v17;
  swift_beginAccess();
  v19 = sub_18E447AD4(a1, *(a3 + 16));
  v20 = *(v12 + 80);
  v21 = *(v12 + 88);
  v22 = *(v21 + 64);
  if (v19)
  {
    v22(*(v12 + 80), *(v12 + 88));
    swift_retain_n();
    v23 = a1;
    v24 = sub_18E44E80C();
    v25 = sub_18E44EE0C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v54 = a5;
      v27 = v26;
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v61 = v53;
      *v27 = 136315650;
      v28 = (*(v21 + 24))(v20, v21);
      v30 = sub_18E1C9624(v28, v29, &v61);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2112;
      v31 = a1;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v32;
      v33 = v52;
      *v52 = v32;
      *(v27 + 22) = 2048;
      swift_beginAccess();
      v34 = *(a3 + 16);

      *(v27 + 24) = v34;

      _os_log_impl(&dword_18E1C1000, v24, v25, "%s async: connection error during call: %@, num connection attempts: %lu", v27, 0x20u);
      sub_18E32F548(v33);
      MEMORY[0x193ACD400](v33, -1, -1);
      v35 = v53;
      sub_18E1C9934(v53);
      MEMORY[0x193ACD400](v35, -1, -1);
      v36 = v27;
      a5 = v54;
      MEMORY[0x193ACD400](v36, -1, -1);
    }

    else
    {
    }

    (*(v58 + 8))(v18, v59);
    return sub_18E448870(a3, v55, a2, a5, v56, v57, v60);
  }

  else
  {
    v22(*(v12 + 80), *(v12 + 88));
    swift_retain_n();
    v37 = a1;
    v38 = sub_18E44E80C();
    v39 = sub_18E44EE0C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v54 = a5;
      v41 = v40;
      v42 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v61 = v57;
      *v41 = 136315650;
      v43 = (*(v21 + 24))(v20, v21);
      v45 = sub_18E1C9624(v43, v44, &v61);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2112;
      v46 = a1;
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 14) = v47;
      *v42 = v47;
      *(v41 + 22) = 2048;
      swift_beginAccess();
      v48 = *(a3 + 16);

      *(v41 + 24) = v48;

      _os_log_impl(&dword_18E1C1000, v38, v39, "%s async: connection error during call: %@ reached max num connection attempts: %lu", v41, 0x20u);
      sub_18E32F548(v42);
      MEMORY[0x193ACD400](v42, -1, -1);
      v49 = v57;
      sub_18E1C9934(v57);
      MEMORY[0x193ACD400](v49, -1, -1);
      MEMORY[0x193ACD400](v41, -1, -1);
    }

    else
    {
    }

    (*(v58 + 8))(v16, v59);
    v61 = a1;
    v51 = a1;
    sub_18E2707F8(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E44ED2C();
    return sub_18E44ED0C();
  }
}

uint64_t sub_18E44912C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v79 = a7;
  v77 = a4;
  v12 = sub_18E44E83C();
  v75 = *(v12 - 8);
  v76 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v72 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v72 - v19;
  v20 = sub_18E44EEFC();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v72 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v25);
  if (a2)
  {
    v74 = a6;
    v29 = v79;
    v30 = *(v79 + 64);
    v31 = a2;
    v30(a5, v29);

    v32 = a2;

    v33 = sub_18E44E80C();
    v34 = sub_18E44EE0C();

    v35 = a3;
    if (os_log_type_enabled(v33, v34))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v80 = v38;
      *v36 = 136315650;
      v39 = (*(v79 + 24))(a5);
      v41 = sub_18E1C9624(v39, v40, &v80);

      *(v36 + 4) = v41;
      *(v36 + 12) = 2112;
      v42 = a2;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v43;
      *v37 = v43;
      *(v36 + 22) = 2048;
      swift_beginAccess();
      v44 = *(v35 + 16);

      *(v36 + 24) = v44;

      _os_log_impl(&dword_18E1C1000, v33, v34, "%s async: method error during call: %@, num connection attempts: %lu", v36, 0x20u);
      sub_18E32F548(v37);
      MEMORY[0x193ACD400](v37, -1, -1);
      sub_18E1C9934(v38);
      MEMORY[0x193ACD400](v38, -1, -1);
      MEMORY[0x193ACD400](v36, -1, -1);
    }

    else
    {
    }

    (*(v75 + 8))(v78, v76);
    v80 = a2;
    sub_18E2707F8(&qword_1EABE1048, &unk_18E49ED80);
LABEL_13:
    sub_18E44ED2C();
    return sub_18E44ED0C();
  }

  v72 = v28;
  v73 = &v72 - v26;
  v78 = v27;
  (*(v21 + 16))(v24, a1, v20);
  if (sub_18E1CAF28(v24, 1, a6) == 1)
  {
    (*(v21 + 8))(v24, v20);
    v45 = v15;
    v46 = a5;
    (*(v79 + 64))(a5);
    v47 = a3;
    swift_retain_n();
    v48 = sub_18E44E80C();
    v49 = sub_18E44EE0C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = v45;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v80 = v52;
      *v51 = 136315394;
      v53 = (*(v79 + 24))(v46);
      v55 = sub_18E1C9624(v53, v54, &v80);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2048;
      swift_beginAccess();
      v56 = *(v47 + 16);

      *(v51 + 14) = v56;

      _os_log_impl(&dword_18E1C1000, v48, v49, "%s async: throwing neither result or error returned, num connection attempts: %lu", v51, 0x16u);
      sub_18E1C9934(v52);
      MEMORY[0x193ACD400](v52, -1, -1);
      MEMORY[0x193ACD400](v51, -1, -1);

      (*(v75 + 8))(v50, v76);
    }

    else
    {

      (*(v75 + 8))(v45, v76);
    }

    sub_18E2885F0();
    v66 = swift_allocError();
    *v67 = 2;
    v80 = v66;
    sub_18E2707F8(&qword_1EABE1048, &unk_18E49ED80);
    goto LABEL_13;
  }

  v57 = *(v78 + 4);
  v74 = a6;
  v57(v73, v24, a6);
  (*(v79 + 64))(a5);
  swift_retain_n();
  v58 = sub_18E44E80C();
  v59 = sub_18E44EDFC();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v80 = v61;
    *v60 = 136315394;
    v62 = (*(v79 + 24))(a5);
    v64 = sub_18E1C9624(v62, v63, &v80);

    *(v60 + 4) = v64;
    *(v60 + 12) = 2048;
    swift_beginAccess();
    v65 = *(a3 + 16);

    *(v60 + 14) = v65;

    _os_log_impl(&dword_18E1C1000, v58, v59, "%s async: method returned non-nil result, num connection attempts: %lu", v60, 0x16u);
    sub_18E1C9934(v61);
    MEMORY[0x193ACD400](v61, -1, -1);
    MEMORY[0x193ACD400](v60, -1, -1);
  }

  else
  {
  }

  (*(v75 + 8))(v18, v76);
  v69 = v78;
  v70 = v73;
  v71 = v74;
  (*(v78 + 2))(v72, v73, v74);
  sub_18E2707F8(&qword_1EABE1048, &unk_18E49ED80);
  sub_18E44ED2C();
  sub_18E44ED1C();
  return (*(v69 + 1))(v70, v71);
}

uint64_t sub_18E449A98@<X0>(_BYTE *a1@<X0>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  swift_unknownObjectWeakInit();

  return swift_unknownObjectRelease();
}

uint64_t BidirectionalXPCServiceClientConnection.__allocating_init(existingConnection:localObject:delegate:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_18E1E1AE0();
  v8 = swift_allocObject();
  BidirectionalXPCServiceClientConnection.init(existingConnection:localObject:delegate:)(a1, a2, a3, a4);
  return v8;
}

uint64_t *BidirectionalXPCServiceClientConnection.init(existingConnection:localObject:delegate:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v9 = *v4;
  v4[5] = 0;
  swift_unknownObjectWeakInit();
  v4[3] = a1;
  LOBYTE(v19[0]) = 0;
  v10 = a1;
  swift_unknownObjectRetain();
  v17 = *(v9 + 96);
  v18 = *(v9 + 80);
  sub_18E449A98(v19, v20);
  v19[0] = v18;
  v19[1] = v17;
  v11 = type metadata accessor for BidirectionalXPCServiceClientConnection.State(0, v19);
  v4[2] = sub_18E446EAC(v20, v11);
  v4[5] = a4;
  swift_unknownObjectWeakAssign();

  sub_18E2244C4();
  sub_18E224B04(v12, v13, v14, v11, v15);
  if (v6)
  {
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_18E449C9C(_BYTE *a1)
{
  v4 = *v1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = v1[5];
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(ObjectType, v5);
    if (v2 || *a1)
    {
      return swift_unknownObjectRelease();
    }

    else
    {
      v8 = v1[3];
      v9 = v4[11];
      v23 = v4[13];
      v10 = static XPCService.xpcInterface()();
      [v8 setRemoteObjectInterface_];

      v11 = v4[10];
      v12 = v4[12];
      v13 = static XPCService.xpcInterface()();
      [v8 setExportedInterface_];

      [v8 setExportedObject_];
      swift_unknownObjectRelease();
      v14 = swift_allocObject();
      swift_weakInit();
      v15 = swift_allocObject();
      *&v16 = v11;
      *(&v16 + 1) = v9;
      *&v17 = v12;
      *(&v17 + 1) = v23;
      v22 = v16;
      v24 = v17;
      *(v15 + 16) = v16;
      *(v15 + 32) = v17;
      *(v15 + 48) = v14;
      v29 = sub_18E44CE78;
      v30 = v15;
      aBlock = MEMORY[0x1E69E9820];
      v26 = 1107296256;
      v27 = sub_18E203E04;
      v28 = &unk_1F018B150;
      v18 = _Block_copy(&aBlock);

      [v8 setInterruptionHandler_];
      _Block_release(v18);
      v19 = swift_allocObject();
      swift_weakInit();
      v20 = swift_allocObject();
      *(v20 + 16) = v22;
      *(v20 + 32) = v24;
      *(v20 + 48) = v19;
      v29 = sub_18E44CE90;
      v30 = v20;
      aBlock = MEMORY[0x1E69E9820];
      v26 = 1107296256;
      v27 = sub_18E203E04;
      v28 = &unk_1F018B1A0;
      v21 = _Block_copy(&aBlock);

      [v8 setInvalidationHandler_];
      _Block_release(v21);
      [v8 resume];
      result = swift_unknownObjectRelease();
      *a1 = 1;
    }
  }

  else
  {
    result = sub_18E44F14C();
    __break(1u);
  }

  return result;
}

uint64_t BidirectionalXPCServiceClientConnection.__allocating_init(localObject:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18E1E1AE0();
  v6 = swift_allocObject();
  BidirectionalXPCServiceClientConnection.init(localObject:delegate:)(a1, a2, a3);
  return v6;
}

void *BidirectionalXPCServiceClientConnection.init(localObject:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v3[5] = 0;
  swift_unknownObjectWeakInit();
  sub_18E1D121C(0, &qword_1EABE93B8, 0x1E696B0B8);
  v6 = v5[11];
  v7 = v5[13];
  v8 = sub_18E2370E8();
  v10 = v9(v8, v7);
  v3[3] = sub_18E44755C(v10, v11, 0);
  LOBYTE(v23[0]) = 0;
  v22 = v5[12];
  v21 = v5[10];
  swift_unknownObjectRetain();
  sub_18E449A98(v23, v24);
  *&v13 = v21;
  *&v12 = v22;
  *(&v13 + 1) = v6;
  *(&v12 + 1) = v7;
  v23[0] = v13;
  v23[1] = v12;
  v14 = type metadata accessor for BidirectionalXPCServiceClientConnection.State(0, v23);
  v3[2] = sub_18E446EAC(v24, v14);
  v3[5] = a3;
  swift_unknownObjectWeakAssign();

  sub_18E1E19C0();
  v15 = v25;
  sub_18E224B04(v16, v17, v18, v14, v19);
  if (v15)
  {
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t BidirectionalXPCServiceClientConnection.deinit()
{
  [*(v0 + 24) setInterruptionHandler_];
  [*(v0 + 24) setInvalidationHandler_];
  [*(v0 + 24) invalidate];

  sub_18E207C54(v0 + 32);
  return v0;
}

uint64_t BidirectionalXPCServiceClientConnection.__deallocating_deinit()
{
  BidirectionalXPCServiceClientConnection.deinit();
  v0 = sub_18E1E1AE0();

  return MEMORY[0x1EEE6BDC0](v0);
}

ModelCatalog::ConnectionState __swiftcall BidirectionalXPCServiceClientConnection.getCurrentConnectionState()()
{
  v1 = *(v0 + 16);
  sub_18E1CFF9C();
  v11[2] = *(v2 + 80);
  sub_18E1CFF9C();
  v11[3] = *(v3 + 88);
  sub_18E1CFF9C();
  v11[4] = *(v4 + 96);
  sub_18E1CFF9C();
  v12 = *(v5 + 104);
  v13[0] = v6;
  v13[1] = v7;
  v13[2] = v8;
  v13[3] = v12;
  v9 = type metadata accessor for BidirectionalXPCServiceClientConnection.State(0, v13);
  sub_18E224B04(sub_18E44C3E0, v11, v1, v9, &type metadata for ConnectionState);
  return result;
}

uint64_t sub_18E44A3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  sub_18E1D4CFC();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = *(result + 16);
    MEMORY[0x1EEE9AC00](result);
    v17[2] = a2;
    v17[3] = a3;
    v17[4] = a4;
    v17[5] = a5;

    v18[0] = a2;
    v18[1] = a3;
    v18[2] = a4;
    v18[3] = a5;
    v14 = type metadata accessor for BidirectionalXPCServiceClientConnection.State(0, v18);
    sub_18E224B04(a6, v17, v13, v14, MEMORY[0x1E69E7CA8] + 8);

    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v12 + 40);
      ObjectType = swift_getObjectType();
      (*(v15 + 16))(ObjectType, v15);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_18E44A510(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), const char *a7)
{
  v28 = sub_18E44E83C();
  sub_18E1C4EAC();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_18E1C4EDC();
  v15 = v14 - v13;
  v16 = sub_18E2370E8();
  v17(v16, a5);
  v18 = sub_18E44E80C();
  v19 = a6();
  if (os_log_type_enabled(v18, v19))
  {
    v26 = a1;
    v20 = sub_18E1C5F74();
    sub_18E1CA69C();
    v21 = swift_slowAlloc();
    v29 = v21;
    *v20 = 136315138;
    v22 = sub_18E2370E8();
    v24 = v23(v22, a5);
    sub_18E1C9624(v24, v25, &v29);
    sub_18E1E187C();

    *(v20 + 4) = a5;
    _os_log_impl(&dword_18E1C1000, v18, v19, a7, v20, 0xCu);
    sub_18E1C9934(v21);
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
    a1 = v26;
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
  }

  (*(v11 + 8))(v15, v28);
  *a1 = 2;
  sub_18E1E19E4();
}

void BidirectionalXPCServiceClientConnection.call<A>(_:)(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a2;
  v29 = a1;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v4 + 16);
  v31 = v12;
  v32 = v4;
  v14 = *(v13 + 96);
  aBlock = *(v13 + 80);
  v34 = v14;
  v15 = type metadata accessor for BidirectionalXPCServiceClientConnection.State(0, &aBlock);
  v16 = sub_18E1D121C(0, &qword_1EABE93B8, 0x1E696B0B8);
  sub_18E224B04(sub_18E44C3EC, v30, v11, v15, v16);
  if (!v5)
  {
    v27 = a4;
    v17 = v37;
    sub_18E1CC494();
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    sub_18E1E3428();
    v19 = swift_allocObject();
    v19[2] = a3;
    v19[3] = v4;
    v19[4] = v18;
    v35 = sub_18E44C408;
    v36 = v19;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v34 = sub_18E448558;
    *(&v34 + 1) = &unk_1F018ACA8;
    v20 = _Block_copy(&aBlock);

    v21 = [v17 synchronousRemoteObjectProxyWithErrorHandler_];
    v22 = sub_18E1E187C();
    _Block_release(v22);
    v23 = swift_unknownObjectRetain();
    v29(v23);
    sub_18E1D4CFC();
    swift_beginAccess();
    v24 = *(v18 + 16);
    if (v24)
    {
      swift_willThrow();
      v25 = v24;

      swift_unknownObjectRelease();
      (*(v8 + 8))(v10, a3);

      swift_unknownObjectRelease();
    }

    else
    {

      sub_18E2417C4();
      (*(v8 + 32))(v27, v10, a3);
    }
  }
}

void BidirectionalXPCServiceClientConnection.call<A>(_:)(void (*a1)(id, uint64_t (*)(), void *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a2;
  v55 = a1;
  v8 = *v4;
  v66 = sub_18E44EEFC();
  sub_18E1C4EAC();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v47 - v12;
  v14 = v4[2];
  v57 = a3;
  v58 = v4;
  v15 = v8[10];
  v16 = v8[12];
  v17 = v8[13];
  v52 = v8[11];
  v53 = v15;
  aBlock = v15;
  v61 = v52;
  v51 = v16;
  v62 = v16;
  v63 = v17;
  v18 = type metadata accessor for BidirectionalXPCServiceClientConnection.State(0, &aBlock);
  v19 = sub_18E1D121C(0, &qword_1EABE93B8, 0x1E696B0B8);
  sub_18E224B04(sub_18E44D334, v56, v14, v18, v19);
  if (!v5)
  {
    v47[1] = 0;
    v47[3] = v10;
    v48 = v13;
    v47[2] = a4;
    v20 = v59;
    sub_18E1CC494();
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    v22 = (v21 + 16);
    sub_18E1E3428();
    v23 = swift_allocObject();
    v23[2] = a3;
    v23[3] = v4;
    v23[4] = v21;
    v64 = sub_18E44C478;
    v65 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v61 = 1107296256;
    v62 = sub_18E448558;
    v63 = &unk_1F018ACF8;
    v24 = _Block_copy(&aBlock);

    v50 = v21;

    v49 = v20;
    v25 = [v20 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v24);
    v26 = swift_allocBox();
    v28 = v27;
    sub_18E201DC8(v27, 1, 1, a3);
    sub_18E1CC494();
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    v30 = (v29 + 16);
    v31 = swift_allocObject();
    v32 = v52;
    v31[2] = v53;
    v31[3] = v32;
    v33 = v51;
    v31[4] = a3;
    v31[5] = v33;
    v31[6] = v17;
    v31[7] = v26;
    v34 = v26;
    v31[8] = v29;
    swift_unknownObjectRetain();

    v55(v25, sub_18E44C4AC, v31);

    sub_18E1D4CFC();
    swift_beginAccess();
    v35 = *v22;
    if (*v22)
    {
      swift_willThrow();
      v36 = v35;

      sub_18E1CFA94();

      sub_18E1E2684();
    }

    else
    {
      v54 = v29;
      v37 = v50;
      v55 = v34;
      v38 = v49;
      v39 = v66;
      sub_18E1D4CFC();
      swift_beginAccess();
      v40 = *v30;
      if (*v30)
      {
        swift_willThrow();
        v41 = v40;
      }

      else
      {
        sub_18E1D4CFC();
        swift_beginAccess();
        sub_18E207B14();
        v42 = v48;
        (*(v37 + 16))(v48, v28, v39);
        if (sub_18E1CAF28(v42, 1, a3) != 1)
        {

          sub_18E1E2684();
          sub_18E1D0498();
          v46();
          sub_18E1CFA94();

          goto LABEL_9;
        }

        (*(v37 + 8))(v42, v39);
        v43 = sub_18E2885F0();
        v44 = sub_18E1C8558(&type metadata for XPCServiceError, v43);
        sub_18E224E88(v44, v45);

        sub_18E1CFA94();
      }

      sub_18E1E2684();
    }
  }

LABEL_9:
  sub_18E1E19E4();
}

id sub_18E44AEE0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a4;
  v47 = a5;
  v45 = *a2;
  sub_18E44E83C();
  sub_18E1C4EAC();
  v43 = v8;
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C4EDC();
  v11 = v10 - v9;
  v12 = v45[11];
  v13 = v45[13];
  (*(v13 + 64))(v12, v13);
  v14 = a1;
  v15 = sub_18E44E80C();
  v16 = sub_18E44EE0C();

  if (os_log_type_enabled(v15, v16))
  {
    sub_18E1C9700();
    v42 = a3;
    v17 = swift_slowAlloc();
    sub_18E20809C();
    v40 = swift_slowAlloc();
    sub_18E1CA69C();
    v41 = swift_slowAlloc();
    v48[0] = v41;
    *v17 = 136315394;
    v18 = (*(v13 + 24))(v12, v13);
    v20 = a1;
    v21 = sub_18E1C9624(v18, v19, v48);

    *(v17 + 4) = v21;
    a1 = v20;
    *(v17 + 12) = 2112;
    v22 = v20;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v23;
    v24 = v40;
    *v40 = v23;
    _os_log_impl(&dword_18E1C1000, v15, v16, "%s: error during call: %@.", v17, 0x16u);
    sub_18E32F548(v24);
    v25 = sub_18E1C86D0();
    MEMORY[0x193ACD400](v25);
    sub_18E1C9934(v41);
    v26 = sub_18E1C86D0();
    MEMORY[0x193ACD400](v26);
    a3 = v42;
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
  }

  v27 = (*(v43 + 8))(v11, v44);
  MEMORY[0x1EEE9AC00](v27);
  v28 = v45;
  v29 = v46;
  v30 = v45[10];
  *(&v39 - 6) = v30;
  *(&v39 - 5) = v12;
  v31 = v28[12];
  *(&v39 - 4) = v29;
  *(&v39 - 3) = v31;
  *(&v39 - 2) = v13;
  v48[0] = v30;
  v48[1] = v12;
  v48[2] = v31;
  v48[3] = v13;
  type metadata accessor for BidirectionalXPCServiceClientConnection.State(0, v48);
  sub_18E1D0498();
  sub_18E224B04(v32, v33, v34, v35, v36);
  sub_18E1D61E0(a3 + 16, v48);
  v37 = *(a3 + 16);
  *(a3 + 16) = a1;

  return a1;
}

void sub_18E44B1EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_18E44EEFC();
  v11 = swift_projectBox();
  swift_beginAccess();
  (*(*(v10 - 8) + 24))(v11, a1, v10);
  swift_beginAccess();
  v12 = *(a4 + 16);
  *(a4 + 16) = a2;
  v13 = a2;
}

uint64_t BidirectionalXPCServiceClientConnection.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v5[12] = *v4;
  return sub_18E1CFD98(sub_18E44B304);
}

uint64_t sub_18E44B304()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v0 + 16) = *(v2 + 80);
  *(v0 + 32) = *(v2 + 96);
  v5 = type metadata accessor for BidirectionalXPCServiceClientConnection.State(0, v0 + 16);
  sub_18E1D121C(0, &qword_1EABE93B8, 0x1E696B0B8);
  sub_18E1D0498();
  sub_18E224B04(v6, v7, v8, v5, v9);

  *(v0 + 104) = *(v0 + 48);
  v10 = swift_task_alloc();
  *(v0 + 112) = v10;
  sub_18E23339C(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
  swift_task_alloc();
  sub_18E2016A8();
  *(v0 + 120) = v20;
  *v20 = v21;
  v20[1] = sub_18E44B4D8;
  v22 = *(v0 + 56);

  return MEMORY[0x1EEE6DE38](v22);
}

uint64_t sub_18E44B4D8()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v3 = v2;
  v4 = *v1;
  sub_18E1C52E0();
  *v5 = v4;
  *(v3 + 128) = v0;

  if (v0)
  {
    v6 = sub_18E44B640;
  }

  else
  {

    v6 = sub_18E44B5E4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_18E44B5E4()
{
  sub_18E1C52F0();

  sub_18E1D008C();

  return v1();
}

uint64_t sub_18E44B640()
{
  sub_18E1C52F0();

  sub_18E1D008C();

  return v1();
}

id sub_18E44B6A4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_18E449C9C(a1);
  if (!v3)
  {
    if (*a1 == 2)
    {
      v8 = sub_18E2885F0();
      sub_18E1C8558(&type metadata for XPCServiceError, v8);
      *v9 = 1;
      return swift_willThrow();
    }

    else
    {
      v10 = *(a2 + 24);
      *a3 = v10;
      return v10;
    }
  }

  return result;
}

uint64_t sub_18E44B728(uint64_t a1, void *a2, void *a3, void (*a4)(uint64_t, uint64_t (*)(), char *), uint64_t a5, uint64_t a6)
{
  v34 = a5;
  v35 = a4;
  v32 = a1;
  v33 = a2;
  v9 = *a3;
  sub_18E2707F8(&qword_1EABE1048, &unk_18E49ED80);
  v27 = a6;
  v10 = sub_18E44ED2C();
  v11 = *(v10 - 8);
  v30 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  v31 = *(v11 + 16);
  v31(&v24 - v12, a1, v10);
  v14 = *(v11 + 80);
  v15 = swift_allocObject();
  v29 = v9[10];
  *(v15 + 2) = v29;
  v28 = v9[11];
  *(v15 + 3) = v28;
  *(v15 + 4) = a6;
  v26 = v9[12];
  *(v15 + 5) = v26;
  v25 = v9[13];
  *(v15 + 6) = v25;
  *(v15 + 7) = a3;
  v16 = *(v11 + 32);
  v16(&v15[(v14 + 64) & ~v14], v13, v10);
  aBlock[4] = sub_18E44CD04;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18E448558;
  aBlock[3] = &unk_1F018B0B0;
  v17 = _Block_copy(aBlock);

  v18 = [v33 remoteObjectProxyWithErrorHandler_];
  _Block_release(v17);
  v31(v13, v32, v10);
  v19 = swift_allocObject();
  v20 = v28;
  *(v19 + 2) = v29;
  *(v19 + 3) = v20;
  v21 = v26;
  *(v19 + 4) = v27;
  *(v19 + 5) = v21;
  *(v19 + 6) = v25;
  v16(&v19[(v14 + 56) & ~v14], v13, v10);
  v22 = swift_unknownObjectRetain();
  v35(v22, sub_18E44CDAC, v19);

  return swift_unknownObjectRelease_n();
}

uint64_t sub_18E44BA48(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v43 = *a2;
  v7 = sub_18E44E83C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v43[11];
  v42 = a2;
  v12 = v43[13];
  (*(v12 + 64))(v11, v12);
  v13 = a1;
  v14 = sub_18E44E80C();
  v15 = sub_18E44EE0C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v41 = v7;
    v17 = v16;
    v38 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v44[0] = v40;
    *v17 = 136315394;
    v18 = *(v12 + 24);
    v37 = v15;
    v19 = v18(v11, v12);
    v21 = sub_18E1C9624(v19, v20, v44);
    v39 = v8;
    v22 = a1;
    v23 = v21;

    *(v17 + 4) = v23;
    *(v17 + 12) = 2112;
    v24 = a1;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v25;
    v26 = v38;
    *v38 = v25;
    _os_log_impl(&dword_18E1C1000, v14, v37, "%s: error during call: %@.", v17, 0x16u);
    sub_18E32F548(v26);
    MEMORY[0x193ACD400](v26, -1, -1);
    v27 = v40;
    sub_18E1C9934(v40);
    MEMORY[0x193ACD400](v27, -1, -1);
    MEMORY[0x193ACD400](v17, -1, -1);

    v28 = (*(v39 + 8))(v10, v41);
  }

  else
  {

    v28 = (*(v8 + 8))(v10, v7);
    v22 = a1;
  }

  v29 = v42[2];
  MEMORY[0x1EEE9AC00](v28);
  v30 = v43;
  v31 = v43[10];
  *&v36[-48] = v31;
  *&v36[-40] = v11;
  v32 = v30[12];
  *&v36[-32] = a4;
  *&v36[-24] = v32;
  *&v36[-16] = v12;
  v44[0] = v31;
  v44[1] = v11;
  v44[2] = v32;
  v44[3] = v12;
  v33 = type metadata accessor for BidirectionalXPCServiceClientConnection.State(0, v44);
  sub_18E224B04(sub_18E44D34C, &v36[-64], v29, v33, MEMORY[0x1E69E7CA8] + 8);
  v44[0] = v22;
  v34 = v22;
  sub_18E2707F8(&qword_1EABE1048, &unk_18E49ED80);
  sub_18E44ED2C();
  return sub_18E44ED0C();
}

uint64_t sub_18E44BE0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_18E44EEFC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  v14 = *(a6 - 8);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - v18;
  if (a2)
  {
    v25 = a2;
    v20 = a2;
  }

  else
  {
    (*(v10 + 16))(v13, a1, v9);
    if (sub_18E1CAF28(v13, 1, a6) != 1)
    {
      (*(v14 + 32))(v19, v13, a6);
      (*(v14 + 16))(v17, v19, a6);
      sub_18E2707F8(&qword_1EABE1048, &unk_18E49ED80);
      sub_18E44ED2C();
      sub_18E44ED1C();
      return (*(v14 + 8))(v19, a6);
    }

    (*(v10 + 8))(v13, v9);
    sub_18E2885F0();
    v21 = swift_allocError();
    *v22 = 2;
    v25 = v21;
  }

  sub_18E2707F8(&qword_1EABE1048, &unk_18E49ED80);
  sub_18E44ED2C();
  return sub_18E44ED0C();
}

uint64_t sub_18E44C128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_18E25E674;

  return BidirectionalXPCServiceClientConnection.call<A>(_:)(a1, a2, a3, a4);
}

uint64_t sub_18E44C21C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_18E44F06C();
  v4 = sub_18E44F05C();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t sub_18E44C2CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a1 + ((*(v2 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v2 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2);
}

uint64_t sub_18E44C43C()
{

  sub_18E1E3428();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

unint64_t sub_18E44C52C()
{
  result = qword_1EABE93C8;
  if (!qword_1EABE93C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE93C8);
  }

  return result;
}

unint64_t sub_18E44C584()
{
  result = qword_1EABE93D0[0];
  if (!qword_1EABE93D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EABE93D0);
  }

  return result;
}

uint64_t dispatch thunk of ServiceConnectionProtocol.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 24))(a1, a2, a3, a4);
}

{
  return (*(a5 + 32))(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ServiceConnectionProtocol.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_18E1CF8C8(a1, a2, a3, a4, a5, a6);
  swift_task_alloc();
  sub_18E2016A8();
  *(v6 + 16) = v7;
  *v7 = v8;
  v9 = sub_18E1D4A98(v7);

  return v10(v9);
}

uint64_t dispatch thunk of BidirectionalServiceConnectionProtocol.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 48))(a1, a2, a3, a4);
}

{
  return (*(a5 + 56))(a1, a2, a3, a4);
}

uint64_t dispatch thunk of BidirectionalServiceConnectionProtocol.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_18E1CF8C8(a1, a2, a3, a4, a5, a6);
  swift_task_alloc();
  sub_18E2016A8();
  *(v6 + 16) = v7;
  *v7 = v8;
  v9 = sub_18E1D4A98(v7);

  return v10(v9);
}

_BYTE *sub_18E44CACC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18E44CBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18E44CBE4(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[16])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E44CC20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_18E44CC60(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E44CCB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_18E44CD04(void *a1)
{
  v3 = *(v1 + 32);
  sub_18E2707F8(&qword_1EABE1048, &unk_18E49ED80);
  v4 = *(sub_18E44ED2C() - 8);
  v5 = *(v1 + 56);
  v6 = v1 + ((*(v4 + 80) + 64) & ~*(v4 + 80));

  return sub_18E44BA48(a1, v5, v6, v3);
}

uint64_t sub_18E44CDAC()
{
  sub_18E1CD8B8();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_18E2707F8(&qword_1EABE1048, &unk_18E49ED80);
  sub_18E44ED2C();
  v4 = sub_18E1D8004();

  return sub_18E44BE0C(v4, v5, v6, v1, v2, v3);
}

uint64_t sub_18E44D010(void *a1)
{
  v3 = v1[3];
  sub_18E2707F8(&qword_1EABE1048, &unk_18E49ED80);
  v4 = *(sub_18E44ED2C() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 1);

  return sub_18E448BD8(a1, v6, v7, v8, v1 + v5, v10, v11, v3);
}

uint64_t sub_18E44D0EC()
{
  sub_18E1CD8B8();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_18E2707F8(&qword_1EABE1048, &unk_18E49ED80);
  sub_18E44ED2C();
  v4 = sub_18E1D8004();

  return sub_18E44912C(v4, v5, v6, v7, v1, v2, v3);
}

uint64_t sub_18E44D398()
{
}

uint64_t sub_18E44D3C4()
{
}

id SiriResourceAvailabilityInfo.__allocating_init(enoughStorage:diskSpaceRequired:)(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v5 = objc_allocWithZone(v2);
  return SiriResourceAvailabilityInfo.init(enoughStorage:diskSpaceRequired:)(v4, a2);
}

uint64_t SiriResourceAvailabilityInfo.enoughStorage.getter()
{
  v1 = OBJC_IVAR____TtC12ModelCatalog28SiriResourceAvailabilityInfo_enoughStorage;
  sub_18E1C5C08(v0 + OBJC_IVAR____TtC12ModelCatalog28SiriResourceAvailabilityInfo_enoughStorage, v3);
  return *(v0 + v1);
}

uint64_t SiriResourceAvailabilityInfo.enoughStorage.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC12ModelCatalog28SiriResourceAvailabilityInfo_enoughStorage;
  result = sub_18E1C4F14(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t SiriResourceAvailabilityInfo.diskSpaceRequired.getter()
{
  v1 = OBJC_IVAR____TtC12ModelCatalog28SiriResourceAvailabilityInfo_diskSpaceRequired;
  sub_18E1C5C08(v0 + OBJC_IVAR____TtC12ModelCatalog28SiriResourceAvailabilityInfo_diskSpaceRequired, v3);
  return *(v0 + v1);
}

uint64_t SiriResourceAvailabilityInfo.diskSpaceRequired.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12ModelCatalog28SiriResourceAvailabilityInfo_diskSpaceRequired;
  result = sub_18E1C4F14(a1);
  *(v1 + v3) = a1;
  return result;
}

id SiriResourceAvailabilityInfo.init(enoughStorage:diskSpaceRequired:)(char a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v2[OBJC_IVAR____TtC12ModelCatalog28SiriResourceAvailabilityInfo_enoughStorage] = a1;
  *&v2[OBJC_IVAR____TtC12ModelCatalog28SiriResourceAvailabilityInfo_diskSpaceRequired] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t static SiriResourceAvailabilityInfo.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EABE94E0 = a1;
  return result;
}

uint64_t sub_18E44D730@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EABE94E0;
  return result;
}

uint64_t sub_18E44D77C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EABE94E0 = v1;
  return result;
}

Swift::Void __swiftcall SiriResourceAvailabilityInfo.encode(with:)(NSCoder with)
{
  v3 = OBJC_IVAR____TtC12ModelCatalog28SiriResourceAvailabilityInfo_enoughStorage;
  sub_18E1C5C08(v1 + OBJC_IVAR____TtC12ModelCatalog28SiriResourceAvailabilityInfo_enoughStorage, v10);
  v4 = *(v1 + v3);
  sub_18E1C69E4();
  v5 = sub_18E44EA8C();
  [(objc_class *)with.super.isa encodeBool:v4 forKey:v5];

  v6 = OBJC_IVAR____TtC12ModelCatalog28SiriResourceAvailabilityInfo_diskSpaceRequired;
  sub_18E1C5C08(v1 + OBJC_IVAR____TtC12ModelCatalog28SiriResourceAvailabilityInfo_diskSpaceRequired, &v9);
  v7 = *(v1 + v6);
  sub_18E1C8100();
  v8 = sub_18E44EA8C();
  [(objc_class *)with.super.isa encodeInt64:v7 forKey:v8];
}

id SiriResourceAvailabilityInfo.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_18E1C69E4();
  v3 = sub_18E44EA8C();
  v4 = [a1 decodeBoolForKey_];

  sub_18E1C8100();
  v5 = sub_18E44EA8C();
  v6 = [a1 decodeInt64ForKey_];

  v7 = objc_allocWithZone(ObjectType);
  v8 = SiriResourceAvailabilityInfo.init(enoughStorage:diskSpaceRequired:)(v4, v6);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

unint64_t SiriResourceAvailabilityInfo.description.getter()
{
  v1 = v0;
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_18E44EFFC();

  v9 = 0xD000000000000011;
  v10 = 0x800000018E478590;
  v2 = OBJC_IVAR____TtC12ModelCatalog28SiriResourceAvailabilityInfo_enoughStorage;
  sub_18E1C5C08(v1 + OBJC_IVAR____TtC12ModelCatalog28SiriResourceAvailabilityInfo_enoughStorage, v8);
  if (*(v1 + v2))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v1 + v2))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x193ACC300](v3, v4);

  MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E4785B0);
  sub_18E1C5C08(v1 + OBJC_IVAR____TtC12ModelCatalog28SiriResourceAvailabilityInfo_diskSpaceRequired, v7);
  v5 = sub_18E44F39C();
  MEMORY[0x193ACC300](v5);

  MEMORY[0x193ACC300](32032, 0xE200000000000000);
  return v9;
}

id SiriResourceAvailabilityInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriResourceAvailabilityInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ModelCatalogFeatureFlags.hashValue.getter()
{
  sub_18E44F48C();
  MEMORY[0x193ACCC20](0);
  return sub_18E44F4CC();
}

uint64_t static ModelCatalogFeatureFlags.isAssetCoherenceEnabled()()
{
  v2[3] = &type metadata for ModelCatalogFeatureFlags;
  v2[4] = sub_18E44DE18();
  v0 = sub_18E44E73C();
  sub_18E1C9934(v2);
  return v0 & 1;
}

unint64_t sub_18E44DE18()
{
  result = qword_1EABDFC10;
  if (!qword_1EABDFC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFC10);
  }

  return result;
}

unint64_t sub_18E44DE70()
{
  result = qword_1EABE94F8;
  if (!qword_1EABE94F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE94F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ModelCatalogFeatureFlags(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_18E44DF70()
{
  v1 = *v0;

  return v1;
}

uint64_t static MultiBaseModel.formatDefaultBaseModelInferenceID(from:)(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_18E2462E8(0xD000000000000025, 0x800000018E478660);
  if (v3)
  {
    v4 = v3;
    v5 = sub_18E44EA8C();
    v6 = [v4 stringForKey_];

    if (v6)
    {
      v7 = sub_18E44EAAC();
      v9 = v8;

      MEMORY[0x193ACC300](7758627, 0xE300000000000000);
      MEMORY[0x193ACC300](v7, v9);
    }

    else
    {
    }
  }

  else
  {
    sub_18E44E11C();
    swift_allocError();
    *v10 = 0xD000000000000041;
    v10[1] = 0x800000018E478690;
    swift_willThrow();
  }

  return a1;
}

unint64_t sub_18E44E11C()
{
  result = qword_1EABE9500;
  if (!qword_1EABE9500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE9500);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MultiBaseModel(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}