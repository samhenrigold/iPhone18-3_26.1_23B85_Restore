_BYTE *sub_1DB040508@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1DAFB75C0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1DB0415A8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1DB041624(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unsigned __int8 *sub_1DB04059C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1DB09D864();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1DB040B28(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1DB09DEC4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
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

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
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

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1DB040B28(uint64_t a1, unint64_t a2)
{
  v2 = sub_1DB09D874();
  v6 = sub_1DB040BA8(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1DB040BA8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1DB09DC84();
    if (!v9 || (v10 = v9, v11 = sub_1DB07F6C8(v9, 0), v12 = sub_1DB040D00(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1DB09D784();

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
      return sub_1DB09D784();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1DB09DEC4();
LABEL_4:

  return sub_1DB09D784();
}

unint64_t sub_1DB040D00(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1DAFED704(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1DB09D814();
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
          result = sub_1DB09DEC4();
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

    result = sub_1DAFED704(v12, a6, a7);
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

    result = sub_1DB09D7F4();
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

uint64_t sub_1DB040F20(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1DB09D5F4();
      sub_1DB049B94(&qword_1ECC0FAB8, 255, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return sub_1DB09D534();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1DB041108(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1DB041108(v5, v6);
  }

  sub_1DB09D5F4();
  sub_1DB049B94(&qword_1ECC0FAB8, 255, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  return sub_1DB09D534();
}

uint64_t sub_1DB041108(uint64_t a1, uint64_t a2)
{
  result = sub_1DB09CD44();
  if (!result || (result = sub_1DB09CD74(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1DB09CD64();
      sub_1DB09D5F4();
      sub_1DB049B94(&qword_1ECC0FAB8, 255, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return sub_1DB09D534();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s17CoreODIEssentials25AssessmentConfigFieldNameO2eeoiySbAC_ACtFZ_0(void *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (v4)
  {
    if (a2[2])
    {
      if (v3 == v6 && v2 == v5)
      {
        v9 = 1;
        sub_1DB042B1C(*a1, v2, 1);
        sub_1DB042B1C(v3, v2, 1);
        sub_1DB041AD8(v3, v2, 1);
        v10 = v3;
        v11 = v2;
      }

      else
      {
        v9 = sub_1DB09E254();
        sub_1DB042B1C(v6, v5, 1);
        sub_1DB042B1C(v3, v2, 1);
        sub_1DB041AD8(v3, v2, 1);
        v10 = v6;
        v11 = v5;
      }

      sub_1DB041AD8(v10, v11, 1);
      return v9 & 1;
    }

LABEL_13:
    sub_1DB042B1C(v6, v5, v7);
    sub_1DB041AD8(v3, v2, v4);
    sub_1DB041AD8(v6, v5, v7);
    v9 = 0;
    return v9 & 1;
  }

  if (a2[2])
  {
    goto LABEL_13;
  }

  v12 = ArmandDeviceDataFieldName.rawValue.getter();
  v14 = v13;
  if (v12 == ArmandDeviceDataFieldName.rawValue.getter() && v14 == v15)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DB09E254();
  }

  sub_1DB041AD8(v3, v2, 0);
  sub_1DB041AD8(v6, v5, 0);

  return v9 & 1;
}

uint64_t _s17CoreODIEssentials15DeviceDataFieldV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  v5 = *(a1 + 32);
  v6 = a1[5];
  v23 = a1[6];
  v25 = *(a1 + 33);
  v26 = *(a1 + 56);
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = *(a2 + 32);
  v24 = *(a2 + 33);
  v12 = a2[5];
  v22 = a2[6];
  v27 = *(a2 + 56);
  v28 = *(a1 + 57);
  v13 = *(a2 + 57);
  v32 = a1[2];
  v33 = v4;
  v34 = v5;
  v29 = v9;
  v30 = v10;
  v31 = v11;
  sub_1DB042B1C(v32, v4, v5);
  sub_1DB042B1C(v9, v10, v11);
  LOBYTE(v9) = _s17CoreODIEssentials25AssessmentConfigFieldNameO2eeoiySbAC_ACtFZ_0(&v32, &v29);
  sub_1DB041AD8(v29, v30, v31);
  sub_1DB041AD8(v32, v33, v34);
  if (v9)
  {
    if (v2 == v7 && v3 == v8)
    {
      v14 = 0;
    }

    else
    {
      v16 = sub_1DB09E254();
      v14 = 0;
      if ((v16 & 1) == 0)
      {
        return v14 & 1;
      }
    }

    if (v6 == v12 && ((v28 ^ v13) & 1) == 0)
    {
      LOBYTE(v32) = v25;
      LOBYTE(v29) = v24;
      v17 = ArmandDataSource.rawValue.getter();
      v19 = v18;
      if (v17 == ArmandDataSource.rawValue.getter() && v19 == v20)
      {

        v14 = v27;
        if ((v26 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v21 = sub_1DB09E254();

        if (!(v26 & 1 | ((v21 & 1) == 0)))
        {
LABEL_16:
          v14 = (v23 == v22) & ~v27;
          return v14 & 1;
        }

        v14 = v21 & v27;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1DB0415A8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1DB09CD84();
  swift_allocObject();
  result = sub_1DB09CD34();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1DB09CFB4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1DB041624(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1DB09CD84();
  swift_allocObject();
  result = sub_1DB09CD34();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1DB0416A8(unsigned __int8 a1, uint64_t a2)
{
  v3 = 0xEA00000000006465;
  v4 = 0xEA00000000007265;
  v5 = a1;
  v6 = 0x696669746E656469;
  v7 = 0x797469726F697270;
  v8 = 0x4D74756F656D6974;
  if (a1 == 4)
  {
    v3 = 0xEC000000696C6C69;
  }

  else
  {
    v8 = 0x67656C6976697270;
  }

  if (a1 == 3)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v7 = v8;
  }

  v9 = 0xE900000000000065;
  v10 = 0x6D614E646C656966;
  if (a1 != 1)
  {
    v10 = 0x656372756F73;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v6 = v10;
    v4 = v9;
  }

  if (a1 <= 2u)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 <= 2)
  {
    v12 = v4;
  }

  else
  {
    v12 = v3;
  }

  if (*(a2 + 16))
  {
    v14 = sub_1DAF35210(v11, v12);
    v16 = v15;

    if (v16)
    {
      return *(*(a2 + 56) + 16 * v14);
    }
  }

  else
  {
  }

  *&v32 = 0;
  *(&v32 + 1) = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD00000000000003CLL, 0x80000001DB0CAD20);
  LOBYTE(v31[0]) = a1;
  sub_1DB045B78();
  v18 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v18);

  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v19 = MEMORY[0x1E69E7CC0];
  v20 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v21 = *(v20 + 16);

  if (v21)
  {
    v22 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
    if (v23)
    {
      sub_1DAF409DC(*(v20 + 56) + 32 * v22, &v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      if (swift_dynamicCast())
      {
        v19 = *&v31[0];
      }
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1DAF72EC0(0, *(v19 + 2) + 1, 1, v19);
  }

  v25 = *(v19 + 2);
  v24 = *(v19 + 3);
  if (v25 >= v24 >> 1)
  {
    v19 = sub_1DAF72EC0((v24 > 1), v25 + 1, 1, v19);
  }

  *(v19 + 2) = v25 + 1;
  v26 = &v19[56 * v25];
  *(v26 + 4) = 0;
  *(v26 + 5) = 0xE000000000000000;
  *(v26 + 6) = 0xD000000000000023;
  *(v26 + 7) = 0x80000001DB0CA830;
  *(v26 + 8) = 0xD000000000000017;
  *(v26 + 9) = 0x80000001DB0CAD60;
  *(v26 + 10) = 1005;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *&v32 = v19;
  sub_1DAF40D20(&v32, v31);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v20;
  sub_1DAF3B11C(v31, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
  v28 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v29 = sub_1DB09D6B4();
  v30 = sub_1DB09D604();
  [v28 initWithDomain:v29 code:-3183 userInfo:v30];

  return swift_willThrow();
}

uint64_t sub_1DB041AD8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1DB041AE8()
{
  result = qword_1EE302D78;
  if (!qword_1EE302D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302D78);
  }

  return result;
}

unint64_t sub_1DB041B3C()
{
  result = qword_1EE302190;
  if (!qword_1EE302190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302190);
  }

  return result;
}

unint64_t sub_1DB041B90()
{
  result = qword_1ECC0F578;
  if (!qword_1ECC0F578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F578);
  }

  return result;
}

unint64_t sub_1DB041C4C()
{
  result = qword_1ECC0F590;
  if (!qword_1ECC0F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F590);
  }

  return result;
}

unint64_t sub_1DB041CA0()
{
  result = qword_1ECC0F5A0;
  if (!qword_1ECC0F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F5A0);
  }

  return result;
}

unint64_t sub_1DB041CF4()
{
  result = qword_1ECC0F5B8;
  if (!qword_1ECC0F5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F5B8);
  }

  return result;
}

unint64_t sub_1DB041DB0()
{
  result = qword_1EE301E00;
  if (!qword_1EE301E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301E00);
  }

  return result;
}

uint64_t sub_1DB041E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_1DAF753BC(a1);
  result = sub_1DAF72C08(&v16);
  v9 = v16;
  if (!v7)
  {
    goto LABEL_8;
  }

  if (!*(v7 + 16) || (v10 = sub_1DAF352E8(13), (v11 & 1) == 0))
  {

LABEL_8:
    v12 = 0;
    v13 = 1;
    goto LABEL_9;
  }

  sub_1DAF409DC(*(v7 + 56) + 32 * v10, v15);

  result = swift_dynamicCast();
  v12 = v14;
  if (!result)
  {
    v12 = 0;
  }

  v13 = result ^ 1;
LABEL_9:
  *a4 = qword_1DB0B7FA0[v9 ^ 0x80];
  *(a4 + 8) = v12;
  *(a4 + 16) = v13;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  return result;
}

uint64_t sub_1DB041EF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F5D8, &qword_1DB0B2D70);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v14 - v7;
  if (v6 >> 60 == 15)
  {
    v9 = sub_1DB09D1D4();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    Data.uuid.getter(a1, v6, &v14 - v7);
  }

  sub_1DAF40A84(v8, v5, &qword_1ECC0F5D8, &qword_1DB0B2D70);
  v10 = sub_1DB09D1D4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_1DAF40AEC(v5, &qword_1ECC0F5D8, &qword_1DB0B2D70);
    v12 = 0x676E697373696D2DLL;
  }

  else
  {
    sub_1DB09D174();
    (*(v11 + 8))(v5, v10);
    v12 = sub_1DB09D754();
  }

  sub_1DAF40AEC(v8, &qword_1ECC0F5D8, &qword_1DB0B2D70);
  return v12;
}

double sub_1DB04210C(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_1DB042128()
{
  result = qword_1ECC0F5E8;
  if (!qword_1ECC0F5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F5E8);
  }

  return result;
}

unint64_t sub_1DB04217C()
{
  result = qword_1ECC0F5F8;
  if (!qword_1ECC0F5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F5F0, &qword_1DB0B2D80);
    sub_1DAFEA408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F5F8);
  }

  return result;
}

unint64_t sub_1DB042200()
{
  result = qword_1ECC0F608;
  if (!qword_1ECC0F608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F5F0, &qword_1DB0B2D80);
    sub_1DAFEA608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F608);
  }

  return result;
}

uint64_t sub_1DB042284(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1DAF40674(result, a2);
  }

  return result;
}

unint64_t sub_1DB0422C4()
{
  result = qword_1ECC0F618;
  if (!qword_1ECC0F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F618);
  }

  return result;
}

unint64_t sub_1DB042318()
{
  result = qword_1ECC0F620;
  if (!qword_1ECC0F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F620);
  }

  return result;
}

uint64_t sub_1DB04236C(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1DAF40780(result, a2);
  }

  return result;
}

unint64_t sub_1DB042414()
{
  result = qword_1ECC0F648;
  if (!qword_1ECC0F648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F648);
  }

  return result;
}

uint64_t sub_1DB042468(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F628, &qword_1DB0B2D98);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB0424E0()
{
  result = qword_1ECC0F660;
  if (!qword_1ECC0F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F660);
  }

  return result;
}

unint64_t sub_1DB042534()
{
  result = qword_1ECC0F668;
  if (!qword_1ECC0F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F668);
  }

  return result;
}

unint64_t sub_1DB0425E4()
{
  result = qword_1ECC0F678;
  if (!qword_1ECC0F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F678);
  }

  return result;
}

uint64_t sub_1DB042638(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1DB042688()
{
  result = qword_1ECC0F690;
  if (!qword_1ECC0F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F690);
  }

  return result;
}

unint64_t sub_1DB0426DC()
{
  result = qword_1ECC0F6A8;
  if (!qword_1ECC0F6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F6B0, &qword_1DB0B2DE0);
    sub_1DB042760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F6A8);
  }

  return result;
}

unint64_t sub_1DB042760()
{
  result = qword_1ECC0F6B8;
  if (!qword_1ECC0F6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F6B8);
  }

  return result;
}

uint64_t sub_1DB0427B4(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F698, &qword_1DB0B2DD8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB042838()
{
  result = qword_1EE300A28;
  if (!qword_1EE300A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F6B0, &qword_1DB0B2DE0);
    sub_1DB0428BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE300A28);
  }

  return result;
}

unint64_t sub_1DB0428BC()
{
  result = qword_1EE303240;
  if (!qword_1EE303240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE303240);
  }

  return result;
}

unint64_t sub_1DB042910()
{
  result = qword_1EE302DC0;
  if (!qword_1EE302DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302DC0);
  }

  return result;
}

unint64_t sub_1DB0429CC()
{
  result = qword_1ECC0F708;
  if (!qword_1ECC0F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F708);
  }

  return result;
}

unint64_t sub_1DB042A20()
{
  result = qword_1ECC0F710;
  if (!qword_1ECC0F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F710);
  }

  return result;
}

unint64_t sub_1DB042A74()
{
  result = qword_1ECC0F718;
  if (!qword_1ECC0F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F718);
  }

  return result;
}

unint64_t sub_1DB042AC8()
{
  result = qword_1EE301ED0;
  if (!qword_1EE301ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301ED0);
  }

  return result;
}

uint64_t sub_1DB042B1C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1DB042B2C()
{
  result = qword_1EE303258[0];
  if (!qword_1EE303258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE303258);
  }

  return result;
}

unint64_t sub_1DB042B80()
{
  result = qword_1EE302DF0;
  if (!qword_1EE302DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302DF0);
  }

  return result;
}

unint64_t sub_1DB042C3C()
{
  result = qword_1ECC0F730;
  if (!qword_1ECC0F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F730);
  }

  return result;
}

unint64_t sub_1DB042C90()
{
  result = qword_1ECC0F738;
  if (!qword_1ECC0F738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0E430, &unk_1DB0A0550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F738);
  }

  return result;
}

unint64_t sub_1DB042D0C()
{
  result = qword_1ECC0F740;
  if (!qword_1ECC0F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F740);
  }

  return result;
}

unint64_t sub_1DB042D60()
{
  result = qword_1EE302DE8;
  if (!qword_1EE302DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302DE8);
  }

  return result;
}

unint64_t sub_1DB042DB4()
{
  result = qword_1EE301948;
  if (!qword_1EE301948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F750, &qword_1DB0B2E48);
    sub_1DB042E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301948);
  }

  return result;
}

unint64_t sub_1DB042E38()
{
  result = qword_1EE302DC8;
  if (!qword_1EE302DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302DC8);
  }

  return result;
}

unint64_t sub_1DB042E8C()
{
  result = qword_1EE301960;
  if (!qword_1EE301960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F758, &qword_1DB0B2E50);
    sub_1DB042F18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301960);
  }

  return result;
}

unint64_t sub_1DB042F18()
{
  result = qword_1EE301920;
  if (!qword_1EE301920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F760, &qword_1DB0B2E58);
    sub_1DB042F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301920);
  }

  return result;
}

unint64_t sub_1DB042F9C()
{
  result = qword_1EE301950;
  if (!qword_1EE301950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F768, &unk_1DB0B2E60);
    sub_1DB043020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301950);
  }

  return result;
}

unint64_t sub_1DB043020()
{
  result = qword_1EE302DD0;
  if (!qword_1EE302DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302DD0);
  }

  return result;
}

unint64_t sub_1DB043074()
{
  result = qword_1EE301EB0;
  if (!qword_1EE301EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301EB0);
  }

  return result;
}

unint64_t sub_1DB0430C8()
{
  result = qword_1EE301D18[0];
  if (!qword_1EE301D18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE301D18);
  }

  return result;
}

unint64_t sub_1DB04311C()
{
  result = qword_1EE301968;
  if (!qword_1EE301968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F770, &unk_1DB0B2E70);
    sub_1DB0431A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301968);
  }

  return result;
}

unint64_t sub_1DB0431A8()
{
  result = qword_1EE302DA0;
  if (!qword_1EE302DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302DA0);
  }

  return result;
}

unint64_t sub_1DB0431FC()
{
  result = qword_1ECC0F780;
  if (!qword_1ECC0F780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0E7C0, &qword_1DB0A51B0);
    sub_1DB043280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F780);
  }

  return result;
}

unint64_t sub_1DB043280()
{
  result = qword_1ECC0F788;
  if (!qword_1ECC0F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F788);
  }

  return result;
}

unint64_t sub_1DB0432D4()
{
  result = qword_1ECC0F790;
  if (!qword_1ECC0F790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F750, &qword_1DB0B2E48);
    sub_1DB043358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F790);
  }

  return result;
}

unint64_t sub_1DB043358()
{
  result = qword_1ECC0F798;
  if (!qword_1ECC0F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F798);
  }

  return result;
}

unint64_t sub_1DB0433AC()
{
  result = qword_1ECC0F7A0;
  if (!qword_1ECC0F7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F758, &qword_1DB0B2E50);
    sub_1DB043438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F7A0);
  }

  return result;
}

unint64_t sub_1DB043438()
{
  result = qword_1ECC0F7A8;
  if (!qword_1ECC0F7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F760, &qword_1DB0B2E58);
    sub_1DB0434BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F7A8);
  }

  return result;
}

unint64_t sub_1DB0434BC()
{
  result = qword_1ECC0F7B0;
  if (!qword_1ECC0F7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F768, &unk_1DB0B2E60);
    sub_1DB043540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F7B0);
  }

  return result;
}

unint64_t sub_1DB043540()
{
  result = qword_1ECC0F7B8;
  if (!qword_1ECC0F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F7B8);
  }

  return result;
}

unint64_t sub_1DB043594()
{
  result = qword_1ECC0F7C0;
  if (!qword_1ECC0F7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F7C0);
  }

  return result;
}

unint64_t sub_1DB0435E8()
{
  result = qword_1ECC0F7D0;
  if (!qword_1ECC0F7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F7C8, &qword_1DB0B2E88);
    sub_1DB0427B4(&qword_1ECC0F6A0, sub_1DB0426DC, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F7D0);
  }

  return result;
}

unint64_t sub_1DB0436A4()
{
  result = qword_1EE301EC8;
  if (!qword_1EE301EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301EC8);
  }

  return result;
}

unint64_t sub_1DB04378C()
{
  result = qword_1ECC0F7E8;
  if (!qword_1ECC0F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F7E8);
  }

  return result;
}

unint64_t sub_1DB0437E0()
{
  result = qword_1ECC0F7F0;
  if (!qword_1ECC0F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F7F0);
  }

  return result;
}

unint64_t sub_1DB043860()
{
  result = qword_1EE300BB8[0];
  if (!qword_1EE300BB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE300BB8);
  }

  return result;
}

unint64_t sub_1DB0438E0()
{
  result = qword_1ECC0F7F8;
  if (!qword_1ECC0F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F7F8);
  }

  return result;
}

unint64_t sub_1DB043938()
{
  result = qword_1ECC0F800;
  if (!qword_1ECC0F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F800);
  }

  return result;
}

unint64_t sub_1DB043990()
{
  result = qword_1ECC0F808;
  if (!qword_1ECC0F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F808);
  }

  return result;
}

unint64_t sub_1DB0439E8()
{
  result = qword_1ECC0F810;
  if (!qword_1ECC0F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F810);
  }

  return result;
}

unint64_t sub_1DB043A40()
{
  result = qword_1ECC0F818;
  if (!qword_1ECC0F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F818);
  }

  return result;
}

unint64_t sub_1DB043A98()
{
  result = qword_1ECC0F820;
  if (!qword_1ECC0F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F820);
  }

  return result;
}

unint64_t sub_1DB043AF0()
{
  result = qword_1ECC0F828;
  if (!qword_1ECC0F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F828);
  }

  return result;
}

unint64_t sub_1DB043B48()
{
  result = qword_1ECC0F830;
  if (!qword_1ECC0F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F830);
  }

  return result;
}

unint64_t sub_1DB043BC8()
{
  result = qword_1ECC0F838;
  if (!qword_1ECC0F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F838);
  }

  return result;
}

uint64_t sub_1DB043C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DB043C84()
{
  result = qword_1EE3014C0;
  if (!qword_1EE3014C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3014C0);
  }

  return result;
}

unint64_t sub_1DB043CDC()
{
  result = qword_1ECC0F840;
  if (!qword_1ECC0F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F840);
  }

  return result;
}

unint64_t sub_1DB043D34()
{
  result = qword_1ECC0F848;
  if (!qword_1ECC0F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F848);
  }

  return result;
}

unint64_t sub_1DB043D8C()
{
  result = qword_1ECC0F850;
  if (!qword_1ECC0F850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F850);
  }

  return result;
}

unint64_t sub_1DB043DE4()
{
  result = qword_1ECC0F858;
  if (!qword_1ECC0F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F858);
  }

  return result;
}

unint64_t sub_1DB043E3C()
{
  result = qword_1ECC0F860;
  if (!qword_1ECC0F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F860);
  }

  return result;
}

unint64_t sub_1DB043E94()
{
  result = qword_1ECC0F868;
  if (!qword_1ECC0F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F868);
  }

  return result;
}

unint64_t sub_1DB043EEC()
{
  result = qword_1ECC0F870;
  if (!qword_1ECC0F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F870);
  }

  return result;
}

unint64_t sub_1DB043F44()
{
  result = qword_1ECC0F878;
  if (!qword_1ECC0F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F878);
  }

  return result;
}

unint64_t sub_1DB043F9C()
{
  result = qword_1ECC0F880;
  if (!qword_1ECC0F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F880);
  }

  return result;
}

unint64_t sub_1DB043FF4()
{
  result = qword_1EE3014F0;
  if (!qword_1EE3014F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3014F0);
  }

  return result;
}

unint64_t sub_1DB04404C()
{
  result = qword_1ECC0F888;
  if (!qword_1ECC0F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F888);
  }

  return result;
}

unint64_t sub_1DB0440A4()
{
  result = qword_1ECC0F890;
  if (!qword_1ECC0F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F890);
  }

  return result;
}

uint64_t sub_1DB044274(uint64_t a1, int a2)
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

uint64_t sub_1DB0442BC(uint64_t result, int a2, int a3)
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

uint64_t sub_1DB044320(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DB044368(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17CoreODIEssentials16ProfileSetObjectV0c3BagD0V0cF0VSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DB0443EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_1DB044434(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1DB0444E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB044528(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DB0445A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB0445EC(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of EncapsulatingProfile.resolvedConfig()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DAF62CC4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of EncapsulatingProfile.encapsulatingConfig()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 64) + **(a3 + 64));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DAF63DEC;

  return v9(a1, a2, a3);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1DB044918(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1DB044960(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB0449B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB0449FC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for ArmandDeviceDataFieldName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArmandDeviceDataFieldName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DB044C54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
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

uint64_t sub_1DB044C9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1DB044D40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB044D88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB044E1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1DB044E64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssessmentConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssessmentConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DB045134(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 329))
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

uint64_t sub_1DB045190(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 328) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 329) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 329) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy209_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DB045290(uint64_t a1, int a2)
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

uint64_t sub_1DB0452D8(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DB045374(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1DB0453D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_1DB045440()
{
  result = qword_1ECC0F898;
  if (!qword_1ECC0F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F898);
  }

  return result;
}

unint64_t sub_1DB045498()
{
  result = qword_1ECC0F8A0;
  if (!qword_1ECC0F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F8A0);
  }

  return result;
}

unint64_t sub_1DB0454F0()
{
  result = qword_1ECC0F8A8;
  if (!qword_1ECC0F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F8A8);
  }

  return result;
}

unint64_t sub_1DB045548()
{
  result = qword_1ECC0F8B0;
  if (!qword_1ECC0F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F8B0);
  }

  return result;
}

unint64_t sub_1DB0455A0()
{
  result = qword_1ECC0F8B8;
  if (!qword_1ECC0F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F8B8);
  }

  return result;
}

unint64_t sub_1DB0455F8()
{
  result = qword_1ECC0F8C0;
  if (!qword_1ECC0F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F8C0);
  }

  return result;
}

unint64_t sub_1DB045650()
{
  result = qword_1ECC0F8C8;
  if (!qword_1ECC0F8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F8C8);
  }

  return result;
}

unint64_t sub_1DB0456A8()
{
  result = qword_1ECC0F8D0;
  if (!qword_1ECC0F8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F8D0);
  }

  return result;
}

unint64_t sub_1DB045700()
{
  result = qword_1ECC0F8D8;
  if (!qword_1ECC0F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F8D8);
  }

  return result;
}

unint64_t sub_1DB045758()
{
  result = qword_1ECC0F8E0;
  if (!qword_1ECC0F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F8E0);
  }

  return result;
}

unint64_t sub_1DB0457B0()
{
  result = qword_1ECC0F8E8;
  if (!qword_1ECC0F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F8E8);
  }

  return result;
}

unint64_t sub_1DB045808()
{
  result = qword_1ECC0F8F0;
  if (!qword_1ECC0F8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F8F0);
  }

  return result;
}

unint64_t sub_1DB045860()
{
  result = qword_1ECC0F8F8;
  if (!qword_1ECC0F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F8F8);
  }

  return result;
}

unint64_t sub_1DB0458B8()
{
  result = qword_1ECC0F900;
  if (!qword_1ECC0F900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F900);
  }

  return result;
}

unint64_t sub_1DB045910()
{
  result = qword_1ECC0F908;
  if (!qword_1ECC0F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F908);
  }

  return result;
}

unint64_t sub_1DB045968()
{
  result = qword_1ECC0F910;
  if (!qword_1ECC0F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F910);
  }

  return result;
}

unint64_t sub_1DB0459C0()
{
  result = qword_1EE301EB8;
  if (!qword_1EE301EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301EB8);
  }

  return result;
}

unint64_t sub_1DB045A18()
{
  result = qword_1EE301EC0;
  if (!qword_1EE301EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301EC0);
  }

  return result;
}

unint64_t sub_1DB045A70()
{
  result = qword_1EE302DD8;
  if (!qword_1EE302DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302DD8);
  }

  return result;
}

unint64_t sub_1DB045AC8()
{
  result = qword_1EE302DE0;
  if (!qword_1EE302DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302DE0);
  }

  return result;
}

unint64_t sub_1DB045B20()
{
  result = qword_1EE303248;
  if (!qword_1EE303248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE303248);
  }

  return result;
}

unint64_t sub_1DB045B78()
{
  result = qword_1EE303250;
  if (!qword_1EE303250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE303250);
  }

  return result;
}

unint64_t sub_1DB045BD0()
{
  result = qword_1ECC0F918;
  if (!qword_1ECC0F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F918);
  }

  return result;
}

unint64_t sub_1DB045C28()
{
  result = qword_1ECC0F920;
  if (!qword_1ECC0F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F920);
  }

  return result;
}

unint64_t sub_1DB045C80()
{
  result = qword_1ECC0F928;
  if (!qword_1ECC0F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F928);
  }

  return result;
}

unint64_t sub_1DB045CD8()
{
  result = qword_1ECC0F930;
  if (!qword_1ECC0F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F930);
  }

  return result;
}

unint64_t sub_1DB045D30()
{
  result = qword_1ECC0F938;
  if (!qword_1ECC0F938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F938);
  }

  return result;
}

unint64_t sub_1DB045D88()
{
  result = qword_1ECC0F940;
  if (!qword_1ECC0F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F940);
  }

  return result;
}

unint64_t sub_1DB045DE0()
{
  result = qword_1EE302DB0;
  if (!qword_1EE302DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302DB0);
  }

  return result;
}

unint64_t sub_1DB045E38()
{
  result = qword_1EE302DB8;
  if (!qword_1EE302DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302DB8);
  }

  return result;
}

unint64_t sub_1DB045E90()
{
  result = qword_1ECC0F948;
  if (!qword_1ECC0F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F948);
  }

  return result;
}

unint64_t sub_1DB045EE8()
{
  result = qword_1ECC0F950;
  if (!qword_1ECC0F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F950);
  }

  return result;
}

unint64_t sub_1DB045F40()
{
  result = qword_1ECC0F958;
  if (!qword_1ECC0F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F958);
  }

  return result;
}

unint64_t sub_1DB045F98()
{
  result = qword_1ECC0F960;
  if (!qword_1ECC0F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F960);
  }

  return result;
}

unint64_t sub_1DB045FF0()
{
  result = qword_1EE301DF0;
  if (!qword_1EE301DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301DF0);
  }

  return result;
}

unint64_t sub_1DB046048()
{
  result = qword_1EE301DF8;
  if (!qword_1EE301DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301DF8);
  }

  return result;
}

unint64_t sub_1DB0460A0()
{
  result = qword_1ECC0F968;
  if (!qword_1ECC0F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F968);
  }

  return result;
}

unint64_t sub_1DB0460F8()
{
  result = qword_1ECC0F970;
  if (!qword_1ECC0F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F970);
  }

  return result;
}

unint64_t sub_1DB046150()
{
  result = qword_1ECC0F978;
  if (!qword_1ECC0F978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F978);
  }

  return result;
}

unint64_t sub_1DB0461A8()
{
  result = qword_1ECC0F980;
  if (!qword_1ECC0F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F980);
  }

  return result;
}

unint64_t sub_1DB046200()
{
  result = qword_1ECC0F988;
  if (!qword_1ECC0F988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F988);
  }

  return result;
}

unint64_t sub_1DB046258()
{
  result = qword_1ECC0F990;
  if (!qword_1ECC0F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F990);
  }

  return result;
}

unint64_t sub_1DB0462B0()
{
  result = qword_1ECC0F998;
  if (!qword_1ECC0F998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F998);
  }

  return result;
}

unint64_t sub_1DB046308()
{
  result = qword_1ECC0F9A0;
  if (!qword_1ECC0F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F9A0);
  }

  return result;
}

unint64_t sub_1DB046360()
{
  result = qword_1EE302180;
  if (!qword_1EE302180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302180);
  }

  return result;
}

unint64_t sub_1DB0463B8()
{
  result = qword_1EE302188;
  if (!qword_1EE302188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302188);
  }

  return result;
}

unint64_t sub_1DB046410()
{
  result = qword_1EE302D68;
  if (!qword_1EE302D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302D68);
  }

  return result;
}

unint64_t sub_1DB046468()
{
  result = qword_1EE302D70;
  if (!qword_1EE302D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302D70);
  }

  return result;
}

uint64_t sub_1DB0464BC(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      sub_1DAF40674(v5, *v3);
      sub_1DB081398(v7, v5, v4);
      sub_1DAF40780(v7[0], v7[1]);
      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

unint64_t sub_1DB046540(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB09E004();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DB04658C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61737265766E6F63 && a2 == 0xEE0064496E6F6974;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4974736575716572 && a2 == 0xE900000000000064 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEA00000000006449 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564 || (sub_1DB09E254() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7574617453627573 && a2 == 0xED000065646F4373 || (sub_1DB09E254() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x654D737574617473 && a2 == 0xED00006567617373)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DB09E254();

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

uint64_t sub_1DB0467B4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F9F0, &qword_1DB0B6848);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB04966C();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v43[0]) = 0;
  v9 = sub_1DB09E044();
  v11 = v10;
  LOBYTE(v43[0]) = 1;
  v34 = sub_1DB09E084();
  v36 = v12;
  LOBYTE(v43[0]) = 2;
  v13 = sub_1DB09E084();
  v35 = v14;
  v31 = v13;
  LOBYTE(v43[0]) = 3;
  v30 = sub_1DB09E084();
  v33 = v15;
  LOBYTE(v43[0]) = 4;
  v29 = sub_1DB09E044();
  v32 = v16;
  v44 = 5;
  v17 = sub_1DB09E044();
  v18 = *(v6 + 8);
  v19 = v17;
  v28 = v20;
  v18(v8, v5);
  *&v37 = v9;
  *(&v37 + 1) = v11;
  *&v38 = v34;
  *(&v38 + 1) = v36;
  *&v39 = v31;
  *(&v39 + 1) = v35;
  *&v40 = v30;
  v21 = v33;
  *(&v40 + 1) = v33;
  *&v41 = v29;
  v22 = v32;
  *(&v41 + 1) = v32;
  *&v42 = v19;
  v23 = v28;
  *(&v42 + 1) = v28;
  sub_1DB0496C0(&v37, v43);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v43[0] = v9;
  v43[1] = v11;
  v43[2] = v34;
  v43[3] = v36;
  v43[4] = v31;
  v43[5] = v35;
  v43[6] = v30;
  v43[7] = v21;
  v43[8] = v29;
  v43[9] = v22;
  v43[10] = v19;
  v43[11] = v23;
  result = sub_1DB0495E8(v43);
  v25 = v40;
  a2[2] = v39;
  a2[3] = v25;
  v26 = v42;
  a2[4] = v41;
  a2[5] = v26;
  v27 = v38;
  *a2 = v37;
  a2[1] = v27;
  return result;
}

uint64_t sub_1DB046C50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7A69726F68747561 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656369766564 && a2 == 0xE800000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E49746E65696C63 && a2 == 0xEA00000000006F66)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DB09E254();

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

uint64_t sub_1DB046D78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001DB0CABD0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x42656C69666F7270 && a2 == 0xEF64497465536761 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DB0CABF0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DB0C1F00 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DB0CAC10 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_1DB09E254();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1DB046F3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x776F6C666B726F77 && a2 == 0xEA00000000006449;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49656C69666F7270 && a2 == 0xE900000000000064 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DB0CAD80 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E65674172657375 && a2 == 0xE900000000000074 || (sub_1DB09E254() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DB0C14B0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001DB0CADA0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000002DLL && 0x80000001DB0CADD0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x42676E697373696DLL && a2 == 0xEF73676E69646E69 || (sub_1DB09E254() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DB0CAE00 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DB0CAE20 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6567416568636163 && a2 == 0xE800000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6563697665447369 && a2 == 0xEE0064656B636F4CLL)
  {

    return 11;
  }

  else
  {
    v6 = sub_1DB09E254();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1DB04731C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6C79615069646FLL && a2 == 0xEA00000000006461;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7364656573 && a2 == 0xE500000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666E49726F727265 && a2 == 0xE90000000000006FLL || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697469646461 && a2 == 0xEE006F666E496C61)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DB09E254();

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

uint64_t sub_1DB047494(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53656C69666F7270 && a2 == 0xEC00000064497465;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x42656C69666F7270 && a2 == 0xEF64497465536761 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DB0CABF0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DB0C1F00 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D614E676162 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DB09E254();

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

uint64_t sub_1DB047660(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001DB0CAF30 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461645F617564 && a2 == 0xE800000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7364656573 && a2 == 0xE500000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xEB0000000064695FLL || (sub_1DB09E254() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5F656C69666F7270 && a2 == 0xEA00000000006469 || (sub_1DB09E254() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DB0CAF50 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001DB0CAF70 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x5F656C69666F7270 && a2 == 0xEE0064695F746573 || (sub_1DB09E254() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DB0CAF90 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB0C13C0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001DB0C1420 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000033 && 0x80000001DB0C13E0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x5F64616F6C796170 && a2 == 0xEE006572756E6574)
  {

    return 13;
  }

  else
  {
    v5 = sub_1DB09E254();

    if (v5)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_1DB047AC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F7272655F766469 && a2 == 0xE900000000000072;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F7272655F6E646FLL && a2 == 0xE900000000000072 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xEB0000000064695FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DB09E254();

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

uint64_t sub_1DB047BF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FA40, &qword_1DB0B6888);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB049990();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v22 = 0;
  v9 = sub_1DB09E0B4();
  v21 = 1;
  v10 = sub_1DB09E064();
  v19 = v11;
  v18 = v10;
  v20 = 2;
  v12 = sub_1DB09E044();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v16 = v18;
  *a2 = v9;
  *(a2 + 8) = v16;
  *(a2 + 16) = v19 & 1;
  *(a2 + 24) = v12;
  *(a2 + 32) = v14;
  return result;
}

uint64_t sub_1DB047DE4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632436 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5F6E6F6973736573 && a2 == 0xEA00000000006469 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65636E6F6E5F7374 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DB09E254();

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

uint64_t sub_1DB047F04(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FC68, &qword_1DB0B7E68);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB04B968();
  sub_1DB09E414();
  if (!v1)
  {
    v9[15] = 0;
    v7 = sub_1DB09E084();
    v9[14] = 1;
    sub_1DB09E0B4();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

uint64_t sub_1DB0480DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461645F617564 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7079745F6B736174 && a2 == 0xE900000000000065 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB0C13C0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DB09E254();

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

uint64_t sub_1DB048250(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F635F64697374 && a2 == 0xEE0072656E696174;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7364656573 && a2 == 0xE500000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DB0C1480 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xEB0000000064695FLL || (sub_1DB09E254() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617461645F617564 && a2 == 0xEC0000006775615FLL || (sub_1DB09E254() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB0C13C0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001DB0CAE40 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000030 && 0x80000001DB0CAE70 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6B63616264656566 && a2 == 0xEF676E696D69745FLL || (sub_1DB09E254() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6B63616264656566 && a2 == 0xED0000657079745FLL || (sub_1DB09E254() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB0CAEB0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DB0CAED0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DB0CAEF0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DB0CAF10 == a2)
  {

    return 15;
  }

  else
  {
    v6 = sub_1DB09E254();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

unint64_t sub_1DB04875C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB09E004();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DB0487A8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001DB0CAC30 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DB0CAC50 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696C6C694D616C73 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1DB09E254();

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

unint64_t sub_1DB0488D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB09E004();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DB04891C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E646C656966 && a2 == 0xE900000000000065 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4D74756F656D6974 && a2 == 0xEC000000696C6C69 || (sub_1DB09E254() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x67656C6976697270 && a2 == 0xEA00000000006465)
  {

    return 5;
  }

  else
  {
    v5 = sub_1DB09E254();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1DB048B30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E646C656966 && a2 == 0xE900000000000065 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DB09E254();

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

uint64_t sub_1DB048C54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FBA8, &qword_1DB0B7760);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB04AD34();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v25 = 0;
  v9 = sub_1DB09E044();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_1DB09E044();
  v21 = v12;
  v23 = 2;
  v13 = sub_1DB09E044();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

char *sub_1DB048E9C(void *a1)
{
  v2 = v1;
  v3 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB09E3F4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v16, v17);
    if (sub_1DB09E204())
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
      v11 = v3;
      do
      {
        __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
        sub_1DB0428BC();
        sub_1DB09E1F4();
        v12 = v14[2];
        v13 = v14[3];
        v14[0] = v15[0];
        *(v14 + 10) = *(v15 + 10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1DAF7315C(0, *(v2 + 2) + 1, 1, v2);
        }

        v5 = *(v2 + 2);
        v4 = *(v2 + 3);
        if (v5 >= v4 >> 1)
        {
          v2 = sub_1DAF7315C((v4 > 1), v5 + 1, 1, v2);
        }

        *(v2 + 2) = v5 + 1;
        v6 = &v2[64 * v5];
        v7 = v12;
        v8 = v13;
        v9 = v14[0];
        *(v6 + 74) = *(v14 + 10);
        *(v6 + 3) = v8;
        *(v6 + 4) = v9;
        *(v6 + 2) = v7;
        __swift_project_boxed_opaque_existential_1(v16, v17);
        v3 = v11;
      }

      while ((sub_1DB09E204() & 1) == 0);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  return v2;
}

unint64_t sub_1DB04929C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB09E004();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DB0492E8()
{
  result = qword_1ECC0F9A8;
  if (!qword_1ECC0F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F9A8);
  }

  return result;
}

unint64_t sub_1DB04933C()
{
  result = qword_1ECC0F9B0;
  if (!qword_1ECC0F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F9B0);
  }

  return result;
}

uint64_t sub_1DB049390(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 6582895 && a2 == 0xE300000000000000;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6583407 && a2 == 0xE300000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6581359 && a2 == 0xE300000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DB0CACD0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DB09E254();

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

unint64_t sub_1DB0494EC()
{
  result = qword_1ECC0F9C0;
  if (!qword_1ECC0F9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F9C0);
  }

  return result;
}

unint64_t sub_1DB049540()
{
  result = qword_1ECC0F9D0;
  if (!qword_1ECC0F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F9D0);
  }

  return result;
}

unint64_t sub_1DB049594()
{
  result = qword_1ECC0F9D8;
  if (!qword_1ECC0F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F9D8);
  }

  return result;
}

unint64_t sub_1DB049618()
{
  result = qword_1ECC0F9E8;
  if (!qword_1ECC0F9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F9E8);
  }

  return result;
}

unint64_t sub_1DB04966C()
{
  result = qword_1ECC0F9F8;
  if (!qword_1ECC0F9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F9F8);
  }

  return result;
}

unint64_t sub_1DB0496F8()
{
  result = qword_1EE3011C0;
  if (!qword_1EE3011C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3011C0);
  }

  return result;
}

uint64_t sub_1DB04974C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
  }

  return result;
}

unint64_t sub_1DB049760()
{
  result = qword_1ECC0FA10;
  if (!qword_1ECC0FA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FA10);
  }

  return result;
}

unint64_t sub_1DB0497EC()
{
  result = qword_1EE301358;
  if (!qword_1EE301358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301358);
  }

  return result;
}

unint64_t sub_1DB049840()
{
  result = qword_1EE300ED0;
  if (!qword_1EE300ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE300ED0);
  }

  return result;
}

unint64_t sub_1DB049894()
{
  result = qword_1EE300EE8;
  if (!qword_1EE300EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE300EE8);
  }

  return result;
}

unint64_t sub_1DB0498E8()
{
  result = qword_1ECC0FA30;
  if (!qword_1ECC0FA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FA30);
  }

  return result;
}

unint64_t sub_1DB04993C()
{
  result = qword_1EE301818;
  if (!qword_1EE301818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301818);
  }

  return result;
}

unint64_t sub_1DB049990()
{
  result = qword_1EE301808;
  if (!qword_1EE301808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301808);
  }

  return result;
}

unint64_t sub_1DB0499E4()
{
  result = qword_1ECC0FA58;
  if (!qword_1ECC0FA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FA58);
  }

  return result;
}

unint64_t sub_1DB049A38()
{
  result = qword_1ECC0FA68;
  if (!qword_1ECC0FA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0FA60, &qword_1DB0B68A0);
    sub_1DB049B94(&qword_1ECC0FA70, v1, type metadata accessor for AppleCredentials, &unk_1DB0B6178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FA68);
  }

  return result;
}

unint64_t sub_1DB049AEC()
{
  result = qword_1ECC0FA88;
  if (!qword_1ECC0FA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FA88);
  }

  return result;
}

unint64_t sub_1DB049B40()
{
  result = qword_1ECC0FAA0;
  if (!qword_1ECC0FAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FAA0);
  }

  return result;
}

uint64_t sub_1DB049B94(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1DB049BDC()
{
  result = qword_1ECC0FAC0;
  if (!qword_1ECC0FAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FAC0);
  }

  return result;
}

unint64_t sub_1DB049C30()
{
  result = qword_1ECC0FAC8;
  if (!qword_1ECC0FAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FAC8);
  }

  return result;
}

unint64_t sub_1DB049C84()
{
  result = qword_1ECC0FAD0;
  if (!qword_1ECC0FAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FAD0);
  }

  return result;
}

unint64_t sub_1DB049CD8()
{
  result = qword_1ECC0FAD8;
  if (!qword_1ECC0FAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FAD8);
  }

  return result;
}

unint64_t sub_1DB049D2C()
{
  result = qword_1ECC0FAE0;
  if (!qword_1ECC0FAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FAE0);
  }

  return result;
}

unint64_t sub_1DB049D80()
{
  result = qword_1ECC0FAE8;
  if (!qword_1ECC0FAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FAE8);
  }

  return result;
}

unint64_t sub_1DB049DD4()
{
  result = qword_1EE301ED8;
  if (!qword_1EE301ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301ED8);
  }

  return result;
}

unint64_t sub_1DB049E28()
{
  result = qword_1EE302DF8[0];
  if (!qword_1EE302DF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE302DF8);
  }

  return result;
}

unint64_t sub_1DB049E7C()
{
  result = qword_1ECC0FAF0;
  if (!qword_1ECC0FAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FAF0);
  }

  return result;
}

unint64_t sub_1DB049ED0()
{
  result = qword_1EE304360;
  if (!qword_1EE304360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE304360);
  }

  return result;
}

uint64_t sub_1DB049F44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1DB049F8C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1DB04A00C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_1DB04A054(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB04A138(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_1DB04A194(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1DB04A20C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 273))
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

uint64_t sub_1DB04A254(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
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
    *(result + 272) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 273) = 1;
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

    *(result + 273) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB04A2F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 368))
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

uint64_t sub_1DB04A33C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 360) = 0;
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
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 368) = 1;
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

    *(result + 368) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DB04A3F0()
{
  result = qword_1ECC0FB00;
  if (!qword_1ECC0FB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB00);
  }

  return result;
}

unint64_t sub_1DB04A448()
{
  result = qword_1ECC0FB08;
  if (!qword_1ECC0FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB08);
  }

  return result;
}

unint64_t sub_1DB04A4A0()
{
  result = qword_1ECC0FB10;
  if (!qword_1ECC0FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB10);
  }

  return result;
}

unint64_t sub_1DB04A4F8()
{
  result = qword_1ECC0FB18;
  if (!qword_1ECC0FB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB18);
  }

  return result;
}

unint64_t sub_1DB04A550()
{
  result = qword_1ECC0FB20;
  if (!qword_1ECC0FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB20);
  }

  return result;
}

unint64_t sub_1DB04A5A8()
{
  result = qword_1ECC0FB28;
  if (!qword_1ECC0FB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB28);
  }

  return result;
}

unint64_t sub_1DB04A600()
{
  result = qword_1ECC0FB30;
  if (!qword_1ECC0FB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB30);
  }

  return result;
}

unint64_t sub_1DB04A658()
{
  result = qword_1ECC0FB38;
  if (!qword_1ECC0FB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB38);
  }

  return result;
}

unint64_t sub_1DB04A6B0()
{
  result = qword_1ECC0FB40;
  if (!qword_1ECC0FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB40);
  }

  return result;
}

unint64_t sub_1DB04A708()
{
  result = qword_1ECC0FB48;
  if (!qword_1ECC0FB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB48);
  }

  return result;
}

unint64_t sub_1DB04A760()
{
  result = qword_1ECC0FB50;
  if (!qword_1ECC0FB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB50);
  }

  return result;
}

unint64_t sub_1DB04A7B8()
{
  result = qword_1ECC0FB58;
  if (!qword_1ECC0FB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB58);
  }

  return result;
}

unint64_t sub_1DB04A810()
{
  result = qword_1ECC0FB60;
  if (!qword_1ECC0FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB60);
  }

  return result;
}

unint64_t sub_1DB04A868()
{
  result = qword_1EE3017F8;
  if (!qword_1EE3017F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3017F8);
  }

  return result;
}

unint64_t sub_1DB04A8C0()
{
  result = qword_1EE301800;
  if (!qword_1EE301800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301800);
  }

  return result;
}

unint64_t sub_1DB04A918()
{
  result = qword_1EE300ED8;
  if (!qword_1EE300ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE300ED8);
  }

  return result;
}

unint64_t sub_1DB04A970()
{
  result = qword_1EE300EE0;
  if (!qword_1EE300EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE300EE0);
  }

  return result;
}

unint64_t sub_1DB04A9C8()
{
  result = qword_1EE3011B0;
  if (!qword_1EE3011B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3011B0);
  }

  return result;
}

unint64_t sub_1DB04AA20()
{
  result = qword_1EE3011B8;
  if (!qword_1EE3011B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3011B8);
  }

  return result;
}

unint64_t sub_1DB04AA78()
{
  result = qword_1ECC0FB68;
  if (!qword_1ECC0FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB68);
  }

  return result;
}

unint64_t sub_1DB04AAD0()
{
  result = qword_1ECC0FB70;
  if (!qword_1ECC0FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB70);
  }

  return result;
}

unint64_t sub_1DB04AB28()
{
  result = qword_1ECC0FB78;
  if (!qword_1ECC0FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB78);
  }

  return result;
}

unint64_t sub_1DB04AB80()
{
  result = qword_1ECC0FB80;
  if (!qword_1ECC0FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB80);
  }

  return result;
}

unint64_t sub_1DB04ABD8()
{
  result = qword_1ECC0FB88;
  if (!qword_1ECC0FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB88);
  }

  return result;
}

unint64_t sub_1DB04AC30()
{
  result = qword_1ECC0FB90;
  if (!qword_1ECC0FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB90);
  }

  return result;
}

unint64_t sub_1DB04AC88()
{
  result = qword_1ECC0FB98;
  if (!qword_1ECC0FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB98);
  }

  return result;
}

unint64_t sub_1DB04ACE0()
{
  result = qword_1ECC0FBA0;
  if (!qword_1ECC0FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FBA0);
  }

  return result;
}

unint64_t sub_1DB04AD34()
{
  result = qword_1ECC0FBB0;
  if (!qword_1ECC0FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FBB0);
  }

  return result;
}

unint64_t sub_1DB04AD88()
{
  result = qword_1EE301850;
  if (!qword_1EE301850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301850);
  }

  return result;
}

unint64_t sub_1DB04ADDC()
{
  result = qword_1EE301718;
  if (!qword_1EE301718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301718);
  }

  return result;
}

unint64_t sub_1DB04AE30()
{
  result = qword_1EE300A38;
  if (!qword_1EE300A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F358, &qword_1DB0AFAC8);
    sub_1DB04AEB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE300A38);
  }

  return result;
}

unint64_t sub_1DB04AEB4()
{
  result = qword_1EE3017D8;
  if (!qword_1EE3017D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3017D8);
  }

  return result;
}

unint64_t sub_1DB04AF08()
{
  result = qword_1ECC0FBC8;
  if (!qword_1ECC0FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FBC8);
  }

  return result;
}

unint64_t sub_1DB04AF5C()
{
  result = qword_1EE304478;
  if (!qword_1EE304478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE304478);
  }

  return result;
}

unint64_t sub_1DB04AFB0()
{
  result = qword_1ECC0FBD8;
  if (!qword_1ECC0FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FBD8);
  }

  return result;
}

unint64_t sub_1DB04B004()
{
  result = qword_1EE304368;
  if (!qword_1EE304368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE304368);
  }

  return result;
}

unint64_t sub_1DB04B058()
{
  result = qword_1EE302930;
  if (!qword_1EE302930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302930);
  }

  return result;
}

unint64_t sub_1DB04B0AC()
{
  result = qword_1EE303428;
  if (!qword_1EE303428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE303428);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ORDRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ORDRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DB04B2A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1DB04B2E8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1DB04B33C()
{
  result = qword_1ECC0FC10;
  if (!qword_1ECC0FC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FC10);
  }

  return result;
}

unint64_t sub_1DB04B394()
{
  result = qword_1ECC0FC18;
  if (!qword_1ECC0FC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FC18);
  }

  return result;
}

unint64_t sub_1DB04B3EC()
{
  result = qword_1ECC0FC20;
  if (!qword_1ECC0FC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FC20);
  }

  return result;
}

unint64_t sub_1DB04B444()
{
  result = qword_1ECC0FC28;
  if (!qword_1ECC0FC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FC28);
  }

  return result;
}

unint64_t sub_1DB04B49C()
{
  result = qword_1ECC0FC30;
  if (!qword_1ECC0FC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FC30);
  }

  return result;
}

unint64_t sub_1DB04B4F4()
{
  result = qword_1ECC0FC38;
  if (!qword_1ECC0FC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FC38);
  }

  return result;
}

unint64_t sub_1DB04B54C()
{
  result = qword_1EE303418;
  if (!qword_1EE303418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE303418);
  }

  return result;
}

unint64_t sub_1DB04B5A4()
{
  result = qword_1EE303420;
  if (!qword_1EE303420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE303420);
  }

  return result;
}

unint64_t sub_1DB04B5FC()
{
  result = qword_1EE302920;
  if (!qword_1EE302920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302920);
  }

  return result;
}

unint64_t sub_1DB04B654()
{
  result = qword_1EE302928;
  if (!qword_1EE302928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302928);
  }

  return result;
}

unint64_t sub_1DB04B6AC()
{
  result = qword_1EE304468;
  if (!qword_1EE304468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE304468);
  }

  return result;
}

unint64_t sub_1DB04B704()
{
  result = qword_1EE304470;
  if (!qword_1EE304470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE304470);
  }

  return result;
}

unint64_t sub_1DB04B75C()
{
  result = qword_1ECC0FC40;
  if (!qword_1ECC0FC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FC40);
  }

  return result;
}

unint64_t sub_1DB04B7B4()
{
  result = qword_1ECC0FC48;
  if (!qword_1ECC0FC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FC48);
  }

  return result;
}

unint64_t sub_1DB04B80C()
{
  result = qword_1EE301840;
  if (!qword_1EE301840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301840);
  }

  return result;
}

unint64_t sub_1DB04B864()
{
  result = qword_1EE301848;
  if (!qword_1EE301848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301848);
  }

  return result;
}

unint64_t sub_1DB04B8BC()
{
  result = qword_1ECC0FC50;
  if (!qword_1ECC0FC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FC50);
  }

  return result;
}

unint64_t sub_1DB04B914()
{
  result = qword_1ECC0FC58;
  if (!qword_1ECC0FC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FC58);
  }

  return result;
}

unint64_t sub_1DB04B968()
{
  result = qword_1EE301730;
  if (!qword_1EE301730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301730);
  }

  return result;
}

unint64_t sub_1DB04B9D0()
{
  result = qword_1ECC0FC70;
  if (!qword_1ECC0FC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FC70);
  }

  return result;
}

unint64_t sub_1DB04BA28()
{
  result = qword_1EE301720;
  if (!qword_1EE301720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301720);
  }

  return result;
}

unint64_t sub_1DB04BA80()
{
  result = qword_1EE301728;
  if (!qword_1EE301728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301728);
  }

  return result;
}

uint64_t Logger.LogCategory.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1DB09E2B4();

  v6 = 18;
  if (v4 < 0x12)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

unint64_t Logger.LogCategory.rawValue.getter()
{
  result = 0x52656C69666F7250;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0x7265746E49495041;
      break;
    case 3:
      result = 0x63614D6574617453;
      break;
    case 4:
      result = 0x6E6F697461636F4CLL;
      break;
    case 5:
      result = 0x6C6C6F4361746144;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD00000000000001FLL;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 0xA:
      result = 0x656E654764697547;
      break;
    case 0xB:
      result = 0xD000000000000012;
      break;
    case 0xC:
      result = 0xD000000000000012;
      break;
    case 0xD:
      result = 0xD000000000000013;
      break;
    case 0xE:
      result = 0x746C7561666544;
      break;
    case 0xF:
      result = 0x6E6F7473656C694DLL;
      break;
    case 0x10:
      result = 0xD000000000000010;
      break;
    case 0x11:
      result = 0x696B726F7774654ELL;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_1DB04BDFC()
{
  v0 = Logger.LogCategory.rawValue.getter();
  v2 = v1;
  if (v0 == Logger.LogCategory.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1DB09E254();
  }

  return v5 & 1;
}

unint64_t sub_1DB04BE9C()
{
  result = qword_1ECC0FC78;
  if (!qword_1ECC0FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FC78);
  }

  return result;
}

uint64_t sub_1DB04BEF0()
{
  sub_1DB09E3A4();
  Logger.LogCategory.rawValue.getter();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB04BF58(uint64_t a1)
{
  Logger.LogCategory.rawValue.getter();
  sub_1DB09D794();
}

uint64_t sub_1DB04BFBC()
{
  sub_1DB09E3A4();
  Logger.LogCategory.rawValue.getter();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

unint64_t sub_1DB04C02C@<X0>(unint64_t *a1@<X8>)
{
  result = Logger.LogCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _s11LogCategoryOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11LogCategoryOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DB04C1A4()
{
  v0 = sub_1DB09D4B4();
  __swift_allocate_value_buffer(v0, qword_1EE30A0B0);
  __swift_project_value_buffer(v0, qword_1EE30A0B0);
  return sub_1DB09D4A4();
}

uint64_t sub_1DB04C2EC()
{
  v0 = sub_1DB09D4B4();
  __swift_allocate_value_buffer(v0, qword_1EE30A0C8);
  __swift_project_value_buffer(v0, qword_1EE30A0C8);
  return sub_1DB09D4A4();
}

uint64_t sub_1DB04C36C()
{
  v0 = sub_1DB09D4B4();
  __swift_allocate_value_buffer(v0, qword_1EE309E20);
  __swift_project_value_buffer(v0, qword_1EE309E20);
  return sub_1DB09D4A4();
}

uint64_t sub_1DB04C3EC()
{
  v0 = sub_1DB09D4B4();
  __swift_allocate_value_buffer(v0, qword_1EE309E38);
  __swift_project_value_buffer(v0, qword_1EE309E38);
  return sub_1DB09D4A4();
}

uint64_t sub_1DB04C46C()
{
  v0 = sub_1DB09D4B4();
  __swift_allocate_value_buffer(v0, qword_1EE309E50);
  __swift_project_value_buffer(v0, qword_1EE309E50);
  return sub_1DB09D4A4();
}

uint64_t sub_1DB04C4EC()
{
  v0 = sub_1DB09D4B4();
  __swift_allocate_value_buffer(v0, qword_1EE309E80);
  __swift_project_value_buffer(v0, qword_1EE309E80);
  return sub_1DB09D4A4();
}

uint64_t sub_1DB04C594()
{
  v0 = sub_1DB09D4B4();
  __swift_allocate_value_buffer(v0, qword_1ECC25E28);
  __swift_project_value_buffer(v0, qword_1ECC25E28);
  return sub_1DB09D4A4();
}

uint64_t sub_1DB04C614()
{
  v0 = sub_1DB09D4B4();
  __swift_allocate_value_buffer(v0, qword_1EE309E68);
  __swift_project_value_buffer(v0, qword_1EE309E68);
  return sub_1DB09D4A4();
}

uint64_t sub_1DB04C700(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1DB09D4B4();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1DB09D4A4();
}

uint64_t sub_1DB04C778()
{
  v0 = sub_1DB09D4B4();
  __swift_allocate_value_buffer(v0, qword_1EE30A080);
  v1 = __swift_project_value_buffer(v0, qword_1EE30A080);
  if (qword_1EE304018 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EE304020);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static ODIAccountManager.shared.getter@<X0>(uint64_t *a2@<X8>)
{
  if (qword_1EE302B50 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE302B58;
  a2[3] = type metadata accessor for ODIAccountManager();
  a2[4] = &protocol witness table for ODIAccountManager;
  *a2 = v3;
}

void *sub_1DB04C8C0(uint64_t a1)
{
  type metadata accessor for ODIAccountManager();
  v1 = swift_allocObject();
  result = sub_1DB04C920();
  qword_1EE302B58 = v1;
  return result;
}

void *sub_1DB04C920()
{
  swift_defaultActor_initialize();
  v0[14] = 0xD000000000000015;
  v0[15] = 0x80000001DB0C1030;
  v0[17] = 0;
  v1 = [objc_opt_self() defaultStore];
  if (!v1)
  {
    v1 = [objc_allocWithZone(MEMORY[0x1E6959A48]) init];
  }

  v0[16] = v1;
  v2 = [v1 aa_primaryAppleAccount];
  v3 = v0[17];
  v0[17] = v2;

  return v0;
}

uint64_t sub_1DB04C9C4()
{
  v1[19] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FC80, &unk_1DB0B89F8);
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB04CA90, v0, 0);
}

uint64_t sub_1DB04CA90()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  v11 = *(v1[19] + 128);
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_1DB04CC60;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FC88, &unk_1DB0B8A08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09D994();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1DB04CE6C;
  v1[13] = &block_descriptor_38_0;
  [v11 aa:v4 primaryAppleAccountWithCompletion:?];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1DB04CC60()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  v3 = *(v1 + 152);
  if (v2)
  {
    v4 = sub_1DB04CDF8;
  }

  else
  {
    v4 = sub_1DB04CD80;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DB04CD80()
{
  v1 = v0[19];
  v2 = *(v1 + 136);
  *(v1 + 136) = v0[18];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB04CDF8(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

void sub_1DB04CE6C(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FC80, &unk_1DB0B89F8);
    sub_1DB09D9A4();
  }

  else
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FC80, &unk_1DB0B89F8);
    sub_1DB09D9B4();
  }
}

uint64_t sub_1DB04CF34()
{
  v1 = *(v0[2] + 136);
  if (v1)
  {
    v9 = v0[1];
    v2 = v1;

    return v9(v1);
  }

  else
  {
    if (qword_1EE304018 != -1)
    {
      swift_once();
    }

    v4 = sub_1DB09D4B4();
    __swift_project_value_buffer(v4, qword_1EE304020);
    v5 = sub_1DB09D494();
    v6 = sub_1DB09DB54();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DAF16000, v5, v6, "Primary account is nil. Will attempt to reload", v7, 2u);
      MEMORY[0x1E1281810](v7, -1, -1);
    }

    v8 = swift_task_alloc();
    v0[3] = v8;
    *v8 = v0;
    v8[1] = sub_1DB04D0D4;

    return sub_1DB04C9C4();
  }
}

uint64_t sub_1DB04D0D4()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 16);

    return MEMORY[0x1EEE6DFA0](sub_1DB04D218, v6, 0);
  }
}

uint64_t sub_1DB04D218()
{
  v1 = *(*(v0 + 16) + 136);
  v4 = *(v0 + 8);
  v2 = v1;

  return v4(v1);
}

uint64_t sub_1DB04D28C()
{
  *(v1 + 224) = v0;
  v2 = swift_task_alloc();
  *(v1 + 232) = v2;
  *v2 = v1;
  v2[1] = sub_1DB04D31C;

  return sub_1DB04CF14();
}

uint64_t sub_1DB04D31C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 240) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 224);

    return MEMORY[0x1EEE6DFA0](sub_1DB04D464, v7, 0);
  }
}

uint64_t sub_1DB04D464()
{
  v1 = *(v0 + 240);
  if (v1)
  {
    v2 = [*(v0 + 240) appleID];
    if (v2)
    {
      v3 = v2;
      v4 = sub_1DB09D6C4();
      v6 = v5;

      v7 = *(v0 + 8);

      return v7(v4, v6);
    }

    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v20 = MEMORY[0x1E69E7CC0];
    v21 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v21 + 16))
    {
      v22 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v23)
      {
        sub_1DAF409DC(*(v21 + 56) + 32 * v22, v0 + 112);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v20 = *(v0 + 216);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1DAF72EC0(0, *(v20 + 2) + 1, 1, v20);
    }

    v25 = *(v20 + 2);
    v24 = *(v20 + 3);
    v26 = v25 + 1;
    if (v25 >= v24 >> 1)
    {
      v33 = sub_1DAF72EC0((v24 > 1), v25 + 1, 1, v20);
      v26 = v25 + 1;
      v20 = v33;
    }

    *(v20 + 2) = v26;
    v27 = &v20[56 * v25];
    *(v27 + 4) = 0xD000000000000016;
    *(v27 + 5) = 0x80000001DB0CB010;
    *(v27 + 6) = 0xD000000000000029;
    *(v27 + 7) = 0x80000001DB0CAFE0;
    *(v27 + 8) = 0x284449656C707061;
    *(v27 + 9) = 0xE900000000000029;
    *(v27 + 10) = 114;
    *(v0 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 144) = v20;
    sub_1DAF40D20((v0 + 144), (v0 + 176));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v0 + 176), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v29 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v30 = sub_1DB09D6B4();
    v31 = sub_1DB09D604();
    [v29 initWithDomain:v30 code:-22202 userInfo:v31];

    swift_willThrow();
  }

  else
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v9 = MEMORY[0x1E69E7CC0];
    v10 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v10 + 16))
    {
      v11 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v12)
      {
        sub_1DAF409DC(*(v10 + 56) + 32 * v11, v0 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v9 = *(v0 + 208);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1DAF72EC0(0, *(v9 + 2) + 1, 1, v9);
    }

    v14 = *(v9 + 2);
    v13 = *(v9 + 3);
    if (v14 >= v13 >> 1)
    {
      v9 = sub_1DAF72EC0((v13 > 1), v14 + 1, 1, v9);
    }

    *(v9 + 2) = v14 + 1;
    v15 = &v9[56 * v14];
    *(v15 + 4) = 0xD000000000000028;
    *(v15 + 5) = 0x80000001DB0CAFB0;
    *(v15 + 6) = 0xD000000000000029;
    *(v15 + 7) = 0x80000001DB0CAFE0;
    *(v15 + 8) = 0x284449656C707061;
    *(v15 + 9) = 0xE900000000000029;
    *(v15 + 10) = 111;
    *(v0 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 48) = v9;
    sub_1DAF40D20((v0 + 48), (v0 + 80));
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v0 + 80), 0x636F766E4949444FLL, 0xEE00736E6F697461, v16);
    v17 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v18 = sub_1DB09D6B4();
    v19 = sub_1DB09D604();
    [v17 initWithDomain:v18 code:-22200 userInfo:v19];

    swift_willThrow();
  }

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1DB04DA34()
{
  *(v1 + 224) = v0;
  v2 = swift_task_alloc();
  *(v1 + 232) = v2;
  *v2 = v1;
  v2[1] = sub_1DB04DAC4;

  return sub_1DB04CF14();
}

uint64_t sub_1DB04DAC4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 240) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 224);

    return MEMORY[0x1EEE6DFA0](sub_1DB04DC0C, v7, 0);
  }
}

uint64_t sub_1DB04DC0C()
{
  v1 = *(v0 + 240);
  if (v1)
  {
    v2 = [*(v0 + 240) aa_personID];
    if (v2)
    {
      v3 = v2;
      v4 = sub_1DB09D6C4();
      v6 = v5;

      v7 = *(v0 + 8);

      return v7(v4, v6);
    }

    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v20 = MEMORY[0x1E69E7CC0];
    v21 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v21 + 16))
    {
      v22 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v23)
      {
        sub_1DAF409DC(*(v21 + 56) + 32 * v22, v0 + 112);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v20 = *(v0 + 216);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1DAF72EC0(0, *(v20 + 2) + 1, 1, v20);
    }

    v25 = *(v20 + 2);
    v24 = *(v20 + 3);
    v26 = v25 + 1;
    if (v25 >= v24 >> 1)
    {
      v33 = sub_1DAF72EC0((v24 > 1), v25 + 1, 1, v20);
      v26 = v25 + 1;
      v20 = v33;
    }

    *(v20 + 2) = v26;
    v27 = &v20[56 * v25];
    *(v27 + 4) = 0xD000000000000017;
    *(v27 + 5) = 0x80000001DB0CB2B0;
    *(v27 + 6) = 0xD000000000000029;
    *(v27 + 7) = 0x80000001DB0CAFE0;
    *(v27 + 8) = 0xD000000000000019;
    *(v27 + 9) = 0x80000001DB0CB2D0;
    *(v27 + 10) = 128;
    *(v0 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 144) = v20;
    sub_1DAF40D20((v0 + 144), (v0 + 176));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v0 + 176), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v29 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v30 = sub_1DB09D6B4();
    v31 = sub_1DB09D604();
    [v29 initWithDomain:v30 code:-22203 userInfo:v31];

    swift_willThrow();
  }

  else
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v9 = MEMORY[0x1E69E7CC0];
    v10 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v10 + 16))
    {
      v11 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v12)
      {
        sub_1DAF409DC(*(v10 + 56) + 32 * v11, v0 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v9 = *(v0 + 208);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1DAF72EC0(0, *(v9 + 2) + 1, 1, v9);
    }

    v14 = *(v9 + 2);
    v13 = *(v9 + 3);
    if (v14 >= v13 >> 1)
    {
      v9 = sub_1DAF72EC0((v13 > 1), v14 + 1, 1, v9);
    }

    *(v9 + 2) = v14 + 1;
    v15 = &v9[56 * v14];
    *(v15 + 4) = 0xD000000000000028;
    *(v15 + 5) = 0x80000001DB0CAFB0;
    *(v15 + 6) = 0xD000000000000029;
    *(v15 + 7) = 0x80000001DB0CAFE0;
    *(v15 + 8) = 0xD000000000000019;
    *(v15 + 9) = 0x80000001DB0CB2D0;
    *(v15 + 10) = 125;
    *(v0 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 48) = v9;
    sub_1DAF40D20((v0 + 48), (v0 + 80));
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v0 + 80), 0x636F766E4949444FLL, 0xEE00736E6F697461, v16);
    v17 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v18 = sub_1DB09D6B4();
    v19 = sub_1DB09D604();
    [v17 initWithDomain:v18 code:-22200 userInfo:v19];

    swift_willThrow();
  }

  v32 = *(v0 + 8);

  return v32();
}

id sub_1DB04E1DC()
{
  v0 = sub_1DB09D6C4();
  v2 = sub_1DB0528D0(v0, v1);

  if (v2)
  {
    v3 = [v2 normalizedDSID];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1DB09D6C4();
      v7 = v6;

      if (qword_1EE304018 != -1)
      {
        swift_once();
      }

      v8 = sub_1DB09D4B4();
      v9 = __swift_project_value_buffer(v8, qword_1EE304020);

      sub_1DB016628(v9, v5, v7);
    }

    else
    {
      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v20 = MEMORY[0x1E69E7CC0];
      v21 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v21 + 16))
      {
        v22 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v23)
        {
          sub_1DAF409DC(*(v21 + 56) + 32 * v22, &v35);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v20 = *&v34[0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1DAF72EC0(0, *(v20 + 2) + 1, 1, v20);
      }

      v25 = *(v20 + 2);
      v24 = *(v20 + 3);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v33 = sub_1DAF72EC0((v24 > 1), v25 + 1, 1, v20);
        v26 = v25 + 1;
        v20 = v33;
      }

      *(v20 + 2) = v26;
      v27 = &v20[56 * v25];
      *(v27 + 4) = 0xD000000000000017;
      *(v27 + 5) = 0x80000001DB0CB2B0;
      *(v27 + 6) = 0xD000000000000029;
      *(v27 + 7) = 0x80000001DB0CAFE0;
      *(v27 + 8) = 0xD000000000000013;
      *(v27 + 9) = 0x80000001DB0CB290;
      *(v27 + 10) = 149;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *&v35 = v20;
      sub_1DAF40D20(&v35, v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v21;
      sub_1DAF3B11C(v34, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
      v5 = v37;
      v29 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v30 = sub_1DB09D6B4();
      v31 = sub_1DB09D604();
      [v29 initWithDomain:v30 code:-22205 userInfo:v31];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v10 = MEMORY[0x1E69E7CC0];
    v11 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v11 + 16))
    {
      v12 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v13)
      {
        sub_1DAF409DC(*(v11 + 56) + 32 * v12, &v35);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v10 = *&v34[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1DAF72EC0(0, *(v10 + 2) + 1, 1, v10);
    }

    v15 = *(v10 + 2);
    v14 = *(v10 + 3);
    if (v15 >= v14 >> 1)
    {
      v10 = sub_1DAF72EC0((v14 > 1), v15 + 1, 1, v10);
    }

    *(v10 + 2) = v15 + 1;
    v16 = &v10[56 * v15];
    *(v16 + 4) = 0xD00000000000001ELL;
    *(v16 + 5) = 0x80000001DB0CB270;
    *(v16 + 6) = 0xD000000000000029;
    *(v16 + 7) = 0x80000001DB0CAFE0;
    *(v16 + 8) = 0xD000000000000013;
    *(v16 + 9) = 0x80000001DB0CB290;
    *(v16 + 10) = 146;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v35 = v10;
    sub_1DAF40D20(&v35, v34);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v37 = v11;
    sub_1DAF3B11C(v34, 0x636F766E4949444FLL, 0xEE00736E6F697461, v17);
    v5 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v18 = sub_1DB09D6B4();
    v19 = sub_1DB09D604();
    [v5 initWithDomain:v18 code:-22201 userInfo:v19];

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1DB04E7C8(uint64_t a1, uint64_t a2)
{
  v3[128] = v2;
  v3[127] = a2;
  v3[126] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FC80, &unk_1DB0B89F8);
  v3[129] = v4;
  v3[130] = *(v4 - 8);
  v3[131] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E688, &qword_1DB0A3380);
  v3[132] = v5;
  v3[133] = *(v5 - 8);
  v3[134] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB04E904, v2, 0);
}

uint64_t sub_1DB04E904()
{
  v1 = *(v0 + 1024);
  if (!*(v0 + 1016))
  {
    v5 = *(v1 + 128);
    *(v0 + 1080) = v5;
    v6 = [v5 aida_accountForPrimaryiCloudAccount];
    if (!v6)
    {
      v7 = v0 + 80;
      v21 = *(v0 + 1048);
      v22 = *(v0 + 1040);
      v23 = *(v0 + 1032);
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 1000;
      *(v0 + 88) = sub_1DB04FE94;
      swift_continuation_init();
      *(v0 + 328) = v23;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 304));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FC88, &unk_1DB0B8A08);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
      sub_1DB09D994();
      (*(v22 + 32))(boxed_opaque_existential_0, v21, v23);
      *(v0 + 272) = MEMORY[0x1E69E9820];
      *(v0 + 280) = 1107296256;
      *(v0 + 288) = sub_1DB04CE6C;
      *(v0 + 296) = &block_descriptor_15;
      [v5 aa_primaryAppleAccountWithCompletion_];
      (*(v22 + 8))(boxed_opaque_existential_0, v23);
      goto LABEL_8;
    }

    v4 = v6;
    v69 = v5;
    goto LABEL_6;
  }

  v2 = *(v1 + 128);
  v3 = sub_1DB09D6B4();
  v4 = [v2 aida:v3 accountForAltDSID:?];

  if (v4)
  {
    v69 = v2;
LABEL_6:
    v7 = v0 + 144;
    *(v0 + 1088) = v4;
    v8 = *(v0 + 1072);
    v9 = *(v0 + 1064);
    v10 = *(v0 + 1056);
    v11 = *(v0 + 1024);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E570, &qword_1DB0A2828);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1DB0A04E0;
    v13 = *(v11 + 112);
    v14 = *(v11 + 120);
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 32) = v13;
    *(v12 + 40) = v14;
    v67 = v4;

    v15 = sub_1DB09D914();
    *(v0 + 1096) = v15;

    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 984;
    *(v0 + 152) = sub_1DB04F5C4;
    swift_continuation_init();
    *(v0 + 264) = v10;
    v16 = __swift_allocate_boxed_opaque_existential_0((v0 + 240));
    type metadata accessor for ACAccountCredentialRenewResult(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
    sub_1DB09D994();
    (*(v9 + 32))(v16, v8, v10);
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_1DAF68EFC;
    *(v0 + 232) = &block_descriptor_33;
    [v69 aida:v67 renewCredentialsForAccount:v15 services:1 force:? completion:?];
LABEL_7:
    (*(v9 + 8))(v16, v10);
LABEL_8:

    return MEMORY[0x1EEE6DEC8](v7);
  }

  v17 = sub_1DB09D6B4();
  v18 = [v2 aa:v17 appleAccountWithAltDSID:?];

  *(v0 + 1120) = v18;
  if (v18)
  {
    v7 = v0 + 16;
    v70 = v2;
    v19 = *(v0 + 1072);
    v9 = *(v0 + 1064);
    v10 = *(v0 + 1056);
    v68 = v18;
    v20 = sub_1DB09D6B4();
    *(v0 + 1128) = v20;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 968;
    *(v0 + 24) = sub_1DB0508A0;
    swift_continuation_init();
    *(v0 + 392) = v10;
    v16 = __swift_allocate_boxed_opaque_existential_0((v0 + 368));
    type metadata accessor for ACAccountCredentialRenewResult(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
    sub_1DB09D994();
    (*(v9 + 32))(v16, v19, v10);
    *(v0 + 336) = MEMORY[0x1E69E9820];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_1DAF68EFC;
    *(v0 + 360) = &block_descriptor_29;
    [v70 renewCredentialsForAccount:v68 force:0 reason:v20 completion:?];
    goto LABEL_7;
  }

  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v25 = MEMORY[0x1E69E7CC0];
  v26 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  if (*(v26 + 16))
  {
    v27 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
    if (v28)
    {
      sub_1DAF409DC(*(v26 + 56) + 32 * v27, v0 + 592);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      if (swift_dynamicCast())
      {
        v25 = *(v0 + 992);
      }

      else
      {
        v25 = MEMORY[0x1E69E7CC0];
      }
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_1DAF72EC0(0, *(v25 + 2) + 1, 1, v25);
  }

  v30 = *(v25 + 2);
  v29 = *(v25 + 3);
  if (v30 >= v29 >> 1)
  {
    v25 = sub_1DAF72EC0((v29 > 1), v30 + 1, 1, v25);
  }

  *(v25 + 2) = v30 + 1;
  v31 = &v25[56 * v30];
  *(v31 + 4) = 0xD000000000000028;
  *(v31 + 5) = 0x80000001DB0CAFB0;
  *(v31 + 6) = 0xD000000000000029;
  *(v31 + 7) = 0x80000001DB0CAFE0;
  *(v31 + 8) = 0xD000000000000017;
  *(v31 + 9) = 0x80000001DB0CB1D0;
  *(v31 + 10) = 196;
  *(v0 + 648) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v0 + 624) = v25;
  sub_1DAF40D20((v0 + 624), (v0 + 656));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = v26;
  sub_1DAF3B11C((v0 + 656), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
  v33 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v34 = sub_1DB09D6B4();
  v35 = sub_1DB09D604();
  v36 = [v33 initWithDomain:v34 code:-22200 userInfo:v35];

  swift_willThrow();
  v37 = v36;
  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v38 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v39 = v36;
  v40 = sub_1DB09CE64();
  v41 = [v40 domain];
  v42 = sub_1DB09D6C4();
  v44 = v43;

  if (v42 == 0x726F72724549444FLL && v44 == 0xE800000000000000)
  {

    goto LABEL_31;
  }

  v45 = sub_1DB09E254();

  if (v45)
  {
LABEL_31:
    ODIErrorCode.init(rawValue:)([v40 code]);
    v46 = [v40 userInfo];
    v47 = sub_1DB09D624();

    if (v71 == 211)
    {
      v48 = 195;
    }

    else
    {
      v48 = v71 ^ 0x80u;
    }

    goto LABEL_35;
  }

  v49 = sub_1DB09D6C4();
  v51 = v50;
  *(v0 + 456) = sub_1DAF4062C(0, &qword_1EE300980, 0x1E696ABC0);
  *(v0 + 432) = v40;
  sub_1DAF40D20((v0 + 432), (v0 + 464));
  v52 = v40;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B11C((v0 + 464), v49, v51, v53);

  v47 = v38;
  v48 = 195;
LABEL_35:
  if (*(v47 + 16) && (v54 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v55 & 1) != 0) && (sub_1DAF409DC(*(v47 + 56) + 32 * v54, v0 + 496), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
  {
    v56 = *(v0 + 944);
  }

  else
  {
    v56 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v56 = sub_1DAF72EC0(0, *(v56 + 2) + 1, 1, v56);
  }

  v58 = *(v56 + 2);
  v57 = *(v56 + 3);
  if (v58 >= v57 >> 1)
  {
    v56 = sub_1DAF72EC0((v57 > 1), v58 + 1, 1, v56);
  }

  *(v56 + 2) = v58 + 1;
  v59 = &v56[56 * v58];
  *(v59 + 4) = 0xD00000000000001BLL;
  *(v59 + 5) = 0x80000001DB0CB1B0;
  *(v59 + 6) = 0xD000000000000029;
  *(v59 + 7) = 0x80000001DB0CAFE0;
  *(v59 + 8) = 0xD000000000000017;
  *(v59 + 9) = 0x80000001DB0CB1D0;
  *(v59 + 10) = 201;
  *(v0 + 552) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v0 + 528) = v56;
  sub_1DAF40D20((v0 + 528), (v0 + 560));
  v60 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B11C((v0 + 560), 0x636F766E4949444FLL, 0xEE00736E6F697461, v60);
  v61 = qword_1DB0B8A18[v48];
  v62 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v63 = sub_1DB09D6B4();
  v64 = sub_1DB09D604();
  [v62 initWithDomain:v63 code:v61 userInfo:v64];

  swift_willThrow();

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_1DB04F5C4()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 1104) = v2;
  v3 = *(v1 + 1024);
  if (v2)
  {
    v4 = sub_1DB051120;
  }

  else
  {
    v4 = sub_1DB04F6E4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DB04F6E4()
{
  v1 = *(v0 + 1096);

  v2 = *(v0 + 984);
  v3 = *(v0 + 1088);
  switch(v2)
  {
    case 0:

      v12 = *(v0 + 8);
      goto LABEL_43;
    case 2:
      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v8 = MEMORY[0x1E69E7CC0];
      v9 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v9 + 16))
      {
        v10 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v11)
        {
          sub_1DAF409DC(*(v9 + 56) + 32 * v10, v0 + 848);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v8 = *(v0 + 952);
          }

          else
          {
            v8 = MEMORY[0x1E69E7CC0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1DAF72EC0(0, *(v8 + 2) + 1, 1, v8);
      }

      v18 = *(v8 + 2);
      v17 = *(v8 + 3);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v39 = sub_1DAF72EC0((v17 > 1), v18 + 1, 1, v8);
        v19 = v18 + 1;
        v8 = v39;
      }

      *(v8 + 2) = v19;
      v20 = &v8[56 * v18];
      *(v20 + 4) = 0xD000000000000019;
      *(v20 + 5) = 0x80000001DB0CB220;
      *(v20 + 6) = 0xD000000000000029;
      *(v20 + 7) = 0x80000001DB0CAFE0;
      *(v20 + 8) = 0xD000000000000017;
      *(v20 + 9) = 0x80000001DB0CB1D0;
      *(v20 + 10) = 212;
      *(v0 + 904) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *(v0 + 880) = v8;
      sub_1DAF40D20((v0 + 880), (v0 + 912));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = (v0 + 912);
      break;
    case 1:
      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v4 = MEMORY[0x1E69E7CC0];
      v5 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v5 + 16))
      {
        v6 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v7)
        {
          sub_1DAF409DC(*(v5 + 56) + 32 * v6, v0 + 400);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v4 = *(v0 + 976);
          }

          else
          {
            v4 = MEMORY[0x1E69E7CC0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1DAF72EC0(0, *(v4 + 2) + 1, 1, v4);
      }

      v24 = *(v4 + 2);
      v23 = *(v4 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v40 = sub_1DAF72EC0((v23 > 1), v24 + 1, 1, v4);
        v25 = v24 + 1;
        v4 = v40;
      }

      *(v4 + 2) = v25;
      v26 = &v4[56 * v24];
      *(v26 + 4) = 0xD000000000000020;
      *(v26 + 5) = 0x80000001DB0CB240;
      *(v26 + 6) = 0xD000000000000029;
      *(v26 + 7) = 0x80000001DB0CAFE0;
      *(v26 + 8) = 0xD000000000000017;
      *(v26 + 9) = 0x80000001DB0CB1D0;
      *(v26 + 10) = 209;
      *(v0 + 840) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *(v0 + 816) = v4;
      sub_1DAF40D20((v0 + 816), (v0 + 784));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = (v0 + 784);
      break;
    default:
      v42 = *(v0 + 1088);
      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v13 = MEMORY[0x1E69E7CC0];
      v14 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v14 + 16))
      {
        v15 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v16)
        {
          sub_1DAF409DC(*(v14 + 56) + 32 * v15, v0 + 688);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v13 = *(v0 + 960);
          }

          else
          {
            v13 = MEMORY[0x1E69E7CC0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAF72EC0(0, *(v13 + 2) + 1, 1, v13);
      }

      v31 = *(v13 + 2);
      v30 = *(v13 + 3);
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        v41 = sub_1DAF72EC0((v30 > 1), v31 + 1, 1, v13);
        v32 = v31 + 1;
        v13 = v41;
      }

      *(v13 + 2) = v32;
      v33 = &v13[56 * v31];
      *(v33 + 4) = 0xD000000000000021;
      *(v33 + 5) = 0x80000001DB0CB1F0;
      *(v33 + 6) = 0xD000000000000029;
      *(v33 + 7) = 0x80000001DB0CAFE0;
      *(v33 + 8) = 0xD000000000000017;
      *(v33 + 9) = 0x80000001DB0CB1D0;
      *(v33 + 10) = 215;
      *(v0 + 744) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *(v0 + 720) = v13;
      sub_1DAF40D20((v0 + 720), (v0 + 752));
      v34 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3B11C((v0 + 752), 0x636F766E4949444FLL, 0xEE00736E6F697461, v34);
      v35 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v36 = sub_1DB09D6B4();
      v37 = sub_1DB09D604();
      [v35 initWithDomain:v36 code:-1104 userInfo:v37];

      v3 = v42;
      goto LABEL_42;
  }

  sub_1DAF3B11C(v22, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
  v27 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v28 = sub_1DB09D6B4();
  v29 = sub_1DB09D604();
  [v27 initWithDomain:v28 code:-1104 userInfo:v29];

LABEL_42:
  swift_willThrow();

  v12 = *(v0 + 8);
LABEL_43:

  return v12();
}

uint64_t sub_1DB04FE94()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 1112) = v2;
  v3 = *(v1 + 1024);
  if (v2)
  {
    v4 = sub_1DB051600;
  }

  else
  {
    v4 = sub_1DB04FFB4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DB04FFB4()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 1080);
  *(v0 + 1120) = v1;
  if (v1)
  {
    v3 = *(v0 + 1072);
    v4 = *(v0 + 1064);
    v5 = *(v0 + 1056);
    v51 = v2;
    v50 = v1;
    v6 = sub_1DB09D6B4();
    *(v0 + 1128) = v6;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 968;
    *(v0 + 24) = sub_1DB0508A0;
    swift_continuation_init();
    *(v0 + 392) = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 368));
    type metadata accessor for ACAccountCredentialRenewResult(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
    sub_1DB09D994();
    (*(v4 + 32))(boxed_opaque_existential_0, v3, v5);
    *(v0 + 336) = MEMORY[0x1E69E9820];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_1DAF68EFC;
    *(v0 + 360) = &block_descriptor_29;
    [v51 renewCredentialsForAccount:v50 force:0 reason:v6 completion:?];
    (*(v4 + 8))(boxed_opaque_existential_0, v5);

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v8 = MEMORY[0x1E69E7CC0];
  v9 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  if (*(v9 + 16))
  {
    v10 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
    if (v11)
    {
      sub_1DAF409DC(*(v9 + 56) + 32 * v10, v0 + 592);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      if (swift_dynamicCast())
      {
        v8 = *(v0 + 992);
      }

      else
      {
        v8 = MEMORY[0x1E69E7CC0];
      }
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DAF72EC0(0, *(v8 + 2) + 1, 1, v8);
  }

  v13 = *(v8 + 2);
  v12 = *(v8 + 3);
  if (v13 >= v12 >> 1)
  {
    v8 = sub_1DAF72EC0((v12 > 1), v13 + 1, 1, v8);
  }

  *(v8 + 2) = v13 + 1;
  v14 = &v8[56 * v13];
  *(v14 + 4) = 0xD000000000000028;
  *(v14 + 5) = 0x80000001DB0CAFB0;
  *(v14 + 6) = 0xD000000000000029;
  *(v14 + 7) = 0x80000001DB0CAFE0;
  *(v14 + 8) = 0xD000000000000017;
  *(v14 + 9) = 0x80000001DB0CB1D0;
  *(v14 + 10) = 196;
  *(v0 + 648) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v0 + 624) = v8;
  sub_1DAF40D20((v0 + 624), (v0 + 656));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = v9;
  sub_1DAF3B11C((v0 + 656), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
  v16 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v17 = sub_1DB09D6B4();
  v18 = sub_1DB09D604();
  v19 = [v16 initWithDomain:v17 code:-22200 userInfo:v18];

  swift_willThrow();
  v20 = v19;
  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v21 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v22 = v19;
  v23 = sub_1DB09CE64();
  v24 = [v23 domain];
  v25 = sub_1DB09D6C4();
  v27 = v26;

  if (v25 == 0x726F72724549444FLL && v27 == 0xE800000000000000)
  {

    goto LABEL_22;
  }

  v28 = sub_1DB09E254();

  if (v28)
  {
LABEL_22:
    ODIErrorCode.init(rawValue:)([v23 code]);
    v29 = [v23 userInfo];
    v30 = sub_1DB09D624();

    if (v52 == 211)
    {
      v31 = 195;
    }

    else
    {
      v31 = v52 ^ 0x80u;
    }

    if (!*(v30 + 16))
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  v32 = sub_1DB09D6C4();
  v34 = v33;
  *(v0 + 456) = sub_1DAF4062C(0, &qword_1EE300980, 0x1E696ABC0);
  *(v0 + 432) = v23;
  sub_1DAF40D20((v0 + 432), (v0 + 464));
  v35 = v23;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B11C((v0 + 464), v32, v34, v36);

  v30 = v21;
  v31 = 195;
  if (!*(v21 + 16))
  {
LABEL_31:
    v39 = MEMORY[0x1E69E7CC0];
    goto LABEL_32;
  }

LABEL_28:
  v37 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
  if ((v38 & 1) == 0)
  {
    goto LABEL_31;
  }

  sub_1DAF409DC(*(v30 + 56) + 32 * v37, v0 + 496);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  if (!swift_dynamicCast())
  {
    goto LABEL_31;
  }

  v39 = *(v0 + 944);
LABEL_32:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v39 = sub_1DAF72EC0(0, *(v39 + 2) + 1, 1, v39);
  }

  v41 = *(v39 + 2);
  v40 = *(v39 + 3);
  if (v41 >= v40 >> 1)
  {
    v39 = sub_1DAF72EC0((v40 > 1), v41 + 1, 1, v39);
  }

  *(v39 + 2) = v41 + 1;
  v42 = &v39[56 * v41];
  *(v42 + 4) = 0xD00000000000001BLL;
  *(v42 + 5) = 0x80000001DB0CB1B0;
  *(v42 + 6) = 0xD000000000000029;
  *(v42 + 7) = 0x80000001DB0CAFE0;
  *(v42 + 8) = 0xD000000000000017;
  *(v42 + 9) = 0x80000001DB0CB1D0;
  *(v42 + 10) = 201;
  *(v0 + 552) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v0 + 528) = v39;
  sub_1DAF40D20((v0 + 528), (v0 + 560));
  v43 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B11C((v0 + 560), 0x636F766E4949444FLL, 0xEE00736E6F697461, v43);
  v44 = qword_1DB0B8A18[v31];
  v45 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v46 = sub_1DB09D6B4();
  v47 = sub_1DB09D604();
  [v45 initWithDomain:v46 code:v44 userInfo:v47];

  swift_willThrow();

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_1DB0508A0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1136) = v2;
  v3 = *(v1 + 1024);
  if (v2)
  {
    v4 = sub_1DB051AC0;
  }

  else
  {
    v4 = sub_1DB0509C0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DB0509C0()
{
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1120);

  v3 = *(v0 + 968);
  switch(v3)
  {
    case 0:

      v12 = *(v0 + 8);
      goto LABEL_43;
    case 2:
      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v8 = MEMORY[0x1E69E7CC0];
      v9 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v9 + 16))
      {
        v10 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v11)
        {
          sub_1DAF409DC(*(v9 + 56) + 32 * v10, v0 + 848);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v8 = *(v0 + 952);
          }

          else
          {
            v8 = MEMORY[0x1E69E7CC0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1DAF72EC0(0, *(v8 + 2) + 1, 1, v8);
      }

      v18 = *(v8 + 2);
      v17 = *(v8 + 3);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v36 = sub_1DAF72EC0((v17 > 1), v18 + 1, 1, v8);
        v19 = v18 + 1;
        v8 = v36;
      }

      *(v8 + 2) = v19;
      v20 = &v8[56 * v18];
      *(v20 + 4) = 0xD000000000000019;
      *(v20 + 5) = 0x80000001DB0CB220;
      *(v20 + 6) = 0xD000000000000029;
      *(v20 + 7) = 0x80000001DB0CAFE0;
      *(v20 + 8) = 0xD000000000000017;
      *(v20 + 9) = 0x80000001DB0CB1D0;
      *(v20 + 10) = 212;
      *(v0 + 904) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *(v0 + 880) = v8;
      sub_1DAF40D20((v0 + 880), (v0 + 912));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = (v0 + 912);
      break;
    case 1:
      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v4 = MEMORY[0x1E69E7CC0];
      v5 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v5 + 16))
      {
        v6 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v7)
        {
          sub_1DAF409DC(*(v5 + 56) + 32 * v6, v0 + 400);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v4 = *(v0 + 976);
          }

          else
          {
            v4 = MEMORY[0x1E69E7CC0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1DAF72EC0(0, *(v4 + 2) + 1, 1, v4);
      }

      v24 = *(v4 + 2);
      v23 = *(v4 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v37 = sub_1DAF72EC0((v23 > 1), v24 + 1, 1, v4);
        v25 = v24 + 1;
        v4 = v37;
      }

      *(v4 + 2) = v25;
      v26 = &v4[56 * v24];
      *(v26 + 4) = 0xD000000000000020;
      *(v26 + 5) = 0x80000001DB0CB240;
      *(v26 + 6) = 0xD000000000000029;
      *(v26 + 7) = 0x80000001DB0CAFE0;
      *(v26 + 8) = 0xD000000000000017;
      *(v26 + 9) = 0x80000001DB0CB1D0;
      *(v26 + 10) = 209;
      *(v0 + 840) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *(v0 + 816) = v4;
      sub_1DAF40D20((v0 + 816), (v0 + 784));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = (v0 + 784);
      break;
    default:
      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v13 = MEMORY[0x1E69E7CC0];
      v14 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v14 + 16))
      {
        v15 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v16)
        {
          sub_1DAF409DC(*(v14 + 56) + 32 * v15, v0 + 688);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v13 = *(v0 + 960);
          }

          else
          {
            v13 = MEMORY[0x1E69E7CC0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAF72EC0(0, *(v13 + 2) + 1, 1, v13);
      }

      v30 = *(v13 + 2);
      v29 = *(v13 + 3);
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        v38 = sub_1DAF72EC0((v29 > 1), v30 + 1, 1, v13);
        v31 = v30 + 1;
        v13 = v38;
      }

      *(v13 + 2) = v31;
      v32 = &v13[56 * v30];
      *(v32 + 4) = 0xD000000000000021;
      *(v32 + 5) = 0x80000001DB0CB1F0;
      *(v32 + 6) = 0xD000000000000029;
      *(v32 + 7) = 0x80000001DB0CAFE0;
      *(v32 + 8) = 0xD000000000000017;
      *(v32 + 9) = 0x80000001DB0CB1D0;
      *(v32 + 10) = 215;
      *(v0 + 744) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *(v0 + 720) = v13;
      sub_1DAF40D20((v0 + 720), (v0 + 752));
      v33 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3B11C((v0 + 752), 0x636F766E4949444FLL, 0xEE00736E6F697461, v33);
      v27 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v28 = sub_1DB09D6B4();
      goto LABEL_42;
  }

  sub_1DAF3B11C(v22, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
  v27 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v28 = sub_1DB09D6B4();
LABEL_42:
  v34 = sub_1DB09D604();
  [v27 initWithDomain:v28 code:-1104 userInfo:v34];

  swift_willThrow();

  v12 = *(v0 + 8);
LABEL_43:

  return v12();
}

uint64_t sub_1DB051120(uint64_t a1)
{
  v2 = *(v1 + 1096);
  v3 = *(v1 + 1088);
  swift_willThrow();

  v4 = *(v1 + 1104);
  v36 = *(v1 + 1088);
  v5 = v4;
  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v6 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v7 = v4;
  v8 = sub_1DB09CE64();
  v9 = [v8 domain];
  v10 = sub_1DB09D6C4();
  v12 = v11;

  if (v10 == 0x726F72724549444FLL && v12 == 0xE800000000000000)
  {
  }

  else
  {
    v14 = sub_1DB09E254();

    if ((v14 & 1) == 0)
    {
      v15 = sub_1DB09D6C4();
      v17 = v16;
      *(v1 + 456) = sub_1DAF4062C(0, &qword_1EE300980, 0x1E696ABC0);
      *(v1 + 432) = v8;
      sub_1DAF40D20((v1 + 432), (v1 + 464));
      v18 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3B11C((v1 + 464), v15, v17, isUniquelyReferenced_nonNull_native);

      v20 = v6;
      v21 = 195;
      goto LABEL_13;
    }
  }

  ODIErrorCode.init(rawValue:)([v8 code]);
  v22 = [v8 userInfo];
  v20 = sub_1DB09D624();

  if (v37 == 211)
  {
    v21 = 195;
  }

  else
  {
    v21 = v37 ^ 0x80u;
  }

LABEL_13:
  if (*(v20 + 16) && (v23 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v24 & 1) != 0) && (sub_1DAF409DC(*(v20 + 56) + 32 * v23, v1 + 496), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
  {
    v25 = *(v1 + 944);
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_1DAF72EC0(0, *(v25 + 2) + 1, 1, v25);
  }

  v27 = *(v25 + 2);
  v26 = *(v25 + 3);
  if (v27 >= v26 >> 1)
  {
    v25 = sub_1DAF72EC0((v26 > 1), v27 + 1, 1, v25);
  }

  *(v25 + 2) = v27 + 1;
  v28 = &v25[56 * v27];
  *(v28 + 4) = 0xD00000000000001BLL;
  *(v28 + 5) = 0x80000001DB0CB1B0;
  *(v28 + 6) = 0xD000000000000029;
  *(v28 + 7) = 0x80000001DB0CAFE0;
  *(v28 + 8) = 0xD000000000000017;
  *(v28 + 9) = 0x80000001DB0CB1D0;
  *(v28 + 10) = 201;
  *(v1 + 552) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v1 + 528) = v25;
  sub_1DAF40D20((v1 + 528), (v1 + 560));
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B11C((v1 + 560), 0x636F766E4949444FLL, 0xEE00736E6F697461, v29);
  v30 = qword_1DB0B8A18[v21];
  v31 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v32 = sub_1DB09D6B4();
  v33 = sub_1DB09D604();
  [v31 initWithDomain:v32 code:v30 userInfo:v33];

  swift_willThrow();

  v34 = *(v1 + 8);

  return v34();
}

uint64_t sub_1DB051600(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 1112);
  v3 = v2;
  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v4 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v5 = v2;
  v6 = sub_1DB09CE64();
  v7 = [v6 domain];
  v8 = sub_1DB09D6C4();
  v10 = v9;

  if (v8 == 0x726F72724549444FLL && v10 == 0xE800000000000000)
  {
  }

  else
  {
    v12 = sub_1DB09E254();

    if ((v12 & 1) == 0)
    {
      v13 = sub_1DB09D6C4();
      v15 = v14;
      *(v1 + 456) = sub_1DAF4062C(0, &qword_1EE300980, 0x1E696ABC0);
      *(v1 + 432) = v6;
      sub_1DAF40D20((v1 + 432), (v1 + 464));
      v16 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3B11C((v1 + 464), v13, v15, isUniquelyReferenced_nonNull_native);

      v18 = v4;
      v19 = 195;
      goto LABEL_13;
    }
  }

  ODIErrorCode.init(rawValue:)([v6 code]);
  v20 = [v6 userInfo];
  v18 = sub_1DB09D624();

  if (v34 == 211)
  {
    v19 = 195;
  }

  else
  {
    v19 = v34 ^ 0x80u;
  }

LABEL_13:
  if (*(v18 + 16) && (v21 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v22 & 1) != 0) && (sub_1DAF409DC(*(v18 + 56) + 32 * v21, v1 + 496), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
  {
    v23 = *(v1 + 944);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_1DAF72EC0(0, *(v23 + 2) + 1, 1, v23);
  }

  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = sub_1DAF72EC0((v24 > 1), v25 + 1, 1, v23);
  }

  *(v23 + 2) = v25 + 1;
  v26 = &v23[56 * v25];
  *(v26 + 4) = 0xD00000000000001BLL;
  *(v26 + 5) = 0x80000001DB0CB1B0;
  *(v26 + 6) = 0xD000000000000029;
  *(v26 + 7) = 0x80000001DB0CAFE0;
  *(v26 + 8) = 0xD000000000000017;
  *(v26 + 9) = 0x80000001DB0CB1D0;
  *(v26 + 10) = 201;
  *(v1 + 552) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v1 + 528) = v23;
  sub_1DAF40D20((v1 + 528), (v1 + 560));
  v27 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B11C((v1 + 560), 0x636F766E4949444FLL, 0xEE00736E6F697461, v27);
  v28 = qword_1DB0B8A18[v19];
  v29 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v30 = sub_1DB09D6B4();
  v31 = sub_1DB09D604();
  [v29 initWithDomain:v30 code:v28 userInfo:v31];

  swift_willThrow();

  v32 = *(v1 + 8);

  return v32();
}

uint64_t sub_1DB051AC0(uint64_t a1)
{
  v2 = *(v1 + 1128);
  v3 = *(v1 + 1120);
  swift_willThrow();

  v4 = *(v1 + 1136);
  v5 = v4;
  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v6 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v7 = v4;
  v8 = sub_1DB09CE64();
  v9 = [v8 domain];
  v10 = sub_1DB09D6C4();
  v12 = v11;

  if (v10 == 0x726F72724549444FLL && v12 == 0xE800000000000000)
  {
  }

  else
  {
    v13 = sub_1DB09E254();

    if ((v13 & 1) == 0)
    {
      v17 = sub_1DB09D6C4();
      v19 = v18;
      *(v1 + 456) = sub_1DAF4062C(0, &qword_1EE300980, 0x1E696ABC0);
      *(v1 + 432) = v8;
      sub_1DAF40D20((v1 + 432), (v1 + 464));
      v20 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3B11C((v1 + 464), v17, v19, isUniquelyReferenced_nonNull_native);

      v15 = v6;
      v16 = 195;
      goto LABEL_11;
    }
  }

  ODIErrorCode.init(rawValue:)([v8 code]);
  v14 = [v8 userInfo];
  v15 = sub_1DB09D624();

  if (v35 == 211)
  {
    v16 = 195;
  }

  else
  {
    v16 = v35 ^ 0x80u;
  }

LABEL_11:
  if (*(v15 + 16) && (v22 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v23 & 1) != 0) && (sub_1DAF409DC(*(v15 + 56) + 32 * v22, v1 + 496), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
  {
    v24 = *(v1 + 944);
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_1DAF72EC0(0, *(v24 + 2) + 1, 1, v24);
  }

  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  if (v26 >= v25 >> 1)
  {
    v24 = sub_1DAF72EC0((v25 > 1), v26 + 1, 1, v24);
  }

  *(v24 + 2) = v26 + 1;
  v27 = &v24[56 * v26];
  *(v27 + 4) = 0xD00000000000001BLL;
  *(v27 + 5) = 0x80000001DB0CB1B0;
  *(v27 + 6) = 0xD000000000000029;
  *(v27 + 7) = 0x80000001DB0CAFE0;
  *(v27 + 8) = 0xD000000000000017;
  *(v27 + 9) = 0x80000001DB0CB1D0;
  *(v27 + 10) = 201;
  *(v1 + 552) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v1 + 528) = v24;
  sub_1DAF40D20((v1 + 528), (v1 + 560));
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B11C((v1 + 560), 0x636F766E4949444FLL, 0xEE00736E6F697461, v28);
  v29 = qword_1DB0B8A18[v16];
  v30 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v31 = sub_1DB09D6B4();
  v32 = sub_1DB09D604();
  [v30 initWithDomain:v31 code:v29 userInfo:v32];

  swift_willThrow();

  v33 = *(v1 + 8);

  return v33();
}

uint64_t sub_1DB051F9C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(v2 + 128);
    v4 = sub_1DB09D6B4();
    v5 = [v3 aida:v4 accountForAltDSID:?];

    v6 = qword_1EE301DE8;
    v7 = v5;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = qword_1EE30A148;
    v9 = sub_1DB09DB84();
    sub_1DB09D444("using altDSID for authorization", 31, 2, &dword_1DAF16000, v8, v9, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v7 = [*(v2 + 128) aida_accountForPrimaryiCloudAccount];
  }

  if (v7)
  {
    v10 = [v7 aida_alternateDSID];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1DB09D6C4();
      v14 = v13;

      v15 = sub_1DB09D6B4();
      v16 = [v7 aida:v15 tokenForService:?];

      if (v16)
      {
        v17 = sub_1DB09D6C4();
        v19 = v18;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_1DB0A0500;
        v21 = MEMORY[0x1E69E6158];
        *(v20 + 56) = MEMORY[0x1E69E6158];
        v22 = sub_1DAF4DC24();
        *(v20 + 32) = v12;
        *(v20 + 40) = v14;
        *(v20 + 96) = v21;
        *(v20 + 104) = v22;
        *(v20 + 64) = v22;
        *(v20 + 72) = v17;
        *(v20 + 80) = v19;
        v23 = sub_1DB09D704();

        return v23;
      }

      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v50 = MEMORY[0x1E69E7CC0];
      v51 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v51 + 16))
      {
        v52 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v53)
        {
          sub_1DAF409DC(*(v51 + 56) + 32 * v52, &v64);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v50 = *&v63[0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_1DAF72EC0(0, *(v50 + 2) + 1, 1, v50);
      }

      v55 = *(v50 + 2);
      v54 = *(v50 + 3);
      v56 = v55 + 1;
      if (v55 >= v54 >> 1)
      {
        v62 = sub_1DAF72EC0((v54 > 1), v55 + 1, 1, v50);
        v56 = v55 + 1;
        v50 = v62;
      }

      *(v50 + 2) = v56;
      v57 = &v50[56 * v55];
      *(v57 + 4) = 0xD00000000000001DLL;
      *(v57 + 5) = 0x80000001DB0CB150;
      *(v57 + 6) = 0xD000000000000029;
      *(v57 + 7) = 0x80000001DB0CAFE0;
      *(v57 + 8) = 0xD000000000000013;
      *(v57 + 9) = 0x80000001DB0CB100;
      *(v57 + 10) = 239;
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *&v64 = v50;
      sub_1DAF40D20(&v64, v63);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3B11C(v63, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
      v59 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v47 = sub_1DB09D6B4();
      v48 = sub_1DB09D604();
      v49 = [v59 initWithDomain:v47 code:-22208 userInfo:v48];
    }

    else
    {
      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v37 = MEMORY[0x1E69E7CC0];
      v38 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v38 + 16))
      {
        v39 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v40)
        {
          sub_1DAF409DC(*(v38 + 56) + 32 * v39, &v64);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v37 = *&v63[0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1DAF72EC0(0, *(v37 + 2) + 1, 1, v37);
      }

      v42 = *(v37 + 2);
      v41 = *(v37 + 3);
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        v61 = sub_1DAF72EC0((v41 > 1), v42 + 1, 1, v37);
        v43 = v42 + 1;
        v37 = v61;
      }

      *(v37 + 2) = v43;
      v44 = &v37[56 * v42];
      *(v44 + 4) = 0xD000000000000026;
      *(v44 + 5) = 0x80000001DB0CB120;
      *(v44 + 6) = 0xD000000000000029;
      *(v44 + 7) = 0x80000001DB0CAFE0;
      *(v44 + 8) = 0xD000000000000013;
      *(v44 + 9) = 0x80000001DB0CB100;
      *(v44 + 10) = 236;
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *&v64 = v37;
      sub_1DAF40D20(&v64, v63);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3B11C(v63, 0x636F766E4949444FLL, 0xEE00736E6F697461, v45);
      v46 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v47 = sub_1DB09D6B4();
      v48 = sub_1DB09D604();
      v49 = [v46 initWithDomain:v47 code:-22207 userInfo:v48];
    }

    v60 = v49;

    swift_willThrow();
  }

  else
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v25 = MEMORY[0x1E69E7CC0];
    v26 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v26 + 16))
    {
      v27 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v28)
      {
        sub_1DAF409DC(*(v26 + 56) + 32 * v27, &v64);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v25 = *&v63[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1DAF72EC0(0, *(v25 + 2) + 1, 1, v25);
    }

    v30 = *(v25 + 2);
    v29 = *(v25 + 3);
    if (v30 >= v29 >> 1)
    {
      v25 = sub_1DAF72EC0((v29 > 1), v30 + 1, 1, v25);
    }

    *(v25 + 2) = v30 + 1;
    v31 = &v25[56 * v30];
    *(v31 + 4) = 0xD000000000000028;
    *(v31 + 5) = 0x80000001DB0CAFB0;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x80000001DB0CAFE0;
    *(v31 + 8) = 0xD000000000000013;
    *(v31 + 9) = 0x80000001DB0CB100;
    *(v31 + 10) = 233;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v64 = v25;
    sub_1DAF40D20(&v64, v63);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C(v63, 0x636F766E4949444FLL, 0xEE00736E6F697461, v32);
    v33 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v34 = sub_1DB09D6B4();
    v35 = sub_1DB09D604();
    v36 = [v33 initWithDomain:v34 code:-22206 userInfo:v35];

    swift_willThrow();
  }

  return 0;
}

id sub_1DB0528D0(SEL *a1, unint64_t *a2)
{
  v5 = *(v2 + 128);
  v6 = sub_1DB09D6B4();
  v7 = [v5 accountTypeWithAccountTypeIdentifier_];

  v8 = [v5 accountsWithAccountType_];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1DB09D934();
  }

  else
  {
    v10 = 0;
  }

  if (qword_1EE301DE8 != -1)
  {
LABEL_28:
    swift_once();
  }

  v11 = qword_1EE30A148;
  v12 = sub_1DB09DB54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
  v13 = swift_allocObject();
  v14 = v13;
  *(v13 + 16) = xmmword_1DB0A0500;
  if (v10)
  {
    v15 = *(v10 + 16);
  }

  else
  {
    v15 = 0;
  }

  v16 = MEMORY[0x1E69E65A8];
  *(v13 + 56) = MEMORY[0x1E69E6530];
  *(v13 + 64) = v16;
  *(v13 + 32) = v15;
  *(v13 + 96) = MEMORY[0x1E69E6158];
  *(v13 + 104) = sub_1DAF4DC24();
  *(v14 + 72) = a1;
  *(v14 + 80) = a2;

  sub_1DB09D444("AccountStore returned %{public}d accounts of type %@", 52, 2, &dword_1DAF16000, v11, v12, v14);

  if (v10)
  {
    v26 = v7;
    v17 = *(v10 + 16);

    v7 = 0;
    a2 = &qword_1EE300978;
    a1 = &unk_1E85EE000;
    v18 = &unk_1E85EE000;
    while (1)
    {
      if (v7 == v17)
      {
        v31 = 0u;
        v32 = 0u;
        v7 = v17;
      }

      else
      {
        if (v7 >= *(v10 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        sub_1DAF409DC(v10 + 32 + 32 * v7++, &v31);
      }

      v30[0] = v31;
      v30[1] = v32;
      if (!*(&v32 + 1))
      {
        swift_bridgeObjectRelease_n();
        v7 = v26;
        break;
      }

      sub_1DAF40D20(v30, v29);
      sub_1DAF409DC(v29, v27);
      sub_1DAF4062C(0, &qword_1EE300978, 0x1E6959A28);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v28 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      v19 = v28;
      if (v28)
      {
        if ([v28 a1[297]])
        {
          if ([v19 v18[298]])
          {
            v20 = [v19 normalizedDSID];
            if (v20)
            {
              v21 = v20;
              sub_1DB09D6C4();

              a1 = &unk_1E85EE000;
              v22 = sub_1DB09D7A4();

              v23 = v22 <= 3;
              v18 = &unk_1E85EE000;
              if (!v23)
              {
                swift_bridgeObjectRelease_n();
                v7 = v26;
                goto LABEL_26;
              }
            }
          }
        }
      }
    }
  }

  v24 = sub_1DB09DB44();
  sub_1DB09D444("Couldn't get accounts", 21, 2, &dword_1DAF16000, v11, v24, MEMORY[0x1E69E7CC0]);
  v19 = 0;
LABEL_26:

  return v19;
}

uint64_t ODIAccountManager.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ODIAccountManager.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1DB052CE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF97898;

  return sub_1DB04CF14();
}

uint64_t sub_1DB052D70(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *v2;
  v3[4] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1DB052D94, v4, 0);
}

uint64_t sub_1DB052D94()
{
  v1 = sub_1DB0528D0(*(v0 + 16), *(v0 + 24));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t dispatch thunk of ODIAccountManagerProtocol.primaryAppleAccount()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB0532CC;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ODIAccountManagerProtocol.getAccount(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DAFD37FC;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ODIAccountManager.primaryAppleAccount()()
{
  v4 = (*(*v0 + 160) + **(*v0 + 160));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DAF61E90;

  return v4();
}

uint64_t dispatch thunk of ODIAccountManager.appleID()()
{
  v4 = (*(*v0 + 168) + **(*v0 + 168));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DAF680EC;

  return v4();
}