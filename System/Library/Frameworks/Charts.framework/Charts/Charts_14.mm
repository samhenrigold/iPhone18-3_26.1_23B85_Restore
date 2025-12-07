void sub_1AADAA60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_1AAF8F724();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1AADAAB98(v4, v5);
    v36 = v35;

    v5 = v36;
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
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_1AAF90164();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
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

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
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

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
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
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
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

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
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

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
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

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
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
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_1AADAAB98(uint64_t a1, unint64_t a2)
{
  v2 = sub_1AAF8F734();
  v6 = sub_1AADAAC18(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1AADAAC18(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1AAF8FE84();
    if (!v9 || (v11 = v9, v12 = sub_1AADAAD70(v9, 0, v10), v13 = sub_1AADAADFC(v15, (v12 + 4), v11, a1, a2, a3, a4), , , v13 == v11))
    {
      v14 = sub_1AAF8F694();

      return v14;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1AAF8F694();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1AAF90164();
LABEL_4:

  return sub_1AAF8F694();
}

void *sub_1AADAAD70(uint64_t a1, uint64_t a2, double a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1AADABC68(0, &qword_1EB4245B8, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  v6 = j__malloc_size(v5);
  result = v5;
  v5[2] = a1;
  v5[3] = 2 * v6 - 64;
  return result;
}

unint64_t sub_1AADAADFC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
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
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1AADAB01C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1AAF8F704();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1AAF90164();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1AADAB01C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1AAF8F6E4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1AADAB01C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1AAF8F714();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1AC598310](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1AADAB098(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = result;
  v9 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = a3 + 56;
  while (1)
  {
    v13 = a5[3];
    v14 = a5[4];
    if (!v14)
    {
      break;
    }

    v15 = a5[3];
LABEL_9:
    v18 = *(*(*a5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    a5[3] = v15;
    a5[4] = (v14 - 1) & v14;
    result = sub_1AAF90684();
    v19 = -1 << *(a3 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) != 0)
    {
      v23 = *(a3 + 48);
      if (*(v23 + 8 * v20) == v18)
      {
LABEL_2:
        v12 = v8[v21];
        v8[v21] = v12 & ~v22;
        if ((v12 & v22) != 0)
        {
          if (__OFSUB__(v10--, 1))
          {
LABEL_23:
            __break(1u);
            return result;
          }

          if (!v10)
          {
            return MEMORY[0x1E69E7CD0];
          }
        }
      }

      else
      {
        v24 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          if (*(v23 + 8 * v20) == v18)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v16 = (a5[2] + 64) >> 6;
  v17 = a5[3];
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v15 >= v16)
    {
      break;
    }

    v14 = *(a5[1] + 8 * v15);
    ++v17;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  if (v16 <= v13 + 1)
  {
    v26 = v13 + 1;
  }

  else
  {
    v26 = (a5[2] + 64) >> 6;
  }

  a5[3] = v26 - 1;
  a5[4] = 0;

  return sub_1AADAB254(v8, a2, v10, a3);
}

uint64_t sub_1AADAB254(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1AADABBAC(0, &qword_1EB4240D0, MEMORY[0x1E69E6540], MEMORY[0x1E69E6A10]);
  result = sub_1AAF900A4();
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
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1AAF90684();
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_1AADAB50C(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v12 = v5;
    v13 = v6;
    v7 = result;
    v8 = *(*(a5 + 48) + 8 * a2);
    v9 = (*(a5 + 56) + 544 * a2);
    memcpy(__dst, v9, sizeof(__dst));
    memcpy(v7, v9, 0x220uLL);
    sub_1AADABF88(__dst, &v10);
    return v8;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1AADAB5C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1AADAB648(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1AADABC00(0, &qword_1EB4240B0, sub_1AAD57C40, &type metadata for AnyEntity, MEMORY[0x1E69E6A10]);
    v4 = sub_1AAF900A4();
    v5 = 0;
    v6 = v4 + 56;
    v7 = a1 + 32;
    while (1)
    {
      v11 = *(v7 + 8 * v5);
      sub_1AAF90694();
      MEMORY[0x1AC5992C0](v11);
      result = sub_1AAF906F4();
      v13 = ~(-1 << *(v4 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v6 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v4 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v11)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
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
        *(v6 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v11;
        v8 = *(v4 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v4 + 16) = v10;
        swift_unknownObjectRetain();
      }

      if (++v5 == v2)
      {
        return v4;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_1AADAB7B8(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1AAF8FFB4())
    {
LABEL_3:
      sub_1AAD81614(0);
      v3 = sub_1AAF900A4();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1AAF8FFB4();
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
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    v8 = MEMORY[0x1AC598D40](v6, v1);
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_1AAF8D094();
    sub_1AADAB5C0(&qword_1EB4240B8, MEMORY[0x1E697A3A8], MEMORY[0x1E697A3B0]);
    v10 = sub_1AAF8F474();
    v11 = -1 << *(v3 + 32);
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_1AADAB5C0(&qword_1EB4240C0, MEMORY[0x1E697A3A8], MEMORY[0x1E697A3B8]);
      do
      {
        if (sub_1AAF8F5F4())
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

unint64_t sub_1AADABA9C(double a1)
{
  result = qword_1ED9B4470;
  if (!qword_1ED9B4470)
  {
    sub_1AADABC00(255, &qword_1ED9B4468, sub_1AAD46810, MEMORY[0x1E69E63B0], MEMORY[0x1E6968E78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B4470);
  }

  return result;
}

uint64_t sub_1AADABB2C(uint64_t a1, double a2)
{
  sub_1AADABC68(0, &qword_1ED9B2790, MEMORY[0x1E69E63B0], type metadata accessor for AnyFormatStyle.Wrapper);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AADABBAC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = (a4)(0, MEMORY[0x1E69E6530], a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AADABC00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1AADABC68(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AADABCEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AADABD50(uint64_t a1)
{
  if (!qword_1EB4245C8)
  {
    type metadata accessor for DateBins(255);
    sub_1AADAB5C0(&qword_1ED9B12A0, type metadata accessor for DateBins, &protocol conformance descriptor for DateBins);
    v1 = sub_1AAF90294();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB4245C8);
    }
  }
}

uint64_t sub_1AADABDE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AADABE4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_1AADABEAC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_1AADABEC0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
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

uint64_t sub_1AADABF08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AADABF88(uint64_t a1, uint64_t a2)
{
  sub_1AADABCEC(0, &qword_1ED9AED80, sub_1AADAC01C, type metadata accessor for WeightedSum.Element);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AADAC01C()
{
  if (!qword_1ED9AE8D8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9AE8D8);
    }
  }
}

uint64_t sub_1AADAC07C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AADAC0EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AADAC13C@<X0>(float *a1@<X8>)
{
  v2 = sub_1AAF8E134();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AGGraphGetValue();

  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, v2);
  sub_1AAF8ED54();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  result = (*(v3 + 8))(v5, v2);
  *a1 = v8;
  *(a1 + 1) = v10;
  *(a1 + 2) = v12;
  *(a1 + 3) = v14;
  return result;
}

uint64_t sub_1AADAC28C(double a1)
{
  v1 = sub_1AAF8D014();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADACAE0(0, &qword_1EB4245D0, MEMORY[0x1E69E6AA0], v3);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - v8;
  sub_1AADACAE0(0, &qword_1EB4245E0, MEMORY[0x1E69E6A98], v7);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  sub_1AAF8D094();
  swift_unknownObjectRetain();
  sub_1AAF8CC34();
  swift_unknownObjectRelease();
  sub_1AADACF74(0, &qword_1EB4235E0, &type metadata for Transform, MEMORY[0x1E69E62F8]);
  v14 = *AGGraphGetValue();
  (*(v2 + 32))(v5, v9, v1);
  sub_1AADACBC8(&qword_1EB423F70, MEMORY[0x1E697A360], MEMORY[0x1E697A368]);

  sub_1AAF8F744();
  v24 = v11;
  v15 = &v13[*(v11 + 52)];
  *v15 = v14;
  *(v15 + 1) = 0;
  sub_1AAD77B28(0, v16);
  sub_1AADACBC8(&qword_1EB423F78, sub_1AAD77B28, MEMORY[0x1E697A358]);
  result = sub_1AAF8FE94();
  if (v28)
  {
    v19 = 0;
    v20 = (v14 + 64);
    while (1)
    {
      v21 = *(v14 + 16);
      if (v19 == v21)
      {

        goto LABEL_8;
      }

      if (v19 >= v21)
      {
        break;
      }

      ++v19;
      v22 = *v20;
      v26 = *(v20 - 1);
      v27 = v22;
      v25 = *(v20 - 2);
      *(v15 + 1) = v19;
      sub_1AAF8FCC4();
      sub_1AAF8CC84();

      result = sub_1AAF8FE94();
      v20 += 3;
      if (!v28)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v13[*(v24 + 56)] = 1;
    return sub_1AADACC10(v13, v18);
  }

  return result;
}

uint64_t sub_1AADAC608()
{
  sub_1AAF90694();
  sub_1AAF8ED74();
  return sub_1AAF906F4();
}

uint64_t sub_1AADAC67C(uint64_t a1)
{
  sub_1AAF90694();
  sub_1AAF8ED74();
  return sub_1AAF906F4();
}

void sub_1AADAC6F4(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_1AADAC700@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = Value[1];
  v5 = Value[2];
  v6 = Value[3];
  result = sub_1AADACC88();
  *a1 = v3;
  *(a1 + 4) = v4;
  *(a1 + 8) = v5;
  *(a1 + 12) = v6;
  *(a1 + 16) = result;
  return result;
}

double sub_1AADAC76C()
{
  v1 = *v0;
  v2 = *(AGGraphGetValue() + 16);

  sub_1AADAC7CC(v1, v2);

  return result;
}

uint64_t sub_1AADAC7CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AAF8CF34();
  v4 = sub_1AAF8CDC4();
  v5 = sub_1AAF8CF54();
  if ((*(*(v4 - 8) + 48))(v6, 1, v4))
  {
    v5(v17, 0);
    return v3(v18, 0);
  }

  else
  {
    v8 = *(a2 + 16);
    if (v8)
    {
      v16 = MEMORY[0x1E69E7CC0];
      sub_1AAD410F0(0, v8, 0);
      v9 = v16;
      v10 = a2 + 32;
      do
      {
        sub_1AADAC9C8(v10, v14);
        sub_1AACED35C(v14, &v13);
        sub_1AADACA00();
        swift_dynamicCast();
        v16 = v9;
        v12 = *(v9 + 16);
        v11 = *(v9 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1AAD410F0((v11 > 1), v12 + 1, 1);
          v9 = v16;
        }

        *(v9 + 16) = v12 + 1;
        sub_1AACBB198(&v15, v9 + 40 * v12 + 32);
        v10 += 32;
        --v8;
      }

      while (v8);
    }

    sub_1AAF8CDB4();
    v5(v17, 0);
    return v3(v18, 0);
  }
}

unint64_t sub_1AADACA00()
{
  result = qword_1EB424650;
  if (!qword_1EB424650)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB424650);
  }

  return result;
}

unint64_t sub_1AADACA64(__n128 a1)
{
  result = qword_1EB4245D8;
  if (!qword_1EB4245D8)
  {
    sub_1AADACF74(255, &qword_1EB4235E0, &type metadata for Transform, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4245D8);
  }

  return result;
}

void sub_1AADACAE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), double a4)
{
  if (!*a2)
  {
    v7 = sub_1AAF8D014();
    sub_1AADACF74(255, &qword_1EB4235E0, &type metadata for Transform, MEMORY[0x1E69E62F8]);
    v12[0] = v7;
    v12[1] = v9;
    v12[2] = sub_1AADACBC8(&qword_1EB423F70, MEMORY[0x1E697A360], MEMORY[0x1E697A368]);
    v12[3] = sub_1AADACA64(v8);
    v10 = a3(a1, v12);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1AADACBC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1AADACC10(uint64_t a1, double a2)
{
  sub_1AADACAE0(0, &qword_1EB4245E0, MEMORY[0x1E69E6A98], a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AADACC88()
{
  v0 = sub_1AAF8D624();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1AAF8CD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADACF28();
  sub_1AAF8ED94();
  sub_1AAF8FE34();
  sub_1AAF8CD54();
  sub_1AAF8D614();
  (*(v1 + 104))(v3, *MEMORY[0x1E697A6E8], v0);
  sub_1AAF8CD64();
  sub_1AADACF74(0, &qword_1EB423610, &type metadata for AnyMaterial, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AAF92AB0;
  v17 = v4;
  v18 = MEMORY[0x1E697A178];
  v9 = sub_1AACB2508(v16);
  (*(v5 + 16))(v9, v7, v4);
  v10 = v17;
  v11 = sub_1AACBB42C(v16, v17);
  *(v8 + 56) = v10;
  v12 = sub_1AACB2508((v8 + 32));
  (*(*(v10 - 8) + 16))(v12, v11, v10);
  v13 = sub_1AACB634C(v16);
  (*(v5 + 8))(v7, v4, v13);
  return v8;
}

unint64_t sub_1AADACF28()
{
  result = qword_1EB423608;
  if (!qword_1EB423608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB423608);
  }

  return result;
}

void sub_1AADACF74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AADACFC4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1AADACFE8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
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

uint64_t sub_1AADAD030(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1AADAD080(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1AADAD0B4(uint64_t result, int a2, int a3)
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

unint64_t sub_1AADAD11C()
{
  result = qword_1EB4245E8;
  if (!qword_1EB4245E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4245E8);
  }

  return result;
}

void sub_1AADAD184(uint64_t result, double a2, double a3, double a4, double a5, double a6)
{
  v6 = *(result + 16);
  if (v6)
  {
    v11 = 0;
    v12 = a5 - a4;
    v13 = result + 80;
    v57 = MEMORY[0x1E69E7CC0];
    v50 = result + 80;
    v51 = *(result + 16);
    while (2)
    {
      for (i = (v13 + 56 * v11); ; i += 7)
      {
        if (v11 >= v6)
        {
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          return;
        }

        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_43;
        }

        v16 = *(i - 6);
        v17 = *(i - 4);
        v54 = *(i - 5);
        v55 = *(i - 3);
        v18 = *(i - 2);
        v56 = *(i - 1);
        if (*i)
        {
          break;
        }

        v19 = trunc(v12 / *&v16);
        if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_44;
        }

        if (v19 <= -9.22337204e18)
        {
          goto LABEL_45;
        }

        if (v19 >= 9.22337204e18)
        {
          goto LABEL_46;
        }

        v20 = v19 - 2;
        if (v19 >= 2)
        {
          v52 = v11 + 1;
          sub_1AADAD8B0(v16, v54, v17, v55, v18, v56, 0);
          sub_1AADAD8B0(v16, v54, v17, v55, v18, v56, 0);
          sub_1AADAD8EC();
          for (j = 1; ; ++j)
          {
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1AAF92AB0;
            *(inited + 32) = v11;
            *(inited + 72) = 0;
            v42 = sub_1AAD674F0(0, 1, 1, MEMORY[0x1E69E7CC0]);
            if (*(v42 + 2) >= *(v42 + 3) >> 1)
            {
              break;
            }

            v43 = v42;
            swift_arrayInitWithCopy();

            ++*(v43 + 2);
            v44 = swift_initStackObject();
            *(v44 + 32) = j;
            *(v44 + 16) = xmmword_1AAF92AB0;
            *(v44 + 72) = 0;
            v45 = *(v43 + 2);
            if (*(v43 + 3) >> 1 <= v45)
            {
              v43 = sub_1AAD674F0(1, v45 + 1, 1, v43);
              if (*(v43 + 3) >> 1 <= *(v43 + 2))
              {
                goto LABEL_48;
              }
            }

            swift_arrayInitWithCopy();

            ++*(v43 + 2);
            sub_1AADAD8B0(v16, v54, v17, v55, v18, v56, 0);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v57 = sub_1AAD689F8(0, *(v57 + 2) + 1, 1, v57);
            }

            v47 = *(v57 + 2);
            v46 = *(v57 + 3);
            if (v47 >= v46 >> 1)
            {
              v57 = sub_1AAD689F8((v46 > 1), v47 + 1, 1, v57);
            }

            v48 = (*&v16 * j + a4) * a2 + a3;
            *(v57 + 2) = v47 + 1;
            v49 = &v57[56 * v47];
            *(v49 + 4) = v43;
            *(v49 + 5) = (v48 + 0.5) * a6;
            *(v49 + 6) = v54;
            *(v49 + 7) = v17;
            *(v49 + 8) = v55;
            *(v49 + 9) = v18;
            *(v49 + 10) = v56;
            if (!v20)
            {
              sub_1AADAD93C(v16, v54, v17, v55, v18, v56, 0);
              sub_1AADAD93C(v16, v54, v17, v55, v18, v56, 0);
              goto LABEL_39;
            }

            --v20;
          }

          goto LABEL_47;
        }

        sub_1AADAD8B0(v16, v54, v17, v55, v18, v56, 0);
        sub_1AADAD93C(v16, v54, v17, v55, v18, v56, 0);
        ++v11;
        if (v15 == v6)
        {
          return;
        }
      }

      v52 = v11 + 1;
      v21 = *(v16 + 16);
      sub_1AADAD8B0(v16, v54, v17, v55, v18, v56, 1);
      v53 = v21;
      if (v21)
      {
        v22 = 0;
        v23 = (v16 + 32);
        while (v22 < *(v16 + 16))
        {
          v24 = *v23;
          v25 = v23[1];
          v26 = v23[3];
          v59[2] = v23[2];
          v59[3] = v26;
          v59[0] = v24;
          v59[1] = v25;
          v27 = v23[4];
          v28 = v23[5];
          v29 = v23[7];
          v59[6] = v23[6];
          v59[7] = v29;
          v59[4] = v27;
          v59[5] = v28;
          memmove(__dst, v23, 0x80uLL);
          sub_1AADAD8EC();
          v30 = swift_initStackObject();
          *(v30 + 16) = xmmword_1AAF92AB0;
          *(v30 + 32) = v11;
          *(v30 + 72) = 0;
          sub_1AAD57B20(v59, v58);
          v31 = sub_1AAD674F0(0, 1, 1, MEMORY[0x1E69E7CC0]);
          if (*(v31 + 2) >= *(v31 + 3) >> 1)
          {
            goto LABEL_50;
          }

          v32 = v31;
          swift_arrayInitWithCopy();

          ++*(v32 + 2);
          v33 = swift_initStackObject();
          *(v33 + 32) = v22;
          *(v33 + 16) = xmmword_1AAF92AB0;
          *(v33 + 72) = 0;
          v34 = *(v32 + 2);
          if (*(v32 + 3) >> 1 <= v34)
          {
            v32 = sub_1AAD674F0(1, v34 + 1, 1, v32);
            if (*(v32 + 3) >> 1 <= *(v32 + 2))
            {
              goto LABEL_51;
            }
          }

          swift_arrayInitWithCopy();

          ++*(v32 + 2);
          sub_1AAD57B7C(__dst);
          v35 = v61;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v57 = sub_1AAD689F8(0, *(v57 + 2) + 1, 1, v57);
          }

          v37 = *(v57 + 2);
          v36 = *(v57 + 3);
          if (v37 >= v36 >> 1)
          {
            v57 = sub_1AAD689F8((v36 > 1), v37 + 1, 1, v57);
          }

          v38 = v35 * a2 + a3;
          *(v57 + 2) = v37 + 1;
          v39 = &v57[56 * v37];
          *(v39 + 4) = v32;
          *(v39 + 5) = (v38 + 0.5) * a6;
          *(v39 + 6) = v54;
          ++v22;
          *(v39 + 7) = v17;
          *(v39 + 8) = v55;
          *(v39 + 9) = v18;
          *(v39 + 10) = v56;
          v23 += 8;
          if (v53 == v22)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_49;
      }

LABEL_26:
      sub_1AADAD93C(v16, v54, v17, v55, v18, v56, 1);
LABEL_39:
      v6 = v51;
      v11 = v52;
      v13 = v50;
      if (v52 != v51)
      {
        continue;
      }

      break;
    }
  }
}

double sub_1AADAD8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  return result;
}

void sub_1AADAD8EC()
{
  if (!qword_1ED9AD750)
  {
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AD750);
    }
  }
}

double sub_1AADAD93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  return result;
}

char *sub_1AADAD978(uint64_t a1, void *a2, unsigned __int8 a3)
{
  if ((a3 | 2) != 2)
  {
    goto LABEL_30;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v20 = a2 + 27;
  v21 = a2 + 37;
  v4 = (a1 + 40);
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v4[1])
    {
      goto LABEL_6;
    }

    v10 = *(v4 + 1);
    v9 = *(v4 + 2);
    v11 = *(v4 + 3);
    v12 = *(v4 + 4);
    v13 = *(v4 + 5);
    v28 = *v4;
    if ((*v4 & 1) == 0)
    {
      v26 = *(v4 - 1);
      if (v12)
      {
        v25 = v9;
        v24 = HIDWORD(v9);
        v27 = *(v4 + 4);
      }

      else
      {
        sub_1AAF8D914();
        v10 = v35;
        v25 = v36;
        v24 = v37;
        v11 = v38;
        v27 = v39;
        v13 = v40;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1AAD68228(0, *(v5 + 2) + 1, 1, v5);
      }

      v16 = *(v5 + 2);
      v15 = *(v5 + 3);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v5 = sub_1AAD68228((v15 > 1), v16 + 1, 1, v5);
      }

      v7 = v24;
      v6 = v25;
      goto LABEL_5;
    }

    if (!a3)
    {
      v14 = v20;
      if (!a2[26])
      {
        goto LABEL_29;
      }

      goto LABEL_15;
    }

    v14 = v21;
    if (!a2[36])
    {
      break;
    }

LABEL_15:
    v26 = *v14;

    if (v12)
    {
      v6 = v9;
      v7 = HIDWORD(v9);
      v27 = v12;
    }

    else
    {
      sub_1AAF8D914();
      v10 = v29;
      v6 = v30;
      v7 = v31;
      v11 = v32;
      v27 = v33;
      v13 = v34;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1AAD68228(0, *(v5 + 2) + 1, 1, v5);
    }

    v16 = *(v5 + 2);
    v18 = *(v5 + 3);
    v17 = v16 + 1;
    if (v16 >= v18 >> 1)
    {
      v5 = sub_1AAD68228((v18 > 1), v16 + 1, 1, v5);
    }

LABEL_5:
    *(v5 + 2) = v17;
    v8 = &v5[56 * v16];
    *(v8 + 4) = v26;
    *(v8 + 5) = v10;
    *(v8 + 6) = v6 | (v7 << 32);
    *(v8 + 7) = v11;
    *(v8 + 8) = v27;
    *(v8 + 9) = v13;
    v8[80] = v28 & 1;
LABEL_6:
    v4 += 56;
    if (!--v3)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t *sub_1AADADC74@<X0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (!a3)
  {
    sub_1AAD9A96C(__src, v13);
    v8 = MEMORY[0x1E69E7CC0];
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1AADADDA4(__src);
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_6;
  }

  sub_1AAD9A96C(__src, v13);
  v8 = sub_1AADAD978(a3, __src, 0);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_1AADAD978(a4, __src, 2u);
  sub_1AADADDA4(__src);

LABEL_6:
  memcpy(__srca, __dst, 0x1C8uLL);
  __srca[57] = v8;
  __srca[58] = MEMORY[0x1E69E7CC0];
  __srca[59] = v9;
  memcpy(v13, __dst, sizeof(v13));
  v14 = v8;
  v15 = MEMORY[0x1E69E7CC0];
  v16 = v9;
  sub_1AADADDF8(__srca, v11);
  sub_1AAD9A9C8(v13);
  return memcpy(a1, __srca, 0x1E0uLL);
}

__n128 sub_1AADADE3C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1AADADE58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AADADEA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AADADF18(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 480))
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

uint64_t sub_1AADADF60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 472) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 480) = 1;
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

    *(result + 480) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AADAE02C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1AADAE074(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1AADAE0D0(uint64_t a1, char a2, char *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1AACE8B84(a3);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v16 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AAD93B78();
        v10 = v16;
      }

      v11 = *(v10 + 48);
      v12 = type metadata accessor for CalendarCache.Key(0);
      sub_1AADB3134(v11 + *(*(v12 - 8) + 72) * v8, type metadata accessor for CalendarCache.Key);
      sub_1AAD919A8(v8, v10);
      result = sub_1AADB3134(a3, type metadata accessor for CalendarCache.Key);
      *v4 = v10;
    }

    else
    {
      return sub_1AADB3134(a3, type metadata accessor for CalendarCache.Key);
    }
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1AADD20A8(a1, a3, v15);
    result = sub_1AADB3134(a3, type metadata accessor for CalendarCache.Key);
    *v3 = v17;
  }

  return result;
}

void sub_1AADAE214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 16);
    v9[0] = *a1;
    v9[1] = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1AADD2208(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1AAD9DF94(a1, &qword_1EB4246A0, &type metadata for _Chart3DResolvedSurfaceStyle);
    sub_1AAD72828(v9, a2, a3);

    sub_1AAD9DF94(v9, &qword_1EB4246A0, &type metadata for _Chart3DResolvedSurfaceStyle);
  }
}

double sub_1AADAE2E4(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1AADB0964(a3, MEMORY[0x1E6981500], sub_1AADB1460);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v15 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AAD9445C();
        v10 = v15;
      }

      sub_1AAD91F68(v8, v10, v11);

      *v4 = v10;
    }

    else
    {
    }
  }

  else
  {
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_1AADD2388(a1, a3, v14);

    *v3 = v16;
  }

  return result;
}

uint64_t sub_1AADAE404(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1AACED27C(a3);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v21 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AAD951A4();
        v10 = v21;
      }

      v11 = *(v10 + 48);
      v12 = sub_1AAF8CBA4();
      v13 = *(v12 - 8);
      v14 = *(v13 + 8);
      v14(v11 + *(v13 + 72) * v8, v12);
      sub_1AAD92A64(v8, v10);
      result = (v14)(a3, v12);
      *v4 = v10;
    }

    else
    {
      v19 = sub_1AAF8CBA4();
      v20 = *(*(v19 - 8) + 8);

      return v20(a3, v19);
    }
  }

  else
  {
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_1AADD27B0(a1, a3, v17);
    v18 = sub_1AAF8CBA4();
    result = (*(*(v18 - 8) + 8))(a3, v18);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1AADAE5B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1AADAF800(0, &qword_1ED9B0F08, type metadata accessor for ChartContentRenderContext.Bins);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for ChartContentRenderContext.Bins(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_1AADB3240(a1, &qword_1ED9B0F08, type metadata accessor for ChartContentRenderContext.Bins);
    v14 = sub_1AACC147C(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v23 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AAD975B8();
        v18 = v23;
      }

      sub_1AADB329C(*(v18 + 56) + *(v10 + 72) * v16, v8, type metadata accessor for ChartContentRenderContext.Bins);
      sub_1AAD93234(v16, v18, v19);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1AADB3240(v8, &qword_1ED9B0F08, type metadata accessor for ChartContentRenderContext.Bins);
  }

  else
  {
    sub_1AADB329C(a1, v13, type metadata accessor for ChartContentRenderContext.Bins);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    result = sub_1AADD351C(v13, a2, v20);
    *v3 = v23;
  }

  return result;
}

uint64_t sub_1AADAE834(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1AADAF800(0, &qword_1EB4246C0, type metadata accessor for ChartAccessibilityContent.Builder.Bins);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for ChartAccessibilityContent.Builder.Bins(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_1AADB3240(a1, &qword_1EB4246C0, type metadata accessor for ChartAccessibilityContent.Builder.Bins);
    v14 = sub_1AACC147C(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v23 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AAD98EC4();
        v18 = v23;
      }

      sub_1AADB329C(*(v18 + 56) + *(v10 + 72) * v16, v8, type metadata accessor for ChartAccessibilityContent.Builder.Bins);
      sub_1AAD937D4(v16, v18, v19);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1AADB3240(v8, &qword_1EB4246C0, type metadata accessor for ChartAccessibilityContent.Builder.Bins);
  }

  else
  {
    sub_1AADB329C(a1, v13, type metadata accessor for ChartAccessibilityContent.Builder.Bins);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    result = sub_1AADD3E4C(v13, a2, v20);
    *v3 = v23;
  }

  return result;
}

unint64_t sub_1AADAEAB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  if (*(a1 + 40) == 255)
  {
    sub_1AAD9DF94(a1, qword_1ED9B4010, &type metadata for AnyFormatStyle);
    v8 = sub_1AACC147C(v4);
    if (v9)
    {
      v10 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v17 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AAD99120();
        v12 = v17;
      }

      v13 = (*(v12 + 56) + 48 * v10);
      v14 = *(v13 + 25);
      v15 = v13[1];
      *v18 = *v13;
      *&v18[16] = v15;
      *&v18[25] = v14;
      sub_1AAD939C4(v10, v12, *&v14);
      *v3 = v12;
    }

    else
    {
      memset(v18, 0, 40);
      v18[40] = -1;
    }

    return sub_1AAD9DF94(v18, qword_1ED9B4010, &type metadata for AnyFormatStyle);
  }

  else
  {
    v5 = *(a1 + 16);
    *v18 = *a1;
    *&v18[16] = v5;
    *&v18[25] = *(a1 + 25);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_1AADD3FA8(v18, v4, v6);
    *v2 = v16;
  }

  return result;
}

void *sub_1AADAEBD8()
{
  type metadata accessor for MetalEnvironment();
  swift_allocObject();
  result = sub_1AADAEC14();
  qword_1EB432078 = result;
  return result;
}

void *sub_1AADAEC14()
{
  v1 = v0;
  v2 = MTLCreateSystemDefaultDevice();
  if (v2)
  {
    *(v0 + 16) = v2;
  }

  else
  {
    if (qword_1ED9B59F0 != -1)
    {
      swift_once();
    }

    v3 = qword_1ED9C36C8;
    v4 = sub_1AAF8FD04();
    sub_1AAD0D380(0, &qword_1ED9AEE70, &qword_1ED9AEE60, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1AAF92AB0;
    sub_1AAF900D4();
    MEMORY[0x1AC5982F0](0xD000000000000047, 0x80000001AAFCDEB0);
    v6 = MTLCopyAllDevices();
    v7 = sub_1AADB3304();
    v8 = sub_1AAF8F834();

    v9 = MEMORY[0x1AC598460](v8, v7);
    v11 = v10;

    MEMORY[0x1AC5982F0](v9, v11);

    *(v5 + 56) = MEMORY[0x1E69E6158];
    *(v5 + 64) = sub_1AAD6E644();
    *(v5 + 32) = 0;
    *(v5 + 40) = 0xE000000000000000;
    sub_1AAF8D7B4(v4, &dword_1AACA8000, v3, "%s", 0);

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

uint64_t sub_1AADAEE30()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_1AADAEE68()
{
  result = sub_1AADF6E30(MEMORY[0x1E69E7CC0]);
  off_1EB4245F8 = result;
  return result;
}

double BasicChart3DSurfaceStyle._resolve(in:)@<D0>(uint64_t *a1@<X8>)
{
  v60 = a1;
  v2 = sub_1AAF8D4F4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v56 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1AAF8D484();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v53 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADAF800(0, &qword_1EB424600, MEMORY[0x1E697A490]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v52 = &v46 - v7;
  v8 = sub_1AAF8D4C4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1AAF8D524();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1AAF8CE04();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v48 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADAF800(0, &qword_1EB424608, MEMORY[0x1E697A1E0]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v47 = &v46 - v13;
  v14 = sub_1AAF8CE24();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v46 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1AAF8F044();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  if (qword_1EB422B50 != -1)
  {
    swift_once();
  }

  if (v18)
  {
    v19 = 0x6142746867696568;
  }

  else
  {
    v19 = 0x61426C616D726F6ELL;
  }

  swift_beginAccess();
  v20 = off_1EB4245F8;
  if (*(off_1EB4245F8 + 2))
  {
    v21 = sub_1AADB05C0(v19, 0xEB00000000646573);
    v23 = v22;

    if (v23)
    {
      sub_1AAD9BDF8(v20[7] + 32 * v21, &v63);
      v67 = v63;
      v68 = v64;
      goto LABEL_11;
    }
  }

  else
  {
  }

  swift_endAccess();
  sub_1AADAF854(v18, &v67);
  sub_1AAD9BDF8(&v67, &v63);
  swift_beginAccess();
  sub_1AADAE214(&v63, v19, 0xEB00000000646573);
LABEL_11:
  swift_endAccess();
  if (v18)
  {
    sub_1AAF8F034();
    v24 = sub_1AAF8F054();
    (*(v58 + 8))(v17, v59);

    sub_1AAF8F124();
    sub_1AAF8DA24();
    *&v63 = v24;
    *(&v63 + 1) = v69;
    LOBYTE(v64) = v70;
    *(&v64 + 1) = v71;
    LOBYTE(v65) = v72;
    v66 = v73;
    sub_1AADB0638(0);
    swift_allocObject();

    MEMORY[0x1AC5966E0](&v63);
    v25 = sub_1AAF8DA94();

    if (v25)
    {
      sub_1AAF8CE44();
      v26 = *MEMORY[0x1E697A1D0];
      v27 = sub_1AAF8CE34();
      v28 = *(v27 - 8);
      v29 = v47;
      (*(v28 + 104))(v47, v26, v27);
      (*(v28 + 56))(v29, 0, 1, v27);
      (*(v49 + 104))(v48, *MEMORY[0x1E697A1C8], v50);
      v30 = v25;
      sub_1AAF8CE14();
      sub_1AAF8CDF4();

      sub_1AACED220(&v67, v61);
      sub_1AAD45E1C(0, &qword_1EB424650, MEMORY[0x1E697A3C0]);
      swift_dynamicCast();
      v31 = v54;
      v32 = v57;
      swift_dynamicCast();

      v33 = v52;
      sub_1AAF8D3D4();
      v34 = sub_1AAF8D3C4();
      (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
      v35 = [objc_opt_self() whiteColor];
      sub_1AAF8D4B4();
      sub_1AAF8D504();
      sub_1AAF8D464();
      sub_1AAF8D4A4();
      sub_1AAF8D464();
      sub_1AAF8D514();
      *(&v64 + 1) = v32;
      v65 = MEMORY[0x1E697A488];
      v36 = sub_1AACB2508(&v63);
      v37 = v55;
      (*(v55 + 16))(v36, v31, v32);
      sub_1AACAEF68(&v63, v61);
      v38 = v62;
      v39 = sub_1AACBB42C(v61, v62);
      v40 = v60;
      v60[3] = v38;
      v41 = sub_1AACB2508(v40);
      (*(*(v38 - 8) + 16))(v41, v39, v38);

      sub_1AAD9A5F8(&v67);
      sub_1AACB634C(&v63);
      v42 = sub_1AACB634C(v61);
      (*(v37 + 8))(v31, v32, v42);
      return result;
    }
  }

  result = *&v67;
  v44 = v68;
  v45 = v60;
  *v60 = v67;
  *(v45 + 1) = v44;
  return result;
}

void sub_1AADAF800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AAF8FE74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AADAF854(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v38 = a2;
  v3 = sub_1AAF8D5D4();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1AAF8D3F4();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADAF800(0, &qword_1EB4246A8, MEMORY[0x1E697A4C0]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - v9;
  sub_1AADAF800(0, &qword_1EB4246B0, MEMORY[0x1E697A4B8]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v32 - v12;
  sub_1AADAF800(0, &qword_1EB4246B8, MEMORY[0x1E697A4F8]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v32 - v15;
  v17 = sub_1AAF8D524();
  v18 = *(v17 - 8);
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = 0;
  v42 = 0xE000000000000000;
  if (a1)
  {
    v22 = 0x6142746867696568;
  }

  else
  {
    v22 = 0x61426C616D726F6ELL;
  }

  MEMORY[0x1AC5982F0](v22, 0xEB00000000646573, v19);

  v24 = v41;
  v23 = v42;

  v32 = v24;
  sub_1AAF8D404();
  v25 = sub_1AAF8D414();
  if ((*(*(v25 - 8) + 48))(v13, 1, v25) == 1)
  {
    __break(1u);

    (*(v18 + 56))(v16, 1, 1, v17);
    sub_1AADB3240(v16, &qword_1EB4246B8, MEMORY[0x1E697A4F8]);
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_1AAF900D4();
    MEMORY[0x1AC5982F0](0x2720726564616853, 0xE800000000000000);
    MEMORY[0x1AC5982F0](v32, v23);
    MEMORY[0x1AC5982F0](0xD000000000000039, 0x80000001AAFCDE70);
    sub_1AAF902C4();
    __break(1u);
  }

  else
  {
    v26 = sub_1AAF8D434();
    (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
    (*(v33 + 104))(v7, *MEMORY[0x1E697A4B0], v34);
    sub_1AAF8D424();

    (*(v18 + 56))(v16, 0, 1, v17);
    (*(v18 + 32))(v21, v16, v17);
    (*(v36 + 104))(v35, *MEMORY[0x1E697A630], v37);
    sub_1AAF8D3E4();
    v43 = v17;
    v44 = MEMORY[0x1E697A488];
    v27 = sub_1AACB2508(&v41);
    (*(v18 + 16))(v27, v21, v17);
    sub_1AACAEF68(&v41, v39);
    v28 = v40;
    v29 = sub_1AACBB42C(v39, v40);
    v30 = v38;
    v38[3] = v28;
    v31 = sub_1AACB2508(v30);
    (*(*(v28 - 8) + 16))(v31, v29, v28);
    (*(v18 + 8))(v21, v17);
    sub_1AACB634C(&v41);
    sub_1AACB634C(v39);
  }
}

BOOL static BasicChart3DSurfaceStyle.== infix(_:_:)(uint64_t a1, double *a2)
{
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      v4 = *(a1 + 8);
      v5 = *(a1 + 16);
      v6 = a2[1];
      v7 = a2[2];
      v8 = *(a2 + 24);
      v9 = *(a1 + 24);
      if (MEMORY[0x1AC597C80]())
      {
        if (v9)
        {
          if (v8)
          {
            return 1;
          }
        }

        else if ((v8 & 1) == 0 && v4 == v6 && v5 == v7)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return !v3;
}

uint64_t BasicChart3DSurfaceStyle.hash(into:)(uint64_t a1)
{
  if (!*v1)
  {
    return MEMORY[0x1AC5992C0](0);
  }

  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  MEMORY[0x1AC5992C0](1);
  sub_1AAF8F084();
  if (v4)
  {
    return sub_1AAF906B4();
  }

  sub_1AAF906B4();
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1AC5992F0](*&v6);
  if (v2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  return MEMORY[0x1AC5992F0](*&v7);
}

uint64_t BasicChart3DSurfaceStyle.hashValue.getter()
{
  v1 = *v0;
  v3 = v0[1];
  v2 = v0[2];
  v4 = *(v0 + 24);
  sub_1AAF90694();
  if (v1 == 0.0)
  {
    MEMORY[0x1AC5992C0](0);
  }

  else
  {
    MEMORY[0x1AC5992C0](1);
    sub_1AAF8F084();
    if (v4)
    {
      sub_1AAF906B4();
    }

    else
    {
      sub_1AAF906B4();
      if (v3 == 0.0)
      {
        v5 = 0.0;
      }

      else
      {
        v5 = v3;
      }

      MEMORY[0x1AC5992F0](*&v5);
      if (v2 == 0.0)
      {
        v6 = 0.0;
      }

      else
      {
        v6 = v2;
      }

      MEMORY[0x1AC5992F0](*&v6);
    }
  }

  return sub_1AAF906F4();
}

uint64_t sub_1AADB00B0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1AAF90694();
  if (v1 == 0.0)
  {
    MEMORY[0x1AC5992C0](0);
  }

  else
  {
    MEMORY[0x1AC5992C0](1);
    sub_1AAF8F084();
    sub_1AAF906B4();
    if ((v4 & 1) == 0)
    {
      sub_1AADB2B58(v2, v3);
    }
  }

  return sub_1AAF906F4();
}

void sub_1AADB0158(uint64_t a1)
{
  if (*v1)
  {
    v2 = *(v1 + 8);
    v3 = *(v1 + 16);
    v4 = *(v1 + 24);
    MEMORY[0x1AC5992C0](1);
    sub_1AAF8F084();
    sub_1AAF906B4();
    if ((v4 & 1) == 0)
    {
      sub_1AADB2B58(v2, v3);
    }
  }

  else
  {
    MEMORY[0x1AC5992C0](0);
  }
}

uint64_t sub_1AADB01F0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 24);
  sub_1AAF90694();
  if (v2 == 0.0)
  {
    MEMORY[0x1AC5992C0](0);
  }

  else
  {
    MEMORY[0x1AC5992C0](1);
    sub_1AAF8F084();
    sub_1AAF906B4();
    if ((v5 & 1) == 0)
    {
      sub_1AADB2B58(v3, v4);
    }
  }

  return sub_1AAF906F4();
}

BOOL sub_1AADB0294(uint64_t a1, double *a2)
{
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      v4 = *(a1 + 8);
      v5 = *(a1 + 16);
      v6 = a2[1];
      v7 = a2[2];
      v8 = *(a2 + 24);
      v9 = *(a1 + 24);
      if (MEMORY[0x1AC597C80]())
      {
        if (v9)
        {
          if (v8)
          {
            return 1;
          }
        }

        else if ((v8 & 1) == 0 && v4 == v6 && v5 == v7)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return !v3;
}

double static Chart3DSurfaceStyle<>.heightBased.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = qword_1EB4245F0;
  if (!qword_1EB4245F0)
  {
    sub_1AADB8BFC();
    v2 = sub_1AAF8F094();
    qword_1EB4245F0 = v2;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v2;
  *(a1 + 24) = 1;

  return result;
}

double static Chart3DSurfaceStyle<>.heightBased(_:yRange:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;

  return result;
}

double static Chart3DSurfaceStyle<>.heightBased(yRange:)@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = qword_1EB4245F0;
  if (!qword_1EB4245F0)
  {
    sub_1AADB8BFC();
    v6 = sub_1AAF8F094();
    qword_1EB4245F0 = v6;
  }

  *a1 = v6;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;

  return result;
}

void static Chart3DSurfaceStyle<>.normalBased.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

unint64_t sub_1AADB0454(unsigned __int8 *a1)
{
  sub_1AAF90694();
  v2 = a1[2];
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v11 = *(a1 + 6);
  v12 = *(a1 + 5);
  v10 = *(a1 + 7);
  v6 = a1[32];
  v7 = a1[64];
  MEMORY[0x1AC5992C0](*a1);
  sub_1AAF8E7A4();
  sub_1AAF906B4();
  MEMORY[0x1AC5992C0](v2);
  sub_1AAF0A240(v13, v3, v4, v5, v6);
  sub_1AAF04AC0(v13, v12, v11, v10, v7);
  v8 = sub_1AAF906F4();

  return sub_1AADB0F58(a1, v8);
}

unint64_t sub_1AADB0548(double a1)
{
  v2 = sub_1AAF90684();

  return sub_1AADB13F8(v2, a1);
}

unint64_t sub_1AADB05C0(uint64_t a1, uint64_t a2)
{
  sub_1AAF90694();
  sub_1AAF8F6C4();
  v4 = sub_1AAF906F4();

  return sub_1AADB1518(a1, a2, v4);
}

void sub_1AADB0638(uint64_t a1)
{
  if (!qword_1EB424610)
  {
    sub_1AADB069C(255);
    sub_1AADB07B4();
    v1 = sub_1AAF8DAE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB424610);
    }
  }
}

void sub_1AADB069C(uint64_t a1)
{
  if (!qword_1EB424618)
  {
    sub_1AADB06FC(255);
    v1 = sub_1AAF8DF74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB424618);
    }
  }
}

void sub_1AADB06FC(uint64_t a1)
{
  if (!qword_1EB424620)
  {
    sub_1AADB075C();
    v1 = sub_1AAF8DF74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB424620);
    }
  }
}

void sub_1AADB075C()
{
  if (!qword_1EB424628)
  {
    v0 = sub_1AAF8E5F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424628);
    }
  }
}

unint64_t sub_1AADB07B4()
{
  result = qword_1EB424630;
  if (!qword_1EB424630)
  {
    sub_1AADB069C(255);
    sub_1AADB0834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424630);
  }

  return result;
}

unint64_t sub_1AADB0834()
{
  result = qword_1EB424638;
  if (!qword_1EB424638)
  {
    sub_1AADB06FC(255);
    sub_1AADB08E4();
    sub_1AADB31F8(&qword_1EB424648, sub_1AADB075C, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424638);
  }

  return result;
}

unint64_t sub_1AADB08E4()
{
  result = qword_1EB424640;
  if (!qword_1EB424640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424640);
  }

  return result;
}

uint64_t sub_1AADB0964(uint64_t a1, uint64_t (*a2)(void *, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_1AAF90694();
  a2(v8, a1);
  v5 = sub_1AAF906F4();

  return a3(a1, v5);
}

unint64_t sub_1AADB09E4(uint64_t a1, __n128 a2)
{
  v3 = sub_1AAF8FFE4();

  return sub_1AADB1688(a1, v3);
}

unint64_t sub_1AADB0A28(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1AAF90694();
  v8 = sub_1AAF906F4();

  return sub_1AADB1750(a1, a2, a3 & 1, a4, v8);
}

unint64_t sub_1AADB0AA8(uint64_t a1)
{
  sub_1AAF90694();
  sub_1AAE48C88(v4);
  v2 = sub_1AAF906F4();

  return sub_1AADB1870(a1, v2);
}

unint64_t sub_1AADB0B14(uint64_t a1)
{
  sub_1AAF90694();
  sub_1AAE5E610(v4);
  v2 = sub_1AAF906F4();

  return sub_1AADB192C(a1, v2);
}

unint64_t sub_1AADB0B80(double a1, double a2)
{
  sub_1AAF90694();
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a1;
  }

  MEMORY[0x1AC5992F0](*&v4);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x1AC5992F0](*&v5);
  v6 = sub_1AAF906F4();

  return sub_1AADB19F0(v6, a1, a2);
}

unint64_t sub_1AADB0C18(uint64_t *a1)
{
  sub_1AAF90694();
  v2 = sub_1AAF906F4();

  return sub_1AADB1A68(a1, v2);
}

void sub_1AADB0C78(uint64_t a1)
{
  sub_1AAF90694();
  v2 = *(a1 + 16);
  MEMORY[0x1AC5992C0](v2);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      v4 = *(v3 + 112);
      v11[6] = *(v3 + 96);
      v11[7] = v4;
      v11[8] = *(v3 + 128);
      v12 = *(v3 + 144);
      v5 = *(v3 + 48);
      v11[2] = *(v3 + 32);
      v11[3] = v5;
      v6 = *(v3 + 80);
      v11[4] = *(v3 + 64);
      v11[5] = v6;
      v7 = *(v3 + 16);
      v11[0] = *v3;
      v11[1] = v7;
      sub_1AAD81BF4(v11, &v9);
      sub_1AAF70EE0(v10);
      sub_1AAD81C50(v11);
      v3 += 152;
      --v2;
    }

    while (v2);
  }

  v8 = sub_1AAF906F4();
  sub_1AADB1CC8(a1, v8);
}

unint64_t sub_1AADB0D50(__int128 *a1)
{
  sub_1AAF90694();
  sub_1AAF70EE0(v4);
  v2 = sub_1AAF906F4();

  return sub_1AADB1E8C(a1, v2);
}

uint64_t sub_1AADB0DBC(uint64_t *a1)
{
  sub_1AAF90694();
  sub_1AAD7A698(v4, a1[4]);
  sub_1AAF906B4();
  v2 = sub_1AAF906F4();

  return sub_1AADB1F8C(a1, v2);
}

unint64_t sub_1AADB0E38(uint64_t *a1)
{
  sub_1AAF90694();
  v2 = *a1;
  v3 = a1[7];
  if (v3 < 0)
  {
    v16 = a1[9];
    v17 = a1[10];
    v15 = a1[8];
    v5 = a1[5];
    v13 = a1[6];
    v6 = a1[4];
    v8 = a1[1];
    v7 = a1[2];
    v9 = *(a1 + 24);
    v14 = *(a1 + 88);
    MEMORY[0x1AC5992C0](1);
    sub_1AAF04AC0(v18, v2, v8, v7, v9);
    sub_1AAF04AC0(v18, v6, v5, v13, v3);
    sub_1AAF04AC0(v18, v15, v16, v17, v14);
  }

  else
  {
    MEMORY[0x1AC5992C0](0);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1AC5992F0](v4);
  }

  v10 = sub_1AAF906F4();

  return sub_1AADB261C(a1, v10, v11);
}

unint64_t sub_1AADB0F58(double *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    v7 = *a1;
    do
    {
      v8 = *(v2 + 48) + 72 * v4;
      v62 = *v8;
      v10 = *(v8 + 32);
      v9 = *(v8 + 48);
      v11 = *(v8 + 16);
      v66 = *(v8 + 64);
      v64 = v10;
      v65 = v9;
      v63 = v11;
      if (v62 != v7)
      {
        goto LABEL_5;
      }

      sub_1AAD9B9C0(&v62, v56);
      v12 = sub_1AAF8E7A4();
      if (v12 != sub_1AAF8E7A4() || BYTE2(v62) != *(a1 + 2))
      {
        goto LABEL_4;
      }

      v14 = v64;
      v16 = a1[1];
      v15 = a1[2];
      v17 = *(a1 + 3);
      v18 = *(a1 + 32);
      if (v64 < 0)
      {
        if ((v18 & 0x80000000) == 0)
        {
          goto LABEL_4;
        }

        if (*(&v62 + 1) != v16)
        {
          goto LABEL_4;
        }

        v13.n128_u64[0] = v63;
        if (*&v63 != v15 || v17 != BYTE8(v63))
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (v18 < 0)
        {
          goto LABEL_4;
        }

        v13.n128_u64[0] = *(&v62 + 1);
        if (*(&v62 + 1) != v16)
        {
          goto LABEL_4;
        }

        if (*(&v63 + 1))
        {
          if (!v17 || v63 != __PAIR128__(v17, *&v15) && (sub_1AAF904F4() & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        else if (v17)
        {
          goto LABEL_4;
        }

        if (v14 != v18)
        {
          goto LABEL_4;
        }
      }

      v19 = *(&v64 + 1);
      v20 = *(&v65 + 1);
      v21 = a1[5];
      v22 = *(a1 + 6);
      v23 = *(a1 + 7);
      v24 = *(a1 + 64);
      if (v66 > 0xFBu)
      {
        v41 = *(&v64 + 1);
        v44 = *(a1 + 6);
        v47 = v65;
        v50 = *(a1 + 64);
        v54 = v66;
        v25 = *(a1 + 5);
        v26 = *(a1 + 7);
        sub_1AADB3078(*&v21, v22, v23, v24, v13);
        sub_1AADB3024(&v62);
        v27 = v50;
        if (v50 > 0xFB)
        {
          return v4;
        }

        goto LABEL_28;
      }

      if (v24 > 0xFB)
      {
        v41 = *(&v64 + 1);
        v44 = *(a1 + 6);
        v25 = *(a1 + 5);
        v47 = v65;
        v51 = *(a1 + 64);
        v54 = v66;
        v26 = *(a1 + 7);
        sub_1AADB308C(*(&v64 + 1), v65, *(&v65 + 1), v66);
        sub_1AADB3024(&v62);
        v27 = v51;
LABEL_28:
        v56[0] = v41;
        v56[1] = v47;
        v56[2] = v20;
        v57 = v54;
        v58 = v25;
        v59 = v44;
        v60 = v26;
        v61 = v27;
        sub_1AADB3134(v56, sub_1AADB309C);
        goto LABEL_5;
      }

      if ((v66 & 0x80) != 0)
      {
        v42 = a1[5];
        v45 = a1[6];
        v48 = *&v65;
        v30 = v66;
        v53 = *(a1 + 64);
        v39 = *(a1 + 7);
        v31.n128_f64[0] = sub_1AADB3078(*&v21, v22, v23, v24, v13);
        LOBYTE(v55) = v30;
        sub_1AADB3078(v19, v48, v20, v30, v31);
        sub_1AADB3024(&v62);
        if ((v53 & 0x80) == 0)
        {
          v29.n128_f64[0] = sub_1AADB3110(*&v42, *&v45, v39, v53, v29);
          v32 = v19;
          v33 = v48;
          goto LABEL_38;
        }

        v33 = v48;
        v35 = v30;
        v29.n128_u64[0] = v19;
        if (*&v19 != v42)
        {
          v32 = v19;
          v34 = v20;
          goto LABEL_40;
        }

        sub_1AADB3110(v19, v48, v20, v30, v29);
        if (*&v48 == v45 && v39 == v20)
        {
          return v4;
        }
      }

      else
      {
        if ((v24 & 0x80) != 0)
        {
          sub_1AADB308C(*&v21, *(a1 + 6), *(a1 + 7), *(a1 + 64));
LABEL_4:
          sub_1AADB3024(&v62);
          goto LABEL_5;
        }

        v13.n128_u64[0] = *(&v64 + 1);
        if (*(&v64 + 1) != v21)
        {
          goto LABEL_4;
        }

        v28 = v65;
        if (*(&v65 + 1))
        {
          if (!v23)
          {
            goto LABEL_4;
          }

          v52 = *(a1 + 64);
          v55 = v66;
          if (v65 == __PAIR128__(v23, v22))
          {
            sub_1AADB308C(*(&v64 + 1), v65, *(&v65 + 1), v66);
            sub_1AADB3024(&v62);
          }

          else
          {
            v49 = sub_1AAF904F4();
            sub_1AADB308C(v19, v28, v20, v55);
            sub_1AADB3024(&v62);
            if ((v49 & 1) == 0)
            {
              v32 = v19;
              v33 = v28;
LABEL_38:
              v34 = v20;
              goto LABEL_39;
            }
          }
        }

        else
        {
          v43 = *(a1 + 5);
          v46 = *(a1 + 6);
          v52 = *(a1 + 64);
          v55 = v66;
          v40 = *(a1 + 7);
          v36.n128_f64[0] = sub_1AADB3078(*&v21, v22, v23, v24, v13);
          sub_1AADB3078(v19, v28, 0, v55, v36);
          sub_1AADB3024(&v62);
          if (v40)
          {
            v29.n128_f64[0] = sub_1AADB3110(v43, v46, v40, v52, v37);
            v32 = v19;
            v33 = v28;
            v34 = 0;
LABEL_39:
            v35 = v55;
LABEL_40:
            sub_1AADB3110(v32, v33, v34, v35, v29);
            goto LABEL_5;
          }

          v29.n128_f64[0] = sub_1AADB3110(v43, v46, 0, v52, v37);
        }

        sub_1AADB3110(v19, v28, v20, v55, v29);
        if (v55 == v52)
        {
          return v4;
        }
      }

LABEL_5:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1AADB13F8(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1AADB1460(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {

      v6 = sub_1AAF8EC64();

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

unint64_t sub_1AADB1518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1AAF904F4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1AADB15D0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {

      v8 = sub_1AAD79EF4(v7, a1);

      if (v8)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1AADB1688(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1AAD9AB20(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1AC598C20](v9, a1);
      sub_1AAD80E08(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1AADB1750(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    do
    {
      v9 = *(v5 + 48) + 32 * v7;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      sub_1AACD7304(*v9, v11, v12);

      v13 = sub_1AAF8EA14();
      sub_1AAD04750(v10, v11, v12);

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1AADB1870(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = (*(v2 + 48) + 48 * v4);
      v8 = v7[1];
      v10 = *v7;
      v11[0] = v8;
      *(v11 + 9) = *(v7 + 25);
      if (sub_1AAE48ED0(&v10, a1))
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1AADB192C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(v2 + 48) + 72 * v4;
      v8 = *(v7 + 48);
      v11[2] = *(v7 + 32);
      v11[3] = v8;
      v12 = *(v7 + 64);
      v9 = *(v7 + 16);
      v11[0] = *v7;
      v11[1] = v9;
      if (sub_1AAE5E8E0(v11, a1))
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1AADB19F0(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1AADB1A68(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v15 = *(a1 + 49) | ((*(a1 + 53) | (*(a1 + 55) << 16)) << 32);
    do
    {
      v6 = (*(v2 + 48) + (v4 << 6));
      v8 = v6[2];
      v7 = v6[3];
      v9 = v6[1];
      v19[0] = *v6;
      v19[1] = v9;
      v20 = v8;
      v21 = v7;
      if ((((v7 >> 8) | (((DWORD1(v7) >> 8) | (SBYTE7(v7) << 16)) << 32)) & 0x8000000000000000) != 0)
      {
        if ((v15 & 0x8000000000000000) != 0)
        {
          v11 = v20;
          v12 = v21;
          sub_1AACD7304(*&v19[0], *(&v19[0] + 1), v9 & 1);

          sub_1AACD7304(v11, *(&v11 + 1), v12 & 1);

          if (sub_1AAF8EA14())
          {
            v13 = sub_1AAF8EA14();
            sub_1AAD81A30(v19);
            v2 = v16;
            if (v13)
            {
              return v4;
            }
          }

          else
          {
            sub_1AAD81A30(v19);
            v2 = v16;
          }
        }
      }

      else if ((a1[6] & 0x8000000000000000) == 0)
      {
        sub_1AACD7304(*&v19[0], *(&v19[0] + 1), v9 & 1);

        v2 = v16;
        v10 = sub_1AAF8EA14();
        sub_1AAD81A30(v19);
        if (v10)
        {
          return v4;
        }
      }

      v4 = (v4 + 1) & v17;
    }

    while (((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_1AADB1CC8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    v7 = *(a1 + 16);
    v23 = ~v3;
    while (1)
    {
      v8 = *(*(v2 + 48) + 8 * v4);
      if (*(v8 + 16) == v7)
      {
        break;
      }

LABEL_4:
      v4 = (v4 + 1) & v6;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return;
      }
    }

    if (v7 && v8 != a1)
    {

      v9 = 0;
      v10 = 32;
      while (v9 < *(v8 + 16))
      {
        v11 = *(v8 + v10 + 16);
        v25[0] = *(v8 + v10);
        v25[1] = v11;
        v12 = *(v8 + v10 + 32);
        v13 = *(v8 + v10 + 48);
        v14 = *(v8 + v10 + 80);
        v25[4] = *(v8 + v10 + 64);
        v25[5] = v14;
        v25[2] = v12;
        v25[3] = v13;
        v15 = *(v8 + v10 + 96);
        v16 = *(v8 + v10 + 112);
        v17 = *(v8 + v10 + 128);
        v26 = *(v8 + v10 + 144);
        v25[7] = v16;
        v25[8] = v17;
        v25[6] = v15;
        if (v7 == v9)
        {
          goto LABEL_16;
        }

        v18 = *(a1 + v10 + 112);
        v27[6] = *(a1 + v10 + 96);
        v27[7] = v18;
        v27[8] = *(a1 + v10 + 128);
        v28 = *(a1 + v10 + 144);
        v19 = *(a1 + v10 + 48);
        v27[2] = *(a1 + v10 + 32);
        v27[3] = v19;
        v20 = *(a1 + v10 + 80);
        v27[4] = *(a1 + v10 + 64);
        v27[5] = v20;
        v21 = *(a1 + v10 + 16);
        v27[0] = *(a1 + v10);
        v27[1] = v21;
        sub_1AAD81BF4(v25, v24);
        sub_1AAD81BF4(v27, v24);
        v22 = sub_1AAF72168(v25, v27);
        sub_1AAD81C50(v27);
        sub_1AAD81C50(v25);
        if ((v22 & 1) == 0)
        {

          v6 = v23;
          goto LABEL_4;
        }

        ++v9;
        v10 += 152;
        if (v7 == v9)
        {

          return;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
    }
  }
}

unint64_t sub_1AADB1E8C(__int128 *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(v2 + 48) + 152 * v4;
      v8 = *(v7 + 16);
      v18[0] = *v7;
      v18[1] = v8;
      v9 = *(v7 + 80);
      v11 = *(v7 + 32);
      v10 = *(v7 + 48);
      v18[4] = *(v7 + 64);
      v18[5] = v9;
      v18[2] = v11;
      v18[3] = v10;
      v13 = *(v7 + 112);
      v12 = *(v7 + 128);
      v14 = *(v7 + 96);
      v19 = *(v7 + 144);
      v18[7] = v13;
      v18[8] = v12;
      v18[6] = v14;
      sub_1AAD81BF4(v18, v17);
      v15 = sub_1AAF72168(v18, a1);
      sub_1AAD81C50(v18);
      if (v15)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1AADB1F8C(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v37 = ~v4;
    v38 = v3;
    while (1)
    {
      v7 = *(v52 + 48) + 48 * v5;
      v9 = *v7;
      v8 = *(v7 + 8);
      v10 = *(v7 + 16);
      v11 = *(v7 + 32);
      v53 = *(v7 + 40);
      sub_1AACD7304(*v7, v8, v10);

      result = sub_1AAF8EA14();
      if ((result & 1) == 0 || (v49 = v9, v50 = v8, v51 = v10, v13 = a1[4], v14 = *(v11 + 16), v14 != *(v13 + 16)))
      {
        sub_1AAD04750(v9, v8, v10);

        goto LABEL_4;
      }

      if (!v14 || v11 == v13)
      {
        sub_1AAD04750(v9, v8, v10);

LABEL_62:

        if (v53 != (a1[5] & 1))
        {
          goto LABEL_5;
        }

        return v5;
      }

      v39 = v5;
      if (!*(v11 + 16))
      {
LABEL_72:
        __break(1u);
        return result;
      }

      v15 = 0;
      v16 = (v11 + 32);
      v17 = (v13 + 32);
      v43 = v14 - 1;
      v45 = v11;
      while (1)
      {
        v55 = *v16;
        v18 = v16[1];
        v19 = v16[2];
        v20 = v16[4];
        v58 = v16[3];
        v59 = v20;
        v56 = v18;
        v57 = v19;
        v21 = v17[4];
        v23 = v17[1];
        v22 = v17[2];
        v62 = v17[3];
        v63 = v21;
        v60[1] = v23;
        v61 = v22;
        v60[0] = *v17;
        if (v55 != LOBYTE(v60[0]))
        {
          goto LABEL_69;
        }

        v24 = v57;
        v25 = *&v58;
        v26 = BYTE8(v59);
        v47 = v15;
        v48 = *(&v57 + 1);
        if ((*(&v59 + 1) & 0x8000000000000000) != 0)
        {
          break;
        }

        if ((*(&v63 + 1) & 0x8000000000000000) != 0)
        {
          goto LABEL_65;
        }

        v27 = v58;
        v28 = BYTE8(v56);
        v29 = BYTE8(v62);
        v42 = *&v62;
        v44 = *(&v61 + 1);
        sub_1AAD81924(&v55, v54);
        sub_1AAD81924(v60, v54);
        v54[0] = v28 & 1;
        if ((sub_1AAF8EA14() & 1) == 0)
        {
LABEL_64:
          sub_1AAD81980(v60);
          sub_1AAD81980(&v55);
LABEL_65:
          sub_1AAD04750(v49, v50, v51);
LABEL_66:

          v3 = v38;
          v5 = v39;
          v6 = v37;
          goto LABEL_4;
        }

        if (SBYTE8(v27) < 0)
        {
          if ((v29 & 0x80) == 0)
          {
            goto LABEL_64;
          }

          sub_1AAD81980(v60);
          result = sub_1AAD81980(&v55);
          if (BYTE8(v27))
          {
            v34 = v48;
            if ((v29 & 1) == 0)
            {
              goto LABEL_69;
            }
          }

          else
          {
            v34 = v48;
            if (v29)
            {
              goto LABEL_69;
            }
          }

          if (v34 != v44)
          {
            goto LABEL_69;
          }

          v35 = *&v27 == v42;
          goto LABEL_51;
        }

        if (v29 < 0)
        {
          goto LABEL_64;
        }

        if (!BYTE8(v27))
        {
          if (v29)
          {
            goto LABEL_64;
          }

          v30 = v48;
LABEL_43:
          sub_1AAD81980(v60);
          result = sub_1AAD81980(&v55);
          v35 = v30 == v44;
LABEL_51:
          v15 = v47;
          if (!v35)
          {
            goto LABEL_65;
          }

          goto LABEL_57;
        }

        if (BYTE8(v27) == 1)
        {
          if (v29 != 1)
          {
            goto LABEL_64;
          }

          v30 = v48;
          goto LABEL_43;
        }

        if (v29 != 2)
        {
          sub_1AAD81980(v60);
          sub_1AAD81980(&v55);
          sub_1AAD04750(v49, v50, v51);
          goto LABEL_66;
        }

        if (*&v48 == *&v44 && v27 == *&v42)
        {
          sub_1AAD81980(v60);
          result = sub_1AAD81980(&v55);
          v15 = v47;
        }

        else
        {
          v36 = sub_1AAF904F4();
          sub_1AAD81980(v60);
          result = sub_1AAD81980(&v55);
          v15 = v47;
          if ((v36 & 1) == 0)
          {
            goto LABEL_65;
          }
        }

LABEL_57:
        if (v43 == v15)
        {
          sub_1AAD04750(v49, v50, v51);

          v3 = v38;
          v5 = v39;
          v6 = v37;
          goto LABEL_62;
        }

        v16 += 5;
        v17 += 5;
        if (++v15 >= *(v45 + 16))
        {
          goto LABEL_72;
        }
      }

      v31 = BYTE8(v63);
      if ((*(&v63 + 1) & 0x8000000000000000) == 0 || *(v60 + 1) != *(&v55 + 1))
      {
        goto LABEL_65;
      }

      v32 = *(&v58 + 1);
      v33 = v62;
      v40 = v63;
      v41 = v59;
      sub_1AAD81924(&v55, v54);
      sub_1AAD81924(v60, v54);
      v54[0] = v24 & 1;
      if ((sub_1AAF8EA14() & 1) == 0)
      {
        goto LABEL_64;
      }

      if ((v26 & 0x80) == 0)
      {
        break;
      }

      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_64;
      }

      if (v25 == *&v33)
      {
        sub_1AAD81980(v60);
        result = sub_1AAD81980(&v55);
        if (v32 != *(&v33 + 1))
        {
          goto LABEL_69;
        }

        v35 = (v40 ^ v41) == 0;
        goto LABEL_51;
      }

      sub_1AAD81980(v60);
      sub_1AAD81980(&v55);
LABEL_69:
      sub_1AAD04750(v49, v50, v51);

      v3 = v38;
      v5 = v39;
      v6 = v37;
LABEL_4:

LABEL_5:
      v5 = (v5 + 1) & v6;
      if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        return v5;
      }
    }

    if (v31 < 0 || v25 != *&v33)
    {
      goto LABEL_64;
    }

    if (v41)
    {
      if (!v40 || __PAIR128__(v41, *&v32) != __PAIR128__(v40, *(&v33 + 1)) && (sub_1AAF904F4() & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    else if (v40)
    {
      goto LABEL_64;
    }

    sub_1AAD81980(v60);
    result = sub_1AAD81980(&v55);
    if (((v31 ^ v26) & 0x7F) != 0)
    {
      goto LABEL_65;
    }

    goto LABEL_57;
  }

  return v5;
}

unint64_t sub_1AADB261C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a2 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v8 = ~v5;
    v77 = ~v5;
    do
    {
      v10 = *(v3 + 48) + 96 * v6;
      v11 = *v10;
      v12 = *(v10 + 56);
      if (v12 < 0)
      {
        v9 = *(a1 + 56);
        if ((v9 & 0x8000000000000000) == 0)
        {
          goto LABEL_4;
        }

        v14 = *(v10 + 8);
        v13 = *(v10 + 16);
        v15 = *(v10 + 24);
        v17 = *(v10 + 40);
        v16 = *(v10 + 48);
        v18 = *(v10 + 64);
        v19 = *(v10 + 72);
        v20 = *(v10 + 80);
        v21 = *(v10 + 88);
        v23 = *a1;
        v22 = *(a1 + 8);
        v24 = *(a1 + 40);
        v78 = *(a1 + 32);
        v79 = *(v10 + 32);
        v25 = *(a1 + 48);
        v26 = *(a1 + 64);
        v27 = *(a1 + 72);
        v28 = *(a1 + 80);
        v29 = *(a1 + 88);
        v31 = *(a1 + 16);
        v30 = *(a1 + 24);
        if (v15 <= 0xFBu)
        {
          if (*(a1 + 24) > 0xFBu)
          {
LABEL_17:
            v80 = *v10;
            v81 = v14;
            v82 = v13;
            v83 = v15;
            v84 = v23;
            v85 = v22;
            v86 = v31;
            v87 = v30;
            v32.n128_f64[0] = sub_1AADB3078(v11, v14, v13, v15, a3);
            v33 = *&v23;
            v34 = *&v22;
            v35 = v31;
            v36 = v30;
LABEL_29:
            sub_1AADB3078(v33, v34, v35, v36, v32);
            sub_1AADB3134(&v80, sub_1AADB309C);
            v8 = v77;
            v4 = v3 + 64;
            goto LABEL_4;
          }

          if ((v15 & 0x80) != 0)
          {
            if ((v30 & 0x80) == 0)
            {
              goto LABEL_4;
            }

            a3.n128_u64[0] = *(v10 + 8);
            v38 = (v31 ^ v13);
            v39 = *&v11 == v23 && *&v14 == v22;
            if (!v39 || v38 != 0)
            {
              goto LABEL_4;
            }
          }

          else
          {
            if ((v30 & 0x80) != 0)
            {
              goto LABEL_4;
            }

            a3.n128_u64[0] = *v10;
            if (*&v11 != v23)
            {
              goto LABEL_4;
            }

            if (v13)
            {
              if (!v31)
              {
                goto LABEL_4;
              }

              if (v14 == *&v22 && v13 == v31)
              {
                if (((v30 ^ v15) & 0x7F) != 0)
                {
                  goto LABEL_4;
                }
              }

              else
              {
                v73 = *(v10 + 72);
                v75 = *(v10 + 64);
                v70 = *(v10 + 80);
                v71 = *(a1 + 64);
                v69 = *(v10 + 88);
                v51 = *(a1 + 88);
                v67 = *(a1 + 80);
                v68 = *(a1 + 48);
                v52 = *(a1 + 72);
                v53 = *(v10 + 48);
                v66 = *(v10 + 40);
                v54 = sub_1AAF904F4();
                v17 = v66;
                v28 = v67;
                v25 = v68;
                v26 = v71;
                v19 = v73;
                v8 = v77;
                v4 = v3 + 64;
                v20 = v70;
                v21 = v69;
                v55 = v54;
                v18 = v75;
                if ((v55 & 1) == 0)
                {
                  goto LABEL_4;
                }

                v16 = v53;
                v27 = v52;
                v29 = v51;
                if (((v30 ^ v15) & 0x7F) != 0)
                {
                  goto LABEL_4;
                }
              }
            }

            else if (v31 | (v30 ^ v15) & 0x7F)
            {
              goto LABEL_4;
            }
          }
        }

        else if (*(a1 + 24) <= 0xFBu)
        {
          goto LABEL_17;
        }

        if (v12 <= 0xFBu)
        {
          if (v9 > 0xFBu)
          {
LABEL_28:
            v80 = *&v79;
            v81 = v17;
            v82 = v16;
            v83 = v12;
            v84 = v78;
            v85 = v24;
            v86 = v25;
            v87 = v9;
            v37 = v25;
            v32.n128_f64[0] = sub_1AADB3078(v79, v17, v16, v12, a3);
            v33 = *&v78;
            v34 = *&v24;
            v35 = v37;
            v36 = v9;
            goto LABEL_29;
          }

          if ((v12 & 0x80) != 0)
          {
            if ((v9 & 0x80) == 0)
            {
              goto LABEL_4;
            }

            a3.n128_u64[0] = v17;
            v46 = *&v79 == v78 && *&v17 == v24;
            if (!v46 || (v25 ^ v16) != 0)
            {
              goto LABEL_4;
            }
          }

          else
          {
            if ((v9 & 0x80) != 0)
            {
              goto LABEL_4;
            }

            a3.n128_u64[0] = v79;
            if (*&v79 != v78)
            {
              goto LABEL_4;
            }

            if (v16)
            {
              if (!v25)
              {
                goto LABEL_4;
              }

              if (v17 == *&v24 && v16 == v25)
              {
                if (((v9 ^ v12) & 0x7F) != 0)
                {
                  goto LABEL_4;
                }
              }

              else
              {
                v74 = v19;
                v76 = v18;
                v58 = v20;
                v59 = v21;
                v72 = v26;
                v60 = v29;
                v61 = v28;
                v62 = v27;
                v63 = sub_1AAF904F4();
                v26 = v72;
                v19 = v74;
                v8 = v77;
                v4 = v3 + 64;
                v64 = v63;
                v18 = v76;
                if (((v9 ^ v12) & 0x7F) != 0)
                {
                  goto LABEL_4;
                }

                v27 = v62;
                v28 = v61;
                v29 = v60;
                v20 = v58;
                v21 = v59;
                if ((v64 & 1) == 0)
                {
                  goto LABEL_4;
                }
              }
            }

            else if ((v9 ^ v12) & 0x7F | v25)
            {
              goto LABEL_4;
            }
          }
        }

        else if (v9 <= 0xFBu)
        {
          goto LABEL_28;
        }

        if (v21 > 0xFB)
        {
          if (v29 > 0xFB)
          {
            return v6;
          }

LABEL_50:
          v80 = *&v18;
          v81 = v19;
          v82 = v20;
          v83 = v21;
          v84 = v26;
          v85 = v27;
          v86 = v28;
          v87 = v29;
          v41 = v29;
          v42 = v28;
          v43 = *&v27;
          v44 = *&v26;
          v45.n128_f64[0] = sub_1AADB3078(v18, v19, v20, v21, a3);
          sub_1AADB3078(v44, v43, v42, v41, v45);
          sub_1AADB3134(&v80, sub_1AADB309C);
          v8 = v77;
          v4 = v3 + 64;
          goto LABEL_4;
        }

        if (v29 > 0xFB)
        {
          goto LABEL_50;
        }

        if ((v21 & 0x80) != 0)
        {
          v8 = v77;
          v4 = v3 + 64;
          if ((v29 & 0x80) != 0)
          {
            a3.n128_u64[0] = v19;
            v56 = *&v18 == v26 && *&v19 == v27;
            if (v56 && (v28 ^ v20) == 0)
            {
              return v6;
            }
          }
        }

        else
        {
          v8 = v77;
          v4 = v3 + 64;
          if ((v29 & 0x80) != 0)
          {
            goto LABEL_4;
          }

          a3.n128_u64[0] = v18;
          if (*&v18 != v26)
          {
            goto LABEL_4;
          }

          if (!v20)
          {
            if (v28)
            {
              goto LABEL_4;
            }

LABEL_92:
            if (v21 == v29)
            {
              return v6;
            }

            goto LABEL_4;
          }

          if (!v28)
          {
            goto LABEL_4;
          }

          if (v19 == *&v27 && v20 == v28)
          {
            goto LABEL_92;
          }

          v48 = v21;
          v49 = v29;
          v50 = sub_1AAF904F4();
          v8 = v77;
          v4 = v3 + 64;
          if ((v50 & 1) != 0 && v48 == v49)
          {
            return v6;
          }
        }
      }

      else if ((*(a1 + 56) & 0x8000000000000000) == 0)
      {
        a3.n128_u64[0] = *a1;
        if (*a1 == *&v11)
        {
          return v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v8;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_1AADB2B58(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1AC5992F0](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1AC5992F0](*&v3);
}

BOOL sub_1AADB2BA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (!a1)
  {
    return !a5;
  }

  if (!a5)
  {
    return 0;
  }

  if ((MEMORY[0x1AC597C80]() & 1) == 0)
  {
    return 0;
  }

  if ((a4 & 1) == 0)
  {
    return (a8 & 1) == 0 && *&a2 == *&a6 && *&a3 == *&a7;
  }

  return (a8 & 1) != 0;
}

unint64_t sub_1AADB2C5C(uint64_t a1)
{
  result = sub_1AADB2C84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AADB2C84()
{
  result = qword_1EB424658;
  if (!qword_1EB424658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424658);
  }

  return result;
}

unint64_t sub_1AADB2CDC()
{
  result = qword_1EB424660;
  if (!qword_1EB424660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424660);
  }

  return result;
}

__n128 sub_1AADB2D54(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1AADB2D68(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1AADB2DC4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1AADB2E50(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AADB2EA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
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

uint64_t sub_1AADB2EFC(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_1AADB2F34()
{
  result = qword_1EB424668;
  if (!qword_1EB424668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424668);
  }

  return result;
}

uint64_t sub_1AADB2F88(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 <= 0xFBu)
  {
    return sub_1AAD0E818(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1AADB2F9C(uint64_t a1)
{
  sub_1AAD0D380(0, &unk_1EB424678, &qword_1ED9B37E0, &protocol descriptor for ParameterSignalContainable, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1AADB3078(uint64_t result, uint64_t a2, uint64_t a3, char a4, __n128 a5)
{
  if (a4 <= 0xFBu)
  {
    return sub_1AADB308C(result, a2, a3, a4);
  }

  return v5;
}

double sub_1AADB308C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 0x80) == 0)
  {
  }

  return result;
}

void sub_1AADB309C(uint64_t a1)
{
  if (!qword_1EB424688)
  {
    sub_1AACB1BC0(255, &unk_1EB424690, &type metadata for AnyPlottableValueV2.Storage);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB424688);
    }
  }
}

double sub_1AADB3110(uint64_t result, uint64_t a2, uint64_t a3, char a4, __n128 a5)
{
  if (a4 <= 0xFBu)
  {
    return sub_1AADB3124(result, a2, a3, a4);
  }

  return v5;
}

double sub_1AADB3124(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 0x80) == 0)
  {
  }

  return result;
}

uint64_t sub_1AADB3134(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AADB3194(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarCache.Key(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AADB31F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1AADB3240(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1AADAF800(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AADB329C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1AADB3304()
{
  result = qword_1EB4246C8;
  if (!qword_1EB4246C8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB4246C8);
  }

  return result;
}

uint64_t sub_1AADB3374()
{
  v0 = MEMORY[0x1E69E7CC0];
  v1 = sub_1AADF6D50(MEMORY[0x1E69E7CC0]);
  sub_1AADB89A8(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AAF977C0;
  *(v2 + 32) = v0;
  *(v2 + 40) = -1;
  *(v2 + 48) = -1;
  *(v2 + 56) = v1;
  swift_beginAccess();
  pthread_key_create((v2 + 16), sub_1AAF8AEF0);
  result = swift_endAccess();
  off_1EB4246D0 = v2;
  return result;
}

double sub_1AADB3424@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a5@<D1>)
{
  v8 = *(a1 + 8);
  sub_1AAF8F124();
  sub_1AAF8DA24();
  *&v10[6] = v11;
  *&v10[22] = v12;
  *&v10[38] = v13;
  *(a3 + 10) = *v10;
  *a3 = a2;
  *(a3 + 8) = 256;
  *(a3 + 26) = *&v10[16];
  *(a3 + 42) = *&v10[32];
  *(a3 + 56) = *(&v13 + 1);
  *(a3 + 64) = v8;
  *(a3 + 72) = a5 * 0.5;

  return result;
}

double sub_1AADB34F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = *(a1 + 8);
  sub_1AAF8F124();
  sub_1AAF8DA24();
  *&v10[6] = v11;
  *&v10[22] = v12;
  *&v10[38] = v13;
  *(a3 + 10) = *v10;
  *a3 = a2;
  *(a3 + 8) = 256;
  *(a3 + 26) = *&v10[16];
  *(a3 + 42) = *&v10[32];
  *(a3 + 56) = *(&v13 + 1);
  *(a3 + 64) = a4 * 0.5;
  *(a3 + 72) = v8;

  return result;
}

void sub_1AADB35BC(uint64_t a1@<X0>, const void *a2@<X1>, double a3@<X2>, int a4@<W3>, double a5@<X4>, int a6@<W5>, double *a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v395 = a8;
  v396 = a3;
  v361 = a7;
  v419 = a6;
  v397 = a5;
  v418 = a4;
  v387 = a2;
  v415 = a1;
  v421 = a9;
  v382 = sub_1AAF8D454();
  v380 = *(v382 - 8);
  MEMORY[0x1EEE9AC00](v382);
  v379 = v356 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E6720];
  sub_1AADB6684(0, &qword_1EB4246D8, MEMORY[0x1E697A4D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v356 - v13;
  v374 = sub_1AAF8D484();
  v372 = *(v374 - 8);
  MEMORY[0x1EEE9AC00](v374);
  v375 = v356 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADB6684(0, &qword_1EB424600, MEMORY[0x1E697A490], v11);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v371 = v356 - v17;
  sub_1AADB6684(0, &qword_1EB4246E0, MEMORY[0x1E697A4F0], v11);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v370 = v356 - v19;
  v20 = sub_1AAF8D4F4();
  v367 = *(v20 - 8);
  v368 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v369 = v356 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v373 = sub_1AAF8D524();
  v377 = *(v373 - 8);
  MEMORY[0x1EEE9AC00](v373);
  v23 = v356 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADB66E8(0);
  v388 = *(v24 - 8);
  v389 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v360 = v356 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADB6684(0, &qword_1EB424718, sub_1AADB66E8, v11);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v384 = v356 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v381 = v356 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v398 = v356 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v403 = v356 - v33;
  sub_1AADB6950(0);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v385 = v356 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v417 = (v356 - v37);
  v414 = sub_1AAF8D5B4();
  v406 = *(v414 - 8);
  MEMORY[0x1EEE9AC00](v414);
  v394 = v356 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1AAF8CE04();
  v391 = *(v39 - 8);
  v392 = v39;
  MEMORY[0x1EEE9AC00](v39);
  v393 = v356 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADB6684(0, &qword_1EB424608, MEMORY[0x1E697A1E0], v11);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v390 = v356 - v42;
  v43 = sub_1AAF8CE24();
  MEMORY[0x1EEE9AC00](v43 - 8);
  v383 = v356 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v364 = v356 - v46;
  v47 = sub_1AAF8D5D4();
  v401 = *(v47 - 8);
  v402 = v47;
  MEMORY[0x1EEE9AC00](v47);
  v400 = v356 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1AAF8D694();
  MEMORY[0x1EEE9AC00](v49 - 8);
  v399 = v356 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1AAF8D624();
  v410 = *(v51 - 8);
  v411 = v51;
  MEMORY[0x1EEE9AC00](v51);
  v409 = v356 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADB6684(0, &qword_1EB424750, MEMORY[0x1E697A6F0], v11);
  MEMORY[0x1EEE9AC00](v53 - 8);
  v55 = v356 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v366 = v356 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v357 = v356 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v359 = v356 - v61;
  v62 = sub_1AAF8D654();
  v63 = *(v62 - 8);
  v407 = v62;
  v408 = v63;
  MEMORY[0x1EEE9AC00](v62);
  v386 = v356 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v365 = v356 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v356[1] = v356 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v358 = v356 - v70;
  sub_1AADB6684(0, &qword_1EB424758, MEMORY[0x1E697A538], v11);
  MEMORY[0x1EEE9AC00](v71 - 8);
  v420 = v356 - v72;
  sub_1AADB6684(0, &qword_1EB424760, MEMORY[0x1E697A720], v11);
  MEMORY[0x1EEE9AC00](v73 - 8);
  v378 = v356 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75);
  v77 = (v356 - v76);
  MEMORY[0x1EEE9AC00](v78);
  v80 = v356 - v79;
  MEMORY[0x1EEE9AC00](v81);
  v83 = v356 - v82;
  v84 = sub_1AAF8D6C4();
  v85 = *(v84 - 8);
  v404 = v84;
  v405 = v85;
  MEMORY[0x1EEE9AC00](v84);
  v376 = v356 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v87);
  v363 = v356 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v356[0] = v356 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v93 = v356 - v92;
  v94 = sub_1AAF8D704();
  v95 = *(v94 - 8);
  v412 = v94;
  v413 = v95;
  MEMORY[0x1EEE9AC00](v94);
  v416 = v356 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v97);
  v99 = v356 - v98;
  MEMORY[0x1EEE9AC00](v100);
  v362 = v356 - v101;
  MEMORY[0x1EEE9AC00](v102);
  v104 = v356 - v103;
  sub_1AADB6B90(v415, v427);
  if (v428 > 1u)
  {
    if (v428 != 2)
    {
      v182 = v14;
      sub_1AACBB198(v427, v435);
      v183 = *(&v435[1] + 1);
      v184 = *&v435[2];
      sub_1AACBB42C(v435, *(&v435[1] + 1));
      (*(v184 + 16))(&v429, v395, v183, v184);
      sub_1AACED220(&v429, &v422);
      sub_1AADACA00();
      swift_dynamicCast();
      v185 = v23;
      v186 = v373;
      swift_dynamicCast();
      if (v418)
      {
        v188 = v367;
        v187 = v368;
        v189 = v370;
        (*(v367 + 56))(v370, 1, 1, v368);
        sub_1AAF8D464();
        v190 = (*(v188 + 48))(v189, 1, v187);
        v191 = v421;
        v192 = v375;
        if (v190 != 1)
        {
          sub_1AADB6D8C(v189, &qword_1EB4246E0, MEMORY[0x1E697A4F0]);
        }
      }

      else
      {
        v240 = sub_1AAF8D3C4();
        (*(*(v240 - 8) + 56))(v371, 1, 1, v240);
        v241 = v370;
        sub_1AAF8D474();
        v243 = v367;
        v242 = v368;
        (*(v367 + 56))(v241, 0, 1, v368);
        (*(v243 + 32))(v369, v241, v242);
        v191 = v421;
        v192 = v375;
      }

      sub_1AAF8D514();
      if (v419)
      {
        v244 = v372;
        v245 = v182;
        v246 = v182;
        v247 = v374;
        (*(v372 + 56))(v246, 1, 1, v374);
        sub_1AAF8D464();
        if ((*(v244 + 48))(v245, 1, v247) != 1)
        {
          sub_1AADB6D8C(v245, &qword_1EB4246D8, MEMORY[0x1E697A4D0]);
        }
      }

      else
      {
        v248 = sub_1AAF8D3C4();
        (*(*(v248 - 8) + 56))(v371, 1, 1, v248);
        v249 = v182;
        sub_1AAF8D474();
        v250 = v372;
        v251 = v182;
        v252 = v374;
        (*(v372 + 56))(v251, 0, 1, v374);
        (*(v250 + 32))(v192, v249, v252);
      }

      sub_1AAF8D4A4();
      v253 = v379;
      sub_1AAF8D444();
      (*(v380 + 104))(v253, *MEMORY[0x1E697A4C8], v382);
      sub_1AAF8D494();
      *(&v434[1] + 1) = v186;
      *&v434[2] = MEMORY[0x1E697A488];
      v254 = sub_1AACB2508(v434);
      v255 = v377;
      (*(v377 + 16))(v254, v185, v186);
      sub_1AACAEF68(v434, &v422);
      v256 = *(&v423 + 1);
      v257 = sub_1AACBB42C(&v422, *(&v423 + 1));
      v191[3] = v256;
      v258 = sub_1AACB2508(v191);
      (*(*(v256 - 8) + 16))(v258, v257, v256);
      sub_1AAD9A5F8(&v429);
      sub_1AACB634C(v434);
      v259 = sub_1AACB634C(&v422);
      (*(v255 + 8))(v185, v186, v259);
      v260 = v435;
      goto LABEL_51;
    }

    v382 = v55;
    v138 = *&v427[0];
    sub_1AAF8D6F4();
    v139 = sub_1AAF8F0B4();
    v140 = v417;
    *v417 = v139;
    v140[1] = v141;
    v395 = sub_1AAF8ED04();
    sub_1AAF8F124();
    sub_1AAF8DA24();
    v380 = v429;
    LODWORD(v379) = BYTE8(v429);
    v377 = v430;
    LODWORD(v375) = v431;
    v373 = v433;
    v374 = v432;
    v142 = v387;
    memcpy(v435, v387, sizeof(v435));
    v143 = sub_1AAD00C24(v435);
    v415 = v138;
    if (v143 == 1 || (v144 = *(&v435[28] + 1), !*(*(&v435[28] + 1) + 16)))
    {
      v159 = v389;
      v162 = *(v388 + 56);
      v162(v403, 1, 1, v389);
    }

    else
    {
      v145 = v361[2];
      v146 = v361[3];
      v147 = v361[4];
      v148 = v361[5];

      sub_1AADB6C84(v142, v434, &qword_1EB424780, &type metadata for Chart3DContours, MEMORY[0x1E69E6720], sub_1AADB8798);
      sub_1AADAD184(v144, v145, v146, v147, v148, 512.0);
      *&v434[0] = v149;
      v150 = swift_allocObject();
      *(v150 + 16) = v395;
      *(v150 + 24) = xmmword_1AAF977D0;
      sub_1AADB8798(0, &qword_1EB4246F0, &type metadata for Chart3DContours.IdentifiableContour, MEMORY[0x1E69E62F8]);
      v152 = v151;
      sub_1AADB67A4(0);
      v154 = v153;
      v155 = sub_1AADB68D4();
      v156 = sub_1AADB8608(&qword_1EB424788, sub_1AADB67A4, sub_1AADB82B8);
      v157 = sub_1AADB8368();

      v158 = v360;
      sub_1AAF8EFD4(v434, sub_1AADB842C, v150, v152, &type metadata for ChartContentID, v154, v155, v156, v157);
      sub_1AADB83BC(v142, &qword_1EB424780, &type metadata for Chart3DContours);
      v160 = v388;
      v159 = v389;
      v161 = v403;
      (*(v388 + 32))(v403, v158, v389);
      v162 = *(v160 + 56);
      v162(v161, 0, 1, v159);
    }

    memcpy(v434, v142, sizeof(v434));
    if (sub_1AAD00C24(v434) == 1 || (v193 = *(&v434[29] + 1), !*(*(&v434[29] + 1) + 16)))
    {
      v211 = 1;
    }

    else
    {
      v194 = v361[12];
      v195 = v361[13];
      v196 = v361[14];
      v197 = v361[15];
      sub_1AADB6C84(v142, &v422, &qword_1EB424780, &type metadata for Chart3DContours, MEMORY[0x1E69E6720], sub_1AADB8798);
      sub_1AADAD184(v193, v194, v195, v196, v197, 512.0);
      *&v422 = v198;
      v199 = swift_allocObject();
      *(v199 + 16) = v395;
      *(v199 + 24) = xmmword_1AAF977E0;
      sub_1AADB8798(0, &qword_1EB4246F0, &type metadata for Chart3DContours.IdentifiableContour, MEMORY[0x1E69E62F8]);
      v201 = v200;
      sub_1AADB67A4(0);
      v203 = v202;
      v204 = sub_1AADB68D4();
      v205 = sub_1AADB8608(&qword_1EB424788, sub_1AADB67A4, sub_1AADB82B8);
      v206 = sub_1AADB8368();

      v207 = v360;
      v208 = v201;
      v209 = v203;
      v210 = v388;
      v159 = v389;
      sub_1AAF8EFD4(&v422, sub_1AADB82AC, v199, v208, &type metadata for ChartContentID, v209, v204, v205, v206);
      sub_1AADB83BC(v142, &qword_1EB424780, &type metadata for Chart3DContours);
      (*(v210 + 32))(v398, v207, v159);
      v211 = 0;
    }

    v212 = v398;
    v162(v398, v211, 1, v159);
    sub_1AADB6BEC(0);
    v214 = v417 + *(v213 + 44);
    v215 = MEMORY[0x1E69E6720];
    v216 = v381;
    sub_1AADB6C84(v403, v381, &qword_1EB424718, sub_1AADB66E8, MEMORY[0x1E69E6720], sub_1AADB6684);
    v217 = v212;
    v218 = v384;
    sub_1AADB6C84(v217, v384, &qword_1EB424718, sub_1AADB66E8, v215, sub_1AADB6684);
    v219 = v380;
    *v214 = v415;
    *(v214 + 1) = v219;
    v214[16] = v379;
    *(v214 + 3) = v377;
    v214[32] = v375;
    v220 = v373;
    *(v214 + 5) = v374;
    *(v214 + 6) = v220;
    sub_1AADB69E4(0);
    v222 = v221;
    sub_1AADB6C84(v216, &v214[*(v221 + 48)], &qword_1EB424718, sub_1AADB66E8, v215, sub_1AADB6684);
    sub_1AADB6C84(v218, &v214[*(v222 + 64)], &qword_1EB424718, sub_1AADB66E8, v215, sub_1AADB6684);

    sub_1AADB6D8C(v398, &qword_1EB424718, sub_1AADB66E8);
    sub_1AADB6D8C(v403, &qword_1EB424718, sub_1AADB66E8);
    sub_1AADB6D8C(v218, &qword_1EB424718, sub_1AADB66E8);
    sub_1AADB6D8C(v216, &qword_1EB424718, sub_1AADB66E8);

    v223 = v385;
    sub_1AADB8A64(v417, v385, sub_1AADB6950);
    sub_1AADB6CF8(0);
    swift_allocObject();
    MEMORY[0x1AC5966E0](v223);
    v224 = sub_1AAF8DA94();

    if (v224)
    {
      sub_1AAF8CE44();
      v225 = *MEMORY[0x1E697A1D0];
      v226 = sub_1AAF8CE34();
      v227 = *(v226 - 8);
      v228 = v390;
      (*(v227 + 104))(v390, v225, v226);
      (*(v227 + 56))(v228, 0, 1, v226);
      (*(v391 + 104))(v393, *MEMORY[0x1E697A1C8], v392);
      v229 = v224;
      sub_1AAF8CE14();
      sub_1AAF8CDF4();
      v230 = v421;
      v231 = v420;
      sub_1AADB8B34(v417, sub_1AADB6950);

      v232 = v394;
      sub_1AAF8D5C4();
      v233 = v406;
      v234 = v414;
      (*(v406 + 16))(v231, v232, v414);
      v235 = *(v233 + 56);
      v235(v231, 0, 1, v234);
      v236 = [objc_opt_self() whiteColor];
      sub_1AAF8D684();
      sub_1AAF8D6D4();

      (*(v233 + 8))(v232, v234);
      if (v418)
      {
        v238 = v404;
        v237 = v405;
        v239 = v378;
        (*(v405 + 56))(v378, 1, 1, v404);
        sub_1AAF8D614();
        if ((*(v237 + 48))(v239, 1, v238) != 1)
        {
          sub_1AADB6D8C(v239, &qword_1EB424760, MEMORY[0x1E697A720]);
        }
      }

      else
      {
        v270 = v396;
        v235(v231, 1, 1, v234);
        v271 = v378;
        MEMORY[0x1AC5962D0](v231, v270);
        v273 = v404;
        v272 = v405;
        (*(v405 + 56))(v271, 0, 1, v404);
        (*(v272 + 32))(v376, v271, v273);
      }

      sub_1AAF8D6E4();
      if (v419)
      {
        v275 = v407;
        v274 = v408;
        v276 = v382;
        (*(v408 + 56))(v382, 1, 1, v407);
        sub_1AAF8D614();
        if ((*(v274 + 48))(v276, 1, v275) != 1)
        {
          sub_1AADB6D8C(v276, &qword_1EB424750, MEMORY[0x1E697A6F0]);
        }
      }

      else
      {
        v287 = v397;
        v235(v231, 1, 1, v414);
        v288 = v382;
        MEMORY[0x1AC596260](v231, v287);
        v290 = v407;
        v289 = v408;
        (*(v408 + 56))(v288, 0, 1, v407);
        (*(v289 + 32))(v386, v288, v290);
      }

      v291 = v416;
      sub_1AAF8D674();
      v292 = v409;
      sub_1AAF8D614();
      (*(v410 + 104))(v292, *MEMORY[0x1E697A6E8], v411);
      sub_1AAF8D664();
      (*(v401 + 104))(v400, *MEMORY[0x1E697A630], v402);
      sub_1AAF8D604();
      v293 = v412;
      *(&v423 + 1) = v412;
      v424 = MEMORY[0x1E697A6A0];
      v294 = sub_1AACB2508(&v422);
      v295 = v413;
      (*(v413 + 16))(v294, v291, v293);
      sub_1AACAEF68(&v422, v425);
      v296 = v426;
      v297 = sub_1AACBB42C(v425, v426);
      v230[3] = v296;
      v298 = sub_1AACB2508(v230);
      (*(*(v296 - 8) + 16))(v298, v297, v296);

      (*(v295 + 8))(v291, v293);
      sub_1AACB634C(&v422);
      v260 = v425;
      goto LABEL_51;
    }

    sub_1AADB8B34(v417, sub_1AADB6950);
LABEL_73:
    sub_1AAF902C4();
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    return;
  }

  if (v428)
  {
    v163 = *&v427[0];
    sub_1AAF8D6F4();

    sub_1AAF8F124();
    sub_1AAF8DA24();
    *&v435[0] = v163;
    *(&v435[0] + 1) = *&v434[0];
    LOBYTE(v435[1]) = BYTE8(v434[0]);
    *(&v435[1] + 1) = *&v434[1];
    LOBYTE(v435[2]) = BYTE8(v434[1]);
    *(&v435[2] + 8) = v434[2];
    sub_1AADB8438(0);
    swift_allocObject();

    MEMORY[0x1AC5966E0](v435);
    v164 = sub_1AAF8DA94();

    if (v164)
    {
      v417 = v77;
      sub_1AAF8CE44();
      v165 = *MEMORY[0x1E697A1D0];
      v166 = sub_1AAF8CE34();
      v167 = *(v166 - 8);
      v168 = v390;
      (*(v167 + 104))(v390, v165, v166);
      (*(v167 + 56))(v168, 0, 1, v166);
      (*(v391 + 104))(v393, *MEMORY[0x1E697A1C8], v392);
      v169 = v164;
      sub_1AAF8CE14();
      sub_1AAF8CDF4();

      swift_bridgeObjectRelease_n();

      v170 = v394;
      sub_1AAF8D5C4();
      v171 = v406;
      v172 = v420;
      v173 = v414;
      (*(v406 + 16))(v420, v170, v414);
      v174 = *(v171 + 56);
      (v174)(v172, 0, 1, v173);
      v175 = [objc_opt_self() whiteColor];
      sub_1AAF8D684();
      sub_1AAF8D6D4();

      (*(v171 + 8))(v170, v173);
      v416 = v174;
      if (v418)
      {
        v177 = v404;
        v176 = v405;
        v178 = v417;
        (*(v405 + 56))(v417, 1, 1, v404);
        sub_1AAF8D614();
        v179 = (*(v176 + 48))(v178, 1, v177);
        v180 = v421;
        v181 = v365;
        if (v179 != 1)
        {
          sub_1AADB6D8C(v178, &qword_1EB424760, MEMORY[0x1E697A720]);
        }
      }

      else
      {
        v261 = v396;
        (v174)(v172, 1, 1, v173);
        v262 = v417;
        MEMORY[0x1AC5962D0](v172, v261);
        v264 = v404;
        v263 = v405;
        (*(v405 + 56))(v262, 0, 1, v404);
        (*(v263 + 32))(v363, v262, v264);
        v180 = v421;
        v181 = v365;
      }

      sub_1AAF8D6E4();
      v265 = v366;
      if (v419)
      {
        v267 = v407;
        v266 = v408;
        (*(v408 + 56))(v366, 1, 1, v407);
        sub_1AAF8D614();
        v268 = (*(v266 + 48))(v265, 1, v267);
        v269 = v412;
        if (v268 != 1)
        {
          sub_1AADB6D8C(v265, &qword_1EB424750, MEMORY[0x1E697A6F0]);
        }
      }

      else
      {
        v277 = v397;
        v278 = v420;
        (v416)(v420, 1, 1, v173);
        MEMORY[0x1AC596260](v278, v277);
        v280 = v407;
        v279 = v408;
        (*(v408 + 56))(v265, 0, 1, v407);
        (*(v279 + 32))(v181, v265, v280);
        v269 = v412;
      }

      sub_1AAF8D674();
      v281 = v409;
      sub_1AAF8D614();
      (*(v410 + 104))(v281, *MEMORY[0x1E697A6E8], v411);
      sub_1AAF8D664();
      (*(v401 + 104))(v400, *MEMORY[0x1E697A630], v402);
      sub_1AAF8D604();
      *(&v435[1] + 1) = v269;
      *&v435[2] = MEMORY[0x1E697A6A0];
      v282 = sub_1AACB2508(v435);
      v283 = v413;
      (*(v413 + 16))(v282, v99, v269);
      sub_1AACAEF68(v435, &v422);
      v284 = *(&v423 + 1);
      v285 = sub_1AACBB42C(&v422, *(&v423 + 1));
      v180[3] = v284;
      v286 = sub_1AACB2508(v180);
      (*(*(v284 - 8) + 16))(v286, v285, v284);
      (*(v283 + 8))(v99, v269);
      sub_1AACB634C(v435);
      v260 = &v422;
LABEL_51:
      sub_1AACB634C(v260);
      return;
    }

    goto LABEL_73;
  }

  v416 = v80;
  v105 = *&v427[0];
  v106 = v421;
  if (qword_1EB422B58 != -1)
  {
    swift_once();
  }

  v107 = off_1EB4246D0;
  swift_beginAccess();
  v108 = *(v107 + 2);

  v109 = pthread_getspecific(v108);
  v110 = v420;
  v417 = v105;
  if (!v109)
  {
    v111 = swift_slowAlloc();
    pthread_setspecific(*(v107 + 2), v111);
    sub_1AADB88C4(0, &qword_1EB4247E0, type metadata accessor for LRUCache);
    *(&v435[1] + 1) = v112;
    v113 = swift_allocObject();
    *&v435[0] = v113;
    v114 = *(v107 + 4);
    v115 = *(v107 + 7);
    v116 = *(v107 + 40);
    *(v113 + 16) = *(v107 + 3);
    *(v113 + 24) = v114;
    *(v113 + 32) = v116;
    *(v113 + 48) = v115;
    sub_1AACED35C(v435, v111);
    v105 = v417;

    v110 = v420;

    v109 = v111;
  }

  sub_1AACED220(v109, &v429);
  sub_1AADB88C4(0, &qword_1EB4247E0, type metadata accessor for LRUCache);
  v117 = v105;
  v119 = v118;
  swift_dynamicCast();
  v120 = v117;
  v121 = v106;
  v122 = v110;
  sub_1AADB6DFC(v120, v434);
  v415 = *(&v435[0] + 1);
  v123 = *&v435[0];
  v398 = *(&v435[1] + 1);
  v403 = *&v435[1];
  v394 = *&v435[2];
  v124 = pthread_getspecific(*(v107 + 2));
  if (!v124)
  {
    v124 = swift_slowAlloc();
    pthread_setspecific(*(v107 + 2), v124);
    v431 = v119;
    v125 = swift_allocObject();
    *&v429 = v125;
    v126 = *(v107 + 4);
    v127 = *(v107 + 7);
    v128 = *(v107 + 40);
    *(v125 + 16) = *(v107 + 3);
    *(v125 + 24) = v126;
    *(v125 + 32) = v128;
    *(v125 + 48) = v127;
    sub_1AACED35C(&v429, v124);
    v121 = v421;

    v122 = v420;
  }

  v431 = v119;
  v129 = swift_allocObject();
  *&v429 = v129;
  v130 = v415;
  v129[2] = v123;
  v129[3] = v130;
  v131 = v398;
  v129[4] = v403;
  v129[5] = v131;
  v129[6] = v394;
  sub_1AACB634C(v124);
  sub_1AACED35C(&v429, v124);

  v132 = v416;
  if (*(&v434[1] + 1))
  {
    v422 = v434[0];
    v423 = v434[1];
    sub_1AACED220(&v422, v434);
    sub_1AADACA00();
    swift_dynamicCast();
    v133 = v412;
    swift_dynamicCast();
    if (v418)
    {
      v135 = v404;
      v134 = v405;
      (*(v405 + 56))(v83, 1, 1, v404);
      sub_1AAF8D614();
      v136 = (*(v134 + 48))(v83, 1, v135);
      v137 = v414;
      if (v136 != 1)
      {
        sub_1AADB6D8C(v83, &qword_1EB424760, MEMORY[0x1E697A720]);
      }
    }

    else
    {
      v304 = v396;
      v137 = v414;
      (*(v406 + 56))(v122, 1, 1, v414);
      MEMORY[0x1AC5962D0](v122, v304);
      v306 = v404;
      v305 = v405;
      (*(v405 + 56))(v83, 0, 1, v404);
      (*(v305 + 32))(v93, v83, v306);
    }

    sub_1AAF8D6E4();
    if (v419)
    {
      v308 = v407;
      v307 = v408;
      v309 = v359;
      (*(v408 + 56))(v359, 1, 1, v407);
      sub_1AAF8D614();
      if ((*(v307 + 48))(v309, 1, v308) != 1)
      {
        sub_1AADB6D8C(v309, &qword_1EB424750, MEMORY[0x1E697A6F0]);
      }
    }

    else
    {
      v310 = v397;
      (*(v406 + 56))(v122, 1, 1, v137);
      v311 = v359;
      MEMORY[0x1AC596260](v122, v310);
      v313 = v407;
      v312 = v408;
      (*(v408 + 56))(v311, 0, 1, v407);
      (*(v312 + 32))(v358, v311, v313);
    }

    sub_1AAF8D674();
    sub_1AAF8ED54();
    v314 = v409;
    sub_1AAF8D614();
    (*(v410 + 104))(v314, *MEMORY[0x1E697A6E8], v411);
    sub_1AAF8D664();
    *(&v435[1] + 1) = v133;
    *&v435[2] = MEMORY[0x1E697A6A0];
    v315 = sub_1AACB2508(v435);
    v316 = v413;
    (*(v413 + 16))(v315, v104, v133);
    sub_1AACAEF68(v435, v434);
    v317 = *(&v434[1] + 1);
    v318 = sub_1AACBB42C(v434, *(&v434[1] + 1));
    v121[3] = v317;
    v319 = sub_1AACB2508(v121);
    (*(*(v317 - 8) + 16))(v319, v318, v317);

    sub_1AAD9A5F8(&v422);
    sub_1AACB634C(v435);
    v320 = sub_1AACB634C(v434);
    (*(v316 + 8))(v104, v133, v320);
  }

  else
  {
    v420 = v119;
    sub_1AADB83BC(v434, &qword_1EB4246A0, &type metadata for _Chart3DResolvedSurfaceStyle);
    v299 = v362;
    sub_1AAF8D6F4();
    v300 = v412;
    v301 = v406;
    if (v418)
    {
      v303 = v404;
      v302 = v405;
      (*(v405 + 56))(v132, 1, 1, v404);
      sub_1AAF8D614();
      if ((*(v302 + 48))(v132, 1, v303) != 1)
      {
        sub_1AADB6D8C(v132, &qword_1EB424760, MEMORY[0x1E697A720]);
      }
    }

    else
    {
      v321 = v396;
      (*(v406 + 56))(v122, 1, 1, v414);
      MEMORY[0x1AC5962D0](v122, v321);
      v323 = v404;
      v322 = v405;
      (*(v405 + 56))(v132, 0, 1, v404);
      (*(v322 + 32))(v356[0], v132, v323);
    }

    sub_1AAF8D6E4();
    if (v419)
    {
      v325 = v407;
      v324 = v408;
      v326 = v357;
      (*(v408 + 56))(v357, 1, 1, v407);
      sub_1AAF8D614();
      v327 = (*(v324 + 48))(v326, 1, v325);
      v328 = v414;
      if (v327 != 1)
      {
        sub_1AADB6D8C(v326, &qword_1EB424750, MEMORY[0x1E697A6F0]);
      }
    }

    else
    {
      v329 = v397;
      v328 = v414;
      (*(v301 + 56))(v122, 1, 1, v414);
      v330 = v357;
      MEMORY[0x1AC596260](v122, v329);
      v331 = v408;
      (*(v408 + 56))(v330, 0, 1, v407);
      (*(v331 + 32))();
    }

    sub_1AAF8D674();
    sub_1AADACF28();
    v332 = v417;

    sub_1AAF8FE34();
    (*(v301 + 56))(v122, 1, 1, v328);
    sub_1AAF8D684();
    sub_1AAF8D6D4();
    sub_1AAF8ED54();
    v333 = v409;
    sub_1AAF8D614();
    (*(v410 + 104))(v333, *MEMORY[0x1E697A6E8], v411);
    sub_1AAF8D664();
    (*(v401 + 104))(v400, *MEMORY[0x1E697A630], v402);
    sub_1AAF8D604();
    *(&v435[1] + 1) = v300;
    *&v435[2] = MEMORY[0x1E697A6A0];
    v334 = sub_1AACB2508(v435);
    (*(v413 + 16))(v334, v299, v300);
    sub_1AACAEF68(v435, v434);
    v335 = *(&v434[1] + 1);
    v336 = sub_1AACBB42C(v434, *(&v434[1] + 1));
    v121[3] = v335;
    v337 = sub_1AACB2508(v121);
    (*(*(v335 - 8) + 16))(v337, v336, v335);
    sub_1AACB634C(v435);
    sub_1AACB634C(v434);
    v338 = off_1EB4246D0;
    swift_beginAccess();
    v339 = *(v338 + 2);

    v340 = pthread_getspecific(v339);
    if (!v340)
    {
      v341 = swift_slowAlloc();
      pthread_setspecific(*(v338 + 2), v341);
      *(&v435[1] + 1) = v420;
      v342 = swift_allocObject();
      *&v435[0] = v342;
      v343 = *(v338 + 4);
      v344 = *(v338 + 7);
      v345 = *(v338 + 40);
      *(v342 + 16) = *(v338 + 3);
      *(v342 + 24) = v343;
      *(v342 + 32) = v345;
      *(v342 + 48) = v344;
      sub_1AACED35C(v435, v341);

      v300 = v412;

      v340 = v341;
    }

    sub_1AACED220(v340, v434);
    v346 = v420;
    swift_dynamicCast();
    sub_1AADB6EDC(v121, v332);
    v347 = v435[0];
    v348 = v435[1];
    v349 = *&v435[2];
    v350 = pthread_getspecific(*(v338 + 2));
    if (!v350)
    {
      v350 = swift_slowAlloc();
      pthread_setspecific(*(v338 + 2), v350);
      *(&v434[1] + 1) = v346;
      v351 = swift_allocObject();
      *&v434[0] = v351;
      v352 = *(v338 + 4);
      v353 = *(v338 + 7);
      v354 = *(v338 + 40);
      *(v351 + 16) = *(v338 + 3);
      *(v351 + 24) = v352;
      *(v351 + 32) = v354;
      *(v351 + 48) = v353;
      sub_1AACED35C(v434, v350);

      v346 = v420;
      v300 = v412;
    }

    *(&v434[1] + 1) = v346;
    v355 = swift_allocObject();
    *&v434[0] = v355;
    *(v355 + 16) = v347;
    *(v355 + 32) = v348;
    *(v355 + 48) = v349;
    sub_1AACB634C(v350);
    sub_1AACED35C(v434, v350);

    (*(v413 + 8))(v362, v300);
  }
}

void sub_1AADB6684(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AADB66E8(uint64_t a1)
{
  if (!qword_1EB4246E8)
  {
    sub_1AADB8798(255, &qword_1EB4246F0, &type metadata for Chart3DContours.IdentifiableContour, MEMORY[0x1E69E62F8]);
    sub_1AADB67A4(255);
    sub_1AADB68D4();
    sub_1AAD80D58();
    v1 = sub_1AAF8EFE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB4246E8);
    }
  }
}

void sub_1AADB67F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1AAF8DF74();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AADB6858(uint64_t a1)
{
  if (!qword_1EB424708)
  {
    sub_1AACCC830();
    v1 = sub_1AAF8D884();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB424708);
    }
  }
}

unint64_t sub_1AADB68D4()
{
  result = qword_1EB424710;
  if (!qword_1EB424710)
  {
    sub_1AADB8798(255, &qword_1EB4246F0, &type metadata for Chart3DContours.IdentifiableContour, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424710);
  }

  return result;
}

void sub_1AADB6950(uint64_t a1)
{
  if (!qword_1EB424720)
  {
    sub_1AADB6684(255, &qword_1EB424728, sub_1AADB69E4, MEMORY[0x1E6981F40]);
    sub_1AADB6B08();
    v1 = sub_1AAF8EF34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB424720);
    }
  }
}

void sub_1AADB69E4(uint64_t a1)
{
  if (!qword_1EB424730)
  {
    sub_1AADB6A88(255);
    sub_1AADB6684(255, &qword_1EB424718, sub_1AADB66E8, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB424730);
    }
  }
}

void sub_1AADB6A88(uint64_t a1)
{
  if (!qword_1EB424738)
  {
    sub_1AADB8554(255, &qword_1EB424740, &qword_1ED9AF4E8, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8]);
    v1 = sub_1AAF8DF74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB424738);
    }
  }
}

unint64_t sub_1AADB6B08()
{
  result = qword_1EB424748;
  if (!qword_1EB424748)
  {
    sub_1AADB6684(255, &qword_1EB424728, sub_1AADB69E4, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424748);
  }

  return result;
}

void sub_1AADB6BEC(uint64_t a1)
{
  if (!qword_1EB424768)
  {
    sub_1AADB6684(255, &qword_1EB424728, sub_1AADB69E4, MEMORY[0x1E6981F40]);
    v1 = sub_1AAF8DBA4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB424768);
    }
  }
}

uint64_t sub_1AADB6C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1AADB6CF8(uint64_t a1)
{
  if (!qword_1EB424770)
  {
    sub_1AADB6950(255);
    sub_1AADB8A1C(&qword_1EB424778, sub_1AADB6950, MEMORY[0x1E6981880]);
    v1 = sub_1AAF8DAE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB424770);
    }
  }
}

uint64_t sub_1AADB6D8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1AADB6684(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_1AADB6DFC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *(v2 + 32);
  if (*(v5 + 16) && (v6 = sub_1AADB0594(a1), (v7 & 1) != 0) && (v8 = *(*(v5 + 56) + 8 * v6), (v8 & 0x8000000000000000) == 0))
  {
    v9 = *(v3 + 8);
    if (v8 == *(v3 + 16))
    {
      goto LABEL_7;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 8) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v11 = v9[2];
      v13[0] = (v9 + 4);
      v13[1] = v11;
      sub_1AADB7024(v13, v8, v3);
      *(v3 + 8) = v9;
LABEL_7:
      if (v8 < v9[2])
      {
        break;
      }

      __break(1u);
LABEL_12:
      v9 = sub_1AADB8108(v9);
      *(v3 + 8) = v9;
    }

    sub_1AAD9BDF8(&v9[8 * v8 + 7], a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1AADB6EDC(uint64_t a1, uint64_t a2)
{
  v4 = v2[4];
  if (*(v4 + 16) && (v5 = a2, v6 = sub_1AADB0594(a2), v8 = v7, a2 = v5, (v8 & 1) != 0) && (v9 = *(*(v4 + 56) + 8 * v6), (v9 & 0x8000000000000000) == 0))
  {
    v10 = v2[1];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AADB8108(v10);
      v10 = result;
    }

    if (v9 >= v10[2])
    {
      __break(1u);
    }

    else
    {
      result = sub_1AADB87E8(a1, &v10[8 * v9 + 7]);
      v2[1] = v10;
      if (v9 != v2[2])
      {
        v12 = v10[2];
        v13[0] = (v10 + 4);
        v13[1] = v12;
        result = sub_1AADB7024(v13, v9, v2);
        v2[1] = v10;
      }
    }
  }

  else
  {

    return sub_1AADB768C(a1, a2, 0);
  }

  return result;
}

uint64_t *sub_1AADB7024(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = (*result + (a2 << 6));
  v5 = *v4;
  if ((*v4 & 0x8000000000000000) == 0)
  {
    *(v3 + (v5 << 6) + 8) = v4[1];
  }

  v6 = v4[1];
  if ((v6 & 0x8000000000000000) == 0)
  {
    *(v3 + (v6 << 6)) = v5;
  }

  if (*(a3 + 24) == a2)
  {
    *(a3 + 24) = *v4;
  }

  *v4 = -1;
  *(v3 + (*(a3 + 16) << 6)) = a2;
  v4[1] = *(a3 + 16);
  *(a3 + 16) = a2;
  return result;
}

uint64_t sub_1AADB70B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = *a1;
  v8 = (a5)(0, a2, a3, a4);
  v10 = *(v8 - 8);
  result = v8 - 8;
  v11 = *(v10 + 72);
  v12 = (v7 + v11 * a2);
  v13 = *v12;
  if ((*v12 & 0x8000000000000000) == 0)
  {
    *(v7 + v13 * v11 + 8) = v12[1];
  }

  v14 = v12[1];
  if ((v14 & 0x8000000000000000) == 0)
  {
    *(v7 + v14 * v11) = v13;
  }

  if (*(a3 + 24) == a2)
  {
    *(a3 + 24) = *v12;
  }

  *v12 = -1;
  *(v7 + *(a3 + 16) * v11) = a2;
  v12[1] = *(a3 + 16);
  *(a3 + 16) = a2;
  return result;
}

uint64_t *sub_1AADB7168(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = (*result + 48 * a2);
  v5 = *v4;
  if ((*v4 & 0x8000000000000000) == 0)
  {
    *(v3 + 48 * v5 + 8) = v4[1];
  }

  v6 = v4[1];
  if ((v6 & 0x8000000000000000) == 0)
  {
    *(v3 + 48 * v6) = v5;
  }

  if (*(a3 + 24) == a2)
  {
    *(a3 + 24) = *v4;
  }

  *v4 = -1;
  *(v3 + 48 * *(a3 + 16)) = a2;
  v4[1] = *(a3 + 16);
  *(a3 + 16) = a2;
  return result;
}

uint64_t sub_1AADB71DC(uint64_t a1, char *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CalendarCache.Key(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE8DEC(0);
  v12 = v11;
  v13 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v35 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v18 = v4[1];
  v19 = *(v18 + 16);
  if (v19 < *v4)
  {
    sub_1AADB8A64(a2, &v17[v12[12]], type metadata accessor for CalendarCache.Key);
    sub_1AADB8A64(a1, &v17[v12[13]], type metadata accessor for CalendarCache.Value);
    v17[v12[14]] = a3 & 1;
    v20 = v4[2];
    *v17 = -1;
    *(v17 + 1) = v20;
    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_27;
  }

  v25 = v4[3];
  if (v25 >= v19)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    v18 = sub_1AAD67488(0, *(v18 + 16) + 1, 1, v18);
LABEL_9:
    v24 = *(v18 + 16);
    v23 = *(v18 + 24);
    if (v24 >= v23 >> 1)
    {
      v18 = sub_1AAD67488((v23 > 1), v24 + 1, 1, v18);
    }

    sub_1AADB8B34(v17, sub_1AACE8DEC);
    *(v18 + 16) = v24 + 1;
    sub_1AADB8B94(v10, v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v24, sub_1AACE8DEC);
    v4[1] = v18;
    return v19;
  }

  v17 = a2;
  a2 = ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v26 = &a2[v18];
  v27 = *(v13 + 72);
  v13 = v27 * v25;
  v28 = &a2[v18 + v27 * v25];
  v29 = v12[14];
  v30 = v28[v29];
  v34 = a1;
  if (v30 == 1)
  {
    do
    {
      v25 = *v28;
      if (*v28 >= v19)
      {
        goto LABEL_23;
      }

      v13 = v27 * v25;
      v28 = &v26[v27 * v25];
    }

    while ((v28[v29] & 1) != 0);
  }

  v19 = v25;
  sub_1AADB8A64(&v26[v12[12] + v13], v10, type metadata accessor for CalendarCache.Key);
  sub_1AADAE0D0(0, 1, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37[0] = v4[4];
  v20 = v37;
  sub_1AADD20A8(v19, v17, isUniquelyReferenced_nonNull_native);
  v4[4] = v37[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_1AADB80F4(v18);
  }

  if (v19 >= *(v18 + 16))
  {
    __break(1u);
  }

  else
  {
    v20 = &a2[v18];
    v32 = &a2[v18 + v13];
    sub_1AADB8ACC(v17, &v32[v12[12]], type metadata accessor for CalendarCache.Key);
    if (v19 < *(v18 + 16))
    {
      sub_1AADB8ACC(v34, &v32[v12[13]], type metadata accessor for CalendarCache.Value);
      v4[1] = v18;
      if (v19 != v4[2])
      {
        v33 = *(v18 + 16);
        v37[0] = &a2[v18];
        v37[1] = v33;
        sub_1AADB70B4(v37, v19, v4, v36, sub_1AACE8DEC);
        v4[1] = v18;
        return v4[2];
      }

      return v19;
    }
  }

  __break(1u);
LABEL_27:
  result = sub_1AADB80F4(v18);
  v18 = result;
LABEL_4:
  if (v20 < *(v18 + 16))
  {
    *(v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v20) = v19;
LABEL_6:
    v4[2] = v19;
    if (v4[3] < 0)
    {
      v4[3] = v19;
    }

    v22 = swift_isUniquelyReferenced_nonNull_native();
    v37[0] = v4[4];
    sub_1AADD20A8(v19, a2, v22);
    v4[4] = v37[0];
    v10 = v35;
    sub_1AADB8A64(v17, v35, sub_1AACE8DEC);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AADB768C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = v3[1];
  v7 = v6[2];
  if (v7 >= *v3)
  {
    v18 = (v3 + 3);
    do
    {
      v19 = *v18;
      if (*v18 >= v7)
      {
        __break(1u);
        goto LABEL_24;
      }

      v18 = &v6[8 * v19 + 4];
    }

    while ((*(v18 + 56) & 1) != 0);
    v7 = a1;
    v20 = *(v18 + 16);

    sub_1AADAE2E4(0, 1, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v3[4];
    v9 = &v26;
    sub_1AADD2388(v19, a2, isUniquelyReferenced_nonNull_native);
    v4[4] = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1AADB8108(v6);
    }

    if (v19 >= v6[2])
    {
      __break(1u);
    }

    else
    {
      v22 = &v6[8 * v19 + 4];
      v9 = *(v22 + 16);
      *(v22 + 16) = a2;

      if (v19 < v6[2])
      {
        sub_1AADB87E8(v7, v22 + 24);
        v4[1] = v6;
        if (v19 == v4[2])
        {
          return v19;
        }

        v23 = v6[2];
        v26 = (v6 + 4);
        v27 = v23;
        sub_1AADB7024(&v26, v19, v4);
        v4[1] = v6;
        return v4[2];
      }
    }

    __break(1u);
LABEL_27:
    result = sub_1AADB8108(v6);
    v6 = result;
    goto LABEL_4;
  }

  sub_1AAD9BDF8(a1, v29);
  v29[32] = a3 & 1;
  v27 = v4[2];
  v9 = v27;
  v28 = a2;
  v26 = -1;

  if ((v27 & 0x8000000000000000) != 0)
  {
LABEL_6:
    v4[2] = v7;
    if (v4[3] < 0)
    {
      v4[3] = v7;
    }

    v11 = swift_isUniquelyReferenced_nonNull_native();
    *&v24[0] = v4[4];
    sub_1AADD2388(v7, a2, v11);
    v4[4] = *&v24[0];
    sub_1AADB8844(&v26, v24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_24:
      v6 = sub_1AAD68364(0, v6[2] + 1, 1, v6);
    }

    v13 = v6[2];
    v12 = v6[3];
    if (v13 >= v12 >> 1)
    {
      v6 = sub_1AAD68364((v12 > 1), v13 + 1, 1, v6);
    }

    sub_1AADB8930(&v26);
    v6[2] = v13 + 1;
    v14 = &v6[8 * v13];
    v16 = v24[1];
    v15 = v25[0];
    v17 = v24[0];
    *(v14 + 73) = *(v25 + 9);
    v14[3] = v16;
    v14[4] = v15;
    v14[2] = v17;
    v4[1] = v6;
    return v7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_4:
  if (v9 < v6[2])
  {
    v6[8 * v9 + 4] = v7;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AADB7940(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v37) = a3;
  v7 = sub_1AAF8CBA4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD6CE20(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v18 = &v34 - v17;
  v19 = v4[1];
  v20 = *(v19 + 16);
  if (v20 < *v4)
  {
    v35 = v15;
    (*(v8 + 16))(&v18[v12[12]], a2, v7, v16.n128_f64[0]);
    *&v18[v12[13]] = a1;
    v18[v12[14]] = v37 & 1;
    v21 = v4[2];
    *v18 = -1;
    *(v18 + 1) = v21;

    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_27;
  }

  v36 = a2;
  v37 = v7;
  v26 = v4[3];
  if (v26 >= v20)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    v19 = sub_1AAD68DC0(0, *(v19 + 16) + 1, 1, v19);
LABEL_9:
    v25 = *(v19 + 16);
    v24 = *(v19 + 24);
    if (v25 >= v24 >> 1)
    {
      v19 = sub_1AAD68DC0((v24 > 1), v25 + 1, 1, v19);
    }

    sub_1AADB8B34(v18, sub_1AAD6CE20);
    *(v19 + 16) = v25 + 1;
    sub_1AADB8B94(a2, v19 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v25, sub_1AAD6CE20);
    v4[1] = v19;
    return v20;
  }

  v18 = ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v27 = &v18[v19];
  v28 = *(v15 + 72);
  a2 = v28 * v26;
  v29 = &v18[v19 + v28 * v26];
  v30 = v12[14];
  if (*(v29 + v30) == 1)
  {
    do
    {
      v26 = *v29;
      if (*v29 >= v20)
      {
        goto LABEL_23;
      }

      a2 = v28 * v26;
      v29 = &v27[v28 * v26];
    }

    while ((*(v29 + v30) & 1) != 0);
  }

  v20 = v26;
  (*(v8 + 16))(v10, &v27[v12[12] + a2], v37, v16);
  sub_1AADAE404(0, 1, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39[0] = v4[4];
  v21 = v39;
  v32 = v36;
  sub_1AADD27B0(v20, v36, isUniquelyReferenced_nonNull_native);
  v4[4] = v39[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1AADB8158(v19);
  }

  if (v20 >= *(v19 + 16))
  {
    __break(1u);
  }

  else
  {
    v18 += v19;
    (*(v8 + 24))(&v18[a2 + v12[12]], v32, v37);
    if (v20 < *(v19 + 16))
    {
      *&v18[a2 + v12[13]] = a1;

      v4[1] = v19;
      if (v20 != v4[2])
      {
        v33 = *(v19 + 16);
        v39[0] = v18;
        v39[1] = v33;
        sub_1AADB70B4(v39, v20, v4, v38, sub_1AAD6CE20);
        v4[1] = v19;
        return v4[2];
      }

      return v20;
    }
  }

  __break(1u);
LABEL_27:
  result = sub_1AADB8158(v19);
  v19 = result;
LABEL_4:
  if (v21 < *(v19 + 16))
  {
    *(v19 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v21) = v20;
LABEL_6:
    v4[2] = v20;
    if (v4[3] < 0)
    {
      v4[3] = v20;
    }

    v23 = swift_isUniquelyReferenced_nonNull_native();
    v39[0] = v4[4];
    sub_1AADD27B0(v20, a2, v23);
    v4[4] = v39[0];
    a2 = v36;
    sub_1AADB8A64(v18, v36, sub_1AAD6CE20);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AADB7E10(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v6 = v4;
  v10 = v4[1];
  v11 = v10[2];
  if (v11 >= *v4)
  {
    a2 = v4[3];
    if (a2 < v11)
    {
      v17 = v10 + 4;
      v5 = 48 * a2;
      if (LOBYTE(v10[6 * a2 + 9]) != 1)
      {
LABEL_16:
        v18 = sub_1AADB0B80(*(v17 + v5 + 16), *(v17 + v5 + 24));
        if ((v19 & 1) == 0)
        {
          goto LABEL_19;
        }

        v11 = v18;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = v4[4];
        v27[0] = v6[4];
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_18;
        }

        goto LABEL_32;
      }

      while (1)
      {
        a2 = v17[6 * a2];
        if (a2 >= v11)
        {
          break;
        }

        v5 = 48 * a2;
        if ((v10[6 * a2 + 9] & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_28:
    v10 = sub_1AAD69BDC(0, v10[2] + 1, 1, v10);
LABEL_9:
    v15 = v10[2];
    v14 = v10[3];
    if (v15 >= v14 >> 1)
    {
      v10 = sub_1AAD69BDC((v14 > 1), v15 + 1, 1, v10);
    }

    v10[2] = v15 + 1;
    v16 = &v10[6 * v15];
    v16[4] = NAN;
    *(v16 + 5) = v5;
    v16[6] = a3;
    v16[7] = a4;
    *(v16 + 8) = a1;
    *(v16 + 72) = a2 & 1;
    v6[1] = v10;
    return v11;
  }

  v5 = v4[2];
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_6:
    v6[2] = v11;
    if ((v6[3] & 0x8000000000000000) != 0)
    {
      v6[3] = v11;
    }

    v13 = swift_isUniquelyReferenced_nonNull_native();
    v27[0] = v6[4];
    sub_1AADD3678(v11, v13, a3, a4);
    v6[4] = v27[0];

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_30;
  }

  while (1)
  {
    if (v5 < v10[2])
    {
      v10[6 * v5 + 4] = v11;
      goto LABEL_6;
    }

    __break(1u);
LABEL_32:
    sub_1AAD97814();
    v22 = v27[0];
LABEL_18:
    sub_1AAD9324C(v11, v22, v21);
    v6[4] = v22;
LABEL_19:
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v27[0] = v6[4];
    sub_1AADD3678(a2, v23, a3, a4);
    v6[4] = v27[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1AADB81BC(v10);
    }

    if (a2 < v10[2])
    {
      break;
    }

    __break(1u);
LABEL_30:
    v10 = sub_1AADB81BC(v10);
  }

  v24 = (v10 + v5 + 32);
  v24[2] = a3;
  v24[3] = a4;
  *(v24 + 4) = a1;

  v6[1] = v10;
  if (a2 == v6[2])
  {
    return a2;
  }

  v25 = v10[2];
  v27[0] = (v10 + 4);
  v27[1] = v25;
  sub_1AADB7168(v27, a2, v6);
  v6[1] = v10;
  return v6[2];
}

unint64_t sub_1AADB82B8()
{
  result = qword_1EB424790;
  if (!qword_1EB424790)
  {
    sub_1AADB67CC(255);
    sub_1AADB8A1C(&qword_1EB424798, sub_1AADB6858, MEMORY[0x1E697DB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424790);
  }

  return result;
}

unint64_t sub_1AADB8368()
{
  result = qword_1EB4247A0;
  if (!qword_1EB4247A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4247A0);
  }

  return result;
}

uint64_t sub_1AADB83BC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AADB8798(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1AADB8438(uint64_t a1)
{
  if (!qword_1EB4247A8)
  {
    sub_1AADB84D4(255);
    sub_1AADB8608(&qword_1EB4247C8, sub_1AADB84D4, sub_1AADB8688);
    v1 = sub_1AAF8DAE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB4247A8);
    }
  }
}

void sub_1AADB84D4(uint64_t a1)
{
  if (!qword_1EB4247B0)
  {
    sub_1AADB8554(255, &qword_1EB4247B8, &qword_1EB4247C0, MEMORY[0x1E6981AC0], MEMORY[0x1E6981AB0]);
    v1 = sub_1AAF8DF74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB4247B0);
    }
  }
}

void sub_1AADB8554(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1AADB85B8(255, a3, a4, a5);
    v6 = sub_1AAF8DF74();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AADB85B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = sub_1AAF8E5F4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AADB8608(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AADB8688()
{
  result = qword_1EB4247D0;
  if (!qword_1EB4247D0)
  {
    sub_1AADB8554(255, &qword_1EB4247B8, &qword_1EB4247C0, MEMORY[0x1E6981AC0], MEMORY[0x1E6981AB0]);
    sub_1AADB08E4();
    sub_1AADB8728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4247D0);
  }

  return result;
}

unint64_t sub_1AADB8728()
{
  result = qword_1EB4247D8;
  if (!qword_1EB4247D8)
  {
    sub_1AADB85B8(255, &qword_1EB4247C0, MEMORY[0x1E6981AC0], MEMORY[0x1E6981AB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4247D8);
  }

  return result;
}

void sub_1AADB8798(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AADB8844(uint64_t a1, uint64_t a2)
{
  sub_1AADB88C4(0, &qword_1EB423A70, type metadata accessor for LRUCache.Element);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AADB88C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AAD68514();
    v7 = a3(a1, MEMORY[0x1E69815C0], &type metadata for _Chart3DResolvedSurfaceStyle, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AADB8930(uint64_t a1)
{
  sub_1AADB88C4(0, &qword_1EB423A70, type metadata accessor for LRUCache.Element);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AADB89A8(uint64_t a1)
{
  if (!qword_1EB4247E8)
  {
    sub_1AADB88C4(255, &qword_1EB4247E0, type metadata accessor for LRUCache);
    v5 = type metadata accessor for ThreadSpecific(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB4247E8);
    }
  }
}

uint64_t sub_1AADB8A1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1AADB8A64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AADB8ACC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AADB8B34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AADB8B94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AADB8BFC()
{
  v0 = sub_1AAF8EC54();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v264 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADBDD9C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AAF977F0;
  v5 = *MEMORY[0x1E69814D8];
  v6 = *(v1 + 104);
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 32) = sub_1AAF8F074();
  *(v4 + 40) = v7;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 48) = sub_1AAF8F074();
  *(v4 + 56) = v8;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 64) = sub_1AAF8F074();
  *(v4 + 72) = v9;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 80) = sub_1AAF8F074();
  *(v4 + 88) = v10;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 96) = sub_1AAF8F074();
  *(v4 + 104) = v11;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 112) = sub_1AAF8F074();
  *(v4 + 120) = v12;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 128) = sub_1AAF8F074();
  *(v4 + 136) = v13;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 144) = sub_1AAF8F074();
  *(v4 + 152) = v14;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 160) = sub_1AAF8F074();
  *(v4 + 168) = v15;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 176) = sub_1AAF8F074();
  *(v4 + 184) = v16;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 192) = sub_1AAF8F074();
  *(v4 + 200) = v17;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 208) = sub_1AAF8F074();
  *(v4 + 216) = v18;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 224) = sub_1AAF8F074();
  *(v4 + 232) = v19;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 240) = sub_1AAF8F074();
  *(v4 + 248) = v20;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 256) = sub_1AAF8F074();
  *(v4 + 264) = v21;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 272) = sub_1AAF8F074();
  *(v4 + 280) = v22;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 288) = sub_1AAF8F074();
  *(v4 + 296) = v23;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 304) = sub_1AAF8F074();
  *(v4 + 312) = v24;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 320) = sub_1AAF8F074();
  *(v4 + 328) = v25;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 336) = sub_1AAF8F074();
  *(v4 + 344) = v26;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 352) = sub_1AAF8F074();
  *(v4 + 360) = v27;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 368) = sub_1AAF8F074();
  *(v4 + 376) = v28;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 384) = sub_1AAF8F074();
  *(v4 + 392) = v29;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 400) = sub_1AAF8F074();
  *(v4 + 408) = v30;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 416) = sub_1AAF8F074();
  *(v4 + 424) = v31;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 432) = sub_1AAF8F074();
  *(v4 + 440) = v32;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 448) = sub_1AAF8F074();
  *(v4 + 456) = v33;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 464) = sub_1AAF8F074();
  *(v4 + 472) = v34;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 480) = sub_1AAF8F074();
  *(v4 + 488) = v35;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 496) = sub_1AAF8F074();
  *(v4 + 504) = v36;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 512) = sub_1AAF8F074();
  *(v4 + 520) = v37;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 528) = sub_1AAF8F074();
  *(v4 + 536) = v38;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 544) = sub_1AAF8F074();
  *(v4 + 552) = v39;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 560) = sub_1AAF8F074();
  *(v4 + 568) = v40;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 576) = sub_1AAF8F074();
  *(v4 + 584) = v41;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 592) = sub_1AAF8F074();
  *(v4 + 600) = v42;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 608) = sub_1AAF8F074();
  *(v4 + 616) = v43;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 624) = sub_1AAF8F074();
  *(v4 + 632) = v44;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 640) = sub_1AAF8F074();
  *(v4 + 648) = v45;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 656) = sub_1AAF8F074();
  *(v4 + 664) = v46;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 672) = sub_1AAF8F074();
  *(v4 + 680) = v47;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 688) = sub_1AAF8F074();
  *(v4 + 696) = v48;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 704) = sub_1AAF8F074();
  *(v4 + 712) = v49;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 720) = sub_1AAF8F074();
  *(v4 + 728) = v50;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 736) = sub_1AAF8F074();
  *(v4 + 744) = v51;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 752) = sub_1AAF8F074();
  *(v4 + 760) = v52;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 768) = sub_1AAF8F074();
  *(v4 + 776) = v53;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 784) = sub_1AAF8F074();
  *(v4 + 792) = v54;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 800) = sub_1AAF8F074();
  *(v4 + 808) = v55;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 816) = sub_1AAF8F074();
  *(v4 + 824) = v56;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 832) = sub_1AAF8F074();
  *(v4 + 840) = v57;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 848) = sub_1AAF8F074();
  *(v4 + 856) = v58;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 864) = sub_1AAF8F074();
  *(v4 + 872) = v59;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 880) = sub_1AAF8F074();
  *(v4 + 888) = v60;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 896) = sub_1AAF8F074();
  *(v4 + 904) = v61;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 912) = sub_1AAF8F074();
  *(v4 + 920) = v62;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 928) = sub_1AAF8F074();
  *(v4 + 936) = v63;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 944) = sub_1AAF8F074();
  *(v4 + 952) = v64;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 960) = sub_1AAF8F074();
  *(v4 + 968) = v65;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 976) = sub_1AAF8F074();
  *(v4 + 984) = v66;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 992) = sub_1AAF8F074();
  *(v4 + 1000) = v67;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1008) = sub_1AAF8F074();
  *(v4 + 1016) = v68;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1024) = sub_1AAF8F074();
  *(v4 + 1032) = v69;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1040) = sub_1AAF8F074();
  *(v4 + 1048) = v70;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1056) = sub_1AAF8F074();
  *(v4 + 1064) = v71;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1072) = sub_1AAF8F074();
  *(v4 + 1080) = v72;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1088) = sub_1AAF8F074();
  *(v4 + 1096) = v73;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1104) = sub_1AAF8F074();
  *(v4 + 1112) = v74;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1120) = sub_1AAF8F074();
  *(v4 + 1128) = v75;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1136) = sub_1AAF8F074();
  *(v4 + 1144) = v76;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1152) = sub_1AAF8F074();
  *(v4 + 1160) = v77;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1168) = sub_1AAF8F074();
  *(v4 + 1176) = v78;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1184) = sub_1AAF8F074();
  *(v4 + 1192) = v79;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1200) = sub_1AAF8F074();
  *(v4 + 1208) = v80;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1216) = sub_1AAF8F074();
  *(v4 + 1224) = v81;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1232) = sub_1AAF8F074();
  *(v4 + 1240) = v82;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1248) = sub_1AAF8F074();
  *(v4 + 1256) = v83;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1264) = sub_1AAF8F074();
  *(v4 + 1272) = v84;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1280) = sub_1AAF8F074();
  *(v4 + 1288) = v85;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1296) = sub_1AAF8F074();
  *(v4 + 1304) = v86;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1312) = sub_1AAF8F074();
  *(v4 + 1320) = v87;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1328) = sub_1AAF8F074();
  *(v4 + 1336) = v88;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1344) = sub_1AAF8F074();
  *(v4 + 1352) = v89;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1360) = sub_1AAF8F074();
  *(v4 + 1368) = v90;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1376) = sub_1AAF8F074();
  *(v4 + 1384) = v91;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1392) = sub_1AAF8F074();
  *(v4 + 1400) = v92;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1408) = sub_1AAF8F074();
  *(v4 + 1416) = v93;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1424) = sub_1AAF8F074();
  *(v4 + 1432) = v94;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1440) = sub_1AAF8F074();
  *(v4 + 1448) = v95;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1456) = sub_1AAF8F074();
  *(v4 + 1464) = v96;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1472) = sub_1AAF8F074();
  *(v4 + 1480) = v97;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1488) = sub_1AAF8F074();
  *(v4 + 1496) = v98;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1504) = sub_1AAF8F074();
  *(v4 + 1512) = v99;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1520) = sub_1AAF8F074();
  *(v4 + 1528) = v100;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1536) = sub_1AAF8F074();
  *(v4 + 1544) = v101;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1552) = sub_1AAF8F074();
  *(v4 + 1560) = v102;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1568) = sub_1AAF8F074();
  *(v4 + 1576) = v103;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1584) = sub_1AAF8F074();
  *(v4 + 1592) = v104;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1600) = sub_1AAF8F074();
  *(v4 + 1608) = v105;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1616) = sub_1AAF8F074();
  *(v4 + 1624) = v106;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1632) = sub_1AAF8F074();
  *(v4 + 1640) = v107;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1648) = sub_1AAF8F074();
  *(v4 + 1656) = v108;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1664) = sub_1AAF8F074();
  *(v4 + 1672) = v109;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1680) = sub_1AAF8F074();
  *(v4 + 1688) = v110;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1696) = sub_1AAF8F074();
  *(v4 + 1704) = v111;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1712) = sub_1AAF8F074();
  *(v4 + 1720) = v112;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1728) = sub_1AAF8F074();
  *(v4 + 1736) = v113;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1744) = sub_1AAF8F074();
  *(v4 + 1752) = v114;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1760) = sub_1AAF8F074();
  *(v4 + 1768) = v115;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1776) = sub_1AAF8F074();
  *(v4 + 1784) = v116;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1792) = sub_1AAF8F074();
  *(v4 + 1800) = v117;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1808) = sub_1AAF8F074();
  *(v4 + 1816) = v118;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1824) = sub_1AAF8F074();
  *(v4 + 1832) = v119;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1840) = sub_1AAF8F074();
  *(v4 + 1848) = v120;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1856) = sub_1AAF8F074();
  *(v4 + 1864) = v121;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1872) = sub_1AAF8F074();
  *(v4 + 1880) = v122;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1888) = sub_1AAF8F074();
  *(v4 + 1896) = v123;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1904) = sub_1AAF8F074();
  *(v4 + 1912) = v124;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1920) = sub_1AAF8F074();
  *(v4 + 1928) = v125;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1936) = sub_1AAF8F074();
  *(v4 + 1944) = v126;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1952) = sub_1AAF8F074();
  *(v4 + 1960) = v127;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1968) = sub_1AAF8F074();
  *(v4 + 1976) = v128;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1984) = sub_1AAF8F074();
  *(v4 + 1992) = v129;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2000) = sub_1AAF8F074();
  *(v4 + 2008) = v130;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2016) = sub_1AAF8F074();
  *(v4 + 2024) = v131;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2032) = sub_1AAF8F074();
  *(v4 + 2040) = v132;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2048) = sub_1AAF8F074();
  *(v4 + 2056) = v133;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2064) = sub_1AAF8F074();
  *(v4 + 2072) = v134;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2080) = sub_1AAF8F074();
  *(v4 + 2088) = v135;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2096) = sub_1AAF8F074();
  *(v4 + 2104) = v136;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2112) = sub_1AAF8F074();
  *(v4 + 2120) = v137;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2128) = sub_1AAF8F074();
  *(v4 + 2136) = v138;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2144) = sub_1AAF8F074();
  *(v4 + 2152) = v139;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2160) = sub_1AAF8F074();
  *(v4 + 2168) = v140;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2176) = sub_1AAF8F074();
  *(v4 + 2184) = v141;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2192) = sub_1AAF8F074();
  *(v4 + 2200) = v142;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2208) = sub_1AAF8F074();
  *(v4 + 2216) = v143;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2224) = sub_1AAF8F074();
  *(v4 + 2232) = v144;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2240) = sub_1AAF8F074();
  *(v4 + 2248) = v145;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2256) = sub_1AAF8F074();
  *(v4 + 2264) = v146;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2272) = sub_1AAF8F074();
  *(v4 + 2280) = v147;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2288) = sub_1AAF8F074();
  *(v4 + 2296) = v148;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2304) = sub_1AAF8F074();
  *(v4 + 2312) = v149;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2320) = sub_1AAF8F074();
  *(v4 + 2328) = v150;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2336) = sub_1AAF8F074();
  *(v4 + 2344) = v151;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2352) = sub_1AAF8F074();
  *(v4 + 2360) = v152;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2368) = sub_1AAF8F074();
  *(v4 + 2376) = v153;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2384) = sub_1AAF8F074();
  *(v4 + 2392) = v154;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2400) = sub_1AAF8F074();
  *(v4 + 2408) = v155;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2416) = sub_1AAF8F074();
  *(v4 + 2424) = v156;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2432) = sub_1AAF8F074();
  *(v4 + 2440) = v157;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2448) = sub_1AAF8F074();
  *(v4 + 2456) = v158;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2464) = sub_1AAF8F074();
  *(v4 + 2472) = v159;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2480) = sub_1AAF8F074();
  *(v4 + 2488) = v160;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2496) = sub_1AAF8F074();
  *(v4 + 2504) = v161;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2512) = sub_1AAF8F074();
  *(v4 + 2520) = v162;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2528) = sub_1AAF8F074();
  *(v4 + 2536) = v163;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2544) = sub_1AAF8F074();
  *(v4 + 2552) = v164;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2560) = sub_1AAF8F074();
  *(v4 + 2568) = v165;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2576) = sub_1AAF8F074();
  *(v4 + 2584) = v166;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2592) = sub_1AAF8F074();
  *(v4 + 2600) = v167;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2608) = sub_1AAF8F074();
  *(v4 + 2616) = v168;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2624) = sub_1AAF8F074();
  *(v4 + 2632) = v169;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2640) = sub_1AAF8F074();
  *(v4 + 2648) = v170;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2656) = sub_1AAF8F074();
  *(v4 + 2664) = v171;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2672) = sub_1AAF8F074();
  *(v4 + 2680) = v172;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2688) = sub_1AAF8F074();
  *(v4 + 2696) = v173;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2704) = sub_1AAF8F074();
  *(v4 + 2712) = v174;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2720) = sub_1AAF8F074();
  *(v4 + 2728) = v175;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2736) = sub_1AAF8F074();
  *(v4 + 2744) = v176;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2752) = sub_1AAF8F074();
  *(v4 + 2760) = v177;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2768) = sub_1AAF8F074();
  *(v4 + 2776) = v178;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2784) = sub_1AAF8F074();
  *(v4 + 2792) = v179;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2800) = sub_1AAF8F074();
  *(v4 + 2808) = v180;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2816) = sub_1AAF8F074();
  *(v4 + 2824) = v181;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2832) = sub_1AAF8F074();
  *(v4 + 2840) = v182;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2848) = sub_1AAF8F074();
  *(v4 + 2856) = v183;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2864) = sub_1AAF8F074();
  *(v4 + 2872) = v184;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2880) = sub_1AAF8F074();
  *(v4 + 2888) = v185;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2896) = sub_1AAF8F074();
  *(v4 + 2904) = v186;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2912) = sub_1AAF8F074();
  *(v4 + 2920) = v187;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2928) = sub_1AAF8F074();
  *(v4 + 2936) = v188;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2944) = sub_1AAF8F074();
  *(v4 + 2952) = v189;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2960) = sub_1AAF8F074();
  *(v4 + 2968) = v190;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2976) = sub_1AAF8F074();
  *(v4 + 2984) = v191;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2992) = sub_1AAF8F074();
  *(v4 + 3000) = v192;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3008) = sub_1AAF8F074();
  *(v4 + 3016) = v193;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3024) = sub_1AAF8F074();
  *(v4 + 3032) = v194;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3040) = sub_1AAF8F074();
  *(v4 + 3048) = v195;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3056) = sub_1AAF8F074();
  *(v4 + 3064) = v196;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3072) = sub_1AAF8F074();
  *(v4 + 3080) = v197;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3088) = sub_1AAF8F074();
  *(v4 + 3096) = v198;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3104) = sub_1AAF8F074();
  *(v4 + 3112) = v199;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3120) = sub_1AAF8F074();
  *(v4 + 3128) = v200;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3136) = sub_1AAF8F074();
  *(v4 + 3144) = v201;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3152) = sub_1AAF8F074();
  *(v4 + 3160) = v202;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3168) = sub_1AAF8F074();
  *(v4 + 3176) = v203;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3184) = sub_1AAF8F074();
  *(v4 + 3192) = v204;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3200) = sub_1AAF8F074();
  *(v4 + 3208) = v205;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3216) = sub_1AAF8F074();
  *(v4 + 3224) = v206;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3232) = sub_1AAF8F074();
  *(v4 + 3240) = v207;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3248) = sub_1AAF8F074();
  *(v4 + 3256) = v208;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3264) = sub_1AAF8F074();
  *(v4 + 3272) = v209;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3280) = sub_1AAF8F074();
  *(v4 + 3288) = v210;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3296) = sub_1AAF8F074();
  *(v4 + 3304) = v211;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3312) = sub_1AAF8F074();
  *(v4 + 3320) = v212;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3328) = sub_1AAF8F074();
  *(v4 + 3336) = v213;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3344) = sub_1AAF8F074();
  *(v4 + 3352) = v214;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3360) = sub_1AAF8F074();
  *(v4 + 3368) = v215;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3376) = sub_1AAF8F074();
  *(v4 + 3384) = v216;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3392) = sub_1AAF8F074();
  *(v4 + 3400) = v217;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3408) = sub_1AAF8F074();
  *(v4 + 3416) = v218;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3424) = sub_1AAF8F074();
  *(v4 + 3432) = v219;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3440) = sub_1AAF8F074();
  *(v4 + 3448) = v220;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3456) = sub_1AAF8F074();
  *(v4 + 3464) = v221;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3472) = sub_1AAF8F074();
  *(v4 + 3480) = v222;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3488) = sub_1AAF8F074();
  *(v4 + 3496) = v223;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3504) = sub_1AAF8F074();
  *(v4 + 3512) = v224;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3520) = sub_1AAF8F074();
  *(v4 + 3528) = v225;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3536) = sub_1AAF8F074();
  *(v4 + 3544) = v226;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3552) = sub_1AAF8F074();
  *(v4 + 3560) = v227;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3568) = sub_1AAF8F074();
  *(v4 + 3576) = v228;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3584) = sub_1AAF8F074();
  *(v4 + 3592) = v229;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3600) = sub_1AAF8F074();
  *(v4 + 3608) = v230;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3616) = sub_1AAF8F074();
  *(v4 + 3624) = v231;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3632) = sub_1AAF8F074();
  *(v4 + 3640) = v232;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3648) = sub_1AAF8F074();
  *(v4 + 3656) = v233;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3664) = sub_1AAF8F074();
  *(v4 + 3672) = v234;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3680) = sub_1AAF8F074();
  *(v4 + 3688) = v235;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3696) = sub_1AAF8F074();
  *(v4 + 3704) = v236;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3712) = sub_1AAF8F074();
  *(v4 + 3720) = v237;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3728) = sub_1AAF8F074();
  *(v4 + 3736) = v238;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3744) = sub_1AAF8F074();
  *(v4 + 3752) = v239;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3760) = sub_1AAF8F074();
  *(v4 + 3768) = v240;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3776) = sub_1AAF8F074();
  *(v4 + 3784) = v241;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3792) = sub_1AAF8F074();
  *(v4 + 3800) = v242;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3808) = sub_1AAF8F074();
  *(v4 + 3816) = v243;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3824) = sub_1AAF8F074();
  *(v4 + 3832) = v244;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3840) = sub_1AAF8F074();
  *(v4 + 3848) = v245;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3856) = sub_1AAF8F074();
  *(v4 + 3864) = v246;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3872) = sub_1AAF8F074();
  *(v4 + 3880) = v247;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3888) = sub_1AAF8F074();
  *(v4 + 3896) = v248;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3904) = sub_1AAF8F074();
  *(v4 + 3912) = v249;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3920) = sub_1AAF8F074();
  *(v4 + 3928) = v250;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3936) = sub_1AAF8F074();
  *(v4 + 3944) = v251;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3952) = sub_1AAF8F074();
  *(v4 + 3960) = v252;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3968) = sub_1AAF8F074();
  *(v4 + 3976) = v253;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3984) = sub_1AAF8F074();
  *(v4 + 3992) = v254;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 4000) = sub_1AAF8F074();
  *(v4 + 4008) = v255;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 4016) = sub_1AAF8F074();
  *(v4 + 4024) = v256;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 4032) = sub_1AAF8F074();
  *(v4 + 4040) = v257;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 4048) = sub_1AAF8F074();
  *(v4 + 4056) = v258;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 4064) = sub_1AAF8F074();
  *(v4 + 4072) = v259;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 4080) = sub_1AAF8F074();
  *(v4 + 4088) = v260;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 4096) = sub_1AAF8F074();
  *(v4 + 4104) = v261;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 4112) = sub_1AAF8F074();
  *(v4 + 4120) = v262;
  return v4;
}

void sub_1AADBDD9C()
{
  if (!qword_1EB4247F0)
  {
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4247F0);
    }
  }
}

void sub_1AADBDDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 - 2;
  if (__OFSUB__(a2, 2))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v6 = a3 - 2;
  if (__OFSUB__(a3, 2))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if ((a3 | a2) < 0)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v55 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return;
  }

  v8 = 0;
  v53 = *(v3 + 24);
  v54 = *(v3 + 16);
  v57 = *(v3 + 64);
  v58 = *(v3 + 56);
  v9 = *(v3 + 72);
  v10 = *(v3 + 80);
  v52 = *(v3 + 32);
  v51 = (*(v3 + 40) - v52) / v4;
  v11 = *(v3 + 112);
  *&v19 = (v10 - v9) * 0.1;
  v12 = v9 - *&v19;
  v50 = v4;
  v13 = v10 + *&v19;
  v14 = *v3;
  v56 = v11;
  v15 = (*(v3 + 120) - v11) / v6;
  v16 = *(v3 + 96);
  v49 = v11 - v15;
  v17 = *(v3 + 104);
  *&v19 = v17 + v16 * (v11 - v15);
  v48 = v19;
  v18 = v6;
  v47 = 0.0 / v6;
  *(&v19 + 1) = 0;
  do
  {
    v20 = v55 * v8;
    if ((v55 * v8) >> 64 != (v55 * v8) >> 63)
    {
      goto LABEL_51;
    }

    v21 = v52 + v51 * (v8 - 1);
    *&v19 = v53 + v54 * v21;
    *&v19 = *&v19;
    v60 = v19;
    *&v19 = ((v8 - 1) & ~((v8 - 1) >> 63)) / v50;
    v59 = v19;
    v22 = v14(v21, v49);
    if (v12 > v22)
    {
      v22 = v12;
    }

    if (v22 >= v13)
    {
      v22 = v13;
    }

    v23 = v57 + v58 * v22;
    v24 = v60;
    *(&v24 + 1) = v23;
    DWORD2(v24) = v48;
    v19 = v59;
    *(&v19 + 1) = v47;
    v25 = a1 + 48 * v20;
    *v25 = v24;
    *(v25 + 16) = xmmword_1AAF93880;
    *(v25 + 32) = v19;
    if (a3)
    {
      v26 = 1;
      while (!__OFADD__(v26, v20))
      {
        v27 = v26 - 1;
        v28 = v14(v21, v56 + v15 * (v26 - 1));
        if (v12 > v28)
        {
          v28 = v12;
        }

        if (v28 >= v13)
        {
          v28 = v13;
        }

        v29 = v57 + v58 * v28;
        v30 = v60;
        *(&v30 + 1) = v29;
        v31 = v17 + v16 * (v56 + v15 * (v26 - 1));
        *(&v30 + 2) = v31;
        LODWORD(v32) = v59;
        *(&v32 + 1) = v27 / v18;
        v33 = a1 + 48 * (v26 + v20);
        v19 = xmmword_1AAF93880;
        *v33 = v30;
        *(v33 + 16) = xmmword_1AAF93880;
        *(v33 + 32) = v32;
        if (v26 == a3)
        {
          goto LABEL_22;
        }

        ++v26;
        if (__OFADD__(v27 + 1, 1))
        {
          goto LABEL_45;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_22:
    if (v8 == a2)
    {
      goto LABEL_26;
    }
  }

  while (!__OFADD__(v8++, 1));
  __break(1u);
LABEL_26:
  if (a2 < 1)
  {
    goto LABEL_58;
  }

  if (a2 != 1)
  {
    if (a3 < 1)
    {
      goto LABEL_59;
    }

    v35 = 1;
    while (v35 != a2)
    {
      if (a3 != 1)
      {
        v37 = v55 * v35;
        if ((v55 * v35) >> 64 != (v55 * v35) >> 63)
        {
          goto LABEL_53;
        }

        v38 = 1;
        while (1)
        {
          v39 = v38 + v37;
          if (__OFADD__(v38, v37))
          {
            goto LABEL_46;
          }

          if (__OFADD__(v39, 1))
          {
            goto LABEL_47;
          }

          if (__OFSUB__(v39, 1))
          {
            goto LABEL_48;
          }

          if (__OFADD__(v39, a3))
          {
            goto LABEL_49;
          }

          if (__OFSUB__(v39, a3))
          {
            goto LABEL_50;
          }

          v40 = vsubq_f32(*(a1 + 48 * (v39 - 1)), *(a1 + 48 * (v39 + 1)));
          v41 = vsubq_f32(*(a1 + 48 * (v39 - a3)), *(a1 + 48 * (v39 + a3)));
          v42 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL), vnegq_f32(v40)), v41, vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL));
          v43 = vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL);
          v44 = vmulq_f32(v42, v42);
          *&v45 = v44.f32[1] + (v44.f32[2] + v44.f32[0]);
          *v44.f32 = vrsqrte_f32(v45);
          *v44.f32 = vmul_f32(*v44.f32, vrsqrts_f32(v45, vmul_f32(*v44.f32, *v44.f32)));
          v36 = vmulq_n_f32(v43, vmul_f32(*v44.f32, vrsqrts_f32(v45, vmul_f32(*v44.f32, *v44.f32))).f32[0]);
          v36.i32[3] = HIDWORD(v19);
          ++v38;
          *(a1 + 16 + 48 * v39) = v36;
          if (a3 == v38)
          {
            goto LABEL_32;
          }
        }
      }

      v36 = v19;
LABEL_32:
      ++v35;
      v19 = v36;
      if (v35 == a2)
      {
        return;
      }
    }

    goto LABEL_52;
  }
}

uint64_t sub_1AADBE22C(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  if (a2 < 0)
  {
    goto LABEL_51;
  }

  if (a2)
  {
    if (a3 < 0)
    {
LABEL_52:
      __break(1u);
      return result;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = a3 + 1;
    v8 = __OFADD__(a3, 1);
    v9 = a3 + 1;
    while (1)
    {
      v10 = v6 + 1;
      if (a3)
      {
        break;
      }

LABEL_8:
      v4 += v7;
      v9 += v7;
      v6 = v10;
      if (v10 == a2)
      {
        return result;
      }
    }

    if (!v8)
    {
      if ((v6 * v7) >> 64 != (v6 * v7) >> 63)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v11 = a3;
      v12 = v4;
      v13 = v9;
      if ((v10 * v7) >> 64 != (v10 * v7) >> 63)
      {
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      while ((v4 & 0x8000000000000000) == 0)
      {
        if (v12 >> 16)
        {
          goto LABEL_33;
        }

        if (((v12 + a4) & 0x10000) != 0)
        {
          goto LABEL_34;
        }

        *(result + 2 * v5) = v12 + a4;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_35;
        }

        if ((v12 + 1) >> 16)
        {
          goto LABEL_36;
        }

        v14 = (v12 + 1) + a4;
        if ((v14 & 0x10000) != 0)
        {
          goto LABEL_37;
        }

        *(result + 2 * (v5 + 1)) = v14;
        if (__OFADD__(v5, 2))
        {
          goto LABEL_38;
        }

        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v13 >> 16)
        {
          goto LABEL_40;
        }

        if (((v13 + a4) & 0x10000) != 0)
        {
          goto LABEL_41;
        }

        *(result + 2 * (v5 + 2)) = v13 + a4;
        if (__OFADD__(v5, 3))
        {
          goto LABEL_42;
        }

        *(result + 2 * (v5 + 3)) = v14;
        if (__OFADD__(v5, 4))
        {
          goto LABEL_43;
        }

        if ((v13 + 1) >> 16)
        {
          goto LABEL_44;
        }

        v15 = (v13 + 1) + a4;
        if ((v15 & 0x10000) != 0)
        {
          goto LABEL_45;
        }

        *(result + 2 * (v5 + 4)) = v15;
        if (__OFADD__(v5, 5))
        {
          goto LABEL_46;
        }

        *(result + 2 * (v5 + 5)) = v13 + a4;
        v16 = v5 + 6;
        if (__OFADD__(v5, 6))
        {
          goto LABEL_47;
        }

        v5 += 6;
        ++v13;
        ++v12;
        if (!--v11)
        {
          v5 = v16;
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
    }

    __break(1u);
    goto LABEL_49;
  }

  return result;
}

uint64_t sub_1AADBE3C4()
{
  v0 = sub_1AAF8D304();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADBE5B4(0);
  sub_1AAF8D3A4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AAF99670;
  v5 = *(v1 + 104);
  v5(v3, *MEMORY[0x1E697A420], v0);
  sub_1AAF8D394();
  v5(v3, *MEMORY[0x1E697A418], v0);
  sub_1AAF8D394();
  v5(v3, *MEMORY[0x1E697A410], v0);
  result = sub_1AAF8D394();
  qword_1EB432080 = v4;
  return result;
}

void sub_1AADBE5B4(uint64_t a1)
{
  if (!qword_1EB4247F8)
  {
    sub_1AAF8D3A4();
    v1 = sub_1AAF90484();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB4247F8);
    }
  }
}

uint64_t sub_1AADBE660(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AADBE67C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 616))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 3) & 0xFFFFFFE0 | (*(a1 + 48) >> 2) & 0x1F;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1AADBE6D0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 584) = 0u;
    *(a1 + 600) = 0u;
    *(a1 + 568) = 0u;
    *(a1 + 552) = 0u;
    *(a1 + 536) = 0u;
    *(a1 + 520) = 0u;
    *(a1 + 504) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 616) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = (8 * -a2) & 0x7FFFFFF00 | (4 * (-a2 & 0x1FLL));
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0;
      return result;
    }

    *(a1 + 616) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AADBE7F0(void *a1, uint64_t a2, double *a3, uint64_t a4)
{
  v26 = sub_1AAF8D554();
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1AAF8D5F4();
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1AAF8CFB4();
  v11 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADBF02C(a2 + 448, v33);
  sub_1AAD9C220();
  sub_1AAD9A5B4(v32);
  memcpy(v34, v32, 0x1E0uLL);
  sub_1AADB35BC(v31, v34, *(a2 + 528), *(a2 + 536), *(a2 + 544), *(a2 + 552), a3, a4, v30);
  swift_unknownObjectRetain();
  v14 = sub_1AAF8CF34();
  v15 = sub_1AAF8CDC4();
  v16 = sub_1AAF8CF54();
  if (!(*(*(v15 - 8) + 48))(v17, 1, v15))
  {
    sub_1AAD9A6F4(0);
    *(swift_allocObject() + 16) = xmmword_1AAF92AB0;
    sub_1AACED220(v30, &v27);
    sub_1AAD45E1C(0, &qword_1EB424650, MEMORY[0x1E697A3C0]);
    swift_dynamicCast();
    sub_1AAF8CDB4();
  }

  v16(&v28, 0);
  v14(&v29, 0);
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  sub_1AAF8CF44();
  swift_unknownObjectRelease();
  if (qword_1EB422B40 != -1)
  {
    swift_once();
  }

  v18 = v26;
  v19 = sub_1AAD0F5D8(v26, qword_1EB432060);
  (*(v24 + 16))(v8, v19, v18);
  sub_1AAF8D5E4();
  v20 = v25;
  sub_1AAF8CF94();
  (*(v23 + 8))(v10, v20);
  (*(v11 + 8))(v13, v22);
  sub_1AAD9A5F8(v30);
  sub_1AAD9A64C(v31);
  return sub_1AADBF0E0(v33);
}

uint64_t sub_1AADBEC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AACAEF68(a1 + 568, v48);
  sub_1AAD45E1C(0, &qword_1EB424800, &protocol descriptor for Chart3DSymbolShape);
  if (!swift_dynamicCast())
  {
    goto LABEL_4;
  }

  if (LOBYTE(v47[0]) > 1u)
  {
    sub_1AAF8CD24();
    if (LOBYTE(v47[0]) == 2)
    {
      sub_1AAF8CC94();
    }

    else
    {
      sub_1AAF8CCD4();
    }
  }

  else
  {
    if (!LOBYTE(v47[0]))
    {
LABEL_4:
      sub_1AAF8CD24();
      sub_1AAF8CD04();
      goto LABEL_5;
    }

    sub_1AAF8CD24();
    sub_1AAF8CCA4();
  }

LABEL_5:
  sub_1AAF8CC04();
  swift_allocObject();

  v6 = sub_1AAF8CBF4();

  sub_1AAF8D064();
  sub_1AAF8D074();

  v36 = v6;
  v7 = *(a2 + 32);
  v43 = *(a2 + 16);
  v44 = v7;
  v45 = *(a2 + 48);
  v8 = *(a1 + 128);
  v48[6] = *(a1 + 112);
  v48[7] = v8;
  v48[8] = *(a1 + 144);
  v9 = *(a1 + 64);
  v48[2] = *(a1 + 48);
  v48[3] = v9;
  v10 = *(a1 + 96);
  v48[4] = *(a1 + 80);
  v48[5] = v10;
  v11 = *(a1 + 32);
  v48[0] = *(a1 + 16);
  v48[1] = v11;

  v33 = sub_1AADC6AE0(v48);
  v12 = *(a2 + 72);
  v40 = *(a2 + 56);
  v41 = v12;
  v42 = *(a2 + 88);
  v13 = *(a1 + 272);
  v47[6] = *(a1 + 256);
  v47[7] = v13;
  v47[8] = *(a1 + 288);
  v14 = *(a1 + 208);
  v47[2] = *(a1 + 192);
  v47[3] = v14;
  v15 = *(a1 + 240);
  v47[4] = *(a1 + 224);
  v47[5] = v15;
  v16 = *(a1 + 176);
  v47[0] = *(a1 + 160);
  v47[1] = v16;
  v32 = sub_1AADC6AE0(v47);
  v17 = *(a2 + 112);
  v37 = *(a2 + 96);
  v38 = v17;
  v39 = *(a2 + 128);
  v18 = *(a1 + 416);
  v46[6] = *(a1 + 400);
  v46[7] = v18;
  v46[8] = *(a1 + 432);
  v19 = *(a1 + 352);
  v46[2] = *(a1 + 336);
  v46[3] = v19;
  v20 = *(a1 + 384);
  v46[4] = *(a1 + 368);
  v46[5] = v20;
  v21 = *(a1 + 320);
  v46[0] = *(a1 + 304);
  v46[1] = v21;
  v22 = sub_1AADC6AE0(v46);
  *&v23 = __PAIR64__(v32, v33);
  *(&v23 + 1) = v22;
  v34 = v23;

  sub_1AAF8D094();
  v24 = sub_1AAF8CC64();
  *(v25 + 32) = v34;
  v24(v35, 0);

  if ((*(a1 + 624) & 1) == 0)
  {
    v26 = *(a1 + 608);
    v27 = a3;
    v28 = *(a1 + 616);

    v29 = sub_1AAF8CC64();
    *(v30 + 16) = v26;
    *(v30 + 24) = v28;
    a3 = v27;
    v29(v35, 0);
  }

  sub_1AADBE7F0(&v36, a1, a2, a3);

  sub_1AAF8CC24();

  return v6;
}

uint64_t sub_1AADBF02C(uint64_t a1, uint64_t a2)
{
  sub_1AADBF090();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AADBF090()
{
  if (!qword_1EB423648)
  {
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB423648);
    }
  }
}

uint64_t sub_1AADBF0E0(uint64_t a1)
{
  sub_1AADBF090();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AADBF154(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 577))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 3) & 0xFFFFFFE0 | (*(a1 + 48) >> 2) & 0x1F;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1AADBF1A8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 568) = 0;
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 552) = 0u;
    *(a1 + 536) = 0u;
    *(a1 + 520) = 0u;
    *(a1 + 576) = 0;
    *(a1 + 504) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 577) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = (8 * -a2) & 0x7FFFFFF00 | (4 * (-a2 & 0x1FLL));
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0;
      return result;
    }

    *(a1 + 577) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}