void *sub_1D5E26314(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = *(*(a4 + 56) + 16 * v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + 8 * v17);
      *(v11 + 8) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D5E264A8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1D5E265A8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1D5E26700(uint64_t a1)
{
  result = sub_1D5E26728();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5E26728()
{
  result = qword_1EDF20960;
  if (!qword_1EDF20960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF20960);
  }

  return result;
}

unint64_t sub_1D5E26780()
{
  result = qword_1EDF04A68;
  if (!qword_1EDF04A68)
  {
    sub_1D5B87DC0(255, &unk_1EDF3C820, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04A68);
  }

  return result;
}

uint64_t sub_1D5E26850(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B5BC8C(255, &qword_1EDF1AD10, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], MEMORY[0x1E69E64E8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5E268EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5CD88E8(0, &qword_1EC87FAF8, sub_1D5B5C29C, &type metadata for FeedPlatform);
    v3 = sub_1D7263CDC();
    v4 = 0;
    v5 = v3 + 56;
    v29 = v1;
    v30 = a1 + 32;
    while (1)
    {
      v8 = (v30 + 16 * v4);
      v9 = *v8;
      v10 = v8[1];
      sub_1D7264A0C();
      switch(v10)
      {
        case 1:
          MEMORY[0x1DA6FC0B0](1);
          break;
        case 2:
          MEMORY[0x1DA6FC0B0](2);
          break;
        case 3:
          MEMORY[0x1DA6FC0B0](3);
          break;
        default:
          MEMORY[0x1DA6FC0B0](0);
          sub_1D7264A2C();
          if (v10)
          {

            sub_1D72621EC();
          }

          break;
      }

      result = sub_1D7264A5C();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = *(v5 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        break;
      }

LABEL_43:
      *(v5 + 8 * v14) = v15 | v16;
      v25 = (*(v3 + 48) + 16 * v13);
      *v25 = v9;
      v25[1] = v10;
      v26 = *(v3 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v28;
LABEL_5:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    v17 = ~v12;
    while (1)
    {
      v18 = (*(v3 + 48) + 16 * v13);
      v19 = *v18;
      v20 = v18[1];
      if (v20 == 1)
      {
        if (v10 == 1)
        {
          sub_1D5C39250(*v18, 1);
          v6 = v9;
          v7 = 1;
          goto LABEL_4;
        }

        sub_1D5B7CD94(v9, v10);
        v21 = 1;
        goto LABEL_27;
      }

      if (v20 == 2)
      {
        break;
      }

      if (v20 == 3)
      {
        if (v10 == 3)
        {
          sub_1D5C39250(*v18, 3);
          v6 = v9;
          v7 = 3;
          goto LABEL_4;
        }

        sub_1D5B7CD94(v9, v10);
        v21 = 3;
        goto LABEL_27;
      }

      if ((v10 - 1) < 3)
      {
        sub_1D5B7CD94(v9, v10);
        sub_1D5B7CD94(v19, v20);
        v21 = v20;
LABEL_27:
        v22 = v10;
        goto LABEL_28;
      }

      if (!v20)
      {
        sub_1D5B7CD94(v9, v10);
        sub_1D5B7CD94(v19, 0);
        sub_1D5B7CD94(v9, v10);
        sub_1D5B7CD94(v19, 0);
        sub_1D5C39250(v19, 0);
        sub_1D5C39250(v9, v10);
        v22 = v10;
        if (!v10)
        {
          v6 = v9;
          v7 = 0;
          goto LABEL_4;
        }

        goto LABEL_29;
      }

      if (v10)
      {
        if (v19 == v9 && v20 == v10)
        {

          sub_1D5C39250(v9, v10);
LABEL_48:
          v6 = v9;
          v7 = v10;
LABEL_4:
          sub_1D5C39250(v6, v7);
          v1 = v29;
          goto LABEL_5;
        }

        v24 = sub_1D72646CC();
        sub_1D5B7CD94(v9, v10);
        sub_1D5B7CD94(v19, v20);
        sub_1D5C39250(v19, v20);
        result = sub_1D5C39250(v9, v10);
        if (v24)
        {
          goto LABEL_48;
        }

        goto LABEL_30;
      }

      sub_1D5B7CD94(v9, 0);
      sub_1D5B7CD94(v9, 0);
      sub_1D5B7CD94(v19, v20);
      v21 = v20;
      v22 = 0;
LABEL_28:
      sub_1D5C39250(v19, v21);
LABEL_29:
      result = sub_1D5C39250(v9, v22);
LABEL_30:
      v13 = (v13 + 1) & v17;
      v14 = v13 >> 6;
      v15 = *(v5 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if ((v15 & (1 << v13)) == 0)
      {
        v1 = v29;
        goto LABEL_43;
      }
    }

    if (v10 == 2)
    {
      sub_1D5C39250(*v18, 2);
      v6 = v9;
      v7 = 2;
      goto LABEL_4;
    }

    sub_1D5B7CD94(v9, v10);
    v21 = 2;
    goto LABEL_27;
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1D5E26CE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5B5BC8C(0, &qword_1EDF042D0, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7300], MEMORY[0x1E69E6A10]);
    v3 = sub_1D7263CDC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = *(v3 + 40);
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = *(v6 + 4 * v4);
      result = MEMORY[0x1DA6FC080](v7, v12, 4);
      v14 = result & v8;
      v15 = (result & v8) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v8);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 4 * v14) != v12)
        {
          v14 = (v14 + 1) & v8;
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
        *(v18 + 4 * v14) = v12;
        v9 = *(v3 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v11;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D5E26E28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5CD88E8(0, &qword_1EDF1A5B8, sub_1D5E2A690, &type metadata for FormatOptionType);
    v3 = sub_1D7263CDC();
    v4 = 0;
    v5 = v3 + 56;
    v30 = v1;
    v31 = a1 + 32;
    while (1)
    {
      v6 = *(v31 + v4);
      v32 = v4 + 1;
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          v13 = *(*(v3 + 48) + v9);
          if (v13 > 5)
          {
            if (*(*(v3 + 48) + v9) > 8u)
            {
              if (v13 == 9)
              {
                v15 = 0xE500000000000000;
                v14 = 0x6F65646976;
                if (v6 > 5)
                {
                  goto LABEL_38;
                }
              }

              else if (v13 == 10)
              {
                v15 = 0xE400000000000000;
                v14 = 1953394534;
                if (v6 > 5)
                {
                  goto LABEL_38;
                }
              }

              else
              {
                v14 = 0x616C506F65646976;
                v15 = 0xEB00000000726579;
                if (v6 > 5)
                {
                  goto LABEL_38;
                }
              }
            }

            else if (v13 == 6)
            {
              v15 = 0xE300000000000000;
              v14 = 7107189;
              if (v6 > 5)
              {
                goto LABEL_38;
              }
            }

            else
            {
              v15 = 0xE500000000000000;
              if (v13 == 7)
              {
                v14 = 0x726F6C6F63;
                if (v6 > 5)
                {
                  goto LABEL_38;
                }
              }

              else
              {
                v14 = 0x6567616D69;
                if (v6 > 5)
                {
                  goto LABEL_38;
                }
              }
            }
          }

          else if (*(*(v3 + 48) + v9) > 2u)
          {
            if (v13 == 3)
            {
              v15 = 0xE500000000000000;
              v14 = 0x74616F6C66;
              if (v6 > 5)
              {
                goto LABEL_38;
              }
            }

            else if (v13 == 4)
            {
              v15 = 0xE700000000000000;
              v14 = 0x72656765746E69;
              if (v6 > 5)
              {
                goto LABEL_38;
              }
            }

            else
            {
              v15 = 0xE600000000000000;
              v14 = 0x676E69727473;
              if (v6 > 5)
              {
                goto LABEL_38;
              }
            }
          }

          else if (*(*(v3 + 48) + v9))
          {
            if (v13 == 1)
            {
              v14 = 1702125924;
            }

            else
            {
              v14 = 1836412517;
            }

            v15 = 0xE400000000000000;
            if (v6 > 5)
            {
LABEL_38:
              v16 = 0x616C506F65646976;
              if (v6 == 10)
              {
                v16 = 1953394534;
              }

              v17 = 0xEB00000000726579;
              if (v6 == 10)
              {
                v17 = 0xE400000000000000;
              }

              if (v6 == 9)
              {
                v16 = 0x6F65646976;
                v17 = 0xE500000000000000;
              }

              v18 = 0x726F6C6F63;
              if (v6 != 7)
              {
                v18 = 0x6567616D69;
              }

              v19 = 0xE500000000000000;
              if (v6 == 6)
              {
                v18 = 7107189;
                v19 = 0xE300000000000000;
              }

              if (v6 <= 8)
              {
                v20 = v18;
              }

              else
              {
                v20 = v16;
              }

              if (v6 <= 8)
              {
                v21 = v19;
              }

              else
              {
                v21 = v17;
              }

              if (v14 != v20)
              {
                goto LABEL_78;
              }

              goto LABEL_77;
            }
          }

          else
          {
            v15 = 0xE700000000000000;
            v14 = 0x6E61656C6F6F62;
            if (v6 > 5)
            {
              goto LABEL_38;
            }
          }

          if (v6 > 2)
          {
            v23 = 0x72656765746E69;
            if (v6 != 4)
            {
              v23 = 0x676E69727473;
            }

            v24 = 0xE700000000000000;
            if (v6 != 4)
            {
              v24 = 0xE600000000000000;
            }

            if (v6 == 3)
            {
              v25 = 0x74616F6C66;
            }

            else
            {
              v25 = v23;
            }

            if (v6 == 3)
            {
              v21 = 0xE500000000000000;
            }

            else
            {
              v21 = v24;
            }

            if (v14 != v25)
            {
              goto LABEL_78;
            }
          }

          else if (v6)
          {
            if (v6 == 1)
            {
              v22 = 1702125924;
            }

            else
            {
              v22 = 1836412517;
            }

            v21 = 0xE400000000000000;
            if (v14 != v22)
            {
              goto LABEL_78;
            }
          }

          else
          {
            v21 = 0xE700000000000000;
            if (v14 != 0x6E61656C6F6F62)
            {
              goto LABEL_78;
            }
          }

LABEL_77:
          if (v15 == v21)
          {

            goto LABEL_4;
          }

LABEL_78:
          v26 = sub_1D72646CC();

          if (v26)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v27 = *(v3 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(v3 + 16) = v29;
LABEL_4:
      v4 = v32;
      if (v32 == v30)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1D5E27400(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5B5BC8C(0, &qword_1EDF042C8, MEMORY[0x1E69E7B10], MEMORY[0x1E69E7B18], MEMORY[0x1E69E6A10]);
    v3 = sub_1D7263CDC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 4 * v4);
      sub_1D7264A0C();
      sub_1D7264A3C();
      result = sub_1D7264A5C();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 4 * v13) != v10)
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
        *(v17 + 4 * v13) = v10;
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

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D5E2755C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5CD88E8(0, &qword_1EDF1A5C8, sub_1D5B4B090, &type metadata for FormatItemKind);
    v3 = sub_1D7263CDC();
    v4 = 0;
    v5 = v3 + 56;
    v32 = a1 + 32;
    while (1)
    {
      v9 = (v32 + 16 * v4);
      v10 = *v9;
      v11 = v9[1];
      sub_1D7264A0C();
      switch(v11)
      {
        case 0uLL:
          v12 = 0;
          goto LABEL_25;
        case 1uLL:
          v12 = 1;
          goto LABEL_25;
        case 2uLL:
          v12 = 2;
          goto LABEL_25;
        case 3uLL:
          v12 = 3;
          goto LABEL_25;
        case 4uLL:
          v12 = 4;
          goto LABEL_25;
        case 5uLL:
          v12 = 5;
          goto LABEL_25;
        case 6uLL:
          v12 = 6;
          goto LABEL_25;
        case 7uLL:
          v12 = 7;
          goto LABEL_25;
        case 8uLL:
          v12 = 8;
          goto LABEL_25;
        case 9uLL:
          v12 = 9;
          goto LABEL_25;
        case 0xAuLL:
          v12 = 10;
          goto LABEL_25;
        case 0xBuLL:
          v12 = 11;
          goto LABEL_25;
        case 0xCuLL:
          v12 = 12;
          goto LABEL_25;
        case 0xDuLL:
          v12 = 13;
          goto LABEL_25;
        case 0xEuLL:
          v12 = 14;
          goto LABEL_25;
        case 0xFuLL:
          v12 = 15;
LABEL_25:
          MEMORY[0x1DA6FC0B0](v12);
          break;
        default:
          MEMORY[0x1DA6FC0B0](16);

          sub_1D72621EC();
          break;
      }

      result = sub_1D7264A5C();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      if ((v17 & v16) == 0)
      {
        break;
      }

      while (2)
      {
        v18 = (*(v3 + 48) + 16 * v14);
        v20 = *v18;
        v19 = v18[1];
        switch(v19)
        {
          case 0:
            if (v11)
            {
              sub_1D5CBA110(v10, v11);
              v21 = 0;
              goto LABEL_62;
            }

            sub_1D5CBA0FC(*v18, 0);
            v7 = v10;
            v8 = 0;
            goto LABEL_6;
          case 1:
            if (v11 == 1)
            {
              sub_1D5CBA0FC(*v18, 1uLL);
              v7 = v10;
              v8 = 1;
              goto LABEL_6;
            }

            sub_1D5CBA110(v10, v11);
            v21 = 1;
            goto LABEL_62;
          case 2:
            if (v11 == 2)
            {
              sub_1D5CBA0FC(*v18, 2uLL);
              v7 = v10;
              v8 = 2;
              goto LABEL_6;
            }

            sub_1D5CBA110(v10, v11);
            v21 = 2;
            goto LABEL_62;
          case 3:
            if (v11 == 3)
            {
              sub_1D5CBA0FC(*v18, 3uLL);
              v7 = v10;
              v8 = 3;
              goto LABEL_6;
            }

            sub_1D5CBA110(v10, v11);
            v21 = 3;
            goto LABEL_62;
          case 4:
            if (v11 == 4)
            {
              sub_1D5CBA0FC(*v18, 4uLL);
              v7 = v10;
              v8 = 4;
LABEL_6:
              sub_1D5CBA0FC(v7, v8);
              goto LABEL_7;
            }

            sub_1D5CBA110(v10, v11);
            v21 = 4;
            goto LABEL_62;
          case 5:
            if (v11 == 5)
            {
              sub_1D5CBA0FC(*v18, 5uLL);
              v7 = v10;
              v8 = 5;
              goto LABEL_6;
            }

            sub_1D5CBA110(v10, v11);
            v21 = 5;
            goto LABEL_62;
          case 6:
            if (v11 == 6)
            {
              sub_1D5CBA0FC(*v18, 6uLL);
              v7 = v10;
              v8 = 6;
              goto LABEL_6;
            }

            sub_1D5CBA110(v10, v11);
            v21 = 6;
            goto LABEL_62;
          case 7:
            if (v11 == 7)
            {
              sub_1D5CBA0FC(*v18, 7uLL);
              v7 = v10;
              v8 = 7;
              goto LABEL_6;
            }

            sub_1D5CBA110(v10, v11);
            v21 = 7;
            goto LABEL_62;
          case 8:
            if (v11 == 8)
            {
              sub_1D5CBA0FC(*v18, 8uLL);
              v7 = v10;
              v8 = 8;
              goto LABEL_6;
            }

            sub_1D5CBA110(v10, v11);
            v21 = 8;
            goto LABEL_62;
          case 9:
            if (v11 == 9)
            {
              sub_1D5CBA0FC(*v18, 9uLL);
              v7 = v10;
              v8 = 9;
              goto LABEL_6;
            }

            sub_1D5CBA110(v10, v11);
            v21 = 9;
            goto LABEL_62;
          case 10:
            if (v11 == 10)
            {
              sub_1D5CBA0FC(*v18, 0xAuLL);
              v7 = v10;
              v8 = 10;
              goto LABEL_6;
            }

            sub_1D5CBA110(v10, v11);
            v21 = 10;
            goto LABEL_62;
          case 11:
            if (v11 == 11)
            {
              sub_1D5CBA0FC(*v18, 0xBuLL);
              v7 = v10;
              v8 = 11;
              goto LABEL_6;
            }

            sub_1D5CBA110(v10, v11);
            v21 = 11;
            goto LABEL_62;
          case 12:
            if (v11 == 12)
            {
              sub_1D5CBA0FC(*v18, 0xCuLL);
              v7 = v10;
              v8 = 12;
              goto LABEL_6;
            }

            sub_1D5CBA110(v10, v11);
            v21 = 12;
            goto LABEL_62;
          case 13:
            if (v11 == 13)
            {
              sub_1D5CBA0FC(*v18, 0xDuLL);
              v7 = v10;
              v8 = 13;
              goto LABEL_6;
            }

            sub_1D5CBA110(v10, v11);
            v21 = 13;
            goto LABEL_62;
          case 14:
            if (v11 == 14)
            {
              sub_1D5CBA0FC(*v18, 0xEuLL);
              v7 = v10;
              v8 = 14;
              goto LABEL_6;
            }

            sub_1D5CBA110(v10, v11);
            v21 = 14;
            goto LABEL_62;
          case 15:
            if (v11 == 15)
            {
              sub_1D5CBA0FC(*v18, 0xFuLL);
              v7 = v10;
              v8 = 15;
              goto LABEL_6;
            }

            sub_1D5CBA110(v10, v11);
            v21 = 15;
            goto LABEL_62;
          default:
            v22 = v4;
            v23 = v1;
            if (v11 < 0x10)
            {
              v24 = v18[1];
              sub_1D5CBA110(v10, v11);
              sub_1D5CBA110(v20, v24);
              v21 = v24;
              v1 = v23;
              v4 = v22;
LABEL_62:
              sub_1D5CBA0FC(v20, v21);
              result = sub_1D5CBA0FC(v10, v11);
LABEL_63:
              v14 = (v14 + 1) & v13;
              v15 = v14 >> 6;
              v16 = *(v5 + 8 * (v14 >> 6));
              v17 = 1 << v14;
              if ((v16 & (1 << v14)) == 0)
              {
                goto LABEL_71;
              }

              continue;
            }

            if (v20 != v10 || v19 != v11)
            {
              v26 = v18[1];
              v31 = sub_1D72646CC();
              sub_1D5CBA110(v10, v11);
              sub_1D5CBA110(v20, v26);
              sub_1D5CBA0FC(v20, v26);
              result = sub_1D5CBA0FC(v10, v11);
              v1 = v23;
              v4 = v22;
              if (v31)
              {
                v7 = v10;
                v8 = v11;
                goto LABEL_6;
              }

              goto LABEL_63;
            }

            sub_1D5CBA0FC(v10, v11);
            sub_1D5CBA0FC(v10, v11);
            v4 = v22;
LABEL_7:
            if (++v4 == v1)
            {
              return v3;
            }

            break;
        }

        break;
      }
    }

LABEL_71:
    *(v5 + 8 * v15) = v16 | v17;
    v27 = (*(v3 + 48) + 16 * v14);
    *v27 = v10;
    v27[1] = v11;
    v28 = *(v3 + 16);
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (!v29)
    {
      *(v3 + 16) = v30;
      goto LABEL_7;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1D5E27C2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5CD88E8(0, &qword_1EDF1A5B0, sub_1D5E299D0, &type metadata for FormatResizeAutoMask);
    v3 = sub_1D7263CDC();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    while (1)
    {
      v6 = *(v26 + v4);
      v27 = v4 + 1;
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          v13 = *(*(v3 + 48) + v9);
          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = 0xD000000000000011;
              v15 = 0x80000001D73BAB30;
              if (v6 > 2)
              {
                goto LABEL_35;
              }
            }

            else if (v13 == 4)
            {
              v14 = 0x656C626978656C66;
              v15 = 0xEE00746867696548;
              if (v6 > 2)
              {
                goto LABEL_35;
              }
            }

            else
            {
              v14 = 0xD000000000000014;
              v15 = 0x80000001D73BAB60;
              if (v6 > 2)
              {
                goto LABEL_35;
              }
            }
          }

          else if (*(*(v3 + 48) + v9))
          {
            if (v13 == 1)
            {
              v14 = 0x656C626978656C66;
            }

            else
            {
              v14 = 0xD000000000000013;
            }

            if (v13 == 1)
            {
              v15 = 0xED00006874646957;
            }

            else
            {
              v15 = 0x80000001D73BAB10;
            }

            if (v6 > 2)
            {
LABEL_35:
              v18 = 0xD000000000000014;
              if (v6 == 4)
              {
                v18 = 0x656C626978656C66;
              }

              v19 = 0xEE00746867696548;
              if (v6 != 4)
              {
                v19 = 0x80000001D73BAB60;
              }

              if (v6 == 3)
              {
                v20 = 0xD000000000000011;
              }

              else
              {
                v20 = v18;
              }

              if (v6 == 3)
              {
                v17 = 0x80000001D73BAB30;
              }

              else
              {
                v17 = v19;
              }

              if (v14 != v20)
              {
                goto LABEL_47;
              }

              goto LABEL_46;
            }
          }

          else
          {
            v14 = 0xD000000000000012;
            v15 = 0x80000001D73BAAE0;
            if (v6 > 2)
            {
              goto LABEL_35;
            }
          }

          if (v6)
          {
            if (v6 == 1)
            {
              v16 = 0x656C626978656C66;
            }

            else
            {
              v16 = 0xD000000000000013;
            }

            if (v6 == 1)
            {
              v17 = 0xED00006874646957;
            }

            else
            {
              v17 = 0x80000001D73BAB10;
            }

            if (v14 != v16)
            {
              goto LABEL_47;
            }
          }

          else
          {
            v17 = 0x80000001D73BAAE0;
            if (v14 != 0xD000000000000012)
            {
              goto LABEL_47;
            }
          }

LABEL_46:
          if (v15 == v17)
          {

            goto LABEL_4;
          }

LABEL_47:
          v21 = sub_1D72646CC();

          if (v21)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      *(v3 + 16) = v24;
LABEL_4:
      v4 = v27;
      if (v27 == v25)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1D5E28004(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5CD88E8(0, &qword_1EDF1A5A0, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement);
    v3 = sub_1D7263CDC();
    v4 = 0;
    v5 = v3 + 56;
    v26 = v1;
    v27 = a1 + 32;
    while (1)
    {
      v6 = *(v27 + v4++);
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          v13 = *(*(v3 + 48) + v9);
          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v15 = 0xE500000000000000;
              v14 = 0x6567616D69;
              if (v6 > 2)
              {
                goto LABEL_31;
              }
            }

            else if (v13 == 4)
            {
              v15 = 0xE400000000000000;
              v14 = 1633905005;
              if (v6 > 2)
              {
                goto LABEL_31;
              }
            }

            else
            {
              v14 = 0x66456C6175736976;
              v15 = 0xEC00000074636566;
              if (v6 > 2)
              {
                goto LABEL_31;
              }
            }
          }

          else if (*(*(v3 + 48) + v9))
          {
            if (v13 == 1)
            {
              v14 = 0x72476C6169646172;
            }

            else
            {
              v14 = 0x65695674696C7073;
            }

            if (v13 == 1)
            {
              v15 = 0xEE00746E65696461;
            }

            else
            {
              v15 = 0xE900000000000077;
            }

            if (v6 > 2)
            {
LABEL_31:
              v21 = 0x66456C6175736976;
              if (v6 == 4)
              {
                v21 = 1633905005;
              }

              v19 = 0xEC00000074636566;
              if (v6 == 4)
              {
                v19 = 0xE400000000000000;
              }

              v16 = v6 == 3;
              if (v6 == 3)
              {
                v17 = 0x6567616D69;
              }

              else
              {
                v17 = v21;
              }

              v18 = 0xE500000000000000;
              goto LABEL_39;
            }
          }

          else
          {
            v15 = 0xE800000000000000;
            v14 = 0x746E656964617267;
            if (v6 > 2)
            {
              goto LABEL_31;
            }
          }

          if (!v6)
          {
            v20 = 0xE800000000000000;
            if (v14 != 0x746E656964617267)
            {
              goto LABEL_44;
            }

            goto LABEL_43;
          }

          v16 = v6 == 1;
          if (v6 == 1)
          {
            v17 = 0x72476C6169646172;
          }

          else
          {
            v17 = 0x65695674696C7073;
          }

          v18 = 0xEE00746E65696461;
          v19 = 0xE900000000000077;
LABEL_39:
          if (v16)
          {
            v20 = v18;
          }

          else
          {
            v20 = v19;
          }

          if (v14 != v17)
          {
            goto LABEL_44;
          }

LABEL_43:
          if (v15 == v20)
          {

            goto LABEL_4;
          }

LABEL_44:
          v22 = sub_1D72646CC();

          if (v22)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v23 = *(v3 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      *(v3 + 16) = v25;
LABEL_4:
      if (v4 == v26)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1D5E28430(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_1D5CD88E8(0, a2, a3, a4);
    v6 = sub_1D7263CDC();
    v7 = 0;
    v8 = v6 + 56;
    v9 = a1 + 32;
    while (1)
    {
      v13 = *(v9 + v7);
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](v13);
      result = sub_1D7264A5C();
      v15 = ~(-1 << *(v6 + 32));
      v16 = result & v15;
      v17 = (result & v15) >> 6;
      v18 = *(v8 + 8 * v17);
      v19 = 1 << (result & v15);
      v20 = *(v6 + 48);
      if ((v19 & v18) != 0)
      {
        while (*(v20 + v16) != v13)
        {
          v16 = (v16 + 1) & v15;
          v17 = v16 >> 6;
          v18 = *(v8 + 8 * (v16 >> 6));
          v19 = 1 << v16;
          if (((1 << v16) & v18) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v8 + 8 * v17) = v19 | v18;
        *(v20 + v16) = v13;
        v10 = *(v6 + 16);
        v11 = __OFADD__(v10, 1);
        v12 = v10 + 1;
        if (v11)
        {
          __break(1u);
          return result;
        }

        *(v6 + 16) = v12;
      }

      if (++v7 == v4)
      {
        return v6;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D5E28588(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5CD88E8(0, &qword_1EDF04328, sub_1D5E2A63C, &type metadata for FeedCursorKind);
    v3 = sub_1D7263CDC();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    while (1)
    {
      v6 = *(v28 + v4++);
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          v13 = *(*(v3 + 48) + v9);
          if (v13 <= 2)
          {
            if (*(*(v3 + 48) + v9))
            {
              if (v13 == 1)
              {
                v14 = 1852138867;
              }

              else
              {
                v14 = 0x6E657A6F7266;
              }

              if (v13 == 1)
              {
                v15 = 0xE400000000000000;
              }

              else
              {
                v15 = 0xE600000000000000;
              }

              if (v6 > 2)
              {
LABEL_19:
                v16 = 0x64656C6F6F706572;
                if (v6 != 5)
                {
                  v16 = 0x6465646E61707865;
                }

                v17 = 0x656546664F646E65;
                if (v6 != 3)
                {
                  v17 = 0x646568636163;
                }

                v18 = 0xE900000000000064;
                if (v6 != 3)
                {
                  v18 = 0xE600000000000000;
                }

                if (v6 <= 4)
                {
                  v19 = v17;
                }

                else
                {
                  v19 = v16;
                }

                if (v6 <= 4)
                {
                  v20 = v18;
                }

                else
                {
                  v20 = 0xE800000000000000;
                }

                if (v14 != v19)
                {
                  goto LABEL_52;
                }

                goto LABEL_51;
              }
            }

            else
            {
              v15 = 0xE600000000000000;
              v14 = 0x657669746361;
              if (v6 > 2)
              {
                goto LABEL_19;
              }
            }
          }

          else if (*(*(v3 + 48) + v9) > 4u)
          {
            v15 = 0xE800000000000000;
            if (v13 == 5)
            {
              v21 = 0x6C6F6F706572;
            }

            else
            {
              v21 = 0x646E61707865;
            }

            v14 = v21 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
            if (v6 > 2)
            {
              goto LABEL_19;
            }
          }

          else if (v13 == 3)
          {
            v14 = 0x656546664F646E65;
            v15 = 0xE900000000000064;
            if (v6 > 2)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v15 = 0xE600000000000000;
            v14 = 0x646568636163;
            if (v6 > 2)
            {
              goto LABEL_19;
            }
          }

          if (v6)
          {
            if (v6 == 1)
            {
              v22 = 1852138867;
            }

            else
            {
              v22 = 0x6E657A6F7266;
            }

            if (v6 == 1)
            {
              v20 = 0xE400000000000000;
            }

            else
            {
              v20 = 0xE600000000000000;
            }

            if (v14 != v22)
            {
              goto LABEL_52;
            }
          }

          else
          {
            v20 = 0xE600000000000000;
            if (v14 != 0x657669746361)
            {
              goto LABEL_52;
            }
          }

LABEL_51:
          if (v15 == v20)
          {

            goto LABEL_4;
          }

LABEL_52:
          v23 = sub_1D72646CC();

          if (v23)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      *(v3 + 16) = v26;
LABEL_4:
      if (v4 == v27)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1D5E28984(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5CD88E8(0, &qword_1EC87FB28, sub_1D5E2A5E8, &type metadata for FormatPrintNodeValue);
    v3 = sub_1D7263CDC();
    v4 = 0;
    v5 = v3 + 56;
    v32 = v1;
    v33 = a1 + 32;
    while (1)
    {
      v6 = *(v33 + v4);
      result = sub_1D6950A98(*(v3 + 40), *(v33 + v4));
      v8 = -1 << *(v3 + 32);
      v9 = result & ~v8;
      v10 = v9 >> 6;
      v11 = *(v5 + 8 * (v9 >> 6));
      v12 = 1 << v9;
      if (((1 << v9) & v11) != 0)
      {
        break;
      }

LABEL_68:
      *(v5 + 8 * v10) = v12 | v11;
      *(*(v3 + 48) + v9) = v6;
      v29 = *(v3 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v31;
LABEL_4:
      if (++v4 == v32)
      {
        return v3;
      }
    }

    v13 = ~v8;
    while (1)
    {
      v14 = *(*(v3 + 48) + v9);
      if (v14 > 3)
      {
        if (*(*(v3 + 48) + v9) > 5u)
        {
          if (v14 == 6)
          {
            v20 = 0xE800000000000000;
            v19 = 0x73676E69646E6962;
            if (v6 > 3)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v20 = 0xE300000000000000;
            v19 = 7105633;
            if (v6 > 3)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          if (v14 == 4)
          {
            v19 = 0x6574616C706D6574;
          }

          else
          {
            v19 = 0x747865746E6F63;
          }

          if (v14 == 4)
          {
            v20 = 0xE800000000000000;
          }

          else
          {
            v20 = 0xE700000000000000;
          }

          if (v6 > 3)
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
        v15 = 0x40736E6F6974706FLL;
        v16 = 0x726F73727563;
        if (v14 == 2)
        {
          v16 = 0x40736E6F6974706FLL;
        }

        v17 = 0xEE0074756F79616CLL;
        if (v14 != 2)
        {
          v17 = 0xE600000000000000;
        }

        if (!*(*(v3 + 48) + v9))
        {
          v15 = 0x736E6F6974706FLL;
        }

        v18 = 0xEC000000646E6962;
        if (!*(*(v3 + 48) + v9))
        {
          v18 = 0xE700000000000000;
        }

        if (*(*(v3 + 48) + v9) <= 1u)
        {
          v19 = v15;
        }

        else
        {
          v19 = v16;
        }

        if (*(*(v3 + 48) + v9) <= 1u)
        {
          v20 = v18;
        }

        else
        {
          v20 = v17;
        }

        if (v6 > 3)
        {
LABEL_35:
          v21 = 0x73676E69646E6962;
          if (v6 != 6)
          {
            v21 = 7105633;
          }

          v22 = 0xE300000000000000;
          if (v6 == 6)
          {
            v22 = 0xE800000000000000;
          }

          v23 = 0x6574616C706D6574;
          if (v6 != 4)
          {
            v23 = 0x747865746E6F63;
          }

          v24 = 0xE700000000000000;
          if (v6 == 4)
          {
            v24 = 0xE800000000000000;
          }

          if (v6 <= 5)
          {
            v25 = v23;
          }

          else
          {
            v25 = v21;
          }

          if (v6 <= 5)
          {
            v26 = v24;
          }

          else
          {
            v26 = v22;
          }

          if (v19 != v25)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        }
      }

      if (v6 > 1)
      {
        if (v6 == 2)
        {
          v27 = 0x40736E6F6974706FLL;
        }

        else
        {
          v27 = 0x726F73727563;
        }

        if (v6 == 2)
        {
          v26 = 0xEE0074756F79616CLL;
        }

        else
        {
          v26 = 0xE600000000000000;
        }

        if (v19 != v27)
        {
          goto LABEL_66;
        }
      }

      else if (v6)
      {
        v26 = 0xEC000000646E6962;
        if (v19 != 0x40736E6F6974706FLL)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v26 = 0xE700000000000000;
        if (v19 != 0x736E6F6974706FLL)
        {
          goto LABEL_66;
        }
      }

LABEL_65:
      if (v20 == v26)
      {

        goto LABEL_4;
      }

LABEL_66:
      v28 = sub_1D72646CC();

      if (v28)
      {
        goto LABEL_4;
      }

      v9 = (v9 + 1) & v13;
      v10 = v9 >> 6;
      v11 = *(v5 + 8 * (v9 >> 6));
      v12 = 1 << v9;
      if (((1 << v9) & v11) == 0)
      {
        goto LABEL_68;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D5E28D48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5CD88E8(0, &qword_1EDF1A598, sub_1D5E2A458, &type metadata for FormatOptionsNodeStatementValue.CodingValidationType);
    v3 = sub_1D7263CDC();
    v4 = 0;
    v5 = v3 + 56;
    v30 = v1;
    v31 = a1 + 32;
    while (1)
    {
      v6 = *(v31 + v4);
      sub_1D7264A0C();
      if (v6 == 12)
      {
        MEMORY[0x1DA6FC0B0](0);
      }

      else
      {
        MEMORY[0x1DA6FC0B0](1);
        sub_1D72621EC();
      }

      result = sub_1D7264A5C();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        break;
      }

LABEL_9:
      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v13 = *(v3 + 16);
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v15;
LABEL_4:
      if (++v4 == v30)
      {
        return v3;
      }
    }

    while (1)
    {
      v16 = *(*(v3 + 48) + v9);
      if (v16 == 12)
      {
        if (v6 == 12)
        {
          goto LABEL_4;
        }

        goto LABEL_12;
      }

      if (v6 != 12)
      {
        break;
      }

LABEL_12:
      v9 = (v9 + 1) & v8;
      v10 = v9 >> 6;
      v11 = *(v5 + 8 * (v9 >> 6));
      v12 = 1 << v9;
      if ((v11 & (1 << v9)) == 0)
      {
        goto LABEL_9;
      }
    }

    if (*(*(v3 + 48) + v9) > 5u)
    {
      if (*(*(v3 + 48) + v9) > 8u)
      {
        if (v16 == 9)
        {
          v18 = 0xE500000000000000;
          v17 = 0x6F65646976;
          if (v6 > 5)
          {
            goto LABEL_47;
          }
        }

        else if (v16 == 10)
        {
          v18 = 0xE400000000000000;
          v17 = 1953394534;
          if (v6 > 5)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v17 = 0x616C506F65646976;
          v18 = 0xEB00000000726579;
          if (v6 > 5)
          {
            goto LABEL_47;
          }
        }
      }

      else if (v16 == 6)
      {
        v18 = 0xE300000000000000;
        v17 = 7107189;
        if (v6 > 5)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v18 = 0xE500000000000000;
        if (v16 == 7)
        {
          v17 = 0x726F6C6F63;
          if (v6 > 5)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v17 = 0x6567616D69;
          if (v6 > 5)
          {
            goto LABEL_47;
          }
        }
      }
    }

    else if (*(*(v3 + 48) + v9) > 2u)
    {
      if (v16 == 3)
      {
        v18 = 0xE500000000000000;
        v17 = 0x74616F6C66;
        if (v6 > 5)
        {
          goto LABEL_47;
        }
      }

      else if (v16 == 4)
      {
        v18 = 0xE700000000000000;
        v17 = 0x72656765746E69;
        if (v6 > 5)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v18 = 0xE600000000000000;
        v17 = 0x676E69727473;
        if (v6 > 5)
        {
          goto LABEL_47;
        }
      }
    }

    else
    {
      if (*(*(v3 + 48) + v9))
      {
        if (v16 == 1)
        {
          v17 = 1702125924;
        }

        else
        {
          v17 = 1836412517;
        }

        v18 = 0xE400000000000000;
        if (v6 <= 5)
        {
          goto LABEL_66;
        }

LABEL_47:
        v19 = 0x616C506F65646976;
        if (v6 == 10)
        {
          v19 = 1953394534;
        }

        v20 = 0xEB00000000726579;
        if (v6 == 10)
        {
          v20 = 0xE400000000000000;
        }

        if (v6 == 9)
        {
          v19 = 0x6F65646976;
          v20 = 0xE500000000000000;
        }

        v21 = 0x726F6C6F63;
        if (v6 != 7)
        {
          v21 = 0x6567616D69;
        }

        v22 = 0xE500000000000000;
        if (v6 == 6)
        {
          v21 = 7107189;
          v22 = 0xE300000000000000;
        }

        if (v6 <= 8)
        {
          v23 = v21;
        }

        else
        {
          v23 = v19;
        }

        if (v6 <= 8)
        {
          v24 = v22;
        }

        else
        {
          v24 = v20;
        }

        if (v17 == v23)
        {
          goto LABEL_86;
        }

        goto LABEL_87;
      }

      v18 = 0xE700000000000000;
      v17 = 0x6E61656C6F6F62;
      if (v6 > 5)
      {
        goto LABEL_47;
      }
    }

LABEL_66:
    if (v6 <= 2)
    {
      if (v6)
      {
        if (v6 == 1)
        {
          v25 = 1702125924;
        }

        else
        {
          v25 = 1836412517;
        }

        v24 = 0xE400000000000000;
        if (v17 != v25)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v24 = 0xE700000000000000;
        if (v17 != 0x6E61656C6F6F62)
        {
          goto LABEL_87;
        }
      }

LABEL_86:
      if (v18 == v24)
      {

        goto LABEL_4;
      }

      goto LABEL_87;
    }

    v26 = 0x72656765746E69;
    if (v6 != 4)
    {
      v26 = 0x676E69727473;
    }

    v27 = 0xE700000000000000;
    if (v6 != 4)
    {
      v27 = 0xE600000000000000;
    }

    if (v6 == 3)
    {
      v28 = 0x74616F6C66;
    }

    else
    {
      v28 = v26;
    }

    if (v6 == 3)
    {
      v24 = 0xE500000000000000;
    }

    else
    {
      v24 = v27;
    }

    if (v17 == v28)
    {
      goto LABEL_86;
    }

LABEL_87:
    v29 = sub_1D72646CC();

    if (v29)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D5E29338(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5CD88E8(0, &qword_1EC87FAC0, sub_1D5E29A78, &type metadata for DebugFormatDeviceOrientation);
    v3 = sub_1D7263CDC();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    while (1)
    {
      v6 = *(v25 + v4);
      sub_1D7264A0C();
      if (v6)
      {
        v7 = 0x70616373646E616CLL;
      }

      else
      {
        v7 = 0x7469617274726F70;
      }

      if (v6)
      {
        v8 = 0xE900000000000065;
      }

      else
      {
        v8 = 0xE800000000000000;
      }

      sub_1D72621EC();

      result = sub_1D7264A5C();
      v10 = -1 << *(v3 + 32);
      v11 = result & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) != 0)
      {
        v23 = v6;
        v15 = ~v10;
        do
        {
          if (*(*(v3 + 48) + v11))
          {
            v16 = 0x70616373646E616CLL;
          }

          else
          {
            v16 = 0x7469617274726F70;
          }

          if (*(*(v3 + 48) + v11))
          {
            v17 = 0xE900000000000065;
          }

          else
          {
            v17 = 0xE800000000000000;
          }

          if (v16 == v7 && v17 == v8)
          {

            goto LABEL_4;
          }

          v19 = sub_1D72646CC();

          if (v19)
          {
            goto LABEL_4;
          }

          v11 = (v11 + 1) & v15;
          v12 = v11 >> 6;
          v13 = *(v5 + 8 * (v11 >> 6));
          v14 = 1 << v11;
        }

        while ((v13 & (1 << v11)) != 0);
        LOBYTE(v6) = v23;
      }

      *(v5 + 8 * v12) = v13 | v14;
      *(*(v3 + 48) + v11) = v6;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      *(v3 + 16) = v22;
LABEL_4:
      if (++v4 == v24)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1D5E29588(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5CD88E8(0, &qword_1EDF04300, sub_1D5E296DC, &type metadata for FormatViewController.Event);
    v3 = sub_1D7263CDC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](v10);
      result = sub_1D7264A5C();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (v10 != *(v17 + v13))
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

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1D5E296DC()
{
  result = qword_1EDF0EB20;
  if (!qword_1EDF0EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EB20);
  }

  return result;
}

void sub_1D5E29730(uint64_t a1)
{
  if (!qword_1EC88EC50)
  {
    type metadata accessor for FormatStateViewNodeStateDataLayoutAttributes();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88EC50);
    }
  }
}

void sub_1D5E2979C()
{
  if (!qword_1EC88EC60)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88EC60);
    }
  }
}

void sub_1D5E29800(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D5B49474(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1D5E29868()
{
  result = qword_1EC87FAB0;
  if (!qword_1EC87FAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FAB0);
  }

  return result;
}

uint64_t sub_1D5E298BC(uint64_t a1, uint64_t a2)
{
  sub_1D5E29800(0, &qword_1EDF29608, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, type metadata accessor for FormatNodeBindingItem);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D5E2994C(uint64_t a1)
{
  if (!qword_1EDF19778)
  {
    sub_1D5E29800(255, &qword_1EDF29608, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, type metadata accessor for FormatNodeBindingItem);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF19778);
    }
  }
}

unint64_t sub_1D5E299D0()
{
  result = qword_1EDF2ACE0;
  if (!qword_1EDF2ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ACE0);
  }

  return result;
}

unint64_t sub_1D5E29A24()
{
  result = qword_1EDF16438;
  if (!qword_1EDF16438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF16438);
  }

  return result;
}

unint64_t sub_1D5E29A78()
{
  result = qword_1EC87FAC8;
  if (!qword_1EC87FAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FAC8);
  }

  return result;
}

void sub_1D5E29ACC(uint64_t a1)
{
  if (!qword_1EC87FAD0)
  {
    type metadata accessor for AttributeName(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC87FAD0);
    }
  }
}

unint64_t sub_1D5E29B3C()
{
  result = qword_1EC87FAE0;
  if (!qword_1EC87FAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FAE0);
  }

  return result;
}

uint64_t sub_1D5E29B90(uint64_t a1)
{
  v2 = sub_1D726098C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_1D5E2A4AC(0);
    v11 = sub_1D7263CDC();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_1D5BFABF0(&unk_1EDF168A8, MEMORY[0x1E69B4188], MEMORY[0x1E69B4190]);
      v18 = sub_1D7261E7C();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v2);
          sub_1D5BFABF0(&qword_1EC87FB18, MEMORY[0x1E69B4188], MEMORY[0x1E69B4198]);
          v25 = sub_1D7261FBC();
          v26 = *v17;
          (*v17)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D5E29EA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5CD88E8(0, &qword_1EC87FAE8, sub_1D5E2A08C, &type metadata for DebugFormatPackageTreeSection);
    v3 = sub_1D7263CDC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v11 = v6 + 16 * v4;
      v12 = *v11;
      v13 = *(v11 + 8);
      sub_1D7264A0C();
      if (v13)
      {
        v14 = qword_1D7276F58[v12];
      }

      else
      {
        MEMORY[0x1DA6FC0B0](2);
        v14 = v12;
      }

      MEMORY[0x1DA6FC0B0](v14);
      result = sub_1D7264A5C();
      v16 = -1 << *(v3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = *(v5 + 8 * (v17 >> 6));
      v20 = 1 << v17;
      v21 = *(v3 + 48);
      if (((1 << v17) & v19) != 0)
      {
        v22 = ~v16;
        if (v12 > 2)
        {
          v23 = v13;
        }

        else
        {
          v23 = 0;
        }

        if (v12 == 2)
        {
          v24 = v13;
        }

        else
        {
          v24 = 0;
        }

        if (v12 == 1)
        {
          v25 = v13;
        }

        else
        {
          v25 = 0;
        }

        if (v12)
        {
          v26 = 0;
        }

        else
        {
          v26 = v13;
        }

        do
        {
          v28 = v21 + 16 * v17;
          v29 = *v28;
          if (*(v28 + 8) == 1)
          {
            if (v29 > 1)
            {
              if (v29 == 2)
              {
                if (v24)
                {
                  goto LABEL_5;
                }
              }

              else if (v23)
              {
                goto LABEL_5;
              }
            }

            else if (v29)
            {
              if (v25)
              {
                goto LABEL_5;
              }
            }

            else if (v26)
            {
              goto LABEL_5;
            }
          }

          else
          {
            if (v29 == v12)
            {
              v27 = v13;
            }

            else
            {
              v27 = 1;
            }

            if ((v27 & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v17 = (v17 + 1) & v22;
          v18 = v17 >> 6;
          v19 = *(v5 + 8 * (v17 >> 6));
          v20 = 1 << v17;
        }

        while ((v19 & (1 << v17)) != 0);
      }

      *(v5 + 8 * v18) = v19 | v20;
      v7 = v21 + 16 * v17;
      *v7 = v12;
      *(v7 + 8) = v13;
      v8 = *(v3 + 16);
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        break;
      }

      *(v3 + 16) = v10;
LABEL_5:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

unint64_t sub_1D5E2A08C()
{
  result = qword_1EC87FAF0;
  if (!qword_1EC87FAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FAF0);
  }

  return result;
}

void sub_1D5E2A0E0(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1D7263BFC())
    {
LABEL_3:
      sub_1D5E2A3C4(0);
      v3 = sub_1D7263CDC();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1D7263BFC();
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

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
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
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x1DA6FB460](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1D72636FC();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1D5B5A498(0, &qword_1EDF1A710, 0x1E69DD250);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1D726370C();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
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
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_1D72636FC();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_1D5B5A498(0, &qword_1EDF1A710, 0x1E69DD250);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1D726370C();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
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

void sub_1D5E2A3C4(uint64_t a1)
{
  if (!qword_1EC87FB00)
  {
    sub_1D5B5A498(255, &qword_1EDF1A710, 0x1E69DD250);
    sub_1D5E2A738(&qword_1EC87FB08, &qword_1EDF1A710, 0x1E69DD250);
    v1 = sub_1D7263CEC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC87FB00);
    }
  }
}

unint64_t sub_1D5E2A458()
{
  result = qword_1EDF1F898;
  if (!qword_1EDF1F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1F898);
  }

  return result;
}

void sub_1D5E2A4AC(uint64_t a1)
{
  if (!qword_1EC87FB10)
  {
    sub_1D726098C();
    sub_1D5BFABF0(&unk_1EDF168A8, MEMORY[0x1E69B4188], MEMORY[0x1E69B4190]);
    v1 = sub_1D7263CEC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC87FB10);
    }
  }
}

unint64_t sub_1D5E2A540()
{
  result = qword_1EDF20970;
  if (!qword_1EDF20970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF20970);
  }

  return result;
}

void sub_1D5E2A594(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D72644CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D5E2A5E8()
{
  result = qword_1EC87FB30;
  if (!qword_1EC87FB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FB30);
  }

  return result;
}

unint64_t sub_1D5E2A63C()
{
  result = qword_1EDF39D48[0];
  if (!qword_1EDF39D48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF39D48);
  }

  return result;
}

unint64_t sub_1D5E2A690()
{
  result = qword_1EDF30168[0];
  if (!qword_1EDF30168[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF30168);
  }

  return result;
}

unint64_t sub_1D5E2A6E4()
{
  result = qword_1EDF3B7F8;
  if (!qword_1EDF3B7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3B7F8);
  }

  return result;
}

uint64_t sub_1D5E2A738(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B5A498(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5E2A7E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5E2A84C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

Class sub_1D5E2A8D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D72608BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v26 - v11;
  v13 = type metadata accessor for FeedSponsorshipBannerAd(0);
  v14 = *(v5 + 16);
  v14(v12, a1 + *(v13 + 20), v4);
  sub_1D72596FC();
  sub_1D72596DC();
  sub_1D725959C();
  sub_1D72595AC();

  sub_1D72596CC();

  if (v27 == 1)
  {
    v15 = sub_1D726086C();
    if (v15)
    {
      v16 = v15;
      v17 = [v15 backgroundColor];
    }

    else
    {
      v17 = 0;
    }

    (*(v5 + 8))(v12, v4);
    return v17;
  }

  v14(v8, v12, v4);
  v18 = (*(v5 + 88))(v8, v4);
  if (v18 == *MEMORY[0x1E69B40B0])
  {
    v19 = *(a2 + 152);
    if (!v19)
    {
      goto LABEL_11;
    }

    v20 = *(v19 + 56);
LABEL_10:
    if ((~v20 & 0xF000000000000007) != 0)
    {
      v27 = v20;

      v17 = FormatColor.color.getter(v23);
      v24 = *(v5 + 8);
      v24(v12, v4);
      sub_1D5C84FF4(v20);
      v24(v8, v4);
      return v17;
    }

LABEL_11:
    v22 = *(v5 + 8);
    v22(v12, v4);
    v17 = 0;
    v22(v8, v4);
    return v17;
  }

  if (v18 == *MEMORY[0x1E69B40A8])
  {
    v21 = *(a2 + 152);
    if (!v21)
    {
      goto LABEL_11;
    }

    v20 = *(v21 + 64);
    goto LABEL_10;
  }

  result = sub_1D72646BC();
  __break(1u);
  return result;
}

void sub_1D5E2AB94(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  sub_1D726344C();
  v8 = *(a1 + 152);
  if (v8)
  {
    v9 = *(v8 + 72);
  }

  else
  {
    v9 = 0;
  }

  [a2 setAccessibilityIgnoresInvertColors_];
  type metadata accessor for FeedSponsorshipBannerAd(0);
  v10 = sub_1D726085C();
  v11 = 1.0;
  if ((v10 & 1) == 0)
  {
    sub_1D72596FC();
    sub_1D72596DC();
    sub_1D725959C();
    sub_1D72595AC();

    sub_1D72596CC();

    v11 = 0.0;
    if (v37)
    {
      v11 = 1.0;
    }
  }

  [a2 setAlpha_];
  v36 = sub_1D5E2A8D0(a3, a1);
  [a2 setBackgroundColor_];
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    v12 = sub_1D726086C();
    if (!v12)
    {
      goto LABEL_17;
    }

    v13 = 2;
  }

  else if (v8 && (v14 = *(v8 + 80), v14 != 2))
  {
    v38 = *(v8 + 80);
    sub_1D5D0A57C(v14);
    v15 = sub_1D6C07078(a4);
    sub_1D5D0A58C(v38);
    v12 = sub_1D726086C();
    if (!v12)
    {
      goto LABEL_17;
    }

    v13 = v15;
  }

  else
  {
    v12 = sub_1D726086C();
    if (!v12)
    {
      goto LABEL_17;
    }

    v13 = 0;
  }

  v16 = v12;
  [v12 setOverrideUserInterfaceStyle_];

LABEL_17:
  v17 = [a2 subviews];
  sub_1D5E2B010();
  v18 = sub_1D726267C();

  v35 = v8;
  if (v18 >> 62)
  {
LABEL_36:
    v19 = sub_1D7263BFC();
    if (v19)
    {
LABEL_19:
      v20 = 0;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x1DA6FB460](v20, v18);
        }

        else
        {
          if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v21 = *(v18 + 8 * v20 + 32);
        }

        v22 = v21;
        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          if (v22)
          {
            break;
          }
        }

        ++v20;
        if (v23 == v19)
        {
          goto LABEL_37;
        }
      }

      v24 = sub_1D726086C();
      if (v24)
      {
        v25 = v24;
        [(objc_class *)v22 removeFromSuperview];
        [a2 addSubview_];
        v26 = v25;
        sub_1D726327C();
        sub_1D726344C();

        v27 = v35;
        if (v35)
        {
          v27 = *(v35 + 72);
        }

        v28 = v36;
        [v26 setAccessibilityIgnoresInvertColors_];
        v29 = v26;
        [v29 setBackgroundColor_];
      }

      else
      {
        sub_1D726327C();
        sub_1D726344C();
        v28 = v36;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_19;
    }
  }

LABEL_37:

  v30 = sub_1D726086C();
  if (!v30)
  {
    v22 = v36;
    goto LABEL_43;
  }

  v31 = v30;
  [a2 addSubview_];
  v32 = v31;
  sub_1D726327C();
  sub_1D726344C();

  v33 = v35;
  if (v35)
  {
    v33 = *(v35 + 72);
  }

  v22 = v36;
  [v32 setAccessibilityIgnoresInvertColors_];
  v34 = v32;
  [v34 setBackgroundColor_];

  v28 = v34;
LABEL_41:

LABEL_43:
}

unint64_t sub_1D5E2B010()
{
  result = qword_1EDF1A710;
  if (!qword_1EDF1A710)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF1A710);
  }

  return result;
}

uint64_t sub_1D5E2B05C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = type metadata accessor for FormatPluginData(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D7261B9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v41 = 0x6D726177657250;
  *(&v41 + 1) = 0xE700000000000000;
  sub_1D5B68374(a1, v42);
  sub_1D5B5DA7C();
  *v14 = sub_1D726308C();
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v15 = sub_1D7261BBC();
  result = (*(v11 + 8))(v14, v10);
  if (v15)
  {
    v17 = type metadata accessor for FormatContent.Resolved(0);
    v19 = *(a2 + *(v17 + 36));
    if (*(v19 + 16))
    {
      v20 = *(v19 + 48);
      v36 = *(v19 + 32);
      v37 = v20;
      v21 = *(v19 + 80);
      v38 = *(v19 + 64);
      v22 = *(v19 + 96);
      v39 = v21;
      v40 = v22;
      v34[2] = *(&v36 + 1);
      v34[1] = *(&v37 + 1);
      v23 = v22;
      sub_1D5CE9930(&v36, v35);

      if (*(v23 + 16))
      {
LABEL_4:
        MEMORY[0x1EEE9AC00](v17, v18);
        v34[-2] = a2;
        v34[-1] = a1;
        v24 = sub_1D5EC9720(sub_1D5E2B6BC, &v34[-4], v23);

LABEL_7:
        *(&v43 + 1) = v24;
        v32 = v42[0];
        *a3 = v41;
        a3[1] = v32;
        v33 = v43;
        a3[2] = v42[1];
        a3[3] = v33;
        sub_1D5E2C608(a2, type metadata accessor for FormatPluginData);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }
    }

    else
    {
      v23 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
        goto LABEL_4;
      }
    }

    sub_1D5D64E64(0, &unk_1EDF02160, type metadata accessor for FormatSection, MEMORY[0x1E69E6F90]);
    v25 = (type metadata accessor for FormatSection(0) - 8);
    v26 = (*(*v25 + 80) + 32) & ~*(*v25 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1D7273AE0;
    sub_1D5E2B80C(a2, v9, type metadata accessor for FormatPluginData);
    FormatContent.Resolved.slotItems.getter();
    v28 = v27;
    MEMORY[0x1EEE9AC00](v27, v29);
    v34[-2] = a1;
    v34[-1] = a2;
    sub_1D719594C(sub_1D5E2C668, &v34[-4], v28);
    v31 = v30;

    sub_1D5E2B7A8(v9, v24 + v26);
    *(v24 + v26 + v25[7]) = v31;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5E2B4C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for FormatPluginData(0);
  v9 = (v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = *a1;
  v31 = *(a1 + 1);
  FormatContent.Resolved.convertSection(_:)(&v30, v12);
  sub_1D5E2B80C(a2 + v9[7], &v12[v9[7]], type metadata accessor for FeedContext);
  sub_1D5D64DD0(a2 + v9[8], &v12[v9[8]]);
  v13 = v9[10];
  v14 = *(a2 + v13);
  v15 = *(a2 + v9[9]);
  v16 = *(a2 + v9[11]);
  v17 = (a2 + v9[12]);
  v18 = *v17;
  LOBYTE(v17) = *(v17 + 8);
  v19 = *(a2 + v9[13]);
  v20 = *(a2 + v9[14]);
  *&v12[v13] = v14;
  v12[v9[9]] = v15;
  *&v12[v9[11]] = v16;
  v21 = &v12[v9[12]];
  *v21 = v18;
  v21[8] = v17;
  v12[v9[13]] = v19;
  v12[v9[14]] = v20;
  sub_1D5E2B80C(v12, a4, type metadata accessor for FormatPluginData);

  v22 = v14;

  FormatContent.Resolved.slotItems.getter();
  v28 = a3;
  v29 = v12;
  sub_1D719594C(sub_1D5E2B874, v27, v23);
  v25 = v24;

  *(a4 + *(type metadata accessor for FormatSection(0) + 20)) = v25;
  return sub_1D5E2C608(v12, type metadata accessor for FormatPluginData);
}

uint64_t sub_1D5E2B6DC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  v9 = type metadata accessor for FormatPluginData(0);
  v10 = *(v9 + 20);
  v11 = *a3;
  v12 = a3[1];
  v13 = a3 + *(v9 + 40);
  v14 = *v13;
  LOBYTE(v13) = v13[8];
  v17 = v14;
  v18 = v13;

  v15 = sub_1D6D2087C(a1, a3 + v10, v11, v12, &v17, v7, v8);

  *a4 = v15;
  return result;
}

uint64_t sub_1D5E2B7A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatPluginData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5E2B80C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5E2B8A0(uint64_t a1, void (*a2)(char *), uint64_t a3, __n128 a4)
{
  v69 = a3;
  v70 = a2;
  sub_1D5E2C448(0, &unk_1EDF17028, MEMORY[0x1E69D7ED8], a4);
  v68 = v4;
  v67 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v66 = &v65 - v6;
  v92 = type metadata accessor for FormatModel(0);
  v71 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v7);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v65 - v13;
  sub_1D5E2C2C8(0, v12);
  v90 = v15;
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E2C35C(0, v18);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v80 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for FormatSectionDescriptor(0);
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v72 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E2C428(0, v26);
  v29 = v28;
  v88 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v78 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for FormatSection(0);
  v81 = *(v87 - 8);
  v33 = MEMORY[0x1EEE9AC00](v87, v32);
  v77 = &v65 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E2C53C(0, v33);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8, v36);
  sub_1D5E2C448(0, &qword_1EDF16960, MEMORY[0x1E69D87F8], v37);
  v85 = v38;
  v65 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v65 - v40;
  v42 = sub_1D5B85E28(&qword_1EDF17228, sub_1D5E2C428, MEMORY[0x1E69D7990]);
  v43 = sub_1D5B85E28(&qword_1EDF17230, sub_1D5E2C428, MEMORY[0x1E69D7988]);
  v79 = v29;
  v44 = v42;
  v45 = v72;
  MEMORY[0x1DA6F27D0](MEMORY[0x1E69E7CC0], v29, v44, v43);
  v46 = sub_1D5B85E28(&qword_1EDF0D410, type metadata accessor for FormatSectionDescriptor, &protocol conformance descriptor for FormatSectionDescriptor);
  v47 = sub_1D5B85E28(&qword_1EDF128E0, type metadata accessor for FormatModel, &protocol conformance descriptor for FormatModel);
  v83 = v46;
  v84 = v41;
  v86 = v24;
  v91 = v47;
  result = sub_1D725FA9C();
  v82 = *(v89 + 56);
  v76 = *(v82 + 16);
  if (v76)
  {
    v49 = 0;
    v50 = *(v87 + 20);
    v74 = v82 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
    v75 = v50;
    v89 = v16 + 32;
    v73 = (v88 + 8);
    while (v49 < *(v82 + 16))
    {
      v54 = v77;
      sub_1D5E2B80C(v74 + *(v81 + 72) * v49, v77, type metadata accessor for FormatSection);
      sub_1D5E2B80C(v54, v45, type metadata accessor for FormatPluginData);
      v55 = *(v54 + v75);

      sub_1D5E2C608(v54, type metadata accessor for FormatSection);
      v56 = *(v55 + 16);
      if (v56)
      {
        v88 = v49;
        v93 = MEMORY[0x1E69E7CC0];
        sub_1D69974DC(0, v56, 0);
        v57 = v93;
        v58 = *(v71 + 80);
        v87 = v55;
        v59 = v55 + ((v58 + 32) & ~v58);
        v60 = *(v71 + 72);
        do
        {
          sub_1D5E2B80C(v59, v14, type metadata accessor for FormatModel);
          sub_1D5E2B80C(v14, v9, type metadata accessor for FormatModel);
          sub_1D725CE6C();
          sub_1D5E2C608(v14, type metadata accessor for FormatModel);
          v93 = v57;
          v62 = *(v57 + 16);
          v61 = *(v57 + 24);
          if (v62 >= v61 >> 1)
          {
            sub_1D69974DC((v61 > 1), v62 + 1, 1);
            v57 = v93;
          }

          *(v57 + 16) = v62 + 1;
          (*(v16 + 32))(v57 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v62, v20, v90);
          v59 += v60;
          --v56;
        }

        while (v56);

        v45 = v72;
        v49 = v88;
      }

      else
      {

        v57 = MEMORY[0x1E69E7CC0];
      }

      ++v49;
      v51 = sub_1D5B85E28(&qword_1EDF17260, sub_1D5E2C2C8, MEMORY[0x1E69D76B0]);
      v52 = sub_1D5B85E28(&qword_1EDF17268, sub_1D5E2C2C8, MEMORY[0x1E69D76A8]);
      MEMORY[0x1DA6F27E0](v57, v90, v51, v52);
      v53 = v78;
      sub_1D725D60C();
      sub_1D725FA4C();
      result = (*v73)(v53, v79);
      if (v49 == v76)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v63 = v66;
    v64 = v84;
    sub_1D725E4DC();
    v70(v63);
    (*(v67 + 8))(v63, v68);
    return (*(v65 + 8))(v64, v85);
  }

  return result;
}

unint64_t sub_1D5E2C1E4()
{
  result = qword_1EDF09C20;
  if (!qword_1EDF09C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09C20);
  }

  return result;
}

void sub_1D5E2C2C8(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF17250)
  {
    type metadata accessor for FormatModel(255);
    sub_1D5B85E28(&qword_1EDF128E0, type metadata accessor for FormatModel, &protocol conformance descriptor for FormatModel);
    v2 = sub_1D725CE8C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF17250);
    }
  }
}

void sub_1D5E2C35C(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF17BB0)
  {
    sub_1D5E2C2C8(255, a2);
    sub_1D5B85E28(&qword_1EDF17260, sub_1D5E2C2C8, MEMORY[0x1E69D76B0]);
    sub_1D5B85E28(&qword_1EDF17268, sub_1D5E2C2C8, MEMORY[0x1E69D76A8]);
    v2 = sub_1D725B15C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF17BB0);
    }
  }
}

void sub_1D5E2C448(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), __n128 a4)
{
  if (!*a2)
  {
    v9[0] = type metadata accessor for FormatSectionDescriptor(255);
    v9[1] = type metadata accessor for FormatModel(255);
    v9[2] = sub_1D5B85E28(&qword_1EDF0D410, type metadata accessor for FormatSectionDescriptor, &protocol conformance descriptor for FormatSectionDescriptor);
    v9[3] = sub_1D5B85E28(&qword_1EDF128E0, type metadata accessor for FormatModel, &protocol conformance descriptor for FormatModel);
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D5E2C53C(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF17BA8)
  {
    sub_1D5E2C428(255, a2);
    sub_1D5B85E28(&qword_1EDF17228, sub_1D5E2C428, MEMORY[0x1E69D7990]);
    sub_1D5B85E28(&qword_1EDF17230, sub_1D5E2C428, MEMORY[0x1E69D7988]);
    v2 = sub_1D725B15C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF17BA8);
    }
  }
}

uint64_t sub_1D5E2C608(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D5E2C690()
{
  result = sub_1D6059E2C(MEMORY[0x1E69E7CC0]);
  qword_1EDF06ED8 = result;
  return result;
}

uint64_t static SportsDataVisualizationRequestTraits.empty.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDF06ED0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EDF06ED8;
}

uint64_t sub_1D5E2C734(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1D5B69D90(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1D72646CC();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5E2C8D8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = (*(v2 + 48) + 16 * (v8 | (v3 << 6)));
    v12 = *v11;
    v13 = v11[1];

    sub_1D5B69D90(v12, v13);
    v15 = v14;

    if ((v15 & 1) == 0)
    {

      return 0;
    }

    v16 = sub_1D5E2A8C8();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1D5E2CA40(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = sub_1D5B69D90(v14, v15);
      v19 = v18;

      if ((v19 & 1) == 0 || *(*(*(a2 + 56) + 8 * v17) + 16) != *(v16 + 16))
      {

        return;
      }

      v20 = sub_1D6709344();

      if ((v20 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D5E2CBC4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v15 = v12 | (v4 << 6);
    v16 = (*(v3 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v3 + 56) + 8 * v15);

    v20 = sub_1D5B69D90(v17, v18);
    v22 = v21;

    if ((v22 & 1) == 0 || (v23 = *(*(v2 + 56) + 8 * v20), v24 = *(v23 + 16), v25 = *(v19 + 16), v26 = *(v24 + 16), v26 != *(v25 + 16)))
    {
LABEL_28:

      return 0;
    }

    if (v26)
    {
      v27 = v24 == v25;
    }

    else
    {
      v27 = 1;
    }

    if (!v27)
    {
      v28 = (v24 + 40);
      v29 = (v25 + 40);
      while (v26)
      {
        result = *(v28 - 1);
        if (result != *(v29 - 1) || *v28 != *v29)
        {
          result = sub_1D72646CC();
          if ((result & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v28 += 2;
        v29 += 2;
        if (!--v26)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_6:
    v9 = *(v23 + 24);
    v10 = *(v19 + 24);

    sub_1D635EFDC(v9, v10);
    LOBYTE(v9) = v11;

    result = 0;
    v2 = a2;
    if ((v9 & 1) == 0)
    {
      return result;
    }
  }

  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v14 = *(v3 + 64 + 8 * v4);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v7 = (v14 - 1) & v14;
      goto LABEL_14;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

void sub_1D5E2CDB4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = sub_1D5B69D90(v14, v15);
      v19 = v18;

      if ((v19 & 1) == 0 || (v20 = *(*(a2 + 56) + 8 * v17), *(v20 + 16) != *(v16 + 16)))
      {

        return;
      }

      v21 = *(v20 + 24);
      v22 = *(v16 + 24);

      sub_1D635E760(v21, v22);
      LOBYTE(v21) = v23;

      if ((v21 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D5E2CF38(uint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_1D5B69D90(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5E2D074(uint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_1D5B69D90(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t SportsDataVisualizationRequestTraits.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D5E2D298(v3, v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D5E2D204()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D5E2D298(v3, v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D5E2D254(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D5E2D298(v4, v2);
  return sub_1D7264A5C();
}

uint64_t sub_1D5E2D298(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  for (i = 0; v7; v10 ^= result)
  {
    v12 = i;
LABEL_9:
    v13 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v7)) | (v12 << 6)));
    v7 &= v7 - 1;
    v14 = *(a1 + 48);
    v16[2] = *(a1 + 32);
    v16[3] = v14;
    v17 = *(a1 + 64);
    v15 = *(a1 + 16);
    v16[0] = *a1;
    v16[1] = v15;

    sub_1D72621EC();

    sub_1D6C37CC0(v16, v13);

    result = sub_1D7264A5C();
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x1DA6FC0B0](v10);
    }

    v7 = *(v4 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D5E2D3F8()
{
  result = qword_1EC87FB40;
  if (!qword_1EC87FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FB40);
  }

  return result;
}

uint64_t sub_1D5E2D45C(uint64_t a1, uint64_t a2)
{
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
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v6)) | (v11 << 6)));
    v6 &= v6 - 1;

    v13 = v12;
    sub_1D72621EC();

    sub_1D726371C();

    result = sub_1D7264A5C();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1DA6FC0B0](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5E2D5B4()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D5E2D638(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D5E2D694@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1D72641CC();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_1D5E2D720(uint64_t a1, unint64_t a2)
{
  if ((sub_1D726230C() & 1) == 0)
  {
    return 0;
  }

  v4 = sub_1D726221C();
  v5 = sub_1D5FD24A4(v4, a1, a2);
  v7 = v6;

  if (v5 >> 14 == v7 >> 14)
  {
LABEL_3:

    sub_1D5E2D970();
    swift_allocError();
    *v8 = a1;
    v8[1] = a2;
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = 0x7000000000000004;
    swift_willThrow();
  }

  sub_1D726395C();
  if (sub_1D726399C() == 41 && v10 == 0xE100000000000000)
  {
  }

  else
  {
    v21 = sub_1D72646CC();

    if ((v21 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  result = sub_1D726398C();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    result = sub_1D726396C();
    if (v11)
    {
      v12 = v7;
    }

    else
    {
      v12 = result;
    }

    if (v5 >> 14 <= v12 >> 14)
    {
      v13 = sub_1D72639BC();
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v20 = MEMORY[0x1DA6F97E0](v13, v15, v17, v19);

      return v20;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D5E2D970()
{
  result = qword_1EDF402A8;
  if (!qword_1EDF402A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF402A8);
  }

  return result;
}

unint64_t sub_1D5E2D9E8()
{
  result = qword_1EC87FB48;
  if (!qword_1EC87FB48)
  {
    sub_1D5E2DA40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FB48);
  }

  return result;
}

void sub_1D5E2DA40()
{
  if (!qword_1EC87FB50)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC87FB50);
    }
  }
}

unint64_t sub_1D5E2DA94()
{
  result = qword_1EC87FB58;
  if (!qword_1EC87FB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FB58);
  }

  return result;
}

uint64_t sub_1D5E2DAF8(void *a1)
{
  v3 = v1;
  sub_1D5E2E54C(0, &qword_1EC87FB88, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E2E454();
  sub_1D7264B5C();
  v16 = 0;
  sub_1D72643FC();
  if (!v2)
  {
    v15 = 1;
    sub_1D72643FC();
    v14 = 2;
    sub_1D72643FC();
    v13 = *(v3 + 48);
    v12[15] = 3;
    sub_1D5E2E4A8();
    sub_1D5E2E5B0(&qword_1EC87FB90, sub_1D5E2E61C, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D5E2DD00()
{
  v1 = 0x696669746E656469;
  v2 = 0x7470697263736564;
  if (*v0 != 2)
  {
    v2 = 1937335659;
  }

  if (*v0)
  {
    v1 = 1701667182;
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

uint64_t sub_1D5E2DD74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D5E2DF94(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D5E2DD9C(uint64_t a1)
{
  v2 = sub_1D5E2E454();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5E2DDD8(uint64_t a1)
{
  v2 = sub_1D5E2E454();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D5E2DE14@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D5E2E104(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_1D5E2DE7C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D72646CC() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_1D72646CC() & 1) == 0 || (sub_1D633FE6C(v6, v11) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v9 && v5 == v10)
  {
    return 1;
  }

  return sub_1D72646CC();
}

uint64_t sub_1D5E2DF94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1937335659 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D5E2E104@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D5E2E54C(0, &qword_1EC87FB60, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E2E454();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = 0;
  v11 = sub_1D72642BC();
  v13 = v12;
  v25 = v11;
  v30 = 1;
  v14 = sub_1D72642BC();
  v26 = v15;
  v23 = v14;
  v29 = 2;
  v22 = sub_1D72642BC();
  v24 = v16;
  sub_1D5E2E4A8();
  v28 = 3;
  sub_1D5E2E5B0(&qword_1EC87FB78, sub_1D5E2E4F8, MEMORY[0x1E69E6330]);
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v17 = v27;

  v18 = v26;

  v19 = v24;

  __swift_destroy_boxed_opaque_existential_1(a1);

  *a2 = v25;
  a2[1] = v13;
  v21 = v22;
  a2[2] = v23;
  a2[3] = v18;
  a2[4] = v21;
  a2[5] = v19;
  a2[6] = v17;
  return result;
}

unint64_t sub_1D5E2E454()
{
  result = qword_1EC87FB68;
  if (!qword_1EC87FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FB68);
  }

  return result;
}

void sub_1D5E2E4A8()
{
  if (!qword_1EC87FB70)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC87FB70);
    }
  }
}

unint64_t sub_1D5E2E4F8()
{
  result = qword_1EC87FB80;
  if (!qword_1EC87FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FB80);
  }

  return result;
}

void sub_1D5E2E54C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5E2E454();
    v7 = a3(a1, &type metadata for DebugFormatTemplate.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D5E2E5B0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5E2E4A8();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5E2E61C()
{
  result = qword_1EC87FB98;
  if (!qword_1EC87FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FB98);
  }

  return result;
}

unint64_t sub_1D5E2E684()
{
  result = qword_1EC87FBA0;
  if (!qword_1EC87FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FBA0);
  }

  return result;
}

unint64_t sub_1D5E2E6DC()
{
  result = qword_1EC87FBA8;
  if (!qword_1EC87FBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FBA8);
  }

  return result;
}

unint64_t sub_1D5E2E734()
{
  result = qword_1EC87FBB0;
  if (!qword_1EC87FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FBB0);
  }

  return result;
}

id sub_1D5E2E788()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_package) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__comment;
  swift_beginAccess();
  if (*(v2 + 8))
  {
    sub_1D5B5BD94(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7270C10;
    v4 = *MEMORY[0x1E69DB650];
    *(inited + 32) = *MEMORY[0x1E69DB650];
    v5 = objc_opt_self();

    v6 = v4;
    v7 = [v5 systemGray2Color];
    v8 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
    *(inited + 40) = v7;
    v9 = *MEMORY[0x1E69DB648];
    *(inited + 64) = v8;
    *(inited + 72) = v9;
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 systemFontOfSize_];
    *(inited + 104) = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
    *(inited + 80) = v12;
    sub_1D5C09CEC(inited);
    swift_setDeallocating();
    sub_1D5C09DD4(0);
    swift_arrayDestroy();
    v13 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v14 = sub_1D726203C();

    type metadata accessor for Key(0);
    sub_1D5E300B8(&qword_1EDF1A8E0, type metadata accessor for Key, &unk_1D72719E0);
    v15 = sub_1D7261D2C();

    v16 = [v13 initWithString:v14 attributes:v15];

    [v1 appendAttributedString_];
    v17 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v18 = sub_1D726203C();
    v19 = [v17 initWithString_];

    [v1 appendAttributedString_];
  }

  v20 = sub_1D5E2EAA4(13.0);
  [v1 appendAttributedString_];

  return v1;
}

id sub_1D5E2EAA4(double a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6720];
  sub_1D5B5BD94(0, &unk_1EDF43AB0, MEMORY[0x1E69D6638], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v121 = v114 - v7;
  *&v124 = sub_1D725BD1C();
  v125 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124, v8);
  v122 = v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v123 = v114 - v12;
  sub_1D5D3A7E0(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5BD94(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], v4);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v114 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = v114 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = v114 - v32;
  v34 = sub_1D72580BC();
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  sub_1D5B5A498(0, &qword_1EDF1A7E0, 0x1E696AD40);
  sub_1D7257F4C();
  v36 = sub_1D726310C();
  v37 = *(v1 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteError);
  v127 = v1;
  v126 = v36;
  if (v37)
  {
    v38 = v36;
    v39 = [objc_opt_self() systemRedColor];
    sub_1D5E2FF4C(0xD00000000000001DLL, 0x80000001D73BDE10, v39, a1);
    v41 = v40;

    [v38 appendAttributedString_];
    v42 = &off_1E84D3000;
    goto LABEL_22;
  }

  v116 = v14;
  v119 = v29;
  v118 = v25;
  v120 = v17;
  v117 = v21;
  v43 = v125;
  v44 = v125 + 16;
  v45 = *(v125 + 16);
  v114[2] = OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_localVersion;
  v46 = v124;
  v45(v33, v2 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_localVersion, v124);
  v47 = *(v43 + 56);
  v48 = 1;
  v49 = v33;
  v47(v33, 0, 1, v46);
  v50 = *(v2 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteVersions);
  v51 = *(v50 + 16);
  v52 = v46;
  v114[1] = v44;
  v115 = v50;
  if (v51)
  {
    v53 = v119;
    v45(v119, v50 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * (v51 - 1), v46);
    v48 = 0;
    v54 = v43;
    v55 = v118;
  }

  else
  {
    v54 = v43;
    v55 = v118;
    v53 = v119;
  }

  v114[0] = v45;
  v47(v53, v48, 1, v52);
  v56 = *(v116 + 48);
  v57 = v120;
  sub_1D5D3A874(v49, v120);
  sub_1D5D3A874(v53, &v57[v56]);
  v58 = *(v54 + 48);
  if (v58(v57, 1, v52) == 1)
  {
    v59 = MEMORY[0x1E69D6B38];
    sub_1D5BFC548(v53, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
    v60 = v120;
    sub_1D5BFC548(v49, &qword_1EDF45AC0, v59);
    v61 = v58(&v60[v56], 1, v52);
    v62 = v126;
    v63 = v117;
    if (v61 == 1)
    {
      sub_1D5BFC548(v60, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
      v64 = &off_1E84D3000;
      v42 = &off_1E84D3000;
LABEL_19:
      v81 = [objc_opt_self() systemBlueColor];
      v82 = 0x6572617571732E63;
LABEL_21:
      sub_1D5E2FF4C(v82, 0xED00006C6C69662ELL, v81, a1);
      v84 = v83;

      [v62 v64[219]];
      v2 = v127;
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  sub_1D5D3A874(v57, v55);
  v65 = v58(&v57[v56], 1, v52);
  v63 = v117;
  if (v65 == 1)
  {
    v66 = v55;
    v67 = MEMORY[0x1E69D6B38];
    sub_1D5BFC548(v119, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
    v60 = v120;
    sub_1D5BFC548(v49, &qword_1EDF45AC0, v67);
    (*(v54 + 8))(v66, v52);
    v62 = v126;
LABEL_11:
    sub_1D5E2FEEC(v60, sub_1D5D3A7E0);
    v64 = &off_1E84D3000;
    v42 = &off_1E84D3000;
    goto LABEL_12;
  }

  v77 = &v57[v56];
  v78 = v123;
  (*(v54 + 32))(v123, v77, v52);
  sub_1D5E300B8(&qword_1EDF178B8, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B50]);
  LODWORD(v116) = sub_1D7261FBC();
  v79 = *(v54 + 8);
  v79(v78, v52);
  v80 = MEMORY[0x1E69D6B38];
  sub_1D5BFC548(v119, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  sub_1D5BFC548(v49, &qword_1EDF45AC0, v80);
  v79(v118, v52);
  v54 = v125;
  sub_1D5BFC548(v57, &qword_1EDF45AC0, v80);
  v62 = v126;
  v64 = &off_1E84D3000;
  v42 = &off_1E84D3000;
  if (v116)
  {
    goto LABEL_19;
  }

LABEL_12:
  sub_1D5D3A874(v127 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteVersion, v63);
  v68 = v58(v63, 1, v52);
  sub_1D5BFC548(v63, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  if (v68 == 1 || (v69 = *(v115 + 16)) == 0)
  {
    v81 = [objc_opt_self() v42[286]];
    v82 = 0x6572617571732E6ELL;
    goto LABEL_21;
  }

  v70 = v122;
  (v114[0])(v122, v115 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * (v69 - 1), v52);
  sub_1D5E300B8(&qword_1EDF43A50, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B48]);
  v2 = v127;
  if (sub_1D7261F5C())
  {
    v71 = v121;
    sub_1D725BD0C();
    v72 = sub_1D725B17C();
    v73 = (*(*(v72 - 8) + 48))(v71, 1, v72);
    sub_1D5BFC548(v71, &unk_1EDF43AB0, MEMORY[0x1E69D6638]);
    v74 = objc_opt_self();
    v75 = &selRef_systemGreenColor;
    if (v73 == 1)
    {
      v75 = &selRef_systemPinkColor;
      v76 = 0x6572617571732E72;
    }

    else
    {
      v76 = 0x6572617571732E6ELL;
    }
  }

  else
  {
    v74 = objc_opt_self();
    v76 = 0x6572617571732E70;
    v75 = &selRef_systemPurpleColor;
  }

  v111 = [v74 *v75];
  sub_1D5E2FF4C(v76, 0xED00006C6C69662ELL, v111, a1);
  v113 = v112;

  [v62 v64[219]];
  (*(v54 + 8))(v70, v52);
LABEL_22:
  v129 = 11040;
  v130 = 0xE200000000000000;
  v128 = *(*(v2 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_localOffsets) + 16);
  v85 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v85);

  sub_1D5B5BD94(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
  v125 = v86;
  inited = swift_initStackObject();
  v124 = xmmword_1D7270C10;
  *(inited + 16) = xmmword_1D7270C10;
  v88 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v89 = objc_opt_self();
  v122 = v89;
  v90 = *MEMORY[0x1E69DB980];
  v123 = v88;
  v91 = [v89 systemFontOfSize:a1 weight:v90];
  v92 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  v121 = v92;
  *(inited + 40) = v91;
  v93 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v92;
  *(inited + 72) = v93;
  v94 = objc_opt_self();
  v119 = v94;
  v120 = v93;
  v95 = [v94 v42[286]];
  v96 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
  *(inited + 104) = v96;
  *(inited + 80) = v95;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4(0);
  swift_arrayDestroy();
  v97 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v98 = sub_1D726203C();

  type metadata accessor for Key(0);
  sub_1D5E300B8(&qword_1EDF1A8E0, type metadata accessor for Key, &unk_1D72719E0);
  v99 = sub_1D7261D2C();

  v100 = [v97 initWithString:v98 attributes:v99];

  v101 = v126;
  [v126 appendAttributedString_];

  v129 = 11552;
  v130 = 0xE200000000000000;
  v128 = *(*(v127 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteOffsets) + 16);
  v102 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v102);

  v103 = swift_initStackObject();
  *(v103 + 16) = v124;
  *(v103 + 32) = v123;
  *(v103 + 40) = [v122 systemFontOfSize:a1 weight:v90];
  v104 = v120;
  *(v103 + 64) = v121;
  *(v103 + 72) = v104;
  v105 = [v119 systemRedColor];
  *(v103 + 104) = v96;
  *(v103 + 80) = v105;
  sub_1D5C09CEC(v103);
  swift_setDeallocating();
  swift_arrayDestroy();
  v106 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v107 = sub_1D726203C();

  v108 = sub_1D7261D2C();

  v109 = [v106 initWithString:v107 attributes:v108];

  [v101 appendAttributedString_];
  return v101;
}

uint64_t sub_1D5E2FA00()
{
  sub_1D5B952F8(*(v0 + 16), *(v0 + 24));
  v1 = OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_localVersion;
  v2 = sub_1D725BD1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D5B952E4(*(v0 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteData), *(v0 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteData + 8));

  sub_1D5BFC548(v0 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteVersion, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);

  sub_1D5E2FEEC(v0 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remotePackage, type metadata accessor for DebugFormatUploadRemotePackage);

  return v0;
}

uint64_t sub_1D5E2FB3C()
{
  sub_1D5E2FA00();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugFormatUploadDiff(uint64_t a1)
{
  result = qword_1EC87FBB8;
  if (!qword_1EC87FBB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5E2FBE8(uint64_t a1)
{
  sub_1D725BD1C();
  if (v1 <= 0x3F)
  {
    sub_1D5B5BD94(319, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for DebugFormatUploadRemotePackage(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1D5E2FD70()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_package);
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
  if (v2 <= 2)
  {
    v3 = 0xE600000000000000;
    if (*(v1 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
    {
      if (v2 == 1)
      {
        v4 = 0x726564616568;
      }

      else
      {
        v4 = 0x7265746F6F66;
      }
    }

    else
    {
      v4 = 0x74756F79616CLL;
    }
  }

  else if (*(v1 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) > 4u)
  {
    if (v2 == 5)
    {
      v3 = 0xE700000000000000;
      v4 = 0x7972617262696CLL;
    }

    else
    {
      v3 = 0xEA0000000000646ELL;
      v4 = 0x756F72676B636162;
    }
  }

  else if (v2 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x6C6C6177796170;
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x656D656874;
  }

  MEMORY[0x1DA6F9910](v4, v3);

  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);

  MEMORY[0x1DA6F9910](v5, v6);

  return 0;
}

uint64_t sub_1D5E2FEEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D5E2FF4C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = sub_1D726203C();
  v7 = [objc_opt_self() systemImageNamed_];

  if (v7)
  {
    sub_1D5B5A498(0, &qword_1EDF1A7E0, 0x1E696AD40);
    v8 = [objc_opt_self() textAttachmentWithImage_];

    v9 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    [v9 addAttribute:*MEMORY[0x1E69DB650] value:a3 range:{0, 1}];
    v10 = *MEMORY[0x1E69DB648];
    v11 = [objc_opt_self() systemFontOfSize:a4 weight:*MEMORY[0x1E69DB958]];
    [v9 addAttribute:v10 value:v11 range:{0, 1}];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D5E300B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CellAutomation.type.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CellAutomation.init(data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = sub_1D725D05C();
  a4[1] = v8;
  v10 = type metadata accessor for CellAutomation(0, a2, a3, v9);
  v11 = *(*(a2 - 8) + 32);
  v12 = a4 + *(v10 + 36);

  return v11(v12, a1, a2);
}

uint64_t sub_1D5E301DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D5E302A8(char a1)
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](a1 & 1);
  return sub_1D7264A5C();
}

uint64_t sub_1D5E30300(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D5DEA254(v3, *v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D5E30358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5E301DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5E30388@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1D5E31924();
  *a2 = result;
  return result;
}

uint64_t sub_1D5E303B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D5E30408(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CellAutomation.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v14[0] = *(a2 + 24);
  v14[1] = v6;
  type metadata accessor for CellAutomation.CodingKeys(255, v6, v14[0], a4);
  swift_getWitnessTable();
  v7 = sub_1D726446C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B5C();
  v16 = 0;
  v12 = v14[3];
  sub_1D72643FC();
  if (!v12)
  {
    v15 = 1;
    sub_1D726443C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t CellAutomation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v30 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v33 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CellAutomation.CodingKeys(255, v8, v9, v10);
  swift_getWitnessTable();
  v35 = sub_1D726435C();
  v32 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v11);
  v13 = &v27 - v12;
  v34 = a3;
  v15 = type metadata accessor for CellAutomation(0, a2, a3, v14);
  v29 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v27 - v17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = v36;
  sub_1D7264B0C();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = a1;
  v28 = v15;
  v20 = v32;
  v21 = v33;
  v38 = 0;
  v22 = v18;
  *v18 = sub_1D72642BC();
  v18[1] = v23;
  v27 = v23;
  v37 = 1;
  sub_1D726431C();
  (*(v20 + 8))(v13, v35);
  v24 = v28;
  (*(v30 + 32))(v18 + *(v28 + 36), v21, a2);
  v25 = v29;
  (*(v29 + 16))(v31, v22, v24);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return (*(v25 + 8))(v22, v24);
}

uint64_t FormatCellAutomation.init(data:selectors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = sub_1D725D05C();
  *(a5 + 1) = v10;
  v12 = type metadata accessor for FormatCellAutomation(0, a3, a4, v11);
  result = (*(*(a3 - 8) + 32))(&a5[*(v12 + 36)], a1, a3);
  *&a5[*(v12 + 40)] = a2;
  return result;
}

uint64_t sub_1D5E30AE8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t _s8NewsFeed0B12RefreshEventO9hashValueSivg_0(unsigned __int8 a1)
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](a1);
  return sub_1D7264A5C();
}

uint64_t sub_1D5E30C50(char a1)
{
  if (!a1)
  {
    return 1701869940;
  }

  if (a1 == 1)
  {
    return 1635017060;
  }

  return 0x726F7463656C6573;
}

uint64_t sub_1D5E30CA8(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D5DEA28C(v3, *v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D5E30CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5E30AE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5E30D2C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1D5E3192C();
  *a2 = result;
  return result;
}

uint64_t sub_1D5E30D58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D5E30DAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatCellAutomation.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = v6;
  type metadata accessor for FormatCellAutomation.CodingKeys(255, v6, v16, a4);
  swift_getWitnessTable();
  v7 = sub_1D726446C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v18;
  sub_1D7264B5C();
  v23 = 0;
  v13 = v19;
  sub_1D72643FC();
  if (!v13)
  {
    v22 = 1;
    sub_1D726443C();
    v20 = *(v12 + *(a2 + 40));
    v21 = 2;
    sub_1D5B81B04();
    sub_1D5CB5D1C(&qword_1EDF047E0, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    sub_1D726443C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t FormatCellAutomation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v30 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v29 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FormatCellAutomation.CodingKeys(255, v8, v9, v10);
  swift_getWitnessTable();
  v34 = sub_1D726435C();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v11);
  v13 = v26 - v12;
  v31 = a3;
  v15 = type metadata accessor for FormatCellAutomation(0, a2, a3, v14);
  v27 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (v26 - v17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v33 = v13;
  v19 = v35;
  sub_1D7264B0C();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v30;
  v21 = v29;
  v35 = a1;
  v39 = 0;
  v22 = v33;
  *v18 = sub_1D72642BC();
  v18[1] = v23;
  v26[1] = v23;
  v38 = 1;
  sub_1D726431C();
  (*(v20 + 32))(v18 + *(v15 + 36), v21, a2);
  sub_1D5B81B04();
  v37 = 2;
  sub_1D5CB5D1C(&qword_1EDF3C7D0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
  sub_1D726431C();
  (*(v32 + 8))(v22, v34);
  *(v18 + *(v15 + 40)) = v36;
  v24 = v27;
  (*(v27 + 16))(v28, v18, v15);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return (*(v24 + 8))(v18, v15);
}

void sub_1D5E314CC(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1D5B81B04();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D5E31564(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_1D5E316AC(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t BundleSessionConfigProvider.__allocating_init(appConfigurationManager:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

double BundleSessionConfigProvider.sessionDuration.getter()
{
  v1 = [*(v0 + 16) possiblyUnfetchedAppConfiguration];
  if ([v1 respondsToSelector_])
  {
    v2 = [v1 maximumBundleSessionTime];
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    swift_unknownObjectRelease();
    return 86400.0;
  }
}

uint64_t BundleSessionConfigProvider.nextSessionValue(after:)(uint64_t a1)
{
  sub_1D5B76C1C(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BundleSession(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B8866C(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D5E31BE0(v5, sub_1D5B76C1C);
    return 0;
  }

  else
  {
    sub_1D5E31B7C(v5, v10);
    v12 = *v10;
    sub_1D5E31BE0(v10, type metadata accessor for BundleSession);
    result = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D5E31B7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleSession(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5E31BE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1D5E31C60()
{
  v1 = [*(*v0 + 16) possiblyUnfetchedAppConfiguration];
  if ([v1 respondsToSelector_])
  {
    v2 = [v1 maximumBundleSessionTime];
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    swift_unknownObjectRelease();
    return 86400.0;
  }
}

uint64_t sub_1D5E31CE8(uint64_t a1)
{
  sub_1D5B76C1C(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BundleSession(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B8866C(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D5E31BE0(v5, sub_1D5B76C1C);
    return 0;
  }

  else
  {
    sub_1D5E31B7C(v5, v10);
    v12 = *v10;
    sub_1D5E31BE0(v10, type metadata accessor for BundleSession);
    result = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D5E31EB8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D725891C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void *sub_1D5E31FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void sub_1D5E3200C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v60 = a3;
  v67 = a1;
  v68 = a2;
  v4 = *v3;
  v69 = sub_1D725891C();
  v5 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v6);
  v57 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BA8044(0);
  v65 = (v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v64 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v4 + 88);
  v59 = v3;
  v70 = *(v4 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v62 = AssociatedTypeWitness;
  v63 = v13;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v14);
  v16 = &v57 - v15;
  v17 = swift_checkMetadataState();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v57 - v20;
  sub_1D5B5B2A0(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v58 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v57 - v27;
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v33 = &v57 - v32;
  v34 = v69;
  (*(v5 + 16))(&v57 - v32, v67 + qword_1EDFFCF50, v69, v31);
  (*(v5 + 56))(v33, 0, 1, v34);
  v35 = *(v11 + 64);
  v66 = v11;
  v35(v70, v11);
  (*(AssociatedConformanceWitness + 40))(v17, AssociatedConformanceWitness);
  (*(v18 + 8))(v21, v17);
  v36 = v64;
  v37 = v62;
  v38 = swift_getAssociatedConformanceWitness();
  (*(v38 + 40))(v37, v38);
  v39 = v16;
  v40 = v69;
  (*(v63 + 8))(v39, v37);
  v41 = *(v65 + 14);
  sub_1D5B76E3C(v33, v36);
  sub_1D5B76E3C(v28, v36 + v41);
  v42 = *(v5 + 48);
  if (v42(v36, 1, v40) != 1)
  {
    v65 = v28;
    v44 = v58;
    sub_1D5B76E3C(v36, v58);
    if (v42(v36 + v41, 1, v40) != 1)
    {
      v53 = v57;
      (*(v5 + 32))(v57, v36 + v41, v40);
      sub_1D5BA81A0();
      v54 = sub_1D7261FBC();
      v55 = *(v5 + 8);
      v55(v53, v40);
      sub_1D5B87904(v65, sub_1D5B5B2A0);
      sub_1D5B87904(v33, sub_1D5B5B2A0);
      v55(v44, v40);
      sub_1D5B87904(v36, sub_1D5B5B2A0);
      if (v54)
      {
        goto LABEL_9;
      }

LABEL_7:
      v45 = v59[2];
      v46 = v59[3];
      v47 = v59[4];
      v48 = *(v67 + *(*v67 + 280));
      v49 = swift_allocObject();
      v50 = v70;
      v51 = v66;
      *(v49 + 16) = v70;
      *(v49 + 24) = v51;
      sub_1D5F9628C(v68, v48, sub_1D5E328C0, v49, sub_1D5E32898, 0, v45, v46, v47, v50, v51);

      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      v52 = sub_1D726275C();
      sub_1D688A25C(v52, v60);
      return;
    }

    sub_1D5B87904(v65, sub_1D5B5B2A0);
    sub_1D5B87904(v33, sub_1D5B5B2A0);
    (*(v5 + 8))(v44, v40);
LABEL_6:
    sub_1D5B87904(v36, sub_1D5BA8044);
    goto LABEL_7;
  }

  sub_1D5B87904(v28, sub_1D5B5B2A0);
  sub_1D5B87904(v33, sub_1D5B5B2A0);
  if (v42(v36 + v41, 1, v40) != 1)
  {
    goto LABEL_6;
  }

  sub_1D5B87904(v36, sub_1D5B5B2A0);
LABEL_9:
  type metadata accessor for FeedServiceError(0, v70, v66, v43);
  swift_getWitnessTable();
  swift_allocError();
  *v56 = 1;
  *(v56 + 8) = 0;
  *(v56 + 16) = 0;
  *(v56 + 24) = 0;
  *(v56 + 32) = 6;
  swift_willThrow();
}

uint64_t (*sub_1D5E327E0(uint64_t a1, uint64_t a2))@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return sub_1D5E328C0;
}

uint64_t sub_1D5E32834()
{

  return swift_deallocClassInstance();
}

double sub_1D5E32898()
{
  nullsub_1();

  return result;
}

uint64_t FormatStateMachineData.deinit()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);

  sub_1D5E32940(v1, v2, v3, v4, v5);
  sub_1D5E32990(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  return v0;
}

uint64_t sub_1D5E32940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }
}

void sub_1D5E32990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
  }

  else
  {
  }
}

uint64_t FormatStateMachineData.__deallocating_deinit()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);

  sub_1D5E32940(v1, v2, v3, v4, v5);
  sub_1D5E32990(*(v0 + 72), *(v0 + 80), *(v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t FormatWorkspace.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatWorkspace.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t _s8NewsFeed15FormatWorkspaceV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = *(a1 + 48);
  v52 = a1[7];
  v50 = a1[8];
  v47 = a1[10];
  v48 = a1[9];
  v44 = a1[11];
  v38 = a1[12];
  v42 = a1[13];
  v33 = a1[14];
  v40 = a1[15];
  v29 = a1[16];
  v36 = a1[17];
  v25 = a1[18];
  v32 = a1[19];
  v27 = a1[20];
  v24 = a1[21];
  v20 = *(a1 + 177);
  v21 = *(a1 + 176);
  v22 = *(a1 + 178);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v51 = *(a2 + 56);
  v49 = *(a2 + 64);
  v45 = *(a2 + 80);
  v46 = *(a2 + 72);
  v43 = *(a2 + 88);
  v37 = *(a2 + 96);
  v41 = *(a2 + 104);
  v39 = *(a2 + 120);
  v30 = *(a2 + 128);
  v34 = *(a2 + 112);
  v35 = *(a2 + 136);
  v28 = *(a2 + 144);
  v31 = *(a2 + 152);
  v26 = *(a2 + 160);
  v23 = *(a2 + 168);
  v17 = *(a2 + 177);
  v18 = *(a2 + 176);
  v19 = *(a2 + 178);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_58;
  }

  if (v5)
  {
    if (!v10)
    {
      goto LABEL_58;
    }

    if (v3 == v9 && v5 == v10)
    {
      if (v6 != v11)
      {
        goto LABEL_58;
      }

      goto LABEL_17;
    }

    v13 = sub_1D72646CC();
    v12 = 0;
    if ((v13 & 1) == 0)
    {
      return v12 & 1;
    }
  }

  else
  {
    v12 = 0;
    if (v10)
    {
      return v12 & 1;
    }
  }

  if ((v6 ^ v11))
  {
    return v12 & 1;
  }

LABEL_17:
  if ((sub_1D6709340(v52, v51) & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_1D634F7BC(v50, v49);
  if ((v14 & 1) == 0)
  {
    goto LABEL_58;
  }

  if ((v48 != v46 || v47 != v45) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_58;
  }

  if (v44)
  {
    if (!v43)
    {
      goto LABEL_58;
    }

    v15 = sub_1D663D3A4(v44, v43);

    if (!v15)
    {
      goto LABEL_58;
    }
  }

  else if (v43)
  {
    goto LABEL_58;
  }

  if (v42)
  {
    if (!v41 || (v38 != v37 || v42 != v41) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  else if (v41)
  {
    goto LABEL_58;
  }

  if (v40)
  {
    v12 = v39;
    if (!v39)
    {
      return v12 & 1;
    }

    if ((v33 != v34 || v40 != v39) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  else if (v39)
  {
    goto LABEL_58;
  }

  if (v36)
  {
    v12 = v35;
    if (!v35)
    {
      return v12 & 1;
    }

    if ((v29 != v30 || v36 != v35) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  else if (v35)
  {
    goto LABEL_58;
  }

  if (v32)
  {
    v12 = v31;
    if (!v31)
    {
      return v12 & 1;
    }

    if ((v25 != v28 || v32 != v31) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  if (v31)
  {
LABEL_58:
    v12 = 0;
    return v12 & 1;
  }

LABEL_55:
  if ((sub_1D633BCCC(v27, v26) & 1) == 0 || (sub_1D5BFC390(v24, v23) & 1) == 0)
  {
    goto LABEL_58;
  }

  v12 = (v21 ^ v18 | v20 ^ v17 | v22 ^ v19) ^ 1;
  return v12 & 1;
}

unint64_t sub_1D5E32F34(uint64_t a1)
{
  result = sub_1D5E32F5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5E32F5C()
{
  result = qword_1EC87FCC8;
  if (!qword_1EC87FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FCC8);
  }

  return result;
}

unint64_t sub_1D5E32FB0(void *a1)
{
  a1[1] = sub_1D5E32FE8();
  a1[2] = sub_1D5E3303C();
  result = sub_1D5E33090();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5E32FE8()
{
  result = qword_1EC87FCD0;
  if (!qword_1EC87FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FCD0);
  }

  return result;
}

unint64_t sub_1D5E3303C()
{
  result = qword_1EC88DF10;
  if (!qword_1EC88DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DF10);
  }

  return result;
}

unint64_t sub_1D5E33090()
{
  result = qword_1EC87FCD8;
  if (!qword_1EC87FCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FCD8);
  }

  return result;
}

__n128 __swift_memcpy179_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 175) = *(a2 + 175);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1D5E33120(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 179))
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

uint64_t sub_1D5E33168(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *(result + 178) = 0;
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 179) = 1;
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

    *(result + 179) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D5E33214@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D5E3B5C4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D5E33244(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v7 = 0xED000073656C7552;
    v8 = 0x676E6970756F7267;
    v9 = 0x80000001D73B71C0;
    v10 = 0xD000000000000016;
    if (v2 == 6)
    {
      v10 = 0xD00000000000001ELL;
    }

    else
    {
      v9 = 0x80000001D73B71E0;
    }

    if (v2 != 4)
    {
      v8 = 0xD00000000000001ELL;
      v7 = 0x80000001D73B71A0;
    }

    if (*v1 <= 5u)
    {
      v11 = v8;
    }

    else
    {
      v11 = v10;
    }

    if (*v1 > 5u)
    {
      v7 = v9;
    }

    *a1 = v11;
    a1[1] = v7;
  }

  else
  {
    v3 = 0x80000001D73B7150;
    v4 = 0xD00000000000001BLL;
    if (v2 == 2)
    {
      v4 = 0xD000000000000013;
    }

    else
    {
      v3 = 0x80000001D73B7170;
    }

    v5 = 0x80000001D73B7110;
    if (*v1)
    {
      v5 = 0x80000001D73B7130;
    }

    if (*v1 <= 1u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v4;
    }

    if (*v1 <= 1u)
    {
      v3 = v5;
    }

    *a1 = v6;
    a1[1] = v3;
  }
}

unint64_t sub_1D5E3336C()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v4 = 0x676E6970756F7267;
    v5 = 0xD000000000000016;
    if (v1 == 6)
    {
      v5 = 0xD00000000000001ELL;
    }

    if (v1 != 4)
    {
      v4 = 0xD00000000000001ELL;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD00000000000001BLL;
    if (v1 == 2)
    {
      v2 = 0xD000000000000013;
    }

    if (*v0 <= 1u)
    {
      return 0xD000000000000010;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1D5E3348C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5E3B5C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5E334B4(uint64_t a1)
{
  v2 = sub_1D5E3A7E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5E334F0(uint64_t a1)
{
  v2 = sub_1D5E3A7E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedGroupClusteringKnobs.groupingRules.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  v13 = *(v1 + 96);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 128);
  v4 = v15;
  v5 = *(v1 + 48);
  v10[0] = *(v1 + 32);
  v10[1] = v5;
  v6 = *(v1 + 80);
  v11 = *(v1 + 64);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_1D5E3A490(v10, v9, &qword_1EDF141F8, &type metadata for FeedGroupGroupingRules);
}

__n128 FeedGroupClusteringKnobs.init(overrides:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D72593CC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[7];
  v54[4] = a1[6];
  v54[5] = v9;
  v55 = a1[8];
  v56 = *(a1 + 18);
  v10 = a1[3];
  v54[0] = a1[2];
  v54[1] = v10;
  v11 = a1[5];
  v54[2] = a1[4];
  v54[3] = v11;
  v12 = a1[1];
  v52 = *a1;
  v53 = v12;
  v13 = v52;
  if (!v52 || (v14 = *(&v52 + 1)) == 0)
  {
    sub_1D5E33968(&v52);
    sub_1D5E339BC(&v42);
    v16 = v49;
    *(a2 + 96) = v48;
    *(a2 + 112) = v16;
    v17 = v51;
    *(a2 + 128) = v50;
    *(a2 + 144) = v17;
    v18 = v45;
    *(a2 + 32) = v44;
    *(a2 + 48) = v18;
    v19 = v47;
    *(a2 + 64) = v46;
    *(a2 + 80) = v19;
    result.n128_u64[0] = v42;
    v21 = v43;
    *a2 = v42;
    *(a2 + 16) = v21;
    return result;
  }

  v15 = v53;
  v38 = v5;
  if (v53)
  {

    v37 = v15;
  }

  else
  {
    v22 = qword_1EDF13F10;

    if (v22 != -1)
    {
      swift_once();
    }

    v37 = qword_1EDF13F18;
  }

  v23 = a1[5];
  v44 = a1[4];
  v45 = v23;
  v24 = a1[7];
  v46 = a1[6];
  v47 = v24;
  v25 = a1[3];
  v42 = a1[2];
  v43 = v25;
  v36 = *(&v53 + 1);

  sub_1D5E3A490(v54, &v39, &qword_1EC882F10, &type metadata for FeedGroupGroupingRulesOverrides);

  sub_1D6057DD4(&v42, v40);
  if (!v55)
  {
    sub_1D72593BC();
    sub_1D5E3A4FC(0);
    v26 = swift_allocObject();
    v27 = v38;
    (*(v38 + 32))(v26 + *(*v26 + 112), v8, v4);
    *(v26 + *(*v26 + 120)) = MEMORY[0x1E69E7CC0];
    v28 = *(&v55 + 1);
    if (*(&v55 + 1))
    {
      goto LABEL_11;
    }

LABEL_13:

    sub_1D72593BC();
    sub_1D5E3A4FC(0);
    v29 = swift_allocObject();
    (*(v27 + 32))(v29 + *(*v29 + 112), v8, v4);
    *(v29 + *(*v29 + 120)) = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v26 = v55;
  v27 = v38;
  v28 = *(&v55 + 1);
  if (!*(&v55 + 1))
  {
    goto LABEL_13;
  }

LABEL_11:

  v29 = v28;
LABEL_14:
  v30 = v56;

  sub_1D5E33968(&v52);
  *a2 = v13;
  *(a2 + 8) = v14;
  v31 = v36;
  *(a2 + 16) = v37;
  *(a2 + 24) = v31;
  v32 = v40[5];
  *(a2 + 96) = v40[4];
  *(a2 + 112) = v32;
  v33 = v41;
  v34 = v40[1];
  *(a2 + 32) = v40[0];
  *(a2 + 48) = v34;
  v35 = v40[3];
  *(a2 + 64) = v40[2];
  *(a2 + 80) = v35;
  *(a2 + 128) = v33;
  *(a2 + 136) = v26;
  *(a2 + 144) = v29;
  *(a2 + 152) = v30;
  nullsub_1();
  return result;
}

double sub_1D5E339BC(_OWORD *a1)
{
  result = 0.0;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

__n128 FeedGroupClusteringKnobs.init(minNumberOfItems:maxNumberOfItems:bundleArticleQuotas:explicitSlotBundleArticleQuotas:groupingRules:minNumberOfItemsDepthTransform:maxNumberOfItemsDepthTransform:splittingConfiguration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v31 = a4;
  v32 = a8;
  v16 = sub_1D72593CC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a5[5];
  v37 = a5[4];
  v38 = v21;
  v39 = *(a5 + 12);
  v22 = a5[1];
  v33 = *a5;
  v34 = v22;
  v23 = a5[3];
  v35 = a5[2];
  v36 = v23;
  if (!a6)
  {
    sub_1D72593BC();
    sub_1D5E3A4FC(0);
    v24 = swift_allocObject();
    (*(v17 + 32))(v24 + *(*v24 + 112), v20, v16);
    *(v24 + *(*v24 + 120)) = MEMORY[0x1E69E7CC0];
    if (a7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v24 = a6;
  if (!a7)
  {
LABEL_3:

    sub_1D72593BC();

    sub_1D5E3A4FC(0);
    a7 = swift_allocObject();
    (*(v17 + 32))(a7 + *(*a7 + 112), v20, v16);
    *(a7 + *(*a7 + 120)) = MEMORY[0x1E69E7CC0];
  }

LABEL_4:
  *a9 = a1;
  *(a9 + 8) = a2;
  v25 = v31;
  *(a9 + 16) = a3;
  *(a9 + 24) = v25;
  v26 = v38;
  *(a9 + 96) = v37;
  *(a9 + 112) = v26;
  v27 = v39;
  v28 = v34;
  *(a9 + 32) = v33;
  *(a9 + 48) = v28;
  result = v36;
  *(a9 + 64) = v35;
  *(a9 + 80) = result;
  *(a9 + 128) = v27;
  *(a9 + 136) = v24;
  v30 = v32;
  *(a9 + 144) = a7;
  *(a9 + 152) = v30;
  return result;
}

uint64_t FeedGroupClusteringKnobs.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D72593CC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E3A600();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  *(v7 + 16) = 1;
  *(v7 + 24) = v8;
  *a1 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = 5;
  *(v9 + 24) = v8;
  *(a1 + 8) = v9;
  if (qword_1EDF13F10 != -1)
  {
    swift_once();
  }

  *(a1 + 16) = qword_1EDF13F18;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;

  sub_1D72593BC();
  sub_1D5E3A4FC(0);
  v10 = swift_allocObject();
  v11 = *(v3 + 32);
  v11(v10 + *(*v10 + 112), v6, v2);
  *(v10 + *(*v10 + 120)) = v8;
  *(a1 + 136) = v10;
  sub_1D72593BC();
  v12 = swift_allocObject();
  result = (v11)(v12 + *(*v12 + 112), v6, v2);
  *(v12 + *(*v12 + 120)) = v8;
  *(a1 + 144) = v12;
  *(a1 + 152) = 0;
  return result;
}

__n128 FeedGroupClusteringKnobs.init(minNumberOfItems:maxNumberOfItems:bundleArticleQuotas:explicitSlotBundleArticleQuotas:groupingRules:minNumberOfItemsDepthTransform:maxNumberOfItemsDepthTransform:splittingConfiguration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, __int128 *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v40 = a3;
  v41 = a7;
  v38 = sub_1D72593CC();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FeedGroupBundleArticleQuotas(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E3A600();
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E7CC0];
  *(v21 + 16) = a1;
  *(v21 + 24) = v22;
  v37 = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = v22;
  v39 = a2;
  sub_1D5E3A67C(a2, v20);
  sub_1D5E3A6E0(0);
  v24 = swift_allocObject();
  sub_1D5E3B350(v20, v24 + *(*v24 + 112), type metadata accessor for FeedGroupBundleArticleQuotas);
  *(v24 + *(*v24 + 120)) = v22;
  v25 = a4[5];
  v46 = a4[4];
  v47 = v25;
  v48 = *(a4 + 12);
  v26 = a4[1];
  v42 = *a4;
  v43 = v26;
  v27 = a4[3];
  v44 = a4[2];
  v45 = v27;
  if (!a5)
  {
    sub_1D72593BC();
    sub_1D5E3A4FC(0);
    a5 = swift_allocObject();
    v29 = v36;
    v28 = v38;
    (*(v36 + 32))(a5 + *(*a5 + 112), v16, v38);
    *(a5 + *(*a5 + 120)) = v22;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1D72593BC();
    sub_1D5E3B754(v39, type metadata accessor for FeedGroupBundleArticleQuotas);
    sub_1D5E3A4FC(0);
    a6 = swift_allocObject();
    (*(v29 + 32))(a6 + *(*a6 + 112), v16, v28);
    *(a6 + *(*a6 + 120)) = v22;
    goto LABEL_6;
  }

  v28 = v38;
  v29 = v36;
  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D5E3B754(v39, type metadata accessor for FeedGroupBundleArticleQuotas);
LABEL_6:
  *a8 = v37;
  *(a8 + 8) = v23;
  v30 = v40;
  *(a8 + 16) = v24;
  *(a8 + 24) = v30;
  v31 = v47;
  *(a8 + 96) = v46;
  *(a8 + 112) = v31;
  v32 = v48;
  v33 = v43;
  *(a8 + 32) = v42;
  *(a8 + 48) = v33;
  result = v45;
  *(a8 + 64) = v44;
  *(a8 + 80) = result;
  *(a8 + 128) = v32;
  *(a8 + 136) = a5;
  v35 = v41;
  *(a8 + 144) = a6;
  *(a8 + 152) = v35;
  return result;
}

uint64_t FeedGroupClusteringKnobs.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_1D72593CC();
  v43 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E3A990(0, &qword_1EDF03BA8, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v36 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E3A7E4();
  v13 = v64;
  sub_1D7264B0C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = v3;
  v42 = v9;
  v37 = v6;
  v64 = 0;
  sub_1D5E3A600();
  LOBYTE(v63) = 0;
  sub_1D5BABC48(&qword_1EDF36700, sub_1D5E3A600, &protocol conformance descriptor for FeedGroupKnobsRuleValue<A>);
  v15 = v8;
  v16 = v12;
  sub_1D726421C();
  v41 = a1;
  if (v49)
  {
    v40 = v49;
  }

  else
  {
    v17 = swift_allocObject();
    v18 = MEMORY[0x1E69E7CC0];
    *(v17 + 16) = 1;
    *(v17 + 24) = v18;
    v40 = v17;
  }

  v19 = v44;
  LOBYTE(v63) = 1;
  v20 = v15;
  sub_1D726421C();
  if (v49)
  {
    v44 = v49;
  }

  else
  {
    v21 = swift_allocObject();
    v22 = MEMORY[0x1E69E7CC0];
    *(v21 + 16) = 5;
    *(v21 + 24) = v22;
    v44 = v21;
  }

  sub_1D5E3A6E0(0);
  LOBYTE(v49) = 3;
  sub_1D5BABC48(&qword_1EDF13EB8, sub_1D5E3A6E0, &protocol conformance descriptor for FeedGroupKnobsRuleValue<A>);
  sub_1D726421C();
  v23 = v63;
  if (v63 || (LOBYTE(v48) = 2, sub_1D726421C(), (v23 = v49) != 0))
  {
    v39 = v23;
  }

  else
  {
    if (qword_1EDF13F10 != -1)
    {
      swift_once();
    }

    v39 = qword_1EDF13F18;
  }

  LOBYTE(v48) = 4;
  sub_1D5E3A838();
  sub_1D726421C();
  v60 = v53;
  v61 = v54;
  v62 = v55;
  v56 = v49;
  v57 = v50;
  v58 = v51;
  v59 = v52;
  sub_1D5E3A4FC(0);
  LOBYTE(v47) = 5;
  sub_1D5BABC48(&qword_1EDF13ED8, sub_1D5E3A4FC, &protocol conformance descriptor for FeedGroupKnobsRuleValue<A>);
  sub_1D726421C();
  v24 = v48;
  LOBYTE(v46) = 6;
  sub_1D726421C();
  v25 = v47;
  sub_1D5E3A88C(0);
  v45 = 7;
  sub_1D5BABC48(&qword_1EDF13F00, sub_1D5E3A88C, &protocol conformance descriptor for FeedGroupKnobsRuleValue<A>);
  sub_1D726421C();
  v26 = v46;
  if (v24)
  {
    v27 = v24;
  }

  else
  {
    v28 = v37;
    sub_1D72593BC();
    v27 = swift_allocObject();
    (*(v43 + 32))(v27 + *(*v27 + 112), v28, v38);
    *(v27 + *(*v27 + 120)) = MEMORY[0x1E69E7CC0];
  }

  if (v25)
  {
    (*(v42 + 8))(v16, v20);
  }

  else
  {
    v29 = v42;

    v30 = v37;
    sub_1D72593BC();

    (*(v29 + 8))(v16, v20);
    v25 = swift_allocObject();
    (*(v43 + 32))(v25 + *(*v25 + 112), v30, v38);
    *(v25 + *(*v25 + 120)) = MEMORY[0x1E69E7CC0];
  }

  v31 = v44;
  *v19 = v40;
  *(v19 + 8) = v31;
  *(v19 + 16) = v39;
  *(v19 + 24) = 0;
  v32 = v61;
  *(v19 + 96) = v60;
  *(v19 + 112) = v32;
  v33 = v62;
  v34 = v57;
  *(v19 + 32) = v56;
  *(v19 + 48) = v34;
  v35 = v59;
  *(v19 + 64) = v58;
  *(v19 + 80) = v35;
  *(v19 + 128) = v33;
  *(v19 + 136) = v27;
  *(v19 + 144) = v25;
  *(v19 + 152) = v26;
  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t FeedGroupClusteringKnobs.encode(to:)(void *a1, __n128 a2)
{
  sub_1D5E3A990(0, &qword_1EDF028B0, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v20 - v7;
  v10 = *v2;
  v9 = v2[1];
  v23 = v2[2];
  v24 = v9;
  v11 = *(v2 + 7);
  v42 = *(v2 + 6);
  v43 = v11;
  v12 = v2[17];
  v44 = v2[16];
  v13 = *(v2 + 3);
  v38 = *(v2 + 2);
  v39 = v13;
  v14 = *(v2 + 5);
  v40 = *(v2 + 4);
  v41 = v14;
  v15 = v2[19];
  v21 = v2[18];
  v22 = v12;
  v20 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E3A7E4();

  sub_1D7264B5C();
  *&v31 = v10;
  LOBYTE(v28[0]) = 0;
  sub_1D5E3A600();
  sub_1D5BABC48(&qword_1EDF13E08, sub_1D5E3A600, &protocol conformance descriptor for FeedGroupKnobsRuleValue<A>);
  v16 = v45;
  sub_1D726443C();
  if (v16)
  {

    return (*(v25 + 8))(v8, v5);
  }

  else
  {
    v18 = v23;

    *&v31 = v24;
    LOBYTE(v28[0]) = 1;
    sub_1D726443C();
    *&v31 = v18;
    LOBYTE(v28[0]) = 3;
    sub_1D5E3A6E0(0);
    sub_1D5BABC48(&unk_1EDF13EC0, sub_1D5E3A6E0, &protocol conformance descriptor for FeedGroupKnobsRuleValue<A>);
    sub_1D726443C();
    v34 = v41;
    v35 = v42;
    v36 = v43;
    v31 = v38;
    v37 = v44;
    v32 = v39;
    v33 = v40;
    v30 = 4;
    sub_1D5E3A490(&v38, v28, &qword_1EDF141F8, &type metadata for FeedGroupGroupingRules);
    sub_1D5B49CBC(0, &qword_1EDF141F8, &type metadata for FeedGroupGroupingRules);
    sub_1D5E3A9F4();
    sub_1D726443C();
    v28[4] = v35;
    v28[5] = v36;
    v29 = v37;
    v28[0] = v31;
    v28[1] = v32;
    v28[2] = v33;
    v28[3] = v34;
    sub_1D5E3AAD0(v28, &qword_1EDF141F8, &type metadata for FeedGroupGroupingRules);
    v27 = v22;
    v26 = 5;
    sub_1D5E3A4FC(0);
    sub_1D5BABC48(&qword_1EDF13EE0, sub_1D5E3A4FC, &protocol conformance descriptor for FeedGroupKnobsRuleValue<A>);
    sub_1D726443C();
    v27 = v21;
    v26 = 6;
    sub_1D726443C();
    v19 = v25;
    v27 = v20;
    v26 = 7;
    sub_1D5E3B700(0, &qword_1EDF13EF0, sub_1D5E3A88C);
    sub_1D5E3AB2C();
    sub_1D726443C();
    return (*(v19 + 8))(v8, 0);
  }
}

double FeedGroupClusteringKnobs.merge(with:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v9 = *(a1 + 5);
  v56[2] = *(a1 + 4);
  v56[3] = v9;
  v10 = *(a1 + 7);
  v56[4] = *(a1 + 6);
  v56[5] = v10;
  v11 = *(a1 + 3);
  v56[0] = *(a1 + 2);
  v56[1] = v11;
  v13 = a1[16];
  v12 = a1[17];
  v14 = a1[18];
  v15 = *v2;
  v37 = v2[1];
  v38 = v7;
  v35 = v2[17];
  v36 = v2[2];
  v63 = v2[16];
  v16 = *(v2 + 7);
  v61 = *(v2 + 6);
  v62 = v16;
  v17 = *(v2 + 5);
  v59 = *(v2 + 4);
  v60 = v17;
  v18 = *(v2 + 3);
  v57 = *(v2 + 2);
  v58 = v18;
  v19 = v2[18];
  if (v5)
  {
    v34 = v5;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:

    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v34 = v15;

  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  v37 = v6;
  if (v8)
  {
LABEL_4:
    v36 = v8;
    goto LABEL_8;
  }

LABEL_7:

LABEL_8:
  if (*&v56[0] == 1)
  {

    sub_1D5E3A490(&v57, v47, &qword_1EDF141F8, &type metadata for FeedGroupGroupingRules);
    v53 = v61;
    v54 = v62;
    v55 = v63;
    v49 = v57;
    v50 = v58;
    v51 = v59;
    v52 = v60;
    v21 = v34;
    v20 = v35;
    if (v13)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v57)
    {
      v28 = *(v2 + 7);
      v44 = *(v2 + 6);
      v45 = v28;
      v46 = v2[16];
      v29 = *(v2 + 3);
      v40 = *(v2 + 2);
      v41 = v29;
      v30 = *(v2 + 5);
      v42 = *(v2 + 4);
      v43 = v30;

      sub_1D5E3A490(v56, v47, &qword_1EC882F10, &type metadata for FeedGroupGroupingRulesOverrides);
    }

    else
    {

      sub_1D5E3A490(v56, v47, &qword_1EC882F10, &type metadata for FeedGroupGroupingRulesOverrides);
      static FeedGroupGroupingRules.noRules.getter(&v40);
    }

    v31 = *(a1 + 5);
    v39[2] = *(a1 + 4);
    v39[3] = v31;
    v32 = *(a1 + 7);
    v39[4] = *(a1 + 6);
    v39[5] = v32;
    v33 = *(a1 + 3);
    v39[0] = *(a1 + 2);
    v39[1] = v33;
    sub_1D5E3A490(&v57, v47, &qword_1EDF141F8, &type metadata for FeedGroupGroupingRules);
    FeedGroupGroupingRules.merge(with:)(v39, &v49);
    v47[4] = v44;
    v47[5] = v45;
    v48 = v46;
    v47[0] = v40;
    v47[1] = v41;
    v47[2] = v42;
    v47[3] = v43;
    sub_1D5E3B2DC(v47);
    sub_1D5E3AAD0(v56, &qword_1EC882F10, &type metadata for FeedGroupGroupingRulesOverrides);
    v21 = v34;
    v20 = v35;
    if (v13)
    {
LABEL_10:
      v20 = v13;
      if (v12)
      {
        goto LABEL_11;
      }

LABEL_19:

      v22 = v14;
      if (v14)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_11:
  v19 = v12;
  v22 = v14;
  if (!v14)
  {
LABEL_12:
  }

LABEL_13:
  *a2 = v21;
  *(a2 + 8) = v37;
  *(a2 + 16) = v36;
  *(a2 + 24) = v38;
  v23 = v54;
  *(a2 + 96) = v53;
  *(a2 + 112) = v23;
  v24 = v55;
  v25 = v50;
  *(a2 + 32) = v49;
  *(a2 + 48) = v25;
  v26 = v52;
  *(a2 + 64) = v51;
  *(a2 + 80) = v26;
  *(a2 + 128) = v24;
  *(a2 + 136) = v20;
  *(a2 + 144) = v19;
  *(a2 + 152) = v22;

  return result;
}

uint64_t FeedGroupClusteringKnobs.rules(for:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5E3B330(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = (v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 32);
  v26[1] = *(v2 + 72);
  v31 = sub_1D5E35358(a1);
  v30 = sub_1D5E35358(a1);
  sub_1D5E35494(a1, v8);
  v10 = type metadata accessor for FeedGroupBundleArticleQuotas(0);
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  if (v9)
  {
    v29 = sub_1D5E35358(a1);
    v28 = sub_1D5E35358(a1);
    v27 = sub_1D5E35358(a1);
    v11 = sub_1D5E35ECC(a1, sub_1D5E370FC);
    sub_1D5E35850(a1, &v32);
    v12 = v32;
    v13 = v33;
    v14 = v34;
    v15 = v35;
    v16 = v36;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v27 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 1;
  }

  v17 = v30;
  *a2 = v31;
  v18 = v9 == 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = v17;
  *(a2 + 24) = 0;
  v19 = type metadata accessor for FeedPersonalizationClusteringRules(0);
  result = sub_1D5E3B350(v8, a2 + v19[6], sub_1D5E3B330);
  v21 = a2 + v19[7];
  v22 = v28;
  *v21 = v29;
  *(v21 + 8) = v18;
  v23 = a2 + v19[8];
  *v23 = v22;
  *(v23 + 8) = v18;
  v24 = a2 + v19[9];
  *v24 = v27;
  *(v24 + 8) = v18;
  *(a2 + v19[10]) = v11;
  v25 = (a2 + v19[11]);
  *v25 = v12;
  v25[1] = v13;
  v25[2] = v14;
  v25[3] = v15;
  v25[4] = v16;
  return result;
}

uint64_t sub_1D5E35358(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = v3 >> 62;
  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v11 = *(a1 + *(type metadata accessor for FeedContext(0) + 40));
      a1 = *(v1 + 16);
      if (v4)
      {
        v4 = sub_1D7263BFC();
        if (!v4)
        {
          return a1;
        }
      }

      else
      {
        v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v4)
        {
          return a1;
        }
      }

      v5 = 0;
      while ((v3 & 0xC000000000000001) != 0)
      {
        v1 = MEMORY[0x1DA6FB460](v5, v3);
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_17;
        }

LABEL_11:
        v7 = sub_1D5E38778(v11);
        v9 = v8;

        if ((v9 & 1) == 0)
        {
          a1 = v7;
        }

        ++v5;
        if (v6 == v4)
        {
          return a1;
        }
      }

      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v1 = *(v3 + 8 * v5 + 32);

      v6 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_11;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

    while (sub_1D7263BFC());
  }

  return *(v1 + 16);
}

uint64_t sub_1D5E35494@<X0>(unint64_t a1@<X0>, unsigned int (*a2)(char *, uint64_t, uint64_t)@<X8>)
{
  sub_1D5E3B330(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FeedGroupBundleArticleQuotas(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v36 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v29 - v15;
  v17 = *(v2 + *(*v2 + 120));
  v18 = v17 >> 62;
  if (v17 >> 62)
  {
LABEL_21:
    if (sub_1D7263BFC())
    {
LABEL_3:
      v34 = *(a1 + *(type metadata accessor for FeedContext(0) + 40));
      sub_1D5E3A67C(v2 + *(*v2 + 112), v16);
      v35 = v9;
      v30 = a2;
      if (v18)
      {
        v18 = sub_1D7263BFC();
        if (!v18)
        {
          return sub_1D5E3B350(v16, v30, type metadata accessor for FeedGroupBundleArticleQuotas);
        }
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          return sub_1D5E3B350(v16, v30, type metadata accessor for FeedGroupBundleArticleQuotas);
        }
      }

      v19 = 0;
      a1 = v17 & 0xC000000000000001;
      v9 = v17 & 0xFFFFFFFFFFFFFF8;
      v10 += 6;
      v32 = v18;
      v33 = v17;
      v31 = v16;
      while (1)
      {
        if (a1)
        {
          v2 = MEMORY[0x1DA6FB460](v19, v17);
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
LABEL_18:
            __break(1u);
            return sub_1D5E3B350(v16, v30, type metadata accessor for FeedGroupBundleArticleQuotas);
          }
        }

        else
        {
          if (v19 >= *(v9 + 16))
          {
            __break(1u);
            goto LABEL_21;
          }

          v2 = *(v17 + 8 * v19 + 32);

          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_18;
          }
        }

        sub_1D5E37C00(v34, v8);
        a2 = *v10;
        v23 = v35;
        if ((*v10)(v8, 1, v35) == 1)
        {
          v24 = v16;
          v25 = v36;
          sub_1D5E3A67C(v24, v36);
          v26 = v23;
          v20 = v25;
          v16 = v31;
          if (a2(v8, 1, v26) != 1)
          {
            sub_1D5E3B754(v8, sub_1D5E3B330);
          }
        }

        else
        {
          v20 = v36;
          sub_1D5E3B350(v8, v36, type metadata accessor for FeedGroupBundleArticleQuotas);
        }

        sub_1D5E3B754(v16, type metadata accessor for FeedGroupBundleArticleQuotas);

        sub_1D5E3B350(v20, v16, type metadata accessor for FeedGroupBundleArticleQuotas);
        ++v19;
        v18 = v32;
        v21 = v22 == v32;
        v17 = v33;
        if (v21)
        {
          return sub_1D5E3B350(v16, v30, type metadata accessor for FeedGroupBundleArticleQuotas);
        }
      }
    }
  }

  else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v28 = v2 + *(*v2 + 112);

  return sub_1D5E3A67C(v28, a2);
}

void sub_1D5E35850(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 56);
  v6 = v5 >> 62;
  if (v5 >> 62)
  {
LABEL_19:
    if (sub_1D7263BFC())
    {
      goto LABEL_3;
    }

LABEL_20:
    v10 = *(v2 + 24);
    v11 = *(v2 + 32);
    v12 = *(v2 + 40);
    v13 = *(v2 + 48);
    *a2 = *(v2 + 16);
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;

    return;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

LABEL_3:
  v14 = a2;
  a1 = *(a1 + *(type metadata accessor for FeedContext(0) + 40));
  v18 = *(v2 + 16);
  v17 = *(v2 + 24);
  v16 = *(v2 + 32);
  v15 = *(v2 + 40);
  a2 = *(v2 + 48);
  if (v6)
  {
    v6 = sub_1D7263BFC();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v2 = MEMORY[0x1DA6FB460](v7, v5);
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v2 = *(v5 + 8 * v7 + 32);

        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_16;
        }
      }

      sub_1D5E365B8(a1, &v19);
      v9 = v22;

      if (v9 != 1)
      {

        v18 = v19;
        v17 = BYTE8(v19);
        v16 = v20;
        a2 = v9;
        v15 = v21;
      }

      ++v7;
    }

    while (v8 != v6);
  }

  *v14 = v18;
  *(v14 + 8) = v17 & 1;
  *(v14 + 16) = v16;
  *(v14 + 24) = v15 & 1;
  *(v14 + 32) = a2;
}

void sub_1D5E35A64(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = v5 >> 62;
  if (v5 >> 62)
  {
LABEL_20:
    if (sub_1D7263BFC())
    {
      goto LABEL_3;
    }

LABEL_21:
    *a2 = *(v2 + 16);

    return;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

LABEL_3:
  v10 = a2;
  a1 = *(a1 + *(type metadata accessor for FeedContext(0) + 40));
  a2 = *(v2 + 16);
  if (v6)
  {
    v6 = sub_1D7263BFC();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v2 = MEMORY[0x1DA6FB460](v7, v5);
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        v2 = *(v5 + 8 * v7 + 32);

        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_17;
        }
      }

      sub_1D5E39280(a1, &v11);
      v9 = v11;
      if (v11)
      {

        a2 = v9;
      }

      else
      {
      }

      ++v7;
    }

    while (v8 != v6);
  }

  *v10 = a2;
}

double sub_1D5E35BF4(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = v3 >> 62;
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return *(v1 + 16);
  }

LABEL_17:
  if (!sub_1D7263BFC())
  {
    return *(v1 + 16);
  }

LABEL_3:
  a1 = *(a1 + *(type metadata accessor for FeedContext(0) + 40));
  v5 = *(v1 + 16);
  if (v4)
  {
    v4 = sub_1D7263BFC();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v4 != v6)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x1DA6FB460](v6, v3);
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v1 = *(v3 + 8 * v6 + 32);

      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    v8 = sub_1D5E39D9C(a1);
    v10 = v9;

    ++v6;
    if ((v10 & 1) == 0)
    {
      v5 = *&v8;
      v6 = v7;
    }
  }

  return v5;
}

uint64_t sub_1D5E35D24(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = v3 >> 62;
  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v10 = *(a1 + *(type metadata accessor for FeedContext(0) + 40));
      v5 = *(v1 + 16);
      if (v4)
      {
        v4 = sub_1D7263BFC();
        if (!v4)
        {
          return v5 & 1;
        }
      }

      else
      {
        v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v4)
        {
          return v5 & 1;
        }
      }

      v6 = 0;
      while ((v3 & 0xC000000000000001) != 0)
      {
        v1 = MEMORY[0x1DA6FB460](v6, v3);
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_17;
        }

LABEL_11:
        v8 = sub_1D5E39ED8(v10);
        a1 = v8;

        if (v8 != 2)
        {
          v5 = v8;
        }

        ++v6;
        if (v7 == v4)
        {
          return v5 & 1;
        }
      }

      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v1 = *(v3 + 8 * v6 + 32);

      v7 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_11;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

    while (sub_1D7263BFC());
  }

  v5 = *(v1 + 16);
  return v5 & 1;
}

uint64_t sub_1D5E35ECC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + 24);
  v5 = v4 >> 62;
  if (v4 >> 62)
  {
    goto LABEL_19;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v6 = *(a1 + *(type metadata accessor for FeedContext(0) + 40));
      a1 = *(v2 + 16);
      if (v5)
      {
        v5 = sub_1D7263BFC();
      }

      else
      {
        v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v5)
      {
        return a1;
      }

      v7 = 0;
      while ((v4 & 0xC000000000000001) != 0)
      {
        v2 = MEMORY[0x1DA6FB460](v7, v4);
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_17;
        }

LABEL_13:
        v9 = a2(v6);
        if (v9)
        {
          v10 = v9;

          a1 = v10;
        }

        else
        {
        }

        ++v7;
        if (v8 == v5)
        {
          return a1;
        }
      }

      if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v2 = *(v4 + 8 * v7 + 32);

      v8 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_13;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

    while (sub_1D7263BFC());
  }

  a1 = *(v2 + 16);

  return a1;
}

uint64_t sub_1D5E36080@<X0>(uint64_t (**a1)(char *, char *, uint64_t)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void, __n128)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, char *a6@<X8>)
{
  v40 = a5;
  v48 = a4;
  v10 = a2(0);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v14 = &v37 - v13;
  v15 = a3(0, v12);
  v39 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v50 = &v37 - v22;
  v23 = *(v6 + *(*v6 + 120));
  v24 = v23 >> 62;
  if (v23 >> 62)
  {
LABEL_22:
    if (sub_1D7263BFC())
    {
      goto LABEL_3;
    }

LABEL_23:
    v35 = *(v39 + 16);
    v36 = v6 + *(*v6 + 112);

    return v35(a6, v36, v15, v21);
  }

  if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

LABEL_3:
  v47 = *(a1 + *(type metadata accessor for FeedContext(0) + 40));
  v25 = v6 + *(*v6 + 112);
  v41 = *(v39 + 16);
  v42 = v39 + 16;
  v41(v50, v25, v15);
  if (v24)
  {
    v26 = sub_1D7263BFC();
    v27 = v39;
    if (v26)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v26 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v27 = v39;
    if (v26)
    {
LABEL_5:
      v49 = v14;
      v24 = 0;
      v45 = v23 & 0xFFFFFFFFFFFFFF8;
      v46 = v23 & 0xC000000000000001;
      v28 = (v27 + 48);
      a1 = (v27 + 32);
      v43 = (v27 + 8);
      v44 = v26;
      v38 = a6;
      v39 = (v27 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      while (1)
      {
        if (v46)
        {
          v6 = MEMORY[0x1DA6FB460](v24, v23);
          v30 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:
            a6 = v38;
            return v6(a6, v50, v15);
          }
        }

        else
        {
          if (v24 >= *(v45 + 16))
          {
            __break(1u);
            goto LABEL_22;
          }

          v6 = *&v23[8 * v24 + 32];

          v30 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_16;
          }
        }

        v14 = v23;
        v31 = v18;
        a6 = v49;
        sub_1D5E3A148(v47, v48, v49);
        v32 = *v28;
        if ((*v28)(a6, 1, v15) == 1)
        {
          v41(v31, v50, v15);
          v33 = v32(a6, 1, v15);
          v18 = v31;
          if (v33 != 1)
          {
            sub_1D5E3B754(v49, v40);
          }
        }

        else
        {
          v18 = v31;
          (*a1)(v31, a6, v15);
        }

        v29 = v50;
        (*v43)(v50, v15);

        v6 = *a1;
        (*a1)(v29, v18, v15);
        ++v24;
        v23 = v14;
        if (v30 == v44)
        {
          goto LABEL_17;
        }
      }
    }
  }

  v6 = *(v27 + 32);
  return v6(a6, v50, v15);
}

void sub_1D5E36474(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = v4 >> 62;
  if (v4 >> 62)
  {
    goto LABEL_19;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      a1 = *(a1 + *(type metadata accessor for FeedContext(0) + 40));
      v6 = *(v2 + 16);
      if (v5)
      {
        v5 = sub_1D7263BFC();
        if (!v5)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v5)
        {
          goto LABEL_21;
        }
      }

      v7 = 0;
      while ((v4 & 0xC000000000000001) != 0)
      {
        v2 = MEMORY[0x1DA6FB460](v7, v4);
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_17;
        }

LABEL_11:
        sub_1D5E3A354(a1, &v11);
        v9 = v11;

        if (v9 != 2)
        {
          v6 = v9;
        }

        ++v7;
        if (v8 == v5)
        {
          goto LABEL_21;
        }
      }

      if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v2 = *(v4 + 8 * v7 + 32);

      v8 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_11;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

    while (sub_1D7263BFC());
  }

  v6 = *(v2 + 16);
LABEL_21:
  *a2 = v6 & 1;
}

uint64_t sub_1D5E365B8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v56[2] = *MEMORY[0x1E69E9840];
  if (qword_1EDF2AB18 != -1)
  {
    goto LABEL_98;
  }

  while (1)
  {
    v6 = *(v3 + 24);
    v56[0] = *(v3 + 16);
    v56[1] = v6;

    v7 = sub_1D6844380(v56);

    v51 = *(v7 + 16);
    if (!v51)
    {

LABEL_93:
      *a2 = 0u;
      a2[1] = 0u;
      *(a2 + 4) = 1;
      return result;
    }

    v46 = v3;
    v47 = a2;
    v8 = 0;
    v55 = 0;
    v50 = v7 + 32;
    v52 = v7;
    v48 = a1;
LABEL_8:
    if (v8 >= *(v7 + 16))
    {
      goto LABEL_96;
    }

    v53 = v8;
    v11 = (v50 + 56 * v8);
    v12 = v11[1];
    v14 = v11[3];
    v13 = v11[4];
    v15 = v11[5];
    v16 = v11[6];
    LOBYTE(v11) = *(v14 + 32);
    v17 = v11 & 0x3F;
    v18 = ((1 << v11) + 63) >> 6;
    v19 = (8 * v18);
    swift_bridgeObjectRetain_n();

    v54 = v12;
    v20 = v13;

    if (v17 > 0xD)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v19 = swift_slowAlloc();

        v39 = v55;
        a2 = sub_1D5FB8818(v19, v18, v14, a1);

        v55 = v39;
        if (v39)
        {
          goto LABEL_100;
        }

        MEMORY[0x1DA6FD500](v19, -1, -1);
        goto LABEL_12;
      }
    }

    MEMORY[0x1EEE9AC00](isStackAllocationSafe, v22);
    bzero(&v46 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0), v19);
    v23 = v55;
    sub_1D5FB88DC((&v46 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0)), v18, v14, a1);
    v55 = v23;
    if (v23)
    {
      break;
    }

    a2 = v24;

LABEL_12:
    v3 = v16;
    v25 = sub_1D5BFC390(a2, v14);

    if ((v25 & 1) == 0 || (sub_1D670EDB8(a1, v13), (v26 & 1) == 0))
    {

LABEL_50:
      v7 = v52;
      v10 = v53;
      goto LABEL_7;
    }

    v27 = *(v15 + 16);
    v49 = v20;
    if (!v27)
    {
      v32 = *(v16 + 16);
      if (!v32)
      {
        goto LABEL_94;
      }

      goto LABEL_54;
    }

    v28 = 0;
    v29 = (v15 + 40);
    while (v28 < *(v15 + 16))
    {
      a2 = *v29;

      switch(sub_1D72641CC())
      {
        case 0:
          if (qword_1EC87DB60 == -1)
          {
            goto LABEL_45;
          }

          goto LABEL_43;
        case 1:
          if (qword_1EDF05C38 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 2:
          if (qword_1EC87DB90 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 3:
          if (qword_1EDF1BBE8 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 4:
          if (qword_1EC87DB70 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 5:
          if (qword_1EDF05CB8 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 6:
          if (qword_1EC87DB80 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 7:
          if (qword_1EC87DB98 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 8:
          if (qword_1EC87DBA0 == -1)
          {
            goto LABEL_45;
          }

          goto LABEL_43;
        case 9:
          if (qword_1EC87DBA8 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 10:
          if (qword_1EC87DBB0 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 11:
          if (qword_1EC87DBB8 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 12:
          if (qword_1EC87DBC0 != -1)
          {
LABEL_43:
            swift_once();
          }

LABEL_45:

          goto LABEL_46;
        default:
          v30 = sub_1D726203C();
          v31 = [objc_opt_self() systemImageNamed_];

          if (!v31)
          {

            swift_bridgeObjectRelease_n();

LABEL_87:
            a1 = v48;
            goto LABEL_50;
          }

LABEL_46:
          ++v28;
          v29 += 2;
          if (v27 == v28)
          {

            v32 = *(v3 + 16);
            if (!v32)
            {
LABEL_94:

              v40 = v47;
              v41 = *(v46 + 40);
              v42 = *(v46 + 48);
              v43 = *(v46 + 56);
              v44 = *(v46 + 64);
              *v47 = *(v46 + 32);
              v40[1] = v41;
              v40[2] = v42;
              v40[3] = v43;
              v40[4] = v44;
            }

LABEL_54:

            v33 = 0;
            v34 = (v3 + 40);
            while (1)
            {
              if (v33 >= *(v3 + 16))
              {
                goto LABEL_97;
              }

              v35 = *(v34 - 1);
              a2 = *v34;
              swift_bridgeObjectRetain_n();
              v36 = sub_1D61E05F4(v35, a2);
              if (v36 != 13)
              {
                break;
              }

              v37 = sub_1D726203C();
              v38 = [objc_opt_self() systemImageNamed_];

              if (v38)
              {
                swift_bridgeObjectRelease_n();

                goto LABEL_87;
              }

              ++v33;
              v34 += 2;
              if (v32 == v33)
              {

                goto LABEL_94;
              }
            }

            a1 = v48;
            v7 = v52;
            switch(v36)
            {
              case 1:
                if (qword_1EDF05C38 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 2:
                if (qword_1EC87DB90 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 3:
                if (qword_1EDF1BBE8 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 4:
                if (qword_1EC87DB70 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 5:
                if (qword_1EDF05CB8 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 6:
                if (qword_1EC87DB80 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 7:
                if (qword_1EC87DB98 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 8:
                if (qword_1EC87DBA0 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 9:
                if (qword_1EC87DBA8 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 10:
                if (qword_1EC87DBB0 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 11:
                if (qword_1EC87DBB8 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 12:
                if (qword_1EC87DBC0 != -1)
                {
                  goto LABEL_84;
                }

                break;
              default:
                if (qword_1EC87DB60 != -1)
                {
LABEL_84:
                  swift_once();
                }

                break;
            }

            swift_bridgeObjectRelease_n();

            v10 = v53;
LABEL_7:
            v8 = v10 + 1;
            if (v8 == v51)
            {

              a2 = v47;
              goto LABEL_93;
            }

            goto LABEL_8;
          }

          break;
      }
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    swift_once();
  }

  v45 = v55;
  swift_willThrow();

  __break(1u);
LABEL_100:

  result = MEMORY[0x1DA6FD500](v19, -1, -1);
  __break(1u);
  return result;
}