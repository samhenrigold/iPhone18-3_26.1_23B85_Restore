uint64_t sub_3D71C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = _swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_2B0C(&qword_2292D0, &qword_1BC390);
  result = sub_1B5054();
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
    result = sub_1B57E4();
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
    *(v9[6] + 8 * v20) = v16;
    ++v9[2];
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

uint64_t sub_3D908(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v8 = _swiftEmptySetSingleton;
LABEL_6:

    return v8;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_2B0C(&qword_229418, &qword_1BC4B8);
  result = sub_1B5054();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 56;
  v32 = v4;
  v33 = result;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v34 = (v9 - 1) & v9;
LABEL_17:
    v15 = *(v4 + 48) + 40 * (v12 | (v10 << 6));
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    v20 = *(v15 + 32);
    sub_1B57F4();
    sub_1B5804(v17);
    sub_1B5834(v16);
    sub_1B5814(v18);
    if (v20 == 1)
    {
      sub_1B5814(0);
    }

    else
    {
      sub_1B5814(1u);
      sub_1B5834(v19);
    }

    result = sub_1B5844();
    v8 = v33;
    v21 = -1 << *(v33 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v11 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_30;
        }
      }

      goto LABEL_34;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_30:
    *(v11 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = *(v33 + 48) + 40 * v24;
    *v29 = v17;
    *(v29 + 8) = v16;
    *(v29 + 16) = v18;
    *(v29 + 24) = v19;
    *(v29 + 32) = v20;
    ++*(v33 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_35;
    }

    v4 = v32;
    v9 = v34;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      goto LABEL_6;
    }

    v14 = a1[v10];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v34 = (v14 - 1) & v14;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

unsigned __int8 *sub_3DBA4(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_1B4954();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_3E6B4(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
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
      result = sub_1B5154();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
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
                  goto LABEL_129;
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

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *sub_3E128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1B4954();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_3E6B4(result, v5);
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
      result = sub_1B5154();
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

uint64_t sub_3E6B4(uint64_t a1, unint64_t a2)
{
  v2 = sub_1B4964();
  v6 = sub_3E734(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_3E734(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1B4EC4();
    if (!v9 || (v10 = v9, v11 = sub_35594(v9, 0, &qword_2291E8, &qword_1BC2C8), v12 = sub_3E89C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1B4874();

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
      return sub_1B4874();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1B5154();
LABEL_4:

  return sub_1B4874();
}

unint64_t sub_3E89C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_3EABC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1B4914();
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
          result = sub_1B5154();
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

    result = sub_3EABC(v12, a6, a7);
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

    result = sub_1B48F4();
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

unint64_t sub_3EABC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1B4924();
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
    v5 = sub_1B4904();
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

void *sub_3EB38(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
    v14 = (&dword_0 + 1);
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
      v19 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v19)
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

uint64_t sub_3EC90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = sub_2B0C(&qword_2293C8, &qword_1D07B0);
  v36 = *(v39 - 8);
  v8 = __chkstk_darwin(v39);
  v38 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v37 = (&v32 - v11);
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v22 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v22;
    a1[4] = v15;
    return a3;
  }

  if (!a3)
  {
    v22 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v18 = 1;
    v35 = a3;
    while (v15)
    {
LABEL_14:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v16;
      v23 = v21 | (v16 << 6);
      v24 = *(a4 + 56);
      v25 = a4;
      v26 = *(*(a4 + 48) + v23);
      v27 = v24 + *(*(type metadata accessor for AttributeAffinityResult(0) - 8) + 72) * v23;
      v28 = v38;
      sub_42C00(v27, &v38[*(v39 + 48)]);
      *v28 = v26;
      v29 = v28;
      a1 = v37;
      sub_42C64(v29, v37);
      sub_42C64(a1, a2);
      a3 = v35;
      if (v18 == v35)
      {
        a1 = v34;
        a4 = v25;
        goto LABEL_23;
      }

      a2 += *(v36 + 72);
      result = v18;
      v30 = __OFADD__(v18++, 1);
      a4 = v25;
      v16 = v22;
      if (v30)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v16 = v20;
        goto LABEL_14;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v31 = v16 + 1;
    }

    else
    {
      v31 = v17;
    }

    v22 = v31 - 1;
    a3 = result;
    a1 = v34;
LABEL_23:
    v13 = v33;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_3EF0C(void *result, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v21 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 568 * (v17 | (v12 << 6)));
      memcpy(__dst, v18, 0x231uLL);
      memmove(v11, v18, 0x231uLL);
      if (v14 == v10)
      {
        sub_4299C(__dst, v22);
        goto LABEL_23;
      }

      v11 += 568;
      sub_4299C(__dst, v22);
      result = v14;
      v19 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v19)
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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = v13;
    }

    v12 = v20 - 1;
    v10 = result;
LABEL_23:
    v7 = v21;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_3F09C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
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

void *sub_3F1A0(void *result, char *__dst, uint64_t a3, uint64_t a4)
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
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v27 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 136 * (v17 | (v12 << 6)));
      v29[0] = *v18;
      v19 = v18[4];
      v21 = v18[1];
      v20 = v18[2];
      v29[3] = v18[3];
      v29[4] = v19;
      v29[1] = v21;
      v29[2] = v20;
      v23 = v18[6];
      v22 = v18[7];
      v24 = v18[5];
      v30 = *(v18 + 128);
      v29[6] = v23;
      v29[7] = v22;
      v29[5] = v24;
      memmove(v11, v18, 0x81uLL);
      if (v14 == v10)
      {
        sub_429F8(v29, v28);
        goto LABEL_23;
      }

      v11 += 136;
      sub_429F8(v29, v28);
      result = v14;
      v25 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v25)
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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = v13;
    }

    v12 = v26 - 1;
    v10 = result;
LABEL_23:
    v7 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_3F350(void *result, char *__dst, uint64_t a3, uint64_t a4)
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
  if (!__dst)
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
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      memmove(v11, (*(a4 + 56) + 384 * (v17 | (v12 << 6))), 0x179uLL);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 384;
      result = v14;
      v18 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v18)
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
        goto LABEL_26;
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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_3F4A0(void *result, char *a2, uint64_t a3, uint64_t a4)
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
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v21 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 568 * (v17 | (v12 << 6)));
      memcpy(__dst, v18, 0x231uLL);
      memmove(v11, v18, 0x231uLL);
      if (v14 == v10)
      {
        sub_4299C(__dst, v22);
        goto LABEL_23;
      }

      v11 += 568;
      sub_4299C(__dst, v22);
      result = v14;
      v19 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v19)
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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = v13;
    }

    v12 = v20 - 1;
    v10 = result;
LABEL_23:
    v7 = v21;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_3F630(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v25 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 56) + 40 * (v17 | (v12 << 6));
      v19 = *(v18 + 8);
      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      v22 = *(v18 + 32);
      *v11 = *v18;
      *(v11 + 8) = v19;
      *(v11 + 16) = v21;
      *(v11 + 24) = v20;
      *(v11 + 32) = v22;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 40;

      result = v14;
      v23 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v23)
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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = v13;
    }

    v12 = v24 - 1;
    v10 = result;
LABEL_23:
    v7 = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_3F7C0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v16 = *(a4 + 16);
    v6 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v16;
    return v6;
  }

  if (!a3)
  {
    v16 = *(a4 + 16);
LABEL_13:
    v6 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = a2;
      v9 = 0;
      v10 = a3 - 1;
      v11 = (a4 + 40 * v6 + 24);
      while (v6 + v9 <= *(a4 + 16))
      {
        v12 = *(v11 - 24);
        v14 = *(v11 - 2);
        v13 = *(v11 - 1);
        v15 = *v11;
        *v8 = *(v11 - 4);
        *(v8 + 8) = v12;
        *(v8 + 16) = v14;
        *(v8 + 24) = v13;
        *(v8 + 32) = v15;
        if (!(v10 + v9))
        {

          v16 = v6 + v9 - 1;
          goto LABEL_13;
        }

        --v9;
        v11 -= 5;
        v8 += 40;
        v16 = v6 + v9;
        if (!(v6 + v9))
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    v16 = 0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void *sub_3F8D4(void *result, char *__dst, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = result;
  v9 = a7 >> 1;
  if (!__dst)
  {
LABEL_11:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *v8 = a4;
    v8[1] = a5;
    v8[2] = a6;
    v8[3] = a7;
    v8[4] = v9;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = __dst;
    v21 = a4;
    v22 = a5;
    v23 = a7;
    v11 = 0;
    v12 = v9 - a6;
    v19 = a3;
    v20 = a7 >> 1;
    v13 = a3 - 1;
    v14 = (a5 + 136 * v9 - 136);
    while (1)
    {
      if (v12 == v11)
      {
        v9 = a6;
        a3 = v12;
        a5 = v22;
        a7 = v23;
        a4 = v21;
        goto LABEL_13;
      }

      if (v9 <= a6)
      {
        break;
      }

      v15 = *(v14 + 7);
      v25[6] = *(v14 + 6);
      v25[7] = v15;
      v26 = v14[128];
      v16 = *(v14 + 3);
      v25[2] = *(v14 + 2);
      v25[3] = v16;
      v17 = *(v14 + 5);
      v25[4] = *(v14 + 4);
      v25[5] = v17;
      v18 = *(v14 + 1);
      v25[0] = *v14;
      v25[1] = v18;
      memmove(v10, v14, 0x81uLL);
      if (v13 == v11)
      {
        sub_429F8(v25, v24);
        a4 = v21;
        v9 = ~v11 + v20;
        a5 = v22;
        a7 = v23;
        a3 = v19;
        goto LABEL_13;
      }

      v10 += 136;
      result = sub_429F8(v25, v24);
      ++v11;
      v14 -= 136;
      --v9;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_3FA2C(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!__dst)
  {
    v15 = *(a4 + 16);
    v6 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v15;
    return v6;
  }

  if (!a3)
  {
    v15 = *(a4 + 16);
LABEL_13:
    v6 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = __dst;
      v9 = 0;
      v10 = (a4 + 136 * v6 - 104);
      while (v6 + v9 <= *(a4 + 16))
      {
        v11 = *(v10 + 7);
        v17[6] = *(v10 + 6);
        v17[7] = v11;
        v18 = v10[128];
        v12 = *(v10 + 3);
        v17[2] = *(v10 + 2);
        v17[3] = v12;
        v13 = *(v10 + 5);
        v17[4] = *(v10 + 4);
        v17[5] = v13;
        v14 = *(v10 + 1);
        v17[0] = *v10;
        v17[1] = v14;
        memmove(v8, v10, 0x81uLL);
        if (a3 + v9 == 1)
        {
          sub_429F8(v17, v16);
          v15 = v6 + v9 - 1;
          goto LABEL_13;
        }

        v8 += 136;
        sub_429F8(v17, v16);
        --v9;
        v10 -= 136;
        v15 = v6 + v9;
        if (!(v6 + v9))
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    v15 = 0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void *sub_3FB64(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
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
      v15 = *(a4 + 48) + 40 * (v14 | (v9 << 6));
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      v18 = *(v15 + 32);
      *a2 = *v15;
      *(a2 + 16) = v16;
      *(a2 + 24) = v17;
      *(a2 + 32) = v18;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 40;
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
      v20 = v9 + 1;
    }

    else
    {
      v20 = (63 - v6) >> 6;
    }

    v9 = v20 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_3FC80(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v14 = (v9 << 9) | (8 * __clz(__rbit64(v7)));
      v15 = *(*(a4 + 56) + v14);
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + v14);
      a2[1] = v15;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 2;
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
      v17 = v9 + 1;
    }

    else
    {
      v17 = (63 - v6) >> 6;
    }

    v9 = v17 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_3FD8C(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
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
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
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

void *sub_3FE88(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_3FF88(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
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
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + ((v12 << 12) | (v17 << 6)));
      v19 = v18[3];
      v21 = *v18;
      v20 = v18[1];
      v28[2] = v18[2];
      v28[3] = v19;
      v28[0] = v21;
      v28[1] = v20;
      v22 = *v18;
      v23 = v18[1];
      v24 = v18[3];
      v11[2] = v18[2];
      v11[3] = v24;
      *v11 = v22;
      v11[1] = v23;
      if (v14 == v10)
      {
        sub_42BA4(v28, v27);
        goto LABEL_24;
      }

      v11 += 4;
      sub_42BA4(v28, v27);
      result = v14;
      v25 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v25)
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
      v26 = v12 + 1;
    }

    else
    {
      v26 = (63 - v7) >> 6;
    }

    v12 = v26 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_40110(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_40174(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_4025C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1B4CC4();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_111A38(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_402F4()
{
  result = qword_229008;
  if (!qword_229008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229008);
  }

  return result;
}

uint64_t sub_40348(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_229010, &unk_1D15F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_403B8()
{
  result = qword_229030;
  if (!qword_229030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229030);
  }

  return result;
}

uint64_t sub_40474(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_404C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_40528(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_4058C(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_229038, &qword_1BB430);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_40610()
{
  result = qword_229088;
  if (!qword_229088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229088);
  }

  return result;
}

uint64_t sub_40664(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_229020, &qword_1BB428);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_40710(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v6 = *(a1 + 16);
  a2();
  result = sub_1B4CC4();
  v11 = result;
  if (v6)
  {
    v8 = (a1 + 32);
    do
    {
      v9 = *v8++;
      a4(&v10, v9);
      --v6;
    }

    while (v6);
    return v11;
  }

  return result;
}

uint64_t sub_40790(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  result = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  result = sub_1B4CC4();
  v14 = result;
  v7 = v4 - a2;
  if (v4 != a2)
  {
    if (a2 <= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = a2;
    }

    v9 = v8 - a2;
    v10 = (a1 + 16 * a2 + 8);
    while (v9)
    {
      v12 = *(v10 - 1);
      v11 = *v10;

      sub_111A38(&v13, v12, v11);

      --v9;
      v10 += 2;
      if (!--v7)
      {
        return v14;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_40854(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1B4CC4();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_111CE0(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t _s20BooksPersonalization24AnyCodableArrayContainerV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  v6 = 0;
  for (i = 32; ; i += 40)
  {
    if (v4 == v6)
    {

      return 1;
    }

    if (v6 >= *(v2 + 16))
    {
      break;
    }

    result = sub_43050(v2 + i, &v13, &qword_229010, &unk_1D15F0);
    v8 = *(v3 + 16);
    if (v6 == v8)
    {

      sub_42F48(&v13, &qword_229010, &unk_1D15F0);
      return 1;
    }

    if (v6++ >= v8)
    {
      goto LABEL_15;
    }

    v16[0] = v13;
    v16[1] = v14;
    v17 = v15;
    sub_43050(v3 + i, v18, &qword_229010, &unk_1D15F0);
    sub_43050(v16, v11, &qword_229010, &unk_1D15F0);
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
    sub_40348(v11, &v13);
    sub_43050(v18, v10, &qword_229010, &unk_1D15F0);
    memset(v11, 0, sizeof(v11));
    v12 = 0;
    sub_40348(v10, v11);
    v9 = static AnyCodableContainer.== infix(_:_:)(&v13, v11);
    sub_40444(v11);
    sub_40444(&v13);
    result = sub_42F48(v16, &qword_229098, &qword_1BB460);
    if ((v9 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t _s20BooksPersonalization25AnyCodableObjectContainerV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(*a1 + 16) != *(*a2 + 16))
  {
    return 0;
  }

  v5 = sub_2A284(v4);

  v7 = sub_2A284(v6);
  v8 = sub_2DF24(v5, v7);

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = 1 << *(v2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v2 + 64);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  do
  {
    if (!v11)
    {
      do
      {
        v23 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
          goto LABEL_23;
        }

        if (v23 >= v12)
        {
          v24 = 1;
          goto LABEL_20;
        }

        v11 = *(v2 + 64 + 8 * v23);
        ++v14;
      }

      while (!v11);
      v14 = v23;
      if (*(v2 + 16))
      {
        goto LABEL_8;
      }

LABEL_17:
      __break(1u);
      return 0;
    }

    if (!*(v2 + 16))
    {
      goto LABEL_17;
    }

LABEL_8:
    v15 = (*(v2 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v11)))));
    v17 = *v15;
    v16 = v15[1];

    result = sub_3A678(v17, v16);
    if ((v18 & 1) == 0)
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

    sub_43050(*(v2 + 56) + 40 * result, v26, &qword_229010, &unk_1D15F0);
    memset(v28, 0, sizeof(v28));
    v29 = 0;
    result = sub_40348(v26, v28);
    if (!*(v3 + 16))
    {
      goto LABEL_24;
    }

    v19 = sub_3A678(v17, v16);
    v21 = v20;

    if ((v21 & 1) == 0)
    {
      goto LABEL_25;
    }

    v11 &= v11 - 1;
    sub_43050(*(v3 + 56) + 40 * v19, v25, &qword_229010, &unk_1D15F0);
    memset(v26, 0, sizeof(v26));
    v27 = 0;
    sub_40348(v25, v26);
    v22 = static AnyCodableContainer.== infix(_:_:)(v28, v26);
    sub_40444(v26);
    result = sub_40444(v28);
  }

  while ((v22 & 1) != 0);
  v24 = 0;
LABEL_20:

  return v24;
}

uint64_t sub_40D04(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_42AA8();
  result = sub_1B4CC4();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      memcpy(__dst, v4, 0x231uLL);
      sub_4299C(__dst, v6);
      sub_111DC0(v5, __dst);
      memcpy(v6, v5, 0x231uLL);
      sub_2601C(v6);
      v4 += 568;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_40DB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_42FFC();
  result = sub_1B4CC4();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_112174(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_40EB0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v6 = *(a1 + 16);
  a2();
  result = sub_1B4CC4();
  v11 = result;
  if (v6)
  {
    v8 = (a1 + 32);
    do
    {
      v9 = *v8++;
      a4(&v10, v9);
      --v6;
    }

    while (v6);
    return v11;
  }

  return result;
}

uint64_t sub_40F30(uint64_t a1)
{
  v2 = sub_1B4414();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_42FA8(&qword_229448, &type metadata accessor for FeatureKey, &protocol conformance descriptor for FeatureKey);
  result = sub_1B4CC4();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_1124D0(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_410CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  result = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1B4CC4();
  v12 = result;
  v7 = __OFSUB__(v4, a2);
  v8 = v4 - a2;
  if (!v8)
  {
    return result;
  }

  if ((v8 < 0) ^ v7 | (v8 == 0))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v9 = (a1 + 8 * a2);
  do
  {
    v10 = *v9++;
    sub_111CE0(&v11, v10);
    --v8;
  }

  while (v8);
  return v12;
}

uint64_t sub_41158(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v5 = result;
  sub_42AA8();
  result = sub_1B4CC4();
  v12 = result;
  v6 = v3 - a2;
  if (v3 != a2)
  {
    if (a2 <= v3)
    {
      v7 = v3;
    }

    else
    {
      v7 = a2;
    }

    v8 = v7 - a2;
    v9 = (v5 + 568 * a2);
    while (v8)
    {
      memcpy(__dst, v9, 0x231uLL);
      sub_4299C(__dst, v11);
      sub_111DC0(v10, __dst);
      memcpy(v11, v10, 0x231uLL);
      result = sub_2601C(v11);
      --v8;
      v9 += 568;
      if (!--v6)
      {
        return v12;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_4123C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B48B4();

    return sub_1B4964();
  }

  return result;
}

void *sub_412D8(uint64_t a1)
{
  sub_2B0C(&qword_2290B8, &qword_1BB480);
  result = sub_1B5294();
  v3 = 0;
  v26 = result;
  v27 = a1;
  v6 = *(a1 + 64);
  v5 = a1 + 64;
  v4 = v6;
  v7 = 1 << *(v5 - 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v25 = result + 8;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v28 = (v9 - 1) & v9;
LABEL_10:
      v14 = v11 | (v3 << 6);
      v15 = (*(v27 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      sub_43050(*(v27 + 56) + 32 * v14, v31, &qword_229018, &qword_1BB420);

      v18 = v32;
      sub_2C010(v31, v29);
      sub_42F48(v31, &qword_229018, &qword_1BB420);
      v32 = v18;
      if (v18)
      {
        break;
      }

      result = v26;
      *(v25 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v19 = (v26[6] + 16 * v14);
      *v19 = v16;
      v19[1] = v17;
      v20 = v26[7] + 40 * v14;
      v21 = v29[1];
      *v20 = v29[0];
      *(v20 + 16) = v21;
      *(v20 + 32) = v30;
      v22 = v26[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_17;
      }

      v26[2] = v24;
      v9 = v28;
      if (!v28)
      {
        goto LABEL_5;
      }
    }

    return v26;
  }

  else
  {
LABEL_5:
    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return result;
      }

      v13 = *(v5 + 8 * v3);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v28 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

void *sub_414C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v15 = _swiftEmptyArrayStorage;
    sub_374F4(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    for (i = a1 + 32; ; i += 32)
    {
      sub_43050(i, v12, &qword_229018, &qword_1BB420);
      sub_2C010(v12, v13);
      if (v1)
      {
        break;
      }

      sub_42F48(v12, &qword_229018, &qword_1BB420);
      v15 = v3;
      v7 = v3[2];
      v6 = v3[3];
      if (v7 >= v6 >> 1)
      {
        sub_374F4((v6 > 1), v7 + 1, 1);
        v3 = v15;
      }

      v3[2] = v7 + 1;
      v8 = &v3[5 * v7];
      v9 = v13[0];
      v10 = v13[1];
      v8[8] = v14;
      *(v8 + 2) = v9;
      *(v8 + 3) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    sub_42F48(v12, &qword_229018, &qword_1BB420);
  }

  return v3;
}

uint64_t sub_4161C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_41670(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_416C4(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if (a3 > 2u)
  {
    if (a3 != 3 && a3 != 4 && a3 != 5)
    {
      return result;
    }
  }

  switch(a3)
  {
    case 0u:

    case 1u:
      return sub_41670(result, a2);
    case 2u:
  }

  return result;
}

unint64_t sub_41710()
{
  result = qword_2290C0;
  if (!qword_2290C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2290C0);
  }

  return result;
}

unint64_t sub_41764()
{
  result = qword_2290D0;
  if (!qword_2290D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2290D0);
  }

  return result;
}

unint64_t sub_41800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1B4B54())
  {
    sub_1B52C4();
    v13 = sub_1B52B4();
  }

  else
  {
    v13 = _swiftEmptyDictionarySingleton;
  }

  result = sub_1B4B84();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1B4B44())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1B50A4();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_15B790(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_41AEC(uint64_t a1, uint64_t a2, void *a3)
{
  v3._countAndFlagsBits = 0x2D746E65746E6F63;
  v3._object = 0xEC00000065707974;
  v5 = CommonCurrency.Headers.firstValue(name:)(v3);
  result = v5.value._countAndFlagsBits;
  if (v5.value._object)
  {
    result = sub_1B55D4();
    if (v8)
    {
      sub_402F4();
      if (sub_1B4F24())
      {
      }

      else
      {
        sub_41710();
        swift_allocError();
        *v6 = v7;
        *(v6 + 8) = v8;
        *(v6 + 16) = 5;
        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_41BF8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_41C08(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for DateConfiguration.EncoderInput(uint64_t a1)
{
  result = qword_229198;
  if (!qword_229198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_41C80(uint64_t a1)
{
  v2 = type metadata accessor for DateConfiguration.EncoderInput(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_41D44()
{
  v1 = sub_1B4014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_41E68()
{
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_41EE8()
{
  result = qword_2290F8;
  if (!qword_2290F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2290F8);
  }

  return result;
}

unint64_t sub_41F40()
{
  result = qword_229100;
  if (!qword_229100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229100);
  }

  return result;
}

unint64_t sub_41F98()
{
  result = qword_229108;
  if (!qword_229108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229108);
  }

  return result;
}

uint64_t sub_41FEC(uint64_t a1)
{
  result = sub_42094(&qword_229110, &qword_229058, &qword_1BB440, &protocol conformance descriptor for [A]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_42040(uint64_t a1)
{
  result = sub_42094(&qword_229118, &qword_229048, &qword_1BB438, &protocol conformance descriptor for [A : B]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_42094(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_420E0()
{
  result = qword_229120;
  if (!qword_229120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229120);
  }

  return result;
}

unint64_t sub_42144()
{
  result = qword_229128;
  if (!qword_229128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229128);
  }

  return result;
}

unint64_t sub_421CC()
{
  result = qword_229130;
  if (!qword_229130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229130);
  }

  return result;
}

unint64_t sub_42224()
{
  result = qword_229138;
  if (!qword_229138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229138);
  }

  return result;
}

uint64_t sub_4228C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  if (v3)
  {
    v4 = *(a1 + 24);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v3;
  a2[1] = v4;
  return sub_41BF8(v3, v2);
}

uint64_t sub_422A4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_41BF8(*a1, a1[1]);
  result = sub_41C08(v5, v6);
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  return result;
}

uint64_t sub_42348(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_42360(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_42374(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_423D0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_4245C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 initializeBufferWithCopyOfBuffer for BookHistory.Errors(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_42498(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_424E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_4254C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_425A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B40C4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_42620(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B40C4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_42690(uint64_t a1)
{
  result = sub_1B40C4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_4270C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_42754(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

__n128 sub_427B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_427D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_42818(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

unint64_t sub_42890()
{
  result = qword_2291D0;
  if (!qword_2291D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2291D0);
  }

  return result;
}

unint64_t sub_428EC()
{
  result = qword_2291D8;
  if (!qword_2291D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2291D8);
  }

  return result;
}

unint64_t sub_42944()
{
  result = qword_2291E0;
  if (!qword_2291E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2291E0);
  }

  return result;
}

unint64_t sub_42A54()
{
  result = qword_229278;
  if (!qword_229278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229278);
  }

  return result;
}

unint64_t sub_42AA8()
{
  result = qword_2292B0;
  if (!qword_2292B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2292B0);
  }

  return result;
}

unint64_t sub_42AFC()
{
  result = qword_2292D8;
  if (!qword_2292D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2292D8);
  }

  return result;
}

unint64_t sub_42B50()
{
  result = qword_229308;
  if (!qword_229308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229308);
  }

  return result;
}

uint64_t sub_42C00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributeAffinityResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_42C64(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_2293C8, &qword_1D07B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_42D84(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 <= 1)
  {
    return 0;
  }

  else
  {
    return v1 ^ 0xFF;
  }
}

void *sub_42D98()
{
  result = (*(v0 + 16))(&v3);
  if (!v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_42DD8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_42E10@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

unint64_t sub_42EA0()
{
  result = qword_2294F0;
  if (!qword_2294F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2294F0);
  }

  return result;
}

unint64_t sub_42EF4()
{
  result = qword_229520;
  if (!qword_229520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229520);
  }

  return result;
}

uint64_t sub_42F48(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2B0C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_42FA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_42FF0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_42FFC()
{
  result = qword_229558;
  if (!qword_229558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229558);
  }

  return result;
}

uint64_t sub_43050(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2B0C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_430B8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_430C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_43188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a3;
  v23 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a1;
  v28 = a2;
  v12 = *(*(a6 + 8) + 8);
  v13 = sub_FDC10(sub_435D0, v24, a5, &type metadata for Double, &type metadata for Never, v12, &protocol witness table for Never, a8);
  v14 = sub_176828(v13);
  v16 = v15;

  if ((v16 & 1) != 0 || (v14 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    swift_getAssociatedTypeWitness();
    return sub_1B4B24();
  }

  else
  {
    __chkstk_darwin(v17);
    v21[2] = a5;
    v21[3] = a6;
    v21[4] = a1;
    v21[5] = a2;
    v21[6] = v14;
    v21[7] = v22;
    v21[8] = v23;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return sub_FDC10(sub_43614, v21, a5, AssociatedTypeWitness, &type metadata for Never, v12, &protocol witness table for Never, v19);
  }
}

uint64_t RandomAccessCollection<>.normalized()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return sub_43188(sub_43354, 0, sub_4335C, 0, a1, a2, a7, a8);
}

{
  return sub_43188(sub_4343C, 0, sub_43444, 0, a1, a2, a7, a8);
}

uint64_t sub_4335C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  v8 = *(a1 + 24);
  *(a2 + 24) = v8;
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = v7;
  *(a2 + 56) = a3;
  sub_43688(v4, v8);
}

uint64_t RandomAccessCollection<>.filter(allowNegativeScores:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_434B4(a1, a2, a3, sub_433F0, &type metadata for ScoredBook);
}

{
  return sub_434B4(a1, a2, a3, sub_435C0, &type metadata for ScoredGenre);
}

uint64_t sub_43444@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = a1[2];
  v5 = a1[3];
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = a3;
}

uint64_t sub_434B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1;
  __chkstk_darwin(a1);
  (*(v8 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9, a2);
  if (v6)
  {
    return sub_1B4BA4();
  }

  else
  {
    return sub_1B49E4();
  }
}

double sub_435D0@<D0>(double *a1@<X8>)
{
  result = fabs((*(v1 + 32))());
  *a1 = result;
  return result;
}

uint64_t sub_43614(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = (*(v1 + 32))();
  return v4(a1, v5 / v3);
}

uint64_t sub_43688(uint64_t result, char a2)
{
  if (a2 != -1)
  {
  }

  return v2;
}

uint64_t ScoredBook.copyWith(score:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v6 = *(v2 + 32);
  v5 = *(v2 + 40);
  v7 = *(v2 + 48);
  *a1 = *v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v8 = *(v2 + 24);
  *(a1 + 24) = v8;
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = v7;
  *(a1 + 56) = a2;
  sub_43688(v4, v8);
}

uint64_t ScoredBook.book.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v6 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  v7 = *(v1 + 24);
  *(a1 + 24) = v7;
  *(a1 + 32) = v5;
  *(a1 + 40) = v4;
  *(a1 + 48) = v6;
  sub_43688(v3, v7);
}

uint64_t ScoredBook.init(book:score:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *(result + 24);
  v6 = *(result + 32);
  *a2 = *result;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = *(result + 40);
  *(a2 + 56) = a3;
  return result;
}

Swift::Int EventType.hashValue.getter()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B5804(v1);
  return sub_1B5844();
}

Swift::Int sub_43860(uint64_t a1)
{
  v2 = *v1;
  sub_1B57F4();
  sub_1B5804(v2);
  return sub_1B5844();
}

uint64_t sub_438A4()
{
  if (*v0)
  {
    return 0x65726F6373;
  }

  else
  {
    return 1802465122;
  }
}

uint64_t sub_438D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1802465122 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B5604();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_439AC(uint64_t a1)
{
  v2 = sub_43C38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_439E8(uint64_t a1)
{
  v2 = sub_43C38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ScoredBook.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_229590, &qword_1BC600);
  v23 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v18 - v4;
  v6 = *v1;
  v19 = *(v1 + 8);
  v7 = v1[2];
  v9 = v1[4];
  v8 = v1[5];
  v20 = v6;
  v21 = v8;
  v10 = v1[6];
  v11 = a1[3];
  v12 = *(v1 + 24);
  v13 = a1;
  v15 = v14;
  sub_2698(v13, v11);
  sub_43688(v7, v12);
  sub_43C38();

  sub_1B5884();
  v25 = v20;
  v26 = v19;
  v27 = v7;
  v28 = v12;
  v29 = v9;
  v30 = v21;
  v31 = v10;
  v24 = 0;
  sub_43C8C();
  v16 = v22;
  sub_1B5544();
  sub_43CE0(v27, v28);

  if (!v16)
  {
    LOBYTE(v25) = 1;
    sub_1B5514();
  }

  return (*(v23 + 8))(v5, v15);
}

unint64_t sub_43C38()
{
  result = qword_229598;
  if (!qword_229598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229598);
  }

  return result;
}

unint64_t sub_43C8C()
{
  result = qword_2295A0;
  if (!qword_2295A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2295A0);
  }

  return result;
}

uint64_t sub_43CE0(uint64_t result, char a2)
{
  if (a2 != -1)
  {
  }

  return v2;
}

uint64_t ScoredBook.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_2B0C(&qword_2295A8, &qword_1BC608);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  sub_2698(a1, a1[3]);
  sub_43C38();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  LOBYTE(v28) = 0;
  sub_43FA0();
  sub_1B5404();
  v24 = v32;
  v23 = v33;
  v9 = v34;
  v10 = v35;
  v25 = v37;
  v26 = v36;
  v27 = v38;
  v40[0] = 1;
  sub_1B53D4();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  v13 = v24;
  *&v28 = v24;
  v14 = v23;
  BYTE8(v28) = v23;
  v15 = v9;
  *&v29 = v9;
  v16 = v10;
  BYTE8(v29) = v10;
  v17 = v26;
  *&v30 = v26;
  *(&v30 + 1) = v25;
  v18 = v27;
  *&v31 = v27;
  *(&v31 + 1) = v12;
  v19 = v29;
  *a2 = v28;
  a2[1] = v19;
  v20 = v31;
  a2[2] = v30;
  a2[3] = v20;
  sub_42BA4(&v28, &v32);
  sub_2BF8(a1);
  v32 = v13;
  v33 = v14;
  v34 = v15;
  v35 = v16;
  v36 = v17;
  v37 = v25;
  v38 = v18;
  v39 = v12;
  return sub_43FF4(&v32);
}

unint64_t sub_43FA0()
{
  result = qword_2295B0;
  if (!qword_2295B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2295B0);
  }

  return result;
}

uint64_t sub_44060(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t dispatch thunk of BookScorerType.score(_:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_441B4;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_441B4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t sub_442C4()
{
  result = qword_2295B8;
  if (!qword_2295B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2295B8);
  }

  return result;
}

unint64_t sub_4431C()
{
  result = qword_2295C0;
  if (!qword_2295C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2295C0);
  }

  return result;
}

unint64_t sub_44374()
{
  result = qword_2295C8;
  if (!qword_2295C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2295C8);
  }

  return result;
}

_BYTE *ForYouOptions.init(mediaType:excludedStoreIDs:hydratedBooksFetchLimit:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_443E4(uint64_t a1, int a2)
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

uint64_t sub_4442C(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of ForYouServiceType.fetchBooks(with:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_441B4;

  return v11(a1, a2, a3, a4);
}

unint64_t sub_445C0()
{
  v1 = 0x6F6874754178616DLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65726E654778616DLL;
  }
}

uint64_t sub_44630@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_44C98(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_44658(uint64_t a1)
{
  v2 = sub_4488C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_44694(uint64_t a1)
{
  v2 = sub_4488C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WorkServiceConfiguration.BookScoringConfiguration.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_2295D0, &qword_1BC8C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v11[2] = v1[2];
  v11[3] = v8;
  v11[1] = v9;
  sub_2698(a1, a1[3]);
  sub_4488C();
  sub_1B5884();
  v14 = 0;
  sub_1B5534();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = 1;
  sub_1B5534();
  v12 = 2;
  sub_1B54F4();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_4488C()
{
  result = qword_2295D8;
  if (!qword_2295D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2295D8);
  }

  return result;
}

uint64_t WorkServiceConfiguration.BookScoringConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2B0C(&qword_2295E0, &qword_1BC8C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_2698(a1, a1[3]);
  sub_4488C();
  sub_1B5864();
  if (!v2)
  {
    v19 = 0;
    v9 = sub_1B53F4();
    v18 = 1;
    v16 = sub_1B53F4();
    v17 = 2;
    v11 = sub_1B53B4();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    v14 = v16;
    *a2 = v9;
    a2[1] = v14;
    a2[2] = v11;
    a2[3] = v13;
  }

  return sub_2BF8(a1);
}

uint64_t sub_44AE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_44B30(uint64_t result, int a2, int a3)
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

unint64_t sub_44B94()
{
  result = qword_2295E8;
  if (!qword_2295E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2295E8);
  }

  return result;
}

unint64_t sub_44BEC()
{
  result = qword_2295F0;
  if (!qword_2295F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2295F0);
  }

  return result;
}

unint64_t sub_44C44()
{
  result = qword_2295F8;
  if (!qword_2295F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2295F8);
  }

  return result;
}

uint64_t sub_44C98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726E654778616DLL && a2 == 0xEB00000000734449;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6874754178616DLL && a2 == 0xEC00000073444972 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000000001D5820 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B5604();

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

uint64_t sub_44DC0(uint64_t a1)
{
  v2 = v1;
  v69 = sub_2B0C(&qword_229720, &unk_1BCB70);
  v4 = __chkstk_darwin(v69);
  v61 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v60 = &v52 - v7;
  v8 = __chkstk_darwin(v6);
  v59 = &v52 - v9;
  __chkstk_darwin(v8);
  v58 = &v52 - v10;
  v11 = type metadata accessor for CollectionRecommendation(0);
  v56 = *(v11 - 8);
  v57 = v11;
  __chkstk_darwin(v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v71 = _swiftEmptyArrayStorage;
  if (!v14)
  {
    return v71;
  }

  v77 = _swiftEmptyArrayStorage;
  sub_375B4(0, v14, 0);
  v71 = v77;
  v15 = a1 + 64;
  result = sub_1B4F84();
  if (result < 0 || result >= 1 << *(a1 + 32))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v52 = a1 + 72;
    v53 = v14;
    v70 = *(a1 + 36);
    v17 = 1;
    v54 = a1;
    v55 = a1 + 64;
    v68 = v13;
    while ((*(v15 + 8 * (result >> 6)) & (1 << result)) != 0)
    {
      if (v70 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v63 = 1 << result;
      v64 = result >> 6;
      v62 = v17;
      v18 = v69;
      v19 = *(v69 + 48);
      v20 = (*(a1 + 48) + 568 * result);
      v21 = result;
      v67 = result;
      memcpy(v74, v20, 0x231uLL);
      v22 = v58;
      memmove(v58, v20, 0x231uLL);
      v23 = *(a1 + 56);
      v72 = v2;
      v24 = (sub_2B0C(&qword_229728, &unk_1D14A0) - 8);
      sub_43050(v23 + *(*v24 + 72) * v21, &v22[v19], &qword_229728, &unk_1D14A0);
      v25 = v59;
      memcpy(v59, v22, 0x231uLL);
      sub_5ED18(&v22[v19], v25 + *(v18 + 48), &qword_229728, &unk_1D14A0);
      v26 = sub_2B0C(&qword_228F40, &unk_1BB360);
      v27 = *(v26 + 48);
      v66 = *(v26 + 64);
      sub_4299C(v74, &v73);
      v28 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
      v29 = v68;
      v30 = v72;
      sub_1B4364();
      v72 = v30;
      v31 = v60;
      sub_43050(v25, v60, &qword_229720, &unk_1BCB70);
      memcpy(v75, v31, sizeof(v75));
      v32 = v69;
      v33 = &v31[*(v69 + 48)];

      v65 = v24[14];
      v34 = (v29 + v27);
      v35 = v29;
      memcpy(v34, v75, 0x231uLL);
      v36 = v61;
      sub_43050(v25, v61, &qword_229720, &unk_1BCB70);
      memcpy(v76, v36, 0x231uLL);
      sub_2601C(v76);
      v37 = &v36[*(v32 + 48)];
      v38 = v24[14];
      *(v35 + v66) = *v37;
      swift_storeEnumTagMultiPayload();
      v39 = *(*(v28 - 8) + 8);
      v39(&v37[v38], v28);
      v39(&v33[v65], v28);
      v40 = v71;
      sub_42F48(v25, &qword_229720, &unk_1BCB70);
      v77 = v40;
      v42 = v40[2];
      v41 = v40[3];
      v71 = v40;
      if (v42 >= v41 >> 1)
      {
        sub_375B4((v41 > 1), v42 + 1, 1);
        v71 = v77;
      }

      v43 = v71;
      v71[2] = v42 + 1;
      sub_5EB94(v68, v43 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v42, type metadata accessor for CollectionRecommendation);
      a1 = v54;
      v15 = v55;
      v44 = 1 << *(v54 + 32);
      result = v67;
      if (v67 >= v44)
      {
        goto LABEL_27;
      }

      v45 = *(v55 + 8 * v64);
      if ((v45 & v63) == 0)
      {
        goto LABEL_28;
      }

      if (v70 != *(v54 + 36))
      {
        goto LABEL_29;
      }

      v46 = v45 & (-2 << (v67 & 0x3F));
      if (v46)
      {
        result = __clz(__rbit64(v46)) | v67 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v47 = v64 << 6;
        v48 = v64 + 1;
        v49 = (v52 + 8 * v64);
        while (v48 < (v44 + 63) >> 6)
        {
          v51 = *v49++;
          v50 = v51;
          v47 += 64;
          ++v48;
          if (v51)
          {
            sub_42FF0(v67, v70, 0);
            result = __clz(__rbit64(v50)) + v47;
            goto LABEL_19;
          }
        }

        sub_42FF0(v67, v70, 0);
        result = v44;
      }

LABEL_19:
      v2 = v72;
      if (v62 == v53)
      {
        return v71;
      }

      if ((result & 0x8000000000000000) == 0)
      {
        v17 = v62 + 1;
        if (result < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
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
  return result;
}

uint64_t sub_453FC(uint64_t a1)
{
  v56 = sub_2B0C(&qword_229728, &unk_1D14A0);
  v50 = *(v56 - 8);
  v3 = __chkstk_darwin(v56);
  v49 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v48 = (v40 - v5);
  v47 = sub_2B0C(&qword_229720, &unk_1BCB70);
  v6 = __chkstk_darwin(v47);
  v46 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v45 = v40 - v8;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v40[1] = v1;
  v62 = _swiftEmptyArrayStorage;
  sub_37618(0, v9, 0);
  v10 = v62;
  v11 = a1 + 64;
  result = sub_1B4F84();
  if (result < 0 || (v13 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v41 = a1 + 72;
    v42 = v9;
    v57 = *(a1 + 36);
    v14 = 1;
    v43 = a1 + 64;
    v44 = a1;
    while ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) != 0)
    {
      if (v57 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v52 = 1 << v13;
      v53 = v13 >> 6;
      v51 = v14;
      v15 = v47;
      v16 = *(v47 + 48);
      v17 = (*(a1 + 48) + 568 * v13);
      memcpy(v59, v17, 0x231uLL);
      v55 = v10;
      v18 = v45;
      memmove(v45, v17, 0x231uLL);
      sub_43050(*(a1 + 56) + *(v50 + 72) * v13, &v18[v16], &qword_229728, &unk_1D14A0);
      v54 = v13;
      v19 = v46;
      memcpy(v46, v18, 0x231uLL);
      v20 = &v19[*(v15 + 48)];
      sub_5ED18(&v18[v16], v20, &qword_229728, &unk_1D14A0);
      v21 = *v20;
      v22 = *(v56 + 48);
      memcpy(v60, v19, 0x231uLL);
      v23 = v48;
      *v48 = v21;
      v24 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
      v25 = *(v24 - 8);
      (*(v25 + 16))(v23 + v22, &v20[v22], v24);
      memcpy(v61, v60, 0x231uLL);
      v26 = v49;
      sub_43050(v23, v49, &qword_229728, &unk_1D14A0);
      sub_4299C(v59, v58);

      sub_4299C(v60, v58);

      v27 = *(v56 + 48);
      v28 = sub_1B4374();
      sub_42F48(v23, &qword_229728, &unk_1D14A0);
      v29 = v26 + v27;
      v10 = v55;
      (*(v25 + 8))(v29, v24);
      sub_42F48(v19, &qword_229720, &unk_1BCB70);
      v62 = v10;
      v31 = v10[2];
      v30 = v10[3];
      if (v31 >= v30 >> 1)
      {
        sub_37618((v30 > 1), v31 + 1, 1);
        v10 = v62;
      }

      v10[2] = v31 + 1;
      v32 = &v10[72 * v31];
      memcpy(v32 + 4, v61, 0x238uLL);
      v32[75] = v28;
      a1 = v44;
      v13 = 1 << *(v44 + 32);
      result = v54;
      if (v54 >= v13)
      {
        goto LABEL_27;
      }

      v11 = v43;
      v33 = *(v43 + 8 * v53);
      if ((v33 & v52) == 0)
      {
        goto LABEL_28;
      }

      if (v57 != *(v44 + 36))
      {
        goto LABEL_29;
      }

      v34 = v33 & (-2 << (v54 & 0x3F));
      if (v34)
      {
        v13 = __clz(__rbit64(v34)) | v54 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v35 = v53 << 6;
        v36 = v53 + 1;
        v37 = (v41 + 8 * v53);
        while (v36 < (v13 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            result = sub_42FF0(v54, v57, 0);
            v13 = __clz(__rbit64(v38)) + v35;
            goto LABEL_19;
          }
        }

        result = sub_42FF0(v54, v57, 0);
      }

LABEL_19:
      if (v51 == v42)
      {
        return v10;
      }

      if ((v13 & 0x8000000000000000) == 0)
      {
        v14 = v51 + 1;
        if (v13 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
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
  return result;
}

uint64_t sub_45970()
{
  v0 = sub_1B4644();
  sub_5EA10(v0, qword_229600);
  sub_50E58(v0, qword_229600);
  return sub_1B4634();
}

uint64_t sub_459F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v399 = a2;
  v395 = type metadata accessor for CollectionRecommendation(0);
  v397 = *(v395 - 8);
  v4 = __chkstk_darwin(v395);
  v401 = &v391 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v400 = &v391 - v7;
  v8 = __chkstk_darwin(v6);
  v406 = (&v391 - v9);
  __chkstk_darwin(v8);
  v402 = (&v391 - v10);
  *&v422 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  *&v417 = *(v422 - 8);
  v11 = __chkstk_darwin(v422);
  v415 = &v391 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v421 = &v391 - v13;
  v14 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  __chkstk_darwin(v14 - 8);
  v16 = &v391 - v15;
  v17 = *a1;
  v18 = *(a1 + 1152);
  v445 = *(a1 + 1136);
  v446 = v18;
  v447 = *(a1 + 1168);
  v448 = *(a1 + 1184);
  v423 = &v445;
  sub_50C90();
  v19 = sub_1B46C4();
  v419 = 0;
  v408 = v445;
  v409 = v19;
  v407 = *(&v445 + 1);
  v20 = *(&v446 + 1);
  v410 = *(&v447 + 1);
  v21 = v447;
  v411 = v448;
  v450 = *(&v447 + 1);
  v451[0] = *(&v446 + 1);
  v449 = v448;
  v22 = swift_allocObject();
  *(v22 + 16) = _swiftEmptyDictionarySingleton;
  v418 = (v22 + 16);
  sub_43050(v451, v432, &qword_2292C8, &unk_1BCB00);
  sub_43050(&v450, v432, &qword_2296D0, &unk_1D3D50);
  sub_43050(&v449, v432, &qword_2296D8, &qword_1BCB10);

  v23 = dispatch_semaphore_create(0);
  v24 = sub_1B4C54();
  (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v2;
  v25[5] = v17;
  v25[6] = sub_50D1C;
  v25[7] = v22;
  v25[8] = v23;

  v398 = v22;

  v26 = v23;
  sub_4903C(0, 0, v16, &unk_1BCB20, v25);

  v396 = v26;
  sub_1B4DF4();
  if (qword_228290 != -1)
  {
    goto LABEL_272;
  }

  while (1)
  {
    v27 = sub_1B4644();
    v28 = sub_50E58(v27, qword_229600);
    swift_bridgeObjectRetain_n();
    v394 = v28;
    v29 = sub_1B4624();
    v30 = sub_1B4DB4();
    v31 = os_log_type_enabled(v29, v30);
    v403 = v21;
    v404 = v20;
    if (!v31)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_52;
    }

    LODWORD(v420) = v30;
    v32 = swift_slowAlloc();
    *v32 = 134218752;
    v20 = *(v17 + 16);
    *(v32 + 4) = v20;
    *(v32 + 12) = 2048;
    if (v20)
    {
      v33 = 0;
      v21 = (v17 + 32);
      v416 = v20 - 1;
      v34 = _swiftEmptyArrayStorage;
      do
      {
        v35 = &v21[136 * v33];
        v36 = v33;
        while (1)
        {
          if (v36 >= *(v17 + 16))
          {
LABEL_268:
            __break(1u);
            goto LABEL_269;
          }

          *v432 = *v35;
          v37 = *(v35 + 1);
          v38 = *(v35 + 2);
          v39 = *(v35 + 4);
          *&v432[48] = *(v35 + 3);
          *&v432[64] = v39;
          *&v432[16] = v37;
          *&v432[32] = v38;
          v40 = *(v35 + 5);
          v41 = *(v35 + 6);
          v42 = *(v35 + 7);
          v432[128] = v35[128];
          *&v432[96] = v41;
          *&v432[112] = v42;
          *&v432[80] = v40;
          if ((v432[8] & 1) == 0)
          {
            break;
          }

          v43 = sub_1B5604();
          sub_429F8(v432, &v441);

          if (v43)
          {
            goto LABEL_12;
          }

          ++v36;
          sub_5C740(v432);
          v35 += 136;
          if (v20 == v36)
          {
            goto LABEL_20;
          }
        }

        sub_429F8(v432, &v441);

LABEL_12:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v424 = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_37574(0, v34[2] + 1, 1);
          v34 = v424;
        }

        v46 = v34[2];
        v45 = v34[3];
        if (v46 >= v45 >> 1)
        {
          sub_37574((v45 > 1), v46 + 1, 1);
          v34 = v424;
        }

        v33 = v36 + 1;
        v34[2] = v46 + 1;
        v47 = &v34[17 * v46];
        *(v47 + 2) = *v432;
        v48 = *&v432[16];
        v49 = *&v432[32];
        v50 = *&v432[64];
        *(v47 + 5) = *&v432[48];
        *(v47 + 6) = v50;
        *(v47 + 3) = v48;
        *(v47 + 4) = v49;
        v51 = *&v432[80];
        v52 = *&v432[96];
        v53 = *&v432[112];
        *(v47 + 160) = v432[128];
        *(v47 + 8) = v52;
        *(v47 + 9) = v53;
        *(v47 + 7) = v51;
      }

      while (v416 != v36);
    }

    else
    {
      v34 = _swiftEmptyArrayStorage;
    }

LABEL_20:
    v54 = v34[2];

    *(v32 + 14) = v54;

    *(v32 + 22) = 2048;
    v55 = *(v17 + 16);
    if (v55)
    {
      v56 = 0;
      v20 = v17 + 32;
      v416 = (v55 - 1);
      v57 = _swiftEmptyArrayStorage;
LABEL_22:
      v58 = v20 + 136 * v56;
      v21 = v56;
      while (v21 < *(v17 + 16))
      {
        *v432 = *v58;
        v59 = *(v58 + 16);
        v60 = *(v58 + 32);
        v61 = *(v58 + 64);
        *&v432[48] = *(v58 + 48);
        *&v432[64] = v61;
        *&v432[16] = v59;
        *&v432[32] = v60;
        v62 = *(v58 + 80);
        v63 = *(v58 + 96);
        v64 = *(v58 + 112);
        v432[128] = *(v58 + 128);
        *&v432[96] = v63;
        *&v432[112] = v64;
        *&v432[80] = v62;
        if (v432[8])
        {
          sub_429F8(v432, &v441);

LABEL_29:
          v66 = swift_isUniquelyReferenced_nonNull_native();
          *&v424 = v57;
          if ((v66 & 1) == 0)
          {
            sub_37574(0, v57[2] + 1, 1);
            v57 = v424;
          }

          v68 = v57[2];
          v67 = v57[3];
          if (v68 >= v67 >> 1)
          {
            sub_37574((v67 > 1), v68 + 1, 1);
            v57 = v424;
          }

          v56 = v21 + 1;
          v57[2] = v68 + 1;
          v69 = &v57[17 * v68];
          *(v69 + 2) = *v432;
          v70 = *&v432[16];
          v71 = *&v432[32];
          v72 = *&v432[64];
          *(v69 + 5) = *&v432[48];
          *(v69 + 6) = v72;
          *(v69 + 3) = v70;
          *(v69 + 4) = v71;
          v73 = *&v432[80];
          v74 = *&v432[96];
          v75 = *&v432[112];
          *(v69 + 160) = v432[128];
          *(v69 + 8) = v74;
          *(v69 + 9) = v75;
          *(v69 + 7) = v73;
          if (v416 != v21)
          {
            goto LABEL_22;
          }

          goto LABEL_36;
        }

        v65 = sub_1B5604();
        sub_429F8(v432, &v441);

        if (v65)
        {
          goto LABEL_29;
        }

        ++v21;
        sub_5C740(v432);
        v58 += 136;
        if (v55 == v21)
        {
          goto LABEL_36;
        }
      }

LABEL_269:
      __break(1u);
      goto LABEL_270;
    }

    v57 = _swiftEmptyArrayStorage;
LABEL_36:
    v76 = v57[2];

    *(v32 + 24) = v76;

    *(v32 + 32) = 2048;
    v77 = *(v17 + 16);
    if (!v77)
    {
      break;
    }

    v21 = 0;
    v78 = v17 + 32;
    v79 = v77 - 1;
    v80 = _swiftEmptyArrayStorage;
LABEL_38:
    v81 = *(v17 + 16);
    v82 = v78 + 136 * v21;
    v20 = v21;
    while (v20 < v81)
    {
      *v432 = *v82;
      v83 = *(v82 + 16);
      v84 = *(v82 + 32);
      v85 = *(v82 + 64);
      *&v432[48] = *(v82 + 48);
      *&v432[64] = v85;
      *&v432[16] = v83;
      *&v432[32] = v84;
      v86 = *(v82 + 80);
      v87 = *(v82 + 96);
      v88 = *(v82 + 112);
      v432[128] = *(v82 + 128);
      *&v432[96] = v87;
      *&v432[112] = v88;
      *&v432[80] = v86;
      v21 = (v20 + 1);
      if (v88 != 2)
      {
        v416 = v29;
        sub_429F8(v432, &v441);
        v89 = swift_isUniquelyReferenced_nonNull_native();
        *&v424 = v80;
        v414 = v78;
        v90 = v79;
        if ((v89 & 1) == 0)
        {
          sub_37574(0, v80[2] + 1, 1);
          v80 = v424;
        }

        v92 = v80[2];
        v91 = v80[3];
        if (v92 >= v91 >> 1)
        {
          sub_37574((v91 > 1), v92 + 1, 1);
          v80 = v424;
        }

        v80[2] = v92 + 1;
        v93 = &v80[17 * v92];
        *(v93 + 2) = *v432;
        v94 = *&v432[16];
        v95 = *&v432[32];
        v96 = *&v432[64];
        *(v93 + 5) = *&v432[48];
        *(v93 + 6) = v96;
        *(v93 + 3) = v94;
        *(v93 + 4) = v95;
        v97 = *&v432[80];
        v98 = *&v432[96];
        v99 = *&v432[112];
        *(v93 + 160) = v432[128];
        *(v93 + 8) = v98;
        *(v93 + 9) = v99;
        *(v93 + 7) = v97;
        v79 = v90;
        v100 = v90 == v20;
        v78 = v414;
        v29 = v416;
        if (v100)
        {
          goto LABEL_51;
        }

        goto LABEL_38;
      }

      v82 += 136;
      ++v20;
      if (v77 == v21)
      {
        goto LABEL_51;
      }
    }

LABEL_270:
    __break(1u);
LABEL_271:
    __break(1u);
LABEL_272:
    swift_once();
  }

  v80 = _swiftEmptyArrayStorage;
LABEL_51:
  v101 = v80[2];

  *(v32 + 34) = v101;

  _os_log_impl(&dword_0, v29, v420, "AllCollectionTypesFillingClusteringService clustering %ld books books=%ld audiobooks=%ld seriesBooks=%ld", v32, 0x2Au);

  v21 = v403;
  v20 = v404;
LABEL_52:
  v102 = v422;
  *v432 = v408;
  *&v432[8] = v407;
  *&v432[16] = v409;
  *&v432[24] = v20;
  *&v432[32] = v21;
  *&v432[40] = v410;
  *&v432[48] = v411;
  v103 = sub_5C00C(v17, v432);
  v392 = v104;
  v393 = v103;
  v106 = sub_158D88(v105);

  sub_2B0C(&qword_2296E0, &unk_1D1490);
  v107 = sub_1B5294();
  v108 = v107;
  v20 = 0;
  v109 = *(v106 + 64);
  v412 = (v106 + 64);
  v416 = v106;
  v110 = 1 << *(v106 + 32);
  v111 = -1;
  if (v110 < 64)
  {
    v111 = ~(-1 << v110);
  }

  v112 = v111 & v109;
  v113 = (v110 + 63) >> 6;
  v413 = (v417 + 8);
  v414 = (v417 + 16);
  *&v422 = v107 + 64;
  v21 = v421;
  v420 = v107;
  if (v112)
  {
    while (1)
    {
      v114 = __clz(__rbit64(v112));
      v421 = ((v112 - 1) & v112);
LABEL_61:
      v117 = v114 | (v20 << 6);
      v118 = *(*(v416 + 48) + v117);
      v119 = *(v417 + 16);
      v17 = v102;
      v119(v21, *(v416 + 56) + *(v417 + 72) * v117, v102);
      v119(v415, v21, v102);
      sub_42094(&qword_2296E8, &qword_2296B8, &unk_1BCAF0, &protocol conformance descriptor for NonEmpty<A>);
      *v432 = sub_1B49B4();
      v120 = v419;
      sub_507C4(v432);
      v419 = v120;
      if (v120)
      {
        break;
      }

      (*v413)(v21, v17);
      v121 = *v432;
      *(v422 + ((v117 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v117;
      v108 = v420;
      *(*(v420 + 48) + v117) = v118;
      *(*(v108 + 56) + 8 * v117) = v121;
      v122 = *(v108 + 16);
      v123 = __OFADD__(v122, 1);
      v124 = v122 + 1;
      if (v123)
      {
        goto LABEL_271;
      }

      v102 = v17;
      *(v108 + 16) = v124;
      v112 = v421;
      if (!v421)
      {
        goto LABEL_56;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_56:
    v115 = v20;
    while (1)
    {
      v20 = v115 + 1;
      if (__OFADD__(v115, 1))
      {
        __break(1u);
LABEL_267:
        __break(1u);
        goto LABEL_268;
      }

      if (v20 >= v113)
      {
        break;
      }

      v116 = *&v412[8 * v20];
      ++v115;
      if (v116)
      {
        v114 = __clz(__rbit64(v116));
        v421 = ((v116 - 1) & v116);
        goto LABEL_61;
      }
    }

    v125 = 0;
    v126 = 1 << *(v108 + 32);
    v127 = -1;
    if (v126 < 64)
    {
      v127 = ~(-1 << v126);
    }

    v17 = v127 & *(v108 + 64);
    v20 = (v126 + 63) >> 6;
    v128 = _swiftEmptyArrayStorage;
    v421 = _swiftEmptyArrayStorage;
    *&v417 = _swiftEmptyArrayStorage;
    v415 = _swiftEmptyArrayStorage;
    v21 = _swiftEmptyArrayStorage;
    v129 = _swiftEmptyArrayStorage;
    v405 = _swiftEmptyArrayStorage;
    v412 = _swiftEmptyArrayStorage;
LABEL_70:
    if (v17)
    {
      goto LABEL_75;
    }

    while (1)
    {
      v131 = v125 + 1;
      if (__OFADD__(v125, 1))
      {
        goto LABEL_267;
      }

      if (v131 >= v20)
      {
        break;
      }

      v17 = *(v422 + 8 * v131);
      ++v125;
      if (v17)
      {
        v125 = v131;
LABEL_75:
        v132 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v133 = v132 | (v125 << 6);
        v134 = *(*(v420 + 56) + 8 * v133);
        if (*(*(v420 + 48) + v133))
        {
          v135 = sub_1B5604();

          if (v135)
          {
            v136 = *(v134 + 16);
            if (v136)
            {
              goto LABEL_80;
            }
          }

          else
          {
            v130 = *(v134 + 16);
            if (v130)
            {
              v174 = v130 - 1;
              for (i = 32; ; i = (v414 + 17))
              {
                *v432 = *(v134 + i);
                v176 = *(v134 + i + 16);
                v177 = *(v134 + i + 32);
                v178 = *(v134 + i + 64);
                *&v432[48] = *(v134 + i + 48);
                *&v432[64] = v178;
                *&v432[16] = v176;
                *&v432[32] = v177;
                v179 = *(v134 + i + 80);
                v180 = *(v134 + i + 96);
                v181 = *(v134 + i + 112);
                v432[128] = *(v134 + i + 128);
                *&v432[96] = v180;
                *&v432[112] = v181;
                *&v432[80] = v179;
                v416 = v174;
                v414 = i;
                if (v181 == 2)
                {
                  v182 = *(v128 + 2);
                  if (v182 > 2)
                  {
                    sub_429F8(v432, &v441);
                    sub_42BA4(v432, &v441);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v129 = sub_3349C(0, *(v129 + 2) + 1, 1, v129);
                    }

                    v204 = *(v129 + 2);
                    v203 = *(v129 + 3);
                    if (v204 >= v203 >> 1)
                    {
                      v129 = sub_3349C((v203 > 1), v204 + 1, 1, v129);
                    }

                    *(v129 + 2) = v204 + 1;
                    v185 = &v129[64 * v204];
                  }

                  else
                  {
                    sub_429F8(v432, &v441);
                    sub_42BA4(v432, &v441);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v128 = sub_3349C(0, v182 + 1, 1, v128);
                    }

                    v184 = *(v128 + 2);
                    v183 = *(v128 + 3);
                    if (v184 >= v183 >> 1)
                    {
                      v128 = sub_3349C((v183 > 1), v184 + 1, 1, v128);
                    }

                    *(v128 + 2) = v184 + 1;
                    v185 = &v128[64 * v184];
                  }

                  v205 = *v432;
                  v206 = *&v432[16];
                  v207 = *&v432[48];
                  *(v185 + 4) = *&v432[32];
                  *(v185 + 5) = v207;
                  *(v185 + 2) = v205;
                  *(v185 + 3) = v206;
                  sub_5C740(v432);
                }

                else
                {
                  sub_429F8(v432, &v441);
                  sub_42BA4(v432, &v441);
                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
                    v186 = v412;
                  }

                  else
                  {
                    v186 = sub_3349C(0, *(v412 + 2) + 1, 1, v412);
                  }

                  v188 = *(v186 + 2);
                  v187 = *(v186 + 3);
                  if (v188 >= v187 >> 1)
                  {
                    v186 = sub_3349C((v187 > 1), v188 + 1, 1, v186);
                  }

                  *(v186 + 2) = v188 + 1;
                  v412 = v186;
                  v189 = &v186[64 * v188];
                  v190 = *v432;
                  v191 = *&v432[16];
                  v192 = *&v432[48];
                  *(v189 + 4) = *&v432[32];
                  *(v189 + 5) = v192;
                  *(v189 + 2) = v190;
                  *(v189 + 3) = v191;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v405 = sub_33358(0, *(v405 + 2) + 1, 1, v405);
                  }

                  v194 = *(v405 + 2);
                  v193 = *(v405 + 3);
                  if (v194 >= v193 >> 1)
                  {
                    v405 = sub_33358((v193 > 1), v194 + 1, 1, v405);
                  }

                  v195 = v405;
                  *(v405 + 2) = v194 + 1;
                  v196 = &v195[136 * v194];
                  *(v196 + 2) = *v432;
                  v197 = *&v432[16];
                  v198 = *&v432[32];
                  v199 = *&v432[64];
                  *(v196 + 5) = *&v432[48];
                  *(v196 + 6) = v199;
                  *(v196 + 3) = v197;
                  *(v196 + 4) = v198;
                  v200 = *&v432[80];
                  v201 = *&v432[96];
                  v202 = *&v432[112];
                  v196[160] = v432[128];
                  *(v196 + 8) = v201;
                  *(v196 + 9) = v202;
                  *(v196 + 7) = v200;
                }

                if (!v416)
                {
                  break;
                }

                v174 = v416 - 1;
              }
            }
          }
        }

        else
        {

          v136 = *(v134 + 16);
          if (v136)
          {
LABEL_80:
            v137 = (v136 - 1);
            for (j = 32; ; j = (v168 + 17))
            {
              *v432 = *(v134 + j);
              v139 = *(v134 + j + 16);
              v140 = *(v134 + j + 32);
              v141 = *(v134 + j + 64);
              *&v432[48] = *(v134 + j + 48);
              *&v432[64] = v141;
              *&v432[16] = v139;
              *&v432[32] = v140;
              v142 = *(v134 + j + 80);
              v143 = *(v134 + j + 96);
              v144 = *(v134 + j + 112);
              v432[128] = *(v134 + j + 128);
              *&v432[96] = v143;
              *&v432[112] = v144;
              *&v432[80] = v142;
              v413 = j;
              v414 = v137;
              if (v144 == 2)
              {
                v145 = *(v421 + 2);
                if (v145 > 2)
                {
                  sub_429F8(v432, &v441);
                  sub_42BA4(v432, &v441);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v21 = sub_3349C(0, *(v21 + 2) + 1, 1, v21);
                  }

                  v170 = *(v21 + 2);
                  v169 = *(v21 + 3);
                  if (v170 >= v169 >> 1)
                  {
                    v21 = sub_3349C((v169 > 1), v170 + 1, 1, v21);
                  }

                  *(v21 + 2) = v170 + 1;
                  v149 = &v21[64 * v170];
                }

                else
                {
                  sub_429F8(v432, &v441);
                  sub_42BA4(v432, &v441);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v421 = sub_3349C(0, v145 + 1, 1, v421);
                  }

                  v147 = *(v421 + 2);
                  v146 = *(v421 + 3);
                  if (v147 >= v146 >> 1)
                  {
                    v421 = sub_3349C((v146 > 1), v147 + 1, 1, v421);
                  }

                  v148 = v421;
                  *(v421 + 2) = v147 + 1;
                  v149 = &v148[64 * v147];
                }

                v171 = *v432;
                v172 = *&v432[16];
                v173 = *&v432[48];
                *(v149 + 4) = *&v432[32];
                *(v149 + 5) = v173;
                *(v149 + 2) = v171;
                *(v149 + 3) = v172;
                sub_5C740(v432);
                v168 = v413;
                v167 = v414;
                if (!v414)
                {
                  break;
                }
              }

              else
              {
                sub_429F8(v432, &v441);
                sub_42BA4(v432, &v441);
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  v150 = v417;
                }

                else
                {
                  v150 = sub_3349C(0, *(v417 + 16) + 1, 1, v417);
                }

                v152 = *(v150 + 2);
                v151 = *(v150 + 3);
                if (v152 >= v151 >> 1)
                {
                  v150 = sub_3349C((v151 > 1), v152 + 1, 1, v150);
                }

                *(v150 + 2) = v152 + 1;
                *&v417 = v150;
                v153 = &v150[64 * v152];
                v154 = *v432;
                v155 = *&v432[16];
                v156 = *&v432[48];
                *(v153 + 4) = *&v432[32];
                *(v153 + 5) = v156;
                *(v153 + 2) = v154;
                *(v153 + 3) = v155;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v415 = sub_33358(0, *(v415 + 2) + 1, 1, v415);
                }

                v158 = *(v415 + 2);
                v157 = *(v415 + 3);
                if (v158 >= v157 >> 1)
                {
                  v415 = sub_33358((v157 > 1), v158 + 1, 1, v415);
                }

                v159 = v415;
                *(v415 + 2) = v158 + 1;
                v160 = &v159[136 * v158];
                *(v160 + 2) = *v432;
                v161 = *&v432[16];
                v162 = *&v432[32];
                v163 = *&v432[64];
                *(v160 + 5) = *&v432[48];
                *(v160 + 6) = v163;
                *(v160 + 3) = v161;
                *(v160 + 4) = v162;
                v164 = *&v432[80];
                v165 = *&v432[96];
                v166 = *&v432[112];
                v160[160] = v432[128];
                *(v160 + 8) = v165;
                *(v160 + 9) = v166;
                *(v160 + 7) = v164;
                v168 = v413;
                v167 = v414;
                if (!v414)
                {
                  break;
                }
              }

              v137 = (v167 - 1);
            }
          }
        }

        goto LABEL_70;
      }
    }

    v208 = v418;
    swift_beginAccess();
    v209 = *v208;
    v440 = v129;
    v210 = *(v21 + 2);

    v416 = v128;
    if (v210 <= 5)
    {
      while (1)
      {
        v129 = v440;
        v211 = *(v440 + 2);
        if (v211 <= 6)
        {
          break;
        }

        if (sub_1B5604())
        {
          v212 = 0;
          v213 = (v129 + 32);
        }

        else
        {
          *&v422 = v210;
          v212 = 0;
          v214 = *(v209 + 16);
          v215 = 32;
          while (1)
          {
            if (v214)
            {
              v216 = *&v129[v215];
              sub_43124(v216);
              if (v217)
              {
                break;
              }
            }

            ++v212;
            v215 += 64;
            if (v211 == v212)
            {

              v128 = v416;
              goto LABEL_150;
            }
          }

          v218 = sub_43124(v216);
          v128 = v416;
          if ((v219 & 1) == 0)
          {
            break;
          }

          v213 = (*(v209 + 56) + (v218 << 6));
          v210 = v422;
        }

        v220 = *v213;
        v221 = v213[1];
        v222 = v213[3];
        *&v432[32] = v213[2];
        *&v432[48] = v222;
        *v432 = v220;
        *&v432[16] = v221;
        sub_42BA4(v432, &v441);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_3349C(0, v210 + 1, 1, v21);
        }

        v224 = *(v21 + 2);
        v223 = *(v21 + 3);
        if (v224 >= v223 >> 1)
        {
          v21 = sub_3349C((v223 > 1), v224 + 1, 1, v21);
        }

        *(v21 + 2) = v224 + 1;
        v225 = &v21[64 * v224];
        v226 = *v432;
        v227 = *&v432[16];
        v228 = *&v432[48];
        *(v225 + 4) = *&v432[32];
        *(v225 + 5) = v228;
        *(v225 + 2) = v226;
        *(v225 + 3) = v227;
        sub_496C8(v212, &v424);
        v441 = v424;
        v442 = v425;
        v443 = v426;
        v444 = v427;
        sub_43FF4(&v441);
        v210 = *(v21 + 2);
        if (v210 >= 6)
        {
          v129 = v440;
          break;
        }
      }
    }

LABEL_150:
    v229 = *v418;
    v440 = v21;
    v230 = *(v129 + 2);

    if (v230 > 5)
    {
LABEL_169:
      v239 = v421;
LABEL_170:
    }

    else
    {
      while (1)
      {
        v21 = v440;
        v231 = *(v440 + 2);
        if (v231 <= 6)
        {
          break;
        }

        if (sub_1B5604())
        {
          v232 = 0;
          v233 = (v21 + 32);
        }

        else
        {
          *&v422 = v230;
          v232 = 0;
          v234 = *(v229 + 16);
          v235 = 32;
          while (1)
          {
            if (v234)
            {
              v236 = *&v21[v235];
              sub_43124(v236);
              if (v237)
              {
                break;
              }
            }

            ++v232;
            v235 += 64;
            if (v231 == v232)
            {

              v128 = v416;
              goto LABEL_167;
            }
          }

          v238 = sub_43124(v236);
          v128 = v416;
          v239 = v421;
          if ((v240 & 1) == 0)
          {
            goto LABEL_170;
          }

          v233 = (*(v229 + 56) + (v238 << 6));
          v230 = v422;
        }

        v241 = *v233;
        v242 = v233[1];
        v243 = v233[3];
        *&v432[32] = v233[2];
        *&v432[48] = v243;
        *v432 = v241;
        *&v432[16] = v242;
        sub_42BA4(v432, &v441);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v129 = sub_3349C(0, v230 + 1, 1, v129);
        }

        v245 = *(v129 + 2);
        v244 = *(v129 + 3);
        if (v245 >= v244 >> 1)
        {
          v129 = sub_3349C((v244 > 1), v245 + 1, 1, v129);
        }

        *(v129 + 2) = v245 + 1;
        v246 = &v129[64 * v245];
        v247 = *v432;
        v248 = *&v432[16];
        v249 = *&v432[48];
        *(v246 + 4) = *&v432[32];
        *(v246 + 5) = v249;
        *(v246 + 2) = v247;
        *(v246 + 3) = v248;
        sub_496C8(v232, &v424);
        v441 = v424;
        v442 = v425;
        v443 = v426;
        v444 = v427;
        sub_43FF4(&v441);
        v230 = *(v129 + 2);
        if (v230 >= 6)
        {
          v21 = v440;
          goto LABEL_169;
        }
      }

LABEL_167:
      v239 = v421;
    }

    v440 = v21;
    v250 = *(v239 + 2);

    if (v250 <= 2)
    {
      while (1)
      {
        v21 = v440;
        if (*(v440 + 2) <= 3uLL)
        {
          break;
        }

        v251 = *(v440 + 3);
        *v432 = *(v440 + 2);
        *&v432[16] = v251;
        v252 = *(v440 + 5);
        *&v432[32] = *(v440 + 4);
        *&v432[48] = v252;
        sub_42BA4(v432, &v441);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v239 = sub_3349C(0, v250 + 1, 1, v239);
        }

        v254 = *(v239 + 2);
        v253 = *(v239 + 3);
        if (v254 >= v253 >> 1)
        {
          v239 = sub_3349C((v253 > 1), v254 + 1, 1, v239);
        }

        *(v239 + 2) = v254 + 1;
        v255 = &v239[64 * v254];
        v256 = *v432;
        v257 = *&v432[16];
        v258 = *&v432[48];
        *(v255 + 4) = *&v432[32];
        *(v255 + 5) = v258;
        *(v255 + 2) = v256;
        *(v255 + 3) = v257;
        sub_496C8(0, &v424);
        v441 = v424;
        v442 = v425;
        v443 = v426;
        v444 = v427;
        sub_43FF4(&v441);
        v250 = *(v239 + 2);
        if (v250 >= 3)
        {
          v21 = v440;
          break;
        }
      }
    }

    v440 = v129;
    v260 = v128 + 16;
    v259 = *(v128 + 2);

    if (v259 <= 2)
    {
      while (1)
      {
        v129 = v440;
        if (*(v440 + 2) <= 3uLL)
        {
          break;
        }

        v261 = *(v440 + 3);
        *v432 = *(v440 + 2);
        *&v432[16] = v261;
        v262 = *(v440 + 5);
        *&v432[32] = *(v440 + 4);
        *&v432[48] = v262;
        sub_42BA4(v432, &v441);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v128 = sub_3349C(0, *v260 + 1, 1, v128);
        }

        v264 = *(v128 + 2);
        v263 = *(v128 + 3);
        if (v264 >= v263 >> 1)
        {
          v128 = sub_3349C((v263 > 1), v264 + 1, 1, v128);
        }

        *(v128 + 2) = v264 + 1;
        v260 = v128 + 16;
        v265 = &v128[64 * v264];
        v266 = *v432;
        v267 = *&v432[16];
        v268 = *&v432[48];
        *(v265 + 4) = *&v432[32];
        *(v265 + 5) = v268;
        *(v265 + 2) = v266;
        *(v265 + 3) = v267;
        sub_496C8(0, &v424);
        v441 = v424;
        v442 = v425;
        v443 = v426;
        v444 = v427;
        sub_43FF4(&v441);
        if (*(v128 + 2) >= 3uLL)
        {
          v129 = v440;
          break;
        }
      }
    }

    v269 = *v418;
    v440 = v129;
    v271 = v239 + 16;
    v270 = *(v239 + 2);

    if (v270 > 2)
    {
LABEL_207:
    }

    else
    {
      v416 = v128;
      while (1)
      {
        v421 = v239;
        v272 = v440;
        v273 = *(v440 + 2);
        if (v273 <= 3)
        {
          break;
        }

        v274 = 0;
        if (sub_1B5604())
        {
          v275 = (v272 + 32);
          v239 = v421;
        }

        else
        {
          v276 = v269;
          v277 = *(v269 + 16);
          v278 = 32;
          while (1)
          {
            if (v277)
            {
              v279 = *&v272[v278];
              sub_43124(v279);
              if (v280)
              {
                break;
              }
            }

            ++v274;
            v278 += 64;
            if (v273 == v274)
            {

              v128 = v416;
              goto LABEL_205;
            }
          }

          v269 = v276;
          v281 = sub_43124(v279);
          v128 = v416;
          v239 = v421;
          if ((v282 & 1) == 0)
          {
            goto LABEL_207;
          }

          v275 = (*(v276 + 56) + (v281 << 6));
        }

        v283 = *v275;
        v284 = v275[1];
        v285 = v275[3];
        *&v432[32] = v275[2];
        *&v432[48] = v285;
        *v432 = v283;
        *&v432[16] = v284;
        sub_42BA4(v432, &v441);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v239 = sub_3349C(0, *v271 + 1, 1, v239);
        }

        v287 = *(v239 + 2);
        v286 = *(v239 + 3);
        if (v287 >= v286 >> 1)
        {
          v239 = sub_3349C((v286 > 1), v287 + 1, 1, v239);
        }

        *(v239 + 2) = v287 + 1;
        v271 = v239 + 16;
        v288 = &v239[64 * v287];
        v289 = *v432;
        v290 = *&v432[16];
        v291 = *&v432[48];
        *(v288 + 4) = *&v432[32];
        *(v288 + 5) = v291;
        *(v288 + 2) = v289;
        *(v288 + 3) = v290;
        sub_496C8(v274, &v424);
        v441 = v424;
        v442 = v425;
        v443 = v426;
        v444 = v427;
        sub_43FF4(&v441);
        if (*(v239 + 2) >= 3uLL)
        {
          goto LABEL_207;
        }
      }

LABEL_205:
      v239 = v421;
    }

    v292 = *v418;
    v440 = v21;
    v294 = v128 + 16;
    v293 = *(v128 + 2);

    if (v293 > 2)
    {
LABEL_228:
    }

    else
    {
      v421 = v239;
      while (1)
      {
        v295 = v440;
        v296 = *(v440 + 2);
        if (v296 <= 3)
        {
          break;
        }

        if (sub_1B5604())
        {
          v297 = 0;
          v298 = (v295 + 32);
          v239 = v421;
        }

        else
        {
          v416 = v128;
          v297 = 0;
          v299 = *(v292 + 16);
          v300 = 32;
          while (1)
          {
            if (v299)
            {
              v301 = *&v295[v300];
              sub_43124(v301);
              if (v302)
              {
                break;
              }
            }

            ++v297;
            v300 += 64;
            if (v296 == v297)
            {

              v128 = v416;
              goto LABEL_226;
            }
          }

          v303 = sub_43124(v301);
          v128 = v416;
          v239 = v421;
          if ((v304 & 1) == 0)
          {
            goto LABEL_228;
          }

          v298 = (*(v292 + 56) + (v303 << 6));
        }

        v305 = *v298;
        v306 = v298[1];
        v307 = v298[3];
        *&v432[32] = v298[2];
        *&v432[48] = v307;
        *v432 = v305;
        *&v432[16] = v306;
        sub_42BA4(v432, &v441);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v128 = sub_3349C(0, *v294 + 1, 1, v128);
        }

        v309 = *(v128 + 2);
        v308 = *(v128 + 3);
        if (v309 >= v308 >> 1)
        {
          v128 = sub_3349C((v308 > 1), v309 + 1, 1, v128);
        }

        *(v128 + 2) = v309 + 1;
        v294 = v128 + 16;
        v310 = &v128[64 * v309];
        v311 = *v432;
        v312 = *&v432[16];
        v313 = *&v432[48];
        *(v310 + 4) = *&v432[32];
        *(v310 + 5) = v313;
        *(v310 + 2) = v311;
        *(v310 + 3) = v312;
        sub_496C8(v297, &v424);
        v441 = v424;
        v442 = v425;
        v443 = v426;
        v444 = v427;
        sub_43FF4(&v441);
        if (*(v128 + 2) >= 3uLL)
        {
          goto LABEL_228;
        }
      }

LABEL_226:
      v239 = v421;
    }

    v314 = v417;
    v440 = v417;
    v316 = v239 + 16;
    v315 = *(v239 + 2);
    swift_bridgeObjectRetain_n();

    if (v315 <= 2)
    {
      while (1)
      {
        v314 = v440;
        if (*(v440 + 2) <= 3uLL)
        {
          break;
        }

        v317 = *(v440 + 3);
        *v432 = *(v440 + 2);
        *&v432[16] = v317;
        v318 = *(v440 + 5);
        *&v432[32] = *(v440 + 4);
        *&v432[48] = v318;
        sub_42BA4(v432, &v441);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v239 = sub_3349C(0, *v316 + 1, 1, v239);
        }

        v320 = *(v239 + 2);
        v319 = *(v239 + 3);
        if (v320 >= v319 >> 1)
        {
          v239 = sub_3349C((v319 > 1), v320 + 1, 1, v239);
        }

        *(v239 + 2) = v320 + 1;
        v316 = v239 + 16;
        v321 = &v239[64 * v320];
        v322 = *v432;
        v323 = *&v432[16];
        v324 = *&v432[48];
        *(v321 + 4) = *&v432[32];
        *(v321 + 5) = v324;
        *(v321 + 2) = v322;
        *(v321 + 3) = v323;
        sub_496C8(0, &v424);
        v441 = v424;
        v442 = v425;
        v443 = v426;
        v444 = v427;
        sub_43FF4(&v441);
        if (*(v239 + 2) >= 3uLL)
        {
          v314 = v440;
          break;
        }
      }
    }

    v420 = v314;

    v325 = v412;
    v440 = v412;
    v326 = *(v128 + 2);
    swift_bridgeObjectRetain_n();

    if (v326 > 2)
    {
      v327 = v325;
    }

    else
    {
      while (1)
      {
        v327 = v440;
        if (*(v440 + 2) <= 3uLL)
        {
          break;
        }

        v328 = *(v440 + 3);
        *v432 = *(v440 + 2);
        *&v432[16] = v328;
        v329 = *(v440 + 5);
        *&v432[32] = *(v440 + 4);
        *&v432[48] = v329;
        sub_42BA4(v432, &v441);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v128 = sub_3349C(0, v326 + 1, 1, v128);
        }

        v331 = *(v128 + 2);
        v330 = *(v128 + 3);
        if (v331 >= v330 >> 1)
        {
          v128 = sub_3349C((v330 > 1), v331 + 1, 1, v128);
        }

        *(v128 + 2) = v331 + 1;
        v332 = &v128[64 * v331];
        v333 = *v432;
        v334 = *&v432[16];
        v335 = *&v432[48];
        *(v332 + 4) = *&v432[32];
        *(v332 + 5) = v335;
        *(v332 + 2) = v333;
        *(v332 + 3) = v334;
        sub_496C8(0, &v424);
        v441 = v424;
        v442 = v425;
        v443 = v426;
        v444 = v427;
        sub_43FF4(&v441);
        v326 = *(v128 + 2);
        if (v326 >= 3)
        {
          v327 = v440;
          break;
        }
      }

      v325 = v412;
    }

    sub_2B0C(&qword_2294F8, &unk_1BCB30);
    v336 = swift_allocObject();
    v336[4] = v239;
    *&v422 = v336 + 4;
    v337 = v417;
    v336[5] = v128;
    v336[6] = v337;
    v336[7] = v325;
    v336[8] = v327;
    v414 = v336;
    v336[9] = v420;
    v440 = _swiftEmptyArrayStorage;
    v416 = v128;
    swift_bridgeObjectRetain_n();
    v421 = v239;

    v418 = v327;

    for (k = 0; k != 6; ++k)
    {
      v339 = *(v422 + 8 * k);
      v340 = *(v339 + 16);
      if (v340)
      {
        *v432 = _swiftEmptyArrayStorage;

        sub_9ACAC(v340);
        v341 = *v432;
        v342 = 32;
        do
        {
          v343 = *(v339 + v342);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_3741C(0, v341[2] + 1, 1);
            v341 = *v432;
          }

          v345 = v341[2];
          v344 = v341[3];
          if (v345 >= v344 >> 1)
          {
            sub_3741C((v344 > 1), v345 + 1, 1);
            v341 = *v432;
          }

          v341[2] = v345 + 1;
          v341[v345 + 4] = v343;
          v342 += 64;
          --v340;
        }

        while (v340);
      }

      else
      {
        v341 = _swiftEmptyArrayStorage;
      }

      sub_5F33C(v341);
    }

    swift_setDeallocating();
    sub_2B0C(&qword_229500, &unk_1BC580);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v346 = v440;

    v347 = sub_40854(v346);

    *&v424 = v347;
    sub_492E8(v392);
    v348 = v421;

    *v432 = v408;
    v349 = v408;
    *&v432[8] = v407;
    v350 = v407;
    *&v432[16] = v409;
    v351 = v409;
    *&v432[24] = v404;
    v352 = v404;
    *&v432[32] = v403;
    v353 = v403;
    *&v432[40] = v410;
    v354 = v410;
    *&v432[48] = v411;
    v355 = v411;
    LOBYTE(v441) = 0;
    v419 = sub_5C794(v348, v432, &v441);
    v356 = v416;

    *v432 = v349;
    *&v432[8] = v350;
    *&v432[16] = v351;
    *&v432[24] = v352;
    *&v432[32] = v353;
    *&v432[40] = v354;
    *&v432[48] = v355;
    LOBYTE(v441) = 1;
    v421 = sub_5C794(v356, v432, &v441);

    sub_2B0C(&qword_229348, &unk_1BCB40);
    v357 = swift_allocObject();
    v422 = xmmword_1BCA80;
    *(v357 + 16) = xmmword_1BCA80;
    *(v357 + 32) = 0;
    sub_2B0C(&qword_229218, &unk_1C0210);
    v358 = swift_allocObject();
    *(v358 + 16) = v422;
    LOBYTE(v441) = 1;
    *(v358 + 32) = 1037193578;
    *(v358 + 40) = 0;
    *(v358 + 41) = *v431;
    *(v358 + 44) = *&v431[3];
    *(v358 + 48) = _swiftEmptyArrayStorage;
    *(v358 + 56) = _swiftEmptySetSingleton;
    *(v358 + 64) = 0;
    *(v358 + 72) = 1;
    *(v358 + 73) = *v430;
    *(v358 + 76) = *&v430[3];
    *(v358 + 80) = 0;
    *(v358 + 88) = 0;
    v417 = xmmword_1BCA90;
    *(v358 + 96) = xmmword_1BCA90;
    *(v358 + 112) = 0;
    *(v358 + 113) = *v429;
    *(v358 + 116) = *&v429[3];
    *(v358 + 120) = 0;
    sub_5CB94(v432);
    memcpy((v358 + 200), v432, 0x179uLL);
    *(v358 + 128) = 0u;
    *(v358 + 144) = 0u;
    *(v358 + 160) = 0u;
    *(v358 + 184) = 0;
    *(v358 + 192) = 0;
    *(v358 + 176) = 0x1FFFFFFFELL;
    *(v358 + 584) = sub_12DBA0(_swiftEmptyArrayStorage);
    *(v358 + 592) = 7;
    *(v357 + 40) = v358;
    v359 = sub_130214(v357);
    swift_setDeallocating();
    sub_42F48(v357 + 32, &qword_229350, &qword_1BC3F0);
    swift_deallocClassInstance();
    v360 = v402;
    *v402 = 1037196655;
    *(v360 + 8) = 0;
    *(v360 + 9) = *v434;
    *(v360 + 3) = *&v434[3];
    v360[2] = 0;
    *(v360 + 24) = -1;
    *(v360 + 25) = *v433;
    *(v360 + 7) = *&v433[3];
    v360[4] = _swiftEmptyArrayStorage;
    v360[5] = 0x3FF0000000000000;
    v360[6] = v359;
    v360[7] = 0x3FF0000000000000;
    swift_storeEnumTagMultiPayload();
    v361 = swift_allocObject();
    *(v361 + 16) = v422;
    *(v361 + 32) = 0;
    v362 = swift_allocObject();
    *(v362 + 16) = v422;
    LOBYTE(v441) = 1;
    *(v362 + 32) = 1037193578;
    *(v362 + 40) = 0;
    *(v362 + 41) = *v437;
    *(v362 + 44) = *&v437[3];
    *(v362 + 48) = _swiftEmptyArrayStorage;
    *(v362 + 56) = _swiftEmptySetSingleton;
    *(v362 + 64) = 0;
    *(v362 + 72) = 1;
    *(v362 + 73) = *v436;
    *(v362 + 76) = *&v436[3];
    *(v362 + 80) = 0;
    *(v362 + 88) = 0;
    *(v362 + 96) = v417;
    *(v362 + 112) = 0;
    *(v362 + 113) = *v435;
    *(v362 + 116) = *&v435[3];
    *(v362 + 120) = 0;
    memcpy((v362 + 200), v432, 0x179uLL);
    *(v362 + 128) = 0u;
    *(v362 + 144) = 0u;
    *(v362 + 160) = 0u;
    *(v362 + 184) = 0;
    *(v362 + 192) = 0;
    *(v362 + 176) = 0x1FFFFFFFELL;
    *(v362 + 584) = sub_12DBA0(_swiftEmptyArrayStorage);
    *(v362 + 592) = 7;
    *(v361 + 40) = v362;
    v363 = sub_130214(v361);
    swift_setDeallocating();
    sub_42F48(v361 + 32, &qword_229350, &qword_1BC3F0);
    swift_deallocClassInstance();
    v364 = v406;
    *v406 = 1485946454;
    *(v364 + 8) = 0;
    *(v364 + 9) = *v439;
    *(v364 + 3) = *&v439[3];
    v364[2] = 0;
    *(v364 + 24) = -1;
    *(v364 + 25) = *v438;
    *(v364 + 7) = *&v438[3];
    v364[4] = _swiftEmptyArrayStorage;
    v364[5] = 0x3FF0000000000000;
    v364[6] = v363;
    v364[7] = 0x3FF0000000000000;
    swift_storeEnumTagMultiPayload();
    v366 = v407;
    v365 = v408;
    *&v441 = v408;
    *(&v441 + 1) = v407;
    v368 = v409;
    v367 = v410;
    *&v442 = v409;
    v369 = v403;
    v370 = v404;
    *(&v442 + 1) = v404;
    *&v443 = v403;
    *(&v443 + 1) = v410;
    v371 = v411;
    *&v444 = v411;
    LOBYTE(v428) = 0;
    *&v422 = sub_5CBF0(v415, &v441, &v428);

    *&v441 = v365;
    *(&v441 + 1) = v366;
    *&v442 = v368;
    *(&v442 + 1) = v370;
    *&v443 = v369;
    *(&v443 + 1) = v367;
    *&v444 = v371;
    LOBYTE(v428) = 1;
    *&v417 = sub_5CBF0(v405, &v441, &v428);

    *&v441 = v365;
    *(&v441 + 1) = v366;
    *&v442 = v368;
    *(&v442 + 1) = v370;
    *&v443 = v369;
    *(&v443 + 1) = v367;
    *&v444 = v371;
    v372 = sub_5D0F4(v418, v420, &v441);

    sub_5EB2C(v360, v400, type metadata accessor for CollectionRecommendation);
    v373 = sub_33474(0, 1, 1, _swiftEmptyArrayStorage);
    v375 = v373[2];
    v374 = v373[3];
    if (v375 >= v374 >> 1)
    {
      v373 = sub_33474((v374 > 1), v375 + 1, 1, v373);
    }

    v373[2] = v375 + 1;
    v376 = (*(v397 + 80) + 32) & ~*(v397 + 80);
    v377 = *(v397 + 72);
    sub_5EB94(v400, v373 + v376 + v377 * v375, type metadata accessor for CollectionRecommendation);
    sub_5EB2C(v406, v401, type metadata accessor for CollectionRecommendation);
    v379 = v373[2];
    v378 = v373[3];
    if (v379 >= v378 >> 1)
    {
      v373 = sub_33474((v378 > 1), v379 + 1, 1, v373);
    }

    v373[2] = v379 + 1;
    sub_5EB94(v401, v373 + v376 + v379 * v377, type metadata accessor for CollectionRecommendation);
    *&v441 = v373;
    sub_5F428(v419);
    sub_5F428(v421);
    sub_5F428(v422);
    sub_5F428(v417);
    sub_5F428(v372);
    sub_5F428(v393);
    v380 = v441;
    swift_bridgeObjectRetain_n();
    v381 = sub_1B4624();
    v382 = sub_1B4DB4();

    if (os_log_type_enabled(v381, v382))
    {
      v383 = swift_slowAlloc();
      v384 = swift_slowAlloc();
      v428 = v384;
      *v383 = 136315138;
      v385 = sub_1AB48C(v380);
      v387 = sub_60FF4(v385, v386, &v428);

      *(v383 + 4) = v387;

      _os_log_impl(&dword_0, v381, v382, "Clustered: %s", v383, 0xCu);
      sub_2BF8(v384);

      sub_5DC0C(v406);
      sub_5DC0C(v402);
    }

    else
    {

      sub_5DC0C(v406);
      sub_5DC0C(v402);
    }

    v389 = v399;
    v390 = v424;
    *v399 = v380;
    v389[1] = v390;
  }

  return result;
}

uint64_t sub_482CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 16);
  *(a2 + 16) = 0x8000000000000000;
  sub_5DD24(a1, sub_57DD8, 0, isUniquelyReferenced_nonNull_native, &v6);

  *(a2 + 16) = v6;
  return swift_endAccess();
}

uint64_t sub_48390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[18] = a4;
  return _swift_task_switch(sub_483B8, 0, 0);
}

uint64_t sub_483B8()
{
  v1 = *(v0 + 152);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_375F8(0, v2, 0);
    v3 = (v1 + 32);
    do
    {
      v4 = *v3;
      v5 = v3[1];
      v6 = v3[3];
      *(v0 + 48) = v3[2];
      *(v0 + 64) = v6;
      *(v0 + 16) = v4;
      *(v0 + 32) = v5;
      sub_42BA4(v0 + 16, v0 + 80);
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_375F8((v7 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[8 * v8];
      v10 = *(v0 + 16);
      v11 = *(v0 + 32);
      v12 = *(v0 + 64);
      v9[4] = *(v0 + 48);
      v9[5] = v12;
      v9[2] = v10;
      v9[3] = v11;
      v3 = (v3 + 136);
      --v2;
    }

    while (v2);
  }

  *(v0 + 184) = _swiftEmptyArrayStorage;
  v13 = swift_task_alloc();
  *(v0 + 192) = v13;
  *v13 = v0;
  v13[1] = sub_48514;

  return sub_48734(_swiftEmptyArrayStorage);
}

uint64_t sub_48514(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = sub_486D0;
  }

  else
  {

    *(v4 + 208) = a1;
    v5 = sub_48644;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_48644()
{
  (*(v0 + 160))(*(v0 + 208));

  sub_1B4E04();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_486D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_48734(uint64_t a1)
{
  *(v2 + 536) = v1;
  *(v2 + 528) = a1;
  return _swift_task_switch(sub_48758, 0, 0);
}

unint64_t sub_48758()
{
  v1 = *(v0 + 528);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = _swiftEmptyDictionarySingleton;
    v5 = *(v1 + 16);
    while (1)
    {
      v13 = v3[3];
      v15 = *v3;
      v14 = v3[1];
      *(v0 + 48) = v3[2];
      *(v0 + 64) = v13;
      *(v0 + 16) = v15;
      *(v0 + 32) = v14;
      v16 = *(v0 + 16);
      sub_42BA4(v0 + 16, v0 + 80);
      sub_42BA4(v0 + 16, v0 + 144);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v4;
      result = sub_43124(v16);
      v20 = v4[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        return result;
      }

      v24 = v19;
      if (v4[3] < v23)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v32 = result;
      sub_1858C4();
      result = v32;
      if ((v24 & 1) == 0)
      {
LABEL_11:
        v4 = v44;
        v44[(result >> 6) + 8] |= 1 << result;
        *(v44[6] + 8 * result) = v16;
        v26 = (v44[7] + (result << 6));
        v28 = *(v0 + 48);
        v27 = *(v0 + 64);
        v29 = *(v0 + 32);
        *v26 = *(v0 + 16);
        v26[1] = v29;
        v26[2] = v28;
        v26[3] = v27;
        result = sub_43FF4(v0 + 16);
        v30 = v44[2];
        v22 = __OFADD__(v30, 1);
        v31 = v30 + 1;
        if (v22)
        {
          goto LABEL_28;
        }

        v44[2] = v31;
        goto LABEL_4;
      }

LABEL_3:
      v4 = v44;
      v6 = (v44[7] + (result << 6));
      v7 = v6[3];
      v9 = *v6;
      v8 = v6[1];
      *(v0 + 240) = v6[2];
      *(v0 + 256) = v7;
      *(v0 + 208) = v9;
      *(v0 + 224) = v8;
      v10 = *(v0 + 16);
      v11 = *(v0 + 32);
      v12 = *(v0 + 64);
      v6[2] = *(v0 + 48);
      v6[3] = v12;
      *v6 = v10;
      v6[1] = v11;
      sub_43FF4(v0 + 208);
      sub_43FF4(v0 + 16);
LABEL_4:
      v3 += 4;
      if (!--v5)
      {
        v33 = *(v0 + 528);
        sub_3741C(0, v2, 0);
        v34 = (v33 + 32);
        v35 = _swiftEmptyArrayStorage[2];
        do
        {
          v37 = *v34;
          v34 += 8;
          v36 = v37;
          v38 = _swiftEmptyArrayStorage[3];
          if (v35 >= v38 >> 1)
          {
            sub_3741C((v38 > 1), v35 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v35 + 1;
          _swiftEmptyArrayStorage[v35++ + 4] = v36;
          --v2;
        }

        while (v2);
        goto LABEL_21;
      }
    }

    sub_17E550(v23, isUniquelyReferenced_nonNull_native);
    result = sub_43124(v16);
    if ((v24 & 1) != (v25 & 1))
    {

      return sub_1B5784();
    }

LABEL_10:
    if ((v24 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_3;
  }

  v4 = _swiftEmptyDictionarySingleton;
LABEL_21:
  *(v0 + 552) = _swiftEmptyArrayStorage;
  *(v0 + 544) = v4;
  v39 = *(v0 + 536);
  v40 = v39[5];
  v41 = v39[6];
  sub_2698(v39 + 2, v40);
  v43 = (*(v41 + 16) + **(v41 + 16));
  v42 = swift_task_alloc();
  *(v0 + 560) = v42;
  *v42 = v0;
  v42[1] = sub_48AF0;

  return v43(_swiftEmptyArrayStorage, v40, v41);
}

uint64_t sub_48AF0(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 568) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_48C64, 0, 0);
  }
}

unint64_t sub_48C64()
{
  v1 = 0;
  v2 = *(v0 + 568);
  v3 = *(v0 + 544);
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v48 = _swiftEmptyDictionarySingleton;
  v51 = *(v0 + 544);
  v7 = (63 - v5) >> 6;
  while (v6)
  {
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = v9 | (v1 << 6);
    v11 = (*(v2 + 56) + 88 * v10);
    if ((v11[32] & 1) == 0)
    {
      if (*(v3 + 16))
      {
        v12 = *(*(v2 + 48) + 8 * v10);
        v13 = *v11;
        v14 = *(v11 + 3);
        v15 = sub_43124(v12);
        v3 = v51;
        if (v16)
        {
          v45 = v14;
          v17 = (*(v51 + 56) + (v15 << 6));
          v18 = *v17;
          v19 = v17[1];
          v20 = v17[3];
          *(v0 + 304) = v17[2];
          *(v0 + 320) = v20;
          *(v0 + 272) = v18;
          *(v0 + 288) = v19;
          if (v13)
          {
            v43 = sub_1B5604();
            v21 = v0 + 336;
          }

          else
          {
            v43 = 1;
            v21 = v0 + 464;
          }

          sub_42BA4(v0 + 272, v21);

          v22 = *(v0 + 304);
          v44 = *(v0 + 312);
          v23 = *(v0 + 320);

          sub_43FF4(v0 + 272);
          v24 = *(v0 + 328);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v52 = v48;
          result = sub_43124(v12);
          v27 = v48[2];
          v28 = (v26 & 1) == 0;
          v29 = __OFADD__(v27, v28);
          v30 = v27 + v28;
          if (v29)
          {
            __break(1u);
LABEL_34:
            __break(1u);
            return result;
          }

          if (v48[3] >= v30)
          {
            v33 = v45;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v47 = result;
              v50 = v26;
              sub_1858C4();
              v26 = v50;
              v33 = v45;
              result = v47;
            }
          }

          else
          {
            v49 = v26;
            sub_17E550(v30, isUniquelyReferenced_nonNull_native);
            result = sub_43124(v12);
            v32 = v31 & 1;
            v26 = v49;
            if ((v49 & 1) != v32)
            {
LABEL_30:

              return sub_1B5784();
            }

            v33 = v45;
          }

          v34 = v43 & 1;
          if (v26)
          {
            v48 = v52;
            v35 = v52[7] + (result << 6);
            v36 = *(v35 + 48);
            v38 = *v35;
            v37 = *(v35 + 16);
            *(v0 + 432) = *(v35 + 32);
            *(v0 + 448) = v36;
            *(v0 + 400) = v38;
            *(v0 + 416) = v37;
            *v35 = v33;
            *(v35 + 8) = v34;
            *(v35 + 16) = 0;
            *(v35 + 24) = -1;
            *(v35 + 32) = v22;
            *(v35 + 40) = v44;
            *(v35 + 48) = v23;
            *(v35 + 56) = v24;
            sub_43FF4(v0 + 400);
          }

          else
          {
            v52[(result >> 6) + 8] |= 1 << result;
            *(v52[6] + 8 * result) = v12;
            v39 = v52[7] + (result << 6);
            *v39 = v33;
            *(v39 + 8) = v34;
            *(v39 + 16) = 0;
            *(v39 + 24) = -1;
            *(v39 + 32) = v22;
            *(v39 + 40) = v44;
            *(v39 + 48) = v23;
            *(v39 + 56) = v24;
            v40 = v52[2];
            v29 = __OFADD__(v40, 1);
            v41 = v40 + 1;
            if (v29)
            {
              goto LABEL_34;
            }

            v48 = v52;
            v52[2] = v41;
          }

          v3 = v51;
        }
      }
    }
  }

  while (1)
  {
    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v2 + 64 + 8 * v8);
    ++v1;
    if (v6)
    {
      v1 = v8;
      goto LABEL_9;
    }
  }

  v42 = *(v0 + 8);

  return v42(v48);
}

uint64_t sub_4903C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_43050(a3, v22 - v9, &qword_2296C0, &qword_1C3800);
  v11 = sub_1B4C54();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_42F48(v10, &qword_2296C0, &qword_1C3800);
  }

  else
  {
    sub_1B4C44();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1B4BC4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1B4854() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_42F48(a3, &qword_2296C0, &qword_1C3800);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_42F48(a3, &qword_2296C0, &qword_1C3800);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_492E8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_111CE0(v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_493C8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = sub_5EE90(v11))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    memcpy(__dst, (*(v1 + 48) + 568 * (v9 | (v8 << 6))), 0x231uLL);
    sub_5EE34(__dst, v11);
    sub_1127B0(__src, __dst);
    memcpy(v11, __src, 0x231uLL);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_494D8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = sub_2601C(v11))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    memcpy(__dst, (*(v1 + 48) + 568 * (v9 | (v8 << 6))), 0x231uLL);
    sub_4299C(__dst, v11);
    sub_111DC0(__src, __dst);
    memcpy(v11, __src, 0x231uLL);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_495E8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_111CE0(v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_496C8@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_56AA4(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = (v5 + (a1 << 6));
    v10 = v9[3];
    *a2 = v9[2];
    a2[1] = v10;
    v11 = v9[5];
    a2[2] = v9[4];
    a2[3] = v11;
    result = memmove(v9 + 2, v9 + 6, (v8 - a1) << 6);
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_49760@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_56ACC(v5);
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
    v9 = &v5[7 * a1];
    v10 = *(v9 + 2);
    v9 += 4;
    v11 = *(v9 + 48);
    v12 = *(v9 + 1);
    v13 = *(v9 + 2);
    *a2 = v10;
    *(a2 + 16) = v12;
    *(a2 + 32) = v13;
    *(a2 + 48) = v11;
    result = memmove(v9, v9 + 7, 56 * (v8 - a1));
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_49804@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_56AE0(v5);
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
    v9 = *(sub_2B0C(&qword_229408, &unk_1BCC10) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_5ED18(v11, a2, &qword_229408, &unk_1BCC10);
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

uint64_t sub_49948(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2B0C(&qword_229708, &unk_1BCB60);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_42F48(a1, &qword_229708, &unk_1BCB60);
    v13 = sub_43124(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_185CAC();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_52E54(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_42F48(v8, &qword_229708, &unk_1BCB60);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_541DC(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_49BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_54A68(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_3A678(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1885F0();
        v16 = v18;
      }

      result = sub_538A4(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

unint64_t sub_49CA8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v13 = &v23 - v12;
  if (!*(a3 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  v14 = *a2;
  result = sub_43124(*a1);
  if ((v15 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v24 = v14;
  v16 = v7[9];
  v17 = *(a3 + 56) + v16 * result;
  v23 = v7[2];
  v23(v13, v17, v6);
  v18 = sub_1B4374();
  v19 = v7[1];
  result = v19(v13, v6);
  if (!*(a3 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v20 = v18;
  result = sub_43124(v24);
  if (v21)
  {
    v23(v10, *(a3 + 56) + result * v16, v6);
    v22 = sub_1B4374();
    v19(v10, v6);
    return v22 < v20;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_49E94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v128 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v130 = *(v128 - 8);
  v6 = __chkstk_darwin(v128);
  v129 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v127 = &v123 - v9;
  __chkstk_darwin(v8);
  v124 = &v123 - v10;
  v11 = sub_2B0C(&qword_229708, &unk_1BCB60);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v126 = &v123 - v16;
  v17 = __chkstk_darwin(v15);
  v125 = &v123 - v18;
  v19 = __chkstk_darwin(v17);
  v131 = &v123 - v20;
  v21 = __chkstk_darwin(v19);
  v136 = &v123 - v22;
  __chkstk_darwin(v21);
  v24 = &v123 - v23;
  v25 = _swiftEmptyArrayStorage;
  v149 = _swiftEmptyArrayStorage;
  *&v139 = a1;
  v133 = a1;

  v26 = sub_2B0C(&qword_229710, &unk_1D32C0);
  v27 = sub_42094(&qword_229718, &qword_229710, &unk_1D32C0, &protocol conformance descriptor for [A]);
  v132 = v24;
  v134 = v27;
  v135 = v26;
  result = sub_1B43C4();
  v137 = a4;
  if (a4[2])
  {
    v29 = v137;
    sub_1B57F4();
    sub_1B4884();
    result = sub_1B5844();
    v30 = v29 + 7;
    v31 = -1 << *(v29 + 32);
    v32 = result & ~v31;
    if ((*(v29 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v32))
    {
      v33 = ~v31;
      while (!*(v137[6] + v32) || *(v137[6] + v32) == 1)
      {
        v34 = sub_1B5604();

        if (v34)
        {
          goto LABEL_10;
        }

        v32 = (v32 + 1) & v33;
        if (((*(v30 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

LABEL_10:
      sub_43050(v132, v14, &qword_229708, &unk_1BCB60);
      v35 = v130;
      v36 = v128;
      if ((*(v130 + 48))(v14, 1, v128) != 1)
      {
        v84 = v129;
        (*(v35 + 32))(v129, v14, v36);
        sub_2B0C(&qword_229758, &unk_1BCBB0);
        v85 = v35;
        v86 = (sub_2B0C(&qword_229760, &qword_1CCC50) - 8);
        v87 = (*(*v86 + 80) + 32) & ~*(*v86 + 80);
        v88 = swift_allocObject();
        *(v88 + 16) = xmmword_1BCA80;
        v89 = (v88 + v87);
        v90 = v86[14];
        *v89 = 0xD00000000000001ALL;
        *(v89 + 1) = 0x80000000001D58B0;
        (*(v85 + 16))(&v89[v90], v84, v36);
        v91 = sub_13023C(v88);
        swift_setDeallocating();
        sub_42F48(v89, &qword_229760, &qword_1CCC50);
        swift_deallocClassInstance();
        v92 = sub_500F0(v91, sub_5EEF0, 4u);

        sub_5F428(v92);
        (*(v85 + 8))(v84, v36);
LABEL_66:
        sub_42F48(v132, &qword_229708, &unk_1BCB60);
        return v149;
      }

      result = sub_42F48(v14, &qword_229708, &unk_1BCB60);
    }
  }

LABEL_12:
  v37 = *(v133 + 16);
  if (!v37)
  {
    *&v139 = _swiftEmptyArrayStorage;
    sub_1B43C4();
LABEL_43:
    *&v139 = v25;
    v75 = v131;
    sub_1B43C4();
    v76 = v137;
    if (!v137[2])
    {
      goto LABEL_64;
    }

    sub_1B57F4();
    sub_1B4884();
    v77 = sub_1B5844();
    v78 = v76 + 7;
    v79 = -1 << *(v76 + 32);
    v80 = v77 & ~v79;
    if ((*(v76 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v80))
    {
      v81 = ~v79;
      while (1)
      {
        v82 = *(v76[6] + v80);
        if (v82 != 1 && v82 != 2)
        {
          break;
        }

        v83 = sub_1B5604();

        if (v83)
        {
          goto LABEL_53;
        }

        v80 = (v80 + 1) & v81;
        if (((*(v78 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
        {
          goto LABEL_55;
        }
      }

LABEL_53:
      v93 = v126;
      sub_43050(v136, v126, &qword_229708, &unk_1BCB60);
      v94 = v130;
      v95 = v128;
      if ((*(v130 + 48))(v93, 1, v128) != 1)
      {
        (*(v94 + 32))(v127, v93, v95);
        sub_2B0C(&qword_229758, &unk_1BCBB0);
        v101 = v94;
        v102 = (sub_2B0C(&qword_229760, &qword_1CCC50) - 8);
        v103 = (*(*v102 + 80) + 32) & ~*(*v102 + 80);
        v104 = swift_allocObject();
        *(v104 + 16) = xmmword_1BCA80;
        v105 = (v104 + v103);
        v106 = v102[14];
        *v105 = 0xD00000000000001ALL;
        *(v105 + 1) = 0x80000000001D58B0;
        v76 = v137;
        (*(v101 + 16))(&v105[v106], v127, v95);
        v107 = sub_13023C(v104);
        swift_setDeallocating();
        v108 = v105;
        v75 = v131;
        sub_42F48(v108, &qword_229760, &qword_1CCC50);
        swift_deallocClassInstance();
        v109 = sub_500F0(v107, sub_5EEF0, 4u);

        sub_5F428(v109);
        (*(v130 + 8))(v127, v95);
        if (!v76[2])
        {
          goto LABEL_64;
        }

LABEL_56:
        sub_1B57F4();
        sub_1B4884();
        v96 = sub_1B5844();
        v97 = -1 << *(v76 + 32);
        v98 = v96 & ~v97;
        if ((*(v78 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98))
        {
          v99 = ~v97;
          while (!*(v76[6] + v98) || *(v76[6] + v98) == 2)
          {
            v100 = sub_1B5604();

            if (v100)
            {
              goto LABEL_68;
            }

            v98 = (v98 + 1) & v99;
            if (((*(v78 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98) & 1) == 0)
            {
              goto LABEL_64;
            }
          }

LABEL_68:
          v111 = v125;
          sub_43050(v75, v125, &qword_229708, &unk_1BCB60);
          v112 = v130;
          v113 = v128;
          if ((*(v130 + 48))(v111, 1, v128) == 1)
          {
            sub_42F48(v75, &qword_229708, &unk_1BCB60);
            sub_42F48(v136, &qword_229708, &unk_1BCB60);
            sub_42F48(v132, &qword_229708, &unk_1BCB60);
            v132 = v111;
            goto LABEL_66;
          }

          v114 = v124;
          (*(v112 + 32))(v124, v111, v113);
          sub_2B0C(&qword_229758, &unk_1BCBB0);
          v115 = (sub_2B0C(&qword_229760, &qword_1CCC50) - 8);
          v116 = v75;
          v117 = (*(*v115 + 80) + 32) & ~*(*v115 + 80);
          v118 = swift_allocObject();
          *(v118 + 16) = xmmword_1BCA80;
          v119 = (v118 + v117);
          v120 = v115[14];
          *v119 = 0xD00000000000001ALL;
          *(v119 + 1) = 0x80000000001D58B0;
          (*(v112 + 16))(&v119[v120], v114, v113);
          v121 = sub_13023C(v118);
          swift_setDeallocating();
          sub_42F48(v119, &qword_229760, &qword_1CCC50);
          swift_deallocClassInstance();
          v122 = sub_500F0(v121, sub_5EEF0, 4u);

          sub_5F428(v122);
          (*(v112 + 8))(v114, v113);
          v110 = v116;
          goto LABEL_65;
        }

LABEL_64:
        v110 = v75;
LABEL_65:
        sub_42F48(v110, &qword_229708, &unk_1BCB60);
        sub_42F48(v136, &qword_229708, &unk_1BCB60);
        goto LABEL_66;
      }

      sub_42F48(v93, &qword_229708, &unk_1BCB60);
    }

LABEL_55:
    if (!v76[2])
    {
      goto LABEL_64;
    }

    goto LABEL_56;
  }

  v38 = 0;
  v39 = (v133 + 32);
  v40 = _swiftEmptyArrayStorage;
  v129 = (v133 + 32);
  do
  {
    v41 = &v39[136 * v38];
    v42 = v38;
    while (1)
    {
      if (v42 >= v37)
      {
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v43 = *(v41 + 7);
      v145 = *(v41 + 6);
      v146 = v43;
      v147 = v41[128];
      v44 = *(v41 + 3);
      v141 = *(v41 + 2);
      v142 = v44;
      v45 = *(v41 + 5);
      v143 = *(v41 + 4);
      v144 = v45;
      v46 = *(v41 + 1);
      v139 = *v41;
      v140 = v46;
      v38 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_72;
      }

      if ((BYTE8(v139) & 1) == 0)
      {
        break;
      }

      v47 = sub_1B5604();
      sub_429F8(&v139, v138);

      if (v47)
      {
        goto LABEL_22;
      }

      result = sub_5C740(&v139);
      ++v42;
      v41 += 136;
      if (v38 == v37)
      {
        goto LABEL_27;
      }
    }

    sub_429F8(&v139, v138);

LABEL_22:
    result = swift_isUniquelyReferenced_nonNull_native();
    v148 = v40;
    if ((result & 1) == 0)
    {
      result = sub_37574(0, v40[2] + 1, 1);
      v40 = v148;
    }

    v39 = v129;
    v49 = v40[2];
    v48 = v40[3];
    if (v49 >= v48 >> 1)
    {
      result = sub_37574((v48 > 1), v49 + 1, 1);
      v40 = v148;
    }

    v40[2] = v49 + 1;
    v50 = &v40[17 * v49];
    *(v50 + 2) = v139;
    v51 = v140;
    v52 = v141;
    v53 = v143;
    *(v50 + 5) = v142;
    *(v50 + 6) = v53;
    *(v50 + 3) = v51;
    *(v50 + 4) = v52;
    v54 = v144;
    v55 = v145;
    v56 = v146;
    *(v50 + 160) = v147;
    *(v50 + 8) = v55;
    *(v50 + 9) = v56;
    *(v50 + 7) = v54;
  }

  while (v38 != v37);
LABEL_27:
  *&v139 = v40;
  result = sub_1B43C4();
  v57 = 0;
  v58 = v133 + 32;
  v25 = _swiftEmptyArrayStorage;
  v133 += 32;
LABEL_28:
  v59 = v58 + 136 * v57;
  v60 = v57;
  while (v60 < v37)
  {
    v61 = *(v59 + 112);
    v145 = *(v59 + 96);
    v146 = v61;
    v147 = *(v59 + 128);
    v62 = *(v59 + 48);
    v141 = *(v59 + 32);
    v142 = v62;
    v63 = *(v59 + 80);
    v143 = *(v59 + 64);
    v144 = v63;
    v64 = *(v59 + 16);
    v139 = *v59;
    v140 = v64;
    v57 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      goto LABEL_74;
    }

    if (BYTE8(v139))
    {
      sub_429F8(&v139, v138);

LABEL_36:
      result = swift_isUniquelyReferenced_nonNull_native();
      v148 = v25;
      if ((result & 1) == 0)
      {
        result = sub_37574(0, v25[2] + 1, 1);
        v25 = v148;
      }

      v67 = v25[2];
      v66 = v25[3];
      if (v67 >= v66 >> 1)
      {
        result = sub_37574((v66 > 1), v67 + 1, 1);
        v25 = v148;
      }

      v25[2] = v67 + 1;
      v68 = &v25[17 * v67];
      *(v68 + 2) = v139;
      v69 = v140;
      v70 = v141;
      v71 = v143;
      *(v68 + 5) = v142;
      *(v68 + 6) = v71;
      *(v68 + 3) = v69;
      *(v68 + 4) = v70;
      v72 = v144;
      v73 = v145;
      v74 = v146;
      *(v68 + 160) = v147;
      *(v68 + 8) = v73;
      *(v68 + 9) = v74;
      *(v68 + 7) = v72;
      v58 = v133;
      if (v57 != v37)
      {
        goto LABEL_28;
      }

      goto LABEL_43;
    }

    v65 = sub_1B5604();
    sub_429F8(&v139, v138);

    if (v65)
    {
      goto LABEL_36;
    }

    result = sub_5C740(&v139);
    ++v60;
    v59 += 136;
    if (v57 == v37)
    {
      goto LABEL_43;
    }
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}

uint64_t sub_4ADCC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v128 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v130 = *(v128 - 8);
  v6 = __chkstk_darwin(v128);
  v129 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v127 = &v123 - v9;
  __chkstk_darwin(v8);
  v124 = &v123 - v10;
  v11 = sub_2B0C(&qword_229708, &unk_1BCB60);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v126 = &v123 - v16;
  v17 = __chkstk_darwin(v15);
  v125 = &v123 - v18;
  v19 = __chkstk_darwin(v17);
  v131 = &v123 - v20;
  v21 = __chkstk_darwin(v19);
  v136 = &v123 - v22;
  __chkstk_darwin(v21);
  v24 = &v123 - v23;
  v25 = _swiftEmptyArrayStorage;
  v149 = _swiftEmptyArrayStorage;
  *&v139 = a1;
  v133 = a1;

  v26 = sub_2B0C(&qword_229710, &unk_1D32C0);
  v27 = sub_42094(&qword_229718, &qword_229710, &unk_1D32C0, &protocol conformance descriptor for [A]);
  v132 = v24;
  v134 = v27;
  v135 = v26;
  result = sub_1B43C4();
  v137 = a4;
  if (a4[2])
  {
    v29 = v137;
    sub_1B57F4();
    sub_1B4884();
    result = sub_1B5844();
    v30 = v29 + 7;
    v31 = -1 << *(v29 + 32);
    v32 = result & ~v31;
    if ((*(v29 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v32))
    {
      v33 = ~v31;
      while (!*(v137[6] + v32) || *(v137[6] + v32) == 1)
      {
        v34 = sub_1B5604();

        if (v34)
        {
          goto LABEL_10;
        }

        v32 = (v32 + 1) & v33;
        if (((*(v30 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

LABEL_10:
      sub_43050(v132, v14, &qword_229708, &unk_1BCB60);
      v35 = v130;
      v36 = v128;
      if ((*(v130 + 48))(v14, 1, v128) != 1)
      {
        v84 = v129;
        (*(v35 + 32))(v129, v14, v36);
        sub_2B0C(&qword_229758, &unk_1BCBB0);
        v85 = v35;
        v86 = (sub_2B0C(&qword_229760, &qword_1CCC50) - 8);
        v87 = (*(*v86 + 80) + 32) & ~*(*v86 + 80);
        v88 = swift_allocObject();
        *(v88 + 16) = xmmword_1BCA80;
        v89 = (v88 + v87);
        v90 = v86[14];
        *v89 = 0xD000000000000014;
        *(v89 + 1) = 0x80000000001D58D0;
        (*(v85 + 16))(&v89[v90], v84, v36);
        v91 = sub_13023C(v88);
        swift_setDeallocating();
        sub_42F48(v89, &qword_229760, &qword_1CCC50);
        swift_deallocClassInstance();
        v92 = sub_500F0(v91, sub_5EEF0, 6u);

        sub_5F428(v92);
        (*(v85 + 8))(v84, v36);
LABEL_66:
        sub_42F48(v132, &qword_229708, &unk_1BCB60);
        return v149;
      }

      result = sub_42F48(v14, &qword_229708, &unk_1BCB60);
    }
  }

LABEL_12:
  v37 = *(v133 + 16);
  if (!v37)
  {
    *&v139 = _swiftEmptyArrayStorage;
    sub_1B43C4();
LABEL_43:
    *&v139 = v25;
    v75 = v131;
    sub_1B43C4();
    v76 = v137;
    if (!v137[2])
    {
      goto LABEL_64;
    }

    sub_1B57F4();
    sub_1B4884();
    v77 = sub_1B5844();
    v78 = v76 + 7;
    v79 = -1 << *(v76 + 32);
    v80 = v77 & ~v79;
    if ((*(v76 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v80))
    {
      v81 = ~v79;
      while (1)
      {
        v82 = *(v76[6] + v80);
        if (v82 != 1 && v82 != 2)
        {
          break;
        }

        v83 = sub_1B5604();

        if (v83)
        {
          goto LABEL_53;
        }

        v80 = (v80 + 1) & v81;
        if (((*(v78 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
        {
          goto LABEL_55;
        }
      }

LABEL_53:
      v93 = v126;
      sub_43050(v136, v126, &qword_229708, &unk_1BCB60);
      v94 = v130;
      v95 = v128;
      if ((*(v130 + 48))(v93, 1, v128) != 1)
      {
        (*(v94 + 32))(v127, v93, v95);
        sub_2B0C(&qword_229758, &unk_1BCBB0);
        v101 = v94;
        v102 = (sub_2B0C(&qword_229760, &qword_1CCC50) - 8);
        v103 = (*(*v102 + 80) + 32) & ~*(*v102 + 80);
        v104 = swift_allocObject();
        *(v104 + 16) = xmmword_1BCA80;
        v105 = (v104 + v103);
        v106 = v102[14];
        *v105 = 0xD000000000000014;
        *(v105 + 1) = 0x80000000001D58D0;
        v76 = v137;
        (*(v101 + 16))(&v105[v106], v127, v95);
        v107 = sub_13023C(v104);
        swift_setDeallocating();
        v108 = v105;
        v75 = v131;
        sub_42F48(v108, &qword_229760, &qword_1CCC50);
        swift_deallocClassInstance();
        v109 = sub_500F0(v107, sub_5EEF0, 6u);

        sub_5F428(v109);
        (*(v130 + 8))(v127, v95);
        if (!v76[2])
        {
          goto LABEL_64;
        }

LABEL_56:
        sub_1B57F4();
        sub_1B4884();
        v96 = sub_1B5844();
        v97 = -1 << *(v76 + 32);
        v98 = v96 & ~v97;
        if ((*(v78 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98))
        {
          v99 = ~v97;
          while (!*(v76[6] + v98) || *(v76[6] + v98) == 2)
          {
            v100 = sub_1B5604();

            if (v100)
            {
              goto LABEL_68;
            }

            v98 = (v98 + 1) & v99;
            if (((*(v78 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98) & 1) == 0)
            {
              goto LABEL_64;
            }
          }

LABEL_68:
          v111 = v125;
          sub_43050(v75, v125, &qword_229708, &unk_1BCB60);
          v112 = v130;
          v113 = v128;
          if ((*(v130 + 48))(v111, 1, v128) == 1)
          {
            sub_42F48(v75, &qword_229708, &unk_1BCB60);
            sub_42F48(v136, &qword_229708, &unk_1BCB60);
            sub_42F48(v132, &qword_229708, &unk_1BCB60);
            v132 = v111;
            goto LABEL_66;
          }

          v114 = v124;
          (*(v112 + 32))(v124, v111, v113);
          sub_2B0C(&qword_229758, &unk_1BCBB0);
          v115 = (sub_2B0C(&qword_229760, &qword_1CCC50) - 8);
          v116 = v75;
          v117 = (*(*v115 + 80) + 32) & ~*(*v115 + 80);
          v118 = swift_allocObject();
          *(v118 + 16) = xmmword_1BCA80;
          v119 = (v118 + v117);
          v120 = v115[14];
          *v119 = 0xD000000000000014;
          *(v119 + 1) = 0x80000000001D58D0;
          (*(v112 + 16))(&v119[v120], v114, v113);
          v121 = sub_13023C(v118);
          swift_setDeallocating();
          sub_42F48(v119, &qword_229760, &qword_1CCC50);
          swift_deallocClassInstance();
          v122 = sub_500F0(v121, sub_5EEF0, 6u);

          sub_5F428(v122);
          (*(v112 + 8))(v114, v113);
          v110 = v116;
          goto LABEL_65;
        }

LABEL_64:
        v110 = v75;
LABEL_65:
        sub_42F48(v110, &qword_229708, &unk_1BCB60);
        sub_42F48(v136, &qword_229708, &unk_1BCB60);
        goto LABEL_66;
      }

      sub_42F48(v93, &qword_229708, &unk_1BCB60);
    }

LABEL_55:
    if (!v76[2])
    {
      goto LABEL_64;
    }

    goto LABEL_56;
  }

  v38 = 0;
  v39 = (v133 + 32);
  v40 = _swiftEmptyArrayStorage;
  v129 = (v133 + 32);
  do
  {
    v41 = &v39[136 * v38];
    v42 = v38;
    while (1)
    {
      if (v42 >= v37)
      {
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v43 = *(v41 + 7);
      v145 = *(v41 + 6);
      v146 = v43;
      v147 = v41[128];
      v44 = *(v41 + 3);
      v141 = *(v41 + 2);
      v142 = v44;
      v45 = *(v41 + 5);
      v143 = *(v41 + 4);
      v144 = v45;
      v46 = *(v41 + 1);
      v139 = *v41;
      v140 = v46;
      v38 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_72;
      }

      if ((BYTE8(v139) & 1) == 0)
      {
        break;
      }

      v47 = sub_1B5604();
      sub_429F8(&v139, v138);

      if (v47)
      {
        goto LABEL_22;
      }

      result = sub_5C740(&v139);
      ++v42;
      v41 += 136;
      if (v38 == v37)
      {
        goto LABEL_27;
      }
    }

    sub_429F8(&v139, v138);

LABEL_22:
    result = swift_isUniquelyReferenced_nonNull_native();
    v148 = v40;
    if ((result & 1) == 0)
    {
      result = sub_37574(0, v40[2] + 1, 1);
      v40 = v148;
    }

    v39 = v129;
    v49 = v40[2];
    v48 = v40[3];
    if (v49 >= v48 >> 1)
    {
      result = sub_37574((v48 > 1), v49 + 1, 1);
      v40 = v148;
    }

    v40[2] = v49 + 1;
    v50 = &v40[17 * v49];
    *(v50 + 2) = v139;
    v51 = v140;
    v52 = v141;
    v53 = v143;
    *(v50 + 5) = v142;
    *(v50 + 6) = v53;
    *(v50 + 3) = v51;
    *(v50 + 4) = v52;
    v54 = v144;
    v55 = v145;
    v56 = v146;
    *(v50 + 160) = v147;
    *(v50 + 8) = v55;
    *(v50 + 9) = v56;
    *(v50 + 7) = v54;
  }

  while (v38 != v37);
LABEL_27:
  *&v139 = v40;
  result = sub_1B43C4();
  v57 = 0;
  v58 = v133 + 32;
  v25 = _swiftEmptyArrayStorage;
  v133 += 32;
LABEL_28:
  v59 = v58 + 136 * v57;
  v60 = v57;
  while (v60 < v37)
  {
    v61 = *(v59 + 112);
    v145 = *(v59 + 96);
    v146 = v61;
    v147 = *(v59 + 128);
    v62 = *(v59 + 48);
    v141 = *(v59 + 32);
    v142 = v62;
    v63 = *(v59 + 80);
    v143 = *(v59 + 64);
    v144 = v63;
    v64 = *(v59 + 16);
    v139 = *v59;
    v140 = v64;
    v57 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      goto LABEL_74;
    }

    if (BYTE8(v139))
    {
      sub_429F8(&v139, v138);

LABEL_36:
      result = swift_isUniquelyReferenced_nonNull_native();
      v148 = v25;
      if ((result & 1) == 0)
      {
        result = sub_37574(0, v25[2] + 1, 1);
        v25 = v148;
      }

      v67 = v25[2];
      v66 = v25[3];
      if (v67 >= v66 >> 1)
      {
        result = sub_37574((v66 > 1), v67 + 1, 1);
        v25 = v148;
      }

      v25[2] = v67 + 1;
      v68 = &v25[17 * v67];
      *(v68 + 2) = v139;
      v69 = v140;
      v70 = v141;
      v71 = v143;
      *(v68 + 5) = v142;
      *(v68 + 6) = v71;
      *(v68 + 3) = v69;
      *(v68 + 4) = v70;
      v72 = v144;
      v73 = v145;
      v74 = v146;
      *(v68 + 160) = v147;
      *(v68 + 8) = v73;
      *(v68 + 9) = v74;
      *(v68 + 7) = v72;
      v58 = v133;
      if (v57 != v37)
      {
        goto LABEL_28;
      }

      goto LABEL_43;
    }

    v65 = sub_1B5604();
    sub_429F8(&v139, v138);

    if (v65)
    {
      goto LABEL_36;
    }

    result = sub_5C740(&v139);
    ++v60;
    v59 += 136;
    if (v57 == v37)
    {
      goto LABEL_43;
    }
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}