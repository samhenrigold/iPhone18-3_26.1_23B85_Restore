unsigned __int8 *sub_240FEA0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  v62 = a2;

  result = sub_241046C68();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_240FE875C(result, v5);
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
      result = sub_2410470B8();
      v7 = v60;
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
                    goto LABEL_125;
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
                goto LABEL_124;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_124;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_125;
          }

          goto LABEL_64;
        }

LABEL_124:
        v17 = 0;
        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = 0;
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

        while (1)
        {
          v31 = *result;
          if (v31 < 0x30 || v31 >= v28)
          {
            if (v31 < 0x41 || v31 >= v29)
            {
              v17 = 0;
              if (v31 < 0x61 || v31 >= v30)
              {
                goto LABEL_125;
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

          v33 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v33 + (v31 + v32);
          if (__OFADD__(v33, (v31 + v32)))
          {
            goto LABEL_124;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
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
                  goto LABEL_125;
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
              goto LABEL_124;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_124;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_64:
        v17 = 0;
LABEL_125:

        return v17;
      }

      goto LABEL_124;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v36 = HIBYTE(v5) & 0xF;
  v61 = v6;
  v62 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v27 = 0;
        v53 = a3 + 48;
        v54 = a3 + 55;
        v55 = a3 + 87;
        if (a3 > 10)
        {
          v53 = 58;
        }

        else
        {
          v55 = 97;
          v54 = 65;
        }

        v56 = &v61;
        while (1)
        {
          v57 = *v56;
          if (v57 < 0x30 || v57 >= v53)
          {
            if (v57 < 0x41 || v57 >= v54)
            {
              v17 = 0;
              if (v57 < 0x61 || v57 >= v55)
              {
                goto LABEL_125;
              }

              v58 = -87;
            }

            else
            {
              v58 = -55;
            }
          }

          else
          {
            v58 = -48;
          }

          v59 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v59 + (v57 + v58);
          if (__OFADD__(v59, (v57 + v58)))
          {
            goto LABEL_124;
          }

          v56 = (v56 + 1);
          if (!--v36)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v27 = 0;
        v38 = a3 + 48;
        v39 = a3 + 55;
        v40 = a3 + 87;
        if (a3 > 10)
        {
          v38 = 58;
        }

        else
        {
          v40 = 97;
          v39 = 65;
        }

        v41 = &v61 + 1;
        while (1)
        {
          v42 = *v41;
          if (v42 < 0x30 || v42 >= v38)
          {
            if (v42 < 0x41 || v42 >= v39)
            {
              v17 = 0;
              if (v42 < 0x61 || v42 >= v40)
              {
                goto LABEL_125;
              }

              v43 = -87;
            }

            else
            {
              v43 = -55;
            }
          }

          else
          {
            v43 = -48;
          }

          v44 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v44 - (v42 + v43);
          if (__OFSUB__(v44, (v42 + v43)))
          {
            goto LABEL_124;
          }

          ++v41;
          if (!--v37)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    goto LABEL_128;
  }

  if (v36)
  {
    v45 = v36 - 1;
    if (v45)
    {
      v27 = 0;
      v46 = a3 + 48;
      v47 = a3 + 55;
      v48 = a3 + 87;
      if (a3 > 10)
      {
        v46 = 58;
      }

      else
      {
        v48 = 97;
        v47 = 65;
      }

      v49 = &v61 + 1;
      do
      {
        v50 = *v49;
        if (v50 < 0x30 || v50 >= v46)
        {
          if (v50 < 0x41 || v50 >= v47)
          {
            v17 = 0;
            if (v50 < 0x61 || v50 >= v48)
            {
              goto LABEL_125;
            }

            v51 = -87;
          }

          else
          {
            v51 = -55;
          }
        }

        else
        {
          v51 = -48;
        }

        v52 = v27 * a3;
        if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
        {
          goto LABEL_124;
        }

        v27 = v52 + (v50 + v51);
        if (__OFADD__(v52, (v50 + v51)))
        {
          goto LABEL_124;
        }

        ++v49;
        --v45;
      }

      while (v45);
LABEL_123:
      v17 = v27;
      goto LABEL_125;
    }

    goto LABEL_124;
  }

LABEL_130:
  __break(1u);
  return result;
}

unsigned __int8 *sub_240FEA634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_241046C68();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_240FE875C(result, v5);
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
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2410470B8();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
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
            LOBYTE(v13) = 0;
            v24 = result + 1;
            v15 = 1;
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
                    goto LABEL_126;
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

              v27 = v13 * a3;
              if ((v27 & 0xFF00) != 0)
              {
                goto LABEL_125;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 >> 8))
              {
                goto LABEL_125;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_126;
          }

          goto LABEL_65;
        }

LABEL_125:
        v18 = 0;
        v15 = 1;
        goto LABEL_126;
      }

      goto LABEL_130;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        LOBYTE(v28) = 0;
        v29 = a3 + 48;
        v30 = a3 + 55;
        v31 = a3 + 87;
        if (a3 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        v15 = 1;
        while (1)
        {
          v32 = *result;
          if (v32 < 0x30 || v32 >= v29)
          {
            if (v32 < 0x41 || v32 >= v30)
            {
              v18 = 0;
              if (v32 < 0x61 || v32 >= v31)
              {
                goto LABEL_126;
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

          v34 = v28 * a3;
          if ((v34 & 0xFF00) != 0)
          {
            goto LABEL_125;
          }

          v28 = v34 + (v32 + v33);
          if ((v28 >> 8))
          {
            goto LABEL_125;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
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
          LOBYTE(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_126;
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

            v19 = v13 * a3;
            if ((v19 & 0xFF00) != 0)
            {
              goto LABEL_125;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFFFF00) != 0)
            {
              goto LABEL_125;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_65:
        v18 = 0;
        v15 = 0;
LABEL_126:

        return (v18 | (v15 << 8));
      }

      goto LABEL_125;
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v37 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOBYTE(v28) = 0;
        v54 = a3 + 55;
        v55 = a3 + 87;
        v56 = a3 + 48;
        if (a3 > 10)
        {
          v56 = 58;
        }

        else
        {
          v55 = 97;
          v54 = 65;
        }

        v57 = &v62;
        v15 = 1;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v56)
          {
            if (v58 < 0x41 || v58 >= v54)
            {
              v18 = 0;
              if (v58 < 0x61 || v58 >= v55)
              {
                goto LABEL_126;
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

          v60 = v28 * a3;
          if ((v60 & 0xFF00) != 0)
          {
            goto LABEL_125;
          }

          v28 = v60 + (v58 + v59);
          if ((v28 >> 8))
          {
            goto LABEL_125;
          }

          v57 = (v57 + 1);
          if (!--v37)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOBYTE(v28) = 0;
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
        v15 = 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v18 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_126;
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

          v45 = v28 * a3;
          if ((v45 & 0xFF00) != 0)
          {
            goto LABEL_125;
          }

          v28 = v45 - (v43 + v44);
          if ((v28 & 0xFFFFFF00) != 0)
          {
            goto LABEL_125;
          }

          ++v42;
          if (!--v38)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    goto LABEL_129;
  }

  if (v37)
  {
    v46 = v37 - 1;
    if (v46)
    {
      LOBYTE(v28) = 0;
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
      v15 = 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v18 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_126;
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

        v53 = v28 * a3;
        if ((v53 & 0xFF00) != 0)
        {
          goto LABEL_125;
        }

        v28 = v53 + (v51 + v52);
        if ((v28 >> 8))
        {
          goto LABEL_125;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_124:
      v15 = 0;
      v18 = v28;
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_131:
  __break(1u);
  return result;
}

unsigned __int8 *sub_240FEABFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_241046C68();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_240FE875C(result, v5);
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
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2410470B8();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
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
            LOWORD(v13) = 0;
            v24 = result + 1;
            v15 = 1;
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
                    goto LABEL_126;
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

              v27 = v13 * a3;
              if ((v27 & 0xFFFF0000) != 0)
              {
                goto LABEL_125;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 & 0x10000) != 0)
              {
                goto LABEL_125;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_126;
          }

          goto LABEL_65;
        }

LABEL_125:
        v18 = 0;
        v15 = 1;
        goto LABEL_126;
      }

      goto LABEL_130;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        LOWORD(v28) = 0;
        v29 = a3 + 48;
        v30 = a3 + 55;
        v31 = a3 + 87;
        if (a3 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        v15 = 1;
        while (1)
        {
          v32 = *result;
          if (v32 < 0x30 || v32 >= v29)
          {
            if (v32 < 0x41 || v32 >= v30)
            {
              v18 = 0;
              if (v32 < 0x61 || v32 >= v31)
              {
                goto LABEL_126;
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

          v34 = v28 * a3;
          if ((v34 & 0xFFFF0000) != 0)
          {
            goto LABEL_125;
          }

          v28 = v34 + (v32 + v33);
          if ((v28 & 0x10000) != 0)
          {
            goto LABEL_125;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
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
          LOWORD(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_126;
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

            v19 = v13 * a3;
            if ((v19 & 0xFFFF0000) != 0)
            {
              goto LABEL_125;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFF0000) != 0)
            {
              goto LABEL_125;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_65:
        v18 = 0;
        v15 = 0;
LABEL_126:

        return (v18 | (v15 << 16));
      }

      goto LABEL_125;
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v37 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOWORD(v28) = 0;
        v54 = a3 + 55;
        v55 = a3 + 87;
        v56 = a3 + 48;
        if (a3 > 10)
        {
          v56 = 58;
        }

        else
        {
          v55 = 97;
          v54 = 65;
        }

        v57 = &v62;
        v15 = 1;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v56)
          {
            if (v58 < 0x41 || v58 >= v54)
            {
              v18 = 0;
              if (v58 < 0x61 || v58 >= v55)
              {
                goto LABEL_126;
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

          v60 = v28 * a3;
          if ((v60 & 0xFFFF0000) != 0)
          {
            goto LABEL_125;
          }

          v28 = v60 + (v58 + v59);
          if ((v28 & 0x10000) != 0)
          {
            goto LABEL_125;
          }

          v57 = (v57 + 1);
          if (!--v37)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOWORD(v28) = 0;
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
        v15 = 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v18 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_126;
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

          v45 = v28 * a3;
          if ((v45 & 0xFFFF0000) != 0)
          {
            goto LABEL_125;
          }

          v28 = v45 - (v43 + v44);
          if ((v28 & 0xFFFF0000) != 0)
          {
            goto LABEL_125;
          }

          ++v42;
          if (!--v38)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    goto LABEL_129;
  }

  if (v37)
  {
    v46 = v37 - 1;
    if (v46)
    {
      LOWORD(v28) = 0;
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
      v15 = 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v18 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_126;
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

        v53 = v28 * a3;
        if ((v53 & 0xFFFF0000) != 0)
        {
          goto LABEL_125;
        }

        v28 = v53 + (v51 + v52);
        if ((v28 & 0x10000) != 0)
        {
          goto LABEL_125;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_124:
      v15 = 0;
      v18 = v28;
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_131:
  __break(1u);
  return result;
}

unsigned __int8 *sub_240FEB1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = sub_241046C68();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_240FE875C(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
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
      result = sub_2410470B8();
      v7 = v68;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_128;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_127;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_127;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_128;
          }

          goto LABEL_66;
        }

LABEL_127:
        v18 = 0;
        v15 = 1;
        goto LABEL_128;
      }

      goto LABEL_132;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = 0;
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        v15 = 1;
        while (1)
        {
          v35 = *result;
          if (v35 < 0x30 || v35 >= v32)
          {
            if (v35 < 0x41 || v35 >= v33)
            {
              v18 = 0;
              if (v35 < 0x61 || v35 >= v34)
              {
                goto LABEL_128;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v37 = v31 * a3;
          if ((v37 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_127;
          }

          v38 = v35 + v36;
          v21 = __CFADD__(v37, v38);
          v31 = v37 + v38;
          if (v21)
          {
            goto LABEL_127;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_126;
          }
        }
      }

      goto LABEL_127;
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
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_128;
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

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_127;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_127;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_128:

        LOBYTE(v69) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_127;
    }

    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v41 = HIBYTE(v5) & 0xF;
  v69 = v6;
  v70 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v31 = 0;
        v60 = a3 + 55;
        v61 = a3 + 87;
        v62 = a3 + 48;
        if (a3 > 10)
        {
          v62 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v63 = &v69;
        v15 = 1;
        while (1)
        {
          v64 = *v63;
          if (v64 < 0x30 || v64 >= v62)
          {
            if (v64 < 0x41 || v64 >= v60)
            {
              v18 = 0;
              if (v64 < 0x61 || v64 >= v61)
              {
                goto LABEL_128;
              }

              v65 = -87;
            }

            else
            {
              v65 = -55;
            }
          }

          else
          {
            v65 = -48;
          }

          v66 = v31 * a3;
          if ((v66 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_127;
          }

          v67 = v64 + v65;
          v21 = __CFADD__(v66, v67);
          v31 = v66 + v67;
          if (v21)
          {
            goto LABEL_127;
          }

          v63 = (v63 + 1);
          if (!--v41)
          {
            goto LABEL_126;
          }
        }
      }

      goto LABEL_127;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v31 = 0;
        v43 = a3 + 48;
        v44 = a3 + 55;
        v45 = a3 + 87;
        if (a3 > 10)
        {
          v43 = 58;
        }

        else
        {
          v45 = 97;
          v44 = 65;
        }

        v46 = &v69 + 1;
        v15 = 1;
        while (1)
        {
          v47 = *v46;
          if (v47 < 0x30 || v47 >= v43)
          {
            if (v47 < 0x41 || v47 >= v44)
            {
              v18 = 0;
              if (v47 < 0x61 || v47 >= v45)
              {
                goto LABEL_128;
              }

              v48 = -87;
            }

            else
            {
              v48 = -55;
            }
          }

          else
          {
            v48 = -48;
          }

          v49 = v31 * a3;
          if ((v49 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_127;
          }

          v50 = v47 + v48;
          v21 = v49 >= v50;
          v31 = v49 - v50;
          if (!v21)
          {
            goto LABEL_127;
          }

          ++v46;
          if (!--v42)
          {
            goto LABEL_126;
          }
        }
      }

      goto LABEL_127;
    }

    goto LABEL_131;
  }

  if (v41)
  {
    v51 = v41 - 1;
    if (v51)
    {
      v31 = 0;
      v52 = a3 + 48;
      v53 = a3 + 55;
      v54 = a3 + 87;
      if (a3 > 10)
      {
        v52 = 58;
      }

      else
      {
        v54 = 97;
        v53 = 65;
      }

      v55 = &v69 + 1;
      v15 = 1;
      do
      {
        v56 = *v55;
        if (v56 < 0x30 || v56 >= v52)
        {
          if (v56 < 0x41 || v56 >= v53)
          {
            v18 = 0;
            if (v56 < 0x61 || v56 >= v54)
            {
              goto LABEL_128;
            }

            v57 = -87;
          }

          else
          {
            v57 = -55;
          }
        }

        else
        {
          v57 = -48;
        }

        v58 = v31 * a3;
        if ((v58 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_127;
        }

        v59 = v56 + v57;
        v21 = __CFADD__(v58, v59);
        v31 = v58 + v59;
        if (v21)
        {
          goto LABEL_127;
        }

        ++v55;
        --v51;
      }

      while (v51);
LABEL_126:
      v15 = 0;
      v18 = v31;
      goto LABEL_128;
    }

    goto LABEL_127;
  }

LABEL_133:
  __break(1u);
  return result;
}

unsigned __int8 *sub_240FEB734(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_241046C68();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_240FE875C(result, v5);
    v39 = v38;

    v5 = v39;
    if ((v39 & 0x2000000000000000) == 0)
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
      result = sub_2410470B8();
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
                    goto LABEL_127;
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
                goto LABEL_126;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_47:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_65;
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
        v30 = 0;
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        while (1)
        {
          v34 = *result;
          if (v34 < 0x30 || v34 >= v31)
          {
            if (v34 < 0x41 || v34 >= v32)
            {
              v17 = 0;
              if (v34 < 0x61 || v34 >= v33)
              {
                goto LABEL_127;
              }

              v35 = -87;
            }

            else
            {
              v35 = -55;
            }
          }

          else
          {
            v35 = -48;
          }

          if (!is_mul_ok(v30, a3))
          {
            goto LABEL_126;
          }

          v36 = v30 * a3;
          v37 = v34 + v35;
          v20 = __CFADD__(v36, v37);
          v30 = v36 + v37;
          if (v20)
          {
            goto LABEL_126;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_125;
          }
        }
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

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_126;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_65:
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

  v40 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v40)
      {
        v30 = 0;
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
                goto LABEL_127;
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

          if (!is_mul_ok(v30, a3))
          {
            goto LABEL_126;
          }

          v65 = v30 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v30 = v65 + v66;
          if (v20)
          {
            goto LABEL_126;
          }

          v62 = (v62 + 1);
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v40)
    {
      v41 = v40 - 1;
      if (v41)
      {
        v30 = 0;
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
                goto LABEL_127;
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

          if (!is_mul_ok(v30, a3))
          {
            goto LABEL_126;
          }

          v48 = v30 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v30 = v48 - v49;
          if (!v20)
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v40)
  {
    v50 = v40 - 1;
    if (v50)
    {
      v30 = 0;
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
              goto LABEL_127;
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

        if (!is_mul_ok(v30, a3))
        {
          goto LABEL_126;
        }

        v57 = v30 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v30 = v57 + v58;
        if (v20)
        {
          goto LABEL_126;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_125:
      v17 = v30;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_240FEBCB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702195828 && a2 == 0xE400000000000000;
  if (v3 || (sub_241047428() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736C6166 && a2 == 0xE500000000000000)
  {

    return 0;
  }

  else
  {
    v6 = sub_241047428();

    result = 0;
    if ((v6 & 1) == 0)
    {
      return 2;
    }
  }

  return result;
}

_BYTE *sub_240FEBDE8@<X0>(_BYTE *result@<X0>, uint64_t (*a2)(void)@<X1>, BOOL *a3@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    result = a2();
    if (result)
    {
      v8 = *result == 0;
    }

    else
    {
      v8 = 0;
    }

    *a3 = v8;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void *sub_240FEBE74@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

unint64_t sub_240FEBEB8(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
    return v25 | ((v24 & 1) << 8);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_240FE8F84(result, a2, 10);

    v24 = (v6 >> 8) & 1;
LABEL_63:
    if (v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = v6;
    }

    return v25 | ((v24 & 1) << 8);
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_2410470B8();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LOBYTE(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = (10 * v6);
              if (v15 != 10 * v6)
              {
                goto LABEL_61;
              }

              v6 = v15 + v14;
              if ((v15 + v14) != v6)
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        LOBYTE(v6) = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      goto LABEL_72;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LOBYTE(v6) = 0;
        while (1)
        {
          v19 = *result - 48;
          if (v19 > 9)
          {
            break;
          }

          v20 = (10 * v6);
          if (v20 != 10 * v6)
          {
            break;
          }

          v6 = v20 + v19;
          if ((v20 + v19) != v6)
          {
            break;
          }

          ++result;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LOBYTE(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = (10 * v6);
            if (v9 != 10 * v6)
            {
              goto LABEL_61;
            }

            v6 = v9 - v8;
            if ((v9 - v8) != v6)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LOBYTE(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = (10 * v6);
          if (v23 != 10 * v6)
          {
            break;
          }

          v6 = v23 + v22;
          if ((v23 + v22) != v6)
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LOBYTE(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = (10 * v6);
          if (v12 != 10 * v6)
          {
            break;
          }

          v6 = v12 - v11;
          if ((v12 - v11) != v6)
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LOBYTE(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = (10 * v6);
        if (v18 != 10 * v6)
        {
          break;
        }

        v6 = v18 + v17;
        if ((v18 + v17) != v6)
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

unint64_t sub_240FEC1E4(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
    return v25 & 0xFFFEFFFF | ((v24 & 1) << 16);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_240FE9564(result, a2, 10);

    v24 = HIWORD(v6) & 1;
LABEL_63:
    if (v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = v6;
    }

    return v25 & 0xFFFEFFFF | ((v24 & 1) << 16);
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_2410470B8();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LOWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = (10 * v6);
              if (v15 != 10 * v6)
              {
                goto LABEL_61;
              }

              v6 = v15 + v14;
              if ((v15 + v14) != v6)
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        LOWORD(v6) = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      goto LABEL_72;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LOWORD(v6) = 0;
        while (1)
        {
          v19 = *result - 48;
          if (v19 > 9)
          {
            break;
          }

          v20 = (10 * v6);
          if (v20 != 10 * v6)
          {
            break;
          }

          v6 = v20 + v19;
          if ((v20 + v19) != v6)
          {
            break;
          }

          ++result;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LOWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = (10 * v6);
            if (v9 != 10 * v6)
            {
              goto LABEL_61;
            }

            v6 = v9 - v8;
            if ((v9 - v8) != v6)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LOWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = (10 * v6);
          if (v23 != 10 * v6)
          {
            break;
          }

          v6 = v23 + v22;
          if ((v23 + v22) != v6)
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LOWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = (10 * v6);
          if (v12 != 10 * v6)
          {
            break;
          }

          v6 = v12 - v11;
          if ((v12 - v11) != v6)
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LOWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = (10 * v6);
        if (v18 != 10 * v6)
        {
          break;
        }

        v6 = v18 + v17;
        if ((v18 + v17) != v6)
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

unint64_t sub_240FEC510(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_240FE9B44(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_2410470B8();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if (v15 != v15)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__OFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        LODWORD(v6) = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        while (1)
        {
          v19 = *result - 48;
          if (v19 > 9)
          {
            break;
          }

          v20 = 10 * v6;
          if (v20 != v20)
          {
            break;
          }

          LODWORD(v6) = v20 + v19;
          if (__OFADD__(v20, v19))
          {
            break;
          }

          ++result;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if (v9 != v9)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (__OFSUB__(v9, v8))
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if (v23 != v23)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__OFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if (v12 != v12)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (__OFSUB__(v12, v11))
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if (v18 != v18)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__OFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

unint64_t sub_240FEC7E8(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_2410470B8();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

LABEL_61:
          v6 = 0;
          LOBYTE(v3) = 1;
          goto LABEL_62;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              break;
            }

            v20 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              break;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_240FEA0B4(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_240FECAE4(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v19 = 0;
    LOBYTE(v18) = 1;
    return v19 | ((v18 & 1) << 8);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_240FEA634(result, a2, 10);

    v18 = (v6 >> 8) & 1;
LABEL_63:
    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v6;
    }

    return v19 | ((v18 & 1) << 8);
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_2410470B8();
      v3 = v20;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LOBYTE(v6) = 0;
          if (result)
          {
            v11 = (result + 1);
            while (1)
            {
              v12 = *v11 - 48;
              if (v12 > 9)
              {
                goto LABEL_61;
              }

              if (((10 * v6) & 0xF00) != 0)
              {
                goto LABEL_61;
              }

              v6 = (10 * v6) + v12;
              if ((v6 >> 8))
              {
                goto LABEL_61;
              }

              ++v11;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        LOBYTE(v6) = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      goto LABEL_72;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LOBYTE(v6) = 0;
        while (1)
        {
          v15 = *result - 48;
          if (v15 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF00) != 0)
          {
            break;
          }

          v6 = (10 * v6) + v15;
          if ((v6 >> 8))
          {
            break;
          }

          ++result;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LOBYTE(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v6) & 0xF00) != 0)
            {
              goto LABEL_61;
            }

            v6 = (10 * v6) - v8;
            if ((v6 & 0xFFFFFF00) != 0)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v22 = v3;
        LOBYTE(v18) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v21[0] = result;
  v21[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LOBYTE(v6) = 0;
        v16 = v21;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF00) != 0)
          {
            break;
          }

          v6 = (10 * v6) + v17;
          if ((v6 >> 8))
          {
            break;
          }

          ++v16;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LOBYTE(v6) = 0;
        v9 = v21 + 1;
        while (1)
        {
          v10 = *v9 - 48;
          if (v10 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF00) != 0)
          {
            break;
          }

          v6 = (10 * v6) - v10;
          if ((v6 & 0xFFFFFF00) != 0)
          {
            break;
          }

          ++v9;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LOBYTE(v6) = 0;
      v13 = v21 + 1;
      while (1)
      {
        v14 = *v13 - 48;
        if (v14 > 9)
        {
          break;
        }

        if (((10 * v6) & 0xF00) != 0)
        {
          break;
        }

        v6 = (10 * v6) + v14;
        if ((v6 >> 8))
        {
          break;
        }

        ++v13;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

unint64_t sub_240FECDF8(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v19 = 0;
    LOBYTE(v18) = 1;
    return v19 & 0xFFFEFFFF | ((v18 & 1) << 16);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_240FEABFC(result, a2, 10);

    v18 = HIWORD(v6) & 1;
LABEL_63:
    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v6;
    }

    return v19 & 0xFFFEFFFF | ((v18 & 1) << 16);
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_2410470B8();
      v3 = v20;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LOWORD(v6) = 0;
          if (result)
          {
            v11 = (result + 1);
            while (1)
            {
              v12 = *v11 - 48;
              if (v12 > 9)
              {
                goto LABEL_61;
              }

              if (((10 * v6) & 0xF0000) != 0)
              {
                goto LABEL_61;
              }

              v6 = (10 * v6) + v12;
              if ((v6 & 0x10000) != 0)
              {
                goto LABEL_61;
              }

              ++v11;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        LOWORD(v6) = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      goto LABEL_72;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LOWORD(v6) = 0;
        while (1)
        {
          v15 = *result - 48;
          if (v15 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF0000) != 0)
          {
            break;
          }

          v6 = (10 * v6) + v15;
          if ((v6 & 0x10000) != 0)
          {
            break;
          }

          ++result;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LOWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v6) & 0xF0000) != 0)
            {
              goto LABEL_61;
            }

            v6 = (10 * v6) - v8;
            if ((v6 & 0xFFFF0000) != 0)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v22 = v3;
        LOBYTE(v18) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v21[0] = result;
  v21[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LOWORD(v6) = 0;
        v16 = v21;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF0000) != 0)
          {
            break;
          }

          v6 = (10 * v6) + v17;
          if ((v6 & 0x10000) != 0)
          {
            break;
          }

          ++v16;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LOWORD(v6) = 0;
        v9 = v21 + 1;
        while (1)
        {
          v10 = *v9 - 48;
          if (v10 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF0000) != 0)
          {
            break;
          }

          v6 = (10 * v6) - v10;
          if ((v6 & 0xFFFF0000) != 0)
          {
            break;
          }

          ++v9;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LOWORD(v6) = 0;
      v13 = v21 + 1;
      while (1)
      {
        v14 = *v13 - 48;
        if (v14 > 9)
        {
          break;
        }

        if (((10 * v6) & 0xF0000) != 0)
        {
          break;
        }

        v6 = (10 * v6) + v14;
        if ((v6 & 0x10000) != 0)
        {
          break;
        }

        ++v13;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

unint64_t sub_240FED10C(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_240FEB1C4(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_2410470B8();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if ((v15 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__CFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        LODWORD(v6) = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        while (1)
        {
          v19 = *result - 48;
          if (v19 > 9)
          {
            break;
          }

          v20 = 10 * v6;
          if ((v20 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v20 + v19;
          if (__CFADD__(v20, v19))
          {
            break;
          }

          ++result;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if ((v9 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (v9 < v8)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if ((v23 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__CFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if ((v12 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (v12 < v11)
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if ((v18 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__CFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

unint64_t sub_240FED3E4(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_2410470B8();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

LABEL_63:
          v6 = 0;
          LOBYTE(v3) = 1;
          goto LABEL_64;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          while (1)
          {
            v16 = *result - 48;
            if (v16 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v16);
            v6 = 10 * v6 + v16;
            if (v9)
            {
              break;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_240FEB734(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_240FED714()
{
  ParsableCommand.run()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t static AsyncParsableCommand.main(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  return MEMORY[0x2822009F8](sub_240FED7B4, 0, 0);
}

uint64_t sub_240FED7B4()
{
  v1 = *(v0 + 176);
  v2 = *(*(v0 + 192) + 8);
  *(v0 + 208) = v2;
  static ParsableCommand.parseAsRoot(_:)(v1, v2, v0 + 16);
  sub_240FEDBC4(v0 + 16, v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E0, &unk_241047C00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F4E8, &qword_2410482E0);
  if (swift_dynamicCast())
  {
    sub_240FDDF54((v0 + 136), v0 + 56);
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v3);
    v10 = (*(v4 + 16) + **(v4 + 16));
    v5 = swift_task_alloc();
    *(v0 + 216) = v5;
    *v5 = v0;
    v5[1] = sub_240FEDA30;

    return v10(v3, v4);
  }

  else
  {
    *(v0 + 168) = 0;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    sub_240FEDC28(v0 + 136);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v7);
    (*(v8 + 32))(v7, v8);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_240FEDA30()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_240FEDB44;
  }

  else
  {
    v2 = sub_240FEE7A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_240FEDB44()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[23];
  MEMORY[0x245CD7E90](v1);
  v4 = *(v2 + 8);

  static ParsableArguments.exit(withError:)(v1, v3, v4);
}

uint64_t sub_240FEDBC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_240FEDC28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F4F0, &qword_2410482E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static AsyncParsableCommand.main()(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  return MEMORY[0x2822009F8](sub_240FEDCB4, 0, 0);
}

uint64_t sub_240FEDCB4()
{
  v1 = *(*(v0 + 184) + 8);
  *(v0 + 200) = v1;
  static ParsableCommand.parseAsRoot(_:)(0, v1, v0 + 16);
  sub_240FEDBC4(v0 + 16, v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E0, &unk_241047C00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F4E8, &qword_2410482E0);
  if (swift_dynamicCast())
  {
    sub_240FDDF54((v0 + 136), v0 + 56);
    v2 = *(v0 + 80);
    v3 = *(v0 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v2);
    v9 = (*(v3 + 16) + **(v3 + 16));
    v4 = swift_task_alloc();
    *(v0 + 208) = v4;
    *v4 = v0;
    v4[1] = sub_240FEDF34;

    return v9(v2, v3);
  }

  else
  {
    *(v0 + 168) = 0;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    sub_240FEDC28(v0 + 136);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v6);
    (*(v7 + 32))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_240FEDF34()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_240FEE048;
  }

  else
  {
    v2 = sub_240FEE7A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_240FEE048()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[22];
  MEMORY[0x245CD7E90](v1);
  v4 = *(v2 + 8);

  static ParsableArguments.exit(withError:)(v1, v3, v4);
}

uint64_t static AsyncMainProtocol.main()(uint64_t a1, uint64_t a2)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return MEMORY[0x2822009F8](sub_240FEE0E8, 0, 0);
}

uint64_t sub_240FEE0E8()
{
  *(v0 + 192) = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 200) = AssociatedConformanceWitness;
  static ParsableCommand.parseAsRoot(_:)(0, AssociatedConformanceWitness, v0 + 16);
  sub_240FEDBC4(v0 + 16, v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E0, &unk_241047C00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F4E8, &qword_2410482E0);
  if (swift_dynamicCast())
  {
    sub_240FDDF54((v0 + 136), v0 + 56);
    v2 = *(v0 + 80);
    v3 = *(v0 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v2);
    v9 = (*(v3 + 16) + **(v3 + 16));
    v4 = swift_task_alloc();
    *(v0 + 208) = v4;
    *v4 = v0;
    v4[1] = sub_240FEE3A8;

    return v9(v2, v3);
  }

  else
  {
    *(v0 + 168) = 0;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    sub_240FEDC28(v0 + 136);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v6);
    (*(v7 + 32))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_240FEE3A8()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_240FEE524;
  }

  else
  {
    v2 = sub_240FEE4BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_240FEE4BC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];

  return v1();
}

void sub_240FEE524()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[27];
  v4 = v0 + 24;
  v3 = v0[24];
  v2 = v4[1];
  MEMORY[0x245CD7E90](v1);
  v5 = *(v2 + 8);

  static ParsableArguments.exit(withError:)(v1, v3, v5);
}

uint64_t dispatch thunk of AsyncParsableCommand.run()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_240FEE6B4;

  return v7(a1, a2);
}

uint64_t sub_240FEE6B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_240FEE7AC(uint64_t *a1)
{
  v5 = a1[2];
  if (!v5)
  {
    goto LABEL_57;
  }

  v4 = a1;
  v6 = &a1[2 * v5 + 2];
  v7 = *v6;
  v8 = v6[1];
  *&v119[0] = sub_240FF2D04(a1);
  *(&v119[0] + 1) = v9;
  v10 = 0xE100000000000000;
  *&v109 = 45;
  *(&v109 + 1) = 0xE100000000000000;
  *&v107[0] = 95;
  *(&v107[0] + 1) = 0xE100000000000000;
  sub_240FE05E8();
  *(&v94 + 1) = sub_241046EE8();
  v12 = v11;

  v95 = v12;
  if (v5 == 1)
  {
    *&v94 = 49;
    v13 = 50;
    v92 = 0xE100000000000000;
  }

  else
  {
    v10 = 0xE900000000000029;
    v92 = 0xE200000000000000;
    v13 = 0x29312B3124282824;
    *&v94 = 12580;
  }

  v91 = v13;
  (*(v8 + 16))(&v109, v7, v8);
  v119[6] = v115;
  v119[7] = v116;
  v119[8] = v117;
  v119[2] = v111;
  v119[3] = v112;
  v119[4] = v113;
  v119[5] = v114;
  v119[0] = v109;
  v119[1] = v110;
  v107[6] = v115;
  v107[7] = v116;
  v107[8] = v117;
  v107[2] = v111;
  v107[3] = v112;
  v107[4] = v113;
  v107[5] = v114;
  v120 = v118;
  v108 = v118;
  v107[0] = v109;
  v107[1] = v110;
  CommandConfiguration.subcommands.getter();
  v15 = v14;
  sub_240FE724C(v119);
  v16 = *(v15 + 16);
  v96 = v5;
  if (v16)
  {
    v17 = v16 - 1;
    v2 = MEMORY[0x277D84F90];
    for (i = 32; ; i += 16)
    {
      v97 = *(v15 + i);
      (*(*(v15 + i + 8) + 16))(v99);
      v102 = v99[6];
      v103 = v99[7];
      v104 = v99[8];
      v105 = v100;
      v101[2] = v99[2];
      v101[3] = v99[3];
      v101[4] = v99[4];
      v101[5] = v99[5];
      v101[0] = v99[0];
      v101[1] = v99[1];
      sub_240FE724C(v101);
      if (v102 == 1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v106 = v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_240FE42D8(0, *(v2 + 2) + 1, 1);
          v2 = v106;
        }

        v21 = *(v2 + 2);
        v20 = *(v2 + 3);
        if (v21 >= v20 >> 1)
        {
          sub_240FE42D8((v20 > 1), v21 + 1, 1);
          v2 = v106;
        }

        *(v2 + 2) = v21 + 1;
        *&v2[16 * v21 + 32] = v97;
      }

      if (!v17)
      {
        break;
      }

      --v17;
    }

    v5 = v96;
  }

  else
  {

    v2 = MEMORY[0x277D84F90];
  }

  v3 = *(&v94 + 1);
  v93 = v10;
  if (v5 != 1)
  {
    goto LABEL_23;
  }

  v1 = *(v2 + 2);
  if (!v1)
  {
    goto LABEL_23;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v23 = *(v2 + 2);
    v22 = *(v2 + 3);
    if (v23 >= v22 >> 1)
    {
      v2 = sub_240FE2D64((v22 > 1), v23 + 1, 1, v2);
    }

    v24 = sub_240FF0C78();
    *(v2 + 2) = v23 + 1;
    v25 = &v2[16 * v23];
    *(v25 + 4) = &type metadata for HelpCommand;
    *(v25 + 5) = v24;
LABEL_23:
    v98 = v4;
    v26 = sub_240FEFFD0(v4);
    v27 = *(v2 + 2);
    v28 = MEMORY[0x277D84F90];
    if (v27)
    {
      *&v109 = MEMORY[0x277D84F90];
      sub_240FE41A0(0, v27, 0);
      v28 = v109;
      v31 = v2 + 40;
      do
      {
        v32 = (*(*v31 + 24))(*(v31 - 1), *v31, v29, v30);
        v34 = v33;
        *&v109 = v28;
        v36 = *(v28 + 16);
        v35 = *(v28 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_240FE41A0((v35 > 1), v36 + 1, 1);
          v28 = v109;
        }

        *(v28 + 16) = v36 + 1;
        v37 = v28 + 16 * v36;
        *(v37 + 32) = v32;
        *(v37 + 40) = v34;
        v31 += 2;
        --v27;
      }

      while (v27);
      v5 = v96;
      v3 = *(&v94 + 1);
    }

    *&v109 = v26;
    sub_240FE2060(v28);
    v38 = v109;
    v39 = sub_240FF030C(v98);
    *&v109 = v3;
    *(&v109 + 1) = v95;

    MEMORY[0x245CD70E0](0xA7B202928, 0xE500000000000000);
    if (v5 == 1)
    {
      v40 = sub_240FF4B40(4, 0xD000000000000050, 0x800000024104DEE0);
      MEMORY[0x245CD70E0](v40);
    }

    strcpy(v107, "    opts=");
    BYTE11(v107[0]) = 0;
    HIDWORD(v107[0]) = -369098752;
    *&v101[0] = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
    sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080, MEMORY[0x277D83958]);
    v41 = sub_241046AA8();
    v43 = v42;

    MEMORY[0x245CD70E0](v41, v43);

    MEMORY[0x245CD70E0](2594, 0xE200000000000000);
    MEMORY[0x245CD70E0](*&v107[0], *(&v107[0] + 1));

    v44 = *(v39 + 2);
    if (v44)
    {
      v45 = (v39 + 40);
      do
      {
        v46 = *(v45 - 1);
        v47 = *v45;
        *&v107[0] = 0;
        *(&v107[0] + 1) = 0xE000000000000000;

        sub_241047058();

        *&v107[0] = 0xD000000000000010;
        *(&v107[0] + 1) = 0x800000024104DDC0;
        MEMORY[0x245CD70E0](v46, v47);

        MEMORY[0x245CD70E0](2594, 0xE200000000000000);
        MEMORY[0x245CD70E0](*&v107[0], *(&v107[0] + 1));

        v45 += 2;
        --v44;
      }

      while (v44);
    }

    *&v107[0] = 0;
    *(&v107[0] + 1) = 0xE000000000000000;
    sub_241047058();
    MEMORY[0x245CD70E0](0xD00000000000001ALL, 0x800000024104DDE0);
    MEMORY[0x245CD70E0](v94, v92);
    MEMORY[0x245CD70E0](0xD000000000000057, 0x800000024104DE00);
    MEMORY[0x245CD70E0](*&v107[0], *(&v107[0] + 1));

    v48 = v98;
    v49 = sub_240FF06F4(v98);
    v51 = v50;
    v52 = HIBYTE(v50) & 0xF;
    if ((v50 & 0x2000000000000000) == 0)
    {
      v52 = v49 & 0xFFFFFFFFFFFFLL;
    }

    if (v52)
    {
      v53 = v49;
      *&v107[0] = 0;
      *(&v107[0] + 1) = 0xE000000000000000;
      sub_241047058();

      strcpy(v107, "case $prev in\n");
      HIBYTE(v107[0]) = -18;
      v54 = sub_240FF4B40(4, v53, v51);
      v56 = v55;

      MEMORY[0x245CD70E0](v54, v56);

      MEMORY[0x245CD70E0](0x636173650ALL, 0xE500000000000000);
      v57 = sub_240FF4B40(4, *&v107[0], *(&v107[0] + 1));
      v59 = v58;

      *&v107[0] = v57;
      *(&v107[0] + 1) = v59;

      MEMORY[0x245CD70E0](10, 0xE100000000000000);

      MEMORY[0x245CD70E0](*&v107[0], *(&v107[0] + 1));
    }

    v60 = v93;

    if (*(v2 + 2))
    {
      *&v107[0] = 0;
      *(&v107[0] + 1) = 0xE000000000000000;
      sub_241047058();

      *&v107[0] = 0xD000000000000016;
      *(&v107[0] + 1) = 0x800000024104DE60;
      MEMORY[0x245CD70E0](v94, v92);

      MEMORY[0x245CD70E0](0xA6E69207D5DLL, 0xE600000000000000);
      MEMORY[0x245CD70E0](*&v107[0], *(&v107[0] + 1));

      v92 = v2;
      v61 = *(v2 + 2);
      if (v61)
      {
        v62 = (v2 + 40);
        do
        {
          v63 = v60;
          v64 = *(v62 - 1);
          v65 = *v62;
          *&v107[0] = 0;
          *(&v107[0] + 1) = 0xE000000000000000;
          sub_241047058();

          *&v107[0] = 40;
          *(&v107[0] + 1) = 0xE100000000000000;
          v66 = *(v65 + 24);
          v67 = v66(v64, v65);
          MEMORY[0x245CD70E0](v67);

          MEMORY[0x245CD70E0](0x202020200A29, 0xE600000000000000);
          MEMORY[0x245CD70E0](*(&v94 + 1), v95);
          MEMORY[0x245CD70E0](95, 0xE100000000000000);
          v68 = v65;
          v60 = v63;
          v69 = v66(v64, v68);
          MEMORY[0x245CD70E0](v69);

          MEMORY[0x245CD70E0](32, 0xE100000000000000);
          MEMORY[0x245CD70E0](v91, v63);
          MEMORY[0x245CD70E0](0xD000000000000013, 0x800000024104DE80);
          v70 = sub_240FF4B40(8, *&v107[0], *(&v107[0] + 1));
          v72 = v71;

          MEMORY[0x245CD70E0](v70, v72);

          v62 += 2;
          --v61;
        }

        while (v61);
      }

      MEMORY[0x245CD70E0](0x6361736520202020, 0xE90000000000000ALL);
      v48 = v98;
    }

    else
    {
    }

    MEMORY[0x245CD70E0](0xD000000000000034, 0x800000024104DEA0);
    v73 = *(&v109 + 1);
    v74 = v109;
    v75 = *(v2 + 2);
    if (!v75)
    {
      break;
    }

    v94 = v109;
    *&v107[0] = MEMORY[0x277D84F90];
    sub_240FE41A0(0, v75, 0);
    v3 = *&v107[0];
    v5 = 32;
    v4 = &qword_2410480F0;
    v95 = 1;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E8, &qword_2410480F0);
      v76 = swift_allocObject();
      *(v76 + 32) = *&v2[v5];
      v77 = (v76 + 32);
      *(v76 + 16) = xmmword_241047BF0;

      v78 = swift_isUniquelyReferenced_nonNull_native();
      if (!v78 || (v79 = *(v48 + 3) >> 1, v1 = v48, v79 <= v96))
      {
        v1 = sub_240FE2D64(v78, v96 + 1, 1, v48);
        v79 = v1[3] >> 1;
      }

      v80 = v1[2];
      if (v79 <= v80)
      {
        break;
      }

      *&v1[2 * v80 + 4] = *v77;

      ++v1[2];
      v81 = sub_240FEE7AC(v1);
      v83 = v82;

      *&v107[0] = v3;
      v85 = *(v3 + 16);
      v84 = *(v3 + 24);
      if (v85 >= v84 >> 1)
      {
        sub_240FE41A0((v84 > 1), v85 + 1, 1);
        v3 = *&v107[0];
      }

      *(v3 + 16) = v85 + 1;
      v86 = v3 + 16 * v85;
      *(v86 + 32) = v81;
      *(v86 + 40) = v83;
      v5 += 16;
      --v75;
      v48 = v98;
      if (!v75)
      {

        v73 = *(&v94 + 1);
        v74 = v94;
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v2 = sub_240FE2D64(0, v1 + 1, 1, v2);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_55:
  *&v107[0] = v3;
  v87 = sub_241046AA8();
  v89 = v88;

  *&v107[0] = v74;
  *(&v107[0] + 1) = v73;

  MEMORY[0x245CD70E0](v87, v89);

  return *&v107[0];
}

uint64_t sub_240FEF444()
{
  if (*(v0 + 104))
  {
    return MEMORY[0x277D84F90];
  }

  v2 = MEMORY[0x277D84F90];
  v3 = MEMORY[0x277D84F90];
  if (*v0 >= 2uLL)
  {
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    sub_240FE41A0(0, v4, 0);
    v1 = v2;
    v5 = (v3 + 48);
    while (1)
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      if (!(v8 >> 6))
      {
        break;
      }

      if (v8 >> 6 != 1)
      {
        v14 = 45;
        v9 = 0xE100000000000000;
        goto LABEL_12;
      }

      v14 = 0;
      v15 = 0xE000000000000000;

      MEMORY[0x245CD70E0](45, 0xE100000000000000);
      sub_241046A98();
LABEL_13:
      sub_240FF0D30(v7, v6, v8);
      v11 = *(v1 + 16);
      v10 = *(v1 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_240FE41A0((v10 > 1), v11 + 1, 1);
      }

      v5 += 24;
      *(v1 + 16) = v11 + 1;
      v12 = v1 + 16 * v11;
      *(v12 + 32) = v14;
      *(v12 + 40) = v15;
      if (!--v4)
      {

        return v1;
      }
    }

    v14 = 11565;
    v9 = 0xE200000000000000;
LABEL_12:
    v15 = v9;
    sub_240FF0D90(v7, v6, v8);
    MEMORY[0x245CD70E0](v7, v6);
    goto LABEL_13;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_240FEF608(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 144);
  if (v3 > 1)
  {
    v4 = *(v1 + 17);
    if (v3 != 2)
    {
      if (v3 == 3)
      {
        *&v77 = 0;
        *(&v77 + 1) = 0xE000000000000000;
        sub_241047058();
        v90 = v77;
        MEMORY[0x245CD70E0](0xD00000000000002FLL, 0x800000024104DF40);
        v81 = v1[4];
        v82 = v1[5];
        v83 = v1[6];
        v84 = v1[7];
        v77 = *v1;
        v78 = v1[1];
        v79 = v1[2];
        v80 = v1[3];
        v85 = v2;
        v86 = v4;
        v87 = 3;
        v88 = *(v1 + 145);
        *v89 = *(v1 + 161);
        *&v89[15] = v1[11];
        v6 = sub_240FF2EF0(a1);
        MEMORY[0x245CD70E0](v6);

        MEMORY[0x245CD70E0](0xD000000000000022, 0x800000024104DF70);
        return v90;
      }

      else if (v2 | v4)
      {
        return 0xD000000000000065;
      }

      else
      {
        return 0;
      }
    }

    sub_241047058();

    strcpy(&v77, "COMPREPLY=( $(");
    HIBYTE(v77) = -18;
    MEMORY[0x245CD70E0](v2, v4);
    v9 = 2695209;
    v10 = 0xE300000000000000;
LABEL_61:
    MEMORY[0x245CD70E0](v9, v10);
    return v77;
  }

  if (!*(v1 + 144))
  {
    sub_241047058();

    *&v77 = 0xD00000000000001ALL;
    *(&v77 + 1) = 0x800000024104DFA0;
    *&v90 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
    sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080, MEMORY[0x277D83958]);
    v8 = sub_241046AA8();
    MEMORY[0x245CD70E0](v8);

    v9 = 0x632422202D2D2022;
    v10 = 0xEE00292029227275;
    goto LABEL_61;
  }

  v11 = *(v2 + 16);
  if (!v11)
  {
    return 0xD000000000000062;
  }

  *&v90 = MEMORY[0x277D84F90];
  sub_240FE41A0(0, v11, 0);
  v12 = 0;
  result = v90;
  v72 = v2 + 32;
  v73 = v2;
  v71 = v11;
  while (1)
  {
    if (v12 >= *(v73 + 16))
    {
      goto LABEL_65;
    }

    v74 = result;
    v13 = (v72 + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v14 & 0xFFFFFFFFFFFFLL;
    }

    *&v77 = v14;
    *(&v77 + 1) = v15;
    *&v78 = 0;
    *(&v78 + 1) = v16;
    swift_bridgeObjectRetain_n();
    v17 = sub_241046BD8();
    if (v18)
    {
      break;
    }

    v21 = MEMORY[0x277D84F90];
LABEL_38:

    *&v77 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F500, "lx");
    sub_240FF0D48(&qword_27E51F508, &qword_27E51F500, "lx", MEMORY[0x277D83970]);
    v30 = sub_241046C58();
    v32 = v31;

    result = v74;
    *&v90 = v74;
    v34 = *(v74 + 16);
    v33 = *(v74 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_240FE41A0((v33 > 1), v34 + 1, 1);
      result = v90;
    }

    ++v12;
    *(result + 16) = v34 + 1;
    v35 = result + 16 * v34;
    *(v35 + 32) = v30;
    *(v35 + 40) = v32;
    if (v12 == v71)
    {
      v76 = result;
      *&v77 = MEMORY[0x277D84F90];

      sub_240FE41A0(0, v34 + 1, 0);
      v37 = v77;
      v38 = v34 + 1;
      v39 = v36 + 40;
      do
      {
        v40 = sub_241046A38();
        *&v77 = v37;
        v43 = *(v37 + 16);
        v42 = *(v37 + 24);
        if (v43 >= v42 >> 1)
        {
          v45 = v40;
          v46 = v41;
          sub_240FE41A0((v42 > 1), v43 + 1, 1);
          v41 = v46;
          v40 = v45;
          v37 = v77;
        }

        *(v37 + 16) = v43 + 1;
        v44 = v37 + 16 * v43;
        *(v44 + 32) = v40;
        *(v44 + 40) = v41;
        v39 += 16;
        --v38;
      }

      while (v38);

      sub_240FE2060(v37);
      *&v77 = 0;
      *(&v77 + 1) = 0xE000000000000000;
      sub_241047058();
      MEMORY[0x245CD70E0](0xD00000000000002ALL, 0x800000024104E030);
      v47 = v76;
      v48 = *(v76 + 16);
      v49 = MEMORY[0x277D84F90];
      if (v48)
      {
        v75 = MEMORY[0x277D84F90];
        sub_240FE41A0(0, v48, 0);
        v50 = v75;
        v51 = (v76 + 40);
        v52 = v48;
        do
        {
          v53 = *(v51 - 1);
          v54 = *v51;
          *&v90 = 0x726964656C69665FLL;
          *(&v90 + 1) = 0xEA00000000002720;

          MEMORY[0x245CD70E0](v53, v54);
          MEMORY[0x245CD70E0](39, 0xE100000000000000);

          v55 = v90;
          v57 = *(v75 + 16);
          v56 = *(v75 + 24);
          if (v57 >= v56 >> 1)
          {
            sub_240FE41A0((v56 > 1), v57 + 1, 1);
          }

          *(v75 + 16) = v57 + 1;
          *(v75 + 16 * v57 + 32) = v55;
          v51 += 2;
          --v52;
        }

        while (v52);
        v47 = v76;
        v49 = MEMORY[0x277D84F90];
      }

      else
      {
        v50 = MEMORY[0x277D84F90];
      }

      *&v90 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
      sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080, MEMORY[0x277D83958]);
      v58 = sub_241046AA8();
      v60 = v59;

      MEMORY[0x245CD70E0](v58, v60);

      MEMORY[0x245CD70E0](0xD000000000000026, 0x800000024104E060);
      if (v48)
      {
        sub_240FE41A0(0, v48, 0);
        v61 = v49;
        v62 = (v47 + 40);
        do
        {
          v63 = *(v62 - 1);
          v64 = *v62;

          sub_241047058();

          *&v90 = 0xD000000000000014;
          *(&v90 + 1) = 0x800000024104E090;
          MEMORY[0x245CD70E0](v63, v64);
          MEMORY[0x245CD70E0](0x632422202D2D2027, 0xEC00000029227275);

          v65 = v90;
          v67 = *(v61 + 16);
          v66 = *(v61 + 24);
          if (v67 >= v66 >> 1)
          {
            sub_240FE41A0((v66 > 1), v67 + 1, 1);
          }

          *(v61 + 16) = v67 + 1;
          *(v61 + 16 * v67 + 32) = v65;
          v62 += 2;
          --v48;
        }

        while (v48);
      }

      else
      {

        v61 = MEMORY[0x277D84F90];
      }

      *&v90 = v61;
      v68 = sub_241046AA8();
      v70 = v69;

      MEMORY[0x245CD70E0](v68, v70);

      v9 = 0xD000000000000023;
      v10 = 0x800000024104E0B0;
      goto LABEL_61;
    }
  }

  v19 = v17;
  v20 = v18;
  v21 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v19 == 39 && v20 == 0xE100000000000000 || (sub_241047428() & 1) != 0)
    {

      v23 = qword_2852DA598;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F438, &qword_241048070);
      result = swift_allocObject();
      *(result + 16) = xmmword_241047BF0;
      *(result + 32) = v19;
      *(result + 40) = v20;
      v23 = 1;
    }

    v24 = *(v21 + 16);
    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) != 0 && v25 <= *(v21 + 24) >> 1)
    {
      if (!v23)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v24 <= v25)
      {
        v26 = v24 + v23;
      }

      else
      {
        v26 = v24;
      }

      result = sub_240FE3ED4(result, v26, 1, v21);
      v21 = result;
      if (!v23)
      {
LABEL_18:

        goto LABEL_19;
      }
    }

    if ((*(v21 + 24) >> 1) - *(v21 + 16) < v23)
    {
      goto LABEL_63;
    }

    swift_arrayInitWithCopy();

    v27 = *(v21 + 16);
    v28 = __OFADD__(v27, v23);
    v29 = v27 + v23;
    if (v28)
    {
      goto LABEL_64;
    }

    *(v21 + 16) = v29;
LABEL_19:
    v19 = sub_241046BD8();
    v20 = v22;
    if (!v22)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

char *sub_240FEFFD0(uint64_t a1)
{
  result = sub_240FF4E24(0, a1);
  v2 = result;
  v3 = *(result + 2);
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_37:

    return v6;
  }

  v5 = 0;
  v40 = result + 32;
  v6 = MEMORY[0x277D84F90];
  v38 = *(result + 2);
  v39 = result;
  while (v5 < *(v2 + 2))
  {
    v7 = &v40[192 * v5];
    v8 = *v7;
    v9 = *(v7 + 1);
    v10 = *(v7 + 3);
    v44[2] = *(v7 + 2);
    v44[3] = v10;
    v44[0] = v8;
    v44[1] = v9;
    v11 = *(v7 + 4);
    v12 = *(v7 + 5);
    v13 = *(v7 + 7);
    v45 = *(v7 + 6);
    v46 = v13;
    v44[4] = v11;
    v44[5] = v12;
    v14 = *(v7 + 8);
    v15 = *(v7 + 9);
    v16 = *(v7 + 11);
    v49 = *(v7 + 10);
    v50 = v16;
    v47 = v14;
    v48 = v15;
    v17 = v4;
    if (BYTE8(v45))
    {
      goto LABEL_23;
    }

    if (*&v44[0] >= 2uLL)
    {
      v18 = *&v44[0];
    }

    else
    {
      v18 = v4;
    }

    v19 = *(v18 + 16);
    if (v19)
    {
      sub_240FF0D20(*&v44[0]);
      sub_240FE0990(v44, &v41);
      v43 = v4;
      sub_240FE41A0(0, v19, 0);
      v17 = v43;
      v20 = (v18 + 48);
      while (1)
      {
        v21 = *(v20 - 2);
        v22 = *(v20 - 1);
        v23 = *v20;
        if (!(v23 >> 6))
        {
          break;
        }

        if (v23 >> 6 != 1)
        {
          v41 = 45;
          v24 = 0xE100000000000000;
          goto LABEL_17;
        }

        v41 = 0;
        v42 = 0xE000000000000000;

        MEMORY[0x245CD70E0](45, 0xE100000000000000);
        sub_241046A98();
LABEL_18:
        sub_240FF0D30(v21, v22, v23);
        v25 = v41;
        v26 = v42;
        v43 = v17;
        v28 = *(v17 + 16);
        v27 = *(v17 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_240FE41A0((v27 > 1), v28 + 1, 1);
          v17 = v43;
        }

        v20 += 24;
        *(v17 + 16) = v28 + 1;
        v29 = v17 + 16 * v28;
        *(v29 + 32) = v25;
        *(v29 + 40) = v26;
        if (!--v19)
        {

          result = sub_240FF0CCC(v44);
          v3 = v38;
          v2 = v39;
          v4 = MEMORY[0x277D84F90];
          goto LABEL_23;
        }
      }

      v41 = 11565;
      v24 = 0xE200000000000000;
LABEL_17:
      v42 = v24;

      MEMORY[0x245CD70E0](v21, v22);
      goto LABEL_18;
    }

    sub_240FF0D20(*&v44[0]);

    v17 = v4;
LABEL_23:
    v30 = *(v17 + 16);
    v31 = *(v6 + 2);
    v32 = v31 + v30;
    if (__OFADD__(v31, v30))
    {
      goto LABEL_39;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v33 = *(v6 + 3) >> 1, v33 >= v32))
    {
      if (!*(v17 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v31 <= v32)
      {
        v34 = v31 + v30;
      }

      else
      {
        v34 = v31;
      }

      result = sub_240FE2E68(result, v34, 1, v6);
      v6 = result;
      v33 = *(result + 3) >> 1;
      if (!*(v17 + 16))
      {
LABEL_3:

        if (v30)
        {
          goto LABEL_40;
        }

        goto LABEL_4;
      }
    }

    if (v33 - *(v6 + 2) < v30)
    {
      goto LABEL_41;
    }

    swift_arrayInitWithCopy();

    if (v30)
    {
      v35 = *(v6 + 2);
      v36 = __OFADD__(v35, v30);
      v37 = v35 + v30;
      if (v36)
      {
        goto LABEL_42;
      }

      *(v6 + 2) = v37;
    }

LABEL_4:
    if (++v5 == v3)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

char *sub_240FF030C(char *result)
{
  v1 = *(result + 2);
  if (v1)
  {
    v2 = result;
    v3 = &result[16 * v1 + 16];
    v4 = *v3;
    v5 = *(v3[1] + 8);
    LOBYTE(v47) = 0;
    result = sub_240FDF86C(v4, v5, &v47, 0, 0, 0);
    v7 = v6;
    v8 = *(result + 2);
    if (!v8)
    {
      v13 = MEMORY[0x277D84F90];
      goto LABEL_23;
    }

    v9 = 0;
    v10 = 0x800000024104E150;
    v11 = "$(${COMP_WORDS[0]} ";
    v12 = result + 32;
    v13 = MEMORY[0x277D84F90];
    v14 = v8 - 1;
    while (1)
    {
      v15 = &v12[192 * v9];
      v16 = v9;
      while (1)
      {
        if (v16 >= *(result + 2))
        {
          __break(1u);
          goto LABEL_25;
        }

        v17 = *v15;
        v18 = *(v15 + 1);
        v19 = *(v15 + 3);
        v49 = *(v15 + 2);
        v50 = v19;
        v47 = v17;
        v48 = v18;
        v20 = *(v15 + 4);
        v21 = *(v15 + 5);
        v22 = *(v15 + 7);
        v53 = *(v15 + 6);
        v54 = v22;
        v51 = v20;
        v52 = v21;
        v23 = *(v15 + 8);
        v24 = *(v15 + 9);
        v25 = *(v15 + 11);
        v57 = *(v15 + 10);
        v58 = v25;
        v55 = v23;
        v56 = v24;
        if (v47)
        {
          goto LABEL_7;
        }

        v26 = v55;
        if (v56 > 1u)
        {
          break;
        }

        if (v56 != 1)
        {
          v40 = v14;
          v41 = v12;
          v42 = v7;
          v43 = result;
          v45 = v55;
          sub_240FE0990(&v47, v44);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
          sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080, MEMORY[0x277D83958]);
          v30 = sub_241046AA8();
          v32 = v31;
          sub_240FF0CCC(&v47);
          goto LABEL_16;
        }

LABEL_7:
        ++v16;
        v15 += 192;
        if (v8 == v16)
        {
          goto LABEL_23;
        }
      }

      if (v56 == 4)
      {
        goto LABEL_7;
      }

      v40 = v14;
      v41 = v12;
      v42 = v7;
      v43 = result;
      if (v56 == 2)
      {
        v27 = *(&v55 + 1);
        v45 = 10276;
        v46 = 0xE200000000000000;
        sub_240FE0990(&v47, v44);
        MEMORY[0x245CD70E0](v26, v27);
        v28 = 41;
        v29 = 0xE100000000000000;
      }

      else
      {
        v45 = 0;
        v46 = 0xE000000000000000;
        sub_240FE0990(&v47, v44);
        sub_241047058();

        v45 = 0xD000000000000015;
        v46 = v10;
        v44[8] = v55;
        v44[9] = v56;
        v44[10] = v57;
        v44[11] = v58;
        v44[4] = v51;
        v44[5] = v52;
        v44[6] = v53;
        v44[7] = v54;
        v44[0] = v47;
        v44[1] = v48;
        v44[2] = v49;
        v44[3] = v50;
        v33 = sub_240FF2EF0(v2);
        MEMORY[0x245CD70E0](v33);

        v29 = v11 | 0x8000000000000000;
        v28 = 0xD000000000000014;
      }

      MEMORY[0x245CD70E0](v28, v29);
      sub_240FF0CCC(&v47);
      v30 = v45;
      v32 = v46;
LABEL_16:
      v34 = v11;
      v35 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_240FE2E68(0, *(v13 + 2) + 1, 1, v13);
      }

      v37 = *(v13 + 2);
      v36 = *(v13 + 3);
      result = v43;
      v14 = v40;
      if (v37 >= v36 >> 1)
      {
        v39 = sub_240FE2E68((v36 > 1), v37 + 1, 1, v13);
        v14 = v40;
        v13 = v39;
        result = v43;
      }

      v9 = v16 + 1;
      *(v13 + 2) = v37 + 1;
      v38 = &v13[16 * v37];
      *(v38 + 4) = v30;
      *(v38 + 5) = v32;
      v10 = v35;
      v11 = v34;
      v12 = v41;
      v7 = v42;
      if (v14 == v16)
      {
LABEL_23:

        return v13;
      }
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_240FF06F4(uint64_t result)
{
  v46 = result;
  v1 = *(result + 16);
  if (!v1)
  {
LABEL_36:
    __break(1u);
    return result;
  }

  v2 = (result + 16 + 16 * v1);
  v3 = *v2;
  v4 = *(v2[1] + 8);
  LOBYTE(v64) = 0;
  v5 = sub_240FDF86C(v3, v4, &v64, 0, 0, 0);
  v6 = *(v5 + 16);

  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = 0;
    v9 = v5 + 32;
    v47 = MEMORY[0x277D84F90];
    v48 = v5 + 32;
    v49 = v5;
    v50 = v6;
    while (v8 < *(v5 + 16))
    {
      v10 = (v9 + 192 * v8);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[3];
      v66 = v10[2];
      v67 = v13;
      v64 = v11;
      v65 = v12;
      v14 = v10[4];
      v15 = v10[5];
      v16 = v10[7];
      v70 = v10[6];
      v71 = v16;
      v68 = v14;
      v69 = v15;
      v17 = v10[8];
      v18 = v10[9];
      v19 = v10[11];
      v74 = v10[10];
      v75 = v19;
      v72 = v17;
      v73 = v18;
      if (BYTE8(v70))
      {
        sub_240FE0990(&v64, &v52);
        goto LABEL_8;
      }

      v21 = v64;
      if (v64 >= 2)
      {
        v22 = v64;
      }

      else
      {
        v22 = v7;
      }

      v23 = *(v22 + 16);
      if (v23)
      {
        sub_240FE0990(&v64, &v52);
        sub_240FF0D20(v21);
        sub_240FE41A0(0, v23, 0);
        v20 = v7;
        v24 = (v22 + 48);
        while (1)
        {
          v26 = *(v24 - 2);
          v25 = *(v24 - 1);
          v27 = *v24;
          if (!(v27 >> 6))
          {
            break;
          }

          if (v27 >> 6 != 1)
          {
            *&v52 = 45;
            v28 = 0xE100000000000000;
            goto LABEL_19;
          }

          *&v52 = 0;
          *(&v52 + 1) = 0xE000000000000000;

          MEMORY[0x245CD70E0](45, 0xE100000000000000);
          sub_241046A98();
LABEL_20:
          sub_240FF0D30(v26, v25, v27);
          v29 = v52;
          v31 = *(v20 + 16);
          v30 = *(v20 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_240FE41A0((v30 > 1), v31 + 1, 1);
          }

          v24 += 24;
          *(v20 + 16) = v31 + 1;
          *(v20 + 16 * v31 + 32) = v29;
          if (!--v23)
          {

            v5 = v49;
            v6 = v50;
            v7 = MEMORY[0x277D84F90];
            v9 = v48;
            goto LABEL_24;
          }
        }

        *&v52 = 11565;
        v28 = 0xE200000000000000;
LABEL_19:
        *(&v52 + 1) = v28;

        MEMORY[0x245CD70E0](v26, v25);
        goto LABEL_20;
      }

      sub_240FE0990(&v64, &v52);
      sub_240FF0D20(v21);

LABEL_8:
      v20 = v7;
LABEL_24:
      ++v8;
      v32 = *(v20 + 16);

      if (v32 && BYTE8(v74) == 1)
      {
        v33 = v9;
        *&v52 = 0;
        *(&v52 + 1) = 0xE000000000000000;
        sub_241047058();
        v60 = v72;
        v61 = v73;
        v62 = v74;
        v63 = v75;
        v56 = v68;
        v57 = v69;
        v58 = v70;
        v59 = v71;
        v52 = v64;
        v53 = v65;
        v54 = v66;
        v55 = v67;
        *&v52 = sub_240FEF444();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
        sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080, MEMORY[0x277D83958]);
        v34 = sub_241046AA8();
        v36 = v35;

        v51 = v36;
        MEMORY[0x245CD70E0](2601, 0xE200000000000000);
        v60 = v72;
        v61 = v73;
        v62 = v74;
        v63 = v75;
        v56 = v68;
        v57 = v69;
        v58 = v70;
        v59 = v71;
        v52 = v64;
        v53 = v65;
        v54 = v66;
        v55 = v67;
        v37 = sub_240FEF608(v46);
        v39 = sub_240FF4B40(4, v37, v38);
        v41 = v40;

        MEMORY[0x245CD70E0](v39, v41);

        MEMORY[0x245CD70E0](0x746572202020200ALL, 0xEE003B3B0A6E7275);
        sub_240FF0CCC(&v64);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_240FE2E68(0, *(v47 + 16) + 1, 1, v47);
          v47 = result;
        }

        v43 = *(v47 + 16);
        v42 = *(v47 + 24);
        if (v43 >= v42 >> 1)
        {
          result = sub_240FE2E68((v42 > 1), v43 + 1, 1, v47);
          v47 = result;
        }

        *(v47 + 16) = v43 + 1;
        v44 = v47 + 16 * v43;
        *(v44 + 32) = v34;
        *(v44 + 40) = v51;
        v6 = v50;
        v9 = v33;
        if (v8 == v50)
        {
          goto LABEL_34;
        }
      }

      else
      {
        result = sub_240FF0CCC(&v64);
        if (v8 == v6)
        {
          goto LABEL_34;
        }
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  v47 = MEMORY[0x277D84F90];
LABEL_34:
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  *&v64 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
  sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080, MEMORY[0x277D83958]);
  v45 = sub_241046AA8();

  return v45;
}

unint64_t sub_240FF0C78()
{
  result = qword_280CC1E48;
  if (!qword_280CC1E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC1E48);
  }

  return result;
}

unint64_t sub_240FF0D20(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_240FF0D30(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xBFu)
  {
  }

  return result;
}

uint64_t sub_240FF0D48(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_240FF0D90(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xBFu)
  {
  }

  return result;
}

uint64_t sub_240FF0DA8(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 24))();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E51F340, &qword_241047D40);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_241048380;
  *(v7 + 32) = sub_240FF25C4(v4, v6);
  *(v7 + 40) = v8;
  v9 = sub_240FF26E4(v4, v6);
  v11 = v10;

  *(v7 + 48) = v9;
  *(v7 + 56) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E8, &qword_2410480F0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_241047BF0;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  sub_240FF0F74(v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
  sub_240FF28F0();
  v13 = sub_241046AA8();

  MEMORY[0x245CD70E0](2570, 0xE200000000000000);

  v14 = sub_241046AA8();
  v16 = v15;

  MEMORY[0x245CD70E0](v14, v16);

  return v13;
}

char *sub_240FF0F74(uint64_t a1)
{
  v8 = *(a1 + 16);
  if (!v8)
  {
    goto LABEL_93;
  }

  v7 = a1;
  v3 = v136;
  v9 = a1 + 32 + 16 * v8;
  v11 = *(v9 - 16);
  v10 = *(v9 - 8);
  v5 = (*(*(a1 + 40) + 24))();
  v4 = v12;
  (*(v10 + 16))(&v143, v11, v10);
  v161[6] = v149;
  v161[7] = v150;
  v161[8] = v151;
  v161[2] = v145;
  v161[3] = v146;
  v161[4] = v147;
  v161[5] = v148;
  v161[0] = v143;
  v161[1] = v144;
  v141[6] = v149;
  v141[7] = v150;
  v141[8] = v151;
  v141[2] = v145;
  v141[3] = v146;
  v141[4] = v147;
  v141[5] = v148;
  v162 = v152;
  v142 = v152;
  v141[0] = v143;
  v141[1] = v144;
  CommandConfiguration.subcommands.getter();
  v14 = v13;
  sub_240FE724C(v161);
  v15 = *(v14 + 16);
  if (v15)
  {
    v133 = v5;
    v16 = v8;
    v17 = v15 - 1;
    v18 = MEMORY[0x277D84F90];
    for (i = 32; ; i += 16)
    {
      v134 = *(v14 + i);
      (*(*(v14 + i + 8) + 16))(v159);
      v137 = v159[6];
      v138 = v159[7];
      v139 = v159[8];
      v140 = v160;
      v136[2] = v159[2];
      v136[3] = v159[3];
      v136[4] = v159[4];
      v136[5] = v159[5];
      v136[0] = v159[0];
      v136[1] = v159[1];
      sub_240FE724C(v136);
      if (v137 == 1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v158 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_240FE42D8(0, *(v18 + 16) + 1, 1);
          v18 = v158;
        }

        v22 = *(v18 + 16);
        v21 = *(v18 + 24);
        v23 = v18;
        if (v22 >= v21 >> 1)
        {
          sub_240FE42D8((v21 > 1), v22 + 1, 1);
          v23 = v158;
        }

        *(v23 + 16) = v22 + 1;
        *(v23 + 16 * v22 + 32) = v134;
        v18 = v23;
      }

      if (!v17)
      {
        break;
      }

      --v17;
    }

    v8 = v16;
    v5 = v133;
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v6 = MEMORY[0x277D84F90];
  if (v8 != 1)
  {
    v135 = v18;
    goto LABEL_23;
  }

  v24 = v18;
  v1 = *(v18 + 16);
  if (!v1)
  {
    v135 = v24;
    goto LABEL_23;
  }

  v2 = v24;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_94;
  }

  for (j = v2; ; j = sub_240FE2D64(0, (v1 + 1), 1, v2))
  {
    v27 = *(j + 2);
    v26 = *(j + 3);
    v135 = j;
    if (v27 >= v26 >> 1)
    {
      v135 = sub_240FE2D64((v26 > 1), v27 + 1, 1, j);
    }

    v28 = sub_240FF0C78();
    *(v135 + 2) = v27 + 1;
    v29 = &v135[16 * v27];
    *(v29 + 4) = &type metadata for HelpCommand;
    *(v29 + 5) = v28;
LABEL_23:
    strcpy(&v143, "_swift_");
    *(&v143 + 1) = 0xE700000000000000;
    MEMORY[0x245CD70E0](v5, v4);

    MEMORY[0x245CD70E0](0x635F676E6973755FLL, 0xEE00646E616D6D6FLL);

    v31 = *(&v143 + 1);
    v30 = v143;
    *&v143 = 0;
    *(&v143 + 1) = 0xE000000000000000;
    sub_241047058();

    strcpy(&v143, "complete -c ");
    BYTE13(v143) = 0;
    HIWORD(v143) = -5120;
    MEMORY[0x245CD70E0](v5, v4);

    MEMORY[0x245CD70E0](0x27206E2D20, 0xE500000000000000);
    MEMORY[0x245CD70E0](v30, v31);

    MEMORY[0x245CD70E0](8736, 0xE200000000000000);
    *&v141[0] = v6;
    sub_240FE41A0(0, v8, 0);
    v34 = *&v141[0];
    v35 = v7 + 40;
    v131 = v8;
    v36 = v8;
    do
    {
      v37 = (*(*v35 + 24))(*(v35 - 1), *v35, v32, v33);
      *&v141[0] = v34;
      v40 = *(v34 + 16);
      v39 = *(v34 + 24);
      if (v40 >= v39 >> 1)
      {
        v42 = v37;
        v43 = v38;
        sub_240FE41A0((v39 > 1), v40 + 1, 1);
        v38 = v43;
        v37 = v42;
        v34 = *&v141[0];
      }

      *(v34 + 16) = v40 + 1;
      v41 = v34 + 16 * v40;
      *(v41 + 32) = v37;
      *(v41 + 40) = v38;
      v35 += 2;
      --v36;
    }

    while (v36);
    *&v141[0] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
    sub_240FF28F0();
    v44 = sub_241046AA8();
    v46 = v45;

    MEMORY[0x245CD70E0](v44, v46);

    MEMORY[0x245CD70E0](34, 0xE100000000000000);
    v158 = v143;
    v47 = v135;
    v48 = *(v135 + 2);
    if (v48)
    {
      *&v143 = 8736;
      *(&v143 + 1) = 0xE200000000000000;
      *&v141[0] = v6;
      sub_240FE41A0(0, v48, 0);
      v51 = *&v141[0];
      v52 = v135 + 40;
      do
      {
        v53 = (*(*v52 + 24))(*(v52 - 1), *v52, v49, v50);
        *&v141[0] = v51;
        v56 = *(v51 + 16);
        v55 = *(v51 + 24);
        if (v56 >= v55 >> 1)
        {
          v58 = v53;
          v59 = v54;
          sub_240FE41A0((v55 > 1), v56 + 1, 1);
          v54 = v59;
          v53 = v58;
          v51 = *&v141[0];
        }

        *(v51 + 16) = v56 + 1;
        v57 = v51 + 16 * v56;
        *(v57 + 32) = v53;
        *(v57 + 40) = v54;
        v52 += 2;
        --v48;
      }

      while (v48);
      *&v141[0] = v51;
      v60 = sub_241046AA8();
      v62 = v61;

      MEMORY[0x245CD70E0](v60, v62);

      MEMORY[0x245CD70E0](34, 0xE100000000000000);
      MEMORY[0x245CD70E0](v143, *(&v143 + 1));

      v47 = v135;
    }

    v2 = &v158;
    MEMORY[0x245CD70E0](39, 0xE100000000000000);
    v63 = *(v47 + 2);
    v132 = v7;
    if (v63)
    {
      v157 = MEMORY[0x277D84F90];
      sub_240FE41A0(0, v63, 0);
      v64 = v157;
      swift_beginAccess();
      v65 = v47 + 40;
      do
      {
        v66 = *(v65 - 1);
        v67 = *v65;
        (*(*v65 + 16))(v141, v66, *v65);
        v68 = v3[19];
        v3[30] = v3[18];
        v3[31] = v68;
        v3[32] = v3[20];
        v152 = v142;
        v69 = v3[15];
        v3[26] = v3[14];
        v3[27] = v69;
        v70 = v3[17];
        v3[28] = v3[16];
        v3[29] = v70;
        v71 = v3[13];
        v3[24] = v3[12];
        v3[25] = v71;
        v72 = *(&v145 + 1);
        v73 = v145;

        sub_240FE724C(&v143);
        v136[0] = __PAIR128__(v72, v73);
        v155 = 39;
        v156 = 0xE100000000000000;
        v153 = 10076;
        v154 = 0xE200000000000000;
        sub_240FE05E8();
        v74 = sub_241046EE8();
        v76 = v75;

        *&v141[0] = 0;
        *(&v141[0] + 1) = 0xE000000000000000;
        sub_241047058();

        *&v141[0] = 0x2720612D20662DLL;
        *(&v141[0] + 1) = 0xE700000000000000;
        v77 = (*(v67 + 24))(v66, v67);
        MEMORY[0x245CD70E0](v77);

        MEMORY[0x245CD70E0](0x2720642D2027, 0xE600000000000000);
        MEMORY[0x245CD70E0](v74, v76);

        MEMORY[0x245CD70E0](39, 0xE100000000000000);
        v78 = v141[0];
        v141[0] = v158;

        MEMORY[0x245CD70E0](32, 0xE100000000000000);
        v2 = v141;
        MEMORY[0x245CD70E0](v78, *(&v78 + 1));

        v79 = v141[0];
        v157 = v64;
        v81 = *(v64 + 16);
        v80 = *(v64 + 24);
        if (v81 >= v80 >> 1)
        {
          v2 = &v157;
          sub_240FE41A0((v80 > 1), v81 + 1, 1);
          v64 = v157;
        }

        *(v64 + 16) = v81 + 1;
        *(v64 + 16 * v81 + 32) = v79;
        v65 += 2;
        --v63;
      }

      while (v63);
      v130 = v64;
      v7 = v132;
    }

    else
    {
      v130 = MEMORY[0x277D84F90];
    }

    v82 = sub_240FF4E24(0, v7);
    v83 = v82;
    v84 = *(v82 + 16);
    v8 = MEMORY[0x277D84F90];
    if (v84)
    {
      v6 = 0;
      v4 = (v82 + 32);
      do
      {
        v1 = &v4[12 * v6];
        v5 = v6;
        while (1)
        {
          if (v5 >= *(v83 + 16))
          {
            __break(1u);
            goto LABEL_88;
          }

          v85 = *v1;
          v86 = *(v1 + 1);
          v87 = *(v1 + 3);
          v3[26] = *(v1 + 2);
          v3[27] = v87;
          v3[24] = v85;
          v3[25] = v86;
          v88 = *(v1 + 4);
          v89 = *(v1 + 5);
          v90 = *(v1 + 7);
          v3[30] = *(v1 + 6);
          v3[31] = v90;
          v3[28] = v88;
          v3[29] = v89;
          v91 = *(v1 + 8);
          v92 = *(v1 + 9);
          v93 = *(v1 + 11);
          v3[34] = *(v1 + 10);
          v3[35] = v93;
          v3[32] = v91;
          v3[33] = v92;
          v6 = (v5 + 1);
          v94 = v3[33];
          v3[20] = v3[32];
          v3[21] = v94;
          v95 = v3[35];
          v3[22] = v3[34];
          v3[23] = v95;
          v96 = v3[29];
          v3[16] = v3[28];
          v3[17] = v96;
          v97 = v3[31];
          v3[18] = v3[30];
          v3[19] = v97;
          v98 = v3[25];
          v3[12] = v3[24];
          v3[13] = v98;
          v99 = v3[27];
          v3[14] = v3[26];
          v3[15] = v99;
          sub_240FE0990(&v143, v136);
          v2 = sub_240FF1DF4(v7);
          sub_240FF0CCC(&v143);
          if (v2)
          {
            break;
          }

          v1 += 192;
          ++v5;
          if (v84 == v6)
          {
            goto LABEL_52;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_240FE3C9C(0, *(v8 + 16) + 1, 1, v8);
        }

        v101 = *(v8 + 16);
        v100 = *(v8 + 24);
        if (v101 >= v100 >> 1)
        {
          v8 = sub_240FE3C9C((v100 > 1), v101 + 1, 1, v8);
        }

        *(v8 + 16) = v101 + 1;
        *(v8 + 8 * v101 + 32) = v2;
        v7 = v132;
      }

      while ((v84 - 1) != v5);
    }

LABEL_52:

    v102 = *(v8 + 16);
    if (v102)
    {
      *&v143 = MEMORY[0x277D84F90];
      sub_240FE41A0(0, v102, 0);
      v103 = 32;
      v104 = v143;
      do
      {
        *&v141[0] = *(v8 + v103);

        v105 = sub_241046AA8();
        v107 = v106;

        *&v143 = v104;
        v109 = v104[2];
        v108 = v104[3];
        if (v109 >= v108 >> 1)
        {
          sub_240FE41A0((v108 > 1), v109 + 1, 1);
          v104 = v143;
        }

        v104[2] = v109 + 1;
        v110 = &v104[2 * v109];
        v110[4] = v105;
        v110[5] = v107;
        v103 += 8;
        --v102;
      }

      while (v102);

      v111 = v104[2];
      if (!v111)
      {
LABEL_64:

        v5 = MEMORY[0x277D84F90];
        goto LABEL_65;
      }
    }

    else
    {

      v104 = MEMORY[0x277D84F90];
      v111 = *(MEMORY[0x277D84F90] + 16);
      if (!v111)
      {
        goto LABEL_64;
      }
    }

    *&v136[0] = MEMORY[0x277D84F90];
    sub_240FE41A0(0, v111, 0);
    v5 = *&v136[0];
    swift_beginAccess();
    v112 = v104 + 5;
    do
    {
      v113 = *(v112 - 1);
      v114 = *v112;
      v141[0] = v158;

      MEMORY[0x245CD70E0](32, 0xE100000000000000);
      MEMORY[0x245CD70E0](v113, v114);

      v115 = v141[0];
      *&v136[0] = v5;
      v117 = *(v5 + 16);
      v116 = *(v5 + 24);
      if (v117 >= v116 >> 1)
      {
        sub_240FE41A0((v116 > 1), v117 + 1, 1);
        v5 = *&v136[0];
      }

      *(v5 + 16) = v117 + 1;
      *(v5 + 16 * v117 + 32) = v115;
      v112 += 2;
      --v111;
    }

    while (v111);

LABEL_65:
    v3 = *(v135 + 2);
    if (!v3)
    {
      break;
    }

    v4 = v135 + 32;
    v2 = MEMORY[0x277D84F90];
    v6 = &qword_27E51F2E8;
    v8 = &qword_2410480F0;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E8, &qword_2410480F0);
      v118 = swift_allocObject();
      *(v118 + 32) = *v4;
      v7 = (v118 + 32);
      *(v118 + 16) = xmmword_241047BF0;

      v119 = swift_isUniquelyReferenced_nonNull_native();
      if (!v119 || (v120 = *(v132 + 3) >> 1, v1 = v132, v120 <= v131))
      {
        v1 = sub_240FE2D64(v119, v131 + 1, 1, v132);
        v120 = *(v1 + 3) >> 1;
      }

      v121 = *(v1 + 2);
      if (v120 <= v121)
      {
        break;
      }

      *&v1[16 * v121 + 32] = *v7;

      ++*(v1 + 2);
      v7 = sub_240FF0F74(v1);

      v122 = *(v7 + 2);
      v1 = v2[2];
      v123 = &v1[v122];
      if (__OFADD__(v1, v122))
      {
        goto LABEL_89;
      }

      v124 = swift_isUniquelyReferenced_nonNull_native();
      if (!v124 || v123 > (v2[3] >> 1))
      {
        if (v1 <= v123)
        {
          v125 = &v1[v122];
        }

        else
        {
          v125 = v1;
        }

        v2 = sub_240FE2E68(v124, v125, 1, v2);
      }

      v1 = v135;
      if (*(v7 + 2))
      {
        if (((v2[3] >> 1) - v2[2]) < v122)
        {
          goto LABEL_91;
        }

        swift_arrayInitWithCopy();

        if (v122)
        {
          v126 = v2[2];
          v127 = __OFADD__(v126, v122);
          v128 = v126 + v122;
          if (v127)
          {
            goto LABEL_92;
          }

          v2[2] = v128;
        }
      }

      else
      {

        if (v122)
        {
          goto LABEL_90;
        }
      }

      ++v4;
      v3 = (v3 - 1);
      if (!v3)
      {
        goto LABEL_86;
      }
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    ;
  }

  v2 = MEMORY[0x277D84F90];
LABEL_86:

  sub_240FE2060(v5);
  sub_240FE2060(v130);

  return v2;
}

uint64_t sub_240FF1DF4(void *a1)
{
  v2 = *v1;
  v82 = *(v1 + 8);
  v83 = *(v1 + 24);
  v84 = *(v1 + 40);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v80 = *(v1 + 72);
  v81 = *(v1 + 88);
  v5 = *(v1 + 128);
  *(v79 + 15) = *(v1 + 120);
  v79[0] = *(v1 + 105);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  *(v78 + 15) = *(v1 + 176);
  v77 = *(v1 + 145);
  v78[0] = *(v1 + 161);
  if (*(v1 + 104))
  {
    return 0;
  }

  v9 = MEMORY[0x277D84F90];
  v76 = MEMORY[0x277D84F90];
  if (v2 >= 2)
  {
    v10 = v2;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v11 = *(v10 + 16);
  sub_240FF0D20(v2);

  v55 = v5;
  if (v11)
  {
    v14 = v5;
    v54 = v7;
    v15 = v10;
    v16 = *(v10 + 16);
    if (v16)
    {
      v52 = v3;
      v49 = v2;
      v50 = v6;
      sub_240FF0D20(v2);
      v74 = v9;
      sub_240FE41A0(0, v16, 0);
      v17 = v9;
      v48 = v15;
      v18 = (v15 + 48);
      while (1)
      {
        v19 = *(v18 - 2);
        v20 = *(v18 - 1);
        v21 = *v18;
        if (!(v21 >> 6))
        {
          break;
        }

        if (v21 >> 6 != 1)
        {
          v56[0] = 2125613;
          goto LABEL_14;
        }

        v56[0] = 0;
        v56[1] = 0xE000000000000000;
        sub_240FF0D90(v19, v20, v21);
        MEMORY[0x245CD70E0](2126637, 0xE300000000000000);
        sub_241046A98();
LABEL_15:
        sub_240FF0D30(v19, v20, v21);
        v22 = v56[0];
        v23 = v56[1];
        v74 = v17;
        v25 = *(v17 + 16);
        v24 = *(v17 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_240FE41A0((v24 > 1), v25 + 1, 1);
          v17 = v74;
        }

        v18 += 24;
        *(v17 + 16) = v25 + 1;
        v26 = v17 + 16 * v25;
        *(v26 + 32) = v22;
        *(v26 + 40) = v23;
        if (!--v16)
        {
          v10 = v48;

          v5 = v55;
          v2 = v49;
          v6 = v50;
          v3 = v52;
          goto LABEL_20;
        }
      }

      v56[0] = 2124845;
LABEL_14:
      v56[1] = 0xE300000000000000;
      sub_240FF0D90(v19, v20, v21);
      MEMORY[0x245CD70E0](v19, v20);
      goto LABEL_15;
    }

    sub_240FF0D20(v2);

    v17 = MEMORY[0x277D84F90];
    v10 = v15;
    v5 = v14;
LABEL_20:
    result = sub_240FE2060(v17);
    v7 = v54;
  }

  v27 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v27 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E51F340, &qword_241047D40);
    v28 = v10;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241047BF0;
    v56[0] = 656434221;
    v56[1] = 0xE400000000000000;
    v74 = v3;
    v75 = v4;
    v72 = 39;
    v73 = 0xE100000000000000;
    v70 = 10076;
    v71 = 0xE200000000000000;
    sub_240FE05E8();
    v30 = sub_241046EE8();
    MEMORY[0x245CD70E0](v30);

    MEMORY[0x245CD70E0](39, 0xE100000000000000);
    *(inited + 32) = 656434221;
    *(inited + 40) = v56[1];
    v31 = inited;
    v10 = v28;
    v5 = v55;
    result = sub_240FE2060(v31);
  }

  if (v7 <= 1)
  {
    if (!v7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E51F340, &qword_241047D40);
      v39 = swift_initStackObject();
      *(v39 + 16) = xmmword_241047BF0;
      sub_241047058();

      strcpy(v56, "-r -f -k -a '");
      HIWORD(v56[1]) = -4864;
      v74 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
      sub_240FF28F0();
      v40 = sub_241046AA8();
      MEMORY[0x245CD70E0](v40);

      MEMORY[0x245CD70E0](39, 0xE100000000000000);
      v41 = v56[1];
      *(v39 + 32) = v56[0];
      *(v39 + 40) = v41;
      v38 = v39;
      goto LABEL_37;
    }

    v74 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
    sub_240FF28F0();
    v45 = sub_241046AA8();
    MEMORY[0x245CD70E0](v45);

    MEMORY[0x245CD70E0](125, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E51F340, &qword_241047D40);
    v42 = swift_initStackObject();
    *(v42 + 16) = xmmword_241047BF0;
    sub_241047058();

    v56[0] = 0xD000000000000014;
    v56[1] = 0x800000024104E1D0;
    MEMORY[0x245CD70E0](8072746, 0xE300000000000000);

    v43 = 0x24206F686365203BLL;
    v44 = 0xEF2729646E653B69;
LABEL_36:
    MEMORY[0x245CD70E0](v43, v44);
    v46 = v56[1];
    *(v42 + 32) = v56[0];
    *(v42 + 40) = v46;
    v38 = v42;
    goto LABEL_37;
  }

  if (v7 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E51F340, &qword_241047D40);
    v42 = swift_initStackObject();
    *(v42 + 16) = xmmword_241047BF0;
    strcpy(v56, "-r -f -a '(");
    HIDWORD(v56[1]) = -352321536;
    MEMORY[0x245CD70E0](v5, v6);
    v43 = 10025;
    v44 = 0xE200000000000000;
    goto LABEL_36;
  }

  if (v7 == 3)
  {
    v51 = v4;
    if (a1[2])
    {
      v32 = v2;
      v33 = (*(a1[5] + 24))(a1[4], a1[5], v12, v13);
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E51F340, &qword_241047D40);
      v36 = swift_initStackObject();
      *(v36 + 16) = xmmword_241047BF0;
      sub_241047058();
      v75 = 0xE000000000000000;
      MEMORY[0x245CD70E0](0xD000000000000013, 0x800000024104E190);
      MEMORY[0x245CD70E0](v33, v35);

      MEMORY[0x245CD70E0](32, 0xE100000000000000);
      *&v56[1] = v82;
      v57 = v83;
      v58 = v84;
      v61 = v80;
      v62 = v81;
      *v64 = v79[0];
      v68 = v77;
      v56[0] = v32;
      v59 = v3;
      v60 = v51;
      v63 = 0;
      *&v64[15] = *(v79 + 15);
      v65 = v5;
      v66 = v6;
      v67 = 3;
      *v69 = v78[0];
      *&v69[15] = *(v78 + 15);
      v37 = sub_240FF2EF0(a1);
      MEMORY[0x245CD70E0](v37);

      MEMORY[0x245CD70E0](0xD00000000000001CLL, 0x800000024104E1B0);
      *(v36 + 32) = 0;
      *(v36 + 40) = v75;
      v38 = v36;
LABEL_37:
      sub_240FE2060(v38);
      return v76;
    }

    __break(1u);
  }

  else
  {
    if (v5 | v6)
    {
      v38 = &unk_2852DA5C8;
      goto LABEL_37;
    }

    v47 = *(v10 + 16);
    sub_240FF0D20(v2);

    if (v47)
    {
      return v76;
    }

    return 0;
  }

  return result;
}

uint64_t sub_240FF25C4(uint64_t a1, uint64_t a2)
{
  sub_241047058();
  MEMORY[0x245CD70E0](0xD00000000000004ELL, 0x800000024104E530);
  sub_241047058();

  MEMORY[0x245CD70E0](a1, a2);
  MEMORY[0x245CD70E0](0x636F72706572705FLL, 0xED0000726F737365);
  MEMORY[0x245CD70E0](0x5F74666977735FLL, 0xE700000000000000);

  MEMORY[0x245CD70E0](0xD0000000000000C7, 0x800000024104E580);
  return 0;
}

uint64_t sub_240FF26E4(uint64_t a1, uint64_t a2)
{
  MEMORY[0x245CD70E0]();

  MEMORY[0x245CD70E0](0x635F676E6973755FLL, 0xEE00646E616D6D6FLL);

  sub_241047058();

  MEMORY[0x245CD70E0](a1, a2);
  MEMORY[0x245CD70E0](0x636F72706572705FLL, 0xED0000726F737365);
  sub_241047058();
  MEMORY[0x245CD70E0](0x6E6F6974636E7566, 0xE900000000000020);
  MEMORY[0x245CD70E0](0x5F74666977735FLL, 0xE700000000000000);

  MEMORY[0x245CD70E0](0xD00000000000001DLL, 0x800000024104E1F0);
  MEMORY[0x245CD70E0](0x5F74666977735FLL, 0xE700000000000000);

  MEMORY[0x245CD70E0](0xD000000000000040, 0x800000024104E210);
  MEMORY[0x245CD70E0](32, 0xE100000000000000);
  MEMORY[0x245CD70E0](0xD000000000000032, 0x800000024104E260);
  MEMORY[0x245CD70E0](32, 0xE100000000000000);
  MEMORY[0x245CD70E0](0xD00000000000028DLL, 0x800000024104E2A0);
  return 0;
}

unint64_t sub_240FF28F0()
{
  result = qword_27E51F4F8;
  if (!qword_27E51F4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51F448, &qword_241048080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F4F8);
  }

  return result;
}

uint64_t sub_240FF2954()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *v0 == 6845306 && v2 == 0xE300000000000000;
  if (v5 || (sub_241047428() & 1) != 0)
  {
    return sub_240FF4FCC(v4, v3);
  }

  sub_241047428();
  if (v1 == 1752392034 && v2 == 0xE400000000000000 || (sub_241047428() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E8, &qword_2410480F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241047BF0;
    *(inited + 32) = v4;
    *(inited + 40) = v3;
    sub_240FF2D04(inited);
    swift_setDeallocating();
    sub_240FE05E8();
    v8 = sub_241046EE8();
    v10 = v9;

    sub_241047058();

    strcpy(v16, "#!/bin/bash\n\n");
    HIWORD(v16[1]) = -4864;
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_241047BF0;
    *(v11 + 32) = v4;
    *(v11 + 40) = v3;
    v12 = sub_240FEE7AC(v11);
    v14 = v13;

    MEMORY[0x245CD70E0](v12, v14);

    MEMORY[0x245CD70E0](0x656C706D6F630A0ALL, 0xEE0020462D206574);
    MEMORY[0x245CD70E0](v8, v10);

    MEMORY[0x245CD70E0](32, 0xE100000000000000);
    v15 = (*(v3 + 24))(v4, v3);
    MEMORY[0x245CD70E0](v15);

    return v16[0];
  }

  else
  {
    if ((sub_241047428() & 1) == 0)
    {
      sub_241047428();
    }

    if (v1 == 1752394086 && v2 == 0xE400000000000000 || (sub_241047428() & 1) != 0)
    {
      return sub_240FF0DA8(v4, v3);
    }

    else
    {
      sub_241047058();
      MEMORY[0x245CD70E0](0xD000000000000019, 0x800000024104E6A0);
      sub_241047128();
      result = sub_2410471B8();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_240FF2D04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v3 = MEMORY[0x277D84F90];
LABEL_19:
    sub_240FF3CCC(v3);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
    sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080, MEMORY[0x277D83958]);
    v13 = sub_241046AA8();
    v15 = v14;

    MEMORY[0x245CD70E0](v13, v15);

    return 95;
  }

  v2 = (a1 + 40);
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    result = sub_240FF3910(*(v2 - 1), *v2);
    v5 = *(result + 16);
    v6 = *(v3 + 2);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    v8 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 3) >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v9 = v6 + v5;
      }

      else
      {
        v9 = v6;
      }

      result = sub_240FE2E68(result, v9, 1, v3);
      v3 = result;
      if (*(v8 + 16))
      {
LABEL_14:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v10 = *(v3 + 2);
          v11 = __OFADD__(v10, v5);
          v12 = v10 + v5;
          if (v11)
          {
            goto LABEL_23;
          }

          *(v3 + 2) = v12;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 2;
    if (!--v1)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

char *sub_240FF2EF0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[4];
  v4 = *(a1 + 16);
  v5 = v4 != 0;
  v6 = MEMORY[0x277D84F90];
  if (v4 >= 2)
  {
    v33[0] = MEMORY[0x277D84F90];
    result = sub_240FE41A0(0, (v4 - v5) & ~((v4 - v5) >> 63), 0);
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      v6 = v33[0];
      v12 = a1 + 16 * v5 + 40;
      while (v5 < v4)
      {
        result = (*(*v12 + 24))();
        v33[0] = v6;
        v15 = *(v6 + 16);
        v14 = *(v6 + 24);
        if (v15 >= v14 >> 1)
        {
          v17 = result;
          v18 = v13;
          sub_240FE41A0((v14 > 1), v15 + 1, 1);
          v13 = v18;
          result = v17;
          v6 = v33[0];
        }

        *(v6 + 16) = v15 + 1;
        v16 = v6 + 16 * v15;
        *(v16 + 32) = result;
        *(v16 + 40) = v13;
        ++v5;
        v12 += 16;
        if (v4 == v5)
        {
          goto LABEL_2;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_2:
    v33[0] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
    sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080, MEMORY[0x277D83958]);
    v7 = sub_241046AA8();
    v9 = v8;

    if (v2 >= 2)
    {
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    v19 = sub_24102BED8(v2);
    v21 = v20;
    v23 = v22;
    v24 = v22;

    if (v24 <= 0xFD)
    {
      v29 = sub_241034020(v19, v21, v23);
      v31 = v32;
      sub_240FF47C4(v19, v21, v23);
    }

    else if (v3[2])
    {
      v25 = v3[4];
      v26 = v3[5];
      v27 = v3[6];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E51F340, &qword_241047D40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_241047BF0;
      *(inited + 32) = v25;
      *(inited + 40) = v26;
      v33[0] = v27;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_240FE2060(inited);
      v29 = sub_241046AA8();
      v31 = v30;
    }

    else
    {
      v31 = 0xE300000000000000;
      v29 = 2960685;
    }

    sub_241047058();

    strcpy(v33, "---completion ");
    HIBYTE(v33[1]) = -18;
    MEMORY[0x245CD70E0](v7, v9);

    MEMORY[0x245CD70E0](539831584, 0xE400000000000000);
    MEMORY[0x245CD70E0](v29, v31);

    return v33[0];
  }

  return result;
}

uint64_t CompletionShell.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CompletionShell.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

ArgumentParserInternal::CompletionShell_optional __swiftcall CompletionShell.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v5 = rawValue._countAndFlagsBits == 6845306 && rawValue._object == 0xE300000000000000;
  if (v5 || (rawValue._countAndFlagsBits = sub_241047428(), (rawValue._countAndFlagsBits & 1) != 0) || countAndFlagsBits == 1752392034 && object == 0xE400000000000000 || ((rawValue._countAndFlagsBits = sub_241047428(), countAndFlagsBits == 1752394086) ? (v7 = object == 0xE400000000000000) : (v7 = 0), !v7 ? (v8 = 0) : (v8 = 1), (rawValue._countAndFlagsBits & 1) != 0 || (v8 & 1) != 0 || (rawValue._countAndFlagsBits = sub_241047428(), (rawValue._countAndFlagsBits & 1) != 0)))
  {
    *v4 = countAndFlagsBits;
    v4[1] = object;
  }

  else
  {

    *v4 = 0;
    v4[1] = 0;
  }

  result.value.rawValue = rawValue;
  result.is_nil = v6;
  return result;
}

uint64_t static CompletionShell.bash.getter@<X0>(void *a1@<X8>)
{
  result = sub_241047428();
  *a1 = 1752392034;
  a1[1] = 0xE400000000000000;
  return result;
}

uint64_t static CompletionShell.fish.getter@<X0>(void *a1@<X8>)
{
  result = sub_241047428();
  if ((result & 1) == 0)
  {
    result = sub_241047428();
  }

  *a1 = 1752394086;
  a1[1] = 0xE400000000000000;
  return result;
}

char *static CompletionShell.autodetected()@<X0>(void *a1@<X8>)
{
  result = getenv("SHELL");
  if (result)
  {
    v3 = sub_241046BC8();
    v19[0] = 47;
    v19[1] = 0xE100000000000000;
    MEMORY[0x28223BE20](v3);
    v17[2] = v19;
    v6 = sub_240FF3E4C(0x7FFFFFFFFFFFFFFFLL, 1, sub_240FF466C, v17, v4, v5, &v18);
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = (v6 + 32 * v7);
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];
      v12 = v8[3];
      swift_bridgeObjectRetain_n();

      v13 = MEMORY[0x245CD7040](v9, v10, v11, v12);
      v15 = v14;
      swift_bridgeObjectRelease_n();
      v16._countAndFlagsBits = v13;
      v16._object = v15;
      return CompletionShell.init(rawValue:)(v16);
    }
  }

  *a1 = 0;
  a1[1] = 0;
  return result;
}

uint64_t sub_240FF35E0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_240FF35EC()
{
  sub_2410475A8();
  sub_241046A88();
  return sub_2410475E8();
}

uint64_t sub_240FF3640(uint64_t a1)
{
  sub_2410475A8();
  sub_241046A88();
  return sub_2410475E8();
}

uint64_t sub_240FF3698(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_241047428();
  }
}

uint64_t sub_240FF36C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = result;
  if (!a4)
  {
    result = sub_24100C97C();
    if (v14)
    {
      v9 = result;
      v8 = v14;
      v10 = 6845306;
      if (result == 6845306 && v14 == 0xE300000000000000)
      {
        goto LABEL_22;
      }

      result = sub_241047428();
      if (result)
      {
        goto LABEL_21;
      }

      v10 = 1752392034;
      if (v9 == 1752392034 && v8 == 0xE400000000000000)
      {
        goto LABEL_22;
      }

      result = sub_241047428();
      v15 = v9 == 1752394086 && v8 == 0xE400000000000000;
      v16 = v15;
      if (result)
      {
        goto LABEL_21;
      }

      if (v16)
      {
        goto LABEL_21;
      }

      result = sub_241047428();
      if (result)
      {
        goto LABEL_21;
      }
    }

    sub_240FDEE00();
    swift_allocError();
    *v13 = 0;
    *(v13 + 8) = 0;
    goto LABEL_36;
  }

  v8 = a4;
  v9 = a3;
  v10 = 6845306;
  if (a3 == 6845306 && a4 == 0xE300000000000000)
  {
    goto LABEL_22;
  }

  result = sub_241047428();
  if (result)
  {
    goto LABEL_21;
  }

  v10 = 1752392034;
  if (v9 == 1752392034 && v8 == 0xE400000000000000)
  {
    goto LABEL_22;
  }

  result = sub_241047428();
  v11 = v9 == 1752394086 && v8 == 0xE400000000000000;
  v12 = v11;
  if (result & 1) != 0 || v12 || (result = sub_241047428(), (result))
  {
LABEL_21:
    v10 = v9;
LABEL_22:
    *a5 = v10;
    a5[1] = v8;
    a5[2] = v6;
    a5[3] = a2;
    return result;
  }

  sub_240FDEE00();
  swift_allocError();
  *v13 = v9;
  *(v13 + 8) = v8;
LABEL_36:
  *(v13 + 16) = v17;
  *(v13 + 32) = v18;
  *(v13 + 48) = v19;
  *(v13 + 64) = v20;
  *(v13 + 80) = 3;
  return swift_willThrow();
}

uint64_t sub_240FF3910(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v49);
  v5 = v49[2];
  v4 = v49[3];

  sub_240FE724C(v49);
  if (!v4)
  {
    v26 = (*(a2 + 24))(a1, a2);
    v47 = 32;
    v48 = 0xE100000000000000;
    MEMORY[0x28223BE20](v26);
    v45 = &v47;
    v29 = sub_240FF3E4C(0x7FFFFFFFFFFFFFFFLL, 1, sub_240FF4830, v44, v27, v28, v46);
    v30 = *(v29 + 16);
    if (v30)
    {
      v47 = MEMORY[0x277D84F90];
      result = sub_240FE41A0(0, v30, 0);
      v31 = 0;
      v32 = v47;
      v33 = (v29 + 56);
      while (v31 < *(v29 + 16))
      {
        v34 = *(v33 - 3);
        v35 = *(v33 - 2);
        v36 = *(v33 - 1);
        v37 = *v33;

        v38 = MEMORY[0x245CD7040](v34, v35, v36, v37);
        v40 = v39;

        v47 = v32;
        v42 = *(v32 + 16);
        v41 = *(v32 + 24);
        if (v42 >= v41 >> 1)
        {
          result = sub_240FE41A0((v41 > 1), v42 + 1, 1);
          v32 = v47;
        }

        ++v31;
        *(v32 + 16) = v42 + 1;
        v43 = v32 + 16 * v42;
        *(v43 + 32) = v38;
        *(v43 + 40) = v40;
        v33 += 4;
        if (v30 == v31)
        {

          return v32;
        }
      }

      goto LABEL_21;
    }

    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E51F340, &qword_241047D40);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_241047BF0;
  *(v6 + 32) = v5;
  *(v6 + 40) = v4;
  v7 = (*(a2 + 24))(a1, a2);
  v47 = 32;
  v48 = 0xE100000000000000;
  MEMORY[0x28223BE20](v7);
  v45 = &v47;
  v10 = sub_240FF3E4C(0x7FFFFFFFFFFFFFFFLL, 1, sub_240FF4830, v44, v8, v9, v46);
  v11 = *(v10 + 16);
  if (!v11)
  {

    v14 = MEMORY[0x277D84F90];
LABEL_17:
    v47 = v6;
    sub_240FE2060(v14);
    return v47;
  }

  v46[0] = v6;
  v47 = MEMORY[0x277D84F90];
  result = sub_240FE41A0(0, v11, 0);
  v13 = 0;
  v14 = v47;
  v15 = (v10 + 56);
  while (v13 < *(v10 + 16))
  {
    v16 = *(v15 - 3);
    v17 = *(v15 - 2);
    v18 = *(v15 - 1);
    v19 = *v15;

    v20 = MEMORY[0x245CD7040](v16, v17, v18, v19);
    v22 = v21;

    v47 = v14;
    v24 = *(v14 + 16);
    v23 = *(v14 + 24);
    if (v24 >= v23 >> 1)
    {
      result = sub_240FE41A0((v23 > 1), v24 + 1, 1);
      v14 = v47;
    }

    ++v13;
    *(v14 + 16) = v24 + 1;
    v25 = v14 + 16 * v24;
    *(v25 + 32) = v20;
    *(v25 + 40) = v22;
    v15 += 4;
    if (v11 == v13)
    {

      v6 = v46[0];
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_240FF3CCC(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = a1[4];
  v3 = a1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E51F340, &qword_241047D40);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_241047BF0;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  result = swift_bridgeObjectRetain_n();
  if (v1 != 1)
  {
    v7 = a1 + 5;
    v8 = 1;
    v19 = a1 + 5;
    do
    {
      v9 = (v5 + 16);
      v10 = &v7[2 * v8];
      v11 = v8;
      while (1)
      {
        if (v11 >= v1)
        {
          __break(1u);
LABEL_22:
          __break(1u);
          return result;
        }

        v8 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_22;
        }

        v12 = *(v10 - 1);
        v13 = *v10;
        v14 = *v9;
        if (!*v9)
        {
          break;
        }

        v15 = &v9[2 * v14];
        result = *v15;
        if (*v15 != v12 || v15[1] != v13)
        {
          result = sub_241047428();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        ++v11;
        v10 += 2;
        if (v8 == v1)
        {
          goto LABEL_3;
        }
      }

      v17 = *(v5 + 24);

      if (v14 >= v17 >> 1)
      {
        result = sub_240FE2E68((v17 > 1), v14 + 1, 1, v5);
        v5 = result;
      }

      v7 = v19;
      *(v5 + 16) = v14 + 1;
      v18 = v5 + 16 * v14;
      *(v18 + 32) = v12;
      *(v18 + 40) = v13;
    }

    while (v8 != v1);
  }

LABEL_3:

  return v5;
}

unint64_t sub_240FF3E4C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_241046C78();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_240FE33DC(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_240FE33DC((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_241046C48();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_241046B68();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_241046B68();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_241046C78();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_240FE33DC(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_241046C78();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_240FE33DC(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_240FE33DC((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_241046B68();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_240FF420C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, unint64_t a9@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v17 = v10;
  v13 = a6;
  v18 = a5 >> 14;
  v14 = a6 >> 14;
  if (a1 && v18 != v14)
  {
    v9 = a4;
    v16 = MEMORY[0x277D84F90];
    v11 = a5;
    do
    {
      v19 = v11 >> 14;
      if (v11 >> 14 == v14)
      {
        break;
      }

      v41 = a1;
      v48 = v17;
      v43 = v16;
      v16 = a7;
      while (1)
      {
        while (1)
        {
          v47[0] = sub_241046EB8();
          v47[1] = v20;
          v21 = v48;
          v22 = a3(v47);
          v48 = v21;
          if (v21)
          {

            return v16;
          }

          v23 = v22;

          if (v23)
          {
            break;
          }

          v16 = a7;
          v19 = sub_241046E68() >> 14;
          if (v19 == v14)
          {
            v16 = v43;
            goto LABEL_28;
          }
        }

        result = v11;
        if (v11 >> 14 != v19 || (a2 & 1) == 0)
        {
          break;
        }

        v16 = a7;
        v11 = sub_241046E68();
        v19 = v11 >> 14;
        if (v11 >> 14 == v14)
        {
          v16 = v43;
          goto LABEL_28;
        }
      }

      if (v19 < v11 >> 14)
      {
        __break(1u);
        return result;
      }

      v44 = sub_241046ED8();
      v39 = v26;
      v40 = v25;
      v38 = v27;
      v16 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_240FE33DC(0, *(v43 + 2) + 1, 1, v43);
      }

      v29 = *(v16 + 2);
      v28 = *(v16 + 3);
      if (v29 >= v28 >> 1)
      {
        v16 = sub_240FE33DC((v28 > 1), v29 + 1, 1, v16);
      }

      *(v16 + 2) = v29 + 1;
      v30 = &v16[32 * v29];
      *(v30 + 4) = v44;
      *(v30 + 5) = v40;
      *(v30 + 6) = v39;
      *(v30 + 7) = v38;
      v11 = sub_241046E68();
      a1 = v41;
      v17 = v48;
    }

    while (*(v16 + 2) != v41);
LABEL_28:
    if (v11 >> 14 == v14 && (a2 & 1) != 0)
    {

      return v16;
    }

    if (v14 >= v11 >> 14)
    {
      v9 = sub_241046ED8();
      v11 = v34;
      v13 = v35;
      v14 = v36;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_33:
      v15 = *(v16 + 2);
      a9 = *(v16 + 3);
LABEL_34:
      v12 = v15 + 1;
      if (v15 < a9 >> 1)
      {
LABEL_35:
        *(v16 + 2) = v12;
        v37 = &v16[32 * v15];
        *(v37 + 4) = v9;
        *(v37 + 5) = v11;
        *(v37 + 6) = v13;
        *(v37 + 7) = v14;
        return v16;
      }

LABEL_38:
      v16 = sub_240FE33DC((a9 > 1), v12, 1, v16);
      goto LABEL_35;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v16 = sub_240FE33DC(0, *(v16 + 2) + 1, 1, v16);
    goto LABEL_33;
  }

  if (v18 != v14 || (a2 & 1) == 0)
  {
    if (v14 >= v18)
    {
      v9 = sub_241046ED8();
      v11 = v31;
      v13 = v32;
      v14 = v33;

      v16 = sub_240FE33DC(0, 1, 1, MEMORY[0x277D84F90]);
      v15 = *(v16 + 2);
      a9 = *(v16 + 3);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_240FF4614(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_241047428() & 1;
  }
}

unint64_t sub_240FF468C()
{
  result = qword_27E51F510;
  if (!qword_27E51F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F510);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_240FF4730(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_240FF4778(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_240FF47C4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_240FF0D30(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_240FF47D8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_241047428() & 1;
  }
}

uint64_t sub_240FF484C(uint64_t a1, unint64_t a2, unint64_t a3, char *a4, uint64_t a5)
{
  v36 = 10;
  v37 = 0xE100000000000000;
  v35 = &v36;

  v9 = sub_240FF420C(0x7FFFFFFFFFFFFFFFLL, 0, sub_240FF47D8, v34, a2, a3, a4, v8);
  v32 = sub_241046C38();
  v11 = *(v9 + 2);
  if (v11)
  {
    v33 = v10;
    v42 = MEMORY[0x277D84F90];
    sub_240FE4298(0, v11, 0);
    v12 = v42;
    v13 = (v9 + 56);
    do
    {
      v14 = *(v13 - 3);
      v15 = *(v13 - 2);
      v16 = *(v13 - 1);
      v17 = *v13;

      if ((v15 ^ v14) >= 0x4000)
      {
        sub_241046EA8();
        sub_241046B58();
        v36 = v32;
        v37 = v33;
        v40 = MEMORY[0x245CD7040](15, 7, 0, 0xE000000000000000);
        v41 = v18;
        sub_241046BA8();
        v19 = sub_241046EC8();
        v36 = v14;
        v37 = v15;
        v38 = v16;
        v39 = v17;
        v20 = MEMORY[0x245CD7040](v19);
        v22 = v21;

        v40 = v20;
        v41 = v22;
        sub_240FF7468();
        sub_241046BA8();
        v14 = sub_241046EC8();
        v15 = v23;
        v16 = v24;
        v26 = v25;

        v17 = v26;
      }

      v42 = v12;
      v28 = *(v12 + 16);
      v27 = *(v12 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_240FE4298((v27 > 1), v28 + 1, 1);
        v12 = v42;
      }

      *(v12 + 16) = v28 + 1;
      v29 = (v12 + 32 * v28);
      v29[4] = v14;
      v29[5] = v15;
      v29[6] = v16;
      v29[7] = v17;
      v13 += 4;
      --v11;
    }

    while (v11);
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  v36 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F530, &qword_241048900);
  sub_240FF0D48(&qword_27E51F538, &qword_27E51F530, &qword_241048900, MEMORY[0x277D83970]);
  sub_240FF74BC();
  v30 = sub_241046CC8();

  return v30;
}

uint64_t sub_240FF4B40(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v33 = 10;
  v34 = 0xE100000000000000;
  v32 = &v33;

  v6 = sub_240FF3E4C(0x7FFFFFFFFFFFFFFFLL, 0, sub_240FF7448, v31, a2, a3, v5);
  v29 = sub_241046C38();
  v8 = *(v6 + 16);
  if (v8)
  {
    v30 = v7;
    v39 = MEMORY[0x277D84F90];
    sub_240FE4298(0, v8, 0);
    v9 = v39;
    v10 = (v6 + 56);
    do
    {
      v11 = *(v10 - 3);
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = *v10;

      if ((v12 ^ v11) >= 0x4000)
      {
        sub_241046EA8();
        sub_241046B58();
        v33 = v29;
        v34 = v30;
        v37 = MEMORY[0x245CD7040](15, 7, 0, 0xE000000000000000);
        v38 = v15;
        sub_241046BA8();
        v16 = sub_241046EC8();
        v33 = v11;
        v34 = v12;
        v35 = v13;
        v36 = v14;
        v17 = MEMORY[0x245CD7040](v16);
        v19 = v18;

        v37 = v17;
        v38 = v19;
        sub_240FF7468();
        sub_241046BA8();
        v11 = sub_241046EC8();
        v12 = v20;
        v13 = v21;
        v23 = v22;

        v14 = v23;
      }

      v39 = v9;
      v25 = *(v9 + 16);
      v24 = *(v9 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_240FE4298((v24 > 1), v25 + 1, 1);
        v9 = v39;
      }

      *(v9 + 16) = v25 + 1;
      v26 = (v9 + 32 * v25);
      v26[4] = v11;
      v26[5] = v12;
      v26[6] = v13;
      v26[7] = v14;
      v10 += 4;
      --v8;
    }

    while (v8);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v33 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F530, &qword_241048900);
  sub_240FF0D48(&qword_27E51F538, &qword_27E51F530, &qword_241048900, MEMORY[0x277D83970]);
  sub_240FF74BC();
  v27 = sub_241046CC8();

  return v27;
}

uint64_t sub_240FF4E24(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = (a2 + 16 + 16 * v2);
    v5 = *v4;
    v6 = *(v4[1] + 8);
    LOBYTE(v47[0]) = a1;
    v48 = sub_240FDF86C(v5, v6, v47, 0, 0, 0);
    v49 = v7;
    sub_240FF6C48(a2, &v35);
    v47[8] = v43;
    v47[9] = v44;
    v47[10] = v45;
    v47[11] = v46;
    v47[4] = v39;
    v47[5] = v40;
    v47[6] = v41;
    v47[7] = v42;
    v47[0] = v35;
    v47[1] = v36;
    v47[2] = v37;
    v47[3] = v38;
    if (sub_240FE5818(v47) != 1)
    {
      v31 = v43;
      v32 = v44;
      v33 = v45;
      v34 = v46;
      v27 = v39;
      v28 = v40;
      v29 = v41;
      v30 = v42;
      v23 = v35;
      v24 = v36;
      v25 = v37;
      v26 = v38;
      sub_24101DC78(&v23);
      sub_240FE5830(&v35);
    }

    sub_240FF6E68(a2, &v11);
    v31 = v19;
    v32 = v20;
    v33 = v21;
    v34 = v22;
    v27 = v15;
    v28 = v16;
    v29 = v17;
    v30 = v18;
    v23 = v11;
    v24 = v12;
    v25 = v13;
    v26 = v14;
    if (sub_240FE5818(&v23) != 1)
    {
      v10[8] = v19;
      v10[9] = v20;
      v10[10] = v21;
      v10[11] = v22;
      v10[4] = v15;
      v10[5] = v16;
      v10[6] = v17;
      v10[7] = v18;
      v10[0] = v11;
      v10[1] = v12;
      v10[2] = v13;
      v10[3] = v14;
      sub_24101DC78(v10);
      sub_240FE5830(&v11);
    }

    return v48;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
    sub_240FFBBA4(MEMORY[0x277D84F90]);
  }

  return v8;
}

uint64_t sub_240FF4FCC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E8, &qword_2410480F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241047BF0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v5 = sub_240FF2D04(inited);
  v7 = v6;
  swift_setDeallocating();
  sub_241047058();
  MEMORY[0x245CD70E0](0x666564706D6F6323, 0xE900000000000020);
  v8 = *(a2 + 24);
  v9 = v8(a1, a2);
  MEMORY[0x245CD70E0](v9);

  MEMORY[0x245CD70E0](0xD000000000000027, 0x800000024104E6C0);
  v8(a1, a2);
  sub_240FE05E8();
  v10 = sub_241046EE8();
  v12 = v11;

  MEMORY[0x245CD70E0](v10, v12);

  MEMORY[0x245CD70E0](0xD00000000000002CLL, 0x800000024104E6F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_241047BF0;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  v14 = sub_240FF5230(v13);
  v16 = v15;

  MEMORY[0x245CD70E0](v14, v16);

  MEMORY[0x245CD70E0](0xD00000000000005FLL, 0x800000024104E720);
  MEMORY[0x245CD70E0](v5, v7);

  return 0;
}

uint64_t sub_240FF5230(uint64_t a1)
{
  v6 = *(a1 + 16);
  if (!v6)
  {
    goto LABEL_59;
  }

  v2 = a1;
  v7 = (a1 + 16 + 16 * v6);
  v9 = *v7;
  v8 = v7[1];
  v103 = sub_240FF2D04(a1);
  v104 = v10;
  v3 = sub_240FF7268(v2);
  (*(v8 + 16))(&v124, v9, v8);
  v134[6] = v130;
  v134[7] = v131;
  v134[8] = v132;
  v134[2] = v126;
  v134[3] = v127;
  v134[4] = v128;
  v134[5] = v129;
  v134[0] = v124;
  v134[1] = v125;
  v120 = v130;
  v121 = v131;
  v122 = v132;
  v116 = v126;
  v117 = v127;
  v118 = v128;
  v119 = v129;
  v135 = v133;
  v123 = v133;
  v114 = v124;
  v115 = v125;
  CommandConfiguration.subcommands.getter();
  v12 = v11;
  sub_240FE724C(v134);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v13 - 1;
    v15 = MEMORY[0x277D84F90];
    for (i = 32; ; i += 16)
    {
      v105 = *(v12 + i);
      (*(*(v12 + i + 8) + 16))(v107);
      v110 = v107[6];
      v111 = v107[7];
      v112 = v107[8];
      v113 = v108;
      v109[2] = v107[2];
      v109[3] = v107[3];
      v109[4] = v107[4];
      v109[5] = v107[5];
      v109[0] = v107[0];
      v109[1] = v107[1];
      sub_240FE724C(v109);
      if (v110 == 1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_240FE42D8(0, *(v15 + 16) + 1, 1);
        }

        v18 = *(v15 + 16);
        v17 = *(v15 + 24);
        v19 = v15;
        if (v18 >= v17 >> 1)
        {
          sub_240FE42D8((v17 > 1), v18 + 1, 1);
          v19 = v15;
        }

        *(v19 + 16) = v18 + 1;
        *(v19 + 16 * v18 + 32) = v105;
        v15 = v19;
      }

      if (!v14)
      {
        break;
      }

      --v14;
    }
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  v4 = MEMORY[0x277D84F90];
  v5 = 0xD000000000000011;
  if (!*(v15 + 16))
  {
    v106 = v15;
    v35 = 0;
    v36 = 0xE000000000000000;
    goto LABEL_43;
  }

  v1 = v15;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_60;
  }

  while (1)
  {
    v21 = *(v3 + 16);
    v20 = *(v3 + 24);
    v22 = v20 >> 1;
    v23 = v21 + 1;
    if (v20 >> 1 <= v21)
    {
      v3 = sub_240FE2E68((v20 > 1), v21 + 1, 1, v3);
      v20 = *(v3 + 24);
      v22 = v20 >> 1;
    }

    *(v3 + 16) = v23;
    v24 = v3 + 16 * v21;
    *(v24 + 32) = v5;
    *(v24 + 40) = 0x800000024104E780;
    v25 = v21 + 2;
    if (v22 < v25)
    {
      v3 = sub_240FE2E68((v20 > 1), v25, 1, v3);
    }

    *(v3 + 16) = v25;
    v26 = v3 + 16 * v23;
    *(v26 + 32) = 0x203A3A2A292D2827;
    *(v26 + 40) = 0xEF276772613E2D3ALL;
    v98 = v6;
    v99 = v3;
    if (v6 == 1)
    {
      v27 = v1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_240FE2D64(0, *(v1 + 16) + 1, 1, v1);
      }

      v28 = v27;
      v29 = *(v27 + 2);
      v30 = v28;
      v31 = *(v28 + 3);
      v32 = v29 + 1;
      if (v29 >= v31 >> 1)
      {
        v30 = sub_240FE2D64((v31 > 1), v29 + 1, 1, v30);
      }

      v97 = v2;
      v33 = sub_240FF0C78();
      *(v30 + 2) = v32;
      v34 = &v30[16 * v29];
      v1 = v30;
      *(v34 + 4) = &type metadata for HelpCommand;
      *(v34 + 5) = v33;
      goto LABEL_29;
    }

    v32 = *(v1 + 16);
    if (!v32)
    {
      break;
    }

    v97 = v2;
LABEL_29:
    v102 = v32;
    sub_240FE41A0(0, v32, 0);
    if (*(v1 + 16))
    {
      v37 = 0;
      v38 = v4;
      v5 = (v1 + 40);
      v6 = MEMORY[0x277D837D0];
      v106 = v1;
      while (1)
      {
        v39 = *(v5 - 1);
        v40 = *v5;
        v2 = 0xE100000000000000;
        *&v109[0] = 39;
        *(&v109[0] + 1) = 0xE100000000000000;
        v41 = (*(v40 + 24))(v39, v40);
        MEMORY[0x245CD70E0](v41);

        MEMORY[0x245CD70E0](58, 0xE100000000000000);
        (*(v40 + 16))(&v114, v39, v40);
        v130 = v120;
        v131 = v121;
        v132 = v122;
        v133 = v123;
        v126 = v116;
        v127 = v117;
        v128 = v118;
        v129 = v119;
        v124 = v114;
        v125 = v115;
        v42 = v116;

        sub_240FE724C(&v124);
        v107[0] = v42;
        sub_240FE05E8();
        v43 = sub_241046EE8();
        v45 = v44;

        *&v107[0] = v43;
        *(&v107[0] + 1) = v45;
        v46 = sub_241046EE8();
        v48 = v47;

        MEMORY[0x245CD70E0](v46, v48);

        MEMORY[0x245CD70E0](39, 0xE100000000000000);
        v1 = sub_240FF4B40(12, *&v109[0], *(&v109[0] + 1));
        v3 = v49;

        v4 = *(v38 + 16);
        v50 = *(v38 + 24);
        if (v4 >= v50 >> 1)
        {
          sub_240FE41A0((v50 > 1), v4 + 1, 1);
        }

        *(v38 + 16) = v4 + 1;
        v51 = v38 + 16 * v4;
        *(v51 + 32) = v1;
        *(v51 + 40) = v3;
        if (v102 - 1 == v37)
        {
          break;
        }

        v1 = v106;
        v5 += 2;
        if (++v37 >= *(v106 + 16))
        {
          goto LABEL_56;
        }
      }

      *&v109[0] = MEMORY[0x277D84F90];
      sub_240FE41A0(0, v102, 0);
      v4 = 0;
      v52 = v106;
      v5 = (v106 + 40);
      v6 = *&v109[0];
      v2 = v97;
      v100 = v38;
      while (v4 < *(v52 + 16))
      {
        v53 = v2;
        v55 = *(v5 - 1);
        v54 = *v5;
        *&v114 = 0;
        *(&v114 + 1) = 0xE000000000000000;
        sub_241047058();

        *&v114 = 40;
        *(&v114 + 1) = 0xE100000000000000;
        v56 = *(v54 + 24);
        v57 = v56(v55, v54);
        MEMORY[0x245CD70E0](v57);

        MEMORY[0x245CD70E0](0x202020200A29, 0xE600000000000000);
        MEMORY[0x245CD70E0](v103, v104);
        MEMORY[0x245CD70E0](95, 0xE100000000000000);
        v58 = v56(v55, v54);
        MEMORY[0x245CD70E0](v58);

        MEMORY[0x245CD70E0](0x3B3B202020200ALL, 0xE700000000000000);
        v3 = sub_240FF4B40(12, v114, *(&v114 + 1));
        v60 = v59;

        *&v109[0] = v6;
        v1 = *(v6 + 16);
        v61 = *(v6 + 24);
        if (v1 >= v61 >> 1)
        {
          sub_240FE41A0((v61 > 1), v1 + 1, 1);
          v6 = *&v109[0];
        }

        ++v4;
        *(v6 + 16) = v1 + 1;
        v62 = (v6 + 16 * v1);
        v62[4] = v3;
        v62[5] = v60;
        v5 += 2;
        v2 = v53;
        v52 = v106;
        v63 = v100;
        if (v102 == v4)
        {
          v4 = MEMORY[0x277D84F90];
          v5 = 0xD000000000000011;
          goto LABEL_42;
        }
      }

      goto LABEL_58;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    v3 = sub_240FE2E68(0, *(v3 + 16) + 1, 1, v3);
  }

  v106 = v1;
  v6 = MEMORY[0x277D84F90];
  v63 = MEMORY[0x277D84F90];
LABEL_42:
  *&v124 = 0;
  *(&v124 + 1) = 0xE000000000000000;
  sub_241047058();
  MEMORY[0x245CD70E0](v5 + 60, 0x800000024104E7A0);
  *&v114 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
  sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080, MEMORY[0x277D83958]);
  v64 = sub_241046AA8();
  v66 = v65;

  MEMORY[0x245CD70E0](v64, v66);

  MEMORY[0x245CD70E0](v5 + 86, 0x800000024104E7F0);
  *&v114 = v6;
  v67 = sub_241046AA8();
  v69 = v68;

  MEMORY[0x245CD70E0](v67, v69);

  MEMORY[0x245CD70E0](v5 + 13, 0x800000024104E860);
  v35 = sub_240FF4B40(4, v124, *(&v124 + 1));
  v36 = v70;

  v6 = v98;
  v3 = v99;
LABEL_43:
  *&v124 = 0;
  *(&v124 + 1) = 0xE000000000000000;
  sub_241047058();
  MEMORY[0x245CD70E0](v103, v104);

  MEMORY[0x245CD70E0](v5 + 36, 0x800000024104E880);
  *&v114 = v3;

  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
  sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080, MEMORY[0x277D83958]);
  v103 = v71;
  v72 = sub_241046AA8();
  v74 = v73;

  v75 = sub_240FF4B40(8, v72, v74);
  v77 = v76;

  MEMORY[0x245CD70E0](v75, v77);

  MEMORY[0x245CD70E0](v5 + 4, 0x800000024104E8C0);
  MEMORY[0x245CD70E0](v35, v36);

  MEMORY[0x245CD70E0](v5 + 2, 0x800000024104E900);
  v78 = *(&v124 + 1);
  v79 = v124;
  v80 = v106;
  v1 = *(v106 + 16);
  if (v1)
  {
    v101 = v124;
    *&v124 = v4;
    sub_240FE41A0(0, v1, 0);
    v4 = v124;
    v81 = 32;
    v104 = 1;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E8, &qword_2410480F0);
      v82 = swift_allocObject();
      *(v82 + 32) = *(v80 + v81);
      v3 = v82 + 32;
      *(v82 + 16) = xmmword_241047BF0;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v84 = *(v2 + 24) >> 1, v85 = v2, v84 <= v6))
      {
        v85 = sub_240FE2D64(isUniquelyReferenced_nonNull_native, v6 + 1, 1, v2);
        v84 = *(v85 + 3) >> 1;
      }

      v86 = *(v85 + 2);
      if (v84 <= v86)
      {
        goto LABEL_57;
      }

      v5 = v6;
      *&v85[16 * v86 + 32] = *v3;

      ++*(v85 + 2);
      v87 = sub_240FF5230(v85);
      v89 = v88;

      *&v124 = v4;
      v91 = *(v4 + 16);
      v90 = *(v4 + 24);
      if (v91 >= v90 >> 1)
      {
        sub_240FE41A0((v90 > 1), v91 + 1, 1);
        v4 = v124;
      }

      *(v4 + 16) = v91 + 1;
      v92 = v4 + 16 * v91;
      *(v92 + 32) = v87;
      *(v92 + 40) = v89;
      v81 += 16;
      --v1;
      v6 = v5;
      v80 = v106;
      if (!v1)
      {

        v78 = *(&v101 + 1);
        v79 = v101;
        goto LABEL_54;
      }
    }
  }

LABEL_54:
  *&v124 = v4;
  v93 = sub_241046AA8();
  v95 = v94;

  *&v124 = v79;
  *(&v124 + 1) = v78;

  MEMORY[0x245CD70E0](v93, v95);

  return v124;
}