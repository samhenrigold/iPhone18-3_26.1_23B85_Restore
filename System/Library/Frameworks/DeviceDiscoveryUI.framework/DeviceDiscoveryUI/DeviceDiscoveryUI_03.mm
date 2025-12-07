uint64_t sub_2380B1298(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_2380B22A0(v5, v7) & 1;
}

uint64_t sub_2380B12E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2381527EC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unsigned __int8 *sub_2380B1398(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_238154E7C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2380B1EA8(result, v5);
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
      result = sub_23815544C();
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

unsigned __int8 *sub_2380B191C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_238154E7C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2380B1EA8(result, v5);
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
      result = sub_23815544C();
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

uint64_t sub_2380B1EA8(uint64_t a1, unint64_t a2)
{
  v2 = sub_238154E8C();
  v6 = sub_2380B1F28(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_2380B1F28(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_23815531C();
    if (!v9 || (v10 = v9, v11 = sub_23813189C(v9, 0), v12 = sub_2380B2080(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_238154D6C();

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
      return sub_238154D6C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_23815544C();
LABEL_4:

  return sub_238154D6C();
}

unint64_t sub_2380B2080(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_23812976C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_238154E3C();
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
          result = sub_23815544C();
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

    result = sub_23812976C(v12, a6, a7);
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

    result = sub_238154E1C();
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

uint64_t sub_2380B22A0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  if (v7 <= 2)
  {
    if (!*(a1 + 32))
    {
      if (!*(a2 + 32))
      {
        if (v8 = a1[3], v9 = *(a1 + 23), v10 = *(a1 + 21), v11 = *(a1 + 17), v12 = a2[2], v13 = a2[3], v4 == *a2) && v5 == a2[1] || (sub_2381555CC())
        {
          if (((v11 << 8) | ((v10 | (v9 << 16)) << 40) | v6) == v12 && v8 == v13)
          {
            goto LABEL_33;
          }

          goto LABEL_36;
        }
      }

      goto LABEL_34;
    }

    if (v7 == 1)
    {
      if (*(a2 + 32) == 1)
      {
        goto LABEL_31;
      }

LABEL_34:
      v17 = 0;
      return v17 & 1;
    }

    if (*(a2 + 32) != 2)
    {
      goto LABEL_34;
    }

    v15 = *(a2 + 16);
    if (v4 != *a2 || v5 != a2[1])
    {
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (v7 == 3)
  {
    if (*(a2 + 32) != 3)
    {
      goto LABEL_34;
    }

    v15 = *(a2 + 16);
    if (v4 != *a2 || v5 != a2[1])
    {
LABEL_28:
      if ((sub_2381555CC() & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_29:
    v17 = v6 ^ v15 ^ 1;
    return v17 & 1;
  }

  if (v7 == 4)
  {
    if (*(a2 + 32) != 4)
    {
      goto LABEL_34;
    }
  }

  else if (*(a2 + 32) != 5)
  {
    goto LABEL_34;
  }

LABEL_31:
  if (v4 == *a2 && v5 == a2[1])
  {
LABEL_33:
    v17 = 1;
    return v17 & 1;
  }

LABEL_36:

  return sub_2381555CC();
}

uint64_t sub_2380B2454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _DDNodeViewModel(0);
  v5 = a1 + v4[5];
  v20 = *(v5 + 32);
  v6 = *(v5 + 16);
  v19[0] = *v5;
  v19[1] = v6;
  v7 = a2 + v4[5];
  v22 = *(v7 + 32);
  v8 = *(v7 + 16);
  v21[0] = *v7;
  v21[1] = v8;
  if (sub_2380B22A0(v19, v21) & 1) != 0 && (sub_2381527AC() & 1) != 0 && (sub_2380B0B30(*(a2 + v4[6]), *(a1 + v4[6])))
  {
    v9 = v4[10];
    v10 = *(a1 + v9);
    v11 = *(a2 + v9);
    v12 = v11 == 107 && v10 == 107;
    if (v10 != 107 && v11 != 107)
    {
      v13 = sub_23807CC40(v10);
      v15 = v14;
      if (v13 == sub_23807CC40(v11) && v15 == v16)
      {
        v12 = 1;
      }

      else
      {
        v12 = sub_2381555CC();
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_2380B258C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA48, &qword_23815BF00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2380B25FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _DDNodeDecoration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2380B2660@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v223 = a1;
  v219 = a2;
  v2 = sub_23815367C();
  v210 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v208 = &v195 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v204 = &v195 - v6;
  MEMORY[0x28223BE20](v5);
  v213 = &v195 - v7;
  v8 = sub_23815371C();
  v9 = *(v8 - 8);
  v206 = v8;
  v207 = v9;
  MEMORY[0x28223BE20](v8);
  v211 = &v195 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBBE8, &unk_23815A9A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v195 - v12;
  v14 = sub_238152BFC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v203 = &v195 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v202 = &v195 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v216 = &v195 - v21;
  MEMORY[0x28223BE20](v20);
  v221 = &v195 - v22;
  v23 = sub_238152BAC();
  v24 = *(v23 - 1);
  v25 = MEMORY[0x28223BE20](v23);
  v209 = (&v195 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x28223BE20](v25);
  v199 = &v195 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v197 = &v195 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v198 = &v195 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v200 = &v195 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v201 = &v195 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v195 - v37;
  if (qword_27DEEA060 != -1)
  {
    swift_once();
  }

  v39 = sub_23815293C();
  v40 = __swift_project_value_buffer(v39, qword_27DEEBBB0);
  v214 = *(v24 + 16);
  v215 = v24 + 16;
  v214(v38, v223, v23);
  v222 = v40;
  v41 = sub_23815291C();
  v42 = sub_2381550FC();
  v43 = os_log_type_enabled(v41, v42);
  v220 = v14;
  v205 = v2;
  v217 = v24;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v212 = v15;
    v45 = v23;
    v46 = v44;
    v47 = swift_slowAlloc();
    v225[0] = v47;
    *v46 = 136315138;
    v48 = sub_238152B3C();
    v50 = v49;
    v218 = *(v24 + 8);
    v218(v38, v45);
    v51 = sub_238085EAC(v48, v50, v225);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_238060000, v41, v42, "Creating ddNodeViewModel for endpoint: %s", v46, 0xCu);
    v52 = __swift_destroy_boxed_opaque_existential_1(v47);
    v53 = v47;
    v14 = v220;
    MEMORY[0x2383EA8A0](v53, -1, -1, v52);
    v54 = v46;
    v23 = v45;
    v15 = v212;
    MEMORY[0x2383EA8A0](v54, -1, -1);
  }

  else
  {

    v218 = *(v24 + 8);
    v218(v38, v23);
  }

  sub_238152B9C();
  v55 = (*(v15 + 48))(v13, 1, v14);
  v56 = v216;
  if (v55 == 1)
  {
    sub_238071284(v13, &qword_27DEEBBE8, &unk_23815A9A0);
    v57 = v209;
    v214(v209, v223, v23);
    v58 = sub_23815291C();
    v59 = sub_2381550DC();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v225[0] = v61;
      *v60 = 136315138;
      v62 = sub_238152B3C();
      v64 = v63;
      v65 = v57;
      v66 = v218;
      v218(v65, v23);
      v67 = sub_238085EAC(v62, v64, v225);

      *(v60 + 4) = v67;
      _os_log_impl(&dword_238060000, v58, v59, "Endpoint is missing txt record. Skipping {endpoint: %s}", v60, 0xCu);
      v68 = __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x2383EA8A0](v61, -1, -1, v68);
      MEMORY[0x2383EA8A0](v60, -1, -1);

      result = v66(v223, v23);
    }

    else
    {

      v85 = v218;
      v218(v223, v23);
      result = v85(v57, v23);
    }

    goto LABEL_70;
  }

  v70 = v221;
  (*(v15 + 32))(v221, v13, v14);
  v71 = *(v15 + 16);
  v71(v56, v70, v14);
  v72 = sub_23815291C();
  v73 = sub_2381550FC();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v196 = v74;
    v209 = swift_slowAlloc();
    v225[0] = v209;
    *v74 = 136315138;
    sub_238152BEC();
    v195 = sub_238154C2C();
    v75 = v71;
    v76 = v23;
    v77 = v14;
    v79 = v78;

    v80 = v77;
    v23 = v76;
    v71 = v75;
    v216 = *(v15 + 8);
    (v216)(v56, v80);
    v81 = sub_238085EAC(v195, v79, v225);

    v82 = v196;
    *(v196 + 1) = v81;
    _os_log_impl(&dword_238060000, v72, v73, "%s", v82, 0xCu);
    v83 = v209;
    v84 = __swift_destroy_boxed_opaque_existential_1(v209);
    MEMORY[0x2383EA8A0](v83, -1, -1, v84);
    MEMORY[0x2383EA8A0](v82, -1, -1);
  }

  else
  {

    v216 = *(v15 + 8);
    (v216)(v56, v14);
  }

  v86 = sub_238152B5C();
  if (v87 >> 60 != 15)
  {
    sub_238087244(v86, v87);
    v102 = sub_23812F9BC();
    if (v103)
    {
      v104 = v102;
    }

    else
    {
      v104 = 0x206E776F6E6B6E55;
    }

    if (v103)
    {
      v105 = v103;
    }

    else
    {
      v105 = 0xEE00656369766544;
    }

    v106 = sub_238152B5C();
    if (v107 >> 60 == 15)
    {
      v218(v223, v23);
      result = (v216)(v221, v220);
    }

    else
    {
      v125 = v106;
      v126 = v107;
      v127 = sub_23812C2C8(&unk_284AEE928);
      v129 = v128;
      v130 = sub_23812C45C(v125, v126, v127, v128);
      sub_238085CA0(v127, v129);
      v131 = sub_238087244(v125, v126);
      (v218)(v223, v23, v131);
      result = (v216)(v221, v220);
      if (v130)
      {
        v132 = 0;
        v133 = 0;
        v134 = 4;
        goto LABEL_71;
      }
    }

    v132 = 0;
    v133 = 0;
    v134 = 5;
    goto LABEL_71;
  }

  v209 = v23;
  v89 = v220;
  v88 = v221;
  v71(v202, v221, v220);
  sub_23815370C();
  sub_2381536FC();
  v90 = v203;
  v71(v203, v88, v89);
  v91 = sub_23815291C();
  v92 = sub_2381550FC();
  v93 = os_log_type_enabled(v91, v92);
  v212 = v15;
  if (v93)
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v225[0] = v95;
    *v94 = 136315138;
    sub_238152BEC();
    v96 = v89;
    v97 = sub_238154C2C();
    v99 = v98;

    (v216)(v90, v96);
    v100 = sub_238085EAC(v97, v99, v225);

    *(v94 + 4) = v100;
    _os_log_impl(&dword_238060000, v91, v92, "Text Record: %s", v94, 0xCu);
    v101 = __swift_destroy_boxed_opaque_existential_1(v95);
    MEMORY[0x2383EA8A0](v95, -1, -1, v101);
    MEMORY[0x2383EA8A0](v94, -1, -1);
  }

  else
  {

    (v216)(v90, v89);
  }

  v108 = v205;
  v109 = *MEMORY[0x277D54BB0];
  v110 = v210;
  v111 = *(v210 + 13);
  v112 = v204;
  v111(v204, v109, v205);
  sub_2380B3D68(&qword_27DEEBBF0, MEMORY[0x277D54BC0], MEMORY[0x277D54BC8]);
  v113 = v213;
  sub_238154EAC();
  sub_238154EAC();
  v116 = *(v110 + 1);
  v115 = v110 + 8;
  v114 = v116;
  v116(v112, v108);
  v117 = MEMORY[0x277D54BA0];
  if (v225[0] == v224)
  {
    v118 = sub_238152C0C();
    if (v119)
    {
      v120 = sub_2380B0F98(v118, v119);
      if ((v121 & 1) == 0)
      {
        if ((v120 & 0x80000) != 0)
        {
          v114(v113, v108);
          v124 = *v117;
        }

        else
        {
          sub_238131110(v223);
          v123 = v122;
          v114(v113, v108);
          if (v123)
          {

            v124 = *MEMORY[0x277D54BA8];
          }

          else
          {
            v124 = v109;
          }
        }

        v111(v113, v124, v108);
      }
    }
  }

  v135 = v210;
  v136 = v208;
  (*(v210 + 2))(v208, v113, v108);
  v137 = (*(v135 + 11))(v136, v108);
  if (v137 == *v117)
  {
    v138 = sub_238152B0C();
    v140 = v201;
    if (!v139)
    {
      goto LABEL_54;
    }

    v104 = v138;
    v105 = v139;
    v141 = sub_2381310F8(v223);
    if (!v142)
    {
LABEL_53:

LABEL_54:
      v210 = v114;
      v149 = v209;
      v214(v140, v223, v209);
      v150 = sub_23815291C();
      v151 = sub_2381550DC();
      if (os_log_type_enabled(v150, v151))
      {
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v225[0] = v153;
        *v152 = 136315138;
        v154 = sub_238152B3C();
        v155 = v140;
        v157 = v156;
        v158 = v218;
        v222 = v115;
        v218(v155, v149);
        v159 = sub_238085EAC(v154, v157, v225);

        *(v152 + 4) = v159;
        v160 = "Same account endpoint is missing device name and model. Skipping {endpoint: %s}";
LABEL_56:
        _os_log_impl(&dword_238060000, v150, v151, v160, v152, 0xCu);
        v161 = __swift_destroy_boxed_opaque_existential_1(v153);
        MEMORY[0x2383EA8A0](v153, -1, -1, v161);
        MEMORY[0x2383EA8A0](v152, -1, -1);

        v158(v223, v149);
        v210(v213, v108);
LABEL_69:
        (*(v207 + 8))(v211, v206);
        result = (v216)(v221, v220);
LABEL_70:
        v104 = 0;
        v105 = 0;
        v132 = 0;
        v133 = 0;
        v134 = -1;
        goto LABEL_71;
      }

      goto LABEL_68;
    }

    v132 = v141;
    v133 = v142;
    if (v141 == 63 && v142 == 0xE100000000000000 || (sub_2381555CC() & 1) != 0)
    {

      goto LABEL_53;
    }

    v218(v223, v209);
    v114(v113, v108);
    (*(v207 + 8))(v211, v206);
    result = (v216)(v221, v220);
    v134 = 0;
  }

  else if (v137 == *MEMORY[0x277D54BA8])
  {
    v143 = sub_238131110(v223);
    if (!v144)
    {
      v210 = v114;
      v140 = v200;
      v149 = v209;
      v214(v200, v223, v209);
      v150 = sub_23815291C();
      v151 = sub_2381550DC();
      if (os_log_type_enabled(v150, v151))
      {
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v225[0] = v153;
        *v152 = 136315138;
        v162 = sub_238152B3C();
        v163 = v140;
        v165 = v164;
        v158 = v218;
        v222 = v115;
        v218(v163, v149);
        v166 = sub_238085EAC(v162, v165, v225);

        *(v152 + 4) = v166;
        v160 = "Contact endpoint is missing contact ID. Skipping {endpoint: %s}";
        goto LABEL_56;
      }

LABEL_68:

      v193 = v218;
      v218(v223, v149);
      v193(v140, v149);
      v210(v113, v108);
      goto LABEL_69;
    }

    v104 = v143;
    v105 = v144;
    v218(v223, v209);
    v114(v113, v108);
    (*(v207 + 8))(v211, v206);
    result = (v216)(v221, v220);
    v132 = 0;
    v133 = 0;
    v134 = 1;
  }

  else if (v137 == v109)
  {
    v145 = sub_238152B0C();
    if (!v146)
    {
      v210 = v114;
      v140 = v198;
      v149 = v209;
      v214(v198, v223, v209);
      v150 = sub_23815291C();
      v151 = sub_2381550DC();
      if (os_log_type_enabled(v150, v151))
      {
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v225[0] = v153;
        *v152 = 136315138;
        v181 = sub_238152B3C();
        v182 = v140;
        v184 = v183;
        v158 = v218;
        v222 = v115;
        v218(v182, v149);
        v185 = sub_238085EAC(v181, v184, v225);

        *(v152 + 4) = v185;
        v160 = "Stranger endpoint is missing device name. Skipping {endpoint: %s}";
        goto LABEL_56;
      }

      goto LABEL_68;
    }

    v104 = v145;
    v105 = v146;
    v218(v223, v209);
    v114(v113, v108);
    (*(v207 + 8))(v211, v206);
    result = (v216)(v221, v220);
    v132 = 0;
    v133 = 0;
    v134 = 2;
  }

  else
  {
    if (v137 != *MEMORY[0x277D54BB8])
    {
      v210 = v114;
      v167 = v199;
      v168 = v209;
      v214(v199, v223, v209);
      v169 = sub_23815291C();
      v170 = sub_2381550EC();
      if (os_log_type_enabled(v169, v170))
      {
        v171 = swift_slowAlloc();
        v172 = swift_slowAlloc();
        v225[0] = v172;
        *v171 = 136315138;
        v173 = sub_238152B3C();
        v174 = v167;
        v176 = v175;
        v177 = v218;
        v222 = v115;
        v218(v174, v168);
        v178 = sub_238085EAC(v173, v176, v225);

        *(v171 + 4) = v178;
        _os_log_impl(&dword_238060000, v169, v170, "Receive endpoint with unknown device relationship. Dropping. {endpoint: %s}", v171, 0xCu);
        v179 = __swift_destroy_boxed_opaque_existential_1(v172);
        MEMORY[0x2383EA8A0](v172, -1, -1, v179);
        MEMORY[0x2383EA8A0](v171, -1, -1);

        v177(v223, v168);
        v180 = v213;
      }

      else
      {

        v186 = v218;
        v218(v223, v168);
        v186(v167, v168);
        v180 = v113;
      }

      v187 = v210;
      v210(v180, v108);
      (*(v207 + 8))(v211, v206);
      (v216)(v221, v220);
      result = v187(v208, v108);
      goto LABEL_70;
    }

    v147 = sub_238152B0C();
    if (!v148)
    {
      v210 = v114;
      v140 = v197;
      v149 = v209;
      v214(v197, v223, v209);
      v150 = sub_23815291C();
      v151 = sub_2381550DC();
      if (os_log_type_enabled(v150, v151))
      {
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v225[0] = v153;
        *v152 = 136315138;
        v188 = sub_238152B3C();
        v189 = v140;
        v191 = v190;
        v158 = v218;
        v222 = v115;
        v218(v189, v149);
        v192 = sub_238085EAC(v188, v191, v225);

        *(v152 + 4) = v192;
        v160 = "Classroom endpoint is missing device name. Skipping {endpoint: %s}";
        goto LABEL_56;
      }

      goto LABEL_68;
    }

    v104 = v147;
    v105 = v148;
    v218(v223, v209);
    v114(v113, v108);
    (*(v207 + 8))(v211, v206);
    result = (v216)(v221, v220);
    v133 = 0;
    v134 = 3;
    v132 = 1;
  }

LABEL_71:
  v194 = v219;
  *v219 = v104;
  v194[1] = v105;
  v194[2] = v132;
  v194[3] = v133;
  *(v194 + 32) = v134;
  return result;
}

uint64_t sub_2380B3D68(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_2380B3DB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_2380B3E18(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

double sub_2380B3E24(void *result, char a2)
{
  if (a2 != -1)
  {
    return sub_2380B3E3C(result, a2 & 1);
  }

  return v2;
}

double sub_2380B3E3C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

double sub_2380B3E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 1 < 5)
  {

LABEL_4:

    return result;
  }

  if (!a5)
  {

    goto LABEL_4;
  }

  return result;
}

uint64_t sub_2380B3EB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_2380B3F10(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    return a1;
  }

  else
  {
  }
}

double sub_2380B3F60(void *result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_2380B3F78(result, a2, a3, a4 & 1);
  }

  return v4;
}

double sub_2380B3F78(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }

  return result;
}

void sub_2380B3FC8()
{
  v1 = sub_238152BDC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC17DeviceDiscoveryUI37DDDeviceAdvertiserSceneViewController_hostingController;
  if (!*&v0[OBJC_IVAR____TtC17DeviceDiscoveryUI37DDDeviceAdvertiserSceneViewController_hostingController])
  {
    aBlock[4] = sub_238066EF4;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2380B4734;
    aBlock[3] = &block_descriptor_1;
    v6 = _Block_copy(aBlock);
    [v0 _beginDelayingPresentation_cancellationHandler_];
    _Block_release(v6);
    v7 = sub_238154C8C();
    v8 = [objc_opt_self() identityForAngelJobLabel_];

    v9 = objc_allocWithZone(MEMORY[0x277D761F8]);
    v10 = v8;
    v11 = [v9 init];
    v12 = [objc_allocWithZone(MEMORY[0x277D761E0]) initWithProcessIdentity:v10 sceneSpecification:v11];
    v60 = v10;

    v13 = *&v0[v5];
    *&v0[v5] = v12;
    v14 = v12;

    if (v14)
    {
      v58 = v2;
      [v14 setDelegate_];
      if (qword_27DEEA048 != -1)
      {
        swift_once();
      }

      v15 = sub_23815293C();
      __swift_project_value_buffer(v15, qword_27DEF31C8);
      v16 = v0;
      v17 = sub_23815291C();
      v18 = sub_2381550BC();

      v19 = &qword_27DEEB000;
      if (os_log_type_enabled(v17, v18))
      {
        v20 = swift_slowAlloc();
        v57 = v14;
        v21 = v20;
        v22 = swift_slowAlloc();
        v59 = v16;
        v23 = v22;
        aBlock[0] = v22;
        *v21 = 136315138;
        __swift_project_boxed_opaque_existential_1(&v59[OBJC_IVAR____TtC17DeviceDiscoveryUI37DDDeviceAdvertiserSceneViewController_listenerProvider], *&v59[OBJC_IVAR____TtC17DeviceDiscoveryUI37DDDeviceAdvertiserSceneViewController_listenerProvider + 24]);
        sub_238152D1C();
        v24 = sub_238152BBC();
        v26 = v25;
        v27 = v58;
        (*(v58 + 8))(v4, v1);
        v28 = sub_238085EAC(v24, v26, aBlock);

        *(v21 + 4) = v28;
        v19 = &qword_27DEEB000;
        _os_log_impl(&dword_238060000, v17, v18, "Updating with listenerProvider: %s", v21, 0xCu);
        v29 = __swift_destroy_boxed_opaque_existential_1(v23);
        v30 = v23;
        v16 = v59;
        MEMORY[0x2383EA8A0](v30, -1, -1, v29);
        v31 = v21;
        v14 = v57;
        MEMORY[0x2383EA8A0](v31, -1, -1);
      }

      else
      {

        v27 = v58;
      }

      __swift_project_boxed_opaque_existential_1(&v16[v19[384]], *&v16[v19[384] + 24]);
      sub_238152D1C();
      v32 = sub_238152BCC();
      v34 = v33;
      (*(v27 + 8))(v4, v1);
      sub_2380FFC44(v14, v32, v34);

      v35 = [v14 sceneViewController];
      [v16 addChildViewController_];
      v36 = [v35 view];
      if (v36)
      {
        v37 = v36;
        v38 = [v16 view];
        if (v38)
        {
          v39 = v38;
          [v38 addSubview_];
          [v37 setTranslatesAutoresizingMaskIntoConstraints_];
          v40 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC040, &unk_23815AF90);
          v41 = swift_allocObject();
          *(v41 + 16) = xmmword_23815A9C0;
          v42 = [v37 topAnchor];
          v43 = [v39 topAnchor];
          v59 = v16;
          v44 = v14;
          v45 = [v42 constraintEqualToAnchor_];

          *(v41 + 32) = v45;
          v46 = [v37 leadingAnchor];
          v47 = [v39 leadingAnchor];
          v48 = [v46 constraintEqualToAnchor_];

          *(v41 + 40) = v48;
          v49 = [v37 trailingAnchor];
          v50 = [v39 trailingAnchor];
          v51 = [v49 constraintEqualToAnchor_];

          *(v41 + 48) = v51;
          v52 = [v37 bottomAnchor];
          v53 = [v39 bottomAnchor];
          v54 = [v52 constraintEqualToAnchor_];

          *(v41 + 56) = v54;
          sub_2380B4930(0, v55);
          v56 = sub_238154ECC();

          [v40 activateConstraints_];

          [v35 didMoveToParentViewController_];
          v60 = v44;
          v14 = v35;
          v35 = v37;
          v37 = v39;
        }

        v60 = v14;
        v14 = v35;
        v35 = v37;
      }

      v60 = v35;
    }
  }
}

uint64_t sub_2380B4734(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  LOBYTE(a2) = v3(a2);

  return a2 & 1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2380B4930(uint64_t a1, uint64_t a2)
{
  result = qword_27DEEBC10;
  if (!qword_27DEEBC10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEEBC10);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVySo7UIImageCSgGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2380B4994(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_2380B49F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2380B4A70()
{
  v0 = sub_23815459C();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  result = sub_23815464C();
  qword_27DEF3208 = result;
  return result;
}

double sub_2380B4B4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a1;
  v7 = sub_238153D3C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  v14 = sub_23815468C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v30 = v8;
    *&v37 = v32;
    *(&v37 + 1) = a2;
    *&v38 = a3;
    v31 = a3;

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBC60, &qword_23815AB20);
    MEMORY[0x2383E8E00](&KeyPath, v18);
    if (KeyPath)
    {
      v19 = KeyPath;
      sub_23815466C();
      (*(v15 + 104))(v17, *MEMORY[0x277CE0FE0], v14);
      v20 = sub_2381546CC();
      v29 = a4;
      v21 = v20;

      (*(v15 + 8))(v17, v14);
      sub_238153D2C();
      v22 = v30;
      (*(v30 + 16))(v11, v13, v7);
      sub_2380B5184();
      v23 = sub_23815390C();
      (*(v22 + 8))(v13, v7);
      KeyPath = v21;
      v34 = xmmword_23815AA00;
      v35 = v23;
      v36 = 0;
      swift_retain_n();
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBC20, &qword_23815AAF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBC28, &qword_23815AB00);
      sub_2380B4F90();
      sub_2380B50CC();
      sub_238153ECC();

      a4 = v29;

      goto LABEL_8;
    }
  }

  if (qword_27DEEA068 != -1)
  {
    swift_once();
  }

  v24 = qword_27DEF3208;
  KeyPath = swift_getKeyPath();
  v34 = v24;
  v35 = 0;
  v36 = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBC20, &qword_23815AAF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBC28, &qword_23815AB00);
  sub_2380B4F90();
  sub_2380B50CC();
  sub_238153ECC();
LABEL_8:
  result = *&v37;
  v26 = v38;
  v27 = v39;
  *a4 = v37;
  *(a4 + 16) = v26;
  *(a4 + 32) = v27;
  return result;
}

unint64_t sub_2380B4F90()
{
  result = qword_27DEEBC30;
  if (!qword_27DEEBC30)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBC20, &qword_23815AAF8);
    v4[0] = sub_2380B5048();
    v4[1] = sub_2380711D4(&qword_27DEEBC48, &qword_27DEEBC50, &unk_23815AB10, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEBC30);
  }

  return result;
}

unint64_t sub_2380B5048()
{
  result = qword_27DEEBC38;
  if (!qword_27DEEBC38)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBC40, &qword_23815AB08);
    v4[0] = MEMORY[0x277CE1078];
    v4[1] = MEMORY[0x277CE01B0];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEBC38);
  }

  return result;
}

unint64_t sub_2380B50CC()
{
  result = qword_27DEEBC58;
  if (!qword_27DEEBC58)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBC28, &qword_23815AB00);
    v4[0] = sub_23809BC14();
    v4[1] = sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEBC58);
  }

  return result;
}

unint64_t sub_2380B5184()
{
  result = qword_27DEEBC68;
  if (!qword_27DEEBC68)
  {
    v3 = sub_238153D3C();
    result = swift_getWitnessTable(MEMORY[0x277CE00F8], v3, v0, v1);
    atomic_store(result, &qword_27DEEBC68);
  }

  return result;
}

unint64_t sub_2380B51E0()
{
  result = qword_27DEEBC70;
  if (!qword_27DEEBC70)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBC78, &qword_23815AB28);
    v4[0] = sub_2380B4F90();
    v4[1] = sub_2380B50CC();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEEBC70);
  }

  return result;
}

id sub_2380B526C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_2381526CC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v21[-v10];
  MEMORY[0x28223BE20](v9);
  v13 = &v21[-v12];
  v14 = sub_238154C8C();
  v15 = sub_238154C8C();
  v16 = [v3 URLForResource:v14 withExtension:v15];

  if (!v16)
  {
    return 0;
  }

  sub_2381526AC();

  (*(v5 + 32))(v13, v11, v4);
  sub_23807A3F8(0, &qword_27DEEBCC8, 0x277CD9F28);
  (*(v5 + 16))(v8, v13, v4);
  v17 = sub_238154CCC();
  v20 = sub_2380B7104(v8, v17, v18, 0);
  (*(v5 + 8))(v13, v4);
  result = v20;
  if (!v20)
  {
    return 0;
  }

  return result;
}

void sub_2380B54AC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (!v3)
  {
    return;
  }

  v4 = *(v2 + 24);
  if (!v4)
  {
    return;
  }

  v18 = v3;
  v5 = [v4 rootLayer];
  if (v5)
  {
    v6 = v5;
    v7 = sub_238154C8C();
    v8 = [v6 stateWithName_];

    if (!v8)
    {
      v9 = v18;
      v18 = v6;
LABEL_15:

      goto LABEL_16;
    }

    v9 = v6;
    v10 = [v18 stateOfLayer_];
    if (v10)
    {
      v11 = v10;
      sub_23807A3F8(0, &qword_27DEEBC98, 0x277CD9FA8);
      v12 = v8;
      v13 = sub_23815523C();

      if (v13)
      {
        v14 = v9;
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      v15 = v8;
    }

    v16 = [objc_opt_self() areAnimationsEnabled];
    v17 = 0.0;
    if (v16)
    {
      *&v17 = 1.0;
    }

    [v18 setState:v8 ofLayer:v9 transitionSpeed:v17];
    v12 = v18;
    v14 = v8;
    v18 = v9;
    goto LABEL_14;
  }

LABEL_16:
}

void sub_2380B5660()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = [v1 rootLayer];
    if (v2)
    {
      v3 = v2;
      v4 = [objc_allocWithZone(MEMORY[0x277CD9FB8]) initWithLayer_];
      v5 = v0[2];
      v0[2] = v4;

      v6 = v0[3];
      if (!v6 || (v7 = [v6 rootLayer]) == 0 || (v8 = v7, v9 = objc_msgSend(v7, sel_states), v8, !v9) || (v10 = sub_238154EDC(), v9, v11 = sub_2380B5814(v10), , !v11))
      {

        v11 = MEMORY[0x277D84F90];
      }

      if (v11 >> 62)
      {
        if (sub_2381554FC())
        {
          goto LABEL_10;
        }
      }

      else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_10:
        if ((v11 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x2383E9A70](0, v11);
        }

        else
        {
          if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v12 = *(v11 + 32);
        }

        v13 = v12;

        goto LABEL_17;
      }

      v13 = 0;
LABEL_17:
      v16 = v0[4];
      v0[4] = v13;
      v15 = v13;
      sub_2380B5920(v16);

      v14 = v16;
      goto LABEL_18;
    }
  }

  v14 = v0[2];
  v0[2] = 0;
LABEL_18:
}

uint64_t sub_2380B5814(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_23815547C();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_238086370(i, v5);
    sub_23807A3F8(0, &qword_27DEEBC98, 0x277CD9FA8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_23815545C();
    sub_23815548C();
    sub_23815549C();
    sub_23815546C();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void sub_2380B5920(void *a1)
{
  v2 = v1;
  v4 = v2[4];
  if (v4)
  {
    if (a1)
    {
      sub_23807A3F8(0, &qword_27DEEBC98, 0x277CD9FA8);
      v5 = v4;
      v6 = a1;
      v7 = sub_23815523C();

      if (v7)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = v2[2];
  if (v8)
  {
    v9 = v2[4];
    if (v9)
    {
      v10 = v2[3];
      if (v10)
      {
        v11 = v9;
        v18 = v8;
        v12 = [v10 rootLayer];
        if (v12)
        {
          v13 = v12;
          v14 = objc_opt_self();
          v15 = v11;
          v11 = v13;
          v16 = [v14 areAnimationsEnabled];
          v17 = 0.0;
          if (v16)
          {
            *&v17 = 1.0;
          }

          [v18 setState:v15 ofLayer:v11 transitionSpeed:v17];

          v18 = v11;
        }
      }
    }
  }
}

uint64_t sub_2380B5AA0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2380B5B0C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  type metadata accessor for ViewState(0, a1);
  result = sub_2381529DC();
  *a2 = result;
  return result;
}

double sub_2380B5B4C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnimatedViewState(0, a2);
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

double sub_2380B5B80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = v2[5];
  v21 = v2[1];
  v22 = v2[4];
  type metadata accessor for AnimatedViewState(0, a2);
  sub_2380B73F8(&qword_27DEEBCA0, type metadata accessor for AnimatedViewState, aE_1);

  v6 = sub_23815381C();
  type metadata accessor for ViewState(0, v7);
  sub_2380B73F8(&qword_27DEEBCA8, type metadata accessor for ViewState, aE_1);

  v8 = sub_2381539BC();
  v10 = v9;
  if (!*(v6 + 24))
  {
    v11 = sub_2380B526C(v4, v21);
    v12 = *(v6 + 24);
    *(v6 + 24) = v11;
    v13 = v11;

    sub_2380B5660();
  }

  v14 = swift_allocObject();
  v15 = *(v3 + 48);
  *(v14 + 48) = *(v3 + 32);
  *(v14 + 64) = v15;
  *(v14 + 80) = *(v3 + 64);
  v16 = *(v3 + 16);
  *(v14 + 16) = *v3;
  *(v14 + 32) = v16;
  v24 = v22;
  v25 = v5;
  v26 = v8;
  v27 = v10;
  v28 = sub_2380B79AC;
  v29 = v14;
  v30 = 0;
  v31 = 0;
  v23[71] = *(v3 + 24);
  v17 = swift_allocObject();
  v18 = *(v3 + 48);
  *(v17 + 48) = *(v3 + 32);
  *(v17 + 64) = v18;
  *(v17 + 80) = *(v3 + 64);
  v19 = *(v3 + 16);
  *(v17 + 16) = *v3;
  *(v17 + 32) = v19;
  sub_2380B74B4(v3, v23);
  sub_2380B74B4(v3, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBCB0, &qword_23815ACD8);
  sub_2380B74EC();
  sub_23815456C();

  return result;
}

double sub_2380B5E00(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    type metadata accessor for AnimatedViewState(0, a2);
    sub_2380B73F8(&qword_27DEEBCA0, type metadata accessor for AnimatedViewState, aE_1);
    sub_23815381C();
    sub_2380B6320();
  }

  return result;
}

void sub_2380B5EF0()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + 24);
  v29 = *(v0 + 32);
  if (!v2)
  {
    v9 = v1;
LABEL_9:

    v8 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v3 = v1;
  v4 = [v2 rootLayer];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 states];

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = sub_238154EDC();

  v8 = sub_2380B5814(v7);

  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_10:
  v10 = sub_2380B6210(v29, v8);
  v12 = v11;

  v13 = v29;
  if ((v12 & 1) == 0)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
    }

    else
    {
      v15 = *(v0 + 24);
      if (v15 && (v16 = [v15 rootLayer]) != 0 && (v10 = v16, v17 = objc_msgSend(v16, sel_states), v10, v17) && (v10 = sub_238154EDC(), v17, v18 = sub_2380B5814(v10), , v18))
      {
        v13 = v18;
      }

      else
      {

        v13 = MEMORY[0x277D84F90];
      }

      if (!(v13 >> 62))
      {
        v19 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v19)
        {
          goto LABEL_20;
        }

        goto LABEL_37;
      }
    }

    v10 = v13;
    v19 = sub_2381554FC();

    if (v19)
    {
LABEL_20:
      if (v14 == 0x8000000000000000 && v19 == -1)
      {
        goto LABEL_41;
      }

      v19 = v14 % v19;
      v20 = *(v0 + 24);
      if (!v20 || (v21 = [v20 rootLayer]) == 0 || (v22 = v21, v23 = objc_msgSend(v21, sel_states), v22, !v23) || (v24 = sub_238154EDC(), v23, v10 = sub_2380B5814(v24), , !v10))
      {

        v10 = MEMORY[0x277D84F90];
      }

      if ((v10 & 0xC000000000000001) == 0)
      {
        if (v19 < 0)
        {
          __break(1u);
        }

        else if (v19 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v25 = *(v10 + 8 * v19 + 32);
LABEL_31:
          v26 = v25;

          v27 = *(v0 + 32);
          *(v0 + 32) = v26;
          v28 = v26;
          sub_2380B5920(v27);

          sub_2380B6320();
          v13 = v28;
          goto LABEL_32;
        }

        __break(1u);
LABEL_41:
        __break(1u);
        return;
      }

LABEL_38:
      v25 = MEMORY[0x2383E9A70](v19, v10);
      goto LABEL_31;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_32:
}

unint64_t sub_2380B6210(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_2381554FC();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2383E9A70](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_23807A3F8(0, &qword_27DEEBC98, 0x277CD9FA8);
    v8 = sub_23815523C();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

void sub_2380B6320()
{
  v1 = sub_2381549FC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v48 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_238154A2C();
  v47 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2381549EC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_238154A4C();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v18 = &v40 - v17;
  v19 = *(v0 + 32);
  if (!v19)
  {
    return;
  }

  v42 = v16;
  v43 = v15;
  v45 = v2;
  v46 = v1;
  v20 = *(v0 + 24);
  v44 = v4;
  v49 = v19;
  if (!v20)
  {
    v27 = v19;
LABEL_8:

    v26 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v21 = v19;
  v22 = [v20 rootLayer];
  if (!v22)
  {
    goto LABEL_8;
  }

  v23 = v22;
  v24 = [v22 states];

  if (!v24)
  {
    goto LABEL_8;
  }

  v25 = sub_238154EDC();

  v26 = sub_2380B5814(v25);

  if (!v26)
  {
    goto LABEL_8;
  }

LABEL_9:
  v28 = sub_2380B6210(v49, v26);
  v30 = v29;

  if (v30)
  {
    v31 = v49;
  }

  else
  {
    if (v28)
    {
      v32 = 2500;
    }

    else
    {
      v32 = 4000;
    }

    sub_23807A3F8(0, &qword_27DEEBA50, 0x277D85C78);
    v41 = sub_23815517C();
    sub_238154A3C();
    *v10 = v32;
    (*(v8 + 104))(v10, *MEMORY[0x277D85178], v7);
    MEMORY[0x2383E9090](v14, v10);
    (*(v8 + 8))(v10, v7);
    v42 = *(v42 + 8);
    v33 = v14;
    v34 = v43;
    (v42)(v33, v43);
    v35 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_2380B7304;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_238106D10;
    aBlock[3] = &block_descriptor_2;
    v36 = _Block_copy(aBlock);

    sub_238154A0C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2380B73F8(&qword_27DEEBC88, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECFC0, &qword_23815ABE0);
    sub_2380711D4(&qword_27DEEBC90, &qword_27DEECFC0, &qword_23815ABE0, MEMORY[0x277D83970]);
    v37 = v48;
    v38 = v46;
    sub_23815537C();
    v39 = v41;
    MEMORY[0x2383E9780](v18, v6, v37, v36);

    _Block_release(v36);
    (*(v45 + 8))(v37, v38);
    (*(v47 + 8))(v6, v44);
    (v42)(v18, v34);
  }
}

double sub_2380B68E8(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2380B5EF0();
  }

  return result;
}

uint64_t sub_2380B6948()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2380B69BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBCD0, &qword_23815AD68);
  MEMORY[0x28223BE20](v8);
  v10 = v17 - v9;
  type metadata accessor for CAPackageViewLayer(0, v11);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;

  sub_2381538DC();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v14 = &v10[*(v8 + 36)];
  *v14 = sub_2380B7708;
  *(v14 + 1) = v13;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  v17[0] = a1;
  v17[1] = a2;
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECE00, &qword_23815AD70);
  sub_2380B7780();
  sub_2380B7838();
  sub_23815456C();

  return sub_2380B78B4(v10);
}

void sub_2380B6BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 24);
  if (v5)
  {
    v6 = [v5 rootLayer];
    if (v6)
    {
      v7 = v6;
      v8 = v6;
      sub_2380B6C44(v7);
    }
  }
}

void sub_2380B6C44(void *a1)
{
  v2 = OBJC_IVAR____TtC17DeviceDiscoveryUIP33_80F91FDBE7F6653CDE609CAC9E4568F918CAPackageViewLayer_packageLayer;
  v6 = *&v1[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_80F91FDBE7F6653CDE609CAC9E4568F918CAPackageViewLayer_packageLayer];
  *&v1[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_80F91FDBE7F6653CDE609CAC9E4568F918CAPackageViewLayer_packageLayer] = a1;
  v3 = a1;
  [v6 removeFromSuperlayer];
  v4 = *&v1[v2];
  if (v4)
  {
    v5 = v4;
    [v1 addSublayer_];
  }
}

void sub_2380B6CDC(uint64_t a1, uint64_t a2)
{
  v31.receiver = v2;
  v31.super_class = type metadata accessor for CAPackageViewLayer(0, a2);
  objc_msgSendSuper2(&v31, sel_layoutSublayers);
  v3 = *&v2[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_80F91FDBE7F6653CDE609CAC9E4568F918CAPackageViewLayer_packageLayer];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [v4 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v32.origin.x = v6;
    v32.origin.y = v8;
    v32.size.width = v10;
    v32.size.height = v12;
    Width = CGRectGetWidth(v32);
    v26 = v6;
    v33.origin.x = v6;
    v33.origin.y = v8;
    v27 = v12;
    v33.size.width = v10;
    v33.size.height = v12;
    v21 = Width / CGRectGetHeight(v33);
    v34.origin.x = v14;
    v34.origin.y = v16;
    v34.size.width = v18;
    v34.size.height = v20;
    v22 = CGRectGetWidth(v34);
    v35.origin.x = v14;
    v35.origin.y = v16;
    v35.size.width = v18;
    v35.size.height = v20;
    if (v21 >= v22 / CGRectGetHeight(v35))
    {
      v38.origin.x = v26;
      v38.origin.y = v8;
      v38.size.width = v10;
      v38.size.height = v27;
      Height = CGRectGetHeight(v38);
      v39.origin.x = v14;
      v39.origin.y = v16;
      v39.size.width = v18;
      v39.size.height = v20;
      v24 = CGRectGetHeight(v39);
    }

    else
    {
      v36.origin.x = v26;
      v36.origin.y = v8;
      v36.size.width = v10;
      v36.size.height = v27;
      Height = CGRectGetWidth(v36);
      v37.origin.x = v14;
      v37.origin.y = v16;
      v37.size.width = v18;
      v37.size.height = v20;
      v24 = CGRectGetWidth(v37);
    }

    CGAffineTransformMakeScale(&v29, Height / v24, Height / v24);
    *&m.a = *&v29.m11;
    *&m.c = *&v29.m13;
    *&m.tx = *&v29.m21;
    CATransform3DMakeAffineTransform(&v29, &m);
    [v4 setTransform_];
    [v2 bounds];
    MidX = CGRectGetMidX(v40);
    [v2 bounds];
    [v4 setPosition_];
  }
}

id sub_2380B7098(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CAPackageViewLayer(0, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_2380B7104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = sub_23815269C();
  v7 = sub_238154C8C();

  if (a4)
  {
    v8 = sub_238154C0C();
  }

  else
  {
    v8 = 0;
  }

  v17[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v6 type:v7 options:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_2381526CC();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v17[0];
    sub_23815266C();

    swift_willThrow();
    v15 = sub_2381526CC();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v9;
}

uint64_t sub_2380B72CC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7, v1);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2380B7330(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_2380B7378(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2380B73F8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t objectdestroy_42Tm()
{

  v1.n128_f64[0] = sub_23809BD58(*(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 81, 7, v1);
}

unint64_t sub_2380B74EC()
{
  result = qword_27DEEBCB8;
  if (!qword_27DEEBCB8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBCB0, &qword_23815ACD8);
    v4[0] = sub_2380B7578();
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEBCB8);
  }

  return result;
}

unint64_t sub_2380B7578()
{
  result = qword_27DEEBCC0;
  if (!qword_27DEEBCC0)
  {
    result = swift_getWitnessTable(byte_23815AD18, &type metadata for _CAPackageView, v0, v1);
    atomic_store(result, &qword_27DEEBCC0);
  }

  return result;
}

uint64_t sub_2380B75CC(uint64_t a1, int a2)
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

uint64_t sub_2380B7614(uint64_t result, int a2, int a3)
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

uint64_t sub_2380B7664()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBCB0, &qword_23815ACD8);
  sub_2380B74EC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t objectdestroy_55Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7, v1);
}

void sub_2380B774C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    sub_2380B54AC(*(v0 + 16), v1);
  }
}

unint64_t sub_2380B7780()
{
  result = qword_27DEEBCD8;
  if (!qword_27DEEBCD8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBCD0, &qword_23815AD68);
    v4[0] = sub_2380711D4(&qword_27DEEBCE0, &qword_27DEEBCE8, &qword_23815AD78, MEMORY[0x277CDF660]);
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEBCD8);
  }

  return result;
}

unint64_t sub_2380B7838()
{
  result = qword_27DEEBCF0;
  if (!qword_27DEEBCF0)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DEECE00, &qword_23815AD70);
    v4[0] = MEMORY[0x277D837F8];
    result = swift_getWitnessTable(MEMORY[0x277D84F50], v3, v4);
    atomic_store(result, &qword_27DEEBCF0);
  }

  return result;
}

uint64_t sub_2380B78B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBCD0, &qword_23815AD68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2380B791C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBCD0, &qword_23815AD68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DEECE00, &qword_23815AD70);
  sub_2380B7780();
  sub_2380B7838();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2380B79C0(uint64_t a1, int a2)
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

uint64_t sub_2380B7A08(uint64_t result, int a2, int a3)
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

uint64_t sub_2380B7A74@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238153CFC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for _DDListNodeView(0);
  sub_2380712E4(v1 + *(v10 + 32), v9, &qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_238153A2C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2381550EC();
    v13 = sub_2381540CC();
    sub_23815290C();

    sub_238153CEC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_2380B7C7C()
{
  v1 = sub_238153CFC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for _DDListNodeView(0) + 40));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_2381550EC();
  v8 = sub_2381540CC();
  sub_23815290C();

  sub_238153CEC();
  swift_getAtKeyPath();
  v9 = sub_2380700D8(v6, 0);
  (*(v2 + 8))(v4, v1, v9);
  return *&v10[1];
}

uint64_t sub_2380B7DD8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238153CFC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for _DDListNodeView(0);
  sub_2380712E4(v1 + *(v10 + 44), v9, &qword_27DEEAA00, &qword_238158260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2381537EC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2381550EC();
    v13 = sub_2381540CC();
    sub_23815290C();

    sub_238153CEC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2380B7FE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v46 = a2;
  v3 = sub_2381537EC();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v43 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238153A2C();
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBB68, &unk_23815A780);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  v14 = type metadata accessor for _DDNodeViewModel(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v41 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v38 - v18;
  v20 = type metadata accessor for _DDListNodeView(0);
  v21 = (a1 + *(v20 + 20));
  if (v21[1])
  {
    v22 = *v21;
    v47 = v21[1];
  }

  else
  {
    sub_2380712E4(a1, v13, &qword_27DEEBB68, &unk_23815A780);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_238071284(v13, &qword_27DEEBB68, &unk_23815A780);
      v22 = 0;
      v47 = 0xE000000000000000;
    }

    else
    {
      sub_2380B9C50(v13, v19, type metadata accessor for _DDNodeViewModel);
      v23 = sub_2380B7C7C();
      sub_2380B7A74(v7);
      v39 = v5;
      v24 = v43;
      sub_2380B7DD8(v43);
      v22 = sub_2380B0104(v7, v24, v23);
      v40 = v25;
      v47 = v26;
      v27 = v24;
      v5 = v39;
      (*(v44 + 8))(v27, v45);
      (*(v42 + 8))(v7, v5);
      if (v22)
      {

        v22 = v40;
      }

      else
      {
        v47 = 0xE000000000000000;
      }

      sub_2380B9CB8(v19);
    }
  }

  v28 = *(a1 + *(v20 + 24));
  if (!v28)
  {
    v40 = v22;
    sub_2380712E4(a1, v11, &qword_27DEEBB68, &unk_23815A780);
    if ((*(v15 + 48))(v11, 1, v14) == 1)
    {

      sub_238071284(v11, &qword_27DEEBB68, &unk_23815A780);
    }

    else
    {
      v30 = v41;
      sub_2380B9C50(v11, v41, type metadata accessor for _DDNodeViewModel);

      v31 = sub_2380B7C7C();
      sub_2380B7A74(v7);
      v32 = v43;
      sub_2380B7DD8(v43);
      v29 = sub_2380B0104(v7, v32, v31);
      (*(v44 + 8))(v32, v45);
      (*(v42 + 8))(v7, v5);
      sub_2380B9CB8(v30);
      if (v29)
      {

LABEL_16:
        v22 = v40;
        goto LABEL_17;
      }
    }

    v33 = [objc_opt_self() avatarImageRender];
    v34 = [v33 placeholderImageForSize:40.0 scale:{40.0, 5.0}];
    v29 = sub_23815466C();

    goto LABEL_16;
  }

  v29 = v28;
LABEL_17:
  v35 = v46;
  v36 = v47;
  *v46 = v22;
  v35[1] = v36;
  v35[2] = v29;
}

uint64_t sub_2380B8528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v18[0] = sub_238153A6C();
  v4 = *(v18[0] - 8);
  v5 = MEMORY[0x28223BE20](v18[0]);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBD78, &unk_23815AEB0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v18 - v12;
  sub_2380B9700(v2, v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_2380B9C50(v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for _DDListNodeView);
  v19 = v2;
  sub_2380B9BA4();
  sub_23815474C();
  sub_238153A5C();
  sub_2380711D4(&qword_27DEEBD88, &qword_27DEEBD78, &unk_23815AEB0, MEMORY[0x277CDF028]);
  sub_2380B9BF8();
  v16 = v18[0];
  sub_2381543DC();
  (*(v4 + 8))(v7, v16);
  return (*(v11 + 8))(v13, v10);
}

void sub_2380B8804(uint64_t a4@<X8>)
{
  v5 = sub_238153D1C();
  v26 = 0;
  sub_2380B899C(&v18);
  v31 = v22;
  v32 = v23;
  v33[0] = v24[0];
  *(v33 + 9) = *(v24 + 9);
  v27 = v18;
  v28 = v19;
  v29 = v20;
  v30 = v21;
  v34[0] = v18;
  v34[1] = v19;
  v34[2] = v20;
  v34[3] = v21;
  v34[4] = v22;
  v34[5] = v23;
  v35[0] = v24[0];
  *(v35 + 9) = *(v24 + 9);
  sub_2380712E4(&v27, &v17, &qword_27DEEBCF8, &qword_23815AE18);
  sub_238071284(v34, &qword_27DEEBCF8, &qword_23815AE18);
  *&v25[71] = v31;
  *&v25[87] = v32;
  *&v25[103] = v33[0];
  *&v25[112] = *(v33 + 9);
  *&v25[7] = v27;
  *&v25[23] = v28;
  *&v25[39] = v29;
  *&v25[55] = v30;
  v6 = v26;
  v7 = sub_2381540EC();
  LOBYTE(v18) = 1;
  v8 = sub_23815415C();
  sub_23815377C();
  v9 = *&v25[80];
  *(a4 + 81) = *&v25[64];
  *(a4 + 97) = v9;
  v10 = *&v25[112];
  *(a4 + 113) = *&v25[96];
  *(a4 + 129) = v10;
  v11 = *&v25[16];
  *(a4 + 17) = *v25;
  *(a4 + 33) = v11;
  v12 = *&v25[48];
  *(a4 + 49) = *&v25[32];
  *a4 = v5;
  *(a4 + 8) = 0x402E000000000000;
  *(a4 + 16) = v6;
  *(a4 + 65) = v12;
  *(a4 + 152) = v7;
  *(a4 + 160) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 192) = 1;
  *(a4 + 200) = v8;
  *(a4 + 208) = v13;
  *(a4 + 216) = v14;
  *(a4 + 224) = v15;
  *(a4 + 232) = v16;
  *(a4 + 240) = 0;
}

uint64_t sub_2380B899C@<X0>(uint64_t a4@<X8>)
{
  v34 = a4;
  v4 = sub_238153D7C();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_23815468C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *MEMORY[0x277CE0FE0], v5);
  v33 = sub_2381546CC();
  (*(v6 + 8))(v8, v5);
  sub_2381548DC();
  sub_2381538EC();
  LOBYTE(v40) = 1;
  *&v37[3] = *&v37[27];
  *&v37[11] = *&v37[35];
  *&v37[19] = *&v37[43];
  v32 = sub_2381540FC();
  sub_238153D6C();
  sub_238153D5C();
  sub_238153D4C();
  sub_238153D5C();
  sub_238153D9C();
  v9 = sub_23815436C();
  v11 = v10;
  v13 = v12;
  sub_23815419C();
  v14 = sub_23815435C();
  v16 = v15;
  LOBYTE(v5) = v17;

  sub_238070490(v9, v11, v13 & 1);

  sub_2381541FC();
  v18 = sub_2381542FC();
  v20 = v19;
  LOBYTE(v8) = v21;
  v23 = v22;
  sub_238070490(v14, v16, v5 & 1);

  v24 = v33;
  v38[0] = v33;
  v38[1] = 0;
  LOWORD(v39[0]) = 1;
  *(&v39[2] + 2) = *&v37[16];
  *(&v39[1] + 2) = *&v37[8];
  *(v39 + 2) = *v37;
  *&v39[3] = *&v37[23];
  LOBYTE(v16) = v32;
  BYTE8(v39[3]) = v32;
  *(&v39[3] + 9) = 256;
  *(v43 + 11) = *(&v39[2] + 11);
  v42 = v39[1];
  v43[0] = v39[2];
  v40 = v33;
  v41 = v39[0];
  v36 = v8 & 1;
  v35 = 1;
  v25 = v33;
  v26 = v39[0];
  v27 = v43[1];
  v28 = v34;
  *(v34 + 48) = v39[2];
  *(v28 + 64) = v27;
  v29 = v42;
  *(v28 + 16) = v26;
  *(v28 + 32) = v29;
  *v28 = v25;
  *(v28 + 80) = v18;
  *(v28 + 88) = v20;
  *(v28 + 96) = v8 & 1;
  *(v28 + 104) = v23;
  *(v28 + 112) = 0;
  *(v28 + 120) = 1;
  sub_2380712E4(v38, v44, &qword_27DEEBD00, &qword_23815AE20);
  sub_238070430(v18, v20, v8 & 1);

  sub_238070490(v18, v20, v8 & 1);

  v44[0] = v24;
  v44[1] = 0;
  v45 = 1;
  v46 = *v37;
  v47 = *&v37[8];
  *v48 = *&v37[16];
  *&v48[14] = *&v37[23];
  v49 = v16;
  v50 = 256;
  return sub_238071284(v44, &qword_27DEEBD00, &qword_23815AE20);
}

uint64_t sub_2380B8DB8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBB68, &unk_23815A780);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[7]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA320, &unk_238157920);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[8];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA328, &unk_23815F380);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[9];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA8E0, &unk_238157930);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[11];

  return v18(v19, a2, v17);
}

uint64_t sub_2380B8FB8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBB68, &unk_23815A780);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA320, &unk_238157920);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA328, &unk_23815F380);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA8E0, &unk_238157930);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[11];

  return v18(v19, a2, a2, v17);
}

uint64_t type metadata accessor for _DDListNodeView(uint64_t a1)
{
  result = qword_27DEEBD08;
  if (!qword_27DEEBD08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2380B91F0(uint64_t a1)
{
  sub_2380B9480(319, &qword_27DEEBD18, type metadata accessor for _DDNodeViewModel, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2380B9430(319, &qword_27DEED710, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2380B9430(319, &qword_27DEEBD20, MEMORY[0x277CE1088], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_238067930();
        if (v4 <= 0x3F)
        {
          sub_2380B9480(319, &qword_27DEEA358, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_2380B9480(319, &qword_27DEEA360, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_2380B9430(319, &qword_27DEEA368, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
              {
                sub_2380B9480(319, &qword_27DEEA910, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2380B9430(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2380B9480(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2380B94E8()
{
  result = qword_27DEEBD28;
  if (!qword_27DEEBD28)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBD30, &qword_23815AE38);
    v4[0] = sub_2380B95A0();
    v4[1] = sub_2380711D4(&qword_27DEEBD68, &qword_27DEEBD70, qword_23815AE58, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEBD28);
  }

  return result;
}

unint64_t sub_2380B95A0()
{
  result = qword_27DEEBD38;
  if (!qword_27DEEBD38)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBD40, &qword_23815AE40);
    v4[0] = sub_2380B962C();
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEBD38);
  }

  return result;
}

unint64_t sub_2380B962C()
{
  result = qword_27DEEBD48;
  if (!qword_27DEEBD48)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBD50, &qword_23815AE48);
    v4[0] = sub_2380711D4(&qword_27DEEBD58, &qword_27DEEBD60, &qword_23815AE50, MEMORY[0x277CE1138]);
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEBD48);
  }

  return result;
}

uint64_t sub_2380B9700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _DDListNodeView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2380B9764()
{
  v1 = type metadata accessor for _DDListNodeView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for _DDNodeViewModel(0);
  if (!(*(*(v6 - 1) + 48))(v0 + v3, 1, v6))
  {
    v7 = sub_2381527EC();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    v8 = v5 + v6[5];
    sub_238070070(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32));

    v9 = v6[7];
    v10 = v0;
    v11 = v4;
    v12 = sub_23815278C();
    v13 = *(*(v12 - 8) + 8);
    v13(v5 + v9, v12);
    v13(v5 + v6[8], v12);
    v14 = v6[9];
    v15 = sub_238152BAC();
    v16 = v5 + v14;
    v4 = v11;
    v0 = v10;
    v3 = (v2 + 16) & ~v2;
    (*(*(v15 - 8) + 8))(v16, v15);
  }

  v17 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_238153A2C();
    (*(*(v18 - 8) + 8))(v5 + v17, v18);
  }

  else
  {
  }

  v19 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_238153A0C();
    (*(*(v20 - 8) + 8))(v5 + v19, v20);
  }

  else
  {
  }

  sub_2380700D8(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v21 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_2381537EC();
    (*(*(v22 - 8) + 8))(v5 + v21, v22);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7, v23);
}

unint64_t sub_2380B9BA4()
{
  result = qword_27DEEBD80;
  if (!qword_27DEEBD80)
  {
    result = swift_getWitnessTable(byte_23815ADC4, &type metadata for _DDListItemView, v0, v1);
    atomic_store(result, &qword_27DEEBD80);
  }

  return result;
}

unint64_t sub_2380B9BF8()
{
  result = qword_27DEEA3C8;
  if (!qword_27DEEA3C8)
  {
    v3 = sub_238153A6C();
    result = swift_getWitnessTable(MEMORY[0x277CDDB08], v3, v0, v1);
    atomic_store(result, &qword_27DEEA3C8);
  }

  return result;
}

uint64_t sub_2380B9C50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2380B9CB8(uint64_t a1)
{
  v2 = type metadata accessor for _DDNodeViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2380B9D14()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBD78, &unk_23815AEB0);
  sub_238153A6C();
  sub_2380711D4(&qword_27DEEBD88, &qword_27DEEBD78, &unk_23815AEB0, MEMORY[0x277CDF028]);
  sub_2380B9BF8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2380B9DF0()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEBD90);
  __swift_project_value_buffer(v0, qword_27DEEBD90);
  v1 = _DDUICoreLog();
  return sub_23815294C();
}

uint64_t _DDNodeAskRequestDecorationViewModel.init(transferID:prompt:payloadItems:payloadURLItems:acceptActions:declineAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v78 = a7;
  v81 = a5;
  v80 = a4;
  v77 = a3;
  v76 = a2;
  v75 = a1;
  v79 = a8;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDA8, &qword_23815AEC0);
  v9 = *(v103 - 8);
  v10 = MEMORY[0x28223BE20](v103);
  v92 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v102 = &v74 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v74 - v14;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDB0, &qword_23815AEC8);
  v16 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = &v74 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDB8, &unk_23815AED0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v74 - v20;
  v104 = MEMORY[0x277D84F90];
  v22 = *(a6 + 16);
  v93 = v9;
  v101 = v22;
  if (v22)
  {
    v23 = 0;
    v100 = a6 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v98 = v19 + 88;
    v99 = v19 + 16;
    v97 = *MEMORY[0x277D54B60];
    v84 = (v19 + 8);
    v95 = (v19 + 96);
    v87 = *MEMORY[0x277D54B68];
    v83 = (v16 + 32);
    v82 = (v16 + 8);
    v96 = (v9 + 32);
    v86 = (v9 + 16);
    v24 = MEMORY[0x277D84F90];
    v85 = v9 + 8;
    v88 = v18;
    v89 = a6;
    v94 = v19;
    do
    {
      if (v23 >= *(a6 + 16))
      {
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
        goto LABEL_52;
      }

      (*(v19 + 16))(v21, v100 + *(v19 + 72) * v23, v18);
      v25 = (*(v19 + 88))(v21, v18);
      if (v25 == v97)
      {
        (*v95)(v21, v18);
        v26 = *v96;
        v27 = v103;
        (*v96)(v15, v21, v103);
        (*v86)(v102, v15, v27);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_2380BB6B4(0, *(v24 + 2) + 1, 1, v24);
        }

        v29 = *(v24 + 2);
        v28 = *(v24 + 3);
        if (v29 >= v28 >> 1)
        {
          v24 = sub_2380BB6B4((v28 > 1), v29 + 1, 1, v24);
        }

        v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDC0, &qword_23815E770) + 48);
        v31 = v93;
        v32 = v15;
        v33 = v15;
        v34 = v103;
        v93[1](v32, v103);
        *(v24 + 2) = v29 + 1;
        v35 = v34;
        v15 = v33;
        v26(&v24[((*(v31 + 80) + 32) & ~*(v31 + 80)) + v31[9] * v29], v102, v35);
        v104 = v24;
        v36 = sub_2381527EC();
        (*(*(v36 - 8) + 8))(&v21[v30], v36);
        v18 = v88;
        a6 = v89;
        v19 = v94;
      }

      else if (v25 == v87)
      {
        (*v95)(v21, v18);
        (*v83)(v90, v21, v91);
        v37 = sub_2381535BC();
        v38 = *(v37 + 16);
        v39 = *(v24 + 2);
        v40 = v39 + v38;
        if (__OFADD__(v39, v38))
        {
          goto LABEL_48;
        }

        v41 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v40 > *(v24 + 3) >> 1)
        {
          if (v39 <= v40)
          {
            v43 = v39 + v38;
          }

          else
          {
            v43 = v39;
          }

          v24 = sub_2380BB6B4(isUniquelyReferenced_nonNull_native, v43, 1, v24);
        }

        v19 = v94;
        if (*(v41 + 16))
        {
          if ((*(v24 + 3) >> 1) - *(v24 + 2) < v38)
          {
            goto LABEL_50;
          }

          swift_arrayInitWithCopy();

          if (v38)
          {
            v44 = *(v24 + 2);
            v45 = __OFADD__(v44, v38);
            v46 = v44 + v38;
            if (v45)
            {
              goto LABEL_51;
            }

            *(v24 + 2) = v46;
          }
        }

        else
        {

          if (v38)
          {
            goto LABEL_49;
          }
        }

        v104 = v24;
        v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDC8, &qword_23815AEE0) + 48);
        (*v82)(v90, v91);
        v52 = sub_2381527EC();
        (*(*(v52 - 8) + 8))(&v21[v51], v52);
      }

      else
      {
        if (qword_27DEEA070 != -1)
        {
          swift_once();
        }

        v47 = sub_23815293C();
        __swift_project_value_buffer(v47, qword_27DEEBD90);
        v48 = sub_23815291C();
        v49 = sub_2381550EC();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_238060000, v48, v49, "Unknown accept action type", v50, 2u);
          MEMORY[0x2383EA8A0](v50, -1, -1);
        }

        (*v84)(v21, v18);
      }

      ++v23;
    }

    while (v101 != v23);
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  v53 = *(v24 + 2);
  v21 = v93;
  if (!v53)
  {
    if (qword_27DEEA070 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_53;
  }

  v54 = 0;
  v55 = v92;
  do
  {
    if (v54 >= *(v24 + 2))
    {
      goto LABEL_47;
    }

    v56 = v103;
    (*(v21 + 2))(v55, &v24[((v21[80] + 32) & ~v21[80]) + *(v21 + 9) * v54], v103);
    v57 = sub_23815359C();
    (*(v21 + 1))(v55, v56);
    if (v57)
    {
      goto LABEL_44;
    }

    ++v54;
  }

  while (v53 != v54);
  while (1)
  {
    v54 = 0;
LABEL_44:
    v62 = type metadata accessor for _DDNodeAskRequestDecorationViewModel(0);
    if (v54 < *(v24 + 2))
    {
      break;
    }

LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
LABEL_40:
    v58 = sub_23815293C();
    __swift_project_value_buffer(v58, qword_27DEEBD90);
    v59 = sub_23815291C();
    v60 = sub_2381550DC();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_238060000, v59, v60, "No prominent accept action found", v61, 2u);
      MEMORY[0x2383EA8A0](v61, -1, -1);
    }
  }

  v63 = v62;
  v64 = &v24[((v21[80] + 32) & ~v21[80]) + *(v21 + 9) * v54];
  v65 = v79;
  v66 = v103;
  (*(v21 + 2))(v79 + *(v62 + 32), v64, v103);
  v67 = v92;
  sub_2380BA8B0(v54, v92);
  (*(v21 + 1))(v67, v66);
  v68 = sub_2381536AC();
  (*(*(v68 - 8) + 32))(v65, v75, v68);
  v69 = (v65 + v63[5]);
  v70 = v77;
  *v69 = v76;
  v69[1] = v70;
  *(v65 + v63[9]) = v104;
  v71 = v63[10];
  v72 = sub_23815361C();
  result = (*(*(v72 - 8) + 32))(v65 + v71, v78, v72);
  *(v65 + v63[6]) = v80;
  *(v65 + v63[7]) = v81;
  return result;
}

uint64_t type metadata accessor for _DDNodeAskRequestDecorationViewModel(uint64_t a1)
{
  result = qword_27DEEBDD0;
  if (!qword_27DEEBDD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2380BA8B0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23811D2B8(v5);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDA8, &qword_23815AEC0);
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2380BA9C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23815321C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_2380BC598(&qword_27DEEBDE8, MEMORY[0x277D54A00], MEMORY[0x277D54A08]);
      v26 = sub_238154C3C();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_2380BC598(&qword_27DEEBE68, MEMORY[0x277D54A00], MEMORY[0x277D54A10]);
        v31 = sub_238154C7C();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2380BAD78(uint64_t a1, uint64_t a2)
{
  v4 = sub_2381526CC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_2380BC598(&qword_27DEEBDF8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      v26 = sub_238154C3C();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_2380BC598(&qword_27DEEBE60, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
        v31 = sub_238154C7C();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2380BB128(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDA8, &qword_23815AEC0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_2380BC534();
    v21 = sub_238154C7C();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

char *sub_2380BB31C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBE80, &qword_23815AF88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2380BB438(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBE30, &qword_23815AF50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2380BB558(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEACC8, &qword_238158830);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2380BB6B4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBE70, &qword_23815AF78);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDA8, &qword_23815AEC0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDA8, &qword_23815AEC0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2380BB8A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBE78, &qword_23815AF80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2380BB9A8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBE40, &qword_23815AF60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2380BBB04(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t _s17DeviceDiscoveryUI36_DDNodeAskRequestDecorationViewModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_2381527AC())
  {
    v4 = type metadata accessor for _DDNodeAskRequestDecorationViewModel(0);
    v5 = v4[5];
    v6 = *(a1 + v5);
    v7 = *(a1 + v5 + 8);
    v8 = (a2 + v5);
    v9 = v6 == *v8 && v7 == v8[1];
    if (v9 || (sub_2381555CC()) && (sub_2380BA9C8(*(a1 + v4[6]), *(a2 + v4[6])) & 1) != 0 && (sub_2380BAD78(*(a1 + v4[7]), *(a2 + v4[7])))
    {
      sub_23815323C();
      v10 = MEMORY[0x277D54A20];
      sub_2380BC598(&qword_27DEEBE08, MEMORY[0x277D54A20], MEMORY[0x277D54A38]);
      sub_2380BC598(&qword_27DEEBE10, v10, MEMORY[0x277D54A28]);
      sub_2380BC598(&qword_27DEEBE18, v10, MEMORY[0x277D54A30]);
      if (sub_23815357C() & 1) != 0 && (sub_2380BB128(*(a1 + v4[9]), *(a2 + v4[9])))
      {

        JUMPOUT(0x2383E7C30);
      }
    }
  }

  return 0;
}

uint64_t sub_2380BBE9C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2381536AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDA8, &qword_23815AEC0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v15 = sub_23815361C();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_2380BC034(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_2381536AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDA8, &qword_23815AEC0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = sub_23815361C();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

void sub_2380BC1B8(uint64_t a1)
{
  sub_2381536AC();
  if (v1 <= 0x3F)
  {
    sub_2380BC2A4(319);
    if (v2 <= 0x3F)
    {
      sub_2380BC338(319);
      if (v3 <= 0x3F)
      {
        sub_2380BC3CC(319);
        if (v4 <= 0x3F)
        {
          sub_2380BC4D0(319);
          if (v5 <= 0x3F)
          {
            sub_23815361C();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2380BC2A4(uint64_t a1)
{
  if (!qword_27DEEBDE0)
  {
    sub_23815321C();
    sub_2380BC598(&qword_27DEEBDE8, MEMORY[0x277D54A00], MEMORY[0x277D54A08]);
    v1 = sub_23815504C();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEEBDE0);
    }
  }
}

void sub_2380BC338(uint64_t a1)
{
  if (!qword_27DEEBDF0)
  {
    sub_2381526CC();
    sub_2380BC598(&qword_27DEEBDF8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    v1 = sub_23815504C();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEEBDF0);
    }
  }
}

void sub_2380BC3CC(uint64_t a1)
{
  if (!qword_27DEEBE00)
  {
    sub_23815323C();
    v1 = MEMORY[0x277D54A20];
    sub_2380BC598(&qword_27DEEBE08, MEMORY[0x277D54A20], MEMORY[0x277D54A38]);
    sub_2380BC598(&qword_27DEEBE10, v1, MEMORY[0x277D54A28]);
    sub_2380BC598(&qword_27DEEBE18, v1, MEMORY[0x277D54A30]);
    v2 = sub_2381535AC();
    if (!v3)
    {
      atomic_store(v2, &qword_27DEEBE00);
    }
  }
}

void sub_2380BC4D0(uint64_t a1)
{
  if (!qword_27DEEBE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBDA8, &qword_23815AEC0);
    v1 = sub_238154F2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEEBE20);
    }
  }
}

unint64_t sub_2380BC534()
{
  result = qword_27DEEBE58;
  if (!qword_27DEEBE58)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBDA8, &qword_23815AEC0);
    result = swift_getWitnessTable(MEMORY[0x277D54B58], v3, v0, v1);
    atomic_store(result, &qword_27DEEBE58);
  }

  return result;
}

uint64_t sub_2380BC598(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_2380BC5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_23815568C();
  sub_238154C5C();
  v6 = sub_2381556BC();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_2381555CC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2380BC6D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_238154B2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_2380BD1D8(&qword_27DEEBE90, MEMORY[0x277CE3928]), v7 = sub_238154C3C(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_2380BD1D8(&qword_27DEEBE98, MEMORY[0x277CE3930]);
      v15 = sub_238154C7C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t static DDDevicePairingViewController.isSupported(_:)()
{
  v0 = sub_238154B2C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_238154B1C();
  (*(v1 + 104))(v3, *MEMORY[0x277CE3920], v0);
  v5 = sub_2380BC6D8(v3, v4);

  (*(v1 + 8))(v3, v0);
  return v5 & 1;
}

void *DDDevicePairingViewController.init(listenerProvider:access:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_2380BCB50(a1, v15);
  v6 = type metadata accessor for DDDeviceAdvertiserSceneViewController(0, v5);
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC17DeviceDiscoveryUI37DDDeviceAdvertiserSceneViewController_hostingController] = 0;
  sub_2380BCB50(v15, &v7[OBJC_IVAR____TtC17DeviceDiscoveryUI37DDDeviceAdvertiserSceneViewController_listenerProvider]);
  v14.receiver = v7;
  v14.super_class = v6;
  v8 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
  sub_2380B3FC8();

  __swift_destroy_boxed_opaque_existential_1(v15);
  *&v2[OBJC_IVAR____TtC17DeviceDiscoveryUI29DDDevicePairingViewController_childViewController] = v8;
  if (sub_2380BDBF0(v9, v10))
  {
    v13.receiver = v2;
    v13.super_class = ObjectType;
    v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v11;
  }

  else
  {
    result = sub_2381554EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_2380BCB50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

Swift::Void __swiftcall DDDevicePairingViewController.viewDidLoad()()
{
  v40.receiver = v0;
  v40.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v40, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC17DeviceDiscoveryUI29DDDevicePairingViewController_childViewController];
  [v0 addChildViewController_];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  v4 = [v1 view];
  if (!v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4;
  [v3 addSubview_];

  [v1 didMoveToParentViewController_];
  v6 = [v1 view];
  if (!v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = v6;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC040, &unk_23815AF90);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_23815A9C0;
  v9 = [v1 view];
  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [v9 topAnchor];

  v12 = [v0 view];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12;
  v14 = [v12 topAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(v8 + 32) = v15;
  v16 = [v1 view];
  if (!v16)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = v16;
  v18 = [v16 bottomAnchor];

  v19 = [v0 view];
  if (!v19)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v20 = v19;
  v21 = [v19 bottomAnchor];

  v22 = [v18 constraintEqualToAnchor_];
  *(v8 + 40) = v22;
  v23 = [v1 view];
  if (!v23)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v24 = v23;
  v25 = [v23 leadingAnchor];

  v26 = [v0 view];
  if (!v26)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v27 = v26;
  v28 = [v26 leadingAnchor];

  v29 = [v25 constraintEqualToAnchor_];
  *(v8 + 48) = v29;
  v30 = [v1 view];
  if (!v30)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v31 = v30;
  v32 = [v30 trailingAnchor];

  v33 = [v0 view];
  if (v33)
  {
    v34 = v33;
    v35 = objc_opt_self();
    v36 = [v34 trailingAnchor];

    v37 = [v32 constraintEqualToAnchor_];
    *(v8 + 56) = v37;
    sub_2380B4930(0, v38);
    v39 = sub_238154ECC();

    [v35 activateConstraints_];

    return;
  }

LABEL_23:
  __break(1u);
}

id DDDevicePairingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_238154C8C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id DDDevicePairingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2380BD1D8(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_238154B2C();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2380BD248()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEBEA0);
  __swift_project_value_buffer(v0, qword_27DEEBEA0);
  v1 = _DDUICoreLog();
  return sub_23815294C();
}

void sub_2380BD2A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBEF0, &qword_23815B090);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22 - v1;
  v3 = sub_2381526CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DEEA078 != -1)
  {
    swift_once();
  }

  v7 = sub_23815293C();
  __swift_project_value_buffer(v7, qword_27DEEBEA0);
  v8 = sub_23815291C();
  v9 = sub_2381550FC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_238060000, v8, v9, "Tapped on Settings Link", v10, 2u);
    MEMORY[0x2383EA8A0](v10, -1, -1);
  }

  sub_2381526BC();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_2380BD8F0(v2);
    v11 = sub_23815291C();
    v12 = sub_2381550DC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_238060000, v11, v12, "Unable to create URL for settings pane", v13, 2u);
      MEMORY[0x2383EA8A0](v13, -1, -1);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v14 = [objc_opt_self() defaultWorkspace];
    if (v14)
    {
      v15 = v14;
      v16 = sub_23815269C();
      sub_2380EEBEC(MEMORY[0x277D84F90]);
      v17 = sub_238154C0C();

      v18 = [v15 openSensitiveURL:v16 withOptions:v17];

      if ((v18 & 1) == 0)
      {
        v19 = sub_23815291C();
        v20 = sub_2381550DC();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_238060000, v19, v20, "Failed to navigate to the Paired Devices pane in Settings", v21, 2u);
          MEMORY[0x2383EA8A0](v21, -1, -1);
        }
      }

      (*(v4 + 8))(v6, v3);
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_2380BD664(uint64_t a1)
{
  sub_2381542BC();
  swift_getKeyPath();
  sub_238153F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBEB8, &qword_23815B070);
  sub_2380BD72C();
  sub_23815441C();

  return result;
}

unint64_t sub_2380BD72C()
{
  result = qword_27DEEBEC0;
  if (!qword_27DEEBEC0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBEB8, &qword_23815B070);
    v4[0] = sub_2380BD7E4();
    v4[1] = sub_2380711D4(&qword_27DEEBEE0, &qword_27DEEBEE8, &qword_23815B088, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEBEC0);
  }

  return result;
}

unint64_t sub_2380BD7E4()
{
  result = qword_27DEEBEC8;
  if (!qword_27DEEBEC8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBED0, &unk_23815B078);
    v4[0] = sub_2380BD89C();
    v4[1] = sub_2380711D4(&unk_27DEEA9D0, &qword_27DEEA578, &unk_238157C80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEBEC8);
  }

  return result;
}

unint64_t sub_2380BD89C()
{
  result = qword_27DEEBED8;
  if (!qword_27DEEBED8)
  {
    result = swift_getWitnessTable(byte_23815F308, &type metadata for HighlightedStringView, v0, v1);
    atomic_store(result, &qword_27DEEBED8);
  }

  return result;
}

uint64_t sub_2380BD8F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBEF0, &qword_23815B090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2380BD958()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBEB8, &qword_23815B070);
  sub_2380BD72C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2380BD9BC(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2380BDA68()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEBEF8);
  __swift_project_value_buffer(v0, qword_27DEEBEF8);
  return sub_23815292C();
}

void sub_2380BDAE8()
{
  v0 = sub_238154C8C();
  v1 = MGCopyAnswer();

  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    return;
  }

  v2 = sub_238154C8C();
  v3 = MGCopyAnswer();

  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  swift_dynamicCast();
}

uint64_t sub_2380BDBF0(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (!v3)
  {
    if (qword_27DEEA080 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_86;
  }

  v4 = sub_238154CCC();
  v6 = v5;

  v7 = [objc_opt_self() bundleRecordForCurrentProcess];
  if (!v7)
  {
    if (qword_27DEEA080 != -1)
    {
      swift_once();
    }

    v16 = sub_23815293C();
    __swift_project_value_buffer(v16, qword_27DEEBEF8);

    v8 = sub_23815291C();
    v17 = sub_2381550DC();

    if (!os_log_type_enabled(v8, v17))
    {

      goto LABEL_48;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v84 = v19;
    *v18 = 136315138;
    v20 = sub_238085EAC(v4, v6, &v84);

    *(v18 + 4) = v20;
    _os_log_impl(&dword_238060000, v8, v17, "Unable to get app record for %s", v18, 0xCu);
    v21 = __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x2383EA8A0](v19, -1, -1, v21);
    v15 = v18;
    goto LABEL_12;
  }

  v8 = v7;
  v9 = [v7 infoDictionary];
  v10 = sub_238154C8C();
  sub_23807A3F8(0, &qword_27DEEBF10, 0x277CBEAC0);
  v11 = [v9 objectForKey:v10 ofClass:swift_getObjCClassFromMetadata()];

  if (v11)
  {
    sub_23815534C();
    swift_unknownObjectRelease();
  }

  else
  {
    v82 = 0u;
    v83 = 0u;
  }

  v84 = v82;
  v85 = v83;
  if (!*(&v83 + 1))
  {
    sub_2380BE888(&v84);
LABEL_19:
    if (qword_27DEEA080 != -1)
    {
      swift_once();
    }

    v25 = sub_23815293C();
    __swift_project_value_buffer(v25, qword_27DEEBEF8);

    v26 = sub_23815291C();
    v27 = sub_2381550DC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v84 = v29;
      *v28 = 136315138;
      v30 = sub_238085EAC(v4, v6, &v84);

      *(v28 + 4) = v30;
      v31 = "Unable to get services for %s";
      goto LABEL_44;
    }

LABEL_46:

LABEL_47:

    goto LABEL_48;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBF20, &unk_23815B0A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v22 = [v8 entitlements];
  v23 = sub_238154C8C();
  sub_23807A3F8(0, &qword_27DEEBF28, 0x277CBEA60);
  v24 = [v22 objectForKey:v23 ofClass:swift_getObjCClassFromMetadata()];

  if (v24)
  {
    sub_23815534C();
    swift_unknownObjectRelease();
  }

  else
  {
    v82 = 0u;
    v83 = 0u;
  }

  v84 = v82;
  v85 = v83;
  if (!*(&v83 + 1))
  {

    sub_2380BE888(&v84);
    goto LABEL_40;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBB70, &qword_238159970);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_40:
    if (qword_27DEEA080 != -1)
    {
      swift_once();
    }

    v42 = sub_23815293C();
    __swift_project_value_buffer(v42, qword_27DEEBEF8);

    v26 = sub_23815291C();
    v27 = sub_2381550DC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v84 = v29;
      *v28 = 136315138;
      v43 = sub_238085EAC(v4, v6, &v84);

      *(v28 + 4) = v43;
      v31 = "Unable to get entitlements for %s";
LABEL_44:
      _os_log_impl(&dword_238060000, v26, v27, v31, v28, 0xCu);
      v44 = __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x2383EA8A0](v29, -1, -1, v44);
      v45 = v28;
LABEL_45:
      MEMORY[0x2383EA8A0](v45, -1, -1);
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v79 = "WiFiAwareServices";

  v80 = v81;
  v32 = v81 + 64;
  v33 = 1 << *(v81 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v81 + 64);
  v36 = (v33 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v37 = 0;
  while (v35)
  {
LABEL_35:
    v39 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    if (*(*(*(v81 + 56) + ((v37 << 9) | (8 * v39))) + 16))
    {

      sub_2380E6CD8(0x616873696C627550, 0xEB00000000656C62);
      v41 = v40;

      if (v41)
      {
        v78 = 0;
LABEL_50:

        v47 = 1 << *(v81 + 32);
        v48 = -1;
        if (v47 < 64)
        {
          v48 = ~(-1 << v47);
        }

        v49 = v48 & *(v81 + 64);
        v50 = (v47 + 63) >> 6;

        v51 = 0;
        while (1)
        {
          if (!v49)
          {
            while (1)
            {
              v52 = v51 + 1;
              if (__OFADD__(v51, 1))
              {
                goto LABEL_85;
              }

              if (v52 >= v50)
              {
                v56 = 1;
                goto LABEL_62;
              }

              v49 = *(v32 + 8 * v52);
              ++v51;
              if (v49)
              {
                v51 = v52;
                break;
              }
            }
          }

          v53 = __clz(__rbit64(v49));
          v49 &= v49 - 1;
          if (*(*(*(v81 + 56) + ((v51 << 9) | (8 * v53))) + 16))
          {

            sub_2380E6CD8(0x6269726373627553, 0xEC000000656C6261);
            v55 = v54;

            if (v55)
            {
              break;
            }
          }
        }

        v56 = 0;
LABEL_62:

        *&v84 = 0x6873696C627550;
        *(&v84 + 1) = 0xE700000000000000;
        MEMORY[0x28223BE20](v57);
        v77 = &v84;
        v58 = v80;
        v59 = sub_2380BD9BC(sub_2380BE8F0, v76, v80);
        v60 = v59;
        *&v84 = 0x6269726373627553;
        *(&v84 + 1) = 0xE900000000000065;
        MEMORY[0x28223BE20](v59);
        v77 = &v84;
        v61 = sub_2380BD9BC(sub_2380BE964, v76, v58);

        if (v60 & 1) != 0 || (v61)
        {
          if ((v78 | v60))
          {
            if ((v56 | v61))
            {
              if (qword_27DEEA080 != -1)
              {
                swift_once();
              }

              v69 = sub_23815293C();
              __swift_project_value_buffer(v69, qword_27DEEBEF8);
              v70 = sub_23815291C();
              v71 = sub_2381550FC();
              if (os_log_type_enabled(v70, v71))
              {
                v72 = swift_slowAlloc();
                *v72 = 0;
                _os_log_impl(&dword_238060000, v70, v71, "WiFi Aware entitlements validated.", v72, 2u);
                MEMORY[0x2383EA8A0](v72, -1, -1);
              }

              return 1;
            }

            if (qword_27DEEA080 != -1)
            {
              swift_once();
            }

            v74 = sub_23815293C();
            __swift_project_value_buffer(v74, qword_27DEEBEF8);
            v26 = sub_23815291C();
            v63 = sub_2381550DC();
            if (os_log_type_enabled(v26, v63))
            {
              v66 = swift_slowAlloc();
              v67 = swift_slowAlloc();
              *&v84 = v67;
              *v66 = 136315138;
              *(v66 + 4) = sub_238085EAC(0x6269726373627553, 0xE900000000000065, &v84);
              v68 = "Missing entitlement for Wi-Fi Aware Subscriber '%s'";
              goto LABEL_83;
            }
          }

          else
          {
            if (qword_27DEEA080 != -1)
            {
              swift_once();
            }

            v73 = sub_23815293C();
            __swift_project_value_buffer(v73, qword_27DEEBEF8);
            v26 = sub_23815291C();
            v63 = sub_2381550DC();
            if (os_log_type_enabled(v26, v63))
            {
              v66 = swift_slowAlloc();
              v67 = swift_slowAlloc();
              *&v84 = v67;
              *v66 = 136315138;
              *(v66 + 4) = sub_238085EAC(0x6873696C627550, 0xE700000000000000, &v84);
              v68 = "Missing entitlement for Wi-Fi Aware Publisher '%s'";
              goto LABEL_83;
            }
          }
        }

        else
        {
          if (qword_27DEEA080 != -1)
          {
            swift_once();
          }

          v62 = sub_23815293C();
          __swift_project_value_buffer(v62, qword_27DEEBEF8);
          v26 = sub_23815291C();
          v63 = sub_2381550DC();
          v64 = os_log_type_enabled(v26, v63);
          v65 = v79;
          if (v64)
          {
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            *&v84 = v67;
            *v66 = 136315138;
            *(v66 + 4) = sub_238085EAC(0xD00000000000001ELL, v65 | 0x8000000000000000, &v84);
            v68 = "Need at least Publish or Subscribe entitlement for '%s'";
LABEL_83:
            _os_log_impl(&dword_238060000, v26, v63, v68, v66, 0xCu);
            v75 = __swift_destroy_boxed_opaque_existential_1(v67);
            MEMORY[0x2383EA8A0](v67, -1, -1, v75);
            v45 = v66;
            goto LABEL_45;
          }
        }

        goto LABEL_47;
      }
    }
  }

  while (1)
  {
    v38 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v38 >= v36)
    {
      v78 = 1;
      goto LABEL_50;
    }

    v35 = *(v32 + 8 * v38);
    ++v37;
    if (v35)
    {
      v37 = v38;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  swift_once();
LABEL_6:
  v12 = sub_23815293C();
  __swift_project_value_buffer(v12, qword_27DEEBEF8);
  v8 = sub_23815291C();
  v13 = sub_2381550DC();
  if (os_log_type_enabled(v8, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_238060000, v8, v13, "Unable to get current bundle ID", v14, 2u);
    v15 = v14;
LABEL_12:
    MEMORY[0x2383EA8A0](v15, -1, -1);
  }

LABEL_48:

  return 0;
}

uint64_t sub_2380BE888(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBF18, &qword_23815B098);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2380BE90C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2381555CC() & 1;
  }
}

uint64_t sub_2380BE980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v29 = a2;
  v3 = sub_2381527EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v28 = sub_23815364C();
  v9 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v26 = v2;
  sub_238152A8C();

  v12 = v27;

  v13 = v30;
  if (*(v30 + 16) && (v14 = sub_2380E6AE8(v12), (v15 & 1) != 0))
  {
    v16 = v28;
    (*(v9 + 16))(v11, *(v13 + 56) + *(v9 + 72) * v14, v28);

    v17 = v29;
    (*(v9 + 32))(v29, v11, v16);
    v18 = v16;
    v19 = v17;
    v20 = 0;
  }

  else
  {

    v21 = sub_238154FBC();
    v20 = 1;
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
    (*(v4 + 16))(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v3);
    v22 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v23 = swift_allocObject();
    *(v23 + 2) = 0;
    *(v23 + 3) = 0;
    *(v23 + 4) = v26;
    (*(v4 + 32))(&v23[v22], &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

    sub_2380D2A4C(0, 0, v8, &unk_23815B6A0, v23);

    v18 = v28;
    v19 = v29;
  }

  return (*(v9 + 56))(v19, v20, 1, v18);
}

id sub_2380BECE0(uint64_t a1, uint64_t a2, double a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  result = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v11 = v22;
  if (*(v22 + 16) && (v12 = sub_2380E6BBC(a1, a2, a3), (v13 & 1) != 0))
  {
    v14 = *(v11 + 56) + 16 * v12;
    v15 = *v14;
    sub_2380B3E18(*v14, *(v14 + 8));

    return v15;
  }

  else
  {

    v16 = sub_238154FBC();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
    v17 = swift_allocObject();
    swift_weakInit();
    sub_238154F8C();

    v18 = sub_238154F7C();
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    v19[2] = v18;
    v19[3] = v20;
    v19[4] = v17;
    v19[5] = a1;
    v19[6] = a2;
    v19[7] = a3;

    sub_2380D2A4C(0, 0, v10, &unk_23815B4F8, v19);

    return 0;
  }
}

uint64_t sub_2380BEF4C()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEBF30);
  __swift_project_value_buffer(v0, qword_27DEEBF30);
  v1 = _DDUICoreLog();
  return sub_23815294C();
}

uint64_t sub_2380BEFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBBA8, &unk_23815A800);
  v5[8] = swift_task_alloc();
  v6 = sub_2381527EC();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2380BF0B4, 0, 0);
}

uint64_t sub_2380BF0B4()
{
  (*(v0[10] + 16))(v0[11], v0[7], v0[9]);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_2380BF174;
  v3 = v0[7];
  v2 = v0[8];

  return MEMORY[0x2821B5F70](v2, v3);
}

uint64_t sub_2380BF174()
{

  if (v0)
  {

    v1 = sub_2380BF3C8;
  }

  else
  {
    v1 = sub_2380BF28C;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2380BF28C()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = sub_23815364C();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = sub_238152A7C();
  sub_23809FA28(v2, v1);
  v4(v0 + 2, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2380BF3C8()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = sub_23815364C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = sub_238152A7C();
  sub_23809FA28(v2, v1);
  v4(v0 + 2, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2380BF504()
{
  v1 = OBJC_IVAR____TtC17DeviceDiscoveryUI23_DDAirDropMetadataCache__endpointMetadatas;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC088, &qword_23815B5D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_2380BF5E4(uint64_t a1)
{
  sub_2380AAE3C(319, &qword_27DEEBF68, &qword_27DEEBF70, &qword_23815BE80);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2380BF6F8()
{
  v1 = *(v0 + 8);
  sub_23815568C();
  if (v1)
  {
    MEMORY[0x2383E9CD0](1);
    sub_238154C5C();
  }

  else
  {
    MEMORY[0x2383E9CD0](0);
  }

  return sub_2381556BC();
}

uint64_t sub_2380BF768(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x2383E9CD0](0);
  }

  MEMORY[0x2383E9CD0](1);

  return sub_238154C5C();
}

uint64_t sub_2380BF7E0(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_23815568C();
  if (v2)
  {
    MEMORY[0x2383E9CD0](1);
    sub_238154C5C();
  }

  else
  {
    MEMORY[0x2383E9CD0](0);
  }

  return sub_2381556BC();
}

uint64_t sub_2380BF84C()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = 25965;
  }

  return v1;
}

uint64_t sub_2380BF890(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_2381555CC();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

uint64_t sub_2380BF8D4()
{
  sub_23815541C();
  MEMORY[0x2383E9410](0xD000000000000010, 0x8000000238162340);
  if (v0[1])
  {
    v1 = *v0;
    v2 = v0[1];
  }

  else
  {
    v2 = 0xE200000000000000;
    v1 = 25965;
  }

  MEMORY[0x2383E9410](v1, v2);

  MEMORY[0x2383E9410](32, 0xE100000000000000);
  v3 = sub_23815559C();
  MEMORY[0x2383E9410](v3);

  MEMORY[0x2383E9410](120, 0xE100000000000000);
  v4 = sub_23815559C();
  MEMORY[0x2383E9410](v4);

  MEMORY[0x2383E9410](64, 0xE100000000000000);
  v5 = sub_23815559C();
  MEMORY[0x2383E9410](v5);

  MEMORY[0x2383E9410](32, 0xE100000000000000);
  type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  sub_238153A2C();
  sub_2381554DC();
  MEMORY[0x2383E9410](46, 0xE100000000000000);
  sub_2381537EC();
  sub_2381554DC();
  MEMORY[0x2383E9410](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_2380BFADC()
{
  sub_23815568C();
  if (v0[1])
  {
    MEMORY[0x2383E9CD0](1);
    sub_238154C5C();
  }

  else
  {
    MEMORY[0x2383E9CD0](0);
  }

  MEMORY[0x2383E9CD0](v0[2]);
  MEMORY[0x2383E9CD0](v0[3]);
  MEMORY[0x2383E9CD0](v0[4]);
  type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  sub_238153A2C();
  sub_2380C8B98(&qword_27DEEC028, MEMORY[0x277CDFAA0], MEMORY[0x277CDFAA8]);
  sub_238154C4C();
  sub_2381537EC();
  sub_2380C8B98(&qword_27DEEC030, MEMORY[0x277CDF3E0], MEMORY[0x277CDF3F0]);
  sub_238154C4C();
  return sub_2381556BC();
}

uint64_t sub_2380BFC3C(uint64_t a1)
{
  if (v1[1])
  {
    MEMORY[0x2383E9CD0](1);
    sub_238154C5C();
  }

  else
  {
    MEMORY[0x2383E9CD0](0);
  }

  MEMORY[0x2383E9CD0](v1[2]);
  MEMORY[0x2383E9CD0](v1[3]);
  MEMORY[0x2383E9CD0](v1[4]);
  sub_238153A2C();
  sub_2380C8B98(&qword_27DEEC028, MEMORY[0x277CDFAA0], MEMORY[0x277CDFAA8]);
  sub_238154C4C();
  sub_2381537EC();
  sub_2380C8B98(&qword_27DEEC030, MEMORY[0x277CDF3E0], MEMORY[0x277CDF3F0]);
  return sub_238154C4C();
}

uint64_t sub_2380BFD78(uint64_t a1)
{
  sub_23815568C();
  if (v1[1])
  {
    MEMORY[0x2383E9CD0](1);
    sub_238154C5C();
  }

  else
  {
    MEMORY[0x2383E9CD0](0);
  }

  MEMORY[0x2383E9CD0](v1[2]);
  MEMORY[0x2383E9CD0](v1[3]);
  MEMORY[0x2383E9CD0](v1[4]);
  sub_238153A2C();
  sub_2380C8B98(&qword_27DEEC028, MEMORY[0x277CDFAA0], MEMORY[0x277CDFAA8]);
  sub_238154C4C();
  sub_2381537EC();
  sub_2380C8B98(&qword_27DEEC030, MEMORY[0x277CDF3E0], MEMORY[0x277CDF3F0]);
  sub_238154C4C();
  return sub_2381556BC();
}

void *sub_2380BFED8()
{
  swift_defaultActor_initialize();
  v0[14] = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v0[15] = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  v0[16] = [objc_opt_self() avatarImageRender];
  v1 = MEMORY[0x277D84F90];
  v0[17] = sub_2380F06E4(MEMORY[0x277D84F90]);
  v0[18] = sub_2380F08C8(v1);
  return v0;
}

uint64_t sub_2380BFF78(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  swift_beginAccess();
  v11 = *(v1 + 136);
  if (*(v11 + 16) && (v12 = sub_2380E6968(a1), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v15 = sub_238154FBC();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    v16 = swift_allocObject();
    swift_weakInit();
    sub_2380C90BC(a1, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
    v17 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v16;
    sub_2380C9188(v7, v18 + v17, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
    v14 = sub_2381351D8(0, 0, v10, &unk_23815B590, v18);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v2 + 136);
    *(v2 + 136) = 0x8000000000000000;
    sub_2380C7D30(v14, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 136) = v21;
    swift_endAccess();
  }

  return v14;
}

uint64_t sub_2380C0220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_2380C0244, 0, 0);
}

uint64_t sub_2380C0244()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_2380C03A4, Strong, 0);
  }

  else
  {
    v2 = sub_238152FBC();
    sub_2380C8B98(&qword_27DEEC018, MEMORY[0x277D548A0], MEMORY[0x277D548A8]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D54898], v2);
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_2380C03A4()
{
  sub_2380C0528(*(v0 + 56));
  *(v0 + 72) = 0;
  *(v0 + 80) = v2;
  *(v0 + 88) = v1;
  *(v0 + 96) = v3;

  return MEMORY[0x2822009F8](sub_2380C0438, 0, 0);
}

uint64_t sub_2380C0438()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 40);
  v5 = *(v0 + 80);

  *v2 = v1;
  *(v2 + 8) = vextq_s8(v5, v5, 8uLL);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2380C04C4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2380C0528(char *a1)
{
  v2 = v1;
  v80 = *MEMORY[0x277D85DE8];
  v4 = sub_238153A2C();
  v68 = *(v4 - 8);
  v69 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_2381537EC();
  v71 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v70 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  MEMORY[0x28223BE20](v72);
  v9 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DEEA088 != -1)
  {
    swift_once();
  }

  v10 = sub_23815293C();
  __swift_project_value_buffer(v10, qword_27DEEBF30);
  sub_2380C90BC(a1, v9, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
  v11 = sub_23815291C();
  v12 = sub_2381550FC();
  v13 = os_log_type_enabled(v11, v12);
  v67 = v6;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v78 = v15;
    *v14 = 136315138;
    v16 = sub_2380BF8D4();
    v18 = v17;
    sub_2380C8F60(v9);
    v19 = sub_238085EAC(v16, v18, &v78);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_238060000, v11, v12, "Generating contact avatar {key: %s}", v14, 0xCu);
    v20 = __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x2383EA8A0](v15, -1, -1, v20);
    MEMORY[0x2383EA8A0](v14, -1, -1);
  }

  else
  {

    sub_2380C8F60(v9);
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC040, &unk_23815AF90);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_23815B0B0;
  v23 = v2[16];
  *(v22 + 32) = [v23 descriptorForRequiredKeys];
  v24 = v2[15];
  *(v22 + 40) = [v24 descriptorForRequiredKeys];
  if (*(a1 + 1))
  {
    v25 = v2[14];
    v26 = sub_238154C8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECC00, &unk_23815B5A0);
    v27 = sub_238154ECC();

    v78 = 0;
    v28 = [v25 unifiedContactWithIdentifier:v26 keysToFetch:v27 error:&v78];

    v29 = v78;
    if (v28)
    {
      goto LABEL_8;
    }

LABEL_11:
    v35 = v29;
    sub_23815266C();

    swift_willThrow();
    return;
  }

  v33 = v2[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECC00, &unk_23815B5A0);
  v34 = sub_238154ECC();

  v78 = 0;
  v28 = [v33 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

  v29 = v78;
  if (!v28)
  {
    goto LABEL_11;
  }

LABEL_8:
  v65[3] = v21;
  v30 = v29;
  v31 = v28;
  [v31 mutableCopy];

  sub_23815534C();
  swift_unknownObjectRelease();
  sub_23807A3F8(0, &qword_27DEEC050, 0x277CBDB38);
  v32 = v73;
  sub_23815346C();
  if (v32)
  {
    __swift_destroy_boxed_opaque_existential_1(&v78);

    return;
  }

  __swift_destroy_boxed_opaque_existential_1(&v78);
  v36 = v76;
  v37 = sub_238154C8C();
  v73 = v36;
  [v36 setMiddleName_];

  v38 = [v24 stringFromContact_];
  if (v38)
  {
    v39 = v38;
    v40 = sub_238154CCC();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  v76 = v40;
  v77 = v42;
  v74 = 0;
  v75 = 0xE000000000000000;
  sub_23815541C();

  v74 = 0xD00000000000002FLL;
  v75 = 0x80000002381622C0;
  v43 = [v31 identifier];
  v44 = sub_238154CCC();
  v46 = v45;

  MEMORY[0x2383E9410](v44, v46);

  MEMORY[0x2383E9410](125, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECE00, &qword_23815AD70);
  sub_2381552FC();

  v65[1] = v78;
  v65[2] = v79;
  v47 = v71;
  v48 = v70;
  v49 = v66;
  (*(v71 + 16))(v70, &a1[*(v72 + 36)], v66);
  v50 = (*(v47 + 88))(v48, v49);
  if (v50 == *MEMORY[0x277CDF3D0])
  {
    v51 = 3;
    v53 = v68;
    v52 = v69;
    v54 = v67;
  }

  else
  {
    v53 = v68;
    v52 = v69;
    v54 = v67;
    if (v50 == *MEMORY[0x277CDF3C0])
    {
      v51 = 4;
    }

    else
    {
      (*(v71 + 8))(v70, v49);
      v51 = 3;
    }
  }

  (*(v53 + 16))(v54, &a1[*(v72 + 32)], v52);
  v55 = (*(v53 + 88))(v54, v52);
  if (v55 == *MEMORY[0x277CDFA88])
  {
    goto LABEL_24;
  }

  if (v55 != *MEMORY[0x277CDFA90])
  {
    (*(v53 + 8))(v54, v52);
LABEL_24:
    v56 = 0;
    goto LABEL_25;
  }

  v56 = 1;
LABEL_25:
  v57 = [objc_opt_self() scopeWithPointSize:v56 scale:1 rightToLeft:v51 style:*(a1 + 2) backgroundStyle:{*(a1 + 3), *(a1 + 4)}];
  v74 = v57;
  v78 = 0;
  v79 = 0xE000000000000000;
  sub_23815541C();

  v78 = 0xD00000000000002DLL;
  v79 = 0x80000002381622F0;
  v58 = sub_2380BF8D4();
  MEMORY[0x2383E9410](v58);

  MEMORY[0x2383E9410](125, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC060, &unk_23815B5B0);
  sub_2381552FC();

  v59 = v76;
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_2381590E0;
  *(v60 + 32) = v31;
  sub_23807A3F8(0, &qword_27DEEE300, 0x277CBDA58);
  v61 = v31;
  v62 = sub_238154ECC();

  v63 = [v23 avatarImageForContacts:v62 scope:v59];

  v74 = v63;
  v78 = 0;
  v79 = 0xE000000000000000;
  sub_23815541C();

  v78 = 0xD00000000000001ELL;
  v79 = 0x8000000238162320;
  v64 = sub_2380BF8D4();
  MEMORY[0x2383E9410](v64);

  MEMORY[0x2383E9410](125, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC070, &qword_238158CA8);
  sub_2381552FC();

  sub_23815466C();
}

uint64_t sub_2380C1008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  swift_beginAccess();
  v11 = *(v3 + 144);
  if (*(v11 + 16) && (v12 = sub_2380E6BBC(a1, a2, a3), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v15 = sub_238154FBC();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v16;
    v17[5] = a1;
    v17[6] = a2;
    v17[7] = a3;
    v14 = sub_238135490(0, 0, v10, &unk_23815B518, v17);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v4 + 144);
    *(v4 + 144) = 0x8000000000000000;
    sub_2380C7ED4(v14, a1, a2, a3, isUniquelyReferenced_nonNull_native, v19);
    *(v4 + 144) = v21;
    swift_endAccess();
  }

  return v14;
}

uint64_t sub_2380C1204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  return MEMORY[0x2822009F8](sub_2380C122C, 0, 0);
}

uint64_t sub_2380C122C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_2380C138C, Strong, 0);
  }

  else
  {
    v2 = sub_238152FBC();
    sub_2380C8B98(&qword_27DEEC018, MEMORY[0x277D548A0], MEMORY[0x277D548A8]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D54898], v2);
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_2380C138C()
{
  v0[11] = sub_2380C1470(v0[7], v0[8], v0[9]);
  v0[12] = 0;

  return MEMORY[0x2822009F8](sub_2380C1404, 0, 0);
}

uint64_t sub_2380C1404()
{
  v1 = v0[11];
  v2 = v0[5];

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_2380C1470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_27DEEA088 != -1)
  {
    swift_once();
  }

  v8 = sub_23815293C();
  __swift_project_value_buffer(v8, qword_27DEEBF30);
  v9 = sub_23815291C();
  v10 = sub_2381550FC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v13 = sub_2380C1610();
    v15 = v4;
    v16 = sub_238085EAC(v13, v14, &v20);

    *(v11 + 4) = v16;
    v4 = v15;
    _os_log_impl(&dword_238060000, v9, v10, "Generating placeholder {key: %s}", v11, 0xCu);
    v17 = __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x2383EA8A0](v12, -1, -1, v17);
    MEMORY[0x2383EA8A0](v11, -1, -1);
  }

  v18 = [*(v4 + 128) placeholderImageForSize:a1 scale:{a2, a3}];
  return sub_23815466C();
}

unint64_t sub_2380C1610()
{
  sub_23815541C();

  v0 = sub_23815559C();
  MEMORY[0x2383E9410](v0);

  MEMORY[0x2383E9410](120, 0xE100000000000000);
  v1 = sub_23815559C();
  MEMORY[0x2383E9410](v1);

  MEMORY[0x2383E9410](64, 0xE100000000000000);
  v2 = sub_23815559C();
  MEMORY[0x2383E9410](v2);

  MEMORY[0x2383E9410](93, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t sub_2380C1744()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2380C17A8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_23815568C();
  MEMORY[0x2383E9CD0](v1);
  MEMORY[0x2383E9CD0](v2);
  MEMORY[0x2383E9CD0](v3);
  return sub_2381556BC();
}

uint64_t sub_2380C1814()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x2383E9CD0](*v0);
  MEMORY[0x2383E9CD0](v1);
  return MEMORY[0x2383E9CD0](v2);
}

uint64_t sub_2380C185C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_23815568C();
  MEMORY[0x2383E9CD0](v2);
  MEMORY[0x2383E9CD0](v3);
  MEMORY[0x2383E9CD0](v4);
  return sub_2381556BC();
}

uint64_t sub_2380C1928()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  *(v0 + 24) = 0;
  type metadata accessor for _DDContactInfoCache.Loader(v3, v6);
  v7 = swift_allocObject();
  sub_2380BFED8();
  *(v1 + 16) = v7;
  v8 = MEMORY[0x277D84F90];
  v9 = sub_2380F09FC(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v17 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBFA8, &qword_23815B120);
  sub_238152A5C();
  swift_endAccess();
  v10 = sub_2380F0BF8(v8);
  swift_beginAccess();
  v17 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBFB8, &qword_23815B128);
  sub_238152A5C();
  swift_endAccess();
  v11 = sub_238154FBC();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  sub_238154F8C();

  v13 = sub_238154F7C();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v12;

  *(v1 + 24) = sub_2380D2A4C(0, 0, v5, &unk_23815B610, v14);

  return v1;
}

uint64_t sub_2380C1B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0D0, &qword_23815B618);
  v4[16] = swift_task_alloc();
  v5 = sub_2381551BC();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = sub_238154F8C();
  v4[21] = sub_238154F7C();
  v7 = sub_238154F3C();
  v4[22] = v7;
  v4[23] = v6;

  return MEMORY[0x2822009F8](sub_2380C1CA0, v7, v6);
}

uint64_t sub_2380C1CA0(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() defaultCenter];
  sub_2381551CC();

  sub_2381551AC();
  swift_beginAccess();
  swift_beginAccess();
  v2[24] = sub_238154F7C();
  v4 = sub_2380C8B98(&qword_27DEEC0D8, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v5 = swift_task_alloc();
  v2[25] = v5;
  *v5 = v2;
  v5[1] = sub_2380C1E08;
  v6 = v2[16];
  v7 = v2[17];

  return MEMORY[0x282200308](v6, v7, v4);
}

uint64_t sub_2380C1E08()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_238154F3C();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_2380C22BC;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_238154F3C();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_2380C1FA0;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_2380C1FA0()
{

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return MEMORY[0x2822009F8](sub_2380C2004, v1, v2);
}

uint64_t sub_2380C2004()
{
  v1 = v0[16];
  v2 = sub_23815257C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = *(Strong + 16);
      v0[27] = v6;

      return MEMORY[0x2822009F8](sub_2380C2348, v6, 0);
    }

    else
    {
      v7 = swift_weakLoadStrong();
      v0[28] = v7;
      if (v7)
      {
        v8 = swift_task_alloc();
        v0[29] = v8;
        *v8 = v0;
        v8[1] = sub_2380C26A4;

        return sub_2380C28E4(0xD00000000000001CLL, 0x8000000238162360);
      }

      else
      {
        sub_238071284(v0[16], &qword_27DEEC0D0, &qword_23815B618);
        v0[24] = sub_238154F7C();
        v9 = sub_2380C8B98(&qword_27DEEC0D8, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
        v10 = swift_task_alloc();
        v0[25] = v10;
        *v10 = v0;
        v10[1] = sub_2380C1E08;
        v11 = v0[16];
        v12 = v0[17];

        return MEMORY[0x282200308](v11, v12, v9);
      }
    }
  }
}

uint64_t sub_2380C22BC()
{
  *(v0 + 112) = *(v0 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_2380C2348()
{
  v13 = v0;
  if (qword_27DEEA088 != -1)
  {
    swift_once();
  }

  v1 = sub_23815293C();
  __swift_project_value_buffer(v1, qword_27DEEBF30);
  v2 = sub_23815291C();
  v3 = sub_2381550FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_238085EAC(0xD00000000000001CLL, 0x8000000238162360, &v12);
    _os_log_impl(&dword_238060000, v2, v3, "Clearning _DDContactInfoCache.Loader.tasks {reason: %s}", v4, 0xCu);
    v6 = __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x2383EA8A0](v5, -1, -1, v6);
    MEMORY[0x2383EA8A0](v4, -1, -1);
  }

  v7 = v0[27];
  swift_beginAccess();
  v8 = MEMORY[0x277D84F98];
  *(v7 + 136) = MEMORY[0x277D84F98];

  swift_beginAccess();
  *(v7 + 144) = v8;

  v9 = v0[22];
  v10 = v0[23];

  return MEMORY[0x2822009F8](sub_2380C2514, v9, v10);
}

uint64_t sub_2380C2514()
{
  Strong = swift_weakLoadStrong();
  v0[28] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[29] = v2;
    *v2 = v0;
    v2[1] = sub_2380C26A4;

    return sub_2380C28E4(0xD00000000000001CLL, 0x8000000238162360);
  }

  else
  {
    sub_238071284(v0[16], &qword_27DEEC0D0, &qword_23815B618);
    v0[24] = sub_238154F7C();
    v4 = sub_2380C8B98(&qword_27DEEC0D8, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
    v5 = swift_task_alloc();
    v0[25] = v5;
    *v5 = v0;
    v5[1] = sub_2380C1E08;
    v6 = v0[16];
    v7 = v0[17];

    return MEMORY[0x282200308](v6, v7, v4);
  }
}

uint64_t sub_2380C26A4()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return MEMORY[0x2822009F8](sub_2380C27E8, v3, v2);
}

uint64_t sub_2380C27E8()
{
  sub_238071284(v0[16], &qword_27DEEC0D0, &qword_23815B618);
  v0[24] = sub_238154F7C();
  v1 = sub_2380C8B98(&qword_27DEEC0D8, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_2380C1E08;
  v3 = v0[16];
  v4 = v0[17];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_2380C28E4(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0E0, &qword_23815B628);
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0E8, &qword_23815B630);
  v3[17] = swift_task_alloc();
  v3[18] = *(type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0) - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  sub_238154F8C();
  v3[21] = sub_238154F7C();
  v6 = sub_238154F3C();
  v3[22] = v6;
  v3[23] = v5;

  return MEMORY[0x2822009F8](sub_2380C2A9C, v6, v5);
}

uint64_t sub_2380C2A9C()
{
  v62 = v0;
  v1 = v0;
  if (qword_27DEEA088 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v2 = sub_23815293C();
    __swift_project_value_buffer(v2, qword_27DEEBF30);

    v3 = sub_23815291C();
    v4 = sub_2381550FC();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v1[9];
      v5 = v1[10];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v61 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_238085EAC(v6, v5, &v61);
      _os_log_impl(&dword_238060000, v3, v4, "Resetting contact info cache {reason: %s}", v7, 0xCu);
      v9 = __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x2383EA8A0](v8, -1, -1, v9);
      MEMORY[0x2383EA8A0](v7, -1, -1);
    }

    v56 = v1[14];
    v57 = v1[18];
    v59 = v1[12];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    v10 = v1[6];
    v11 = v10 + 64;
    v12 = -1;
    v13 = -1 << *(v10 + 32);
    if (-v13 < 64)
    {
      v12 = ~(-1 << -v13);
    }

    v14 = v12 & *(v10 + 64);
    v15 = (63 - v13) >> 6;

    v16 = 0;
    v53 = v15;
    v54 = v10 + 64;
    v58 = v10;
    v55 = v1;
    if (v14)
    {
      break;
    }

LABEL_8:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {
        v34 = v1[17];
        v36 = v1[12];
        v35 = v1[13];

        (*(v35 + 56))(v34, 1, 1, v36);
        goto LABEL_15;
      }

      v14 = *(v11 + 8 * v17);
      ++v16;
      if (v14)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_24:
    swift_once();
  }

  while (1)
  {
    v17 = v16;
LABEL_11:
    v19 = v1[15];
    v18 = v1[16];
    v20 = v1[14];
    v21 = __clz(__rbit64(v14)) | (v17 << 6);
    sub_2380C90BC(*(v10 + 48) + *(v57 + 72) * v21, v18, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
    v22 = *(v10 + 56) + 32 * v21;
    v23 = *v22;
    v24 = *(v22 + 8);
    v25 = *(v22 + 16);
    v26 = *(v22 + 24);
    v27 = v18 + *(v59 + 48);
    *v27 = v23;
    *(v27 + 8) = v24;
    *(v27 + 16) = v25;
    *(v27 + 24) = v26;
    sub_2380C92F8(v18, v19);
    v60 = v20;
    sub_2380C9368(v19, v20);
    v28 = v20 + *(v59 + 48);
    v29 = *v28;
    v30 = *(v28 + 8);
    v31 = *(v28 + 16);
    LOBYTE(v21) = *(v28 + 24);
    sub_2380B3F10(v23, v24, v25, v26);
    sub_2380B3F78(v29, v30, v31, v21);
    v32 = *(v56 + 8);

    sub_2380C8F60(v60);
    if (!v32)
    {
      break;
    }

    v1 = v55;
    v33 = v55[15];

    v14 &= v14 - 1;
    sub_238071284(v33, &qword_27DEEC0E0, &qword_23815B628);
    v16 = v17;
    v10 = v58;
    v15 = v53;
    v11 = v54;
    if (!v14)
    {
      goto LABEL_8;
    }
  }

  v1 = v55;
  v49 = v55[17];
  v50 = v55[15];
  v51 = v55[12];
  v52 = v55[13];

  sub_2380C92F8(v50, v49);
  (*(v52 + 56))(v49, 0, 1, v51);
LABEL_15:
  v37 = v1[17];
  v38 = v1[12];
  v39 = v1[13];

  if ((*(v39 + 48))(v37, 1, v38) == 1)
  {
    v40 = v1[17];

    sub_238071284(v40, &qword_27DEEC0E8, &qword_23815B630);
    v41 = sub_2380F09FC(MEMORY[0x277D84F90]);
    swift_getKeyPath();
    swift_getKeyPath();
    v1[7] = v41;

    sub_238152A9C();

    v42 = v1[1];

    return v42();
  }

  else
  {
    v44 = v1[19];
    v45 = v1[20];
    v46 = v1[17];
    v47 = v1[11];
    sub_2380B3F78(*(v46 + *(v59 + 48)), *(v46 + *(v59 + 48) + 8), *(v46 + *(v59 + 48) + 16), *(v46 + *(v59 + 48) + 24));
    sub_2380C9188(v46, v44, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
    sub_2380C9188(v44, v45, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
    v48 = *(v47 + 16);
    v1[24] = v48;

    return MEMORY[0x2822009F8](sub_2380C3038, v48, 0);
  }
}

uint64_t sub_2380C3038()
{
  v1 = sub_2380BFF78(*(v0 + 160));
  *(v0 + 200) = v1;
  v2 = swift_task_alloc();
  *(v0 + 208) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
  *v2 = v0;
  v2[1] = sub_2380C3110;
  v4 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v0 + 16, v1, &type metadata for _DDContactInfoCache.ContactInfo, v3, v4);
}

uint64_t sub_2380C3110()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return MEMORY[0x2822009F8](sub_2380C3254, v3, v2);
}

uint64_t sub_2380C3254()
{
  v1 = v0;
  v2 = *(v0 + 160);

  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0F0, &qword_23815B638);
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0F8, &qword_23815B640) - 8);
  v8 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_238157F20;
  v10 = v9 + v8;
  v11 = v9 + v8 + v7[14];
  sub_2380C90BC(v2, v10, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
  *v11 = v3;
  *(v11 + 8) = v4;
  *(v11 + 16) = v5;
  *(v11 + 24) = v6;
  sub_2380B3F10(v3, v4, v5, v6);
  v12 = sub_2380F09FC(v9);
  swift_setDeallocating();
  sub_238071284(v10, &qword_27DEEC0F8, &qword_23815B640);
  swift_deallocClassInstance();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v1 + 64) = v12;

  sub_238152A9C();
  sub_2380B3F78(v3, v4, v5, v6);
  sub_2380C8F60(v2);

  v13 = *(v1 + 8);

  return v13();
}

uint64_t sub_2380C34B0()
{
  if (*(v0 + 24))
  {

    sub_238154FCC();
  }

  *(v0 + 24) = 0;

  v1 = OBJC_IVAR____TtC17DeviceDiscoveryUI19_DDContactInfoCache__contactInfos;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC078, &qword_23815B5C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17DeviceDiscoveryUI19_DDContactInfoCache__placeholders;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC080, &qword_23815B5C8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_2380C3628(uint64_t a1)
{
  sub_2380AAE3C(319, &qword_27DEEBFA0, &qword_27DEEBFA8, &qword_23815B120);
  if (v1 <= 0x3F)
  {
    sub_2380AAE3C(319, &qword_27DEEBFB0, &qword_27DEEBFB8, &qword_23815B128);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t getEnumTagSinglePayload for _DDContactInfoCache.PlaceholderImageKey(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _DDContactInfoCache.PlaceholderImageKey(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_2380C37DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = sub_238153A2C();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 32);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_2381537EC();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2380C3920(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = sub_238153A2C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_2381537EC();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2380C3A64(uint64_t a1)
{
  result = sub_238153A2C();
  if (v2 <= 0x3F)
  {
    result = sub_2381537EC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2380C3B04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2380C3B54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2380C3BA8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2380C3BC0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_2380C3BF4()
{
  result = qword_27DEEBFD8;
  if (!qword_27DEEBFD8)
  {
    result = swift_getWitnessTable(byte_23815B204, &type metadata for _DDContactInfoCache.ContactInfo.Key.ContactIdentifier, v0, v1);
    atomic_store(result, &qword_27DEEBFD8);
  }

  return result;
}

unint64_t sub_2380C3C94()
{
  result = qword_27DEEBFE8;
  if (!qword_27DEEBFE8)
  {
    result = swift_getWitnessTable(byte_23815B324, &type metadata for _DDContactInfoCache.PlaceholderImageKey, v0, v1);
    atomic_store(result, &qword_27DEEBFE8);
  }

  return result;
}

void *sub_2380C3CE8(uint64_t *a1)
{
  v2 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v9 = v22;
  if (*(v22 + 16) && (v10 = sub_2380E6968(a1), (v11 & 1) != 0))
  {
    v12 = *(v9 + 56) + 32 * v10;
    v13 = *v12;
    sub_2380B3F10(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24));

    return v13;
  }

  else
  {

    v15 = sub_238154FBC();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    v16 = swift_allocObject();
    swift_weakInit();
    sub_2380C90BC(a1, &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
    sub_238154F8C();

    v17 = sub_238154F7C();
    v18 = (*(v3 + 80) + 40) & ~*(v3 + 80);
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    v19[2] = v17;
    v19[3] = v20;
    v19[4] = v16;
    sub_2380C9188(v5, v19 + v18, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);

    sub_2380D2A4C(0, 0, v8, &unk_23815B578, v19);

    return 0;
  }
}

uint64_t sub_2380C3FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  sub_238154F8C();
  v5[15] = sub_238154F7C();
  v7 = sub_238154F3C();
  v5[16] = v7;
  v5[17] = v6;

  return MEMORY[0x2822009F8](sub_2380C4060, v7, v6);
}

uint64_t sub_2380C4060()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 16);
    v0[19] = v2;

    return MEMORY[0x2822009F8](sub_2380C4134, v2, 0);
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_2380C4134()
{
  v1 = sub_2380BFF78(*(v0 + 112));
  *(v0 + 160) = v1;

  v2 = swift_task_alloc();
  *(v0 + 168) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
  *v2 = v0;
  v2[1] = sub_2380C4214;
  v4 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v0 + 48, v1, &type metadata for _DDContactInfoCache.ContactInfo, v3, v4);
}

uint64_t sub_2380C4214()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_2380C4358, v3, v2);
}

uint64_t sub_2380C4358()
{
  v11 = *(v0 + 112);

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2380B3F10(v1, v2, v3, v4);
  v10 = sub_238152A7C();
  v6 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v6;
  *v6 = 0x8000000000000000;
  sub_2380C8050(v1, v2, v3, v4, v11, isUniquelyReferenced_nonNull_native);
  *v6 = v12;
  v10(v0 + 16, 0);

  sub_2380B3F78(v1, v2, v3, v4);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2380C44C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  sub_238154F8C();
  v7[15] = sub_238154F7C();
  v9 = sub_238154F3C();
  v7[16] = v9;
  v7[17] = v8;

  return MEMORY[0x2822009F8](sub_2380C4560, v9, v8);
}

uint64_t sub_2380C4560()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 16);
    v0[19] = v2;

    return MEMORY[0x2822009F8](sub_2380C4634, v2, 0);
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_2380C4634()
{
  v1 = sub_2380C1008(v0[12], v0[13], v0[14]);
  v0[20] = v1;

  v2 = swift_task_alloc();
  v0[21] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
  *v2 = v0;
  v2[1] = sub_2380C4718;
  v4 = MEMORY[0x277CE1088];
  v5 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v0 + 9, v1, v4, v3, v5);
}

uint64_t sub_2380C4718()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_2380C485C, v3, v2);
}

uint64_t sub_2380C485C()
{
  v11 = *(v0 + 104);
  v12 = *(v0 + 112);
  v10 = *(v0 + 96);

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2380B3E18(v1, v2);
  v3 = sub_238152A7C();
  v5 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v5;
  *v5 = 0x8000000000000000;
  sub_2380C822C(v1, v2, v10, v11, v12, isUniquelyReferenced_nonNull_native, v7);
  *v5 = v13;
  v3(v0 + 16, 0);

  sub_2380B3E3C(v1, v2);

  v8 = *(v0 + 8);

  return v8();
}

void sub_2380C49C8(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a4 = v5;
}

uint64_t sub_2380C4A6C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_238152A9C();
}

uint64_t sub_2380C4B0C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7, v1);
}

uint64_t sub_2380C4B4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_238088780;

  return sub_2380C44C4(a1, v4, v5, v6, v7, v9, v8);
}

void sub_2380C4C20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC100, &qword_23815B648);
  v6 = sub_23815551C();
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
      v20 = 16 * (v17 | (v8 << 6));
      v30 = *(*(v5 + 56) + v20);
      v31 = *(*(v5 + 48) + v20);
      if ((v4 & 1) == 0)
      {
      }

      sub_23815568C();
      MEMORY[0x2383E9CE0](v31 >> 14);
      MEMORY[0x2383E9CE0](*(&v31 + 1) >> 14);
      v21 = sub_2381556BC();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
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

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      *(*(v7 + 48) + v16) = v31;
      *(*(v7 + 56) + v16) = v30;
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

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
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

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_2380C4ECC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0A0, &unk_23815B5E0);
  v36 = v4;
  v6 = sub_23815551C();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
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
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      sub_23815568C();
      sub_238154C5C();
      v26 = sub_2381556BC();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
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

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_2380C5170(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v54 = sub_2381536AC();
  v5 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TransferIDStatus(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _DDNodeDecoration(0);
  v57 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v61 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DecorationIdentifier(0);
  v55 = *(v12 - 8);
  v56 = v12;
  MEMORY[0x28223BE20](v12);
  v62 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC0B0, &unk_23815B5F0);
  v58 = v4;
  v15 = sub_23815551C();
  v16 = v15;
  if (*(v14 + 16))
  {
    v49 = v2;
    v17 = 0;
    v18 = (v14 + 64);
    v19 = 1 << *(v14 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v14 + 64);
    v22 = (v19 + 63) >> 6;
    v51 = (v5 + 32);
    v50 = (v5 + 8);
    v23 = v15 + 64;
    v24 = v14;
    v52 = v14;
    v25 = v62;
    while (v21)
    {
      v27 = __clz(__rbit64(v21));
      v28 = (v21 - 1) & v21;
LABEL_15:
      v31 = v27 | (v17 << 6);
      v32 = *(v24 + 48);
      v59 = *(v55 + 72);
      v60 = v28;
      v33 = v32 + v59 * v31;
      if (v58)
      {
        sub_2380C9188(v33, v25, type metadata accessor for DecorationIdentifier);
        v34 = *(v57 + 72);
        sub_2380C9188(*(v24 + 56) + v34 * v31, v61, type metadata accessor for _DDNodeDecoration);
      }

      else
      {
        sub_2380C90BC(v33, v25, type metadata accessor for DecorationIdentifier);
        v34 = *(v57 + 72);
        sub_2380C90BC(*(v24 + 56) + v34 * v31, v61, type metadata accessor for _DDNodeDecoration);
      }

      sub_23815568C();
      sub_2380C90BC(v25, v9, type metadata accessor for TransferIDStatus);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
      if ((*(*(v35 - 8) + 48))(v9, 1, v35) == 1)
      {
        MEMORY[0x2383E9CD0](0);
      }

      else
      {
        v36 = v9;
        v38 = v53;
        v37 = v54;
        (*v51)(v53, v36, v54);
        MEMORY[0x2383E9CD0](1);
        sub_2380C8B98(&qword_27DEEC0C0, MEMORY[0x277D54BD0], MEMORY[0x277D54BD8]);
        sub_238154C4C();
        v39 = v38;
        v9 = v36;
        v24 = v52;
        (*v50)(v39, v37);
      }

      sub_2381527EC();
      sub_2380C8B98(&qword_27DEEB990, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_238154C4C();
      v40 = sub_2381556BC();
      v41 = -1 << *(v16 + 32);
      v42 = v40 & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v23 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        v25 = v62;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v23 + 8 * v43);
          if (v47 != -1)
          {
            v26 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_7;
          }
        }

LABEL_40:
        __break(1u);
        return;
      }

      v26 = __clz(__rbit64((-1 << v42) & ~*(v23 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
      v25 = v62;
LABEL_7:
      *(v23 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      sub_2380C9188(v25, *(v16 + 48) + v59 * v26, type metadata accessor for DecorationIdentifier);
      sub_2380C9188(v61, *(v16 + 56) + v34 * v26, type metadata accessor for _DDNodeDecoration);
      ++*(v16 + 16);
      v21 = v60;
    }

    v29 = v17;
    while (1)
    {
      v17 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v17 >= v22)
      {
        break;
      }

      v30 = v18[v17];
      ++v29;
      if (v30)
      {
        v27 = __clz(__rbit64(v30));
        v28 = (v30 - 1) & v30;
        goto LABEL_15;
      }
    }

    if ((v58 & 1) == 0)
    {

      v3 = v49;
      goto LABEL_38;
    }

    v48 = 1 << *(v24 + 32);
    v3 = v49;
    if (v48 >= 64)
    {
      bzero(v18, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v48;
    }

    *(v52 + 16) = 0;
  }

LABEL_38:
  *v3 = v16;
}

void sub_2380C5840(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2381527EC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0A8, &qword_23815C170);
  v41 = v4;
  v10 = sub_23815551C();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v37 = v2;
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
    v38 = (v6 + 16);
    v39 = v6;
    v42 = (v6 + 32);
    v18 = v10 + 64;
    v40 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v43 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v41)
      {
        (*v42)(v44, v26, v5);
      }

      else
      {
        (*v38)(v44, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      sub_2380C8B98(&qword_27DEEB990, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v28 = sub_238154C3C();
      v29 = -1 << *(v11 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v42)((*(v11 + 48) + v25 * v19), v44, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v39;
      v9 = v40;
      v16 = v43;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_2380C5C00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v57 = a3(0);
  v10 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - v11;
  v12 = sub_2381527EC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v58 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v52 = v9;
  v16 = sub_23815551C();
  v17 = v16;
  if (*(v15 + 16))
  {
    v18 = 0;
    v19 = (v15 + 64);
    v20 = 1 << *(v15 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v13;
    v23 = v21 & *(v15 + 64);
    v24 = (v20 + 63) >> 6;
    v48 = (v22 + 16);
    v49 = v22;
    v46 = v5;
    v47 = v10 + 16;
    v50 = v15;
    v51 = v10;
    v53 = (v10 + 32);
    v54 = (v22 + 32);
    v25 = v16 + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_15:
      v30 = v27 | (v18 << 6);
      v31 = *(v15 + 48);
      v55 = *(v22 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v12);
        v33 = *(v15 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v12);
        v35 = *(v15 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      sub_2380C8B98(&qword_27DEEB990, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v36 = sub_238154C3C();
      v37 = -1 << *(v17 + 32);
      v38 = v36 & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v25 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v25 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v25 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v17 + 48) + v55 * v26), v58, v12);
      (*v53)(*(v17 + 56) + v34 * v26, v56, v57);
      ++*(v17 + 16);
      v22 = v49;
      v15 = v50;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v18 >= v24)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v52 & 1) == 0)
    {

      v8 = v46;
      goto LABEL_34;
    }

    v44 = 1 << *(v15 + 32);
    v8 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v15 + 16) = 0;
  }

LABEL_34:
  *v8 = v17;
}